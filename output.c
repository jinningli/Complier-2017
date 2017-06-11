
//------------- IRBase Translate -------------

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

//Function & Class Declare

void exchange(long x, long y);
long makeHeap();
long adjustHeap(long n);
long heapSort();
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
long n_;
long a_;

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
void exchange(long x, long y){
//Define Local Variable
long x_0_ = x;
long y_1_ = y;
long t_2_;
//Function Body
t_2_ = (*(long *)((a_) + ((x_0_) * (8))));
*((long*)((a_) + ((x_0_) * (8)))) = (*(long *)((a_) + ((y_1_) * (8))));
*((long*)((a_) + ((y_1_) * (8)))) = (t_2_);
}
long makeHeap(){
//Define Local Variable
long t_3_;
long i_4_;
long j_5_;
//Function Body
i_4_ = (((n_) - (1)) / (2));
t_3_ = (0);
j_5_ = (0);
AsmLabel0:;
if(((i_4_) >= (0))) goto AsmLabel1; else goto AsmLabel2;;
AsmLabel1:;
j_5_ = ((i_4_) * (2));
if(((((i_4_) * (2)) + (1)) < (n_))) goto AsmLabel6; else goto AsmLabel5;;
AsmLabel6:;
if(((*(long *)((a_) + ((((i_4_) * (2)) + (1)) * (8)))) < (*(long *)((a_) + (((i_4_) * (2)) * (8)))))) goto AsmLabel3; else goto AsmLabel5;;
AsmLabel3:;
j_5_ = (((i_4_) * (2)) + (1));
AsmLabel5:;
if(((*(long *)((a_) + ((i_4_) * (8)))) > (*(long *)((a_) + ((j_5_) * (8)))))) goto AsmLabel9; else goto AsmLabel11;;
AsmLabel9:;
exchange((i_4_), (j_5_));
;
AsmLabel11:;
i_4_ = ((i_4_) - (1));
goto AsmLabel0;
AsmLabel2:;
return (0);
}
long adjustHeap(long n){
//Define Local Variable
long n_6_ = n;
long t_7_;
long i_8_;
long j_9_;
long t_10_;
//Function Body
i_8_ = (0);
j_9_ = (0);
t_7_ = (0);
AsmLabel13:;
if((((i_8_) * (2)) < (n_6_))) goto AsmLabel14; else goto AsmLabel15;;
AsmLabel14:;
j_9_ = ((i_8_) * (2));
if(((((i_8_) * (2)) + (1)) < (n_6_))) goto AsmLabel19; else goto AsmLabel18;;
AsmLabel19:;
if(((*(long *)((a_) + ((((i_8_) * (2)) + (1)) * (8)))) < (*(long *)((a_) + (((i_8_) * (2)) * (8)))))) goto AsmLabel16; else goto AsmLabel18;;
AsmLabel16:;
j_9_ = (((i_8_) * (2)) + (1));
AsmLabel18:;
if(((*(long *)((a_) + ((i_8_) * (8)))) > (*(long *)((a_) + ((j_9_) * (8)))))) goto AsmLabel22; else goto AsmLabel23;;
AsmLabel22:;
t_10_ = (*(long *)((a_) + ((i_8_) * (8))));
*((long*)((a_) + ((i_8_) * (8)))) = (*(long *)((a_) + ((j_9_) * (8))));
*((long*)((a_) + ((j_9_) * (8)))) = (t_10_);
i_8_ = (j_9_);
goto AsmLabel24;
AsmLabel23:;
goto AsmLabel15;
AsmLabel24:;
goto AsmLabel13;
AsmLabel15:;
return (0);
}
long heapSort(){
//Define Local Variable
long t_11_;
long k_12_;
//Function Body
t_11_ = (0);
k_12_ = (0);
AsmLabel26:;
if(((k_12_) < (n_))) goto AsmLabel27; else goto AsmLabel29;;
AsmLabel27:;
t_11_ = (*(long *)((a_) + (0)));
*((long*)((a_) + (0))) = (*(long *)((a_) + ((((n_) - (k_12_)) - (1)) * (8))));
*((long*)((a_) + ((((n_) - (k_12_)) - (1)) * (8)))) = (t_11_);
adjustHeap((((n_) - (k_12_)) - (1)));
;
AsmLabel28:;
k_12_ = ((k_12_) + (1));
goto AsmLabel26;
AsmLabel29:;
return (0);
}
int main(){
//Grobal Variable Initialize
//Define Local Variable
long __tmp4_13_;
long __tmp3_14_;
long __tmp0_15_;
long __tmp2_16_;
long __tmp1_17_;
long i_18_;
long __tmp5_19_;
long __tmp6_20_;
long __tmp7_21_;
//Function Body
__tmp0_15_ = getString();
__tmp1_17_ = parseInt((__tmp0_15_));
n_ = (__tmp1_17_);
__tmp3_14_ = (n_);
__tmp2_16_ = __lib_malloc((((__tmp3_14_) * (8)) + (8)));
*((long*)(__tmp2_16_)) = (__tmp3_14_);
__tmp2_16_ = ((__tmp2_16_) + (8));
a_ = (__tmp2_16_);
i_18_ = (0);
AsmLabel33:;
__tmp5_19_ = size((a_));
if(((i_18_) < (__tmp5_19_))) goto AsmLabel34; else goto AsmLabel36;;
AsmLabel34:;
*((long*)((a_) + ((i_18_) * (8)))) = (i_18_);
AsmLabel35:;
i_18_ = ((i_18_) + (1));
goto AsmLabel33;
AsmLabel36:;
makeHeap();
;
heapSort();
;
i_18_ = (0);
AsmLabel37:;
__tmp6_20_ = size((a_));
if(((i_18_) < (__tmp6_20_))) goto AsmLabel38; else goto AsmLabel40;;
AsmLabel38:;
__tmp7_21_ = toString((*(long *)((a_) + ((i_18_) * (8)))));
print(str_add((__tmp7_21_), (toMoStr(" "))));
;
AsmLabel39:;
i_18_ = ((i_18_) + (1));
goto AsmLabel37;
AsmLabel40:;
print((toMoStr("\n")));
;
return (0);
}

//------------- IRBase Traverse End -------------

