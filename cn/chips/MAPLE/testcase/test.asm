default rel

global __string__connect__
global __string__length__
global __string__ord__
global __string__parseInt__
global __array__size__
global getString
global getInt
global print
global println
global toString
global __string__substring__
global __string__less__
global __string__greater__
global __string__equals__
global __string__neq__
global main
extern puts
extern _IO_putc
extern stdout
extern _IO_getc
extern stdin
extern gets
extern malloc

	section .data
__Str_0:
	db	%d,0
__Str_1:
	db	%s,0
__nullptr:
	db	0,0
	db	2
__Str_2:
	db	'( ',0
	db	2
__Str_3:
	db	', ',0
	db	2
__Str_4:
	db	' )',0
	db	10
__Str_5:
	db	'vector x: ',0
	db	8
__Str_6:
	db	'excited!',0
	db	10
__Str_7:
	db	'vector y: ',0
	db	7
__Str_8:
	db	'x + y: ',0
	db	7
__Str_9:
	db	'x * y: ',0
	db	14
__Str_10:
	db	'(1 << 3) * y: ',0


	section .text
__Function_vector-init:
	push rbp
	mov rbp rsp
	mov qword [rbp+-8] rsp
	mov qword [rbp+-16] rbp
	sub rsp 96
__L_start_1:
	mov rax qword [rbp+-48]
	cmp rax 0
	sete rax
	test rax rax
	jnz	AsmLabel0
	jmp	AsmLabel1
AsmLabel0:
	jmp	__L_epilogue_0
AsmLabel2:
	mov rax qword [rbp+-48]
	push rax
	call	__array__size_
	add rsp 8
	mov qword [rbp+-32] rax
	mov rax qword [rbp+-32]
	mov qword [rbp+-64] rax
	mov rax qword [rbp+-64]
	imul rax 8
	add rax 8
	push rax
	call	malloc
	add rsp 8
	mov qword [rbp+-40] rax
	mov rax qword [rbp+-64]
	mov qword [rbp+-8] rax
	mov rax qword [rbp+-40]
	mov rcx rax
	mov rax qword [rbp+-8]
	mov qword [rcx] rax
	mov rax qword [rbp+-40]
	add rax 8
	mov qword [rbp+-40] rax
	mov rax qword [rbp+-40]
	mov qword [rbp+-8] rax
	mov rax qword [rbp+-72]
	add rax 0
	mov rcx rax
	mov rax qword [rbp+-8]
	mov qword [rcx] rax
	mov rax 0
	mov qword [rbp+-80] rax
AsmLabel6:
	mov rax qword [rbp+-48]
	push rax
	call	__array__size_
	add rsp 8
	mov qword [rbp+-24] rax
	mov rax qword [rbp+-80]
	mov rcx qword [rbp+-24]
	cmp rax rcx
	setl rax
	test rax rax
	jnz	AsmLabel7
	jmp	AsmLabel9
AsmLabel7:
	mov rax qword [rbp+-80]
	imul rax 8
	mov rcx rax
	mov rax qword [rbp+-48]
	add rax rcx
	mov rax qword [rax]
	mov qword [rbp+-8] rax
	mov rax qword [rbp+-80]
	imul rax 8
	mov qword [rbp+-16] rax
	mov rax qword [rbp+-72]
	add rax 0
	mov rax qword [rax]
	mov rcx qword [rbp+-16]
	add rax rcx
	mov rcx rax
	mov rax qword [rbp+-8]
	mov qword [rcx] rax
AsmLabel8:
	mov rax qword [rbp+-80]
	add rax 1
	mov qword [rbp+-80] rax
	jmp	AsmLabel6
AsmLabel9:
__L_epilogue_0:
	mov rbp qword [rbp+-16]
	mov rsp qword [rbp+-8]
	mov rsp rbp
	pop rbp
	ret
__Function_vector-getDim:
	push rbp
	mov rbp rsp
	mov qword [rbp+-8] rsp
	mov qword [rbp+-16] rbp
	sub rsp 32
__L_start_3:
	mov rax qword [rbp+-32]
	add rax 0
	mov rax qword [rax]
	cmp rax 0
	sete rax
	test rax rax
	jnz	AsmLabel10
	jmp	AsmLabel11
AsmLabel10:
	mov rax 0
	jmp	__L_epilogue_2
AsmLabel12:
	mov rax qword [rbp+-32]
	add rax 0
	mov rax qword [rax]
	push rax
	call	__array__size_
	add rsp 8
	mov qword [rbp+-24] rax
	mov rax qword [rbp+-24]
	jmp	__L_epilogue_2
__L_epilogue_2:
	mov rbp qword [rbp+-16]
	mov rsp qword [rbp+-8]
	mov rsp rbp
	pop rbp
	ret
__Function_vector-dot:
	push rbp
	mov rbp rsp
	mov qword [rbp+-8] rsp
	mov qword [rbp+-16] rbp
	sub rsp 72
__L_start_5:
	mov rax 0
	mov qword [rbp+-48] rax
	mov rax 0
	mov qword [rbp+-24] rax
AsmLabel13:
	call	__Function_vector-getDim
	mov qword [rbp+-32] rax
	mov rax qword [rbp+-48]
	mov rcx qword [rbp+-32]
	cmp rax rcx
	setl rax
	test rax rax
	jnz	AsmLabel14
	jmp	AsmLabel15
