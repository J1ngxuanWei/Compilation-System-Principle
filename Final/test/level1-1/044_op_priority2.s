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
	sub sp, sp, #16
	lsr sp, sp, #3
	lsl sp, sp, #3
.L15:
	mov r0, #10
	str r0, [fp, #-16]
	mov r0, #4
	str r0, [fp, #-12]
	mov r0, #2
	str r0, [fp, #-8]
	mov r0, #2
	str r0, [fp, #-4]
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-16]
	add r2, r1, r0
	ldr r1, [fp, #-12]
	ldr r0, [fp, #-4]
	sub r0, r1, r0
	mul r0, r2, r0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr

.LTORG