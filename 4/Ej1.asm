    li a0, 5            # Cargar un valor en a0, por ejemplo, 5
    andi t0, a0, 1      # AND bit a bit de a0 y 1, el resultado estará en t0
    beq t0, zero, even  # Si t0 es 0, es par, saltar a etiqueta 'even'
    
    # Es impar
    li s1, 20           # Si es impar, cargar 20 en s1
    j end               # Saltar al final

even:
    li s1, 10           # Si es par, cargar 10 en s1

end:

# Porque se verifica con andi la paridad:
# Se hace un and bit a bit, con 000000001.
# Si devuelve	1 -> Impar
#		0-> Par

#Esto se logra porque el bit menos significativo indica la parida (de esa manera).
