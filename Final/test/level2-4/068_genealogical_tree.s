	.cpu cortex-a72
	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
.data
.comm map, 400
.comm indegree, 40
.comm queue, 40

	.text
	.global topo
	.type topo , %function
topo:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #20
	lsr sp, sp, #3
	lsl sp, sp, #3
.L88:
	str r0, [fp, #-20]
	mov r0, #0
	str r0, [fp, #-16]
	mov r0, #0
	str r0, [fp, #-12]
	mov r0, #1
	str r0, [fp, #-8]
	mov r0, #1
	str r0, [fp, #-4]
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-20]
	cmp r1, r0
	movle r0, #1
	movgt r0, #0
	ble .L95
	b .L97
.L94:
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-20]
	cmp r1, r0
	movle r0, #1
	movgt r0, #0
	ble .L95
	b .L121
.L95:
	mov r0, #1
	str r0, [fp, #-4]
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-20]
	cmp r1, r0
	movle r0, #1
	movgt r0, #0
	ble .L99
	b .L101
.L96:
	mov r0, #0
	str r0, [fp, #-8]
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-20]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L123
	b .L125
.L97:
	b .L96
.L98:
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-20]
	cmp r1, r0
	movle r0, #1
	movgt r0, #0
	ble .L99
	b .L107
.L99:
	ldr r0, [fp, #-4]
	ldr r1, addr_indegree_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	beq .L102
	b .L105
.L100:
	ldr r2, [fp, #-16]
	ldr r0, [fp, #-12]
	ldr r1, addr_queue_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	str r2, [r0]
	ldr r0, [fp, #-12]
	add r0, r0, #1
	str r0, [fp, #-12]
	mov r0, #0
	sub r2, r0, #1
	ldr r0, [fp, #-16]
	ldr r1, addr_indegree_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	str r2, [r0]
	mov r0, #1
	str r0, [fp, #-4]
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-20]
	cmp r1, r0
	movle r0, #1
	movgt r0, #0
	ble .L111
	b .L113
.L101:
	b .L100
.L102:
	ldr r0, [fp, #-4]
	str r0, [fp, #-16]
	b .L100
.L103:
	ldr r0, [fp, #-4]
	add r0, r0, #1
	str r0, [fp, #-4]
	b .L98
.L105:
	b .L103
.L107:
	b .L100
.L110:
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-20]
	cmp r1, r0
	movle r0, #1
	movgt r0, #0
	ble .L111
	b .L120
.L111:
	ldr r3, [fp, #-16]
	ldr r2, [fp, #-4]
	ldr r1, addr_map_0
	mov r0, #40
	mul r0, r3, r0
	add r1, r1, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L114
	b .L117
.L112:
	ldr r0, [fp, #-8]
	add r0, r0, #1
	str r0, [fp, #-8]
	b .L94
.L113:
	b .L112
.L114:
	ldr r0, [fp, #-4]
	ldr r1, addr_indegree_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	sub r2, r0, #1
	ldr r0, [fp, #-4]
	ldr r1, addr_indegree_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	str r2, [r0]
	b .L115
.L115:
	ldr r0, [fp, #-4]
	add r0, r0, #1
	str r0, [fp, #-4]
	b .L110
.L117:
	b .L115
.L120:
	b .L112
.L121:
	b .L96
.L122:
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-20]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L123
	b .L127
.L123:
	ldr r0, [fp, #-8]
	ldr r1, addr_queue_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	mov r0, r0
	bl putint
	mov r0, #10
	bl putch
	ldr r0, [fp, #-8]
	add r0, r0, #1
	str r0, [fp, #-8]
	b .L122
.L124:
	mov sp, fp
	pop {fp, lr}
	bx lr
.L125:
	b .L124
.L127:
	b .L124
	.global main
	.type main , %function
main:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #12
	lsr sp, sp, #3
	lsl sp, sp, #3
.L128:
	mov r0, #1
	str r0, [fp, #-4]
	mov r0, #5
	str r0, [fp, #-12]
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-12]
	cmp r1, r0
	movle r0, #1
	movgt r0, #0
	ble .L133
	b .L135
.L132:
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-12]
	cmp r1, r0
	movle r0, #1
	movgt r0, #0
	ble .L133
	b .L144
.L133:
	bl getint
	mov r0, r0
	str r0, [fp, #-8]
	ldr r0, [fp, #-8]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L137
	b .L139
.L134:
	ldr r0, [fp, #-12]
	mov r0, r0
	bl topo
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L135:
	b .L134
.L136:
	ldr r0, [fp, #-8]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L137
	b .L143
.L137:
	ldr r3, [fp, #-4]
	ldr r2, [fp, #-8]
	ldr r1, addr_map_0
	mov r0, #40
	mul r0, r3, r0
	add r1, r1, r0
	lsl r0, r2, #2
	add r1, r1, r0
	mov r1, r1
	mov r0, #1
	str r0, [r1]
	ldr r0, [fp, #-8]
	ldr r1, addr_indegree_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	add r2, r0, #1
	ldr r0, [fp, #-8]
	ldr r1, addr_indegree_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	str r2, [r0]
	bl getint
	mov r0, r0
	str r0, [fp, #-8]
	b .L136
.L138:
	ldr r0, [fp, #-4]
	add r0, r0, #1
	str r0, [fp, #-4]
	b .L132
.L139:
	b .L138
.L143:
	b .L138
.L144:
	b .L134

.LTORG
addr_map_0:
	.word map
addr_indegree_0:
	.word indegree
addr_queue_0:
	.word queue
