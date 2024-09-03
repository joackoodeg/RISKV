.data
elemento: .word 0x4E1C532D
.text
	lw t1,elemento
#a) ¿Qué instrucciones se generan?
#lw t1, elemento se traducirá en un código máquina que carga una palabra desde la dirección de memoria asociada 
#con la etiqueta elemento en el registro t1. 
#	lw t1, 0x10010000

#b) En las instrucciones generadas, ¿cuáles son los registros intervinientes? -> t1

#c) ¿Por qué valor es reemplazada la etiqueta elemento?
#La etiqueta elemento es reemplazada por la dirección de memoria en la que el ensamblador ha almacenado la palabra 0x4E1C532D. 
#Por ejemplo, si el ensamblador almacena elemento en la dirección 0x10010000, 
#la etiqueta elemento será reemplazada por 0x10010000 en la instrucción lw t1, elemento.

#d) ¿Cuál es la ventaja de utilizar etiquetas en lugar de direcciones?
# Si la ubicación en memoria de un dato cambia, no es necesario actualizar todas las instrucciones que lo referencian, solo la definición de la etiqueta.

