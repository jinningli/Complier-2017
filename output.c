
//------------- IRBase Translate -------------

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

//Function & Class Declare

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
int main(){
//Grobal Variable Initialize
//Define Local Variable
long a_0_;
long __tmp8_1_;
long __tmp7_2_;
long __tmp9_3_;
long __tmp4_4_;
long __tmp3_5_;
long __tmp6_6_;
long __tmp5_7_;
long __tmp0_8_;
long __tmp10_9_;
long __tmp11_10_;
long __tmp2_11_;
long __tmp1_12_;
long __tmp12_13_;
//Function Body
__tmp1_12_ = (3);
__tmp0_8_ = __lib_malloc((((__tmp1_12_) * (8)) + (8)));
*((long*)(__tmp0_8_)) = (__tmp1_12_);
__tmp0_8_ = ((__tmp0_8_) + (8));
a_0_ = (__tmp0_8_);
__tmp3_5_ = size((a_0_));
__tmp4_4_ = toString((__tmp3_5_));
print(str_add(str_add((toMoStr("I have done ")), (__tmp4_4_)), (toMoStr(" little things"))));
;
println((toMoStr("too young!")));
;
__tmp5_7_ = strlength((toMoStr("\"hahaha\"")));
__tmp6_6_ = toString((__tmp5_7_));
__tmp7_2_ = getString();
print(str_add((__tmp7_2_), (__tmp6_6_)));
;
__tmp8_1_ = getInt();
__tmp9_3_ = substring((toMoStr("four scores and seven years")), (0), (__tmp8_1_));
println((__tmp9_3_));
;
__tmp10_9_ = parseInt((toMoStr("45 best songs in the world")));
__tmp11_10_ = toString((__tmp10_9_));
println((__tmp11_10_));
;
__tmp12_13_ = ord((toMoStr("45 best songs")), (5));
return (__tmp12_13_);
}

//------------- IRBase Traverse End -------------