AsmLabel14:
	mov rax qword [rbp+-48]
	imul rax 8
	mov qword [rbp+-8] rax
	mov rax qword [rbp+-56]
	add rax 0
	mov rax qword [rax]
	mov rcx qword [rbp+-8]
	add rax rcx
	mov rax qword [rax]
	mov qword [rbp+-8] rax
	mov rax qword [rbp+-48]
	imul rax 8
	mov qword [rbp+-16] rax
	mov rax qword [rbp+-40]
	add rax 0
	mov rax qword [rax]
	mov rcx qword [rbp+-16]
	add rax rcx
	mov rax qword [rax]
	mov rcx qword [rbp+-8]
	imul rax rcx
	mov qword [rbp+-24] rax
	mov rax qword [rbp+-48]
	add rax 1
	mov qword [rbp+-48] rax
	jmp	AsmLabel13
AsmLabel15:
	mov rax qword [rbp+-24]
	jmp	__L_epilogue_4
__L_epilogue_4:
	mov rbp qword [rbp+-16]
	mov rsp qword [rbp+-8]
	mov rsp rbp
	pop rbp
	ret
__Function_vector-scalarInPlaceMultiply:
	push rbp
	mov rbp rsp
	mov qword [rbp+-8] rsp
	mov qword [rbp+-16] rbp
	sub rsp 64
__L_start_7:
	mov rax qword [rbp+-32]
	add rax 0
	mov rax qword [rax]
	cmp rax 0
	sete rax
	test rax rax
	jnz	AsmLabel16
	jmp	AsmLabel17
AsmLabel16:
	mov rax 0
	jmp	__L_epilogue_6
AsmLabel18:
	mov rax 0
	mov qword [rbp+-40] rax
AsmLabel19:
	call	__Function_vector-getDim
	mov qword [rbp+-48] rax
	mov rax qword [rbp+-40]
	mov rcx qword [rbp+-48]
	cmp rax rcx
	setl rax
	test rax rax
	jnz	AsmLabel20
	jmp	AsmLabel22
AsmLabel20:
	mov rax qword [rbp+-40]
	imul rax 8
	mov qword [rbp+-8] rax
	mov rax qword [rbp+-32]
	add rax 0
	mov rax qword [rax]
	mov rcx qword [rbp+-8]
	add rax rcx
	mov rax qword [rax]
	mov rcx rax
	mov rax qword [rbp+-24]
	imul rax rcx
	mov qword [rbp+-8] rax
	mov rax qword [rbp+-40]
	imul rax 8
	mov qword [rbp+-16] rax
	mov rax qword [rbp+-32]
	add rax 0
	mov rax qword [rax]
	mov rcx qword [rbp+-16]
	add rax rcx
	mov rcx rax
	mov rax qword [rbp+-8]
	mov qword [rcx] rax
AsmLabel21:
	mov rax qword [rbp+-40]
	add rax 1
	mov qword [rbp+-40] rax
	jmp	AsmLabel19
AsmLabel22:
	mov rax qword [rbp+-32]
	jmp	__L_epilogue_6
__L_epilogue_6:
	mov rbp qword [rbp+-16]
	mov rsp qword [rbp+-8]
	mov rsp rbp
	pop rbp
	ret
__Function_vector-add:
	push rbp
	mov rbp rsp
	mov qword [rbp+-8] rsp
	mov qword [rbp+-16] rbp
	sub rsp 112
__L_start_9:
	call	__Function_vector-getDim
	mov qword [rbp+-96] rax
	mov rax qword [rbp+-80]
	push rax
	call	__Function_vector-getDim
	add rsp 8
	mov qword [rbp+-32] rax
	mov rax qword [rbp+-96]
	mov rcx qword [rbp+-32]
	cmp rax rcx
	setne rax
	mov qword [rbp+-88] rax
	mov rax qword [rbp+-88]
	test rax rax
	jnz	AsmLabel26
	jmp	AsmLabel27
AsmLabel26:
	call	__Function_vector-getDim
	mov qword [rbp+-40] rax
	mov rax qword [rbp+-40]
	cmp rax 0
	sete rax
	mov qword [rbp+-88] rax
AsmLabel27:
	mov rax qword [rbp+-88]
	test rax rax
	jnz	AsmLabel23
	jmp	AsmLabel24
AsmLabel23:
	mov rax 0
	jmp	__L_epilogue_8
AsmLabel25:
	mov rax 8
	push rax
	call	malloc
	add rsp 8
	mov qword [rbp+-64] rax
	mov rax qword [rbp+-64]
	mov qword [rbp+-24] rax
	mov rax 0
	mov qword [rbp+-56] rax
AsmLabel28:
	call	__Function_vector-getDim
	mov qword [rbp+-72] rax
	mov rax qword [rbp+-56]
	mov rcx qword [rbp+-72]
	cmp rax rcx
	setl rax
	test rax rax
	jnz	AsmLabel29
	jmp	AsmLabel31
AsmLabel29:
	mov rax qword [rbp+-56]
	imul rax 8
	mov qword [rbp+-8] rax
	mov rax qword [rbp+-80]
	add rax 0
	mov rax qword [rax]
	mov rcx qword [rbp+-8]
	add rax rcx
	mov rax qword [rax]
	mov qword [rbp+-8] rax
	mov rax qword [rbp+-56]
	imul rax 8
	mov qword [rbp+-16] rax
	mov rax qword [rbp+-48]
	add rax 0
	mov rax qword [rax]
	mov rcx qword [rbp+-16]
	add rax rcx
	mov rax qword [rax]
	mov rcx qword [rbp+-8]
	add rax rcx
	mov qword [rbp+-8] rax
	mov rax qword [rbp+-56]
	imul rax 8
	mov qword [rbp+-16] rax
	mov rax qword [rbp+-24]
	add rax 0
	mov rax qword [rax]
	mov rcx qword [rbp+-16]
	add rax rcx
	mov rcx rax
	mov rax qword [rbp+-8]
	mov qword [rcx] rax
