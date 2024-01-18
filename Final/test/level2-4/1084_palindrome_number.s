	.cpu cortex-a72
	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm

	.text
	.global palindrome
	.type palindrome , %function
palindrome:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #28
	lsr sp, sp, #3
	lsl sp, sp, #3
.L41:
	str r0, [fp, #-12]
	mov r0, #0
	str r0, [fp, #-8]
	ldr r0, [fp, #-8]
	cmp r0, #4
	movlt r0, #1
	movge r0, #0
	blt .L47
	b .L49
.L46:
	ldr r0, [fp, #-8]
	cmp r0, #4
	movlt r0, #1
	movge r0, #0
	blt .L47
	b .L51
.L47:
	ldr r2, [fp, #-12]
	mov r1, #10
	sdiv r0, r2, r1
	mul r0, r0, r1
	sub r3, r2, r0
	ldr r2, [fp, #-8]
	mvn r0, #27
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	str r3, [r0]
	ldr r1, [fp, #-12]
	mov r0, #10
	sdiv r0, r1, r0
	str r0, [fp, #-12]
	ldr r0, [fp, #-8]
	add r0, r0, #1
	str r0, [fp, #-8]
	b .L46
.L48:
	mvn r0, #27
	add r0, fp, r0
	mov r0, r0
	ldr r1, [r0]
	mvn r0, #27
	add r0, fp, r0
	add r0, r0, #12
	mov r0, r0
	ldr r0, [r0]
	cmp r1, r0
	moveq r0, #1
	movne r0, #0
	beq .L55
	b .L58
.L49:
	b .L48
.L51:
	b .L48
.L52:
	mov r0, #1
	str r0, [fp, #-4]
	b .L54
.L53:
	mov r0, #0
	str r0, [fp, #-4]
	b .L54
.L54:
	ldr r0, [fp, #-4]
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L55:
	mvn r0, #27
	add r0, fp, r0
	add r0, r0, #4
	mov r0, r0
	ldr r1, [r0]
	mvn r0, #27
	add r0, fp, r0
	add r0, r0, #8
	mov r0, r0
	ldr r0, [r0]
	cmp r1, r0
	moveq r0, #1
	movne r0, #0
	beq .L52
	b .L61
.L58:
	b .L53
.L61:
	b .L53
	.global main
	.type main , %function
main:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #8
	lsr sp, sp, #3
	lsl sp, sp, #3
.L62:
	ldr r0, =1221
	str r0, [fp, #-8]
	ldr r0, [fp, #-8]
	mov r0, r0
	bl palindrome
	mov r0, r0
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	beq .L65
	b .L68
.L65:
	ldr r0, [fp, #-8]
	mov r0, r0
	bl putint
	b .L67
.L66:
	mov r0, #0
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	mov r0, r0
	bl putint
	b .L67
.L67:
	mov r0, #10
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	mov r0, r0
	bl putch
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L68:
	b .L66

.LTORG
