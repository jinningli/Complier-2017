; Disassembly of file: output.o
; Sat Jun 10 19:58:31 2017
; Mode: 64 bits
; Syntax: YASM/NASM
; Instruction set: Pentium Pro, x64

default rel

global _toMoStr: function
global _str_add: function
global ___lib_printlnInt
global ___lib_printInt
global ___lib_malloc: function
global _println: function
global _print: function
global _toString: function
global _getcount: function
global _main

extern _strlen                                          ; near
extern _puts                                            ; near
extern _printf                                          ; near
extern _malloc                                          ; near
extern ___strcpy_chk                                    ; near
extern _count                                           ; qword


SECTION ._TEXT.__text align=16 execute                  ; section number 1, code

_toMoStr:; Function begin
        push    rbp                                     ; 0000 _ 55
        mov     rbp, rsp                                ; 0001 _ 48: 89. E5
        sub     rsp, 32                                 ; 0004 _ 48: 83. EC, 20
        mov     qword [rbp-8H], rdi                     ; 0008 _ 48: 89. 7D, F8
        mov     rdi, qword [rbp-8H]                     ; 000C _ 48: 8B. 7D, F8
        call    _strlen                                 ; 0010 _ E8, 00000000(rel)
        mov     ecx, eax                                ; 0015 _ 89. C1
        mov     dword [rbp-0CH], ecx                    ; 0017 _ 89. 4D, F4
        movsxd  rax, dword [rbp-0CH]                    ; 001A _ 48: 63. 45, F4
        add     rax, 4                                  ; 001E _ 48: 83. C0, 04
        add     rax, 1                                  ; 0022 _ 48: 83. C0, 01
        mov     rdi, rax                                ; 0026 _ 48: 89. C7
        call    _malloc                                 ; 0029 _ E8, 00000000(rel)
        mov     rdx, -1                                 ; 002E _ 48: C7. C2, FFFFFFFF
        mov     qword [rbp-18H], rax                    ; 0035 _ 48: 89. 45, E8
        mov     ecx, dword [rbp-0CH]                    ; 0039 _ 8B. 4D, F4
        mov     rax, qword [rbp-18H]                    ; 003C _ 48: 8B. 45, E8
        mov     dword [rax], ecx                        ; 0040 _ 89. 08
        mov     rax, qword [rbp-18H]                    ; 0042 _ 48: 8B. 45, E8
        add     rax, 4                                  ; 0046 _ 48: 83. C0, 04
        mov     qword [rbp-18H], rax                    ; 004A _ 48: 89. 45, E8
        mov     rdi, qword [rbp-18H]                    ; 004E _ 48: 8B. 7D, E8
        mov     rsi, qword [rbp-8H]                     ; 0052 _ 48: 8B. 75, F8
        call    ___strcpy_chk                           ; 0056 _ E8, 00000000(rel)
        mov     rdx, qword [rbp-18H]                    ; 005B _ 48: 8B. 55, E8
        mov     qword [rbp-20H], rax                    ; 005F _ 48: 89. 45, E0
        mov     rax, rdx                                ; 0063 _ 48: 89. D0
        add     rsp, 32                                 ; 0066 _ 48: 83. C4, 20
        pop     rbp                                     ; 006A _ 5D
        ret                                             ; 006B _ C3
; _toMoStr End of function

; Filling space: 4H
; Filler type: Multi-byte NOP
;       db 0FH, 1FH, 40H, 00H

ALIGN   8

