; Disassembly of file: output.o
; Sun Jun 11 04:34:33 2017
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
global _check: function
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
        lea     rdi, [rel _substring+19E5H]             ; 01C8 _ 48: 8D. 3D, 000019E5(rel)
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
?_008:  movsxd  rax, dword [rbp-4H]                     ; 0245 _ 48: 63. 45, FC
        mov     rcx, qword [rbp-10H]                    ; 0249 _ 48: 8B. 4D, F0
        movzx   edx, byte [rcx+rax]                     ; 024D _ 0F B6. 14 01
        cmp     edx, 10                                 ; 0251 _ 83. FA, 0A
; Note: Immediate operand could be made smaller by sign extension
        je      ?_009                                   ; 0254 _ 0F 84, 0000001F
        call    _getchar                                ; 025A _ E8, 00000000(rel)
        mov     cl, al                                  ; 025F _ 88. C1
        mov     eax, dword [rbp-4H]                     ; 0261 _ 8B. 45, FC
        add     eax, 1                                  ; 0264 _ 83. C0, 01
        mov     dword [rbp-4H], eax                     ; 0267 _ 89. 45, FC
        movsxd  rdx, eax                                ; 026A _ 48: 63. D0
        mov     rsi, qword [rbp-10H]                    ; 026D _ 48: 8B. 75, F0
        mov     byte [rsi+rdx], cl                      ; 0271 _ 88. 0C 16
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_008                                   ; 0274 _ E9, FFFFFFCC
; _getString End of function

?_009:  ; Local function
        movsxd  rax, dword [rbp-4H]                     ; 0279 _ 48: 63. 45, FC
        mov     rcx, qword [rbp-10H]                    ; 027D _ 48: 8B. 4D, F0
        mov     byte [rcx+rax], 0                       ; 0281 _ C6. 04 01, 00
        mov     edx, dword [rbp-4H]                     ; 0285 _ 8B. 55, FC
        mov     rax, qword [rbp-18H]                    ; 0288 _ 48: 8B. 45, E8
        mov     dword [rax], edx                        ; 028C _ 89. 10
        mov     rax, qword [rbp-18H]                    ; 028E _ 48: 8B. 45, E8
        add     rax, 4                                  ; 0292 _ 48: 83. C0, 04
        add     rsp, 32                                 ; 0296 _ 48: 83. C4, 20
        pop     rbp                                     ; 029A _ 5D
        ret                                             ; 029B _ C3

; Filling space: 4H
; Filler type: Multi-byte NOP
;       db 0FH, 1FH, 40H, 00H

ALIGN   8

_size:  ; Function begin
        push    rbp                                     ; 02A0 _ 55
        mov     rbp, rsp                                ; 02A1 _ 48: 89. E5
        mov     qword [rbp-8H], rdi                     ; 02A4 _ 48: 89. 7D, F8
        mov     rdi, qword [rbp-8H]                     ; 02A8 _ 48: 8B. 7D, F8
        sub     rdi, 8                                  ; 02AC _ 48: 83. EF, 08
        mov     rdi, qword [rdi]                        ; 02B0 _ 48: 8B. 3F
        mov     qword [rbp-10H], rdi                    ; 02B3 _ 48: 89. 7D, F0
        mov     rax, qword [rbp-10H]                    ; 02B7 _ 48: 8B. 45, F0
        pop     rbp                                     ; 02BB _ 5D
        ret                                             ; 02BC _ C3
; _size End of function

; Filling space: 3H
; Filler type: Multi-byte NOP
;       db 0FH, 1FH, 00H

ALIGN   8

_toMoStr:; Function begin
        push    rbp                                     ; 02C0 _ 55
        mov     rbp, rsp                                ; 02C1 _ 48: 89. E5
        sub     rsp, 32                                 ; 02C4 _ 48: 83. EC, 20
        mov     qword [rbp-8H], rdi                     ; 02C8 _ 48: 89. 7D, F8
        mov     rdi, qword [rbp-8H]                     ; 02CC _ 48: 8B. 7D, F8
        call    _strlen                                 ; 02D0 _ E8, 00000000(rel)
        mov     ecx, eax                                ; 02D5 _ 89. C1
        mov     dword [rbp-0CH], ecx                    ; 02D7 _ 89. 4D, F4
        movsxd  rax, dword [rbp-0CH]                    ; 02DA _ 48: 63. 45, F4
        add     rax, 4                                  ; 02DE _ 48: 83. C0, 04
        add     rax, 1                                  ; 02E2 _ 48: 83. C0, 01
        mov     rdi, rax                                ; 02E6 _ 48: 89. C7
        call    _malloc                                 ; 02E9 _ E8, 00000000(rel)
        mov     rdx, -1                                 ; 02EE _ 48: C7. C2, FFFFFFFF
        mov     qword [rbp-18H], rax                    ; 02F5 _ 48: 89. 45, E8
        mov     ecx, dword [rbp-0CH]                    ; 02F9 _ 8B. 4D, F4
        mov     rax, qword [rbp-18H]                    ; 02FC _ 48: 8B. 45, E8
        mov     dword [rax], ecx                        ; 0300 _ 89. 08
        mov     rax, qword [rbp-18H]                    ; 0302 _ 48: 8B. 45, E8
        add     rax, 4                                  ; 0306 _ 48: 83. C0, 04
        mov     qword [rbp-18H], rax                    ; 030A _ 48: 89. 45, E8
        mov     rdi, qword [rbp-18H]                    ; 030E _ 48: 8B. 7D, E8
        mov     rsi, qword [rbp-8H]                     ; 0312 _ 48: 8B. 75, F8
        call    ___strcpy_chk                           ; 0316 _ E8, 00000000(rel)
        mov     rdx, qword [rbp-18H]                    ; 031B _ 48: 8B. 55, E8
        mov     qword [rbp-20H], rax                    ; 031F _ 48: 89. 45, E0
        mov     rax, rdx                                ; 0323 _ 48: 89. D0
        add     rsp, 32                                 ; 0326 _ 48: 83. C4, 20
        pop     rbp                                     ; 032A _ 5D
        ret                                             ; 032B _ C3
; _toMoStr End of function

; Filling space: 4H
; Filler type: Multi-byte NOP
;       db 0FH, 1FH, 40H, 00H

ALIGN   8

_str_add:; Function begin
        push    rbp                                     ; 0330 _ 55
        mov     rbp, rsp                                ; 0331 _ 48: 89. E5
        sub     rsp, 48                                 ; 0334 _ 48: 83. EC, 30
        mov     qword [rbp-8H], rdi                     ; 0338 _ 48: 89. 7D, F8
        mov     qword [rbp-10H], rsi                    ; 033C _ 48: 89. 75, F0
        mov     rsi, qword [rbp-8H]                     ; 0340 _ 48: 8B. 75, F8
        sub     rsi, 4                                  ; 0344 _ 48: 83. EE, 04
        mov     eax, dword [rsi]                        ; 0348 _ 8B. 06
        mov     dword [rbp-14H], eax                    ; 034A _ 89. 45, EC
        mov     rsi, qword [rbp-10H]                    ; 034D _ 48: 8B. 75, F0
        sub     rsi, 4                                  ; 0351 _ 48: 83. EE, 04
        mov     eax, dword [rsi]                        ; 0355 _ 8B. 06
        mov     dword [rbp-18H], eax                    ; 0357 _ 89. 45, E8
        mov     eax, dword [rbp-14H]                    ; 035A _ 8B. 45, EC
        add     eax, dword [rbp-18H]                    ; 035D _ 03. 45, E8
        mov     dword [rbp-1CH], eax                    ; 0360 _ 89. 45, E4
        movsxd  rsi, dword [rbp-1CH]                    ; 0363 _ 48: 63. 75, E4
        add     rsi, 4                                  ; 0367 _ 48: 83. C6, 04
        add     rsi, 1                                  ; 036B _ 48: 83. C6, 01
        mov     rdi, rsi                                ; 036F _ 48: 89. F7
        call    _malloc                                 ; 0372 _ E8, 00000000(rel)
        mov     qword [rbp-28H], rax                    ; 0377 _ 48: 89. 45, D8
        mov     ecx, dword [rbp-1CH]                    ; 037B _ 8B. 4D, E4
        mov     rax, qword [rbp-28H]                    ; 037E _ 48: 8B. 45, D8
        mov     dword [rax], ecx                        ; 0382 _ 89. 08
        mov     rax, qword [rbp-28H]                    ; 0384 _ 48: 8B. 45, D8
        add     rax, 4                                  ; 0388 _ 48: 83. C0, 04
        mov     qword [rbp-28H], rax                    ; 038C _ 48: 89. 45, D8
        mov     dword [rbp-2CH], 0                      ; 0390 _ C7. 45, D4, 00000000
?_010:  mov     eax, dword [rbp-2CH]                    ; 0397 _ 8B. 45, D4
        cmp     eax, dword [rbp-14H]                    ; 039A _ 3B. 45, EC
; Note: Immediate operand could be made smaller by sign extension
        jge     ?_011                                   ; 039D _ 0F 8D, 00000024
        movsxd  rax, dword [rbp-2CH]                    ; 03A3 _ 48: 63. 45, D4
        mov     rcx, qword [rbp-8H]                     ; 03A7 _ 48: 8B. 4D, F8
        mov     dl, byte [rcx+rax]                      ; 03AB _ 8A. 14 01
        movsxd  rax, dword [rbp-2CH]                    ; 03AE _ 48: 63. 45, D4
        mov     rcx, qword [rbp-28H]                    ; 03B2 _ 48: 8B. 4D, D8
        mov     byte [rcx+rax], dl                      ; 03B6 _ 88. 14 01
        mov     eax, dword [rbp-2CH]                    ; 03B9 _ 8B. 45, D4
        add     eax, 1                                  ; 03BC _ 83. C0, 01
        mov     dword [rbp-2CH], eax                    ; 03BF _ 89. 45, D4
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_010                                   ; 03C2 _ E9, FFFFFFD0
; _str_add End of function

?_011:  ; Local function
        mov     dword [rbp-30H], 0                      ; 03C7 _ C7. 45, D0, 00000000
?_012:  mov     eax, dword [rbp-30H]                    ; 03CE _ 8B. 45, D0
        cmp     eax, dword [rbp-18H]                    ; 03D1 _ 3B. 45, E8
; Note: Immediate operand could be made smaller by sign extension
        jge     ?_013                                   ; 03D4 _ 0F 8D, 00000029
        movsxd  rax, dword [rbp-30H]                    ; 03DA _ 48: 63. 45, D0
        mov     rcx, qword [rbp-10H]                    ; 03DE _ 48: 8B. 4D, F0
        mov     dl, byte [rcx+rax]                      ; 03E2 _ 8A. 14 01
        mov     esi, dword [rbp-30H]                    ; 03E5 _ 8B. 75, D0
        add     esi, dword [rbp-14H]                    ; 03E8 _ 03. 75, EC
        movsxd  rax, esi                                ; 03EB _ 48: 63. C6
        mov     rcx, qword [rbp-28H]                    ; 03EE _ 48: 8B. 4D, D8
        mov     byte [rcx+rax], dl                      ; 03F2 _ 88. 14 01
        mov     eax, dword [rbp-30H]                    ; 03F5 _ 8B. 45, D0
        add     eax, 1                                  ; 03F8 _ 83. C0, 01
        mov     dword [rbp-30H], eax                    ; 03FB _ 89. 45, D0
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_012                                   ; 03FE _ E9, FFFFFFCB

?_013:  ; Local function
        movsxd  rax, dword [rbp-1CH]                    ; 0403 _ 48: 63. 45, E4
        mov     rcx, qword [rbp-28H]                    ; 0407 _ 48: 8B. 4D, D8
        mov     byte [rcx+rax], 0                       ; 040B _ C6. 04 01, 00
        mov     rax, qword [rbp-28H]                    ; 040F _ 48: 8B. 45, D8
        add     rsp, 48                                 ; 0413 _ 48: 83. C4, 30
        pop     rbp                                     ; 0417 _ 5D
        ret                                             ; 0418 _ C3

; Filling space: 7H
; Filler type: Multi-byte NOP
;       db 0FH, 1FH, 80H, 00H, 00H, 00H, 00H

ALIGN   8

___lib_printlnInt:; Function begin
        push    rbp                                     ; 0420 _ 55
        mov     rbp, rsp                                ; 0421 _ 48: 89. E5
        sub     rsp, 16                                 ; 0424 _ 48: 83. EC, 10
        lea     rax, [rel _substring+1788H]             ; 0428 _ 48: 8D. 05, 00001788(rel)
        mov     qword [rbp-8H], rdi                     ; 042F _ 48: 89. 7D, F8
        mov     rsi, qword [rbp-8H]                     ; 0433 _ 48: 8B. 75, F8
        mov     rdi, rax                                ; 0437 _ 48: 89. C7
        mov     al, 0                                   ; 043A _ B0, 00
        call    _printf                                 ; 043C _ E8, 00000000(rel)
        mov     dword [rbp-0CH], eax                    ; 0441 _ 89. 45, F4
        add     rsp, 16                                 ; 0444 _ 48: 83. C4, 10
        pop     rbp                                     ; 0448 _ 5D
        ret                                             ; 0449 _ C3
; ___lib_printlnInt End of function

; Filling space: 6H
; Filler type: Multi-byte NOP
;       db 66H, 0FH, 1FH, 44H, 00H, 00H

ALIGN   8

___lib_printInt:; Function begin
        push    rbp                                     ; 0450 _ 55
        mov     rbp, rsp                                ; 0451 _ 48: 89. E5
        sub     rsp, 16                                 ; 0454 _ 48: 83. EC, 10
        lea     rax, [rel _substring+175DH]             ; 0458 _ 48: 8D. 05, 0000175D(rel)
        mov     qword [rbp-8H], rdi                     ; 045F _ 48: 89. 7D, F8
        mov     rsi, qword [rbp-8H]                     ; 0463 _ 48: 8B. 75, F8
        mov     rdi, rax                                ; 0467 _ 48: 89. C7
        mov     al, 0                                   ; 046A _ B0, 00
        call    _printf                                 ; 046C _ E8, 00000000(rel)
        mov     dword [rbp-0CH], eax                    ; 0471 _ 89. 45, F4
        add     rsp, 16                                 ; 0474 _ 48: 83. C4, 10
        pop     rbp                                     ; 0478 _ 5D
        ret                                             ; 0479 _ C3
; ___lib_printInt End of function

; Filling space: 6H
; Filler type: Multi-byte NOP
;       db 66H, 0FH, 1FH, 44H, 00H, 00H

ALIGN   8

___lib_malloc:; Function begin
        push    rbp                                     ; 0480 _ 55
        mov     rbp, rsp                                ; 0481 _ 48: 89. E5
        sub     rsp, 16                                 ; 0484 _ 48: 83. EC, 10
        mov     qword [rbp-8H], rdi                     ; 0488 _ 48: 89. 7D, F8
        mov     rdi, qword [rbp-8H]                     ; 048C _ 48: 8B. 7D, F8
        call    _malloc                                 ; 0490 _ E8, 00000000(rel)
        add     rsp, 16                                 ; 0495 _ 48: 83. C4, 10
        pop     rbp                                     ; 0499 _ 5D
        ret                                             ; 049A _ C3
; ___lib_malloc End of function

; Filling space: 5H
; Filler type: Multi-byte NOP
;       db 0FH, 1FH, 44H, 00H, 00H

ALIGN   8

_println:; Function begin
        push    rbp                                     ; 04A0 _ 55
        mov     rbp, rsp                                ; 04A1 _ 48: 89. E5
        sub     rsp, 16                                 ; 04A4 _ 48: 83. EC, 10
        mov     qword [rbp-8H], rdi                     ; 04A8 _ 48: 89. 7D, F8
        mov     rdi, qword [rbp-8H]                     ; 04AC _ 48: 8B. 7D, F8
        call    _puts                                   ; 04B0 _ E8, 00000000(rel)
        mov     dword [rbp-0CH], eax                    ; 04B5 _ 89. 45, F4
        add     rsp, 16                                 ; 04B8 _ 48: 83. C4, 10
        pop     rbp                                     ; 04BC _ 5D
        ret                                             ; 04BD _ C3
