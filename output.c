
//------------- IRBase Translate -------------

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

//Function & Class Declare

long calc(long A);
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
long A_;
long B_;
long C_;
long N_;

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
long calc(long A){
//Define Local Variable
long A_0_ = A;
long __tmp4_1_;
long __tmp3_2_;
long R_3_;
long len_4_;
long __tmp0_5_;
long __tmp2_6_;
long __tmp1_7_;
long mid_8_;
long L_9_;
long r_10_;
long __tmp6_11_;
long __tmp5_12_;
long l_13_;
//Function Body
__tmp0_5_ = strlength((A_0_));
len_4_ = (__tmp0_5_);
if(((1) == (len_4_))) goto AsmLabel0; else goto AsmLabel2;;
AsmLabel0:;
return (A_0_);
AsmLabel2:;
mid_8_ = ((len_4_) / (2));
__tmp1_7_ = substring((A_0_), (0), ((mid_8_) - (1)));
__tmp2_6_ = calc((__tmp1_7_));
L_9_ = (__tmp2_6_);
__tmp3_2_ = substring((A_0_), (mid_8_), ((len_4_) - (1)));
__tmp4_1_ = calc((__tmp3_2_));
R_3_ = (__tmp4_1_);
if(((L_9_) < (R_3_))) goto AsmLabel4; else goto AsmLabel5;;
AsmLabel4:;
return str_add((L_9_), (R_3_));
goto AsmLabel6;
AsmLabel5:;
if(((L_9_) == (R_3_))) goto AsmLabel8; else goto AsmLabel9;;
AsmLabel8:;
__tmp5_12_ = ord((L_9_), (0));
l_13_ = (__tmp5_12_);
__tmp6_11_ = ord((R_3_), (0));
r_10_ = (__tmp6_11_);
if(((l_13_) < (r_10_))) goto AsmLabel12; else goto AsmLabel14;;
AsmLabel12:;
return str_add((L_9_), (R_3_));
AsmLabel14:;
return str_add((R_3_), (L_9_));
goto AsmLabel10;
AsmLabel9:;
if(((L_9_) > (R_3_))) goto AsmLabel16; else goto AsmLabel18;;
AsmLabel16:;
return str_add((R_3_), (L_9_));
AsmLabel18:;
AsmLabel10:;
AsmLabel6:;
println((toMoStr("Never Ever!")));
;
}
int main(){
//Grobal Variable Initialize
//Define Local Variable
long __tmp10_14_;
long __tmp11_15_;
long __tmp12_16_;
long __tmp8_17_;
long __tmp7_18_;
long __tmp9_19_;
//Function Body
__tmp7_18_ = getString();
A_ = (__tmp7_18_);
__tmp8_17_ = getString();
B_ = (__tmp8_17_);
__tmp9_19_ = parseInt((B_));
N_ = (__tmp9_19_);
__tmp10_14_ = strlength((A_));
if(((__tmp10_14_) < (N_))) goto AsmLabel20; else goto AsmLabel22;;
AsmLabel20:;
println((toMoStr("length error!")));
;
return (0);
AsmLabel22:;
__tmp11_15_ = substring((A_), (0), ((N_) - (1)));
__tmp12_16_ = calc((__tmp11_15_));
C_ = (__tmp12_16_);
println((C_));
;
return (0);
}

//------------- IRBase Traverse End -------------

