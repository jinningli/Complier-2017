; Disassembly of file: output.o
; Sun Jun 11 21:49:54 2017
; Mode: 64 bits
; Syntax: YASM/NASM
; Instruction set: Pentium Pro, x64

default rel

global _str_le
global _str_eql
global _strlength: function
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
global ___lib_malloc: function
global _println: function
global _print
global _toString: function
global _init: function
global _Ksm: function
global _Calculate_p: function
global _Euler: function
global _Calculate_q: function
global _Calculate_Ksm: function
global _Calculate_G: function
global _Calculate_Comb: function
global _main

extern _strlen                                          ; near
extern _strcmp                                          ; near
extern _scanf                                           ; near
extern _puts                                            ; near
extern _printf                                          ; near
extern _malloc                                          ; near
extern ___strcpy_chk                                    ; near
extern _v_                                              ; qword
extern _tot_                                            ; qword
extern _res_                                            ; qword
extern _q_                                              ; qword
extern _prime_                                          ; qword
extern _p_                                              ; qword
extern _m_                                              ; qword
extern _ksm_                                            ; qword
extern _g_                                              ; qword
extern _fn_                                             ; qword
extern _fm_                                             ; qword
extern _fc_                                             ; qword
extern _b_                                              ; qword
extern _Sum_                                            ; qword
extern _N_                                              ; qword
extern _Mod_                                            ; qword
extern _M_                                              ; qword
extern _Comb_                                           ; qword
extern _C_                                              ; qword


SECTION ._TEXT.__text align=16 execute                  ; section number 1, code

_str_le:; Function begin
        push    rbp                                     ; 0000 _ 55
        mov     rbp, rsp                                ; 0001 _ 48: 89. E5
        sub     rsp, 32                                 ; 0004 _ 48: 83. EC, 20
        mov     qword [rbp-10H], rdi                    ; 0008 _ 48: 89. 7D, F0
        mov     qword [rbp-18H], rsi                    ; 000C _ 48: 89. 75, E8
        mov     rdi, qword [rbp-10H]                    ; 0010 _ 48: 8B. 7D, F0
        mov     rsi, qword [rbp-18H]                    ; 0014 _ 48: 8B. 75, E8
        call    _strcmp                                 ; 0018 _ E8, 00000000(rel)
        cmp     eax, 0                                  ; 001D _ 83. F8, 00
; Note: Immediate operand could be made smaller by sign extension
        jge     ?_001                                   ; 0020 _ 0F 8D, 0000000D
        mov     qword [rbp-8H], 1                       ; 0026 _ 48: C7. 45, F8, 00000001
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_002                                   ; 002E _ E9, 00000008

?_001:  mov     qword [rbp-8H], 0                       ; 0033 _ 48: C7. 45, F8, 00000000
?_002:  mov     rax, qword [rbp-8H]                     ; 003B _ 48: 8B. 45, F8
        add     rsp, 32                                 ; 003F _ 48: 83. C4, 20
        pop     rbp                                     ; 0043 _ 5D
        ret                                             ; 0044 _ C3
; _str_le End of function

; Filling space: 0BH
; Filler type: Multi-byte NOP
;       db 66H, 66H, 2EH, 0FH, 1FH, 84H, 00H, 00H
;       db 00H, 00H, 00H

ALIGN   16

_str_eql:; Function begin
        push    rbp                                     ; 0050 _ 55
        mov     rbp, rsp                                ; 0051 _ 48: 89. E5
        sub     rsp, 48                                 ; 0054 _ 48: 83. EC, 30
        mov     qword [rbp-10H], rdi                    ; 0058 _ 48: 89. 7D, F0
        mov     qword [rbp-18H], rsi                    ; 005C _ 48: 89. 75, E8
        mov     rdi, qword [rbp-10H]                    ; 0060 _ 48: 8B. 7D, F0
        call    _strlength                              ; 0064 _ E8, 00000000(rel)
        mov     ecx, eax                                ; 0069 _ 89. C1
        mov     dword [rbp-1CH], ecx                    ; 006B _ 89. 4D, E4
        mov     rdi, qword [rbp-18H]                    ; 006E _ 48: 8B. 7D, E8
        call    _strlength                              ; 0072 _ E8, 00000000(rel)
        mov     ecx, eax                                ; 0077 _ 89. C1
        mov     dword [rbp-20H], ecx                    ; 0079 _ 89. 4D, E0
        mov     ecx, dword [rbp-1CH]                    ; 007C _ 8B. 4D, E4
        cmp     ecx, dword [rbp-20H]                    ; 007F _ 3B. 4D, E0
; Note: Immediate operand could be made smaller by sign extension
        je      ?_003                                   ; 0082 _ 0F 84, 0000000D
        mov     qword [rbp-8H], 0                       ; 0088 _ 48: C7. 45, F8, 00000000
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_008                                   ; 0090 _ E9, 0000005B

?_003:  mov     dword [rbp-24H], 0                      ; 0095 _ C7. 45, DC, 00000000
?_004:  mov     eax, dword [rbp-24H]                    ; 009C _ 8B. 45, DC
        cmp     eax, dword [rbp-1CH]                    ; 009F _ 3B. 45, E4
; Note: Immediate operand could be made smaller by sign extension
        jge     ?_007                                   ; 00A2 _ 0F 8D, 00000040
        movsxd  rax, dword [rbp-24H]                    ; 00A8 _ 48: 63. 45, DC
        mov     rcx, qword [rbp-10H]                    ; 00AC _ 48: 8B. 4D, F0
        movsx   edx, byte [rcx+rax]                     ; 00B0 _ 0F BE. 14 01
        movsxd  rax, dword [rbp-24H]                    ; 00B4 _ 48: 63. 45, DC
        mov     rcx, qword [rbp-18H]                    ; 00B8 _ 48: 8B. 4D, E8
        movsx   esi, byte [rcx+rax]                     ; 00BC _ 0F BE. 34 01
        cmp     edx, esi                                ; 00C0 _ 39. F2
; Note: Immediate operand could be made smaller by sign extension
        je      ?_005                                   ; 00C2 _ 0F 84, 0000000D
        mov     qword [rbp-8H], 0                       ; 00C8 _ 48: C7. 45, F8, 00000000
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_008                                   ; 00D0 _ E9, 0000001B

?_005:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_006                                   ; 00D5 _ E9, 00000000

?_006:  mov     eax, dword [rbp-24H]                    ; 00DA _ 8B. 45, DC
        add     eax, 1                                  ; 00DD _ 83. C0, 01
        mov     dword [rbp-24H], eax                    ; 00E0 _ 89. 45, DC
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_004                                   ; 00E3 _ E9, FFFFFFB4

?_007:  mov     qword [rbp-8H], 1                       ; 00E8 _ 48: C7. 45, F8, 00000001
?_008:  mov     rax, qword [rbp-8H]                     ; 00F0 _ 48: 8B. 45, F8
        add     rsp, 48                                 ; 00F4 _ 48: 83. C4, 30
        pop     rbp                                     ; 00F8 _ 5D
        ret                                             ; 00F9 _ C3
; _str_eql End of function

; Filling space: 6H
; Filler type: Multi-byte NOP
;       db 66H, 0FH, 1FH, 44H, 00H, 00H

ALIGN   8

_strlength:; Function begin
        push    rbp                                     ; 0100 _ 55
        mov     rbp, rsp                                ; 0101 _ 48: 89. E5
        mov     qword [rbp-8H], rdi                     ; 0104 _ 48: 89. 7D, F8
        mov     rdi, qword [rbp-8H]                     ; 0108 _ 48: 8B. 7D, F8
        sub     rdi, 4                                  ; 010C _ 48: 83. EF, 04
        mov     eax, dword [rdi]                        ; 0110 _ 8B. 07
        mov     dword [rbp-0CH], eax                    ; 0112 _ 89. 45, F4
        movsxd  rax, dword [rbp-0CH]                    ; 0115 _ 48: 63. 45, F4
        pop     rbp                                     ; 0119 _ 5D
        ret                                             ; 011A _ C3
; _strlength End of function

; Filling space: 5H
; Filler type: Multi-byte NOP
;       db 0FH, 1FH, 44H, 00H, 00H

ALIGN   8

_substring:; Function begin
        push    rbp                                     ; 0120 _ 55
        mov     rbp, rsp                                ; 0121 _ 48: 89. E5
        sub     rsp, 48                                 ; 0124 _ 48: 83. EC, 30
        mov     qword [rbp-8H], rdi                     ; 0128 _ 48: 89. 7D, F8
        mov     qword [rbp-10H], rsi                    ; 012C _ 48: 89. 75, F0
        mov     qword [rbp-18H], rdx                    ; 0130 _ 48: 89. 55, E8
        mov     rdx, qword [rbp-18H]                    ; 0134 _ 48: 8B. 55, E8
        sub     rdx, qword [rbp-10H]                    ; 0138 _ 48: 2B. 55, F0
        add     rdx, 1                                  ; 013C _ 48: 83. C2, 01
        mov     eax, edx                                ; 0140 _ 89. D0
        mov     dword [rbp-1CH], eax                    ; 0142 _ 89. 45, E4
        movsxd  rdx, dword [rbp-1CH]                    ; 0145 _ 48: 63. 55, E4
        add     rdx, 4                                  ; 0149 _ 48: 83. C2, 04
        add     rdx, 1                                  ; 014D _ 48: 83. C2, 01
        mov     rdi, rdx                                ; 0151 _ 48: 89. D7
        call    _malloc                                 ; 0154 _ E8, 00000000(rel)
        mov     qword [rbp-28H], rax                    ; 0159 _ 48: 89. 45, D8
        mov     ecx, dword [rbp-1CH]                    ; 015D _ 8B. 4D, E4
        mov     rax, qword [rbp-28H]                    ; 0160 _ 48: 8B. 45, D8
        mov     dword [rax], ecx                        ; 0164 _ 89. 08
        mov     rax, qword [rbp-28H]                    ; 0166 _ 48: 8B. 45, D8
        add     rax, 4                                  ; 016A _ 48: 83. C0, 04
        mov     qword [rbp-28H], rax                    ; 016E _ 48: 89. 45, D8
        mov     dword [rbp-2CH], 0                      ; 0172 _ C7. 45, D4, 00000000
        mov     rax, qword [rbp-10H]                    ; 0179 _ 48: 8B. 45, F0
        mov     ecx, eax                                ; 017D _ 89. C1
        mov     dword [rbp-30H], ecx                    ; 017F _ 89. 4D, D0
?_009:  movsxd  rax, dword [rbp-30H]                    ; 0182 _ 48: 63. 45, D0
        cmp     rax, qword [rbp-18H]                    ; 0186 _ 48: 3B. 45, E8
; Note: Immediate operand could be made smaller by sign extension
        jg      ?_010                                   ; 018A _ 0F 8F, 0000002E
        movsxd  rax, dword [rbp-30H]                    ; 0190 _ 48: 63. 45, D0
        mov     rcx, qword [rbp-8H]                     ; 0194 _ 48: 8B. 4D, F8
        mov     dl, byte [rcx+rax]                      ; 0198 _ 8A. 14 01
        mov     esi, dword [rbp-2CH]                    ; 019B _ 8B. 75, D4
        mov     edi, esi                                ; 019E _ 89. F7
        add     edi, 1                                  ; 01A0 _ 83. C7, 01
        mov     dword [rbp-2CH], edi                    ; 01A3 _ 89. 7D, D4
        movsxd  rax, esi                                ; 01A6 _ 48: 63. C6
        mov     rcx, qword [rbp-28H]                    ; 01A9 _ 48: 8B. 4D, D8
        mov     byte [rcx+rax], dl                      ; 01AD _ 88. 14 01
        mov     eax, dword [rbp-30H]                    ; 01B0 _ 8B. 45, D0
        add     eax, 1                                  ; 01B3 _ 83. C0, 01
        mov     dword [rbp-30H], eax                    ; 01B6 _ 89. 45, D0
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_009                                   ; 01B9 _ E9, FFFFFFC4
; _substring End of function

?_010:  ; Local function
        movsxd  rax, dword [rbp-2CH]                    ; 01BE _ 48: 63. 45, D4
        mov     rcx, qword [rbp-28H]                    ; 01C2 _ 48: 8B. 4D, D8
        mov     byte [rcx+rax], 0                       ; 01C6 _ C6. 04 01, 00
        mov     rax, qword [rbp-28H]                    ; 01CA _ 48: 8B. 45, D8
        add     rsp, 48                                 ; 01CE _ 48: 83. C4, 30
        pop     rbp                                     ; 01D2 _ 5D
        ret                                             ; 01D3 _ C3

; Filling space: 0CH
; Filler type: Multi-byte NOP
;       db 66H, 66H, 66H, 2EH, 0FH, 1FH, 84H, 00H
;       db 00H, 00H, 00H, 00H

ALIGN   16

_ord:   ; Function begin
        push    rbp                                     ; 01E0 _ 55
        mov     rbp, rsp                                ; 01E1 _ 48: 89. E5
        mov     qword [rbp-8H], rdi                     ; 01E4 _ 48: 89. 7D, F8
        mov     qword [rbp-10H], rsi                    ; 01E8 _ 48: 89. 75, F0
        mov     rsi, qword [rbp-8H]                     ; 01EC _ 48: 8B. 75, F8
        add     rsi, qword [rbp-10H]                    ; 01F0 _ 48: 03. 75, F0
        mov     qword [rbp-18H], rsi                    ; 01F4 _ 48: 89. 75, E8
        mov     rsi, qword [rbp-18H]                    ; 01F8 _ 48: 8B. 75, E8
        movsx   rax, byte [rsi]                         ; 01FC _ 48: 0F BE. 06
        pop     rbp                                     ; 0200 _ 5D
        ret                                             ; 0201 _ C3
; _ord End of function

; Filling space: 0EH
; Filler type: Multi-byte NOP
;       db 66H, 66H, 66H, 66H, 66H, 2EH, 0FH, 1FH
;       db 84H, 00H, 00H, 00H, 00H, 00H

ALIGN   16

_parseInt:; Function begin
        push    rbp                                     ; 0210 _ 55
        mov     rbp, rsp                                ; 0211 _ 48: 89. E5
        sub     rsp, 32                                 ; 0214 _ 48: 83. EC, 20
        mov     qword [rbp-8H], rdi                     ; 0218 _ 48: 89. 7D, F8
        mov     rdi, qword [rbp-8H]                     ; 021C _ 48: 8B. 7D, F8
        call    _strlength                              ; 0220 _ E8, 00000000(rel)
        mov     ecx, eax                                ; 0225 _ 89. C1
        mov     dword [rbp-0CH], ecx                    ; 0227 _ 89. 4D, F4
        mov     rax, qword [rbp-8H]                     ; 022A _ 48: 8B. 45, F8
        mov     qword [rbp-18H], rax                    ; 022E _ 48: 89. 45, E8
        mov     dword [rbp-1CH], 0                      ; 0232 _ C7. 45, E4, 00000000
        mov     dword [rbp-20H], 0                      ; 0239 _ C7. 45, E0, 00000000
?_011:  mov     eax, dword [rbp-20H]                    ; 0240 _ 8B. 45, E0
        cmp     eax, dword [rbp-0CH]                    ; 0243 _ 3B. 45, F4
; Note: Immediate operand could be made smaller by sign extension
        jge     ?_015                                   ; 0246 _ 0F 8D, 0000005F
        movsxd  rax, dword [rbp-20H]                    ; 024C _ 48: 63. 45, E0
        mov     rcx, qword [rbp-18H]                    ; 0250 _ 48: 8B. 4D, E8
        movsx   edx, byte [rcx+rax]                     ; 0254 _ 0F BE. 14 01
        cmp     edx, 48                                 ; 0258 _ 83. FA, 30
; Note: Immediate operand could be made smaller by sign extension
        jl      ?_012                                   ; 025B _ 0F 8C, 00000032
        movsxd  rax, dword [rbp-20H]                    ; 0261 _ 48: 63. 45, E0
        mov     rcx, qword [rbp-18H]                    ; 0265 _ 48: 8B. 4D, E8
        movsx   edx, byte [rcx+rax]                     ; 0269 _ 0F BE. 14 01
        cmp     edx, 57                                 ; 026D _ 83. FA, 39
; Note: Immediate operand could be made smaller by sign extension
        jg      ?_012                                   ; 0270 _ 0F 8F, 0000001D
        imul    eax, dword [rbp-1CH], 10                ; 0276 _ 6B. 45, E4, 0A
        movsxd  rcx, dword [rbp-20H]                    ; 027A _ 48: 63. 4D, E0
        mov     rdx, qword [rbp-18H]                    ; 027E _ 48: 8B. 55, E8
        movsx   esi, byte [rdx+rcx]                     ; 0282 _ 0F BE. 34 0A
        add     eax, esi                                ; 0286 _ 01. F0
        sub     eax, 48                                 ; 0288 _ 83. E8, 30
        mov     dword [rbp-1CH], eax                    ; 028B _ 89. 45, E4
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_013                                   ; 028E _ E9, 00000005

?_012:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_015                                   ; 0293 _ E9, 00000013

?_013:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_014                                   ; 0298 _ E9, 00000000

?_014:  mov     eax, dword [rbp-20H]                    ; 029D _ 8B. 45, E0
        add     eax, 1                                  ; 02A0 _ 83. C0, 01
        mov     dword [rbp-20H], eax                    ; 02A3 _ 89. 45, E0
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_011                                   ; 02A6 _ E9, FFFFFF95
; _parseInt End of function

?_015:  ; Local function
        movsxd  rax, dword [rbp-1CH]                    ; 02AB _ 48: 63. 45, E4
        add     rsp, 32                                 ; 02AF _ 48: 83. C4, 20
        pop     rbp                                     ; 02B3 _ 5D
        ret                                             ; 02B4 _ C3

; Filling space: 0BH
; Filler type: Multi-byte NOP
;       db 66H, 66H, 2EH, 0FH, 1FH, 84H, 00H, 00H
;       db 00H, 00H, 00H

ALIGN   16

_getInt:; Function begin
        push    rbp                                     ; 02C0 _ 55
        mov     rbp, rsp                                ; 02C1 _ 48: 89. E5
        sub     rsp, 16                                 ; 02C4 _ 48: 83. EC, 10
        lea     rdi, [rel _str_le+2B63H]                ; 02C8 _ 48: 8D. 3D, 00002B63(rel)
        lea     rsi, [rbp-4H]                           ; 02CF _ 48: 8D. 75, FC
        mov     dword [rbp-4H], 0                       ; 02D3 _ C7. 45, FC, 00000000
        mov     al, 0                                   ; 02DA _ B0, 00
        call    _scanf                                  ; 02DC _ E8, 00000000(rel)
        movsxd  rsi, dword [rbp-4H]                     ; 02E1 _ 48: 63. 75, FC
        mov     dword [rbp-8H], eax                     ; 02E5 _ 89. 45, F8
        mov     rax, rsi                                ; 02E8 _ 48: 89. F0
        add     rsp, 16                                 ; 02EB _ 48: 83. C4, 10
        pop     rbp                                     ; 02EF _ 5D
        ret                                             ; 02F0 _ C3
; _getInt End of function

; Filling space: 0FH
; Filler type: Multi-byte NOP
;       db 66H, 66H, 66H, 66H, 66H, 66H, 2EH, 0FH
;       db 1FH, 84H, 00H, 00H, 00H, 00H, 00H

ALIGN   16

_getString:; Function begin
        push    rbp                                     ; 0300 _ 55
        mov     rbp, rsp                                ; 0301 _ 48: 89. E5
        sub     rsp, 32                                 ; 0304 _ 48: 83. EC, 20
        mov     eax, 2004                               ; 0308 _ B8, 000007D4
        mov     edi, eax                                ; 030D _ 89. C7
        mov     dword [rbp-4H], 0                       ; 030F _ C7. 45, FC, 00000000
        call    _malloc                                 ; 0316 _ E8, 00000000(rel)
        lea     rdi, [rel _str_le+2B13H]                ; 031B _ 48: 8D. 3D, 00002B13(rel)
        mov     qword [rbp-10H], rax                    ; 0322 _ 48: 89. 45, F0
        mov     rax, qword [rbp-10H]                    ; 0326 _ 48: 8B. 45, F0
        mov     qword [rbp-18H], rax                    ; 032A _ 48: 89. 45, E8
        mov     rax, qword [rbp-10H]                    ; 032E _ 48: 8B. 45, F0
        add     rax, 4                                  ; 0332 _ 48: 83. C0, 04
        mov     qword [rbp-10H], rax                    ; 0336 _ 48: 89. 45, F0
        mov     rsi, qword [rbp-10H]                    ; 033A _ 48: 8B. 75, F0
        mov     al, 0                                   ; 033E _ B0, 00
        call    _scanf                                  ; 0340 _ E8, 00000000(rel)
        mov     rdi, qword [rbp-10H]                    ; 0345 _ 48: 8B. 7D, F0
        mov     dword [rbp-1CH], eax                    ; 0349 _ 89. 45, E4
        call    _strlen                                 ; 034C _ E8, 00000000(rel)
        mov     ecx, eax                                ; 0351 _ 89. C1
        mov     dword [rbp-4H], ecx                     ; 0353 _ 89. 4D, FC
        mov     ecx, dword [rbp-4H]                     ; 0356 _ 8B. 4D, FC
        mov     rax, qword [rbp-18H]                    ; 0359 _ 48: 8B. 45, E8
        mov     dword [rax], ecx                        ; 035D _ 89. 08
        mov     rax, qword [rbp-18H]                    ; 035F _ 48: 8B. 45, E8
        add     rax, 4                                  ; 0363 _ 48: 83. C0, 04
        add     rsp, 32                                 ; 0367 _ 48: 83. C4, 20
        pop     rbp                                     ; 036B _ 5D
        ret                                             ; 036C _ C3
; _getString End of function

; Filling space: 3H
; Filler type: Multi-byte NOP
;       db 0FH, 1FH, 00H

ALIGN   8

_size:  ; Function begin
        push    rbp                                     ; 0370 _ 55
        mov     rbp, rsp                                ; 0371 _ 48: 89. E5
        mov     qword [rbp-8H], rdi                     ; 0374 _ 48: 89. 7D, F8
        mov     rdi, qword [rbp-8H]                     ; 0378 _ 48: 8B. 7D, F8
        sub     rdi, 8                                  ; 037C _ 48: 83. EF, 08
        mov     rdi, qword [rdi]                        ; 0380 _ 48: 8B. 3F
        mov     qword [rbp-10H], rdi                    ; 0383 _ 48: 89. 7D, F0
        mov     rax, qword [rbp-10H]                    ; 0387 _ 48: 8B. 45, F0
        pop     rbp                                     ; 038B _ 5D
        ret                                             ; 038C _ C3
; _size End of function

; Filling space: 3H
; Filler type: Multi-byte NOP
;       db 0FH, 1FH, 00H

ALIGN   8

_toMoStr:; Function begin
        push    rbp                                     ; 0390 _ 55
        mov     rbp, rsp                                ; 0391 _ 48: 89. E5
        sub     rsp, 32                                 ; 0394 _ 48: 83. EC, 20
        mov     qword [rbp-8H], rdi                     ; 0398 _ 48: 89. 7D, F8
        mov     rdi, qword [rbp-8H]                     ; 039C _ 48: 8B. 7D, F8
        call    _strlen                                 ; 03A0 _ E8, 00000000(rel)
        mov     ecx, eax                                ; 03A5 _ 89. C1
        mov     dword [rbp-0CH], ecx                    ; 03A7 _ 89. 4D, F4
        movsxd  rax, dword [rbp-0CH]                    ; 03AA _ 48: 63. 45, F4
        add     rax, 4                                  ; 03AE _ 48: 83. C0, 04
        add     rax, 1                                  ; 03B2 _ 48: 83. C0, 01
        mov     rdi, rax                                ; 03B6 _ 48: 89. C7
        call    _malloc                                 ; 03B9 _ E8, 00000000(rel)
        mov     rdx, -1                                 ; 03BE _ 48: C7. C2, FFFFFFFF
        mov     qword [rbp-18H], rax                    ; 03C5 _ 48: 89. 45, E8
        mov     ecx, dword [rbp-0CH]                    ; 03C9 _ 8B. 4D, F4
        mov     rax, qword [rbp-18H]                    ; 03CC _ 48: 8B. 45, E8
        mov     dword [rax], ecx                        ; 03D0 _ 89. 08
        mov     rax, qword [rbp-18H]                    ; 03D2 _ 48: 8B. 45, E8
        add     rax, 4                                  ; 03D6 _ 48: 83. C0, 04
        mov     qword [rbp-18H], rax                    ; 03DA _ 48: 89. 45, E8
        mov     rdi, qword [rbp-18H]                    ; 03DE _ 48: 8B. 7D, E8
        mov     rsi, qword [rbp-8H]                     ; 03E2 _ 48: 8B. 75, F8
        call    ___strcpy_chk                           ; 03E6 _ E8, 00000000(rel)
        mov     rdx, qword [rbp-18H]                    ; 03EB _ 48: 8B. 55, E8
        mov     qword [rbp-20H], rax                    ; 03EF _ 48: 89. 45, E0
        mov     rax, rdx                                ; 03F3 _ 48: 89. D0
        add     rsp, 32                                 ; 03F6 _ 48: 83. C4, 20
        pop     rbp                                     ; 03FA _ 5D
        ret                                             ; 03FB _ C3
; _toMoStr End of function

; Filling space: 4H
; Filler type: Multi-byte NOP
;       db 0FH, 1FH, 40H, 00H

ALIGN   8

_str_add:; Function begin
        push    rbp                                     ; 0400 _ 55
        mov     rbp, rsp                                ; 0401 _ 48: 89. E5
        sub     rsp, 48                                 ; 0404 _ 48: 83. EC, 30
        mov     qword [rbp-8H], rdi                     ; 0408 _ 48: 89. 7D, F8
        mov     qword [rbp-10H], rsi                    ; 040C _ 48: 89. 75, F0
        mov     rsi, qword [rbp-8H]                     ; 0410 _ 48: 8B. 75, F8
        sub     rsi, 4                                  ; 0414 _ 48: 83. EE, 04
        mov     eax, dword [rsi]                        ; 0418 _ 8B. 06
        mov     dword [rbp-14H], eax                    ; 041A _ 89. 45, EC
        mov     rsi, qword [rbp-10H]                    ; 041D _ 48: 8B. 75, F0
        sub     rsi, 4                                  ; 0421 _ 48: 83. EE, 04
        mov     eax, dword [rsi]                        ; 0425 _ 8B. 06
        mov     dword [rbp-18H], eax                    ; 0427 _ 89. 45, E8
        mov     eax, dword [rbp-14H]                    ; 042A _ 8B. 45, EC
        add     eax, dword [rbp-18H]                    ; 042D _ 03. 45, E8
        mov     dword [rbp-1CH], eax                    ; 0430 _ 89. 45, E4
        movsxd  rsi, dword [rbp-1CH]                    ; 0433 _ 48: 63. 75, E4
        add     rsi, 4                                  ; 0437 _ 48: 83. C6, 04
        add     rsi, 1                                  ; 043B _ 48: 83. C6, 01
        mov     rdi, rsi                                ; 043F _ 48: 89. F7
        call    _malloc                                 ; 0442 _ E8, 00000000(rel)
        mov     qword [rbp-28H], rax                    ; 0447 _ 48: 89. 45, D8
        mov     ecx, dword [rbp-1CH]                    ; 044B _ 8B. 4D, E4
        mov     rax, qword [rbp-28H]                    ; 044E _ 48: 8B. 45, D8
        mov     dword [rax], ecx                        ; 0452 _ 89. 08
        mov     rax, qword [rbp-28H]                    ; 0454 _ 48: 8B. 45, D8
        add     rax, 4                                  ; 0458 _ 48: 83. C0, 04
        mov     qword [rbp-28H], rax                    ; 045C _ 48: 89. 45, D8
        mov     dword [rbp-2CH], 0                      ; 0460 _ C7. 45, D4, 00000000
?_016:  mov     eax, dword [rbp-2CH]                    ; 0467 _ 8B. 45, D4
        cmp     eax, dword [rbp-14H]                    ; 046A _ 3B. 45, EC
; Note: Immediate operand could be made smaller by sign extension
        jge     ?_017                                   ; 046D _ 0F 8D, 00000024
        movsxd  rax, dword [rbp-2CH]                    ; 0473 _ 48: 63. 45, D4
        mov     rcx, qword [rbp-8H]                     ; 0477 _ 48: 8B. 4D, F8
        mov     dl, byte [rcx+rax]                      ; 047B _ 8A. 14 01
        movsxd  rax, dword [rbp-2CH]                    ; 047E _ 48: 63. 45, D4
        mov     rcx, qword [rbp-28H]                    ; 0482 _ 48: 8B. 4D, D8
        mov     byte [rcx+rax], dl                      ; 0486 _ 88. 14 01
        mov     eax, dword [rbp-2CH]                    ; 0489 _ 8B. 45, D4
        add     eax, 1                                  ; 048C _ 83. C0, 01
        mov     dword [rbp-2CH], eax                    ; 048F _ 89. 45, D4
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_016                                   ; 0492 _ E9, FFFFFFD0
; _str_add End of function

?_017:  ; Local function
        mov     dword [rbp-30H], 0                      ; 0497 _ C7. 45, D0, 00000000
?_018:  mov     eax, dword [rbp-30H]                    ; 049E _ 8B. 45, D0
        cmp     eax, dword [rbp-18H]                    ; 04A1 _ 3B. 45, E8
