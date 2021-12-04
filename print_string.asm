print_string:
  pusha
  mov ah, 0x0e ;initialize register for printing interupt
  print_loop:
    mov al, [bx]
    cmp al, 0
    je done_printing
    int 0x10 ;print character in al
    inc bx
    jmp print_loop
  done_printing:
  popa
  ret
