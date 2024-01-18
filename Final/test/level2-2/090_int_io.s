	.cpu cortex-a72
	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
.section .rodata
.global ascii_0
.size ascii_0, 4
ascii_0:
	.word 48

	.text
	.global my_getint
	.type my_getint , %function
my_getint:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #8
	lsr sp, sp, #3
	lsl sp, sp, #3
.L66:
	mov r0, #0
	str r0, [fp, #-8]
	mov r0, #1
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L70
	b .L72
.L69:
	mov r0, #1
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L70
	b .L81
.L70:
	bl getch
	mov r1, r0
	ldr r0, addr_ascii_0_0
	ldr r0, [r0]
	sub r0, r1, r0
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	cmp r0, #0
	movlt r0, #1
	movge r0, #0
	blt .L73
	b .L77
.L71:
	ldr r0, [fp, #-4]
	str r0, [fp, #-8]
	mov r0, #1
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L83
	b .L85
.L72:
	b .L71
.L73:
	b .L69
.L74:
	b .L71
.L76:
	ldr r0, [fp, #-4]
	cmp r0, #9
	movgt r0, #1
	movle r0, #0
	bgt .L73
	b .L78
.L77:
	b .L76
.L78:
	b .L74
.L81:
	b .L71
.L82:
	mov r0, #1
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L83
	b .L93
.L83:
	bl getch
	mov r1, r0
	ldr r0, addr_ascii_0_0
	ldr r0, [r0]
	sub r0, r1, r0
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	cmp r0, #0
	movge r0, #1
	movlt r0, #0
	bge .L89
	b .L90
.L84:
	ldr r0, [fp, #-8]
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L85:
	b .L84
.L86:
	ldr r1, [fp, #-8]
	mov r0, #10
	mul r1, r1, r0
	ldr r0, [fp, #-4]
	add r0, r1, r0
	str r0, [fp, #-8]
	b .L88
.L87:
	b .L84
.L88:
	b .L82
.L89:
	ldr r0, [fp, #-4]
	cmp r0, #9
	movle r0, #1
	movgt r0, #0
	ble .L86
	b .L91
.L90:
	b .L87
.L91:
	b .L87
.L93:
	b .L84
	.global my_putint
	.type my_putint , %function
my_putint:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #72
	lsr sp, sp, #3
	lsl sp, sp, #3
.L94:
	str r0, [fp, #-8]
	mov r0, #0
	str r0, [fp, #-4]
	ldr r0, [fp, #-8]
	cmp r0, #0
	movgt r0, #1
	movle r0, #0
	bgt .L99
	b .L101
.L98:
	ldr r0, [fp, #-8]
	cmp r0, #0
	movgt r0, #1
	movle r0, #0
	bgt .L99
	b .L103
.L99:
	ldr r2, [fp, #-8]
	mov r1, #10
	sdiv r0, r2, r1
	mul r0, r0, r1
	sub r1, r2, r0
	ldr r0, addr_ascii_0_0
	ldr r0, [r0]
	add r3, r1, r0
	ldr r2, [fp, #-4]
	mvn r0, #71
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	str r3, [r0]
	ldr r1, [fp, #-8]
	mov r0, #10
	sdiv r0, r1, r0
	str r0, [fp, #-8]
	ldr r0, [fp, #-4]
	add r0, r0, #1
	str r0, [fp, #-4]
	b .L98
.L100:
	ldr r0, [fp, #-4]
	cmp r0, #0
	movgt r0, #1
	movle r0, #0
	bgt .L105
	b .L107
.L101:
	b .L100
.L103:
	b .L100
.L104:
	ldr r0, [fp, #-4]
	cmp r0, #0
	movgt r0, #1
	movle r0, #0
	bgt .L105
	b .L109
.L105:
	ldr r0, [fp, #-4]
	sub r0, r0, #1
	str r0, [fp, #-4]
	ldr r2, [fp, #-4]
	mvn r0, #71
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	mov r0, r0
	bl putch
	b .L104
.L106:
	mov sp, fp
	pop {fp, lr}
	bx lr
.L107:
	b .L106
.L109:
	b .L106
	.global main
	.type main , %function
main:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #8
	lsr sp, sp, #3
	lsl sp, sp, #3
.L110:
	bl my_getint
	mov r0, r0
	str r0, [fp, #-8]
	ldr r0, [fp, #-8]
	cmp r0, #0
	movgt r0, #1
	movle r0, #0
	bgt .L113
	b .L115
.L112:
	ldr r0, [fp, #-8]
	cmp r0, #0
	movgt r0, #1
	movle r0, #0
	bgt .L113
	b .L117
.L113:
	bl my_getint
	mov r0, r0
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	mov r0, r0
	bl my_putint
	mov r0, #10
	bl putch
	ldr r0, [fp, #-8]
	sub r0, r0, #1
	str r0, [fp, #-8]
	b .L112
.L114:
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L115:
	b .L114
.L117:
	b .L114

.LTORG
addr_ascii_0_0:
	.word ascii_0
