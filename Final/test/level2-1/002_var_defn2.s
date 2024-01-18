	.cpu cortex-a72
	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
.data
.global a
.size a, 4
a:
	.word 3
.global b
.size b, 4
b:
	.word 5

	.text
	.global main
	.type main , %function
main:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #4
	lsr sp, sp, #3
	lsl sp, sp, #3
.L6:
	mov r0, #5
	str r0, [fp, #-4]
	ldr r1, [fp, #-4]
	ldr r0, addr_b_0
	ldr r0, [r0]
	add r0, r1, r0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr

.LTORG
addr_a_0:
	.word a
addr_b_0:
	.word b