AsmLabel30:
	mov rax qword [rbp+-56]
	add rax 1
	mov qword [rbp+-56] rax
	jmp	AsmLabel28
AsmLabel31:
	mov rax qword [rbp+-24]
	jmp	__L_epilogue_8
__L_epilogue_8:
	mov rbp qword [rbp+-16]
	mov rsp qword [rbp+-8]
	mov rsp rbp
	pop rbp
	ret
__Function_vector-set:
	push rbp
	mov rbp rsp
	mov qword [rbp+-8] rsp
	mov qword [rbp+-16] rbp
	sub rsp 64
__L_start_11:
	call	__Function_vector-getDim
	mov qword [rbp+-24] rax
	mov rax qword [rbp+-24]
	mov rcx qword [rbp+-40]
	cmp rax rcx
	setl rax
	test rax rax
	jnz	AsmLabel32
	jmp	AsmLabel33
AsmLabel32:
	mov rax 0
	jmp	__L_epilogue_10
AsmLabel34:
	mov rax qword [rbp+-48]
	mov qword [rbp+-8] rax
	mov rax qword [rbp+-40]
	imul rax 8
	mov qword [rbp+-16] rax
	mov rax qword [rbp+-32]
	add rax 0
	mov rax qword [rax]
	mov rcx qword [rbp+-16]
	add rax rcx
	mov rcx rax
	mov rax qword [rbp+-8]
	mov qword [rcx] rax
	mov rax 1
	jmp	__L_epilogue_10
__L_epilogue_10:
	mov rbp qword [rbp+-16]
	mov rsp qword [rbp+-8]
	mov rsp rbp
	pop rbp
	ret
__Function_vector-toString:
	push rbp
	mov rbp rsp
	mov qword [rbp+-8] rsp
	mov qword [rbp+-16] rbp
	sub rsp 64
__L_start_13:
	lea rax [__Str_2]
	mov qword [rbp+-24] rax
	call	__Function_vector-getDim
	mov qword [rbp+-48] rax
	mov rax qword [rbp+-48]
	cmp rax 0
	setg rax
	test rax rax
	jnz	AsmLabel35
	jmp	AsmLabel36
AsmLabel35:
	call	__Function_vector-toString
	mov qword [rbp+-64] rax
	mov rax qword [rbp+-24]
	mov rcx qword [rbp+-64]
	add rax rcx
	mov qword [rbp+-24] rax
AsmLabel37:
	mov rax 1
	mov qword [rbp+-40] rax
AsmLabel38:
	call	__Function_vector-getDim
	mov qword [rbp+-56] rax
	mov rax qword [rbp+-40]
	mov rcx qword [rbp+-56]
	cmp rax rcx
	setl rax
	test rax rax
	jnz	AsmLabel39
	jmp	AsmLabel41
AsmLabel39:
	call	__Function_vector-toString
	mov qword [rbp+-64] rax
	mov rax qword [rbp+-24]
	add rax
	mov rcx qword [rbp+-64]
	add rax rcx
	mov qword [rbp+-24] rax
AsmLabel40:
	mov rax qword [rbp+-40]
	add rax 1
	mov qword [rbp+-40] rax
	jmp	AsmLabel38
AsmLabel41:
	mov rax qword [rbp+-24]
	add rax
	mov qword [rbp+-24] rax
	mov rax qword [rbp+-24]
	jmp	__L_epilogue_12
__L_epilogue_12:
	mov rbp qword [rbp+-16]
	mov rsp qword [rbp+-8]
	mov rsp rbp
	pop rbp
	ret
__Function_vector-copy:
	push rbp
	mov rbp rsp
	mov qword [rbp+-8] rsp
	mov qword [rbp+-16] rbp
	sub rsp 40
__L_start_15:
	mov rax qword [rbp+-32]
	cmp rax 0
	sete rax
	test rax rax
	jnz	AsmLabel42
	jmp	AsmLabel43
AsmLabel42:
	mov rax 0
	jmp	__L_epilogue_14
AsmLabel44:
	mov rax qword [rbp+-32]
	push rax
	call	__Function_vector-getDim
	add rsp 8
	mov qword [rbp+-40] rax
	mov rax qword [rbp+-40]
	cmp rax 0
	sete rax
	test rax rax
	jnz	AsmLabel45
	jmp	AsmLabel46
AsmLabel45:
	mov rax qword [rbp+-24]
	add rax 0
	mov rcx rax
	mov qword [rcx] rax
	jmp	AsmLabel47
AsmLabel46:
	mov rax qword [rbp+-24]
	add rax 0
	mov rcx rax
	mov qword [rcx] rax
AsmLabel47:
	mov rax 1
	jmp	__L_epilogue_14
__L_epilogue_14:
	mov rbp qword [rbp+-16]
	mov rsp qword [rbp+-8]
	mov rsp rbp
	pop rbp
	ret