; _println End of function

; Filling space: 2H
; Filler type: NOP with prefixes
;       db 66H, 90H

ALIGN   8

_print: ; Function begin
        push    rbp                                     ; 04C0 _ 55
        mov     rbp, rsp                                ; 04C1 _ 48: 89. E5
        sub     rsp, 16                                 ; 04C4 _ 48: 83. EC, 10
        lea     rax, [rel _substring+16F1H]             ; 04C8 _ 48: 8D. 05, 000016F1(rel)
        mov     qword [rbp-8H], rdi                     ; 04CF _ 48: 89. 7D, F8
        mov     rsi, qword [rbp-8H]                     ; 04D3 _ 48: 8B. 75, F8
        mov     rdi, rax                                ; 04D7 _ 48: 89. C7
        mov     al, 0                                   ; 04DA _ B0, 00
        call    _printf                                 ; 04DC _ E8, 00000000(rel)
        mov     dword [rbp-0CH], eax                    ; 04E1 _ 89. 45, F4
        add     rsp, 16                                 ; 04E4 _ 48: 83. C4, 10
        pop     rbp                                     ; 04E8 _ 5D
        ret                                             ; 04E9 _ C3
; _print End of function

; Filling space: 6H
; Filler type: Multi-byte NOP
;       db 66H, 0FH, 1FH, 44H, 00H, 00H

ALIGN   8

_toString:; Function begin
        push    rbp                                     ; 04F0 _ 55
        mov     rbp, rsp                                ; 04F1 _ 48: 89. E5
        sub     rsp, 48                                 ; 04F4 _ 48: 83. EC, 30
        mov     eax, 16                                 ; 04F8 _ B8, 00000010
        mov     ecx, eax                                ; 04FD _ 89. C1
        mov     qword [rbp-8H], rdi                     ; 04FF _ 48: 89. 7D, F8
        mov     rdi, rcx                                ; 0503 _ 48: 89. CF
        call    _malloc                                 ; 0506 _ E8, 00000000(rel)
        mov     qword [rbp-10H], rax                    ; 050B _ 48: 89. 45, F0
        mov     rax, qword [rbp-10H]                    ; 050F _ 48: 8B. 45, F0
        add     rax, 4                                  ; 0513 _ 48: 83. C0, 04
        mov     qword [rbp-10H], rax                    ; 0517 _ 48: 89. 45, F0
        mov     rax, qword [rbp-10H]                    ; 051B _ 48: 8B. 45, F0
        mov     qword [rbp-18H], rax                    ; 051F _ 48: 89. 45, E8
        cmp     qword [rbp-8H], 0                       ; 0523 _ 48: 83. 7D, F8, 00
; Note: Immediate operand could be made smaller by sign extension
        jge     ?_014                                   ; 0528 _ 0F 8D, 0000001E
        xor     eax, eax                                ; 052E _ 31. C0
        mov     ecx, eax                                ; 0530 _ 89. C1
        mov     rdx, qword [rbp-18H]                    ; 0532 _ 48: 8B. 55, E8
        mov     rsi, rdx                                ; 0536 _ 48: 89. D6
        add     rsi, 1                                  ; 0539 _ 48: 83. C6, 01
        mov     qword [rbp-18H], rsi                    ; 053D _ 48: 89. 75, E8
        mov     byte [rdx], 45                          ; 0541 _ C6. 02, 2D
        sub     rcx, qword [rbp-8H]                     ; 0544 _ 48: 2B. 4D, F8
        mov     qword [rbp-8H], rcx                     ; 0548 _ 48: 89. 4D, F8
?_014:  cmp     qword [rbp-8H], 0                       ; 054C _ 48: 83. 7D, F8, 00
; Note: Immediate operand could be made smaller by sign extension
        jne     ?_015                                   ; 0551 _ 0F 85, 00000012
        mov     rax, qword [rbp-18H]                    ; 0557 _ 48: 8B. 45, E8
        mov     rcx, rax                                ; 055B _ 48: 89. C1
        add     rcx, 1                                  ; 055E _ 48: 83. C1, 01
        mov     qword [rbp-18H], rcx                    ; 0562 _ 48: 89. 4D, E8
        mov     byte [rax], 48                          ; 0566 _ C6. 00, 30
?_015:  mov     rax, qword [rbp-18H]                    ; 0569 _ 48: 8B. 45, E8
        mov     qword [rbp-20H], rax                    ; 056D _ 48: 89. 45, E0
?_016:  cmp     qword [rbp-8H], 0                       ; 0571 _ 48: 83. 7D, F8, 00
; Note: Immediate operand could be made smaller by sign extension
        je      ?_017                                   ; 0576 _ 0F 84, 00000049
        mov     eax, 10                                 ; 057C _ B8, 0000000A
        mov     ecx, eax                                ; 0581 _ 89. C1
        mov     rax, qword [rbp-8H]                     ; 0583 _ 48: 8B. 45, F8
        cqo                                             ; 0587 _ 48: 99
        idiv    rcx                                     ; 0589 _ 48: F7. F9
        mov     esi, eax                                ; 058C _ 89. C6
        mov     dword [rbp-24H], esi                    ; 058E _ 89. 75, DC
        mov     rax, qword [rbp-8H]                     ; 0591 _ 48: 8B. 45, F8
        add     rax, 48                                 ; 0595 _ 48: 83. C0, 30
        imul    esi, dword [rbp-24H], 10                ; 0599 _ 6B. 75, DC, 0A
        movsxd  rcx, esi                                ; 059D _ 48: 63. CE
        sub     rax, rcx                                ; 05A0 _ 48: 29. C8
        mov     dil, al                                 ; 05A3 _ 40: 88. C7
        mov     rax, qword [rbp-18H]                    ; 05A6 _ 48: 8B. 45, E8
        mov     rcx, rax                                ; 05AA _ 48: 89. C1
        add     rcx, 1                                  ; 05AD _ 48: 83. C1, 01
        mov     qword [rbp-18H], rcx                    ; 05B1 _ 48: 89. 4D, E8
        mov     byte [rax], dil                         ; 05B5 _ 40: 88. 38
        movsxd  rax, dword [rbp-24H]                    ; 05B8 _ 48: 63. 45, DC
        mov     qword [rbp-8H], rax                     ; 05BC _ 48: 89. 45, F8
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_016                                   ; 05C0 _ E9, FFFFFFAC
; _toString End of function

?_017:  ; Local function
        mov     rax, qword [rbp-18H]                    ; 05C5 _ 48: 8B. 45, E8
        mov     byte [rax], 0                           ; 05C9 _ C6. 00, 00
        mov     rax, qword [rbp-18H]                    ; 05CC _ 48: 8B. 45, E8
        mov     rcx, qword [rbp-10H]                    ; 05D0 _ 48: 8B. 4D, F0
        sub     rax, rcx                                ; 05D4 _ 48: 29. C8
        mov     edx, eax                                ; 05D7 _ 89. C2
        mov     rax, qword [rbp-10H]                    ; 05D9 _ 48: 8B. 45, F0
        mov     dword [rax-4H], edx                     ; 05DD _ 89. 50, FC
        mov     rax, qword [rbp-18H]                    ; 05E0 _ 48: 8B. 45, E8
        add     rax, -1                                 ; 05E4 _ 48: 83. C0, FF
        mov     qword [rbp-18H], rax                    ; 05E8 _ 48: 89. 45, E8
?_018:  mov     rax, qword [rbp-20H]                    ; 05EC _ 48: 8B. 45, E0
        cmp     rax, qword [rbp-18H]                    ; 05F0 _ 48: 3B. 45, E8
; Note: Immediate operand could be made smaller by sign extension
        ja      ?_019                                   ; 05F4 _ 0F 87, 0000003B
        mov     rax, qword [rbp-20H]                    ; 05FA _ 48: 8B. 45, E0
        mov     cl, byte [rax]                          ; 05FE _ 8A. 08
        mov     byte [rbp-25H], cl                      ; 0600 _ 88. 4D, DB
        mov     rax, qword [rbp-18H]                    ; 0603 _ 48: 8B. 45, E8
        mov     cl, byte [rax]                          ; 0607 _ 8A. 08
        mov     rax, qword [rbp-20H]                    ; 0609 _ 48: 8B. 45, E0
        mov     byte [rax], cl                          ; 060D _ 88. 08
        mov     cl, byte [rbp-25H]                      ; 060F _ 8A. 4D, DB
        mov     rax, qword [rbp-18H]                    ; 0612 _ 48: 8B. 45, E8
        mov     byte [rax], cl                          ; 0616 _ 88. 08
        mov     rax, qword [rbp-20H]                    ; 0618 _ 48: 8B. 45, E0
        add     rax, 1                                  ; 061C _ 48: 83. C0, 01
        mov     qword [rbp-20H], rax                    ; 0620 _ 48: 89. 45, E0
        mov     rax, qword [rbp-18H]                    ; 0624 _ 48: 8B. 45, E8
        add     rax, -1                                 ; 0628 _ 48: 83. C0, FF
        mov     qword [rbp-18H], rax                    ; 062C _ 48: 89. 45, E8
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_018                                   ; 0630 _ E9, FFFFFFB7

?_019:  ; Local function
        mov     rax, qword [rbp-10H]                    ; 0635 _ 48: 8B. 45, F0
        add     rsp, 48                                 ; 0639 _ 48: 83. C4, 30
        pop     rbp                                     ; 063D _ 5D
        ret                                             ; 063E _ C3

        nop                                             ; 063F _ 90

ALIGN   16
_check: ; Function begin
        push    rbp                                     ; 0640 _ 55
        mov     rbp, rsp                                ; 0641 _ 48: 89. E5
        mov     qword [rbp-8H], rdi                     ; 0644 _ 48: 89. 7D, F8
        mov     qword [rbp-10H], rsi                    ; 0648 _ 48: 89. 75, F0
        mov     rsi, qword [rbp-8H]                     ; 064C _ 48: 8B. 75, F8
        mov     qword [rbp-18H], rsi                    ; 0650 _ 48: 89. 75, E8
        mov     rsi, qword [rbp-10H]                    ; 0654 _ 48: 8B. 75, F0
        mov     qword [rbp-20H], rsi                    ; 0658 _ 48: 89. 75, E0
        mov     rsi, qword [rbp-18H]                    ; 065C _ 48: 8B. 75, E8
        cmp     rsi, qword [rbp-20H]                    ; 0660 _ 48: 3B. 75, E0
        setl    al                                      ; 0664 _ 0F 9C. C0
        and     al, 01H                                 ; 0667 _ 24, 01
        movzx   ecx, al                                 ; 0669 _ 0F B6. C8
        movsxd  rsi, ecx                                ; 066C _ 48: 63. F1
        mov     qword [rbp-28H], rsi                    ; 066F _ 48: 89. 75, D8
        cmp     qword [rbp-28H], 0                      ; 0673 _ 48: 83. 7D, D8, 00
; Note: Immediate operand could be made smaller by sign extension
        je      ?_020                                   ; 0678 _ 0F 84, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_021                                   ; 067E _ E9, 00000005

?_020:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_022                                   ; 0683 _ E9, 00000014

?_021:  cmp     qword [rbp-18H], 0                      ; 0688 _ 48: 83. 7D, E8, 00
        setge   al                                      ; 068D _ 0F 9D. C0
        and     al, 01H                                 ; 0690 _ 24, 01
        movzx   ecx, al                                 ; 0692 _ 0F B6. C8
        movsxd  rdx, ecx                                ; 0695 _ 48: 63. D1
        mov     qword [rbp-28H], rdx                    ; 0698 _ 48: 89. 55, D8
?_022:  mov     rax, qword [rbp-28H]                    ; 069C _ 48: 8B. 45, D8
        pop     rbp                                     ; 06A0 _ 5D
        ret                                             ; 06A1 _ C3
; _check End of function

; Filling space: 0EH
; Filler type: Multi-byte NOP
;       db 66H, 66H, 66H, 66H, 66H, 2EH, 0FH, 1FH
;       db 84H, 00H, 00H, 00H, 00H, 00H

ALIGN   16

_main:  ; Function begin
        push    rbp                                     ; 06B0 _ 55
        mov     rbp, rsp                                ; 06B1 _ 48: 89. E5
        sub     rsp, 576                                ; 06B4 _ 48: 81. EC, 00000240
        mov     dword [rbp-4H], 0                       ; 06BB _ C7. 45, FC, 00000000
        call    _getInt                                 ; 06C2 _ E8, 00000000(rel)
        mov     qword [rbp-68H], rax                    ; 06C7 _ 48: 89. 45, 98
        mov     rax, qword [rbp-68H]                    ; 06CB _ 48: 8B. 45, 98
        mov     qword [rbp-28H], rax                    ; 06CF _ 48: 89. 45, D8
        mov     qword [rbp-30H], 0                      ; 06D3 _ 48: C7. 45, D0, 00000000
        mov     qword [rbp-90H], 0                      ; 06DB _ 48: C7. 85, FFFFFF70, 00000000
        mov     qword [rbp-78H], 0                      ; 06E6 _ 48: C7. 45, 88, 00000000
        mov     qword [rbp-70H], 0                      ; 06EE _ 48: C7. 45, 90, 00000000
        mov     rax, qword [rbp-28H]                    ; 06F6 _ 48: 8B. 45, D8
        sub     rax, 1                                  ; 06FA _ 48: 83. E8, 01
        mov     qword [rbp-18H], rax                    ; 06FE _ 48: 89. 45, E8
        mov     rax, qword [rbp-28H]                    ; 0702 _ 48: 8B. 45, D8
        sub     rax, 1                                  ; 0706 _ 48: 83. E8, 01
        mov     qword [rbp-10H], rax                    ; 070A _ 48: 89. 45, F0
        mov     qword [rbp-0D0H], 0                     ; 070E _ 48: C7. 85, FFFFFF30, 00000000
        mov     qword [rbp-0D8H], 0                     ; 0719 _ 48: C7. 85, FFFFFF28, 00000000
        mov     qword [rbp-60H], 0                      ; 0724 _ 48: C7. 45, A0, 00000000
        mov     qword [rbp-88H], 0                      ; 072C _ 48: C7. 85, FFFFFF78, 00000000
        mov     rax, qword [rbp-28H]                    ; 0737 _ 48: 8B. 45, D8
        imul    rax, qword [rbp-28H]                    ; 073B _ 48: 0F AF. 45, D8
        mov     qword [rbp-40H], rax                    ; 0740 _ 48: 89. 45, C0
        mov     rax, qword [rbp-40H]                    ; 0744 _ 48: 8B. 45, C0
        shl     rax, 3                                  ; 0748 _ 48: C1. E0, 03
        add     rax, 8                                  ; 074C _ 48: 83. C0, 08
        mov     rdi, rax                                ; 0750 _ 48: 89. C7
        call    ___lib_malloc                           ; 0753 _ E8, 00000000(rel)
        mov     qword [rbp-58H], rax                    ; 0758 _ 48: 89. 45, A8
        mov     rax, qword [rbp-40H]                    ; 075C _ 48: 8B. 45, C0
        mov     rdi, qword [rbp-58H]                    ; 0760 _ 48: 8B. 7D, A8
        mov     qword [rdi], rax                        ; 0764 _ 48: 89. 07
        mov     rax, qword [rbp-58H]                    ; 0767 _ 48: 8B. 45, A8
        add     rax, 8                                  ; 076B _ 48: 83. C0, 08
        mov     qword [rbp-58H], rax                    ; 076F _ 48: 89. 45, A8
        mov     rax, qword [rbp-58H]                    ; 0773 _ 48: 8B. 45, A8
        mov     qword [rbp-80H], rax                    ; 0777 _ 48: 89. 45, 80
        mov     qword [rbp-98H], 0                      ; 077B _ 48: C7. 85, FFFFFF68, 00000000
