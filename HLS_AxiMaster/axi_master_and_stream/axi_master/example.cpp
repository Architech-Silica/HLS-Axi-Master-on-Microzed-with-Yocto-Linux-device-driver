#include <stdio.h>
#include <string.h>
#define N 128
void example(volatile int *a, int stream_in[N], unsigned int byte_wroffset,
				unsigned int ctrl_reg, unsigned int *status_reg, bool *interrupt )
{
	#pragma HLS INTERFACE ap_bus port=a
	#pragma HLS RESOURCE variable=a core=AXI4M
	#pragma HLS INTERFACE axis port=stream_in
	#pragma HLS STREAM variable=stream_in
	#pragma HLS INTERFACE ap_none register     port=byte_wroffset
	#pragma HLS RESOURCE core=AXI4LiteS    variable=byte_wroffset metadata="-bus_bundle MYAXIL"
	#pragma HLS INTERFACE ap_none register     port=ctrl_reg
	#pragma HLS RESOURCE core=AXI4LiteS    variable=ctrl_reg metadata="-bus_bundle MYAXIL"
	#pragma HLS INTERFACE ap_ovld register     port=status_reg
	#pragma HLS RESOURCE core=AXI4LiteS    variable=status_reg metadata="-bus_bundle MYAXIL"
	#pragma HLS INTERFACE ap_ovld port=interrupt
	int i;
	int buff[N];
	static unsigned int count=0;
	static bool int_pending = false;
	static unsigned int local_ctrl_reg=0;

	local_ctrl_reg = ctrl_reg;
	if ((local_ctrl_reg & 1) && (int_pending == false)){
	  for(i=0; i < N; i++)
		  buff[i] = stream_in[i];
	  memcpy((int *)(a+byte_wroffset/4),buff,N*sizeof(int));
	  count += N;
	  *status_reg = count;
	  int_pending = true;
	}
	if (local_ctrl_reg & 2) {
	 int_pending=false;
	}
	*interrupt=int_pending;
}

  
