; Disassembly of file: output.o
; Sun Jun 11 06:54:33 2017
; Mode: 64 bits
; Syntax: YASM/NASM
; Instruction set: Pentium Pro, x64

default rel

global _substring
global _ord
global _parseInt
global _strlength: function
global _getInt
global _getString
global _size: function
global _toMoStr: function
global _str_add: function
global ___lib_printlnInt
global ___lib_printInt
global ___lib_malloc: function
global _println: function
global _print: function
global _toString: function
global _vector__init: function
global _vector__getDim: function
global _vector__dot: function
global _vector__scalarInPlaceMultiply: function
global _vector__add: function
global _vector__set: function
global _vector__tostring: function
global _vector__copy: function
global _main

extern _strlen                                          ; near
extern _scanf                                           ; near
extern _puts                                            ; near
extern _printf                                          ; near
extern _malloc                                          ; near
extern _getchar                                         ; near
extern ___strcpy_chk                                    ; near


SECTION ._TEXT.__text align=16 execute                  ; section number 1, code

_substring:; Function begin
        push    rbp                                     ; 0000 _ 55
        mov     rbp, rsp                                ; 0001 _ 48: 89. E5
        sub     rsp, 48                                 ; 0004 _ 48: 83. EC, 30
        mov     qword [rbp-8H], rdi                     ; 0008 _ 48: 89. 7D, F8
        mov     qword [rbp-10H], rsi                    ; 000C _ 48: 89. 75, F0
        mov     qword [rbp-18H], rdx                    ; 0010 _ 48: 89. 55, E8
        mov     rdx, qword [rbp-18H]                    ; 0014 _ 48: 8B. 55, E8
        sub     rdx, qword [rbp-10H]                    ; 0018 _ 48: 2B. 55, F0
        add     rdx, 1                                  ; 001C _ 48: 83. C2, 01
        mov     eax, edx                                ; 0020 _ 89. D0
        mov     dword [rbp-1CH], eax                    ; 0022 _ 89. 45, E4
        movsxd  rdx, dword [rbp-1CH]                    ; 0025 _ 48: 63. 55, E4
        add     rdx, 4                                  ; 0029 _ 48: 83. C2, 04
        add     rdx, 1                                  ; 002D _ 48: 83. C2, 01
        mov     rdi, rdx                                ; 0031 _ 48: 89. D7
        call    _malloc                                 ; 0034 _ E8, 00000000(rel)
        mov     qword [rbp-28H], rax                    ; 0039 _ 48: 89. 45, D8
        mov     ecx, dword [rbp-1CH]                    ; 003D _ 8B. 4D, E4
        mov     rax, qword [rbp-28H]                    ; 0040 _ 48: 8B. 45, D8
        mov     dword [rax], ecx                        ; 0044 _ 89. 08
        mov     rax, qword [rbp-28H]                    ; 0046 _ 48: 8B. 45, D8
        add     rax, 4                                  ; 004A _ 48: 83. C0, 04
        mov     qword [rbp-28H], rax                    ; 004E _ 48: 89. 45, D8
        mov     dword [rbp-2CH], 0                      ; 0052 _ C7. 45, D4, 00000000
        mov     rax, qword [rbp-10H]                    ; 0059 _ 48: 8B. 45, F0
        mov     ecx, eax                                ; 005D _ 89. C1
        mov     dword [rbp-30H], ecx                    ; 005F _ 89. 4D, D0
?_001:  movsxd  rax, dword [rbp-30H]                    ; 0062 _ 48: 63. 45, D0
        cmp     rax, qword [rbp-18H]                    ; 0066 _ 48: 3B. 45, E8
; Note: Immediate operand could be made smaller by sign extension
        jg      ?_002                                   ; 006A _ 0F 8F, 0000002E
        movsxd  rax, dword [rbp-30H]                    ; 0070 _ 48: 63. 45, D0
        mov     rcx, qword [rbp-8H]                     ; 0074 _ 48: 8B. 4D, F8
        mov     dl, byte [rcx+rax]                      ; 0078 _ 8A. 14 01
        mov     esi, dword [rbp-2CH]                    ; 007B _ 8B. 75, D4
        mov     edi, esi                                ; 007E _ 89. F7
        add     edi, 1                                  ; 0080 _ 83. C7, 01
        mov     dword [rbp-2CH], edi                    ; 0083 _ 89. 7D, D4
        movsxd  rax, esi                                ; 0086 _ 48: 63. C6
        mov     rcx, qword [rbp-28H]                    ; 0089 _ 48: 8B. 4D, D8
        mov     byte [rcx+rax], dl                      ; 008D _ 88. 14 01
        mov     eax, dword [rbp-30H]                    ; 0090 _ 8B. 45, D0
        add     eax, 1                                  ; 0093 _ 83. C0, 01
        mov     dword [rbp-30H], eax                    ; 0096 _ 89. 45, D0
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_001                                   ; 0099 _ E9, FFFFFFC4
; _substring End of function

?_002:  ; Local function
        movsxd  rax, dword [rbp-2CH]                    ; 009E _ 48: 63. 45, D4
        mov     rcx, qword [rbp-28H]                    ; 00A2 _ 48: 8B. 4D, D8
        mov     byte [rcx+rax], 0                       ; 00A6 _ C6. 04 01, 00
        mov     rax, qword [rbp-28H]                    ; 00AA _ 48: 8B. 45, D8
        add     rsp, 48                                 ; 00AE _ 48: 83. C4, 30
        pop     rbp                                     ; 00B2 _ 5D
        ret                                             ; 00B3 _ C3

; Filling space: 0CH
; Filler type: Multi-byte NOP
;       db 66H, 66H, 66H, 2EH, 0FH, 1FH, 84H, 00H
;       db 00H, 00H, 00H, 00H

ALIGN   16

_ord:   ; Function begin
        push    rbp                                     ; 00C0 _ 55
        mov     rbp, rsp                                ; 00C1 _ 48: 89. E5
        mov     qword [rbp-8H], rdi                     ; 00C4 _ 48: 89. 7D, F8
        mov     qword [rbp-10H], rsi                    ; 00C8 _ 48: 89. 75, F0
        mov     rsi, qword [rbp-8H]                     ; 00CC _ 48: 8B. 75, F8
        add     rsi, qword [rbp-10H]                    ; 00D0 _ 48: 03. 75, F0
        mov     qword [rbp-18H], rsi                    ; 00D4 _ 48: 89. 75, E8
        mov     rsi, qword [rbp-18H]                    ; 00D8 _ 48: 8B. 75, E8
        movsx   rax, byte [rsi]                         ; 00DC _ 48: 0F BE. 06
        pop     rbp                                     ; 00E0 _ 5D
        ret                                             ; 00E1 _ C3
; _ord End of function

; Filling space: 0EH
; Filler type: Multi-byte NOP
;       db 66H, 66H, 66H, 66H, 66H, 2EH, 0FH, 1FH
;       db 84H, 00H, 00H, 00H, 00H, 00H

ALIGN   16

_parseInt:; Function begin
        push    rbp                                     ; 00F0 _ 55
        mov     rbp, rsp                                ; 00F1 _ 48: 89. E5
        sub     rsp, 32                                 ; 00F4 _ 48: 83. EC, 20
        mov     qword [rbp-8H], rdi                     ; 00F8 _ 48: 89. 7D, F8
        mov     rdi, qword [rbp-8H]                     ; 00FC _ 48: 8B. 7D, F8
        call    _strlength                              ; 0100 _ E8, 00000000(rel)
        mov     ecx, eax                                ; 0105 _ 89. C1
        mov     dword [rbp-0CH], ecx                    ; 0107 _ 89. 4D, F4
        mov     rax, qword [rbp-8H]                     ; 010A _ 48: 8B. 45, F8
        mov     qword [rbp-18H], rax                    ; 010E _ 48: 89. 45, E8
        mov     dword [rbp-1CH], 0                      ; 0112 _ C7. 45, E4, 00000000
        mov     dword [rbp-20H], 0                      ; 0119 _ C7. 45, E0, 00000000
?_003:  mov     eax, dword [rbp-20H]                    ; 0120 _ 8B. 45, E0
        cmp     eax, dword [rbp-0CH]                    ; 0123 _ 3B. 45, F4
; Note: Immediate operand could be made smaller by sign extension
        jge     ?_007                                   ; 0126 _ 0F 8D, 0000005F
        movsxd  rax, dword [rbp-20H]                    ; 012C _ 48: 63. 45, E0
        mov     rcx, qword [rbp-18H]                    ; 0130 _ 48: 8B. 4D, E8
        movsx   edx, byte [rcx+rax]                     ; 0134 _ 0F BE. 14 01
        cmp     edx, 48                                 ; 0138 _ 83. FA, 30
; Note: Immediate operand could be made smaller by sign extension
        jl      ?_004                                   ; 013B _ 0F 8C, 00000032
        movsxd  rax, dword [rbp-20H]                    ; 0141 _ 48: 63. 45, E0
        mov     rcx, qword [rbp-18H]                    ; 0145 _ 48: 8B. 4D, E8
        movsx   edx, byte [rcx+rax]                     ; 0149 _ 0F BE. 14 01
        cmp     edx, 57                                 ; 014D _ 83. FA, 39
; Note: Immediate operand could be made smaller by sign extension
        jg      ?_004                                   ; 0150 _ 0F 8F, 0000001D
        imul    eax, dword [rbp-1CH], 10                ; 0156 _ 6B. 45, E4, 0A
        movsxd  rcx, dword [rbp-20H]                    ; 015A _ 48: 63. 4D, E0
        mov     rdx, qword [rbp-18H]                    ; 015E _ 48: 8B. 55, E8
        movsx   esi, byte [rdx+rcx]                     ; 0162 _ 0F BE. 34 0A
        add     eax, esi                                ; 0166 _ 01. F0
        sub     eax, 48                                 ; 0168 _ 83. E8, 30
        mov     dword [rbp-1CH], eax                    ; 016B _ 89. 45, E4
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_005                                   ; 016E _ E9, 00000005

?_004:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_007                                   ; 0173 _ E9, 00000013

?_005:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_006                                   ; 0178 _ E9, 00000000

?_006:  mov     eax, dword [rbp-20H]                    ; 017D _ 8B. 45, E0
        add     eax, 1                                  ; 0180 _ 83. C0, 01
        mov     dword [rbp-20H], eax                    ; 0183 _ 89. 45, E0
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_003                                   ; 0186 _ E9, FFFFFF95
; _parseInt End of function

?_007:  ; Local function
        movsxd  rax, dword [rbp-1CH]                    ; 018B _ 48: 63. 45, E4
        add     rsp, 32                                 ; 018F _ 48: 83. C4, 20
        pop     rbp                                     ; 0193 _ 5D
        ret                                             ; 0194 _ C3

; Filling space: 0BH
; Filler type: Multi-byte NOP
;       db 66H, 66H, 2EH, 0FH, 1FH, 84H, 00H, 00H
;       db 00H, 00H, 00H

ALIGN   16

_strlength:; Function begin
        push    rbp                                     ; 01A0 _ 55
        mov     rbp, rsp                                ; 01A1 _ 48: 89. E5
        mov     qword [rbp-8H], rdi                     ; 01A4 _ 48: 89. 7D, F8
        mov     rdi, qword [rbp-8H]                     ; 01A8 _ 48: 8B. 7D, F8
        sub     rdi, 4                                  ; 01AC _ 48: 83. EF, 04
        mov     eax, dword [rdi]                        ; 01B0 _ 8B. 07
        mov     dword [rbp-0CH], eax                    ; 01B2 _ 89. 45, F4
        movsxd  rax, dword [rbp-0CH]                    ; 01B5 _ 48: 63. 45, F4
        pop     rbp                                     ; 01B9 _ 5D
        ret                                             ; 01BA _ C3
; _strlength End of function

; Filling space: 5H
; Filler type: Multi-byte NOP
;       db 0FH, 1FH, 44H, 00H, 00H

ALIGN   8