?_023:  mov     rax, qword [rbp-98H]                    ; 0786 _ 48: 8B. 85, FFFFFF68
        mov     rcx, qword [rbp-28H]                    ; 078D _ 48: 8B. 4D, D8
        imul    rcx, qword [rbp-28H]                    ; 0791 _ 48: 0F AF. 4D, D8
        cmp     rax, rcx                                ; 0796 _ 48: 39. C8
; Note: Immediate operand could be made smaller by sign extension
        jge     ?_024                                   ; 0799 _ 0F 8D, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_025                                   ; 079F _ E9, 00000005

?_024:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_026                                   ; 07A4 _ E9, 00000030

?_025:  mov     rax, qword [rbp-80H]                    ; 07A9 _ 48: 8B. 45, 80
        mov     rcx, qword [rbp-98H]                    ; 07AD _ 48: 8B. 8D, FFFFFF68
        shl     rcx, 3                                  ; 07B4 _ 48: C1. E1, 03
        add     rax, rcx                                ; 07B8 _ 48: 01. C8
        mov     qword [rax], 0                          ; 07BB _ 48: C7. 00, 00000000
        mov     rax, qword [rbp-98H]                    ; 07C2 _ 48: 8B. 85, FFFFFF68
        add     rax, 1                                  ; 07C9 _ 48: 83. C0, 01
        mov     qword [rbp-98H], rax                    ; 07CD _ 48: 89. 85, FFFFFF68
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_023                                   ; 07D4 _ E9, FFFFFFAD
; _main End of function

?_026:  ; Local function
        mov     rax, qword [rbp-28H]                    ; 07D9 _ 48: 8B. 45, D8
        imul    rax, qword [rbp-28H]                    ; 07DD _ 48: 0F AF. 45, D8
        mov     qword [rbp-48H], rax                    ; 07E2 _ 48: 89. 45, B8
        mov     rax, qword [rbp-48H]                    ; 07E6 _ 48: 8B. 45, B8
        shl     rax, 3                                  ; 07EA _ 48: C1. E0, 03
        add     rax, 8                                  ; 07EE _ 48: 83. C0, 08
        mov     rdi, rax                                ; 07F2 _ 48: 89. C7
        call    ___lib_malloc                           ; 07F5 _ E8, 00000000(rel)
        mov     qword [rbp-50H], rax                    ; 07FA _ 48: 89. 45, B0
        mov     rax, qword [rbp-48H]                    ; 07FE _ 48: 8B. 45, B8
        mov     rdi, qword [rbp-50H]                    ; 0802 _ 48: 8B. 7D, B0
        mov     qword [rdi], rax                        ; 0806 _ 48: 89. 07
        mov     rax, qword [rbp-50H]                    ; 0809 _ 48: 8B. 45, B0
        add     rax, 8                                  ; 080D _ 48: 83. C0, 08
        mov     qword [rbp-50H], rax                    ; 0811 _ 48: 89. 45, B0
        mov     rax, qword [rbp-50H]                    ; 0815 _ 48: 8B. 45, B0
        mov     qword [rbp-20H], rax                    ; 0819 _ 48: 89. 45, E0
        mov     qword [rbp-98H], 0                      ; 081D _ 48: C7. 85, FFFFFF68, 00000000
?_027:  mov     rax, qword [rbp-98H]                    ; 0828 _ 48: 8B. 85, FFFFFF68
        mov     rcx, qword [rbp-28H]                    ; 082F _ 48: 8B. 4D, D8
        imul    rcx, qword [rbp-28H]                    ; 0833 _ 48: 0F AF. 4D, D8
        cmp     rax, rcx                                ; 0838 _ 48: 39. C8
; Note: Immediate operand could be made smaller by sign extension
        jge     ?_028                                   ; 083B _ 0F 8D, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_029                                   ; 0841 _ E9, 00000005

?_028:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_030                                   ; 0846 _ E9, 00000030

?_029:  mov     rax, qword [rbp-20H]                    ; 084B _ 48: 8B. 45, E0
        mov     rcx, qword [rbp-98H]                    ; 084F _ 48: 8B. 8D, FFFFFF68
        shl     rcx, 3                                  ; 0856 _ 48: C1. E1, 03
        add     rax, rcx                                ; 085A _ 48: 01. C8
        mov     qword [rax], 0                          ; 085D _ 48: C7. 00, 00000000
        mov     rax, qword [rbp-98H]                    ; 0864 _ 48: 8B. 85, FFFFFF68
        add     rax, 1                                  ; 086B _ 48: 83. C0, 01
        mov     qword [rbp-98H], rax                    ; 086F _ 48: 89. 85, FFFFFF68
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_027                                   ; 0876 _ E9, FFFFFFAD

?_030:  ; Local function
        mov     rax, qword [rbp-28H]                    ; 087B _ 48: 8B. 45, D8
        mov     qword [rbp-0B8H], rax                   ; 087F _ 48: 89. 85, FFFFFF48
        mov     rax, qword [rbp-0B8H]                   ; 0886 _ 48: 8B. 85, FFFFFF48
        shl     rax, 3                                  ; 088D _ 48: C1. E0, 03
        add     rax, 8                                  ; 0891 _ 48: 83. C0, 08
        mov     rdi, rax                                ; 0895 _ 48: 89. C7
        call    ___lib_malloc                           ; 0898 _ E8, 00000000(rel)
        mov     qword [rbp-0A8H], rax                   ; 089D _ 48: 89. 85, FFFFFF58
        mov     rax, qword [rbp-0B8H]                   ; 08A4 _ 48: 8B. 85, FFFFFF48
        mov     rdi, qword [rbp-0A8H]                   ; 08AB _ 48: 8B. BD, FFFFFF58
        mov     qword [rdi], rax                        ; 08B2 _ 48: 89. 07
        mov     rax, qword [rbp-0A8H]                   ; 08B5 _ 48: 8B. 85, FFFFFF58
        add     rax, 8                                  ; 08BC _ 48: 83. C0, 08
        mov     qword [rbp-0A8H], rax                   ; 08C0 _ 48: 89. 85, FFFFFF58
        mov     rax, qword [rbp-0A8H]                   ; 08C7 _ 48: 8B. 85, FFFFFF58
        mov     qword [rbp-0E0H], rax                   ; 08CE _ 48: 89. 85, FFFFFF20
        mov     qword [rbp-98H], 0                      ; 08D5 _ 48: C7. 85, FFFFFF68, 00000000
?_031:  mov     rax, qword [rbp-98H]                    ; 08E0 _ 48: 8B. 85, FFFFFF68
        cmp     rax, qword [rbp-28H]                    ; 08E7 _ 48: 3B. 45, D8
; Note: Immediate operand could be made smaller by sign extension
        jge     ?_032                                   ; 08EB _ 0F 8D, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_033                                   ; 08F1 _ E9, 00000005

?_032:  jmp     ?_039                                   ; 08F6 _ E9, 000000F1

?_033:  mov     rax, qword [rbp-28H]                    ; 08FB _ 48: 8B. 45, D8
        mov     qword [rbp-0F0H], rax                   ; 08FF _ 48: 89. 85, FFFFFF10
        mov     rax, qword [rbp-0F0H]                   ; 0906 _ 48: 8B. 85, FFFFFF10
        shl     rax, 3                                  ; 090D _ 48: C1. E0, 03
        add     rax, 8                                  ; 0911 _ 48: 83. C0, 08
        mov     rdi, rax                                ; 0915 _ 48: 89. C7
        call    ___lib_malloc                           ; 0918 _ E8, 00000000(rel)
        mov     qword [rbp-0E8H], rax                   ; 091D _ 48: 89. 85, FFFFFF18
        mov     rax, qword [rbp-0F0H]                   ; 0924 _ 48: 8B. 85, FFFFFF10
        mov     rdi, qword [rbp-0E8H]                   ; 092B _ 48: 8B. BD, FFFFFF18
        mov     qword [rdi], rax                        ; 0932 _ 48: 89. 07
        mov     rax, qword [rbp-0E8H]                   ; 0935 _ 48: 8B. 85, FFFFFF18
        add     rax, 8                                  ; 093C _ 48: 83. C0, 08
        mov     qword [rbp-0E8H], rax                   ; 0940 _ 48: 89. 85, FFFFFF18
        mov     rax, qword [rbp-0E8H]                   ; 0947 _ 48: 8B. 85, FFFFFF18
        mov     rdi, qword [rbp-0E0H]                   ; 094E _ 48: 8B. BD, FFFFFF20
        mov     rcx, qword [rbp-98H]                    ; 0955 _ 48: 8B. 8D, FFFFFF68
        shl     rcx, 3                                  ; 095C _ 48: C1. E1, 03
        add     rdi, rcx                                ; 0960 _ 48: 01. CF
        mov     qword [rdi], rax                        ; 0963 _ 48: 89. 07
        mov     qword [rbp-0A0H], 0                     ; 0966 _ 48: C7. 85, FFFFFF60, 00000000
?_034:  mov     rax, qword [rbp-0A0H]                   ; 0971 _ 48: 8B. 85, FFFFFF60
        cmp     rax, qword [rbp-28H]                    ; 0978 _ 48: 3B. 45, D8
; Note: Immediate operand could be made smaller by sign extension
        jge     ?_035                                   ; 097C _ 0F 8D, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_036                                   ; 0982 _ E9, 00000005

?_035:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_037                                   ; 0987 _ E9, 00000044

?_036:  mov     rax, qword [rbp-0E0H]                   ; 098C _ 48: 8B. 85, FFFFFF20
        mov     rcx, qword [rbp-98H]                    ; 0993 _ 48: 8B. 8D, FFFFFF68
        shl     rcx, 3                                  ; 099A _ 48: C1. E1, 03
        add     rax, rcx                                ; 099E _ 48: 01. C8
        mov     rax, qword [rax]                        ; 09A1 _ 48: 8B. 00
        mov     rcx, qword [rbp-0A0H]                   ; 09A4 _ 48: 8B. 8D, FFFFFF60
        shl     rcx, 3                                  ; 09AB _ 48: C1. E1, 03
        add     rax, rcx                                ; 09AF _ 48: 01. C8
        mov     qword [rax], -1                         ; 09B2 _ 48: C7. 00, FFFFFFFF
        mov     rax, qword [rbp-0A0H]                   ; 09B9 _ 48: 8B. 85, FFFFFF60
        add     rax, 1                                  ; 09C0 _ 48: 83. C0, 01
        mov     qword [rbp-0A0H], rax                   ; 09C4 _ 48: 89. 85, FFFFFF60
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_034                                   ; 09CB _ E9, FFFFFFA1

?_037:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_038                                   ; 09D0 _ E9, 00000000

?_038:  mov     rax, qword [rbp-98H]                    ; 09D5 _ 48: 8B. 85, FFFFFF68
        add     rax, 1                                  ; 09DC _ 48: 83. C0, 01
        mov     qword [rbp-98H], rax                    ; 09E0 _ 48: 89. 85, FFFFFF68
        jmp     ?_031                                   ; 09E7 _ E9, FFFFFEF4

?_039:  ; Local function
        mov     rax, qword [rbp-78H]                    ; 09EC _ 48: 8B. 45, 88
        mov     rcx, qword [rbp-80H]                    ; 09F0 _ 48: 8B. 4D, 80
        mov     qword [rcx], rax                        ; 09F4 _ 48: 89. 01
        mov     rax, qword [rbp-70H]                    ; 09F7 _ 48: 8B. 45, 90
        mov     rcx, qword [rbp-20H]                    ; 09FB _ 48: 8B. 4D, E0
        mov     qword [rcx], rax                        ; 09FF _ 48: 89. 01
        mov     rax, qword [rbp-0E0H]                   ; 0A02 _ 48: 8B. 85, FFFFFF20
        mov     rcx, qword [rbp-78H]                    ; 0A09 _ 48: 8B. 4D, 88
        shl     rcx, 3                                  ; 0A0D _ 48: C1. E1, 03
        add     rax, rcx                                ; 0A11 _ 48: 01. C8
        mov     rax, qword [rax]                        ; 0A14 _ 48: 8B. 00
        mov     rcx, qword [rbp-70H]                    ; 0A17 _ 48: 8B. 4D, 90
        shl     rcx, 3                                  ; 0A1B _ 48: C1. E1, 03
        add     rax, rcx                                ; 0A1F _ 48: 01. C8
        mov     qword [rax], 0                          ; 0A22 _ 48: C7. 00, 00000000
?_040:  mov     rax, qword [rbp-30H]                    ; 0A29 _ 48: 8B. 45, D0
        cmp     rax, qword [rbp-90H]                    ; 0A2D _ 48: 3B. 85, FFFFFF70
; Note: Immediate operand could be made smaller by sign extension
        jg      ?_041                                   ; 0A34 _ 0F 8F, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_042                                   ; 0A3A _ E9, 00000005

?_041:  jmp     ?_166                                   ; 0A3F _ E9, 000010F9

?_042:  mov     rax, qword [rbp-0E0H]                   ; 0A44 _ 48: 8B. 85, FFFFFF20
        mov     rcx, qword [rbp-80H]                    ; 0A4B _ 48: 8B. 4D, 80
        mov     rdx, qword [rbp-30H]                    ; 0A4F _ 48: 8B. 55, D0
        shl     rdx, 3                                  ; 0A53 _ 48: C1. E2, 03
        add     rcx, rdx                                ; 0A57 _ 48: 01. D1
        mov     rcx, qword [rcx]                        ; 0A5A _ 48: 8B. 09
        shl     rcx, 3                                  ; 0A5D _ 48: C1. E1, 03
        add     rax, rcx                                ; 0A61 _ 48: 01. C8
        mov     rax, qword [rax]                        ; 0A64 _ 48: 8B. 00
        mov     rcx, qword [rbp-20H]                    ; 0A67 _ 48: 8B. 4D, E0
        mov     rdx, qword [rbp-30H]                    ; 0A6B _ 48: 8B. 55, D0
        shl     rdx, 3                                  ; 0A6F _ 48: C1. E2, 03
        add     rcx, rdx                                ; 0A73 _ 48: 01. D1
        mov     rcx, qword [rcx]                        ; 0A76 _ 48: 8B. 09
        shl     rcx, 3                                  ; 0A79 _ 48: C1. E1, 03
        add     rax, rcx                                ; 0A7D _ 48: 01. C8
        mov     rax, qword [rax]                        ; 0A80 _ 48: 8B. 00
        mov     qword [rbp-60H], rax                    ; 0A83 _ 48: 89. 45, A0
        mov     rax, qword [rbp-80H]                    ; 0A87 _ 48: 8B. 45, 80
        mov     rcx, qword [rbp-30H]                    ; 0A8B _ 48: 8B. 4D, D0
        shl     rcx, 3                                  ; 0A8F _ 48: C1. E1, 03
        add     rax, rcx                                ; 0A93 _ 48: 01. C8
        mov     rax, qword [rax]                        ; 0A96 _ 48: 8B. 00
        sub     rax, 1                                  ; 0A99 _ 48: 83. E8, 01
        mov     qword [rbp-0D0H], rax                   ; 0A9D _ 48: 89. 85, FFFFFF30
        mov     rax, qword [rbp-20H]                    ; 0AA4 _ 48: 8B. 45, E0
        mov     rcx, qword [rbp-30H]                    ; 0AA8 _ 48: 8B. 4D, D0
        shl     rcx, 3                                  ; 0AAC _ 48: C1. E1, 03
        add     rax, rcx                                ; 0AB0 _ 48: 01. C8
        mov     rax, qword [rax]                        ; 0AB3 _ 48: 8B. 00
        sub     rax, 2                                  ; 0AB6 _ 48: 83. E8, 02
        mov     qword [rbp-0D8H], rax                   ; 0ABA _ 48: 89. 85, FFFFFF28
        mov     rdi, qword [rbp-0D0H]                   ; 0AC1 _ 48: 8B. BD, FFFFFF30
        mov     rsi, qword [rbp-28H]                    ; 0AC8 _ 48: 8B. 75, D8
        call    _check                                  ; 0ACC _ E8, 00000000(rel)
        mov     qword [rbp-1E8H], rax                   ; 0AD1 _ 48: 89. 85, FFFFFE18
        mov     rax, qword [rbp-1E8H]                   ; 0AD8 _ 48: 8B. 85, FFFFFE18
        mov     qword [rbp-1C0H], rax                   ; 0ADF _ 48: 89. 85, FFFFFE40
        cmp     qword [rbp-1C0H], 0                     ; 0AE6 _ 48: 83. BD, FFFFFE40, 00
