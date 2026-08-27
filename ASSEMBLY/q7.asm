; Find average of 6 numbers started as array in memory location 20H.


org 0000H

mov 20H, #01H      ; array 
mov 21H, #02H
mov 22H, #03H
mov 23H, #04H
mov 24H, #05H
mov 25H, #06H

mov r3, #06H       ; counter = number of elements
mov r4, r3         ; save count (needed later as divisor)
mov r0, #20H       ; pointer to array
clr A              ; accumulator = 0 (running sum)

next: add A, @r0        ; add element to sum
inc r0            ; point to next element
djnz r3, next     ; repeat until all elements added

mov 26H, A         ; store sum in memory

mov B, r4          ; divisor = original count (6)
DIV AB             ; A = sum / 6 (average, integer part), B = remainder

mov r5, A          ; store quotient (average)
mov r6, B          ; store remainder

here: sjmp here     ; stop execution

end