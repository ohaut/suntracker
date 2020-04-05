#include <stdio.h>
#include <spa.h>
#include "MirrorCalc.h"

#ifndef _NATIVE
#include <TimeLib.h>
#include <Arduino.h>
#endif



void MirrorCalc::update(){
#ifndef _NATIVE
    static int nextUpdate = 0;
    int now = millis();

    if (now>nextUpdate) {
        nextUpdate = now + 2000;
        calcNow();
    }
#else
   static int m=10;
   calcSym(m++);
   m=m%2400;
#endif
};


void MirrorCalc::calcNow(){
    #ifndef _NATIVE
    spa.year          = year();
    spa.month         = month();
    spa.day           = day();
    spa.hour          = hour();
    spa.minute        = minute();
    spa.second        = second();
    #endif
    this->_calc();
};

void MirrorCalc::calcSym(int min){
    spa.year          = 2020;
    spa.month         = 4;
    spa.day           = 3;
    spa.hour          = 6 + min/60;
    spa.minute        = min%60;
    spa.second        = 0;
    this->_calc();
};

void MirrorCalc::_calc() {
    spa.timezone      = 0.0;
    spa.delta_ut1     = 0;
    spa.delta_t       = 67;
    spa.longitude     = -3.7038;
    spa.latitude      = 40.4118;
    spa.elevation     = 667;
    spa.pressure      = 942;
    spa.temperature   = 20;
    spa.slope         = 0;
    spa.azm_rotation  = 0;
    spa.atmos_refract = 0.5667;
    spa.function      = SPA_ALL;

    spa_calculate(&spa);

    // invert zenith, so 0 deg starts with the horizon
    hIn.sunZenith = 90-spa.zenith;

    // calculate azimuth based on platform orientation
    hIn.sunAzimuth = spa.azimuth - this->platformOrientation;

    hIn.rayAzimuth = _rayAz;
    hIn.rayZenith = _rayZen;

    helioCalculateMirror(&hIn, &hOut);

}

char* MirrorCalc::str() {
    static char str[90];
    sprintf(str,"%02d:%02d\t%.6f\t%.6f\t%.6f\t%.6f", spa.hour, spa.minute, hIn.sunZenith, hIn.sunAzimuth , getPitch(), getYaw());
    return str;  
};

double MirrorCalc::getPitch(){
      return hOut.mirrorPitch;
};

double MirrorCalc::getYaw(){
      return -hOut.mirrorYaw;
};


