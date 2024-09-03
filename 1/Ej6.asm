.data
	valor: .word 0x805215C9
.text
	la s0,valor #Carga la dureccion de word (0x1001000)
	lbu a1, 0(s0) # Carga el byte en la dirección s0 + 0 en el registro a1
	lbu a2, 1(s0) # Carga el byte en la dirección s0 + 1 en el registro a2
	lbu a3, 2(s0) # Carga el byte en la dirección s0 + 2 en el registro a3
	lbu a4, 3(s0) # Carga el byte en la dirección s0 + 3 en el registro a4

	
# PASO A PASO
# 	lbu a1, 0(s0)
# lbu significa "load byte unsigned" (cargar byte sin signo).
# Carga el primer byte (más bajo) de la palabra almacenada en la dirección 0x10010000 (almacenada en s0) en el registro a1
# En este caso, el primer byte de 0x805215C9 es 0xC9.

# 	lbu a2, 1(s0)
# Carga el segundo byte (más bajo) de la palabra almacenada en 0x10010000 + 1 en el registro a2.
# En este caso, el segundo byte de 0x805215C9 es 0x15.

# 	lbu a3, 2(s0)
# Carga el tercer byte (más bajo) de la palabra almacenada en 0x10010000 + 2 en el registro a3.
# En este caso, el tercer byte de 0x805215C9 es 0x52.

#a) ¿Cómo se almacena el valor en el segmento de datos? ¿La arquitectura es big endian o little endian?

#En una arquitectura little-endian, los bytes de una palabra de 32 bits se almacenan en memoria desde el byte menos significativo (el byte "más bajo") al byte más significativo (el byte "más alto"). 
#En otras palabras, el byte más bajo se almacena en la dirección más baja, y el byte más alto se almacena en la dirección más alta.