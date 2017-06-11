





default rel

global a_
global n_
global str_le
global str_eql
global substring
global ord
global parseInt
global strlength
global getInt
global getString
global size
global toMoStr
global str_add
global __lib_printlnInt
global __lib_printInt
global __lib_malloc
global println
global print
global toString
global exchange
global makeHeap
global adjustHeap
global heapSort
global main

extern puts
extern printf
extern strcpy
extern strlen
extern getchar
extern __stack_chk_fail
extern __isoc99_scanf
extern malloc
extern strcmp


SECTION .text   

str_le:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     qword [rbp-8H], rdi
        mov     qword [rbp-10H], rsi
        mov     rdx, qword [rbp-10H]
        mov     rax, qword [rbp-8H]
        mov     rsi, rdx
        mov     rdi, rax
        call    strcmp
        test    eax, eax
        jns     L_001
        mov     eax, 1
        jmp     L_002

L_001:  mov     eax, 0
L_002:  leave
        ret


str_eql:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 32
        mov     qword [rbp-18H], rdi
        mov     qword [rbp-20H], rsi
        mov     rax, qword [rbp-18H]
        mov     rdi, rax
        call    strlength
        mov     dword [rbp-8H], eax
        mov     rax, qword [rbp-20H]
        mov     rdi, rax
        call    strlength
        mov     dword [rbp-4H], eax
        mov     eax, dword [rbp-8H]
        cmp     eax, dword [rbp-4H]
        jz      L_003
        mov     eax, 0
        jmp     L_007

L_003:  mov     dword [rbp-0CH], 0
        jmp     L_006

L_004:  mov     eax, dword [rbp-0CH]
        movsxd  rdx, eax
        mov     rax, qword [rbp-18H]
        add     rax, rdx
        movzx   edx, byte [rax]
        mov     eax, dword [rbp-0CH]
        movsxd  rcx, eax
        mov     rax, qword [rbp-20H]
        add     rax, rcx
        movzx   eax, byte [rax]
        cmp     dl, al
        jz      L_005
        mov     eax, 0
        jmp     L_007

L_005:  add     dword [rbp-0CH], 1
L_006:  mov     eax, dword [rbp-0CH]
        cmp     eax, dword [rbp-8H]
        jl      L_004
        mov     eax, 1
L_007:  leave
        ret


substring:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 64
        mov     qword [rbp-28H], rdi
        mov     qword [rbp-30H], rsi
        mov     qword [rbp-38H], rdx
        mov     rax, qword [rbp-38H]
        mov     edx, eax
        mov     rax, qword [rbp-30H]
        sub     edx, eax
        mov     eax, edx
        add     eax, 1
        mov     dword [rbp-0CH], eax
        mov     eax, dword [rbp-0CH]
        cdqe
        add     rax, 5
        mov     rdi, rax
        call    malloc
        mov     qword [rbp-8H], rax
        mov     rax, qword [rbp-8H]
        mov     edx, dword [rbp-0CH]
        mov     dword [rax], edx
        add     qword [rbp-8H], 4
        mov     dword [rbp-14H], 0
        mov     rax, qword [rbp-30H]
        mov     dword [rbp-10H], eax
        jmp     L_009

L_008:  mov     eax, dword [rbp-14H]
        lea     edx, [rax+1H]
        mov     dword [rbp-14H], edx
        movsxd  rdx, eax
        mov     rax, qword [rbp-8H]
        add     rdx, rax
        mov     eax, dword [rbp-10H]
        movsxd  rcx, eax
        mov     rax, qword [rbp-28H]
        add     rax, rcx
        movzx   eax, byte [rax]
        mov     byte [rdx], al
        add     dword [rbp-10H], 1
L_009:  mov     eax, dword [rbp-10H]
        cdqe
        cmp     rax, qword [rbp-38H]
        jle     L_008
        mov     eax, dword [rbp-14H]
        movsxd  rdx, eax
        mov     rax, qword [rbp-8H]
        add     rax, rdx
        mov     byte [rax], 0
        mov     rax, qword [rbp-8H]
        leave
        ret


