.cseg
.org 0
jmp start

.equ target_address = 0x02fd
.equ value_to_store = 1
.equ repeat_count = 33

.org 0x46
start:
    ldi xl, byte1(target_address)  
    ldi xh, byte2(target_address) 
    ldi r18, value_to_store        ; Load the value 1 into r18
    ldi r19, repeat_count          ; Load the repeat count into r19

; fill in the bytes by 1 


loop:
    st X+, r18                     ; Store the value 1 at the address in Z and post-increment Z
    dec r19                        ; Decrement the repeat counter
    brne loop                      ; If not zero, repeat
theend:
    jmp theend                     ; Infinite loop to end the program

