CMD_REG  EQU 7000H
PORT_A   EQU 7001H

         ORG 0000H

START:   DI
         MVI  A,01H         ; command byte: PA = output
         STA  CMD_REG
         MVI  A,55H         ; 01010101
LOOP:    STA  PORT_A
         JMP  LOOP
         END
