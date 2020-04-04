#ifndef __STEP_MOTORS_H
#define __STEP_MOTORS_H

#define N_MOTORS 2

class StepMotors {
private:

  //Ticker update_ticker;
public:
  void setup();
  void enable(int motor);
  void disable(int motor);
  void enable();
  void disable();
  void steps(int motor, int amount);
};

#endif