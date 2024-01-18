	.cpu cortex-a72
	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
.data
.global a
.size a, 4
a:
	.word 0

	.text
	.global main
	.type main , %function
main:
	push {fp, lr}
	mov fp, sp
	lsr sp, sp, #3
	lsl sp, sp, #3
.L4:
	mov r1, #10
	ldr r0, addr_a_0
	str r1, [r0]
	ldr r0, addr_a_0
	ldr r0, [r0]
	cmp r0, #0
	movgt r0, #1
	movle r0, #0
	bgt .L5
	b .L8
.L5:
	mov r0, #1
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
	b .L7
.L6:
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
	b .L7
.L7:
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L8:
	b .L6

.LTORG
addr_a_0:
	.word a
