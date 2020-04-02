#include <Arduino.h>
#include "StepMotors.h"

int ENABLE_PINS[] = {5, 2};
int DIR_PINS[] = {15, 4};
int STEP_PINS[] = {14, 12};

void StepMotors::setup() {

  for (int i=0; i<N_MOTORS; i++) {
    pinMode(ENABLE_PINS[i], OUTPUT);
    digitalWrite(ENABLE_PINS[i], 1);
    pinMode(DIR_PINS[i], OUTPUT);
    digitalWrite(DIR_PINS[i], 0);
    pinMode(STEP_PINS[i], OUTPUT);
    digitalWrite(STEP_PINS[i], 0);
  }
  //update_ticker.attach(DIMMER_PERIOD, ticker_update, this);
}

void StepMotors::enable(int motor) {
    digitalWrite(ENABLE_PINS[motor], 0);
}
void StepMotors::disable(int motor) {
    digitalWrite(ENABLE_PINS[motor], 1);
}
void StepMotors::enable(){
 for (int i=0; i<N_MOTORS; i++) {
     this->enable(i);
 }
}
void StepMotors::disable(){
 for (int i=0; i<N_MOTORS; i++) {
     this->disable(i);
 }
}

// https://www.allegromicro.com/-/media/Files/Datasheets/A3982-Datasheet.ashx
// 1uS minimum pulse width for STEP, DIR 200ns BEFORE,  high, then low
void StepMotors::steps(int motor, int dir, int amount){
    digitalWrite(DIR_PINS[motor], dir);
    delayMicroseconds(200);
    for (int i=0; i<amount; i++) {
        digitalWrite(STEP_PINS[motor], 1);
        delayMicroseconds(1000);
        digitalWrite(STEP_PINS[motor], 0);
        delayMicroseconds(1000);
        if (i>0) {
            delay(20);
        }
    }
}
