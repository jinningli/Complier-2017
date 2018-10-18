; Disassembly of file: output.o
; Thu Oct 18 18:36:08 2018
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
global _toMoStr: function
global _str_add: function
global ___lib_printlnInt
global ___lib_printInt
global ___lib_malloc: function
global _println: function
global _print
global _toString
global _work: function
global _main

extern _strlen                                          ; near
extern _strcmp                                          ; near
extern _scanf                                           ; near
extern _puts                                            ; near
extern _printf                                          ; near
extern _malloc                                          ; near
extern ___strcpy_chk                                    ; near
extern _work_anger_                                     ; qword
extern _init_anger_                                     ; qword


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
        mov     rax, qword [rbp-10H]                    ; 00A8 _ 48: 8B. 45, F0
        movsxd  rcx, dword [rbp-24H]                    ; 00AC _ 48: 63. 4D, DC
        movsx   edx, byte [rax+rcx]                     ; 00B0 _ 0F BE. 14 08
        mov     rax, qword [rbp-18H]                    ; 00B4 _ 48: 8B. 45, E8
        movsxd  rcx, dword [rbp-24H]                    ; 00B8 _ 48: 63. 4D, DC
        movsx   esi, byte [rax+rcx]                     ; 00BC _ 0F BE. 34 08
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
        mov     rax, qword [rbp-8H]                     ; 0190 _ 48: 8B. 45, F8
        movsxd  rcx, dword [rbp-30H]                    ; 0194 _ 48: 63. 4D, D0
        mov     dl, byte [rax+rcx]                      ; 0198 _ 8A. 14 08
        mov     rax, qword [rbp-28H]                    ; 019B _ 48: 8B. 45, D8
        mov     esi, dword [rbp-2CH]                    ; 019F _ 8B. 75, D4
        mov     edi, esi                                ; 01A2 _ 89. F7
        add     edi, 1                                  ; 01A4 _ 83. C7, 01
        mov     dword [rbp-2CH], edi                    ; 01A7 _ 89. 7D, D4
        movsxd  rcx, esi                                ; 01AA _ 48: 63. CE
        mov     byte [rax+rcx], dl                      ; 01AD _ 88. 14 08
        mov     eax, dword [rbp-30H]                    ; 01B0 _ 8B. 45, D0
        add     eax, 1                                  ; 01B3 _ 83. C0, 01
        mov     dword [rbp-30H], eax                    ; 01B6 _ 89. 45, D0
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_009                                   ; 01B9 _ E9, FFFFFFC4
; _substring End of function

?_010:  ; Local function
        mov     rax, qword [rbp-28H]                    ; 01BE _ 48: 8B. 45, D8
        movsxd  rcx, dword [rbp-2CH]                    ; 01C2 _ 48: 63. 4D, D4
        mov     byte [rax+rcx], 0                       ; 01C6 _ C6. 04 08, 00
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
        mov     rax, qword [rbp-18H]                    ; 024C _ 48: 8B. 45, E8
        movsxd  rcx, dword [rbp-20H]                    ; 0250 _ 48: 63. 4D, E0
        movsx   edx, byte [rax+rcx]                     ; 0254 _ 0F BE. 14 08
        cmp     edx, 48                                 ; 0258 _ 83. FA, 30
; Note: Immediate operand could be made smaller by sign extension
        jl      ?_012                                   ; 025B _ 0F 8C, 00000032
        mov     rax, qword [rbp-18H]                    ; 0261 _ 48: 8B. 45, E8
        movsxd  rcx, dword [rbp-20H]                    ; 0265 _ 48: 63. 4D, E0
        movsx   edx, byte [rax+rcx]                     ; 0269 _ 0F BE. 14 08
        cmp     edx, 57                                 ; 026D _ 83. FA, 39
