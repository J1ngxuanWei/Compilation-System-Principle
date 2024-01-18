	.cpu cortex-a72
	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm

	.text
	.global relu_reg
	.type relu_reg , %function
relu_reg:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #4
	lsr sp, sp, #3
	lsl sp, sp, #3
.L933:
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	cmp r0, #127
	movgt r0, #1
	movle r0, #0
	bgt .L935
	b .L937
.L935:
	mov r0, #127
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
	b .L936
.L936:
	ldr r0, [fp, #-4]
	cmp r0, #0
	movlt r0, #1
	movge r0, #0
	blt .L938
	b .L940
.L937:
	b .L936
.L938:
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
	b .L939
.L939:
	ldr r0, [fp, #-4]
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L940:
	b .L939
	.global model
	.type model , %function
model:
	push {r4, fp, lr}
	mov fp, sp
	sub sp, sp, #4
	lsr sp, sp, #3
	lsl sp, sp, #3
.L941:
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	mov r0, r0
	ldr r1, [r0]
	mov r0, #85
	mul r2, r1, r0
	ldr r0, [fp, #-4]
	add r0, r0, #4
	mov r0, r0
	ldr r1, [r0]
	mov r0, #23
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #8
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #82
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #12
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #103
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #16
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #123
	mul r0, r1, r0
	add r1, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #20
	mov r0, r0
	ldr r0, [r0]
	lsl r0, r0, #6
	add r2, r1, r0
	ldr r0, [fp, #-4]
	add r0, r0, #24
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #120
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #28
	mov r0, r0
	ldr r1, [r0]
	mov r0, #50
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #32
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #59
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #36
	mov r0, r0
	ldr r1, [r0]
	mov r0, #47
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #40
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #111
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #44
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #67
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #48
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #106
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #52
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #75
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #56
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #102
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #60
	mov r0, r0
	ldr r1, [r0]
	mov r0, #34
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #64
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #39
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #68
	mov r0, r0
	ldr r1, [r0]
	mov r0, #65
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #72
	mov r0, r0
	ldr r1, [r0]
	mov r0, #47
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #76
	mov r0, r0
	ldr r1, [r0]
	mov r0, #113
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #80
	mov r0, r0
	ldr r1, [r0]
	mov r0, #110
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #84
	mov r0, r0
	ldr r1, [r0]
	mov r0, #47
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #88
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #4
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #92
	mov r0, r0
	ldr r1, [r0]
	mov r0, #80
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #96
	mov r0, r0
	ldr r1, [r0]
	mov r0, #46
	mul r0, r1, r0
	add r0, r2, r0
	mov r0, r0
	bl relu_reg
	mov r1, r0
	mov r0, #39
	mul r4, r1, r0
	ldr r0, [fp, #-4]
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #106
	mul r2, r1, r0
	ldr r0, [fp, #-4]
	add r0, r0, #4
	mov r0, r0
	ldr r1, [r0]
	mov r0, #126
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #8
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #18
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #12
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #31
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #16
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #8
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #20
	mov r0, r0
	ldr r1, [r0]
	mov r0, #47
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #24
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #4
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #28
	mov r0, r0
	ldr r1, [r0]
	mov r0, #67
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #32
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #94
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #36
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #121
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #40
	mov r0, r0
	ldr r1, [r0]
	mov r0, #7
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #44
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #21
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #48
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #60
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #52
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #43
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #56
	mov r0, r0
	ldr r1, [r0]
	mov r0, #105
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #60
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #42
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #64
	mov r0, r0
	ldr r1, [r0]
	mov r0, #87
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #68
	mov r0, r0
	ldr r1, [r0]
	mov r0, #29
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #72
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #106
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #76
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #31
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #80
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #110
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #84
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #100
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #88
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #22
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #92
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #75
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #96
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #125
	mul r0, r1, r0
	add r0, r2, r0
	mov r0, r0
	bl relu_reg
	mov r1, r0
	mov r0, #77
	mul r0, r1, r0
	add r4, r4, r0
	ldr r0, [fp, #-4]
	mov r0, r0
	ldr r1, [r0]
	mov r0, #26
	mul r2, r1, r0
	ldr r0, [fp, #-4]
	add r0, r0, #4
	mov r0, r0
	ldr r1, [r0]
	mov r0, #76
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #8
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #70
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #12
	mov r0, r0
	ldr r1, [r0]
	mov r0, #29
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #16
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #95
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #20
	mov r0, r0
	ldr r1, [r0]
	mov r0, #96
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #24
	mov r0, r0
	ldr r1, [r0]
	mov r0, #52
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #28
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #68
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #32
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #5
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #36
	mov r0, r0
	ldr r1, [r0]
	mov r0, #34
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #40
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #34
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #44
	mov r0, r0
	ldr r1, [r0]
	mov r0, #102
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #48
	mov r0, r0
	ldr r1, [r0]
	mov r0, #6
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #52
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #38
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #56
	mov r0, r0
	ldr r1, [r0]
	mov r0, #27
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #60
	mov r0, r0
	ldr r1, [r0]
	mov r0, #110
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #64
	mov r0, r0
	ldr r1, [r0]
	mov r0, #116
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #68
	mov r0, r0
	ldr r1, [r0]
	mov r0, #39
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #72
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #63
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #76
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #99
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #80
	mov r0, r0
	ldr r1, [r0]
	mov r0, #65
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #84
	mov r0, r0
	ldr r1, [r0]
	mov r0, #120
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #88
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #39
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #92
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #6
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #96
	mov r0, r0
	ldr r1, [r0]
	mov r0, #94
	mul r0, r1, r0
	add r0, r2, r0
	mov r0, r0
	bl relu_reg
	mov r1, r0
	mov r0, #127
	mul r0, r1, r0
	add r4, r4, r0
	ldr r0, [fp, #-4]
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #23
	mul r2, r1, r0
	ldr r0, [fp, #-4]
	add r0, r0, #4
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #63
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #8
	mov r0, r0
	ldr r1, [r0]
	mov r0, #49
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #12
	mov r0, r0
	ldr r1, [r0]
	mov r0, #50
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #16
	mov r0, r0
	ldr r1, [r0]
	mov r0, #72
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #20
	mov r0, r0
	ldr r1, [r0]
	mov r0, #85
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #24
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #30
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #28
	mov r0, r0
	ldr r1, [r0]
	mov r0, #12
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #32
	mov r0, r0
	ldr r1, [r0]
	mov r0, #125
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #36
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #117
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #40
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #65
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #44
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #67
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #48
	mov r0, r0
	ldr r1, [r0]
	mov r0, #125
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #52
	mov r0, r0
	ldr r1, [r0]
	mov r0, #110
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #56
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #31
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #60
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #123
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #64
	mov r0, r0
	ldr r1, [r0]
	mov r0, #83
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #68
	mov r0, r0
	ldr r1, [r0]
	mov r0, #122
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #72
	mov r0, r0
	ldr r1, [r0]
	mov r0, #11
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #76
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #23
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #80
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #47
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #84
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #32
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #88
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #117
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #92
	mov r0, r0
	ldr r1, [r0]
	mov r0, #95
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #96
	mov r0, r0
	ldr r1, [r0]
	mov r0, #118
	mul r0, r1, r0
	add r0, r2, r0
	mov r0, r0
	bl relu_reg
	mov r1, r0
	mov r0, #0
	sub r0, r0, #106
	mul r0, r1, r0
	add r4, r4, r0
	ldr r0, [fp, #-4]
	mov r0, r0
	ldr r0, [r0]
	lsl r2, r0, #3
	ldr r0, [fp, #-4]
	add r0, r0, #4
	mov r0, r0
	ldr r1, [r0]
	mov r0, #82
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #8
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #104
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #12
	mov r0, r0
	ldr r1, [r0]
	mov r0, #101
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #16
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #116
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #20
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #63
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #24
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #16
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #28
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #70
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #32
	mov r0, r0
	ldr r1, [r0]
	mov r0, #125
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #36
	mov r0, r0
	ldr r1, [r0]
	mov r0, #75
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #40
	mov r0, r0
	ldr r1, [r0]
	mov r0, #66
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #44
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #96
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	b .LT0

.LTORG
.LT0:
	add r0, r0, #48
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #101
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #52
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #114
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #56
	mov r0, r0
	ldr r1, [r0]
	mov r0, #59
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #60
	mov r0, r0
	ldr r1, [r0]
	mov r0, #12
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #64
	mov r0, r0
	ldr r1, [r0]
	mov r0, #5
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #68
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #95
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #72
	mov r0, r0
	ldr r1, [r0]
	mov r0, #116
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #76
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #93
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #80
	mov r0, r0
	ldr r1, [r0]
	mov r0, #15
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #84
	mov r0, r0
	ldr r1, [r0]
	mov r0, #79
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #88
	mov r0, r0
	ldr r1, [r0]
	mov r0, #3
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #92
	mov r0, r0
	ldr r1, [r0]
	mov r0, #49
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #96
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #124
	mul r0, r1, r0
	add r0, r2, r0
	mov r0, r0
	bl relu_reg
	mov r1, r0
	mov r0, #0
	sub r0, r0, #3
	mul r0, r1, r0
	add r4, r4, r0
	ldr r0, [fp, #-4]
	mov r0, r0
	ldr r1, [r0]
	mov r0, #81
	mul r2, r1, r0
	ldr r0, [fp, #-4]
	add r0, r0, #4
	mov r0, r0
	ldr r1, [r0]
	mov r0, #68
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #8
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #102
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #12
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #74
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #16
	mov r0, r0
	ldr r1, [r0]
	mov r0, #121
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #20
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #15
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #24
	mov r0, r0
	ldr r1, [r0]
	mov r0, #55
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #28
	mov r0, r0
	ldr r1, [r0]
	mov r0, #101
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #32
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #13
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #36
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #62
	mul r0, r1, r0
	add r1, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #40
	mov r0, r0
	ldr r0, [r0]
	lsl r0, r0, #6
	add r2, r1, r0
	ldr r0, [fp, #-4]
	add r0, r0, #44
	mov r0, r0
	ldr r1, [r0]
	mov r0, #114
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #48
	mov r0, r0
	ldr r1, [r0]
	mov r0, #38
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #52
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #21
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #56
	mov r0, r0
	ldr r1, [r0]
	mov r0, #112
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #60
	mov r0, r0
	ldr r1, [r0]
	mov r0, #114
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #64
	mov r0, r0
	ldr r1, [r0]
	mov r0, #112
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #68
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #10
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #72
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #16
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #76
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #50
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #80
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #112
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #84
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #116
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #88
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #54
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #92
	mov r0, r0
	ldr r1, [r0]
	mov r0, #82
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #96
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #72
	mul r0, r1, r0
	add r0, r2, r0
	mov r0, r0
	bl relu_reg
	mov r0, r0
	lsl r0, r0, #5
	add r4, r4, r0
	ldr r0, [fp, #-4]
	mov r0, r0
	ldr r1, [r0]
	mov r0, #15
	mul r2, r1, r0
	ldr r0, [fp, #-4]
	add r0, r0, #4
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #77
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #8
	mov r0, r0
	ldr r1, [r0]
	mov r0, #66
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #12
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #90
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #16
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #6
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #20
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #30
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #24
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #8
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #28
	mov r0, r0
	ldr r1, [r0]
	mov r0, #81
	mul r0, r1, r0
	add r1, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #32
	mov r0, r0
	ldr r0, [r0]
	lsl r0, r0, #1
	add r2, r1, r0
	ldr r0, [fp, #-4]
	add r0, r0, #36
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #110
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #40
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #95
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #44
	mov r0, r0
	ldr r1, [r0]
	mov r0, #59
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #48
	mov r0, r0
	ldr r1, [r0]
	mov r0, #52
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #52
	mov r0, r0
	ldr r1, [r0]
	mov r0, #15
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #56
	mov r0, r0
	ldr r1, [r0]
	mov r0, #55
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #60
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #33
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #64
	mov r0, r0
	ldr r1, [r0]
	mov r0, #14
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #68
	mov r0, r0
	ldr r1, [r0]
	mov r0, #58
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #72
	mov r0, r0
	ldr r1, [r0]
	mov r0, #67
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #76
	mov r0, r0
	ldr r1, [r0]
	mov r0, #86
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #80
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #79
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #84
	mov r0, r0
	ldr r1, [r0]
	mov r0, #48
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #88
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #13
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #92
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #15
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #96
	mov r0, r0
	ldr r1, [r0]
	mov r0, #66
	mul r0, r1, r0
	add r0, r2, r0
	mov r0, r0
	bl relu_reg
	mov r1, r0
	mov r0, #0
	sub r0, r0, #95
	mul r0, r1, r0
	add r4, r4, r0
	ldr r0, [fp, #-4]
	mov r0, r0
	ldr r1, [r0]
	mov r0, #33
	mul r2, r1, r0
	ldr r0, [fp, #-4]
	add r0, r0, #4
	mov r0, r0
	ldr r1, [r0]
	mov r0, #82
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #8
	mov r0, r0
	ldr r1, [r0]
	mov r0, #67
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #12
	mov r0, r0
	ldr r1, [r0]
	mov r0, #30
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #16
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #2
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #20
	mov r0, r0
	ldr r1, [r0]
	mov r0, #65
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #24
	mov r0, r0
	ldr r1, [r0]
	mov r0, #120
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #28
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #13
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #32
	mov r0, r0
	ldr r1, [r0]
	mov r0, #18
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #36
	mov r0, r0
	ldr r1, [r0]
	mov r0, #5
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #40
	mov r0, r0
	ldr r1, [r0]
	mov r0, #104
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #44
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #119
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #48
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #7
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #52
	mov r0, r0
	ldr r1, [r0]
	mov r0, #71
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #56
	mov r0, r0
	ldr r1, [r0]
	mov r0, #107
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #60
	mov r0, r0
	ldr r1, [r0]
	mov r0, #24
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #64
	mov r0, r0
	ldr r1, [r0]
	mov r0, #82
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #68
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #96
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #72
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #104
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #76
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #121
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #80
	mov r0, r0
	ldr r1, [r0]
	mov r0, #65
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #84
	mov r0, r0
	ldr r1, [r0]
	mov r0, #97
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #88
	mov r0, r0
	ldr r1, [r0]
	mov r0, #83
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #92
	mov r0, r0
	ldr r1, [r0]
	mov r0, #46
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #96
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #84
	mul r0, r1, r0
	add r0, r2, r0
	mov r0, r0
	bl relu_reg
	mov r1, r0
	mov r0, #0
	sub r0, r0, #50
	mul r0, r1, r0
	add r4, r4, r0
	ldr r0, [fp, #-4]
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #29
	mul r2, r1, r0
	ldr r0, [fp, #-4]
	add r0, r0, #4
	mov r0, r0
	ldr r1, [r0]
	mov r0, #7
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #8
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #70
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #12
	mov r0, r0
	ldr r1, [r0]
	mov r0, #38
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #16
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #90
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #20
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #15
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #24
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #32
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #28
	mov r0, r0
	ldr r1, [r0]
	mov r0, #37
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #32
	mov r0, r0
	ldr r1, [r0]
	mov r0, #36
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #36
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #62
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #40
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #125
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #44
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #46
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #48
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #70
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #52
	mov r0, r0
	ldr r1, [r0]
	mov r0, #37
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #56
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #73
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #60
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #34
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #64
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #87
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #68
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #75
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #72
	mov r0, r0
	ldr r1, [r0]
	mov r0, #71
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #76
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #77
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #80
	mov r0, r0
	ldr r1, [r0]
	mov r0, #53
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #84
	mov r0, r0
	ldr r1, [r0]
	mov r0, #37
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #88
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #103
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #92
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #13
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #96
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #114
	mul r0, r1, r0
	add r0, r2, r0
	mov r0, r0
	bl relu_reg
	mov r1, r0
	mov r0, #0
	sub r0, r0, #23
	mul r0, r1, r0
	add r4, r4, r0
	ldr r0, [fp, #-4]
	mov r0, r0
	ldr r1, [r0]
	mov r0, #67
	mul r2, r1, r0
	ldr r0, [fp, #-4]
	add r0, r0, #4
	mov r0, r0
	ldr r1, [r0]
	mov r0, #42
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #8
	mov r0, r0
	ldr r1, [r0]
	mov r0, #41
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #12
	b .LT1

.LTORG
.LT1:
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #123
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #16
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #92
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #20
	mov r0, r0
	ldr r1, [r0]
	mov r0, #10
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #24
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #77
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #28
	mov r0, r0
	ldr r1, [r0]
	mov r0, #75
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #32
	mov r0, r0
	ldr r1, [r0]
	mov r0, #96
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #36
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #51
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #40
	mov r0, r0
	ldr r1, [r0]
	mov r0, #109
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #44
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #74
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #48
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #7
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #52
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #122
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #56
	mov r0, r0
	ldr r1, [r0]
	mov r0, #67
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #60
	mov r0, r0
	ldr r1, [r0]
	mov r0, #47
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #64
	mov r0, r0
	ldr r1, [r0]
	mov r0, #22
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #68
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #68
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #72
	mov r0, r0
	ldr r1, [r0]
	mov r0, #38
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #76
	mov r0, r0
	ldr r1, [r0]
	mov r0, #29
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #80
	mov r0, r0
	ldr r1, [r0]
	mov r0, #115
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #84
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #121
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #88
	mov r0, r0
	ldr r1, [r0]
	mov r0, #36
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #92
	mov r0, r0
	ldr r1, [r0]
	mov r0, #0
	sub r0, r0, #49
	mul r0, r1, r0
	add r2, r2, r0
	ldr r0, [fp, #-4]
	add r0, r0, #96
	mov r0, r0
	ldr r1, [r0]
	mov r0, #85
	mul r0, r1, r0
	add r0, r2, r0
	mov r0, r0
	bl relu_reg
	mov r1, r0
	mov r0, #46
	mul r0, r1, r0
	add r0, r4, r0
	cmp r0, #0
	movgt r0, #1
	movle r0, #0
	bgt .L943
	b .L1445
.L943:
	mov r0, #1
	mov r0, r0
	mov sp, fp
	pop {r4, fp, lr}
	bx lr
	b .L944
.L944:
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {r4, fp, lr}
	bx lr
.L1445:
	b .L944
	.global main
	.type main , %function
main:
	push {r4, fp, lr}
	mov fp, sp
	sub sp, sp, #112
	lsr sp, sp, #3
	lsl sp, sp, #3
.L1446:
	bl getint
	mov r0, r0
	str r0, [fp, #-12]
	ldr r0, [fp, #-12]
	cmp r0, #0
	movgt r0, #1
	movle r0, #0
	bgt .L1450
	b .L1452
.L1449:
	ldr r0, [fp, #-12]
	cmp r0, #0
	movgt r0, #1
	movle r0, #0
	bgt .L1450
	b .L1470
.L1450:
	mov r0, #0
	str r0, [fp, #-8]
	ldr r0, [fp, #-8]
	cmp r0, #5
	movlt r0, #1
	movge r0, #0
	blt .L1455
	b .L1457
.L1451:
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {r4, fp, lr}
	bx lr
.L1452:
	b .L1451
.L1454:
	ldr r0, [fp, #-8]
	cmp r0, #5
	movlt r0, #1
	movge r0, #0
	blt .L1455
	b .L1465
.L1455:
	mov r0, #0
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	cmp r0, #5
	movlt r0, #1
	movge r0, #0
	blt .L1460
	b .L1462
.L1456:
	mvn r0, #111
	add r0, fp, r0
	mov r0, r0
	mov r0, r0
	bl model
	mov r0, r0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L1466
	b .L1469
.L1457:
	b .L1456
.L1459:
	ldr r0, [fp, #-4]
	cmp r0, #5
	movlt r0, #1
	movge r0, #0
	blt .L1460
	b .L1464
.L1460:
	bl getint
	mov r4, r0
	ldr r3, [fp, #-8]
	ldr r2, [fp, #-4]
	mvn r0, #111
	add r1, fp, r0
	mov r0, #20
	mul r0, r3, r0
	add r1, r1, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	str r4, [r0]
	ldr r0, [fp, #-4]
	add r0, r0, #1
	str r0, [fp, #-4]
	b .L1459
.L1461:
	ldr r0, [fp, #-8]
	add r0, r0, #1
	str r0, [fp, #-8]
	b .L1454
.L1462:
	b .L1461
.L1464:
	b .L1461
.L1465:
	b .L1456
.L1466:
	mov r0, #99
	bl putch
	mov r0, #97
	bl putch
	mov r0, #116
	bl putch
	mov r0, #10
	bl putch
	b .L1468
.L1467:
	mov r0, #100
	bl putch
	mov r0, #111
	bl putch
	mov r0, #103
	bl putch
	mov r0, #10
	bl putch
	b .L1468
.L1468:
	ldr r0, [fp, #-12]
	sub r0, r0, #1
	str r0, [fp, #-12]
	b .L1449
.L1469:
	b .L1467
.L1470:
	b .L1451

.LTORG