_getInt:; Function begin
        push    rbp                                     ; 01C0 _ 55
        mov     rbp, rsp                                ; 01C1 _ 48: 89. E5
        sub     rsp, 16                                 ; 01C4 _ 48: 83. EC, 10
        lea     rdi, [rel ?_079]                        ; 01C8 _ 48: 8D. 3D, 00000E87(rel)
        lea     rsi, [rbp-4H]                           ; 01CF _ 48: 8D. 75, FC
        mov     dword [rbp-4H], 0                       ; 01D3 _ C7. 45, FC, 00000000
        mov     al, 0                                   ; 01DA _ B0, 00
        call    _scanf                                  ; 01DC _ E8, 00000000(rel)
        movsxd  rsi, dword [rbp-4H]                     ; 01E1 _ 48: 63. 75, FC
        mov     dword [rbp-8H], eax                     ; 01E5 _ 89. 45, F8
        mov     rax, rsi                                ; 01E8 _ 48: 89. F0
        add     rsp, 16                                 ; 01EB _ 48: 83. C4, 10
        pop     rbp                                     ; 01EF _ 5D
        ret                                             ; 01F0 _ C3
; _getInt End of function

; Filling space: 0FH
; Filler type: Multi-byte NOP
;       db 66H, 66H, 66H, 66H, 66H, 66H, 2EH, 0FH
;       db 1FH, 84H, 00H, 00H, 00H, 00H, 00H

ALIGN   16

_getString:; Function begin
        push    rbp                                     ; 0200 _ 55
        mov     rbp, rsp                                ; 0201 _ 48: 89. E5
        sub     rsp, 32                                 ; 0204 _ 48: 83. EC, 20
        mov     eax, 2004                               ; 0208 _ B8, 000007D4
        mov     edi, eax                                ; 020D _ 89. C7
        mov     dword [rbp-4H], 0                       ; 020F _ C7. 45, FC, 00000000
        call    _malloc                                 ; 0216 _ E8, 00000000(rel)
        mov     qword [rbp-10H], rax                    ; 021B _ 48: 89. 45, F0
        mov     rax, qword [rbp-10H]                    ; 021F _ 48: 8B. 45, F0
        mov     qword [rbp-18H], rax                    ; 0223 _ 48: 89. 45, E8
        mov     rax, qword [rbp-10H]                    ; 0227 _ 48: 8B. 45, F0
        add     rax, 4                                  ; 022B _ 48: 83. C0, 04
        mov     qword [rbp-10H], rax                    ; 022F _ 48: 89. 45, F0
        call    _getchar                                ; 0233 _ E8, 00000000(rel)
        mov     cl, al                                  ; 0238 _ 88. C1
        movsxd  rdi, dword [rbp-4H]                     ; 023A _ 48: 63. 7D, FC
        mov     rdx, qword [rbp-10H]                    ; 023E _ 48: 8B. 55, F0
        mov     byte [rdx+rdi], cl                      ; 0242 _ 88. 0C 3A
        movsxd  rdx, dword [rbp-4H]                     ; 0245 _ 48: 63. 55, FC
        mov     rdi, qword [rbp-10H]                    ; 0249 _ 48: 8B. 7D, F0
        movzx   eax, byte [rdi+rdx]                     ; 024D _ 0F B6. 04 17
        cmp     eax, 10                                 ; 0251 _ 83. F8, 0A
; Note: Immediate operand could be made smaller by sign extension
        jne     ?_008                                   ; 0254 _ 0F 85, 00000012
        call    _getchar                                ; 025A _ E8, 00000000(rel)
        mov     cl, al                                  ; 025F _ 88. C1
        movsxd  rdx, dword [rbp-4H]                     ; 0261 _ 48: 63. 55, FC
        mov     rsi, qword [rbp-10H]                    ; 0265 _ 48: 8B. 75, F0
        mov     byte [rsi+rdx], cl                      ; 0269 _ 88. 0C 16
?_008:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_009                                   ; 026C _ E9, 00000000
; _getString End of function

?_009:  ; Local function
        movsxd  rax, dword [rbp-4H]                     ; 0271 _ 48: 63. 45, FC
        mov     rcx, qword [rbp-10H]                    ; 0275 _ 48: 8B. 4D, F0
        movzx   edx, byte [rcx+rax]                     ; 0279 _ 0F B6. 14 01
        cmp     edx, 10                                 ; 027D _ 83. FA, 0A
; Note: Immediate operand could be made smaller by sign extension
        je      ?_010                                   ; 0280 _ 0F 84, 0000001F
        call    _getchar                                ; 0286 _ E8, 00000000(rel)
        mov     cl, al                                  ; 028B _ 88. C1
        mov     eax, dword [rbp-4H]                     ; 028D _ 8B. 45, FC
        add     eax, 1                                  ; 0290 _ 83. C0, 01
        mov     dword [rbp-4H], eax                     ; 0293 _ 89. 45, FC
        movsxd  rdx, eax                                ; 0296 _ 48: 63. D0
        mov     rsi, qword [rbp-10H]                    ; 0299 _ 48: 8B. 75, F0
        mov     byte [rsi+rdx], cl                      ; 029D _ 88. 0C 16
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_009                                   ; 02A0 _ E9, FFFFFFCC

?_010:  ; Local function
        movsxd  rax, dword [rbp-4H]                     ; 02A5 _ 48: 63. 45, FC
        mov     rcx, qword [rbp-10H]                    ; 02A9 _ 48: 8B. 4D, F0
        mov     byte [rcx+rax], 0                       ; 02AD _ C6. 04 01, 00
        mov     edx, dword [rbp-4H]                     ; 02B1 _ 8B. 55, FC
        mov     rax, qword [rbp-18H]                    ; 02B4 _ 48: 8B. 45, E8
        mov     dword [rax], edx                        ; 02B8 _ 89. 10
        mov     rax, qword [rbp-18H]                    ; 02BA _ 48: 8B. 45, E8
        add     rax, 4                                  ; 02BE _ 48: 83. C0, 04
        add     rsp, 32                                 ; 02C2 _ 48: 83. C4, 20
        pop     rbp                                     ; 02C6 _ 5D
        ret                                             ; 02C7 _ C3

; Filling space: 8H
; Filler type: Multi-byte NOP
;       db 0FH, 1FH, 84H, 00H, 00H, 00H, 00H, 00H

ALIGN   16

_size:  ; Function begin
        push    rbp                                     ; 02D0 _ 55
        mov     rbp, rsp                                ; 02D1 _ 48: 89. E5
        mov     qword [rbp-8H], rdi                     ; 02D4 _ 48: 89. 7D, F8
        mov     rdi, qword [rbp-8H]                     ; 02D8 _ 48: 8B. 7D, F8
        sub     rdi, 8                                  ; 02DC _ 48: 83. EF, 08
        mov     rdi, qword [rdi]                        ; 02E0 _ 48: 8B. 3F
        mov     qword [rbp-10H], rdi                    ; 02E3 _ 48: 89. 7D, F0
        mov     rax, qword [rbp-10H]                    ; 02E7 _ 48: 8B. 45, F0
        pop     rbp                                     ; 02EB _ 5D
        ret                                             ; 02EC _ C3
; _size End of function

; Filling space: 3H
; Filler type: Multi-byte NOP
;       db 0FH, 1FH, 00H

ALIGN   8

_toMoStr:; Function begin
        push    rbp                                     ; 02F0 _ 55
        mov     rbp, rsp                                ; 02F1 _ 48: 89. E5
        sub     rsp, 32                                 ; 02F4 _ 48: 83. EC, 20
        mov     qword [rbp-8H], rdi                     ; 02F8 _ 48: 89. 7D, F8
        mov     rdi, qword [rbp-8H]                     ; 02FC _ 48: 8B. 7D, F8
        call    _strlen                                 ; 0300 _ E8, 00000000(rel)
        mov     ecx, eax                                ; 0305 _ 89. C1
        mov     dword [rbp-0CH], ecx                    ; 0307 _ 89. 4D, F4
        movsxd  rax, dword [rbp-0CH]                    ; 030A _ 48: 63. 45, F4
        add     rax, 4                                  ; 030E _ 48: 83. C0, 04
        add     rax, 1                                  ; 0312 _ 48: 83. C0, 01
        mov     rdi, rax                                ; 0316 _ 48: 89. C7
        call    _malloc                                 ; 0319 _ E8, 00000000(rel)
        mov     rdx, -1                                 ; 031E _ 48: C7. C2, FFFFFFFF
        mov     qword [rbp-18H], rax                    ; 0325 _ 48: 89. 45, E8
        mov     ecx, dword [rbp-0CH]                    ; 0329 _ 8B. 4D, F4
        mov     rax, qword [rbp-18H]                    ; 032C _ 48: 8B. 45, E8
        mov     dword [rax], ecx                        ; 0330 _ 89. 08
        mov     rax, qword [rbp-18H]                    ; 0332 _ 48: 8B. 45, E8
        add     rax, 4                                  ; 0336 _ 48: 83. C0, 04
        mov     qword [rbp-18H], rax                    ; 033A _ 48: 89. 45, E8
        mov     rdi, qword [rbp-18H]                    ; 033E _ 48: 8B. 7D, E8
        mov     rsi, qword [rbp-8H]                     ; 0342 _ 48: 8B. 75, F8
        call    ___strcpy_chk                           ; 0346 _ E8, 00000000(rel)
        mov     rdx, qword [rbp-18H]                    ; 034B _ 48: 8B. 55, E8
        mov     qword [rbp-20H], rax                    ; 034F _ 48: 89. 45, E0
        mov     rax, rdx                                ; 0353 _ 48: 89. D0
        add     rsp, 32                                 ; 0356 _ 48: 83. C4, 20
        pop     rbp                                     ; 035A _ 5D
        ret                                             ; 035B _ C3
; _toMoStr End of function

; Filling space: 4H
; Filler type: Multi-byte NOP
;       db 0FH, 1FH, 40H, 00H

ALIGN   8

_str_add:; Function begin
        push    rbp                                     ; 0360 _ 55
        mov     rbp, rsp                                ; 0361 _ 48: 89. E5
        sub     rsp, 48                                 ; 0364 _ 48: 83. EC, 30
        mov     qword [rbp-8H], rdi                     ; 0368 _ 48: 89. 7D, F8
        mov     qword [rbp-10H], rsi                    ; 036C _ 48: 89. 75, F0
        mov     rsi, qword [rbp-8H]                     ; 0370 _ 48: 8B. 75, F8
        sub     rsi, 4                                  ; 0374 _ 48: 83. EE, 04
        mov     eax, dword [rsi]                        ; 0378 _ 8B. 06
        mov     dword [rbp-14H], eax                    ; 037A _ 89. 45, EC
        mov     rsi, qword [rbp-10H]                    ; 037D _ 48: 8B. 75, F0
        sub     rsi, 4                                  ; 0381 _ 48: 83. EE, 04
        mov     eax, dword [rsi]                        ; 0385 _ 8B. 06
        mov     dword [rbp-18H], eax                    ; 0387 _ 89. 45, E8
        mov     eax, dword [rbp-14H]                    ; 038A _ 8B. 45, EC
        add     eax, dword [rbp-18H]                    ; 038D _ 03. 45, E8
        mov     dword [rbp-1CH], eax                    ; 0390 _ 89. 45, E4
        movsxd  rsi, dword [rbp-1CH]                    ; 0393 _ 48: 63. 75, E4
        add     rsi, 4                                  ; 0397 _ 48: 83. C6, 04
        add     rsi, 1                                  ; 039B _ 48: 83. C6, 01
        mov     rdi, rsi                                ; 039F _ 48: 89. F7
        call    _malloc                                 ; 03A2 _ E8, 00000000(rel)
        mov     qword [rbp-28H], rax                    ; 03A7 _ 48: 89. 45, D8
        mov     ecx, dword [rbp-1CH]                    ; 03AB _ 8B. 4D, E4
        mov     rax, qword [rbp-28H]                    ; 03AE _ 48: 8B. 45, D8
        mov     dword [rax], ecx                        ; 03B2 _ 89. 08
        mov     rax, qword [rbp-28H]                    ; 03B4 _ 48: 8B. 45, D8
        add     rax, 4                                  ; 03B8 _ 48: 83. C0, 04
        mov     qword [rbp-28H], rax                    ; 03BC _ 48: 89. 45, D8
        mov     dword [rbp-2CH], 0                      ; 03C0 _ C7. 45, D4, 00000000
