; Disassembly of file: output.o
; Sun Jun 11 11:54:26 2017
; Mode: 64 bits
; Syntax: YASM/NASM
; Instruction set: Pentium Pro, x64

default rel

global _str_le: function
global _str_eql: function
global _strlength: function
global _substring: function
global _ord: function
global _parseInt: function
global _getInt
global _getString: function
global _size
global _toMoStr: function
global _str_add: function
global ___lib_printlnInt
global ___lib_printInt
global ___lib_malloc
global _println: function
global _print
global _toString
global _calc: function
global _main

extern _strlen                                          ; near
extern _strcmp                                          ; near
extern _scanf                                           ; near
extern _puts                                            ; near
extern _printf                                          ; near
extern _malloc                                          ; near
extern _getchar                                         ; near
extern ___strcpy_chk                                    ; near
extern _N_                                              ; qword
extern _C_                                              ; qword
extern _B_                                              ; qword
extern _A_                                              ; qword


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
        lea     rdi, [rel _str_le+7A4H]                 ; 02C8 _ 48: 8D. 3D, 000007A4(rel)
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
        mov     qword [rbp-10H], rax                    ; 031B _ 48: 89. 45, F0
        mov     rax, qword [rbp-10H]                    ; 031F _ 48: 8B. 45, F0
        mov     qword [rbp-18H], rax                    ; 0323 _ 48: 89. 45, E8
        mov     rax, qword [rbp-10H]                    ; 0327 _ 48: 8B. 45, F0
        add     rax, 4                                  ; 032B _ 48: 83. C0, 04
        mov     qword [rbp-10H], rax                    ; 032F _ 48: 89. 45, F0
        call    _getchar                                ; 0333 _ E8, 00000000(rel)
        mov     cl, al                                  ; 0338 _ 88. C1
        movsxd  rdi, dword [rbp-4H]                     ; 033A _ 48: 63. 7D, FC
        mov     rdx, qword [rbp-10H]                    ; 033E _ 48: 8B. 55, F0
        mov     byte [rdx+rdi], cl                      ; 0342 _ 88. 0C 3A
        movsxd  rdx, dword [rbp-4H]                     ; 0345 _ 48: 63. 55, FC
        mov     rdi, qword [rbp-10H]                    ; 0349 _ 48: 8B. 7D, F0
        movzx   eax, byte [rdi+rdx]                     ; 034D _ 0F B6. 04 17
        cmp     eax, 10                                 ; 0351 _ 83. F8, 0A
; Note: Immediate operand could be made smaller by sign extension
        jne     ?_016                                   ; 0354 _ 0F 85, 00000012
        call    _getchar                                ; 035A _ E8, 00000000(rel)
        mov     cl, al                                  ; 035F _ 88. C1
        movsxd  rdx, dword [rbp-4H]                     ; 0361 _ 48: 63. 55, FC
        mov     rsi, qword [rbp-10H]                    ; 0365 _ 48: 8B. 75, F0
        mov     byte [rsi+rdx], cl                      ; 0369 _ 88. 0C 16
?_016:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_017                                   ; 036C _ E9, 00000000
; _getString End of function

?_017:  ; Local function
        movsxd  rax, dword [rbp-4H]                     ; 0371 _ 48: 63. 45, FC
        mov     rcx, qword [rbp-10H]                    ; 0375 _ 48: 8B. 4D, F0
        movzx   edx, byte [rcx+rax]                     ; 0379 _ 0F B6. 14 01
        cmp     edx, 10                                 ; 037D _ 83. FA, 0A
; Note: Immediate operand could be made smaller by sign extension
        je      ?_018                                   ; 0380 _ 0F 84, 0000001F
        call    _getchar                                ; 0386 _ E8, 00000000(rel)
        mov     cl, al                                  ; 038B _ 88. C1
        mov     eax, dword [rbp-4H]                     ; 038D _ 8B. 45, FC
        add     eax, 1                                  ; 0390 _ 83. C0, 01
        mov     dword [rbp-4H], eax                     ; 0393 _ 89. 45, FC
        movsxd  rdx, eax                                ; 0396 _ 48: 63. D0
        mov     rsi, qword [rbp-10H]                    ; 0399 _ 48: 8B. 75, F0
        mov     byte [rsi+rdx], cl                      ; 039D _ 88. 0C 16
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_017                                   ; 03A0 _ E9, FFFFFFCC

?_018:  ; Local function
        movsxd  rax, dword [rbp-4H]                     ; 03A5 _ 48: 63. 45, FC
        mov     rcx, qword [rbp-10H]                    ; 03A9 _ 48: 8B. 4D, F0
        mov     byte [rcx+rax], 0                       ; 03AD _ C6. 04 01, 00
        mov     edx, dword [rbp-4H]                     ; 03B1 _ 8B. 55, FC
        mov     rax, qword [rbp-18H]                    ; 03B4 _ 48: 8B. 45, E8
        mov     dword [rax], edx                        ; 03B8 _ 89. 10
        mov     rax, qword [rbp-18H]                    ; 03BA _ 48: 8B. 45, E8
        add     rax, 4                                  ; 03BE _ 48: 83. C0, 04
        add     rsp, 32                                 ; 03C2 _ 48: 83. C4, 20
        pop     rbp                                     ; 03C6 _ 5D
        ret                                             ; 03C7 _ C3

; Filling space: 8H
; Filler type: Multi-byte NOP
;       db 0FH, 1FH, 84H, 00H, 00H, 00H, 00H, 00H

ALIGN   16

