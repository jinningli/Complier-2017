
//------------- IRBase Translate -------------

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

//Function & Class Declare

long add(long a, long b);
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
long n;

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
long add(long a, long b){
//Define Local Variable
long a_0 = a;
long b_1 = b;
//Function Body
return ((a_0) + (b_1));
}
int main(){
//Grobal Variable Initialize
n = ((1) + (3));
//Define Local Variable
long a_2;
long s_3;
long __tmp5_4;
long __tmp0_5;
long __tmp2_6;
long __tmp1_7;
long i_8;
long n_9;
long __tmp4_10;
long __tmp3_11;
//Function Body
n_9 = (100);
s_3 = (0);
__tmp1_7 = (n_9);
__tmp0_5 = __lib_malloc((((__tmp1_7) * (8)) + (4)));
*((long*)(__tmp0_5)) = (__tmp1_7);
__tmp0_5 = ((__tmp0_5) + (4));
a_2 = (__tmp0_5);
i_8 = (0);
AsmLabel3:;
if(((i_8) < (n_9))) goto AsmLabel4; else goto AsmLabel6;;
AsmLabel4:;
*((long*)((a_2) + ((i_8) * (8)))) = (i_8);
AsmLabel5:;
i_8 = ((i_8) + (1));
goto AsmLabel3;
AsmLabel6:;
i_8 = (0);
AsmLabel7:;
if(((i_8) < (n_9))) goto AsmLabel8; else goto AsmLabel10;;
AsmLabel8:;
__tmp3_11 = toString((*(long *)((a_2) + ((i_8) * (8)))));
println((__tmp3_11));
;
__tmp4_10 = add((i_8), (s_3));
s_3 = (__tmp4_10);
AsmLabel9:;
i_8 = ((i_8) + (1));
goto AsmLabel7;
AsmLabel10:;
__tmp5_4 = toString((s_3));
println((__tmp5_4));
;
return (0);
}

//------------- IRBase Traverse End -------------

