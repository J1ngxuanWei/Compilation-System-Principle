	.cpu cortex-a72
	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
.data
.global a
.size a, 4
a:
	.word -1
.global b
.size b, 4
b:
	.word 1

	.text
	.global inc_a
	.type inc_a , %function
inc_a:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #4
	lsr sp, sp, #3
	lsl sp, sp, #3
.L46:
	ldr r0, addr_a_0
	ldr r0, [r0]
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	add r0, r0, #1
	str r0, [fp, #-4]
	ldr r1, [fp, #-4]
	ldr r0, addr_a_0
	str r1, [r0]
	ldr r0, addr_a_0
	ldr r0, [r0]
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
	.global main
	.type main , %function
main:
	push {r4, fp, lr}
	mov fp, sp
	sub sp, sp, #4
	lsr sp, sp, #3
	lsl sp, sp, #3
.L48:
	mov r0, #5
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	cmp r0, #0
	movge r0, #1
	movlt r0, #0
	bge .L51
	b .L53
.L50:
	ldr r0, [fp, #-4]
	cmp r0, #0
	movge r0, #1
	movlt r0, #0
	bge .L51
	b .L69
.L51:
	bl inc_a
	mov r0, r0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L57
	b .L58
.L52:
	ldr r0, addr_a_0
	ldr r0, [r0]
	mov r0, r0
	bl putint
	mov r0, #32
	bl putch
	ldr r0, addr_b_0
	ldr r0, [r0]
	mov r0, r0
	bl putint
	mov r0, #10
	bl putch
	ldr r0, addr_a_0
	ldr r0, [r0]
	mov r0, r0
	mov sp, fp
	pop {r4, fp, lr}
	bx lr
.L53:
	b .L52
.L54:
	ldr r0, addr_a_0
	ldr r0, [r0]
	mov r0, r0
	bl putint
	mov r0, #32
	bl putch
	ldr r0, addr_b_0
	ldr r0, [r0]
	mov r0, r0
	bl putint
	mov r0, #10
	bl putch
	b .L55
.L55:
	bl inc_a
	mov r0, r0
	cmp r0, #14
	movlt r0, #1
	movge r0, #0
	blt .L61
	b .L65
.L56:
	bl inc_a
	mov r0, r0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L54
	b .L60
.L57:
	bl inc_a
	mov r0, r0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L56
	b .L59
.L58:
	b .L55
.L59:
	b .L55
.L60:
	b .L55
.L61:
	ldr r0, addr_a_0
	ldr r0, [r0]
	mov r0, r0
	bl putint
	mov r0, #10
	bl putch
	ldr r0, addr_b_0
	ldr r0, [r0]
	lsl r1, r0, #1
	ldr r0, addr_b_0
	str r1, [r0]
	b .L63
.L62:
	bl inc_a
	mov r0, r0
	b .L63
.L63:
	ldr r0, [fp, #-4]
	sub r0, r0, #1
	str r0, [fp, #-4]
	b .L50
.L64:
	bl inc_a
	mov r0, r0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L66
	b .L67
.L65:
	b .L64
.L66:
	bl inc_a
	mov r4, r0
	bl inc_a
	mov r0, r0
	sub r0, r4, r0
	add r0, r0, #1
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L61
	b .L68
.L67:
	b .L62
.L68:
	b .L62
.L69:
	b .L52

.LTORG
addr_a_0:
	.word a
addr_b_0:
	.word b
