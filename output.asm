; Disassembly of file: output.o
; Sun Jun 11 10:36:52 2017
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
extern _ylist_                                          ; qword
extern _y_                                              ; qword
extern _xlist_                                          ; qword
extern _x_                                              ; qword
extern _targety_                                        ; qword
extern _targetx_                                        ; qword
extern _tail_                                           ; qword
extern _step_                                           ; qword
extern _starty_                                         ; byte
extern _startx_                                         ; byte
extern _ok_                                             ; qword
extern _now_                                            ; qword
extern _j_                                              ; qword
extern _i_                                              ; qword
extern _head_                                           ; qword
extern _dy_                                             ; qword
extern _dx_                                             ; qword
extern _N_                                              ; qword


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
        lea     rdi, [rel _substring+0CE3H]             ; 01C8 _ 48: 8D. 3D, 00000CE3(rel)
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
        lea     rax, [rel _substring+0A56H]             ; 0458 _ 48: 8D. 05, 00000A56(rel)
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
        lea     rax, [rel _substring+0A2BH]             ; 0488 _ 48: 8D. 05, 00000A2B(rel)
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
        lea     rax, [rel _substring+9BFH]              ; 04F8 _ 48: 8D. 05, 000009BF(rel)
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
        mov     rax, qword [rel _tail_]                 ; 0678 _ 48: 8B. 05, 00000000(GOT r)
        mov     rcx, qword [rel _head_]                 ; 067F _ 48: 8B. 0D, 00000000(GOT r)
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
        mov     rcx, qword [rel _i_]                    ; 06BC _ 48: 8B. 0D, 00000000(GOT r)
        mov     rdi, qword [rel _step_]                 ; 06C3 _ 48: 8B. 3D, 00000000(GOT r)
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
?_021:  mov     rax, qword [rel _i_]                    ; 06F3 _ 48: 8B. 05, 00000000(GOT r)
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
        mov     rdi, qword [rel _j_]                    ; 072D _ 48: 8B. 3D, 00000000(GOT r)
        mov     rcx, qword [rel _i_]                    ; 0734 _ 48: 8B. 0D, 00000000(GOT r)
        mov     rdx, qword [rel _step_]                 ; 073B _ 48: 8B. 15, 00000000(GOT r)
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
?_024:  mov     rax, qword [rel _j_]                    ; 0778 _ 48: 8B. 05, 00000000(GOT r)
        mov     rax, qword [rax]                        ; 077F _ 48: 8B. 00
        cmp     rax, qword [rbp-10H]                    ; 0782 _ 48: 3B. 45, F0
; Note: Immediate operand could be made smaller by sign extension
        jge     ?_025                                   ; 0786 _ 0F 8D, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_026                                   ; 078C _ E9, 00000005

?_025:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_027                                   ; 0791 _ E9, 0000004C

?_026:  mov     rax, qword [rel _j_]                    ; 0796 _ 48: 8B. 05, 00000000(GOT r)
        mov     rcx, qword [rel _i_]                    ; 079D _ 48: 8B. 0D, 00000000(GOT r)
        mov     rdx, qword [rel _step_]                 ; 07A4 _ 48: 8B. 15, 00000000(GOT r)
        mov     rdx, qword [rdx]                        ; 07AB _ 48: 8B. 12
        mov     rcx, qword [rcx]                        ; 07AE _ 48: 8B. 09
        shl     rcx, 3                                  ; 07B1 _ 48: C1. E1, 03
        add     rdx, rcx                                ; 07B5 _ 48: 01. CA
        mov     rcx, qword [rdx]                        ; 07B8 _ 48: 8B. 0A
        mov     rax, qword [rax]                        ; 07BB _ 48: 8B. 00
        shl     rax, 3                                  ; 07BE _ 48: C1. E0, 03
        add     rcx, rax                                ; 07C2 _ 48: 01. C1
        mov     qword [rcx], 0                          ; 07C5 _ 48: C7. 01, 00000000
        mov     rax, qword [rel _j_]                    ; 07CC _ 48: 8B. 05, 00000000(GOT r)
        mov     rcx, qword [rax]                        ; 07D3 _ 48: 8B. 08
        add     rcx, 1                                  ; 07D6 _ 48: 83. C1, 01
        mov     qword [rax], rcx                        ; 07DA _ 48: 89. 08
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_024                                   ; 07DD _ E9, FFFFFF96

?_027:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_028                                   ; 07E2 _ E9, 00000000

