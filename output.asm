; Disassembly of file: output.o
; Sun Jun 11 16:48:17 2017
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
global _main

extern _strlen                                          ; near
extern _strcpy                                          ; near
extern _strcmp                                          ; near
extern _scanf                                           ; near
extern _puts                                            ; near
extern _printf                                          ; near
extern _malloc                                          ; near


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
        lea     rdi, [rel _str_le+4ACH]                 ; 014F _ 48: 8D. 3D, 000004AC(rel)
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
        lea     rdi, [rel _str_le+476H]                 ; 0188 _ 48: 8D. 3D, 00000476(rel)
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
        lea     rdi, [rel _str_le+18AH]                 ; 0477 _ 48: 8D. 3D, 0000018A(rel)
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
        lea     rdi, [rel _str_le+16FH]                 ; 0497 _ 48: 8D. 3D, 0000016F(rel)
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
        lea     rdi, [rel _str_le+127H]                 ; 04D7 _ 48: 8D. 3D, 00000127(rel)
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

_main:  ; Function begin
        push    rbp                                     ; 05D0 _ 55
        mov     rbp, rsp                                ; 05D1 _ 48: 89. E5
        mov     edi, 16                                 ; 05D4 _ BF, 00000010
        call    _malloc                                 ; 05D9 _ E8, 00000000(rel)
        mov     byte [rax+4H], 48                       ; 05DE _ C6. 40, 04, 30
        mov     byte [rax+5H], 0                        ; 05E2 _ C6. 40, 05, 00
        mov     dword [rax], 1                          ; 05E6 _ C7. 00, 00000001
        lea     rsi, [rax+4H]                           ; 05EC _ 48: 8D. 70, 04
        lea     rdi, [rel Unnamed_1_E]                  ; 05F0 _ 48: 8D. 3D, 0000000E(rel)
        xor     eax, eax                                ; 05F7 _ 31. C0
        call    _printf                                 ; 05F9 _ E8, 00000000(rel)
        xor     eax, eax                                ; 05FE _ 31. C0
        pop     rbp                                     ; 0600 _ 5D
        ret                                             ; 0601 _ C3
; _main End of function


SECTION ._TEXT.__cstring align=1 noexecute              ; section number 2, data

        db 25H, 64H, 00H, 25H, 73H, 00H, 25H, 6CH       ; 0602 _ %d.%s.%l
        db 64H, 0AH, 00H, 25H, 6CH, 64H, 00H            ; 060A _ d..%ld.


