#include <stdio.h>
#include <stdint.h>

void ukol1();
void ukol2();
void ukol3();


int data_x = 0b10101010;
int count = 0;

int result = 1;
int prev = 0;
int next = 1;
int member = 10;

char text[] = "rXtXzXc";
char from = 'X';
char replace_to = 'e';


int main() {
    ukol1();
    printf("count = %d\n", count);
    ukol2();
    printf("result = %d\n", result);
    ukol3();
    printf("%s\n", text);

    return 0;
}