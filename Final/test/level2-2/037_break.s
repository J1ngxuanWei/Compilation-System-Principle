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
.L16:
	mov r0, #0
	str r0, [fp, #-8]
	mov r0, #0
	str r0, [fp, #-4]
	ldr r0, [fp, #-8]
	cmp r0, #100
	movlt r0, #1
	movge r0, #0
	blt .L20
	b .L22
.L19:
	ldr r0, [fp, #-8]
	cmp r0, #100
	movlt r0, #1
	movge r0, #0
	blt .L20
	b .L27
.L20:
	ldr r0, [fp, #-8]
	cmp r0, #50
	moveq r0, #1
	movne r0, #0
	beq .L23
	b .L25
.L21:
	ldr r0, [fp, #-4]
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L22:
	b .L21
.L23:
	b .L21
.L24:
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-8]
	add r0, r1, r0
	str r0, [fp, #-4]
	ldr r0, [fp, #-8]
	add r0, r0, #1
	str r0, [fp, #-8]
	b .L19
.L25:
	b .L24
.L27:
	b .L21

.LTORG
