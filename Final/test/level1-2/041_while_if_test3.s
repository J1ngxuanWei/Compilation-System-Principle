	.cpu cortex-a72
	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm

	.text
	.global deepWhileBr
	.type deepWhileBr , %function
deepWhileBr:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #20
	lsr sp, sp, #3
	lsl sp, sp, #3
.L35:
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
	blt .L40
	b .L42
.L39:
	ldr r0, [fp, #-12]
	cmp r0, #75
	movlt r0, #1
	movge r0, #0
	blt .L40
	b .L54
.L40:
	mov r0, #42
	str r0, [fp, #-8]
	ldr r0, [fp, #-12]
	cmp r0, #100
	movlt r0, #1
	movge r0, #0
	blt .L44
	b .L46
.L41:
	ldr r0, [fp, #-12]
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L42:
	b .L41
.L44:
	ldr r1, [fp, #-12]
	ldr r0, [fp, #-8]
	add r0, r1, r0
	str r0, [fp, #-12]
	ldr r0, [fp, #-12]
	cmp r0, #99
	movgt r0, #1
	movle r0, #0
	bgt .L47
	b .L49
.L45:
	b .L39
.L46:
	b .L45
.L47:
	ldr r0, [fp, #-8]
	lsl r0, r0, #1
	str r0, [fp, #-4]
	mov r0, #1
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	beq .L51
	b .L53
.L48:
	b .L45
.L49:
	b .L48
.L51:
	ldr r0, [fp, #-4]
	lsl r0, r0, #1
	str r0, [fp, #-12]
	b .L52
.L52:
	b .L48
.L53:
	b .L52
.L54:
	b .L41
	.global main
	.type main , %function
main:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #4
	lsr sp, sp, #3
	lsl sp, sp, #3
.L55:
	mov r0, #2
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	ldr r1, [fp, #-4]
	mov r0, r0
	mov r1, r1
	bl deepWhileBr
	mov r0, r0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr

.LTORG