; Note: Immediate operand could be made smaller by sign extension
        jge     ?_019                                   ; 04A4 _ 0F 8D, 00000029
        movsxd  rax, dword [rbp-30H]                    ; 04AA _ 48: 63. 45, D0
        mov     rcx, qword [rbp-10H]                    ; 04AE _ 48: 8B. 4D, F0
        mov     dl, byte [rcx+rax]                      ; 04B2 _ 8A. 14 01
        mov     esi, dword [rbp-30H]                    ; 04B5 _ 8B. 75, D0
        add     esi, dword [rbp-14H]                    ; 04B8 _ 03. 75, EC
        movsxd  rax, esi                                ; 04BB _ 48: 63. C6
        mov     rcx, qword [rbp-28H]                    ; 04BE _ 48: 8B. 4D, D8
        mov     byte [rcx+rax], dl                      ; 04C2 _ 88. 14 01
        mov     eax, dword [rbp-30H]                    ; 04C5 _ 8B. 45, D0
        add     eax, 1                                  ; 04C8 _ 83. C0, 01
        mov     dword [rbp-30H], eax                    ; 04CB _ 89. 45, D0
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_018                                   ; 04CE _ E9, FFFFFFCB

?_019:  ; Local function
        movsxd  rax, dword [rbp-1CH]                    ; 04D3 _ 48: 63. 45, E4
        mov     rcx, qword [rbp-28H]                    ; 04D7 _ 48: 8B. 4D, D8
        mov     byte [rcx+rax], 0                       ; 04DB _ C6. 04 01, 00
        mov     rax, qword [rbp-28H]                    ; 04DF _ 48: 8B. 45, D8
        add     rsp, 48                                 ; 04E3 _ 48: 83. C4, 30
        pop     rbp                                     ; 04E7 _ 5D
        ret                                             ; 04E8 _ C3

; Filling space: 7H
; Filler type: Multi-byte NOP
;       db 0FH, 1FH, 80H, 00H, 00H, 00H, 00H

ALIGN   8

___lib_printlnInt:; Function begin
        push    rbp                                     ; 04F0 _ 55
        mov     rbp, rsp                                ; 04F1 _ 48: 89. E5
        sub     rsp, 16                                 ; 04F4 _ 48: 83. EC, 10
        lea     rax, [rel _str_le+2939H]                ; 04F8 _ 48: 8D. 05, 00002939(rel)
        mov     qword [rbp-8H], rdi                     ; 04FF _ 48: 89. 7D, F8
        mov     rsi, qword [rbp-8H]                     ; 0503 _ 48: 8B. 75, F8
        mov     rdi, rax                                ; 0507 _ 48: 89. C7
        mov     al, 0                                   ; 050A _ B0, 00
        call    _printf                                 ; 050C _ E8, 00000000(rel)
        mov     dword [rbp-0CH], eax                    ; 0511 _ 89. 45, F4
        add     rsp, 16                                 ; 0514 _ 48: 83. C4, 10
        pop     rbp                                     ; 0518 _ 5D
        ret                                             ; 0519 _ C3
; ___lib_printlnInt End of function

; Filling space: 6H
; Filler type: Multi-byte NOP
;       db 66H, 0FH, 1FH, 44H, 00H, 00H

ALIGN   8

___lib_printInt:; Function begin
        push    rbp                                     ; 0520 _ 55
        mov     rbp, rsp                                ; 0521 _ 48: 89. E5
        sub     rsp, 16                                 ; 0524 _ 48: 83. EC, 10
        lea     rax, [rel _str_le+290EH]                ; 0528 _ 48: 8D. 05, 0000290E(rel)
        mov     qword [rbp-8H], rdi                     ; 052F _ 48: 89. 7D, F8
        mov     rsi, qword [rbp-8H]                     ; 0533 _ 48: 8B. 75, F8
        mov     rdi, rax                                ; 0537 _ 48: 89. C7
        mov     al, 0                                   ; 053A _ B0, 00
        call    _printf                                 ; 053C _ E8, 00000000(rel)
        mov     dword [rbp-0CH], eax                    ; 0541 _ 89. 45, F4
        add     rsp, 16                                 ; 0544 _ 48: 83. C4, 10
        pop     rbp                                     ; 0548 _ 5D
        ret                                             ; 0549 _ C3
; ___lib_printInt End of function

; Filling space: 6H
; Filler type: Multi-byte NOP
;       db 66H, 0FH, 1FH, 44H, 00H, 00H

ALIGN   8

___lib_malloc:; Function begin
        push    rbp                                     ; 0550 _ 55
        mov     rbp, rsp                                ; 0551 _ 48: 89. E5
        sub     rsp, 16                                 ; 0554 _ 48: 83. EC, 10
        mov     qword [rbp-8H], rdi                     ; 0558 _ 48: 89. 7D, F8
        mov     rdi, qword [rbp-8H]                     ; 055C _ 48: 8B. 7D, F8
        call    _malloc                                 ; 0560 _ E8, 00000000(rel)
        add     rsp, 16                                 ; 0565 _ 48: 83. C4, 10
        pop     rbp                                     ; 0569 _ 5D
        ret                                             ; 056A _ C3
; ___lib_malloc End of function

; Filling space: 5H
; Filler type: Multi-byte NOP
;       db 0FH, 1FH, 44H, 00H, 00H

ALIGN   8

_println:; Function begin
        push    rbp                                     ; 0570 _ 55
        mov     rbp, rsp                                ; 0571 _ 48: 89. E5
        sub     rsp, 16                                 ; 0574 _ 48: 83. EC, 10
        mov     qword [rbp-8H], rdi                     ; 0578 _ 48: 89. 7D, F8
        mov     rdi, qword [rbp-8H]                     ; 057C _ 48: 8B. 7D, F8
        call    _puts                                   ; 0580 _ E8, 00000000(rel)
        mov     dword [rbp-0CH], eax                    ; 0585 _ 89. 45, F4
        add     rsp, 16                                 ; 0588 _ 48: 83. C4, 10
        pop     rbp                                     ; 058C _ 5D
        ret                                             ; 058D _ C3
; _println End of function

; Filling space: 2H
; Filler type: NOP with prefixes
;       db 66H, 90H

ALIGN   8

_print: ; Function begin
        push    rbp                                     ; 0590 _ 55
        mov     rbp, rsp                                ; 0591 _ 48: 89. E5
        sub     rsp, 16                                 ; 0594 _ 48: 83. EC, 10
        lea     rax, [rel ?_246]                        ; 0598 _ 48: 8D. 05, 00002896(rel)
        mov     qword [rbp-8H], rdi                     ; 059F _ 48: 89. 7D, F8
        mov     rsi, qword [rbp-8H]                     ; 05A3 _ 48: 8B. 75, F8
        mov     rdi, rax                                ; 05A7 _ 48: 89. C7
        mov     al, 0                                   ; 05AA _ B0, 00
        call    _printf                                 ; 05AC _ E8, 00000000(rel)
        mov     dword [rbp-0CH], eax                    ; 05B1 _ 89. 45, F4
        add     rsp, 16                                 ; 05B4 _ 48: 83. C4, 10
        pop     rbp                                     ; 05B8 _ 5D
        ret                                             ; 05B9 _ C3
; _print End of function

; Filling space: 6H
; Filler type: Multi-byte NOP
;       db 66H, 0FH, 1FH, 44H, 00H, 00H

ALIGN   8

_toString:; Function begin
        push    rbp                                     ; 05C0 _ 55
        mov     rbp, rsp                                ; 05C1 _ 48: 89. E5
        sub     rsp, 48                                 ; 05C4 _ 48: 83. EC, 30
        mov     eax, 16                                 ; 05C8 _ B8, 00000010
        mov     ecx, eax                                ; 05CD _ 89. C1
        mov     qword [rbp-8H], rdi                     ; 05CF _ 48: 89. 7D, F8
        mov     rdi, rcx                                ; 05D3 _ 48: 89. CF
        call    _malloc                                 ; 05D6 _ E8, 00000000(rel)
        mov     qword [rbp-10H], rax                    ; 05DB _ 48: 89. 45, F0
        mov     rax, qword [rbp-10H]                    ; 05DF _ 48: 8B. 45, F0
        add     rax, 4                                  ; 05E3 _ 48: 83. C0, 04
        mov     qword [rbp-10H], rax                    ; 05E7 _ 48: 89. 45, F0
        mov     rax, qword [rbp-10H]                    ; 05EB _ 48: 8B. 45, F0
        mov     qword [rbp-18H], rax                    ; 05EF _ 48: 89. 45, E8
        cmp     qword [rbp-8H], 0                       ; 05F3 _ 48: 83. 7D, F8, 00
; Note: Immediate operand could be made smaller by sign extension
        jge     ?_020                                   ; 05F8 _ 0F 8D, 0000001E
        xor     eax, eax                                ; 05FE _ 31. C0
        mov     ecx, eax                                ; 0600 _ 89. C1
        mov     rdx, qword [rbp-18H]                    ; 0602 _ 48: 8B. 55, E8
        mov     rsi, rdx                                ; 0606 _ 48: 89. D6
        add     rsi, 1                                  ; 0609 _ 48: 83. C6, 01
        mov     qword [rbp-18H], rsi                    ; 060D _ 48: 89. 75, E8
        mov     byte [rdx], 45                          ; 0611 _ C6. 02, 2D
        sub     rcx, qword [rbp-8H]                     ; 0614 _ 48: 2B. 4D, F8
        mov     qword [rbp-8H], rcx                     ; 0618 _ 48: 89. 4D, F8
?_020:  cmp     qword [rbp-8H], 0                       ; 061C _ 48: 83. 7D, F8, 00
; Note: Immediate operand could be made smaller by sign extension
        jne     ?_021                                   ; 0621 _ 0F 85, 00000012
        mov     rax, qword [rbp-18H]                    ; 0627 _ 48: 8B. 45, E8
        mov     rcx, rax                                ; 062B _ 48: 89. C1
        add     rcx, 1                                  ; 062E _ 48: 83. C1, 01
        mov     qword [rbp-18H], rcx                    ; 0632 _ 48: 89. 4D, E8
        mov     byte [rax], 48                          ; 0636 _ C6. 00, 30
?_021:  mov     rax, qword [rbp-18H]                    ; 0639 _ 48: 8B. 45, E8
        mov     qword [rbp-20H], rax                    ; 063D _ 48: 89. 45, E0
?_022:  cmp     qword [rbp-8H], 0                       ; 0641 _ 48: 83. 7D, F8, 00
; Note: Immediate operand could be made smaller by sign extension
        je      ?_023                                   ; 0646 _ 0F 84, 00000049
        mov     eax, 10                                 ; 064C _ B8, 0000000A
        mov     ecx, eax                                ; 0651 _ 89. C1
        mov     rax, qword [rbp-8H]                     ; 0653 _ 48: 8B. 45, F8
        cqo                                             ; 0657 _ 48: 99
        idiv    rcx                                     ; 0659 _ 48: F7. F9
        mov     esi, eax                                ; 065C _ 89. C6
        mov     dword [rbp-24H], esi                    ; 065E _ 89. 75, DC
        mov     rax, qword [rbp-8H]                     ; 0661 _ 48: 8B. 45, F8
        add     rax, 48                                 ; 0665 _ 48: 83. C0, 30
        imul    esi, dword [rbp-24H], 10                ; 0669 _ 6B. 75, DC, 0A
        movsxd  rcx, esi                                ; 066D _ 48: 63. CE
        sub     rax, rcx                                ; 0670 _ 48: 29. C8
        mov     dil, al                                 ; 0673 _ 40: 88. C7
        mov     rax, qword [rbp-18H]                    ; 0676 _ 48: 8B. 45, E8
        mov     rcx, rax                                ; 067A _ 48: 89. C1
        add     rcx, 1                                  ; 067D _ 48: 83. C1, 01
        mov     qword [rbp-18H], rcx                    ; 0681 _ 48: 89. 4D, E8
        mov     byte [rax], dil                         ; 0685 _ 40: 88. 38
        movsxd  rax, dword [rbp-24H]                    ; 0688 _ 48: 63. 45, DC
        mov     qword [rbp-8H], rax                     ; 068C _ 48: 89. 45, F8
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_022                                   ; 0690 _ E9, FFFFFFAC
; _toString End of function

?_023:  ; Local function
        mov     rax, qword [rbp-18H]                    ; 0695 _ 48: 8B. 45, E8
        mov     byte [rax], 0                           ; 0699 _ C6. 00, 00
        mov     rax, qword [rbp-18H]                    ; 069C _ 48: 8B. 45, E8
        mov     rcx, qword [rbp-10H]                    ; 06A0 _ 48: 8B. 4D, F0
        sub     rax, rcx                                ; 06A4 _ 48: 29. C8
        mov     edx, eax                                ; 06A7 _ 89. C2
        mov     rax, qword [rbp-10H]                    ; 06A9 _ 48: 8B. 45, F0
        mov     dword [rax-4H], edx                     ; 06AD _ 89. 50, FC
        mov     rax, qword [rbp-18H]                    ; 06B0 _ 48: 8B. 45, E8
        add     rax, -1                                 ; 06B4 _ 48: 83. C0, FF
        mov     qword [rbp-18H], rax                    ; 06B8 _ 48: 89. 45, E8
?_024:  mov     rax, qword [rbp-20H]                    ; 06BC _ 48: 8B. 45, E0
        cmp     rax, qword [rbp-18H]                    ; 06C0 _ 48: 3B. 45, E8
; Note: Immediate operand could be made smaller by sign extension
        ja      ?_025                                   ; 06C4 _ 0F 87, 0000003B
        mov     rax, qword [rbp-20H]                    ; 06CA _ 48: 8B. 45, E0
        mov     cl, byte [rax]                          ; 06CE _ 8A. 08
        mov     byte [rbp-25H], cl                      ; 06D0 _ 88. 4D, DB
        mov     rax, qword [rbp-18H]                    ; 06D3 _ 48: 8B. 45, E8
        mov     cl, byte [rax]                          ; 06D7 _ 8A. 08
        mov     rax, qword [rbp-20H]                    ; 06D9 _ 48: 8B. 45, E0
        mov     byte [rax], cl                          ; 06DD _ 88. 08
        mov     cl, byte [rbp-25H]                      ; 06DF _ 8A. 4D, DB
        mov     rax, qword [rbp-18H]                    ; 06E2 _ 48: 8B. 45, E8
        mov     byte [rax], cl                          ; 06E6 _ 88. 08
        mov     rax, qword [rbp-20H]                    ; 06E8 _ 48: 8B. 45, E0
        add     rax, 1                                  ; 06EC _ 48: 83. C0, 01
        mov     qword [rbp-20H], rax                    ; 06F0 _ 48: 89. 45, E0
        mov     rax, qword [rbp-18H]                    ; 06F4 _ 48: 8B. 45, E8
        add     rax, -1                                 ; 06F8 _ 48: 83. C0, FF
        mov     qword [rbp-18H], rax                    ; 06FC _ 48: 89. 45, E8
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_024                                   ; 0700 _ E9, FFFFFFB7

?_025:  ; Local function
        mov     rax, qword [rbp-10H]                    ; 0705 _ 48: 8B. 45, F0
        add     rsp, 48                                 ; 0709 _ 48: 83. C4, 30
        pop     rbp                                     ; 070D _ 5D
        ret                                             ; 070E _ C3

        nop                                             ; 070F _ 90

ALIGN   16
_init:  ; Function begin
        push    rbp                                     ; 0710 _ 55
        mov     rbp, rsp                                ; 0711 _ 48: 89. E5
        sub     rsp, 576                                ; 0714 _ 48: 81. EC, 00000240
        mov     rax, qword [rel _N_]                    ; 071B _ 48: 8B. 05, 00000000(GOT r)
        mov     rcx, qword [rel _M_]                    ; 0722 _ 48: 8B. 0D, 00000000(GOT r)
        mov     rdx, qword [rel _C_]                    ; 0729 _ 48: 8B. 15, 00000000(GOT r)
        mov     rsi, qword [rel _tot_]                  ; 0730 _ 48: 8B. 35, 00000000(GOT r)
        mov     qword [rsi], 0                          ; 0737 _ 48: C7. 06, 00000000
        mov     qword [rdx], 0                          ; 073E _ 48: C7. 02, 00000000
        mov     qword [rcx], 0                          ; 0745 _ 48: C7. 01, 00000000
        mov     qword [rax], 0                          ; 074C _ 48: C7. 00, 00000000
        mov     qword [rbp-58H], 6                      ; 0753 _ 48: C7. 45, A8, 00000006
        mov     rax, qword [rbp-58H]                    ; 075B _ 48: 8B. 45, A8
        shl     rax, 3                                  ; 075F _ 48: C1. E0, 03
        add     rax, 8                                  ; 0763 _ 48: 83. C0, 08
        mov     rdi, rax                                ; 0767 _ 48: 89. C7
        call    ___lib_malloc                           ; 076A _ E8, 00000000(rel)
        mov     rcx, qword [rel _g_]                    ; 076F _ 48: 8B. 0D, 00000000(GOT r)
        mov     qword [rbp-20H], rax                    ; 0776 _ 48: 89. 45, E0
        mov     rax, qword [rbp-58H]                    ; 077A _ 48: 8B. 45, A8
        mov     rdx, qword [rbp-20H]                    ; 077E _ 48: 8B. 55, E0
        mov     qword [rdx], rax                        ; 0782 _ 48: 89. 02
        mov     rax, qword [rbp-20H]                    ; 0785 _ 48: 8B. 45, E0
        add     rax, 8                                  ; 0789 _ 48: 83. C0, 08
        mov     qword [rbp-20H], rax                    ; 078D _ 48: 89. 45, E0
        mov     rax, qword [rbp-20H]                    ; 0791 _ 48: 8B. 45, E0
        mov     qword [rcx], rax                        ; 0795 _ 48: 89. 01
        mov     qword [rbp-0B0H], 0                     ; 0798 _ 48: C7. 85, FFFFFF50, 00000000
?_026:  cmp     qword [rbp-0B0H], 6                     ; 07A3 _ 48: 83. BD, FFFFFF50, 06
; Note: Immediate operand could be made smaller by sign extension
        jge     ?_027                                   ; 07AB _ 0F 8D, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_028                                   ; 07B1 _ E9, 00000005

?_027:  jmp     ?_039                                   ; 07B6 _ E9, 000001C6

?_028:  mov     qword [rbp-170H], 100001                ; 07BB _ 48: C7. 85, FFFFFE90, 000186A1
        mov     rax, qword [rbp-170H]                   ; 07C6 _ 48: 8B. 85, FFFFFE90
        shl     rax, 3                                  ; 07CD _ 48: C1. E0, 03
        add     rax, 8                                  ; 07D1 _ 48: 83. C0, 08
        mov     rdi, rax                                ; 07D5 _ 48: 89. C7
        call    ___lib_malloc                           ; 07D8 _ E8, 00000000(rel)
        mov     rdi, qword [rel _g_]                    ; 07DD _ 48: 8B. 3D, 00000000(GOT r)
        mov     qword [rbp-178H], rax                   ; 07E4 _ 48: 89. 85, FFFFFE88
        mov     rax, qword [rbp-170H]                   ; 07EB _ 48: 8B. 85, FFFFFE90
        mov     rcx, qword [rbp-178H]                   ; 07F2 _ 48: 8B. 8D, FFFFFE88
        mov     qword [rcx], rax                        ; 07F9 _ 48: 89. 01
        mov     rax, qword [rbp-178H]                   ; 07FC _ 48: 8B. 85, FFFFFE88
        add     rax, 8                                  ; 0803 _ 48: 83. C0, 08
        mov     qword [rbp-178H], rax                   ; 0807 _ 48: 89. 85, FFFFFE88
        mov     rax, qword [rbp-178H]                   ; 080E _ 48: 8B. 85, FFFFFE88
        mov     rcx, qword [rdi]                        ; 0815 _ 48: 8B. 0F
        mov     rdi, qword [rbp-0B0H]                   ; 0818 _ 48: 8B. BD, FFFFFF50
        shl     rdi, 3                                  ; 081F _ 48: C1. E7, 03
        add     rcx, rdi                                ; 0823 _ 48: 01. F9
        mov     qword [rcx], rax                        ; 0826 _ 48: 89. 01
        mov     qword [rbp-0B8H], 0                     ; 0829 _ 48: C7. 85, FFFFFF48, 00000000
?_029:  cmp     qword [rbp-0B8H], 100001                ; 0834 _ 48: 81. BD, FFFFFF48, 000186A1
; Note: Immediate operand could be made smaller by sign extension
        jge     ?_030                                   ; 083F _ 0F 8D, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_031                                   ; 0845 _ E9, 00000005

?_030:  jmp     ?_037                                   ; 084A _ E9, 00000116

?_031:  mov     qword [rbp-198H], 15                    ; 084F _ 48: C7. 85, FFFFFE68, 0000000F
        mov     rax, qword [rbp-198H]                   ; 085A _ 48: 8B. 85, FFFFFE68
        shl     rax, 3                                  ; 0861 _ 48: C1. E0, 03
        add     rax, 8                                  ; 0865 _ 48: 83. C0, 08
        mov     rdi, rax                                ; 0869 _ 48: 89. C7
        call    ___lib_malloc                           ; 086C _ E8, 00000000(rel)
        mov     rdi, qword [rel _g_]                    ; 0871 _ 48: 8B. 3D, 00000000(GOT r)
        mov     qword [rbp-188H], rax                   ; 0878 _ 48: 89. 85, FFFFFE78
        mov     rax, qword [rbp-198H]                   ; 087F _ 48: 8B. 85, FFFFFE68
        mov     rcx, qword [rbp-188H]                   ; 0886 _ 48: 8B. 8D, FFFFFE78
        mov     qword [rcx], rax                        ; 088D _ 48: 89. 01
        mov     rax, qword [rbp-188H]                   ; 0890 _ 48: 8B. 85, FFFFFE78
        add     rax, 8                                  ; 0897 _ 48: 83. C0, 08
        mov     qword [rbp-188H], rax                   ; 089B _ 48: 89. 85, FFFFFE78
        mov     rax, qword [rbp-188H]                   ; 08A2 _ 48: 8B. 85, FFFFFE78
        mov     rcx, qword [rdi]                        ; 08A9 _ 48: 8B. 0F
        mov     rdi, qword [rbp-0B0H]                   ; 08AC _ 48: 8B. BD, FFFFFF50
        shl     rdi, 3                                  ; 08B3 _ 48: C1. E7, 03
        add     rcx, rdi                                ; 08B7 _ 48: 01. F9
        mov     rcx, qword [rcx]                        ; 08BA _ 48: 8B. 09
        mov     rdi, qword [rbp-0B8H]                   ; 08BD _ 48: 8B. BD, FFFFFF48
        shl     rdi, 3                                  ; 08C4 _ 48: C1. E7, 03
        add     rcx, rdi                                ; 08C8 _ 48: 01. F9
        mov     qword [rcx], rax                        ; 08CB _ 48: 89. 01
        mov     qword [rbp-0C0H], 0                     ; 08CE _ 48: C7. 85, FFFFFF40, 00000000
?_032:  cmp     qword [rbp-0C0H], 15                    ; 08D9 _ 48: 83. BD, FFFFFF40, 0F
; Note: Immediate operand could be made smaller by sign extension
        jge     ?_033                                   ; 08E1 _ 0F 8D, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_034                                   ; 08E7 _ E9, 00000005

?_033:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_035                                   ; 08EC _ E9, 00000058

?_034:  mov     rax, qword [rel _g_]                    ; 08F1 _ 48: 8B. 05, 00000000(GOT r)
        mov     rax, qword [rax]                        ; 08F8 _ 48: 8B. 00
        mov     rcx, qword [rbp-0B0H]                   ; 08FB _ 48: 8B. 8D, FFFFFF50
        shl     rcx, 3                                  ; 0902 _ 48: C1. E1, 03
        add     rax, rcx                                ; 0906 _ 48: 01. C8
        mov     rax, qword [rax]                        ; 0909 _ 48: 8B. 00
        mov     rcx, qword [rbp-0B8H]                   ; 090C _ 48: 8B. 8D, FFFFFF48
        shl     rcx, 3                                  ; 0913 _ 48: C1. E1, 03
        add     rax, rcx                                ; 0917 _ 48: 01. C8
        mov     rax, qword [rax]                        ; 091A _ 48: 8B. 00
        mov     rcx, qword [rbp-0C0H]                   ; 091D _ 48: 8B. 8D, FFFFFF40
        shl     rcx, 3                                  ; 0924 _ 48: C1. E1, 03
        add     rax, rcx                                ; 0928 _ 48: 01. C8
        mov     qword [rax], 0                          ; 092B _ 48: C7. 00, 00000000
        mov     rax, qword [rbp-0C0H]                   ; 0932 _ 48: 8B. 85, FFFFFF40
        add     rax, 1                                  ; 0939 _ 48: 83. C0, 01
        mov     qword [rbp-0C0H], rax                   ; 093D _ 48: 89. 85, FFFFFF40
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_032                                   ; 0944 _ E9, FFFFFF90

?_035:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_036                                   ; 0949 _ E9, 00000000

?_036:  mov     rax, qword [rbp-0B8H]                   ; 094E _ 48: 8B. 85, FFFFFF48
        add     rax, 1                                  ; 0955 _ 48: 83. C0, 01
        mov     qword [rbp-0B8H], rax                   ; 0959 _ 48: 89. 85, FFFFFF48
        jmp     ?_029                                   ; 0960 _ E9, FFFFFECF

?_037:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_038                                   ; 0965 _ E9, 00000000

?_038:  mov     rax, qword [rbp-0B0H]                   ; 096A _ 48: 8B. 85, FFFFFF50
        add     rax, 1                                  ; 0971 _ 48: 83. C0, 01
        mov     qword [rbp-0B0H], rax                   ; 0975 _ 48: 89. 85, FFFFFF50
        jmp     ?_026                                   ; 097C _ E9, FFFFFE22
; _init End of function

?_039:  ; Local function
        mov     qword [rbp-0E0H], 6                     ; 0981 _ 48: C7. 85, FFFFFF20, 00000006
        mov     rax, qword [rbp-0E0H]                   ; 098C _ 48: 8B. 85, FFFFFF20
        shl     rax, 3                                  ; 0993 _ 48: C1. E0, 03
        add     rax, 8                                  ; 0997 _ 48: 83. C0, 08
        mov     rdi, rax                                ; 099B _ 48: 89. C7
        call    ___lib_malloc                           ; 099E _ E8, 00000000(rel)
        mov     rdi, qword [rel _Sum_]                  ; 09A3 _ 48: 8B. 3D, 00000000(GOT r)
        mov     qword [rbp-0C8H], rax                   ; 09AA _ 48: 89. 85, FFFFFF38
        mov     rax, qword [rbp-0E0H]                   ; 09B1 _ 48: 8B. 85, FFFFFF20
        mov     rcx, qword [rbp-0C8H]                   ; 09B8 _ 48: 8B. 8D, FFFFFF38
        mov     qword [rcx], rax                        ; 09BF _ 48: 89. 01
        mov     rax, qword [rbp-0C8H]                   ; 09C2 _ 48: 8B. 85, FFFFFF38
        add     rax, 8                                  ; 09C9 _ 48: 83. C0, 08
        mov     qword [rbp-0C8H], rax                   ; 09CD _ 48: 89. 85, FFFFFF38
        mov     rax, qword [rbp-0C8H]                   ; 09D4 _ 48: 8B. 85, FFFFFF38
        mov     qword [rdi], rax                        ; 09DB _ 48: 89. 07
        mov     qword [rbp-0B0H], 0                     ; 09DE _ 48: C7. 85, FFFFFF50, 00000000
?_040:  cmp     qword [rbp-0B0H], 6                     ; 09E9 _ 48: 83. BD, FFFFFF50, 06
; Note: Immediate operand could be made smaller by sign extension
        jge     ?_041                                   ; 09F1 _ 0F 8D, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_042                                   ; 09F7 _ E9, 00000005

?_041:  jmp     ?_053                                   ; 09FC _ E9, 000001C6

?_042:  mov     qword [rbp-1B0H], 100001                ; 0A01 _ 48: C7. 85, FFFFFE50, 000186A1
        mov     rax, qword [rbp-1B0H]                   ; 0A0C _ 48: 8B. 85, FFFFFE50
        shl     rax, 3                                  ; 0A13 _ 48: C1. E0, 03
        add     rax, 8                                  ; 0A17 _ 48: 83. C0, 08
        mov     rdi, rax                                ; 0A1B _ 48: 89. C7
        call    ___lib_malloc                           ; 0A1E _ E8, 00000000(rel)
        mov     rdi, qword [rel _Sum_]                  ; 0A23 _ 48: 8B. 3D, 00000000(GOT r)
        mov     qword [rbp-1A8H], rax                   ; 0A2A _ 48: 89. 85, FFFFFE58
        mov     rax, qword [rbp-1B0H]                   ; 0A31 _ 48: 8B. 85, FFFFFE50
        mov     rcx, qword [rbp-1A8H]                   ; 0A38 _ 48: 8B. 8D, FFFFFE58
        mov     qword [rcx], rax                        ; 0A3F _ 48: 89. 01
        mov     rax, qword [rbp-1A8H]                   ; 0A42 _ 48: 8B. 85, FFFFFE58
        add     rax, 8                                  ; 0A49 _ 48: 83. C0, 08
        mov     qword [rbp-1A8H], rax                   ; 0A4D _ 48: 89. 85, FFFFFE58
        mov     rax, qword [rbp-1A8H]                   ; 0A54 _ 48: 8B. 85, FFFFFE58
        mov     rcx, qword [rdi]                        ; 0A5B _ 48: 8B. 0F
        mov     rdi, qword [rbp-0B0H]                   ; 0A5E _ 48: 8B. BD, FFFFFF50
        shl     rdi, 3                                  ; 0A65 _ 48: C1. E7, 03
        add     rcx, rdi                                ; 0A69 _ 48: 01. F9
        mov     qword [rcx], rax                        ; 0A6C _ 48: 89. 01
        mov     qword [rbp-0B8H], 0                     ; 0A6F _ 48: C7. 85, FFFFFF48, 00000000