?_011:  mov     eax, dword [rbp-2CH]                    ; 03C7 _ 8B. 45, D4
        cmp     eax, dword [rbp-14H]                    ; 03CA _ 3B. 45, EC
; Note: Immediate operand could be made smaller by sign extension
        jge     ?_012                                   ; 03CD _ 0F 8D, 00000024
        movsxd  rax, dword [rbp-2CH]                    ; 03D3 _ 48: 63. 45, D4
        mov     rcx, qword [rbp-8H]                     ; 03D7 _ 48: 8B. 4D, F8
        mov     dl, byte [rcx+rax]                      ; 03DB _ 8A. 14 01
        movsxd  rax, dword [rbp-2CH]                    ; 03DE _ 48: 63. 45, D4
        mov     rcx, qword [rbp-28H]                    ; 03E2 _ 48: 8B. 4D, D8
        mov     byte [rcx+rax], dl                      ; 03E6 _ 88. 14 01
        mov     eax, dword [rbp-2CH]                    ; 03E9 _ 8B. 45, D4
        add     eax, 1                                  ; 03EC _ 83. C0, 01
        mov     dword [rbp-2CH], eax                    ; 03EF _ 89. 45, D4
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_011                                   ; 03F2 _ E9, FFFFFFD0
; _str_add End of function

?_012:  ; Local function
        mov     dword [rbp-30H], 0                      ; 03F7 _ C7. 45, D0, 00000000
?_013:  mov     eax, dword [rbp-30H]                    ; 03FE _ 8B. 45, D0
        cmp     eax, dword [rbp-18H]                    ; 0401 _ 3B. 45, E8
; Note: Immediate operand could be made smaller by sign extension
        jge     ?_014                                   ; 0404 _ 0F 8D, 00000029
        movsxd  rax, dword [rbp-30H]                    ; 040A _ 48: 63. 45, D0
        mov     rcx, qword [rbp-10H]                    ; 040E _ 48: 8B. 4D, F0
        mov     dl, byte [rcx+rax]                      ; 0412 _ 8A. 14 01
        mov     esi, dword [rbp-30H]                    ; 0415 _ 8B. 75, D0
        add     esi, dword [rbp-14H]                    ; 0418 _ 03. 75, EC
        movsxd  rax, esi                                ; 041B _ 48: 63. C6
        mov     rcx, qword [rbp-28H]                    ; 041E _ 48: 8B. 4D, D8
        mov     byte [rcx+rax], dl                      ; 0422 _ 88. 14 01
        mov     eax, dword [rbp-30H]                    ; 0425 _ 8B. 45, D0
        add     eax, 1                                  ; 0428 _ 83. C0, 01
        mov     dword [rbp-30H], eax                    ; 042B _ 89. 45, D0
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_013                                   ; 042E _ E9, FFFFFFCB

?_014:  ; Local function
        movsxd  rax, dword [rbp-1CH]                    ; 0433 _ 48: 63. 45, E4
        mov     rcx, qword [rbp-28H]                    ; 0437 _ 48: 8B. 4D, D8
        mov     byte [rcx+rax], 0                       ; 043B _ C6. 04 01, 00
        mov     rax, qword [rbp-28H]                    ; 043F _ 48: 8B. 45, D8
        add     rsp, 48                                 ; 0443 _ 48: 83. C4, 30
        pop     rbp                                     ; 0447 _ 5D
        ret                                             ; 0448 _ C3

; Filling space: 7H
; Filler type: Multi-byte NOP
;       db 0FH, 1FH, 80H, 00H, 00H, 00H, 00H

ALIGN   8

___lib_printlnInt:; Function begin
        push    rbp                                     ; 0450 _ 55
        mov     rbp, rsp                                ; 0451 _ 48: 89. E5
        sub     rsp, 16                                 ; 0454 _ 48: 83. EC, 10
        lea     rax, [rel _substring+0BFAH]             ; 0458 _ 48: 8D. 05, 00000BFA(rel)
        mov     qword [rbp-8H], rdi                     ; 045F _ 48: 89. 7D, F8
        mov     rsi, qword [rbp-8H]                     ; 0463 _ 48: 8B. 75, F8
        mov     rdi, rax                                ; 0467 _ 48: 89. C7
        mov     al, 0                                   ; 046A _ B0, 00
        call    _printf                                 ; 046C _ E8, 00000000(rel)
        mov     dword [rbp-0CH], eax                    ; 0471 _ 89. 45, F4
        add     rsp, 16                                 ; 0474 _ 48: 83. C4, 10
        pop     rbp                                     ; 0478 _ 5D
        ret                                             ; 0479 _ C3
; ___lib_printlnInt End of function

; Filling space: 6H
; Filler type: Multi-byte NOP
;       db 66H, 0FH, 1FH, 44H, 00H, 00H

ALIGN   8

___lib_printInt:; Function begin
        push    rbp                                     ; 0480 _ 55
        mov     rbp, rsp                                ; 0481 _ 48: 89. E5
        sub     rsp, 16                                 ; 0484 _ 48: 83. EC, 10
        lea     rax, [rel _substring+0BCFH]             ; 0488 _ 48: 8D. 05, 00000BCF(rel)
        mov     qword [rbp-8H], rdi                     ; 048F _ 48: 89. 7D, F8
        mov     rsi, qword [rbp-8H]                     ; 0493 _ 48: 8B. 75, F8
        mov     rdi, rax                                ; 0497 _ 48: 89. C7
        mov     al, 0                                   ; 049A _ B0, 00
        call    _printf                                 ; 049C _ E8, 00000000(rel)
        mov     dword [rbp-0CH], eax                    ; 04A1 _ 89. 45, F4
        add     rsp, 16                                 ; 04A4 _ 48: 83. C4, 10
        pop     rbp                                     ; 04A8 _ 5D
        ret                                             ; 04A9 _ C3
; ___lib_printInt End of function

; Filling space: 6H
; Filler type: Multi-byte NOP
;       db 66H, 0FH, 1FH, 44H, 00H, 00H

ALIGN   8

___lib_malloc:; Function begin
        push    rbp                                     ; 04B0 _ 55
        mov     rbp, rsp                                ; 04B1 _ 48: 89. E5
        sub     rsp, 16                                 ; 04B4 _ 48: 83. EC, 10
        mov     qword [rbp-8H], rdi                     ; 04B8 _ 48: 89. 7D, F8
        mov     rdi, qword [rbp-8H]                     ; 04BC _ 48: 8B. 7D, F8
        call    _malloc                                 ; 04C0 _ E8, 00000000(rel)
        add     rsp, 16                                 ; 04C5 _ 48: 83. C4, 10
        pop     rbp                                     ; 04C9 _ 5D
        ret                                             ; 04CA _ C3
; ___lib_malloc End of function

; Filling space: 5H
; Filler type: Multi-byte NOP
;       db 0FH, 1FH, 44H, 00H, 00H

ALIGN   8

_println:; Function begin
        push    rbp                                     ; 04D0 _ 55
        mov     rbp, rsp                                ; 04D1 _ 48: 89. E5
        sub     rsp, 16                                 ; 04D4 _ 48: 83. EC, 10
        mov     qword [rbp-8H], rdi                     ; 04D8 _ 48: 89. 7D, F8
        mov     rdi, qword [rbp-8H]                     ; 04DC _ 48: 8B. 7D, F8
        call    _puts                                   ; 04E0 _ E8, 00000000(rel)
        mov     dword [rbp-0CH], eax                    ; 04E5 _ 89. 45, F4
        add     rsp, 16                                 ; 04E8 _ 48: 83. C4, 10
        pop     rbp                                     ; 04EC _ 5D
        ret                                             ; 04ED _ C3
; _println End of function

; Filling space: 2H
; Filler type: NOP with prefixes
;       db 66H, 90H

ALIGN   8

_print: ; Function begin
        push    rbp                                     ; 04F0 _ 55
        mov     rbp, rsp                                ; 04F1 _ 48: 89. E5
        sub     rsp, 16                                 ; 04F4 _ 48: 83. EC, 10
        lea     rax, [rel _substring+0B63H]             ; 04F8 _ 48: 8D. 05, 00000B63(rel)
        mov     qword [rbp-8H], rdi                     ; 04FF _ 48: 89. 7D, F8
        mov     rsi, qword [rbp-8H]                     ; 0503 _ 48: 8B. 75, F8
        mov     rdi, rax                                ; 0507 _ 48: 89. C7
        mov     al, 0                                   ; 050A _ B0, 00
        call    _printf                                 ; 050C _ E8, 00000000(rel)
        mov     dword [rbp-0CH], eax                    ; 0511 _ 89. 45, F4
        add     rsp, 16                                 ; 0514 _ 48: 83. C4, 10
        pop     rbp                                     ; 0518 _ 5D
        ret                                             ; 0519 _ C3
; _print End of function

; Filling space: 6H
; Filler type: Multi-byte NOP
;       db 66H, 0FH, 1FH, 44H, 00H, 00H

ALIGN   8

_toString:; Function begin
        push    rbp                                     ; 0520 _ 55
        mov     rbp, rsp                                ; 0521 _ 48: 89. E5
        sub     rsp, 48                                 ; 0524 _ 48: 83. EC, 30
        mov     eax, 16                                 ; 0528 _ B8, 00000010
        mov     ecx, eax                                ; 052D _ 89. C1
        mov     qword [rbp-8H], rdi                     ; 052F _ 48: 89. 7D, F8
        mov     rdi, rcx                                ; 0533 _ 48: 89. CF
        call    _malloc                                 ; 0536 _ E8, 00000000(rel)
        mov     qword [rbp-10H], rax                    ; 053B _ 48: 89. 45, F0
        mov     rax, qword [rbp-10H]                    ; 053F _ 48: 8B. 45, F0
        add     rax, 4                                  ; 0543 _ 48: 83. C0, 04
        mov     qword [rbp-10H], rax                    ; 0547 _ 48: 89. 45, F0
        mov     rax, qword [rbp-10H]                    ; 054B _ 48: 8B. 45, F0
        mov     qword [rbp-18H], rax                    ; 054F _ 48: 89. 45, E8
        cmp     qword [rbp-8H], 0                       ; 0553 _ 48: 83. 7D, F8, 00
; Note: Immediate operand could be made smaller by sign extension
        jge     ?_015                                   ; 0558 _ 0F 8D, 0000001E
        xor     eax, eax                                ; 055E _ 31. C0
        mov     ecx, eax                                ; 0560 _ 89. C1
        mov     rdx, qword [rbp-18H]                    ; 0562 _ 48: 8B. 55, E8
        mov     rsi, rdx                                ; 0566 _ 48: 89. D6
        add     rsi, 1                                  ; 0569 _ 48: 83. C6, 01
        mov     qword [rbp-18H], rsi                    ; 056D _ 48: 89. 75, E8
        mov     byte [rdx], 45                          ; 0571 _ C6. 02, 2D
        sub     rcx, qword [rbp-8H]                     ; 0574 _ 48: 2B. 4D, F8
        mov     qword [rbp-8H], rcx                     ; 0578 _ 48: 89. 4D, F8
?_015:  cmp     qword [rbp-8H], 0                       ; 057C _ 48: 83. 7D, F8, 00
; Note: Immediate operand could be made smaller by sign extension
        jne     ?_016                                   ; 0581 _ 0F 85, 00000012
        mov     rax, qword [rbp-18H]                    ; 0587 _ 48: 8B. 45, E8
        mov     rcx, rax                                ; 058B _ 48: 89. C1
        add     rcx, 1                                  ; 058E _ 48: 83. C1, 01
        mov     qword [rbp-18H], rcx                    ; 0592 _ 48: 89. 4D, E8
        mov     byte [rax], 48                          ; 0596 _ C6. 00, 30
?_016:  mov     rax, qword [rbp-18H]                    ; 0599 _ 48: 8B. 45, E8
        mov     qword [rbp-20H], rax                    ; 059D _ 48: 89. 45, E0
