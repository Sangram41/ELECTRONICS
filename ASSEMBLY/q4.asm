org 0000H

mov r2, #76H       ; packed BCD number (digit 7 and digit 6)

mov A, #0F0H       ; mask for high nibble
anl A, r2          ; A = high nibble of r2 (70H)
swap A             ; A = tens digit value (07H)

mov B, #0AH        ; multiply by 10 (decimal)
mul AB             ; A = tens_digit * 10 (07H * 0AH = 46H)
mov r6, A          ; save tens*10 result

mov A, r2          ; reload original packed BCD
anl A, #0FH        ; mask for low nibble -> units digit (06H)
add A, r6          ; A = units + (tens*10)
mov r2, A          ; store final binary result

here: sjmp here     ; stop execution
