// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#1 "C:/Xilinx/SoC/matrixmul/matrixmul.cpp"
#1 "<built-in>"
#1 "<command-line>"
#1 "C:/Xilinx/SoC/matrixmul/matrixmul.cpp"
#1 "C:/Xilinx/SoC/matrixmul/matrixmul.h" 1







typedef unsigned char mat_a_t;
typedef unsigned char mat_b_t;
typedef unsigned int result_t;
#21 "C:/Xilinx/SoC/matrixmul/matrixmul.h"
void matrixmul(unsigned int lm, unsigned int ln, unsigned int lp, mat_a_t A[32][32], mat_b_t B[32][32], result_t AB[32][32]);
#2 "C:/Xilinx/SoC/matrixmul/matrixmul.cpp" 2


void matrixmul(unsigned int lm, unsigned int ln, unsigned int lp, mat_a_t A[32][32], mat_b_t B[32][32], result_t AB[32][32]) {
    int i, j, k;

    unsigned int m = 1 << lm;
    unsigned int n = 1 << ln;
    unsigned int p = 1 << lp;



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
