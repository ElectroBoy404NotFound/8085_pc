         ORG 0000H

LOOP:    MVI  A,55H
AGAIN:   STA  7000H
         JMP  AGAIN
