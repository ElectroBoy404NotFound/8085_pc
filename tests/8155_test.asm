START:
        ;NOP
        ;NOP
        ;JMP START
        ; Configure 8155:
        ; Port A = Output
        ; Port B = Output
        ; Port C = Output
        ; Timer disabled

        MVI A, 00H
        STA 0800H

        ; Start cycling from bit 0
        MVI B, 01H

LOOP:
        ; Write current pattern to Port A
        MOV A, B
        STA 0801H

        ; Delay
DELAY:
        LXI D, 0FFFFH

D1:
        DCX D
        MOV A, D
        ORA E
        JNZ D1

        ; Shift bit left
        MOV A, B
        RLC
        MOV B, A

        JMP LOOP

