; Initialize timer 1 in mode 0 
; The external pin 12 INTO controls timer 0 and timer 1 is fully controlled by TR1 

mov TMOD,#08H
set TRL
set TRO
end