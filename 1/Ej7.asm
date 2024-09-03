.data
	valor: .word 0x805215C9
.text
	la s0, valor
	lhu a1, 0(s0) #a1 = 0x000015C9
	lhu a2, 2(s0) #a2 = 0x00008052

#lhu: Set a1 to zero-extended 16-biy value from effective memory HALFWORD address

