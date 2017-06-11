; Disassembly of file: output.o
; Sun Jun 11 09:17:14 2017
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
global _size
global _toMoStr
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
        lea     rdi, [rel ?_032]                        ; 01C8 _ 48: 8D. 3D, 000007B5(rel)
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
        lea     rax, [rel _substring+528H]              ; 0458 _ 48: 8D. 05, 00000528(rel)
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
        lea     rax, [rel _substring+4FDH]              ; 0488 _ 48: 8D. 05, 000004FD(rel)
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
        lea     rax, [rel _substring+491H]              ; 04F8 _ 48: 8D. 05, 00000491(rel)
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
_main:  ; Function begin
        push    rbp                                     ; 0670 _ 55
        mov     rbp, rsp                                ; 0671 _ 48: 89. E5
        sub     rsp, 112                                ; 0674 _ 48: 83. EC, 70
        mov     dword [rbp-4H], 0                       ; 0678 _ C7. 45, FC, 00000000
        mov     qword [rbp-38H], 100                    ; 067F _ 48: C7. 45, C8, 00000064
        mov     rax, qword [rbp-38H]                    ; 0687 _ 48: 8B. 45, C8
        shl     rax, 3                                  ; 068B _ 48: C1. E0, 03
        add     rax, 8                                  ; 068F _ 48: 83. C0, 08
        mov     rdi, rax                                ; 0693 _ 48: 89. C7
        call    ___lib_malloc                           ; 0696 _ E8, 00000000(rel)
        mov     qword [rbp-28H], rax                    ; 069B _ 48: 89. 45, D8
        mov     rax, qword [rbp-38H]                    ; 069F _ 48: 8B. 45, C8
        mov     rdi, qword [rbp-28H]                    ; 06A3 _ 48: 8B. 7D, D8
        mov     qword [rdi], rax                        ; 06A7 _ 48: 89. 07
        mov     rax, qword [rbp-28H]                    ; 06AA _ 48: 8B. 45, D8
        add     rax, 8                                  ; 06AE _ 48: 83. C0, 08
        mov     qword [rbp-28H], rax                    ; 06B2 _ 48: 89. 45, D8
        mov     rax, qword [rbp-28H]                    ; 06B6 _ 48: 8B. 45, D8
        mov     qword [rbp-18H], rax                    ; 06BA _ 48: 89. 45, E8
        mov     qword [rbp-40H], 0                      ; 06BE _ 48: C7. 45, C0, 00000000
?_021:  cmp     qword [rbp-40H], 100                    ; 06C6 _ 48: 83. 7D, C0, 64
; Note: Immediate operand could be made smaller by sign extension
        jge     ?_022                                   ; 06CB _ 0F 8D, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_023                                   ; 06D1 _ E9, 00000005

?_022:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_024                                   ; 06D6 _ E9, 0000005E

?_023:  mov     qword [rbp-60H], 100                    ; 06DB _ 48: C7. 45, A0, 00000064
        mov     rax, qword [rbp-60H]                    ; 06E3 _ 48: 8B. 45, A0
        shl     rax, 3                                  ; 06E7 _ 48: C1. E0, 03
        add     rax, 8                                  ; 06EB _ 48: 83. C0, 08
        mov     rdi, rax                                ; 06EF _ 48: 89. C7
        call    ___lib_malloc                           ; 06F2 _ E8, 00000000(rel)
        mov     qword [rbp-68H], rax                    ; 06F7 _ 48: 89. 45, 98
        mov     rax, qword [rbp-60H]                    ; 06FB _ 48: 8B. 45, A0
        mov     rdi, qword [rbp-68H]                    ; 06FF _ 48: 8B. 7D, 98
        mov     qword [rdi], rax                        ; 0703 _ 48: 89. 07
        mov     rax, qword [rbp-68H]                    ; 0706 _ 48: 8B. 45, 98
        add     rax, 8                                  ; 070A _ 48: 83. C0, 08
        mov     qword [rbp-68H], rax                    ; 070E _ 48: 89. 45, 98
        mov     rax, qword [rbp-68H]                    ; 0712 _ 48: 8B. 45, 98
        mov     rdi, qword [rbp-18H]                    ; 0716 _ 48: 8B. 7D, E8
        mov     rcx, qword [rbp-40H]                    ; 071A _ 48: 8B. 4D, C0
        shl     rcx, 3                                  ; 071E _ 48: C1. E1, 03
        add     rdi, rcx                                ; 0722 _ 48: 01. CF
        mov     qword [rdi], rax                        ; 0725 _ 48: 89. 07
        mov     rax, qword [rbp-40H]                    ; 0728 _ 48: 8B. 45, C0
        add     rax, 1                                  ; 072C _ 48: 83. C0, 01
        mov     qword [rbp-40H], rax                    ; 0730 _ 48: 89. 45, C0
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_021                                   ; 0734 _ E9, FFFFFF8D
; _main End of function

