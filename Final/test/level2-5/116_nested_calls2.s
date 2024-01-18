	.cpu cortex-a72
	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm

	.text
	.global f
	.type f , %function
f:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #8
	lsr sp, sp, #3
	lsl sp, sp, #3
.L28:
	str r0, [fp, #-8]
	str r1, [fp, #-4]
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-4]
	mul r0, r1, r0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
	.global g
	.type g , %function
g:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #8
	lsr sp, sp, #3
	lsl sp, sp, #3
.L31:
	str r0, [fp, #-8]
	str r1, [fp, #-4]
	ldr r2, [fp, #-8]
	ldr r1, [fp, #-4]
	sdiv r0, r2, r1
	mul r0, r0, r1
	sub r0, r2, r0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
	.global h
	.type h , %function
h:
	push {r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
	lsr sp, sp, #3
	lsl sp, sp, #3
.L34:
	str r0, [fp, #-8]
	str r1, [fp, #-4]
	ldr r0, [fp, #-8]
	ldr r1, [fp, #-4]
	mov r0, r0
	mov r1, r1
	bl g
	mov r1, r0
	mov r0, #2
	mov r1, r1
	bl f
	mov r4, r0
	ldr r0, [fp, #-8]
	ldr r1, [fp, #-4]
	mov r0, r0
	mov r1, r1
	bl f
	mov r0, r0
	mov r0, r0
	mov r1, #4
	bl g
	mov r1, r0
	mov r0, r4
	mov r1, r1
	bl f
	mov r0, r0
	mov r0, r0
	mov sp, fp
	pop {r4, fp, lr}
	bx lr
	.global main
	.type main , %function
main:
	push {fp, lr}
	mov fp, sp
	lsr sp, sp, #3
	lsl sp, sp, #3
.L37:
	mov r0, #11
	mov r1, #3
	bl h
	mov r0, r0
	mov r0, r0
	bl putint
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr

.LTORG
