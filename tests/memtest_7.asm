         ORG 0000H

         MVI  A,55H
         JMP  HIGH          ; jump to 0008H
         NOP
         NOP
         NOP
HIGH:    STA  7000H         ; at 0008H
         JMP  HIGH