_str_add:; Function begin
        push    rbp                                     ; 0070 _ 55
        mov     rbp, rsp                                ; 0071 _ 48: 89. E5
        sub     rsp, 48                                 ; 0074 _ 48: 83. EC, 30
        mov     qword [rbp-8H], rdi                     ; 0078 _ 48: 89. 7D, F8
        mov     qword [rbp-10H], rsi                    ; 007C _ 48: 89. 75, F0
        mov     rsi, qword [rbp-8H]                     ; 0080 _ 48: 8B. 75, F8
        sub     rsi, 4                                  ; 0084 _ 48: 83. EE, 04
        mov     eax, dword [rsi]                        ; 0088 _ 8B. 06
        mov     dword [rbp-14H], eax                    ; 008A _ 89. 45, EC
        mov     rsi, qword [rbp-10H]                    ; 008D _ 48: 8B. 75, F0
        sub     rsi, 4                                  ; 0091 _ 48: 83. EE, 04
        mov     eax, dword [rsi]                        ; 0095 _ 8B. 06
        mov     dword [rbp-18H], eax                    ; 0097 _ 89. 45, E8
        mov     eax, dword [rbp-14H]                    ; 009A _ 8B. 45, EC
        add     eax, dword [rbp-18H]                    ; 009D _ 03. 45, E8
        mov     dword [rbp-1CH], eax                    ; 00A0 _ 89. 45, E4
        movsxd  rsi, dword [rbp-1CH]                    ; 00A3 _ 48: 63. 75, E4
        add     rsi, 4                                  ; 00A7 _ 48: 83. C6, 04
        add     rsi, 1                                  ; 00AB _ 48: 83. C6, 01
        mov     rdi, rsi                                ; 00AF _ 48: 89. F7
        call    _malloc                                 ; 00B2 _ E8, 00000000(rel)
        mov     qword [rbp-28H], rax                    ; 00B7 _ 48: 89. 45, D8
        mov     ecx, dword [rbp-1CH]                    ; 00BB _ 8B. 4D, E4
        mov     rax, qword [rbp-28H]                    ; 00BE _ 48: 8B. 45, D8
        mov     dword [rax], ecx                        ; 00C2 _ 89. 08
        mov     rax, qword [rbp-28H]                    ; 00C4 _ 48: 8B. 45, D8
        add     rax, 4                                  ; 00C8 _ 48: 83. C0, 04
        mov     qword [rbp-28H], rax                    ; 00CC _ 48: 89. 45, D8
        mov     dword [rbp-2CH], 0                      ; 00D0 _ C7. 45, D4, 00000000
?_001:  mov     eax, dword [rbp-2CH]                    ; 00D7 _ 8B. 45, D4
        cmp     eax, dword [rbp-14H]                    ; 00DA _ 3B. 45, EC
; Note: Immediate operand could be made smaller by sign extension
        jge     ?_002                                   ; 00DD _ 0F 8D, 00000024
        movsxd  rax, dword [rbp-2CH]                    ; 00E3 _ 48: 63. 45, D4
        mov     rcx, qword [rbp-8H]                     ; 00E7 _ 48: 8B. 4D, F8
        mov     dl, byte [rcx+rax]                      ; 00EB _ 8A. 14 01
        movsxd  rax, dword [rbp-2CH]                    ; 00EE _ 48: 63. 45, D4
        mov     rcx, qword [rbp-28H]                    ; 00F2 _ 48: 8B. 4D, D8
        mov     byte [rcx+rax], dl                      ; 00F6 _ 88. 14 01
        mov     eax, dword [rbp-2CH]                    ; 00F9 _ 8B. 45, D4
        add     eax, 1                                  ; 00FC _ 83. C0, 01
        mov     dword [rbp-2CH], eax                    ; 00FF _ 89. 45, D4
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_001                                   ; 0102 _ E9, FFFFFFD0
; _str_add End of function

?_002:  ; Local function
        mov     dword [rbp-30H], 0                      ; 0107 _ C7. 45, D0, 00000000
?_003:  mov     eax, dword [rbp-30H]                    ; 010E _ 8B. 45, D0
        cmp     eax, dword [rbp-18H]                    ; 0111 _ 3B. 45, E8
; Note: Immediate operand could be made smaller by sign extension
        jge     ?_004                                   ; 0114 _ 0F 8D, 00000029
        movsxd  rax, dword [rbp-30H]                    ; 011A _ 48: 63. 45, D0
        mov     rcx, qword [rbp-10H]                    ; 011E _ 48: 8B. 4D, F0
        mov     dl, byte [rcx+rax]                      ; 0122 _ 8A. 14 01
        mov     esi, dword [rbp-30H]                    ; 0125 _ 8B. 75, D0
        add     esi, dword [rbp-14H]                    ; 0128 _ 03. 75, EC
        movsxd  rax, esi                                ; 012B _ 48: 63. C6
        mov     rcx, qword [rbp-28H]                    ; 012E _ 48: 8B. 4D, D8
        mov     byte [rcx+rax], dl                      ; 0132 _ 88. 14 01
        mov     eax, dword [rbp-30H]                    ; 0135 _ 8B. 45, D0
        add     eax, 1                                  ; 0138 _ 83. C0, 01
        mov     dword [rbp-30H], eax                    ; 013B _ 89. 45, D0
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_003                                   ; 013E _ E9, FFFFFFCB

