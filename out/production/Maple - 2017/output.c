
//------------- IRBase Translate -------------

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

//Function & Class Declare

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
int main(){
//Grobal Variable Initialize
//Define Local Variable
long a_0;
long __tmp0_1;
long __tmp2_2;
long __tmp1_3;
//Function Body
__tmp1_3 = (1);
__tmp0_1 = __lib_malloc((((__tmp1_3) * (8)) + (4)));
*((long*)(__tmp0_1)) = (__tmp1_3);
__tmp0_1 = ((__tmp0_1) + (4));
a_0 = (*(long *)((__tmp0_1) + (8)));
return (0);
}

//------------- IRBase Traverse End -------------

