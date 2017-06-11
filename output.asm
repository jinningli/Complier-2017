; Disassembly of file: output.o
; Sun Jun 11 14:52:13 2017
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
extern _memcpy                                          ; near
extern _malloc                                          ; near
extern _getchar                                         ; near


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
        lea     rdi, [rel _str_le+51BH]                 ; 014F _ 48: 8D. 3D, 0000051B(rel)
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
        push    r15                                     ; 0174 _ 41: 57
        push    r14                                     ; 0176 _ 41: 56
        push    rbx                                     ; 0178 _ 53
        push    rax                                     ; 0179 _ 50
        mov     edi, 2004                               ; 017A _ BF, 000007D4
        call    _malloc                                 ; 017F _ E8, 00000000(rel)
        mov     r15, rax                                ; 0184 _ 49: 89. C7
        lea     r14, [r15+4H]                           ; 0187 _ 4D: 8D. 77, 04
        call    _getchar                                ; 018B _ E8, 00000000(rel)
        mov     byte [r15+4H], al                       ; 0190 _ 41: 88. 47, 04
        cmp     al, 10                                  ; 0194 _ 3C, 0A
        jnz     ?_009                                   ; 0196 _ 75, 08
        call    _getchar                                ; 0198 _ E8, 00000000(rel)
        mov     byte [r14], al                          ; 019D _ 41: 88. 06
?_009:  xor     ebx, ebx                                ; 01A0 _ 31. DB
        cmp     al, 10                                  ; 01A2 _ 3C, 0A
        mov     rax, r14                                ; 01A4 _ 4C: 89. F0
        jz      ?_011                                   ; 01A7 _ 74, 1D
        xor     ebx, ebx                                ; 01A9 _ 31. DB
; Filling space: 5H
; Filler type: Multi-byte NOP
;       db 0FH, 1FH, 44H, 00H, 00H

ALIGN   8
?_010:  call    _getchar                                ; 01B0 _ E8, 00000000(rel)
        mov     byte [r15+rbx+5H], al                   ; 01B5 _ 41: 88. 44 1F, 05
        inc     rbx                                     ; 01BA _ 48: FF. C3
        cmp     al, 10                                  ; 01BD _ 3C, 0A
        jnz     ?_010                                   ; 01BF _ 75, EF
        lea     rax, [r15+rbx+4H]                       ; 01C1 _ 49: 8D. 44 1F, 04
?_011:  mov     byte [rax], 0                           ; 01C6 _ C6. 00, 00
        mov     dword [r15], ebx                        ; 01C9 _ 41: 89. 1F
        mov     rax, r14                                ; 01CC _ 4C: 89. F0
        add     rsp, 8                                  ; 01CF _ 48: 83. C4, 08
        pop     rbx                                     ; 01D3 _ 5B
        pop     r14                                     ; 01D4 _ 41: 5E
        pop     r15                                     ; 01D6 _ 41: 5F
        pop     rbp                                     ; 01D8 _ 5D
        ret                                             ; 01D9 _ C3
; _getString End of function

; Filling space: 6H
; Filler type: Multi-byte NOP
;       db 66H, 0FH, 1FH, 44H, 00H, 00H

ALIGN   8

_size:  ; Function begin
        push    rbp                                     ; 01E0 _ 55
        mov     rbp, rsp                                ; 01E1 _ 48: 89. E5
        mov     rax, qword [rdi-8H]                     ; 01E4 _ 48: 8B. 47, F8
        pop     rbp                                     ; 01E8 _ 5D
        ret                                             ; 01E9 _ C3
; _size End of function

; Filling space: 6H
; Filler type: Multi-byte NOP
;       db 66H, 0FH, 1FH, 44H, 00H, 00H

ALIGN   8

