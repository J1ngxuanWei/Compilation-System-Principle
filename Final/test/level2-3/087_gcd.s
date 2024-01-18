	.cpu cortex-a72
	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm

	.text
	.global gcd
	.type gcd , %function
gcd:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #8
	lsr sp, sp, #3
	lsl sp, sp, #3
.L26:
	str r0, [fp, #-8]
	str r1, [fp, #-4]
	ldr r0, [fp, #-4]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	beq .L29
	b .L31
.L29:
	ldr r0, [fp, #-8]
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
	b .L30
.L30:
	ldr r3, [fp, #-4]
	ldr r2, [fp, #-8]
	ldr r1, [fp, #-4]
	sdiv r0, r2, r1
	mul r0, r0, r1
	sub r1, r2, r0
	mov r0, r3
	mov r1, r1
	bl gcd
	mov r0, r0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L31:
	b .L30
	.global main
	.type main , %function
main:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #12
	lsr sp, sp, #3
	lsl sp, sp, #3
.L32:
	bl getint
	mov r0, r0
	str r0, [fp, #-12]
	ldr r0, [fp, #-12]
	cmp r0, #0
	movgt r0, #1
	movle r0, #0
	bgt .L35
	b .L37
.L34:
	ldr r0, [fp, #-12]
	cmp r0, #0
	movgt r0, #1
	movle r0, #0
	bgt .L35
	b .L40
.L35:
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
	bl putint
	mov r0, #10
	bl putch
	ldr r0, [fp, #-12]
	sub r0, r0, #1
	str r0, [fp, #-12]
	b .L34
.L36:
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L37:
	b .L36
.L40:
	b .L36

.LTORG
