	.cpu cortex-a72
	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
.data
.comm a, 16384

	.text
	.global f1
	.type f1 , %function
f1:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #4
	lsr sp, sp, #3
	lsl sp, sp, #3
.L17:
	str r0, [fp, #-4]
	ldr r0, addr_a_0
	add r1, r0, #20
	mov r1, r1
	mov r0, #4000
	str r0, [r1]
	ldr r0, addr_a_0
	add r1, r0, #16000
	mov r1, r1
	mov r0, #3
	str r0, [r1]
	ldr r1, addr_a_0
	ldr r0, =16380
	add r1, r1, r0
	mov r1, r1
	mov r0, #7
	str r0, [r1]
	ldr r1, addr_a_0
	ldr r0, =8864
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	add r3, r0, #9
	ldr r2, [fp, #-4]
	ldr r1, addr_a_0
	ldr r0, =16380
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	lsl r0, r0, #2
	add r0, r2, r0
	mov r0, r0
	str r3, [r0]
	ldr r0, addr_a_0
	add r0, r0, #20
	mov r0, r0
	ldr r0, [r0]
	ldr r1, addr_a_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
	.global main
	.type main , %function
main:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #32768
	lsr sp, sp, #3
	lsl sp, sp, #3
.L28:
	ldr r0, =-16384
	add r0, fp, r0
	mov r0, r0
	ldr r0, =-16384
	add r0, fp, r0
	mov r1, #0
	mov r2, #16384
	bl memset
	ldr r0, =-16384
	add r0, fp, r0
	add r1, r0, #4096
	mov r1, r1
	mov r0, #1
	str r0, [r1]
	ldr r0, =-16384
	add r0, fp, r0
	add r1, r0, #8192
	mov r1, r1
	mov r0, #2
	str r0, [r1]
	ldr r0, =-16384
	add r1, fp, r0
	ldr r0, =8196
	add r1, r1, r0
	mov r1, r1
	mov r0, #3
	str r0, [r1]
	ldr r0, =-16384
	add r0, fp, r0
	add r1, r0, #12288
	mov r1, r1
	mov r0, #4
	str r0, [r1]
	ldr r0, =-16384
	add r1, fp, r0
	ldr r0, =12292
	add r1, r1, r0
	mov r1, r1
	mov r0, #5
	str r0, [r1]
	ldr r0, =-16384
	add r1, fp, r0
	ldr r0, =12296
	add r1, r1, r0
	mov r1, r1
	mov r0, #6
	str r0, [r1]
	ldr r0, =-32768
	add r0, fp, r0
	mov r0, r0
	ldr r0, =-32768
	add r0, fp, r0
	mov r1, #0
	mov r2, #16384
	bl memset
	ldr r0, =-32768
	add r1, fp, r0
	mov r1, r1
	mov r0, #1
	str r0, [r1]
	ldr r0, =-32768
	add r0, fp, r0
	add r1, r0, #4
	mov r1, r1
	mov r0, #2
	str r0, [r1]
	ldr r0, =-32768
	add r0, fp, r0
	add r1, r0, #16
	mov r1, r1
	mov r0, #3
	str r0, [r1]
	ldr r0, =-32768
	add r0, fp, r0
	add r1, r0, #20
	mov r1, r1
	mov r0, #4
	str r0, [r1]
	ldr r0, =-32768
	add r0, fp, r0
	mov r0, r0
	mov r0, r0
	bl f1
	mov r0, r0
	mov r0, r0
	bl putint
	mov r0, #10
	bl putch
	ldr r0, =-32768
	add r0, fp, r0
	add r0, r0, #32
	mov r0, r0
	ldr r0, [r0]
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr

.LTORG
addr_a_0:
	.word a