?_043:  cmp     qword [rbp-0B8H], 100001                ; 0A7A _ 48: 81. BD, FFFFFF48, 000186A1
; Note: Immediate operand could be made smaller by sign extension
        jge     ?_044                                   ; 0A85 _ 0F 8D, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_045                                   ; 0A8B _ E9, 00000005

?_044:  jmp     ?_051                                   ; 0A90 _ E9, 00000116

?_045:  mov     qword [rbp-1C0H], 15                    ; 0A95 _ 48: C7. 85, FFFFFE40, 0000000F
        mov     rax, qword [rbp-1C0H]                   ; 0AA0 _ 48: 8B. 85, FFFFFE40
        shl     rax, 3                                  ; 0AA7 _ 48: C1. E0, 03
        add     rax, 8                                  ; 0AAB _ 48: 83. C0, 08
        mov     rdi, rax                                ; 0AAF _ 48: 89. C7
        call    ___lib_malloc                           ; 0AB2 _ E8, 00000000(rel)
        mov     rdi, qword [rel _Sum_]                  ; 0AB7 _ 48: 8B. 3D, 00000000(GOT r)
        mov     qword [rbp-1B8H], rax                   ; 0ABE _ 48: 89. 85, FFFFFE48
        mov     rax, qword [rbp-1C0H]                   ; 0AC5 _ 48: 8B. 85, FFFFFE40
        mov     rcx, qword [rbp-1B8H]                   ; 0ACC _ 48: 8B. 8D, FFFFFE48
        mov     qword [rcx], rax                        ; 0AD3 _ 48: 89. 01
        mov     rax, qword [rbp-1B8H]                   ; 0AD6 _ 48: 8B. 85, FFFFFE48
        add     rax, 8                                  ; 0ADD _ 48: 83. C0, 08
        mov     qword [rbp-1B8H], rax                   ; 0AE1 _ 48: 89. 85, FFFFFE48
        mov     rax, qword [rbp-1B8H]                   ; 0AE8 _ 48: 8B. 85, FFFFFE48
        mov     rcx, qword [rdi]                        ; 0AEF _ 48: 8B. 0F
        mov     rdi, qword [rbp-0B0H]                   ; 0AF2 _ 48: 8B. BD, FFFFFF50
        shl     rdi, 3                                  ; 0AF9 _ 48: C1. E7, 03
        add     rcx, rdi                                ; 0AFD _ 48: 01. F9
        mov     rcx, qword [rcx]                        ; 0B00 _ 48: 8B. 09
        mov     rdi, qword [rbp-0B8H]                   ; 0B03 _ 48: 8B. BD, FFFFFF48
        shl     rdi, 3                                  ; 0B0A _ 48: C1. E7, 03
        add     rcx, rdi                                ; 0B0E _ 48: 01. F9
        mov     qword [rcx], rax                        ; 0B11 _ 48: 89. 01
        mov     qword [rbp-0C0H], 0                     ; 0B14 _ 48: C7. 85, FFFFFF40, 00000000
?_046:  cmp     qword [rbp-0C0H], 15                    ; 0B1F _ 48: 83. BD, FFFFFF40, 0F
; Note: Immediate operand could be made smaller by sign extension
        jge     ?_047                                   ; 0B27 _ 0F 8D, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_048                                   ; 0B2D _ E9, 00000005

?_047:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_049                                   ; 0B32 _ E9, 00000058

?_048:  mov     rax, qword [rel _Sum_]                  ; 0B37 _ 48: 8B. 05, 00000000(GOT r)
        mov     rax, qword [rax]                        ; 0B3E _ 48: 8B. 00
        mov     rcx, qword [rbp-0B0H]                   ; 0B41 _ 48: 8B. 8D, FFFFFF50
        shl     rcx, 3                                  ; 0B48 _ 48: C1. E1, 03
        add     rax, rcx                                ; 0B4C _ 48: 01. C8
        mov     rax, qword [rax]                        ; 0B4F _ 48: 8B. 00
        mov     rcx, qword [rbp-0B8H]                   ; 0B52 _ 48: 8B. 8D, FFFFFF48
        shl     rcx, 3                                  ; 0B59 _ 48: C1. E1, 03
        add     rax, rcx                                ; 0B5D _ 48: 01. C8
        mov     rax, qword [rax]                        ; 0B60 _ 48: 8B. 00
        mov     rcx, qword [rbp-0C0H]                   ; 0B63 _ 48: 8B. 8D, FFFFFF40
        shl     rcx, 3                                  ; 0B6A _ 48: C1. E1, 03
        add     rax, rcx                                ; 0B6E _ 48: 01. C8
        mov     qword [rax], 0                          ; 0B71 _ 48: C7. 00, 00000000
        mov     rax, qword [rbp-0C0H]                   ; 0B78 _ 48: 8B. 85, FFFFFF40
        add     rax, 1                                  ; 0B7F _ 48: 83. C0, 01
        mov     qword [rbp-0C0H], rax                   ; 0B83 _ 48: 89. 85, FFFFFF40
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_046                                   ; 0B8A _ E9, FFFFFF90

?_049:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_050                                   ; 0B8F _ E9, 00000000

?_050:  mov     rax, qword [rbp-0B8H]                   ; 0B94 _ 48: 8B. 85, FFFFFF48
        add     rax, 1                                  ; 0B9B _ 48: 83. C0, 01
        mov     qword [rbp-0B8H], rax                   ; 0B9F _ 48: 89. 85, FFFFFF48
        jmp     ?_043                                   ; 0BA6 _ E9, FFFFFECF

?_051:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_052                                   ; 0BAB _ E9, 00000000

?_052:  mov     rax, qword [rbp-0B0H]                   ; 0BB0 _ 48: 8B. 85, FFFFFF50
        add     rax, 1                                  ; 0BB7 _ 48: 83. C0, 01
        mov     qword [rbp-0B0H], rax                   ; 0BBB _ 48: 89. 85, FFFFFF50
        jmp     ?_040                                   ; 0BC2 _ E9, FFFFFE22

?_053:  ; Local function
        mov     qword [rbp-160H], 1001                  ; 0BC7 _ 48: C7. 85, FFFFFEA0, 000003E9
        mov     rax, qword [rbp-160H]                   ; 0BD2 _ 48: 8B. 85, FFFFFEA0
        shl     rax, 3                                  ; 0BD9 _ 48: C1. E0, 03
        add     rax, 8                                  ; 0BDD _ 48: 83. C0, 08
        mov     rdi, rax                                ; 0BE1 _ 48: 89. C7
        call    ___lib_malloc                           ; 0BE4 _ E8, 00000000(rel)
        mov     rdi, qword [rel _fm_]                   ; 0BE9 _ 48: 8B. 3D, 00000000(GOT r)
        mov     qword [rbp-158H], rax                   ; 0BF0 _ 48: 89. 85, FFFFFEA8
        mov     rax, qword [rbp-160H]                   ; 0BF7 _ 48: 8B. 85, FFFFFEA0
        mov     rcx, qword [rbp-158H]                   ; 0BFE _ 48: 8B. 8D, FFFFFEA8
        mov     qword [rcx], rax                        ; 0C05 _ 48: 89. 01
        mov     rax, qword [rbp-158H]                   ; 0C08 _ 48: 8B. 85, FFFFFEA8
        add     rax, 8                                  ; 0C0F _ 48: 83. C0, 08
        mov     qword [rbp-158H], rax                   ; 0C13 _ 48: 89. 85, FFFFFEA8
        mov     rax, qword [rbp-158H]                   ; 0C1A _ 48: 8B. 85, FFFFFEA8
        mov     qword [rdi], rax                        ; 0C21 _ 48: 89. 07
        mov     qword [rbp-0B0H], 0                     ; 0C24 _ 48: C7. 85, FFFFFF50, 00000000
?_054:  cmp     qword [rbp-0B0H], 1001                  ; 0C2F _ 48: 81. BD, FFFFFF50, 000003E9
; Note: Immediate operand could be made smaller by sign extension
        jge     ?_055                                   ; 0C3A _ 0F 8D, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_056                                   ; 0C40 _ E9, 00000005

?_055:  jmp     ?_062                                   ; 0C45 _ E9, 000000F4

?_056:  mov     qword [rbp-1D8H], 13                    ; 0C4A _ 48: C7. 85, FFFFFE28, 0000000D
        mov     rax, qword [rbp-1D8H]                   ; 0C55 _ 48: 8B. 85, FFFFFE28
        shl     rax, 3                                  ; 0C5C _ 48: C1. E0, 03
        add     rax, 8                                  ; 0C60 _ 48: 83. C0, 08
        mov     rdi, rax                                ; 0C64 _ 48: 89. C7
        call    ___lib_malloc                           ; 0C67 _ E8, 00000000(rel)
        mov     rdi, qword [rel _fm_]                   ; 0C6C _ 48: 8B. 3D, 00000000(GOT r)
        mov     qword [rbp-1D0H], rax                   ; 0C73 _ 48: 89. 85, FFFFFE30
        mov     rax, qword [rbp-1D8H]                   ; 0C7A _ 48: 8B. 85, FFFFFE28
        mov     rcx, qword [rbp-1D0H]                   ; 0C81 _ 48: 8B. 8D, FFFFFE30
        mov     qword [rcx], rax                        ; 0C88 _ 48: 89. 01
        mov     rax, qword [rbp-1D0H]                   ; 0C8B _ 48: 8B. 85, FFFFFE30
        add     rax, 8                                  ; 0C92 _ 48: 83. C0, 08
        mov     qword [rbp-1D0H], rax                   ; 0C96 _ 48: 89. 85, FFFFFE30
        mov     rax, qword [rbp-1D0H]                   ; 0C9D _ 48: 8B. 85, FFFFFE30
        mov     rcx, qword [rdi]                        ; 0CA4 _ 48: 8B. 0F
        mov     rdi, qword [rbp-0B0H]                   ; 0CA7 _ 48: 8B. BD, FFFFFF50
        shl     rdi, 3                                  ; 0CAE _ 48: C1. E7, 03
        add     rcx, rdi                                ; 0CB2 _ 48: 01. F9
        mov     qword [rcx], rax                        ; 0CB5 _ 48: 89. 01
        mov     qword [rbp-0B8H], 0                     ; 0CB8 _ 48: C7. 85, FFFFFF48, 00000000
?_057:  cmp     qword [rbp-0B8H], 13                    ; 0CC3 _ 48: 83. BD, FFFFFF48, 0D
; Note: Immediate operand could be made smaller by sign extension
        jge     ?_058                                   ; 0CCB _ 0F 8D, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_059                                   ; 0CD1 _ E9, 00000005

?_058:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_060                                   ; 0CD6 _ E9, 00000047

?_059:  mov     rax, qword [rel _fm_]                   ; 0CDB _ 48: 8B. 05, 00000000(GOT r)
        mov     rax, qword [rax]                        ; 0CE2 _ 48: 8B. 00
        mov     rcx, qword [rbp-0B0H]                   ; 0CE5 _ 48: 8B. 8D, FFFFFF50
        shl     rcx, 3                                  ; 0CEC _ 48: C1. E1, 03
        add     rax, rcx                                ; 0CF0 _ 48: 01. C8
        mov     rax, qword [rax]                        ; 0CF3 _ 48: 8B. 00
        mov     rcx, qword [rbp-0B8H]                   ; 0CF6 _ 48: 8B. 8D, FFFFFF48
        shl     rcx, 3                                  ; 0CFD _ 48: C1. E1, 03
        add     rax, rcx                                ; 0D01 _ 48: 01. C8
        mov     qword [rax], 0                          ; 0D04 _ 48: C7. 00, 00000000
        mov     rax, qword [rbp-0B8H]                   ; 0D0B _ 48: 8B. 85, FFFFFF48
        add     rax, 1                                  ; 0D12 _ 48: 83. C0, 01
        mov     qword [rbp-0B8H], rax                   ; 0D16 _ 48: 89. 85, FFFFFF48
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_057                                   ; 0D1D _ E9, FFFFFFA1

?_060:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_061                                   ; 0D22 _ E9, 00000000

?_061:  mov     rax, qword [rbp-0B0H]                   ; 0D27 _ 48: 8B. 85, FFFFFF50
        add     rax, 1                                  ; 0D2E _ 48: 83. C0, 01
        mov     qword [rbp-0B0H], rax                   ; 0D32 _ 48: 89. 85, FFFFFF50
        jmp     ?_054                                   ; 0D39 _ E9, FFFFFEF1

?_062:  ; Local function
        mov     qword [rbp-78H], 100001                 ; 0D3E _ 48: C7. 45, 88, 000186A1
        mov     rax, qword [rbp-78H]                    ; 0D46 _ 48: 8B. 45, 88
        shl     rax, 3                                  ; 0D4A _ 48: C1. E0, 03
        add     rax, 8                                  ; 0D4E _ 48: 83. C0, 08
        mov     rdi, rax                                ; 0D52 _ 48: 89. C7
        call    ___lib_malloc                           ; 0D55 _ E8, 00000000(rel)
        mov     rdi, qword [rel _ksm_]                  ; 0D5A _ 48: 8B. 3D, 00000000(GOT r)
        mov     qword [rbp-98H], rax                    ; 0D61 _ 48: 89. 85, FFFFFF68
        mov     rax, qword [rbp-78H]                    ; 0D68 _ 48: 8B. 45, 88
        mov     rcx, qword [rbp-98H]                    ; 0D6C _ 48: 8B. 8D, FFFFFF68
        mov     qword [rcx], rax                        ; 0D73 _ 48: 89. 01
        mov     rax, qword [rbp-98H]                    ; 0D76 _ 48: 8B. 85, FFFFFF68
        add     rax, 8                                  ; 0D7D _ 48: 83. C0, 08
        mov     qword [rbp-98H], rax                    ; 0D81 _ 48: 89. 85, FFFFFF68
        mov     rax, qword [rbp-98H]                    ; 0D88 _ 48: 8B. 85, FFFFFF68
        mov     qword [rdi], rax                        ; 0D8F _ 48: 89. 07
        mov     qword [rbp-0B0H], 0                     ; 0D92 _ 48: C7. 85, FFFFFF50, 00000000
?_063:  cmp     qword [rbp-0B0H], 100001                ; 0D9D _ 48: 81. BD, FFFFFF50, 000186A1
; Note: Immediate operand could be made smaller by sign extension
        jge     ?_064                                   ; 0DA8 _ 0F 8D, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_065                                   ; 0DAE _ E9, 00000005

?_064:  jmp     ?_071                                   ; 0DB3 _ E9, 000000F4

?_065:  mov     qword [rbp-1F8H], 21                    ; 0DB8 _ 48: C7. 85, FFFFFE08, 00000015
        mov     rax, qword [rbp-1F8H]                   ; 0DC3 _ 48: 8B. 85, FFFFFE08
        shl     rax, 3                                  ; 0DCA _ 48: C1. E0, 03
        add     rax, 8                                  ; 0DCE _ 48: 83. C0, 08
        mov     rdi, rax                                ; 0DD2 _ 48: 89. C7
        call    ___lib_malloc                           ; 0DD5 _ E8, 00000000(rel)
        mov     rdi, qword [rel _ksm_]                  ; 0DDA _ 48: 8B. 3D, 00000000(GOT r)
        mov     qword [rbp-1F0H], rax                   ; 0DE1 _ 48: 89. 85, FFFFFE10
        mov     rax, qword [rbp-1F8H]                   ; 0DE8 _ 48: 8B. 85, FFFFFE08
        mov     rcx, qword [rbp-1F0H]                   ; 0DEF _ 48: 8B. 8D, FFFFFE10
        mov     qword [rcx], rax                        ; 0DF6 _ 48: 89. 01
        mov     rax, qword [rbp-1F0H]                   ; 0DF9 _ 48: 8B. 85, FFFFFE10
        add     rax, 8                                  ; 0E00 _ 48: 83. C0, 08
        mov     qword [rbp-1F0H], rax                   ; 0E04 _ 48: 89. 85, FFFFFE10
        mov     rax, qword [rbp-1F0H]                   ; 0E0B _ 48: 8B. 85, FFFFFE10
        mov     rcx, qword [rdi]                        ; 0E12 _ 48: 8B. 0F
        mov     rdi, qword [rbp-0B0H]                   ; 0E15 _ 48: 8B. BD, FFFFFF50
        shl     rdi, 3                                  ; 0E1C _ 48: C1. E7, 03
        add     rcx, rdi                                ; 0E20 _ 48: 01. F9
        mov     qword [rcx], rax                        ; 0E23 _ 48: 89. 01
        mov     qword [rbp-0B8H], 0                     ; 0E26 _ 48: C7. 85, FFFFFF48, 00000000
?_066:  cmp     qword [rbp-0B8H], 21                    ; 0E31 _ 48: 83. BD, FFFFFF48, 15
; Note: Immediate operand could be made smaller by sign extension
        jge     ?_067                                   ; 0E39 _ 0F 8D, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_068                                   ; 0E3F _ E9, 00000005

?_067:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_069                                   ; 0E44 _ E9, 00000047

?_068:  mov     rax, qword [rel _ksm_]                  ; 0E49 _ 48: 8B. 05, 00000000(GOT r)
        mov     rax, qword [rax]                        ; 0E50 _ 48: 8B. 00
        mov     rcx, qword [rbp-0B0H]                   ; 0E53 _ 48: 8B. 8D, FFFFFF50
        shl     rcx, 3                                  ; 0E5A _ 48: C1. E1, 03
        add     rax, rcx                                ; 0E5E _ 48: 01. C8
        mov     rax, qword [rax]                        ; 0E61 _ 48: 8B. 00
        mov     rcx, qword [rbp-0B8H]                   ; 0E64 _ 48: 8B. 8D, FFFFFF48
        shl     rcx, 3                                  ; 0E6B _ 48: C1. E1, 03
        add     rax, rcx                                ; 0E6F _ 48: 01. C8
        mov     qword [rax], 0                          ; 0E72 _ 48: C7. 00, 00000000
        mov     rax, qword [rbp-0B8H]                   ; 0E79 _ 48: 8B. 85, FFFFFF48
        add     rax, 1                                  ; 0E80 _ 48: 83. C0, 01
        mov     qword [rbp-0B8H], rax                   ; 0E84 _ 48: 89. 85, FFFFFF48
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_066                                   ; 0E8B _ E9, FFFFFFA1

?_069:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_070                                   ; 0E90 _ E9, 00000000

?_070:  mov     rax, qword [rbp-0B0H]                   ; 0E95 _ 48: 8B. 85, FFFFFF50
        add     rax, 1                                  ; 0E9C _ 48: 83. C0, 01
        mov     qword [rbp-0B0H], rax                   ; 0EA0 _ 48: 89. 85, FFFFFF50
        jmp     ?_063                                   ; 0EA7 _ E9, FFFFFEF1

?_071:  ; Local function
        mov     qword [rbp-118H], 21                    ; 0EAC _ 48: C7. 85, FFFFFEE8, 00000015
        mov     rax, qword [rbp-118H]                   ; 0EB7 _ 48: 8B. 85, FFFFFEE8
        shl     rax, 3                                  ; 0EBE _ 48: C1. E0, 03
        add     rax, 8                                  ; 0EC2 _ 48: 83. C0, 08
        mov     rdi, rax                                ; 0EC6 _ 48: 89. C7
        call    ___lib_malloc                           ; 0EC9 _ E8, 00000000(rel)
        mov     rdi, qword [rel _p_]                    ; 0ECE _ 48: 8B. 3D, 00000000(GOT r)
        mov     qword [rbp-108H], rax                   ; 0ED5 _ 48: 89. 85, FFFFFEF8
        mov     rax, qword [rbp-118H]                   ; 0EDC _ 48: 8B. 85, FFFFFEE8
        mov     rcx, qword [rbp-108H]                   ; 0EE3 _ 48: 8B. 8D, FFFFFEF8
        mov     qword [rcx], rax                        ; 0EEA _ 48: 89. 01
        mov     rax, qword [rbp-108H]                   ; 0EED _ 48: 8B. 85, FFFFFEF8
        add     rax, 8                                  ; 0EF4 _ 48: 83. C0, 08
        mov     qword [rbp-108H], rax                   ; 0EF8 _ 48: 89. 85, FFFFFEF8
        mov     rax, qword [rbp-108H]                   ; 0EFF _ 48: 8B. 85, FFFFFEF8
        mov     qword [rdi], rax                        ; 0F06 _ 48: 89. 07
        mov     qword [rbp-0B0H], 0                     ; 0F09 _ 48: C7. 85, FFFFFF50, 00000000
?_072:  cmp     qword [rbp-0B0H], 21                    ; 0F14 _ 48: 83. BD, FFFFFF50, 15
; Note: Immediate operand could be made smaller by sign extension
        jge     ?_073                                   ; 0F1C _ 0F 8D, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_074                                   ; 0F22 _ E9, 00000005

?_073:  jmp     ?_080                                   ; 0F27 _ E9, 000000F4

?_074:  mov     qword [rbp-208H], 21                    ; 0F2C _ 48: C7. 85, FFFFFDF8, 00000015
        mov     rax, qword [rbp-208H]                   ; 0F37 _ 48: 8B. 85, FFFFFDF8
        shl     rax, 3                                  ; 0F3E _ 48: C1. E0, 03
        add     rax, 8                                  ; 0F42 _ 48: 83. C0, 08
        mov     rdi, rax                                ; 0F46 _ 48: 89. C7
        call    ___lib_malloc                           ; 0F49 _ E8, 00000000(rel)
        mov     rdi, qword [rel _p_]                    ; 0F4E _ 48: 8B. 3D, 00000000(GOT r)
        mov     qword [rbp-200H], rax                   ; 0F55 _ 48: 89. 85, FFFFFE00
        mov     rax, qword [rbp-208H]                   ; 0F5C _ 48: 8B. 85, FFFFFDF8
        mov     rcx, qword [rbp-200H]                   ; 0F63 _ 48: 8B. 8D, FFFFFE00
        mov     qword [rcx], rax                        ; 0F6A _ 48: 89. 01
        mov     rax, qword [rbp-200H]                   ; 0F6D _ 48: 8B. 85, FFFFFE00
        add     rax, 8                                  ; 0F74 _ 48: 83. C0, 08
        mov     qword [rbp-200H], rax                   ; 0F78 _ 48: 89. 85, FFFFFE00
        mov     rax, qword [rbp-200H]                   ; 0F7F _ 48: 8B. 85, FFFFFE00
        mov     rcx, qword [rdi]                        ; 0F86 _ 48: 8B. 0F
        mov     rdi, qword [rbp-0B0H]                   ; 0F89 _ 48: 8B. BD, FFFFFF50
        shl     rdi, 3                                  ; 0F90 _ 48: C1. E7, 03
        add     rcx, rdi                                ; 0F94 _ 48: 01. F9
        mov     qword [rcx], rax                        ; 0F97 _ 48: 89. 01
        mov     qword [rbp-0B8H], 0                     ; 0F9A _ 48: C7. 85, FFFFFF48, 00000000
?_075:  cmp     qword [rbp-0B8H], 21                    ; 0FA5 _ 48: 83. BD, FFFFFF48, 15
; Note: Immediate operand could be made smaller by sign extension
        jge     ?_076                                   ; 0FAD _ 0F 8D, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_077                                   ; 0FB3 _ E9, 00000005

?_076:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_078                                   ; 0FB8 _ E9, 00000047

?_077:  mov     rax, qword [rel _p_]                    ; 0FBD _ 48: 8B. 05, 00000000(GOT r)
        mov     rax, qword [rax]                        ; 0FC4 _ 48: 8B. 00
        mov     rcx, qword [rbp-0B0H]                   ; 0FC7 _ 48: 8B. 8D, FFFFFF50
        shl     rcx, 3                                  ; 0FCE _ 48: C1. E1, 03
        add     rax, rcx                                ; 0FD2 _ 48: 01. C8
        mov     rax, qword [rax]                        ; 0FD5 _ 48: 8B. 00
        mov     rcx, qword [rbp-0B8H]                   ; 0FD8 _ 48: 8B. 8D, FFFFFF48
        shl     rcx, 3                                  ; 0FDF _ 48: C1. E1, 03
        add     rax, rcx                                ; 0FE3 _ 48: 01. C8
        mov     qword [rax], 0                          ; 0FE6 _ 48: C7. 00, 00000000
        mov     rax, qword [rbp-0B8H]                   ; 0FED _ 48: 8B. 85, FFFFFF48
        add     rax, 1                                  ; 0FF4 _ 48: 83. C0, 01
        mov     qword [rbp-0B8H], rax                   ; 0FF8 _ 48: 89. 85, FFFFFF48
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_075                                   ; 0FFF _ E9, FFFFFFA1

?_078:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_079                                   ; 1004 _ E9, 00000000

?_079:  mov     rax, qword [rbp-0B0H]                   ; 1009 _ 48: 8B. 85, FFFFFF50
        add     rax, 1                                  ; 1010 _ 48: 83. C0, 01
        mov     qword [rbp-0B0H], rax                   ; 1014 _ 48: 89. 85, FFFFFF50
        jmp     ?_072                                   ; 101B _ E9, FFFFFEF4

?_080:  ; Local function
        mov     qword [rbp-138H], 21                    ; 1020 _ 48: C7. 85, FFFFFEC8, 00000015
        mov     rax, qword [rbp-138H]                   ; 102B _ 48: 8B. 85, FFFFFEC8
        shl     rax, 3                                  ; 1032 _ 48: C1. E0, 03
        add     rax, 8                                  ; 1036 _ 48: 83. C0, 08
        mov     rdi, rax                                ; 103A _ 48: 89. C7
        call    ___lib_malloc                           ; 103D _ E8, 00000000(rel)
        mov     rdi, qword [rel _q_]                    ; 1042 _ 48: 8B. 3D, 00000000(GOT r)
        mov     qword [rbp-128H], rax                   ; 1049 _ 48: 89. 85, FFFFFED8
        mov     rax, qword [rbp-138H]                   ; 1050 _ 48: 8B. 85, FFFFFEC8
        mov     rcx, qword [rbp-128H]                   ; 1057 _ 48: 8B. 8D, FFFFFED8
        mov     qword [rcx], rax                        ; 105E _ 48: 89. 01
        mov     rax, qword [rbp-128H]                   ; 1061 _ 48: 8B. 85, FFFFFED8
        add     rax, 8                                  ; 1068 _ 48: 83. C0, 08
        mov     qword [rbp-128H], rax                   ; 106C _ 48: 89. 85, FFFFFED8
        mov     rax, qword [rbp-128H]                   ; 1073 _ 48: 8B. 85, FFFFFED8
        mov     qword [rdi], rax                        ; 107A _ 48: 89. 07
        mov     qword [rbp-0B0H], 0                     ; 107D _ 48: C7. 85, FFFFFF50, 00000000
?_081:  cmp     qword [rbp-0B0H], 21                    ; 1088 _ 48: 83. BD, FFFFFF50, 15
; Note: Immediate operand could be made smaller by sign extension
        jge     ?_082                                   ; 1090 _ 0F 8D, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_083                                   ; 1096 _ E9, 00000005

?_082:  jmp     ?_089                                   ; 109B _ E9, 000000F7

?_083:  mov     qword [rbp-218H], 100001                ; 10A0 _ 48: C7. 85, FFFFFDE8, 000186A1
        mov     rax, qword [rbp-218H]                   ; 10AB _ 48: 8B. 85, FFFFFDE8
        shl     rax, 3                                  ; 10B2 _ 48: C1. E0, 03
        add     rax, 8                                  ; 10B6 _ 48: 83. C0, 08
        mov     rdi, rax                                ; 10BA _ 48: 89. C7
        call    ___lib_malloc                           ; 10BD _ E8, 00000000(rel)
        mov     rdi, qword [rel _q_]                    ; 10C2 _ 48: 8B. 3D, 00000000(GOT r)
        mov     qword [rbp-228H], rax                   ; 10C9 _ 48: 89. 85, FFFFFDD8
        mov     rax, qword [rbp-218H]                   ; 10D0 _ 48: 8B. 85, FFFFFDE8
        mov     rcx, qword [rbp-228H]                   ; 10D7 _ 48: 8B. 8D, FFFFFDD8
        mov     qword [rcx], rax                        ; 10DE _ 48: 89. 01
        mov     rax, qword [rbp-228H]                   ; 10E1 _ 48: 8B. 85, FFFFFDD8
        add     rax, 8                                  ; 10E8 _ 48: 83. C0, 08
        mov     qword [rbp-228H], rax                   ; 10EC _ 48: 89. 85, FFFFFDD8
        mov     rax, qword [rbp-228H]                   ; 10F3 _ 48: 8B. 85, FFFFFDD8
        mov     rcx, qword [rdi]                        ; 10FA _ 48: 8B. 0F
        mov     rdi, qword [rbp-0B0H]                   ; 10FD _ 48: 8B. BD, FFFFFF50
        shl     rdi, 3                                  ; 1104 _ 48: C1. E7, 03
        add     rcx, rdi                                ; 1108 _ 48: 01. F9
        mov     qword [rcx], rax                        ; 110B _ 48: 89. 01
        mov     qword [rbp-0B8H], 0                     ; 110E _ 48: C7. 85, FFFFFF48, 00000000
?_084:  cmp     qword [rbp-0B8H], 100001                ; 1119 _ 48: 81. BD, FFFFFF48, 000186A1
; Note: Immediate operand could be made smaller by sign extension
        jge     ?_085                                   ; 1124 _ 0F 8D, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_086                                   ; 112A _ E9, 00000005

?_085:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_087                                   ; 112F _ E9, 00000047

