	.cpu cortex-a72
	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm

	.text
	.global main
	.type main , %function
main:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #8
	lsr sp, sp, #3
	lsl sp, sp, #3
.L23:
	mov r0, #56
	str r0, [fp, #-8]
	mov r0, #4
	str r0, [fp, #-4]
	ldr r1, [fp, #-8]
	mov r0, #0
	sub r0, r0, #4
	sub r1, r1, r0
	ldr r0, [fp, #-4]
	add r0, r1, r0
	str r0, [fp, #-8]
	ldr r0, [fp, #-8]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	moveq r1, #1
	movne r1, #0
	mov r1, r1
	mov r0, #0
	sub r0, r0, r1
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L26
	b .L29
.L26:
	mov r0, #0
	sub r0, r0, #1
	str r0, [fp, #-8]
	b .L28
.L27:
	ldr r0, [fp, #-4]
	mov r0, r0
	str r0, [fp, #-8]
	b .L28
.L28:
	ldr r0, [fp, #-8]
	mov r0, r0
	bl putint
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L29:
	b .L27

.LTORG
