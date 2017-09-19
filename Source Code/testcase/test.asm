; Disassembly of file: cn/chips/MAPLE/testcase/test.o
; Sat Jun 10 13:11:02 2017
; Mode: 64 bits
; Syntax: YASM/NASM
; Instruction set: Pentium Pro, x64

default rel

global ___lib_printlnInt
global ___lib_printInt
global ___lib_malloc: function
global _println: function
global _toString: function
global _add: function
global _main

extern _puts                                            ; near
extern _printf                                          ; near
extern _malloc                                          ; near
extern _n                                               ; qword


SECTION ._TEXT.__text align=16 execute                  ; section number 1, code

___lib_printlnInt:; Function begin
        push    rbp                                     ; 0000 _ 55
        mov     rbp, rsp                                ; 0001 _ 48: 89. E5
        sub     rsp, 16                                 ; 0004 _ 48: 83. EC, 10
        lea     rax, [rel ___lib_printlnInt+350H]       ; 0008 _ 48: 8D. 05, 00000350(rel)
        mov     qword [rbp-8H], rdi                     ; 000F _ 48: 89. 7D, F8
        mov     rsi, qword [rbp-8H]                     ; 0013 _ 48: 8B. 75, F8
        mov     rdi, rax                                ; 0017 _ 48: 89. C7
        mov     al, 0                                   ; 001A _ B0, 00
        call    _printf                                 ; 001C _ E8, 00000000(rel)
        mov     dword [rbp-0CH], eax                    ; 0021 _ 89. 45, F4
        add     rsp, 16                                 ; 0024 _ 48: 83. C4, 10
        pop     rbp                                     ; 0028 _ 5D
        ret                                             ; 0029 _ C3
; ___lib_printlnInt End of function

; Filling space: 6H
; Filler type: Multi-byte NOP
;       db 66H, 0FH, 1FH, 44H, 00H, 00H

ALIGN   8

___lib_printInt:; Function begin
        push    rbp                                     ; 0030 _ 55
        mov     rbp, rsp                                ; 0031 _ 48: 89. E5
        sub     rsp, 16                                 ; 0034 _ 48: 83. EC, 10
        lea     rax, [rel ___lib_printlnInt+325H]       ; 0038 _ 48: 8D. 05, 00000325(rel)
        mov     qword [rbp-8H], rdi                     ; 003F _ 48: 89. 7D, F8
        mov     rsi, qword [rbp-8H]                     ; 0043 _ 48: 8B. 75, F8
        mov     rdi, rax                                ; 0047 _ 48: 89. C7
        mov     al, 0                                   ; 004A _ B0, 00
        call    _printf                                 ; 004C _ E8, 00000000(rel)
        mov     dword [rbp-0CH], eax                    ; 0051 _ 89. 45, F4
        add     rsp, 16                                 ; 0054 _ 48: 83. C4, 10
        pop     rbp                                     ; 0058 _ 5D
        ret                                             ; 0059 _ C3
; ___lib_printInt End of function

; Filling space: 6H
; Filler type: Multi-byte NOP
;       db 66H, 0FH, 1FH, 44H, 00H, 00H

ALIGN   8

___lib_malloc:; Function begin
        push    rbp                                     ; 0060 _ 55
        mov     rbp, rsp                                ; 0061 _ 48: 89. E5
        sub     rsp, 16                                 ; 0064 _ 48: 83. EC, 10
        mov     qword [rbp-8H], rdi                     ; 0068 _ 48: 89. 7D, F8
        mov     rdi, qword [rbp-8H]                     ; 006C _ 48: 8B. 7D, F8
        call    _malloc                                 ; 0070 _ E8, 00000000(rel)
        add     rsp, 16                                 ; 0075 _ 48: 83. C4, 10
        pop     rbp                                     ; 0079 _ 5D
        ret                                             ; 007A _ C3
; ___lib_malloc End of function

; Filling space: 5H
; Filler type: Multi-byte NOP
;       db 0FH, 1FH, 44H, 00H, 00H

ALIGN   8

