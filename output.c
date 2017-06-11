
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
long N_;
long head_;
long startx_;
long starty_;
long targetx_;
long targety_;
long x_;
long y_;
long xlist_;
long ylist_;
long tail_;
long ok_;
long now_;
long dx_;
long dy_;
long step_;
long i_;
long j_;

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
long N_0_ = N;
long __tmp14_1_;
long __tmp12_2_;
long __tmp13_3_;
long __tmp15_4_;
long __tmp16_5_;
long __tmp17_6_;
//Function Body
head_ = (0);
tail_ = (0);
__tmp13_3_ = (N_0_);
__tmp12_2_ = __lib_malloc((((__tmp13_3_) * (8)) + (8)));
*((long*)(__tmp12_2_)) = (__tmp13_3_);
__tmp12_2_ = ((__tmp12_2_) + (8));
step_ = (__tmp12_2_);
i_ = (0);
AsmLabel15:;
if(((i_) < (N_0_))) goto AsmLabel16; else goto AsmLabel18;;
AsmLabel16:;
__tmp16_5_ = (N_0_);
__tmp15_4_ = __lib_malloc((((__tmp16_5_) * (8)) + (8)));
*((long*)(__tmp15_4_)) = (__tmp16_5_);
__tmp15_4_ = ((__tmp15_4_) + (8));
*((long*)((step_) + ((i_) * (8)))) = (__tmp15_4_);
j_ = (0);
AsmLabel22:;
if(((j_) < (N_0_))) goto AsmLabel23; else goto AsmLabel25;;
AsmLabel23:;
*((long*)((*(long *)((step_) + ((i_) * (8)))) + ((j_) * (8)))) = (0);
AsmLabel24:;
j_ = ((j_) + (1));
goto AsmLabel22;
AsmLabel25:;
AsmLabel17:;
i_ = ((i_) + (1));
goto AsmLabel15;
AsmLabel18:;
}
long check(long a){
//Define Local Variable
long a_7_ = a;
long __tmp18_8_;
//Function Body
__tmp18_8_ = ((a_7_) < (N_));
if((__tmp18_8_)) goto AsmLabel26; else goto AsmLabel27;;
AsmLabel26:;
__tmp18_8_ = ((a_7_) >= (0));
AsmLabel27:;
return (__tmp18_8_);
}
void addList(long x, long y){
//Define Local Variable
long x_9_ = x;
long y_10_ = y;
long __tmp20_11_;
long __tmp19_12_;
//Function Body
__tmp19_12_ = check((x_9_));
if((__tmp19_12_)) goto AsmLabel32; else goto AsmLabel30;;
AsmLabel32:;
__tmp20_11_ = check((y_10_));
if((__tmp20_11_)) goto AsmLabel31; else goto AsmLabel30;;
AsmLabel31:;
if(((*(long *)((*(long *)((step_) + ((x_9_) * (8)))) + ((y_10_) * (8)))) == -(1))) goto AsmLabel28; else goto AsmLabel30;;
AsmLabel28:;
tail_ = ((tail_) + (1));
*((long*)((xlist_) + ((tail_) * (8)))) = (x_9_);
*((long*)((ylist_) + ((tail_) * (8)))) = (y_10_);
*((long*)((*(long *)((step_) + ((x_9_) * (8)))) + ((y_10_) * (8)))) = ((now_) + (1));
if(((x_9_) == (targetx_))) goto AsmLabel37; else goto AsmLabel36;;
AsmLabel37:;
if(((y_10_) == (targety_))) goto AsmLabel34; else goto AsmLabel36;;
AsmLabel34:;
ok_ = (1);
AsmLabel36:;
AsmLabel30:;
}
int main(){
//Grobal Variable Initialize
long __tmp4_;
long __tmp3_;
long __tmp6_;
long __tmp5_;
long __tmp0_;
long __tmp2_;
long __tmp1_;
long __tmp8_;
long __tmp7_;
long __tmp9_;
long __tmp10_;
long __tmp11_;
__tmp1_ = (12000);
__tmp0_ = __lib_malloc((((__tmp1_) * (8)) + (8)));
*((long*)(__tmp0_)) = (__tmp1_);
__tmp0_ = ((__tmp0_) + (8));
(__tmp0_);
;
__tmp4_ = (12000);
__tmp3_ = __lib_malloc((((__tmp4_) * (8)) + (8)));
*((long*)(__tmp3_)) = (__tmp4_);
__tmp3_ = ((__tmp3_) + (8));
(__tmp3_);
;
__tmp7_ = (8);
__tmp6_ = __lib_malloc((((__tmp7_) * (8)) + (8)));
*((long*)(__tmp6_)) = (__tmp7_);
__tmp6_ = ((__tmp6_) + (8));
(__tmp6_);
;
__tmp10_ = (9);
__tmp9_ = __lib_malloc((((__tmp10_) * (8)) + (8)));
*((long*)(__tmp9_)) = (__tmp10_);
__tmp9_ = ((__tmp9_) + (8));
(__tmp9_);
;
xlist_ = (__tmp0_);
ylist_ = (__tmp3_);
dx_ = (__tmp6_);
dy_ = (__tmp9_);
//Define Local Variable
long __tmp21_13_;
long __tmp22_14_;
//Function Body
origin((106));
;
__tmp21_13_ = getInt();
N_ = (__tmp21_13_);
targety_ = ((N_) - (1));
targetx_ = (targety_);
i_ = (0);
AsmLabel40:;
if(((i_) < (N_))) goto AsmLabel41; else goto AsmLabel43;;
AsmLabel41:;
j_ = (0);
AsmLabel44:;
if(((j_) < (N_))) goto AsmLabel45; else goto AsmLabel47;;
AsmLabel45:;
*((long*)((*(long *)((step_) + ((i_) * (8)))) + ((j_) * (8)))) = -(1);
AsmLabel46:;
j_ = ((j_) + (1));
goto AsmLabel44;
AsmLabel47:;
AsmLabel42:;
i_ = ((i_) + (1));
goto AsmLabel40;
AsmLabel43:;
*((long*)((dx_) + (0))) = -(2);
*((long*)((dy_) + (0))) = -(1);
*((long*)((dx_) + (8))) = -(2);
*((long*)((dy_) + (8))) = (1);
*((long*)((dx_) + (16))) = (2);
*((long*)((dy_) + (16))) = -(1);
*((long*)((dx_) + (24))) = (2);
*((long*)((dy_) + (24))) = (1);
*((long*)((dx_) + (32))) = -(1);
*((long*)((dy_) + (32))) = -(2);
*((long*)((dx_) + (40))) = -(1);
*((long*)((dy_) + (40))) = (2);
*((long*)((dx_) + (48))) = (1);
*((long*)((dy_) + (48))) = -(2);
*((long*)((dx_) + (56))) = (1);
*((long*)((dy_) + (56))) = (2);
AsmLabel48:;
if(((head_) <= (tail_))) goto AsmLabel49; else goto AsmLabel50;;
AsmLabel49:;
x_ = (*(long *)((xlist_) + ((head_) * (8))));
y_ = (*(long *)((ylist_) + ((head_) * (8))));
now_ = (*(long *)((*(long *)((step_) + ((x_) * (8)))) + ((y_) * (8))));
j_ = (0);
AsmLabel51:;
if(((j_) < (8))) goto AsmLabel52; else goto AsmLabel54;;
AsmLabel52:;
addList(((x_) + (*(long *)((dx_) + ((j_) * (8))))), ((y_) + (*(long *)((dy_) + ((j_) * (8))))));
;
AsmLabel53:;
j_ = ((j_) + (1));
goto AsmLabel51;
AsmLabel54:;
if(((ok_) == (1))) goto AsmLabel55; else goto AsmLabel57;;
AsmLabel55:;
goto AsmLabel50;
AsmLabel57:;
head_ = ((head_) + (1));
goto AsmLabel48;
AsmLabel50:;
if(((ok_) == (1))) goto AsmLabel59; else goto AsmLabel60;;
AsmLabel59:;
__tmp22_14_ = toString((*(long *)((*(long *)((step_) + ((targetx_) * (8)))) + ((targety_) * (8)))));
println((__tmp22_14_));
;
goto AsmLabel61;
AsmLabel60:;
print((toMoStr("no solution!\n")));
;
AsmLabel61:;
return (0);
}

//------------- IRBase Traverse End -------------

