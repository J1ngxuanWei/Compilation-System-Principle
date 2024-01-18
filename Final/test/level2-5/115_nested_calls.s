	.cpu cortex-a72
	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm

	.text
	.global func1
	.type func1 , %function
func1:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #12
	lsr sp, sp, #3
	lsl sp, sp, #3
.L149:
	str r0, [fp, #-12]
	str r1, [fp, #-8]
	str r2, [fp, #-4]
	ldr r0, [fp, #-4]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	beq .L153
	b .L156
.L153:
	ldr r1, [fp, #-12]
	ldr r0, [fp, #-8]
	mul r0, r1, r0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
	b .L155
.L154:
	ldr r2, [fp, #-12]
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-4]
	sub r1, r1, r0
	mov r0, r2
	mov r1, r1
	mov r2, #0
	bl func1
	mov r0, r0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
	b .L155
.L155:
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L156:
	b .L154
	.global func2
	.type func2 , %function
func2:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #8
	lsr sp, sp, #3
	lsl sp, sp, #3
.L157:
	str r0, [fp, #-8]
	str r1, [fp, #-4]
	ldr r0, [fp, #-4]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L160
	b .L163
.L160:
	ldr r2, [fp, #-8]
	ldr r1, [fp, #-4]
	sdiv r0, r2, r1
	mul r0, r0, r1
	sub r0, r2, r0
	mov r0, r0
	mov r1, #0
	bl func2
	mov r0, r0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
	b .L162
.L161:
	ldr r0, [fp, #-8]
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
	b .L162
.L162:
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L163:
	b .L161
	.global func3
	.type func3 , %function
func3:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #8
	lsr sp, sp, #3
	lsl sp, sp, #3
.L164:
	str r0, [fp, #-8]
	str r1, [fp, #-4]
	ldr r0, [fp, #-4]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	beq .L167
	b .L170
.L167:
	ldr r0, [fp, #-8]
	add r0, r0, #1
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
	b .L169
.L168:
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-4]
	add r0, r1, r0
	mov r0, r0
	mov r1, #0
	bl func3
	mov r0, r0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
	b .L169
.L169:
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L170:
	b .L168
	.global func4
	.type func4 , %function
func4:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #12
	lsr sp, sp, #3
	lsl sp, sp, #3
.L171:
	str r0, [fp, #-12]
	str r1, [fp, #-8]
	str r2, [fp, #-4]
	ldr r0, [fp, #-12]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L175
	b .L178
.L175:
	ldr r0, [fp, #-8]
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
	b .L177
.L176:
	ldr r0, [fp, #-4]
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
	b .L177
.L177:
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L178:
	b .L176
	.global func5
	.type func5 , %function
func5:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #4
	lsr sp, sp, #3
	lsl sp, sp, #3
.L179:
	str r0, [fp, #-4]
	ldr r1, [fp, #-4]
	mov r0, #0
	sub r0, r0, r1
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
	.global func6
	.type func6 , %function
func6:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #8
	lsr sp, sp, #3
	lsl sp, sp, #3
.L181:
	str r0, [fp, #-8]
	str r1, [fp, #-4]
	ldr r0, [fp, #-8]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L187
	b .L188
.L184:
	mov r0, #1
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
	b .L186
.L185:
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
	b .L186
.L186:
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L187:
	ldr r0, [fp, #-4]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L184
	b .L189
.L188:
	b .L185
.L189:
	b .L185
	.global func7
	.type func7 , %function
func7:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #4
	lsr sp, sp, #3
	lsl sp, sp, #3
.L190:
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	beq .L192
	b .L195
.L192:
	mov r0, #1
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
	b .L194
.L193:
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
	b .L194
.L194:
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L195:
	b .L193
	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #64
	lsr sp, sp, #3
	lsl sp, sp, #3
.L196:
	bl getint
	mov r0, r0
	str r0, [fp, #-24]
	bl getint
	mov r0, r0
	str r0, [fp, #-20]
	bl getint
	mov r0, r0
	str r0, [fp, #-16]
	bl getint
	mov r0, r0
	str r0, [fp, #-12]
	mov r0, #0
	str r0, [fp, #-8]
	ldr r0, [fp, #-8]
	cmp r0, #10
	movlt r0, #1
	movge r0, #0
	blt .L204
	b .L206
.L203:
	ldr r0, [fp, #-8]
	cmp r0, #10
	movlt r0, #1
	movge r0, #0
	blt .L204
	b .L208
.L204:
	bl getint
	mov r3, r0
	ldr r2, [fp, #-8]
	mvn r0, #63
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	str r3, [r0]
	ldr r0, [fp, #-8]
	add r0, r0, #1
	str r0, [fp, #-8]
	b .L203
.L205:
	ldr r0, [fp, #-24]
	mov r0, r0
	bl func7
	mov r4, r0
	ldr r0, [fp, #-20]
	mov r0, r0
	bl func5
	mov r1, r0
	mov r0, r4
	mov r1, r1
	bl func6
	mov r0, r0
	ldr r1, [fp, #-16]
	mov r0, r0
	mov r1, r1
	bl func2
	mov r0, r0
	ldr r1, [fp, #-12]
	mov r0, r0
	mov r1, r1
	bl func3
	mov r0, r0
	mov r0, r0
	bl func5
	mov r5, r0
	mvn r0, #63
	add r0, fp, r0
	mov r0, r0
	ldr r4, [r0]
	mvn r0, #63
	add r0, fp, r0
	add r0, r0, #4
	mov r0, r0
	ldr r0, [r0]
	mov r0, r0
	bl func5
	mov r8, r0
	mvn r0, #63
	add r0, fp, r0
	add r0, r0, #8
	mov r0, r0
	ldr r6, [r0]
	mvn r0, #63
	add r0, fp, r0
	add r0, r0, #12
	mov r0, r0
	ldr r0, [r0]
	mov r0, r0
	bl func7
	mov r1, r0
	mov r0, r6
	mov r1, r1
	bl func6
	mov r7, r0
	mvn r0, #63
	add r0, fp, r0
	add r0, r0, #16
	mov r0, r0
	ldr r6, [r0]
	mvn r0, #63
	add r0, fp, r0
	add r0, r0, #20
	mov r0, r0
	ldr r0, [r0]
	mov r0, r0
	bl func7
	mov r1, r0
	mov r0, r6
	mov r1, r1
	bl func2
	mov r2, r0
	mov r0, r8
	mov r1, r7
	mov r2, r2
	bl func4
	mov r2, r0
	mvn r0, #63
	add r0, fp, r0
	add r0, r0, #24
	mov r0, r0
	ldr r1, [r0]
	mov r0, r2
	mov r1, r1
	bl func3
	mov r2, r0
	mvn r0, #63
	add r0, fp, r0
	add r0, r0, #28
	mov r0, r0
	ldr r1, [r0]
	mov r0, r2
	mov r1, r1
	bl func2
	mov r7, r0
	mvn r0, #63
	add r0, fp, r0
	add r0, r0, #32
	mov r0, r0
	ldr r6, [r0]
	mvn r0, #63
	add r0, fp, r0
	add r0, r0, #36
	mov r0, r0
	ldr r0, [r0]
	mov r0, r0
	bl func7
	mov r1, r0
	mov r0, r6
	mov r1, r1
	bl func3
	mov r1, r0
	ldr r2, [fp, #-24]
	mov r0, r7
	mov r1, r1
	mov r2, r2
	bl func1
	mov r2, r0
	mov r0, r5
	mov r1, r4
	mov r2, r2
	bl func4
	mov r5, r0
	ldr r4, [fp, #-20]
	ldr r0, [fp, #-16]
	mov r0, r0
	bl func7
	mov r0, r0
	ldr r1, [fp, #-12]
	mov r0, r0
	mov r1, r1
	bl func3
	mov r1, r0
	mov r0, r4
	mov r1, r1
	bl func2
	mov r1, r0
	mov r0, r5
	mov r1, r1
	bl func3
	mov r3, r0
	mvn r0, #63
	add r0, fp, r0
	mov r0, r0
	ldr r1, [r0]
	mvn r0, #63
	add r0, fp, r0
	add r0, r0, #4
	mov r0, r0
	ldr r2, [r0]
	mov r0, r3
	mov r1, r1
	mov r2, r2
	bl func1
	mov r2, r0
	mvn r0, #63
	add r0, fp, r0
	add r0, r0, #8
	mov r0, r0
	ldr r1, [r0]
	mov r0, r2
	mov r1, r1
	bl func2
	mov r7, r0
	mvn r0, #63
	add r0, fp, r0
	add r0, r0, #12
	mov r0, r0
	ldr r6, [r0]
	mvn r0, #63
	add r0, fp, r0
	add r0, r0, #16
	mov r0, r0
	ldr r4, [r0]
	mvn r0, #63
	add r0, fp, r0
	add r0, r0, #20
	mov r0, r0
	ldr r0, [r0]
	mov r0, r0
	bl func5
	mov r1, r0
	mov r0, r4
	mov r1, r1
	bl func3
	mov r4, r0
	mvn r0, #63
	add r0, fp, r0
	add r0, r0, #24
	mov r0, r0
	ldr r0, [r0]
	mov r0, r0
	bl func5
	mov r1, r0
	mov r0, r4
	mov r1, r1
	bl func2
	mov r5, r0
	mvn r0, #63
	add r0, fp, r0
	add r0, r0, #28
	mov r0, r0
	ldr r4, [r0]
	mvn r0, #63
	add r0, fp, r0
	add r0, r0, #32
	mov r0, r0
	ldr r0, [r0]
	mov r0, r0
	bl func7
	mov r2, r0
	mov r0, r5
	mov r1, r4
	mov r2, r2
	bl func1
	mov r4, r0
	mvn r0, #63
	add r0, fp, r0
	add r0, r0, #36
	mov r0, r0
	ldr r0, [r0]
	mov r0, r0
	bl func5
	mov r1, r0
	mov r0, r4
	mov r1, r1
	bl func2
	mov r0, r0
	ldr r1, [fp, #-24]
	mov r0, r0
	mov r1, r1
	bl func3
	mov r2, r0
	mov r0, r7
	mov r1, r6
	mov r2, r2
	bl func1
	mov r0, r0
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	mov r0, r0
	mov sp, fp
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L206:
	b .L205
.L208:
	b .L205

.LTORG
