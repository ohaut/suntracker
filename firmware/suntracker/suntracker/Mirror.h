#ifndef __MIRROR_H
#define __MIRROR_H

#include "StepMotors.h"



class Mirror {
private:
  StepMotors _motors;

  int _steps_yaw, _steps_pitch;
  int _desired_steps_yaw, _desired_steps_pitch;
  double _yaw, _pitch;

  //Ticker update_ticker;
public:
  void update();
  void setup();
  void zero();
  void setPitch(double pitch);
  void setYaw(double yaw);
  void enable();
  void disable();
  char *str();

};

#endif