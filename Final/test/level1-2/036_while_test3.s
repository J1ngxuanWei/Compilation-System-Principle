	.cpu cortex-a72
	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
.data
.global g
.size g, 4
g:
	.word 0
.global h
.size h, 4
h:
	.word 0
.global f
.size f, 4
f:
	.word 0
.global e
.size e, 4
e:
	.word 0

	.text
	.global EightWhile
	.type EightWhile , %function
EightWhile:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #16
	lsr sp, sp, #3
	lsl sp, sp, #3
.L93:
	mov r0, #5
	str r0, [fp, #-16]
	mov r0, #6
	str r0, [fp, #-12]
	mov r0, #7
	str r0, [fp, #-8]
	mov r0, #10
	str r0, [fp, #-4]
	ldr r0, [fp, #-16]
	cmp r0, #20
	movlt r0, #1
	movge r0, #0
	blt .L99
	b .L101
.L98:
	ldr r0, [fp, #-16]
	cmp r0, #20
	movlt r0, #1
	movge r0, #0
	blt .L99
	b .L137
.L99:
	ldr r0, [fp, #-16]
	add r0, r0, #3
	str r0, [fp, #-16]
	ldr r0, [fp, #-12]
	cmp r0, #10
	movlt r0, #1
	movge r0, #0
	blt .L103
	b .L105
.L100:
	ldr r2, [fp, #-16]
	ldr r1, [fp, #-12]
	ldr r0, [fp, #-4]
	add r0, r1, r0
	add r1, r2, r0
	ldr r0, [fp, #-8]
	add r2, r1, r0
	ldr r0, addr_e_0
	ldr r1, [r0]
	ldr r0, [fp, #-4]
	add r1, r1, r0
	ldr r0, addr_g_0
	ldr r0, [r0]
	sub r1, r1, r0
	ldr r0, addr_h_0
	ldr r0, [r0]
	add r0, r1, r0
	sub r0, r2, r0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L101:
	b .L100
.L102:
	ldr r0, [fp, #-12]
	cmp r0, #10
	movlt r0, #1
	movge r0, #0
	blt .L103
	b .L136
.L103:
	ldr r0, [fp, #-12]
	add r0, r0, #1
	str r0, [fp, #-12]
	ldr r0, [fp, #-8]
	cmp r0, #7
	moveq r0, #1
	movne r0, #0
	beq .L107
	b .L109
.L104:
	ldr r0, [fp, #-12]
	sub r0, r0, #2
	str r0, [fp, #-12]
	b .L98
.L105:
	b .L104
.L106:
	ldr r0, [fp, #-8]
	cmp r0, #7
	moveq r0, #1
	movne r0, #0
	beq .L107
	b .L135
.L107:
	ldr r0, [fp, #-8]
	sub r0, r0, #1
	str r0, [fp, #-8]
	ldr r0, [fp, #-4]
	cmp r0, #20
	movlt r0, #1
	movge r0, #0
	blt .L111
	b .L113
.L108:
	ldr r0, [fp, #-8]
	add r0, r0, #1
	str r0, [fp, #-8]
	b .L102
.L109:
	b .L108
.L110:
	ldr r0, [fp, #-4]
	cmp r0, #20
	movlt r0, #1
	movge r0, #0
	blt .L111
	b .L134
.L111:
	ldr r0, [fp, #-4]
	add r0, r0, #3
	str r0, [fp, #-4]
	ldr r0, addr_e_0
	ldr r0, [r0]
	cmp r0, #1
	movgt r0, #1
	movle r0, #0
	bgt .L115
	b .L117
.L112:
	ldr r0, [fp, #-4]
	sub r0, r0, #1
	str r0, [fp, #-4]
	b .L106
.L113:
	b .L112
.L114:
	ldr r0, addr_e_0
	ldr r0, [r0]
	cmp r0, #1
	movgt r0, #1
	movle r0, #0
	bgt .L115
	b .L133
.L115:
	ldr r0, addr_e_0
	ldr r0, [r0]
	sub r1, r0, #1
	ldr r0, addr_e_0
	str r1, [r0]
	ldr r0, addr_f_0
	ldr r0, [r0]
	cmp r0, #2
	movgt r0, #1
	movle r0, #0
	bgt .L119
	b .L121
.L116:
	ldr r0, addr_e_0
	ldr r0, [r0]
	add r1, r0, #1
	ldr r0, addr_e_0
	str r1, [r0]
	b .L110
.L117:
	b .L116
.L118:
	ldr r0, addr_f_0
	ldr r0, [r0]
	cmp r0, #2
	movgt r0, #1
	movle r0, #0
	bgt .L119
	b .L132
.L119:
	ldr r0, addr_f_0
	ldr r0, [r0]
	sub r1, r0, #2
	ldr r0, addr_f_0
	str r1, [r0]
	ldr r0, addr_g_0
	ldr r0, [r0]
	cmp r0, #3
	movlt r0, #1
	movge r0, #0
	blt .L123
	b .L125
.L120:
	ldr r0, addr_f_0
	ldr r0, [r0]
	add r1, r0, #1
	ldr r0, addr_f_0
	str r1, [r0]
	b .L114
.L121:
	b .L120
.L122:
	ldr r0, addr_g_0
	ldr r0, [r0]
	cmp r0, #3
	movlt r0, #1
	movge r0, #0
	blt .L123
	b .L131
.L123:
	ldr r0, addr_g_0
	ldr r0, [r0]
	add r1, r0, #10
	ldr r0, addr_g_0
	str r1, [r0]
	ldr r0, addr_h_0
	ldr r0, [r0]
	cmp r0, #10
	movlt r0, #1
	movge r0, #0
	blt .L127
	b .L129
.L124:
	ldr r0, addr_g_0
	ldr r0, [r0]
	sub r1, r0, #8
	ldr r0, addr_g_0
	str r1, [r0]
	b .L118
.L125:
	b .L124
.L126:
	ldr r0, addr_h_0
	ldr r0, [r0]
	cmp r0, #10
	movlt r0, #1
	movge r0, #0
	blt .L127
	b .L130
.L127:
	ldr r0, addr_h_0
	ldr r0, [r0]
	add r1, r0, #8
	ldr r0, addr_h_0
	str r1, [r0]
	b .L126
.L128:
	ldr r0, addr_h_0
	ldr r0, [r0]
	sub r1, r0, #1
	ldr r0, addr_h_0
	str r1, [r0]
	b .L122
.L129:
	b .L128
.L130:
	b .L128
.L131:
	b .L124
.L132:
	b .L120
.L133:
	b .L116
.L134:
	b .L112
.L135:
	b .L108
.L136:
	b .L104
.L137:
	b .L100
	.global main
	.type main , %function
main:
	push {fp, lr}
	mov fp, sp
	lsr sp, sp, #3
	lsl sp, sp, #3
.L138:
	mov r1, #1
	ldr r0, addr_g_0
	str r1, [r0]
	mov r1, #2
	ldr r0, addr_h_0
	str r1, [r0]
	mov r1, #4
	ldr r0, addr_e_0
	str r1, [r0]
	mov r1, #6
	ldr r0, addr_f_0
	str r1, [r0]
	bl EightWhile
	mov r0, r0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr

.LTORG
addr_g_0:
	.word g
addr_h_0:
	.word h
addr_f_0:
	.word f
addr_e_0:
	.word e
