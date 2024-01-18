	.cpu cortex-a72
	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
.data
.global n
.size n, 4
n:
	.word 0

	.text
	.global swap
	.type swap , %function
swap:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #16
	lsr sp, sp, #3
	lsl sp, sp, #3
.L143:
	str r0, [fp, #-16]
	str r1, [fp, #-12]
	str r2, [fp, #-8]
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-12]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	str r0, [fp, #-4]
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-8]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r2, [r0]
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-12]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	str r2, [r0]
	ldr r2, [fp, #-4]
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-8]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	str r2, [r0]
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
	.global heap_ajust
	.type heap_ajust , %function
heap_ajust:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #20
	lsr sp, sp, #3
	lsl sp, sp, #3
.L156:
	str r0, [fp, #-20]
	str r1, [fp, #-16]
	str r2, [fp, #-12]
	ldr r0, [fp, #-16]
	str r0, [fp, #-8]
	ldr r0, [fp, #-8]
	lsl r0, r0, #1
	add r0, r0, #1
	str r0, [fp, #-4]
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-12]
	add r0, r0, #1
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L163
	b .L165
.L162:
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-12]
	add r0, r0, #1
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L163
	b .L183
.L163:
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-12]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L168
	b .L169
.L164:
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L165:
	b .L164
.L166:
	ldr r0, [fp, #-4]
	add r0, r0, #1
	str r0, [fp, #-4]
	b .L167
.L167:
	ldr r1, [fp, #-20]
	ldr r0, [fp, #-8]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r2, [r0]
	ldr r1, [fp, #-20]
	ldr r0, [fp, #-4]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r2, r0
	movgt r0, #1
	movle r0, #0
	bgt .L175
	b .L182
.L168:
	ldr r1, [fp, #-20]
	ldr r0, [fp, #-4]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r2, [r0]
	ldr r1, [fp, #-20]
	ldr r0, [fp, #-4]
	add r0, r0, #1
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r2, r0
	movlt r0, #1
	movge r0, #0
	blt .L166
	b .L174
.L169:
	b .L167
.L174:
	b .L167
.L175:
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
	b .L177
.L176:
	ldr r0, [fp, #-20]
	ldr r1, [fp, #-8]
	ldr r2, [fp, #-4]
	mov r0, r0
	mov r1, r1
	mov r2, r2
	bl swap
	mov r0, r0
	str r0, [fp, #-8]
	ldr r0, [fp, #-4]
	str r0, [fp, #-8]
	ldr r0, [fp, #-8]
	lsl r0, r0, #1
	add r0, r0, #1
	str r0, [fp, #-4]
	b .L177
.L177:
	b .L162
.L182:
	b .L176
.L183:
	b .L164
	.global heap_sort
	.type heap_sort , %function
heap_sort:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #20
	lsr sp, sp, #3
	lsl sp, sp, #3
.L184:
	str r0, [fp, #-20]
	str r1, [fp, #-16]
	ldr r1, [fp, #-16]
	ldr r0, =2
	sdiv r0, r1, r0
	sub r0, r0, #1
	str r0, [fp, #-12]
	ldr r1, [fp, #-12]
	mov r0, #0
	sub r0, r0, #1
	cmp r1, r0
	movgt r0, #1
	movle r0, #0
	bgt .L190
	b .L192
.L189:
	ldr r1, [fp, #-12]
	mov r0, #0
	sub r0, r0, #1
	cmp r1, r0
	movgt r0, #1
	movle r0, #0
	bgt .L190
	b .L193
.L190:
	ldr r0, [fp, #-16]
	sub r0, r0, #1
	str r0, [fp, #-8]
	ldr r0, [fp, #-20]
	ldr r1, [fp, #-12]
	ldr r2, [fp, #-8]
	mov r0, r0
	mov r1, r1
	mov r2, r2
	bl heap_ajust
	mov r0, r0
	str r0, [fp, #-8]
	ldr r0, [fp, #-12]
	sub r0, r0, #1
	str r0, [fp, #-12]
	b .L189
.L191:
	ldr r0, [fp, #-16]
	sub r0, r0, #1
	str r0, [fp, #-12]
	ldr r0, [fp, #-12]
	cmp r0, #0
	movgt r0, #1
	movle r0, #0
	bgt .L195
	b .L197
.L192:
	b .L191
.L193:
	b .L191
.L194:
	ldr r0, [fp, #-12]
	cmp r0, #0
	movgt r0, #1
	movle r0, #0
	bgt .L195
	b .L199
.L195:
	mov r0, #0
	str r0, [fp, #-4]
	ldr r0, [fp, #-20]
	ldr r1, [fp, #-4]
	ldr r2, [fp, #-12]
	mov r0, r0
	mov r1, r1
	mov r2, r2
	bl swap
	mov r0, r0
	str r0, [fp, #-8]
	ldr r0, [fp, #-12]
	sub r0, r0, #1
	str r0, [fp, #-8]
	ldr r0, [fp, #-20]
	ldr r1, [fp, #-4]
	ldr r2, [fp, #-8]
	mov r0, r0
	mov r1, r1
	mov r2, r2
	bl heap_ajust
	mov r0, r0
	str r0, [fp, #-8]
	ldr r0, [fp, #-12]
	sub r0, r0, #1
	str r0, [fp, #-12]
	b .L194
.L196:
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L197:
	b .L196
.L199:
	b .L196
	.global main
	.type main , %function
main:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #48
	lsr sp, sp, #3
	lsl sp, sp, #3
.L200:
	mov r1, #10
	ldr r0, addr_n_0
	str r1, [r0]
	mvn r0, #47
	add r1, fp, r0
	mov r1, r1
	mov r0, #4
	str r0, [r1]
	mvn r0, #47
	add r0, fp, r0
	add r1, r0, #4
	mov r1, r1
	mov r0, #3
	str r0, [r1]
	mvn r0, #47
	add r0, fp, r0
	add r1, r0, #8
	mov r1, r1
	mov r0, #9
	str r0, [r1]
	mvn r0, #47
	add r0, fp, r0
	add r1, r0, #12
	mov r1, r1
	mov r0, #2
	str r0, [r1]
	mvn r0, #47
	add r0, fp, r0
	add r1, r0, #16
	mov r1, r1
	mov r0, #0
	str r0, [r1]
	mvn r0, #47
	add r0, fp, r0
	add r1, r0, #20
	mov r1, r1
	mov r0, #1
	str r0, [r1]
	mvn r0, #47
	add r0, fp, r0
	add r1, r0, #24
	mov r1, r1
	mov r0, #6
	str r0, [r1]
	mvn r0, #47
	add r0, fp, r0
	add r1, r0, #28
	mov r1, r1
	mov r0, #5
	str r0, [r1]
	mvn r0, #47
	add r0, fp, r0
	add r1, r0, #32
	mov r1, r1
	mov r0, #7
	str r0, [r1]
	mvn r0, #47
	add r0, fp, r0
	add r1, r0, #36
	mov r1, r1
	mov r0, #8
	str r0, [r1]
	mov r0, #0
	str r0, [fp, #-8]
	mvn r0, #47
	add r2, fp, r0
	mov r2, r2
	ldr r0, addr_n_0
	ldr r1, [r0]
	mov r0, r2
	mov r1, r1
	bl heap_sort
	mov r0, r0
	str r0, [fp, #-8]
	ldr r1, [fp, #-8]
	ldr r0, addr_n_0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L214
	b .L216
.L213:
	ldr r1, [fp, #-8]
	ldr r0, addr_n_0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L214
	b .L219
.L214:
	ldr r2, [fp, #-8]
	mvn r0, #47
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	mov r0, r0
	bl putint
	mov r0, #10
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	mov r0, r0
	bl putch
	ldr r0, [fp, #-8]
	add r0, r0, #1
	str r0, [fp, #-8]
	b .L213
.L215:
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L216:
	b .L215
.L219:
	b .L215

.LTORG
addr_n_0:
	.word n
