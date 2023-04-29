
#include <stdio.h>
#include "matrixmul.h"
#define MAX 32

int main()
{
	/**��� ���� �����*/
	INPUT_MATRIX_MUL input;
	unsigned int lm;
	unsigned int ln;
	unsigned int lp;
	unsigned int m = 1 << lm;
	unsigned int n = 1 << ln;
	unsigned int p = 1 << lp;
	/**��� ���� ���� ���� ��*/
	/**HW SW ���ϱ� ���� ����� ����*/
	result_t hw_result[MAX][MAX], sw_result[MAX][MAX];
	int err_cnt = 0;
	/**����� ���� ���� ��*/
	/**��Ÿ ������ �����*/
	unsigned int i, j, k;
	/**����� �ۼ� ��*/

	/**���� �ʱ�ȭ*/
	lm = 2;
	ln = 2;
	lp = 2;
	m = 1 << lm;
	n = 1 << ln;
	p = 1 << lp;
	/**���� �ʱ�ȭ ��*/

	printf("m = %d\n", m);
	printf("n = %d\n", n);
	printf("p = %d\n", p);

	/**��� �ʱ�ȭ*/
	 mat_a_t A[MAX][MAX] = {
			 {1, 1, 1, 1},
			 {2, 2, 2, 2},
			 {3, 3, 3, 3},
			 {4, 4, 4, 4}
	 };

	 mat_b_t B[MAX][MAX] = {
			 {1, 10, 100, 0},
			 {200, 12, 2, 2},
			 {63, 34, 12, 3},
			 {47, 45, 4, 0}
	 };

	 for(i = 0; i < n; i++){
		 for(j = 0; j < m; j++){
			 input.A[i][j] = A[i][j];
		 }
	 }
	    for(i = 0; i < m; i++){
	    	for(j = 0; j < p; j++){
	    		input.B[i][j] = B[i][j];
	    	}
	    }
	 /**��� �ʱ�ȭ ��*/

	 /**SW �κ� ��� ���*/
	 for (i = 0; i < n; i++) {
		 for (j = 0; j < p; j++) {
			 sw_result[i][j] = 0;
			 for (k = 0; k < m; k++) {
				 sw_result[i][j] += A[i][k] * B[k][j];
			 }
		 }
	 }
	 /**����Ʈ���� �κ� ��� ��� ��*/

	 /**HW �κ� ��� ���*/
#ifdef HW_COSIM
	 matrixmul(lm, ln, lp, input, hw_result);
	 /**HW �κ� ��� ��� ��*/
#endif
	 /**SW�� HW ����� ��*/
	 for (i = 0; i < n; i++) {
	      for (j = 0; j < p; j++) {
	         if (hw_result[i][j] != sw_result[i][j]) {
	        	 /**ERROR �߻��� �÷���*/
	            err_cnt++;
	            /**���� �߻� �÷��� ��*/
	         }
	      }
	 }
	 /**SW HW ����� �� ��*/

	 /**�������� ��� ���.*/
	 printf("Show matrix A\n");
	 for (i = 0; i < n; i++) {
	      for (j = 0; j < m; j++) {
	 		 printf("%d ", input.A[i][j]);
	      }
	      printf("\n");
	 }

	 printf("Show matrix B\n");
	 for (i = 0; i < m; i++) {
	      for (j = 0; j < p; j++) {
	 		 printf("%d ", input.B[i][j]);
	      }
	      printf("\n");
	 }

	 printf("Show matrix sw_result\n");
	 for (i = 0; i < n; i++) {
	      for (j = 0; j < p; j++) {
	 		 printf("%d ", sw_result[i][j]);
	      }
	      printf("\n");
	 }

	 printf("Show matrix hw_result\n");
	 for (i = 0; i < n; i++) {
	      for (j = 0; j < p; j++) {
	 		 printf("%d ", hw_result[i][j]);
	      }
	      printf("\n");
	 }
	 /**��� ��*/

	 /**ERROR �߻��� �Ʒ� �ൿ*/
#ifdef HW_COSIM
	 if (err_cnt)
		 printf("mismatch detect\n");
	 else
		 printf("test pass\n");
#endif
	return err_cnt;
	/**ERROR �߻��� �ൿ ��*/
}
