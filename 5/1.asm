.text
ori a0, x0, 12        # a0 = 12
ori a1, x0, 7         # a1 = 7
ori a2, x0, 35        # a2 = 35
addi sp, sp, -4       # Decrementa el puntero de la pila (sp) en 4 bytes
sw a0, (sp)           # Guarda a0 (12) en la pila en la posición que apunta sp
addi sp, sp, -4       # Decrementa sp en 4 bytes más
sw a1, (sp)           # Guarda a1 (7) en la pila
addi sp, sp, -4       # Decrementa sp en 4 bytes más		
sw a2, (sp)           # Guarda a2 (35) en la pila
add a0, a1, a2        # a0 = a1 + a2 = 7 + 35 = 42
addi a1, a1, 7        # a1 = a1 + 7 = 7 + 7 = 14
addi a2, a2, -20      # a2 = a2 - 20 = 35 - 20 = 15
lw a2, (sp)           # Carga a2 desde la pila (el valor original de a2 = 35)
addi sp, sp, 4        # Incrementa sp en 4 bytes
lw a1, (sp)           # Carga a1 desde la pila (el valor original de a1 = 7)
addi sp, sp, 4        # Incrementa sp en 4 bytes
lw a0, (sp)           # Carga a0 desde la pila (el valor original de a0 = 12)
addi sp, sp, 4        # Incrementa sp en 4 bytes
addi a7, x0, 10       # a7 = 10 (preparación para syscall de terminación)
ecall                 # Syscall (exit program)

# 6) -> Modifique el programa para que solo se modifique una vez el valor de la pila pero se almacenen los datos 

.text
ori a0, x0, 12        # a0 = 12
ori a1, x0, 7         # a1 = 7
ori a2, x0, 35        # a2 = 35
addi sp, sp, -12      # Hacer espacio para a0, a1 y a2 (3 registros de 4 bytes cada uno)
sw a0, 8(sp)          # Guardar a0 en la pila
sw a1, 4(sp)          # Guardar a1 en la pila
sw a2, 0(sp)          # Guardar a2 en la pila
add a0, a1, a2        # a0 = a1 + a2 = 7 + 35 = 42
addi a1, a1, 7        # a1 = a1 + 7 = 14
addi a2, a2, -20      # a2 = a2 - 20 = 15
lw a2, 0(sp)          # Restaurar el valor original de a2 desde la pila
lw a1, 4(sp)          # Restaurar el valor original de a1 desde la pila
lw a0, 8(sp)          # Restaurar el valor original de a0 desde la pila
addi sp, sp, 12       # Recuperar el espacio de la pila (deshacer ajuste)
addi a7, x0, 10       # Preparación para syscall de terminación
ecall                 # Syscall (exit program)
