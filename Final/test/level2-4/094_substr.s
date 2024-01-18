	.cpu cortex-a72
	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm

	.text
	.global MAX
	.type MAX , %function
MAX:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #8
	lsr sp, sp, #3
	lsl sp, sp, #3
.L111:
	str r0, [fp, #-8]
	str r1, [fp, #-4]
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-4]
	cmp r1, r0
	moveq r0, #1
	movne r0, #0
	beq .L114
	b .L117
.L114:
	ldr r0, [fp, #-8]
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
	b .L116
.L115:
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-4]
	cmp r1, r0
	movgt r0, #1
	movle r0, #0
	bgt .L118
	b .L121
.L116:
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L117:
	b .L115
.L118:
	ldr r0, [fp, #-8]
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
	b .L120
.L119:
	ldr r0, [fp, #-4]
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
	b .L120
.L120:
	b .L116
.L121:
	b .L119
	.global max_sum_nonadjacent
	.type max_sum_nonadjacent , %function
max_sum_nonadjacent:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #76
	lsr sp, sp, #3
	lsl sp, sp, #3
.L122:
	str r0, [fp, #-12]
	str r1, [fp, #-8]
	mvn r0, #75
	add r0, fp, r0
	mov r0, r0
	ldr r0, =-76
	add r0, fp, r0
	mov r1, #0
	mov r2, #64
	bl memset
	ldr r0, [fp, #-12]
	mov r0, r0
	ldr r1, [r0]
	mvn r0, #75
	add r0, fp, r0
	mov r0, r0
	str r1, [r0]
	ldr r0, [fp, #-12]
	mov r0, r0
	ldr r2, [r0]
	ldr r0, [fp, #-12]
	add r0, r0, #4
	mov r0, r0
	ldr r1, [r0]
	mov r0, r2
	mov r1, r1
	bl MAX
	mov r1, r0
	mvn r0, #75
	add r0, fp, r0
	add r0, r0, #4
	mov r0, r0
	str r1, [r0]
	mov r0, #2
	str r0, [fp, #-4]
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-8]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L137
	b .L139
.L136:
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-8]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L137
	b .L145
.L137:
	ldr r0, [fp, #-4]
	sub r2, r0, #2
	mvn r0, #75
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r2, [r0]
	ldr r1, [fp, #-12]
	ldr r0, [fp, #-4]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	add r3, r2, r0
	ldr r0, [fp, #-4]
	sub r2, r0, #1
	mvn r0, #75
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r1, [r0]
	mov r0, r3
	mov r1, r1
	bl MAX
	mov r3, r0
	ldr r2, [fp, #-4]
	mvn r0, #75
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	str r3, [r0]
	ldr r0, [fp, #-4]
	add r0, r0, #1
	str r0, [fp, #-4]
	b .L136
.L138:
	ldr r0, [fp, #-8]
	sub r2, r0, #1
	mvn r0, #75
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L139:
	b .L138
.L145:
	b .L138
	.global longest_common_subseq
	.type longest_common_subseq , %function
longest_common_subseq:
	push {r4, fp, lr}
	mov fp, sp
	sub sp, sp, #24
	sub sp, sp, #1024
	lsr sp, sp, #3
	lsl sp, sp, #3
.L147:
	str r0, [fp, #-24]
	str r1, [fp, #-20]
	str r2, [fp, #-16]
	str r3, [fp, #-12]
	ldr r0, =-1048
	add r0, fp, r0
	mov r0, r0
	ldr r0, =-1048
	add r0, fp, r0
	mov r1, #0
	mov r2, #1024
	bl memset
	mov r0, #1
	str r0, [fp, #-8]
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-20]
	cmp r1, r0
	movle r0, #1
	movgt r0, #0
	ble .L157
	b .L159
.L156:
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-20]
	cmp r1, r0
	movle r0, #1
	movgt r0, #0
	ble .L157
	b .L178
.L157:
	mov r0, #1
	str r0, [fp, #-4]
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-12]
	cmp r1, r0
	movle r0, #1
	movgt r0, #0
	ble .L161
	b .L163
.L158:
	ldr r3, [fp, #-20]
	ldr r2, [fp, #-12]
	ldr r0, =-1048
	add r1, fp, r0
	lsl r0, r3, #6
	add r1, r1, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	mov r0, r0
	mov sp, fp
	pop {r4, fp, lr}
	bx lr
.L159:
	b .L158
.L160:
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-12]
	cmp r1, r0
	movle r0, #1
	movgt r0, #0
	ble .L161
	b .L177
.L161:
	ldr r1, [fp, #-24]
	ldr r0, [fp, #-8]
	sub r0, r0, #1
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r2, [r0]
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-4]
	sub r0, r0, #1
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r2, r0
	moveq r0, #1
	movne r0, #0
	beq .L164
	b .L171
.L162:
	ldr r0, [fp, #-8]
	add r0, r0, #1
	str r0, [fp, #-8]
	b .L156
.L163:
	b .L162
.L164:
	ldr r0, [fp, #-8]
	sub r3, r0, #1
	ldr r0, [fp, #-4]
	sub r2, r0, #1
	ldr r0, =-1048
	add r1, fp, r0
	lsl r0, r3, #6
	add r1, r1, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	add r4, r0, #1
	ldr r3, [fp, #-8]
	ldr r2, [fp, #-4]
	ldr r0, =-1048
	add r1, fp, r0
	lsl r0, r3, #6
	add r1, r1, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	str r4, [r0]
	b .L166
.L165:
	ldr r0, [fp, #-8]
	sub r3, r0, #1
	ldr r2, [fp, #-4]
	ldr r0, =-1048
	add r1, fp, r0
	lsl r0, r3, #6
	add r1, r1, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r4, [r0]
	ldr r3, [fp, #-8]
	ldr r0, [fp, #-4]
	sub r2, r0, #1
	ldr r0, =-1048
	add r1, fp, r0
	lsl r0, r3, #6
	add r1, r1, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r1, [r0]
	mov r0, r4
	mov r1, r1
	bl MAX
	mov r4, r0
	ldr r3, [fp, #-8]
	ldr r2, [fp, #-4]
	ldr r0, =-1048
	add r1, fp, r0
	lsl r0, r3, #6
	add r1, r1, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	str r4, [r0]
	b .L166
.L166:
	ldr r0, [fp, #-4]
	add r0, r0, #1
	str r0, [fp, #-4]
	b .L160
.L171:
	b .L165
.L177:
	b .L162
.L178:
	b .L158
	.global main
	.type main , %function
main:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #120
	lsr sp, sp, #3
	lsl sp, sp, #3
.L180:
	mvn r0, #67
	add r0, fp, r0
	mov r0, r0
	ldr r0, =-68
	add r0, fp, r0
	mov r1, #0
	mov r2, #60
	bl memset
	mvn r0, #67
	add r1, fp, r0
	mov r1, r1
	mov r0, #8
	str r0, [r1]
	mvn r0, #67
	add r0, fp, r0
	add r1, r0, #4
	mov r1, r1
	mov r0, #7
	str r0, [r1]
	mvn r0, #67
	add r0, fp, r0
	add r1, r0, #8
	mov r1, r1
	mov r0, #4
	str r0, [r1]
	mvn r0, #67
	add r0, fp, r0
	add r1, r0, #12
	mov r1, r1
	mov r0, #1
	str r0, [r1]
	mvn r0, #67
	add r0, fp, r0
	add r1, r0, #16
	mov r1, r1
	mov r0, #2
	str r0, [r1]
	mvn r0, #67
	add r0, fp, r0
	add r1, r0, #20
	mov r1, r1
	mov r0, #7
	str r0, [r1]
	mvn r0, #67
	add r0, fp, r0
	add r1, r0, #24
	mov r1, r1
	mov r0, #0
	str r0, [r1]
	mvn r0, #67
	add r0, fp, r0
	add r1, r0, #28
	mov r1, r1
	mov r0, #1
	str r0, [r1]
	mvn r0, #67
	add r0, fp, r0
	add r1, r0, #32
	mov r1, r1
	mov r0, #9
	str r0, [r1]
	mvn r0, #67
	add r0, fp, r0
	add r1, r0, #36
	mov r1, r1
	mov r0, #3
	str r0, [r1]
	mvn r0, #67
	add r0, fp, r0
	add r1, r0, #40
	mov r1, r1
	mov r0, #4
	str r0, [r1]
	mvn r0, #67
	add r0, fp, r0
	add r1, r0, #44
	mov r1, r1
	mov r0, #8
	str r0, [r1]
	mvn r0, #67
	add r0, fp, r0
	add r1, r0, #48
	mov r1, r1
	mov r0, #3
	str r0, [r1]
	mvn r0, #67
	add r0, fp, r0
	add r1, r0, #52
	mov r1, r1
	mov r0, #7
	str r0, [r1]
	mvn r0, #67
	add r0, fp, r0
	add r1, r0, #56
	mov r1, r1
	mov r0, #0
	str r0, [r1]
	mvn r0, #119
	add r0, fp, r0
	mov r0, r0
	ldr r0, =-120
	add r0, fp, r0
	mov r1, #0
	mov r2, #52
	bl memset
	mvn r0, #119
	add r1, fp, r0
	mov r1, r1
	mov r0, #3
	str r0, [r1]
	mvn r0, #119
	add r0, fp, r0
	add r1, r0, #4
	mov r1, r1
	mov r0, #9
	str r0, [r1]
	mvn r0, #119
	add r0, fp, r0
	add r1, r0, #8
	mov r1, r1
	mov r0, #7
	str r0, [r1]
	mvn r0, #119
	add r0, fp, r0
	add r1, r0, #12
	mov r1, r1
	mov r0, #1
	str r0, [r1]
	mvn r0, #119
	add r0, fp, r0
	add r1, r0, #16
	mov r1, r1
	mov r0, #4
	str r0, [r1]
	mvn r0, #119
	add r0, fp, r0
	add r1, r0, #20
	mov r1, r1
	mov r0, #2
	str r0, [r1]
	mvn r0, #119
	add r0, fp, r0
	add r1, r0, #24
	mov r1, r1
	mov r0, #4
	str r0, [r1]
	mvn r0, #119
	add r0, fp, r0
	add r1, r0, #28
	mov r1, r1
	mov r0, #3
	str r0, [r1]
	mvn r0, #119
	add r0, fp, r0
	add r1, r0, #32
	mov r1, r1
	mov r0, #6
	str r0, [r1]
	mvn r0, #119
	add r0, fp, r0
	add r1, r0, #36
	mov r1, r1
	mov r0, #8
	str r0, [r1]
	mvn r0, #119
	add r0, fp, r0
	add r1, r0, #40
	mov r1, r1
	mov r0, #0
	str r0, [r1]
	mvn r0, #119
	add r0, fp, r0
	add r1, r0, #44
	mov r1, r1
	mov r0, #1
	str r0, [r1]
	mvn r0, #119
	add r0, fp, r0
	add r1, r0, #48
	mov r1, r1
	mov r0, #5
	str r0, [r1]
	mvn r0, #67
	add r0, fp, r0
	mov r0, r0
	mov r0, r0
	mov r1, #15
	bl max_sum_nonadjacent
	mov r0, r0
	mov r0, r0
	bl putint
	mov r0, #10
	bl putch
	mvn r0, #67
	add r1, fp, r0
	mov r1, r1
	mvn r0, #119
	add r2, fp, r0
	mov r2, r2
	mov r0, r1
	mov r1, #15
	mov r2, r2
	mov r3, #13
	bl longest_common_subseq
	mov r0, r0
	mov r0, r0
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr

.LTORG
