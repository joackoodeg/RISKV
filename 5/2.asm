.text
    # Programa principal
main:
    la a0, val1           # Cargar la dirección de val1 en a0
    la a1, val2           # Cargar la dirección de val2 en a1
    jal ra, intercambio   # Llamar a la subrutina intercambio
#jal : Jump and Link / ra: Return Address
    
    # Continuación del programa (puedes hacer un ecall o seguir con otras instrucciones)
    addi a7, x0, 10       # Preparación para salir
    ecall                 # Llamada al sistema (syscall) para salir

# Subrutina de intercambio
intercambio:
    lw t0, 0(a0)          # Cargar el valor de la dirección a0 en t0
    lw t1, 0(a1)          # Cargar el valor de la dirección a1 en t1
    sw t1, 0(a0)          # Guardar el valor de t1 en la dirección a0
    sw t0, 0(a1)          # Guardar el valor de t0 en la dirección a1
    jr ra, -100

#jalr: Jump and Link Register

# Datos
.data
val1:  .word 5            # Primer valor a intercambiar (inicialmente 5)
val2:  .word 10           # Segundo valor a intercambiar (inicialmente 10)