_size:  ; Function begin
        push    rbp                                     ; 03D0 _ 55
        mov     rbp, rsp                                ; 03D1 _ 48: 89. E5
        mov     qword [rbp-8H], rdi                     ; 03D4 _ 48: 89. 7D, F8
        mov     rdi, qword [rbp-8H]                     ; 03D8 _ 48: 8B. 7D, F8
        sub     rdi, 8                                  ; 03DC _ 48: 83. EF, 08
        mov     rdi, qword [rdi]                        ; 03E0 _ 48: 8B. 3F
        mov     qword [rbp-10H], rdi                    ; 03E3 _ 48: 89. 7D, F0
        mov     rax, qword [rbp-10H]                    ; 03E7 _ 48: 8B. 45, F0
        pop     rbp                                     ; 03EB _ 5D
        ret                                             ; 03EC _ C3
; _size End of function

; Filling space: 3H
; Filler type: Multi-byte NOP
;       db 0FH, 1FH, 00H

ALIGN   8

_toMoStr:; Function begin
        push    rbp                                     ; 03F0 _ 55
        mov     rbp, rsp                                ; 03F1 _ 48: 89. E5
        sub     rsp, 32                                 ; 03F4 _ 48: 83. EC, 20
        mov     qword [rbp-8H], rdi                     ; 03F8 _ 48: 89. 7D, F8
        mov     rdi, qword [rbp-8H]                     ; 03FC _ 48: 8B. 7D, F8
        call    _strlen                                 ; 0400 _ E8, 00000000(rel)
        mov     ecx, eax                                ; 0405 _ 89. C1
        mov     dword [rbp-0CH], ecx                    ; 0407 _ 89. 4D, F4
        movsxd  rax, dword [rbp-0CH]                    ; 040A _ 48: 63. 45, F4
        add     rax, 4                                  ; 040E _ 48: 83. C0, 04
        add     rax, 1                                  ; 0412 _ 48: 83. C0, 01
        mov     rdi, rax                                ; 0416 _ 48: 89. C7
        call    _malloc                                 ; 0419 _ E8, 00000000(rel)
        mov     rdx, -1                                 ; 041E _ 48: C7. C2, FFFFFFFF
        mov     qword [rbp-18H], rax                    ; 0425 _ 48: 89. 45, E8
        mov     ecx, dword [rbp-0CH]                    ; 0429 _ 8B. 4D, F4
        mov     rax, qword [rbp-18H]                    ; 042C _ 48: 8B. 45, E8
        mov     dword [rax], ecx                        ; 0430 _ 89. 08
        mov     rax, qword [rbp-18H]                    ; 0432 _ 48: 8B. 45, E8
        add     rax, 4                                  ; 0436 _ 48: 83. C0, 04
        mov     qword [rbp-18H], rax                    ; 043A _ 48: 89. 45, E8
        mov     rdi, qword [rbp-18H]                    ; 043E _ 48: 8B. 7D, E8
        mov     rsi, qword [rbp-8H]                     ; 0442 _ 48: 8B. 75, F8
        call    ___strcpy_chk                           ; 0446 _ E8, 00000000(rel)
        mov     rdx, qword [rbp-18H]                    ; 044B _ 48: 8B. 55, E8
        mov     qword [rbp-20H], rax                    ; 044F _ 48: 89. 45, E0
        mov     rax, rdx                                ; 0453 _ 48: 89. D0
        add     rsp, 32                                 ; 0456 _ 48: 83. C4, 20
        pop     rbp                                     ; 045A _ 5D
        ret                                             ; 045B _ C3
; _toMoStr End of function

; Filling space: 4H
; Filler type: Multi-byte NOP
;       db 0FH, 1FH, 40H, 00H

ALIGN   8

_str_add:; Function begin
        push    rbp                                     ; 0460 _ 55
        mov     rbp, rsp                                ; 0461 _ 48: 89. E5
        sub     rsp, 48                                 ; 0464 _ 48: 83. EC, 30
        mov     qword [rbp-8H], rdi                     ; 0468 _ 48: 89. 7D, F8
        mov     qword [rbp-10H], rsi                    ; 046C _ 48: 89. 75, F0
        mov     rsi, qword [rbp-8H]                     ; 0470 _ 48: 8B. 75, F8
        sub     rsi, 4                                  ; 0474 _ 48: 83. EE, 04
        mov     eax, dword [rsi]                        ; 0478 _ 8B. 06
        mov     dword [rbp-14H], eax                    ; 047A _ 89. 45, EC
        mov     rsi, qword [rbp-10H]                    ; 047D _ 48: 8B. 75, F0
        sub     rsi, 4                                  ; 0481 _ 48: 83. EE, 04
        mov     eax, dword [rsi]                        ; 0485 _ 8B. 06
        mov     dword [rbp-18H], eax                    ; 0487 _ 89. 45, E8
        mov     eax, dword [rbp-14H]                    ; 048A _ 8B. 45, EC
        add     eax, dword [rbp-18H]                    ; 048D _ 03. 45, E8
        mov     dword [rbp-1CH], eax                    ; 0490 _ 89. 45, E4
        movsxd  rsi, dword [rbp-1CH]                    ; 0493 _ 48: 63. 75, E4
        add     rsi, 4                                  ; 0497 _ 48: 83. C6, 04
        add     rsi, 1                                  ; 049B _ 48: 83. C6, 01
        mov     rdi, rsi                                ; 049F _ 48: 89. F7
        call    _malloc                                 ; 04A2 _ E8, 00000000(rel)
        mov     qword [rbp-28H], rax                    ; 04A7 _ 48: 89. 45, D8
        mov     ecx, dword [rbp-1CH]                    ; 04AB _ 8B. 4D, E4
        mov     rax, qword [rbp-28H]                    ; 04AE _ 48: 8B. 45, D8
        mov     dword [rax], ecx                        ; 04B2 _ 89. 08
        mov     rax, qword [rbp-28H]                    ; 04B4 _ 48: 8B. 45, D8
        add     rax, 4                                  ; 04B8 _ 48: 83. C0, 04
        mov     qword [rbp-28H], rax                    ; 04BC _ 48: 89. 45, D8
        mov     dword [rbp-2CH], 0                      ; 04C0 _ C7. 45, D4, 00000000