?_028:  mov     rax, qword [rel _i_]                    ; 07E7 _ 48: 8B. 05, 00000000(GOT r)
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
        mov     rax, qword [rel _N_]                    ; 0814 _ 48: 8B. 05, 00000000(GOT r)
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
        sub     rsp, 48                                 ; 0874 _ 48: 83. EC, 30
        mov     qword [rbp-8H], rdi                     ; 0878 _ 48: 89. 7D, F8
        mov     qword [rbp-10H], rsi                    ; 087C _ 48: 89. 75, F0
        mov     rsi, qword [rbp-8H]                     ; 0880 _ 48: 8B. 75, F8
        mov     qword [rbp-18H], rsi                    ; 0884 _ 48: 89. 75, E8
        mov     rsi, qword [rbp-10H]                    ; 0888 _ 48: 8B. 75, F0
        mov     qword [rbp-20H], rsi                    ; 088C _ 48: 89. 75, E0
        mov     rdi, qword [rbp-18H]                    ; 0890 _ 48: 8B. 7D, E8
        call    _check                                  ; 0894 _ E8, 00000000(rel)
        mov     qword [rbp-30H], rax                    ; 0899 _ 48: 89. 45, D0
        cmp     qword [rbp-30H], 0                      ; 089D _ 48: 83. 7D, D0, 00
; Note: Immediate operand could be made smaller by sign extension
        je      ?_033                                   ; 08A2 _ 0F 84, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_034                                   ; 08A8 _ E9, 00000005

?_033:  jmp     ?_044                                   ; 08AD _ E9, 00000123

?_034:  mov     rdi, qword [rbp-20H]                    ; 08B2 _ 48: 8B. 7D, E0
        call    _check                                  ; 08B6 _ E8, 00000000(rel)
        mov     qword [rbp-28H], rax                    ; 08BB _ 48: 89. 45, D8
        cmp     qword [rbp-28H], 0                      ; 08BF _ 48: 83. 7D, D8, 00
; Note: Immediate operand could be made smaller by sign extension
        je      ?_035                                   ; 08C4 _ 0F 84, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_036                                   ; 08CA _ E9, 00000005

?_035:  jmp     ?_044                                   ; 08CF _ E9, 00000101

?_036:  mov     rax, qword [rel _step_]                 ; 08D4 _ 48: 8B. 05, 00000000(GOT r)
        mov     rax, qword [rax]                        ; 08DB _ 48: 8B. 00
        mov     rcx, qword [rbp-18H]                    ; 08DE _ 48: 8B. 4D, E8
        shl     rcx, 3                                  ; 08E2 _ 48: C1. E1, 03
        add     rax, rcx                                ; 08E6 _ 48: 01. C8
        mov     rax, qword [rax]                        ; 08E9 _ 48: 8B. 00
        mov     rcx, qword [rbp-20H]                    ; 08EC _ 48: 8B. 4D, E0
        shl     rcx, 3                                  ; 08F0 _ 48: C1. E1, 03
        add     rax, rcx                                ; 08F4 _ 48: 01. C8
        cmp     qword [rax], -1                         ; 08F7 _ 48: 83. 38, FF
; Note: Immediate operand could be made smaller by sign extension
        jne     ?_037                                   ; 08FB _ 0F 85, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_038                                   ; 0901 _ E9, 00000005

?_037:  jmp     ?_044                                   ; 0906 _ E9, 000000CA

?_038:  mov     rax, qword [rel _targetx_]              ; 090B _ 48: 8B. 05, 00000000(GOT r)
        mov     rcx, qword [rel _step_]                 ; 0912 _ 48: 8B. 0D, 00000000(GOT r)
        mov     rdx, qword [rel _now_]                  ; 0919 _ 48: 8B. 15, 00000000(GOT r)
        mov     rsi, qword [rel _tail_]                 ; 0920 _ 48: 8B. 35, 00000000(GOT r)
        mov     rdi, qword [rel _ylist_]                ; 0927 _ 48: 8B. 3D, 00000000(GOT r)
        mov     r8, qword [rel _xlist_]                 ; 092E _ 4C: 8B. 05, 00000000(GOT r)
        mov     r9, qword [rsi]                         ; 0935 _ 4C: 8B. 0E
        add     r9, 1                                   ; 0938 _ 49: 83. C1, 01
        mov     qword [rsi], r9                         ; 093C _ 4C: 89. 0E
        mov     r9, qword [rbp-18H]                     ; 093F _ 4C: 8B. 4D, E8
        mov     r8, qword [r8]                          ; 0943 _ 4D: 8B. 00
        mov     r10, qword [rsi]                        ; 0946 _ 4C: 8B. 16
        shl     r10, 3                                  ; 0949 _ 49: C1. E2, 03
        add     r8, r10                                 ; 094D _ 4D: 01. D0
        mov     qword [r8], r9                          ; 0950 _ 4D: 89. 08
        mov     r8, qword [rbp-20H]                     ; 0953 _ 4C: 8B. 45, E0
        mov     rdi, qword [rdi]                        ; 0957 _ 48: 8B. 3F
        mov     rsi, qword [rsi]                        ; 095A _ 48: 8B. 36
        shl     rsi, 3                                  ; 095D _ 48: C1. E6, 03
        add     rdi, rsi                                ; 0961 _ 48: 01. F7
        mov     qword [rdi], r8                         ; 0964 _ 4C: 89. 07
        mov     rdx, qword [rdx]                        ; 0967 _ 48: 8B. 12
        add     rdx, 1                                  ; 096A _ 48: 83. C2, 01
        mov     rcx, qword [rcx]                        ; 096E _ 48: 8B. 09
        mov     rsi, qword [rbp-18H]                    ; 0971 _ 48: 8B. 75, E8
        shl     rsi, 3                                  ; 0975 _ 48: C1. E6, 03
        add     rcx, rsi                                ; 0979 _ 48: 01. F1
        mov     rcx, qword [rcx]                        ; 097C _ 48: 8B. 09
        mov     rsi, qword [rbp-20H]                    ; 097F _ 48: 8B. 75, E0
        shl     rsi, 3                                  ; 0983 _ 48: C1. E6, 03
        add     rcx, rsi                                ; 0987 _ 48: 01. F1
        mov     qword [rcx], rdx                        ; 098A _ 48: 89. 11
        mov     rcx, qword [rbp-18H]                    ; 098D _ 48: 8B. 4D, E8
        cmp     rcx, qword [rax]                        ; 0991 _ 48: 3B. 08