?_004:  ; Local function
        movsxd  rax, dword [rbp-1CH]                    ; 0143 _ 48: 63. 45, E4
        mov     rcx, qword [rbp-28H]                    ; 0147 _ 48: 8B. 4D, D8
        mov     byte [rcx+rax], 0                       ; 014B _ C6. 04 01, 00
        mov     rax, qword [rbp-28H]                    ; 014F _ 48: 8B. 45, D8
        add     rsp, 48                                 ; 0153 _ 48: 83. C4, 30
        pop     rbp                                     ; 0157 _ 5D
        ret                                             ; 0158 _ C3

; Filling space: 7H
; Filler type: Multi-byte NOP
;       db 0FH, 1FH, 80H, 00H, 00H, 00H, 00H

ALIGN   8

___lib_printlnInt:; Function begin
        push    rbp                                     ; 0160 _ 55
        mov     rbp, rsp                                ; 0161 _ 48: 89. E5
        sub     rsp, 16                                 ; 0164 _ 48: 83. EC, 10
        lea     rax, [rel _toMoStr+304H]                ; 0168 _ 48: 8D. 05, 00000304(rel)
        mov     qword [rbp-8H], rdi                     ; 016F _ 48: 89. 7D, F8
        mov     rsi, qword [rbp-8H]                     ; 0173 _ 48: 8B. 75, F8
        mov     rdi, rax                                ; 0177 _ 48: 89. C7
        mov     al, 0                                   ; 017A _ B0, 00
        call    _printf                                 ; 017C _ E8, 00000000(rel)
        mov     dword [rbp-0CH], eax                    ; 0181 _ 89. 45, F4
        add     rsp, 16                                 ; 0184 _ 48: 83. C4, 10
        pop     rbp                                     ; 0188 _ 5D
        ret                                             ; 0189 _ C3
; ___lib_printlnInt End of function

; Filling space: 6H
; Filler type: Multi-byte NOP
;       db 66H, 0FH, 1FH, 44H, 00H, 00H

ALIGN   8

___lib_printInt:; Function begin
        push    rbp                                     ; 0190 _ 55
        mov     rbp, rsp                                ; 0191 _ 48: 89. E5
        sub     rsp, 16                                 ; 0194 _ 48: 83. EC, 10
        lea     rax, [rel _toMoStr+2D9H]                ; 0198 _ 48: 8D. 05, 000002D9(rel)
        mov     qword [rbp-8H], rdi                     ; 019F _ 48: 89. 7D, F8
        mov     rsi, qword [rbp-8H]                     ; 01A3 _ 48: 8B. 75, F8
        mov     rdi, rax                                ; 01A7 _ 48: 89. C7
        mov     al, 0                                   ; 01AA _ B0, 00
        call    _printf                                 ; 01AC _ E8, 00000000(rel)
        mov     dword [rbp-0CH], eax                    ; 01B1 _ 89. 45, F4
        add     rsp, 16                                 ; 01B4 _ 48: 83. C4, 10
        pop     rbp                                     ; 01B8 _ 5D
        ret                                             ; 01B9 _ C3
; ___lib_printInt End of function

; Filling space: 6H
; Filler type: Multi-byte NOP
;       db 66H, 0FH, 1FH, 44H, 00H, 00H

ALIGN   8

___lib_malloc:; Function begin
        push    rbp                                     ; 01C0 _ 55
        mov     rbp, rsp                                ; 01C1 _ 48: 89. E5
        sub     rsp, 16                                 ; 01C4 _ 48: 83. EC, 10
        mov     qword [rbp-8H], rdi                     ; 01C8 _ 48: 89. 7D, F8
        mov     rdi, qword [rbp-8H]                     ; 01CC _ 48: 8B. 7D, F8
        call    _malloc                                 ; 01D0 _ E8, 00000000(rel)
        add     rsp, 16                                 ; 01D5 _ 48: 83. C4, 10
        pop     rbp                                     ; 01D9 _ 5D
        ret                                             ; 01DA _ C3
