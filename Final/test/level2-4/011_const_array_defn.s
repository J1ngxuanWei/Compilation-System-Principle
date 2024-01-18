	.cpu cortex-a72
	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
.section .rodata
.global a
.size a, 20
a:
	.word 0
	.word 1
	.word 2
	.word 3
	.word 4

	.text
	.global main
	.type main , %function
main:
	push {fp, lr}
	mov fp, sp
	lsr sp, sp, #3
	lsl sp, sp, #3
.L2:
	ldr r0, addr_a_0
	add r0, r0, #16
	mov r0, r0
	ldr r0, [r0]
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr

.LTORG
addr_a_0:
	.word a