; Note: Immediate operand could be made smaller by sign extension
        jne     ?_039                                   ; 0994 _ 0F 85, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_040                                   ; 099A _ E9, 00000005

?_039:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_043                                   ; 099F _ E9, 0000002C

?_040:  mov     rax, qword [rel _targety_]              ; 09A4 _ 48: 8B. 05, 00000000(GOT r)
        mov     rcx, qword [rbp-20H]                    ; 09AB _ 48: 8B. 4D, E0
        cmp     rcx, qword [rax]                        ; 09AF _ 48: 3B. 08
; Note: Immediate operand could be made smaller by sign extension
        jne     ?_041                                   ; 09B2 _ 0F 85, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_042                                   ; 09B8 _ E9, 00000005

?_041:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_043                                   ; 09BD _ E9, 0000000E

?_042:  mov     rax, qword [rel _ok_]                   ; 09C2 _ 48: 8B. 05, 00000000(GOT r)
        mov     qword [rax], 1                          ; 09C9 _ 48: C7. 00, 00000001
?_043:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_044                                   ; 09D0 _ E9, 00000000
; _addList End of function

?_044:  ; Local function
        add     rsp, 48                                 ; 09D5 _ 48: 83. C4, 30
        pop     rbp                                     ; 09D9 _ 5D
        ret                                             ; 09DA _ C3

; Filling space: 5H
; Filler type: Multi-byte NOP
;       db 0FH, 1FH, 44H, 00H, 00H

ALIGN   8