; Note: Immediate operand could be made smaller by sign extension
        je      ?_043                                   ; 0AEE _ 0F 84, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_044                                   ; 0AF4 _ E9, 00000005

?_043:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_045                                   ; 0AF9 _ E9, 00000025

?_044:  mov     rdi, qword [rbp-0D8H]                   ; 0AFE _ 48: 8B. BD, FFFFFF28
        mov     rsi, qword [rbp-28H]                    ; 0B05 _ 48: 8B. 75, D8
        call    _check                                  ; 0B09 _ E8, 00000000(rel)
        mov     qword [rbp-1F0H], rax                   ; 0B0E _ 48: 89. 85, FFFFFE10
        mov     rax, qword [rbp-1F0H]                   ; 0B15 _ 48: 8B. 85, FFFFFE10
        mov     qword [rbp-1C0H], rax                   ; 0B1C _ 48: 89. 85, FFFFFE40
?_045:  mov     rax, qword [rbp-1C0H]                   ; 0B23 _ 48: 8B. 85, FFFFFE40
        mov     qword [rbp-1B0H], rax                   ; 0B2A _ 48: 89. 85, FFFFFE50
        cmp     qword [rbp-1B0H], 0                     ; 0B31 _ 48: 83. BD, FFFFFE50, 00
; Note: Immediate operand could be made smaller by sign extension
        je      ?_046                                   ; 0B39 _ 0F 84, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_047                                   ; 0B3F _ E9, 00000005

?_046:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_048                                   ; 0B44 _ E9, 0000003D

?_047:  mov     rax, qword [rbp-0E0H]                   ; 0B49 _ 48: 8B. 85, FFFFFF20
        mov     rcx, qword [rbp-0D0H]                   ; 0B50 _ 48: 8B. 8D, FFFFFF30
        shl     rcx, 3                                  ; 0B57 _ 48: C1. E1, 03
        add     rax, rcx                                ; 0B5B _ 48: 01. C8
        mov     rax, qword [rax]                        ; 0B5E _ 48: 8B. 00
        mov     rcx, qword [rbp-0D8H]                   ; 0B61 _ 48: 8B. 8D, FFFFFF28
        shl     rcx, 3                                  ; 0B68 _ 48: C1. E1, 03
        add     rax, rcx                                ; 0B6C _ 48: 01. C8
        cmp     qword [rax], -1                         ; 0B6F _ 48: 83. 38, FF
        sete    dl                                      ; 0B73 _ 0F 94. C2
        and     dl, 01H                                 ; 0B76 _ 80. E2, 01
        movzx   esi, dl                                 ; 0B79 _ 0F B6. F2
        movsxd  rax, esi                                ; 0B7C _ 48: 63. C6
        mov     qword [rbp-1B0H], rax                   ; 0B7F _ 48: 89. 85, FFFFFE50
?_048:  cmp     qword [rbp-1B0H], 0                     ; 0B86 _ 48: 83. BD, FFFFFE50, 00
; Note: Immediate operand could be made smaller by sign extension
        je      ?_049                                   ; 0B8E _ 0F 84, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_050                                   ; 0B94 _ E9, 00000005

?_049:  jmp     ?_057                                   ; 0B99 _ E9, 000000FA

?_050:  mov     rax, qword [rbp-90H]                    ; 0B9E _ 48: 8B. 85, FFFFFF70
        add     rax, 1                                  ; 0BA5 _ 48: 83. C0, 01
        mov     qword [rbp-90H], rax                    ; 0BA9 _ 48: 89. 85, FFFFFF70
        mov     rax, qword [rbp-0D0H]                   ; 0BB0 _ 48: 8B. 85, FFFFFF30
        mov     rcx, qword [rbp-80H]                    ; 0BB7 _ 48: 8B. 4D, 80
        mov     rdx, qword [rbp-90H]                    ; 0BBB _ 48: 8B. 95, FFFFFF70
        shl     rdx, 3                                  ; 0BC2 _ 48: C1. E2, 03
        add     rcx, rdx                                ; 0BC6 _ 48: 01. D1
        mov     qword [rcx], rax                        ; 0BC9 _ 48: 89. 01
        mov     rax, qword [rbp-0D8H]                   ; 0BCC _ 48: 8B. 85, FFFFFF28
        mov     rcx, qword [rbp-20H]                    ; 0BD3 _ 48: 8B. 4D, E0
        mov     rdx, qword [rbp-90H]                    ; 0BD7 _ 48: 8B. 95, FFFFFF70
        shl     rdx, 3                                  ; 0BDE _ 48: C1. E2, 03
        add     rcx, rdx                                ; 0BE2 _ 48: 01. D1
        mov     qword [rcx], rax                        ; 0BE5 _ 48: 89. 01
        mov     rax, qword [rbp-60H]                    ; 0BE8 _ 48: 8B. 45, A0
        add     rax, 1                                  ; 0BEC _ 48: 83. C0, 01
        mov     rcx, qword [rbp-0E0H]                   ; 0BF0 _ 48: 8B. 8D, FFFFFF20
        mov     rdx, qword [rbp-0D0H]                   ; 0BF7 _ 48: 8B. 95, FFFFFF30
        shl     rdx, 3                                  ; 0BFE _ 48: C1. E2, 03
        add     rcx, rdx                                ; 0C02 _ 48: 01. D1
        mov     rcx, qword [rcx]                        ; 0C05 _ 48: 8B. 09
        mov     rdx, qword [rbp-0D8H]                   ; 0C08 _ 48: 8B. 95, FFFFFF28
        shl     rdx, 3                                  ; 0C0F _ 48: C1. E2, 03
        add     rcx, rdx                                ; 0C13 _ 48: 01. D1
        mov     qword [rcx], rax                        ; 0C16 _ 48: 89. 01
        mov     rax, qword [rbp-0D0H]                   ; 0C19 _ 48: 8B. 85, FFFFFF30
        cmp     rax, qword [rbp-18H]                    ; 0C20 _ 48: 3B. 45, E8
        sete    sil                                     ; 0C24 _ 40: 0F 94. C6
        and     sil, 01H                                ; 0C28 _ 40: 80. E6, 01
        movzx   edi, sil                                ; 0C2C _ 40: 0F B6. FE
        movsxd  rax, edi                                ; 0C30 _ 48: 63. C7
        mov     qword [rbp-200H], rax                   ; 0C33 _ 48: 89. 85, FFFFFE00
        cmp     qword [rbp-200H], 0                     ; 0C3A _ 48: 83. BD, FFFFFE00, 00
; Note: Immediate operand could be made smaller by sign extension
        je      ?_051                                   ; 0C42 _ 0F 84, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_052                                   ; 0C48 _ E9, 00000005

?_051:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_053                                   ; 0C4D _ E9, 0000001E

?_052:  mov     rax, qword [rbp-0D8H]                   ; 0C52 _ 48: 8B. 85, FFFFFF28
        cmp     rax, qword [rbp-10H]                    ; 0C59 _ 48: 3B. 45, F0
        sete    cl                                      ; 0C5D _ 0F 94. C1
        and     cl, 01H                                 ; 0C60 _ 80. E1, 01
        movzx   edx, cl                                 ; 0C63 _ 0F B6. D1
        movsxd  rax, edx                                ; 0C66 _ 48: 63. C2
        mov     qword [rbp-200H], rax                   ; 0C69 _ 48: 89. 85, FFFFFE00
?_053:  cmp     qword [rbp-200H], 0                     ; 0C70 _ 48: 83. BD, FFFFFE00, 00
; Note: Immediate operand could be made smaller by sign extension
        je      ?_054                                   ; 0C78 _ 0F 84, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_055                                   ; 0C7E _ E9, 00000005

?_054:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_056                                   ; 0C83 _ E9, 0000000B

?_055:  mov     qword [rbp-88H], 1                      ; 0C88 _ 48: C7. 85, FFFFFF78, 00000001
?_056:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_057                                   ; 0C93 _ E9, 00000000

?_057:  mov     rax, qword [rbp-80H]                    ; 0C98 _ 48: 8B. 45, 80
        mov     rcx, qword [rbp-30H]                    ; 0C9C _ 48: 8B. 4D, D0
        shl     rcx, 3                                  ; 0CA0 _ 48: C1. E1, 03
        add     rax, rcx                                ; 0CA4 _ 48: 01. C8
        mov     rax, qword [rax]                        ; 0CA7 _ 48: 8B. 00
        sub     rax, 1                                  ; 0CAA _ 48: 83. E8, 01
        mov     qword [rbp-0D0H], rax                   ; 0CAE _ 48: 89. 85, FFFFFF30
        mov     rax, qword [rbp-20H]                    ; 0CB5 _ 48: 8B. 45, E0
        mov     rcx, qword [rbp-30H]                    ; 0CB9 _ 48: 8B. 4D, D0
        shl     rcx, 3                                  ; 0CBD _ 48: C1. E1, 03
        add     rax, rcx                                ; 0CC1 _ 48: 01. C8
        mov     rax, qword [rax]                        ; 0CC4 _ 48: 8B. 00
        add     rax, 2                                  ; 0CC7 _ 48: 83. C0, 02
        mov     qword [rbp-0D8H], rax                   ; 0CCB _ 48: 89. 85, FFFFFF28
        mov     rdi, qword [rbp-0D0H]                   ; 0CD2 _ 48: 8B. BD, FFFFFF30
        mov     rsi, qword [rbp-28H]                    ; 0CD9 _ 48: 8B. 75, D8
        call    _check                                  ; 0CDD _ E8, 00000000(rel)
        mov     qword [rbp-108H], rax                   ; 0CE2 _ 48: 89. 85, FFFFFEF8
        mov     rax, qword [rbp-108H]                   ; 0CE9 _ 48: 8B. 85, FFFFFEF8
        mov     qword [rbp-128H], rax                   ; 0CF0 _ 48: 89. 85, FFFFFED8
        cmp     qword [rbp-128H], 0                     ; 0CF7 _ 48: 83. BD, FFFFFED8, 00
; Note: Immediate operand could be made smaller by sign extension
        je      ?_058                                   ; 0CFF _ 0F 84, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_059                                   ; 0D05 _ E9, 00000005

?_058:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_060                                   ; 0D0A _ E9, 00000025

?_059:  mov     rdi, qword [rbp-0D8H]                   ; 0D0F _ 48: 8B. BD, FFFFFF28
        mov     rsi, qword [rbp-28H]                    ; 0D16 _ 48: 8B. 75, D8
        call    _check                                  ; 0D1A _ E8, 00000000(rel)
        mov     qword [rbp-110H], rax                   ; 0D1F _ 48: 89. 85, FFFFFEF0
        mov     rax, qword [rbp-110H]                   ; 0D26 _ 48: 8B. 85, FFFFFEF0
        mov     qword [rbp-128H], rax                   ; 0D2D _ 48: 89. 85, FFFFFED8
?_060:  mov     rax, qword [rbp-128H]                   ; 0D34 _ 48: 8B. 85, FFFFFED8
        mov     qword [rbp-1E0H], rax                   ; 0D3B _ 48: 89. 85, FFFFFE20
        cmp     qword [rbp-1E0H], 0                     ; 0D42 _ 48: 83. BD, FFFFFE20, 00
; Note: Immediate operand could be made smaller by sign extension
        je      ?_061                                   ; 0D4A _ 0F 84, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_062                                   ; 0D50 _ E9, 00000005

?_061:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_063                                   ; 0D55 _ E9, 0000003D

?_062:  mov     rax, qword [rbp-0E0H]                   ; 0D5A _ 48: 8B. 85, FFFFFF20
        mov     rcx, qword [rbp-0D0H]                   ; 0D61 _ 48: 8B. 8D, FFFFFF30
        shl     rcx, 3                                  ; 0D68 _ 48: C1. E1, 03
        add     rax, rcx                                ; 0D6C _ 48: 01. C8
        mov     rax, qword [rax]                        ; 0D6F _ 48: 8B. 00
        mov     rcx, qword [rbp-0D8H]                   ; 0D72 _ 48: 8B. 8D, FFFFFF28
        shl     rcx, 3                                  ; 0D79 _ 48: C1. E1, 03
        add     rax, rcx                                ; 0D7D _ 48: 01. C8
        cmp     qword [rax], -1                         ; 0D80 _ 48: 83. 38, FF
        sete    dl                                      ; 0D84 _ 0F 94. C2
        and     dl, 01H                                 ; 0D87 _ 80. E2, 01
        movzx   esi, dl                                 ; 0D8A _ 0F B6. F2
        movsxd  rax, esi                                ; 0D8D _ 48: 63. C6
        mov     qword [rbp-1E0H], rax                   ; 0D90 _ 48: 89. 85, FFFFFE20
?_063:  cmp     qword [rbp-1E0H], 0                     ; 0D97 _ 48: 83. BD, FFFFFE20, 00
; Note: Immediate operand could be made smaller by sign extension
        je      ?_064                                   ; 0D9F _ 0F 84, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_065                                   ; 0DA5 _ E9, 00000005

?_064:  jmp     ?_072                                   ; 0DAA _ E9, 000000FA

?_065:  mov     rax, qword [rbp-90H]                    ; 0DAF _ 48: 8B. 85, FFFFFF70
        add     rax, 1                                  ; 0DB6 _ 48: 83. C0, 01
        mov     qword [rbp-90H], rax                    ; 0DBA _ 48: 89. 85, FFFFFF70
        mov     rax, qword [rbp-0D0H]                   ; 0DC1 _ 48: 8B. 85, FFFFFF30
        mov     rcx, qword [rbp-80H]                    ; 0DC8 _ 48: 8B. 4D, 80
        mov     rdx, qword [rbp-90H]                    ; 0DCC _ 48: 8B. 95, FFFFFF70
        shl     rdx, 3                                  ; 0DD3 _ 48: C1. E2, 03
        add     rcx, rdx                                ; 0DD7 _ 48: 01. D1
        mov     qword [rcx], rax                        ; 0DDA _ 48: 89. 01
        mov     rax, qword [rbp-0D8H]                   ; 0DDD _ 48: 8B. 85, FFFFFF28
        mov     rcx, qword [rbp-20H]                    ; 0DE4 _ 48: 8B. 4D, E0
        mov     rdx, qword [rbp-90H]                    ; 0DE8 _ 48: 8B. 95, FFFFFF70
        shl     rdx, 3                                  ; 0DEF _ 48: C1. E2, 03
        add     rcx, rdx                                ; 0DF3 _ 48: 01. D1
        mov     qword [rcx], rax                        ; 0DF6 _ 48: 89. 01
        mov     rax, qword [rbp-60H]                    ; 0DF9 _ 48: 8B. 45, A0
        add     rax, 1                                  ; 0DFD _ 48: 83. C0, 01
        mov     rcx, qword [rbp-0E0H]                   ; 0E01 _ 48: 8B. 8D, FFFFFF20
        mov     rdx, qword [rbp-0D0H]                   ; 0E08 _ 48: 8B. 95, FFFFFF30
        shl     rdx, 3                                  ; 0E0F _ 48: C1. E2, 03
        add     rcx, rdx                                ; 0E13 _ 48: 01. D1
        mov     rcx, qword [rcx]                        ; 0E16 _ 48: 8B. 09
        mov     rdx, qword [rbp-0D8H]                   ; 0E19 _ 48: 8B. 95, FFFFFF28
        shl     rdx, 3                                  ; 0E20 _ 48: C1. E2, 03
        add     rcx, rdx                                ; 0E24 _ 48: 01. D1
        mov     qword [rcx], rax                        ; 0E27 _ 48: 89. 01
        mov     rax, qword [rbp-0D0H]                   ; 0E2A _ 48: 8B. 85, FFFFFF30
        cmp     rax, qword [rbp-18H]                    ; 0E31 _ 48: 3B. 45, E8
        sete    sil                                     ; 0E35 _ 40: 0F 94. C6
        and     sil, 01H                                ; 0E39 _ 40: 80. E6, 01
        movzx   edi, sil                                ; 0E3D _ 40: 0F B6. FE
        movsxd  rax, edi                                ; 0E41 _ 48: 63. C7
        mov     qword [rbp-208H], rax                   ; 0E44 _ 48: 89. 85, FFFFFDF8
        cmp     qword [rbp-208H], 0                     ; 0E4B _ 48: 83. BD, FFFFFDF8, 00
