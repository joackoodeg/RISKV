#9. Recorra un vector de 20 valores de tipo word y cuente en a0 cuántos valores son mayores que 400

.data
V: .word 100, 250, 450, 200, 200, 200, 350, 400, 750, 120, 380, 490, 300, 550, 620, 320, 280, 370, 310, 300 # Vector de 20 valores

.text
.globl _start
_start:
	la t0, V	#Carga la direccion base de V en t0 (Puntero a V)
	li t1, 20	#Carga el numero de palabras a copiar
	li a0, 0
	li t2, 400
	
loop: 	beqz t1, done 	# Si t2 = 0 -> Done
	lw t3, 0(t0)	# Cargar palabra ACTUAL en t3
	bge t3, t2, mayor	#Si t3>)= t2 (400) -> Mayor
	
	#Si el valor no es mayor a 400 continuar con el siguiente  
	addi t0, t0, 4	# Avanzar al siguiente elemento en V (4 bytes = 1 palabra)
	addi t1, t1, -1	# Decrementar el contador
	j loop
mayor:
	addi a0, a0, 1
	addi t0, t0, 4 
	addi t1, t1, -1
	j loop	
done:
	#finish