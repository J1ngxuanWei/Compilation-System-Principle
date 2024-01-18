	.cpu cortex-a72
	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm

	.text
	.global ifElse
	.type ifElse , %function
ifElse:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #4
	lsr sp, sp, #3
	lsl sp, sp, #3
.L10:
	mov r0, #5
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	cmp r0, #5
	moveq r0, #1
	movne r0, #0
	beq .L12
	b .L15
.L12:
	mov r0, #25
	str r0, [fp, #-4]
	b .L14
.L13:
	ldr r0, [fp, #-4]
	lsl r0, r0, #1
	str r0, [fp, #-4]
	b .L14
.L14:
	ldr r0, [fp, #-4]
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L15:
	b .L13
	.global main
	.type main , %function
main:
	push {fp, lr}
	mov fp, sp
	lsr sp, sp, #3
	lsl sp, sp, #3
.L16:
	bl ifElse
	mov r0, r0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr

.LTORG
