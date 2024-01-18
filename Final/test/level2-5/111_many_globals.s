	.cpu cortex-a72
	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
.data
.global a0
.size a0, 4
a0:
	.word 0
.global a1
.size a1, 4
a1:
	.word 0
.global a2
.size a2, 4
a2:
	.word 0
.global a3
.size a3, 4
a3:
	.word 0
.global a4
.size a4, 4
a4:
	.word 0
.global a5
.size a5, 4
a5:
	.word 0
.global a6
.size a6, 4
a6:
	.word 0
.global a7
.size a7, 4
a7:
	.word 0
.global a8
.size a8, 4
a8:
	.word 0
.global a9
.size a9, 4
a9:
	.word 0
.global a10
.size a10, 4
a10:
	.word 0
.global a11
.size a11, 4
a11:
	.word 0
.global a12
.size a12, 4
a12:
	.word 0
.global a13
.size a13, 4
a13:
	.word 0
.global a14
.size a14, 4
a14:
	.word 0
.global a15
.size a15, 4
a15:
	.word 0
.global a16
.size a16, 4
a16:
	.word 0
.global a17
.size a17, 4
a17:
	.word 0
.global a18
.size a18, 4
a18:
	.word 0
.global a19
.size a19, 4
a19:
	.word 0
.global a20
.size a20, 4
a20:
	.word 0
.global a21
.size a21, 4
a21:
	.word 0
.global a22
.size a22, 4
a22:
	.word 0
.global a23
.size a23, 4
a23:
	.word 0
.global a24
.size a24, 4
a24:
	.word 0
.global a25
.size a25, 4
a25:
	.word 0
.global a26
.size a26, 4
a26:
	.word 0
.global a27
.size a27, 4
a27:
	.word 0
.global a28
.size a28, 4
a28:
	.word 0
.global a29
.size a29, 4
a29:
	.word 0
.global a30
.size a30, 4
a30:
	.word 0
.global a31
.size a31, 4
a31:
	.word 0
.global a32
.size a32, 4
a32:
	.word 0
.global a33
.size a33, 4
a33:
	.word 0
.global a34
.size a34, 4
a34:
	.word 0
.global a35
.size a35, 4
a35:
	.word 0
.global a36
.size a36, 4
a36:
	.word 0
.global a37
.size a37, 4
a37:
	.word 0
.global a38
.size a38, 4
a38:
	.word 0
.global a39
.size a39, 4
a39:
	.word 0

	.text
	.global testParam8
	.type testParam8 , %function
testParam8:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #32
	lsr sp, sp, #3
	lsl sp, sp, #3
.L366:
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
	.global testParam16
	.type testParam16 , %function
testParam16:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #64
	lsr sp, sp, #3
	lsl sp, sp, #3