_println:; Function begin
        push    rbp                                     ; 0080 _ 55
        mov     rbp, rsp                                ; 0081 _ 48: 89. E5
        sub     rsp, 16                                 ; 0084 _ 48: 83. EC, 10
        mov     qword [rbp-8H], rdi                     ; 0088 _ 48: 89. 7D, F8
        mov     rdi, qword [rbp-8H]                     ; 008C _ 48: 8B. 7D, F8
        call    _puts                                   ; 0090 _ E8, 00000000(rel)
        mov     dword [rbp-0CH], eax                    ; 0095 _ 89. 45, F4
        add     rsp, 16                                 ; 0098 _ 48: 83. C4, 10
        pop     rbp                                     ; 009C _ 5D
        ret                                             ; 009D _ C3
; _println End of function

; Filling space: 2H
; Filler type: NOP with prefixes
;       db 66H, 90H

ALIGN   8

_toString:; Function begin
        push    rbp                                     ; 00A0 _ 55
        mov     rbp, rsp                                ; 00A1 _ 48: 89. E5
        sub     rsp, 48                                 ; 00A4 _ 48: 83. EC, 30
        mov     eax, 16                                 ; 00A8 _ B8, 00000010
        mov     ecx, eax                                ; 00AD _ 89. C1
        mov     qword [rbp-8H], rdi                     ; 00AF _ 48: 89. 7D, F8
        mov     rdi, rcx                                ; 00B3 _ 48: 89. CF
        call    _malloc                                 ; 00B6 _ E8, 00000000(rel)
        mov     qword [rbp-10H], rax                    ; 00BB _ 48: 89. 45, F0
        mov     rax, qword [rbp-10H]                    ; 00BF _ 48: 8B. 45, F0
        add     rax, 4                                  ; 00C3 _ 48: 83. C0, 04
        mov     qword [rbp-10H], rax                    ; 00C7 _ 48: 89. 45, F0
        mov     rax, qword [rbp-10H]                    ; 00CB _ 48: 8B. 45, F0
        mov     qword [rbp-18H], rax                    ; 00CF _ 48: 89. 45, E8
        cmp     qword [rbp-8H], 0                       ; 00D3 _ 48: 83. 7D, F8, 00
; Note: Immediate operand could be made smaller by sign extension
        jge     ?_001                                   ; 00D8 _ 0F 8D, 0000001E
        xor     eax, eax                                ; 00DE _ 31. C0
        mov     ecx, eax                                ; 00E0 _ 89. C1
        mov     rdx, qword [rbp-18H]                    ; 00E2 _ 48: 8B. 55, E8
        mov     rsi, rdx                                ; 00E6 _ 48: 89. D6
        add     rsi, 1                                  ; 00E9 _ 48: 83. C6, 01
        mov     qword [rbp-18H], rsi                    ; 00ED _ 48: 89. 75, E8
        mov     byte [rdx], 45                          ; 00F1 _ C6. 02, 2D
        sub     rcx, qword [rbp-8H]                     ; 00F4 _ 48: 2B. 4D, F8
        mov     qword [rbp-8H], rcx                     ; 00F8 _ 48: 89. 4D, F8
?_001:  cmp     qword [rbp-8H], 0                       ; 00FC _ 48: 83. 7D, F8, 00
; Note: Immediate operand could be made smaller by sign extension
        jne     ?_002                                   ; 0101 _ 0F 85, 00000012
        mov     rax, qword [rbp-18H]                    ; 0107 _ 48: 8B. 45, E8
        mov     rcx, rax                                ; 010B _ 48: 89. C1
        add     rcx, 1                                  ; 010E _ 48: 83. C1, 01
        mov     qword [rbp-18H], rcx                    ; 0112 _ 48: 89. 4D, E8
        mov     byte [rax], 48                          ; 0116 _ C6. 00, 30
?_002:  mov     rax, qword [rbp-18H]                    ; 0119 _ 48: 8B. 45, E8
        mov     qword [rbp-20H], rax                    ; 011D _ 48: 89. 45, E0
