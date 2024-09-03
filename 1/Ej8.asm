.data
	valor: .word 0xABCD1234	
.text
	la s0, valor
	lhu t1, 0(s0)
	slli a1, t1, 16 
	
	lhu t2, 2(s0)
	slli a2, t2, 16