?_017:  cmp     qword [rbp-8H], 0                       ; 05A1 _ 48: 83. 7D, F8, 00
; Note: Immediate operand could be made smaller by sign extension
        je      ?_018                                   ; 05A6 _ 0F 84, 00000049
        mov     eax, 10                                 ; 05AC _ B8, 0000000A
        mov     ecx, eax                                ; 05B1 _ 89. C1
        mov     rax, qword [rbp-8H]                     ; 05B3 _ 48: 8B. 45, F8
        cqo                                             ; 05B7 _ 48: 99
        idiv    rcx                                     ; 05B9 _ 48: F7. F9
        mov     esi, eax                                ; 05BC _ 89. C6
        mov     dword [rbp-24H], esi                    ; 05BE _ 89. 75, DC
        mov     rax, qword [rbp-8H]                     ; 05C1 _ 48: 8B. 45, F8
        add     rax, 48                                 ; 05C5 _ 48: 83. C0, 30
        imul    esi, dword [rbp-24H], 10                ; 05C9 _ 6B. 75, DC, 0A
        movsxd  rcx, esi                                ; 05CD _ 48: 63. CE
        sub     rax, rcx                                ; 05D0 _ 48: 29. C8
        mov     dil, al                                 ; 05D3 _ 40: 88. C7
        mov     rax, qword [rbp-18H]                    ; 05D6 _ 48: 8B. 45, E8
        mov     rcx, rax                                ; 05DA _ 48: 89. C1
        add     rcx, 1                                  ; 05DD _ 48: 83. C1, 01
        mov     qword [rbp-18H], rcx                    ; 05E1 _ 48: 89. 4D, E8
        mov     byte [rax], dil                         ; 05E5 _ 40: 88. 38
        movsxd  rax, dword [rbp-24H]                    ; 05E8 _ 48: 63. 45, DC
        mov     qword [rbp-8H], rax                     ; 05EC _ 48: 89. 45, F8
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_017                                   ; 05F0 _ E9, FFFFFFAC
; _toString End of function

?_018:  ; Local function
        mov     rax, qword [rbp-18H]                    ; 05F5 _ 48: 8B. 45, E8
        mov     byte [rax], 0                           ; 05F9 _ C6. 00, 00
        mov     rax, qword [rbp-18H]                    ; 05FC _ 48: 8B. 45, E8
        mov     rcx, qword [rbp-10H]                    ; 0600 _ 48: 8B. 4D, F0
        sub     rax, rcx                                ; 0604 _ 48: 29. C8
        mov     edx, eax                                ; 0607 _ 89. C2
        mov     rax, qword [rbp-10H]                    ; 0609 _ 48: 8B. 45, F0
        mov     dword [rax-4H], edx                     ; 060D _ 89. 50, FC
        mov     rax, qword [rbp-18H]                    ; 0610 _ 48: 8B. 45, E8
        add     rax, -1                                 ; 0614 _ 48: 83. C0, FF
        mov     qword [rbp-18H], rax                    ; 0618 _ 48: 89. 45, E8
?_019:  mov     rax, qword [rbp-20H]                    ; 061C _ 48: 8B. 45, E0
        cmp     rax, qword [rbp-18H]                    ; 0620 _ 48: 3B. 45, E8
; Note: Immediate operand could be made smaller by sign extension
        ja      ?_020                                   ; 0624 _ 0F 87, 0000003B
        mov     rax, qword [rbp-20H]                    ; 062A _ 48: 8B. 45, E0
        mov     cl, byte [rax]                          ; 062E _ 8A. 08
        mov     byte [rbp-25H], cl                      ; 0630 _ 88. 4D, DB
        mov     rax, qword [rbp-18H]                    ; 0633 _ 48: 8B. 45, E8
        mov     cl, byte [rax]                          ; 0637 _ 8A. 08
        mov     rax, qword [rbp-20H]                    ; 0639 _ 48: 8B. 45, E0
        mov     byte [rax], cl                          ; 063D _ 88. 08
        mov     cl, byte [rbp-25H]                      ; 063F _ 8A. 4D, DB
        mov     rax, qword [rbp-18H]                    ; 0642 _ 48: 8B. 45, E8
        mov     byte [rax], cl                          ; 0646 _ 88. 08
        mov     rax, qword [rbp-20H]                    ; 0648 _ 48: 8B. 45, E0
        add     rax, 1                                  ; 064C _ 48: 83. C0, 01
        mov     qword [rbp-20H], rax                    ; 0650 _ 48: 89. 45, E0
        mov     rax, qword [rbp-18H]                    ; 0654 _ 48: 8B. 45, E8
        add     rax, -1                                 ; 0658 _ 48: 83. C0, FF
        mov     qword [rbp-18H], rax                    ; 065C _ 48: 89. 45, E8
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_019                                   ; 0660 _ E9, FFFFFFB7

?_020:  ; Local function
        mov     rax, qword [rbp-10H]                    ; 0665 _ 48: 8B. 45, F0
        add     rsp, 48                                 ; 0669 _ 48: 83. C4, 30
        pop     rbp                                     ; 066D _ 5D
        ret                                             ; 066E _ C3

        nop                                             ; 066F _ 90

ALIGN   16
_vector__init:; Function begin
        push    rbp                                     ; 0670 _ 55
        mov     rbp, rsp                                ; 0671 _ 48: 89. E5
        sub     rsp, 80                                 ; 0674 _ 48: 83. EC, 50
        mov     qword [rbp-8H], rdi                     ; 0678 _ 48: 89. 7D, F8
        mov     qword [rbp-10H], rsi                    ; 067C _ 48: 89. 75, F0
        mov     rsi, qword [rbp-8H]                     ; 0680 _ 48: 8B. 75, F8
        mov     qword [rbp-18H], rsi                    ; 0684 _ 48: 89. 75, E8
        mov     rsi, qword [rbp-10H]                    ; 0688 _ 48: 8B. 75, F0
        mov     qword [rbp-20H], rsi                    ; 068C _ 48: 89. 75, E0
        cmp     qword [rbp-20H], 0                      ; 0690 _ 48: 83. 7D, E0, 00
; Note: Immediate operand could be made smaller by sign extension
        jne     ?_021                                   ; 0695 _ 0F 85, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_022                                   ; 069B _ E9, 00000005

?_021:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_023                                   ; 06A0 _ E9, 00000005

?_022:  jmp     ?_027                                   ; 06A5 _ E9, 000000B4

?_023:  mov     rdi, qword [rbp-20H]                    ; 06AA _ 48: 8B. 7D, E0
        call    _size                                   ; 06AE _ E8, 00000000(rel)
        mov     qword [rbp-30H], rax                    ; 06B3 _ 48: 89. 45, D0
        mov     rax, qword [rbp-30H]                    ; 06B7 _ 48: 8B. 45, D0
        mov     qword [rbp-48H], rax                    ; 06BB _ 48: 89. 45, B8
        mov     rax, qword [rbp-48H]                    ; 06BF _ 48: 8B. 45, B8
        shl     rax, 3                                  ; 06C3 _ 48: C1. E0, 03
        add     rax, 8                                  ; 06C7 _ 48: 83. C0, 08
        mov     rdi, rax                                ; 06CB _ 48: 89. C7
        call    ___lib_malloc                           ; 06CE _ E8, 00000000(rel)
        mov     qword [rbp-38H], rax                    ; 06D3 _ 48: 89. 45, C8
        mov     rax, qword [rbp-48H]                    ; 06D7 _ 48: 8B. 45, B8
        mov     rdi, qword [rbp-38H]                    ; 06DB _ 48: 8B. 7D, C8
        mov     qword [rdi], rax                        ; 06DF _ 48: 89. 07
        mov     rax, qword [rbp-38H]                    ; 06E2 _ 48: 8B. 45, C8
        add     rax, 8                                  ; 06E6 _ 48: 83. C0, 08
        mov     qword [rbp-38H], rax                    ; 06EA _ 48: 89. 45, C8
        mov     rax, qword [rbp-38H]                    ; 06EE _ 48: 8B. 45, C8
        mov     rdi, qword [rbp-18H]                    ; 06F2 _ 48: 8B. 7D, E8
        mov     qword [rdi], rax                        ; 06F6 _ 48: 89. 07
        mov     qword [rbp-50H], 0                      ; 06F9 _ 48: C7. 45, B0, 00000000
?_024:  mov     rdi, qword [rbp-20H]                    ; 0701 _ 48: 8B. 7D, E0
        call    _size                                   ; 0705 _ E8, 00000000(rel)
        mov     qword [rbp-28H], rax                    ; 070A _ 48: 89. 45, D8
        mov     rax, qword [rbp-50H]                    ; 070E _ 48: 8B. 45, B0
        cmp     rax, qword [rbp-28H]                    ; 0712 _ 48: 3B. 45, D8
; Note: Immediate operand could be made smaller by sign extension
        jge     ?_025                                   ; 0716 _ 0F 8D, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_026                                   ; 071C _ E9, 00000005

?_025:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_027                                   ; 0721 _ E9, 00000038

?_026:  mov     rax, qword [rbp-20H]                    ; 0726 _ 48: 8B. 45, E0
        mov     rcx, qword [rbp-50H]                    ; 072A _ 48: 8B. 4D, B0
        shl     rcx, 3                                  ; 072E _ 48: C1. E1, 03
        add     rax, rcx                                ; 0732 _ 48: 01. C8
        mov     rax, qword [rax]                        ; 0735 _ 48: 8B. 00
        mov     rcx, qword [rbp-18H]                    ; 0738 _ 48: 8B. 4D, E8
        mov     rcx, qword [rcx]                        ; 073C _ 48: 8B. 09
        mov     rdx, qword [rbp-50H]                    ; 073F _ 48: 8B. 55, B0
        shl     rdx, 3                                  ; 0743 _ 48: C1. E2, 03
        add     rcx, rdx                                ; 0747 _ 48: 01. D1
        mov     qword [rcx], rax                        ; 074A _ 48: 89. 01
        mov     rax, qword [rbp-50H]                    ; 074D _ 48: 8B. 45, B0
        add     rax, 1                                  ; 0751 _ 48: 83. C0, 01
        mov     qword [rbp-50H], rax                    ; 0755 _ 48: 89. 45, B0
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_024                                   ; 0759 _ E9, FFFFFFA3
; _vector__init End of function

?_027:  ; Local function
        add     rsp, 80                                 ; 075E _ 48: 83. C4, 50
        pop     rbp                                     ; 0762 _ 5D
        ret                                             ; 0763 _ C3

; Filling space: 0CH
; Filler type: Multi-byte NOP
;       db 66H, 66H, 66H, 2EH, 0FH, 1FH, 84H, 00H
;       db 00H, 00H, 00H, 00H

ALIGN   16

_vector__getDim:; Function begin
        push    rbp                                     ; 0770 _ 55
        mov     rbp, rsp                                ; 0771 _ 48: 89. E5
        sub     rsp, 32                                 ; 0774 _ 48: 83. EC, 20
        mov     qword [rbp-10H], rdi                    ; 0778 _ 48: 89. 7D, F0
        mov     rdi, qword [rbp-10H]                    ; 077C _ 48: 8B. 7D, F0
        mov     qword [rbp-18H], rdi                    ; 0780 _ 48: 89. 7D, E8
        mov     rdi, qword [rbp-18H]                    ; 0784 _ 48: 8B. 7D, E8
        cmp     qword [rdi], 0                          ; 0788 _ 48: 83. 3F, 00
; Note: Immediate operand could be made smaller by sign extension
        jne     ?_028                                   ; 078C _ 0F 85, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_029                                   ; 0792 _ E9, 00000005

?_028:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_030                                   ; 0797 _ E9, 0000000D

?_029:  mov     qword [rbp-8H], 0                       ; 079C _ 48: C7. 45, F8, 00000000
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_031                                   ; 07A4 _ E9, 00000018

?_030:  mov     rax, qword [rbp-18H]                    ; 07A9 _ 48: 8B. 45, E8
        mov     rdi, qword [rax]                        ; 07AD _ 48: 8B. 38
        call    _size                                   ; 07B0 _ E8, 00000000(rel)
        mov     qword [rbp-20H], rax                    ; 07B5 _ 48: 89. 45, E0
        mov     rax, qword [rbp-20H]                    ; 07B9 _ 48: 8B. 45, E0
        mov     qword [rbp-8H], rax                     ; 07BD _ 48: 89. 45, F8
