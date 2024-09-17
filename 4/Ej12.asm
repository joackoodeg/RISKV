.data
# Definici�n del vector de caracteres que termina con un car�cter nulo
vector: .asciiz "abracadabra"   # Cadena de ejemplo que contiene el car�cter 'a' varias veces

# Definici�n del car�cter buscado
buscar: .byte 'a'                # Car�cter a buscar en la cadena

# Reservar espacio para la variable de resultado
.result: .word 0

# Alinear la memoria despu�s del byte
.align 2

.text
.globl _start
_start:
    la t0, vector        # Cargar la direcci�n base del vector en t0
    lb t1, buscar        # Cargar el car�cter buscado en t1
    li a0, 0             # Inicializar el contador de repeticiones en a0 (0)
    
loop:
    lb t2, 0(t0)        # Cargar el car�cter actual en t2
    beqz t2, done       # Si el car�cter actual es nulo (fin de cadena), saltar a done
    beq t2, t1, increment # Si el car�cter actual es igual al car�cter buscado, saltar a increment
    
    j continue          # Saltar al siguiente car�cter

increment:
    addi a0, a0, 1      # Incrementar el contador de repeticiones en a0

continue:
    addi t0, t0, 1      # Avanzar al siguiente car�cter en el vector
    j loop              # Repetir el ciclo

done:
    la t3, .result      # Cargar la direcci�n de la variable de resultado en t3
    sw a0, 0(t3)        # Almacenar el conteo de repeticiones en la variable de resultado
    
#Explicacion align: 

# La directiva .align N alinea la siguiente secci�n de datos a una direcci�n de memoria 
# que es un m�ltiplo de 2^N. Esto asegura que los datos est�n alineados correctamente en la memoria

# En este caso: Asegura que el result se alinee a una direccion de memoria que sea multiplo de 2^2,
# es decir, 4 bytes. Esto es relevante para las variables tipo word (ocupan 4bytes)