ord:
        push    rbp
        mov     rbp, rsp
        mov     qword [rbp-18H], rdi
        mov     qword [rbp-20H], rsi
        mov     rdx, qword [rbp-20H]
        mov     rax, qword [rbp-18H]
        add     rax, rdx
        mov     qword [rbp-8H], rax
        mov     rax, qword [rbp-8H]
        movzx   eax, byte [rax]
        movsx   rax, al
        pop     rbp
        ret


parseInt:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 48
        mov     qword [rbp-28H], rdi
        mov     rax, qword [rbp-28H]
        mov     rdi, rax
        call    strlength
        mov     dword [rbp-0CH], eax
        mov     rax, qword [rbp-28H]
        mov     qword [rbp-8H], rax
        mov     dword [rbp-14H], 0
        mov     dword [rbp-10H], 0
        jmp     L_011

L_010:  mov     eax, dword [rbp-10H]
        movsxd  rdx, eax
        mov     rax, qword [rbp-8H]
        add     rax, rdx
        movzx   eax, byte [rax]
        cmp     al, 47
        jle     L_012
        mov     eax, dword [rbp-10H]
        movsxd  rdx, eax
        mov     rax, qword [rbp-8H]
        add     rax, rdx
        movzx   eax, byte [rax]
        cmp     al, 57
        jg      L_012
        mov     edx, dword [rbp-14H]
        mov     eax, edx
        shl     eax, 2
        add     eax, edx
        add     eax, eax
        mov     ecx, eax
        mov     eax, dword [rbp-10H]
        movsxd  rdx, eax
        mov     rax, qword [rbp-8H]
        add     rax, rdx
        movzx   eax, byte [rax]
        movsx   eax, al
        add     eax, ecx
        sub     eax, 48
        mov     dword [rbp-14H], eax
        add     dword [rbp-10H], 1
L_011:  mov     eax, dword [rbp-10H]
        cmp     eax, dword [rbp-0CH]
        jl      L_010
L_012:  mov     eax, dword [rbp-14H]
        cdqe
        leave
        ret


strlength:
        push    rbp
        mov     rbp, rsp
        mov     qword [rbp-18H], rdi
        mov     rax, qword [rbp-18H]
        sub     rax, 4
        mov     eax, dword [rax]
        mov     dword [rbp-4H], eax
        mov     eax, dword [rbp-4H]
        cdqe
        pop     rbp
        ret


getInt:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16


        mov     rax, qword [fs:abs 28H]
        mov     qword [rbp-8H], rax
        xor     eax, eax
        mov     dword [rbp-0CH], 0
        lea     rax, [rbp-0CH]
        mov     rsi, rax
        mov     edi, L_047
        mov     eax, 0
        call    __isoc99_scanf
        mov     eax, dword [rbp-0CH]
        cdqe
        mov     rdx, qword [rbp-8H]


        xor     rdx, qword [fs:abs 28H]
        jz      L_013
        call    __stack_chk_fail
L_013:  leave
        ret


getString:
        push    rbp
        mov     rbp, rsp
        push    rbx
        sub     rsp, 40
        mov     dword [rbp-24H], 0
        mov     edi, 2004
        call    malloc
        mov     qword [rbp-20H], rax
        mov     rax, qword [rbp-20H]
        mov     qword [rbp-18H], rax
        add     qword [rbp-20H], 4
        mov     eax, dword [rbp-24H]
        movsxd  rdx, eax
        mov     rax, qword [rbp-20H]
        lea     rbx, [rdx+rax]
        call    getchar
        mov     byte [rbx], al
        mov     eax, dword [rbp-24H]
        movsxd  rdx, eax
        mov     rax, qword [rbp-20H]
        add     rax, rdx
        movzx   eax, byte [rax]
        cmp     al, 10
        jnz     L_015
        mov     eax, dword [rbp-24H]
        movsxd  rdx, eax
        mov     rax, qword [rbp-20H]
        lea     rbx, [rdx+rax]
        call    getchar
        mov     byte [rbx], al
        jmp     L_015

