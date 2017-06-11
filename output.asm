; Disassembly of file: output.o
; Sun Jun 11 19:41:43 2017
; Mode: 64 bits
; Syntax: YASM/NASM
; Instruction set: SSE4.1, x64

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
global _hex2int
global _int2chr
global _toStringHex: function
global _rotate_left
global _add
global _lohi
global _sha1: function
global _computeSHA1: function
global _nextLetter
global _nextText
global _array_equal
global _crackSHA1: function
global _main

extern _strlen                                          ; near
extern _strcpy                                          ; near
extern _strcmp                                          ; near
extern _scanf                                           ; near
extern _puts                                            ; near
extern _printf                                          ; near
extern _memcpy                                          ; near
extern _malloc                                          ; near
extern _outputBuffer_                                   ; qword
extern _inputBuffer_                                    ; qword
extern _chunks_                                         ; qword
extern _asciiTable_                                     ; qword
extern _MAXLENGTH_                                      ; qword
extern _MAXCHUNK_                                       ; qword


SECTION ._TEXT.__text align=16 execute                  ; section number 1, code

ALIGN   16
_str_le:                                                ; oword
        db 55H, 48H, 89H, 0E5H, 0E8H                    ; 0000 _ UH...
        dd _strcmp-$-9H                                 ; 0005 _ 00000000 (rel)
        dd 5D1FE8C1H                                    ; 0009 _ 1562372289 
        db 0C3H                                         ; 000D _ .

; Filling space: 2H
; Filler type: NOP with prefixes
;       db 66H, 90H

ALIGN   8

_str_eql:
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
; _str_le End of function


_str_eql:; Function begin
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
        lea     rdi, [rel _str_le+17EAH]                ; 014F _ 48: 8D. 3D, 000017EA(rel)
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
        lea     rdi, [rel _str_le+17B4H]                ; 0188 _ 48: 8D. 3D, 000017B4(rel)
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
        lea     rdi, [rel _str_le+14C8H]                ; 0477 _ 48: 8D. 3D, 000014C8(rel)
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
        lea     rdi, [rel _str_le+14ADH]                ; 0497 _ 48: 8D. 3D, 000014AD(rel)
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
        lea     rdi, [rel _str_le+1465H]                ; 04D7 _ 48: 8D. 3D, 00001465(rel)
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

_hex2int:; Function begin
        push    rbp                                     ; 05D0 _ 55
        mov     rbp, rsp                                ; 05D1 _ 48: 89. E5
        movsxd  r8, dword [rdi-4H]                      ; 05D4 _ 4C: 63. 47, FC
        xor     eax, eax                                ; 05D8 _ 31. C0
        test    r8, r8                                  ; 05DA _ 4D: 85. C0
        jle     ?_036                                   ; 05DD _ 7E, 6E
        xor     edx, edx                                ; 05DF _ 31. D2
; Filling space: 0FH
; Filler type: Multi-byte NOP
;       db 66H, 66H, 66H, 66H, 66H, 66H, 2EH, 0FH
;       db 1FH, 84H, 00H, 00H, 00H, 00H, 00H

ALIGN   16
?_032:  movsx   rsi, byte [rdi+rdx]                     ; 05F0 _ 48: 0F BE. 34 17
        lea     rcx, [rsi-30H]                          ; 05F5 _ 48: 8D. 4E, D0
        cmp     rcx, 9                                  ; 05F9 _ 48: 83. F9, 09
        ja      ?_033                                   ; 05FD _ 77, 11
        shl     rax, 4                                  ; 05FF _ 48: C1. E0, 04
        add     rax, -48                                ; 0603 _ 48: 83. C0, D0
        jmp     ?_035                                   ; 0607 _ EB, 39

; Filling space: 7H
; Filler type: Multi-byte NOP
;       db 0FH, 1FH, 80H, 00H, 00H, 00H, 00H

ALIGN   8
?_033:  lea     rcx, [rsi-41H]                          ; 0610 _ 48: 8D. 4E, BF
        cmp     rcx, 5                                  ; 0614 _ 48: 83. F9, 05
        ja      ?_034                                   ; 0618 _ 77, 16
        shl     rax, 4                                  ; 061A _ 48: C1. E0, 04
        add     rax, -55                                ; 061E _ 48: 83. C0, C9
        jmp     ?_035                                   ; 0622 _ EB, 1E

; Filling space: 0CH
; Filler type: Multi-byte NOP
;       db 66H, 66H, 66H, 2EH, 0FH, 1FH, 84H, 00H
;       db 00H, 00H, 00H, 00H

ALIGN   16
?_034:  lea     rcx, [rsi-61H]                          ; 0630 _ 48: 8D. 4E, 9F
        cmp     rcx, 5                                  ; 0634 _ 48: 83. F9, 05
        ja      ?_037                                   ; 0638 _ 77, 15
        shl     rax, 4                                  ; 063A _ 48: C1. E0, 04
        add     rax, -87                                ; 063E _ 48: 83. C0, A9
?_035:  add     rax, rsi                                ; 0642 _ 48: 01. F0
        inc     rdx                                     ; 0645 _ 48: FF. C2
        cmp     rdx, r8                                 ; 0648 _ 4C: 39. C2
        jl      ?_032                                   ; 064B _ 7C, A3
?_036:  pop     rbp                                     ; 064D _ 5D
        ret                                             ; 064E _ C3
; _hex2int End of function

?_037:  ; Local function
        xor     eax, eax                                ; 064F _ 31. C0
        pop     rbp                                     ; 0651 _ 5D
        ret                                             ; 0652 _ C3

; Filling space: 0DH
; Filler type: Multi-byte NOP
;       db 66H, 66H, 66H, 66H, 2EH, 0FH, 1FH, 84H
;       db 00H, 00H, 00H, 00H, 00H

ALIGN   16

_int2chr:; Function begin
        push    rbp                                     ; 0660 _ 55
        mov     rbp, rsp                                ; 0661 _ 48: 89. E5
        push    r14                                     ; 0664 _ 41: 56
        push    rbx                                     ; 0666 _ 53
        mov     rbx, rdi                                ; 0667 _ 48: 89. FB
        add     rbx, -32                                ; 066A _ 48: 83. C3, E0
        cmp     rbx, 94                                 ; 066E _ 48: 83. FB, 5E
        ja      ?_038                                   ; 0672 _ 77, 2A
        mov     rax, qword [rel _asciiTable_]           ; 0674 _ 48: 8B. 05, 00000000(GOT r)
        mov     r14, qword [rax]                        ; 067B _ 4C: 8B. 30
        mov     edi, 6                                  ; 067E _ BF, 00000006
        call    _malloc                                 ; 0683 _ E8, 00000000(rel)
        mov     dword [rax], 1                          ; 0688 _ C7. 00, 00000001
        add     rax, 4                                  ; 068E _ 48: 83. C0, 04
        movsxd  rdx, ebx                                ; 0692 _ 48: 63. D3
        cmp     rdx, rbx                                ; 0695 _ 48: 39. DA
        jle     ?_039                                   ; 0698 _ 7E, 1E
        xor     ecx, ecx                                ; 069A _ 31. C9
        jmp     ?_041                                   ; 069C _ EB, 4E

?_038:  mov     edi, 5                                  ; 069E _ BF, 00000005
        call    _malloc                                 ; 06A3 _ E8, 00000000(rel)
        mov     dword [rax], 0                          ; 06A8 _ C7. 00, 00000000
        mov     byte [rax+4H], 0                        ; 06AE _ C6. 40, 04, 00
        add     rax, 4                                  ; 06B2 _ 48: 83. C0, 04
        jmp     ?_042                                   ; 06B6 _ EB, 38

?_039:  lea     ecx, [rbx+1H]                           ; 06B8 _ 8D. 4B, 01
        movsxd  rsi, ecx                                ; 06BB _ 48: 63. F1
        dec     rsi                                     ; 06BE _ 48: FF. CE
        xor     ecx, ecx                                ; 06C1 _ 31. C9
        mov     r8, qword 100000000H                    ; 06C3 _ 49: B8, 0000000100000000
        mov     rdi, rax                                ; 06CD _ 48: 89. C7
?_040:  movzx   edx, byte [r14+rdx]                     ; 06D0 _ 41: 0F B6. 14 16
        mov     byte [rdi], dl                          ; 06D5 _ 88. 17
        inc     rsi                                     ; 06D7 _ 48: FF. C6
        movsxd  rdx, esi                                ; 06DA _ 48: 63. D6
        inc     rdi                                     ; 06DD _ 48: FF. C7
        add     rcx, r8                                 ; 06E0 _ 4C: 01. C1
        cmp     rsi, rbx                                ; 06E3 _ 48: 39. DE
        jle     ?_040                                   ; 06E6 _ 7E, E8
        sar     rcx, 32                                 ; 06E8 _ 48: C1. F9, 20
?_041:  mov     byte [rax+rcx], 0                       ; 06EC _ C6. 04 08, 00
?_042:  pop     rbx                                     ; 06F0 _ 5B
        pop     r14                                     ; 06F1 _ 41: 5E
        pop     rbp                                     ; 06F3 _ 5D
        ret                                             ; 06F4 _ C3
; _int2chr End of function

; Filling space: 0BH
; Filler type: Multi-byte NOP
;       db 66H, 66H, 2EH, 0FH, 1FH, 84H, 00H, 00H
;       db 00H, 00H, 00H

ALIGN   16

_toStringHex:; Function begin
        push    rbp                                     ; 0700 _ 55
        mov     rbp, rsp                                ; 0701 _ 48: 89. E5
        push    r15                                     ; 0704 _ 41: 57
        push    r14                                     ; 0706 _ 41: 56
        push    r13                                     ; 0708 _ 41: 55
        push    r12                                     ; 070A _ 41: 54
        push    rbx                                     ; 070C _ 53
        sub     rsp, 40                                 ; 070D _ 48: 83. EC, 28
        mov     qword [rbp-48H], rdi                    ; 0711 _ 48: 89. 7D, B8
        mov     edi, 5                                  ; 0715 _ BF, 00000005
        call    _malloc                                 ; 071A _ E8, 00000000(rel)
        mov     r15, rax                                ; 071F _ 49: 89. C7
        mov     dword [r15], 0                          ; 0722 _ 41: C7. 07, 00000000
        mov     byte [r15+4H], 0                        ; 0729 _ 41: C6. 47, 04, 00
        add     r15, 4                                  ; 072E _ 49: 83. C7, 04
        mov     ecx, 28                                 ; 0732 _ B9, 0000001C
        jmp     ?_047                                   ; 0737 _ E9, 00000084

?_043:  lea     rdi, [r15+10H]                          ; 073C _ 49: 8D. 7F, 10
        lea     rsi, [rax+14H]                          ; 0740 _ 48: 8D. 70, 14
        mov     rbx, rdx                                ; 0744 _ 48: 89. D3
; Filling space: 9H
; Filler type: Multi-byte NOP
;       db 66H, 0FH, 1FH, 84H, 00H, 00H, 00H, 00H
;       db 00H

ALIGN   16
?_044:  movups  xmm0, oword [rdi-10H]                   ; 0750 _ 0F 10. 47, F0
        movups  xmm1, oword [rdi]                       ; 0754 _ 0F 10. 0F
        movups  oword [rsi-10H], xmm0                   ; 0757 _ 0F 11. 46, F0
        movups  oword [rsi], xmm1                       ; 075B _ 0F 11. 0E
        add     rdi, 32                                 ; 075E _ 48: 83. C7, 20
        add     rsi, 32                                 ; 0762 _ 48: 83. C6, 20
        add     rbx, -32                                ; 0766 _ 48: 83. C3, E0
        jnz     ?_044                                   ; 076A _ 75, E4
        test    r8d, r8d                                ; 076C _ 45: 85. C0
        jne     ?_049                                   ; 076F _ 0F 85, 000000FD
        jmp     ?_053                                   ; 0775 _ E9, 0000018A

?_045:  lea     rdi, [r15+10H]                          ; 077A _ 49: 8D. 7F, 10
        lea     rbx, [rax+14H]                          ; 077E _ 48: 8D. 58, 14
        mov     rsi, rdx                                ; 0782 _ 48: 89. D6
; Filling space: 0BH
; Filler type: Multi-byte NOP
;       db 66H, 66H, 2EH, 0FH, 1FH, 84H, 00H, 00H
;       db 00H, 00H, 00H

ALIGN   16
?_046:  movups  xmm0, oword [rdi-10H]                   ; 0790 _ 0F 10. 47, F0
        movups  xmm1, oword [rdi]                       ; 0794 _ 0F 10. 0F
        movups  oword [rbx-10H], xmm0                   ; 0797 _ 0F 11. 43, F0
        movups  oword [rbx], xmm1                       ; 079B _ 0F 11. 0B
        add     rdi, 32                                 ; 079E _ 48: 83. C7, 20
        add     rbx, 32                                 ; 07A2 _ 48: 83. C3, 20
        add     rsi, -32                                ; 07A6 _ 48: 83. C6, E0
        jnz     ?_046                                   ; 07AA _ 75, E4
        test    r8d, r8d                                ; 07AC _ 45: 85. C0
        jne     ?_057                                   ; 07AF _ 0F 85, 0000022D
        jmp     ?_061                                   ; 07B5 _ E9, 000002BA

; Filling space: 6H
; Filler type: Multi-byte NOP
;       db 66H, 0FH, 1FH, 44H, 00H, 00H