; Note: Immediate operand could be made smaller by sign extension
        jg      ?_012                                   ; 0270 _ 0F 8F, 0000001D
        imul    eax, dword [rbp-1CH], 10                ; 0276 _ 6B. 45, E4, 0A
        mov     rcx, qword [rbp-18H]                    ; 027A _ 48: 8B. 4D, E8
        movsxd  rdx, dword [rbp-20H]                    ; 027E _ 48: 63. 55, E0
        movsx   esi, byte [rcx+rdx]                     ; 0282 _ 0F BE. 34 11
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
        lea     rdi, [rel ?_021]                        ; 02C8 _ 48: 8D. 3D, 00000639(rel)
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
        lea     rdi, [rel _str_le+5E9H]                 ; 031B _ 48: 8D. 3D, 000005E9(rel)
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
        mov     rax, qword [rbp-8H]                     ; 0473 _ 48: 8B. 45, F8
        movsxd  rcx, dword [rbp-2CH]                    ; 0477 _ 48: 63. 4D, D4
        mov     dl, byte [rax+rcx]                      ; 047B _ 8A. 14 08
        mov     rax, qword [rbp-28H]                    ; 047E _ 48: 8B. 45, D8
        movsxd  rcx, dword [rbp-2CH]                    ; 0482 _ 48: 63. 4D, D4
        mov     byte [rax+rcx], dl                      ; 0486 _ 88. 14 08
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
        mov     rax, qword [rbp-10H]                    ; 04AA _ 48: 8B. 45, F0
        movsxd  rcx, dword [rbp-30H]                    ; 04AE _ 48: 63. 4D, D0
        mov     dl, byte [rax+rcx]                      ; 04B2 _ 8A. 14 08
        mov     rax, qword [rbp-28H]                    ; 04B5 _ 48: 8B. 45, D8
        mov     esi, dword [rbp-30H]                    ; 04B9 _ 8B. 75, D0
        add     esi, dword [rbp-14H]                    ; 04BC _ 03. 75, EC
        movsxd  rcx, esi                                ; 04BF _ 48: 63. CE
        mov     byte [rax+rcx], dl                      ; 04C2 _ 88. 14 08
        mov     eax, dword [rbp-30H]                    ; 04C5 _ 8B. 45, D0
        add     eax, 1                                  ; 04C8 _ 83. C0, 01
        mov     dword [rbp-30H], eax                    ; 04CB _ 89. 45, D0
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_018                                   ; 04CE _ E9, FFFFFFCB

?_019:  ; Local function
        mov     rax, qword [rbp-28H]                    ; 04D3 _ 48: 8B. 45, D8
        movsxd  rcx, dword [rbp-1CH]                    ; 04D7 _ 48: 63. 4D, E4
        mov     byte [rax+rcx], 0                       ; 04DB _ C6. 04 08, 00
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
        lea     rax, [rel _str_le+40FH]                 ; 04F8 _ 48: 8D. 05, 0000040F(rel)
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
        lea     rax, [rel _str_le+3E4H]                 ; 0528 _ 48: 8D. 05, 000003E4(rel)
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
        lea     rax, [rel _str_le+36CH]                 ; 0598 _ 48: 8D. 05, 0000036C(rel)
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
_work:  ; Function begin
        push    rbp                                     ; 0710 _ 55
        mov     rbp, rsp                                ; 0711 _ 48: 89. E5
        sub     rsp, 64                                 ; 0714 _ 48: 83. EC, 40
        mov     qword [rbp-8H], rdi                     ; 0718 _ 48: 89. 7D, F8
        mov     qword [rbp-10H], rsi                    ; 071C _ 48: 89. 75, F0
        mov     rsi, qword [rbp-8H]                     ; 0720 _ 48: 8B. 75, F8
        mov     qword [rbp-18H], rsi                    ; 0724 _ 48: 89. 75, E8
        mov     rsi, qword [rbp-10H]                    ; 0728 _ 48: 8B. 75, F0
        mov     qword [rbp-20H], rsi                    ; 072C _ 48: 89. 75, E0
        mov     rsi, qword [rbp-20H]                    ; 0730 _ 48: 8B. 75, E0
        cmp     qword [rsi+8H], 100                     ; 0734 _ 48: 83. 7E, 08, 64
; Note: Immediate operand could be made smaller by sign extension
        jg      ?_026                                   ; 0739 _ 0F 8F, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_027                                   ; 073F _ E9, 00000005

?_026:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_028                                   ; 0744 _ E9, 00000058

?_027:  lea     rdi, [rel _str_le+1C7H]                 ; 0749 _ 48: 8D. 3D, 000001C7(rel)
        mov     rax, qword [rbp-18H]                    ; 0750 _ 48: 8B. 45, E8
        mov     qword [rbp-28H], rax                    ; 0754 _ 48: 89. 45, D8
        call    _toMoStr                                ; 0758 _ E8, 00000000(rel)
        mov     rdi, qword [rbp-28H]                    ; 075D _ 48: 8B. 7D, D8
        mov     rsi, rax                                ; 0761 _ 48: 89. C6
        call    _str_add                                ; 0764 _ E8, 00000000(rel)
        mov     rsi, qword [rbp-20H]                    ; 0769 _ 48: 8B. 75, E0
        mov     rsi, qword [rsi]                        ; 076D _ 48: 8B. 36
        mov     rdi, rax                                ; 0770 _ 48: 89. C7
        call    _str_add                                ; 0773 _ E8, 00000000(rel)
        lea     rdi, [rel _str_le+19BH]                 ; 0778 _ 48: 8D. 3D, 0000019B(rel)
        mov     qword [rbp-30H], rax                    ; 077F _ 48: 89. 45, D0
        call    _toMoStr                                ; 0783 _ E8, 00000000(rel)
        mov     rdi, qword [rbp-30H]                    ; 0788 _ 48: 8B. 7D, D0
        mov     rsi, rax                                ; 078C _ 48: 89. C6
        call    _str_add                                ; 078F _ E8, 00000000(rel)
        mov     rdi, rax                                ; 0794 _ 48: 89. C7
        call    _println                                ; 0797 _ E8, 00000000(rel)
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_029                                   ; 079C _ E9, 00000053

