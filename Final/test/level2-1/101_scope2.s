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

	.text
	.global main
	.type main , %function
main:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #16
	lsr sp, sp, #3
	lsl sp, sp, #3
.L31:
	ldr r1, =3389
	ldr r0, addr_k_0
	str r1, [r0]
	ldr r0, addr_k_0
	ldr r1, [r0]
	ldr r0, =10000
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L32
	b .L34
.L32:
	ldr r0, addr_k_0
	ldr r0, [r0]
	add r1, r0, #1
	ldr r0, addr_k_0
	str r1, [r0]
	mov r0, #112
	str r0, [fp, #-16]
	ldr r0, [fp, #-16]
	cmp r0, #10
	movgt r0, #1
	movle r0, #0
	bgt .L37
	b .L39
.L33:
	ldr r0, addr_k_0
	ldr r0, [r0]
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L34:
	b .L33
.L36:
	ldr r0, [fp, #-16]
	cmp r0, #10
	movgt r0, #1
	movle r0, #0
	bgt .L37
	b .L46
.L37:
	ldr r0, [fp, #-16]
	sub r0, r0, #88
	str r0, [fp, #-16]
	ldr r0, [fp, #-16]
	cmp r0, #1000
	movlt r0, #1
	movge r0, #0
	blt .L40
	b .L42
.L38:
	ldr r0, [fp, #-16]
	mov r0, r0
	bl putint
	b .L33
.L39:
	b .L38
.L40:
	mov r0, #9
	str r0, [fp, #-12]
	mov r0, #11
	str r0, [fp, #-8]
	mov r0, #10
	str r0, [fp, #-12]
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-12]
	sub r0, r1, r0
	str r0, [fp, #-16]
	mov r0, #11
	str r0, [fp, #-4]
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-4]
	add r1, r1, r0
	ldr r0, [fp, #-8]
	add r0, r1, r0
	str r0, [fp, #-16]
	b .L41
.L41:
	b .L36
.L42:
	b .L41
.L46:
	b .L38

.LTORG
addr_k_0:
	.word k
