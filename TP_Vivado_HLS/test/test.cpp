#include <stdlib.h>
#include <stdio.h>
#include <math.h>       /* fabs */

#define W 1920
#define H 1080

#define DELTA 50

unsigned short in[H][W];

unsigned short out1[H][W];
unsigned short out2[H][W];

void refImplementation(unsigned short in[H][W], unsigned short out[H][W]) {
	float K[3][3] = {{0.060831, 0.149639, 0.060831},
					{0.149639, 0.368097, 0.149630},
					{0.060831, 0.149639, 0.060831}};

    int i,j;

    for (i=1; i<H-1; i++) {
        for (j=1; j<W-1; j++) {
            out[i][j] =
                K[0][0] * in[i-1][j-1] + K[0][1] * in[i-1][j] + K[0][2] * in[i-1][j+1] +
                K[1][0] * in[i  ][j-1] + K[1][1] * in[i  ][j] + K[1][2] * in[i  ][j+1] +
                K[2][0] * in[i+1][j-1] + K[2][1] * in[i+1][j] + K[2][2] * in[i+1][j+1];
		}
	}
}

void gaussian(unsigned short in[H][W], unsigned short out[H][W]);

int main(int argc, char **argv) {
	for (int i=0; i<H; i++) {
		for (int j=0; j<W; j++) {
			in[i][j] = rand() >> 1;
		}
	}

	refImplementation(in, out1);
	gaussian(in, out2);

	int count = 0;
	for (int i=1; i<H-1; i++) {
		for (int j=1; j<W-1; j++) {
			if (fabs(out1[i][j] - out2[i][j]) > DELTA) {
				printf("pos[%d][%d] =>%d - %d\n",i,j, out1[i][j], out2[i][j]);
				count ++;
			}
		}
	}


	if (count) {
		printf("%d pixels are too far away from reference design.\n", count);
		return -1;
	} else {
		printf("test PASSED.\n");
		return 0;
	}
}
