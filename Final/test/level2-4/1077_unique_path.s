	.cpu cortex-a72
	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm

	.text
	.global uniquePaths
	.type uniquePaths , %function
uniquePaths:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #52
	lsr sp, sp, #3
	lsl sp, sp, #3
.L83:
	str r0, [fp, #-16]
	str r1, [fp, #-12]
	ldr r0, [fp, #-16]
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	beq .L86
	b .L89
.L86:
	mov r0, #1
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
	b .L87
.L87:
	mov r0, #0
	str r0, [fp, #-8]
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-16]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L95
	b .L97
.L88:
	ldr r0, [fp, #-12]
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	beq .L86
	b .L90
.L89:
	b .L88
.L90:
	b .L87
.L94:
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-16]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L95
	b .L99
.L95:
	ldr r1, [fp, #-8]
	mov r0, #3
	mul r1, r1, r0
	ldr r0, [fp, #-12]
	add r0, r1, r0
	sub r2, r0, #1
	mvn r0, #51
	add r1, fp, r0
	lsl r0, r2, #2
	add r1, r1, r0
	mov r1, r1
	mov r0, #1
	str r0, [r1]
	ldr r0, [fp, #-8]
	add r0, r0, #1
	str r0, [fp, #-8]
	b .L94
.L96:
	mov r0, #0
	str r0, [fp, #-8]
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-12]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L101
	b .L103
.L97:
	b .L96
.L99:
	b .L96
.L100:
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-12]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L101
	b .L105
.L101:
	ldr r0, [fp, #-16]
	sub r1, r0, #1
	mov r0, #3
	mul r1, r1, r0
	ldr r0, [fp, #-8]
	add r2, r1, r0
	mvn r0, #51
	add r1, fp, r0
	lsl r0, r2, #2
	add r1, r1, r0
	mov r1, r1
	mov r0, #1
	str r0, [r1]
	ldr r0, [fp, #-8]
	add r0, r0, #1
	str r0, [fp, #-8]
	b .L100
.L102:
	ldr r0, [fp, #-16]
	sub r0, r0, #2
	str r0, [fp, #-8]
	ldr r1, [fp, #-8]
	mov r0, #0
	sub r0, r0, #1
	cmp r1, r0
	movgt r0, #1
	movle r0, #0
	bgt .L107
	b .L109
.L103:
	b .L102
.L105:
	b .L102
.L106:
	ldr r1, [fp, #-8]
	mov r0, #0
	sub r0, r0, #1
	cmp r1, r0
	movgt r0, #1
	movle r0, #0
	bgt .L107
	b .L118
.L107:
	ldr r0, [fp, #-12]
	sub r0, r0, #2
	str r0, [fp, #-4]
	ldr r1, [fp, #-4]
	mov r0, #0
	sub r0, r0, #1
	cmp r1, r0
	movgt r0, #1
	movle r0, #0
	bgt .L111
	b .L113
.L108:
	mvn r0, #51
	add r0, fp, r0
	mov r0, r0
	ldr r0, [r0]
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L109:
	b .L108
.L110:
	ldr r1, [fp, #-4]
	mov r0, #0
	sub r0, r0, #1
	cmp r1, r0
	movgt r0, #1
	movle r0, #0
	bgt .L111
	b .L117
.L111:
	ldr r0, [fp, #-8]
	add r1, r0, #1
	mov r0, #3
	mul r1, r1, r0
	ldr r0, [fp, #-4]
	add r2, r1, r0
	mvn r0, #51
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r3, [r0]
	ldr r1, [fp, #-8]
	mov r0, #3
	mul r1, r1, r0
	ldr r0, [fp, #-4]
	add r0, r1, r0
	add r2, r0, #1
	mvn r0, #51
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	add r3, r3, r0
	ldr r1, [fp, #-8]
	mov r0, #3
	mul r1, r1, r0
	ldr r0, [fp, #-4]
	add r2, r1, r0
	mvn r0, #51
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	str r3, [r0]
	ldr r0, [fp, #-4]
	sub r0, r0, #1
	str r0, [fp, #-4]
	b .L110
.L112:
	ldr r0, [fp, #-8]
	sub r0, r0, #1
	str r0, [fp, #-8]
	b .L106
.L113:
	b .L112
.L117:
	b .L112
.L118:
	b .L108
	.global main
	.type main , %function
main:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #8
	lsr sp, sp, #3
	lsl sp, sp, #3
.L120:
	mov r0, #3
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	ldr r1, [fp, #-4]
	mov r0, r0
	mov r1, r1
	bl uniquePaths
	mov r0, r0
	str r0, [fp, #-8]
	ldr r0, [fp, #-8]
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr

.LTORG