L_014:  add     dword [rbp-24H], 1
        mov     eax, dword [rbp-24H]
        movsxd  rdx, eax
        mov     rax, qword [rbp-20H]
        lea     rbx, [rdx+rax]
        call    getchar
        mov     byte [rbx], al
L_015:  mov     eax, dword [rbp-24H]
        movsxd  rdx, eax
        mov     rax, qword [rbp-20H]
        add     rax, rdx
        movzx   eax, byte [rax]
        cmp     al, 10
        jnz     L_014
        mov     eax, dword [rbp-24H]
        movsxd  rdx, eax
        mov     rax, qword [rbp-20H]
        add     rax, rdx
        mov     byte [rax], 0
        mov     rax, qword [rbp-18H]
        mov     edx, dword [rbp-24H]
        mov     dword [rax], edx
        mov     rax, qword [rbp-18H]
        add     rax, 4
        add     rsp, 40
        pop     rbx
        pop     rbp
        ret


size:
        push    rbp
        mov     rbp, rsp
        mov     qword [rbp-18H], rdi
        mov     rax, qword [rbp-18H]
        sub     rax, 8
        mov     rax, qword [rax]
        mov     qword [rbp-8H], rax
        mov     rax, qword [rbp-8H]
        pop     rbp
        ret


toMoStr:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 32
        mov     qword [rbp-18H], rdi
        mov     rax, qword [rbp-18H]
        mov     rdi, rax
        call    strlen
        mov     dword [rbp-0CH], eax
        mov     eax, dword [rbp-0CH]
        cdqe
        add     rax, 5
        mov     rdi, rax
        call    malloc
        mov     qword [rbp-8H], rax
        mov     rax, qword [rbp-8H]
        mov     edx, dword [rbp-0CH]
        mov     dword [rax], edx
        add     qword [rbp-8H], 4
        mov     rdx, qword [rbp-18H]
        mov     rax, qword [rbp-8H]
        mov     rsi, rdx
        mov     rdi, rax
        call    strcpy
        mov     rax, qword [rbp-8H]
        leave
        ret


str_add:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 48
        mov     qword [rbp-28H], rdi
        mov     qword [rbp-30H], rsi
        mov     rax, qword [rbp-28H]
        sub     rax, 4
        mov     eax, dword [rax]
        mov     dword [rbp-14H], eax
        mov     rax, qword [rbp-30H]
        sub     rax, 4
        mov     eax, dword [rax]
        mov     dword [rbp-10H], eax
        mov     edx, dword [rbp-14H]
        mov     eax, dword [rbp-10H]
        add     eax, edx
        mov     dword [rbp-0CH], eax
        mov     eax, dword [rbp-0CH]
        cdqe
        add     rax, 5
        mov     rdi, rax
        call    malloc
        mov     qword [rbp-8H], rax
        mov     rax, qword [rbp-8H]
        mov     edx, dword [rbp-0CH]
        mov     dword [rax], edx
        add     qword [rbp-8H], 4
        mov     dword [rbp-1CH], 0
        jmp     L_017

L_016:  mov     eax, dword [rbp-1CH]
        movsxd  rdx, eax
        mov     rax, qword [rbp-8H]
        add     rdx, rax
        mov     eax, dword [rbp-1CH]
        movsxd  rcx, eax
        mov     rax, qword [rbp-28H]
        add     rax, rcx
        movzx   eax, byte [rax]
        mov     byte [rdx], al
        add     dword [rbp-1CH], 1
L_017:  mov     eax, dword [rbp-1CH]
        cmp     eax, dword [rbp-14H]
        jl      L_016
        mov     dword [rbp-18H], 0
        jmp     L_019

L_018:  mov     edx, dword [rbp-18H]
        mov     eax, dword [rbp-14H]
        add     eax, edx
        movsxd  rdx, eax
        mov     rax, qword [rbp-8H]
        add     rdx, rax
        mov     eax, dword [rbp-18H]
        movsxd  rcx, eax
        mov     rax, qword [rbp-30H]
        add     rax, rcx
        movzx   eax, byte [rax]
        mov     byte [rdx], al
        add     dword [rbp-18H], 1
