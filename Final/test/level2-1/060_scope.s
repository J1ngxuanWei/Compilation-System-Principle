	.cpu cortex-a72
	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
.data
.global a
.size a, 4
a:
	.word 7

	.text
	.global func
	.type func , %function
func:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #8
	lsr sp, sp, #3
	lsl sp, sp, #3
.L24:
	ldr r0, addr_a_0
	ldr r0, [r0]
	str r0, [fp, #-8]
	mov r0, #1
	str r0, [fp, #-4]
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-8]
	cmp r1, r0
	moveq r0, #1
	movne r0, #0
	beq .L27
	b .L30
.L27:
	ldr r0, [fp, #-4]
	add r0, r0, #1
	str r0, [fp, #-4]
	mov r0, #1
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
	b .L29
.L28:
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
	b .L29
.L29:
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L30:
	b .L28
	.global main
	.type main , %function
main:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #8
	lsr sp, sp, #3
	lsl sp, sp, #3
.L31:
	mov r0, #0
	str r0, [fp, #-8]
	mov r0, #0
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	cmp r0, #100
	movlt r0, #1
	movge r0, #0
	blt .L35
	b .L37
.L34:
	ldr r0, [fp, #-4]
	cmp r0, #100
	movlt r0, #1
	movge r0, #0
	blt .L35
	b .L41
.L35:
	bl func
	mov r0, r0
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	beq .L38
	b .L40
.L36:
	ldr r0, [fp, #-8]
	cmp r0, #100
	movlt r0, #1
	movge r0, #0
	blt .L42
	b .L45
.L37:
	b .L36
.L38:
	ldr r0, [fp, #-8]
	add r0, r0, #1
	str r0, [fp, #-8]
	b .L39
.L39:
	ldr r0, [fp, #-4]
	add r0, r0, #1
	str r0, [fp, #-4]
	b .L34
.L40:
	b .L39
.L41:
	b .L36
.L42:
	mov r0, #1
	bl putint
	b .L44
.L43:
	mov r0, #0
	bl putint
	b .L44
.L44:
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L45:
	b .L43

.LTORG
addr_a_0:
	.word a
