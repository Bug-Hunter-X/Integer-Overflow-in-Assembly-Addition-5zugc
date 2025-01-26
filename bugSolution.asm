mov eax, [ebp+8]
cmp eax, 0x7FFFFFFF
jl check_overflow_1
jmp overflow
check_overflow_1:
add eax, 10
cmp eax, 0x7FFFFFFF
jl check_overflow_2
jmp overflow
check_overflow_2:
mov [ebp-4], eax
mov eax, [ebp+12]
cmp eax, 0x7FFFFFFF
jl check_overflow_3
jmp overflow
check_overflow_3:
mov ebx, [ebp-4]
add ebx, eax
cmp ebx, 0x7FFFFFFF
jl add_success
jmp overflow
add_success:
mov [ebp-8], ebx
mov eax, [ebp-8]
ret
overflow:
; Handle overflow appropriately
mov eax,-1
ret