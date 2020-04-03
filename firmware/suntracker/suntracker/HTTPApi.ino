#include <ESP8266WebServer.h>
#include <spa.h>
#include "ray_global_defs.h"
#include <Helio.h>

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


void handleGetSun() {
  char resp[500];
  char date[50];
  heliostatInput hIn;
  heliostatOutput hOut;

  hIn.rayAzimuth = -180.0;
  hIn.rayZenith = 45;

  spa_data *spa = getCalculatedSPA();
  spa->azimuth-=180.0;
  spa->zenith = 90-spa->zenith;
  hIn.sunAzimuth = spa->azimuth;
  hIn.sunZenith = spa->zenith;


  helioCalculateMirror(&hIn, &hOut);

  hOut.mirrorYaw = 180 - hOut.mirrorYaw;

  sprintf(date, "%d/%d/%d %02d:%02d:%02d", spa->day, spa->month, spa->year, spa->hour, spa->minute, spa->second);
  sprintf(resp, "{\t\"azimuth\":\t%.6f,\n"
                 "\t\"zenith\":\t%.6f,\n"
                 "\t\"date\":\t\"%s\",\n"
                 "\t\"mirrorPitch\": %.6f,\n"
                 "\t\"mirrorYaw\": %.6f\n"
                 "}\n", spa->azimuth, spa->zenith, date, hOut.mirrorPitch, hOut.mirrorYaw);
  web_server->send(200, "application/json", resp);

}

void setupHTTPApi(ESP8266WebServer *server) {
  web_server = server;
  server->on("/step", HTTP_GET,  handleStepMotor);
  server->on("/sun", HTTP_GET,  handleGetSun);
}