?_003:  cmp     qword [rbp-8H], 0                       ; 0121 _ 48: 83. 7D, F8, 00
; Note: Immediate operand could be made smaller by sign extension
        je      ?_004                                   ; 0126 _ 0F 84, 00000049
        mov     eax, 10                                 ; 012C _ B8, 0000000A
        mov     ecx, eax                                ; 0131 _ 89. C1
        mov     rax, qword [rbp-8H]                     ; 0133 _ 48: 8B. 45, F8
        cqo                                             ; 0137 _ 48: 99
        idiv    rcx                                     ; 0139 _ 48: F7. F9
        mov     esi, eax                                ; 013C _ 89. C6
        mov     dword [rbp-24H], esi                    ; 013E _ 89. 75, DC
        mov     rax, qword [rbp-8H]                     ; 0141 _ 48: 8B. 45, F8
        add     rax, 48                                 ; 0145 _ 48: 83. C0, 30
        imul    esi, dword [rbp-24H], 10                ; 0149 _ 6B. 75, DC, 0A
        movsxd  rcx, esi                                ; 014D _ 48: 63. CE
        sub     rax, rcx                                ; 0150 _ 48: 29. C8
        mov     dil, al                                 ; 0153 _ 40: 88. C7
        mov     rax, qword [rbp-18H]                    ; 0156 _ 48: 8B. 45, E8
        mov     rcx, rax                                ; 015A _ 48: 89. C1
        add     rcx, 1                                  ; 015D _ 48: 83. C1, 01
        mov     qword [rbp-18H], rcx                    ; 0161 _ 48: 89. 4D, E8
        mov     byte [rax], dil                         ; 0165 _ 40: 88. 38
        movsxd  rax, dword [rbp-24H]                    ; 0168 _ 48: 63. 45, DC
        mov     qword [rbp-8H], rax                     ; 016C _ 48: 89. 45, F8
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_003                                   ; 0170 _ E9, FFFFFFAC
; _toString End of function

?_004:  ; Local function
        mov     rax, qword [rbp-18H]                    ; 0175 _ 48: 8B. 45, E8
        mov     byte [rax], 0                           ; 0179 _ C6. 00, 00
        mov     rax, qword [rbp-18H]                    ; 017C _ 48: 8B. 45, E8
        mov     rcx, qword [rbp-10H]                    ; 0180 _ 48: 8B. 4D, F0
        sub     rax, rcx                                ; 0184 _ 48: 29. C8
        mov     edx, eax                                ; 0187 _ 89. C2
        mov     rax, qword [rbp-10H]                    ; 0189 _ 48: 8B. 45, F0
        mov     dword [rax-4H], edx                     ; 018D _ 89. 50, FC
        mov     rax, qword [rbp-18H]                    ; 0190 _ 48: 8B. 45, E8
        add     rax, -1                                 ; 0194 _ 48: 83. C0, FF
        mov     qword [rbp-18H], rax                    ; 0198 _ 48: 89. 45, E8
?_005:  mov     rax, qword [rbp-20H]                    ; 019C _ 48: 8B. 45, E0
        cmp     rax, qword [rbp-18H]                    ; 01A0 _ 48: 3B. 45, E8
; Note: Immediate operand could be made smaller by sign extension
        ja      ?_006                                   ; 01A4 _ 0F 87, 0000003B
        mov     rax, qword [rbp-20H]                    ; 01AA _ 48: 8B. 45, E0
        mov     cl, byte [rax]                          ; 01AE _ 8A. 08
        mov     byte [rbp-25H], cl                      ; 01B0 _ 88. 4D, DB
        mov     rax, qword [rbp-18H]                    ; 01B3 _ 48: 8B. 45, E8
        mov     cl, byte [rax]                          ; 01B7 _ 8A. 08
        mov     rax, qword [rbp-20H]                    ; 01B9 _ 48: 8B. 45, E0
        mov     byte [rax], cl                          ; 01BD _ 88. 08
        mov     cl, byte [rbp-25H]                      ; 01BF _ 8A. 4D, DB
        mov     rax, qword [rbp-18H]                    ; 01C2 _ 48: 8B. 45, E8
        mov     byte [rax], cl                          ; 01C6 _ 88. 08
        mov     rax, qword [rbp-20H]                    ; 01C8 _ 48: 8B. 45, E0
        add     rax, 1                                  ; 01CC _ 48: 83. C0, 01
        mov     qword [rbp-20H], rax                    ; 01D0 _ 48: 89. 45, E0
        mov     rax, qword [rbp-18H]                    ; 01D4 _ 48: 8B. 45, E8
        add     rax, -1                                 ; 01D8 _ 48: 83. C0, FF
        mov     qword [rbp-18H], rax                    ; 01DC _ 48: 89. 45, E8
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_005                                   ; 01E0 _ E9, FFFFFFB7