ALIGN   8
?_047:  mov     rbx, qword [rbp-48H]                    ; 07C0 _ 48: 8B. 5D, B8
        sar     rbx, cl                                 ; 07C4 _ 48: D3. FB
        and     ebx, 0FH                                ; 07C7 _ 83. E3, 0F
        cmp     rbx, 9                                  ; 07CA _ 48: 83. FB, 09
        mov     qword [rbp-40H], rcx                    ; 07CE _ 48: 89. 4D, C0
        ja      ?_054                                   ; 07D2 _ 0F 87, 00000148
        or      rbx, 30H                                ; 07D8 _ 48: 83. CB, 30
        mov     rax, qword [rel _asciiTable_]           ; 07DC _ 48: 8B. 05, 00000000(GOT r)
        mov     r14, qword [rax]                        ; 07E3 _ 4C: 8B. 30
        mov     edi, 6                                  ; 07E6 _ BF, 00000006
        call    _malloc                                 ; 07EB _ E8, 00000000(rel)
        mov     r12, rax                                ; 07F0 _ 49: 89. C4
        mov     dword [r12], 1                          ; 07F3 _ 41: C7. 04 24, 00000001
        mov     al, byte [r14+rbx-20H]                  ; 07FB _ 41: 8A. 44 1E, E0
        mov     byte [r12+4H], al                       ; 0800 _ 41: 88. 44 24, 04
        mov     byte [r12+5H], 0                        ; 0805 _ 41: C6. 44 24, 05, 00
        movsxd  r13, dword [r15-4H]                     ; 080B _ 4D: 63. 6F, FC
        mov     eax, dword [r12]                        ; 080F _ 41: 8B. 04 24
        mov     qword [rbp-38H], rax                    ; 0813 _ 48: 89. 45, C8
        lea     eax, [rax+r13]                          ; 0817 _ 42: 8D. 04 28
        movsxd  rbx, eax                                ; 081B _ 48: 63. D8
        lea     rdi, [rbx+5H]                           ; 081E _ 48: 8D. 7B, 05
        call    _malloc                                 ; 0822 _ E8, 00000000(rel)
        lea     r14, [rax+4H]                           ; 0827 _ 4C: 8D. 70, 04
        test    r13, r13                                ; 082B _ 4D: 85. ED
        mov     rcx, rbx                                ; 082E _ 48: 89. D9
        mov     qword [rbp-30H], rcx                    ; 0831 _ 48: 89. 4D, D0
        mov     dword [rax], ebx                        ; 0835 _ 89. 18
        jle     ?_053                                   ; 0837 _ 0F 8E, 000000C7
        mov     ecx, r13d                               ; 083D _ 44: 89. E9
        cmp     r13d, 31                                ; 0840 _ 41: 83. FD, 1F
        jbe     ?_048                                   ; 0844 _ 76, 2A
        mov     r8d, r13d                               ; 0846 _ 45: 89. E8
        and     r8d, 1FH                                ; 0849 _ 41: 83. E0, 1F
        mov     rdx, rcx                                ; 084D _ 48: 89. CA
        sub     rdx, r8                                 ; 0850 _ 4C: 29. C2
        jz      ?_048                                   ; 0853 _ 74, 1B
        lea     rsi, [r15+rcx]                          ; 0855 _ 49: 8D. 34 0F
        cmp     r14, rsi                                ; 0859 _ 49: 39. F6
        jnc     ?_043                                   ; 085C _ 0F 83, FFFFFEDA
        lea     rsi, [rax+rcx+4H]                       ; 0862 _ 48: 8D. 74 08, 04
        cmp     r15, rsi                                ; 0867 _ 49: 39. F7
        jnc     ?_043                                   ; 086A _ 0F 83, FFFFFECC
?_048:  xor     edx, edx                                ; 0870 _ 31. D2
?_049:  mov     edi, ecx                                ; 0872 _ 89. CF
        sub     edi, edx                                ; 0874 _ 29. D7
        lea     rsi, [rcx-1H]                           ; 0876 _ 48: 8D. 71, FF
        sub     rsi, rdx                                ; 087A _ 48: 29. D6
        and     rdi, 07H                                ; 087D _ 48: 83. E7, 07
        jz      ?_051                                   ; 0881 _ 74, 1E
        neg     rdi                                     ; 0883 _ 48: F7. DF
; Filling space: 0AH
; Filler type: Multi-byte NOP
;       db 66H, 2EH, 0FH, 1FH, 84H, 00H, 00H, 00H
;       db 00H, 00H

ALIGN   16
?_050:  movzx   ebx, byte [r15+rdx]                     ; 0890 _ 41: 0F B6. 1C 17
        mov     byte [r14+rdx], bl                      ; 0895 _ 41: 88. 1C 16
        inc     rdx                                     ; 0899 _ 48: FF. C2
        inc     rdi                                     ; 089C _ 48: FF. C7
        jnz     ?_050                                   ; 089F _ 75, EF
?_051:  cmp     rsi, 7                                  ; 08A1 _ 48: 83. FE, 07
        jc      ?_053                                   ; 08A5 _ 72, 5D
        sub     rcx, rdx                                ; 08A7 _ 48: 29. D1
        lea     rax, [rax+rdx+0BH]                      ; 08AA _ 48: 8D. 44 10, 0B
        lea     rdx, [r15+rdx+7H]                       ; 08AF _ 49: 8D. 54 17, 07
; Filling space: 0CH
; Filler type: Multi-byte NOP
;       db 66H, 66H, 66H, 2EH, 0FH, 1FH, 84H, 00H
;       db 00H, 00H, 00H, 00H

ALIGN   16
?_052:  movzx   ebx, byte [rdx-7H]                      ; 08C0 _ 0F B6. 5A, F9
        mov     byte [rax-7H], bl                       ; 08C4 _ 88. 58, F9
        movzx   ebx, byte [rdx-6H]                      ; 08C7 _ 0F B6. 5A, FA
        mov     byte [rax-6H], bl                       ; 08CB _ 88. 58, FA
        movzx   ebx, byte [rdx-5H]                      ; 08CE _ 0F B6. 5A, FB
        mov     byte [rax-5H], bl                       ; 08D2 _ 88. 58, FB
        movzx   ebx, byte [rdx-4H]                      ; 08D5 _ 0F B6. 5A, FC
        mov     byte [rax-4H], bl                       ; 08D9 _ 88. 58, FC
        movzx   ebx, byte [rdx-3H]                      ; 08DC _ 0F B6. 5A, FD
        mov     byte [rax-3H], bl                       ; 08E0 _ 88. 58, FD
        movzx   ebx, byte [rdx-2H]                      ; 08E3 _ 0F B6. 5A, FE
        mov     byte [rax-2H], bl                       ; 08E7 _ 88. 58, FE
        movzx   ebx, byte [rdx-1H]                      ; 08EA _ 0F B6. 5A, FF
        mov     byte [rax-1H], bl                       ; 08EE _ 88. 58, FF
        movzx   ebx, byte [rdx]                         ; 08F1 _ 0F B6. 1A
        mov     byte [rax], bl                          ; 08F4 _ 88. 18
        add     rax, 8                                  ; 08F6 _ 48: 83. C0, 08
        add     rdx, 8                                  ; 08FA _ 48: 83. C2, 08
        add     rcx, -8                                 ; 08FE _ 48: 83. C1, F8
        jnz     ?_052                                   ; 0902 _ 75, BC
?_053:  mov     rdx, qword [rbp-38H]                    ; 0904 _ 48: 8B. 55, C8
        test    edx, edx                                ; 0908 _ 85. D2
        jle     ?_063                                   ; 090A _ 0F 8E, 0000017A
        add     r12, 4                                  ; 0910 _ 49: 83. C4, 04
        jmp     ?_062                                   ; 0914 _ E9, 00000163

; Filling space: 7H
; Filler type: Multi-byte NOP
;       db 0FH, 1FH, 80H, 00H, 00H, 00H, 00H

ALIGN   8
?_054:  add     rbx, 23                                 ; 0920 _ 48: 83. C3, 17
        mov     rax, qword [rel _asciiTable_]           ; 0924 _ 48: 8B. 05, 00000000(GOT r)
        mov     r14, qword [rax]                        ; 092B _ 4C: 8B. 30
        mov     edi, 6                                  ; 092E _ BF, 00000006
        call    _malloc                                 ; 0933 _ E8, 00000000(rel)
        mov     r12, rax                                ; 0938 _ 49: 89. C4
        mov     dword [r12], 1                          ; 093B _ 41: C7. 04 24, 00000001
        add     r12, 4                                  ; 0943 _ 49: 83. C4, 04
        lea     eax, [rbx+1H]                           ; 0947 _ 8D. 43, 01
        dec     rax                                     ; 094A _ 48: FF. C8
        mov     rcx, r12                                ; 094D _ 4C: 89. E1
        mov     rdx, rbx                                ; 0950 _ 48: 89. DA
; Filling space: 0DH
; Filler type: Multi-byte NOP
;       db 66H, 66H, 66H, 66H, 2EH, 0FH, 1FH, 84H
;       db 00H, 00H, 00H, 00H, 00H

ALIGN   16
?_055:  movzx   edx, byte [r14+rdx]                     ; 0960 _ 41: 0F B6. 14 16
        mov     byte [rcx], dl                          ; 0965 _ 88. 11
        inc     rax                                     ; 0967 _ 48: FF. C0
        movsxd  rdx, eax                                ; 096A _ 48: 63. D0
        inc     rcx                                     ; 096D _ 48: FF. C1
        cmp     rax, rbx                                ; 0970 _ 48: 39. D8
        jle     ?_055                                   ; 0973 _ 7E, EB
        mov     byte [rcx], 0                           ; 0975 _ C6. 01, 00
        movsxd  r13, dword [r15-4H]                     ; 0978 _ 4D: 63. 6F, FC
        mov     eax, dword [r12-4H]                     ; 097C _ 41: 8B. 44 24, FC
        mov     qword [rbp-38H], rax                    ; 0981 _ 48: 89. 45, C8
        lea     eax, [rax+r13]                          ; 0985 _ 42: 8D. 04 28
        movsxd  rbx, eax                                ; 0989 _ 48: 63. D8
        lea     rdi, [rbx+5H]                           ; 098C _ 48: 8D. 7B, 05
        call    _malloc                                 ; 0990 _ E8, 00000000(rel)
        lea     r14, [rax+4H]                           ; 0995 _ 4C: 8D. 70, 04
        test    r13, r13                                ; 0999 _ 4D: 85. ED
        mov     rcx, rbx                                ; 099C _ 48: 89. D9
        mov     qword [rbp-30H], rcx                    ; 099F _ 48: 89. 4D, D0
        mov     dword [rax], ebx                        ; 09A3 _ 89. 18
        jle     ?_061                                   ; 09A5 _ 0F 8E, 000000C9
        mov     ecx, r13d                               ; 09AB _ 44: 89. E9
        cmp     r13d, 31                                ; 09AE _ 41: 83. FD, 1F
        jbe     ?_056                                   ; 09B2 _ 76, 2C
        mov     r8d, r13d                               ; 09B4 _ 45: 89. E8
        and     r8d, 1FH                                ; 09B7 _ 41: 83. E0, 1F
        mov     rdx, rcx                                ; 09BB _ 48: 89. CA
        sub     rdx, r8                                 ; 09BE _ 4C: 29. C2
        jz      ?_056                                   ; 09C1 _ 74, 1D
        lea     rsi, [r15+rcx]                          ; 09C3 _ 49: 8D. 34 0F
        cmp     r14, rsi                                ; 09C7 _ 49: 39. F6
        jnc     ?_045                                   ; 09CA _ 0F 83, FFFFFDAA
        lea     rsi, [rax+rcx+4H]                       ; 09D0 _ 48: 8D. 74 08, 04
        cmp     r15, rsi                                ; 09D5 _ 49: 39. F7
        jnc     ?_045                                   ; 09D8 _ 0F 83, FFFFFD9C
; Filling space: 2H
; Filler type: NOP with prefixes
;       db 66H, 90H

ALIGN   8
?_056:  xor     edx, edx                                ; 09E0 _ 31. D2
?_057:  mov     edi, ecx                                ; 09E2 _ 89. CF
        sub     edi, edx                                ; 09E4 _ 29. D7
        lea     rsi, [rcx-1H]                           ; 09E6 _ 48: 8D. 71, FF
        sub     rsi, rdx                                ; 09EA _ 48: 29. D6
        and     rdi, 07H                                ; 09ED _ 48: 83. E7, 07
        jz      ?_059                                   ; 09F1 _ 74, 1E
        neg     rdi                                     ; 09F3 _ 48: F7. DF
; Filling space: 0AH
; Filler type: Multi-byte NOP
;       db 66H, 2EH, 0FH, 1FH, 84H, 00H, 00H, 00H
;       db 00H, 00H

ALIGN   16
?_058:  movzx   ebx, byte [r15+rdx]                     ; 0A00 _ 41: 0F B6. 1C 17
        mov     byte [r14+rdx], bl                      ; 0A05 _ 41: 88. 1C 16
        inc     rdx                                     ; 0A09 _ 48: FF. C2
        inc     rdi                                     ; 0A0C _ 48: FF. C7
        jnz     ?_058                                   ; 0A0F _ 75, EF
?_059:  cmp     rsi, 7                                  ; 0A11 _ 48: 83. FE, 07
        jc      ?_061                                   ; 0A15 _ 72, 5D
        sub     rcx, rdx                                ; 0A17 _ 48: 29. D1
        lea     rax, [rax+rdx+0BH]                      ; 0A1A _ 48: 8D. 44 10, 0B
        lea     rdx, [r15+rdx+7H]                       ; 0A1F _ 49: 8D. 54 17, 07
; Filling space: 0CH
; Filler type: Multi-byte NOP
;       db 66H, 66H, 66H, 2EH, 0FH, 1FH, 84H, 00H
;       db 00H, 00H, 00H, 00H

ALIGN   16
?_060:  movzx   ebx, byte [rdx-7H]                      ; 0A30 _ 0F B6. 5A, F9
        mov     byte [rax-7H], bl                       ; 0A34 _ 88. 58, F9
        movzx   ebx, byte [rdx-6H]                      ; 0A37 _ 0F B6. 5A, FA
        mov     byte [rax-6H], bl                       ; 0A3B _ 88. 58, FA
        movzx   ebx, byte [rdx-5H]                      ; 0A3E _ 0F B6. 5A, FB
        mov     byte [rax-5H], bl                       ; 0A42 _ 88. 58, FB
        movzx   ebx, byte [rdx-4H]                      ; 0A45 _ 0F B6. 5A, FC
        mov     byte [rax-4H], bl                       ; 0A49 _ 88. 58, FC
        movzx   ebx, byte [rdx-3H]                      ; 0A4C _ 0F B6. 5A, FD
        mov     byte [rax-3H], bl                       ; 0A50 _ 88. 58, FD
        movzx   ebx, byte [rdx-2H]                      ; 0A53 _ 0F B6. 5A, FE
        mov     byte [rax-2H], bl                       ; 0A57 _ 88. 58, FE
        movzx   ebx, byte [rdx-1H]                      ; 0A5A _ 0F B6. 5A, FF
        mov     byte [rax-1H], bl                       ; 0A5E _ 88. 58, FF
        movzx   ebx, byte [rdx]                         ; 0A61 _ 0F B6. 1A
        mov     byte [rax], bl                          ; 0A64 _ 88. 18
        add     rax, 8                                  ; 0A66 _ 48: 83. C0, 08
        add     rdx, 8                                  ; 0A6A _ 48: 83. C2, 08
        add     rcx, -8                                 ; 0A6E _ 48: 83. C1, F8
        jnz     ?_060                                   ; 0A72 _ 75, BC
