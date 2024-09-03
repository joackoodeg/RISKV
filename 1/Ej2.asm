.text
	lui a1, 0x10010 #Estoy dando 5 bits -> Va a quedar: 1001000 (resto con 0s)
	lw t0, 0(a1) # Escribir 0x12345 y guardarlo en t0. -> Guarda en la direccion a1 el valor
	lw t1, 4(a1) #Cargar otro 32 bits, Necesito desplazar 4.
	lw t2, 8(a1) #Lo mismo que ante

#b) La instrucción lui a1, 0x10010 carga el valor 0x10010000 en el registro a1. La instrucción lui (Load Upper Immediate) 
#	carga un valor inmediato en los 20 bits superiores de un registro, completando los 12 bits inferiores con ceros. 
#	Ej: 0x10010 se carga en los 20 bits superiores de a1, resultando en 0x10010000 en a1

#c) La instrucción lw t1, 4(a1) carga una palabra (32 bits) desde la memoria en la dirección a1 + 4 en el registro t1.

