	.cpu cortex-a72
	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm

	.text
	.global get_one
	.type get_one , %function
get_one:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #4
	lsr sp, sp, #3
	lsl sp, sp, #3
.L40:
	str r0, [fp, #-4]
	mov r0, #1
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
	.global deepWhileBr
	.type deepWhileBr , %function
deepWhileBr:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #20
	lsr sp, sp, #3
	lsl sp, sp, #3
.L42:
	str r0, [fp, #-20]
	str r1, [fp, #-16]
	ldr r1, [fp, #-20]
	ldr r0, [fp, #-16]
	add r0, r1, r0
	str r0, [fp, #-12]
	ldr r0, [fp, #-12]
	cmp r0, #75
	movlt r0, #1
	movge r0, #0
	blt .L47
	b .L49
.L46:
	ldr r0, [fp, #-12]
	cmp r0, #75
	movlt r0, #1
	movge r0, #0
	blt .L47
	b .L61
.L47:
	mov r0, #42
	str r0, [fp, #-8]
	ldr r0, [fp, #-12]
	cmp r0, #100
	movlt r0, #1
	movge r0, #0
	blt .L51
	b .L53
.L48:
	ldr r0, [fp, #-12]
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L49:
	b .L48
.L51:
	ldr r1, [fp, #-12]
	ldr r0, [fp, #-8]
	add r0, r1, r0
	str r0, [fp, #-12]
	ldr r0, [fp, #-12]
	cmp r0, #99
	movgt r0, #1
	movle r0, #0
	bgt .L54
	b .L56
.L52:
	b .L46
.L53:
	b .L52
.L54:
	ldr r0, [fp, #-8]
	lsl r0, r0, #1
	str r0, [fp, #-4]
	mov r0, #0
	bl get_one
	mov r0, r0
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	beq .L58
	b .L60
.L55:
	b .L52
.L56:
	b .L55
.L58:
	ldr r0, [fp, #-4]
	lsl r0, r0, #1
	str r0, [fp, #-12]
	b .L59
.L59:
	b .L55
.L60:
	b .L59
.L61:
	b .L48
	.global main
	.type main , %function
main:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #4
	lsr sp, sp, #3
	lsl sp, sp, #3
.L62:
	mov r0, #2
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	ldr r1, [fp, #-4]
	mov r0, r0
	mov r1, r1
	bl deepWhileBr
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
