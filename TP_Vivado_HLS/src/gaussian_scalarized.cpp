#include "globals.h"

static float k[3] = {0.24664, 0.60671, 0.24664};

void gaussian_scalarized(unsigned short in[H][W], unsigned short out[H][W]) 
{

	/* matrix */
	/* W 1920
	   H 1080
	           j -> W
	 	 	_ _ _ _ _  1920
	 	   |
	 i-> H |  x
	 	   |
	 1080
	 */
	//TODO this example
	float tmp0, tmp1, tmp2;
	int i, j;
	for (i = 1; i < H; ++i) {
		tmp0 = k[0] * in[i - 1][0] + k[1] * in[i][0] + k[2] * in[i + 1][0];
		tmp1 = k[0] * in[i - 1][1] + k[1] * in[i][1] + k[2] * in[i + 1][1];
	for (j = 2; j < W; ++j) {
			tmp2 = k[0] * in[i - 1][j] + k[1] * in[i][j] + k[2] * in[i + 1][j];
			out[i][j - 1] = k[0] * tmp0 + k[1] * tmp1+ k[2] * tmp2;
			tmp0 = tmp1;
			tmp1 = tmp2;
		}
	}
}