L_019:  mov     eax, dword [rbp-18H]
        cmp     eax, dword [rbp-10H]
        jl      L_018
        mov     eax, dword [rbp-0CH]
        movsxd  rdx, eax
        mov     rax, qword [rbp-8H]
        add     rax, rdx
        mov     byte [rax], 0
        mov     rax, qword [rbp-8H]
        leave
        ret


__lib_printlnInt:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     qword [rbp-8H], rdi
        mov     rax, qword [rbp-8H]
        mov     rsi, rax
        mov     edi, L_048
        mov     eax, 0
        call    printf
        nop
        leave
        ret


__lib_printInt:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     qword [rbp-8H], rdi
        mov     rax, qword [rbp-8H]
        mov     rsi, rax
        mov     edi, L_049
        mov     eax, 0
        call    printf
        nop
        leave
        ret


__lib_malloc:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     qword [rbp-8H], rdi
        mov     rax, qword [rbp-8H]
        mov     rdi, rax
        call    malloc
        leave
        ret


println:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     qword [rbp-8H], rdi
        mov     rax, qword [rbp-8H]
        mov     rdi, rax
        call    puts
        nop
        leave
        ret


print:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     qword [rbp-8H], rdi
        mov     rax, qword [rbp-8H]
        mov     rsi, rax
        mov     edi, L_050
        mov     eax, 0
        call    printf
        nop
        leave
        ret


toString:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 48
        mov     qword [rbp-28H], rdi
        mov     edi, 16
        call    malloc
        mov     qword [rbp-8H], rax
        add     qword [rbp-8H], 4
        mov     rax, qword [rbp-8H]
        mov     qword [rbp-18H], rax
        cmp     qword [rbp-28H], 0
        jns     L_020
        mov     rax, qword [rbp-18H]
        lea     rdx, [rax+1H]
        mov     qword [rbp-18H], rdx
        mov     byte [rax], 45
        neg     qword [rbp-28H]
L_020:  cmp     qword [rbp-28H], 0
        jnz     L_021
        mov     rax, qword [rbp-18H]
        lea     rdx, [rax+1H]
        mov     qword [rbp-18H], rdx
        mov     byte [rax], 48
L_021:  mov     rax, qword [rbp-18H]
        mov     qword [rbp-10H], rax
        jmp     L_023

L_022:  mov     rcx, qword [rbp-28H]
        mov     rdx, qword 6666666666666667H
        mov     rax, rcx
        imul    rdx
        sar     rdx, 2
        mov     rax, rcx
        sar     rax, 63
        sub     rdx, rax
        mov     rax, rdx
        mov     dword [rbp-1CH], eax
        mov     rdx, qword [rbp-18H]
        lea     rax, [rdx+1H]
        mov     qword [rbp-18H], rax
        mov     rax, qword [rbp-28H]
        mov     esi, eax
        mov     eax, dword [rbp-1CH]
        mov     ecx, eax
        mov     eax, ecx
        shl     eax, 2
        add     eax, ecx
        add     eax, eax
        sub     esi, eax
        mov     eax, esi
        add     eax, 48
        mov     byte [rdx], al
        mov     eax, dword [rbp-1CH]
        cdqe
        mov     qword [rbp-28H], rax
L_023:  cmp     qword [rbp-28H], 0
        jnz     L_022
        mov     rax, qword [rbp-18H]
        mov     byte [rax], 0
        mov     rax, qword [rbp-8H]
        sub     rax, 4
        mov     rcx, qword [rbp-18H]
        mov     rdx, qword [rbp-8H]
        sub     rcx, rdx
        mov     rdx, rcx
        mov     dword [rax], edx
        sub     qword [rbp-18H], 1
        jmp     L_025

