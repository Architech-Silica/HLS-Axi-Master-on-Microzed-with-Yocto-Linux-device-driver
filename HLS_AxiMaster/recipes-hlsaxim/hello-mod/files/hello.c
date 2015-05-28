#include <linux/kernel.h>
#include <linux/module.h>
#include <linux/interrupt.h>
#include <linux/irq.h>
#include <asm/io.h>
#include <linux/fs.h>		//required for fops
#include <linux/uaccess.h>	//required for 'cpoy_from_user' and 'copy_to_user'
#include <linux/signal.h>	//required for kernel-to-userspace signals

MODULE_LICENSE("GPL");

#define AMASTER_BASE	0x43C00000	// copy paste from Vivado address editor
#define XEXAMPLE_MYAXIL_ADDR_BYTE_WROFFSET_DATA 0x14	// copy paste from xexample_hw.h, HLS generated
#define XEXAMPLE_MYAXIL_BITS_BYTE_WROFFSET_DATA 32
#define XEXAMPLE_MYAXIL_ADDR_CTRL_REG_I_DATA    0x1c
#define XEXAMPLE_MYAXIL_BITS_CTRL_REG_I_DATA    32
#define XEXAMPLE_MYAXIL_ADDR_STATUS_REG_O_DATA  0x24
#define XEXAMPLE_MYAXIL_BITS_STATUS_REG_O_DATA  32
#define XEXAMPLE_MYAXIL_ADDR_STATUS_REG_O_CTRL  0x20

#define AMASTER_OFFSET_W	(AMASTER_BASE+XEXAMPLE_MYAXIL_ADDR_BYTE_WROFFSET_DATA)
#define AMASTER_CTRL_W		(AMASTER_BASE+XEXAMPLE_MYAXIL_ADDR_CTRL_REG_I_DATA)
#define AMASTER_STATUS_R	(AMASTER_BASE+XEXAMPLE_MYAXIL_ADDR_STATUS_REG_O_DATA)

#define LOAD_VAL	0x10010000	// HLS IP will write to this address. Warning: no mem allocation done 
#define START 		0x00000001
#define STOP 		0x00000000

#define IRQ_NUM		61		// interrupt line as per IPI Vivado connection to Zynq IRQ_F2P[0:0]

#define DEVICE_NAME "syscall"		// device name
#define SYSCALL_MAJOR 22		// device major number
#define BUF_LEN 80			// max buffer length
#define SUCCESS 0			// success return value

unsigned long *pAMASTER_OFFSET_W;		
unsigned long *pAMASTER_CTRL_W;
unsigned long *pAMASTER_STATUS_R;

static int Device_Open = 0;		// device status
static char msg[BUF_LEN];		// the msg the device will give when asked
static char *msg_Ptr;
static int intcount;

// write routine (called when write() is used in user-space)
ssize_t syscall_write(struct file *flip, const char *buf, size_t length, loff_t *offset)
{
	printk("syscall_write.\n");				// debug: procedure call message
	if (length > BUF_LEN) 
		{
			length = BUF_LEN;
			printk ("length cut to %d \n", BUF_LEN);
		}
	if (copy_from_user(msg, buf, length) != 0)		// read buffer from user space
		return -EFAULT;					// return error if it failed
	printk("Received: %s \n",msg);				// debug: what string is received
	
	if (msg[0] == '1') //(strcmp(msg,"1") == 0)				// enable IP interrupt
	{
		printk("Driver enables master.\n");		
		iowrite32(LOAD_VAL,pAMASTER_OFFSET_W);		
		iowrite32(START,pAMASTER_CTRL_W);		
		return length; 
	} 
	else if (msg[0] == '0') // (strcmp(msg,"0") == 0)				// disable IP interrupt
	{
		printk("Driver disables master.\n");		
		iowrite32(STOP,pAMASTER_CTRL_W);		
		return length; 
	} 
	else 
	{
		printk("Driver received wrong value.\n");	// Print error message
		return -EFAULT;					// unknown value received
	}
}

// read routine (called when read() is used in user-space)
ssize_t syscall_read(struct file *flip, char *buf, size_t length, loff_t *offset)
{
	unsigned long tval;
	unsigned int msg_len;
	// read status value

	printk("syscall_read.\n");				// debug: procedure call message
	tval = ioread32(pAMASTER_STATUS_R);			// read status register from HLS IP = transactions count
	printk("Read() call value : %lu Cycles\n",tval);	// display status register value
	printk("length=%d\n",length);
	sprintf(msg,"%d",tval);					//return tval as a string
	msg_len=strlen(msg);
	if (length < msg_len)
		msg_len = length;
        /*
         * If file position is non-zero, then assume the string has
         * been read and indicate there is no more data to be read.
         */
        if (*offset != 0)
                return 0;
        /*
         * Tell the user how much data we wrote.
         */
	*offset = msg_len;					
	if (copy_to_user(buf, &msg, msg_len) != 0)		// send counter value
		return -EFAULT;
	else 
		return msg_len; 
}

