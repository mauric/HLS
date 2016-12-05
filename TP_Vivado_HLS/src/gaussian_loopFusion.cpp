#include "globals.h"

static float k[3] = {0.24664, 0.60671, 0.24664};

static float tmp[H][W];

void gaussian_loopFusion(unsigned short in[H][W], unsigned short out[H][W])
{
    //TODO
	/* matrix */
	/* W 1920
	   H 1080
		     j -> W
		   _ _ _ _ _  1920
		  |
	i-> H |  x(i,j)
		  |
		1080
	*/
	int i,j;

	for ( i = 0; i < H; ++i) {
		tmp[i][0] = k[0] * in[i+1 - 1][j] + k[1] * in[i][j] + k[2] * in[i + 1][j];
		tmp[i][1] = k[0] * in[i+1 - 1][j] + k[1] * in[i][j] + k[2] * in[i + 1][j];
		for ( j = 2; j < W; ++j) {
			tmp[i][j] = k[0] * in[i+1 - 1][j] + k[1] * in[i][j] + k[2] * in[i + 1][j];
			out[i][j-1] = k[0] * tmp[i][(j - 1) - 1] + k[1] * tmp[i][(j - 1) ] + k[2] * tmp[i][(j - 1)  + 1];
		}
	}


}

/* Les operateur ternqires nos rqjoutent des complexite
for ( i = 0; i < H; ++i) {
	for ( j = 0; j < W; ++j) {
		//limitation de bord pour calcul en lignes
		tmp[((i<1)?1:((i>1918)?1918:i))][j] = k[0] * in[((i<1)?1:i) - 1][j] + k[1] * in[((i<1)?1:((i>1918)?1918:i))][j]
				+ k[2] * in[((i>1918)?1918:i) + 1][j];

		//limitation de bord pour calcul en colonnes
		out[i][((j<1)?1:((j>1918)?1918:j))] = k[0] * tmp[i][((j<1)?1:j) - 1] + k[1] * tmp[i][((j<1)?1:((j>1918)?1918:j))]
				+ k[2] * tmp[i][((j>1918)?1918:j) + 1];
	}
}*/