_main:  ; Function begin
        push    rbp                                     ; 09E0 _ 55
        mov     rbp, rsp                                ; 09E1 _ 48: 89. E5
        sub     rsp, 128                                ; 09E4 _ 48: 81. EC, 00000080
        mov     dword [rbp-4H], 0                       ; 09EB _ C7. 45, FC, 00000000
        mov     qword [rbp-40H], 12000                  ; 09F2 _ 48: C7. 45, C0, 00002EE0
        mov     rax, qword [rbp-40H]                    ; 09FA _ 48: 8B. 45, C0
        shl     rax, 3                                  ; 09FE _ 48: C1. E0, 03
        add     rax, 8                                  ; 0A02 _ 48: 83. C0, 08
        mov     rdi, rax                                ; 0A06 _ 48: 89. C7
        call    ___lib_malloc                           ; 0A09 _ E8, 00000000(rel)
        mov     qword [rbp-30H], rax                    ; 0A0E _ 48: 89. 45, D0
        mov     rax, qword [rbp-40H]                    ; 0A12 _ 48: 8B. 45, C0
        mov     rdi, qword [rbp-30H]                    ; 0A16 _ 48: 8B. 7D, D0
        mov     qword [rdi], rax                        ; 0A1A _ 48: 89. 07
        mov     rax, qword [rbp-30H]                    ; 0A1D _ 48: 8B. 45, D0
        add     rax, 8                                  ; 0A21 _ 48: 83. C0, 08
        mov     qword [rbp-30H], rax                    ; 0A25 _ 48: 89. 45, D0
        mov     qword [rbp-10H], 12000                  ; 0A29 _ 48: C7. 45, F0, 00002EE0
        mov     rax, qword [rbp-10H]                    ; 0A31 _ 48: 8B. 45, F0
        shl     rax, 3                                  ; 0A35 _ 48: C1. E0, 03
        add     rax, 8                                  ; 0A39 _ 48: 83. C0, 08
        mov     rdi, rax                                ; 0A3D _ 48: 89. C7
        call    ___lib_malloc                           ; 0A40 _ E8, 00000000(rel)
        mov     qword [rbp-18H], rax                    ; 0A45 _ 48: 89. 45, E8
        mov     rax, qword [rbp-10H]                    ; 0A49 _ 48: 8B. 45, F0
        mov     rdi, qword [rbp-18H]                    ; 0A4D _ 48: 8B. 7D, E8
        mov     qword [rdi], rax                        ; 0A51 _ 48: 89. 07
        mov     rax, qword [rbp-18H]                    ; 0A54 _ 48: 8B. 45, E8
        add     rax, 8                                  ; 0A58 _ 48: 83. C0, 08
        mov     qword [rbp-18H], rax                    ; 0A5C _ 48: 89. 45, E8
        mov     qword [rbp-50H], 8                      ; 0A60 _ 48: C7. 45, B0, 00000008
        mov     rax, qword [rbp-50H]                    ; 0A68 _ 48: 8B. 45, B0
        shl     rax, 3                                  ; 0A6C _ 48: C1. E0, 03
        add     rax, 8                                  ; 0A70 _ 48: 83. C0, 08
        mov     rdi, rax                                ; 0A74 _ 48: 89. C7
        call    ___lib_malloc                           ; 0A77 _ E8, 00000000(rel)
        mov     qword [rbp-20H], rax                    ; 0A7C _ 48: 89. 45, E0
        mov     rax, qword [rbp-50H]                    ; 0A80 _ 48: 8B. 45, B0
        mov     rdi, qword [rbp-20H]                    ; 0A84 _ 48: 8B. 7D, E0
        mov     qword [rdi], rax                        ; 0A88 _ 48: 89. 07
        mov     rax, qword [rbp-20H]                    ; 0A8B _ 48: 8B. 45, E0
        add     rax, 8                                  ; 0A8F _ 48: 83. C0, 08
        mov     qword [rbp-20H], rax                    ; 0A93 _ 48: 89. 45, E0
        mov     qword [rbp-60H], 9                      ; 0A97 _ 48: C7. 45, A0, 00000009
        mov     rax, qword [rbp-60H]                    ; 0A9F _ 48: 8B. 45, A0
        shl     rax, 3                                  ; 0AA3 _ 48: C1. E0, 03
        add     rax, 8                                  ; 0AA7 _ 48: 83. C0, 08
        mov     rdi, rax                                ; 0AAB _ 48: 89. C7
        call    ___lib_malloc                           ; 0AAE _ E8, 00000000(rel)
        mov     ecx, 106                                ; 0AB3 _ B9, 0000006A
        mov     edi, ecx                                ; 0AB8 _ 89. CF
        mov     rdx, qword [rel _dy_]                   ; 0ABA _ 48: 8B. 15, 00000000(GOT r)
        mov     rsi, qword [rel _dx_]                   ; 0AC1 _ 48: 8B. 35, 00000000(GOT r)
        mov     r8, qword [rel _ylist_]                 ; 0AC8 _ 4C: 8B. 05, 00000000(GOT r)
        mov     r9, qword [rel _xlist_]                 ; 0ACF _ 4C: 8B. 0D, 00000000(GOT r)
        mov     qword [rbp-58H], rax                    ; 0AD6 _ 48: 89. 45, A8
        mov     rax, qword [rbp-60H]                    ; 0ADA _ 48: 8B. 45, A0
        mov     r10, qword [rbp-58H]                    ; 0ADE _ 4C: 8B. 55, A8
        mov     qword [r10], rax                        ; 0AE2 _ 49: 89. 02
        mov     rax, qword [rbp-58H]                    ; 0AE5 _ 48: 8B. 45, A8
        add     rax, 8                                  ; 0AE9 _ 48: 83. C0, 08
        mov     qword [rbp-58H], rax                    ; 0AED _ 48: 89. 45, A8
        mov     rax, qword [rbp-30H]                    ; 0AF1 _ 48: 8B. 45, D0
        mov     qword [r9], rax                         ; 0AF5 _ 49: 89. 01
        mov     rax, qword [rbp-18H]                    ; 0AF8 _ 48: 8B. 45, E8
        mov     qword [r8], rax                         ; 0AFC _ 49: 89. 00
        mov     rax, qword [rbp-20H]                    ; 0AFF _ 48: 8B. 45, E0
        mov     qword [rsi], rax                        ; 0B03 _ 48: 89. 06
        mov     rax, qword [rbp-58H]                    ; 0B06 _ 48: 8B. 45, A8
        mov     qword [rdx], rax                        ; 0B0A _ 48: 89. 02
        call    _origin                                 ; 0B0D _ E8, 00000000(rel)
        call    _getInt                                 ; 0B12 _ E8, 00000000(rel)
        mov     rdx, qword [rel _i_]                    ; 0B17 _ 48: 8B. 15, 00000000(GOT r)
        mov     rsi, qword [rel _targetx_]              ; 0B1E _ 48: 8B. 35, 00000000(GOT r)
        mov     rdi, qword [rel _targety_]              ; 0B25 _ 48: 8B. 3D, 00000000(GOT r)
        mov     r8, qword [rel _N_]                     ; 0B2C _ 4C: 8B. 05, 00000000(GOT r)
        mov     qword [rbp-70H], rax                    ; 0B33 _ 48: 89. 45, 90
        mov     rax, qword [rbp-70H]                    ; 0B37 _ 48: 8B. 45, 90
        mov     qword [r8], rax                         ; 0B3B _ 49: 89. 00
        mov     rax, qword [r8]                         ; 0B3E _ 49: 8B. 00
        sub     rax, 1                                  ; 0B41 _ 48: 83. E8, 01
        mov     qword [rdi], rax                        ; 0B45 _ 48: 89. 07
        mov     rax, qword [rdi]                        ; 0B48 _ 48: 8B. 07
        mov     qword [rsi], rax                        ; 0B4B _ 48: 89. 06
        mov     qword [rdx], 0                          ; 0B4E _ 48: C7. 02, 00000000