main:
	push rbp
	mov rbp rsp
	mov qword [rbp+-8] rsp
	mov qword [rbp+-16] rbp
	sub rsp 168
__L_start_17:
	mov rax 8
	push rax
	call	malloc
	add rsp 8
	mov qword [rbp+-80] rax
	mov rax qword [rbp+-80]
	mov qword [rbp+-96] rax
	mov rax 10
	mov qword [rbp+-56] rax
	mov rax qword [rbp+-56]
	imul rax 8
	add rax 8
	push rax
	call	malloc
	add rsp 8
	mov qword [rbp+-40] rax
	mov rax qword [rbp+-56]
	mov qword [rbp+-8] rax
	mov rax qword [rbp+-40]
	mov rcx rax
	mov rax qword [rbp+-8]
	mov qword [rcx] rax
	mov rax qword [rbp+-40]
	add rax 8
	mov qword [rbp+-40] rax
	mov rax qword [rbp+-40]
	mov qword [rbp+-24] rax
	mov rax 0
	mov qword [rbp+-32] rax
AsmLabel51:
	mov rax qword [rbp+-32]
	cmp rax 10
	setl rax
	test rax rax
	jnz	AsmLabel52
	jmp	AsmLabel54
AsmLabel52:
	mov rax 9
	mov rcx qword [rbp+-32]
	sub rax rcx
	mov qword [rbp+-8] rax
	mov rax qword [rbp+-32]
	imul rax 8
	mov rcx rax
	mov rax qword [rbp+-24]
	add rax rcx
	mov rcx rax
	mov rax qword [rbp+-8]
	mov qword [rcx] rax
AsmLabel53:
	mov rax qword [rbp+-32]
	add rax 1
	mov qword [rbp+-32] rax
	jmp	AsmLabel51
AsmLabel54:
	mov rax qword [rbp+-96]
	push rax
	mov rax qword [rbp+-24]
	push rax
	call	__Function_vector-init
	add rsp 16
	lea rax [__Str_5]
	push rax
	call	print
	add rsp 8
	mov rax qword [rbp+-96]
	push rax
	call	__Function_vector-toString
	add rsp 8
	mov qword [rbp+-136] rax
	mov rax qword [rbp+-136]
	push rax
	call	println
	add rsp 8
	mov rax 8
	push rax
	call	malloc
	add rsp 8
	mov qword [rbp+-104] rax
	mov rax qword [rbp+-104]
	mov qword [rbp+-112] rax
	mov rax qword [rbp+-112]
	push rax
	mov rax qword [rbp+-96]
	push rax
	call	__Function_vector-copy
	add rsp 16
	mov rax qword [rbp+-112]
	push rax
	mov rax 3
	push rax
	mov rax 817
	push rax
	call	__Function_vector-set
	add rsp 24
	mov qword [rbp+-120] rax
	mov rax qword [rbp+-120]
	test rax rax
	jnz	AsmLabel55
	jmp	AsmLabel56
AsmLabel55:
	lea rax [__Str_6]
	push rax
	call	println
	add rsp 8
AsmLabel57:
	lea rax [__Str_7]
	push rax
	call	print
	add rsp 8
	mov rax qword [rbp+-112]
	push rax
	call	__Function_vector-toString
	add rsp 8
	mov qword [rbp+-152] rax
	mov rax qword [rbp+-152]
	push rax
	call	println
	add rsp 8
	lea rax [__Str_8]
	push rax
	call	print
	add rsp 8
	mov rax qword [rbp+-96]
	push rax
	mov rax qword [rbp+-112]
	push rax
	call	__Function_vector-add
	add rsp 16
	mov qword [rbp+-160] rax
	mov rax qword [rbp+-160]
	push rax
	call	__Function_vector-toString
	add rsp 8
	mov qword [rbp+-144] rax
	mov rax qword [rbp+-144]
	push rax
	call	println
	add rsp 8
	lea rax [__Str_9]
	push rax
	call	print
	add rsp 8
	mov rax qword [rbp+-96]
	push rax
	mov rax qword [rbp+-112]
	push rax
	call	__Function_vector-dot
	add rsp 16
	mov qword [rbp+-72] rax
	mov rax qword [rbp+-72]
	push rax
	call	toString
	add rsp 8
	mov qword [rbp+-88] rax
	mov rax qword [rbp+-88]
	push rax
	call	println
	add rsp 8
	lea rax [__Str_10]
	push rax
	call	print
	add rsp 8
	mov rax qword [rbp+-96]
	push rax
	mov rax 1
	mov rax 3
	sal rax rcx
	push rax
	call	__Function_vector-scalarInPlaceMultiply
	add rsp 16
	mov qword [rbp+-48] rax
	mov rax qword [rbp+-48]
	push rax
	call	__Function_vector-toString
	add rsp 8
	mov qword [rbp+-64] rax
	mov rax qword [rbp+-64]
	push rax
	call	println
	add rsp 8
__L_epilogue_16:
	mov rbp qword [rbp+-16]
	mov rsp qword [rbp+-8]
	mov rsp rbp
	pop rbp
	ret
;----------Inside Function----------
ALIGN   8

