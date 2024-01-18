	.cpu cortex-a72
	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm

	.text
	.global concat
	.type concat , %function
concat:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #20
	lsr sp, sp, #3
	lsl sp, sp, #3
.L82:
	str r0, [fp, #-20]
	str r1, [fp, #-16]
	str r2, [fp, #-12]
	mov r0, #0
	str r0, [fp, #-8]
	ldr r0, [fp, #-8]
	cmp r0, #3
	movlt r0, #1
	movge r0, #0
	blt .L88
	b .L90
.L87:
	ldr r0, [fp, #-8]
	cmp r0, #3
	movlt r0, #1
	movge r0, #0
	blt .L88
	b .L95
.L88:
	ldr r1, [fp, #-20]
	ldr r0, [fp, #-8]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r2, [r0]
	ldr r1, [fp, #-12]
	ldr r0, [fp, #-8]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	str r2, [r0]
	ldr r0, [fp, #-8]
	add r0, r0, #1
	str r0, [fp, #-8]
	b .L87
.L89:
	mov r0, #0
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	cmp r0, #3
	movlt r0, #1
	movge r0, #0
	blt .L98
	b .L100
.L90:
	b .L89
.L95:
	b .L89
.L97:
	ldr r0, [fp, #-4]
	cmp r0, #3
	movlt r0, #1
	movge r0, #0
	blt .L98
	b .L105
.L98:
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-4]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r2, [r0]
	ldr r1, [fp, #-12]
	ldr r0, [fp, #-8]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	str r2, [r0]
	ldr r0, [fp, #-8]
	add r0, r0, #1
	str r0, [fp, #-8]
	ldr r0, [fp, #-4]
	add r0, r0, #1
	str r0, [fp, #-4]
	b .L97
.L99:
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L100:
	b .L99
.L105:
	b .L99
	.global main
	.type main , %function
main:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #128
	lsr sp, sp, #3
	lsl sp, sp, #3
.L106:
	mov r0, #0
	str r0, [fp, #-8]
	ldr r0, [fp, #-8]
	cmp r0, #3
	movlt r0, #1
	movge r0, #0
	blt .L118
	b .L120
.L117:
	ldr r0, [fp, #-8]
	cmp r0, #3
	movlt r0, #1
	movge r0, #0
	blt .L118
	b .L127
.L118:
	ldr r3, [fp, #-8]
	ldr r2, [fp, #-8]
	mvn r0, #19
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	str r3, [r0]
	ldr r3, [fp, #-8]
	ldr r2, [fp, #-8]
	mvn r0, #31
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	str r3, [r0]
	ldr r3, [fp, #-8]
	ldr r2, [fp, #-8]
	mvn r0, #43
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	str r3, [r0]
	ldr r3, [fp, #-8]
	ldr r2, [fp, #-8]
	mvn r0, #55
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	str r3, [r0]
	ldr r3, [fp, #-8]
	ldr r2, [fp, #-8]
	mvn r0, #67
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	str r3, [r0]
	ldr r3, [fp, #-8]
	ldr r2, [fp, #-8]
	mvn r0, #79
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	str r3, [r0]
	ldr r0, [fp, #-8]
	add r0, r0, #1
	str r0, [fp, #-8]
	b .L117
.L119:
	mvn r0, #19
	add r3, fp, r0
	mov r3, r3
	mvn r0, #55
	add r1, fp, r0
	mov r1, r1
	mvn r0, #103
	add r2, fp, r0
	mov r2, r2
	mov r0, r3
	mov r1, r1
	mov r2, r2
	bl concat
	mov r0, r0
	str r0, [fp, #-8]
	ldr r0, [fp, #-8]
	cmp r0, #6
	movlt r0, #1
	movge r0, #0
	blt .L130
	b .L132
.L120:
	b .L119
.L127:
	b .L119
.L129:
	ldr r0, [fp, #-8]
	cmp r0, #6
	movlt r0, #1
	movge r0, #0
	blt .L130
	b .L134
.L130:
	ldr r2, [fp, #-8]
	mvn r0, #103
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	mov r0, r0
	bl putint
	ldr r0, [fp, #-8]
	add r0, r0, #1
	str r0, [fp, #-8]
	b .L129
.L131:
	mov r0, #10
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	mov r0, r0
	bl putch
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L132:
	b .L131
.L134:
	b .L131

.LTORG