?_031:  mov     rax, qword [rbp-8H]                     ; 07C1 _ 48: 8B. 45, F8
        add     rsp, 32                                 ; 07C5 _ 48: 83. C4, 20
        pop     rbp                                     ; 07C9 _ 5D
        ret                                             ; 07CA _ C3
; _vector__getDim End of function

; Filling space: 5H
; Filler type: Multi-byte NOP
;       db 0FH, 1FH, 44H, 00H, 00H

ALIGN   8

_vector__dot:; Function begin
        push    rbp                                     ; 07D0 _ 55
        mov     rbp, rsp                                ; 07D1 _ 48: 89. E5
        sub     rsp, 64                                 ; 07D4 _ 48: 83. EC, 40
        mov     qword [rbp-8H], rdi                     ; 07D8 _ 48: 89. 7D, F8
        mov     qword [rbp-10H], rsi                    ; 07DC _ 48: 89. 75, F0
        mov     rsi, qword [rbp-8H]                     ; 07E0 _ 48: 8B. 75, F8
        mov     qword [rbp-18H], rsi                    ; 07E4 _ 48: 89. 75, E8
        mov     rsi, qword [rbp-10H]                    ; 07E8 _ 48: 8B. 75, F0
        mov     qword [rbp-20H], rsi                    ; 07EC _ 48: 89. 75, E0
        mov     qword [rbp-38H], 0                      ; 07F0 _ 48: C7. 45, C8, 00000000
        mov     qword [rbp-28H], 0                      ; 07F8 _ 48: C7. 45, D8, 00000000
?_032:  mov     rdi, qword [rbp-18H]                    ; 0800 _ 48: 8B. 7D, E8
        call    _vector__getDim                         ; 0804 _ E8, 00000000(rel)
        mov     qword [rbp-30H], rax                    ; 0809 _ 48: 89. 45, D0
        mov     rax, qword [rbp-38H]                    ; 080D _ 48: 8B. 45, C8
        cmp     rax, qword [rbp-30H]                    ; 0811 _ 48: 3B. 45, D0
; Note: Immediate operand could be made smaller by sign extension
        jge     ?_033                                   ; 0815 _ 0F 8D, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_034                                   ; 081B _ E9, 00000005

?_033:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_035                                   ; 0820 _ E9, 00000040

?_034:  mov     rax, qword [rbp-18H]                    ; 0825 _ 48: 8B. 45, E8
        mov     rax, qword [rax]                        ; 0829 _ 48: 8B. 00
        mov     rcx, qword [rbp-38H]                    ; 082C _ 48: 8B. 4D, C8
        shl     rcx, 3                                  ; 0830 _ 48: C1. E1, 03
        add     rax, rcx                                ; 0834 _ 48: 01. C8
        mov     rax, qword [rax]                        ; 0837 _ 48: 8B. 00
        mov     rcx, qword [rbp-20H]                    ; 083A _ 48: 8B. 4D, E0
        mov     rcx, qword [rcx]                        ; 083E _ 48: 8B. 09
        mov     rdx, qword [rbp-38H]                    ; 0841 _ 48: 8B. 55, C8
        shl     rdx, 3                                  ; 0845 _ 48: C1. E2, 03
        add     rcx, rdx                                ; 0849 _ 48: 01. D1
        imul    rax, qword [rcx]                        ; 084C _ 48: 0F AF. 01
        mov     qword [rbp-28H], rax                    ; 0850 _ 48: 89. 45, D8
        mov     rax, qword [rbp-38H]                    ; 0854 _ 48: 8B. 45, C8
        add     rax, 1                                  ; 0858 _ 48: 83. C0, 01
        mov     qword [rbp-38H], rax                    ; 085C _ 48: 89. 45, C8
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_032                                   ; 0860 _ E9, FFFFFF9B
; _vector__dot End of function

?_035:  ; Local function
        mov     rax, qword [rbp-28H]                    ; 0865 _ 48: 8B. 45, D8
        add     rsp, 64                                 ; 0869 _ 48: 83. C4, 40
        pop     rbp                                     ; 086D _ 5D
        ret                                             ; 086E _ C3

        nop                                             ; 086F _ 90

ALIGN   16
_vector__scalarInPlaceMultiply:; Function begin
        push    rbp                                     ; 0870 _ 55
        mov     rbp, rsp                                ; 0871 _ 48: 89. E5
        sub     rsp, 64                                 ; 0874 _ 48: 83. EC, 40
        mov     qword [rbp-10H], rdi                    ; 0878 _ 48: 89. 7D, F0
        mov     qword [rbp-18H], rsi                    ; 087C _ 48: 89. 75, E8
        mov     rsi, qword [rbp-10H]                    ; 0880 _ 48: 8B. 75, F0
        mov     qword [rbp-20H], rsi                    ; 0884 _ 48: 89. 75, E0
        mov     rsi, qword [rbp-18H]                    ; 0888 _ 48: 8B. 75, E8
        mov     qword [rbp-28H], rsi                    ; 088C _ 48: 89. 75, D8
        mov     rsi, qword [rbp-20H]                    ; 0890 _ 48: 8B. 75, E0
        cmp     qword [rsi], 0                          ; 0894 _ 48: 83. 3E, 00
; Note: Immediate operand could be made smaller by sign extension
        jne     ?_036                                   ; 0898 _ 0F 85, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_037                                   ; 089E _ E9, 00000005

?_036:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_038                                   ; 08A3 _ E9, 0000000D

?_037:  mov     qword [rbp-8H], 0                       ; 08A8 _ 48: C7. 45, F8, 00000000
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_043                                   ; 08B0 _ E9, 00000075

?_038:  mov     qword [rbp-30H], 0                      ; 08B5 _ 48: C7. 45, D0, 00000000
?_039:  mov     rdi, qword [rbp-20H]                    ; 08BD _ 48: 8B. 7D, E0
        call    _vector__getDim                         ; 08C1 _ E8, 00000000(rel)
        mov     qword [rbp-38H], rax                    ; 08C6 _ 48: 89. 45, C8
        mov     rax, qword [rbp-30H]                    ; 08CA _ 48: 8B. 45, D0
        cmp     rax, qword [rbp-38H]                    ; 08CE _ 48: 3B. 45, C8
; Note: Immediate operand could be made smaller by sign extension
        jge     ?_040                                   ; 08D2 _ 0F 8D, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_041                                   ; 08D8 _ E9, 00000005

?_040:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_042                                   ; 08DD _ E9, 00000040

?_041:  mov     rax, qword [rbp-28H]                    ; 08E2 _ 48: 8B. 45, D8
        mov     rcx, qword [rbp-20H]                    ; 08E6 _ 48: 8B. 4D, E0
        mov     rcx, qword [rcx]                        ; 08EA _ 48: 8B. 09
        mov     rdx, qword [rbp-30H]                    ; 08ED _ 48: 8B. 55, D0
        shl     rdx, 3                                  ; 08F1 _ 48: C1. E2, 03
        add     rcx, rdx                                ; 08F5 _ 48: 01. D1
        imul    rax, qword [rcx]                        ; 08F8 _ 48: 0F AF. 01
        mov     rcx, qword [rbp-20H]                    ; 08FC _ 48: 8B. 4D, E0
        mov     rcx, qword [rcx]                        ; 0900 _ 48: 8B. 09
        mov     rdx, qword [rbp-30H]                    ; 0903 _ 48: 8B. 55, D0
        shl     rdx, 3                                  ; 0907 _ 48: C1. E2, 03
        add     rcx, rdx                                ; 090B _ 48: 01. D1
        mov     qword [rcx], rax                        ; 090E _ 48: 89. 01
        mov     rax, qword [rbp-30H]                    ; 0911 _ 48: 8B. 45, D0
        add     rax, 1                                  ; 0915 _ 48: 83. C0, 01
        mov     qword [rbp-30H], rax                    ; 0919 _ 48: 89. 45, D0
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_039                                   ; 091D _ E9, FFFFFF9B

?_042:  mov     rax, qword [rbp-20H]                    ; 0922 _ 48: 8B. 45, E0
        mov     qword [rbp-8H], rax                     ; 0926 _ 48: 89. 45, F8
?_043:  mov     rax, qword [rbp-8H]                     ; 092A _ 48: 8B. 45, F8
        add     rsp, 64                                 ; 092E _ 48: 83. C4, 40
        pop     rbp                                     ; 0932 _ 5D
        ret                                             ; 0933 _ C3
; _vector__scalarInPlaceMultiply End of function

; Filling space: 0CH
; Filler type: Multi-byte NOP
;       db 66H, 66H, 66H, 2EH, 0FH, 1FH, 84H, 00H
;       db 00H, 00H, 00H, 00H

ALIGN   16

_vector__add:; Function begin
        push    rbp                                     ; 0940 _ 55
        mov     rbp, rsp                                ; 0941 _ 48: 89. E5
        sub     rsp, 144                                ; 0944 _ 48: 81. EC, 00000090
        mov     qword [rbp-10H], rdi                    ; 094B _ 48: 89. 7D, F0
        mov     qword [rbp-18H], rsi                    ; 094F _ 48: 89. 75, E8
        mov     rsi, qword [rbp-10H]                    ; 0953 _ 48: 8B. 75, F0
        mov     qword [rbp-20H], rsi                    ; 0957 _ 48: 89. 75, E0
        mov     rsi, qword [rbp-18H]                    ; 095B _ 48: 8B. 75, E8
        mov     qword [rbp-28H], rsi                    ; 095F _ 48: 89. 75, D8
        mov     rdi, qword [rbp-20H]                    ; 0963 _ 48: 8B. 7D, E0
        call    _vector__getDim                         ; 0967 _ E8, 00000000(rel)
        mov     qword [rbp-48H], rax                    ; 096C _ 48: 89. 45, B8
        mov     rdi, qword [rbp-28H]                    ; 0970 _ 48: 8B. 7D, D8
        call    _vector__getDim                         ; 0974 _ E8, 00000000(rel)
        mov     qword [rbp-50H], rax                    ; 0979 _ 48: 89. 45, B0
        mov     rax, qword [rbp-48H]                    ; 097D _ 48: 8B. 45, B8
        cmp     rax, qword [rbp-50H]                    ; 0981 _ 48: 3B. 45, B0
        setne   cl                                      ; 0985 _ 0F 95. C1
        and     cl, 01H                                 ; 0988 _ 80. E1, 01
        movzx   edx, cl                                 ; 098B _ 0F B6. D1
        movsxd  rax, edx                                ; 098E _ 48: 63. C2
        mov     qword [rbp-40H], rax                    ; 0991 _ 48: 89. 45, C0
        cmp     qword [rbp-40H], 0                      ; 0995 _ 48: 83. 7D, C0, 00
; Note: Immediate operand could be made smaller by sign extension
        je      ?_044                                   ; 099A _ 0F 84, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_045                                   ; 09A0 _ E9, 00000005

?_044:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_046                                   ; 09A5 _ E9, 00000022

?_045:  mov     rdi, qword [rbp-20H]                    ; 09AA _ 48: 8B. 7D, E0
        call    _vector__getDim                         ; 09AE _ E8, 00000000(rel)
        mov     qword [rbp-58H], rax                    ; 09B3 _ 48: 89. 45, A8
        cmp     qword [rbp-58H], 0                      ; 09B7 _ 48: 83. 7D, A8, 00
        sete    cl                                      ; 09BC _ 0F 94. C1
        and     cl, 01H                                 ; 09BF _ 80. E1, 01
        movzx   edx, cl                                 ; 09C2 _ 0F B6. D1
        movsxd  rax, edx                                ; 09C5 _ 48: 63. C2
        mov     qword [rbp-40H], rax                    ; 09C8 _ 48: 89. 45, C0
?_046:  cmp     qword [rbp-40H], 0                      ; 09CC _ 48: 83. 7D, C0, 00
; Note: Immediate operand could be made smaller by sign extension
        je      ?_047                                   ; 09D1 _ 0F 84, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_048                                   ; 09D7 _ E9, 00000005

?_047:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_049                                   ; 09DC _ E9, 0000000D