?_019:  mov     eax, dword [rbp-2CH]                    ; 04C7 _ 8B. 45, D4
        cmp     eax, dword [rbp-14H]                    ; 04CA _ 3B. 45, EC
; Note: Immediate operand could be made smaller by sign extension
        jge     ?_020                                   ; 04CD _ 0F 8D, 00000024
        movsxd  rax, dword [rbp-2CH]                    ; 04D3 _ 48: 63. 45, D4
        mov     rcx, qword [rbp-8H]                     ; 04D7 _ 48: 8B. 4D, F8
        mov     dl, byte [rcx+rax]                      ; 04DB _ 8A. 14 01
        movsxd  rax, dword [rbp-2CH]                    ; 04DE _ 48: 63. 45, D4
        mov     rcx, qword [rbp-28H]                    ; 04E2 _ 48: 8B. 4D, D8
        mov     byte [rcx+rax], dl                      ; 04E6 _ 88. 14 01
        mov     eax, dword [rbp-2CH]                    ; 04E9 _ 8B. 45, D4
        add     eax, 1                                  ; 04EC _ 83. C0, 01
        mov     dword [rbp-2CH], eax                    ; 04EF _ 89. 45, D4
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_019                                   ; 04F2 _ E9, FFFFFFD0
; _str_add End of function

?_020:  ; Local function
        mov     dword [rbp-30H], 0                      ; 04F7 _ C7. 45, D0, 00000000
?_021:  mov     eax, dword [rbp-30H]                    ; 04FE _ 8B. 45, D0
        cmp     eax, dword [rbp-18H]                    ; 0501 _ 3B. 45, E8
; Note: Immediate operand could be made smaller by sign extension
        jge     ?_022                                   ; 0504 _ 0F 8D, 00000029
        movsxd  rax, dword [rbp-30H]                    ; 050A _ 48: 63. 45, D0
        mov     rcx, qword [rbp-10H]                    ; 050E _ 48: 8B. 4D, F0
        mov     dl, byte [rcx+rax]                      ; 0512 _ 8A. 14 01
        mov     esi, dword [rbp-30H]                    ; 0515 _ 8B. 75, D0
        add     esi, dword [rbp-14H]                    ; 0518 _ 03. 75, EC
        movsxd  rax, esi                                ; 051B _ 48: 63. C6
        mov     rcx, qword [rbp-28H]                    ; 051E _ 48: 8B. 4D, D8
        mov     byte [rcx+rax], dl                      ; 0522 _ 88. 14 01
        mov     eax, dword [rbp-30H]                    ; 0525 _ 8B. 45, D0
        add     eax, 1                                  ; 0528 _ 83. C0, 01
        mov     dword [rbp-30H], eax                    ; 052B _ 89. 45, D0
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_021                                   ; 052E _ E9, FFFFFFCB

?_022:  ; Local function
        movsxd  rax, dword [rbp-1CH]                    ; 0533 _ 48: 63. 45, E4
        mov     rcx, qword [rbp-28H]                    ; 0537 _ 48: 8B. 4D, D8
        mov     byte [rcx+rax], 0                       ; 053B _ C6. 04 01, 00
        mov     rax, qword [rbp-28H]                    ; 053F _ 48: 8B. 45, D8
        add     rsp, 48                                 ; 0543 _ 48: 83. C4, 30
        pop     rbp                                     ; 0547 _ 5D
        ret                                             ; 0548 _ C3

; Filling space: 7H
; Filler type: Multi-byte NOP
;       db 0FH, 1FH, 80H, 00H, 00H, 00H, 00H

ALIGN   8

___lib_printlnInt:; Function begin
        push    rbp                                     ; 0550 _ 55
        mov     rbp, rsp                                ; 0551 _ 48: 89. E5
        sub     rsp, 16                                 ; 0554 _ 48: 83. EC, 10
        lea     rax, [rel _str_le+517H]                 ; 0558 _ 48: 8D. 05, 00000517(rel)
        mov     qword [rbp-8H], rdi                     ; 055F _ 48: 89. 7D, F8
        mov     rsi, qword [rbp-8H]                     ; 0563 _ 48: 8B. 75, F8
        mov     rdi, rax                                ; 0567 _ 48: 89. C7
        mov     al, 0                                   ; 056A _ B0, 00
        call    _printf                                 ; 056C _ E8, 00000000(rel)
        mov     dword [rbp-0CH], eax                    ; 0571 _ 89. 45, F4
        add     rsp, 16                                 ; 0574 _ 48: 83. C4, 10
        pop     rbp                                     ; 0578 _ 5D
        ret                                             ; 0579 _ C3
; ___lib_printlnInt End of function

; Filling space: 6H
; Filler type: Multi-byte NOP
;       db 66H, 0FH, 1FH, 44H, 00H, 00H

ALIGN   8

___lib_printInt:; Function begin
        push    rbp                                     ; 0580 _ 55
        mov     rbp, rsp                                ; 0581 _ 48: 89. E5
        sub     rsp, 16                                 ; 0584 _ 48: 83. EC, 10
        lea     rax, [rel _str_le+4ECH]                 ; 0588 _ 48: 8D. 05, 000004EC(rel)
        mov     qword [rbp-8H], rdi                     ; 058F _ 48: 89. 7D, F8
        mov     rsi, qword [rbp-8H]                     ; 0593 _ 48: 8B. 75, F8
        mov     rdi, rax                                ; 0597 _ 48: 89. C7
        mov     al, 0                                   ; 059A _ B0, 00
        call    _printf                                 ; 059C _ E8, 00000000(rel)
        mov     dword [rbp-0CH], eax                    ; 05A1 _ 89. 45, F4
        add     rsp, 16                                 ; 05A4 _ 48: 83. C4, 10
        pop     rbp                                     ; 05A8 _ 5D
        ret                                             ; 05A9 _ C3
