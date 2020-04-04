#include <MirrorCalc.h>
#include <stdio.h>
int main() {
    MirrorCalc m;
    m.setOutputRay(-180.0, 10.0);
    m.setPlatformOrientation(180.0);
    for (int i=0;i<60*15;i++) {
        m.calcSym(i);
        printf("%s\n", m.str());
    }
}
