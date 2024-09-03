# Programa: hola mundo
# Autor:
# Comentarios 

# R: Entre Registros
# I: Inmediato - Constantes 12 bits
# S: Store - 
# SB: Branch - 
# U: Upper - 20 Bits
# UJ:  Jump - Salto Largo - 

	.data
msg:	.asciz "Me gusta Organizacion de las computadoras !\n"
	
	.text
	
main:	
	
	la a0, msg
	li a7, 4   
	ecall
	
	li a7, 10
	ecall
	
	
