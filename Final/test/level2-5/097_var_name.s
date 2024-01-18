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
	sub sp, sp, #92
	lsr sp, sp, #3
	lsl sp, sp, #3
.L31:
	mov r0, #2
	str r0, [fp, #-12]
	mov r0, #20
	str r0, [fp, #-8]
	mvn r0, #91
	add r0, fp, r0
	mov r0, r0
	ldr r0, =-92
	add r0, fp, r0
	mov r1, #0
	mov r2, #80
	bl memset
	mvn r0, #91
	add r1, fp, r0
	mov r1, r1
	mov r0, #1
	str r0, [r1]
	mvn r0, #91
	add r0, fp, r0
	add r1, r0, #4
	mov r1, r1
	mov r0, #2
	str r0, [r1]
	mov r0, #0
	str r0, [fp, #-4]
	ldr r1, [fp, #-12]
	ldr r0, [fp, #-8]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L40
	b .L42
.L39:
	ldr r1, [fp, #-12]
	ldr r0, [fp, #-8]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L40
	b .L49
.L40:
	ldr r2, [fp, #-12]
	mvn r0, #91
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r3, [r0]
	ldr r0, [fp, #-12]
	sub r2, r0, #1
	mvn r0, #91
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	add r3, r3, r0
	ldr r0, [fp, #-12]
	sub r2, r0, #2
	mvn r0, #91
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	add r3, r3, r0
	ldr r2, [fp, #-12]
	mvn r0, #91
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	str r3, [r0]
	ldr r3, [fp, #-4]
	ldr r2, [fp, #-12]
	mvn r0, #91
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	add r0, r3, r0
	str r0, [fp, #-4]
	ldr r2, [fp, #-12]
	mvn r0, #91
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	mov r0, r0
	bl putint
	mov r0, #10
	bl putch
	ldr r0, [fp, #-12]
	add r0, r0, #1
	str r0, [fp, #-12]
	b .L39
.L41:
	ldr r0, [fp, #-4]
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L42:
	b .L41
.L49:
	b .L41

.LTORG