?_045:  mov     rax, qword [rel _N_]                    ; 0B55 _ 48: 8B. 05, 00000000(GOT r)
        mov     rcx, qword [rel _i_]                    ; 0B5C _ 48: 8B. 0D, 00000000(GOT r)
        mov     rcx, qword [rcx]                        ; 0B63 _ 48: 8B. 09
        cmp     rcx, qword [rax]                        ; 0B66 _ 48: 3B. 08
; Note: Immediate operand could be made smaller by sign extension
        jge     ?_046                                   ; 0B69 _ 0F 8D, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_047                                   ; 0B6F _ E9, 00000005

?_046:  jmp     ?_053                                   ; 0B74 _ E9, 00000099

?_047:  mov     rax, qword [rel _j_]                    ; 0B79 _ 48: 8B. 05, 00000000(GOT r)
        mov     qword [rax], 0                          ; 0B80 _ 48: C7. 00, 00000000
?_048:  mov     rax, qword [rel _N_]                    ; 0B87 _ 48: 8B. 05, 00000000(GOT r)
        mov     rcx, qword [rel _j_]                    ; 0B8E _ 48: 8B. 0D, 00000000(GOT r)
        mov     rcx, qword [rcx]                        ; 0B95 _ 48: 8B. 09
        cmp     rcx, qword [rax]                        ; 0B98 _ 48: 3B. 08
; Note: Immediate operand could be made smaller by sign extension
        jge     ?_049                                   ; 0B9B _ 0F 8D, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_050                                   ; 0BA1 _ E9, 00000005

?_049:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_051                                   ; 0BA6 _ E9, 0000004C

?_050:  mov     rax, qword [rel _j_]                    ; 0BAB _ 48: 8B. 05, 00000000(GOT r)
        mov     rcx, qword [rel _i_]                    ; 0BB2 _ 48: 8B. 0D, 00000000(GOT r)
        mov     rdx, qword [rel _step_]                 ; 0BB9 _ 48: 8B. 15, 00000000(GOT r)
        mov     rdx, qword [rdx]                        ; 0BC0 _ 48: 8B. 12
        mov     rcx, qword [rcx]                        ; 0BC3 _ 48: 8B. 09
        shl     rcx, 3                                  ; 0BC6 _ 48: C1. E1, 03
        add     rdx, rcx                                ; 0BCA _ 48: 01. CA
        mov     rcx, qword [rdx]                        ; 0BCD _ 48: 8B. 0A
        mov     rax, qword [rax]                        ; 0BD0 _ 48: 8B. 00
        shl     rax, 3                                  ; 0BD3 _ 48: C1. E0, 03
        add     rcx, rax                                ; 0BD7 _ 48: 01. C1
        mov     qword [rcx], -1                         ; 0BDA _ 48: C7. 01, FFFFFFFF
        mov     rax, qword [rel _j_]                    ; 0BE1 _ 48: 8B. 05, 00000000(GOT r)
        mov     rcx, qword [rax]                        ; 0BE8 _ 48: 8B. 08
        add     rcx, 1                                  ; 0BEB _ 48: 83. C1, 01
        mov     qword [rax], rcx                        ; 0BEF _ 48: 89. 08
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_048                                   ; 0BF2 _ E9, FFFFFF90

?_051:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_052                                   ; 0BF7 _ E9, 00000000

?_052:  mov     rax, qword [rel _i_]                    ; 0BFC _ 48: 8B. 05, 00000000(GOT r)
        mov     rcx, qword [rax]                        ; 0C03 _ 48: 8B. 08
        add     rcx, 1                                  ; 0C06 _ 48: 83. C1, 01
        mov     qword [rax], rcx                        ; 0C0A _ 48: 89. 08
        jmp     ?_045                                   ; 0C0D _ E9, FFFFFF43
