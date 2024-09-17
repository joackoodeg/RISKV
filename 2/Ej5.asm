	li t0, 0x234        # Cargar el valor 0x234 en el registro t0
    	li t1, 0x10010000   # Cargar la dirección 0x10010000 en el registro t1
    	sw t0, 0(t1)        # Almacenar el valor de t0 en la dirección de memoria 0x10010000