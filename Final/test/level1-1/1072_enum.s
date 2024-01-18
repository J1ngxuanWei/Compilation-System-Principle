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
	sub sp, sp, #16
	lsr sp, sp, #3
	lsl sp, sp, #3
.L38:
	mov r0, #0
	str r0, [fp, #-16]
	mov r0, #0
	str r0, [fp, #-12]
	mov r0, #0
	str r0, [fp, #-8]
	ldr r0, [fp, #-16]
	cmp r0, #21
	movlt r0, #1
	movge r0, #0
	blt .L44
	b .L46
.L43:
	ldr r0, [fp, #-16]
	cmp r0, #21
	movlt r0, #1
	movge r0, #0
	blt .L44
	b .L55
.L44:
	ldr r2, [fp, #-12]
	ldr r1, [fp, #-16]
	mov r0, #101
	sub r0, r0, r1
	cmp r2, r0
	movlt r0, #1
	movge r0, #0
	blt .L48
	b .L50
.L45:
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L46:
	b .L45
.L47:
	ldr r2, [fp, #-12]
	ldr r1, [fp, #-16]
	mov r0, #101
	sub r0, r0, r1
	cmp r2, r0
	movlt r0, #1
	movge r0, #0
	blt .L48
	b .L54
.L48:
	ldr r1, [fp, #-16]
	mov r0, #100
	sub r1, r0, r1
	ldr r0, [fp, #-12]
	sub r0, r1, r0
	str r0, [fp, #-8]
	ldr r1, [fp, #-16]
	mov r0, #5
	mul r1, r1, r0
	ldr r0, [fp, #-12]
	mov r0, r0
	add r2, r1, r0
	ldr r1, [fp, #-8]
	ldr r0, =2
	sdiv r0, r1, r0
	add r0, r2, r0
	cmp r0, #100
	moveq r0, #1
	movne r0, #0
	beq .L51
	b .L53
.L49:
	ldr r0, [fp, #-16]
	add r0, r0, #1
	str r0, [fp, #-16]
	b .L43
.L50:
	b .L49
.L51:
	ldr r0, [fp, #-16]
	mov r0, r0
	bl putint
	ldr r0, [fp, #-12]
	mov r0, r0
	bl putint
	ldr r0, [fp, #-8]
	mov r0, r0
	bl putint
	mov r0, #10
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	mov r0, r0
	bl putch
	b .L52
.L52:
	ldr r0, [fp, #-12]
	add r0, r0, #1
	str r0, [fp, #-12]
	b .L47
.L53:
	b .L52
.L54:
	b .L49
.L55:
	b .L45

.LTORG
