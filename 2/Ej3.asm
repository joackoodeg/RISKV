.text
	lui a2,0x11111 #a2 0x11110000
	ori a2,a2,0x7FF 
	lui a3,0x11112 #a3 0x11120000
	ori a3,a3,-0x355
	
# ORI: Instruccion de tipo inmediato, realiza OR bit a bit entre el contenido de un registro y un valor inmediato, y luego lo almacena
# ori rd, rs1, imm -> rd: donde se almacena, rs1: registro fuente, imm: valor inmediato

# en ori a2,a2,0x7ff: 0x11110000 | 0x000007FF = 0x111107ff

# -0x355 en representacion positiva complemento a 2: 
# 1) 0x355 en binario : 0000 0011 0101 0101
# 2) Complemento a 1: 1111 1100 1010 1010
# 3) Compemento a 2:  1111 1100 1010 1010 + 1 =  1111 1100 1010 1011
# 4) Hexa: 0xFCAB

#0001 0001 0001 0001 0010 0000 0000 0000 (0x11112000)
#OR
#1111 1100 1010 1011 (0xFCAB, extendido a 32 bits es 1111 1111 1111 1111 1111 1100 1010 1011)
#---------------------------------------------------------
#1111 1111 1111 1111 1111 1100 1010 1011 (0xFFFFFCAB)
 