L_024:  mov     rax, qword [rbp-10H]
        movzx   eax, byte [rax]
        mov     byte [rbp-1DH], al
        mov     rax, qword [rbp-18H]
        movzx   edx, byte [rax]
        mov     rax, qword [rbp-10H]
        mov     byte [rax], dl
        movzx   edx, byte [rbp-1DH]
        mov     rax, qword [rbp-18H]
        mov     byte [rax], dl
        add     qword [rbp-10H], 1
        sub     qword [rbp-18H], 1
L_025:  mov     rax, qword [rbp-10H]
        cmp     rax, qword [rbp-18H]
        jbe     L_024
        mov     rax, qword [rbp-8H]
        leave
        ret


exchange:
        push    rbp
        mov     rbp, rsp
        mov     qword [rbp-28H], rdi
        mov     qword [rbp-30H], rsi
        mov     rax, qword [rbp-28H]
        mov     qword [rbp-18H], rax
        mov     rax, qword [rbp-30H]
        mov     qword [rbp-10H], rax
        mov     rax, qword [rbp-18H]
        lea     rdx, [rax*8]
        mov     rax, qword [rel a_]
        add     rax, rdx
        mov     rax, qword [rax]
        mov     qword [rbp-8H], rax
        mov     rax, qword [rbp-18H]
        lea     rdx, [rax*8]
        mov     rax, qword [rel a_]
        add     rax, rdx
        mov     rcx, rax
        mov     rax, qword [rbp-10H]
        lea     rdx, [rax*8]
        mov     rax, qword [rel a_]
        add     rax, rdx
        mov     rax, qword [rax]
        mov     qword [rcx], rax
        mov     rax, qword [rbp-10H]
        lea     rdx, [rax*8]
        mov     rax, qword [rel a_]
        add     rax, rdx
        mov     rdx, rax
        mov     rax, qword [rbp-8H]
        mov     qword [rdx], rax
        nop
        pop     rbp
        ret


makeHeap:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 32
        mov     rax, qword [rel n_]
        sub     rax, 1
        mov     rdx, rax
        shr     rdx, 63
        add     rax, rdx
        sar     rax, 1
        mov     qword [rbp-18H], rax
        mov     qword [rbp-8H], 0
        mov     qword [rbp-10H], 0
L_026:  cmp     qword [rbp-18H], 0
        js      L_032
        nop
        mov     rax, qword [rbp-18H]
        add     rax, rax
        mov     qword [rbp-10H], rax
        mov     rax, qword [rbp-18H]
        add     rax, rax
        lea     rdx, [rax+1H]
        mov     rax, qword [rel n_]
        cmp     rdx, rax
        jge     L_027
        nop
        mov     rax, qword [rbp-18H]
        shl     rax, 4
        lea     rdx, [rax+8H]
        mov     rax, qword [rel a_]
        add     rax, rdx
        mov     rdx, qword [rax]
        mov     rax, qword [rbp-18H]
        shl     rax, 4
        mov     rcx, rax
        mov     rax, qword [rel a_]
        add     rax, rcx
        mov     rax, qword [rax]
        cmp     rdx, rax
        jge     L_028
        nop
        mov     rax, qword [rbp-18H]
        add     rax, rax
        add     rax, 1
        mov     qword [rbp-10H], rax
        jmp     L_029

L_027:  nop
        jmp     L_029

L_028:  nop
L_029:  mov     rax, qword [rbp-18H]
        lea     rdx, [rax*8]
        mov     rax, qword [rel a_]
        add     rax, rdx
        mov     rdx, qword [rax]
        mov     rax, qword [rbp-10H]
        lea     rcx, [rax*8]
        mov     rax, qword [rel a_]
        add     rax, rcx
        mov     rax, qword [rax]
        cmp     rdx, rax
        jle     L_030
        nop
        mov     rdx, qword [rbp-10H]
        mov     rax, qword [rbp-18H]
        mov     rsi, rdx
        mov     rdi, rax
        call    exchange
        jmp     L_031

L_030:  nop
L_031:  sub     qword [rbp-18H], 1
        jmp     L_026


L_032:
        nop
        mov     eax, 0
        leave
        ret

