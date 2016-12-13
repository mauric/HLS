#include "globals.h"
#include <string.h>

static float k[3] = {0.24664, 0.60671, 0.24664};
static float cache[3][W];
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
	memcpy(cache,);
	int i, j;

	//init cache
	cache[0][0] = in[0][0];
	cache[1][0] = in[1][0];
	cache[2][0] = in[2][0];
	cache[0][1] = in[0][1];
	cache[1][1] = in[1][1];
	cache[2][1] = in[2][1];
	cache[0][2] = in[0][2];
	cache[1][2] = in[1][2];
	cache[2][2] = in[2][2];
	for (i = 1; i < H; ++i) {
		tmp0 = k[0] * cache[i - 1][0] + k[1] * cache[i][0] + k[2] * cache[i + 1][0];
		tmp1 = k[0] * cache[i - 1][1] + k[1] * cache[i][1] + k[2] * cache[i + 1][1];
		cache[0][0] = cache[1][0];
		cache[1][0] = cache[2][0];
		cache[2][0] = in[3][0];
		cache[0][1] = cache[1][1];
		cache[1][1] = cache[2][1];
		cache[2][1] = in[3][1];
	for (j = 2; j < W; ++j) {
			tmp2 = k[0] * cache[i - 1][j] + k[1] * cache[i][j] + k[2] * cache[i + 1][j];
			out[i][j - 1] = k[0] * tmp0 + k[1] * tmp1+ k[2] * tmp2;
			tmp0 = tmp1;
			tmp1 = tmp2;
		}
	}
}










