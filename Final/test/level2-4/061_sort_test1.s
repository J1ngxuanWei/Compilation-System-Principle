	.cpu cortex-a72
	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
.data
.global n
.size n, 4
n:
	.word 0

	.text
	.global bubblesort
	.type bubblesort , %function
bubblesort:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #16
	lsr sp, sp, #3
	lsl sp, sp, #3
.L71:
	str r0, [fp, #-16]
	mov r0, #0
	str r0, [fp, #-12]
	ldr r1, [fp, #-12]
	ldr r0, addr_n_0
	ldr r0, [r0]
	sub r0, r0, #1
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L76
	b .L78
.L75:
	ldr r1, [fp, #-12]
	ldr r0, addr_n_0
	ldr r0, [r0]
	sub r0, r0, #1
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L76
	b .L100
.L76:
	mov r0, #0
	str r0, [fp, #-8]
	ldr r2, [fp, #-8]
	ldr r0, addr_n_0
	ldr r1, [r0]
	ldr r0, [fp, #-12]
	sub r0, r1, r0
	sub r0, r0, #1
	cmp r2, r0
	movlt r0, #1
	movge r0, #0
	blt .L80
	b .L82
.L77:
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L78:
	b .L77
.L79:
	ldr r2, [fp, #-8]
	ldr r0, addr_n_0
	ldr r1, [r0]
	ldr r0, [fp, #-12]
	sub r0, r1, r0
	sub r0, r0, #1
	cmp r2, r0
	movlt r0, #1
	movge r0, #0
	blt .L80
	b .L99
.L80:
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-8]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r2, [r0]
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-8]
	add r0, r0, #1
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r2, r0
	movgt r0, #1
	movle r0, #0
	bgt .L83
	b .L89
.L81:
	ldr r0, [fp, #-12]
	add r0, r0, #1
	str r0, [fp, #-12]
	b .L75
.L82:
	b .L81
.L83:
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-8]
	add r0, r0, #1
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	str r0, [fp, #-4]
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-8]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r2, [r0]
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-8]
	add r0, r0, #1
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	str r2, [r0]
	ldr r2, [fp, #-4]
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-8]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	str r2, [r0]
	b .L84
.L84:
	ldr r0, [fp, #-8]
	add r0, r0, #1
	str r0, [fp, #-8]
	b .L79
.L89:
	b .L84
.L99:
	b .L81
.L100:
	b .L77
	.global main
	.type main , %function
main:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #48
	lsr sp, sp, #3
	lsl sp, sp, #3
.L101:
	mov r1, #10
	ldr r0, addr_n_0
	str r1, [r0]
	mvn r0, #47
	add r1, fp, r0
	mov r1, r1
	mov r0, #4
	str r0, [r1]
	mvn r0, #47
	add r0, fp, r0
	add r1, r0, #4
	mov r1, r1
	mov r0, #3
	str r0, [r1]
	mvn r0, #47
	add r0, fp, r0
	add r1, r0, #8
	mov r1, r1
	mov r0, #9
	str r0, [r1]
	mvn r0, #47
	add r0, fp, r0
	add r1, r0, #12
	mov r1, r1
	mov r0, #2
	str r0, [r1]
	mvn r0, #47
	add r0, fp, r0
	add r1, r0, #16
	mov r1, r1
	mov r0, #0
	str r0, [r1]
	mvn r0, #47
	add r0, fp, r0
	add r1, r0, #20
	mov r1, r1
	mov r0, #1
	str r0, [r1]
	mvn r0, #47
	add r0, fp, r0
	add r1, r0, #24
	mov r1, r1
	mov r0, #6
	str r0, [r1]
	mvn r0, #47
	add r0, fp, r0
	add r1, r0, #28
	mov r1, r1
	mov r0, #5
	str r0, [r1]
	mvn r0, #47
	add r0, fp, r0
	add r1, r0, #32
	mov r1, r1
	mov r0, #7
	str r0, [r1]
	mvn r0, #47
	add r0, fp, r0
	add r1, r0, #36
	mov r1, r1
	mov r0, #8
	str r0, [r1]
	mvn r0, #47
	add r0, fp, r0
	mov r0, r0
	mov r0, r0
	bl bubblesort
	mov r0, r0
	str r0, [fp, #-8]
	ldr r1, [fp, #-8]
	ldr r0, addr_n_0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L115
	b .L117
.L114:
	ldr r1, [fp, #-8]
	ldr r0, addr_n_0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L115
	b .L120
.L115:
	ldr r2, [fp, #-8]
	mvn r0, #47
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	mov r0, r0
	bl putint
	mov r0, #10
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	mov r0, r0
	bl putch
	ldr r0, [fp, #-8]
	add r0, r0, #1
	str r0, [fp, #-8]
	b .L114
.L116:
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L117:
	b .L116
.L120:
	b .L116

.LTORG
addr_n_0:
	.word n
