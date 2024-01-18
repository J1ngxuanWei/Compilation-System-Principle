	.cpu cortex-a72
	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
.data
.comm array, 440
.global n
.size n, 4
n:
	.word 0

	.text
	.global init
	.type init , %function
init:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #8
	lsr sp, sp, #3
	lsl sp, sp, #3
.L172:
	str r0, [fp, #-8]
	mov r0, #1
	str r0, [fp, #-4]
	ldr r2, [fp, #-4]
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-8]
	mul r0, r1, r0
	add r0, r0, #1
	cmp r2, r0
	movle r0, #1
	movgt r0, #0
	ble .L176
	b .L178
.L175:
	ldr r2, [fp, #-4]
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-8]
	mul r0, r1, r0
	add r0, r0, #1
	cmp r2, r0
	movle r0, #1
	movgt r0, #0
	ble .L176
	b .L180
.L176:
	mov r0, #0
	sub r2, r0, #1
	ldr r0, [fp, #-4]
	ldr r1, addr_array_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	str r2, [r0]
	ldr r0, [fp, #-4]
	add r0, r0, #1
	str r0, [fp, #-4]
	b .L175
.L177:
	mov sp, fp
	pop {fp, lr}
	bx lr
.L178:
	b .L177
.L180:
	b .L177
	.global findfa
	.type findfa , %function
findfa:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #4
	lsr sp, sp, #3
	lsl sp, sp, #3
.L181:
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	ldr r1, addr_array_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r1, [r0]
	ldr r0, [fp, #-4]
	cmp r1, r0
	moveq r0, #1
	movne r0, #0
	beq .L183
	b .L187
.L183:
	ldr r0, [fp, #-4]
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
	b .L185
.L184:
	ldr r0, [fp, #-4]
	ldr r1, addr_array_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	mov r0, r0
	bl findfa
	mov r2, r0
	ldr r0, [fp, #-4]
	ldr r1, addr_array_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	str r2, [r0]
	ldr r0, [fp, #-4]
	ldr r1, addr_array_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
	b .L185
.L185:
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L187:
	b .L184
	.global mmerge
	.type mmerge , %function
mmerge:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #16
	lsr sp, sp, #3
	lsl sp, sp, #3
.L191:
	str r0, [fp, #-16]
	str r1, [fp, #-12]
	ldr r0, [fp, #-16]
	mov r0, r0
	bl findfa
	mov r0, r0
	str r0, [fp, #-8]
	ldr r0, [fp, #-12]
	mov r0, r0
	bl findfa
	mov r0, r0
	str r0, [fp, #-4]
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-4]
	cmp r1, r0
	movne r0, #1
	moveq r0, #0
	bne .L196
	b .L198
.L196:
	ldr r2, [fp, #-4]
	ldr r0, [fp, #-8]
	ldr r1, addr_array_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	str r2, [r0]
	b .L197
.L197:
	mov sp, fp
	pop {fp, lr}
	bx lr
.L198:
	b .L197
	.global main
	.type main , %function
main:
	push {r4, fp, lr}
	mov fp, sp
	sub sp, sp, #36
	lsr sp, sp, #3
	lsl sp, sp, #3
.L200:
	mov r0, #1
	str r0, [fp, #-36]
	ldr r0, [fp, #-36]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L206
	b .L208
.L205:
	ldr r0, [fp, #-36]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L206
	b .L267
.L206:
	ldr r0, [fp, #-36]
	sub r0, r0, #1
	str r0, [fp, #-36]
	mov r1, #4
	ldr r0, addr_n_0
	str r1, [r0]
	mov r0, #10
	str r0, [fp, #-32]
	mov r0, #0
	str r0, [fp, #-20]
	mov r0, #0
	str r0, [fp, #-16]
	ldr r0, addr_n_0
	ldr r0, [r0]
	mov r0, r0
	bl init
	ldr r0, addr_n_0
	ldr r1, [r0]
	ldr r0, addr_n_0
	ldr r0, [r0]
	mul r0, r1, r0
	add r0, r0, #1
	str r0, [fp, #-12]
	ldr r1, [fp, #-20]
	ldr r0, [fp, #-32]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L213
	b .L215
.L207:
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {r4, fp, lr}
	bx lr
.L208:
	b .L207
.L212:
	ldr r1, [fp, #-20]
	ldr r0, [fp, #-32]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L213
	b .L263
.L213:
	bl getint
	mov r0, r0
	str r0, [fp, #-28]
	bl getint
	mov r0, r0
	str r0, [fp, #-24]
	ldr r0, [fp, #-16]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	beq .L216
	b .L218
.L214:
	ldr r0, [fp, #-16]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	beq .L264
	b .L266
.L215:
	b .L214
.L216:
	ldr r0, addr_n_0
	ldr r1, [r0]
	ldr r0, [fp, #-28]
	sub r0, r0, #1
	mul r1, r1, r0
	ldr r0, [fp, #-24]
	add r0, r1, r0
	str r0, [fp, #-8]
	ldr r2, [fp, #-8]
	ldr r0, [fp, #-8]
	ldr r1, addr_array_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	str r2, [r0]
	ldr r0, [fp, #-28]
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	beq .L221
	b .L223
.L217:
	ldr r0, [fp, #-20]
	add r0, r0, #1
	str r0, [fp, #-20]
	b .L212
.L218:
	b .L217
.L221:
	ldr r1, addr_array_0
	mov r1, r1
	mov r0, #0
	str r0, [r1]
	ldr r0, [fp, #-8]
	mov r0, r0
	mov r1, #0
	bl mmerge
	b .L222
.L222:
	ldr r1, [fp, #-28]
	ldr r0, addr_n_0
	ldr r0, [r0]
	cmp r1, r0
	moveq r0, #1
	movne r0, #0
	beq .L225
	b .L227
.L223:
	b .L222
.L225:
	ldr r2, [fp, #-12]
	ldr r0, [fp, #-12]
	ldr r1, addr_array_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	str r2, [r0]
	ldr r0, [fp, #-8]
	ldr r1, [fp, #-12]
	mov r0, r0
	mov r1, r1
	bl mmerge
	b .L226
.L226:
	ldr r1, [fp, #-24]
	ldr r0, addr_n_0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L231
	b .L232
.L227:
	b .L226
.L229:
	ldr r2, [fp, #-8]
	ldr r0, [fp, #-8]
	add r1, r0, #1
	mov r0, r2
	mov r1, r1
	bl mmerge
	b .L230
.L230:
	ldr r0, [fp, #-24]
	cmp r0, #1
	movgt r0, #1
	movle r0, #0
	bgt .L237
	b .L238
.L231:
	ldr r0, [fp, #-8]
	add r0, r0, #1
	ldr r1, addr_array_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #1
	cmp r1, r0
	movne r0, #1
	moveq r0, #0
	bne .L229
	b .L234
.L232:
	b .L230
.L234:
	b .L230
.L235:
	ldr r2, [fp, #-8]
	ldr r0, [fp, #-8]
	sub r1, r0, #1
	mov r0, r2
	mov r1, r1
	bl mmerge
	b .L236
.L236:
	ldr r1, [fp, #-28]
	ldr r0, addr_n_0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L243
	b .L244
.L237:
	ldr r0, [fp, #-8]
	sub r0, r0, #1
	ldr r1, addr_array_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #1
	cmp r1, r0
	movne r0, #1
	moveq r0, #0
	bne .L235
	b .L240
.L238:
	b .L236
.L240:
	b .L236
.L241:
	ldr r2, [fp, #-8]
	ldr r1, [fp, #-8]
	ldr r0, addr_n_0
	ldr r0, [r0]
	add r1, r1, r0
	mov r0, r2
	mov r1, r1
	bl mmerge
	b .L242
.L242:
	ldr r0, [fp, #-28]
	cmp r0, #1
	movgt r0, #1
	movle r0, #0
	bgt .L249
	b .L250
.L243:
	ldr r1, [fp, #-8]
	ldr r0, addr_n_0
	ldr r0, [r0]
	add r0, r1, r0
	ldr r1, addr_array_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #1
	cmp r1, r0
	movne r0, #1
	moveq r0, #0
	bne .L241
	b .L246
.L244:
	b .L242
.L246:
	b .L242
.L247:
	ldr r2, [fp, #-8]
	ldr r1, [fp, #-8]
	ldr r0, addr_n_0
	ldr r0, [r0]
	sub r1, r1, r0
	mov r0, r2
	mov r1, r1
	bl mmerge
	b .L248
.L248:
	ldr r0, addr_array_0
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #1
	cmp r1, r0
	movne r0, #1
	moveq r0, #0
	bne .L256
	b .L258
.L249:
	ldr r1, [fp, #-8]
	ldr r0, addr_n_0
	ldr r0, [r0]
	sub r0, r1, r0
	ldr r1, addr_array_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #1
	cmp r1, r0
	movne r0, #1
	moveq r0, #0
	bne .L247
	b .L252
.L250:
	b .L248
.L252:
	b .L248
.L253:
	mov r0, #1
	str r0, [fp, #-16]
	ldr r0, [fp, #-20]
	add r0, r0, #1
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	mov r0, r0
	bl putint
	mov r0, #10
	bl putch
	b .L254
.L254:
	b .L217
.L255:
	mov r0, #0
	bl findfa
	mov r4, r0
	ldr r0, [fp, #-12]
	mov r0, r0
	bl findfa
	mov r0, r0
	cmp r4, r0
	moveq r0, #1
	movne r0, #0
	beq .L253
	b .L261
.L256:
	ldr r0, [fp, #-12]
	ldr r1, addr_array_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #1
	cmp r1, r0
	movne r0, #1
	moveq r0, #0
	bne .L255
	b .L260
.L258:
	b .L254
.L260:
	b .L254
.L261:
	b .L254
.L263:
	b .L214
.L264:
	mov r0, #0
	sub r0, r0, #1
	mov r0, r0
	bl putint
	mov r0, #10
	bl putch
	b .L265
.L265:
	b .L205
.L266:
	b .L265
.L267:
	b .L207

.LTORG
addr_array_0:
	.word array
addr_n_0:
	.word n