?_086:  mov     rax, qword [rel _q_]                    ; 1134 _ 48: 8B. 05, 00000000(GOT r)
        mov     rax, qword [rax]                        ; 113B _ 48: 8B. 00
        mov     rcx, qword [rbp-0B0H]                   ; 113E _ 48: 8B. 8D, FFFFFF50
        shl     rcx, 3                                  ; 1145 _ 48: C1. E1, 03
        add     rax, rcx                                ; 1149 _ 48: 01. C8
        mov     rax, qword [rax]                        ; 114C _ 48: 8B. 00
        mov     rcx, qword [rbp-0B8H]                   ; 114F _ 48: 8B. 8D, FFFFFF48
        shl     rcx, 3                                  ; 1156 _ 48: C1. E1, 03
        add     rax, rcx                                ; 115A _ 48: 01. C8
        mov     qword [rax], 0                          ; 115D _ 48: C7. 00, 00000000
        mov     rax, qword [rbp-0B8H]                   ; 1164 _ 48: 8B. 85, FFFFFF48
        add     rax, 1                                  ; 116B _ 48: 83. C0, 01
        mov     qword [rbp-0B8H], rax                   ; 116F _ 48: 89. 85, FFFFFF48
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_084                                   ; 1176 _ E9, FFFFFF9E

?_087:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_088                                   ; 117B _ E9, 00000000

?_088:  mov     rax, qword [rbp-0B0H]                   ; 1180 _ 48: 8B. 85, FFFFFF50
        add     rax, 1                                  ; 1187 _ 48: 83. C0, 01
        mov     qword [rbp-0B0H], rax                   ; 118B _ 48: 89. 85, FFFFFF50
        jmp     ?_081                                   ; 1192 _ E9, FFFFFEF1

?_089:  ; Local function
        mov     qword [rbp-28H], 100001                 ; 1197 _ 48: C7. 45, D8, 000186A1
        mov     rax, qword [rbp-28H]                    ; 119F _ 48: 8B. 45, D8
        shl     rax, 3                                  ; 11A3 _ 48: C1. E0, 03
        add     rax, 8                                  ; 11A7 _ 48: 83. C0, 08
        mov     rdi, rax                                ; 11AB _ 48: 89. C7
        call    ___lib_malloc                           ; 11AE _ E8, 00000000(rel)
        mov     rdi, qword [rel _Comb_]                 ; 11B3 _ 48: 8B. 3D, 00000000(GOT r)
        mov     qword [rbp-68H], rax                    ; 11BA _ 48: 89. 45, 98
        mov     rax, qword [rbp-28H]                    ; 11BE _ 48: 8B. 45, D8
        mov     rcx, qword [rbp-68H]                    ; 11C2 _ 48: 8B. 4D, 98
        mov     qword [rcx], rax                        ; 11C6 _ 48: 89. 01
        mov     rax, qword [rbp-68H]                    ; 11C9 _ 48: 8B. 45, 98
        add     rax, 8                                  ; 11CD _ 48: 83. C0, 08
        mov     qword [rbp-68H], rax                    ; 11D1 _ 48: 89. 45, 98
        mov     rax, qword [rbp-68H]                    ; 11D5 _ 48: 8B. 45, 98
        mov     qword [rdi], rax                        ; 11D9 _ 48: 89. 07
        mov     qword [rbp-0B0H], 0                     ; 11DC _ 48: C7. 85, FFFFFF50, 00000000
?_090:  cmp     qword [rbp-0B0H], 100001                ; 11E7 _ 48: 81. BD, FFFFFF50, 000186A1
; Note: Immediate operand could be made smaller by sign extension
        jge     ?_091                                   ; 11F2 _ 0F 8D, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_092                                   ; 11F8 _ E9, 00000005

?_091:  jmp     ?_098                                   ; 11FD _ E9, 000000F4

?_092:  mov     qword [rbp-240H], 21                    ; 1202 _ 48: C7. 85, FFFFFDC0, 00000015
        mov     rax, qword [rbp-240H]                   ; 120D _ 48: 8B. 85, FFFFFDC0
        shl     rax, 3                                  ; 1214 _ 48: C1. E0, 03
        add     rax, 8                                  ; 1218 _ 48: 83. C0, 08
        mov     rdi, rax                                ; 121C _ 48: 89. C7
        call    ___lib_malloc                           ; 121F _ E8, 00000000(rel)
        mov     rdi, qword [rel _Comb_]                 ; 1224 _ 48: 8B. 3D, 00000000(GOT r)
        mov     qword [rbp-238H], rax                   ; 122B _ 48: 89. 85, FFFFFDC8
        mov     rax, qword [rbp-240H]                   ; 1232 _ 48: 8B. 85, FFFFFDC0
        mov     rcx, qword [rbp-238H]                   ; 1239 _ 48: 8B. 8D, FFFFFDC8
        mov     qword [rcx], rax                        ; 1240 _ 48: 89. 01
        mov     rax, qword [rbp-238H]                   ; 1243 _ 48: 8B. 85, FFFFFDC8
        add     rax, 8                                  ; 124A _ 48: 83. C0, 08
        mov     qword [rbp-238H], rax                   ; 124E _ 48: 89. 85, FFFFFDC8
        mov     rax, qword [rbp-238H]                   ; 1255 _ 48: 8B. 85, FFFFFDC8
        mov     rcx, qword [rdi]                        ; 125C _ 48: 8B. 0F
        mov     rdi, qword [rbp-0B0H]                   ; 125F _ 48: 8B. BD, FFFFFF50
        shl     rdi, 3                                  ; 1266 _ 48: C1. E7, 03
        add     rcx, rdi                                ; 126A _ 48: 01. F9
        mov     qword [rcx], rax                        ; 126D _ 48: 89. 01
        mov     qword [rbp-0B8H], 0                     ; 1270 _ 48: C7. 85, FFFFFF48, 00000000
?_093:  cmp     qword [rbp-0B8H], 21                    ; 127B _ 48: 83. BD, FFFFFF48, 15
; Note: Immediate operand could be made smaller by sign extension
        jge     ?_094                                   ; 1283 _ 0F 8D, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_095                                   ; 1289 _ E9, 00000005

?_094:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_096                                   ; 128E _ E9, 00000047

?_095:  mov     rax, qword [rel _Comb_]                 ; 1293 _ 48: 8B. 05, 00000000(GOT r)
        mov     rax, qword [rax]                        ; 129A _ 48: 8B. 00
        mov     rcx, qword [rbp-0B0H]                   ; 129D _ 48: 8B. 8D, FFFFFF50
        shl     rcx, 3                                  ; 12A4 _ 48: C1. E1, 03
        add     rax, rcx                                ; 12A8 _ 48: 01. C8
        mov     rax, qword [rax]                        ; 12AB _ 48: 8B. 00
        mov     rcx, qword [rbp-0B8H]                   ; 12AE _ 48: 8B. 8D, FFFFFF48
        shl     rcx, 3                                  ; 12B5 _ 48: C1. E1, 03
        add     rax, rcx                                ; 12B9 _ 48: 01. C8
        mov     qword [rax], 0                          ; 12BC _ 48: C7. 00, 00000000
        mov     rax, qword [rbp-0B8H]                   ; 12C3 _ 48: 8B. 85, FFFFFF48
        add     rax, 1                                  ; 12CA _ 48: 83. C0, 01
        mov     qword [rbp-0B8H], rax                   ; 12CE _ 48: 89. 85, FFFFFF48
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_093                                   ; 12D5 _ E9, FFFFFFA1

?_096:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_097                                   ; 12DA _ E9, 00000000

?_097:  mov     rax, qword [rbp-0B0H]                   ; 12DF _ 48: 8B. 85, FFFFFF50
        add     rax, 1                                  ; 12E6 _ 48: 83. C0, 01
        mov     qword [rbp-0B0H], rax                   ; 12EA _ 48: 89. 85, FFFFFF50
        jmp     ?_090                                   ; 12F1 _ E9, FFFFFEF1

?_098:  ; Local function
        mov     qword [rbp-0A8H], 1001                  ; 12F6 _ 48: C7. 85, FFFFFF58, 000003E9
        mov     rax, qword [rbp-0A8H]                   ; 1301 _ 48: 8B. 85, FFFFFF58
        shl     rax, 3                                  ; 1308 _ 48: C1. E0, 03
        add     rax, 8                                  ; 130C _ 48: 83. C0, 08
        mov     rdi, rax                                ; 1310 _ 48: 89. C7
        call    ___lib_malloc                           ; 1313 _ E8, 00000000(rel)
        mov     rdi, qword [rel _fn_]                   ; 1318 _ 48: 8B. 3D, 00000000(GOT r)
        mov     qword [rbp-88H], rax                    ; 131F _ 48: 89. 85, FFFFFF78
        mov     rax, qword [rbp-0A8H]                   ; 1326 _ 48: 8B. 85, FFFFFF58
        mov     rcx, qword [rbp-88H]                    ; 132D _ 48: 8B. 8D, FFFFFF78
        mov     qword [rcx], rax                        ; 1334 _ 48: 89. 01
        mov     rax, qword [rbp-88H]                    ; 1337 _ 48: 8B. 85, FFFFFF78
        add     rax, 8                                  ; 133E _ 48: 83. C0, 08
        mov     qword [rbp-88H], rax                    ; 1342 _ 48: 89. 85, FFFFFF78
        mov     rax, qword [rbp-88H]                    ; 1349 _ 48: 8B. 85, FFFFFF78
        mov     qword [rdi], rax                        ; 1350 _ 48: 89. 07
        mov     qword [rbp-0B0H], 0                     ; 1353 _ 48: C7. 85, FFFFFF50, 00000000
?_099:  cmp     qword [rbp-0B0H], 1001                  ; 135E _ 48: 81. BD, FFFFFF50, 000003E9
; Note: Immediate operand could be made smaller by sign extension
        jge     ?_100                                   ; 1369 _ 0F 8D, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_101                                   ; 136F _ E9, 00000005

?_100:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_102                                   ; 1374 _ E9, 00000036

?_101:  mov     rax, qword [rel _fn_]                   ; 1379 _ 48: 8B. 05, 00000000(GOT r)
        mov     rax, qword [rax]                        ; 1380 _ 48: 8B. 00
        mov     rcx, qword [rbp-0B0H]                   ; 1383 _ 48: 8B. 8D, FFFFFF50
        shl     rcx, 3                                  ; 138A _ 48: C1. E1, 03
        add     rax, rcx                                ; 138E _ 48: 01. C8
        mov     qword [rax], 0                          ; 1391 _ 48: C7. 00, 00000000
        mov     rax, qword [rbp-0B0H]                   ; 1398 _ 48: 8B. 85, FFFFFF50
        add     rax, 1                                  ; 139F _ 48: 83. C0, 01
        mov     qword [rbp-0B0H], rax                   ; 13A3 _ 48: 89. 85, FFFFFF50
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_099                                   ; 13AA _ E9, FFFFFFAF

?_102:  ; Local function
        mov     qword [rbp-110H], 1001                  ; 13AF _ 48: C7. 85, FFFFFEF0, 000003E9
        mov     rax, qword [rbp-110H]                   ; 13BA _ 48: 8B. 85, FFFFFEF0
        shl     rax, 3                                  ; 13C1 _ 48: C1. E0, 03
        add     rax, 8                                  ; 13C5 _ 48: 83. C0, 08
        mov     rdi, rax                                ; 13C9 _ 48: 89. C7
        call    ___lib_malloc                           ; 13CC _ E8, 00000000(rel)
        mov     rdi, qword [rel _fc_]                   ; 13D1 _ 48: 8B. 3D, 00000000(GOT r)
        mov     qword [rbp-0D8H], rax                   ; 13D8 _ 48: 89. 85, FFFFFF28
        mov     rax, qword [rbp-110H]                   ; 13DF _ 48: 8B. 85, FFFFFEF0
        mov     rcx, qword [rbp-0D8H]                   ; 13E6 _ 48: 8B. 8D, FFFFFF28
        mov     qword [rcx], rax                        ; 13ED _ 48: 89. 01
        mov     rax, qword [rbp-0D8H]                   ; 13F0 _ 48: 8B. 85, FFFFFF28
        add     rax, 8                                  ; 13F7 _ 48: 83. C0, 08
        mov     qword [rbp-0D8H], rax                   ; 13FB _ 48: 89. 85, FFFFFF28
        mov     rax, qword [rbp-0D8H]                   ; 1402 _ 48: 8B. 85, FFFFFF28
        mov     qword [rdi], rax                        ; 1409 _ 48: 89. 07
        mov     qword [rbp-0B0H], 0                     ; 140C _ 48: C7. 85, FFFFFF50, 00000000
?_103:  cmp     qword [rbp-0B0H], 1001                  ; 1417 _ 48: 81. BD, FFFFFF50, 000003E9
; Note: Immediate operand could be made smaller by sign extension
        jge     ?_104                                   ; 1422 _ 0F 8D, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_105                                   ; 1428 _ E9, 00000005

?_104:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_106                                   ; 142D _ E9, 00000036

?_105:  mov     rax, qword [rel _fc_]                   ; 1432 _ 48: 8B. 05, 00000000(GOT r)
        mov     rax, qword [rax]                        ; 1439 _ 48: 8B. 00
        mov     rcx, qword [rbp-0B0H]                   ; 143C _ 48: 8B. 8D, FFFFFF50
        shl     rcx, 3                                  ; 1443 _ 48: C1. E1, 03
        add     rax, rcx                                ; 1447 _ 48: 01. C8
        mov     qword [rax], 0                          ; 144A _ 48: C7. 00, 00000000
        mov     rax, qword [rbp-0B0H]                   ; 1451 _ 48: 8B. 85, FFFFFF50
        add     rax, 1                                  ; 1458 _ 48: 83. C0, 01
        mov     qword [rbp-0B0H], rax                   ; 145C _ 48: 89. 85, FFFFFF50
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_103                                   ; 1463 _ E9, FFFFFFAF

?_106:  ; Local function
        mov     qword [rbp-100H], 1001                  ; 1468 _ 48: C7. 85, FFFFFF00, 000003E9
        mov     rax, qword [rbp-100H]                   ; 1473 _ 48: 8B. 85, FFFFFF00
        shl     rax, 3                                  ; 147A _ 48: C1. E0, 03
        add     rax, 8                                  ; 147E _ 48: 83. C0, 08
        mov     rdi, rax                                ; 1482 _ 48: 89. C7
        call    ___lib_malloc                           ; 1485 _ E8, 00000000(rel)
        mov     rdi, qword [rel _m_]                    ; 148A _ 48: 8B. 3D, 00000000(GOT r)
        mov     qword [rbp-0F0H], rax                   ; 1491 _ 48: 89. 85, FFFFFF10
        mov     rax, qword [rbp-100H]                   ; 1498 _ 48: 8B. 85, FFFFFF00
        mov     rcx, qword [rbp-0F0H]                   ; 149F _ 48: 8B. 8D, FFFFFF10
        mov     qword [rcx], rax                        ; 14A6 _ 48: 89. 01
        mov     rax, qword [rbp-0F0H]                   ; 14A9 _ 48: 8B. 85, FFFFFF10
        add     rax, 8                                  ; 14B0 _ 48: 83. C0, 08
        mov     qword [rbp-0F0H], rax                   ; 14B4 _ 48: 89. 85, FFFFFF10
        mov     rax, qword [rbp-0F0H]                   ; 14BB _ 48: 8B. 85, FFFFFF10
        mov     qword [rdi], rax                        ; 14C2 _ 48: 89. 07
        mov     qword [rbp-0B0H], 0                     ; 14C5 _ 48: C7. 85, FFFFFF50, 00000000
?_107:  cmp     qword [rbp-0B0H], 1001                  ; 14D0 _ 48: 81. BD, FFFFFF50, 000003E9
; Note: Immediate operand could be made smaller by sign extension
        jge     ?_108                                   ; 14DB _ 0F 8D, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_109                                   ; 14E1 _ E9, 00000005

?_108:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_110                                   ; 14E6 _ E9, 00000036

?_109:  mov     rax, qword [rel _m_]                    ; 14EB _ 48: 8B. 05, 00000000(GOT r)
        mov     rax, qword [rax]                        ; 14F2 _ 48: 8B. 00
        mov     rcx, qword [rbp-0B0H]                   ; 14F5 _ 48: 8B. 8D, FFFFFF50
        shl     rcx, 3                                  ; 14FC _ 48: C1. E1, 03
        add     rax, rcx                                ; 1500 _ 48: 01. C8
        mov     qword [rax], 0                          ; 1503 _ 48: C7. 00, 00000000
        mov     rax, qword [rbp-0B0H]                   ; 150A _ 48: 8B. 85, FFFFFF50
        add     rax, 1                                  ; 1511 _ 48: 83. C0, 01
        mov     qword [rbp-0B0H], rax                   ; 1515 _ 48: 89. 85, FFFFFF50
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_107                                   ; 151C _ E9, FFFFFFAF

?_110:  ; Local function
        mov     qword [rbp-130H], 1001                  ; 1521 _ 48: C7. 85, FFFFFED0, 000003E9
        mov     rax, qword [rbp-130H]                   ; 152C _ 48: 8B. 85, FFFFFED0
        shl     rax, 3                                  ; 1533 _ 48: C1. E0, 03
        add     rax, 8                                  ; 1537 _ 48: 83. C0, 08
        mov     rdi, rax                                ; 153B _ 48: 89. C7
        call    ___lib_malloc                           ; 153E _ E8, 00000000(rel)
        mov     rdi, qword [rel _res_]                  ; 1543 _ 48: 8B. 3D, 00000000(GOT r)
        mov     qword [rbp-150H], rax                   ; 154A _ 48: 89. 85, FFFFFEB0
        mov     rax, qword [rbp-130H]                   ; 1551 _ 48: 8B. 85, FFFFFED0
        mov     rcx, qword [rbp-150H]                   ; 1558 _ 48: 8B. 8D, FFFFFEB0
        mov     qword [rcx], rax                        ; 155F _ 48: 89. 01
        mov     rax, qword [rbp-150H]                   ; 1562 _ 48: 8B. 85, FFFFFEB0
        add     rax, 8                                  ; 1569 _ 48: 83. C0, 08
        mov     qword [rbp-150H], rax                   ; 156D _ 48: 89. 85, FFFFFEB0
        mov     rax, qword [rbp-150H]                   ; 1574 _ 48: 8B. 85, FFFFFEB0
        mov     qword [rdi], rax                        ; 157B _ 48: 89. 07
        mov     qword [rbp-0B0H], 0                     ; 157E _ 48: C7. 85, FFFFFF50, 00000000
?_111:  cmp     qword [rbp-0B0H], 1001                  ; 1589 _ 48: 81. BD, FFFFFF50, 000003E9
; Note: Immediate operand could be made smaller by sign extension
        jge     ?_112                                   ; 1594 _ 0F 8D, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_113                                   ; 159A _ E9, 00000005

?_112:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_114                                   ; 159F _ E9, 00000036

?_113:  mov     rax, qword [rel _res_]                  ; 15A4 _ 48: 8B. 05, 00000000(GOT r)
        mov     rax, qword [rax]                        ; 15AB _ 48: 8B. 00
        mov     rcx, qword [rbp-0B0H]                   ; 15AE _ 48: 8B. 8D, FFFFFF50
        shl     rcx, 3                                  ; 15B5 _ 48: C1. E1, 03
        add     rax, rcx                                ; 15B9 _ 48: 01. C8
        mov     qword [rax], 0                          ; 15BC _ 48: C7. 00, 00000000
        mov     rax, qword [rbp-0B0H]                   ; 15C3 _ 48: 8B. 85, FFFFFF50
        add     rax, 1                                  ; 15CA _ 48: 83. C0, 01
        mov     qword [rbp-0B0H], rax                   ; 15CE _ 48: 89. 85, FFFFFF50
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_111                                   ; 15D5 _ E9, FFFFFFAF

?_114:  ; Local function
        mov     qword [rbp-8H], 1001                    ; 15DA _ 48: C7. 45, F8, 000003E9
        mov     rax, qword [rbp-8H]                     ; 15E2 _ 48: 8B. 45, F8
        shl     rax, 3                                  ; 15E6 _ 48: C1. E0, 03
        add     rax, 8                                  ; 15EA _ 48: 83. C0, 08
        mov     rdi, rax                                ; 15EE _ 48: 89. C7
        call    ___lib_malloc                           ; 15F1 _ E8, 00000000(rel)
        mov     rdi, qword [rel _b_]                    ; 15F6 _ 48: 8B. 3D, 00000000(GOT r)
        mov     qword [rbp-18H], rax                    ; 15FD _ 48: 89. 45, E8
        mov     rax, qword [rbp-8H]                     ; 1601 _ 48: 8B. 45, F8
        mov     rcx, qword [rbp-18H]                    ; 1605 _ 48: 8B. 4D, E8
        mov     qword [rcx], rax                        ; 1609 _ 48: 89. 01
        mov     rax, qword [rbp-18H]                    ; 160C _ 48: 8B. 45, E8
        add     rax, 8                                  ; 1610 _ 48: 83. C0, 08
        mov     qword [rbp-18H], rax                    ; 1614 _ 48: 89. 45, E8
        mov     rax, qword [rbp-18H]                    ; 1618 _ 48: 8B. 45, E8
        mov     qword [rdi], rax                        ; 161C _ 48: 89. 07
        mov     qword [rbp-0B0H], 0                     ; 161F _ 48: C7. 85, FFFFFF50, 00000000
?_115:  cmp     qword [rbp-0B0H], 1001                  ; 162A _ 48: 81. BD, FFFFFF50, 000003E9
; Note: Immediate operand could be made smaller by sign extension
        jge     ?_116                                   ; 1635 _ 0F 8D, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_117                                   ; 163B _ E9, 00000005

?_116:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_118                                   ; 1640 _ E9, 00000036

?_117:  mov     rax, qword [rel _b_]                    ; 1645 _ 48: 8B. 05, 00000000(GOT r)
        mov     rax, qword [rax]                        ; 164C _ 48: 8B. 00
        mov     rcx, qword [rbp-0B0H]                   ; 164F _ 48: 8B. 8D, FFFFFF50
        shl     rcx, 3                                  ; 1656 _ 48: C1. E1, 03
        add     rax, rcx                                ; 165A _ 48: 01. C8
        mov     qword [rax], 0                          ; 165D _ 48: C7. 00, 00000000
        mov     rax, qword [rbp-0B0H]                   ; 1664 _ 48: 8B. 85, FFFFFF50
        add     rax, 1                                  ; 166B _ 48: 83. C0, 01
        mov     qword [rbp-0B0H], rax                   ; 166F _ 48: 89. 85, FFFFFF50
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_115                                   ; 1676 _ E9, FFFFFFAF

?_118:  ; Local function
        mov     qword [rbp-70H], 100001                 ; 167B _ 48: C7. 45, 90, 000186A1
        mov     rax, qword [rbp-70H]                    ; 1683 _ 48: 8B. 45, 90
        shl     rax, 3                                  ; 1687 _ 48: C1. E0, 03
        add     rax, 8                                  ; 168B _ 48: 83. C0, 08
        mov     rdi, rax                                ; 168F _ 48: 89. C7
        call    ___lib_malloc                           ; 1692 _ E8, 00000000(rel)
        mov     rdi, qword [rel _v_]                    ; 1697 _ 48: 8B. 3D, 00000000(GOT r)
        mov     qword [rbp-50H], rax                    ; 169E _ 48: 89. 45, B0
        mov     rax, qword [rbp-70H]                    ; 16A2 _ 48: 8B. 45, 90
        mov     rcx, qword [rbp-50H]                    ; 16A6 _ 48: 8B. 4D, B0
        mov     qword [rcx], rax                        ; 16AA _ 48: 89. 01
        mov     rax, qword [rbp-50H]                    ; 16AD _ 48: 8B. 45, B0
        add     rax, 8                                  ; 16B1 _ 48: 83. C0, 08
        mov     qword [rbp-50H], rax                    ; 16B5 _ 48: 89. 45, B0
        mov     rax, qword [rbp-50H]                    ; 16B9 _ 48: 8B. 45, B0
        mov     qword [rdi], rax                        ; 16BD _ 48: 89. 07
        mov     qword [rbp-0B0H], 0                     ; 16C0 _ 48: C7. 85, FFFFFF50, 00000000
?_119:  cmp     qword [rbp-0B0H], 100001                ; 16CB _ 48: 81. BD, FFFFFF50, 000186A1
; Note: Immediate operand could be made smaller by sign extension
        jge     ?_120                                   ; 16D6 _ 0F 8D, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_121                                   ; 16DC _ E9, 00000005

?_120:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_122                                   ; 16E1 _ E9, 00000036

?_121:  mov     rax, qword [rel _v_]                    ; 16E6 _ 48: 8B. 05, 00000000(GOT r)
        mov     rax, qword [rax]                        ; 16ED _ 48: 8B. 00
        mov     rcx, qword [rbp-0B0H]                   ; 16F0 _ 48: 8B. 8D, FFFFFF50
        shl     rcx, 3                                  ; 16F7 _ 48: C1. E1, 03
        add     rax, rcx                                ; 16FB _ 48: 01. C8
        mov     qword [rax], 0                          ; 16FE _ 48: C7. 00, 00000000
        mov     rax, qword [rbp-0B0H]                   ; 1705 _ 48: 8B. 85, FFFFFF50
        add     rax, 1                                  ; 170C _ 48: 83. C0, 01
        mov     qword [rbp-0B0H], rax                   ; 1710 _ 48: 89. 85, FFFFFF50
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_119                                   ; 1717 _ E9, FFFFFFAF

?_122:  ; Local function
        mov     qword [rbp-90H], 100001                 ; 171C _ 48: C7. 85, FFFFFF70, 000186A1
        mov     rax, qword [rbp-90H]                    ; 1727 _ 48: 8B. 85, FFFFFF70
        shl     rax, 3                                  ; 172E _ 48: C1. E0, 03
        add     rax, 8                                  ; 1732 _ 48: 83. C0, 08
        mov     rdi, rax                                ; 1736 _ 48: 89. C7
        call    ___lib_malloc                           ; 1739 _ E8, 00000000(rel)
        mov     rdi, qword [rel _prime_]                ; 173E _ 48: 8B. 3D, 00000000(GOT r)
        mov     qword [rbp-40H], rax                    ; 1745 _ 48: 89. 45, C0
        mov     rax, qword [rbp-90H]                    ; 1749 _ 48: 8B. 85, FFFFFF70
        mov     rcx, qword [rbp-40H]                    ; 1750 _ 48: 8B. 4D, C0
        mov     qword [rcx], rax                        ; 1754 _ 48: 89. 01
        mov     rax, qword [rbp-40H]                    ; 1757 _ 48: 8B. 45, C0
        add     rax, 8                                  ; 175B _ 48: 83. C0, 08
        mov     qword [rbp-40H], rax                    ; 175F _ 48: 89. 45, C0
        mov     rax, qword [rbp-40H]                    ; 1763 _ 48: 8B. 45, C0
        mov     qword [rdi], rax                        ; 1767 _ 48: 89. 07
        mov     qword [rbp-0B0H], 0                     ; 176A _ 48: C7. 85, FFFFFF50, 00000000
?_123:  cmp     qword [rbp-0B0H], 100001                ; 1775 _ 48: 81. BD, FFFFFF50, 000186A1
; Note: Immediate operand could be made smaller by sign extension
        jge     ?_124                                   ; 1780 _ 0F 8D, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_125                                   ; 1786 _ E9, 00000005

?_124:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_126                                   ; 178B _ E9, 00000036

?_125:  mov     rax, qword [rel _prime_]                ; 1790 _ 48: 8B. 05, 00000000(GOT r)
        mov     rax, qword [rax]                        ; 1797 _ 48: 8B. 00
        mov     rcx, qword [rbp-0B0H]                   ; 179A _ 48: 8B. 8D, FFFFFF50
        shl     rcx, 3                                  ; 17A1 _ 48: C1. E1, 03
        add     rax, rcx                                ; 17A5 _ 48: 01. C8
        mov     qword [rax], 0                          ; 17A8 _ 48: C7. 00, 00000000
        mov     rax, qword [rbp-0B0H]                   ; 17AF _ 48: 8B. 85, FFFFFF50
        add     rax, 1                                  ; 17B6 _ 48: 83. C0, 01
        mov     qword [rbp-0B0H], rax                   ; 17BA _ 48: 89. 85, FFFFFF50
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_123                                   ; 17C1 _ E9, FFFFFFAF

?_126:  ; Local function
        add     rsp, 576                                ; 17C6 _ 48: 81. C4, 00000240
        pop     rbp                                     ; 17CD _ 5D
        ret                                             ; 17CE _ C3

        nop                                             ; 17CF _ 90

ALIGN   16
_Ksm:   ; Function begin
        push    rbp                                     ; 17D0 _ 55
        mov     rbp, rsp                                ; 17D1 _ 48: 89. E5
        sub     rsp, 80                                 ; 17D4 _ 48: 83. EC, 50
        mov     qword [rbp-10H], rdi                    ; 17D8 _ 48: 89. 7D, F0
        mov     qword [rbp-18H], rsi                    ; 17DC _ 48: 89. 75, E8
        mov     rsi, qword [rbp-10H]                    ; 17E0 _ 48: 8B. 75, F0
        mov     qword [rbp-20H], rsi                    ; 17E4 _ 48: 89. 75, E0
        mov     rsi, qword [rbp-18H]                    ; 17E8 _ 48: 8B. 75, E8
        mov     qword [rbp-28H], rsi                    ; 17EC _ 48: 89. 75, D8
        cmp     qword [rbp-28H], 0                      ; 17F0 _ 48: 83. 7D, D8, 00
; Note: Immediate operand could be made smaller by sign extension
        jne     ?_127                                   ; 17F5 _ 0F 85, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_128                                   ; 17FB _ E9, 00000005

?_127:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_129                                   ; 1800 _ E9, 0000000D

