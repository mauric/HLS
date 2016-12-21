#include "globals.h"

static float K[3][3] = {{0.060831, 0.149639, 0.060831},
                        {0.149639, 0.368097, 0.149630},
                        {0.060831, 0.149639, 0.060831}};

void gaussian_3x3(unsigned short in[H][W], unsigned short out[H][W])
{
    int i,j;

    for (i=1; i<H-1; i++)
    {
        for (j=1; j<W-1; j++)
        {
            out[i][j] =
                K[0][0]*in[i-1][j-1] +K[0][1]*in[i-1][j] +K[0][2]*in[i-1][j+1]
                + K[1][0]*in[i  ][j-1] +K[1][1]*in[i  ][j] +K[1][2]*in[i  ][j+1]
                + K[2][0]*in[i+1][j-1] +K[2][1]*in[i+1][j] +K[2][2]*in[i+1][j+1];
		}
	}
}
