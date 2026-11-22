         ORG 0000H
	JMP MAIN

	ORG 00FFH
MAIN:
         MVI  A,01H
         STA  7000H         ; command: Port A = output
         MVI  A,55H
LOOP:    STA  7001H
         JMP  LOOP