?_128:  mov     qword [rbp-8H], 1                       ; 1805 _ 48: C7. 45, F8, 00000001
        jmp     ?_136                                   ; 180D _ E9, 000000D7

?_129:  cmp     qword [rbp-28H], 1                      ; 1812 _ 48: 83. 7D, D8, 01
; Note: Immediate operand could be made smaller by sign extension
        jne     ?_130                                   ; 1817 _ 0F 85, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_131                                   ; 181D _ E9, 00000005

?_130:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_132                                   ; 1822 _ E9, 00000024

?_131:  mov     rax, qword [rel _Mod_]                  ; 1827 _ 48: 8B. 05, 00000000(GOT r)
        mov     rcx, qword [rbp-20H]                    ; 182E _ 48: 8B. 4D, E0
        mov     qword [rbp-40H], rax                    ; 1832 _ 48: 89. 45, C0
        mov     rax, rcx                                ; 1836 _ 48: 89. C8
        cqo                                             ; 1839 _ 48: 99
        mov     rcx, qword [rbp-40H]                    ; 183B _ 48: 8B. 4D, C0
        idiv    qword [rcx]                             ; 183F _ 48: F7. 39
        mov     qword [rbp-8H], rdx                     ; 1842 _ 48: 89. 55, F8
        jmp     ?_136                                   ; 1846 _ E9, 0000009E

?_132:  mov     rdi, qword [rbp-20H]                    ; 184B _ 48: 8B. 7D, E0
        mov     rax, qword [rbp-28H]                    ; 184F _ 48: 8B. 45, D8
        sar     rax, 1                                  ; 1853 _ 48: C1. F8, 01
        mov     rsi, rax                                ; 1857 _ 48: 89. C6
        call    _Ksm                                    ; 185A _ E8, FFFFFF71
        mov     ecx, 2                                  ; 185F _ B9, 00000002
        mov     esi, ecx                                ; 1864 _ 89. CE
        mov     qword [rbp-38H], rax                    ; 1866 _ 48: 89. 45, C8
        mov     rax, qword [rbp-38H]                    ; 186A _ 48: 8B. 45, C8
        mov     qword [rbp-30H], rax                    ; 186E _ 48: 89. 45, D0
        mov     rax, qword [rbp-28H]                    ; 1872 _ 48: 8B. 45, D8
        cqo                                             ; 1876 _ 48: 99
        idiv    rsi                                     ; 1878 _ 48: F7. FE
        cmp     rdx, 1                                  ; 187B _ 48: 83. FA, 01
; Note: Immediate operand could be made smaller by sign extension
        jne     ?_133                                   ; 187F _ 0F 85, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_134                                   ; 1885 _ E9, 00000005

?_133:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_135                                   ; 188A _ E9, 00000036

?_134:  mov     rax, qword [rel _Mod_]                  ; 188F _ 48: 8B. 05, 00000000(GOT r)
        mov     rcx, qword [rbp-30H]                    ; 1896 _ 48: 8B. 4D, D0
        imul    rcx, qword [rbp-30H]                    ; 189A _ 48: 0F AF. 4D, D0
        mov     qword [rbp-48H], rax                    ; 189F _ 48: 89. 45, B8
        mov     rax, rcx                                ; 18A3 _ 48: 89. C8
        cqo                                             ; 18A6 _ 48: 99
        mov     rcx, qword [rbp-48H]                    ; 18A8 _ 48: 8B. 4D, B8
        idiv    qword [rcx]                             ; 18AC _ 48: F7. 39
        imul    rdx, qword [rbp-20H]                    ; 18AF _ 48: 0F AF. 55, E0
        mov     rax, rdx                                ; 18B4 _ 48: 89. D0
        cqo                                             ; 18B7 _ 48: 99
        idiv    qword [rcx]                             ; 18B9 _ 48: F7. 39
        mov     qword [rbp-8H], rdx                     ; 18BC _ 48: 89. 55, F8
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_136                                   ; 18C0 _ E9, 00000024

?_135:  mov     rax, qword [rel _Mod_]                  ; 18C5 _ 48: 8B. 05, 00000000(GOT r)
        mov     rcx, qword [rbp-30H]                    ; 18CC _ 48: 8B. 4D, D0
        imul    rcx, qword [rbp-30H]                    ; 18D0 _ 48: 0F AF. 4D, D0
        mov     qword [rbp-50H], rax                    ; 18D5 _ 48: 89. 45, B0
        mov     rax, rcx                                ; 18D9 _ 48: 89. C8
        cqo                                             ; 18DC _ 48: 99
        mov     rcx, qword [rbp-50H]                    ; 18DE _ 48: 8B. 4D, B0
        idiv    qword [rcx]                             ; 18E2 _ 48: F7. 39
        mov     qword [rbp-8H], rdx                     ; 18E5 _ 48: 89. 55, F8
?_136:  mov     rax, qword [rbp-8H]                     ; 18E9 _ 48: 8B. 45, F8
        add     rsp, 80                                 ; 18ED _ 48: 83. C4, 50
        pop     rbp                                     ; 18F1 _ 5D
        ret                                             ; 18F2 _ C3
; _Ksm End of function

; Filling space: 0DH
; Filler type: Multi-byte NOP
;       db 66H, 66H, 66H, 66H, 2EH, 0FH, 1FH, 84H
;       db 00H, 00H, 00H, 00H, 00H

ALIGN   16

_Calculate_p:; Function begin
        push    rbp                                     ; 1900 _ 55
        mov     rbp, rsp                                ; 1901 _ 48: 89. E5
        sub     rsp, 48                                 ; 1904 _ 48: 83. EC, 30
        mov     rax, qword [rel _p_]                    ; 1908 _ 48: 8B. 05, 00000000(GOT r)
        mov     rcx, qword [rel _Mod_]                  ; 190F _ 48: 8B. 0D, 00000000(GOT r)
        mov     rdx, qword [rax]                        ; 1916 _ 48: 8B. 10
        mov     rdx, qword [rdx]                        ; 1919 _ 48: 8B. 12
        mov     qword [rdx], 1                          ; 191C _ 48: C7. 02, 00000001
        mov     rdx, qword [rax]                        ; 1923 _ 48: 8B. 10
        mov     rdx, qword [rdx+8H]                     ; 1926 _ 48: 8B. 52, 08
        mov     qword [rdx+8H], 1                       ; 192A _ 48: C7. 42, 08, 00000001
        mov     rcx, qword [rcx]                        ; 1932 _ 48: 8B. 09
        sub     rcx, 1                                  ; 1935 _ 48: 83. E9, 01
        mov     rax, qword [rax]                        ; 1939 _ 48: 8B. 00
        mov     rax, qword [rax+8H]                     ; 193C _ 48: 8B. 40, 08
        mov     qword [rax], rcx                        ; 1940 _ 48: 89. 08
        mov     qword [rbp-8H], 2                       ; 1943 _ 48: C7. 45, F8, 00000002
?_137:  mov     rax, qword [rel _C_]                    ; 194B _ 48: 8B. 05, 00000000(GOT r)
        mov     rcx, qword [rbp-8H]                     ; 1952 _ 48: 8B. 4D, F8
        mov     rax, qword [rax]                        ; 1956 _ 48: 8B. 00
        sub     rax, 2                                  ; 1959 _ 48: 83. E8, 02
        cmp     rcx, rax                                ; 195D _ 48: 39. C1
; Note: Immediate operand could be made smaller by sign extension
        jg      ?_138                                   ; 1960 _ 0F 8F, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_139                                   ; 1966 _ E9, 00000005

?_138:  jmp     ?_149                                   ; 196B _ E9, 0000018A

?_139:  mov     rax, qword [rel _Mod_]                  ; 1970 _ 48: 8B. 05, 00000000(GOT r)
        mov     rdi, qword [rbp-8H]                     ; 1977 _ 48: 8B. 7D, F8
        mov     rax, qword [rax]                        ; 197B _ 48: 8B. 00
        sub     rax, 2                                  ; 197E _ 48: 83. E8, 02
        mov     rsi, rax                                ; 1982 _ 48: 89. C6
        call    _Ksm                                    ; 1985 _ E8, 00000000(rel)
        mov     qword [rbp-18H], rax                    ; 198A _ 48: 89. 45, E8
        mov     rax, qword [rbp-18H]                    ; 198E _ 48: 8B. 45, E8
        mov     qword [rbp-20H], rax                    ; 1992 _ 48: 89. 45, E0
        mov     qword [rbp-10H], 0                      ; 1996 _ 48: C7. 45, F0, 00000000
?_140:  mov     rax, qword [rbp-10H]                    ; 199E _ 48: 8B. 45, F0
        cmp     rax, qword [rbp-8H]                     ; 19A2 _ 48: 3B. 45, F8
; Note: Immediate operand could be made smaller by sign extension
        jge     ?_141                                   ; 19A6 _ 0F 8D, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_142                                   ; 19AC _ E9, 00000005

?_141:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_143                                   ; 19B1 _ E9, 0000005E

?_142:  mov     rax, qword [rel _p_]                    ; 19B6 _ 48: 8B. 05, 00000000(GOT r)
        mov     rcx, qword [rax]                        ; 19BD _ 48: 8B. 08
        mov     rdx, qword [rbp-8H]                     ; 19C0 _ 48: 8B. 55, F8
        sub     rdx, 1                                  ; 19C4 _ 48: 83. EA, 01
        shl     rdx, 3                                  ; 19C8 _ 48: C1. E2, 03
        add     rcx, rdx                                ; 19CC _ 48: 01. D1
        mov     rcx, qword [rcx]                        ; 19CF _ 48: 8B. 09
        mov     rdx, qword [rbp-10H]                    ; 19D2 _ 48: 8B. 55, F0
        shl     rdx, 3                                  ; 19D6 _ 48: C1. E2, 03
        add     rcx, rdx                                ; 19DA _ 48: 01. D1
        mov     rcx, qword [rcx]                        ; 19DD _ 48: 8B. 09
        mov     rax, qword [rax]                        ; 19E0 _ 48: 8B. 00
        mov     rdx, qword [rbp-8H]                     ; 19E3 _ 48: 8B. 55, F8
        shl     rdx, 3                                  ; 19E7 _ 48: C1. E2, 03
        add     rax, rdx                                ; 19EB _ 48: 01. D0
        mov     rax, qword [rax]                        ; 19EE _ 48: 8B. 00
        mov     rdx, qword [rbp-10H]                    ; 19F1 _ 48: 8B. 55, F0
        add     rdx, 1                                  ; 19F5 _ 48: 83. C2, 01
        shl     rdx, 3                                  ; 19F9 _ 48: C1. E2, 03
        add     rax, rdx                                ; 19FD _ 48: 01. D0
        mov     qword [rax], rcx                        ; 1A00 _ 48: 89. 08
        mov     rax, qword [rbp-10H]                    ; 1A03 _ 48: 8B. 45, F0
        add     rax, 1                                  ; 1A07 _ 48: 83. C0, 01
        mov     qword [rbp-10H], rax                    ; 1A0B _ 48: 89. 45, F0
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_140                                   ; 1A0F _ E9, FFFFFF8A

?_143:  mov     qword [rbp-10H], 0                      ; 1A14 _ 48: C7. 45, F0, 00000000
?_144:  mov     rax, qword [rbp-10H]                    ; 1A1C _ 48: 8B. 45, F0
        cmp     rax, qword [rbp-8H]                     ; 1A20 _ 48: 3B. 45, F8
; Note: Immediate operand could be made smaller by sign extension
        jg      ?_145                                   ; 1A24 _ 0F 8F, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_146                                   ; 1A2A _ E9, 00000005

?_145:  jmp     ?_147                                   ; 1A2F _ E9, 000000B0

?_146:  mov     rax, qword [rel _p_]                    ; 1A34 _ 48: 8B. 05, 00000000(GOT r)
        mov     rcx, qword [rel _Mod_]                  ; 1A3B _ 48: 8B. 0D, 00000000(GOT r)
        mov     rdx, qword [rax]                        ; 1A42 _ 48: 8B. 10
        mov     rsi, qword [rbp-8H]                     ; 1A45 _ 48: 8B. 75, F8
        shl     rsi, 3                                  ; 1A49 _ 48: C1. E6, 03
        add     rdx, rsi                                ; 1A4D _ 48: 01. F2
        mov     rdx, qword [rdx]                        ; 1A50 _ 48: 8B. 12
        mov     rsi, qword [rbp-10H]                    ; 1A53 _ 48: 8B. 75, F0
        shl     rsi, 3                                  ; 1A57 _ 48: C1. E6, 03
        add     rdx, rsi                                ; 1A5B _ 48: 01. F2
        mov     rdx, qword [rdx]                        ; 1A5E _ 48: 8B. 12
        mov     rsi, qword [rax]                        ; 1A61 _ 48: 8B. 30
        mov     rdi, qword [rbp-8H]                     ; 1A64 _ 48: 8B. 7D, F8
        sub     rdi, 1                                  ; 1A68 _ 48: 83. EF, 01
        shl     rdi, 3                                  ; 1A6C _ 48: C1. E7, 03
        add     rsi, rdi                                ; 1A70 _ 48: 01. FE
        mov     rsi, qword [rsi]                        ; 1A73 _ 48: 8B. 36
        mov     rdi, qword [rbp-10H]                    ; 1A76 _ 48: 8B. 7D, F0
        shl     rdi, 3                                  ; 1A7A _ 48: C1. E7, 03
        add     rsi, rdi                                ; 1A7E _ 48: 01. FE
        mov     rsi, qword [rsi]                        ; 1A81 _ 48: 8B. 36
        imul    rsi, qword [rbp-8H]                     ; 1A84 _ 48: 0F AF. 75, F8
        mov     qword [rbp-28H], rax                    ; 1A89 _ 48: 89. 45, D8
        mov     rax, rsi                                ; 1A8D _ 48: 89. F0
        mov     qword [rbp-30H], rdx                    ; 1A90 _ 48: 89. 55, D0
        cqo                                             ; 1A94 _ 48: 99
        idiv    qword [rcx]                             ; 1A96 _ 48: F7. 39
        mov     rsi, qword [rbp-30H]                    ; 1A99 _ 48: 8B. 75, D0
        sub     rsi, rdx                                ; 1A9D _ 48: 29. D6
        add     rsi, qword [rcx]                        ; 1AA0 _ 48: 03. 31
        imul    rsi, qword [rbp-20H]                    ; 1AA3 _ 48: 0F AF. 75, E0
        mov     rax, rsi                                ; 1AA8 _ 48: 89. F0
        cqo                                             ; 1AAB _ 48: 99
        idiv    qword [rcx]                             ; 1AAD _ 48: F7. 39
        mov     rcx, qword [rbp-28H]                    ; 1AB0 _ 48: 8B. 4D, D8
        mov     rsi, qword [rcx]                        ; 1AB4 _ 48: 8B. 31
        mov     rdi, qword [rbp-8H]                     ; 1AB7 _ 48: 8B. 7D, F8
        shl     rdi, 3                                  ; 1ABB _ 48: C1. E7, 03
        add     rsi, rdi                                ; 1ABF _ 48: 01. FE
        mov     rsi, qword [rsi]                        ; 1AC2 _ 48: 8B. 36
        mov     rdi, qword [rbp-10H]                    ; 1AC5 _ 48: 8B. 7D, F0
        shl     rdi, 3                                  ; 1AC9 _ 48: C1. E7, 03
        add     rsi, rdi                                ; 1ACD _ 48: 01. FE
        mov     qword [rsi], rdx                        ; 1AD0 _ 48: 89. 16
        mov     rax, qword [rbp-10H]                    ; 1AD3 _ 48: 8B. 45, F0
        add     rax, 1                                  ; 1AD7 _ 48: 83. C0, 01
        mov     qword [rbp-10H], rax                    ; 1ADB _ 48: 89. 45, F0
        jmp     ?_144                                   ; 1ADF _ E9, FFFFFF38

?_147:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_148                                   ; 1AE4 _ E9, 00000000

?_148:  mov     rax, qword [rbp-8H]                     ; 1AE9 _ 48: 8B. 45, F8
        add     rax, 1                                  ; 1AED _ 48: 83. C0, 01
        mov     qword [rbp-8H], rax                     ; 1AF1 _ 48: 89. 45, F8
        jmp     ?_137                                   ; 1AF5 _ E9, FFFFFE51
; _Calculate_p End of function

?_149:  ; Local function
        add     rsp, 48                                 ; 1AFA _ 48: 83. C4, 30
        pop     rbp                                     ; 1AFE _ 5D
        ret                                             ; 1AFF _ C3

_Euler: ; Function begin
        push    rbp                                     ; 1B00 _ 55
        mov     rbp, rsp                                ; 1B01 _ 48: 89. E5
        mov     rax, qword [rel _q_]                    ; 1B04 _ 48: 8B. 05, 00000000(GOT r)
        mov     rcx, qword [rel _tot_]                  ; 1B0B _ 48: 8B. 0D, 00000000(GOT r)
        mov     qword [rbp-8H], rdi                     ; 1B12 _ 48: 89. 7D, F8
        mov     rdi, qword [rbp-8H]                     ; 1B16 _ 48: 8B. 7D, F8
        mov     qword [rbp-10H], rdi                    ; 1B1A _ 48: 89. 7D, F0
        mov     qword [rcx], 0                          ; 1B1E _ 48: C7. 01, 00000000
        mov     rax, qword [rax]                        ; 1B25 _ 48: 8B. 00
        mov     rcx, qword [rbp-10H]                    ; 1B28 _ 48: 8B. 4D, F0
        shl     rcx, 3                                  ; 1B2C _ 48: C1. E1, 03
        add     rax, rcx                                ; 1B30 _ 48: 01. C8
        mov     rax, qword [rax]                        ; 1B33 _ 48: 8B. 00
        mov     qword [rax+8H], 1                       ; 1B36 _ 48: C7. 40, 08, 00000001
        mov     qword [rbp-18H], 0                      ; 1B3E _ 48: C7. 45, E8, 00000000
?_150:  cmp     qword [rbp-18H], 100001                 ; 1B46 _ 48: 81. 7D, E8, 000186A1
; Note: Immediate operand could be made smaller by sign extension
        jge     ?_151                                   ; 1B4E _ 0F 8D, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_152                                   ; 1B54 _ E9, 00000005

?_151:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_153                                   ; 1B59 _ E9, 0000002D

?_152:  mov     rax, qword [rel _v_]                    ; 1B5E _ 48: 8B. 05, 00000000(GOT r)
        mov     rax, qword [rax]                        ; 1B65 _ 48: 8B. 00
        mov     rcx, qword [rbp-18H]                    ; 1B68 _ 48: 8B. 4D, E8
        shl     rcx, 3                                  ; 1B6C _ 48: C1. E1, 03
        add     rax, rcx                                ; 1B70 _ 48: 01. C8
        mov     qword [rax], 0                          ; 1B73 _ 48: C7. 00, 00000000
        mov     rax, qword [rbp-18H]                    ; 1B7A _ 48: 8B. 45, E8
        add     rax, 1                                  ; 1B7E _ 48: 83. C0, 01
        mov     qword [rbp-18H], rax                    ; 1B82 _ 48: 89. 45, E8
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_150                                   ; 1B86 _ E9, FFFFFFBB
; _Euler End of function

?_153:  ; Local function
        mov     qword [rbp-18H], 2                      ; 1B8B _ 48: C7. 45, E8, 00000002
?_154:  mov     rax, qword [rel _M_]                    ; 1B93 _ 48: 8B. 05, 00000000(GOT r)
        mov     rcx, qword [rbp-18H]                    ; 1B9A _ 48: 8B. 4D, E8
        cmp     rcx, qword [rax]                        ; 1B9E _ 48: 3B. 08
; Note: Immediate operand could be made smaller by sign extension
        jg      ?_155                                   ; 1BA1 _ 0F 8F, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_156                                   ; 1BA7 _ E9, 00000005

?_155:  jmp     ?_172                                   ; 1BAC _ E9, 00000340

?_156:  mov     rax, qword [rel _v_]                    ; 1BB1 _ 48: 8B. 05, 00000000(GOT r)
        mov     rax, qword [rax]                        ; 1BB8 _ 48: 8B. 00
        mov     rcx, qword [rbp-18H]                    ; 1BBB _ 48: 8B. 4D, E8
        shl     rcx, 3                                  ; 1BBF _ 48: C1. E1, 03
        add     rax, rcx                                ; 1BC3 _ 48: 01. C8
        cmp     qword [rax], 0                          ; 1BC6 _ 48: 83. 38, 00
; Note: Immediate operand could be made smaller by sign extension
        jne     ?_157                                   ; 1BCA _ 0F 85, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_158                                   ; 1BD0 _ E9, 00000005

?_157:  jmp     ?_159                                   ; 1BD5 _ E9, 00000096

?_158:  mov     rax, qword [rel _q_]                    ; 1BDA _ 48: 8B. 05, 00000000(GOT r)
        mov     rcx, qword [rel _Mod_]                  ; 1BE1 _ 48: 8B. 0D, 00000000(GOT r)
        mov     rdx, qword [rel _ksm_]                  ; 1BE8 _ 48: 8B. 15, 00000000(GOT r)
        mov     rsi, qword [rel _tot_]                  ; 1BEF _ 48: 8B. 35, 00000000(GOT r)
        mov     rdi, qword [rel _prime_]                ; 1BF6 _ 48: 8B. 3D, 00000000(GOT r)
        mov     r8, qword [rsi]                         ; 1BFD _ 4C: 8B. 06
        add     r8, 1                                   ; 1C00 _ 49: 83. C0, 01
        mov     qword [rsi], r8                         ; 1C04 _ 4C: 89. 06
        mov     r8, qword [rbp-18H]                     ; 1C07 _ 4C: 8B. 45, E8
        mov     rdi, qword [rdi]                        ; 1C0B _ 48: 8B. 3F
        mov     rsi, qword [rsi]                        ; 1C0E _ 48: 8B. 36
        shl     rsi, 3                                  ; 1C11 _ 48: C1. E6, 03
        add     rdi, rsi                                ; 1C15 _ 48: 01. F7
        mov     qword [rdi], r8                         ; 1C18 _ 4C: 89. 07
        mov     rdx, qword [rdx]                        ; 1C1B _ 48: 8B. 12
        mov     rsi, qword [rbp-18H]                    ; 1C1E _ 48: 8B. 75, E8
        shl     rsi, 3                                  ; 1C22 _ 48: C1. E6, 03
        add     rdx, rsi                                ; 1C26 _ 48: 01. F2
        mov     rdx, qword [rdx]                        ; 1C29 _ 48: 8B. 12
        mov     rsi, qword [rbp-10H]                    ; 1C2C _ 48: 8B. 75, F0
        shl     rsi, 3                                  ; 1C30 _ 48: C1. E6, 03
        add     rdx, rsi                                ; 1C34 _ 48: 01. F2
        mov     rdx, qword [rdx]                        ; 1C37 _ 48: 8B. 12
        add     rdx, qword [rcx]                        ; 1C3A _ 48: 03. 11
        sub     rdx, 1                                  ; 1C3D _ 48: 83. EA, 01
        mov     qword [rbp-30H], rax                    ; 1C41 _ 48: 89. 45, D0
        mov     rax, rdx                                ; 1C45 _ 48: 89. D0
        cqo                                             ; 1C48 _ 48: 99
        idiv    qword [rcx]                             ; 1C4A _ 48: F7. 39
        mov     rcx, qword [rbp-30H]                    ; 1C4D _ 48: 8B. 4D, D0
        mov     rsi, qword [rcx]                        ; 1C51 _ 48: 8B. 31
        mov     rdi, qword [rbp-10H]                    ; 1C54 _ 48: 8B. 7D, F0
        shl     rdi, 3                                  ; 1C58 _ 48: C1. E7, 03
        add     rsi, rdi                                ; 1C5C _ 48: 01. FE
        mov     rsi, qword [rsi]                        ; 1C5F _ 48: 8B. 36
        mov     rdi, qword [rbp-18H]                    ; 1C62 _ 48: 8B. 7D, E8
        shl     rdi, 3                                  ; 1C66 _ 48: C1. E7, 03
        add     rsi, rdi                                ; 1C6A _ 48: 01. FE
        mov     qword [rsi], rdx                        ; 1C6D _ 48: 89. 16
?_159:  mov     qword [rbp-20H], 1                      ; 1C70 _ 48: C7. 45, E0, 00000001
?_160:  mov     rax, qword [rel _tot_]                  ; 1C78 _ 48: 8B. 05, 00000000(GOT r)
        mov     rcx, qword [rbp-20H]                    ; 1C7F _ 48: 8B. 4D, E0
        cmp     rcx, qword [rax]                        ; 1C83 _ 48: 3B. 08
        setle   dl                                      ; 1C86 _ 0F 9E. C2
        and     dl, 01H                                 ; 1C89 _ 80. E2, 01
        movzx   esi, dl                                 ; 1C8C _ 0F B6. F2
        movsxd  rax, esi                                ; 1C8F _ 48: 63. C6
        mov     qword [rbp-28H], rax                    ; 1C92 _ 48: 89. 45, D8
        cmp     qword [rbp-28H], 0                      ; 1C96 _ 48: 83. 7D, D8, 00
; Note: Immediate operand could be made smaller by sign extension
        je      ?_161                                   ; 1C9B _ 0F 84, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_162                                   ; 1CA1 _ E9, 00000005

?_161:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_163                                   ; 1CA6 _ E9, 0000003A

?_162:  mov     rax, qword [rel _M_]                    ; 1CAB _ 48: 8B. 05, 00000000(GOT r)
        mov     rcx, qword [rel _prime_]                ; 1CB2 _ 48: 8B. 0D, 00000000(GOT r)
        mov     rcx, qword [rcx]                        ; 1CB9 _ 48: 8B. 09
        mov     rdx, qword [rbp-20H]                    ; 1CBC _ 48: 8B. 55, E0
        shl     rdx, 3                                  ; 1CC0 _ 48: C1. E2, 03
        add     rcx, rdx                                ; 1CC4 _ 48: 01. D1
        mov     rcx, qword [rcx]                        ; 1CC7 _ 48: 8B. 09
        imul    rcx, qword [rbp-18H]                    ; 1CCA _ 48: 0F AF. 4D, E8
        cmp     rcx, qword [rax]                        ; 1CCF _ 48: 3B. 08
        setle   sil                                     ; 1CD2 _ 40: 0F 9E. C6
        and     sil, 01H                                ; 1CD6 _ 40: 80. E6, 01
        movzx   edi, sil                                ; 1CDA _ 40: 0F B6. FE
        movsxd  rax, edi                                ; 1CDE _ 48: 63. C7
        mov     qword [rbp-28H], rax                    ; 1CE1 _ 48: 89. 45, D8
?_163:  cmp     qword [rbp-28H], 0                      ; 1CE5 _ 48: 83. 7D, D8, 00
; Note: Immediate operand could be made smaller by sign extension
        je      ?_164                                   ; 1CEA _ 0F 84, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_165                                   ; 1CF0 _ E9, 00000005

?_164:  jmp     ?_170                                   ; 1CF5 _ E9, 000001E1

?_165:  mov     rax, qword [rel _prime_]                ; 1CFA _ 48: 8B. 05, 00000000(GOT r)
        mov     rcx, qword [rel _v_]                    ; 1D01 _ 48: 8B. 0D, 00000000(GOT r)
        mov     rcx, qword [rcx]                        ; 1D08 _ 48: 8B. 09
        mov     rdx, qword [rax]                        ; 1D0B _ 48: 8B. 10
        mov     rsi, qword [rbp-20H]                    ; 1D0E _ 48: 8B. 75, E0
        shl     rsi, 3                                  ; 1D12 _ 48: C1. E6, 03
        add     rdx, rsi                                ; 1D16 _ 48: 01. F2
        mov     rdx, qword [rdx]                        ; 1D19 _ 48: 8B. 12
        imul    rdx, qword [rbp-18H]                    ; 1D1C _ 48: 0F AF. 55, E8
        shl     rdx, 3                                  ; 1D21 _ 48: C1. E2, 03
        add     rcx, rdx                                ; 1D25 _ 48: 01. D1
        mov     qword [rcx], 1                          ; 1D28 _ 48: C7. 01, 00000001
        mov     rcx, qword [rbp-18H]                    ; 1D2F _ 48: 8B. 4D, E8
        mov     rax, qword [rax]                        ; 1D33 _ 48: 8B. 00
        mov     rdx, qword [rbp-20H]                    ; 1D36 _ 48: 8B. 55, E0
        shl     rdx, 3                                  ; 1D3A _ 48: C1. E2, 03
        add     rax, rdx                                ; 1D3E _ 48: 01. D0
        mov     qword [rbp-38H], rax                    ; 1D41 _ 48: 89. 45, C8
        mov     rax, rcx                                ; 1D45 _ 48: 89. C8
        cqo                                             ; 1D48 _ 48: 99
        mov     rcx, qword [rbp-38H]                    ; 1D4A _ 48: 8B. 4D, C8
        idiv    qword [rcx]                             ; 1D4E _ 48: F7. 39
        cmp     rdx, 0                                  ; 1D51 _ 48: 83. FA, 00
; Note: Immediate operand could be made smaller by sign extension
        jne     ?_166                                   ; 1D55 _ 0F 85, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_167                                   ; 1D5B _ E9, 00000005

?_166:  jmp     ?_168                                   ; 1D60 _ E9, 000000B6

