; 
; Base Author:  Megan Avery Spring 2024
; Exercise Author: Matias Botero
; 
; Purpose - to learn about the following:
; 	- comments
;	- dumping registers
;	- printing empty lines
;	- instructions: mov, add, sub, inc/dec

%include "asm_io.inc"

; initialized data
segment .data

; uninitialized data
segment .bss


segment .text
        global  asm_main
asm_main:
        enter   0,0               ; setup routine
        pusha

	
        ; dump_regs 1
        ; call print_nl
        ; dump_regs 2

        ; mov eax, 0
        ; mov ah, 18
        ; mov al, 0BAH
        ; dump_regs 1
        ; call print_nl

        ; mov ax, 4
        ; dump_regs 2

        ; mov eax, 3
        ; mov ebx, 4
        ; add eax, ebx ; eax += ebx
        ; dump_regs 1

        ; ; eax = 40
        ; mov eax, 40
        ; dump_regs 1
        ; call print_nl

        ; ; ebx = 2
        ; mov ebx, 2
        ; dump_regs 2
        ; call print_nl
        
        ; ; eax += ebx (so eax is now 42)
        ; add eax, ebx
        ; dump_regs 3
        ; call print_nl

        ; mov eax, 34
        ; sub eax, 19
        ; dump_regs 1

        ; mov eax, -32
        ; dump_regs 2

        ; ; eax = 16
        ; mov eax, 16
        ; dump_regs 1
        ; call print_nl

        ; ; ebx = 4
        ; mov ebx, 4
        ; dump_regs 2
        ; call print_nl
        
        ; ; eax -= ebx (so eax is now 12)
        ; sub eax, ebx
        ; dump_regs 3
        ; call print_nl
        
        ; ; ebx = eax (so ebx is now 12)
        ; mov ebx, eax
        ; dump_regs 4
        ; call print_nl
        
        ; ; ebx ++
        ; inc ebx
        ; dump_regs 5
        ; call print_nl
        
        mov eax, 12
        add eax, eax
        add eax, eax
        dump_regs 1
        call print_nl



        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret


