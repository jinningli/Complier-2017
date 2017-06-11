
//------------- IRBase Translate -------------

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

//Function & Class Declare

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
void restore(){
//Define Local Variable
long i_0_;
//Function Body
i_0_ = (1);
AsmLabel15:;
if(((i_0_) <= (n_))) goto AsmLabel16; else goto AsmLabel18;;
AsmLabel16:;
*((long*)((a_) + ((i_0_) * (8)))) = (*(long *)((bak_) + ((i_0_) * (8))));
AsmLabel17:;
i_0_ = ((i_0_) + (1));
goto AsmLabel15;
AsmLabel18:;
}
long quicksort(long l, long r){
//Define Local Variable
long l_1_ = l;
long r_2_ = r;
long i11_3_;
long i10_4_;
long i13_5_;
long sum_6_;
long i12_7_;
long i14_8_;
long __tmp21_9_;
long __tmp20_10_;
long z_l_11_;
long i1_12_;
long i2_13_;
long i_14_;
long i3_15_;
long i4_16_;
long i5_17_;
long z_r_18_;
long i6_19_;
long i7_20_;
long i8_21_;
long i9_22_;
long p_23_;
long x_24_;
long __tmp18_25_;
long __tmp15_26_;
long __tmp16_27_;
long __tmp17_28_;
long __tmp19_29_;
//Function Body
sum_6_ = (0);
x_24_ = (*(long *)((a_) + ((l_1_) * (8))));
z_l_11_ = (0);
z_r_18_ = (0);
i_14_ = ((l_1_) + (1));
AsmLabel19:;
if(((i_14_) < (r_2_))) goto AsmLabel20; else goto AsmLabel22;;
AsmLabel20:;
sum_6_ = ((sum_6_) + (1));
if(((*(long *)((a_) + ((i_14_) * (8)))) < (x_24_))) goto AsmLabel23; else goto AsmLabel24;;
AsmLabel23:;
__tmp15_26_ = (z_l_11_);
z_l_11_ = ((__tmp15_26_) + (1));
*((long*)((a_left_) + ((__tmp15_26_) * (8)))) = (*(long *)((a_) + ((i_14_) * (8))));
goto AsmLabel25;
AsmLabel24:;
__tmp16_27_ = (z_r_18_);
z_r_18_ = ((__tmp16_27_) + (1));
*((long*)((a_right_) + ((__tmp16_27_) * (8)))) = (*(long *)((a_) + ((i_14_) * (8))));
AsmLabel25:;
AsmLabel21:;
i_14_ = ((i_14_) + (1));
goto AsmLabel19;
AsmLabel22:;
p_23_ = (l_1_);
i_14_ = (0);
AsmLabel27:;
if(((i_14_) < (z_l_11_))) goto AsmLabel28; else goto AsmLabel30;;
AsmLabel28:;
__tmp17_28_ = (p_23_);
p_23_ = ((__tmp17_28_) + (1));
*((long*)((a_) + ((__tmp17_28_) * (8)))) = (*(long *)((a_left_) + ((i_14_) * (8))));
AsmLabel29:;
i_14_ = ((i_14_) + (1));
goto AsmLabel27;
AsmLabel30:;
__tmp18_25_ = (p_23_);
p_23_ = ((__tmp18_25_) + (1));
*((long*)((a_) + ((__tmp18_25_) * (8)))) = (x_24_);
i_14_ = (0);
AsmLabel31:;
if(((i_14_) < (z_r_18_))) goto AsmLabel32; else goto AsmLabel34;;
AsmLabel32:;
__tmp19_29_ = (p_23_);
p_23_ = ((__tmp19_29_) + (1));
*((long*)((a_) + ((__tmp19_29_) * (8)))) = (*(long *)((a_right_) + ((i_14_) * (8))));
AsmLabel33:;
i_14_ = ((i_14_) + (1));
goto AsmLabel31;
AsmLabel34:;
if(((z_l_11_) > (1))) goto AsmLabel35; else goto AsmLabel37;;
AsmLabel35:;
__tmp20_10_ = quicksort((l_1_), ((l_1_) + (z_l_11_)));
sum_6_ = ((sum_6_) + (__tmp20_10_));
AsmLabel37:;
if(((z_r_18_) > (1))) goto AsmLabel39; else goto AsmLabel41;;
AsmLabel39:;
__tmp21_9_ = quicksort(((r_2_) - (z_r_18_)), (r_2_));
sum_6_ = ((sum_6_) + (__tmp21_9_));
AsmLabel41:;
return (sum_6_);
}
long calc(){
//Define Local Variable
long i1_30_;
long i11_31_;
long i2_32_;
long i10_33_;
long i_34_;
long i3_35_;
long i13_36_;
long sum_37_;
long i4_38_;
long i12_39_;
long i5_40_;
long i6_41_;
long i14_42_;
long i7_43_;
long i8_44_;
long i9_45_;
long r_46_;
long l_47_;
//Function Body
i_34_ = (1);
AsmLabel43:;
if(((i_34_) <= (n_))) goto AsmLabel44; else goto AsmLabel46;;
AsmLabel44:;
*((long*)((a_left_) + ((i_34_) * (8)))) = ((i_34_) - (1));
*((long*)((a_right_) + ((i_34_) * (8)))) = ((i_34_) + (1));
AsmLabel45:;
i_34_ = ((i_34_) + (1));
goto AsmLabel43;
AsmLabel46:;
sum_37_ = (0);
i_34_ = (n_);
AsmLabel47:;
if(((i_34_) >= (1))) goto AsmLabel48; else goto AsmLabel50;;
AsmLabel48:;
l_47_ = (*(long *)((a_left_) + ((*(long *)((a_) + ((i_34_) * (8)))) * (8))));
r_46_ = (*(long *)((a_right_) + ((*(long *)((a_) + ((i_34_) * (8)))) * (8))));
*((long*)((a_right_) + ((l_47_) * (8)))) = (r_46_);
*((long*)((a_left_) + ((r_46_) * (8)))) = (l_47_);
sum_37_ = ((((sum_37_) + (r_46_)) - (l_47_)) - (2));
AsmLabel49:;
i_34_ = ((i_34_) - (1));
goto AsmLabel47;
AsmLabel50:;
return (sum_37_);
}
long mergesort(long l, long r){
//Define Local Variable
long l_48_ = l;
long r_49_ = r;
long i11_50_;
long i10_51_;
long mid_52_;
long i13_53_;
long sum_54_;
long i12_55_;
long i14_56_;
long __tmp22_57_;
long __tmp26_58_;
long n_l_59_;
long __tmp23_60_;
long n_r_61_;
long z_l_62_;
long i1_63_;
long i2_64_;
long i_65_;
long i3_66_;
long i4_67_;
long i5_68_;
long z_r_69_;
long i6_70_;
long i7_71_;
long i8_72_;
long i9_73_;
long __tmp32_74_;
long __tmp33_75_;
long __tmp31_76_;
long z_77_;
long __tmp34_78_;
long __tmp24_79_;
long __tmp25_80_;
long __tmp30_81_;
long __tmp29_82_;
long __tmp27_83_;
long __tmp28_84_;
//Function Body
if((((l_48_) + (1)) == (r_49_))) goto AsmLabel51; else goto AsmLabel53;;
AsmLabel51:;
return (0);
AsmLabel53:;
mid_52_ = (((l_48_) + (r_49_)) >> (1));
sum_54_ = (0);
__tmp22_57_ = mergesort((l_48_), (mid_52_));
sum_54_ = ((sum_54_) + (__tmp22_57_));
__tmp23_60_ = mergesort((mid_52_), (r_49_));
sum_54_ = ((sum_54_) + (__tmp23_60_));
n_l_59_ = (0);
n_r_61_ = (0);
i_65_ = (l_48_);
AsmLabel55:;
if(((i_65_) < (mid_52_))) goto AsmLabel56; else goto AsmLabel58;;
AsmLabel56:;
__tmp24_79_ = (n_l_59_);
n_l_59_ = ((__tmp24_79_) + (1));
*((long*)((a_left_) + ((__tmp24_79_) * (8)))) = (*(long *)((a_) + ((i_65_) * (8))));
AsmLabel57:;
i_65_ = ((i_65_) + (1));
goto AsmLabel55;
AsmLabel58:;
i_65_ = (mid_52_);
AsmLabel59:;
if(((i_65_) < (r_49_))) goto AsmLabel60; else goto AsmLabel62;;
AsmLabel60:;
__tmp25_80_ = (n_r_61_);
n_r_61_ = ((__tmp25_80_) + (1));
*((long*)((a_right_) + ((__tmp25_80_) * (8)))) = (*(long *)((a_) + ((i_65_) * (8))));
AsmLabel61:;
i_65_ = ((i_65_) + (1));
goto AsmLabel59;
AsmLabel62:;
z_l_62_ = (0);
z_r_69_ = (0);
z_77_ = (l_48_);
AsmLabel63:;
__tmp26_58_ = ((z_l_62_) < (n_l_59_));
if((__tmp26_58_)) goto AsmLabel66; else goto AsmLabel67;;
AsmLabel66:;
__tmp26_58_ = ((z_r_69_) < (n_r_61_));
AsmLabel67:;
if((__tmp26_58_)) goto AsmLabel64; else goto AsmLabel65;;
AsmLabel64:;
sum_54_ = ((sum_54_) + (1));
if(((*(long *)((a_left_) + ((z_l_62_) * (8)))) < (*(long *)((a_right_) + ((z_r_69_) * (8)))))) goto AsmLabel68; else goto AsmLabel69;;
AsmLabel68:;
__tmp27_83_ = (z_l_62_);
z_l_62_ = ((__tmp27_83_) + (1));
__tmp28_84_ = (z_77_);
z_77_ = ((__tmp28_84_) + (1));
*((long*)((a_) + ((__tmp28_84_) * (8)))) = (*(long *)((a_left_) + ((__tmp27_83_) * (8))));
goto AsmLabel70;
AsmLabel69:;
__tmp29_82_ = (z_r_69_);
z_r_69_ = ((__tmp29_82_) + (1));
__tmp30_81_ = (z_77_);
z_77_ = ((__tmp30_81_) + (1));
*((long*)((a_) + ((__tmp30_81_) * (8)))) = (*(long *)((a_right_) + ((__tmp29_82_) * (8))));
AsmLabel70:;
goto AsmLabel63;
AsmLabel65:;
AsmLabel72:;
if(((z_l_62_) < (n_l_59_))) goto AsmLabel73; else goto AsmLabel74;;
AsmLabel73:;
__tmp31_76_ = (z_l_62_);
z_l_62_ = ((__tmp31_76_) + (1));
__tmp32_74_ = (z_77_);
z_77_ = ((__tmp32_74_) + (1));
*((long*)((a_) + ((__tmp32_74_) * (8)))) = (*(long *)((a_left_) + ((__tmp31_76_) * (8))));
goto AsmLabel72;
AsmLabel74:;
AsmLabel75:;
if(((z_r_69_) < (n_r_61_))) goto AsmLabel76; else goto AsmLabel77;;
AsmLabel76:;
__tmp33_75_ = (z_r_69_);
z_r_69_ = ((__tmp33_75_) + (1));
__tmp34_78_ = (z_77_);
z_77_ = ((__tmp34_78_) + (1));
*((long*)((a_) + ((__tmp34_78_) * (8)))) = (*(long *)((a_right_) + ((__tmp33_75_) * (8))));
goto AsmLabel75;
AsmLabel77:;
return (sum_54_);
}
long heapsort(){
//Define Local Variable
long i1_85_;
long i11_86_;
long i2_87_;
long i10_88_;
long i_89_;
long i3_90_;
long i13_91_;
long sum_92_;
long i4_93_;
long i12_94_;
long i5_95_;
long i6_96_;
long i14_97_;
long i7_98_;
long i8_99_;
long i9_100_;
long tmp_101_;
long heap_size_102_;
long x_103_;
long x_104_;
long __tmp35_105_;
long r_106_;
long y_107_;
long l_108_;
//Function Body
sum_92_ = (0);
i_89_ = (1);
AsmLabel78:;
if(((i_89_) <= (n_))) goto AsmLabel79; else goto AsmLabel81;;
AsmLabel79:;
*((long*)((heap_) + ((i_89_) * (8)))) = (*(long *)((a_) + ((i_89_) * (8))));
x_103_ = (i_89_);
AsmLabel82:;
if(((x_103_) != (1))) goto AsmLabel83; else goto AsmLabel84;;
AsmLabel83:;
sum_92_ = ((sum_92_) + (1));
if(((*(long *)((heap_) + ((x_103_) * (8)))) > (*(long *)((heap_) + (((x_103_) >> (1)) * (8)))))) goto AsmLabel85; else goto AsmLabel87;;
AsmLabel85:;
goto AsmLabel84;
AsmLabel87:;
tmp_101_ = (*(long *)((heap_) + ((x_103_) * (8))));
*((long*)((heap_) + ((x_103_) * (8)))) = (*(long *)((heap_) + (((x_103_) >> (1)) * (8))));
*((long*)((heap_) + (((x_103_) >> (1)) * (8)))) = (tmp_101_);
x_103_ = ((x_103_) >> (1));
goto AsmLabel82;
AsmLabel84:;
AsmLabel80:;
i_89_ = ((i_89_) + (1));
goto AsmLabel78;
AsmLabel81:;
heap_size_102_ = (n_);
i_89_ = (1);
AsmLabel89:;
if(((i_89_) <= (n_))) goto AsmLabel90; else goto AsmLabel92;;
AsmLabel90:;
*((long*)((a_) + ((i_89_) * (8)))) = (*(long *)((heap_) + (8)));
__tmp35_105_ = (heap_size_102_);
heap_size_102_ = ((__tmp35_105_) - (1));
*((long*)((heap_) + (8))) = (*(long *)((heap_) + ((__tmp35_105_) * (8))));
x_104_ = (1);
AsmLabel93:;
if((((x_104_) << (1)) <= (heap_size_102_))) goto AsmLabel94; else goto AsmLabel95;;
AsmLabel94:;
l_108_ = ((x_104_) << (1));
r_106_ = ((l_108_) + (1));
y_107_ = (l_108_);
if(((r_106_) <= (heap_size_102_))) goto AsmLabel96; else goto AsmLabel98;;
AsmLabel96:;
sum_92_ = ((sum_92_) + (1));
if(((*(long *)((heap_) + ((r_106_) * (8)))) < (*(long *)((heap_) + ((l_108_) * (8)))))) goto AsmLabel100; else goto AsmLabel102;;
AsmLabel100:;
y_107_ = (r_106_);
AsmLabel102:;
AsmLabel98:;
sum_92_ = ((sum_92_) + (1));
if(((*(long *)((heap_) + ((x_104_) * (8)))) < (*(long *)((heap_) + ((y_107_) * (8)))))) goto AsmLabel104; else goto AsmLabel106;;
AsmLabel104:;
goto AsmLabel95;
AsmLabel106:;
tmp_101_ = (*(long *)((heap_) + ((x_104_) * (8))));
*((long*)((heap_) + ((x_104_) * (8)))) = (*(long *)((heap_) + ((y_107_) * (8))));
*((long*)((heap_) + ((y_107_) * (8)))) = (tmp_101_);
tmp_101_ = (x_104_);
x_104_ = (y_107_);
y_107_ = (tmp_101_);
goto AsmLabel93;
AsmLabel95:;
AsmLabel91:;
i_89_ = ((i_89_) + (1));
goto AsmLabel89;
AsmLabel92:;
return (sum_92_);
}
int main(){
//Grobal Variable Initialize
N_ = (100000);
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
(100000);
;
__tmp1_ = (N_);
__tmp0_ = __lib_malloc((((__tmp1_) * (8)) + (8)));
*((long*)(__tmp0_)) = (__tmp1_);
__tmp0_ = ((__tmp0_) + (8));
(__tmp0_);
;
__tmp4_ = (N_);
__tmp3_ = __lib_malloc((((__tmp4_) * (8)) + (8)));
*((long*)(__tmp3_)) = (__tmp4_);
__tmp3_ = ((__tmp3_) + (8));
(__tmp3_);
;
__tmp7_ = (N_);
__tmp6_ = __lib_malloc((((__tmp7_) * (8)) + (8)));
*((long*)(__tmp6_)) = (__tmp7_);
__tmp6_ = ((__tmp6_) + (8));
(__tmp6_);
;
__tmp10_ = (N_);
__tmp9_ = __lib_malloc((((__tmp10_) * (8)) + (8)));
*((long*)(__tmp9_)) = (__tmp10_);
__tmp9_ = ((__tmp9_) + (8));
(__tmp9_);
;
__tmp13_ = (N_);
__tmp12_ = __lib_malloc((((__tmp13_) * (8)) + (8)));
*((long*)(__tmp12_)) = (__tmp13_);
__tmp12_ = ((__tmp12_) + (8));
(__tmp12_);
;
a_ = (__tmp0_);
bak_ = (__tmp3_);
a_left_ = (__tmp6_);
a_right_ = (__tmp9_);
heap_ = (__tmp12_);
//Define Local Variable
long i11_109_;
long i10_110_;
long i13_111_;
long i12_112_;
long i14_113_;
long __tmp40_114_;
long __tmp43_115_;
long __tmp44_116_;
long __tmp41_117_;
long __tmp42_118_;
long __tmp45_119_;
long ans3_120_;
long ans2_121_;
long ans4_122_;
long ans1_123_;
long i1_124_;
long i2_125_;
long i_126_;
long i3_127_;
long i4_128_;
long k_129_;
long i5_130_;
long i6_131_;
long i7_132_;
long i8_133_;
long i9_134_;
long __tmp36_135_;
long __tmp37_136_;
long __tmp38_137_;
long __tmp39_138_;
//Function Body
__tmp36_135_ = getInt();
n_ = (__tmp36_135_);
__tmp37_136_ = getInt();
k_129_ = (__tmp37_136_);
i_126_ = (1);
AsmLabel108:;
if(((i_126_) <= (n_))) goto AsmLabel109; else goto AsmLabel111;;
AsmLabel109:;
*((long*)((a_) + ((i_126_) * (8)))) = (i_126_);
if(((i_126_) <= (k_129_))) goto AsmLabel112; else goto AsmLabel114;;
AsmLabel112:;
*((long*)((a_) + ((i_126_) * (8)))) = (((k_129_) + (1)) - (i_126_));
AsmLabel114:;
*((long*)((bak_) + ((i_126_) * (8)))) = (*(long *)((a_) + ((i_126_) * (8))));
AsmLabel110:;
i_126_ = ((i_126_) + (1));
goto AsmLabel108;
AsmLabel111:;
__tmp38_137_ = quicksort((1), ((n_) + (1)));
ans1_123_ = (__tmp38_137_);
restore();
;
__tmp39_138_ = calc();
ans2_121_ = (__tmp39_138_);
restore();
;
__tmp40_114_ = mergesort((1), ((n_) + (1)));
ans3_120_ = (__tmp40_114_);
restore();
;
__tmp41_117_ = heapsort();
ans4_122_ = (__tmp41_117_);
__tmp42_118_ = toString((ans1_123_));
println((__tmp42_118_));
;
__tmp43_115_ = toString((ans2_121_));
println((__tmp43_115_));
;
__tmp44_116_ = toString((ans3_120_));
println((__tmp44_116_));
;
__tmp45_119_ = toString((ans4_122_));
println((__tmp45_119_));
;
return (0);
}

//------------- IRBase Traverse End -------------