; ___lib_printInt End of function

; Filling space: 6H
; Filler type: Multi-byte NOP
;       db 66H, 0FH, 1FH, 44H, 00H, 00H

ALIGN   8

___lib_malloc:; Function begin
        push    rbp                                     ; 05B0 _ 55
        mov     rbp, rsp                                ; 05B1 _ 48: 89. E5
        sub     rsp, 16                                 ; 05B4 _ 48: 83. EC, 10
        mov     qword [rbp-8H], rdi                     ; 05B8 _ 48: 89. 7D, F8
        mov     rdi, qword [rbp-8H]                     ; 05BC _ 48: 8B. 7D, F8
        call    _malloc                                 ; 05C0 _ E8, 00000000(rel)
        add     rsp, 16                                 ; 05C5 _ 48: 83. C4, 10
        pop     rbp                                     ; 05C9 _ 5D
        ret                                             ; 05CA _ C3
; ___lib_malloc End of function

; Filling space: 5H
; Filler type: Multi-byte NOP
;       db 0FH, 1FH, 44H, 00H, 00H

ALIGN   8

_println:; Function begin
        push    rbp                                     ; 05D0 _ 55
        mov     rbp, rsp                                ; 05D1 _ 48: 89. E5
        sub     rsp, 16                                 ; 05D4 _ 48: 83. EC, 10
        mov     qword [rbp-8H], rdi                     ; 05D8 _ 48: 89. 7D, F8
        mov     rdi, qword [rbp-8H]                     ; 05DC _ 48: 8B. 7D, F8
        call    _puts                                   ; 05E0 _ E8, 00000000(rel)
        mov     dword [rbp-0CH], eax                    ; 05E5 _ 89. 45, F4
        add     rsp, 16                                 ; 05E8 _ 48: 83. C4, 10
        pop     rbp                                     ; 05EC _ 5D
        ret                                             ; 05ED _ C3
; _println End of function

; Filling space: 2H
; Filler type: NOP with prefixes
;       db 66H, 90H

ALIGN   8

_print: ; Function begin
        push    rbp                                     ; 05F0 _ 55
        mov     rbp, rsp                                ; 05F1 _ 48: 89. E5
        sub     rsp, 16                                 ; 05F4 _ 48: 83. EC, 10
        lea     rax, [rel _str_le+480H]                 ; 05F8 _ 48: 8D. 05, 00000480(rel)
        mov     qword [rbp-8H], rdi                     ; 05FF _ 48: 89. 7D, F8
        mov     rsi, qword [rbp-8H]                     ; 0603 _ 48: 8B. 75, F8
        mov     rdi, rax                                ; 0607 _ 48: 89. C7
        mov     al, 0                                   ; 060A _ B0, 00
        call    _printf                                 ; 060C _ E8, 00000000(rel)
        mov     dword [rbp-0CH], eax                    ; 0611 _ 89. 45, F4
        add     rsp, 16                                 ; 0614 _ 48: 83. C4, 10
        pop     rbp                                     ; 0618 _ 5D
        ret                                             ; 0619 _ C3
; _print End of function

; Filling space: 6H
; Filler type: Multi-byte NOP
;       db 66H, 0FH, 1FH, 44H, 00H, 00H

ALIGN   8

_toString:; Function begin
        push    rbp                                     ; 0620 _ 55
        mov     rbp, rsp                                ; 0621 _ 48: 89. E5
        sub     rsp, 48                                 ; 0624 _ 48: 83. EC, 30
        mov     eax, 16                                 ; 0628 _ B8, 00000010
        mov     ecx, eax                                ; 062D _ 89. C1
        mov     qword [rbp-8H], rdi                     ; 062F _ 48: 89. 7D, F8
        mov     rdi, rcx                                ; 0633 _ 48: 89. CF
        call    _malloc                                 ; 0636 _ E8, 00000000(rel)
        mov     qword [rbp-10H], rax                    ; 063B _ 48: 89. 45, F0
        mov     rax, qword [rbp-10H]                    ; 063F _ 48: 8B. 45, F0
        add     rax, 4                                  ; 0643 _ 48: 83. C0, 04
        mov     qword [rbp-10H], rax                    ; 0647 _ 48: 89. 45, F0
        mov     rax, qword [rbp-10H]                    ; 064B _ 48: 8B. 45, F0
        mov     qword [rbp-18H], rax                    ; 064F _ 48: 89. 45, E8
        cmp     qword [rbp-8H], 0                       ; 0653 _ 48: 83. 7D, F8, 00
; Note: Immediate operand could be made smaller by sign extension
        jge     ?_023                                   ; 0658 _ 0F 8D, 0000001E
        xor     eax, eax                                ; 065E _ 31. C0
        mov     ecx, eax                                ; 0660 _ 89. C1
        mov     rdx, qword [rbp-18H]                    ; 0662 _ 48: 8B. 55, E8
        mov     rsi, rdx                                ; 0666 _ 48: 89. D6
        add     rsi, 1                                  ; 0669 _ 48: 83. C6, 01
        mov     qword [rbp-18H], rsi                    ; 066D _ 48: 89. 75, E8
        mov     byte [rdx], 45                          ; 0671 _ C6. 02, 2D
        sub     rcx, qword [rbp-8H]                     ; 0674 _ 48: 2B. 4D, F8
        mov     qword [rbp-8H], rcx                     ; 0678 _ 48: 89. 4D, F8
