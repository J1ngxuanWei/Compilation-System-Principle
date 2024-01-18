	.cpu cortex-a72
	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
.data
.global last_char
.size last_char, 4
last_char:
	.word 32
.global num
.size num, 4
num:
	.word 0
.global other
.size other, 4
other:
	.word 0
.global cur_token
.size cur_token, 4
cur_token:
	.word 0
.section .rodata
.global TOKEN_NUM
.size TOKEN_NUM, 4
TOKEN_NUM:
	.word 0
.global TOKEN_OTHER
.size TOKEN_OTHER, 4
TOKEN_OTHER:
	.word 1

	.text
	.global next_char
	.type next_char , %function
next_char:
	push {fp, lr}
	mov fp, sp
	lsr sp, sp, #3
	lsl sp, sp, #3
.L204:
	bl getch
	mov r1, r0
	ldr r0, addr_last_char_0
	str r1, [r0]
	ldr r0, addr_last_char_0
	ldr r0, [r0]
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
	.global is_space
	.type is_space , %function
is_space:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #4
	lsr sp, sp, #3
	lsl sp, sp, #3
.L205:
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	cmp r0, #32
	moveq r0, #1
	movne r0, #0
	beq .L207
	b .L211
.L207:
	mov r0, #1
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
	b .L209
.L208:
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
	b .L209
