	.cpu cortex-a72
	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
.data
.global a
.size a, 4
a:
	.word 0
.global b
.size b, 4
b:
	.word 0

	.text
	.global main
	.type main , %function
main:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #4
	lsr sp, sp, #3
	lsl sp, sp, #3
.L16:
	bl getint
	mov r1, r0
	ldr r0, addr_a_0
	str r1, [r0]
	bl getint
	mov r1, r0
	ldr r0, addr_b_0
	str r1, [r0]
	ldr r0, addr_a_0
	ldr r1, [r0]
	ldr r0, addr_b_0
	ldr r0, [r0]
	cmp r1, r0
	moveq r0, #1
	movne r0, #0
	beq .L21
	b .L22
.L18:
	mov r0, #1
	str r0, [fp, #-4]
	b .L20
.L19:
	mov r0, #0
	str r0, [fp, #-4]
	b .L20
.L20:
	ldr r0, [fp, #-4]
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L21:
	ldr r0, addr_a_0
	ldr r0, [r0]
	cmp r0, #3
	movne r0, #1
	moveq r0, #0
	bne .L18
	b .L23
.L22:
	b .L19
.L23:
	b .L19

.LTORG
addr_a_0:
	.word a
addr_b_0:
	.word b
