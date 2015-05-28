# HLS AXI master and Yocto kernel driver for Zynq
A complete flow example on microzed board, interrupt handling included

----------
This is an application template to help users who wish to transfer data from an Axi Stream source to Zynq DDR via a custom AXI Master.
Interrupt generation, Linux kernel device driver and corresponding Yocto recipe are included.

This version was written for the [Xilinx Zynq-7000 devices](http://www.xilinx.com/products/silicon-devices/soc/zynq-7000/silicon-devices.html), using the [Avnet MicroZed Board](http://www.microzed.org).  This information is equally applicable to other Xilinx boards and architectures where the AXI4 interconnect is used.

The provided example design was written for the [Xilinx Vivado tools](http://www.xilinx.com/support/download.html).

**Included with this document:**

- Vivado High Level Synthesis project
	- This ANSI C code will acquire data from an Axi Stream Slave connection and will write to an Axi Master connection, at a sw specified address and generating an interrupt after a predefined number of data transfers
	- Once compiled it will produce an IP suitable to be used in Vivado IP Integrator
- Vivado IP Integrator based project
	- This project instantiates the HLS Axi Master IP and will target write transactions to Zynq DDR3 memory, generating a Zynq interrupt
- Linux Kernel Device Driver module
	- Source code of a device driver to handle HLS Axi Master IP and it's interrupt
- Yocto recipe to build and include the Linux Kernel Device Driver module
	- [Architech Yocto "Dizzy" v1.7](http://architechboards-microzed.readthedocs.org/en/latest/index.html) will be targeted 
- Instructions to build the whole system and flash a uSD card (4GB suggested)
- Example to test the HLS Axi Master functionalities on a Linux system running on microzed board
- dd image of a working 4GB uSD card

**TODO**
- More detailed description of the sub projects

----------
## Contributions ##
Code examples are provided for your use, but please feel free to contribute your own code back to this repository via a pull request in the usual fashion.  Please fork from this repo, then create a suitably named branch in your fork before submitting back to this repo.  Please don't submit a pull request from your "master" branch.  Each new addition to the code should belong to its own submitted branch.  Thanks. 

