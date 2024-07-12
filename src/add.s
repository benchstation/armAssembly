@ Simulating 8bit environment
.data
x_low:    
    @ Lower byte of first number (0x1234)
    .word 0x34       
x_high:   
    @ Higher byte of first number (0x1234)
    .word 0x12       
y_low:    
    @ Lower byte of second number (0x5678)
    .word 0x78       
y_high:   
    @ Higher byte of second number (0x5678)
    .word 0x56       

.text
.global _start

_start:
    @ Load lower bytes
    ldrb r0, =x_low       @ Load address of x_low into r0
    ldrb r1, [r0]         @ Load value of x_low into r1
    ldrb r0, =y_low       @ Load address of y_low into r0
    ldrb r2, [r0]         @ Load value of y_low into r2

    @ Add lower bytes
    adds r3, r1, r2       @ Add lower bytes and store result in r3, set flags

    @ Store lower byte of the result
    mov r4, r3            @ Move result to r4 for later use

    @ Load higher bytes
    ldrb r0, =x_high      @ Load address of x_high into r0
    ldrb r1, [r0]         @ Load value of x_high into r1
    ldrb r0, =y_high      @ Load address of y_high into r0
    ldrb r2, [r0]         @ Load value of y_high into r2

    @ Add higher bytes with carry
    adcs r3, r1, r2       @ Add higher bytes with carry from lower byte addition

    @ Store higher byte of the result
    mov r5, r3            @ Move result to r5 for later use

    @ Exit program
    mov r7, #1            @ syscall: exit
    swi 0                 @ make syscall