; _main End of function

?_053:  ; Local function
        mov     rax, qword [rel _dy_]                   ; 0C12 _ 48: 8B. 05, 00000000(GOT r)
        mov     rcx, qword [rel _dx_]                   ; 0C19 _ 48: 8B. 0D, 00000000(GOT r)
        mov     rdx, qword [rcx]                        ; 0C20 _ 48: 8B. 11
        mov     qword [rdx], -2                         ; 0C23 _ 48: C7. 02, FFFFFFFE
        mov     rdx, qword [rax]                        ; 0C2A _ 48: 8B. 10
        mov     qword [rdx], -1                         ; 0C2D _ 48: C7. 02, FFFFFFFF
        mov     rdx, qword [rcx]                        ; 0C34 _ 48: 8B. 11
        mov     qword [rdx+8H], -2                      ; 0C37 _ 48: C7. 42, 08, FFFFFFFE
        mov     rdx, qword [rax]                        ; 0C3F _ 48: 8B. 10
        mov     qword [rdx+8H], 1                       ; 0C42 _ 48: C7. 42, 08, 00000001
        mov     rdx, qword [rcx]                        ; 0C4A _ 48: 8B. 11
        mov     qword [rdx+10H], 2                      ; 0C4D _ 48: C7. 42, 10, 00000002
        mov     rdx, qword [rax]                        ; 0C55 _ 48: 8B. 10
        mov     qword [rdx+10H], -1                     ; 0C58 _ 48: C7. 42, 10, FFFFFFFF
        mov     rdx, qword [rcx]                        ; 0C60 _ 48: 8B. 11
        mov     qword [rdx+18H], 2                      ; 0C63 _ 48: C7. 42, 18, 00000002
        mov     rdx, qword [rax]                        ; 0C6B _ 48: 8B. 10
        mov     qword [rdx+18H], 1                      ; 0C6E _ 48: C7. 42, 18, 00000001
        mov     rdx, qword [rcx]                        ; 0C76 _ 48: 8B. 11
        mov     qword [rdx+20H], -1                     ; 0C79 _ 48: C7. 42, 20, FFFFFFFF
        mov     rdx, qword [rax]                        ; 0C81 _ 48: 8B. 10
        mov     qword [rdx+20H], -2                     ; 0C84 _ 48: C7. 42, 20, FFFFFFFE
        mov     rdx, qword [rcx]                        ; 0C8C _ 48: 8B. 11
        mov     qword [rdx+28H], -1                     ; 0C8F _ 48: C7. 42, 28, FFFFFFFF
        mov     rdx, qword [rax]                        ; 0C97 _ 48: 8B. 10
        mov     qword [rdx+28H], 2                      ; 0C9A _ 48: C7. 42, 28, 00000002
        mov     rdx, qword [rcx]                        ; 0CA2 _ 48: 8B. 11
        mov     qword [rdx+30H], 1                      ; 0CA5 _ 48: C7. 42, 30, 00000001
        mov     rdx, qword [rax]                        ; 0CAD _ 48: 8B. 10
        mov     qword [rdx+30H], -2                     ; 0CB0 _ 48: C7. 42, 30, FFFFFFFE
        mov     rcx, qword [rcx]                        ; 0CB8 _ 48: 8B. 09
        mov     qword [rcx+38H], 1                      ; 0CBB _ 48: C7. 41, 38, 00000001
        mov     rax, qword [rax]                        ; 0CC3 _ 48: 8B. 00
        mov     qword [rax+38H], 2                      ; 0CC6 _ 48: C7. 40, 38, 00000002
?_054:  mov     rax, qword [rel _tail_]                 ; 0CCE _ 48: 8B. 05, 00000000(GOT r)
        mov     rcx, qword [rel _head_]                 ; 0CD5 _ 48: 8B. 0D, 00000000(GOT r)
        mov     rcx, qword [rcx]                        ; 0CDC _ 48: 8B. 09
        cmp     rcx, qword [rax]                        ; 0CDF _ 48: 3B. 08
; Note: Immediate operand could be made smaller by sign extension
        jg      ?_055                                   ; 0CE2 _ 0F 8F, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_056                                   ; 0CE8 _ E9, 00000005

?_055:  jmp     ?_064                                   ; 0CED _ E9, 0000013D

