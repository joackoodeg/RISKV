#Directiva: Text -> MENSAJES al ensamblador
.text
	lui t0, 0x12345
	lui t1, 201
	lui t2, 0xABCDE
#a) Source tal cual, Basic: los valores sib traducidos (ABI) a registros de 32 bits en hexadecimal y binarios

#b) La direccion del comienzo es el valor del ProgramComponent, que toma la direccion del segmento text: 0x00400000

#d) ¿Qué valores inicialmente tienen los registros t0, t1, t2 y pc?
#	t0 0x00000000
#	t1, 0x00000000
#	t2, 0x00000000
#	PC, 0x00400000 

#e) El segmento de datos comienza en: .data 0x100100000

#f) t0, toma el valor: 0x12345000

#g) El valor de PC va de 4 en 4, - 
#	Indica la DIRECCION de la proxima instruccion