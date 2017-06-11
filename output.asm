; Disassembly of file: output.o
; Sun Jun 11 15:57:15 2017
; Mode: 64 bits
; Syntax: YASM/NASM
; Instruction set: SSE, x64

default rel

global _str_le
global _str_eql
global _strlength
global _substring
global _ord
global _parseInt
global _getInt
global _getString
global _size
global _toMoStr
global _str_add
global ___lib_printlnInt
global ___lib_printInt
global ___lib_malloc
global _println
global _print
global _toString
global _exchange
global _makeHeap
global _adjustHeap
global _heapSort: function
global _main

extern _strlen                                          ; near
extern _strcpy                                          ; near
extern _strcmp                                          ; near
extern _scanf                                           ; near
extern _puts                                            ; near
extern _printf                                          ; near
extern _memcpy                                          ; near
extern _malloc                                          ; near
extern _n_                                              ; qword
extern _a_                                              ; qword


SECTION ._TEXT.__text align=16 execute                  ; section number 1, code

_str_le:; Function begin
        push    rbp                                     ; 0000 _ 55
        mov     rbp, rsp                                ; 0001 _ 48: 89. E5
        call    _strcmp                                 ; 0004 _ E8, 00000000(rel)
        shr     eax, 31                                 ; 0009 _ C1. E8, 1F
        pop     rbp                                     ; 000C _ 5D
        ret                                             ; 000D _ C3
; _str_le End of function

; Filling space: 2H
; Filler type: NOP with prefixes
;       db 66H, 90H

ALIGN   8

_str_eql:; Function begin
        push    rbp                                     ; 0010 _ 55
        mov     rbp, rsp                                ; 0011 _ 48: 89. E5
        movsxd  r8, dword [rdi-4H]                      ; 0014 _ 4C: 63. 47, FC
        cmp     r8d, dword [rsi-4H]                     ; 0018 _ 44: 3B. 46, FC
        jnz     ?_002                                   ; 001C _ 75, 25
        mov     eax, 1                                  ; 001E _ B8, 00000001
        test    r8d, r8d                                ; 0023 _ 45: 85. C0
        jle     ?_003                                   ; 0026 _ 7E, 1D
        xor     edx, edx                                ; 0028 _ 31. D2
; Filling space: 6H
; Filler type: Multi-byte NOP
;       db 66H, 0FH, 1FH, 44H, 00H, 00H

ALIGN   8
?_001:  movzx   ecx, byte [rdi+rdx]                     ; 0030 _ 0F B6. 0C 17
        cmp     cl, byte [rsi+rdx]                      ; 0034 _ 3A. 0C 16
        jnz     ?_002                                   ; 0037 _ 75, 0A
        inc     rdx                                     ; 0039 _ 48: FF. C2
        cmp     rdx, r8                                 ; 003C _ 4C: 39. C2
        jl      ?_001                                   ; 003F _ 7C, EF
        jmp     ?_003                                   ; 0041 _ EB, 02

?_002:  xor     eax, eax                                ; 0043 _ 31. C0
?_003:  pop     rbp                                     ; 0045 _ 5D
        ret                                             ; 0046 _ C3
; _str_eql End of function

; Filling space: 9H
; Filler type: Multi-byte NOP
;       db 66H, 0FH, 1FH, 84H, 00H, 00H, 00H, 00H
;       db 00H

ALIGN   16

_strlength:; Function begin
        push    rbp                                     ; 0050 _ 55
        mov     rbp, rsp                                ; 0051 _ 48: 89. E5
        movsxd  rax, dword [rdi-4H]                     ; 0054 _ 48: 63. 47, FC
        pop     rbp                                     ; 0058 _ 5D
        ret                                             ; 0059 _ C3
; _strlength End of function

; Filling space: 6H
; Filler type: Multi-byte NOP
;       db 66H, 0FH, 1FH, 44H, 00H, 00H

ALIGN   8

_substring:; Function begin
        push    rbp                                     ; 0060 _ 55
        mov     rbp, rsp                                ; 0061 _ 48: 89. E5
        push    r15                                     ; 0064 _ 41: 57
        push    r14                                     ; 0066 _ 41: 56
        push    r12                                     ; 0068 _ 41: 54
        push    rbx                                     ; 006A _ 53
        mov     rbx, rdx                                ; 006B _ 48: 89. D3
        mov     r15, rsi                                ; 006E _ 49: 89. F7
        mov     r14, rdi                                ; 0071 _ 49: 89. FE
        mov     rax, rbx                                ; 0074 _ 48: 89. D8
        sub     rax, r15                                ; 0077 _ 4C: 29. F8
        inc     rax                                     ; 007A _ 48: FF. C0
        movsxd  r12, eax                                ; 007D _ 4C: 63. E0
        lea     rdi, [r12+5H]                           ; 0080 _ 49: 8D. 7C 24, 05
        call    _malloc                                 ; 0085 _ E8, 00000000(rel)
        mov     dword [rax], r12d                       ; 008A _ 44: 89. 20
        add     rax, 4                                  ; 008D _ 48: 83. C0, 04
        movsxd  rdx, r15d                               ; 0091 _ 49: 63. D7
        cmp     rdx, rbx                                ; 0094 _ 48: 39. DA
        jle     ?_004                                   ; 0097 _ 7E, 04
        xor     ecx, ecx                                ; 0099 _ 31. C9
        jmp     ?_006                                   ; 009B _ EB, 3F

?_004:  inc     r15d                                    ; 009D _ 41: FF. C7
        movsxd  rsi, r15d                               ; 00A0 _ 49: 63. F7
        dec     rsi                                     ; 00A3 _ 48: FF. CE
        xor     ecx, ecx                                ; 00A6 _ 31. C9
        mov     r8, qword 100000000H                    ; 00A8 _ 49: B8, 0000000100000000
        mov     rdi, rax                                ; 00B2 _ 48: 89. C7
; Filling space: 0BH
; Filler type: Multi-byte NOP
;       db 66H, 66H, 2EH, 0FH, 1FH, 84H, 00H, 00H
;       db 00H, 00H, 00H

ALIGN   16
?_005:  movzx   edx, byte [r14+rdx]                     ; 00C0 _ 41: 0F B6. 14 16
        mov     byte [rdi], dl                          ; 00C5 _ 88. 17
        inc     rsi                                     ; 00C7 _ 48: FF. C6
        movsxd  rdx, esi                                ; 00CA _ 48: 63. D6
        inc     rdi                                     ; 00CD _ 48: FF. C7
        add     rcx, r8                                 ; 00D0 _ 4C: 01. C1
        cmp     rsi, rbx                                ; 00D3 _ 48: 39. DE
        jle     ?_005                                   ; 00D6 _ 7E, E8
        sar     rcx, 32                                 ; 00D8 _ 48: C1. F9, 20
?_006:  mov     byte [rax+rcx], 0                       ; 00DC _ C6. 04 08, 00
        pop     rbx                                     ; 00E0 _ 5B
        pop     r12                                     ; 00E1 _ 41: 5C
        pop     r14                                     ; 00E3 _ 41: 5E
        pop     r15                                     ; 00E5 _ 41: 5F
        pop     rbp                                     ; 00E7 _ 5D
        ret                                             ; 00E8 _ C3
; _substring End of function

; Filling space: 7H
; Filler type: Multi-byte NOP
;       db 0FH, 1FH, 80H, 00H, 00H, 00H, 00H

ALIGN   8

_ord:   ; Function begin
        push    rbp                                     ; 00F0 _ 55
        mov     rbp, rsp                                ; 00F1 _ 48: 89. E5
        movsx   rax, byte [rdi+rsi]                     ; 00F4 _ 48: 0F BE. 04 37
        pop     rbp                                     ; 00F9 _ 5D
        ret                                             ; 00FA _ C3
; _ord End of function

; Filling space: 5H
; Filler type: Multi-byte NOP
;       db 0FH, 1FH, 44H, 00H, 00H

ALIGN   8

_parseInt:; Function begin
        push    rbp                                     ; 0100 _ 55
        mov     rbp, rsp                                ; 0101 _ 48: 89. E5
        movsxd  r8, dword [rdi-4H]                      ; 0104 _ 4C: 63. 47, FC
        xor     ecx, ecx                                ; 0108 _ 31. C9
        test    r8, r8                                  ; 010A _ 4D: 85. C0
        jle     ?_008                                   ; 010D _ 7E, 2C
        xor     edx, edx                                ; 010F _ 31. D2
        xor     ecx, ecx                                ; 0111 _ 31. C9
; Filling space: 0DH
; Filler type: Multi-byte NOP
;       db 66H, 66H, 66H, 66H, 2EH, 0FH, 1FH, 84H
;       db 00H, 00H, 00H, 00H, 00H

ALIGN   16
?_007:  movsx   esi, byte [rdi+rdx]                     ; 0120 _ 0F BE. 34 17
        mov     eax, esi                                ; 0124 _ 89. F0
        add     al, -48                                 ; 0126 _ 04, D0
        cmp     al, 9                                   ; 0128 _ 3C, 09
        ja      ?_008                                   ; 012A _ 77, 0F
        lea     eax, [rcx+rcx*4]                        ; 012C _ 8D. 04 89
        lea     ecx, [rsi+rax*2-30H]                    ; 012F _ 8D. 4C 46, D0
        inc     rdx                                     ; 0133 _ 48: FF. C2
        cmp     rdx, r8                                 ; 0136 _ 4C: 39. C2
        jl      ?_007                                   ; 0139 _ 7C, E5
?_008:  movsxd  rax, ecx                                ; 013B _ 48: 63. C1
        pop     rbp                                     ; 013E _ 5D
        ret                                             ; 013F _ C3
