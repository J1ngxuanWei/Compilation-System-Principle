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
.L14:
	mov r0, #0
	str r0, [fp, #-4]
	mov r0, #0
	str r0, [fp, #-8]
	ldr r0, [fp, #-8]
	cmp r0, #21
	movlt r0, #1
	movge r0, #0
	blt .L18
	b .L20
.L17:
	ldr r0, [fp, #-8]
	cmp r0, #21
	movlt r0, #1
	movge r0, #0
	blt .L18
	b .L21
.L18:
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-8]
	mul r0, r1, r0
	str r0, [fp, #-4]
	ldr r0, [fp, #-8]
	add r0, r0, #1
	str r0, [fp, #-8]
	b .L17
.L19:
	ldr r0, [fp, #-4]
	mov r0, r0
	bl putint
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L20:
	b .L19
.L21:
	b .L19

.LTORG
