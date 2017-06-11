global  main

            extern  puts
            section .text
            main:                                   ; This is called by the C library startup code
                    mov     rbx, 1000000033
            L_begin:
                    push    rbx
                    pop     rbx
                    sub     rbx, 1
                    cmp     rbx, 0
                    jnz     L_begin
                    mov     rdi, message            ; First integer (or pointer) argument in rdi
                    call    puts                    ; puts(message)
                    mov     rax, 0
                    ret                             ; Return from main back into C library wrapper
            message:
                    db '559355322', 10, 0