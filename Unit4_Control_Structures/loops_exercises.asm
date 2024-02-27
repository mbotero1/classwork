; Base Author: Megan Avery Spring 2024
; Exercise Author: [YOUR NAME HERE]
;
; Purpose - to learn about loops in NASM

%include "asm_io.inc"
segment .data ; initialized data
        rocket db "🚀!", 0
        limit  dd 5

        perfect_prompt         db "Enter a power of 2: ", 0
        perfect                db "PERFECT", 0
        another_perfect_prompt db "Again!", 0

        fear_the_goat   db "Fear the 🐐!", 0
        response_prompt db "Response? ", 0


segment .bss  ; uninitialized data

segment .text ; code
        global asm_main
asm_main:
        enter 0, 0 ; setup routine
        pusha


		; TODO: FOR EXERCISE

        ; mov ecx, [limit]

        ; for:
        ;         mov  eax, ecx
        ;         call print_int
        ;         call print_nl
        ;         loop for
        
        ; mov  eax, rocket
        ; call print_string
        ; call print_nl


		; TODO: WHILE EXERCISE

        ; mov  eax, perfect_prompt
        ; call print_string
        ; while:
        ;         call read_int
                
        ;         mov ebx, eax
        ;         sub ebx, 1
        ;         and ebx, eax
        ;         cmp ebx, 0
        ;         jne end_while
                
        ;         mov  eax, perfect
        ;         call print_string
        ;         call print_nl

        ;         mov  eax, another_perfect_prompt
        ;         call print_string
        ;         call print_nl

        ;         jmp while

        ; end_while:

		; TODO: DO WHILE EXERCISE
        do:
                call read_char
                mov  eax, fear_the_goat
                call print_string
                call print_nl

                mov  eax, response_prompt
                call print_string
                call read_char

                cmp eax, "!"
                jne do
        


        popa
        mov eax, 0 ; return back to C
        leave                     
        ret