.L375:
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
	sub r1, r1, r0
	ldr r0, [fp, #-48]
	sub r1, r1, r0
	ldr r0, [fp, #-44]
	sub r1, r1, r0
	ldr r0, [fp, #-40]
	sub r1, r1, r0
	ldr r0, [fp, #-36]
	sub r1, r1, r0
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
	.global testParam32
	.type testParam32 , %function
testParam32:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #128
	lsr sp, sp, #3
	lsl sp, sp, #3
.L392:
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
	ldr r1, [fp, #-128]
	ldr r0, [fp, #-124]
	add r1, r1, r0
	ldr r0, [fp, #-120]
	add r1, r1, r0
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
	add r1, r1, r0
	ldr r0, [fp, #-76]
	add r1, r1, r0
	ldr r0, [fp, #-72]
	add r1, r1, r0
	ldr r0, [fp, #-68]
	add r1, r1, r0
	ldr r0, [fp, #-64]
	add r1, r1, r0
	ldr r0, [fp, #-60]
	add r1, r1, r0
	ldr r0, [fp, #-56]
	sub r1, r1, r0
	ldr r0, [fp, #-52]
	sub r1, r1, r0
	ldr r0, [fp, #-48]
	sub r1, r1, r0
	ldr r0, [fp, #-44]
	sub r1, r1, r0
	ldr r0, [fp, #-40]
	sub r1, r1, r0
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
	sub sp, sp, #184
	lsr sp, sp, #3
	lsl sp, sp, #3
.L425:
	mov r1, #0
	ldr r0, addr_a0_0
	str r1, [r0]
	mov r1, #1
	ldr r0, addr_a1_0
	str r1, [r0]
	mov r1, #2
	ldr r0, addr_a2_0
	str r1, [r0]
	mov r1, #3
	ldr r0, addr_a3_0
	str r1, [r0]
	mov r1, #4
	ldr r0, addr_a4_0
	str r1, [r0]
	mov r1, #5
	ldr r0, addr_a5_0
	str r1, [r0]
	mov r1, #6
	ldr r0, addr_a6_0
	str r1, [r0]
	mov r1, #7
	ldr r0, addr_a7_0
	str r1, [r0]
	mov r1, #8
	ldr r0, addr_a8_0
	str r1, [r0]
	mov r1, #9
	ldr r0, addr_a9_0
	str r1, [r0]
	mov r1, #0
	ldr r0, addr_a10_0
	str r1, [r0]
	mov r1, #1
	ldr r0, addr_a11_0
	str r1, [r0]
	mov r1, #2
	ldr r0, addr_a12_0
	str r1, [r0]
	mov r1, #3
	ldr r0, addr_a13_0
	str r1, [r0]
	mov r1, #4
	ldr r0, addr_a14_0
	str r1, [r0]
	mov r1, #5
	ldr r0, addr_a15_0
	str r1, [r0]
	mov r1, #6
	ldr r0, addr_a16_0
	str r1, [r0]
	mov r1, #7
	ldr r0, addr_a17_0
	str r1, [r0]
	mov r1, #8
	ldr r0, addr_a18_0
	str r1, [r0]
	mov r1, #9
	ldr r0, addr_a19_0
	str r1, [r0]
	mov r1, #0
	ldr r0, addr_a20_0
	str r1, [r0]
	mov r1, #1
	ldr r0, addr_a21_0
	str r1, [r0]
	mov r1, #2
	ldr r0, addr_a22_0
	str r1, [r0]
	mov r1, #3
	ldr r0, addr_a23_0
	str r1, [r0]
	mov r1, #4
	ldr r0, addr_a24_0
	str r1, [r0]
	mov r1, #5
	ldr r0, addr_a25_0
	str r1, [r0]
	mov r1, #6
	ldr r0, addr_a26_0
	str r1, [r0]
	mov r1, #7
	ldr r0, addr_a27_0
	str r1, [r0]
	mov r1, #8
	ldr r0, addr_a28_0
	str r1, [r0]
	mov r1, #9
	ldr r0, addr_a29_0
	str r1, [r0]
	mov r1, #0
	ldr r0, addr_a30_0
	str r1, [r0]
	mov r1, #1
	ldr r0, addr_a31_0
	str r1, [r0]
	mov r1, #4
	ldr r0, addr_a32_0
	str r1, [r0]
	mov r1, #5
	ldr r0, addr_a33_0
	str r1, [r0]
	mov r1, #6
	ldr r0, addr_a34_0
	str r1, [r0]
	mov r1, #7
	ldr r0, addr_a35_0
	str r1, [r0]
	mov r1, #8
	ldr r0, addr_a36_0
	str r1, [r0]
	mov r1, #9
	ldr r0, addr_a37_0
	str r1, [r0]
	mov r1, #0
	ldr r0, addr_a38_0
	str r1, [r0]
	mov r1, #1
	ldr r0, addr_a39_0
	str r1, [r0]
	ldr r0, addr_a0_0
	ldr r0, [r0]
	ldr r1, addr_a1_0
	ldr r1, [r1]
	ldr r2, addr_a2_0
	ldr r2, [r2]
	ldr r3, addr_a3_0
	ldr r3, [r3]
	ldr r4, addr_a4_0
	ldr r5, [r4]
	ldr r4, addr_a5_0
	ldr r4, [r4]
	ldr r6, addr_a6_0
	ldr r7, [r6]
	ldr r6, addr_a7_0
	ldr r6, [r6]
	mov r0, r0
	mov r1, r1
	mov r2, r2
	mov r3, r3
	push {r6}
	push {r7}
	push {r4}
	push {r5}
	bl testParam8
	add sp, sp, #16
	mov r1, r0
	ldr r0, addr_a0_0
	str r1, [r0]
	ldr r0, addr_a0_0
	ldr r0, [r0]
	mov r0, r0
	bl putint
	ldr r0, addr_a32_0
	ldr r0, [r0]
	ldr r1, addr_a33_0
	ldr r1, [r1]
	ldr r2, addr_a34_0
	ldr r2, [r2]
	ldr r3, addr_a35_0
	ldr r3, [r3]
	ldr r4, addr_a36_0
	ldr ip, [r4]
	ldr r4, addr_a37_0
	ldr r10, [r4]
	ldr r4, addr_a38_0
	ldr r9, [r4]
	ldr r4, addr_a39_0
	ldr r8, [r4]
	ldr r4, addr_a8_0
	ldr r7, [r4]
	ldr r4, addr_a9_0
	ldr r6, [r4]
	ldr r4, addr_a10_0
	ldr r5, [r4]
	ldr r4, addr_a11_0
	ldr r4, [r4]
	ldr lr, addr_a12_0
	ldr lr, [lr]
	str lr, [fp, #-180]
	ldr lr, addr_a13_0
	str lr, [fp, #-4]
	ldr lr, [fp, #-4]
	ldr lr, [lr]
	str lr, [fp, #-8]
	ldr lr, addr_a14_0
	str lr, [fp, #-12]
	ldr lr, [fp, #-12]
	ldr lr, [lr]
	str lr, [fp, #-16]
	ldr lr, addr_a15_0
	str lr, [fp, #-20]
	ldr lr, [fp, #-20]
	ldr lr, [lr]
	str lr, [fp, #-24]
	mov r0, r0
	mov r1, r1
	mov r2, r2
	mov r3, r3
	ldr lr, [fp, #-24]
	push {lr}
	ldr lr, [fp, #-16]
	push {lr}
	ldr lr, [fp, #-8]
	push {lr}
	ldr lr, [fp, #-180]
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
	mov r1, r0
	ldr r0, addr_a0_0
	str r1, [r0]
	ldr r0, addr_a0_0
	ldr r0, [r0]
	mov r0, r0
	bl putint
	ldr r0, addr_a0_0
	ldr r0, [r0]
	ldr r1, addr_a1_0
	ldr r1, [r1]
	ldr r2, addr_a2_0
	ldr r2, [r2]
	ldr r3, addr_a3_0
	ldr r3, [r3]
	ldr r4, addr_a4_0
	ldr ip, [r4]
	ldr r4, addr_a5_0
	ldr r10, [r4]
	ldr r4, addr_a6_0
	ldr r9, [r4]
	ldr r4, addr_a7_0
	ldr r8, [r4]
	ldr r4, addr_a8_0
	ldr r7, [r4]
	ldr r4, addr_a9_0
	ldr r6, [r4]
	ldr r4, addr_a10_0
	ldr r5, [r4]
	ldr r4, addr_a11_0
	ldr r4, [r4]
	ldr lr, addr_a12_0
	ldr lr, [lr]
	str lr, [fp, #-184]
	ldr lr, addr_a13_0
	str lr, [fp, #-28]
	ldr lr, [fp, #-28]
	ldr lr, [lr]
	str lr, [fp, #-32]
	ldr lr, addr_a14_0
	str lr, [fp, #-36]
	ldr lr, [fp, #-36]
	ldr lr, [lr]
	str lr, [fp, #-40]
	ldr lr, addr_a15_0
	str lr, [fp, #-44]
	ldr lr, [fp, #-44]
	ldr lr, [lr]
	str lr, [fp, #-48]
	ldr lr, addr_a16_0
	str lr, [fp, #-52]
	ldr lr, [fp, #-52]
	ldr lr, [lr]
	str lr, [fp, #-56]
	ldr lr, addr_a17_0
	str lr, [fp, #-60]
	ldr lr, [fp, #-60]
	ldr lr, [lr]
	str lr, [fp, #-64]
	ldr lr, addr_a18_0
	str lr, [fp, #-68]
	ldr lr, [fp, #-68]
	ldr lr, [lr]
	str lr, [fp, #-72]
	ldr lr, addr_a19_0
	str lr, [fp, #-76]
	ldr lr, [fp, #-76]
	ldr lr, [lr]
	str lr, [fp, #-80]
	ldr lr, addr_a20_0
	str lr, [fp, #-84]
	ldr lr, [fp, #-84]
	ldr lr, [lr]
	str lr, [fp, #-88]
	ldr lr, addr_a21_0
	str lr, [fp, #-92]
	ldr lr, [fp, #-92]
	ldr lr, [lr]
	str lr, [fp, #-96]
	ldr lr, addr_a22_0
	str lr, [fp, #-100]
	ldr lr, [fp, #-100]
	ldr lr, [lr]
	str lr, [fp, #-104]
	ldr lr, addr_a23_0
	str lr, [fp, #-108]
	ldr lr, [fp, #-108]
	ldr lr, [lr]
	str lr, [fp, #-112]
	ldr lr, addr_a24_0
	str lr, [fp, #-116]
	ldr lr, [fp, #-116]
	ldr lr, [lr]
	str lr, [fp, #-120]
	ldr lr, addr_a25_0
	str lr, [fp, #-124]
	ldr lr, [fp, #-124]
	ldr lr, [lr]
	str lr, [fp, #-128]
	ldr lr, addr_a26_0
	str lr, [fp, #-132]
	ldr lr, [fp, #-132]
	ldr lr, [lr]
	str lr, [fp, #-136]
	ldr lr, addr_a27_0
	str lr, [fp, #-140]
	ldr lr, [fp, #-140]
	ldr lr, [lr]
	str lr, [fp, #-144]
	ldr lr, addr_a28_0
	str lr, [fp, #-148]
	ldr lr, [fp, #-148]
	ldr lr, [lr]
	str lr, [fp, #-152]
	ldr lr, addr_a29_0
	str lr, [fp, #-156]
	ldr lr, [fp, #-156]
	ldr lr, [lr]
	str lr, [fp, #-160]
	ldr lr, addr_a30_0
	str lr, [fp, #-164]
	ldr lr, [fp, #-164]
	ldr lr, [lr]
	str lr, [fp, #-168]
	ldr lr, addr_a31_0
	str lr, [fp, #-172]
	ldr lr, [fp, #-172]
	ldr lr, [lr]
	str lr, [fp, #-176]
	mov r0, r0
	mov r1, r1
	mov r2, r2
	mov r3, r3
	ldr lr, [fp, #-176]
	push {lr}
	ldr lr, [fp, #-168]
	push {lr}
	ldr lr, [fp, #-160]
	push {lr}
	ldr lr, [fp, #-152]
	push {lr}
	ldr lr, [fp, #-144]
	push {lr}
	ldr lr, [fp, #-136]
	push {lr}
	ldr lr, [fp, #-128]
	push {lr}
	ldr lr, [fp, #-120]
	push {lr}
	ldr lr, [fp, #-112]
	push {lr}
	ldr lr, [fp, #-104]
	push {lr}
	ldr lr, [fp, #-96]
	push {lr}
	ldr lr, [fp, #-88]
	push {lr}
	ldr lr, [fp, #-80]
	push {lr}
	ldr lr, [fp, #-72]
	push {lr}
	ldr lr, [fp, #-64]
	push {lr}
	ldr lr, [fp, #-56]
	push {lr}
	ldr lr, [fp, #-48]
	push {lr}
	ldr lr, [fp, #-40]
	push {lr}
	ldr lr, [fp, #-32]
	push {lr}
	ldr lr, [fp, #-184]
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
	mov r1, r0
	ldr r0, addr_a0_0
	str r1, [r0]
	ldr r0, addr_a0_0
	ldr r0, [r0]
	mov r0, r0
	bl putint
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, ip, lr}
	bx lr

.LTORG
addr_a0_0:
	.word a0
addr_a1_0:
	.word a1
addr_a2_0:
	.word a2
addr_a3_0:
	.word a3
addr_a4_0:
	.word a4
addr_a5_0:
	.word a5
addr_a6_0:
	.word a6
addr_a7_0:
	.word a7
addr_a8_0:
	.word a8
addr_a9_0:
	.word a9
addr_a10_0:
	.word a10
addr_a11_0:
	.word a11
addr_a12_0:
	.word a12
addr_a13_0:
	.word a13
addr_a14_0:
	.word a14
addr_a15_0:
	.word a15
addr_a16_0:
	.word a16
addr_a17_0:
	.word a17
addr_a18_0:
	.word a18
addr_a19_0:
	.word a19
addr_a20_0:
	.word a20
addr_a21_0:
	.word a21
addr_a22_0:
	.word a22
addr_a23_0:
	.word a23
addr_a24_0:
	.word a24
addr_a25_0:
	.word a25
addr_a26_0:
	.word a26
addr_a27_0:
	.word a27
addr_a28_0:
	.word a28
addr_a29_0:
	.word a29
addr_a30_0:
	.word a30
addr_a31_0:
	.word a31
addr_a32_0:
	.word a32
addr_a33_0:
	.word a33
addr_a34_0:
	.word a34
addr_a35_0:
	.word a35
addr_a36_0:
	.word a36
addr_a37_0:
	.word a37
addr_a38_0:
	.word a38
addr_a39_0:
	.word a39
