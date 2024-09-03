.data
	valor: .word 0x805215C9
.text
	la s0, valor
	lh a1, 0(s0)
	lh a2, 2(s0)
	
#lh: Set a1 to sign-extended 16-biy value from effective memory HALFWORD address

# a1 = 