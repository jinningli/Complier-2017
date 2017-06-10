
//------------- IRBase Translate -------------

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

//Function & Class Declare
struct node;

long getHash(long n);
void put(long key, long data);
long get(long key);
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
long hashsize;
long table;

//Inside Function
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
struct node{
long key;
long data;
node next;
};
long getHash(long n){
//Define Local Variable
long n_0 = n;
//Function Body
return (((n_0) * (237)) % (hashsize));
}
void put(long key, long data){
//Define Local Variable
long p_1 = key;
long data_2 = data;
long __tmp0_3;
long key_4;
node ptr_5;
long __tmp1_6;
long __tmp2_7;
//Function Body
ptr_5 = (0);
__tmp0_3 = getHash((key_4));
p_1 = (__tmp0_3);
if(((*(long *)((table) + ((p_1) * (8)))) == (0))) goto AsmLabel0; else goto AsmLabel2;;
AsmLabel0:;
__tmp1_6 = __lib_malloc((8));
*((long*)((table) + ((p_1) * (8)))) = (__tmp1_6);
*((long*)((*(long *)((table) + ((p_1) * (8)))) + (0))) = (key_4);
*((long*)((*(long *)((table) + ((p_1) * (8)))) + (0))) = (data_2);
*((long*)((*(long *)((table) + ((p_1) * (8)))) + (0))) = (0);
return;
AsmLabel2:;
ptr_5 = (*(long *)((table) + ((p_1) * (8))));
AsmLabel3:;
if(((*(long *)((ptr_5) + (0))) != (key_4))) goto AsmLabel4; else goto AsmLabel5;;
AsmLabel4:;
if(((*(long *)((ptr_5) + (0))) == (0))) goto AsmLabel6; else goto AsmLabel8;;
AsmLabel6:;
__tmp2_7 = __lib_malloc((8));
*((long*)((ptr_5) + (0))) = (__tmp2_7);
*((long*)((*(long *)((ptr_5) + (0))) + (0))) = (key_4);
*((long*)((*(long *)((ptr_5) + (0))) + (0))) = (0);
AsmLabel8:;
ptr_5 = (*(long *)((ptr_5) + (0)));
goto AsmLabel3;
AsmLabel5:;
*((long*)((ptr_5) + (0))) = (data_2);
}
long get(long key){
//Define Local Variable
long __tmp3_8 = key;
long key_9;
node ptr_10;
//Function Body
ptr_10 = (0);
__tmp3_8 = getHash((key_9));
ptr_10 = (*(long *)((table) + ((__tmp3_8) * (8))));
AsmLabel9:;
if(((*(long *)((ptr_10) + (0))) != (key_9))) goto AsmLabel10; else goto AsmLabel11;;
AsmLabel10:;
ptr_10 = (*(long *)((ptr_10) + (0)));
goto AsmLabel9;
AsmLabel11:;
return (*(long *)((ptr_10) + (0)));
}
int main(){
//Grobal Variable Initialize
hashsize = (100);
//Define Local Variable
long __tmp4_11;
long __tmp6_12;
long __tmp5_13;
long i_14;
long __tmp7_15;
long __tmp10_16;
long __tmp8_17;
long __tmp9_18;
//Function Body
__tmp5_13 = (100);
__tmp4_11 = __lib_malloc((((__tmp5_13) * (8)) + (4)));
*((long*)(__tmp4_11)) = (__tmp5_13);
__tmp4_11 = ((__tmp4_11) + (4));
__tmp6_12 = (0);
goto AsmLabel12;
AsmLabel13:;
__tmp7_15 = ((__tmp4_11) + ((__tmp6_12) * (8)));
*((long*)(__tmp7_15)) = __lib_malloc((8));
__tmp6_12 = ((__tmp6_12) + (1));
AsmLabel12:;
if(((__tmp6_12) < (__tmp5_13))) goto AsmLabel13; else goto AsmLabel14;;
AsmLabel14:;
table = (__tmp4_11);
i_14 = (0);
AsmLabel15:;
if(((i_14) < (hashsize))) goto AsmLabel16; else goto AsmLabel18;;
AsmLabel16:;
*((long*)((table) + ((i_14) * (8)))) = (0);
AsmLabel17:;
i_14 = ((i_14) + (1));
goto AsmLabel15;
AsmLabel18:;
i_14 = (0);
AsmLabel19:;
if(((i_14) < (1000))) goto AsmLabel20; else goto AsmLabel22;;
AsmLabel20:;
put((i_14), (i_14));
;
AsmLabel21:;
i_14 = ((i_14) + (1));
goto AsmLabel19;
AsmLabel22:;
i_14 = (0);
AsmLabel23:;
if(((i_14) < (1000))) goto AsmLabel24; else goto AsmLabel26;;
AsmLabel24:;
__tmp8_17 = get((i_14));
__tmp9_18 = toString((__tmp8_17));
__tmp10_16 = toString((i_14));
println((((__tmp10_16) + (" ")) + (__tmp9_18)));
;
AsmLabel25:;
i_14 = ((i_14) + (1));
goto AsmLabel23;
AsmLabel26:;
return (0);
}

//------------- IRBase Traverse End -------------

