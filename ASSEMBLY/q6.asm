; Initialize a timer in mod 2 
; load THQ with present value in 55H 
; load with starting value 55H

mov TMOD , #02H;
mov TLO, #55H;
mov THL, #55H;
set TRO