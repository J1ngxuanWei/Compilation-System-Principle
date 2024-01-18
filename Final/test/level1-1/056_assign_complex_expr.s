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
	sub sp, sp, #20
	lsr sp, sp, #3
	lsl sp, sp, #3
.L42:
	mov r0, #5
	str r0, [fp, #-20]
	mov r0, #5
	str r0, [fp, #-16]
	mov r0, #1
	str r0, [fp, #-12]
	mov r0, #0
	sub r0, r0, #2
	str r0, [fp, #-8]
	ldr r0, [fp, #-8]
	mov r0, r0
	ldr r2, =2
	sdiv r2, r0, r2
	ldr r1, [fp, #-20]
	ldr r0, [fp, #-16]
	sub r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-12]
	add r1, r0, #3
	mov r0, #0
	sub r0, r0, r1
	and r0, r0, #1
	sub r0, r2, r0
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	mov r0, r0
	bl putint
	ldr r0, [fp, #-8]
	and r0, r0, #1
	add r2, r0, #67
	ldr r1, [fp, #-20]
	ldr r0, [fp, #-16]
	sub r1, r1, r0
	mov r0, #0
	sub r0, r0, r1
	add r2, r2, r0
	ldr r0, [fp, #-12]
	add r0, r0, #2
	and r1, r0, #1
	mov r0, #0
	sub r0, r0, r1
	sub r0, r2, r0
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	add r0, r0, #3
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	mov r0, r0
	bl putint
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr

.LTORG
