	.cpu cortex-a72
	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
.data
.comm V, 160000

	.text
	.global KnapSack
	.type KnapSack , %function
KnapSack:
	push {r4, fp, lr}
	mov fp, sp
	sub sp, sp, #36
	lsr sp, sp, #3
	lsl sp, sp, #3
.L109:
	str r0, [fp, #-36]
	str r1, [fp, #-32]
	str r2, [fp, #-28]
	str r3, [fp, #-24]
	ldr r0, [fp, #12]
	str r0, [fp, #-20]
	mov r0, #1
	str r0, [fp, #-16]
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-36]
	cmp r1, r0
	movle r0, #1
	movgt r0, #0
	ble .L118
	b .L120
.L117:
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-36]
	cmp r1, r0
	movle r0, #1
	movgt r0, #0
	ble .L118
	b .L148
.L118:
	mov r0, #0
	str r0, [fp, #-12]
	ldr r1, [fp, #-12]
	ldr r0, [fp, #-20]
	add r0, r0, #1
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L122
	b .L124
.L119:
	ldr r0, [fp, #-20]
	str r0, [fp, #-12]
	ldr r0, [fp, #-36]
	str r0, [fp, #-16]
	ldr r0, [fp, #-16]
	cmp r0, #1
	movge r0, #1
	movlt r0, #0
	bge .L150
	b .L152
.L120:
	b .L119
.L121:
	ldr r1, [fp, #-12]
	ldr r0, [fp, #-20]
	add r0, r0, #1
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L122
	b .L147
.L122:
	ldr r2, [fp, #-12]
	ldr r1, [fp, #-32]
	ldr r0, [fp, #-16]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r2, r0
	movlt r0, #1
	movge r0, #0
	blt .L125
	b .L130
.L123:
	ldr r0, [fp, #-16]
	add r0, r0, #1
	str r0, [fp, #-16]
	b .L117
.L124:
	b .L123
.L125:
	ldr r0, [fp, #-16]
	sub r3, r0, #1
	ldr r2, [fp, #-12]
	ldr r1, addr_V_0
	mov r0, #800
	mul r0, r3, r0
	add r1, r1, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r4, [r0]
	ldr r3, [fp, #-16]
	ldr r2, [fp, #-12]
	ldr r1, addr_V_0
	mov r0, #800
	mul r0, r3, r0
	add r1, r1, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	str r4, [r0]
	b .L127
.L126:
	ldr r0, [fp, #-16]
	sub r3, r0, #1
	ldr r2, [fp, #-12]
	ldr r1, addr_V_0
	mov r0, #800
	mul r0, r3, r0
	add r1, r1, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	str r0, [fp, #-8]
	ldr r0, [fp, #-16]
	sub r3, r0, #1
	ldr r2, [fp, #-12]
	ldr r1, [fp, #-32]
	ldr r0, [fp, #-16]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	sub r2, r2, r0
	ldr r1, addr_V_0
	mov r0, #800
	mul r0, r3, r0
	add r1, r1, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r2, [r0]
	ldr r1, [fp, #-28]
	ldr r0, [fp, #-16]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	add r0, r2, r0
	str r0, [fp, #-4]
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-4]
	cmp r1, r0
	movgt r0, #1
	movle r0, #0
	bgt .L141
	b .L144
.L127:
	ldr r0, [fp, #-12]
	add r0, r0, #1
	str r0, [fp, #-12]
	b .L121
.L130:
	b .L126
.L141:
	ldr r4, [fp, #-8]
	ldr r3, [fp, #-16]
	ldr r2, [fp, #-12]
	ldr r1, addr_V_0
	mov r0, #800
	mul r0, r3, r0
	add r1, r1, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	str r4, [r0]
	b .L143
.L142:
	ldr r4, [fp, #-4]
	ldr r3, [fp, #-16]
	ldr r2, [fp, #-12]
	ldr r1, addr_V_0
	mov r0, #800
	mul r0, r3, r0
	add r1, r1, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	str r4, [r0]
	b .L143
.L143:
	b .L127
.L144:
	b .L142
.L147:
	b .L123
.L148:
	b .L119
.L149:
	ldr r0, [fp, #-16]
	cmp r0, #1
	movge r0, #1
	movlt r0, #0
	bge .L150
	b .L165
.L150:
	ldr r3, [fp, #-16]
	ldr r2, [fp, #-12]
	ldr r1, addr_V_0
	mov r0, #800
	mul r0, r3, r0
	add r1, r1, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r4, [r0]
	ldr r0, [fp, #-16]
	sub r3, r0, #1
	ldr r2, [fp, #-12]
	ldr r1, addr_V_0
	mov r0, #800
	mul r0, r3, r0
	add r1, r1, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r4, r0
	movgt r0, #1
	movle r0, #0
	bgt .L153
	b .L158
.L151:
	ldr r3, [fp, #-36]
	ldr r2, [fp, #-20]
	ldr r1, addr_V_0
	mov r0, #800
	mul r0, r3, r0
	add r1, r1, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	mov r0, r0
	mov sp, fp
	pop {r4, fp, lr}
	bx lr
.L152:
	b .L151
.L153:
	ldr r1, [fp, #-24]
	ldr r0, [fp, #-16]
	lsl r0, r0, #2
	add r1, r1, r0
	mov r1, r1
	mov r0, #1
	str r0, [r1]
	ldr r2, [fp, #-12]
	ldr r1, [fp, #-32]
	ldr r0, [fp, #-16]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	sub r0, r2, r0
	str r0, [fp, #-12]
	b .L155
.L154:
	ldr r1, [fp, #-24]
	ldr r0, [fp, #-16]
	lsl r0, r0, #2
	add r1, r1, r0
	mov r1, r1
	mov r0, #0
	str r0, [r1]
	b .L155
.L155:
	ldr r0, [fp, #-16]
	sub r0, r0, #1
	str r0, [fp, #-16]
	b .L149
.L158:
	b .L154
.L165:
	b .L151
	.global main
	.type main , %function
main:
	push {r4, r5, fp, lr}
	mov fp, sp
	sub sp, sp, #84
	lsr sp, sp, #3
	lsl sp, sp, #3
.L167:
	mvn r0, #35
	add r0, fp, r0
	mov r0, r0
	ldr r0, =-36
	add r0, fp, r0
	mov r1, #0
	mov r2, #24
	bl memset
	mvn r0, #35
	add r1, fp, r0
	mov r1, r1
	mov r0, #0
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
	mov r0, #2
	str r0, [r1]
	mvn r0, #35
	add r0, fp, r0
	add r1, r0, #12
	mov r1, r1
	mov r0, #6
	str r0, [r1]
	mvn r0, #35
	add r0, fp, r0
	add r1, r0, #16
	mov r1, r1
	mov r0, #5
	str r0, [r1]
	mvn r0, #35
	add r0, fp, r0
	add r1, r0, #20
	mov r1, r1
	mov r0, #4
	str r0, [r1]
	mvn r0, #59
	add r0, fp, r0
	mov r0, r0
	ldr r0, =-60
	add r0, fp, r0
	mov r1, #0
	mov r2, #24
	bl memset
	mvn r0, #59
	add r1, fp, r0
	mov r1, r1
	mov r0, #0
	str r0, [r1]
	mvn r0, #59
	add r0, fp, r0
	add r1, r0, #4
	mov r1, r1
	mov r0, #6
	str r0, [r1]
	mvn r0, #59
	add r0, fp, r0
	add r1, r0, #8
	mov r1, r1
	mov r0, #3
	str r0, [r1]
	mvn r0, #59
	add r0, fp, r0
	add r1, r0, #12
	mov r1, r1
	mov r0, #5
	str r0, [r1]
	mvn r0, #59
	add r0, fp, r0
	add r1, r0, #16
	mov r1, r1
	mov r0, #4
	str r0, [r1]
	mvn r0, #59
	add r0, fp, r0
	add r1, r0, #20
	mov r1, r1
	mov r0, #6
	str r0, [r1]
	mov r0, #5
	str r0, [fp, #-8]
	mov r0, #10
	str r0, [fp, #-4]
	ldr r5, [fp, #-8]
	mvn r0, #35
	add r1, fp, r0
	mov r1, r1
	mvn r0, #59
	add r2, fp, r0
	mov r2, r2
	mvn r0, #83
	add r3, fp, r0
	mov r3, r3
	ldr r4, [fp, #-4]
	mov r0, r5
	mov r1, r1
	mov r2, r2
	mov r3, r3
	push {r4}
	bl KnapSack
	add sp, sp, #4
	mov r0, r0
	str r0, [fp, #-12]
	ldr r0, [fp, #-12]
	mov r0, r0
	bl putint
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {r4, r5, fp, lr}
	bx lr

.LTORG
addr_V_0:
	.word V
