	.cpu cortex-a72
	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
.data
.global a
.size a, 4
a:
	.word 0

	.text
	.global func
	.type func , %function
func:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #4
	lsr sp, sp, #3
	lsl sp, sp, #3
.L13:
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	sub r0, r0, #1
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
	.global main
	.type main , %function
main:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #4
	lsr sp, sp, #3
	lsl sp, sp, #3
.L15:
	mov r1, #10
	ldr r0, addr_a_0
	str r1, [r0]
	ldr r0, addr_a_0
	ldr r0, [r0]
	mov r0, r0
	bl func
	mov r0, r0
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr

.LTORG
addr_a_0:
	.word a
