
#include <stdio.h>
#include "matrixmul.h"
#define MAX 32

int main()
{
	/**행렬 변수 선언부*/
	INPUT_MATRIX_MUL input;
	unsigned int lm;
	unsigned int ln;
	unsigned int lp;
	unsigned int m = 1 << lm;
	unsigned int n = 1 << ln;
	unsigned int p = 1 << lp;
	/**행렬 범위 변수 선언 끝*/
	/**HW SW 비교하기 위한 결과값 선언*/
	result_t hw_result[MAX][MAX], sw_result[MAX][MAX];
	int err_cnt = 0;
	/**결과값 변수 선언 끝*/
	/**기타 변수들 선언부*/
	unsigned int i, j, k;
	/**선언부 작성 끝*/

	/**변수 초기화*/
	lm = 2;
	ln = 2;
	lp = 2;
	m = 1 << lm;
	n = 1 << ln;
	p = 1 << lp;
	/**변수 초기화 끝*/

	printf("m = %d\n", m);
	printf("n = %d\n", n);
	printf("p = %d\n", p);

	/**행렬 초기화*/
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
	 /**행렬 초기화 끝*/

	 /**SW 부분 결과 계산*/
	 for (i = 0; i < n; i++) {
		 for (j = 0; j < p; j++) {
			 sw_result[i][j] = 0;
			 for (k = 0; k < m; k++) {
				 sw_result[i][j] += A[i][k] * B[k][j];
			 }
		 }
	 }
	 /**소프트웨어 부분 결과 계산 끝*/

	 /**HW 부분 결과 계산*/
#ifdef HW_COSIM
	 matrixmul(lm, ln, lp, input, hw_result);
	 /**HW 부분 결과 계산 끝*/
#endif
	 /**SW와 HW 결과값 비교*/
	 for (i = 0; i < n; i++) {
	      for (j = 0; j < p; j++) {
	         if (hw_result[i][j] != sw_result[i][j]) {
	        	 /**ERROR 발생시 플래그*/
	            err_cnt++;
	            /**에러 발생 플래그 끝*/
	         }
	      }
	 }
	 /**SW HW 결과값 비교 끝*/

	 /**검증위해 행렬 출력.*/
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
	 /**출력 끝*/

	 /**ERROR 발생시 아래 행동*/
#ifdef HW_COSIM
	 if (err_cnt)
		 printf("mismatch detect\n");
	 else
		 printf("test pass\n");
#endif
	return err_cnt;
	/**ERROR 발생시 행동 끝*/
}
