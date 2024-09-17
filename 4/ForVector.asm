# int i;
# int Puntos[200]
# for (i=0, i<200, i++){
#	Punto[i] = Puntos[i] +10;
#}
#

# s0 Puntero a la base del arreglo
# s1 = i
	addi s1, zero, 0 	#i=0
	addi t2, zero, 200

for: 	bge s1, t2, done	#if i>=200
 	slli t0, s1, 2	#t0 = i*4 (se mueve hasta el siguiente elemento) 4bytes -> 32bits
 	add t0,t0, s0
 	lw t1, 0(s0)
 	addi t1,t1,10
 	sw t1, 0(s0)
 	addi s1,s1,1
 	j for
 done:
 	#end
 	
# LB - LBU:
#	lb -> Load byte signed
# Carga un byte desde la memoria y lo extiende con signo a 32bits
# Si el bit mas significativo del byte cargado (bit 7) es 1, el valor se extendera
# con 1s hasta los  32 bits. Si es 0, se extendera con 0s
# Nota: Esto significa que si el valor del byte representa un nro negativo (en C2)
# se mantendra como negativo al cargarse en un registro de 32bits
# Ej: 	a0= 0xFF -> 11111111 / -1
#	lb t0, 0(a0) -> 0xFFFFFFFF / -1 en 32 bits	
  
#	lbu -> Load byte unsigned
# Carga un byte desde la memoria y lo extiende sin signo a 32bits	
# Siempre extiende con 0s -> se interpreta al byte sin signo
#		  -> se carga como un numero positivo
# Ej: 	a0= 0xFF -> 11111111 / -1
#	lbU t0, 0(a0) -> 0x000000FF / 255 en decimal