__string__connect__:
        push    r14
        push    r13
        mov     r13, rsi
        push    r12
        mov     r12, rdi
        push    rbp
        push    rbx
        mov     rbx, qword [rdi-8H]
        mov     rbp, qword [rsi-8H]
        lea     r14, [rbx+rbp]
        lea     rdi, [r14+9H]
        call    malloc
        test    rbx, rbx
        mov     rcx, rax
        mov     qword [rax], r14
        lea     rax, [rax+8H]
        jle     L_002
        lea     rdx, [rcx+18H]
        cmp     r12, rdx
        lea     rdx, [r12+10H]
        setae   sil
        cmp     rax, rdx
        setae   dl
        or      sil, dl
        je      L_007
        cmp     rbx, 15
        jbe     L_007
        mov     rdi, rbx
        xor     esi, esi
        xor     r8d, r8d
        shr     rdi, 4
        mov     rdx, rdi
        shl     rdx, 4
L_001:  movdqu  xmm0, oword [r12+rsi]
        add     r8, 1
        movdqu  oword [rcx+rsi+8H], xmm0
        add     rsi, 16
        cmp     rdi, r8
        ja      L_001
        cmp     rbx, rdx
        je      L_002
        movzx   esi, byte [r12+rdx]
        mov     byte [rcx+rdx+8H], sil
        lea     rsi, [rdx+1H]
        cmp     rbx, rsi
        jle     L_002
        movzx   edi, byte [r12+rdx+1H]
        lea     rsi, [rdx+2H]
        cmp     rbx, rsi
        mov     byte [rcx+rdx+9H], dil
        jle     L_002
        movzx   edi, byte [r12+rdx+2H]
        lea     rsi, [rdx+3H]
        cmp     rbx, rsi
        mov     byte [rcx+rdx+0AH], dil
        jle     L_002
        movzx   edi, byte [r12+rdx+3H]
        lea     rsi, [rdx+4H]
        cmp     rbx, rsi
        mov     byte [rcx+rdx+0BH], dil
        jle     L_002
        movzx   edi, byte [r12+rdx+4H]
        lea     rsi, [rdx+5H]
        cmp     rbx, rsi
        mov     byte [rcx+rdx+0CH], dil
        jle     L_002
        movzx   edi, byte [r12+rdx+5H]
        lea     rsi, [rdx+6H]
        cmp     rbx, rsi
        mov     byte [rcx+rdx+0DH], dil
        jle     L_002
        movzx   edi, byte [r12+rdx+6H]
        lea     rsi, [rdx+7H]
        cmp     rbx, rsi
        mov     byte [rcx+rdx+0EH], dil
        jle     L_002
        movzx   edi, byte [r12+rdx+7H]
        lea     rsi, [rdx+8H]
        cmp     rbx, rsi
        mov     byte [rcx+rdx+0FH], dil
        jle     L_002
        movzx   edi, byte [r12+rdx+8H]
        lea     rsi, [rdx+9H]
        cmp     rbx, rsi
        mov     byte [rcx+rdx+10H], dil
        jle     L_002
        movzx   edi, byte [r12+rdx+9H]
        lea     rsi, [rdx+0AH]
        cmp     rbx, rsi
        mov     byte [rcx+rdx+11H], dil
        jle     L_002
        movzx   edi, byte [r12+rdx+0AH]
        lea     rsi, [rdx+0BH]
        cmp     rbx, rsi
        mov     byte [rcx+rdx+12H], dil
        jle     L_002
        movzx   edi, byte [r12+rdx+0BH]
        lea     rsi, [rdx+0CH]
        cmp     rbx, rsi
        mov     byte [rcx+rdx+13H], dil
        jle     L_002
        movzx   edi, byte [r12+rdx+0CH]
        lea     rsi, [rdx+0DH]
        cmp     rbx, rsi
        mov     byte [rcx+rdx+14H], dil
        jle     L_002
        movzx   edi, byte [r12+rdx+0DH]
        lea     rsi, [rdx+0EH]
        cmp     rbx, rsi
        mov     byte [rcx+rdx+15H], dil
        jle     L_002
        movzx   edx, byte [r12+rdx+0EH]
        mov     byte [rcx+rsi+8H], dl
L_002:  test    rbp, rbp
        jle     L_004
        lea     rsi, [rcx+rbx]
        lea     r8, [r13+10H]
        lea     rdx, [rsi+18H]
        cmp     r13, rdx
        lea     rdx, [rsi+8H]
        setae   dil
        cmp     r8, rdx
        setbe   dl
        or      dil, dl
        je      L_005
        cmp     rbp, 15
        jbe     L_005
        mov     r8, rbp
        xor     edi, edi
        xor     r9d, r9d
        shr     r8, 4
        mov     rdx, r8
        shl     rdx, 4
