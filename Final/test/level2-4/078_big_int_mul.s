	.cpu cortex-a72
	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
.section .rodata
.global len
.size len, 4
len:
	.word 20

	.text
	.global main
	.type main , %function
main:
	push {r4, fp, lr}
	mov fp, sp
	sub sp, sp, #548
	lsr sp, sp, #3
	lsl sp, sp, #3
.L129:
	mvn r0, #107
	add r0, fp, r0
	mov r0, r0
	ldr r0, =-108
	add r0, fp, r0
	mov r1, #0
	mov r2, #80
	bl memset
	mvn r0, #107
	add r1, fp, r0
	mov r1, r1
	mov r0, #1
	str r0, [r1]
	mvn r0, #107
	add r0, fp, r0
	add r1, r0, #4
	mov r1, r1
	mov r0, #2
	str r0, [r1]
	mvn r0, #107
	add r0, fp, r0
	add r1, r0, #8
	mov r1, r1
	mov r0, #3
	str r0, [r1]
	mvn r0, #107
	add r0, fp, r0
	add r1, r0, #12
	mov r1, r1
	mov r0, #4
	str r0, [r1]
	mvn r0, #107
	add r0, fp, r0
	add r1, r0, #16
	mov r1, r1
	mov r0, #5
	str r0, [r1]
	mvn r0, #107
	add r0, fp, r0
	add r1, r0, #20
	mov r1, r1
	mov r0, #6
	str r0, [r1]
	mvn r0, #107
	add r0, fp, r0
	add r1, r0, #24
	mov r1, r1
	mov r0, #7
	str r0, [r1]
	mvn r0, #107
	add r0, fp, r0
	add r1, r0, #28
	mov r1, r1
	mov r0, #8
	str r0, [r1]
	mvn r0, #107
	add r0, fp, r0
	add r1, r0, #32
	mov r1, r1
	mov r0, #9
	str r0, [r1]
	mvn r0, #107
	add r0, fp, r0
	add r1, r0, #36
	mov r1, r1
	mov r0, #0
	str r0, [r1]
	mvn r0, #107
	add r0, fp, r0
	add r1, r0, #40
	mov r1, r1
	mov r0, #1
	str r0, [r1]
	mvn r0, #107
	add r0, fp, r0
	add r1, r0, #44
	mov r1, r1
	mov r0, #2
	str r0, [r1]
	mvn r0, #107
	add r0, fp, r0
	add r1, r0, #48
	mov r1, r1
	mov r0, #3
	str r0, [r1]
	mvn r0, #107
	add r0, fp, r0
	add r1, r0, #52
	mov r1, r1
	mov r0, #4
	str r0, [r1]
	mvn r0, #107
	add r0, fp, r0
	add r1, r0, #56
	mov r1, r1
	mov r0, #5
	str r0, [r1]
	mvn r0, #107
	add r0, fp, r0
	add r1, r0, #60
	mov r1, r1
	mov r0, #6
	str r0, [r1]
	mvn r0, #107
	add r0, fp, r0
	add r1, r0, #64
	mov r1, r1
	mov r0, #7
	str r0, [r1]
	mvn r0, #107
	add r0, fp, r0
	add r1, r0, #68
	mov r1, r1
	mov r0, #8
	str r0, [r1]
	mvn r0, #107
	add r0, fp, r0
	add r1, r0, #72
	mov r1, r1
	mov r0, #9
	str r0, [r1]
	mvn r0, #107
	add r0, fp, r0
	add r1, r0, #76
	mov r1, r1
	mov r0, #0
	str r0, [r1]
	mvn r0, #187
	add r0, fp, r0
	mov r0, r0
	ldr r0, =-188
	add r0, fp, r0
	mov r1, #0
	mov r2, #80
	bl memset
	mvn r0, #187
	add r1, fp, r0
	mov r1, r1
	mov r0, #2
	str r0, [r1]
	mvn r0, #187
	add r0, fp, r0
	add r1, r0, #4
	mov r1, r1
	mov r0, #3
	str r0, [r1]
	mvn r0, #187
	add r0, fp, r0
	add r1, r0, #8
	mov r1, r1
	mov r0, #4
	str r0, [r1]
	mvn r0, #187
	add r0, fp, r0
	add r1, r0, #12
	mov r1, r1
	mov r0, #2
	str r0, [r1]
	mvn r0, #187
	add r0, fp, r0
	add r1, r0, #16
	mov r1, r1
	mov r0, #5
	str r0, [r1]
	mvn r0, #187
	add r0, fp, r0
	add r1, r0, #20
	mov r1, r1
	mov r0, #7
	str r0, [r1]
	mvn r0, #187
	add r0, fp, r0
	add r1, r0, #24
	mov r1, r1
	mov r0, #9
	str r0, [r1]
	mvn r0, #187
	add r0, fp, r0
	add r1, r0, #28
	mov r1, r1
	mov r0, #9
	str r0, [r1]
	mvn r0, #187
	add r0, fp, r0
	add r1, r0, #32
	mov r1, r1
	mov r0, #0
	str r0, [r1]
	mvn r0, #187
	add r0, fp, r0
	add r1, r0, #36
	mov r1, r1
	mov r0, #1
	str r0, [r1]
	mvn r0, #187
	add r0, fp, r0
	add r1, r0, #40
	mov r1, r1
	mov r0, #9
	str r0, [r1]
	mvn r0, #187
	add r0, fp, r0
	add r1, r0, #44
	mov r1, r1
	mov r0, #8
	str r0, [r1]
	mvn r0, #187
	add r0, fp, r0
	add r1, r0, #48
	mov r1, r1
	mov r0, #7
	str r0, [r1]
	mvn r0, #187
	add r0, fp, r0
	add r1, r0, #52
	mov r1, r1
	mov r0, #6
	str r0, [r1]
	mvn r0, #187
	add r0, fp, r0
	add r1, r0, #56
	mov r1, r1
	mov r0, #4
	str r0, [r1]
	mvn r0, #187
	add r0, fp, r0
	add r1, r0, #60
	mov r1, r1
	mov r0, #3
	str r0, [r1]
	mvn r0, #187
	add r0, fp, r0
	add r1, r0, #64
	mov r1, r1
	mov r0, #2
	str r0, [r1]
	mvn r0, #187
	add r0, fp, r0
	add r1, r0, #68
	mov r1, r1
	mov r0, #1
	str r0, [r1]
	mvn r0, #187
	add r0, fp, r0
	add r1, r0, #72
	mov r1, r1
	mov r0, #2
	str r0, [r1]
	mvn r0, #187
	add r0, fp, r0
	add r1, r0, #76
	mov r1, r1
	mov r0, #2
	str r0, [r1]
	ldr r0, addr_len_0
	ldr r0, [r0]
	str r0, [fp, #-8]
	ldr r0, addr_len_0
	ldr r0, [r0]
	str r0, [fp, #-4]
	ldr r0, =-548
	add r0, fp, r0
	mov r0, r0
	ldr r0, =-548
	add r0, fp, r0
	mov r1, #0
	mov r2, #160
	bl memset
	mov r0, #0
	str r0, [fp, #-28]
	ldr r1, [fp, #-28]
	ldr r0, [fp, #-8]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L186
	b .L188
.L185:
	ldr r1, [fp, #-28]
	ldr r0, [fp, #-8]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L186
	b .L191
.L186:
	ldr r2, [fp, #-28]
	mvn r0, #107
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r3, [r0]
	ldr r2, [fp, #-28]
	ldr r0, =-288
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	str r3, [r0]
	ldr r0, [fp, #-28]
	add r0, r0, #1
	str r0, [fp, #-28]
	b .L185
.L187:
	mov r0, #0
	str r0, [fp, #-28]
	ldr r1, [fp, #-28]
	ldr r0, [fp, #-4]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L193
	b .L195
.L188:
	b .L187
.L191:
	b .L187
.L192:
	ldr r1, [fp, #-28]
	ldr r0, [fp, #-4]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L193
	b .L198
.L193:
	ldr r2, [fp, #-28]
	mvn r0, #187
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r3, [r0]
	ldr r2, [fp, #-28]
	ldr r0, =-388
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	str r3, [r0]
	ldr r0, [fp, #-28]
	add r0, r0, #1
	str r0, [fp, #-28]
	b .L192
.L194:
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-4]
	add r0, r1, r0
	sub r0, r0, #1
	str r0, [fp, #-16]
	mov r0, #0
	str r0, [fp, #-28]
	ldr r1, [fp, #-28]
	ldr r0, [fp, #-16]
	cmp r1, r0
	movle r0, #1
	movgt r0, #0
	ble .L200
	b .L202
.L195:
	b .L194
.L198:
	b .L194
.L199:
	ldr r1, [fp, #-28]
	ldr r0, [fp, #-16]
	cmp r1, r0
	movle r0, #1
	movgt r0, #0
	ble .L200
	b .L204
.L200:
	ldr r2, [fp, #-28]
	ldr r0, =-548
	add r1, fp, r0
	lsl r0, r2, #2
	add r1, r1, r0
	mov r1, r1
	mov r0, #0
	str r0, [r1]
	ldr r0, [fp, #-28]
	add r0, r0, #1
	str r0, [fp, #-28]
	b .L199
.L201:
	mov r0, #0
	str r0, [fp, #-12]
	ldr r0, [fp, #-4]
	sub r0, r0, #1
	str r0, [fp, #-28]
	ldr r1, [fp, #-28]
	mov r0, #0
	sub r0, r0, #1
	cmp r1, r0
	movgt r0, #1
	movle r0, #0
	bgt .L206
	b .L208
.L202:
	b .L201
.L204:
	b .L201
.L205:
	ldr r1, [fp, #-28]
	mov r0, #0
	sub r0, r0, #1
	cmp r1, r0
	movgt r0, #1
	movle r0, #0
	bgt .L206
	b .L225
.L206:
	ldr r2, [fp, #-28]
	ldr r0, =-388
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	str r0, [fp, #-20]
	ldr r0, [fp, #-8]
	sub r0, r0, #1
	str r0, [fp, #-24]
	ldr r1, [fp, #-24]
	mov r0, #0
	sub r0, r0, #1
	cmp r1, r0
	movgt r0, #1
	movle r0, #0
	bgt .L211
	b .L213
.L207:
	ldr r0, =-548
	add r0, fp, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L226
	b .L229
.L208:
	b .L207
.L210:
	ldr r1, [fp, #-24]
	mov r0, #0
	sub r0, r0, #1
	cmp r1, r0
	movgt r0, #1
	movle r0, #0
	bgt .L211
	b .L224
.L211:
	ldr r2, [fp, #-16]
	ldr r0, =-548
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r4, [r0]
	ldr r3, [fp, #-20]
	ldr r2, [fp, #-24]
	ldr r0, =-288
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	mul r0, r3, r0
	add r0, r4, r0
	str r0, [fp, #-12]
	ldr r0, [fp, #-12]
	cmp r0, #10
	movge r0, #1
	movlt r0, #0
	bge .L216
	b .L219
.L212:
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-8]
	add r0, r1, r0
	sub r0, r0, #1
	str r0, [fp, #-16]
	ldr r0, [fp, #-28]
	sub r0, r0, #1
	str r0, [fp, #-28]
	b .L205
.L213:
	b .L212
.L216:
	ldr r3, [fp, #-12]
	ldr r2, [fp, #-16]
	ldr r0, =-548
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	str r3, [r0]
	ldr r0, [fp, #-16]
	sub r2, r0, #1
	ldr r0, =-548
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r2, [r0]
	ldr r1, [fp, #-12]
	mov r0, #10
	sdiv r0, r1, r0
	add r3, r2, r0
	ldr r0, [fp, #-16]
	sub r2, r0, #1
	ldr r0, =-548
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	str r3, [r0]
	b .L218
.L217:
	ldr r3, [fp, #-12]
	ldr r2, [fp, #-16]
	ldr r0, =-548
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	str r3, [r0]
	b .L218
.L218:
	ldr r0, [fp, #-24]
	sub r0, r0, #1
	str r0, [fp, #-24]
	ldr r0, [fp, #-16]
	sub r0, r0, #1
	str r0, [fp, #-16]
	b .L210
.L219:
	b .L217
.L224:
	b .L212
.L225:
	b .L207
.L226:
	ldr r0, =-548
	add r0, fp, r0
	mov r0, r0
	ldr r0, [r0]
	mov r0, r0
	bl putint
	b .L227
.L227:
	mov r0, #1
	str r0, [fp, #-28]
	ldr r2, [fp, #-28]
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-4]
	add r0, r1, r0
	sub r0, r0, #1
	cmp r2, r0
	movle r0, #1
	movgt r0, #0
	ble .L232
	b .L234
.L229:
	b .L227
.L231:
	ldr r2, [fp, #-28]
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-4]
	add r0, r1, r0
	sub r0, r0, #1
	cmp r2, r0
	movle r0, #1
	movgt r0, #0
	ble .L232
	b .L236
.L232:
	ldr r2, [fp, #-28]
	ldr r0, =-548
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	mov r0, r0
	bl putint
	ldr r0, [fp, #-28]
	add r0, r0, #1
	str r0, [fp, #-28]
	b .L231
.L233:
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {r4, fp, lr}
	bx lr
.L234:
	b .L233
.L236:
	b .L233

.LTORG
addr_len_0:
	.word len
