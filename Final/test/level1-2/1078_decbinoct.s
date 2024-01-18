	.cpu cortex-a72
	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm

	.text
	.global dec2bin
	.type dec2bin , %function
dec2bin:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #20
	lsr sp, sp, #3
	lsl sp, sp, #3
.L37:
	str r0, [fp, #-20]
	mov r0, #0
	str r0, [fp, #-16]
	mov r0, #1
	str r0, [fp, #-12]
	ldr r0, [fp, #-20]
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L44
	b .L46
.L43:
	ldr r0, [fp, #-4]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L44
	b .L47
.L44:
	ldr r0, [fp, #-4]
	and r0, r0, #1
	str r0, [fp, #-8]
	ldr r1, [fp, #-12]
	ldr r0, [fp, #-8]
	mul r1, r1, r0
	ldr r0, [fp, #-16]
	add r0, r1, r0
	str r0, [fp, #-16]
	ldr r1, [fp, #-12]
	mov r0, #10
	mul r0, r1, r0
	str r0, [fp, #-12]
	ldr r1, [fp, #-4]
	ldr r0, =2
	sdiv r0, r1, r0
	str r0, [fp, #-4]
	b .L43
.L45:
	ldr r0, [fp, #-16]
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L46:
	b .L45
.L47:
	b .L45
	.global main
	.type main , %function
main:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #8
	lsr sp, sp, #3
	lsl sp, sp, #3
.L48:
	mov r0, #400
	str r0, [fp, #-8]
	ldr r0, [fp, #-8]
	mov r0, r0
	bl dec2bin
	mov r0, r0
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	mov r0, r0
	bl putint
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

.LTORG
