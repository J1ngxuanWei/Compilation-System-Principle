	.cpu cortex-a72
	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
.data
.global a
.size a, 4
a:
	.word 0
.global b
.size b, 4
b:
	.word 0
.global d
.size d, 4
d:
	.word 0

	.text
	.global set_a
	.type set_a , %function
set_a:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #4
	lsr sp, sp, #3
	lsl sp, sp, #3
.L127:
	str r0, [fp, #-4]
	ldr r1, [fp, #-4]
	ldr r0, addr_a_0
	str r1, [r0]
	ldr r0, addr_a_0
	ldr r0, [r0]
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
	.global set_b
	.type set_b , %function
set_b:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #4
	lsr sp, sp, #3
	lsl sp, sp, #3
.L129:
	str r0, [fp, #-4]
	ldr r1, [fp, #-4]
	ldr r0, addr_b_0
	str r1, [r0]
	ldr r0, addr_b_0
	ldr r0, [r0]
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
	.global set_d
	.type set_d , %function
set_d:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #4
	lsr sp, sp, #3
	lsl sp, sp, #3
.L131:
	str r0, [fp, #-4]
	ldr r1, [fp, #-4]
	ldr r0, addr_d_0
	str r1, [r0]
	ldr r0, addr_d_0
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
	sub sp, sp, #24
	lsr sp, sp, #3
	lsl sp, sp, #3
.L133:
	mov r1, #2
	ldr r0, addr_a_0
	str r1, [r0]
	mov r1, #3
	ldr r0, addr_b_0
	str r1, [r0]
	mov r0, #0
	bl set_a
	mov r0, r0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L136
	b .L137
.L134:
	b .L135
.L135:
	ldr r0, addr_a_0
	ldr r0, [r0]
	mov r0, r0
	bl putint
	mov r0, #32
	bl putch
	ldr r0, addr_b_0
	ldr r0, [r0]
	mov r0, r0
	bl putint
	mov r0, #32
	bl putch
	mov r1, #2
	ldr r0, addr_a_0
	str r1, [r0]
	mov r1, #3
	ldr r0, addr_b_0
	str r1, [r0]
	mov r0, #0
	bl set_a
	mov r0, r0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L141
	b .L142
.L136:
	mov r0, #1
	bl set_b
	mov r0, r0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L134
	b .L138
.L137:
	b .L135
.L138:
	b .L135
.L139:
	b .L140
.L140:
	ldr r0, addr_a_0
	ldr r0, [r0]
	mov r0, r0
	bl putint
	mov r0, #32
	bl putch
	ldr r0, addr_b_0
	ldr r0, [r0]
	mov r0, r0
	bl putint
	mov r0, #10
	bl putch
	mov r0, #1
	str r0, [fp, #-24]
	mov r1, #2
	ldr r0, addr_d_0
	str r1, [r0]
	ldr r0, [fp, #-24]
	cmp r0, #1
	movge r0, #1
	movlt r0, #0
	bge .L147
	b .L148
.L141:
	mov r0, #1
	bl set_b
	mov r0, r0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L139
	b .L143
.L142:
	b .L140
.L143:
	b .L140
.L145:
	b .L146
.L146:
	ldr r0, addr_d_0
	ldr r0, [r0]
	mov r0, r0
	bl putint
	mov r0, #32
	bl putch
	ldr r0, [fp, #-24]
	cmp r0, #1
	movle r0, #1
	movgt r0, #0
	ble .L150
	b .L153
.L147:
	mov r0, #3
	bl set_d
	mov r0, r0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L145
	b .L149
.L148:
	b .L146
.L149:
	b .L146
.L150:
	b .L151
.L151:
	ldr r0, addr_d_0
	ldr r0, [r0]
	mov r0, r0
	bl putint
	mov r0, #10
	bl putch
	mov r0, #2
	add r1, r0, #1
	mov r0, #3
	sub r0, r0, r1
	cmp r0, #16
	movle r0, #1
	movgt r0, #0
	ble .L155
	b .L157
.L152:
	mov r0, #4
	bl set_d
	mov r0, r0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L150
	b .L154
.L153:
	b .L152
.L154:
	b .L151
.L155:
	mov r0, #65
	bl putch
	b .L156
.L156:
	mov r0, #25
	sub r2, r0, #7
	mov r1, #6
	mov r0, #3
	mul r1, r1, r0
	mov r0, #36
	sub r0, r0, r1
	cmp r2, r0
	movne r0, #1
	moveq r0, #0
	bne .L158
	b .L160
.L157:
	b .L156
.L158:
	mov r0, #66
	bl putch
	b .L159
.L159:
	mov r0, #1
	cmp r0, #8
	movlt r1, #1
	movge r1, #0
	mov r1, r1
	mov r0, #7
	and r0, r0, #1
	cmp r1, r0
	movne r0, #1
	moveq r0, #0
	bne .L161
	b .L163
.L160:
	b .L159
.L161:
	mov r0, #67
	bl putch
	b .L162
.L162:
	mov r0, #3
	cmp r0, #4
	movgt r0, #1
	movle r0, #0
	mov r0, r0
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	beq .L164
	b .L166
.L163:
	b .L162
.L164:
	mov r0, #68
	bl putch
	b .L165
.L165:
	mov r0, #102
	cmp r0, #63
	movle r0, #1
	movgt r0, #0
	mov r0, r0
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	beq .L167
	b .L169
.L166:
	b .L165
.L167:
	mov r0, #69
	bl putch
	b .L168
.L168:
	mov r0, #5
	sub r2, r0, #6
	mov r0, #0
	cmp r0, #0
	moveq r1, #1
	movne r1, #0
	mov r1, r1
	mov r0, #0
	sub r0, r0, r1
	cmp r2, r0
	moveq r0, #1
	movne r0, #0
	beq .L170
	b .L172
.L169:
	b .L168
.L170:
	mov r0, #70
	bl putch
	b .L171
.L171:
	mov r0, #10
	bl putch
	mov r0, #0
	str r0, [fp, #-20]
	mov r0, #1
	str r0, [fp, #-16]
	mov r0, #2
	str r0, [fp, #-12]
	mov r0, #3
	str r0, [fp, #-8]
	mov r0, #4
	str r0, [fp, #-4]
	ldr r0, [fp, #-20]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L184
	b .L182
.L172:
	b .L171
.L178:
	ldr r0, [fp, #-20]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L184
	b .L185
.L179:
	mov r0, #32
	bl putch
	b .L178
.L180:
	ldr r0, [fp, #-20]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L187
	b .L190
.L182:
	b .L180
.L184:
	ldr r0, [fp, #-16]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L179
	b .L186
.L185:
	b .L180
.L186:
	b .L180
.L187:
	mov r0, #67
	bl putch
	b .L188
.L188:
	ldr r1, [fp, #-20]
	ldr r0, [fp, #-16]
	cmp r1, r0
	movge r0, #1
	movlt r0, #0
	bge .L192
	b .L195
.L189:
	ldr r0, [fp, #-16]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L187
	b .L191
.L190:
	b .L189
.L191:
	b .L188
.L192:
	mov r0, #72
	bl putch
	b .L193
.L193:
	ldr r1, [fp, #-12]
	ldr r0, [fp, #-16]
	cmp r1, r0
	movge r0, #1
	movlt r0, #0
	bge .L199
	b .L200
.L194:
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-20]
	cmp r1, r0
	movle r0, #1
	movgt r0, #0
	ble .L192
	b .L196
.L195:
	b .L194
.L196:
	b .L193
.L197:
	mov r0, #73
	bl putch
	b .L198
.L198:
	ldr r1, [fp, #-20]
	ldr r0, [fp, #-16]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	mov r0, r0
	cmp r1, r0
	moveq r0, #1
	movne r0, #0
	beq .L205
	b .L206
.L199:
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-8]
	cmp r1, r0
	movne r0, #1
	moveq r0, #0
	bne .L197
	b .L201
.L200:
	b .L198
.L201:
	b .L198
.L202:
	mov r0, #74
	bl putch
	b .L203
.L203:
	ldr r1, [fp, #-20]
	ldr r0, [fp, #-16]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	mov r0, r0
	cmp r1, r0
	moveq r0, #1
	movne r0, #0
	beq .L209
	b .L212
.L204:
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-4]
	cmp r1, r0
	movge r0, #1
	movlt r0, #0
	bge .L202
	b .L208
.L205:
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-8]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L202
	b .L207
.L206:
	b .L204
.L207:
	b .L204
.L208:
	b .L203
.L209:
	mov r0, #75
	bl putch
	b .L210
.L210:
	mov r0, #10
	bl putch
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L211:
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-8]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L213
	b .L214
.L212:
	b .L211
.L213:
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-4]
	cmp r1, r0
	movge r0, #1
	movlt r0, #0
	bge .L209
	b .L215
.L214:
	b .L210
.L215:
	b .L210

.LTORG
addr_a_0:
	.word a
addr_b_0:
	.word b
addr_d_0:
	.word d
