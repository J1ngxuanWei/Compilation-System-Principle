	.cpu cortex-a72
	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm

	.text
	.global testParam8
	.type testParam8 , %function
testParam8:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #32
	lsr sp, sp, #3
	lsl sp, sp, #3
.L344:
	str r0, [fp, #-32]
	str r1, [fp, #-28]
	str r2, [fp, #-24]
	str r3, [fp, #-20]
	ldr r0, [fp, #8]
	str r0, [fp, #-16]
	ldr r0, [fp, #12]
	str r0, [fp, #-12]
	ldr r0, [fp, #16]
	str r0, [fp, #-8]
	ldr r0, [fp, #20]
	str r0, [fp, #-4]
	ldr r1, [fp, #-32]
	ldr r0, [fp, #-28]
	sub r1, r1, r0
	ldr r0, [fp, #-24]
	add r1, r1, r0
	ldr r0, [fp, #-20]
	sub r1, r1, r0
	ldr r0, [fp, #-16]
	sub r1, r1, r0
	ldr r0, [fp, #-12]
	sub r1, r1, r0
	ldr r0, [fp, #-8]
	add r1, r1, r0
	ldr r0, [fp, #-4]
	add r0, r1, r0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
	.global testParam16
	.type testParam16 , %function
testParam16:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #64
	lsr sp, sp, #3
	lsl sp, sp, #3
.L353:
	str r0, [fp, #-64]
	str r1, [fp, #-60]
	str r2, [fp, #-56]
	str r3, [fp, #-52]
	ldr r0, [fp, #8]
	str r0, [fp, #-48]
	ldr r0, [fp, #12]
	str r0, [fp, #-44]
	ldr r0, [fp, #16]
	str r0, [fp, #-40]
	ldr r0, [fp, #20]
	str r0, [fp, #-36]
	ldr r0, [fp, #24]
	str r0, [fp, #-32]
	ldr r0, [fp, #28]
	str r0, [fp, #-28]
	ldr r0, [fp, #32]
	str r0, [fp, #-24]
	ldr r0, [fp, #36]
	str r0, [fp, #-20]
	ldr r0, [fp, #40]
	str r0, [fp, #-16]
	ldr r0, [fp, #44]
	str r0, [fp, #-12]
	ldr r0, [fp, #48]
	str r0, [fp, #-8]
	ldr r0, [fp, #52]
	str r0, [fp, #-4]
	ldr r1, [fp, #-64]
	ldr r0, [fp, #-60]
	add r1, r1, r0
	ldr r0, [fp, #-56]
	add r1, r1, r0
	ldr r0, [fp, #-52]
	add r1, r1, r0
	ldr r0, [fp, #-48]
	sub r1, r1, r0
	ldr r0, [fp, #-44]
	add r1, r1, r0
	ldr r0, [fp, #-40]
	add r1, r1, r0
	ldr r0, [fp, #-36]
	add r1, r1, r0
	ldr r0, [fp, #-32]
	sub r1, r1, r0
	ldr r0, [fp, #-28]
	add r1, r1, r0
	ldr r0, [fp, #-24]
	sub r1, r1, r0
	ldr r0, [fp, #-20]
	add r1, r1, r0
	ldr r0, [fp, #-16]
	add r1, r1, r0
	ldr r0, [fp, #-12]
	add r1, r1, r0
	ldr r0, [fp, #-8]
	add r1, r1, r0
	ldr r0, [fp, #-4]
	add r0, r1, r0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
	.global testParam32
	.type testParam32 , %function
testParam32:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #128
	lsr sp, sp, #3
	lsl sp, sp, #3
.L370:
	str r0, [fp, #-128]
	str r1, [fp, #-124]
	str r2, [fp, #-120]
	str r3, [fp, #-116]
	ldr r0, [fp, #8]
	str r0, [fp, #-112]
	ldr r0, [fp, #12]
	str r0, [fp, #-108]
	ldr r0, [fp, #16]
	str r0, [fp, #-104]
	ldr r0, [fp, #20]
	str r0, [fp, #-100]
	ldr r0, [fp, #24]
	str r0, [fp, #-96]
	ldr r0, [fp, #28]
	str r0, [fp, #-92]
	ldr r0, [fp, #32]
	str r0, [fp, #-88]
	ldr r0, [fp, #36]
	str r0, [fp, #-84]
	ldr r0, [fp, #40]
	str r0, [fp, #-80]
	ldr r0, [fp, #44]
	str r0, [fp, #-76]
	ldr r0, [fp, #48]
	str r0, [fp, #-72]
	ldr r0, [fp, #52]
	str r0, [fp, #-68]
	ldr r0, [fp, #56]
	str r0, [fp, #-64]
	ldr r0, [fp, #60]
	str r0, [fp, #-60]
	ldr r0, [fp, #64]
	str r0, [fp, #-56]
	ldr r0, [fp, #68]
	str r0, [fp, #-52]
	ldr r0, [fp, #72]
	str r0, [fp, #-48]
	ldr r0, [fp, #76]
	str r0, [fp, #-44]
	ldr r0, [fp, #80]
	str r0, [fp, #-40]
	ldr r0, [fp, #84]
	str r0, [fp, #-36]
	ldr r0, [fp, #88]
	str r0, [fp, #-32]
	ldr r0, [fp, #92]
	str r0, [fp, #-28]
	ldr r0, [fp, #96]
	str r0, [fp, #-24]
	ldr r0, [fp, #100]
	str r0, [fp, #-20]
	ldr r0, [fp, #104]
	str r0, [fp, #-16]
	ldr r0, [fp, #108]
	str r0, [fp, #-12]
	ldr r0, [fp, #112]
	str r0, [fp, #-8]
	ldr r0, [fp, #116]
	str r0, [fp, #-4]
	ldr r2, [fp, #-128]
	ldr r1, [fp, #-124]
	ldr r0, [fp, #-120]
	mul r0, r1, r0
	add r1, r2, r0
	ldr r0, [fp, #-116]
	add r1, r1, r0
	ldr r0, [fp, #-112]
	add r1, r1, r0
	ldr r0, [fp, #-108]
	add r1, r1, r0
	ldr r0, [fp, #-104]
	add r1, r1, r0
	ldr r0, [fp, #-100]
	add r1, r1, r0
	ldr r0, [fp, #-96]
	add r1, r1, r0
	ldr r0, [fp, #-92]
	add r1, r1, r0
	ldr r0, [fp, #-88]
	add r1, r1, r0
	ldr r0, [fp, #-84]
	add r1, r1, r0
	ldr r0, [fp, #-80]
	sub r1, r1, r0
	ldr r0, [fp, #-76]
	sub r1, r1, r0
	ldr r0, [fp, #-72]
	sub r1, r1, r0
	ldr r0, [fp, #-68]
	sub r1, r1, r0
	ldr r0, [fp, #-64]
	sub r1, r1, r0
	ldr r0, [fp, #-60]
	sub r1, r1, r0
	ldr r0, [fp, #-56]
	sub r1, r1, r0
	ldr r0, [fp, #-52]
	sub r1, r1, r0
	ldr r0, [fp, #-48]
	sub r1, r1, r0
	ldr r0, [fp, #-44]
	sub r1, r1, r0
	ldr r0, [fp, #-40]
	add r1, r1, r0
	ldr r0, [fp, #-36]
	add r1, r1, r0
	ldr r0, [fp, #-32]
	add r1, r1, r0
	ldr r0, [fp, #-28]
	add r1, r1, r0
	ldr r0, [fp, #-24]
	add r1, r1, r0
	ldr r0, [fp, #-20]
	add r1, r1, r0
	ldr r0, [fp, #-16]
	add r1, r1, r0
	ldr r0, [fp, #-12]
	add r1, r1, r0
	ldr r0, [fp, #-8]
	add r1, r1, r0
	ldr r0, [fp, #-4]
	add r0, r1, r0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, ip, lr}
	mov fp, sp
	sub sp, sp, #224
	lsr sp, sp, #3
	lsl sp, sp, #3
.L403:
	mov r0, #0
	str r0, [fp, #-128]
	mov r0, #1
	str r0, [fp, #-124]
	mov r0, #2
	str r0, [fp, #-120]
	mov r0, #3
	str r0, [fp, #-116]
	mov r0, #4
	str r0, [fp, #-112]
	mov r0, #5
	str r0, [fp, #-108]
	mov r0, #6
	str r0, [fp, #-104]
	mov r0, #7
	str r0, [fp, #-100]
	mov r0, #8
	str r0, [fp, #-96]
	mov r0, #9
	str r0, [fp, #-92]
	mov r0, #0
	str r0, [fp, #-88]
	mov r0, #1
	str r0, [fp, #-84]
	mov r0, #2
	str r0, [fp, #-80]
	mov r0, #3
	str r0, [fp, #-76]
	mov r0, #4
	str r0, [fp, #-72]
	mov r0, #5
	str r0, [fp, #-68]
	mov r0, #6
	str r0, [fp, #-64]
	mov r0, #7
	str r0, [fp, #-60]
	mov r0, #8
	str r0, [fp, #-56]
	mov r0, #9
	str r0, [fp, #-52]
	mov r0, #0
	str r0, [fp, #-48]
	mov r0, #1
	str r0, [fp, #-44]
	mov r0, #2
	str r0, [fp, #-40]
	mov r0, #3
	str r0, [fp, #-36]
	mov r0, #4
	str r0, [fp, #-32]
	mov r0, #5
	str r0, [fp, #-28]
	mov r0, #6
	str r0, [fp, #-24]
	mov r0, #7
	str r0, [fp, #-20]
	mov r0, #8
	str r0, [fp, #-16]
	mov r0, #9
	str r0, [fp, #-12]
	mov r0, #0
	str r0, [fp, #-8]
	mov r0, #1
	str r0, [fp, #-4]
	ldr r0, [fp, #-128]
	ldr r1, [fp, #-124]
	ldr r2, [fp, #-120]
	ldr r3, [fp, #-116]
	ldr r7, [fp, #-112]
	ldr r6, [fp, #-108]
	ldr r5, [fp, #-104]
	ldr r4, [fp, #-100]
	mov r0, r0
	mov r1, r1
	mov r2, r2
	mov r3, r3
	push {r4}
	push {r5}
	push {r6}
	push {r7}
	bl testParam8
	add sp, sp, #16
	mov r0, r0
	ldr r1, [fp, #-124]
	ldr r2, [fp, #-120]
	ldr r3, [fp, #-116]
	ldr ip, [fp, #-112]
	ldr r10, [fp, #-108]
	ldr r9, [fp, #-104]
	ldr r8, [fp, #-100]
	ldr r7, [fp, #-96]
	ldr r6, [fp, #-92]
	ldr r5, [fp, #-88]
	ldr r4, [fp, #-84]
	ldr lr, [fp, #-80]
	str lr, [fp, #-220]
	ldr lr, [fp, #-76]
	str lr, [fp, #-132]
	ldr lr, [fp, #-72]
	str lr, [fp, #-136]
	ldr lr, [fp, #-68]
	str lr, [fp, #-140]
	mov r0, r0
	mov r1, r1
	mov r2, r2
	mov r3, r3
	ldr lr, [fp, #-140]
	push {lr}
	ldr lr, [fp, #-136]
	push {lr}
	ldr lr, [fp, #-132]
	push {lr}
	ldr lr, [fp, #-220]
	push {lr}
	push {r4}
	push {r5}
	push {r6}
	push {r7}
	push {r8}
	push {r9}
	push {r10}
	push {ip}
	bl testParam16
	add sp, sp, #48
	mov r0, r0
	ldr r1, [fp, #-124]
	ldr r2, [fp, #-120]
	ldr r3, [fp, #-116]
	ldr ip, [fp, #-112]
	ldr r10, [fp, #-108]
	ldr r9, [fp, #-104]
	ldr r8, [fp, #-100]
	ldr r7, [fp, #-96]
	ldr r6, [fp, #-92]
	ldr r5, [fp, #-88]
	ldr r4, [fp, #-84]
	ldr lr, [fp, #-80]
	str lr, [fp, #-224]
	ldr lr, [fp, #-76]
	str lr, [fp, #-144]
	ldr lr, [fp, #-72]
	str lr, [fp, #-148]
	ldr lr, [fp, #-68]
	str lr, [fp, #-152]
	ldr lr, [fp, #-64]
	str lr, [fp, #-156]
	ldr lr, [fp, #-60]
	str lr, [fp, #-160]
	ldr lr, [fp, #-56]
	str lr, [fp, #-164]
	ldr lr, [fp, #-52]
	str lr, [fp, #-168]
	ldr lr, [fp, #-48]
	str lr, [fp, #-172]
	ldr lr, [fp, #-44]
	str lr, [fp, #-176]
	ldr lr, [fp, #-40]
	str lr, [fp, #-180]
	ldr lr, [fp, #-36]
	str lr, [fp, #-184]
	ldr lr, [fp, #-32]
	str lr, [fp, #-188]
	ldr lr, [fp, #-28]
	str lr, [fp, #-192]
	ldr lr, [fp, #-24]
	str lr, [fp, #-196]
	ldr lr, [fp, #-20]
	str lr, [fp, #-200]
	ldr lr, [fp, #-16]
	str lr, [fp, #-204]
	ldr lr, [fp, #-12]
	str lr, [fp, #-208]
	ldr lr, [fp, #-8]
	str lr, [fp, #-212]
	ldr lr, [fp, #-4]
	str lr, [fp, #-216]
	mov r0, r0
	mov r1, r1
	mov r2, r2
	mov r3, r3
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
	ldr lr, [fp, #-224]
	push {lr}
	push {r4}
	push {r5}
	push {r6}
	push {r7}
	push {r8}
	push {r9}
	push {r10}
	push {ip}
	bl testParam32
	add sp, sp, #112
	mov r0, r0
	str r0, [fp, #-128]
	ldr r0, [fp, #-128]
	mov r0, r0
	bl putint
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, ip, lr}
	bx lr

.LTORG
