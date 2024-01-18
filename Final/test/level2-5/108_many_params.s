	.cpu cortex-a72
	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm

	.text
	.global sort
	.type sort , %function
sort:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #20
	lsr sp, sp, #3
	lsl sp, sp, #3
.L546:
	str r0, [fp, #-20]
	str r1, [fp, #-16]
	mov r0, #0
	str r0, [fp, #-12]
	ldr r1, [fp, #-12]
	ldr r0, [fp, #-16]
	sub r0, r0, #1
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L551
	b .L553
.L550:
	ldr r1, [fp, #-12]
	ldr r0, [fp, #-16]
	sub r0, r0, #1
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L551
	b .L576
.L551:
	ldr r0, [fp, #-12]
	add r0, r0, #1
	str r0, [fp, #-8]
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-16]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L556
	b .L558
.L552:
	mov sp, fp
	pop {fp, lr}
	bx lr
.L553:
	b .L552
.L555:
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-16]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L556
	b .L575
.L556:
	ldr r1, [fp, #-20]
	ldr r0, [fp, #-12]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r2, [r0]
	ldr r1, [fp, #-20]
	ldr r0, [fp, #-8]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r2, r0
	movlt r0, #1
	movge r0, #0
	blt .L559
	b .L565
.L557:
	ldr r0, [fp, #-12]
	add r0, r0, #1
	str r0, [fp, #-12]
	b .L550
.L558:
	b .L557
.L559:
	ldr r1, [fp, #-20]
	ldr r0, [fp, #-12]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	str r0, [fp, #-4]
	ldr r1, [fp, #-20]
	ldr r0, [fp, #-8]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r2, [r0]
	ldr r1, [fp, #-20]
	ldr r0, [fp, #-12]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	str r2, [r0]
	ldr r2, [fp, #-4]
	ldr r1, [fp, #-20]
	ldr r0, [fp, #-8]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	str r2, [r0]
	b .L560
.L560:
	ldr r0, [fp, #-8]
	add r0, r0, #1
	str r0, [fp, #-8]
	b .L555
.L565:
	b .L560
.L575:
	b .L557
.L576:
	b .L552
	.global param32_rec
	.type param32_rec , %function
param32_rec:
	push {r4, r5, r6, r7, r8, r9, r10, fp, ip, lr}
	mov fp, sp
	sub sp, sp, #208
	lsr sp, sp, #3
	lsl sp, sp, #3
.L577:
	str r0, [fp, #-128]
	str r1, [fp, #-124]
	str r2, [fp, #-120]
	str r3, [fp, #-116]
	ldr r0, [fp, #40]
	str r0, [fp, #-112]
	ldr r0, [fp, #44]
	str r0, [fp, #-108]
	ldr r0, [fp, #48]
	str r0, [fp, #-104]
	ldr r0, [fp, #52]
	str r0, [fp, #-100]
	ldr r0, [fp, #56]
	str r0, [fp, #-96]
	ldr r0, [fp, #60]
	str r0, [fp, #-92]
	ldr r0, [fp, #64]
	str r0, [fp, #-88]
	ldr r0, [fp, #68]
	str r0, [fp, #-84]
	ldr r0, [fp, #72]
	str r0, [fp, #-80]
	ldr r0, [fp, #76]
	str r0, [fp, #-76]
	ldr r0, [fp, #80]
	str r0, [fp, #-72]
	ldr r0, [fp, #84]
	str r0, [fp, #-68]
	ldr r0, [fp, #88]
	str r0, [fp, #-64]
	ldr r0, [fp, #92]
	str r0, [fp, #-60]
	ldr r0, [fp, #96]
	str r0, [fp, #-56]
	ldr r0, [fp, #100]
	str r0, [fp, #-52]
	ldr r0, [fp, #104]
	str r0, [fp, #-48]
	ldr r0, [fp, #108]
	str r0, [fp, #-44]
	ldr r0, [fp, #112]
	str r0, [fp, #-40]
	ldr r0, [fp, #116]
	str r0, [fp, #-36]
	ldr r0, [fp, #120]
	str r0, [fp, #-32]
	ldr r0, [fp, #124]
	str r0, [fp, #-28]
	ldr r0, [fp, #128]
	str r0, [fp, #-24]
	ldr r0, [fp, #132]
	str r0, [fp, #-20]
	ldr r0, [fp, #136]
	str r0, [fp, #-16]
	ldr r0, [fp, #140]
	str r0, [fp, #-12]
	ldr r0, [fp, #144]
	str r0, [fp, #-8]
	ldr r0, [fp, #148]
	str r0, [fp, #-4]
	ldr r0, [fp, #-128]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	beq .L610
	b .L613
.L610:
	ldr r0, [fp, #-124]
	mov r0, r0
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, ip, lr}
	bx lr
	b .L612
.L611:
	ldr r0, [fp, #-128]
	sub r0, r0, #1
	ldr r2, [fp, #-124]
	ldr r1, [fp, #-120]
	add r3, r2, r1
	ldr r2, =998244353
	sdiv r1, r3, r2
	mul r1, r1, r2
	sub r1, r3, r1
	ldr r2, [fp, #-116]
	ldr r3, [fp, #-112]
	ldr ip, [fp, #-108]
	ldr r10, [fp, #-104]
	ldr r9, [fp, #-100]
	ldr r8, [fp, #-96]
	ldr r7, [fp, #-92]
	ldr r6, [fp, #-88]
	ldr r5, [fp, #-84]
	ldr r4, [fp, #-80]
	ldr lr, [fp, #-76]
	str lr, [fp, #-208]
	ldr lr, [fp, #-72]
	str lr, [fp, #-132]
	ldr lr, [fp, #-68]
	str lr, [fp, #-136]
	ldr lr, [fp, #-64]
	str lr, [fp, #-140]
	ldr lr, [fp, #-60]
	str lr, [fp, #-144]
	ldr lr, [fp, #-56]
	str lr, [fp, #-148]
	ldr lr, [fp, #-52]
	str lr, [fp, #-152]
	ldr lr, [fp, #-48]
	str lr, [fp, #-156]
	ldr lr, [fp, #-44]
	str lr, [fp, #-160]
	ldr lr, [fp, #-40]
	str lr, [fp, #-164]
	ldr lr, [fp, #-36]
	str lr, [fp, #-168]
	ldr lr, [fp, #-32]
	str lr, [fp, #-172]
	ldr lr, [fp, #-28]
	str lr, [fp, #-176]
	ldr lr, [fp, #-24]
	str lr, [fp, #-180]
	ldr lr, [fp, #-20]
	str lr, [fp, #-184]
	ldr lr, [fp, #-16]
	str lr, [fp, #-188]
	ldr lr, [fp, #-12]
	str lr, [fp, #-192]
	ldr lr, [fp, #-8]
	str lr, [fp, #-196]
	ldr lr, [fp, #-4]
	str lr, [fp, #-200]
	mov r0, r0
	mov r1, r1
	mov r2, r2
	mov r3, r3
	mov lr, #0
	str lr, [fp, #-204]
	ldr lr, [fp, #-204]
	push {lr}
	ldr lr, [fp, #-200]
	push {lr}
	ldr lr, [fp, #-196]
	push {lr}
	ldr lr, [fp, #-192]
	push {lr}
	ldr lr, [fp, #-188]
	push {lr}
	ldr lr, [fp, #-184]
	push {lr}
	ldr lr, [fp, #-180]
	push {lr}
	ldr lr, [fp, #-176]
	push {lr}
	ldr lr, [fp, #-172]
	push {lr}
	ldr lr, [fp, #-168]
	push {lr}
	ldr lr, [fp, #-164]
	push {lr}
	ldr lr, [fp, #-160]
	push {lr}
	ldr lr, [fp, #-156]
	push {lr}
	ldr lr, [fp, #-152]
	push {lr}
	ldr lr, [fp, #-148]
	push {lr}
	ldr lr, [fp, #-144]
	push {lr}
	ldr lr, [fp, #-140]
	push {lr}
	ldr lr, [fp, #-136]
	push {lr}
	ldr lr, [fp, #-132]
	push {lr}
	ldr lr, [fp, #-208]
	push {lr}
	push {r4}
	push {r5}
	push {r6}
	push {r7}
	push {r8}
	push {r9}
	push {r10}
	push {ip}
	bl param32_rec
	add sp, sp, #112
	mov r0, r0
	mov r0, r0
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, ip, lr}
	bx lr
	b .L612
.L612:
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, ip, lr}
	bx lr
.L613:
	b .L611
	.global param32_arr
	.type param32_arr , %function
param32_arr:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #132
	lsr sp, sp, #3
	lsl sp, sp, #3
.L614:
	str r0, [fp, #-132]
	str r1, [fp, #-128]
	str r2, [fp, #-124]
	str r3, [fp, #-120]
	ldr r0, [fp, #8]
	str r0, [fp, #-116]
	ldr r0, [fp, #12]
	str r0, [fp, #-112]
	ldr r0, [fp, #16]
	str r0, [fp, #-108]
	ldr r0, [fp, #20]
	str r0, [fp, #-104]
	ldr r0, [fp, #24]
	str r0, [fp, #-100]
	ldr r0, [fp, #28]
	str r0, [fp, #-96]
	ldr r0, [fp, #32]
	str r0, [fp, #-92]
	ldr r0, [fp, #36]
	str r0, [fp, #-88]
	ldr r0, [fp, #40]
	str r0, [fp, #-84]
	ldr r0, [fp, #44]
	str r0, [fp, #-80]
	ldr r0, [fp, #48]
	str r0, [fp, #-76]
	ldr r0, [fp, #52]
	str r0, [fp, #-72]
	ldr r0, [fp, #56]
	str r0, [fp, #-68]
	ldr r0, [fp, #60]
	str r0, [fp, #-64]
	ldr r0, [fp, #64]
	str r0, [fp, #-60]
	ldr r0, [fp, #68]
	str r0, [fp, #-56]
	ldr r0, [fp, #72]
	str r0, [fp, #-52]
	ldr r0, [fp, #76]
	str r0, [fp, #-48]
	ldr r0, [fp, #80]
	str r0, [fp, #-44]
	ldr r0, [fp, #84]
	str r0, [fp, #-40]
	ldr r0, [fp, #88]
	str r0, [fp, #-36]
	ldr r0, [fp, #92]
	str r0, [fp, #-32]
	ldr r0, [fp, #96]
	str r0, [fp, #-28]
	ldr r0, [fp, #100]
	str r0, [fp, #-24]
	ldr r0, [fp, #104]
	str r0, [fp, #-20]
	ldr r0, [fp, #108]
	str r0, [fp, #-16]
	ldr r0, [fp, #112]
	str r0, [fp, #-12]
	ldr r0, [fp, #116]
	str r0, [fp, #-8]
	ldr r0, [fp, #-132]
	mov r0, r0
	ldr r1, [r0]
	ldr r0, [fp, #-132]
	add r0, r0, #4
	mov r0, r0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-4]
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-128]
	mov r0, r0
	ldr r0, [r0]
	add r1, r1, r0
	ldr r0, [fp, #-128]
	add r0, r0, #4
	mov r0, r0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-4]
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-124]
	mov r0, r0
	ldr r0, [r0]
	add r1, r1, r0
	ldr r0, [fp, #-124]
	add r0, r0, #4
	mov r0, r0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-4]
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-120]
	mov r0, r0
	ldr r0, [r0]
	add r1, r1, r0
	ldr r0, [fp, #-120]
	add r0, r0, #4
	mov r0, r0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-4]
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-116]
	mov r0, r0
	ldr r0, [r0]
	add r1, r1, r0
	ldr r0, [fp, #-116]
	add r0, r0, #4
	mov r0, r0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-4]
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-112]
	mov r0, r0
	ldr r0, [r0]
	add r1, r1, r0
	ldr r0, [fp, #-112]
	add r0, r0, #4
	mov r0, r0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-4]
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-108]
	mov r0, r0
	ldr r0, [r0]
	add r1, r1, r0
	ldr r0, [fp, #-108]
	add r0, r0, #4
	mov r0, r0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-4]
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-104]
	mov r0, r0
	ldr r0, [r0]
	add r1, r1, r0
	ldr r0, [fp, #-104]
	add r0, r0, #4
	mov r0, r0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-4]
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-100]
	mov r0, r0
	ldr r0, [r0]
	add r1, r1, r0
	ldr r0, [fp, #-100]
	add r0, r0, #4
	mov r0, r0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-4]
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-96]
	mov r0, r0
	ldr r0, [r0]
	add r1, r1, r0
	ldr r0, [fp, #-96]
	add r0, r0, #4
	mov r0, r0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-4]
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-92]
	mov r0, r0
	ldr r0, [r0]
	add r1, r1, r0
	ldr r0, [fp, #-92]
	add r0, r0, #4
	mov r0, r0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-4]
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-88]
	mov r0, r0
	ldr r0, [r0]
	add r1, r1, r0
	ldr r0, [fp, #-88]
	add r0, r0, #4
	mov r0, r0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-4]
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-84]
	mov r0, r0
	ldr r0, [r0]
	add r1, r1, r0
	ldr r0, [fp, #-84]
	add r0, r0, #4
	mov r0, r0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-4]
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-80]
	mov r0, r0
	ldr r0, [r0]
	add r1, r1, r0
	ldr r0, [fp, #-80]
	add r0, r0, #4
	mov r0, r0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-4]
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-76]
	mov r0, r0
	ldr r0, [r0]
	add r1, r1, r0
	ldr r0, [fp, #-76]
	add r0, r0, #4
	mov r0, r0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-4]
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-72]
	mov r0, r0
	ldr r0, [r0]
	add r1, r1, r0
	ldr r0, [fp, #-72]
	add r0, r0, #4
	mov r0, r0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-4]
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-68]
	mov r0, r0
	ldr r0, [r0]
	add r1, r1, r0
	ldr r0, [fp, #-68]
	add r0, r0, #4
	mov r0, r0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-4]
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-64]
	mov r0, r0
	ldr r0, [r0]
	add r1, r1, r0
	ldr r0, [fp, #-64]
	add r0, r0, #4
	mov r0, r0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-4]
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-60]
	mov r0, r0
	ldr r0, [r0]
	add r1, r1, r0
	ldr r0, [fp, #-60]
	add r0, r0, #4
	mov r0, r0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-4]
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-56]
	mov r0, r0
	ldr r0, [r0]
	add r1, r1, r0
	ldr r0, [fp, #-56]
	add r0, r0, #4
	mov r0, r0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-4]
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-52]
	mov r0, r0
	ldr r0, [r0]
	add r1, r1, r0
	ldr r0, [fp, #-52]
	add r0, r0, #4
	mov r0, r0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-4]
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-48]
	mov r0, r0
	ldr r0, [r0]
	add r1, r1, r0
	ldr r0, [fp, #-48]
	add r0, r0, #4
	mov r0, r0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-4]
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-44]
	mov r0, r0
	ldr r0, [r0]
	add r1, r1, r0
	ldr r0, [fp, #-44]
	add r0, r0, #4
	mov r0, r0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-4]
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-40]
	mov r0, r0
	ldr r0, [r0]
	add r1, r1, r0
	ldr r0, [fp, #-40]
	add r0, r0, #4
	mov r0, r0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-4]
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-36]
	mov r0, r0
	ldr r0, [r0]
	add r1, r1, r0
	ldr r0, [fp, #-36]
	add r0, r0, #4
	mov r0, r0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-4]
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-32]
	mov r0, r0
	ldr r0, [r0]
	add r1, r1, r0
	ldr r0, [fp, #-32]
	add r0, r0, #4
	mov r0, r0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-4]
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-28]
	mov r0, r0
	ldr r0, [r0]
	add r1, r1, r0
	ldr r0, [fp, #-28]
	add r0, r0, #4
	mov r0, r0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-4]
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-24]
	mov r0, r0
	ldr r0, [r0]
	add r1, r1, r0
	ldr r0, [fp, #-24]
	add r0, r0, #4
	mov r0, r0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-4]
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-20]
	mov r0, r0
	ldr r0, [r0]
	add r1, r1, r0
	ldr r0, [fp, #-20]
	add r0, r0, #4
	mov r0, r0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-4]
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-16]
	mov r0, r0
	ldr r0, [r0]
	add r1, r1, r0
	ldr r0, [fp, #-16]
	add r0, r0, #4
	mov r0, r0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-4]
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-12]
	mov r0, r0
	ldr r0, [r0]
	add r1, r1, r0
	ldr r0, [fp, #-12]
	add r0, r0, #4
	mov r0, r0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-4]
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-8]
	mov r0, r0
	ldr r0, [r0]
	add r1, r1, r0
	ldr r0, [fp, #-8]
	add r0, r0, #4
	mov r0, r0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
	.global param16
	.type param16 , %function
param16:
	push {r4, r5, r6, r7, r8, r9, r10, fp, ip, lr}
	mov fp, sp
	sub sp, sp, #244
	lsr sp, sp, #3
	lsl sp, sp, #3
.L776:
	str r0, [fp, #-64]
	str r1, [fp, #-60]
	str r2, [fp, #-56]
	str r3, [fp, #-52]
	ldr r0, [fp, #40]
	str r0, [fp, #-48]
	ldr r0, [fp, #44]
	str r0, [fp, #-44]
	ldr r0, [fp, #48]
	str r0, [fp, #-40]
	ldr r0, [fp, #52]
	str r0, [fp, #-36]
	ldr r0, [fp, #56]
	str r0, [fp, #-32]
	ldr r0, [fp, #60]
	str r0, [fp, #-28]
	ldr r0, [fp, #64]
	str r0, [fp, #-24]
	ldr r0, [fp, #68]
	str r0, [fp, #-20]
	ldr r0, [fp, #72]
	str r0, [fp, #-16]
	ldr r0, [fp, #76]
	str r0, [fp, #-12]
	ldr r0, [fp, #80]
	str r0, [fp, #-8]
	ldr r0, [fp, #84]
	str r0, [fp, #-4]
	mvn r0, #127
	add r0, fp, r0
	mov r0, r0
	ldr r0, =-128
	add r0, fp, r0
	mov r1, #0
	mov r2, #64
	bl memset
	mvn r0, #127
	add r1, fp, r0
	mov r1, r1
	ldr r0, [fp, #-64]
	str r0, [r1]
	mvn r0, #127
	add r0, fp, r0
	add r1, r0, #4
	mov r1, r1
	ldr r0, [fp, #-60]
	str r0, [r1]
	mvn r0, #127
	add r0, fp, r0
	add r1, r0, #8
	mov r1, r1
	ldr r0, [fp, #-56]
	str r0, [r1]
	mvn r0, #127
	add r0, fp, r0
	add r1, r0, #12
	mov r1, r1
	ldr r0, [fp, #-52]
	str r0, [r1]
	mvn r0, #127
	add r0, fp, r0
	add r1, r0, #16
	mov r1, r1
	ldr r0, [fp, #-48]
	str r0, [r1]
	mvn r0, #127
	add r0, fp, r0
	add r1, r0, #20
	mov r1, r1
	ldr r0, [fp, #-44]
	str r0, [r1]
	mvn r0, #127
	add r0, fp, r0
	add r1, r0, #24
	mov r1, r1
	ldr r0, [fp, #-40]
	str r0, [r1]
	mvn r0, #127
	add r0, fp, r0
	add r1, r0, #28
	mov r1, r1
	ldr r0, [fp, #-36]
	str r0, [r1]
	mvn r0, #127
	add r0, fp, r0
	add r1, r0, #32
	mov r1, r1
	ldr r0, [fp, #-32]
	str r0, [r1]
	mvn r0, #127
	add r0, fp, r0
	add r1, r0, #36
	mov r1, r1
	ldr r0, [fp, #-28]
	str r0, [r1]
	mvn r0, #127
	add r0, fp, r0
	add r1, r0, #40
	mov r1, r1
	ldr r0, [fp, #-24]
	str r0, [r1]
	mvn r0, #127
	add r0, fp, r0
	add r1, r0, #44
	mov r1, r1
	ldr r0, [fp, #-20]
	str r0, [r1]
	mvn r0, #127
	add r0, fp, r0
	add r1, r0, #48
	mov r1, r1
	ldr r0, [fp, #-16]
	str r0, [r1]
	mvn r0, #127
	add r0, fp, r0
	add r1, r0, #52
	mov r1, r1
	ldr r0, [fp, #-12]
	str r0, [r1]
	mvn r0, #127
	add r0, fp, r0
	add r1, r0, #56
	mov r1, r1
	ldr r0, [fp, #-8]
	str r0, [r1]
	mvn r0, #127
	add r0, fp, r0
	add r1, r0, #60
	mov r1, r1
	ldr r0, [fp, #-4]
	str r0, [r1]
	mvn r0, #127
	add r0, fp, r0
	mov r0, r0
	mov r0, r0
	mov r1, #16
	bl sort
	mvn r0, #127
	add r0, fp, r0
	mov r0, r0
	ldr r0, [r0]
	mvn r1, #127
	add r1, fp, r1
	add r1, r1, #4
	mov r1, r1
	ldr r1, [r1]
	mvn r2, #127
	add r2, fp, r2
	add r2, r2, #8
	mov r2, r2
	ldr r2, [r2]
	mvn r3, #127
	add r3, fp, r3
	add r3, r3, #12
	mov r3, r3
	ldr r3, [r3]
	mvn r4, #127
	add r4, fp, r4
	add r4, r4, #16
	mov r4, r4
	ldr ip, [r4]
	mvn r4, #127
	add r4, fp, r4
	add r4, r4, #20
	mov r4, r4
	ldr r10, [r4]
	mvn r4, #127
	add r4, fp, r4
	add r4, r4, #24
	mov r4, r4
	ldr r9, [r4]
	mvn r4, #127
	add r4, fp, r4
	add r4, r4, #28
	mov r4, r4
	ldr r8, [r4]
	mvn r4, #127
	add r4, fp, r4
	add r4, r4, #32
	b .LT0

.LTORG
.LT0:
	mov r4, r4
	ldr r7, [r4]
	mvn r4, #127
	add r4, fp, r4
	add r4, r4, #36
	mov r4, r4
	ldr r6, [r4]
	mvn r4, #127
	add r4, fp, r4
	add r4, r4, #40
	mov r4, r4
	ldr r5, [r4]
	mvn r4, #127
	add r4, fp, r4
	add r4, r4, #44
	mov r4, r4
	ldr r4, [r4]
	mvn lr, #127
	add lr, fp, lr
	add lr, lr, #48
	mov lr, lr
	ldr lr, [lr]
	str lr, [fp, #-244]
	mvn lr, #127
	str lr, [fp, #-132]
	ldr lr, [fp, #-132]
	add lr, fp, lr
	str lr, [fp, #-136]
	ldr lr, [fp, #-136]
	add lr, lr, #52
	str lr, [fp, #-140]
	ldr lr, [fp, #-140]
	mov lr, lr
	str lr, [fp, #-140]
	ldr lr, [fp, #-140]
	ldr lr, [lr]
	str lr, [fp, #-144]
	mvn lr, #127
	str lr, [fp, #-148]
	ldr lr, [fp, #-148]
	add lr, fp, lr
	str lr, [fp, #-152]
	ldr lr, [fp, #-152]
	add lr, lr, #56
	str lr, [fp, #-156]
	ldr lr, [fp, #-156]
	mov lr, lr
	str lr, [fp, #-156]
	ldr lr, [fp, #-156]
	ldr lr, [lr]
	str lr, [fp, #-160]
	mvn lr, #127
	str lr, [fp, #-164]
	ldr lr, [fp, #-164]
	add lr, fp, lr
	str lr, [fp, #-168]
	ldr lr, [fp, #-168]
	add lr, lr, #60
	str lr, [fp, #-172]
	ldr lr, [fp, #-172]
	mov lr, lr
	str lr, [fp, #-172]
	ldr lr, [fp, #-172]
	ldr lr, [lr]
	str lr, [fp, #-176]
	ldr lr, [fp, #-64]
	str lr, [fp, #-180]
	ldr lr, [fp, #-60]
	str lr, [fp, #-184]
	ldr lr, [fp, #-56]
	str lr, [fp, #-188]
	ldr lr, [fp, #-52]
	str lr, [fp, #-192]
	ldr lr, [fp, #-48]
	str lr, [fp, #-196]
	ldr lr, [fp, #-44]
	str lr, [fp, #-200]
	ldr lr, [fp, #-40]
	str lr, [fp, #-204]
	ldr lr, [fp, #-36]
	str lr, [fp, #-208]
	ldr lr, [fp, #-32]
	str lr, [fp, #-212]
	ldr lr, [fp, #-28]
	str lr, [fp, #-216]
	ldr lr, [fp, #-24]
	str lr, [fp, #-220]
	ldr lr, [fp, #-20]
	str lr, [fp, #-224]
	ldr lr, [fp, #-16]
	str lr, [fp, #-228]
	ldr lr, [fp, #-12]
	str lr, [fp, #-232]
	ldr lr, [fp, #-8]
	str lr, [fp, #-236]
	ldr lr, [fp, #-4]
	str lr, [fp, #-240]
	mov r0, r0
	mov r1, r1
	mov r2, r2
	mov r3, r3
	ldr lr, [fp, #-240]
	push {lr}
	ldr lr, [fp, #-236]
	push {lr}
	ldr lr, [fp, #-232]
	push {lr}
	ldr lr, [fp, #-228]
	push {lr}
	ldr lr, [fp, #-224]
	push {lr}
	ldr lr, [fp, #-220]
	push {lr}
	ldr lr, [fp, #-216]
	push {lr}
	ldr lr, [fp, #-212]
	push {lr}
	ldr lr, [fp, #-208]
	push {lr}
	ldr lr, [fp, #-204]
	push {lr}
	ldr lr, [fp, #-200]
	push {lr}
	ldr lr, [fp, #-196]
	push {lr}
	ldr lr, [fp, #-192]
	push {lr}
	ldr lr, [fp, #-188]
	push {lr}
	ldr lr, [fp, #-184]
	push {lr}
	ldr lr, [fp, #-180]
	push {lr}
	ldr lr, [fp, #-176]
	push {lr}
	ldr lr, [fp, #-160]
	push {lr}
	ldr lr, [fp, #-144]
	push {lr}
	ldr lr, [fp, #-244]
	push {lr}
	push {r4}
	push {r5}
	push {r6}
	push {r7}
	push {r8}
	push {r9}
	push {r10}
	push {ip}
	bl param32_rec
	add sp, sp, #112
	mov r0, r0
	mov r0, r0
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, ip, lr}
	bx lr
	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, ip, lr}
	mov fp, sp
	sub sp, sp, #528
	lsr sp, sp, #3
	lsl sp, sp, #3
.L827:
	ldr r0, =-260
	add r0, fp, r0
	mov r0, r0
	ldr r0, =-260
	add r0, fp, r0
	mov r1, #0
	mov r2, #256
	bl memset
	ldr r0, =-260
	add r10, fp, r0
	mov r10, r10
	bl getint
	mov r9, r0
	bl getint
	mov r8, r0
	bl getint
	mov r7, r0
	bl getint
	mov r6, r0
	bl getint
	mov r5, r0
	bl getint
	mov r4, r0
	bl getint
	mov r0, r0
	str r0, [fp, #-264]
	bl getint
	mov r0, r0
	str r0, [fp, #-268]
	bl getint
	mov r0, r0
	str r0, [fp, #-272]
	bl getint
	mov r0, r0
	str r0, [fp, #-276]
	bl getint
	mov r0, r0
	str r0, [fp, #-280]
	bl getint
	mov r0, r0
	str r0, [fp, #-284]
	bl getint
	mov r0, r0
	str r0, [fp, #-288]
	bl getint
	mov r0, r0
	str r0, [fp, #-292]
	bl getint
	mov r0, r0
	str r0, [fp, #-296]
	bl getint
	mov ip, r0
	mov r0, r9
	mov r1, r8
	mov r2, r7
	mov r3, r6
	push {ip}
	ldr r6, [fp, #-296]
	push {r6}
	ldr r6, [fp, #-292]
	push {r6}
	ldr r6, [fp, #-288]
	push {r6}
	ldr r6, [fp, #-284]
	push {r6}
	ldr r6, [fp, #-280]
	push {r6}
	ldr r6, [fp, #-276]
	push {r6}
	ldr r6, [fp, #-272]
	push {r6}
	ldr r6, [fp, #-268]
	push {r6}
	ldr r6, [fp, #-264]
	push {r6}
	push {r4}
	push {r5}
	bl param16
	add sp, sp, #48
	mov r0, r0
	str r0, [r10]
	ldr r0, =-260
	add r0, fp, r0
	add r1, r0, #4
	mov r1, r1
	ldr r0, =8848
	str r0, [r1]
	mov r0, #1
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	cmp r0, #32
	movlt r0, #1
	movge r0, #0
	blt .L834
	b .L836
.L833:
	ldr r0, [fp, #-4]
	cmp r0, #32
	movlt r0, #1
	movge r0, #0
	blt .L834
	b .L841
.L834:
	ldr r0, [fp, #-4]
	sub r2, r0, #1
	ldr r0, =-260
	add r1, fp, r0
	lsl r0, r2, #3
	add r0, r1, r0
	add r0, r0, #4
	mov r0, r0
	ldr r0, [r0]
	sub r3, r0, #1
	ldr r2, [fp, #-4]
	ldr r0, =-260
	add r1, fp, r0
	lsl r0, r2, #3
	add r0, r1, r0
	mov r0, r0
	str r3, [r0]
	ldr r0, [fp, #-4]
	sub r2, r0, #1
	ldr r0, =-260
	add r1, fp, r0
	lsl r0, r2, #3
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	sub r3, r0, #2
	ldr r2, [fp, #-4]
	ldr r0, =-260
	add r1, fp, r0
	lsl r0, r2, #3
	add r0, r1, r0
	add r0, r0, #4
	mov r0, r0
	str r3, [r0]
	ldr r0, [fp, #-4]
	add r0, r0, #1
	str r0, [fp, #-4]
	b .L833
.L835:
	ldr r0, =-260
	add r0, fp, r0
	mov r0, r0
	ldr r1, =-260
	add r1, fp, r1
	add r1, r1, #8
	mov r1, r1
	ldr r2, =-260
	add r2, fp, r2
	add r2, r2, #16
	mov r2, r2
	ldr r3, =-260
	add r3, fp, r3
	add r3, r3, #24
	mov r3, r3
	ldr r4, =-260
	add r4, fp, r4
	add ip, r4, #32
	mov ip, ip
	ldr r4, =-260
	add r4, fp, r4
	add r10, r4, #40
	mov r10, r10
	ldr r4, =-260
	add r4, fp, r4
	add r9, r4, #48
	mov r9, r9
	ldr r4, =-260
	add r4, fp, r4
	add r8, r4, #56
	mov r8, r8
	ldr r4, =-260
	add r4, fp, r4
	add r7, r4, #64
	mov r7, r7
	ldr r4, =-260
	add r4, fp, r4
	add r6, r4, #72
	mov r6, r6
	ldr r4, =-260
	add r4, fp, r4
	add r5, r4, #80
	mov r5, r5
	ldr r4, =-260
	add r4, fp, r4
	add r4, r4, #88
	mov r4, r4
	ldr lr, =-260
	add lr, fp, lr
	add lr, lr, #96
	str lr, [fp, #-528]
	ldr lr, [fp, #-528]
	mov lr, lr
	str lr, [fp, #-528]
	ldr lr, =-260
	str lr, [fp, #-300]
	ldr lr, [fp, #-300]
	add lr, fp, lr
	str lr, [fp, #-304]
	ldr lr, [fp, #-304]
	add lr, lr, #104
	str lr, [fp, #-308]
	ldr lr, [fp, #-308]
	mov lr, lr
	str lr, [fp, #-308]
	ldr lr, =-260
	str lr, [fp, #-312]
	ldr lr, [fp, #-312]
	add lr, fp, lr
	str lr, [fp, #-316]
	ldr lr, [fp, #-316]
	add lr, lr, #112
	str lr, [fp, #-320]
	ldr lr, [fp, #-320]
	mov lr, lr
	str lr, [fp, #-320]
	ldr lr, =-260
	str lr, [fp, #-324]
	ldr lr, [fp, #-324]
	add lr, fp, lr
	str lr, [fp, #-328]
	ldr lr, [fp, #-328]
	add lr, lr, #120
	str lr, [fp, #-332]
	ldr lr, [fp, #-332]
	mov lr, lr
	str lr, [fp, #-332]
	ldr lr, =-260
	str lr, [fp, #-336]
	ldr lr, [fp, #-336]
	add lr, fp, lr
	str lr, [fp, #-340]
	ldr lr, [fp, #-340]
	add lr, lr, #128
	str lr, [fp, #-344]
	ldr lr, [fp, #-344]
	mov lr, lr
	str lr, [fp, #-344]
	ldr lr, =-260
	str lr, [fp, #-348]
	ldr lr, [fp, #-348]
	add lr, fp, lr
	str lr, [fp, #-352]
	ldr lr, [fp, #-352]
	add lr, lr, #136
	str lr, [fp, #-356]
	ldr lr, [fp, #-356]
	mov lr, lr
	str lr, [fp, #-356]
	ldr lr, =-260
	str lr, [fp, #-360]
	ldr lr, [fp, #-360]
	add lr, fp, lr
	str lr, [fp, #-364]
	ldr lr, [fp, #-364]
	add lr, lr, #144
	str lr, [fp, #-368]
	ldr lr, [fp, #-368]
	mov lr, lr
	str lr, [fp, #-368]
	ldr lr, =-260
	str lr, [fp, #-372]
	ldr lr, [fp, #-372]
	add lr, fp, lr
	str lr, [fp, #-376]
	ldr lr, [fp, #-376]
	add lr, lr, #152
	str lr, [fp, #-380]
	ldr lr, [fp, #-380]
	mov lr, lr
	str lr, [fp, #-380]
	ldr lr, =-260
	str lr, [fp, #-384]
	ldr lr, [fp, #-384]
	add lr, fp, lr
	str lr, [fp, #-388]
	ldr lr, [fp, #-388]
	add lr, lr, #160
	str lr, [fp, #-392]
	ldr lr, [fp, #-392]
	mov lr, lr
	str lr, [fp, #-392]
	ldr lr, =-260
	str lr, [fp, #-396]
	ldr lr, [fp, #-396]
	add lr, fp, lr
	str lr, [fp, #-400]
	ldr lr, [fp, #-400]
	add lr, lr, #168
	str lr, [fp, #-404]
	ldr lr, [fp, #-404]
	mov lr, lr
	str lr, [fp, #-404]
	ldr lr, =-260
	str lr, [fp, #-408]
	ldr lr, [fp, #-408]
	add lr, fp, lr
	str lr, [fp, #-412]
	ldr lr, [fp, #-412]
	add lr, lr, #176
	str lr, [fp, #-416]
	ldr lr, [fp, #-416]
	mov lr, lr
	str lr, [fp, #-416]
	ldr lr, =-260
	str lr, [fp, #-420]
	ldr lr, [fp, #-420]
	add lr, fp, lr
	str lr, [fp, #-424]
	ldr lr, [fp, #-424]
	add lr, lr, #184
	str lr, [fp, #-428]
	ldr lr, [fp, #-428]
	mov lr, lr
	str lr, [fp, #-428]
	ldr lr, =-260
	str lr, [fp, #-432]
	ldr lr, [fp, #-432]
	add lr, fp, lr
	str lr, [fp, #-436]
	ldr lr, [fp, #-436]
	add lr, lr, #192
	str lr, [fp, #-440]
	ldr lr, [fp, #-440]
	mov lr, lr
	str lr, [fp, #-440]
	ldr lr, =-260
	str lr, [fp, #-444]
	ldr lr, [fp, #-444]
	add lr, fp, lr
	str lr, [fp, #-448]
	ldr lr, [fp, #-448]
	add lr, lr, #200
	str lr, [fp, #-452]
	ldr lr, [fp, #-452]
	mov lr, lr
	str lr, [fp, #-452]
	ldr lr, =-260
	str lr, [fp, #-456]
	ldr lr, [fp, #-456]
	add lr, fp, lr
	str lr, [fp, #-460]
	ldr lr, [fp, #-460]
	add lr, lr, #208
	str lr, [fp, #-464]
	ldr lr, [fp, #-464]
	mov lr, lr
	str lr, [fp, #-464]
	ldr lr, =-260
	str lr, [fp, #-468]
	ldr lr, [fp, #-468]
	add lr, fp, lr
	str lr, [fp, #-472]
	ldr lr, [fp, #-472]
	add lr, lr, #216
	str lr, [fp, #-476]
	ldr lr, [fp, #-476]
	mov lr, lr
	str lr, [fp, #-476]
	ldr lr, =-260
	str lr, [fp, #-480]
	ldr lr, [fp, #-480]
	add lr, fp, lr
	str lr, [fp, #-484]
	ldr lr, [fp, #-484]
	add lr, lr, #224
	str lr, [fp, #-488]
	ldr lr, [fp, #-488]
	mov lr, lr
	str lr, [fp, #-488]
	ldr lr, =-260
	str lr, [fp, #-492]
	ldr lr, [fp, #-492]
	add lr, fp, lr
	str lr, [fp, #-496]
	ldr lr, [fp, #-496]
	add lr, lr, #232
	str lr, [fp, #-500]
	ldr lr, [fp, #-500]
	mov lr, lr
	str lr, [fp, #-500]
	ldr lr, =-260
	str lr, [fp, #-504]
	ldr lr, [fp, #-504]
	add lr, fp, lr
	str lr, [fp, #-508]
	ldr lr, [fp, #-508]
	add lr, lr, #240
	str lr, [fp, #-512]
	ldr lr, [fp, #-512]
	mov lr, lr
	str lr, [fp, #-512]
	ldr lr, =-260
	str lr, [fp, #-516]
	ldr lr, [fp, #-516]
	add lr, fp, lr
	str lr, [fp, #-520]
	ldr lr, [fp, #-520]
	add lr, lr, #248
	str lr, [fp, #-524]
	ldr lr, [fp, #-524]
	mov lr, lr
	str lr, [fp, #-524]
	mov r0, r0
	mov r1, r1
	mov r2, r2
	mov r3, r3
	ldr lr, [fp, #-524]
	push {lr}
	ldr lr, [fp, #-512]
	push {lr}
	ldr lr, [fp, #-500]
	push {lr}
	ldr lr, [fp, #-488]
	push {lr}
	ldr lr, [fp, #-476]
	push {lr}
	ldr lr, [fp, #-464]
	push {lr}
	ldr lr, [fp, #-452]
	push {lr}
	ldr lr, [fp, #-440]
	push {lr}
	ldr lr, [fp, #-428]
	push {lr}
	ldr lr, [fp, #-416]
	push {lr}
	ldr lr, [fp, #-404]
	push {lr}
	ldr lr, [fp, #-392]
	push {lr}
	ldr lr, [fp, #-380]
	push {lr}
	ldr lr, [fp, #-368]
	push {lr}
	ldr lr, [fp, #-356]
	push {lr}
	ldr lr, [fp, #-344]
	push {lr}
	ldr lr, [fp, #-332]
	push {lr}
	ldr lr, [fp, #-320]
	push {lr}
	ldr lr, [fp, #-308]
	push {lr}
	ldr lr, [fp, #-528]
	push {lr}
	push {r4}
	push {r5}
	push {r6}
	push {r7}
	push {r8}
	push {r9}
	push {r10}
	push {ip}
	bl param32_arr
	add sp, sp, #112
	mov r0, r0
	mov r0, r0
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, ip, lr}
	bx lr
.L836:
	b .L835
.L841:
	b .L835

.LTORG
