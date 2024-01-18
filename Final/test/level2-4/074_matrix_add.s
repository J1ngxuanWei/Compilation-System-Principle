	.cpu cortex-a72
	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
.data
.global M
.size M, 4
M:
	.word 0
.global L
.size L, 4
L:
	.word 0
.global N
.size N, 4
N:
	.word 0

	.text
	.global add
	.type add , %function
add:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #40
	lsr sp, sp, #3
	lsl sp, sp, #3
.L138:
	str r0, [fp, #-40]
	str r1, [fp, #-36]
	str r2, [fp, #-32]
	str r3, [fp, #-28]
	ldr r0, [fp, #8]
	str r0, [fp, #-24]
	ldr r0, [fp, #12]
	str r0, [fp, #-20]
	ldr r0, [fp, #16]
	str r0, [fp, #-16]
	ldr r0, [fp, #20]
	str r0, [fp, #-12]
	ldr r0, [fp, #24]
	str r0, [fp, #-8]
	mov r0, #0
	str r0, [fp, #-4]
	ldr r1, [fp, #-4]
	ldr r0, addr_M_0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L150
	b .L152
.L149:
	ldr r1, [fp, #-4]
	ldr r0, addr_M_0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L150
	b .L171
.L150:
	ldr r1, [fp, #-40]
	ldr r0, [fp, #-4]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r2, [r0]
	ldr r1, [fp, #-28]
	ldr r0, [fp, #-4]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	add r2, r2, r0
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-4]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	str r2, [r0]
	ldr r1, [fp, #-36]
	ldr r0, [fp, #-4]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r2, [r0]
	ldr r1, [fp, #-24]
	ldr r0, [fp, #-4]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	add r2, r2, r0
	ldr r1, [fp, #-12]
	ldr r0, [fp, #-4]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	str r2, [r0]
	ldr r1, [fp, #-32]
	ldr r0, [fp, #-4]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r2, [r0]
	ldr r1, [fp, #-20]
	ldr r0, [fp, #-4]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	add r2, r2, r0
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-4]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	str r2, [r0]
	ldr r0, [fp, #-4]
	add r0, r0, #1
	str r0, [fp, #-4]
	b .L149
.L151:
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L152:
	b .L151
.L171:
	b .L151
	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #128
	lsr sp, sp, #3
	lsl sp, sp, #3
.L172:
	mov r1, #3
	ldr r0, addr_N_0
	str r1, [r0]
	mov r1, #3
	ldr r0, addr_M_0
	str r1, [r0]
	mov r1, #3
	ldr r0, addr_L_0
	str r1, [r0]
	mov r0, #0
	str r0, [fp, #-8]
	ldr r1, [fp, #-8]
	ldr r0, addr_M_0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L184
	b .L186
.L183:
	ldr r1, [fp, #-8]
	ldr r0, addr_M_0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L184
	b .L193
.L184:
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
	b .L183
.L185:
	mvn r0, #19
	add r0, fp, r0
	mov r0, r0
	mvn r1, #31
	add r1, fp, r1
	mov r1, r1
	mvn r2, #43
	add r2, fp, r2
	mov r2, r2
	mvn r3, #55
	add r3, fp, r3
	mov r3, r3
	mvn r4, #67
	add r7, fp, r4
	mov r7, r7
	mvn r4, #79
	add r6, fp, r4
	mov r6, r6
	mvn r4, #103
	add r5, fp, r4
	mov r5, r5
	mvn r4, #115
	add r4, fp, r4
	mov r4, r4
	mvn r8, #127
	add r8, fp, r8
	mov r8, r8
	mov r0, r0
	mov r1, r1
	mov r2, r2
	mov r3, r3
	push {r8}
	push {r4}
	push {r5}
	push {r6}
	push {r7}
	bl add
	add sp, sp, #20
	mov r0, r0
	str r0, [fp, #-8]
	ldr r1, [fp, #-8]
	ldr r0, addr_N_0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L196
	b .L198
.L186:
	b .L185
.L193:
	b .L185
.L195:
	ldr r1, [fp, #-8]
	ldr r0, addr_N_0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L196
	b .L200
.L196:
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
	b .L195
.L197:
	mov r0, #10
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	mov r0, r0
	bl putch
	mov r0, #0
	str r0, [fp, #-8]
	ldr r1, [fp, #-8]
	ldr r0, addr_N_0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L202
	b .L204
.L198:
	b .L197
.L200:
	b .L197
.L201:
	ldr r1, [fp, #-8]
	ldr r0, addr_N_0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L202
	b .L206
.L202:
	ldr r2, [fp, #-8]
	mvn r0, #115
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
	b .L201
.L203:
	mov r0, #10
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	mov r0, r0
	bl putch
	mov r0, #0
	str r0, [fp, #-8]
	ldr r1, [fp, #-8]
	ldr r0, addr_N_0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L208
	b .L210
.L204:
	b .L203
.L206:
	b .L203
.L207:
	ldr r1, [fp, #-8]
	ldr r0, addr_N_0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L208
	b .L212
.L208:
	ldr r2, [fp, #-8]
	mvn r0, #127
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
	b .L207
.L209:
	mov r0, #10
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	mov r0, r0
	bl putch
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L210:
	b .L209
.L212:
	b .L209

.LTORG
addr_M_0:
	.word M
addr_L_0:
	.word L
addr_N_0:
	.word N
