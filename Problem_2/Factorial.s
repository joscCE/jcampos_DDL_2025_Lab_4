.global _start


_start:
	mov r0, #5 
	mov r2, r0

LOOP:
cmp r0, #1
ble END
sub r0, r0, #1
mul r2, r2, r0

b LOOP



END:
 b  END
	