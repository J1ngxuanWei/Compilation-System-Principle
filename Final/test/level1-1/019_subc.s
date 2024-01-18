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
	sub sp, sp, #4
	lsr sp, sp, #3
	lsl sp, sp, #3
.L4:
	mov r0, #10
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	sub r0, r0, #2
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr

.LTORG
