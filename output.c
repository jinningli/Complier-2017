
//------------- IRBase Translate -------------

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

//Function & Class Declare

long getInt();
void print(long null);
void println(long null);
void __lib_printInt(long null);
long __lib_malloc(long null);
long toString(long null);
int main();
long getString();
void __lib_printlnInt(long null);

//Grobal Variable
long maxn;
long link;
long place;

//Inside Function
void __lib_printlnInt(long x) {
    printf("%ld\n", x);
}

void __lib_printInt(long x) {
    printf("%ld", x);
}

long __lib_malloc(long x) {
    return (long) malloc(x);
}

void println(long x) {
    puts((char *)x);
}

long toString(long x) {
    unsigned char *ret = (unsigned char*)malloc(12 + sizeof(int));
    ret += sizeof(int);
    unsigned char *p = ret;

    if (x < 0) {
        *p++ = '-';
        x = -x;
    }

    if (x == 0)
        *p++ = '0';

    unsigned char *begin = p;
    while (x) {
        int next = x / 10;
        *p++ = '0' + x - next * 10;
        x = next;
    }
    *p = 0;
    *(((int *)ret) - 1) = p - ret;

    p--;
    while (begin <= p) {
        char t = *begin;
        *begin = *p;
        *p = t;
        begin++;
        p--;
    }

    return (long)ret;
}

//Class Body
int main(){
//Grobal Variable Initialize
maxn = (50005);
link = (__tmp0);
place = (__tmp3);
//Define Local Variable
long xx_0;
long yy_1;
long __tmp6_2;
long u_3;
long v_4;
long __tmp8_5;
long __tmp7_6;
long __tmp9_7;
//Function Body
u_3 = (0);
v_4 = (0);
__tmp6_2 = getInt();
u_3 = (__tmp6_2);
__tmp7_6 = getInt();
v_4 = (__tmp7_6);
xx_0 = (0);
yy_1 = (0);
__tmp8_5 = (*(long *)((place) + ((u_3) * (8))));
*((long*)((place) + ((u_3) * (8)))) = ((__tmp8_5) + (1));
*((long*)((*(long *)((link) + ((u_3) * (8)))) + ((__tmp8_5) * (8)))) = (v_4);
__tmp9_7 = (*(long *)((place) + ((v_4) * (8))));
*((long*)((place) + ((v_4) * (8)))) = ((__tmp9_7) + (1));
*((long*)((*(long *)((link) + ((v_4) * (8)))) + ((__tmp9_7) * (8)))) = (u_3);
}

//------------- IRBase Traverse End -------------

