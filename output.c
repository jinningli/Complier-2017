
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
long b_1_;
long c_2_;
long d_3_;
long __tmp0_4_;
long __tmp43_5_;
long e_6_;
long f_7_;
long g_8_;
long ans_9_;
long n_10_;
long t4_11_;
long t5_12_;
long t6_13_;
long __tmp4_14_;
long __tmp3_15_;
long __tmp40_16_;
long __tmp6_17_;
long __tmp5_18_;
long __tmp21_19_;
long __tmp22_20_;
long __tmp2_21_;
long __tmp41_22_;
long __tmp1_23_;
long __tmp20_24_;
long __tmp42_25_;
long __tmp25_26_;
long __tmp26_27_;
long __tmp23_28_;
long __tmp24_29_;
long __tmp29_30_;
long __tmp27_31_;
long __tmp28_32_;
long __tmp8_33_;
long __tmp7_34_;
long __tmp9_35_;
long __tmp10_36_;
long __tmp32_37_;
long __tmp11_38_;
long __tmp33_39_;
long __tmp30_40_;
long __tmp31_41_;
long __tmp14_42_;
long __tmp36_43_;
long __tmp15_44_;
long __tmp37_45_;
long __tmp12_46_;
long __tmp34_47_;
long __tmp13_48_;
long __tmp35_49_;
long __tmp18_50_;
long t1_51_;
long __tmp19_52_;
long t2_53_;
long __tmp16_54_;
long __tmp38_55_;
long t3_56_;
long __tmp17_57_;
long __tmp39_58_;
//Function Body
__tmp0_4_ = getInt();
n_10_ = (__tmp0_4_);
ans_9_ = (0);
a_0_ = (0);
AsmLabel0:;
if(((a_0_) < (n_10_))) goto AsmLabel1; else goto AsmLabel3;;
AsmLabel1:;
b_1_ = (0);
AsmLabel4:;
if(((b_1_) < (n_10_))) goto AsmLabel5; else goto AsmLabel7;;
AsmLabel5:;
c_2_ = (0);
AsmLabel8:;
if(((c_2_) < (n_10_))) goto AsmLabel9; else goto AsmLabel11;;
AsmLabel9:;
d_3_ = (0);
AsmLabel12:;
if(((d_3_) < (n_10_))) goto AsmLabel13; else goto AsmLabel15;;
AsmLabel13:;
e_6_ = (0);
AsmLabel16:;
if(((e_6_) < (n_10_))) goto AsmLabel17; else goto AsmLabel19;;
AsmLabel17:;
f_7_ = (0);
AsmLabel20:;
if(((f_7_) < (n_10_))) goto AsmLabel21; else goto AsmLabel23;;
AsmLabel21:;
g_8_ = (0);
AsmLabel24:;
if(((g_8_) < (n_10_))) goto AsmLabel25; else goto AsmLabel27;;
AsmLabel25:;
__tmp4_14_ = ((a_0_) == (b_1_));
if((__tmp4_14_)) goto AsmLabel34; else goto AsmLabel35;;
AsmLabel34:;
__tmp4_14_ = ((c_2_) > (0));
AsmLabel35:;
__tmp3_15_ = (__tmp4_14_);
if((__tmp3_15_)) goto AsmLabel32; else goto AsmLabel33;;
AsmLabel32:;
__tmp6_17_ = ((d_3_) == (e_6_));
if((__tmp6_17_)) goto AsmLabel38; else goto AsmLabel39;;
AsmLabel38:;
__tmp6_17_ = ((f_7_) > (0));
AsmLabel39:;
__tmp5_18_ = (__tmp6_17_);
if((__tmp5_18_)) goto AsmLabel36; else goto AsmLabel37;;
AsmLabel36:;
__tmp5_18_ = ((g_8_) > (0));
AsmLabel37:;
__tmp3_15_ = (__tmp5_18_);
AsmLabel33:;
__tmp2_21_ = (__tmp3_15_);
if((__tmp2_21_)) goto AsmLabel30; else goto AsmLabel31;;
AsmLabel30:;
__tmp2_21_ = ((a_0_) == (g_8_));
AsmLabel31:;
__tmp1_23_ = (__tmp2_21_);
if((__tmp1_23_)) goto AsmLabel28; else goto AsmLabel29;;
AsmLabel28:;
__tmp7_34_ = ((d_3_) > (0));
if((__tmp7_34_)) goto AsmLabel40; else goto AsmLabel41;;
AsmLabel40:;
__tmp7_34_ = ((f_7_) > (0));
AsmLabel41:;
__tmp1_23_ = (__tmp7_34_);
AsmLabel29:;
t1_51_ = (__tmp1_23_);
__tmp11_38_ = ((a_0_) == (b_1_));
if((__tmp11_38_)) goto AsmLabel48; else goto AsmLabel49;;
AsmLabel48:;
__tmp11_38_ = ((c_2_) > (0));
AsmLabel49:;
__tmp10_36_ = (__tmp11_38_);
if((__tmp10_36_)) goto AsmLabel46; else goto AsmLabel47;;
AsmLabel46:;
__tmp13_48_ = ((d_3_) == (e_6_));
if((__tmp13_48_)) goto AsmLabel52; else goto AsmLabel53;;
AsmLabel52:;
__tmp13_48_ = ((f_7_) > (0));
AsmLabel53:;
__tmp12_46_ = (__tmp13_48_);
if((__tmp12_46_)) goto AsmLabel50; else goto AsmLabel51;;
AsmLabel50:;
__tmp12_46_ = ((g_8_) > (0));
AsmLabel51:;
__tmp10_36_ = (__tmp12_46_);
AsmLabel47:;
__tmp9_35_ = (__tmp10_36_);
if((__tmp9_35_)) goto AsmLabel44; else goto AsmLabel45;;
AsmLabel44:;
__tmp9_35_ = ((a_0_) == (g_8_));
AsmLabel45:;
__tmp8_33_ = (__tmp9_35_);
if((__tmp8_33_)) goto AsmLabel42; else goto AsmLabel43;;
AsmLabel42:;
__tmp14_42_ = ((d_3_) > (0));
if((__tmp14_42_)) goto AsmLabel54; else goto AsmLabel55;;
AsmLabel54:;
__tmp14_42_ = ((f_7_) > (0));
AsmLabel55:;
__tmp8_33_ = (__tmp14_42_);
AsmLabel43:;
t2_53_ = (__tmp8_33_);
__tmp18_50_ = ((a_0_) == (b_1_));
if((__tmp18_50_)) goto AsmLabel62; else goto AsmLabel63;;
AsmLabel62:;
__tmp18_50_ = ((c_2_) > (0));
AsmLabel63:;
__tmp17_57_ = (__tmp18_50_);
if((__tmp17_57_)) goto AsmLabel60; else goto AsmLabel61;;
AsmLabel60:;
__tmp20_24_ = ((d_3_) == (e_6_));
if((__tmp20_24_)) goto AsmLabel66; else goto AsmLabel67;;
AsmLabel66:;
__tmp20_24_ = ((f_7_) > (0));
AsmLabel67:;
__tmp19_52_ = (__tmp20_24_);
if((__tmp19_52_)) goto AsmLabel64; else goto AsmLabel65;;
AsmLabel64:;
__tmp19_52_ = ((g_8_) > (0));
AsmLabel65:;
__tmp17_57_ = (__tmp19_52_);
AsmLabel61:;
__tmp16_54_ = (__tmp17_57_);
if((__tmp16_54_)) goto AsmLabel58; else goto AsmLabel59;;
AsmLabel58:;
__tmp16_54_ = ((a_0_) == (g_8_));
AsmLabel59:;
__tmp15_44_ = (__tmp16_54_);
if((__tmp15_44_)) goto AsmLabel56; else goto AsmLabel57;;
AsmLabel56:;
__tmp21_19_ = ((d_3_) > (0));
if((__tmp21_19_)) goto AsmLabel68; else goto AsmLabel69;;
AsmLabel68:;
__tmp21_19_ = ((f_7_) > (0));
AsmLabel69:;
__tmp15_44_ = (__tmp21_19_);
AsmLabel57:;
t3_56_ = (__tmp15_44_);
__tmp25_26_ = ((a_0_) == (b_1_));
if((__tmp25_26_)) goto AsmLabel76; else goto AsmLabel77;;
AsmLabel76:;
__tmp25_26_ = ((c_2_) > (0));
AsmLabel77:;
__tmp24_29_ = (__tmp25_26_);
if((__tmp24_29_)) goto AsmLabel74; else goto AsmLabel75;;
AsmLabel74:;
__tmp27_31_ = ((d_3_) == (e_6_));
if((__tmp27_31_)) goto AsmLabel80; else goto AsmLabel81;;
AsmLabel80:;
__tmp27_31_ = ((f_7_) > (0));
AsmLabel81:;
__tmp26_27_ = (__tmp27_31_);
if((__tmp26_27_)) goto AsmLabel78; else goto AsmLabel79;;
AsmLabel78:;
__tmp26_27_ = ((g_8_) > (0));
AsmLabel79:;
__tmp24_29_ = (__tmp26_27_);
AsmLabel75:;
__tmp23_28_ = (__tmp24_29_);
if((__tmp23_28_)) goto AsmLabel72; else goto AsmLabel73;;
AsmLabel72:;
__tmp23_28_ = ((a_0_) == (g_8_));
AsmLabel73:;
__tmp22_20_ = (__tmp23_28_);
if((__tmp22_20_)) goto AsmLabel70; else goto AsmLabel71;;
AsmLabel70:;
__tmp28_32_ = ((d_3_) > (0));
if((__tmp28_32_)) goto AsmLabel82; else goto AsmLabel83;;
AsmLabel82:;
__tmp28_32_ = ((f_7_) > (0));
AsmLabel83:;
__tmp22_20_ = (__tmp28_32_);
AsmLabel71:;
t4_11_ = (__tmp22_20_);
__tmp32_37_ = ((a_0_) == (b_1_));
if((__tmp32_37_)) goto AsmLabel90; else goto AsmLabel91;;
AsmLabel90:;
__tmp32_37_ = ((c_2_) > (0));
AsmLabel91:;
__tmp31_41_ = (__tmp32_37_);
if((__tmp31_41_)) goto AsmLabel88; else goto AsmLabel89;;
AsmLabel88:;
__tmp34_47_ = ((d_3_) == (e_6_));
if((__tmp34_47_)) goto AsmLabel94; else goto AsmLabel95;;
AsmLabel94:;
__tmp34_47_ = ((f_7_) > (0));
AsmLabel95:;
__tmp33_39_ = (__tmp34_47_);
if((__tmp33_39_)) goto AsmLabel92; else goto AsmLabel93;;
AsmLabel92:;
__tmp33_39_ = ((g_8_) > (0));
AsmLabel93:;
__tmp31_41_ = (__tmp33_39_);
AsmLabel89:;
__tmp30_40_ = (__tmp31_41_);
if((__tmp30_40_)) goto AsmLabel86; else goto AsmLabel87;;
AsmLabel86:;
__tmp30_40_ = ((a_0_) == (g_8_));
AsmLabel87:;
__tmp29_30_ = (__tmp30_40_);
if((__tmp29_30_)) goto AsmLabel84; else goto AsmLabel85;;
AsmLabel84:;
__tmp35_49_ = ((d_3_) > (0));
if((__tmp35_49_)) goto AsmLabel96; else goto AsmLabel97;;
AsmLabel96:;
__tmp35_49_ = ((f_7_) > (0));
AsmLabel97:;
__tmp29_30_ = (__tmp35_49_);
AsmLabel85:;
t5_12_ = (__tmp29_30_);
__tmp39_58_ = ((a_0_) == (b_1_));
if((__tmp39_58_)) goto AsmLabel104; else goto AsmLabel105;;
AsmLabel104:;
__tmp39_58_ = ((c_2_) > (0));
AsmLabel105:;
__tmp38_55_ = (__tmp39_58_);
if((__tmp38_55_)) goto AsmLabel102; else goto AsmLabel103;;
AsmLabel102:;
__tmp41_22_ = ((d_3_) == (e_6_));
if((__tmp41_22_)) goto AsmLabel108; else goto AsmLabel109;;
AsmLabel108:;
__tmp41_22_ = ((f_7_) > (0));
AsmLabel109:;
__tmp40_16_ = (__tmp41_22_);
if((__tmp40_16_)) goto AsmLabel106; else goto AsmLabel107;;
AsmLabel106:;
__tmp40_16_ = ((g_8_) > (0));
AsmLabel107:;
__tmp38_55_ = (__tmp40_16_);
AsmLabel103:;
__tmp37_45_ = (__tmp38_55_);
if((__tmp37_45_)) goto AsmLabel100; else goto AsmLabel101;;
AsmLabel100:;
__tmp37_45_ = ((a_0_) == (g_8_));
AsmLabel101:;
__tmp36_43_ = (__tmp37_45_);
if((__tmp36_43_)) goto AsmLabel98; else goto AsmLabel99;;
AsmLabel98:;
__tmp42_25_ = ((d_3_) > (0));
if((__tmp42_25_)) goto AsmLabel110; else goto AsmLabel111;;
AsmLabel110:;
__tmp42_25_ = ((f_7_) > (0));
AsmLabel111:;
__tmp36_43_ = (__tmp42_25_);
AsmLabel99:;
t6_13_ = (__tmp36_43_);
if((t1_51_)) goto AsmLabel112; else goto AsmLabel114;;
AsmLabel112:;
ans_9_ = ((ans_9_) + (1));
AsmLabel114:;
if((t2_53_)) goto AsmLabel115; else goto AsmLabel117;;
AsmLabel115:;
ans_9_ = ((ans_9_) + (1));
AsmLabel117:;
if((t3_56_)) goto AsmLabel118; else goto AsmLabel120;;
AsmLabel118:;
ans_9_ = ((ans_9_) + (1));
AsmLabel120:;
if((t4_11_)) goto AsmLabel121; else goto AsmLabel123;;
AsmLabel121:;
ans_9_ = ((ans_9_) + (1));
AsmLabel123:;
if((t5_12_)) goto AsmLabel124; else goto AsmLabel126;;
AsmLabel124:;
ans_9_ = ((ans_9_) + (1));
AsmLabel126:;
if((t6_13_)) goto AsmLabel127; else goto AsmLabel129;;
AsmLabel127:;
ans_9_ = ((ans_9_) + (1));
AsmLabel129:;
AsmLabel26:;
g_8_ = ((g_8_) + (1));
goto AsmLabel24;
AsmLabel27:;
AsmLabel22:;
f_7_ = ((f_7_) + (1));
goto AsmLabel20;
AsmLabel23:;
AsmLabel18:;
e_6_ = ((e_6_) + (1));
goto AsmLabel16;
AsmLabel19:;
AsmLabel14:;
d_3_ = ((d_3_) + (1));
goto AsmLabel12;
AsmLabel15:;
AsmLabel10:;
c_2_ = ((c_2_) + (1));
goto AsmLabel8;
AsmLabel11:;
AsmLabel6:;
b_1_ = ((b_1_) + (1));
goto AsmLabel4;
AsmLabel7:;
AsmLabel2:;
a_0_ = ((a_0_) + (1));
goto AsmLabel0;
AsmLabel3:;
__tmp43_5_ = toString((ans_9_));
print((__tmp43_5_));
;
return (0);
}

//------------- IRBase Traverse End -------------

