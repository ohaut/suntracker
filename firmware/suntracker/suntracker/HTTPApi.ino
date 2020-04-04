#include <ESP8266WebServer.h>
#include <spa.h>
#include "ray_global_defs.h"
#include <Helio.h>
#include "MirrorCalc.h"
#include "Mirror.h"

ESP8266WebServer *web_server;

//extern StepMotors motors;
extern MirrorCalc mirrorCalc;
extern Mirror mirror;

void handleGetRay() {

    int a, z;
    char* str_a = strdup(web_server->arg("a").c_str());
    char* str_z = strdup(web_server->arg("z").c_str());

    a = atoi(str_a);
    z = atoi(str_z);

    if (a<-360 || a>360) {
      web_server->send(422, "application/json", "{\"result\": \"2\", \"message:\": "
                                            "\"a out of range (-360..360)\"}");
      goto _exit;
    }

    if (z<-500 || z>500) {
        web_server->send(422,  "application/json", "{\"result\": \"4\", \"message:\": "
                                            "\"z out of range (-90..90)\"}");
        goto _exit;
    }
   

    mirrorCalc.setOutputRay(a, z);
    web_server->send(200, "application/json", "{\"result\": \"0\", \"message:\": "
                                          "\"set correctly\"}");
 _exit:
    free (str_a);
    free (str_z);
}

void handleGetDebug() {
  char response[500];
  sprintf(response, "%s\n%s\n", mirrorCalc.str(), mirror.str());
  web_server->send(200, "application/json", response);
}

void handleGetDisable() {
  mirror.disable();
  web_server->send(200, "application/json", "OK");
}

void handleGetZero() {
  mirror.zero();
  web_server->send(200, "application/json", "OK");
}

void setupHTTPApi(ESP8266WebServer *server) {
  web_server = server;
  server->on("/ray", HTTP_GET,  handleGetRay);
  server->on("/disable", HTTP_GET,  handleGetDisable);
  server->on("/zero", HTTP_GET,  handleGetZero);
  server->on("/debug", HTTP_GET,  handleGetDebug);
}


