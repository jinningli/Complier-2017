; Disassembly of file: output.o
; Sat Jun 10 23:46:04 2017
; Mode: 64 bits
; Syntax: YASM/NASM
; Instruction set: Pentium Pro, x64

default rel

global _ord: function
global _parseInt
global _strlength: function
global _getInt
global _getString
global _size: function
global _toMoStr: function
global _str_add
global ___lib_printlnInt
global ___lib_printInt
global ___lib_malloc: function
global _println: function
global _print
global _toString: function
global _main

extern _strlen                                          ; near
extern _scanf                                           ; near
extern _puts                                            ; near
extern _printf                                          ; near
extern _malloc                                          ; near
extern _getchar                                         ; near
extern ___strcpy_chk                                    ; near


SECTION ._TEXT.__text align=16 execute                  ; section number 1, code

_ord:   ; Function begin
        push    rbp                                     ; 0000 _ 55
        mov     rbp, rsp                                ; 0001 _ 48: 89. E5
        mov     qword [rbp-8H], rdi                     ; 0004 _ 48: 89. 7D, F8
        mov     qword [rbp-10H], rsi                    ; 0008 _ 48: 89. 75, F0
        mov     rsi, qword [rbp-10H]                    ; 000C _ 48: 8B. 75, F0
        add     rsi, qword [rbp-8H]                     ; 0010 _ 48: 03. 75, F8
        mov     qword [rbp-18H], rsi                    ; 0014 _ 48: 89. 75, E8
        mov     rsi, qword [rbp-18H]                    ; 0018 _ 48: 8B. 75, E8
        movsx   rax, byte [rsi]                         ; 001C _ 48: 0F BE. 06
        pop     rbp                                     ; 0020 _ 5D
        ret                                             ; 0021 _ C3
; _ord End of function

; Filling space: 0EH
; Filler type: Multi-byte NOP
;       db 66H, 66H, 66H, 66H, 66H, 2EH, 0FH, 1FH
;       db 84H, 00H, 00H, 00H, 00H, 00H

ALIGN   16

_parseInt:; Function begin
        push    rbp                                     ; 0030 _ 55
        mov     rbp, rsp                                ; 0031 _ 48: 89. E5
        sub     rsp, 32                                 ; 0034 _ 48: 83. EC, 20
        mov     qword [rbp-8H], rdi                     ; 0038 _ 48: 89. 7D, F8
        mov     rdi, qword [rbp-8H]                     ; 003C _ 48: 8B. 7D, F8
        call    _strlength                              ; 0040 _ E8, 00000000(rel)
        mov     ecx, eax                                ; 0045 _ 89. C1
        mov     dword [rbp-0CH], ecx                    ; 0047 _ 89. 4D, F4
        mov     rax, qword [rbp-8H]                     ; 004A _ 48: 8B. 45, F8
        mov     qword [rbp-18H], rax                    ; 004E _ 48: 89. 45, E8
        mov     dword [rbp-1CH], 0                      ; 0052 _ C7. 45, E4, 00000000
        mov     dword [rbp-20H], 0                      ; 0059 _ C7. 45, E0, 00000000
?_001:  mov     eax, dword [rbp-20H]                    ; 0060 _ 8B. 45, E0
        cmp     eax, dword [rbp-0CH]                    ; 0063 _ 3B. 45, F4
; Note: Immediate operand could be made smaller by sign extension
        jge     ?_005                                   ; 0066 _ 0F 8D, 0000005F
        movsxd  rax, dword [rbp-20H]                    ; 006C _ 48: 63. 45, E0
        mov     rcx, qword [rbp-18H]                    ; 0070 _ 48: 8B. 4D, E8
        movsx   edx, byte [rcx+rax]                     ; 0074 _ 0F BE. 14 01
        cmp     edx, 48                                 ; 0078 _ 83. FA, 30
; Note: Immediate operand could be made smaller by sign extension
        jl      ?_002                                   ; 007B _ 0F 8C, 00000032
        movsxd  rax, dword [rbp-20H]                    ; 0081 _ 48: 63. 45, E0
        mov     rcx, qword [rbp-18H]                    ; 0085 _ 48: 8B. 4D, E8
        movsx   edx, byte [rcx+rax]                     ; 0089 _ 0F BE. 14 01
        cmp     edx, 57                                 ; 008D _ 83. FA, 39
; Note: Immediate operand could be made smaller by sign extension
        jg      ?_002                                   ; 0090 _ 0F 8F, 0000001D
        imul    eax, dword [rbp-1CH], 10                ; 0096 _ 6B. 45, E4, 0A
        movsxd  rcx, dword [rbp-20H]                    ; 009A _ 48: 63. 4D, E0
        mov     rdx, qword [rbp-18H]                    ; 009E _ 48: 8B. 55, E8
        movsx   esi, byte [rdx+rcx]                     ; 00A2 _ 0F BE. 34 0A
        add     eax, esi                                ; 00A6 _ 01. F0
        sub     eax, 48                                 ; 00A8 _ 83. E8, 30
        mov     dword [rbp-1CH], eax                    ; 00AB _ 89. 45, E4
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_003                                   ; 00AE _ E9, 00000005