; _parseInt End of function

_getInt:; Function begin
        push    rbp                                     ; 0140 _ 55
        mov     rbp, rsp                                ; 0141 _ 48: 89. E5
        sub     rsp, 16                                 ; 0144 _ 48: 83. EC, 10
        mov     dword [rbp-4H], 0                       ; 0148 _ C7. 45, FC, 00000000
        lea     rdi, [rel _str_le+0B00H]                ; 014F _ 48: 8D. 3D, 00000B00(rel)
        lea     rsi, [rbp-4H]                           ; 0156 _ 48: 8D. 75, FC
        xor     eax, eax                                ; 015A _ 31. C0
        call    _scanf                                  ; 015C _ E8, 00000000(rel)
        movsxd  rax, dword [rbp-4H]                     ; 0161 _ 48: 63. 45, FC
        add     rsp, 16                                 ; 0165 _ 48: 83. C4, 10
        pop     rbp                                     ; 0169 _ 5D
        ret                                             ; 016A _ C3
; _getInt End of function

; Filling space: 5H
; Filler type: Multi-byte NOP
;       db 0FH, 1FH, 44H, 00H, 00H

ALIGN   8

_getString:; Function begin
        push    rbp                                     ; 0170 _ 55
        mov     rbp, rsp                                ; 0171 _ 48: 89. E5
        push    r14                                     ; 0174 _ 41: 56
        push    rbx                                     ; 0176 _ 53
        mov     edi, 2004                               ; 0177 _ BF, 000007D4
        call    _malloc                                 ; 017C _ E8, 00000000(rel)
        mov     r14, rax                                ; 0181 _ 49: 89. C6
        lea     rbx, [r14+4H]                           ; 0184 _ 49: 8D. 5E, 04
        lea     rdi, [rel _str_le+0ACAH]                ; 0188 _ 48: 8D. 3D, 00000ACA(rel)
        xor     eax, eax                                ; 018F _ 31. C0
        mov     rsi, rbx                                ; 0191 _ 48: 89. DE
        call    _scanf                                  ; 0194 _ E8, 00000000(rel)
        mov     rdi, rbx                                ; 0199 _ 48: 89. DF
        call    _strlen                                 ; 019C _ E8, 00000000(rel)
        mov     dword [r14], eax                        ; 01A1 _ 41: 89. 06
        mov     rax, rbx                                ; 01A4 _ 48: 89. D8
        pop     rbx                                     ; 01A7 _ 5B
        pop     r14                                     ; 01A8 _ 41: 5E
        pop     rbp                                     ; 01AA _ 5D
        ret                                             ; 01AB _ C3
; _getString End of function

; Filling space: 4H
; Filler type: Multi-byte NOP
;       db 0FH, 1FH, 40H, 00H

ALIGN   8

_size:  ; Function begin
        push    rbp                                     ; 01B0 _ 55
        mov     rbp, rsp                                ; 01B1 _ 48: 89. E5
        mov     rax, qword [rdi-8H]                     ; 01B4 _ 48: 8B. 47, F8
        pop     rbp                                     ; 01B8 _ 5D
        ret                                             ; 01B9 _ C3
; _size End of function

; Filling space: 6H
; Filler type: Multi-byte NOP
;       db 66H, 0FH, 1FH, 44H, 00H, 00H

ALIGN   8

_toMoStr:; Function begin
        push    rbp                                     ; 01C0 _ 55
        mov     rbp, rsp                                ; 01C1 _ 48: 89. E5
        push    r15                                     ; 01C4 _ 41: 57
        push    r14                                     ; 01C6 _ 41: 56
        push    rbx                                     ; 01C8 _ 53
        push    rax                                     ; 01C9 _ 50
        mov     r14, rdi                                ; 01CA _ 49: 89. FE
        call    _strlen                                 ; 01CD _ E8, 00000000(rel)
        movsxd  r15, eax                                ; 01D2 _ 4C: 63. F8
        lea     rdi, [r15+5H]                           ; 01D5 _ 49: 8D. 7F, 05
        call    _malloc                                 ; 01D9 _ E8, 00000000(rel)
        mov     rbx, rax                                ; 01DE _ 48: 89. C3
        mov     dword [rbx], r15d                       ; 01E1 _ 44: 89. 3B
        add     rbx, 4                                  ; 01E4 _ 48: 83. C3, 04
        mov     rdi, rbx                                ; 01E8 _ 48: 89. DF
        mov     rsi, r14                                ; 01EB _ 4C: 89. F6
        call    _strcpy                                 ; 01EE _ E8, 00000000(rel)
        mov     rax, rbx                                ; 01F3 _ 48: 89. D8
        add     rsp, 8                                  ; 01F6 _ 48: 83. C4, 08
        pop     rbx                                     ; 01FA _ 5B
        pop     r14                                     ; 01FB _ 41: 5E
        pop     r15                                     ; 01FD _ 41: 5F
        pop     rbp                                     ; 01FF _ 5D
        ret                                             ; 0200 _ C3
; _toMoStr End of function

; Filling space: 0FH
; Filler type: Multi-byte NOP
;       db 66H, 66H, 66H, 66H, 66H, 66H, 2EH, 0FH
;       db 1FH, 84H, 00H, 00H, 00H, 00H, 00H

ALIGN   16

_str_add:; Function begin
        push    rbp                                     ; 0210 _ 55
        mov     rbp, rsp                                ; 0211 _ 48: 89. E5
        push    r15                                     ; 0214 _ 41: 57
        push    r14                                     ; 0216 _ 41: 56
        push    r13                                     ; 0218 _ 41: 55
        push    r12                                     ; 021A _ 41: 54
        push    rbx                                     ; 021C _ 53
        push    rax                                     ; 021D _ 50
        mov     r14, rsi                                ; 021E _ 49: 89. F6
        mov     r15, rdi                                ; 0221 _ 49: 89. FF
        movsxd  r13, dword [r15-4H]                     ; 0224 _ 4D: 63. 6F, FC
        mov     r12d, dword [r14-4H]                    ; 0228 _ 45: 8B. 66, FC
        lea     eax, [r12+r13]                          ; 022C _ 43: 8D. 04 2C
        movsxd  rbx, eax                                ; 0230 _ 48: 63. D8
        lea     rdi, [rbx+5H]                           ; 0233 _ 48: 8D. 7B, 05
        call    _malloc                                 ; 0237 _ E8, 00000000(rel)
        mov     r10, rbx                                ; 023C _ 49: 89. DA
        mov     r8, rax                                 ; 023F _ 49: 89. C0
        lea     rax, [r8+4H]                            ; 0242 _ 49: 8D. 40, 04
        test    r13, r13                                ; 0246 _ 4D: 85. ED
        mov     dword [r8], r10d                        ; 0249 _ 45: 89. 10
        jle     ?_014                                   ; 024C _ 0F 8E, 000000C2
        mov     ecx, r13d                               ; 0252 _ 44: 89. E9
        cmp     r13d, 31                                ; 0255 _ 41: 83. FD, 1F
        jbe     ?_009                                   ; 0259 _ 76, 2A
        mov     r9d, ecx                                ; 025B _ 41: 89. C9
        and     r9d, 1FH                                ; 025E _ 41: 83. E1, 1F
        mov     rsi, rcx                                ; 0262 _ 48: 89. CE
        sub     rsi, r9                                 ; 0265 _ 4C: 29. CE
        jz      ?_009                                   ; 0268 _ 74, 1B
        lea     rdx, [r15+rcx]                          ; 026A _ 49: 8D. 14 0F
        cmp     rax, rdx                                ; 026E _ 48: 39. D0
        jnc     ?_021                                   ; 0271 _ 0F 83, 00000175
        lea     rdx, [r8+rcx+4H]                        ; 0277 _ 49: 8D. 54 08, 04
        cmp     r15, rdx                                ; 027C _ 49: 39. D7
        jnc     ?_021                                   ; 027F _ 0F 83, 00000167
?_009:  xor     esi, esi                                ; 0285 _ 31. F6
?_010:  mov     edx, ecx                                ; 0287 _ 89. CA
        sub     edx, esi                                ; 0289 _ 29. F2
        lea     rdi, [rcx-1H]                           ; 028B _ 48: 8D. 79, FF
        sub     rdi, rsi                                ; 028F _ 48: 29. F7
        and     rdx, 07H                                ; 0292 _ 48: 83. E2, 07
        jz      ?_012                                   ; 0296 _ 74, 18
        neg     rdx                                     ; 0298 _ 48: F7. DA
; Filling space: 5H
; Filler type: Multi-byte NOP
;       db 0FH, 1FH, 44H, 00H, 00H

ALIGN   8
?_011:  movzx   ebx, byte [r15+rsi]                     ; 02A0 _ 41: 0F B6. 1C 37
        mov     byte [rax+rsi], bl                      ; 02A5 _ 88. 1C 30
        inc     rsi                                     ; 02A8 _ 48: FF. C6
        inc     rdx                                     ; 02AB _ 48: FF. C2
        jnz     ?_011                                   ; 02AE _ 75, F0
?_012:  cmp     rdi, 7                                  ; 02B0 _ 48: 83. FF, 07
        jc      ?_014                                   ; 02B4 _ 72, 5E
        sub     rcx, rsi                                ; 02B6 _ 48: 29. F1
        lea     rdi, [r8+rsi+0BH]                       ; 02B9 _ 49: 8D. 7C 30, 0B
        lea     rsi, [r15+rsi+7H]                       ; 02BE _ 49: 8D. 74 37, 07
; Filling space: 0DH
; Filler type: Multi-byte NOP
;       db 66H, 66H, 66H, 66H, 2EH, 0FH, 1FH, 84H
;       db 00H, 00H, 00H, 00H, 00H

