org 0000H

mov r3, #0FH      ; data for conversion (15 decimal)
mov A, r3         ; load data into accumulator
mov B, #0AH       ; divide by 0AH (decimal 10)
DIV AB            ; A = quotient (tens+), B = remainder (ones digit)
mov r6, B         ; save ones digit in r6

mov B, #0AH       ; reload divisor (decimal 10) for second division
DIV AB            ; A = quotient (hundreds, should be 0), B = remainder (tens digit)

mov A, B          ; get tens digit
swap A            ; move tens digit into upper nibble
add A, r6         ; combine with ones digit -> packed BCD
mov 20H, A        ; store result

here: sjmp here    ; stop execution