?_002:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_005                                   ; 00B3 _ E9, 00000013

?_003:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_004                                   ; 00B8 _ E9, 00000000

?_004:  mov     eax, dword [rbp-20H]                    ; 00BD _ 8B. 45, E0
        add     eax, 1                                  ; 00C0 _ 83. C0, 01
        mov     dword [rbp-20H], eax                    ; 00C3 _ 89. 45, E0
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_001                                   ; 00C6 _ E9, FFFFFF95
; _parseInt End of function

?_005:  ; Local function
        movsxd  rax, dword [rbp-1CH]                    ; 00CB _ 48: 63. 45, E4
        add     rsp, 32                                 ; 00CF _ 48: 83. C4, 20
        pop     rbp                                     ; 00D3 _ 5D
        ret                                             ; 00D4 _ C3

; Filling space: 0BH
; Filler type: Multi-byte NOP
;       db 66H, 66H, 2EH, 0FH, 1FH, 84H, 00H, 00H
;       db 00H, 00H, 00H

ALIGN   16

_strlength:; Function begin
        push    rbp                                     ; 00E0 _ 55
        mov     rbp, rsp                                ; 00E1 _ 48: 89. E5
        mov     qword [rbp-8H], rdi                     ; 00E4 _ 48: 89. 7D, F8
        mov     rdi, qword [rbp-8H]                     ; 00E8 _ 48: 8B. 7D, F8
        sub     rdi, 4                                  ; 00EC _ 48: 83. EF, 04
        mov     eax, dword [rdi]                        ; 00F0 _ 8B. 07
        mov     dword [rbp-0CH], eax                    ; 00F2 _ 89. 45, F4
        movsxd  rax, dword [rbp-0CH]                    ; 00F5 _ 48: 63. 45, F4
        pop     rbp                                     ; 00F9 _ 5D
        ret                                             ; 00FA _ C3
; _strlength End of function

; Filling space: 5H
; Filler type: Multi-byte NOP
;       db 0FH, 1FH, 44H, 00H, 00H

ALIGN   8

_getInt:; Function begin
        push    rbp                                     ; 0100 _ 55
        mov     rbp, rsp                                ; 0101 _ 48: 89. E5
        sub     rsp, 16                                 ; 0104 _ 48: 83. EC, 10
        lea     rdi, [rel _ord+50FH]                    ; 0108 _ 48: 8D. 3D, 0000050F(rel)
        lea     rsi, [rbp-4H]                           ; 010F _ 48: 8D. 75, FC
        mov     dword [rbp-4H], 0                       ; 0113 _ C7. 45, FC, 00000000
        mov     al, 0                                   ; 011A _ B0, 00
        call    _scanf                                  ; 011C _ E8, 00000000(rel)
        movsxd  rsi, dword [rbp-4H]                     ; 0121 _ 48: 63. 75, FC
        mov     dword [rbp-8H], eax                     ; 0125 _ 89. 45, F8
        mov     rax, rsi                                ; 0128 _ 48: 89. F0
        add     rsp, 16                                 ; 012B _ 48: 83. C4, 10
        pop     rbp                                     ; 012F _ 5D
        ret                                             ; 0130 _ C3
; _getInt End of function

; Filling space: 0FH
; Filler type: Multi-byte NOP
;       db 66H, 66H, 66H, 66H, 66H, 66H, 2EH, 0FH
;       db 1FH, 84H, 00H, 00H, 00H, 00H, 00H

ALIGN   16

_getString:; Function begin
        push    rbp                                     ; 0140 _ 55
        mov     rbp, rsp                                ; 0141 _ 48: 89. E5
        sub     rsp, 32                                 ; 0144 _ 48: 83. EC, 20
        mov     eax, 2004                               ; 0148 _ B8, 000007D4
        mov     edi, eax                                ; 014D _ 89. C7
        mov     dword [rbp-4H], 0                       ; 014F _ C7. 45, FC, 00000000
        call    _malloc                                 ; 0156 _ E8, 00000000(rel)
        mov     qword [rbp-10H], rax                    ; 015B _ 48: 89. 45, F0
        mov     rax, qword [rbp-10H]                    ; 015F _ 48: 8B. 45, F0
        mov     qword [rbp-18H], rax                    ; 0163 _ 48: 89. 45, E8
        mov     rax, qword [rbp-10H]                    ; 0167 _ 48: 8B. 45, F0
        add     rax, 4                                  ; 016B _ 48: 83. C0, 04
        mov     qword [rbp-10H], rax                    ; 016F _ 48: 89. 45, F0
        call    _getchar                                ; 0173 _ E8, 00000000(rel)
        mov     cl, al                                  ; 0178 _ 88. C1
        movsxd  rdi, dword [rbp-4H]                     ; 017A _ 48: 63. 7D, FC
        mov     rdx, qword [rbp-10H]                    ; 017E _ 48: 8B. 55, F0
        mov     byte [rdx+rdi], cl                      ; 0182 _ 88. 0C 3A
