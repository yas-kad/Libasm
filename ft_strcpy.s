section .text
    global _ft_strcpy

_ft_strcpy:
            mov rax, 0
loop:
            mov dl, BYTE [rsi + rax]
            mov BYTE [rdi + rax], dl
            cmp BYTE [rsi + rax], 0
            je return
            inc rax
            jmp loop
return:
        mov rax, rdi
        ret