?_024:  ; Local function
        mov     qword [rbp-50H], 0                      ; 0739 _ 48: C7. 45, B0, 00000000
        mov     qword [rbp-40H], 0                      ; 0741 _ 48: C7. 45, C0, 00000000
?_025:  cmp     qword [rbp-40H], 100                    ; 0749 _ 48: 83. 7D, C0, 64
; Note: Immediate operand could be made smaller by sign extension
        jge     ?_026                                   ; 074E _ 0F 8D, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_027                                   ; 0754 _ E9, 00000005

?_026:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_033                                   ; 0759 _ E9, 00000068

?_027:  mov     qword [rbp-48H], 0                      ; 075E _ 48: C7. 45, B8, 00000000
?_028:  cmp     qword [rbp-48H], 100                    ; 0766 _ 48: 83. 7D, B8, 64
; Note: Immediate operand could be made smaller by sign extension
        jge     ?_029                                   ; 076B _ 0F 8D, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_030                                   ; 0771 _ E9, 00000005

?_029:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_031                                   ; 0776 _ E9, 00000035

?_030:  mov     rax, qword [rbp-18H]                    ; 077B _ 48: 8B. 45, E8
        mov     rcx, qword [rbp-40H]                    ; 077F _ 48: 8B. 4D, C0
        shl     rcx, 3                                  ; 0783 _ 48: C1. E1, 03
        add     rax, rcx                                ; 0787 _ 48: 01. C8
        mov     rax, qword [rax]                        ; 078A _ 48: 8B. 00
        mov     rcx, qword [rbp-48H]                    ; 078D _ 48: 8B. 4D, B8
        shl     rcx, 3                                  ; 0791 _ 48: C1. E1, 03
        add     rax, rcx                                ; 0795 _ 48: 01. C8
        mov     qword [rax], 0                          ; 0798 _ 48: C7. 00, 00000000
        mov     rax, qword [rbp-48H]                    ; 079F _ 48: 8B. 45, B8
        add     rax, 1                                  ; 07A3 _ 48: 83. C0, 01
        mov     qword [rbp-48H], rax                    ; 07A7 _ 48: 89. 45, B8
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_028                                   ; 07AB _ E9, FFFFFFB6

?_031:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_032                                   ; 07B0 _ E9, 00000000

?_032:  mov     rax, qword [rbp-40H]                    ; 07B5 _ 48: 8B. 45, C0
        add     rax, 1                                  ; 07B9 _ 48: 83. C0, 01
        mov     qword [rbp-40H], rax                    ; 07BD _ 48: 89. 45, C0
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_025                                   ; 07C1 _ E9, FFFFFF83

?_033:  ; Local function
        mov     qword [rbp-40H], 0                      ; 07C6 _ 48: C7. 45, C0, 00000000
?_034:  cmp     qword [rbp-40H], 100                    ; 07CE _ 48: 83. 7D, C0, 64
; Note: Immediate operand could be made smaller by sign extension
        jge     ?_035                                   ; 07D3 _ 0F 8D, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_036                                   ; 07D9 _ E9, 00000005

?_035:  jmp     ?_053                                   ; 07DE _ E9, 000000FA

?_036:  cmp     qword [rbp-40H], 20                     ; 07E3 _ 48: 83. 7D, C0, 14
; Note: Immediate operand could be made smaller by sign extension
        jle     ?_037                                   ; 07E8 _ 0F 8E, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_038                                   ; 07EE _ E9, 00000005

?_037:  jmp     ?_051                                   ; 07F3 _ E9, 000000CF

