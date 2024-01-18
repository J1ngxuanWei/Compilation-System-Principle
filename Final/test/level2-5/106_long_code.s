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
	.global bubblesort
	.type bubblesort , %function
bubblesort:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #16
	lsr sp, sp, #3
	lsl sp, sp, #3
.L531:
	str r0, [fp, #-16]
	mov r0, #0
	str r0, [fp, #-12]
	ldr r1, [fp, #-12]
	ldr r0, addr_n_0
	ldr r0, [r0]
	sub r0, r0, #1
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L536
	b .L538
.L535:
	ldr r1, [fp, #-12]
	ldr r0, addr_n_0
	ldr r0, [r0]
	sub r0, r0, #1
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L536
	b .L560
.L536:
	mov r0, #0
	str r0, [fp, #-8]
	ldr r2, [fp, #-8]
	ldr r0, addr_n_0
	ldr r1, [r0]
	ldr r0, [fp, #-12]
	sub r0, r1, r0
	sub r0, r0, #1
	cmp r2, r0
	movlt r0, #1
	movge r0, #0
	blt .L540
	b .L542
.L537:
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L538:
	b .L537
.L539:
	ldr r2, [fp, #-8]
	ldr r0, addr_n_0
	ldr r1, [r0]
	ldr r0, [fp, #-12]
	sub r0, r1, r0
	sub r0, r0, #1
	cmp r2, r0
	movlt r0, #1
	movge r0, #0
	blt .L540
	b .L559
.L540:
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-8]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r2, [r0]
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-8]
	add r0, r0, #1
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r2, r0
	movgt r0, #1
	movle r0, #0
	bgt .L543
	b .L549
.L541:
	ldr r0, [fp, #-12]
	add r0, r0, #1
	str r0, [fp, #-12]
	b .L535
.L542:
	b .L541
.L543:
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-8]
	add r0, r0, #1
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
	ldr r0, [fp, #-8]
	add r0, r0, #1
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
	b .L544
.L544:
	ldr r0, [fp, #-8]
	add r0, r0, #1
	str r0, [fp, #-8]
	b .L539
.L549:
	b .L544
.L559:
	b .L541
.L560:
	b .L537
	.global insertsort
	.type insertsort , %function
insertsort:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #16
	lsr sp, sp, #3
	lsl sp, sp, #3
.L561:
	str r0, [fp, #-16]
	mov r0, #1
	str r0, [fp, #-12]
	ldr r1, [fp, #-12]
	ldr r0, addr_n_0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L565
	b .L567
.L564:
	ldr r1, [fp, #-12]
	ldr r0, addr_n_0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L565
	b .L591
.L565:
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-12]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	str r0, [fp, #-8]
	ldr r0, [fp, #-12]
	sub r0, r0, #1
	str r0, [fp, #-4]
	ldr r1, [fp, #-4]
	mov r0, #0
	sub r0, r0, #1
	cmp r1, r0
	movgt r0, #1
	movle r0, #0
	bgt .L584
	b .L576
.L566:
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L567:
	b .L566
.L572:
	ldr r1, [fp, #-4]
	mov r0, #0
	sub r0, r0, #1
	cmp r1, r0
	movgt r0, #1
	movle r0, #0
	bgt .L584
	b .L585
.L573:
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-4]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r2, [r0]
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-4]
	add r0, r0, #1
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	str r2, [r0]
	ldr r0, [fp, #-4]
	sub r0, r0, #1
	str r0, [fp, #-4]
	b .L572
.L574:
	ldr r2, [fp, #-8]
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-4]
	add r0, r0, #1
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	str r2, [r0]
	ldr r0, [fp, #-12]
	add r0, r0, #1
	str r0, [fp, #-12]
	b .L564
.L576:
	b .L574
.L584:
	ldr r2, [fp, #-8]
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-4]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	cmp r2, r0
	movlt r0, #1
	movge r0, #0
	blt .L573
	b .L588
.L585:
	b .L574
.L588:
	b .L574
.L591:
	b .L566
	.global QuickSort
	.type QuickSort , %function
QuickSort:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #28
	lsr sp, sp, #3
	lsl sp, sp, #3
.L592:
	str r0, [fp, #-28]
	str r1, [fp, #-24]
	str r2, [fp, #-20]
	ldr r1, [fp, #-24]
	ldr r0, [fp, #-20]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L596
	b .L598
.L596:
	ldr r0, [fp, #-24]
	str r0, [fp, #-16]
	ldr r0, [fp, #-20]
	str r0, [fp, #-12]
	ldr r1, [fp, #-28]
	ldr r0, [fp, #-24]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	str r0, [fp, #-8]
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-12]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L605
	b .L607
.L597:
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L598:
	b .L597
.L604:
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-12]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L605
	b .L648
.L605:
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-12]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L616
	b .L612
.L606:
	ldr r2, [fp, #-8]
	ldr r1, [fp, #-28]
	ldr r0, [fp, #-16]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	str r2, [r0]
	ldr r0, [fp, #-16]
	sub r0, r0, #1
	str r0, [fp, #-4]
	ldr r0, [fp, #-28]
	ldr r1, [fp, #-24]
	ldr r2, [fp, #-4]
	mov r0, r0
	mov r1, r1
	mov r2, r2
	bl QuickSort
	mov r0, r0
	str r0, [fp, #-4]
	ldr r0, [fp, #-16]
	add r0, r0, #1
	str r0, [fp, #-4]
	ldr r0, [fp, #-28]
	ldr r1, [fp, #-4]
	ldr r2, [fp, #-20]
	mov r0, r0
	mov r1, r1
	mov r2, r2
	bl QuickSort
	mov r0, r0
	str r0, [fp, #-4]
	b .L597
.L607:
	b .L606
.L608:
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-12]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L616
	b .L617
.L609:
	ldr r0, [fp, #-12]
	sub r0, r0, #1
	str r0, [fp, #-12]
	b .L608
.L610:
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-12]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L621
	b .L623
.L612:
	b .L610
.L616:
	ldr r1, [fp, #-28]
	ldr r0, [fp, #-12]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r1, [r0]
	ldr r0, [fp, #-8]
	sub r0, r0, #1
	cmp r1, r0
	movgt r0, #1
	movle r0, #0
	bgt .L609
	b .L620
.L617:
	b .L610
.L620:
	b .L610
.L621:
	ldr r1, [fp, #-28]
	ldr r0, [fp, #-12]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r2, [r0]
	ldr r1, [fp, #-28]
	ldr r0, [fp, #-16]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	str r2, [r0]
	ldr r0, [fp, #-16]
	add r0, r0, #1
	str r0, [fp, #-16]
	b .L622
.L622:
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-12]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L636
	b .L632
.L623:
	b .L622
.L628:
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-12]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L636
	b .L637
.L629:
	ldr r0, [fp, #-16]
	add r0, r0, #1
	str r0, [fp, #-16]
	b .L628
.L630:
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-12]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L641
	b .L643
.L632:
	b .L630
.L636:
	ldr r1, [fp, #-28]
	ldr r0, [fp, #-16]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r1, [r0]
	ldr r0, [fp, #-8]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L629
	b .L640
.L637:
	b .L630
.L640:
	b .L630
.L641:
	ldr r1, [fp, #-28]
	ldr r0, [fp, #-16]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r2, [r0]
	ldr r1, [fp, #-28]
	ldr r0, [fp, #-12]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	str r2, [r0]
	ldr r0, [fp, #-12]
	sub r0, r0, #1
	str r0, [fp, #-12]
	b .L642
.L642:
	b .L604
.L643:
	b .L642
.L648:
	b .L606
	.global getMid
	.type getMid , %function
getMid:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #8
	lsr sp, sp, #3
	lsl sp, sp, #3
.L652:
	str r0, [fp, #-8]
	ldr r0, addr_n_0
	ldr r0, [r0]
	and r0, r0, #1
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	beq .L655
	b .L658
.L655:
	ldr r0, addr_n_0
	ldr r1, [r0]
	ldr r0, =2
	sdiv r0, r1, r0
	str r0, [fp, #-4]
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-4]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r2, [r0]
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-4]
	sub r0, r0, #1
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	add r1, r2, r0
	ldr r0, =2
	sdiv r0, r1, r0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
	b .L657
.L656:
	ldr r0, addr_n_0
	ldr r1, [r0]
	ldr r0, =2
	sdiv r0, r1, r0
	str r0, [fp, #-4]
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-4]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
	b .L657
.L657:
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L658:
	b .L656
	.global getMost
	.type getMost , %function
getMost:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #180
	sub sp, sp, #3840
	lsr sp, sp, #3
	lsl sp, sp, #3
.L665:
	str r0, [fp, #-20]
	mov r0, #0
	str r0, [fp, #-16]
	ldr r0, [fp, #-16]
	cmp r0, #1000
	movlt r0, #1
	movge r0, #0
	blt .L670
	b .L672
.L669:
	ldr r0, [fp, #-16]
	cmp r0, #1000
	movlt r0, #1
	movge r0, #0
	blt .L670
	b .L674
.L670:
	ldr r2, [fp, #-16]
	ldr r0, =-4020
	add r1, fp, r0
	lsl r0, r2, #2
	add r1, r1, r0
	mov r1, r1
	mov r0, #0
	str r0, [r1]
	ldr r0, [fp, #-16]
	add r0, r0, #1
	str r0, [fp, #-16]
	b .L669
.L671:
	mov r0, #0
	str r0, [fp, #-16]
	mov r0, #0
	str r0, [fp, #-12]
	ldr r1, [fp, #-16]
	ldr r0, addr_n_0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L678
	b .L680
.L672:
	b .L671
.L674:
	b .L671
.L677:
	ldr r1, [fp, #-16]
	ldr r0, addr_n_0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L678
	b .L691
.L678:
	ldr r1, [fp, #-20]
	ldr r0, [fp, #-16]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	str r0, [fp, #-4]
	ldr r2, [fp, #-4]
	ldr r0, =-4020
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	add r3, r0, #1
	ldr r2, [fp, #-4]
	ldr r0, =-4020
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	str r3, [r0]
	ldr r2, [fp, #-4]
	ldr r0, =-4020
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r1, [r0]
	ldr r0, [fp, #-12]
	cmp r1, r0
	movgt r0, #1
	movle r0, #0
	bgt .L686
	b .L689
.L679:
	ldr r0, [fp, #-8]
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L680:
	b .L679
.L686:
	ldr r2, [fp, #-4]
	ldr r0, =-4020
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	str r0, [fp, #-12]
	ldr r0, [fp, #-4]
	str r0, [fp, #-8]
	b .L687
.L687:
	ldr r0, [fp, #-16]
	add r0, r0, #1
	str r0, [fp, #-16]
	b .L677
.L689:
	b .L687
.L691:
	b .L679
	.global revert
	.type revert , %function
revert:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #16
	lsr sp, sp, #3
	lsl sp, sp, #3
.L692:
	str r0, [fp, #-16]
	mov r0, #0
	str r0, [fp, #-8]
	mov r0, #0
	str r0, [fp, #-4]
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-4]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L698
	b .L700
.L697:
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-4]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L698
	b .L709
.L698:
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-8]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	str r0, [fp, #-12]
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-4]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r2, [r0]
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-8]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	str r2, [r0]
	ldr r2, [fp, #-12]
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-4]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	str r2, [r0]
	ldr r0, [fp, #-8]
	add r0, r0, #1
	str r0, [fp, #-8]
	ldr r0, [fp, #-4]
	sub r0, r0, #1
	str r0, [fp, #-4]
	b .L697
.L699:
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L700:
	b .L699
.L709:
	b .L699
	.global arrCopy
	.type arrCopy , %function
arrCopy:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #12
	lsr sp, sp, #3
	lsl sp, sp, #3
.L710:
	str r0, [fp, #-12]
	str r1, [fp, #-8]
	mov r0, #0
	str r0, [fp, #-4]
	ldr r1, [fp, #-4]
	ldr r0, addr_n_0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L715
	b .L717
.L714:
	ldr r1, [fp, #-4]
	ldr r0, addr_n_0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L715
	b .L722
.L715:
	ldr r1, [fp, #-12]
	ldr r0, [fp, #-4]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r2, [r0]
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-4]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	str r2, [r0]
	ldr r0, [fp, #-4]
	add r0, r0, #1
	str r0, [fp, #-4]
	b .L714
.L716:
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L717:
	b .L716
.L722:
	b .L716
	.global calSum
	.type calSum , %function
calSum:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #16
	lsr sp, sp, #3
	lsl sp, sp, #3
.L723:
	str r0, [fp, #-16]
	str r1, [fp, #-12]
	mov r0, #0
	str r0, [fp, #-8]
	mov r0, #0
	str r0, [fp, #-4]
	ldr r1, [fp, #-4]
	ldr r0, addr_n_0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L729
	b .L731
.L728:
	ldr r1, [fp, #-4]
	ldr r0, addr_n_0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L729
	b .L742
.L729:
	ldr r2, [fp, #-8]
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-4]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	add r0, r2, r0
	str r0, [fp, #-8]
	ldr r2, [fp, #-4]
	ldr r1, [fp, #-12]
	sdiv r0, r2, r1
	mul r0, r0, r1
	sub r1, r2, r0
	ldr r0, [fp, #-12]
	sub r0, r0, #1
	cmp r1, r0
	movne r0, #1
	moveq r0, #0
	bne .L734
	b .L737
.L730:
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L731:
	b .L730
.L734:
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-4]
	lsl r0, r0, #2
	add r1, r1, r0
	mov r1, r1
	mov r0, #0
	str r0, [r1]
	b .L736
.L735:
	ldr r2, [fp, #-8]
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-4]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	str r2, [r0]
	mov r0, #0
	str r0, [fp, #-8]
	b .L736
.L736:
	ldr r0, [fp, #-4]
	add r0, r0, #1
	str r0, [fp, #-4]
	b .L728
.L737:
	b .L735
.L742:
	b .L730
	.global avgPooling
	.type avgPooling , %function
avgPooling:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #20
	lsr sp, sp, #3
	lsl sp, sp, #3
.L743:
	str r0, [fp, #-20]
	str r1, [fp, #-16]
	mov r0, #0
	str r0, [fp, #-8]
	mov r0, #0
	str r0, [fp, #-12]
	ldr r1, [fp, #-8]
	ldr r0, addr_n_0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L750
	b .L752
.L749:
	ldr r1, [fp, #-8]
	ldr r0, addr_n_0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L750
	b .L773
.L750:
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-16]
	sub r0, r0, #1
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L753
	b .L756
.L751:
	ldr r0, addr_n_0
	ldr r1, [r0]
	ldr r0, [fp, #-16]
	sub r0, r1, r0
	add r0, r0, #1
	str r0, [fp, #-8]
	ldr r1, [fp, #-8]
	ldr r0, addr_n_0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L775
	b .L777
.L752:
	b .L751
.L753:
	ldr r2, [fp, #-12]
	ldr r1, [fp, #-20]
	ldr r0, [fp, #-8]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	add r0, r2, r0
	str r0, [fp, #-12]
	b .L755
.L754:
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-16]
	sub r0, r0, #1
	cmp r1, r0
	moveq r0, #1
	movne r0, #0
	beq .L759
	b .L762
.L755:
	ldr r0, [fp, #-8]
	add r0, r0, #1
	str r0, [fp, #-8]
	b .L749
.L756:
	b .L754
.L759:
	ldr r0, [fp, #-20]
	mov r0, r0
	ldr r0, [r0]
	str r0, [fp, #-4]
	ldr r1, [fp, #-12]
	ldr r0, [fp, #-16]
	sdiv r1, r1, r0
	ldr r0, [fp, #-20]
	mov r0, r0
	str r1, [r0]
	b .L761
.L760:
	ldr r2, [fp, #-12]
	ldr r1, [fp, #-20]
	ldr r0, [fp, #-8]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	add r1, r2, r0
	ldr r0, [fp, #-4]
	sub r0, r1, r0
	str r0, [fp, #-12]
	ldr r2, [fp, #-20]
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-16]
	sub r0, r1, r0
	add r0, r0, #1
	lsl r0, r0, #2
	add r0, r2, r0
	mov r0, r0
	ldr r0, [r0]
	str r0, [fp, #-4]
	ldr r1, [fp, #-12]
	ldr r0, [fp, #-16]
	sdiv r3, r1, r0
	ldr r2, [fp, #-20]
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-16]
	sub r0, r1, r0
	add r0, r0, #1
	lsl r0, r0, #2
	add r0, r2, r0
	mov r0, r0
	str r3, [r0]
	b .L761
.L761:
	b .L755
.L762:
	b .L760
.L773:
	b .L751
.L774:
	ldr r1, [fp, #-8]
	ldr r0, addr_n_0
	ldr r0, [r0]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L775
	b .L780
.L775:
	ldr r1, [fp, #-20]
	ldr r0, [fp, #-8]
	lsl r0, r0, #2
	add r1, r1, r0
	mov r1, r1
	mov r0, #0
	str r0, [r1]
	ldr r0, [fp, #-8]
	add r0, r0, #1
	str r0, [fp, #-8]
	b .L774
.L776:
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L777:
	b .L776
.L780:
	b .L776
	.global main
	.type main , %function
main:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #264
	lsr sp, sp, #3
	lsl sp, sp, #3
.L781:
	mov r1, #32
	ldr r0, addr_n_0
	str r1, [r0]
	mvn r0, #135
	add r1, fp, r0
	mov r1, r1
	mov r0, #7
	str r0, [r1]
	mvn r0, #135
	add r0, fp, r0
	b .LT0

.LTORG
addr_n_0:
	.word n
.LT0:
	add r1, r0, #4
	mov r1, r1
	mov r0, #23
	str r0, [r1]
	mvn r0, #135
	add r0, fp, r0
	add r1, r0, #8
	mov r1, r1
	mov r0, #89
	str r0, [r1]
	mvn r0, #135
	add r0, fp, r0
	add r1, r0, #12
	mov r1, r1
	mov r0, #26
	str r0, [r1]
	mvn r0, #135
	add r0, fp, r0
	add r1, r0, #16
	mov r1, r1
	ldr r0, =282
	str r0, [r1]
	mvn r0, #135
	add r0, fp, r0
	add r1, r0, #20
	mov r1, r1
	mov r0, #254
	str r0, [r1]
	mvn r0, #135
	add r0, fp, r0
	add r1, r0, #24
	mov r1, r1
	mov r0, #27
	str r0, [r1]
	mvn r0, #135
	add r0, fp, r0
	add r1, r0, #28
	mov r1, r1
	mov r0, #5
	str r0, [r1]
	mvn r0, #135
	add r0, fp, r0
	add r1, r0, #32
	mov r1, r1
	mov r0, #83
	str r0, [r1]
	mvn r0, #135
	add r0, fp, r0
	add r1, r0, #36
	mov r1, r1
	ldr r0, =273
	str r0, [r1]
	mvn r0, #135
	add r0, fp, r0
	add r1, r0, #40
	mov r1, r1
	ldr r0, =574
	str r0, [r1]
	mvn r0, #135
	add r0, fp, r0
	add r1, r0, #44
	mov r1, r1
	ldr r0, =905
	str r0, [r1]
	mvn r0, #135
	add r0, fp, r0
	add r1, r0, #48
	mov r1, r1
	ldr r0, =354
	str r0, [r1]
	mvn r0, #135
	add r0, fp, r0
	add r1, r0, #52
	mov r1, r1
	ldr r0, =657
	str r0, [r1]
	mvn r0, #135
	add r0, fp, r0
	add r1, r0, #56
	mov r1, r1
	ldr r0, =935
	str r0, [r1]
	mvn r0, #135
	add r0, fp, r0
	add r1, r0, #60
	mov r1, r1
	mov r0, #264
	str r0, [r1]
	mvn r0, #135
	add r0, fp, r0
	add r1, r0, #64
	mov r1, r1
	ldr r0, =639
	str r0, [r1]
	mvn r0, #135
	add r0, fp, r0
	add r1, r0, #68
	mov r1, r1
	ldr r0, =459
	str r0, [r1]
	mvn r0, #135
	add r0, fp, r0
	add r1, r0, #72
	mov r1, r1
	mov r0, #29
	str r0, [r1]
	mvn r0, #135
	add r0, fp, r0
	add r1, r0, #76
	mov r1, r1
	mov r0, #68
	str r0, [r1]
	mvn r0, #135
	add r0, fp, r0
	add r1, r0, #80
	mov r1, r1
	ldr r0, =929
	str r0, [r1]
	mvn r0, #135
	add r0, fp, r0
	add r1, r0, #84
	mov r1, r1
	mov r0, #756
	str r0, [r1]
	mvn r0, #135
	add r0, fp, r0
	add r1, r0, #88
	mov r1, r1
	mov r0, #452
	str r0, [r1]
	mvn r0, #135
	add r0, fp, r0
	add r1, r0, #92
	mov r1, r1
	ldr r0, =279
	str r0, [r1]
	mvn r0, #135
	add r0, fp, r0
	add r1, r0, #96
	mov r1, r1
	mov r0, #58
	str r0, [r1]
	mvn r0, #135
	add r0, fp, r0
	add r1, r0, #100
	mov r1, r1
	mov r0, #87
	str r0, [r1]
	mvn r0, #135
	add r0, fp, r0
	add r1, r0, #104
	mov r1, r1
	mov r0, #96
	str r0, [r1]
	mvn r0, #135
	add r0, fp, r0
	add r1, r0, #108
	mov r1, r1
	mov r0, #36
	str r0, [r1]
	mvn r0, #135
	add r0, fp, r0
	add r1, r0, #112
	mov r1, r1
	mov r0, #39
	str r0, [r1]
	mvn r0, #135
	add r0, fp, r0
	add r1, r0, #116
	mov r1, r1
	mov r0, #28
	str r0, [r1]
	mvn r0, #135
	add r0, fp, r0
	add r1, r0, #120
	mov r1, r1
	mov r0, #1
	str r0, [r1]
	mvn r0, #135
	add r0, fp, r0
	add r1, r0, #124
	mov r1, r1
	ldr r0, =290
	str r0, [r1]
	mvn r0, #135
	add r2, fp, r0
	mov r2, r2
	ldr r0, =-264
	add r1, fp, r0
	mov r1, r1
	mov r0, r2
	mov r1, r1
	bl arrCopy
	mov r0, r0
	str r0, [fp, #-8]
	ldr r0, =-264
	add r0, fp, r0
	mov r0, r0
	mov r0, r0
	bl revert
	mov r0, r0
	str r0, [fp, #-8]
	mov r0, #0
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	cmp r0, #32
	movlt r0, #1
	movge r0, #0
	blt .L819
	b .L821
.L818:
	ldr r0, [fp, #-4]
	cmp r0, #32
	movlt r0, #1
	movge r0, #0
	blt .L819
	b .L823
.L819:
	ldr r2, [fp, #-4]
	ldr r0, =-264
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	str r0, [fp, #-8]
	ldr r0, [fp, #-8]
	mov r0, r0
	bl putint
	ldr r0, [fp, #-4]
	add r0, r0, #1
	str r0, [fp, #-4]
	b .L818
.L820:
	ldr r0, =-264
	add r0, fp, r0
	mov r0, r0
	mov r0, r0
	bl bubblesort
	mov r0, r0
	str r0, [fp, #-8]
	mov r0, #0
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	cmp r0, #32
	movlt r0, #1
	movge r0, #0
	blt .L825
	b .L827
.L821:
	b .L820
.L823:
	b .L820
.L824:
	ldr r0, [fp, #-4]
	cmp r0, #32
	movlt r0, #1
	movge r0, #0
	blt .L825
	b .L829
.L825:
	ldr r2, [fp, #-4]
	ldr r0, =-264
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	str r0, [fp, #-8]
	ldr r0, [fp, #-8]
	mov r0, r0
	bl putint
	ldr r0, [fp, #-4]
	add r0, r0, #1
	str r0, [fp, #-4]
	b .L824
.L826:
	ldr r0, =-264
	add r0, fp, r0
	mov r0, r0
	mov r0, r0
	bl getMid
	mov r0, r0
	str r0, [fp, #-8]
	ldr r0, [fp, #-8]
	mov r0, r0
	bl putint
	ldr r0, =-264
	add r0, fp, r0
	mov r0, r0
	mov r0, r0
	bl getMost
	mov r0, r0
	str r0, [fp, #-8]
	ldr r0, [fp, #-8]
	mov r0, r0
	bl putint
	mvn r0, #135
	add r2, fp, r0
	mov r2, r2
	ldr r0, =-264
	add r1, fp, r0
	mov r1, r1
	mov r0, r2
	mov r1, r1
	bl arrCopy
	mov r0, r0
	str r0, [fp, #-8]
	ldr r0, =-264
	add r0, fp, r0
	mov r0, r0
	mov r0, r0
	bl bubblesort
	mov r0, r0
	str r0, [fp, #-8]
	mov r0, #0
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	cmp r0, #32
	movlt r0, #1
	movge r0, #0
	blt .L831
	b .L833
.L827:
	b .L826
.L829:
	b .L826
.L830:
	ldr r0, [fp, #-4]
	cmp r0, #32
	movlt r0, #1
	movge r0, #0
	blt .L831
	b .L835
.L831:
	ldr r2, [fp, #-4]
	ldr r0, =-264
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	str r0, [fp, #-8]
	ldr r0, [fp, #-8]
	mov r0, r0
	bl putint
	ldr r0, [fp, #-4]
	add r0, r0, #1
	str r0, [fp, #-4]
	b .L830
.L832:
	mvn r0, #135
	add r2, fp, r0
	mov r2, r2
	ldr r0, =-264
	add r1, fp, r0
	mov r1, r1
	mov r0, r2
	mov r1, r1
	bl arrCopy
	mov r0, r0
	str r0, [fp, #-8]
	ldr r0, =-264
	add r0, fp, r0
	mov r0, r0
	mov r0, r0
	bl insertsort
	mov r0, r0
	str r0, [fp, #-8]
	mov r0, #0
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	cmp r0, #32
	movlt r0, #1
	movge r0, #0
	blt .L837
	b .L839
.L833:
	b .L832
.L835:
	b .L832
.L836:
	ldr r0, [fp, #-4]
	cmp r0, #32
	movlt r0, #1
	movge r0, #0
	blt .L837
	b .L841
.L837:
	ldr r2, [fp, #-4]
	ldr r0, =-264
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	str r0, [fp, #-8]
	ldr r0, [fp, #-8]
	mov r0, r0
	bl putint
	ldr r0, [fp, #-4]
	add r0, r0, #1
	str r0, [fp, #-4]
	b .L836
.L838:
	mvn r0, #135
	add r2, fp, r0
	mov r2, r2
	ldr r0, =-264
	add r1, fp, r0
	mov r1, r1
	mov r0, r2
	mov r1, r1
	bl arrCopy
	mov r0, r0
	str r0, [fp, #-8]
	mov r0, #0
	str r0, [fp, #-4]
	mov r0, #31
	str r0, [fp, #-8]
	ldr r0, =-264
	add r0, fp, r0
	mov r0, r0
	ldr r1, [fp, #-4]
	ldr r2, [fp, #-8]
	mov r0, r0
	mov r1, r1
	mov r2, r2
	bl QuickSort
	mov r0, r0
	str r0, [fp, #-8]
	ldr r0, [fp, #-4]
	cmp r0, #32
	movlt r0, #1
	movge r0, #0
	blt .L843
	b .L845
.L839:
	b .L838
.L841:
	b .L838
.L842:
	ldr r0, [fp, #-4]
	cmp r0, #32
	movlt r0, #1
	movge r0, #0
	blt .L843
	b .L847
.L843:
	ldr r2, [fp, #-4]
	ldr r0, =-264
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	str r0, [fp, #-8]
	ldr r0, [fp, #-8]
	mov r0, r0
	bl putint
	ldr r0, [fp, #-4]
	add r0, r0, #1
	str r0, [fp, #-4]
	b .L842
.L844:
	mvn r0, #135
	add r2, fp, r0
	mov r2, r2
	ldr r0, =-264
	add r1, fp, r0
	mov r1, r1
	mov r0, r2
	mov r1, r1
	bl arrCopy
	mov r0, r0
	str r0, [fp, #-8]
	ldr r0, =-264
	add r0, fp, r0
	mov r0, r0
	mov r0, r0
	mov r1, #4
	bl calSum
	mov r0, r0
	str r0, [fp, #-8]
	mov r0, #0
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	cmp r0, #32
	movlt r0, #1
	movge r0, #0
	blt .L849
	b .L851
.L845:
	b .L844
.L847:
	b .L844
.L848:
	ldr r0, [fp, #-4]
	cmp r0, #32
	movlt r0, #1
	movge r0, #0
	blt .L849
	b .L853
.L849:
	ldr r2, [fp, #-4]
	ldr r0, =-264
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	str r0, [fp, #-8]
	ldr r0, [fp, #-8]
	mov r0, r0
	bl putint
	ldr r0, [fp, #-4]
	add r0, r0, #1
	str r0, [fp, #-4]
	b .L848
.L850:
	mvn r0, #135
	add r2, fp, r0
	mov r2, r2
	ldr r0, =-264
	add r1, fp, r0
	mov r1, r1
	mov r0, r2
	mov r1, r1
	bl arrCopy
	mov r0, r0
	str r0, [fp, #-8]
	ldr r0, =-264
	add r0, fp, r0
	mov r0, r0
	mov r0, r0
	mov r1, #3
	bl avgPooling
	mov r0, r0
	str r0, [fp, #-8]
	mov r0, #0
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	cmp r0, #32
	movlt r0, #1
	movge r0, #0
	blt .L855
	b .L857
.L851:
	b .L850
.L853:
	b .L850
.L854:
	ldr r0, [fp, #-4]
	cmp r0, #32
	movlt r0, #1
	movge r0, #0
	blt .L855
	b .L859
.L855:
	ldr r2, [fp, #-4]
	ldr r0, =-264
	add r1, fp, r0
	lsl r0, r2, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	str r0, [fp, #-8]
	ldr r0, [fp, #-8]
	mov r0, r0
	bl putint
	ldr r0, [fp, #-4]
	add r0, r0, #1
	str r0, [fp, #-4]
	b .L854
.L856:
	mov r0, #0
	mov r0, r0
	mov sp, fp
	pop {fp, lr}
	bx lr
.L857:
	b .L856
.L859:
	b .L856

.LTORG
addr_n_1:
	.word n
