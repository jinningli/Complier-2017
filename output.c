
//------------- IRBase Translate -------------

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

//Function & Class Declare
struct vector;

void vector__init(vector This, arr:long:2 vec);
long vector__getDim(vector This);
long vector__dot(vector This, vector rhs);
vector vector__scalarInPlaceMultiply(vector This, long c);
vector vector__add(vector This, vector rhs);
bool vector__set(vector This, long idx, long value);
string vector__toString(vector This);
bool vector__copy(vector This, vector rhs);
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
struct vector{
long data;
};
void vector__init(vector This, arr:long:2 vec){
//Define Local Variable
long __tmp4_0 = This;
long __tmp3_1 = vec;
long __tmp0_2;
long vec_3;
long __tmp2_4;
long __tmp1_5;
vector This_6;
long i_7;
//Function Body
if(((vec_3) == (0))) goto AsmLabel0; else goto AsmLabel2;;
AsmLabel0:;
return;
AsmLabel2:;
__tmp3_1 = size((vec_3));
__tmp1_5 = (__tmp3_1);
__tmp0_2 = __lib_malloc((((__tmp1_5) * (8)) + (4)));
*((long*)(__tmp0_2)) = (__tmp1_5);
__tmp0_2 = ((__tmp0_2) + (4));
*((long*)((This_6) + (0))) = (__tmp0_2);
i_7 = (0);
AsmLabel6:;
__tmp4_0 = size((vec_3));
if(((i_7) < (__tmp4_0))) goto AsmLabel7; else goto AsmLabel9;;
AsmLabel7:;
*((long*)((*(long *)((This_6) + (0))) + ((i_7) * (8)))) = (*(long *)((vec_3) + ((i_7) * (8))));
AsmLabel8:;
i_7 = ((i_7) + (1));
goto AsmLabel6;
AsmLabel9:;
}
long vector__getDim(vector This){
//Define Local Variable
long __tmp5_8 = This;
vector This_9;
//Function Body
if(((*(long *)((This_9) + (0))) == (0))) goto AsmLabel10; else goto AsmLabel12;;
AsmLabel10:;
return (0);
AsmLabel12:;
__tmp5_8 = size((*(long *)((This_9) + (0))));
return (__tmp5_8);
}
long vector__dot(vector This, vector rhs){
//Define Local Variable
long result_10 = This;
long __tmp6_11 = rhs;
vector This_12;
long i_13;
vector rhs_14;
//Function Body
i_13 = (0);
result_10 = (0);
AsmLabel13:;
__tmp6_11 = vector__getDim();
if(((i_13) < (__tmp6_11))) goto AsmLabel14; else goto AsmLabel15;;
AsmLabel14:;
result_10 = ((*(long *)((*(long *)((This_12) + (0))) + ((i_13) * (8)))) * (*(long *)((*(long *)((rhs_14) + (0))) + ((i_13) * (8)))));
i_13 = ((i_13) + (1));
goto AsmLabel13;
AsmLabel15:;
return (result_10);
}
vector vector__scalarInPlaceMultiply(vector This, long c){
//Define Local Variable
long c_15 = This;
vector This_16 = c;
long i_17;
long __tmp7_18;
//Function Body
if(((*(long *)((This_16) + (0))) == (0))) goto AsmLabel16; else goto AsmLabel18;;
AsmLabel16:;
return (0);
AsmLabel18:;
i_17 = (0);
AsmLabel19:;
__tmp7_18 = vector__getDim();
if(((i_17) < (__tmp7_18))) goto AsmLabel20; else goto AsmLabel22;;
AsmLabel20:;
*((long*)((*(long *)((This_16) + (0))) + ((i_17) * (8)))) = ((c_15) * (*(long *)((*(long *)((This_16) + (0))) + ((i_17) * (8)))));
AsmLabel21:;
i_17 = ((i_17) + (1));
goto AsmLabel19;
AsmLabel22:;
return (This_16);
}
vector vector__add(vector This, vector rhs){
//Define Local Variable
vector temp_19 = This;
long __tmp10_20 = rhs;
long __tmp11_21;
vector This_22;
long i_23;
long __tmp12_24;
long __tmp13_25;
vector rhs_26;
long __tmp8_27;
long __tmp9_28;
//Function Body
__tmp9_28 = vector__getDim();
__tmp10_20 = vector__getDim((rhs_26));
__tmp8_27 = ((__tmp9_28) != (__tmp10_20));
if((__tmp8_27)) goto AsmLabel26; else goto AsmLabel27;;
AsmLabel26:;
__tmp11_21 = vector__getDim();
__tmp8_27 = ((__tmp11_21) == (0));
AsmLabel27:;
if((__tmp8_27)) goto AsmLabel23; else goto AsmLabel25;;
AsmLabel23:;
return (0);
AsmLabel25:;
__tmp12_24 = __lib_malloc((8));
temp_19 = (__tmp12_24);
i_23 = (0);
AsmLabel28:;
__tmp13_25 = vector__getDim();
if(((i_23) < (__tmp13_25))) goto AsmLabel29; else goto AsmLabel31;;
AsmLabel29:;
*((long*)((*(long *)((temp_19) + (0))) + ((i_23) * (8)))) = ((*(long *)((*(long *)((This_22) + (0))) + ((i_23) * (8)))) + (*(long *)((*(long *)((rhs_26) + (0))) + ((i_23) * (8)))));
AsmLabel30:;
i_23 = ((i_23) + (1));
goto AsmLabel28;
AsmLabel31:;
return (temp_19);
}
bool vector__set(vector This, long idx, long value){
//Define Local Variable
long __tmp14_29 = This;
vector This_30 = idx;
long idx_31 = value;
long value_32;
//Function Body
__tmp14_29 = vector__getDim();
if(((__tmp14_29) < (idx_31))) goto AsmLabel32; else goto AsmLabel34;;
AsmLabel32:;
return (0);
AsmLabel34:;
*((long*)((*(long *)((This_30) + (0))) + ((idx_31) * (8)))) = (value_32);
return (1);
}
string vector__toString(vector This){
//Define Local Variable
string temp_33 = This;
vector This_34;
long i_35;
long __tmp15_36;
long __tmp17_37;
long __tmp16_38;
long __tmp18_39;
//Function Body
temp_33 = ("( ");
__tmp15_36 = vector__getDim();
if(((__tmp15_36) > (0))) goto AsmLabel35; else goto AsmLabel37;;
AsmLabel35:;
__tmp16_38 = vector__toString();
temp_33 = ((temp_33) + (__tmp16_38));
AsmLabel37:;
i_35 = (1);
AsmLabel38:;
__tmp17_37 = vector__getDim();
if(((i_35) < (__tmp17_37))) goto AsmLabel39; else goto AsmLabel41;;
AsmLabel39:;
__tmp18_39 = vector__toString();
temp_33 = (((temp_33) + (", ")) + (__tmp18_39));
AsmLabel40:;
i_35 = ((i_35) + (1));
goto AsmLabel38;
AsmLabel41:;
temp_33 = ((temp_33) + (" )"));
return (temp_33);
}
bool vector__copy(vector This, vector rhs){
//Define Local Variable
vector This_40 = This;
vector rhs_41 = rhs;
long __tmp19_42;
//Function Body
if(((rhs_41) == (0))) goto AsmLabel42; else goto AsmLabel44;;
AsmLabel42:;
return (0);
AsmLabel44:;
__tmp19_42 = vector__getDim((rhs_41));
if(((__tmp19_42) == (0))) goto AsmLabel45; else goto AsmLabel46;;
AsmLabel45:;
*((long*)((This_40) + (0))) = (0);
goto AsmLabel47;
AsmLabel46:;
*((long*)((This_40) + (0))) = (0);
AsmLabel47:;
return (1);
}
int main(){
//Grobal Variable Initialize
//Define Local Variable
long a_43;
long i_44;
long __tmp21_45;
long __tmp32_46;
long __tmp22_47;
long __tmp33_48;
long __tmp30_49;
long __tmp20_50;
long __tmp31_51;
vector x_52;
long __tmp25_53;
vector y_54;
long __tmp26_55;
long __tmp23_56;
long __tmp24_57;
long __tmp29_58;
long __tmp27_59;
long __tmp28_60;
//Function Body
__tmp20_50 = __lib_malloc((8));
x_52 = (__tmp20_50);
__tmp22_47 = (10);
__tmp21_45 = __lib_malloc((((__tmp22_47) * (8)) + (4)));
*((long*)(__tmp21_45)) = (__tmp22_47);
__tmp21_45 = ((__tmp21_45) + (4));
a_43 = (__tmp21_45);
i_44 = (0);
AsmLabel51:;
if(((i_44) < (10))) goto AsmLabel52; else goto AsmLabel54;;
AsmLabel52:;
*((long*)((a_43) + ((i_44) * (8)))) = ((9) - (i_44));
AsmLabel53:;
i_44 = ((i_44) + (1));
goto AsmLabel51;
AsmLabel54:;
vector__init((a_43), (x_52));
;
print(("vector x: "));
;
__tmp24_57 = vector__toString((x_52));
println((__tmp24_57));
;
__tmp25_53 = __lib_malloc((8));
y_54 = (__tmp25_53);
vector__copy((x_52), (y_54));
;
__tmp26_55 = vector__set((817), (3), (y_54));
if((__tmp26_55)) goto AsmLabel55; else goto AsmLabel57;;
AsmLabel55:;
println(("excited!"));
;
AsmLabel57:;
print(("vector y: "));
;
__tmp27_59 = vector__toString((y_54));
println((__tmp27_59));
;
print(("x + y: "));
;
__tmp28_60 = vector__add((y_54), (x_52));
__tmp29_58 = vector__toString((__tmp28_60));
println((__tmp29_58));
;
print(("x * y: "));
;
__tmp30_49 = vector__dot((y_54), (x_52));
__tmp31_51 = toString((__tmp30_49));
println((__tmp31_51));
;
print(("(1 << 3) * y: "));
;
__tmp32_46 = vector__scalarInPlaceMultiply(((1) << (3)), (x_52));
__tmp33_48 = vector__toString((__tmp32_46));
println((__tmp33_48));
;
}

//------------- IRBase Traverse End -------------