?_061:  mov     rdx, qword [rbp-38H]                    ; 0A74 _ 48: 8B. 55, C8
        test    edx, edx                                ; 0A78 _ 85. D2
        jle     ?_063                                   ; 0A7A _ 7E, 0E
?_062:  add     r13, r14                                ; 0A7C _ 4D: 01. F5
        mov     rdi, r13                                ; 0A7F _ 4C: 89. EF
        mov     rsi, r12                                ; 0A82 _ 4C: 89. E6
        call    _memcpy                                 ; 0A85 _ E8, 00000000(rel)
?_063:  mov     rax, qword [rbp-30H]                    ; 0A8A _ 48: 8B. 45, D0
        mov     byte [r14+rax], 0                       ; 0A8E _ 41: C6. 04 06, 00
        mov     r15, r14                                ; 0A93 _ 4D: 89. F7
        mov     rcx, qword [rbp-40H]                    ; 0A96 _ 48: 8B. 4D, C0
        add     rcx, -4                                 ; 0A9A _ 48: 83. C1, FC
        jns     ?_047                                   ; 0A9E _ 0F 89, FFFFFD1C
        mov     rax, r15                                ; 0AA4 _ 4C: 89. F8
        add     rsp, 40                                 ; 0AA7 _ 48: 83. C4, 28
        pop     rbx                                     ; 0AAB _ 5B
        pop     r12                                     ; 0AAC _ 41: 5C
        pop     r13                                     ; 0AAE _ 41: 5D
        pop     r14                                     ; 0AB0 _ 41: 5E
        pop     r15                                     ; 0AB2 _ 41: 5F
        pop     rbp                                     ; 0AB4 _ 5D
        ret                                             ; 0AB5 _ C3
; _toStringHex End of function

; Filling space: 0AH
; Filler type: Multi-byte NOP
;       db 66H, 2EH, 0FH, 1FH, 84H, 00H, 00H, 00H
;       db 00H, 00H

ALIGN   16

_rotate_left:; Function begin
        push    rbp                                     ; 0AC0 _ 55
        mov     rbp, rsp                                ; 0AC1 _ 48: 89. E5
        cmp     rsi, 31                                 ; 0AC4 _ 48: 83. FE, 1F
        jz      ?_064                                   ; 0AC8 _ 74, 16
        cmp     rsi, 1                                  ; 0ACA _ 48: 83. FE, 01
        jnz     ?_065                                   ; 0ACE _ 75, 22
        mov     eax, edi                                ; 0AD0 _ 89. F8
        and     eax, 7FFFFFFFH                          ; 0AD2 _ 25, 7FFFFFFF
        shr     edi, 31                                 ; 0AD7 _ C1. EF, 1F
        lea     rdi, [rdi+rax*2]                        ; 0ADA _ 48: 8D. 3C 47
        jmp     ?_066                                   ; 0ADE _ EB, 4E

?_064:  mov     rax, rdi                                ; 0AE0 _ 48: 89. F8
        and     rax, 01H                                ; 0AE3 _ 48: 83. E0, 01
        shl     rax, 31                                 ; 0AE7 _ 48: C1. E0, 1F
        shr     edi, 1                                  ; 0AEB _ D1. EF
        or      rdi, rax                                ; 0AED _ 48: 09. C7
        jmp     ?_066                                   ; 0AF0 _ EB, 3C

?_065:  mov     r8d, 32                                 ; 0AF2 _ 41: B8, 00000020
        sub     r8d, esi                                ; 0AF8 _ 41: 29. F0
        mov     edx, 1                                  ; 0AFB _ BA, 00000001
        mov     eax, 1                                  ; 0B00 _ B8, 00000001
        mov     ecx, r8d                                ; 0B05 _ 44: 89. C1
        shl     eax, cl                                 ; 0B08 _ D3. E0
        dec     eax                                     ; 0B0A _ FF. C8
        cdqe                                            ; 0B0C _ 48: 98
        and     rax, rdi                                ; 0B0E _ 48: 21. F8
        mov     ecx, esi                                ; 0B11 _ 89. F1
        shl     rax, cl                                 ; 0B13 _ 48: D3. E0
        mov     ecx, r8d                                ; 0B16 _ 44: 89. C1
        sar     rdi, cl                                 ; 0B19 _ 48: D3. FF
        mov     ecx, esi                                ; 0B1C _ 89. F1
        shl     edx, cl                                 ; 0B1E _ D3. E2
        dec     edx                                     ; 0B20 _ FF. CA
        movsxd  rcx, edx                                ; 0B22 _ 48: 63. CA
        and     rcx, rdi                                ; 0B25 _ 48: 21. F9
        or      rcx, rax                                ; 0B28 _ 48: 09. C1
        mov     rdi, rcx                                ; 0B2B _ 48: 89. CF
?_066:  mov     rax, rdi                                ; 0B2E _ 48: 89. F8
        pop     rbp                                     ; 0B31 _ 5D
        ret                                             ; 0B32 _ C3
; _rotate_left End of function

; Filling space: 0DH
; Filler type: Multi-byte NOP
;       db 66H, 66H, 66H, 66H, 2EH, 0FH, 1FH, 84H
;       db 00H, 00H, 00H, 00H, 00H

ALIGN   16

_add:   ; Function begin
        push    rbp                                     ; 0B40 _ 55
        mov     rbp, rsp                                ; 0B41 _ 48: 89. E5
        movzx   eax, di                                 ; 0B44 _ 0F B7. C7
        movzx   ecx, si                                 ; 0B47 _ 0F B7. CE
        add     ecx, eax                                ; 0B4A _ 01. C1
        mov     eax, edi                                ; 0B4C _ 89. F8
        and     eax, 0FFFF0000H                         ; 0B4E _ 25, FFFF0000
        add     eax, esi                                ; 0B53 _ 01. F0
        and     eax, 0FFFF0000H                         ; 0B55 _ 25, FFFF0000
        add     ecx, eax                                ; 0B5A _ 01. C1
        and     ecx, 0FFFF0000H                         ; 0B5C _ 81. E1, FFFF0000
        add     esi, edi                                ; 0B62 _ 01. FE
        movzx   eax, si                                 ; 0B64 _ 0F B7. C6
        or      rax, rcx                                ; 0B67 _ 48: 09. C8
        pop     rbp                                     ; 0B6A _ 5D
        ret                                             ; 0B6B _ C3
; _add End of function

; Filling space: 4H
; Filler type: Multi-byte NOP
;       db 0FH, 1FH, 40H, 00H

ALIGN   8

_lohi:  ; Function begin
        push    rbp                                     ; 0B70 _ 55
        mov     rbp, rsp                                ; 0B71 _ 48: 89. E5
        shl     rsi, 16                                 ; 0B74 _ 48: C1. E6, 10
        or      rsi, rdi                                ; 0B78 _ 48: 09. FE
        mov     rax, rsi                                ; 0B7B _ 48: 89. F0
        pop     rbp                                     ; 0B7E _ 5D
        ret                                             ; 0B7F _ C3
; _lohi End of function

_sha1:  ; Function begin
        push    rbp                                     ; 0B80 _ 55
        mov     rbp, rsp                                ; 0B81 _ 48: 89. E5
        push    r15                                     ; 0B84 _ 41: 57
        push    r14                                     ; 0B86 _ 41: 56
        push    r13                                     ; 0B88 _ 41: 55
        push    r12                                     ; 0B8A _ 41: 54
        push    rbx                                     ; 0B8C _ 53
        sub     rsp, 24                                 ; 0B8D _ 48: 83. EC, 18
        lea     r10, [rsi+8H]                           ; 0B91 _ 4C: 8D. 56, 08
        mov     rax, r10                                ; 0B95 _ 4C: 89. D0
        sar     rax, 63                                 ; 0B98 _ 48: C1. F8, 3F
        shr     rax, 58                                 ; 0B9C _ 48: C1. E8, 3A
        lea     r12, [rsi+rax+8H]                       ; 0BA0 _ 4C: 8D. 64 06, 08
        sar     r12, 6                                  ; 0BA5 _ 49: C1. FC, 06
        mov     rax, qword [rel _MAXCHUNK_]             ; 0BA9 _ 48: 8B. 05, 00000000(GOT r)
        cmp     r12, qword [rax]                        ; 0BB0 _ 4C: 3B. 20
        jge     ?_072                                   ; 0BB3 _ 0F 8D, 0000015D
        cmp     r10, -63                                ; 0BB9 _ 49: 83. FA, C1
        jl      ?_069                                   ; 0BBD _ 7C, 56
        xor     eax, eax                                ; 0BBF _ 31. C0
        mov     rcx, qword [rel _chunks_]               ; 0BC1 _ 48: 8B. 0D, 00000000(GOT r)
; Filling space: 8H
; Filler type: Multi-byte NOP
;       db 0FH, 1FH, 84H, 00H, 00H, 00H, 00H, 00H

ALIGN   16
?_067:  mov     edx, 8                                  ; 0BD0 _ BA, 00000008
; Filling space: 0BH
; Filler type: Multi-byte NOP
;       db 66H, 66H, 2EH, 0FH, 1FH, 84H, 00H, 00H
;       db 00H, 00H, 00H

ALIGN   16
?_068:  mov     rbx, qword [rcx]                        ; 0BE0 _ 48: 8B. 19
        mov     rbx, qword [rbx+rax*8]                  ; 0BE3 _ 48: 8B. 1C C3
        mov     qword [rdx+rbx-8H], 0                   ; 0BE7 _ 48: C7. 44 1A, F8, 00000000
        mov     rbx, qword [rcx]                        ; 0BF0 _ 48: 8B. 19
        mov     rbx, qword [rbx+rax*8]                  ; 0BF3 _ 48: 8B. 1C C3
        mov     qword [rdx+rbx], 0                      ; 0BF7 _ 48: C7. 04 1A, 00000000
        add     rdx, 16                                 ; 0BFF _ 48: 83. C2, 10
        cmp     rdx, 648                                ; 0C03 _ 48: 81. FA, 00000288
        jnz     ?_068                                   ; 0C0A _ 75, D4
        cmp     rax, r12                                ; 0C0C _ 4C: 39. E0
        lea     rax, [rax+1H]                           ; 0C0F _ 48: 8D. 40, 01
        jl      ?_067                                   ; 0C13 _ 7C, BB
?_069:  xor     r14d, r14d                              ; 0C15 _ 45: 31. F6
        mov     r11, qword [rel _chunks_]               ; 0C18 _ 4C: 8B. 1D, 00000000(GOT r)
        jmp     ?_071                                   ; 0C1F _ EB, 3C

; Filling space: 0FH
; Filler type: Multi-byte NOP
;       db 66H, 66H, 66H, 66H, 66H, 66H, 2EH, 0FH
;       db 1FH, 84H, 00H, 00H, 00H, 00H, 00H

ALIGN   16
?_070:  mov     r15, qword [rdi]                        ; 0C30 _ 4C: 8B. 3F
        shr     rdx, 62                                 ; 0C33 _ 48: C1. EA, 3E
        add     edx, r14d                               ; 0C37 _ 44: 01. F2
        and     edx, 1CH                                ; 0C3A _ 83. E2, 1C
        mov     ebx, r14d                               ; 0C3D _ 44: 89. F3
        sub     ebx, edx                                ; 0C40 _ 29. D3
        mov     ecx, 3                                  ; 0C42 _ B9, 00000003
        sub     ecx, ebx                                ; 0C47 _ 29. D9
        shl     cl, 3                                   ; 0C49 _ C0. E1, 03
        shl     r15, cl                                 ; 0C4C _ 49: D3. E7
        or      r15, r9                                 ; 0C4F _ 4D: 09. CF
        mov     qword [r8+rax*8], r15                   ; 0C52 _ 4D: 89. 3C C0
        inc     r14                                     ; 0C56 _ 49: FF. C6
        add     rdi, 8                                  ; 0C59 _ 48: 83. C7, 08
?_071:  mov     r8, qword [r11]                         ; 0C5D _ 4D: 8B. 03
        mov     rdx, r14                                ; 0C60 _ 4C: 89. F2
        sar     rdx, 63                                 ; 0C63 _ 48: C1. FA, 3F
        mov     rcx, rdx                                ; 0C67 _ 48: 89. D1
        shr     rcx, 58                                 ; 0C6A _ 48: C1. E9, 3A
        add     rcx, r14                                ; 0C6E _ 4C: 01. F1
        mov     rax, rcx                                ; 0C71 _ 48: 89. C8
        and     rax, 0FFFFFFFFFFFFFFC0H                 ; 0C74 _ 48: 83. E0, C0
        sar     rcx, 6                                  ; 0C78 _ 48: C1. F9, 06
        mov     r8, qword [r8+rcx*8]                    ; 0C7C _ 4D: 8B. 04 C8
        mov     rcx, r14                                ; 0C80 _ 4C: 89. F1
        sub     rcx, rax                                ; 0C83 _ 48: 29. C1
        mov     rax, rcx                                ; 0C86 _ 48: 89. C8
        sar     rax, 63                                 ; 0C89 _ 48: C1. F8, 3F
        shr     rax, 62                                 ; 0C8D _ 48: C1. E8, 3E
        add     rax, rcx                                ; 0C91 _ 48: 01. C8
        sar     rax, 2                                  ; 0C94 _ 48: C1. F8, 02
        mov     r9, qword [r8+rax*8]                    ; 0C98 _ 4D: 8B. 0C C0
        cmp     r14, rsi                                ; 0C9C _ 49: 39. F6
        jl      ?_070                                   ; 0C9F _ 7C, 8F
        shr     rdx, 62                                 ; 0CA1 _ 48: C1. EA, 3E
        add     edx, r14d                               ; 0CA5 _ 44: 01. F2
        and     edx, 1CH                                ; 0CA8 _ 83. E2, 1C
        sub     r14d, edx                               ; 0CAB _ 41: 29. D6
        mov     ecx, 3                                  ; 0CAE _ B9, 00000003
        sub     ecx, r14d                               ; 0CB3 _ 44: 29. F1
        shl     cl, 3                                   ; 0CB6 _ C0. E1, 03
        mov     edx, 128                                ; 0CB9 _ BA, 00000080
        shl     edx, cl                                 ; 0CBE _ D3. E2
        movsxd  rcx, edx                                ; 0CC0 _ 48: 63. CA
        or      rcx, r9                                 ; 0CC3 _ 4C: 09. C9
        lea     rdx, [rsi*8]                            ; 0CC6 _ 48: 8D. 14 F5, 00000000
        shr     esi, 29                                 ; 0CCE _ C1. EE, 1D
        mov     edi, 2400959708                         ; 0CD1 _ BF, 8F1BBCDC
        cmp     r10, -63                                ; 0CD6 _ 49: 83. FA, C1
        mov     qword [r8+rax*8], rcx                   ; 0CDA _ 49: 89. 0C C0
        mov     rax, qword [r11]                        ; 0CDE _ 49: 8B. 03
        mov     rax, qword [rax+r12*8]                  ; 0CE1 _ 4A: 8B. 04 E0
        mov     qword [rax+78H], rdx                    ; 0CE5 _ 48: 89. 50, 78
        mov     rax, qword [r11]                        ; 0CE9 _ 49: 8B. 03
        mov     rax, qword [rax+r12*8]                  ; 0CEC _ 4A: 8B. 04 E0
        mov     qword [rax+70H], rsi                    ; 0CF0 _ 48: 89. 70, 70
        jge     ?_073                                   ; 0CF4 _ 7D, 66
        lea     rax, [rdi+34B72514H]                    ; 0CF6 _ 48: 8D. 87, 34B72514
        add     rdi, 1622273709                         ; 0CFD _ 48: 81. C7, 60B1EEAD