// open routine (called when a device opens /dev/syscall)
static int syscall_open(struct inode *inode, struct file *file)
{
	if (Device_Open)					// if the device is allready open,
		return -EBUSY;					// return with an error

	Device_Open++;						// 'open' device
	sprintf(msg,"You tried to open the syscall module.\n");	// print open message
	msg_Ptr = msg;						
	// Taba commented out     try_module_get(THIS_MODULE);
	return 0;
}

// close routine (called whne a device closes /dev/syscall)
static int syscall_close(struct inode *inode, struct file *file)
{
	Device_Open--;						// 'close' device
	sprintf(msg,"You tried to close the syscall module.\n");	// print close message
	msg_Ptr = msg;
	// Taba commented out     module_put(THIS_MODULE);
	return 0;
}

// device init and file operations
struct file_operations syscall_fops = {
	.owner = THIS_MODULE, //Taba
	.read = syscall_read,		// read()
	.write = syscall_write,		// write()
	.open = syscall_open,		// open()
	.release = syscall_close,	// close()
};

//  interrupt handler
static irqreturn_t irq_handler(int irq,void*dev_id)		
{      
	unsigned long temp;
	unsigned long statusvalue;
      
	statusvalue = ioread32(pAMASTER_STATUS_R);			
	printk("Interrupt! Status counter value : %lu Cycles\n",statusvalue );	
	iowrite32(2 ,pAMASTER_CTRL_W); //clear int while int gen disabled

	intcount++;
	if (intcount>=100)					// after 100 interrupts
	{
		printk("100 interrupts have been registered.\nDisabling master");// print status message
		iowrite32(STOP,pAMASTER_CTRL_W);		
	}
	else
		iowrite32(START,pAMASTER_CTRL_W); 

	return IRQ_HANDLED;
}

// init module      
static int __init mod_init(void)  
{
	unsigned long temp;
	printk(KERN_ERR "Init syscall module. \n");
	if (request_irq(IRQ_NUM,irq_handler,IRQF_DISABLED, DEVICE_NAME, NULL))  //request interrupt
	{
		printk(KERN_ERR "Not Registered IRQ. \n");
		return -EBUSY;
	}
	printk(KERN_ERR "Registered IRQ. \n");
	pAMASTER_STATUS_R = ioremap_nocache(AMASTER_STATUS_R,0x4);		
	pAMASTER_OFFSET_W = ioremap_nocache(AMASTER_OFFSET_W,0x4);	
	pAMASTER_CTRL_W = ioremap_nocache(AMASTER_CTRL_W,0x4);		
	iowrite32(LOAD_VAL,pAMASTER_OFFSET_W);	
	iowrite32(START,pAMASTER_CTRL_W);	//uncomment for HLS IP transations autostart
	intcount = 0;					// set interrupt count to 0, driver will unload on 100 interrupts
	/* => to be completed, allocation of memory, Here's the allocation of a single quantum */
	/* 	if (! PAGE_SIZE<<log2()) {
	    dptr->data[s_pos] =
	      (void *)__get_free_pages(GFP_KERNEL, dptr->order);
	    if (!dptr->data[s_pos])
		goto nomem;
	    memset(dptr->data[s_pos], 0, PAGE_SIZE << dptr->order);
	}*/
	// manual node creation => easier to understand, but in future adopt device tree model
	if (register_chrdev(SYSCALL_MAJOR, DEVICE_NAME, &syscall_fops))
		printk("Error: cannot register to major device 22.\n");
	
	if (irq_set_irq_type(IRQ_NUM, IRQ_TYPE_EDGE_RISING))
		printk("Error: cannot enable rising edged on interrupt %d\n",IRQ_NUM);
	else	printk("Rising edge enabled on interrupt %d\n",IRQ_NUM);

	printk("Type: mknod /dev/%s c %d 0\n",DEVICE_NAME, SYSCALL_MAJOR);
	printk("And remove it after unloading the module.\n");

	return SUCCESS;
} 

// exit module
static void __exit mod_exit(void)  		
{
	iounmap(pAMASTER_STATUS_R);
	iounmap(pAMASTER_OFFSET_W);				
	iounmap(pAMASTER_CTRL_W);
	free_irq(IRQ_NUM, NULL);			// unregister interrupt
	unregister_chrdev(SYSCALL_MAJOR, "syscall");	// unregister device
	printk(KERN_ERR "Exit syscall Module. \n");	// print unload message
}

module_init(mod_init);
module_exit(mod_exit);

MODULE_AUTHOR ("ST");
MODULE_DESCRIPTION("Driver test for Axi Master HLS IP core & system calls.");
MODULE_LICENSE("GPL v2");
MODULE_ALIAS("custom:syscall");
