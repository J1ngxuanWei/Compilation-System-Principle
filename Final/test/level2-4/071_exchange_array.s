	.cpu cortex-a72
	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm

	.text
	.global main
	.type main , %function
main:
	push {r4, fp, lr}
	mov fp, sp
	sub sp, sp, #116
	lsr sp, sp, #3
	lsl sp, sp, #3
.L32:
	mvn r0, #115
	add r0, fp, r0
	mov r0, r0
	ldr r0, =-116
	add r0, fp, r0
	mov r1, #0
	mov r2, #100
	bl memset
	mvn r0, #115
	add r1, fp, r0
	mov r1, r1
	mov r0, #1
	str r0, [r1]
	mvn r0, #115
	add r0, fp, r0
	add r1, r0, #4
	mov r1, r1
	mov r0, #1
	str r0, [r1]
	mvn r0, #115
	add r0, fp, r0
	add r1, r0, #8
	mov r1, r1
	mov r0, #1
	str r0, [r1]
	mvn r0, #115
	add r0, fp, r0
	add r1, r0, #12
	mov r1, r1
	mov r0, #1
	str r0, [r1]
	mvn r0, #115
	add r0, fp, r0
	add r1, r0, #16
	mov r1, r1
	mov r0, #1
	str r0, [r1]
	mvn r0, #115
	add r0, fp, r0
	add r1, r0, #20
	mov r1, r1
	mov r0, #2
	str r0, [r1]
	mvn r0, #115
	add r0, fp, r0
	add r1, r0, #24
	mov r1, r1
	mov r0, #2
	str r0, [r1]
	mvn r0, #115
	add r0, fp, r0
	add r1, r0, #28
	mov r1, r1
	mov r0, #2
	str r0, [r1]
	mvn r0, #115
	add r0, fp, r0
	add r1, r0, #32
	mov r1, r1
	mov r0, #2
	str r0, [r1]
	mvn r0, #115
	add r0, fp, r0
	add r1, r0, #36
	mov r1, r1
	mov r0, #2
	str r0, [r1]
	mvn r0, #115
	add r0, fp, r0
	add r1, r0, #40
	mov r1, r1
	mov r0, #3
	str r0, [r1]
	mvn r0, #115
	add r0, fp, r0
	add r1, r0, #44
	mov r1, r1
	mov r0, #3
	str r0, [r1]
	mvn r0, #115
	add r0, fp, r0
	add r1, r0, #48
	mov r1, r1
	mov r0, #3
	str r0, [r1]
	mvn r0, #115
	add r0, fp, r0
	add r1, r0, #52
	mov r1, r1
	mov r0, #3
	str r0, [r1]
	mvn r0, #115
	add r0, fp, r0
	add r1, r0, #56
	mov r1, r1
	mov r0, #3
	str r0, [r1]
	mvn r0, #115
	add r0, fp, r0
	add r1, r0, #60
	mov r1, r1
	mov r0, #4
	str r0, [r1]
	mvn r0, #115
	add r0, fp, r0
	add r1, r0, #64
	mov r1, r1
	mov r0, #4
	str r0, [r1]
	mvn r0, #115
	add r0, fp, r0
	add r1, r0, #68
	mov r1, r1
	mov r0, #4
	str r0, [r1]
	mvn r0, #115
	add r0, fp, r0
	add r1, r0, #72
	mov r1, r1
	mov r0, #4
	str r0, [r1]
	mvn r0, #115
	add r0, fp, r0
	add r1, r0, #76
	mov r1, r1
	mov r0, #4
	str r0, [r1]
	mvn r0, #115
	add r0, fp, r0
	add r1, r0, #80
	mov r1, r1
	mov r0, #5
	str r0, [r1]
	mvn r0, #115
	add r0, fp, r0
	add r1, r0, #84
	mov r1, r1
	mov r0, #5
	str r0, [r1]
	mvn r0, #115
	add r0, fp, r0
	add r1, r0, #88
	mov r1, r1
	mov r0, #5
	str r0, [r1]
	mvn r0, #115
	add r0, fp, r0
	add r1, r0, #92
	mov r1, r1
	mov r0, #5
	str r0, [r1]
	mvn r0, #115
	add r0, fp, r0
	add r1, r0, #96
	mov r1, r1
	mov r0, #5
	str r0, [r1]
	mov r0, #2
	str r0, [fp, #-16]
	mov r0, #3
	str r0, [fp, #-12]
	mov r0, #0
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	cmp r0, #5
	movlt r0, #1
	movge r0, #0
	blt .L65
	b .L67
.L64:
	ldr r0, [fp, #-4]
	cmp r0, #5
	movlt r0, #1
	movge r0, #0
	blt .L65
	b .L72
.L65:
	ldr r0, [fp, #-16]
	sub r3, r0, #1
	ldr r2, [fp, #-4]
	mvn r0, #115
	add r1, fp, r0
	mov r0, #20
	mul r0, r3, r0
	add r1, r1, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	str r0, [fp, #-8]
	ldr r0, [fp, #-12]
	sub r3, r0, #1
	ldr r2, [fp, #-4]
	mvn r0, #115
	add r1, fp, r0
	mov r0, #20
	mul r0, r3, r0
	add r1, r1, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r4, [r0]
	ldr r0, [fp, #-16]
	sub r3, r0, #1
	ldr r2, [fp, #-4]
	mvn r0, #115
	add r1, fp, r0
	mov r0, #20
	mul r0, r3, r0
	add r1, r1, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	str r4, [r0]
	ldr r4, [fp, #-8]
	ldr r0, [fp, #-12]
	sub r3, r0, #1
	ldr r2, [fp, #-4]
	mvn r0, #115
	add r1, fp, r0
	mov r0, #20
	mul r0, r3, r0
	add r1, r1, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	str r4, [r0]
	ldr r0, [fp, #-4]
	add r0, r0, #1
	str r0, [fp, #-4]
	b .L64
.L66:
	mvn r0, #115
	add r0, fp, r0
	add r0, r0, #40
	mov r0, r0
	ldr r0, [r0]
	mov r0, r0
	mov sp, fp
	pop {r4, fp, lr}
	bx lr
.L67:
	b .L66
.L72:
	b .L66

.LTORG
