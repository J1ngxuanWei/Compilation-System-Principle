	.cpu cortex-a72
	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
.data
.global n
.size n, 4
n:
	.word 0

	.text
	.global QuickSort
	.type QuickSort , %function
QuickSort:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #28
	lsr sp, sp, #3
	lsl sp, sp, #3
.L120:
	str r0, [fp, #-28]
	str r1, [fp, #-24]
	str r2, [fp, #-20]
	ldr r1, [fp, #-24]
	ldr r0, [fp, #-20]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L124
	b .L126
.L124:
	ldr r0, [fp, #-24]
	str r0, [fp, #-16]
	ldr r0, [fp, #-20]
	str r0, [fp, #-12]
	ldr r1, [fp, #-28]
	ldr r0, [fp, #-24]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	str r0, [fp, #-8]
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-12]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L133
	b .L135
.L125:
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L126:
	b .L125
.L132:
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-12]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L133
	b .L176
.L133:
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-12]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L144
	b .L140
.L134:
	ldr r2, [fp, #-8]
	ldr r1, [fp, #-28]
	ldr r0, [fp, #-16]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	str r2, [r0]
	ldr r0, [fp, #-16]
	sub r0, r0, #1
	str r0, [fp, #-4]
	ldr r0, [fp, #-28]
	ldr r1, [fp, #-24]
	ldr r2, [fp, #-4]
	mov r0, r0
	mov r1, r1
	mov r2, r2
	bl QuickSort
	mov r0, r0
	str r0, [fp, #-4]
	ldr r0, [fp, #-16]
	add r0, r0, #1
	str r0, [fp, #-4]
	ldr r0, [fp, #-28]
	ldr r1, [fp, #-4]
	ldr r2, [fp, #-20]
	mov r0, r0
	mov r1, r1
	mov r2, r2
	bl QuickSort
	mov r0, r0
	str r0, [fp, #-4]
	b .L125
.L135:
	b .L134
.L136:
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-12]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L144
	b .L145
.L137:
	ldr r0, [fp, #-12]
	sub r0, r0, #1
	str r0, [fp, #-12]
	b .L136
.L138:
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-12]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L149
	b .L151
.L140:
	b .L138
.L144:
	ldr r1, [fp, #-28]
	ldr r0, [fp, #-12]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r1, [r0]
	ldr r0, [fp, #-8]
	sub r0, r0, #1
	cmp r1, r0
	movgt r0, #1
	movle r0, #0
	bgt .L137
	b .L148
.L145:
	b .L138
.L148:
	b .L138
.L149:
	ldr r1, [fp, #-28]
	ldr r0, [fp, #-12]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r2, [r0]
	ldr r1, [fp, #-28]
	ldr r0, [fp, #-16]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	str r2, [r0]
	ldr r0, [fp, #-16]
	add r0, r0, #1
	str r0, [fp, #-16]
	b .L150
.L150:
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-12]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L164
	b .L160
.L151:
	b .L150
.L156:
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-12]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L164
	b .L165
.L157:
	ldr r0, [fp, #-16]
	add r0, r0, #1
	str r0, [fp, #-16]
	b .L156
.L158:
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-12]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L169
	b .L171
.L160:
	b .L158
.L164:
	ldr r1, [fp, #-28]
	ldr r0, [fp, #-16]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r1, [r0]
	ldr r0, [fp, #-8]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L157
	b .L168
.L165:
	b .L158
.L168:
	b .L158
.L169:
	ldr r1, [fp, #-28]
	ldr r0, [fp, #-16]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r2, [r0]
	ldr r1, [fp, #-28]
	ldr r0, [fp, #-12]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	str r2, [r0]
	ldr r0, [fp, #-12]
	sub r0, r0, #1
	str r0, [fp, #-12]
	b .L170
.L170:
	b .L132
.L171:
	b .L170
.L176:
	b .L134
	.global main
	.type main , %function
main:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #52
	lsr sp, sp, #3
	lsl sp, sp, #3
.L180:
	mov r1, #10
	ldr r0, addr_n_0
	str r1, [r0]
	mvn r0, #51
	add r1, fp, r0
	mov r1, r1
	mov r0, #4
	str r0, [r1]
	mvn r0, #51
	add r0, fp, r0
	add r1, r0, #4
	mov r1, r1
	mov r0, #3
	str r0, [r1]
	mvn r0, #51
	add r0, fp, r0
	add r1, r0, #8
	mov r1, r1
	mov r0, #9
	str r0, [r1]
	mvn r0, #51
	add r0, fp, r0
	add r1, r0, #12
	mov r1, r1
	mov r0, #2
	str r0, [r1]
	mvn r0, #51
	add r0, fp, r0
	add r1, r0, #16
	mov r1, r1
	mov r0, #0
	str r0, [r1]
	mvn r0, #51
	add r0, fp, r0
	add r1, r0, #20
	mov r1, r1
	mov r0, #1
	str r0, [r1]
	mvn r0, #51
	add r0, fp, r0
	add r1, r0, #24
	mov r1, r1
	mov r0, #6
	str r0, [r1]
	mvn r0, #51
	add r0, fp, r0
	add r1, r0, #28
	mov r1, r1
	mov r0, #5
	str r0, [r1]
	mvn r0, #51
	add r0, fp, r0
	add r1, r0, #32
	mov r1, r1
	mov r0, #7
	str r0, [r1]
	mvn r0, #51
	add r0, fp, r0
	add r1, r0, #36
	mov r1, r1
	mov r0, #8
	str r0, [r1]
	mov r0, #0
	str r0, [fp, #-12]
	mov r0, #9
	str r0, [fp, #-8]
	mvn r0, #51
	add r0, fp, r0
	mov r0, r0
	ldr r1, [fp, #-12]
	ldr r2, [fp, #-8]
	mov r0, r0
	mov r1, r1
	mov r2, r2
	bl QuickSort
	mov r0, r0
	str r0, [fp, #-12]
	ldr r1, [fp, #-12]
	ldr r0, addr_n_0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L195
	b .L197
.L194:
	ldr r1, [fp, #-12]
	ldr r0, addr_n_0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L195
	b .L200
.L195:
	ldr r2, [fp, #-12]
	mvn r0, #51
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	mov r0, r0
	bl putint
	mov r0, #10
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	mov r0, r0
	bl putch
	ldr r0, [fp, #-12]
	add r0, r0, #1
	str r0, [fp, #-12]
	b .L194
.L196:
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L197:
	b .L196
.L200:
	b .L196

.LTORG
addr_n_0:
	.word n