; ___lib_malloc End of function

; Filling space: 5H
; Filler type: Multi-byte NOP
;       db 0FH, 1FH, 44H, 00H, 00H

ALIGN   8

_println:; Function begin
        push    rbp                                     ; 01E0 _ 55
        mov     rbp, rsp                                ; 01E1 _ 48: 89. E5
        sub     rsp, 16                                 ; 01E4 _ 48: 83. EC, 10
        mov     qword [rbp-8H], rdi                     ; 01E8 _ 48: 89. 7D, F8
        mov     rdi, qword [rbp-8H]                     ; 01EC _ 48: 8B. 7D, F8
        call    _puts                                   ; 01F0 _ E8, 00000000(rel)
        mov     dword [rbp-0CH], eax                    ; 01F5 _ 89. 45, F4
        add     rsp, 16                                 ; 01F8 _ 48: 83. C4, 10
        pop     rbp                                     ; 01FC _ 5D
        ret                                             ; 01FD _ C3
; _println End of function

; Filling space: 2H
; Filler type: NOP with prefixes
;       db 66H, 90H

ALIGN   8

_print: ; Function begin
        push    rbp                                     ; 0200 _ 55
        mov     rbp, rsp                                ; 0201 _ 48: 89. E5
        sub     rsp, 16                                 ; 0204 _ 48: 83. EC, 10
        lea     rax, [rel _toMoStr+26DH]                ; 0208 _ 48: 8D. 05, 0000026D(rel)
        mov     qword [rbp-8H], rdi                     ; 020F _ 48: 89. 7D, F8
        mov     rsi, qword [rbp-8H]                     ; 0213 _ 48: 8B. 75, F8
        mov     rdi, rax                                ; 0217 _ 48: 89. C7
        mov     al, 0                                   ; 021A _ B0, 00
        call    _printf                                 ; 021C _ E8, 00000000(rel)
        mov     dword [rbp-0CH], eax                    ; 0221 _ 89. 45, F4
        add     rsp, 16                                 ; 0224 _ 48: 83. C4, 10
        pop     rbp                                     ; 0228 _ 5D
        ret                                             ; 0229 _ C3
; _print End of function

; Filling space: 6H
; Filler type: Multi-byte NOP
;       db 66H, 0FH, 1FH, 44H, 00H, 00H

ALIGN   8

_toString:; Function begin
        push    rbp                                     ; 0230 _ 55
        mov     rbp, rsp                                ; 0231 _ 48: 89. E5
        sub     rsp, 48                                 ; 0234 _ 48: 83. EC, 30
        mov     eax, 16                                 ; 0238 _ B8, 00000010
        mov     ecx, eax                                ; 023D _ 89. C1
        mov     qword [rbp-8H], rdi                     ; 023F _ 48: 89. 7D, F8
        mov     rdi, rcx                                ; 0243 _ 48: 89. CF
        call    _malloc                                 ; 0246 _ E8, 00000000(rel)
        mov     qword [rbp-10H], rax                    ; 024B _ 48: 89. 45, F0
        mov     rax, qword [rbp-10H]                    ; 024F _ 48: 8B. 45, F0
        add     rax, 4                                  ; 0253 _ 48: 83. C0, 04
        mov     qword [rbp-10H], rax                    ; 0257 _ 48: 89. 45, F0
        mov     rax, qword [rbp-10H]                    ; 025B _ 48: 8B. 45, F0
        mov     qword [rbp-18H], rax                    ; 025F _ 48: 89. 45, E8
        cmp     qword [rbp-8H], 0                       ; 0263 _ 48: 83. 7D, F8, 00