_toMoStr:; Function begin
        push    rbp                                     ; 01F0 _ 55
        mov     rbp, rsp                                ; 01F1 _ 48: 89. E5
        push    r15                                     ; 01F4 _ 41: 57
        push    r14                                     ; 01F6 _ 41: 56
        push    rbx                                     ; 01F8 _ 53
        push    rax                                     ; 01F9 _ 50
        mov     r14, rdi                                ; 01FA _ 49: 89. FE
        call    _strlen                                 ; 01FD _ E8, 00000000(rel)
        movsxd  r15, eax                                ; 0202 _ 4C: 63. F8
        lea     rdi, [r15+5H]                           ; 0205 _ 49: 8D. 7F, 05
        call    _malloc                                 ; 0209 _ E8, 00000000(rel)
        mov     rbx, rax                                ; 020E _ 48: 89. C3
        mov     dword [rbx], r15d                       ; 0211 _ 44: 89. 3B
        add     rbx, 4                                  ; 0214 _ 48: 83. C3, 04
        mov     rdi, rbx                                ; 0218 _ 48: 89. DF
        mov     rsi, r14                                ; 021B _ 4C: 89. F6
        call    _strcpy                                 ; 021E _ E8, 00000000(rel)
        mov     rax, rbx                                ; 0223 _ 48: 89. D8
        add     rsp, 8                                  ; 0226 _ 48: 83. C4, 08
        pop     rbx                                     ; 022A _ 5B
        pop     r14                                     ; 022B _ 41: 5E
        pop     r15                                     ; 022D _ 41: 5F
        pop     rbp                                     ; 022F _ 5D
        ret                                             ; 0230 _ C3
; _toMoStr End of function

; Filling space: 0FH
; Filler type: Multi-byte NOP
;       db 66H, 66H, 66H, 66H, 66H, 66H, 2EH, 0FH
;       db 1FH, 84H, 00H, 00H, 00H, 00H, 00H

ALIGN   16

_str_add:; Function begin
        push    rbp                                     ; 0240 _ 55
        mov     rbp, rsp                                ; 0241 _ 48: 89. E5
        push    r15                                     ; 0244 _ 41: 57
        push    r14                                     ; 0246 _ 41: 56
        push    r13                                     ; 0248 _ 41: 55
        push    r12                                     ; 024A _ 41: 54
        push    rbx                                     ; 024C _ 53
        push    rax                                     ; 024D _ 50
        mov     r14, rsi                                ; 024E _ 49: 89. F6
        mov     r15, rdi                                ; 0251 _ 49: 89. FF
        movsxd  r13, dword [r15-4H]                     ; 0254 _ 4D: 63. 6F, FC
        mov     r12d, dword [r14-4H]                    ; 0258 _ 45: 8B. 66, FC
        lea     eax, [r12+r13]                          ; 025C _ 43: 8D. 04 2C
        movsxd  rbx, eax                                ; 0260 _ 48: 63. D8
        lea     rdi, [rbx+5H]                           ; 0263 _ 48: 8D. 7B, 05
        call    _malloc                                 ; 0267 _ E8, 00000000(rel)
        mov     r10, rbx                                ; 026C _ 49: 89. DA
        mov     r8, rax                                 ; 026F _ 49: 89. C0
        lea     rax, [r8+4H]                            ; 0272 _ 49: 8D. 40, 04
        test    r13, r13                                ; 0276 _ 4D: 85. ED
        mov     dword [r8], r10d                        ; 0279 _ 45: 89. 10
        jle     ?_017                                   ; 027C _ 0F 8E, 000000C2
        mov     ecx, r13d                               ; 0282 _ 44: 89. E9
        cmp     r13d, 31                                ; 0285 _ 41: 83. FD, 1F
        jbe     ?_012                                   ; 0289 _ 76, 2A
        mov     r9d, ecx                                ; 028B _ 41: 89. C9
        and     r9d, 1FH                                ; 028E _ 41: 83. E1, 1F
        mov     rsi, rcx                                ; 0292 _ 48: 89. CE
        sub     rsi, r9                                 ; 0295 _ 4C: 29. CE
        jz      ?_012                                   ; 0298 _ 74, 1B
        lea     rdx, [r15+rcx]                          ; 029A _ 49: 8D. 14 0F
        cmp     rax, rdx                                ; 029E _ 48: 39. D0
        jnc     ?_024                                   ; 02A1 _ 0F 83, 00000175
        lea     rdx, [r8+rcx+4H]                        ; 02A7 _ 49: 8D. 54 08, 04
        cmp     r15, rdx                                ; 02AC _ 49: 39. D7
        jnc     ?_024                                   ; 02AF _ 0F 83, 00000167