; Note: Immediate operand could be made smaller by sign extension
        je      ?_066                                   ; 0E53 _ 0F 84, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_067                                   ; 0E59 _ E9, 00000005

?_066:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_068                                   ; 0E5E _ E9, 0000001E

?_067:  mov     rax, qword [rbp-0D8H]                   ; 0E63 _ 48: 8B. 85, FFFFFF28
        cmp     rax, qword [rbp-10H]                    ; 0E6A _ 48: 3B. 45, F0
        sete    cl                                      ; 0E6E _ 0F 94. C1
        and     cl, 01H                                 ; 0E71 _ 80. E1, 01
        movzx   edx, cl                                 ; 0E74 _ 0F B6. D1
        movsxd  rax, edx                                ; 0E77 _ 48: 63. C2
        mov     qword [rbp-208H], rax                   ; 0E7A _ 48: 89. 85, FFFFFDF8
?_068:  cmp     qword [rbp-208H], 0                     ; 0E81 _ 48: 83. BD, FFFFFDF8, 00
; Note: Immediate operand could be made smaller by sign extension
        je      ?_069                                   ; 0E89 _ 0F 84, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_070                                   ; 0E8F _ E9, 00000005

?_069:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_071                                   ; 0E94 _ E9, 0000000B

?_070:  mov     qword [rbp-88H], 1                      ; 0E99 _ 48: C7. 85, FFFFFF78, 00000001
?_071:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_072                                   ; 0EA4 _ E9, 00000000

?_072:  mov     rax, qword [rbp-80H]                    ; 0EA9 _ 48: 8B. 45, 80
        mov     rcx, qword [rbp-30H]                    ; 0EAD _ 48: 8B. 4D, D0
        shl     rcx, 3                                  ; 0EB1 _ 48: C1. E1, 03
        add     rax, rcx                                ; 0EB5 _ 48: 01. C8
        mov     rax, qword [rax]                        ; 0EB8 _ 48: 8B. 00
        add     rax, 1                                  ; 0EBB _ 48: 83. C0, 01
        mov     qword [rbp-0D0H], rax                   ; 0EBF _ 48: 89. 85, FFFFFF30
        mov     rax, qword [rbp-20H]                    ; 0EC6 _ 48: 8B. 45, E0
        mov     rcx, qword [rbp-30H]                    ; 0ECA _ 48: 8B. 4D, D0
        shl     rcx, 3                                  ; 0ECE _ 48: C1. E1, 03
        add     rax, rcx                                ; 0ED2 _ 48: 01. C8
        mov     rax, qword [rax]                        ; 0ED5 _ 48: 8B. 00
        sub     rax, 2                                  ; 0ED8 _ 48: 83. E8, 02
        mov     qword [rbp-0D8H], rax                   ; 0EDC _ 48: 89. 85, FFFFFF28
        mov     rdi, qword [rbp-0D0H]                   ; 0EE3 _ 48: 8B. BD, FFFFFF30
        mov     rsi, qword [rbp-28H]                    ; 0EEA _ 48: 8B. 75, D8
        call    _check                                  ; 0EEE _ E8, 00000000(rel)
        mov     qword [rbp-148H], rax                   ; 0EF3 _ 48: 89. 85, FFFFFEB8
        mov     rax, qword [rbp-148H]                   ; 0EFA _ 48: 8B. 85, FFFFFEB8
        mov     qword [rbp-138H], rax                   ; 0F01 _ 48: 89. 85, FFFFFEC8
        cmp     qword [rbp-138H], 0                     ; 0F08 _ 48: 83. BD, FFFFFEC8, 00
; Note: Immediate operand could be made smaller by sign extension
        je      ?_073                                   ; 0F10 _ 0F 84, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_074                                   ; 0F16 _ E9, 00000005

?_073:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_075                                   ; 0F1B _ E9, 00000025

?_074:  mov     rdi, qword [rbp-0D8H]                   ; 0F20 _ 48: 8B. BD, FFFFFF28
        mov     rsi, qword [rbp-28H]                    ; 0F27 _ 48: 8B. 75, D8
        call    _check                                  ; 0F2B _ E8, 00000000(rel)
        mov     qword [rbp-170H], rax                   ; 0F30 _ 48: 89. 85, FFFFFE90
        mov     rax, qword [rbp-170H]                   ; 0F37 _ 48: 8B. 85, FFFFFE90
        mov     qword [rbp-138H], rax                   ; 0F3E _ 48: 89. 85, FFFFFEC8
?_075:  mov     rax, qword [rbp-138H]                   ; 0F45 _ 48: 8B. 85, FFFFFEC8
        mov     qword [rbp-158H], rax                   ; 0F4C _ 48: 89. 85, FFFFFEA8
        cmp     qword [rbp-158H], 0                     ; 0F53 _ 48: 83. BD, FFFFFEA8, 00
; Note: Immediate operand could be made smaller by sign extension
        je      ?_076                                   ; 0F5B _ 0F 84, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_077                                   ; 0F61 _ E9, 00000005

?_076:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_078                                   ; 0F66 _ E9, 0000003D

?_077:  mov     rax, qword [rbp-0E0H]                   ; 0F6B _ 48: 8B. 85, FFFFFF20
        mov     rcx, qword [rbp-0D0H]                   ; 0F72 _ 48: 8B. 8D, FFFFFF30
        shl     rcx, 3                                  ; 0F79 _ 48: C1. E1, 03
        add     rax, rcx                                ; 0F7D _ 48: 01. C8
        mov     rax, qword [rax]                        ; 0F80 _ 48: 8B. 00
        mov     rcx, qword [rbp-0D8H]                   ; 0F83 _ 48: 8B. 8D, FFFFFF28
        shl     rcx, 3                                  ; 0F8A _ 48: C1. E1, 03
        add     rax, rcx                                ; 0F8E _ 48: 01. C8
        cmp     qword [rax], -1                         ; 0F91 _ 48: 83. 38, FF
        sete    dl                                      ; 0F95 _ 0F 94. C2
        and     dl, 01H                                 ; 0F98 _ 80. E2, 01
        movzx   esi, dl                                 ; 0F9B _ 0F B6. F2
        movsxd  rax, esi                                ; 0F9E _ 48: 63. C6
        mov     qword [rbp-158H], rax                   ; 0FA1 _ 48: 89. 85, FFFFFEA8
?_078:  cmp     qword [rbp-158H], 0                     ; 0FA8 _ 48: 83. BD, FFFFFEA8, 00
; Note: Immediate operand could be made smaller by sign extension
        je      ?_079                                   ; 0FB0 _ 0F 84, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_080                                   ; 0FB6 _ E9, 00000005

?_079:  jmp     ?_087                                   ; 0FBB _ E9, 000000FA

?_080:  mov     rax, qword [rbp-90H]                    ; 0FC0 _ 48: 8B. 85, FFFFFF70
        add     rax, 1                                  ; 0FC7 _ 48: 83. C0, 01
        mov     qword [rbp-90H], rax                    ; 0FCB _ 48: 89. 85, FFFFFF70
        mov     rax, qword [rbp-0D0H]                   ; 0FD2 _ 48: 8B. 85, FFFFFF30
        mov     rcx, qword [rbp-80H]                    ; 0FD9 _ 48: 8B. 4D, 80
        mov     rdx, qword [rbp-90H]                    ; 0FDD _ 48: 8B. 95, FFFFFF70
        shl     rdx, 3                                  ; 0FE4 _ 48: C1. E2, 03
        add     rcx, rdx                                ; 0FE8 _ 48: 01. D1
        mov     qword [rcx], rax                        ; 0FEB _ 48: 89. 01
        mov     rax, qword [rbp-0D8H]                   ; 0FEE _ 48: 8B. 85, FFFFFF28
        mov     rcx, qword [rbp-20H]                    ; 0FF5 _ 48: 8B. 4D, E0
        mov     rdx, qword [rbp-90H]                    ; 0FF9 _ 48: 8B. 95, FFFFFF70
        shl     rdx, 3                                  ; 1000 _ 48: C1. E2, 03
        add     rcx, rdx                                ; 1004 _ 48: 01. D1
        mov     qword [rcx], rax                        ; 1007 _ 48: 89. 01
        mov     rax, qword [rbp-60H]                    ; 100A _ 48: 8B. 45, A0
        add     rax, 1                                  ; 100E _ 48: 83. C0, 01
        mov     rcx, qword [rbp-0E0H]                   ; 1012 _ 48: 8B. 8D, FFFFFF20
        mov     rdx, qword [rbp-0D0H]                   ; 1019 _ 48: 8B. 95, FFFFFF30
        shl     rdx, 3                                  ; 1020 _ 48: C1. E2, 03
        add     rcx, rdx                                ; 1024 _ 48: 01. D1
        mov     rcx, qword [rcx]                        ; 1027 _ 48: 8B. 09
        mov     rdx, qword [rbp-0D8H]                   ; 102A _ 48: 8B. 95, FFFFFF28
        shl     rdx, 3                                  ; 1031 _ 48: C1. E2, 03
        add     rcx, rdx                                ; 1035 _ 48: 01. D1
        mov     qword [rcx], rax                        ; 1038 _ 48: 89. 01
        mov     rax, qword [rbp-0D0H]                   ; 103B _ 48: 8B. 85, FFFFFF30
        cmp     rax, qword [rbp-18H]                    ; 1042 _ 48: 3B. 45, E8
        sete    sil                                     ; 1046 _ 40: 0F 94. C6
        and     sil, 01H                                ; 104A _ 40: 80. E6, 01
        movzx   edi, sil                                ; 104E _ 40: 0F B6. FE
        movsxd  rax, edi                                ; 1052 _ 48: 63. C7
        mov     qword [rbp-210H], rax                   ; 1055 _ 48: 89. 85, FFFFFDF0
        cmp     qword [rbp-210H], 0                     ; 105C _ 48: 83. BD, FFFFFDF0, 00
; Note: Immediate operand could be made smaller by sign extension
        je      ?_081                                   ; 1064 _ 0F 84, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_082                                   ; 106A _ E9, 00000005

?_081:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_083                                   ; 106F _ E9, 0000001E

?_082:  mov     rax, qword [rbp-0D8H]                   ; 1074 _ 48: 8B. 85, FFFFFF28
        cmp     rax, qword [rbp-10H]                    ; 107B _ 48: 3B. 45, F0
        sete    cl                                      ; 107F _ 0F 94. C1
        and     cl, 01H                                 ; 1082 _ 80. E1, 01
        movzx   edx, cl                                 ; 1085 _ 0F B6. D1
        movsxd  rax, edx                                ; 1088 _ 48: 63. C2
        mov     qword [rbp-210H], rax                   ; 108B _ 48: 89. 85, FFFFFDF0
?_083:  cmp     qword [rbp-210H], 0                     ; 1092 _ 48: 83. BD, FFFFFDF0, 00
; Note: Immediate operand could be made smaller by sign extension
        je      ?_084                                   ; 109A _ 0F 84, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_085                                   ; 10A0 _ E9, 00000005

?_084:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_086                                   ; 10A5 _ E9, 0000000B

?_085:  mov     qword [rbp-88H], 1                      ; 10AA _ 48: C7. 85, FFFFFF78, 00000001
?_086:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_087                                   ; 10B5 _ E9, 00000000

?_087:  mov     rax, qword [rbp-80H]                    ; 10BA _ 48: 8B. 45, 80
        mov     rcx, qword [rbp-30H]                    ; 10BE _ 48: 8B. 4D, D0
        shl     rcx, 3                                  ; 10C2 _ 48: C1. E1, 03
        add     rax, rcx                                ; 10C6 _ 48: 01. C8
        mov     rax, qword [rax]                        ; 10C9 _ 48: 8B. 00
        add     rax, 1                                  ; 10CC _ 48: 83. C0, 01
        mov     qword [rbp-0D0H], rax                   ; 10D0 _ 48: 89. 85, FFFFFF30
        mov     rax, qword [rbp-20H]                    ; 10D7 _ 48: 8B. 45, E0
        mov     rcx, qword [rbp-30H]                    ; 10DB _ 48: 8B. 4D, D0
        shl     rcx, 3                                  ; 10DF _ 48: C1. E1, 03
        add     rax, rcx                                ; 10E3 _ 48: 01. C8
        mov     rax, qword [rax]                        ; 10E6 _ 48: 8B. 00
        add     rax, 2                                  ; 10E9 _ 48: 83. C0, 02
        mov     qword [rbp-0D8H], rax                   ; 10ED _ 48: 89. 85, FFFFFF28
        mov     rdi, qword [rbp-0D0H]                   ; 10F4 _ 48: 8B. BD, FFFFFF30
        mov     rsi, qword [rbp-28H]                    ; 10FB _ 48: 8B. 75, D8
        call    _check                                  ; 10FF _ E8, 00000000(rel)
        mov     qword [rbp-1A8H], rax                   ; 1104 _ 48: 89. 85, FFFFFE58
        mov     rax, qword [rbp-1A8H]                   ; 110B _ 48: 8B. 85, FFFFFE58
        mov     qword [rbp-198H], rax                   ; 1112 _ 48: 89. 85, FFFFFE68
        cmp     qword [rbp-198H], 0                     ; 1119 _ 48: 83. BD, FFFFFE68, 00
; Note: Immediate operand could be made smaller by sign extension
        je      ?_088                                   ; 1121 _ 0F 84, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_089                                   ; 1127 _ E9, 00000005

?_088:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_090                                   ; 112C _ E9, 00000025

?_089:  mov     rdi, qword [rbp-0D8H]                   ; 1131 _ 48: 8B. BD, FFFFFF28
        mov     rsi, qword [rbp-28H]                    ; 1138 _ 48: 8B. 75, D8
        call    _check                                  ; 113C _ E8, 00000000(rel)
        mov     qword [rbp-190H], rax                   ; 1141 _ 48: 89. 85, FFFFFE70
        mov     rax, qword [rbp-190H]                   ; 1148 _ 48: 8B. 85, FFFFFE70
        mov     qword [rbp-198H], rax                   ; 114F _ 48: 89. 85, FFFFFE68
?_090:  mov     rax, qword [rbp-198H]                   ; 1156 _ 48: 8B. 85, FFFFFE68
        mov     qword [rbp-168H], rax                   ; 115D _ 48: 89. 85, FFFFFE98
        cmp     qword [rbp-168H], 0                     ; 1164 _ 48: 83. BD, FFFFFE98, 00
; Note: Immediate operand could be made smaller by sign extension
        je      ?_091                                   ; 116C _ 0F 84, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_092                                   ; 1172 _ E9, 00000005

?_091:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_093                                   ; 1177 _ E9, 0000003D