?_006:  movsxd  rax, dword [rbp-4H]                     ; 0185 _ 48: 63. 45, FC
        mov     rcx, qword [rbp-10H]                    ; 0189 _ 48: 8B. 4D, F0
        movzx   edx, byte [rcx+rax]                     ; 018D _ 0F B6. 14 01
        cmp     edx, 10                                 ; 0191 _ 83. FA, 0A
; Note: Immediate operand could be made smaller by sign extension
        je      ?_007                                   ; 0194 _ 0F 84, 0000001F
        call    _getchar                                ; 019A _ E8, 00000000(rel)
        mov     cl, al                                  ; 019F _ 88. C1
        mov     eax, dword [rbp-4H]                     ; 01A1 _ 8B. 45, FC
        add     eax, 1                                  ; 01A4 _ 83. C0, 01
        mov     dword [rbp-4H], eax                     ; 01A7 _ 89. 45, FC
        movsxd  rdx, eax                                ; 01AA _ 48: 63. D0
        mov     rsi, qword [rbp-10H]                    ; 01AD _ 48: 8B. 75, F0
        mov     byte [rsi+rdx], cl                      ; 01B1 _ 88. 0C 16
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_006                                   ; 01B4 _ E9, FFFFFFCC
; _getString End of function

?_007:  ; Local function
        movsxd  rax, dword [rbp-4H]                     ; 01B9 _ 48: 63. 45, FC
        mov     rcx, qword [rbp-10H]                    ; 01BD _ 48: 8B. 4D, F0
        mov     byte [rcx+rax], 0                       ; 01C1 _ C6. 04 01, 00
        mov     edx, dword [rbp-4H]                     ; 01C5 _ 8B. 55, FC
        mov     rax, qword [rbp-18H]                    ; 01C8 _ 48: 8B. 45, E8
        mov     dword [rax], edx                        ; 01CC _ 89. 10
        mov     rax, qword [rbp-18H]                    ; 01CE _ 48: 8B. 45, E8
        add     rax, 4                                  ; 01D2 _ 48: 83. C0, 04
        add     rsp, 32                                 ; 01D6 _ 48: 83. C4, 20
        pop     rbp                                     ; 01DA _ 5D
        ret                                             ; 01DB _ C3

; Filling space: 4H
; Filler type: Multi-byte NOP
;       db 0FH, 1FH, 40H, 00H

ALIGN   8

_size:  ; Function begin
        push    rbp                                     ; 01E0 _ 55
        mov     rbp, rsp                                ; 01E1 _ 48: 89. E5
        mov     qword [rbp-8H], rdi                     ; 01E4 _ 48: 89. 7D, F8
        mov     rdi, qword [rbp-8H]                     ; 01E8 _ 48: 8B. 7D, F8
        sub     rdi, 8                                  ; 01EC _ 48: 83. EF, 08
        mov     rdi, qword [rdi]                        ; 01F0 _ 48: 8B. 3F
        mov     qword [rbp-10H], rdi                    ; 01F3 _ 48: 89. 7D, F0
        mov     rax, qword [rbp-10H]                    ; 01F7 _ 48: 8B. 45, F0
        pop     rbp                                     ; 01FB _ 5D
        ret                                             ; 01FC _ C3
; _size End of function

; Filling space: 3H
; Filler type: Multi-byte NOP
;       db 0FH, 1FH, 00H

ALIGN   8

_toMoStr:; Function begin
        push    rbp                                     ; 0200 _ 55
        mov     rbp, rsp                                ; 0201 _ 48: 89. E5
        sub     rsp, 32                                 ; 0204 _ 48: 83. EC, 20
        mov     qword [rbp-8H], rdi                     ; 0208 _ 48: 89. 7D, F8
        mov     rdi, qword [rbp-8H]                     ; 020C _ 48: 8B. 7D, F8
        call    _strlen                                 ; 0210 _ E8, 00000000(rel)
        mov     ecx, eax                                ; 0215 _ 89. C1
        mov     dword [rbp-0CH], ecx                    ; 0217 _ 89. 4D, F4
        movsxd  rax, dword [rbp-0CH]                    ; 021A _ 48: 63. 45, F4
        add     rax, 4                                  ; 021E _ 48: 83. C0, 04
        add     rax, 1                                  ; 0222 _ 48: 83. C0, 01
        mov     rdi, rax                                ; 0226 _ 48: 89. C7
        call    _malloc                                 ; 0229 _ E8, 00000000(rel)
        mov     rdx, -1                                 ; 022E _ 48: C7. C2, FFFFFFFF
        mov     qword [rbp-18H], rax                    ; 0235 _ 48: 89. 45, E8
        mov     ecx, dword [rbp-0CH]                    ; 0239 _ 8B. 4D, F4
        mov     rax, qword [rbp-18H]                    ; 023C _ 48: 8B. 45, E8
        mov     dword [rax], ecx                        ; 0240 _ 89. 08
        mov     rax, qword [rbp-18H]                    ; 0242 _ 48: 8B. 45, E8
        add     rax, 4                                  ; 0246 _ 48: 83. C0, 04
        mov     qword [rbp-18H], rax                    ; 024A _ 48: 89. 45, E8
        mov     rdi, qword [rbp-18H]                    ; 024E _ 48: 8B. 7D, E8
        mov     rsi, qword [rbp-8H]                     ; 0252 _ 48: 8B. 75, F8
        call    ___strcpy_chk                           ; 0256 _ E8, 00000000(rel)
        mov     rdx, qword [rbp-18H]                    ; 025B _ 48: 8B. 55, E8
        mov     qword [rbp-20H], rax                    ; 025F _ 48: 89. 45, E0
        mov     rax, rdx                                ; 0263 _ 48: 89. D0
        add     rsp, 32                                 ; 0266 _ 48: 83. C4, 20
        pop     rbp                                     ; 026A _ 5D
        ret                                             ; 026B _ C3
