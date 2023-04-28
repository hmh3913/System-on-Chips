
#ifndef __MATRIXMUL_H__
#define __MATRIXMUL_H__

#define HW_COSIM
#define MAX 32

typedef unsigned char mat_a_t;
typedef unsigned char mat_b_t;
typedef unsigned int result_t;



//static unsigned int lm;
//static unsigned int ln;
//static unsigned int lp;
//static unsigned int m = 1 << lm;
//static unsigned int n = 1 << ln;
//static unsigned int p = 1 << lp;

void matrixmul(unsigned int lm, unsigned int ln, unsigned int lp, mat_a_t  A[MAX][MAX], mat_b_t  B[MAX][MAX], result_t AB[MAX][MAX]);

#endif // __MATRIXMUL_H__ not defined

