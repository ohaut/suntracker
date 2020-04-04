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
Mirror mirror;
MirrorCalc mirrorCalc;


int led_pin = 13;

void setup(void){

    /* start the serial port and switch on the PCB led */
    Serial.begin(115200);

    ohaut.set_led_pin(led_pin);

    mirror.setup();

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
    mirror.zero();  
    mirrorCalc.setOutputRay(-180.0, 10.0);
    mirrorCalc.setPlatformOrientation(180.0);
}

extern bool timeSynchronizedViaNTP;

void loop(void){
    ohaut.handle();
    if (ohaut.is_wifi_connected()) {
        sendMQTTStartupValuesOnce();
        setupNTPOnce();
    }

    if (timeSynchronizedViaNTP) {
        mirrorCalc.update();
        mirror.setPitch(mirrorCalc.getPitch());
        mirror.setYaw(mirrorCalc.getYaw());
        mirror.update();
    }

}
