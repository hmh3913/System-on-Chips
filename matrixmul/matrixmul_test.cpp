
#include <stdio.h>
#include "matrixmul.h"
#define MAX 32



int main()
{

	unsigned int lm;
	unsigned int ln;
	unsigned int lp;

	lm = 1;
	ln = 2;
	lp = 3;

	unsigned int m = 1 << lm;
	unsigned int n = 1 << ln;
	unsigned int p = 1 << lp;

	printf("m = %d\n", m);
	printf("n = %d\n", n);
	printf("p = %d\n", p);

	 mat_a_t A[][MAX] = {
			 {1, 1},
			 {2, 2},
			 {3, 3},
			 {4, 4}
	 };

	 mat_b_t B[][MAX] = {
			 {1, 2, 3, 4, 5, 6, 7 ,8 ,9},
			 {1, 2, 3, 4, 5, 6, 7 ,8 ,9}
	 };

	 result_t hw_result[MAX][MAX], sw_result[MAX][MAX];
	 int err_cnt = 0;
	 unsigned int i, j, k;

	 for (i = 0; i < n; i++) {
		 for (j = 0; j < p; j++) {
			 sw_result[i][j] = 0;
			 for (k = 0; k < m; k++) {
				 sw_result[i][j] += A[i][k] * B[k][j];
			 }
		 }
	 }

	 /*
	  * HW Á¡°Ë
	  *		*/
#ifdef HW_COSIM
	 matrixmul(lm, ln, lp, A, B, hw_result);
#endif
	 for (i = 0; i < n; i++) {
	      for (j = 0; j < p; j++) {
	         // Check HW result against SW

	         if (hw_result[i][j] != sw_result[i][j]) {
	            err_cnt++;
	         }
	      }
	 }


	 printf("Show matrix A\n");
	 for (i = 0; i < n; i++) {
	      for (j = 0; j < m; j++) {
	 		 printf("%d ", A[i][j]);
	      }
	      printf("\n");
	 }

	 printf("Show matrix B\n");
	 for (i = 0; i < m; i++) {
	      for (j = 0; j < p; j++) {
	 		 printf("%d ", B[i][j]);
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

#ifdef HW_COSIM
	 if (err_cnt)
		 printf("mismatch detect\n");
	 else
		 printf("test pass\n");
#endif
	return err_cnt;
}
