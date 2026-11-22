    LXI H, 0100H
LOOP:
    MVI M, 00H
    INX H
    MOV A, H
    ORA L
    JMP LOOP
