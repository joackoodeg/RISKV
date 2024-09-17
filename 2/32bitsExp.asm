# 	Explicacion 32 bits:
# En RISC-V, las instrucciones inmediatas no permiten cargar directamente un valor de 32 bits en una sola instrucción 
# porque las instrucciones inmediatas (como addi o ori) están limitadas a 12 bits para el valor inmediato. 
# La única manera de cargar un valor de 32 bits completo en un registro es mediante el uso de una combinación de instrucciones, 
# como las siguientes:
#	lui (Load Upper Immediate): Carga los 20 bits superiores en un registro.
#	addi o ori: Usado para agregar los 12 bits inferiores.

# En una sola instrucción, la arquitectura RISC-V no puede codificar directamente más de 12 bits inmediatos, 
# debido al formato de las instrucciones en el conjunto de instrucciones (ISA) de 32 bits. 
# La pseudo-instrucción li (load immediate) es simplemente un atajo que se descompone en dos o más instrucciones para hacer esto posible.