?_023:  cmp     qword [rbp-8H], 0                       ; 067C _ 48: 83. 7D, F8, 00
; Note: Immediate operand could be made smaller by sign extension
        jne     ?_024                                   ; 0681 _ 0F 85, 00000012
        mov     rax, qword [rbp-18H]                    ; 0687 _ 48: 8B. 45, E8
        mov     rcx, rax                                ; 068B _ 48: 89. C1
        add     rcx, 1                                  ; 068E _ 48: 83. C1, 01
        mov     qword [rbp-18H], rcx                    ; 0692 _ 48: 89. 4D, E8
        mov     byte [rax], 48                          ; 0696 _ C6. 00, 30
?_024:  mov     rax, qword [rbp-18H]                    ; 0699 _ 48: 8B. 45, E8
        mov     qword [rbp-20H], rax                    ; 069D _ 48: 89. 45, E0
?_025:  cmp     qword [rbp-8H], 0                       ; 06A1 _ 48: 83. 7D, F8, 00
; Note: Immediate operand could be made smaller by sign extension
        je      ?_026                                   ; 06A6 _ 0F 84, 00000049
        mov     eax, 10                                 ; 06AC _ B8, 0000000A
        mov     ecx, eax                                ; 06B1 _ 89. C1
        mov     rax, qword [rbp-8H]                     ; 06B3 _ 48: 8B. 45, F8
        cqo                                             ; 06B7 _ 48: 99
        idiv    rcx                                     ; 06B9 _ 48: F7. F9
        mov     esi, eax                                ; 06BC _ 89. C6
        mov     dword [rbp-24H], esi                    ; 06BE _ 89. 75, DC
        mov     rax, qword [rbp-8H]                     ; 06C1 _ 48: 8B. 45, F8
        add     rax, 48                                 ; 06C5 _ 48: 83. C0, 30
        imul    esi, dword [rbp-24H], 10                ; 06C9 _ 6B. 75, DC, 0A
        movsxd  rcx, esi                                ; 06CD _ 48: 63. CE
        sub     rax, rcx                                ; 06D0 _ 48: 29. C8
        mov     dil, al                                 ; 06D3 _ 40: 88. C7
        mov     rax, qword [rbp-18H]                    ; 06D6 _ 48: 8B. 45, E8
        mov     rcx, rax                                ; 06DA _ 48: 89. C1
        add     rcx, 1                                  ; 06DD _ 48: 83. C1, 01
        mov     qword [rbp-18H], rcx                    ; 06E1 _ 48: 89. 4D, E8
        mov     byte [rax], dil                         ; 06E5 _ 40: 88. 38
        movsxd  rax, dword [rbp-24H]                    ; 06E8 _ 48: 63. 45, DC
        mov     qword [rbp-8H], rax                     ; 06EC _ 48: 89. 45, F8
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_025                                   ; 06F0 _ E9, FFFFFFAC
; _toString End of function

?_026:  ; Local function
        mov     rax, qword [rbp-18H]                    ; 06F5 _ 48: 8B. 45, E8
        mov     byte [rax], 0                           ; 06F9 _ C6. 00, 00
        mov     rax, qword [rbp-18H]                    ; 06FC _ 48: 8B. 45, E8
        mov     rcx, qword [rbp-10H]                    ; 0700 _ 48: 8B. 4D, F0
        sub     rax, rcx                                ; 0704 _ 48: 29. C8
        mov     edx, eax                                ; 0707 _ 89. C2
        mov     rax, qword [rbp-10H]                    ; 0709 _ 48: 8B. 45, F0
        mov     dword [rax-4H], edx                     ; 070D _ 89. 50, FC
        mov     rax, qword [rbp-18H]                    ; 0710 _ 48: 8B. 45, E8
        add     rax, -1                                 ; 0714 _ 48: 83. C0, FF
        mov     qword [rbp-18H], rax                    ; 0718 _ 48: 89. 45, E8
?_027:  mov     rax, qword [rbp-20H]                    ; 071C _ 48: 8B. 45, E0
        cmp     rax, qword [rbp-18H]                    ; 0720 _ 48: 3B. 45, E8
; Note: Immediate operand could be made smaller by sign extension
        ja      ?_028                                   ; 0724 _ 0F 87, 0000003B
        mov     rax, qword [rbp-20H]                    ; 072A _ 48: 8B. 45, E0
        mov     cl, byte [rax]                          ; 072E _ 8A. 08
        mov     byte [rbp-25H], cl                      ; 0730 _ 88. 4D, DB
        mov     rax, qword [rbp-18H]                    ; 0733 _ 48: 8B. 45, E8
        mov     cl, byte [rax]                          ; 0737 _ 8A. 08
        mov     rax, qword [rbp-20H]                    ; 0739 _ 48: 8B. 45, E0
        mov     byte [rax], cl                          ; 073D _ 88. 08
        mov     cl, byte [rbp-25H]                      ; 073F _ 8A. 4D, DB
        mov     rax, qword [rbp-18H]                    ; 0742 _ 48: 8B. 45, E8
        mov     byte [rax], cl                          ; 0746 _ 88. 08
        mov     rax, qword [rbp-20H]                    ; 0748 _ 48: 8B. 45, E0
        add     rax, 1                                  ; 074C _ 48: 83. C0, 01
        mov     qword [rbp-20H], rax                    ; 0750 _ 48: 89. 45, E0
        mov     rax, qword [rbp-18H]                    ; 0754 _ 48: 8B. 45, E8
        add     rax, -1                                 ; 0758 _ 48: 83. C0, FF
        mov     qword [rbp-18H], rax                    ; 075C _ 48: 89. 45, E8
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_027                                   ; 0760 _ E9, FFFFFFB7

