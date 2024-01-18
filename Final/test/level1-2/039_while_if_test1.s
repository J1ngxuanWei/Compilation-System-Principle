	.cpu cortex-a72
	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm

	.text
	.global whileIf
	.type whileIf , %function
whileIf:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #8
	lsr sp, sp, #3
	lsl sp, sp, #3
.L20:
	mov r0, #0
	str r0, [fp, #-8]
	mov r0, #0
	str r0, [fp, #-4]
	ldr r0, [fp, #-8]
	cmp r0, #100
	movlt r0, #1
	movge r0, #0
	blt .L24
	b .L26
.L23:
	ldr r0, [fp, #-8]
	cmp r0, #100
	movlt r0, #1
	movge r0, #0
	blt .L24
	b .L35
.L24:
	ldr r0, [fp, #-8]
	cmp r0, #5
	moveq r0, #1
	movne r0, #0
	beq .L27
	b .L30
.L25:
	ldr r0, [fp, #-4]
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L26:
	b .L25
.L27:
	mov r0, #25
	str r0, [fp, #-4]
	b .L29
.L28:
	ldr r0, [fp, #-8]
	cmp r0, #10
	moveq r0, #1
	movne r0, #0
	beq .L31
	b .L34
.L29:
	ldr r0, [fp, #-8]
	add r0, r0, #1
	str r0, [fp, #-8]
	b .L23
.L30:
	b .L28
.L31:
	mov r0, #42
	str r0, [fp, #-4]
	b .L33
.L32:
	ldr r0, [fp, #-8]
	lsl r0, r0, #1
	str r0, [fp, #-4]
	b .L33
.L33:
	b .L29
.L34:
	b .L32
.L35:
	b .L25
	.global main
	.type main , %function
main:
	push {fp, lr}
	mov fp, sp
	lsr sp, sp, #3
	lsl sp, sp, #3
.L36:
	bl whileIf
	mov r0, r0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr

.LTORG
