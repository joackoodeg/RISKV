.data
# Definición del vector V con 10 elementos (puedes cambiar el tamaño según sea necesario)
V: .word 0, 1, 0, 3, 0, 5, 0, 7, 8, 0

# Definición de la variable n que contiene el número de elementos del vector V
n: .word 10

# Definición de la variable total para almacenar el conteo de ceros
total: .word 0

.text
.globl _start
_start:
    la t0, V        # Cargar la dirección base del vector V en t0
    lw t1, n        # Cargar el número de elementos en el vector en t1
    li a0, 0        # Inicializar el contador de ceros en a0 (total)
    
loop:
    beqz t1, done   # Si t1 es 0, saltar a done (fin del ciclo)
    
    lw t2, 0(t0)    # Cargar el valor actual del vector en t2
    beqz t2, increment # Si t2 (valor actual) es 0, saltar a increment
    
    # Valor no es cero, pasar al siguiente elemento
    addi t0, t0, 4  # Avanzar al siguiente valor en el vector (4 bytes = 1 palabra)
    addi t1, t1, -1 # Decrementar el contador de elementos restantes
    j loop          # Repetir el ciclo

increment:
    addi a0, a0, 1  # Incrementar el contador de ceros en a0
    addi t0, t0, 4  # Avanzar al siguiente valor en el vector
    addi t1, t1, -1 # Decrementar el contador de elementos restantes
    j loop          # Repetir el ciclo

done:
    la t3, total    # Cargar la dirección de la variable total en t3
    sw a0, 0(t3)    # Almacenar el conteo de ceros en la variable total