?_006:  ; Local function
        mov     rax, qword [rbp-10H]                    ; 01E5 _ 48: 8B. 45, F0
        add     rsp, 48                                 ; 01E9 _ 48: 83. C4, 30
        pop     rbp                                     ; 01ED _ 5D
        ret                                             ; 01EE _ C3

        nop                                             ; 01EF _ 90

ALIGN   16
_add:   ; Function begin
        push    rbp                                     ; 01F0 _ 55
        mov     rbp, rsp                                ; 01F1 _ 48: 89. E5
        mov     qword [rbp-8H], rdi                     ; 01F4 _ 48: 89. 7D, F8
        mov     qword [rbp-10H], rsi                    ; 01F8 _ 48: 89. 75, F0
        mov     rsi, qword [rbp-8H]                     ; 01FC _ 48: 8B. 75, F8
        mov     qword [rbp-18H], rsi                    ; 0200 _ 48: 89. 75, E8
        mov     rsi, qword [rbp-10H]                    ; 0204 _ 48: 8B. 75, F0
        mov     qword [rbp-20H], rsi                    ; 0208 _ 48: 89. 75, E0
        mov     rsi, qword [rbp-18H]                    ; 020C _ 48: 8B. 75, E8
        add     rsi, qword [rbp-20H]                    ; 0210 _ 48: 03. 75, E0
        mov     rax, rsi                                ; 0214 _ 48: 89. F0
        pop     rbp                                     ; 0217 _ 5D
        ret                                             ; 0218 _ C3
; _add End of function

; Filling space: 7H
; Filler type: Multi-byte NOP
;       db 0FH, 1FH, 80H, 00H, 00H, 00H, 00H

ALIGN   8

_main:  ; Function begin
        push    rbp                                     ; 0220 _ 55
        mov     rbp, rsp                                ; 0221 _ 48: 89. E5
        sub     rsp, 96                                 ; 0224 _ 48: 83. EC, 60
        mov     rax, qword [rel _n]                     ; 0228 _ 48: 8B. 05, 00000000(GOT r)
        mov     dword [rbp-4H], 0                       ; 022F _ C7. 45, FC, 00000000
        mov     qword [rax], 4                          ; 0236 _ 48: C7. 00, 00000004
        mov     qword [rbp-48H], 100                    ; 023D _ 48: C7. 45, B8, 00000064
        mov     qword [rbp-18H], 0                      ; 0245 _ 48: C7. 45, E8, 00000000
        mov     rax, qword [rbp-48H]                    ; 024D _ 48: 8B. 45, B8
        mov     qword [rbp-38H], rax                    ; 0251 _ 48: 89. 45, C8
        mov     rax, qword [rbp-38H]                    ; 0255 _ 48: 8B. 45, C8
        shl     rax, 3                                  ; 0259 _ 48: C1. E0, 03
        add     rax, 4                                  ; 025D _ 48: 83. C0, 04
        mov     rdi, rax                                ; 0261 _ 48: 89. C7
        call    ___lib_malloc                           ; 0264 _ E8, 00000000(rel)
        mov     qword [rbp-28H], rax                    ; 0269 _ 48: 89. 45, D8
        mov     rax, qword [rbp-38H]                    ; 026D _ 48: 8B. 45, C8
        mov     rdi, qword [rbp-28H]                    ; 0271 _ 48: 8B. 7D, D8
        mov     qword [rdi], rax                        ; 0275 _ 48: 89. 07
        mov     rax, qword [rbp-28H]                    ; 0278 _ 48: 8B. 45, D8
        add     rax, 4                                  ; 027C _ 48: 83. C0, 04
        mov     qword [rbp-28H], rax                    ; 0280 _ 48: 89. 45, D8
        mov     rax, qword [rbp-28H]                    ; 0284 _ 48: 8B. 45, D8
        mov     qword [rbp-10H], rax                    ; 0288 _ 48: 89. 45, F0
        mov     qword [rbp-40H], 0                      ; 028C _ 48: C7. 45, C0, 00000000
?_007:  mov     rax, qword [rbp-40H]                    ; 0294 _ 48: 8B. 45, C0
        cmp     rax, qword [rbp-48H]                    ; 0298 _ 48: 3B. 45, B8
; Note: Immediate operand could be made smaller by sign extension
        jge     ?_008                                   ; 029C _ 0F 8D, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_009                                   ; 02A2 _ E9, 00000005