?_028:  lea     rdi, [rel _str_le+16FH]                 ; 07A1 _ 48: 8D. 3D, 0000016F(rel)
        mov     rax, qword [rbp-18H]                    ; 07A8 _ 48: 8B. 45, E8
        mov     qword [rbp-38H], rax                    ; 07AC _ 48: 89. 45, C8
        call    _toMoStr                                ; 07B0 _ E8, 00000000(rel)
        mov     rdi, qword [rbp-38H]                    ; 07B5 _ 48: 8B. 7D, C8
        mov     rsi, rax                                ; 07B9 _ 48: 89. C6
        call    _str_add                                ; 07BC _ E8, 00000000(rel)
        mov     rsi, qword [rbp-20H]                    ; 07C1 _ 48: 8B. 75, E0
        mov     rsi, qword [rsi]                        ; 07C5 _ 48: 8B. 36
        mov     rdi, rax                                ; 07C8 _ 48: 89. C7
        call    _str_add                                ; 07CB _ E8, 00000000(rel)
        lea     rdi, [rel _str_le+159H]                 ; 07D0 _ 48: 8D. 3D, 00000159(rel)
        mov     qword [rbp-40H], rax                    ; 07D7 _ 48: 89. 45, C0
        call    _toMoStr                                ; 07DB _ E8, 00000000(rel)
        mov     rdi, qword [rbp-40H]                    ; 07E0 _ 48: 8B. 7D, C0
        mov     rsi, rax                                ; 07E4 _ 48: 89. C6
        call    _str_add                                ; 07E7 _ E8, 00000000(rel)
        mov     rdi, rax                                ; 07EC _ 48: 89. C7
        call    _println                                ; 07EF _ E8, 00000000(rel)
?_029:  mov     rax, qword [rel _work_anger_]           ; 07F4 _ 48: 8B. 05, 00000000(GOT r)
        mov     rcx, qword [rbp-20H]                    ; 07FB _ 48: 8B. 4D, E0
        mov     rcx, qword [rcx+8H]                     ; 07FF _ 48: 8B. 49, 08
        add     rcx, qword [rax]                        ; 0803 _ 48: 03. 08
        mov     rax, qword [rbp-20H]                    ; 0806 _ 48: 8B. 45, E0
        mov     qword [rax+8H], rcx                     ; 080A _ 48: 89. 48, 08
        add     rsp, 64                                 ; 080E _ 48: 83. C4, 40
        pop     rbp                                     ; 0812 _ 5D
        ret                                             ; 0813 _ C3
; _work End of function

; Filling space: 0CH
; Filler type: Multi-byte NOP
;       db 66H, 66H, 66H, 2EH, 0FH, 1FH, 84H, 00H
;       db 00H, 00H, 00H, 00H

ALIGN   16

