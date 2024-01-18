	.cpu cortex-a72
	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
.data
.comm dp, 52907904
.comm list, 800
.comm cns, 80
.section .rodata
.global maxn
.size maxn, 4
maxn:
	.word 18
.global mod
.size mod, 4
mod:
	.word 1000000007

	.text
	.global equal
	.type equal , %function
equal:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #8
	lsr sp, sp, #3
	lsl sp, sp, #3
.L246:
	str r0, [fp, #-8]
	str r1, [fp, #-4]
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-4]
	cmp r1, r0
	moveq r0, #1
	movne r0, #0
	beq .L249
	b .L251
.L249:
	mov r0, #1
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
	b .L250
.L250:
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L251:
	b .L250
	.global dfs
	.type dfs , %function
dfs:
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #28
	lsr sp, sp, #3
	lsl sp, sp, #3
.L252:
	str r0, [fp, #-28]
	str r1, [fp, #-24]
	str r2, [fp, #-20]
	str r3, [fp, #-16]
	ldr r0, [fp, #28]
	str r0, [fp, #-12]
	ldr r0, [fp, #32]
	str r0, [fp, #-8]
	ldr r7, [fp, #-28]
	ldr r6, [fp, #-24]
	ldr r5, [fp, #-20]
	ldr r2, [fp, #-16]
	ldr r1, [fp, #-12]
	ldr r0, [fp, #-8]
	ldr r4, addr_dp_0
	ldr r3, =2939328
	mul r3, r7, r3
	add r4, r4, r3
	ldr r3, =163296
	mul r3, r6, r3
	add r4, r4, r3
	ldr r3, =9072
	mul r3, r5, r3
	add r4, r4, r3
	mov r3, #504
	mul r2, r2, r3
	add r3, r4, r2
	mov r2, #28
	mul r1, r1, r2
	add r1, r3, r1
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #1
	cmp r1, r0
	movne r0, #1
	moveq r0, #0
	bne .L259
	b .L262
.L259:
	ldr r7, [fp, #-28]
	ldr r6, [fp, #-24]
	ldr r5, [fp, #-20]
	ldr r2, [fp, #-16]
	ldr r1, [fp, #-12]
	ldr r0, [fp, #-8]
	ldr r4, addr_dp_0
	ldr r3, =2939328
	mul r3, r7, r3
	add r4, r4, r3
	ldr r3, =163296
	mul r3, r6, r3
	add r4, r4, r3
	ldr r3, =9072
	mul r3, r5, r3
	add r4, r4, r3
	mov r3, #504
	mul r2, r2, r3
	add r3, r4, r2
	mov r2, #28
	mul r1, r1, r2
	add r1, r3, r1
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	mov r0, r0
	mov sp, fp
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
	b .L260
.L260:
	ldr r1, [fp, #-28]
	ldr r0, [fp, #-24]
	add r1, r1, r0
	ldr r0, [fp, #-20]
	add r1, r1, r0
	ldr r0, [fp, #-16]
	add r1, r1, r0
	ldr r0, [fp, #-12]
	add r0, r1, r0
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	beq .L264
	b .L266
.L262:
	b .L260
.L264:
	mov r0, #1
	mov r0, r0
	mov sp, fp
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
	b .L265
.L265:
	mov r0, #0
	str r0, [fp, #-4]
	ldr r0, [fp, #-28]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L268
	b .L270
.L266:
	b .L265
.L268:
	ldr r5, [fp, #-4]
	ldr r4, [fp, #-28]
	ldr r0, [fp, #-8]
	mov r0, r0
	mov r1, #2
	bl equal
	mov r0, r0
	sub r4, r4, r0
	ldr r0, [fp, #-28]
	sub r0, r0, #1
	ldr r1, [fp, #-24]
	ldr r2, [fp, #-20]
	ldr r3, [fp, #-16]
	ldr r7, [fp, #-12]
	mov r0, r0
	mov r1, r1
	mov r2, r2
	mov r3, r3
	mov r6, #1
	push {r6}
	push {r7}
	bl dfs
	add sp, sp, #8
	mov r0, r0
	mul r0, r4, r0
	add r2, r5, r0
	ldr r0, addr_mod_0
	ldr r1, [r0]
	sdiv r0, r2, r1
	mul r0, r0, r1
	sub r0, r2, r0
	str r0, [fp, #-4]
	b .L269
.L269:
	ldr r0, [fp, #-24]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L271
	b .L273
.L270:
	b .L269
.L271:
	ldr r5, [fp, #-4]
	ldr r4, [fp, #-24]
	ldr r0, [fp, #-8]
	mov r0, r0
	mov r1, #3
	bl equal
	mov r0, r0
	sub r4, r4, r0
	ldr r0, [fp, #-28]
	add r6, r0, #1
	ldr r0, [fp, #-24]
	sub r1, r0, #1
	ldr r2, [fp, #-20]
	ldr r3, [fp, #-16]
	ldr r7, [fp, #-12]
	mov r0, r6
	mov r1, r1
	mov r2, r2
	mov r3, r3
	mov r6, #2
	push {r6}
	push {r7}
	bl dfs
	add sp, sp, #8
	mov r0, r0
	mul r0, r4, r0
	add r2, r5, r0
	ldr r0, addr_mod_0
	ldr r1, [r0]
	sdiv r0, r2, r1
	mul r0, r0, r1
	sub r0, r2, r0
	str r0, [fp, #-4]
	b .L272
.L272:
	ldr r0, [fp, #-20]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L274
	b .L276
.L273:
	b .L272
.L274:
	ldr r5, [fp, #-4]
	ldr r4, [fp, #-20]
	ldr r0, [fp, #-8]
	mov r0, r0
	mov r1, #4
	bl equal
	mov r0, r0
	sub r4, r4, r0
	ldr r6, [fp, #-28]
	ldr r0, [fp, #-24]
	add r1, r0, #1
	ldr r0, [fp, #-20]
	sub r2, r0, #1
	ldr r3, [fp, #-16]
	ldr r7, [fp, #-12]
	mov r0, r6
	mov r1, r1
	mov r2, r2
	mov r3, r3
	mov r6, #3
	push {r6}
	push {r7}
	bl dfs
	add sp, sp, #8
	mov r0, r0
	mul r0, r4, r0
	add r2, r5, r0
	ldr r0, addr_mod_0
	ldr r1, [r0]
	sdiv r0, r2, r1
	mul r0, r0, r1
	sub r0, r2, r0
	str r0, [fp, #-4]
	b .L275
.L275:
	ldr r0, [fp, #-16]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L277
	b .L279
.L276:
	b .L275
.L277:
	ldr r5, [fp, #-4]
	ldr r4, [fp, #-16]
	ldr r0, [fp, #-8]
	mov r0, r0
	mov r1, #5
	bl equal
	mov r0, r0
	sub r4, r4, r0
	ldr r6, [fp, #-28]
	ldr r1, [fp, #-24]
	ldr r0, [fp, #-20]
	add r2, r0, #1
	ldr r0, [fp, #-16]
	sub r3, r0, #1
	ldr r7, [fp, #-12]
	mov r0, r6
	mov r1, r1
	mov r2, r2
	mov r3, r3
	mov r6, #4
	push {r6}
	push {r7}
	bl dfs
	add sp, sp, #8
	mov r0, r0
	mul r0, r4, r0
	add r2, r5, r0
	ldr r0, addr_mod_0
	ldr r1, [r0]
	sdiv r0, r2, r1
	mul r0, r0, r1
	sub r0, r2, r0
	str r0, [fp, #-4]
	b .L278
.L278:
	ldr r0, [fp, #-12]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L280
	b .L282
.L279:
	b .L278
.L280:
	ldr r5, [fp, #-4]
	ldr r4, [fp, #-12]
	ldr r6, [fp, #-28]
	ldr r1, [fp, #-24]
	ldr r2, [fp, #-20]
	ldr r0, [fp, #-16]
	add r3, r0, #1
	ldr r0, [fp, #-12]
	sub r7, r0, #1
	mov r0, r6
	mov r1, r1
	mov r2, r2
	mov r3, r3
	mov r6, #5
	push {r6}
	push {r7}
	bl dfs
	add sp, sp, #8
	mov r0, r0
	mul r0, r4, r0
	add r2, r5, r0
	ldr r0, addr_mod_0
	ldr r1, [r0]
	sdiv r0, r2, r1
	mul r0, r0, r1
	sub r0, r2, r0
	str r0, [fp, #-4]
	b .L281
.L281:
	ldr r2, [fp, #-4]
	ldr r0, addr_mod_0
	ldr r1, [r0]
	sdiv r0, r2, r1
	mul r0, r0, r1
	sub r3, r2, r0
	ldr r8, [fp, #-28]
	ldr r7, [fp, #-24]
	ldr r6, [fp, #-20]
	ldr r2, [fp, #-16]
	ldr r1, [fp, #-12]
	ldr r0, [fp, #-8]
	ldr r5, addr_dp_0
	ldr r4, =2939328
	mul r4, r8, r4
	add r5, r5, r4
	ldr r4, =163296
	mul r4, r7, r4
	add r5, r5, r4
	ldr r4, =9072
	mul r4, r6, r4
	add r5, r5, r4
	mov r4, #504
	mul r2, r2, r4
	add r4, r5, r2
	mov r2, #28
	mul r1, r1, r2
	add r1, r4, r1
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	str r3, [r0]
	ldr r7, [fp, #-28]
	ldr r6, [fp, #-24]
	ldr r5, [fp, #-20]
	ldr r2, [fp, #-16]
	ldr r1, [fp, #-12]
	ldr r0, [fp, #-8]
	ldr r4, addr_dp_0
	ldr r3, =2939328
	mul r3, r7, r3
	add r4, r4, r3
	ldr r3, =163296
	mul r3, r6, r3
	add r4, r4, r3
	ldr r3, =9072
	mul r3, r5, r3
	add r4, r4, r3
	mov r3, #504
	mul r2, r2, r3
	add r3, r4, r2
	mov r2, #28
	mul r1, r1, r2
	add r1, r3, r1
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	mov r0, r0
	mov sp, fp
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L282:
	b .L281
	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #32
	lsr sp, sp, #3
	lsl sp, sp, #3
.L285:
	bl getint
	mov r0, r0
	str r0, [fp, #-32]
	mov r0, #0
	str r0, [fp, #-28]
	ldr r1, [fp, #-28]
	ldr r0, addr_maxn_0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L289
	b .L291
.L288:
	ldr r1, [fp, #-28]
	ldr r0, addr_maxn_0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L289
	b .L323
.L289:
	mov r0, #0
	str r0, [fp, #-24]
	ldr r1, [fp, #-24]
	ldr r0, addr_maxn_0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L294
	b .L296
.L290:
	mov r0, #0
	str r0, [fp, #-28]
	ldr r1, [fp, #-28]
	ldr r0, [fp, #-32]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L325
	b .L327
.L291:
	b .L290
.L293:
	ldr r1, [fp, #-24]
	ldr r0, addr_maxn_0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L294
	b .L322
.L294:
	mov r0, #0
	str r0, [fp, #-20]
	ldr r1, [fp, #-20]
	ldr r0, addr_maxn_0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L299
	b .L301
.L295:
	ldr r0, [fp, #-28]
	add r0, r0, #1
	str r0, [fp, #-28]
	b .L288
.L296:
	b .L295
.L298:
	ldr r1, [fp, #-20]
	ldr r0, addr_maxn_0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L299
	b .L321
.L299:
	mov r0, #0
	str r0, [fp, #-16]
	ldr r1, [fp, #-16]
	ldr r0, addr_maxn_0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L304
	b .L306
.L300:
	ldr r0, [fp, #-24]
	add r0, r0, #1
	str r0, [fp, #-24]
	b .L293
.L301:
	b .L300
.L303:
	ldr r1, [fp, #-16]
	ldr r0, addr_maxn_0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L304
	b .L320
.L304:
	mov r0, #0
	str r0, [fp, #-12]
	ldr r1, [fp, #-12]
	ldr r0, addr_maxn_0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L309
	b .L311
.L305:
	ldr r0, [fp, #-20]
	add r0, r0, #1
	str r0, [fp, #-20]
	b .L298
.L306:
	b .L305
.L308:
	ldr r1, [fp, #-12]
	ldr r0, addr_maxn_0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L309
	b .L319
.L309:
	mov r0, #0
	str r0, [fp, #-8]
	ldr r0, [fp, #-8]
	cmp r0, #7
	movlt r0, #1
	movge r0, #0
	blt .L314
	b .L316
.L310:
	ldr r0, [fp, #-16]
	add r0, r0, #1
	str r0, [fp, #-16]
	b .L303
.L311:
	b .L310
.L313:
	ldr r0, [fp, #-8]
	cmp r0, #7
	movlt r0, #1
	movge r0, #0
	blt .L314
	b .L318
.L314:
	mov r0, #0
	sub r3, r0, #1
	ldr r8, [fp, #-28]
	ldr r7, [fp, #-24]
	ldr r6, [fp, #-20]
	ldr r2, [fp, #-16]
	ldr r1, [fp, #-12]
	ldr r0, [fp, #-8]
	ldr r5, addr_dp_0
	ldr r4, =2939328
	mul r4, r8, r4
	add r5, r5, r4
	ldr r4, =163296
	mul r4, r7, r4
	add r5, r5, r4
	ldr r4, =9072
	mul r4, r6, r4
	add r5, r5, r4
	mov r4, #504
	mul r2, r2, r4
	add r4, r5, r2
	mov r2, #28
	mul r1, r1, r2
	add r1, r4, r1
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	str r3, [r0]
	ldr r0, [fp, #-8]
	add r0, r0, #1
	str r0, [fp, #-8]
	b .L313
.L315:
	ldr r0, [fp, #-12]
	add r0, r0, #1
	str r0, [fp, #-12]
	b .L308
.L316:
	b .L315
.L318:
	b .L315
.L319:
	b .L310
.L320:
	b .L305
.L321:
	b .L300
.L322:
	b .L295
.L323:
	b .L290
.L324:
	ldr r1, [fp, #-28]
	ldr r0, [fp, #-32]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L325
	b .L333
.L325:
	bl getint
	mov r2, r0
	ldr r0, [fp, #-28]
	ldr r1, addr_list_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	str r2, [r0]
	ldr r0, [fp, #-28]
	ldr r1, addr_list_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	ldr r1, addr_cns_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	add r2, r0, #1
	ldr r0, [fp, #-28]
	ldr r1, addr_list_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	ldr r1, addr_cns_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	str r2, [r0]
	ldr r0, [fp, #-28]
	add r0, r0, #1
	str r0, [fp, #-28]
	b .L324
.L326:
	ldr r0, addr_cns_0
	add r0, r0, #4
	mov r0, r0
	ldr r4, [r0]
	ldr r0, addr_cns_0
	add r0, r0, #8
	mov r0, r0
	ldr r1, [r0]
	ldr r0, addr_cns_0
	add r0, r0, #12
	mov r0, r0
	ldr r2, [r0]
	ldr r0, addr_cns_0
	add r0, r0, #16
	mov r0, r0
	ldr r3, [r0]
	ldr r0, addr_cns_0
	add r0, r0, #20
	mov r0, r0
	ldr r5, [r0]
	mov r0, r4
	mov r1, r1
	mov r2, r2
	mov r3, r3
	mov r4, #0
	push {r4}
	push {r5}
	bl dfs
	add sp, sp, #8
	mov r0, r0
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	mov r0, r0
	bl putint
	ldr r0, [fp, #-4]
	mov r0, r0
	mov sp, fp
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L327:
	b .L326
.L333:
	b .L326

.LTORG
addr_maxn_0:
	.word maxn
addr_mod_0:
	.word mod
addr_dp_0:
	.word dp
addr_list_0:
	.word list
addr_cns_0:
	.word cns