?_167:  mov     rax, qword [rel _prime_]                ; 1D65 _ 48: 8B. 05, 00000000(GOT r)
        mov     rcx, qword [rel _q_]                    ; 1D6C _ 48: 8B. 0D, 00000000(GOT r)
        mov     rdx, qword [rel _Mod_]                  ; 1D73 _ 48: 8B. 15, 00000000(GOT r)
        mov     rsi, qword [rel _ksm_]                  ; 1D7A _ 48: 8B. 35, 00000000(GOT r)
        mov     rdi, qword [rcx]                        ; 1D81 _ 48: 8B. 39
        mov     r8, qword [rbp-10H]                     ; 1D84 _ 4C: 8B. 45, F0
        shl     r8, 3                                   ; 1D88 _ 49: C1. E0, 03
        add     rdi, r8                                 ; 1D8C _ 4C: 01. C7
        mov     rdi, qword [rdi]                        ; 1D8F _ 48: 8B. 3F
        mov     r8, qword [rbp-18H]                     ; 1D92 _ 4C: 8B. 45, E8
        shl     r8, 3                                   ; 1D96 _ 49: C1. E0, 03
        add     rdi, r8                                 ; 1D9A _ 4C: 01. C7
        mov     rdi, qword [rdi]                        ; 1D9D _ 48: 8B. 3F
        mov     rsi, qword [rsi]                        ; 1DA0 _ 48: 8B. 36
        mov     r8, qword [rax]                         ; 1DA3 _ 4C: 8B. 00
        mov     r9, qword [rbp-20H]                     ; 1DA6 _ 4C: 8B. 4D, E0
        shl     r9, 3                                   ; 1DAA _ 49: C1. E1, 03
        add     r8, r9                                  ; 1DAE _ 4D: 01. C8
        mov     r8, qword [r8]                          ; 1DB1 _ 4D: 8B. 00
        shl     r8, 3                                   ; 1DB4 _ 49: C1. E0, 03
        add     rsi, r8                                 ; 1DB8 _ 4C: 01. C6
        mov     rsi, qword [rsi]                        ; 1DBB _ 48: 8B. 36
        mov     r8, qword [rbp-10H]                     ; 1DBE _ 4C: 8B. 45, F0
        shl     r8, 3                                   ; 1DC2 _ 49: C1. E0, 03
        add     rsi, r8                                 ; 1DC6 _ 4C: 01. C6
        imul    rdi, qword [rsi]                        ; 1DC9 _ 48: 0F AF. 3E
        mov     qword [rbp-40H], rax                    ; 1DCD _ 48: 89. 45, C0
        mov     rax, rdi                                ; 1DD1 _ 48: 89. F8
        mov     qword [rbp-48H], rdx                    ; 1DD4 _ 48: 89. 55, B8
        cqo                                             ; 1DD8 _ 48: 99
        mov     rsi, qword [rbp-48H]                    ; 1DDA _ 48: 8B. 75, B8
        idiv    qword [rsi]                             ; 1DDE _ 48: F7. 3E
        mov     rcx, qword [rcx]                        ; 1DE1 _ 48: 8B. 09
        mov     rdi, qword [rbp-10H]                    ; 1DE4 _ 48: 8B. 7D, F0
        shl     rdi, 3                                  ; 1DE8 _ 48: C1. E7, 03
        add     rcx, rdi                                ; 1DEC _ 48: 01. F9
        mov     rcx, qword [rcx]                        ; 1DEF _ 48: 8B. 09
        mov     rdi, qword [rbp-18H]                    ; 1DF2 _ 48: 8B. 7D, E8
        mov     r8, qword [rbp-40H]                     ; 1DF6 _ 4C: 8B. 45, C0
        mov     r9, qword [r8]                          ; 1DFA _ 4D: 8B. 08
        mov     r10, qword [rbp-20H]                    ; 1DFD _ 4C: 8B. 55, E0
        shl     r10, 3                                  ; 1E01 _ 49: C1. E2, 03
        add     r9, r10                                 ; 1E05 _ 4D: 01. D1
        imul    rdi, qword [r9]                         ; 1E08 _ 49: 0F AF. 39
        shl     rdi, 3                                  ; 1E0C _ 48: C1. E7, 03
        add     rcx, rdi                                ; 1E10 _ 48: 01. F9
        mov     qword [rcx], rdx                        ; 1E13 _ 48: 89. 11
        jmp     ?_170                                   ; 1E16 _ E9, 000000C0

?_168:  mov     rax, qword [rel _prime_]                ; 1E1B _ 48: 8B. 05, 00000000(GOT r)
        mov     rcx, qword [rel _q_]                    ; 1E22 _ 48: 8B. 0D, 00000000(GOT r)
        mov     rdx, qword [rel _Mod_]                  ; 1E29 _ 48: 8B. 15, 00000000(GOT r)
        mov     rsi, qword [rcx]                        ; 1E30 _ 48: 8B. 31
        mov     rdi, qword [rbp-10H]                    ; 1E33 _ 48: 8B. 7D, F0
        shl     rdi, 3                                  ; 1E37 _ 48: C1. E7, 03
        add     rsi, rdi                                ; 1E3B _ 48: 01. FE
        mov     rsi, qword [rsi]                        ; 1E3E _ 48: 8B. 36
        mov     rdi, qword [rbp-18H]                    ; 1E41 _ 48: 8B. 7D, E8
        shl     rdi, 3                                  ; 1E45 _ 48: C1. E7, 03
        add     rsi, rdi                                ; 1E49 _ 48: 01. FE
        mov     rsi, qword [rsi]                        ; 1E4C _ 48: 8B. 36
        mov     rdi, qword [rcx]                        ; 1E4F _ 48: 8B. 39
        mov     r8, qword [rbp-10H]                     ; 1E52 _ 4C: 8B. 45, F0
        shl     r8, 3                                   ; 1E56 _ 49: C1. E0, 03
        add     rdi, r8                                 ; 1E5A _ 4C: 01. C7
        mov     rdi, qword [rdi]                        ; 1E5D _ 48: 8B. 3F
        mov     r8, qword [rax]                         ; 1E60 _ 4C: 8B. 00
        mov     r9, qword [rbp-20H]                     ; 1E63 _ 4C: 8B. 4D, E0
        shl     r9, 3                                   ; 1E67 _ 49: C1. E1, 03
        add     r8, r9                                  ; 1E6B _ 4D: 01. C8
        mov     r8, qword [r8]                          ; 1E6E _ 4D: 8B. 00
        shl     r8, 3                                   ; 1E71 _ 49: C1. E0, 03
        add     rdi, r8                                 ; 1E75 _ 4C: 01. C7
        imul    rsi, qword [rdi]                        ; 1E78 _ 48: 0F AF. 37
        mov     qword [rbp-50H], rax                    ; 1E7C _ 48: 89. 45, B0
        mov     rax, rsi                                ; 1E80 _ 48: 89. F0
        mov     qword [rbp-58H], rdx                    ; 1E83 _ 48: 89. 55, A8
        cqo                                             ; 1E87 _ 48: 99
        mov     rsi, qword [rbp-58H]                    ; 1E89 _ 48: 8B. 75, A8
        idiv    qword [rsi]                             ; 1E8D _ 48: F7. 3E
        mov     rcx, qword [rcx]                        ; 1E90 _ 48: 8B. 09
        mov     rdi, qword [rbp-10H]                    ; 1E93 _ 48: 8B. 7D, F0
        shl     rdi, 3                                  ; 1E97 _ 48: C1. E7, 03
        add     rcx, rdi                                ; 1E9B _ 48: 01. F9
        mov     rcx, qword [rcx]                        ; 1E9E _ 48: 8B. 09
        mov     rdi, qword [rbp-18H]                    ; 1EA1 _ 48: 8B. 7D, E8
        mov     r8, qword [rbp-50H]                     ; 1EA5 _ 4C: 8B. 45, B0
        mov     r9, qword [r8]                          ; 1EA9 _ 4D: 8B. 08
        mov     r10, qword [rbp-20H]                    ; 1EAC _ 4C: 8B. 55, E0
        shl     r10, 3                                  ; 1EB0 _ 49: C1. E2, 03
        add     r9, r10                                 ; 1EB4 _ 4D: 01. D1
        imul    rdi, qword [r9]                         ; 1EB7 _ 49: 0F AF. 39
        shl     rdi, 3                                  ; 1EBB _ 48: C1. E7, 03
        add     rcx, rdi                                ; 1EBF _ 48: 01. F9
        mov     qword [rcx], rdx                        ; 1EC2 _ 48: 89. 11
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_169                                   ; 1EC5 _ E9, 00000000

?_169:  mov     rax, qword [rbp-20H]                    ; 1ECA _ 48: 8B. 45, E0
        add     rax, 1                                  ; 1ECE _ 48: 83. C0, 01
        mov     qword [rbp-20H], rax                    ; 1ED2 _ 48: 89. 45, E0
        jmp     ?_160                                   ; 1ED6 _ E9, FFFFFD9D

?_170:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_171                                   ; 1EDB _ E9, 00000000

?_171:  mov     rax, qword [rbp-18H]                    ; 1EE0 _ 48: 8B. 45, E8
        add     rax, 1                                  ; 1EE4 _ 48: 83. C0, 01
        mov     qword [rbp-18H], rax                    ; 1EE8 _ 48: 89. 45, E8
        jmp     ?_154                                   ; 1EEC _ E9, FFFFFCA2

?_172:  ; Local function
        pop     rbp                                     ; 1EF1 _ 5D
        ret                                             ; 1EF2 _ C3

; Filling space: 0DH
; Filler type: Multi-byte NOP
;       db 66H, 66H, 66H, 66H, 2EH, 0FH, 1FH, 84H
;       db 00H, 00H, 00H, 00H, 00H

ALIGN   16

_Calculate_q:; Function begin
        push    rbp                                     ; 1F00 _ 55
        mov     rbp, rsp                                ; 1F01 _ 48: 89. E5
        sub     rsp, 16                                 ; 1F04 _ 48: 83. EC, 10
        mov     qword [rbp-8H], 0                       ; 1F08 _ 48: C7. 45, F8, 00000000
?_173:  mov     rax, qword [rel _C_]                    ; 1F10 _ 48: 8B. 05, 00000000(GOT r)
        mov     rcx, qword [rbp-8H]                     ; 1F17 _ 48: 8B. 4D, F8
        mov     rax, qword [rax]                        ; 1F1B _ 48: 8B. 00
        sub     rax, 2                                  ; 1F1E _ 48: 83. E8, 02
        cmp     rcx, rax                                ; 1F22 _ 48: 39. C1
; Note: Immediate operand could be made smaller by sign extension
        jg      ?_174                                   ; 1F25 _ 0F 8F, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_175                                   ; 1F2B _ E9, 00000005

?_174:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_176                                   ; 1F30 _ E9, 0000001A

?_175:  mov     rdi, qword [rbp-8H]                     ; 1F35 _ 48: 8B. 7D, F8
        call    _Euler                                  ; 1F39 _ E8, 00000000(rel)
        mov     rax, qword [rbp-8H]                     ; 1F3E _ 48: 8B. 45, F8
        add     rax, 1                                  ; 1F42 _ 48: 83. C0, 01
        mov     qword [rbp-8H], rax                     ; 1F46 _ 48: 89. 45, F8
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_173                                   ; 1F4A _ E9, FFFFFFC1
; _Calculate_q End of function

?_176:  ; Local function
        add     rsp, 16                                 ; 1F4F _ 48: 83. C4, 10
        pop     rbp                                     ; 1F53 _ 5D
        ret                                             ; 1F54 _ C3

; Filling space: 0BH
; Filler type: Multi-byte NOP
;       db 66H, 66H, 2EH, 0FH, 1FH, 84H, 00H, 00H
;       db 00H, 00H, 00H

ALIGN   16

_Calculate_Ksm:; Function begin
        push    rbp                                     ; 1F60 _ 55
        mov     rbp, rsp                                ; 1F61 _ 48: 89. E5
        mov     qword [rbp-8H], 1                       ; 1F64 _ 48: C7. 45, F8, 00000001
?_177:  mov     rax, qword [rel _M_]                    ; 1F6C _ 48: 8B. 05, 00000000(GOT r)
        mov     rcx, qword [rbp-8H]                     ; 1F73 _ 48: 8B. 4D, F8
        cmp     rcx, qword [rax]                        ; 1F77 _ 48: 3B. 08
; Note: Immediate operand could be made smaller by sign extension
        jg      ?_178                                   ; 1F7A _ 0F 8F, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_179                                   ; 1F80 _ E9, 00000005

?_178:  jmp     ?_185                                   ; 1F85 _ E9, 000000D8

?_179:  mov     rax, qword [rel _ksm_]                  ; 1F8A _ 48: 8B. 05, 00000000(GOT r)
        mov     rax, qword [rax]                        ; 1F91 _ 48: 8B. 00
        mov     rcx, qword [rbp-8H]                     ; 1F94 _ 48: 8B. 4D, F8
        shl     rcx, 3                                  ; 1F98 _ 48: C1. E1, 03
        add     rax, rcx                                ; 1F9C _ 48: 01. C8
        mov     rax, qword [rax]                        ; 1F9F _ 48: 8B. 00
        mov     qword [rax], 1                          ; 1FA2 _ 48: C7. 00, 00000001
        mov     qword [rbp-10H], 1                      ; 1FA9 _ 48: C7. 45, F0, 00000001
?_180:  mov     rax, qword [rel _C_]                    ; 1FB1 _ 48: 8B. 05, 00000000(GOT r)
        mov     rcx, qword [rbp-10H]                    ; 1FB8 _ 48: 8B. 4D, F0
        mov     rax, qword [rax]                        ; 1FBC _ 48: 8B. 00
        sub     rax, 2                                  ; 1FBF _ 48: 83. E8, 02
        cmp     rcx, rax                                ; 1FC3 _ 48: 39. C1
; Note: Immediate operand could be made smaller by sign extension
        jg      ?_181                                   ; 1FC6 _ 0F 8F, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_182                                   ; 1FCC _ E9, 00000005

?_181:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_183                                   ; 1FD1 _ E9, 00000076

?_182:  mov     rax, qword [rel _ksm_]                  ; 1FD6 _ 48: 8B. 05, 00000000(GOT r)
        mov     rcx, qword [rel _Mod_]                  ; 1FDD _ 48: 8B. 0D, 00000000(GOT r)
        mov     rdx, qword [rax]                        ; 1FE4 _ 48: 8B. 10
        mov     rsi, qword [rbp-8H]                     ; 1FE7 _ 48: 8B. 75, F8
        shl     rsi, 3                                  ; 1FEB _ 48: C1. E6, 03
        add     rdx, rsi                                ; 1FEF _ 48: 01. F2
        mov     rdx, qword [rdx]                        ; 1FF2 _ 48: 8B. 12
        mov     rsi, qword [rbp-10H]                    ; 1FF5 _ 48: 8B. 75, F0
        sub     rsi, 1                                  ; 1FF9 _ 48: 83. EE, 01
        shl     rsi, 3                                  ; 1FFD _ 48: C1. E6, 03
        add     rdx, rsi                                ; 2001 _ 48: 01. F2
        mov     rdx, qword [rdx]                        ; 2004 _ 48: 8B. 12
        imul    rdx, qword [rbp-8H]                     ; 2007 _ 48: 0F AF. 55, F8
        mov     qword [rbp-18H], rax                    ; 200C _ 48: 89. 45, E8
        mov     rax, rdx                                ; 2010 _ 48: 89. D0
        cqo                                             ; 2013 _ 48: 99
        idiv    qword [rcx]                             ; 2015 _ 48: F7. 39
        mov     rcx, qword [rbp-18H]                    ; 2018 _ 48: 8B. 4D, E8
        mov     rsi, qword [rcx]                        ; 201C _ 48: 8B. 31
        mov     rdi, qword [rbp-8H]                     ; 201F _ 48: 8B. 7D, F8
        shl     rdi, 3                                  ; 2023 _ 48: C1. E7, 03
        add     rsi, rdi                                ; 2027 _ 48: 01. FE
        mov     rsi, qword [rsi]                        ; 202A _ 48: 8B. 36
        mov     rdi, qword [rbp-10H]                    ; 202D _ 48: 8B. 7D, F0
        shl     rdi, 3                                  ; 2031 _ 48: C1. E7, 03
        add     rsi, rdi                                ; 2035 _ 48: 01. FE
        mov     qword [rsi], rdx                        ; 2038 _ 48: 89. 16
        mov     rax, qword [rbp-10H]                    ; 203B _ 48: 8B. 45, F0
        add     rax, 1                                  ; 203F _ 48: 83. C0, 01
        mov     qword [rbp-10H], rax                    ; 2043 _ 48: 89. 45, F0
        jmp     ?_180                                   ; 2047 _ E9, FFFFFF65

?_183:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_184                                   ; 204C _ E9, 00000000

?_184:  mov     rax, qword [rbp-8H]                     ; 2051 _ 48: 8B. 45, F8
        add     rax, 1                                  ; 2055 _ 48: 83. C0, 01
        mov     qword [rbp-8H], rax                     ; 2059 _ 48: 89. 45, F8
        jmp     ?_177                                   ; 205D _ E9, FFFFFF0A
; _Calculate_Ksm End of function

?_185:  ; Local function
        pop     rbp                                     ; 2062 _ 5D
        ret                                             ; 2063 _ C3

; Filling space: 0CH
; Filler type: Multi-byte NOP
;       db 66H, 66H, 66H, 2EH, 0FH, 1FH, 84H, 00H
;       db 00H, 00H, 00H, 00H

ALIGN   16

_Calculate_G:; Function begin
        push    rbp                                     ; 2070 _ 55
        mov     rbp, rsp                                ; 2071 _ 48: 89. E5
        sub     rsp, 48                                 ; 2074 _ 48: 83. EC, 30
        call    _Calculate_Ksm                          ; 2078 _ E8, 00000000(rel)
        call    _Calculate_p                            ; 207D _ E8, 00000000(rel)
        call    _Calculate_q                            ; 2082 _ E8, 00000000(rel)
        mov     qword [rbp-8H], 1                       ; 2087 _ 48: C7. 45, F8, 00000001
?_186:  mov     rax, qword [rel _M_]                    ; 208F _ 48: 8B. 05, 00000000(GOT r)
        mov     rcx, qword [rbp-8H]                     ; 2096 _ 48: 8B. 4D, F8
        cmp     rcx, qword [rax]                        ; 209A _ 48: 3B. 08
; Note: Immediate operand could be made smaller by sign extension
        jg      ?_187                                   ; 209D _ 0F 8F, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_188                                   ; 20A3 _ E9, 00000005

?_187:  jmp     ?_203                                   ; 20A8 _ E9, 000001F8

?_188:  mov     qword [rbp-10H], 2                      ; 20AD _ 48: C7. 45, F0, 00000002
?_189:  mov     rax, qword [rel _C_]                    ; 20B5 _ 48: 8B. 05, 00000000(GOT r)
        mov     rcx, qword [rbp-10H]                    ; 20BC _ 48: 8B. 4D, F0
        cmp     rcx, qword [rax]                        ; 20C0 _ 48: 3B. 08
; Note: Immediate operand could be made smaller by sign extension
        jg      ?_190                                   ; 20C3 _ 0F 8F, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_191                                   ; 20C9 _ E9, 00000005

?_190:  jmp     ?_201                                   ; 20CE _ E9, 000001BC

?_191:  mov     qword [rbp-18H], 0                      ; 20D3 _ 48: C7. 45, E8, 00000000
?_192:  mov     rax, qword [rbp-18H]                    ; 20DB _ 48: 8B. 45, E8
        mov     rcx, qword [rbp-10H]                    ; 20DF _ 48: 8B. 4D, F0
        sub     rcx, 2                                  ; 20E3 _ 48: 83. E9, 02
        cmp     rax, rcx                                ; 20E7 _ 48: 39. C8
; Note: Immediate operand could be made smaller by sign extension
        jg      ?_193                                   ; 20EA _ 0F 8F, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_194                                   ; 20F0 _ E9, 00000005

?_193:  jmp     ?_195                                   ; 20F5 _ E9, 000000C7

?_194:  mov     rax, qword [rel _g_]                    ; 20FA _ 48: 8B. 05, 00000000(GOT r)
        mov     rcx, qword [rel _Mod_]                  ; 2101 _ 48: 8B. 0D, 00000000(GOT r)
        mov     rdx, qword [rel _q_]                    ; 2108 _ 48: 8B. 15, 00000000(GOT r)
        mov     rsi, qword [rel _p_]                    ; 210F _ 48: 8B. 35, 00000000(GOT r)
        mov     rdi, qword [rax]                        ; 2116 _ 48: 8B. 38
        mov     rdi, qword [rdi]                        ; 2119 _ 48: 8B. 3F
        mov     r8, qword [rbp-8H]                      ; 211C _ 4C: 8B. 45, F8
        shl     r8, 3                                   ; 2120 _ 49: C1. E0, 03
        add     rdi, r8                                 ; 2124 _ 4C: 01. C7
        mov     rdi, qword [rdi]                        ; 2127 _ 48: 8B. 3F
        mov     r8, qword [rbp-10H]                     ; 212A _ 4C: 8B. 45, F0
        shl     r8, 3                                   ; 212E _ 49: C1. E0, 03
        add     rdi, r8                                 ; 2132 _ 4C: 01. C7
        mov     rdi, qword [rdi]                        ; 2135 _ 48: 8B. 3F
        mov     rsi, qword [rsi]                        ; 2138 _ 48: 8B. 36
        mov     r8, qword [rbp-10H]                     ; 213B _ 4C: 8B. 45, F0
        sub     r8, 2                                   ; 213F _ 49: 83. E8, 02
        shl     r8, 3                                   ; 2143 _ 49: C1. E0, 03
        add     rsi, r8                                 ; 2147 _ 4C: 01. C6
        mov     rsi, qword [rsi]                        ; 214A _ 48: 8B. 36
        mov     r8, qword [rbp-18H]                     ; 214D _ 4C: 8B. 45, E8
        shl     r8, 3                                   ; 2151 _ 49: C1. E0, 03
        add     rsi, r8                                 ; 2155 _ 4C: 01. C6
        mov     rsi, qword [rsi]                        ; 2158 _ 48: 8B. 36
        mov     rdx, qword [rdx]                        ; 215B _ 48: 8B. 12
        mov     r8, qword [rbp-18H]                     ; 215E _ 4C: 8B. 45, E8
        shl     r8, 3                                   ; 2162 _ 49: C1. E0, 03
        add     rdx, r8                                 ; 2166 _ 4C: 01. C2
        mov     rdx, qword [rdx]                        ; 2169 _ 48: 8B. 12
        mov     r8, qword [rbp-8H]                      ; 216C _ 4C: 8B. 45, F8
        shl     r8, 3                                   ; 2170 _ 49: C1. E0, 03
        add     rdx, r8                                 ; 2174 _ 4C: 01. C2
        imul    rsi, qword [rdx]                        ; 2177 _ 48: 0F AF. 32
        add     rdi, rsi                                ; 217B _ 48: 01. F7
        mov     qword [rbp-20H], rax                    ; 217E _ 48: 89. 45, E0
        mov     rax, rdi                                ; 2182 _ 48: 89. F8
        cqo                                             ; 2185 _ 48: 99
        idiv    qword [rcx]                             ; 2187 _ 48: F7. 39
        mov     rcx, qword [rbp-20H]                    ; 218A _ 48: 8B. 4D, E0
        mov     rsi, qword [rcx]                        ; 218E _ 48: 8B. 31
        mov     rsi, qword [rsi]                        ; 2191 _ 48: 8B. 36
        mov     rdi, qword [rbp-8H]                     ; 2194 _ 48: 8B. 7D, F8
        shl     rdi, 3                                  ; 2198 _ 48: C1. E7, 03
        add     rsi, rdi                                ; 219C _ 48: 01. FE
        mov     rsi, qword [rsi]                        ; 219F _ 48: 8B. 36
        mov     rdi, qword [rbp-10H]                    ; 21A2 _ 48: 8B. 7D, F0
        shl     rdi, 3                                  ; 21A6 _ 48: C1. E7, 03
        add     rsi, rdi                                ; 21AA _ 48: 01. FE
        mov     qword [rsi], rdx                        ; 21AD _ 48: 89. 16
        mov     rax, qword [rbp-18H]                    ; 21B0 _ 48: 8B. 45, E8
        add     rax, 1                                  ; 21B4 _ 48: 83. C0, 01
        mov     qword [rbp-18H], rax                    ; 21B8 _ 48: 89. 45, E8
        jmp     ?_192                                   ; 21BC _ E9, FFFFFF1A

?_195:  mov     qword [rbp-18H], 1                      ; 21C1 _ 48: C7. 45, E8, 00000001
?_196:  mov     rax, qword [rel _N_]                    ; 21C9 _ 48: 8B. 05, 00000000(GOT r)
        mov     rcx, qword [rbp-18H]                    ; 21D0 _ 48: 8B. 4D, E8
        cmp     rcx, qword [rax]                        ; 21D4 _ 48: 3B. 08
; Note: Immediate operand could be made smaller by sign extension
        jg      ?_197                                   ; 21D7 _ 0F 8F, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_198                                   ; 21DD _ E9, 00000005

?_197:  jmp     ?_199                                   ; 21E2 _ E9, 00000092

?_198:  mov     rax, qword [rel _g_]                    ; 21E7 _ 48: 8B. 05, 00000000(GOT r)
        mov     rcx, qword [rel _Mod_]                  ; 21EE _ 48: 8B. 0D, 00000000(GOT r)
        mov     rdx, qword [rax]                        ; 21F5 _ 48: 8B. 10
        mov     rsi, qword [rbp-18H]                    ; 21F8 _ 48: 8B. 75, E8
        sub     rsi, 1                                  ; 21FC _ 48: 83. EE, 01
        shl     rsi, 3                                  ; 2200 _ 48: C1. E6, 03
        add     rdx, rsi                                ; 2204 _ 48: 01. F2
        mov     rdx, qword [rdx]                        ; 2207 _ 48: 8B. 12
        mov     rsi, qword [rbp-8H]                     ; 220A _ 48: 8B. 75, F8
        shl     rsi, 3                                  ; 220E _ 48: C1. E6, 03
        add     rdx, rsi                                ; 2212 _ 48: 01. F2
        mov     rdx, qword [rdx]                        ; 2215 _ 48: 8B. 12
        mov     rsi, qword [rbp-10H]                    ; 2218 _ 48: 8B. 75, F0
        shl     rsi, 3                                  ; 221C _ 48: C1. E6, 03
        add     rdx, rsi                                ; 2220 _ 48: 01. F2
        mov     rdx, qword [rdx]                        ; 2223 _ 48: 8B. 12
        imul    rdx, qword [rbp-8H]                     ; 2226 _ 48: 0F AF. 55, F8
        mov     qword [rbp-28H], rax                    ; 222B _ 48: 89. 45, D8
        mov     rax, rdx                                ; 222F _ 48: 89. D0
        cqo                                             ; 2232 _ 48: 99
        idiv    qword [rcx]                             ; 2234 _ 48: F7. 39
        mov     rcx, qword [rbp-28H]                    ; 2237 _ 48: 8B. 4D, D8
        mov     rsi, qword [rcx]                        ; 223B _ 48: 8B. 31
        mov     rdi, qword [rbp-18H]                    ; 223E _ 48: 8B. 7D, E8
        shl     rdi, 3                                  ; 2242 _ 48: C1. E7, 03
        add     rsi, rdi                                ; 2246 _ 48: 01. FE
        mov     rsi, qword [rsi]                        ; 2249 _ 48: 8B. 36
        mov     rdi, qword [rbp-8H]                     ; 224C _ 48: 8B. 7D, F8
        shl     rdi, 3                                  ; 2250 _ 48: C1. E7, 03
        add     rsi, rdi                                ; 2254 _ 48: 01. FE
        mov     rsi, qword [rsi]                        ; 2257 _ 48: 8B. 36
        mov     rdi, qword [rbp-10H]                    ; 225A _ 48: 8B. 7D, F0
        shl     rdi, 3                                  ; 225E _ 48: C1. E7, 03
        add     rsi, rdi                                ; 2262 _ 48: 01. FE
        mov     qword [rsi], rdx                        ; 2265 _ 48: 89. 16
        mov     rax, qword [rbp-18H]                    ; 2268 _ 48: 8B. 45, E8
        add     rax, 1                                  ; 226C _ 48: 83. C0, 01
        mov     qword [rbp-18H], rax                    ; 2270 _ 48: 89. 45, E8
        jmp     ?_196                                   ; 2274 _ E9, FFFFFF50

?_199:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_200                                   ; 2279 _ E9, 00000000

?_200:  mov     rax, qword [rbp-10H]                    ; 227E _ 48: 8B. 45, F0
        add     rax, 1                                  ; 2282 _ 48: 83. C0, 01
        mov     qword [rbp-10H], rax                    ; 2286 _ 48: 89. 45, F0
        jmp     ?_189                                   ; 228A _ E9, FFFFFE26

?_201:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_202                                   ; 228F _ E9, 00000000

?_202:  mov     rax, qword [rbp-8H]                     ; 2294 _ 48: 8B. 45, F8
        add     rax, 1                                  ; 2298 _ 48: 83. C0, 01
        mov     qword [rbp-8H], rax                     ; 229C _ 48: 89. 45, F8
        jmp     ?_186                                   ; 22A0 _ E9, FFFFFDEA
; _Calculate_G End of function

?_203:  ; Local function
        mov     qword [rbp-18H], 0                      ; 22A5 _ 48: C7. 45, E8, 00000000
?_204:  mov     rax, qword [rel _N_]                    ; 22AD _ 48: 8B. 05, 00000000(GOT r)
        mov     rcx, qword [rbp-18H]                    ; 22B4 _ 48: 8B. 4D, E8
        cmp     rcx, qword [rax]                        ; 22B8 _ 48: 3B. 08
; Note: Immediate operand could be made smaller by sign extension
        jg      ?_205                                   ; 22BB _ 0F 8F, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_206                                   ; 22C1 _ E9, 00000005

?_205:  jmp     ?_221                                   ; 22C6 _ E9, 000001D9

