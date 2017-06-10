; Disassembly of file: output.o
; Sun Jun 11 06:05:07 2017
; Mode: 64 bits
; Syntax: YASM/NASM
; Instruction set: Pentium Pro, x64

default rel

global _substring
global _ord
global _parseInt
global _strlength: function
global _getInt: function
global _getString
global _size
global _toMoStr: function
global _str_add
global ___lib_printlnInt
global ___lib_printInt
global ___lib_malloc: function
global _println: function
global _print: function
global _toString: function
global _origin: function
global _check: function
global _addList: function
global _main

extern _strlen                                          ; near
extern _scanf                                           ; near
extern _puts                                            ; near
extern _printf                                          ; near
extern _malloc                                          ; near
extern _getchar                                         ; near
extern ___strcpy_chk                                    ; near
extern _ylist                                           ; qword
extern _y                                               ; qword
extern _xlist                                           ; qword
extern _x                                               ; qword
extern _targety                                         ; qword
extern _targetx                                         ; qword
extern _tail                                            ; qword
extern _step                                            ; qword
extern _starty                                          ; byte
extern _startx                                          ; byte
extern _ok                                              ; qword
extern _now                                             ; qword
extern _j                                               ; qword
extern _i                                               ; qword
extern _head                                            ; qword
extern _dy                                              ; qword
extern _dx                                              ; qword
extern _N                                               ; qword


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
        lea     rdi, [rel _substring+0D43H]             ; 01C8 _ 48: 8D. 3D, 00000D43(rel)
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
        lea     rax, [rel _substring+0AB6H]             ; 0458 _ 48: 8D. 05, 00000AB6(rel)
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
        lea     rax, [rel _substring+0A8BH]             ; 0488 _ 48: 8D. 05, 00000A8B(rel)
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
        lea     rax, [rel _substring+0A1FH]             ; 04F8 _ 48: 8D. 05, 00000A1F(rel)
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
_origin:; Function begin
        push    rbp                                     ; 0670 _ 55
        mov     rbp, rsp                                ; 0671 _ 48: 89. E5
        sub     rsp, 64                                 ; 0674 _ 48: 83. EC, 40
        mov     rax, qword [rel _tail]                  ; 0678 _ 48: 8B. 05, 00000000(GOT r)
        mov     rcx, qword [rel _head]                  ; 067F _ 48: 8B. 0D, 00000000(GOT r)
        mov     qword [rbp-8H], rdi                     ; 0686 _ 48: 89. 7D, F8
        mov     rdi, qword [rbp-8H]                     ; 068A _ 48: 8B. 7D, F8
        mov     qword [rbp-10H], rdi                    ; 068E _ 48: 89. 7D, F0
        mov     qword [rcx], 0                          ; 0692 _ 48: C7. 01, 00000000
        mov     qword [rax], 0                          ; 0699 _ 48: C7. 00, 00000000
        mov     rax, qword [rbp-10H]                    ; 06A0 _ 48: 8B. 45, F0
        mov     qword [rbp-28H], rax                    ; 06A4 _ 48: 89. 45, D8
        mov     rax, qword [rbp-28H]                    ; 06A8 _ 48: 8B. 45, D8
        shl     rax, 3                                  ; 06AC _ 48: C1. E0, 03
        add     rax, 8                                  ; 06B0 _ 48: 83. C0, 08
        mov     rdi, rax                                ; 06B4 _ 48: 89. C7
        call    ___lib_malloc                           ; 06B7 _ E8, 00000000(rel)
        mov     rcx, qword [rel _i]                     ; 06BC _ 48: 8B. 0D, 00000000(GOT r)
        mov     rdi, qword [rel _step]                  ; 06C3 _ 48: 8B. 3D, 00000000(GOT r)
        mov     qword [rbp-20H], rax                    ; 06CA _ 48: 89. 45, E0
        mov     rax, qword [rbp-28H]                    ; 06CE _ 48: 8B. 45, D8
        mov     rdx, qword [rbp-20H]                    ; 06D2 _ 48: 8B. 55, E0
        mov     qword [rdx], rax                        ; 06D6 _ 48: 89. 02
        mov     rax, qword [rbp-20H]                    ; 06D9 _ 48: 8B. 45, E0
        add     rax, 8                                  ; 06DD _ 48: 83. C0, 08
        mov     qword [rbp-20H], rax                    ; 06E1 _ 48: 89. 45, E0
        mov     rax, qword [rbp-20H]                    ; 06E5 _ 48: 8B. 45, E0
        mov     qword [rdi], rax                        ; 06E9 _ 48: 89. 07
        mov     qword [rcx], 0                          ; 06EC _ 48: C7. 01, 00000000
?_021:  mov     rax, qword [rel _i]                     ; 06F3 _ 48: 8B. 05, 00000000(GOT r)
        mov     rax, qword [rax]                        ; 06FA _ 48: 8B. 00
        cmp     rax, qword [rbp-10H]                    ; 06FD _ 48: 3B. 45, F0
; Note: Immediate operand could be made smaller by sign extension
        jge     ?_022                                   ; 0701 _ 0F 8D, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_023                                   ; 0707 _ E9, 00000005

?_022:  jmp     ?_029                                   ; 070C _ E9, 000000EC

