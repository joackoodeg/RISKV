.data
	dato1: .word 20
	dato2: .word 40
	res: .space 4
.text
	lw s8, dato1 	#S8 = dato1
	lw s9, dato2 	#S9 = dato2
	and t0, t0, zero	#t0 = 0
	and t1, t1, zero	#t1 = 0
	bge s8, s9, salto	#s8>=s9 ? salto
	ori t1, t1, 1	#S8<S9 ? t1 = 1 -> Por la condicion anterior
salto: 	
	or t0, t0, t1	#t0 = 1 o 0
	sw t0, res, t6	#Guarda t0 en 4(t6)
	nop		#NO Operation
	nop