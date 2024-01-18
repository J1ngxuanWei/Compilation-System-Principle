	.cpu cortex-a72
	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
.data
.comm buf, 800

	.text
	.global merge_sort
	.type merge_sort , %function
merge_sort:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #24
	lsr sp, sp, #3
	lsl sp, sp, #3
.L95:
	str r0, [fp, #-24]
	str r1, [fp, #-20]
	ldr r0, [fp, #-24]
	add r1, r0, #1
	ldr r0, [fp, #-20]
	cmp r1, r0
	movge r0, #1
	movlt r0, #0
	bge .L98
	b .L100
.L98:
	mov sp, fp
	pop {fp, lr}
	bx lr
	b .L99
.L99:
	ldr r1, [fp, #-24]
	ldr r0, [fp, #-20]
	add r1, r1, r0
	ldr r0, =2
	sdiv r0, r1, r0
	str r0, [fp, #-16]
	ldr r0, [fp, #-24]
	ldr r1, [fp, #-16]
	mov r0, r0
	mov r1, r1
	bl merge_sort
	ldr r0, [fp, #-16]
	ldr r1, [fp, #-20]
	mov r0, r0
	mov r1, r1
	bl merge_sort
	ldr r0, [fp, #-24]
	str r0, [fp, #-12]
	ldr r0, [fp, #-16]
	str r0, [fp, #-8]
	ldr r0, [fp, #-24]
	str r0, [fp, #-4]
	ldr r1, [fp, #-12]
	ldr r0, [fp, #-16]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L121
	b .L109
.L100:
	b .L99
.L105:
	ldr r1, [fp, #-12]
	ldr r0, [fp, #-16]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L121
	b .L122
.L106:
	ldr r0, [fp, #-12]
	ldr r1, addr_buf_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r2, [r0]
	ldr r0, [fp, #-8]
	ldr r1, addr_buf_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r2, r0
	movlt r0, #1
	movge r0, #0
	blt .L111
	b .L116
.L107:
	ldr r1, [fp, #-12]
	ldr r0, [fp, #-16]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L125
	b .L127
.L109:
	b .L107
.L111:
	ldr r0, [fp, #-12]
	ldr r1, addr_buf_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r2, [r0]
	ldr r0, [fp, #-4]
	ldr r1, addr_buf_0
	lsl r0, r0, #2
	add r0, r1, r0
	add r0, r0, #400
	mov r0, r0
	str r2, [r0]
	ldr r0, [fp, #-12]
	add r0, r0, #1
	str r0, [fp, #-12]
	b .L113
.L112:
	ldr r0, [fp, #-8]
	ldr r1, addr_buf_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r2, [r0]
	ldr r0, [fp, #-4]
	ldr r1, addr_buf_0
	lsl r0, r0, #2
	add r0, r1, r0
	add r0, r0, #400
	mov r0, r0
	str r2, [r0]
	ldr r0, [fp, #-8]
	add r0, r0, #1
	str r0, [fp, #-8]
	b .L113
.L113:
	ldr r0, [fp, #-4]
	add r0, r0, #1
	str r0, [fp, #-4]
	b .L105
.L116:
	b .L112
.L121:
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-20]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L106
	b .L123
.L122:
	b .L107
.L123:
	b .L107
.L124:
	ldr r1, [fp, #-12]
	ldr r0, [fp, #-16]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L125
	b .L130
.L125:
	ldr r0, [fp, #-12]
	ldr r1, addr_buf_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r2, [r0]
	ldr r0, [fp, #-4]
	ldr r1, addr_buf_0
	lsl r0, r0, #2
	add r0, r1, r0
	add r0, r0, #400
	mov r0, r0
	str r2, [r0]
	ldr r0, [fp, #-12]
	add r0, r0, #1
	str r0, [fp, #-12]
	ldr r0, [fp, #-4]
	add r0, r0, #1
	str r0, [fp, #-4]
	b .L124
.L126:
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-20]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L132
	b .L134
.L127:
	b .L126
.L130:
	b .L126
.L131:
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-20]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L132
	b .L137
.L132:
	ldr r0, [fp, #-8]
	ldr r1, addr_buf_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r2, [r0]
	ldr r0, [fp, #-4]
	ldr r1, addr_buf_0
	lsl r0, r0, #2
	add r0, r1, r0
	add r0, r0, #400
	mov r0, r0
	str r2, [r0]
	ldr r0, [fp, #-8]
	add r0, r0, #1
	str r0, [fp, #-8]
	ldr r0, [fp, #-4]
	add r0, r0, #1
	str r0, [fp, #-4]
	b .L131
.L133:
	ldr r1, [fp, #-24]
	ldr r0, [fp, #-20]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L139
	b .L141
.L134:
	b .L133
.L137:
	b .L133
.L138:
	ldr r1, [fp, #-24]
	ldr r0, [fp, #-20]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L139
	b .L144
.L139:
	ldr r0, [fp, #-24]
	ldr r1, addr_buf_0
	lsl r0, r0, #2
	add r0, r1, r0
	add r0, r0, #400
	mov r0, r0
	ldr r2, [r0]
	ldr r0, [fp, #-24]
	ldr r1, addr_buf_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	str r2, [r0]
	ldr r0, [fp, #-24]
	add r0, r0, #1
	str r0, [fp, #-24]
	b .L138
.L140:
	mov sp, fp
	pop {fp, lr}
	bx lr
.L141:
	b .L140
.L144:
	b .L140
	.global main
	.type main , %function
main:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #4
	lsr sp, sp, #3
	lsl sp, sp, #3
.L145:
	ldr r0, addr_buf_0
	mov r0, r0
	mov r0, r0
	bl getarray
	mov r0, r0
	str r0, [fp, #-4]
	ldr r1, [fp, #-4]
	mov r0, #0
	mov r1, r1
	bl merge_sort
	ldr r0, [fp, #-4]
	ldr r1, addr_buf_0
	mov r1, r1
	mov r0, r0
	mov r1, r1
	bl putarray
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr

.LTORG
addr_buf_0:
	.word buf