?_023:  mov     rax, qword [rbp-10H]                    ; 0711 _ 48: 8B. 45, F0
        mov     qword [rbp-38H], rax                    ; 0715 _ 48: 89. 45, C8
        mov     rax, qword [rbp-38H]                    ; 0719 _ 48: 8B. 45, C8
        shl     rax, 3                                  ; 071D _ 48: C1. E0, 03
        add     rax, 8                                  ; 0721 _ 48: 83. C0, 08
        mov     rdi, rax                                ; 0725 _ 48: 89. C7
        call    ___lib_malloc                           ; 0728 _ E8, 00000000(rel)
        mov     rdi, qword [rel _j]                     ; 072D _ 48: 8B. 3D, 00000000(GOT r)
        mov     rcx, qword [rel _i]                     ; 0734 _ 48: 8B. 0D, 00000000(GOT r)
        mov     rdx, qword [rel _step]                  ; 073B _ 48: 8B. 15, 00000000(GOT r)
        mov     qword [rbp-30H], rax                    ; 0742 _ 48: 89. 45, D0
        mov     rax, qword [rbp-38H]                    ; 0746 _ 48: 8B. 45, C8
        mov     rsi, qword [rbp-30H]                    ; 074A _ 48: 8B. 75, D0
        mov     qword [rsi], rax                        ; 074E _ 48: 89. 06
        mov     rax, qword [rbp-30H]                    ; 0751 _ 48: 8B. 45, D0
        add     rax, 8                                  ; 0755 _ 48: 83. C0, 08
        mov     qword [rbp-30H], rax                    ; 0759 _ 48: 89. 45, D0
        mov     rax, qword [rbp-30H]                    ; 075D _ 48: 8B. 45, D0
        mov     rdx, qword [rdx]                        ; 0761 _ 48: 8B. 12
        mov     rcx, qword [rcx]                        ; 0764 _ 48: 8B. 09
        shl     rcx, 3                                  ; 0767 _ 48: C1. E1, 03
        add     rdx, rcx                                ; 076B _ 48: 01. CA
        mov     qword [rdx], rax                        ; 076E _ 48: 89. 02
        mov     qword [rdi], 0                          ; 0771 _ 48: C7. 07, 00000000
?_024:  mov     rax, qword [rel _j]                     ; 0778 _ 48: 8B. 05, 00000000(GOT r)
        mov     rax, qword [rax]                        ; 077F _ 48: 8B. 00
        cmp     rax, qword [rbp-10H]                    ; 0782 _ 48: 3B. 45, F0
; Note: Immediate operand could be made smaller by sign extension
        jge     ?_025                                   ; 0786 _ 0F 8D, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_026                                   ; 078C _ E9, 00000005

?_025:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_027                                   ; 0791 _ E9, 0000004C

?_026:  mov     rax, qword [rel _j]                     ; 0796 _ 48: 8B. 05, 00000000(GOT r)
        mov     rcx, qword [rel _i]                     ; 079D _ 48: 8B. 0D, 00000000(GOT r)
        mov     rdx, qword [rel _step]                  ; 07A4 _ 48: 8B. 15, 00000000(GOT r)
        mov     rdx, qword [rdx]                        ; 07AB _ 48: 8B. 12
        mov     rcx, qword [rcx]                        ; 07AE _ 48: 8B. 09
        shl     rcx, 3                                  ; 07B1 _ 48: C1. E1, 03
        add     rdx, rcx                                ; 07B5 _ 48: 01. CA
        mov     rcx, qword [rdx]                        ; 07B8 _ 48: 8B. 0A
        mov     rax, qword [rax]                        ; 07BB _ 48: 8B. 00
        shl     rax, 3                                  ; 07BE _ 48: C1. E0, 03
        add     rcx, rax                                ; 07C2 _ 48: 01. C1
        mov     qword [rcx], 0                          ; 07C5 _ 48: C7. 01, 00000000
        mov     rax, qword [rel _j]                     ; 07CC _ 48: 8B. 05, 00000000(GOT r)
        mov     rcx, qword [rax]                        ; 07D3 _ 48: 8B. 08
        add     rcx, 1                                  ; 07D6 _ 48: 83. C1, 01
        mov     qword [rax], rcx                        ; 07DA _ 48: 89. 08
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_024                                   ; 07DD _ E9, FFFFFF96

?_027:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_028                                   ; 07E2 _ E9, 00000000

?_028:  mov     rax, qword [rel _i]                     ; 07E7 _ 48: 8B. 05, 00000000(GOT r)
        mov     rcx, qword [rax]                        ; 07EE _ 48: 8B. 08
        add     rcx, 1                                  ; 07F1 _ 48: 83. C1, 01
        mov     qword [rax], rcx                        ; 07F5 _ 48: 89. 08
        jmp     ?_021                                   ; 07F8 _ E9, FFFFFEF6
; _origin End of function

?_029:  ; Local function
        add     rsp, 64                                 ; 07FD _ 48: 83. C4, 40
        pop     rbp                                     ; 0801 _ 5D
        ret                                             ; 0802 _ C3

; Filling space: 0DH
; Filler type: Multi-byte NOP
;       db 66H, 66H, 66H, 66H, 2EH, 0FH, 1FH, 84H
;       db 00H, 00H, 00H, 00H, 00H

ALIGN   16

_check: ; Function begin
        push    rbp                                     ; 0810 _ 55
        mov     rbp, rsp                                ; 0811 _ 48: 89. E5
        mov     rax, qword [rel _N]                     ; 0814 _ 48: 8B. 05, 00000000(GOT r)
        mov     qword [rbp-8H], rdi                     ; 081B _ 48: 89. 7D, F8
        mov     rdi, qword [rbp-8H]                     ; 081F _ 48: 8B. 7D, F8
        mov     qword [rbp-10H], rdi                    ; 0823 _ 48: 89. 7D, F0
        mov     rdi, qword [rbp-10H]                    ; 0827 _ 48: 8B. 7D, F0
        cmp     rdi, qword [rax]                        ; 082B _ 48: 3B. 38
        setl    cl                                      ; 082E _ 0F 9C. C1
        and     cl, 01H                                 ; 0831 _ 80. E1, 01
        movzx   edx, cl                                 ; 0834 _ 0F B6. D1
        movsxd  rax, edx                                ; 0837 _ 48: 63. C2
        mov     qword [rbp-18H], rax                    ; 083A _ 48: 89. 45, E8
        cmp     qword [rbp-18H], 0                      ; 083E _ 48: 83. 7D, E8, 00
; Note: Immediate operand could be made smaller by sign extension
        je      ?_030                                   ; 0843 _ 0F 84, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_031                                   ; 0849 _ E9, 00000005

?_030:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_032                                   ; 084E _ E9, 00000014

