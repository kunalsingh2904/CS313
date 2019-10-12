	.data
a:
	28
	.text
main:
	load %x0, $a, %x3
	addi %x3, 0, %x5
	subi %x3, 1, %x4
	addi %x0, 1, %x6
	beq %x4, %x0, fail
loop:
	beq %x4, %x6, success
	div %x5, %x4, %x5
	mul %x5, %x4, %x5
	beq %x5, %x3, fail
	addi %x3, 0, %x5
	subi %x4, 1, %x4
	jmp loop
success:
	addi %x0, 1, %x10
	end
fail:
	subi %x0, 1, %x10
	end 