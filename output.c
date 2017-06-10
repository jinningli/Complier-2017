
//------------- IRBase Translate -------------

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

//Function & Class Declare
struct point;

void point__point(point This);
void point__set(point This, long a_x, long a_y, long a_z);
long point__sqrLen(point This);
long point__sqrDis(point This, point other);
long point__dot(point This, point other);
point point__cross(point This, point other);
point point__add(point This, point other);
point point__sub(point This, point other);
void point__printPoint(point This);
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
struct point{
long x;
long y;
long z;
};
void point__point(point This){
//Define Local Variable
point This_0 = This;
//Function Body
*((long*)((This_0) + (0))) = (0);
*((long*)((This_0) + (0))) = (0);
*((long*)((This_0) + (0))) = (0);
}
void point__set(point This, long a_x, long a_y, long a_z){
//Define Local Variable
point This_1 = This;
long a_y_2 = a_x;
long a_x_3 = a_y;
long a_z_4 = a_z;
//Function Body
*((long*)((This_1) + (0))) = (a_x_3);
*((long*)((This_1) + (0))) = (a_y_2);
*((long*)((This_1) + (0))) = (a_z_4);
}
long point__sqrLen(point This){
//Define Local Variable
point This_5 = This;
//Function Body
return ((((*(long *)((This_5) + (0))) * (*(long *)((This_5) + (0)))) + ((*(long *)((This_5) + (0))) * (*(long *)((This_5) + (0))))) + ((*(long *)((This_5) + (0))) * (*(long *)((This_5) + (0)))));
}
long point__sqrDis(point This, point other){
//Define Local Variable
point other_6 = This;
point This_7 = other;
//Function Body
return (((((*(long *)((This_7) + (0))) - (*(long *)((other_6) + (0)))) * ((*(long *)((This_7) + (0))) - (*(long *)((other_6) + (0))))) + (((*(long *)((This_7) + (0))) - (*(long *)((other_6) + (0)))) * ((*(long *)((This_7) + (0))) - (*(long *)((other_6) + (0)))))) + (((*(long *)((This_7) + (0))) - (*(long *)((other_6) + (0)))) * ((*(long *)((This_7) + (0))) - (*(long *)((other_6) + (0))))));
}
long point__dot(point This, point other){
//Define Local Variable
point other_8 = This;
point This_9 = other;
//Function Body
return ((((*(long *)((This_9) + (0))) * (*(long *)((other_8) + (0)))) + ((*(long *)((This_9) + (0))) * (*(long *)((other_8) + (0))))) + ((*(long *)((This_9) + (0))) * (*(long *)((other_8) + (0)))));
}
point point__cross(point This, point other){
//Define Local Variable
point other_10 = This;
point This_11 = other;
point retval_12;
//Function Body
point__set((((*(long *)((This_11) + (0))) * (*(long *)((other_10) + (0)))) - ((*(long *)((This_11) + (0))) * (*(long *)((other_10) + (0))))), (((*(long *)((This_11) + (0))) * (*(long *)((other_10) + (0)))) - ((*(long *)((This_11) + (0))) * (*(long *)((other_10) + (0))))), (((*(long *)((This_11) + (0))) * (*(long *)((other_10) + (0)))) - ((*(long *)((This_11) + (0))) * (*(long *)((other_10) + (0))))), (retval_12));
;
return (retval_12);
}
point point__add(point This, point other){
//Define Local Variable
point other_13 = This;
point This_14 = other;
//Function Body
*((long*)((This_14) + (0))) = ((*(long *)((This_14) + (0))) + (*(long *)((other_13) + (0))));
*((long*)((This_14) + (0))) = ((*(long *)((This_14) + (0))) + (*(long *)((other_13) + (0))));
*((long*)((This_14) + (0))) = ((*(long *)((This_14) + (0))) + (*(long *)((other_13) + (0))));
}
point point__sub(point This, point other){
//Define Local Variable
point other_15 = This;
point This_16 = other;
//Function Body
*((long*)((This_16) + (0))) = ((*(long *)((This_16) + (0))) - (*(long *)((other_15) + (0))));
*((long*)((This_16) + (0))) = ((*(long *)((This_16) + (0))) - (*(long *)((other_15) + (0))));
*((long*)((This_16) + (0))) = ((*(long *)((This_16) + (0))) - (*(long *)((other_15) + (0))));
}
void point__printPoint(point This){
//Define Local Variable
long __tmp0_17 = This;
long __tmp2_18;
long __tmp1_19;
point This_20;
//Function Body
__tmp0_17 = toString((*(long *)((This_20) + (0))));
__tmp1_19 = toString((*(long *)((This_20) + (0))));
__tmp2_18 = toString((*(long *)((This_20) + (0))));
println(((((((("(") + (__tmp2_18)) + (", ")) + (__tmp1_19)) + (", ")) + (__tmp0_17)) + (")")));
;
}
int main(){
//Grobal Variable Initialize
//Define Local Variable
point a_21;
point b_22;
point c_23;
point d_24;
long __tmp8_25;
long __tmp7_26;
long __tmp9_27;
long __tmp4_28;
long __tmp3_29;
long __tmp6_30;
long __tmp5_31;
long __tmp10_32;
long __tmp11_33;
long __tmp12_34;
long __tmp13_35;
//Function Body
point__printPoint((a_21));
;
point__set((480), -(463), (849), (a_21));
;
point__set(-(150), (585), -(208), (b_22));
;
point__set(-(742), -(670), (360), (c_23));
;
point__set(-(960), -(591), -(29), (d_24));
;
point__add((b_22), (a_21));
;
point__add((c_23), (b_22));
;
point__add((c_23), (d_24));
;
point__sub((a_21), (c_23));
;
point__sub((d_24), (b_22));
;
point__sub((c_23), (d_24));
;
point__add((b_22), (c_23));
;
point__add((b_22), (a_21));
;
point__add((b_22), (b_22));
;
point__add((c_23), (c_23));
;
point__sub((d_24), (a_21));
;
point__add((b_22), (a_21));
;
point__sub((c_23), (b_22));
;
__tmp3_29 = point__sqrLen((a_21));
__tmp4_28 = toString((__tmp3_29));
println((__tmp4_28));
;
__tmp5_31 = point__sqrLen((b_22));
__tmp6_30 = toString((__tmp5_31));
println((__tmp6_30));
;
__tmp7_26 = point__sqrDis((c_23), (b_22));
__tmp8_25 = toString((__tmp7_26));
println((__tmp8_25));
;
__tmp9_27 = point__sqrDis((a_21), (d_24));
__tmp10_32 = toString((__tmp9_27));
println((__tmp10_32));
;
__tmp11_33 = point__dot((a_21), (c_23));
__tmp12_34 = toString((__tmp11_33));
println((__tmp12_34));
;
__tmp13_35 = point__cross((d_24), (b_22));
point__printPoint((__tmp13_35));
;
point__printPoint((a_21));
;
point__printPoint((b_22));
;
point__printPoint((c_23));
;
point__printPoint((d_24));
;
}

//------------- IRBase Traverse End -------------