ALIGN   16
?_013:  movzx   edx, byte [rsi-7H]                      ; 02D0 _ 0F B6. 56, F9
        mov     byte [rdi-7H], dl                       ; 02D4 _ 88. 57, F9
        movzx   edx, byte [rsi-6H]                      ; 02D7 _ 0F B6. 56, FA
        mov     byte [rdi-6H], dl                       ; 02DB _ 88. 57, FA
        movzx   edx, byte [rsi-5H]                      ; 02DE _ 0F B6. 56, FB
        mov     byte [rdi-5H], dl                       ; 02E2 _ 88. 57, FB
        movzx   edx, byte [rsi-4H]                      ; 02E5 _ 0F B6. 56, FC
        mov     byte [rdi-4H], dl                       ; 02E9 _ 88. 57, FC
        movzx   edx, byte [rsi-3H]                      ; 02EC _ 0F B6. 56, FD
        mov     byte [rdi-3H], dl                       ; 02F0 _ 88. 57, FD
        movzx   edx, byte [rsi-2H]                      ; 02F3 _ 0F B6. 56, FE
        mov     byte [rdi-2H], dl                       ; 02F7 _ 88. 57, FE
        movzx   edx, byte [rsi-1H]                      ; 02FA _ 0F B6. 56, FF
        mov     byte [rdi-1H], dl                       ; 02FE _ 88. 57, FF
        movzx   edx, byte [rsi]                         ; 0301 _ 0F B6. 16
        mov     byte [rdi], dl                          ; 0304 _ 88. 17
        add     rdi, 8                                  ; 0306 _ 48: 83. C7, 08
        add     rsi, 8                                  ; 030A _ 48: 83. C6, 08
        add     rcx, -8                                 ; 030E _ 48: 83. C1, F8
        jnz     ?_013                                   ; 0312 _ 75, BC
?_014:  test    r12d, r12d                              ; 0314 _ 45: 85. E4
        jle     ?_020                                   ; 0317 _ 0F 8E, 000000BB
        cmp     r12d, 31                                ; 031D _ 41: 83. FC, 1F
        jbe     ?_015                                   ; 0321 _ 76, 33
        mov     esi, r12d                               ; 0323 _ 44: 89. E6
        and     esi, 1FH                                ; 0326 _ 83. E6, 1F
        mov     rdx, r12                                ; 0329 _ 4C: 89. E2
        sub     rdx, rsi                                ; 032C _ 48: 29. F2
        jz      ?_015                                   ; 032F _ 74, 25
        lea     rcx, [r8+r13+4H]                        ; 0331 _ 4B: 8D. 4C 28, 04
        lea     rdi, [r14+r12]                          ; 0336 _ 4B: 8D. 3C 26
        cmp     rcx, rdi                                ; 033A _ 48: 39. F9
        jnc     ?_023                                   ; 033D _ 0F 83, 000000E7
        lea     rcx, [r13+r12]                          ; 0343 _ 4B: 8D. 4C 25, 00
        lea     rcx, [r8+rcx+4H]                        ; 0348 _ 49: 8D. 4C 08, 04
        cmp     r14, rcx                                ; 034D _ 49: 39. CE
        jnc     ?_023                                   ; 0350 _ 0F 83, 000000D4
?_015:  xor     edx, edx                                ; 0356 _ 31. D2
?_016:  mov     edi, r12d                               ; 0358 _ 44: 89. E7
        sub     edi, edx                                ; 035B _ 29. D7
        lea     rsi, [r12-1H]                           ; 035D _ 49: 8D. 74 24, FF
        sub     rsi, rdx                                ; 0362 _ 48: 29. D6
        and     rdi, 03H                                ; 0365 _ 48: 83. E7, 03
        jz      ?_018                                   ; 0369 _ 74, 25
        lea     rcx, [r8+r13+4H]                        ; 036B _ 4B: 8D. 4C 28, 04
        neg     rdi                                     ; 0370 _ 48: F7. DF
; Filling space: 0DH
; Filler type: Multi-byte NOP
;       db 66H, 66H, 66H, 66H, 2EH, 0FH, 1FH, 84H
;       db 00H, 00H, 00H, 00H, 00H

ALIGN   16
?_017:  movzx   ebx, byte [r14+rdx]                     ; 0380 _ 41: 0F B6. 1C 16
        mov     byte [rcx+rdx], bl                      ; 0385 _ 88. 1C 11
        inc     rdx                                     ; 0388 _ 48: FF. C2
        inc     rdi                                     ; 038B _ 48: FF. C7
        jnz     ?_017                                   ; 038E _ 75, F0
?_018:  cmp     rsi, 3                                  ; 0390 _ 48: 83. FE, 03
        jc      ?_020                                   ; 0394 _ 72, 42
        sub     r12, rdx                                ; 0396 _ 49: 29. D4
        add     r13, rdx                                ; 0399 _ 49: 01. D5
        lea     rcx, [r8+r13+7H]                        ; 039C _ 4B: 8D. 4C 28, 07
        lea     rdx, [r14+rdx+3H]                       ; 03A1 _ 49: 8D. 54 16, 03
; Filling space: 0AH
; Filler type: Multi-byte NOP
;       db 66H, 2EH, 0FH, 1FH, 84H, 00H, 00H, 00H
;       db 00H, 00H

ALIGN   16
?_019:  movzx   ebx, byte [rdx-3H]                      ; 03B0 _ 0F B6. 5A, FD
        mov     byte [rcx-3H], bl                       ; 03B4 _ 88. 59, FD
        movzx   ebx, byte [rdx-2H]                      ; 03B7 _ 0F B6. 5A, FE
        mov     byte [rcx-2H], bl                       ; 03BB _ 88. 59, FE
        movzx   ebx, byte [rdx-1H]                      ; 03BE _ 0F B6. 5A, FF
        mov     byte [rcx-1H], bl                       ; 03C2 _ 88. 59, FF
        movzx   ebx, byte [rdx]                         ; 03C5 _ 0F B6. 1A
        mov     byte [rcx], bl                          ; 03C8 _ 88. 19
        add     rcx, 4                                  ; 03CA _ 48: 83. C1, 04
        add     rdx, 4                                  ; 03CE _ 48: 83. C2, 04
        add     r12, -4                                 ; 03D2 _ 49: 83. C4, FC
        jnz     ?_019                                   ; 03D6 _ 75, D8
?_020:  mov     byte [rax+r10], 0                       ; 03D8 _ 42: C6. 04 10, 00
        add     rsp, 8                                  ; 03DD _ 48: 83. C4, 08
        pop     rbx                                     ; 03E1 _ 5B
        pop     r12                                     ; 03E2 _ 41: 5C
        pop     r13                                     ; 03E4 _ 41: 5D
        pop     r14                                     ; 03E6 _ 41: 5E
        pop     r15                                     ; 03E8 _ 41: 5F
        pop     rbp                                     ; 03EA _ 5D
        ret                                             ; 03EB _ C3

?_021:  lea     rdx, [r15+10H]                          ; 03EC _ 49: 8D. 57, 10
        lea     rdi, [r8+14H]                           ; 03F0 _ 49: 8D. 78, 14
        mov     rbx, rsi                                ; 03F4 _ 48: 89. F3
; Filling space: 9H
; Filler type: Multi-byte NOP
;       db 66H, 0FH, 1FH, 84H, 00H, 00H, 00H, 00H
;       db 00H

ALIGN   16
?_022:  movups  xmm0, oword [rdx-10H]                   ; 0400 _ 0F 10. 42, F0
        movups  xmm1, oword [rdx]                       ; 0404 _ 0F 10. 0A
        movups  oword [rdi-10H], xmm0                   ; 0407 _ 0F 11. 47, F0
        movups  oword [rdi], xmm1                       ; 040B _ 0F 11. 0F
        add     rdx, 32                                 ; 040E _ 48: 83. C2, 20
        add     rdi, 32                                 ; 0412 _ 48: 83. C7, 20
        add     rbx, -32                                ; 0416 _ 48: 83. C3, E0
        jnz     ?_022                                   ; 041A _ 75, E4
        test    r9d, r9d                                ; 041C _ 45: 85. C9
        jne     ?_010                                   ; 041F _ 0F 85, FFFFFE62
        jmp     ?_014                                   ; 0425 _ E9, FFFFFEEA
; _str_add End of function

?_023:  ; Local function
        lea     rcx, [r8+r13+14H]                       ; 042A _ 4B: 8D. 4C 28, 14
        lea     rdi, [r14+10H]                          ; 042F _ 49: 8D. 7E, 10
        mov     rbx, rdx                                ; 0433 _ 48: 89. D3
; Filling space: 0AH
; Filler type: Multi-byte NOP
;       db 66H, 2EH, 0FH, 1FH, 84H, 00H, 00H, 00H
;       db 00H, 00H

ALIGN   16
?_024:  movups  xmm0, oword [rdi-10H]                   ; 0440 _ 0F 10. 47, F0
        movups  xmm1, oword [rdi]                       ; 0444 _ 0F 10. 0F
        movups  oword [rcx-10H], xmm0                   ; 0447 _ 0F 11. 41, F0
        movups  oword [rcx], xmm1                       ; 044B _ 0F 11. 09
        add     rcx, 32                                 ; 044E _ 48: 83. C1, 20
        add     rdi, 32                                 ; 0452 _ 48: 83. C7, 20
        add     rbx, -32                                ; 0456 _ 48: 83. C3, E0
        jnz     ?_024                                   ; 045A _ 75, E4
        test    esi, esi                                ; 045C _ 85. F6
        jne     ?_016                                   ; 045E _ 0F 85, FFFFFEF4
        jmp     ?_020                                   ; 0464 _ E9, FFFFFF6F

