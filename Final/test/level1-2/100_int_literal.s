	.cpu cortex-a72
	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
.data
.global s
.size s, 4
s:
	.word 0

	.text
	.global get_ans_se
	.type get_ans_se , %function
get_ans_se:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #16
	lsr sp, sp, #3
	lsl sp, sp, #3
.L189:
	str r0, [fp, #-16]
	str r1, [fp, #-12]
	str r2, [fp, #-8]
	mov r0, #0
	str r0, [fp, #-4]
	ldr r1, [fp, #-12]
	ldr r0, [fp, #-8]
	cmp r1, r0
	moveq r0, #1
	movne r0, #0
	beq .L194
	b .L196
.L194:
	mov r0, #1
	str r0, [fp, #-4]
	b .L195
.L195:
	ldr r0, [fp, #-16]
	lsl r0, r0, #1
	str r0, [fp, #-16]
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-4]
	add r0, r1, r0
	str r0, [fp, #-16]
	ldr r0, addr_s_0
	ldr r1, [r0]
	ldr r0, [fp, #-16]
	add r1, r1, r0
	ldr r0, addr_s_0
	str r1, [r0]
	ldr r0, [fp, #-16]
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L196:
	b .L195
	.global get_ans
	.type get_ans , %function
get_ans:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #16
	lsr sp, sp, #3
	lsl sp, sp, #3
.L197:
	str r0, [fp, #-16]
	str r1, [fp, #-12]
	str r2, [fp, #-8]
	mov r0, #0
	str r0, [fp, #-4]
	ldr r1, [fp, #-12]
	ldr r0, [fp, #-8]
	cmp r1, r0
	moveq r0, #1
	movne r0, #0
	beq .L202
	b .L204
.L202:
	mov r0, #1
	str r0, [fp, #-4]
	b .L203
.L203:
	ldr r0, [fp, #-16]
	lsl r0, r0, #1
	str r0, [fp, #-16]
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-4]
	add r0, r1, r0
	str r0, [fp, #-16]
	ldr r0, [fp, #-16]
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L204:
	b .L203
	.global main
	.type main , %function
main:
	push {r4, fp, lr}
	mov fp, sp
	sub sp, sp, #36
	lsr sp, sp, #3
	lsl sp, sp, #3
.L205:
	mov r0, #-2147483648
	str r0, [fp, #-36]
	mov r0, #-2147483648
	str r0, [fp, #-32]
	mov r0, #-2147483648
	add r0, r0, #1
	str r0, [fp, #-28]
	mvn r0, #-2147483648
	str r0, [fp, #-24]
	mvn r0, #-2147483648
	sub r0, r0, #1
	str r0, [fp, #-20]
	ldr r1, [fp, #-36]
	ldr r2, [fp, #-32]
	mov r0, #0
	mov r1, r1
	mov r2, r2
	bl get_ans
	mov r0, r0
	str r0, [fp, #-16]
	ldr r3, [fp, #-16]
	ldr r0, [fp, #-36]
	add r1, r0, #1
	ldr r2, [fp, #-28]
	mov r0, r3
	mov r1, r1
	mov r2, r2
	bl get_ans
	mov r0, r0
	str r0, [fp, #-16]
	ldr r4, [fp, #-16]
	ldr r3, [fp, #-36]
	ldr r1, [fp, #-24]
	mov r0, #0
	sub r0, r0, r1
	sub r2, r0, #1
	mov r0, r4
	mov r1, r3
	mov r2, r2
	bl get_ans
	mov r0, r0
	str r0, [fp, #-16]
	ldr r3, [fp, #-16]
	ldr r1, [fp, #-36]
	ldr r0, [fp, #-20]
	add r2, r0, #1
	mov r0, r3
	mov r1, r1
	mov r2, r2
	bl get_ans
	mov r0, r0
	str r0, [fp, #-16]
	ldr r3, [fp, #-16]
	ldr r0, [fp, #-32]
	ldr r1, =2
	sdiv r1, r0, r1
	ldr r0, [fp, #-28]
	ldr r2, =2
	sdiv r2, r0, r2
	mov r0, r3
	mov r1, r1
	mov r2, r2
	bl get_ans
	mov r0, r0
	str r0, [fp, #-16]
	ldr r4, [fp, #-16]
	ldr r3, [fp, #-32]
	ldr r1, [fp, #-24]
	mov r0, #0
	sub r0, r0, r1
	sub r2, r0, #1
	mov r0, r4
	mov r1, r3
	mov r2, r2
	bl get_ans
	mov r0, r0
	str r0, [fp, #-16]
	ldr r3, [fp, #-16]
	ldr r1, [fp, #-32]
	ldr r0, [fp, #-20]
	add r2, r0, #1
	mov r0, r3
	mov r1, r1
	mov r2, r2
	bl get_ans
	mov r0, r0
	str r0, [fp, #-16]
	ldr r1, [fp, #-28]
	ldr r2, [fp, #-24]
	mov r0, #0
	mov r1, r1
	mov r2, r2
	bl get_ans
	mov r0, r0
	str r0, [fp, #-12]
	ldr r0, [fp, #-12]
	ldr r1, [fp, #-28]
	ldr r2, [fp, #-20]
	mov r0, r0
	mov r1, r1
	mov r2, r2
	bl get_ans
	mov r0, r0
	str r0, [fp, #-12]
	ldr r0, [fp, #-12]
	ldr r1, [fp, #-24]
	ldr r2, [fp, #-20]
	mov r0, r0
	mov r1, r1
	mov r2, r2
	bl get_ans
	mov r0, r0
	str r0, [fp, #-12]
	ldr r3, [fp, #-12]
	ldr r0, [fp, #-36]
	ldr r1, =2
	sdiv r1, r0, r1
	ldr r0, [fp, #-32]
	ldr r2, =2
	sdiv r2, r0, r2
	mov r0, r3
	mov r1, r1
	mov r2, r2
	bl get_ans
	mov r0, r0
	str r0, [fp, #-12]
	ldr r1, [fp, #-36]
	ldr r2, [fp, #-32]
	mov r0, #0
	mov r1, r1
	mov r2, r2
	bl get_ans_se
	mov r0, r0
	str r0, [fp, #-8]
	ldr r3, [fp, #-8]
	ldr r0, [fp, #-36]
	add r1, r0, #1
	ldr r2, [fp, #-28]
	mov r0, r3
	mov r1, r1
	mov r2, r2
	bl get_ans_se
	mov r0, r0
	str r0, [fp, #-8]
	ldr r4, [fp, #-8]
	ldr r3, [fp, #-36]
	ldr r1, [fp, #-24]
	mov r0, #0
	sub r0, r0, r1
	sub r2, r0, #1
	mov r0, r4
	mov r1, r3
	mov r2, r2
	bl get_ans_se
	mov r0, r0
	str r0, [fp, #-8]
	ldr r3, [fp, #-8]
	ldr r1, [fp, #-36]
	ldr r0, [fp, #-20]
	add r2, r0, #1
	mov r0, r3
	mov r1, r1
	mov r2, r2
	bl get_ans_se
	mov r0, r0
	str r0, [fp, #-8]
	ldr r3, [fp, #-8]
	ldr r0, [fp, #-32]
	ldr r1, =2
	sdiv r1, r0, r1
	ldr r0, [fp, #-28]
	ldr r2, =2
	sdiv r2, r0, r2
	mov r0, r3
	mov r1, r1
	mov r2, r2
	bl get_ans_se
	mov r0, r0
	str r0, [fp, #-8]
	ldr r4, [fp, #-8]
	ldr r3, [fp, #-32]
	ldr r1, [fp, #-24]
	mov r0, #0
	sub r0, r0, r1
	sub r2, r0, #1
	mov r0, r4
	mov r1, r3
	mov r2, r2
	bl get_ans_se
	mov r0, r0
	str r0, [fp, #-8]
	ldr r3, [fp, #-8]
	ldr r1, [fp, #-32]
	ldr r0, [fp, #-20]
	add r2, r0, #1
	mov r0, r3
	mov r1, r1
	mov r2, r2
	bl get_ans_se
	mov r0, r0
	str r0, [fp, #-8]
	ldr r1, [fp, #-28]
	ldr r2, [fp, #-24]
	mov r0, #0
	mov r1, r1
	mov r2, r2
	bl get_ans_se
	mov r0, r0
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	ldr r1, [fp, #-28]
	ldr r2, [fp, #-20]
	mov r0, r0
	mov r1, r1
	mov r2, r2
	bl get_ans_se
	mov r0, r0
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	ldr r1, [fp, #-24]
	ldr r2, [fp, #-20]
	mov r0, r0
	mov r1, r1
	mov r2, r2
	bl get_ans_se
	mov r0, r0
	str r0, [fp, #-4]
	ldr r3, [fp, #-4]
	ldr r0, [fp, #-36]
	ldr r1, =2
	sdiv r1, r0, r1
	ldr r0, [fp, #-32]
	ldr r2, =2
	sdiv r2, r0, r2
	mov r0, r3
	mov r1, r1
	mov r2, r2
	bl get_ans_se
	mov r0, r0
	str r0, [fp, #-4]
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-12]
	add r1, r1, r0
	ldr r0, [fp, #-8]
	add r1, r1, r0
	ldr r0, [fp, #-4]
	add r0, r1, r0
	mov r0, r0
	mov sp, fp
	pop {r4, fp, lr}
	bx lr

.LTORG
addr_s_0:
	.word s