?_038:  cmp     qword [rbp-40H], 80                     ; 07F8 _ 48: 83. 7D, C0, 50
; Note: Immediate operand could be made smaller by sign extension
        jge     ?_039                                   ; 07FD _ 0F 8D, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_040                                   ; 0803 _ E9, 00000005

?_039:  jmp     ?_051                                   ; 0808 _ E9, 000000BA

?_040:  mov     qword [rbp-48H], 0                      ; 080D _ 48: C7. 45, B8, 00000000
?_041:  cmp     qword [rbp-48H], 100                    ; 0815 _ 48: 83. 7D, B8, 64
; Note: Immediate operand could be made smaller by sign extension
        jge     ?_042                                   ; 081A _ 0F 8D, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_043                                   ; 0820 _ E9, 00000005

?_042:  jmp     ?_050                                   ; 0825 _ E9, 00000098

?_043:  cmp     qword [rbp-48H], 5                      ; 082A _ 48: 83. 7D, B8, 05
; Note: Immediate operand could be made smaller by sign extension
        jle     ?_044                                   ; 082F _ 0F 8E, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_047                                   ; 0835 _ E9, 0000001A

?_044:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_045                                   ; 083A _ E9, 00000000

?_045:  cmp     qword [rbp-40H], 90                     ; 083F _ 48: 83. 7D, C0, 5A
; Note: Immediate operand could be made smaller by sign extension
        jge     ?_046                                   ; 0844 _ 0F 8D, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_047                                   ; 084A _ E9, 00000005

?_046:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_048                                   ; 084F _ E9, 00000058

?_047:  mov     eax, 100                                ; 0854 _ B8, 00000064
        mov     ecx, eax                                ; 0859 _ 89. C1
        mov     rdx, qword [rbp-48H]                    ; 085B _ 48: 8B. 55, B8
        shl     rdx, 2                                  ; 085F _ 48: C1. E2, 02
        mov     rax, rdx                                ; 0863 _ 48: 89. D0
        cqo                                             ; 0866 _ 48: 99
        idiv    rcx                                     ; 0868 _ 48: F7. F9
        mov     qword [rbp-10H], rax                    ; 086B _ 48: 89. 45, F0
        mov     rax, qword [rbp-48H]                    ; 086F _ 48: 8B. 45, B8
        shl     rax, 2                                  ; 0873 _ 48: C1. E0, 02
        cqo                                             ; 0877 _ 48: 99
        idiv    rcx                                     ; 0879 _ 48: F7. F9
        mov     qword [rbp-58H], rdx                    ; 087C _ 48: 89. 55, A8
        mov     rcx, qword [rbp-48H]                    ; 0880 _ 48: 8B. 4D, B8
        add     rcx, 50                                 ; 0884 _ 48: 83. C1, 32
        mov     rdx, qword [rbp-18H]                    ; 0888 _ 48: 8B. 55, E8
        mov     rsi, qword [rbp-40H]                    ; 088C _ 48: 8B. 75, C0
        add     rsi, qword [rbp-10H]                    ; 0890 _ 48: 03. 75, F0
        shl     rsi, 3                                  ; 0894 _ 48: C1. E6, 03
        add     rdx, rsi                                ; 0898 _ 48: 01. F2
        mov     rdx, qword [rdx]                        ; 089B _ 48: 8B. 12
        mov     rsi, qword [rbp-58H]                    ; 089E _ 48: 8B. 75, A8
        shl     rsi, 3                                  ; 08A2 _ 48: C1. E6, 03
        add     rdx, rsi                                ; 08A6 _ 48: 01. F2
        mov     qword [rdx], rcx                        ; 08A9 _ 48: 89. 0A
?_048:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_049                                   ; 08AC _ E9, 00000000

?_049:  mov     rax, qword [rbp-48H]                    ; 08B1 _ 48: 8B. 45, B8
        add     rax, 1                                  ; 08B5 _ 48: 83. C0, 01
        mov     qword [rbp-48H], rax                    ; 08B9 _ 48: 89. 45, B8
        jmp     ?_041                                   ; 08BD _ E9, FFFFFF53

?_050:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_051                                   ; 08C2 _ E9, 00000000

