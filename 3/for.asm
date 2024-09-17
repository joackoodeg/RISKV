#FOR

    # Inicializaci�n
    li t0, 0          # t0 = 0 (variable de contador)

for_start:
    # Comprobar la condici�n (t0 < 10)
    li t1, 10         # t1 = 10
    bge t0, t1, for_end   # Si t0 >= t1, saltar a for_end

    # Cuerpo del bucle
    # (Ejemplo: imprimir el valor de t0)

    # Actualizaci�n (incrementar t0)
    addi t0, t0, 1    # t0 = t0 + 1

    # Volver al inicio del bucle
    j for_start

for_end:
    # C�digo despu�s del bucle
