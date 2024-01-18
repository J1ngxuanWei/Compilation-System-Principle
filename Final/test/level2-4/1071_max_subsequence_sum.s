	.cpu cortex-a72
	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm

	.text
	.global maxSubArray
	.type maxSubArray , %function
maxSubArray:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #20
	lsr sp, sp, #3
	lsl sp, sp, #3
.L58:
	str r0, [fp, #-20]
	str r1, [fp, #-16]
	ldr r0, [fp, #-16]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	beq .L61
	b .L63
.L61:
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
	b .L62
.L62:
	ldr r0, [fp, #-16]
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	beq .L64
	b .L66
.L63:
	b .L62
.L64:
	ldr r0, [fp, #-20]
	mov r0, r0
	ldr r0, [r0]
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
	b .L65
.L65:
	ldr r0, [fp, #-20]
	mov r0, r0
	ldr r0, [r0]
	str r0, [fp, #-12]
	ldr r0, [fp, #-12]
	str r0, [fp, #-8]
	mov r0, #1
	str r0, [fp, #-4]
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-16]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L75
	b .L77
.L66:
	b .L65
.L74:
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-16]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L75
	b .L86
.L75:
	ldr r0, [fp, #-12]
	cmp r0, #0
	movlt r0, #1
	movge r0, #0
	blt .L78
	b .L80
.L76:
	ldr r0, [fp, #-8]
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L77:
	b .L76
.L78:
	mov r0, #0
	str r0, [fp, #-12]
	b .L79
.L79:
	ldr r2, [fp, #-12]
	ldr r1, [fp, #-20]
	ldr r0, [fp, #-4]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	add r0, r2, r0
	str r0, [fp, #-12]
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-12]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L83
	b .L85
.L80:
	b .L79
.L83:
	ldr r0, [fp, #-12]
	str r0, [fp, #-8]
	b .L84
.L84:
	ldr r0, [fp, #-4]
	add r0, r0, #1
	str r0, [fp, #-4]
	b .L74
.L85:
	b .L84
.L86:
	b .L76
	.global main
	.type main , %function
main:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #44
	lsr sp, sp, #3
	lsl sp, sp, #3
.L87:
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
	bl maxSubArray
	mov r0, r0
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr

.LTORG