?_012:  xor     esi, esi                                ; 02B5 _ 31. F6
?_013:  mov     edx, ecx                                ; 02B7 _ 89. CA
        sub     edx, esi                                ; 02B9 _ 29. F2
        lea     rdi, [rcx-1H]                           ; 02BB _ 48: 8D. 79, FF
        sub     rdi, rsi                                ; 02BF _ 48: 29. F7
        and     rdx, 07H                                ; 02C2 _ 48: 83. E2, 07
        jz      ?_015                                   ; 02C6 _ 74, 18
        neg     rdx                                     ; 02C8 _ 48: F7. DA
; Filling space: 5H
; Filler type: Multi-byte NOP
;       db 0FH, 1FH, 44H, 00H, 00H

ALIGN   8
?_014:  movzx   ebx, byte [r15+rsi]                     ; 02D0 _ 41: 0F B6. 1C 37
        mov     byte [rax+rsi], bl                      ; 02D5 _ 88. 1C 30
        inc     rsi                                     ; 02D8 _ 48: FF. C6
        inc     rdx                                     ; 02DB _ 48: FF. C2
        jnz     ?_014                                   ; 02DE _ 75, F0
?_015:  cmp     rdi, 7                                  ; 02E0 _ 48: 83. FF, 07
        jc      ?_017                                   ; 02E4 _ 72, 5E
        sub     rcx, rsi                                ; 02E6 _ 48: 29. F1
        lea     rdi, [r8+rsi+0BH]                       ; 02E9 _ 49: 8D. 7C 30, 0B
        lea     rsi, [r15+rsi+7H]                       ; 02EE _ 49: 8D. 74 37, 07
; Filling space: 0DH
; Filler type: Multi-byte NOP
;       db 66H, 66H, 66H, 66H, 2EH, 0FH, 1FH, 84H
;       db 00H, 00H, 00H, 00H, 00H

ALIGN   16
?_016:  movzx   edx, byte [rsi-7H]                      ; 0300 _ 0F B6. 56, F9
        mov     byte [rdi-7H], dl                       ; 0304 _ 88. 57, F9
        movzx   edx, byte [rsi-6H]                      ; 0307 _ 0F B6. 56, FA
        mov     byte [rdi-6H], dl                       ; 030B _ 88. 57, FA
        movzx   edx, byte [rsi-5H]                      ; 030E _ 0F B6. 56, FB
        mov     byte [rdi-5H], dl                       ; 0312 _ 88. 57, FB
        movzx   edx, byte [rsi-4H]                      ; 0315 _ 0F B6. 56, FC
        mov     byte [rdi-4H], dl                       ; 0319 _ 88. 57, FC
        movzx   edx, byte [rsi-3H]                      ; 031C _ 0F B6. 56, FD
        mov     byte [rdi-3H], dl                       ; 0320 _ 88. 57, FD
        movzx   edx, byte [rsi-2H]                      ; 0323 _ 0F B6. 56, FE
        mov     byte [rdi-2H], dl                       ; 0327 _ 88. 57, FE
        movzx   edx, byte [rsi-1H]                      ; 032A _ 0F B6. 56, FF
        mov     byte [rdi-1H], dl                       ; 032E _ 88. 57, FF
        movzx   edx, byte [rsi]                         ; 0331 _ 0F B6. 16
        mov     byte [rdi], dl                          ; 0334 _ 88. 17
        add     rdi, 8                                  ; 0336 _ 48: 83. C7, 08
        add     rsi, 8                                  ; 033A _ 48: 83. C6, 08
        add     rcx, -8                                 ; 033E _ 48: 83. C1, F8
        jnz     ?_016                                   ; 0342 _ 75, BC