?_206:  mov     qword [rbp-8H], 2                       ; 22CB _ 48: C7. 45, F8, 00000002
?_207:  mov     rax, qword [rel _C_]                    ; 22D3 _ 48: 8B. 05, 00000000(GOT r)
        mov     rcx, qword [rbp-8H]                     ; 22DA _ 48: 8B. 4D, F8
        cmp     rcx, qword [rax]                        ; 22DE _ 48: 3B. 08
; Note: Immediate operand could be made smaller by sign extension
        jg      ?_208                                   ; 22E1 _ 0F 8F, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_209                                   ; 22E7 _ E9, 00000005

?_208:  jmp     ?_219                                   ; 22EC _ E9, 0000019D

?_209:  mov     qword [rbp-10H], 1                      ; 22F1 _ 48: C7. 45, F0, 00000001
?_210:  mov     rax, qword [rel _M_]                    ; 22F9 _ 48: 8B. 05, 00000000(GOT r)
        mov     rcx, qword [rbp-10H]                    ; 2300 _ 48: 8B. 4D, F0
        cmp     rcx, qword [rax]                        ; 2304 _ 48: 3B. 08
; Note: Immediate operand could be made smaller by sign extension
        jg      ?_211                                   ; 2307 _ 0F 8F, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_212                                   ; 230D _ E9, 00000005

?_211:  jmp     ?_217                                   ; 2312 _ E9, 00000161

?_212:  mov     rax, qword [rel _Mod_]                  ; 2317 _ 48: 8B. 05, 00000000(GOT r)
        mov     rcx, qword [rel _Sum_]                  ; 231E _ 48: 8B. 0D, 00000000(GOT r)
        mov     rdx, qword [rel _g_]                    ; 2325 _ 48: 8B. 15, 00000000(GOT r)
        mov     rsi, qword [rcx]                        ; 232C _ 48: 8B. 31
        mov     rdi, qword [rbp-18H]                    ; 232F _ 48: 8B. 7D, E8
        shl     rdi, 3                                  ; 2333 _ 48: C1. E7, 03
        add     rsi, rdi                                ; 2337 _ 48: 01. FE
        mov     rsi, qword [rsi]                        ; 233A _ 48: 8B. 36
        mov     rdi, qword [rbp-10H]                    ; 233D _ 48: 8B. 7D, F0
        sub     rdi, 1                                  ; 2341 _ 48: 83. EF, 01
        shl     rdi, 3                                  ; 2345 _ 48: C1. E7, 03
        add     rsi, rdi                                ; 2349 _ 48: 01. FE
        mov     rsi, qword [rsi]                        ; 234C _ 48: 8B. 36
        mov     rdi, qword [rbp-8H]                     ; 234F _ 48: 8B. 7D, F8
        shl     rdi, 3                                  ; 2353 _ 48: C1. E7, 03
        add     rsi, rdi                                ; 2357 _ 48: 01. FE
        mov     rsi, qword [rsi]                        ; 235A _ 48: 8B. 36
        mov     rdx, qword [rdx]                        ; 235D _ 48: 8B. 12
        mov     rdi, qword [rbp-18H]                    ; 2360 _ 48: 8B. 7D, E8
        shl     rdi, 3                                  ; 2364 _ 48: C1. E7, 03
        add     rdx, rdi                                ; 2368 _ 48: 01. FA
        mov     rdx, qword [rdx]                        ; 236B _ 48: 8B. 12
        mov     rdi, qword [rbp-10H]                    ; 236E _ 48: 8B. 7D, F0
        shl     rdi, 3                                  ; 2372 _ 48: C1. E7, 03
        add     rdx, rdi                                ; 2376 _ 48: 01. FA
        mov     rdx, qword [rdx]                        ; 2379 _ 48: 8B. 12
        mov     rdi, qword [rbp-8H]                     ; 237C _ 48: 8B. 7D, F8
        shl     rdi, 3                                  ; 2380 _ 48: C1. E7, 03
        add     rdx, rdi                                ; 2384 _ 48: 01. FA
        add     rsi, qword [rdx]                        ; 2387 _ 48: 03. 32
        mov     rdx, qword [rcx]                        ; 238A _ 48: 8B. 11
        mov     rdi, qword [rbp-18H]                    ; 238D _ 48: 8B. 7D, E8
        shl     rdi, 3                                  ; 2391 _ 48: C1. E7, 03
        add     rdx, rdi                                ; 2395 _ 48: 01. FA
        mov     rdx, qword [rdx]                        ; 2398 _ 48: 8B. 12
        mov     rdi, qword [rbp-10H]                    ; 239B _ 48: 8B. 7D, F0
        shl     rdi, 3                                  ; 239F _ 48: C1. E7, 03
        add     rdx, rdi                                ; 23A3 _ 48: 01. FA
        mov     rdx, qword [rdx]                        ; 23A6 _ 48: 8B. 12
        mov     rdi, qword [rbp-8H]                     ; 23A9 _ 48: 8B. 7D, F8
        shl     rdi, 3                                  ; 23AD _ 48: C1. E7, 03
        add     rdx, rdi                                ; 23B1 _ 48: 01. FA
        mov     qword [rdx], rsi                        ; 23B4 _ 48: 89. 32
        mov     rcx, qword [rcx]                        ; 23B7 _ 48: 8B. 09
        mov     rdx, qword [rbp-18H]                    ; 23BA _ 48: 8B. 55, E8
        shl     rdx, 3                                  ; 23BE _ 48: C1. E2, 03
        add     rcx, rdx                                ; 23C2 _ 48: 01. D1
        mov     rcx, qword [rcx]                        ; 23C5 _ 48: 8B. 09
        mov     rdx, qword [rbp-10H]                    ; 23C8 _ 48: 8B. 55, F0
        shl     rdx, 3                                  ; 23CC _ 48: C1. E2, 03
        add     rcx, rdx                                ; 23D0 _ 48: 01. D1
        mov     rcx, qword [rcx]                        ; 23D3 _ 48: 8B. 09
        mov     rdx, qword [rbp-8H]                     ; 23D6 _ 48: 8B. 55, F8
        shl     rdx, 3                                  ; 23DA _ 48: C1. E2, 03
        add     rcx, rdx                                ; 23DE _ 48: 01. D1
        mov     rcx, qword [rcx]                        ; 23E1 _ 48: 8B. 09
        cmp     rcx, qword [rax]                        ; 23E4 _ 48: 3B. 08
; Note: Immediate operand could be made smaller by sign extension
        jl      ?_213                                   ; 23E7 _ 0F 8C, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_214                                   ; 23ED _ E9, 00000005

?_213:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_215                                   ; 23F2 _ E9, 0000006B

?_214:  mov     rax, qword [rel _Sum_]                  ; 23F7 _ 48: 8B. 05, 00000000(GOT r)
        mov     rcx, qword [rel _Mod_]                  ; 23FE _ 48: 8B. 0D, 00000000(GOT r)
        mov     rdx, qword [rax]                        ; 2405 _ 48: 8B. 10
        mov     rsi, qword [rbp-18H]                    ; 2408 _ 48: 8B. 75, E8
        shl     rsi, 3                                  ; 240C _ 48: C1. E6, 03
        add     rdx, rsi                                ; 2410 _ 48: 01. F2
        mov     rdx, qword [rdx]                        ; 2413 _ 48: 8B. 12
        mov     rsi, qword [rbp-10H]                    ; 2416 _ 48: 8B. 75, F0
        shl     rsi, 3                                  ; 241A _ 48: C1. E6, 03
        add     rdx, rsi                                ; 241E _ 48: 01. F2
        mov     rdx, qword [rdx]                        ; 2421 _ 48: 8B. 12
        mov     rsi, qword [rbp-8H]                     ; 2424 _ 48: 8B. 75, F8
        shl     rsi, 3                                  ; 2428 _ 48: C1. E6, 03
        add     rdx, rsi                                ; 242C _ 48: 01. F2
        mov     rdx, qword [rdx]                        ; 242F _ 48: 8B. 12
        sub     rdx, qword [rcx]                        ; 2432 _ 48: 2B. 11
        mov     rax, qword [rax]                        ; 2435 _ 48: 8B. 00
        mov     rcx, qword [rbp-18H]                    ; 2438 _ 48: 8B. 4D, E8
        shl     rcx, 3                                  ; 243C _ 48: C1. E1, 03
        add     rax, rcx                                ; 2440 _ 48: 01. C8
        mov     rax, qword [rax]                        ; 2443 _ 48: 8B. 00
        mov     rcx, qword [rbp-10H]                    ; 2446 _ 48: 8B. 4D, F0
        shl     rcx, 3                                  ; 244A _ 48: C1. E1, 03
        add     rax, rcx                                ; 244E _ 48: 01. C8
        mov     rax, qword [rax]                        ; 2451 _ 48: 8B. 00
        mov     rcx, qword [rbp-8H]                     ; 2454 _ 48: 8B. 4D, F8
        shl     rcx, 3                                  ; 2458 _ 48: C1. E1, 03
        add     rax, rcx                                ; 245C _ 48: 01. C8
        mov     qword [rax], rdx                        ; 245F _ 48: 89. 10
?_215:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_216                                   ; 2462 _ E9, 00000000

?_216:  mov     rax, qword [rbp-10H]                    ; 2467 _ 48: 8B. 45, F0
        add     rax, 1                                  ; 246B _ 48: 83. C0, 01
        mov     qword [rbp-10H], rax                    ; 246F _ 48: 89. 45, F0
        jmp     ?_210                                   ; 2473 _ E9, FFFFFE81

?_217:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_218                                   ; 2478 _ E9, 00000000

?_218:  mov     rax, qword [rbp-8H]                     ; 247D _ 48: 8B. 45, F8
        add     rax, 1                                  ; 2481 _ 48: 83. C0, 01
        mov     qword [rbp-8H], rax                     ; 2485 _ 48: 89. 45, F8
        jmp     ?_207                                   ; 2489 _ E9, FFFFFE45

?_219:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_220                                   ; 248E _ E9, 00000000

?_220:  mov     rax, qword [rbp-18H]                    ; 2493 _ 48: 8B. 45, E8
        add     rax, 1                                  ; 2497 _ 48: 83. C0, 01
        mov     qword [rbp-18H], rax                    ; 249B _ 48: 89. 45, E8
        jmp     ?_204                                   ; 249F _ E9, FFFFFE09

?_221:  ; Local function
        add     rsp, 48                                 ; 24A4 _ 48: 83. C4, 30
        pop     rbp                                     ; 24A8 _ 5D
        ret                                             ; 24A9 _ C3

; Filling space: 6H
; Filler type: Multi-byte NOP
;       db 66H, 0FH, 1FH, 44H, 00H, 00H

ALIGN   8

_Calculate_Comb:; Function begin
        push    rbp                                     ; 24B0 _ 55
        mov     rbp, rsp                                ; 24B1 _ 48: 89. E5
        mov     qword [rbp-8H], 0                       ; 24B4 _ 48: C7. 45, F8, 00000000
?_222:  mov     rax, qword [rel _M_]                    ; 24BC _ 48: 8B. 05, 00000000(GOT r)
        mov     rcx, qword [rbp-8H]                     ; 24C3 _ 48: 8B. 4D, F8
        cmp     rcx, qword [rax]                        ; 24C7 _ 48: 3B. 08
; Note: Immediate operand could be made smaller by sign extension
        jg      ?_223                                   ; 24CA _ 0F 8F, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_224                                   ; 24D0 _ E9, 00000005

?_223:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_225                                   ; 24D5 _ E9, 00000030

?_224:  mov     rax, qword [rel _Comb_]                 ; 24DA _ 48: 8B. 05, 00000000(GOT r)
        mov     rax, qword [rax]                        ; 24E1 _ 48: 8B. 00
        mov     rcx, qword [rbp-8H]                     ; 24E4 _ 48: 8B. 4D, F8
        shl     rcx, 3                                  ; 24E8 _ 48: C1. E1, 03
        add     rax, rcx                                ; 24EC _ 48: 01. C8
        mov     rax, qword [rax]                        ; 24EF _ 48: 8B. 00
        mov     qword [rax], 1                          ; 24F2 _ 48: C7. 00, 00000001
        mov     rax, qword [rbp-8H]                     ; 24F9 _ 48: 8B. 45, F8
        add     rax, 1                                  ; 24FD _ 48: 83. C0, 01
        mov     qword [rbp-8H], rax                     ; 2501 _ 48: 89. 45, F8
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_222                                   ; 2505 _ E9, FFFFFFB2
; _Calculate_Comb End of function

?_225:  ; Local function
        mov     qword [rbp-8H], 1                       ; 250A _ 48: C7. 45, F8, 00000001
?_226:  mov     rax, qword [rel _M_]                    ; 2512 _ 48: 8B. 05, 00000000(GOT r)
        mov     rcx, qword [rbp-8H]                     ; 2519 _ 48: 8B. 4D, F8
        cmp     rcx, qword [rax]                        ; 251D _ 48: 3B. 08
; Note: Immediate operand could be made smaller by sign extension
        jg      ?_227                                   ; 2520 _ 0F 8F, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_228                                   ; 2526 _ E9, 00000005

?_227:  jmp     ?_238                                   ; 252B _ E9, 0000014A

?_228:  mov     qword [rbp-10H], 1                      ; 2530 _ 48: C7. 45, F0, 00000001
?_229:  mov     rax, qword [rel _C_]                    ; 2538 _ 48: 8B. 05, 00000000(GOT r)
        mov     rcx, qword [rbp-10H]                    ; 253F _ 48: 8B. 4D, F0
        cmp     rcx, qword [rax]                        ; 2543 _ 48: 3B. 08
; Note: Immediate operand could be made smaller by sign extension
        jg      ?_230                                   ; 2546 _ 0F 8F, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_231                                   ; 254C _ E9, 00000005

?_230:  jmp     ?_236                                   ; 2551 _ E9, 0000010E

?_231:  mov     rax, qword [rel _Mod_]                  ; 2556 _ 48: 8B. 05, 00000000(GOT r)
        mov     rcx, qword [rel _Comb_]                 ; 255D _ 48: 8B. 0D, 00000000(GOT r)
        mov     rdx, qword [rcx]                        ; 2564 _ 48: 8B. 11
        mov     rsi, qword [rbp-8H]                     ; 2567 _ 48: 8B. 75, F8
        sub     rsi, 1                                  ; 256B _ 48: 83. EE, 01
        shl     rsi, 3                                  ; 256F _ 48: C1. E6, 03
        add     rdx, rsi                                ; 2573 _ 48: 01. F2
        mov     rdx, qword [rdx]                        ; 2576 _ 48: 8B. 12
        mov     rsi, qword [rbp-10H]                    ; 2579 _ 48: 8B. 75, F0
        shl     rsi, 3                                  ; 257D _ 48: C1. E6, 03
        add     rdx, rsi                                ; 2581 _ 48: 01. F2
        mov     rdx, qword [rdx]                        ; 2584 _ 48: 8B. 12
        mov     rsi, qword [rcx]                        ; 2587 _ 48: 8B. 31
        mov     rdi, qword [rbp-8H]                     ; 258A _ 48: 8B. 7D, F8
        sub     rdi, 1                                  ; 258E _ 48: 83. EF, 01
        shl     rdi, 3                                  ; 2592 _ 48: C1. E7, 03
        add     rsi, rdi                                ; 2596 _ 48: 01. FE
        mov     rsi, qword [rsi]                        ; 2599 _ 48: 8B. 36
        mov     rdi, qword [rbp-10H]                    ; 259C _ 48: 8B. 7D, F0
        sub     rdi, 1                                  ; 25A0 _ 48: 83. EF, 01
        shl     rdi, 3                                  ; 25A4 _ 48: C1. E7, 03
        add     rsi, rdi                                ; 25A8 _ 48: 01. FE
        add     rdx, qword [rsi]                        ; 25AB _ 48: 03. 16
        mov     rsi, qword [rcx]                        ; 25AE _ 48: 8B. 31
        mov     rdi, qword [rbp-8H]                     ; 25B1 _ 48: 8B. 7D, F8
        shl     rdi, 3                                  ; 25B5 _ 48: C1. E7, 03
        add     rsi, rdi                                ; 25B9 _ 48: 01. FE
        mov     rsi, qword [rsi]                        ; 25BC _ 48: 8B. 36
        mov     rdi, qword [rbp-10H]                    ; 25BF _ 48: 8B. 7D, F0
        shl     rdi, 3                                  ; 25C3 _ 48: C1. E7, 03
        add     rsi, rdi                                ; 25C7 _ 48: 01. FE
        mov     qword [rsi], rdx                        ; 25CA _ 48: 89. 16
        mov     rcx, qword [rcx]                        ; 25CD _ 48: 8B. 09
        mov     rdx, qword [rbp-8H]                     ; 25D0 _ 48: 8B. 55, F8
        shl     rdx, 3                                  ; 25D4 _ 48: C1. E2, 03
        add     rcx, rdx                                ; 25D8 _ 48: 01. D1
        mov     rcx, qword [rcx]                        ; 25DB _ 48: 8B. 09
        mov     rdx, qword [rbp-10H]                    ; 25DE _ 48: 8B. 55, F0
        shl     rdx, 3                                  ; 25E2 _ 48: C1. E2, 03
        add     rcx, rdx                                ; 25E6 _ 48: 01. D1
        mov     rcx, qword [rcx]                        ; 25E9 _ 48: 8B. 09
        cmp     rcx, qword [rax]                        ; 25EC _ 48: 3B. 08
; Note: Immediate operand could be made smaller by sign extension
        jl      ?_232                                   ; 25EF _ 0F 8C, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_233                                   ; 25F5 _ E9, 00000005

?_232:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_234                                   ; 25FA _ E9, 0000004F

?_233:  mov     rax, qword [rel _Comb_]                 ; 25FF _ 48: 8B. 05, 00000000(GOT r)
        mov     rcx, qword [rel _Mod_]                  ; 2606 _ 48: 8B. 0D, 00000000(GOT r)
        mov     rdx, qword [rax]                        ; 260D _ 48: 8B. 10
        mov     rsi, qword [rbp-8H]                     ; 2610 _ 48: 8B. 75, F8
        shl     rsi, 3                                  ; 2614 _ 48: C1. E6, 03
        add     rdx, rsi                                ; 2618 _ 48: 01. F2
        mov     rdx, qword [rdx]                        ; 261B _ 48: 8B. 12
        mov     rsi, qword [rbp-10H]                    ; 261E _ 48: 8B. 75, F0
        shl     rsi, 3                                  ; 2622 _ 48: C1. E6, 03
        add     rdx, rsi                                ; 2626 _ 48: 01. F2
        mov     rdx, qword [rdx]                        ; 2629 _ 48: 8B. 12
        sub     rdx, qword [rcx]                        ; 262C _ 48: 2B. 11
        mov     rax, qword [rax]                        ; 262F _ 48: 8B. 00
        mov     rcx, qword [rbp-8H]                     ; 2632 _ 48: 8B. 4D, F8
        shl     rcx, 3                                  ; 2636 _ 48: C1. E1, 03
        add     rax, rcx                                ; 263A _ 48: 01. C8
        mov     rax, qword [rax]                        ; 263D _ 48: 8B. 00
        mov     rcx, qword [rbp-10H]                    ; 2640 _ 48: 8B. 4D, F0
        shl     rcx, 3                                  ; 2644 _ 48: C1. E1, 03
        add     rax, rcx                                ; 2648 _ 48: 01. C8
        mov     qword [rax], rdx                        ; 264B _ 48: 89. 10
?_234:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_235                                   ; 264E _ E9, 00000000

?_235:  mov     rax, qword [rbp-10H]                    ; 2653 _ 48: 8B. 45, F0
        add     rax, 1                                  ; 2657 _ 48: 83. C0, 01
        mov     qword [rbp-10H], rax                    ; 265B _ 48: 89. 45, F0
        jmp     ?_229                                   ; 265F _ E9, FFFFFED4

?_236:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_237                                   ; 2664 _ E9, 00000000

?_237:  mov     rax, qword [rbp-8H]                     ; 2669 _ 48: 8B. 45, F8
        add     rax, 1                                  ; 266D _ 48: 83. C0, 01
        mov     qword [rbp-8H], rax                     ; 2671 _ 48: 89. 45, F8
        jmp     ?_226                                   ; 2675 _ E9, FFFFFE98

?_238:  ; Local function
        pop     rbp                                     ; 267A _ 5D
        ret                                             ; 267B _ C3

; Filling space: 4H
; Filler type: Multi-byte NOP
;       db 0FH, 1FH, 40H, 00H

ALIGN   8

_main:  ; Function begin
        push    rbp                                     ; 2680 _ 55
        mov     rbp, rsp                                ; 2681 _ 48: 89. E5
        sub     rsp, 208                                ; 2684 _ 48: 81. EC, 000000D0
        mov     dword [rbp-4H], 0                       ; 268B _ C7. 45, FC, 00000000
        mov     qword [rbp-18H], 3                      ; 2692 _ 48: C7. 45, E8, 00000003
        call    _init                                   ; 269A _ E8, 00000000(rel)
        mov     rax, qword [rel _Mod_]                  ; 269F _ 48: 8B. 05, 00000000(GOT r)
        mov     rcx, qword [rel _N_]                    ; 26A6 _ 48: 8B. 0D, 00000000(GOT r)
        mov     rdx, qword [rel _M_]                    ; 26AD _ 48: 8B. 15, 00000000(GOT r)
        mov     rsi, qword [rel _C_]                    ; 26B4 _ 48: 8B. 35, 00000000(GOT r)
        mov     rdi, qword [rel _fm_]                   ; 26BB _ 48: 8B. 3D, 00000000(GOT r)
        mov     r8, qword [rel _fc_]                    ; 26C2 _ 4C: 8B. 05, 00000000(GOT r)
        mov     r9, qword [rel _fn_]                    ; 26C9 _ 4C: 8B. 0D, 00000000(GOT r)
        mov     r10, qword [r9]                         ; 26D0 _ 4D: 8B. 11
        mov     qword [r10+8H], 2                       ; 26D3 _ 49: C7. 42, 08, 00000002
        mov     r10, qword [r8]                         ; 26DB _ 4D: 8B. 10
        mov     qword [r10+8H], 3                       ; 26DE _ 49: C7. 42, 08, 00000003
        mov     r10, qword [rdi]                        ; 26E6 _ 4C: 8B. 17
        mov     r10, qword [r10+8H]                     ; 26E9 _ 4D: 8B. 52, 08
        mov     qword [r10+8H], 3                       ; 26ED _ 49: C7. 42, 08, 00000003
        mov     r10, qword [rdi]                        ; 26F5 _ 4C: 8B. 17
        mov     r10, qword [r10+8H]                     ; 26F8 _ 4D: 8B. 52, 08
        mov     qword [r10+10H], 4                      ; 26FC _ 49: C7. 42, 10, 00000004
        mov     r10, qword [r9]                         ; 2704 _ 4D: 8B. 11
        mov     qword [r10+10H], 3                      ; 2707 _ 49: C7. 42, 10, 00000003
        mov     r10, qword [r8]                         ; 270F _ 4D: 8B. 10
        mov     qword [r10+10H], 3                      ; 2712 _ 49: C7. 42, 10, 00000003
        mov     r10, qword [rdi]                        ; 271A _ 4C: 8B. 17
        mov     r10, qword [r10+10H]                    ; 271D _ 4D: 8B. 52, 10
        mov     qword [r10+8H], 3                       ; 2721 _ 49: C7. 42, 08, 00000003
        mov     r10, qword [rdi]                        ; 2729 _ 4C: 8B. 17
        mov     r10, qword [r10+10H]                    ; 272C _ 4D: 8B. 52, 10
        mov     qword [r10+10H], 4                      ; 2730 _ 49: C7. 42, 10, 00000004
        mov     r10, qword [rdi]                        ; 2738 _ 4C: 8B. 17
        mov     r10, qword [r10+10H]                    ; 273B _ 4D: 8B. 52, 10
        mov     qword [r10+18H], 4                      ; 273F _ 49: C7. 42, 18, 00000004
        mov     r9, qword [r9]                          ; 2747 _ 4D: 8B. 09
        mov     qword [r9+18H], 4                       ; 274A _ 49: C7. 41, 18, 00000004
        mov     r8, qword [r8]                          ; 2752 _ 4D: 8B. 00
        mov     qword [r8+18H], 4                       ; 2755 _ 49: C7. 40, 18, 00000004
        mov     r8, qword [rdi]                         ; 275D _ 4C: 8B. 07
        mov     r8, qword [r8+18H]                      ; 2760 _ 4D: 8B. 40, 18
        mov     qword [r8+8H], 5                        ; 2764 _ 49: C7. 40, 08, 00000005
        mov     r8, qword [rdi]                         ; 276C _ 4C: 8B. 07
        mov     r8, qword [r8+18H]                      ; 276F _ 4D: 8B. 40, 18
        mov     qword [r8+10H], 7                       ; 2773 _ 49: C7. 40, 10, 00000007
        mov     r8, qword [rdi]                         ; 277B _ 4C: 8B. 07
        mov     r8, qword [r8+18H]                      ; 277E _ 4D: 8B. 40, 18
        mov     qword [r8+18H], 8                       ; 2782 _ 49: C7. 40, 18, 00000008
        mov     rdi, qword [rdi]                        ; 278A _ 48: 8B. 3F
        mov     rdi, qword [rdi+18H]                    ; 278D _ 48: 8B. 7F, 18
        mov     qword [rdi+20H], 9                      ; 2791 _ 48: C7. 47, 20, 00000009
        mov     qword [rsi], 4                          ; 2799 _ 48: C7. 06, 00000004
        mov     qword [rdx], 9                          ; 27A0 _ 48: C7. 02, 00000009
        mov     qword [rcx], 4                          ; 27A7 _ 48: C7. 01, 00000004
        mov     qword [rax], 10007                      ; 27AE _ 48: C7. 00, 00002717
        call    _Calculate_G                            ; 27B5 _ E8, 00000000(rel)
        call    _Calculate_Comb                         ; 27BA _ E8, 00000000(rel)
        mov     qword [rbp-28H], 1                      ; 27BF _ 48: C7. 45, D8, 00000001
?_239:  mov     rax, qword [rbp-28H]                    ; 27C7 _ 48: 8B. 45, D8
        cmp     rax, qword [rbp-18H]                    ; 27CB _ 48: 3B. 45, E8
; Note: Immediate operand could be made smaller by sign extension
        jg      ?_240                                   ; 27CF _ 0F 8F, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_241                                   ; 27D5 _ E9, 00000005

?_240:  jmp     ?_290                                   ; 27DA _ E9, 00000648

?_241:  mov     rax, qword [rel _fc_]                   ; 27DF _ 48: 8B. 05, 00000000(GOT r)
        mov     rcx, qword [rel _fn_]                   ; 27E6 _ 48: 8B. 0D, 00000000(GOT r)
        mov     rcx, qword [rcx]                        ; 27ED _ 48: 8B. 09
        mov     rdx, qword [rbp-28H]                    ; 27F0 _ 48: 8B. 55, D8
        shl     rdx, 3                                  ; 27F4 _ 48: C1. E2, 03
        add     rcx, rdx                                ; 27F8 _ 48: 01. D1
        mov     rcx, qword [rcx]                        ; 27FB _ 48: 8B. 09
        mov     qword [rbp-20H], rcx                    ; 27FE _ 48: 89. 4D, E0
        mov     rax, qword [rax]                        ; 2802 _ 48: 8B. 00
        mov     rcx, qword [rbp-28H]                    ; 2805 _ 48: 8B. 4D, D8
        shl     rcx, 3                                  ; 2809 _ 48: C1. E1, 03
        add     rax, rcx                                ; 280D _ 48: 01. C8
        mov     rax, qword [rax]                        ; 2810 _ 48: 8B. 00
        mov     qword [rbp-10H], rax                    ; 2813 _ 48: 89. 45, F0
        mov     qword [rbp-30H], 1                      ; 2817 _ 48: C7. 45, D0, 00000001
?_242:  mov     rax, qword [rbp-30H]                    ; 281F _ 48: 8B. 45, D0
        cmp     rax, qword [rbp-20H]                    ; 2823 _ 48: 3B. 45, E0
; Note: Immediate operand could be made smaller by sign extension
        jg      ?_243                                   ; 2827 _ 0F 8F, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_244                                   ; 282D _ E9, 00000005

?_243:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_245                                   ; 2832 _ E9, 0000004F

?_244:  mov     rax, qword [rel _m_]                    ; 2837 _ 48: 8B. 05, 00000000(GOT r)
        mov     rcx, qword [rel _fm_]                   ; 283E _ 48: 8B. 0D, 00000000(GOT r)
        mov     rcx, qword [rcx]                        ; 2845 _ 48: 8B. 09
        mov     rdx, qword [rbp-28H]                    ; 2848 _ 48: 8B. 55, D8
        shl     rdx, 3                                  ; 284C _ 48: C1. E2, 03
        add     rcx, rdx                                ; 2850 _ 48: 01. D1
        mov     rcx, qword [rcx]                        ; 2853 _ 48: 8B. 09
        mov     rdx, qword [rbp-30H]                    ; 2856 _ 48: 8B. 55, D0
        shl     rdx, 3                                  ; 285A _ 48: C1. E2, 03
        add     rcx, rdx                                ; 285E _ 48: 01. D1
        mov     rcx, qword [rcx]                        ; 2861 _ 48: 8B. 09
        mov     rax, qword [rax]                        ; 2864 _ 48: 8B. 00
        mov     rdx, qword [rbp-30H]                    ; 2867 _ 48: 8B. 55, D0
        shl     rdx, 3                                  ; 286B _ 48: C1. E2, 03
        add     rax, rdx                                ; 286F _ 48: 01. D0
        mov     qword [rax], rcx                        ; 2872 _ 48: 89. 08
        mov     rax, qword [rbp-30H]                    ; 2875 _ 48: 8B. 45, D0
        add     rax, 1                                  ; 2879 _ 48: 83. C0, 01
        mov     qword [rbp-30H], rax                    ; 287D _ 48: 89. 45, D0
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_242                                   ; 2881 _ E9, FFFFFF99