?_028:  ; Local function
        mov     rax, qword [rbp-10H]                    ; 0765 _ 48: 8B. 45, F0
        add     rsp, 48                                 ; 0769 _ 48: 83. C4, 30
        pop     rbp                                     ; 076D _ 5D
        ret                                             ; 076E _ C3

        nop                                             ; 076F _ 90

ALIGN   16
_calc:  ; Function begin
        push    rbp                                     ; 0770 _ 55
        mov     rbp, rsp                                ; 0771 _ 48: 89. E5
        sub     rsp, 128                                ; 0774 _ 48: 81. EC, 00000080
        mov     qword [rbp-10H], rdi                    ; 077B _ 48: 89. 7D, F0
        mov     rdi, qword [rbp-10H]                    ; 077F _ 48: 8B. 7D, F0
        mov     qword [rbp-18H], rdi                    ; 0783 _ 48: 89. 7D, E8
        mov     rdi, qword [rbp-18H]                    ; 0787 _ 48: 8B. 7D, E8
        call    _strlength                              ; 078B _ E8, 00000000(rel)
        mov     ecx, 1                                  ; 0790 _ B9, 00000001
        mov     edi, ecx                                ; 0795 _ 89. CF
        mov     qword [rbp-40H], rax                    ; 0797 _ 48: 89. 45, C0
        mov     rax, qword [rbp-40H]                    ; 079B _ 48: 8B. 45, C0
        mov     qword [rbp-38H], rax                    ; 079F _ 48: 89. 45, C8
        cmp     rdi, qword [rbp-38H]                    ; 07A3 _ 48: 3B. 7D, C8
; Note: Immediate operand could be made smaller by sign extension
        jne     ?_029                                   ; 07A7 _ 0F 85, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_030                                   ; 07AD _ E9, 00000005

?_029:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_031                                   ; 07B2 _ E9, 0000000D

?_030:  mov     rax, qword [rbp-18H]                    ; 07B7 _ 48: 8B. 45, E8
        mov     qword [rbp-8H], rax                     ; 07BB _ 48: 89. 45, F8
        jmp     ?_046                                   ; 07BF _ E9, 00000199

?_031:  xor     eax, eax                                ; 07C4 _ 31. C0
        mov     esi, eax                                ; 07C6 _ 89. C6
        mov     eax, 2                                  ; 07C8 _ B8, 00000002
        mov     ecx, eax                                ; 07CD _ 89. C1
        mov     rax, qword [rbp-38H]                    ; 07CF _ 48: 8B. 45, C8
        cqo                                             ; 07D3 _ 48: 99
        idiv    rcx                                     ; 07D5 _ 48: F7. F9
        mov     qword [rbp-58H], rax                    ; 07D8 _ 48: 89. 45, A8
        mov     rdi, qword [rbp-18H]                    ; 07DC _ 48: 8B. 7D, E8
        mov     rax, qword [rbp-58H]                    ; 07E0 _ 48: 8B. 45, A8
        sub     rax, 1                                  ; 07E4 _ 48: 83. E8, 01
        mov     rdx, rax                                ; 07E8 _ 48: 89. C2
        call    _substring                              ; 07EB _ E8, 00000000(rel)
        mov     qword [rbp-50H], rax                    ; 07F0 _ 48: 89. 45, B0
        mov     rdi, qword [rbp-50H]                    ; 07F4 _ 48: 8B. 7D, B0
        call    _calc                                   ; 07F8 _ E8, FFFFFF73
        mov     qword [rbp-48H], rax                    ; 07FD _ 48: 89. 45, B8
        mov     rax, qword [rbp-48H]                    ; 0801 _ 48: 8B. 45, B8
        mov     qword [rbp-60H], rax                    ; 0805 _ 48: 89. 45, A0
        mov     rdi, qword [rbp-18H]                    ; 0809 _ 48: 8B. 7D, E8
        mov     rsi, qword [rbp-58H]                    ; 080D _ 48: 8B. 75, A8
        mov     rax, qword [rbp-38H]                    ; 0811 _ 48: 8B. 45, C8
        sub     rax, 1                                  ; 0815 _ 48: 83. E8, 01
        mov     rdx, rax                                ; 0819 _ 48: 89. C2
        call    _substring                              ; 081C _ E8, 00000000(rel)
        mov     qword [rbp-28H], rax                    ; 0821 _ 48: 89. 45, D8
        mov     rdi, qword [rbp-28H]                    ; 0825 _ 48: 8B. 7D, D8
        call    _calc                                   ; 0829 _ E8, FFFFFF42
        mov     qword [rbp-20H], rax                    ; 082E _ 48: 89. 45, E0
        mov     rax, qword [rbp-20H]                    ; 0832 _ 48: 8B. 45, E0
        mov     qword [rbp-30H], rax                    ; 0836 _ 48: 89. 45, D0
        mov     rdi, qword [rbp-60H]                    ; 083A _ 48: 8B. 7D, A0
        mov     rsi, qword [rbp-30H]                    ; 083E _ 48: 8B. 75, D0
        call    _str_le                                 ; 0842 _ E8, 00000000(rel)
        cmp     rax, 0                                  ; 0847 _ 48: 83. F8, 00
; Note: Immediate operand could be made smaller by sign extension
        je      ?_032                                   ; 084B _ 0F 84, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_033                                   ; 0851 _ E9, 00000005

?_032:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_034                                   ; 0856 _ E9, 00000016

?_033:  mov     rdi, qword [rbp-60H]                    ; 085B _ 48: 8B. 7D, A0
        mov     rsi, qword [rbp-30H]                    ; 085F _ 48: 8B. 75, D0
        call    _str_add                                ; 0863 _ E8, 00000000(rel)
        mov     qword [rbp-8H], rax                     ; 0868 _ 48: 89. 45, F8
        jmp     ?_046                                   ; 086C _ E9, 000000EC

