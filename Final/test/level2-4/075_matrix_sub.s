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
.global M
.size M, 4
M:
	.word 0
.global L
.size L, 4
L:
	.word 0

	.text
	.global sub
	.type sub , %function
sub:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #40
	lsr sp, sp, #3
	lsl sp, sp, #3
.L133:
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
	ldr r0, [fp, #-4]
	cmp r0, #3
	movlt r0, #1
	movge r0, #0
	blt .L145
	b .L147
.L144:
	ldr r0, [fp, #-4]
	cmp r0, #3
	movlt r0, #1
	movge r0, #0
	blt .L145
	b .L166
.L145:
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
	sub r2, r2, r0
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
	sub r2, r2, r0
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
	sub r2, r2, r0
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-4]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	str r2, [r0]
	ldr r0, [fp, #-4]
	add r0, r0, #1
	str r0, [fp, #-4]
	b .L144
.L146:
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L147:
	b .L146
.L166:
	b .L146
	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #128
	lsr sp, sp, #3
	lsl sp, sp, #3
.L167:
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
	ldr r0, [fp, #-8]
	cmp r0, #3
	movlt r0, #1
	movge r0, #0
	blt .L179
	b .L181
.L178:
	ldr r0, [fp, #-8]
	cmp r0, #3
	movlt r0, #1
	movge r0, #0
	blt .L179
	b .L188
.L179:
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
	b .L178
.L180:
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
	bl sub
	add sp, sp, #20
	mov r0, r0
	str r0, [fp, #-8]
	ldr r0, [fp, #-8]
	cmp r0, #3
	movlt r0, #1
	movge r0, #0
	blt .L191
	b .L193
.L181:
	b .L180
.L188:
	b .L180
.L190:
	ldr r0, [fp, #-8]
	cmp r0, #3
	movlt r0, #1
	movge r0, #0
	blt .L191
	b .L195
.L191:
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
	b .L190
.L192:
	mov r0, #10
	str r0, [fp, #-4]
	mov r0, #0
	str r0, [fp, #-8]
	ldr r0, [fp, #-4]
	mov r0, r0
	bl putch
	ldr r0, [fp, #-8]
	cmp r0, #3
	movlt r0, #1
	movge r0, #0
	blt .L197
	b .L199
.L193:
	b .L192
.L195:
	b .L192
.L196:
	ldr r0, [fp, #-8]
	cmp r0, #3
	movlt r0, #1
	movge r0, #0
	blt .L197
	b .L201
.L197:
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
	b .L196
.L198:
	mov r0, #10
	str r0, [fp, #-4]
	mov r0, #0
	str r0, [fp, #-8]
	ldr r0, [fp, #-4]
	mov r0, r0
	bl putch
	ldr r0, [fp, #-8]
	cmp r0, #3
	movlt r0, #1
	movge r0, #0
	blt .L203
	b .L205
.L199:
	b .L198
.L201:
	b .L198
.L202:
	ldr r0, [fp, #-8]
	cmp r0, #3
	movlt r0, #1
	movge r0, #0
	blt .L203
	b .L207
.L203:
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
	b .L202
.L204:
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
.L205:
	b .L204
.L207:
	b .L204

.LTORG
addr_N_0:
	.word N
addr_M_0:
	.word M
addr_L_0:
	.word L
