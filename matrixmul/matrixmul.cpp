#include "matrixmul.h"
#define MAX 32

void matrixmul(unsigned int lm, unsigned int ln, unsigned int lp, mat_a_t  A[MAX][MAX], mat_b_t  B[MAX][MAX], result_t AB[MAX][MAX]) {
    int i, j, k;

    unsigned int m = 1 << lm;
    unsigned int n = 1 << ln;
    unsigned int p = 1 << lp;


    // Initializing elements of matrix mult to 0.
     for (int i = 0; i < n; i++) {
        for (int j = 0; j < p; j++) {
           AB[i][j] = 0;
        }
     }

    for (i = 0; i < n; i++) {
        for (j = 0; j < p; j++) {
            for (k = 0; k < m; k++) {
                AB[i][j] += A[i][k] * B[k][j];
            }
        }
    }
}
