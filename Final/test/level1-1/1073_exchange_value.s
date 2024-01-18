	.cpu cortex-a72
	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
.data
.global n
.size n, 4
n:
	.word 0

	.text
	.global main
	.type main , %function
main:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #12
	lsr sp, sp, #3
	lsl sp, sp, #3
.L20:
	bl getint
	mov r0, r0
	str r0, [fp, #-12]
	bl getint
	mov r0, r0
	str r0, [fp, #-8]
	ldr r0, [fp, #-12]
	str r0, [fp, #-4]
	ldr r0, [fp, #-8]
	str r0, [fp, #-12]
	ldr r0, [fp, #-4]
	str r0, [fp, #-8]
	ldr r0, [fp, #-12]
	mov r0, r0
	bl putint
	mov r0, #10
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	mov r0, r0
	bl putch
	ldr r0, [fp, #-8]
	mov r0, r0
	bl putint
	mov r0, #10
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	mov r0, r0
	bl putch
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr

.LTORG
addr_n_0:
	.word n