; _toMoStr End of function

; Filling space: 4H
; Filler type: Multi-byte NOP
;       db 0FH, 1FH, 40H, 00H

ALIGN   8

_str_add:; Function begin
        push    rbp                                     ; 0270 _ 55
        mov     rbp, rsp                                ; 0271 _ 48: 89. E5
        sub     rsp, 48                                 ; 0274 _ 48: 83. EC, 30
        mov     qword [rbp-8H], rdi                     ; 0278 _ 48: 89. 7D, F8
        mov     qword [rbp-10H], rsi                    ; 027C _ 48: 89. 75, F0
        mov     rsi, qword [rbp-8H]                     ; 0280 _ 48: 8B. 75, F8
        sub     rsi, 4                                  ; 0284 _ 48: 83. EE, 04
        mov     eax, dword [rsi]                        ; 0288 _ 8B. 06
        mov     dword [rbp-14H], eax                    ; 028A _ 89. 45, EC
        mov     rsi, qword [rbp-10H]                    ; 028D _ 48: 8B. 75, F0
        sub     rsi, 4                                  ; 0291 _ 48: 83. EE, 04
        mov     eax, dword [rsi]                        ; 0295 _ 8B. 06
        mov     dword [rbp-18H], eax                    ; 0297 _ 89. 45, E8
        mov     eax, dword [rbp-14H]                    ; 029A _ 8B. 45, EC
        add     eax, dword [rbp-18H]                    ; 029D _ 03. 45, E8
        mov     dword [rbp-1CH], eax                    ; 02A0 _ 89. 45, E4
        movsxd  rsi, dword [rbp-1CH]                    ; 02A3 _ 48: 63. 75, E4
        add     rsi, 4                                  ; 02A7 _ 48: 83. C6, 04
        add     rsi, 1                                  ; 02AB _ 48: 83. C6, 01
        mov     rdi, rsi                                ; 02AF _ 48: 89. F7
        call    _malloc                                 ; 02B2 _ E8, 00000000(rel)
        mov     qword [rbp-28H], rax                    ; 02B7 _ 48: 89. 45, D8
        mov     ecx, dword [rbp-1CH]                    ; 02BB _ 8B. 4D, E4
        mov     rax, qword [rbp-28H]                    ; 02BE _ 48: 8B. 45, D8
        mov     dword [rax], ecx                        ; 02C2 _ 89. 08
        mov     rax, qword [rbp-28H]                    ; 02C4 _ 48: 8B. 45, D8
        add     rax, 4                                  ; 02C8 _ 48: 83. C0, 04
        mov     qword [rbp-28H], rax                    ; 02CC _ 48: 89. 45, D8
        mov     dword [rbp-2CH], 0                      ; 02D0 _ C7. 45, D4, 00000000
?_008:  mov     eax, dword [rbp-2CH]                    ; 02D7 _ 8B. 45, D4
        cmp     eax, dword [rbp-14H]                    ; 02DA _ 3B. 45, EC
; Note: Immediate operand could be made smaller by sign extension
        jge     ?_009                                   ; 02DD _ 0F 8D, 00000024
        movsxd  rax, dword [rbp-2CH]                    ; 02E3 _ 48: 63. 45, D4
        mov     rcx, qword [rbp-8H]                     ; 02E7 _ 48: 8B. 4D, F8
        mov     dl, byte [rcx+rax]                      ; 02EB _ 8A. 14 01
        movsxd  rax, dword [rbp-2CH]                    ; 02EE _ 48: 63. 45, D4
        mov     rcx, qword [rbp-28H]                    ; 02F2 _ 48: 8B. 4D, D8
        mov     byte [rcx+rax], dl                      ; 02F6 _ 88. 14 01
        mov     eax, dword [rbp-2CH]                    ; 02F9 _ 8B. 45, D4
        add     eax, 1                                  ; 02FC _ 83. C0, 01
        mov     dword [rbp-2CH], eax                    ; 02FF _ 89. 45, D4
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_008                                   ; 0302 _ E9, FFFFFFD0
; _str_add End of function

