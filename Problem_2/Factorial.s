.global _start


_start:
	mov r0, #5 @valor x aqui se mueve el que se quiere
	mov r2, r0 @valor inicial

LOOP:
cmp r0, #1 @compara si ya estamos en 1
ble END @se va a end
sub r0, r0, #1 @le resta 1 osea x-1
mul r2, r2, r0 @lo multiplica 

b LOOP



END:
 b  END
	
