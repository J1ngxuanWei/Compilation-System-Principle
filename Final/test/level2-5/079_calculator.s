	.cpu cortex-a72
	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
.data
.comm ints, 40000
.global intt
.size intt, 4
intt:
	.word 0
.comm chas, 40000
.global chat
.size chat, 4
chat:
	.word 0
.global i
.size i, 4
i:
	.word 0
.global ii
.size ii, 4
ii:
	.word 1
.global c
.size c, 4
c:
	.word 0
.comm get, 40000
.comm get2, 40000

	.text
	.global isdigit
	.type isdigit , %function
isdigit:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #4
	lsr sp, sp, #3
	lsl sp, sp, #3
.L390:
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	cmp r0, #48
	movge r0, #1
	movlt r0, #0
	bge .L394
	b .L395
.L392:
	mov r0, #1
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
	b .L393
.L393:
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L394:
	ldr r0, [fp, #-4]
	cmp r0, #57
	movle r0, #1
	movgt r0, #0
	ble .L392
	b .L396
.L395:
	b .L393
.L396:
	b .L393
	.global power
	.type power , %function
power:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #12
	lsr sp, sp, #3
	lsl sp, sp, #3
.L397:
	str r0, [fp, #-12]
	str r1, [fp, #-8]
	mov r0, #1
	str r0, [fp, #-4]
	ldr r0, [fp, #-8]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L402
	b .L404
.L401:
	ldr r0, [fp, #-8]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bne .L402
	b .L405
.L402:
	ldr r1, [fp, #-4]
	ldr r0, [fp, #-12]
	mul r0, r1, r0
	str r0, [fp, #-4]
	ldr r0, [fp, #-8]
	sub r0, r0, #1
	str r0, [fp, #-8]
	b .L401
.L403:
	ldr r0, [fp, #-4]
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L404:
	b .L403
.L405:
	b .L403
	.global getstr
	.type getstr , %function
getstr:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #12
	lsr sp, sp, #3
	lsl sp, sp, #3
.L406:
	str r0, [fp, #-12]
	bl getch
	mov r0, r0
	str r0, [fp, #-8]
	mov r0, #0
	str r0, [fp, #-4]
	ldr r0, [fp, #-8]
	cmp r0, #13
	movne r0, #1
	moveq r0, #0
	bne .L418
	b .L414
.L410:
	ldr r0, [fp, #-8]
	cmp r0, #13
	movne r0, #1
	moveq r0, #0
	bne .L418
	b .L419
.L411:
	ldr r2, [fp, #-8]
	ldr r1, [fp, #-12]
	ldr r0, [fp, #-4]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	str r2, [r0]
	ldr r0, [fp, #-4]
	add r0, r0, #1
	str r0, [fp, #-4]
	bl getch
	mov r0, r0
	str r0, [fp, #-8]
	b .L410
.L412:
	ldr r0, [fp, #-4]
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L414:
	b .L412
.L418:
	ldr r0, [fp, #-8]
	cmp r0, #10
	movne r0, #1
	moveq r0, #0
	bne .L411
	b .L420
.L419:
	b .L412
.L420:
	b .L412
	.global intpush
	.type intpush , %function
intpush:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #4
	lsr sp, sp, #3
	lsl sp, sp, #3
.L421:
	str r0, [fp, #-4]
	ldr r0, addr_intt_0
	ldr r0, [r0]
	add r1, r0, #1
	ldr r0, addr_intt_0
	str r1, [r0]
	ldr r2, [fp, #-4]
	ldr r0, addr_intt_0
	ldr r0, [r0]
	ldr r1, addr_ints_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	str r2, [r0]
	mov sp, fp
	pop {fp, lr}
	bx lr
	.global chapush
	.type chapush , %function
chapush:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #4
	lsr sp, sp, #3
	lsl sp, sp, #3
.L424:
	str r0, [fp, #-4]
	ldr r0, addr_chat_0
	ldr r0, [r0]
	add r1, r0, #1
	ldr r0, addr_chat_0
	str r1, [r0]
	ldr r2, [fp, #-4]
	ldr r0, addr_chat_0
	ldr r0, [r0]
	ldr r1, addr_chas_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	str r2, [r0]
	mov sp, fp
	pop {fp, lr}
	bx lr
	.global intpop
	.type intpop , %function
intpop:
	push {fp, lr}
	mov fp, sp
	lsr sp, sp, #3
	lsl sp, sp, #3
.L427:
	ldr r0, addr_intt_0
	ldr r0, [r0]
	sub r1, r0, #1
	ldr r0, addr_intt_0
	str r1, [r0]
	ldr r0, addr_intt_0
	ldr r0, [r0]
	add r0, r0, #1
	ldr r1, addr_ints_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
	.global chapop
	.type chapop , %function
chapop:
	push {fp, lr}
	mov fp, sp
	lsr sp, sp, #3
	lsl sp, sp, #3
.L429:
	ldr r0, addr_chat_0
	ldr r0, [r0]
	sub r1, r0, #1
	ldr r0, addr_chat_0
	str r1, [r0]
	ldr r0, addr_chat_0
	ldr r0, [r0]
	add r0, r0, #1
	ldr r1, addr_chas_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
	.global intadd
	.type intadd , %function
intadd:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #4
	lsr sp, sp, #3
	lsl sp, sp, #3
.L431:
	str r0, [fp, #-4]
	ldr r0, addr_intt_0
	ldr r0, [r0]
	ldr r1, addr_ints_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r1, [r0]
	mov r0, #10
	mul r2, r1, r0
	ldr r0, addr_intt_0
	ldr r0, [r0]
	ldr r1, addr_ints_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	str r2, [r0]
	ldr r0, addr_intt_0
	ldr r0, [r0]
	ldr r1, addr_ints_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r1, [r0]
	ldr r0, [fp, #-4]
	add r2, r1, r0
	ldr r0, addr_intt_0
	ldr r0, [r0]
	ldr r1, addr_ints_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	str r2, [r0]
	mov sp, fp
	pop {fp, lr}
	bx lr
	.global find
	.type find , %function
find:
	push {fp, lr}
	mov fp, sp
	lsr sp, sp, #3
	lsl sp, sp, #3
.L437:
	bl chapop
	mov r1, r0
	ldr r0, addr_c_0
	str r1, [r0]
	ldr r0, addr_ii_0
	ldr r0, [r0]
	ldr r1, addr_get2_0
	lsl r0, r0, #2
	add r1, r1, r0
	mov r1, r1
	mov r0, #32
	str r0, [r1]
	ldr r0, addr_c_0
	ldr r2, [r0]
	ldr r0, addr_ii_0
	ldr r0, [r0]
	add r0, r0, #1
	ldr r1, addr_get2_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	str r2, [r0]
	ldr r0, addr_ii_0
	ldr r0, [r0]
	add r1, r0, #2
	ldr r0, addr_ii_0
	str r1, [r0]
	ldr r0, addr_chat_0
	ldr r0, [r0]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	beq .L440
	b .L442
.L440:
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
	b .L441
.L441:
	mov r0, #1
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L442:
	b .L441
	.global main
	.type main , %function
main:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #20
	lsr sp, sp, #3
	lsl sp, sp, #3
.L443:
	mov r1, #0
	ldr r0, addr_intt_0
	str r1, [r0]
	mov r1, #0
	ldr r0, addr_chat_0
	str r1, [r0]
	ldr r0, addr_get_0
	mov r0, r0
	mov r0, r0
	bl getstr
	mov r0, r0
	str r0, [fp, #-20]
	ldr r0, addr_i_0
	ldr r1, [r0]
	ldr r0, [fp, #-20]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L446
	b .L448
.L445:
	ldr r0, addr_i_0
	ldr r1, [r0]
	ldr r0, [fp, #-20]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L446
	b .L665
.L446:
	ldr r0, addr_i_0
	ldr r0, [r0]
	ldr r1, addr_get_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	mov r0, r0
	bl isdigit
	mov r0, r0
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	beq .L449
	b .L453
.L447:
	ldr r0, addr_chat_0
	ldr r0, [r0]
	cmp r0, #0
	movgt r0, #1
	movle r0, #0
	bgt .L667
	b .L669
.L448:
	b .L447
.L449:
	ldr r0, addr_i_0
	ldr r0, [r0]
	ldr r1, addr_get_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r2, [r0]
	ldr r0, addr_ii_0
	ldr r0, [r0]
	ldr r1, addr_get2_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	str r2, [r0]
	ldr r0, addr_ii_0
	ldr r0, [r0]
	add r1, r0, #1
	ldr r0, addr_ii_0
	str r1, [r0]
	b .L451
.L450:
	ldr r0, addr_i_0
	ldr r0, [r0]
	ldr r1, addr_get_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r0, #40
	moveq r0, #1
	movne r0, #0
	beq .L456
	b .L459
.L451:
	ldr r0, addr_i_0
	ldr r0, [r0]
	add r1, r0, #1
	ldr r0, addr_i_0
	str r1, [r0]
	b .L445
.L453:
	b .L450
.L456:
	mov r0, #40
	bl chapush
	b .L457
.L457:
	ldr r0, addr_i_0
	ldr r0, [r0]
	ldr r1, addr_get_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r0, #94
	moveq r0, #1
	movne r0, #0
	beq .L460
	b .L463
.L459:
	b .L457
.L460:
	mov r0, #94
	bl chapush
	b .L461
.L461:
	ldr r0, addr_i_0
	ldr r0, [r0]
	ldr r1, addr_get_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r0, #41
	moveq r0, #1
	movne r0, #0
	beq .L464
	b .L467
.L463:
	b .L461
.L464:
	bl chapop
	mov r1, r0
	ldr r0, addr_c_0
	str r1, [r0]
	ldr r0, addr_c_0
	ldr r0, [r0]
	cmp r0, #40
	movne r0, #1
	moveq r0, #0
	bne .L469
	b .L471
.L465:
	ldr r0, addr_i_0
	ldr r0, [r0]
	ldr r1, addr_get_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r0, #43
	moveq r0, #1
	movne r0, #0
	beq .L475
	b .L478
.L467:
	b .L465
.L468:
	ldr r0, addr_c_0
	ldr r0, [r0]
	cmp r0, #40
	movne r0, #1
	moveq r0, #0
	bne .L469
	b .L474
.L469:
	ldr r0, addr_ii_0
	ldr r0, [r0]
	ldr r1, addr_get2_0
	lsl r0, r0, #2
	add r1, r1, r0
	mov r1, r1
	mov r0, #32
	str r0, [r1]
	ldr r0, addr_c_0
	ldr r2, [r0]
	ldr r0, addr_ii_0
	ldr r0, [r0]
	add r0, r0, #1
	ldr r1, addr_get2_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	str r2, [r0]
	ldr r0, addr_ii_0
	ldr r0, [r0]
	add r1, r0, #2
	ldr r0, addr_ii_0
	str r1, [r0]
	bl chapop
	mov r1, r0
	ldr r0, addr_c_0
	str r1, [r0]
	b .L468
.L470:
	b .L465
.L471:
	b .L470
.L474:
	b .L470
.L475:
	ldr r0, addr_chat_0
	ldr r0, [r0]
	ldr r1, addr_chas_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r0, #43
	moveq r0, #1
	movne r0, #0
	beq .L480
	b .L488
.L476:
	ldr r0, addr_i_0
	ldr r0, [r0]
	ldr r1, addr_get_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r0, #45
	moveq r0, #1
	movne r0, #0
	beq .L520
	b .L523
.L478:
	b .L476
.L479:
	ldr r0, addr_chat_0
	ldr r0, [r0]
	ldr r1, addr_chas_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r0, #43
	moveq r0, #1
	movne r0, #0
	beq .L480
	b .L509
.L480:
	bl find
	mov r0, r0
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	beq .L499
	b .L501
.L481:
	mov r0, #43
	bl chapush
	b .L476
.L488:
	b .L507
.L499:
	b .L481
.L500:
	b .L479
.L501:
	b .L500
.L503:
	ldr r0, addr_chat_0
	ldr r0, [r0]
	ldr r1, addr_chas_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r0, #94
	moveq r0, #1
	movne r0, #0
	beq .L480
	b .L519
.L504:
	ldr r0, addr_chat_0
	ldr r0, [r0]
	ldr r1, addr_chas_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r0, #37
	moveq r0, #1
	movne r0, #0
	beq .L480
	b .L517
.L505:
	ldr r0, addr_chat_0
	ldr r0, [r0]
	ldr r1, addr_chas_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r0, #47
	moveq r0, #1
	movne r0, #0
	beq .L480
	b .L515
.L506:
	ldr r0, addr_chat_0
	ldr r0, [r0]
	ldr r1, addr_chas_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r0, #42
	moveq r0, #1
	movne r0, #0
	beq .L480
	b .L513
.L507:
	ldr r0, addr_chat_0
	ldr r0, [r0]
	ldr r1, addr_chas_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r0, #45
	moveq r0, #1
	movne r0, #0
	beq .L480
	b .L511
.L509:
	b .L507
.L511:
	b .L506
.L513:
	b .L505
.L515:
	b .L504
.L517:
	b .L503
.L519:
	b .L481
.L520:
	ldr r0, addr_chat_0
	ldr r0, [r0]
	ldr r1, addr_chas_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r0, #43
	moveq r0, #1
	movne r0, #0
	beq .L525
	b .L533
.L521:
	ldr r0, addr_i_0
	ldr r0, [r0]
	ldr r1, addr_get_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r0, #42
	moveq r0, #1
	movne r0, #0
	beq .L565
	b .L568
.L523:
	b .L521
.L524:
	ldr r0, addr_chat_0
	ldr r0, [r0]
	ldr r1, addr_chas_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r0, #43
	moveq r0, #1
	movne r0, #0
	beq .L525
	b .L554
.L525:
	bl find
	mov r0, r0
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	beq .L544
	b .L546
.L526:
	mov r0, #45
	bl chapush
	b .L521
.L533:
	b .L552
.L544:
	b .L526
.L545:
	b .L524
.L546:
	b .L545
.L548:
	ldr r0, addr_chat_0
	ldr r0, [r0]
	ldr r1, addr_chas_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r0, #94
	moveq r0, #1
	movne r0, #0
	beq .L525
	b .L564
.L549:
	ldr r0, addr_chat_0
	ldr r0, [r0]
	ldr r1, addr_chas_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r0, #37
	moveq r0, #1
	movne r0, #0
	beq .L525
	b .L562
.L550:
	ldr r0, addr_chat_0
	ldr r0, [r0]
	ldr r1, addr_chas_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r0, #47
	moveq r0, #1
	movne r0, #0
	beq .L525
	b .L560
.L551:
	ldr r0, addr_chat_0
	ldr r0, [r0]
	ldr r1, addr_chas_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r0, #42
	moveq r0, #1
	movne r0, #0
	beq .L525
	b .L558
.L552:
	ldr r0, addr_chat_0
	ldr r0, [r0]
	ldr r1, addr_chas_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r0, #45
	moveq r0, #1
	movne r0, #0
	beq .L525
	b .L556
.L554:
	b .L552
.L556:
	b .L551
.L558:
	b .L550
.L560:
	b .L549
.L562:
	b .L548
.L564:
	b .L526
.L565:
	ldr r0, addr_chat_0
	ldr r0, [r0]
	ldr r1, addr_chas_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r0, #42
	moveq r0, #1
	movne r0, #0
	beq .L570
	b .L576
.L566:
	ldr r0, addr_i_0
	ldr r0, [r0]
	ldr r1, addr_get_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r0, #47
	moveq r0, #1
	movne r0, #0
	beq .L598
	b .L601
.L568:
	b .L566
.L569:
	ldr r0, addr_chat_0
	ldr r0, [r0]
	ldr r1, addr_chas_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r0, #42
	moveq r0, #1
	movne r0, #0
	beq .L570
	b .L591
.L570:
	bl find
	mov r0, r0
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	beq .L583
	b .L585
.L571:
	mov r0, #42
	bl chapush
	b .L566
.L576:
	b .L589
.L583:
	b .L571
.L584:
	b .L569
.L585:
	b .L584
.L587:
	ldr r0, addr_chat_0
	ldr r0, [r0]
	ldr r1, addr_chas_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r0, #94
	moveq r0, #1
	movne r0, #0
	beq .L570
	b .L597
.L588:
	ldr r0, addr_chat_0
	ldr r0, [r0]
	ldr r1, addr_chas_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r0, #37
	moveq r0, #1
	movne r0, #0
	beq .L570
	b .L595
.L589:
	ldr r0, addr_chat_0
	ldr r0, [r0]
	ldr r1, addr_chas_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r0, #47
	moveq r0, #1
	movne r0, #0
	beq .L570
	b .L593
.L591:
	b .L589
.L593:
	b .L588
.L595:
	b .L587
.L597:
	b .L571
.L598:
	ldr r0, addr_chat_0
	ldr r0, [r0]
	ldr r1, addr_chas_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r0, #42
	moveq r0, #1
	movne r0, #0
	beq .L603
	b .L609
.L599:
	ldr r0, addr_i_0
	ldr r0, [r0]
	ldr r1, addr_get_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r0, #37
	moveq r0, #1
	movne r0, #0
	beq .L631
	b .L634
.L601:
	b .L599
.L602:
	ldr r0, addr_chat_0
	ldr r0, [r0]
	ldr r1, addr_chas_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r0, #42
	moveq r0, #1
	movne r0, #0
	beq .L603
	b .L624
.L603:
	bl find
	mov r0, r0
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	beq .L616
	b .L618
.L604:
	mov r0, #47
	bl chapush
	b .L599
.L609:
	b .L622
.L616:
	b .L604
.L617:
	b .L602
.L618:
	b .L617
.L620:
	ldr r0, addr_chat_0
	ldr r0, [r0]
	ldr r1, addr_chas_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r0, #94
	moveq r0, #1
	movne r0, #0
	beq .L603
	b .L630
.L621:
	ldr r0, addr_chat_0
	ldr r0, [r0]
	ldr r1, addr_chas_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r0, #37
	moveq r0, #1
	movne r0, #0
	beq .L603
	b .L628
.L622:
	ldr r0, addr_chat_0
	ldr r0, [r0]
	ldr r1, addr_chas_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r0, #47
	moveq r0, #1
	movne r0, #0
	beq .L603
	b .L626
.L624:
	b .L622
.L626:
	b .L621
.L628:
	b .L620
.L630:
	b .L604
.L631:
	ldr r0, addr_chat_0
	ldr r0, [r0]
	ldr r1, addr_chas_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r0, #42
	moveq r0, #1
	movne r0, #0
	beq .L636
	b .L642
.L632:
	ldr r0, addr_ii_0
	ldr r0, [r0]
	ldr r1, addr_get2_0
	lsl r0, r0, #2
	add r1, r1, r0
	mov r1, r1
	mov r0, #32
	str r0, [r1]
	ldr r0, addr_ii_0
	ldr r0, [r0]
	add r1, r0, #1
	ldr r0, addr_ii_0
	str r1, [r0]
	b .L451
.L634:
	b .L632
.L635:
	ldr r0, addr_chat_0
	ldr r0, [r0]
	ldr r1, addr_chas_0
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r0, #42
	b .LT0

.LTORG
addr_ints_0:
	.word ints
addr_intt_0:
	.word intt
addr_chas_0:
	.word chas
addr_chat_0:
	.word chat
addr_i_0:
	.word i
addr_ii_0:
	.word ii
addr_c_0:
	.word c
addr_get_0:
	.word get
addr_get2_0:
	.word get2
.LT0:
	moveq r0, #1
	movne r0, #0
	beq .L636
	b .L657
.L636:
	bl find
	mov r0, r0
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	beq .L649
	b .L651
.L637:
	mov r0, #37
	bl chapush
	b .L632
.L642:
	b .L655
.L649:
	b .L637
.L650:
	b .L635
.L651:
	b .L650
.L653:
	ldr r0, addr_chat_1
	ldr r0, [r0]
	ldr r1, addr_chas_1
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r0, #94
	moveq r0, #1
	movne r0, #0
	beq .L636
	b .L663
.L654:
	ldr r0, addr_chat_1
	ldr r0, [r0]
	ldr r1, addr_chas_1
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r0, #37
	moveq r0, #1
	movne r0, #0
	beq .L636
	b .L661
.L655:
	ldr r0, addr_chat_1
	ldr r0, [r0]
	ldr r1, addr_chas_1
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r0, #47
	moveq r0, #1
	movne r0, #0
	beq .L636
	b .L659
.L657:
	b .L655
.L659:
	b .L654
.L661:
	b .L653
.L663:
	b .L637
.L665:
	b .L447
.L666:
	ldr r0, addr_chat_1
	ldr r0, [r0]
	cmp r0, #0
	movgt r0, #1
	movle r0, #0
	bgt .L667
	b .L673
.L667:
	bl chapop
	mov r0, r0
	str r0, [fp, #-16]
	ldr r0, addr_ii_1
	ldr r0, [r0]
	ldr r1, addr_get2_1
	lsl r0, r0, #2
	add r1, r1, r0
	mov r1, r1
	mov r0, #32
	str r0, [r1]
	ldr r2, [fp, #-16]
	ldr r0, addr_ii_1
	ldr r0, [r0]
	add r0, r0, #1
	ldr r1, addr_get2_1
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	str r2, [r0]
	ldr r0, addr_ii_1
	ldr r0, [r0]
	add r1, r0, #2
	ldr r0, addr_ii_1
	str r1, [r0]
	b .L666
.L668:
	ldr r0, addr_ii_1
	ldr r0, [r0]
	ldr r1, addr_get2_1
	lsl r0, r0, #2
	add r1, r1, r0
	mov r1, r1
	mov r0, #64
	str r0, [r1]
	mov r1, #1
	ldr r0, addr_i_1
	str r1, [r0]
	ldr r0, addr_i_1
	ldr r0, [r0]
	ldr r1, addr_get2_1
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r0, #64
	movne r0, #1
	moveq r0, #0
	bne .L676
	b .L679
.L669:
	b .L668
.L673:
	b .L668
.L675:
	ldr r0, addr_i_1
	ldr r0, [r0]
	ldr r1, addr_get2_1
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r0, #64
	movne r0, #1
	moveq r0, #0
	bne .L676
	b .L741
.L676:
	ldr r0, addr_i_1
	ldr r0, [r0]
	ldr r1, addr_get2_1
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r0, #43
	moveq r0, #1
	movne r0, #0
	beq .L680
	b .L689
.L677:
	ldr r0, addr_ints_1
	add r0, r0, #4
	mov r0, r0
	ldr r0, [r0]
	mov r0, r0
	bl putint
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L679:
	b .L677
.L680:
	bl intpop
	mov r0, r0
	str r0, [fp, #-12]
	bl intpop
	mov r0, r0
	str r0, [fp, #-8]
	ldr r0, addr_i_1
	ldr r0, [r0]
	ldr r1, addr_get2_1
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r0, #43
	moveq r0, #1
	movne r0, #0
	beq .L703
	b .L706
.L681:
	ldr r0, addr_i_1
	ldr r0, [r0]
	ldr r1, addr_get2_1
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r0, #32
	movne r0, #1
	moveq r0, #0
	bne .L727
	b .L730
.L682:
	ldr r0, addr_i_1
	ldr r0, [r0]
	add r1, r0, #1
	ldr r0, addr_i_1
	str r1, [r0]
	b .L675
.L683:
	ldr r0, addr_i_1
	ldr r0, [r0]
	ldr r1, addr_get2_1
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r0, #94
	moveq r0, #1
	movne r0, #0
	beq .L680
	b .L699
.L684:
	ldr r0, addr_i_1
	ldr r0, [r0]
	ldr r1, addr_get2_1
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r0, #37
	moveq r0, #1
	movne r0, #0
	beq .L680
	b .L697
.L685:
	ldr r0, addr_i_1
	ldr r0, [r0]
	ldr r1, addr_get2_1
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r0, #47
	moveq r0, #1
	movne r0, #0
	beq .L680
	b .L695
.L686:
	ldr r0, addr_i_1
	ldr r0, [r0]
	ldr r1, addr_get2_1
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r0, #42
	moveq r0, #1
	movne r0, #0
	beq .L680
	b .L693
.L687:
	ldr r0, addr_i_1
	ldr r0, [r0]
	ldr r1, addr_get2_1
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r0, #45
	moveq r0, #1
	movne r0, #0
	beq .L680
	b .L691
.L689:
	b .L687
.L691:
	b .L686
.L693:
	b .L685
.L695:
	b .L684
.L697:
	b .L683
.L699:
	b .L681
.L703:
	ldr r1, [fp, #-12]
	ldr r0, [fp, #-8]
	add r0, r1, r0
	str r0, [fp, #-4]
	b .L704
.L704:
	ldr r0, addr_i_1
	ldr r0, [r0]
	ldr r1, addr_get2_1
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r0, #45
	moveq r0, #1
	movne r0, #0
	beq .L707
	b .L710
.L706:
	b .L704
.L707:
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-12]
	sub r0, r1, r0
	str r0, [fp, #-4]
	b .L708
.L708:
	ldr r0, addr_i_1
	ldr r0, [r0]
	ldr r1, addr_get2_1
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r0, #42
	moveq r0, #1
	movne r0, #0
	beq .L711
	b .L714
.L710:
	b .L708
.L711:
	ldr r1, [fp, #-12]
	ldr r0, [fp, #-8]
	mul r0, r1, r0
	str r0, [fp, #-4]
	b .L712
.L712:
	ldr r0, addr_i_1
	ldr r0, [r0]
	ldr r1, addr_get2_1
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r0, #47
	moveq r0, #1
	movne r0, #0
	beq .L715
	b .L718
.L714:
	b .L712
.L715:
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-12]
	sdiv r0, r1, r0
	str r0, [fp, #-4]
	b .L716
.L716:
	ldr r0, addr_i_1
	ldr r0, [r0]
	ldr r1, addr_get2_1
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r0, #37
	moveq r0, #1
	movne r0, #0
	beq .L719
	b .L722
.L718:
	b .L716
.L719:
	ldr r2, [fp, #-8]
	ldr r1, [fp, #-12]
	sdiv r0, r2, r1
	mul r0, r0, r1
	sub r0, r2, r0
	str r0, [fp, #-4]
	b .L720
.L720:
	ldr r0, addr_i_1
	ldr r0, [r0]
	ldr r1, addr_get2_1
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r0, #94
	moveq r0, #1
	movne r0, #0
	beq .L723
	b .L726
.L722:
	b .L720
.L723:
	ldr r0, [fp, #-8]
	ldr r1, [fp, #-12]
	mov r0, r0
	mov r1, r1
	bl power
	mov r0, r0
	str r0, [fp, #-4]
	b .L724
.L724:
	ldr r0, [fp, #-4]
	mov r0, r0
	bl intpush
	b .L682
.L726:
	b .L724
.L727:
	ldr r0, addr_i_1
	ldr r0, [r0]
	ldr r1, addr_get2_1
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	sub r0, r0, #48
	mov r0, r0
	bl intpush
	mov r1, #1
	ldr r0, addr_ii_1
	str r1, [r0]
	ldr r0, addr_i_1
	ldr r1, [r0]
	ldr r0, addr_ii_1
	ldr r0, [r0]
	add r0, r1, r0
	ldr r1, addr_get2_1
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r0, #32
	movne r0, #1
	moveq r0, #0
	bne .L733
	b .L736
.L728:
	b .L682
.L730:
	b .L728
.L732:
	ldr r0, addr_i_1
	ldr r1, [r0]
	ldr r0, addr_ii_1
	ldr r0, [r0]
	add r0, r1, r0
	ldr r1, addr_get2_1
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r0, #32
	movne r0, #1
	moveq r0, #0
	bne .L733
	b .L739
.L733:
	ldr r0, addr_i_1
	ldr r1, [r0]
	ldr r0, addr_ii_1
	ldr r0, [r0]
	add r0, r1, r0
	ldr r1, addr_get2_1
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	sub r0, r0, #48
	mov r0, r0
	bl intadd
	ldr r0, addr_ii_1
	ldr r0, [r0]
	add r1, r0, #1
	ldr r0, addr_ii_1
	str r1, [r0]
	b .L732
.L734:
	ldr r0, addr_i_1
	ldr r1, [r0]
	ldr r0, addr_ii_1
	ldr r0, [r0]
	add r0, r1, r0
	sub r1, r0, #1
	ldr r0, addr_i_1
	str r1, [r0]
	b .L728
.L736:
	b .L734
.L739:
	b .L734
.L741:
	b .L677

.LTORG
addr_ints_1:
	.word ints
addr_intt_1:
	.word intt
addr_chas_1:
	.word chas
addr_chat_1:
	.word chat
addr_i_1:
	.word i
addr_ii_1:
	.word ii
addr_c_1:
	.word c
addr_get_1:
	.word get
addr_get2_1:
	.word get2
