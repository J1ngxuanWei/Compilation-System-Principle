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
	sub sp, sp, #4
	lsr sp, sp, #3
	lsl sp, sp, #3
.L13:
	mov r0, #10
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
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
	bne .L15
	b .L18
.L15:
	mov r0, #0
	sub r0, r0, #1
	str r0, [fp, #-4]
	b .L17
.L16:
	mov r0, #0
	str r0, [fp, #-4]
	b .L17
.L17:
	ldr r0, [fp, #-4]
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L18:
	b .L16

.LTORG
