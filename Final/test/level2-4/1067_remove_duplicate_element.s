	.cpu cortex-a72
	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm

	.text
	.global removeElement
	.type removeElement , %function
removeElement:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #16
	lsr sp, sp, #3
	lsl sp, sp, #3
.L48:
	str r0, [fp, #-16]
	str r1, [fp, #-12]
	str r2, [fp, #-8]
	mov r0, #0
	str r0, [fp, #-4]
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-12]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L54
	b .L56
.L53:
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-12]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L54
	b .L67
.L54:
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-4]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r1, [r0]
	ldr r0, [fp, #-8]
	cmp r1, r0
	moveq r0, #1
	movne r0, #0
	beq .L57
	b .L62
.L55:
	ldr r0, [fp, #-12]
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L56:
	b .L55
.L57:
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-12]
	sub r0, r0, #1
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r2, [r0]
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-4]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	str r2, [r0]
	ldr r0, [fp, #-12]
	sub r0, r0, #1
	str r0, [fp, #-12]
	b .L59
.L58:
	ldr r0, [fp, #-4]
	add r0, r0, #1
	str r0, [fp, #-4]
	b .L59
.L59:
	b .L53
.L62:
	b .L58
.L67:
	b .L55
	.global main
	.type main , %function
main:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #48
	lsr sp, sp, #3
	lsl sp, sp, #3
.L68:
	mvn r0, #47
	add r1, fp, r0
	mov r1, r1
	mov r0, #3
	str r0, [r1]
	mvn r0, #47
	add r0, fp, r0
	add r1, r0, #4
	mov r1, r1
	mov r0, #3
	str r0, [r1]
	mvn r0, #47
	add r0, fp, r0
	add r1, r0, #8
	mov r1, r1
	mov r0, #9
	str r0, [r1]
	mvn r0, #47
	add r0, fp, r0
	add r1, r0, #12
	mov r1, r1
	mov r0, #0
	str r0, [r1]
	mvn r0, #47
	add r0, fp, r0
	add r1, r0, #16
	mov r1, r1
	mov r0, #0
	str r0, [r1]
	mvn r0, #47
	add r0, fp, r0
	add r1, r0, #20
	mov r1, r1
	mov r0, #1
	str r0, [r1]
	mvn r0, #47
	add r0, fp, r0
	add r1, r0, #24
	mov r1, r1
	mov r0, #1
	str r0, [r1]
	mvn r0, #47
	add r0, fp, r0
	add r1, r0, #28
	mov r1, r1
	mov r0, #5
	str r0, [r1]
	mvn r0, #47
	add r0, fp, r0
	add r1, r0, #32
	mov r1, r1
	mov r0, #7
	str r0, [r1]
	mvn r0, #47
	add r0, fp, r0
	add r1, r0, #36
	mov r1, r1
	mov r0, #8
	str r0, [r1]
	mov r0, #10
	str r0, [fp, #-8]
	mov r0, #3
	str r0, [fp, #-4]
	mvn r0, #47
	add r0, fp, r0
	mov r0, r0
	ldr r1, [fp, #-8]
	ldr r2, [fp, #-4]
	mov r0, r0
	mov r1, r1
	mov r2, r2
	bl removeElement
	mov r0, r0
	str r0, [fp, #-8]
	ldr r0, [fp, #-8]
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr

.LTORG