; Note: Alignment fault. Memory operand must be aligned
        movdqa  xmm0, oword [rel _str_le+0C14H]         ; 0D04 _ 66: 0F 6F. 05, 00000C14(rel)
        mov     ebx, 1732584193                         ; 0D0C _ BB, 67452301
        jmp     ?_081                                   ; 0D11 _ E9, 0000033C

?_072:  mov     edi, 23                                 ; 0D16 _ BF, 00000017
        call    _malloc                                 ; 0D1B _ E8, 00000000(rel)
        mov     dword [rax], 18                         ; 0D20 _ C7. 00, 00000012
        mov     rcx, qword 4E55484358414D20H            ; 0D26 _ 48: B9, 4E55484358414D20
        mov     qword [rax+0CH], rcx                    ; 0D30 _ 48: 89. 48, 0C
        mov     rcx, qword 3E206B6E7568436EH            ; 0D34 _ 48: B9, 3E206B6E7568436E
        mov     qword [rax+4H], rcx                     ; 0D3E _ 48: 89. 48, 04
        mov     byte [rax+16H], 0                       ; 0D42 _ C6. 40, 16, 00
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [rax+14H], 8523                    ; 0D46 _ 66: C7. 40, 14, 214B
        lea     rdi, [rax+4H]                           ; 0D4C _ 48: 8D. 78, 04
        call    _puts                                   ; 0D50 _ E8, 00000000(rel)
        xor     eax, eax                                ; 0D55 _ 31. C0
        jmp     ?_082                                   ; 0D57 _ E9, 00000327

?_073:
; Note: Alignment fault. Memory operand must be aligned
        movdqa  xmm1, oword [rel _str_le+0BCCH]         ; 0D5C _ 66: 0F 6F. 0D, 00000BCC(rel)
; Note: Alignment fault. Memory operand must be aligned
        movdqa  xmm0, oword [rel _str_le+0BB4H]         ; 0D64 _ 66: 0F 6F. 05, 00000BB4(rel)
        xor     r14d, r14d                              ; 0D6C _ 45: 31. F6
        mov     ebx, 1732584193                         ; 0D6F _ BB, 67452301
        pxor    xmm2, xmm2                              ; 0D74 _ 66: 0F EF. D2
        mov     qword [rbp-30H], r12                    ; 0D78 _ 4C: 89. 65, D0
; Filling space: 4H
; Filler type: Multi-byte NOP
;       db 0FH, 1FH, 40H, 00H

ALIGN   8
?_074:  xor     eax, eax                                ; 0D80 _ 31. C0
; Filling space: 0EH
; Filler type: Multi-byte NOP
;       db 66H, 66H, 66H, 66H, 66H, 2EH, 0FH, 1FH
;       db 84H, 00H, 00H, 00H, 00H, 00H

ALIGN   16
?_075:  mov     rcx, qword [r11]                        ; 0D90 _ 49: 8B. 0B
        mov     rcx, qword [rcx+r14*8]                  ; 0D93 _ 4A: 8B. 0C F1
        mov     rdx, qword [rax+rcx+40H]                ; 0D97 _ 48: 8B. 54 08, 40
        xor     rdx, qword [rax+rcx+68H]                ; 0D9C _ 48: 33. 54 08, 68
        xor     rdx, qword [rax+rcx+10H]                ; 0DA1 _ 48: 33. 54 08, 10
        xor     rdx, qword [rax+rcx]                    ; 0DA6 _ 48: 33. 14 08
        mov     esi, edx                                ; 0DAA _ 89. D6
        and     esi, 7FFFFFFFH                          ; 0DAC _ 81. E6, 7FFFFFFF
        shr     edx, 31                                 ; 0DB2 _ C1. EA, 1F
        lea     rdx, [rdx+rsi*2]                        ; 0DB5 _ 48: 8D. 14 72
        mov     qword [rax+rcx+80H], rdx                ; 0DB9 _ 48: 89. 94 08, 00000080
        add     rax, 8                                  ; 0DC1 _ 48: 83. C0, 08
        cmp     rax, 512                                ; 0DC5 _ 48: 3D, 00000200
        jnz     ?_075                                   ; 0DCB _ 75, C3
        mov     rax, qword [r11]                        ; 0DCD _ 49: 8B. 03
        mov     r12, qword [rax+r14*8]                  ; 0DD0 _ 4E: 8B. 24 F0
        pextrq  rdi, xmm0, 01H                          ; 0DD4 _ 66 48: 0F 3A 16. C7, 01
        mov     qword [rbp-38H], rbx                    ; 0DDB _ 48: 89. 5D, C8
        movq    xmm5, rbx                               ; 0DDF _ 66 48: 0F 6E. EB
        punpcklqdq xmm5, xmm0                           ; 0DE4 _ 66: 0F 6C. E8
        movq    r9, xmm1                                ; 0DE8 _ 66 49: 0F 7E. C9
        pextrq  rdx, xmm1, 01H                          ; 0DED _ 66 48: 0F 3A 16. CA, 01
        mov     r10d, 0                                 ; 0DF4 _ 41: BA, 00000000
; Filling space: 6H
; Filler type: Multi-byte NOP
;       db 66H, 0FH, 1FH, 44H, 00H, 00H

ALIGN   8
?_076:  movdqa  xmm3, xmm5                              ; 0E00 _ 66: 0F 6F. DD
        mov     r15, rdi                                ; 0E04 _ 49: 89. FF
        mov     rax, r9                                 ; 0E07 _ 4C: 89. C8
        cmp     r10, 19                                 ; 0E0A _ 49: 83. FA, 13
        jg      ?_077                                   ; 0E0E _ 7F, 20
        mov     rcx, rax                                ; 0E10 _ 48: 89. C1
        and     rcx, r15                                ; 0E13 _ 4C: 21. F9
        mov     rsi, rax                                ; 0E16 _ 48: 89. C6
        not     rsi                                     ; 0E19 _ 48: F7. D6
        pextrq  rdi, xmm3, 01H                          ; 0E1C _ 66 48: 0F 3A 16. DF, 01
        and     rdi, rsi                                ; 0E23 _ 48: 21. F7
        or      rdi, rcx                                ; 0E26 _ 48: 09. CF
        mov     ebx, 1518500249                         ; 0E29 _ BB, 5A827999
        jmp     ?_080                                   ; 0E2E _ EB, 50

?_077:  pextrq  rdi, xmm3, 01H                          ; 0E30 _ 66 48: 0F 3A 16. DF, 01
        cmp     r10, 39                                 ; 0E37 _ 49: 83. FA, 27
        jg      ?_078                                   ; 0E3B _ 7F, 13
        xor     rdi, r15                                ; 0E3D _ 4C: 31. FF
        xor     rdi, rax                                ; 0E40 _ 48: 31. C7
        mov     ebx, 1859775393                         ; 0E43 _ BB, 6ED9EBA1
        jmp     ?_080                                   ; 0E48 _ EB, 36

; Filling space: 6H
; Filler type: Multi-byte NOP
;       db 66H, 0FH, 1FH, 44H, 00H, 00H

ALIGN   8
?_078:  cmp     r10, 59                                 ; 0E50 _ 49: 83. FA, 3B
        jg      ?_079                                   ; 0E54 _ 7F, 16
        mov     rcx, r15                                ; 0E56 _ 4C: 89. F9
        or      rcx, rdi                                ; 0E59 _ 48: 09. F9
        and     rcx, rax                                ; 0E5C _ 48: 21. C1
        and     rdi, r15                                ; 0E5F _ 4C: 21. FF
        or      rdi, rcx                                ; 0E62 _ 48: 09. CF
        mov     ebx, 2400959708                         ; 0E65 _ BB, 8F1BBCDC
        jmp     ?_080                                   ; 0E6A _ EB, 14

?_079:  xor     rdi, r15                                ; 0E6C _ 4C: 31. FF
        xor     rdi, rax                                ; 0E6F _ 48: 31. C7
        mov     ecx, 2400959708                         ; 0E72 _ B9, 8F1BBCDC
        lea     rbx, [rcx+3B4704FAH]                    ; 0E77 _ 48: 8D. 99, 3B4704FA
; Filling space: 2H
; Filler type: NOP with prefixes
;       db 66H, 90H

