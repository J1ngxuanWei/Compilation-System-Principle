	.cpu cortex-a72
	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm

	.text
	.global exgcd
	.type exgcd , %function
exgcd:
	push {r4, fp, lr}
	mov fp, sp
	sub sp, sp, #24
	lsr sp, sp, #3
	lsl sp, sp, #3
.L52:
	str r0, [fp, #-24]
	str r1, [fp, #-20]
	str r2, [fp, #-16]
	str r3, [fp, #-12]
	ldr r0, [fp, #-20]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	beq .L57
	b .L60
.L57:
	ldr r1, [fp, #-16]
	mov r1, r1
	mov r0, #1
	str r0, [r1]
	ldr r1, [fp, #-12]
	mov r1, r1
	mov r0, #0
	str r0, [r1]
	ldr r0, [fp, #-24]
	mov r0, r0
	mov sp, fp
	pop {r4, fp, lr}
	bx lr
	b .L59
.L58:
	ldr r4, [fp, #-20]
	ldr r2, [fp, #-24]
	ldr r1, [fp, #-20]
	sdiv r0, r2, r1
	mul r0, r0, r1
	sub r1, r2, r0
	ldr r2, [fp, #-16]
	ldr r3, [fp, #-12]
	mov r0, r4
	mov r1, r1
	mov r2, r2
	mov r3, r3
	bl exgcd
	mov r0, r0
	str r0, [fp, #-8]
	ldr r0, [fp, #-16]
	mov r0, r0
	ldr r0, [r0]
	str r0, [fp, #-4]
	ldr r0, [fp, #-12]
	mov r0, r0
	ldr r1, [r0]
	ldr r0, [fp, #-16]
	mov r0, r0
	str r1, [r0]
	ldr r2, [fp, #-4]
	ldr r1, [fp, #-24]
	ldr r0, [fp, #-20]
	sdiv r1, r1, r0
	ldr r0, [fp, #-12]
	mov r0, r0
	ldr r0, [r0]
	mul r0, r1, r0
	sub r1, r2, r0
	ldr r0, [fp, #-12]
	mov r0, r0
	str r1, [r0]
	ldr r0, [fp, #-8]
	mov r0, r0
	mov sp, fp
	pop {r4, fp, lr}
	bx lr
	b .L59
.L59:
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {r4, fp, lr}
	bx lr
.L60:
	b .L58
	.global main
	.type main , %function
main:
	push {r4, fp, lr}
	mov fp, sp
	sub sp, sp, #16
	lsr sp, sp, #3
	lsl sp, sp, #3
.L77:
	mov r0, #7
	str r0, [fp, #-8]
	mov r0, #15
	str r0, [fp, #-4]
	mvn r0, #11
	add r0, fp, r0
	mov r0, r0
	ldr r0, =-12
	add r0, fp, r0
	mov r1, #0
	mov r2, #4
	bl memset
	mvn r0, #11
	add r1, fp, r0
	mov r1, r1
	mov r0, #1
	str r0, [r1]
	mvn r0, #15
	add r0, fp, r0
	mov r0, r0
	ldr r0, =-16
	add r0, fp, r0
	mov r1, #0
	mov r2, #4
	bl memset
	mvn r0, #15
	add r1, fp, r0
	mov r1, r1
	mov r0, #1
	str r0, [r1]
	ldr r4, [fp, #-8]
	ldr r1, [fp, #-4]
	mvn r0, #11
	add r2, fp, r0
	mov r2, r2
	mvn r0, #15
	add r3, fp, r0
	mov r3, r3
	mov r0, r4
	mov r1, r1
	mov r2, r2
	mov r3, r3
	bl exgcd
	mov r0, r0
	mvn r0, #11
	add r0, fp, r0
	mov r0, r0
	ldr r2, [r0]
	ldr r1, [fp, #-4]
	sdiv r0, r2, r1
	mul r0, r0, r1
	sub r1, r2, r0
	ldr r0, [fp, #-4]
	add r2, r1, r0
	ldr r1, [fp, #-4]
	sdiv r0, r2, r1
	mul r0, r0, r1
	sub r1, r2, r0
	mvn r0, #11
	add r0, fp, r0
	mov r0, r0
	str r1, [r0]
	mvn r0, #11
	add r0, fp, r0
	mov r0, r0
	ldr r0, [r0]
	mov r0, r0
	bl putint
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {r4, fp, lr}
	bx lr

.LTORG
