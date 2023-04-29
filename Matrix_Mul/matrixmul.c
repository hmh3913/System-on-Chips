#include "matrixmul.h"
#define MAX 32

void matrixmul(unsigned int lm, unsigned int ln, unsigned int lp, INPUT_MATRIX_MUL input, result_t AB[MAX][MAX])
{
#pragma HLS INTERFACE axis register both port=AB
#pragma HLS INTERFACE axis register both port=input
#pragma HLS INTERFACE s_axilite port=lp
#pragma HLS INTERFACE s_axilite port=ln
#pragma HLS INTERFACE s_axilite port=lm
    unsigned int i, j, k;
    unsigned int m = 1 << lm;
    unsigned int n = 1 << ln;
    unsigned int p = 1 << lp;

	result_t tmp[MAX][MAX];

    // 구조체 input.AB의 값을 0으로 초기화
     for (i = 0; i < n; i++) {
    	 for (j = 0; j < p; j++) {
    		 AB[i][j] = 0;
    		 tmp[i][j] = 0;
    	 }
     }

     //구조체 input.AB의 값을 행렬곱 연산으로 초기화
    for (i = 0; i < n; i++) {
        for (j = 0; j < p; j++) {
            for (k = 0; k < m; k++) {
            	tmp[i][j] += input.A[i][k] * input.B[k][j];
            	AB[i][j] = tmp[i][j];
            }
        }
    }
}
