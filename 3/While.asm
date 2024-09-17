# WHILE

# Inicializaci�n
    li t0, 0          # t0 = 0 (variable de contador)

while_start:
    # Comprobar la condici�n (t0 < 10)
    li t1, 10         # t1 = 10
    blt t0, t1, loop_body   # Si t0 < t1, saltar a loop_body

    # Salir del bucle si la condici�n no se cumple
    j while_end

loop_body:
    # Cuerpo del bucle
    # (Ejemplo: imprimir el valor de t0, incrementar t0)
    # Incrementar el contador
    addi t0, t0, 1    # t0 = t0 + 1

    # Volver al inicio del bucle
    j while_start

while_end:
    # C�digo despu�s del bucle