?_031:  cmp     qword [rbp-10H], 0                      ; 0853 _ 48: 83. 7D, F0, 00
        setge   al                                      ; 0858 _ 0F 9D. C0
        and     al, 01H                                 ; 085B _ 24, 01
        movzx   ecx, al                                 ; 085D _ 0F B6. C8
        movsxd  rdx, ecx                                ; 0860 _ 48: 63. D1
        mov     qword [rbp-18H], rdx                    ; 0863 _ 48: 89. 55, E8
?_032:  mov     rax, qword [rbp-18H]                    ; 0867 _ 48: 8B. 45, E8
        pop     rbp                                     ; 086B _ 5D
        ret                                             ; 086C _ C3
; _check End of function

; Filling space: 3H
; Filler type: Multi-byte NOP
;       db 0FH, 1FH, 00H

ALIGN   8

_addList:; Function begin
        push    rbp                                     ; 0870 _ 55
        mov     rbp, rsp                                ; 0871 _ 48: 89. E5
        push    rbx                                     ; 0874 _ 53
        sub     rsp, 72                                 ; 0875 _ 48: 83. EC, 48
        mov     qword [rbp-10H], rdi                    ; 0879 _ 48: 89. 7D, F0
        mov     qword [rbp-18H], rsi                    ; 087D _ 48: 89. 75, E8
        mov     rsi, qword [rbp-10H]                    ; 0881 _ 48: 8B. 75, F0
        mov     qword [rbp-20H], rsi                    ; 0885 _ 48: 89. 75, E0
        mov     rsi, qword [rbp-18H]                    ; 0889 _ 48: 8B. 75, E8
        mov     qword [rbp-28H], rsi                    ; 088D _ 48: 89. 75, D8
        mov     rdi, qword [rbp-20H]                    ; 0891 _ 48: 8B. 7D, E0
        call    _check                                  ; 0895 _ E8, 00000000(rel)
        mov     qword [rbp-30H], rax                    ; 089A _ 48: 89. 45, D0
        mov     rax, qword [rbp-30H]                    ; 089E _ 48: 8B. 45, D0
        mov     qword [rbp-40H], rax                    ; 08A2 _ 48: 89. 45, C0
        cmp     qword [rbp-40H], 0                      ; 08A6 _ 48: 83. 7D, C0, 00
; Note: Immediate operand could be made smaller by sign extension
        je      ?_033                                   ; 08AB _ 0F 84, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_034                                   ; 08B1 _ E9, 00000005

?_033:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_035                                   ; 08B6 _ E9, 00000015

?_034:  mov     rdi, qword [rbp-28H]                    ; 08BB _ 48: 8B. 7D, D8
        call    _check                                  ; 08BF _ E8, 00000000(rel)
        mov     qword [rbp-38H], rax                    ; 08C4 _ 48: 89. 45, C8
        mov     rax, qword [rbp-38H]                    ; 08C8 _ 48: 8B. 45, C8
        mov     qword [rbp-40H], rax                    ; 08CC _ 48: 89. 45, C0
?_035:  mov     rax, qword [rbp-40H]                    ; 08D0 _ 48: 8B. 45, C0
        mov     qword [rbp-48H], rax                    ; 08D4 _ 48: 89. 45, B8
        cmp     qword [rbp-48H], 0                      ; 08D8 _ 48: 83. 7D, B8, 00
; Note: Immediate operand could be made smaller by sign extension
        je      ?_036                                   ; 08DD _ 0F 84, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_037                                   ; 08E3 _ E9, 00000005

?_036:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_038                                   ; 08E8 _ E9, 00000037

?_037:  mov     rax, qword [rel _step]                  ; 08ED _ 48: 8B. 05, 00000000(GOT r)
        mov     rax, qword [rax]                        ; 08F4 _ 48: 8B. 00
        mov     rcx, qword [rbp-20H]                    ; 08F7 _ 48: 8B. 4D, E0
        shl     rcx, 3                                  ; 08FB _ 48: C1. E1, 03
        add     rax, rcx                                ; 08FF _ 48: 01. C8
        mov     rax, qword [rax]                        ; 0902 _ 48: 8B. 00
        mov     rcx, qword [rbp-28H]                    ; 0905 _ 48: 8B. 4D, D8
        shl     rcx, 3                                  ; 0909 _ 48: C1. E1, 03
        add     rax, rcx                                ; 090D _ 48: 01. C8
        cmp     qword [rax], -1                         ; 0910 _ 48: 83. 38, FF
        sete    dl                                      ; 0914 _ 0F 94. C2
        and     dl, 01H                                 ; 0917 _ 80. E2, 01
        movzx   esi, dl                                 ; 091A _ 0F B6. F2
        movsxd  rax, esi                                ; 091D _ 48: 63. C6
        mov     qword [rbp-48H], rax                    ; 0920 _ 48: 89. 45, B8
?_038:  cmp     qword [rbp-48H], 0                      ; 0924 _ 48: 83. 7D, B8, 00
; Note: Immediate operand could be made smaller by sign extension
        je      ?_039                                   ; 0929 _ 0F 84, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_040                                   ; 092F _ E9, 00000005

?_039:  jmp     ?_047                                   ; 0934 _ E9, 000000F7

