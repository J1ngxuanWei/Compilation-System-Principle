	.cpu cortex-a72
	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
.data
.global a1
.size a1, 4
a1:
	.word 1
.global a2
.size a2, 4
a2:
	.word 2
.global a3
.size a3, 4
a3:
	.word 3
.global a4
.size a4, 4
a4:
	.word 4
.global a5
.size a5, 4
a5:
	.word 5
.global a6
.size a6, 4
a6:
	.word 6
.global a7
.size a7, 4
a7:
	.word 7
.global a8
.size a8, 4
a8:
	.word 8
.global a9
.size a9, 4
a9:
	.word 9
.global a10
.size a10, 4
a10:
	.word 10
.global a11
.size a11, 4
a11:
	.word 11
.global a12
.size a12, 4
a12:
	.word 12
.global a13
.size a13, 4
a13:
	.word 13
.global a14
.size a14, 4
a14:
	.word 14
.global a15
.size a15, 4
a15:
	.word 15
.global a16
.size a16, 4
a16:
	.word 16
.global a17
.size a17, 4
a17:
	.word 1
.global a18
.size a18, 4
a18:
	.word 2
.global a19
.size a19, 4
a19:
	.word 3
.global a20
.size a20, 4
a20:
	.word 4
.global a21
.size a21, 4
a21:
	.word 5
.global a22
.size a22, 4
a22:
	.word 6
.global a23
.size a23, 4
a23:
	.word 7
.global a24
.size a24, 4
a24:
	.word 8
.global a25
.size a25, 4
a25:
	.word 9
.global a26
.size a26, 4
a26:
	.word 10
.global a27
.size a27, 4
a27:
	.word 11
.global a28
.size a28, 4
a28:
	.word 12
.global a29
.size a29, 4
a29:
	.word 13
.global a30
.size a30, 4
a30:
	.word 14
.global a31
.size a31, 4
a31:
	.word 15
.global a32
.size a32, 4
a32:
	.word 16

	.text
	.global func
	.type func , %function
func:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #156
	lsr sp, sp, #3
	lsl sp, sp, #3
