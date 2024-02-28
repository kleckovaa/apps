bits 64

section.data
    extern data_x, count, result, prev, next, member, from, replace_to, text
    
section.text

    global ukol1

ukol1:

    mov qword [count], 0 
    mov rcx, 0               

zpet:
    mov rax, qword [data_x + rcx]
    cmp rax, 1
    je preskoc

    inc qword [count]
    add rcx, 8
    cmp rcx, 32
    jge hotovo
    jmp zpet

preskoc:
    add rcx, 8
    cmp rcx, 32             
    jge hotovo

    jmp zpet

hotovo:
    ret

    global ukol2

ukol2:
    mov eax, 1
    mov ebx, dword[prev]
    mov ecx, dword[next]
    mov edi, 0          ;new

    cmp edi, [member]
    jge hotovo0

zpet2:
    cmp eax, [member]
    jge hotovo2
    mov edi, 0
    add edi, ebx
    add edi, ecx
    mov [result], edi
    mov ebx, ecx
    mov ecx, edi
    inc eax
    jmp zpet2

hotovo2:
    ret

hotovo0:
    mov [result], edi
    ret

    global ukol3

ukol3:
    mov rsi, text
    mov rdi, from
    mov cl, [replace_to] 
zpet3:
    cmp  byte[rsi], 0
    je hotovo3

    mov al, [rsi]
    cmp al, [rdi] 
    jne zasah

    mov byte[rsi], cl

zasah:
    inc rsi
    jmp zpet3

hotovo3:
    ret

















    


    
