	.cpu cortex-a72
	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
.data
.comm ans, 200
.global sum
.size sum, 4
sum:
	.word 0
.global n
.size n, 4
n:
	.word 0
.comm row, 200
.comm line1, 200
.comm line2, 400

	.text
	.global printans
	.type printans , %function
printans:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #4
	lsr sp, sp, #3
	lsl sp, sp, #3
.L89:
	ldr r0, addr_sum_0
	ldr r0, [r0]
	add r1, r0, #1
	ldr r0, addr_sum_0
	str r1, [r0]
	mov r0, #1
	str r0, [fp, #-4]
	ldr r1, [fp, #-4]
	ldr r0, addr_n_0
	ldr r0, [r0]
	cmp r1, r0
	movle r0, #1
	movgt r0, #0
	ble .L92
	b .L94
.L91:
	ldr r1, [fp, #-4]
	ldr r0, addr_n_0
	ldr r0, [r0]
	cmp r1, r0
	movle r0, #1
	movgt r0, #0
	ble .L92
	b .L100
.L92:
	ldr r0, [fp, #-4]
	ldr r1, addr_ans_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	mov r0, r0
	bl putint
	ldr r1, [fp, #-4]
	ldr r0, addr_n_0
	ldr r0, [r0]
	cmp r1, r0
	moveq r0, #1
	movne r0, #0
	beq .L96
	b .L99
.L93:
	mov sp, fp
	pop {fp, lr}
	bx lr
.L94:
	b .L93
.L96:
	mov r0, #10
	bl putch
	mov sp, fp
	pop {fp, lr}
	bx lr
	b .L98
.L97:
	mov r0, #32
	bl putch
	b .L98
.L98:
	ldr r0, [fp, #-4]
	add r0, r0, #1
	str r0, [fp, #-4]
	b .L91
.L99:
	b .L97
.L100:
	b .L93
	.global f
	.type f , %function
f:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #8
	lsr sp, sp, #3
	lsl sp, sp, #3
.L101:
	str r0, [fp, #-8]
	mov r0, #1
	str r0, [fp, #-4]
	ldr r1, [fp, #-4]
	ldr r0, addr_n_0
	ldr r0, [r0]
	cmp r1, r0
	movle r0, #1
	movgt r0, #0
	ble .L105
	b .L107
.L104:
	ldr r1, [fp, #-4]
	ldr r0, addr_n_0
	ldr r0, [r0]
	cmp r1, r0
	movle r0, #1
	movgt r0, #0
	ble .L105
	b .L128
.L105:
	ldr r0, [fp, #-4]
	ldr r1, addr_row_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r0, #1
	movne r0, #1
	moveq r0, #0
	bne .L111
	b .L113
.L106:
	mov sp, fp
	pop {fp, lr}
	bx lr
.L107:
	b .L106
.L108:
	ldr r2, [fp, #-4]
	ldr r0, [fp, #-8]
	ldr r1, addr_ans_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	str r2, [r0]
	ldr r1, [fp, #-8]
	ldr r0, addr_n_0
	ldr r0, [r0]
	cmp r1, r0
	moveq r0, #1
	movne r0, #0
	beq .L119
	b .L121
.L109:
	ldr r0, [fp, #-4]
	add r0, r0, #1
	str r0, [fp, #-4]
	b .L104
.L110:
	ldr r0, addr_n_0
	ldr r1, [r0]
	ldr r0, [fp, #-8]
	add r1, r1, r0
	ldr r0, [fp, #-4]
	sub r0, r1, r0
	ldr r1, addr_line2_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	beq .L108
	b .L117
.L111:
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-4]
	add r0, r1, r0
	ldr r1, addr_line1_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	beq .L110
	b .L115
.L113:
	b .L109
.L115:
	b .L109
.L117:
	b .L109
.L119:
	bl printans
	b .L120
.L120:
	ldr r0, [fp, #-4]
	ldr r1, addr_row_0
	lsl r0, r0, #2
	add r1, r1, r0
	mov r1, r1
	mov r0, #1
	str r0, [r1]
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-4]
	add r0, r1, r0
	ldr r1, addr_line1_0
	lsl r0, r0, #2
	add r1, r1, r0
	mov r1, r1
	mov r0, #1
	str r0, [r1]
	ldr r0, addr_n_0
	ldr r1, [r0]
	ldr r0, [fp, #-8]
	add r1, r1, r0
	ldr r0, [fp, #-4]
	sub r0, r1, r0
	ldr r1, addr_line2_0
	lsl r0, r0, #2
	add r1, r1, r0
	mov r1, r1
	mov r0, #1
	str r0, [r1]
	ldr r0, [fp, #-8]
	add r0, r0, #1
	mov r0, r0
	bl f
	ldr r0, [fp, #-4]
	ldr r1, addr_row_0
	lsl r0, r0, #2
	add r1, r1, r0
	mov r1, r1
	mov r0, #0
	str r0, [r1]
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-4]
	add r0, r1, r0
	ldr r1, addr_line1_0
	lsl r0, r0, #2
	add r1, r1, r0
	mov r1, r1
	mov r0, #0
	str r0, [r1]
	ldr r0, addr_n_0
	ldr r1, [r0]
	ldr r0, [fp, #-8]
	add r1, r1, r0
	ldr r0, [fp, #-4]
	sub r0, r1, r0
	ldr r1, addr_line2_0
	lsl r0, r0, #2
	add r1, r1, r0
	mov r1, r1
	mov r0, #0
	str r0, [r1]
	b .L109
.L121:
	b .L120
.L128:
	b .L106
	.global main
	.type main , %function
main:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #4
	lsr sp, sp, #3
	lsl sp, sp, #3
.L129:
	bl getint
	mov r0, r0
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	cmp r0, #0
	movgt r0, #1
	movle r0, #0
	bgt .L132
	b .L134
.L131:
	ldr r0, [fp, #-4]
	cmp r0, #0
	movgt r0, #1
	movle r0, #0
	bgt .L132
	b .L135
.L132:
	bl getint
	mov r1, r0
	ldr r0, addr_n_0
	str r1, [r0]
	mov r0, #1
	bl f
	ldr r0, [fp, #-4]
	sub r0, r0, #1
	str r0, [fp, #-4]
	b .L131
.L133:
	ldr r0, addr_sum_0
	ldr r0, [r0]
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L134:
	b .L133
.L135:
	b .L133

.LTORG
addr_ans_0:
	.word ans
addr_sum_0:
	.word sum
addr_n_0:
	.word n
addr_row_0:
	.word row
addr_line1_0:
	.word line1
addr_line2_0:
	.word line2