?_048:  mov     qword [rbp-8H], 0                       ; 09E1 _ 48: C7. 45, F8, 00000000
        jmp     ?_054                                   ; 09E9 _ E9, 000000F2

?_049:  mov     eax, 8                                  ; 09EE _ B8, 00000008
        mov     edi, eax                                ; 09F3 _ 89. C7
        call    ___lib_malloc                           ; 09F5 _ E8, 00000000(rel)
        mov     qword [rbp-70H], rax                    ; 09FA _ 48: 89. 45, 90
        mov     rax, qword [rbp-70H]                    ; 09FE _ 48: 8B. 45, 90
        mov     qword [rbp-30H], rax                    ; 0A02 _ 48: 89. 45, D0
        mov     rdi, qword [rbp-20H]                    ; 0A06 _ 48: 8B. 7D, E0
        call    _vector__getDim                         ; 0A0A _ E8, 00000000(rel)
        mov     qword [rbp-80H], rax                    ; 0A0F _ 48: 89. 45, 80
        mov     rax, qword [rbp-80H]                    ; 0A13 _ 48: 8B. 45, 80
        mov     qword [rbp-60H], rax                    ; 0A17 _ 48: 89. 45, A0
        mov     rax, qword [rbp-60H]                    ; 0A1B _ 48: 8B. 45, A0
        shl     rax, 3                                  ; 0A1F _ 48: C1. E0, 03
        add     rax, 8                                  ; 0A23 _ 48: 83. C0, 08
        mov     rdi, rax                                ; 0A27 _ 48: 89. C7
        call    ___lib_malloc                           ; 0A2A _ E8, 00000000(rel)
        mov     qword [rbp-78H], rax                    ; 0A2F _ 48: 89. 45, 88
        mov     rax, qword [rbp-60H]                    ; 0A33 _ 48: 8B. 45, A0
        mov     rdi, qword [rbp-78H]                    ; 0A37 _ 48: 8B. 7D, 88
        mov     qword [rdi], rax                        ; 0A3B _ 48: 89. 07
        mov     rax, qword [rbp-78H]                    ; 0A3E _ 48: 8B. 45, 88
        add     rax, 8                                  ; 0A42 _ 48: 83. C0, 08
        mov     qword [rbp-78H], rax                    ; 0A46 _ 48: 89. 45, 88
        mov     rax, qword [rbp-78H]                    ; 0A4A _ 48: 8B. 45, 88
        mov     rdi, qword [rbp-30H]                    ; 0A4E _ 48: 8B. 7D, D0
        mov     qword [rdi], rax                        ; 0A52 _ 48: 89. 07
        mov     qword [rbp-38H], 0                      ; 0A55 _ 48: C7. 45, C8, 00000000
?_050:  mov     rdi, qword [rbp-20H]                    ; 0A5D _ 48: 8B. 7D, E0
        call    _vector__getDim                         ; 0A61 _ E8, 00000000(rel)
        mov     qword [rbp-88H], rax                    ; 0A66 _ 48: 89. 85, FFFFFF78
        mov     rax, qword [rbp-38H]                    ; 0A6D _ 48: 8B. 45, C8
        cmp     rax, qword [rbp-88H]                    ; 0A71 _ 48: 3B. 85, FFFFFF78
; Note: Immediate operand could be made smaller by sign extension
        jge     ?_051                                   ; 0A78 _ 0F 8D, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_052                                   ; 0A7E _ E9, 00000005

?_051:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_053                                   ; 0A83 _ E9, 00000050

?_052:  mov     rax, qword [rbp-20H]                    ; 0A88 _ 48: 8B. 45, E0
        mov     rax, qword [rax]                        ; 0A8C _ 48: 8B. 00
        mov     rcx, qword [rbp-38H]                    ; 0A8F _ 48: 8B. 4D, C8
        shl     rcx, 3                                  ; 0A93 _ 48: C1. E1, 03
        add     rax, rcx                                ; 0A97 _ 48: 01. C8
        mov     rax, qword [rax]                        ; 0A9A _ 48: 8B. 00
        mov     rcx, qword [rbp-28H]                    ; 0A9D _ 48: 8B. 4D, D8
        mov     rcx, qword [rcx]                        ; 0AA1 _ 48: 8B. 09
        mov     rdx, qword [rbp-38H]                    ; 0AA4 _ 48: 8B. 55, C8
        shl     rdx, 3                                  ; 0AA8 _ 48: C1. E2, 03
        add     rcx, rdx                                ; 0AAC _ 48: 01. D1
        add     rax, qword [rcx]                        ; 0AAF _ 48: 03. 01
        mov     rcx, qword [rbp-30H]                    ; 0AB2 _ 48: 8B. 4D, D0
        mov     rcx, qword [rcx]                        ; 0AB6 _ 48: 8B. 09
        mov     rdx, qword [rbp-38H]                    ; 0AB9 _ 48: 8B. 55, C8
        shl     rdx, 3                                  ; 0ABD _ 48: C1. E2, 03
        add     rcx, rdx                                ; 0AC1 _ 48: 01. D1
        mov     qword [rcx], rax                        ; 0AC4 _ 48: 89. 01
        mov     rax, qword [rbp-38H]                    ; 0AC7 _ 48: 8B. 45, C8
        add     rax, 1                                  ; 0ACB _ 48: 83. C0, 01
        mov     qword [rbp-38H], rax                    ; 0ACF _ 48: 89. 45, C8
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_050                                   ; 0AD3 _ E9, FFFFFF85

?_053:  mov     rax, qword [rbp-30H]                    ; 0AD8 _ 48: 8B. 45, D0
        mov     qword [rbp-8H], rax                     ; 0ADC _ 48: 89. 45, F8
?_054:  mov     rax, qword [rbp-8H]                     ; 0AE0 _ 48: 8B. 45, F8
        add     rsp, 144                                ; 0AE4 _ 48: 81. C4, 00000090
        pop     rbp                                     ; 0AEB _ 5D
        ret                                             ; 0AEC _ C3
; _vector__add End of function

; Filling space: 3H
; Filler type: Multi-byte NOP
;       db 0FH, 1FH, 00H

ALIGN   8

_vector__set:; Function begin
        push    rbp                                     ; 0AF0 _ 55
        mov     rbp, rsp                                ; 0AF1 _ 48: 89. E5
        sub     rsp, 64                                 ; 0AF4 _ 48: 83. EC, 40
        mov     qword [rbp-10H], rdi                    ; 0AF8 _ 48: 89. 7D, F0
        mov     qword [rbp-18H], rsi                    ; 0AFC _ 48: 89. 75, E8
        mov     qword [rbp-20H], rdx                    ; 0B00 _ 48: 89. 55, E0
        mov     rdx, qword [rbp-10H]                    ; 0B04 _ 48: 8B. 55, F0
        mov     qword [rbp-28H], rdx                    ; 0B08 _ 48: 89. 55, D8
        mov     rdx, qword [rbp-18H]                    ; 0B0C _ 48: 8B. 55, E8
        mov     qword [rbp-30H], rdx                    ; 0B10 _ 48: 89. 55, D0
        mov     rdx, qword [rbp-20H]                    ; 0B14 _ 48: 8B. 55, E0
        mov     qword [rbp-38H], rdx                    ; 0B18 _ 48: 89. 55, C8
        mov     rdi, qword [rbp-28H]                    ; 0B1C _ 48: 8B. 7D, D8
        call    _vector__getDim                         ; 0B20 _ E8, 00000000(rel)
        mov     qword [rbp-40H], rax                    ; 0B25 _ 48: 89. 45, C0
        mov     rax, qword [rbp-40H]                    ; 0B29 _ 48: 8B. 45, C0
        cmp     rax, qword [rbp-30H]                    ; 0B2D _ 48: 3B. 45, D0
; Note: Immediate operand could be made smaller by sign extension
        jge     ?_055                                   ; 0B31 _ 0F 8D, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_056                                   ; 0B37 _ E9, 00000005

?_055:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_057                                   ; 0B3C _ E9, 0000000D

?_056:  mov     qword [rbp-8H], 0                       ; 0B41 _ 48: C7. 45, F8, 00000000
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_058                                   ; 0B49 _ E9, 00000021

?_057:  mov     rax, qword [rbp-38H]                    ; 0B4E _ 48: 8B. 45, C8
        mov     rcx, qword [rbp-28H]                    ; 0B52 _ 48: 8B. 4D, D8
        mov     rcx, qword [rcx]                        ; 0B56 _ 48: 8B. 09
        mov     rdx, qword [rbp-30H]                    ; 0B59 _ 48: 8B. 55, D0
        shl     rdx, 3                                  ; 0B5D _ 48: C1. E2, 03
        add     rcx, rdx                                ; 0B61 _ 48: 01. D1
        mov     qword [rcx], rax                        ; 0B64 _ 48: 89. 01
        mov     qword [rbp-8H], 1                       ; 0B67 _ 48: C7. 45, F8, 00000001
?_058:  mov     rax, qword [rbp-8H]                     ; 0B6F _ 48: 8B. 45, F8
        add     rsp, 64                                 ; 0B73 _ 48: 83. C4, 40
        pop     rbp                                     ; 0B77 _ 5D
        ret                                             ; 0B78 _ C3
; _vector__set End of function

; Filling space: 7H
; Filler type: Multi-byte NOP
;       db 0FH, 1FH, 80H, 00H, 00H, 00H, 00H

ALIGN   8

_vector__tostring:; Function begin
        push    rbp                                     ; 0B80 _ 55
        mov     rbp, rsp                                ; 0B81 _ 48: 89. E5
        sub     rsp, 80                                 ; 0B84 _ 48: 83. EC, 50
        lea     rax, [rel _substring+4D6H]              ; 0B88 _ 48: 8D. 05, 000004D6(rel)
        mov     qword [rbp-8H], rdi                     ; 0B8F _ 48: 89. 7D, F8
        mov     rdi, qword [rbp-8H]                     ; 0B93 _ 48: 8B. 7D, F8
        mov     qword [rbp-10H], rdi                    ; 0B97 _ 48: 89. 7D, F0
        mov     rdi, rax                                ; 0B9B _ 48: 89. C7
        call    _toMoStr                                ; 0B9E _ E8, 00000000(rel)
        mov     qword [rbp-18H], rax                    ; 0BA3 _ 48: 89. 45, E8
        mov     rdi, qword [rbp-10H]                    ; 0BA7 _ 48: 8B. 7D, F0
        call    _vector__getDim                         ; 0BAB _ E8, 00000000(rel)
        mov     qword [rbp-30H], rax                    ; 0BB0 _ 48: 89. 45, D0
        cmp     qword [rbp-30H], 0                      ; 0BB4 _ 48: 83. 7D, D0, 00
; Note: Immediate operand could be made smaller by sign extension
        jle     ?_059                                   ; 0BB9 _ 0F 8E, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_060                                   ; 0BBF _ E9, 00000005

?_059:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_061                                   ; 0BC4 _ E9, 00000024

?_060:  mov     rax, qword [rbp-10H]                    ; 0BC9 _ 48: 8B. 45, F0
        mov     rax, qword [rax]                        ; 0BCD _ 48: 8B. 00
        mov     rdi, qword [rax]                        ; 0BD0 _ 48: 8B. 38
        call    _toString                               ; 0BD3 _ E8, 00000000(rel)
        mov     qword [rbp-38H], rax                    ; 0BD8 _ 48: 89. 45, C8
        mov     rdi, qword [rbp-18H]                    ; 0BDC _ 48: 8B. 7D, E8
        mov     rsi, qword [rbp-38H]                    ; 0BE0 _ 48: 8B. 75, C8
        call    _str_add                                ; 0BE4 _ E8, 00000000(rel)
        mov     qword [rbp-18H], rax                    ; 0BE9 _ 48: 89. 45, E8
?_061:  mov     qword [rbp-28H], 1                      ; 0BED _ 48: C7. 45, D8, 00000001
?_062:  mov     rdi, qword [rbp-10H]                    ; 0BF5 _ 48: 8B. 7D, F0
        call    _vector__getDim                         ; 0BF9 _ E8, 00000000(rel)
        mov     qword [rbp-20H], rax                    ; 0BFE _ 48: 89. 45, E0
        mov     rax, qword [rbp-28H]                    ; 0C02 _ 48: 8B. 45, D8
        cmp     rax, qword [rbp-20H]                    ; 0C06 _ 48: 3B. 45, E0
