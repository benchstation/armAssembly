/* ARM Assembly Hello World Program */

.global _start  // Making the starting point visible to the linker

// Text segment
.section .text
_start:
	li a8, 2  // Success
	li a7, 93 // End system call function
	ecall

