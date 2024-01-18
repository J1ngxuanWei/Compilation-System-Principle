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
	sub sp, sp, #68
	lsr sp, sp, #3
	lsl sp, sp, #3
.L63:
	mov r0, #0
	str r0, [fp, #-24]
	mov r0, #0
	str r0, [fp, #-28]
	ldr r0, [fp, #-28]
	cmp r0, #10
	movlt r0, #1
	movge r0, #0
	blt .L68
	b .L70
.L67:
	ldr r0, [fp, #-28]
	cmp r0, #10
	movlt r0, #1
	movge r0, #0
	blt .L68
	b .L72
.L68:
	ldr r0, [fp, #-28]
	add r3, r0, #1
	ldr r2, [fp, #-28]
	mvn r0, #67
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	str r3, [r0]
	ldr r0, [fp, #-28]
	add r0, r0, #1
	str r0, [fp, #-28]
	b .L67
.L69:
	mov r0, #10
	str r0, [fp, #-4]
	bl getint
	mov r0, r0
	str r0, [fp, #-20]
	ldr r0, [fp, #-4]
	sub r0, r0, #1
	str r0, [fp, #-16]
	mov r0, #0
	str r0, [fp, #-12]
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-12]
	add r1, r1, r0
	ldr r0, =2
	sdiv r0, r1, r0
	str r0, [fp, #-8]
	ldr r2, [fp, #-8]
	mvn r0, #67
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r1, [r0]
	ldr r0, [fp, #-20]
	cmp r1, r0
	movne r0, #1
	moveq r0, #0
	bne .L90
	b .L83
.L70:
	b .L69
.L72:
	b .L69
.L78:
	ldr r2, [fp, #-8]
	mvn r0, #67
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r1, [r0]
	ldr r0, [fp, #-20]
	cmp r1, r0
	movne r0, #1
	moveq r0, #0
	bne .L90
	b .L92
.L79:
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-12]
	add r1, r1, r0
	ldr r0, =2
	sdiv r0, r1, r0
	str r0, [fp, #-8]
	ldr r3, [fp, #-20]
	ldr r2, [fp, #-8]
	mvn r0, #67
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r3, r0
	movlt r0, #1
	movge r0, #0
	blt .L85
	b .L89
.L80:
	ldr r3, [fp, #-20]
	ldr r2, [fp, #-8]
	mvn r0, #67
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r3, r0
	moveq r0, #1
	movne r0, #0
	beq .L94
	b .L98
.L83:
	b .L80
.L85:
	ldr r0, [fp, #-8]
	sub r0, r0, #1
	str r0, [fp, #-16]
	b .L87
.L86:
	ldr r0, [fp, #-8]
	add r0, r0, #1
	str r0, [fp, #-12]
	b .L87
.L87:
	b .L78
.L89:
	b .L86
.L90:
	ldr r1, [fp, #-12]
	ldr r0, [fp, #-16]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L79
	b .L93
.L92:
	b .L80
.L93:
	b .L80
.L94:
	ldr r0, [fp, #-20]
	mov r0, r0
	bl putint
	b .L96
.L95:
	mov r0, #0
	str r0, [fp, #-20]
	ldr r0, [fp, #-20]
	mov r0, r0
	bl putint
	b .L96
.L96:
	mov r0, #10
	str r0, [fp, #-20]
	ldr r0, [fp, #-20]
	mov r0, r0
	bl putch
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L98:
	b .L95

.LTORG
