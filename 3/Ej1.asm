.text
	ori t0, zero, 0x476 	#0000 0000 0000 0000 0000 0100 0111 0110 = 1142
	ori t1, zero, 0x552 	#0000 0000 0000 0000 0000 0101 0101 0010 = 1362
	ori t2, zero, 0x22  	#0000 0000 0000 0000 0000 0000 0010 0010 = 34
	slt t6, t1, t0 	#t1 < t0 ? t6=1 : t6=0
	beq t6, zero, no1 	#t6!= 0 ? -> no1
	slt t6, t2, t0 	#t2 < t0 ? t6=1 : t6=0
	beq t6, zero, no2 	#t6 != 0? -> no2
	bge t2,t0,no2  	#t2 >= t0 ? -> no2 
	or a0, zero, t0 	#a0 = t0
	j fin 		#Jump -> fin
no2: 	or a0, zero, t2 	#a0 = t2
	j fin 		#salto a fin
no1: 	slt t6, t2, t1 	#t2 < t1? t6 = 1 : t6=0
 	beq t6, zero, no2 	#t6 != 0 ? -> no2
	or a0, zero, t1 	#a0 = t1
fin: ori a7, x0, 10 		#a7=10
	ecall