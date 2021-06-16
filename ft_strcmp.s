section .text
        global _ft_strcmp
_ft_strcmp:     mov rbx,0
                mov rdx,0
                mov rcx,0

loop    :       cmp BYTE [rdi + rbx],0
                je return
                mov cl, BYTE [rdi + rbx]
                cmp BYTE [rsi + rbx],0
                je return
                mov dl, BYTE [rsi + rbx]
                cmp rcx,rdx
                jne return
                inc rbx
                jmp loop

return    :       mov cl, BYTE [rdi + rbx]
                mov dl, BYTE [rsi + rbx]
                sub rcx,rdx
                mov rax,rcx
                ret

        