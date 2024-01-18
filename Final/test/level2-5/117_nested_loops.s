	.cpu cortex-a72
	.arch armv8-a
	.fpu vfpv3-d16
	.arch_extension crc
	.arm
.data
.comm arr1, 57600
.comm arr2, 107520

	.text
	.global loop1
	.type loop1 , %function
loop1:
	push {r4, r5, r6, r7, r8, r9, fp, lr}
	mov fp, sp
	sub sp, sp, #36
	lsr sp, sp, #3
	lsl sp, sp, #3
.L284:
	str r0, [fp, #-36]
	str r1, [fp, #-32]
	mov r0, #0
	str r0, [fp, #-28]
	ldr r1, [fp, #-28]
	ldr r0, [fp, #-36]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L331
	b .L298
.L294:
	ldr r1, [fp, #-28]
	ldr r0, [fp, #-36]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L331
	b .L332
.L295:
	mov r0, #0
	str r0, [fp, #-24]
	ldr r0, [fp, #-24]
	cmp r0, #2
	movlt r0, #1
	movge r0, #0
	blt .L301
	b .L303
.L296:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L298:
	b .L296
.L300:
	ldr r0, [fp, #-24]
	cmp r0, #2
	movlt r0, #1
	movge r0, #0
	blt .L301
	b .L330
.L301:
	mov r0, #0
	str r0, [fp, #-20]
	ldr r0, [fp, #-20]
	cmp r0, #3
	movlt r0, #1
	movge r0, #0
	blt .L305
	b .L307
.L302:
	ldr r0, [fp, #-28]
	add r0, r0, #1
	str r0, [fp, #-28]
	b .L294
.L303:
	b .L302
.L304:
	ldr r0, [fp, #-20]
	cmp r0, #3
	movlt r0, #1
	movge r0, #0
	blt .L305
	b .L329
.L305:
	mov r0, #0
	str r0, [fp, #-16]
	ldr r0, [fp, #-16]
	cmp r0, #4
	movlt r0, #1
	movge r0, #0
	blt .L309
	b .L311
.L306:
	ldr r0, [fp, #-24]
	add r0, r0, #1
	str r0, [fp, #-24]
	b .L300
.L307:
	b .L306
.L308:
	ldr r0, [fp, #-16]
	cmp r0, #4
	movlt r0, #1
	movge r0, #0
	blt .L309
	b .L328
.L309:
	mov r0, #0
	str r0, [fp, #-12]
	ldr r0, [fp, #-12]
	cmp r0, #5
	movlt r0, #1
	movge r0, #0
	blt .L313
	b .L315
.L310:
	ldr r0, [fp, #-20]
	add r0, r0, #1
	str r0, [fp, #-20]
	b .L304
.L311:
	b .L310
.L312:
	ldr r0, [fp, #-12]
	cmp r0, #5
	movlt r0, #1
	movge r0, #0
	blt .L313
	b .L327
.L313:
	mov r0, #0
	str r0, [fp, #-8]
	ldr r0, [fp, #-8]
	cmp r0, #6
	movlt r0, #1
	movge r0, #0
	blt .L317
	b .L319
.L314:
	ldr r0, [fp, #-16]
	add r0, r0, #1
	str r0, [fp, #-16]
	b .L308
.L315:
	b .L314
.L316:
	ldr r0, [fp, #-8]
	cmp r0, #6
	movlt r0, #1
	movge r0, #0
	blt .L317
	b .L326
.L317:
	mov r0, #0
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	cmp r0, #2
	movlt r0, #1
	movge r0, #0
	blt .L321
	b .L323
.L318:
	ldr r0, [fp, #-12]
	add r0, r0, #1
	str r0, [fp, #-12]
	b .L312
.L319:
	b .L318
.L320:
	ldr r0, [fp, #-4]
	cmp r0, #2
	movlt r0, #1
	movge r0, #0
	blt .L321
	b .L325
.L321:
	ldr r1, [fp, #-28]
	ldr r0, [fp, #-24]
	add r1, r1, r0
	ldr r0, [fp, #-20]
	add r1, r1, r0
	ldr r0, [fp, #-16]
	add r1, r1, r0
	ldr r0, [fp, #-12]
	add r1, r1, r0
	ldr r0, [fp, #-8]
	add r1, r1, r0
	ldr r0, [fp, #-4]
	add r1, r1, r0
	ldr r0, [fp, #-36]
	add r1, r1, r0
	ldr r0, [fp, #-32]
	add r5, r1, r0
	ldr r9, [fp, #-28]
	ldr r8, [fp, #-24]
	ldr r4, [fp, #-20]
	ldr r3, [fp, #-16]
	ldr r2, [fp, #-12]
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-4]
	ldr r7, addr_arr1_0
	mov r6, #5760
	mul r6, r9, r6
	add r7, r7, r6
	mov r6, #2880
	mul r6, r8, r6
	add r7, r7, r6
	mov r6, #960
	mul r4, r4, r6
	add r6, r7, r4
	mov r4, #240
	mul r3, r3, r4
	add r4, r6, r3
	mov r3, #48
	mul r2, r2, r3
	add r2, r4, r2
	lsl r1, r1, #3
	add r1, r2, r1
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	str r5, [r0]
	ldr r0, [fp, #-4]
	add r0, r0, #1
	str r0, [fp, #-4]
	b .L320
.L322:
	ldr r0, [fp, #-8]
	add r0, r0, #1
	str r0, [fp, #-8]
	b .L316
.L323:
	b .L322
.L325:
	b .L322
.L326:
	b .L318
.L327:
	b .L314
.L328:
	b .L310
.L329:
	b .L306
.L330:
	b .L302
.L331:
	ldr r1, [fp, #-28]
	ldr r0, [fp, #-32]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L295
	b .L333
.L332:
	b .L296
.L333:
	b .L296
	.global loop2
	.type loop2 , %function
loop2:
	push {r4, r5, r6, r7, r8, r9, fp, lr}
	mov fp, sp
	sub sp, sp, #28
	lsr sp, sp, #3
	lsl sp, sp, #3
.L334:
	mov r0, #0
	str r0, [fp, #-28]
	ldr r0, [fp, #-28]
	cmp r0, #10
	movlt r0, #1
	movge r0, #0
	blt .L343
	b .L345
.L342:
	ldr r0, [fp, #-28]
	cmp r0, #10
	movlt r0, #1
	movge r0, #0
	blt .L343
	b .L377
.L343:
	mov r0, #0
	str r0, [fp, #-24]
	ldr r0, [fp, #-24]
	cmp r0, #2
	movlt r0, #1
	movge r0, #0
	blt .L347
	b .L349
.L344:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L345:
	b .L344
.L346:
	ldr r0, [fp, #-24]
	cmp r0, #2
	movlt r0, #1
	movge r0, #0
	blt .L347
	b .L376
.L347:
	mov r0, #0
	str r0, [fp, #-20]
	ldr r0, [fp, #-20]
	cmp r0, #3
	movlt r0, #1
	movge r0, #0
	blt .L351
	b .L353
.L348:
	ldr r0, [fp, #-28]
	add r0, r0, #1
	str r0, [fp, #-28]
	b .L342
.L349:
	b .L348
.L350:
	ldr r0, [fp, #-20]
	cmp r0, #3
	movlt r0, #1
	movge r0, #0
	blt .L351
	b .L375
.L351:
	mov r0, #0
	str r0, [fp, #-16]
	ldr r0, [fp, #-16]
	cmp r0, #2
	movlt r0, #1
	movge r0, #0
	blt .L355
	b .L357
.L352:
	ldr r0, [fp, #-24]
	add r0, r0, #1
	str r0, [fp, #-24]
	b .L346
.L353:
	b .L352
.L354:
	ldr r0, [fp, #-16]
	cmp r0, #2
	movlt r0, #1
	movge r0, #0
	blt .L355
	b .L374
.L355:
	mov r0, #0
	str r0, [fp, #-12]
	ldr r0, [fp, #-12]
	cmp r0, #4
	movlt r0, #1
	movge r0, #0
	blt .L359
	b .L361
.L356:
	ldr r0, [fp, #-20]
	add r0, r0, #1
	str r0, [fp, #-20]
	b .L350
.L357:
	b .L356
.L358:
	ldr r0, [fp, #-12]
	cmp r0, #4
	movlt r0, #1
	movge r0, #0
	blt .L359
	b .L373
.L359:
	mov r0, #0
	str r0, [fp, #-8]
	ldr r0, [fp, #-8]
	cmp r0, #8
	movlt r0, #1
	movge r0, #0
	blt .L363
	b .L365
.L360:
	ldr r0, [fp, #-16]
	add r0, r0, #1
	str r0, [fp, #-16]
	b .L354
.L361:
	b .L360
.L362:
	ldr r0, [fp, #-8]
	cmp r0, #8
	movlt r0, #1
	movge r0, #0
	blt .L363
	b .L372
.L363:
	mov r0, #0
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	cmp r0, #7
	movlt r0, #1
	movge r0, #0
	blt .L367
	b .L369
.L364:
	ldr r0, [fp, #-12]
	add r0, r0, #1
	str r0, [fp, #-12]
	b .L358
.L365:
	b .L364
.L366:
	ldr r0, [fp, #-4]
	cmp r0, #7
	movlt r0, #1
	movge r0, #0
	blt .L367
	b .L371
.L367:
	ldr r1, [fp, #-28]
	ldr r0, [fp, #-24]
	add r1, r1, r0
	ldr r0, [fp, #-16]
	add r1, r1, r0
	ldr r0, [fp, #-4]
	add r5, r1, r0
	ldr r9, [fp, #-28]
	ldr r8, [fp, #-24]
	ldr r4, [fp, #-20]
	ldr r3, [fp, #-16]
	ldr r2, [fp, #-12]
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-4]
	ldr r7, addr_arr2_0
	mov r6, #10752
	mul r6, r9, r6
	add r7, r7, r6
	mov r6, #5376
	mul r6, r8, r6
	add r7, r7, r6
	mov r6, #1792
	mul r4, r4, r6
	add r6, r7, r4
	mov r4, #896
	mul r3, r3, r4
	add r4, r6, r3
	mov r3, #224
	mul r2, r2, r3
	add r3, r4, r2
	mov r2, #28
	mul r1, r1, r2
	add r1, r3, r1
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	str r5, [r0]
	ldr r0, [fp, #-4]
	add r0, r0, #1
	str r0, [fp, #-4]
	b .L366
.L368:
	ldr r0, [fp, #-8]
	add r0, r0, #1
	str r0, [fp, #-8]
	b .L362
.L369:
	b .L368
.L371:
	b .L368
.L372:
	b .L364
.L373:
	b .L360
.L374:
	b .L356
.L375:
	b .L352
.L376:
	b .L348
.L377:
	b .L344
	.global loop3
	.type loop3 , %function
loop3:
	push {r4, r5, r6, r7, r8, r9, fp, lr}
	mov fp, sp
	sub sp, sp, #60
	lsr sp, sp, #3
	lsl sp, sp, #3
.L378:
	str r0, [fp, #-60]
	str r1, [fp, #-56]
	str r2, [fp, #-52]
	str r3, [fp, #-48]
	ldr r0, [fp, #32]
	str r0, [fp, #-44]
	ldr r0, [fp, #36]
	str r0, [fp, #-40]
	ldr r0, [fp, #40]
	str r0, [fp, #-36]
	mov r0, #0
	str r0, [fp, #-4]
	mov r0, #0
	str r0, [fp, #-32]
	ldr r0, [fp, #-32]
	cmp r0, #10
	movlt r0, #1
	movge r0, #0
	blt .L395
	b .L397
.L394:
	ldr r0, [fp, #-32]
	cmp r0, #10
	movlt r0, #1
	movge r0, #0
	blt .L395
	b .L458
.L395:
	mov r0, #0
	str r0, [fp, #-28]
	ldr r0, [fp, #-28]
	cmp r0, #100
	movlt r0, #1
	movge r0, #0
	blt .L399
	b .L401
.L396:
	ldr r0, [fp, #-4]
	mov r0, r0
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr
.L397:
	b .L396
.L398:
	ldr r0, [fp, #-28]
	cmp r0, #100
	movlt r0, #1
	movge r0, #0
	blt .L399
	b .L453
.L399:
	mov r0, #0
	str r0, [fp, #-24]
	ldr r0, [fp, #-24]
	cmp r0, #1000
	movlt r0, #1
	movge r0, #0
	blt .L403
	b .L405
.L400:
	ldr r0, [fp, #-32]
	add r0, r0, #1
	str r0, [fp, #-32]
	ldr r1, [fp, #-32]
	ldr r0, [fp, #-60]
	cmp r1, r0
	movge r0, #1
	movlt r0, #0
	bge .L454
	b .L456
.L401:
	b .L400
.L402:
	ldr r0, [fp, #-24]
	cmp r0, #1000
	movlt r0, #1
	movge r0, #0
	blt .L403
	b .L448
.L403:
	mov r0, #0
	str r0, [fp, #-20]
	ldr r1, [fp, #-20]
	ldr r0, =10000
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L407
	b .L409
.L404:
	ldr r0, [fp, #-28]
	add r0, r0, #1
	str r0, [fp, #-28]
	ldr r1, [fp, #-28]
	ldr r0, [fp, #-56]
	cmp r1, r0
	movge r0, #1
	movlt r0, #0
	bge .L449
	b .L451
.L405:
	b .L404
.L406:
	ldr r1, [fp, #-20]
	ldr r0, =10000
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L407
	b .L443
.L407:
	mov r0, #0
	str r0, [fp, #-16]
	ldr r1, [fp, #-16]
	ldr r0, =100000
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L411
	b .L413
.L408:
	ldr r0, [fp, #-24]
	add r0, r0, #1
	str r0, [fp, #-24]
	ldr r1, [fp, #-24]
	ldr r0, [fp, #-52]
	cmp r1, r0
	movge r0, #1
	movlt r0, #0
	bge .L444
	b .L446
.L409:
	b .L408
.L410:
	ldr r1, [fp, #-16]
	ldr r0, =100000
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L411
	b .L438
.L411:
	mov r0, #0
	str r0, [fp, #-12]
	ldr r1, [fp, #-12]
	ldr r0, =1000000
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L415
	b .L417
.L412:
	ldr r0, [fp, #-20]
	add r0, r0, #1
	str r0, [fp, #-20]
	ldr r1, [fp, #-20]
	ldr r0, [fp, #-48]
	cmp r1, r0
	movge r0, #1
	movlt r0, #0
	bge .L439
	b .L441
.L413:
	b .L412
.L414:
	ldr r1, [fp, #-12]
	ldr r0, =1000000
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L415
	b .L433
.L415:
	mov r0, #0
	str r0, [fp, #-8]
	ldr r1, [fp, #-8]
	ldr r0, =10000000
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L419
	b .L421
.L416:
	ldr r0, [fp, #-16]
	add r0, r0, #1
	str r0, [fp, #-16]
	ldr r1, [fp, #-16]
	ldr r0, [fp, #-44]
	cmp r1, r0
	movge r0, #1
	movlt r0, #0
	bge .L434
	b .L436
.L417:
	b .L416
.L418:
	ldr r1, [fp, #-8]
	ldr r0, =10000000
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	blt .L419
	b .L428
.L419:
	ldr r2, [fp, #-4]
	ldr r1, =817
	sdiv r0, r2, r1
	mul r0, r0, r1
	sub r5, r2, r0
	ldr r9, [fp, #-32]
	ldr r8, [fp, #-28]
	ldr r4, [fp, #-24]
	ldr r3, [fp, #-20]
	ldr r2, [fp, #-16]
	ldr r1, [fp, #-12]
	ldr r0, [fp, #-8]
	ldr r7, addr_arr1_0
	mov r6, #5760
	mul r6, r9, r6
	add r7, r7, r6
	mov r6, #2880
	mul r6, r8, r6
	add r7, r7, r6
	mov r6, #960
	mul r4, r4, r6
	add r6, r7, r4
	mov r4, #240
	mul r3, r3, r4
	add r4, r6, r3
	mov r3, #48
	mul r2, r2, r3
	add r2, r4, r2
	lsl r1, r1, #3
	add r1, r2, r1
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	add r5, r5, r0
	ldr r9, [fp, #-32]
	ldr r8, [fp, #-28]
	ldr r4, [fp, #-24]
	ldr r3, [fp, #-20]
	ldr r2, [fp, #-16]
	ldr r1, [fp, #-12]
	ldr r0, [fp, #-8]
	ldr r7, addr_arr2_0
	mov r6, #10752
	mul r6, r9, r6
	add r7, r7, r6
	mov r6, #5376
	mul r6, r8, r6
	add r7, r7, r6
	mov r6, #1792
	mul r4, r4, r6
	add r6, r7, r4
	mov r4, #896
	mul r3, r3, r4
	add r4, r6, r3
	mov r3, #224
	mul r2, r2, r3
	add r3, r4, r2
	mov r2, #28
	mul r1, r1, r2
	add r1, r3, r1
	lsl r0, r0, #2
	add r0, r1, r0
	mov r0, r0
	ldr r0, [r0]
	add r0, r5, r0
	str r0, [fp, #-4]
	ldr r0, [fp, #-8]
	add r0, r0, #1
	str r0, [fp, #-8]
	ldr r1, [fp, #-8]
	ldr r0, [fp, #-36]
	cmp r1, r0
	movge r0, #1
	movlt r0, #0
	bge .L424
	b .L426
.L420:
	ldr r0, [fp, #-12]
	add r0, r0, #1
	str r0, [fp, #-12]
	ldr r1, [fp, #-12]
	ldr r0, [fp, #-40]
	cmp r1, r0
	movge r0, #1
	movlt r0, #0
	bge .L429
	b .L431
.L421:
	b .L420
.L424:
	b .L420
.L425:
	b .L418
.L426:
	b .L425
.L428:
	b .L420
.L429:
	b .L416
.L430:
	b .L414
.L431:
	b .L430
.L433:
	b .L416
.L434:
	b .L412
.L435:
	b .L410
.L436:
	b .L435
.L438:
	b .L412
.L439:
	b .L408
.L440:
	b .L406
.L441:
	b .L440
.L443:
	b .L408
.L444:
	b .L404
.L445:
	b .L402
.L446:
	b .L445
.L448:
	b .L404
.L449:
	b .L400
.L450:
	b .L398
.L451:
	b .L450
.L453:
	b .L400
.L454:
	b .L396
.L455:
	b .L394
.L456:
	b .L455
.L458:
	b .L396
	.global main
	.type main , %function
main:
	push {r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #36
	lsr sp, sp, #3
	lsl sp, sp, #3
.L459:
	bl getint
	mov r0, r0
	str r0, [fp, #-36]
	bl getint
	mov r0, r0
	str r0, [fp, #-32]
	bl getint
	mov r0, r0
	str r0, [fp, #-28]
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
	bl getint
	mov r0, r0
	str r0, [fp, #-8]
	bl getint
	mov r0, r0
	str r0, [fp, #-4]
	ldr r0, [fp, #-36]
	ldr r1, [fp, #-32]
	mov r0, r0
	mov r1, r1
	bl loop1
	bl loop2
	ldr r0, [fp, #-28]
	ldr r1, [fp, #-24]
	ldr r2, [fp, #-20]
	ldr r3, [fp, #-16]
	ldr r6, [fp, #-12]
	ldr r5, [fp, #-8]
	ldr r4, [fp, #-4]
	mov r0, r0
	mov r1, r1
	mov r2, r2
	mov r3, r3
	push {r4}
	push {r5}
	push {r6}
	bl loop3
	add sp, sp, #12
	mov r0, r0
	mov r0, r0
	mov sp, fp
	pop {r4, r5, r6, fp, lr}
	bx lr

.LTORG
addr_arr1_0:
	.word arr1
addr_arr2_0:
	.word arr2
