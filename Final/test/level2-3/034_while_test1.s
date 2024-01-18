	.cpu cortex-a72
	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm

	.text
	.global doubleWhile
	.type doubleWhile , %function
doubleWhile:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #8
	lsr sp, sp, #3
	lsl sp, sp, #3
.L19:
	mov r0, #5
	str r0, [fp, #-8]
	mov r0, #7
	str r0, [fp, #-4]
	ldr r0, [fp, #-8]
	cmp r0, #100
	movlt r0, #1
	movge r0, #0
	blt .L23
	b .L25
.L22:
	ldr r0, [fp, #-8]
	cmp r0, #100
	movlt r0, #1
	movge r0, #0
	blt .L23
	b .L31
.L23:
	ldr r0, [fp, #-8]
	add r0, r0, #30
	str r0, [fp, #-8]
	ldr r0, [fp, #-4]
	cmp r0, #100
	movlt r0, #1
	movge r0, #0
	blt .L27
	b .L29
.L24:
	ldr r0, [fp, #-4]
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L25:
	b .L24
.L26:
	ldr r0, [fp, #-4]
	cmp r0, #100
	movlt r0, #1
	movge r0, #0
	blt .L27
	b .L30
.L27:
	ldr r0, [fp, #-4]
	add r0, r0, #6
	str r0, [fp, #-4]
	b .L26
.L28:
	ldr r0, [fp, #-4]
	sub r0, r0, #100
	str r0, [fp, #-4]
	b .L22
.L29:
	b .L28
.L30:
	b .L28
.L31:
	b .L24
	.global main
	.type main , %function
main:
	push {fp, lr}
	mov fp, sp
	lsr sp, sp, #3
	lsl sp, sp, #3
.L32:
	bl doubleWhile
	mov r0, r0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr

.LTORG
