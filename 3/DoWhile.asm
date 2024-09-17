#DO WHILE

# Inicialización
    li t0, 0          # t0 = 0 (variable de contador)

do_while_start:
    # Cuerpo del bucle
    # (Ejemplo: imprimir el valor de t0, incrementar t0)
    # Incrementar el contador
    addi t0, t0, 1    # t0 = t0 + 1

    # Comprobar la condición (t0 < 10)
    li t1, 10         # t1 = 10
    blt t0, t1, do_while_start   # Si t0 < t1, repetir el bucle

    # Código después del bucle
