
.data
	// Data section

.text
	// Text section

	// Main program
	main:
		addi x1, x0, 10 // Set register x1 to 10
		add x2, x0, 20 // Set register x2 to 20
		add x3, x1, x2 // Add x1 and x2, result in x3

		// Exit program
		ecall