?_034:  mov     rdi, qword [rbp-60H]                    ; 0871 _ 48: 8B. 7D, A0
        mov     rsi, qword [rbp-30H]                    ; 0875 _ 48: 8B. 75, D0
        call    _str_eql                                ; 0879 _ E8, 00000000(rel)
        cmp     rax, 0                                  ; 087E _ 48: 83. F8, 00
; Note: Immediate operand could be made smaller by sign extension
        je      ?_035                                   ; 0882 _ 0F 84, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_036                                   ; 0888 _ E9, 00000005

?_035:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_040                                   ; 088D _ E9, 00000076

?_036:  xor     eax, eax                                ; 0892 _ 31. C0
        mov     esi, eax                                ; 0894 _ 89. C6
        mov     rdi, qword [rbp-60H]                    ; 0896 _ 48: 8B. 7D, A0
        call    _ord                                    ; 089A _ E8, 00000000(rel)
        xor     ecx, ecx                                ; 089F _ 31. C9
        mov     esi, ecx                                ; 08A1 _ 89. CE
        mov     qword [rbp-78H], rax                    ; 08A3 _ 48: 89. 45, 88
        mov     rax, qword [rbp-78H]                    ; 08A7 _ 48: 8B. 45, 88
        mov     qword [rbp-80H], rax                    ; 08AB _ 48: 89. 45, 80
        mov     rdi, qword [rbp-30H]                    ; 08AF _ 48: 8B. 7D, D0
        call    _ord                                    ; 08B3 _ E8, 00000000(rel)
        mov     qword [rbp-70H], rax                    ; 08B8 _ 48: 89. 45, 90
        mov     rax, qword [rbp-70H]                    ; 08BC _ 48: 8B. 45, 90
        mov     qword [rbp-68H], rax                    ; 08C0 _ 48: 89. 45, 98
        mov     rax, qword [rbp-80H]                    ; 08C4 _ 48: 8B. 45, 80
        cmp     rax, qword [rbp-68H]                    ; 08C8 _ 48: 3B. 45, 98
; Note: Immediate operand could be made smaller by sign extension
        jge     ?_037                                   ; 08CC _ 0F 8D, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_038                                   ; 08D2 _ E9, 00000005

?_037:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_039                                   ; 08D7 _ E9, 00000016

?_038:  mov     rdi, qword [rbp-60H]                    ; 08DC _ 48: 8B. 7D, A0
        mov     rsi, qword [rbp-30H]                    ; 08E0 _ 48: 8B. 75, D0
        call    _str_add                                ; 08E4 _ E8, 00000000(rel)
        mov     qword [rbp-8H], rax                     ; 08E9 _ 48: 89. 45, F8
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_046                                   ; 08ED _ E9, 0000006B

?_039:  mov     rdi, qword [rbp-30H]                    ; 08F2 _ 48: 8B. 7D, D0
        mov     rsi, qword [rbp-60H]                    ; 08F6 _ 48: 8B. 75, A0
        call    _str_add                                ; 08FA _ E8, 00000000(rel)
        mov     qword [rbp-8H], rax                     ; 08FF _ 48: 89. 45, F8
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_046                                   ; 0903 _ E9, 00000055

?_040:  mov     rdi, qword [rbp-30H]                    ; 0908 _ 48: 8B. 7D, D0
        mov     rsi, qword [rbp-60H]                    ; 090C _ 48: 8B. 75, A0
        call    _str_le                                 ; 0910 _ E8, 00000000(rel)
        cmp     rax, 0                                  ; 0915 _ 48: 83. F8, 00
; Note: Immediate operand could be made smaller by sign extension
        je      ?_041                                   ; 0919 _ 0F 84, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_042                                   ; 091F _ E9, 00000005

?_041:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_043                                   ; 0924 _ E9, 00000016

?_042:  mov     rdi, qword [rbp-30H]                    ; 0929 _ 48: 8B. 7D, D0
        mov     rsi, qword [rbp-60H]                    ; 092D _ 48: 8B. 75, A0
        call    _str_add                                ; 0931 _ E8, 00000000(rel)
        mov     qword [rbp-8H], rax                     ; 0936 _ 48: 89. 45, F8
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_046                                   ; 093A _ E9, 0000001E

?_043:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_044                                   ; 093F _ E9, 00000000

?_044:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_045                                   ; 0944 _ E9, 00000000

?_045:  lea     rdi, [rel _str_le+132H]                 ; 0949 _ 48: 8D. 3D, 00000132(rel)
        call    _toMoStr                                ; 0950 _ E8, 00000000(rel)
        mov     rdi, rax                                ; 0955 _ 48: 89. C7
        call    _println                                ; 0958 _ E8, 00000000(rel)
?_046:  mov     rax, qword [rbp-8H]                     ; 095D _ 48: 8B. 45, F8
        add     rsp, 128                                ; 0961 _ 48: 81. C4, 00000080
        pop     rbp                                     ; 0968 _ 5D
        ret                                             ; 0969 _ C3
; _calc End of function

; Filling space: 6H
; Filler type: Multi-byte NOP
;       db 66H, 0FH, 1FH, 44H, 00H, 00H

ALIGN   8

