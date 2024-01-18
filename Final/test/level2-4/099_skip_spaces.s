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
	sub sp, sp, #408
	lsr sp, sp, #3
	lsl sp, sp, #3
.L23:
	mov r0, #0
	str r0, [fp, #-8]
	mov r0, #0
	str r0, [fp, #-4]
	bl getint
	mov r0, r0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L28
	b .L30
.L27:
	bl getint
	mov r0, r0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L28
	b .L32
.L28:
	bl getint
	mov r3, r0
	ldr r2, [fp, #-8]
	ldr r0, =-408
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	str r3, [r0]
	ldr r0, [fp, #-8]
	add r0, r0, #1
	str r0, [fp, #-8]
	b .L27
.L29:
	ldr r0, [fp, #-8]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L34
	b .L36
.L30:
	b .L29
.L32:
	b .L29
.L33:
	ldr r0, [fp, #-8]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L34
	b .L38
.L34:
	ldr r0, [fp, #-8]
	sub r0, r0, #1
	str r0, [fp, #-8]
	ldr r3, [fp, #-4]
	ldr r2, [fp, #-8]
	ldr r0, =-408
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	add r0, r3, r0
	str r0, [fp, #-4]
	b .L33
.L35:
	ldr r2, [fp, #-4]
	mov r1, #79
	sdiv r0, r2, r1
	mul r0, r0, r1
	sub r0, r2, r0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L36:
	b .L35
.L38:
	b .L35

.LTORG
