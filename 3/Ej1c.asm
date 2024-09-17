.text
	ori t0, zero, 0x476 	#0000 0000 0000 0000 0000 0100 0111 0110 = 1142
	ori t1, zero, 0x552 	#0000 0000 0000 0000 0000 0101 0101 0010 = 1362
	ori t2, zero, 0x22  	#0000 0000 0000 0000 0000 0000 0010 0010 = 34
	blt t1, t0, no1 	#t1 < t0 ? no1 (Branch if less than) 
	blt t2, t0, no2 	#t2 < t0 ? no2 (Branch if less than) 
	bge t2,t0,no2  	#t2 >= t0 ? -> no2 
	or a0, zero, t0 	#a0 = t0
	j fin 		#Jump -> fin
no2: 	or a0, zero, t2 	#a0 = t2
	j fin 		#salto a fin
no1: 	blt t2, t1, no2 	#t2 < t1 ? no2 (Branch if less than) 
	or a0, zero, t1 	#a0 = t1
fin: 	ori a7, x0, 10 	#a7=10
	ecall