mov eax, [ebp+8]
add eax, 10
mov [ebp-4], eax
mov eax, [ebp+12]
mov ebx, [ebp-4]
add ebx, eax
mov [ebp-8], ebx
mov eax, [ebp-8]
ret