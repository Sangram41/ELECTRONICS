; ADDING CORRESPONDING ELEMENTS OF TWO ARRAYS...
;step 1 : INITIALIZE 1st ARRAY CALLED A
;step 2 : INITIALIZE 2nd ARRAY CALLED B  
;step 3 : INITIALIZE THE COUNTER [LENGTH OF ARRAY]
;step 4 : INITIALIZE POINTER TO ARRAY A 
;step 5 : INITIALIZE POINTER TO ARRAY B 
;step 6 : GET ELEMENT OF 1st ARRAY IN ACCUMULATOR
;step 7 : ADD ELEMENT OF 2nd ARRAY IN ACCUMULATOR
;step 8 : STORE RESULT IN ONE OF THE ARRAY
;step 9 : INCREMENT POINTER TO ARRAY A
;step 10 : INCREMENT POINTER TO ARRAY B
;step 11 : DECREMENT COUNTER BY 1
;step 12 : IF COUNTER = 0
            yes : GO TO STEP 13 /STOP EXECUTION
            no : GO TO STEP 6
;step 13 : STOP EXECUTION



org 0000H

mov 20H, #01H      ; array A
mov 21H, #02H
mov 22H, #03H
mov 23H, #04H
mov 24H, #05H
mov 25H, #06H

mov 30H, #01H      ; array B
mov 31H, #02H
mov 32H, #03H
mov 33H, #04H
mov 34H, #05H
mov 35H, #06H

mov r0, #20H       ; pointer to array A
mov r1, #30H       ; pointer to array B
mov r3, #06H       ; counter = 6

UP:  mov A, @r0        ; get element of array A
     add A, @r1        ; add element of array B
     mov @r0, A        ; store result back into array A
     inc r0            ; next element of A
     inc r1            ; next element of B
     djnz r3, UP        ; repeat until counter = 0

here: sjmp here          ; stop execution

end