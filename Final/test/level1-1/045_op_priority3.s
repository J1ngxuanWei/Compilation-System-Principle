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
.L11:
	mov r0, #10
	str r0, [fp, #-8]
	mov r0, #30
	str r0, [fp, #-4]
	ldr r1, [fp, #-8]
	mov r0, #0
	sub r0, r0, #5
	sub r1, r1, r0
	ldr r0, [fp, #-4]
	add r1, r1, r0
	mov r0, #0
	sub r0, r0, #5
	add r0, r1, r0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr

.LTORG