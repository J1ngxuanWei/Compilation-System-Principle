	.cpu cortex-a72
	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm

	.text
	.global foo
	.type foo , %function
foo:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #136
	lsr sp, sp, #3
	lsl sp, sp, #3
.L158:
	mvn r0, #135
	add r0, fp, r0
	mov r0, r0
	ldr r0, =-136
	add r0, fp, r0
	mov r1, #0
	mov r2, #64
	bl memset
	mvn r0, #135
	add r1, fp, r0
	mov r1, r1
	mov r0, #0
	str r0, [r1]
	mvn r0, #135
	add r0, fp, r0
	add r1, r0, #4
	mov r1, r1
	mov r0, #1
	str r0, [r1]
	mvn r0, #135
	add r0, fp, r0
	add r1, r0, #8
	mov r1, r1
	mov r0, #2
	str r0, [r1]
	mvn r0, #135
	add r0, fp, r0
	add r1, r0, #12
	mov r1, r1
	mov r0, #3
	str r0, [r1]
	mvn r0, #135
	add r0, fp, r0
	add r1, r0, #16
	mov r1, r1
	mov r0, #0
	str r0, [r1]
	mvn r0, #135
	add r0, fp, r0
	add r1, r0, #20
	mov r1, r1
	mov r0, #1
	str r0, [r1]
	mvn r0, #135
	add r0, fp, r0
	add r1, r0, #24
	mov r1, r1
	mov r0, #2
	str r0, [r1]
	mvn r0, #135
	add r0, fp, r0
	add r1, r0, #28
	mov r1, r1
	mov r0, #3
	str r0, [r1]
	mvn r0, #135
	add r0, fp, r0
	add r1, r0, #32
	mov r1, r1
	mov r0, #0
	str r0, [r1]
	mvn r0, #135
	add r0, fp, r0
	add r1, r0, #36
	mov r1, r1
	mov r0, #1
	str r0, [r1]
	mvn r0, #135
	add r0, fp, r0
	add r1, r0, #40
	mov r1, r1
	mov r0, #2
	str r0, [r1]
	mvn r0, #135
	add r0, fp, r0
	add r1, r0, #44
	mov r1, r1
	mov r0, #3
	str r0, [r1]
	mvn r0, #135
	add r0, fp, r0
	add r1, r0, #48
	mov r1, r1
	mov r0, #0
	str r0, [r1]
	mvn r0, #135
	add r0, fp, r0
	add r1, r0, #52
	mov r1, r1
	mov r0, #1
	str r0, [r1]
	mvn r0, #135
	add r0, fp, r0
	add r1, r0, #56
	mov r1, r1
	mov r0, #2
	str r0, [r1]
	mvn r0, #135
	add r0, fp, r0
	add r1, r0, #60
	mov r1, r1
	mov r0, #3
	str r0, [r1]
	mov r0, #3
	str r0, [fp, #-72]
	mov r0, #7
	str r0, [fp, #-68]
	mov r0, #5
	str r0, [fp, #-64]
	mov r0, #6
	str r0, [fp, #-60]
	mov r0, #1
	str r0, [fp, #-56]
	mov r0, #0
	str r0, [fp, #-52]
	mov r0, #3
	str r0, [fp, #-48]
	mov r0, #5
	str r0, [fp, #-44]
	mov r0, #4
	str r0, [fp, #-40]
	mov r0, #2
	str r0, [fp, #-36]
	mov r0, #7
	str r0, [fp, #-32]
	mov r0, #9
	str r0, [fp, #-28]
	mov r0, #8
	str r0, [fp, #-24]
	mov r0, #1
	str r0, [fp, #-20]
	mov r0, #4
	str r0, [fp, #-16]
	mov r0, #6
	str r0, [fp, #-12]
	ldr r1, [fp, #-72]
	ldr r0, [fp, #-68]
	add r1, r1, r0
	ldr r0, [fp, #-64]
	add r1, r1, r0
	ldr r0, [fp, #-60]
	add r1, r1, r0
	ldr r0, [fp, #-56]
	add r1, r1, r0
	ldr r0, [fp, #-52]
	add r1, r1, r0
	ldr r0, [fp, #-48]
	add r1, r1, r0
	ldr r0, [fp, #-44]
	add r0, r1, r0
	str r0, [fp, #-8]
	ldr r1, [fp, #-40]
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
	add r0, r1, r0
	str r0, [fp, #-4]
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-4]
	add r3, r1, r0
	ldr r2, [fp, #-72]
	mvn r0, #135
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	add r0, r3, r0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
	.global main
	.type main , %function
main:
	push {r4, fp, lr}
	mov fp, sp
	sub sp, sp, #112
	lsr sp, sp, #3
	lsl sp, sp, #3
.L196:
	mov r0, #3
	str r0, [fp, #-112]
	mov r0, #7
	str r0, [fp, #-108]
	mov r0, #5
	str r0, [fp, #-104]
	mov r0, #6
	str r0, [fp, #-100]
	mov r0, #1
	str r0, [fp, #-96]
	mov r0, #0
	str r0, [fp, #-92]
	mov r0, #3
	str r0, [fp, #-88]
	mov r0, #5
	str r0, [fp, #-84]
	mov r0, #4
	str r0, [fp, #-80]
	mov r0, #2
	str r0, [fp, #-76]
	mov r0, #7
	str r0, [fp, #-72]
	mov r0, #9
	str r0, [fp, #-68]
	mov r0, #8
	str r0, [fp, #-64]
	mov r0, #1
	str r0, [fp, #-60]
	mov r0, #4
	str r0, [fp, #-56]
	mov r0, #6
	str r0, [fp, #-52]
	ldr r1, [fp, #-112]
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
	add r0, r1, r0
	str r0, [fp, #-48]
	ldr r1, [fp, #-80]
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
	add r1, r1, r0
	ldr r0, [fp, #-52]
	add r0, r1, r0
	str r0, [fp, #-44]
	ldr r4, [fp, #-48]
	bl foo
	mov r0, r0
	add r0, r4, r0
	str r0, [fp, #-48]
	mov r0, #4
	str r0, [fp, #-40]
	mov r0, #7
	str r0, [fp, #-36]
	mov r0, #2
	str r0, [fp, #-32]
	mov r0, #5
	str r0, [fp, #-28]
	mov r0, #8
	str r0, [fp, #-24]
	mov r0, #0
	str r0, [fp, #-20]
	mov r0, #6
	str r0, [fp, #-16]
	mov r0, #3
	str r0, [fp, #-12]
	ldr r4, [fp, #-44]
	bl foo
	mov r0, r0
	add r0, r4, r0
	str r0, [fp, #-44]
	ldr r0, [fp, #-80]
	str r0, [fp, #-112]
	ldr r0, [fp, #-76]
	str r0, [fp, #-108]
	ldr r0, [fp, #-72]
	str r0, [fp, #-104]
	ldr r0, [fp, #-68]
	str r0, [fp, #-100]
	ldr r0, [fp, #-64]
	str r0, [fp, #-96]
	ldr r0, [fp, #-60]
	str r0, [fp, #-92]
	ldr r0, [fp, #-56]
	str r0, [fp, #-88]
	ldr r0, [fp, #-52]
	str r0, [fp, #-84]
	ldr r1, [fp, #-40]
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
	add r0, r1, r0
	str r0, [fp, #-8]
	ldr r1, [fp, #-48]
	ldr r0, [fp, #-44]
	add r1, r1, r0
	ldr r0, [fp, #-8]
	add r0, r1, r0
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	mov r0, r0
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {r4, fp, lr}
	bx lr

.LTORG