; Filling space: 7H
; Filler type: Multi-byte NOP
;       db 0FH, 1FH, 80H, 00H, 00H, 00H, 00H

ALIGN   8

___lib_printlnInt:; Function begin
        push    rbp                                     ; 0470 _ 55
        mov     rbp, rsp                                ; 0471 _ 48: 89. E5
        mov     rcx, rdi                                ; 0474 _ 48: 89. F9
        lea     rdi, [rel _str_le+7DEH]                 ; 0477 _ 48: 8D. 3D, 000007DE(rel)
        xor     eax, eax                                ; 047E _ 31. C0
        mov     rsi, rcx                                ; 0480 _ 48: 89. CE
        pop     rbp                                     ; 0483 _ 5D
        jmp     _printf                                 ; 0484 _ E9, 00000000(rel)
; ___lib_printlnInt End of function

; Filling space: 7H
; Filler type: Multi-byte NOP
;       db 0FH, 1FH, 80H, 00H, 00H, 00H, 00H

ALIGN   8

___lib_printInt:; Function begin
        push    rbp                                     ; 0490 _ 55
        mov     rbp, rsp                                ; 0491 _ 48: 89. E5
        mov     rcx, rdi                                ; 0494 _ 48: 89. F9
        lea     rdi, [rel _str_le+7C3H]                 ; 0497 _ 48: 8D. 3D, 000007C3(rel)
        xor     eax, eax                                ; 049E _ 31. C0
        mov     rsi, rcx                                ; 04A0 _ 48: 89. CE
        pop     rbp                                     ; 04A3 _ 5D
        jmp     _printf                                 ; 04A4 _ E9, 00000000(rel)
; ___lib_printInt End of function

; Filling space: 7H
; Filler type: Multi-byte NOP
;       db 0FH, 1FH, 80H, 00H, 00H, 00H, 00H

ALIGN   8

___lib_malloc:; Function begin
        push    rbp                                     ; 04B0 _ 55
        mov     rbp, rsp                                ; 04B1 _ 48: 89. E5
        pop     rbp                                     ; 04B4 _ 5D
        jmp     _malloc                                 ; 04B5 _ E9, 00000000(rel)
; ___lib_malloc End of function

; Filling space: 6H
; Filler type: Multi-byte NOP
;       db 66H, 0FH, 1FH, 44H, 00H, 00H

ALIGN   8

_println:; Function begin
        push    rbp                                     ; 04C0 _ 55
        mov     rbp, rsp                                ; 04C1 _ 48: 89. E5
        pop     rbp                                     ; 04C4 _ 5D
        jmp     _puts                                   ; 04C5 _ E9, 00000000(rel)
; _println End of function

; Filling space: 6H
; Filler type: Multi-byte NOP
;       db 66H, 0FH, 1FH, 44H, 00H, 00H

ALIGN   8

_print: ; Function begin
        push    rbp                                     ; 04D0 _ 55
        mov     rbp, rsp                                ; 04D1 _ 48: 89. E5
        mov     rcx, rdi                                ; 04D4 _ 48: 89. F9
        lea     rdi, [rel _str_le+77BH]                 ; 04D7 _ 48: 8D. 3D, 0000077B(rel)
        xor     eax, eax                                ; 04DE _ 31. C0
        mov     rsi, rcx                                ; 04E0 _ 48: 89. CE
        pop     rbp                                     ; 04E3 _ 5D
        jmp     _printf                                 ; 04E4 _ E9, 00000000(rel)
; _print End of function

; Filling space: 7H
; Filler type: Multi-byte NOP
;       db 0FH, 1FH, 80H, 00H, 00H, 00H, 00H

ALIGN   8

_toString:; Function begin
        push    rbp                                     ; 04F0 _ 55
        mov     rbp, rsp                                ; 04F1 _ 48: 89. E5
        push    rbx                                     ; 04F4 _ 53
        push    rax                                     ; 04F5 _ 50
        mov     rbx, rdi                                ; 04F6 _ 48: 89. FB
        mov     edi, 16                                 ; 04F9 _ BF, 00000010
        call    _malloc                                 ; 04FE _ E8, 00000000(rel)
        mov     r9, rax                                 ; 0503 _ 49: 89. C1
        lea     r8, [r9+4H]                             ; 0506 _ 4D: 8D. 41, 04
        test    rbx, rbx                                ; 050A _ 48: 85. DB
        js      ?_025                                   ; 050D _ 78, 05
        mov     rcx, r8                                 ; 050F _ 4C: 89. C1
        jmp     ?_026                                   ; 0512 _ EB, 0F

?_025:  mov     rcx, r9                                 ; 0514 _ 4C: 89. C9
        add     rcx, 5                                  ; 0517 _ 48: 83. C1, 05
        mov     byte [r9+4H], 45                        ; 051B _ 41: C6. 41, 04, 2D
        neg     rbx                                     ; 0520 _ 48: F7. DB
?_026:  test    rbx, rbx                                ; 0523 _ 48: 85. DB
        jz      ?_028                                   ; 0526 _ 74, 4E
        mov     rsi, qword 6666666666666667H            ; 0528 _ 48: BE, 6666666666666667
        mov     rdi, rcx                                ; 0532 _ 48: 89. CF
; Filling space: 0BH
; Filler type: Multi-byte NOP
;       db 66H, 66H, 2EH, 0FH, 1FH, 84H, 00H, 00H
;       db 00H, 00H, 00H

ALIGN   16
?_027:  mov     rax, rbx                                ; 0540 _ 48: 89. D8
        imul    rsi                                     ; 0543 _ 48: F7. EE
        mov     rax, rdx                                ; 0546 _ 48: 89. D0
        shr     rax, 63                                 ; 0549 _ 48: C1. E8, 3F
        sar     rdx, 2                                  ; 054D _ 48: C1. FA, 02
        add     rdx, rax                                ; 0551 _ 48: 01. C2
        add     ebx, 48                                 ; 0554 _ 83. C3, 30
        mov     rax, rdx                                ; 0557 _ 48: 89. D0
        shl     rax, 33                                 ; 055A _ 48: C1. E0, 21
        lea     rax, [rax+rax*4]                        ; 055E _ 48: 8D. 04 80
        shr     rax, 32                                 ; 0562 _ 48: C1. E8, 20
        sub     ebx, eax                                ; 0566 _ 29. C3
        mov     byte [rdi], bl                          ; 0568 _ 88. 1F
        inc     rdi                                     ; 056A _ 48: FF. C7
        movsxd  rbx, edx                                ; 056D _ 48: 63. DA
        test    edx, edx                                ; 0570 _ 85. D2
        jnz     ?_027                                   ; 0572 _ 75, CC
        jmp     ?_029                                   ; 0574 _ EB, 09

?_028:  mov     byte [rcx], 48                          ; 0576 _ C6. 01, 30
        inc     rcx                                     ; 0579 _ 48: FF. C1
        mov     rdi, rcx                                ; 057C _ 48: 89. CF
?_029:  mov     byte [rdi], 0                           ; 057F _ C6. 07, 00
        mov     eax, edi                                ; 0582 _ 89. F8
        sub     eax, r8d                                ; 0584 _ 44: 29. C0
        mov     dword [r9], eax                         ; 0587 _ 41: 89. 01
        dec     rdi                                     ; 058A _ 48: FF. CF
        cmp     rcx, rdi                                ; 058D _ 48: 39. F9
        ja      ?_031                                   ; 0590 _ 77, 26
        inc     rcx                                     ; 0592 _ 48: FF. C1
; Filling space: 0BH
; Filler type: Multi-byte NOP
;       db 66H, 66H, 2EH, 0FH, 1FH, 84H, 00H, 00H
;       db 00H, 00H, 00H

ALIGN   16
?_030:  movzx   eax, byte [rcx-1H]                      ; 05A0 _ 0F B6. 41, FF
        movzx   edx, byte [rdi]                         ; 05A4 _ 0F B6. 17
        mov     byte [rcx-1H], dl                       ; 05A7 _ 88. 51, FF
        mov     byte [rdi], al                          ; 05AA _ 88. 07
        dec     rdi                                     ; 05AC _ 48: FF. CF
        cmp     rcx, rdi                                ; 05AF _ 48: 39. F9
        lea     rcx, [rcx+1H]                           ; 05B2 _ 48: 8D. 49, 01
        jbe     ?_030                                   ; 05B6 _ 76, E8
?_031:  mov     rax, r8                                 ; 05B8 _ 4C: 89. C0
        add     rsp, 8                                  ; 05BB _ 48: 83. C4, 08
        pop     rbx                                     ; 05BF _ 5B
        pop     rbp                                     ; 05C0 _ 5D
        ret                                             ; 05C1 _ C3
; _toString End of function

; Filling space: 0EH
; Filler type: Multi-byte NOP
;       db 66H, 66H, 66H, 66H, 66H, 2EH, 0FH, 1FH
;       db 84H, 00H, 00H, 00H, 00H, 00H

ALIGN   16

_exchange:; Function begin
        push    rbp                                     ; 05D0 _ 55
        mov     rbp, rsp                                ; 05D1 _ 48: 89. E5
        mov     r8, qword [rel _a_]                     ; 05D4 _ 4C: 8B. 05, 00000000(GOT r)
        mov     rcx, qword [r8]                         ; 05DB _ 49: 8B. 08
        mov     rdx, qword [rcx+rdi*8]                  ; 05DE _ 48: 8B. 14 F9
        mov     rax, qword [rcx+rsi*8]                  ; 05E2 _ 48: 8B. 04 F1
        mov     qword [rcx+rdi*8], rax                  ; 05E6 _ 48: 89. 04 F9
        mov     rax, qword [r8]                         ; 05EA _ 49: 8B. 00
        mov     qword [rax+rsi*8], rdx                  ; 05ED _ 48: 89. 14 F0
        pop     rbp                                     ; 05F1 _ 5D
        ret                                             ; 05F2 _ C3
