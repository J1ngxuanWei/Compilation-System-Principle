	.cpu cortex-a72
	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm

	.text
	.global main
	.type main , %function
main:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #164
	lsr sp, sp, #3
	lsl sp, sp, #3
.L18:
	mvn r0, #35
	add r0, fp, r0
	mov r0, r0
	ldr r0, =-36
	add r0, fp, r0
	mov r1, #0
	mov r2, #32
	bl memset
	mvn r0, #35
	add r1, fp, r0
	mov r1, r1
	mov r0, #1
	str r0, [r1]
	mvn r0, #35
	add r0, fp, r0
	add r1, r0, #4
	mov r1, r1
	mov r0, #2
	str r0, [r1]
	mvn r0, #35
	add r0, fp, r0
	add r1, r0, #8
	mov r1, r1
	mov r0, #3
	str r0, [r1]
	mvn r0, #35
	add r0, fp, r0
	add r1, r0, #12
	mov r1, r1
	mov r0, #4
	str r0, [r1]
	mvn r0, #35
	add r0, fp, r0
	add r1, r0, #24
	mov r1, r1
	mov r0, #7
	str r0, [r1]
	mov r0, #3
	str r0, [fp, #-4]
	mvn r0, #67
	add r0, fp, r0
	mov r0, r0
	ldr r0, =-68
	add r0, fp, r0
	mov r1, #0
	mov r2, #32
	bl memset
	mvn r0, #99
	add r0, fp, r0
	mov r0, r0
	ldr r0, =-100
	add r0, fp, r0
	mov r1, #0
	mov r2, #32
	bl memset
	mvn r0, #99
	add r1, fp, r0
	mov r1, r1
	mov r0, #1
	str r0, [r1]
	mvn r0, #99
	add r0, fp, r0
	add r1, r0, #4
	mov r1, r1
	mov r0, #2
	str r0, [r1]
	mvn r0, #99
	add r0, fp, r0
	add r1, r0, #8
	mov r1, r1
	mov r0, #3
	str r0, [r1]
	mvn r0, #99
	add r0, fp, r0
	add r1, r0, #12
	mov r1, r1
	mov r0, #4
	str r0, [r1]
	mvn r0, #99
	add r0, fp, r0
	add r1, r0, #16
	mov r1, r1
	mov r0, #5
	str r0, [r1]
	mvn r0, #99
	add r0, fp, r0
	add r1, r0, #20
	mov r1, r1
	mov r0, #6
	str r0, [r1]
	mvn r0, #99
	add r0, fp, r0
	add r1, r0, #24
	mov r1, r1
	mov r0, #7
	str r0, [r1]
	mvn r0, #99
	add r0, fp, r0
	add r1, r0, #28
	mov r1, r1
	mov r0, #8
	str r0, [r1]
	mvn r0, #131
	add r0, fp, r0
	mov r0, r0
	ldr r0, =-132
	add r0, fp, r0
	mov r1, #0
	mov r2, #32
	bl memset
	mvn r0, #131
	add r1, fp, r0
	mov r1, r1
	mov r0, #1
	str r0, [r1]
	mvn r0, #131
	add r0, fp, r0
	add r1, r0, #4
	mov r1, r1
	mov r0, #2
	str r0, [r1]
	mvn r0, #131
	add r0, fp, r0
	add r1, r0, #8
	mov r1, r1
	mov r0, #3
	str r0, [r1]
	mvn r0, #131
	add r0, fp, r0
	add r1, r0, #16
	mov r1, r1
	mov r0, #5
	str r0, [r1]
	mvn r0, #131
	add r0, fp, r0
	add r1, r0, #24
	mov r1, r1
	mvn r0, #35
	add r0, fp, r0
	add r0, r0, #24
	mov r0, r0
	ldr r0, [r0]
	str r0, [r1]
	mvn r0, #131
	add r0, fp, r0
	add r1, r0, #28
	mov r1, r1
	mov r0, #8
	str r0, [r1]
	mvn r0, #163
	add r0, fp, r0
	mov r0, r0
	ldr r0, =-164
	add r0, fp, r0
	mov r1, #0
	mov r2, #32
	bl memset
	mvn r0, #163
	add r1, fp, r0
	mov r1, r1
	mvn r0, #131
	add r0, fp, r0
	add r0, r0, #20
	mov r0, r0
	ldr r0, [r0]
	str r0, [r1]
	mvn r0, #163
	add r0, fp, r0
	add r1, r0, #4
	mov r1, r1
	mvn r0, #99
	add r0, fp, r0
	add r0, r0, #20
	mov r0, r0
	ldr r0, [r0]
	str r0, [r1]
	mvn r0, #163
	add r0, fp, r0
	add r1, r0, #8
	mov r1, r1
	mov r0, #3
	str r0, [r1]
	mvn r0, #163
	add r0, fp, r0
	add r1, r0, #12
	mov r1, r1
	mov r0, #4
	str r0, [r1]
	mvn r0, #163
	add r0, fp, r0
	add r1, r0, #16
	mov r1, r1
	mov r0, #5
	str r0, [r1]
	mvn r0, #163
	add r0, fp, r0
	add r1, r0, #20
	mov r1, r1
	mov r0, #6
	str r0, [r1]
	mvn r0, #163
	add r0, fp, r0
	add r1, r0, #24
	mov r1, r1
	mov r0, #7
	str r0, [r1]
	mvn r0, #163
	add r0, fp, r0
	add r1, r0, #28
	mov r1, r1
	mov r0, #8
	str r0, [r1]
	mvn r0, #163
	add r0, fp, r0
	add r0, r0, #28
	mov r0, r0
	ldr r1, [r0]
	mvn r0, #163
	add r0, fp, r0
	mov r0, r0
	ldr r0, [r0]
	add r1, r1, r0
	mvn r0, #163
	add r0, fp, r0
	add r0, r0, #4
	mov r0, r0
	ldr r0, [r0]
	add r1, r1, r0
	mvn r0, #131
	add r0, fp, r0
	add r0, r0, #24
	mov r0, r0
	ldr r0, [r0]
	add r0, r1, r0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr

.LTORG
