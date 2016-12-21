#ifndef GLOBALS_H

/*---
 * Globals define
 *----------------------------------------------------------------------------*/
#define W 1920
#define H 1080

/*---
 * Functions define
 *----------------------------------------------------------------------------*/
//Reference design
void gaussian_3x3(unsigned short in[H][W], unsigned short out[H][W]);
void gaussian_sep(unsigned short in[H][W], unsigned short out[H][W]);
void gaussian_loopFusion(unsigned short in[H][W], unsigned short out[H][W]);
void gaussian_1line(unsigned short in[H][W], unsigned short out[H][W]);
void gaussian_scalarized(unsigned short in[H][W], unsigned short out[H][W]);
void gaussian_caching(unsigned short in[H][W], unsigned short out[H][W]);
void gaussian_fixedPoint(unsigned short in[H][W], unsigned short out[H][W]);


#endif /*GLOBALS_H*/
