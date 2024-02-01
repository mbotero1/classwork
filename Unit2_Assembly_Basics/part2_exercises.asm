; Base Author: Megan Avery Spring 2024
; Exercise Author: [YOUR NAME HERE]
; 
; Purpose - to learn about the following:
;	-  directives (dx, resx, & times)
;	- printing ints and characters
;	- dumping memory
;	- printing strings
;	- reading chars and ints

%include "asm_io.inc"

age equ 30 ; symbol
%define fav_number 14 ; macro

; initialized data
segment .data
        fav_color            db "purple", 0 ; string
        least_fav_color      db "yellow", 0
        number               dd 116         ; integer
        letter               db "A"         ; character
        first_letter_of_name dd 77          ; character

        hello_world db "Hello World!", 0

        char_prompt db "Enter a character: ", 0
        int_prompt  db "Enter an integer: ", 0

        many_numbers times 15 dd 45
        many_letters times 5 db "Z"

; uninitialized data
segment .bss
        space_for_itn resd 1 ; space for 1 integer


segment .text
        global asm_main
asm_main:
        enter 0, 0 ; setup routine
        pusha


        ; mov eax,            [number] ; eax = 116
        ; mov dword [number], 32

        ; mov  eax, [number]
        ; call print_int
        ; call print_char

        ; mov  eax, [first_letter_of_name]
        ; call print_int
        ; call print_nl
        ; call print_char
        ; call print_nl

        ; dump_mem 1, fav_color, 0

        ; mov  eax, fav_color + 3
        ; call print_string

        ; mov  eax, hello_world
        ; call print_string
        ; call print_nl
        ; dump_mem 1, hello_world, 1
        ; call print_nl

        ; mov  eax, int_prompt
        ; call print_string
        ; call read_int

        ; mov  eax, char_prompt
        ; call print_string
        ; call read_char

        mov  eax, many_letters
        call print_string
        call print_nl
        dump_mem 1, many_letters, 1
        call print_nl

        popa
        mov eax, 0 ; return back to C
        leave                     
        ret