; Note: Immediate operand could be made smaller by sign extension
        jge     ?_005                                   ; 0268 _ 0F 8D, 0000001E
        xor     eax, eax                                ; 026E _ 31. C0
        mov     ecx, eax                                ; 0270 _ 89. C1
        mov     rdx, qword [rbp-18H]                    ; 0272 _ 48: 8B. 55, E8
        mov     rsi, rdx                                ; 0276 _ 48: 89. D6
        add     rsi, 1                                  ; 0279 _ 48: 83. C6, 01
        mov     qword [rbp-18H], rsi                    ; 027D _ 48: 89. 75, E8
        mov     byte [rdx], 45                          ; 0281 _ C6. 02, 2D
        sub     rcx, qword [rbp-8H]                     ; 0284 _ 48: 2B. 4D, F8
        mov     qword [rbp-8H], rcx                     ; 0288 _ 48: 89. 4D, F8
?_005:  cmp     qword [rbp-8H], 0                       ; 028C _ 48: 83. 7D, F8, 00
; Note: Immediate operand could be made smaller by sign extension
        jne     ?_006                                   ; 0291 _ 0F 85, 00000012
        mov     rax, qword [rbp-18H]                    ; 0297 _ 48: 8B. 45, E8
        mov     rcx, rax                                ; 029B _ 48: 89. C1
        add     rcx, 1                                  ; 029E _ 48: 83. C1, 01
        mov     qword [rbp-18H], rcx                    ; 02A2 _ 48: 89. 4D, E8
        mov     byte [rax], 48                          ; 02A6 _ C6. 00, 30
?_006:  mov     rax, qword [rbp-18H]                    ; 02A9 _ 48: 8B. 45, E8
        mov     qword [rbp-20H], rax                    ; 02AD _ 48: 89. 45, E0
?_007:  cmp     qword [rbp-8H], 0                       ; 02B1 _ 48: 83. 7D, F8, 00
; Note: Immediate operand could be made smaller by sign extension
        je      ?_008                                   ; 02B6 _ 0F 84, 00000049
        mov     eax, 10                                 ; 02BC _ B8, 0000000A
        mov     ecx, eax                                ; 02C1 _ 89. C1
        mov     rax, qword [rbp-8H]                     ; 02C3 _ 48: 8B. 45, F8
        cqo                                             ; 02C7 _ 48: 99
        idiv    rcx                                     ; 02C9 _ 48: F7. F9
        mov     esi, eax                                ; 02CC _ 89. C6
        mov     dword [rbp-24H], esi                    ; 02CE _ 89. 75, DC
        mov     rax, qword [rbp-8H]                     ; 02D1 _ 48: 8B. 45, F8
        add     rax, 48                                 ; 02D5 _ 48: 83. C0, 30
        imul    esi, dword [rbp-24H], 10                ; 02D9 _ 6B. 75, DC, 0A
        movsxd  rcx, esi                                ; 02DD _ 48: 63. CE
        sub     rax, rcx                                ; 02E0 _ 48: 29. C8
        mov     dil, al                                 ; 02E3 _ 40: 88. C7
        mov     rax, qword [rbp-18H]                    ; 02E6 _ 48: 8B. 45, E8
        mov     rcx, rax                                ; 02EA _ 48: 89. C1
        add     rcx, 1                                  ; 02ED _ 48: 83. C1, 01
        mov     qword [rbp-18H], rcx                    ; 02F1 _ 48: 89. 4D, E8
        mov     byte [rax], dil                         ; 02F5 _ 40: 88. 38
        movsxd  rax, dword [rbp-24H]                    ; 02F8 _ 48: 63. 45, DC
        mov     qword [rbp-8H], rax                     ; 02FC _ 48: 89. 45, F8
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_007                                   ; 0300 _ E9, FFFFFFAC
; _toString End of function

?_008:  ; Local function
        mov     rax, qword [rbp-18H]                    ; 0305 _ 48: 8B. 45, E8
        mov     byte [rax], 0                           ; 0309 _ C6. 00, 00
        mov     rax, qword [rbp-18H]                    ; 030C _ 48: 8B. 45, E8
        mov     rcx, qword [rbp-10H]                    ; 0310 _ 48: 8B. 4D, F0
        sub     rax, rcx                                ; 0314 _ 48: 29. C8
        mov     edx, eax                                ; 0317 _ 89. C2
        mov     rax, qword [rbp-10H]                    ; 0319 _ 48: 8B. 45, F0
        mov     dword [rax-4H], edx                     ; 031D _ 89. 50, FC
        mov     rax, qword [rbp-18H]                    ; 0320 _ 48: 8B. 45, E8
        add     rax, -1                                 ; 0324 _ 48: 83. C0, FF
        mov     qword [rbp-18H], rax                    ; 0328 _ 48: 89. 45, E8
?_009:  mov     rax, qword [rbp-20H]                    ; 032C _ 48: 8B. 45, E0
        cmp     rax, qword [rbp-18H]                    ; 0330 _ 48: 3B. 45, E8
; Note: Immediate operand could be made smaller by sign extension
        ja      ?_010                                   ; 0334 _ 0F 87, 0000003B
        mov     rax, qword [rbp-20H]                    ; 033A _ 48: 8B. 45, E0
        mov     cl, byte [rax]                          ; 033E _ 8A. 08
        mov     byte [rbp-25H], cl                      ; 0340 _ 88. 4D, DB
        mov     rax, qword [rbp-18H]                    ; 0343 _ 48: 8B. 45, E8
        mov     cl, byte [rax]                          ; 0347 _ 8A. 08
        mov     rax, qword [rbp-20H]                    ; 0349 _ 48: 8B. 45, E0
        mov     byte [rax], cl                          ; 034D _ 88. 08
        mov     cl, byte [rbp-25H]                      ; 034F _ 8A. 4D, DB
        mov     rax, qword [rbp-18H]                    ; 0352 _ 48: 8B. 45, E8
        mov     byte [rax], cl                          ; 0356 _ 88. 08
        mov     rax, qword [rbp-20H]                    ; 0358 _ 48: 8B. 45, E0
        add     rax, 1                                  ; 035C _ 48: 83. C0, 01
        mov     qword [rbp-20H], rax                    ; 0360 _ 48: 89. 45, E0
        mov     rax, qword [rbp-18H]                    ; 0364 _ 48: 8B. 45, E8
        add     rax, -1                                 ; 0368 _ 48: 83. C0, FF
        mov     qword [rbp-18H], rax                    ; 036C _ 48: 89. 45, E8
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_009                                   ; 0370 _ E9, FFFFFFB7

?_010:  ; Local function
        mov     rax, qword [rbp-10H]                    ; 0375 _ 48: 8B. 45, F0
        add     rsp, 48                                 ; 0379 _ 48: 83. C4, 30
        pop     rbp                                     ; 037D _ 5D
        ret                                             ; 037E _ C3

        nop                                             ; 037F _ 90

ALIGN   16
_getcount:; Function begin
        push    rbp                                     ; 0380 _ 55
        mov     rbp, rsp                                ; 0381 _ 48: 89. E5
        mov     qword [rbp-8H], rdi                     ; 0384 _ 48: 89. 7D, F8
        mov     rdi, qword [rbp-8H]                     ; 0388 _ 48: 8B. 7D, F8
        mov     qword [rbp-10H], rdi                    ; 038C _ 48: 89. 7D, F0
        mov     rdi, qword [rbp-10H]                    ; 0390 _ 48: 8B. 7D, F0
        mov     rdi, qword [rdi]                        ; 0394 _ 48: 8B. 3F
        add     rdi, 1                                  ; 0397 _ 48: 83. C7, 01
        mov     rax, qword [rbp-10H]                    ; 039B _ 48: 8B. 45, F0
        mov     qword [rax], rdi                        ; 039F _ 48: 89. 38
        mov     rax, qword [rbp-10H]                    ; 03A2 _ 48: 8B. 45, F0
        mov     rax, qword [rax]                        ; 03A6 _ 48: 8B. 00
        pop     rbp                                     ; 03A9 _ 5D
        ret                                             ; 03AA _ C3
; _getcount End of function

; Filling space: 5H
; Filler type: Multi-byte NOP
;       db 0FH, 1FH, 44H, 00H, 00H

ALIGN   8