?_009:  ; Local function
        mov     dword [rbp-30H], 0                      ; 0307 _ C7. 45, D0, 00000000
?_010:  mov     eax, dword [rbp-30H]                    ; 030E _ 8B. 45, D0
        cmp     eax, dword [rbp-18H]                    ; 0311 _ 3B. 45, E8
; Note: Immediate operand could be made smaller by sign extension
        jge     ?_011                                   ; 0314 _ 0F 8D, 00000029
        movsxd  rax, dword [rbp-30H]                    ; 031A _ 48: 63. 45, D0
        mov     rcx, qword [rbp-10H]                    ; 031E _ 48: 8B. 4D, F0
        mov     dl, byte [rcx+rax]                      ; 0322 _ 8A. 14 01
        mov     esi, dword [rbp-30H]                    ; 0325 _ 8B. 75, D0
        add     esi, dword [rbp-14H]                    ; 0328 _ 03. 75, EC
        movsxd  rax, esi                                ; 032B _ 48: 63. C6
        mov     rcx, qword [rbp-28H]                    ; 032E _ 48: 8B. 4D, D8
        mov     byte [rcx+rax], dl                      ; 0332 _ 88. 14 01
        mov     eax, dword [rbp-30H]                    ; 0335 _ 8B. 45, D0
        add     eax, 1                                  ; 0338 _ 83. C0, 01
        mov     dword [rbp-30H], eax                    ; 033B _ 89. 45, D0
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_010                                   ; 033E _ E9, FFFFFFCB

?_011:  ; Local function
        movsxd  rax, dword [rbp-1CH]                    ; 0343 _ 48: 63. 45, E4
        mov     rcx, qword [rbp-28H]                    ; 0347 _ 48: 8B. 4D, D8
        mov     byte [rcx+rax], 0                       ; 034B _ C6. 04 01, 00
        mov     rax, qword [rbp-28H]                    ; 034F _ 48: 8B. 45, D8
        add     rsp, 48                                 ; 0353 _ 48: 83. C4, 30
        pop     rbp                                     ; 0357 _ 5D
        ret                                             ; 0358 _ C3

; Filling space: 7H
; Filler type: Multi-byte NOP
;       db 0FH, 1FH, 80H, 00H, 00H, 00H, 00H

ALIGN   8

___lib_printlnInt:; Function begin
        push    rbp                                     ; 0360 _ 55
        mov     rbp, rsp                                ; 0361 _ 48: 89. E5
        sub     rsp, 16                                 ; 0364 _ 48: 83. EC, 10
        lea     rax, [rel _ord+2B2H]                    ; 0368 _ 48: 8D. 05, 000002B2(rel)
        mov     qword [rbp-8H], rdi                     ; 036F _ 48: 89. 7D, F8
        mov     rsi, qword [rbp-8H]                     ; 0373 _ 48: 8B. 75, F8
        mov     rdi, rax                                ; 0377 _ 48: 89. C7
        mov     al, 0                                   ; 037A _ B0, 00
        call    _printf                                 ; 037C _ E8, 00000000(rel)
        mov     dword [rbp-0CH], eax                    ; 0381 _ 89. 45, F4
        add     rsp, 16                                 ; 0384 _ 48: 83. C4, 10
        pop     rbp                                     ; 0388 _ 5D
        ret                                             ; 0389 _ C3
; ___lib_printlnInt End of function

; Filling space: 6H
; Filler type: Multi-byte NOP
;       db 66H, 0FH, 1FH, 44H, 00H, 00H

ALIGN   8

___lib_printInt:; Function begin
        push    rbp                                     ; 0390 _ 55
        mov     rbp, rsp                                ; 0391 _ 48: 89. E5
        sub     rsp, 16                                 ; 0394 _ 48: 83. EC, 10
        lea     rax, [rel _ord+287H]                    ; 0398 _ 48: 8D. 05, 00000287(rel)
        mov     qword [rbp-8H], rdi                     ; 039F _ 48: 89. 7D, F8
        mov     rsi, qword [rbp-8H]                     ; 03A3 _ 48: 8B. 75, F8
        mov     rdi, rax                                ; 03A7 _ 48: 89. C7
        mov     al, 0                                   ; 03AA _ B0, 00
        call    _printf                                 ; 03AC _ E8, 00000000(rel)
        mov     dword [rbp-0CH], eax                    ; 03B1 _ 89. 45, F4
        add     rsp, 16                                 ; 03B4 _ 48: 83. C4, 10
        pop     rbp                                     ; 03B8 _ 5D
        ret                                             ; 03B9 _ C3
; ___lib_printInt End of function

; Filling space: 6H
; Filler type: Multi-byte NOP
;       db 66H, 0FH, 1FH, 44H, 00H, 00H

ALIGN   8