?_008:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_010                                   ; 02A7 _ E9, 00000027

?_009:  mov     rax, qword [rbp-40H]                    ; 02AC _ 48: 8B. 45, C0
        mov     rcx, qword [rbp-10H]                    ; 02B0 _ 48: 8B. 4D, F0
        mov     rdx, qword [rbp-40H]                    ; 02B4 _ 48: 8B. 55, C0
        shl     rdx, 3                                  ; 02B8 _ 48: C1. E2, 03
        add     rcx, rdx                                ; 02BC _ 48: 01. D1
        mov     qword [rcx], rax                        ; 02BF _ 48: 89. 01
        mov     rax, qword [rbp-40H]                    ; 02C2 _ 48: 8B. 45, C0
        add     rax, 1                                  ; 02C6 _ 48: 83. C0, 01
        mov     qword [rbp-40H], rax                    ; 02CA _ 48: 89. 45, C0
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_007                                   ; 02CE _ E9, FFFFFFC1
; _main End of function

?_010:  ; Local function
        mov     qword [rbp-40H], 0                      ; 02D3 _ 48: C7. 45, C0, 00000000
?_011:  mov     rax, qword [rbp-40H]                    ; 02DB _ 48: 8B. 45, C0
        cmp     rax, qword [rbp-48H]                    ; 02DF _ 48: 3B. 45, B8
; Note: Immediate operand could be made smaller by sign extension
        jge     ?_012                                   ; 02E3 _ 0F 8D, 00000005
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_013                                   ; 02E9 _ E9, 00000005

?_012:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_014                                   ; 02EE _ E9, 0000004E

?_013:  mov     rax, qword [rbp-10H]                    ; 02F3 _ 48: 8B. 45, F0
        mov     rcx, qword [rbp-40H]                    ; 02F7 _ 48: 8B. 4D, C0
        shl     rcx, 3                                  ; 02FB _ 48: C1. E1, 03
        add     rax, rcx                                ; 02FF _ 48: 01. C8
        mov     rdi, qword [rax]                        ; 0302 _ 48: 8B. 38
        call    _toString                               ; 0305 _ E8, 00000000(rel)
        mov     qword [rbp-58H], rax                    ; 030A _ 48: 89. 45, A8
        mov     rdi, qword [rbp-58H]                    ; 030E _ 48: 8B. 7D, A8
        call    _println                                ; 0312 _ E8, 00000000(rel)
        mov     rdi, qword [rbp-40H]                    ; 0317 _ 48: 8B. 7D, C0
        mov     rsi, qword [rbp-18H]                    ; 031B _ 48: 8B. 75, E8
        call    _add                                    ; 031F _ E8, 00000000(rel)
        mov     qword [rbp-50H], rax                    ; 0324 _ 48: 89. 45, B0
        mov     rax, qword [rbp-50H]                    ; 0328 _ 48: 8B. 45, B0
        mov     qword [rbp-18H], rax                    ; 032C _ 48: 89. 45, E8
        mov     rax, qword [rbp-40H]                    ; 0330 _ 48: 8B. 45, C0
        add     rax, 1                                  ; 0334 _ 48: 83. C0, 01
        mov     qword [rbp-40H], rax                    ; 0338 _ 48: 89. 45, C0
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_011                                   ; 033C _ E9, FFFFFF9A

?_014:  ; Local function
        mov     rdi, qword [rbp-18H]                    ; 0341 _ 48: 8B. 7D, E8
        call    _toString                               ; 0345 _ E8, 00000000(rel)
        mov     qword [rbp-20H], rax                    ; 034A _ 48: 89. 45, E0
        mov     rdi, qword [rbp-20H]                    ; 034E _ 48: 8B. 7D, E0
        call    _println                                ; 0352 _ E8, 00000000(rel)
        xor     eax, eax                                ; 0357 _ 31. C0
        add     rsp, 96                                 ; 0359 _ 48: 83. C4, 60
        pop     rbp                                     ; 035D _ 5D
        ret                                             ; 035E _ C3


SECTION ._TEXT.__cstring align=1 noexecute              ; section number 2, data

        db 25H, 6CH, 64H, 0AH, 00H, 25H, 6CH, 64H       ; 035F _ %ld..%ld
        db 00H                                          ; 0367 _ .


