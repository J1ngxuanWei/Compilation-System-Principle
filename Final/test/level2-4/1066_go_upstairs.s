	.cpu cortex-a72
	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm

	.text
	.global climbStairs
	.type climbStairs , %function
climbStairs:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #48
	lsr sp, sp, #3
	lsl sp, sp, #3
.L36:
	str r0, [fp, #-8]
	ldr r0, [fp, #-8]
	cmp r0, #4
	movlt r0, #1
	movge r0, #0
	blt .L38
	b .L40
.L38:
	ldr r0, [fp, #-8]
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
	b .L39
.L39:
	mvn r0, #47
	add r1, fp, r0
	mov r1, r1
	mov r0, #0
	str r0, [r1]
	mvn r0, #47
	add r0, fp, r0
	add r1, r0, #4
	mov r1, r1
	mov r0, #1
	str r0, [r1]
	mvn r0, #47
	add r0, fp, r0
	add r1, r0, #8
	mov r1, r1
	mov r0, #2
	str r0, [r1]
	mov r0, #3
	str r0, [fp, #-4]
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-8]
	add r0, r0, #1
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L47
	b .L49
.L40:
	b .L39
.L46:
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-8]
	add r0, r0, #1
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L47
	b .L53
.L47:
	ldr r0, [fp, #-4]
	sub r2, r0, #1
	mvn r0, #47
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r3, [r0]
	ldr r0, [fp, #-4]
	sub r2, r0, #2
	mvn r0, #47
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	add r3, r3, r0
	ldr r2, [fp, #-4]
	mvn r0, #47
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	str r3, [r0]
	ldr r0, [fp, #-4]
	add r0, r0, #1
	str r0, [fp, #-4]
	b .L46
.L48:
	ldr r2, [fp, #-8]
	mvn r0, #47
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L49:
	b .L48
.L53:
	b .L48
	.global main
	.type main , %function
main:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #8
	lsr sp, sp, #3
	lsl sp, sp, #3
.L55:
	mov r0, #5
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	mov r0, r0
	bl climbStairs
	mov r0, r0
	str r0, [fp, #-8]
	ldr r0, [fp, #-8]
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr

.LTORG
