#include <stdio.h>
#include <unistd.h>
#include "xuartlite.h"
#include "xparameters.h"
#include "xil_printf.h"

#define uart_id XPAR_UARTLITE_0_DEVICE_ID
#define MAX 32
XUartLite uart;

int main()
{
	u8 msg_send[MAX] = "hello\n\r";
	u8 msg_recv[MAX] = "";
	XUartLite_Initialize(&uart, uart_id);

	while(1){
		XUartLite_Send(&uart, msg_send, sizeof(msg_send));
		while(XUartLite_IsSending(&uart)); // ������ �Ϸ�� ������ ��ٸ�

		// UART ���� �����Ͱ� �� �ö����� ��ٸ�
		while(XUartLite_Recv(&uart, msg_recv, sizeof(msg_recv)) == 0);

		xil_printf("%s", msg_recv);
	}
}