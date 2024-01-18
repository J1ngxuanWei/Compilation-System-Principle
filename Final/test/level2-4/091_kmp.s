	.cpu cortex-a72
	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm

	.text
	.global get_next
	.type get_next , %function
get_next:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #16
	lsr sp, sp, #3
	lsl sp, sp, #3
.L98:
	str r0, [fp, #-16]
	str r1, [fp, #-12]
	mov r0, #0
	sub r1, r0, #1
	ldr r0, [fp, #-12]
	mov r0, r0
	str r1, [r0]
	mov r0, #0
	str r0, [fp, #-8]
	mov r0, #0
	sub r0, r0, #1
	str r0, [fp, #-4]
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-8]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L106
	b .L110
.L105:
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-8]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L106
	b .L127
.L106:
	ldr r1, [fp, #-4]
	mov r0, #0
	sub r0, r0, #1
	cmp r1, r0
	moveq r0, #1
	movne r0, #0
	beq .L111
	b .L115
.L107:
	mov sp, fp
	pop {fp, lr}
	bx lr
.L110:
	b .L107
.L111:
	ldr r0, [fp, #-4]
	add r0, r0, #1
	str r0, [fp, #-4]
	ldr r0, [fp, #-8]
	add r0, r0, #1
	str r0, [fp, #-8]
	ldr r2, [fp, #-4]
	ldr r1, [fp, #-12]
	ldr r0, [fp, #-8]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	str r2, [r0]
	b .L113
.L112:
	ldr r1, [fp, #-12]
	ldr r0, [fp, #-4]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	str r0, [fp, #-4]
	b .L113
.L113:
	b .L105
.L114:
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-8]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r2, [r0]
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-4]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r2, r0
	moveq r0, #1
	movne r0, #0
	beq .L111
	b .L120
.L115:
	b .L114
.L120:
	b .L112
.L127:
	b .L107
	.global KMP
	.type KMP , %function
KMP:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #16
	sub sp, sp, #16384
	lsr sp, sp, #3
	lsl sp, sp, #3
.L128:
	str r0, [fp, #-16]
	str r1, [fp, #-12]
	ldr r2, [fp, #-16]
	ldr r0, =-16400
	add r1, fp, r0
	mov r1, r1
	mov r0, r2
	mov r1, r1
	bl get_next
	mov r0, #0
	str r0, [fp, #-8]
	mov r0, #0
	str r0, [fp, #-4]
	ldr r1, [fp, #-12]
	ldr r0, [fp, #-4]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L135
	b .L139
.L134:
	ldr r1, [fp, #-12]
	ldr r0, [fp, #-4]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L135
	b .L159
.L135:
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-8]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r2, [r0]
	ldr r1, [fp, #-12]
	ldr r0, [fp, #-4]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r2, r0
	moveq r0, #1
	movne r0, #0
	beq .L140
	b .L147
.L136:
	mov r0, #0
	sub r0, r0, #1
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L139:
	b .L136
.L140:
	ldr r0, [fp, #-8]
	add r0, r0, #1
	str r0, [fp, #-8]
	ldr r0, [fp, #-4]
	add r0, r0, #1
	str r0, [fp, #-4]
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-8]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	beq .L148
	b .L152
.L141:
	ldr r2, [fp, #-8]
	ldr r0, =-16400
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	str r0, [fp, #-8]
	ldr r1, [fp, #-8]
	mov r0, #0
	sub r0, r0, #1
	cmp r1, r0
	moveq r0, #1
	movne r0, #0
	beq .L154
	b .L156
.L142:
	b .L134
.L147:
	b .L141
.L148:
	ldr r0, [fp, #-4]
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
	b .L149
.L149:
	b .L142
.L152:
	b .L149
.L154:
	ldr r0, [fp, #-8]
	add r0, r0, #1
	str r0, [fp, #-8]
	ldr r0, [fp, #-4]
	add r0, r0, #1
	str r0, [fp, #-4]
	b .L155
.L155:
	b .L142
.L156:
	b .L155
.L159:
	b .L136
	.global read_str
	.type read_str , %function
read_str:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #8
	lsr sp, sp, #3
	lsl sp, sp, #3
.L160:
	str r0, [fp, #-8]
	mov r0, #0
	str r0, [fp, #-4]
	mov r0, #1
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L164
	b .L166
.L163:
	mov r0, #1
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L164
	b .L175
.L164:
	bl getch
	mov r2, r0
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-4]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	str r2, [r0]
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-4]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r0, #10
	moveq r0, #1
	movne r0, #0
	beq .L169
	b .L173
.L165:
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-4]
	lsl r0, r0, #2
	add r1, r1, r0
	mov r1, r1
	mov r0, #0
	str r0, [r1]
	ldr r0, [fp, #-4]
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L166:
	b .L165
.L169:
	b .L165
.L170:
	ldr r0, [fp, #-4]
	add r0, r0, #1
	str r0, [fp, #-4]
	b .L163
.L173:
	b .L170
.L175:
	b .L165
	.global main
	.type main , %function
main:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #32768
	lsr sp, sp, #3
	lsl sp, sp, #3
.L178:
	ldr r0, =-16384
	add r0, fp, r0
	mov r0, r0
	mov r0, r0
	bl read_str
	mov r0, r0
	ldr r0, =-32768
	add r0, fp, r0
	mov r0, r0
	mov r0, r0
	bl read_str
	mov r0, r0
	ldr r0, =-16384
	add r2, fp, r0
	mov r2, r2
	ldr r0, =-32768
	add r1, fp, r0
	mov r1, r1
	mov r0, r2
	mov r1, r1
	bl KMP
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
