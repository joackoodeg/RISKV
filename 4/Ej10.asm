#10. Dado un vector de 30 words, acumule en a0 aquellos que están comprendidos entre 0x100 y 0x200

.data
vector: .word 0x0100, 0x0150, 0x0200, 0x0010, 0x0190, 0x0140, 0x0180, 0x0220, 0x0120, 0x0170, # ... 20 valores más hasta 30 en total

.text
.globl _start
_start:
    la t0, vector        # Cargar la dirección base del vector en t0
    li t1, 30            # Cargar el número de valores en t1 (30 palabras)
    li a0, 0             # Inicializar el acumulador en a0 (suma de los valores en el rango)
    li t2, 0x100         # Cargar el límite inferior del rango en t2 (0x100)
    li t3, 0x200         # Cargar el límite superior del rango en t3 (0x200)

loop:
    beqz t1, done        # Si t1 es 0, saltar a done (fin del ciclo)
    
    lw t4, 0(t0)         # Cargar el valor actual del vector en t4
    blt t4, t2, skip     # Si t4 < 0x100, saltar a skip
    bge t4, t3, skip     # Si t4 >= 0x200, saltar a skip
    
    add a0, a0, t4       # Acumular el valor en a0
    
skip:
    addi t0, t0, 4       # Avanzar al siguiente valor en el vector (4 bytes = 1 palabra)
    addi t1, t1, -1      # Decrementar el contador de valores restantes
    j loop               # Repetir el ciclo

done:
    # finish
