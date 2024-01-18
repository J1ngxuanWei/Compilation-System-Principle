	.cpu cortex-a72
	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
.data
.global g
.size g, 4
g:
	.word 0

	.text
	.global func
	.type func , %function
func:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #4
	lsr sp, sp, #3
	lsl sp, sp, #3
.L57:
	str r0, [fp, #-4]
	ldr r0, addr_g_0
	ldr r1, [r0]
	ldr r0, [fp, #-4]
	add r1, r1, r0
	ldr r0, addr_g_0
	str r1, [r0]
	ldr r0, addr_g_0
	ldr r0, [r0]
	mov r0, r0
	bl putint
	ldr r0, addr_g_0
	ldr r0, [r0]
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
	.global main
	.type main , %function
main:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #4
	lsr sp, sp, #3
	lsl sp, sp, #3
.L59:
	bl getint
	mov r0, r0
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	cmp r0, #10
	movgt r0, #1
	movle r0, #0
	bgt .L64
	b .L65
.L61:
	mov r0, #1
	str r0, [fp, #-4]
	b .L63
.L62:
	mov r0, #0
	str r0, [fp, #-4]
	b .L63
.L63:
	bl getint
	mov r0, r0
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	cmp r0, #11
	movgt r0, #1
	movle r0, #0
	bgt .L70
	b .L71
.L64:
	ldr r0, [fp, #-4]
	mov r0, r0
	bl func
	mov r0, r0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L61
	b .L66
.L65:
	b .L62
.L66:
	b .L62
.L67:
	mov r0, #1
	str r0, [fp, #-4]
	b .L69
.L68:
	mov r0, #0
	str r0, [fp, #-4]
	b .L69
.L69:
	bl getint
	mov r0, r0
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	cmp r0, #99
	movle r0, #1
	movgt r0, #0
	ble .L73
	b .L77
.L70:
	ldr r0, [fp, #-4]
	mov r0, r0
	bl func
	mov r0, r0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L67
	b .L72
.L71:
	b .L68
.L72:
	b .L68
.L73:
	mov r0, #1
	str r0, [fp, #-4]
	b .L75
.L74:
	mov r0, #0
	str r0, [fp, #-4]
	b .L75
.L75:
	bl getint
	mov r0, r0
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	cmp r0, #100
	movle r0, #1
	movgt r0, #0
	ble .L79
	b .L83
.L76:
	ldr r0, [fp, #-4]
	mov r0, r0
	bl func
	mov r0, r0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L73
	b .L78
.L77:
	b .L76
.L78:
	b .L74
.L79:
	mov r0, #1
	str r0, [fp, #-4]
	b .L81
.L80:
	mov r0, #0
	str r0, [fp, #-4]
	b .L81
.L81:
	mov r0, #99
	bl func
	mov r0, r0
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	beq .L88
	b .L89
.L82:
	ldr r0, [fp, #-4]
	mov r0, r0
	bl func
	mov r0, r0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L79
	b .L84
.L83:
	b .L82
.L84:
	b .L80
.L85:
	mov r0, #1
	str r0, [fp, #-4]
	b .L87
.L86:
	mov r0, #0
	str r0, [fp, #-4]
	b .L87
.L87:
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L88:
	mov r0, #100
	bl func
	mov r0, r0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L85
	b .L90
.L89:
	b .L86
.L90:
	b .L86

.LTORG
addr_g_0:
	.word g
