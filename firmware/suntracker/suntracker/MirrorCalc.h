#ifndef __MIRRORCALC_H
#define __MIRRORCALC_H

#include <spa.h>
#include <Helio.h>

class MirrorCalc {
private:
  double _rayAz;
  double _rayZen;
  heliostatInput hIn;
  heliostatOutput hOut;
  spa_data spa;
  double platformOrientation;

  void _calc();
 public:
  void update();
  void setOutputRay(double azimuth, double zenith) { _rayAz = azimuth; _rayZen = zenith; }
  void setPlatformOrientation(double azimuth) { platformOrientation = azimuth; }
  void calcNow();
  void calcSym(int min_of_day);
  char* str();
  double getPitch();
  double getYaw();

};

#endif