#include <ESP8266WebServer.h>
#include "ray_global_defs.h"

ESP8266WebServer *web_server;

extern StepMotors motors;

void handleStepMotor() {

    int m, d, s;
    char* str_m = strdup(web_server->arg("m").c_str());
    char* str_s = strdup(web_server->arg("s").c_str());

    m = atoi(str_m);
    s = strlen(str_s)?atoi(str_s):1;

    if (m<0 || m>1) {
      web_server->send(422, "application/json", "{\"result\": \"2\", \"message:\": "
                                            "\"m out of range (0..1)\"}");
      goto _exit;
    }

    if (s<-500 || s>500) {
        web_server->send(422,  "application/json", "{\"result\": \"4\", \"message:\": "
                                            "\"s out of range (1..500)\"}");
        goto _exit;
    }
    d = s>0 ? 1:0;
    s = s>0 ? s:-s;

    motors.steps(m,d,s);

   
    web_server->send(200, "application/json", "{\"result\": \"0\", \"message:\": "
                                          "\"stepped correctly\"}");
 _exit:
    free (str_m);
    free (str_s);
}


void setupHTTPApi(ESP8266WebServer *server) {
  web_server = server;
  server->on("/step", HTTP_GET,  handleStepMotor);

}
