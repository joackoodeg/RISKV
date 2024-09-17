.data
	dato1: .word 87
	dato2: .word 13
	res: .space 4
	mod: .space 4
.text
	lw t1, dato1 	#t1 = 87
 	lw t2, dato2 	#t2 = 13
	and a0, zero, zero 	#a0 = 0
	and a1, zero, zero 	#a1 = 0

si: 	beq t2, zero, finsi 	#t2 == 0 ? : finsi -> (Divide una sola vez, solo evita dividir por 0)

enton: 	div a0, t1, t2	#a0 = t1/t2
	rem a1, t1, t2	#a1 = mod(t1/t2)

finsi: 	sw a0, res, t0	#a0= res(t0)
	sw a1, mod, t0	#a1= mod(t0)
	nop