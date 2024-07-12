@ Simulating 8bit environment
.data
a:  
    .word 0x10           @ First number (0x10)
b:  
    .word 0x10           @ Second number (0x10)

.text
.global _start

_start:
    @ Load 8-bit numbers
    LDRB r0, =a          @ Load address of a into r0
    LDRB r1, [r0]        @ Load value of a into r1
    LDRB r0, =b          @ Load address of b into r0
    LDRB r2, [r0]        @ Load value of b into r2

    @ Perform multiplication (lower 8 bits)
    MUL r3, r1, r2       @ Multiply r1 and r2, store 16-bit result in r3

    @ Store lower and higher bytes of the result
    AND r4, r3, #0xFF    @ Isolate lower byte of the result
    MOV r5, r3, LSR #8   @ Shift right by 8 to get higher byte of the result

    @ Exit program
    MOV r7, #1           @ syscall: exit
    SWI 0                @ make syscall
