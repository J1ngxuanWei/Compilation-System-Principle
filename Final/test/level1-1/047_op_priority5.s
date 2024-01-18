	.cpu cortex-a72
	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
.data
.global a
.size a, 4
a:
	.word 1
.global b
.size b, 4
b:
	.word 0
.global c
.size c, 4
c:
	.word 1
.global d
.size d, 4
d:
	.word 2
.global e
.size e, 4
e:
	.word 4

	.text
	.global main
	.type main , %function
main:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #4
	lsr sp, sp, #3
	lsl sp, sp, #3
.L42:
	mov r0, #0
	str r0, [fp, #-4]
	ldr r0, addr_a_0
	ldr r1, [r0]
	ldr r0, addr_b_0
	ldr r0, [r0]
	mul r1, r1, r0
	ldr r0, addr_c_0
	ldr r0, [r0]
	sdiv r2, r1, r0
	ldr r0, addr_e_0
	ldr r1, [r0]
	ldr r0, addr_d_0
	ldr r0, [r0]
	add r0, r1, r0
	cmp r2, r0
	moveq r0, #1
	movne r0, #0
	beq .L47
	b .L48
.L44:
	mov r0, #1
	str r0, [fp, #-4]
	b .L45
.L45:
	ldr r0, [fp, #-4]
	mov r0, r0
	bl putint
	ldr r0, [fp, #-4]
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L46:
	ldr r0, addr_a_0
	ldr r2, [r0]
	ldr r0, addr_b_0
	ldr r1, [r0]
	ldr r0, addr_c_0
	ldr r0, [r0]
	mul r0, r1, r0
	sub r3, r2, r0
	ldr r0, addr_d_0
	ldr r2, [r0]
	ldr r0, addr_a_0
	ldr r1, [r0]
	ldr r0, addr_c_0
	ldr r0, [r0]
	sdiv r0, r1, r0
	sub r0, r2, r0
	cmp r3, r0
	moveq r0, #1
	movne r0, #0
	beq .L44
	b .L50
.L47:
	ldr r0, addr_a_0
	ldr r2, [r0]
	ldr r0, addr_a_0
	ldr r1, [r0]
	ldr r0, addr_b_0
	ldr r0, [r0]
	add r0, r1, r0
	mul r1, r2, r0
	ldr r0, addr_c_0
	ldr r0, [r0]
	add r2, r1, r0
	ldr r0, addr_d_0
	ldr r1, [r0]
	ldr r0, addr_e_0
	ldr r0, [r0]
	add r0, r1, r0
	cmp r2, r0
	movle r0, #1
	movgt r0, #0
	ble .L44
	b .L49
.L48:
	b .L46
.L49:
	b .L46
.L50:
	b .L45

.LTORG
addr_a_0:
	.word a
addr_b_0:
	.word b
addr_c_0:
	.word c
addr_d_0:
	.word d
addr_e_0:
	.word e
