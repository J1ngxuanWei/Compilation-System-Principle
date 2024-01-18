	.cpu cortex-a72
	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm

	.text
	.global FourWhile
	.type FourWhile , %function
FourWhile:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #16
	lsr sp, sp, #3
	lsl sp, sp, #3
.L45:
	mov r0, #5
	str r0, [fp, #-16]
	mov r0, #6
	str r0, [fp, #-12]
	mov r0, #7
	str r0, [fp, #-8]
	mov r0, #10
	str r0, [fp, #-4]
	ldr r0, [fp, #-16]
	cmp r0, #20
	movlt r0, #1
	movge r0, #0
	blt .L51
	b .L53
.L50:
	ldr r0, [fp, #-16]
	cmp r0, #20
	movlt r0, #1
	movge r0, #0
	blt .L51
	b .L69
.L51:
	ldr r0, [fp, #-16]
	add r0, r0, #3
	str r0, [fp, #-16]
	ldr r0, [fp, #-12]
	cmp r0, #10
	movlt r0, #1
	movge r0, #0
	blt .L55
	b .L57
.L52:
	ldr r2, [fp, #-16]
	ldr r1, [fp, #-12]
	ldr r0, [fp, #-4]
	add r0, r1, r0
	add r1, r2, r0
	ldr r0, [fp, #-8]
	add r0, r1, r0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L53:
	b .L52
.L54:
	ldr r0, [fp, #-12]
	cmp r0, #10
	movlt r0, #1
	movge r0, #0
	blt .L55
	b .L68
.L55:
	ldr r0, [fp, #-12]
	add r0, r0, #1
	str r0, [fp, #-12]
	ldr r0, [fp, #-8]
	cmp r0, #7
	moveq r0, #1
	movne r0, #0
	beq .L59
	b .L61
.L56:
	ldr r0, [fp, #-12]
	sub r0, r0, #2
	str r0, [fp, #-12]
	b .L50
.L57:
	b .L56
.L58:
	ldr r0, [fp, #-8]
	cmp r0, #7
	moveq r0, #1
	movne r0, #0
	beq .L59
	b .L67
.L59:
	ldr r0, [fp, #-8]
	sub r0, r0, #1
	str r0, [fp, #-8]
	ldr r0, [fp, #-4]
	cmp r0, #20
	movlt r0, #1
	movge r0, #0
	blt .L63
	b .L65
.L60:
	ldr r0, [fp, #-8]
	add r0, r0, #1
	str r0, [fp, #-8]
	b .L54
.L61:
	b .L60
.L62:
	ldr r0, [fp, #-4]
	cmp r0, #20
	movlt r0, #1
	movge r0, #0
	blt .L63
	b .L66
.L63:
	ldr r0, [fp, #-4]
	add r0, r0, #3
	str r0, [fp, #-4]
	b .L62
.L64:
	ldr r0, [fp, #-4]
	sub r0, r0, #1
	str r0, [fp, #-4]
	b .L58
.L65:
	b .L64
.L66:
	b .L64
.L67:
	b .L60
.L68:
	b .L56
.L69:
	b .L52
	.global main
	.type main , %function
main:
	push {fp, lr}
	mov fp, sp
	lsr sp, sp, #3
	lsl sp, sp, #3
.L70:
	bl FourWhile
	mov r0, r0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr

.LTORG
