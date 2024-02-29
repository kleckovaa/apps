#include <stdio.h>
#include <stdint.h>

void ukol1();
int pole[4] = {1,2,1,2};
int kontrolni_soucet;

void ukol2();
int pole2[4] = {1,-1,2,-2};
int pole_otoceno[4];

void ukol3();
char retezec[] = "Ahoj z domu";
char pismeno[] = "o";
int vyskyt = 0;
int pozice = -1;


int main() {
    ukol1();
    printf("%d\n", kontrolni_soucet);
    ukol2();
    printf("%d\n", pole_otoceno[3]);
    ukol3();
    printf("vyskyt = %d\n pozice = %d\n", vyskyt, pozice);
    return 0;
}