___lib_malloc:; Function begin
        push    rbp                                     ; 03C0 _ 55
        mov     rbp, rsp                                ; 03C1 _ 48: 89. E5
        sub     rsp, 16                                 ; 03C4 _ 48: 83. EC, 10
        mov     qword [rbp-8H], rdi                     ; 03C8 _ 48: 89. 7D, F8
        mov     rdi, qword [rbp-8H]                     ; 03CC _ 48: 8B. 7D, F8
        call    _malloc                                 ; 03D0 _ E8, 00000000(rel)
        add     rsp, 16                                 ; 03D5 _ 48: 83. C4, 10
        pop     rbp                                     ; 03D9 _ 5D
        ret                                             ; 03DA _ C3
; ___lib_malloc End of function

; Filling space: 5H
; Filler type: Multi-byte NOP
;       db 0FH, 1FH, 44H, 00H, 00H

ALIGN   8

_println:; Function begin
        push    rbp                                     ; 03E0 _ 55
        mov     rbp, rsp                                ; 03E1 _ 48: 89. E5
        sub     rsp, 16                                 ; 03E4 _ 48: 83. EC, 10
        mov     qword [rbp-8H], rdi                     ; 03E8 _ 48: 89. 7D, F8
        mov     rdi, qword [rbp-8H]                     ; 03EC _ 48: 8B. 7D, F8
        call    _puts                                   ; 03F0 _ E8, 00000000(rel)
        mov     dword [rbp-0CH], eax                    ; 03F5 _ 89. 45, F4
        add     rsp, 16                                 ; 03F8 _ 48: 83. C4, 10
        pop     rbp                                     ; 03FC _ 5D
        ret                                             ; 03FD _ C3
; _println End of function

; Filling space: 2H
; Filler type: NOP with prefixes
;       db 66H, 90H

ALIGN   8

_print: ; Function begin
        push    rbp                                     ; 0400 _ 55
        mov     rbp, rsp                                ; 0401 _ 48: 89. E5
        sub     rsp, 16                                 ; 0404 _ 48: 83. EC, 10
        lea     rax, [rel _ord+21BH]                    ; 0408 _ 48: 8D. 05, 0000021B(rel)
        mov     qword [rbp-8H], rdi                     ; 040F _ 48: 89. 7D, F8
        mov     rsi, qword [rbp-8H]                     ; 0413 _ 48: 8B. 75, F8
        mov     rdi, rax                                ; 0417 _ 48: 89. C7
        mov     al, 0                                   ; 041A _ B0, 00
        call    _printf                                 ; 041C _ E8, 00000000(rel)
        mov     dword [rbp-0CH], eax                    ; 0421 _ 89. 45, F4
        add     rsp, 16                                 ; 0424 _ 48: 83. C4, 10
        pop     rbp                                     ; 0428 _ 5D
        ret                                             ; 0429 _ C3
; _print End of function

; Filling space: 6H
; Filler type: Multi-byte NOP
;       db 66H, 0FH, 1FH, 44H, 00H, 00H

ALIGN   8

_toString:; Function begin
        push    rbp                                     ; 0430 _ 55
        mov     rbp, rsp                                ; 0431 _ 48: 89. E5
        sub     rsp, 48                                 ; 0434 _ 48: 83. EC, 30
        mov     eax, 16                                 ; 0438 _ B8, 00000010
        mov     ecx, eax                                ; 043D _ 89. C1
        mov     qword [rbp-8H], rdi                     ; 043F _ 48: 89. 7D, F8
        mov     rdi, rcx                                ; 0443 _ 48: 89. CF
        call    _malloc                                 ; 0446 _ E8, 00000000(rel)
        mov     qword [rbp-10H], rax                    ; 044B _ 48: 89. 45, F0
        mov     rax, qword [rbp-10H]                    ; 044F _ 48: 8B. 45, F0
        add     rax, 4                                  ; 0453 _ 48: 83. C0, 04
        mov     qword [rbp-10H], rax                    ; 0457 _ 48: 89. 45, F0
        mov     rax, qword [rbp-10H]                    ; 045B _ 48: 8B. 45, F0
        mov     qword [rbp-18H], rax                    ; 045F _ 48: 89. 45, E8
        cmp     qword [rbp-8H], 0                       ; 0463 _ 48: 83. 7D, F8, 00
; Note: Immediate operand could be made smaller by sign extension
        jge     ?_012                                   ; 0468 _ 0F 8D, 0000001E
        xor     eax, eax                                ; 046E _ 31. C0
        mov     ecx, eax                                ; 0470 _ 89. C1
        mov     rdx, qword [rbp-18H]                    ; 0472 _ 48: 8B. 55, E8
        mov     rsi, rdx                                ; 0476 _ 48: 89. D6
        add     rsi, 1                                  ; 0479 _ 48: 83. C6, 01
        mov     qword [rbp-18H], rsi                    ; 047D _ 48: 89. 75, E8
        mov     byte [rdx], 45                          ; 0481 _ C6. 02, 2D
        sub     rcx, qword [rbp-8H]                     ; 0484 _ 48: 2B. 4D, F8
        mov     qword [rbp-8H], rcx                     ; 0488 _ 48: 89. 4D, F8
