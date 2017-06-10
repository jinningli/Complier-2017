; Disassembly of file: output.o
; Sun Jun 11 01:06:14 2017
; Mode: 64 bits
; Syntax: YASM/NASM
; Instruction set: Pentium Pro, x64

default rel

global _substring: function
global _ord
global _parseInt
global _strlength: function
global _getInt
global _getString
global _size
global _toMoStr: function
global _str_add
global ___lib_printlnInt
global ___lib_printInt
global ___lib_malloc
global _println: function
global _print
global _toString
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
        lea     rdi, [rel _substring+4B7H]              ; 01C8 _ 48: 8D. 3D, 000004B7(rel)
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
        lea     rax, [rel _substring+25AH]              ; 0428 _ 48: 8D. 05, 0000025A(rel)
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
        lea     rax, [rel _substring+22FH]              ; 0458 _ 48: 8D. 05, 0000022F(rel)
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
        lea     rax, [rel _substring+1C3H]              ; 04C8 _ 48: 8D. 05, 000001C3(rel)
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
_main:  ; Function begin
        push    rbp                                     ; 0640 _ 55
        mov     rbp, rsp                                ; 0641 _ 48: 89. E5
        sub     rsp, 16                                 ; 0644 _ 48: 83. EC, 10
        lea     rdi, [rel _substring+46H]               ; 0648 _ 48: 8D. 3D, 00000046(rel)
        mov     dword [rbp-4H], 0                       ; 064F _ C7. 45, FC, 00000000
        call    _toMoStr                                ; 0656 _ E8, 00000000(rel)
        mov     ecx, 1                                  ; 065B _ B9, 00000001
        mov     esi, ecx                                ; 0660 _ 89. CE
        mov     ecx, 2                                  ; 0662 _ B9, 00000002
        mov     edx, ecx                                ; 0667 _ 89. CA
        mov     rdi, rax                                ; 0669 _ 48: 89. C7
        call    _substring                              ; 066C _ E8, 00000000(rel)
        mov     qword [rbp-10H], rax                    ; 0671 _ 48: 89. 45, F0
        mov     rdi, qword [rbp-10H]                    ; 0675 _ 48: 8B. 7D, F0
        call    _println                                ; 0679 _ E8, 00000000(rel)
        xor     eax, eax                                ; 067E _ 31. C0
        add     rsp, 16                                 ; 0680 _ 48: 83. C4, 10
        pop     rbp                                     ; 0684 _ 5D
        ret                                             ; 0685 _ C3
; _main End of function


SECTION ._TEXT.__cstring align=1 noexecute              ; section number 2, data

        db 25H, 64H, 00H, 25H, 6CH, 64H, 0AH, 00H       ; 0686 _ %d.%ld..
        db 25H, 6CH, 64H, 00H, 25H, 73H, 00H, 31H       ; 068E _ %ld.%s.1
        db 32H, 33H, 34H, 35H, 36H, 00H                 ; 0696 _ 23456.


