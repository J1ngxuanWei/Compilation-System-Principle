	.cpu cortex-a72
	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
.data
.global n
.size n, 4
n:
	.word 0

	.text
	.global select_sort
	.type select_sort , %function
select_sort:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #24
	lsr sp, sp, #3
	lsl sp, sp, #3
.L79:
	str r0, [fp, #-24]
	str r1, [fp, #-20]
	mov r0, #0
	str r0, [fp, #-16]
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-20]
	sub r0, r0, #1
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L86
	b .L88
.L85:
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-20]
	sub r0, r0, #1
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L86
	b .L113
.L86:
	ldr r0, [fp, #-16]
	str r0, [fp, #-8]
	ldr r0, [fp, #-16]
	add r0, r0, #1
	str r0, [fp, #-12]
	ldr r1, [fp, #-12]
	ldr r0, [fp, #-20]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L90
	b .L92
.L87:
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L88:
	b .L87
.L89:
	ldr r1, [fp, #-12]
	ldr r0, [fp, #-20]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L90
	b .L100
.L90:
	ldr r1, [fp, #-24]
	ldr r0, [fp, #-8]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r2, [r0]
	ldr r1, [fp, #-24]
	ldr r0, [fp, #-12]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r2, r0
	movgt r0, #1
	movle r0, #0
	bgt .L93
	b .L99
.L91:
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-16]
	cmp r1, r0
	movne r0, #1
	moveq r0, #0
	bne .L101
	b .L103
.L92:
	b .L91
.L93:
	ldr r0, [fp, #-12]
	str r0, [fp, #-8]
	b .L94
.L94:
	ldr r0, [fp, #-12]
	add r0, r0, #1
	str r0, [fp, #-12]
	b .L89
.L99:
	b .L94
.L100:
	b .L91
.L101:
	ldr r1, [fp, #-24]
	ldr r0, [fp, #-8]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	str r0, [fp, #-4]
	ldr r1, [fp, #-24]
	ldr r0, [fp, #-16]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r2, [r0]
	ldr r1, [fp, #-24]
	ldr r0, [fp, #-8]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	str r2, [r0]
	ldr r2, [fp, #-4]
	ldr r1, [fp, #-24]
	ldr r0, [fp, #-16]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	str r2, [r0]
	b .L102
.L102:
	ldr r0, [fp, #-16]
	add r0, r0, #1
	str r0, [fp, #-16]
	b .L85
.L103:
	b .L102
.L113:
	b .L87
	.global main
	.type main , %function
main:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #48
	lsr sp, sp, #3
	lsl sp, sp, #3
.L114:
	mov r1, #10
	ldr r0, addr_n_0
	str r1, [r0]
	mvn r0, #47
	add r1, fp, r0
	mov r1, r1
	mov r0, #4
	str r0, [r1]
	mvn r0, #47
	add r0, fp, r0
	add r1, r0, #4
	mov r1, r1
	mov r0, #3
	str r0, [r1]
	mvn r0, #47
	add r0, fp, r0
	add r1, r0, #8
	mov r1, r1
	mov r0, #9
	str r0, [r1]
	mvn r0, #47
	add r0, fp, r0
	add r1, r0, #12
	mov r1, r1
	mov r0, #2
	str r0, [r1]
	mvn r0, #47
	add r0, fp, r0
	add r1, r0, #16
	mov r1, r1
	mov r0, #0
	str r0, [r1]
	mvn r0, #47
	add r0, fp, r0
	add r1, r0, #20
	mov r1, r1
	mov r0, #1
	str r0, [r1]
	mvn r0, #47
	add r0, fp, r0
	add r1, r0, #24
	mov r1, r1
	mov r0, #6
	str r0, [r1]
	mvn r0, #47
	add r0, fp, r0
	add r1, r0, #28
	mov r1, r1
	mov r0, #5
	str r0, [r1]
	mvn r0, #47
	add r0, fp, r0
	add r1, r0, #32
	mov r1, r1
	mov r0, #7
	str r0, [r1]
	mvn r0, #47
	add r0, fp, r0
	add r1, r0, #36
	mov r1, r1
	mov r0, #8
	str r0, [r1]
	mov r0, #0
	str r0, [fp, #-8]
	mvn r0, #47
	add r2, fp, r0
	mov r2, r2
	ldr r0, addr_n_0
	ldr r1, [r0]
	mov r0, r2
	mov r1, r1
	bl select_sort
	mov r0, r0
	str r0, [fp, #-8]
	ldr r1, [fp, #-8]
	ldr r0, addr_n_0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L128
	b .L130
.L127:
	ldr r1, [fp, #-8]
	ldr r0, addr_n_0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L128
	b .L133
.L128:
	ldr r2, [fp, #-8]
	mvn r0, #47
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	mov r0, r0
	bl putint
	mov r0, #10
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	mov r0, r0
	bl putch
	ldr r0, [fp, #-8]
	add r0, r0, #1
	str r0, [fp, #-8]
	b .L127
.L129:
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L130:
	b .L129
.L133:
	b .L129

.LTORG
addr_n_0:
	.word n
