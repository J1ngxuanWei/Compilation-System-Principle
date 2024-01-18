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
	.global counting_sort
	.type counting_sort , %function
counting_sort:
	push {r4, fp, lr}
	mov fp, sp
	sub sp, sp, #64
	lsr sp, sp, #3
	lsl sp, sp, #3
.L105:
	str r0, [fp, #-24]
	str r1, [fp, #-20]
	str r2, [fp, #-16]
	mov r0, #0
	str r0, [fp, #-4]
	mov r0, #0
	str r0, [fp, #-12]
	mov r0, #0
	str r0, [fp, #-8]
	ldr r0, [fp, #-4]
	cmp r0, #10
	movlt r0, #1
	movge r0, #0
	blt .L114
	b .L116
.L113:
	ldr r0, [fp, #-4]
	cmp r0, #10
	movlt r0, #1
	movge r0, #0
	blt .L114
	b .L118
.L114:
	ldr r2, [fp, #-4]
	mvn r0, #63
	add r1, fp, r0
	lsl r0, r2, #2
	add r1, r1, r0
	mov r1, r1
	mov r0, #0
	str r0, [r1]
	ldr r0, [fp, #-4]
	add r0, r0, #1
	str r0, [fp, #-4]
	b .L113
.L115:
	ldr r1, [fp, #-12]
	ldr r0, [fp, #-16]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L120
	b .L122
.L116:
	b .L115
.L118:
	b .L115
.L119:
	ldr r1, [fp, #-12]
	ldr r0, [fp, #-16]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L120
	b .L129
.L120:
	ldr r1, [fp, #-24]
	ldr r0, [fp, #-12]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r2, [r0]
	mvn r0, #63
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	add r3, r0, #1
	ldr r1, [fp, #-24]
	ldr r0, [fp, #-12]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r2, [r0]
	mvn r0, #63
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	str r3, [r0]
	ldr r0, [fp, #-12]
	add r0, r0, #1
	str r0, [fp, #-12]
	b .L119
.L121:
	mov r0, #1
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	cmp r0, #10
	movlt r0, #1
	movge r0, #0
	blt .L131
	b .L133
.L122:
	b .L121
.L129:
	b .L121
.L130:
	ldr r0, [fp, #-4]
	cmp r0, #10
	movlt r0, #1
	movge r0, #0
	blt .L131
	b .L137
.L131:
	ldr r2, [fp, #-4]
	mvn r0, #63
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r3, [r0]
	ldr r0, [fp, #-4]
	sub r2, r0, #1
	mvn r0, #63
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	add r3, r3, r0
	ldr r2, [fp, #-4]
	mvn r0, #63
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	str r3, [r0]
	ldr r0, [fp, #-4]
	add r0, r0, #1
	str r0, [fp, #-4]
	b .L130
.L132:
	ldr r0, [fp, #-16]
	str r0, [fp, #-8]
	ldr r0, [fp, #-8]
	cmp r0, #0
	movgt r0, #1
	movle r0, #0
	bgt .L139
	b .L141
.L133:
	b .L132
.L137:
	b .L132
.L138:
	ldr r0, [fp, #-8]
	cmp r0, #0
	movgt r0, #1
	movle r0, #0
	bgt .L139
	b .L155
.L139:
	ldr r1, [fp, #-24]
	ldr r0, [fp, #-8]
	sub r0, r0, #1
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r2, [r0]
	mvn r0, #63
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	sub r3, r0, #1
	ldr r1, [fp, #-24]
	ldr r0, [fp, #-8]
	sub r0, r0, #1
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r2, [r0]
	mvn r0, #63
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	str r3, [r0]
	ldr r1, [fp, #-24]
	ldr r0, [fp, #-8]
	sub r0, r0, #1
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r1, [r0]
	ldr r0, [fp, #-20]
	ldr r3, [fp, #-24]
	ldr r2, [fp, #-8]
	sub r2, r2, #1
	lsl r2, r2, #2
	add r2, r3, r2
	mov r2, r2
	ldr r4, [r2]
	mvn r2, #63
	add r3, fp, r2
	lsl r2, r4, #2
	add r2, r3, r2
	mov r2, r2
	ldr r2, [r2]
	lsl r2, r2, #2
	add r0, r0, r2
	mov r0, r0
	str r1, [r0]
	ldr r0, [fp, #-8]
	sub r0, r0, #1
	str r0, [fp, #-8]
	b .L138
.L140:
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {r4, fp, lr}
	bx lr
.L141:
	b .L140
.L155:
	b .L140
	.global main
	.type main , %function
main:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #88
	lsr sp, sp, #3
	lsl sp, sp, #3
.L156:
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
	mov r0, #0
	str r0, [fp, #-8]
	mvn r0, #47
	add r3, fp, r0
	mov r3, r3
	mvn r0, #87
	add r1, fp, r0
	mov r1, r1
	ldr r0, addr_n_0
	ldr r2, [r0]
	mov r0, r3
	mov r1, r1
	mov r2, r2
	bl counting_sort
	mov r0, r0
	str r0, [fp, #-8]
	ldr r1, [fp, #-8]
	ldr r0, addr_n_0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L171
	b .L173
.L170:
	ldr r1, [fp, #-8]
	ldr r0, addr_n_0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L171
	b .L176
.L171:
	ldr r2, [fp, #-8]
	mvn r0, #87
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
	b .L170
.L172:
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L173:
	b .L172
.L176:
	b .L172

.LTORG
addr_n_0:
	.word n