ALIGN   8
?_080:  movq    r9, xmm3                                ; 0E80 _ 66 49: 0F 7E. D9
        mov     r8, r9                                  ; 0E85 _ 4D: 89. C8
        shl     r8, 5                                   ; 0E88 _ 49: C1. E0, 05
        mov     ecx, r8d                                ; 0E8C _ 44: 89. C1
        mov     r13d, r9d                               ; 0E8F _ 45: 89. CD
        shr     r13d, 27                                ; 0E92 _ 41: C1. ED, 1B
        or      r13, rcx                                ; 0E96 _ 49: 09. CD
        movzx   ecx, r13w                               ; 0E99 _ 41: 0F B7. CD
        movzx   esi, dx                                 ; 0E9D _ 0F B7. F2
        add     esi, ecx                                ; 0EA0 _ 01. CE
        and     r8d, 0FFFF0000H                         ; 0EA2 _ 41: 81. E0, FFFF0000
        add     r8d, edx                                ; 0EA9 _ 41: 01. D0
        and     r8d, 0FFFF0000H                         ; 0EAC _ 41: 81. E0, FFFF0000
        add     r8d, esi                                ; 0EB3 _ 41: 01. F0
        and     r8d, 0FFFF0000H                         ; 0EB6 _ 41: 81. E0, FFFF0000
        add     r13, rdx                                ; 0EBD _ 49: 01. D5
        movzx   edx, r13w                               ; 0EC0 _ 41: 0F B7. D5
        movzx   ecx, di                                 ; 0EC4 _ 0F B7. CF
        movzx   esi, bx                                 ; 0EC7 _ 0F B7. F3
        add     esi, ecx                                ; 0ECA _ 01. CE
        mov     ecx, edi                                ; 0ECC _ 89. F9
        and     ecx, 0FFFF0000H                         ; 0ECE _ 81. E1, FFFF0000
        add     ecx, ebx                                ; 0ED4 _ 01. D9
        and     ecx, 0FFFF0000H                         ; 0ED6 _ 81. E1, FFFF0000
        add     ecx, esi                                ; 0EDC _ 01. F1
        and     ecx, 0FFFF0000H                         ; 0EDE _ 81. E1, FFFF0000
        add     rbx, rdi                                ; 0EE4 _ 48: 01. FB
        movzx   esi, bx                                 ; 0EE7 _ 0F B7. F3
        or      ecx, esi                                ; 0EEA _ 09. F1
        add     edx, esi                                ; 0EEC _ 01. F2
        add     ecx, r8d                                ; 0EEE _ 44: 01. C1
        and     ecx, 0FFFF0000H                         ; 0EF1 _ 81. E1, FFFF0000
        add     ecx, edx                                ; 0EF7 _ 01. D1
        and     ecx, 0FFFF0000H                         ; 0EF9 _ 81. E1, FFFF0000
        add     rbx, r13                                ; 0EFF _ 4C: 01. EB
        movzx   edx, bx                                 ; 0F02 _ 0F B7. D3
        mov     rsi, qword [r12]                        ; 0F05 _ 49: 8B. 34 24
        movzx   edi, si                                 ; 0F09 _ 0F B7. FE
        add     edi, edx                                ; 0F0C _ 01. D7
        add     ecx, esi                                ; 0F0E _ 01. F1
        and     ecx, 0FFFF0000H                         ; 0F10 _ 81. E1, FFFF0000
        add     ecx, edi                                ; 0F16 _ 01. F9
        and     ecx, 0FFFF0000H                         ; 0F18 _ 81. E1, FFFF0000
        add     rbx, rsi                                ; 0F1E _ 48: 01. F3
        movzx   esi, bx                                 ; 0F21 _ 0F B7. F3
        or      rcx, rsi                                ; 0F24 _ 48: 09. F1
        mov     rdx, rax                                ; 0F27 _ 48: 89. C2
        and     rdx, 03H                                ; 0F2A _ 48: 83. E2, 03
        shl     rdx, 30                                 ; 0F2E _ 48: C1. E2, 1E
        shr     rax, 2                                  ; 0F32 _ 48: C1. E8, 02
        mov     edi, eax                                ; 0F36 _ 89. C7
        and     edi, 3FFFFFFFH                          ; 0F38 _ 81. E7, 3FFFFFFF
        or      rdi, rdx                                ; 0F3E _ 48: 09. D7
        inc     r10                                     ; 0F41 _ 49: FF. C2
        movq    xmm5, rcx                               ; 0F44 _ 66 48: 0F 6E. E9
        movq    xmm4, r15                               ; 0F49 _ 66 49: 0F 6E. E7
        punpcklqdq xmm5, xmm4                           ; 0F4E _ 66: 0F 6C. EC
        pextrq  rdx, xmm3, 01H                          ; 0F52 _ 66 48: 0F 3A 16. DA, 01
        add     r12, 8                                  ; 0F59 _ 49: 83. C4, 08
        cmp     r10, 80                                 ; 0F5D _ 49: 83. FA, 50
        jne     ?_076                                   ; 0F61 _ 0F 85, FFFFFE99
        mov     r8, qword [rbp-38H]                     ; 0F67 _ 4C: 8B. 45, C8
        movzx   edx, r8w                                ; 0F6B _ 41: 0F B7. D0
        add     esi, edx                                ; 0F6F _ 01. D6
        add     ebx, r8d                                ; 0F71 _ 44: 01. C3
        mov     edx, r8d                                ; 0F74 _ 44: 89. C2
        and     edx, 0FFFF0000H                         ; 0F77 _ 81. E2, FFFF0000
        add     ecx, edx                                ; 0F7D _ 01. D1
        and     ecx, 0FFFF0000H                         ; 0F7F _ 81. E1, FFFF0000
        add     ecx, esi                                ; 0F85 _ 01. F1
        and     ecx, 0FFFF0000H                         ; 0F87 _ 81. E1, FFFF0000
        movzx   ebx, bx                                 ; 0F8D _ 0F B7. DB
        or      rbx, rcx                                ; 0F90 _ 48: 09. CB
        pxor    xmm5, xmm5                              ; 0F93 _ 66: 0F EF. ED
        pblendw xmm5, xmm0, 11H                         ; 0F97 _ 66: 0F 3A 0E. E8, 11
        movdqa  xmm6, xmm4                              ; 0F9D _ 66: 0F 6F. F4
        pinsrq  xmm6, rax, 1                            ; 0FA1 _ 66 48: 0F 3A 22. F0, 01
        pxor    xmm7, xmm7                              ; 0FA8 _ 66: 0F EF. FF
        pblendw xmm7, xmm6, 11H                         ; 0FAC _ 66: 0F 3A 0E. FE, 11
        paddq   xmm7, xmm5                              ; 0FB2 _ 66: 0F D4. FD
        pxor    xmm5, xmm5                              ; 0FB6 _ 66: 0F EF. ED
        pblendw xmm5, xmm0, 22H                         ; 0FBA _ 66: 0F 3A 0E. E8, 22
        pinsrq  xmm4, rdi, 1                            ; 0FC0 _ 66 48: 0F 3A 22. E7, 01
        paddq   xmm4, xmm5                              ; 0FC7 _ 66: 0F D4. E5
        pblendw xmm4, xmm2, 0DDH                        ; 0FCB _ 66: 0F 3A 0E. E2, DD
        paddq   xmm4, xmm7                              ; 0FD1 _ 66: 0F D4. E7
        pblendw xmm4, xmm2, 0DDH                        ; 0FD5 _ 66: 0F 3A 0E. E2, DD
        paddq   xmm6, xmm0                              ; 0FDB _ 66: 0F D4. F0
        pblendw xmm6, xmm2, 0EEH                        ; 0FDF _ 66: 0F 3A 0E. F2, EE
        movdqa  xmm0, xmm6                              ; 0FE5 _ 66: 0F 6F. C6
        por     xmm0, xmm4                              ; 0FE9 _ 66: 0F EB. C4
        pxor    xmm4, xmm4                              ; 0FED _ 66: 0F EF. E4
        pblendw xmm4, xmm1, 11H                         ; 0FF1 _ 66: 0F 3A 0E. E1, 11
        pxor    xmm5, xmm5                              ; 0FF7 _ 66: 0F EF. ED
        pblendw xmm5, xmm3, 11H                         ; 0FFB _ 66: 0F 3A 0E. EB, 11
        paddq   xmm5, xmm4                              ; 1001 _ 66: 0F D4. EC
        pxor    xmm4, xmm4                              ; 1005 _ 66: 0F EF. E4
        pblendw xmm4, xmm1, 22H                         ; 1009 _ 66: 0F 3A 0E. E1, 22
        paddq   xmm4, xmm3                              ; 100F _ 66: 0F D4. E3
        pblendw xmm4, xmm2, 0DDH                        ; 1013 _ 66: 0F 3A 0E. E2, DD
        paddq   xmm4, xmm5                              ; 1019 _ 66: 0F D4. E5
        pblendw xmm4, xmm2, 0DDH                        ; 101D _ 66: 0F 3A 0E. E2, DD
        paddq   xmm3, xmm1                              ; 1023 _ 66: 0F D4. D9
        pblendw xmm3, xmm2, 0EEH                        ; 1027 _ 66: 0F 3A 0E. DA, EE
        movdqa  xmm1, xmm3                              ; 102D _ 66: 0F 6F. CB
        por     xmm1, xmm4                              ; 1031 _ 66: 0F EB. CC
        mov     r12, qword [rbp-30H]                    ; 1035 _ 4C: 8B. 65, D0
        cmp     r14, r12                                ; 1039 _ 4D: 39. E6
        lea     r14, [r14+1H]                           ; 103C _ 4D: 8D. 76, 01
        jl      ?_074                                   ; 1040 _ 0F 8C, FFFFFD3A
        movq    rdi, xmm1                               ; 1046 _ 66 48: 0F 7E. CF
        pextrq  rax, xmm1, 01H                          ; 104B _ 66 48: 0F 3A 16. C8, 01
?_081:  mov     rcx, qword [rel _outputBuffer_]         ; 1052 _ 48: 8B. 0D, 00000000(GOT r)
        mov     rdx, qword [rcx]                        ; 1059 _ 48: 8B. 11
        mov     qword [rdx], rbx                        ; 105C _ 48: 89. 1A
        mov     rdx, qword [rcx]                        ; 105F _ 48: 8B. 11
        mov     qword [rdx+8H], rdi                     ; 1062 _ 48: 89. 7A, 08
        mov     rdx, qword [rcx]                        ; 1066 _ 48: 8B. 11
        pextrq  qword [rdx+10H], xmm0, 01H              ; 1069 _ 66 48: 0F 3A 16. 42, 10, 01
        mov     rdx, qword [rcx]                        ; 1071 _ 48: 8B. 11
        movq    qword [rdx+18H], xmm0                   ; 1074 _ 66: 0F D6. 42, 18
        mov     rdx, qword [rcx]                        ; 1079 _ 48: 8B. 11
        mov     qword [rdx+20H], rax                    ; 107C _ 48: 89. 42, 20
        mov     rax, qword [rcx]                        ; 1080 _ 48: 8B. 01
?_082:  add     rsp, 24                                 ; 1083 _ 48: 83. C4, 18
        pop     rbx                                     ; 1087 _ 5B
        pop     r12                                     ; 1088 _ 41: 5C
        pop     r13                                     ; 108A _ 41: 5D
        pop     r14                                     ; 108C _ 41: 5E
        pop     r15                                     ; 108E _ 41: 5F
        pop     rbp                                     ; 1090 _ 5D
        ret                                             ; 1091 _ C3
; _sha1 End of function

; Filling space: 0EH
; Filler type: Multi-byte NOP
;       db 66H, 66H, 66H, 66H, 66H, 2EH, 0FH, 1FH
;       db 84H, 00H, 00H, 00H, 00H, 00H

ALIGN   16

_computeSHA1:; Function begin
        push    rbp                                     ; 10A0 _ 55
        mov     rbp, rsp                                ; 10A1 _ 48: 89. E5
        push    r15                                     ; 10A4 _ 41: 57
        push    r14                                     ; 10A6 _ 41: 56
        push    r12                                     ; 10A8 _ 41: 54
        push    rbx                                     ; 10AA _ 53
        movsxd  rsi, dword [rdi-4H]                     ; 10AB _ 48: 63. 77, FC
        test    rsi, rsi                                ; 10AF _ 48: 85. F6
        jle     ?_086                                   ; 10B2 _ 7E, 63
        test    sil, 01H                                ; 10B4 _ 40: F6. C6, 01
        jnz     ?_083                                   ; 10B8 _ 75, 04
        xor     eax, eax                                ; 10BA _ 31. C0
        jmp     ?_084                                   ; 10BC _ EB, 16

?_083:  movsx   rax, byte [rdi]                         ; 10BE _ 48: 0F BE. 07
        mov     rcx, qword [rel _inputBuffer_]          ; 10C2 _ 48: 8B. 0D, 00000000(GOT r)
        mov     rcx, qword [rcx]                        ; 10C9 _ 48: 8B. 09
        mov     qword [rcx], rax                        ; 10CC _ 48: 89. 01
        mov     eax, 1                                  ; 10CF _ B8, 00000001
?_084:  cmp     esi, 1                                  ; 10D4 _ 83. FE, 01
        jz      ?_086                                   ; 10D7 _ 74, 3E
        lea     rcx, [rax*8]                            ; 10D9 _ 48: 8D. 0C C5, 00000000
        mov     r8, qword [rel _inputBuffer_]           ; 10E1 _ 4C: 8B. 05, 00000000(GOT r)
; Filling space: 8H
; Filler type: Multi-byte NOP
;       db 0FH, 1FH, 84H, 00H, 00H, 00H, 00H, 00H

ALIGN   16
?_085:  movsx   rbx, byte [rdi+rax]                     ; 10F0 _ 48: 0F BE. 1C 07
        mov     rdx, qword [r8]                         ; 10F5 _ 49: 8B. 10
        mov     qword [rcx+rdx], rbx                    ; 10F8 _ 48: 89. 1C 11
        movsx   rdx, byte [rdi+rax+1H]                  ; 10FC _ 48: 0F BE. 54 07, 01
        mov     rbx, qword [r8]                         ; 1102 _ 49: 8B. 18
        mov     qword [rcx+rbx+8H], rdx                 ; 1105 _ 48: 89. 54 19, 08
        add     rax, 2                                  ; 110A _ 48: 83. C0, 02
        add     rcx, 16                                 ; 110E _ 48: 83. C1, 10
        cmp     rax, rsi                                ; 1112 _ 48: 39. F0
        jl      ?_085                                   ; 1115 _ 7C, D9
?_086:  mov     rax, qword [rel _inputBuffer_]          ; 1117 _ 48: 8B. 05, 00000000(GOT r)
        mov     rdi, qword [rax]                        ; 111E _ 48: 8B. 38
        call    _sha1                                   ; 1121 _ E8, 00000000(rel)
        mov     r15, rax                                ; 1126 _ 49: 89. C7
        cmp     qword [r15-8H], 0                       ; 1129 _ 49: 83. 7F, F8, 00
        jle     ?_088                                   ; 112E _ 7E, 36
        lea     r14, [rel _str_le+80CH]                 ; 1130 _ 4C: 8D. 35, 0000080C(rel)
        mov     r12, r15                                ; 1137 _ 4D: 89. FC
        xor     ebx, ebx                                ; 113A _ 31. DB
; Filling space: 4H
; Filler type: Multi-byte NOP
;       db 0FH, 1FH, 40H, 00H

ALIGN   8
?_087:  mov     rdi, qword [r12]                        ; 1140 _ 49: 8B. 3C 24
        call    _toStringHex                            ; 1144 _ E8, 00000000(rel)
        mov     rcx, rax                                ; 1149 _ 48: 89. C1
        xor     eax, eax                                ; 114C _ 31. C0
        mov     rdi, r14                                ; 114E _ 4C: 89. F7
        mov     rsi, rcx                                ; 1151 _ 48: 89. CE
        call    _printf                                 ; 1154 _ E8, 00000000(rel)
        inc     rbx                                     ; 1159 _ 48: FF. C3
        add     r12, 8                                  ; 115C _ 49: 83. C4, 08
        cmp     rbx, qword [r15-8H]                     ; 1160 _ 49: 3B. 5F, F8
        jl      ?_087                                   ; 1164 _ 7C, DA
?_088:  mov     edi, 5                                  ; 1166 _ BF, 00000005
        call    _malloc                                 ; 116B _ E8, 00000000(rel)
        mov     dword [rax], 0                          ; 1170 _ C7. 00, 00000000
        mov     byte [rax+4H], 0                        ; 1176 _ C6. 40, 04, 00
        lea     rdi, [rax+4H]                           ; 117A _ 48: 8D. 78, 04
        pop     rbx                                     ; 117E _ 5B
        pop     r12                                     ; 117F _ 41: 5C
        pop     r14                                     ; 1181 _ 41: 5E
        pop     r15                                     ; 1183 _ 41: 5F
        pop     rbp                                     ; 1185 _ 5D
        jmp     _puts                                   ; 1186 _ E9, 00000000(rel)
; _computeSHA1 End of function

; Filling space: 5H
; Filler type: Multi-byte NOP
;       db 0FH, 1FH, 44H, 00H, 00H

ALIGN   8

_nextLetter:; Function begin
        push    rbp                                     ; 1190 _ 55
        mov     rbp, rsp                                ; 1191 _ 48: 89. E5
        cmp     rdi, 57                                 ; 1194 _ 48: 83. FF, 39
        jz      ?_089                                   ; 1198 _ 74, 1A
        mov     rax, -1                                 ; 119A _ 48: C7. C0, FFFFFFFF
        cmp     rdi, 122                                ; 11A1 _ 48: 83. FF, 7A
        jz      ?_091                                   ; 11A5 _ 74, 1A
        cmp     rdi, 90                                 ; 11A7 _ 48: 83. FF, 5A
        jnz     ?_090                                   ; 11AB _ 75, 0E
        mov     eax, 97                                 ; 11AD _ B8, 00000061
        pop     rbp                                     ; 11B2 _ 5D
        ret                                             ; 11B3 _ C3

?_089:  mov     eax, 65                                 ; 11B4 _ B8, 00000041
        pop     rbp                                     ; 11B9 _ 5D
        ret                                             ; 11BA _ C3

?_090:  inc     rdi                                     ; 11BB _ 48: FF. C7
        mov     rax, rdi                                ; 11BE _ 48: 89. F8
?_091:  pop     rbp                                     ; 11C1 _ 5D
        ret                                             ; 11C2 _ C3
; _nextLetter End of function

