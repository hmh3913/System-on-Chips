#ifndef __MATRIXMUL_H__
#define __MATRIXMUL_H__

#define HW_COSIM
#define MAX 32

typedef unsigned char mat_a_t;
typedef unsigned char mat_b_t;
typedef unsigned int result_t;

typedef struct Input_Matrix_Mul
{
	mat_a_t A[MAX][MAX];
	mat_b_t B[MAX][MAX];
} INPUT_MATRIX_MUL;

void matrixmul(unsigned int lm, unsigned int ln, unsigned int lp, INPUT_MATRIX_MUL input, result_t AB[MAX][MAX]);

#endif // __MATRIXMUL_H__ not defined