?_056:  mov     rax, qword [rel _j_]                    ; 0CF2 _ 48: 8B. 05, 00000000(GOT r)
        mov     rcx, qword [rel _now_]                  ; 0CF9 _ 48: 8B. 0D, 00000000(GOT r)
        mov     rdx, qword [rel _y_]                    ; 0D00 _ 48: 8B. 15, 00000000(GOT r)
        mov     rsi, qword [rel _x_]                    ; 0D07 _ 48: 8B. 35, 00000000(GOT r)
        mov     rdi, qword [rel _step_]                 ; 0D0E _ 48: 8B. 3D, 00000000(GOT r)
        mov     r8, qword [rel _head_]                  ; 0D15 _ 4C: 8B. 05, 00000000(GOT r)
        mov     r9, qword [rel _ylist_]                 ; 0D1C _ 4C: 8B. 0D, 00000000(GOT r)
        mov     r10, qword [rel _xlist_]                ; 0D23 _ 4C: 8B. 15, 00000000(GOT r)
        mov     r10, qword [r10]                        ; 0D2A _ 4D: 8B. 12
        mov     r11, qword [r8]                         ; 0D2D _ 4D: 8B. 18
        shl     r11, 3                                  ; 0D30 _ 49: C1. E3, 03
        add     r10, r11                                ; 0D34 _ 4D: 01. DA
        mov     r10, qword [r10]                        ; 0D37 _ 4D: 8B. 12
        mov     qword [rsi], r10                        ; 0D3A _ 4C: 89. 16
        mov     r9, qword [r9]                          ; 0D3D _ 4D: 8B. 09
        mov     r8, qword [r8]                          ; 0D40 _ 4D: 8B. 00
        shl     r8, 3                                   ; 0D43 _ 49: C1. E0, 03
        add     r9, r8                                  ; 0D47 _ 4D: 01. C1
        mov     r8, qword [r9]                          ; 0D4A _ 4D: 8B. 01
        mov     qword [rdx], r8                         ; 0D4D _ 4C: 89. 02
        mov     rdi, qword [rdi]                        ; 0D50 _ 48: 8B. 3F
        mov     rsi, qword [rsi]                        ; 0D53 _ 48: 8B. 36
        shl     rsi, 3                                  ; 0D56 _ 48: C1. E6, 03
        add     rdi, rsi                                ; 0D5A _ 48: 01. F7
        mov     rsi, qword [rdi]                        ; 0D5D _ 48: 8B. 37
        mov     rdx, qword [rdx]                        ; 0D60 _ 48: 8B. 12
        shl     rdx, 3                                  ; 0D63 _ 48: C1. E2, 03
        add     rsi, rdx                                ; 0D67 _ 48: 01. D6
        mov     rdx, qword [rsi]                        ; 0D6A _ 48: 8B. 16
        mov     qword [rcx], rdx                        ; 0D6D _ 48: 89. 11
        mov     qword [rax], 0                          ; 0D70 _ 48: C7. 00, 00000000
?_057:  mov     rax, qword [rel _j_]                    ; 0D77 _ 48: 8B. 05, 00000000(GOT r)
        cmp     qword [rax], 8                          ; 0D7E _ 48: 83. 38, 08
; Note: Immediate operand could be made smaller by sign extension
        jge     ?_058                                   ; 0D82 _ 0F 8D, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_059                                   ; 0D88 _ E9, 00000005

?_058:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_060                                   ; 0D8D _ E9, 00000067

?_059:  mov     rax, qword [rel _j_]                    ; 0D92 _ 48: 8B. 05, 00000000(GOT r)
        mov     rcx, qword [rel _dy_]                   ; 0D99 _ 48: 8B. 0D, 00000000(GOT r)
        mov     rdx, qword [rel _y_]                    ; 0DA0 _ 48: 8B. 15, 00000000(GOT r)
        mov     rsi, qword [rel _dx_]                   ; 0DA7 _ 48: 8B. 35, 00000000(GOT r)
        mov     rdi, qword [rel _x_]                    ; 0DAE _ 48: 8B. 3D, 00000000(GOT r)
        mov     rdi, qword [rdi]                        ; 0DB5 _ 48: 8B. 3F
        mov     rsi, qword [rsi]                        ; 0DB8 _ 48: 8B. 36
        mov     r8, qword [rax]                         ; 0DBB _ 4C: 8B. 00
        shl     r8, 3                                   ; 0DBE _ 49: C1. E0, 03
        add     rsi, r8                                 ; 0DC2 _ 4C: 01. C6
        add     rdi, qword [rsi]                        ; 0DC5 _ 48: 03. 3E
        mov     rdx, qword [rdx]                        ; 0DC8 _ 48: 8B. 12
        mov     rcx, qword [rcx]                        ; 0DCB _ 48: 8B. 09
        mov     rax, qword [rax]                        ; 0DCE _ 48: 8B. 00
        shl     rax, 3                                  ; 0DD1 _ 48: C1. E0, 03
        add     rcx, rax                                ; 0DD5 _ 48: 01. C1
        add     rdx, qword [rcx]                        ; 0DD8 _ 48: 03. 11
        mov     rsi, rdx                                ; 0DDB _ 48: 89. D6
        call    _addList                                ; 0DDE _ E8, 00000000(rel)
        mov     rax, qword [rel _j_]                    ; 0DE3 _ 48: 8B. 05, 00000000(GOT r)
        mov     rcx, qword [rax]                        ; 0DEA _ 48: 8B. 08
        add     rcx, 1                                  ; 0DED _ 48: 83. C1, 01
        mov     qword [rax], rcx                        ; 0DF1 _ 48: 89. 08
        jmp     ?_057                                   ; 0DF4 _ E9, FFFFFF7E