?_040:  mov     rax, qword [rel _targetx]               ; 0939 _ 48: 8B. 05, 00000000(GOT r)
        mov     rcx, qword [rel _step]                  ; 0940 _ 48: 8B. 0D, 00000000(GOT r)
        mov     rdx, qword [rel _now]                   ; 0947 _ 48: 8B. 15, 00000000(GOT r)
        mov     rsi, qword [rel _tail]                  ; 094E _ 48: 8B. 35, 00000000(GOT r)
        mov     rdi, qword [rel _ylist]                 ; 0955 _ 48: 8B. 3D, 00000000(GOT r)
        mov     r8, qword [rel _xlist]                  ; 095C _ 4C: 8B. 05, 00000000(GOT r)
        mov     r9, qword [rsi]                         ; 0963 _ 4C: 8B. 0E
        add     r9, 1                                   ; 0966 _ 49: 83. C1, 01
        mov     qword [rsi], r9                         ; 096A _ 4C: 89. 0E
        mov     r9, qword [rbp-20H]                     ; 096D _ 4C: 8B. 4D, E0
        mov     r8, qword [r8]                          ; 0971 _ 4D: 8B. 00
        mov     r10, qword [rsi]                        ; 0974 _ 4C: 8B. 16
        shl     r10, 3                                  ; 0977 _ 49: C1. E2, 03
        add     r8, r10                                 ; 097B _ 4D: 01. D0
        mov     qword [r8], r9                          ; 097E _ 4D: 89. 08
        mov     r8, qword [rbp-28H]                     ; 0981 _ 4C: 8B. 45, D8
        mov     rdi, qword [rdi]                        ; 0985 _ 48: 8B. 3F
        mov     rsi, qword [rsi]                        ; 0988 _ 48: 8B. 36
        shl     rsi, 3                                  ; 098B _ 48: C1. E6, 03
        add     rdi, rsi                                ; 098F _ 48: 01. F7
        mov     qword [rdi], r8                         ; 0992 _ 4C: 89. 07
        mov     rdx, qword [rdx]                        ; 0995 _ 48: 8B. 12
        add     rdx, 1                                  ; 0998 _ 48: 83. C2, 01
        mov     rcx, qword [rcx]                        ; 099C _ 48: 8B. 09
        mov     rsi, qword [rbp-20H]                    ; 099F _ 48: 8B. 75, E0
        shl     rsi, 3                                  ; 09A3 _ 48: C1. E6, 03
        add     rcx, rsi                                ; 09A7 _ 48: 01. F1
        mov     rcx, qword [rcx]                        ; 09AA _ 48: 8B. 09
        mov     rsi, qword [rbp-28H]                    ; 09AD _ 48: 8B. 75, D8
        shl     rsi, 3                                  ; 09B1 _ 48: C1. E6, 03
        add     rcx, rsi                                ; 09B5 _ 48: 01. F1
        mov     qword [rcx], rdx                        ; 09B8 _ 48: 89. 11
        mov     rcx, qword [rbp-20H]                    ; 09BB _ 48: 8B. 4D, E0
        cmp     rcx, qword [rax]                        ; 09BF _ 48: 3B. 08
        sete    r11b                                    ; 09C2 _ 41: 0F 94. C3
        and     r11b, 01H                               ; 09C6 _ 41: 80. E3, 01
        movzx   ebx, r11b                               ; 09CA _ 41: 0F B6. DB
        movsxd  rax, ebx                                ; 09CE _ 48: 63. C3
        mov     qword [rbp-50H], rax                    ; 09D1 _ 48: 89. 45, B0
        cmp     qword [rbp-50H], 0                      ; 09D5 _ 48: 83. 7D, B0, 00
; Note: Immediate operand could be made smaller by sign extension
        je      ?_041                                   ; 09DA _ 0F 84, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_042                                   ; 09E0 _ E9, 00000005

?_041:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_043                                   ; 09E5 _ E9, 0000001E

?_042:  mov     rax, qword [rel _targety]               ; 09EA _ 48: 8B. 05, 00000000(GOT r)
        mov     rcx, qword [rbp-28H]                    ; 09F1 _ 48: 8B. 4D, D8
        cmp     rcx, qword [rax]                        ; 09F5 _ 48: 3B. 08
        sete    dl                                      ; 09F8 _ 0F 94. C2
        and     dl, 01H                                 ; 09FB _ 80. E2, 01
        movzx   esi, dl                                 ; 09FE _ 0F B6. F2
        movsxd  rax, esi                                ; 0A01 _ 48: 63. C6
        mov     qword [rbp-50H], rax                    ; 0A04 _ 48: 89. 45, B0
?_043:  cmp     qword [rbp-50H], 0                      ; 0A08 _ 48: 83. 7D, B0, 00
; Note: Immediate operand could be made smaller by sign extension
        je      ?_044                                   ; 0A0D _ 0F 84, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_045                                   ; 0A13 _ E9, 00000005

?_044:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_046                                   ; 0A18 _ E9, 0000000E

?_045:  mov     rax, qword [rel _ok]                    ; 0A1D _ 48: 8B. 05, 00000000(GOT r)
        mov     qword [rax], 1                          ; 0A24 _ 48: C7. 00, 00000001
?_046:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_047                                   ; 0A2B _ E9, 00000000
; _addList End of function

?_047:  ; Local function
        add     rsp, 72                                 ; 0A30 _ 48: 83. C4, 48
        pop     rbx                                     ; 0A34 _ 5B
        pop     rbp                                     ; 0A35 _ 5D
        ret                                             ; 0A36 _ C3

; Filling space: 9H
; Filler type: Multi-byte NOP
;       db 66H, 0FH, 1FH, 84H, 00H, 00H, 00H, 00H
;       db 00H

ALIGN   16