?_245:  cmp     qword [rbp-20H], 1                      ; 2886 _ 48: 83. 7D, E0, 01
; Note: Immediate operand could be made smaller by sign extension
        jne     ?_246                                   ; 288B _ 0F 85, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_247                                   ; 2891 _ E9, 00000005

?_246:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_248                                   ; 2896 _ E9, 00000047

?_247:  mov     rax, qword [rel _m_]                    ; 289B _ 48: 8B. 05, 00000000(GOT r)
        mov     rcx, qword [rel _Comb_]                 ; 28A2 _ 48: 8B. 0D, 00000000(GOT r)
        mov     rcx, qword [rcx]                        ; 28A9 _ 48: 8B. 09
        mov     rax, qword [rax]                        ; 28AC _ 48: 8B. 00
        mov     rax, qword [rax+8H]                     ; 28AF _ 48: 8B. 40, 08
        shl     rax, 3                                  ; 28B3 _ 48: C1. E0, 03
        add     rcx, rax                                ; 28B7 _ 48: 01. C1
        mov     rax, qword [rcx]                        ; 28BA _ 48: 8B. 01
        mov     rcx, qword [rbp-10H]                    ; 28BD _ 48: 8B. 4D, F0
        shl     rcx, 3                                  ; 28C1 _ 48: C1. E1, 03
        add     rax, rcx                                ; 28C5 _ 48: 01. C8
        mov     rdi, qword [rax]                        ; 28C8 _ 48: 8B. 38
        call    _toString                               ; 28CB _ E8, 00000000(rel)
        mov     qword [rbp-38H], rax                    ; 28D0 _ 48: 89. 45, C8
        mov     rdi, qword [rbp-38H]                    ; 28D4 _ 48: 8B. 7D, C8
        call    _println                                ; 28D8 _ E8, 00000000(rel)
        jmp     ?_288                                   ; 28DD _ E9, 0000052F

?_248:  mov     qword [rbp-58H], 0                      ; 28E2 _ 48: C7. 45, A8, 00000000
        mov     qword [rbp-50H], 0                      ; 28EA _ 48: C7. 45, B0, 00000000
        mov     qword [rbp-60H], 0                      ; 28F2 _ 48: C7. 45, A0, 00000000
        mov     qword [rbp-48H], 1                      ; 28FA _ 48: C7. 45, B8, 00000001
?_249:  mov     rax, qword [rel _m_]                    ; 2902 _ 48: 8B. 05, 00000000(GOT r)
        mov     rcx, qword [rbp-48H]                    ; 2909 _ 48: 8B. 4D, B8
        mov     rax, qword [rax]                        ; 290D _ 48: 8B. 00
        cmp     rcx, qword [rax+8H]                     ; 2910 _ 48: 3B. 48, 08
; Note: Immediate operand could be made smaller by sign extension
        jg      ?_250                                   ; 2914 _ 0F 8F, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_251                                   ; 291A _ E9, 00000005

?_250:  jmp     ?_284                                   ; 291F _ E9, 000004B0

?_251:  mov     rax, qword [rel _m_]                    ; 2924 _ 48: 8B. 05, 00000000(GOT r)
        mov     rcx, qword [rax]                        ; 292B _ 48: 8B. 08
        mov     rcx, qword [rcx+8H]                     ; 292E _ 48: 8B. 49, 08
        mov     rax, qword [rax]                        ; 2932 _ 48: 8B. 00
        mov     rax, qword [rax+8H]                     ; 2935 _ 48: 8B. 40, 08
        cqo                                             ; 2939 _ 48: 99
        idiv    qword [rbp-48H]                         ; 293B _ 48: F7. 7D, B8
        mov     qword [rbp-0A0H], rax                   ; 293F _ 48: 89. 85, FFFFFF60
        mov     rax, rcx                                ; 2946 _ 48: 89. C8
        cqo                                             ; 2949 _ 48: 99
        mov     rcx, qword [rbp-0A0H]                   ; 294B _ 48: 8B. 8D, FFFFFF60
        idiv    rcx                                     ; 2952 _ 48: F7. F9
        mov     qword [rbp-68H], rax                    ; 2955 _ 48: 89. 45, 98
        mov     qword [rbp-70H], 2                      ; 2959 _ 48: C7. 45, 90, 00000002
?_252:  mov     rax, qword [rbp-70H]                    ; 2961 _ 48: 8B. 45, 90
        cmp     rax, qword [rbp-20H]                    ; 2965 _ 48: 3B. 45, E0
; Note: Immediate operand could be made smaller by sign extension
        jg      ?_253                                   ; 2969 _ 0F 8F, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_254                                   ; 296F _ E9, 00000005

?_253:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_259                                   ; 2974 _ E9, 0000007F

?_254:  mov     rax, qword [rel _m_]                    ; 2979 _ 48: 8B. 05, 00000000(GOT r)
        mov     rcx, qword [rax]                        ; 2980 _ 48: 8B. 08
        mov     rdx, qword [rbp-70H]                    ; 2983 _ 48: 8B. 55, 90
        shl     rdx, 3                                  ; 2987 _ 48: C1. E2, 03
        add     rcx, rdx                                ; 298B _ 48: 01. D1
        mov     rcx, qword [rcx]                        ; 298E _ 48: 8B. 09
        mov     rax, qword [rax]                        ; 2991 _ 48: 8B. 00
        mov     rdx, qword [rbp-70H]                    ; 2994 _ 48: 8B. 55, 90
        shl     rdx, 3                                  ; 2998 _ 48: C1. E2, 03
        add     rax, rdx                                ; 299C _ 48: 01. D0
        mov     rax, qword [rax]                        ; 299F _ 48: 8B. 00
        cqo                                             ; 29A2 _ 48: 99
        idiv    qword [rbp-48H]                         ; 29A4 _ 48: F7. 7D, B8
        mov     qword [rbp-0A8H], rax                   ; 29A8 _ 48: 89. 85, FFFFFF58
        mov     rax, rcx                                ; 29AF _ 48: 89. C8
        cqo                                             ; 29B2 _ 48: 99
        mov     rcx, qword [rbp-0A8H]                   ; 29B4 _ 48: 8B. 8D, FFFFFF58
        idiv    rcx                                     ; 29BB _ 48: F7. F9
        mov     qword [rbp-78H], rax                    ; 29BE _ 48: 89. 45, 88
        mov     rax, qword [rbp-78H]                    ; 29C2 _ 48: 8B. 45, 88
        cmp     rax, qword [rbp-68H]                    ; 29C6 _ 48: 3B. 45, 98
; Note: Immediate operand could be made smaller by sign extension
        jge     ?_255                                   ; 29CA _ 0F 8D, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_256                                   ; 29D0 _ E9, 00000005

?_255:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_257                                   ; 29D5 _ E9, 00000008

?_256:  mov     rax, qword [rbp-78H]                    ; 29DA _ 48: 8B. 45, 88
        mov     qword [rbp-68H], rax                    ; 29DE _ 48: 89. 45, 98
?_257:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_258                                   ; 29E2 _ E9, 00000000

?_258:  mov     rax, qword [rbp-70H]                    ; 29E7 _ 48: 8B. 45, 90
        add     rax, 1                                  ; 29EB _ 48: 83. C0, 01
        mov     qword [rbp-70H], rax                    ; 29EF _ 48: 89. 45, 90
        jmp     ?_252                                   ; 29F3 _ E9, FFFFFF69

?_259:  mov     rax, qword [rel _m_]                    ; 29F8 _ 48: 8B. 05, 00000000(GOT r)
        mov     rax, qword [rax]                        ; 29FF _ 48: 8B. 00
        mov     rax, qword [rax+8H]                     ; 2A02 _ 48: 8B. 40, 08
        cmp     rax, qword [rbp-68H]                    ; 2A06 _ 48: 3B. 45, 98
; Note: Immediate operand could be made smaller by sign extension
        jge     ?_260                                   ; 2A0A _ 0F 8D, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_261                                   ; 2A10 _ E9, 00000005

?_260:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_262                                   ; 2A15 _ E9, 00000012

?_261:  mov     rax, qword [rel _m_]                    ; 2A1A _ 48: 8B. 05, 00000000(GOT r)
        mov     rax, qword [rax]                        ; 2A21 _ 48: 8B. 00
        mov     rax, qword [rax+8H]                     ; 2A24 _ 48: 8B. 40, 08
        mov     qword [rbp-68H], rax                    ; 2A28 _ 48: 89. 45, 98
?_262:  mov     rax, qword [rel _b_]                    ; 2A2C _ 48: 8B. 05, 00000000(GOT r)
        mov     rcx, qword [rbp-68H]                    ; 2A33 _ 48: 8B. 4D, 98
        mov     qword [rbp-48H], rcx                    ; 2A37 _ 48: 89. 4D, B8
        mov     rax, qword [rax]                        ; 2A3B _ 48: 8B. 00
        mov     qword [rax], 1                          ; 2A3E _ 48: C7. 00, 00000001
        mov     qword [rbp-70H], 1                      ; 2A45 _ 48: C7. 45, 90, 00000001
?_263:  mov     rax, qword [rbp-70H]                    ; 2A4D _ 48: 8B. 45, 90
        cmp     rax, qword [rbp-20H]                    ; 2A51 _ 48: 3B. 45, E0
; Note: Immediate operand could be made smaller by sign extension
        jg      ?_264                                   ; 2A55 _ 0F 8F, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_265                                   ; 2A5B _ E9, 00000005

?_264:  jmp     ?_279                                   ; 2A60 _ E9, 00000280

?_265:  mov     rax, qword [rel _Mod_]                  ; 2A65 _ 48: 8B. 05, 00000000(GOT r)
        mov     rcx, qword [rel _m_]                    ; 2A6C _ 48: 8B. 0D, 00000000(GOT r)
        mov     edx, 2                                  ; 2A73 _ BA, 00000002
        mov     esi, edx                                ; 2A78 _ 89. D6
        mov     rdi, qword [rcx]                        ; 2A7A _ 48: 8B. 39
        mov     r8, qword [rbp-70H]                     ; 2A7D _ 4C: 8B. 45, 90
        shl     r8, 3                                   ; 2A81 _ 49: C1. E0, 03
        add     rdi, r8                                 ; 2A85 _ 4C: 01. C7
        mov     rdi, qword [rdi]                        ; 2A88 _ 48: 8B. 3F
        mov     qword [rbp-0B0H], rax                   ; 2A8B _ 48: 89. 85, FFFFFF50
        mov     rax, rdi                                ; 2A92 _ 48: 89. F8
        cqo                                             ; 2A95 _ 48: 99
        idiv    qword [rbp-48H]                         ; 2A97 _ 48: F7. 7D, B8
        cqo                                             ; 2A9B _ 48: 99
        mov     rdi, qword [rbp-0B0H]                   ; 2A9D _ 48: 8B. BD, FFFFFF50
        idiv    qword [rdi]                             ; 2AA4 _ 48: F7. 3F
        mov     qword [rbp-90H], rdx                    ; 2AA7 _ 48: 89. 95, FFFFFF70
        mov     rdx, qword [rbp-90H]                    ; 2AAE _ 48: 8B. 95, FFFFFF70
        mov     r8, qword [rbp-90H]                     ; 2AB5 _ 4C: 8B. 85, FFFFFF70
        add     r8, 1                                   ; 2ABC _ 49: 83. C0, 01
        imul    rdx, r8                                 ; 2AC0 _ 49: 0F AF. D0
        mov     rax, rdx                                ; 2AC4 _ 48: 89. D0
        cqo                                             ; 2AC7 _ 48: 99
        idiv    rsi                                     ; 2AC9 _ 48: F7. FE
        cqo                                             ; 2ACC _ 48: 99
        idiv    qword [rdi]                             ; 2ACE _ 48: F7. 3F
        mov     qword [rbp-98H], rdx                    ; 2AD1 _ 48: 89. 95, FFFFFF68
        mov     rcx, qword [rcx]                        ; 2AD8 _ 48: 8B. 09
        mov     rdx, qword [rbp-70H]                    ; 2ADB _ 48: 8B. 55, 90
        shl     rdx, 3                                  ; 2ADF _ 48: C1. E2, 03
        add     rcx, rdx                                ; 2AE3 _ 48: 01. D1
        mov     rcx, qword [rcx]                        ; 2AE6 _ 48: 8B. 09
        imul    rcx, qword [rbp-90H]                    ; 2AE9 _ 48: 0F AF. 8D, FFFFFF70
        mov     rax, rcx                                ; 2AF1 _ 48: 89. C8
        cqo                                             ; 2AF4 _ 48: 99
        idiv    qword [rdi]                             ; 2AF6 _ 48: F7. 3F
        mov     qword [rbp-80H], rdx                    ; 2AF9 _ 48: 89. 55, 80
        mov     qword [rbp-88H], 0                      ; 2AFD _ 48: C7. 85, FFFFFF78, 00000000
?_266:  mov     rax, qword [rbp-88H]                    ; 2B08 _ 48: 8B. 85, FFFFFF78
        cmp     rax, qword [rbp-70H]                    ; 2B0F _ 48: 3B. 45, 90
; Note: Immediate operand could be made smaller by sign extension
        jge     ?_267                                   ; 2B13 _ 0F 8D, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_268                                   ; 2B19 _ E9, 00000005

?_267:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_269                                   ; 2B1E _ E9, 0000007C

?_268:  mov     rax, qword [rel _res_]                  ; 2B23 _ 48: 8B. 05, 00000000(GOT r)
        mov     rcx, qword [rel _Mod_]                  ; 2B2A _ 48: 8B. 0D, 00000000(GOT r)
        mov     rdx, qword [rel _b_]                    ; 2B31 _ 48: 8B. 15, 00000000(GOT r)
        mov     rdx, qword [rdx]                        ; 2B38 _ 48: 8B. 12
        mov     rsi, qword [rbp-88H]                    ; 2B3B _ 48: 8B. B5, FFFFFF78
        shl     rsi, 3                                  ; 2B42 _ 48: C1. E6, 03
        add     rdx, rsi                                ; 2B46 _ 48: 01. F2
        mov     rdx, qword [rdx]                        ; 2B49 _ 48: 8B. 12
        mov     rsi, qword [rcx]                        ; 2B4C _ 48: 8B. 31
        sub     rsi, qword [rbp-98H]                    ; 2B4F _ 48: 2B. B5, FFFFFF68
        imul    rdx, rsi                                ; 2B56 _ 48: 0F AF. D6
        mov     qword [rbp-0B8H], rax                   ; 2B5A _ 48: 89. 85, FFFFFF48
        mov     rax, rdx                                ; 2B61 _ 48: 89. D0
        cqo                                             ; 2B64 _ 48: 99
        idiv    qword [rcx]                             ; 2B66 _ 48: F7. 39
        mov     rcx, qword [rbp-0B8H]                   ; 2B69 _ 48: 8B. 8D, FFFFFF48
        mov     rsi, qword [rcx]                        ; 2B70 _ 48: 8B. 31
        mov     rdi, qword [rbp-88H]                    ; 2B73 _ 48: 8B. BD, FFFFFF78
        add     rdi, 1                                  ; 2B7A _ 48: 83. C7, 01
        shl     rdi, 3                                  ; 2B7E _ 48: C1. E7, 03
        add     rsi, rdi                                ; 2B82 _ 48: 01. FE
        mov     qword [rsi], rdx                        ; 2B85 _ 48: 89. 16
        mov     rax, qword [rbp-88H]                    ; 2B88 _ 48: 8B. 85, FFFFFF78
        add     rax, 1                                  ; 2B8F _ 48: 83. C0, 01
        mov     qword [rbp-88H], rax                    ; 2B93 _ 48: 89. 85, FFFFFF78
        jmp     ?_266                                   ; 2B9A _ E9, FFFFFF69

?_269:  mov     rax, qword [rel _res_]                  ; 2B9F _ 48: 8B. 05, 00000000(GOT r)
        mov     rax, qword [rax]                        ; 2BA6 _ 48: 8B. 00
        mov     qword [rax], 0                          ; 2BA9 _ 48: C7. 00, 00000000
        mov     qword [rbp-88H], 0                      ; 2BB0 _ 48: C7. 85, FFFFFF78, 00000000
?_270:  mov     rax, qword [rbp-88H]                    ; 2BBB _ 48: 8B. 85, FFFFFF78
        cmp     rax, qword [rbp-70H]                    ; 2BC2 _ 48: 3B. 45, 90
; Note: Immediate operand could be made smaller by sign extension
        jge     ?_271                                   ; 2BC6 _ 0F 8D, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_272                                   ; 2BCC _ E9, 00000005

?_271:  jmp     ?_273                                   ; 2BD1 _ E9, 00000086

?_272:  mov     rax, qword [rel _res_]                  ; 2BD6 _ 48: 8B. 05, 00000000(GOT r)
        mov     rcx, qword [rel _Mod_]                  ; 2BDD _ 48: 8B. 0D, 00000000(GOT r)
        mov     rdx, qword [rel _b_]                    ; 2BE4 _ 48: 8B. 15, 00000000(GOT r)
        mov     rsi, qword [rax]                        ; 2BEB _ 48: 8B. 30
        mov     rdi, qword [rbp-88H]                    ; 2BEE _ 48: 8B. BD, FFFFFF78
        shl     rdi, 3                                  ; 2BF5 _ 48: C1. E7, 03
        add     rsi, rdi                                ; 2BF9 _ 48: 01. FE
        mov     rsi, qword [rsi]                        ; 2BFC _ 48: 8B. 36
        mov     rdi, qword [rbp-80H]                    ; 2BFF _ 48: 8B. 7D, 80
        mov     rdx, qword [rdx]                        ; 2C03 _ 48: 8B. 12
        mov     r8, qword [rbp-88H]                     ; 2C06 _ 4C: 8B. 85, FFFFFF78
        shl     r8, 3                                   ; 2C0D _ 49: C1. E0, 03
        add     rdx, r8                                 ; 2C11 _ 4C: 01. C2
        imul    rdi, qword [rdx]                        ; 2C14 _ 48: 0F AF. 3A
        add     rsi, rdi                                ; 2C18 _ 48: 01. FE
        mov     qword [rbp-0C0H], rax                   ; 2C1B _ 48: 89. 85, FFFFFF40
        mov     rax, rsi                                ; 2C22 _ 48: 89. F0
        cqo                                             ; 2C25 _ 48: 99
        idiv    qword [rcx]                             ; 2C27 _ 48: F7. 39
        mov     rcx, qword [rbp-0C0H]                   ; 2C2A _ 48: 8B. 8D, FFFFFF40
        mov     rsi, qword [rcx]                        ; 2C31 _ 48: 8B. 31
        mov     rdi, qword [rbp-88H]                    ; 2C34 _ 48: 8B. BD, FFFFFF78
        shl     rdi, 3                                  ; 2C3B _ 48: C1. E7, 03
        add     rsi, rdi                                ; 2C3F _ 48: 01. FE
        mov     qword [rsi], rdx                        ; 2C42 _ 48: 89. 16
        mov     rax, qword [rbp-88H]                    ; 2C45 _ 48: 8B. 85, FFFFFF78
        add     rax, 1                                  ; 2C4C _ 48: 83. C0, 01
        mov     qword [rbp-88H], rax                    ; 2C50 _ 48: 89. 85, FFFFFF78
        jmp     ?_270                                   ; 2C57 _ E9, FFFFFF5F

?_273:  mov     qword [rbp-88H], 0                      ; 2C5C _ 48: C7. 85, FFFFFF78, 00000000
?_274:  mov     rax, qword [rbp-88H]                    ; 2C67 _ 48: 8B. 85, FFFFFF78
        cmp     rax, qword [rbp-70H]                    ; 2C6E _ 48: 3B. 45, 90
; Note: Immediate operand could be made smaller by sign extension
        jg      ?_275                                   ; 2C72 _ 0F 8F, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_276                                   ; 2C78 _ E9, 00000005

?_275:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_277                                   ; 2C7D _ E9, 0000004D

?_276:  mov     rax, qword [rel _b_]                    ; 2C82 _ 48: 8B. 05, 00000000(GOT r)
        mov     rcx, qword [rel _res_]                  ; 2C89 _ 48: 8B. 0D, 00000000(GOT r)
        mov     rcx, qword [rcx]                        ; 2C90 _ 48: 8B. 09
        mov     rdx, qword [rbp-88H]                    ; 2C93 _ 48: 8B. 95, FFFFFF78
        shl     rdx, 3                                  ; 2C9A _ 48: C1. E2, 03
        add     rcx, rdx                                ; 2C9E _ 48: 01. D1
        mov     rcx, qword [rcx]                        ; 2CA1 _ 48: 8B. 09
        mov     rax, qword [rax]                        ; 2CA4 _ 48: 8B. 00
        mov     rdx, qword [rbp-88H]                    ; 2CA7 _ 48: 8B. 95, FFFFFF78
        shl     rdx, 3                                  ; 2CAE _ 48: C1. E2, 03
        add     rax, rdx                                ; 2CB2 _ 48: 01. D0
        mov     qword [rax], rcx                        ; 2CB5 _ 48: 89. 08
        mov     rax, qword [rbp-88H]                    ; 2CB8 _ 48: 8B. 85, FFFFFF78
        add     rax, 1                                  ; 2CBF _ 48: 83. C0, 01
        mov     qword [rbp-88H], rax                    ; 2CC3 _ 48: 89. 85, FFFFFF78
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_274                                   ; 2CCA _ E9, FFFFFF98

?_277:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_278                                   ; 2CCF _ E9, 00000000

?_278:  mov     rax, qword [rbp-70H]                    ; 2CD4 _ 48: 8B. 45, 90
        add     rax, 1                                  ; 2CD8 _ 48: 83. C0, 01
        mov     qword [rbp-70H], rax                    ; 2CDC _ 48: 89. 45, 90
        jmp     ?_263                                   ; 2CE0 _ E9, FFFFFD68

?_279:  mov     qword [rbp-70H], 0                      ; 2CE5 _ 48: C7. 45, 90, 00000000
?_280:  mov     rax, qword [rbp-70H]                    ; 2CED _ 48: 8B. 45, 90
        cmp     rax, qword [rbp-20H]                    ; 2CF1 _ 48: 3B. 45, E0
; Note: Immediate operand could be made smaller by sign extension
        jg      ?_281                                   ; 2CF5 _ 0F 8F, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_282                                   ; 2CFB _ E9, 00000005

?_281:  jmp     ?_283                                   ; 2D00 _ E9, 000000B6

?_282:  mov     rax, qword [rel _Mod_]                  ; 2D05 _ 48: 8B. 05, 00000000(GOT r)
        mov     rcx, qword [rel _Sum_]                  ; 2D0C _ 48: 8B. 0D, 00000000(GOT r)
        mov     rdx, qword [rel _b_]                    ; 2D13 _ 48: 8B. 15, 00000000(GOT r)
        mov     rsi, qword [rbp-58H]                    ; 2D1A _ 48: 8B. 75, A8
        mov     rdx, qword [rdx]                        ; 2D1E _ 48: 8B. 12
        mov     rdi, qword [rbp-70H]                    ; 2D21 _ 48: 8B. 7D, 90
        shl     rdi, 3                                  ; 2D25 _ 48: C1. E7, 03
        add     rdx, rdi                                ; 2D29 _ 48: 01. FA
        mov     rdx, qword [rdx]                        ; 2D2C _ 48: 8B. 12
        mov     rdi, qword [rcx]                        ; 2D2F _ 48: 8B. 39
        mov     r8, qword [rbp-70H]                     ; 2D32 _ 4C: 8B. 45, 90
        shl     r8, 3                                   ; 2D36 _ 49: C1. E0, 03
        add     rdi, r8                                 ; 2D3A _ 4C: 01. C7
        mov     rdi, qword [rdi]                        ; 2D3D _ 48: 8B. 3F
        mov     r8, qword [rbp-48H]                     ; 2D40 _ 4C: 8B. 45, B8
        shl     r8, 3                                   ; 2D44 _ 49: C1. E0, 03
        add     rdi, r8                                 ; 2D48 _ 4C: 01. C7
        mov     rdi, qword [rdi]                        ; 2D4B _ 48: 8B. 3F
        mov     r8, qword [rbp-10H]                     ; 2D4E _ 4C: 8B. 45, F0
        shl     r8, 3                                   ; 2D52 _ 49: C1. E0, 03
        add     rdi, r8                                 ; 2D56 _ 4C: 01. C7
        mov     rdi, qword [rdi]                        ; 2D59 _ 48: 8B. 3F
        mov     rcx, qword [rcx]                        ; 2D5C _ 48: 8B. 09
        mov     r8, qword [rbp-70H]                     ; 2D5F _ 4C: 8B. 45, 90
        shl     r8, 3                                   ; 2D63 _ 49: C1. E0, 03
        add     rcx, r8                                 ; 2D67 _ 4C: 01. C1
        mov     rcx, qword [rcx]                        ; 2D6A _ 48: 8B. 09
        mov     r8, qword [rbp-60H]                     ; 2D6D _ 4C: 8B. 45, A0
        shl     r8, 3                                   ; 2D71 _ 49: C1. E0, 03
        add     rcx, r8                                 ; 2D75 _ 4C: 01. C1
        mov     rcx, qword [rcx]                        ; 2D78 _ 48: 8B. 09
        mov     r8, qword [rbp-10H]                     ; 2D7B _ 4C: 8B. 45, F0
        shl     r8, 3                                   ; 2D7F _ 49: C1. E0, 03
        add     rcx, r8                                 ; 2D83 _ 4C: 01. C1
        sub     rdi, qword [rcx]                        ; 2D86 _ 48: 2B. 39
        imul    rdx, rdi                                ; 2D89 _ 48: 0F AF. D7
        add     rsi, rdx                                ; 2D8D _ 48: 01. D6
        mov     qword [rbp-0C8H], rax                   ; 2D90 _ 48: 89. 85, FFFFFF38
        mov     rax, rsi                                ; 2D97 _ 48: 89. F0
        cqo                                             ; 2D9A _ 48: 99
        mov     rcx, qword [rbp-0C8H]                   ; 2D9C _ 48: 8B. 8D, FFFFFF38
        idiv    qword [rcx]                             ; 2DA3 _ 48: F7. 39
        mov     qword [rbp-58H], rdx                    ; 2DA6 _ 48: 89. 55, A8
        mov     rax, qword [rbp-70H]                    ; 2DAA _ 48: 8B. 45, 90
        add     rax, 1                                  ; 2DAE _ 48: 83. C0, 01
        mov     qword [rbp-70H], rax                    ; 2DB2 _ 48: 89. 45, 90
        jmp     ?_280                                   ; 2DB6 _ E9, FFFFFF32

?_283:  mov     rax, qword [rbp-48H]                    ; 2DBB _ 48: 8B. 45, B8
        mov     qword [rbp-60H], rax                    ; 2DBF _ 48: 89. 45, A0
        mov     rax, qword [rbp-48H]                    ; 2DC3 _ 48: 8B. 45, B8
        add     rax, 1                                  ; 2DC7 _ 48: 83. C0, 01
        mov     qword [rbp-48H], rax                    ; 2DCB _ 48: 89. 45, B8
        jmp     ?_249                                   ; 2DCF _ E9, FFFFFB2E

?_284:  cmp     qword [rbp-58H], 0                      ; 2DD4 _ 48: 83. 7D, A8, 00
; Note: Immediate operand could be made smaller by sign extension
        jge     ?_285                                   ; 2DD9 _ 0F 8D, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_286                                   ; 2DDF _ E9, 00000005

?_285:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_287                                   ; 2DE4 _ E9, 00000012

?_286:  mov     rax, qword [rel _Mod_]                  ; 2DE9 _ 48: 8B. 05, 00000000(GOT r)
        mov     rcx, qword [rbp-58H]                    ; 2DF0 _ 48: 8B. 4D, A8
        add     rcx, qword [rax]                        ; 2DF4 _ 48: 03. 08
        mov     qword [rbp-58H], rcx                    ; 2DF7 _ 48: 89. 4D, A8
?_287:  mov     rdi, qword [rbp-58H]                    ; 2DFB _ 48: 8B. 7D, A8
        call    _toString                               ; 2DFF _ E8, 00000000(rel)
        mov     qword [rbp-40H], rax                    ; 2E04 _ 48: 89. 45, C0
        mov     rdi, qword [rbp-40H]                    ; 2E08 _ 48: 8B. 7D, C0
        call    _println                                ; 2E0C _ E8, 00000000(rel)
?_288:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_289                                   ; 2E11 _ E9, 00000000

?_289:  mov     rax, qword [rbp-28H]                    ; 2E16 _ 48: 8B. 45, D8
        add     rax, 1                                  ; 2E1A _ 48: 83. C0, 01
        mov     qword [rbp-28H], rax                    ; 2E1E _ 48: 89. 45, D8
        jmp     ?_239                                   ; 2E22 _ E9, FFFFF9A0
; _main End of function

?_290:  ; Local function
        xor     eax, eax                                ; 2E27 _ 31. C0
        add     rsp, 208                                ; 2E29 _ 48: 81. C4, 000000D0
        pop     rbp                                     ; 2E30 _ 5D
        ret                                             ; 2E31 _ C3


SECTION ._TEXT.__cstring align=1 noexecute              ; section number 2, data

        db 25H, 64H, 00H, 25H, 73H, 00H, 25H, 6CH       ; 2E32 _ %d.%s.%l
        db 64H, 0AH, 00H, 25H, 6CH, 64H, 00H            ; 2E3A _ d..%ld.


