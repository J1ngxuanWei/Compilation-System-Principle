	.cpu cortex-a72
	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm

	.text
	.global func
	.type func , %function
func:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #4
	lsr sp, sp, #3
	lsl sp, sp, #3
.L27:
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	cmp r0, #50
	movle r0, #1
	movgt r0, #0
	ble .L29
	b .L32
.L29:
	ldr r0, [fp, #-4]
	mov r0, r0
	bl putint
	mov r0, #1
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
	b .L31
.L30:
	ldr r0, [fp, #-4]
	mov r0, r0
	bl putint
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
	b .L31
.L31:
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L32:
	b .L30
	.global main
	.type main , %function
main:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #4
	lsr sp, sp, #3
	lsl sp, sp, #3
.L33:
	mov r0, #0
	bl func
	mov r0, r0
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	beq .L35
	b .L39
.L35:
	mov r0, #0
	str r0, [fp, #-4]
	b .L37
.L36:
	mov r0, #1
	str r0, [fp, #-4]
	b .L37
.L37:
	mov r0, #50
	bl func
	mov r0, r0
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	beq .L47
	b .L48
.L38:
	mov r0, #50
	bl func
	mov r0, r0
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	beq .L40
	b .L41
.L39:
	b .L38
.L40:
	mov r0, #100
	bl func
	mov r0, r0
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	beq .L35
	b .L42
.L41:
	b .L36
.L42:
	b .L36
.L43:
	mov r0, #0
	str r0, [fp, #-4]
	b .L45
.L44:
	mov r0, #1
	str r0, [fp, #-4]
	b .L45
.L45:
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L46:
	mov r0, #1
	bl func
	mov r0, r0
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	beq .L43
	b .L50
.L47:
	mov r0, #40
	bl func
	mov r0, r0
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	beq .L43
	b .L49
.L48:
	b .L46
.L49:
	b .L46
.L50:
	b .L44

.LTORG
