print_hex:
  pusha
  mov bx, HEX_OUT
  inc bx
  inc bx
  ;finding the first digit
  mov cx, dx
  and cx, 0xf000
  shr cx, 12
  call hex_digit
  mov [bx], cx
  inc bx
  ;finding second digit
  mov cx, dx
  and cx, 0x0f00
  shr cx, 8
  call hex_digit
  mov [bx], cx
  inc bx
  ;fidning third digit
  mov cx, dx
  and cx, 0x00f0
  shr cx, 4
  call hex_digit
  mov [bx], cx
  inc bx
  ;finding the fourth digit
  mov cx, dx
  and cx, 0x000f
  call hex_digit
  mov [bx], cx
  ;printing the hexadecimal number
  mov bx, HEX_OUT
  call print_string
  popa
  ret

hex_digit:
  cmp cx, 10
  jge bigger_than_ten
  add cx, 48
  ret
  bigger_than_ten:
  add cx, 87
  ret

include "print_string.asm"

HEX_OUT:
  db '0x0000',0
