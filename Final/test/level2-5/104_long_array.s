	.cpu cortex-a72
	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
.section .rodata
.global N
.size N, 4
N:
	.word 10000

	.text
	.global long_array
	.type long_array , %function
long_array:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #212
	sub sp, sp, #54272
	sub sp, sp, #65536
	lsr sp, sp, #3
	lsl sp, sp, #3
.L136:
	str r0, [fp, #-20]
	mov r0, #0
	str r0, [fp, #-16]
	ldr r1, [fp, #-16]
	ldr r0, addr_N_0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L143
	b .L145
.L142:
	ldr r1, [fp, #-16]
	ldr r0, addr_N_0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L143
	b .L147
.L143:
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-16]
	mul r2, r1, r0
	mov r1, #10
	sdiv r0, r2, r1
	mul r0, r0, r1
	sub r3, r2, r0
	ldr r2, [fp, #-16]
	ldr r0, =-40020
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	str r3, [r0]
	ldr r0, [fp, #-16]
	add r0, r0, #1
	str r0, [fp, #-16]
	b .L142
.L144:
	mov r0, #0
	str r0, [fp, #-16]
	ldr r1, [fp, #-16]
	ldr r0, addr_N_0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L149
	b .L151
.L145:
	b .L144
.L147:
	b .L144
.L148:
	ldr r1, [fp, #-16]
	ldr r0, addr_N_0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L149
	b .L155
.L149:
	ldr r2, [fp, #-16]
	ldr r0, =-40020
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r3, [r0]
	ldr r2, [fp, #-16]
	ldr r0, =-40020
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	mul r2, r3, r0
	mov r1, #10
	sdiv r0, r2, r1
	mul r0, r0, r1
	sub r3, r2, r0
	ldr r2, [fp, #-16]
	ldr r0, =-80020
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	str r3, [r0]
	ldr r0, [fp, #-16]
	add r0, r0, #1
	str r0, [fp, #-16]
	b .L148
.L150:
	mov r0, #0
	str r0, [fp, #-16]
	ldr r1, [fp, #-16]
	ldr r0, addr_N_0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L157
	b .L159
.L151:
	b .L150
.L155:
	b .L150
.L156:
	ldr r1, [fp, #-16]
	ldr r0, addr_N_0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L157
	b .L164
.L157:
	ldr r2, [fp, #-16]
	ldr r0, =-80020
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r3, [r0]
	ldr r2, [fp, #-16]
	ldr r0, =-80020
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	mul r2, r3, r0
	mov r1, #100
	sdiv r0, r2, r1
	mul r0, r0, r1
	sub r3, r2, r0
	ldr r2, [fp, #-16]
	ldr r0, =-40020
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	add r3, r3, r0
	ldr r2, [fp, #-16]
	ldr r0, =-120020
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	str r3, [r0]
	ldr r0, [fp, #-16]
	add r0, r0, #1
	str r0, [fp, #-16]
	b .L156
.L158:
	mov r0, #0
	str r0, [fp, #-12]
	mov r0, #0
	str r0, [fp, #-16]
	ldr r1, [fp, #-16]
	ldr r0, addr_N_0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L167
	b .L169
.L159:
	b .L158
.L164:
	b .L158
.L166:
	ldr r1, [fp, #-16]
	ldr r0, addr_N_0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L167
	b .L206
.L167:
	ldr r0, [fp, #-16]
	cmp r0, #10
	movlt r0, #1
	movge r0, #0
	blt .L170
	b .L173
.L168:
	ldr r0, [fp, #-12]
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L169:
	b .L168
.L170:
	ldr r3, [fp, #-12]
	ldr r2, [fp, #-16]
	ldr r0, =-120020
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	add r2, r3, r0
	ldr r1, =1333
	sdiv r0, r2, r1
	mul r0, r0, r1
	sub r0, r2, r0
	str r0, [fp, #-12]
	ldr r0, [fp, #-12]
	mov r0, r0
	bl putint
	b .L172
.L171:
	ldr r0, [fp, #-16]
	cmp r0, #20
	movlt r0, #1
	movge r0, #0
	blt .L175
	b .L178
.L172:
	ldr r0, [fp, #-16]
	add r0, r0, #1
	str r0, [fp, #-16]
	b .L166
.L173:
	b .L171
.L175:
	ldr r0, addr_N_0
	ldr r1, [r0]
	ldr r0, =2
	sdiv r0, r1, r0
	str r0, [fp, #-8]
	ldr r1, [fp, #-8]
	ldr r0, addr_N_0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L181
	b .L183
.L176:
	ldr r0, [fp, #-16]
	cmp r0, #30
	movlt r0, #1
	movge r0, #0
	blt .L187
	b .L190
.L177:
	b .L172
.L178:
	b .L176
.L180:
	ldr r1, [fp, #-8]
	ldr r0, addr_N_0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L181
	b .L186
.L181:
	ldr r3, [fp, #-12]
	ldr r2, [fp, #-16]
	ldr r0, =-120020
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	add r3, r3, r0
	ldr r2, [fp, #-8]
	ldr r0, =-40020
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	sub r0, r3, r0
	str r0, [fp, #-12]
	ldr r0, [fp, #-8]
	add r0, r0, #1
	str r0, [fp, #-8]
	b .L180
.L182:
	ldr r0, [fp, #-12]
	mov r0, r0
	bl putint
	b .L177
.L183:
	b .L182
.L186:
	b .L182
.L187:
	ldr r0, addr_N_0
	ldr r1, [r0]
	ldr r0, =2
	sdiv r0, r1, r0
	str r0, [fp, #-4]
	ldr r1, [fp, #-4]
	ldr r0, addr_N_0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L193
	b .L195
.L188:
	ldr r3, [fp, #-12]
	ldr r2, [fp, #-16]
	ldr r0, =-120020
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r1, [r0]
	ldr r0, [fp, #-20]
	mul r0, r1, r0
	add r2, r3, r0
	ldr r1, =99988
	sdiv r0, r2, r1
	mul r0, r0, r1
	sub r0, r2, r0
	str r0, [fp, #-12]
	b .L189
.L189:
	b .L177
.L190:
	b .L188
.L192:
	ldr r1, [fp, #-4]
	ldr r0, addr_N_0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L193
	b .L204
.L193:
	ldr r1, [fp, #-4]
	ldr r0, =2233
	cmp r1, r0
	movgt r0, #1
	movle r0, #0
	bgt .L196
	b .L199
.L194:
	ldr r0, [fp, #-12]
	mov r0, r0
	bl putint
	b .L189
.L195:
	b .L194
.L196:
	ldr r3, [fp, #-12]
	ldr r2, [fp, #-16]
	ldr r0, =-80020
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	add r3, r3, r0
	ldr r2, [fp, #-4]
	ldr r0, =-40020
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	sub r0, r3, r0
	str r0, [fp, #-12]
	ldr r0, [fp, #-4]
	add r0, r0, #1
	str r0, [fp, #-4]
	b .L198
.L197:
	ldr r3, [fp, #-12]
	ldr r2, [fp, #-16]
	ldr r0, =-40020
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	add r3, r3, r0
	ldr r2, [fp, #-4]
	ldr r0, =-120020
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	add r2, r3, r0
	ldr r1, =13333
	sdiv r0, r2, r1
	mul r0, r0, r1
	sub r0, r2, r0
	str r0, [fp, #-12]
	ldr r0, [fp, #-4]
	add r0, r0, #2
	str r0, [fp, #-4]
	b .L198
.L198:
	b .L192
.L199:
	b .L197
.L204:
	b .L194
.L206:
	b .L168
	.global main
	.type main , %function
main:
	push {fp, lr}
	mov fp, sp
	lsr sp, sp, #3
	lsl sp, sp, #3
.L207:
	mov r0, #9
	bl long_array
	mov r0, r0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr

.LTORG
addr_N_0:
	.word N