?_017:  test    r12d, r12d                              ; 0344 _ 45: 85. E4
        jle     ?_023                                   ; 0347 _ 0F 8E, 000000BB
        cmp     r12d, 31                                ; 034D _ 41: 83. FC, 1F
        jbe     ?_018                                   ; 0351 _ 76, 33
        mov     esi, r12d                               ; 0353 _ 44: 89. E6
        and     esi, 1FH                                ; 0356 _ 83. E6, 1F
        mov     rdx, r12                                ; 0359 _ 4C: 89. E2
        sub     rdx, rsi                                ; 035C _ 48: 29. F2
        jz      ?_018                                   ; 035F _ 74, 25
        lea     rcx, [r8+r13+4H]                        ; 0361 _ 4B: 8D. 4C 28, 04
        lea     rdi, [r14+r12]                          ; 0366 _ 4B: 8D. 3C 26
        cmp     rcx, rdi                                ; 036A _ 48: 39. F9
        jnc     ?_026                                   ; 036D _ 0F 83, 000000E7
        lea     rcx, [r13+r12]                          ; 0373 _ 4B: 8D. 4C 25, 00
        lea     rcx, [r8+rcx+4H]                        ; 0378 _ 49: 8D. 4C 08, 04
        cmp     r14, rcx                                ; 037D _ 49: 39. CE
        jnc     ?_026                                   ; 0380 _ 0F 83, 000000D4
?_018:  xor     edx, edx                                ; 0386 _ 31. D2
?_019:  mov     edi, r12d                               ; 0388 _ 44: 89. E7
        sub     edi, edx                                ; 038B _ 29. D7
        lea     rsi, [r12-1H]                           ; 038D _ 49: 8D. 74 24, FF
        sub     rsi, rdx                                ; 0392 _ 48: 29. D6
        and     rdi, 03H                                ; 0395 _ 48: 83. E7, 03
        jz      ?_021                                   ; 0399 _ 74, 25
        lea     rcx, [r8+r13+4H]                        ; 039B _ 4B: 8D. 4C 28, 04
        neg     rdi                                     ; 03A0 _ 48: F7. DF
; Filling space: 0DH
; Filler type: Multi-byte NOP
;       db 66H, 66H, 66H, 66H, 2EH, 0FH, 1FH, 84H
;       db 00H, 00H, 00H, 00H, 00H

ALIGN   16
?_020:  movzx   ebx, byte [r14+rdx]                     ; 03B0 _ 41: 0F B6. 1C 16
        mov     byte [rcx+rdx], bl                      ; 03B5 _ 88. 1C 11
        inc     rdx                                     ; 03B8 _ 48: FF. C2
        inc     rdi                                     ; 03BB _ 48: FF. C7
        jnz     ?_020                                   ; 03BE _ 75, F0
?_021:  cmp     rsi, 3                                  ; 03C0 _ 48: 83. FE, 03
        jc      ?_023                                   ; 03C4 _ 72, 42
        sub     r12, rdx                                ; 03C6 _ 49: 29. D4
        add     r13, rdx                                ; 03C9 _ 49: 01. D5
        lea     rcx, [r8+r13+7H]                        ; 03CC _ 4B: 8D. 4C 28, 07
        lea     rdx, [r14+rdx+3H]                       ; 03D1 _ 49: 8D. 54 16, 03
; Filling space: 0AH
; Filler type: Multi-byte NOP
;       db 66H, 2EH, 0FH, 1FH, 84H, 00H, 00H, 00H
;       db 00H, 00H