?_012:  cmp     qword [rbp-8H], 0                       ; 048C _ 48: 83. 7D, F8, 00
; Note: Immediate operand could be made smaller by sign extension
        jne     ?_013                                   ; 0491 _ 0F 85, 00000012
        mov     rax, qword [rbp-18H]                    ; 0497 _ 48: 8B. 45, E8
        mov     rcx, rax                                ; 049B _ 48: 89. C1
        add     rcx, 1                                  ; 049E _ 48: 83. C1, 01
        mov     qword [rbp-18H], rcx                    ; 04A2 _ 48: 89. 4D, E8
        mov     byte [rax], 48                          ; 04A6 _ C6. 00, 30
?_013:  mov     rax, qword [rbp-18H]                    ; 04A9 _ 48: 8B. 45, E8
        mov     qword [rbp-20H], rax                    ; 04AD _ 48: 89. 45, E0
?_014:  cmp     qword [rbp-8H], 0                       ; 04B1 _ 48: 83. 7D, F8, 00
; Note: Immediate operand could be made smaller by sign extension
        je      ?_015                                   ; 04B6 _ 0F 84, 00000049
        mov     eax, 10                                 ; 04BC _ B8, 0000000A
        mov     ecx, eax                                ; 04C1 _ 89. C1
        mov     rax, qword [rbp-8H]                     ; 04C3 _ 48: 8B. 45, F8
        cqo                                             ; 04C7 _ 48: 99
        idiv    rcx                                     ; 04C9 _ 48: F7. F9
        mov     esi, eax                                ; 04CC _ 89. C6
        mov     dword [rbp-24H], esi                    ; 04CE _ 89. 75, DC
        mov     rax, qword [rbp-8H]                     ; 04D1 _ 48: 8B. 45, F8
        add     rax, 48                                 ; 04D5 _ 48: 83. C0, 30
        imul    esi, dword [rbp-24H], 10                ; 04D9 _ 6B. 75, DC, 0A
        movsxd  rcx, esi                                ; 04DD _ 48: 63. CE
        sub     rax, rcx                                ; 04E0 _ 48: 29. C8
        mov     dil, al                                 ; 04E3 _ 40: 88. C7
        mov     rax, qword [rbp-18H]                    ; 04E6 _ 48: 8B. 45, E8
        mov     rcx, rax                                ; 04EA _ 48: 89. C1
        add     rcx, 1                                  ; 04ED _ 48: 83. C1, 01
        mov     qword [rbp-18H], rcx                    ; 04F1 _ 48: 89. 4D, E8
        mov     byte [rax], dil                         ; 04F5 _ 40: 88. 38
        movsxd  rax, dword [rbp-24H]                    ; 04F8 _ 48: 63. 45, DC
        mov     qword [rbp-8H], rax                     ; 04FC _ 48: 89. 45, F8
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_014                                   ; 0500 _ E9, FFFFFFAC
; _toString End of function

?_015:  ; Local function
        mov     rax, qword [rbp-18H]                    ; 0505 _ 48: 8B. 45, E8
        mov     byte [rax], 0                           ; 0509 _ C6. 00, 00
        mov     rax, qword [rbp-18H]                    ; 050C _ 48: 8B. 45, E8
        mov     rcx, qword [rbp-10H]                    ; 0510 _ 48: 8B. 4D, F0
        sub     rax, rcx                                ; 0514 _ 48: 29. C8
        mov     edx, eax                                ; 0517 _ 89. C2
        mov     rax, qword [rbp-10H]                    ; 0519 _ 48: 8B. 45, F0
        mov     dword [rax-4H], edx                     ; 051D _ 89. 50, FC
        mov     rax, qword [rbp-18H]                    ; 0520 _ 48: 8B. 45, E8
        add     rax, -1                                 ; 0524 _ 48: 83. C0, FF
        mov     qword [rbp-18H], rax                    ; 0528 _ 48: 89. 45, E8
?_016:  mov     rax, qword [rbp-20H]                    ; 052C _ 48: 8B. 45, E0
        cmp     rax, qword [rbp-18H]                    ; 0530 _ 48: 3B. 45, E8
; Note: Immediate operand could be made smaller by sign extension
        ja      ?_017                                   ; 0534 _ 0F 87, 0000003B
        mov     rax, qword [rbp-20H]                    ; 053A _ 48: 8B. 45, E0
        mov     cl, byte [rax]                          ; 053E _ 8A. 08
        mov     byte [rbp-25H], cl                      ; 0540 _ 88. 4D, DB
        mov     rax, qword [rbp-18H]                    ; 0543 _ 48: 8B. 45, E8
        mov     cl, byte [rax]                          ; 0547 _ 8A. 08
        mov     rax, qword [rbp-20H]                    ; 0549 _ 48: 8B. 45, E0
        mov     byte [rax], cl                          ; 054D _ 88. 08
        mov     cl, byte [rbp-25H]                      ; 054F _ 8A. 4D, DB
        mov     rax, qword [rbp-18H]                    ; 0552 _ 48: 8B. 45, E8
        mov     byte [rax], cl                          ; 0556 _ 88. 08
        mov     rax, qword [rbp-20H]                    ; 0558 _ 48: 8B. 45, E0
        add     rax, 1                                  ; 055C _ 48: 83. C0, 01
        mov     qword [rbp-20H], rax                    ; 0560 _ 48: 89. 45, E0
        mov     rax, qword [rbp-18H]                    ; 0564 _ 48: 8B. 45, E8
        add     rax, -1                                 ; 0568 _ 48: 83. C0, FF
        mov     qword [rbp-18H], rax                    ; 056C _ 48: 89. 45, E8
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_016                                   ; 0570 _ E9, FFFFFFB7

