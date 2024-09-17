# Usando LOOP:

li a0, 0
li t0, 61

loop:
	beqz t0, done 	# Si t0 = 0 -> Termina el ciclo
	add a0, a0, t1	# Sumar el valor t1 a a0
	addi t0, t0, -1	# Decrementar el contador
	j loop

done:
	#end
	
# Usando Desplazamientos

# 61 = 111101 = 2^5 + 2^4 + 2^3 + 2^2 + 2^0
# 61 * t1 = (32 + 16 + 8 + 4 + 1) * t1
    
    sll t2, t1, 5      # t2 = t1 * 32 (2^5)
    sll t3, t1, 4      # t3 = t1 * 16 (2^4)
    sll t4, t1, 3      # t4 = t1 * 8  (2^3)
    sll t5, t1, 2      # t5 = t1 * 4  (2^2)
    
    add a0, t2, t3     # a0 = t1 * (32 + 16)
    add a0, a0, t4     # a0 = t1 * (32 + 16 + 8)
    add a0, a0, t5     # a0 = t1 * (32 + 16 + 8 + 4)
    add a0, a0, t1     # a0 = t1 * (32 + 16 + 8 + 4 + 1)