_main:  ; Function begin
        push    rbp                                     ; 0A40 _ 55
        mov     rbp, rsp                                ; 0A41 _ 48: 89. E5
        sub     rsp, 128                                ; 0A44 _ 48: 81. EC, 00000080
        mov     dword [rbp-4H], 0                       ; 0A4B _ C7. 45, FC, 00000000
        mov     qword [rbp-40H], 12000                  ; 0A52 _ 48: C7. 45, C0, 00002EE0
        mov     rax, qword [rbp-40H]                    ; 0A5A _ 48: 8B. 45, C0
        shl     rax, 3                                  ; 0A5E _ 48: C1. E0, 03
        add     rax, 8                                  ; 0A62 _ 48: 83. C0, 08
        mov     rdi, rax                                ; 0A66 _ 48: 89. C7
        call    ___lib_malloc                           ; 0A69 _ E8, 00000000(rel)
        mov     qword [rbp-30H], rax                    ; 0A6E _ 48: 89. 45, D0
        mov     rax, qword [rbp-40H]                    ; 0A72 _ 48: 8B. 45, C0
        mov     rdi, qword [rbp-30H]                    ; 0A76 _ 48: 8B. 7D, D0
        mov     qword [rdi], rax                        ; 0A7A _ 48: 89. 07
        mov     rax, qword [rbp-30H]                    ; 0A7D _ 48: 8B. 45, D0
        add     rax, 8                                  ; 0A81 _ 48: 83. C0, 08
        mov     qword [rbp-30H], rax                    ; 0A85 _ 48: 89. 45, D0
        mov     qword [rbp-10H], 12000                  ; 0A89 _ 48: C7. 45, F0, 00002EE0
        mov     rax, qword [rbp-10H]                    ; 0A91 _ 48: 8B. 45, F0
        shl     rax, 3                                  ; 0A95 _ 48: C1. E0, 03
        add     rax, 8                                  ; 0A99 _ 48: 83. C0, 08
        mov     rdi, rax                                ; 0A9D _ 48: 89. C7
        call    ___lib_malloc                           ; 0AA0 _ E8, 00000000(rel)
        mov     qword [rbp-18H], rax                    ; 0AA5 _ 48: 89. 45, E8
        mov     rax, qword [rbp-10H]                    ; 0AA9 _ 48: 8B. 45, F0
        mov     rdi, qword [rbp-18H]                    ; 0AAD _ 48: 8B. 7D, E8
        mov     qword [rdi], rax                        ; 0AB1 _ 48: 89. 07
        mov     rax, qword [rbp-18H]                    ; 0AB4 _ 48: 8B. 45, E8
        add     rax, 8                                  ; 0AB8 _ 48: 83. C0, 08
        mov     qword [rbp-18H], rax                    ; 0ABC _ 48: 89. 45, E8
        mov     qword [rbp-50H], 8                      ; 0AC0 _ 48: C7. 45, B0, 00000008
        mov     rax, qword [rbp-50H]                    ; 0AC8 _ 48: 8B. 45, B0
        shl     rax, 3                                  ; 0ACC _ 48: C1. E0, 03
        add     rax, 8                                  ; 0AD0 _ 48: 83. C0, 08
        mov     rdi, rax                                ; 0AD4 _ 48: 89. C7
        call    ___lib_malloc                           ; 0AD7 _ E8, 00000000(rel)
        mov     qword [rbp-20H], rax                    ; 0ADC _ 48: 89. 45, E0
        mov     rax, qword [rbp-50H]                    ; 0AE0 _ 48: 8B. 45, B0
        mov     rdi, qword [rbp-20H]                    ; 0AE4 _ 48: 8B. 7D, E0
        mov     qword [rdi], rax                        ; 0AE8 _ 48: 89. 07
        mov     rax, qword [rbp-20H]                    ; 0AEB _ 48: 8B. 45, E0
        add     rax, 8                                  ; 0AEF _ 48: 83. C0, 08
        mov     qword [rbp-20H], rax                    ; 0AF3 _ 48: 89. 45, E0
        mov     qword [rbp-60H], 9                      ; 0AF7 _ 48: C7. 45, A0, 00000009
        mov     rax, qword [rbp-60H]                    ; 0AFF _ 48: 8B. 45, A0
        shl     rax, 3                                  ; 0B03 _ 48: C1. E0, 03
        add     rax, 8                                  ; 0B07 _ 48: 83. C0, 08
        mov     rdi, rax                                ; 0B0B _ 48: 89. C7
        call    ___lib_malloc                           ; 0B0E _ E8, 00000000(rel)
        mov     ecx, 106                                ; 0B13 _ B9, 0000006A
        mov     edi, ecx                                ; 0B18 _ 89. CF
        mov     rdx, qword [rel _dy]                    ; 0B1A _ 48: 8B. 15, 00000000(GOT r)
        mov     rsi, qword [rel _dx]                    ; 0B21 _ 48: 8B. 35, 00000000(GOT r)
        mov     r8, qword [rel _ylist]                  ; 0B28 _ 4C: 8B. 05, 00000000(GOT r)
        mov     r9, qword [rel _xlist]                  ; 0B2F _ 4C: 8B. 0D, 00000000(GOT r)
        mov     qword [rbp-58H], rax                    ; 0B36 _ 48: 89. 45, A8
        mov     rax, qword [rbp-60H]                    ; 0B3A _ 48: 8B. 45, A0
        mov     r10, qword [rbp-58H]                    ; 0B3E _ 4C: 8B. 55, A8
        mov     qword [r10], rax                        ; 0B42 _ 49: 89. 02
        mov     rax, qword [rbp-58H]                    ; 0B45 _ 48: 8B. 45, A8
        add     rax, 8                                  ; 0B49 _ 48: 83. C0, 08
        mov     qword [rbp-58H], rax                    ; 0B4D _ 48: 89. 45, A8
        mov     rax, qword [rbp-30H]                    ; 0B51 _ 48: 8B. 45, D0
        mov     qword [r9], rax                         ; 0B55 _ 49: 89. 01
        mov     rax, qword [rbp-18H]                    ; 0B58 _ 48: 8B. 45, E8
        mov     qword [r8], rax                         ; 0B5C _ 49: 89. 00
        mov     rax, qword [rbp-20H]                    ; 0B5F _ 48: 8B. 45, E0
        mov     qword [rsi], rax                        ; 0B63 _ 48: 89. 06
        mov     rax, qword [rbp-58H]                    ; 0B66 _ 48: 8B. 45, A8
        mov     qword [rdx], rax                        ; 0B6A _ 48: 89. 02
        call    _origin                                 ; 0B6D _ E8, 00000000(rel)
        call    _getInt                                 ; 0B72 _ E8, 00000000(rel)
        mov     rdx, qword [rel _i]                     ; 0B77 _ 48: 8B. 15, 00000000(GOT r)
        mov     rsi, qword [rel _targetx]               ; 0B7E _ 48: 8B. 35, 00000000(GOT r)
        mov     rdi, qword [rel _targety]               ; 0B85 _ 48: 8B. 3D, 00000000(GOT r)
        mov     r8, qword [rel _N]                      ; 0B8C _ 4C: 8B. 05, 00000000(GOT r)
        mov     qword [rbp-78H], rax                    ; 0B93 _ 48: 89. 45, 88
        mov     rax, qword [rbp-78H]                    ; 0B97 _ 48: 8B. 45, 88
        mov     qword [r8], rax                         ; 0B9B _ 49: 89. 00
        mov     rax, qword [r8]                         ; 0B9E _ 49: 8B. 00
        sub     rax, 1                                  ; 0BA1 _ 48: 83. E8, 01
        mov     qword [rdi], rax                        ; 0BA5 _ 48: 89. 07
        mov     rax, qword [rdi]                        ; 0BA8 _ 48: 8B. 07
        mov     qword [rsi], rax                        ; 0BAB _ 48: 89. 06
        mov     qword [rdx], 0                          ; 0BAE _ 48: C7. 02, 00000000
