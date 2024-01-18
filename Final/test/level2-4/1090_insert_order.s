	.cpu cortex-a72
	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
.data
.global N
.size N, 4
N:
	.word 0

	.text
	.global insert
	.type insert , %function
insert:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #16
	lsr sp, sp, #3
	lsl sp, sp, #3
.L68:
	str r0, [fp, #-16]
	str r1, [fp, #-12]
	mov r0, #0
	str r0, [fp, #-8]
	ldr r2, [fp, #-12]
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-8]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r2, r0
	movgt r0, #1
	movle r0, #0
	bgt .L81
	b .L79
.L73:
	ldr r2, [fp, #-12]
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-8]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r2, r0
	movgt r0, #1
	movle r0, #0
	bgt .L81
	b .L84
.L74:
	ldr r0, [fp, #-8]
	add r0, r0, #1
	str r0, [fp, #-8]
	b .L73
.L75:
	ldr r0, addr_N_0
	ldr r0, [r0]
	str r0, [fp, #-4]
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-8]
	cmp r1, r0
	movgt r0, #1
	movle r0, #0
	bgt .L87
	b .L89
.L79:
	b .L75
.L81:
	ldr r1, [fp, #-8]
	ldr r0, addr_N_0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L74
	b .L85
.L84:
	b .L75
.L85:
	b .L75
.L86:
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-8]
	cmp r1, r0
	movgt r0, #1
	movle r0, #0
	bgt .L87
	b .L96
.L87:
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-4]
	sub r0, r0, #1
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r2, [r0]
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-4]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	str r2, [r0]
	ldr r2, [fp, #-12]
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-8]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	str r2, [r0]
	ldr r0, [fp, #-4]
	sub r0, r0, #1
	str r0, [fp, #-4]
	b .L86
.L88:
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L89:
	b .L88
.L96:
	b .L88
	.global main
	.type main , %function
main:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #52
	lsr sp, sp, #3
	lsl sp, sp, #3
.L97:
	mov r1, #10
	ldr r0, addr_N_0
	str r1, [r0]
	mvn r0, #51
	add r1, fp, r0
	mov r1, r1
	mov r0, #1
	str r0, [r1]
	mvn r0, #51
	add r0, fp, r0
	add r1, r0, #4
	mov r1, r1
	mov r0, #3
	str r0, [r1]
	mvn r0, #51
	add r0, fp, r0
	add r1, r0, #8
	mov r1, r1
	mov r0, #4
	str r0, [r1]
	mvn r0, #51
	add r0, fp, r0
	add r1, r0, #12
	mov r1, r1
	mov r0, #7
	str r0, [r1]
	mvn r0, #51
	add r0, fp, r0
	add r1, r0, #16
	mov r1, r1
	mov r0, #8
	str r0, [r1]
	mvn r0, #51
	add r0, fp, r0
	add r1, r0, #20
	mov r1, r1
	mov r0, #11
	str r0, [r1]
	mvn r0, #51
	add r0, fp, r0
	add r1, r0, #24
	mov r1, r1
	mov r0, #13
	str r0, [r1]
	mvn r0, #51
	add r0, fp, r0
	add r1, r0, #28
	mov r1, r1
	mov r0, #18
	str r0, [r1]
	mvn r0, #51
	add r0, fp, r0
	add r1, r0, #32
	mov r1, r1
	mov r0, #56
	str r0, [r1]
	mvn r0, #51
	add r0, fp, r0
	add r1, r0, #36
	mov r1, r1
	mov r0, #78
	str r0, [r1]
	mov r0, #0
	str r0, [fp, #-4]
	bl getint
	mov r0, r0
	str r0, [fp, #-8]
	mvn r0, #51
	add r0, fp, r0
	mov r0, r0
	ldr r1, [fp, #-8]
	mov r0, r0
	mov r1, r1
	bl insert
	mov r0, r0
	str r0, [fp, #-8]
	ldr r1, [fp, #-4]
	ldr r0, addr_N_0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L112
	b .L114
.L111:
	ldr r1, [fp, #-4]
	ldr r0, addr_N_0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L112
	b .L116
.L112:
	ldr r2, [fp, #-4]
	mvn r0, #51
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	str r0, [fp, #-8]
	ldr r0, [fp, #-8]
	mov r0, r0
	bl putint
	mov r0, #10
	str r0, [fp, #-8]
	ldr r0, [fp, #-8]
	mov r0, r0
	bl putch
	ldr r0, [fp, #-4]
	add r0, r0, #1
	str r0, [fp, #-4]
	b .L111
.L113:
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L114:
	b .L113
.L116:
	b .L113

.LTORG
addr_N_0:
	.word N
