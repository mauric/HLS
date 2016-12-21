#include "globals.h"

/*added*/

#define I_BORD_INIT 1
#define I_BORD_FIN H-1
#define J_BORD_INIT 1
#define J_BORD_FIN W-1


static float k[3] = {0.24664, 0.60671, 0.24664};

/* Store result of first convolution in this array */
static float tmp[H][W];

void gaussian_sep(unsigned short in[H][W], unsigned short out[H][W]) {
    //TODO
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

	for ( i = I_BORD_INIT; i < I_BORD_FIN; ++i) {
		for ( j = 0; j < W; ++j) {
			tmp[i][j] = k[0] * in[i - 1][j] + k[1] * in[i][j]
					+ k[2] * in[i + 1][j];
		}
	}

	for ( i = 0; i < H; ++i) {
		for (j = J_BORD_INIT; j < J_BORD_FIN; ++j) {
			out[i][j] = k[0] * tmp[i][j - 1] + k[1] * tmp[i][j]
					+ k[2] * tmp[i][j + 1];
		}
	}


}