?_048:  mov     rax, qword [rel _N]                     ; 0BB5 _ 48: 8B. 05, 00000000(GOT r)
        mov     rcx, qword [rel _i]                     ; 0BBC _ 48: 8B. 0D, 00000000(GOT r)
        mov     rcx, qword [rcx]                        ; 0BC3 _ 48: 8B. 09
        cmp     rcx, qword [rax]                        ; 0BC6 _ 48: 3B. 08
; Note: Immediate operand could be made smaller by sign extension
        jge     ?_049                                   ; 0BC9 _ 0F 8D, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_050                                   ; 0BCF _ E9, 00000005

?_049:  jmp     ?_056                                   ; 0BD4 _ E9, 00000099

?_050:  mov     rax, qword [rel _j]                     ; 0BD9 _ 48: 8B. 05, 00000000(GOT r)
        mov     qword [rax], 0                          ; 0BE0 _ 48: C7. 00, 00000000
?_051:  mov     rax, qword [rel _N]                     ; 0BE7 _ 48: 8B. 05, 00000000(GOT r)
        mov     rcx, qword [rel _j]                     ; 0BEE _ 48: 8B. 0D, 00000000(GOT r)
        mov     rcx, qword [rcx]                        ; 0BF5 _ 48: 8B. 09
        cmp     rcx, qword [rax]                        ; 0BF8 _ 48: 3B. 08
; Note: Immediate operand could be made smaller by sign extension
        jge     ?_052                                   ; 0BFB _ 0F 8D, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_053                                   ; 0C01 _ E9, 00000005

?_052:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_054                                   ; 0C06 _ E9, 0000004C

?_053:  mov     rax, qword [rel _j]                     ; 0C0B _ 48: 8B. 05, 00000000(GOT r)
        mov     rcx, qword [rel _i]                     ; 0C12 _ 48: 8B. 0D, 00000000(GOT r)
        mov     rdx, qword [rel _step]                  ; 0C19 _ 48: 8B. 15, 00000000(GOT r)
        mov     rdx, qword [rdx]                        ; 0C20 _ 48: 8B. 12
        mov     rcx, qword [rcx]                        ; 0C23 _ 48: 8B. 09
        shl     rcx, 3                                  ; 0C26 _ 48: C1. E1, 03
        add     rdx, rcx                                ; 0C2A _ 48: 01. CA
        mov     rcx, qword [rdx]                        ; 0C2D _ 48: 8B. 0A
        mov     rax, qword [rax]                        ; 0C30 _ 48: 8B. 00
        shl     rax, 3                                  ; 0C33 _ 48: C1. E0, 03
        add     rcx, rax                                ; 0C37 _ 48: 01. C1
        mov     qword [rcx], -1                         ; 0C3A _ 48: C7. 01, FFFFFFFF
        mov     rax, qword [rel _j]                     ; 0C41 _ 48: 8B. 05, 00000000(GOT r)
        mov     rcx, qword [rax]                        ; 0C48 _ 48: 8B. 08
        add     rcx, 1                                  ; 0C4B _ 48: 83. C1, 01
        mov     qword [rax], rcx                        ; 0C4F _ 48: 89. 08
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_051                                   ; 0C52 _ E9, FFFFFF90

?_054:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_055                                   ; 0C57 _ E9, 00000000

?_055:  mov     rax, qword [rel _i]                     ; 0C5C _ 48: 8B. 05, 00000000(GOT r)
        mov     rcx, qword [rax]                        ; 0C63 _ 48: 8B. 08
        add     rcx, 1                                  ; 0C66 _ 48: 83. C1, 01
        mov     qword [rax], rcx                        ; 0C6A _ 48: 89. 08
        jmp     ?_048                                   ; 0C6D _ E9, FFFFFF43
; _main End of function

?_056:  ; Local function
        mov     rax, qword [rel _dy]                    ; 0C72 _ 48: 8B. 05, 00000000(GOT r)
        mov     rcx, qword [rel _dx]                    ; 0C79 _ 48: 8B. 0D, 00000000(GOT r)
        mov     rdx, qword [rcx]                        ; 0C80 _ 48: 8B. 11
        mov     qword [rdx], -2                         ; 0C83 _ 48: C7. 02, FFFFFFFE
        mov     rdx, qword [rax]                        ; 0C8A _ 48: 8B. 10
        mov     qword [rdx], -1                         ; 0C8D _ 48: C7. 02, FFFFFFFF
        mov     rdx, qword [rcx]                        ; 0C94 _ 48: 8B. 11
        mov     qword [rdx+8H], -2                      ; 0C97 _ 48: C7. 42, 08, FFFFFFFE
        mov     rdx, qword [rax]                        ; 0C9F _ 48: 8B. 10
        mov     qword [rdx+8H], 1                       ; 0CA2 _ 48: C7. 42, 08, 00000001
        mov     rdx, qword [rcx]                        ; 0CAA _ 48: 8B. 11
        mov     qword [rdx+10H], 2                      ; 0CAD _ 48: C7. 42, 10, 00000002
        mov     rdx, qword [rax]                        ; 0CB5 _ 48: 8B. 10
        mov     qword [rdx+10H], -1                     ; 0CB8 _ 48: C7. 42, 10, FFFFFFFF
        mov     rdx, qword [rcx]                        ; 0CC0 _ 48: 8B. 11
        mov     qword [rdx+18H], 2                      ; 0CC3 _ 48: C7. 42, 18, 00000002
        mov     rdx, qword [rax]                        ; 0CCB _ 48: 8B. 10
        mov     qword [rdx+18H], 1                      ; 0CCE _ 48: C7. 42, 18, 00000001
        mov     rdx, qword [rcx]                        ; 0CD6 _ 48: 8B. 11
        mov     qword [rdx+20H], -1                     ; 0CD9 _ 48: C7. 42, 20, FFFFFFFF
        mov     rdx, qword [rax]                        ; 0CE1 _ 48: 8B. 10
        mov     qword [rdx+20H], -2                     ; 0CE4 _ 48: C7. 42, 20, FFFFFFFE
        mov     rdx, qword [rcx]                        ; 0CEC _ 48: 8B. 11
        mov     qword [rdx+28H], -1                     ; 0CEF _ 48: C7. 42, 28, FFFFFFFF
        mov     rdx, qword [rax]                        ; 0CF7 _ 48: 8B. 10
        mov     qword [rdx+28H], 2                      ; 0CFA _ 48: C7. 42, 28, 00000002
        mov     rdx, qword [rcx]                        ; 0D02 _ 48: 8B. 11
        mov     qword [rdx+30H], 1                      ; 0D05 _ 48: C7. 42, 30, 00000001
        mov     rdx, qword [rax]                        ; 0D0D _ 48: 8B. 10
        mov     qword [rdx+30H], -2                     ; 0D10 _ 48: C7. 42, 30, FFFFFFFE
        mov     rcx, qword [rcx]                        ; 0D18 _ 48: 8B. 09
        mov     qword [rcx+38H], 1                      ; 0D1B _ 48: C7. 41, 38, 00000001
        mov     rax, qword [rax]                        ; 0D23 _ 48: 8B. 00
        mov     qword [rax+38H], 2                      ; 0D26 _ 48: C7. 40, 38, 00000002
