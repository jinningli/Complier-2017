
//------------- IRBase Translate -------------

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

//Function & Class Declare

long hex2int(long x);
long int2chr(long x);
long toStringHex(long x);
long rotate_left(long x, long shift);
long add(long x, long y);
long lohi(long lo, long hi);
long sha1(long input, long length);
void computeSHA1(long input);
long nextLetter(long now);
long nextText(long now, long length);
long array_equal(long a, long b);
void crackSHA1(long input);
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
long asciiTable_;
long MAXCHUNK_;
long MAXLENGTH_;
long chunks_;
long inputBuffer_;
long outputBuffer_;

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
long hex2int(long x){
//Define Local Variable
long x_0_ = x;
long result_1_;
long __tmp11_2_;
long i_3_;
long __tmp12_4_;
long digit_5_;
//Function Body
result_1_ = (0);
i_3_ = (0);
AsmLabel12:;
__tmp11_2_ = strlength((x_0_));
if(((i_3_) < (__tmp11_2_))) goto AsmLabel13; else goto AsmLabel15;;
AsmLabel13:;
__tmp12_4_ = ord((x_0_), (i_3_));
digit_5_ = (__tmp12_4_);
if(((digit_5_) >= (48))) goto AsmLabel19; else goto AsmLabel17;;
AsmLabel19:;
if(((digit_5_) <= (57))) goto AsmLabel16; else goto AsmLabel17;;
AsmLabel16:;
result_1_ = ((((result_1_) * (16)) + (digit_5_)) - (48));
goto AsmLabel18;
AsmLabel17:;
if(((digit_5_) >= (65))) goto AsmLabel25; else goto AsmLabel23;;
AsmLabel25:;
if(((digit_5_) <= (70))) goto AsmLabel22; else goto AsmLabel23;;
AsmLabel22:;
result_1_ = (((((result_1_) * (16)) + (digit_5_)) - (65)) + (10));
goto AsmLabel24;
AsmLabel23:;
if(((digit_5_) >= (97))) goto AsmLabel31; else goto AsmLabel29;;
AsmLabel31:;
if(((digit_5_) <= (102))) goto AsmLabel28; else goto AsmLabel29;;
AsmLabel28:;
result_1_ = (((((result_1_) * (16)) + (digit_5_)) - (97)) + (10));
goto AsmLabel30;
AsmLabel29:;
return (0);
AsmLabel30:;
AsmLabel24:;
AsmLabel18:;
AsmLabel14:;
i_3_ = ((i_3_) + (1));
goto AsmLabel12;
AsmLabel15:;
return (result_1_);
}
long int2chr(long x){
//Define Local Variable
long x_6_ = x;
long __tmp13_7_;
//Function Body
if(((x_6_) >= (32))) goto AsmLabel37; else goto AsmLabel36;;
AsmLabel37:;
if(((x_6_) <= (126))) goto AsmLabel34; else goto AsmLabel36;;
AsmLabel34:;
__tmp13_7_ = substring((asciiTable_), ((x_6_) - (32)), ((x_6_) - (32)));
return (__tmp13_7_);
AsmLabel36:;
return (toMoStr(""));
}
long toStringHex(long x){
//Define Local Variable
long x_8_ = x;
long ret_9_;
long i_10_;
long __tmp14_11_;
long __tmp15_12_;
long digit_13_;
//Function Body
ret_9_ = (toMoStr(""));
i_10_ = (28);
AsmLabel40:;
if(((i_10_) >= (0))) goto AsmLabel41; else goto AsmLabel43;;
AsmLabel41:;
digit_13_ = (((x_8_) >> (i_10_)) & (15));
if(((digit_13_) < (10))) goto AsmLabel44; else goto AsmLabel45;;
AsmLabel44:;
__tmp14_11_ = int2chr(((48) + (digit_13_)));
ret_9_ = str_add((ret_9_), (__tmp14_11_));
goto AsmLabel46;
AsmLabel45:;
__tmp15_12_ = int2chr((((65) + (digit_13_)) - (10)));
ret_9_ = str_add((ret_9_), (__tmp15_12_));
AsmLabel46:;
AsmLabel42:;
i_10_ = ((i_10_) - (4));
goto AsmLabel40;
AsmLabel43:;
return (ret_9_);
}
long rotate_left(long x, long shift){
//Define Local Variable
long x_14_ = x;
long shift_15_ = shift;
//Function Body
if(((shift_15_) == (1))) goto AsmLabel48; else goto AsmLabel50;;
AsmLabel48:;
return ((((x_14_) & (2147483647)) << (1)) | (((x_14_) >> (31)) & (1)));
AsmLabel50:;
if(((shift_15_) == (31))) goto AsmLabel52; else goto AsmLabel54;;
AsmLabel52:;
return ((((x_14_) & (1)) << (31)) | (((x_14_) >> (1)) & (2147483647)));
AsmLabel54:;
return ((((x_14_) & (((1) << ((32) - (shift_15_))) - (1))) << (shift_15_)) | (((x_14_) >> ((32) - (shift_15_))) & (((1) << (shift_15_)) - (1))));
}
long add(long x, long y){
//Define Local Variable
long x_16_ = x;
long y_17_ = y;
long high_18_;
long low_19_;
//Function Body
low_19_ = (((x_16_) & (65535)) + ((y_17_) & (65535)));
high_18_ = ((((((x_16_) >> (16)) & (65535)) + (((y_17_) >> (16)) & (65535))) + ((low_19_) >> (16))) & (65535));
return (((high_18_) << (16)) | ((low_19_) & (65535)));
}
long lohi(long lo, long hi){
//Define Local Variable
long lo_20_ = lo;
long hi_21_ = hi;
//Function Body
return ((lo_20_) | ((hi_21_) << (16)));
}
long sha1(long input, long length){
//Define Local Variable
long input_22_ = input;
long length_23_ = length;
long h0_24_;
long nChunk_25_;
long i_26_;
long h1_27_;
long j_28_;
long h2_29_;
long h3_30_;
long h4_31_;
long __tmp18_32_;
long __tmp16_33_;
long __tmp17_34_;
long a_35_;
long b_36_;
long c_37_;
long d_38_;
long __tmp32_39_;
long e_40_;
long __tmp30_41_;
long __tmp31_42_;
long __tmp29_43_;
long __tmp28_44_;
long __tmp19_45_;
long temp_46_;
long __tmp22_47_;
long f_48_;
long __tmp25_49_;
long __tmp26_50_;
long __tmp23_51_;
long k_52_;
long __tmp24_53_;
long __tmp27_54_;
long __tmp20_55_;
long __tmp21_56_;
//Function Body
nChunk_25_ = (((((length_23_) + (64)) - (56)) / (64)) + (1));
if(((nChunk_25_) > (MAXCHUNK_))) goto AsmLabel56; else goto AsmLabel58;;
AsmLabel56:;
println((toMoStr("nChunk > MAXCHUNK!")));
;
return (0);
AsmLabel58:;
i_26_ = (0);
AsmLabel60:;
if(((i_26_) < (nChunk_25_))) goto AsmLabel61; else goto AsmLabel63;;
AsmLabel61:;
j_28_ = (0);
AsmLabel64:;
if(((j_28_) < (80))) goto AsmLabel65; else goto AsmLabel67;;
AsmLabel65:;
*((long*)((*(long *)((chunks_) + ((i_26_) * (8)))) + ((j_28_) * (8)))) = (0);
AsmLabel66:;
j_28_ = ((j_28_) + (1));
goto AsmLabel64;
AsmLabel67:;
AsmLabel62:;
i_26_ = ((i_26_) + (1));
goto AsmLabel60;
AsmLabel63:;
i_26_ = (0);
AsmLabel68:;
if(((i_26_) < (length_23_))) goto AsmLabel69; else goto AsmLabel71;;
AsmLabel69:;
*((long*)((*(long *)((chunks_) + (((i_26_) / (64)) * (8)))) + ((((i_26_) % (64)) / (4)) * (8)))) = ((*(long *)((*(long *)((chunks_) + (((i_26_) / (64)) * (8)))) + ((((i_26_) % (64)) / (4)) * (8)))) | ((*(long *)((input_22_) + ((i_26_) * (8)))) << (((3) - ((i_26_) % (4))) * (8))));
AsmLabel70:;
i_26_ = ((i_26_) + (1));
goto AsmLabel68;
AsmLabel71:;
*((long*)((*(long *)((chunks_) + (((i_26_) / (64)) * (8)))) + ((((i_26_) % (64)) / (4)) * (8)))) = ((*(long *)((*(long *)((chunks_) + (((i_26_) / (64)) * (8)))) + ((((i_26_) % (64)) / (4)) * (8)))) | ((128) << (((3) - ((i_26_) % (4))) * (8))));
*((long*)((*(long *)((chunks_) + (((nChunk_25_) - (1)) * (8)))) + (120))) = ((length_23_) << (3));
*((long*)((*(long *)((chunks_) + (((nChunk_25_) - (1)) * (8)))) + (112))) = (((length_23_) >> (29)) & (7));
h0_24_ = (1732584193);
__tmp16_33_ = lohi((43913), (61389));
h1_27_ = (__tmp16_33_);
__tmp17_34_ = lohi((56574), (39098));
h2_29_ = (__tmp17_34_);
h3_30_ = (271733878);
__tmp18_32_ = lohi((57840), (50130));
h4_31_ = (__tmp18_32_);
i_26_ = (0);
AsmLabel72:;
if(((i_26_) < (nChunk_25_))) goto AsmLabel73; else goto AsmLabel75;;
AsmLabel73:;
j_28_ = (16);
AsmLabel76:;
if(((j_28_) < (80))) goto AsmLabel77; else goto AsmLabel79;;
AsmLabel77:;
__tmp19_45_ = rotate_left(((((*(long *)((*(long *)((chunks_) + ((i_26_) * (8)))) + (((j_28_) - (3)) * (8)))) ^ (*(long *)((*(long *)((chunks_) + ((i_26_) * (8)))) + (((j_28_) - (8)) * (8))))) ^ (*(long *)((*(long *)((chunks_) + ((i_26_) * (8)))) + (((j_28_) - (14)) * (8))))) ^ (*(long *)((*(long *)((chunks_) + ((i_26_) * (8)))) + (((j_28_) - (16)) * (8))))), (1));
*((long*)((*(long *)((chunks_) + ((i_26_) * (8)))) + ((j_28_) * (8)))) = (__tmp19_45_);
AsmLabel78:;
j_28_ = ((j_28_) + (1));
goto AsmLabel76;
AsmLabel79:;
a_35_ = (h0_24_);
b_36_ = (h1_27_);
c_37_ = (h2_29_);
d_38_ = (h3_30_);
e_40_ = (h4_31_);
j_28_ = (0);
AsmLabel80:;
if(((j_28_) < (80))) goto AsmLabel81; else goto AsmLabel83;;
AsmLabel81:;
if(((j_28_) < (20))) goto AsmLabel84; else goto AsmLabel85;;
AsmLabel84:;
f_48_ = (((b_36_) & (c_37_)) | (~(b_36_) & (d_38_)));
k_52_ = (1518500249);
goto AsmLabel86;
AsmLabel85:;
if(((j_28_) < (40))) goto AsmLabel88; else goto AsmLabel89;;
AsmLabel88:;
f_48_ = (((b_36_) ^ (c_37_)) ^ (d_38_));
k_52_ = (1859775393);
goto AsmLabel90;
AsmLabel89:;
if(((j_28_) < (60))) goto AsmLabel92; else goto AsmLabel93;;
AsmLabel92:;
f_48_ = ((((b_36_) & (c_37_)) | ((b_36_) & (d_38_))) | ((c_37_) & (d_38_)));
__tmp20_55_ = lohi((48348), (36635));
k_52_ = (__tmp20_55_);
goto AsmLabel94;
AsmLabel93:;
f_48_ = (((b_36_) ^ (c_37_)) ^ (d_38_));
__tmp21_56_ = lohi((49622), (51810));
k_52_ = (__tmp21_56_);
AsmLabel94:;
AsmLabel90:;
AsmLabel86:;
__tmp22_47_ = rotate_left((a_35_), (5));
__tmp23_51_ = add((__tmp22_47_), (e_40_));
__tmp24_53_ = add((f_48_), (k_52_));
__tmp25_49_ = add((__tmp23_51_), (__tmp24_53_));
__tmp26_50_ = add((__tmp25_49_), (*(long *)((*(long *)((chunks_) + ((i_26_) * (8)))) + ((j_28_) * (8)))));
temp_46_ = (__tmp26_50_);
e_40_ = (d_38_);
d_38_ = (c_37_);
__tmp27_54_ = rotate_left((b_36_), (30));
c_37_ = (__tmp27_54_);
b_36_ = (a_35_);
a_35_ = (temp_46_);
AsmLabel82:;
j_28_ = ((j_28_) + (1));
goto AsmLabel80;
AsmLabel83:;
__tmp28_44_ = add((h0_24_), (a_35_));
h0_24_ = (__tmp28_44_);
__tmp29_43_ = add((h1_27_), (b_36_));
h1_27_ = (__tmp29_43_);
__tmp30_41_ = add((h2_29_), (c_37_));
h2_29_ = (__tmp30_41_);
__tmp31_42_ = add((h3_30_), (d_38_));
h3_30_ = (__tmp31_42_);
__tmp32_39_ = add((h4_31_), (e_40_));
h4_31_ = (__tmp32_39_);
AsmLabel74:;
i_26_ = ((i_26_) + (1));
goto AsmLabel72;
AsmLabel75:;
*((long*)((outputBuffer_) + (0))) = (h0_24_);
*((long*)((outputBuffer_) + (8))) = (h1_27_);
*((long*)((outputBuffer_) + (16))) = (h2_29_);
*((long*)((outputBuffer_) + (24))) = (h3_30_);
*((long*)((outputBuffer_) + (32))) = (h4_31_);
return (outputBuffer_);
}
void computeSHA1(long input){
//Define Local Variable
long input_57_ = input;
long result_58_;
long __tmp36_59_;
long i_60_;
long __tmp35_61_;
long __tmp33_62_;
long __tmp34_63_;
long __tmp37_64_;
long __tmp38_65_;
//Function Body
i_60_ = (0);
AsmLabel96:;
__tmp33_62_ = strlength((input_57_));
if(((i_60_) < (__tmp33_62_))) goto AsmLabel97; else goto AsmLabel99;;
AsmLabel97:;
__tmp34_63_ = ord((input_57_), (i_60_));
*((long*)((inputBuffer_) + ((i_60_) * (8)))) = (__tmp34_63_);
AsmLabel98:;
i_60_ = ((i_60_) + (1));
goto AsmLabel96;
AsmLabel99:;
__tmp35_61_ = strlength((input_57_));
__tmp36_59_ = sha1((inputBuffer_), (__tmp35_61_));
result_58_ = (__tmp36_59_);
i_60_ = (0);
AsmLabel100:;
__tmp37_64_ = size((result_58_));
if(((i_60_) < (__tmp37_64_))) goto AsmLabel101; else goto AsmLabel103;;
AsmLabel101:;
__tmp38_65_ = toStringHex((*(long *)((result_58_) + ((i_60_) * (8)))));
print((__tmp38_65_));
;
AsmLabel102:;
i_60_ = ((i_60_) + (1));
goto AsmLabel100;
AsmLabel103:;
println((toMoStr("")));
;
}
long nextLetter(long now){
//Define Local Variable
long now_66_ = now;
//Function Body
if(((now_66_) == (122))) goto AsmLabel104; else goto AsmLabel106;;
AsmLabel104:;
return -(1);
AsmLabel106:;
if(((now_66_) == (90))) goto AsmLabel108; else goto AsmLabel110;;
AsmLabel108:;
return (97);
AsmLabel110:;
if(((now_66_) == (57))) goto AsmLabel112; else goto AsmLabel114;;
AsmLabel112:;
return (65);
AsmLabel114:;
return ((now_66_) + (1));
}
long nextText(long now, long length){
//Define Local Variable
long now_67_ = now;
long length_68_ = length;
long i_69_;
long __tmp39_70_;
//Function Body
i_69_ = ((length_68_) - (1));
AsmLabel116:;
if(((i_69_) >= (0))) goto AsmLabel117; else goto AsmLabel119;;
AsmLabel117:;
__tmp39_70_ = nextLetter((*(long *)((now_67_) + ((i_69_) * (8)))));
*((long*)((now_67_) + ((i_69_) * (8)))) = (__tmp39_70_);
if(((*(long *)((now_67_) + ((i_69_) * (8)))) == -(1))) goto AsmLabel120; else goto AsmLabel121;;
AsmLabel120:;
*((long*)((now_67_) + ((i_69_) * (8)))) = (48);
goto AsmLabel122;
AsmLabel121:;
return (1);
AsmLabel122:;
AsmLabel118:;
i_69_ = ((i_69_) - (1));
goto AsmLabel116;
AsmLabel119:;
return (0);
}
long array_equal(long a, long b){
//Define Local Variable
long a_71_ = a;
long b_72_ = b;
long __tmp40_73_;
long __tmp41_74_;
long i_75_;
long __tmp42_76_;
//Function Body
__tmp40_73_ = size((a_71_));
__tmp41_74_ = size((b_72_));
if(((__tmp40_73_) != (__tmp41_74_))) goto AsmLabel124; else goto AsmLabel126;;
AsmLabel124:;
return (0);
AsmLabel126:;
i_75_ = (0);
AsmLabel128:;
__tmp42_76_ = size((a_71_));
if(((i_75_) < (__tmp42_76_))) goto AsmLabel129; else goto AsmLabel131;;
AsmLabel129:;
if(((*(long *)((a_71_) + ((i_75_) * (8)))) != (*(long *)((b_72_) + ((i_75_) * (8)))))) goto AsmLabel132; else goto AsmLabel134;;
AsmLabel132:;
return (0);
AsmLabel134:;
AsmLabel130:;
i_75_ = ((i_75_) + (1));
goto AsmLabel128;
AsmLabel131:;
return (1);
}
void crackSHA1(long input){
//Define Local Variable
long input_77_ = input;
long MAXDIGIT_78_;
long __tmp43_79_;
long __tmp44_80_;
long i_81_;
long __tmp45_82_;
long __tmp46_83_;
long target_84_;
long digit_85_;
long __tmp47_86_;
long __tmp48_87_;
long __tmp50_88_;
long __tmp52_89_;
long __tmp49_90_;
long out_91_;
long __tmp51_92_;
//Function Body
__tmp44_80_ = (5);
__tmp43_79_ = __lib_malloc((((__tmp44_80_) * (8)) + (8)));
*((long*)(__tmp43_79_)) = (__tmp44_80_);
__tmp43_79_ = ((__tmp43_79_) + (8));
target_84_ = (__tmp43_79_);
__tmp46_83_ = strlength((input_77_));
if(((__tmp46_83_) != (40))) goto AsmLabel139; else goto AsmLabel141;;
AsmLabel139:;
println((toMoStr("Invalid input")));
;
return;
AsmLabel141:;
i_81_ = (0);
AsmLabel143:;
if(((i_81_) < (5))) goto AsmLabel144; else goto AsmLabel146;;
AsmLabel144:;
*((long*)((target_84_) + ((i_81_) * (8)))) = (0);
AsmLabel145:;
i_81_ = ((i_81_) + (1));
goto AsmLabel143;
AsmLabel146:;
i_81_ = (0);
AsmLabel147:;
if(((i_81_) < (40))) goto AsmLabel148; else goto AsmLabel150;;
AsmLabel148:;
__tmp47_86_ = substring((input_77_), (i_81_), ((i_81_) + (3)));
__tmp48_87_ = hex2int((__tmp47_86_));
*((long*)((target_84_) + (((i_81_) / (8)) * (8)))) = ((*(long *)((target_84_) + (((i_81_) / (8)) * (8)))) | ((__tmp48_87_) << (((1) - (((i_81_) / (4)) % (2))) * (16))));
AsmLabel149:;
i_81_ = ((i_81_) + (4));
goto AsmLabel147;
AsmLabel150:;
MAXDIGIT_78_ = (4);
digit_85_ = (1);
AsmLabel151:;
if(((digit_85_) <= (MAXDIGIT_78_))) goto AsmLabel152; else goto AsmLabel154;;
AsmLabel152:;
i_81_ = (0);
AsmLabel155:;
if(((i_81_) < (digit_85_))) goto AsmLabel156; else goto AsmLabel158;;
AsmLabel156:;
*((long*)((inputBuffer_) + ((i_81_) * (8)))) = (48);
AsmLabel157:;
i_81_ = ((i_81_) + (1));
goto AsmLabel155;
AsmLabel158:;
AsmLabel159:;
if((1)) goto AsmLabel160; else goto AsmLabel161;;
AsmLabel160:;
__tmp49_90_ = sha1((inputBuffer_), (digit_85_));
out_91_ = (__tmp49_90_);
__tmp50_88_ = array_equal((out_91_), (target_84_));
if((__tmp50_88_)) goto AsmLabel162; else goto AsmLabel164;;
AsmLabel162:;
i_81_ = (0);
AsmLabel165:;
if(((i_81_) < (digit_85_))) goto AsmLabel166; else goto AsmLabel168;;
AsmLabel166:;
__tmp51_92_ = int2chr((*(long *)((inputBuffer_) + ((i_81_) * (8)))));
print((__tmp51_92_));
;
AsmLabel167:;
i_81_ = ((i_81_) + (1));
goto AsmLabel165;
AsmLabel168:;
println((toMoStr("")));
;
return;
AsmLabel164:;
__tmp52_89_ = nextText((inputBuffer_), (digit_85_));
if(!(__tmp52_89_)) goto AsmLabel169; else goto AsmLabel171;;
AsmLabel169:;
goto AsmLabel161;
AsmLabel171:;
goto AsmLabel159;
AsmLabel161:;
AsmLabel153:;
digit_85_ = ((digit_85_) + (1));
goto AsmLabel151;
AsmLabel154:;
println((toMoStr("Not Found!")));
;
}
int main(){
//Grobal Variable Initialize
asciiTable_ = (toMoStr(" !\"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~"));
MAXCHUNK_ = (100);
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
long __tmp10_;
(toMoStr(" !\"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~"));
;
(100);
;
((((MAXCHUNK_) - (1)) * (64)) - (16));
;
__tmp1_ = (MAXCHUNK_);
__tmp0_ = __lib_malloc((((__tmp1_) * (8)) + (8)));
*((long*)(__tmp0_)) = (__tmp1_);
__tmp0_ = ((__tmp0_) + (8));
__tmp2_ = (0);
goto AsmLabel0;
AsmLabel1:;
__tmp3_ = (80);
*((long*)((__tmp0_) + ((__tmp2_) * (8)))) = __lib_malloc((((__tmp3_) * (8)) + (8)));
*((long*)(*(long *)((__tmp0_) + ((__tmp2_) * (8))))) = (__tmp3_);
*((long*)((__tmp0_) + ((__tmp2_) * (8)))) = ((*(long *)((__tmp0_) + ((__tmp2_) * (8)))) + (8));
__tmp2_ = ((__tmp2_) + (1));
AsmLabel0:;
if(((__tmp2_) < (__tmp1_))) goto AsmLabel1; else goto AsmLabel2;;
AsmLabel2:;
(__tmp0_);
;
__tmp6_ = (MAXLENGTH_);
__tmp5_ = __lib_malloc((((__tmp6_) * (8)) + (8)));
*((long*)(__tmp5_)) = (__tmp6_);
__tmp5_ = ((__tmp5_) + (8));
(__tmp5_);
;
__tmp9_ = (5);
__tmp8_ = __lib_malloc((((__tmp9_) * (8)) + (8)));
*((long*)(__tmp8_)) = (__tmp9_);
__tmp8_ = ((__tmp8_) + (8));
(__tmp8_);
;
MAXLENGTH_ = ((((MAXCHUNK_) - (1)) * (64)) - (16));
chunks_ = (__tmp0_);
inputBuffer_ = (__tmp5_);
outputBuffer_ = (__tmp8_);
//Define Local Variable
long op_93_;
long input_94_;
long __tmp53_95_;
long __tmp54_96_;
long __tmp55_97_;
//Function Body
AsmLabel172:;
if((1)) goto AsmLabel173; else goto AsmLabel174;;
AsmLabel173:;
__tmp53_95_ = getInt();
op_93_ = (__tmp53_95_);
if(((op_93_) == (0))) goto AsmLabel175; else goto AsmLabel177;;
AsmLabel175:;
goto AsmLabel174;
AsmLabel177:;
if(((op_93_) == (1))) goto AsmLabel179; else goto AsmLabel180;;
AsmLabel179:;
__tmp54_96_ = getString();
input_94_ = (__tmp54_96_);
computeSHA1((input_94_));
;
goto AsmLabel181;
AsmLabel180:;
if(((op_93_) == (2))) goto AsmLabel183; else goto AsmLabel185;;
AsmLabel183:;
__tmp55_97_ = getString();
input_94_ = (__tmp55_97_);
crackSHA1((input_94_));
;
AsmLabel185:;
AsmLabel181:;
goto AsmLabel172;
AsmLabel174:;
return (0);
}

//------------- IRBase Traverse End -------------

