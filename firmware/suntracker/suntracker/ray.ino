#include <Ticker.h>
#include <OHAUTlib.h>
#include "LEDDimmers.h"
#include "version.h"
#include "StepMotors.h"

#define DEVICE_TYPE "3CHANLED"

OHAUTservice ohaut;
LEDDimmers dimmers;
StepMotors motors;

int led_pin = 13;

void setup(void){

    /* start the serial port and switch on the PCB led */
    Serial.begin(115200);

    ohaut.set_led_pin(led_pin);

    motors.setup();

    ohaut.on_config_defaults = [](ConfigMap *config) {
        config->set("mode", "lamp");
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

    ohaut.setup(DEVICE_TYPE, VERSION, "sun");
    motors.enable();
}


void loop(void){
    ohaut.handle();
    if (ohaut.is_wifi_connected())
        sendMQTTStartupValuesOnce();

}

float getDimmerStartupVal(ConfigMap *configData, int dimmer) {
    char key[16];
    const char *val;
    sprintf(key, "startup_val_l%d", dimmer);
    val = (*configData)[key];

    if (val && strlen(val)) return atoi(val)/100.0;
    else                    return 1.0;
}
