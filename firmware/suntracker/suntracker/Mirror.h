#ifndef __MIRROR_H
#define __MIRROR_H


#define STEP_DEGS_YAW 0.451
#define STEP_DEGS_PITCH 0.9

class Mirror {
private:
  double _pitch;
  double _yaw;

  //Ticker update_ticker;
public:
  void setup();
  void zero();
  void setPitch(double pitch);
  void setYaw(double yaw);
  void enable();
  void disable();

};

#endif