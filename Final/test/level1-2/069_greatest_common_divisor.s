	.cpu cortex-a72
	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm

	.text
	.global fun
	.type fun , %function
fun:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #12
	lsr sp, sp, #3
	lsl sp, sp, #3
.L28:
	str r0, [fp, #-12]
	str r1, [fp, #-8]
	ldr r0, [fp, #-8]
	cmp r0, #0
	movgt r0, #1
	movle r0, #0
	bgt .L33
	b .L35
.L32:
	ldr r0, [fp, #-8]
	cmp r0, #0
	movgt r0, #1
	movle r0, #0
	bgt .L33
	b .L36
.L33:
	ldr r2, [fp, #-12]
	ldr r1, [fp, #-8]
	sdiv r0, r2, r1
	mul r0, r0, r1
	sub r0, r2, r0
	str r0, [fp, #-4]
	ldr r0, [fp, #-8]
	str r0, [fp, #-12]
	ldr r0, [fp, #-4]
	str r0, [fp, #-8]
	b .L32
.L34:
	ldr r0, [fp, #-12]
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L35:
	b .L34
.L36:
	b .L34
	.global main
	.type main , %function
main:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #12
	lsr sp, sp, #3
	lsl sp, sp, #3
.L37:
	bl getint
	mov r0, r0
	str r0, [fp, #-8]
	bl getint
	mov r0, r0
	str r0, [fp, #-12]
	ldr r0, [fp, #-8]
	ldr r1, [fp, #-12]
	mov r0, r0
	mov r1, r1
	bl fun
	mov r0, r0
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	mov r0, r0
	bl putint
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr

.LTORG
