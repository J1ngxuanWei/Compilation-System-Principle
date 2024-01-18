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
	sub sp, sp, #8
	lsr sp, sp, #3
	lsl sp, sp, #3
.L8:
	mov r0, #15
	str r0, [fp, #-8]
	mov r0, #12
	str r0, [fp, #-4]
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-4]
	add r0, r1, r0
	add r0, r0, #61
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr

.LTORG
