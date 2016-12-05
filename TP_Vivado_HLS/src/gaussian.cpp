#include "globals.h"


void gaussian(unsigned short in[H][W], unsigned short out[H][W])
{
#pragma HLS INTERFACE ap_memory port=in
#pragma HLS INTERFACE ap_memory port=out
    //gaussian_3x3(in, out); //DONE
    //gaussian_sep(in, out); //DONE
    //gaussian_loopFusion(in, out); //DONE
     //gaussian_1line(in, out); //DOING
    gaussian_scalarized(in, out);
    //gaussian_caching(in, out);
    //gaussian_fixedPoint(in, out);
}
