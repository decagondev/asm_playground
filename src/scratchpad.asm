; this is a comment

; you have several ways to interact with the computer in assembly
; you will see menomics such as: mov, cmp, jmp, jz, je, jne and much more as we progress over this project
; you will have a basic understanding of registers as they relate to building a simple operating system

; lets break down a few concepts

; Registers ax, bx, cx these are general purpose registers that we will come accross along with some others
; ax holds 2 bytes of data so it can hold from 0x00000000 to 0xffffffff
; you can reference the low and high portions of ax via the alias ah (high portion) and al (low portion)

; for instance lets move a letter in to al
; we will use the mov command to move the data
; in nasm we use intel syntax assembly so the syntax would be
; command destination, source
; in this case the command is mov
; the destination is al
; and the source is the character literal 'A'

