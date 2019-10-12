	.data
n:
	10
	.text
main:
	load %x0, $n, %x3
	addi %x0, 0, %x4
	addi %x0, 1, %x5
	addi %x0, 0, %x6
	addi %x0, 65535, %x7
loop:
	beq %x6, %x3, end
	store %x4, 0, %x7
	blt %x6, %x3, set
	end
set:
	addi %x6, 1, %x6
	subi %x7, 1, %x7
	addi %x5, 0, %x9
	add %x4, %x5, %x5
	addi %x9, 0, %x4
	blt %x6, %x3, loop
	end