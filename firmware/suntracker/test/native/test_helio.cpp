#include <unity.h>
#include <Helio.h>


#define pr 0.0001

void test_normalize_vector() {
    double v[3] = {0.0, 2.0, 0.0};
    normalizeVector(v);
    TEST_ASSERT_DOUBLE_WITHIN(pr, 0.0, v[0]);
    TEST_ASSERT_DOUBLE_WITHIN(pr,  1.0, v[1]);
    TEST_ASSERT_DOUBLE_WITHIN(pr, 0.0, v[2]);
}

void test_normalize_neg_vector() {
    double v[3] = {-0.707106781, -0.707106781,0.0};
    normalizeVector(v);
    TEST_ASSERT_DOUBLE_WITHIN(pr, -0.707106781, v[0]);
    TEST_ASSERT_DOUBLE_WITHIN(pr, -0.707106781, v[1]);
    TEST_ASSERT_DOUBLE_WITHIN(pr, 0.0, v[2]);

}
void test_polar_to_vector_down() {
    double v[3];
    polarToVector(0, 90, -1.0, v);
    TEST_ASSERT_DOUBLE_WITHIN(pr, 0.0, v[0]);
    TEST_ASSERT_DOUBLE_WITHIN(pr,  0.0, v[1]);
    TEST_ASSERT_DOUBLE_WITHIN(pr, -1.0, v[2]);
}

void test_polar_to_vector_45_pitch() {
    double v[3];
    polarToVector(0, 45, 1.0, v);
    TEST_ASSERT_DOUBLE_WITHIN(pr, 0.0, v[0]);
    TEST_ASSERT_DOUBLE_WITHIN(pr, 0.707106781, v[1]);
    TEST_ASSERT_DOUBLE_WITHIN(pr, 0.707106781, v[2]);
}

void test_polar_to_vector_45_yaw() {
    double v[3];
    polarToVector(45, 0, 1.0, v);
    TEST_ASSERT_DOUBLE_WITHIN(pr, 0.707106781, v[0]);
    TEST_ASSERT_DOUBLE_WITHIN(pr, 0.707106781, v[1]);
    TEST_ASSERT_DOUBLE_WITHIN(pr, 0.0, v[2]);
}

void test_normal_to_polar_up() {
    // a mirror laying flat has a normal pointing up Z=1.0
    double v[3] = { 0.0, 0.0, 1.0 };
    double az, zn;
    normalToPolar(v, &az, &zn);
    TEST_ASSERT_DOUBLE_WITHIN(pr, 0, zn);
    // Azimuth can't be determined, actually, doesn't matter, can be any angle
    TEST_ASSERT_DOUBLE_IS_NAN(az);
}

void test_normal_to_polar_y() {
    // a mirror laying flat has a normal pointing north
    double v[3] = { 0.0, 1.0, 0.0 };
    double az, zn;
    normalToPolar(v, &az, &zn);
    TEST_ASSERT_DOUBLE_WITHIN(pr, 90, zn);
    // Azimuth can't be determined, actually, doesn't matter, can be any angle
    TEST_ASSERT_DOUBLE_WITHIN(pr, 0, az);
}


void test_sun_vector_45() {
    double v[3];
    heliostatInput input;
    input.sunAzimuth = 0;
    input.sunZenith = 45;
    
    sunVector(&input, v);

    TEST_ASSERT_DOUBLE_WITHIN(pr, 0.0, v[0]);
    TEST_ASSERT_DOUBLE_WITHIN(pr, 0.707106781, v[1]);
    TEST_ASSERT_DOUBLE_WITHIN(pr, 0.707106781, v[2]);

}

void test_ray_vector_45() {
    double v[3];
    heliostatInput input;
    input.rayAzimuth = -180;
    input.rayZenith = 45;
    
    rayVector(&input, v);

    TEST_ASSERT_DOUBLE_WITHIN(pr, 0.0, v[0]);
    TEST_ASSERT_DOUBLE_WITHIN(pr, -0.707106781, v[1]);
    TEST_ASSERT_DOUBLE_WITHIN(pr, 0.707106781, v[2]);

}


void test_45_deg_sunray_mirror_normal() {

    double u[3] = {0.0, 0.707106781, 0.707106781};
    double w[3] = {0.0, -0.707106781, 0.707106781};
    double mirror_normal[3];

    calculateMirrorNormal(u, w, mirror_normal);

    TEST_ASSERT_DOUBLE_WITHIN(pr, 0.0, mirror_normal[0]);
    TEST_ASSERT_DOUBLE_WITHIN(pr, 0.0, mirror_normal[1]);
    TEST_ASSERT_DOUBLE_WITHIN(pr, 1.0, mirror_normal[2]);

}

void test_45_deg_sunray() {
    heliostatInput input;
    heliostatOutput output;

    input.sunAzimuth = 0;
    input.sunZenith = 45;
    input.rayAzimuth = -180;
    input.rayZenith = 45;

    helioCalculateMirror(&input, &output);

    TEST_ASSERT_DOUBLE_WITHIN(pr, 0, output.mirrorPitch);
    TEST_ASSERT_DOUBLE_IS_NAN(output.mirrorYaw);
}

void test_45_deg_sunray_45deg_ray() {
    heliostatInput input;
    heliostatOutput output;

    input.sunAzimuth = 0;
    input.sunZenith = 0;
    input.rayAzimuth = -45;
    input.rayZenith = 0;

    helioCalculateMirror(&input, &output);

    TEST_ASSERT_DOUBLE_WITHIN(pr, 22.5, output.mirrorYaw);
    TEST_ASSERT_DOUBLE_WITHIN(pr, 90.0, output.mirrorPitch);
}

void test_45_deg_sunray_direct() {
    heliostatInput input;
    heliostatOutput output;

    input.sunAzimuth = 0;
    input.sunZenith = 0;
    input.rayAzimuth = -180;
    input.rayZenith = 0;

    helioCalculateMirror(&input, &output);

    TEST_ASSERT_DOUBLE_WITHIN(pr, 90.0, output.mirrorYaw);
    TEST_ASSERT_DOUBLE_WITHIN(pr, 90.0, output.mirrorPitch);
}

void test_helio() {

    RUN_TEST(test_normalize_vector);
    RUN_TEST(test_normalize_neg_vector);
    RUN_TEST(test_polar_to_vector_down);
    RUN_TEST(test_polar_to_vector_45_pitch);
    RUN_TEST(test_polar_to_vector_45_yaw);
    RUN_TEST(test_normal_to_polar_up);
    RUN_TEST(test_normal_to_polar_y);
    RUN_TEST(test_45_deg_sunray);
    RUN_TEST(test_ray_vector_45);
    RUN_TEST(test_sun_vector_45);
    RUN_TEST(test_45_deg_sunray_mirror_normal);
    RUN_TEST(test_45_deg_sunray_45deg_ray);
    RUN_TEST(test_45_deg_sunray_direct);
}