_main:  ; Function begin
        push    rbp                                     ; 0970 _ 55
        mov     rbp, rsp                                ; 0971 _ 48: 89. E5
        sub     rsp, 64                                 ; 0974 _ 48: 83. EC, 40
        mov     dword [rbp-4H], 0                       ; 0978 _ C7. 45, FC, 00000000
        call    _getString                              ; 097F _ E8, 00000000(rel)
        mov     rcx, qword [rel _A_]                    ; 0984 _ 48: 8B. 0D, 00000000(GOT r)
        mov     qword [rbp-30H], rax                    ; 098B _ 48: 89. 45, D0
        mov     rax, qword [rbp-30H]                    ; 098F _ 48: 8B. 45, D0
        mov     qword [rcx], rax                        ; 0993 _ 48: 89. 01
        call    _getString                              ; 0996 _ E8, 00000000(rel)
        mov     rcx, qword [rel _B_]                    ; 099B _ 48: 8B. 0D, 00000000(GOT r)
        mov     qword [rbp-28H], rax                    ; 09A2 _ 48: 89. 45, D8
        mov     rax, qword [rbp-28H]                    ; 09A6 _ 48: 8B. 45, D8
        mov     qword [rcx], rax                        ; 09AA _ 48: 89. 01
        mov     rdi, qword [rcx]                        ; 09AD _ 48: 8B. 39
        call    _parseInt                               ; 09B0 _ E8, 00000000(rel)
        mov     rcx, qword [rel _A_]                    ; 09B5 _ 48: 8B. 0D, 00000000(GOT r)
        mov     rdi, qword [rel _N_]                    ; 09BC _ 48: 8B. 3D, 00000000(GOT r)
        mov     qword [rbp-38H], rax                    ; 09C3 _ 48: 89. 45, C8
        mov     rax, qword [rbp-38H]                    ; 09C7 _ 48: 8B. 45, C8
        mov     qword [rdi], rax                        ; 09CB _ 48: 89. 07
        mov     rdi, qword [rcx]                        ; 09CE _ 48: 8B. 39
        call    _strlength                              ; 09D1 _ E8, 00000000(rel)
        mov     rcx, qword [rel _N_]                    ; 09D6 _ 48: 8B. 0D, 00000000(GOT r)
        mov     qword [rbp-10H], rax                    ; 09DD _ 48: 89. 45, F0
        mov     rax, qword [rbp-10H]                    ; 09E1 _ 48: 8B. 45, F0
        cmp     rax, qword [rcx]                        ; 09E5 _ 48: 3B. 01
; Note: Immediate operand could be made smaller by sign extension
        jge     ?_047                                   ; 09E8 _ 0F 8D, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_048                                   ; 09EE _ E9, 00000005

?_047:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_049                                   ; 09F3 _ E9, 00000020

?_048:  lea     rdi, [rel _str_le+8FH]                  ; 09F8 _ 48: 8D. 3D, 0000008F(rel)
        call    _toMoStr                                ; 09FF _ E8, 00000000(rel)
        mov     rdi, rax                                ; 0A04 _ 48: 89. C7
        call    _println                                ; 0A07 _ E8, 00000000(rel)
        mov     dword [rbp-4H], 0                       ; 0A0C _ C7. 45, FC, 00000000
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_050                                   ; 0A13 _ E9, 00000052

?_049:  xor     eax, eax                                ; 0A18 _ 31. C0
        mov     esi, eax                                ; 0A1A _ 89. C6
        mov     rcx, qword [rel _N_]                    ; 0A1C _ 48: 8B. 0D, 00000000(GOT r)
        mov     rdx, qword [rel _A_]                    ; 0A23 _ 48: 8B. 15, 00000000(GOT r)
        mov     rdi, qword [rdx]                        ; 0A2A _ 48: 8B. 3A
        mov     rcx, qword [rcx]                        ; 0A2D _ 48: 8B. 09
        sub     rcx, 1                                  ; 0A30 _ 48: 83. E9, 01
        mov     rdx, rcx                                ; 0A34 _ 48: 89. CA
        call    _substring                              ; 0A37 _ E8, 00000000(rel)
        mov     qword [rbp-18H], rax                    ; 0A3C _ 48: 89. 45, E8
        mov     rdi, qword [rbp-18H]                    ; 0A40 _ 48: 8B. 7D, E8
        call    _calc                                   ; 0A44 _ E8, 00000000(rel)
        mov     rcx, qword [rel _C_]                    ; 0A49 _ 48: 8B. 0D, 00000000(GOT r)
        mov     qword [rbp-20H], rax                    ; 0A50 _ 48: 89. 45, E0
        mov     rax, qword [rbp-20H]                    ; 0A54 _ 48: 8B. 45, E0
        mov     qword [rcx], rax                        ; 0A58 _ 48: 89. 01
        mov     rdi, qword [rcx]                        ; 0A5B _ 48: 8B. 39
        call    _println                                ; 0A5E _ E8, 00000000(rel)
        mov     dword [rbp-4H], 0                       ; 0A63 _ C7. 45, FC, 00000000
?_050:  mov     eax, dword [rbp-4H]                     ; 0A6A _ 8B. 45, FC
        add     rsp, 64                                 ; 0A6D _ 48: 83. C4, 40
        pop     rbp                                     ; 0A71 _ 5D
        ret                                             ; 0A72 _ C3
; _main End of function


SECTION ._TEXT.__cstring align=1 noexecute              ; section number 2, data

        db 25H, 64H, 00H, 25H, 6CH, 64H, 0AH, 00H       ; 0A73 _ %d.%ld..
        db 25H, 6CH, 64H, 00H, 25H, 73H, 00H, 4EH       ; 0A7B _ %ld.%s.N
        db 65H, 76H, 65H, 72H, 20H, 45H, 76H, 65H       ; 0A83 _ ever Eve
        db 72H, 21H, 00H, 6CH, 65H, 6EH, 67H, 74H       ; 0A8B _ r!.lengt
        db 68H, 20H, 65H, 72H, 72H, 6FH, 72H, 21H       ; 0A93 _ h error!
        db 00H                                          ; 0A9B _ .


