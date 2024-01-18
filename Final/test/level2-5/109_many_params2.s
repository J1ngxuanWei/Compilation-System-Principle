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
	sub sp, sp, #40
	lsr sp, sp, #3
	lsl sp, sp, #3
.L76:
	str r0, [fp, #-40]
	str r1, [fp, #-36]
	str r2, [fp, #-32]
	str r3, [fp, #-28]
	ldr r0, [fp, #8]
	str r0, [fp, #-24]
	ldr r0, [fp, #12]
	str r0, [fp, #-20]
	ldr r0, [fp, #16]
	str r0, [fp, #-16]
	ldr r0, [fp, #20]
	str r0, [fp, #-12]
	ldr r0, [fp, #24]
	str r0, [fp, #-8]
	mov r0, #0
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	cmp r0, #10
	movlt r0, #1
	movge r0, #0
	blt .L88
	b .L90
.L87:
	ldr r0, [fp, #-4]
	cmp r0, #10
	movlt r0, #1
	movge r0, #0
	blt .L88
	b .L93
.L88:
	ldr r3, [fp, #-36]
	ldr r1, [fp, #-40]
	ldr r2, [fp, #-4]
	mov r0, #236
	mul r0, r1, r0
	add r1, r3, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	mov r0, r0
	bl putint
	ldr r0, [fp, #-4]
	add r0, r0, #1
	str r0, [fp, #-4]
	b .L87
.L89:
	mov r0, #10
	bl putch
	ldr r1, [fp, #-28]
	ldr r0, [fp, #-32]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	mov r0, r0
	bl putint
	mov r0, #10
	bl putch
	ldr r0, [fp, #-8]
	cmp r0, #10
	movlt r0, #1
	movge r0, #0
	blt .L97
	b .L99
.L90:
	b .L89
.L93:
	b .L89
.L96:
	ldr r0, [fp, #-8]
	cmp r0, #10
	movlt r0, #1
	movge r0, #0
	blt .L97
	b .L102
.L97:
	ldr r1, [fp, #-12]
	ldr r0, =128875
	mul r2, r1, r0
	ldr r1, =3724
	sdiv r0, r2, r1
	mul r0, r0, r1
	sub r2, r2, r0
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-8]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	str r2, [r0]
	ldr r0, [fp, #-8]
	add r0, r0, #1
	str r0, [fp, #-8]
	ldr r0, [fp, #-12]
	add r0, r0, #7
	str r0, [fp, #-12]
	b .L96
.L98:
	ldr r1, [fp, #-24]
	ldr r0, [fp, #-20]
	add r0, r1, r0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L99:
	b .L98
.L102:
	b .L98
	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, fp, lr}
	mov fp, sp
	sub sp, sp, #188
	sub sp, sp, #28672
	lsr sp, sp, #3
	lsl sp, sp, #3
.L103:
	ldr r0, =-16352
	add r0, fp, r0
	mov r0, r0
	ldr r0, =-16352
	add r0, fp, r0
	mov r1, #0
	ldr r2, =16348
	mov r2, r2
	bl memset
	ldr r0, =-28860
	add r0, fp, r0
	mov r0, r0
	ldr r0, =-28860
	add r0, fp, r0
	mov r1, #0
	ldr r2, =12508
	mov r2, r2
	bl memset
	ldr r0, =-16352
	add r1, fp, r0
	ldr r0, =4560
	add r1, r1, r0
	mov r1, r1
	mov r0, #6
	str r0, [r1]
	ldr r0, =-16352
	add r1, fp, r0
	ldr r0, =4568
	add r1, r1, r0
	mov r1, r1
	mov r0, #7
	str r0, [r1]
	ldr r0, =-16352
	add r1, fp, r0
	ldr r0, =4572
	add r1, r1, r0
	mov r1, r1
	mov r0, #4
	str r0, [r1]
	ldr r0, =-16352
	add r1, fp, r0
	ldr r0, =4584
	add r1, r1, r0
	mov r1, r1
	mov r0, #9
	str r0, [r1]
	ldr r0, =-16352
	add r1, fp, r0
	ldr r0, =4600
	add r1, r1, r0
	mov r1, r1
	mov r0, #11
	str r0, [r1]
	ldr r0, =-28860
	add r1, fp, r0
	ldr r0, =1420
	add r1, r1, r0
	mov r1, r1
	mov r0, #1
	str r0, [r1]
	ldr r0, =-28860
	add r0, fp, r0
	add r1, r0, #1424
	mov r1, r1
	mov r0, #2
	str r0, [r1]
	ldr r0, =-28860
	add r1, fp, r0
	ldr r0, =1428
	add r1, r1, r0
	mov r1, r1
	mov r0, #3
	str r0, [r1]
	ldr r0, =-28860
	add r1, fp, r0
	ldr r0, =1452
	add r1, r1, r0
	mov r1, r1
	mov r0, #9
	str r0, [r1]
	ldr r0, =-16352
	add r1, fp, r0
	ldr r0, =4560
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	ldr r1, =-28860
	add r1, fp, r1
	mov r1, r1
	ldr r2, =-16352
	add r3, fp, r2
	ldr r2, =4568
	add r2, r3, r2
	mov r2, r2
	ldr r2, [r2]
	ldr r3, =-16352
	add r4, fp, r3
	ldr r3, =4556
	add r3, r4, r3
	mov r3, r3
	ldr r4, =-28860
	add r5, fp, r4
	ldr r4, =1428
	add r4, r5, r4
	mov r4, r4
	ldr r7, [r4]
	ldr r4, =-28860
	add r5, fp, r4
	ldr r4, =1416
	add r4, r5, r4
	mov r4, r4
	ldr r6, [r4]
	ldr r4, =-28860
	add r5, fp, r4
	ldr r4, =1416
	add r5, r5, r4
	mov r5, r5
	ldr r4, =-28860
	add r8, fp, r4
	ldr r4, =8040
	add r4, r8, r4
	mov r4, r4
	ldr r4, [r4]
	ldr r8, =-28860
	add r9, fp, r8
	ldr r8, =12108
	add r8, r9, r8
	mov r8, r8
	ldr r8, [r8]
	mov r0, r0
	mov r1, r1
	mov r2, r2
	mov r3, r3
	push {r8}
	push {r4}
	push {r5}
	push {r6}
	push {r7}
	bl func
	add sp, sp, #20
	mov r1, r0
	mov r0, #3
	mul r0, r1, r0
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	cmp r0, #0
	movge r0, #1
	movlt r0, #0
	bge .L125
	b .L127
.L124:
	ldr r0, [fp, #-4]
	cmp r0, #0
	movge r0, #1
	movlt r0, #0
	bge .L125
	b .L129
.L125:
	ldr r2, [fp, #-4]
	ldr r0, =-28860
	add r1, fp, r0
	lsl r0, r2, #2
	add r1, r1, r0
	ldr r0, =1416
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	mov r0, r0
	bl putint
	mov r0, #32
	bl putch
	ldr r0, [fp, #-4]
	sub r0, r0, #1
	str r0, [fp, #-4]
	b .L124
.L126:
	mov r0, #10
	bl putch
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L127:
	b .L126
.L129:
	b .L126

.LTORG
