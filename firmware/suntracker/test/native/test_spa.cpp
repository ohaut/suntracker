#include <unity.h>
#include <spa.h>
#include <stdio.h>
#include <string.h>


#define pr 0.0001

void test_spa_works() {
    int result; 
    spa_data spa;
    float min, sec;

    memset(&spa, 0, sizeof(spa_data));

    spa.year          = 2020;
    spa.month         = 4;
    spa.day           = 3;
    spa.hour          = 2;
    spa.minute        = 50;
    spa.second        = 30;
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

    TEST_ASSERT_EQUAL(0, result);

    if (result == 0)  //check for SPA errors
    {
        //display the results inside the SPA structure


        printf("Zenith:        %.6f degrees\n",spa.zenith);
        printf("Azimuth:       %.6f degrees\n",spa.azimuth);

        int min = 60.0*(spa.sunrise - (int)(spa.sunrise));
        int sec = 60.0*(min - (int)min);
        printf("Sunrise:       %02d:%02d:%02d Local Time\n", (int)(spa.sunrise), (int)min, (int)sec);

        min = 60.0*(spa.sunset - (int)(spa.sunset));
        sec = 60.0*(min - (int)min);
        printf("Sunset:        %02d:%02d:%02d Local Time\n", (int)(spa.sunset), (int)min, (int)sec);

    } else printf("SPA Error Code: %d\n", result);

}

void test_spa() {

    RUN_TEST(test_spa_works);

}

