CMD_REG  EQU 7000H
PORT_A   EQU 7001H

         ORG 0000H

         DI
         MVI  A,01H         ; command: Port A = output
         STA  CMD_REG
         MVI  A,55H
LOOP:    STA  PORT_A
         JMP  LOOP
