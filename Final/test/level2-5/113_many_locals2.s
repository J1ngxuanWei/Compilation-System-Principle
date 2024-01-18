	.cpu cortex-a72
	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
.data
.global n
.size n, 4
n:
	.word 0

	.text
	.global main
	.type main , %function
main:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #132
	lsr sp, sp, #3
	lsl sp, sp, #3
.L164:
	bl getint
	mov r0, r0
	str r0, [fp, #-12]
	ldr r0, [fp, #-12]
	cmp r0, #5
	moveq r0, #1
	movne r0, #0
	beq .L197
	b .L199
.L196:
	ldr r0, [fp, #-12]
	cmp r0, #5
	moveq r0, #1
	movne r0, #0
	beq .L197
	b .L200
.L197:
	ldr r0, [fp, #-12]
	add r0, r0, #1
	str r0, [fp, #-12]
	b .L196
.L198:
	mov r0, #0
	str r0, [fp, #-132]
	ldr r0, [fp, #-132]
	add r0, r0, #1
	str r0, [fp, #-128]
	ldr r0, [fp, #-128]
	add r0, r0, #1
	str r0, [fp, #-124]
	ldr r0, [fp, #-124]
	add r0, r0, #1
	str r0, [fp, #-120]
	ldr r0, [fp, #-120]
	add r0, r0, #1
	str r0, [fp, #-116]
	ldr r0, [fp, #-116]
	add r0, r0, #1
	str r0, [fp, #-112]
	ldr r0, [fp, #-112]
	add r0, r0, #1
	str r0, [fp, #-108]
	ldr r0, [fp, #-108]
	add r0, r0, #1
	str r0, [fp, #-104]
	ldr r0, [fp, #-104]
	add r0, r0, #1
	str r0, [fp, #-100]
	ldr r0, [fp, #-100]
	add r0, r0, #1
	str r0, [fp, #-96]
	ldr r0, [fp, #-96]
	add r0, r0, #1
	str r0, [fp, #-92]
	ldr r0, [fp, #-92]
	add r0, r0, #1
	str r0, [fp, #-88]
	ldr r0, [fp, #-88]
	add r0, r0, #1
	str r0, [fp, #-84]
	ldr r0, [fp, #-84]
	add r0, r0, #1
	str r0, [fp, #-80]
	ldr r0, [fp, #-80]
	add r0, r0, #1
	str r0, [fp, #-76]
	ldr r0, [fp, #-76]
	add r0, r0, #1
	str r0, [fp, #-72]
	ldr r0, [fp, #-72]
	add r0, r0, #1
	str r0, [fp, #-68]
	ldr r0, [fp, #-68]
	add r0, r0, #1
	str r0, [fp, #-64]
	ldr r0, [fp, #-64]
	add r0, r0, #1
	str r0, [fp, #-60]
	ldr r0, [fp, #-60]
	add r0, r0, #1
	str r0, [fp, #-56]
	ldr r0, [fp, #-56]
	add r0, r0, #1
	str r0, [fp, #-52]
	ldr r0, [fp, #-52]
	add r0, r0, #1
	str r0, [fp, #-48]
	ldr r0, [fp, #-48]
	add r0, r0, #1
	str r0, [fp, #-44]
	ldr r0, [fp, #-44]
	add r0, r0, #1
	str r0, [fp, #-40]
	ldr r0, [fp, #-40]
	add r0, r0, #1
	str r0, [fp, #-36]
	ldr r0, [fp, #-36]
	add r0, r0, #1
	str r0, [fp, #-32]
	ldr r0, [fp, #-32]
	add r0, r0, #1
	str r0, [fp, #-28]
	ldr r0, [fp, #-28]
	add r0, r0, #1
	str r0, [fp, #-24]
	ldr r0, [fp, #-24]
	add r0, r0, #1
	str r0, [fp, #-20]
	ldr r0, [fp, #-20]
	add r0, r0, #1
	str r0, [fp, #-16]
	ldr r0, [fp, #-132]
	mov r0, r0
	bl putint
	ldr r0, [fp, #-128]
	mov r0, r0
	bl putint
	ldr r0, [fp, #-124]
	mov r0, r0
	bl putint
	ldr r0, [fp, #-120]
	mov r0, r0
	bl putint
	ldr r0, [fp, #-116]
	mov r0, r0
	bl putint
	ldr r0, [fp, #-112]
	mov r0, r0
	bl putint
	ldr r0, [fp, #-108]
	mov r0, r0
	bl putint
	ldr r0, [fp, #-104]
	mov r0, r0
	bl putint
	ldr r0, [fp, #-100]
	mov r0, r0
	bl putint
	ldr r0, [fp, #-96]
	mov r0, r0
	bl putint
	ldr r0, [fp, #-92]
	mov r0, r0
	bl putint
	ldr r0, [fp, #-88]
	mov r0, r0
	bl putint
	ldr r0, [fp, #-84]
	mov r0, r0
	bl putint
	ldr r0, [fp, #-80]
	mov r0, r0
	bl putint
	ldr r0, [fp, #-76]
	mov r0, r0
	bl putint
	ldr r0, [fp, #-72]
	mov r0, r0
	bl putint
	ldr r0, [fp, #-68]
	mov r0, r0
	bl putint
	ldr r0, [fp, #-64]
	mov r0, r0
	bl putint
	ldr r0, [fp, #-60]
	mov r0, r0
	bl putint
	ldr r0, [fp, #-56]
	mov r0, r0
	bl putint
	ldr r0, [fp, #-52]
	mov r0, r0
	bl putint
	ldr r0, [fp, #-48]
	mov r0, r0
	bl putint
	ldr r0, [fp, #-44]
	mov r0, r0
	bl putint
	ldr r0, [fp, #-40]
	mov r0, r0
	bl putint
	ldr r0, [fp, #-36]
	mov r0, r0
	bl putint
	ldr r0, [fp, #-32]
	mov r0, r0
	bl putint
	ldr r0, [fp, #-28]
	mov r0, r0
	bl putint
	ldr r0, [fp, #-24]
	mov r0, r0
	bl putint
	ldr r0, [fp, #-20]
	mov r0, r0
	bl putint
	ldr r0, [fp, #-16]
	mov r0, r0
	bl putint
	mov r0, #10
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	mov r0, r0
	bl putch
	ldr r0, [fp, #-12]
	mov r0, r0
	bl putint
	ldr r0, [fp, #-4]
	mov r0, r0
	bl putch
	ldr r0, [fp, #-32]
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L199:
	b .L198
.L200:
	b .L198

.LTORG
addr_n_0:
	.word n