.L209:
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L210:
	ldr r0, [fp, #-4]
	cmp r0, #10
	moveq r0, #1
	movne r0, #0
	beq .L207
	b .L212
.L211:
	b .L210
.L212:
	b .L208
	.global is_num
	.type is_num , %function
is_num:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #4
	lsr sp, sp, #3
	lsl sp, sp, #3
.L213:
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	cmp r0, #48
	movge r0, #1
	movlt r0, #0
	bge .L218
	b .L219
.L215:
	mov r0, #1
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
	b .L217
.L216:
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
	b .L217
.L217:
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L218:
	ldr r0, [fp, #-4]
	cmp r0, #57
	movle r0, #1
	movgt r0, #0
	ble .L215
	b .L220
.L219:
	b .L216
.L220:
	b .L216
	.global next_token
	.type next_token , %function
next_token:
	push {fp, lr}
	mov fp, sp
	lsr sp, sp, #3
	lsl sp, sp, #3
.L221:
	ldr r0, addr_last_char_0
	ldr r0, [r0]
	mov r0, r0
	bl is_space
	mov r0, r0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L223
	b .L225
.L222:
	ldr r0, addr_last_char_0
	ldr r0, [r0]
	mov r0, r0
	bl is_space
	mov r0, r0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L223
	b .L226
.L223:
	bl next_char
	mov r0, r0
	b .L222
.L224:
	ldr r0, addr_last_char_0
	ldr r0, [r0]
	mov r0, r0
	bl is_num
	mov r0, r0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L227
	b .L230
.L225:
	b .L224
.L226:
	b .L224
.L227:
	ldr r0, addr_last_char_0
	ldr r0, [r0]
	sub r1, r0, #48
	ldr r0, addr_num_0
	str r1, [r0]
	bl next_char
	mov r0, r0
	mov r0, r0
	bl is_num
	mov r0, r0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L232
	b .L234
.L228:
	ldr r0, addr_last_char_0
	ldr r1, [r0]
	ldr r0, addr_other_0
	str r1, [r0]
	bl next_char
	mov r0, r0
	ldr r0, addr_TOKEN_OTHER_0
	ldr r1, [r0]
	ldr r0, addr_cur_token_0
	str r1, [r0]
	b .L229
.L229:
	ldr r0, addr_cur_token_0
	ldr r0, [r0]
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L230:
	b .L228
.L231:
	bl next_char
	mov r0, r0
	mov r0, r0
	bl is_num
	mov r0, r0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L232
	b .L235
.L232:
	ldr r0, addr_num_0
	ldr r1, [r0]
	mov r0, #10
	mul r1, r1, r0
	ldr r0, addr_last_char_0
	ldr r0, [r0]
	add r0, r1, r0
	sub r1, r0, #48
	ldr r0, addr_num_0
	str r1, [r0]
	b .L231
.L233:
	ldr r0, addr_TOKEN_NUM_0
	ldr r1, [r0]
	ldr r0, addr_cur_token_0
	str r1, [r0]
	b .L229
.L234:
	b .L233
.L235:
	b .L233
	.global panic
	.type panic , %function
panic:
	push {fp, lr}
	mov fp, sp
	lsr sp, sp, #3
	lsl sp, sp, #3
.L236:
	mov r0, #112
	bl putch
	mov r0, #97
	bl putch
	mov r0, #110
	bl putch
	mov r0, #105
	bl putch
	mov r0, #99
	bl putch
	mov r0, #33
	bl putch
	mov r0, #10
	bl putch
	mov r0, #0
	sub r0, r0, #1
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
	.global get_op_prec
	.type get_op_prec , %function
get_op_prec:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #4
	lsr sp, sp, #3
	lsl sp, sp, #3
.L237:
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	cmp r0, #43
	moveq r0, #1
	movne r0, #0
	beq .L239
	b .L242
.L239:
	mov r0, #10
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
	b .L240
.L240:
	ldr r0, [fp, #-4]
	cmp r0, #42
	moveq r0, #1
	movne r0, #0
	beq .L244
	b .L248
.L241:
	ldr r0, [fp, #-4]
	cmp r0, #45
	moveq r0, #1
	movne r0, #0
	beq .L239
	b .L243
.L242:
	b .L241
.L243:
	b .L240
.L244:
	mov r0, #20
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
	b .L245
.L245:
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L246:
	ldr r0, [fp, #-4]
	cmp r0, #37
	moveq r0, #1
	movne r0, #0
	beq .L244
	b .L250
.L247:
	ldr r0, [fp, #-4]
	cmp r0, #47
	moveq r0, #1
	movne r0, #0
	beq .L244
	b .L249
.L248:
	b .L247
.L249:
	b .L246
.L250:
	b .L245
	.global stack_push
	.type stack_push , %function
stack_push:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #8
	lsr sp, sp, #3
	lsl sp, sp, #3
.L251:
	str r0, [fp, #-8]
	str r1, [fp, #-4]
	ldr r0, [fp, #-8]
	mov r0, r0
	ldr r0, [r0]
	add r1, r0, #1
	ldr r0, [fp, #-8]
	mov r0, r0
	str r1, [r0]
	ldr r2, [fp, #-4]
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-8]
	mov r0, r0
	ldr r0, [r0]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	str r2, [r0]
	mov sp, fp
	pop {fp, lr}
	bx lr
	.global stack_pop
	.type stack_pop , %function
stack_pop:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #8
	lsr sp, sp, #3
	lsl sp, sp, #3
.L262:
	str r0, [fp, #-8]
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-8]
	mov r0, r0
	ldr r0, [r0]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	str r0, [fp, #-4]
	ldr r0, [fp, #-8]
	mov r0, r0
	ldr r0, [r0]
	sub r1, r0, #1
	ldr r0, [fp, #-8]
	mov r0, r0
	str r1, [r0]
	ldr r0, [fp, #-4]
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
	.global stack_peek
	.type stack_peek , %function
stack_peek:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #4
	lsr sp, sp, #3
	lsl sp, sp, #3
.L273:
	str r0, [fp, #-4]
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-4]
	mov r0, r0
	ldr r0, [r0]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
	.global stack_size
	.type stack_size , %function
stack_size:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #4
	lsr sp, sp, #3
	lsl sp, sp, #3
.L279:
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	mov r0, r0
	ldr r0, [r0]
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
	.global eval_op
	.type eval_op , %function
eval_op:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #12
	lsr sp, sp, #3
	lsl sp, sp, #3
.L283:
	str r0, [fp, #-12]
	str r1, [fp, #-8]
	str r2, [fp, #-4]
	ldr r0, [fp, #-12]
	cmp r0, #43
	moveq r0, #1
	movne r0, #0
	beq .L287
	b .L289
.L287:
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-4]
	add r0, r1, r0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
	b .L288
.L288:
	ldr r0, [fp, #-12]
	cmp r0, #45
	moveq r0, #1
	movne r0, #0
	beq .L290
	b .L292
.L289:
	b .L288
.L290:
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-4]
	sub r0, r1, r0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
	b .L291
.L291:
	ldr r0, [fp, #-12]
	cmp r0, #42
	moveq r0, #1
	movne r0, #0
	beq .L293
	b .L295
.L292:
	b .L291
.L293:
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-4]
	mul r0, r1, r0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
	b .L294
.L294:
	ldr r0, [fp, #-12]
	cmp r0, #47
	moveq r0, #1
	movne r0, #0
	beq .L296
	b .L298
.L295:
	b .L294
.L296:
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-4]
	sdiv r0, r1, r0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
	b .L297
.L297:
	ldr r0, [fp, #-12]
	cmp r0, #37
	moveq r0, #1
	movne r0, #0
	beq .L299
	b .L301
.L298:
	b .L297
.L299:
	ldr r2, [fp, #-8]
	ldr r1, [fp, #-4]
	sdiv r0, r2, r1
	mul r0, r0, r1
	sub r0, r2, r0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
	b .L300
.L300:
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L301:
	b .L300
	.global eval
	.type eval , %function
eval:
	push {r4, fp, lr}
	mov fp, sp
	sub sp, sp, #28
	sub sp, sp, #2048
	lsr sp, sp, #3
	lsl sp, sp, #3
.L302:
	ldr r0, =-1052
	add r0, fp, r0
	mov r0, r0
	ldr r0, =-1052
	add r0, fp, r0
	mov r1, #0
	mov r2, #1024
	bl memset
	ldr r0, =-2076
	add r0, fp, r0
	mov r0, r0
	ldr r0, =-2076
	add r0, fp, r0
	mov r1, #0
	mov r2, #1024
	bl memset
	ldr r0, addr_cur_token_0
	ldr r1, [r0]
	ldr r0, addr_TOKEN_NUM_0
	ldr r0, [r0]
	cmp r1, r0
	movne r0, #1
	moveq r0, #0
	bne .L307
	b .L309
.L307:
	bl panic
	mov r0, r0
	mov r0, r0
	mov sp, fp
	pop {r4, fp, lr}
	bx lr
	b .L308
.L308:
	ldr r0, =-1052
	add r2, fp, r0
	mov r2, r2
	ldr r0, addr_num_0
	ldr r1, [r0]
	mov r0, r2
	mov r1, r1
	bl stack_push
	bl next_token
	mov r0, r0
	ldr r0, addr_cur_token_0
	ldr r1, [r0]
	ldr r0, addr_TOKEN_OTHER_0
	ldr r0, [r0]
	cmp r1, r0
	moveq r0, #1
	movne r0, #0
	beq .L311
	b .L313
.L309:
	b .L308
.L310:
	ldr r0, addr_cur_token_0
	ldr r1, [r0]
	ldr r0, addr_TOKEN_OTHER_0
	ldr r0, [r0]
	cmp r1, r0
	moveq r0, #1
	movne r0, #0
	beq .L311
	b .L334
.L311:
	ldr r0, addr_other_0
	ldr r0, [r0]
	str r0, [fp, #-28]
	ldr r0, [fp, #-28]
	mov r0, r0
	bl get_op_prec
	mov r0, r0
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	beq .L315
	b .L317
.L312:
	bl next_token
	mov r0, r0
	ldr r0, =-2076
	add r0, fp, r0
	mov r0, r0
	mov r0, r0
	bl stack_size
	mov r0, r0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L336
	b .L338
.L313:
	b .L312
.L315:
	b .L312
.L316:
	bl next_token
	mov r0, r0
	ldr r0, =-2076
	add r0, fp, r0
	mov r0, r0
	mov r0, r0
	bl stack_size
	mov r0, r0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L328
	b .L323
.L317:
	b .L316
.L319:
	ldr r0, =-2076
	add r0, fp, r0
	mov r0, r0
	mov r0, r0
	bl stack_size
	mov r0, r0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L328
	b .L329
.L320:
	ldr r0, =-2076
	add r0, fp, r0
	mov r0, r0
	mov r0, r0
	bl stack_pop
	mov r0, r0
	str r0, [fp, #-24]
	ldr r0, =-1052
	add r0, fp, r0
	mov r0, r0
	mov r0, r0
	bl stack_pop
	mov r0, r0
	str r0, [fp, #-20]
	ldr r0, =-1052
	add r0, fp, r0
	mov r0, r0
	mov r0, r0
	bl stack_pop
	mov r0, r0
	str r0, [fp, #-16]
	ldr r0, =-1052
	add r4, fp, r0
	mov r4, r4
	ldr r0, [fp, #-24]
	ldr r1, [fp, #-16]
	ldr r2, [fp, #-20]
	mov r0, r0
	mov r1, r1
	mov r2, r2
	bl eval_op
	mov r1, r0
	mov r0, r4
	mov r1, r1
	bl stack_push
	b .L319
.L321:
	ldr r0, =-2076
	add r0, fp, r0
	mov r0, r0
	ldr r1, [fp, #-28]
	mov r0, r0
	mov r1, r1
	bl stack_push
	ldr r0, addr_cur_token_0
	ldr r1, [r0]
	ldr r0, addr_TOKEN_NUM_0
	ldr r0, [r0]
	cmp r1, r0
	movne r0, #1
	moveq r0, #0
	bne .L331
	b .L333
.L323:
	b .L321
.L328:
	ldr r0, =-2076
	add r0, fp, r0
	mov r0, r0
	mov r0, r0
	bl stack_peek
	mov r0, r0
	mov r0, r0
	bl get_op_prec
	mov r4, r0
	ldr r0, [fp, #-28]
	mov r0, r0
	bl get_op_prec
	mov r0, r0
	cmp r4, r0
	movge r0, #1
	movlt r0, #0
	bge .L320
	b .L330
.L329:
	b .L321
.L330:
	b .L321
.L331:
	bl panic
	mov r0, r0
	mov r0, r0
	mov sp, fp
	pop {r4, fp, lr}
	bx lr
	b .L332
.L332:
	ldr r0, =-1052
	add r2, fp, r0
	mov r2, r2
	ldr r0, addr_num_0
	ldr r1, [r0]
	mov r0, r2
	mov r1, r1
	bl stack_push
	bl next_token
	mov r0, r0
	b .L310
.L333:
	b .L332
.L334:
	b .L312
.L335:
	ldr r0, =-2076
	add r0, fp, r0
	mov r0, r0
	mov r0, r0
	bl stack_size
	mov r0, r0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L336
	b .L342
.L336:
	ldr r0, =-2076
	add r0, fp, r0
	mov r0, r0
	mov r0, r0
	bl stack_pop
	mov r0, r0
	str r0, [fp, #-12]
	ldr r0, =-1052
	add r0, fp, r0
	mov r0, r0
	mov r0, r0
	bl stack_pop
	mov r0, r0
	str r0, [fp, #-8]
	ldr r0, =-1052
	add r0, fp, r0
	mov r0, r0
	mov r0, r0
	bl stack_pop
	mov r0, r0
	str r0, [fp, #-4]
	ldr r0, =-1052
	add r4, fp, r0
	mov r4, r4
	ldr r0, [fp, #-12]
	ldr r1, [fp, #-4]
	ldr r2, [fp, #-8]
	mov r0, r0
	mov r1, r1
	mov r2, r2
	bl eval_op
	mov r1, r0
	mov r0, r4
	mov r1, r1
	bl stack_push
	b .L335
.L337:
	ldr r0, =-1052
	add r0, fp, r0
	mov r0, r0
	mov r0, r0
	bl stack_peek
	mov r0, r0
	mov r0, r0
	mov sp, fp
	pop {r4, fp, lr}
	bx lr
.L338:
	b .L337
.L342:
	b .L337
	.global main
	.type main , %function
main:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #4
	lsr sp, sp, #3
	lsl sp, sp, #3
.L343:
	bl getint
	mov r0, r0
	str r0, [fp, #-4]
	bl getch
	mov r0, r0
	bl next_token
	mov r0, r0
	ldr r0, [fp, #-4]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L346
	b .L348
.L345:
	ldr r0, [fp, #-4]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L346
	b .L349
.L346:
	bl eval
	mov r0, r0
	mov r0, r0
	bl putint
	mov r0, #10
	bl putch
	ldr r0, [fp, #-4]
	sub r0, r0, #1
	str r0, [fp, #-4]
	b .L345
.L347:
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L348:
	b .L347
.L349:
	b .L347

.LTORG
addr_TOKEN_NUM_0:
	.word TOKEN_NUM
addr_TOKEN_OTHER_0:
	.word TOKEN_OTHER
addr_last_char_0:
	.word last_char
addr_num_0:
	.word num
addr_other_0:
	.word other
addr_cur_token_0:
	.word cur_token