?_060:  mov     rax, qword [rel _ok_]                   ; 0DF9 _ 48: 8B. 05, 00000000(GOT r)
        cmp     qword [rax], 1                          ; 0E00 _ 48: 83. 38, 01
; Note: Immediate operand could be made smaller by sign extension
        jne     ?_061                                   ; 0E04 _ 0F 85, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_062                                   ; 0E0A _ E9, 00000005

?_061:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_063                                   ; 0E0F _ E9, 00000005

?_062:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_064                                   ; 0E14 _ E9, 00000016

?_063:  mov     rax, qword [rel _head_]                 ; 0E19 _ 48: 8B. 05, 00000000(GOT r)
        mov     rcx, qword [rax]                        ; 0E20 _ 48: 8B. 08
        add     rcx, 1                                  ; 0E23 _ 48: 83. C1, 01
        mov     qword [rax], rcx                        ; 0E27 _ 48: 89. 08
        jmp     ?_054                                   ; 0E2A _ E9, FFFFFE9F

?_064:  ; Local function
        mov     rax, qword [rel _ok_]                   ; 0E2F _ 48: 8B. 05, 00000000(GOT r)
        cmp     qword [rax], 1                          ; 0E36 _ 48: 83. 38, 01
; Note: Immediate operand could be made smaller by sign extension
        jne     ?_065                                   ; 0E3A _ 0F 85, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_066                                   ; 0E40 _ E9, 00000005

?_065:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_067                                   ; 0E45 _ E9, 00000049

?_066:  mov     rax, qword [rel _targety_]              ; 0E4A _ 48: 8B. 05, 00000000(GOT r)
        mov     rcx, qword [rel _targetx_]              ; 0E51 _ 48: 8B. 0D, 00000000(GOT r)
        mov     rdx, qword [rel _step_]                 ; 0E58 _ 48: 8B. 15, 00000000(GOT r)
        mov     rdx, qword [rdx]                        ; 0E5F _ 48: 8B. 12
        mov     rcx, qword [rcx]                        ; 0E62 _ 48: 8B. 09
        shl     rcx, 3                                  ; 0E65 _ 48: C1. E1, 03
        add     rdx, rcx                                ; 0E69 _ 48: 01. CA
        mov     rcx, qword [rdx]                        ; 0E6C _ 48: 8B. 0A
        mov     rax, qword [rax]                        ; 0E6F _ 48: 8B. 00
        shl     rax, 3                                  ; 0E72 _ 48: C1. E0, 03
        add     rcx, rax                                ; 0E76 _ 48: 01. C1
        mov     rdi, qword [rcx]                        ; 0E79 _ 48: 8B. 39
        call    _toString                               ; 0E7C _ E8, 00000000(rel)
        mov     qword [rbp-78H], rax                    ; 0E81 _ 48: 89. 45, 88
        mov     rdi, qword [rbp-78H]                    ; 0E85 _ 48: 8B. 7D, 88
        call    _println                                ; 0E89 _ E8, 00000000(rel)
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_068                                   ; 0E8E _ E9, 00000014

?_067:  lea     rdi, [rel _substring+27H]               ; 0E93 _ 48: 8D. 3D, 00000027(rel)
        call    _toMoStr                                ; 0E9A _ E8, 00000000(rel)
        mov     rdi, rax                                ; 0E9F _ 48: 89. C7
        call    _print                                  ; 0EA2 _ E8, 00000000(rel)
?_068:  xor     eax, eax                                ; 0EA7 _ 31. C0
        add     rsp, 128                                ; 0EA9 _ 48: 81. C4, 00000080
        pop     rbp                                     ; 0EB0 _ 5D
        ret                                             ; 0EB1 _ C3


SECTION ._TEXT.__cstring align=1 noexecute              ; section number 2, data

        db 25H, 64H, 00H, 25H, 6CH, 64H, 0AH, 00H       ; 0EB2 _ %d.%ld..
        db 25H, 6CH, 64H, 00H, 25H, 73H, 00H, 6EH       ; 0EBA _ %ld.%s.n
        db 6FH, 20H, 73H, 6FH, 6CH, 75H, 74H, 69H       ; 0EC2 _ o soluti
        db 6FH, 6EH, 21H, 0AH, 00H                      ; 0ECA _ on!..


