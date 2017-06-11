
//------------- IRBase Translate -------------

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

//Function & Class Declare

long substring(long str, long l, long r);
long ord(long pos, long str);
long parseInt(long x);
long strlength(long idx);
long size(long x);
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
long substring(long str, long l, long r){
    int ns = r - l + 1;
    unsigned char *ret = (unsigned char*)malloc(ns + sizeof(int) + 1);
    *((int*)ret) = ns;
    ret += sizeof(int);
    int idx = 0;
    for(int i = l; i <= r; i ++){
        ((char*)ret)[idx++] = ((char*)str)[i];
    }
    ((char*)ret)[idx] = '\0';
    return (long)ret;
}
long ord(long str, long pos){
    char* ret = (char*)str + pos;
    return (long)*ret;
}
long parseInt(long x){
    int s = (int) strlength(x);
    char* ret = (char*)x;
    int res = 0;
    for(int i = 0; i < s; i ++){
        if(ret[i]>='0' && ret[i] <= '9'){
            res = res * 10 + ret[i] - '0';
        }else{
            break;
        }
    };
    return res;
}
long strlength(long idx){
    int res = *((int *)(idx - sizeof(int)));
    return (long)res;
}
long getInt(){
    int tmp = 0;
    scanf("%d", &tmp);
    return (long)tmp;
}
long getString(){
    int size = 0;
    unsigned char* tmp = (unsigned char*)malloc(2000 + sizeof(int));
    unsigned char* bak = tmp;
    tmp += sizeof(int);
    tmp[size] = (unsigned char)getchar();
    if(tmp[size] == '\n')
        tmp[size] = (unsigned char)getchar();
    while(tmp[size] !=  '\n'){
        tmp[++size] = (unsigned char)getchar();
    }
    tmp[size] = '\0';
    *((int*) bak) = size;
    return (long)(bak + sizeof(int));
}
long size(long x){
    long s = *((long*)(x - sizeof(long)));
    return s;
}
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
long quotient_0;
long a_1;
long __tmp6_2;
long __tmp0_3;
long __tmp2_4;
long __tmp1_5;
long i_6;
long j_7;
long sum_8;
long remainder_9;
long __tmp4_10;
long __tmp3_11;
long __tmp5_12;
//Function Body
__tmp1_5 = (100);
__tmp0_3 = __lib_malloc((((__tmp1_5) * (8)) + (8)));
*((long*)(__tmp0_3)) = (__tmp1_5);
__tmp0_3 = ((__tmp0_3) + (8));
a_1 = (__tmp0_3);
i_6 = (0);
AsmLabel3:;
if(((i_6) < (100))) goto AsmLabel4; else goto AsmLabel6;;
AsmLabel4:;
__tmp4_10 = (100);
__tmp3_11 = __lib_malloc((((__tmp4_10) * (8)) + (8)));
*((long*)(__tmp3_11)) = (__tmp4_10);
__tmp3_11 = ((__tmp3_11) + (8));
*((long*)((a_1) + ((i_6) * (8)))) = (__tmp3_11);
AsmLabel5:;
i_6 = ((i_6) + (1));
goto AsmLabel3;
AsmLabel6:;
sum_8 = (0);
i_6 = (0);
AsmLabel10:;
if(((i_6) < (100))) goto AsmLabel11; else goto AsmLabel13;;
AsmLabel11:;
j_7 = (0);
AsmLabel14:;
if(((j_7) < (100))) goto AsmLabel15; else goto AsmLabel17;;
AsmLabel15:;
*((long*)((*(long *)((a_1) + ((i_6) * (8)))) + ((j_7) * (8)))) = (0);
AsmLabel16:;
j_7 = ((j_7) + (1));
goto AsmLabel14;
AsmLabel17:;
AsmLabel12:;
i_6 = ((i_6) + (1));
goto AsmLabel10;
AsmLabel13:;
i_6 = (0);
AsmLabel18:;
if(((i_6) < (100))) goto AsmLabel19; else goto AsmLabel21;;
AsmLabel19:;
if(((i_6) > (20))) goto AsmLabel25; else goto AsmLabel24;;
AsmLabel25:;
if(((i_6) < (80))) goto AsmLabel22; else goto AsmLabel24;;
AsmLabel22:;
j_7 = (0);
AsmLabel28:;
if(((j_7) < (100))) goto AsmLabel29; else goto AsmLabel31;;
AsmLabel29:;
if(((j_7) > (5))) goto AsmLabel32; else goto AsmLabel35;;
AsmLabel35:;
if(((i_6) < (90))) goto AsmLabel32; else goto AsmLabel34;;
AsmLabel32:;
quotient_0 = (((j_7) * (4)) / (100));
remainder_9 = (((j_7) * (4)) % (100));
*((long*)((*(long *)((a_1) + (((i_6) + (quotient_0)) * (8)))) + ((remainder_9) * (8)))) = ((j_7) + ((((((100) - (1)) + (1)) - (1)) + (1)) / (2)));
AsmLabel34:;
AsmLabel30:;
j_7 = ((j_7) + (1));
goto AsmLabel28;
AsmLabel31:;
AsmLabel24:;
AsmLabel20:;
i_6 = ((i_6) + (1));
goto AsmLabel18;
AsmLabel21:;
i_6 = (0);
AsmLabel38:;
if(((i_6) < (100))) goto AsmLabel39; else goto AsmLabel41;;
AsmLabel39:;
j_7 = (0);
AsmLabel42:;
if(((j_7) < (100))) goto AsmLabel43; else goto AsmLabel45;;
AsmLabel43:;
sum_8 = ((sum_8) + (*(long *)((*(long *)((a_1) + ((i_6) * (8)))) + ((j_7) * (8)))));
AsmLabel44:;
j_7 = ((j_7) + (1));
goto AsmLabel42;
AsmLabel45:;
AsmLabel40:;
i_6 = ((i_6) + (1));
goto AsmLabel38;
AsmLabel41:;
__tmp6_2 = toString((sum_8));
println((__tmp6_2));
;
return (0);
}

//------------- IRBase Traverse End -------------

