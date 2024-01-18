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
	.global factor
	.type factor , %function
factor:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #12
	lsr sp, sp, #3
	lsl sp, sp, #3
.L32:
	str r0, [fp, #-12]
	mov r0, #0
	str r0, [fp, #-4]
	mov r0, #1
	str r0, [fp, #-8]
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-12]
	add r0, r0, #1
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L37
	b .L39
.L36:
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-12]
	add r0, r0, #1
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L37
	b .L43
.L37:
	ldr r2, [fp, #-12]
	ldr r1, [fp, #-8]
	sdiv r0, r2, r1
	mul r0, r0, r1
	sub r0, r2, r0
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	beq .L40
	b .L42
.L38:
	ldr r0, [fp, #-4]
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L39:
	b .L38
.L40:
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-8]
	add r0, r1, r0
	str r0, [fp, #-4]
	b .L41
.L41:
	ldr r0, [fp, #-8]
	add r0, r0, #1
	str r0, [fp, #-8]
	b .L36
.L42:
	b .L41
.L43:
	b .L38
	.global main
	.type main , %function
main:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #12
	lsr sp, sp, #3
	lsl sp, sp, #3
.L44:
	mov r1, #4
	ldr r0, addr_N_0
	str r1, [r0]
	mov r1, #10
	ldr r0, addr_newline_0
	str r1, [r0]
	ldr r0, =1478
	str r0, [fp, #-8]
	ldr r0, [fp, #-8]
	mov r0, r0
	bl factor
	mov r0, r0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr

.LTORG
addr_N_0:
	.word N
addr_newline_0:
	.word newline
