	.cpu cortex-a72
	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
.data
.global n
.size n, 4
n:
	.word 0

	.text
	.global gcd
	.type gcd , %function
gcd:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #24
	lsr sp, sp, #3
	lsl sp, sp, #3
.L50:
	str r0, [fp, #-24]
	str r1, [fp, #-20]
	ldr r0, [fp, #-24]
	str r0, [fp, #-16]
	ldr r0, [fp, #-20]
	str r0, [fp, #-12]
	ldr r1, [fp, #-24]
	ldr r0, [fp, #-20]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L57
	b .L59
.L57:
	ldr r0, [fp, #-24]
	str r0, [fp, #-8]
	ldr r0, [fp, #-20]
	str r0, [fp, #-24]
	ldr r0, [fp, #-8]
	str r0, [fp, #-20]
	b .L58
.L58:
	ldr r2, [fp, #-24]
	ldr r1, [fp, #-20]
	sdiv r0, r2, r1
	mul r0, r0, r1
	sub r0, r2, r0
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L61
	b .L63
.L59:
	b .L58
.L60:
	ldr r0, [fp, #-4]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L61
	b .L64
.L61:
	ldr r0, [fp, #-20]
	str r0, [fp, #-24]
	ldr r0, [fp, #-4]
	str r0, [fp, #-20]
	ldr r2, [fp, #-24]
	ldr r1, [fp, #-20]
	sdiv r0, r2, r1
	mul r0, r0, r1
	sub r0, r2, r0
	str r0, [fp, #-4]
	b .L60
.L62:
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-12]
	mul r1, r1, r0
	ldr r0, [fp, #-20]
	sdiv r0, r1, r0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L63:
	b .L62
.L64:
	b .L62
	.global main
	.type main , %function
main:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #8
	lsr sp, sp, #3
	lsl sp, sp, #3
.L65:
	bl getint
	mov r0, r0
	str r0, [fp, #-8]
	bl getint
	mov r0, r0
	str r0, [fp, #-4]
	ldr r0, [fp, #-8]
	ldr r1, [fp, #-4]
	mov r0, r0
	mov r1, r1
	bl gcd
	mov r0, r0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr

.LTORG
addr_n_0:
	.word n
