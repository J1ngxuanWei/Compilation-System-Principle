	.cpu cortex-a72
	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm

	.text
	.global enc
	.type enc , %function
enc:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #4
	lsr sp, sp, #3
	lsl sp, sp, #3
.L34:
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	cmp r0, #25
	movgt r0, #1
	movle r0, #0
	bgt .L36
	b .L39
.L36:
	ldr r0, [fp, #-4]
	add r0, r0, #60
	str r0, [fp, #-4]
	b .L38
.L37:
	ldr r0, [fp, #-4]
	sub r0, r0, #15
	str r0, [fp, #-4]
	b .L38
.L38:
	ldr r0, [fp, #-4]
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L39:
	b .L37
	.global dec
	.type dec , %function
dec:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #4
	lsr sp, sp, #3
	lsl sp, sp, #3
.L40:
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	cmp r0, #85
	movgt r0, #1
	movle r0, #0
	bgt .L42
	b .L45
.L42:
	ldr r0, [fp, #-4]
	sub r0, r0, #59
	str r0, [fp, #-4]
	b .L44
.L43:
	ldr r0, [fp, #-4]
	add r0, r0, #14
	str r0, [fp, #-4]
	b .L44
.L44:
	ldr r0, [fp, #-4]
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L45:
	b .L43
	.global main
	.type main , %function
main:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #8
	lsr sp, sp, #3
	lsl sp, sp, #3
.L46:
	mov r0, #400
	str r0, [fp, #-8]
	ldr r0, [fp, #-8]
	mov r0, r0
	bl enc
	mov r0, r0
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	mov r0, r0
	bl dec
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
