#include "globals.h"
#include <string.h>

static float k[3] = {0.24664, 0.60671, 0.24664};

void gaussian_caching(unsigned short in[H][W], unsigned short out[H][W])
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
	float tmp0, tmp1, tmp2;
	float cache[3][W];
	int i, j,l;

	//init cache
	for (l = 0; l < W; ++l) {
		cache[0][l] = in[0][l];
		cache[1][l] = in[1][l];
		cache[2][l] = in[2][l];
	}

	for (i = 1; i < H; ++i) {
		tmp0 = k[0] * cache[i - 1][0] + k[1] * cache[i][0] + k[2] * cache[i + 1][0]; //TODO mirar error en valor nan
		tmp1 = k[0] * cache[i - 1][1] + k[1] * cache[i][1] + k[2] * cache[i + 1][1];

		cache[0][0] = cache[1][0];
		cache[1][0] = cache[2][0];
		cache[2][0] = in[i+2][0];

		cache[0][1] = cache[1][1];
		cache[1][1] = cache[2][1];
		cache[2][1] = in[i+2][1];
		for (j = 2; j < W; ++j) {
			tmp2 = k[0] * cache[i - 1][j] + k[1] * cache[i][j] + k[2] * cache[i + 1][j];
			out[i][j - 1] = k[0] * tmp0 + k[1] * tmp1+ k[2] * tmp2;
			tmp0 = tmp1;
			tmp1 = tmp2;

			cache[0][j] = cache[1][j];
			cache[1][j] = cache[2][j];
			cache[2][j] = in[i+2][j];

		}
	}
}










