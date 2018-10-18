
//------------- IRBase Translate -------------

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

//Function & Class Declare
struct TA;

void work(long st, long ta);
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
long init_anger_;
long work_anger_;

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
struct TA{
long state_;
long anger_;
};
void work(long st, long ta){
//Define Local Variable
long st_0_ = st;
long ta_1_ = ta;
//Function Body
if(((*(long *)((ta_1_) + (8))) <= (100))) goto AsmLabel0; else goto AsmLabel1;;
AsmLabel0:;
println(str_add(str_add(str_add((st_0_), (toMoStr(", "))), (*(long *)((ta_1_) + (0)))), (toMoStr(" enjoys this work. XD"))));
;
goto AsmLabel2;
AsmLabel1:;
println(str_add(str_add(str_add((st_0_), (toMoStr(", "))), (*(long *)((ta_1_) + (0)))), (toMoStr(" wants to give up!!!!!"))));
;
AsmLabel2:;
*((long*)((ta_1_) + (8))) = ((*(long *)((ta_1_) + (8))) + (work_anger_));
}
int main(){
//Grobal Variable Initialize
init_anger_ = (100);
work_anger_ = (10);
//Define Local Variable
long __tmp0_2_;
long mr_3_;
long mars_4_;
long __tmp1_5_;
//Function Body
__tmp0_2_ = __lib_malloc((16));
mr_3_ = (__tmp0_2_);
*((long*)((mr_3_) + (0))) = (toMoStr("the leading TA"));
*((long*)((mr_3_) + (8))) = (0);
__tmp1_5_ = __lib_malloc((16));
mars_4_ = (__tmp1_5_);
*((long*)((mars_4_) + (0))) = (toMoStr("the striking TA"));
*((long*)((mars_4_) + (8))) = (init_anger_);
work((toMoStr("MR")), (mr_3_));
;
work((toMoStr("Mars")), (mars_4_));
;
work((toMoStr("Mars")), (mars_4_));
;
}

//------------- IRBase Traverse End -------------

