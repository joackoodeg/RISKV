.text
	lui t0, 0x12345 #Carga eso en t0
	sw t0, (sp) #almacena t0 en la direccion apuntada por sp
	lui a1, 0x10010 #Carga eso en a1
	lw t1, (sp) #Carga en t1 la variable almacenada en sp
	sw t1, (a1) #Almacena el valor de t1 en la direccion apuntada por a1
	li a7, 10 #Cargar el c�digo de salida (10) en a7 para finalizar el programa
ecall

#t0 = 0x12345,
#direccion SP =  0x123450000,
#a1 = 0x1001,
#t1 = 0x12345,
#t1 = 0x10010000,


#El programa b�sicamente mueve un valor (0x12345000) desde un registro a la pila, 
#luego lo recupera y lo almacena en una direcci�n de memoria espec�fica (0x10010000), 
#antes de terminar la ejecuci�n.

#b) �En d�nde se almacena el valor de t0?
#	En la direccion de sp

#c)  �Por qu� se asigna 0x1001 a a1? (ver ejercicio 2)
#	0x10010 se carga en a1 como una base para la direcci�n de memoria.

#d)�Qu� acci�n hace sw t0,(sp) y cu�l es la direcci�n en donde se almacenar� el dato? �Qu� valor
# hab�a antes en esa direcci�n y qu� valor hay despu�s de ejecutar la instrucci�n?
# 	Almacena el valor de t0 en la direccion de sp:
#	Previo-> 0x7fffeffc -> Valor: 0x00000000'
#	Luego -> 0x7fffeffc -> Valor: 0x123450000

#e)Al ejecutar lw t1,(sp) �Qu� valor toma t1? 
#	Carga en t1 la variable almacenada en sp, pero no la guarda por lo que sigue siendo 0x00000

#f) Con sw t1,(a1) �En qu� direcci�n se almacena el valor de t1?
#	Lo guarda en la direccion que es apuntada por t1: 0x10010000