?_051:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_052                                   ; 08C7 _ E9, 00000000

?_052:  mov     rax, qword [rbp-40H]                    ; 08CC _ 48: 8B. 45, C0
        add     rax, 1                                  ; 08D0 _ 48: 83. C0, 01
        mov     qword [rbp-40H], rax                    ; 08D4 _ 48: 89. 45, C0
        jmp     ?_034                                   ; 08D8 _ E9, FFFFFEF1

?_053:  ; Local function
        mov     qword [rbp-40H], 0                      ; 08DD _ 48: C7. 45, C0, 00000000
?_054:  cmp     qword [rbp-40H], 100                    ; 08E5 _ 48: 83. 7D, C0, 64
; Note: Immediate operand could be made smaller by sign extension
        jge     ?_055                                   ; 08EA _ 0F 8D, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_056                                   ; 08F0 _ E9, 00000005

?_055:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_062                                   ; 08F5 _ E9, 0000006C

?_056:  mov     qword [rbp-48H], 0                      ; 08FA _ 48: C7. 45, B8, 00000000
?_057:  cmp     qword [rbp-48H], 100                    ; 0902 _ 48: 83. 7D, B8, 64
; Note: Immediate operand could be made smaller by sign extension
        jge     ?_058                                   ; 0907 _ 0F 8D, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_059                                   ; 090D _ E9, 00000005

?_058:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_060                                   ; 0912 _ E9, 00000039

?_059:  mov     rax, qword [rbp-50H]                    ; 0917 _ 48: 8B. 45, B0
        mov     rcx, qword [rbp-18H]                    ; 091B _ 48: 8B. 4D, E8
        mov     rdx, qword [rbp-40H]                    ; 091F _ 48: 8B. 55, C0
        shl     rdx, 3                                  ; 0923 _ 48: C1. E2, 03
        add     rcx, rdx                                ; 0927 _ 48: 01. D1
        mov     rcx, qword [rcx]                        ; 092A _ 48: 8B. 09
        mov     rdx, qword [rbp-48H]                    ; 092D _ 48: 8B. 55, B8
        shl     rdx, 3                                  ; 0931 _ 48: C1. E2, 03
        add     rcx, rdx                                ; 0935 _ 48: 01. D1
        add     rax, qword [rcx]                        ; 0938 _ 48: 03. 01
        mov     qword [rbp-50H], rax                    ; 093B _ 48: 89. 45, B0
        mov     rax, qword [rbp-48H]                    ; 093F _ 48: 8B. 45, B8
        add     rax, 1                                  ; 0943 _ 48: 83. C0, 01
        mov     qword [rbp-48H], rax                    ; 0947 _ 48: 89. 45, B8
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_057                                   ; 094B _ E9, FFFFFFB2

?_060:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_061                                   ; 0950 _ E9, 00000000

?_061:  mov     rax, qword [rbp-40H]                    ; 0955 _ 48: 8B. 45, C0
        add     rax, 1                                  ; 0959 _ 48: 83. C0, 01
        mov     qword [rbp-40H], rax                    ; 095D _ 48: 89. 45, C0
        jmp     ?_054                                   ; 0961 _ E9, FFFFFF7F

?_062:  ; Local function
        mov     rdi, qword [rbp-50H]                    ; 0966 _ 48: 8B. 7D, B0
        call    _toString                               ; 096A _ E8, 00000000(rel)
        mov     qword [rbp-20H], rax                    ; 096F _ 48: 89. 45, E0
        mov     rdi, qword [rbp-20H]                    ; 0973 _ 48: 8B. 7D, E0
        call    _println                                ; 0977 _ E8, 00000000(rel)
        xor     eax, eax                                ; 097C _ 31. C0
        add     rsp, 112                                ; 097E _ 48: 83. C4, 70
        pop     rbp                                     ; 0982 _ 5D
        ret                                             ; 0983 _ C3


SECTION ._TEXT.__cstring align=1 noexecute              ; section number 2, data

        db 25H, 64H, 00H, 25H, 6CH, 64H, 0AH, 00H       ; 0984 _ %d.%ld..
        db 25H, 6CH, 64H, 00H, 25H, 73H, 00H            ; 098C _ %ld.%s.


