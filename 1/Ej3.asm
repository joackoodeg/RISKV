.data
	valor: .word 0
.text
	lui t0, 0x12345 #Carga el valor 0x12345000 en t0
	lui t1, 0x345 # Carga el valor 0x345000 en t1.
	lui t2, 0x5 #Carga el valor 0x5000 en t2.
	sw t0, valor, t6 #Se almacenará el valor de t0 en la dirección de valor + pc
	#La dirección de memoria donde se almacenará el valor es calculada como la suma de valor y el contenido de t6.
	la a7, valor #a7 cargará la dirección de valor.
	sw t1, 4(a7)#Se almacenará el valor de t1 en la dirección valor + 4.
	sw t2, 8(a7)#Se almacenará el valor de t2 en la dirección valor + 8.

# b) opcode | rs1 (base) | rs2 (source) | imm | funct3 | imm
#   0100011 | x22       | x5           | 000000000000 | 010 | 00000 

# Direccion de memoria de VALOR:
#  Cuando se define valor en el segmento de datos, se le asigna un valor de memoria a la variable
#  Dado a que comienza asignar a partir de 0x100000, "valor" tendra esa direccion de memoria