ALIGN   16
?_022:  movzx   ebx, byte [rdx-3H]                      ; 03E0 _ 0F B6. 5A, FD
        mov     byte [rcx-3H], bl                       ; 03E4 _ 88. 59, FD
        movzx   ebx, byte [rdx-2H]                      ; 03E7 _ 0F B6. 5A, FE
        mov     byte [rcx-2H], bl                       ; 03EB _ 88. 59, FE
        movzx   ebx, byte [rdx-1H]                      ; 03EE _ 0F B6. 5A, FF
        mov     byte [rcx-1H], bl                       ; 03F2 _ 88. 59, FF
        movzx   ebx, byte [rdx]                         ; 03F5 _ 0F B6. 1A
        mov     byte [rcx], bl                          ; 03F8 _ 88. 19
        add     rcx, 4                                  ; 03FA _ 48: 83. C1, 04
        add     rdx, 4                                  ; 03FE _ 48: 83. C2, 04
        add     r12, -4                                 ; 0402 _ 49: 83. C4, FC
        jnz     ?_022                                   ; 0406 _ 75, D8
?_023:  mov     byte [rax+r10], 0                       ; 0408 _ 42: C6. 04 10, 00
        add     rsp, 8                                  ; 040D _ 48: 83. C4, 08
        pop     rbx                                     ; 0411 _ 5B
        pop     r12                                     ; 0412 _ 41: 5C
        pop     r13                                     ; 0414 _ 41: 5D
        pop     r14                                     ; 0416 _ 41: 5E
        pop     r15                                     ; 0418 _ 41: 5F
        pop     rbp                                     ; 041A _ 5D
        ret                                             ; 041B _ C3

?_024:  lea     rdx, [r15+10H]                          ; 041C _ 49: 8D. 57, 10
        lea     rdi, [r8+14H]                           ; 0420 _ 49: 8D. 78, 14
        mov     rbx, rsi                                ; 0424 _ 48: 89. F3
; Filling space: 9H
; Filler type: Multi-byte NOP
;       db 66H, 0FH, 1FH, 84H, 00H, 00H, 00H, 00H
;       db 00H

ALIGN   16
?_025:  movups  xmm0, oword [rdx-10H]                   ; 0430 _ 0F 10. 42, F0
        movups  xmm1, oword [rdx]                       ; 0434 _ 0F 10. 0A
        movups  oword [rdi-10H], xmm0                   ; 0437 _ 0F 11. 47, F0
        movups  oword [rdi], xmm1                       ; 043B _ 0F 11. 0F
        add     rdx, 32                                 ; 043E _ 48: 83. C2, 20
        add     rdi, 32                                 ; 0442 _ 48: 83. C7, 20
        add     rbx, -32                                ; 0446 _ 48: 83. C3, E0
        jnz     ?_025                                   ; 044A _ 75, E4
        test    r9d, r9d                                ; 044C _ 45: 85. C9
        jne     ?_013                                   ; 044F _ 0F 85, FFFFFE62
        jmp     ?_017                                   ; 0455 _ E9, FFFFFEEA
; _str_add End of function

?_026:  ; Local function
        lea     rcx, [r8+r13+14H]                       ; 045A _ 4B: 8D. 4C 28, 14
        lea     rdi, [r14+10H]                          ; 045F _ 49: 8D. 7E, 10
        mov     rbx, rdx                                ; 0463 _ 48: 89. D3
; Filling space: 0AH
; Filler type: Multi-byte NOP
;       db 66H, 2EH, 0FH, 1FH, 84H, 00H, 00H, 00H
;       db 00H, 00H

ALIGN   16
?_027:  movups  xmm0, oword [rdi-10H]                   ; 0470 _ 0F 10. 47, F0
        movups  xmm1, oword [rdi]                       ; 0474 _ 0F 10. 0F
        movups  oword [rcx-10H], xmm0                   ; 0477 _ 0F 11. 41, F0
        movups  oword [rcx], xmm1                       ; 047B _ 0F 11. 09
        add     rcx, 32                                 ; 047E _ 48: 83. C1, 20
        add     rdi, 32                                 ; 0482 _ 48: 83. C7, 20
        add     rbx, -32                                ; 0486 _ 48: 83. C3, E0
        jnz     ?_027                                   ; 048A _ 75, E4
        test    esi, esi                                ; 048C _ 85. F6
        jne     ?_019                                   ; 048E _ 0F 85, FFFFFEF4
        jmp     ?_023                                   ; 0494 _ E9, FFFFFF6F

