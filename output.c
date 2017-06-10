
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
long a_0;
long b_1;
long c_2;
long d_3;
long __tmp0_4;
long e_5;
long f_6;
long __tmp2_7;
long g_8;
long __tmp1_9;
long __tmp3_10;
long __tmp5_11;
long __tmp4_12;
//Function Body
a_0 = (10000);
b_1 = (0);
c_2 = (2800);
d_3 = (0);
e_5 = (0);
__tmp1_9 = (2801);
__tmp0_4 = __lib_malloc((((__tmp1_9) * (8)) + (8)));
*((long*)(__tmp0_4)) = (__tmp1_9);
__tmp0_4 = ((__tmp0_4) + (8));
f_6 = (__tmp0_4);
g_8 = (0);
AsmLabel3:;
if((((b_1) - (c_2)) != (0))) goto AsmLabel4; else goto AsmLabel6;;
AsmLabel4:;
__tmp3_10 = (b_1);
b_1 = ((__tmp3_10) + (1));
*((long*)((f_6) + ((__tmp3_10) * (8)))) = ((a_0) / (5));
AsmLabel5:;
goto AsmLabel3;
AsmLabel6:;
AsmLabel7:;
if((1)) goto AsmLabel8; else goto AsmLabel10;;
AsmLabel8:;
d_3 = (0);
g_8 = ((c_2) * (2));
if(((g_8) == (0))) goto AsmLabel11; else goto AsmLabel13;;
AsmLabel11:;
goto AsmLabel10;
AsmLabel13:;
b_1 = (c_2);
AsmLabel14:;
if((1)) goto AsmLabel15; else goto AsmLabel17;;
AsmLabel15:;
d_3 = ((d_3) + ((*(long *)((f_6) + ((b_1) * (8)))) * (a_0)));
g_8 = ((g_8) - (1));
*((long*)((f_6) + ((b_1) * (8)))) = ((d_3) % (g_8));
__tmp4_12 = (g_8);
g_8 = ((__tmp4_12) - (1));
d_3 = ((d_3) / (__tmp4_12));
b_1 = ((b_1) - (1));
if(((b_1) == (0))) goto AsmLabel18; else goto AsmLabel20;;
AsmLabel18:;
goto AsmLabel17;
AsmLabel20:;
AsmLabel16:;
d_3 = ((d_3) * (b_1));
goto AsmLabel14;
AsmLabel17:;
c_2 = ((c_2) - (14));
__tmp5_11 = toString(((e_5) + ((d_3) / (a_0))));
print((__tmp5_11));
;
AsmLabel9:;
e_5 = ((d_3) % (a_0));
goto AsmLabel7;
AsmLabel10:;
print((toMoStr("\n")));
;
return (0);
}

//------------- IRBase Traverse End -------------

