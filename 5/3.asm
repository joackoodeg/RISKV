.data
vector:   .word 1, 2, 3, 4, 5, 6, 7, 8, 8, 10   # Vector de 5 elementos

.text
    la a0, vector               # Cargar la direcci�n base del vector en a0
    li a1, 10                    # Cargar el tama�o del vector en a1 (n = 5)

    jal ra, contar_pares         # Llamar a la subrutina contar_pares

    # Aqu� el resultado estar� en a0 (n�mero de elementos pares)

    addi a7, x0, 10             # Preparaci�n para salir
    ecall                       # Llamada al sistema (syscall) para salir

# Subrutina contar_pares
# a0 = direcci�n del vector
# a1 = tama�o del vector (n)
# Retorno en a0 = n�mero de elementos pares

contar_pares:
    li t0, 0                    # Inicializar el contador de pares en t0
    li t1, 0                    # Inicializar el �ndice i en t1

for_loop:
    bge t1, a1, fin_bucle        # Si i >= n, salir del bucle

    slli t2, t1, 2              # t2 = i * 4 (desplazamiento en bytes, cada elemento es de 4 bytes)
    add t2, a0, t2              # Calcular la direcci�n de vector[i]: t2 = a0 + i * 4
    lw t3, 0(t2)                # Cargar el elemento vector[i] en t3

    andi t4, t3, 1              # Comprobar si el n�mero es par (t3 AND 1)
    beq t4, x0, es_par           # Si el n�mero es par, saltar a es_par

    j siguiente                 # Si es impar, saltar a siguiente

es_par:
    addi t0, t0, 1              # Incrementar el contador de pares

siguiente:
    addi t1, t1, 1              # Incrementar el �ndice i
    j for_loop                  # Saltar de nuevo al inicio del bucle

fin_bucle:
    mv a0, t0                   # Devolver el contador de pares en a0
    jr ra, -100                       # Retornar a la llamada
