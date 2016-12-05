#include "globals.h"


void gaussian(unsigned short in[H][W], unsigned short out[H][W])
{
#pragma HLS INTERFACE ap_memory port=in
#pragma HLS INTERFACE ap_memory port=out
    //gaussian_3x3(in, out);
    //gaussian_sep(in, out);
    gaussian_loopFusion(in, out);
    //gaussian_1line(in, out);
    //gaussian_scalarized(in, out);
    //gaussian_caching(in, out);
    //gaussian_fixedPoint(in, out);
}