adjustHeap:
        push    rbp
        mov     rbp, rsp
        mov     qword [rbp-38H], rdi
        mov     rax, qword [rbp-38H]
        mov     qword [rbp-18H], rax
        mov     qword [rbp-28H], 0
        mov     qword [rbp-20H], 0
        mov     qword [rbp-10H], 0
L_033:  mov     rax, qword [rbp-28H]
        add     rax, rax
        cmp     rax, qword [rbp-18H]
        jge     L_039
        nop
        mov     rax, qword [rbp-28H]
        add     rax, rax
        mov     qword [rbp-20H], rax
        mov     rax, qword [rbp-28H]
        add     rax, rax
        add     rax, 1
        cmp     rax, qword [rbp-18H]
        jge     L_034
        nop
        mov     rax, qword [rbp-28H]
        shl     rax, 4
        lea     rdx, [rax+8H]
        mov     rax, qword [rel a_]
        add     rax, rdx
        mov     rdx, qword [rax]
        mov     rax, qword [rbp-28H]
        shl     rax, 4
        mov     rcx, rax
        mov     rax, qword [rel a_]
        add     rax, rcx
        mov     rax, qword [rax]
        cmp     rdx, rax
        jge     L_035
        nop
        mov     rax, qword [rbp-28H]
        add     rax, rax
        add     rax, 1
        mov     qword [rbp-20H], rax
        jmp     L_036

L_034:  nop
        jmp     L_036

L_035:  nop
L_036:  mov     rax, qword [rbp-28H]
        lea     rdx, [rax*8]
        mov     rax, qword [rel a_]
        add     rax, rdx
        mov     rdx, qword [rax]
        mov     rax, qword [rbp-20H]
        lea     rcx, [rax*8]
        mov     rax, qword [rel a_]
        add     rax, rcx
        mov     rax, qword [rax]
        cmp     rdx, rax
        jle     L_037
        nop
        mov     rax, qword [rbp-28H]
        lea     rdx, [rax*8]
        mov     rax, qword [rel a_]
        add     rax, rdx
        mov     rax, qword [rax]
        mov     qword [rbp-8H], rax
        mov     rax, qword [rbp-28H]
        lea     rdx, [rax*8]
        mov     rax, qword [rel a_]
        add     rax, rdx
        mov     rcx, rax
        mov     rax, qword [rbp-20H]
        lea     rdx, [rax*8]
        mov     rax, qword [rel a_]
        add     rax, rdx
        mov     rax, qword [rax]
        mov     qword [rcx], rax
        mov     rax, qword [rbp-20H]
        lea     rdx, [rax*8]
        mov     rax, qword [rel a_]
        add     rax, rdx
        mov     rdx, rax
        mov     rax, qword [rbp-8H]
        mov     qword [rdx], rax
        mov     rax, qword [rbp-20H]
        mov     qword [rbp-28H], rax
        jmp     L_038

L_037:  nop
        jmp     L_040

L_038:  jmp     L_033

L_039:  nop
L_040:  mov     eax, 0
        pop     rbp
        ret


heapSort:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     qword [rbp-8H], 0
        mov     qword [rbp-10H], 0
L_041:  mov     rax, qword [rel n_]
        cmp     qword [rbp-10H], rax
        jge     L_042
        nop
        mov     rax, qword [rel a_]
        mov     rax, qword [rax]
        mov     qword [rbp-8H], rax
        mov     rax, qword [rel a_]
        mov     rcx, rax
        mov     rax, qword [rel n_]
        sub     rax, qword [rbp-10H]
        sub     rax, 1
        lea     rdx, [rax*8]
        mov     rax, qword [rel a_]
        add     rax, rdx
        mov     rax, qword [rax]
        mov     qword [rcx], rax
        mov     rax, qword [rel n_]
        sub     rax, qword [rbp-10H]
        sub     rax, 1
        lea     rdx, [rax*8]
        mov     rax, qword [rel a_]
        add     rax, rdx
        mov     rdx, rax
        mov     rax, qword [rbp-8H]
        mov     qword [rdx], rax
        mov     rax, qword [rel n_]
        sub     rax, qword [rbp-10H]
        sub     rax, 1
        mov     rdi, rax
        call    adjustHeap
        add     qword [rbp-10H], 1
        jmp     L_041


