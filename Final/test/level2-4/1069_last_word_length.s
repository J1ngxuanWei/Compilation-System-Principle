	.cpu cortex-a72
	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm

	.text
	.global lengthOfLastWord
	.type lengthOfLastWord , %function
lengthOfLastWord:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #16
	lsr sp, sp, #3
	lsl sp, sp, #3
.L68:
	str r0, [fp, #-16]
	str r1, [fp, #-12]
	ldr r0, [fp, #-12]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	beq .L71
	b .L73
.L71:
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
	b .L72
.L72:
	ldr r0, [fp, #-12]
	sub r0, r0, #1
	str r0, [fp, #-8]
	ldr r1, [fp, #-8]
	mov r0, #0
	sub r0, r0, #1
	cmp r1, r0
	movgt r0, #1
	movle r0, #0
	bgt .L83
	b .L79
.L73:
	b .L72
.L75:
	ldr r1, [fp, #-8]
	mov r0, #0
	sub r0, r0, #1
	cmp r1, r0
	movgt r0, #1
	movle r0, #0
	bgt .L83
	b .L84
.L76:
	ldr r0, [fp, #-8]
	sub r0, r0, #1
	str r0, [fp, #-8]
	b .L75
.L77:
	ldr r1, [fp, #-8]
	mov r0, #0
	sub r0, r0, #1
	cmp r1, r0
	moveq r0, #1
	movne r0, #0
	beq .L88
	b .L90
.L79:
	b .L77
.L83:
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-8]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	beq .L76
	b .L87
.L84:
	b .L77
.L87:
	b .L77
.L88:
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
	b .L89
.L89:
	ldr r0, [fp, #-8]
	str r0, [fp, #-4]
	ldr r1, [fp, #-4]
	mov r0, #0
	sub r0, r0, #1
	cmp r1, r0
	movgt r0, #1
	movle r0, #0
	bgt .L93
	b .L95
.L90:
	b .L89
.L92:
	ldr r1, [fp, #-4]
	mov r0, #0
	sub r0, r0, #1
	cmp r1, r0
	movgt r0, #1
	movle r0, #0
	bgt .L93
	b .L101
.L93:
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-4]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	beq .L96
	b .L100
.L94:
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-4]
	sub r0, r1, r0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L95:
	b .L94
.L96:
	ldr r1, [fp, #-12]
	ldr r0, [fp, #-4]
	sub r0, r1, r0
	sub r2, r0, #1
	ldr r0, [fp, #-12]
	sub r1, r0, #1
	ldr r0, [fp, #-8]
	sub r0, r1, r0
	sub r0, r2, r0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
	b .L97
.L97:
	ldr r0, [fp, #-4]
	sub r0, r0, #1
	str r0, [fp, #-4]
	b .L92
.L100:
	b .L97
.L101:
	b .L94
	.global main
	.type main , %function
main:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #44
	lsr sp, sp, #3
	lsl sp, sp, #3
.L102:
	mov r0, #0
	sub r1, r0, #4
	mvn r0, #43
	add r0, fp, r0
	mov r0, r0
	str r1, [r0]
	mvn r0, #43
	add r0, fp, r0
	add r1, r0, #4
	mov r1, r1
	mov r0, #3
	str r0, [r1]
	mvn r0, #43
	add r0, fp, r0
	add r1, r0, #8
	mov r1, r1
	mov r0, #9
	str r0, [r1]
	mov r0, #0
	sub r1, r0, #2
	mvn r0, #43
	add r0, fp, r0
	add r0, r0, #12
	mov r0, r0
	str r1, [r0]
	mvn r0, #43
	add r0, fp, r0
	add r1, r0, #16
	mov r1, r1
	mov r0, #0
	str r0, [r1]
	mvn r0, #43
	add r0, fp, r0
	add r1, r0, #20
	mov r1, r1
	mov r0, #1
	str r0, [r1]
	mov r0, #0
	sub r1, r0, #6
	mvn r0, #43
	add r0, fp, r0
	add r0, r0, #24
	mov r0, r0
	str r1, [r0]
	mvn r0, #43
	add r0, fp, r0
	add r1, r0, #28
	mov r1, r1
	mov r0, #5
	str r0, [r1]
	mvn r0, #43
	add r0, fp, r0
	add r1, r0, #32
	mov r1, r1
	mov r0, #7
	str r0, [r1]
	mvn r0, #43
	add r0, fp, r0
	add r1, r0, #36
	mov r1, r1
	mov r0, #8
	str r0, [r1]
	mov r0, #10
	str r0, [fp, #-4]
	mvn r0, #43
	add r0, fp, r0
	mov r0, r0
	ldr r1, [fp, #-4]
	mov r0, r0
	mov r1, r1
	bl lengthOfLastWord
	mov r0, r0
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr

.LTORG