; Filling space: 7H
; Filler type: Multi-byte NOP
;       db 0FH, 1FH, 80H, 00H, 00H, 00H, 00H

ALIGN   8

_println:; Function begin
        push    rbp                                     ; 04A0 _ 55
        mov     rbp, rsp                                ; 04A1 _ 48: 89. E5
        pop     rbp                                     ; 04A4 _ 5D
        jmp     _puts                                   ; 04A5 _ E9, 00000000(rel)
; _println End of function

; Filling space: 6H
; Filler type: Multi-byte NOP
;       db 66H, 0FH, 1FH, 44H, 00H, 00H

ALIGN   8

_print: ; Function begin
        push    rbp                                     ; 04B0 _ 55
        mov     rbp, rsp                                ; 04B1 _ 48: 89. E5
        mov     rcx, rdi                                ; 04B4 _ 48: 89. F9
        lea     rdi, [rel _str_le+1B6H]                 ; 04B7 _ 48: 8D. 3D, 000001B6(rel)
        xor     eax, eax                                ; 04BE _ 31. C0
        mov     rsi, rcx                                ; 04C0 _ 48: 89. CE
        pop     rbp                                     ; 04C3 _ 5D
        jmp     _printf                                 ; 04C4 _ E9, 00000000(rel)
; _print End of function

; Filling space: 7H
; Filler type: Multi-byte NOP
;       db 0FH, 1FH, 80H, 00H, 00H, 00H, 00H

ALIGN   8

_toString:; Function begin
        push    rbp                                     ; 04D0 _ 55
        mov     rbp, rsp                                ; 04D1 _ 48: 89. E5
        push    rbx                                     ; 04D4 _ 53
        push    rax                                     ; 04D5 _ 50
        mov     rbx, rdi                                ; 04D6 _ 48: 89. FB
        mov     edi, 16                                 ; 04D9 _ BF, 00000010
        call    _malloc                                 ; 04DE _ E8, 00000000(rel)
        mov     r9, rax                                 ; 04E3 _ 49: 89. C1
        lea     r8, [r9+4H]                             ; 04E6 _ 4D: 8D. 41, 04
        test    rbx, rbx                                ; 04EA _ 48: 85. DB
        js      ?_028                                   ; 04ED _ 78, 05
        mov     rcx, r8                                 ; 04EF _ 4C: 89. C1
        jmp     ?_029                                   ; 04F2 _ EB, 0F

?_028:  mov     rcx, r9                                 ; 04F4 _ 4C: 89. C9
        add     rcx, 5                                  ; 04F7 _ 48: 83. C1, 05
        mov     byte [r9+4H], 45                        ; 04FB _ 41: C6. 41, 04, 2D
        neg     rbx                                     ; 0500 _ 48: F7. DB
?_029:  test    rbx, rbx                                ; 0503 _ 48: 85. DB
        jz      ?_031                                   ; 0506 _ 74, 4E
        mov     rsi, qword 6666666666666667H            ; 0508 _ 48: BE, 6666666666666667
        mov     rdi, rcx                                ; 0512 _ 48: 89. CF
; Filling space: 0BH
; Filler type: Multi-byte NOP
;       db 66H, 66H, 2EH, 0FH, 1FH, 84H, 00H, 00H
;       db 00H, 00H, 00H

