.text
	lui t0, 0x12345 #Carga eso en t0
	sw t0, (sp) #almacena t0 en la direccion apuntada por sp
	lui a1, 0x10010 #Carga eso en a1
	lw t1, (sp) #Carga en t1 la variable almacenada en sp
	sw t1, (a1) #Almacena el valor de t1 en la direccion apuntada por a1
	li a7, 10 #Cargar el código de salida (10) en a7 para finalizar el programa
ecall

#t0 = 0x12345,
#direccion SP =  0x123450000,
#a1 = 0x1001,
#t1 = 0x12345,
#t1 = 0x10010000,


#El programa básicamente mueve un valor (0x12345000) desde un registro a la pila, 
#luego lo recupera y lo almacena en una dirección de memoria específica (0x10010000), 
#antes de terminar la ejecución.

#b) ¿En dónde se almacena el valor de t0?
#	En la direccion de sp

#c)  ¿Por qué se asigna 0x1001 a a1? (ver ejercicio 2)
#	0x10010 se carga en a1 como una base para la dirección de memoria.

#d)¿Qué acción hace sw t0,(sp) y cuál es la dirección en donde se almacenará el dato? ¿Qué valor
# había antes en esa dirección y qué valor hay después de ejecutar la instrucción?
# 	Almacena el valor de t0 en la direccion de sp:
#	Previo-> 0x7fffeffc -> Valor: 0x00000000'
#	Luego -> 0x7fffeffc -> Valor: 0x123450000

#e)Al ejecutar lw t1,(sp) ¿Qué valor toma t1? 
#	Carga en t1 la variable almacenada en sp, pero no la guarda por lo que sigue siendo 0x00000

#f) Con sw t1,(a1) ¿En qué dirección se almacena el valor de t1?
#	Lo guarda en la direccion que es apuntada por t1: 0x10010000
