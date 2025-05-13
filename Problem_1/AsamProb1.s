.global _start

.section .data
array:    .word  1, 2, 3, 4, 5, 6, 7, 8, 9, 10  

.section .text
_start:
    mov r0, #0              @ índice
    ldr r1, =array          @ dirección base
    mov r4, #5              @ constante

LOOP:
    cmp r0, #10
    bge END

    ldr r2, [r1, r0, lsl #2]
    cmp r2, r4
    bge MULTIPLY

    add r2, r2, r4
    str r2, [r1, r0, lsl #2]
    add r0, r0, #1
    b LOOP

MULTIPLY:
    mul r2, r2, r4
    str r2, [r1, r0, lsl #2]
    add r0, r0, #1
    b LOOP

END:
    b END
