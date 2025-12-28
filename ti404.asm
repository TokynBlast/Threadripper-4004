; ti404, runs on i4004 and a thread ripper :D


db 0xEB, 0xEB ; NOP on i4004 and jmp on threadripper.


; somehow, this needs to be forced 235 bytes away from db
threadripper_start:
mov rsi, h ; pointer to h
mov al, [rsi] ; h first byte in asl
; repeat
mov rsi, e
mov al, [rsi]
mov rsi, l
mov al, [rsi]
mov rsi, o
mov al, [rsi]
mov rsi, w
mov al, [rsi]
mov rsi, r
mov al, [rsi]
mov rsi, d
mov al, [rsi]

section .data
h:
db 0b10001, 0b10001, 0b10001, 0b11111, 0b10001, 0b10001, 0b10001

e:
db 0b11111, 0b10000, 0b10000, 0b11111, 0b10000, 0b10000, 0b11111

font:
; 01223 43526


.byte 0b1000000000, 0b1000000000, 0b1000000000, 0b1000000000, 0b1000000000, 0b1000000000, 0b1111100000 ; L2
.byte 0b1111100000, 0b1000100000, 0b1000100000, 0b1000100000, 0b1000100000, 0b1000100000, 0b1111100000 ; O3
.byte 0b0000000000, 0b0000000000, 0b0000000000, 0b0000000000, 0b1010100000, 0b1010100000, 0b1111100000 ; W4
.byte 0b1111100000, 0b1000100000, 0b1111100000, 0b1100000000, 0b1010000000, 0b1001000000, 0b1000100000 ; R5
.byte 0b1111000000, 0b1000100000, 0b1000100000, 0b1000100000, 0b1000100000, 0b1000100000, 0b1111000000 ; D6