
//------------- IRBase Translate -------------

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

//Function & Class Declare

long qsrt(long l, long r);
long toMoStr(char *str);
long str_add(long a, long b);
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
long a;
long n;

//Inside Function
long toMoStr(char *str) {
    int len = strlen(str);
    unsigned char* ret = (unsigned char *) malloc(len + sizeof(int) + 1);

    *((int *)ret) = len;
    ret += sizeof(int);

    strcpy((char *)ret, str);
    return (long)ret;
}
long str_add(long a, long b) {
    int l1 = *((int *)(a - sizeof(int)));
    int l2 = *((int *)(b - sizeof(int)));

    int l = l1 + l2;

    unsigned char* ret = (unsigned char*) malloc(l + sizeof(int) + 1);
    *((int *)ret) = l;
    ret += sizeof(int);


    for (int i =0; i < l1; i++)
        ((char*)ret)[i] = ((char *)a)[i];

    for (int i = 0; i < l2; i++)
        ((char*)ret)[i+l1] = ((char *)b)[i];

    ((char*)ret)[l] = 0;

    return (long)ret;
}
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
}void print(long x){
    printf("%s", (char*)x);
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
long qsrt(long l, long r){
//Define Local Variable
long r_0 = l;
long x_1 = r;
long i_2;
long j_3;
long l_4;
long temp_5;
//Function Body
i_2 = (l_4);
j_3 = (r_0);
x_1 = (*(long *)((a) + ((((l_4) + (r_0)) / (2)) * (8))));
AsmLabel3:;
if(((i_2) <= (j_3))) goto AsmLabel4; else goto AsmLabel5;;
AsmLabel4:;
AsmLabel6:;
if(((*(long *)((a) + ((i_2) * (8)))) < (x_1))) goto AsmLabel7; else goto AsmLabel8;;
AsmLabel7:;
i_2 = ((i_2) + (1));
goto AsmLabel6;
AsmLabel8:;
AsmLabel9:;
if(((*(long *)((a) + ((j_3) * (8)))) > (x_1))) goto AsmLabel10; else goto AsmLabel11;;
AsmLabel10:;
j_3 = ((j_3) - (1));
goto AsmLabel9;
AsmLabel11:;
if(((i_2) <= (j_3))) goto AsmLabel12; else goto AsmLabel14;;
AsmLabel12:;
temp_5 = (*(long *)((a) + ((i_2) * (8))));
*((long*)((a) + ((i_2) * (8)))) = (*(long *)((a) + ((j_3) * (8))));
*((long*)((a) + ((j_3) * (8)))) = (temp_5);
i_2 = ((i_2) + (1));
j_3 = ((j_3) - (1));
AsmLabel14:;
goto AsmLabel3;
AsmLabel5:;
if(((l_4) < (j_3))) goto AsmLabel15; else goto AsmLabel17;;
AsmLabel15:;
qsrt((j_3), (l_4));
;
AsmLabel17:;
if(((i_2) < (r_0))) goto AsmLabel18; else goto AsmLabel20;;
AsmLabel18:;
qsrt((r_0), (i_2));
;
AsmLabel20:;
return (0);
}
int main(){
//Grobal Variable Initialize
a = (__tmp0);
n = (10000);
//Define Local Variable
long i_6;
long __tmp3_7;
//Function Body
i_6 = (1);
AsmLabel21:;
if(((i_6) <= (n))) goto AsmLabel22; else goto AsmLabel24;;
AsmLabel22:;
*((long*)((a) + ((i_6) * (8)))) = (((n) + (1)) - (i_6));
AsmLabel23:;
i_6 = ((i_6) + (1));
goto AsmLabel21;
AsmLabel24:;
qsrt((n), (1));
;
i_6 = (1);
AsmLabel25:;
if(((i_6) <= (n))) goto AsmLabel26; else goto AsmLabel28;;
AsmLabel26:;
__tmp3_7 = toString((*(long *)((a) + ((i_6) * (8)))));
print((__tmp3_7));
;
print((toMoStr(" ")));
;
AsmLabel27:;
i_6 = ((i_6) + (1));
goto AsmLabel25;
AsmLabel28:;
print((toMoStr("\n")));
;
return (0);
}

//------------- IRBase Traverse End -------------

