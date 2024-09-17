# Resuelva el problema anterior pero �nicamente copiando los valores impares

.data
V: .word 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15 # Vector de origen con 15 palabras
A: .space 60 #Reservar espacio para 15 palabras (60bytes) / 1 palabra -> 4 bytes -> 32bits

.text
.globl _start
_start:
	la t0, V	#Carga la direccion base de V en t0 (Puntero a V)
	la t1, A	#Carga la direccion base de A en t1 (Puntero a A)
	li t2, 15	#Carga el numero de palabras a copiar
	
loop: 	beqz t2, done 	# Si t2 = 0 -> Done
	
	lw t3, 0(t0)	# Cargar palabra ACTUAL en t3	
	andi t6, t3, 1          # AND bit a bit de a0 y 1, el resultado estar� en t0
   	beq  t6, zero, even     # Si t0 es 0, es par, saltar a etiqueta 'even'
    
    	# Es impar
	sw t3, 0(t1)	# Almacena la palabra en el vector A
	addi t0, t0, 4	# Avanzar al siguiente elemento en V (4 bytes = 1 palabra)
	addi t1, t1, 4	# Avazar al siguiente espacio en A (4 bytes = 1 palabra)
	addi t2, t2, -1	# Decrementar el contador
	j loop
even:
    	addi t0, t0, 4	# Avanzar al siguiente elemento en V (4 bytes = 1 palabra)
	addi t2, t2, -1	# Decrementar el contador
	j loop
done:
	#finish