_main:  ; Function begin
        push    rbp                                     ; 03B0 _ 55
        mov     rbp, rsp                                ; 03B1 _ 48: 89. E5
        sub     rsp, 64                                 ; 03B4 _ 48: 83. EC, 40
        mov     dword [rbp-4H], 0                       ; 03B8 _ C7. 45, FC, 00000000
        mov     qword [rbp-30H], 1                      ; 03BF _ 48: C7. 45, D0, 00000001
        mov     rax, qword [rbp-30H]                    ; 03C7 _ 48: 8B. 45, D0
        shl     rax, 3                                  ; 03CB _ 48: C1. E0, 03
        add     rax, 4                                  ; 03CF _ 48: 83. C0, 04
        mov     rdi, rax                                ; 03D3 _ 48: 89. C7
        call    ___lib_malloc                           ; 03D6 _ E8, 00000000(rel)
        mov     rdi, qword [rel _count]                 ; 03DB _ 48: 8B. 3D, 00000000(GOT r)
        mov     qword [rbp-20H], rax                    ; 03E2 _ 48: 89. 45, E0
        mov     rax, qword [rbp-30H]                    ; 03E6 _ 48: 8B. 45, D0
        mov     rcx, qword [rbp-20H]                    ; 03EA _ 48: 8B. 4D, E0
        mov     qword [rcx], rax                        ; 03EE _ 48: 89. 01
        mov     rax, qword [rbp-20H]                    ; 03F1 _ 48: 8B. 45, E0
        add     rax, 4                                  ; 03F5 _ 48: 83. C0, 04
        mov     qword [rbp-20H], rax                    ; 03F9 _ 48: 89. 45, E0
        mov     rax, qword [rbp-20H]                    ; 03FD _ 48: 8B. 45, E0
        mov     qword [rdi], rax                        ; 0401 _ 48: 89. 07
        mov     rax, qword [rdi]                        ; 0404 _ 48: 8B. 07
        mov     qword [rax], 0                          ; 0407 _ 48: C7. 00, 00000000
        mov     rdi, qword [rdi]                        ; 040E _ 48: 8B. 3F
        call    _getcount                               ; 0411 _ E8, 00000000(rel)
        mov     qword [rbp-18H], rax                    ; 0416 _ 48: 89. 45, E8
        mov     rax, qword [rbp-18H]                    ; 041A _ 48: 8B. 45, E8
        mov     qword [rbp-38H], rax                    ; 041E _ 48: 89. 45, C8
        mov     rdi, qword [rbp-38H]                    ; 0422 _ 48: 8B. 7D, C8
        call    _toString                               ; 0426 _ E8, 00000000(rel)
        lea     rdi, [rel _toMoStr+4DH]                 ; 042B _ 48: 8D. 3D, 0000004D(rel)
        mov     qword [rbp-10H], rax                    ; 0432 _ 48: 89. 45, F0
        mov     rax, qword [rbp-10H]                    ; 0436 _ 48: 8B. 45, F0
        mov     qword [rbp-40H], rax                    ; 043A _ 48: 89. 45, C0
        call    _toMoStr                                ; 043E _ E8, 00000000(rel)
        mov     rdi, qword [rbp-40H]                    ; 0443 _ 48: 8B. 7D, C0
        mov     rsi, rax                                ; 0447 _ 48: 89. C6
        call    _str_add                                ; 044A _ E8, 00000000(rel)
        mov     rdi, rax                                ; 044F _ 48: 89. C7
        call    _print                                  ; 0452 _ E8, 00000000(rel)
        lea     rdi, [rel _toMoStr+23H]                 ; 0457 _ 48: 8D. 3D, 00000023(rel)
        call    _toMoStr                                ; 045E _ E8, 00000000(rel)
        mov     rdi, rax                                ; 0463 _ 48: 89. C7
        call    _println                                ; 0466 _ E8, 00000000(rel)
        xor     eax, eax                                ; 046B _ 31. C0
        add     rsp, 64                                 ; 046D _ 48: 83. C4, 40
        pop     rbp                                     ; 0471 _ 5D
        ret                                             ; 0472 _ C3
; _main End of function


SECTION ._TEXT.__cstring align=1 noexecute              ; section number 2, data

        db 25H, 6CH, 64H, 0AH, 00H, 25H, 6CH, 64H       ; 0473 _ %ld..%ld
        db 00H, 25H, 73H, 00H, 20H, 00H, 00H            ; 047B _ .%s. ..