ALIGN   16
?_030:  mov     rax, rbx                                ; 0520 _ 48: 89. D8
        imul    rsi                                     ; 0523 _ 48: F7. EE
        mov     rax, rdx                                ; 0526 _ 48: 89. D0
        shr     rax, 63                                 ; 0529 _ 48: C1. E8, 3F
        sar     rdx, 2                                  ; 052D _ 48: C1. FA, 02
        add     rdx, rax                                ; 0531 _ 48: 01. C2
        add     ebx, 48                                 ; 0534 _ 83. C3, 30
        mov     rax, rdx                                ; 0537 _ 48: 89. D0
        shl     rax, 33                                 ; 053A _ 48: C1. E0, 21
        lea     rax, [rax+rax*4]                        ; 053E _ 48: 8D. 04 80
        shr     rax, 32                                 ; 0542 _ 48: C1. E8, 20
        sub     ebx, eax                                ; 0546 _ 29. C3
        mov     byte [rdi], bl                          ; 0548 _ 88. 1F
        inc     rdi                                     ; 054A _ 48: FF. C7
        movsxd  rbx, edx                                ; 054D _ 48: 63. DA
        test    edx, edx                                ; 0550 _ 85. D2
        jnz     ?_030                                   ; 0552 _ 75, CC
        jmp     ?_032                                   ; 0554 _ EB, 09

?_031:  mov     byte [rcx], 48                          ; 0556 _ C6. 01, 30
        inc     rcx                                     ; 0559 _ 48: FF. C1
        mov     rdi, rcx                                ; 055C _ 48: 89. CF
?_032:  mov     byte [rdi], 0                           ; 055F _ C6. 07, 00
        mov     eax, edi                                ; 0562 _ 89. F8
        sub     eax, r8d                                ; 0564 _ 44: 29. C0
        mov     dword [r9], eax                         ; 0567 _ 41: 89. 01
        dec     rdi                                     ; 056A _ 48: FF. CF
        cmp     rcx, rdi                                ; 056D _ 48: 39. F9
        ja      ?_034                                   ; 0570 _ 77, 26
        inc     rcx                                     ; 0572 _ 48: FF. C1
; Filling space: 0BH
; Filler type: Multi-byte NOP
;       db 66H, 66H, 2EH, 0FH, 1FH, 84H, 00H, 00H
;       db 00H, 00H, 00H

ALIGN   16
?_033:  movzx   eax, byte [rcx-1H]                      ; 0580 _ 0F B6. 41, FF
        movzx   edx, byte [rdi]                         ; 0584 _ 0F B6. 17
        mov     byte [rcx-1H], dl                       ; 0587 _ 88. 51, FF
        mov     byte [rdi], al                          ; 058A _ 88. 07
        dec     rdi                                     ; 058C _ 48: FF. CF
        cmp     rcx, rdi                                ; 058F _ 48: 39. F9
        lea     rcx, [rcx+1H]                           ; 0592 _ 48: 8D. 49, 01
        jbe     ?_033                                   ; 0596 _ 76, E8
?_034:  mov     rax, r8                                 ; 0598 _ 4C: 89. C0
        add     rsp, 8                                  ; 059B _ 48: 83. C4, 08
        pop     rbx                                     ; 059F _ 5B
        pop     rbp                                     ; 05A0 _ 5D
        ret                                             ; 05A1 _ C3
; _toString End of function

; Filling space: 0EH
; Filler type: Multi-byte NOP
;       db 66H, 66H, 66H, 66H, 66H, 2EH, 0FH, 1FH
;       db 84H, 00H, 00H, 00H, 00H, 00H

ALIGN   16