; _exchange End of function

; Filling space: 0DH
; Filler type: Multi-byte NOP
;       db 66H, 66H, 66H, 66H, 2EH, 0FH, 1FH, 84H
;       db 00H, 00H, 00H, 00H, 00H

ALIGN   16

_makeHeap:; Function begin
        push    rbp                                     ; 0600 _ 55
        mov     rbp, rsp                                ; 0601 _ 48: 89. E5
        push    r14                                     ; 0604 _ 41: 56
        push    rbx                                     ; 0606 _ 53
        mov     r8, qword [rel _n_]                     ; 0607 _ 4C: 8B. 05, 00000000(GOT r)
        mov     r10, qword [r8]                         ; 060E _ 4D: 8B. 10
        lea     rax, [r10-1H]                           ; 0611 _ 49: 8D. 42, FF
        cmp     rax, -1                                 ; 0615 _ 48: 83. F8, FF
; Note: Immediate operand could be made smaller by sign extension
        jl      ?_036                                   ; 0619 _ 0F 8C, 0000007F
        mov     rdx, rax                                ; 061F _ 48: 89. C2
        shr     rdx, 63                                 ; 0622 _ 48: C1. EA, 3F
        add     rdx, rax                                ; 0626 _ 48: 01. C2
        mov     r11, rdx                                ; 0629 _ 49: 89. D3
        sar     r11, 1                                  ; 062C _ 49: D1. FB
        mov     r14, r11                                ; 062F _ 4D: 89. DE
        shl     r14, 4                                  ; 0632 _ 49: C1. E6, 04
        lea     rdi, [r11*8]                            ; 0636 _ 4A: 8D. 3C DD, 00000000
        and     rdx, 0FFFFFFFFFFFFFFFEH                 ; 063E _ 48: 83. E2, FE
        mov     r9, qword [rel _a_]                     ; 0642 _ 4C: 8B. 0D, 00000000(GOT r)
        jmp     ?_033                                   ; 0649 _ EB, 17

; Filling space: 5H
; Filler type: Multi-byte NOP
;       db 0FH, 1FH, 44H, 00H, 00H

ALIGN   8
?_032:  dec     r11                                     ; 0650 _ 49: FF. CB
        mov     r10, qword [r8]                         ; 0653 _ 4D: 8B. 10
        add     r14, -16                                ; 0656 _ 49: 83. C6, F0
        add     rdi, -8                                 ; 065A _ 48: 83. C7, F8
        add     rdx, -2                                 ; 065E _ 48: 83. C2, FE
?_033:  lea     rbx, [rdx+1H]                           ; 0662 _ 48: 8D. 5A, 01
        mov     rax, qword [r9]                         ; 0666 _ 49: 8B. 01
        cmp     rbx, r10                                ; 0669 _ 4C: 39. D3
        mov     rcx, rdx                                ; 066C _ 48: 89. D1
        jge     ?_034                                   ; 066F _ 7D, 10
        mov     rcx, qword [r14+rax+8H]                 ; 0671 _ 49: 8B. 4C 06, 08
        cmp     rcx, qword [r14+rax]                    ; 0676 _ 49: 3B. 0C 06
        cmovge  rbx, rdx                                ; 067A _ 48: 0F 4D. DA
        mov     rcx, rbx                                ; 067E _ 48: 89. D9
?_034:  mov     rbx, qword [rdi+rax]                    ; 0681 _ 48: 8B. 1C 07
        mov     rsi, qword [rax+rcx*8]                  ; 0685 _ 48: 8B. 34 C8
        cmp     rbx, rsi                                ; 0689 _ 48: 39. F3
        jle     ?_035                                   ; 068C _ 7E, 0B
        mov     qword [rax+rdi], rsi                    ; 068E _ 48: 89. 34 38
        mov     rax, qword [r9]                         ; 0692 _ 49: 8B. 01
        mov     qword [rax+rcx*8], rbx                  ; 0695 _ 48: 89. 1C C8
?_035:  test    r11, r11                                ; 0699 _ 4D: 85. DB
        jg      ?_032                                   ; 069C _ 7F, B2
?_036:  xor     eax, eax                                ; 069E _ 31. C0
        pop     rbx                                     ; 06A0 _ 5B
        pop     r14                                     ; 06A1 _ 41: 5E
        pop     rbp                                     ; 06A3 _ 5D
        ret                                             ; 06A4 _ C3
; _makeHeap End of function

; Filling space: 0BH
; Filler type: Multi-byte NOP
;       db 66H, 66H, 2EH, 0FH, 1FH, 84H, 00H, 00H
;       db 00H, 00H, 00H

ALIGN   16

_adjustHeap:; Function begin
        push    rbp                                     ; 06B0 _ 55
        mov     rbp, rsp                                ; 06B1 _ 48: 89. E5
        test    rdi, rdi                                ; 06B4 _ 48: 85. FF
        jle     ?_039                                   ; 06B7 _ 7E, 60
        xor     edx, edx                                ; 06B9 _ 31. D2
        mov     r8, qword [rel _a_]                     ; 06BB _ 4C: 8B. 05, 00000000(GOT r)
        xor     r9d, r9d                                ; 06C2 _ 45: 31. C9
; Filling space: 0BH
; Filler type: Multi-byte NOP
;       db 66H, 66H, 2EH, 0FH, 1FH, 84H, 00H, 00H
;       db 00H, 00H, 00H

ALIGN   16
?_037:  mov     rax, rdx                                ; 06D0 _ 48: 89. D0
        or      rax, 01H                                ; 06D3 _ 48: 83. C8, 01
        mov     rsi, qword [r8]                         ; 06D7 _ 49: 8B. 30
        cmp     rax, rdi                                ; 06DA _ 48: 39. F8
        jge     ?_038                                   ; 06DD _ 7D, 13
        mov     r10, qword [rsi+rax*8]                  ; 06DF _ 4C: 8B. 14 C6
        mov     rcx, r9                                 ; 06E3 _ 4C: 89. C9
        shl     rcx, 4                                  ; 06E6 _ 48: C1. E1, 04
        cmp     r10, qword [rsi+rcx]                    ; 06EA _ 4C: 3B. 14 0E
        cmovl   rdx, rax                                ; 06EE _ 48: 0F 4C. D0
?_038:  mov     rax, rdx                                ; 06F2 _ 48: 89. D0
        mov     rdx, qword [rsi+r9*8]                   ; 06F5 _ 4A: 8B. 14 CE
        mov     rcx, qword [rsi+rax*8]                  ; 06F9 _ 48: 8B. 0C C6
        cmp     rdx, rcx                                ; 06FD _ 48: 39. CA
        jle     ?_039                                   ; 0700 _ 7E, 17
        mov     qword [rsi+r9*8], rcx                   ; 0702 _ 4A: 89. 0C CE
        mov     rcx, qword [r8]                         ; 0706 _ 49: 8B. 08
        mov     qword [rcx+rax*8], rdx                  ; 0709 _ 48: 89. 14 C1
        lea     rdx, [rax+rax]                          ; 070D _ 48: 8D. 14 00
        cmp     rdx, rdi                                ; 0711 _ 48: 39. FA
        mov     r9, rax                                 ; 0714 _ 49: 89. C1
        jl      ?_037                                   ; 0717 _ 7C, B7
?_039:  xor     eax, eax                                ; 0719 _ 31. C0
        pop     rbp                                     ; 071B _ 5D
        ret                                             ; 071C _ C3
; _adjustHeap End of function

; Filling space: 3H
; Filler type: Multi-byte NOP
;       db 0FH, 1FH, 00H

ALIGN   8

_heapSort:; Function begin
        push    rbp                                     ; 0720 _ 55
        mov     rbp, rsp                                ; 0721 _ 48: 89. E5
        push    rbx                                     ; 0724 _ 53
        mov     r8, qword [rel _n_]                     ; 0725 _ 4C: 8B. 05, 00000000(GOT r)
        mov     rdi, qword [r8]                         ; 072C _ 49: 8B. 38
        test    rdi, rdi                                ; 072F _ 48: 85. FF
        jle     ?_045                                   ; 0732 _ 0F 8E, 000000B0
        xor     r10d, r10d                              ; 0738 _ 45: 31. D2
        mov     r9, qword [rel _a_]                     ; 073B _ 4C: 8B. 0D, 00000000(GOT r)
; Filling space: 0EH
; Filler type: Multi-byte NOP
;       db 66H, 66H, 66H, 66H, 66H, 2EH, 0FH, 1FH
;       db 84H, 00H, 00H, 00H, 00H, 00H

ALIGN   16
?_040:  mov     rax, qword [r9]                         ; 0750 _ 49: 8B. 01
        mov     rcx, qword [rax]                        ; 0753 _ 48: 8B. 08
        sub     rdi, r10                                ; 0756 _ 4C: 29. D7
        mov     rdx, qword [rax+rdi*8-8H]               ; 0759 _ 48: 8B. 54 F8, F8
        mov     qword [rax], rdx                        ; 075E _ 48: 89. 10
        mov     rax, qword [r9]                         ; 0761 _ 49: 8B. 01
        mov     rdx, qword [r8]                         ; 0764 _ 49: 8B. 10
        sub     rdx, r10                                ; 0767 _ 4C: 29. D2
        mov     qword [rax+rdx*8-8H], rcx               ; 076A _ 48: 89. 4C D0, F8
        mov     rdi, qword [r8]                         ; 076F _ 49: 8B. 38
        mov     r11, rdi                                ; 0772 _ 49: 89. FB
        sub     r11, r10                                ; 0775 _ 4D: 29. D3
        cmp     r11, 2                                  ; 0778 _ 49: 83. FB, 02
        jl      ?_044                                   ; 077C _ 7C, 5E
        dec     r11                                     ; 077E _ 49: FF. CB
        xor     eax, eax                                ; 0781 _ 31. C0
        xor     edi, edi                                ; 0783 _ 31. FF
