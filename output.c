
//------------- IRBase Translate -------------

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

//Function & Class Declare

long check(long a, long N);
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
long check(long a, long N){
//Define Local Variable
long a_0 = a;
long N_1 = N;
long __tmp0_2;
//Function Body
__tmp0_2 = ((a_0) < (N_1));
if((__tmp0_2)) goto AsmLabel0; else goto AsmLabel1;;
AsmLabel0:;
__tmp0_2 = ((a_0) >= (0));
AsmLabel1:;
return (__tmp0_2);
}
int main(){
//Grobal Variable Initialize
//Define Local Variable
long targety_3;
long targetx_4;
long ylist_5;
long N_6;
long head_7;
long __tmp4_8;
long __tmp3_9;
long __tmp6_10;
long __tmp5_11;
long __tmp2_12;
long now_13;
long __tmp1_14;
long starty_15;
long startx_16;
long xlist_17;
long ok_18;
long tail_19;
long i_20;
long j_21;
long __tmp8_22;
long __tmp7_23;
long __tmp9_24;
long __tmp10_25;
long __tmp54_26;
long x_27;
long y_28;
long step_29;
long __tmp11_30;
long __tmp12_31;
long __tmp13_32;
long __tmp40_33;
long __tmp21_34;
long __tmp22_35;
long __tmp44_36;
long __tmp41_37;
long __tmp20_38;
long __tmp42_39;
long __tmp25_40;
long __tmp47_41;
long __tmp26_42;
long __tmp45_43;
long __tmp24_44;
long __tmp46_45;
long __tmp29_46;
long __tmp27_47;
long __tmp49_48;
long __tmp50_49;
long __tmp51_50;
long __tmp32_51;
long __tmp30_52;
long __tmp52_53;
long __tmp31_54;
long __tmp14_55;
long __tmp36_56;
long __tmp15_57;
long __tmp37_58;
long __tmp34_59;
long __tmp35_60;
long __tmp19_61;
long __tmp16_62;
long __tmp17_63;
long __tmp39_64;
long __tmp18_65;
long __tmp23_66;
long __tmp28_67;
long __tmp33_68;
long __tmp38_69;
long __tmp43_70;
long __tmp48_71;
long __tmp53_72;
//Function Body
__tmp1_14 = getInt();
N_6 = (__tmp1_14);
head_7 = (0);
tail_19 = (0);
startx_16 = (0);
starty_15 = (0);
targetx_4 = ((N_6) - (1));
targety_3 = ((N_6) - (1));
x_27 = (0);
y_28 = (0);
now_13 = (0);
ok_18 = (0);
__tmp3_9 = ((N_6) * (N_6));
__tmp2_12 = __lib_malloc((((__tmp3_9) * (8)) + (8)));
*((long*)(__tmp2_12)) = (__tmp3_9);
__tmp2_12 = ((__tmp2_12) + (8));
xlist_17 = (__tmp2_12);
i_20 = (0);
AsmLabel5:;
if(((i_20) < ((N_6) * (N_6)))) goto AsmLabel6; else goto AsmLabel8;;
AsmLabel6:;
*((long*)((xlist_17) + ((i_20) * (8)))) = (0);
AsmLabel7:;
i_20 = ((i_20) + (1));
goto AsmLabel5;
AsmLabel8:;
__tmp6_10 = ((N_6) * (N_6));
__tmp5_11 = __lib_malloc((((__tmp6_10) * (8)) + (8)));
*((long*)(__tmp5_11)) = (__tmp6_10);
__tmp5_11 = ((__tmp5_11) + (8));
ylist_5 = (__tmp5_11);
i_20 = (0);
AsmLabel12:;
if(((i_20) < ((N_6) * (N_6)))) goto AsmLabel13; else goto AsmLabel15;;
AsmLabel13:;
*((long*)((ylist_5) + ((i_20) * (8)))) = (0);
AsmLabel14:;
i_20 = ((i_20) + (1));
goto AsmLabel12;
AsmLabel15:;
__tmp9_24 = (N_6);
__tmp8_22 = __lib_malloc((((__tmp9_24) * (8)) + (8)));
*((long*)(__tmp8_22)) = (__tmp9_24);
__tmp8_22 = ((__tmp8_22) + (8));
step_29 = (__tmp8_22);
i_20 = (0);
AsmLabel19:;
if(((i_20) < (N_6))) goto AsmLabel20; else goto AsmLabel22;;
AsmLabel20:;
__tmp12_31 = (N_6);
__tmp11_30 = __lib_malloc((((__tmp12_31) * (8)) + (8)));
*((long*)(__tmp11_30)) = (__tmp12_31);
__tmp11_30 = ((__tmp11_30) + (8));
*((long*)((step_29) + ((i_20) * (8)))) = (__tmp11_30);
j_21 = (0);
AsmLabel26:;
if(((j_21) < (N_6))) goto AsmLabel27; else goto AsmLabel29;;
AsmLabel27:;
*((long*)((*(long *)((step_29) + ((i_20) * (8)))) + ((j_21) * (8)))) = -(1);
AsmLabel28:;
j_21 = ((j_21) + (1));
goto AsmLabel26;
AsmLabel29:;
AsmLabel21:;
i_20 = ((i_20) + (1));
goto AsmLabel19;
AsmLabel22:;
*((long*)((xlist_17) + (0))) = (startx_16);
*((long*)((ylist_5) + (0))) = (starty_15);
*((long*)((*(long *)((step_29) + ((startx_16) * (8)))) + ((starty_15) * (8)))) = (0);
AsmLabel30:;
if(((head_7) <= (tail_19))) goto AsmLabel31; else goto AsmLabel32;;
AsmLabel31:;
now_13 = (*(long *)((*(long *)((step_29) + ((*(long *)((xlist_17) + ((head_7) * (8)))) * (8)))) + ((*(long *)((ylist_5) + ((head_7) * (8)))) * (8))));
x_27 = ((*(long *)((xlist_17) + ((head_7) * (8)))) - (1));
y_28 = ((*(long *)((ylist_5) + ((head_7) * (8)))) - (2));
__tmp16_62 = check((x_27), (N_6));
__tmp15_57 = (__tmp16_62);
if((__tmp15_57)) goto AsmLabel38; else goto AsmLabel39;;
AsmLabel38:;
__tmp17_63 = check((y_28), (N_6));
__tmp15_57 = (__tmp17_63);
AsmLabel39:;
__tmp14_55 = (__tmp15_57);
if((__tmp14_55)) goto AsmLabel36; else goto AsmLabel37;;
AsmLabel36:;
__tmp14_55 = ((*(long *)((*(long *)((step_29) + ((x_27) * (8)))) + ((y_28) * (8)))) == -(1));
AsmLabel37:;
if((__tmp14_55)) goto AsmLabel33; else goto AsmLabel35;;
AsmLabel33:;
tail_19 = ((tail_19) + (1));
*((long*)((xlist_17) + ((tail_19) * (8)))) = (x_27);
*((long*)((ylist_5) + ((tail_19) * (8)))) = (y_28);
*((long*)((*(long *)((step_29) + ((x_27) * (8)))) + ((y_28) * (8)))) = ((now_13) + (1));
__tmp18_65 = ((x_27) == (targetx_4));
if((__tmp18_65)) goto AsmLabel43; else goto AsmLabel44;;
AsmLabel43:;
__tmp18_65 = ((y_28) == (targety_3));
AsmLabel44:;
if((__tmp18_65)) goto AsmLabel40; else goto AsmLabel42;;
AsmLabel40:;
ok_18 = (1);
AsmLabel42:;
AsmLabel35:;
x_27 = ((*(long *)((xlist_17) + ((head_7) * (8)))) - (1));
y_28 = ((*(long *)((ylist_5) + ((head_7) * (8)))) + (2));
__tmp21_34 = check((x_27), (N_6));
__tmp20_38 = (__tmp21_34);
if((__tmp20_38)) goto AsmLabel50; else goto AsmLabel51;;
AsmLabel50:;
__tmp22_35 = check((y_28), (N_6));
__tmp20_38 = (__tmp22_35);
AsmLabel51:;
__tmp19_61 = (__tmp20_38);
if((__tmp19_61)) goto AsmLabel48; else goto AsmLabel49;;
AsmLabel48:;
__tmp19_61 = ((*(long *)((*(long *)((step_29) + ((x_27) * (8)))) + ((y_28) * (8)))) == -(1));
AsmLabel49:;
if((__tmp19_61)) goto AsmLabel45; else goto AsmLabel47;;
AsmLabel45:;
tail_19 = ((tail_19) + (1));
*((long*)((xlist_17) + ((tail_19) * (8)))) = (x_27);
*((long*)((ylist_5) + ((tail_19) * (8)))) = (y_28);
*((long*)((*(long *)((step_29) + ((x_27) * (8)))) + ((y_28) * (8)))) = ((now_13) + (1));
__tmp23_66 = ((x_27) == (targetx_4));
if((__tmp23_66)) goto AsmLabel55; else goto AsmLabel56;;
AsmLabel55:;
__tmp23_66 = ((y_28) == (targety_3));
AsmLabel56:;
if((__tmp23_66)) goto AsmLabel52; else goto AsmLabel54;;
AsmLabel52:;
ok_18 = (1);
AsmLabel54:;
AsmLabel47:;
x_27 = ((*(long *)((xlist_17) + ((head_7) * (8)))) + (1));
y_28 = ((*(long *)((ylist_5) + ((head_7) * (8)))) - (2));
__tmp26_42 = check((x_27), (N_6));
__tmp25_40 = (__tmp26_42);
if((__tmp25_40)) goto AsmLabel62; else goto AsmLabel63;;
AsmLabel62:;
__tmp27_47 = check((y_28), (N_6));
__tmp25_40 = (__tmp27_47);
AsmLabel63:;
__tmp24_44 = (__tmp25_40);
if((__tmp24_44)) goto AsmLabel60; else goto AsmLabel61;;
AsmLabel60:;
__tmp24_44 = ((*(long *)((*(long *)((step_29) + ((x_27) * (8)))) + ((y_28) * (8)))) == -(1));
AsmLabel61:;
if((__tmp24_44)) goto AsmLabel57; else goto AsmLabel59;;
AsmLabel57:;
tail_19 = ((tail_19) + (1));
*((long*)((xlist_17) + ((tail_19) * (8)))) = (x_27);
*((long*)((ylist_5) + ((tail_19) * (8)))) = (y_28);
*((long*)((*(long *)((step_29) + ((x_27) * (8)))) + ((y_28) * (8)))) = ((now_13) + (1));
__tmp28_67 = ((x_27) == (targetx_4));
if((__tmp28_67)) goto AsmLabel67; else goto AsmLabel68;;
AsmLabel67:;
__tmp28_67 = ((y_28) == (targety_3));
AsmLabel68:;
if((__tmp28_67)) goto AsmLabel64; else goto AsmLabel66;;
AsmLabel64:;
ok_18 = (1);
AsmLabel66:;
AsmLabel59:;
x_27 = ((*(long *)((xlist_17) + ((head_7) * (8)))) + (1));
y_28 = ((*(long *)((ylist_5) + ((head_7) * (8)))) + (2));
__tmp31_54 = check((x_27), (N_6));
__tmp30_52 = (__tmp31_54);
if((__tmp30_52)) goto AsmLabel74; else goto AsmLabel75;;
AsmLabel74:;
__tmp32_51 = check((y_28), (N_6));
__tmp30_52 = (__tmp32_51);
AsmLabel75:;
__tmp29_46 = (__tmp30_52);
if((__tmp29_46)) goto AsmLabel72; else goto AsmLabel73;;
AsmLabel72:;
__tmp29_46 = ((*(long *)((*(long *)((step_29) + ((x_27) * (8)))) + ((y_28) * (8)))) == -(1));
AsmLabel73:;
if((__tmp29_46)) goto AsmLabel69; else goto AsmLabel71;;
AsmLabel69:;
tail_19 = ((tail_19) + (1));
*((long*)((xlist_17) + ((tail_19) * (8)))) = (x_27);
*((long*)((ylist_5) + ((tail_19) * (8)))) = (y_28);
*((long*)((*(long *)((step_29) + ((x_27) * (8)))) + ((y_28) * (8)))) = ((now_13) + (1));
__tmp33_68 = ((x_27) == (targetx_4));
if((__tmp33_68)) goto AsmLabel79; else goto AsmLabel80;;
AsmLabel79:;
__tmp33_68 = ((y_28) == (targety_3));
AsmLabel80:;
if((__tmp33_68)) goto AsmLabel76; else goto AsmLabel78;;
AsmLabel76:;
ok_18 = (1);
AsmLabel78:;
AsmLabel71:;
x_27 = ((*(long *)((xlist_17) + ((head_7) * (8)))) - (2));
y_28 = ((*(long *)((ylist_5) + ((head_7) * (8)))) - (1));
__tmp36_56 = check((x_27), (N_6));
__tmp35_60 = (__tmp36_56);
if((__tmp35_60)) goto AsmLabel86; else goto AsmLabel87;;
AsmLabel86:;
__tmp37_58 = check((y_28), (N_6));
__tmp35_60 = (__tmp37_58);
AsmLabel87:;
__tmp34_59 = (__tmp35_60);
if((__tmp34_59)) goto AsmLabel84; else goto AsmLabel85;;
AsmLabel84:;
__tmp34_59 = ((*(long *)((*(long *)((step_29) + ((x_27) * (8)))) + ((y_28) * (8)))) == -(1));
AsmLabel85:;
if((__tmp34_59)) goto AsmLabel81; else goto AsmLabel83;;
AsmLabel81:;
tail_19 = ((tail_19) + (1));
*((long*)((xlist_17) + ((tail_19) * (8)))) = (x_27);
*((long*)((ylist_5) + ((tail_19) * (8)))) = (y_28);
*((long*)((*(long *)((step_29) + ((x_27) * (8)))) + ((y_28) * (8)))) = ((now_13) + (1));
__tmp38_69 = ((x_27) == (targetx_4));
if((__tmp38_69)) goto AsmLabel91; else goto AsmLabel92;;
AsmLabel91:;
__tmp38_69 = ((y_28) == (targety_3));
AsmLabel92:;
if((__tmp38_69)) goto AsmLabel88; else goto AsmLabel90;;
AsmLabel88:;
ok_18 = (1);
AsmLabel90:;
AsmLabel83:;
x_27 = ((*(long *)((xlist_17) + ((head_7) * (8)))) - (2));
y_28 = ((*(long *)((ylist_5) + ((head_7) * (8)))) + (1));
__tmp41_37 = check((x_27), (N_6));
__tmp40_33 = (__tmp41_37);
if((__tmp40_33)) goto AsmLabel98; else goto AsmLabel99;;
AsmLabel98:;
__tmp42_39 = check((y_28), (N_6));
__tmp40_33 = (__tmp42_39);
AsmLabel99:;
__tmp39_64 = (__tmp40_33);
if((__tmp39_64)) goto AsmLabel96; else goto AsmLabel97;;
AsmLabel96:;
__tmp39_64 = ((*(long *)((*(long *)((step_29) + ((x_27) * (8)))) + ((y_28) * (8)))) == -(1));
AsmLabel97:;
if((__tmp39_64)) goto AsmLabel93; else goto AsmLabel95;;
AsmLabel93:;
tail_19 = ((tail_19) + (1));
*((long*)((xlist_17) + ((tail_19) * (8)))) = (x_27);
*((long*)((ylist_5) + ((tail_19) * (8)))) = (y_28);
*((long*)((*(long *)((step_29) + ((x_27) * (8)))) + ((y_28) * (8)))) = ((now_13) + (1));
__tmp43_70 = ((x_27) == (targetx_4));
if((__tmp43_70)) goto AsmLabel103; else goto AsmLabel104;;
AsmLabel103:;
__tmp43_70 = ((y_28) == (targety_3));
AsmLabel104:;
if((__tmp43_70)) goto AsmLabel100; else goto AsmLabel102;;
AsmLabel100:;
ok_18 = (1);
AsmLabel102:;
AsmLabel95:;
x_27 = ((*(long *)((xlist_17) + ((head_7) * (8)))) + (2));
y_28 = ((*(long *)((ylist_5) + ((head_7) * (8)))) - (1));
__tmp46_45 = check((x_27), (N_6));
__tmp45_43 = (__tmp46_45);
if((__tmp45_43)) goto AsmLabel110; else goto AsmLabel111;;
AsmLabel110:;
__tmp47_41 = check((y_28), (N_6));
__tmp45_43 = (__tmp47_41);
AsmLabel111:;
__tmp44_36 = (__tmp45_43);
if((__tmp44_36)) goto AsmLabel108; else goto AsmLabel109;;
AsmLabel108:;
__tmp44_36 = ((*(long *)((*(long *)((step_29) + ((x_27) * (8)))) + ((y_28) * (8)))) == -(1));
AsmLabel109:;
if((__tmp44_36)) goto AsmLabel105; else goto AsmLabel107;;
AsmLabel105:;
tail_19 = ((tail_19) + (1));
*((long*)((xlist_17) + ((tail_19) * (8)))) = (x_27);
*((long*)((ylist_5) + ((tail_19) * (8)))) = (y_28);
*((long*)((*(long *)((step_29) + ((x_27) * (8)))) + ((y_28) * (8)))) = ((now_13) + (1));
__tmp48_71 = ((x_27) == (targetx_4));
if((__tmp48_71)) goto AsmLabel115; else goto AsmLabel116;;
AsmLabel115:;
__tmp48_71 = ((y_28) == (targety_3));
AsmLabel116:;
if((__tmp48_71)) goto AsmLabel112; else goto AsmLabel114;;
AsmLabel112:;
ok_18 = (1);
AsmLabel114:;
AsmLabel107:;
x_27 = ((*(long *)((xlist_17) + ((head_7) * (8)))) + (2));
y_28 = ((*(long *)((ylist_5) + ((head_7) * (8)))) + (1));
__tmp51_50 = check((x_27), (N_6));
__tmp50_49 = (__tmp51_50);
if((__tmp50_49)) goto AsmLabel122; else goto AsmLabel123;;
AsmLabel122:;
__tmp52_53 = check((y_28), (N_6));
__tmp50_49 = (__tmp52_53);
AsmLabel123:;
__tmp49_48 = (__tmp50_49);
if((__tmp49_48)) goto AsmLabel120; else goto AsmLabel121;;
AsmLabel120:;
__tmp49_48 = ((*(long *)((*(long *)((step_29) + ((x_27) * (8)))) + ((y_28) * (8)))) == -(1));
AsmLabel121:;
if((__tmp49_48)) goto AsmLabel117; else goto AsmLabel119;;
AsmLabel117:;
tail_19 = ((tail_19) + (1));
*((long*)((xlist_17) + ((tail_19) * (8)))) = (x_27);
*((long*)((ylist_5) + ((tail_19) * (8)))) = (y_28);
*((long*)((*(long *)((step_29) + ((x_27) * (8)))) + ((y_28) * (8)))) = ((now_13) + (1));
__tmp53_72 = ((x_27) == (targetx_4));
if((__tmp53_72)) goto AsmLabel127; else goto AsmLabel128;;
AsmLabel127:;
__tmp53_72 = ((y_28) == (targety_3));
AsmLabel128:;
if((__tmp53_72)) goto AsmLabel124; else goto AsmLabel126;;
AsmLabel124:;
ok_18 = (1);
AsmLabel126:;
AsmLabel119:;
if(((ok_18) == (1))) goto AsmLabel129; else goto AsmLabel131;;
AsmLabel129:;
goto AsmLabel32;
AsmLabel131:;
head_7 = ((head_7) + (1));
goto AsmLabel30;
AsmLabel32:;
if(((ok_18) == (1))) goto AsmLabel132; else goto AsmLabel133;;
AsmLabel132:;
__tmp54_26 = toString((*(long *)((*(long *)((step_29) + ((targetx_4) * (8)))) + ((targety_3) * (8)))));
println((__tmp54_26));
;
goto AsmLabel134;
AsmLabel133:;
print((toMoStr("no solution!\n")));
;
AsmLabel134:;
return (0);
}

//------------- IRBase Traverse End -------------

