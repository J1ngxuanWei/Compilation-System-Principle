	.cpu cortex-a72
	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm

	.text
	.global ifElseIf
	.type ifElseIf , %function
ifElseIf:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #8
	lsr sp, sp, #3
	lsl sp, sp, #3
.L30:
	mov r0, #5
	str r0, [fp, #-8]
	mov r0, #10
	str r0, [fp, #-4]
	ldr r0, [fp, #-8]
	cmp r0, #6
	moveq r0, #1
	movne r0, #0
	beq .L33
	b .L37
.L33:
	ldr r0, [fp, #-8]
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
	b .L35
.L34:
	ldr r0, [fp, #-4]
	cmp r0, #10
	moveq r0, #1
	movne r0, #0
	beq .L42
	b .L43
.L35:
	ldr r0, [fp, #-8]
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L36:
	ldr r0, [fp, #-4]
	cmp r0, #11
	moveq r0, #1
	movne r0, #0
	beq .L33
	b .L38
.L37:
	b .L36
.L38:
	b .L34
.L39:
	mov r0, #25
	str r0, [fp, #-8]
	b .L41
.L40:
	ldr r0, [fp, #-4]
	cmp r0, #10
	moveq r0, #1
	movne r0, #0
	beq .L48
	b .L49
.L41:
	b .L35
.L42:
	ldr r0, [fp, #-8]
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	beq .L39
	b .L44
.L43:
	b .L40
.L44:
	b .L40
.L45:
	ldr r0, [fp, #-8]
	add r0, r0, #15
	str r0, [fp, #-8]
	b .L47
.L46:
	ldr r1, [fp, #-8]
	mov r0, #0
	sub r0, r0, r1
	str r0, [fp, #-8]
	b .L47
.L47:
	b .L41
.L48:
	ldr r1, [fp, #-8]
	mov r0, #0
	sub r0, r0, #5
	cmp r1, r0
	moveq r0, #1
	movne r0, #0
	beq .L45
	b .L50
.L49:
	b .L46
.L50:
	b .L46
	.global main
	.type main , %function
main:
	push {fp, lr}
	mov fp, sp
	lsr sp, sp, #3
	lsl sp, sp, #3
.L51:
	bl ifElseIf
	mov r0, r0
	mov r0, r0
	bl putint
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr

.LTORG
