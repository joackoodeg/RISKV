# 	Explicacion 32 bits:
# En RISC-V, las instrucciones inmediatas no permiten cargar directamente un valor de 32 bits en una sola instrucci�n 
# porque las instrucciones inmediatas (como addi o ori) est�n limitadas a 12 bits para el valor inmediato. 
# La �nica manera de cargar un valor de 32 bits completo en un registro es mediante el uso de una combinaci�n de instrucciones, 
# como las siguientes:
#	lui (Load Upper Immediate): Carga los 20 bits superiores en un registro.
#	addi o ori: Usado para agregar los 12 bits inferiores.

# En una sola instrucci�n, la arquitectura RISC-V no puede codificar directamente m�s de 12 bits inmediatos, 
# debido al formato de las instrucciones en el conjunto de instrucciones (ISA) de 32 bits. 
# La pseudo-instrucci�n li (load immediate) es simplemente un atajo que se descompone en dos o m�s instrucciones para hacer esto posible.