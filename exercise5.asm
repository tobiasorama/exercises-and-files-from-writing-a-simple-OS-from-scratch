org 0x7c00; tell the assembler where the code will be loaded
mov dx, 0x0234
call print_hex
jmp $

include "print_hex.asm"

;global variables
HEX_OUT:
  db '0x0000',0

times 510-($-$$) db 0
dw 0xaa55