.L581:
	str r0, [fp, #-156]
	str r1, [fp, #-152]
	ldr r1, [fp, #-156]
	ldr r0, [fp, #-152]
	add r0, r1, r0
	str r0, [fp, #-148]
	bl getint
	mov r0, r0
	str r0, [fp, #-144]
	bl getint
	mov r0, r0
	str r0, [fp, #-140]
	bl getint
	mov r0, r0
	str r0, [fp, #-136]
	bl getint
	mov r0, r0
	str r0, [fp, #-132]
	ldr r0, [fp, #-144]
	add r1, r0, #1
	ldr r0, addr_a1_0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-128]
	ldr r0, [fp, #-140]
	add r1, r0, #2
	ldr r0, addr_a2_0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-124]
	ldr r0, [fp, #-136]
	add r1, r0, #3
	ldr r0, addr_a3_0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-120]
	ldr r0, [fp, #-132]
	add r1, r0, #4
	ldr r0, addr_a4_0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-116]
	ldr r0, [fp, #-128]
	add r1, r0, #1
	ldr r0, addr_a5_0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-112]
	ldr r0, [fp, #-124]
	add r1, r0, #2
	ldr r0, addr_a6_0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-108]
	ldr r0, [fp, #-120]
	add r1, r0, #3
	ldr r0, addr_a7_0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-104]
	ldr r0, [fp, #-116]
	add r1, r0, #4
	ldr r0, addr_a8_0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-100]
	ldr r0, [fp, #-112]
	add r1, r0, #1
	ldr r0, addr_a9_0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-96]
	ldr r0, [fp, #-108]
	add r1, r0, #2
	ldr r0, addr_a10_0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-92]
	ldr r0, [fp, #-104]
	add r1, r0, #3
	ldr r0, addr_a11_0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-88]
	ldr r0, [fp, #-100]
	add r1, r0, #4
	ldr r0, addr_a12_0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-84]
	ldr r0, [fp, #-96]
	add r1, r0, #1
	ldr r0, addr_a13_0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-80]
	ldr r0, [fp, #-92]
	add r1, r0, #2
	ldr r0, addr_a14_0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-76]
	ldr r0, [fp, #-88]
	add r1, r0, #3
	ldr r0, addr_a15_0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-72]
	ldr r0, [fp, #-84]
	add r1, r0, #4
	ldr r0, addr_a16_0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-68]
	ldr r0, [fp, #-80]
	add r1, r0, #1
	ldr r0, addr_a17_0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-64]
	ldr r0, [fp, #-76]
	add r1, r0, #2
	ldr r0, addr_a18_0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-60]
	ldr r0, [fp, #-72]
	add r1, r0, #3
	ldr r0, addr_a19_0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-56]
	ldr r0, [fp, #-68]
	add r1, r0, #4
	ldr r0, addr_a20_0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-52]
	ldr r0, [fp, #-64]
	add r1, r0, #1
	ldr r0, addr_a21_0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-48]
	ldr r0, [fp, #-60]
	add r1, r0, #2
	ldr r0, addr_a22_0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-44]
	ldr r0, [fp, #-56]
	add r1, r0, #3
	ldr r0, addr_a23_0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-40]
	ldr r0, [fp, #-52]
	add r1, r0, #4
	ldr r0, addr_a24_0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-36]
	ldr r0, [fp, #-48]
	add r1, r0, #1
	ldr r0, addr_a25_0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-32]
	ldr r0, [fp, #-44]
	add r1, r0, #2
	ldr r0, addr_a26_0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-28]
	ldr r0, [fp, #-40]
	add r1, r0, #3
	ldr r0, addr_a27_0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-24]
	ldr r0, [fp, #-36]
	add r1, r0, #4
	ldr r0, addr_a28_0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-20]
	ldr r0, [fp, #-32]
	add r1, r0, #1
	ldr r0, addr_a29_0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-16]
	ldr r0, [fp, #-28]
	add r1, r0, #2
	ldr r0, addr_a30_0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-12]
	ldr r0, [fp, #-24]
	add r1, r0, #3
	ldr r0, addr_a31_0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-8]
	ldr r0, [fp, #-20]
	add r1, r0, #4
	ldr r0, addr_a32_0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-4]
	ldr r1, [fp, #-156]
	ldr r0, [fp, #-152]
	sub r0, r1, r0
	add r0, r0, #10
	str r0, [fp, #-148]
	ldr r0, [fp, #-32]
	add r1, r0, #1
	ldr r0, addr_a29_0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-16]
	ldr r0, [fp, #-28]
	add r1, r0, #2
	ldr r0, addr_a30_0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-12]
	ldr r0, [fp, #-24]
	add r1, r0, #3
	ldr r0, addr_a31_0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-8]
	ldr r0, [fp, #-20]
	add r1, r0, #4
	ldr r0, addr_a32_0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-4]
	ldr r0, [fp, #-48]
	add r1, r0, #1
	ldr r0, addr_a25_0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-32]
	ldr r0, [fp, #-44]
	add r1, r0, #2
	ldr r0, addr_a26_0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-28]
	ldr r0, [fp, #-40]
	add r1, r0, #3
	ldr r0, addr_a27_0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-24]
	ldr r0, [fp, #-36]
	add r1, r0, #4
	ldr r0, addr_a28_0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-20]
	ldr r0, [fp, #-64]
	add r1, r0, #1
	ldr r0, addr_a21_0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-48]
	ldr r0, [fp, #-60]
	add r1, r0, #2
	ldr r0, addr_a22_0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-44]
	ldr r0, [fp, #-56]
	add r1, r0, #3
	ldr r0, addr_a23_0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-40]
	ldr r0, [fp, #-52]
	add r1, r0, #4
	ldr r0, addr_a24_0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-36]
	ldr r0, [fp, #-80]
	add r1, r0, #1
	ldr r0, addr_a17_0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-64]
	ldr r0, [fp, #-76]
	add r1, r0, #2
	ldr r0, addr_a18_0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-60]
	ldr r0, [fp, #-72]
	add r1, r0, #3
	ldr r0, addr_a19_0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-56]
	ldr r0, [fp, #-68]
	add r1, r0, #4
	ldr r0, addr_a20_0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-52]
	ldr r0, [fp, #-96]
	add r1, r0, #1
	ldr r0, addr_a13_0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-80]
	ldr r0, [fp, #-92]
	add r1, r0, #2
	ldr r0, addr_a14_0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-76]
	ldr r0, [fp, #-88]
	add r1, r0, #3
	ldr r0, addr_a15_0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-72]
	ldr r0, [fp, #-84]
	add r1, r0, #4
	ldr r0, addr_a16_0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-68]
	ldr r0, [fp, #-112]
	add r1, r0, #1
	ldr r0, addr_a9_0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-96]
	ldr r0, [fp, #-108]
	add r1, r0, #2
	ldr r0, addr_a10_0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-92]
	ldr r0, [fp, #-104]
	add r1, r0, #3
	ldr r0, addr_a11_0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-88]
	ldr r0, [fp, #-100]
	add r1, r0, #4
	ldr r0, addr_a12_0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-84]
	ldr r0, [fp, #-128]
	add r1, r0, #1
	ldr r0, addr_a5_0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-112]
	ldr r0, [fp, #-124]
	add r1, r0, #2
	ldr r0, addr_a6_0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-108]
	ldr r0, [fp, #-120]
	add r1, r0, #3
	ldr r0, addr_a7_0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-104]
	ldr r0, [fp, #-116]
	add r1, r0, #4
	ldr r0, addr_a8_0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-100]
	ldr r0, [fp, #-144]
	add r1, r0, #1
	ldr r0, addr_a1_0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-128]
	ldr r0, [fp, #-140]
	add r1, r0, #2
	ldr r0, addr_a2_0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-124]
	ldr r0, [fp, #-136]
	add r1, r0, #3
	ldr r0, addr_a3_0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-120]
	ldr r0, [fp, #-132]
	add r1, r0, #4
	ldr r0, addr_a4_0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-116]
	ldr r0, [fp, #-144]
	add r1, r0, #1
	ldr r0, addr_a1_0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-128]
	ldr r0, [fp, #-140]
	add r1, r0, #2
	ldr r0, addr_a2_0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-124]
	ldr r0, [fp, #-136]
	add r1, r0, #3
	ldr r0, addr_a3_0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-120]
	ldr r0, [fp, #-132]
	add r1, r0, #4
	ldr r0, addr_a4_0
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [fp, #-116]
	ldr r1, [fp, #-148]
	ldr r0, [fp, #-144]
	add r1, r1, r0
	ldr r0, [fp, #-140]
	add r1, r1, r0
	ldr r0, [fp, #-136]
	add r1, r1, r0
	ldr r0, [fp, #-132]
	add r1, r1, r0
	ldr r0, [fp, #-128]
	sub r1, r1, r0
	ldr r0, [fp, #-124]
	sub r1, r1, r0
	ldr r0, [fp, #-120]
	sub r1, r1, r0
	ldr r0, [fp, #-116]
	sub r1, r1, r0
	ldr r0, [fp, #-112]
	add r1, r1, r0
	ldr r0, [fp, #-108]
	add r1, r1, r0
	ldr r0, [fp, #-104]
	add r1, r1, r0
	ldr r0, [fp, #-100]
	add r1, r1, r0
	ldr r0, [fp, #-96]
	sub r1, r1, r0
	ldr r0, [fp, #-92]
	sub r1, r1, r0
	ldr r0, [fp, #-88]
	sub r1, r1, r0
	ldr r0, [fp, #-84]
	sub r1, r1, r0
	ldr r0, [fp, #-80]
	add r1, r1, r0
	ldr r0, [fp, #-76]
	add r1, r1, r0
	ldr r0, [fp, #-72]
	add r1, r1, r0
	ldr r0, [fp, #-68]
	add r1, r1, r0
	ldr r0, [fp, #-64]
	sub r1, r1, r0
	ldr r0, [fp, #-60]
	sub r1, r1, r0
	ldr r0, [fp, #-56]
	sub r1, r1, r0
	ldr r0, [fp, #-52]
	sub r1, r1, r0
	ldr r0, [fp, #-48]
	add r1, r1, r0
	ldr r0, [fp, #-44]
	add r1, r1, r0
	ldr r0, [fp, #-40]
	add r1, r1, r0
	ldr r0, [fp, #-36]
	add r1, r1, r0
	ldr r0, [fp, #-32]
	sub r1, r1, r0
	ldr r0, [fp, #-28]
	sub r1, r1, r0
	ldr r0, [fp, #-24]
	sub r1, r1, r0
	ldr r0, [fp, #-20]
	sub r1, r1, r0
	ldr r0, [fp, #-16]
	add r1, r1, r0
	ldr r0, [fp, #-12]
	add r1, r1, r0
	ldr r0, [fp, #-8]
	add r1, r1, r0
	ldr r0, [fp, #-4]
	add r1, r1, r0
	ldr r0, addr_a1_0
	ldr r0, [r0]
	add r1, r1, r0
	ldr r0, addr_a2_0
	ldr r0, [r0]
	sub r1, r1, r0
	ldr r0, addr_a3_0
	ldr r0, [r0]
	add r1, r1, r0
	ldr r0, addr_a4_0
	ldr r0, [r0]
	sub r1, r1, r0
	ldr r0, addr_a5_0
	ldr r0, [r0]
	add r1, r1, r0
	ldr r0, addr_a6_0
	ldr r0, [r0]
	sub r1, r1, r0
	ldr r0, addr_a7_0
	ldr r0, [r0]
	add r1, r1, r0
	ldr r0, addr_a8_0
	ldr r0, [r0]
	sub r1, r1, r0
	ldr r0, addr_a9_0
	ldr r0, [r0]
	add r1, r1, r0
	ldr r0, addr_a10_0
	ldr r0, [r0]
	sub r1, r1, r0
	ldr r0, addr_a11_0
	ldr r0, [r0]
	add r1, r1, r0
	ldr r0, addr_a12_0
	ldr r0, [r0]
	sub r1, r1, r0
	ldr r0, addr_a13_0
	ldr r0, [r0]
	add r1, r1, r0
	ldr r0, addr_a14_0
	ldr r0, [r0]
	sub r1, r1, r0
	ldr r0, addr_a15_0
	ldr r0, [r0]
	add r1, r1, r0
	ldr r0, addr_a16_0
	ldr r0, [r0]
	sub r1, r1, r0
	ldr r0, addr_a17_0
	ldr r0, [r0]
	add r1, r1, r0
	ldr r0, addr_a18_0
	ldr r0, [r0]
	sub r1, r1, r0
	ldr r0, addr_a19_0
	ldr r0, [r0]
	add r1, r1, r0
	ldr r0, addr_a20_0
	ldr r0, [r0]
	sub r1, r1, r0
	ldr r0, addr_a21_0
	ldr r0, [r0]
	add r1, r1, r0
	ldr r0, addr_a22_0
	ldr r0, [r0]
	sub r1, r1, r0
	ldr r0, addr_a23_0
	ldr r0, [r0]
	add r1, r1, r0
	ldr r0, addr_a24_0
	ldr r0, [r0]
	sub r1, r1, r0
	ldr r0, addr_a25_0
	ldr r0, [r0]
	add r1, r1, r0
	ldr r0, addr_a26_0
	ldr r0, [r0]
	sub r1, r1, r0
	ldr r0, addr_a27_0
	ldr r0, [r0]
	add r1, r1, r0
	ldr r0, addr_a28_0
	ldr r0, [r0]
	sub r1, r1, r0
	ldr r0, addr_a29_0
	ldr r0, [r0]
	add r1, r1, r0
	ldr r0, addr_a30_0
	ldr r0, [r0]
	sub r1, r1, r0
	ldr r0, addr_a31_0
	ldr r0, [r0]
	add r1, r1, r0
	ldr r0, addr_a32_0
	ldr r0, [r0]
	sub r0, r1, r0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
	.global main
	.type main , %function
main:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #8
	lsr sp, sp, #3
	lsl sp, sp, #3
.L621:
	bl getint
	mov r0, r0
	str r0, [fp, #-8]
	ldr r2, [fp, #-8]
	mov r1, #2
	mov r0, #9
	mul r0, r1, r0
	add r0, r2, r0
	str r0, [fp, #-4]
	ldr r0, [fp, #-8]
	ldr r1, [fp, #-4]
	mov r0, r0
	mov r1, r1
	bl func
	mov r0, r0
	str r0, [fp, #-8]
	ldr r0, [fp, #-8]
	mov r0, r0
	bl putint
	ldr r0, [fp, #-8]
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr

.LTORG
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
