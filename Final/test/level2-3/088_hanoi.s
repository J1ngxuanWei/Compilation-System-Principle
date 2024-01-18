	.cpu cortex-a72
	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm

	.text
	.global move
	.type move , %function
move:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #8
	lsr sp, sp, #3
	lsl sp, sp, #3
.L38:
	str r0, [fp, #-8]
	str r1, [fp, #-4]
	ldr r0, [fp, #-8]
	mov r0, r0
	bl putint
	mov r0, #32
	bl putch
	ldr r0, [fp, #-4]
	mov r0, r0
	bl putint
	mov r0, #44
	bl putch
	mov r0, #32
	bl putch
	mov sp, fp
	pop {fp, lr}
	bx lr
	.global hanoi
	.type hanoi , %function
hanoi:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #16
	lsr sp, sp, #3
	lsl sp, sp, #3
.L41:
	str r0, [fp, #-16]
	str r1, [fp, #-12]
	str r2, [fp, #-8]
	str r3, [fp, #-4]
	ldr r0, [fp, #-16]
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	beq .L46
	b .L49
.L46:
	ldr r0, [fp, #-12]
	ldr r1, [fp, #-4]
	mov r0, r0
	mov r1, r1
	bl move
	b .L48
.L47:
	ldr r0, [fp, #-16]
	sub r0, r0, #1
	ldr r1, [fp, #-12]
	ldr r2, [fp, #-4]
	ldr r3, [fp, #-8]
	mov r0, r0
	mov r1, r1
	mov r2, r2
	mov r3, r3
	bl hanoi
	ldr r0, [fp, #-12]
	ldr r1, [fp, #-4]
	mov r0, r0
	mov r1, r1
	bl move
	ldr r0, [fp, #-16]
	sub r0, r0, #1
	ldr r1, [fp, #-8]
	ldr r2, [fp, #-12]
	ldr r3, [fp, #-4]
	mov r0, r0
	mov r1, r1
	mov r2, r2
	mov r3, r3
	bl hanoi
	b .L48
.L48:
	mov sp, fp
	pop {fp, lr}
	bx lr
.L49:
	b .L47
	.global main
	.type main , %function
main:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #4
	lsr sp, sp, #3
	lsl sp, sp, #3
.L50:
	bl getint
	mov r0, r0
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	cmp r0, #0
	movgt r0, #1
	movle r0, #0
	bgt .L53
	b .L55
.L52:
	ldr r0, [fp, #-4]
	cmp r0, #0
	movgt r0, #1
	movle r0, #0
	bgt .L53
	b .L56
.L53:
	bl getint
	mov r0, r0
	mov r0, r0
	mov r1, #1
	mov r2, #2
	mov r3, #3
	bl hanoi
	mov r0, #10
	bl putch
	ldr r0, [fp, #-4]
	sub r0, r0, #1
	str r0, [fp, #-4]
	b .L52
.L54:
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L55:
	b .L54
.L56:
	b .L54

.LTORG
