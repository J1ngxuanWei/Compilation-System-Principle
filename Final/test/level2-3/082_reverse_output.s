	.cpu cortex-a72
	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm

	.text
	.global reverse
	.type reverse , %function
reverse:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #8
	lsr sp, sp, #3
	lsl sp, sp, #3
.L15:
	str r0, [fp, #-8]
	ldr r0, [fp, #-8]
	cmp r0, #1
	movle r0, #1
	movgt r0, #0
	ble .L18
	b .L21
.L18:
	bl getint
	mov r0, r0
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	mov r0, r0
	bl putint
	b .L20
.L19:
	bl getint
	mov r0, r0
	str r0, [fp, #-4]
	ldr r0, [fp, #-8]
	sub r0, r0, #1
	mov r0, r0
	bl reverse
	ldr r0, [fp, #-4]
	mov r0, r0
	bl putint
	b .L20
.L20:
	mov sp, fp
	pop {fp, lr}
	bx lr
.L21:
	b .L19
	.global main
	.type main , %function
main:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #4
	lsr sp, sp, #3
	lsl sp, sp, #3
.L22:
	mov r0, #200
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	mov r0, r0
	bl reverse
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr

.LTORG