; Filling space: 0DH
; Filler type: Multi-byte NOP
;       db 66H, 66H, 66H, 66H, 2EH, 0FH, 1FH, 84H
;       db 00H, 00H, 00H, 00H, 00H

ALIGN   16

_nextText:; Function begin
        push    rbp                                     ; 11D0 _ 55
        mov     rbp, rsp                                ; 11D1 _ 48: 89. E5
        test    rsi, rsi                                ; 11D4 _ 48: 85. F6
        jle     ?_095                                   ; 11D7 _ 7E, 62
        lea     rcx, [rdi+rsi*8-8H]                     ; 11D9 _ 48: 8D. 4C F7, F8
        inc     rsi                                     ; 11DE _ 48: FF. C6
        mov     edx, 65                                 ; 11E1 _ BA, 00000041
        mov     eax, 1                                  ; 11E6 _ B8, 00000001
; Filling space: 5H
; Filler type: Multi-byte NOP
;       db 0FH, 1FH, 44H, 00H, 00H

ALIGN   8
?_092:  mov     rdi, qword [rcx]                        ; 11F0 _ 48: 8B. 39
        cmp     rdi, 122                                ; 11F3 _ 48: 83. FF, 7A
        jz      ?_093                                   ; 11F7 _ 74, 27
        cmp     rdi, 57                                 ; 11F9 _ 48: 83. FF, 39
        jz      ?_098                                   ; 11FD _ 74, 45
        cmp     rdi, 90                                 ; 11FF _ 48: 83. FF, 5A
        jz      ?_097                                   ; 1203 _ 74, 3A
        inc     rdi                                     ; 1205 _ 48: FF. C7
        mov     qword [rcx], rdi                        ; 1208 _ 48: 89. 39
        cmp     rdi, -1                                 ; 120B _ 48: 83. FF, FF
        jz      ?_094                                   ; 120F _ 74, 16
        jmp     ?_096                                   ; 1211 _ EB, 2A

; Filling space: 0DH
; Filler type: Multi-byte NOP
;       db 66H, 66H, 66H, 66H, 2EH, 0FH, 1FH, 84H
;       db 00H, 00H, 00H, 00H, 00H

ALIGN   16
?_093:  mov     qword [rcx], -1                         ; 1220 _ 48: C7. 01, FFFFFFFF
?_094:  mov     qword [rcx], 48                         ; 1227 _ 48: C7. 01, 00000030
        dec     rsi                                     ; 122E _ 48: FF. CE
        add     rcx, -8                                 ; 1231 _ 48: 83. C1, F8
        cmp     rsi, 1                                  ; 1235 _ 48: 83. FE, 01
        jg      ?_092                                   ; 1239 _ 7F, B5
?_095:  xor     eax, eax                                ; 123B _ 31. C0
?_096:  pop     rbp                                     ; 123D _ 5D
        ret                                             ; 123E _ C3

?_097:  mov     edx, 97                                 ; 123F _ BA, 00000061
?_098:  mov     qword [rcx], rdx                        ; 1244 _ 48: 89. 11
        mov     eax, 1                                  ; 1247 _ B8, 00000001
        pop     rbp                                     ; 124C _ 5D
        ret                                             ; 124D _ C3
; _nextText End of function

; Filling space: 2H
; Filler type: NOP with prefixes
;       db 66H, 90H

ALIGN   8

_array_equal:; Function begin
        push    rbp                                     ; 1250 _ 55
        mov     rbp, rsp                                ; 1251 _ 48: 89. E5
        mov     r8, qword [rdi-8H]                      ; 1254 _ 4C: 8B. 47, F8
        cmp     r8, qword [rsi-8H]                      ; 1258 _ 4C: 3B. 46, F8
        jnz     ?_100                                   ; 125C _ 75, 2C
        mov     eax, 1                                  ; 125E _ B8, 00000001
        test    r8, r8                                  ; 1263 _ 4D: 85. C0
        jle     ?_101                                   ; 1266 _ 7E, 24
        xor     edx, edx                                ; 1268 _ 31. D2
; Filling space: 6H
; Filler type: Multi-byte NOP
;       db 66H, 0FH, 1FH, 44H, 00H, 00H

ALIGN   8
?_099:  mov     rcx, qword [rdi]                        ; 1270 _ 48: 8B. 0F
        cmp     rcx, qword [rsi]                        ; 1273 _ 48: 3B. 0E
        jnz     ?_100                                   ; 1276 _ 75, 12
        inc     rdx                                     ; 1278 _ 48: FF. C2
        add     rsi, 8                                  ; 127B _ 48: 83. C6, 08
        add     rdi, 8                                  ; 127F _ 48: 83. C7, 08
        cmp     rdx, r8                                 ; 1283 _ 4C: 39. C2
        jl      ?_099                                   ; 1286 _ 7C, E8
        jmp     ?_101                                   ; 1288 _ EB, 02

?_100:  xor     eax, eax                                ; 128A _ 31. C0
?_101:  pop     rbp                                     ; 128C _ 5D
        ret                                             ; 128D _ C3
; _array_equal End of function

; Filling space: 2H
; Filler type: NOP with prefixes
;       db 66H, 90H

ALIGN   8

_crackSHA1:; Function begin
        push    rbp                                     ; 1290 _ 55
        mov     rbp, rsp                                ; 1291 _ 48: 89. E5
        push    r15                                     ; 1294 _ 41: 57
        push    r14                                     ; 1296 _ 41: 56
        push    r13                                     ; 1298 _ 41: 55
        push    r12                                     ; 129A _ 41: 54
        push    rbx                                     ; 129C _ 53
        sub     rsp, 24                                 ; 129D _ 48: 83. EC, 18
        mov     r14, rdi                                ; 12A1 _ 49: 89. FE
        mov     edi, 48                                 ; 12A4 _ BF, 00000030
        call    _malloc                                 ; 12A9 _ E8, 00000000(rel)
        mov     qword [rax], 5                          ; 12AE _ 48: C7. 00, 00000005
        cmp     dword [r14-4H], 40                      ; 12B5 _ 41: 83. 7E, FC, 28
        jne     ?_125                                   ; 12BA _ 0F 85, 00000353
        mov     r15, rax                                ; 12C0 _ 49: 89. C7
        add     r15, 8                                  ; 12C3 _ 49: 83. C7, 08
        mov     qword [rax+8H], 0                       ; 12C7 _ 48: C7. 40, 08, 00000000
        mov     qword [rax+10H], 0                      ; 12CF _ 48: C7. 40, 10, 00000000
        mov     qword [rax+18H], 0                      ; 12D7 _ 48: C7. 40, 18, 00000000
        mov     qword [rax+20H], 0                      ; 12DF _ 48: C7. 40, 20, 00000000
        mov     qword [rbp-40H], rax                    ; 12E7 _ 48: 89. 45, C0
        mov     qword [rax+28H], 0                      ; 12EB _ 48: C7. 40, 28, 00000000
        xor     r12d, r12d                              ; 12F3 _ 45: 31. E4
; Filling space: 0AH
; Filler type: Multi-byte NOP
;       db 66H, 2EH, 0FH, 1FH, 84H, 00H, 00H, 00H
;       db 00H, 00H

ALIGN   16
?_102:  mov     rbx, r12                                ; 1300 _ 4C: 89. E3
        or      rbx, 03H                                ; 1303 _ 48: 83. CB, 03
        mov     rax, rbx                                ; 1307 _ 48: 89. D8
        sub     rax, r12                                ; 130A _ 4C: 29. E0
        inc     rax                                     ; 130D _ 48: FF. C0
        movsxd  r13, eax                                ; 1310 _ 4C: 63. E8
        lea     rdi, [r13+5H]                           ; 1313 _ 49: 8D. 7D, 05
        call    _malloc                                 ; 1317 _ E8, 00000000(rel)
        mov     dword [rax], r13d                       ; 131C _ 44: 89. 28
        movsxd  rcx, r12d                               ; 131F _ 49: 63. CC
        cmp     rcx, rbx                                ; 1322 _ 48: 39. D9
        jle     ?_103                                   ; 1325 _ 7E, 09
        xor     ecx, ecx                                ; 1327 _ 31. C9
        jmp     ?_104                                   ; 1329 _ EB, 2E

; Filling space: 5H
; Filler type: Multi-byte NOP
;       db 0FH, 1FH, 44H, 00H, 00H

ALIGN   8
?_103:  mov     cl, byte [r14+r12]                      ; 1330 _ 43: 8A. 0C 26
        mov     byte [rax+4H], cl                       ; 1334 _ 88. 48, 04
        mov     rcx, r12                                ; 1337 _ 4C: 89. E1
        or      rcx, 01H                                ; 133A _ 48: 83. C9, 01
        mov     dl, byte [r14+rcx]                      ; 133E _ 41: 8A. 14 0E
        mov     byte [rax+5H], dl                       ; 1342 _ 88. 50, 05
        mov     cl, byte [r14+rcx+1H]                   ; 1345 _ 41: 8A. 4C 0E, 01
        mov     byte [rax+6H], cl                       ; 134A _ 88. 48, 06
        mov     cl, byte [r14+rbx]                      ; 134D _ 41: 8A. 0C 1E
        mov     byte [rax+7H], cl                       ; 1351 _ 88. 48, 07
        mov     ecx, 4                                  ; 1354 _ B9, 00000004
?_104:  mov     byte [rax+rcx+4H], 0                    ; 1359 _ C6. 44 08, 04, 00
        movsxd  rcx, dword [rax]                        ; 135E _ 48: 63. 08
        xor     edx, edx                                ; 1361 _ 31. D2
        test    rcx, rcx                                ; 1363 _ 48: 85. C9
        jle     ?_110                                   ; 1366 _ 7E, 78
        xor     esi, esi                                ; 1368 _ 31. F6
; Filling space: 6H
; Filler type: Multi-byte NOP
;       db 66H, 0FH, 1FH, 44H, 00H, 00H

ALIGN   8
?_105:  movsx   rdi, byte [rax+rsi+4H]                  ; 1370 _ 48: 0F BE. 7C 30, 04
        lea     rbx, [rdi-30H]                          ; 1376 _ 48: 8D. 5F, D0
        cmp     rbx, 9                                  ; 137A _ 48: 83. FB, 09
        ja      ?_106                                   ; 137E _ 77, 10
        shl     rdx, 4                                  ; 1380 _ 48: C1. E2, 04
        add     rdx, -48                                ; 1384 _ 48: 83. C2, D0
        jmp     ?_108                                   ; 1388 _ EB, 38

; Filling space: 6H
; Filler type: Multi-byte NOP
;       db 66H, 0FH, 1FH, 44H, 00H, 00H

ALIGN   8
?_106:  lea     rbx, [rdi-41H]                          ; 1390 _ 48: 8D. 5F, BF
        cmp     rbx, 5                                  ; 1394 _ 48: 83. FB, 05
        ja      ?_107                                   ; 1398 _ 77, 16
        shl     rdx, 4                                  ; 139A _ 48: C1. E2, 04
        add     rdx, -55                                ; 139E _ 48: 83. C2, C9
        jmp     ?_108                                   ; 13A2 _ EB, 1E

; Filling space: 0CH
; Filler type: Multi-byte NOP
;       db 66H, 66H, 66H, 2EH, 0FH, 1FH, 84H, 00H
;       db 00H, 00H, 00H, 00H

ALIGN   16
?_107:  lea     rbx, [rdi-61H]                          ; 13B0 _ 48: 8D. 5F, 9F
        cmp     rbx, 5                                  ; 13B4 _ 48: 83. FB, 05
        ja      ?_109                                   ; 13B8 _ 77, 15
        shl     rdx, 4                                  ; 13BA _ 48: C1. E2, 04
        add     rdx, -87                                ; 13BE _ 48: 83. C2, A9
?_108:  add     rdx, rdi                                ; 13C2 _ 48: 01. FA
        inc     rsi                                     ; 13C5 _ 48: FF. C6
        cmp     rsi, rcx                                ; 13C8 _ 48: 39. CE
        jl      ?_105                                   ; 13CB _ 7C, A3
        jmp     ?_110                                   ; 13CD _ EB, 11

?_109:  xor     edx, edx                                ; 13CF _ 31. D2
; Filling space: 0FH
; Filler type: Multi-byte NOP
;       db 66H, 66H, 66H, 66H, 66H, 66H, 2EH, 0FH
;       db 1FH, 84H, 00H, 00H, 00H, 00H, 00H

ALIGN   16
?_110:  mov     rax, r12                                ; 13E0 _ 4C: 89. E0
        sar     rax, 63                                 ; 13E3 _ 48: C1. F8, 3F
        mov     rsi, rax                                ; 13E7 _ 48: 89. C6
        shr     rsi, 61                                 ; 13EA _ 48: C1. EE, 3D
        add     rsi, r12                                ; 13EE _ 4C: 01. E6
        and     rsi, 0FFFFFFFFFFFFFFF8H                 ; 13F1 _ 48: 83. E6, F8
        shr     rax, 62                                 ; 13F5 _ 48: C1. E8, 3E
        add     rax, r12                                ; 13F9 _ 4C: 01. E0
        mov     rdi, rax                                ; 13FC _ 48: 89. C7
        shr     rdi, 2                                  ; 13FF _ 48: C1. EF, 02
        shr     rax, 63                                 ; 1403 _ 48: C1. E8, 3F
        add     eax, edi                                ; 1407 _ 01. F8
        and     eax, 0EH                                ; 1409 _ 83. E0, 0E
        sub     edi, eax                                ; 140C _ 29. C7
        mov     ecx, 1                                  ; 140E _ B9, 00000001
        sub     ecx, edi                                ; 1413 _ 29. F9
        shl     cl, 4                                   ; 1415 _ C0. E1, 04
        shl     rdx, cl                                 ; 1418 _ 48: D3. E2
        or      qword [rsi+r15], rdx                    ; 141B _ 4A: 09. 14 3E
        add     r12, 4                                  ; 141F _ 49: 83. C4, 04
        cmp     r12, 40                                 ; 1423 _ 49: 83. FC, 28
        jl      ?_102                                   ; 1427 _ 0F 8C, FFFFFED3
        mov     eax, 1                                  ; 142D _ B8, 00000001
        mov     qword [rbp-30H], rax                    ; 1432 _ 48: 89. 45, D0
        mov     ebx, 2                                  ; 1436 _ BB, 00000002
        xor     eax, eax                                ; 143B _ 31. C0
        mov     qword [rbp-38H], rax                    ; 143D _ 48: 89. 45, C8
        mov     r13, qword [rel _inputBuffer_]          ; 1441 _ 4C: 8B. 2D, 00000000(GOT r)
        xor     r14d, r14d                              ; 1448 _ 45: 31. F6
        mov     r12, qword [rbp-40H]                    ; 144B _ 4C: 8B. 65, C0
