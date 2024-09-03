.data
elemento: .word 0x4E1C532D
.text
	lw t1,elemento
#a) �Qu� instrucciones se generan?
#lw t1, elemento se traducir� en un c�digo m�quina que carga una palabra desde la direcci�n de memoria asociada 
#con la etiqueta elemento en el registro t1. 
#	lw t1, 0x10010000

#b) En las instrucciones generadas, �cu�les son los registros intervinientes? -> t1

#c) �Por qu� valor es reemplazada la etiqueta elemento?
#La etiqueta elemento es reemplazada por la direcci�n de memoria en la que el ensamblador ha almacenado la palabra 0x4E1C532D. 
#Por ejemplo, si el ensamblador almacena elemento en la direcci�n 0x10010000, 
#la etiqueta elemento ser� reemplazada por 0x10010000 en la instrucci�n lw t1, elemento.

#d) �Cu�l es la ventaja de utilizar etiquetas en lugar de direcciones?
# Si la ubicaci�n en memoria de un dato cambia, no es necesario actualizar todas las instrucciones que lo referencian, solo la definici�n de la etiqueta.

