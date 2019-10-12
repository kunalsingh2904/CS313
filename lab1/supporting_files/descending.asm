	.data
a:
	35
	24
	87
	56
	12
	34
	90
	25
	46
n:
	9
	.text
main:
	addi %x0, $n, %x3
	addi %x0, 1, %x4
	subi %x4, 1, %x8
loop:
	beq %x4, %x3, end
 	load %x8, $a, %x5
	load %x4, $a, %x6
	bgt %x6, %x5, swap
	blt %x6, %x5, set
	end
swap:
	store %x6, 0, %x8
	store %x5, 0, %x4
	subi %x4, 1, %x4
	beq %x4, %x0, set
	subi %x4, 1, %x8
	jmp loop
set:
	addi %x8, 2, %x4
	subi %x4, 1, %x8
	jmp loop