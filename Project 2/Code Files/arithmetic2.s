@ reigseter = val2 + 9 + val3 -val1

.section .data

val1: .word 6
val2: .word 11
val3: .word 16

a: .word 9

.section .text
.globl _start
_start:

ldr r1, = val2
ldr r1, [r1]

ldr r2,=a
ldr r2, [r2]

ldr r3, =val3
ldr r3, [r3]

ldr r4, =val1
ldr r4, [r4]

add r1, r1, r2
add r1, r1, r3
sub r1, r1, r4

mov r7, #1
svc #0
.end
