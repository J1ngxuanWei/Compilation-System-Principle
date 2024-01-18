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
.global newline
.size newline, 4
newline:
	.word 0

	.text
	.global split
	.type split , %function
split:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #12
	lsr sp, sp, #3
	lsl sp, sp, #3
.L45:
	str r0, [fp, #-12]
	str r1, [fp, #-8]
	ldr r0, addr_N_0
	ldr r0, [r0]
	sub r0, r0, #1
	str r0, [fp, #-4]
	ldr r1, [fp, #-4]
	mov r0, #0
	sub r0, r0, #1
	cmp r1, r0
	movne r0, #1
	moveq r0, #0
	bne .L50
	b .L52
.L49:
	ldr r1, [fp, #-4]
	mov r0, #0
	sub r0, r0, #1
	cmp r1, r0
	movne r0, #1
	moveq r0, #0
	bne .L50
	b .L55
.L50:
	ldr r2, [fp, #-12]
	mov r1, #10
	sdiv r0, r2, r1
	mul r0, r0, r1
	sub r2, r2, r0
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-4]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	str r2, [r0]
	ldr r1, [fp, #-12]
	mov r0, #10
	sdiv r0, r1, r0
	str r0, [fp, #-12]
	ldr r0, [fp, #-4]
	sub r0, r0, #1
	str r0, [fp, #-4]
	b .L49
.L51:
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L52:
	b .L51
.L55:
	b .L51
	.global main
	.type main , %function
main:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #28
	lsr sp, sp, #3
	lsl sp, sp, #3
.L56:
	mov r1, #4
	ldr r0, addr_N_0
	str r1, [r0]
	mov r1, #10
	ldr r0, addr_newline_0
	str r1, [r0]
	ldr r0, =1478
	str r0, [fp, #-8]
	ldr r2, [fp, #-8]
	mvn r0, #27
	add r1, fp, r0
	mov r1, r1
	mov r0, r2
	mov r1, r1
	bl split
	mov r0, r0
	str r0, [fp, #-8]
	mov r0, #0
	str r0, [fp, #-12]
	ldr r0, [fp, #-12]
	cmp r0, #4
	movlt r0, #1
	movge r0, #0
	blt .L62
	b .L64
.L61:
	ldr r0, [fp, #-12]
	cmp r0, #4
	movlt r0, #1
	movge r0, #0
	blt .L62
	b .L66
.L62:
	ldr r2, [fp, #-12]
	mvn r0, #27
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	mov r0, r0
	bl putint
	ldr r0, addr_newline_0
	ldr r0, [r0]
	mov r0, r0
	bl putch
	ldr r0, [fp, #-12]
	add r0, r0, #1
	str r0, [fp, #-12]
	b .L61
.L63:
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L64:
	b .L63
.L66:
	b .L63

.LTORG
addr_N_0:
	.word N
addr_newline_0:
	.word newline
