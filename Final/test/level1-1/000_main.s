	.cpu cortex-a72
	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm

	.text
	.global main
	.type main , %function
main:
	push {fp, lr}
	mov fp, sp
	lsr sp, sp, #3
	lsl sp, sp, #3
.L0:
	mov r0, #3
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr

.LTORG
