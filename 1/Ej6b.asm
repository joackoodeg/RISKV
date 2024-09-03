.data
	valor: .word 0x805215C9
.text
	la s0,valor
	lb a1, 0(s0)
	lb a2, 1(s0)
	lb a3, 2(s0)
	lb a4, 3(s0)

#Paso a paso

# lb a1, 0(s0)
# Dado que lb carga un byte con signo, a1 contendrá 0xFFFFFFC9 si se trata de una arquitectura de 32 bits, 
# porque 0xC9 (que es -55 en decimal) se extiende con signo a 32 bits.

#la a2, 1(s0)
# 0x15 es positivo, por lo que a2 contendrá 0x00000015.

# la a3, 2(s0)
# 0x52 es positivo, por lo que a3 contendrá 0x00000052.

# la a4, 3(s0)
# Dado que 0x80 es -128 en decimal, a4 contendrá 0xFFFFFF80 
# si se trata de una arquitectura de 32 bits, porque 0x80 se extiende con signo a 32 bits.