_main:  ; Function begin
        push    rbp                                     ; 05B0 _ 55
        mov     rbp, rsp                                ; 05B1 _ 48: 89. E5
        push    r15                                     ; 05B4 _ 41: 57
        push    r14                                     ; 05B6 _ 41: 56
        push    r13                                     ; 05B8 _ 41: 55
        push    r12                                     ; 05BA _ 41: 54
        push    rbx                                     ; 05BC _ 53
        push    rax                                     ; 05BD _ 50
        mov     edi, 8                                  ; 05BE _ BF, 00000008
        call    _malloc                                 ; 05C3 _ E8, 00000000(rel)
        mov     r12, rax                                ; 05C8 _ 49: 89. C4
        mov     dword [r12], 3                          ; 05CB _ 41: C7. 04 24, 00000003
        mov     dword [r12+4H], 6381921                 ; 05D3 _ 41: C7. 44 24, 04, 00616161
        mov     edi, 10                                 ; 05DC _ BF, 0000000A
        call    _malloc                                 ; 05E1 _ E8, 00000000(rel)
        mov     r13, rax                                ; 05E6 _ 49: 89. C5
        mov     dword [r13], 5                          ; 05E9 _ 41: C7. 45, 00, 00000005
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [r13+8H], 98                       ; 05F1 _ 66 41: C7. 45, 08, 0062
        mov     dword [r13+4H], 1650614882              ; 05F8 _ 41: C7. 45, 04, 62626262
        mov     r15d, dword [r12]                       ; 0600 _ 45: 8B. 3C 24
        mov     eax, dword [r13]                        ; 0604 _ 41: 8B. 45, 00
        mov     qword [rbp-30H], rax                    ; 0608 _ 48: 89. 45, D0
        lea     eax, [rax+r15]                          ; 060C _ 42: 8D. 04 38
        movsxd  r14, eax                                ; 0610 _ 4C: 63. F0
        lea     rdi, [r14+5H]                           ; 0613 _ 49: 8D. 7E, 05
        call    _malloc                                 ; 0617 _ E8, 00000000(rel)
        mov     rbx, rax                                ; 061C _ 48: 89. C3
        mov     dword [rbx], r14d                       ; 061F _ 44: 89. 33
        test    r15d, r15d                              ; 0622 _ 45: 85. FF
        jle     ?_035                                   ; 0625 _ 7E, 13
        add     r12, 4                                  ; 0627 _ 49: 83. C4, 04
        lea     rdi, [rbx+4H]                           ; 062B _ 48: 8D. 7B, 04
        mov     rsi, r12                                ; 062F _ 4C: 89. E6
        mov     rdx, r15                                ; 0632 _ 4C: 89. FA
        call    _memcpy                                 ; 0635 _ E8, 00000000(rel)
?_035:  mov     rdx, qword [rbp-30H]                    ; 063A _ 48: 8B. 55, D0
        test    edx, edx                                ; 063E _ 85. D2
        jle     ?_036                                   ; 0640 _ 7E, 14
        add     r13, 4                                  ; 0642 _ 49: 83. C5, 04
        movsxd  rax, r15d                               ; 0646 _ 49: 63. C7
        lea     rdi, [rbx+rax+4H]                       ; 0649 _ 48: 8D. 7C 03, 04
        mov     rsi, r13                                ; 064E _ 4C: 89. EE
        call    _memcpy                                 ; 0651 _ E8, 00000000(rel)
?_036:  mov     byte [rbx+r14+4H], 0                    ; 0656 _ 42: C6. 44 33, 04, 00
        movsx   eax, byte [rbx+9H]                      ; 065C _ 0F BE. 43, 09
        add     eax, dword [rbx]                        ; 0660 _ 03. 03
        add     rsp, 8                                  ; 0662 _ 48: 83. C4, 08
        pop     rbx                                     ; 0666 _ 5B
        pop     r12                                     ; 0667 _ 41: 5C
        pop     r13                                     ; 0669 _ 41: 5D
        pop     r14                                     ; 066B _ 41: 5E
        pop     r15                                     ; 066D _ 41: 5F
        pop     rbp                                     ; 066F _ 5D
        ret                                             ; 0670 _ C3
; _main End of function


SECTION ._TEXT.__cstring align=1 noexecute              ; section number 2, data

        db 25H, 64H, 00H, 25H, 73H, 00H, 62H, 62H       ; 0671 _ %d.%s.bb
        db 62H, 62H, 62H, 00H                           ; 0679 _ bbb.


