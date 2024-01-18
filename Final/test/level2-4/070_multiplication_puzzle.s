	.cpu cortex-a72
	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
.data
.global a
.size a, 24
a:
	.word 10
	.word 1
	.word 50
	.word 50
	.word 20
	.word 5
.comm dp, 400

	.text
	.global main
	.type main , %function
main:
	push {r4, fp, lr}
	mov fp, sp
	sub sp, sp, #24
	lsr sp, sp, #3
	lsl sp, sp, #3
.L74:
	mov r0, #6
	str r0, [fp, #-24]
	mov r0, #3
	str r0, [fp, #-20]
	ldr r1, [fp, #-20]
	ldr r0, [fp, #-24]
	cmp r1, r0
	movle r0, #1
	movgt r0, #0
	ble .L82
	b .L84
.L81:
	ldr r1, [fp, #-20]
	ldr r0, [fp, #-24]
	cmp r1, r0
	movle r0, #1
	movgt r0, #0
	ble .L82
	b .L108
.L82:
	mov r0, #0
	str r0, [fp, #-16]
	ldr r2, [fp, #-16]
	ldr r1, [fp, #-24]
	ldr r0, [fp, #-20]
	sub r0, r1, r0
	add r0, r0, #1
	cmp r2, r0
	movlt r0, #1
	movge r0, #0
	blt .L86
	b .L88
.L83:
	ldr r0, [fp, #-24]
	sub r0, r0, #1
	ldr r1, addr_dp_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	mov r0, r0
	bl putint
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {r4, fp, lr}
	bx lr
.L84:
	b .L83
.L85:
	ldr r2, [fp, #-16]
	ldr r1, [fp, #-24]
	ldr r0, [fp, #-20]
	sub r0, r1, r0
	add r0, r0, #1
	cmp r2, r0
	movlt r0, #1
	movge r0, #0
	blt .L86
	b .L107
.L86:
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-20]
	add r0, r1, r0
	sub r0, r0, #1
	str r0, [fp, #-8]
	ldr r0, [fp, #-16]
	add r0, r0, #1
	str r0, [fp, #-12]
	ldr r1, [fp, #-12]
	ldr r0, [fp, #-8]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L90
	b .L92
.L87:
	ldr r0, [fp, #-20]
	add r0, r0, #1
	str r0, [fp, #-20]
	b .L81
.L88:
	b .L87
.L89:
	ldr r1, [fp, #-12]
	ldr r0, [fp, #-8]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L90
	b .L106
.L90:
	ldr r3, [fp, #-16]
	ldr r2, [fp, #-12]
	ldr r1, addr_dp_0
	mov r0, #40
	mul r0, r3, r0
	add r1, r1, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r4, [r0]
	ldr r3, [fp, #-12]
	ldr r2, [fp, #-8]
	ldr r1, addr_dp_0
	mov r0, #40
	mul r0, r3, r0
	add r1, r1, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	add r0, r4, r0
	ldr r1, [fp, #-16]
	ldr r2, addr_a_0
	lsl r1, r1, #2
	add r1, r2, r1
	mov r1, r1
	ldr r3, [r1]
	ldr r1, [fp, #-12]
	ldr r2, addr_a_0
	lsl r1, r1, #2
	add r1, r2, r1
	mov r1, r1
	ldr r1, [r1]
	mul r3, r3, r1
	ldr r1, [fp, #-8]
	ldr r2, addr_a_0
	lsl r1, r1, #2
	add r1, r2, r1
	mov r1, r1
	ldr r1, [r1]
	mul r1, r3, r1
	add r0, r0, r1
	str r0, [fp, #-4]
	ldr r3, [fp, #-16]
	ldr r2, [fp, #-8]
	ldr r1, addr_dp_0
	mov r0, #40
	mul r0, r3, r0
	add r1, r1, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	beq .L98
	b .L102
.L91:
	ldr r0, [fp, #-16]
	add r0, r0, #1
	str r0, [fp, #-16]
	b .L85
.L92:
	b .L91
.L98:
	ldr r4, [fp, #-4]
	ldr r3, [fp, #-16]
	ldr r2, [fp, #-8]
	ldr r1, addr_dp_0
	mov r0, #40
	mul r0, r3, r0
	add r1, r1, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	str r4, [r0]
	b .L99
.L99:
	ldr r0, [fp, #-12]
	add r0, r0, #1
	str r0, [fp, #-12]
	b .L89
.L100:
	ldr r4, [fp, #-4]
	ldr r3, [fp, #-16]
	ldr r2, [fp, #-8]
	ldr r1, addr_dp_0
	mov r0, #40
	mul r0, r3, r0
	add r1, r1, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r4, r0
	movlt r0, #1
	movge r0, #0
	blt .L98
	b .L104
.L102:
	b .L100
.L104:
	b .L99
.L106:
	b .L91
.L107:
	b .L87
.L108:
	b .L83

.LTORG
addr_a_0:
	.word a
addr_dp_0:
	.word dp