?_111:  lea     eax, [r14+1H]                           ; 144F _ 41: 8D. 46, 01
        test    al, 03H                                 ; 1453 _ A8, 03
        jz      ?_113                                   ; 1455 _ 74, 39
        mov     rcx, qword [rbp-30H]                    ; 1457 _ 48: 8B. 4D, D0
        and     ecx, 03H                                ; 145B _ 83. E1, 03
        xor     edx, edx                                ; 145E _ 31. D2
        xor     eax, eax                                ; 1460 _ 31. C0
; Filling space: 0EH
; Filler type: Multi-byte NOP
;       db 66H, 66H, 66H, 66H, 66H, 2EH, 0FH, 1FH
;       db 84H, 00H, 00H, 00H, 00H, 00H

ALIGN   16
?_112:  mov     rsi, qword [r13]                        ; 1470 _ 49: 8B. 75, 00
        mov     qword [rdx+rsi], 48                     ; 1474 _ 48: C7. 04 32, 00000030
        inc     rax                                     ; 147C _ 48: FF. C0
        add     rdx, 8                                  ; 147F _ 48: 83. C2, 08
        cmp     rcx, rax                                ; 1483 _ 48: 39. C1
        jnz     ?_112                                   ; 1486 _ 75, E8
        jmp     ?_114                                   ; 1488 _ EB, 08

; Filling space: 6H
; Filler type: Multi-byte NOP
;       db 66H, 0FH, 1FH, 44H, 00H, 00H

ALIGN   8
?_113:  xor     eax, eax                                ; 1490 _ 31. C0
?_114:  cmp     r14, 3                                  ; 1492 _ 49: 83. FE, 03
        jc      ?_117                                   ; 1496 _ 72, 68
        lea     rcx, [rax*8+18H]                        ; 1498 _ 48: 8D. 0C C5, 00000018
        mov     rdx, qword [rbp-30H]                    ; 14A0 _ 48: 8B. 55, D0
        sub     rdx, rax                                ; 14A4 _ 48: 29. C2
; Filling space: 9H
; Filler type: Multi-byte NOP
;       db 66H, 0FH, 1FH, 84H, 00H, 00H, 00H, 00H
;       db 00H

ALIGN   16
?_115:  mov     rax, qword [r13]                        ; 14B0 _ 49: 8B. 45, 00
        mov     qword [rcx+rax-18H], 48                 ; 14B4 _ 48: C7. 44 01, E8, 00000030
        mov     rax, qword [r13]                        ; 14BD _ 49: 8B. 45, 00
        mov     qword [rcx+rax-10H], 48                 ; 14C1 _ 48: C7. 44 01, F0, 00000030
        mov     rax, qword [r13]                        ; 14CA _ 49: 8B. 45, 00
        mov     qword [rcx+rax-8H], 48                  ; 14CE _ 48: C7. 44 01, F8, 00000030
        mov     rax, qword [r13]                        ; 14D7 _ 49: 8B. 45, 00
        mov     qword [rcx+rax], 48                     ; 14DB _ 48: C7. 04 01, 00000030
        add     rcx, 32                                 ; 14E3 _ 48: 83. C1, 20
        add     rdx, -4                                 ; 14E7 _ 48: 83. C2, FC
        jnz     ?_115                                   ; 14EB _ 75, C3
        jmp     ?_117                                   ; 14ED _ EB, 11

?_116:  mov     ecx, 97                                 ; 14EF _ B9, 00000061
        mov     qword [rax], rcx                        ; 14F4 _ 48: 89. 08
; Filling space: 9H
; Filler type: Multi-byte NOP
;       db 66H, 0FH, 1FH, 84H, 00H, 00H, 00H, 00H
;       db 00H

ALIGN   16
?_117:  mov     rdi, qword [r13]                        ; 1500 _ 49: 8B. 7D, 00
        mov     rsi, qword [rbp-30H]                    ; 1504 _ 48: 8B. 75, D0
        call    _sha1                                   ; 1508 _ E8, 00000000(rel)
        mov     rcx, qword [rax-8H]                     ; 150D _ 48: 8B. 48, F8
        cmp     rcx, qword [r12]                        ; 1511 _ 49: 3B. 0C 24
        jnz     ?_119                                   ; 1515 _ 75, 39
        test    rcx, rcx                                ; 1517 _ 48: 85. C9
        jle     ?_126                                   ; 151A _ 0F 8E, 00000124
        mov     rdx, r15                                ; 1520 _ 4C: 89. FA
        xor     esi, esi                                ; 1523 _ 31. F6
; Filling space: 0BH
; Filler type: Multi-byte NOP
;       db 66H, 66H, 2EH, 0FH, 1FH, 84H, 00H, 00H
;       db 00H, 00H, 00H

ALIGN   16
?_118:  mov     rdi, qword [rax]                        ; 1530 _ 48: 8B. 38
        cmp     rdi, qword [rdx]                        ; 1533 _ 48: 3B. 3A
        jnz     ?_119                                   ; 1536 _ 75, 18
        inc     rsi                                     ; 1538 _ 48: FF. C6
        add     rdx, 8                                  ; 153B _ 48: 83. C2, 08
        add     rax, 8                                  ; 153F _ 48: 83. C0, 08
        cmp     rsi, rcx                                ; 1543 _ 48: 39. CE
        jl      ?_118                                   ; 1546 _ 7C, E8
        jmp     ?_126                                   ; 1548 _ E9, 000000F7

; Filling space: 3H
; Filler type: Multi-byte NOP
;       db 0FH, 1FH, 00H

ALIGN   8
?_119:  mov     rax, qword [r13]                        ; 1550 _ 49: 8B. 45, 00
        add     rax, qword [rbp-38H]                    ; 1554 _ 48: 03. 45, C8
        mov     rcx, rbx                                ; 1558 _ 48: 89. D9
; Filling space: 5H
; Filler type: Multi-byte NOP
;       db 0FH, 1FH, 44H, 00H, 00H

ALIGN   8
?_120:  mov     rdx, qword [rax]                        ; 1560 _ 48: 8B. 10
        cmp     rdx, 122                                ; 1563 _ 48: 83. FA, 7A
        jz      ?_121                                   ; 1567 _ 74, 27
        cmp     rdx, 57                                 ; 1569 _ 48: 83. FA, 39
        jz      ?_123                                   ; 156D _ 74, 3E
        cmp     rdx, 90                                 ; 156F _ 48: 83. FA, 5A
        je      ?_116                                   ; 1573 _ 0F 84, FFFFFF76
        inc     rdx                                     ; 1579 _ 48: FF. C2
        mov     qword [rax], rdx                        ; 157C _ 48: 89. 10
        cmp     rdx, -1                                 ; 157F _ 48: 83. FA, FF
        jz      ?_122                                   ; 1583 _ 74, 12
        jmp     ?_117                                   ; 1585 _ E9, FFFFFF76

; Filling space: 6H
; Filler type: Multi-byte NOP
;       db 66H, 0FH, 1FH, 44H, 00H, 00H

ALIGN   8
?_121:  mov     qword [rax], -1                         ; 1590 _ 48: C7. 00, FFFFFFFF
?_122:  mov     qword [rax], 48                         ; 1597 _ 48: C7. 00, 00000030
        dec     rcx                                     ; 159E _ 48: FF. C9
        add     rax, -8                                 ; 15A1 _ 48: 83. C0, F8
        cmp     rcx, 1                                  ; 15A5 _ 48: 83. F9, 01
        jg      ?_120                                   ; 15A9 _ 7F, B5
        jmp     ?_124                                   ; 15AB _ EB, 13

?_123:  mov     ecx, 65                                 ; 15AD _ B9, 00000041
        mov     qword [rax], rcx                        ; 15B2 _ 48: 89. 08
        jmp     ?_117                                   ; 15B5 _ E9, FFFFFF46

; Filling space: 6H
; Filler type: Multi-byte NOP
;       db 66H, 0FH, 1FH, 44H, 00H, 00H

ALIGN   8
?_124:  mov     rax, qword [rbp-30H]                    ; 15C0 _ 48: 8B. 45, D0
        mov     rcx, rax                                ; 15C4 _ 48: 89. C1
        inc     rcx                                     ; 15C7 _ 48: FF. C1
        inc     r14                                     ; 15CA _ 49: FF. C6
        inc     rbx                                     ; 15CD _ 48: FF. C3
        add     qword [rbp-38H], 8                      ; 15D0 _ 48: 83. 45, C8, 08
        mov     rax, rcx                                ; 15D5 _ 48: 89. C8
        mov     qword [rbp-30H], rax                    ; 15D8 _ 48: 89. 45, D0
        cmp     rcx, 5                                  ; 15DC _ 48: 83. F9, 05
        jl      ?_111                                   ; 15E0 _ 0F 8C, FFFFFE69
        mov     edi, 15                                 ; 15E6 _ BF, 0000000F
        call    _malloc                                 ; 15EB _ E8, 00000000(rel)
        mov     dword [rax], 10                         ; 15F0 _ C7. 00, 0000000A
        mov     rcx, qword 6E756F4620746F4EH            ; 15F6 _ 48: B9, 6E756F4620746F4E
        mov     qword [rax+4H], rcx                     ; 1600 _ 48: 89. 48, 04
        mov     byte [rax+0EH], 0                       ; 1604 _ C6. 40, 0E, 00
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [rax+0CH], 8548                    ; 1608 _ 66: C7. 40, 0C, 2164
        jmp     ?_134                                   ; 160E _ E9, 00000122

?_125:  mov     edi, 18                                 ; 1613 _ BF, 00000012
        call    _malloc                                 ; 1618 _ E8, 00000000(rel)
        mov     dword [rax], 13                         ; 161D _ C7. 00, 0000000D
        mov     rcx, qword 7475706E692064H              ; 1623 _ 48: B9, 007475706E692064
        mov     qword [rax+0AH], rcx                    ; 162D _ 48: 89. 48, 0A
        mov     rcx, qword 2064696C61766E49H            ; 1631 _ 48: B9, 2064696C61766E49
        mov     qword [rax+4H], rcx                     ; 163B _ 48: 89. 48, 04
        jmp     ?_134                                   ; 163F _ E9, 000000F1

?_126:  cmp     qword [rbp-30H], 0                      ; 1644 _ 48: 83. 7D, D0, 00
        jle     ?_133                                   ; 1649 _ 0F 8E, 000000D2
        mov     rbx, qword 100000000H                   ; 164F _ 48: BB, 0000000100000000
        lea     r12, [rel _str_le+2E3H]                 ; 1659 _ 4C: 8D. 25, 000002E3(rel)
        xor     r15d, r15d                              ; 1660 _ 45: 31. FF
; Filling space: 0DH
; Filler type: Multi-byte NOP
;       db 66H, 66H, 66H, 66H, 2EH, 0FH, 1FH, 84H
;       db 00H, 00H, 00H, 00H, 00H

ALIGN   16
?_127:  mov     rax, qword [r13]                        ; 1670 _ 49: 8B. 45, 00
        mov     r14, qword [rax+r15*8]                  ; 1674 _ 4E: 8B. 34 F8
        add     r14, -32                                ; 1678 _ 49: 83. C6, E0
        cmp     r14, 94                                 ; 167C _ 49: 83. FE, 5E
        ja      ?_128                                   ; 1680 _ 77, 2E
        mov     rax, qword [rel _asciiTable_]           ; 1682 _ 48: 8B. 05, 00000000(GOT r)
        mov     r12, qword [rax]                        ; 1689 _ 4C: 8B. 20
        mov     edi, 6                                  ; 168C _ BF, 00000006
        call    _malloc                                 ; 1691 _ E8, 00000000(rel)
        mov     rcx, rax                                ; 1696 _ 48: 89. C1
        mov     dword [rcx], 1                          ; 1699 _ C7. 01, 00000001
        add     rcx, 4                                  ; 169F _ 48: 83. C1, 04
        movsxd  rdx, r14d                               ; 16A3 _ 49: 63. D6
        cmp     rdx, r14                                ; 16A6 _ 4C: 39. F2
        jle     ?_129                                   ; 16A9 _ 7E, 25
        xor     eax, eax                                ; 16AB _ 31. C0
        jmp     ?_131                                   ; 16AD _ EB, 4D

; Filling space: 1H
; Filler type: NOP
;       db 90H

ALIGN   8
?_128:  mov     edi, 5                                  ; 16B0 _ BF, 00000005
        call    _malloc                                 ; 16B5 _ E8, 00000000(rel)
        mov     rcx, rax                                ; 16BA _ 48: 89. C1
        mov     dword [rcx], 0                          ; 16BD _ C7. 01, 00000000
        mov     byte [rcx+4H], 0                        ; 16C3 _ C6. 41, 04, 00
        add     rcx, 4                                  ; 16C7 _ 48: 83. C1, 04
        jmp     ?_132                                   ; 16CB _ EB, 3A

; Filling space: 3H
; Filler type: Multi-byte NOP
;       db 0FH, 1FH, 00H

ALIGN   8
?_129:  lea     eax, [r14+1H]                           ; 16D0 _ 41: 8D. 46, 01
        movsxd  rsi, eax                                ; 16D4 _ 48: 63. F0
        dec     rsi                                     ; 16D7 _ 48: FF. CE
        xor     eax, eax                                ; 16DA _ 31. C0
        mov     rdi, rcx                                ; 16DC _ 48: 89. CF
        nop                                             ; 16DF _ 90
?_130:  movzx   edx, byte [r12+rdx]                     ; 16E0 _ 41: 0F B6. 14 14
        mov     byte [rdi], dl                          ; 16E5 _ 88. 17
        inc     rsi                                     ; 16E7 _ 48: FF. C6
        movsxd  rdx, esi                                ; 16EA _ 48: 63. D6
        inc     rdi                                     ; 16ED _ 48: FF. C7
        add     rax, rbx                                ; 16F0 _ 48: 01. D8
        cmp     rsi, r14                                ; 16F3 _ 4C: 39. F6
        jle     ?_130                                   ; 16F6 _ 7E, E8
        sar     rax, 32                                 ; 16F8 _ 48: C1. F8, 20
