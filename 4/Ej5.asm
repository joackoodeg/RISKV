.data
values: .word 5, 3, 9	#Tres valores en memoria
min_value: .space 4	#Espacio para almacenar el menor valor (4 bytes)

.text
.globl _start
_start:
	la t0, values	#Cargar la direccion base de los valores en t0
	lw t1, 0(t0)	#Carga el primero valor en t1 - Offset 0 bytes
	lw t2, 4(t0)	#Carga el primero valor en t1 - Offset 4 bytes
	lw t3, 8(t0)	#Carga el primero valor en t1 - Offset 8 bytes

# Encontrar el menor entre t1 y t2
	bge t1,t2, compareT1_T3	#Si t1>= t2 -> ir a comparar t1 con t3
	mv t1, t2		#Si t2<t1 -> Entonces el menor por ahora es t2 
			#Es equivalente a -> addi t1, t2, 0 -> Copia un valor en otro
compareT1_T3:
	bge t1, t3, store_min	#Si t1>= t3 -> t1 es el menor
	mv t1, t3		#si t1<t3 -> Entonces el menor es t3
	
store_min:
	la t4, min_value	#Cargar la direccion de min_value en t4
	sw t1, 0(t4)	#Almacenar t1 en min_value
	