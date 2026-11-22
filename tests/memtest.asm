         ORG 0000H
         MVI A,55H
LOOP:    STA 3000H      ; memory write to 8155 RAM area
         JMP LOOP
