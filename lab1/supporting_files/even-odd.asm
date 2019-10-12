	.data
a:
	10
	.text
main:
	load %x0, $a, %x3
	add %x0, %x0, %x4
loop:
	beq %x3, %x4, even
	subi %x3, 1, %x3
	beq %x3, %x4, odd 
	subi %x3, 1, %x3
	jmp loop
odd:
	addi %x0, 1, %x10
	end
even:
	subi %x0, 1, %x10
	end