L_003:  movdqu  xmm0, oword [r13+rdi]
        add     r9, 1
        movdqu  oword [rsi+rdi+8H], xmm0
        add     rdi, 16
        cmp     r8, r9
        ja      L_003
        cmp     rbp, rdx
        je      L_004
        movzx   esi, byte [r13+rdx]
        add     rbx, rax
        mov     byte [rbx+rdx], sil
        lea     rsi, [rdx+1H]
        cmp     rbp, rsi
        jle     L_004
        movzx   edi, byte [r13+rdx+1H]
        lea     rsi, [rdx+2H]
        cmp     rbp, rsi
        mov     byte [rdx+rbx+1H], dil
        jle     L_004
        movzx   edi, byte [r13+rdx+2H]
        lea     rsi, [rdx+3H]
        cmp     rbp, rsi
        mov     byte [rdx+rbx+2H], dil
        jle     L_004
        movzx   edi, byte [r13+rdx+3H]
        lea     rsi, [rdx+4H]
        cmp     rbp, rsi
        mov     byte [rdx+rbx+3H], dil
        jle     L_004
        movzx   edi, byte [r13+rdx+4H]
        lea     rsi, [rdx+5H]
        cmp     rbp, rsi
        mov     byte [rdx+rbx+4H], dil
        jle     L_004
        movzx   edi, byte [r13+rdx+5H]
        lea     rsi, [rdx+6H]
        cmp     rbp, rsi
        mov     byte [rdx+rbx+5H], dil
        jle     L_004
        movzx   edi, byte [r13+rdx+6H]
        lea     rsi, [rdx+7H]
        cmp     rbp, rsi
        mov     byte [rdx+rbx+6H], dil
        jle     L_004
        movzx   edi, byte [r13+rdx+7H]
        lea     rsi, [rdx+8H]
        cmp     rbp, rsi
        mov     byte [rdx+rbx+7H], dil
        jle     L_004
        movzx   edi, byte [r13+rdx+8H]
        lea     rsi, [rdx+9H]
        cmp     rbp, rsi
        mov     byte [rdx+rbx+8H], dil
        jle     L_004
        movzx   edi, byte [r13+rdx+9H]
        lea     rsi, [rdx+0AH]
        cmp     rbp, rsi
        mov     byte [rdx+rbx+9H], dil
        jle     L_004
        movzx   edi, byte [r13+rdx+0AH]
        lea     rsi, [rdx+0BH]
        cmp     rbp, rsi
        mov     byte [rdx+rbx+0AH], dil
        jle     L_004
        movzx   edi, byte [r13+rdx+0BH]
        lea     rsi, [rdx+0CH]
        cmp     rbp, rsi
        mov     byte [rdx+rbx+0BH], dil
        jle     L_004
        movzx   edi, byte [r13+rdx+0CH]
        lea     rsi, [rdx+0DH]
        cmp     rbp, rsi
        mov     byte [rdx+rbx+0CH], dil
        jle     L_004
        movzx   edi, byte [r13+rdx+0DH]
        lea     rsi, [rdx+0EH]
        cmp     rbp, rsi
        mov     byte [rdx+rbx+0DH], dil
        jle     L_004
        movzx   edx, byte [r13+rdx+0EH]
        mov     byte [rbx+rsi], dl
L_004:  mov     byte [rcx+r14+8H], 0
        pop     rbx
        pop     rbp
        pop     r12
        pop     r13
        pop     r14
        ret






ALIGN   16
L_005:  xor     edx, edx




ALIGN   8
L_006:  movzx   edi, byte [r13+rdx]
        mov     byte [rsi+rdx+8H], dil
        add     rdx, 1
        cmp     rdx, rbp
        jnz     L_006
        mov     byte [rcx+r14+8H], 0
        pop     rbx
        pop     rbp
        pop     r12
        pop     r13
        pop     r14
        ret





ALIGN   8
L_007:  xor     edx, edx




ALIGN   8
L_008:  movzx   esi, byte [r12+rdx]
        mov     byte [rcx+rdx+8H], sil
        add     rdx, 1
        cmp     rdx, rbx
        jnz     L_008
        jmp     L_002


__string__length__:
        mov     rax, qword [rdi-8H]
        ret







ALIGN   16

__string__ord__:
        movsx   rax, byte [rdi+rsi]
        ret







ALIGN   16

__string__parseInt__:
        movsx   ecx, byte [rdi]
        mov     rax, qword [rdi-8H]
        cmp     cl, 45
        jz      L_013
        test    rax, rax
        jle     L_011
        lea     edx, [rcx-30H]
        cmp     dl, 9
        ja      L_011
        lea     rdx, [rdi+1H]
        add     rdi, rax
        xor     eax, eax
        jmp     L_010





ALIGN   8
L_009:  movsx   ecx, byte [rdx]
        add     rdx, 1
        lea     esi, [rcx-30H]
        cmp     sil, 9
        ja      L_012
L_010:  sub     ecx, 48
        lea     rax, [rax+rax*4]
        cmp     rdx, rdi
        movsxd  rcx, ecx
        lea     rax, [rcx+rax*2]
        jnz     L_009

        ret

L_011:  xor     eax, eax
        nop
L_012:

        ret





ALIGN   8
L_013:  cmp     rax, 1
        jle     L_011
        movsx   ecx, byte [rdi+1H]
        lea     edx, [rcx-30H]
        cmp     dl, 9
        ja      L_011
        lea     rdx, [rdi+2H]
        add     rdi, rax
        xor     eax, eax
        jmp     L_015





ALIGN   8
L_014:  movsx   ecx, byte [rdx]
        add     rdx, 1
        lea     esi, [rcx-30H]
        cmp     sil, 9
        ja      L_012
L_015:  lea     rax, [rax+rax*4]
        sub     ecx, 48
        movsxd  rcx, ecx
        add     rax, rax
        sub     rax, rcx
        cmp     rdx, rdi
        jnz     L_014

        ret


        nop

ALIGN   16
__array__size__:
        mov     rax, qword [rdi-8H]
        ret







ALIGN   16

getString:
        sub     rsp, 8
        mov     edi, 508
        call    malloc
        lea     rdi, [rax+8H]
        call    gets
        xor     edx, edx
        cmp     byte [rax], 0
        mov     qword [rax-8H], 0
        jz      L_017





ALIGN   16
L_016:  add     rdx, 1
        mov     qword [rax-8H], rdx
        cmp     byte [rax+rdx], 0
        jnz     L_016
