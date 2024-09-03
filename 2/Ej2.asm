#2. Escribir las instrucciones necesarias para almacenar el valor 0x12345678 en el registro s1
#	a) Ejecutar paso a paso lo escrito y verificar que funcione correctamente

lui s1,0x12345 #s1 = 0x12345000
ori s1,s1,0x678 #s1 = 0x12345678 / Alternativa: addi s1,s1,0x678 
