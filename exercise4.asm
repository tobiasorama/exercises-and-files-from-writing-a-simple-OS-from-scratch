org 0x7c00 ;tell the assembler where this code will be loaded

mov bx, HELLO_MSG
call print_string

mov bx, GOODBYE_MSG
call print_string

jmp $

include "print_string.asm"

;Data

HELLO_MSG:
  db 'Hello!',0

GOODBYE_MSG:
  db 'GOODBYE!',0

times 510-($-$$) db 0 ;padding and magic number
dw 0xaa55