?_057:  mov     rax, qword [rel _tail]                  ; 0D2E _ 48: 8B. 05, 00000000(GOT r)
        mov     rcx, qword [rel _head]                  ; 0D35 _ 48: 8B. 0D, 00000000(GOT r)
        mov     rcx, qword [rcx]                        ; 0D3C _ 48: 8B. 09
        cmp     rcx, qword [rax]                        ; 0D3F _ 48: 3B. 08
; Note: Immediate operand could be made smaller by sign extension
        jg      ?_058                                   ; 0D42 _ 0F 8F, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_059                                   ; 0D48 _ E9, 00000005

?_058:  jmp     ?_067                                   ; 0D4D _ E9, 0000013D

?_059:  mov     rax, qword [rel _j]                     ; 0D52 _ 48: 8B. 05, 00000000(GOT r)
        mov     rcx, qword [rel _now]                   ; 0D59 _ 48: 8B. 0D, 00000000(GOT r)
        mov     rdx, qword [rel _y]                     ; 0D60 _ 48: 8B. 15, 00000000(GOT r)
        mov     rsi, qword [rel _x]                     ; 0D67 _ 48: 8B. 35, 00000000(GOT r)
        mov     rdi, qword [rel _step]                  ; 0D6E _ 48: 8B. 3D, 00000000(GOT r)
        mov     r8, qword [rel _head]                   ; 0D75 _ 4C: 8B. 05, 00000000(GOT r)
        mov     r9, qword [rel _ylist]                  ; 0D7C _ 4C: 8B. 0D, 00000000(GOT r)
        mov     r10, qword [rel _xlist]                 ; 0D83 _ 4C: 8B. 15, 00000000(GOT r)
        mov     r10, qword [r10]                        ; 0D8A _ 4D: 8B. 12
        mov     r11, qword [r8]                         ; 0D8D _ 4D: 8B. 18
        shl     r11, 3                                  ; 0D90 _ 49: C1. E3, 03
        add     r10, r11                                ; 0D94 _ 4D: 01. DA
        mov     r10, qword [r10]                        ; 0D97 _ 4D: 8B. 12
        mov     qword [rsi], r10                        ; 0D9A _ 4C: 89. 16
        mov     r9, qword [r9]                          ; 0D9D _ 4D: 8B. 09
        mov     r8, qword [r8]                          ; 0DA0 _ 4D: 8B. 00
        shl     r8, 3                                   ; 0DA3 _ 49: C1. E0, 03
        add     r9, r8                                  ; 0DA7 _ 4D: 01. C1
        mov     r8, qword [r9]                          ; 0DAA _ 4D: 8B. 01
        mov     qword [rdx], r8                         ; 0DAD _ 4C: 89. 02
        mov     rdi, qword [rdi]                        ; 0DB0 _ 48: 8B. 3F
        mov     rsi, qword [rsi]                        ; 0DB3 _ 48: 8B. 36
        shl     rsi, 3                                  ; 0DB6 _ 48: C1. E6, 03
        add     rdi, rsi                                ; 0DBA _ 48: 01. F7
        mov     rsi, qword [rdi]                        ; 0DBD _ 48: 8B. 37
        mov     rdx, qword [rdx]                        ; 0DC0 _ 48: 8B. 12
        shl     rdx, 3                                  ; 0DC3 _ 48: C1. E2, 03
        add     rsi, rdx                                ; 0DC7 _ 48: 01. D6
        mov     rdx, qword [rsi]                        ; 0DCA _ 48: 8B. 16
        mov     qword [rcx], rdx                        ; 0DCD _ 48: 89. 11
        mov     qword [rax], 0                          ; 0DD0 _ 48: C7. 00, 00000000
?_060:  mov     rax, qword [rel _j]                     ; 0DD7 _ 48: 8B. 05, 00000000(GOT r)
        cmp     qword [rax], 8                          ; 0DDE _ 48: 83. 38, 08
; Note: Immediate operand could be made smaller by sign extension
        jge     ?_061                                   ; 0DE2 _ 0F 8D, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_062                                   ; 0DE8 _ E9, 00000005

?_061:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_063                                   ; 0DED _ E9, 00000067

