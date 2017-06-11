; Disassembly of file: output.o
; Sun Jun 11 22:22:45 2017
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
global _getInt: function
global _getString
global _size
global _toMoStr
global _str_add
global ___lib_printlnInt
global ___lib_printInt
global ___lib_malloc
global _println: function
global _print
global _toString: function
global _fibo: function
global _main

extern _strlen                                          ; near
extern _strcmp                                          ; near
extern _scanf                                           ; near
extern _puts                                            ; near
extern _printf                                          ; near
extern _malloc                                          ; near
extern ___strcpy_chk                                    ; near


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
        lea     rdi, [rel _str_le+560H]                 ; 02C8 _ 48: 8D. 3D, 00000560(rel)
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
        lea     rdi, [rel _str_le+510H]                 ; 031B _ 48: 8D. 3D, 00000510(rel)
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
        lea     rax, [rel _str_le+336H]                 ; 04F8 _ 48: 8D. 05, 00000336(rel)
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
        lea     rax, [rel _str_le+30BH]                 ; 0528 _ 48: 8D. 05, 0000030B(rel)
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
        lea     rax, [rel ?_012]                        ; 0598 _ 48: 8D. 05, 00000293(rel)
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
_fibo:  ; Function begin
        push    rbp                                     ; 0710 _ 55
        mov     rbp, rsp                                ; 0711 _ 48: 89. E5
        sub     rsp, 48                                 ; 0714 _ 48: 83. EC, 30
        mov     qword [rbp-10H], rdi                    ; 0718 _ 48: 89. 7D, F0
        mov     rdi, qword [rbp-10H]                    ; 071C _ 48: 8B. 7D, F0
        mov     qword [rbp-18H], rdi                    ; 0720 _ 48: 89. 7D, E8
        cmp     qword [rbp-18H], 2                      ; 0724 _ 48: 83. 7D, E8, 02
; Note: Immediate operand could be made smaller by sign extension
        jge     ?_026                                   ; 0729 _ 0F 8D, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_027                                   ; 072F _ E9, 00000005

?_026:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_028                                   ; 0734 _ E9, 0000000D

?_027:  mov     rax, qword [rbp-18H]                    ; 0739 _ 48: 8B. 45, E8
        mov     qword [rbp-8H], rax                     ; 073D _ 48: 89. 45, F8
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_029                                   ; 0741 _ E9, 00000034

?_028:  mov     rax, qword [rbp-18H]                    ; 0746 _ 48: 8B. 45, E8
        sub     rax, 2                                  ; 074A _ 48: 83. E8, 02
        mov     rdi, rax                                ; 074E _ 48: 89. C7
        call    _fibo                                   ; 0751 _ E8, FFFFFFBA
        mov     qword [rbp-20H], rax                    ; 0756 _ 48: 89. 45, E0
        mov     rax, qword [rbp-18H]                    ; 075A _ 48: 8B. 45, E8
        sub     rax, 1                                  ; 075E _ 48: 83. E8, 01
        mov     rdi, rax                                ; 0762 _ 48: 89. C7
        call    _fibo                                   ; 0765 _ E8, FFFFFFA6
        mov     qword [rbp-28H], rax                    ; 076A _ 48: 89. 45, D8
        mov     rax, qword [rbp-28H]                    ; 076E _ 48: 8B. 45, D8
        add     rax, qword [rbp-20H]                    ; 0772 _ 48: 03. 45, E0
        mov     qword [rbp-8H], rax                     ; 0776 _ 48: 89. 45, F8
?_029:  mov     rax, qword [rbp-8H]                     ; 077A _ 48: 8B. 45, F8
        add     rsp, 48                                 ; 077E _ 48: 83. C4, 30
        pop     rbp                                     ; 0782 _ 5D
        ret                                             ; 0783 _ C3
; _fibo End of function

; Filling space: 0CH
; Filler type: Multi-byte NOP
;       db 66H, 66H, 66H, 2EH, 0FH, 1FH, 84H, 00H
;       db 00H, 00H, 00H, 00H

ALIGN   16

_main:  ; Function begin
        push    rbp                                     ; 0790 _ 55
        mov     rbp, rsp                                ; 0791 _ 48: 89. E5
        sub     rsp, 64                                 ; 0794 _ 48: 83. EC, 40
        mov     dword [rbp-4H], 0                       ; 0798 _ C7. 45, FC, 00000000
        call    _getInt                                 ; 079F _ E8, 00000000(rel)
        mov     qword [rbp-20H], rax                    ; 07A4 _ 48: 89. 45, E0
        mov     rax, qword [rbp-20H]                    ; 07A8 _ 48: 8B. 45, E0
        mov     qword [rbp-30H], rax                    ; 07AC _ 48: 89. 45, D0
        mov     rdi, qword [rbp-30H]                    ; 07B0 _ 48: 8B. 7D, D0
        call    _fibo                                   ; 07B4 _ E8, 00000000(rel)
        mov     qword [rbp-18H], rax                    ; 07B9 _ 48: 89. 45, E8
        mov     rdi, qword [rbp-18H]                    ; 07BD _ 48: 8B. 7D, E8
        call    _toString                               ; 07C1 _ E8, 00000000(rel)
        mov     qword [rbp-10H], rax                    ; 07C6 _ 48: 89. 45, F0
        mov     rdi, qword [rbp-10H]                    ; 07CA _ 48: 8B. 7D, F0
        call    _println                                ; 07CE _ E8, 00000000(rel)
        mov     qword [rbp-28H], 0                      ; 07D3 _ 48: C7. 45, D8, 00000000
?_030:  cmp     qword [rbp-28H], 100                    ; 07DB _ 48: 83. 7D, D8, 64
; Note: Immediate operand could be made smaller by sign extension
        jg      ?_031                                   ; 07E0 _ 0F 8F, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_032                                   ; 07E6 _ E9, 00000005

?_031:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_033                                   ; 07EB _ E9, 00000037

?_032:  mov     eax, 30                                 ; 07F0 _ B8, 0000001E
        mov     edi, eax                                ; 07F5 _ 89. C7
        call    _fibo                                   ; 07F7 _ E8, 00000000(rel)
        mov     qword [rbp-40H], rax                    ; 07FC _ 48: 89. 45, C0
        mov     rdi, qword [rbp-40H]                    ; 0800 _ 48: 8B. 7D, C0
        call    _toString                               ; 0804 _ E8, 00000000(rel)
        mov     qword [rbp-38H], rax                    ; 0809 _ 48: 89. 45, C8
        mov     rdi, qword [rbp-38H]                    ; 080D _ 48: 8B. 7D, C8
        call    _println                                ; 0811 _ E8, 00000000(rel)
        mov     rax, qword [rbp-28H]                    ; 0816 _ 48: 8B. 45, D8
        add     rax, 1                                  ; 081A _ 48: 83. C0, 01
        mov     qword [rbp-28H], rax                    ; 081E _ 48: 89. 45, D8
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_030                                   ; 0822 _ E9, FFFFFFB4
; _main End of function

?_033:  ; Local function
        xor     eax, eax                                ; 0827 _ 31. C0
        add     rsp, 64                                 ; 0829 _ 48: 83. C4, 40
        pop     rbp                                     ; 082D _ 5D
        ret                                             ; 082E _ C3


SECTION ._TEXT.__cstring align=1 noexecute              ; section number 2, data

        db 25H, 64H, 00H, 25H, 73H, 00H, 25H, 6CH       ; 082F _ %d.%s.%l
        db 64H, 0AH, 00H, 25H, 6CH, 64H, 00H            ; 0837 _ d..%ld.


