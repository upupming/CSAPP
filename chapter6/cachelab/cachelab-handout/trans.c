/*
 * trans.c - Matrix transpose B = A^T
 *
 * 李一鸣              1160300625
 *
 * Each transpose function must have a prototype of the form:
 * void trans(int M, int N, int A[N][M], int B[M][N]);
 *
 * A transpose function is evaluated by counting the number of misses
 * on a 1KB direct mapped cache with a block size of 32 bytes.
 */
#include <stdio.h>
#include "cachelab.h"

/*
 * transpose_submit - This is the solution transpose function that you
 *     will be graded on for Part B of the assignment. Do not change
 *     the description string "Transpose submission", as the driver
 *     searches for that string to identify the transpose function to
 *     be graded.
 */
char transpose_submit_desc[] = "Transpose submission";
void transpose_submit(int M, int N, int A[N][M], int B[M][N]){
    int i, j, row, column, diagonal;
    int tmp;
    int tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7, tmp8;

    if (M == 32 && N == 32) {
		for (column = 0; column < M; column += 8) {
			for (row = 0; row < N; row += 8) {
				for (i = row; i < row + 8; i++) {
					for (j = column; j < column + 8; j++) {
						if (i != j) {
							B[j][i] = A[i][j];
						}
						else { // 冲突不命中, 暂停访问B
							tmp = A[i][j];
							diagonal = i;
						}
					}
					if (row == column) { /* store diagonal element */
						B[diagonal][diagonal] = tmp;
					}
				}
			}
		}
	}


	else if(M == 64 && N == 64){
        for (column = 0; column < M; column += 8) {
            for (row = 0; row < N; row += 8) {
                for (j = column; j < column+8; j++){
                    tmp1 = A[j][row];
                    tmp2 = A[j][row+1];
                    tmp3 = A[j][row+2];
                    tmp4 = A[j][row+3];
                    if (j==column) { // j == column, 暂存
                        tmp5 = A[column][row+4];
                        tmp6 = A[column][row+5];
                        tmp7 = A[column][row+6];
                        tmp8 = A[column][row+7];
                    }
                    B[row][j] = tmp1;
                    B[row][j+64] = tmp2;
                    B[row][j+128] = tmp3;
                    B[row][j+192] = tmp4;
                }
                for (j = 7+column; j > column; j--) { // j != column
                    tmp1 = A[j][row+4];
                    tmp2 = A[j][row+5];
                    tmp3 = A[j][row+6];
                    tmp4 = A[j][row+7];
                    B[row+4][j] = tmp1;
                    B[row+4][j + 64] = tmp2;
                    B[row+4][j + 128] = tmp3;
                    B[row+4][j + 192] = tmp4;
                }
                B[row+4][column] = tmp5;
                B[row+4][column+64] = tmp6;
                B[row+4][column+128] = tmp7;
                B[row+4][column+192] = tmp8;
            }
        }
    }

        else if(M == 61 && N == 67){
            for (column = 0; column < M; column += 16) {
                for (row = 0; row < N; row += 16) {
                    for (i = row; (i < row + 16) && (i < N); i++) {
                        for (j = column; j < (column + 16) && (j < M); j++) {
                            if (i != j) {
                                B[j][i] = A[i][j];
                            }
                            else { // 冲突不命中, 暂停访问B
                                tmp = A[i][j];
                                diagonal = i;
                            }
                        }
                        if (row == column) { /* store diagonal element */
                            B[diagonal][diagonal] = tmp;
                        }
                    }
                }
            }
        }
}

/*
 * You can define additional transpose functions below. We've defined
 * a simple one below to help you get started.
 */

/*
 * trans - A simple baseline transpose function, not optimized for the cache.
 */
char trans_desc[] = "Simple row-wise scan transpose";
void trans(int M, int N, int A[N][M], int B[M][N]){
    int i, j, tmp;

    for (i = 0; i < N; i++) {
        for (j = 0; j < M; j++) {
            tmp = A[i][j];
            B[j][i] = tmp;
        }
    }
}

char trans_c_wise_desc[] = "column-wise scan transpose";
void trans_c_wise(int M, int N, int A[N][M], int B[M][N]){
    int i, j, tmp;

    for (i = 0; i < M; i++) {
        for (j = 0; j < N; j++) {
            tmp = A[i][j];
            B[j][i] = tmp;
        }
    }
}

/*
 * registerFunctions - This function registers your transpose
 *     functions with the driver.  At runtime, the driver will
 *     evaluate each of the registered functions and summarize their
 *     performance. This is a handy way to experiment with different
 *     transpose strategies.
 */
void registerFunctions()
{
    /* Register your solution function */
    registerTransFunction(transpose_submit, transpose_submit_desc);

    /* Register any additional transpose functions */
    registerTransFunction(trans, trans_desc);

    registerTransFunction(trans_c_wise, trans_c_wise_desc);
}
