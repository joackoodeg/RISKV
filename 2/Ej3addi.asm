.text
	lui a4,0x11111 
	addi a4,a4,0x7FF
	lui a5,0x11112
	addi a5,a5,-0x355
	
# con ori : a4 = 0x111117ff
#	a5 = 0xfffffcab

#con addi: 
#	a4= 0x111117ff => 0x11111000 + 0x000007ff
#	a5= 0x11112cab => 0x11112000 + 0xFFFFFCAB = 0x11111cab 

#0x11112000 (0001 0001 0001 0001 0010 0000 0000 0000 en binario)
#+ 0xFFFFFCAB (1111 1111 1111 1111 1111 1100 1010 1011 en binario)
#-----------------------------------------------------------
# 1111 1111 1111 1111 1111 1101 0010 1011