; Note: Immediate operand could be made smaller by sign extension
        jge     ?_063                                   ; 0C0A _ 0F 8D, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_064                                   ; 0C10 _ E9, 00000005

?_063:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_065                                   ; 0C15 _ E9, 0000005F

?_064:  mov     rax, qword [rbp-10H]                    ; 0C1A _ 48: 8B. 45, F0
        mov     rax, qword [rax]                        ; 0C1E _ 48: 8B. 00
        mov     rcx, qword [rbp-28H]                    ; 0C21 _ 48: 8B. 4D, D8
        shl     rcx, 3                                  ; 0C25 _ 48: C1. E1, 03
        add     rax, rcx                                ; 0C29 _ 48: 01. C8
        mov     rdi, qword [rax]                        ; 0C2C _ 48: 8B. 38
        call    _toString                               ; 0C2F _ E8, 00000000(rel)
        lea     rdi, [rel _substring+42DH]              ; 0C34 _ 48: 8D. 3D, 0000042D(rel)
        mov     qword [rbp-40H], rax                    ; 0C3B _ 48: 89. 45, C0
        mov     rax, qword [rbp-18H]                    ; 0C3F _ 48: 8B. 45, E8
        mov     qword [rbp-48H], rax                    ; 0C43 _ 48: 89. 45, B8
        call    _toMoStr                                ; 0C47 _ E8, 00000000(rel)
        mov     rdi, qword [rbp-48H]                    ; 0C4C _ 48: 8B. 7D, B8
        mov     rsi, rax                                ; 0C50 _ 48: 89. C6
        call    _str_add                                ; 0C53 _ E8, 00000000(rel)
        mov     rsi, qword [rbp-40H]                    ; 0C58 _ 48: 8B. 75, C0
        mov     rdi, rax                                ; 0C5C _ 48: 89. C7
        call    _str_add                                ; 0C5F _ E8, 00000000(rel)
        mov     qword [rbp-18H], rax                    ; 0C64 _ 48: 89. 45, E8
        mov     rax, qword [rbp-28H]                    ; 0C68 _ 48: 8B. 45, D8
        add     rax, 1                                  ; 0C6C _ 48: 83. C0, 01
        mov     qword [rbp-28H], rax                    ; 0C70 _ 48: 89. 45, D8
        jmp     ?_062                                   ; 0C74 _ E9, FFFFFF7C
; _vector__tostring End of function

?_065:  ; Local function
        lea     rdi, [rel _substring+3EBH]              ; 0C79 _ 48: 8D. 3D, 000003EB(rel)
        mov     rax, qword [rbp-18H]                    ; 0C80 _ 48: 8B. 45, E8
        mov     qword [rbp-50H], rax                    ; 0C84 _ 48: 89. 45, B0
        call    _toMoStr                                ; 0C88 _ E8, 00000000(rel)
        mov     rdi, qword [rbp-50H]                    ; 0C8D _ 48: 8B. 7D, B0
        mov     rsi, rax                                ; 0C91 _ 48: 89. C6
        call    _str_add                                ; 0C94 _ E8, 00000000(rel)
        mov     qword [rbp-18H], rax                    ; 0C99 _ 48: 89. 45, E8
        mov     rax, qword [rbp-18H]                    ; 0C9D _ 48: 8B. 45, E8
        add     rsp, 80                                 ; 0CA1 _ 48: 83. C4, 50
        pop     rbp                                     ; 0CA5 _ 5D
        ret                                             ; 0CA6 _ C3

; Filling space: 9H
; Filler type: Multi-byte NOP
;       db 66H, 0FH, 1FH, 84H, 00H, 00H, 00H, 00H
;       db 00H

ALIGN   16

_vector__copy:; Function begin
        push    rbp                                     ; 0CB0 _ 55
        mov     rbp, rsp                                ; 0CB1 _ 48: 89. E5
        sub     rsp, 96                                 ; 0CB4 _ 48: 83. EC, 60
        mov     qword [rbp-10H], rdi                    ; 0CB8 _ 48: 89. 7D, F0
        mov     qword [rbp-18H], rsi                    ; 0CBC _ 48: 89. 75, E8
        mov     rsi, qword [rbp-10H]                    ; 0CC0 _ 48: 8B. 75, F0
        mov     qword [rbp-20H], rsi                    ; 0CC4 _ 48: 89. 75, E0
        mov     rsi, qword [rbp-18H]                    ; 0CC8 _ 48: 8B. 75, E8
        mov     qword [rbp-28H], rsi                    ; 0CCC _ 48: 89. 75, D8
        cmp     qword [rbp-28H], 0                      ; 0CD0 _ 48: 83. 7D, D8, 00
; Note: Immediate operand could be made smaller by sign extension
        jne     ?_066                                   ; 0CD5 _ 0F 85, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_067                                   ; 0CDB _ E9, 00000005

?_066:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_068                                   ; 0CE0 _ E9, 0000000D

?_067:  mov     qword [rbp-8H], 0                       ; 0CE5 _ 48: C7. 45, F8, 00000000
        jmp     ?_077                                   ; 0CED _ E9, 000000F6

?_068:  mov     rdi, qword [rbp-28H]                    ; 0CF2 _ 48: 8B. 7D, D8
        call    _vector__getDim                         ; 0CF6 _ E8, 00000000(rel)
        mov     qword [rbp-30H], rax                    ; 0CFB _ 48: 89. 45, D0
        cmp     qword [rbp-30H], 0                      ; 0CFF _ 48: 83. 7D, D0, 00
; Note: Immediate operand could be made smaller by sign extension
        jne     ?_069                                   ; 0D04 _ 0F 85, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_070                                   ; 0D0A _ E9, 00000005

?_069:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_071                                   ; 0D0F _ E9, 00000010

?_070:  mov     rax, qword [rbp-20H]                    ; 0D14 _ 48: 8B. 45, E0
        mov     qword [rax], 0                          ; 0D18 _ 48: C7. 00, 00000000
        jmp     ?_076                                   ; 0D1F _ E9, 000000BC

?_071:  mov     rdi, qword [rbp-28H]                    ; 0D24 _ 48: 8B. 7D, D8
        call    _vector__getDim                         ; 0D28 _ E8, 00000000(rel)
        mov     qword [rbp-58H], rax                    ; 0D2D _ 48: 89. 45, A8
        mov     rax, qword [rbp-58H]                    ; 0D31 _ 48: 8B. 45, A8
        mov     qword [rbp-38H], rax                    ; 0D35 _ 48: 89. 45, C8
        mov     rax, qword [rbp-38H]                    ; 0D39 _ 48: 8B. 45, C8
        shl     rax, 3                                  ; 0D3D _ 48: C1. E0, 03
        add     rax, 8                                  ; 0D41 _ 48: 83. C0, 08
        mov     rdi, rax                                ; 0D45 _ 48: 89. C7
        call    ___lib_malloc                           ; 0D48 _ E8, 00000000(rel)
        mov     qword [rbp-50H], rax                    ; 0D4D _ 48: 89. 45, B0
        mov     rax, qword [rbp-38H]                    ; 0D51 _ 48: 8B. 45, C8
        mov     rdi, qword [rbp-50H]                    ; 0D55 _ 48: 8B. 7D, B0
        mov     qword [rdi], rax                        ; 0D59 _ 48: 89. 07
        mov     rax, qword [rbp-50H]                    ; 0D5C _ 48: 8B. 45, B0
        add     rax, 8                                  ; 0D60 _ 48: 83. C0, 08
        mov     qword [rbp-50H], rax                    ; 0D64 _ 48: 89. 45, B0
        mov     rax, qword [rbp-50H]                    ; 0D68 _ 48: 8B. 45, B0
        mov     rdi, qword [rbp-20H]                    ; 0D6C _ 48: 8B. 7D, E0
        mov     qword [rdi], rax                        ; 0D70 _ 48: 89. 07
        mov     qword [rbp-40H], 0                      ; 0D73 _ 48: C7. 45, C0, 00000000
?_072:  mov     rdi, qword [rbp-20H]                    ; 0D7B _ 48: 8B. 7D, E0
        call    _vector__getDim                         ; 0D7F _ E8, 00000000(rel)
        mov     qword [rbp-60H], rax                    ; 0D84 _ 48: 89. 45, A0
        mov     rax, qword [rbp-40H]                    ; 0D88 _ 48: 8B. 45, C0
        cmp     rax, qword [rbp-60H]                    ; 0D8C _ 48: 3B. 45, A0
; Note: Immediate operand could be made smaller by sign extension
        jge     ?_073                                   ; 0D90 _ 0F 8D, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_074                                   ; 0D96 _ E9, 00000005

?_073:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_075                                   ; 0D9B _ E9, 0000003B

?_074:  mov     rax, qword [rbp-28H]                    ; 0DA0 _ 48: 8B. 45, D8
        mov     rax, qword [rax]                        ; 0DA4 _ 48: 8B. 00
        mov     rcx, qword [rbp-40H]                    ; 0DA7 _ 48: 8B. 4D, C0
        shl     rcx, 3                                  ; 0DAB _ 48: C1. E1, 03
        add     rax, rcx                                ; 0DAF _ 48: 01. C8
        mov     rax, qword [rax]                        ; 0DB2 _ 48: 8B. 00
        mov     rcx, qword [rbp-20H]                    ; 0DB5 _ 48: 8B. 4D, E0
        mov     rcx, qword [rcx]                        ; 0DB9 _ 48: 8B. 09
        mov     rdx, qword [rbp-40H]                    ; 0DBC _ 48: 8B. 55, C0
        shl     rdx, 3                                  ; 0DC0 _ 48: C1. E2, 03
        add     rcx, rdx                                ; 0DC4 _ 48: 01. D1
        mov     qword [rcx], rax                        ; 0DC7 _ 48: 89. 01
        mov     rax, qword [rbp-40H]                    ; 0DCA _ 48: 8B. 45, C0
        add     rax, 1                                  ; 0DCE _ 48: 83. C0, 01
        mov     qword [rbp-40H], rax                    ; 0DD2 _ 48: 89. 45, C0
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_072                                   ; 0DD6 _ E9, FFFFFFA0

?_075:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_076                                   ; 0DDB _ E9, 00000000

?_076:  mov     qword [rbp-8H], 1                       ; 0DE0 _ 48: C7. 45, F8, 00000001
?_077:  mov     rax, qword [rbp-8H]                     ; 0DE8 _ 48: 8B. 45, F8
        add     rsp, 96                                 ; 0DEC _ 48: 83. C4, 60
        pop     rbp                                     ; 0DF0 _ 5D
        ret                                             ; 0DF1 _ C3
; _vector__copy End of function

; Filling space: 0EH
; Filler type: Multi-byte NOP
;       db 66H, 66H, 66H, 66H, 66H, 2EH, 0FH, 1FH
;       db 84H, 00H, 00H, 00H, 00H, 00H

ALIGN   16

