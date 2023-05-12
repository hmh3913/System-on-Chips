#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include "platform.h"
#include "xuartlite.h"
#include "xparameters.h"
#include "xil_printf.h"
#include "xfir_hw.h"
#include "xfir.h"

#define uart_id XPAR_UARTLITE_0_DEVICE_ID
#define MAX 100
XUartLite uart;

int main()
{

	static XFir InstancePtr;

	XFir_Initialize(&InstancePtr, XPAR_FIR_0_DEVICE_ID);
	int output;
	int RxBytes;
	double taps[] = {-0.002652144,-0.00492961,0.004556911,0.004375576,-0.004796023,
			-0.007695948,0.006489701,0.011566754,-0.007963735,-0.017132078,
			0.009454539,0.02504892,-0.010814521,-0.037009207,0.011973991,
			0.057369581,-0.012863954,-0.102225033,0.013418712,0.317000329,
			0.486393048,0.317000329,0.013418712,-0.102225033,-0.012863954,
			0.057369581,0.011973991,-0.037009207,-0.010814521,0.02504892,
			0.009454539,-0.017132078,-0.007963735,0.011566754,0.006489701,
			-0.007695948,-0.004796023,0.004375576,0.004556911,-0.00492961,
			-0.002652144,
	};

	u32 ExtVolRawData;
	u8 msg_send[MAX] = "";
	u8 msg_recv[MAX] = "";

	init_platform();
	XUartLite_Initialize(&uart, uart_id);

	while(1){
		XUartLite_Send(&uart, msg_send, sizeof(msg_send));
		while(XUartLite_IsSending(&uart)); // 전송이 완료될 때까지 기다림

		// UART 수신 데이터가 다 올때까지 기다림
		while(XUartLite_Recv(&uart, msg_recv, sizeof(msg_recv)) == 0);
		RxBytes = XUartLite_Recv(&uart, msg_recv, sizeof(msg_recv));
		if (RxBytes > 0) {
			msg_recv[RxBytes] = '\0';
			ExtVolRawData = atoi((const char*) msg_recv);
			xil_printf("Received integer: %d\r\n", ExtVolRawData);
		}
		XFir_Set_x(&InstancePtr, ExtVolRawData);
		XFir_Write_c_Words(&InstancePtr, 0, taps, 41);
		output = XFir_Get_y(&InstancePtr);	//fir 통과 데이터

		xil_printf("%s", msg_recv);
		xil_printf("%d", output);
	}

}