L_017:  add     rsp, 8
        ret







ALIGN   16

getInt:
        mov     rdi, qword [rel stdin]
        push    rbx
        call    _IO_getc
        cmp     al, 45
        movsx   edx, al
        jz      L_020
        sub     eax, 48
        xor     ebx, ebx
        cmp     al, 9
        ja      L_019




ALIGN   8
L_018:  mov     rdi, qword [rel stdin]
        lea     rax, [rbx+rbx*4]
        sub     edx, 48
        movsxd  rdx, edx
        lea     rbx, [rdx+rax*2]
        call    _IO_getc
        movsx   edx, al
        sub     eax, 48
        cmp     al, 9
        jbe     L_018
L_019:  mov     rax, rbx
        pop     rbx
        ret





ALIGN   8
L_020:  xor     ebx, ebx
        jmp     L_022





ALIGN   8
L_021:  lea     rbx, [rbx+rbx*4]
        movsx   eax, al
        sub     eax, 48
        add     rbx, rbx
        cdqe
        sub     rbx, rax
L_022:  mov     rdi, qword [rel stdin]
        call    _IO_getc
        lea     edx, [rax-30H]
        cmp     dl, 9
        jbe     L_021
        mov     rax, rbx
        pop     rbx
        ret







ALIGN   16

print:
        push    rbx
        mov     rbx, rdi
        movsx   edi, byte [rdi]
        test    dil, dil
        jz      L_024




ALIGN   8
L_023:  mov     rsi, qword [rel stdout]
        add     rbx, 1
        call    _IO_putc
        movsx   edi, byte [rbx]
        test    dil, dil
        jnz     L_023
L_024:  pop     rbx
        ret






ALIGN   8

println:
        jmp     puts







ALIGN   16

toString:
        push    r13
        push    r12
        push    rbp
        push    rbx
        mov     rbx, rdi
        sub     rsp, 8
        test    rdi, rdi
        je      L_031
        js      L_030
        mov     edi, 10
        xor     ebp, ebp
        mov     r12d, 1
L_025:  cmp     rbx, 9
        jle     L_032
        mov     rcx, rbx
        mov     rsi, qword 6666666666666667H
L_026:  mov     rax, rcx
        sar     rcx, 63
        add     r12, 1
        imul    rsi
        sar     rdx, 2
        sub     rdx, rcx
        cmp     rdx, 9
        mov     rcx, rdx
        jg      L_026
        lea     rdi, [r12+9H]
        lea     r13, [r12-1H]
L_027:  call    malloc
        lea     r9, [rax+8H]
        lea     rcx, [rax+r13]
        mov     r8, rax
        mov     qword [rax], r12
        mov     rdi, qword 6666666666666667H




ALIGN   8
L_028:  mov     rax, rbx
        mov     rsi, rbx
        sub     rcx, 1
        imul    rdi
        sar     rsi, 63
        sar     rdx, 2
        sub     rdx, rsi
        lea     rsi, [rdx+rdx*4]
        add     rsi, rsi
        sub     rbx, rsi
        add     ebx, 48
        mov     byte [rcx+9H], bl
        test    rdx, rdx
        mov     rbx, rdx
        jnz     L_028
        cmp     rbp, 1
        mov     rax, r9
        jz      L_029
        add     rsp, 8
        pop     rbx
        pop     rbp
        pop     r12
        pop     r13
        ret





ALIGN   8
L_029:  mov     byte [r8+8H], 45
        add     rsp, 8
        pop     rbx
        pop     rbp
        pop     r12
        pop     r13
        ret

L_030:  neg     rbx
        mov     edi, 11
        mov     ebp, 1
        mov     r12d, 2
        jmp     L_025





ALIGN   16
L_031:  mov     edi, 10
        call    malloc
        mov     qword [rax], 1
        mov     byte [rax+8H], 48
        add     rax, 8
        mov     byte [rax+1H], 0
        add     rsp, 8
        pop     rbx
        pop     rbp
        pop     r12
        pop     r13
        ret

L_032:  mov     r13, rbp
        jmp     L_027


__string__substring__:
        push    r13
        mov     r13, rdx
        sub     r13, rsi
        push    r12
        mov     r12, rdx
        push    rbp
        mov     rbp, rdi
        lea     rdi, [r13+0AH]
        push    rbx
        mov     rbx, rsi
        sub     rsp, 8
        call    malloc
        lea     rdx, [r13+1H]
        cmp     r12, rbx
        mov     rsi, rax
        lea     rax, [rax+8H]
        mov     qword [rax-8H], rdx
        jl      L_034
        lea     rcx, [rbp+rbx]
        lea     rdi, [rsi+18H]
        cmp     rcx, rdi
        lea     rdi, [rcx+10H]
        setae   r8b
        cmp     rax, rdi
        setae   dil
        or      r8b, dil
        je      L_035
        cmp     rdx, 15
        jbe     L_035
        mov     r9, rdx
        xor     r8d, r8d
        xor     r10d, r10d
        shr     r9, 4
        mov     rdi, r9
        shl     rdi, 4
