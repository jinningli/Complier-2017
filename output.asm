default rel

global y
global x
global __lib_printlnInt
global __lib_printInt
global __lib_malloc
global println
global toString
global main

extern puts
extern malloc
extern printf


SECTION .text   

__lib_printlnInt:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     qword [rbp-8H], rdi
        mov     rax, qword [rbp-8H]
        mov     rsi, rax
        mov     edi, L_007
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
        mov     edi, L_008
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
        jns     L_001
        mov     rax, qword [rbp-18H]
        lea     rdx, [rax+1H]
        mov     qword [rbp-18H], rdx
        mov     byte [rax], 45
        neg     qword [rbp-28H]
L_001:  cmp     qword [rbp-28H], 0
        jnz     L_002
        mov     rax, qword [rbp-18H]
        lea     rdx, [rax+1H]
        mov     qword [rbp-18H], rdx
        mov     byte [rax], 48
L_002:  mov     rax, qword [rbp-18H]
        mov     qword [rbp-10H], rax
        jmp     L_004

L_003:  mov     rcx, qword [rbp-28H]
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
L_004:  cmp     qword [rbp-28H], 0
        jnz     L_003
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
        jmp     L_006

L_005:  mov     rax, qword [rbp-10H]
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
L_006:  mov     rax, qword [rbp-10H]
        cmp     rax, qword [rbp-18H]
        jbe     L_005
        mov     rax, qword [rbp-8H]
        leave
        ret


main:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     qword [rel x], 10
        mov     qword [rel y], 20
        mov     rdx, qword [rel x]
        mov     rax, qword [rel y]
        add     rax, rdx
        mov     qword [rbp-10H], rax
        mov     rax, qword [rbp-10H]
        mov     rdi, rax
        call    toString
        mov     qword [rbp-8H], rax
        mov     rax, qword [rbp-8H]
        mov     rdi, rax
        call    println
        mov     rax, qword [rbp-10H]
        leave
        ret



SECTION .data

x:
	dq 0,0
y:
	dq 0,0



SECTION .bss    


SECTION .rodata 

L_007:
        db 25H, 6CH, 64H, 0AH, 00H

L_008:
        db 25H, 6CH, 64H, 00H