?_017:  ; Local function
        mov     rax, qword [rbp-10H]                    ; 0575 _ 48: 8B. 45, F0
        add     rsp, 48                                 ; 0579 _ 48: 83. C4, 30
        pop     rbp                                     ; 057D _ 5D
        ret                                             ; 057E _ C3

        nop                                             ; 057F _ 90

ALIGN   16
_main:  ; Function begin
        push    rbp                                     ; 0580 _ 55
        mov     rbp, rsp                                ; 0581 _ 48: 89. E5
        sub     rsp, 64                                 ; 0584 _ 48: 83. EC, 40
        mov     dword [rbp-4H], 0                       ; 0588 _ C7. 45, FC, 00000000
        mov     qword [rbp-40H], 20                     ; 058F _ 48: C7. 45, C0, 00000014
        mov     rax, qword [rbp-40H]                    ; 0597 _ 48: 8B. 45, C0
        shl     rax, 3                                  ; 059B _ 48: C1. E0, 03
        add     rax, 8                                  ; 059F _ 48: 83. C0, 08
        mov     rdi, rax                                ; 05A3 _ 48: 89. C7
        call    ___lib_malloc                           ; 05A6 _ E8, 00000000(rel)
        lea     rdi, [rel _ord+7BH]                     ; 05AB _ 48: 8D. 3D, 0000007B(rel)
        mov     qword [rbp-30H], rax                    ; 05B2 _ 48: 89. 45, D0
        mov     rax, qword [rbp-40H]                    ; 05B6 _ 48: 8B. 45, C0
        mov     rcx, qword [rbp-30H]                    ; 05BA _ 48: 8B. 4D, D0
        mov     qword [rcx], rax                        ; 05BE _ 48: 89. 01
        mov     rax, qword [rbp-30H]                    ; 05C1 _ 48: 8B. 45, D0
        add     rax, 8                                  ; 05C5 _ 48: 83. C0, 08
        mov     qword [rbp-30H], rax                    ; 05C9 _ 48: 89. 45, D0
        mov     rax, qword [rbp-30H]                    ; 05CD _ 48: 8B. 45, D0
        mov     qword [rbp-18H], rax                    ; 05D1 _ 48: 89. 45, E8
        call    _toMoStr                                ; 05D5 _ E8, 00000000(rel)
        mov     edx, 1                                  ; 05DA _ BA, 00000001
        mov     edi, edx                                ; 05DF _ 89. D7
        mov     rsi, rax                                ; 05E1 _ 48: 89. C6
        call    _ord                                    ; 05E4 _ E8, 00000000(rel)
        mov     qword [rbp-20H], rax                    ; 05E9 _ 48: 89. 45, E0
        mov     rdi, qword [rbp-20H]                    ; 05ED _ 48: 8B. 7D, E0
        call    _toString                               ; 05F1 _ E8, 00000000(rel)
        mov     qword [rbp-10H], rax                    ; 05F6 _ 48: 89. 45, F0
        mov     rdi, qword [rbp-10H]                    ; 05FA _ 48: 8B. 7D, F0
        call    _println                                ; 05FE _ E8, 00000000(rel)
        mov     rdi, qword [rbp-18H]                    ; 0603 _ 48: 8B. 7D, E8
        call    _size                                   ; 0607 _ E8, 00000000(rel)
        mov     qword [rbp-28H], rax                    ; 060C _ 48: 89. 45, D8
        mov     rax, qword [rbp-28H]                    ; 0610 _ 48: 8B. 45, D8
        mov     edx, eax                                ; 0614 _ 89. C2
        mov     eax, edx                                ; 0616 _ 89. D0
        add     rsp, 64                                 ; 0618 _ 48: 83. C4, 40
        pop     rbp                                     ; 061C _ 5D
        ret                                             ; 061D _ C3
; _main End of function


SECTION ._TEXT.__cstring align=1 noexecute              ; section number 2, data

        db 25H, 64H, 00H, 25H, 6CH, 64H, 0AH, 00H       ; 061E _ %d.%ld..
        db 25H, 6CH, 64H, 00H, 25H, 73H, 00H, 31H       ; 0626 _ %ld.%s.1
        db 32H, 33H, 34H, 35H, 61H, 73H, 73H, 73H       ; 062E _ 2345asss
        db 73H, 00H                                     ; 0636 _ s.


