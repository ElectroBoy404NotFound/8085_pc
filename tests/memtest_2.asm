CMD_REG  EQU 30H
PORT_A   EQU 31H

         ORG 0000H

START:   DI
         MVI  A,01H         ; command byte: PA = output
         OUT  CMD_REG
         MVI  A,55H         ; 01010101
LOOP:    OUT  PORT_A
         JMP  LOOP
         END