?_062:  mov     rax, qword [rel _j]                     ; 0DF2 _ 48: 8B. 05, 00000000(GOT r)
        mov     rcx, qword [rel _dy]                    ; 0DF9 _ 48: 8B. 0D, 00000000(GOT r)
        mov     rdx, qword [rel _y]                     ; 0E00 _ 48: 8B. 15, 00000000(GOT r)
        mov     rsi, qword [rel _dx]                    ; 0E07 _ 48: 8B. 35, 00000000(GOT r)
        mov     rdi, qword [rel _x]                     ; 0E0E _ 48: 8B. 3D, 00000000(GOT r)
        mov     rdi, qword [rdi]                        ; 0E15 _ 48: 8B. 3F
        mov     rsi, qword [rsi]                        ; 0E18 _ 48: 8B. 36
        mov     r8, qword [rax]                         ; 0E1B _ 4C: 8B. 00
        shl     r8, 3                                   ; 0E1E _ 49: C1. E0, 03
        add     rsi, r8                                 ; 0E22 _ 4C: 01. C6
        add     rdi, qword [rsi]                        ; 0E25 _ 48: 03. 3E
        mov     rdx, qword [rdx]                        ; 0E28 _ 48: 8B. 12
        mov     rcx, qword [rcx]                        ; 0E2B _ 48: 8B. 09
        mov     rax, qword [rax]                        ; 0E2E _ 48: 8B. 00
        shl     rax, 3                                  ; 0E31 _ 48: C1. E0, 03
        add     rcx, rax                                ; 0E35 _ 48: 01. C1
        add     rdx, qword [rcx]                        ; 0E38 _ 48: 03. 11
        mov     rsi, rdx                                ; 0E3B _ 48: 89. D6
        call    _addList                                ; 0E3E _ E8, 00000000(rel)
        mov     rax, qword [rel _j]                     ; 0E43 _ 48: 8B. 05, 00000000(GOT r)
        mov     rcx, qword [rax]                        ; 0E4A _ 48: 8B. 08
        add     rcx, 1                                  ; 0E4D _ 48: 83. C1, 01
        mov     qword [rax], rcx                        ; 0E51 _ 48: 89. 08
        jmp     ?_060                                   ; 0E54 _ E9, FFFFFF7E

?_063:  mov     rax, qword [rel _ok]                    ; 0E59 _ 48: 8B. 05, 00000000(GOT r)
        cmp     qword [rax], 1                          ; 0E60 _ 48: 83. 38, 01
; Note: Immediate operand could be made smaller by sign extension
        jne     ?_064                                   ; 0E64 _ 0F 85, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_065                                   ; 0E6A _ E9, 00000005

?_064:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_066                                   ; 0E6F _ E9, 00000005

?_065:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_067                                   ; 0E74 _ E9, 00000016

?_066:  mov     rax, qword [rel _head]                  ; 0E79 _ 48: 8B. 05, 00000000(GOT r)
        mov     rcx, qword [rax]                        ; 0E80 _ 48: 8B. 08
        add     rcx, 1                                  ; 0E83 _ 48: 83. C1, 01
        mov     qword [rax], rcx                        ; 0E87 _ 48: 89. 08
        jmp     ?_057                                   ; 0E8A _ E9, FFFFFE9F

?_067:  ; Local function
        mov     rax, qword [rel _ok]                    ; 0E8F _ 48: 8B. 05, 00000000(GOT r)
        cmp     qword [rax], 1                          ; 0E96 _ 48: 83. 38, 01
; Note: Immediate operand could be made smaller by sign extension
        jne     ?_068                                   ; 0E9A _ 0F 85, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_069                                   ; 0EA0 _ E9, 00000005

?_068:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_070                                   ; 0EA5 _ E9, 00000049

?_069:  mov     rax, qword [rel _targety]               ; 0EAA _ 48: 8B. 05, 00000000(GOT r)
        mov     rcx, qword [rel _targetx]               ; 0EB1 _ 48: 8B. 0D, 00000000(GOT r)
        mov     rdx, qword [rel _step]                  ; 0EB8 _ 48: 8B. 15, 00000000(GOT r)
        mov     rdx, qword [rdx]                        ; 0EBF _ 48: 8B. 12
        mov     rcx, qword [rcx]                        ; 0EC2 _ 48: 8B. 09
        shl     rcx, 3                                  ; 0EC5 _ 48: C1. E1, 03
        add     rdx, rcx                                ; 0EC9 _ 48: 01. CA
        mov     rcx, qword [rdx]                        ; 0ECC _ 48: 8B. 0A
        mov     rax, qword [rax]                        ; 0ECF _ 48: 8B. 00
        shl     rax, 3                                  ; 0ED2 _ 48: C1. E0, 03
        add     rcx, rax                                ; 0ED6 _ 48: 01. C1
        mov     rdi, qword [rcx]                        ; 0ED9 _ 48: 8B. 39
        call    _toString                               ; 0EDC _ E8, 00000000(rel)
        mov     qword [rbp-70H], rax                    ; 0EE1 _ 48: 89. 45, 90
        mov     rdi, qword [rbp-70H]                    ; 0EE5 _ 48: 8B. 7D, 90
        call    _println                                ; 0EE9 _ E8, 00000000(rel)
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_071                                   ; 0EEE _ E9, 00000014

?_070:  lea     rdi, [rel _substring+27H]               ; 0EF3 _ 48: 8D. 3D, 00000027(rel)
        call    _toMoStr                                ; 0EFA _ E8, 00000000(rel)
        mov     rdi, rax                                ; 0EFF _ 48: 89. C7
        call    _print                                  ; 0F02 _ E8, 00000000(rel)
?_071:  xor     eax, eax                                ; 0F07 _ 31. C0
        add     rsp, 128                                ; 0F09 _ 48: 81. C4, 00000080
        pop     rbp                                     ; 0F10 _ 5D
        ret                                             ; 0F11 _ C3


SECTION ._TEXT.__cstring align=1 noexecute              ; section number 2, data

        db 25H, 64H, 00H, 25H, 6CH, 64H, 0AH, 00H       ; 0F12 _ %d.%ld..
        db 25H, 6CH, 64H, 00H, 25H, 73H, 00H, 6EH       ; 0F1A _ %ld.%s.n
        db 6FH, 20H, 73H, 6FH, 6CH, 75H, 74H, 69H       ; 0F22 _ o soluti
        db 6FH, 6EH, 21H, 0AH, 00H                      ; 0F2A _ on!..


