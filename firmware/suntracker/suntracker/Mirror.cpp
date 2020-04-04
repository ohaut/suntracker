#include <math.h>
#include <stdlib.h>
#include <Arduino.h>
#include "Mirror.h"
#include "StepMotors.h"


#define STEP_DEGS_YAW 0.9
#define STEP_DEGS_PITCH 0.45

#define MOTOR_PITCH 0
#define MOTOR_YAW   1


void Mirror::setup(){
    _motors.setup();

};

void Mirror::zero(){
    _steps_yaw = 0;
    _steps_pitch = 0;
    _desired_steps_yaw = 0;
    _desired_steps_pitch = 0;
    _yaw = 0.0;
    _pitch = 0.0;
    enable();
};

char* Mirror::str(){
    static char _str[100];
    sprintf(_str, "sy=%d sp=%d dsy=%d dsp=%d y=%.3f p=%.3f",
                _steps_yaw, _steps_pitch,
                _desired_steps_yaw, _desired_steps_pitch,
                _yaw, _pitch);
    return _str;
}


int nextMirrorUpdate = 0;

void Mirror::update() {

    int now = millis();
    if (now < nextMirrorUpdate) {
        return;
    }
    nextMirrorUpdate = now + 500;


    if (_steps_yaw<_desired_steps_yaw) {
        _steps_yaw++;
        _motors.steps(MOTOR_YAW, -1);
    } else if (_steps_yaw>_desired_steps_yaw) {
        _steps_yaw--;
        _motors.steps(MOTOR_YAW, 1);
    }

     if (_steps_pitch<_desired_steps_pitch) {
        _steps_pitch++;
        _motors.steps(MOTOR_PITCH, -1);
    } else if (_steps_pitch>_desired_steps_pitch) {
        _steps_pitch--;
        _motors.steps(MOTOR_PITCH, +1);
    }
}

void Mirror::setPitch(double pitch){
    _pitch = pitch;
    _desired_steps_pitch = round(_pitch / STEP_DEGS_PITCH);
};

void Mirror::setYaw(double yaw){
    _yaw = yaw;
    _desired_steps_yaw = round(_yaw / STEP_DEGS_YAW);
};

void Mirror::enable(){
    _motors.enable();

};

void Mirror::disable(){
    _motors.disable();
 };