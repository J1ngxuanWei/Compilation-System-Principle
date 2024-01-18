	.cpu cortex-a72
	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
.data
.comm e, 1024
.comm book, 64
.comm dis, 64
.global n
.size n, 4
n:
	.word 0
.global m
.size m, 4
m:
	.word 0
.global v1
.size v1, 4
v1:
	.word 0
.global v2
.size v2, 4
v2:
	.word 0
.global w
.size w, 4
w:
	.word 0
.section .rodata
.global INF
.size INF, 4
INF:
	.word 65535

	.text
	.global Dijkstra
	.type Dijkstra , %function
Dijkstra:
	push {r4, fp, lr}
	mov fp, sp
	sub sp, sp, #24
	lsr sp, sp, #3
	lsl sp, sp, #3
.L140:
	mov r0, #1
	str r0, [fp, #-24]
	ldr r1, [fp, #-24]
	ldr r0, addr_n_0
	ldr r0, [r0]
	cmp r1, r0
	movle r0, #1
	movgt r0, #0
	ble .L144
	b .L146
.L143:
	ldr r1, [fp, #-24]
	ldr r0, addr_n_0
	ldr r0, [r0]
	cmp r1, r0
	movle r0, #1
	movgt r0, #0
	ble .L144
	b .L150
.L144:
	ldr r0, [fp, #-24]
	ldr r1, addr_e_0
	lsl r0, r0, #2
	add r0, r1, r0
	add r0, r0, #64
	mov r0, r0
	ldr r2, [r0]
	ldr r0, [fp, #-24]
	ldr r1, addr_dis_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	str r2, [r0]
	ldr r0, [fp, #-24]
	ldr r1, addr_book_0
	lsl r0, r0, #2
	add r1, r1, r0
	mov r1, r1
	mov r0, #0
	str r0, [r1]
	ldr r0, [fp, #-24]
	add r0, r0, #1
	str r0, [fp, #-24]
	b .L143
.L145:
	ldr r0, addr_book_0
	add r1, r0, #4
	mov r1, r1
	mov r0, #1
	str r0, [r1]
	mov r0, #1
	str r0, [fp, #-24]
	ldr r1, [fp, #-24]
	ldr r0, addr_n_0
	ldr r0, [r0]
	sub r0, r0, #1
	cmp r1, r0
	movle r0, #1
	movgt r0, #0
	ble .L153
	b .L155
.L146:
	b .L145
.L150:
	b .L145
.L152:
	ldr r1, [fp, #-24]
	ldr r0, addr_n_0
	ldr r0, [r0]
	sub r0, r0, #1
	cmp r1, r0
	movle r0, #1
	movgt r0, #0
	ble .L153
	b .L192
.L153:
	ldr r0, addr_INF_0
	ldr r0, [r0]
	str r0, [fp, #-16]
	mov r0, #0
	str r0, [fp, #-12]
	mov r0, #1
	str r0, [fp, #-8]
	ldr r1, [fp, #-8]
	ldr r0, addr_n_0
	ldr r0, [r0]
	cmp r1, r0
	movle r0, #1
	movgt r0, #0
	ble .L160
	b .L162
.L154:
	mov sp, fp
	pop {r4, fp, lr}
	bx lr
.L155:
	b .L154
.L159:
	ldr r1, [fp, #-8]
	ldr r0, addr_n_0
	ldr r0, [r0]
	cmp r1, r0
	movle r0, #1
	movgt r0, #0
	ble .L160
	b .L171
.L160:
	ldr r2, [fp, #-16]
	ldr r0, [fp, #-8]
	ldr r1, addr_dis_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r2, r0
	movgt r0, #1
	movle r0, #0
	bgt .L165
	b .L167
.L161:
	ldr r0, [fp, #-12]
	ldr r1, addr_book_0
	lsl r0, r0, #2
	add r1, r1, r0
	mov r1, r1
	mov r0, #1
	str r0, [r1]
	mov r0, #1
	str r0, [fp, #-4]
	ldr r1, [fp, #-4]
	ldr r0, addr_n_0
	ldr r0, [r0]
	cmp r1, r0
	movle r0, #1
	movgt r0, #0
	ble .L175
	b .L177
.L162:
	b .L161
.L163:
	ldr r0, [fp, #-8]
	ldr r1, addr_dis_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	str r0, [fp, #-16]
	ldr r0, [fp, #-8]
	str r0, [fp, #-12]
	b .L164
.L164:
	ldr r0, [fp, #-8]
	add r0, r0, #1
	str r0, [fp, #-8]
	b .L159
.L165:
	ldr r0, [fp, #-8]
	ldr r1, addr_book_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	beq .L163
	b .L169
.L167:
	b .L164
.L169:
	b .L164
.L171:
	b .L161
.L174:
	ldr r1, [fp, #-4]
	ldr r0, addr_n_0
	ldr r0, [r0]
	cmp r1, r0
	movle r0, #1
	movgt r0, #0
	ble .L175
	b .L191
.L175:
	ldr r0, [fp, #-12]
	ldr r2, [fp, #-4]
	ldr r1, addr_e_0
	lsl r0, r0, #6
	add r1, r1, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r1, [r0]
	ldr r0, addr_INF_0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L178
	b .L181
.L176:
	ldr r0, [fp, #-24]
	add r0, r0, #1
	str r0, [fp, #-24]
	b .L152
.L177:
	b .L176
.L178:
	ldr r0, [fp, #-4]
	ldr r1, addr_dis_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	ldr r1, [fp, #-12]
	ldr r2, addr_dis_0
	lsl r1, r1, #2
	add r1, r2, r1
	mov r1, r1
	ldr r4, [r1]
	ldr r1, [fp, #-12]
	ldr r3, [fp, #-4]
	ldr r2, addr_e_0
	lsl r1, r1, #6
	add r2, r2, r1
	lsl r1, r3, #2
	add r1, r2, r1
	mov r1, r1
	ldr r1, [r1]
	add r1, r4, r1
	cmp r0, r1
	movgt r0, #1
	movle r0, #0
	bgt .L182
	b .L187
.L179:
	ldr r0, [fp, #-4]
	add r0, r0, #1
	str r0, [fp, #-4]
	b .L174
.L181:
	b .L179
.L182:
	ldr r0, [fp, #-12]
	ldr r1, addr_dis_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r3, [r0]
	ldr r0, [fp, #-12]
	ldr r2, [fp, #-4]
	ldr r1, addr_e_0
	lsl r0, r0, #6
	add r1, r1, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	add r2, r3, r0
	ldr r0, [fp, #-4]
	ldr r1, addr_dis_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	str r2, [r0]
	b .L183
.L183:
	b .L179
.L187:
	b .L183
.L191:
	b .L176
.L192:
	b .L154
	.global main
	.type main , %function
main:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #16
	lsr sp, sp, #3
	lsl sp, sp, #3
.L193:
	bl getint
	mov r1, r0
	ldr r0, addr_n_0
	str r1, [r0]
	bl getint
	mov r1, r0
	ldr r0, addr_m_0
	str r1, [r0]
	mov r0, #1
	str r0, [fp, #-16]
	ldr r1, [fp, #-16]
	ldr r0, addr_n_0
	ldr r0, [r0]
	cmp r1, r0
	movle r0, #1
	movgt r0, #0
	ble .L196
	b .L198
.L195:
	ldr r1, [fp, #-16]
	ldr r0, addr_n_0
	ldr r0, [r0]
	cmp r1, r0
	movle r0, #1
	movgt r0, #0
	ble .L196
	b .L211
.L196:
	mov r0, #1
	str r0, [fp, #-12]
	ldr r1, [fp, #-12]
	ldr r0, addr_n_0
	ldr r0, [r0]
	cmp r1, r0
	movle r0, #1
	movgt r0, #0
	ble .L201
	b .L203
.L197:
	mov r0, #1
	str r0, [fp, #-16]
	ldr r1, [fp, #-16]
	ldr r0, addr_m_0
	ldr r0, [r0]
	cmp r1, r0
	movle r0, #1
	movgt r0, #0
	ble .L213
	b .L215
.L198:
	b .L197
.L200:
	ldr r1, [fp, #-12]
	ldr r0, addr_n_0
	ldr r0, [r0]
	cmp r1, r0
	movle r0, #1
	movgt r0, #0
	ble .L201
	b .L210
.L201:
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-12]
	cmp r1, r0
	moveq r0, #1
	movne r0, #0
	beq .L204
	b .L207
.L202:
	ldr r0, [fp, #-16]
	add r0, r0, #1
	str r0, [fp, #-16]
	b .L195
.L203:
	b .L202
.L204:
	ldr r0, [fp, #-16]
	ldr r2, [fp, #-12]
	ldr r1, addr_e_0
	lsl r0, r0, #6
	add r1, r1, r0
	lsl r0, r2, #2
	add r1, r1, r0
	mov r1, r1
	mov r0, #0
	str r0, [r1]
	b .L206
.L205:
	ldr r0, addr_INF_0
	ldr r3, [r0]
	ldr r0, [fp, #-16]
	ldr r2, [fp, #-12]
	ldr r1, addr_e_0
	lsl r0, r0, #6
	add r1, r1, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	str r3, [r0]
	b .L206
.L206:
	ldr r0, [fp, #-12]
	add r0, r0, #1
	str r0, [fp, #-12]
	b .L200
.L207:
	b .L205
.L210:
	b .L202
.L211:
	b .L197
.L212:
	ldr r1, [fp, #-16]
	ldr r0, addr_m_0
	ldr r0, [r0]
	cmp r1, r0
	movle r0, #1
	movgt r0, #0
	ble .L213
	b .L219
.L213:
	bl getint
	mov r0, r0
	str r0, [fp, #-8]
	bl getint
	mov r0, r0
	str r0, [fp, #-4]
	bl getint
	mov r3, r0
	ldr r0, [fp, #-8]
	ldr r2, [fp, #-4]
	ldr r1, addr_e_0
	lsl r0, r0, #6
	add r1, r1, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	str r3, [r0]
	ldr r0, [fp, #-16]
	add r0, r0, #1
	str r0, [fp, #-16]
	b .L212
.L214:
	bl Dijkstra
	mov r0, #1
	str r0, [fp, #-16]
	ldr r1, [fp, #-16]
	ldr r0, addr_n_0
	ldr r0, [r0]
	cmp r1, r0
	movle r0, #1
	movgt r0, #0
	ble .L221
	b .L223
.L215:
	b .L214
.L219:
	b .L214
.L220:
	ldr r1, [fp, #-16]
	ldr r0, addr_n_0
	ldr r0, [r0]
	cmp r1, r0
	movle r0, #1
	movgt r0, #0
	ble .L221
	b .L225
.L221:
	ldr r0, [fp, #-16]
	ldr r1, addr_dis_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	mov r0, r0
	bl putint
	mov r0, #32
	bl putch
	ldr r0, [fp, #-16]
	add r0, r0, #1
	str r0, [fp, #-16]
	b .L220
.L222:
	mov r0, #10
	bl putch
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L223:
	b .L222
.L225:
	b .L222

.LTORG
addr_INF_0:
	.word INF
addr_e_0:
	.word e
addr_book_0:
	.word book
addr_dis_0:
	.word dis
addr_n_0:
	.word n
addr_m_0:
	.word m
addr_v1_0:
	.word v1
addr_v2_0:
	.word v2
addr_w_0:
	.word w
