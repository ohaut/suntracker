#include <unity.h>

void test_helio();
void test_spa();

int main( int argc, char **argv)  {
   UNITY_BEGIN();

   test_helio();
   test_spa();
   UNITY_END();
}