#include <Ticker.h>
#include <OHAUTlib.h>
#include <spa.h>
#include <Helio.h>
#include <TimeLib.h>
#include <WiFiUdp.h>
#include "version.h"
#include "Mirror.h"
#include "MirrorCalc.h"
#include "WifiPass.h"

#define DEVICE_TYPE "SUNTRACK"

OHAUTservice ohaut;
StepMotors motors;

#define CALC_INTERVAL

int nextCalcMillis = 0;


int led_pin = 13;

void setup(void){

    /* start the serial port and switch on the PCB led */
    Serial.begin(115200);

    ohaut.set_led_pin(led_pin);

    motors.setup();

    ohaut.on_config_defaults = [](ConfigMap *config) {
        config->set("mode", "lamp");
        config->set("wifi_sta_ap", WIFI_AP);
        config->set("wifi_sta_pass", WIFI_PASS);
        config->set("wifi_ap_pass", "nonetnonet1234");
    };

    ohaut.on_config_loaded = [](ConfigMap *configData) {
    };

    ohaut.on_http_server_ready = &setupHTTPApi;

    ohaut.on_mqtt_ready = &setupMQTTHandling;

    ohaut.on_ota_start = [](){
    };

    ohaut.on_ota_error = [](ota_error_t error) {
    };

    ohaut.on_ota_end =  [](){
        for (int i=0;i<30;i++){
            analogWrite(led_pin,(i*100) % 1001);
            delay(50);
        }
    };

    ohaut.setup(DEVICE_TYPE, VERSION, "suntracker");
    motors.enable();
}



void loop(void){
    ohaut.handle();
    if (ohaut.is_wifi_connected()) {
        sendMQTTStartupValuesOnce();
        setupNTPOnce();
    }

}


spa_data *getCalculatedSPA() {
    int result; 
    static spa_data spa;
    float min, sec;

    memset(&spa, 0, sizeof(spa_data));

    spa.year          = year();
    spa.month         = month();
    spa.day           = day();
    spa.hour          = hour()-10;
    spa.minute        = minute()-35;
    spa.second        = second();
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

    result = spa_calculate(&spa);
    return &spa;
}
