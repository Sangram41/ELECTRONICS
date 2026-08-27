org 0000H

mov 20H, #01H      ; initialize 6-element array
mov 21H, #02H
mov 22H, #03H
mov 23H, #04H
mov 24H, #05H
mov 25H, #06H

mov r3, #06H       ; counter = 6 (number of elements)
mov r0, #20H       ; r0 = pointer to start of array
clr A              ; accumulator = 0

next:  add A, @r0        ; add element pointed to by r0
       inc r0            ; point to next element
       djnz r3, next     ; decrement counter, loop if not zero

mov 26H, A         ; store sum in memory
here:  sjmp here          ; stop execution 