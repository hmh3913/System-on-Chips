#include "matrixmul.h"
#define MAX 32

void matrixmul(unsigned int lm, unsigned int ln, unsigned int lp, INPUT_MATRIX_MUL input, result_t AB[MAX][MAX])
{
    unsigned int i, j, k;
    unsigned int m = 1 << lm;
    unsigned int n = 1 << ln;
    unsigned int p = 1 << lp;

    mat_a_t  A[MAX][MAX];
	mat_b_t  B[MAX][MAX];

	// 구조체 input.A의 값으로 A 배열 초기화
    for(i = 0; i < n; i++){
    	for(j = 0; j < m; j++){
    		A[i][j] = input.A[i][j];
    	}
    }
    // 구조체 input.B의 값으로 B 배열 초기화
    for(i = 0; i < m; i++){
    	for(j = 0; j < p; j++){
    		B[i][j] = input.B[i][j];
    	}
    }

    // 구조체 input.AB의 값을 0으로 초기화
     for (i = 0; i < n; i++) {
        for (j = 0; j < p; j++) {
           AB[i][j] = 0;
        }
     }
     //구조체 input.AB의 값을 행렬곱 연산으로 초기화
    for (i = 0; i < n; i++) {
        for (j = 0; j < p; j++) {
            for (k = 0; k < m; k++) {
                AB[i][j] += A[i][k] * B[k][j];
            }
        }
    }
}
