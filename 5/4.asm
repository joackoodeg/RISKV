.data
vector:   .word 2,2,2   # Vector de 5 elementos

.text
.globl main

main:
    la a0, vector               # Cargar la dirección base del vector en a0
    li a1, 3                 # Cargar el tamaño del vector en a1 (n = 5)

    jal ra, calcular_promedio         # Llamar a la subrutina contar_pares

    # Aquí el resultado estará en a0 (número de elementos pares)

    addi a7, x0, 10             # Preparación para salir
    ecall                       # Llamada al sistema (syscall) para salir

# Subrutina contar_pares
# a0 = dirección del vector
# a1 = tamaño del vector (n)
# Retorno en a0 = número de elementos pares

calcular_promedio:
    li t0, 0                    # Inicializar el sumador
    li t1, 0                    # Inicializar el índice i en t1

for_loop:
    bge t1, a1, fin_bucle        # Si i >= n, salir del bucle

    slli t2, t1, 2             # t2 = i * 4 (desplazamiento en bytes)
    lw t3, 0(a0)                # Cargar el elemento vector[i] en t3
    add t3, t3, t2              # Usar t2 como desplazamiento en a0: lw t3, (t2 + a0)
    add t0, t0, t3              # Sumar el elemento al acumulador
    
    addi t1, t1, 1              # Incrementar el índice i
    j for_loop                  # Saltar de nuevo al inicio del bucle

fin_bucle:
    mv a0, t0                   # Devolver el promedio en a0
    jr ra, -100
