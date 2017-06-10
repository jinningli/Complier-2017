
//------------- IRBase Translate -------------

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

//Function & Class Declare

void origin(long N);
long check(long a);
void addList(long x, long y);
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
long N;
long head;
long startx;
long starty;
long targetx;
long targety;
long x;
long y;
long xlist;
long ylist;
long tail;
long ok;
long now;
long dx;
long dy;
long step;
long i;
long j;

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
void origin(long N){
//Define Local Variable
long N_0 = N;
long __tmp14_1;
long __tmp12_2;
long __tmp13_3;
long __tmp15_4;
long __tmp16_5;
long __tmp17_6;
//Function Body
head = (0);
tail = (0);
__tmp13_3 = (N_0);
__tmp12_2 = __lib_malloc((((__tmp13_3) * (8)) + (8)));
*((long*)(__tmp12_2)) = (__tmp13_3);
__tmp12_2 = ((__tmp12_2) + (8));
step = (__tmp12_2);
i = (0);
AsmLabel15:;
if(((i) < (N_0))) goto AsmLabel16; else goto AsmLabel18;;
AsmLabel16:;
__tmp16_5 = (N_0);
__tmp15_4 = __lib_malloc((((__tmp16_5) * (8)) + (8)));
*((long*)(__tmp15_4)) = (__tmp16_5);
__tmp15_4 = ((__tmp15_4) + (8));
*((long*)((step) + ((i) * (8)))) = (__tmp15_4);
j = (0);
AsmLabel22:;
if(((j) < (N_0))) goto AsmLabel23; else goto AsmLabel25;;
AsmLabel23:;
*((long*)((*(long *)((step) + ((i) * (8)))) + ((j) * (8)))) = (0);
AsmLabel24:;
j = ((j) + (1));
goto AsmLabel22;
AsmLabel25:;
AsmLabel17:;
i = ((i) + (1));
goto AsmLabel15;
AsmLabel18:;
}
long check(long a){
//Define Local Variable
long a_7 = a;
long __tmp18_8;
//Function Body
__tmp18_8 = ((a_7) < (N));
if((__tmp18_8)) goto AsmLabel26; else goto AsmLabel27;;
AsmLabel26:;
__tmp18_8 = ((a_7) >= (0));
AsmLabel27:;
return (__tmp18_8);
}
void addList(long x, long y){
//Define Local Variable
long x_9 = x;
long y_10 = y;
long __tmp21_11;
long __tmp22_12;
long __tmp20_13;
long __tmp19_14;
long __tmp23_15;
//Function Body
__tmp21_11 = check((x_9));
__tmp20_13 = (__tmp21_11);
if((__tmp20_13)) goto AsmLabel33; else goto AsmLabel34;;
AsmLabel33:;
__tmp22_12 = check((y_10));
__tmp20_13 = (__tmp22_12);
AsmLabel34:;
__tmp19_14 = (__tmp20_13);
if((__tmp19_14)) goto AsmLabel31; else goto AsmLabel32;;
AsmLabel31:;
__tmp19_14 = ((*(long *)((*(long *)((step) + ((x_9) * (8)))) + ((y_10) * (8)))) == -(1));
AsmLabel32:;
if((__tmp19_14)) goto AsmLabel28; else goto AsmLabel30;;
AsmLabel28:;
tail = ((tail) + (1));
*((long*)((xlist) + ((tail) * (8)))) = (x_9);
*((long*)((ylist) + ((tail) * (8)))) = (y_10);
*((long*)((*(long *)((step) + ((x_9) * (8)))) + ((y_10) * (8)))) = ((now) + (1));
__tmp23_15 = ((x_9) == (targetx));
if((__tmp23_15)) goto AsmLabel38; else goto AsmLabel39;;
AsmLabel38:;
__tmp23_15 = ((y_10) == (targety));
AsmLabel39:;
if((__tmp23_15)) goto AsmLabel35; else goto AsmLabel37;;
AsmLabel35:;
ok = (1);
AsmLabel37:;
AsmLabel30:;
}
int main(){
//Grobal Variable Initialize
long __tmp4;
long __tmp3;
long __tmp6;
long __tmp5;
long __tmp0;
long __tmp2;
long __tmp1;
long __tmp8;
long __tmp7;
long __tmp9;
long __tmp10;
long __tmp11;
__tmp1 = (12000);
__tmp0 = __lib_malloc((((__tmp1) * (8)) + (8)));
*((long*)(__tmp0)) = (__tmp1);
__tmp0 = ((__tmp0) + (8));
(__tmp0);
;
__tmp4 = (12000);
__tmp3 = __lib_malloc((((__tmp4) * (8)) + (8)));
*((long*)(__tmp3)) = (__tmp4);
__tmp3 = ((__tmp3) + (8));
(__tmp3);
;
__tmp7 = (8);
__tmp6 = __lib_malloc((((__tmp7) * (8)) + (8)));
*((long*)(__tmp6)) = (__tmp7);
__tmp6 = ((__tmp6) + (8));
(__tmp6);
;
__tmp10 = (9);
__tmp9 = __lib_malloc((((__tmp10) * (8)) + (8)));
*((long*)(__tmp9)) = (__tmp10);
__tmp9 = ((__tmp9) + (8));
(__tmp9);
;
xlist = (__tmp0);
ylist = (__tmp3);
dx = (__tmp6);
dy = (__tmp9);
//Define Local Variable
long __tmp25_16;
long __tmp24_17;
//Function Body
origin((106));
;
__tmp24_17 = getInt();
N = (__tmp24_17);
targety = ((N) - (1));
targetx = (targety);
i = (0);
AsmLabel40:;
if(((i) < (N))) goto AsmLabel41; else goto AsmLabel43;;
AsmLabel41:;
j = (0);
AsmLabel44:;
if(((j) < (N))) goto AsmLabel45; else goto AsmLabel47;;
AsmLabel45:;
*((long*)((*(long *)((step) + ((i) * (8)))) + ((j) * (8)))) = -(1);
AsmLabel46:;
j = ((j) + (1));
goto AsmLabel44;
AsmLabel47:;
AsmLabel42:;
i = ((i) + (1));
goto AsmLabel40;
AsmLabel43:;
*((long*)((dx) + (0))) = -(2);
*((long*)((dy) + (0))) = -(1);
*((long*)((dx) + (8))) = -(2);
*((long*)((dy) + (8))) = (1);
*((long*)((dx) + (16))) = (2);
*((long*)((dy) + (16))) = -(1);
*((long*)((dx) + (24))) = (2);
*((long*)((dy) + (24))) = (1);
*((long*)((dx) + (32))) = -(1);
*((long*)((dy) + (32))) = -(2);
*((long*)((dx) + (40))) = -(1);
*((long*)((dy) + (40))) = (2);
*((long*)((dx) + (48))) = (1);
*((long*)((dy) + (48))) = -(2);
*((long*)((dx) + (56))) = (1);
*((long*)((dy) + (56))) = (2);
AsmLabel48:;
if(((head) <= (tail))) goto AsmLabel49; else goto AsmLabel50;;
AsmLabel49:;
x = (*(long *)((xlist) + ((head) * (8))));
y = (*(long *)((ylist) + ((head) * (8))));
now = (*(long *)((*(long *)((step) + ((x) * (8)))) + ((y) * (8))));
j = (0);
AsmLabel51:;
if(((j) < (8))) goto AsmLabel52; else goto AsmLabel54;;
AsmLabel52:;
addList(((x) + (*(long *)((dx) + ((j) * (8))))), ((y) + (*(long *)((dy) + ((j) * (8))))));
;
AsmLabel53:;
j = ((j) + (1));
goto AsmLabel51;
AsmLabel54:;
if(((ok) == (1))) goto AsmLabel55; else goto AsmLabel57;;
AsmLabel55:;
goto AsmLabel50;
AsmLabel57:;
head = ((head) + (1));
goto AsmLabel48;
AsmLabel50:;
if(((ok) == (1))) goto AsmLabel58; else goto AsmLabel59;;
AsmLabel58:;
__tmp25_16 = toString((*(long *)((*(long *)((step) + ((targetx) * (8)))) + ((targety) * (8)))));
println((__tmp25_16));
;
goto AsmLabel60;
AsmLabel59:;
print((toMoStr("no solution!\n")));
;
AsmLabel60:;
return (0);
}

//------------- IRBase Traverse End -------------

