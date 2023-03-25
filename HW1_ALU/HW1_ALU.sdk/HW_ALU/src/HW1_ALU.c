
/*
 * HW1_ALU.c
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

/*
 * PL�� deep switch�� button�� �Է����� �޾�
 * PS���� ALU�� �����ϰ�
 * PL�� LED�� ����ϴ� ���α׷��̴�.
 * deep
 */
#include <stdio.h>
#include <unistd.h>
#include "platform.h"
#include "xparameters.h"
#include "xgpio.h"

//overflow �� �˻��ϴ� �ڵ�
u8 add_with_overflow(u8 a, u8 b, u8 *overflow){
	u16 result = (u16)a + (u16)b;
	if(result > 0xff)
		*overflow = 1;
	else
		*overflow = 0;
	return (u8)result;
}
u8 multi_with_overflow(u8 a, u8 b, u8 *overflow){
	u16 result = (u16)a * (u16)b;
	if(result > 0xff)
		*overflow = 1;
	else
		*overflow = 0;
	return (u8)result;
}
//underflow �� �˻��ϴ� �ڵ�
u8 sub_with_underflow(u8 a, u8 b, u8 *underflow){
	if(a < b)
		*underflow = 1;
	else
		*underflow = 0;
	return (u8)(a-b);
}
// rotation left �ϴ� �ڵ�
u8 rotate_left(u8 result, int shift){
	shift %= 8;
	return (result << shift) | (result >> (8 - shift));
}
// rotation right �ϴ� �ڵ�
u8 rotate_right(u8 result, int shift){
	shift %= 8;
	return (result >> shift) | (result << (8 - shift));
}

int main (void)
{
	static XGpio SW;		//������ġ�� InstancePtr
	static XGpio BTN;		//��ư�� InstancePtr
	static XGpio LED;		//LED�� InstancePtr
	u8 SW_status;			//������ġ�� ������ ������ ����
	u8 BTN_status;			//��ư�� ������ ������ ����
	u8 opcode;
	u8 stepsize;

	u8 overflow;
	u8 underflow;

	u8 Result = 0x01;				//AlU�� ���� ������ ���� unsigned�� ����
	/*PL GPIO ���� üũ �� ����� ����*/
	int status;
    status = XGpio_Initialize(&SW, XPAR_SW_DEVICE_ID);
	//int XGpio_Initialize(XGpio *InstancePtr, u16 DeviceId);
    //XPAR_SW_DEVICE_ID�� xparameters.h�� ����
    if (status != XST_SUCCESS){
    	return XST_FAILURE;
    }

	XGpio_SetDataDirection(&SW, 1, 0xff); //1�� ä��, �Է����� ����.
	/*
	 * void XGpio_SetDataDirection (XGpio *      InstancePtr,
                             unsigned     Channel,
                             u32          DirectionMask
                            )
	 * InstancePtr is a pointer to an XGpio instance to be worked on.
	 * Channel contains the channel of the GPIO (1 or 2) to operate on.
	 * DirectionMask is a bitmask specifying which discretes are input and which are output. Bits set to 0 are output and bits set to 1 are input.
	 */

	status = XGpio_Initialize(&BTN, XPAR_BTN_DEVICE_ID);
	if (status != XST_SUCCESS)
    	return XST_FAILURE;
	XGpio_SetDataDirection(&BTN, 1, 0xff); //1�� ä��, �Է����� ����.

	status = XGpio_Initialize(&LED, XPAR_LED_DEVICE_ID);
	if (status != XST_SUCCESS)
    	return XST_FAILURE;
	XGpio_SetDataDirection(&LED, 1, 0x00);	//1�� ä��, ������� ����.
	////////////////

	while (1) // infinite loop
	{
		BTN_status = XGpio_DiscreteRead(&BTN, 1);
		//u32 XGpio_DiscreteRead(XGpio *InstancePtr, unsigned Channel);
		if(BTN_status == 1){
			Result = 0x01;		//��ư �Է��� 1�̸� �� 0x01�� �ʱ�ȭ
			xil_printf("BTN Reset = %u \n\r", Result);
		}

		SW_status = XGpio_DiscreteRead(&SW, 1);
		opcode = (SW_status >> 4) & 0xF;	//SW_status�� �� 4bit ����
		stepsize = SW_status & 0xF;			//SW_status�� �� 4bit ����

		switch(opcode){
		//���� ����
		case 0b0000:
			Result = add_with_overflow(Result, stepsize, &overflow);
			if(overflow){
				xil_printf("overflow! Reset R = 0x01 \n\r");
			    Result = 0x01;
			}
			else{
				xil_printf("ADD operation R = R + %u \n\r", stepsize);
				xil_printf("Result = %u \n\r", Result);
			}
			break;
		//���� ����
		case 0b0001:
			Result = sub_with_underflow(Result, stepsize, &underflow);
			if(underflow){
				xil_printf("underflow! Reset R = 0x01 \n\r");
			    Result = 0x01;
			}
			else{
				xil_printf("SUB operation R = R - %u \n\r", stepsize);
				xil_printf("Result = %u \n\r", Result);
			}
			break;
		//��������
		case 0b0010:
			Result = multi_with_overflow(Result, stepsize, &overflow);
			if(overflow){
				xil_printf("overflow! Reset R = 0x01 \n\r");
				Result = 0x01;
			}
			else{
				xil_printf("Multiplication R = R * %u \n\r", stepsize);
				xil_printf("Result = %u \n\r", Result);
			}
			break;
		//�������� �̵�
		case 0b0011:
			Result = rotate_left(Result, stepsize);
			xil_printf("rotate_left stepsize = %u \n\r", stepsize);
			xil_printf("Result = %u \n\r", Result);
			break;
		//���������� �̵�
		case 0b0100:
			Result = rotate_right(Result, stepsize);
			xil_printf("rotate_right stepsize = %u \n\r", stepsize);
			xil_printf("Result = %u \n\r", Result);
			break;
		//��Ʈ and ����
		case 0b0101:
			Result = Result & stepsize;		//bitwise and
			xil_printf("bitwise and /stepsize = %u \n\r", stepsize);
			xil_printf("Result = %u %6 \n\r", Result);
			break;
		//��Ʈ or ����
		case 0b0111:
			Result = Result | stepsize;		//bitwise or
			xil_printf("bitwise or /stepsize = %u \n\r", stepsize);
			xil_printf("Result = %u \n\r", Result);
			break;
		//��Ʈ xor ����
		case 0b1000:
			Result = Result ^ stepsize;		//bitwise xor
			xil_printf("bitwise xor /stepsize = %u \n\r", stepsize);
			xil_printf("Result = %u \n\r", Result);
			break;
		}

	  XGpio_DiscreteWrite(&LED, 1, Result);	  //ALU���� ������� LED�� �����.
	  //void XGpio_DiscreteWrite(XGpio *InstancePtr, unsigned Channel, u32 Mask);

	  sleep(1); //1 �� ����
	}
}