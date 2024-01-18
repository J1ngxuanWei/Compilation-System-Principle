	.cpu cortex-a72
	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
.data
.comm size, 40
.comm to, 400
.comm cap, 400
.comm rev, 400
.comm used, 40
.section .rodata
.global INF
.size INF, 4
INF:
	.word 1879048192

	.text
	.global my_memset
	.type my_memset , %function
my_memset:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #16
	lsr sp, sp, #3
	lsl sp, sp, #3
.L194:
	str r0, [fp, #-16]
	str r1, [fp, #-12]
	str r2, [fp, #-8]
	mov r0, #0
	str r0, [fp, #-4]
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-8]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L200
	b .L202
.L199:
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-8]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L200
	b .L205
.L200:
	ldr r2, [fp, #-12]
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-4]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	str r2, [r0]
	ldr r0, [fp, #-4]
	add r0, r0, #1
	str r0, [fp, #-4]
	b .L199
.L201:
	mov sp, fp
	pop {fp, lr}
	bx lr
.L202:
	b .L201
.L205:
	b .L201
	.global add_node
	.type add_node , %function
add_node:
	push {r4, fp, lr}
	mov fp, sp
	sub sp, sp, #12
	lsr sp, sp, #3
	lsl sp, sp, #3
.L206:
	str r0, [fp, #-12]
	str r1, [fp, #-8]
	str r2, [fp, #-4]
	ldr r4, [fp, #-8]
	ldr r3, [fp, #-12]
	ldr r0, [fp, #-12]
	ldr r1, addr_size_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r2, [r0]
	ldr r1, addr_to_0
	mov r0, #40
	mul r0, r3, r0
	add r1, r1, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	str r4, [r0]
	ldr r4, [fp, #-4]
	ldr r3, [fp, #-12]
	ldr r0, [fp, #-12]
	ldr r1, addr_size_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r2, [r0]
	ldr r1, addr_cap_0
	mov r0, #40
	mul r0, r3, r0
	add r1, r1, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	str r4, [r0]
	ldr r0, [fp, #-8]
	ldr r1, addr_size_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r4, [r0]
	ldr r3, [fp, #-12]
	ldr r0, [fp, #-12]
	ldr r1, addr_size_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r2, [r0]
	ldr r1, addr_rev_0
	mov r0, #40
	mul r0, r3, r0
	add r1, r1, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	str r4, [r0]
	ldr r4, [fp, #-12]
	ldr r3, [fp, #-8]
	ldr r0, [fp, #-8]
	ldr r1, addr_size_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r2, [r0]
	ldr r1, addr_to_0
	mov r0, #40
	mul r0, r3, r0
	add r1, r1, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	str r4, [r0]
	ldr r3, [fp, #-8]
	ldr r0, [fp, #-8]
	ldr r1, addr_size_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r2, [r0]
	ldr r1, addr_cap_0
	mov r0, #40
	mul r0, r3, r0
	add r1, r1, r0
	lsl r0, r2, #2
	add r1, r1, r0
	mov r1, r1
	mov r0, #0
	str r0, [r1]
	ldr r0, [fp, #-12]
	ldr r1, addr_size_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r4, [r0]
	ldr r3, [fp, #-8]
	ldr r0, [fp, #-8]
	ldr r1, addr_size_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r2, [r0]
	ldr r1, addr_rev_0
	mov r0, #40
	mul r0, r3, r0
	add r1, r1, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	str r4, [r0]
	ldr r0, [fp, #-12]
	ldr r1, addr_size_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	add r2, r0, #1
	ldr r0, [fp, #-12]
	ldr r1, addr_size_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	str r2, [r0]
	ldr r0, [fp, #-8]
	ldr r1, addr_size_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	add r2, r0, #1
	ldr r0, [fp, #-8]
	ldr r1, addr_size_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	str r2, [r0]
	mov sp, fp
	pop {r4, fp, lr}
	bx lr
	.global dfs
	.type dfs , %function
dfs:
	push {r4, r5, fp, lr}
	mov fp, sp
	sub sp, sp, #24
	lsr sp, sp, #3
	lsl sp, sp, #3
.L228:
	str r0, [fp, #-24]
	str r1, [fp, #-20]
	str r2, [fp, #-16]
	ldr r1, [fp, #-24]
	ldr r0, [fp, #-20]
	cmp r1, r0
	moveq r0, #1
	movne r0, #0
	beq .L232
	b .L234
.L232:
	ldr r0, [fp, #-16]
	mov r0, r0
	mov sp, fp
	pop {r4, r5, fp, lr}
	bx lr
	b .L233
.L233:
	ldr r0, [fp, #-24]
	ldr r1, addr_used_0
	lsl r0, r0, #2
	add r1, r1, r0
	mov r1, r1
	mov r0, #1
	str r0, [r1]
	mov r0, #0
	str r0, [fp, #-12]
	ldr r2, [fp, #-12]
	ldr r0, [fp, #-24]
	ldr r1, addr_size_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r2, r0
	movlt r0, #1
	movge r0, #0
	blt .L238
	b .L241
.L234:
	b .L233
.L237:
	ldr r2, [fp, #-12]
	ldr r0, [fp, #-24]
	ldr r1, addr_size_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r2, r0
	movlt r0, #1
	movge r0, #0
	blt .L238
	b .L274
.L238:
	ldr r3, [fp, #-24]
	ldr r2, [fp, #-12]
	ldr r1, addr_to_0
	mov r0, #40
	mul r0, r3, r0
	add r1, r1, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	ldr r1, addr_used_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L242
	b .L246
.L239:
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {r4, r5, fp, lr}
	bx lr
.L241:
	b .L239
.L242:
	ldr r0, [fp, #-12]
	add r0, r0, #1
	str r0, [fp, #-12]
	b .L237
.L243:
	ldr r3, [fp, #-24]
	ldr r2, [fp, #-12]
	ldr r1, addr_cap_0
	mov r0, #40
	mul r0, r3, r0
	add r1, r1, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r0, #0
	movle r0, #1
	movgt r0, #0
	ble .L248
	b .L251
.L246:
	b .L243
.L248:
	ldr r0, [fp, #-12]
	add r0, r0, #1
	str r0, [fp, #-12]
	b .L237
.L249:
	ldr r4, [fp, #-16]
	ldr r3, [fp, #-24]
	ldr r2, [fp, #-12]
	ldr r1, addr_cap_0
	mov r0, #40
	mul r0, r3, r0
	add r1, r1, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r4, r0
	movlt r0, #1
	movge r0, #0
	blt .L254
	b .L258
.L251:
	b .L249
.L254:
	ldr r0, [fp, #-16]
	str r0, [fp, #-8]
	b .L256
.L255:
	ldr r3, [fp, #-24]
	ldr r2, [fp, #-12]
	ldr r1, addr_cap_0
	mov r0, #40
	mul r0, r3, r0
	add r1, r1, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	str r0, [fp, #-8]
	b .L256
.L256:
	ldr r3, [fp, #-24]
	ldr r2, [fp, #-12]
	ldr r1, addr_to_0
	mov r0, #40
	mul r0, r3, r0
	add r1, r1, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	ldr r1, [fp, #-20]
	ldr r2, [fp, #-8]
	mov r0, r0
	mov r1, r1
	mov r2, r2
	bl dfs
	mov r0, r0
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	cmp r0, #0
	movgt r0, #1
	movle r0, #0
	bgt .L262
	b .L264
.L258:
	b .L255
.L262:
	ldr r3, [fp, #-24]
	ldr r2, [fp, #-12]
	ldr r1, addr_cap_0
	mov r0, #40
	mul r0, r3, r0
	add r1, r1, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r1, [r0]
	ldr r0, [fp, #-4]
	sub r4, r1, r0
	ldr r3, [fp, #-24]
	ldr r2, [fp, #-12]
	ldr r1, addr_cap_0
	mov r0, #40
	mul r0, r3, r0
	add r1, r1, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	str r4, [r0]
	ldr r3, [fp, #-24]
	ldr r2, [fp, #-12]
	ldr r1, addr_to_0
	mov r0, #40
	mul r0, r3, r0
	add r1, r1, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r4, [r0]
	ldr r3, [fp, #-24]
	ldr r2, [fp, #-12]
	ldr r1, addr_rev_0
	mov r0, #40
	mul r0, r3, r0
	add r1, r1, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r2, [r0]
	ldr r1, addr_cap_0
	mov r0, #40
	mul r0, r4, r0
	add r1, r1, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r1, [r0]
	ldr r0, [fp, #-4]
	add r0, r1, r0
	ldr r4, [fp, #-24]
	ldr r3, [fp, #-12]
	ldr r2, addr_to_0
	mov r1, #40
	mul r1, r4, r1
	add r2, r2, r1
	lsl r1, r3, #2
	add r1, r2, r1
	mov r1, r1
	ldr r5, [r1]
	ldr r4, [fp, #-24]
	ldr r3, [fp, #-12]
	ldr r2, addr_rev_0
	mov r1, #40
	mul r1, r4, r1
	add r2, r2, r1
	lsl r1, r3, #2
	add r1, r2, r1
	mov r1, r1
	ldr r3, [r1]
	ldr r2, addr_cap_0
	mov r1, #40
	mul r1, r5, r1
	add r2, r2, r1
	lsl r1, r3, #2
	add r1, r2, r1
	mov r1, r1
	str r0, [r1]
	ldr r0, [fp, #-4]
	mov r0, r0
	mov sp, fp
	pop {r4, r5, fp, lr}
	bx lr
	b .L263
.L263:
	ldr r0, [fp, #-12]
	add r0, r0, #1
	str r0, [fp, #-12]
	b .L237
.L264:
	b .L263
.L274:
	b .L239
	.global max_flow
	.type max_flow , %function
max_flow:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #16
	lsr sp, sp, #3
	lsl sp, sp, #3
.L275:
	str r0, [fp, #-16]
	str r1, [fp, #-12]
	mov r0, #0
	str r0, [fp, #-8]
	mov r0, #1
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L280
	b .L282
.L279:
	mov r0, #1
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L280
	b .L287
.L280:
	ldr r0, addr_used_0
	mov r0, r0
	mov r0, r0
	mov r1, #0
	mov r2, #10
	bl my_memset
	ldr r3, [fp, #-16]
	ldr r1, [fp, #-12]
	ldr r0, addr_INF_0
	ldr r2, [r0]
	mov r0, r3
	mov r1, r1
	mov r2, r2
	bl dfs
	mov r0, r0
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	beq .L284
	b .L286
.L281:
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L282:
	b .L281
.L284:
	ldr r0, [fp, #-8]
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
	b .L285
.L285:
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-4]
	add r0, r1, r0
	str r0, [fp, #-8]
	b .L279
.L286:
	b .L285
.L287:
	b .L281
	.global main
	.type main , %function
main:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #20
	lsr sp, sp, #3
	lsl sp, sp, #3
.L288:
	bl getint
	mov r0, r0
	str r0, [fp, #-20]
	bl getint
	mov r0, r0
	str r0, [fp, #-16]
	ldr r0, addr_size_0
	mov r0, r0
	mov r0, r0
	mov r1, #0
	mov r2, #10
	bl my_memset
	ldr r0, [fp, #-16]
	cmp r0, #0
	movgt r0, #1
	movle r0, #0
	bgt .L292
	b .L294
.L291:
	ldr r0, [fp, #-16]
	cmp r0, #0
	movgt r0, #1
	movle r0, #0
	bgt .L292
	b .L298
.L292:
	bl getint
	mov r0, r0
	str r0, [fp, #-12]
	bl getint
	mov r0, r0
	str r0, [fp, #-8]
	bl getint
	mov r0, r0
	str r0, [fp, #-4]
	ldr r0, [fp, #-12]
	ldr r1, [fp, #-8]
	ldr r2, [fp, #-4]
	mov r0, r0
	mov r1, r1
	mov r2, r2
	bl add_node
	ldr r0, [fp, #-16]
	sub r0, r0, #1
	str r0, [fp, #-16]
	b .L291
.L293:
	ldr r1, [fp, #-20]
	mov r0, #1
	mov r1, r1
	bl max_flow
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
.L294:
	b .L293
.L298:
	b .L293

.LTORG
addr_INF_0:
	.word INF
addr_size_0:
	.word size
addr_to_0:
	.word to
addr_cap_0:
	.word cap
addr_rev_0:
	.word rev
addr_used_0:
	.word used