?_131:  mov     byte [rcx+rax], 0                       ; 16FC _ C6. 04 01, 00
        lea     r12, [rel _str_le+23CH]                 ; 1700 _ 4C: 8D. 25, 0000023C(rel)
?_132:  xor     eax, eax                                ; 1707 _ 31. C0
        mov     rdi, r12                                ; 1709 _ 4C: 89. E7
        mov     rsi, rcx                                ; 170C _ 48: 89. CE
        call    _printf                                 ; 170F _ E8, 00000000(rel)
        inc     r15                                     ; 1714 _ 49: FF. C7
        cmp     r15, qword [rbp-30H]                    ; 1717 _ 4C: 3B. 7D, D0
        jne     ?_127                                   ; 171B _ 0F 85, FFFFFF4F
?_133:  mov     edi, 5                                  ; 1721 _ BF, 00000005
        call    _malloc                                 ; 1726 _ E8, 00000000(rel)
        mov     dword [rax], 0                          ; 172B _ C7. 00, 00000000
        mov     byte [rax+4H], 0                        ; 1731 _ C6. 40, 04, 00
?_134:  lea     rdi, [rax+4H]                           ; 1735 _ 48: 8D. 78, 04
        add     rsp, 24                                 ; 1739 _ 48: 83. C4, 18
        pop     rbx                                     ; 173D _ 5B
        pop     r12                                     ; 173E _ 41: 5C
        pop     r13                                     ; 1740 _ 41: 5D
        pop     r14                                     ; 1742 _ 41: 5E
        pop     r15                                     ; 1744 _ 41: 5F
        pop     rbp                                     ; 1746 _ 5D
        jmp     _puts                                   ; 1747 _ E9, 00000000(rel)
; _crackSHA1 End of function

; Filling space: 4H
; Filler type: Multi-byte NOP
;       db 0FH, 1FH, 40H, 00H

ALIGN   8

_main:  ; Function begin
        push    rbp                                     ; 1750 _ 55
        mov     rbp, rsp                                ; 1751 _ 48: 89. E5
        push    r15                                     ; 1754 _ 41: 57
        push    r14                                     ; 1756 _ 41: 56
        push    r13                                     ; 1758 _ 41: 55
        push    r12                                     ; 175A _ 41: 54
        push    rbx                                     ; 175C _ 53
        push    rax                                     ; 175D _ 50
        mov     edi, 100                                ; 175E _ BF, 00000064
        call    _malloc                                 ; 1763 _ E8, 00000000(rel)
        mov     rbx, rax                                ; 1768 _ 48: 89. C3
        mov     dword [rbx], 95                         ; 176B _ C7. 03, 0000005F
        add     rbx, 4                                  ; 1771 _ 48: 83. C3, 04
        lea     rsi, [rel _str_le+1FFH]                 ; 1775 _ 48: 8D. 35, 000001FF(rel)
        mov     edx, 96                                 ; 177C _ BA, 00000060
        mov     rdi, rbx                                ; 1781 _ 48: 89. DF
        call    _memcpy                                 ; 1784 _ E8, 00000000(rel)
        mov     rax, qword [rel _asciiTable_]           ; 1789 _ 48: 8B. 05, 00000000(GOT r)
        mov     qword [rax], rbx                        ; 1790 _ 48: 89. 18
        mov     r14, qword [rel _MAXCHUNK_]             ; 1793 _ 4C: 8B. 35, 00000000(GOT r)
        mov     qword [r14], 100                        ; 179A _ 49: C7. 06, 00000064
        mov     edi, 808                                ; 17A1 _ BF, 00000328
        call    _malloc                                 ; 17A6 _ E8, 00000000(rel)
        mov     r12, rax                                ; 17AB _ 49: 89. C4
        mov     qword [r12], 100                        ; 17AE _ 49: C7. 04 24, 00000064
        mov     r15, r12                                ; 17B6 _ 4D: 89. E7
        add     r15, 8                                  ; 17B9 _ 49: 83. C7, 08
        mov     ebx, 8                                  ; 17BD _ BB, 00000008
; Filling space: 0EH
; Filler type: Multi-byte NOP
;       db 66H, 66H, 66H, 66H, 66H, 2EH, 0FH, 1FH
;       db 84H, 00H, 00H, 00H, 00H, 00H

ALIGN   16
?_135:  mov     edi, 648                                ; 17D0 _ BF, 00000288
        call    _malloc                                 ; 17D5 _ E8, 00000000(rel)
        mov     qword [r12+rbx], rax                    ; 17DA _ 49: 89. 04 1C
        mov     qword [rax], 80                         ; 17DE _ 48: C7. 00, 00000050
        add     qword [r12+rbx], 8                      ; 17E5 _ 49: 83. 04 1C, 08
        add     rbx, 8                                  ; 17EA _ 48: 83. C3, 08
        cmp     rbx, 808                                ; 17EE _ 48: 81. FB, 00000328
        jnz     ?_135                                   ; 17F5 _ 75, D9
        mov     r12, qword [rel _MAXLENGTH_]            ; 17F7 _ 4C: 8B. 25, 00000000(GOT r)
        mov     r13, qword [r12]                        ; 17FE _ 4D: 8B. 2C 24
        lea     rdi, [r13*8+8H]                         ; 1802 _ 4A: 8D. 3C ED, 00000008
        call    _malloc                                 ; 180A _ E8, 00000000(rel)
        mov     rbx, rax                                ; 180F _ 48: 89. C3
        mov     qword [rbx], r13                        ; 1812 _ 4C: 89. 2B
        add     rbx, 8                                  ; 1815 _ 48: 83. C3, 08
        mov     edi, 48                                 ; 1819 _ BF, 00000030
        call    _malloc                                 ; 181E _ E8, 00000000(rel)
        mov     qword [rax], 5                          ; 1823 _ 48: C7. 00, 00000005
        add     rax, 8                                  ; 182A _ 48: 83. C0, 08
        mov     rcx, qword [r14]                        ; 182E _ 49: 8B. 0E
        shl     rcx, 6                                  ; 1831 _ 48: C1. E1, 06
        add     rcx, -80                                ; 1835 _ 48: 83. C1, B0
        mov     qword [r12], rcx                        ; 1839 _ 49: 89. 0C 24
        mov     rcx, qword [rel _chunks_]               ; 183D _ 48: 8B. 0D, 00000000(GOT r)
        mov     qword [rcx], r15                        ; 1844 _ 4C: 89. 39
        mov     rcx, qword [rel _inputBuffer_]          ; 1847 _ 48: 8B. 0D, 00000000(GOT r)
        mov     qword [rcx], rbx                        ; 184E _ 48: 89. 19
        mov     rcx, qword [rel _outputBuffer_]         ; 1851 _ 48: 8B. 0D, 00000000(GOT r)
        mov     qword [rcx], rax                        ; 1858 _ 48: 89. 01
        lea     r14, [rel _str_le+0DEH]                 ; 185B _ 4C: 8D. 35, 000000DE(rel)
        lea     r12, [rbp-2CH]                          ; 1862 _ 4C: 8D. 65, D4
        lea     r15, [rel _str_le+0D6H]                 ; 1866 _ 4C: 8D. 3D, 000000D6(rel)
        jmp     ?_137                                   ; 186D _ EB, 33

; Filling space: 1H
; Filler type: NOP
;       db 90H

ALIGN   8
?_136:  mov     edi, 2004                               ; 1870 _ BF, 000007D4
        call    _malloc                                 ; 1875 _ E8, 00000000(rel)
        mov     r13, rax                                ; 187A _ 49: 89. C5
        lea     rbx, [r13+4H]                           ; 187D _ 49: 8D. 5D, 04
        xor     eax, eax                                ; 1881 _ 31. C0
        mov     rdi, r15                                ; 1883 _ 4C: 89. FF
        mov     rsi, rbx                                ; 1886 _ 48: 89. DE
        call    _scanf                                  ; 1889 _ E8, 00000000(rel)
        mov     rdi, rbx                                ; 188E _ 48: 89. DF
        call    _strlen                                 ; 1891 _ E8, 00000000(rel)
        mov     dword [r13], eax                        ; 1896 _ 41: 89. 45, 00
        mov     rdi, rbx                                ; 189A _ 48: 89. DF
        call    _crackSHA1                              ; 189D _ E8, 00000000(rel)
?_137:  mov     dword [rbp-2CH], 0                      ; 18A2 _ C7. 45, D4, 00000000
        xor     eax, eax                                ; 18A9 _ 31. C0
        mov     rdi, r14                                ; 18AB _ 4C: 89. F7
        mov     rsi, r12                                ; 18AE _ 4C: 89. E6
        call    _scanf                                  ; 18B1 _ E8, 00000000(rel)
        movsxd  rax, dword [rbp-2CH]                    ; 18B6 _ 48: 63. 45, D4
        cmp     rax, 1                                  ; 18BA _ 48: 83. F8, 01
        jz      ?_138                                   ; 18BE _ 74, 10
        cmp     rax, 2                                  ; 18C0 _ 48: 83. F8, 02
        jz      ?_136                                   ; 18C4 _ 74, AA
        test    rax, rax                                ; 18C6 _ 48: 85. C0
        jnz     ?_137                                   ; 18C9 _ 75, D7
        jmp     ?_139                                   ; 18CB _ EB, 37

; Filling space: 3H
; Filler type: Multi-byte NOP
;       db 0FH, 1FH, 00H

ALIGN   8
?_138:  mov     edi, 2004                               ; 18D0 _ BF, 000007D4
        call    _malloc                                 ; 18D5 _ E8, 00000000(rel)
        mov     r13, rax                                ; 18DA _ 49: 89. C5
        lea     rbx, [r13+4H]                           ; 18DD _ 49: 8D. 5D, 04
        xor     eax, eax                                ; 18E1 _ 31. C0
        mov     rdi, r15                                ; 18E3 _ 4C: 89. FF
        mov     rsi, rbx                                ; 18E6 _ 48: 89. DE
        call    _scanf                                  ; 18E9 _ E8, 00000000(rel)
        mov     rdi, rbx                                ; 18EE _ 48: 89. DF
        call    _strlen                                 ; 18F1 _ E8, 00000000(rel)
        mov     dword [r13], eax                        ; 18F6 _ 41: 89. 45, 00
        mov     rdi, rbx                                ; 18FA _ 48: 89. DF
        call    _computeSHA1                            ; 18FD _ E8, 00000000(rel)
        jmp     ?_137                                   ; 1902 _ EB, 9E
; _main End of function

?_139:  ; Local function
        xor     eax, eax                                ; 1904 _ 31. C0
        add     rsp, 8                                  ; 1906 _ 48: 83. C4, 08
        pop     rbx                                     ; 190A _ 5B
        pop     r12                                     ; 190B _ 41: 5C
        pop     r13                                     ; 190D _ 41: 5D
        pop     r14                                     ; 190F _ 41: 5E
        pop     r15                                     ; 1911 _ 41: 5F
        pop     rbp                                     ; 1913 _ 5D
        ret                                             ; 1914 _ C3


SECTION ._TEXT.__literal16 align=16 noexecute           ; section number 2, data

        db 76H, 54H, 32H, 10H, 00H, 00H, 00H, 00H       ; 1920 _ vT2.....
        db 0FEH, 0DCH, 0BAH, 98H, 00H, 00H, 00H, 00H    ; 1928 _ ........
        db 89H, 0ABH, 0CDH, 0EFH, 00H, 00H, 00H, 00H    ; 1930 _ ........
        db 0F0H, 0E1H, 0D2H, 0C3H, 00H, 00H, 00H, 00H   ; 1938 _ ........


SECTION ._TEXT.__cstring align=1 noexecute              ; section number 3, data

        db 25H, 64H, 00H, 25H, 73H, 00H, 25H, 6CH       ; 1940 _ %d.%s.%l
        db 64H, 0AH, 00H, 25H, 6CH, 64H, 00H, 6EH       ; 1948 _ d..%ld.n
        db 43H, 68H, 75H, 6EH, 6BH, 20H, 3EH, 20H       ; 1950 _ Chunk > 
        db 4DH, 41H, 58H, 43H, 48H, 55H, 4EH, 4BH       ; 1958 _ MAXCHUNK
        db 21H, 00H, 49H, 6EH, 76H, 61H, 6CH, 69H       ; 1960 _ !.Invali
        db 64H, 20H, 69H, 6EH, 70H, 75H, 74H, 00H       ; 1968 _ d input.
        db 4EH, 6FH, 74H, 20H, 46H, 6FH, 75H, 6EH       ; 1970 _ Not Foun
        db 64H, 21H, 00H, 20H, 21H, 22H, 23H, 24H       ; 1978 _ d!. !"#$
        db 25H, 26H, 27H, 28H, 29H, 2AH, 2BH, 2CH       ; 1980 _ %&'()*+,
        db 2DH, 2EH, 2FH, 30H, 31H, 32H, 33H, 34H       ; 1988 _ -./01234
        db 35H, 36H, 37H, 38H, 39H, 3AH, 3BH, 3CH       ; 1990 _ 56789:;<
        db 3DH, 3EH, 3FH, 40H, 41H, 42H, 43H, 44H       ; 1998 _ =>?@ABCD
        db 45H, 46H, 47H, 48H, 49H, 4AH, 4BH, 4CH       ; 19A0 _ EFGHIJKL
        db 4DH, 4EH, 4FH, 50H, 51H, 52H, 53H, 54H       ; 19A8 _ MNOPQRST
        db 55H, 56H, 57H, 58H, 59H, 5AH, 5BH, 5CH       ; 19B0 _ UVWXYZ[\
        db 5DH, 5EH, 5FH, 60H, 61H, 62H, 63H, 64H       ; 19B8 _ ]^_`abcd
        db 65H, 66H, 67H, 68H, 69H, 6AH, 6BH, 6CH       ; 19C0 _ efghijkl
        db 6DH, 6EH, 6FH, 70H, 71H, 72H, 73H, 74H       ; 19C8 _ mnopqrst
        db 75H, 76H, 77H, 78H, 79H, 7AH, 7BH, 7CH       ; 19D0 _ uvwxyz{|
        db 7DH, 7EH, 00H                                ; 19D8 _ }~.