?_092:  mov     rax, qword [rbp-0E0H]                   ; 117C _ 48: 8B. 85, FFFFFF20
        mov     rcx, qword [rbp-0D0H]                   ; 1183 _ 48: 8B. 8D, FFFFFF30
        shl     rcx, 3                                  ; 118A _ 48: C1. E1, 03
        add     rax, rcx                                ; 118E _ 48: 01. C8
        mov     rax, qword [rax]                        ; 1191 _ 48: 8B. 00
        mov     rcx, qword [rbp-0D8H]                   ; 1194 _ 48: 8B. 8D, FFFFFF28
        shl     rcx, 3                                  ; 119B _ 48: C1. E1, 03
        add     rax, rcx                                ; 119F _ 48: 01. C8
        cmp     qword [rax], -1                         ; 11A2 _ 48: 83. 38, FF
        sete    dl                                      ; 11A6 _ 0F 94. C2
        and     dl, 01H                                 ; 11A9 _ 80. E2, 01
        movzx   esi, dl                                 ; 11AC _ 0F B6. F2
        movsxd  rax, esi                                ; 11AF _ 48: 63. C6
        mov     qword [rbp-168H], rax                   ; 11B2 _ 48: 89. 85, FFFFFE98
?_093:  cmp     qword [rbp-168H], 0                     ; 11B9 _ 48: 83. BD, FFFFFE98, 00
; Note: Immediate operand could be made smaller by sign extension
        je      ?_094                                   ; 11C1 _ 0F 84, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_095                                   ; 11C7 _ E9, 00000005

?_094:  jmp     ?_102                                   ; 11CC _ E9, 000000FA

?_095:  mov     rax, qword [rbp-90H]                    ; 11D1 _ 48: 8B. 85, FFFFFF70
        add     rax, 1                                  ; 11D8 _ 48: 83. C0, 01
        mov     qword [rbp-90H], rax                    ; 11DC _ 48: 89. 85, FFFFFF70
        mov     rax, qword [rbp-0D0H]                   ; 11E3 _ 48: 8B. 85, FFFFFF30
        mov     rcx, qword [rbp-80H]                    ; 11EA _ 48: 8B. 4D, 80
        mov     rdx, qword [rbp-90H]                    ; 11EE _ 48: 8B. 95, FFFFFF70
        shl     rdx, 3                                  ; 11F5 _ 48: C1. E2, 03
        add     rcx, rdx                                ; 11F9 _ 48: 01. D1
        mov     qword [rcx], rax                        ; 11FC _ 48: 89. 01
        mov     rax, qword [rbp-0D8H]                   ; 11FF _ 48: 8B. 85, FFFFFF28
        mov     rcx, qword [rbp-20H]                    ; 1206 _ 48: 8B. 4D, E0
        mov     rdx, qword [rbp-90H]                    ; 120A _ 48: 8B. 95, FFFFFF70
        shl     rdx, 3                                  ; 1211 _ 48: C1. E2, 03
        add     rcx, rdx                                ; 1215 _ 48: 01. D1
        mov     qword [rcx], rax                        ; 1218 _ 48: 89. 01
        mov     rax, qword [rbp-60H]                    ; 121B _ 48: 8B. 45, A0
        add     rax, 1                                  ; 121F _ 48: 83. C0, 01
        mov     rcx, qword [rbp-0E0H]                   ; 1223 _ 48: 8B. 8D, FFFFFF20
        mov     rdx, qword [rbp-0D0H]                   ; 122A _ 48: 8B. 95, FFFFFF30
        shl     rdx, 3                                  ; 1231 _ 48: C1. E2, 03
        add     rcx, rdx                                ; 1235 _ 48: 01. D1
        mov     rcx, qword [rcx]                        ; 1238 _ 48: 8B. 09
        mov     rdx, qword [rbp-0D8H]                   ; 123B _ 48: 8B. 95, FFFFFF28
        shl     rdx, 3                                  ; 1242 _ 48: C1. E2, 03
        add     rcx, rdx                                ; 1246 _ 48: 01. D1
        mov     qword [rcx], rax                        ; 1249 _ 48: 89. 01
        mov     rax, qword [rbp-0D0H]                   ; 124C _ 48: 8B. 85, FFFFFF30
        cmp     rax, qword [rbp-18H]                    ; 1253 _ 48: 3B. 45, E8
        sete    sil                                     ; 1257 _ 40: 0F 94. C6
        and     sil, 01H                                ; 125B _ 40: 80. E6, 01
        movzx   edi, sil                                ; 125F _ 40: 0F B6. FE
        movsxd  rax, edi                                ; 1263 _ 48: 63. C7
        mov     qword [rbp-218H], rax                   ; 1266 _ 48: 89. 85, FFFFFDE8
        cmp     qword [rbp-218H], 0                     ; 126D _ 48: 83. BD, FFFFFDE8, 00
; Note: Immediate operand could be made smaller by sign extension
        je      ?_096                                   ; 1275 _ 0F 84, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_097                                   ; 127B _ E9, 00000005

?_096:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_098                                   ; 1280 _ E9, 0000001E

?_097:  mov     rax, qword [rbp-0D8H]                   ; 1285 _ 48: 8B. 85, FFFFFF28
        cmp     rax, qword [rbp-10H]                    ; 128C _ 48: 3B. 45, F0
        sete    cl                                      ; 1290 _ 0F 94. C1
        and     cl, 01H                                 ; 1293 _ 80. E1, 01
        movzx   edx, cl                                 ; 1296 _ 0F B6. D1
        movsxd  rax, edx                                ; 1299 _ 48: 63. C2
        mov     qword [rbp-218H], rax                   ; 129C _ 48: 89. 85, FFFFFDE8
?_098:  cmp     qword [rbp-218H], 0                     ; 12A3 _ 48: 83. BD, FFFFFDE8, 00
; Note: Immediate operand could be made smaller by sign extension
        je      ?_099                                   ; 12AB _ 0F 84, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_100                                   ; 12B1 _ E9, 00000005

?_099:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_101                                   ; 12B6 _ E9, 0000000B

?_100:  mov     qword [rbp-88H], 1                      ; 12BB _ 48: C7. 85, FFFFFF78, 00000001
?_101:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_102                                   ; 12C6 _ E9, 00000000

?_102:  mov     rax, qword [rbp-80H]                    ; 12CB _ 48: 8B. 45, 80
        mov     rcx, qword [rbp-30H]                    ; 12CF _ 48: 8B. 4D, D0
        shl     rcx, 3                                  ; 12D3 _ 48: C1. E1, 03
        add     rax, rcx                                ; 12D7 _ 48: 01. C8
        mov     rax, qword [rax]                        ; 12DA _ 48: 8B. 00
        sub     rax, 2                                  ; 12DD _ 48: 83. E8, 02
        mov     qword [rbp-0D0H], rax                   ; 12E1 _ 48: 89. 85, FFFFFF30
        mov     rax, qword [rbp-20H]                    ; 12E8 _ 48: 8B. 45, E0
        mov     rcx, qword [rbp-30H]                    ; 12EC _ 48: 8B. 4D, D0
        shl     rcx, 3                                  ; 12F0 _ 48: C1. E1, 03
        add     rax, rcx                                ; 12F4 _ 48: 01. C8
        mov     rax, qword [rax]                        ; 12F7 _ 48: 8B. 00
        sub     rax, 1                                  ; 12FA _ 48: 83. E8, 01
        mov     qword [rbp-0D8H], rax                   ; 12FE _ 48: 89. 85, FFFFFF28
        mov     rdi, qword [rbp-0D0H]                   ; 1305 _ 48: 8B. BD, FFFFFF30
        mov     rsi, qword [rbp-28H]                    ; 130C _ 48: 8B. 75, D8
        call    _check                                  ; 1310 _ E8, 00000000(rel)
        mov     qword [rbp-1B8H], rax                   ; 1315 _ 48: 89. 85, FFFFFE48
        mov     rax, qword [rbp-1B8H]                   ; 131C _ 48: 8B. 85, FFFFFE48
        mov     qword [rbp-1D8H], rax                   ; 1323 _ 48: 89. 85, FFFFFE28
        cmp     qword [rbp-1D8H], 0                     ; 132A _ 48: 83. BD, FFFFFE28, 00
; Note: Immediate operand could be made smaller by sign extension
        je      ?_103                                   ; 1332 _ 0F 84, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_104                                   ; 1338 _ E9, 00000005

?_103:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_105                                   ; 133D _ E9, 00000025

?_104:  mov     rdi, qword [rbp-0D8H]                   ; 1342 _ 48: 8B. BD, FFFFFF28
        mov     rsi, qword [rbp-28H]                    ; 1349 _ 48: 8B. 75, D8
        call    _check                                  ; 134D _ E8, 00000000(rel)
        mov     qword [rbp-1C8H], rax                   ; 1352 _ 48: 89. 85, FFFFFE38
        mov     rax, qword [rbp-1C8H]                   ; 1359 _ 48: 8B. 85, FFFFFE38
        mov     qword [rbp-1D8H], rax                   ; 1360 _ 48: 89. 85, FFFFFE28
?_105:  mov     rax, qword [rbp-1D8H]                   ; 1367 _ 48: 8B. 85, FFFFFE28
        mov     qword [rbp-1D0H], rax                   ; 136E _ 48: 89. 85, FFFFFE30
        cmp     qword [rbp-1D0H], 0                     ; 1375 _ 48: 83. BD, FFFFFE30, 00
; Note: Immediate operand could be made smaller by sign extension
        je      ?_106                                   ; 137D _ 0F 84, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_107                                   ; 1383 _ E9, 00000005

?_106:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_108                                   ; 1388 _ E9, 0000003D

?_107:  mov     rax, qword [rbp-0E0H]                   ; 138D _ 48: 8B. 85, FFFFFF20
        mov     rcx, qword [rbp-0D0H]                   ; 1394 _ 48: 8B. 8D, FFFFFF30
        shl     rcx, 3                                  ; 139B _ 48: C1. E1, 03
        add     rax, rcx                                ; 139F _ 48: 01. C8
        mov     rax, qword [rax]                        ; 13A2 _ 48: 8B. 00
        mov     rcx, qword [rbp-0D8H]                   ; 13A5 _ 48: 8B. 8D, FFFFFF28
        shl     rcx, 3                                  ; 13AC _ 48: C1. E1, 03
        add     rax, rcx                                ; 13B0 _ 48: 01. C8
        cmp     qword [rax], -1                         ; 13B3 _ 48: 83. 38, FF
        sete    dl                                      ; 13B7 _ 0F 94. C2
        and     dl, 01H                                 ; 13BA _ 80. E2, 01
        movzx   esi, dl                                 ; 13BD _ 0F B6. F2
        movsxd  rax, esi                                ; 13C0 _ 48: 63. C6
        mov     qword [rbp-1D0H], rax                   ; 13C3 _ 48: 89. 85, FFFFFE30
?_108:  cmp     qword [rbp-1D0H], 0                     ; 13CA _ 48: 83. BD, FFFFFE30, 00
; Note: Immediate operand could be made smaller by sign extension
        je      ?_109                                   ; 13D2 _ 0F 84, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_110                                   ; 13D8 _ E9, 00000005

?_109:  jmp     ?_117                                   ; 13DD _ E9, 000000FA

?_110:  mov     rax, qword [rbp-90H]                    ; 13E2 _ 48: 8B. 85, FFFFFF70
        add     rax, 1                                  ; 13E9 _ 48: 83. C0, 01
        mov     qword [rbp-90H], rax                    ; 13ED _ 48: 89. 85, FFFFFF70
        mov     rax, qword [rbp-0D0H]                   ; 13F4 _ 48: 8B. 85, FFFFFF30
        mov     rcx, qword [rbp-80H]                    ; 13FB _ 48: 8B. 4D, 80
        mov     rdx, qword [rbp-90H]                    ; 13FF _ 48: 8B. 95, FFFFFF70
        shl     rdx, 3                                  ; 1406 _ 48: C1. E2, 03
        add     rcx, rdx                                ; 140A _ 48: 01. D1
        mov     qword [rcx], rax                        ; 140D _ 48: 89. 01
        mov     rax, qword [rbp-0D8H]                   ; 1410 _ 48: 8B. 85, FFFFFF28
        mov     rcx, qword [rbp-20H]                    ; 1417 _ 48: 8B. 4D, E0
        mov     rdx, qword [rbp-90H]                    ; 141B _ 48: 8B. 95, FFFFFF70
        shl     rdx, 3                                  ; 1422 _ 48: C1. E2, 03
        add     rcx, rdx                                ; 1426 _ 48: 01. D1
        mov     qword [rcx], rax                        ; 1429 _ 48: 89. 01
        mov     rax, qword [rbp-60H]                    ; 142C _ 48: 8B. 45, A0
        add     rax, 1                                  ; 1430 _ 48: 83. C0, 01
        mov     rcx, qword [rbp-0E0H]                   ; 1434 _ 48: 8B. 8D, FFFFFF20
        mov     rdx, qword [rbp-0D0H]                   ; 143B _ 48: 8B. 95, FFFFFF30
        shl     rdx, 3                                  ; 1442 _ 48: C1. E2, 03
        add     rcx, rdx                                ; 1446 _ 48: 01. D1
        mov     rcx, qword [rcx]                        ; 1449 _ 48: 8B. 09
        mov     rdx, qword [rbp-0D8H]                   ; 144C _ 48: 8B. 95, FFFFFF28
        shl     rdx, 3                                  ; 1453 _ 48: C1. E2, 03
        add     rcx, rdx                                ; 1457 _ 48: 01. D1
        mov     qword [rcx], rax                        ; 145A _ 48: 89. 01
        mov     rax, qword [rbp-0D0H]                   ; 145D _ 48: 8B. 85, FFFFFF30
        cmp     rax, qword [rbp-18H]                    ; 1464 _ 48: 3B. 45, E8
        sete    sil                                     ; 1468 _ 40: 0F 94. C6
        and     sil, 01H                                ; 146C _ 40: 80. E6, 01
        movzx   edi, sil                                ; 1470 _ 40: 0F B6. FE
        movsxd  rax, edi                                ; 1474 _ 48: 63. C7
        mov     qword [rbp-220H], rax                   ; 1477 _ 48: 89. 85, FFFFFDE0
        cmp     qword [rbp-220H], 0                     ; 147E _ 48: 83. BD, FFFFFDE0, 00
; Note: Immediate operand could be made smaller by sign extension
        je      ?_111                                   ; 1486 _ 0F 84, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_112                                   ; 148C _ E9, 00000005

?_111:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_113                                   ; 1491 _ E9, 0000001E

?_112:  mov     rax, qword [rbp-0D8H]                   ; 1496 _ 48: 8B. 85, FFFFFF28
        cmp     rax, qword [rbp-10H]                    ; 149D _ 48: 3B. 45, F0
        sete    cl                                      ; 14A1 _ 0F 94. C1
        and     cl, 01H                                 ; 14A4 _ 80. E1, 01
        movzx   edx, cl                                 ; 14A7 _ 0F B6. D1
        movsxd  rax, edx                                ; 14AA _ 48: 63. C2
        mov     qword [rbp-220H], rax                   ; 14AD _ 48: 89. 85, FFFFFDE0
?_113:  cmp     qword [rbp-220H], 0                     ; 14B4 _ 48: 83. BD, FFFFFDE0, 00
; Note: Immediate operand could be made smaller by sign extension
        je      ?_114                                   ; 14BC _ 0F 84, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_115                                   ; 14C2 _ E9, 00000005

?_114:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_116                                   ; 14C7 _ E9, 0000000B

?_115:  mov     qword [rbp-88H], 1                      ; 14CC _ 48: C7. 85, FFFFFF78, 00000001
?_116:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_117                                   ; 14D7 _ E9, 00000000

