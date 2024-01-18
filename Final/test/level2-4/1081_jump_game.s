	.cpu cortex-a72
	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm

	.text
	.global canJump
	.type canJump , %function
canJump:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #56
	lsr sp, sp, #3
	lsl sp, sp, #3
.L82:
	str r0, [fp, #-16]
	str r1, [fp, #-12]
	ldr r0, [fp, #-12]
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	beq .L85
	b .L87
.L85:
	mov r0, #1
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
	b .L86
.L86:
	ldr r0, [fp, #-16]
	mov r0, r0
	ldr r1, [r0]
	ldr r0, [fp, #-12]
	sub r0, r0, #2
	cmp r1, r0
	movgt r0, #1
	movle r0, #0
	bgt .L88
	b .L92
.L87:
	b .L86
.L88:
	mov r0, #1
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
	b .L89
.L89:
	mov r0, #0
	str r0, [fp, #-8]
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-12]
	sub r0, r0, #1
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L96
	b .L98
.L92:
	b .L89
.L95:
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-12]
	sub r0, r0, #1
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L96
	b .L100
.L96:
	ldr r2, [fp, #-8]
	mvn r0, #55
	add r1, fp, r0
	lsl r0, r2, #2
	add r1, r1, r0
	mov r1, r1
	mov r0, #0
	str r0, [r1]
	ldr r0, [fp, #-8]
	add r0, r0, #1
	str r0, [fp, #-8]
	b .L95
.L97:
	ldr r0, [fp, #-12]
	sub r2, r0, #1
	mvn r0, #55
	add r1, fp, r0
	lsl r0, r2, #2
	add r1, r1, r0
	mov r1, r1
	mov r0, #1
	str r0, [r1]
	ldr r0, [fp, #-12]
	sub r0, r0, #2
	str r0, [fp, #-8]
	ldr r1, [fp, #-8]
	mov r0, #0
	sub r0, r0, #1
	cmp r1, r0
	movgt r0, #1
	movle r0, #0
	bgt .L103
	b .L105
.L98:
	b .L97
.L100:
	b .L97
.L102:
	ldr r1, [fp, #-8]
	mov r0, #0
	sub r0, r0, #1
	cmp r1, r0
	movgt r0, #1
	movle r0, #0
	bgt .L103
	b .L125
.L103:
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-8]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r2, [r0]
	ldr r0, [fp, #-12]
	sub r1, r0, #1
	ldr r0, [fp, #-8]
	sub r0, r1, r0
	cmp r2, r0
	movlt r0, #1
	movge r0, #0
	blt .L107
	b .L112
.L104:
	mvn r0, #55
	add r0, fp, r0
	mov r0, r0
	ldr r0, [r0]
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L105:
	b .L104
.L107:
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-8]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	str r0, [fp, #-4]
	b .L109
.L108:
	ldr r0, [fp, #-12]
	sub r1, r0, #1
	ldr r0, [fp, #-8]
	sub r0, r1, r0
	str r0, [fp, #-4]
	b .L109
.L109:
	ldr r1, [fp, #-4]
	mov r0, #0
	sub r0, r0, #1
	cmp r1, r0
	movgt r0, #1
	movle r0, #0
	bgt .L116
	b .L118
.L112:
	b .L108
.L115:
	ldr r1, [fp, #-4]
	mov r0, #0
	sub r0, r0, #1
	cmp r1, r0
	movgt r0, #1
	movle r0, #0
	bgt .L116
	b .L124
.L116:
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-4]
	add r2, r1, r0
	mvn r0, #55
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L119
	b .L122
.L117:
	ldr r0, [fp, #-8]
	sub r0, r0, #1
	str r0, [fp, #-8]
	b .L102
.L118:
	b .L117
.L119:
	ldr r2, [fp, #-8]
	mvn r0, #55
	add r1, fp, r0
	lsl r0, r2, #2
	add r1, r1, r0
	mov r1, r1
	mov r0, #1
	str r0, [r1]
	b .L120
.L120:
	ldr r0, [fp, #-4]
	sub r0, r0, #1
	str r0, [fp, #-4]
	b .L115
.L122:
	b .L120
.L124:
	b .L117
.L125:
	b .L104
	.global main
	.type main , %function
main:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #44
	lsr sp, sp, #3
	lsl sp, sp, #3
.L127:
	mvn r0, #43
	add r1, fp, r0
	mov r1, r1
	mov r0, #3
	str r0, [r1]
	mvn r0, #43
	add r0, fp, r0
	add r1, r0, #4
	mov r1, r1
	mov r0, #3
	str r0, [r1]
	mvn r0, #43
	add r0, fp, r0
	add r1, r0, #8
	mov r1, r1
	mov r0, #9
	str r0, [r1]
	mvn r0, #43
	add r0, fp, r0
	add r1, r0, #12
	mov r1, r1
	mov r0, #0
	str r0, [r1]
	mvn r0, #43
	add r0, fp, r0
	add r1, r0, #16
	mov r1, r1
	mov r0, #0
	str r0, [r1]
	mvn r0, #43
	add r0, fp, r0
	add r1, r0, #20
	mov r1, r1
	mov r0, #1
	str r0, [r1]
	mvn r0, #43
	add r0, fp, r0
	add r1, r0, #24
	mov r1, r1
	mov r0, #1
	str r0, [r1]
	mvn r0, #43
	add r0, fp, r0
	add r1, r0, #28
	mov r1, r1
	mov r0, #5
	str r0, [r1]
	mvn r0, #43
	add r0, fp, r0
	add r1, r0, #32
	mov r1, r1
	mov r0, #7
	str r0, [r1]
	mvn r0, #43
	add r0, fp, r0
	add r1, r0, #36
	mov r1, r1
	mov r0, #8
	str r0, [r1]
	mov r0, #10
	str r0, [fp, #-4]
	mvn r0, #43
	add r0, fp, r0
	mov r0, r0
	ldr r1, [fp, #-4]
	mov r0, r0
	mov r1, r1
	bl canJump
	mov r0, r0
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr

.LTORG
