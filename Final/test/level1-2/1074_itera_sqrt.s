	.cpu cortex-a72
	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm

	.text
	.global fsqrt
	.type fsqrt , %function
fsqrt:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #12
	lsr sp, sp, #3
	lsl sp, sp, #3
.L32:
	str r0, [fp, #-12]
	mov r0, #0
	str r0, [fp, #-8]
	ldr r1, [fp, #-12]
	ldr r0, =2
	sdiv r0, r1, r0
	str r0, [fp, #-4]
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-4]
	sub r0, r1, r0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L37
	b .L39
.L36:
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-4]
	sub r0, r1, r0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L37
	b .L40
.L37:
	ldr r0, [fp, #-4]
	str r0, [fp, #-8]
	ldr r2, [fp, #-8]
	ldr r1, [fp, #-12]
	ldr r0, [fp, #-8]
	sdiv r0, r1, r0
	add r0, r2, r0
	str r0, [fp, #-4]
	ldr r1, [fp, #-4]
	ldr r0, =2
	sdiv r0, r1, r0
	str r0, [fp, #-4]
	b .L36
.L38:
	ldr r0, [fp, #-4]
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L39:
	b .L38
.L40:
	b .L38
	.global main
	.type main , %function
main:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #8
	lsr sp, sp, #3
	lsl sp, sp, #3
.L41:
	mov r0, #400
	str r0, [fp, #-8]
	ldr r0, [fp, #-8]
	mov r0, r0
	bl fsqrt
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