?_117:  mov     rax, qword [rbp-80H]                    ; 14DC _ 48: 8B. 45, 80
        mov     rcx, qword [rbp-30H]                    ; 14E0 _ 48: 8B. 4D, D0
        shl     rcx, 3                                  ; 14E4 _ 48: C1. E1, 03
        add     rax, rcx                                ; 14E8 _ 48: 01. C8
        mov     rax, qword [rax]                        ; 14EB _ 48: 8B. 00
        sub     rax, 2                                  ; 14EE _ 48: 83. E8, 02
        mov     qword [rbp-0D0H], rax                   ; 14F2 _ 48: 89. 85, FFFFFF30
        mov     rax, qword [rbp-20H]                    ; 14F9 _ 48: 8B. 45, E0
        mov     rcx, qword [rbp-30H]                    ; 14FD _ 48: 8B. 4D, D0
        shl     rcx, 3                                  ; 1501 _ 48: C1. E1, 03
        add     rax, rcx                                ; 1505 _ 48: 01. C8
        mov     rax, qword [rax]                        ; 1508 _ 48: 8B. 00
        add     rax, 1                                  ; 150B _ 48: 83. C0, 01
        mov     qword [rbp-0D8H], rax                   ; 150F _ 48: 89. 85, FFFFFF28
        mov     rdi, qword [rbp-0D0H]                   ; 1516 _ 48: 8B. BD, FFFFFF30
        mov     rsi, qword [rbp-28H]                    ; 151D _ 48: 8B. 75, D8
        call    _check                                  ; 1521 _ E8, 00000000(rel)
        mov     qword [rbp-120H], rax                   ; 1526 _ 48: 89. 85, FFFFFEE0
        mov     rax, qword [rbp-120H]                   ; 152D _ 48: 8B. 85, FFFFFEE0
        mov     qword [rbp-100H], rax                   ; 1534 _ 48: 89. 85, FFFFFF00
        cmp     qword [rbp-100H], 0                     ; 153B _ 48: 83. BD, FFFFFF00, 00
; Note: Immediate operand could be made smaller by sign extension
        je      ?_118                                   ; 1543 _ 0F 84, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_119                                   ; 1549 _ E9, 00000005

?_118:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_120                                   ; 154E _ E9, 00000025

?_119:  mov     rdi, qword [rbp-0D8H]                   ; 1553 _ 48: 8B. BD, FFFFFF28
        mov     rsi, qword [rbp-28H]                    ; 155A _ 48: 8B. 75, D8
        call    _check                                  ; 155E _ E8, 00000000(rel)
        mov     qword [rbp-130H], rax                   ; 1563 _ 48: 89. 85, FFFFFED0
        mov     rax, qword [rbp-130H]                   ; 156A _ 48: 8B. 85, FFFFFED0
        mov     qword [rbp-100H], rax                   ; 1571 _ 48: 89. 85, FFFFFF00
?_120:  mov     rax, qword [rbp-100H]                   ; 1578 _ 48: 8B. 85, FFFFFF00
        mov     qword [rbp-1F8H], rax                   ; 157F _ 48: 89. 85, FFFFFE08
        cmp     qword [rbp-1F8H], 0                     ; 1586 _ 48: 83. BD, FFFFFE08, 00
; Note: Immediate operand could be made smaller by sign extension
        je      ?_121                                   ; 158E _ 0F 84, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_122                                   ; 1594 _ E9, 00000005

?_121:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_123                                   ; 1599 _ E9, 0000003D

?_122:  mov     rax, qword [rbp-0E0H]                   ; 159E _ 48: 8B. 85, FFFFFF20
        mov     rcx, qword [rbp-0D0H]                   ; 15A5 _ 48: 8B. 8D, FFFFFF30
        shl     rcx, 3                                  ; 15AC _ 48: C1. E1, 03
        add     rax, rcx                                ; 15B0 _ 48: 01. C8
        mov     rax, qword [rax]                        ; 15B3 _ 48: 8B. 00
        mov     rcx, qword [rbp-0D8H]                   ; 15B6 _ 48: 8B. 8D, FFFFFF28
        shl     rcx, 3                                  ; 15BD _ 48: C1. E1, 03
        add     rax, rcx                                ; 15C1 _ 48: 01. C8
        cmp     qword [rax], -1                         ; 15C4 _ 48: 83. 38, FF
        sete    dl                                      ; 15C8 _ 0F 94. C2
        and     dl, 01H                                 ; 15CB _ 80. E2, 01
        movzx   esi, dl                                 ; 15CE _ 0F B6. F2
        movsxd  rax, esi                                ; 15D1 _ 48: 63. C6
        mov     qword [rbp-1F8H], rax                   ; 15D4 _ 48: 89. 85, FFFFFE08
?_123:  cmp     qword [rbp-1F8H], 0                     ; 15DB _ 48: 83. BD, FFFFFE08, 00
; Note: Immediate operand could be made smaller by sign extension
        je      ?_124                                   ; 15E3 _ 0F 84, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_125                                   ; 15E9 _ E9, 00000005

?_124:  jmp     ?_132                                   ; 15EE _ E9, 000000FA

?_125:  mov     rax, qword [rbp-90H]                    ; 15F3 _ 48: 8B. 85, FFFFFF70
        add     rax, 1                                  ; 15FA _ 48: 83. C0, 01
        mov     qword [rbp-90H], rax                    ; 15FE _ 48: 89. 85, FFFFFF70
        mov     rax, qword [rbp-0D0H]                   ; 1605 _ 48: 8B. 85, FFFFFF30
        mov     rcx, qword [rbp-80H]                    ; 160C _ 48: 8B. 4D, 80
        mov     rdx, qword [rbp-90H]                    ; 1610 _ 48: 8B. 95, FFFFFF70
        shl     rdx, 3                                  ; 1617 _ 48: C1. E2, 03
        add     rcx, rdx                                ; 161B _ 48: 01. D1
        mov     qword [rcx], rax                        ; 161E _ 48: 89. 01
        mov     rax, qword [rbp-0D8H]                   ; 1621 _ 48: 8B. 85, FFFFFF28
        mov     rcx, qword [rbp-20H]                    ; 1628 _ 48: 8B. 4D, E0
        mov     rdx, qword [rbp-90H]                    ; 162C _ 48: 8B. 95, FFFFFF70
        shl     rdx, 3                                  ; 1633 _ 48: C1. E2, 03
        add     rcx, rdx                                ; 1637 _ 48: 01. D1
        mov     qword [rcx], rax                        ; 163A _ 48: 89. 01
        mov     rax, qword [rbp-60H]                    ; 163D _ 48: 8B. 45, A0
        add     rax, 1                                  ; 1641 _ 48: 83. C0, 01
        mov     rcx, qword [rbp-0E0H]                   ; 1645 _ 48: 8B. 8D, FFFFFF20
        mov     rdx, qword [rbp-0D0H]                   ; 164C _ 48: 8B. 95, FFFFFF30
        shl     rdx, 3                                  ; 1653 _ 48: C1. E2, 03
        add     rcx, rdx                                ; 1657 _ 48: 01. D1
        mov     rcx, qword [rcx]                        ; 165A _ 48: 8B. 09
        mov     rdx, qword [rbp-0D8H]                   ; 165D _ 48: 8B. 95, FFFFFF28
        shl     rdx, 3                                  ; 1664 _ 48: C1. E2, 03
        add     rcx, rdx                                ; 1668 _ 48: 01. D1
        mov     qword [rcx], rax                        ; 166B _ 48: 89. 01
        mov     rax, qword [rbp-0D0H]                   ; 166E _ 48: 8B. 85, FFFFFF30
        cmp     rax, qword [rbp-18H]                    ; 1675 _ 48: 3B. 45, E8
        sete    sil                                     ; 1679 _ 40: 0F 94. C6
        and     sil, 01H                                ; 167D _ 40: 80. E6, 01
        movzx   edi, sil                                ; 1681 _ 40: 0F B6. FE
        movsxd  rax, edi                                ; 1685 _ 48: 63. C7
        mov     qword [rbp-228H], rax                   ; 1688 _ 48: 89. 85, FFFFFDD8
        cmp     qword [rbp-228H], 0                     ; 168F _ 48: 83. BD, FFFFFDD8, 00
; Note: Immediate operand could be made smaller by sign extension
        je      ?_126                                   ; 1697 _ 0F 84, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_127                                   ; 169D _ E9, 00000005

?_126:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_128                                   ; 16A2 _ E9, 0000001E

?_127:  mov     rax, qword [rbp-0D8H]                   ; 16A7 _ 48: 8B. 85, FFFFFF28
        cmp     rax, qword [rbp-10H]                    ; 16AE _ 48: 3B. 45, F0
        sete    cl                                      ; 16B2 _ 0F 94. C1
        and     cl, 01H                                 ; 16B5 _ 80. E1, 01
        movzx   edx, cl                                 ; 16B8 _ 0F B6. D1
        movsxd  rax, edx                                ; 16BB _ 48: 63. C2
        mov     qword [rbp-228H], rax                   ; 16BE _ 48: 89. 85, FFFFFDD8
?_128:  cmp     qword [rbp-228H], 0                     ; 16C5 _ 48: 83. BD, FFFFFDD8, 00
; Note: Immediate operand could be made smaller by sign extension
        je      ?_129                                   ; 16CD _ 0F 84, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_130                                   ; 16D3 _ E9, 00000005

?_129:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_131                                   ; 16D8 _ E9, 0000000B

?_130:  mov     qword [rbp-88H], 1                      ; 16DD _ 48: C7. 85, FFFFFF78, 00000001
?_131:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_132                                   ; 16E8 _ E9, 00000000

?_132:  mov     rax, qword [rbp-80H]                    ; 16ED _ 48: 8B. 45, 80
        mov     rcx, qword [rbp-30H]                    ; 16F1 _ 48: 8B. 4D, D0
        shl     rcx, 3                                  ; 16F5 _ 48: C1. E1, 03
        add     rax, rcx                                ; 16F9 _ 48: 01. C8
        mov     rax, qword [rax]                        ; 16FC _ 48: 8B. 00
        add     rax, 2                                  ; 16FF _ 48: 83. C0, 02
        mov     qword [rbp-0D0H], rax                   ; 1703 _ 48: 89. 85, FFFFFF30
        mov     rax, qword [rbp-20H]                    ; 170A _ 48: 8B. 45, E0
        mov     rcx, qword [rbp-30H]                    ; 170E _ 48: 8B. 4D, D0
        shl     rcx, 3                                  ; 1712 _ 48: C1. E1, 03
        add     rax, rcx                                ; 1716 _ 48: 01. C8
        mov     rax, qword [rax]                        ; 1719 _ 48: 8B. 00
        sub     rax, 1                                  ; 171C _ 48: 83. E8, 01
        mov     qword [rbp-0D8H], rax                   ; 1720 _ 48: 89. 85, FFFFFF28
        mov     rdi, qword [rbp-0D0H]                   ; 1727 _ 48: 8B. BD, FFFFFF30
        mov     rsi, qword [rbp-28H]                    ; 172E _ 48: 8B. 75, D8
        call    _check                                  ; 1732 _ E8, 00000000(rel)
        mov     qword [rbp-160H], rax                   ; 1737 _ 48: 89. 85, FFFFFEA0
        mov     rax, qword [rbp-160H]                   ; 173E _ 48: 8B. 85, FFFFFEA0
        mov     qword [rbp-150H], rax                   ; 1745 _ 48: 89. 85, FFFFFEB0
        cmp     qword [rbp-150H], 0                     ; 174C _ 48: 83. BD, FFFFFEB0, 00
; Note: Immediate operand could be made smaller by sign extension
        je      ?_133                                   ; 1754 _ 0F 84, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_134                                   ; 175A _ E9, 00000005

?_133:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_135                                   ; 175F _ E9, 00000025

?_134:  mov     rdi, qword [rbp-0D8H]                   ; 1764 _ 48: 8B. BD, FFFFFF28
        mov     rsi, qword [rbp-28H]                    ; 176B _ 48: 8B. 75, D8
        call    _check                                  ; 176F _ E8, 00000000(rel)
        mov     qword [rbp-140H], rax                   ; 1774 _ 48: 89. 85, FFFFFEC0
        mov     rax, qword [rbp-140H]                   ; 177B _ 48: 8B. 85, FFFFFEC0
        mov     qword [rbp-150H], rax                   ; 1782 _ 48: 89. 85, FFFFFEB0
?_135:  mov     rax, qword [rbp-150H]                   ; 1789 _ 48: 8B. 85, FFFFFEB0
        mov     qword [rbp-118H], rax                   ; 1790 _ 48: 89. 85, FFFFFEE8
        cmp     qword [rbp-118H], 0                     ; 1797 _ 48: 83. BD, FFFFFEE8, 00
; Note: Immediate operand could be made smaller by sign extension
        je      ?_136                                   ; 179F _ 0F 84, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_137                                   ; 17A5 _ E9, 00000005

?_136:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_138                                   ; 17AA _ E9, 0000003D

?_137:  mov     rax, qword [rbp-0E0H]                   ; 17AF _ 48: 8B. 85, FFFFFF20
        mov     rcx, qword [rbp-0D0H]                   ; 17B6 _ 48: 8B. 8D, FFFFFF30
        shl     rcx, 3                                  ; 17BD _ 48: C1. E1, 03
        add     rax, rcx                                ; 17C1 _ 48: 01. C8
        mov     rax, qword [rax]                        ; 17C4 _ 48: 8B. 00
        mov     rcx, qword [rbp-0D8H]                   ; 17C7 _ 48: 8B. 8D, FFFFFF28
        shl     rcx, 3                                  ; 17CE _ 48: C1. E1, 03
        add     rax, rcx                                ; 17D2 _ 48: 01. C8
        cmp     qword [rax], -1                         ; 17D5 _ 48: 83. 38, FF
        sete    dl                                      ; 17D9 _ 0F 94. C2
        and     dl, 01H                                 ; 17DC _ 80. E2, 01
        movzx   esi, dl                                 ; 17DF _ 0F B6. F2
        movsxd  rax, esi                                ; 17E2 _ 48: 63. C6
        mov     qword [rbp-118H], rax                   ; 17E5 _ 48: 89. 85, FFFFFEE8
?_138:  cmp     qword [rbp-118H], 0                     ; 17EC _ 48: 83. BD, FFFFFEE8, 00
; Note: Immediate operand could be made smaller by sign extension
        je      ?_139                                   ; 17F4 _ 0F 84, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_140                                   ; 17FA _ E9, 00000005

?_139:  jmp     ?_147                                   ; 17FF _ E9, 000000FA

?_140:  mov     rax, qword [rbp-90H]                    ; 1804 _ 48: 8B. 85, FFFFFF70
        add     rax, 1                                  ; 180B _ 48: 83. C0, 01
        mov     qword [rbp-90H], rax                    ; 180F _ 48: 89. 85, FFFFFF70
        mov     rax, qword [rbp-0D0H]                   ; 1816 _ 48: 8B. 85, FFFFFF30
        mov     rcx, qword [rbp-80H]                    ; 181D _ 48: 8B. 4D, 80
        mov     rdx, qword [rbp-90H]                    ; 1821 _ 48: 8B. 95, FFFFFF70
        shl     rdx, 3                                  ; 1828 _ 48: C1. E2, 03
        add     rcx, rdx                                ; 182C _ 48: 01. D1
        mov     qword [rcx], rax                        ; 182F _ 48: 89. 01
        mov     rax, qword [rbp-0D8H]                   ; 1832 _ 48: 8B. 85, FFFFFF28
        mov     rcx, qword [rbp-20H]                    ; 1839 _ 48: 8B. 4D, E0
        mov     rdx, qword [rbp-90H]                    ; 183D _ 48: 8B. 95, FFFFFF70
        shl     rdx, 3                                  ; 1844 _ 48: C1. E2, 03
        add     rcx, rdx                                ; 1848 _ 48: 01. D1
        mov     qword [rcx], rax                        ; 184B _ 48: 89. 01
        mov     rax, qword [rbp-60H]                    ; 184E _ 48: 8B. 45, A0
        add     rax, 1                                  ; 1852 _ 48: 83. C0, 01
        mov     rcx, qword [rbp-0E0H]                   ; 1856 _ 48: 8B. 8D, FFFFFF20
        mov     rdx, qword [rbp-0D0H]                   ; 185D _ 48: 8B. 95, FFFFFF30
        shl     rdx, 3                                  ; 1864 _ 48: C1. E2, 03
        add     rcx, rdx                                ; 1868 _ 48: 01. D1
        mov     rcx, qword [rcx]                        ; 186B _ 48: 8B. 09
        mov     rdx, qword [rbp-0D8H]                   ; 186E _ 48: 8B. 95, FFFFFF28
        shl     rdx, 3                                  ; 1875 _ 48: C1. E2, 03
        add     rcx, rdx                                ; 1879 _ 48: 01. D1
        mov     qword [rcx], rax                        ; 187C _ 48: 89. 01
        mov     rax, qword [rbp-0D0H]                   ; 187F _ 48: 8B. 85, FFFFFF30
        cmp     rax, qword [rbp-18H]                    ; 1886 _ 48: 3B. 45, E8
        sete    sil                                     ; 188A _ 40: 0F 94. C6
        and     sil, 01H                                ; 188E _ 40: 80. E6, 01
        movzx   edi, sil                                ; 1892 _ 40: 0F B6. FE
        movsxd  rax, edi                                ; 1896 _ 48: 63. C7
        mov     qword [rbp-230H], rax                   ; 1899 _ 48: 89. 85, FFFFFDD0
        cmp     qword [rbp-230H], 0                     ; 18A0 _ 48: 83. BD, FFFFFDD0, 00
