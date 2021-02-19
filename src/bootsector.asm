; sector 1
; descriptor 0xaa55
; 512 bytes (the size of a sector of a disk)
mov ah, 0x0e ; tty mode
mov al, 'A' ; put 'A' (65)
int 0x10 ; call the write interupt

; jmp $ ; infinite loop

; some area for data
msg: db "ABCDE", 0 ; the idea of an array in higher level languages
; msg: db 'A', 'B', 'C', 'D', 'E', 0

times 510 - ($-$$) db 0
dw 0xaa55 ; 512 byte mark (end of sector 1)

; sector 2
; after this point will not be loaded at boot times
mov ah, 0x0e ; tty mode
mov al, 'B' ; put 'B' (65)
int 0x10 ; call the write interupt