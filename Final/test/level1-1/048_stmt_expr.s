	.cpu cortex-a72
	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
.data
.global k
.size k, 4
k:
	.word 0
.section .rodata
.global n
.size n, 4
n:
	.word 10

	.text
	.global main
	.type main , %function
main:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #4
	lsr sp, sp, #3
	lsl sp, sp, #3
.L19:
	mov r0, #0
	str r0, [fp, #-4]
	mov r1, #1
	ldr r0, addr_k_0
	str r1, [r0]
	ldr r1, [fp, #-4]
	ldr r0, addr_n_0
	ldr r0, [r0]
	sub r0, r0, #1
	cmp r1, r0
	movle r0, #1
	movgt r0, #0
	ble .L22
	b .L24
.L21:
	ldr r1, [fp, #-4]
	ldr r0, addr_n_0
	ldr r0, [r0]
	sub r0, r0, #1
	cmp r1, r0
	movle r0, #1
	movgt r0, #0
	ble .L22
	b .L25
.L22:
	ldr r0, [fp, #-4]
	add r0, r0, #1
	str r0, [fp, #-4]
	ldr r0, addr_k_0
	ldr r0, [r0]
	add r0, r0, #1
	ldr r0, addr_k_0
	ldr r1, [r0]
	ldr r0, addr_k_0
	ldr r0, [r0]
	add r1, r1, r0
	ldr r0, addr_k_0
	str r1, [r0]
	b .L21
.L23:
	ldr r0, addr_k_0
	ldr r0, [r0]
	mov r0, r0
	bl putint
	ldr r0, addr_k_0
	ldr r0, [r0]
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L24:
	b .L23
.L25:
	b .L23

.LTORG
addr_k_0:
	.word k
addr_n_0:
	.word n
