#ifndef __HELIO_H
#define __HELIO_H

typedef struct heliostatInputSt {
    double sunAzimuth;
    double sunZenith;
    double rayAzimuth;
    double rayZenith;
} heliostatInput;

typedef struct heliostatOutputSt {
    double mirrorPitch;
    double mirrorYaw;
} heliostatOutput;


void polarToVector(double azimuth, double zenith, double r, double *v);
void normalizeVector(double *v);
void normalToPolar(double *v, double *azimuth, double *zenith);
double deg2rad(double deg);
double rad2deg(double rad);
void sunVector(heliostatInput *input, double *u);
void rayVector(heliostatInput *input, double *u);
void calculateMirrorNormal(double *u, double *w, double *mirror_n);
void helioCalculateMirror(heliostatInput *input, heliostatOutput *output);

#endif