	.cpu cortex-a72
	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
.data
.comm tape, 262144
.comm program, 131072
.global ptr
.size ptr, 4
ptr:
	.word 0
.section .rodata
.global TAPE_LEN
.size TAPE_LEN, 4
TAPE_LEN:
	.word 65536
.global BUFFER_LEN
.size BUFFER_LEN, 4
BUFFER_LEN:
	.word 32768

	.text
	.global read_program
	.type read_program , %function
read_program:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #8
	lsr sp, sp, #3
	lsl sp, sp, #3
.L94:
	mov r0, #0
	str r0, [fp, #-8]
	bl getint
	mov r0, r0
	str r0, [fp, #-4]
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-4]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L98
	b .L100
.L97:
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-4]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L98
	b .L102
.L98:
	bl getch
	mov r2, r0
	ldr r0, [fp, #-8]
	ldr r1, addr_program_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	str r2, [r0]
	ldr r0, [fp, #-8]
	add r0, r0, #1
	str r0, [fp, #-8]
	b .L97
.L99:
	ldr r0, [fp, #-8]
	ldr r1, addr_program_0
	lsl r0, r0, #2
	add r1, r1, r0
	mov r1, r1
	mov r0, #0
	str r0, [r1]
	mov sp, fp
	pop {fp, lr}
	bx lr
.L100:
	b .L99
.L102:
	b .L99
	.global interpret
	.type interpret , %function
interpret:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #16
	lsr sp, sp, #3
	lsl sp, sp, #3
.L104:
	str r0, [fp, #-16]
	mov r0, #0
	str r0, [fp, #-4]
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-4]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L110
	b .L114
.L109:
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-4]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L110
	b .L169
.L110:
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-4]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	str r0, [fp, #-12]
	ldr r0, [fp, #-12]
	cmp r0, #62
	moveq r0, #1
	movne r0, #0
	beq .L117
	b .L120
.L111:
	mov sp, fp
	pop {fp, lr}
	bx lr
.L114:
	b .L111
.L117:
	ldr r0, addr_ptr_0
	ldr r0, [r0]
	add r1, r0, #1
	ldr r0, addr_ptr_0
	str r1, [r0]
	b .L119
.L118:
	ldr r0, [fp, #-12]
	cmp r0, #60
	moveq r0, #1
	movne r0, #0
	beq .L121
	b .L124
.L119:
	ldr r0, [fp, #-4]
	add r0, r0, #1
	str r0, [fp, #-4]
	b .L109
.L120:
	b .L118
.L121:
	ldr r0, addr_ptr_0
	ldr r0, [r0]
	sub r1, r0, #1
	ldr r0, addr_ptr_0
	str r1, [r0]
	b .L123
.L122:
	ldr r0, [fp, #-12]
	cmp r0, #43
	moveq r0, #1
	movne r0, #0
	beq .L125
	b .L128
.L123:
	b .L119
.L124:
	b .L122
.L125:
	ldr r0, addr_ptr_0
	ldr r0, [r0]
	ldr r1, addr_tape_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	add r2, r0, #1
	ldr r0, addr_ptr_0
	ldr r0, [r0]
	ldr r1, addr_tape_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	str r2, [r0]
	b .L127
.L126:
	ldr r0, [fp, #-12]
	cmp r0, #45
	moveq r0, #1
	movne r0, #0
	beq .L131
	b .L134
.L127:
	b .L123
.L128:
	b .L126
.L131:
	ldr r0, addr_ptr_0
	ldr r0, [r0]
	ldr r1, addr_tape_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	sub r2, r0, #1
	ldr r0, addr_ptr_0
	ldr r0, [r0]
	ldr r1, addr_tape_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	str r2, [r0]
	b .L133
.L132:
	ldr r0, [fp, #-12]
	cmp r0, #46
	moveq r0, #1
	movne r0, #0
	beq .L137
	b .L140
.L133:
	b .L127
.L134:
	b .L132
.L137:
	ldr r0, addr_ptr_0
	ldr r0, [r0]
	ldr r1, addr_tape_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	mov r0, r0
	bl putch
	b .L139
.L138:
	ldr r0, [fp, #-12]
	cmp r0, #44
	moveq r0, #1
	movne r0, #0
	beq .L142
	b .L145
.L139:
	b .L133
.L140:
	b .L138
.L142:
	bl getch
	mov r2, r0
	ldr r0, addr_ptr_0
	ldr r0, [r0]
	ldr r1, addr_tape_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	str r2, [r0]
	b .L144
.L143:
	ldr r0, [fp, #-12]
	cmp r0, #93
	moveq r0, #1
	movne r0, #0
	beq .L149
	b .L150
.L144:
	b .L139
.L145:
	b .L143
.L147:
	mov r0, #1
	str r0, [fp, #-8]
	ldr r0, [fp, #-8]
	cmp r0, #0
	movgt r0, #1
	movle r0, #0
	bgt .L154
	b .L156
.L148:
	b .L144
.L149:
	ldr r0, addr_ptr_0
	ldr r0, [r0]
	ldr r1, addr_tape_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L147
	b .L152
.L150:
	b .L148
.L152:
	b .L148
.L153:
	ldr r0, [fp, #-8]
	cmp r0, #0
	movgt r0, #1
	movle r0, #0
	bgt .L154
	b .L166
.L154:
	ldr r0, [fp, #-4]
	sub r0, r0, #1
	str r0, [fp, #-4]
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-4]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	str r0, [fp, #-12]
	ldr r0, [fp, #-12]
	cmp r0, #91
	moveq r0, #1
	movne r0, #0
	beq .L159
	b .L162
.L155:
	b .L148
.L156:
	b .L155
.L159:
	ldr r0, [fp, #-8]
	sub r0, r0, #1
	str r0, [fp, #-8]
	b .L161
.L160:
	ldr r0, [fp, #-12]
	cmp r0, #93
	moveq r0, #1
	movne r0, #0
	beq .L163
	b .L165
.L161:
	b .L153
.L162:
	b .L160
.L163:
	ldr r0, [fp, #-8]
	add r0, r0, #1
	str r0, [fp, #-8]
	b .L164
.L164:
	b .L161
.L165:
	b .L164
.L166:
	b .L155
.L169:
	b .L111
	.global main
	.type main , %function
main:
	push {fp, lr}
	mov fp, sp
	lsr sp, sp, #3
	lsl sp, sp, #3
.L170:
	bl read_program
	ldr r0, addr_program_0
	mov r0, r0
	mov r0, r0
	bl interpret
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr

.LTORG
addr_TAPE_LEN_0:
	.word TAPE_LEN
addr_BUFFER_LEN_0:
	.word BUFFER_LEN
addr_tape_0:
	.word tape
addr_program_0:
	.word program
addr_ptr_0:
	.word ptr