L_033:  movdqu  xmm0, oword [rcx+r8]
        add     r10, 1
        movdqu  oword [rsi+r8+8H], xmm0
        add     r8, 16
        cmp     r9, r10
        ja      L_033
        cmp     rdx, rdi
        lea     rcx, [rbx+rdi]
        je      L_034
        movzx   edx, byte [rbp+rcx]
        mov     byte [rsi+rdi+8H], dl
        lea     rdx, [rcx+1H]
        cmp     r12, rdx
        jl      L_034
        movzx   edi, byte [rbp+rcx+1H]
        sub     rdx, rbx
        mov     byte [rsi+rdx+8H], dil
        lea     rdx, [rcx+2H]
        cmp     r12, rdx
        jl      L_034
        movzx   edi, byte [rbp+rcx+2H]
        sub     rdx, rbx
        mov     byte [rsi+rdx+8H], dil
        lea     rdx, [rcx+3H]
        cmp     r12, rdx
        jl      L_034
        movzx   edi, byte [rbp+rcx+3H]
        sub     rdx, rbx
        mov     byte [rsi+rdx+8H], dil
        lea     rdx, [rcx+4H]
        cmp     r12, rdx
        jl      L_034
        movzx   edi, byte [rbp+rcx+4H]
        sub     rdx, rbx
        mov     byte [rsi+rdx+8H], dil
        lea     rdx, [rcx+5H]
        cmp     r12, rdx
        jl      L_034
        movzx   edi, byte [rbp+rcx+5H]
        sub     rdx, rbx
        mov     byte [rsi+rdx+8H], dil
        lea     rdx, [rcx+6H]
        cmp     r12, rdx
        jl      L_034
        movzx   edi, byte [rbp+rcx+6H]
        sub     rdx, rbx
        mov     byte [rsi+rdx+8H], dil
        lea     rdx, [rcx+7H]
        cmp     r12, rdx
        jl      L_034
        movzx   edi, byte [rbp+rcx+7H]
        sub     rdx, rbx
        mov     byte [rsi+rdx+8H], dil
        lea     rdx, [rcx+8H]
        cmp     r12, rdx
        jl      L_034
        movzx   edi, byte [rbp+rcx+8H]
        sub     rdx, rbx
        mov     byte [rsi+rdx+8H], dil
        lea     rdx, [rcx+9H]
        cmp     r12, rdx
        jl      L_034
        movzx   edi, byte [rbp+rcx+9H]
        sub     rdx, rbx
        mov     byte [rsi+rdx+8H], dil
        lea     rdx, [rcx+0AH]
        cmp     r12, rdx
        jl      L_034
        movzx   edi, byte [rbp+rcx+0AH]
        sub     rdx, rbx
        mov     byte [rsi+rdx+8H], dil
        lea     rdx, [rcx+0BH]
        cmp     r12, rdx
        jl      L_034
        movzx   edi, byte [rbp+rcx+0BH]
        sub     rdx, rbx
        mov     byte [rsi+rdx+8H], dil
        lea     rdx, [rcx+0CH]
        cmp     r12, rdx
        jl      L_034
        movzx   edi, byte [rbp+rcx+0CH]
        sub     rdx, rbx
        mov     byte [rsi+rdx+8H], dil
        lea     rdx, [rcx+0DH]
        cmp     r12, rdx
        jl      L_034
        movzx   edi, byte [rbp+rcx+0DH]
        sub     rdx, rbx
        mov     byte [rsi+rdx+8H], dil
        lea     rdx, [rcx+0EH]
        cmp     r12, rdx
        jl      L_034
        movzx   ecx, byte [rbp+rcx+0EH]
        sub     rdx, rbx
        mov     byte [rsi+rdx+8H], cl
L_034:  mov     byte [rax+r13+1H], 0
        add     rsp, 8
        pop     rbx
        pop     rbp
        pop     r12
        pop     r13
        ret

L_035:  add     r12, 1
        sub     rsi, rbx





ALIGN   16
L_036:  movzx   edx, byte [rbp+rbx]
        mov     byte [rsi+rbx+8H], dl
        add     rbx, 1
        cmp     rbx, r12
        jnz     L_036
        jmp     L_034







ALIGN   16

__string__less__:
        cmp     byte [rdi], 0
        jnz     L_038
        test    rsi, rsi
        jnz     L_038


        movzx   eax, byte [abs 0H]
        test    al, al
        jg      L_039





ALIGN   16
L_037:  test    al, al
        jz      L_037
L_038:  xor     eax, eax
        ret

L_039:  mov     eax, 1
        ret






ALIGN   8

__string__greater__:
        cmp     byte [rdi], 0
        jnz     L_041
        test    rsi, rsi
        jnz     L_041


        movzx   eax, byte [abs 0H]
        test    al, al
        jg      L_041





ALIGN   16
L_040:  test    al, al
        jz      L_040
        mov     eax, 1
        ret

L_041:  xor     eax, eax
        ret






ALIGN   8

__string__equals__:
        cmp     byte [rdi], 0
        jnz     L_044
        test    rsi, rsi
        jnz     L_044


        cmp     byte [abs 0H], 0
        jnz     L_043
L_042:  jmp     L_042






ALIGN   16
L_043:  xor     eax, eax
        ret





ALIGN   8
L_044:  mov     eax, 1




ALIGN   8
        ret







ALIGN   16

__string__neq__:
        cmp     byte [rdi], 0
        jnz     L_047
        test    rsi, rsi
        jnz     L_047


        cmp     byte [abs 0H], 0
        jnz     L_046
L_045:  jmp     L_045






ALIGN   16
L_046:  mov     eax, 1
        ret






ALIGN   16
L_047:  xor     eax, eax
        ret