; Note: Immediate operand could be made smaller by sign extension
        je      ?_141                                   ; 18A8 _ 0F 84, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_142                                   ; 18AE _ E9, 00000005

?_141:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_143                                   ; 18B3 _ E9, 0000001E

?_142:  mov     rax, qword [rbp-0D8H]                   ; 18B8 _ 48: 8B. 85, FFFFFF28
        cmp     rax, qword [rbp-10H]                    ; 18BF _ 48: 3B. 45, F0
        sete    cl                                      ; 18C3 _ 0F 94. C1
        and     cl, 01H                                 ; 18C6 _ 80. E1, 01
        movzx   edx, cl                                 ; 18C9 _ 0F B6. D1
        movsxd  rax, edx                                ; 18CC _ 48: 63. C2
        mov     qword [rbp-230H], rax                   ; 18CF _ 48: 89. 85, FFFFFDD0
?_143:  cmp     qword [rbp-230H], 0                     ; 18D6 _ 48: 83. BD, FFFFFDD0, 00
; Note: Immediate operand could be made smaller by sign extension
        je      ?_144                                   ; 18DE _ 0F 84, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_145                                   ; 18E4 _ E9, 00000005

?_144:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_146                                   ; 18E9 _ E9, 0000000B

?_145:  mov     qword [rbp-88H], 1                      ; 18EE _ 48: C7. 85, FFFFFF78, 00000001
?_146:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_147                                   ; 18F9 _ E9, 00000000

?_147:  mov     rax, qword [rbp-80H]                    ; 18FE _ 48: 8B. 45, 80
        mov     rcx, qword [rbp-30H]                    ; 1902 _ 48: 8B. 4D, D0
        shl     rcx, 3                                  ; 1906 _ 48: C1. E1, 03
        add     rax, rcx                                ; 190A _ 48: 01. C8
        mov     rax, qword [rax]                        ; 190D _ 48: 8B. 00
        add     rax, 2                                  ; 1910 _ 48: 83. C0, 02
        mov     qword [rbp-0D0H], rax                   ; 1914 _ 48: 89. 85, FFFFFF30
        mov     rax, qword [rbp-20H]                    ; 191B _ 48: 8B. 45, E0
        mov     rcx, qword [rbp-30H]                    ; 191F _ 48: 8B. 4D, D0
        shl     rcx, 3                                  ; 1923 _ 48: C1. E1, 03
        add     rax, rcx                                ; 1927 _ 48: 01. C8
        mov     rax, qword [rax]                        ; 192A _ 48: 8B. 00
        add     rax, 1                                  ; 192D _ 48: 83. C0, 01
        mov     qword [rbp-0D8H], rax                   ; 1931 _ 48: 89. 85, FFFFFF28
        mov     rdi, qword [rbp-0D0H]                   ; 1938 _ 48: 8B. BD, FFFFFF30
        mov     rsi, qword [rbp-28H]                    ; 193F _ 48: 8B. 75, D8
        call    _check                                  ; 1943 _ E8, 00000000(rel)
        mov     qword [rbp-188H], rax                   ; 1948 _ 48: 89. 85, FFFFFE78
        mov     rax, qword [rbp-188H]                   ; 194F _ 48: 8B. 85, FFFFFE78
        mov     qword [rbp-180H], rax                   ; 1956 _ 48: 89. 85, FFFFFE80
        cmp     qword [rbp-180H], 0                     ; 195D _ 48: 83. BD, FFFFFE80, 00
; Note: Immediate operand could be made smaller by sign extension
        je      ?_148                                   ; 1965 _ 0F 84, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_149                                   ; 196B _ E9, 00000005

?_148:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_150                                   ; 1970 _ E9, 00000025

?_149:  mov     rdi, qword [rbp-0D8H]                   ; 1975 _ 48: 8B. BD, FFFFFF28
        mov     rsi, qword [rbp-28H]                    ; 197C _ 48: 8B. 75, D8
        call    _check                                  ; 1980 _ E8, 00000000(rel)
        mov     qword [rbp-1A0H], rax                   ; 1985 _ 48: 89. 85, FFFFFE60
        mov     rax, qword [rbp-1A0H]                   ; 198C _ 48: 8B. 85, FFFFFE60
        mov     qword [rbp-180H], rax                   ; 1993 _ 48: 89. 85, FFFFFE80
?_150:  mov     rax, qword [rbp-180H]                   ; 199A _ 48: 8B. 85, FFFFFE80
        mov     qword [rbp-178H], rax                   ; 19A1 _ 48: 89. 85, FFFFFE88
        cmp     qword [rbp-178H], 0                     ; 19A8 _ 48: 83. BD, FFFFFE88, 00
; Note: Immediate operand could be made smaller by sign extension
        je      ?_151                                   ; 19B0 _ 0F 84, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_152                                   ; 19B6 _ E9, 00000005

?_151:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_153                                   ; 19BB _ E9, 0000003D

?_152:  mov     rax, qword [rbp-0E0H]                   ; 19C0 _ 48: 8B. 85, FFFFFF20
        mov     rcx, qword [rbp-0D0H]                   ; 19C7 _ 48: 8B. 8D, FFFFFF30
        shl     rcx, 3                                  ; 19CE _ 48: C1. E1, 03
        add     rax, rcx                                ; 19D2 _ 48: 01. C8
        mov     rax, qword [rax]                        ; 19D5 _ 48: 8B. 00
        mov     rcx, qword [rbp-0D8H]                   ; 19D8 _ 48: 8B. 8D, FFFFFF28
        shl     rcx, 3                                  ; 19DF _ 48: C1. E1, 03
        add     rax, rcx                                ; 19E3 _ 48: 01. C8
        cmp     qword [rax], -1                         ; 19E6 _ 48: 83. 38, FF
        sete    dl                                      ; 19EA _ 0F 94. C2
        and     dl, 01H                                 ; 19ED _ 80. E2, 01
        movzx   esi, dl                                 ; 19F0 _ 0F B6. F2
        movsxd  rax, esi                                ; 19F3 _ 48: 63. C6
        mov     qword [rbp-178H], rax                   ; 19F6 _ 48: 89. 85, FFFFFE88
?_153:  cmp     qword [rbp-178H], 0                     ; 19FD _ 48: 83. BD, FFFFFE88, 00
; Note: Immediate operand could be made smaller by sign extension
        je      ?_154                                   ; 1A05 _ 0F 84, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_155                                   ; 1A0B _ E9, 00000005

?_154:  jmp     ?_162                                   ; 1A10 _ E9, 000000FA

?_155:  mov     rax, qword [rbp-90H]                    ; 1A15 _ 48: 8B. 85, FFFFFF70
        add     rax, 1                                  ; 1A1C _ 48: 83. C0, 01
        mov     qword [rbp-90H], rax                    ; 1A20 _ 48: 89. 85, FFFFFF70
        mov     rax, qword [rbp-0D0H]                   ; 1A27 _ 48: 8B. 85, FFFFFF30
        mov     rcx, qword [rbp-80H]                    ; 1A2E _ 48: 8B. 4D, 80
        mov     rdx, qword [rbp-90H]                    ; 1A32 _ 48: 8B. 95, FFFFFF70
        shl     rdx, 3                                  ; 1A39 _ 48: C1. E2, 03
        add     rcx, rdx                                ; 1A3D _ 48: 01. D1
        mov     qword [rcx], rax                        ; 1A40 _ 48: 89. 01
        mov     rax, qword [rbp-0D8H]                   ; 1A43 _ 48: 8B. 85, FFFFFF28
        mov     rcx, qword [rbp-20H]                    ; 1A4A _ 48: 8B. 4D, E0
        mov     rdx, qword [rbp-90H]                    ; 1A4E _ 48: 8B. 95, FFFFFF70
        shl     rdx, 3                                  ; 1A55 _ 48: C1. E2, 03
        add     rcx, rdx                                ; 1A59 _ 48: 01. D1
        mov     qword [rcx], rax                        ; 1A5C _ 48: 89. 01
        mov     rax, qword [rbp-60H]                    ; 1A5F _ 48: 8B. 45, A0
        add     rax, 1                                  ; 1A63 _ 48: 83. C0, 01
        mov     rcx, qword [rbp-0E0H]                   ; 1A67 _ 48: 8B. 8D, FFFFFF20
        mov     rdx, qword [rbp-0D0H]                   ; 1A6E _ 48: 8B. 95, FFFFFF30
        shl     rdx, 3                                  ; 1A75 _ 48: C1. E2, 03
        add     rcx, rdx                                ; 1A79 _ 48: 01. D1
        mov     rcx, qword [rcx]                        ; 1A7C _ 48: 8B. 09
        mov     rdx, qword [rbp-0D8H]                   ; 1A7F _ 48: 8B. 95, FFFFFF28
        shl     rdx, 3                                  ; 1A86 _ 48: C1. E2, 03
        add     rcx, rdx                                ; 1A8A _ 48: 01. D1
        mov     qword [rcx], rax                        ; 1A8D _ 48: 89. 01
        mov     rax, qword [rbp-0D0H]                   ; 1A90 _ 48: 8B. 85, FFFFFF30
        cmp     rax, qword [rbp-18H]                    ; 1A97 _ 48: 3B. 45, E8
        sete    sil                                     ; 1A9B _ 40: 0F 94. C6
        and     sil, 01H                                ; 1A9F _ 40: 80. E6, 01
        movzx   edi, sil                                ; 1AA3 _ 40: 0F B6. FE
        movsxd  rax, edi                                ; 1AA7 _ 48: 63. C7
        mov     qword [rbp-238H], rax                   ; 1AAA _ 48: 89. 85, FFFFFDC8
        cmp     qword [rbp-238H], 0                     ; 1AB1 _ 48: 83. BD, FFFFFDC8, 00
; Note: Immediate operand could be made smaller by sign extension
        je      ?_156                                   ; 1AB9 _ 0F 84, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_157                                   ; 1ABF _ E9, 00000005

?_156:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_158                                   ; 1AC4 _ E9, 0000001E

?_157:  mov     rax, qword [rbp-0D8H]                   ; 1AC9 _ 48: 8B. 85, FFFFFF28
        cmp     rax, qword [rbp-10H]                    ; 1AD0 _ 48: 3B. 45, F0
        sete    cl                                      ; 1AD4 _ 0F 94. C1
        and     cl, 01H                                 ; 1AD7 _ 80. E1, 01
        movzx   edx, cl                                 ; 1ADA _ 0F B6. D1
        movsxd  rax, edx                                ; 1ADD _ 48: 63. C2
        mov     qword [rbp-238H], rax                   ; 1AE0 _ 48: 89. 85, FFFFFDC8
?_158:  cmp     qword [rbp-238H], 0                     ; 1AE7 _ 48: 83. BD, FFFFFDC8, 00
; Note: Immediate operand could be made smaller by sign extension
        je      ?_159                                   ; 1AEF _ 0F 84, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_160                                   ; 1AF5 _ E9, 00000005

?_159:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_161                                   ; 1AFA _ E9, 0000000B

?_160:  mov     qword [rbp-88H], 1                      ; 1AFF _ 48: C7. 85, FFFFFF78, 00000001
?_161:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_162                                   ; 1B0A _ E9, 00000000

?_162:  cmp     qword [rbp-88H], 1                      ; 1B0F _ 48: 83. BD, FFFFFF78, 01
; Note: Immediate operand could be made smaller by sign extension
        jne     ?_163                                   ; 1B17 _ 0F 85, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_164                                   ; 1B1D _ E9, 00000005

?_163:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_165                                   ; 1B22 _ E9, 00000005

?_164:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_166                                   ; 1B27 _ E9, 00000011

?_165:  mov     rax, qword [rbp-30H]                    ; 1B2C _ 48: 8B. 45, D0
        add     rax, 1                                  ; 1B30 _ 48: 83. C0, 01
        mov     qword [rbp-30H], rax                    ; 1B34 _ 48: 89. 45, D0
        jmp     ?_040                                   ; 1B38 _ E9, FFFFEEEC

?_166:  ; Local function
        cmp     qword [rbp-88H], 1                      ; 1B3D _ 48: 83. BD, FFFFFF78, 01
; Note: Immediate operand could be made smaller by sign extension
        jne     ?_167                                   ; 1B45 _ 0F 85, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_168                                   ; 1B4B _ E9, 00000005

?_167:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_169                                   ; 1B50 _ E9, 00000040

?_168:  mov     rax, qword [rbp-0E0H]                   ; 1B55 _ 48: 8B. 85, FFFFFF20
        mov     rcx, qword [rbp-18H]                    ; 1B5C _ 48: 8B. 4D, E8
        shl     rcx, 3                                  ; 1B60 _ 48: C1. E1, 03
        add     rax, rcx                                ; 1B64 _ 48: 01. C8
        mov     rax, qword [rax]                        ; 1B67 _ 48: 8B. 00
        mov     rcx, qword [rbp-10H]                    ; 1B6A _ 48: 8B. 4D, F0
        shl     rcx, 3                                  ; 1B6E _ 48: C1. E1, 03
        add     rax, rcx                                ; 1B72 _ 48: 01. C8
        mov     rdi, qword [rax]                        ; 1B75 _ 48: 8B. 38
        call    _toString                               ; 1B78 _ E8, 00000000(rel)
        mov     qword [rbp-0C8H], rax                   ; 1B7D _ 48: 89. 85, FFFFFF38
        mov     rdi, qword [rbp-0C8H]                   ; 1B84 _ 48: 8B. BD, FFFFFF38
        call    _println                                ; 1B8B _ E8, 00000000(rel)
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_170                                   ; 1B90 _ E9, 00000014

?_169:  lea     rdi, [rel _substring+27H]               ; 1B95 _ 48: 8D. 3D, 00000027(rel)
        call    _toMoStr                                ; 1B9C _ E8, 00000000(rel)
        mov     rdi, rax                                ; 1BA1 _ 48: 89. C7
        call    _print                                  ; 1BA4 _ E8, 00000000(rel)
?_170:  xor     eax, eax                                ; 1BA9 _ 31. C0
        add     rsp, 576                                ; 1BAB _ 48: 81. C4, 00000240
        pop     rbp                                     ; 1BB2 _ 5D
        ret                                             ; 1BB3 _ C3


SECTION ._TEXT.__cstring align=1 noexecute              ; section number 2, data

        db 25H, 64H, 00H, 25H, 6CH, 64H, 0AH, 00H       ; 1BB4 _ %d.%ld..
        db 25H, 6CH, 64H, 00H, 25H, 73H, 00H, 6EH       ; 1BBC _ %ld.%s.n
        db 6FH, 20H, 73H, 6FH, 6CH, 75H, 74H, 69H       ; 1BC4 _ o soluti
        db 6FH, 6EH, 21H, 0AH, 00H                      ; 1BCC _ on!..


