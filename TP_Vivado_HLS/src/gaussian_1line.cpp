#include "globals.h"

static float k[3] = {0.24664, 0.60671, 0.24664};

static float tmp[W]; 

void gaussian_1line(unsigned short in[H][W], unsigned short out[H][W])
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
	int i,j;
	for ( i = 1; i < H; ++i) {
		tmp[0] = k[0] * in[i - 1][0] + k[1] * in[i][0] + k[2] * in[i + 1][0];
		tmp[1] = k[0] * in[i - 1][1] + k[1] * in[i][1] + k[2] * in[i + 1][1];
		gaussian_1line_label0_pipeline:for ( j = 2; j < W; ++j) {
			tmp[j] = k[0] * in[i - 1][j] + k[1] * in[i][j] + k[2] * in[i + 1][j];
			out[i][j-1] = k[0] * tmp[j -2 ] + k[1] * tmp[(j - 1) ] + k[2] * tmp[j];
		}
	}

}
