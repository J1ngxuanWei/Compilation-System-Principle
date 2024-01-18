	.cpu cortex-a72
	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
.data
.global M
.size M, 4
M:
	.word 0
.global L
.size L, 4
L:
	.word 0
.global N
.size N, 4
N:
	.word 0

	.text
	.global mul
	.type mul , %function
mul:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #40
	lsr sp, sp, #3
	lsl sp, sp, #3
.L219:
	str r0, [fp, #-40]
	str r1, [fp, #-36]
	str r2, [fp, #-32]
	str r3, [fp, #-28]
	ldr r0, [fp, #8]
	str r0, [fp, #-24]
	ldr r0, [fp, #12]
	str r0, [fp, #-20]
	ldr r0, [fp, #16]
	str r0, [fp, #-16]
	ldr r0, [fp, #20]
	str r0, [fp, #-12]
	ldr r0, [fp, #24]
	str r0, [fp, #-8]
	mov r0, #0
	str r0, [fp, #-4]
	ldr r0, [fp, #-40]
	mov r0, r0
	ldr r1, [r0]
	ldr r0, [fp, #-28]
	mov r0, r0
	ldr r0, [r0]
	mul r2, r1, r0
	ldr r0, [fp, #-40]
	add r0, r0, #4
	mov r0, r0
	ldr r1, [r0]
	ldr r0, [fp, #-24]
	mov r0, r0
	ldr r0, [r0]
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-40]
	add r0, r0, #8
	mov r0, r0
	ldr r1, [r0]
	ldr r0, [fp, #-20]
	mov r0, r0
	ldr r0, [r0]
	mul r0, r1, r0
	add r1, r2, r0
	ldr r0, [fp, #-16]
	mov r0, r0
	str r1, [r0]
	ldr r0, [fp, #-40]
	mov r0, r0
	ldr r1, [r0]
	ldr r0, [fp, #-28]
	add r0, r0, #4
	mov r0, r0
	ldr r0, [r0]
	mul r2, r1, r0
	ldr r0, [fp, #-40]
	add r0, r0, #4
	mov r0, r0
	ldr r1, [r0]
	ldr r0, [fp, #-24]
	add r0, r0, #4
	mov r0, r0
	ldr r0, [r0]
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-40]
	add r0, r0, #8
	mov r0, r0
	ldr r1, [r0]
	ldr r0, [fp, #-20]
	add r0, r0, #4
	mov r0, r0
	ldr r0, [r0]
	mul r0, r1, r0
	add r1, r2, r0
	ldr r0, [fp, #-16]
	add r0, r0, #4
	mov r0, r0
	str r1, [r0]
	ldr r0, [fp, #-40]
	mov r0, r0
	ldr r1, [r0]
	ldr r0, [fp, #-28]
	add r0, r0, #8
	mov r0, r0
	ldr r0, [r0]
	mul r2, r1, r0
	ldr r0, [fp, #-40]
	add r0, r0, #4
	mov r0, r0
	ldr r1, [r0]
	ldr r0, [fp, #-24]
	add r0, r0, #8
	mov r0, r0
	ldr r0, [r0]
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-40]
	add r0, r0, #8
	mov r0, r0
	ldr r1, [r0]
	ldr r0, [fp, #-20]
	add r0, r0, #8
	mov r0, r0
	ldr r0, [r0]
	mul r0, r1, r0
	add r1, r2, r0
	ldr r0, [fp, #-16]
	add r0, r0, #8
	mov r0, r0
	str r1, [r0]
	ldr r0, [fp, #-36]
	mov r0, r0
	ldr r1, [r0]
	ldr r0, [fp, #-28]
	mov r0, r0
	ldr r0, [r0]
	mul r2, r1, r0
	ldr r0, [fp, #-36]
	add r0, r0, #4
	mov r0, r0
	ldr r1, [r0]
	ldr r0, [fp, #-24]
	mov r0, r0
	ldr r0, [r0]
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-36]
	add r0, r0, #8
	mov r0, r0
	ldr r1, [r0]
	ldr r0, [fp, #-20]
	mov r0, r0
	ldr r0, [r0]
	mul r0, r1, r0
	add r1, r2, r0
	ldr r0, [fp, #-12]
	mov r0, r0
	str r1, [r0]
	ldr r0, [fp, #-36]
	mov r0, r0
	ldr r1, [r0]
	ldr r0, [fp, #-28]
	add r0, r0, #4
	mov r0, r0
	ldr r0, [r0]
	mul r2, r1, r0
	ldr r0, [fp, #-36]
	add r0, r0, #4
	mov r0, r0
	ldr r1, [r0]
	ldr r0, [fp, #-24]
	add r0, r0, #4
	mov r0, r0
	ldr r0, [r0]
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-36]
	add r0, r0, #8
	mov r0, r0
	ldr r1, [r0]
	ldr r0, [fp, #-20]
	add r0, r0, #4
	mov r0, r0
	ldr r0, [r0]
	mul r0, r1, r0
	add r1, r2, r0
	ldr r0, [fp, #-12]
	add r0, r0, #4
	mov r0, r0
	str r1, [r0]
	ldr r0, [fp, #-36]
	mov r0, r0
	ldr r1, [r0]
	ldr r0, [fp, #-28]
	add r0, r0, #8
	mov r0, r0
	ldr r0, [r0]
	mul r2, r1, r0
	ldr r0, [fp, #-36]
	add r0, r0, #4
	mov r0, r0
	ldr r1, [r0]
	ldr r0, [fp, #-24]
	add r0, r0, #8
	mov r0, r0
	ldr r0, [r0]
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-36]
	add r0, r0, #8
	mov r0, r0
	ldr r1, [r0]
	ldr r0, [fp, #-20]
	add r0, r0, #8
	mov r0, r0
	ldr r0, [r0]
	mul r0, r1, r0
	add r1, r2, r0
	ldr r0, [fp, #-12]
	add r0, r0, #8
	mov r0, r0
	str r1, [r0]
	ldr r0, [fp, #-32]
	mov r0, r0
	ldr r1, [r0]
	ldr r0, [fp, #-28]
	mov r0, r0
	ldr r0, [r0]
	mul r2, r1, r0
	ldr r0, [fp, #-32]
	add r0, r0, #4
	mov r0, r0
	ldr r1, [r0]
	ldr r0, [fp, #-24]
	mov r0, r0
	ldr r0, [r0]
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-32]
	add r0, r0, #8
	mov r0, r0
	ldr r1, [r0]
	ldr r0, [fp, #-20]
	mov r0, r0
	ldr r0, [r0]
	mul r0, r1, r0
	add r1, r2, r0
	ldr r0, [fp, #-8]
	mov r0, r0
	str r1, [r0]
	ldr r0, [fp, #-32]
	mov r0, r0
	ldr r1, [r0]
	ldr r0, [fp, #-28]
	add r0, r0, #4
	mov r0, r0
	ldr r0, [r0]
	mul r2, r1, r0
	ldr r0, [fp, #-32]
	add r0, r0, #4
	mov r0, r0
	ldr r1, [r0]
	ldr r0, [fp, #-24]
	add r0, r0, #4
	mov r0, r0
	ldr r0, [r0]
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-32]
	add r0, r0, #8
	mov r0, r0
	ldr r1, [r0]
	ldr r0, [fp, #-20]
	add r0, r0, #4
	mov r0, r0
	ldr r0, [r0]
	mul r0, r1, r0
	add r1, r2, r0
	ldr r0, [fp, #-8]
	add r0, r0, #4
	mov r0, r0
	str r1, [r0]
	ldr r0, [fp, #-32]
	mov r0, r0
	ldr r1, [r0]
	ldr r0, [fp, #-28]
	add r0, r0, #8
	mov r0, r0
	ldr r0, [r0]
	mul r2, r1, r0
	ldr r0, [fp, #-32]
	add r0, r0, #4
	mov r0, r0
	ldr r1, [r0]
	ldr r0, [fp, #-24]
	add r0, r0, #8
	mov r0, r0
	ldr r0, [r0]
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-32]
	add r0, r0, #8
	mov r0, r0
	ldr r1, [r0]
	ldr r0, [fp, #-20]
	add r0, r0, #8
	mov r0, r0
	ldr r0, [r0]
	mul r0, r1, r0
	add r1, r2, r0
	ldr r0, [fp, #-8]
	add r0, r0, #8
	mov r0, r0
	str r1, [r0]
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #128
	lsr sp, sp, #3
	lsl sp, sp, #3
.L356:
	mov r1, #3
	ldr r0, addr_N_0
	str r1, [r0]
	mov r1, #3
	ldr r0, addr_M_0
	str r1, [r0]
	mov r1, #3
	ldr r0, addr_L_0
	str r1, [r0]
	mov r0, #0
	str r0, [fp, #-8]
	ldr r1, [fp, #-8]
	ldr r0, addr_M_0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L368
	b .L370
.L367:
	ldr r1, [fp, #-8]
	ldr r0, addr_M_0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L368
	b .L377
.L368:
	ldr r3, [fp, #-8]
	ldr r2, [fp, #-8]
	mvn r0, #19
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	str r3, [r0]
	ldr r3, [fp, #-8]
	ldr r2, [fp, #-8]
	mvn r0, #31
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	str r3, [r0]
	ldr r3, [fp, #-8]
	ldr r2, [fp, #-8]
	mvn r0, #43
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	str r3, [r0]
	ldr r3, [fp, #-8]
	ldr r2, [fp, #-8]
	mvn r0, #55
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	str r3, [r0]
	ldr r3, [fp, #-8]
	ldr r2, [fp, #-8]
	mvn r0, #67
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	str r3, [r0]
	ldr r3, [fp, #-8]
	ldr r2, [fp, #-8]
	mvn r0, #79
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	str r3, [r0]
	ldr r0, [fp, #-8]
	add r0, r0, #1
	str r0, [fp, #-8]
	b .L367
.L369:
	mvn r0, #19
	add r0, fp, r0
	mov r0, r0
	mvn r1, #31
	add r1, fp, r1
	mov r1, r1
	mvn r2, #43
	add r2, fp, r2
	mov r2, r2
	mvn r3, #55
	add r3, fp, r3
	mov r3, r3
	mvn r4, #67
	add r7, fp, r4
	mov r7, r7
	mvn r4, #79
	add r6, fp, r4
	mov r6, r6
	mvn r4, #103
	add r5, fp, r4
	mov r5, r5
	mvn r4, #115
	add r4, fp, r4
	mov r4, r4
	mvn r8, #127
	add r8, fp, r8
	mov r8, r8
	mov r0, r0
	mov r1, r1
	mov r2, r2
	mov r3, r3
	push {r8}
	push {r4}
	push {r5}
	push {r6}
	push {r7}
	bl mul
	add sp, sp, #20
	mov r0, r0
	str r0, [fp, #-8]
	ldr r1, [fp, #-8]
	ldr r0, addr_N_0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L380
	b .L382
.L370:
	b .L369
.L377:
	b .L369
.L379:
	ldr r1, [fp, #-8]
	ldr r0, addr_N_0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L380
	b .L384
.L380:
	ldr r2, [fp, #-8]
	mvn r0, #103
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	mov r0, r0
	bl putint
	ldr r0, [fp, #-8]
	add r0, r0, #1
	str r0, [fp, #-8]
	b .L379
.L381:
	mov r0, #10
	str r0, [fp, #-4]
	mov r0, #0
	str r0, [fp, #-8]
	ldr r0, [fp, #-4]
	mov r0, r0
	bl putch
	ldr r1, [fp, #-8]
	ldr r0, addr_N_0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L386
	b .L388
.L382:
	b .L381
.L384:
	b .L381
.L385:
	ldr r1, [fp, #-8]
	ldr r0, addr_N_0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L386
	b .L390
.L386:
	ldr r2, [fp, #-8]
	mvn r0, #115
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	mov r0, r0
	bl putint
	ldr r0, [fp, #-8]
	add r0, r0, #1
	str r0, [fp, #-8]
	b .L385
.L387:
	mov r0, #10
	str r0, [fp, #-4]
	mov r0, #0
	str r0, [fp, #-8]
	ldr r0, [fp, #-4]
	mov r0, r0
	bl putch
	ldr r1, [fp, #-8]
	ldr r0, addr_N_0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L392
	b .L394
.L388:
	b .L387
.L390:
	b .L387
.L391:
	ldr r1, [fp, #-8]
	ldr r0, addr_N_0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L392
	b .L396
.L392:
	ldr r2, [fp, #-8]
	mvn r0, #127
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	mov r0, r0
	bl putint
	ldr r0, [fp, #-8]
	add r0, r0, #1
	str r0, [fp, #-8]
	b .L391
.L393:
	mov r0, #10
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	mov r0, r0
	bl putch
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L394:
	b .L393
.L396:
	b .L393

.LTORG
addr_M_0:
	.word M
addr_L_0:
	.word L
addr_N_0:
	.word N
