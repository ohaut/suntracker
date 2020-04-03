#include <math.h>
#include "Helio.h"

double _deg2rad(double deg) {
    return deg * M_PI / 180.0;
}

double _rad2deg(double rad) {
    return rad * 180.0 / M_PI;
}


void polarToVector(double azimuth, double zenith, double r, double *v) {
    double cosZ, cosA, sinZ, sinA;

    azimuth = _deg2rad(azimuth);
    zenith = _deg2rad(zenith);

    cosZ = cos(zenith); sinZ = sin(zenith);
    cosA = cos(azimuth); sinA = sin(azimuth);
    
    v[0] = r * cosZ * sinA;
    v[1] = r * cosZ * cosA;
    v[2] = r * sinZ;
}

void normalizeVector(double *v) {
    double len = sqrt(v[0]*v[0] + v[1]*v[1] + v[2]*v[2]);

    v[0] /= len;
    v[1] /= len;
    v[2] /= len; 
}

void normalToPolar(double *v, double *azimuth, double *zenith) {
    double z;
    normalizeVector(v);
    z = acos(v[2]);
    *zenith = _rad2deg(z);
    *azimuth = _rad2deg(acos(v[1]/sin(z)));
}

void sunVector(heliostatInput *input, double *u) {
    // r = 1 because it's pointing upwards, from the mirror
    polarToVector(input->sunAzimuth, input->sunZenith, 1.0, u);
}
void rayVector(heliostatInput *input, double *u) {
    // r = 1 because it's pointing upwards, to the mirror
    polarToVector(input->rayAzimuth, input->rayZenith, 1.0, u);
}

void calculateMirrorNormal(double *u, double *w, double *mirror_n) {
  
    mirror_n[0] = u[0] + w[0];
    mirror_n[1] = u[1] + w[1];
    mirror_n[2] = u[2] + w[2];

    normalizeVector(mirror_n);

}

void helioCalculateMirror(heliostatInput *input, heliostatOutput *output) {
    double mirror_n[3]; //v
    double u[3]; //sun
    double w[3]; //ray
    
    // the sun vector, projecting into the mirror platform
    sunVector(input, u);
    
    // the wanted projected ray vector
    rayVector(input, w);

    // get the mirror normal
    calculateMirrorNormal(u, w, mirror_n);
    
    // convert the mirror normal to polar coordinates
    normalToPolar(mirror_n, &output->mirrorYaw, &output->mirrorPitch);
    
}