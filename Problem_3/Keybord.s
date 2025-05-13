.global _start
_start:

	ldr r5, =0x2000 @cargo direccion del contador
	ldr r6, [r5] @cargo contenido del contador
	mov r6, #0 @lo vuelvo 0
	str r6, [r5] @lo guardo
	ldr r2, =0xE048 @cargo valor de tecla arriba
	ldr r3, =0xE050 @cargo valor de tecla abajo

	
LOOP:
	ldr r0, =0x1000 @carga la direccion de la tecla
	ldr r1, [r0] @carga el contenido
	cmp r1, r2 @compara el contenido con r2 (tecla arriba)
	beq POS_ADD @si es pasa a sumar posicion
	cmp r1, r3 @compara el contenido con r3 (tecla abajo)
	beq POS_SUB @si es pasa a restar
	b LOOP @vuelve al loop
	

POS_ADD:
	ldr r6, [r5] @carga valor del contador
	add r6, r6, #1 @suma 1 a r6 (contenido del contador)
	str r6, [r5] @guarda el valor en el registro que corresponde
	b LOOP @devuelta al loop



POS_SUB:
	ldr r6, [r5] @carga valor del contador
	sub r6, r6, #1 @le resto 1 al contador
	str r6, [r5] @guardo el nuevo valor
	b LOOP @devuelta al loop
	
	
	

	
	
	
	
	