; Filling space: 0BH
; Filler type: Multi-byte NOP
;       db 66H, 66H, 2EH, 0FH, 1FH, 84H, 00H, 00H
;       db 00H, 00H, 00H

ALIGN   16
?_041:  mov     rcx, rax                                ; 0790 _ 48: 89. C1
        or      rcx, 01H                                ; 0793 _ 48: 83. C9, 01
        mov     rdx, qword [r9]                         ; 0797 _ 49: 8B. 11
        cmp     rcx, r11                                ; 079A _ 4C: 39. D9
        jge     ?_042                                   ; 079D _ 7D, 13
        mov     rsi, qword [rdx+rcx*8]                  ; 079F _ 48: 8B. 34 CA
        mov     rbx, rdi                                ; 07A3 _ 48: 89. FB
        shl     rbx, 4                                  ; 07A6 _ 48: C1. E3, 04
        cmp     rsi, qword [rdx+rbx]                    ; 07AA _ 48: 3B. 34 1A
        cmovl   rax, rcx                                ; 07AE _ 48: 0F 4C. C1
?_042:  mov     rcx, rax                                ; 07B2 _ 48: 89. C1
        mov     rax, qword [rdx+rdi*8]                  ; 07B5 _ 48: 8B. 04 FA
        mov     rsi, qword [rdx+rcx*8]                  ; 07B9 _ 48: 8B. 34 CA
        cmp     rax, rsi                                ; 07BD _ 48: 39. F0
        jle     ?_043                                   ; 07C0 _ 7E, 17
        mov     qword [rdx+rdi*8], rsi                  ; 07C2 _ 48: 89. 34 FA
        mov     rdx, qword [r9]                         ; 07C6 _ 49: 8B. 11
        mov     qword [rdx+rcx*8], rax                  ; 07C9 _ 48: 89. 04 CA
        lea     rax, [rcx+rcx]                          ; 07CD _ 48: 8D. 04 09
        cmp     rax, r11                                ; 07D1 _ 4C: 39. D8
        mov     rdi, rcx                                ; 07D4 _ 48: 89. CF
        jl      ?_041                                   ; 07D7 _ 7C, B7
?_043:  mov     rdi, qword [r8]                         ; 07D9 _ 49: 8B. 38
?_044:  inc     r10                                     ; 07DC _ 49: FF. C2
        cmp     rdi, r10                                ; 07DF _ 4C: 39. D7
        jg      ?_040                                   ; 07E2 _ 0F 8F, FFFFFF68
?_045:  xor     eax, eax                                ; 07E8 _ 31. C0
        pop     rbx                                     ; 07EA _ 5B
        pop     rbp                                     ; 07EB _ 5D
        ret                                             ; 07EC _ C3
; _heapSort End of function

; Filling space: 3H
; Filler type: Multi-byte NOP
;       db 0FH, 1FH, 00H

ALIGN   8

_main:  ; Function begin
        push    rbp                                     ; 07F0 _ 55
        mov     rbp, rsp                                ; 07F1 _ 48: 89. E5
        push    r15                                     ; 07F4 _ 41: 57
        push    r14                                     ; 07F6 _ 41: 56
        push    r13                                     ; 07F8 _ 41: 55
        push    r12                                     ; 07FA _ 41: 54
        push    rbx                                     ; 07FC _ 53
        sub     rsp, 24                                 ; 07FD _ 48: 83. EC, 18
        mov     edi, 10                                 ; 0801 _ BF, 0000000A
        call    _malloc                                 ; 0806 _ E8, 00000000(rel)
        mov     dword [rax], 5                          ; 080B _ C7. 00, 00000005
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [rax+8H], 116                      ; 0811 _ 66: C7. 40, 08, 0074
        mov     dword [rax+4H], 1918989427              ; 0817 _ C7. 40, 04, 72617473
        lea     rdi, [rax+4H]                           ; 081E _ 48: 8D. 78, 04
        call    _puts                                   ; 0822 _ E8, 00000000(rel)
        mov     edi, 2004                               ; 0827 _ BF, 000007D4
        call    _malloc                                 ; 082C _ E8, 00000000(rel)
        mov     r14, rax                                ; 0831 _ 49: 89. C6
        lea     r15, [r14+4H]                           ; 0834 _ 4D: 8D. 7E, 04
        lea     rdi, [rel _str_le+41AH]                 ; 0838 _ 48: 8D. 3D, 0000041A(rel)
        xor     ebx, ebx                                ; 083F _ 31. DB
        xor     eax, eax                                ; 0841 _ 31. C0
        mov     rsi, r15                                ; 0843 _ 4C: 89. FE
        call    _scanf                                  ; 0846 _ E8, 00000000(rel)
        mov     rdi, r15                                ; 084B _ 4C: 89. FF
        call    _strlen                                 ; 084E _ E8, 00000000(rel)
        mov     dword [r14], eax                        ; 0853 _ 41: 89. 06
        movsxd  rsi, dword [r14]                        ; 0856 _ 49: 63. 36
        test    rsi, rsi                                ; 0859 _ 48: 85. F6
        jle     ?_047                                   ; 085C _ 7E, 2E
        xor     ecx, ecx                                ; 085E _ 31. C9
        xor     ebx, ebx                                ; 0860 _ 31. DB
; Filling space: 0EH
; Filler type: Multi-byte NOP
;       db 66H, 66H, 66H, 66H, 66H, 2EH, 0FH, 1FH
;       db 84H, 00H, 00H, 00H, 00H, 00H

ALIGN   16
?_046:  movsx   edx, byte [r15+rcx]                     ; 0870 _ 41: 0F BE. 14 0F
        mov     eax, edx                                ; 0875 _ 89. D0
        add     al, -48                                 ; 0877 _ 04, D0
        cmp     al, 9                                   ; 0879 _ 3C, 09
        ja      ?_047                                   ; 087B _ 77, 0F
        lea     eax, [rbx+rbx*4]                        ; 087D _ 8D. 04 9B
        lea     ebx, [rdx+rax*2-30H]                    ; 0880 _ 8D. 5C 42, D0
        inc     rcx                                     ; 0884 _ 48: FF. C1
        cmp     rcx, rsi                                ; 0887 _ 48: 39. F1
        jl      ?_046                                   ; 088A _ 7C, E4
?_047:  movsxd  rbx, ebx                                ; 088C _ 48: 63. DB
        mov     r14, qword [rel _n_]                    ; 088F _ 4C: 8B. 35, 00000000(GOT r)
        mov     qword [r14], rbx                        ; 0896 _ 49: 89. 1E
        mov     edi, 16                                 ; 0899 _ BF, 00000010
        call    _malloc                                 ; 089E _ E8, 00000000(rel)
        mov     r8, rax                                 ; 08A3 _ 49: 89. C0
        lea     rdi, [r8+4H]                            ; 08A6 _ 49: 8D. 78, 04
        test    ebx, ebx                                ; 08AA _ 85. DB
        js      ?_048                                   ; 08AC _ 78, 05
        mov     r10, rdi                                ; 08AE _ 49: 89. FA
        jmp     ?_049                                   ; 08B1 _ EB, 0F

?_048:  mov     r10, r8                                 ; 08B3 _ 4D: 89. C2
        add     r10, 5                                  ; 08B6 _ 49: 83. C2, 05
        mov     byte [r8+4H], 45                        ; 08BA _ 41: C6. 40, 04, 2D
        neg     rbx                                     ; 08BF _ 48: F7. DB
?_049:  mov     r12, qword 0A00000000H                  ; 08C2 _ 49: BC, 0000000A00000000
        test    rbx, rbx                                ; 08CC _ 48: 85. DB
        jz      ?_051                                   ; 08CF _ 74, 47
        mov     r9, qword 6666666666666667H             ; 08D1 _ 49: B9, 6666666666666667
        mov     rsi, r10                                ; 08DB _ 4C: 89. D6
; Filling space: 2H
; Filler type: NOP with prefixes
;       db 66H, 90H

ALIGN   8
?_050:  mov     rax, rbx                                ; 08E0 _ 48: 89. D8
        imul    r9                                      ; 08E3 _ 49: F7. E9
        mov     rax, rdx                                ; 08E6 _ 48: 89. D0
        shr     rax, 63                                 ; 08E9 _ 48: C1. E8, 3F
        sar     rdx, 2                                  ; 08ED _ 48: C1. FA, 02
        add     rdx, rax                                ; 08F1 _ 48: 01. C2
        lea     eax, [rbx+30H]                          ; 08F4 _ 8D. 43, 30
        mov     rcx, rdx                                ; 08F7 _ 48: 89. D1
        imul    rcx, r12                                ; 08FA _ 49: 0F AF. CC
        shr     rcx, 32                                 ; 08FE _ 48: C1. E9, 20
        sub     eax, ecx                                ; 0902 _ 29. C8
        mov     byte [rsi], al                          ; 0904 _ 88. 06
        inc     rsi                                     ; 0906 _ 48: FF. C6
        add     rbx, 9                                  ; 0909 _ 48: 83. C3, 09
        cmp     rbx, 18                                 ; 090D _ 48: 83. FB, 12
        mov     rbx, rdx                                ; 0911 _ 48: 89. D3
        ja      ?_050                                   ; 0914 _ 77, CA
        jmp     ?_052                                   ; 0916 _ EB, 0A

