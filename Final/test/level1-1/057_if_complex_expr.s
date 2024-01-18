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
	sub sp, sp, #20
	lsr sp, sp, #3
	lsl sp, sp, #3
.L42:
	mov r0, #5
	str r0, [fp, #-20]
	mov r0, #5
	str r0, [fp, #-16]
	mov r0, #1
	str r0, [fp, #-12]
	mov r0, #0
	sub r0, r0, #2
	str r0, [fp, #-8]
	mov r0, #2
	str r0, [fp, #-4]
	ldr r1, [fp, #-8]
	mov r1, r1
	ldr r0, =2
	sdiv r0, r1, r0
	cmp r0, #0
	movlt r0, #1
	movge r0, #0
	blt .L48
	b .L51
.L48:
	ldr r0, [fp, #-4]
	mov r0, r0
	bl putint
	b .L49
.L49:
	ldr r0, [fp, #-8]
	and r0, r0, #1
	add r0, r0, #67
	cmp r0, #0
	movlt r0, #1
	movge r0, #0
	blt .L55
	b .L58
.L50:
	ldr r1, [fp, #-20]
	ldr r0, [fp, #-16]
	sub r0, r1, r0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L52
	b .L53
.L51:
	b .L50
.L52:
	ldr r0, [fp, #-12]
	add r0, r0, #3
	and r0, r0, #1
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L48
	b .L54
.L53:
	b .L49
.L54:
	b .L49
.L55:
	mov r0, #4
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	mov r0, r0
	bl putint
	b .L56
.L56:
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L57:
	ldr r1, [fp, #-20]
	ldr r0, [fp, #-16]
	sub r0, r1, r0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L59
	b .L60
.L58:
	b .L57
.L59:
	ldr r0, [fp, #-12]
	add r0, r0, #2
	and r0, r0, #1
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L55
	b .L61
.L60:
	b .L56
.L61:
	b .L56

.LTORG