L_042:
        nop
        mov     eax, 0
        leave
        ret

main:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 80
        mov     edi, L_051
        call    toMoStr
        mov     rdi, rax
        call    println
        mov     eax, 0
        call    getString
        mov     qword [rbp-40H], rax
        mov     rax, qword [rbp-40H]
        mov     rdi, rax
        call    parseInt
        mov     qword [rbp-38H], rax
        mov     rax, qword [rbp-38H]
        mov     qword [rel n_], rax
        mov     rax, qword [rel n_]
        mov     rdi, rax
        call    toString
        mov     qword [rbp-30H], rax
        mov     rax, qword [rbp-30H]
        mov     rdi, rax
        call    println
        mov     rax, qword [rel n_]
        mov     qword [rbp-28H], rax
        mov     rax, qword [rbp-28H]
        add     rax, 1
        shl     rax, 3
        mov     rdi, rax
        call    __lib_malloc
        mov     qword [rbp-20H], rax
        mov     rax, qword [rbp-20H]
        mov     rdx, qword [rbp-28H]
        mov     qword [rax], rdx
        add     qword [rbp-20H], 8
        mov     rax, qword [rbp-20H]
        mov     qword [rel a_], rax
        mov     qword [rbp-48H], 0
L_043:  mov     rax, qword [rel a_]
        mov     rdi, rax
        call    size
        mov     qword [rbp-18H], rax
        mov     rax, qword [rbp-48H]
        cmp     rax, qword [rbp-18H]
        jge     L_044
        nop
        mov     rax, qword [rbp-48H]
        lea     rdx, [rax*8]
        mov     rax, qword [rel a_]
        add     rax, rdx
        mov     rdx, rax
        mov     rax, qword [rbp-48H]
        mov     qword [rdx], rax
        add     qword [rbp-48H], 1
        jmp     L_043


L_044:
        nop
        mov     eax, 0
        call    makeHeap
        mov     edi, L_052
        call    toMoStr
        mov     rdi, rax
        call    println
        mov     eax, 0
        call    heapSort
        mov     edi, L_053
        call    toMoStr
        mov     rdi, rax
        call    println
        mov     qword [rbp-48H], 0
L_045:  mov     rax, qword [rel a_]
        mov     rdi, rax
        call    size
        mov     qword [rbp-10H], rax
        mov     rax, qword [rbp-48H]
        cmp     rax, qword [rbp-10H]
        jge     L_046
        nop
        mov     rax, qword [rbp-48H]
        lea     rdx, [rax*8]
        mov     rax, qword [rel a_]
        add     rax, rdx
        mov     rax, qword [rax]
        mov     rdi, rax
        call    toString
        mov     qword [rbp-8H], rax
        mov     edi, L_054
        call    toMoStr
        mov     rdx, rax
        mov     rax, qword [rbp-8H]
        mov     rsi, rdx
        mov     rdi, rax
        call    str_add
        mov     rdi, rax
        call    print
        add     qword [rbp-48H], 1
        jmp     L_045

L_046:
        nop
        mov     edi, L_055
        call    toMoStr
        mov     rdi, rax
        call    print
        mov     eax, 0
        leave
        ret


SECTION .data   
a_:
	dq 0,0
n_:
	dq 0,0



SECTION .bss    


SECTION .rodata 

L_047:
        db 25H, 64H, 00H

L_048:
        db 25H, 6CH, 64H, 0AH, 00H

L_049:
        db 25H, 6CH, 64H, 00H

L_050:
        db 25H, 73H, 00H

L_051:
        db 73H, 74H, 61H, 72H, 74H, 00H

L_052:
        db 68H, 65H, 61H, 70H, 00H

L_053:
        db 73H, 6FH, 72H, 74H, 00H

L_054:
        db 20H, 00H

L_055:
        db 0AH, 00H