_main:  ; Function begin
        push    rbp                                     ; 0820 _ 55
        mov     rbp, rsp                                ; 0821 _ 48: 89. E5
        sub     rsp, 32                                 ; 0824 _ 48: 83. EC, 20
        mov     eax, 16                                 ; 0828 _ B8, 00000010
        mov     edi, eax                                ; 082D _ 89. C7
        mov     rcx, qword [rel _work_anger_]           ; 082F _ 48: 8B. 0D, 00000000(GOT r)
        mov     rdx, qword [rel _init_anger_]           ; 0836 _ 48: 8B. 15, 00000000(GOT r)
        mov     qword [rdx], 100                        ; 083D _ 48: C7. 02, 00000064
        mov     qword [rcx], 10                         ; 0844 _ 48: C7. 01, 0000000A
        call    ___lib_malloc                           ; 084B _ E8, 00000000(rel)
        lea     rdi, [rel ?_008]                        ; 0850 _ 48: 8D. 3D, 000000F0(rel)
        mov     qword [rbp-8H], rax                     ; 0857 _ 48: 89. 45, F8
        mov     rax, qword [rbp-8H]                     ; 085B _ 48: 8B. 45, F8
        mov     qword [rbp-10H], rax                    ; 085F _ 48: 89. 45, F0
        call    _toMoStr                                ; 0863 _ E8, 00000000(rel)
        mov     esi, 16                                 ; 0868 _ BE, 00000010
        mov     edi, esi                                ; 086D _ 89. F7
        mov     rcx, qword [rbp-10H]                    ; 086F _ 48: 8B. 4D, F0
        mov     qword [rcx], rax                        ; 0873 _ 48: 89. 01
        mov     rax, qword [rbp-10H]                    ; 0876 _ 48: 8B. 45, F0
        mov     qword [rax+8H], 0                       ; 087A _ 48: C7. 40, 08, 00000000
        call    ___lib_malloc                           ; 0882 _ E8, 00000000(rel)
        lea     rdi, [rel _str_le+0C8H]                 ; 0887 _ 48: 8D. 3D, 000000C8(rel)
        mov     qword [rbp-20H], rax                    ; 088E _ 48: 89. 45, E0
        mov     rax, qword [rbp-20H]                    ; 0892 _ 48: 8B. 45, E0
        mov     qword [rbp-18H], rax                    ; 0896 _ 48: 89. 45, E8
        call    _toMoStr                                ; 089A _ E8, 00000000(rel)
        lea     rdi, [rel _str_le+0C0H]                 ; 089F _ 48: 8D. 3D, 000000C0(rel)
        mov     rcx, qword [rel _init_anger_]           ; 08A6 _ 48: 8B. 0D, 00000000(GOT r)
        mov     rdx, qword [rbp-18H]                    ; 08AD _ 48: 8B. 55, E8
        mov     qword [rdx], rax                        ; 08B1 _ 48: 89. 02
        mov     rax, qword [rcx]                        ; 08B4 _ 48: 8B. 01
        mov     rcx, qword [rbp-18H]                    ; 08B7 _ 48: 8B. 4D, E8
        mov     qword [rcx+8H], rax                     ; 08BB _ 48: 89. 41, 08
        call    _toMoStr                                ; 08BF _ E8, 00000000(rel)
        mov     rsi, qword [rbp-10H]                    ; 08C4 _ 48: 8B. 75, F0
        mov     rdi, rax                                ; 08C8 _ 48: 89. C7
        call    _work                                   ; 08CB _ E8, 00000000(rel)
        lea     rdi, [rel _str_le+92H]                  ; 08D0 _ 48: 8D. 3D, 00000092(rel)
        call    _toMoStr                                ; 08D7 _ E8, 00000000(rel)
        mov     rsi, qword [rbp-18H]                    ; 08DC _ 48: 8B. 75, E8
        mov     rdi, rax                                ; 08E0 _ 48: 89. C7
        call    _work                                   ; 08E3 _ E8, 00000000(rel)
        lea     rdi, [rel _str_le+7AH]                  ; 08E8 _ 48: 8D. 3D, 0000007A(rel)
        call    _toMoStr                                ; 08EF _ E8, 00000000(rel)
        mov     rsi, qword [rbp-18H]                    ; 08F4 _ 48: 8B. 75, E8
        mov     rdi, rax                                ; 08F8 _ 48: 89. C7
        call    _work                                   ; 08FB _ E8, 00000000(rel)
        xor     eax, eax                                ; 0900 _ 31. C0
        add     rsp, 32                                 ; 0902 _ 48: 83. C4, 20
        pop     rbp                                     ; 0906 _ 5D
        ret                                             ; 0907 _ C3
; _main End of function


SECTION ._TEXT.__cstring align=1 noexecute              ; section number 2, data

        db 25H, 64H, 00H, 25H, 73H, 00H, 25H, 6CH       ; 0908 _ %d.%s.%l
        db 64H, 0AH, 00H, 25H, 6CH, 64H, 00H, 2CH       ; 0910 _ d..%ld.,
        db 20H, 00H, 20H, 65H, 6EH, 6AH, 6FH, 79H       ; 0918 _  . enjoy
        db 73H, 20H, 74H, 68H, 69H, 73H, 20H, 77H       ; 0920 _ s this w
        db 6FH, 72H, 6BH, 2EH, 20H, 58H, 44H, 00H       ; 0928 _ ork. XD.
        db 20H, 77H, 61H, 6EH, 74H, 73H, 20H, 74H       ; 0930 _  wants t
        db 6FH, 20H, 67H, 69H, 76H, 65H, 20H, 75H       ; 0938 _ o give u
        db 70H, 21H, 21H, 21H, 21H, 21H, 00H, 74H       ; 0940 _ p!!!!!.t
        db 68H, 65H, 20H, 6CH, 65H, 61H, 64H, 69H       ; 0948 _ he leadi
        db 6EH, 67H, 20H, 54H, 41H, 00H, 74H, 68H       ; 0950 _ ng TA.th
        db 65H, 20H, 73H, 74H, 72H, 69H, 6BH, 69H       ; 0958 _ e striki
        db 6EH, 67H, 20H, 54H, 41H, 00H, 4DH, 52H       ; 0960 _ ng TA.MR
        db 00H, 4DH, 61H, 72H, 73H, 00H                 ; 0968 _ .Mars.


