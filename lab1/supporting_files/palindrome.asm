	.data
a:
	10009
	.text
main:
	load %x0, $a, %x3
	addi %x3, 0, %x4
	addi %x3, 0, %x11
	addi %x0, 0, %x5
	addi %x0, 0, %x6
loop:
	divi %x4, 10, %x4
	addi %x5, 1, %x5
	muli %x4, 10, %x8
	sub %x3, %x8, %x9
	muli %x6, 10, %x6
	add %x6, %x9, %x6
	divi %x3, 10, %x3
	beq %x4, %x0, next
	bgt %x4, %x0, loop
	end
next:
	beq %x11, %x6, success
	bne %x11, %x6, fail
	end
success:
	addi %x0, 1, %x10
	end
fail:
	subi %x0, 1, %x10
	end