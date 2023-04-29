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

	// ����ü input.A�� ������ A �迭 �ʱ�ȭ
    for(i = 0; i < n; i++){
    	for(j = 0; j < m; j++){
    		A[i][j] = input.A[i][j];
    	}
    }
    // ����ü input.B�� ������ B �迭 �ʱ�ȭ
    for(i = 0; i < m; i++){
    	for(j = 0; j < p; j++){
    		B[i][j] = input.B[i][j];
    	}
    }

    // ����ü input.AB�� ���� 0���� �ʱ�ȭ
     for (i = 0; i < n; i++) {
        for (j = 0; j < p; j++) {
           AB[i][j] = 0;
        }
     }
     //����ü input.AB�� ���� ��İ� �������� �ʱ�ȭ
    for (i = 0; i < n; i++) {
        for (j = 0; j < p; j++) {
            for (k = 0; k < m; k++) {
                AB[i][j] += A[i][k] * B[k][j];
            }
        }
    }
}
