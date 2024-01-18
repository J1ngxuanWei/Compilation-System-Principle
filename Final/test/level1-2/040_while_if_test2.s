	.cpu cortex-a72
	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm

	.text
	.global ifWhile
	.type ifWhile , %function
ifWhile:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #8
	lsr sp, sp, #3
	lsl sp, sp, #3
.L24:
	mov r0, #0
	str r0, [fp, #-8]
	mov r0, #3
	str r0, [fp, #-4]
	ldr r0, [fp, #-8]
	cmp r0, #5
	moveq r0, #1
	movne r0, #0
	beq .L27
	b .L30
.L27:
	ldr r0, [fp, #-4]
	cmp r0, #2
	moveq r0, #1
	movne r0, #0
	beq .L32
	b .L34
.L28:
	ldr r0, [fp, #-8]
	cmp r0, #5
	movlt r0, #1
	movge r0, #0
	blt .L37
	b .L39
.L29:
	ldr r0, [fp, #-4]
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L30:
	b .L28
.L31:
	ldr r0, [fp, #-4]
	cmp r0, #2
	moveq r0, #1
	movne r0, #0
	beq .L32
	b .L35
.L32:
	ldr r0, [fp, #-4]
	add r0, r0, #2
	str r0, [fp, #-4]
	b .L31
.L33:
	ldr r0, [fp, #-4]
	add r0, r0, #25
	str r0, [fp, #-4]
	b .L29
.L34:
	b .L33
.L35:
	b .L33
.L36:
	ldr r0, [fp, #-8]
	cmp r0, #5
	movlt r0, #1
	movge r0, #0
	blt .L37
	b .L40
.L37:
	ldr r0, [fp, #-4]
	lsl r0, r0, #1
	str r0, [fp, #-4]
	ldr r0, [fp, #-8]
	add r0, r0, #1
	str r0, [fp, #-8]
	b .L36
.L38:
	b .L29
.L39:
	b .L38
.L40:
	b .L38
	.global main
	.type main , %function
main:
	push {fp, lr}
	mov fp, sp
	lsr sp, sp, #3
	lsl sp, sp, #3
.L41:
	bl ifWhile
	mov r0, r0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr

.LTORG
