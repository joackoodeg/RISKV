.data
# Definición del vector de caracteres que termina con un carácter nulo
vector: .asciiz "abracadabra"   # Cadena de ejemplo que contiene el carácter 'a' varias veces

# Definición del carácter buscado
buscar: .byte 'a'                # Carácter a buscar en la cadena

# Reservar espacio para la variable de resultado
.result: .word 0

# Alinear la memoria después del byte
.align 2

.text
.globl _start
_start:
    la t0, vector        # Cargar la dirección base del vector en t0
    lb t1, buscar        # Cargar el carácter buscado en t1
    li a0, 0             # Inicializar el contador de repeticiones en a0 (0)
    
loop:
    lb t2, 0(t0)        # Cargar el carácter actual en t2
    beqz t2, done       # Si el carácter actual es nulo (fin de cadena), saltar a done
    beq t2, t1, increment # Si el carácter actual es igual al carácter buscado, saltar a increment
    
    j continue          # Saltar al siguiente carácter

increment:
    addi a0, a0, 1      # Incrementar el contador de repeticiones en a0

continue:
    addi t0, t0, 1      # Avanzar al siguiente carácter en el vector
    j loop              # Repetir el ciclo

done:
    la t3, .result      # Cargar la dirección de la variable de resultado en t3
    sw a0, 0(t3)        # Almacenar el conteo de repeticiones en la variable de resultado
    
#Explicacion align: 

# La directiva .align N alinea la siguiente sección de datos a una dirección de memoria 
# que es un múltiplo de 2^N. Esto asegura que los datos están alineados correctamente en la memoria

# En este caso: Asegura que el result se alinee a una direccion de memoria que sea multiplo de 2^2,
# es decir, 4 bytes. Esto es relevante para las variables tipo word (ocupan 4bytes)