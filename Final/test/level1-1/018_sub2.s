	.cpu cortex-a72
	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
.section .rodata
.global a
.size a, 4
a:
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
.L6:
	mov r0, #2
	str r0, [fp, #-4]
	ldr r1, [fp, #-4]
	ldr r0, addr_a_0
	ldr r0, [r0]
	sub r0, r1, r0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr

.LTORG
addr_a_0:
	.word a