	.cpu cortex-a72
	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm

	.text
	.global if_ifElse_
	.type if_ifElse_ , %function
if_ifElse_:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #8
	lsr sp, sp, #3
	lsl sp, sp, #3
.L14:
	mov r0, #5
	str r0, [fp, #-8]
	mov r0, #10
	str r0, [fp, #-4]
	ldr r0, [fp, #-8]
	cmp r0, #5
	moveq r0, #1
	movne r0, #0
	beq .L17
	b .L19
.L17:
	ldr r0, [fp, #-4]
	cmp r0, #10
	moveq r0, #1
	movne r0, #0
	beq .L20
	b .L23
.L18:
	ldr r0, [fp, #-8]
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L19:
	b .L18
.L20:
	mov r0, #25
	str r0, [fp, #-8]
	b .L22
.L21:
	ldr r0, [fp, #-8]
	add r0, r0, #15
	str r0, [fp, #-8]
	b .L22
.L22:
	b .L18
.L23:
	b .L21
	.global main
	.type main , %function
main:
	push {fp, lr}
	mov fp, sp
	lsr sp, sp, #3
	lsl sp, sp, #3
.L24:
	bl if_ifElse_
	mov r0, r0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr

.LTORG
