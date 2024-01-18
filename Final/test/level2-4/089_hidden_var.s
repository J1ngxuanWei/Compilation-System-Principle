	.cpu cortex-a72
	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
.data
.global b
.size b, 4
b:
	.word 5
.global c
.size c, 16
c:
	.word 6
	.word 7
	.word 8
	.word 9

	.text
	.global main
	.type main , %function
main:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #220
	lsr sp, sp, #3
	lsl sp, sp, #3
.L36:
	mov r0, #1
	str r0, [fp, #-16]
	mov r0, #2
	str r0, [fp, #-12]
	mov r0, #3
	str r0, [fp, #-12]
	ldr r0, [fp, #-12]
	mov r0, r0
	bl putint
	ldr r0, [fp, #-12]
	mov r0, r0
	bl putint
	ldr r0, [fp, #-16]
	mov r0, r0
	bl putint
	mov r0, #10
	bl putch
	ldr r0, [fp, #-16]
	cmp r0, #5
	movlt r0, #1
	movge r0, #0
	blt .L40
	b .L42
.L39:
	ldr r0, [fp, #-16]
	cmp r0, #5
	movlt r0, #1
	movge r0, #0
	blt .L40
	b .L48
.L40:
	mov r0, #0
	str r0, [fp, #-8]
	ldr r0, [fp, #-8]
	add r0, r0, #1
	str r0, [fp, #-8]
	ldr r0, [fp, #-8]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L44
	b .L46
.L41:
	ldr r0, [fp, #-16]
	mov r0, r0
	bl putint
	mov r0, #10
	bl putch
	ldr r0, addr_c_0
	add r1, r0, #8
	mov r1, r1
	mov r0, #1
	str r0, [r1]
	mvn r0, #79
	add r0, fp, r0
	mov r0, r0
	ldr r0, =-80
	add r0, fp, r0
	mov r1, #0
	mov r2, #64
	bl memset
	mvn r0, #79
	add r1, fp, r0
	mov r1, r1
	mov r0, #0
	str r0, [r1]
	mvn r0, #79
	add r0, fp, r0
	add r1, r0, #4
	mov r1, r1
	mov r0, #9
	str r0, [r1]
	mvn r0, #79
	add r0, fp, r0
	add r1, r0, #32
	mov r1, r1
	mov r0, #8
	str r0, [r1]
	mvn r0, #79
	add r0, fp, r0
	add r1, r0, #36
	mov r1, r1
	mov r0, #3
	str r0, [r1]
	mov r0, #2
	str r0, [fp, #-4]
	ldr r0, addr_c_0
	add r0, r0, #8
	mov r0, r0
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L57
	b .L60
.L42:
	b .L41
.L44:
	b .L41
.L45:
	b .L39
.L46:
	b .L45
.L48:
	b .L41
.L57:
	mvn r0, #219
	add r0, fp, r0
	mov r0, r0
	ldr r0, =-220
	add r0, fp, r0
	mov r1, #0
	mov r2, #140
	bl memset
	mvn r0, #219
	add r0, fp, r0
	add r1, r0, #40
	mov r1, r1
	mov r0, #2
	str r0, [r1]
	mvn r0, #219
	add r0, fp, r0
	add r1, r0, #44
	mov r1, r1
	mov r0, #1
	str r0, [r1]
	mvn r0, #219
	add r0, fp, r0
	add r1, r0, #48
	mov r1, r1
	mov r0, #8
	str r0, [r1]
	ldr r2, [fp, #-4]
	mvn r0, #219
	add r1, fp, r0
	mov r0, #20
	mul r0, r2, r0
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	mov r0, r0
	bl putint
	ldr r2, [fp, #-4]
	mvn r0, #219
	add r1, fp, r0
	mov r0, #20
	mul r0, r2, r0
	add r0, r1, r0
	add r0, r0, #4
	mov r0, r0
	ldr r0, [r0]
	mov r0, r0
	bl putint
	ldr r2, [fp, #-4]
	mvn r0, #219
	add r1, fp, r0
	mov r0, #20
	mul r0, r2, r0
	add r0, r1, r0
	add r0, r0, #8
	mov r0, r0
	ldr r0, [r0]
	mov r0, r0
	bl putint
	b .L58
.L58:
	mov r0, #10
	bl putch
	ldr r0, addr_b_0
	ldr r0, [r0]
	mov r0, r0
	bl putint
	mov r0, #10
	bl putch
	ldr r0, addr_c_0
	mov r0, r0
	ldr r0, [r0]
	mov r0, r0
	bl putint
	ldr r0, addr_c_0
	add r0, r0, #4
	mov r0, r0
	ldr r0, [r0]
	mov r0, r0
	bl putint
	ldr r0, addr_c_0
	add r0, r0, #8
	mov r0, r0
	ldr r0, [r0]
	mov r0, r0
	bl putint
	ldr r0, addr_c_0
	add r0, r0, #12
	mov r0, r0
	ldr r0, [r0]
	mov r0, r0
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L60:
	b .L58

.LTORG
addr_b_0:
	.word b
addr_c_0:
	.word c
