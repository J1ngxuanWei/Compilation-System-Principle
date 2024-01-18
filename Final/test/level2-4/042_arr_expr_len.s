	.cpu cortex-a72
	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
.data
.global arr
.size arr, 24
arr:
	.word 1
	.word 2
	.word 33
	.word 4
	.word 5
	.word 6
.section .rodata
.global N
.size N, 4
N:
	.word -1

	.text
	.global main
	.type main , %function
main:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #8
	lsr sp, sp, #3
	lsl sp, sp, #3
.L21:
	mov r0, #0
	str r0, [fp, #-8]
	mov r0, #0
	str r0, [fp, #-4]
	ldr r0, [fp, #-8]
	cmp r0, #6
	movlt r0, #1
	movge r0, #0
	blt .L25
	b .L27
.L24:
	ldr r0, [fp, #-8]
	cmp r0, #6
	movlt r0, #1
	movge r0, #0
	blt .L25
	b .L29
.L25:
	ldr r2, [fp, #-4]
	ldr r0, [fp, #-8]
	ldr r1, addr_arr_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	add r0, r2, r0
	str r0, [fp, #-4]
	ldr r0, [fp, #-8]
	add r0, r0, #1
	str r0, [fp, #-8]
	b .L24
.L26:
	ldr r0, [fp, #-4]
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L27:
	b .L26
.L29:
	b .L26

.LTORG
addr_N_0:
	.word N
addr_arr_0:
	.word arr
