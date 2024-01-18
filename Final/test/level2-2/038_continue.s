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
.L19:
	mov r0, #0
	str r0, [fp, #-8]
	mov r0, #0
	str r0, [fp, #-4]
	ldr r0, [fp, #-8]
	cmp r0, #100
	movlt r0, #1
	movge r0, #0
	blt .L23
	b .L25
.L22:
	ldr r0, [fp, #-8]
	cmp r0, #100
	movlt r0, #1
	movge r0, #0
	blt .L23
	b .L30
.L23:
	ldr r0, [fp, #-8]
	cmp r0, #50
	moveq r0, #1
	movne r0, #0
	beq .L26
	b .L28
.L24:
	ldr r0, [fp, #-4]
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L25:
	b .L24
.L26:
	ldr r0, [fp, #-8]
	add r0, r0, #1
	str r0, [fp, #-8]
	b .L22
.L27:
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-8]
	add r0, r1, r0
	str r0, [fp, #-4]
	ldr r0, [fp, #-8]
	add r0, r0, #1
	str r0, [fp, #-8]
	b .L22
.L28:
	b .L27
.L30:
	b .L24

.LTORG
