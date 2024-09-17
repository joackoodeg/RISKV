#6. Teniendo un vector de diez palabras, recórralo y multiplique cada uno de sus valores por ocho.

.data
V: .word 1,2,3,4,5,6,7,8,9,10 # Vector de origen con 15 palabras

.text
.globl _start
_start:
	la t0, V	#Carga la direccion base de V en t0 (Puntero a V)
	li t1, 10	#Carga el numero de palabras a copiar
	
loop: 	beqz t1, done 	# Si t2 = 0 -> Done
	lw t3, 0(t0)	# Cargar palabra ACTUAL en t3
	li t2, 8		# Cargar Elemento inmediato 10 en t1
	mul t3, t3, t2	# t3 = t3 * 10
	
	sw t3, 0(t0)	# Almacena la palabra en el vector V
	addi t0, t0, 4	# Avanzar al siguiente elemento en V (4 bytes = 1 palabra)
	addi t1, t1, -1	# Decrementar el contador
	j loop

done:
	#finish