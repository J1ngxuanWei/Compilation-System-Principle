	.cpu cortex-a72
	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm

	.text
	.global maxArea
	.type maxArea , %function
maxArea:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #24
	lsr sp, sp, #3
	lsl sp, sp, #3
.L71:
	str r0, [fp, #-24]
	str r1, [fp, #-20]
	mov r0, #0
	str r0, [fp, #-16]
	ldr r0, [fp, #-20]
	sub r0, r0, #1
	str r0, [fp, #-12]
	mov r0, #0
	sub r0, r0, #1
	str r0, [fp, #-8]
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-12]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L78
	b .L80
.L77:
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-12]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L78
	b .L105
.L78:
	ldr r1, [fp, #-24]
	ldr r0, [fp, #-16]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r2, [r0]
	ldr r1, [fp, #-24]
	ldr r0, [fp, #-12]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r2, r0
	movlt r0, #1
	movge r0, #0
	blt .L82
	b .L89
.L79:
	ldr r0, [fp, #-8]
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L80:
	b .L79
.L82:
	ldr r1, [fp, #-12]
	ldr r0, [fp, #-16]
	sub r2, r1, r0
	ldr r1, [fp, #-24]
	ldr r0, [fp, #-16]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	mul r0, r2, r0
	str r0, [fp, #-4]
	b .L84
.L83:
	ldr r1, [fp, #-12]
	ldr r0, [fp, #-16]
	sub r2, r1, r0
	ldr r1, [fp, #-24]
	ldr r0, [fp, #-12]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	mul r0, r2, r0
	str r0, [fp, #-4]
	b .L84
.L84:
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-8]
	cmp r1, r0
	movgt r0, #1
	movle r0, #0
	bgt .L94
	b .L96
.L89:
	b .L83
.L94:
	ldr r0, [fp, #-4]
	str r0, [fp, #-8]
	b .L95
.L95:
	ldr r1, [fp, #-24]
	ldr r0, [fp, #-16]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r2, [r0]
	ldr r1, [fp, #-24]
	ldr r0, [fp, #-12]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r2, r0
	movgt r0, #1
	movle r0, #0
	bgt .L97
	b .L104
.L96:
	b .L95
.L97:
	ldr r0, [fp, #-12]
	sub r0, r0, #1
	str r0, [fp, #-12]
	b .L99
.L98:
	ldr r0, [fp, #-16]
	add r0, r0, #1
	str r0, [fp, #-16]
	b .L99
.L99:
	b .L77
.L104:
	b .L98
.L105:
	b .L79
	.global main
	.type main , %function
main:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #44
	lsr sp, sp, #3
	lsl sp, sp, #3
.L106:
	mvn r0, #43
	add r1, fp, r0
	mov r1, r1
	mov r0, #3
	str r0, [r1]
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
	mvn r0, #43
	add r0, fp, r0
	add r1, r0, #12
	mov r1, r1
	mov r0, #0
	str r0, [r1]
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
	mvn r0, #43
	add r0, fp, r0
	add r1, r0, #24
	mov r1, r1
	mov r0, #1
	str r0, [r1]
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
	bl maxArea
	mov r0, r0
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr

.LTORG
