; this is a comment

; you have several ways to interact with the computer in assembly
; you will see menomics such as: mov, cmp, jmp, jz, je, jne and much more as we progress over this project
; you will have a basic understanding of registers as they relate to building a simple operating system

; lets break down a few concepts

; Registers ax, bx, cx these are general purpose registers that we will come accross along with some others
; ax holds 2 bytes of data so it can hold from 0x00000000 to 0xffffffff (0 - 65535)
; you can reference the low and high portions of ax via the alias ah (high portion) and al (low portion)

; for instance lets move a letter in to al
; we will use the mov command to move the data
; in nasm we use intel syntax assembly so the syntax would be
; command destination, source
; in this case the command is mov
; the destination is al
; and the source is the character literal 'A'

; def write_char(char): (mov ah, 0x0e)
;     print(char) (char is the data in al [mov al, <some_char>])
; write_char('A') (set the data to pass to our al)


mov al, 'A' ; 65

; move 0x0e in to ah
mov ah, 0x0e ; BIOS Functions (tty mode)

; interupts
; int (the actual interupt)
int 0x10


; math operations
; add, sub, mul, div
; add dest, src -> dest = dest + src
; sub dest, src -> dest = dest - src
; mul dest, src -> dest = dest * src
; div dest, src -> dest = dest / src
mov ax, 0x01 ; move the value 1 in to the ax register
mov bx, 0x02 ; move the value 2 in to the bx register
add, bx, ax ; ==> bx = bx + ax ==> store the result of 2 + 1 in to the bx register
; ax => 1, bx => 3
mov ax, 0x02 ; ax => 2, bx => 3
mul bx, ax ; bx = bx * ax ==> store the result of 3 * 2 in to the bx register
; ax => 2, bx => 6

sub bx, ax ; bx = bx - ax ==> store the result of 6 - 2 in to the bx register
; ax => 2, bx => 4

; data (label: data size value) in high level languages this would be a variable
my_num: db 00000000b ; HEX: 0x00   DECIMAL: 0

; times 4 db 0 => 00000000b 00000000b 00000000b 00000000b





