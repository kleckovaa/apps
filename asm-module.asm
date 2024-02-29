bits 64

section.data

    extern kontrolni_soucet, pole, pole2, pole_otoceno, retezec, pismeno, vyskyt, pozice
    
section.text

    global ukol1

ukol1:
    mov esi, 0
    mov edi, 5
    mov eax, [ pole + esi*4 ]
.back:
    inc esi
    mov ecx, [ pole + esi*4 ]
    xor eax, ecx
    dec edi
    jnz .back
    jmp .fin
.fin:
    ret

    global ukol2

ukol2:
    mov ecx, 0      ;citac
zpet2:
    cmp dword[pole2 + 4 * ecx], 0
    je hotovo2

    mov eax, [pole2 + 4 * ecx]
    mov ebx, [pole2 + 4 * ecx]
    cmp eax, ebx
    js zapor
    mov ebx, 0
    sub ebx, eax
    mov [pole_otoceno + 4 * ecx], ebx
    inc ecx
    jmp zpet2
    

zapor:
    mov [pole_otoceno + 4 *ecx], eax
    inc ecx
    jmp zpet2
    

hotovo2:
    ret

    global ukol3

ukol3:
    mov ecx, 0
    mov edx, 0
    mov edi, -1
    mov bl, 'o'
zpet3: 
    mov al, [retezec + ecx]
    cmp al, 0
    je hotovo3
    cmp al, bl
    jne skip
    inc edx
    cmp edi, -1
    jne skip
    mov edi, ecx
skip:
    inc ecx
    jmp zpet3
hotovo3:
    mov [vyskyt], edx
    mov [pozice], edi
    ret