?_051:  mov     byte [r10], 48                          ; 0918 _ 41: C6. 02, 30
        inc     r10                                     ; 091C _ 49: FF. C2
        mov     rsi, r10                                ; 091F _ 4C: 89. D6
?_052:  mov     byte [rsi], 0                           ; 0922 _ C6. 06, 00
        mov     eax, esi                                ; 0925 _ 89. F0
        sub     eax, edi                                ; 0927 _ 29. F8
        mov     dword [r8], eax                         ; 0929 _ 41: 89. 00
        dec     rsi                                     ; 092C _ 48: FF. CE
        cmp     r10, rsi                                ; 092F _ 49: 39. F2
        ja      ?_054                                   ; 0932 _ 77, 26
        inc     r10                                     ; 0934 _ 49: FF. C2
; Filling space: 9H
; Filler type: Multi-byte NOP
;       db 66H, 0FH, 1FH, 84H, 00H, 00H, 00H, 00H
;       db 00H

ALIGN   16
?_053:  movzx   eax, byte [r10-1H]                      ; 0940 _ 41: 0F B6. 42, FF
        movzx   ecx, byte [rsi]                         ; 0945 _ 0F B6. 0E
        mov     byte [r10-1H], cl                       ; 0948 _ 41: 88. 4A, FF
        mov     byte [rsi], al                          ; 094C _ 88. 06
        dec     rsi                                     ; 094E _ 48: FF. CE
        cmp     r10, rsi                                ; 0951 _ 49: 39. F2
        lea     r10, [r10+1H]                           ; 0954 _ 4D: 8D. 52, 01
        jbe     ?_053                                   ; 0958 _ 76, E6
?_054:  call    _puts                                   ; 095A _ E8, 00000000(rel)
        mov     r15, qword [r14]                        ; 095F _ 4D: 8B. 3E
        lea     rdi, [r15*8+8H]                         ; 0962 _ 4A: 8D. 3C FD, 00000008
        call    _malloc                                 ; 096A _ E8, 00000000(rel)
        mov     qword [rax], r15                        ; 096F _ 4C: 89. 38
        add     rax, 8                                  ; 0972 _ 48: 83. C0, 08
        mov     r13, qword [rel _a_]                    ; 0976 _ 4C: 8B. 2D, 00000000(GOT r)
        mov     qword [r13], rax                        ; 097D _ 49: 89. 45, 00
        test    r15, r15                                ; 0981 _ 4D: 85. FF
        jle     ?_056                                   ; 0984 _ 7E, 22
        xor     ecx, ecx                                ; 0986 _ 31. C9
        xor     edx, edx                                ; 0988 _ 31. D2
; Filling space: 6H
; Filler type: Multi-byte NOP
;       db 66H, 0FH, 1FH, 44H, 00H, 00H

ALIGN   8
?_055:  mov     qword [rcx+rax], rdx                    ; 0990 _ 48: 89. 14 01
        inc     rdx                                     ; 0994 _ 48: FF. C2
        mov     rax, qword [r13]                        ; 0997 _ 49: 8B. 45, 00
        add     rcx, 8                                  ; 099B _ 48: 83. C1, 08
        cmp     rdx, qword [rax-8H]                     ; 099F _ 48: 3B. 50, F8
        jl      ?_055                                   ; 09A3 _ 7C, EB
        mov     r15, qword [r14]                        ; 09A5 _ 4D: 8B. 3E
?_056:  lea     rcx, [r15-1H]                           ; 09A8 _ 49: 8D. 4F, FF
        cmp     rcx, -1                                 ; 09AC _ 48: 83. F9, FF
        jl      ?_061                                   ; 09B0 _ 7C, 7E
        mov     rdx, rcx                                ; 09B2 _ 48: 89. CA
        shr     rdx, 63                                 ; 09B5 _ 48: C1. EA, 3F
        add     rdx, rcx                                ; 09B9 _ 48: 01. CA
        mov     r8, rdx                                 ; 09BC _ 49: 89. D0
        sar     r8, 1                                   ; 09BF _ 49: D1. F8
        mov     r9, r8                                  ; 09C2 _ 4D: 89. C1
        shl     r9, 4                                   ; 09C5 _ 49: C1. E1, 04
        lea     rdi, [r8*8]                             ; 09C9 _ 4A: 8D. 3C C5, 00000000
        and     rdx, 0FFFFFFFFFFFFFFFEH                 ; 09D1 _ 48: 83. E2, FE
        jmp     ?_058                                   ; 09D5 _ EB, 1F

; Filling space: 9H
; Filler type: Multi-byte NOP
;       db 66H, 0FH, 1FH, 84H, 00H, 00H, 00H, 00H
;       db 00H

ALIGN   16
?_057:  dec     r8                                      ; 09E0 _ 49: FF. C8
        mov     r15, qword [r14]                        ; 09E3 _ 4D: 8B. 3E
        mov     rax, qword [r13]                        ; 09E6 _ 49: 8B. 45, 00
        add     r9, -16                                 ; 09EA _ 49: 83. C1, F0
        add     rdi, -8                                 ; 09EE _ 48: 83. C7, F8
        add     rdx, -2                                 ; 09F2 _ 48: 83. C2, FE
?_058:  lea     rcx, [rdx+1H]                           ; 09F6 _ 48: 8D. 4A, 01
        cmp     rcx, r15                                ; 09FA _ 4C: 39. F9
        mov     rbx, rdx                                ; 09FD _ 48: 89. D3
        jge     ?_059                                   ; 0A00 _ 7D, 10
        mov     rsi, qword [r9+rax+8H]                  ; 0A02 _ 49: 8B. 74 01, 08
        cmp     rsi, qword [r9+rax]                     ; 0A07 _ 49: 3B. 34 01
        cmovge  rcx, rdx                                ; 0A0B _ 48: 0F 4D. CA
        mov     rbx, rcx                                ; 0A0F _ 48: 89. CB
?_059:  mov     rcx, qword [rdi+rax]                    ; 0A12 _ 48: 8B. 0C 07
        mov     rsi, qword [rax+rbx*8]                  ; 0A16 _ 48: 8B. 34 D8
        cmp     rcx, rsi                                ; 0A1A _ 48: 39. F1
        jle     ?_060                                   ; 0A1D _ 7E, 0C
        mov     qword [rax+rdi], rsi                    ; 0A1F _ 48: 89. 34 38
        mov     rax, qword [r13]                        ; 0A23 _ 49: 8B. 45, 00
        mov     qword [rax+rbx*8], rcx                  ; 0A27 _ 48: 89. 0C D8
?_060:  test    r8, r8                                  ; 0A2B _ 4D: 85. C0
        jg      ?_057                                   ; 0A2E _ 7F, B0
?_061:  mov     edi, 9                                  ; 0A30 _ BF, 00000009
        call    _malloc                                 ; 0A35 _ E8, 00000000(rel)
        mov     dword [rax], 4                          ; 0A3A _ C7. 00, 00000004
        mov     byte [rax+8H], 0                        ; 0A40 _ C6. 40, 08, 00
        mov     dword [rax+4H], 1885431144              ; 0A44 _ C7. 40, 04, 70616568
        lea     rdi, [rax+4H]                           ; 0A4B _ 48: 8D. 78, 04
        call    _puts                                   ; 0A4F _ E8, 00000000(rel)
        call    _heapSort                               ; 0A54 _ E8, 00000000(rel)
        mov     edi, 9                                  ; 0A59 _ BF, 00000009
        call    _malloc                                 ; 0A5E _ E8, 00000000(rel)
        mov     dword [rax], 4                          ; 0A63 _ C7. 00, 00000004
        mov     byte [rax+8H], 0                        ; 0A69 _ C6. 40, 08, 00
        mov     dword [rax+4H], 1953656691              ; 0A6D _ C7. 40, 04, 74726F73
        lea     rdi, [rax+4H]                           ; 0A74 _ 48: 8D. 78, 04
        call    _puts                                   ; 0A78 _ E8, 00000000(rel)
        mov     rax, qword [r13]                        ; 0A7D _ 49: 8B. 45, 00
        cmp     qword [rax-8H], 0                       ; 0A81 _ 48: 83. 78, F8, 00
        jle     ?_072                                   ; 0A86 _ 0F 8E, 00000191
        mov     r14, qword 6666666666666667H            ; 0A8C _ 49: BE, 6666666666666667
        xor     ecx, ecx                                ; 0A96 _ 31. C9
; Filling space: 8H
; Filler type: Multi-byte NOP
;       db 0FH, 1FH, 84H, 00H, 00H, 00H, 00H, 00H

ALIGN   16
?_062:  mov     qword [rbp-38H], rcx                    ; 0AA0 _ 48: 89. 4D, C8
        mov     rbx, qword [rax+rcx*8]                  ; 0AA4 _ 48: 8B. 1C C8
        mov     edi, 16                                 ; 0AA8 _ BF, 00000010
        call    _malloc                                 ; 0AAD _ E8, 00000000(rel)
        mov     rcx, rax                                ; 0AB2 _ 48: 89. C1
        lea     r15, [rcx+4H]                           ; 0AB5 _ 4C: 8D. 79, 04
        test    rbx, rbx                                ; 0AB9 _ 48: 85. DB
        js      ?_063                                   ; 0ABC _ 78, 12
        mov     rsi, r15                                ; 0ABE _ 4C: 89. FE
        jmp     ?_064                                   ; 0AC1 _ EB, 1B

