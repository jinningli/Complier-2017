
//------------- IRBase Translate -------------

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

//Function & Class Declare
struct A;

void A__Optimizer(long This);
void A__A(long This);
void restore();
long quicksort(long l, long r);
long calc();
long mergesort(long l, long r);
long heapsort();
long str_le(long str1, long str2);
long str_eql(long str1, long str2);
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
long n_;
long a_;
long bak_;
long a_left_;
long a_right_;
long heap_;
long i1_;
long i2_;
long i3_;
long i4_;
long i5_;
long i6_;
long i7_;
long i8_;
long i9_;
long i10_;
long i11_;
long i12_;
long i13_;
long i14_;

//Inside Function
long str_le(long str1, long str2){
    if(strcmp((char*)str1, (char*)str2) < 0){
        return 1;
    }
    return 0;
}
long str_eql(long str1, long str2){
    int l1 = (int) strlength(str1);
    int l2 = (int) strlength(str2);
    if(l1 != l2) return 0;

    for(int i = 0; i < l1; i ++){
        if(((char*)str1)[i] != ((char*)str2)[i]){
            return 0;
        }
    }
    return 1;
}
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
    scanf("%s", tmp);
    size = strlen((char*)tmp);
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
struct A{
long A_arr_;
};
void A__Optimizer(long This){
//Define Local Variable
long This_0_ = This;
long i11_1_;
long i10_2_;
long i13_3_;
long sum_4_;
long i12_5_;
long i14_6_;
long __tmp21_7_;
long __tmp22_8_;
long __tmp20_9_;
long __tmp25_10_;
long __tmp26_11_;
long __tmp23_12_;
long __tmp24_13_;
long __tmp29_14_;
long __tmp27_15_;
long __tmp28_16_;
long arr_17_;
long i1_18_;
long i2_19_;
long i_20_;
long i3_21_;
long i4_22_;
long i5_23_;
long i6_24_;
long i7_25_;
long i8_26_;
long i9_27_;
long __tmp32_28_;
long __tmp33_29_;
long __tmp30_30_;
long __tmp31_31_;
long __tmp36_32_;
long __tmp15_33_;
long __tmp37_34_;
long __tmp34_35_;
long __tmp35_36_;
long __tmp18_37_;
long __tmp19_38_;
long __tmp16_39_;
long __tmp17_40_;
//Function Body
__tmp16_39_ = (2);
__tmp15_33_ = __lib_malloc((((__tmp16_39_) * (8)) + (8)));
*((long*)(__tmp15_33_)) = (__tmp16_39_);
__tmp15_33_ = ((__tmp15_33_) + (8));
__tmp17_40_ = (0);
goto AsmLabel15;
AsmLabel16:;
__tmp18_37_ = (2);
*((long*)((__tmp15_33_) + ((__tmp17_40_) * (8)))) = __lib_malloc((((__tmp18_37_) * (8)) + (8)));
*((long*)(*(long *)((__tmp15_33_) + ((__tmp17_40_) * (8))))) = (__tmp18_37_);
*((long*)((__tmp15_33_) + ((__tmp17_40_) * (8)))) = ((*(long *)((__tmp15_33_) + ((__tmp17_40_) * (8)))) + (8));
__tmp19_38_ = (0);
goto AsmLabel18;
AsmLabel19:;
__tmp20_9_ = (2);
*((long*)((*(long *)((__tmp15_33_) + ((__tmp17_40_) * (8)))) + ((__tmp19_38_) * (8)))) = __lib_malloc((((__tmp20_9_) * (8)) + (8)));
*((long*)(*(long *)((*(long *)((__tmp15_33_) + ((__tmp17_40_) * (8)))) + ((__tmp19_38_) * (8))))) = (__tmp20_9_);
*((long*)((*(long *)((__tmp15_33_) + ((__tmp17_40_) * (8)))) + ((__tmp19_38_) * (8)))) = ((*(long *)((*(long *)((__tmp15_33_) + ((__tmp17_40_) * (8)))) + ((__tmp19_38_) * (8)))) + (8));
__tmp21_7_ = (0);
goto AsmLabel21;
AsmLabel22:;
__tmp22_8_ = (2);
*((long*)((*(long *)((*(long *)((__tmp15_33_) + ((__tmp17_40_) * (8)))) + ((__tmp19_38_) * (8)))) + ((__tmp21_7_) * (8)))) = __lib_malloc((((__tmp22_8_) * (8)) + (8)));
*((long*)(*(long *)((*(long *)((*(long *)((__tmp15_33_) + ((__tmp17_40_) * (8)))) + ((__tmp19_38_) * (8)))) + ((__tmp21_7_) * (8))))) = (__tmp22_8_);
*((long*)((*(long *)((*(long *)((__tmp15_33_) + ((__tmp17_40_) * (8)))) + ((__tmp19_38_) * (8)))) + ((__tmp21_7_) * (8)))) = ((*(long *)((*(long *)((*(long *)((__tmp15_33_) + ((__tmp17_40_) * (8)))) + ((__tmp19_38_) * (8)))) + ((__tmp21_7_) * (8)))) + (8));
__tmp23_12_ = (0);
goto AsmLabel24;
AsmLabel25:;
__tmp24_13_ = (2);
*((long*)((*(long *)((*(long *)((*(long *)((__tmp15_33_) + ((__tmp17_40_) * (8)))) + ((__tmp19_38_) * (8)))) + ((__tmp21_7_) * (8)))) + ((__tmp23_12_) * (8)))) = __lib_malloc((((__tmp24_13_) * (8)) + (8)));
*((long*)(*(long *)((*(long *)((*(long *)((*(long *)((__tmp15_33_) + ((__tmp17_40_) * (8)))) + ((__tmp19_38_) * (8)))) + ((__tmp21_7_) * (8)))) + ((__tmp23_12_) * (8))))) = (__tmp24_13_);
*((long*)((*(long *)((*(long *)((*(long *)((__tmp15_33_) + ((__tmp17_40_) * (8)))) + ((__tmp19_38_) * (8)))) + ((__tmp21_7_) * (8)))) + ((__tmp23_12_) * (8)))) = ((*(long *)((*(long *)((*(long *)((*(long *)((__tmp15_33_) + ((__tmp17_40_) * (8)))) + ((__tmp19_38_) * (8)))) + ((__tmp21_7_) * (8)))) + ((__tmp23_12_) * (8)))) + (8));
__tmp25_10_ = (0);
goto AsmLabel27;
AsmLabel28:;
__tmp26_11_ = (2);
*((long*)((*(long *)((*(long *)((*(long *)((*(long *)((__tmp15_33_) + ((__tmp17_40_) * (8)))) + ((__tmp19_38_) * (8)))) + ((__tmp21_7_) * (8)))) + ((__tmp23_12_) * (8)))) + ((__tmp25_10_) * (8)))) = __lib_malloc((((__tmp26_11_) * (8)) + (8)));
*((long*)(*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((__tmp15_33_) + ((__tmp17_40_) * (8)))) + ((__tmp19_38_) * (8)))) + ((__tmp21_7_) * (8)))) + ((__tmp23_12_) * (8)))) + ((__tmp25_10_) * (8))))) = (__tmp26_11_);
*((long*)((*(long *)((*(long *)((*(long *)((*(long *)((__tmp15_33_) + ((__tmp17_40_) * (8)))) + ((__tmp19_38_) * (8)))) + ((__tmp21_7_) * (8)))) + ((__tmp23_12_) * (8)))) + ((__tmp25_10_) * (8)))) = ((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((__tmp15_33_) + ((__tmp17_40_) * (8)))) + ((__tmp19_38_) * (8)))) + ((__tmp21_7_) * (8)))) + ((__tmp23_12_) * (8)))) + ((__tmp25_10_) * (8)))) + (8));
__tmp27_15_ = (0);
goto AsmLabel30;
AsmLabel31:;
__tmp28_16_ = (2);
*((long*)((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((__tmp15_33_) + ((__tmp17_40_) * (8)))) + ((__tmp19_38_) * (8)))) + ((__tmp21_7_) * (8)))) + ((__tmp23_12_) * (8)))) + ((__tmp25_10_) * (8)))) + ((__tmp27_15_) * (8)))) = __lib_malloc((((__tmp28_16_) * (8)) + (8)));
*((long*)(*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((__tmp15_33_) + ((__tmp17_40_) * (8)))) + ((__tmp19_38_) * (8)))) + ((__tmp21_7_) * (8)))) + ((__tmp23_12_) * (8)))) + ((__tmp25_10_) * (8)))) + ((__tmp27_15_) * (8))))) = (__tmp28_16_);
*((long*)((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((__tmp15_33_) + ((__tmp17_40_) * (8)))) + ((__tmp19_38_) * (8)))) + ((__tmp21_7_) * (8)))) + ((__tmp23_12_) * (8)))) + ((__tmp25_10_) * (8)))) + ((__tmp27_15_) * (8)))) = ((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((__tmp15_33_) + ((__tmp17_40_) * (8)))) + ((__tmp19_38_) * (8)))) + ((__tmp21_7_) * (8)))) + ((__tmp23_12_) * (8)))) + ((__tmp25_10_) * (8)))) + ((__tmp27_15_) * (8)))) + (8));
__tmp29_14_ = (0);
goto AsmLabel33;
AsmLabel34:;
__tmp30_30_ = (2);
*((long*)((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((__tmp15_33_) + ((__tmp17_40_) * (8)))) + ((__tmp19_38_) * (8)))) + ((__tmp21_7_) * (8)))) + ((__tmp23_12_) * (8)))) + ((__tmp25_10_) * (8)))) + ((__tmp27_15_) * (8)))) + ((__tmp29_14_) * (8)))) = __lib_malloc((((__tmp30_30_) * (8)) + (8)));
*((long*)(*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((__tmp15_33_) + ((__tmp17_40_) * (8)))) + ((__tmp19_38_) * (8)))) + ((__tmp21_7_) * (8)))) + ((__tmp23_12_) * (8)))) + ((__tmp25_10_) * (8)))) + ((__tmp27_15_) * (8)))) + ((__tmp29_14_) * (8))))) = (__tmp30_30_);
*((long*)((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((__tmp15_33_) + ((__tmp17_40_) * (8)))) + ((__tmp19_38_) * (8)))) + ((__tmp21_7_) * (8)))) + ((__tmp23_12_) * (8)))) + ((__tmp25_10_) * (8)))) + ((__tmp27_15_) * (8)))) + ((__tmp29_14_) * (8)))) = ((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((__tmp15_33_) + ((__tmp17_40_) * (8)))) + ((__tmp19_38_) * (8)))) + ((__tmp21_7_) * (8)))) + ((__tmp23_12_) * (8)))) + ((__tmp25_10_) * (8)))) + ((__tmp27_15_) * (8)))) + ((__tmp29_14_) * (8)))) + (8));
__tmp31_31_ = (0);
goto AsmLabel36;
AsmLabel37:;
__tmp32_28_ = (2);
*((long*)((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((__tmp15_33_) + ((__tmp17_40_) * (8)))) + ((__tmp19_38_) * (8)))) + ((__tmp21_7_) * (8)))) + ((__tmp23_12_) * (8)))) + ((__tmp25_10_) * (8)))) + ((__tmp27_15_) * (8)))) + ((__tmp29_14_) * (8)))) + ((__tmp31_31_) * (8)))) = __lib_malloc((((__tmp32_28_) * (8)) + (8)));
*((long*)(*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((__tmp15_33_) + ((__tmp17_40_) * (8)))) + ((__tmp19_38_) * (8)))) + ((__tmp21_7_) * (8)))) + ((__tmp23_12_) * (8)))) + ((__tmp25_10_) * (8)))) + ((__tmp27_15_) * (8)))) + ((__tmp29_14_) * (8)))) + ((__tmp31_31_) * (8))))) = (__tmp32_28_);
*((long*)((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((__tmp15_33_) + ((__tmp17_40_) * (8)))) + ((__tmp19_38_) * (8)))) + ((__tmp21_7_) * (8)))) + ((__tmp23_12_) * (8)))) + ((__tmp25_10_) * (8)))) + ((__tmp27_15_) * (8)))) + ((__tmp29_14_) * (8)))) + ((__tmp31_31_) * (8)))) = ((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((__tmp15_33_) + ((__tmp17_40_) * (8)))) + ((__tmp19_38_) * (8)))) + ((__tmp21_7_) * (8)))) + ((__tmp23_12_) * (8)))) + ((__tmp25_10_) * (8)))) + ((__tmp27_15_) * (8)))) + ((__tmp29_14_) * (8)))) + ((__tmp31_31_) * (8)))) + (8));
__tmp33_29_ = (0);
goto AsmLabel39;
AsmLabel40:;
__tmp34_35_ = (2);
*((long*)((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((__tmp15_33_) + ((__tmp17_40_) * (8)))) + ((__tmp19_38_) * (8)))) + ((__tmp21_7_) * (8)))) + ((__tmp23_12_) * (8)))) + ((__tmp25_10_) * (8)))) + ((__tmp27_15_) * (8)))) + ((__tmp29_14_) * (8)))) + ((__tmp31_31_) * (8)))) + ((__tmp33_29_) * (8)))) = __lib_malloc((((__tmp34_35_) * (8)) + (8)));
*((long*)(*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((__tmp15_33_) + ((__tmp17_40_) * (8)))) + ((__tmp19_38_) * (8)))) + ((__tmp21_7_) * (8)))) + ((__tmp23_12_) * (8)))) + ((__tmp25_10_) * (8)))) + ((__tmp27_15_) * (8)))) + ((__tmp29_14_) * (8)))) + ((__tmp31_31_) * (8)))) + ((__tmp33_29_) * (8))))) = (__tmp34_35_);
*((long*)((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((__tmp15_33_) + ((__tmp17_40_) * (8)))) + ((__tmp19_38_) * (8)))) + ((__tmp21_7_) * (8)))) + ((__tmp23_12_) * (8)))) + ((__tmp25_10_) * (8)))) + ((__tmp27_15_) * (8)))) + ((__tmp29_14_) * (8)))) + ((__tmp31_31_) * (8)))) + ((__tmp33_29_) * (8)))) = ((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((__tmp15_33_) + ((__tmp17_40_) * (8)))) + ((__tmp19_38_) * (8)))) + ((__tmp21_7_) * (8)))) + ((__tmp23_12_) * (8)))) + ((__tmp25_10_) * (8)))) + ((__tmp27_15_) * (8)))) + ((__tmp29_14_) * (8)))) + ((__tmp31_31_) * (8)))) + ((__tmp33_29_) * (8)))) + (8));
__tmp33_29_ = ((__tmp33_29_) + (1));
AsmLabel39:;
if(((__tmp33_29_) < (__tmp32_28_))) goto AsmLabel40; else goto AsmLabel41;;
AsmLabel41:;
__tmp31_31_ = ((__tmp31_31_) + (1));
AsmLabel36:;
if(((__tmp31_31_) < (__tmp30_30_))) goto AsmLabel37; else goto AsmLabel38;;
AsmLabel38:;
__tmp29_14_ = ((__tmp29_14_) + (1));
AsmLabel33:;
if(((__tmp29_14_) < (__tmp28_16_))) goto AsmLabel34; else goto AsmLabel35;;
AsmLabel35:;
__tmp27_15_ = ((__tmp27_15_) + (1));
AsmLabel30:;
if(((__tmp27_15_) < (__tmp26_11_))) goto AsmLabel31; else goto AsmLabel32;;
AsmLabel32:;
__tmp25_10_ = ((__tmp25_10_) + (1));
AsmLabel27:;
if(((__tmp25_10_) < (__tmp24_13_))) goto AsmLabel28; else goto AsmLabel29;;
AsmLabel29:;
__tmp23_12_ = ((__tmp23_12_) + (1));
AsmLabel24:;
if(((__tmp23_12_) < (__tmp22_8_))) goto AsmLabel25; else goto AsmLabel26;;
AsmLabel26:;
__tmp21_7_ = ((__tmp21_7_) + (1));
AsmLabel21:;
if(((__tmp21_7_) < (__tmp20_9_))) goto AsmLabel22; else goto AsmLabel23;;
AsmLabel23:;
__tmp19_38_ = ((__tmp19_38_) + (1));
AsmLabel18:;
if(((__tmp19_38_) < (__tmp18_37_))) goto AsmLabel19; else goto AsmLabel20;;
AsmLabel20:;
__tmp17_40_ = ((__tmp17_40_) + (1));
AsmLabel15:;
if(((__tmp17_40_) < (__tmp16_39_))) goto AsmLabel16; else goto AsmLabel17;;
AsmLabel17:;
arr_17_ = (__tmp15_33_);
sum_4_ = (0);
i_20_ = (1);
AsmLabel45:;
if(((i_20_) <= (1000))) goto AsmLabel46; else goto AsmLabel48;;
AsmLabel46:;
*((long*)((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((arr_17_) + (0))) + (8))) + (0))) + (8))) + (0))) + (8))) + (0))) + (8))) + (0))) + (8))) = ((123) + (i_20_));
sum_4_ = ((sum_4_) + (*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((arr_17_) + (0))) + (8))) + (0))) + (8))) + (0))) + (8))) + (0))) + (8))) + (0))) + (8))));
AsmLabel47:;
i_20_ = ((i_20_) + (1));
goto AsmLabel45;
AsmLabel48:;
__tmp36_32_ = toString((sum_4_));
println((__tmp36_32_));
;
i_20_ = (1);
AsmLabel49:;
if(((i_20_) <= (1000000))) goto AsmLabel50; else goto AsmLabel52;;
AsmLabel50:;
sum_4_ = ((sum_4_) + (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((9876) % (1234)) * (2345)) % (1234)) * (2345)) % (1234)) * (2345)) % (1234)) * (2345)) % (1234)) * (2345)) % (1234)) * (2345)) % (1234)) * (2345)) % (1234)) * (2345)) % (1234)) * (2345)) % (1234)) * (2345)) % (1234)) * (2345)) % (1234)) * (2345)) % (1234)) * (2345)) % (1234)) * (2345)) % (1234)) * (2345)) % (1234)) * (2345)) % (1234)) * (2345)) % (1234)) * (2345)) % (1234)) * (2345)) % (1234)) * (2345)) % (1234)) * (2345)) % (1234)) * (2345)) % (1234)) * (2345)) % (1234)) * (2345)) % (1234)) * (2345)) % (1234)) * (2345)) % (1234)) * (2345)) % (1234)) * (2345)) % (1234)) * (2345)) % (1234)) * (2345)) % (1234)) * (2345)) % (1234)) * (2345)) % (1234)) * (2345)) % (1234)) * (2345)) % (1234)) * (2345)) % (1234)) * (2345)) % (1234)) * (2345)) % (1234)) * (2345)) % (1234)) * (2345)) % (1234)) * (2345)) % (1234)) * (2345)) % (1234)) * (2345)) % (1234)) * (2345)) % (1234)) * (2345)) % (1234)) * (2345)) % (1234)) * (2345)) % (1234)) * (2345)) % (1234)) * (2345)) % (1234)) * (2345)) % (1234)) * (2345)) % (1234)) * (2345)) % (1234)) * (2345)) % (1234)) * (2345)) % (1234)) * (2345)) % (1234)) * (2345)) % (1234)) * (2345)) % (1234)) * (2345)) % (1234)) * (2345)) % (1234)) * (2345)) % (1234)) * (2345)) % (1234)) * (2345)) % (1234)) * (2345)) % (1234)) * (2345)) % (1234)) * (2345)) % (1234)) * (2345)) % (1234)) * (2345)) % (1234)) * (2345)) % (1234)) * (2345)) % (1234)) * (2345)) % (1234)) * (2345)) % (1234)) * (2345)) % (1234)) * (2345)) % (1234)) * (2345)) % (1234)) * (2345)) % (1234)) * (2345)) % (1234)) * (2345)) % (1234)) * (2345)) % (1234)) * (2345)) % (1234)) * (2345)) % (1234)) * (2345)) % (1234)) * (2345)) % (1234)) * (2345)) % (1234)) * (2345)) % (1234)) * (2345)) % (1234)) * (2345)) % (1234)) * (2345)) % (1234)) * (2345)) % (1234)) * (2345)) % (1234)) * (2345)) % (1234)) * (2345)) % (1234)) % (11)));
AsmLabel51:;
i_20_ = ((i_20_) + (1));
goto AsmLabel49;
AsmLabel52:;
__tmp37_34_ = toString((sum_4_));
println((__tmp37_34_));
;
}
void A__A(long This){
//Define Local Variable
long This_41_ = This;
long __tmp50_42_;
long __tmp40_43_;
long __tmp51_44_;
long __tmp43_45_;
long __tmp54_46_;
long __tmp44_47_;
long __tmp55_48_;
long __tmp41_49_;
long __tmp52_50_;
long __tmp42_51_;
long __tmp53_52_;
long __tmp47_53_;
long __tmp58_54_;
long __tmp48_55_;
long __tmp45_56_;
long __tmp56_57_;
long __tmp46_58_;
long __tmp57_59_;
long __tmp38_60_;
long __tmp49_61_;
long __tmp39_62_;
//Function Body
__tmp39_62_ = (2);
__tmp38_60_ = __lib_malloc((((__tmp39_62_) * (8)) + (8)));
*((long*)(__tmp38_60_)) = (__tmp39_62_);
__tmp38_60_ = ((__tmp38_60_) + (8));
__tmp40_43_ = (0);
goto AsmLabel53;
AsmLabel54:;
__tmp41_49_ = (2);
*((long*)((__tmp38_60_) + ((__tmp40_43_) * (8)))) = __lib_malloc((((__tmp41_49_) * (8)) + (8)));
*((long*)(*(long *)((__tmp38_60_) + ((__tmp40_43_) * (8))))) = (__tmp41_49_);
*((long*)((__tmp38_60_) + ((__tmp40_43_) * (8)))) = ((*(long *)((__tmp38_60_) + ((__tmp40_43_) * (8)))) + (8));
__tmp42_51_ = (0);
goto AsmLabel56;
AsmLabel57:;
__tmp43_45_ = (3);
*((long*)((*(long *)((__tmp38_60_) + ((__tmp40_43_) * (8)))) + ((__tmp42_51_) * (8)))) = __lib_malloc((((__tmp43_45_) * (8)) + (8)));
*((long*)(*(long *)((*(long *)((__tmp38_60_) + ((__tmp40_43_) * (8)))) + ((__tmp42_51_) * (8))))) = (__tmp43_45_);
*((long*)((*(long *)((__tmp38_60_) + ((__tmp40_43_) * (8)))) + ((__tmp42_51_) * (8)))) = ((*(long *)((*(long *)((__tmp38_60_) + ((__tmp40_43_) * (8)))) + ((__tmp42_51_) * (8)))) + (8));
__tmp44_47_ = (0);
goto AsmLabel59;
AsmLabel60:;
__tmp45_56_ = (2);
*((long*)((*(long *)((*(long *)((__tmp38_60_) + ((__tmp40_43_) * (8)))) + ((__tmp42_51_) * (8)))) + ((__tmp44_47_) * (8)))) = __lib_malloc((((__tmp45_56_) * (8)) + (8)));
*((long*)(*(long *)((*(long *)((*(long *)((__tmp38_60_) + ((__tmp40_43_) * (8)))) + ((__tmp42_51_) * (8)))) + ((__tmp44_47_) * (8))))) = (__tmp45_56_);
*((long*)((*(long *)((*(long *)((__tmp38_60_) + ((__tmp40_43_) * (8)))) + ((__tmp42_51_) * (8)))) + ((__tmp44_47_) * (8)))) = ((*(long *)((*(long *)((*(long *)((__tmp38_60_) + ((__tmp40_43_) * (8)))) + ((__tmp42_51_) * (8)))) + ((__tmp44_47_) * (8)))) + (8));
__tmp46_58_ = (0);
goto AsmLabel62;
AsmLabel63:;
__tmp47_53_ = (3);
*((long*)((*(long *)((*(long *)((*(long *)((__tmp38_60_) + ((__tmp40_43_) * (8)))) + ((__tmp42_51_) * (8)))) + ((__tmp44_47_) * (8)))) + ((__tmp46_58_) * (8)))) = __lib_malloc((((__tmp47_53_) * (8)) + (8)));
*((long*)(*(long *)((*(long *)((*(long *)((*(long *)((__tmp38_60_) + ((__tmp40_43_) * (8)))) + ((__tmp42_51_) * (8)))) + ((__tmp44_47_) * (8)))) + ((__tmp46_58_) * (8))))) = (__tmp47_53_);
*((long*)((*(long *)((*(long *)((*(long *)((__tmp38_60_) + ((__tmp40_43_) * (8)))) + ((__tmp42_51_) * (8)))) + ((__tmp44_47_) * (8)))) + ((__tmp46_58_) * (8)))) = ((*(long *)((*(long *)((*(long *)((*(long *)((__tmp38_60_) + ((__tmp40_43_) * (8)))) + ((__tmp42_51_) * (8)))) + ((__tmp44_47_) * (8)))) + ((__tmp46_58_) * (8)))) + (8));
__tmp48_55_ = (0);
goto AsmLabel65;
AsmLabel66:;
__tmp49_61_ = (2);
*((long*)((*(long *)((*(long *)((*(long *)((*(long *)((__tmp38_60_) + ((__tmp40_43_) * (8)))) + ((__tmp42_51_) * (8)))) + ((__tmp44_47_) * (8)))) + ((__tmp46_58_) * (8)))) + ((__tmp48_55_) * (8)))) = __lib_malloc((((__tmp49_61_) * (8)) + (8)));
*((long*)(*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((__tmp38_60_) + ((__tmp40_43_) * (8)))) + ((__tmp42_51_) * (8)))) + ((__tmp44_47_) * (8)))) + ((__tmp46_58_) * (8)))) + ((__tmp48_55_) * (8))))) = (__tmp49_61_);
*((long*)((*(long *)((*(long *)((*(long *)((*(long *)((__tmp38_60_) + ((__tmp40_43_) * (8)))) + ((__tmp42_51_) * (8)))) + ((__tmp44_47_) * (8)))) + ((__tmp46_58_) * (8)))) + ((__tmp48_55_) * (8)))) = ((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((__tmp38_60_) + ((__tmp40_43_) * (8)))) + ((__tmp42_51_) * (8)))) + ((__tmp44_47_) * (8)))) + ((__tmp46_58_) * (8)))) + ((__tmp48_55_) * (8)))) + (8));
__tmp50_42_ = (0);
goto AsmLabel68;
AsmLabel69:;
__tmp51_44_ = (2);
*((long*)((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((__tmp38_60_) + ((__tmp40_43_) * (8)))) + ((__tmp42_51_) * (8)))) + ((__tmp44_47_) * (8)))) + ((__tmp46_58_) * (8)))) + ((__tmp48_55_) * (8)))) + ((__tmp50_42_) * (8)))) = __lib_malloc((((__tmp51_44_) * (8)) + (8)));
*((long*)(*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((__tmp38_60_) + ((__tmp40_43_) * (8)))) + ((__tmp42_51_) * (8)))) + ((__tmp44_47_) * (8)))) + ((__tmp46_58_) * (8)))) + ((__tmp48_55_) * (8)))) + ((__tmp50_42_) * (8))))) = (__tmp51_44_);
*((long*)((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((__tmp38_60_) + ((__tmp40_43_) * (8)))) + ((__tmp42_51_) * (8)))) + ((__tmp44_47_) * (8)))) + ((__tmp46_58_) * (8)))) + ((__tmp48_55_) * (8)))) + ((__tmp50_42_) * (8)))) = ((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((__tmp38_60_) + ((__tmp40_43_) * (8)))) + ((__tmp42_51_) * (8)))) + ((__tmp44_47_) * (8)))) + ((__tmp46_58_) * (8)))) + ((__tmp48_55_) * (8)))) + ((__tmp50_42_) * (8)))) + (8));
__tmp52_50_ = (0);
goto AsmLabel71;
AsmLabel72:;
__tmp53_52_ = (3);
*((long*)((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((__tmp38_60_) + ((__tmp40_43_) * (8)))) + ((__tmp42_51_) * (8)))) + ((__tmp44_47_) * (8)))) + ((__tmp46_58_) * (8)))) + ((__tmp48_55_) * (8)))) + ((__tmp50_42_) * (8)))) + ((__tmp52_50_) * (8)))) = __lib_malloc((((__tmp53_52_) * (8)) + (8)));
*((long*)(*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((__tmp38_60_) + ((__tmp40_43_) * (8)))) + ((__tmp42_51_) * (8)))) + ((__tmp44_47_) * (8)))) + ((__tmp46_58_) * (8)))) + ((__tmp48_55_) * (8)))) + ((__tmp50_42_) * (8)))) + ((__tmp52_50_) * (8))))) = (__tmp53_52_);
*((long*)((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((__tmp38_60_) + ((__tmp40_43_) * (8)))) + ((__tmp42_51_) * (8)))) + ((__tmp44_47_) * (8)))) + ((__tmp46_58_) * (8)))) + ((__tmp48_55_) * (8)))) + ((__tmp50_42_) * (8)))) + ((__tmp52_50_) * (8)))) = ((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((__tmp38_60_) + ((__tmp40_43_) * (8)))) + ((__tmp42_51_) * (8)))) + ((__tmp44_47_) * (8)))) + ((__tmp46_58_) * (8)))) + ((__tmp48_55_) * (8)))) + ((__tmp50_42_) * (8)))) + ((__tmp52_50_) * (8)))) + (8));
__tmp54_46_ = (0);
goto AsmLabel74;
AsmLabel75:;
__tmp55_48_ = (2);
*((long*)((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((__tmp38_60_) + ((__tmp40_43_) * (8)))) + ((__tmp42_51_) * (8)))) + ((__tmp44_47_) * (8)))) + ((__tmp46_58_) * (8)))) + ((__tmp48_55_) * (8)))) + ((__tmp50_42_) * (8)))) + ((__tmp52_50_) * (8)))) + ((__tmp54_46_) * (8)))) = __lib_malloc((((__tmp55_48_) * (8)) + (8)));
*((long*)(*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((__tmp38_60_) + ((__tmp40_43_) * (8)))) + ((__tmp42_51_) * (8)))) + ((__tmp44_47_) * (8)))) + ((__tmp46_58_) * (8)))) + ((__tmp48_55_) * (8)))) + ((__tmp50_42_) * (8)))) + ((__tmp52_50_) * (8)))) + ((__tmp54_46_) * (8))))) = (__tmp55_48_);
*((long*)((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((__tmp38_60_) + ((__tmp40_43_) * (8)))) + ((__tmp42_51_) * (8)))) + ((__tmp44_47_) * (8)))) + ((__tmp46_58_) * (8)))) + ((__tmp48_55_) * (8)))) + ((__tmp50_42_) * (8)))) + ((__tmp52_50_) * (8)))) + ((__tmp54_46_) * (8)))) = ((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((__tmp38_60_) + ((__tmp40_43_) * (8)))) + ((__tmp42_51_) * (8)))) + ((__tmp44_47_) * (8)))) + ((__tmp46_58_) * (8)))) + ((__tmp48_55_) * (8)))) + ((__tmp50_42_) * (8)))) + ((__tmp52_50_) * (8)))) + ((__tmp54_46_) * (8)))) + (8));
__tmp56_57_ = (0);
goto AsmLabel77;
AsmLabel78:;
__tmp57_59_ = (2);
*((long*)((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((__tmp38_60_) + ((__tmp40_43_) * (8)))) + ((__tmp42_51_) * (8)))) + ((__tmp44_47_) * (8)))) + ((__tmp46_58_) * (8)))) + ((__tmp48_55_) * (8)))) + ((__tmp50_42_) * (8)))) + ((__tmp52_50_) * (8)))) + ((__tmp54_46_) * (8)))) + ((__tmp56_57_) * (8)))) = __lib_malloc((((__tmp57_59_) * (8)) + (8)));
*((long*)(*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((__tmp38_60_) + ((__tmp40_43_) * (8)))) + ((__tmp42_51_) * (8)))) + ((__tmp44_47_) * (8)))) + ((__tmp46_58_) * (8)))) + ((__tmp48_55_) * (8)))) + ((__tmp50_42_) * (8)))) + ((__tmp52_50_) * (8)))) + ((__tmp54_46_) * (8)))) + ((__tmp56_57_) * (8))))) = (__tmp57_59_);
*((long*)((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((__tmp38_60_) + ((__tmp40_43_) * (8)))) + ((__tmp42_51_) * (8)))) + ((__tmp44_47_) * (8)))) + ((__tmp46_58_) * (8)))) + ((__tmp48_55_) * (8)))) + ((__tmp50_42_) * (8)))) + ((__tmp52_50_) * (8)))) + ((__tmp54_46_) * (8)))) + ((__tmp56_57_) * (8)))) = ((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((*(long *)((__tmp38_60_) + ((__tmp40_43_) * (8)))) + ((__tmp42_51_) * (8)))) + ((__tmp44_47_) * (8)))) + ((__tmp46_58_) * (8)))) + ((__tmp48_55_) * (8)))) + ((__tmp50_42_) * (8)))) + ((__tmp52_50_) * (8)))) + ((__tmp54_46_) * (8)))) + ((__tmp56_57_) * (8)))) + (8));
__tmp56_57_ = ((__tmp56_57_) + (1));
AsmLabel77:;
if(((__tmp56_57_) < (__tmp55_48_))) goto AsmLabel78; else goto AsmLabel79;;
AsmLabel79:;
__tmp54_46_ = ((__tmp54_46_) + (1));
AsmLabel74:;
if(((__tmp54_46_) < (__tmp53_52_))) goto AsmLabel75; else goto AsmLabel76;;
AsmLabel76:;
__tmp52_50_ = ((__tmp52_50_) + (1));
AsmLabel71:;
if(((__tmp52_50_) < (__tmp51_44_))) goto AsmLabel72; else goto AsmLabel73;;
AsmLabel73:;
__tmp50_42_ = ((__tmp50_42_) + (1));
AsmLabel68:;
if(((__tmp50_42_) < (__tmp49_61_))) goto AsmLabel69; else goto AsmLabel70;;
AsmLabel70:;
__tmp48_55_ = ((__tmp48_55_) + (1));
AsmLabel65:;
if(((__tmp48_55_) < (__tmp47_53_))) goto AsmLabel66; else goto AsmLabel67;;
AsmLabel67:;
__tmp46_58_ = ((__tmp46_58_) + (1));
AsmLabel62:;
if(((__tmp46_58_) < (__tmp45_56_))) goto AsmLabel63; else goto AsmLabel64;;
AsmLabel64:;
__tmp44_47_ = ((__tmp44_47_) + (1));
AsmLabel59:;
if(((__tmp44_47_) < (__tmp43_45_))) goto AsmLabel60; else goto AsmLabel61;;
AsmLabel61:;
__tmp42_51_ = ((__tmp42_51_) + (1));
AsmLabel56:;
if(((__tmp42_51_) < (__tmp41_49_))) goto AsmLabel57; else goto AsmLabel58;;
AsmLabel58:;
__tmp40_43_ = ((__tmp40_43_) + (1));
AsmLabel53:;
if(((__tmp40_43_) < (__tmp39_62_))) goto AsmLabel54; else goto AsmLabel55;;
AsmLabel55:;
*((long*)((This_41_) + (0))) = (__tmp38_60_);
}
void restore(){
//Define Local Variable
long i_63_;
//Function Body
i_63_ = (1);
AsmLabel83:;
if(((i_63_) <= (n_))) goto AsmLabel84; else goto AsmLabel86;;
AsmLabel84:;
*((long*)((a_) + ((i_63_) * (8)))) = (*(long *)((bak_) + ((i_63_) * (8))));
AsmLabel85:;
i_63_ = ((i_63_) + (1));
goto AsmLabel83;
AsmLabel86:;
}
long quicksort(long l, long r){
//Define Local Variable
long l_64_ = l;
long r_65_ = r;
long i11_66_;
long i10_67_;
long i13_68_;
long sum_69_;
long i12_70_;
long i14_71_;
long __tmp62_72_;
long __tmp65_73_;
long __tmp64_74_;
long z_l_75_;
long i1_76_;
long i2_77_;
long i_78_;
long i3_79_;
long i4_80_;
long i5_81_;
long z_r_82_;
long i6_83_;
long i7_84_;
long i8_85_;
long i9_86_;
long p_87_;
long x_88_;
long __tmp60_89_;
long __tmp59_90_;
long __tmp61_91_;
long __tmp63_92_;
//Function Body
sum_69_ = (0);
x_88_ = (*(long *)((a_) + ((l_64_) * (8))));
z_l_75_ = (0);
z_r_82_ = (0);
i_78_ = ((l_64_) + (1));
AsmLabel87:;
if(((i_78_) < (r_65_))) goto AsmLabel88; else goto AsmLabel90;;
AsmLabel88:;
sum_69_ = ((sum_69_) + (1));
if(((*(long *)((a_) + ((i_78_) * (8)))) < (x_88_))) goto AsmLabel91; else goto AsmLabel92;;
AsmLabel91:;
__tmp59_90_ = (z_l_75_);
z_l_75_ = ((__tmp59_90_) + (1));
*((long*)((a_left_) + ((__tmp59_90_) * (8)))) = (*(long *)((a_) + ((i_78_) * (8))));
goto AsmLabel93;
AsmLabel92:;
__tmp60_89_ = (z_r_82_);
z_r_82_ = ((__tmp60_89_) + (1));
*((long*)((a_right_) + ((__tmp60_89_) * (8)))) = (*(long *)((a_) + ((i_78_) * (8))));
AsmLabel93:;
AsmLabel89:;
i_78_ = ((i_78_) + (1));
goto AsmLabel87;
AsmLabel90:;
p_87_ = (l_64_);
i_78_ = (0);
AsmLabel95:;
if(((i_78_) < (z_l_75_))) goto AsmLabel96; else goto AsmLabel98;;
AsmLabel96:;
__tmp61_91_ = (p_87_);
p_87_ = ((__tmp61_91_) + (1));
*((long*)((a_) + ((__tmp61_91_) * (8)))) = (*(long *)((a_left_) + ((i_78_) * (8))));
AsmLabel97:;
i_78_ = ((i_78_) + (1));
goto AsmLabel95;
AsmLabel98:;
__tmp62_72_ = (p_87_);
p_87_ = ((__tmp62_72_) + (1));
*((long*)((a_) + ((__tmp62_72_) * (8)))) = (x_88_);
i_78_ = (0);
AsmLabel99:;
if(((i_78_) < (z_r_82_))) goto AsmLabel100; else goto AsmLabel102;;
AsmLabel100:;
__tmp63_92_ = (p_87_);
p_87_ = ((__tmp63_92_) + (1));
*((long*)((a_) + ((__tmp63_92_) * (8)))) = (*(long *)((a_right_) + ((i_78_) * (8))));
AsmLabel101:;
i_78_ = ((i_78_) + (1));
goto AsmLabel99;
AsmLabel102:;
if(((z_l_75_) > (1))) goto AsmLabel103; else goto AsmLabel105;;
AsmLabel103:;
__tmp64_74_ = quicksort((l_64_), ((l_64_) + (z_l_75_)));
sum_69_ = ((sum_69_) + (__tmp64_74_));
AsmLabel105:;
if(((z_r_82_) > (1))) goto AsmLabel107; else goto AsmLabel109;;
AsmLabel107:;
__tmp65_73_ = quicksort(((r_65_) - (z_r_82_)), (r_65_));
sum_69_ = ((sum_69_) + (__tmp65_73_));
AsmLabel109:;
return (sum_69_);
}
long calc(){
//Define Local Variable
long i1_93_;
long i11_94_;
long i2_95_;
long i10_96_;
long i_97_;
long i3_98_;
long i13_99_;
long sum_100_;
long i4_101_;
long i12_102_;
long i5_103_;
long i6_104_;
long i14_105_;
long i7_106_;
long i8_107_;
long i9_108_;
long r_109_;
long l_110_;
//Function Body
i_97_ = (1);
AsmLabel111:;
if(((i_97_) <= (n_))) goto AsmLabel112; else goto AsmLabel114;;
AsmLabel112:;
*((long*)((a_left_) + ((i_97_) * (8)))) = ((i_97_) - (1));
*((long*)((a_right_) + ((i_97_) * (8)))) = ((i_97_) + (1));
AsmLabel113:;
i_97_ = ((i_97_) + (1));
goto AsmLabel111;
AsmLabel114:;
sum_100_ = (0);
i_97_ = (n_);
AsmLabel115:;
if(((i_97_) >= (1))) goto AsmLabel116; else goto AsmLabel118;;
AsmLabel116:;
l_110_ = (*(long *)((a_left_) + ((*(long *)((a_) + ((i_97_) * (8)))) * (8))));
r_109_ = (*(long *)((a_right_) + ((*(long *)((a_) + ((i_97_) * (8)))) * (8))));
*((long*)((a_right_) + ((l_110_) * (8)))) = (r_109_);
*((long*)((a_left_) + ((r_109_) * (8)))) = (l_110_);
sum_100_ = ((((sum_100_) + (r_109_)) - (l_110_)) - (2));
AsmLabel117:;
i_97_ = ((i_97_) - (1));
goto AsmLabel115;
AsmLabel118:;
return (sum_100_);
}
long mergesort(long l, long r){
//Define Local Variable
long l_111_ = l;
long r_112_ = r;
long i11_113_;
long i10_114_;
long mid_115_;
long i13_116_;
long sum_117_;
long i12_118_;
long i14_119_;
long __tmp66_120_;
long n_l_121_;
long __tmp67_122_;
long n_r_123_;
long z_l_124_;
long i1_125_;
long i2_126_;
long i_127_;
long i3_128_;
long i4_129_;
long i5_130_;
long z_r_131_;
long i6_132_;
long i7_133_;
long i8_134_;
long i9_135_;
long __tmp70_136_;
long __tmp76_137_;
long __tmp77_138_;
long __tmp75_139_;
long z_140_;
long __tmp78_141_;
long __tmp68_142_;
long __tmp69_143_;
long __tmp72_144_;
long __tmp73_145_;
long __tmp71_146_;
long __tmp74_147_;
//Function Body
if((((l_111_) + (1)) == (r_112_))) goto AsmLabel119; else goto AsmLabel121;;
AsmLabel119:;
return (0);
AsmLabel121:;
mid_115_ = (((l_111_) + (r_112_)) >> (1));
sum_117_ = (0);
__tmp66_120_ = mergesort((l_111_), (mid_115_));
sum_117_ = ((sum_117_) + (__tmp66_120_));
__tmp67_122_ = mergesort((mid_115_), (r_112_));
sum_117_ = ((sum_117_) + (__tmp67_122_));
n_l_121_ = (0);
n_r_123_ = (0);
i_127_ = (l_111_);
AsmLabel123:;
if(((i_127_) < (mid_115_))) goto AsmLabel124; else goto AsmLabel126;;
AsmLabel124:;
__tmp68_142_ = (n_l_121_);
n_l_121_ = ((__tmp68_142_) + (1));
*((long*)((a_left_) + ((__tmp68_142_) * (8)))) = (*(long *)((a_) + ((i_127_) * (8))));
AsmLabel125:;
i_127_ = ((i_127_) + (1));
goto AsmLabel123;
AsmLabel126:;
i_127_ = (mid_115_);
AsmLabel127:;
if(((i_127_) < (r_112_))) goto AsmLabel128; else goto AsmLabel130;;
AsmLabel128:;
__tmp69_143_ = (n_r_123_);
n_r_123_ = ((__tmp69_143_) + (1));
*((long*)((a_right_) + ((__tmp69_143_) * (8)))) = (*(long *)((a_) + ((i_127_) * (8))));
AsmLabel129:;
i_127_ = ((i_127_) + (1));
goto AsmLabel127;
AsmLabel130:;
z_l_124_ = (0);
z_r_131_ = (0);
z_140_ = (l_111_);
AsmLabel131:;
__tmp70_136_ = ((z_l_124_) < (n_l_121_));
if((__tmp70_136_)) goto AsmLabel134; else goto AsmLabel135;;
AsmLabel134:;
__tmp70_136_ = ((z_r_131_) < (n_r_123_));
AsmLabel135:;
if((__tmp70_136_)) goto AsmLabel132; else goto AsmLabel133;;
AsmLabel132:;
sum_117_ = ((sum_117_) + (1));
if(((*(long *)((a_left_) + ((z_l_124_) * (8)))) < (*(long *)((a_right_) + ((z_r_131_) * (8)))))) goto AsmLabel136; else goto AsmLabel137;;
AsmLabel136:;
__tmp71_146_ = (z_l_124_);
z_l_124_ = ((__tmp71_146_) + (1));
__tmp72_144_ = (z_140_);
z_140_ = ((__tmp72_144_) + (1));
*((long*)((a_) + ((__tmp72_144_) * (8)))) = (*(long *)((a_left_) + ((__tmp71_146_) * (8))));
goto AsmLabel138;
AsmLabel137:;
__tmp73_145_ = (z_r_131_);
z_r_131_ = ((__tmp73_145_) + (1));
__tmp74_147_ = (z_140_);
z_140_ = ((__tmp74_147_) + (1));
*((long*)((a_) + ((__tmp74_147_) * (8)))) = (*(long *)((a_right_) + ((__tmp73_145_) * (8))));
AsmLabel138:;
goto AsmLabel131;
AsmLabel133:;
AsmLabel140:;
if(((z_l_124_) < (n_l_121_))) goto AsmLabel141; else goto AsmLabel142;;
AsmLabel141:;
__tmp75_139_ = (z_l_124_);
z_l_124_ = ((__tmp75_139_) + (1));
__tmp76_137_ = (z_140_);
z_140_ = ((__tmp76_137_) + (1));
*((long*)((a_) + ((__tmp76_137_) * (8)))) = (*(long *)((a_left_) + ((__tmp75_139_) * (8))));
goto AsmLabel140;
AsmLabel142:;
AsmLabel143:;
if(((z_r_131_) < (n_r_123_))) goto AsmLabel144; else goto AsmLabel145;;
AsmLabel144:;
__tmp77_138_ = (z_r_131_);
z_r_131_ = ((__tmp77_138_) + (1));
__tmp78_141_ = (z_140_);
z_140_ = ((__tmp78_141_) + (1));
*((long*)((a_) + ((__tmp78_141_) * (8)))) = (*(long *)((a_right_) + ((__tmp77_138_) * (8))));
goto AsmLabel143;
AsmLabel145:;
return (sum_117_);
}
long heapsort(){
//Define Local Variable
long i1_148_;
long i11_149_;
long i2_150_;
long i10_151_;
long i_152_;
long i3_153_;
long i13_154_;
long sum_155_;
long i4_156_;
long i12_157_;
long i5_158_;
long i6_159_;
long i14_160_;
long i7_161_;
long i8_162_;
long i9_163_;
long tmp_164_;
long heap_size_165_;
long x_166_;
long x_167_;
long __tmp79_168_;
long r_169_;
long y_170_;
long l_171_;
//Function Body
sum_155_ = (0);
i_152_ = (1);
AsmLabel146:;
if(((i_152_) <= (n_))) goto AsmLabel147; else goto AsmLabel149;;
AsmLabel147:;
*((long*)((heap_) + ((i_152_) * (8)))) = (*(long *)((a_) + ((i_152_) * (8))));
x_166_ = (i_152_);
AsmLabel150:;
if(((x_166_) != (1))) goto AsmLabel151; else goto AsmLabel152;;
AsmLabel151:;
sum_155_ = ((sum_155_) + (1));
if(((*(long *)((heap_) + ((x_166_) * (8)))) > (*(long *)((heap_) + (((x_166_) >> (1)) * (8)))))) goto AsmLabel153; else goto AsmLabel155;;
AsmLabel153:;
goto AsmLabel152;
AsmLabel155:;
tmp_164_ = (*(long *)((heap_) + ((x_166_) * (8))));
*((long*)((heap_) + ((x_166_) * (8)))) = (*(long *)((heap_) + (((x_166_) >> (1)) * (8))));
*((long*)((heap_) + (((x_166_) >> (1)) * (8)))) = (tmp_164_);
x_166_ = ((x_166_) >> (1));
goto AsmLabel150;
AsmLabel152:;
AsmLabel148:;
i_152_ = ((i_152_) + (1));
goto AsmLabel146;
AsmLabel149:;
heap_size_165_ = (n_);
i_152_ = (1);
AsmLabel157:;
if(((i_152_) <= (n_))) goto AsmLabel158; else goto AsmLabel160;;
AsmLabel158:;
*((long*)((a_) + ((i_152_) * (8)))) = (*(long *)((heap_) + (8)));
__tmp79_168_ = (heap_size_165_);
heap_size_165_ = ((__tmp79_168_) - (1));
*((long*)((heap_) + (8))) = (*(long *)((heap_) + ((__tmp79_168_) * (8))));
x_167_ = (1);
AsmLabel161:;
if((((x_167_) << (1)) <= (heap_size_165_))) goto AsmLabel162; else goto AsmLabel163;;
AsmLabel162:;
l_171_ = ((x_167_) << (1));
r_169_ = ((l_171_) + (1));
y_170_ = (l_171_);
if(((r_169_) <= (heap_size_165_))) goto AsmLabel164; else goto AsmLabel166;;
AsmLabel164:;
sum_155_ = ((sum_155_) + (1));
if(((*(long *)((heap_) + ((r_169_) * (8)))) < (*(long *)((heap_) + ((l_171_) * (8)))))) goto AsmLabel168; else goto AsmLabel170;;
AsmLabel168:;
y_170_ = (r_169_);
AsmLabel170:;
AsmLabel166:;
sum_155_ = ((sum_155_) + (1));
if(((*(long *)((heap_) + ((x_167_) * (8)))) < (*(long *)((heap_) + ((y_170_) * (8)))))) goto AsmLabel172; else goto AsmLabel174;;
AsmLabel172:;
goto AsmLabel163;
AsmLabel174:;
tmp_164_ = (*(long *)((heap_) + ((x_167_) * (8))));
*((long*)((heap_) + ((x_167_) * (8)))) = (*(long *)((heap_) + ((y_170_) * (8))));
*((long*)((heap_) + ((y_170_) * (8)))) = (tmp_164_);
tmp_164_ = (x_167_);
x_167_ = (y_170_);
y_170_ = (tmp_164_);
goto AsmLabel161;
AsmLabel163:;
AsmLabel159:;
i_152_ = ((i_152_) + (1));
goto AsmLabel157;
AsmLabel160:;
return (sum_155_);
}
int main(){
//Grobal Variable Initialize
long __tmp10_;
long __tmp11_;
long __tmp14_;
long __tmp12_;
long __tmp13_;
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
N_ = (100000);
__tmp1_ = (N_);
__tmp0_ = __lib_malloc((((__tmp1_) * (8)) + (8)));
*((long*)(__tmp0_)) = (__tmp1_);
__tmp0_ = ((__tmp0_) + (8));
a_ = (__tmp0_);
__tmp4_ = (N_);
__tmp3_ = __lib_malloc((((__tmp4_) * (8)) + (8)));
*((long*)(__tmp3_)) = (__tmp4_);
__tmp3_ = ((__tmp3_) + (8));
bak_ = (__tmp3_);
__tmp7_ = (N_);
__tmp6_ = __lib_malloc((((__tmp7_) * (8)) + (8)));
*((long*)(__tmp6_)) = (__tmp7_);
__tmp6_ = ((__tmp6_) + (8));
a_left_ = (__tmp6_);
__tmp10_ = (N_);
__tmp9_ = __lib_malloc((((__tmp10_) * (8)) + (8)));
*((long*)(__tmp9_)) = (__tmp10_);
__tmp9_ = ((__tmp9_) + (8));
a_right_ = (__tmp9_);
__tmp13_ = (N_);
__tmp12_ = __lib_malloc((((__tmp13_) * (8)) + (8)));
*((long*)(__tmp12_)) = (__tmp13_);
__tmp12_ = ((__tmp12_) + (8));
heap_ = (__tmp12_);
//Define Local Variable
long i11_172_;
long i10_173_;
long i13_174_;
long i12_175_;
long i14_176_;
long __tmp80_177_;
long __tmp83_178_;
long __tmp84_179_;
long __tmp81_180_;
long __tmp82_181_;
long __tmp87_182_;
long __tmp88_183_;
long __tmp85_184_;
long __tmp86_185_;
long __tmp89_186_;
long ans3_187_;
long ans2_188_;
long a_189_;
long ans4_190_;
long ans1_191_;
long i1_192_;
long i2_193_;
long i_194_;
long i3_195_;
long i4_196_;
long k_197_;
long i5_198_;
long __tmp90_199_;
long i6_200_;
long i7_201_;
long i8_202_;
long i9_203_;
//Function Body
__tmp80_177_ = getInt();
n_ = (__tmp80_177_);
__tmp81_180_ = getInt();
k_197_ = (__tmp81_180_);
i_194_ = (1);
AsmLabel176:;
if(((i_194_) <= (n_))) goto AsmLabel177; else goto AsmLabel179;;
AsmLabel177:;
*((long*)((a_) + ((i_194_) * (8)))) = (i_194_);
if(((i_194_) <= (k_197_))) goto AsmLabel180; else goto AsmLabel182;;
AsmLabel180:;
*((long*)((a_) + ((i_194_) * (8)))) = (((k_197_) + (1)) - (i_194_));
AsmLabel182:;
*((long*)((bak_) + ((i_194_) * (8)))) = (*(long *)((a_) + ((i_194_) * (8))));
AsmLabel178:;
i_194_ = ((i_194_) + (1));
goto AsmLabel176;
AsmLabel179:;
__tmp82_181_ = quicksort((1), ((n_) + (1)));
ans1_191_ = (__tmp82_181_);
restore();
;
__tmp83_178_ = calc();
ans2_188_ = (__tmp83_178_);
restore();
;
__tmp84_179_ = mergesort((1), ((n_) + (1)));
ans3_187_ = (__tmp84_179_);
restore();
;
__tmp85_184_ = heapsort();
ans4_190_ = (__tmp85_184_);
__tmp86_185_ = toString((ans1_191_));
println((__tmp86_185_));
;
__tmp87_182_ = toString((ans2_188_));
println((__tmp87_182_));
;
__tmp88_183_ = toString((ans3_187_));
println((__tmp88_183_));
;
__tmp89_186_ = toString((ans4_190_));
println((__tmp89_186_));
;
__tmp90_199_ = __lib_malloc((8));
A__A((__tmp90_199_));
;
a_189_ = (__tmp90_199_);
A__Optimizer((a_189_));
;
return (0);
}

//------------- IRBase Traverse End -------------