_main:  ; Function begin
        push    rbp                                     ; 0E00 _ 55
        mov     rbp, rsp                                ; 0E01 _ 48: 89. E5
        sub     rsp, 160                                ; 0E04 _ 48: 81. EC, 000000A0
        mov     eax, 8                                  ; 0E0B _ B8, 00000008
        mov     edi, eax                                ; 0E10 _ 89. C7
        mov     dword [rbp-4H], 0                       ; 0E12 _ C7. 45, FC, 00000000
        call    ___lib_malloc                           ; 0E19 _ E8, 00000000(rel)
        mov     qword [rbp-88H], rax                    ; 0E1E _ 48: 89. 85, FFFFFF78
        mov     rax, qword [rbp-88H]                    ; 0E25 _ 48: 8B. 85, FFFFFF78
        mov     qword [rbp-58H], rax                    ; 0E2C _ 48: 89. 45, A8
        mov     qword [rbp-48H], 10                     ; 0E30 _ 48: C7. 45, B8, 0000000A
        mov     rax, qword [rbp-48H]                    ; 0E38 _ 48: 8B. 45, B8
        shl     rax, 3                                  ; 0E3C _ 48: C1. E0, 03
        add     rax, 8                                  ; 0E40 _ 48: 83. C0, 08
        mov     rdi, rax                                ; 0E44 _ 48: 89. C7
        call    ___lib_malloc                           ; 0E47 _ E8, 00000000(rel)
        mov     qword [rbp-38H], rax                    ; 0E4C _ 48: 89. 45, C8
        mov     rax, qword [rbp-48H]                    ; 0E50 _ 48: 8B. 45, B8
        mov     rdi, qword [rbp-38H]                    ; 0E54 _ 48: 8B. 7D, C8
        mov     qword [rdi], rax                        ; 0E58 _ 48: 89. 07
        mov     rax, qword [rbp-38H]                    ; 0E5B _ 48: 8B. 45, C8
        add     rax, 8                                  ; 0E5F _ 48: 83. C0, 08
        mov     qword [rbp-38H], rax                    ; 0E63 _ 48: 89. 45, C8
        mov     rax, qword [rbp-38H]                    ; 0E67 _ 48: 8B. 45, C8
        mov     qword [rbp-10H], rax                    ; 0E6B _ 48: 89. 45, F0
        mov     qword [rbp-18H], 0                      ; 0E6F _ 48: C7. 45, E8, 00000000
?_078:  cmp     qword [rbp-18H], 10                     ; 0E77 _ 48: 83. 7D, E8, 0A
; Note: Immediate operand could be made smaller by sign extension
        jge     ?_079                                   ; 0E7C _ 0F 8D, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_080                                   ; 0E82 _ E9, 00000005

?_079:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_081                                   ; 0E87 _ E9, 0000002E

?_080:  mov     eax, 9                                  ; 0E8C _ B8, 00000009
        mov     ecx, eax                                ; 0E91 _ 89. C1
        sub     rcx, qword [rbp-18H]                    ; 0E93 _ 48: 2B. 4D, E8
        mov     rdx, qword [rbp-10H]                    ; 0E97 _ 48: 8B. 55, F0
        mov     rsi, qword [rbp-18H]                    ; 0E9B _ 48: 8B. 75, E8
        shl     rsi, 3                                  ; 0E9F _ 48: C1. E6, 03
        add     rdx, rsi                                ; 0EA3 _ 48: 01. F2
        mov     qword [rdx], rcx                        ; 0EA6 _ 48: 89. 0A
        mov     rax, qword [rbp-18H]                    ; 0EA9 _ 48: 8B. 45, E8
        add     rax, 1                                  ; 0EAD _ 48: 83. C0, 01
        mov     qword [rbp-18H], rax                    ; 0EB1 _ 48: 89. 45, E8
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_078                                   ; 0EB5 _ E9, FFFFFFBD
; _main End of function

?_081:  ; Local function
        mov     rdi, qword [rbp-58H]                    ; 0EBA _ 48: 8B. 7D, A8
        mov     rsi, qword [rbp-10H]                    ; 0EBE _ 48: 8B. 75, F0
        call    _vector__init                           ; 0EC2 _ E8, 00000000(rel)
        lea     rdi, [rel _strlength]                   ; 0EC7 _ 48: 8D. 3D, 000001A0(rel)
        call    _toMoStr                                ; 0ECE _ E8, 00000000(rel)
        mov     rdi, rax                                ; 0ED3 _ 48: 89. C7
        call    _print                                  ; 0ED6 _ E8, 00000000(rel)
        mov     rdi, qword [rbp-58H]                    ; 0EDB _ 48: 8B. 7D, A8
        call    _vector__tostring                       ; 0EDF _ E8, 00000000(rel)
        mov     qword [rbp-30H], rax                    ; 0EE4 _ 48: 89. 45, D0
        mov     rdi, qword [rbp-30H]                    ; 0EE8 _ 48: 8B. 7D, D0
        call    _println                                ; 0EEC _ E8, 00000000(rel)
        mov     ecx, 8                                  ; 0EF1 _ B9, 00000008
        mov     edi, ecx                                ; 0EF6 _ 89. CF
        call    ___lib_malloc                           ; 0EF8 _ E8, 00000000(rel)
        mov     qword [rbp-78H], rax                    ; 0EFD _ 48: 89. 45, 88
        mov     rax, qword [rbp-78H]                    ; 0F01 _ 48: 8B. 45, 88
        mov     qword [rbp-68H], rax                    ; 0F05 _ 48: 89. 45, 98
        mov     rdi, qword [rbp-68H]                    ; 0F09 _ 48: 8B. 7D, 98
        mov     rsi, qword [rbp-58H]                    ; 0F0D _ 48: 8B. 75, A8
        call    _vector__copy                           ; 0F11 _ E8, 00000000(rel)
        mov     ecx, 3                                  ; 0F16 _ B9, 00000003
        mov     esi, ecx                                ; 0F1B _ 89. CE
        mov     ecx, 817                                ; 0F1D _ B9, 00000331
        mov     edx, ecx                                ; 0F22 _ 89. CA
        mov     rdi, qword [rbp-68H]                    ; 0F24 _ 48: 8B. 7D, 98
        mov     qword [rbp-0A0H], rax                   ; 0F28 _ 48: 89. 85, FFFFFF60
        call    _vector__set                            ; 0F2F _ E8, 00000000(rel)
        mov     qword [rbp-80H], rax                    ; 0F34 _ 48: 89. 45, 80
        cmp     qword [rbp-80H], 0                      ; 0F38 _ 48: 83. 7D, 80, 00
; Note: Immediate operand could be made smaller by sign extension
        je      ?_082                                   ; 0F3D _ 0F 84, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_083                                   ; 0F43 _ E9, 00000005

?_082:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_084                                   ; 0F48 _ E9, 00000014

?_083:  lea     rdi, [rel _substring+125H]              ; 0F4D _ 48: 8D. 3D, 00000125(rel)
        call    _toMoStr                                ; 0F54 _ E8, 00000000(rel)
        mov     rdi, rax                                ; 0F59 _ 48: 89. C7
        call    _println                                ; 0F5C _ E8, 00000000(rel)
?_084:  lea     rdi, [rel _substring+11AH]              ; 0F61 _ 48: 8D. 3D, 0000011A(rel)
        call    _toMoStr                                ; 0F68 _ E8, 00000000(rel)
        mov     rdi, rax                                ; 0F6D _ 48: 89. C7
        call    _print                                  ; 0F70 _ E8, 00000000(rel)
        mov     rdi, qword [rbp-68H]                    ; 0F75 _ 48: 8B. 7D, 98
        call    _vector__tostring                       ; 0F79 _ E8, 00000000(rel)
        mov     qword [rbp-60H], rax                    ; 0F7E _ 48: 89. 45, A0
        mov     rdi, qword [rbp-60H]                    ; 0F82 _ 48: 8B. 7D, A0
        call    _println                                ; 0F86 _ E8, 00000000(rel)
        lea     rdi, [rel _substring+0FBH]              ; 0F8B _ 48: 8D. 3D, 000000FB(rel)
        call    _toMoStr                                ; 0F92 _ E8, 00000000(rel)
        mov     rdi, rax                                ; 0F97 _ 48: 89. C7
        call    _print                                  ; 0F9A _ E8, 00000000(rel)
        mov     rdi, qword [rbp-58H]                    ; 0F9F _ 48: 8B. 7D, A8
        mov     rsi, qword [rbp-68H]                    ; 0FA3 _ 48: 8B. 75, 98
        call    _vector__add                            ; 0FA7 _ E8, 00000000(rel)
        mov     qword [rbp-70H], rax                    ; 0FAC _ 48: 89. 45, 90
        mov     rdi, qword [rbp-70H]                    ; 0FB0 _ 48: 8B. 7D, 90
        call    _vector__tostring                       ; 0FB4 _ E8, 00000000(rel)
        mov     qword [rbp-90H], rax                    ; 0FB9 _ 48: 89. 85, FFFFFF70
        mov     rdi, qword [rbp-90H]                    ; 0FC0 _ 48: 8B. BD, FFFFFF70
        call    _println                                ; 0FC7 _ E8, 00000000(rel)
        lea     rdi, [rel _substring+0C2H]              ; 0FCC _ 48: 8D. 3D, 000000C2(rel)
        call    _toMoStr                                ; 0FD3 _ E8, 00000000(rel)
        mov     rdi, rax                                ; 0FD8 _ 48: 89. C7
        call    _print                                  ; 0FDB _ E8, 00000000(rel)
        mov     rdi, qword [rbp-58H]                    ; 0FE0 _ 48: 8B. 7D, A8
        mov     rsi, qword [rbp-68H]                    ; 0FE4 _ 48: 8B. 75, 98
        call    _vector__dot                            ; 0FE8 _ E8, 00000000(rel)
        mov     qword [rbp-98H], rax                    ; 0FED _ 48: 89. 85, FFFFFF68
        mov     rdi, qword [rbp-98H]                    ; 0FF4 _ 48: 8B. BD, FFFFFF68
        call    _toString                               ; 0FFB _ E8, 00000000(rel)
        mov     qword [rbp-20H], rax                    ; 1000 _ 48: 89. 45, E0
        mov     rdi, qword [rbp-20H]                    ; 1004 _ 48: 8B. 7D, E0
        call    _println                                ; 1008 _ E8, 00000000(rel)
        lea     rdi, [rel _substring+89H]               ; 100D _ 48: 8D. 3D, 00000089(rel)
        call    _toMoStr                                ; 1014 _ E8, 00000000(rel)
        mov     rdi, rax                                ; 1019 _ 48: 89. C7
        call    _print                                  ; 101C _ E8, 00000000(rel)
        mov     ecx, 8                                  ; 1021 _ B9, 00000008
        mov     esi, ecx                                ; 1026 _ 89. CE
        mov     rdi, qword [rbp-68H]                    ; 1028 _ 48: 8B. 7D, 98
        call    _vector__scalarInPlaceMultiply          ; 102C _ E8, 00000000(rel)
        mov     qword [rbp-40H], rax                    ; 1031 _ 48: 89. 45, C0
        mov     rdi, qword [rbp-40H]                    ; 1035 _ 48: 8B. 7D, C0
        call    _vector__tostring                       ; 1039 _ E8, 00000000(rel)
        mov     qword [rbp-50H], rax                    ; 103E _ 48: 89. 45, B0
        mov     rdi, qword [rbp-50H]                    ; 1042 _ 48: 8B. 7D, B0
        call    _println                                ; 1046 _ E8, 00000000(rel)
        xor     eax, eax                                ; 104B _ 31. C0
        add     rsp, 160                                ; 104D _ 48: 81. C4, 000000A0
        pop     rbp                                     ; 1054 _ 5D
        ret                                             ; 1055 _ C3


SECTION ._TEXT.__cstring align=1 noexecute              ; section number 2, data

        db 25H, 64H, 00H, 25H, 6CH, 64H, 0AH, 00H       ; 1056 _ %d.%ld..
        db 25H, 6CH, 64H, 00H, 25H, 73H, 00H, 28H       ; 105E _ %ld.%s.(
        db 20H, 00H, 2CH, 20H, 00H, 20H, 29H, 00H       ; 1066 _  ., . ).
        db 76H, 65H, 63H, 74H, 6FH, 72H, 20H, 78H       ; 106E _ vector x
        db 3AH, 20H, 00H, 65H, 78H, 63H, 69H, 74H       ; 1076 _ : .excit
        db 65H, 64H, 21H, 00H, 76H, 65H, 63H, 74H       ; 107E _ ed!.vect
        db 6FH, 72H, 20H, 79H, 3AH, 20H, 00H, 78H       ; 1086 _ or y: .x
        db 20H, 2BH, 20H, 79H, 3AH, 20H, 00H, 78H       ; 108E _  + y: .x
        db 20H, 2AH, 20H, 79H, 3AH, 20H, 00H, 28H       ; 1096 _  * y: .(
        db 31H, 20H, 3CH, 3CH, 20H, 33H, 29H, 20H       ; 109E _ 1 << 3) 
        db 2AH, 20H, 79H, 3AH, 20H, 00H                 ; 10A6 _ * y: .