; Filling space: 0DH
; Filler type: Multi-byte NOP
;       db 66H, 66H, 66H, 66H, 2EH, 0FH, 1FH, 84H
;       db 00H, 00H, 00H, 00H, 00H

ALIGN   16
?_063:  mov     rsi, rcx                                ; 0AD0 _ 48: 89. CE
        add     rsi, 5                                  ; 0AD3 _ 48: 83. C6, 05
        mov     byte [rcx+4H], 45                       ; 0AD7 _ C6. 41, 04, 2D
        neg     rbx                                     ; 0ADB _ 48: F7. DB
?_064:  test    rbx, rbx                                ; 0ADE _ 48: 85. DB
        mov     rdi, rsi                                ; 0AE1 _ 48: 89. F7
        jz      ?_066                                   ; 0AE4 _ 74, 4A
; Filling space: 0AH
; Filler type: Multi-byte NOP
;       db 66H, 2EH, 0FH, 1FH, 84H, 00H, 00H, 00H
;       db 00H, 00H

ALIGN   16
?_065:  mov     rax, rbx                                ; 0AF0 _ 48: 89. D8
        imul    r14                                     ; 0AF3 _ 49: F7. EE
        mov     rax, rdx                                ; 0AF6 _ 48: 89. D0
        shr     rax, 63                                 ; 0AF9 _ 48: C1. E8, 3F
        sar     rdx, 2                                  ; 0AFD _ 48: C1. FA, 02
        add     rdx, rax                                ; 0B01 _ 48: 01. C2
        add     ebx, 48                                 ; 0B04 _ 83. C3, 30
        mov     rax, rdx                                ; 0B07 _ 48: 89. D0
        imul    rax, r12                                ; 0B0A _ 49: 0F AF. C4
        shr     rax, 32                                 ; 0B0E _ 48: C1. E8, 20
        sub     ebx, eax                                ; 0B12 _ 29. C3
        mov     byte [rdi], bl                          ; 0B14 _ 88. 1F
        inc     rdi                                     ; 0B16 _ 48: FF. C7
        movsxd  rbx, edx                                ; 0B19 _ 48: 63. DA
        test    edx, edx                                ; 0B1C _ 85. D2
        jnz     ?_065                                   ; 0B1E _ 75, D0
        jmp     ?_067                                   ; 0B20 _ EB, 17

; Filling space: 0EH
; Filler type: Multi-byte NOP
;       db 66H, 66H, 66H, 66H, 66H, 2EH, 0FH, 1FH
;       db 84H, 00H, 00H, 00H, 00H, 00H

ALIGN   16
?_066:  mov     byte [rsi], 48                          ; 0B30 _ C6. 06, 30
        inc     rsi                                     ; 0B33 _ 48: FF. C6
        mov     rdi, rsi                                ; 0B36 _ 48: 89. F7
?_067:  mov     byte [rdi], 0                           ; 0B39 _ C6. 07, 00
        mov     eax, edi                                ; 0B3C _ 89. F8
        sub     eax, r15d                               ; 0B3E _ 44: 29. F8
        mov     dword [rcx], eax                        ; 0B41 _ 89. 01
        dec     rdi                                     ; 0B43 _ 48: FF. CF
        cmp     rsi, rdi                                ; 0B46 _ 48: 39. FE
        ja      ?_069                                   ; 0B49 _ 77, 1D
        inc     rsi                                     ; 0B4B _ 48: FF. C6
; Filling space: 2H
; Filler type: NOP with prefixes
;       db 66H, 90H

ALIGN   8
?_068:  movzx   eax, byte [rsi-1H]                      ; 0B50 _ 0F B6. 46, FF
        movzx   ecx, byte [rdi]                         ; 0B54 _ 0F B6. 0F
        mov     byte [rsi-1H], cl                       ; 0B57 _ 88. 4E, FF
        mov     byte [rdi], al                          ; 0B5A _ 88. 07
        dec     rdi                                     ; 0B5C _ 48: FF. CF
        cmp     rsi, rdi                                ; 0B5F _ 48: 39. FE
        lea     rsi, [rsi+1H]                           ; 0B62 _ 48: 8D. 76, 01
        jbe     ?_068                                   ; 0B66 _ 76, E8
?_069:  mov     edi, 6                                  ; 0B68 _ BF, 00000006
        call    _malloc                                 ; 0B6D _ E8, 00000000(rel)
        mov     r13, rax                                ; 0B72 _ 49: 89. C5
        mov     dword [r13], 1                          ; 0B75 _ 41: C7. 45, 00, 00000001
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [r13+4H], 32                       ; 0B7D _ 66 41: C7. 45, 04, 0020
        mov     r14d, dword [r15-4H]                    ; 0B84 _ 45: 8B. 77, FC
        mov     r12d, dword [r13]                       ; 0B88 _ 45: 8B. 65, 00
        lea     eax, [r12+r14]                          ; 0B8C _ 43: 8D. 04 34
        mov     qword [rbp-30H], r15                    ; 0B90 _ 4C: 89. 7D, D0
        movsxd  r15, eax                                ; 0B94 _ 4C: 63. F8
        lea     rdi, [r15+5H]                           ; 0B97 _ 49: 8D. 7F, 05
        call    _malloc                                 ; 0B9B _ E8, 00000000(rel)
        mov     rbx, rax                                ; 0BA0 _ 48: 89. C3
        mov     dword [rbx], r15d                       ; 0BA3 _ 44: 89. 3B
        add     rbx, 4                                  ; 0BA6 _ 48: 83. C3, 04
        test    r14d, r14d                              ; 0BAA _ 45: 85. F6
        jle     ?_070                                   ; 0BAD _ 7E, 0F
        mov     rdi, rbx                                ; 0BAF _ 48: 89. DF
        mov     rsi, qword [rbp-30H]                    ; 0BB2 _ 48: 8B. 75, D0
        mov     rdx, r14                                ; 0BB6 _ 4C: 89. F2
        call    _memcpy                                 ; 0BB9 _ E8, 00000000(rel)
?_070:  test    r12d, r12d                              ; 0BBE _ 45: 85. E4
        jle     ?_071                                   ; 0BC1 _ 7E, 15
        add     r13, 4                                  ; 0BC3 _ 49: 83. C5, 04
        movsxd  rdi, r14d                               ; 0BC7 _ 49: 63. FE
        add     rdi, rbx                                ; 0BCA _ 48: 01. DF
        mov     rsi, r13                                ; 0BCD _ 4C: 89. EE
        mov     rdx, r12                                ; 0BD0 _ 4C: 89. E2
        call    _memcpy                                 ; 0BD3 _ E8, 00000000(rel)
?_071:  mov     byte [rbx+r15], 0                       ; 0BD8 _ 42: C6. 04 3B, 00
        xor     eax, eax                                ; 0BDD _ 31. C0
        lea     rdi, [rel _str_le+73H]                  ; 0BDF _ 48: 8D. 3D, 00000073(rel)
        mov     rsi, rbx                                ; 0BE6 _ 48: 89. DE
        call    _printf                                 ; 0BE9 _ E8, 00000000(rel)
        mov     rcx, qword [rbp-38H]                    ; 0BEE _ 48: 8B. 4D, C8
        inc     rcx                                     ; 0BF2 _ 48: FF. C1
        mov     rax, qword [rel _a_]                    ; 0BF5 _ 48: 8B. 05, 00000000(GOT r)
        mov     rax, qword [rax]                        ; 0BFC _ 48: 8B. 00
        cmp     rcx, qword [rax-8H]                     ; 0BFF _ 48: 3B. 48, F8
        mov     r12, qword 0A00000000H                  ; 0C03 _ 49: BC, 0000000A00000000
        mov     r14, qword 6666666666666667H            ; 0C0D _ 49: BE, 6666666666666667
        jl      ?_062                                   ; 0C17 _ 0F 8C, FFFFFE83
?_072:  mov     edi, 6                                  ; 0C1D _ BF, 00000006
        call    _malloc                                 ; 0C22 _ E8, 00000000(rel)
        mov     dword [rax], 1                          ; 0C27 _ C7. 00, 00000001
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [rax+4H], 10                       ; 0C2D _ 66: C7. 40, 04, 000A
        lea     rsi, [rax+4H]                           ; 0C33 _ 48: 8D. 70, 04
        lea     rdi, [rel _str_le+1BH]                  ; 0C37 _ 48: 8D. 3D, 0000001B(rel)
        xor     eax, eax                                ; 0C3E _ 31. C0
        call    _printf                                 ; 0C40 _ E8, 00000000(rel)
        xor     eax, eax                                ; 0C45 _ 31. C0
        add     rsp, 24                                 ; 0C47 _ 48: 83. C4, 18
        pop     rbx                                     ; 0C4B _ 5B
        pop     r12                                     ; 0C4C _ 41: 5C
        pop     r13                                     ; 0C4E _ 41: 5D
        pop     r14                                     ; 0C50 _ 41: 5E
        pop     r15                                     ; 0C52 _ 41: 5F
        pop     rbp                                     ; 0C54 _ 5D
        ret                                             ; 0C55 _ C3
; _main End of function


SECTION ._TEXT.__cstring align=1 noexecute              ; section number 2, data

        db 25H, 64H, 00H, 25H, 73H, 00H, 25H, 6CH       ; 0C56 _ %d.%s.%l
        db 64H, 0AH, 00H, 25H, 6CH, 64H, 00H, 73H       ; 0C5E _ d..%ld.s
        db 74H, 61H, 72H, 74H, 00H, 68H, 65H, 61H       ; 0C66 _ tart.hea
        db 70H, 00H, 73H, 6FH, 72H, 74H, 00H            ; 0C6E _ p.sort.


