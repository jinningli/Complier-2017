
//------------- IRBase Translate -------------

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

//Function & Class Declare
struct vector;

void vector__init(long This, long vec);
long vector__getDim(long This);
long vector__dot(long This, long rhs);
long vector__scalarInPlaceMultiply(long This, long c);
long vector__add(long This, long rhs);
long vector__set(long This, long idx, long value);
long vector__tostring(long This);
long vector__copy(long This, long rhs);
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
struct vector{
long data;
};
void vector__init(long This, long vec){
//Define Local Variable
long This_0 = This;
long vec_1 = vec;
long __tmp4_2;
long __tmp3_3;
long __tmp0_4;
long __tmp2_5;
long __tmp1_6;
long i_7;
//Function Body
if(((vec_1) == (0))) goto AsmLabel0; else goto AsmLabel2;;
AsmLabel0:;
return;
AsmLabel2:;
__tmp3_3 = size((vec_1));
__tmp1_6 = (__tmp3_3);
__tmp0_4 = __lib_malloc((((__tmp1_6) * (8)) + (8)));
*((long*)(__tmp0_4)) = (__tmp1_6);
__tmp0_4 = ((__tmp0_4) + (8));
*((long*)((This_0) + (0))) = (__tmp0_4);
i_7 = (0);
AsmLabel6:;
__tmp4_2 = size((vec_1));
if(((i_7) < (__tmp4_2))) goto AsmLabel7; else goto AsmLabel9;;
AsmLabel7:;
*((long*)((*(long *)((This_0) + (0))) + ((i_7) * (8)))) = (*(long *)((vec_1) + ((i_7) * (8))));
AsmLabel8:;
i_7 = ((i_7) + (1));
goto AsmLabel6;
AsmLabel9:;
}
long vector__getDim(long This){
//Define Local Variable
long This_8 = This;
long __tmp5_9;
//Function Body
if(((*(long *)((This_8) + (0))) == (0))) goto AsmLabel10; else goto AsmLabel12;;
AsmLabel10:;
return (0);
AsmLabel12:;
__tmp5_9 = size((*(long *)((This_8) + (0))));
return (__tmp5_9);
}
long vector__dot(long This, long rhs){
//Define Local Variable
long This_10 = This;
long rhs_11 = rhs;
long result_12;
long __tmp6_13;
long i_14;
//Function Body
i_14 = (0);
result_12 = (0);
AsmLabel13:;
__tmp6_13 = vector__getDim((This_10));
if(((i_14) < (__tmp6_13))) goto AsmLabel14; else goto AsmLabel15;;
AsmLabel14:;
result_12 = ((*(long *)((*(long *)((This_10) + (0))) + ((i_14) * (8)))) * (*(long *)((*(long *)((rhs_11) + (0))) + ((i_14) * (8)))));
i_14 = ((i_14) + (1));
goto AsmLabel13;
AsmLabel15:;
return (result_12);
}
long vector__scalarInPlaceMultiply(long This, long c){
//Define Local Variable
long This_15 = This;
long c_16 = c;
long i_17;
long __tmp7_18;
//Function Body
if(((*(long *)((This_15) + (0))) == (0))) goto AsmLabel16; else goto AsmLabel18;;
AsmLabel16:;
return (0);
AsmLabel18:;
i_17 = (0);
AsmLabel19:;
__tmp7_18 = vector__getDim((This_15));
if(((i_17) < (__tmp7_18))) goto AsmLabel20; else goto AsmLabel22;;
AsmLabel20:;
*((long*)((*(long *)((This_15) + (0))) + ((i_17) * (8)))) = ((c_16) * (*(long *)((*(long *)((This_15) + (0))) + ((i_17) * (8)))));
AsmLabel21:;
i_17 = ((i_17) + (1));
goto AsmLabel19;
AsmLabel22:;
return (This_15);
}
long vector__add(long This, long rhs){
//Define Local Variable
long This_19 = This;
long rhs_20 = rhs;
long temp_21;
long i_22;
long __tmp8_23;
long __tmp9_24;
long __tmp10_25;
long __tmp11_26;
long __tmp14_27;
long __tmp15_28;
long __tmp12_29;
long __tmp13_30;
long __tmp16_31;
long __tmp17_32;
//Function Body
__tmp9_24 = vector__getDim((This_19));
__tmp10_25 = vector__getDim((rhs_20));
__tmp8_23 = ((__tmp9_24) != (__tmp10_25));
if((__tmp8_23)) goto AsmLabel26; else goto AsmLabel27;;
AsmLabel26:;
__tmp11_26 = vector__getDim((This_19));
__tmp8_23 = ((__tmp11_26) == (0));
AsmLabel27:;
if((__tmp8_23)) goto AsmLabel23; else goto AsmLabel25;;
AsmLabel23:;
return (0);
AsmLabel25:;
__tmp12_29 = __lib_malloc((8));
temp_21 = (__tmp12_29);
__tmp16_31 = vector__getDim((This_19));
__tmp14_27 = (__tmp16_31);
__tmp13_30 = __lib_malloc((((__tmp14_27) * (8)) + (8)));
*((long*)(__tmp13_30)) = (__tmp14_27);
__tmp13_30 = ((__tmp13_30) + (8));
*((long*)((temp_21) + (0))) = (__tmp13_30);
i_22 = (0);
AsmLabel31:;
__tmp17_32 = vector__getDim((This_19));
if(((i_22) < (__tmp17_32))) goto AsmLabel32; else goto AsmLabel34;;
AsmLabel32:;
*((long*)((*(long *)((temp_21) + (0))) + ((i_22) * (8)))) = ((*(long *)((*(long *)((This_19) + (0))) + ((i_22) * (8)))) + (*(long *)((*(long *)((rhs_20) + (0))) + ((i_22) * (8)))));
AsmLabel33:;
i_22 = ((i_22) + (1));
goto AsmLabel31;
AsmLabel34:;
return (temp_21);
}
long vector__set(long This, long idx, long value){
//Define Local Variable
long This_33 = This;
long idx_34 = idx;
long value_35 = value;
long __tmp18_36;
//Function Body
__tmp18_36 = vector__getDim((This_33));
if(((__tmp18_36) < (idx_34))) goto AsmLabel35; else goto AsmLabel37;;
AsmLabel35:;
return (0);
AsmLabel37:;
*((long*)((*(long *)((This_33) + (0))) + ((idx_34) * (8)))) = (value_35);
return (1);
}
long vector__tostring(long This){
//Define Local Variable
long This_37 = This;
long temp_38;
long __tmp21_39;
long i_40;
long __tmp19_41;
long __tmp20_42;
long __tmp22_43;
//Function Body
temp_38 = (toMoStr("( "));
__tmp19_41 = vector__getDim((This_37));
if(((__tmp19_41) > (0))) goto AsmLabel38; else goto AsmLabel40;;
AsmLabel38:;
__tmp20_42 = toString((*(long *)((*(long *)((This_37) + (0))) + (0))));
temp_38 = str_add((temp_38), (__tmp20_42));
AsmLabel40:;
i_40 = (1);
AsmLabel41:;
__tmp21_39 = vector__getDim((This_37));
if(((i_40) < (__tmp21_39))) goto AsmLabel42; else goto AsmLabel44;;
AsmLabel42:;
__tmp22_43 = toString((*(long *)((*(long *)((This_37) + (0))) + ((i_40) * (8)))));
temp_38 = str_add(str_add((temp_38), (toMoStr(", "))), (__tmp22_43));
AsmLabel43:;
i_40 = ((i_40) + (1));
goto AsmLabel41;
AsmLabel44:;
temp_38 = str_add((temp_38), (toMoStr(" )")));
return (temp_38);
}
long vector__copy(long This, long rhs){
//Define Local Variable
long This_44 = This;
long rhs_45 = rhs;
long __tmp23_46;
long __tmp25_47;
long i_48;
long __tmp26_49;
long __tmp24_50;
long __tmp27_51;
long __tmp28_52;
//Function Body
if(((rhs_45) == (0))) goto AsmLabel45; else goto AsmLabel47;;
AsmLabel45:;
return (0);
AsmLabel47:;
__tmp23_46 = vector__getDim((rhs_45));
if(((__tmp23_46) == (0))) goto AsmLabel48; else goto AsmLabel49;;
AsmLabel48:;
*((long*)((This_44) + (0))) = (0);
goto AsmLabel50;
AsmLabel49:;
__tmp27_51 = vector__getDim((rhs_45));
__tmp25_47 = (__tmp27_51);
__tmp24_50 = __lib_malloc((((__tmp25_47) * (8)) + (8)));
*((long*)(__tmp24_50)) = (__tmp25_47);
__tmp24_50 = ((__tmp24_50) + (8));
*((long*)((This_44) + (0))) = (__tmp24_50);
i_48 = (0);
AsmLabel54:;
__tmp28_52 = vector__getDim((This_44));
if(((i_48) < (__tmp28_52))) goto AsmLabel55; else goto AsmLabel57;;
AsmLabel55:;
*((long*)((*(long *)((This_44) + (0))) + ((i_48) * (8)))) = (*(long *)((*(long *)((rhs_45) + (0))) + ((i_48) * (8))));
AsmLabel56:;
i_48 = ((i_48) + (1));
goto AsmLabel54;
AsmLabel57:;
AsmLabel50:;
return (1);
}
int main(){
//Grobal Variable Initialize
//Define Local Variable
long a_53;
long i_54;
long __tmp40_55;
long __tmp32_56;
long __tmp33_57;
long __tmp30_58;
long __tmp41_59;
long __tmp31_60;
long __tmp42_61;
long x_62;
long __tmp36_63;
long y_64;
long __tmp37_65;
long __tmp34_66;
long __tmp35_67;
long __tmp29_68;
long __tmp38_69;
long __tmp39_70;
//Function Body
__tmp29_68 = __lib_malloc((8));
x_62 = (__tmp29_68);
__tmp31_60 = (10);
__tmp30_58 = __lib_malloc((((__tmp31_60) * (8)) + (8)));
*((long*)(__tmp30_58)) = (__tmp31_60);
__tmp30_58 = ((__tmp30_58) + (8));
a_53 = (__tmp30_58);
i_54 = (0);
AsmLabel61:;
if(((i_54) < (10))) goto AsmLabel62; else goto AsmLabel64;;
AsmLabel62:;
*((long*)((a_53) + ((i_54) * (8)))) = ((9) - (i_54));
AsmLabel63:;
i_54 = ((i_54) + (1));
goto AsmLabel61;
AsmLabel64:;
vector__init((x_62), (a_53));
;
print((toMoStr("vector x: ")));
;
__tmp33_57 = vector__tostring((x_62));
println((__tmp33_57));
;
__tmp34_66 = __lib_malloc((8));
y_64 = (__tmp34_66);
vector__copy((y_64), (x_62));
;
__tmp35_67 = vector__set((y_64), (3), (817));
if((__tmp35_67)) goto AsmLabel65; else goto AsmLabel67;;
AsmLabel65:;
println((toMoStr("excited!")));
;
AsmLabel67:;
print((toMoStr("vector y: ")));
;
__tmp36_63 = vector__tostring((y_64));
println((__tmp36_63));
;
print((toMoStr("x + y: ")));
;
__tmp37_65 = vector__add((x_62), (y_64));
__tmp38_69 = vector__tostring((__tmp37_65));
println((__tmp38_69));
;
print((toMoStr("x * y: ")));
;
__tmp39_70 = vector__dot((x_62), (y_64));
__tmp40_55 = toString((__tmp39_70));
println((__tmp40_55));
;
print((toMoStr("(1 << 3) * y: ")));
;
__tmp41_59 = vector__scalarInPlaceMultiply((y_64), ((1) << (3)));
__tmp42_61 = vector__tostring((__tmp41_59));
println((__tmp42_61));
;
return (0);
}

//------------- IRBase Traverse End -------------

