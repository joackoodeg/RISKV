.data
resultado: .word 0   # Variable para almacenar el resultado

.text
.globl main
main:
    li t0, 10       # Cargar 10 en el registro t0
    li t1, 20       # Cargar 20 en el registro t1
    add t2, t0, t1  # Sumar t0 y t1, guardar en t2

    la t3, resultado #Cargar LA DIRECCION de "resultado" en t3
    sw t2, 0(t3) #Guardar el valor de t2 en la direccion de "resultado"
    
    lw a0, 0(t3) #Cargar el valor de resultado en a0
    li a7, 1 #Syscall para imprimir un entero
    ecall
	 
    li a7, 10        # Syscall para salir
    ecall
