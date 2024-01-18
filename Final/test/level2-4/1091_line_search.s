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
	sub sp, sp, #76
	lsr sp, sp, #3
	lsl sp, sp, #3
.L58:
	mov r0, #0
	str r0, [fp, #-32]
	mov r0, #0
	str r0, [fp, #-36]
	ldr r0, [fp, #-36]
	cmp r0, #10
	movlt r0, #1
	movge r0, #0
	blt .L63
	b .L65
.L62:
	ldr r0, [fp, #-36]
	cmp r0, #10
	movlt r0, #1
	movge r0, #0
	blt .L63
	b .L67
.L63:
	ldr r0, [fp, #-36]
	add r3, r0, #1
	ldr r2, [fp, #-36]
	mvn r0, #75
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	str r3, [r0]
	ldr r0, [fp, #-36]
	add r0, r0, #1
	str r0, [fp, #-36]
	b .L62
.L64:
	mov r0, #10
	str r0, [fp, #-12]
	bl getint
	mov r0, r0
	str r0, [fp, #-28]
	ldr r0, [fp, #-12]
	sub r0, r0, #1
	str r0, [fp, #-24]
	mov r0, #0
	str r0, [fp, #-20]
	ldr r1, [fp, #-24]
	ldr r0, [fp, #-20]
	add r1, r1, r0
	ldr r0, =2
	sdiv r0, r1, r0
	str r0, [fp, #-16]
	mov r0, #0
	str r0, [fp, #-8]
	mov r0, #0
	str r0, [fp, #-36]
	mov r0, #0
	str r0, [fp, #-4]
	ldr r0, [fp, #-36]
	cmp r0, #10
	movlt r0, #1
	movge r0, #0
	blt .L85
	b .L79
.L65:
	b .L64
.L67:
	b .L64
.L75:
	ldr r0, [fp, #-36]
	cmp r0, #10
	movlt r0, #1
	movge r0, #0
	blt .L85
	b .L86
.L76:
	ldr r2, [fp, #-36]
	mvn r0, #75
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r1, [r0]
	ldr r0, [fp, #-28]
	cmp r1, r0
	moveq r0, #1
	movne r0, #0
	beq .L81
	b .L84
.L77:
	ldr r0, [fp, #-8]
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	beq .L88
	b .L91
.L79:
	b .L77
.L81:
	mov r0, #1
	str r0, [fp, #-8]
	ldr r0, [fp, #-36]
	str r0, [fp, #-4]
	b .L82
.L82:
	ldr r0, [fp, #-36]
	add r0, r0, #1
	str r0, [fp, #-36]
	b .L75
.L84:
	b .L82
.L85:
	ldr r0, [fp, #-8]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	beq .L76
	b .L87
.L86:
	b .L77
.L87:
	b .L77
.L88:
	ldr r0, [fp, #-4]
	mov r0, r0
	bl putint
	b .L90
.L89:
	mov r0, #0
	str r0, [fp, #-28]
	ldr r0, [fp, #-28]
	mov r0, r0
	bl putint
	b .L90
.L90:
	mov r0, #10
	str r0, [fp, #-28]
	ldr r0, [fp, #-28]
	mov r0, r0
	bl putch
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L91:
	b .L89

.LTORG
