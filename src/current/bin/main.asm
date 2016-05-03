
bin/main.elf:     file format elf32-littlearm


Disassembly of section .text:

08000188 <_ZN9CObstacle12rotate_robotEi>:
 8000188:	b510      	push	{r4, lr}
 800018a:	f240 444c 	movw	r4, #1100	; 0x44c
 800018e:	ed2d 8b02 	vpush	{d8}
 8000192:	434c      	muls	r4, r1
 8000194:	215a      	movs	r1, #90	; 0x5a
 8000196:	fb94 f4f1 	sdiv	r4, r4, r1
 800019a:	f000 fbef 	bl	800097c <imu_yaw_reset>
 800019e:	ed9f 8a1e 	vldr	s16, [pc, #120]	; 8000218 <_ZN9CObstacle12rotate_robotEi+0x90>
 80001a2:	f000 faef 	bl	8000784 <lsm9ds0_get>
 80001a6:	6a83      	ldr	r3, [r0, #40]	; 0x28
 80001a8:	ea84 72e4 	eor.w	r2, r4, r4, asr #31
 80001ac:	2b00      	cmp	r3, #0
 80001ae:	bfb8      	it	lt
 80001b0:	425b      	neglt	r3, r3
 80001b2:	eba2 72e4 	sub.w	r2, r2, r4, asr #31
 80001b6:	4293      	cmp	r3, r2
 80001b8:	da22      	bge.n	8000200 <_ZN9CObstacle12rotate_robotEi+0x78>
 80001ba:	eddf 7a18 	vldr	s15, [pc, #96]	; 800021c <_ZN9CObstacle12rotate_robotEi+0x94>
 80001be:	ee38 8a27 	vadd.f32	s16, s16, s15
 80001c2:	eddf 7a17 	vldr	s15, [pc, #92]	; 8000220 <_ZN9CObstacle12rotate_robotEi+0x98>
 80001c6:	eeb4 8a67 	vcmp.f32	s16, s15
 80001ca:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80001ce:	bfc8      	it	gt
 80001d0:	eeb0 8a67 	vmovgt.f32	s16, s15
 80001d4:	eddf 7a13 	vldr	s15, [pc, #76]	; 8000224 <_ZN9CObstacle12rotate_robotEi+0x9c>
 80001d8:	ee68 7a27 	vmul.f32	s15, s16, s15
 80001dc:	2c00      	cmp	r4, #0
 80001de:	eefd 7ae7 	vcvt.s32.f32	s15, s15
 80001e2:	ee17 3a90 	vmov	r3, s15
 80001e6:	b219      	sxth	r1, r3
 80001e8:	f1c3 0300 	rsb	r3, r3, #0
 80001ec:	bfca      	itet	gt
 80001ee:	4608      	movgt	r0, r1
 80001f0:	b218      	sxthle	r0, r3
 80001f2:	b219      	sxthgt	r1, r3
 80001f4:	f002 f92c 	bl	8002450 <drv8834_run>
 80001f8:	200a      	movs	r0, #10
 80001fa:	f001 fd73 	bl	8001ce4 <timer_delay_ms>
 80001fe:	e7d0      	b.n	80001a2 <_ZN9CObstacle12rotate_robotEi+0x1a>
 8000200:	2000      	movs	r0, #0
 8000202:	4601      	mov	r1, r0
 8000204:	f002 f924 	bl	8002450 <drv8834_run>
 8000208:	ecbd 8b02 	vpop	{d8}
 800020c:	20c8      	movs	r0, #200	; 0xc8
 800020e:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000212:	f001 bd67 	b.w	8001ce4 <timer_delay_ms>
 8000216:	bf00      	nop
 8000218:	00000000 	.word	0x00000000
 800021c:	3d23d70a 	.word	0x3d23d70a
 8000220:	3ecccccd 	.word	0x3ecccccd
 8000224:	42c80000 	.word	0x42c80000

08000228 <_ZN9CObstacle4testEv>:
 8000228:	b510      	push	{r4, lr}
 800022a:	215a      	movs	r1, #90	; 0x5a
 800022c:	4604      	mov	r4, r0
 800022e:	f7ff ffab 	bl	8000188 <_ZN9CObstacle12rotate_robotEi>
 8000232:	4620      	mov	r0, r4
 8000234:	215a      	movs	r1, #90	; 0x5a
 8000236:	f7ff ffa7 	bl	8000188 <_ZN9CObstacle12rotate_robotEi>
 800023a:	4620      	mov	r0, r4
 800023c:	215a      	movs	r1, #90	; 0x5a
 800023e:	f7ff ffa3 	bl	8000188 <_ZN9CObstacle12rotate_robotEi>
 8000242:	4620      	mov	r0, r4
 8000244:	215a      	movs	r1, #90	; 0x5a
 8000246:	f7ff ff9f 	bl	8000188 <_ZN9CObstacle12rotate_robotEi>
 800024a:	4620      	mov	r0, r4
 800024c:	f06f 0159 	mvn.w	r1, #89	; 0x59
 8000250:	f7ff ff9a 	bl	8000188 <_ZN9CObstacle12rotate_robotEi>
 8000254:	4620      	mov	r0, r4
 8000256:	f06f 0159 	mvn.w	r1, #89	; 0x59
 800025a:	f7ff ff95 	bl	8000188 <_ZN9CObstacle12rotate_robotEi>
 800025e:	4620      	mov	r0, r4
 8000260:	f06f 0159 	mvn.w	r1, #89	; 0x59
 8000264:	f7ff ff90 	bl	8000188 <_ZN9CObstacle12rotate_robotEi>
 8000268:	4620      	mov	r0, r4
 800026a:	f06f 0159 	mvn.w	r1, #89	; 0x59
 800026e:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000272:	f7ff bf89 	b.w	8000188 <_ZN9CObstacle12rotate_robotEi>
	...

08000278 <obstacle_init>:
 8000278:	4b01      	ldr	r3, [pc, #4]	; (8000280 <obstacle_init+0x8>)
 800027a:	2200      	movs	r2, #0
 800027c:	601a      	str	r2, [r3, #0]
 800027e:	4770      	bx	lr
 8000280:	20000504 	.word	0x20000504

08000284 <obstacle_test>:
 8000284:	4801      	ldr	r0, [pc, #4]	; (800028c <obstacle_test+0x8>)
 8000286:	f7ff bfcf 	b.w	8000228 <_ZN9CObstacle4testEv>
 800028a:	bf00      	nop
 800028c:	20000504 	.word	0x20000504

08000290 <thread_ending>:
 8000290:	b672      	cpsid	i
 8000292:	4b05      	ldr	r3, [pc, #20]	; (80002a8 <thread_ending+0x18>)
 8000294:	681a      	ldr	r2, [r3, #0]
 8000296:	4b05      	ldr	r3, [pc, #20]	; (80002ac <thread_ending+0x1c>)
 8000298:	210c      	movs	r1, #12
 800029a:	fb01 3302 	mla	r3, r1, r2, r3
 800029e:	2200      	movs	r2, #0
 80002a0:	605a      	str	r2, [r3, #4]
 80002a2:	b662      	cpsie	i
 80002a4:	bf00      	nop
 80002a6:	e7fd      	b.n	80002a4 <thread_ending+0x14>
 80002a8:	20000550 	.word	0x20000550
 80002ac:	20000508 	.word	0x20000508

080002b0 <null_thread>:
 80002b0:	b508      	push	{r3, lr}
 80002b2:	f002 f83b 	bl	800232c <sleep>
 80002b6:	e7fc      	b.n	80002b2 <null_thread+0x2>

080002b8 <scheduler>:
 80002b8:	b570      	push	{r4, r5, r6, lr}
 80002ba:	2200      	movs	r2, #0
 80002bc:	4611      	mov	r1, r2
 80002be:	4b15      	ldr	r3, [pc, #84]	; (8000314 <scheduler+0x5c>)
 80002c0:	200c      	movs	r0, #12
 80002c2:	fb00 f401 	mul.w	r4, r0, r1
 80002c6:	191e      	adds	r6, r3, r4
 80002c8:	6875      	ldr	r5, [r6, #4]
 80002ca:	f015 0f02 	tst.w	r5, #2
 80002ce:	461d      	mov	r5, r3
 80002d0:	d10a      	bne.n	80002e8 <scheduler+0x30>
 80002d2:	6876      	ldr	r6, [r6, #4]
 80002d4:	07f6      	lsls	r6, r6, #31
 80002d6:	d507      	bpl.n	80002e8 <scheduler+0x30>
 80002d8:	4350      	muls	r0, r2
 80002da:	5b1c      	ldrh	r4, [r3, r4]
 80002dc:	5a18      	ldrh	r0, [r3, r0]
 80002de:	b2a4      	uxth	r4, r4
 80002e0:	b280      	uxth	r0, r0
 80002e2:	4284      	cmp	r4, r0
 80002e4:	bf38      	it	cc
 80002e6:	460a      	movcc	r2, r1
 80002e8:	200c      	movs	r0, #12
 80002ea:	4348      	muls	r0, r1
 80002ec:	5a1c      	ldrh	r4, [r3, r0]
 80002ee:	b2a4      	uxth	r4, r4
 80002f0:	b11c      	cbz	r4, 80002fa <scheduler+0x42>
 80002f2:	5a1c      	ldrh	r4, [r3, r0]
 80002f4:	3c01      	subs	r4, #1
 80002f6:	b2a4      	uxth	r4, r4
 80002f8:	521c      	strh	r4, [r3, r0]
 80002fa:	3101      	adds	r1, #1
 80002fc:	2906      	cmp	r1, #6
 80002fe:	d1de      	bne.n	80002be <scheduler+0x6>
 8000300:	230c      	movs	r3, #12
 8000302:	4353      	muls	r3, r2
 8000304:	18e9      	adds	r1, r5, r3
 8000306:	8849      	ldrh	r1, [r1, #2]
 8000308:	b289      	uxth	r1, r1
 800030a:	52e9      	strh	r1, [r5, r3]
 800030c:	4b02      	ldr	r3, [pc, #8]	; (8000318 <scheduler+0x60>)
 800030e:	601a      	str	r2, [r3, #0]
 8000310:	bd70      	pop	{r4, r5, r6, pc}
 8000312:	bf00      	nop
 8000314:	20000508 	.word	0x20000508
 8000318:	20000550 	.word	0x20000550

0800031c <SysTick_Handler>:
 800031c:	e92d 0ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 8000320:	f3ef 8308 	mrs	r3, MSP
 8000324:	4c0d      	ldr	r4, [pc, #52]	; (800035c <SysTick_Handler+0x40>)
 8000326:	4d0e      	ldr	r5, [pc, #56]	; (8000360 <SysTick_Handler+0x44>)
 8000328:	6822      	ldr	r2, [r4, #0]
 800032a:	3201      	adds	r2, #1
 800032c:	bf1d      	ittte	ne
 800032e:	6822      	ldrne	r2, [r4, #0]
 8000330:	210c      	movne	r1, #12
 8000332:	fb01 5202 	mlane	r2, r1, r2, r5
 8000336:	2300      	moveq	r3, #0
 8000338:	bf14      	ite	ne
 800033a:	6093      	strne	r3, [r2, #8]
 800033c:	6023      	streq	r3, [r4, #0]
 800033e:	f7ff ffbb 	bl	80002b8 <scheduler>
 8000342:	6822      	ldr	r2, [r4, #0]
 8000344:	230c      	movs	r3, #12
 8000346:	fb03 5302 	mla	r3, r3, r2, r5
 800034a:	689a      	ldr	r2, [r3, #8]
 800034c:	f06f 0306 	mvn.w	r3, #6
 8000350:	469e      	mov	lr, r3
 8000352:	f382 8808 	msr	MSP, r2
 8000356:	e8bd 0ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 800035a:	4770      	bx	lr
 800035c:	20000550 	.word	0x20000550
 8000360:	20000508 	.word	0x20000508

08000364 <sched_off>:
 8000364:	b672      	cpsid	i
 8000366:	4770      	bx	lr

08000368 <sched_on>:
 8000368:	b662      	cpsie	i
 800036a:	4770      	bx	lr

0800036c <yield>:
 800036c:	4770      	bx	lr
	...

08000370 <get_thread_id>:
 8000370:	b082      	sub	sp, #8
 8000372:	b672      	cpsid	i
 8000374:	4b03      	ldr	r3, [pc, #12]	; (8000384 <get_thread_id+0x14>)
 8000376:	681b      	ldr	r3, [r3, #0]
 8000378:	9301      	str	r3, [sp, #4]
 800037a:	b662      	cpsie	i
 800037c:	9801      	ldr	r0, [sp, #4]
 800037e:	b002      	add	sp, #8
 8000380:	4770      	bx	lr
 8000382:	bf00      	nop
 8000384:	20000550 	.word	0x20000550

08000388 <kernel_start>:
 8000388:	b508      	push	{r3, lr}
 800038a:	f001 ffbd 	bl	8002308 <sys_tick_init>
 800038e:	bf00      	nop
 8000390:	e7fd      	b.n	800038e <kernel_start+0x6>
	...

08000394 <create_thread>:
 8000394:	f022 0203 	bic.w	r2, r2, #3
 8000398:	3a40      	subs	r2, #64	; 0x40
 800039a:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800039e:	eb01 0e02 	add.w	lr, r1, r2
 80003a2:	f102 0634 	add.w	r6, r2, #52	; 0x34
 80003a6:	f102 0738 	add.w	r7, r2, #56	; 0x38
 80003aa:	323c      	adds	r2, #60	; 0x3c
 80003ac:	440e      	add	r6, r1
 80003ae:	440f      	add	r7, r1
 80003b0:	4411      	add	r1, r2
 80003b2:	2200      	movs	r2, #0
 80003b4:	b672      	cpsid	i
 80003b6:	f8df c054 	ldr.w	ip, [pc, #84]	; 800040c <create_thread+0x78>
 80003ba:	250c      	movs	r5, #12
 80003bc:	4355      	muls	r5, r2
 80003be:	eb0c 0405 	add.w	r4, ip, r5
 80003c2:	f8d4 8004 	ldr.w	r8, [r4, #4]
 80003c6:	f018 0f01 	tst.w	r8, #1
 80003ca:	d114      	bne.n	80003f6 <create_thread+0x62>
 80003cc:	f8df 8040 	ldr.w	r8, [pc, #64]	; 8000410 <create_thread+0x7c>
 80003d0:	f8c4 e008 	str.w	lr, [r4, #8]
 80003d4:	2b05      	cmp	r3, #5
 80003d6:	f8c6 8000 	str.w	r8, [r6]
 80003da:	bf98      	it	ls
 80003dc:	2306      	movls	r3, #6
 80003de:	f04f 5804 	mov.w	r8, #553648128	; 0x21000000
 80003e2:	6038      	str	r0, [r7, #0]
 80003e4:	f8c1 8000 	str.w	r8, [r1]
 80003e8:	8063      	strh	r3, [r4, #2]
 80003ea:	f82c 3005 	strh.w	r3, [ip, r5]
 80003ee:	2501      	movs	r5, #1
 80003f0:	6065      	str	r5, [r4, #4]
 80003f2:	4614      	mov	r4, r2
 80003f4:	e000      	b.n	80003f8 <create_thread+0x64>
 80003f6:	2406      	movs	r4, #6
 80003f8:	b662      	cpsie	i
 80003fa:	3201      	adds	r2, #1
 80003fc:	2a06      	cmp	r2, #6
 80003fe:	d001      	beq.n	8000404 <create_thread+0x70>
 8000400:	2c06      	cmp	r4, #6
 8000402:	d0d7      	beq.n	80003b4 <create_thread+0x20>
 8000404:	4620      	mov	r0, r4
 8000406:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800040a:	bf00      	nop
 800040c:	20000508 	.word	0x20000508
 8000410:	08000291 	.word	0x08000291

08000414 <kernel_init>:
 8000414:	b510      	push	{r4, lr}
 8000416:	2300      	movs	r3, #0
 8000418:	490b      	ldr	r1, [pc, #44]	; (8000448 <kernel_init+0x34>)
 800041a:	220c      	movs	r2, #12
 800041c:	435a      	muls	r2, r3
 800041e:	188c      	adds	r4, r1, r2
 8000420:	2000      	movs	r0, #0
 8000422:	6060      	str	r0, [r4, #4]
 8000424:	3301      	adds	r3, #1
 8000426:	2006      	movs	r0, #6
 8000428:	4283      	cmp	r3, r0
 800042a:	8060      	strh	r0, [r4, #2]
 800042c:	5288      	strh	r0, [r1, r2]
 800042e:	d1f3      	bne.n	8000418 <kernel_init+0x4>
 8000430:	4b06      	ldr	r3, [pc, #24]	; (800044c <kernel_init+0x38>)
 8000432:	4807      	ldr	r0, [pc, #28]	; (8000450 <kernel_init+0x3c>)
 8000434:	4907      	ldr	r1, [pc, #28]	; (8000454 <kernel_init+0x40>)
 8000436:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 800043a:	601a      	str	r2, [r3, #0]
 800043c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000440:	2280      	movs	r2, #128	; 0x80
 8000442:	23ff      	movs	r3, #255	; 0xff
 8000444:	f7ff bfa6 	b.w	8000394 <create_thread>
 8000448:	20000508 	.word	0x20000508
 800044c:	20000550 	.word	0x20000550
 8000450:	080002b1 	.word	0x080002b1
 8000454:	20000554 	.word	0x20000554

08000458 <set_wait_state>:
 8000458:	b507      	push	{r0, r1, r2, lr}
 800045a:	f7ff ff89 	bl	8000370 <get_thread_id>
 800045e:	9000      	str	r0, [sp, #0]
 8000460:	b672      	cpsid	i
 8000462:	4b0c      	ldr	r3, [pc, #48]	; (8000494 <set_wait_state+0x3c>)
 8000464:	9a00      	ldr	r2, [sp, #0]
 8000466:	210c      	movs	r1, #12
 8000468:	fb01 3202 	mla	r2, r1, r2, r3
 800046c:	6851      	ldr	r1, [r2, #4]
 800046e:	f041 0102 	orr.w	r1, r1, #2
 8000472:	6051      	str	r1, [r2, #4]
 8000474:	b672      	cpsid	i
 8000476:	9a00      	ldr	r2, [sp, #0]
 8000478:	210c      	movs	r1, #12
 800047a:	fb01 3202 	mla	r2, r1, r2, r3
 800047e:	6852      	ldr	r2, [r2, #4]
 8000480:	9201      	str	r2, [sp, #4]
 8000482:	b662      	cpsie	i
 8000484:	9a01      	ldr	r2, [sp, #4]
 8000486:	9a01      	ldr	r2, [sp, #4]
 8000488:	0792      	lsls	r2, r2, #30
 800048a:	d4f3      	bmi.n	8000474 <set_wait_state+0x1c>
 800048c:	b003      	add	sp, #12
 800048e:	f85d fb04 	ldr.w	pc, [sp], #4
 8000492:	bf00      	nop
 8000494:	20000508 	.word	0x20000508

08000498 <wake_up_threads>:
 8000498:	2300      	movs	r3, #0
 800049a:	b672      	cpsid	i
 800049c:	4906      	ldr	r1, [pc, #24]	; (80004b8 <wake_up_threads+0x20>)
 800049e:	220c      	movs	r2, #12
 80004a0:	fb02 1203 	mla	r2, r2, r3, r1
 80004a4:	6851      	ldr	r1, [r2, #4]
 80004a6:	f021 0102 	bic.w	r1, r1, #2
 80004aa:	6051      	str	r1, [r2, #4]
 80004ac:	b662      	cpsie	i
 80004ae:	3301      	adds	r3, #1
 80004b0:	2b06      	cmp	r3, #6
 80004b2:	d1f2      	bne.n	800049a <wake_up_threads+0x2>
 80004b4:	4770      	bx	lr
 80004b6:	bf00      	nop
 80004b8:	20000508 	.word	0x20000508

080004bc <messages_init>:
 80004bc:	4a0a      	ldr	r2, [pc, #40]	; (80004e8 <messages_init+0x2c>)
 80004be:	2300      	movs	r3, #0
 80004c0:	b510      	push	{r4, lr}
 80004c2:	6013      	str	r3, [r2, #0]
 80004c4:	6053      	str	r3, [r2, #4]
 80004c6:	6093      	str	r3, [r2, #8]
 80004c8:	60d3      	str	r3, [r2, #12]
 80004ca:	6113      	str	r3, [r2, #16]
 80004cc:	6153      	str	r3, [r2, #20]
 80004ce:	4c07      	ldr	r4, [pc, #28]	; (80004ec <messages_init+0x30>)
 80004d0:	0118      	lsls	r0, r3, #4
 80004d2:	1821      	adds	r1, r4, r0
 80004d4:	3301      	adds	r3, #1
 80004d6:	2200      	movs	r2, #0
 80004d8:	2b04      	cmp	r3, #4
 80004da:	604a      	str	r2, [r1, #4]
 80004dc:	5022      	str	r2, [r4, r0]
 80004de:	60ca      	str	r2, [r1, #12]
 80004e0:	608a      	str	r2, [r1, #8]
 80004e2:	d1f4      	bne.n	80004ce <messages_init+0x12>
 80004e4:	bd10      	pop	{r4, pc}
 80004e6:	bf00      	nop
 80004e8:	200005d4 	.word	0x200005d4
 80004ec:	200005ec 	.word	0x200005ec

080004f0 <putc_>:
 80004f0:	b538      	push	{r3, r4, r5, lr}
 80004f2:	4c06      	ldr	r4, [pc, #24]	; (800050c <putc_+0x1c>)
 80004f4:	4605      	mov	r5, r0
 80004f6:	4620      	mov	r0, r4
 80004f8:	f000 f91f 	bl	800073a <mutex_lock>
 80004fc:	4628      	mov	r0, r5
 80004fe:	f001 fcdd 	bl	8001ebc <uart_write>
 8000502:	4620      	mov	r0, r4
 8000504:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8000508:	f000 b933 	b.w	8000772 <mutex_unlock>
 800050c:	2000062c 	.word	0x2000062c

08000510 <puts_>:
 8000510:	b510      	push	{r4, lr}
 8000512:	4604      	mov	r4, r0
 8000514:	4807      	ldr	r0, [pc, #28]	; (8000534 <puts_+0x24>)
 8000516:	f000 f910 	bl	800073a <mutex_lock>
 800051a:	3c01      	subs	r4, #1
 800051c:	f814 0f01 	ldrb.w	r0, [r4, #1]!
 8000520:	b110      	cbz	r0, 8000528 <puts_+0x18>
 8000522:	f7ff ffe5 	bl	80004f0 <putc_>
 8000526:	e7f9      	b.n	800051c <puts_+0xc>
 8000528:	4802      	ldr	r0, [pc, #8]	; (8000534 <puts_+0x24>)
 800052a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800052e:	f000 b920 	b.w	8000772 <mutex_unlock>
 8000532:	bf00      	nop
 8000534:	20000638 	.word	0x20000638

08000538 <puti_>:
 8000538:	b530      	push	{r4, r5, lr}
 800053a:	b085      	sub	sp, #20
 800053c:	1e03      	subs	r3, r0, #0
 800053e:	f04f 0200 	mov.w	r2, #0
 8000542:	bfba      	itte	lt
 8000544:	425b      	neglt	r3, r3
 8000546:	2401      	movlt	r4, #1
 8000548:	4614      	movge	r4, r2
 800054a:	f88d 200f 	strb.w	r2, [sp, #15]
 800054e:	210a      	movs	r1, #10
 8000550:	220a      	movs	r2, #10
 8000552:	a801      	add	r0, sp, #4
 8000554:	fb93 f5f2 	sdiv	r5, r3, r2
 8000558:	fb02 3315 	mls	r3, r2, r5, r3
 800055c:	3330      	adds	r3, #48	; 0x30
 800055e:	540b      	strb	r3, [r1, r0]
 8000560:	1e4a      	subs	r2, r1, #1
 8000562:	462b      	mov	r3, r5
 8000564:	b10d      	cbz	r5, 800056a <puti_+0x32>
 8000566:	4611      	mov	r1, r2
 8000568:	e7f2      	b.n	8000550 <puti_+0x18>
 800056a:	b12c      	cbz	r4, 8000578 <puti_+0x40>
 800056c:	ab04      	add	r3, sp, #16
 800056e:	4413      	add	r3, r2
 8000570:	212d      	movs	r1, #45	; 0x2d
 8000572:	f803 1c0c 	strb.w	r1, [r3, #-12]
 8000576:	4611      	mov	r1, r2
 8000578:	4408      	add	r0, r1
 800057a:	f7ff ffc9 	bl	8000510 <puts_>
 800057e:	b005      	add	sp, #20
 8000580:	bd30      	pop	{r4, r5, pc}

08000582 <putui_>:
 8000582:	b51f      	push	{r0, r1, r2, r3, r4, lr}
 8000584:	2300      	movs	r3, #0
 8000586:	f88d 300f 	strb.w	r3, [sp, #15]
 800058a:	220a      	movs	r2, #10
 800058c:	230a      	movs	r3, #10
 800058e:	a901      	add	r1, sp, #4
 8000590:	fbb0 f4f3 	udiv	r4, r0, r3
 8000594:	fb03 0314 	mls	r3, r3, r4, r0
 8000598:	3330      	adds	r3, #48	; 0x30
 800059a:	5453      	strb	r3, [r2, r1]
 800059c:	4620      	mov	r0, r4
 800059e:	1e53      	subs	r3, r2, #1
 80005a0:	b10c      	cbz	r4, 80005a6 <putui_+0x24>
 80005a2:	461a      	mov	r2, r3
 80005a4:	e7f2      	b.n	800058c <putui_+0xa>
 80005a6:	1888      	adds	r0, r1, r2
 80005a8:	f7ff ffb2 	bl	8000510 <puts_>
 80005ac:	b004      	add	sp, #16
 80005ae:	bd10      	pop	{r4, pc}

080005b0 <putx_>:
 80005b0:	b51f      	push	{r0, r1, r2, r3, r4, lr}
 80005b2:	2300      	movs	r3, #0
 80005b4:	f88d 300f 	strb.w	r3, [sp, #15]
 80005b8:	220a      	movs	r2, #10
 80005ba:	f000 030f 	and.w	r3, r0, #15
 80005be:	2b09      	cmp	r3, #9
 80005c0:	a901      	add	r1, sp, #4
 80005c2:	bf94      	ite	ls
 80005c4:	3330      	addls	r3, #48	; 0x30
 80005c6:	3357      	addhi	r3, #87	; 0x57
 80005c8:	0900      	lsrs	r0, r0, #4
 80005ca:	548b      	strb	r3, [r1, r2]
 80005cc:	f102 33ff 	add.w	r3, r2, #4294967295	; 0xffffffff
 80005d0:	d001      	beq.n	80005d6 <putx_+0x26>
 80005d2:	461a      	mov	r2, r3
 80005d4:	e7f1      	b.n	80005ba <putx_+0xa>
 80005d6:	1888      	adds	r0, r1, r2
 80005d8:	f7ff ff9a 	bl	8000510 <puts_>
 80005dc:	b005      	add	sp, #20
 80005de:	f85d fb04 	ldr.w	pc, [sp], #4
	...

080005e4 <printf_>:
 80005e4:	b40f      	push	{r0, r1, r2, r3}
 80005e6:	b537      	push	{r0, r1, r2, r4, r5, lr}
 80005e8:	ac06      	add	r4, sp, #24
 80005ea:	4826      	ldr	r0, [pc, #152]	; (8000684 <printf_+0xa0>)
 80005ec:	f854 5b04 	ldr.w	r5, [r4], #4
 80005f0:	f000 f8a3 	bl	800073a <mutex_lock>
 80005f4:	9401      	str	r4, [sp, #4]
 80005f6:	2400      	movs	r4, #0
 80005f8:	5d28      	ldrb	r0, [r5, r4]
 80005fa:	2800      	cmp	r0, #0
 80005fc:	d039      	beq.n	8000672 <printf_+0x8e>
 80005fe:	2825      	cmp	r0, #37	; 0x25
 8000600:	d003      	beq.n	800060a <printf_+0x26>
 8000602:	f7ff ff75 	bl	80004f0 <putc_>
 8000606:	3401      	adds	r4, #1
 8000608:	e7f6      	b.n	80005f8 <printf_+0x14>
 800060a:	192b      	adds	r3, r5, r4
 800060c:	7858      	ldrb	r0, [r3, #1]
 800060e:	2869      	cmp	r0, #105	; 0x69
 8000610:	d016      	beq.n	8000640 <printf_+0x5c>
 8000612:	d808      	bhi.n	8000626 <printf_+0x42>
 8000614:	2825      	cmp	r0, #37	; 0x25
 8000616:	d028      	beq.n	800066a <printf_+0x86>
 8000618:	2863      	cmp	r0, #99	; 0x63
 800061a:	d128      	bne.n	800066e <printf_+0x8a>
 800061c:	9b01      	ldr	r3, [sp, #4]
 800061e:	1d1a      	adds	r2, r3, #4
 8000620:	9201      	str	r2, [sp, #4]
 8000622:	7818      	ldrb	r0, [r3, #0]
 8000624:	e021      	b.n	800066a <printf_+0x86>
 8000626:	2875      	cmp	r0, #117	; 0x75
 8000628:	d011      	beq.n	800064e <printf_+0x6a>
 800062a:	2878      	cmp	r0, #120	; 0x78
 800062c:	d016      	beq.n	800065c <printf_+0x78>
 800062e:	2873      	cmp	r0, #115	; 0x73
 8000630:	d11d      	bne.n	800066e <printf_+0x8a>
 8000632:	9b01      	ldr	r3, [sp, #4]
 8000634:	1d1a      	adds	r2, r3, #4
 8000636:	6818      	ldr	r0, [r3, #0]
 8000638:	9201      	str	r2, [sp, #4]
 800063a:	f7ff ff69 	bl	8000510 <puts_>
 800063e:	e016      	b.n	800066e <printf_+0x8a>
 8000640:	9b01      	ldr	r3, [sp, #4]
 8000642:	1d1a      	adds	r2, r3, #4
 8000644:	6818      	ldr	r0, [r3, #0]
 8000646:	9201      	str	r2, [sp, #4]
 8000648:	f7ff ff76 	bl	8000538 <puti_>
 800064c:	e00f      	b.n	800066e <printf_+0x8a>
 800064e:	9b01      	ldr	r3, [sp, #4]
 8000650:	1d1a      	adds	r2, r3, #4
 8000652:	6818      	ldr	r0, [r3, #0]
 8000654:	9201      	str	r2, [sp, #4]
 8000656:	f7ff ff94 	bl	8000582 <putui_>
 800065a:	e008      	b.n	800066e <printf_+0x8a>
 800065c:	9b01      	ldr	r3, [sp, #4]
 800065e:	1d1a      	adds	r2, r3, #4
 8000660:	6818      	ldr	r0, [r3, #0]
 8000662:	9201      	str	r2, [sp, #4]
 8000664:	f7ff ffa4 	bl	80005b0 <putx_>
 8000668:	e001      	b.n	800066e <printf_+0x8a>
 800066a:	f7ff ff41 	bl	80004f0 <putc_>
 800066e:	3402      	adds	r4, #2
 8000670:	e7c2      	b.n	80005f8 <printf_+0x14>
 8000672:	4804      	ldr	r0, [pc, #16]	; (8000684 <printf_+0xa0>)
 8000674:	f000 f87d 	bl	8000772 <mutex_unlock>
 8000678:	b003      	add	sp, #12
 800067a:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
 800067e:	b004      	add	sp, #16
 8000680:	4770      	bx	lr
 8000682:	bf00      	nop
 8000684:	20000634 	.word	0x20000634

08000688 <stdio_init>:
 8000688:	b510      	push	{r4, lr}
 800068a:	480e      	ldr	r0, [pc, #56]	; (80006c4 <stdio_init+0x3c>)
 800068c:	f000 f84b 	bl	8000726 <mutex_init>
 8000690:	480d      	ldr	r0, [pc, #52]	; (80006c8 <stdio_init+0x40>)
 8000692:	f000 f848 	bl	8000726 <mutex_init>
 8000696:	480d      	ldr	r0, [pc, #52]	; (80006cc <stdio_init+0x44>)
 8000698:	f000 f845 	bl	8000726 <mutex_init>
 800069c:	480c      	ldr	r0, [pc, #48]	; (80006d0 <stdio_init+0x48>)
 800069e:	f000 f842 	bl	8000726 <mutex_init>
 80006a2:	2408      	movs	r4, #8
 80006a4:	2020      	movs	r0, #32
 80006a6:	f7ff ff23 	bl	80004f0 <putc_>
 80006aa:	3c01      	subs	r4, #1
 80006ac:	d1fa      	bne.n	80006a4 <stdio_init+0x1c>
 80006ae:	2420      	movs	r4, #32
 80006b0:	200a      	movs	r0, #10
 80006b2:	f7ff ff1d 	bl	80004f0 <putc_>
 80006b6:	3c01      	subs	r4, #1
 80006b8:	d1fa      	bne.n	80006b0 <stdio_init+0x28>
 80006ba:	4806      	ldr	r0, [pc, #24]	; (80006d4 <stdio_init+0x4c>)
 80006bc:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80006c0:	f7ff bf90 	b.w	80005e4 <printf_>
 80006c4:	2000062c 	.word	0x2000062c
 80006c8:	20000630 	.word	0x20000630
 80006cc:	20000638 	.word	0x20000638
 80006d0:	20000634 	.word	0x20000634
 80006d4:	080041b0 	.word	0x080041b0

080006d8 <mem_init>:
 80006d8:	4b06      	ldr	r3, [pc, #24]	; (80006f4 <mem_init+0x1c>)
 80006da:	4a07      	ldr	r2, [pc, #28]	; (80006f8 <mem_init+0x20>)
 80006dc:	601a      	str	r2, [r3, #0]
 80006de:	4907      	ldr	r1, [pc, #28]	; (80006fc <mem_init+0x24>)
 80006e0:	4b07      	ldr	r3, [pc, #28]	; (8000700 <mem_init+0x28>)
 80006e2:	4808      	ldr	r0, [pc, #32]	; (8000704 <mem_init+0x2c>)
 80006e4:	1a5b      	subs	r3, r3, r1
 80006e6:	4908      	ldr	r1, [pc, #32]	; (8000708 <mem_init+0x30>)
 80006e8:	4413      	add	r3, r2
 80006ea:	600b      	str	r3, [r1, #0]
 80006ec:	4b07      	ldr	r3, [pc, #28]	; (800070c <mem_init+0x34>)
 80006ee:	601a      	str	r2, [r3, #0]
 80006f0:	f000 b819 	b.w	8000726 <mutex_init>
 80006f4:	2000063c 	.word	0x2000063c
 80006f8:	200011b0 	.word	0x200011b0
 80006fc:	200011b0 	.word	0x200011b0
 8000700:	20004000 	.word	0x20004000
 8000704:	20000648 	.word	0x20000648
 8000708:	20000644 	.word	0x20000644
 800070c:	20000640 	.word	0x20000640

08000710 <lib_os_init>:
 8000710:	b508      	push	{r3, lr}
 8000712:	f7ff fe7f 	bl	8000414 <kernel_init>
 8000716:	f7ff ffdf 	bl	80006d8 <mem_init>
 800071a:	f7ff fecf 	bl	80004bc <messages_init>
 800071e:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8000722:	f7ff bfb1 	b.w	8000688 <stdio_init>

08000726 <mutex_init>:
 8000726:	b510      	push	{r4, lr}
 8000728:	4604      	mov	r4, r0
 800072a:	f7ff fe1b 	bl	8000364 <sched_off>
 800072e:	2300      	movs	r3, #0
 8000730:	6023      	str	r3, [r4, #0]
 8000732:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000736:	f7ff be17 	b.w	8000368 <sched_on>

0800073a <mutex_lock>:
 800073a:	b513      	push	{r0, r1, r4, lr}
 800073c:	4604      	mov	r4, r0
 800073e:	f7ff fe11 	bl	8000364 <sched_off>
 8000742:	6823      	ldr	r3, [r4, #0]
 8000744:	9301      	str	r3, [sp, #4]
 8000746:	f7ff fe0f 	bl	8000368 <sched_on>
 800074a:	9b01      	ldr	r3, [sp, #4]
 800074c:	b10b      	cbz	r3, 8000752 <mutex_lock+0x18>
 800074e:	f7ff fe83 	bl	8000458 <set_wait_state>
 8000752:	9b01      	ldr	r3, [sp, #4]
 8000754:	2b00      	cmp	r3, #0
 8000756:	d1f2      	bne.n	800073e <mutex_lock+0x4>
 8000758:	f7ff fe04 	bl	8000364 <sched_off>
 800075c:	6823      	ldr	r3, [r4, #0]
 800075e:	9301      	str	r3, [sp, #4]
 8000760:	9b01      	ldr	r3, [sp, #4]
 8000762:	2b00      	cmp	r3, #0
 8000764:	d1eb      	bne.n	800073e <mutex_lock+0x4>
 8000766:	2301      	movs	r3, #1
 8000768:	6023      	str	r3, [r4, #0]
 800076a:	f7ff fdfd 	bl	8000368 <sched_on>
 800076e:	b002      	add	sp, #8
 8000770:	bd10      	pop	{r4, pc}

08000772 <mutex_unlock>:
 8000772:	b508      	push	{r3, lr}
 8000774:	f7ff ffd7 	bl	8000726 <mutex_init>
 8000778:	f7ff fe8e 	bl	8000498 <wake_up_threads>
 800077c:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8000780:	f7ff bdf4 	b.w	800036c <yield>

08000784 <lsm9ds0_get>:
 8000784:	4800      	ldr	r0, [pc, #0]	; (8000788 <lsm9ds0_get+0x4>)
 8000786:	4770      	bx	lr
 8000788:	2000064c 	.word	0x2000064c

0800078c <lsm9ds0_read>:
 800078c:	b538      	push	{r3, r4, r5, lr}
 800078e:	2128      	movs	r1, #40	; 0x28
 8000790:	20d4      	movs	r0, #212	; 0xd4
 8000792:	f001 fd22 	bl	80021da <i2c_read_reg>
 8000796:	2129      	movs	r1, #41	; 0x29
 8000798:	4604      	mov	r4, r0
 800079a:	20d4      	movs	r0, #212	; 0xd4
 800079c:	f001 fd1d 	bl	80021da <i2c_read_reg>
 80007a0:	4d3d      	ldr	r5, [pc, #244]	; (8000898 <lsm9ds0_read+0x10c>)
 80007a2:	ea44 2000 	orr.w	r0, r4, r0, lsl #8
 80007a6:	81a8      	strh	r0, [r5, #12]
 80007a8:	212a      	movs	r1, #42	; 0x2a
 80007aa:	20d4      	movs	r0, #212	; 0xd4
 80007ac:	f001 fd15 	bl	80021da <i2c_read_reg>
 80007b0:	212b      	movs	r1, #43	; 0x2b
 80007b2:	4604      	mov	r4, r0
 80007b4:	20d4      	movs	r0, #212	; 0xd4
 80007b6:	f001 fd10 	bl	80021da <i2c_read_reg>
 80007ba:	ea44 2000 	orr.w	r0, r4, r0, lsl #8
 80007be:	81e8      	strh	r0, [r5, #14]
 80007c0:	212c      	movs	r1, #44	; 0x2c
 80007c2:	20d4      	movs	r0, #212	; 0xd4
 80007c4:	f001 fd09 	bl	80021da <i2c_read_reg>
 80007c8:	212d      	movs	r1, #45	; 0x2d
 80007ca:	4604      	mov	r4, r0
 80007cc:	20d4      	movs	r0, #212	; 0xd4
 80007ce:	f001 fd04 	bl	80021da <i2c_read_reg>
 80007d2:	ea44 2000 	orr.w	r0, r4, r0, lsl #8
 80007d6:	69eb      	ldr	r3, [r5, #28]
 80007d8:	b280      	uxth	r0, r0
 80007da:	8228      	strh	r0, [r5, #16]
 80007dc:	b200      	sxth	r0, r0
 80007de:	1ac0      	subs	r0, r0, r3
 80007e0:	2364      	movs	r3, #100	; 0x64
 80007e2:	fb90 f0f3 	sdiv	r0, r0, r3
 80007e6:	6aab      	ldr	r3, [r5, #40]	; 0x28
 80007e8:	4418      	add	r0, r3
 80007ea:	62a8      	str	r0, [r5, #40]	; 0x28
 80007ec:	2108      	movs	r1, #8
 80007ee:	203c      	movs	r0, #60	; 0x3c
 80007f0:	f001 fcf3 	bl	80021da <i2c_read_reg>
 80007f4:	2109      	movs	r1, #9
 80007f6:	4604      	mov	r4, r0
 80007f8:	203c      	movs	r0, #60	; 0x3c
 80007fa:	f001 fcee 	bl	80021da <i2c_read_reg>
 80007fe:	ea44 2000 	orr.w	r0, r4, r0, lsl #8
 8000802:	80e8      	strh	r0, [r5, #6]
 8000804:	210a      	movs	r1, #10
 8000806:	203c      	movs	r0, #60	; 0x3c
 8000808:	f001 fce7 	bl	80021da <i2c_read_reg>
 800080c:	210b      	movs	r1, #11
 800080e:	4604      	mov	r4, r0
 8000810:	203c      	movs	r0, #60	; 0x3c
 8000812:	f001 fce2 	bl	80021da <i2c_read_reg>
 8000816:	ea44 2000 	orr.w	r0, r4, r0, lsl #8
 800081a:	8128      	strh	r0, [r5, #8]
 800081c:	210c      	movs	r1, #12
 800081e:	203c      	movs	r0, #60	; 0x3c
 8000820:	f001 fcdb 	bl	80021da <i2c_read_reg>
 8000824:	210d      	movs	r1, #13
 8000826:	4604      	mov	r4, r0
 8000828:	203c      	movs	r0, #60	; 0x3c
 800082a:	f001 fcd6 	bl	80021da <i2c_read_reg>
 800082e:	ea44 2000 	orr.w	r0, r4, r0, lsl #8
 8000832:	8168      	strh	r0, [r5, #10]
 8000834:	2128      	movs	r1, #40	; 0x28
 8000836:	203c      	movs	r0, #60	; 0x3c
 8000838:	f001 fccf 	bl	80021da <i2c_read_reg>
 800083c:	2129      	movs	r1, #41	; 0x29
 800083e:	4604      	mov	r4, r0
 8000840:	203c      	movs	r0, #60	; 0x3c
 8000842:	f001 fcca 	bl	80021da <i2c_read_reg>
 8000846:	ea44 2000 	orr.w	r0, r4, r0, lsl #8
 800084a:	8028      	strh	r0, [r5, #0]
 800084c:	212a      	movs	r1, #42	; 0x2a
 800084e:	203c      	movs	r0, #60	; 0x3c
 8000850:	f001 fcc3 	bl	80021da <i2c_read_reg>
 8000854:	212b      	movs	r1, #43	; 0x2b
 8000856:	4604      	mov	r4, r0
 8000858:	203c      	movs	r0, #60	; 0x3c
 800085a:	f001 fcbe 	bl	80021da <i2c_read_reg>
 800085e:	ea44 2000 	orr.w	r0, r4, r0, lsl #8
 8000862:	8068      	strh	r0, [r5, #2]
 8000864:	212c      	movs	r1, #44	; 0x2c
 8000866:	203c      	movs	r0, #60	; 0x3c
 8000868:	f001 fcb7 	bl	80021da <i2c_read_reg>
 800086c:	212d      	movs	r1, #45	; 0x2d
 800086e:	4604      	mov	r4, r0
 8000870:	203c      	movs	r0, #60	; 0x3c
 8000872:	f001 fcb2 	bl	80021da <i2c_read_reg>
 8000876:	ea44 2000 	orr.w	r0, r4, r0, lsl #8
 800087a:	80a8      	strh	r0, [r5, #4]
 800087c:	2105      	movs	r1, #5
 800087e:	203c      	movs	r0, #60	; 0x3c
 8000880:	f001 fcab 	bl	80021da <i2c_read_reg>
 8000884:	2106      	movs	r1, #6
 8000886:	4604      	mov	r4, r0
 8000888:	203c      	movs	r0, #60	; 0x3c
 800088a:	f001 fca6 	bl	80021da <i2c_read_reg>
 800088e:	ea44 2000 	orr.w	r0, r4, r0, lsl #8
 8000892:	85a8      	strh	r0, [r5, #44]	; 0x2c
 8000894:	bd38      	pop	{r3, r4, r5, pc}
 8000896:	bf00      	nop
 8000898:	2000064c 	.word	0x2000064c

0800089c <lsm9ds0_init>:
 800089c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80008a0:	20d4      	movs	r0, #212	; 0xd4
 80008a2:	210f      	movs	r1, #15
 80008a4:	f001 fc99 	bl	80021da <i2c_read_reg>
 80008a8:	28d4      	cmp	r0, #212	; 0xd4
 80008aa:	4604      	mov	r4, r0
 80008ac:	d15e      	bne.n	800096c <lsm9ds0_init+0xd0>
 80008ae:	203c      	movs	r0, #60	; 0x3c
 80008b0:	210f      	movs	r1, #15
 80008b2:	f001 fc92 	bl	80021da <i2c_read_reg>
 80008b6:	2849      	cmp	r0, #73	; 0x49
 80008b8:	d15a      	bne.n	8000970 <lsm9ds0_init+0xd4>
 80008ba:	4620      	mov	r0, r4
 80008bc:	2120      	movs	r1, #32
 80008be:	22ff      	movs	r2, #255	; 0xff
 80008c0:	f001 fc78 	bl	80021b4 <i2c_write_reg>
 80008c4:	4620      	mov	r0, r4
 80008c6:	2123      	movs	r1, #35	; 0x23
 80008c8:	2210      	movs	r2, #16
 80008ca:	f001 fc73 	bl	80021b4 <i2c_write_reg>
 80008ce:	203c      	movs	r0, #60	; 0x3c
 80008d0:	211f      	movs	r1, #31
 80008d2:	2200      	movs	r2, #0
 80008d4:	f001 fc6e 	bl	80021b4 <i2c_write_reg>
 80008d8:	203c      	movs	r0, #60	; 0x3c
 80008da:	2120      	movs	r1, #32
 80008dc:	2267      	movs	r2, #103	; 0x67
 80008de:	f001 fc69 	bl	80021b4 <i2c_write_reg>
 80008e2:	203c      	movs	r0, #60	; 0x3c
 80008e4:	2121      	movs	r1, #33	; 0x21
 80008e6:	2200      	movs	r2, #0
 80008e8:	f001 fc64 	bl	80021b4 <i2c_write_reg>
 80008ec:	203c      	movs	r0, #60	; 0x3c
 80008ee:	2124      	movs	r1, #36	; 0x24
 80008f0:	22f4      	movs	r2, #244	; 0xf4
 80008f2:	f001 fc5f 	bl	80021b4 <i2c_write_reg>
 80008f6:	203c      	movs	r0, #60	; 0x3c
 80008f8:	2125      	movs	r1, #37	; 0x25
 80008fa:	2200      	movs	r2, #0
 80008fc:	f001 fc5a 	bl	80021b4 <i2c_write_reg>
 8000900:	203c      	movs	r0, #60	; 0x3c
 8000902:	2126      	movs	r1, #38	; 0x26
 8000904:	2280      	movs	r2, #128	; 0x80
 8000906:	f001 fc55 	bl	80021b4 <i2c_write_reg>
 800090a:	f7ff ff3f 	bl	800078c <lsm9ds0_read>
 800090e:	4b1a      	ldr	r3, [pc, #104]	; (8000978 <lsm9ds0_init+0xdc>)
 8000910:	2500      	movs	r5, #0
 8000912:	615d      	str	r5, [r3, #20]
 8000914:	619d      	str	r5, [r3, #24]
 8000916:	61dd      	str	r5, [r3, #28]
 8000918:	2410      	movs	r4, #16
 800091a:	462f      	mov	r7, r5
 800091c:	46a8      	mov	r8, r5
 800091e:	461e      	mov	r6, r3
 8000920:	f7ff ff34 	bl	800078c <lsm9ds0_read>
 8000924:	f9b6 200c 	ldrsh.w	r2, [r6, #12]
 8000928:	4b13      	ldr	r3, [pc, #76]	; (8000978 <lsm9ds0_init+0xdc>)
 800092a:	4490      	add	r8, r2
 800092c:	f9b6 200e 	ldrsh.w	r2, [r6, #14]
 8000930:	4417      	add	r7, r2
 8000932:	f9b6 2010 	ldrsh.w	r2, [r6, #16]
 8000936:	3c01      	subs	r4, #1
 8000938:	4415      	add	r5, r2
 800093a:	d1f1      	bne.n	8000920 <lsm9ds0_init+0x84>
 800093c:	2110      	movs	r1, #16
 800093e:	801c      	strh	r4, [r3, #0]
 8000940:	fb98 f2f1 	sdiv	r2, r8, r1
 8000944:	fb97 f7f1 	sdiv	r7, r7, r1
 8000948:	fb95 f5f1 	sdiv	r5, r5, r1
 800094c:	615a      	str	r2, [r3, #20]
 800094e:	619f      	str	r7, [r3, #24]
 8000950:	61dd      	str	r5, [r3, #28]
 8000952:	805c      	strh	r4, [r3, #2]
 8000954:	809c      	strh	r4, [r3, #4]
 8000956:	80dc      	strh	r4, [r3, #6]
 8000958:	811c      	strh	r4, [r3, #8]
 800095a:	815c      	strh	r4, [r3, #10]
 800095c:	819c      	strh	r4, [r3, #12]
 800095e:	81dc      	strh	r4, [r3, #14]
 8000960:	821c      	strh	r4, [r3, #16]
 8000962:	859c      	strh	r4, [r3, #44]	; 0x2c
 8000964:	621c      	str	r4, [r3, #32]
 8000966:	625c      	str	r4, [r3, #36]	; 0x24
 8000968:	629c      	str	r4, [r3, #40]	; 0x28
 800096a:	e002      	b.n	8000972 <lsm9ds0_init+0xd6>
 800096c:	2401      	movs	r4, #1
 800096e:	e000      	b.n	8000972 <lsm9ds0_init+0xd6>
 8000970:	2402      	movs	r4, #2
 8000972:	4620      	mov	r0, r4
 8000974:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8000978:	2000064c 	.word	0x2000064c

0800097c <imu_yaw_reset>:
 800097c:	4b01      	ldr	r3, [pc, #4]	; (8000984 <imu_yaw_reset+0x8>)
 800097e:	2200      	movs	r2, #0
 8000980:	629a      	str	r2, [r3, #40]	; 0x28
 8000982:	4770      	bx	lr
 8000984:	2000064c 	.word	0x2000064c

08000988 <TIM2_IRQHandler>:
 8000988:	4a21      	ldr	r2, [pc, #132]	; (8000a10 <TIM2_IRQHandler+0x88>)
 800098a:	4922      	ldr	r1, [pc, #136]	; (8000a14 <TIM2_IRQHandler+0x8c>)
 800098c:	6813      	ldr	r3, [r2, #0]
 800098e:	2b01      	cmp	r3, #1
 8000990:	b510      	push	{r4, lr}
 8000992:	d011      	beq.n	80009b8 <TIM2_IRQHandler+0x30>
 8000994:	d306      	bcc.n	80009a4 <TIM2_IRQHandler+0x1c>
 8000996:	2b02      	cmp	r3, #2
 8000998:	d113      	bne.n	80009c2 <TIM2_IRQHandler+0x3a>
 800099a:	f44f 6380 	mov.w	r3, #1024	; 0x400
 800099e:	850b      	strh	r3, [r1, #40]	; 0x28
 80009a0:	2304      	movs	r3, #4
 80009a2:	e023      	b.n	80009ec <TIM2_IRQHandler+0x64>
 80009a4:	f44f 7380 	mov.w	r3, #256	; 0x100
 80009a8:	850b      	strh	r3, [r1, #40]	; 0x28
 80009aa:	f44f 6380 	mov.w	r3, #1024	; 0x400
 80009ae:	618b      	str	r3, [r1, #24]
 80009b0:	2301      	movs	r3, #1
 80009b2:	6013      	str	r3, [r2, #0]
 80009b4:	6093      	str	r3, [r2, #8]
 80009b6:	e023      	b.n	8000a00 <TIM2_IRQHandler+0x78>
 80009b8:	f44f 7380 	mov.w	r3, #256	; 0x100
 80009bc:	618b      	str	r3, [r1, #24]
 80009be:	2302      	movs	r3, #2
 80009c0:	e014      	b.n	80009ec <TIM2_IRQHandler+0x64>
 80009c2:	f013 0f01 	tst.w	r3, #1
 80009c6:	4814      	ldr	r0, [pc, #80]	; (8000a18 <TIM2_IRQHandler+0x90>)
 80009c8:	f103 0401 	add.w	r4, r3, #1
 80009cc:	d010      	beq.n	80009f0 <TIM2_IRQHandler+0x68>
 80009ce:	3b04      	subs	r3, #4
 80009d0:	f023 0301 	bic.w	r3, r3, #1
 80009d4:	4413      	add	r3, r2
 80009d6:	6c00      	ldr	r0, [r0, #64]	; 0x40
 80009d8:	8298      	strh	r0, [r3, #20]
 80009da:	f5b4 7f82 	cmp.w	r4, #260	; 0x104
 80009de:	f44f 7380 	mov.w	r3, #256	; 0x100
 80009e2:	850b      	strh	r3, [r1, #40]	; 0x28
 80009e4:	d201      	bcs.n	80009ea <TIM2_IRQHandler+0x62>
 80009e6:	6014      	str	r4, [r2, #0]
 80009e8:	e00a      	b.n	8000a00 <TIM2_IRQHandler+0x78>
 80009ea:	2300      	movs	r3, #0
 80009ec:	6013      	str	r3, [r2, #0]
 80009ee:	e007      	b.n	8000a00 <TIM2_IRQHandler+0x78>
 80009f0:	f44f 7380 	mov.w	r3, #256	; 0x100
 80009f4:	618b      	str	r3, [r1, #24]
 80009f6:	6883      	ldr	r3, [r0, #8]
 80009f8:	6014      	str	r4, [r2, #0]
 80009fa:	f043 0304 	orr.w	r3, r3, #4
 80009fe:	6083      	str	r3, [r0, #8]
 8000a00:	f04f 4080 	mov.w	r0, #1073741824	; 0x40000000
 8000a04:	2101      	movs	r1, #1
 8000a06:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000a0a:	f001 b8e0 	b.w	8001bce <TIM_ClearITPendingBit>
 8000a0e:	bf00      	nop
 8000a10:	2000067c 	.word	0x2000067c
 8000a14:	48000400 	.word	0x48000400
 8000a18:	50000500 	.word	0x50000500

08000a1c <rgb_i2c_delay>:
 8000a1c:	bf00      	nop
 8000a1e:	bf00      	nop
 8000a20:	bf00      	nop
 8000a22:	bf00      	nop
 8000a24:	4770      	bx	lr
	...

08000a28 <RGBSetLowSDA>:
 8000a28:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 8000a2a:	4f15      	ldr	r7, [pc, #84]	; (8000a80 <RGBSetLowSDA+0x58>)
 8000a2c:	2401      	movs	r4, #1
 8000a2e:	783b      	ldrb	r3, [r7, #0]
 8000a30:	9300      	str	r3, [sp, #0]
 8000a32:	2603      	movs	r6, #3
 8000a34:	2500      	movs	r5, #0
 8000a36:	4669      	mov	r1, sp
 8000a38:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000a3c:	f88d 5007 	strb.w	r5, [sp, #7]
 8000a40:	f88d 4004 	strb.w	r4, [sp, #4]
 8000a44:	f88d 6005 	strb.w	r6, [sp, #5]
 8000a48:	f88d 4006 	strb.w	r4, [sp, #6]
 8000a4c:	f001 fdbb 	bl	80025c6 <GPIO_Init>
 8000a50:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000a54:	783a      	ldrb	r2, [r7, #0]
 8000a56:	851a      	strh	r2, [r3, #40]	; 0x28
 8000a58:	f88d 5007 	strb.w	r5, [sp, #7]
 8000a5c:	4d09      	ldr	r5, [pc, #36]	; (8000a84 <RGBSetLowSDA+0x5c>)
 8000a5e:	9400      	str	r4, [sp, #0]
 8000a60:	4628      	mov	r0, r5
 8000a62:	4669      	mov	r1, sp
 8000a64:	f88d 4004 	strb.w	r4, [sp, #4]
 8000a68:	f88d 6005 	strb.w	r6, [sp, #5]
 8000a6c:	f88d 4006 	strb.w	r4, [sp, #6]
 8000a70:	f001 fda9 	bl	80025c6 <GPIO_Init>
 8000a74:	852c      	strh	r4, [r5, #40]	; 0x28
 8000a76:	f7ff ffd1 	bl	8000a1c <rgb_i2c_delay>
 8000a7a:	b003      	add	sp, #12
 8000a7c:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000a7e:	bf00      	nop
 8000a80:	200008ea 	.word	0x200008ea
 8000a84:	48000400 	.word	0x48000400

08000a88 <RGBSetHighSDA>:
 8000a88:	b573      	push	{r0, r1, r4, r5, r6, lr}
 8000a8a:	4d13      	ldr	r5, [pc, #76]	; (8000ad8 <RGBSetHighSDA+0x50>)
 8000a8c:	2400      	movs	r4, #0
 8000a8e:	782b      	ldrb	r3, [r5, #0]
 8000a90:	9300      	str	r3, [sp, #0]
 8000a92:	2603      	movs	r6, #3
 8000a94:	4669      	mov	r1, sp
 8000a96:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000a9a:	f88d 4004 	strb.w	r4, [sp, #4]
 8000a9e:	f88d 4007 	strb.w	r4, [sp, #7]
 8000aa2:	f88d 6005 	strb.w	r6, [sp, #5]
 8000aa6:	f001 fd8e 	bl	80025c6 <GPIO_Init>
 8000aaa:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000aae:	782a      	ldrb	r2, [r5, #0]
 8000ab0:	619a      	str	r2, [r3, #24]
 8000ab2:	f88d 4004 	strb.w	r4, [sp, #4]
 8000ab6:	f88d 4007 	strb.w	r4, [sp, #7]
 8000aba:	4c08      	ldr	r4, [pc, #32]	; (8000adc <RGBSetHighSDA+0x54>)
 8000abc:	f88d 6005 	strb.w	r6, [sp, #5]
 8000ac0:	2501      	movs	r5, #1
 8000ac2:	4620      	mov	r0, r4
 8000ac4:	4669      	mov	r1, sp
 8000ac6:	9500      	str	r5, [sp, #0]
 8000ac8:	f001 fd7d 	bl	80025c6 <GPIO_Init>
 8000acc:	61a5      	str	r5, [r4, #24]
 8000ace:	f7ff ffa5 	bl	8000a1c <rgb_i2c_delay>
 8000ad2:	b002      	add	sp, #8
 8000ad4:	bd70      	pop	{r4, r5, r6, pc}
 8000ad6:	bf00      	nop
 8000ad8:	200008ea 	.word	0x200008ea
 8000adc:	48000400 	.word	0x48000400

08000ae0 <RGBSetLowSCL>:
 8000ae0:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000ae4:	f44f 7280 	mov.w	r2, #256	; 0x100
 8000ae8:	851a      	strh	r2, [r3, #40]	; 0x28
 8000aea:	f7ff bf97 	b.w	8000a1c <rgb_i2c_delay>

08000aee <RGBSetHighSCL>:
 8000aee:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000af2:	f44f 7280 	mov.w	r2, #256	; 0x100
 8000af6:	619a      	str	r2, [r3, #24]
 8000af8:	f7ff bf90 	b.w	8000a1c <rgb_i2c_delay>

08000afc <rgb_i2c_init>:
 8000afc:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 8000afe:	4f1f      	ldr	r7, [pc, #124]	; (8000b7c <rgb_i2c_init+0x80>)
 8000b00:	2400      	movs	r4, #0
 8000b02:	2501      	movs	r5, #1
 8000b04:	2603      	movs	r6, #3
 8000b06:	f44f 7380 	mov.w	r3, #256	; 0x100
 8000b0a:	4669      	mov	r1, sp
 8000b0c:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000b10:	9300      	str	r3, [sp, #0]
 8000b12:	f88d 4006 	strb.w	r4, [sp, #6]
 8000b16:	f88d 4007 	strb.w	r4, [sp, #7]
 8000b1a:	f88d 5004 	strb.w	r5, [sp, #4]
 8000b1e:	f88d 6005 	strb.w	r6, [sp, #5]
 8000b22:	f001 fd50 	bl	80025c6 <GPIO_Init>
 8000b26:	783b      	ldrb	r3, [r7, #0]
 8000b28:	9300      	str	r3, [sp, #0]
 8000b2a:	4669      	mov	r1, sp
 8000b2c:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000b30:	f88d 4004 	strb.w	r4, [sp, #4]
 8000b34:	f88d 4007 	strb.w	r4, [sp, #7]
 8000b38:	f88d 6005 	strb.w	r6, [sp, #5]
 8000b3c:	f001 fd43 	bl	80025c6 <GPIO_Init>
 8000b40:	7839      	ldrb	r1, [r7, #0]
 8000b42:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000b46:	f001 fd80 	bl	800264a <GPIO_SetBits>
 8000b4a:	f88d 4004 	strb.w	r4, [sp, #4]
 8000b4e:	f88d 4007 	strb.w	r4, [sp, #7]
 8000b52:	4c0b      	ldr	r4, [pc, #44]	; (8000b80 <rgb_i2c_init+0x84>)
 8000b54:	9500      	str	r5, [sp, #0]
 8000b56:	4620      	mov	r0, r4
 8000b58:	4669      	mov	r1, sp
 8000b5a:	f88d 6005 	strb.w	r6, [sp, #5]
 8000b5e:	f001 fd32 	bl	80025c6 <GPIO_Init>
 8000b62:	4620      	mov	r0, r4
 8000b64:	4629      	mov	r1, r5
 8000b66:	f001 fd70 	bl	800264a <GPIO_SetBits>
 8000b6a:	f7ff ffc0 	bl	8000aee <RGBSetHighSCL>
 8000b6e:	f7ff ff5b 	bl	8000a28 <RGBSetLowSDA>
 8000b72:	f7ff ff89 	bl	8000a88 <RGBSetHighSDA>
 8000b76:	b003      	add	sp, #12
 8000b78:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000b7a:	bf00      	nop
 8000b7c:	200008ea 	.word	0x200008ea
 8000b80:	48000400 	.word	0x48000400

08000b84 <rgb_i2cStart>:
 8000b84:	b508      	push	{r3, lr}
 8000b86:	f7ff ffb2 	bl	8000aee <RGBSetHighSCL>
 8000b8a:	f7ff ff7d 	bl	8000a88 <RGBSetHighSDA>
 8000b8e:	f7ff ffae 	bl	8000aee <RGBSetHighSCL>
 8000b92:	f7ff ff49 	bl	8000a28 <RGBSetLowSDA>
 8000b96:	f7ff ffa3 	bl	8000ae0 <RGBSetLowSCL>
 8000b9a:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8000b9e:	f7ff bf73 	b.w	8000a88 <RGBSetHighSDA>

08000ba2 <rgb_i2cStop>:
 8000ba2:	b508      	push	{r3, lr}
 8000ba4:	f7ff ff9c 	bl	8000ae0 <RGBSetLowSCL>
 8000ba8:	f7ff ff3e 	bl	8000a28 <RGBSetLowSDA>
 8000bac:	f7ff ff9f 	bl	8000aee <RGBSetHighSCL>
 8000bb0:	f7ff ff3a 	bl	8000a28 <RGBSetLowSDA>
 8000bb4:	f7ff ff9b 	bl	8000aee <RGBSetHighSCL>
 8000bb8:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8000bbc:	f7ff bf64 	b.w	8000a88 <RGBSetHighSDA>

08000bc0 <rgb_i2cWrite>:
 8000bc0:	b538      	push	{r3, r4, r5, lr}
 8000bc2:	4605      	mov	r5, r0
 8000bc4:	2408      	movs	r4, #8
 8000bc6:	f7ff ff8b 	bl	8000ae0 <RGBSetLowSCL>
 8000bca:	062b      	lsls	r3, r5, #24
 8000bcc:	d502      	bpl.n	8000bd4 <rgb_i2cWrite+0x14>
 8000bce:	f7ff ff5b 	bl	8000a88 <RGBSetHighSDA>
 8000bd2:	e001      	b.n	8000bd8 <rgb_i2cWrite+0x18>
 8000bd4:	f7ff ff28 	bl	8000a28 <RGBSetLowSDA>
 8000bd8:	3c01      	subs	r4, #1
 8000bda:	f7ff ff88 	bl	8000aee <RGBSetHighSCL>
 8000bde:	006d      	lsls	r5, r5, #1
 8000be0:	f014 04ff 	ands.w	r4, r4, #255	; 0xff
 8000be4:	b2ed      	uxtb	r5, r5
 8000be6:	d1ee      	bne.n	8000bc6 <rgb_i2cWrite+0x6>
 8000be8:	f7ff ff7a 	bl	8000ae0 <RGBSetLowSCL>
 8000bec:	f7ff ff4c 	bl	8000a88 <RGBSetHighSDA>
 8000bf0:	f7ff ff7d 	bl	8000aee <RGBSetHighSCL>
 8000bf4:	f7ff ff74 	bl	8000ae0 <RGBSetLowSCL>
 8000bf8:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8000bfc:	f7ff bf0e 	b.w	8000a1c <rgb_i2c_delay>

08000c00 <rgb_i2cRead>:
 8000c00:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8000c04:	1e4e      	subs	r6, r1, #1
 8000c06:	4680      	mov	r8, r0
 8000c08:	460c      	mov	r4, r1
 8000c0a:	f101 0708 	add.w	r7, r1, #8
 8000c0e:	4633      	mov	r3, r6
 8000c10:	2200      	movs	r2, #0
 8000c12:	f803 2f01 	strb.w	r2, [r3, #1]!
 8000c16:	42bb      	cmp	r3, r7
 8000c18:	d1fa      	bne.n	8000c10 <rgb_i2cRead+0x10>
 8000c1a:	f7ff ff61 	bl	8000ae0 <RGBSetLowSCL>
 8000c1e:	f7ff ff33 	bl	8000a88 <RGBSetHighSDA>
 8000c22:	2508      	movs	r5, #8
 8000c24:	4633      	mov	r3, r6
 8000c26:	f813 2f01 	ldrb.w	r2, [r3, #1]!
 8000c2a:	0052      	lsls	r2, r2, #1
 8000c2c:	42bb      	cmp	r3, r7
 8000c2e:	701a      	strb	r2, [r3, #0]
 8000c30:	d1f9      	bne.n	8000c26 <rgb_i2cRead+0x26>
 8000c32:	f7ff ff5c 	bl	8000aee <RGBSetHighSCL>
 8000c36:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000c3a:	8a1b      	ldrh	r3, [r3, #16]
 8000c3c:	b29b      	uxth	r3, r3
 8000c3e:	07d9      	lsls	r1, r3, #31
 8000c40:	bf42      	ittt	mi
 8000c42:	7822      	ldrbmi	r2, [r4, #0]
 8000c44:	f042 0201 	orrmi.w	r2, r2, #1
 8000c48:	7022      	strbmi	r2, [r4, #0]
 8000c4a:	079a      	lsls	r2, r3, #30
 8000c4c:	bf42      	ittt	mi
 8000c4e:	7862      	ldrbmi	r2, [r4, #1]
 8000c50:	f042 0201 	orrmi.w	r2, r2, #1
 8000c54:	7062      	strbmi	r2, [r4, #1]
 8000c56:	0758      	lsls	r0, r3, #29
 8000c58:	bf42      	ittt	mi
 8000c5a:	78a2      	ldrbmi	r2, [r4, #2]
 8000c5c:	f042 0201 	orrmi.w	r2, r2, #1
 8000c60:	70a2      	strbmi	r2, [r4, #2]
 8000c62:	0719      	lsls	r1, r3, #28
 8000c64:	bf42      	ittt	mi
 8000c66:	78e2      	ldrbmi	r2, [r4, #3]
 8000c68:	f042 0201 	orrmi.w	r2, r2, #1
 8000c6c:	70e2      	strbmi	r2, [r4, #3]
 8000c6e:	06da      	lsls	r2, r3, #27
 8000c70:	bf42      	ittt	mi
 8000c72:	7922      	ldrbmi	r2, [r4, #4]
 8000c74:	f042 0201 	orrmi.w	r2, r2, #1
 8000c78:	7122      	strbmi	r2, [r4, #4]
 8000c7a:	0698      	lsls	r0, r3, #26
 8000c7c:	bf42      	ittt	mi
 8000c7e:	7962      	ldrbmi	r2, [r4, #5]
 8000c80:	f042 0201 	orrmi.w	r2, r2, #1
 8000c84:	7162      	strbmi	r2, [r4, #5]
 8000c86:	0659      	lsls	r1, r3, #25
 8000c88:	bf42      	ittt	mi
 8000c8a:	79a2      	ldrbmi	r2, [r4, #6]
 8000c8c:	f042 0201 	orrmi.w	r2, r2, #1
 8000c90:	71a2      	strbmi	r2, [r4, #6]
 8000c92:	061a      	lsls	r2, r3, #24
 8000c94:	bf42      	ittt	mi
 8000c96:	79e3      	ldrbmi	r3, [r4, #7]
 8000c98:	f043 0301 	orrmi.w	r3, r3, #1
 8000c9c:	71e3      	strbmi	r3, [r4, #7]
 8000c9e:	4b0c      	ldr	r3, [pc, #48]	; (8000cd0 <rgb_i2cRead+0xd0>)
 8000ca0:	8a1b      	ldrh	r3, [r3, #16]
 8000ca2:	07db      	lsls	r3, r3, #31
 8000ca4:	bf42      	ittt	mi
 8000ca6:	7a23      	ldrbmi	r3, [r4, #8]
 8000ca8:	f043 0301 	orrmi.w	r3, r3, #1
 8000cac:	7223      	strbmi	r3, [r4, #8]
 8000cae:	f7ff ff17 	bl	8000ae0 <RGBSetLowSCL>
 8000cb2:	3d01      	subs	r5, #1
 8000cb4:	d1b6      	bne.n	8000c24 <rgb_i2cRead+0x24>
 8000cb6:	f1b8 0f00 	cmp.w	r8, #0
 8000cba:	d001      	beq.n	8000cc0 <rgb_i2cRead+0xc0>
 8000cbc:	f7ff feb4 	bl	8000a28 <RGBSetLowSDA>
 8000cc0:	f7ff ff15 	bl	8000aee <RGBSetHighSCL>
 8000cc4:	f7ff ff0c 	bl	8000ae0 <RGBSetLowSCL>
 8000cc8:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8000ccc:	f7ff bea6 	b.w	8000a1c <rgb_i2c_delay>
 8000cd0:	48000400 	.word	0x48000400

08000cd4 <rgb_i2c_write_reg>:
 8000cd4:	b570      	push	{r4, r5, r6, lr}
 8000cd6:	4606      	mov	r6, r0
 8000cd8:	460d      	mov	r5, r1
 8000cda:	4614      	mov	r4, r2
 8000cdc:	f7ff ff52 	bl	8000b84 <rgb_i2cStart>
 8000ce0:	4630      	mov	r0, r6
 8000ce2:	f7ff ff6d 	bl	8000bc0 <rgb_i2cWrite>
 8000ce6:	4628      	mov	r0, r5
 8000ce8:	f7ff ff6a 	bl	8000bc0 <rgb_i2cWrite>
 8000cec:	4620      	mov	r0, r4
 8000cee:	f7ff ff67 	bl	8000bc0 <rgb_i2cWrite>
 8000cf2:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8000cf6:	f7ff bf54 	b.w	8000ba2 <rgb_i2cStop>

08000cfa <rgb_i2c_read_reg>:
 8000cfa:	b570      	push	{r4, r5, r6, lr}
 8000cfc:	4604      	mov	r4, r0
 8000cfe:	460e      	mov	r6, r1
 8000d00:	4615      	mov	r5, r2
 8000d02:	f7ff ff3f 	bl	8000b84 <rgb_i2cStart>
 8000d06:	4620      	mov	r0, r4
 8000d08:	f7ff ff5a 	bl	8000bc0 <rgb_i2cWrite>
 8000d0c:	4630      	mov	r0, r6
 8000d0e:	f7ff ff57 	bl	8000bc0 <rgb_i2cWrite>
 8000d12:	f7ff ff37 	bl	8000b84 <rgb_i2cStart>
 8000d16:	f044 0001 	orr.w	r0, r4, #1
 8000d1a:	f7ff ff51 	bl	8000bc0 <rgb_i2cWrite>
 8000d1e:	4629      	mov	r1, r5
 8000d20:	2000      	movs	r0, #0
 8000d22:	f7ff ff6d 	bl	8000c00 <rgb_i2cRead>
 8000d26:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8000d2a:	f7ff bf3a 	b.w	8000ba2 <rgb_i2cStop>
	...

08000d30 <rgb_init>:
 8000d30:	b570      	push	{r4, r5, r6, lr}
 8000d32:	4b1e      	ldr	r3, [pc, #120]	; (8000dac <rgb_init+0x7c>)
 8000d34:	2200      	movs	r2, #0
 8000d36:	3201      	adds	r2, #1
 8000d38:	2400      	movs	r4, #0
 8000d3a:	2a09      	cmp	r2, #9
 8000d3c:	801c      	strh	r4, [r3, #0]
 8000d3e:	825c      	strh	r4, [r3, #18]
 8000d40:	849c      	strh	r4, [r3, #36]	; 0x24
 8000d42:	f8a3 4048 	strh.w	r4, [r3, #72]	; 0x48
 8000d46:	86dc      	strh	r4, [r3, #54]	; 0x36
 8000d48:	f103 0302 	add.w	r3, r3, #2
 8000d4c:	d1f3      	bne.n	8000d36 <rgb_init+0x6>
 8000d4e:	4d18      	ldr	r5, [pc, #96]	; (8000db0 <rgb_init+0x80>)
 8000d50:	f64f 76ff 	movw	r6, #65535	; 0xffff
 8000d54:	802e      	strh	r6, [r5, #0]
 8000d56:	f7ff fed1 	bl	8000afc <rgb_i2c_init>
 8000d5a:	2072      	movs	r0, #114	; 0x72
 8000d5c:	2181      	movs	r1, #129	; 0x81
 8000d5e:	22ff      	movs	r2, #255	; 0xff
 8000d60:	f7ff ffb8 	bl	8000cd4 <rgb_i2c_write_reg>
 8000d64:	2072      	movs	r0, #114	; 0x72
 8000d66:	2183      	movs	r1, #131	; 0x83
 8000d68:	22ff      	movs	r2, #255	; 0xff
 8000d6a:	f7ff ffb3 	bl	8000cd4 <rgb_i2c_write_reg>
 8000d6e:	2072      	movs	r0, #114	; 0x72
 8000d70:	218d      	movs	r1, #141	; 0x8d
 8000d72:	4622      	mov	r2, r4
 8000d74:	f7ff ffae 	bl	8000cd4 <rgb_i2c_write_reg>
 8000d78:	2072      	movs	r0, #114	; 0x72
 8000d7a:	2180      	movs	r1, #128	; 0x80
 8000d7c:	2203      	movs	r2, #3
 8000d7e:	f7ff ffa9 	bl	8000cd4 <rgb_i2c_write_reg>
 8000d82:	2072      	movs	r0, #114	; 0x72
 8000d84:	218f      	movs	r1, #143	; 0x8f
 8000d86:	2223      	movs	r2, #35	; 0x23
 8000d88:	f7ff ffa4 	bl	8000cd4 <rgb_i2c_write_reg>
 8000d8c:	f7ff fe7c 	bl	8000a88 <RGBSetHighSDA>
 8000d90:	2072      	movs	r0, #114	; 0x72
 8000d92:	2180      	movs	r1, #128	; 0x80
 8000d94:	2207      	movs	r2, #7
 8000d96:	802c      	strh	r4, [r5, #0]
 8000d98:	f7ff ff9c 	bl	8000cd4 <rgb_i2c_write_reg>
 8000d9c:	2072      	movs	r0, #114	; 0x72
 8000d9e:	218e      	movs	r1, #142	; 0x8e
 8000da0:	2208      	movs	r2, #8
 8000da2:	f7ff ff97 	bl	8000cd4 <rgb_i2c_write_reg>
 8000da6:	802e      	strh	r6, [r5, #0]
 8000da8:	bd70      	pop	{r4, r5, r6, pc}
 8000daa:	bf00      	nop
 8000dac:	20000890 	.word	0x20000890
 8000db0:	200008ea 	.word	0x200008ea

08000db4 <rgb_get>:
 8000db4:	4800      	ldr	r0, [pc, #0]	; (8000db8 <rgb_get+0x4>)
 8000db6:	4770      	bx	lr
 8000db8:	20000890 	.word	0x20000890

08000dbc <rgb_read>:
 8000dbc:	b538      	push	{r3, r4, r5, lr}
 8000dbe:	f7ff fee1 	bl	8000b84 <rgb_i2cStart>
 8000dc2:	2072      	movs	r0, #114	; 0x72
 8000dc4:	f7ff fefc 	bl	8000bc0 <rgb_i2cWrite>
 8000dc8:	20b4      	movs	r0, #180	; 0xb4
 8000dca:	f7ff fef9 	bl	8000bc0 <rgb_i2cWrite>
 8000dce:	4d48      	ldr	r5, [pc, #288]	; (8000ef0 <rgb_read+0x134>)
 8000dd0:	f7ff fed8 	bl	8000b84 <rgb_i2cStart>
 8000dd4:	2073      	movs	r0, #115	; 0x73
 8000dd6:	f7ff fef3 	bl	8000bc0 <rgb_i2cWrite>
 8000dda:	2001      	movs	r0, #1
 8000ddc:	4945      	ldr	r1, [pc, #276]	; (8000ef4 <rgb_read+0x138>)
 8000dde:	f7ff ff0f 	bl	8000c00 <rgb_i2cRead>
 8000de2:	462a      	mov	r2, r5
 8000de4:	2300      	movs	r3, #0
 8000de6:	4c43      	ldr	r4, [pc, #268]	; (8000ef4 <rgb_read+0x138>)
 8000de8:	5d19      	ldrb	r1, [r3, r4]
 8000dea:	f822 1f02 	strh.w	r1, [r2, #2]!
 8000dee:	3301      	adds	r3, #1
 8000df0:	2b09      	cmp	r3, #9
 8000df2:	d1f8      	bne.n	8000de6 <rgb_read+0x2a>
 8000df4:	2001      	movs	r0, #1
 8000df6:	4621      	mov	r1, r4
 8000df8:	f7ff ff02 	bl	8000c00 <rgb_i2cRead>
 8000dfc:	2300      	movs	r3, #0
 8000dfe:	5ce1      	ldrb	r1, [r4, r3]
 8000e00:	f835 2f02 	ldrh.w	r2, [r5, #2]!
 8000e04:	3301      	adds	r3, #1
 8000e06:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
 8000e0a:	2b09      	cmp	r3, #9
 8000e0c:	802a      	strh	r2, [r5, #0]
 8000e0e:	d1f6      	bne.n	8000dfe <rgb_read+0x42>
 8000e10:	2001      	movs	r0, #1
 8000e12:	4938      	ldr	r1, [pc, #224]	; (8000ef4 <rgb_read+0x138>)
 8000e14:	f7ff fef4 	bl	8000c00 <rgb_i2cRead>
 8000e18:	2300      	movs	r3, #0
 8000e1a:	4d37      	ldr	r5, [pc, #220]	; (8000ef8 <rgb_read+0x13c>)
 8000e1c:	5ce2      	ldrb	r2, [r4, r3]
 8000e1e:	f825 2013 	strh.w	r2, [r5, r3, lsl #1]
 8000e22:	3301      	adds	r3, #1
 8000e24:	2b09      	cmp	r3, #9
 8000e26:	d1f8      	bne.n	8000e1a <rgb_read+0x5e>
 8000e28:	2001      	movs	r0, #1
 8000e2a:	4932      	ldr	r1, [pc, #200]	; (8000ef4 <rgb_read+0x138>)
 8000e2c:	f7ff fee8 	bl	8000c00 <rgb_i2cRead>
 8000e30:	2300      	movs	r3, #0
 8000e32:	f835 2013 	ldrh.w	r2, [r5, r3, lsl #1]
 8000e36:	5ce1      	ldrb	r1, [r4, r3]
 8000e38:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
 8000e3c:	f825 2013 	strh.w	r2, [r5, r3, lsl #1]
 8000e40:	3301      	adds	r3, #1
 8000e42:	2b09      	cmp	r3, #9
 8000e44:	d1f5      	bne.n	8000e32 <rgb_read+0x76>
 8000e46:	4d2d      	ldr	r5, [pc, #180]	; (8000efc <rgb_read+0x140>)
 8000e48:	492a      	ldr	r1, [pc, #168]	; (8000ef4 <rgb_read+0x138>)
 8000e4a:	2001      	movs	r0, #1
 8000e4c:	f7ff fed8 	bl	8000c00 <rgb_i2cRead>
 8000e50:	462a      	mov	r2, r5
 8000e52:	2300      	movs	r3, #0
 8000e54:	5ce1      	ldrb	r1, [r4, r3]
 8000e56:	f822 1f02 	strh.w	r1, [r2, #2]!
 8000e5a:	3301      	adds	r3, #1
 8000e5c:	2b09      	cmp	r3, #9
 8000e5e:	d1f9      	bne.n	8000e54 <rgb_read+0x98>
 8000e60:	2001      	movs	r0, #1
 8000e62:	4924      	ldr	r1, [pc, #144]	; (8000ef4 <rgb_read+0x138>)
 8000e64:	f7ff fecc 	bl	8000c00 <rgb_i2cRead>
 8000e68:	2300      	movs	r3, #0
 8000e6a:	5ce1      	ldrb	r1, [r4, r3]
 8000e6c:	f835 2f02 	ldrh.w	r2, [r5, #2]!
 8000e70:	3301      	adds	r3, #1
 8000e72:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
 8000e76:	2b09      	cmp	r3, #9
 8000e78:	802a      	strh	r2, [r5, #0]
 8000e7a:	d1f6      	bne.n	8000e6a <rgb_read+0xae>
 8000e7c:	4d20      	ldr	r5, [pc, #128]	; (8000f00 <rgb_read+0x144>)
 8000e7e:	491d      	ldr	r1, [pc, #116]	; (8000ef4 <rgb_read+0x138>)
 8000e80:	2001      	movs	r0, #1
 8000e82:	f7ff febd 	bl	8000c00 <rgb_i2cRead>
 8000e86:	462a      	mov	r2, r5
 8000e88:	2300      	movs	r3, #0
 8000e8a:	5ce1      	ldrb	r1, [r4, r3]
 8000e8c:	f822 1f02 	strh.w	r1, [r2, #2]!
 8000e90:	3301      	adds	r3, #1
 8000e92:	2b09      	cmp	r3, #9
 8000e94:	d1f9      	bne.n	8000e8a <rgb_read+0xce>
 8000e96:	2001      	movs	r0, #1
 8000e98:	4916      	ldr	r1, [pc, #88]	; (8000ef4 <rgb_read+0x138>)
 8000e9a:	f7ff feb1 	bl	8000c00 <rgb_i2cRead>
 8000e9e:	2300      	movs	r3, #0
 8000ea0:	5ce1      	ldrb	r1, [r4, r3]
 8000ea2:	f835 2f02 	ldrh.w	r2, [r5, #2]!
 8000ea6:	3301      	adds	r3, #1
 8000ea8:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
 8000eac:	2b09      	cmp	r3, #9
 8000eae:	802a      	strh	r2, [r5, #0]
 8000eb0:	d1f6      	bne.n	8000ea0 <rgb_read+0xe4>
 8000eb2:	4d14      	ldr	r5, [pc, #80]	; (8000f04 <rgb_read+0x148>)
 8000eb4:	490f      	ldr	r1, [pc, #60]	; (8000ef4 <rgb_read+0x138>)
 8000eb6:	2001      	movs	r0, #1
 8000eb8:	f7ff fea2 	bl	8000c00 <rgb_i2cRead>
 8000ebc:	462a      	mov	r2, r5
 8000ebe:	2300      	movs	r3, #0
 8000ec0:	5ce1      	ldrb	r1, [r4, r3]
 8000ec2:	f822 1f02 	strh.w	r1, [r2, #2]!
 8000ec6:	3301      	adds	r3, #1
 8000ec8:	2b09      	cmp	r3, #9
 8000eca:	d1f9      	bne.n	8000ec0 <rgb_read+0x104>
 8000ecc:	2000      	movs	r0, #0
 8000ece:	4909      	ldr	r1, [pc, #36]	; (8000ef4 <rgb_read+0x138>)
 8000ed0:	f7ff fe96 	bl	8000c00 <rgb_i2cRead>
 8000ed4:	2300      	movs	r3, #0
 8000ed6:	5ce1      	ldrb	r1, [r4, r3]
 8000ed8:	f835 2f02 	ldrh.w	r2, [r5, #2]!
 8000edc:	3301      	adds	r3, #1
 8000ede:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
 8000ee2:	2b09      	cmp	r3, #9
 8000ee4:	802a      	strh	r2, [r5, #0]
 8000ee6:	d1f6      	bne.n	8000ed6 <rgb_read+0x11a>
 8000ee8:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8000eec:	f7ff be59 	b.w	8000ba2 <rgb_i2cStop>
 8000ef0:	200008c4 	.word	0x200008c4
 8000ef4:	200008ec 	.word	0x200008ec
 8000ef8:	20000890 	.word	0x20000890
 8000efc:	200008a0 	.word	0x200008a0
 8000f00:	200008b2 	.word	0x200008b2
 8000f04:	200008d6 	.word	0x200008d6

08000f08 <line_sensor_init>:
 8000f08:	b570      	push	{r4, r5, r6, lr}
 8000f0a:	4606      	mov	r6, r0
 8000f0c:	2064      	movs	r0, #100	; 0x64
 8000f0e:	460d      	mov	r5, r1
 8000f10:	2400      	movs	r4, #0
 8000f12:	f000 fee7 	bl	8001ce4 <timer_delay_ms>
 8000f16:	f7ff ff0b 	bl	8000d30 <rgb_init>
 8000f1a:	f7ff ff4f 	bl	8000dbc <rgb_read>
 8000f1e:	4a13      	ldr	r2, [pc, #76]	; (8000f6c <line_sensor_init+0x64>)
 8000f20:	2072      	movs	r0, #114	; 0x72
 8000f22:	2192      	movs	r1, #146	; 0x92
 8000f24:	f7ff fee9 	bl	8000cfa <rgb_i2c_read_reg>
 8000f28:	4622      	mov	r2, r4
 8000f2a:	4b10      	ldr	r3, [pc, #64]	; (8000f6c <line_sensor_init+0x64>)
 8000f2c:	5cd1      	ldrb	r1, [r2, r3]
 8000f2e:	2969      	cmp	r1, #105	; 0x69
 8000f30:	bf1c      	itt	ne
 8000f32:	2101      	movne	r1, #1
 8000f34:	4091      	lslne	r1, r2
 8000f36:	f102 0201 	add.w	r2, r2, #1
 8000f3a:	bf18      	it	ne
 8000f3c:	430c      	orrne	r4, r1
 8000f3e:	2a09      	cmp	r2, #9
 8000f40:	d1f3      	bne.n	8000f2a <line_sensor_init+0x22>
 8000f42:	490b      	ldr	r1, [pc, #44]	; (8000f70 <line_sensor_init+0x68>)
 8000f44:	f101 0020 	add.w	r0, r1, #32
 8000f48:	2200      	movs	r2, #0
 8000f4a:	f841 2f04 	str.w	r2, [r1, #4]!
 8000f4e:	4281      	cmp	r1, r0
 8000f50:	d1fa      	bne.n	8000f48 <line_sensor_init+0x40>
 8000f52:	f883 2030 	strb.w	r2, [r3, #48]	; 0x30
 8000f56:	635a      	str	r2, [r3, #52]	; 0x34
 8000f58:	871e      	strh	r6, [r3, #56]	; 0x38
 8000f5a:	f883 203a 	strb.w	r2, [r3, #58]	; 0x3a
 8000f5e:	63da      	str	r2, [r3, #60]	; 0x3c
 8000f60:	641d      	str	r5, [r3, #64]	; 0x40
 8000f62:	f7ff ff2b 	bl	8000dbc <rgb_read>
 8000f66:	4620      	mov	r0, r4
 8000f68:	bd70      	pop	{r4, r5, r6, pc}
 8000f6a:	bf00      	nop
 8000f6c:	200008f8 	.word	0x200008f8
 8000f70:	20000900 	.word	0x20000900

08000f74 <line_sensor_get>:
 8000f74:	4800      	ldr	r0, [pc, #0]	; (8000f78 <line_sensor_get+0x4>)
 8000f76:	4770      	bx	lr
 8000f78:	200008f8 	.word	0x200008f8

08000f7c <line_sensor_read>:
 8000f7c:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8000f80:	4606      	mov	r6, r0
 8000f82:	f7ff ff1b 	bl	8000dbc <rgb_read>
 8000f86:	2e00      	cmp	r6, #0
 8000f88:	f040 8138 	bne.w	80011fc <line_sensor_read+0x280>
 8000f8c:	4c9c      	ldr	r4, [pc, #624]	; (8001200 <line_sensor_read+0x284>)
 8000f8e:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 8000f90:	ebc3 05c3 	rsb	r5, r3, r3, lsl #3
 8000f94:	f7ff ff0e 	bl	8000db4 <rgb_get>
 8000f98:	f9b0 2058 	ldrsh.w	r2, [r0, #88]	; 0x58
 8000f9c:	18ab      	adds	r3, r5, r2
 8000f9e:	2208      	movs	r2, #8
 8000fa0:	fb93 f3f2 	sdiv	r3, r3, r2
 8000fa4:	6c22      	ldr	r2, [r4, #64]	; 0x40
 8000fa6:	63e3      	str	r3, [r4, #60]	; 0x3c
 8000fa8:	4293      	cmp	r3, r2
 8000faa:	dd08      	ble.n	8000fbe <line_sensor_read+0x42>
 8000fac:	2301      	movs	r3, #1
 8000fae:	f884 303a 	strb.w	r3, [r4, #58]	; 0x3a
 8000fb2:	2600      	movs	r6, #0
 8000fb4:	4637      	mov	r7, r6
 8000fb6:	46b0      	mov	r8, r6
 8000fb8:	46b1      	mov	r9, r6
 8000fba:	4635      	mov	r5, r6
 8000fbc:	e002      	b.n	8000fc4 <line_sensor_read+0x48>
 8000fbe:	f884 603a 	strb.w	r6, [r4, #58]	; 0x3a
 8000fc2:	e7f6      	b.n	8000fb2 <line_sensor_read+0x36>
 8000fc4:	f7ff fef6 	bl	8000db4 <rgb_get>
 8000fc8:	ea4f 0a45 	mov.w	sl, r5, lsl #1
 8000fcc:	4450      	add	r0, sl
 8000fce:	4b8d      	ldr	r3, [pc, #564]	; (8001204 <line_sensor_read+0x288>)
 8000fd0:	f853 2025 	ldr.w	r2, [r3, r5, lsl #2]
 8000fd4:	8ec3      	ldrh	r3, [r0, #54]	; 0x36
 8000fd6:	1a9b      	subs	r3, r3, r2
 8000fd8:	86c3      	strh	r3, [r0, #54]	; 0x36
 8000fda:	f7ff feeb 	bl	8000db4 <rgb_get>
 8000fde:	4b8a      	ldr	r3, [pc, #552]	; (8001208 <line_sensor_read+0x28c>)
 8000fe0:	f853 2025 	ldr.w	r2, [r3, r5, lsl #2]
 8000fe4:	f830 3015 	ldrh.w	r3, [r0, r5, lsl #1]
 8000fe8:	1a9b      	subs	r3, r3, r2
 8000fea:	f820 3015 	strh.w	r3, [r0, r5, lsl #1]
 8000fee:	f7ff fee1 	bl	8000db4 <rgb_get>
 8000ff2:	4b86      	ldr	r3, [pc, #536]	; (800120c <line_sensor_read+0x290>)
 8000ff4:	4450      	add	r0, sl
 8000ff6:	f853 2025 	ldr.w	r2, [r3, r5, lsl #2]
 8000ffa:	8a43      	ldrh	r3, [r0, #18]
 8000ffc:	1a9b      	subs	r3, r3, r2
 8000ffe:	8243      	strh	r3, [r0, #18]
 8001000:	f7ff fed8 	bl	8000db4 <rgb_get>
 8001004:	4b82      	ldr	r3, [pc, #520]	; (8001210 <line_sensor_read+0x294>)
 8001006:	4450      	add	r0, sl
 8001008:	f853 2025 	ldr.w	r2, [r3, r5, lsl #2]
 800100c:	8c83      	ldrh	r3, [r0, #36]	; 0x24
 800100e:	1a9b      	subs	r3, r3, r2
 8001010:	8483      	strh	r3, [r0, #36]	; 0x24
 8001012:	f7ff fecf 	bl	8000db4 <rgb_get>
 8001016:	eb00 0045 	add.w	r0, r0, r5, lsl #1
 800101a:	f9b0 3036 	ldrsh.w	r3, [r0, #54]	; 0x36
 800101e:	4499      	add	r9, r3
 8001020:	f7ff fec8 	bl	8000db4 <rgb_get>
 8001024:	f930 3015 	ldrsh.w	r3, [r0, r5, lsl #1]
 8001028:	4498      	add	r8, r3
 800102a:	f7ff fec3 	bl	8000db4 <rgb_get>
 800102e:	eb00 0045 	add.w	r0, r0, r5, lsl #1
 8001032:	f9b0 3012 	ldrsh.w	r3, [r0, #18]
 8001036:	441f      	add	r7, r3
 8001038:	f7ff febc 	bl	8000db4 <rgb_get>
 800103c:	eb00 0045 	add.w	r0, r0, r5, lsl #1
 8001040:	3501      	adds	r5, #1
 8001042:	f9b0 3024 	ldrsh.w	r3, [r0, #36]	; 0x24
 8001046:	2d08      	cmp	r5, #8
 8001048:	441e      	add	r6, r3
 800104a:	d1bb      	bne.n	8000fc4 <line_sensor_read+0x48>
 800104c:	fb99 f9f5 	sdiv	r9, r9, r5
 8001050:	fb98 f8f5 	sdiv	r8, r8, r5
 8001054:	fb97 f7f5 	sdiv	r7, r7, r5
 8001058:	fb96 f5f5 	sdiv	r5, r6, r5
 800105c:	2600      	movs	r6, #0
 800105e:	f7ff fea9 	bl	8000db4 <rgb_get>
 8001062:	4682      	mov	sl, r0
 8001064:	f7ff fea6 	bl	8000db4 <rgb_get>
 8001068:	f106 0318 	add.w	r3, r6, #24
 800106c:	005b      	lsls	r3, r3, #1
 800106e:	4418      	add	r0, r3
 8001070:	449a      	add	sl, r3
 8001072:	88c3      	ldrh	r3, [r0, #6]
 8001074:	ebc3 0309 	rsb	r3, r3, r9
 8001078:	f8aa 3006 	strh.w	r3, [sl, #6]
 800107c:	f7ff fe9a 	bl	8000db4 <rgb_get>
 8001080:	4682      	mov	sl, r0
 8001082:	f7ff fe97 	bl	8000db4 <rgb_get>
 8001086:	f830 3016 	ldrh.w	r3, [r0, r6, lsl #1]
 800108a:	ebc8 0303 	rsb	r3, r8, r3
 800108e:	f82a 3016 	strh.w	r3, [sl, r6, lsl #1]
 8001092:	f7ff fe8f 	bl	8000db4 <rgb_get>
 8001096:	4682      	mov	sl, r0
 8001098:	f7ff fe8c 	bl	8000db4 <rgb_get>
 800109c:	f106 0308 	add.w	r3, r6, #8
 80010a0:	005b      	lsls	r3, r3, #1
 80010a2:	4418      	add	r0, r3
 80010a4:	449a      	add	sl, r3
 80010a6:	8843      	ldrh	r3, [r0, #2]
 80010a8:	1bdb      	subs	r3, r3, r7
 80010aa:	f8aa 3002 	strh.w	r3, [sl, #2]
 80010ae:	f7ff fe81 	bl	8000db4 <rgb_get>
 80010b2:	4682      	mov	sl, r0
 80010b4:	f7ff fe7e 	bl	8000db4 <rgb_get>
 80010b8:	f106 0310 	add.w	r3, r6, #16
 80010bc:	005b      	lsls	r3, r3, #1
 80010be:	4418      	add	r0, r3
 80010c0:	449a      	add	sl, r3
 80010c2:	8883      	ldrh	r3, [r0, #4]
 80010c4:	3601      	adds	r6, #1
 80010c6:	1b5b      	subs	r3, r3, r5
 80010c8:	2e08      	cmp	r6, #8
 80010ca:	f8aa 3004 	strh.w	r3, [sl, #4]
 80010ce:	d1c6      	bne.n	800105e <line_sensor_read+0xe2>
 80010d0:	4e50      	ldr	r6, [pc, #320]	; (8001214 <line_sensor_read+0x298>)
 80010d2:	2500      	movs	r5, #0
 80010d4:	f7ff fe6e 	bl	8000db4 <rgb_get>
 80010d8:	eb00 0045 	add.w	r0, r0, r5, lsl #1
 80010dc:	3501      	adds	r5, #1
 80010de:	f9b0 3036 	ldrsh.w	r3, [r0, #54]	; 0x36
 80010e2:	f846 3f04 	str.w	r3, [r6, #4]!
 80010e6:	2d08      	cmp	r5, #8
 80010e8:	d1f4      	bne.n	80010d4 <line_sensor_read+0x158>
 80010ea:	69e0      	ldr	r0, [r4, #28]
 80010ec:	69a7      	ldr	r7, [r4, #24]
 80010ee:	6a26      	ldr	r6, [r4, #32]
 80010f0:	183a      	adds	r2, r7, r0
 80010f2:	bf1f      	itttt	ne
 80010f4:	4b48      	ldrne	r3, [pc, #288]	; (8001218 <line_sensor_read+0x29c>)
 80010f6:	f9b3 1006 	ldrshne.w	r1, [r3, #6]
 80010fa:	f9b3 3008 	ldrshne.w	r3, [r3, #8]
 80010fe:	4343      	mulne	r3, r0
 8001100:	bf17      	itett	ne
 8001102:	fb01 3507 	mlane	r5, r1, r7, r3
 8001106:	4613      	moveq	r3, r2
 8001108:	fb95 f3f2 	sdivne	r3, r5, r2
 800110c:	2102      	movne	r1, #2
 800110e:	bf18      	it	ne
 8001110:	fb92 f2f1 	sdivne	r2, r2, r1
 8001114:	1831      	adds	r1, r6, r0
 8001116:	d00f      	beq.n	8001138 <line_sensor_read+0x1bc>
 8001118:	4d39      	ldr	r5, [pc, #228]	; (8001200 <line_sensor_read+0x284>)
 800111a:	f9b5 5038 	ldrsh.w	r5, [r5, #56]	; 0x38
 800111e:	42ae      	cmp	r6, r5
 8001120:	dd0a      	ble.n	8001138 <line_sensor_read+0x1bc>
 8001122:	4b3d      	ldr	r3, [pc, #244]	; (8001218 <line_sensor_read+0x29c>)
 8001124:	f9b3 2008 	ldrsh.w	r2, [r3, #8]
 8001128:	f9b3 500a 	ldrsh.w	r5, [r3, #10]
 800112c:	4350      	muls	r0, r2
 800112e:	4632      	mov	r2, r6
 8001130:	fb05 0006 	mla	r0, r5, r6, r0
 8001134:	fb90 f3f1 	sdiv	r3, r0, r1
 8001138:	6965      	ldr	r5, [r4, #20]
 800113a:	eb15 0e07 	adds.w	lr, r5, r7
 800113e:	d00f      	beq.n	8001160 <line_sensor_read+0x1e4>
 8001140:	492f      	ldr	r1, [pc, #188]	; (8001200 <line_sensor_read+0x284>)
 8001142:	f9b1 1038 	ldrsh.w	r1, [r1, #56]	; 0x38
 8001146:	428d      	cmp	r5, r1
 8001148:	dd0a      	ble.n	8001160 <line_sensor_read+0x1e4>
 800114a:	4b33      	ldr	r3, [pc, #204]	; (8001218 <line_sensor_read+0x29c>)
 800114c:	f9b3 1006 	ldrsh.w	r1, [r3, #6]
 8001150:	f9b3 0004 	ldrsh.w	r0, [r3, #4]
 8001154:	4379      	muls	r1, r7
 8001156:	462a      	mov	r2, r5
 8001158:	fb00 1105 	mla	r1, r0, r5, r1
 800115c:	fb91 f3fe 	sdiv	r3, r1, lr
 8001160:	6a61      	ldr	r1, [r4, #36]	; 0x24
 8001162:	198f      	adds	r7, r1, r6
 8001164:	d00f      	beq.n	8001186 <line_sensor_read+0x20a>
 8001166:	4826      	ldr	r0, [pc, #152]	; (8001200 <line_sensor_read+0x284>)
 8001168:	f9b0 0038 	ldrsh.w	r0, [r0, #56]	; 0x38
 800116c:	4281      	cmp	r1, r0
 800116e:	dd0a      	ble.n	8001186 <line_sensor_read+0x20a>
 8001170:	4b29      	ldr	r3, [pc, #164]	; (8001218 <line_sensor_read+0x29c>)
 8001172:	f9b3 200a 	ldrsh.w	r2, [r3, #10]
 8001176:	f9b3 000c 	ldrsh.w	r0, [r3, #12]
 800117a:	4372      	muls	r2, r6
 800117c:	fb00 2201 	mla	r2, r0, r1, r2
 8001180:	fb92 f3f7 	sdiv	r3, r2, r7
 8001184:	460a      	mov	r2, r1
 8001186:	6921      	ldr	r1, [r4, #16]
 8001188:	1948      	adds	r0, r1, r5
 800118a:	d00f      	beq.n	80011ac <line_sensor_read+0x230>
 800118c:	4e1c      	ldr	r6, [pc, #112]	; (8001200 <line_sensor_read+0x284>)
 800118e:	f9b6 6038 	ldrsh.w	r6, [r6, #56]	; 0x38
 8001192:	42b1      	cmp	r1, r6
 8001194:	dd0a      	ble.n	80011ac <line_sensor_read+0x230>
 8001196:	4b20      	ldr	r3, [pc, #128]	; (8001218 <line_sensor_read+0x29c>)
 8001198:	f9b3 2002 	ldrsh.w	r2, [r3, #2]
 800119c:	f9b3 3004 	ldrsh.w	r3, [r3, #4]
 80011a0:	436b      	muls	r3, r5
 80011a2:	fb02 3301 	mla	r3, r2, r1, r3
 80011a6:	460a      	mov	r2, r1
 80011a8:	fb93 f3f0 	sdiv	r3, r3, r0
 80011ac:	68e0      	ldr	r0, [r4, #12]
 80011ae:	f9b4 1038 	ldrsh.w	r1, [r4, #56]	; 0x38
 80011b2:	4288      	cmp	r0, r1
 80011b4:	bfc4      	itt	gt
 80011b6:	4b18      	ldrgt	r3, [pc, #96]	; (8001218 <line_sensor_read+0x29c>)
 80011b8:	4602      	movgt	r2, r0
 80011ba:	6aa0      	ldr	r0, [r4, #40]	; 0x28
 80011bc:	bfc8      	it	gt
 80011be:	f9b3 3000 	ldrshgt.w	r3, [r3]
 80011c2:	4288      	cmp	r0, r1
 80011c4:	dd03      	ble.n	80011ce <line_sensor_read+0x252>
 80011c6:	4b14      	ldr	r3, [pc, #80]	; (8001218 <line_sensor_read+0x29c>)
 80011c8:	f9b3 300e 	ldrsh.w	r3, [r3, #14]
 80011cc:	e001      	b.n	80011d2 <line_sensor_read+0x256>
 80011ce:	428a      	cmp	r2, r1
 80011d0:	dd10      	ble.n	80011f4 <line_sensor_read+0x278>
 80011d2:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
 80011d6:	dc05      	bgt.n	80011e4 <line_sensor_read+0x268>
 80011d8:	f06f 02ff 	mvn.w	r2, #255	; 0xff
 80011dc:	4293      	cmp	r3, r2
 80011de:	bfb8      	it	lt
 80011e0:	4613      	movlt	r3, r2
 80011e2:	e001      	b.n	80011e8 <line_sensor_read+0x26c>
 80011e4:	f44f 7380 	mov.w	r3, #256	; 0x100
 80011e8:	6363      	str	r3, [r4, #52]	; 0x34
 80011ea:	2301      	movs	r3, #1
 80011ec:	f884 3030 	strb.w	r3, [r4, #48]	; 0x30
 80011f0:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80011f4:	4b02      	ldr	r3, [pc, #8]	; (8001200 <line_sensor_read+0x284>)
 80011f6:	2200      	movs	r2, #0
 80011f8:	f883 2030 	strb.w	r2, [r3, #48]	; 0x30
 80011fc:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8001200:	200008f8 	.word	0x200008f8
 8001204:	20000000 	.word	0x20000000
 8001208:	2000007c 	.word	0x2000007c
 800120c:	20000048 	.word	0x20000048
 8001210:	20000024 	.word	0x20000024
 8001214:	20000900 	.word	0x20000900
 8001218:	2000006c 	.word	0x2000006c

0800121c <robot_config_init>:
 800121c:	4b0e      	ldr	r3, [pc, #56]	; (8001258 <robot_config_init+0x3c>)
 800121e:	2196      	movs	r1, #150	; 0x96
 8001220:	f44f 722f 	mov.w	r2, #700	; 0x2bc
 8001224:	e883 0006 	stmia.w	r3, {r1, r2}
 8001228:	2200      	movs	r2, #0
 800122a:	721a      	strb	r2, [r3, #8]
 800122c:	4a0b      	ldr	r2, [pc, #44]	; (800125c <robot_config_init+0x40>)
 800122e:	60da      	str	r2, [r3, #12]
 8001230:	2200      	movs	r2, #0
 8001232:	611a      	str	r2, [r3, #16]
 8001234:	619a      	str	r2, [r3, #24]
 8001236:	4a0a      	ldr	r2, [pc, #40]	; (8001260 <robot_config_init+0x44>)
 8001238:	61da      	str	r2, [r3, #28]
 800123a:	4a0a      	ldr	r2, [pc, #40]	; (8001264 <robot_config_init+0x48>)
 800123c:	621a      	str	r2, [r3, #32]
 800123e:	f04f 527c 	mov.w	r2, #1056964608	; 0x3f000000
 8001242:	625a      	str	r2, [r3, #36]	; 0x24
 8001244:	4a08      	ldr	r2, [pc, #32]	; (8001268 <robot_config_init+0x4c>)
 8001246:	629a      	str	r2, [r3, #40]	; 0x28
 8001248:	f44f 72fa 	mov.w	r2, #500	; 0x1f4
 800124c:	4907      	ldr	r1, [pc, #28]	; (800126c <robot_config_init+0x50>)
 800124e:	62da      	str	r2, [r3, #44]	; 0x2c
 8001250:	2232      	movs	r2, #50	; 0x32
 8001252:	6159      	str	r1, [r3, #20]
 8001254:	631a      	str	r2, [r3, #48]	; 0x30
 8001256:	4770      	bx	lr
 8001258:	2000093c 	.word	0x2000093c
 800125c:	3ea6e979 	.word	0x3ea6e979
 8001260:	3ca3d70a 	.word	0x3ca3d70a
 8001264:	40a00000 	.word	0x40a00000
 8001268:	3f4ccccd 	.word	0x3f4ccccd
 800126c:	4090f5c3 	.word	0x4090f5c3

08001270 <robot_config_get>:
 8001270:	4800      	ldr	r0, [pc, #0]	; (8001274 <robot_config_get+0x4>)
 8001272:	4770      	bx	lr
 8001274:	2000093c 	.word	0x2000093c

08001278 <abort_error_>:
 8001278:	b570      	push	{r4, r5, r6, lr}
 800127a:	4605      	mov	r5, r0
 800127c:	460e      	mov	r6, r1
 800127e:	480f      	ldr	r0, [pc, #60]	; (80012bc <abort_error_+0x44>)
 8001280:	4629      	mov	r1, r5
 8001282:	4632      	mov	r2, r6
 8001284:	f7ff f9ae 	bl	80005e4 <printf_>
 8001288:	2400      	movs	r4, #0
 800128a:	1ceb      	adds	r3, r5, #3
 800128c:	429c      	cmp	r4, r3
 800128e:	d20f      	bcs.n	80012b0 <abort_error_+0x38>
 8001290:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001294:	f001 fa48 	bl	8002728 <led_on>
 8001298:	2032      	movs	r0, #50	; 0x32
 800129a:	f000 fd23 	bl	8001ce4 <timer_delay_ms>
 800129e:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 80012a2:	f001 fa4b 	bl	800273c <led_off>
 80012a6:	2064      	movs	r0, #100	; 0x64
 80012a8:	f000 fd1c 	bl	8001ce4 <timer_delay_ms>
 80012ac:	3401      	adds	r4, #1
 80012ae:	e7ec      	b.n	800128a <abort_error_+0x12>
 80012b0:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 80012b4:	f000 fd16 	bl	8001ce4 <timer_delay_ms>
 80012b8:	e7e1      	b.n	800127e <abort_error_+0x6>
 80012ba:	bf00      	nop
 80012bc:	080041c1 	.word	0x080041c1

080012c0 <telemetry_thread>:
 80012c0:	b508      	push	{r3, lr}
 80012c2:	f000 f897 	bl	80013f4 <telemetry_print>
 80012c6:	2064      	movs	r0, #100	; 0x64
 80012c8:	f000 fd0c 	bl	8001ce4 <timer_delay_ms>
 80012cc:	e7f9      	b.n	80012c2 <telemetry_thread+0x2>
	...

080012d0 <line_sensor_thread>:
 80012d0:	b510      	push	{r4, lr}
 80012d2:	f7ff ffcd 	bl	8001270 <robot_config_get>
 80012d6:	6804      	ldr	r4, [r0, #0]
 80012d8:	f7ff ffca 	bl	8001270 <robot_config_get>
 80012dc:	4603      	mov	r3, r0
 80012de:	4620      	mov	r0, r4
 80012e0:	6859      	ldr	r1, [r3, #4]
 80012e2:	f7ff fe11 	bl	8000f08 <line_sensor_init>
 80012e6:	4601      	mov	r1, r0
 80012e8:	b120      	cbz	r0, 80012f4 <line_sensor_thread+0x24>
 80012ea:	4b08      	ldr	r3, [pc, #32]	; (800130c <line_sensor_thread+0x3c>)
 80012ec:	2001      	movs	r0, #1
 80012ee:	6018      	str	r0, [r3, #0]
 80012f0:	f7ff ffc2 	bl	8001278 <abort_error_>
 80012f4:	2000      	movs	r0, #0
 80012f6:	2104      	movs	r1, #4
 80012f8:	f000 fd04 	bl	8001d04 <event_timer_set_period>
 80012fc:	2000      	movs	r0, #0
 80012fe:	f000 fd19 	bl	8001d34 <event_timer_wait>
 8001302:	2000      	movs	r0, #0
 8001304:	f7ff fe3a 	bl	8000f7c <line_sensor_read>
 8001308:	e7f8      	b.n	80012fc <line_sensor_thread+0x2c>
 800130a:	bf00      	nop
 800130c:	20000f70 	.word	0x20000f70

08001310 <i2c_sensor_thread>:
 8001310:	b508      	push	{r3, lr}
 8001312:	f7ff fac3 	bl	800089c <lsm9ds0_init>
 8001316:	4601      	mov	r1, r0
 8001318:	b128      	cbz	r0, 8001326 <i2c_sensor_thread+0x16>
 800131a:	4b08      	ldr	r3, [pc, #32]	; (800133c <i2c_sensor_thread+0x2c>)
 800131c:	2201      	movs	r2, #1
 800131e:	2002      	movs	r0, #2
 8001320:	601a      	str	r2, [r3, #0]
 8001322:	f7ff ffa9 	bl	8001278 <abort_error_>
 8001326:	2001      	movs	r0, #1
 8001328:	210a      	movs	r1, #10
 800132a:	f000 fceb 	bl	8001d04 <event_timer_set_period>
 800132e:	2001      	movs	r0, #1
 8001330:	f000 fd00 	bl	8001d34 <event_timer_wait>
 8001334:	f7ff fa2a 	bl	800078c <lsm9ds0_read>
 8001338:	e7f9      	b.n	800132e <i2c_sensor_thread+0x1e>
 800133a:	bf00      	nop
 800133c:	20000f70 	.word	0x20000f70

08001340 <main_thread>:
 8001340:	b508      	push	{r3, lr}
 8001342:	4823      	ldr	r0, [pc, #140]	; (80013d0 <main_thread+0x90>)
 8001344:	4c23      	ldr	r4, [pc, #140]	; (80013d4 <main_thread+0x94>)
 8001346:	f7ff f94d 	bl	80005e4 <printf_>
 800134a:	f44f 7096 	mov.w	r0, #300	; 0x12c
 800134e:	f000 fcc9 	bl	8001ce4 <timer_delay_ms>
 8001352:	2300      	movs	r3, #0
 8001354:	6023      	str	r3, [r4, #0]
 8001356:	f7ff ff61 	bl	800121c <robot_config_init>
 800135a:	491f      	ldr	r1, [pc, #124]	; (80013d8 <main_thread+0x98>)
 800135c:	481f      	ldr	r0, [pc, #124]	; (80013dc <main_thread+0x9c>)
 800135e:	f44f 7200 	mov.w	r2, #512	; 0x200
 8001362:	2306      	movs	r3, #6
 8001364:	f7ff f816 	bl	8000394 <create_thread>
 8001368:	491d      	ldr	r1, [pc, #116]	; (80013e0 <main_thread+0xa0>)
 800136a:	481e      	ldr	r0, [pc, #120]	; (80013e4 <main_thread+0xa4>)
 800136c:	f44f 7200 	mov.w	r2, #512	; 0x200
 8001370:	2306      	movs	r3, #6
 8001372:	f7ff f80f 	bl	8000394 <create_thread>
 8001376:	491c      	ldr	r1, [pc, #112]	; (80013e8 <main_thread+0xa8>)
 8001378:	481c      	ldr	r0, [pc, #112]	; (80013ec <main_thread+0xac>)
 800137a:	f44f 7200 	mov.w	r2, #512	; 0x200
 800137e:	231a      	movs	r3, #26
 8001380:	f7ff f808 	bl	8000394 <create_thread>
 8001384:	f000 f980 	bl	8001688 <broken_line_init>
 8001388:	f7fe ff76 	bl	8000278 <obstacle_init>
 800138c:	6823      	ldr	r3, [r4, #0]
 800138e:	b13b      	cbz	r3, 80013a0 <main_thread+0x60>
 8001390:	4817      	ldr	r0, [pc, #92]	; (80013f0 <main_thread+0xb0>)
 8001392:	f7ff f927 	bl	80005e4 <printf_>
 8001396:	f44f 60fa 	mov.w	r0, #2000	; 0x7d0
 800139a:	f000 fca3 	bl	8001ce4 <timer_delay_ms>
 800139e:	e7f7      	b.n	8001390 <main_thread+0x50>
 80013a0:	f001 f9d6 	bl	8002750 <get_key>
 80013a4:	b128      	cbz	r0, 80013b2 <main_thread+0x72>
 80013a6:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 80013aa:	f000 fc9b 	bl	8001ce4 <timer_delay_ms>
 80013ae:	f7fe ff69 	bl	8000284 <obstacle_test>
 80013b2:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 80013b6:	f001 f9b7 	bl	8002728 <led_on>
 80013ba:	2064      	movs	r0, #100	; 0x64
 80013bc:	f000 fc92 	bl	8001ce4 <timer_delay_ms>
 80013c0:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 80013c4:	f001 f9ba 	bl	800273c <led_off>
 80013c8:	20c8      	movs	r0, #200	; 0xc8
 80013ca:	f000 fc8b 	bl	8001ce4 <timer_delay_ms>
 80013ce:	e7dd      	b.n	800138c <main_thread+0x4c>
 80013d0:	080041d3 	.word	0x080041d3
 80013d4:	20000f70 	.word	0x20000f70
 80013d8:	20000970 	.word	0x20000970
 80013dc:	080012d1 	.word	0x080012d1
 80013e0:	20000d70 	.word	0x20000d70
 80013e4:	08001311 	.word	0x08001311
 80013e8:	20000b70 	.word	0x20000b70
 80013ec:	080012c1 	.word	0x080012c1
 80013f0:	0800420e 	.word	0x0800420e

080013f4 <telemetry_print>:
 80013f4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80013f8:	ed2d 8b04 	vpush	{d8-d9}
 80013fc:	4897      	ldr	r0, [pc, #604]	; (800165c <telemetry_print+0x268>)
 80013fe:	b084      	sub	sp, #16
 8001400:	f7ff f8f0 	bl	80005e4 <printf_>
 8001404:	f7ff fdb6 	bl	8000f74 <line_sensor_get>
 8001408:	f890 6030 	ldrb.w	r6, [r0, #48]	; 0x30
 800140c:	f7ff fdb2 	bl	8000f74 <line_sensor_get>
 8001410:	6b45      	ldr	r5, [r0, #52]	; 0x34
 8001412:	f7ff fdaf 	bl	8000f74 <line_sensor_get>
 8001416:	f9b0 4038 	ldrsh.w	r4, [r0, #56]	; 0x38
 800141a:	f7ff fdab 	bl	8000f74 <line_sensor_get>
 800141e:	f890 803a 	ldrb.w	r8, [r0, #58]	; 0x3a
 8001422:	f7ff fda7 	bl	8000f74 <line_sensor_get>
 8001426:	6bc7      	ldr	r7, [r0, #60]	; 0x3c
 8001428:	f7ff fda4 	bl	8000f74 <line_sensor_get>
 800142c:	f8cd 8000 	str.w	r8, [sp]
 8001430:	9701      	str	r7, [sp, #4]
 8001432:	6c03      	ldr	r3, [r0, #64]	; 0x40
 8001434:	9302      	str	r3, [sp, #8]
 8001436:	462a      	mov	r2, r5
 8001438:	4623      	mov	r3, r4
 800143a:	4631      	mov	r1, r6
 800143c:	4888      	ldr	r0, [pc, #544]	; (8001660 <telemetry_print+0x26c>)
 800143e:	f7ff f8d1 	bl	80005e4 <printf_>
 8001442:	4888      	ldr	r0, [pc, #544]	; (8001664 <telemetry_print+0x270>)
 8001444:	f7ff f8ce 	bl	80005e4 <printf_>
 8001448:	4887      	ldr	r0, [pc, #540]	; (8001668 <telemetry_print+0x274>)
 800144a:	f7ff f8cb 	bl	80005e4 <printf_>
 800144e:	f7ff f999 	bl	8000784 <lsm9ds0_get>
 8001452:	f9b0 500c 	ldrsh.w	r5, [r0, #12]
 8001456:	f7ff f995 	bl	8000784 <lsm9ds0_get>
 800145a:	f9b0 400e 	ldrsh.w	r4, [r0, #14]
 800145e:	f7ff f991 	bl	8000784 <lsm9ds0_get>
 8001462:	4629      	mov	r1, r5
 8001464:	f9b0 3010 	ldrsh.w	r3, [r0, #16]
 8001468:	4880      	ldr	r0, [pc, #512]	; (800166c <telemetry_print+0x278>)
 800146a:	4622      	mov	r2, r4
 800146c:	f7ff f8ba 	bl	80005e4 <printf_>
 8001470:	f7ff f988 	bl	8000784 <lsm9ds0_get>
 8001474:	f9b0 5006 	ldrsh.w	r5, [r0, #6]
 8001478:	f7ff f984 	bl	8000784 <lsm9ds0_get>
 800147c:	f9b0 4008 	ldrsh.w	r4, [r0, #8]
 8001480:	f7ff f980 	bl	8000784 <lsm9ds0_get>
 8001484:	4629      	mov	r1, r5
 8001486:	f9b0 300a 	ldrsh.w	r3, [r0, #10]
 800148a:	4878      	ldr	r0, [pc, #480]	; (800166c <telemetry_print+0x278>)
 800148c:	4622      	mov	r2, r4
 800148e:	f7ff f8a9 	bl	80005e4 <printf_>
 8001492:	f7ff f977 	bl	8000784 <lsm9ds0_get>
 8001496:	f9b0 5000 	ldrsh.w	r5, [r0]
 800149a:	f7ff f973 	bl	8000784 <lsm9ds0_get>
 800149e:	f9b0 4002 	ldrsh.w	r4, [r0, #2]
 80014a2:	f7ff f96f 	bl	8000784 <lsm9ds0_get>
 80014a6:	4629      	mov	r1, r5
 80014a8:	f9b0 3004 	ldrsh.w	r3, [r0, #4]
 80014ac:	486f      	ldr	r0, [pc, #444]	; (800166c <telemetry_print+0x278>)
 80014ae:	4622      	mov	r2, r4
 80014b0:	f7ff f898 	bl	80005e4 <printf_>
 80014b4:	f7ff f966 	bl	8000784 <lsm9ds0_get>
 80014b8:	6a05      	ldr	r5, [r0, #32]
 80014ba:	f7ff f963 	bl	8000784 <lsm9ds0_get>
 80014be:	6a44      	ldr	r4, [r0, #36]	; 0x24
 80014c0:	f7ff f960 	bl	8000784 <lsm9ds0_get>
 80014c4:	4603      	mov	r3, r0
 80014c6:	4622      	mov	r2, r4
 80014c8:	4629      	mov	r1, r5
 80014ca:	6a9b      	ldr	r3, [r3, #40]	; 0x28
 80014cc:	4867      	ldr	r0, [pc, #412]	; (800166c <telemetry_print+0x278>)
 80014ce:	f7ff f889 	bl	80005e4 <printf_>
 80014d2:	4864      	ldr	r0, [pc, #400]	; (8001664 <telemetry_print+0x270>)
 80014d4:	f7ff f886 	bl	80005e4 <printf_>
 80014d8:	4865      	ldr	r0, [pc, #404]	; (8001670 <telemetry_print+0x27c>)
 80014da:	f7ff f883 	bl	80005e4 <printf_>
 80014de:	2400      	movs	r4, #0
 80014e0:	f7ff fd48 	bl	8000f74 <line_sensor_get>
 80014e4:	1ca3      	adds	r3, r4, #2
 80014e6:	eb00 0383 	add.w	r3, r0, r3, lsl #2
 80014ea:	3401      	adds	r4, #1
 80014ec:	4861      	ldr	r0, [pc, #388]	; (8001674 <telemetry_print+0x280>)
 80014ee:	6859      	ldr	r1, [r3, #4]
 80014f0:	f7ff f878 	bl	80005e4 <printf_>
 80014f4:	2c08      	cmp	r4, #8
 80014f6:	d1f3      	bne.n	80014e0 <telemetry_print+0xec>
 80014f8:	2400      	movs	r4, #0
 80014fa:	f7ff fc5b 	bl	8000db4 <rgb_get>
 80014fe:	eb00 0344 	add.w	r3, r0, r4, lsl #1
 8001502:	485c      	ldr	r0, [pc, #368]	; (8001674 <telemetry_print+0x280>)
 8001504:	f9b3 1036 	ldrsh.w	r1, [r3, #54]	; 0x36
 8001508:	3401      	adds	r4, #1
 800150a:	f7ff f86b 	bl	80005e4 <printf_>
 800150e:	2c08      	cmp	r4, #8
 8001510:	d1f3      	bne.n	80014fa <telemetry_print+0x106>
 8001512:	2400      	movs	r4, #0
 8001514:	f7ff fc4e 	bl	8000db4 <rgb_get>
 8001518:	f930 1014 	ldrsh.w	r1, [r0, r4, lsl #1]
 800151c:	4855      	ldr	r0, [pc, #340]	; (8001674 <telemetry_print+0x280>)
 800151e:	3401      	adds	r4, #1
 8001520:	f7ff f860 	bl	80005e4 <printf_>
 8001524:	2c08      	cmp	r4, #8
 8001526:	d1f5      	bne.n	8001514 <telemetry_print+0x120>
 8001528:	2400      	movs	r4, #0
 800152a:	f7ff fc43 	bl	8000db4 <rgb_get>
 800152e:	eb00 0344 	add.w	r3, r0, r4, lsl #1
 8001532:	4850      	ldr	r0, [pc, #320]	; (8001674 <telemetry_print+0x280>)
 8001534:	f9b3 1012 	ldrsh.w	r1, [r3, #18]
 8001538:	3401      	adds	r4, #1
 800153a:	f7ff f853 	bl	80005e4 <printf_>
 800153e:	2c08      	cmp	r4, #8
 8001540:	d1f3      	bne.n	800152a <telemetry_print+0x136>
 8001542:	2400      	movs	r4, #0
 8001544:	f7ff fc36 	bl	8000db4 <rgb_get>
 8001548:	eb00 0344 	add.w	r3, r0, r4, lsl #1
 800154c:	4849      	ldr	r0, [pc, #292]	; (8001674 <telemetry_print+0x280>)
 800154e:	f9b3 1024 	ldrsh.w	r1, [r3, #36]	; 0x24
 8001552:	3401      	adds	r4, #1
 8001554:	f7ff f846 	bl	80005e4 <printf_>
 8001558:	2c08      	cmp	r4, #8
 800155a:	d1f3      	bne.n	8001544 <telemetry_print+0x150>
 800155c:	4841      	ldr	r0, [pc, #260]	; (8001664 <telemetry_print+0x270>)
 800155e:	ed9f 8a46 	vldr	s16, [pc, #280]	; 8001678 <telemetry_print+0x284>
 8001562:	f7ff f83f 	bl	80005e4 <printf_>
 8001566:	4845      	ldr	r0, [pc, #276]	; (800167c <telemetry_print+0x288>)
 8001568:	f7ff f83c 	bl	80005e4 <printf_>
 800156c:	f7ff fe80 	bl	8001270 <robot_config_get>
 8001570:	6805      	ldr	r5, [r0, #0]
 8001572:	f7ff fe7d 	bl	8001270 <robot_config_get>
 8001576:	6844      	ldr	r4, [r0, #4]
 8001578:	f7ff fe7a 	bl	8001270 <robot_config_get>
 800157c:	4629      	mov	r1, r5
 800157e:	7a03      	ldrb	r3, [r0, #8]
 8001580:	483a      	ldr	r0, [pc, #232]	; (800166c <telemetry_print+0x278>)
 8001582:	4622      	mov	r2, r4
 8001584:	f7ff f82e 	bl	80005e4 <printf_>
 8001588:	f7ff fe72 	bl	8001270 <robot_config_get>
 800158c:	edd0 9a03 	vldr	s19, [r0, #12]
 8001590:	f7ff fe6e 	bl	8001270 <robot_config_get>
 8001594:	ed90 9a04 	vldr	s18, [r0, #16]
 8001598:	f7ff fe6a 	bl	8001270 <robot_config_get>
 800159c:	edd0 8a05 	vldr	s17, [r0, #20]
 80015a0:	f7ff fe66 	bl	8001270 <robot_config_get>
 80015a4:	edd0 7a06 	vldr	s15, [r0, #24]
 80015a8:	4835      	ldr	r0, [pc, #212]	; (8001680 <telemetry_print+0x28c>)
 80015aa:	ee69 9a88 	vmul.f32	s19, s19, s16
 80015ae:	ee29 9a08 	vmul.f32	s18, s18, s16
 80015b2:	ee68 8a88 	vmul.f32	s17, s17, s16
 80015b6:	ee67 7a88 	vmul.f32	s15, s15, s16
 80015ba:	eefd 9ae9 	vcvt.s32.f32	s19, s19
 80015be:	eefd 7ae7 	vcvt.s32.f32	s15, s15
 80015c2:	eebd 9ac9 	vcvt.s32.f32	s18, s18
 80015c6:	eefd 8ae8 	vcvt.s32.f32	s17, s17
 80015ca:	edcd 7a00 	vstr	s15, [sp]
 80015ce:	ee19 1a90 	vmov	r1, s19
 80015d2:	ee19 2a10 	vmov	r2, s18
 80015d6:	ee18 3a90 	vmov	r3, s17
 80015da:	f7ff f803 	bl	80005e4 <printf_>
 80015de:	f7ff fe47 	bl	8001270 <robot_config_get>
 80015e2:	edd0 9a07 	vldr	s19, [r0, #28]
 80015e6:	f7ff fe43 	bl	8001270 <robot_config_get>
 80015ea:	ed90 9a08 	vldr	s18, [r0, #32]
 80015ee:	f7ff fe3f 	bl	8001270 <robot_config_get>
 80015f2:	edd0 8a09 	vldr	s17, [r0, #36]	; 0x24
 80015f6:	f7ff fe3b 	bl	8001270 <robot_config_get>
 80015fa:	edd0 7a0a 	vldr	s15, [r0, #40]	; 0x28
 80015fe:	4820      	ldr	r0, [pc, #128]	; (8001680 <telemetry_print+0x28c>)
 8001600:	ee69 9a88 	vmul.f32	s19, s19, s16
 8001604:	ee29 9a08 	vmul.f32	s18, s18, s16
 8001608:	ee68 8a88 	vmul.f32	s17, s17, s16
 800160c:	ee27 8a88 	vmul.f32	s16, s15, s16
 8001610:	eefd 9ae9 	vcvt.s32.f32	s19, s19
 8001614:	eebd 9ac9 	vcvt.s32.f32	s18, s18
 8001618:	eefd 8ae8 	vcvt.s32.f32	s17, s17
 800161c:	eebd 8ac8 	vcvt.s32.f32	s16, s16
 8001620:	ee19 1a90 	vmov	r1, s19
 8001624:	ee19 2a10 	vmov	r2, s18
 8001628:	ee18 3a90 	vmov	r3, s17
 800162c:	ed8d 8a00 	vstr	s16, [sp]
 8001630:	f7fe ffd8 	bl	80005e4 <printf_>
 8001634:	f7ff fe1c 	bl	8001270 <robot_config_get>
 8001638:	6ac4      	ldr	r4, [r0, #44]	; 0x2c
 800163a:	f7ff fe19 	bl	8001270 <robot_config_get>
 800163e:	4603      	mov	r3, r0
 8001640:	4621      	mov	r1, r4
 8001642:	4810      	ldr	r0, [pc, #64]	; (8001684 <telemetry_print+0x290>)
 8001644:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 8001646:	f7fe ffcd 	bl	80005e4 <printf_>
 800164a:	4806      	ldr	r0, [pc, #24]	; (8001664 <telemetry_print+0x270>)
 800164c:	b004      	add	sp, #16
 800164e:	ecbd 8b04 	vpop	{d8-d9}
 8001652:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8001656:	f7fe bfc5 	b.w	80005e4 <printf_>
 800165a:	bf00      	nop
 800165c:	0800421e 	.word	0x0800421e
 8001660:	08004224 	.word	0x08004224
 8001664:	08004236 	.word	0x08004236
 8001668:	08004239 	.word	0x08004239
 800166c:	0800424c 	.word	0x0800424c
 8001670:	0800423f 	.word	0x0800423f
 8001674:	08004252 	.word	0x08004252
 8001678:	447a0000 	.word	0x447a0000
 800167c:	08004244 	.word	0x08004244
 8001680:	08004249 	.word	0x08004249
 8001684:	0800424f 	.word	0x0800424f

08001688 <broken_line_init>:
 8001688:	4770      	bx	lr
	...

0800168c <main>:
 800168c:	b508      	push	{r3, lr}
 800168e:	f000 ff89 	bl	80025a4 <lib_low_level_init>
 8001692:	f7ff f83d 	bl	8000710 <lib_os_init>
 8001696:	4905      	ldr	r1, [pc, #20]	; (80016ac <main+0x20>)
 8001698:	4805      	ldr	r0, [pc, #20]	; (80016b0 <main+0x24>)
 800169a:	f44f 7200 	mov.w	r2, #512	; 0x200
 800169e:	2306      	movs	r3, #6
 80016a0:	f7fe fe78 	bl	8000394 <create_thread>
 80016a4:	f7fe fe70 	bl	8000388 <kernel_start>
 80016a8:	2000      	movs	r0, #0
 80016aa:	bd08      	pop	{r3, pc}
 80016ac:	20000f74 	.word	0x20000f74
 80016b0:	08001341 	.word	0x08001341

080016b4 <RCC_GetClocksFreq>:
 80016b4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80016b8:	4f9b      	ldr	r7, [pc, #620]	; (8001928 <RCC_GetClocksFreq+0x274>)
 80016ba:	687b      	ldr	r3, [r7, #4]
 80016bc:	f003 030c 	and.w	r3, r3, #12
 80016c0:	2b04      	cmp	r3, #4
 80016c2:	d005      	beq.n	80016d0 <RCC_GetClocksFreq+0x1c>
 80016c4:	2b08      	cmp	r3, #8
 80016c6:	d006      	beq.n	80016d6 <RCC_GetClocksFreq+0x22>
 80016c8:	4a98      	ldr	r2, [pc, #608]	; (800192c <RCC_GetClocksFreq+0x278>)
 80016ca:	6002      	str	r2, [r0, #0]
 80016cc:	b9b3      	cbnz	r3, 80016fc <RCC_GetClocksFreq+0x48>
 80016ce:	e016      	b.n	80016fe <RCC_GetClocksFreq+0x4a>
 80016d0:	4b96      	ldr	r3, [pc, #600]	; (800192c <RCC_GetClocksFreq+0x278>)
 80016d2:	6003      	str	r3, [r0, #0]
 80016d4:	e012      	b.n	80016fc <RCC_GetClocksFreq+0x48>
 80016d6:	687b      	ldr	r3, [r7, #4]
 80016d8:	6879      	ldr	r1, [r7, #4]
 80016da:	f3c3 4383 	ubfx	r3, r3, #18, #4
 80016de:	1c9a      	adds	r2, r3, #2
 80016e0:	03cb      	lsls	r3, r1, #15
 80016e2:	bf49      	itett	mi
 80016e4:	6afb      	ldrmi	r3, [r7, #44]	; 0x2c
 80016e6:	4b92      	ldrpl	r3, [pc, #584]	; (8001930 <RCC_GetClocksFreq+0x27c>)
 80016e8:	4990      	ldrmi	r1, [pc, #576]	; (800192c <RCC_GetClocksFreq+0x278>)
 80016ea:	f003 030f 	andmi.w	r3, r3, #15
 80016ee:	bf44      	itt	mi
 80016f0:	3301      	addmi	r3, #1
 80016f2:	fbb1 f3f3 	udivmi	r3, r1, r3
 80016f6:	4353      	muls	r3, r2
 80016f8:	6003      	str	r3, [r0, #0]
 80016fa:	e000      	b.n	80016fe <RCC_GetClocksFreq+0x4a>
 80016fc:	2300      	movs	r3, #0
 80016fe:	687a      	ldr	r2, [r7, #4]
 8001700:	4e8c      	ldr	r6, [pc, #560]	; (8001934 <RCC_GetClocksFreq+0x280>)
 8001702:	f8df c234 	ldr.w	ip, [pc, #564]	; 8001938 <RCC_GetClocksFreq+0x284>
 8001706:	f3c2 1203 	ubfx	r2, r2, #4, #4
 800170a:	5cb4      	ldrb	r4, [r6, r2]
 800170c:	6802      	ldr	r2, [r0, #0]
 800170e:	b2e4      	uxtb	r4, r4
 8001710:	fa22 f104 	lsr.w	r1, r2, r4
 8001714:	6041      	str	r1, [r0, #4]
 8001716:	687d      	ldr	r5, [r7, #4]
 8001718:	f3c5 2502 	ubfx	r5, r5, #8, #3
 800171c:	5d75      	ldrb	r5, [r6, r5]
 800171e:	fa21 fe05 	lsr.w	lr, r1, r5
 8001722:	f8c0 e008 	str.w	lr, [r0, #8]
 8001726:	687d      	ldr	r5, [r7, #4]
 8001728:	f3c5 25c2 	ubfx	r5, r5, #11, #3
 800172c:	5d75      	ldrb	r5, [r6, r5]
 800172e:	b2ed      	uxtb	r5, r5
 8001730:	40e9      	lsrs	r1, r5
 8001732:	60c1      	str	r1, [r0, #12]
 8001734:	6afe      	ldr	r6, [r7, #44]	; 0x2c
 8001736:	f3c6 1804 	ubfx	r8, r6, #4, #5
 800173a:	f008 060f 	and.w	r6, r8, #15
 800173e:	f018 0f10 	tst.w	r8, #16
 8001742:	f83c 6016 	ldrh.w	r6, [ip, r6, lsl #1]
 8001746:	46e0      	mov	r8, ip
 8001748:	b2b6      	uxth	r6, r6
 800174a:	d004      	beq.n	8001756 <RCC_GetClocksFreq+0xa2>
 800174c:	b11e      	cbz	r6, 8001756 <RCC_GetClocksFreq+0xa2>
 800174e:	fbb3 f6f6 	udiv	r6, r3, r6
 8001752:	6106      	str	r6, [r0, #16]
 8001754:	e000      	b.n	8001758 <RCC_GetClocksFreq+0xa4>
 8001756:	6102      	str	r2, [r0, #16]
 8001758:	6afe      	ldr	r6, [r7, #44]	; 0x2c
 800175a:	f3c6 2c44 	ubfx	ip, r6, #9, #5
 800175e:	f00c 060f 	and.w	r6, ip, #15
 8001762:	f01c 0f10 	tst.w	ip, #16
 8001766:	f838 6016 	ldrh.w	r6, [r8, r6, lsl #1]
 800176a:	b2b6      	uxth	r6, r6
 800176c:	d004      	beq.n	8001778 <RCC_GetClocksFreq+0xc4>
 800176e:	b11e      	cbz	r6, 8001778 <RCC_GetClocksFreq+0xc4>
 8001770:	fbb3 f6f6 	udiv	r6, r3, r6
 8001774:	6146      	str	r6, [r0, #20]
 8001776:	e000      	b.n	800177a <RCC_GetClocksFreq+0xc6>
 8001778:	6142      	str	r2, [r0, #20]
 800177a:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 800177c:	06f6      	lsls	r6, r6, #27
 800177e:	bf5a      	itte	pl
 8001780:	4e6a      	ldrpl	r6, [pc, #424]	; (800192c <RCC_GetClocksFreq+0x278>)
 8001782:	6186      	strpl	r6, [r0, #24]
 8001784:	6182      	strmi	r2, [r0, #24]
 8001786:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001788:	06b6      	lsls	r6, r6, #26
 800178a:	bf5a      	itte	pl
 800178c:	4e67      	ldrpl	r6, [pc, #412]	; (800192c <RCC_GetClocksFreq+0x278>)
 800178e:	61c6      	strpl	r6, [r0, #28]
 8001790:	61c2      	strmi	r2, [r0, #28]
 8001792:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001794:	0676      	lsls	r6, r6, #25
 8001796:	bf5a      	itte	pl
 8001798:	4e64      	ldrpl	r6, [pc, #400]	; (800192c <RCC_GetClocksFreq+0x278>)
 800179a:	6206      	strpl	r6, [r0, #32]
 800179c:	6202      	strmi	r2, [r0, #32]
 800179e:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 80017a0:	05f6      	lsls	r6, r6, #23
 80017a2:	d506      	bpl.n	80017b2 <RCC_GetClocksFreq+0xfe>
 80017a4:	429a      	cmp	r2, r3
 80017a6:	d104      	bne.n	80017b2 <RCC_GetClocksFreq+0xfe>
 80017a8:	42a5      	cmp	r5, r4
 80017aa:	d102      	bne.n	80017b2 <RCC_GetClocksFreq+0xfe>
 80017ac:	0056      	lsls	r6, r2, #1
 80017ae:	6246      	str	r6, [r0, #36]	; 0x24
 80017b0:	e000      	b.n	80017b4 <RCC_GetClocksFreq+0x100>
 80017b2:	6241      	str	r1, [r0, #36]	; 0x24
 80017b4:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 80017b6:	04f6      	lsls	r6, r6, #19
 80017b8:	d506      	bpl.n	80017c8 <RCC_GetClocksFreq+0x114>
 80017ba:	429a      	cmp	r2, r3
 80017bc:	d104      	bne.n	80017c8 <RCC_GetClocksFreq+0x114>
 80017be:	42a5      	cmp	r5, r4
 80017c0:	d102      	bne.n	80017c8 <RCC_GetClocksFreq+0x114>
 80017c2:	0056      	lsls	r6, r2, #1
 80017c4:	6286      	str	r6, [r0, #40]	; 0x28
 80017c6:	e000      	b.n	80017ca <RCC_GetClocksFreq+0x116>
 80017c8:	6281      	str	r1, [r0, #40]	; 0x28
 80017ca:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 80017cc:	05b6      	lsls	r6, r6, #22
 80017ce:	d506      	bpl.n	80017de <RCC_GetClocksFreq+0x12a>
 80017d0:	429a      	cmp	r2, r3
 80017d2:	d104      	bne.n	80017de <RCC_GetClocksFreq+0x12a>
 80017d4:	42a5      	cmp	r5, r4
 80017d6:	d102      	bne.n	80017de <RCC_GetClocksFreq+0x12a>
 80017d8:	0056      	lsls	r6, r2, #1
 80017da:	62c6      	str	r6, [r0, #44]	; 0x2c
 80017dc:	e000      	b.n	80017e0 <RCC_GetClocksFreq+0x12c>
 80017de:	62c1      	str	r1, [r0, #44]	; 0x2c
 80017e0:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 80017e2:	0576      	lsls	r6, r6, #21
 80017e4:	d506      	bpl.n	80017f4 <RCC_GetClocksFreq+0x140>
 80017e6:	429a      	cmp	r2, r3
 80017e8:	d104      	bne.n	80017f4 <RCC_GetClocksFreq+0x140>
 80017ea:	42a5      	cmp	r5, r4
 80017ec:	d102      	bne.n	80017f4 <RCC_GetClocksFreq+0x140>
 80017ee:	0056      	lsls	r6, r2, #1
 80017f0:	64c6      	str	r6, [r0, #76]	; 0x4c
 80017f2:	e000      	b.n	80017f6 <RCC_GetClocksFreq+0x142>
 80017f4:	64c1      	str	r1, [r0, #76]	; 0x4c
 80017f6:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 80017f8:	0536      	lsls	r6, r6, #20
 80017fa:	d506      	bpl.n	800180a <RCC_GetClocksFreq+0x156>
 80017fc:	429a      	cmp	r2, r3
 80017fe:	d104      	bne.n	800180a <RCC_GetClocksFreq+0x156>
 8001800:	42a5      	cmp	r5, r4
 8001802:	d102      	bne.n	800180a <RCC_GetClocksFreq+0x156>
 8001804:	0056      	lsls	r6, r2, #1
 8001806:	6506      	str	r6, [r0, #80]	; 0x50
 8001808:	e000      	b.n	800180c <RCC_GetClocksFreq+0x158>
 800180a:	6501      	str	r1, [r0, #80]	; 0x50
 800180c:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 800180e:	04b6      	lsls	r6, r6, #18
 8001810:	d506      	bpl.n	8001820 <RCC_GetClocksFreq+0x16c>
 8001812:	429a      	cmp	r2, r3
 8001814:	d104      	bne.n	8001820 <RCC_GetClocksFreq+0x16c>
 8001816:	42a5      	cmp	r5, r4
 8001818:	d102      	bne.n	8001820 <RCC_GetClocksFreq+0x16c>
 800181a:	0056      	lsls	r6, r2, #1
 800181c:	6546      	str	r6, [r0, #84]	; 0x54
 800181e:	e000      	b.n	8001822 <RCC_GetClocksFreq+0x16e>
 8001820:	6501      	str	r1, [r0, #80]	; 0x50
 8001822:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001824:	0436      	lsls	r6, r6, #16
 8001826:	d506      	bpl.n	8001836 <RCC_GetClocksFreq+0x182>
 8001828:	429a      	cmp	r2, r3
 800182a:	d104      	bne.n	8001836 <RCC_GetClocksFreq+0x182>
 800182c:	42a5      	cmp	r5, r4
 800182e:	d102      	bne.n	8001836 <RCC_GetClocksFreq+0x182>
 8001830:	0053      	lsls	r3, r2, #1
 8001832:	6583      	str	r3, [r0, #88]	; 0x58
 8001834:	e000      	b.n	8001838 <RCC_GetClocksFreq+0x184>
 8001836:	6581      	str	r1, [r0, #88]	; 0x58
 8001838:	6b3c      	ldr	r4, [r7, #48]	; 0x30
 800183a:	4b3b      	ldr	r3, [pc, #236]	; (8001928 <RCC_GetClocksFreq+0x274>)
 800183c:	07a4      	lsls	r4, r4, #30
 800183e:	d101      	bne.n	8001844 <RCC_GetClocksFreq+0x190>
 8001840:	6381      	str	r1, [r0, #56]	; 0x38
 8001842:	e015      	b.n	8001870 <RCC_GetClocksFreq+0x1bc>
 8001844:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001846:	f001 0103 	and.w	r1, r1, #3
 800184a:	2901      	cmp	r1, #1
 800184c:	d101      	bne.n	8001852 <RCC_GetClocksFreq+0x19e>
 800184e:	6382      	str	r2, [r0, #56]	; 0x38
 8001850:	e00e      	b.n	8001870 <RCC_GetClocksFreq+0x1bc>
 8001852:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001854:	f001 0103 	and.w	r1, r1, #3
 8001858:	2902      	cmp	r1, #2
 800185a:	d102      	bne.n	8001862 <RCC_GetClocksFreq+0x1ae>
 800185c:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001860:	e005      	b.n	800186e <RCC_GetClocksFreq+0x1ba>
 8001862:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001864:	f003 0303 	and.w	r3, r3, #3
 8001868:	2b03      	cmp	r3, #3
 800186a:	d101      	bne.n	8001870 <RCC_GetClocksFreq+0x1bc>
 800186c:	4b2f      	ldr	r3, [pc, #188]	; (800192c <RCC_GetClocksFreq+0x278>)
 800186e:	6383      	str	r3, [r0, #56]	; 0x38
 8001870:	6b39      	ldr	r1, [r7, #48]	; 0x30
 8001872:	4b2d      	ldr	r3, [pc, #180]	; (8001928 <RCC_GetClocksFreq+0x274>)
 8001874:	f411 3f40 	tst.w	r1, #196608	; 0x30000
 8001878:	d102      	bne.n	8001880 <RCC_GetClocksFreq+0x1cc>
 800187a:	f8c0 e03c 	str.w	lr, [r0, #60]	; 0x3c
 800187e:	e018      	b.n	80018b2 <RCC_GetClocksFreq+0x1fe>
 8001880:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001882:	f401 3140 	and.w	r1, r1, #196608	; 0x30000
 8001886:	f5b1 3f80 	cmp.w	r1, #65536	; 0x10000
 800188a:	d101      	bne.n	8001890 <RCC_GetClocksFreq+0x1dc>
 800188c:	63c2      	str	r2, [r0, #60]	; 0x3c
 800188e:	e010      	b.n	80018b2 <RCC_GetClocksFreq+0x1fe>
 8001890:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001892:	f401 3140 	and.w	r1, r1, #196608	; 0x30000
 8001896:	f5b1 3f00 	cmp.w	r1, #131072	; 0x20000
 800189a:	d102      	bne.n	80018a2 <RCC_GetClocksFreq+0x1ee>
 800189c:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 80018a0:	e006      	b.n	80018b0 <RCC_GetClocksFreq+0x1fc>
 80018a2:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80018a4:	f403 3340 	and.w	r3, r3, #196608	; 0x30000
 80018a8:	f5b3 3f40 	cmp.w	r3, #196608	; 0x30000
 80018ac:	d101      	bne.n	80018b2 <RCC_GetClocksFreq+0x1fe>
 80018ae:	4b1f      	ldr	r3, [pc, #124]	; (800192c <RCC_GetClocksFreq+0x278>)
 80018b0:	63c3      	str	r3, [r0, #60]	; 0x3c
 80018b2:	6b39      	ldr	r1, [r7, #48]	; 0x30
 80018b4:	4b1c      	ldr	r3, [pc, #112]	; (8001928 <RCC_GetClocksFreq+0x274>)
 80018b6:	f411 2f40 	tst.w	r1, #786432	; 0xc0000
 80018ba:	d102      	bne.n	80018c2 <RCC_GetClocksFreq+0x20e>
 80018bc:	f8c0 e040 	str.w	lr, [r0, #64]	; 0x40
 80018c0:	e018      	b.n	80018f4 <RCC_GetClocksFreq+0x240>
 80018c2:	6b19      	ldr	r1, [r3, #48]	; 0x30
 80018c4:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 80018c8:	f5b1 2f80 	cmp.w	r1, #262144	; 0x40000
 80018cc:	d101      	bne.n	80018d2 <RCC_GetClocksFreq+0x21e>
 80018ce:	6402      	str	r2, [r0, #64]	; 0x40
 80018d0:	e010      	b.n	80018f4 <RCC_GetClocksFreq+0x240>
 80018d2:	6b19      	ldr	r1, [r3, #48]	; 0x30
 80018d4:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 80018d8:	f5b1 2f00 	cmp.w	r1, #524288	; 0x80000
 80018dc:	d102      	bne.n	80018e4 <RCC_GetClocksFreq+0x230>
 80018de:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 80018e2:	e006      	b.n	80018f2 <RCC_GetClocksFreq+0x23e>
 80018e4:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80018e6:	f403 2340 	and.w	r3, r3, #786432	; 0xc0000
 80018ea:	f5b3 2f40 	cmp.w	r3, #786432	; 0xc0000
 80018ee:	d101      	bne.n	80018f4 <RCC_GetClocksFreq+0x240>
 80018f0:	4b0e      	ldr	r3, [pc, #56]	; (800192c <RCC_GetClocksFreq+0x278>)
 80018f2:	6403      	str	r3, [r0, #64]	; 0x40
 80018f4:	6b39      	ldr	r1, [r7, #48]	; 0x30
 80018f6:	4b0c      	ldr	r3, [pc, #48]	; (8001928 <RCC_GetClocksFreq+0x274>)
 80018f8:	f411 1f40 	tst.w	r1, #3145728	; 0x300000
 80018fc:	d102      	bne.n	8001904 <RCC_GetClocksFreq+0x250>
 80018fe:	f8c0 e044 	str.w	lr, [r0, #68]	; 0x44
 8001902:	e023      	b.n	800194c <RCC_GetClocksFreq+0x298>
 8001904:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001906:	f401 1140 	and.w	r1, r1, #3145728	; 0x300000
 800190a:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 800190e:	d101      	bne.n	8001914 <RCC_GetClocksFreq+0x260>
 8001910:	6442      	str	r2, [r0, #68]	; 0x44
 8001912:	e01b      	b.n	800194c <RCC_GetClocksFreq+0x298>
 8001914:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001916:	f401 1140 	and.w	r1, r1, #3145728	; 0x300000
 800191a:	f5b1 1f00 	cmp.w	r1, #2097152	; 0x200000
 800191e:	d10d      	bne.n	800193c <RCC_GetClocksFreq+0x288>
 8001920:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001924:	e011      	b.n	800194a <RCC_GetClocksFreq+0x296>
 8001926:	bf00      	nop
 8001928:	40021000 	.word	0x40021000
 800192c:	007a1200 	.word	0x007a1200
 8001930:	003d0900 	.word	0x003d0900
 8001934:	200000c0 	.word	0x200000c0
 8001938:	200000a0 	.word	0x200000a0
 800193c:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 800193e:	f403 1340 	and.w	r3, r3, #3145728	; 0x300000
 8001942:	f5b3 1f40 	cmp.w	r3, #3145728	; 0x300000
 8001946:	d101      	bne.n	800194c <RCC_GetClocksFreq+0x298>
 8001948:	4b13      	ldr	r3, [pc, #76]	; (8001998 <RCC_GetClocksFreq+0x2e4>)
 800194a:	6443      	str	r3, [r0, #68]	; 0x44
 800194c:	6b39      	ldr	r1, [r7, #48]	; 0x30
 800194e:	4b13      	ldr	r3, [pc, #76]	; (800199c <RCC_GetClocksFreq+0x2e8>)
 8001950:	f411 0f40 	tst.w	r1, #12582912	; 0xc00000
 8001954:	d103      	bne.n	800195e <RCC_GetClocksFreq+0x2aa>
 8001956:	f8c0 e048 	str.w	lr, [r0, #72]	; 0x48
 800195a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800195e:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001960:	f401 0140 	and.w	r1, r1, #12582912	; 0xc00000
 8001964:	f5b1 0f80 	cmp.w	r1, #4194304	; 0x400000
 8001968:	d102      	bne.n	8001970 <RCC_GetClocksFreq+0x2bc>
 800196a:	6482      	str	r2, [r0, #72]	; 0x48
 800196c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8001970:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 8001972:	f402 0240 	and.w	r2, r2, #12582912	; 0xc00000
 8001976:	f5b2 0f00 	cmp.w	r2, #8388608	; 0x800000
 800197a:	d102      	bne.n	8001982 <RCC_GetClocksFreq+0x2ce>
 800197c:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001980:	e006      	b.n	8001990 <RCC_GetClocksFreq+0x2dc>
 8001982:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001984:	f403 0340 	and.w	r3, r3, #12582912	; 0xc00000
 8001988:	f5b3 0f40 	cmp.w	r3, #12582912	; 0xc00000
 800198c:	d101      	bne.n	8001992 <RCC_GetClocksFreq+0x2de>
 800198e:	4b02      	ldr	r3, [pc, #8]	; (8001998 <RCC_GetClocksFreq+0x2e4>)
 8001990:	6483      	str	r3, [r0, #72]	; 0x48
 8001992:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8001996:	bf00      	nop
 8001998:	007a1200 	.word	0x007a1200
 800199c:	40021000 	.word	0x40021000

080019a0 <RCC_AHBPeriphClockCmd>:
 80019a0:	bf00      	nop
 80019a2:	bf00      	nop
 80019a4:	4b04      	ldr	r3, [pc, #16]	; (80019b8 <RCC_AHBPeriphClockCmd+0x18>)
 80019a6:	695a      	ldr	r2, [r3, #20]
 80019a8:	b109      	cbz	r1, 80019ae <RCC_AHBPeriphClockCmd+0xe>
 80019aa:	4310      	orrs	r0, r2
 80019ac:	e001      	b.n	80019b2 <RCC_AHBPeriphClockCmd+0x12>
 80019ae:	ea22 0000 	bic.w	r0, r2, r0
 80019b2:	6158      	str	r0, [r3, #20]
 80019b4:	4770      	bx	lr
 80019b6:	bf00      	nop
 80019b8:	40021000 	.word	0x40021000

080019bc <RCC_APB2PeriphClockCmd>:
 80019bc:	bf00      	nop
 80019be:	bf00      	nop
 80019c0:	4b04      	ldr	r3, [pc, #16]	; (80019d4 <RCC_APB2PeriphClockCmd+0x18>)
 80019c2:	699a      	ldr	r2, [r3, #24]
 80019c4:	b109      	cbz	r1, 80019ca <RCC_APB2PeriphClockCmd+0xe>
 80019c6:	4310      	orrs	r0, r2
 80019c8:	e001      	b.n	80019ce <RCC_APB2PeriphClockCmd+0x12>
 80019ca:	ea22 0000 	bic.w	r0, r2, r0
 80019ce:	6198      	str	r0, [r3, #24]
 80019d0:	4770      	bx	lr
 80019d2:	bf00      	nop
 80019d4:	40021000 	.word	0x40021000

080019d8 <RCC_APB1PeriphClockCmd>:
 80019d8:	bf00      	nop
 80019da:	bf00      	nop
 80019dc:	4b04      	ldr	r3, [pc, #16]	; (80019f0 <RCC_APB1PeriphClockCmd+0x18>)
 80019de:	69da      	ldr	r2, [r3, #28]
 80019e0:	b109      	cbz	r1, 80019e6 <RCC_APB1PeriphClockCmd+0xe>
 80019e2:	4310      	orrs	r0, r2
 80019e4:	e001      	b.n	80019ea <RCC_APB1PeriphClockCmd+0x12>
 80019e6:	ea22 0000 	bic.w	r0, r2, r0
 80019ea:	61d8      	str	r0, [r3, #28]
 80019ec:	4770      	bx	lr
 80019ee:	bf00      	nop
 80019f0:	40021000 	.word	0x40021000

080019f4 <TIM_TimeBaseInit>:
 80019f4:	bf00      	nop
 80019f6:	bf00      	nop
 80019f8:	bf00      	nop
 80019fa:	4a24      	ldr	r2, [pc, #144]	; (8001a8c <TIM_TimeBaseInit+0x98>)
 80019fc:	8803      	ldrh	r3, [r0, #0]
 80019fe:	4290      	cmp	r0, r2
 8001a00:	b29b      	uxth	r3, r3
 8001a02:	d012      	beq.n	8001a2a <TIM_TimeBaseInit+0x36>
 8001a04:	f502 6200 	add.w	r2, r2, #2048	; 0x800
 8001a08:	4290      	cmp	r0, r2
 8001a0a:	d00e      	beq.n	8001a2a <TIM_TimeBaseInit+0x36>
 8001a0c:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 8001a10:	d00b      	beq.n	8001a2a <TIM_TimeBaseInit+0x36>
 8001a12:	f5a2 3298 	sub.w	r2, r2, #77824	; 0x13000
 8001a16:	4290      	cmp	r0, r2
 8001a18:	d007      	beq.n	8001a2a <TIM_TimeBaseInit+0x36>
 8001a1a:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8001a1e:	4290      	cmp	r0, r2
 8001a20:	d003      	beq.n	8001a2a <TIM_TimeBaseInit+0x36>
 8001a22:	f502 32a4 	add.w	r2, r2, #83968	; 0x14800
 8001a26:	4290      	cmp	r0, r2
 8001a28:	d103      	bne.n	8001a32 <TIM_TimeBaseInit+0x3e>
 8001a2a:	884a      	ldrh	r2, [r1, #2]
 8001a2c:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 8001a30:	4313      	orrs	r3, r2
 8001a32:	4a17      	ldr	r2, [pc, #92]	; (8001a90 <TIM_TimeBaseInit+0x9c>)
 8001a34:	4290      	cmp	r0, r2
 8001a36:	d008      	beq.n	8001a4a <TIM_TimeBaseInit+0x56>
 8001a38:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8001a3c:	4290      	cmp	r0, r2
 8001a3e:	bf1f      	itttt	ne
 8001a40:	f423 7340 	bicne.w	r3, r3, #768	; 0x300
 8001a44:	890a      	ldrhne	r2, [r1, #8]
 8001a46:	b29b      	uxthne	r3, r3
 8001a48:	4313      	orrne	r3, r2
 8001a4a:	8003      	strh	r3, [r0, #0]
 8001a4c:	684b      	ldr	r3, [r1, #4]
 8001a4e:	62c3      	str	r3, [r0, #44]	; 0x2c
 8001a50:	880b      	ldrh	r3, [r1, #0]
 8001a52:	8503      	strh	r3, [r0, #40]	; 0x28
 8001a54:	4b0d      	ldr	r3, [pc, #52]	; (8001a8c <TIM_TimeBaseInit+0x98>)
 8001a56:	4298      	cmp	r0, r3
 8001a58:	d013      	beq.n	8001a82 <TIM_TimeBaseInit+0x8e>
 8001a5a:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 8001a5e:	4298      	cmp	r0, r3
 8001a60:	d00f      	beq.n	8001a82 <TIM_TimeBaseInit+0x8e>
 8001a62:	f503 6340 	add.w	r3, r3, #3072	; 0xc00
 8001a66:	4298      	cmp	r0, r3
 8001a68:	d00b      	beq.n	8001a82 <TIM_TimeBaseInit+0x8e>
 8001a6a:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 8001a6e:	4298      	cmp	r0, r3
 8001a70:	d007      	beq.n	8001a82 <TIM_TimeBaseInit+0x8e>
 8001a72:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 8001a76:	4298      	cmp	r0, r3
 8001a78:	d003      	beq.n	8001a82 <TIM_TimeBaseInit+0x8e>
 8001a7a:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 8001a7e:	4298      	cmp	r0, r3
 8001a80:	d101      	bne.n	8001a86 <TIM_TimeBaseInit+0x92>
 8001a82:	894b      	ldrh	r3, [r1, #10]
 8001a84:	8603      	strh	r3, [r0, #48]	; 0x30
 8001a86:	2301      	movs	r3, #1
 8001a88:	6143      	str	r3, [r0, #20]
 8001a8a:	4770      	bx	lr
 8001a8c:	40012c00 	.word	0x40012c00
 8001a90:	40001000 	.word	0x40001000

08001a94 <TIM_Cmd>:
 8001a94:	bf00      	nop
 8001a96:	bf00      	nop
 8001a98:	8803      	ldrh	r3, [r0, #0]
 8001a9a:	b119      	cbz	r1, 8001aa4 <TIM_Cmd+0x10>
 8001a9c:	b29b      	uxth	r3, r3
 8001a9e:	f043 0301 	orr.w	r3, r3, #1
 8001aa2:	e003      	b.n	8001aac <TIM_Cmd+0x18>
 8001aa4:	f023 0301 	bic.w	r3, r3, #1
 8001aa8:	041b      	lsls	r3, r3, #16
 8001aaa:	0c1b      	lsrs	r3, r3, #16
 8001aac:	8003      	strh	r3, [r0, #0]
 8001aae:	4770      	bx	lr

08001ab0 <TIM_OC1Init>:
 8001ab0:	b570      	push	{r4, r5, r6, lr}
 8001ab2:	bf00      	nop
 8001ab4:	bf00      	nop
 8001ab6:	bf00      	nop
 8001ab8:	bf00      	nop
 8001aba:	6a03      	ldr	r3, [r0, #32]
 8001abc:	680d      	ldr	r5, [r1, #0]
 8001abe:	f023 0301 	bic.w	r3, r3, #1
 8001ac2:	6203      	str	r3, [r0, #32]
 8001ac4:	6a03      	ldr	r3, [r0, #32]
 8001ac6:	6844      	ldr	r4, [r0, #4]
 8001ac8:	6982      	ldr	r2, [r0, #24]
 8001aca:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
 8001ace:	f022 0273 	bic.w	r2, r2, #115	; 0x73
 8001ad2:	4315      	orrs	r5, r2
 8001ad4:	898a      	ldrh	r2, [r1, #12]
 8001ad6:	f023 0302 	bic.w	r3, r3, #2
 8001ada:	4313      	orrs	r3, r2
 8001adc:	888a      	ldrh	r2, [r1, #4]
 8001ade:	4313      	orrs	r3, r2
 8001ae0:	4a15      	ldr	r2, [pc, #84]	; (8001b38 <TIM_OC1Init+0x88>)
 8001ae2:	4290      	cmp	r0, r2
 8001ae4:	d00f      	beq.n	8001b06 <TIM_OC1Init+0x56>
 8001ae6:	f502 6200 	add.w	r2, r2, #2048	; 0x800
 8001aea:	4290      	cmp	r0, r2
 8001aec:	d00b      	beq.n	8001b06 <TIM_OC1Init+0x56>
 8001aee:	f502 6240 	add.w	r2, r2, #3072	; 0xc00
 8001af2:	4290      	cmp	r0, r2
 8001af4:	d007      	beq.n	8001b06 <TIM_OC1Init+0x56>
 8001af6:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8001afa:	4290      	cmp	r0, r2
 8001afc:	d003      	beq.n	8001b06 <TIM_OC1Init+0x56>
 8001afe:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8001b02:	4290      	cmp	r0, r2
 8001b04:	d111      	bne.n	8001b2a <TIM_OC1Init+0x7a>
 8001b06:	bf00      	nop
 8001b08:	bf00      	nop
 8001b0a:	bf00      	nop
 8001b0c:	bf00      	nop
 8001b0e:	89ca      	ldrh	r2, [r1, #14]
 8001b10:	88ce      	ldrh	r6, [r1, #6]
 8001b12:	f023 0308 	bic.w	r3, r3, #8
 8001b16:	4313      	orrs	r3, r2
 8001b18:	8a0a      	ldrh	r2, [r1, #16]
 8001b1a:	f424 7440 	bic.w	r4, r4, #768	; 0x300
 8001b1e:	4314      	orrs	r4, r2
 8001b20:	8a4a      	ldrh	r2, [r1, #18]
 8001b22:	f023 0304 	bic.w	r3, r3, #4
 8001b26:	4333      	orrs	r3, r6
 8001b28:	4314      	orrs	r4, r2
 8001b2a:	688a      	ldr	r2, [r1, #8]
 8001b2c:	6044      	str	r4, [r0, #4]
 8001b2e:	6185      	str	r5, [r0, #24]
 8001b30:	6342      	str	r2, [r0, #52]	; 0x34
 8001b32:	6203      	str	r3, [r0, #32]
 8001b34:	bd70      	pop	{r4, r5, r6, pc}
 8001b36:	bf00      	nop
 8001b38:	40012c00 	.word	0x40012c00

08001b3c <TIM_OC2Init>:
 8001b3c:	b570      	push	{r4, r5, r6, lr}
 8001b3e:	bf00      	nop
 8001b40:	bf00      	nop
 8001b42:	bf00      	nop
 8001b44:	bf00      	nop
 8001b46:	6a03      	ldr	r3, [r0, #32]
 8001b48:	680d      	ldr	r5, [r1, #0]
 8001b4a:	898e      	ldrh	r6, [r1, #12]
 8001b4c:	f023 0310 	bic.w	r3, r3, #16
 8001b50:	6203      	str	r3, [r0, #32]
 8001b52:	6a03      	ldr	r3, [r0, #32]
 8001b54:	6844      	ldr	r4, [r0, #4]
 8001b56:	6982      	ldr	r2, [r0, #24]
 8001b58:	f022 7280 	bic.w	r2, r2, #16777216	; 0x1000000
 8001b5c:	f422 42e6 	bic.w	r2, r2, #29440	; 0x7300
 8001b60:	ea42 2505 	orr.w	r5, r2, r5, lsl #8
 8001b64:	f023 0220 	bic.w	r2, r3, #32
 8001b68:	888b      	ldrh	r3, [r1, #4]
 8001b6a:	4333      	orrs	r3, r6
 8001b6c:	ea42 1303 	orr.w	r3, r2, r3, lsl #4
 8001b70:	4a10      	ldr	r2, [pc, #64]	; (8001bb4 <TIM_OC2Init+0x78>)
 8001b72:	4290      	cmp	r0, r2
 8001b74:	d003      	beq.n	8001b7e <TIM_OC2Init+0x42>
 8001b76:	f502 6200 	add.w	r2, r2, #2048	; 0x800
 8001b7a:	4290      	cmp	r0, r2
 8001b7c:	d114      	bne.n	8001ba8 <TIM_OC2Init+0x6c>
 8001b7e:	bf00      	nop
 8001b80:	bf00      	nop
 8001b82:	bf00      	nop
 8001b84:	bf00      	nop
 8001b86:	89ca      	ldrh	r2, [r1, #14]
 8001b88:	8a0e      	ldrh	r6, [r1, #16]
 8001b8a:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8001b8e:	ea43 1302 	orr.w	r3, r3, r2, lsl #4
 8001b92:	88ca      	ldrh	r2, [r1, #6]
 8001b94:	f023 0340 	bic.w	r3, r3, #64	; 0x40
 8001b98:	ea43 1302 	orr.w	r3, r3, r2, lsl #4
 8001b9c:	8a4a      	ldrh	r2, [r1, #18]
 8001b9e:	f424 6440 	bic.w	r4, r4, #3072	; 0xc00
 8001ba2:	4332      	orrs	r2, r6
 8001ba4:	ea44 0482 	orr.w	r4, r4, r2, lsl #2
 8001ba8:	688a      	ldr	r2, [r1, #8]
 8001baa:	6044      	str	r4, [r0, #4]
 8001bac:	6185      	str	r5, [r0, #24]
 8001bae:	6382      	str	r2, [r0, #56]	; 0x38
 8001bb0:	6203      	str	r3, [r0, #32]
 8001bb2:	bd70      	pop	{r4, r5, r6, pc}
 8001bb4:	40012c00 	.word	0x40012c00

08001bb8 <TIM_CtrlPWMOutputs>:
 8001bb8:	bf00      	nop
 8001bba:	bf00      	nop
 8001bbc:	6c43      	ldr	r3, [r0, #68]	; 0x44
 8001bbe:	b111      	cbz	r1, 8001bc6 <TIM_CtrlPWMOutputs+0xe>
 8001bc0:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
 8001bc4:	e001      	b.n	8001bca <TIM_CtrlPWMOutputs+0x12>
 8001bc6:	f3c3 030e 	ubfx	r3, r3, #0, #15
 8001bca:	6443      	str	r3, [r0, #68]	; 0x44
 8001bcc:	4770      	bx	lr

08001bce <TIM_ClearITPendingBit>:
 8001bce:	bf00      	nop
 8001bd0:	43c9      	mvns	r1, r1
 8001bd2:	b289      	uxth	r1, r1
 8001bd4:	6101      	str	r1, [r0, #16]
 8001bd6:	4770      	bx	lr

08001bd8 <timer_init>:
 8001bd8:	b530      	push	{r4, r5, lr}
 8001bda:	2300      	movs	r3, #0
 8001bdc:	b085      	sub	sp, #20
 8001bde:	491f      	ldr	r1, [pc, #124]	; (8001c5c <timer_init+0x84>)
 8001be0:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8001be4:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 8001be8:	491d      	ldr	r1, [pc, #116]	; (8001c60 <timer_init+0x88>)
 8001bea:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 8001bee:	4a1d      	ldr	r2, [pc, #116]	; (8001c64 <timer_init+0x8c>)
 8001bf0:	2400      	movs	r4, #0
 8001bf2:	f822 4013 	strh.w	r4, [r2, r3, lsl #1]
 8001bf6:	3301      	adds	r3, #1
 8001bf8:	2b04      	cmp	r3, #4
 8001bfa:	4625      	mov	r5, r4
 8001bfc:	d1ef      	bne.n	8001bde <timer_init+0x6>
 8001bfe:	4b1a      	ldr	r3, [pc, #104]	; (8001c68 <timer_init+0x90>)
 8001c00:	2002      	movs	r0, #2
 8001c02:	2101      	movs	r1, #1
 8001c04:	601c      	str	r4, [r3, #0]
 8001c06:	f7ff fee7 	bl	80019d8 <RCC_APB1PeriphClockCmd>
 8001c0a:	f8ad 4006 	strh.w	r4, [sp, #6]
 8001c0e:	f8ad 400c 	strh.w	r4, [sp, #12]
 8001c12:	f8ad 400e 	strh.w	r4, [sp, #14]
 8001c16:	4c15      	ldr	r4, [pc, #84]	; (8001c6c <timer_init+0x94>)
 8001c18:	f44f 738c 	mov.w	r3, #280	; 0x118
 8001c1c:	f8ad 3004 	strh.w	r3, [sp, #4]
 8001c20:	4620      	mov	r0, r4
 8001c22:	2331      	movs	r3, #49	; 0x31
 8001c24:	a901      	add	r1, sp, #4
 8001c26:	9302      	str	r3, [sp, #8]
 8001c28:	f7ff fee4 	bl	80019f4 <TIM_TimeBaseInit>
 8001c2c:	4620      	mov	r0, r4
 8001c2e:	2101      	movs	r1, #1
 8001c30:	f7ff ff30 	bl	8001a94 <TIM_Cmd>
 8001c34:	68e3      	ldr	r3, [r4, #12]
 8001c36:	f043 0301 	orr.w	r3, r3, #1
 8001c3a:	60e3      	str	r3, [r4, #12]
 8001c3c:	231d      	movs	r3, #29
 8001c3e:	f88d 3000 	strb.w	r3, [sp]
 8001c42:	4668      	mov	r0, sp
 8001c44:	2301      	movs	r3, #1
 8001c46:	f88d 5001 	strb.w	r5, [sp, #1]
 8001c4a:	f88d 3002 	strb.w	r3, [sp, #2]
 8001c4e:	f88d 3003 	strb.w	r3, [sp, #3]
 8001c52:	f000 fc6d 	bl	8002530 <NVIC_Init>
 8001c56:	b005      	add	sp, #20
 8001c58:	bd30      	pop	{r4, r5, pc}
 8001c5a:	bf00      	nop
 8001c5c:	20001188 	.word	0x20001188
 8001c60:	2000117c 	.word	0x2000117c
 8001c64:	20001174 	.word	0x20001174
 8001c68:	20001184 	.word	0x20001184
 8001c6c:	40000400 	.word	0x40000400

08001c70 <TIM3_IRQHandler>:
 8001c70:	2300      	movs	r3, #0
 8001c72:	4910      	ldr	r1, [pc, #64]	; (8001cb4 <TIM3_IRQHandler+0x44>)
 8001c74:	f831 2013 	ldrh.w	r2, [r1, r3, lsl #1]
 8001c78:	b292      	uxth	r2, r2
 8001c7a:	b132      	cbz	r2, 8001c8a <TIM3_IRQHandler+0x1a>
 8001c7c:	f831 2013 	ldrh.w	r2, [r1, r3, lsl #1]
 8001c80:	3a01      	subs	r2, #1
 8001c82:	b292      	uxth	r2, r2
 8001c84:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 8001c88:	e009      	b.n	8001c9e <TIM3_IRQHandler+0x2e>
 8001c8a:	4a0b      	ldr	r2, [pc, #44]	; (8001cb8 <TIM3_IRQHandler+0x48>)
 8001c8c:	f832 2013 	ldrh.w	r2, [r2, r3, lsl #1]
 8001c90:	b292      	uxth	r2, r2
 8001c92:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 8001c96:	4a09      	ldr	r2, [pc, #36]	; (8001cbc <TIM3_IRQHandler+0x4c>)
 8001c98:	2101      	movs	r1, #1
 8001c9a:	f822 1013 	strh.w	r1, [r2, r3, lsl #1]
 8001c9e:	3301      	adds	r3, #1
 8001ca0:	2b04      	cmp	r3, #4
 8001ca2:	d1e6      	bne.n	8001c72 <TIM3_IRQHandler+0x2>
 8001ca4:	4a06      	ldr	r2, [pc, #24]	; (8001cc0 <TIM3_IRQHandler+0x50>)
 8001ca6:	4807      	ldr	r0, [pc, #28]	; (8001cc4 <TIM3_IRQHandler+0x54>)
 8001ca8:	6813      	ldr	r3, [r2, #0]
 8001caa:	2101      	movs	r1, #1
 8001cac:	3301      	adds	r3, #1
 8001cae:	6013      	str	r3, [r2, #0]
 8001cb0:	f7ff bf8d 	b.w	8001bce <TIM_ClearITPendingBit>
 8001cb4:	20001188 	.word	0x20001188
 8001cb8:	2000117c 	.word	0x2000117c
 8001cbc:	20001174 	.word	0x20001174
 8001cc0:	20001184 	.word	0x20001184
 8001cc4:	40000400 	.word	0x40000400

08001cc8 <timer_get_time>:
 8001cc8:	b082      	sub	sp, #8
 8001cca:	b672      	cpsid	i
 8001ccc:	4b04      	ldr	r3, [pc, #16]	; (8001ce0 <timer_get_time+0x18>)
 8001cce:	681b      	ldr	r3, [r3, #0]
 8001cd0:	9301      	str	r3, [sp, #4]
 8001cd2:	b662      	cpsie	i
 8001cd4:	230a      	movs	r3, #10
 8001cd6:	9801      	ldr	r0, [sp, #4]
 8001cd8:	fbb0 f0f3 	udiv	r0, r0, r3
 8001cdc:	b002      	add	sp, #8
 8001cde:	4770      	bx	lr
 8001ce0:	20001184 	.word	0x20001184

08001ce4 <timer_delay_ms>:
 8001ce4:	b513      	push	{r0, r1, r4, lr}
 8001ce6:	4604      	mov	r4, r0
 8001ce8:	f7ff ffee 	bl	8001cc8 <timer_get_time>
 8001cec:	4420      	add	r0, r4
 8001cee:	9001      	str	r0, [sp, #4]
 8001cf0:	9c01      	ldr	r4, [sp, #4]
 8001cf2:	f7ff ffe9 	bl	8001cc8 <timer_get_time>
 8001cf6:	4284      	cmp	r4, r0
 8001cf8:	d902      	bls.n	8001d00 <timer_delay_ms+0x1c>
 8001cfa:	f000 fb17 	bl	800232c <sleep>
 8001cfe:	e7f7      	b.n	8001cf0 <timer_delay_ms+0xc>
 8001d00:	b002      	add	sp, #8
 8001d02:	bd10      	pop	{r4, pc}

08001d04 <event_timer_set_period>:
 8001d04:	b672      	cpsid	i
 8001d06:	eb01 0181 	add.w	r1, r1, r1, lsl #2
 8001d0a:	4b07      	ldr	r3, [pc, #28]	; (8001d28 <event_timer_set_period+0x24>)
 8001d0c:	0049      	lsls	r1, r1, #1
 8001d0e:	b289      	uxth	r1, r1
 8001d10:	f823 1010 	strh.w	r1, [r3, r0, lsl #1]
 8001d14:	4b05      	ldr	r3, [pc, #20]	; (8001d2c <event_timer_set_period+0x28>)
 8001d16:	f823 1010 	strh.w	r1, [r3, r0, lsl #1]
 8001d1a:	4b05      	ldr	r3, [pc, #20]	; (8001d30 <event_timer_set_period+0x2c>)
 8001d1c:	2200      	movs	r2, #0
 8001d1e:	f823 2010 	strh.w	r2, [r3, r0, lsl #1]
 8001d22:	b662      	cpsie	i
 8001d24:	4770      	bx	lr
 8001d26:	bf00      	nop
 8001d28:	20001188 	.word	0x20001188
 8001d2c:	2000117c 	.word	0x2000117c
 8001d30:	20001174 	.word	0x20001174

08001d34 <event_timer_wait>:
 8001d34:	b510      	push	{r4, lr}
 8001d36:	4604      	mov	r4, r0
 8001d38:	4a06      	ldr	r2, [pc, #24]	; (8001d54 <event_timer_wait+0x20>)
 8001d3a:	f832 3014 	ldrh.w	r3, [r2, r4, lsl #1]
 8001d3e:	b29b      	uxth	r3, r3
 8001d40:	b913      	cbnz	r3, 8001d48 <event_timer_wait+0x14>
 8001d42:	f000 faf3 	bl	800232c <sleep>
 8001d46:	e7f7      	b.n	8001d38 <event_timer_wait+0x4>
 8001d48:	b672      	cpsid	i
 8001d4a:	2300      	movs	r3, #0
 8001d4c:	f822 3014 	strh.w	r3, [r2, r4, lsl #1]
 8001d50:	b662      	cpsie	i
 8001d52:	bd10      	pop	{r4, pc}
 8001d54:	20001174 	.word	0x20001174

08001d58 <USART_Init>:
 8001d58:	b530      	push	{r4, r5, lr}
 8001d5a:	4604      	mov	r4, r0
 8001d5c:	b099      	sub	sp, #100	; 0x64
 8001d5e:	460d      	mov	r5, r1
 8001d60:	bf00      	nop
 8001d62:	bf00      	nop
 8001d64:	bf00      	nop
 8001d66:	bf00      	nop
 8001d68:	bf00      	nop
 8001d6a:	bf00      	nop
 8001d6c:	bf00      	nop
 8001d6e:	6803      	ldr	r3, [r0, #0]
 8001d70:	f023 0301 	bic.w	r3, r3, #1
 8001d74:	6003      	str	r3, [r0, #0]
 8001d76:	6843      	ldr	r3, [r0, #4]
 8001d78:	f423 5240 	bic.w	r2, r3, #12288	; 0x3000
 8001d7c:	688b      	ldr	r3, [r1, #8]
 8001d7e:	68c9      	ldr	r1, [r1, #12]
 8001d80:	4313      	orrs	r3, r2
 8001d82:	6043      	str	r3, [r0, #4]
 8001d84:	686a      	ldr	r2, [r5, #4]
 8001d86:	6803      	ldr	r3, [r0, #0]
 8001d88:	4311      	orrs	r1, r2
 8001d8a:	692a      	ldr	r2, [r5, #16]
 8001d8c:	f423 53b0 	bic.w	r3, r3, #5632	; 0x1600
 8001d90:	430a      	orrs	r2, r1
 8001d92:	f023 030c 	bic.w	r3, r3, #12
 8001d96:	4313      	orrs	r3, r2
 8001d98:	6003      	str	r3, [r0, #0]
 8001d9a:	6883      	ldr	r3, [r0, #8]
 8001d9c:	f423 7240 	bic.w	r2, r3, #768	; 0x300
 8001da0:	696b      	ldr	r3, [r5, #20]
 8001da2:	4313      	orrs	r3, r2
 8001da4:	6083      	str	r3, [r0, #8]
 8001da6:	a801      	add	r0, sp, #4
 8001da8:	f7ff fc84 	bl	80016b4 <RCC_GetClocksFreq>
 8001dac:	4b17      	ldr	r3, [pc, #92]	; (8001e0c <USART_Init+0xb4>)
 8001dae:	429c      	cmp	r4, r3
 8001db0:	d101      	bne.n	8001db6 <USART_Init+0x5e>
 8001db2:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8001db4:	e00e      	b.n	8001dd4 <USART_Init+0x7c>
 8001db6:	4b16      	ldr	r3, [pc, #88]	; (8001e10 <USART_Init+0xb8>)
 8001db8:	429c      	cmp	r4, r3
 8001dba:	d101      	bne.n	8001dc0 <USART_Init+0x68>
 8001dbc:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8001dbe:	e009      	b.n	8001dd4 <USART_Init+0x7c>
 8001dc0:	4b14      	ldr	r3, [pc, #80]	; (8001e14 <USART_Init+0xbc>)
 8001dc2:	429c      	cmp	r4, r3
 8001dc4:	d101      	bne.n	8001dca <USART_Init+0x72>
 8001dc6:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8001dc8:	e004      	b.n	8001dd4 <USART_Init+0x7c>
 8001dca:	4b13      	ldr	r3, [pc, #76]	; (8001e18 <USART_Init+0xc0>)
 8001dcc:	429c      	cmp	r4, r3
 8001dce:	bf0c      	ite	eq
 8001dd0:	9b12      	ldreq	r3, [sp, #72]	; 0x48
 8001dd2:	9b13      	ldrne	r3, [sp, #76]	; 0x4c
 8001dd4:	6822      	ldr	r2, [r4, #0]
 8001dd6:	6829      	ldr	r1, [r5, #0]
 8001dd8:	f412 4f00 	tst.w	r2, #32768	; 0x8000
 8001ddc:	bf18      	it	ne
 8001dde:	005b      	lslne	r3, r3, #1
 8001de0:	fbb3 f2f1 	udiv	r2, r3, r1
 8001de4:	fb01 3312 	mls	r3, r1, r2, r3
 8001de8:	ebb3 0f51 	cmp.w	r3, r1, lsr #1
 8001dec:	6823      	ldr	r3, [r4, #0]
 8001dee:	bf28      	it	cs
 8001df0:	3201      	addcs	r2, #1
 8001df2:	041b      	lsls	r3, r3, #16
 8001df4:	bf41      	itttt	mi
 8001df6:	f64f 73f0 	movwmi	r3, #65520	; 0xfff0
 8001dfa:	f3c2 0142 	ubfxmi	r1, r2, #1, #3
 8001dfe:	4013      	andmi	r3, r2
 8001e00:	ea41 0203 	orrmi.w	r2, r1, r3
 8001e04:	b292      	uxth	r2, r2
 8001e06:	81a2      	strh	r2, [r4, #12]
 8001e08:	b019      	add	sp, #100	; 0x64
 8001e0a:	bd30      	pop	{r4, r5, pc}
 8001e0c:	40013800 	.word	0x40013800
 8001e10:	40004400 	.word	0x40004400
 8001e14:	40004800 	.word	0x40004800
 8001e18:	40004c00 	.word	0x40004c00

08001e1c <USART_Cmd>:
 8001e1c:	bf00      	nop
 8001e1e:	bf00      	nop
 8001e20:	6803      	ldr	r3, [r0, #0]
 8001e22:	b111      	cbz	r1, 8001e2a <USART_Cmd+0xe>
 8001e24:	f043 0301 	orr.w	r3, r3, #1
 8001e28:	e001      	b.n	8001e2e <USART_Cmd+0x12>
 8001e2a:	f023 0301 	bic.w	r3, r3, #1
 8001e2e:	6003      	str	r3, [r0, #0]
 8001e30:	4770      	bx	lr

08001e32 <USART_ReceiveData>:
 8001e32:	bf00      	nop
 8001e34:	8c80      	ldrh	r0, [r0, #36]	; 0x24
 8001e36:	f3c0 0008 	ubfx	r0, r0, #0, #9
 8001e3a:	4770      	bx	lr

08001e3c <USART_ITConfig>:
 8001e3c:	b510      	push	{r4, lr}
 8001e3e:	bf00      	nop
 8001e40:	bf00      	nop
 8001e42:	bf00      	nop
 8001e44:	f3c1 2407 	ubfx	r4, r1, #8, #8
 8001e48:	2301      	movs	r3, #1
 8001e4a:	b2c9      	uxtb	r1, r1
 8001e4c:	2c02      	cmp	r4, #2
 8001e4e:	fa03 f301 	lsl.w	r3, r3, r1
 8001e52:	d101      	bne.n	8001e58 <USART_ITConfig+0x1c>
 8001e54:	3004      	adds	r0, #4
 8001e56:	e002      	b.n	8001e5e <USART_ITConfig+0x22>
 8001e58:	2c03      	cmp	r4, #3
 8001e5a:	bf08      	it	eq
 8001e5c:	3008      	addeq	r0, #8
 8001e5e:	b112      	cbz	r2, 8001e66 <USART_ITConfig+0x2a>
 8001e60:	6802      	ldr	r2, [r0, #0]
 8001e62:	4313      	orrs	r3, r2
 8001e64:	e002      	b.n	8001e6c <USART_ITConfig+0x30>
 8001e66:	6802      	ldr	r2, [r0, #0]
 8001e68:	ea22 0303 	bic.w	r3, r2, r3
 8001e6c:	6003      	str	r3, [r0, #0]
 8001e6e:	bd10      	pop	{r4, pc}

08001e70 <USART_GetITStatus>:
 8001e70:	b510      	push	{r4, lr}
 8001e72:	bf00      	nop
 8001e74:	bf00      	nop
 8001e76:	f3c1 2207 	ubfx	r2, r1, #8, #8
 8001e7a:	b2cc      	uxtb	r4, r1
 8001e7c:	2301      	movs	r3, #1
 8001e7e:	2a01      	cmp	r2, #1
 8001e80:	fa03 f304 	lsl.w	r3, r3, r4
 8001e84:	d101      	bne.n	8001e8a <USART_GetITStatus+0x1a>
 8001e86:	6802      	ldr	r2, [r0, #0]
 8001e88:	e003      	b.n	8001e92 <USART_GetITStatus+0x22>
 8001e8a:	2a02      	cmp	r2, #2
 8001e8c:	bf0c      	ite	eq
 8001e8e:	6842      	ldreq	r2, [r0, #4]
 8001e90:	6882      	ldrne	r2, [r0, #8]
 8001e92:	4013      	ands	r3, r2
 8001e94:	69c2      	ldr	r2, [r0, #28]
 8001e96:	b13b      	cbz	r3, 8001ea8 <USART_GetITStatus+0x38>
 8001e98:	0c09      	lsrs	r1, r1, #16
 8001e9a:	2301      	movs	r3, #1
 8001e9c:	408b      	lsls	r3, r1
 8001e9e:	4213      	tst	r3, r2
 8001ea0:	bf14      	ite	ne
 8001ea2:	2001      	movne	r0, #1
 8001ea4:	2000      	moveq	r0, #0
 8001ea6:	bd10      	pop	{r4, pc}
 8001ea8:	4618      	mov	r0, r3
 8001eaa:	bd10      	pop	{r4, pc}

08001eac <USART_ClearITPendingBit>:
 8001eac:	bf00      	nop
 8001eae:	bf00      	nop
 8001eb0:	2301      	movs	r3, #1
 8001eb2:	0c09      	lsrs	r1, r1, #16
 8001eb4:	408b      	lsls	r3, r1
 8001eb6:	6203      	str	r3, [r0, #32]
 8001eb8:	4770      	bx	lr
	...

08001ebc <uart_write>:
 8001ebc:	4b04      	ldr	r3, [pc, #16]	; (8001ed0 <uart_write+0x14>)
 8001ebe:	69da      	ldr	r2, [r3, #28]
 8001ec0:	0612      	lsls	r2, r2, #24
 8001ec2:	d401      	bmi.n	8001ec8 <uart_write+0xc>
 8001ec4:	bf00      	nop
 8001ec6:	e7f9      	b.n	8001ebc <uart_write>
 8001ec8:	b280      	uxth	r0, r0
 8001eca:	8518      	strh	r0, [r3, #40]	; 0x28
 8001ecc:	4770      	bx	lr
 8001ece:	bf00      	nop
 8001ed0:	40013800 	.word	0x40013800

08001ed4 <uart_init>:
 8001ed4:	b530      	push	{r4, r5, lr}
 8001ed6:	4b2c      	ldr	r3, [pc, #176]	; (8001f88 <uart_init+0xb4>)
 8001ed8:	4d2c      	ldr	r5, [pc, #176]	; (8001f8c <uart_init+0xb8>)
 8001eda:	2400      	movs	r4, #0
 8001edc:	601c      	str	r4, [r3, #0]
 8001ede:	4b2c      	ldr	r3, [pc, #176]	; (8001f90 <uart_init+0xbc>)
 8001ee0:	b08b      	sub	sp, #44	; 0x2c
 8001ee2:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 8001ee6:	2101      	movs	r1, #1
 8001ee8:	601c      	str	r4, [r3, #0]
 8001eea:	f7ff fd59 	bl	80019a0 <RCC_AHBPeriphClockCmd>
 8001eee:	f44f 4080 	mov.w	r0, #16384	; 0x4000
 8001ef2:	2101      	movs	r1, #1
 8001ef4:	f7ff fd62 	bl	80019bc <RCC_APB2PeriphClockCmd>
 8001ef8:	f44f 63c0 	mov.w	r3, #1536	; 0x600
 8001efc:	9302      	str	r3, [sp, #8]
 8001efe:	2302      	movs	r3, #2
 8001f00:	f88d 300c 	strb.w	r3, [sp, #12]
 8001f04:	a902      	add	r1, sp, #8
 8001f06:	2303      	movs	r3, #3
 8001f08:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8001f0c:	f88d 300d 	strb.w	r3, [sp, #13]
 8001f10:	f88d 400e 	strb.w	r4, [sp, #14]
 8001f14:	f88d 400f 	strb.w	r4, [sp, #15]
 8001f18:	f000 fb55 	bl	80025c6 <GPIO_Init>
 8001f1c:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8001f20:	2109      	movs	r1, #9
 8001f22:	2207      	movs	r2, #7
 8001f24:	f000 fb99 	bl	800265a <GPIO_PinAFConfig>
 8001f28:	2207      	movs	r2, #7
 8001f2a:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8001f2e:	210a      	movs	r1, #10
 8001f30:	f000 fb93 	bl	800265a <GPIO_PinAFConfig>
 8001f34:	f44f 33e1 	mov.w	r3, #115200	; 0x1c200
 8001f38:	9304      	str	r3, [sp, #16]
 8001f3a:	4628      	mov	r0, r5
 8001f3c:	230c      	movs	r3, #12
 8001f3e:	a904      	add	r1, sp, #16
 8001f40:	9308      	str	r3, [sp, #32]
 8001f42:	9405      	str	r4, [sp, #20]
 8001f44:	9406      	str	r4, [sp, #24]
 8001f46:	9407      	str	r4, [sp, #28]
 8001f48:	9409      	str	r4, [sp, #36]	; 0x24
 8001f4a:	f7ff ff05 	bl	8001d58 <USART_Init>
 8001f4e:	4628      	mov	r0, r5
 8001f50:	2101      	movs	r1, #1
 8001f52:	f7ff ff63 	bl	8001e1c <USART_Cmd>
 8001f56:	2201      	movs	r2, #1
 8001f58:	4628      	mov	r0, r5
 8001f5a:	490e      	ldr	r1, [pc, #56]	; (8001f94 <uart_init+0xc0>)
 8001f5c:	f7ff ff6e 	bl	8001e3c <USART_ITConfig>
 8001f60:	2325      	movs	r3, #37	; 0x25
 8001f62:	f88d 4005 	strb.w	r4, [sp, #5]
 8001f66:	f88d 4006 	strb.w	r4, [sp, #6]
 8001f6a:	a801      	add	r0, sp, #4
 8001f6c:	2401      	movs	r4, #1
 8001f6e:	f88d 3004 	strb.w	r3, [sp, #4]
 8001f72:	f88d 4007 	strb.w	r4, [sp, #7]
 8001f76:	f000 fadb 	bl	8002530 <NVIC_Init>
 8001f7a:	4628      	mov	r0, r5
 8001f7c:	4621      	mov	r1, r4
 8001f7e:	f7ff ff4d 	bl	8001e1c <USART_Cmd>
 8001f82:	b00b      	add	sp, #44	; 0x2c
 8001f84:	bd30      	pop	{r4, r5, pc}
 8001f86:	bf00      	nop
 8001f88:	200011a0 	.word	0x200011a0
 8001f8c:	40013800 	.word	0x40013800
 8001f90:	200011a4 	.word	0x200011a4
 8001f94:	00050105 	.word	0x00050105

08001f98 <USART1_IRQHandler>:
 8001f98:	b508      	push	{r3, lr}
 8001f9a:	480d      	ldr	r0, [pc, #52]	; (8001fd0 <USART1_IRQHandler+0x38>)
 8001f9c:	490d      	ldr	r1, [pc, #52]	; (8001fd4 <USART1_IRQHandler+0x3c>)
 8001f9e:	f7ff ff67 	bl	8001e70 <USART_GetITStatus>
 8001fa2:	b178      	cbz	r0, 8001fc4 <USART1_IRQHandler+0x2c>
 8001fa4:	480a      	ldr	r0, [pc, #40]	; (8001fd0 <USART1_IRQHandler+0x38>)
 8001fa6:	f7ff ff44 	bl	8001e32 <USART_ReceiveData>
 8001faa:	4b0b      	ldr	r3, [pc, #44]	; (8001fd8 <USART1_IRQHandler+0x40>)
 8001fac:	490b      	ldr	r1, [pc, #44]	; (8001fdc <USART1_IRQHandler+0x44>)
 8001fae:	681a      	ldr	r2, [r3, #0]
 8001fb0:	b2c0      	uxtb	r0, r0
 8001fb2:	5488      	strb	r0, [r1, r2]
 8001fb4:	681a      	ldr	r2, [r3, #0]
 8001fb6:	3201      	adds	r2, #1
 8001fb8:	601a      	str	r2, [r3, #0]
 8001fba:	681a      	ldr	r2, [r3, #0]
 8001fbc:	2a0f      	cmp	r2, #15
 8001fbe:	bf84      	itt	hi
 8001fc0:	2200      	movhi	r2, #0
 8001fc2:	601a      	strhi	r2, [r3, #0]
 8001fc4:	4802      	ldr	r0, [pc, #8]	; (8001fd0 <USART1_IRQHandler+0x38>)
 8001fc6:	4903      	ldr	r1, [pc, #12]	; (8001fd4 <USART1_IRQHandler+0x3c>)
 8001fc8:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001fcc:	f7ff bf6e 	b.w	8001eac <USART_ClearITPendingBit>
 8001fd0:	40013800 	.word	0x40013800
 8001fd4:	00050105 	.word	0x00050105
 8001fd8:	200011a0 	.word	0x200011a0
 8001fdc:	20001190 	.word	0x20001190

08001fe0 <i2c_delay>:
 8001fe0:	bf00      	nop
 8001fe2:	bf00      	nop
 8001fe4:	bf00      	nop
 8001fe6:	bf00      	nop
 8001fe8:	4770      	bx	lr
	...

08001fec <SetLowSDA>:
 8001fec:	b537      	push	{r0, r1, r2, r4, r5, lr}
 8001fee:	4d0d      	ldr	r5, [pc, #52]	; (8002024 <SetLowSDA+0x38>)
 8001ff0:	2301      	movs	r3, #1
 8001ff2:	2203      	movs	r2, #3
 8001ff4:	2480      	movs	r4, #128	; 0x80
 8001ff6:	f88d 3004 	strb.w	r3, [sp, #4]
 8001ffa:	f88d 3006 	strb.w	r3, [sp, #6]
 8001ffe:	4628      	mov	r0, r5
 8002000:	2300      	movs	r3, #0
 8002002:	4669      	mov	r1, sp
 8002004:	f88d 2005 	strb.w	r2, [sp, #5]
 8002008:	f88d 3007 	strb.w	r3, [sp, #7]
 800200c:	9400      	str	r4, [sp, #0]
 800200e:	f000 fada 	bl	80025c6 <GPIO_Init>
 8002012:	4628      	mov	r0, r5
 8002014:	4621      	mov	r1, r4
 8002016:	f000 fb1c 	bl	8002652 <GPIO_ResetBits>
 800201a:	f7ff ffe1 	bl	8001fe0 <i2c_delay>
 800201e:	b003      	add	sp, #12
 8002020:	bd30      	pop	{r4, r5, pc}
 8002022:	bf00      	nop
 8002024:	48000400 	.word	0x48000400

08002028 <SetHighSDA>:
 8002028:	b537      	push	{r0, r1, r2, r4, r5, lr}
 800202a:	4d0d      	ldr	r5, [pc, #52]	; (8002060 <SetHighSDA+0x38>)
 800202c:	2203      	movs	r2, #3
 800202e:	2300      	movs	r3, #0
 8002030:	2480      	movs	r4, #128	; 0x80
 8002032:	f88d 2005 	strb.w	r2, [sp, #5]
 8002036:	4628      	mov	r0, r5
 8002038:	2201      	movs	r2, #1
 800203a:	4669      	mov	r1, sp
 800203c:	f88d 3004 	strb.w	r3, [sp, #4]
 8002040:	f88d 2006 	strb.w	r2, [sp, #6]
 8002044:	f88d 3007 	strb.w	r3, [sp, #7]
 8002048:	9400      	str	r4, [sp, #0]
 800204a:	f000 fabc 	bl	80025c6 <GPIO_Init>
 800204e:	4628      	mov	r0, r5
 8002050:	4621      	mov	r1, r4
 8002052:	f000 fafa 	bl	800264a <GPIO_SetBits>
 8002056:	f7ff ffc3 	bl	8001fe0 <i2c_delay>
 800205a:	b003      	add	sp, #12
 800205c:	bd30      	pop	{r4, r5, pc}
 800205e:	bf00      	nop
 8002060:	48000400 	.word	0x48000400

08002064 <SetLowSCL>:
 8002064:	b508      	push	{r3, lr}
 8002066:	4804      	ldr	r0, [pc, #16]	; (8002078 <SetLowSCL+0x14>)
 8002068:	2140      	movs	r1, #64	; 0x40
 800206a:	f000 faf2 	bl	8002652 <GPIO_ResetBits>
 800206e:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8002072:	f7ff bfb5 	b.w	8001fe0 <i2c_delay>
 8002076:	bf00      	nop
 8002078:	48000400 	.word	0x48000400

0800207c <SetHighSCL>:
 800207c:	b508      	push	{r3, lr}
 800207e:	4804      	ldr	r0, [pc, #16]	; (8002090 <SetHighSCL+0x14>)
 8002080:	2140      	movs	r1, #64	; 0x40
 8002082:	f000 fae2 	bl	800264a <GPIO_SetBits>
 8002086:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800208a:	f7ff bfa9 	b.w	8001fe0 <i2c_delay>
 800208e:	bf00      	nop
 8002090:	48000400 	.word	0x48000400

08002094 <i2c_0_init>:
 8002094:	b507      	push	{r0, r1, r2, lr}
 8002096:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 800209a:	2101      	movs	r1, #1
 800209c:	f7ff fc80 	bl	80019a0 <RCC_AHBPeriphClockCmd>
 80020a0:	23c0      	movs	r3, #192	; 0xc0
 80020a2:	9300      	str	r3, [sp, #0]
 80020a4:	2301      	movs	r3, #1
 80020a6:	2203      	movs	r2, #3
 80020a8:	480a      	ldr	r0, [pc, #40]	; (80020d4 <i2c_0_init+0x40>)
 80020aa:	f88d 3004 	strb.w	r3, [sp, #4]
 80020ae:	4669      	mov	r1, sp
 80020b0:	f88d 3006 	strb.w	r3, [sp, #6]
 80020b4:	2300      	movs	r3, #0
 80020b6:	f88d 2005 	strb.w	r2, [sp, #5]
 80020ba:	f88d 3007 	strb.w	r3, [sp, #7]
 80020be:	f000 fa82 	bl	80025c6 <GPIO_Init>
 80020c2:	f7ff ffdb 	bl	800207c <SetHighSCL>
 80020c6:	f7ff ff91 	bl	8001fec <SetLowSDA>
 80020ca:	f7ff ffad 	bl	8002028 <SetHighSDA>
 80020ce:	b003      	add	sp, #12
 80020d0:	f85d fb04 	ldr.w	pc, [sp], #4
 80020d4:	48000400 	.word	0x48000400

080020d8 <i2cStart>:
 80020d8:	b508      	push	{r3, lr}
 80020da:	f7ff ffcf 	bl	800207c <SetHighSCL>
 80020de:	f7ff ffa3 	bl	8002028 <SetHighSDA>
 80020e2:	f7ff ffcb 	bl	800207c <SetHighSCL>
 80020e6:	f7ff ff81 	bl	8001fec <SetLowSDA>
 80020ea:	f7ff ffbb 	bl	8002064 <SetLowSCL>
 80020ee:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80020f2:	f7ff bf99 	b.w	8002028 <SetHighSDA>

080020f6 <i2cStop>:
 80020f6:	b508      	push	{r3, lr}
 80020f8:	f7ff ffb4 	bl	8002064 <SetLowSCL>
 80020fc:	f7ff ff76 	bl	8001fec <SetLowSDA>
 8002100:	f7ff ffbc 	bl	800207c <SetHighSCL>
 8002104:	f7ff ff72 	bl	8001fec <SetLowSDA>
 8002108:	f7ff ffb8 	bl	800207c <SetHighSCL>
 800210c:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8002110:	f7ff bf8a 	b.w	8002028 <SetHighSDA>

08002114 <i2cWrite>:
 8002114:	b538      	push	{r3, r4, r5, lr}
 8002116:	4605      	mov	r5, r0
 8002118:	2408      	movs	r4, #8
 800211a:	f7ff ffa3 	bl	8002064 <SetLowSCL>
 800211e:	062b      	lsls	r3, r5, #24
 8002120:	d502      	bpl.n	8002128 <i2cWrite+0x14>
 8002122:	f7ff ff81 	bl	8002028 <SetHighSDA>
 8002126:	e001      	b.n	800212c <i2cWrite+0x18>
 8002128:	f7ff ff60 	bl	8001fec <SetLowSDA>
 800212c:	3c01      	subs	r4, #1
 800212e:	f7ff ffa5 	bl	800207c <SetHighSCL>
 8002132:	006d      	lsls	r5, r5, #1
 8002134:	f014 04ff 	ands.w	r4, r4, #255	; 0xff
 8002138:	b2ed      	uxtb	r5, r5
 800213a:	d1ee      	bne.n	800211a <i2cWrite+0x6>
 800213c:	f7ff ff92 	bl	8002064 <SetLowSCL>
 8002140:	f7ff ff72 	bl	8002028 <SetHighSDA>
 8002144:	f7ff ff9a 	bl	800207c <SetHighSCL>
 8002148:	4b05      	ldr	r3, [pc, #20]	; (8002160 <i2cWrite+0x4c>)
 800214a:	8a1c      	ldrh	r4, [r3, #16]
 800214c:	b2a4      	uxth	r4, r4
 800214e:	f7ff ff89 	bl	8002064 <SetLowSCL>
 8002152:	f7ff ff45 	bl	8001fe0 <i2c_delay>
 8002156:	f084 0080 	eor.w	r0, r4, #128	; 0x80
 800215a:	f3c0 10c0 	ubfx	r0, r0, #7, #1
 800215e:	bd38      	pop	{r3, r4, r5, pc}
 8002160:	48000400 	.word	0x48000400

08002164 <i2cRead>:
 8002164:	b570      	push	{r4, r5, r6, lr}
 8002166:	4606      	mov	r6, r0
 8002168:	f7ff ff7c 	bl	8002064 <SetLowSCL>
 800216c:	f7ff ff5c 	bl	8002028 <SetHighSDA>
 8002170:	2508      	movs	r5, #8
 8002172:	2400      	movs	r4, #0
 8002174:	f7ff ff82 	bl	800207c <SetHighSCL>
 8002178:	4b0d      	ldr	r3, [pc, #52]	; (80021b0 <i2cRead+0x4c>)
 800217a:	8a1b      	ldrh	r3, [r3, #16]
 800217c:	0064      	lsls	r4, r4, #1
 800217e:	061b      	lsls	r3, r3, #24
 8002180:	b2e4      	uxtb	r4, r4
 8002182:	bf48      	it	mi
 8002184:	3401      	addmi	r4, #1
 8002186:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 800218a:	bf48      	it	mi
 800218c:	b2e4      	uxtbmi	r4, r4
 800218e:	f7ff ff69 	bl	8002064 <SetLowSCL>
 8002192:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 8002196:	d1ed      	bne.n	8002174 <i2cRead+0x10>
 8002198:	b10e      	cbz	r6, 800219e <i2cRead+0x3a>
 800219a:	f7ff ff27 	bl	8001fec <SetLowSDA>
 800219e:	f7ff ff6d 	bl	800207c <SetHighSCL>
 80021a2:	f7ff ff5f 	bl	8002064 <SetLowSCL>
 80021a6:	f7ff ff1b 	bl	8001fe0 <i2c_delay>
 80021aa:	4620      	mov	r0, r4
 80021ac:	bd70      	pop	{r4, r5, r6, pc}
 80021ae:	bf00      	nop
 80021b0:	48000400 	.word	0x48000400

080021b4 <i2c_write_reg>:
 80021b4:	b570      	push	{r4, r5, r6, lr}
 80021b6:	4606      	mov	r6, r0
 80021b8:	460d      	mov	r5, r1
 80021ba:	4614      	mov	r4, r2
 80021bc:	f7ff ff8c 	bl	80020d8 <i2cStart>
 80021c0:	4630      	mov	r0, r6
 80021c2:	f7ff ffa7 	bl	8002114 <i2cWrite>
 80021c6:	4628      	mov	r0, r5
 80021c8:	f7ff ffa4 	bl	8002114 <i2cWrite>
 80021cc:	4620      	mov	r0, r4
 80021ce:	f7ff ffa1 	bl	8002114 <i2cWrite>
 80021d2:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 80021d6:	f7ff bf8e 	b.w	80020f6 <i2cStop>

080021da <i2c_read_reg>:
 80021da:	b538      	push	{r3, r4, r5, lr}
 80021dc:	4604      	mov	r4, r0
 80021de:	460d      	mov	r5, r1
 80021e0:	f7ff ff7a 	bl	80020d8 <i2cStart>
 80021e4:	4620      	mov	r0, r4
 80021e6:	f7ff ff95 	bl	8002114 <i2cWrite>
 80021ea:	4628      	mov	r0, r5
 80021ec:	f7ff ff92 	bl	8002114 <i2cWrite>
 80021f0:	f7ff ff72 	bl	80020d8 <i2cStart>
 80021f4:	f044 0001 	orr.w	r0, r4, #1
 80021f8:	f7ff ff8c 	bl	8002114 <i2cWrite>
 80021fc:	2000      	movs	r0, #0
 80021fe:	f7ff ffb1 	bl	8002164 <i2cRead>
 8002202:	4604      	mov	r4, r0
 8002204:	f7ff ff77 	bl	80020f6 <i2cStop>
 8002208:	4620      	mov	r0, r4
 800220a:	bd38      	pop	{r3, r4, r5, pc}

0800220c <SystemInit>:
 800220c:	4a39      	ldr	r2, [pc, #228]	; (80022f4 <SystemInit+0xe8>)
 800220e:	f8d2 3088 	ldr.w	r3, [r2, #136]	; 0x88
 8002212:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
 8002216:	f8c2 3088 	str.w	r3, [r2, #136]	; 0x88
 800221a:	4b37      	ldr	r3, [pc, #220]	; (80022f8 <SystemInit+0xec>)
 800221c:	681a      	ldr	r2, [r3, #0]
 800221e:	f042 0201 	orr.w	r2, r2, #1
 8002222:	601a      	str	r2, [r3, #0]
 8002224:	6859      	ldr	r1, [r3, #4]
 8002226:	4a35      	ldr	r2, [pc, #212]	; (80022fc <SystemInit+0xf0>)
 8002228:	400a      	ands	r2, r1
 800222a:	605a      	str	r2, [r3, #4]
 800222c:	681a      	ldr	r2, [r3, #0]
 800222e:	f022 7284 	bic.w	r2, r2, #17301504	; 0x1080000
 8002232:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
 8002236:	601a      	str	r2, [r3, #0]
 8002238:	681a      	ldr	r2, [r3, #0]
 800223a:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 800223e:	601a      	str	r2, [r3, #0]
 8002240:	685a      	ldr	r2, [r3, #4]
 8002242:	f422 02fe 	bic.w	r2, r2, #8323072	; 0x7f0000
 8002246:	605a      	str	r2, [r3, #4]
 8002248:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 800224a:	f022 020f 	bic.w	r2, r2, #15
 800224e:	62da      	str	r2, [r3, #44]	; 0x2c
 8002250:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8002252:	4a2b      	ldr	r2, [pc, #172]	; (8002300 <SystemInit+0xf4>)
 8002254:	b082      	sub	sp, #8
 8002256:	400a      	ands	r2, r1
 8002258:	631a      	str	r2, [r3, #48]	; 0x30
 800225a:	2200      	movs	r2, #0
 800225c:	609a      	str	r2, [r3, #8]
 800225e:	9200      	str	r2, [sp, #0]
 8002260:	9201      	str	r2, [sp, #4]
 8002262:	681a      	ldr	r2, [r3, #0]
 8002264:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
 8002268:	601a      	str	r2, [r3, #0]
 800226a:	681a      	ldr	r2, [r3, #0]
 800226c:	f402 3200 	and.w	r2, r2, #131072	; 0x20000
 8002270:	9201      	str	r2, [sp, #4]
 8002272:	9a00      	ldr	r2, [sp, #0]
 8002274:	3201      	adds	r2, #1
 8002276:	9200      	str	r2, [sp, #0]
 8002278:	9a01      	ldr	r2, [sp, #4]
 800227a:	b91a      	cbnz	r2, 8002284 <SystemInit+0x78>
 800227c:	9a00      	ldr	r2, [sp, #0]
 800227e:	f5b2 4fa0 	cmp.w	r2, #20480	; 0x5000
 8002282:	d1f2      	bne.n	800226a <SystemInit+0x5e>
 8002284:	681a      	ldr	r2, [r3, #0]
 8002286:	f412 3200 	ands.w	r2, r2, #131072	; 0x20000
 800228a:	bf18      	it	ne
 800228c:	2201      	movne	r2, #1
 800228e:	9201      	str	r2, [sp, #4]
 8002290:	9a01      	ldr	r2, [sp, #4]
 8002292:	2a01      	cmp	r2, #1
 8002294:	d005      	beq.n	80022a2 <SystemInit+0x96>
 8002296:	4b17      	ldr	r3, [pc, #92]	; (80022f4 <SystemInit+0xe8>)
 8002298:	f04f 6200 	mov.w	r2, #134217728	; 0x8000000
 800229c:	609a      	str	r2, [r3, #8]
 800229e:	b002      	add	sp, #8
 80022a0:	4770      	bx	lr
 80022a2:	4a18      	ldr	r2, [pc, #96]	; (8002304 <SystemInit+0xf8>)
 80022a4:	2112      	movs	r1, #18
 80022a6:	6011      	str	r1, [r2, #0]
 80022a8:	685a      	ldr	r2, [r3, #4]
 80022aa:	605a      	str	r2, [r3, #4]
 80022ac:	685a      	ldr	r2, [r3, #4]
 80022ae:	605a      	str	r2, [r3, #4]
 80022b0:	685a      	ldr	r2, [r3, #4]
 80022b2:	f442 6280 	orr.w	r2, r2, #1024	; 0x400
 80022b6:	605a      	str	r2, [r3, #4]
 80022b8:	685a      	ldr	r2, [r3, #4]
 80022ba:	f422 127c 	bic.w	r2, r2, #4128768	; 0x3f0000
 80022be:	605a      	str	r2, [r3, #4]
 80022c0:	685a      	ldr	r2, [r3, #4]
 80022c2:	f442 12e8 	orr.w	r2, r2, #1900544	; 0x1d0000
 80022c6:	605a      	str	r2, [r3, #4]
 80022c8:	681a      	ldr	r2, [r3, #0]
 80022ca:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
 80022ce:	601a      	str	r2, [r3, #0]
 80022d0:	6819      	ldr	r1, [r3, #0]
 80022d2:	4a09      	ldr	r2, [pc, #36]	; (80022f8 <SystemInit+0xec>)
 80022d4:	0189      	lsls	r1, r1, #6
 80022d6:	d5fb      	bpl.n	80022d0 <SystemInit+0xc4>
 80022d8:	6851      	ldr	r1, [r2, #4]
 80022da:	f021 0103 	bic.w	r1, r1, #3
 80022de:	6051      	str	r1, [r2, #4]
 80022e0:	6851      	ldr	r1, [r2, #4]
 80022e2:	f041 0102 	orr.w	r1, r1, #2
 80022e6:	6051      	str	r1, [r2, #4]
 80022e8:	685a      	ldr	r2, [r3, #4]
 80022ea:	f002 020c 	and.w	r2, r2, #12
 80022ee:	2a08      	cmp	r2, #8
 80022f0:	d1fa      	bne.n	80022e8 <SystemInit+0xdc>
 80022f2:	e7d0      	b.n	8002296 <SystemInit+0x8a>
 80022f4:	e000ed00 	.word	0xe000ed00
 80022f8:	40021000 	.word	0x40021000
 80022fc:	f87fc00c 	.word	0xf87fc00c
 8002300:	ff00fccc 	.word	0xff00fccc
 8002304:	40022000 	.word	0x40022000

08002308 <sys_tick_init>:
 8002308:	4b05      	ldr	r3, [pc, #20]	; (8002320 <sys_tick_init+0x18>)
 800230a:	4a06      	ldr	r2, [pc, #24]	; (8002324 <sys_tick_init+0x1c>)
 800230c:	605a      	str	r2, [r3, #4]
 800230e:	4a06      	ldr	r2, [pc, #24]	; (8002328 <sys_tick_init+0x20>)
 8002310:	21f0      	movs	r1, #240	; 0xf0
 8002312:	f882 1023 	strb.w	r1, [r2, #35]	; 0x23
 8002316:	2200      	movs	r2, #0
 8002318:	609a      	str	r2, [r3, #8]
 800231a:	2207      	movs	r2, #7
 800231c:	601a      	str	r2, [r3, #0]
 800231e:	4770      	bx	lr
 8002320:	e000e010 	.word	0xe000e010
 8002324:	00029040 	.word	0x00029040
 8002328:	e000ed00 	.word	0xe000ed00

0800232c <sleep>:
 800232c:	bf30      	wfi
 800232e:	4770      	bx	lr

08002330 <sytem_clock_init>:
 8002330:	f7ff bf6c 	b.w	800220c <SystemInit>

08002334 <pwm_set>:
 8002334:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8002338:	b086      	sub	sp, #24
 800233a:	2370      	movs	r3, #112	; 0x70
 800233c:	9301      	str	r3, [sp, #4]
 800233e:	2301      	movs	r3, #1
 8002340:	f8ad 3008 	strh.w	r3, [sp, #8]
 8002344:	2304      	movs	r3, #4
 8002346:	f8ad 300a 	strh.w	r3, [sp, #10]
 800234a:	f8df 8064 	ldr.w	r8, [pc, #100]	; 80023b0 <pwm_set+0x7c>
 800234e:	4c17      	ldr	r4, [pc, #92]	; (80023ac <pwm_set+0x78>)
 8002350:	2302      	movs	r3, #2
 8002352:	f8ad 3010 	strh.w	r3, [sp, #16]
 8002356:	2300      	movs	r3, #0
 8002358:	f8ad 3012 	strh.w	r3, [sp, #18]
 800235c:	f8ad 3016 	strh.w	r3, [sp, #22]
 8002360:	f242 7710 	movw	r7, #10000	; 0x2710
 8002364:	f8d8 3000 	ldr.w	r3, [r8]
 8002368:	fbb3 f3f7 	udiv	r3, r3, r7
 800236c:	3b02      	subs	r3, #2
 800236e:	f44f 7280 	mov.w	r2, #256	; 0x100
 8002372:	460e      	mov	r6, r1
 8002374:	2564      	movs	r5, #100	; 0x64
 8002376:	a901      	add	r1, sp, #4
 8002378:	4358      	muls	r0, r3
 800237a:	fbb0 f3f5 	udiv	r3, r0, r5
 800237e:	4620      	mov	r0, r4
 8002380:	f8ad 2014 	strh.w	r2, [sp, #20]
 8002384:	9303      	str	r3, [sp, #12]
 8002386:	f7ff fb93 	bl	8001ab0 <TIM_OC1Init>
 800238a:	f8d8 1000 	ldr.w	r1, [r8]
 800238e:	fbb1 f1f7 	udiv	r1, r1, r7
 8002392:	3902      	subs	r1, #2
 8002394:	4371      	muls	r1, r6
 8002396:	4620      	mov	r0, r4
 8002398:	fbb1 f1f5 	udiv	r1, r1, r5
 800239c:	9103      	str	r1, [sp, #12]
 800239e:	a901      	add	r1, sp, #4
 80023a0:	f7ff fbcc 	bl	8001b3c <TIM_OC2Init>
 80023a4:	b006      	add	sp, #24
 80023a6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80023aa:	bf00      	nop
 80023ac:	40012c00 	.word	0x40012c00
 80023b0:	200000d0 	.word	0x200000d0

080023b4 <pwm_init>:
 80023b4:	b530      	push	{r4, r5, lr}
 80023b6:	f44f 6000 	mov.w	r0, #2048	; 0x800
 80023ba:	b087      	sub	sp, #28
 80023bc:	2101      	movs	r1, #1
 80023be:	f7ff fafd 	bl	80019bc <RCC_APB2PeriphClockCmd>
 80023c2:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 80023c6:	2101      	movs	r1, #1
 80023c8:	f7ff faea 	bl	80019a0 <RCC_AHBPeriphClockCmd>
 80023cc:	4c1d      	ldr	r4, [pc, #116]	; (8002444 <pwm_init+0x90>)
 80023ce:	4d1e      	ldr	r5, [pc, #120]	; (8002448 <pwm_init+0x94>)
 80023d0:	f44f 43c0 	mov.w	r3, #24576	; 0x6000
 80023d4:	9301      	str	r3, [sp, #4]
 80023d6:	2302      	movs	r3, #2
 80023d8:	f88d 3008 	strb.w	r3, [sp, #8]
 80023dc:	4620      	mov	r0, r4
 80023de:	2303      	movs	r3, #3
 80023e0:	a901      	add	r1, sp, #4
 80023e2:	f88d 3009 	strb.w	r3, [sp, #9]
 80023e6:	f000 f8ee 	bl	80025c6 <GPIO_Init>
 80023ea:	4620      	mov	r0, r4
 80023ec:	210d      	movs	r1, #13
 80023ee:	2206      	movs	r2, #6
 80023f0:	f000 f933 	bl	800265a <GPIO_PinAFConfig>
 80023f4:	4620      	mov	r0, r4
 80023f6:	210e      	movs	r1, #14
 80023f8:	2206      	movs	r2, #6
 80023fa:	f000 f92e 	bl	800265a <GPIO_PinAFConfig>
 80023fe:	4b13      	ldr	r3, [pc, #76]	; (800244c <pwm_init+0x98>)
 8002400:	2400      	movs	r4, #0
 8002402:	f242 7210 	movw	r2, #10000	; 0x2710
 8002406:	4628      	mov	r0, r5
 8002408:	a903      	add	r1, sp, #12
 800240a:	681b      	ldr	r3, [r3, #0]
 800240c:	fbb3 f3f2 	udiv	r3, r3, r2
 8002410:	3b01      	subs	r3, #1
 8002412:	9304      	str	r3, [sp, #16]
 8002414:	f8ad 400c 	strh.w	r4, [sp, #12]
 8002418:	f8ad 400e 	strh.w	r4, [sp, #14]
 800241c:	f8ad 4014 	strh.w	r4, [sp, #20]
 8002420:	f8ad 4016 	strh.w	r4, [sp, #22]
 8002424:	f7ff fae6 	bl	80019f4 <TIM_TimeBaseInit>
 8002428:	4620      	mov	r0, r4
 800242a:	4621      	mov	r1, r4
 800242c:	f7ff ff82 	bl	8002334 <pwm_set>
 8002430:	4628      	mov	r0, r5
 8002432:	2101      	movs	r1, #1
 8002434:	f7ff fb2e 	bl	8001a94 <TIM_Cmd>
 8002438:	4628      	mov	r0, r5
 800243a:	2101      	movs	r1, #1
 800243c:	f7ff fbbc 	bl	8001bb8 <TIM_CtrlPWMOutputs>
 8002440:	b007      	add	sp, #28
 8002442:	bd30      	pop	{r4, r5, pc}
 8002444:	48000400 	.word	0x48000400
 8002448:	40012c00 	.word	0x40012c00
 800244c:	200000d0 	.word	0x200000d0

08002450 <drv8834_run>:
 8002450:	1e02      	subs	r2, r0, #0
 8002452:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8002456:	bfd5      	itete	le
 8002458:	4252      	negle	r2, r2
 800245a:	8d03      	ldrhgt	r3, [r0, #40]	; 0x28
 800245c:	6983      	ldrle	r3, [r0, #24]
 800245e:	ea6f 4343 	mvngt.w	r3, r3, lsl #17
 8002462:	bfc5      	ittet	gt
 8002464:	ea6f 4353 	mvngt.w	r3, r3, lsr #17
 8002468:	b29b      	uxthgt	r3, r3
 800246a:	f443 4300 	orrle.w	r3, r3, #32768	; 0x8000
 800246e:	8503      	strhgt	r3, [r0, #40]	; 0x28
 8002470:	bfd8      	it	le
 8002472:	6183      	strle	r3, [r0, #24]
 8002474:	480d      	ldr	r0, [pc, #52]	; (80024ac <drv8834_run+0x5c>)
 8002476:	bfd8      	it	le
 8002478:	b212      	sxthle	r2, r2
 800247a:	2900      	cmp	r1, #0
 800247c:	bfcd      	iteet	gt
 800247e:	8d03      	ldrhgt	r3, [r0, #40]	; 0x28
 8002480:	6983      	ldrle	r3, [r0, #24]
 8002482:	4249      	negle	r1, r1
 8002484:	b29b      	uxthgt	r3, r3
 8002486:	bfd5      	itete	le
 8002488:	b209      	sxthle	r1, r1
 800248a:	f043 0320 	orrgt.w	r3, r3, #32
 800248e:	f043 0320 	orrle.w	r3, r3, #32
 8002492:	8503      	strhgt	r3, [r0, #40]	; 0x28
 8002494:	bfd8      	it	le
 8002496:	6183      	strle	r3, [r0, #24]
 8002498:	2964      	cmp	r1, #100	; 0x64
 800249a:	bfa8      	it	ge
 800249c:	2164      	movge	r1, #100	; 0x64
 800249e:	2a64      	cmp	r2, #100	; 0x64
 80024a0:	bfa8      	it	ge
 80024a2:	2264      	movge	r2, #100	; 0x64
 80024a4:	4608      	mov	r0, r1
 80024a6:	4611      	mov	r1, r2
 80024a8:	f7ff bf44 	b.w	8002334 <pwm_set>
 80024ac:	48000400 	.word	0x48000400

080024b0 <drv8834_init>:
 80024b0:	e92d 41f3 	stmdb	sp!, {r0, r1, r4, r5, r6, r7, r8, lr}
 80024b4:	4f1d      	ldr	r7, [pc, #116]	; (800252c <drv8834_init+0x7c>)
 80024b6:	2400      	movs	r4, #0
 80024b8:	2601      	movs	r6, #1
 80024ba:	2503      	movs	r5, #3
 80024bc:	f04f 0810 	mov.w	r8, #16
 80024c0:	4638      	mov	r0, r7
 80024c2:	4669      	mov	r1, sp
 80024c4:	f8cd 8000 	str.w	r8, [sp]
 80024c8:	f88d 6004 	strb.w	r6, [sp, #4]
 80024cc:	f88d 4006 	strb.w	r4, [sp, #6]
 80024d0:	f88d 5005 	strb.w	r5, [sp, #5]
 80024d4:	f88d 4007 	strb.w	r4, [sp, #7]
 80024d8:	f000 f875 	bl	80025c6 <GPIO_Init>
 80024dc:	f8a7 8028 	strh.w	r8, [r7, #40]	; 0x28
 80024e0:	2320      	movs	r3, #32
 80024e2:	4638      	mov	r0, r7
 80024e4:	4669      	mov	r1, sp
 80024e6:	9300      	str	r3, [sp, #0]
 80024e8:	f88d 6004 	strb.w	r6, [sp, #4]
 80024ec:	f88d 4006 	strb.w	r4, [sp, #6]
 80024f0:	f88d 5005 	strb.w	r5, [sp, #5]
 80024f4:	f88d 4007 	strb.w	r4, [sp, #7]
 80024f8:	f000 f865 	bl	80025c6 <GPIO_Init>
 80024fc:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8002500:	4669      	mov	r1, sp
 8002502:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8002506:	9300      	str	r3, [sp, #0]
 8002508:	f88d 6004 	strb.w	r6, [sp, #4]
 800250c:	f88d 4006 	strb.w	r4, [sp, #6]
 8002510:	f88d 5005 	strb.w	r5, [sp, #5]
 8002514:	f88d 4007 	strb.w	r4, [sp, #7]
 8002518:	f000 f855 	bl	80025c6 <GPIO_Init>
 800251c:	4620      	mov	r0, r4
 800251e:	4621      	mov	r1, r4
 8002520:	f7ff ff96 	bl	8002450 <drv8834_run>
 8002524:	b002      	add	sp, #8
 8002526:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800252a:	bf00      	nop
 800252c:	48000400 	.word	0x48000400

08002530 <NVIC_Init>:
 8002530:	b510      	push	{r4, lr}
 8002532:	bf00      	nop
 8002534:	bf00      	nop
 8002536:	bf00      	nop
 8002538:	78c2      	ldrb	r2, [r0, #3]
 800253a:	7803      	ldrb	r3, [r0, #0]
 800253c:	b312      	cbz	r2, 8002584 <NVIC_Init+0x54>
 800253e:	4a17      	ldr	r2, [pc, #92]	; (800259c <NVIC_Init+0x6c>)
 8002540:	68d1      	ldr	r1, [r2, #12]
 8002542:	7842      	ldrb	r2, [r0, #1]
 8002544:	43c9      	mvns	r1, r1
 8002546:	f3c1 2102 	ubfx	r1, r1, #8, #3
 800254a:	f1c1 0404 	rsb	r4, r1, #4
 800254e:	b2e4      	uxtb	r4, r4
 8002550:	40a2      	lsls	r2, r4
 8002552:	b2d4      	uxtb	r4, r2
 8002554:	220f      	movs	r2, #15
 8002556:	410a      	asrs	r2, r1
 8002558:	7881      	ldrb	r1, [r0, #2]
 800255a:	400a      	ands	r2, r1
 800255c:	4322      	orrs	r2, r4
 800255e:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
 8002562:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
 8002566:	0112      	lsls	r2, r2, #4
 8002568:	b2d2      	uxtb	r2, r2
 800256a:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
 800256e:	7803      	ldrb	r3, [r0, #0]
 8002570:	2201      	movs	r2, #1
 8002572:	0959      	lsrs	r1, r3, #5
 8002574:	f003 031f 	and.w	r3, r3, #31
 8002578:	fa02 f303 	lsl.w	r3, r2, r3
 800257c:	4a08      	ldr	r2, [pc, #32]	; (80025a0 <NVIC_Init+0x70>)
 800257e:	f842 3021 	str.w	r3, [r2, r1, lsl #2]
 8002582:	bd10      	pop	{r4, pc}
 8002584:	095a      	lsrs	r2, r3, #5
 8002586:	2101      	movs	r1, #1
 8002588:	f003 031f 	and.w	r3, r3, #31
 800258c:	4099      	lsls	r1, r3
 800258e:	f102 0320 	add.w	r3, r2, #32
 8002592:	4a03      	ldr	r2, [pc, #12]	; (80025a0 <NVIC_Init+0x70>)
 8002594:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
 8002598:	bd10      	pop	{r4, pc}
 800259a:	bf00      	nop
 800259c:	e000ed00 	.word	0xe000ed00
 80025a0:	e000e100 	.word	0xe000e100

080025a4 <lib_low_level_init>:
 80025a4:	b508      	push	{r3, lr}
 80025a6:	f7ff fec3 	bl	8002330 <sytem_clock_init>
 80025aa:	f000 f86b 	bl	8002684 <gpio_init>
 80025ae:	f7ff fc91 	bl	8001ed4 <uart_init>
 80025b2:	f7ff fb11 	bl	8001bd8 <timer_init>
 80025b6:	f7ff fefd 	bl	80023b4 <pwm_init>
 80025ba:	f7ff ff79 	bl	80024b0 <drv8834_init>
 80025be:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80025c2:	f7ff bd67 	b.w	8002094 <i2c_0_init>

080025c6 <GPIO_Init>:
 80025c6:	b5f0      	push	{r4, r5, r6, r7, lr}
 80025c8:	bf00      	nop
 80025ca:	bf00      	nop
 80025cc:	bf00      	nop
 80025ce:	bf00      	nop
 80025d0:	2300      	movs	r3, #0
 80025d2:	680e      	ldr	r6, [r1, #0]
 80025d4:	461c      	mov	r4, r3
 80025d6:	2501      	movs	r5, #1
 80025d8:	40a5      	lsls	r5, r4
 80025da:	ea05 0e06 	and.w	lr, r5, r6
 80025de:	45ae      	cmp	lr, r5
 80025e0:	d12d      	bne.n	800263e <GPIO_Init+0x78>
 80025e2:	790f      	ldrb	r7, [r1, #4]
 80025e4:	1e7a      	subs	r2, r7, #1
 80025e6:	2a01      	cmp	r2, #1
 80025e8:	d817      	bhi.n	800261a <GPIO_Init+0x54>
 80025ea:	bf00      	nop
 80025ec:	2203      	movs	r2, #3
 80025ee:	6885      	ldr	r5, [r0, #8]
 80025f0:	409a      	lsls	r2, r3
 80025f2:	ea25 0202 	bic.w	r2, r5, r2
 80025f6:	6082      	str	r2, [r0, #8]
 80025f8:	794d      	ldrb	r5, [r1, #5]
 80025fa:	6882      	ldr	r2, [r0, #8]
 80025fc:	409d      	lsls	r5, r3
 80025fe:	4315      	orrs	r5, r2
 8002600:	6085      	str	r5, [r0, #8]
 8002602:	bf00      	nop
 8002604:	8882      	ldrh	r2, [r0, #4]
 8002606:	b292      	uxth	r2, r2
 8002608:	ea22 020e 	bic.w	r2, r2, lr
 800260c:	8082      	strh	r2, [r0, #4]
 800260e:	798a      	ldrb	r2, [r1, #6]
 8002610:	8885      	ldrh	r5, [r0, #4]
 8002612:	40a2      	lsls	r2, r4
 8002614:	432a      	orrs	r2, r5
 8002616:	b292      	uxth	r2, r2
 8002618:	8082      	strh	r2, [r0, #4]
 800261a:	2203      	movs	r2, #3
 800261c:	6805      	ldr	r5, [r0, #0]
 800261e:	409a      	lsls	r2, r3
 8002620:	43d2      	mvns	r2, r2
 8002622:	4015      	ands	r5, r2
 8002624:	6005      	str	r5, [r0, #0]
 8002626:	6805      	ldr	r5, [r0, #0]
 8002628:	409f      	lsls	r7, r3
 800262a:	432f      	orrs	r7, r5
 800262c:	6007      	str	r7, [r0, #0]
 800262e:	68c7      	ldr	r7, [r0, #12]
 8002630:	4017      	ands	r7, r2
 8002632:	79ca      	ldrb	r2, [r1, #7]
 8002634:	fa02 f503 	lsl.w	r5, r2, r3
 8002638:	ea47 0205 	orr.w	r2, r7, r5
 800263c:	60c2      	str	r2, [r0, #12]
 800263e:	3401      	adds	r4, #1
 8002640:	2c10      	cmp	r4, #16
 8002642:	f103 0302 	add.w	r3, r3, #2
 8002646:	d1c6      	bne.n	80025d6 <GPIO_Init+0x10>
 8002648:	bdf0      	pop	{r4, r5, r6, r7, pc}

0800264a <GPIO_SetBits>:
 800264a:	bf00      	nop
 800264c:	bf00      	nop
 800264e:	6181      	str	r1, [r0, #24]
 8002650:	4770      	bx	lr

08002652 <GPIO_ResetBits>:
 8002652:	bf00      	nop
 8002654:	bf00      	nop
 8002656:	8501      	strh	r1, [r0, #40]	; 0x28
 8002658:	4770      	bx	lr

0800265a <GPIO_PinAFConfig>:
 800265a:	b510      	push	{r4, lr}
 800265c:	bf00      	nop
 800265e:	bf00      	nop
 8002660:	bf00      	nop
 8002662:	f001 0307 	and.w	r3, r1, #7
 8002666:	08c9      	lsrs	r1, r1, #3
 8002668:	eb00 0081 	add.w	r0, r0, r1, lsl #2
 800266c:	009b      	lsls	r3, r3, #2
 800266e:	6a04      	ldr	r4, [r0, #32]
 8002670:	210f      	movs	r1, #15
 8002672:	4099      	lsls	r1, r3
 8002674:	ea24 0101 	bic.w	r1, r4, r1
 8002678:	6201      	str	r1, [r0, #32]
 800267a:	6a01      	ldr	r1, [r0, #32]
 800267c:	409a      	lsls	r2, r3
 800267e:	430a      	orrs	r2, r1
 8002680:	6202      	str	r2, [r0, #32]
 8002682:	bd10      	pop	{r4, pc}

08002684 <gpio_init>:
 8002684:	e92d 41f3 	stmdb	sp!, {r0, r1, r4, r5, r6, r7, r8, lr}
 8002688:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 800268c:	2101      	movs	r1, #1
 800268e:	f7ff f987 	bl	80019a0 <RCC_AHBPeriphClockCmd>
 8002692:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 8002696:	2101      	movs	r1, #1
 8002698:	f7ff f982 	bl	80019a0 <RCC_AHBPeriphClockCmd>
 800269c:	f44f 2000 	mov.w	r0, #524288	; 0x80000
 80026a0:	2101      	movs	r1, #1
 80026a2:	f7ff f97d 	bl	80019a0 <RCC_AHBPeriphClockCmd>
 80026a6:	2400      	movs	r4, #0
 80026a8:	2603      	movs	r6, #3
 80026aa:	f44f 4500 	mov.w	r5, #32768	; 0x8000
 80026ae:	f04f 0801 	mov.w	r8, #1
 80026b2:	4669      	mov	r1, sp
 80026b4:	481a      	ldr	r0, [pc, #104]	; (8002720 <gpio_init+0x9c>)
 80026b6:	9500      	str	r5, [sp, #0]
 80026b8:	f88d 8004 	strb.w	r8, [sp, #4]
 80026bc:	f88d 4006 	strb.w	r4, [sp, #6]
 80026c0:	f88d 6005 	strb.w	r6, [sp, #5]
 80026c4:	f88d 4007 	strb.w	r4, [sp, #7]
 80026c8:	f7ff ff7d 	bl	80025c6 <GPIO_Init>
 80026cc:	f44f 7300 	mov.w	r3, #512	; 0x200
 80026d0:	4669      	mov	r1, sp
 80026d2:	4813      	ldr	r0, [pc, #76]	; (8002720 <gpio_init+0x9c>)
 80026d4:	9300      	str	r3, [sp, #0]
 80026d6:	4f13      	ldr	r7, [pc, #76]	; (8002724 <gpio_init+0xa0>)
 80026d8:	f88d 4004 	strb.w	r4, [sp, #4]
 80026dc:	f88d 6005 	strb.w	r6, [sp, #5]
 80026e0:	f88d 4007 	strb.w	r4, [sp, #7]
 80026e4:	f7ff ff6f 	bl	80025c6 <GPIO_Init>
 80026e8:	f44f 6380 	mov.w	r3, #1024	; 0x400
 80026ec:	9300      	str	r3, [sp, #0]
 80026ee:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80026f2:	2302      	movs	r3, #2
 80026f4:	4669      	mov	r1, sp
 80026f6:	f88d 3007 	strb.w	r3, [sp, #7]
 80026fa:	603c      	str	r4, [r7, #0]
 80026fc:	f88d 4004 	strb.w	r4, [sp, #4]
 8002700:	f88d 6005 	strb.w	r6, [sp, #5]
 8002704:	f7ff ff5f 	bl	80025c6 <GPIO_Init>
 8002708:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 800270c:	8a1b      	ldrh	r3, [r3, #16]
 800270e:	055b      	lsls	r3, r3, #21
 8002710:	4b03      	ldr	r3, [pc, #12]	; (8002720 <gpio_init+0x9c>)
 8002712:	bf48      	it	mi
 8002714:	f8c7 8000 	strmi.w	r8, [r7]
 8002718:	619d      	str	r5, [r3, #24]
 800271a:	b002      	add	sp, #8
 800271c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8002720:	48000400 	.word	0x48000400
 8002724:	200011a8 	.word	0x200011a8

08002728 <led_on>:
 8002728:	0403      	lsls	r3, r0, #16
 800272a:	bf42      	ittt	mi
 800272c:	4b02      	ldrmi	r3, [pc, #8]	; (8002738 <led_on+0x10>)
 800272e:	f44f 4200 	movmi.w	r2, #32768	; 0x8000
 8002732:	619a      	strmi	r2, [r3, #24]
 8002734:	4770      	bx	lr
 8002736:	bf00      	nop
 8002738:	48000400 	.word	0x48000400

0800273c <led_off>:
 800273c:	0403      	lsls	r3, r0, #16
 800273e:	bf42      	ittt	mi
 8002740:	4b02      	ldrmi	r3, [pc, #8]	; (800274c <led_off+0x10>)
 8002742:	f44f 4200 	movmi.w	r2, #32768	; 0x8000
 8002746:	851a      	strhmi	r2, [r3, #40]	; 0x28
 8002748:	4770      	bx	lr
 800274a:	bf00      	nop
 800274c:	48000400 	.word	0x48000400

08002750 <get_key>:
 8002750:	4b02      	ldr	r3, [pc, #8]	; (800275c <get_key+0xc>)
 8002752:	8a18      	ldrh	r0, [r3, #16]
 8002754:	43c0      	mvns	r0, r0
 8002756:	f400 7000 	and.w	r0, r0, #512	; 0x200
 800275a:	4770      	bx	lr
 800275c:	48000400 	.word	0x48000400

08002760 <Default_Handler>:
 8002760:	4668      	mov	r0, sp
 8002762:	f020 0107 	bic.w	r1, r0, #7
 8002766:	468d      	mov	sp, r1
 8002768:	bf00      	nop
 800276a:	e7fd      	b.n	8002768 <Default_Handler+0x8>

0800276c <HardFault_Handler>:
 800276c:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8002770:	f7ff ffda 	bl	8002728 <led_on>
 8002774:	4b06      	ldr	r3, [pc, #24]	; (8002790 <HardFault_Handler+0x24>)
 8002776:	3b01      	subs	r3, #1
 8002778:	d001      	beq.n	800277e <HardFault_Handler+0x12>
 800277a:	bf00      	nop
 800277c:	e7fb      	b.n	8002776 <HardFault_Handler+0xa>
 800277e:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8002782:	f7ff ffdb 	bl	800273c <led_off>
 8002786:	4b02      	ldr	r3, [pc, #8]	; (8002790 <HardFault_Handler+0x24>)
 8002788:	3b01      	subs	r3, #1
 800278a:	d0ef      	beq.n	800276c <HardFault_Handler>
 800278c:	bf00      	nop
 800278e:	e7fb      	b.n	8002788 <HardFault_Handler+0x1c>
 8002790:	00989681 	.word	0x00989681

08002794 <_reset_init>:
 8002794:	490e      	ldr	r1, [pc, #56]	; (80027d0 <_reset_init+0x3c>)
 8002796:	4b0f      	ldr	r3, [pc, #60]	; (80027d4 <_reset_init+0x40>)
 8002798:	1a5b      	subs	r3, r3, r1
 800279a:	109b      	asrs	r3, r3, #2
 800279c:	2200      	movs	r2, #0
 800279e:	429a      	cmp	r2, r3
 80027a0:	d006      	beq.n	80027b0 <_reset_init+0x1c>
 80027a2:	480d      	ldr	r0, [pc, #52]	; (80027d8 <_reset_init+0x44>)
 80027a4:	f850 0022 	ldr.w	r0, [r0, r2, lsl #2]
 80027a8:	f841 0022 	str.w	r0, [r1, r2, lsl #2]
 80027ac:	3201      	adds	r2, #1
 80027ae:	e7f6      	b.n	800279e <_reset_init+0xa>
 80027b0:	4a0a      	ldr	r2, [pc, #40]	; (80027dc <_reset_init+0x48>)
 80027b2:	f8d2 3088 	ldr.w	r3, [r2, #136]	; 0x88
 80027b6:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
 80027ba:	f8c2 3088 	str.w	r3, [r2, #136]	; 0x88
 80027be:	f502 720c 	add.w	r2, r2, #560	; 0x230
 80027c2:	6853      	ldr	r3, [r2, #4]
 80027c4:	f023 4340 	bic.w	r3, r3, #3221225472	; 0xc0000000
 80027c8:	6053      	str	r3, [r2, #4]
 80027ca:	f7fe bf5f 	b.w	800168c <main>
 80027ce:	bf00      	nop
 80027d0:	20000000 	.word	0x20000000
 80027d4:	20000504 	.word	0x20000504
 80027d8:	08004340 	.word	0x08004340
 80027dc:	e000ed00 	.word	0xe000ed00

080027e0 <selfrel_offset31>:
 80027e0:	e5903000 	ldr	r3, [r0]
 80027e4:	e3130101 	tst	r3, #1073741824	; 0x40000000
 80027e8:	13833102 	orrne	r3, r3, #-2147483648	; 0x80000000
 80027ec:	03c33102 	biceq	r3, r3, #-2147483648	; 0x80000000
 80027f0:	e0800003 	add	r0, r0, r3
 80027f4:	e12fff1e 	bx	lr

080027f8 <search_EIT_table>:
 80027f8:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80027fc:	e3510000 	cmp	r1, #0
 8002800:	e24dd00c 	sub	sp, sp, #12
 8002804:	0a000029 	beq	80028b0 <search_EIT_table+0xb8>
 8002808:	e2413001 	sub	r3, r1, #1
 800280c:	e1a07002 	mov	r7, r2
 8002810:	e1a05000 	mov	r5, r0
 8002814:	e1a08003 	mov	r8, r3
 8002818:	e3a06000 	mov	r6, #0
 800281c:	e58d3004 	str	r3, [sp, #4]
 8002820:	e0864008 	add	r4, r6, r8
 8002824:	e0844fa4 	add	r4, r4, r4, lsr #31
 8002828:	e1a040c4 	asr	r4, r4, #1
 800282c:	e1a0a184 	lsl	sl, r4, #3
 8002830:	e085b00a 	add	fp, r5, sl
 8002834:	e1a0000b 	mov	r0, fp
 8002838:	ebffffe8 	bl	80027e0 <selfrel_offset31>
 800283c:	e59d3004 	ldr	r3, [sp, #4]
 8002840:	e1a09000 	mov	r9, r0
 8002844:	e1530004 	cmp	r3, r4
 8002848:	e28a0008 	add	r0, sl, #8
 800284c:	e0850000 	add	r0, r5, r0
 8002850:	0a00000b 	beq	8002884 <search_EIT_table+0x8c>
 8002854:	ebffffe1 	bl	80027e0 <selfrel_offset31>
 8002858:	e1590007 	cmp	r9, r7
 800285c:	e2400001 	sub	r0, r0, #1
 8002860:	9a000003 	bls	8002874 <search_EIT_table+0x7c>
 8002864:	e1540006 	cmp	r4, r6
 8002868:	0a00000b 	beq	800289c <search_EIT_table+0xa4>
 800286c:	e2448001 	sub	r8, r4, #1
 8002870:	eaffffea 	b	8002820 <search_EIT_table+0x28>
 8002874:	e1500007 	cmp	r0, r7
 8002878:	2a000003 	bcs	800288c <search_EIT_table+0x94>
 800287c:	e2846001 	add	r6, r4, #1
 8002880:	eaffffe6 	b	8002820 <search_EIT_table+0x28>
 8002884:	e1590007 	cmp	r9, r7
 8002888:	8afffff5 	bhi	8002864 <search_EIT_table+0x6c>
 800288c:	e1a0000b 	mov	r0, fp
 8002890:	e28dd00c 	add	sp, sp, #12
 8002894:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8002898:	e12fff1e 	bx	lr
 800289c:	e3a0b000 	mov	fp, #0
 80028a0:	e1a0000b 	mov	r0, fp
 80028a4:	e28dd00c 	add	sp, sp, #12
 80028a8:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80028ac:	e12fff1e 	bx	lr
 80028b0:	e1a0b001 	mov	fp, r1
 80028b4:	e1a0000b 	mov	r0, fp
 80028b8:	e28dd00c 	add	sp, sp, #12
 80028bc:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80028c0:	e12fff1e 	bx	lr

080028c4 <__gnu_unwind_get_pr_addr>:
 80028c4:	e3500001 	cmp	r0, #1
 80028c8:	0a000006 	beq	80028e8 <__gnu_unwind_get_pr_addr+0x24>
 80028cc:	e3500002 	cmp	r0, #2
 80028d0:	0a000006 	beq	80028f0 <__gnu_unwind_get_pr_addr+0x2c>
 80028d4:	e59f301c 	ldr	r3, [pc, #28]	; 80028f8 <__gnu_unwind_get_pr_addr+0x34>
 80028d8:	e3500000 	cmp	r0, #0
 80028dc:	01a00003 	moveq	r0, r3
 80028e0:	13a00000 	movne	r0, #0
 80028e4:	e12fff1e 	bx	lr
 80028e8:	e59f000c 	ldr	r0, [pc, #12]	; 80028fc <__gnu_unwind_get_pr_addr+0x38>
 80028ec:	e12fff1e 	bx	lr
 80028f0:	e59f0008 	ldr	r0, [pc, #8]	; 8002900 <__gnu_unwind_get_pr_addr+0x3c>
 80028f4:	e12fff1e 	bx	lr
 80028f8:	0800346c 	.word	0x0800346c
 80028fc:	08003474 	.word	0x08003474
 8002900:	0800347c 	.word	0x0800347c

08002904 <get_eit_entry>:
 8002904:	e92d4030 	push	{r4, r5, lr}
 8002908:	e59f3118 	ldr	r3, [pc, #280]	; 8002a28 <get_eit_entry+0x124>
 800290c:	e3530000 	cmp	r3, #0
 8002910:	e24dd00c 	sub	sp, sp, #12
 8002914:	e1a04000 	mov	r4, r0
 8002918:	e2415002 	sub	r5, r1, #2
 800291c:	0a00002d 	beq	80029d8 <get_eit_entry+0xd4>
 8002920:	e1a00005 	mov	r0, r5
 8002924:	e28d1004 	add	r1, sp, #4
 8002928:	e320f000 	nop	{0}
 800292c:	e3500000 	cmp	r0, #0
 8002930:	0a000021 	beq	80029bc <get_eit_entry+0xb8>
 8002934:	e59d1004 	ldr	r1, [sp, #4]
 8002938:	e1a02005 	mov	r2, r5
 800293c:	ebffffad 	bl	80027f8 <search_EIT_table>
 8002940:	e2505000 	subs	r5, r0, #0
 8002944:	0a00001c 	beq	80029bc <get_eit_entry+0xb8>
 8002948:	ebffffa4 	bl	80027e0 <selfrel_offset31>
 800294c:	e5953004 	ldr	r3, [r5, #4]
 8002950:	e3530001 	cmp	r3, #1
 8002954:	e5840048 	str	r0, [r4, #72]	; 0x48
 8002958:	0a000010 	beq	80029a0 <get_eit_entry+0x9c>
 800295c:	e3530000 	cmp	r3, #0
 8002960:	ba000023 	blt	80029f4 <get_eit_entry+0xf0>
 8002964:	e2850004 	add	r0, r5, #4
 8002968:	ebffff9c 	bl	80027e0 <selfrel_offset31>
 800296c:	e3a03000 	mov	r3, #0
 8002970:	e584004c 	str	r0, [r4, #76]	; 0x4c
 8002974:	e5843050 	str	r3, [r4, #80]	; 0x50
 8002978:	e5903000 	ldr	r3, [r0]
 800297c:	e3530000 	cmp	r3, #0
 8002980:	ba000020 	blt	8002a08 <get_eit_entry+0x104>
 8002984:	ebffff95 	bl	80027e0 <selfrel_offset31>
 8002988:	e3a03000 	mov	r3, #0
 800298c:	e5840010 	str	r0, [r4, #16]
 8002990:	e1a00003 	mov	r0, r3
 8002994:	e28dd00c 	add	sp, sp, #12
 8002998:	e8bd4030 	pop	{r4, r5, lr}
 800299c:	e12fff1e 	bx	lr
 80029a0:	e3a03005 	mov	r3, #5
 80029a4:	e3a02000 	mov	r2, #0
 80029a8:	e1a00003 	mov	r0, r3
 80029ac:	e5842010 	str	r2, [r4, #16]
 80029b0:	e28dd00c 	add	sp, sp, #12
 80029b4:	e8bd4030 	pop	{r4, r5, lr}
 80029b8:	e12fff1e 	bx	lr
 80029bc:	e3a03009 	mov	r3, #9
 80029c0:	e3a02000 	mov	r2, #0
 80029c4:	e1a00003 	mov	r0, r3
 80029c8:	e5842010 	str	r2, [r4, #16]
 80029cc:	e28dd00c 	add	sp, sp, #12
 80029d0:	e8bd4030 	pop	{r4, r5, lr}
 80029d4:	e12fff1e 	bx	lr
 80029d8:	e59f104c 	ldr	r1, [pc, #76]	; 8002a2c <get_eit_entry+0x128>
 80029dc:	e59f304c 	ldr	r3, [pc, #76]	; 8002a30 <get_eit_entry+0x12c>
 80029e0:	e1a00001 	mov	r0, r1
 80029e4:	e0611003 	rsb	r1, r1, r3
 80029e8:	e1a011c1 	asr	r1, r1, #3
 80029ec:	e58d1004 	str	r1, [sp, #4]
 80029f0:	eaffffd0 	b	8002938 <get_eit_entry+0x34>
 80029f4:	e3a03001 	mov	r3, #1
 80029f8:	e2850004 	add	r0, r5, #4
 80029fc:	e584004c 	str	r0, [r4, #76]	; 0x4c
 8002a00:	e5843050 	str	r3, [r4, #80]	; 0x50
 8002a04:	eaffffdb 	b	8002978 <get_eit_entry+0x74>
 8002a08:	e1a00c23 	lsr	r0, r3, #24
 8002a0c:	e200000f 	and	r0, r0, #15
 8002a10:	ebffffab 	bl	80028c4 <__gnu_unwind_get_pr_addr>
 8002a14:	e3500000 	cmp	r0, #0
 8002a18:	e5840010 	str	r0, [r4, #16]
 8002a1c:	03a03009 	moveq	r3, #9
 8002a20:	13a03000 	movne	r3, #0
 8002a24:	eaffffd9 	b	8002990 <get_eit_entry+0x8c>
 8002a28:	00000000 	.word	0x00000000
 8002a2c:	08004278 	.word	0x08004278
 8002a30:	08004340 	.word	0x08004340

08002a34 <restore_non_core_regs>:
 8002a34:	e5903000 	ldr	r3, [r0]
 8002a38:	e3130001 	tst	r3, #1
 8002a3c:	e92d4010 	push	{r4, lr}
 8002a40:	e1a04000 	mov	r4, r0
 8002a44:	1a000004 	bne	8002a5c <restore_non_core_regs+0x28>
 8002a48:	e3130002 	tst	r3, #2
 8002a4c:	e2800048 	add	r0, r0, #72	; 0x48
 8002a50:	0a00000a 	beq	8002a80 <restore_non_core_regs+0x4c>
 8002a54:	eb0003a2 	bl	80038e4 <__gnu_Unwind_Restore_VFP_D>
 8002a58:	e5943000 	ldr	r3, [r4]
 8002a5c:	e3130004 	tst	r3, #4
 8002a60:	0a00000a 	beq	8002a90 <restore_non_core_regs+0x5c>
 8002a64:	e3130008 	tst	r3, #8
 8002a68:	0a00000d 	beq	8002aa4 <restore_non_core_regs+0x70>
 8002a6c:	e3130010 	tst	r3, #16
 8002a70:	02840e1d 	addeq	r0, r4, #464	; 0x1d0
 8002a74:	0b0003c4 	bleq	800398c <__gnu_Unwind_Restore_WMMXC>
 8002a78:	e8bd4010 	pop	{r4, lr}
 8002a7c:	e12fff1e 	bx	lr
 8002a80:	eb000393 	bl	80038d4 <__gnu_Unwind_Restore_VFP>
 8002a84:	e5943000 	ldr	r3, [r4]
 8002a88:	e3130004 	tst	r3, #4
 8002a8c:	1afffff4 	bne	8002a64 <restore_non_core_regs+0x30>
 8002a90:	e28400d0 	add	r0, r4, #208	; 0xd0
 8002a94:	eb000396 	bl	80038f4 <__gnu_Unwind_Restore_VFP_D_16_to_31>
 8002a98:	e5943000 	ldr	r3, [r4]
 8002a9c:	e3130008 	tst	r3, #8
 8002aa0:	1afffff1 	bne	8002a6c <restore_non_core_regs+0x38>
 8002aa4:	e2840e15 	add	r0, r4, #336	; 0x150
 8002aa8:	eb000395 	bl	8003904 <__gnu_Unwind_Restore_WMMXD>
 8002aac:	e5943000 	ldr	r3, [r4]
 8002ab0:	eaffffed 	b	8002a6c <restore_non_core_regs+0x38>

08002ab4 <_Unwind_decode_typeinfo_ptr.isra.0>:
 8002ab4:	e5903000 	ldr	r3, [r0]
 8002ab8:	e3530000 	cmp	r3, #0
 8002abc:	10830000 	addne	r0, r3, r0
 8002ac0:	01a00003 	moveq	r0, r3
 8002ac4:	e12fff1e 	bx	lr

08002ac8 <__gnu_unwind_24bit.isra.1>:
 8002ac8:	e3a00009 	mov	r0, #9
 8002acc:	e12fff1e 	bx	lr

08002ad0 <_Unwind_DebugHook>:
 8002ad0:	e12fff1e 	bx	lr

08002ad4 <unwind_phase2>:
 8002ad4:	e92d4070 	push	{r4, r5, r6, lr}
 8002ad8:	e1a04000 	mov	r4, r0
 8002adc:	e1a05001 	mov	r5, r1
 8002ae0:	ea000009 	b	8002b0c <unwind_phase2+0x38>
 8002ae4:	e5953040 	ldr	r3, [r5, #64]	; 0x40
 8002ae8:	e3a00001 	mov	r0, #1
 8002aec:	e5843014 	str	r3, [r4, #20]
 8002af0:	e1a01004 	mov	r1, r4
 8002af4:	e1a02005 	mov	r2, r5
 8002af8:	e594c010 	ldr	ip, [r4, #16]
 8002afc:	e1a0e00f 	mov	lr, pc
 8002b00:	e12fff1c 	bx	ip
 8002b04:	e3500008 	cmp	r0, #8
 8002b08:	1a000005 	bne	8002b24 <unwind_phase2+0x50>
 8002b0c:	e1a00004 	mov	r0, r4
 8002b10:	e5951040 	ldr	r1, [r5, #64]	; 0x40
 8002b14:	ebffff7a 	bl	8002904 <get_eit_entry>
 8002b18:	e2506000 	subs	r6, r0, #0
 8002b1c:	0afffff0 	beq	8002ae4 <unwind_phase2+0x10>
 8002b20:	eb000509 	bl	8003f4c <abort>
 8002b24:	e3500007 	cmp	r0, #7
 8002b28:	1afffffc 	bne	8002b20 <unwind_phase2+0x4c>
 8002b2c:	e1a00006 	mov	r0, r6
 8002b30:	e5951040 	ldr	r1, [r5, #64]	; 0x40
 8002b34:	ebffffe5 	bl	8002ad0 <_Unwind_DebugHook>
 8002b38:	e2850004 	add	r0, r5, #4
 8002b3c:	eb00035d 	bl	80038b8 <__restore_core_regs>

08002b40 <unwind_phase2_forced>:
 8002b40:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
 8002b44:	e1a05000 	mov	r5, r0
 8002b48:	e1a06002 	mov	r6, r2
 8002b4c:	e3a04000 	mov	r4, #0
 8002b50:	e281e004 	add	lr, r1, #4
 8002b54:	e24ddff2 	sub	sp, sp, #968	; 0x3c8
 8002b58:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
 8002b5c:	e28dc00c 	add	ip, sp, #12
 8002b60:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
 8002b64:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
 8002b68:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
 8002b6c:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
 8002b70:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
 8002b74:	e89e000f 	ldm	lr, {r0, r1, r2, r3}
 8002b78:	e1560004 	cmp	r6, r4
 8002b7c:	e595800c 	ldr	r8, [r5, #12]
 8002b80:	e5959018 	ldr	r9, [r5, #24]
 8002b84:	e88c000f 	stm	ip, {r0, r1, r2, r3}
 8002b88:	e1a00005 	mov	r0, r5
 8002b8c:	e59d1048 	ldr	r1, [sp, #72]	; 0x48
 8002b90:	e58d4008 	str	r4, [sp, #8]
 8002b94:	03a06009 	moveq	r6, #9
 8002b98:	13a0600a 	movne	r6, #10
 8002b9c:	ebffff58 	bl	8002904 <get_eit_entry>
 8002ba0:	e1a04000 	mov	r4, r0
 8002ba4:	e28d7008 	add	r7, sp, #8
 8002ba8:	e3540000 	cmp	r4, #0
 8002bac:	0a00000e 	beq	8002bec <unwind_phase2_forced+0xac>
 8002bb0:	e59d3040 	ldr	r3, [sp, #64]	; 0x40
 8002bb4:	e88d0280 	stm	sp, {r7, r9}
 8002bb8:	e58d304c 	str	r3, [sp, #76]	; 0x4c
 8002bbc:	e3861010 	orr	r1, r6, #16
 8002bc0:	e3a00001 	mov	r0, #1
 8002bc4:	e1a02005 	mov	r2, r5
 8002bc8:	e1a03005 	mov	r3, r5
 8002bcc:	e1a0e00f 	mov	lr, pc
 8002bd0:	e12fff18 	bx	r8
 8002bd4:	e3500000 	cmp	r0, #0
 8002bd8:	1a000029 	bne	8002c84 <unwind_phase2_forced+0x144>
 8002bdc:	e1a00004 	mov	r0, r4
 8002be0:	e28ddff2 	add	sp, sp, #968	; 0x3c8
 8002be4:	e8bd47f0 	pop	{r4, r5, r6, r7, r8, r9, sl, lr}
 8002be8:	e12fff1e 	bx	lr
 8002bec:	e59d3048 	ldr	r3, [sp, #72]	; 0x48
 8002bf0:	e1a01007 	mov	r1, r7
 8002bf4:	e5853014 	str	r3, [r5, #20]
 8002bf8:	e3a02e1e 	mov	r2, #480	; 0x1e0
 8002bfc:	e28d0f7a 	add	r0, sp, #488	; 0x1e8
 8002c00:	eb0004d6 	bl	8003f60 <memcpy>
 8002c04:	e1a01005 	mov	r1, r5
 8002c08:	e28d2f7a 	add	r2, sp, #488	; 0x1e8
 8002c0c:	e1a00006 	mov	r0, r6
 8002c10:	e595c010 	ldr	ip, [r5, #16]
 8002c14:	e1a0e00f 	mov	lr, pc
 8002c18:	e12fff1c 	bx	ip
 8002c1c:	e59d3220 	ldr	r3, [sp, #544]	; 0x220
 8002c20:	e1a0a000 	mov	sl, r0
 8002c24:	e58d304c 	str	r3, [sp, #76]	; 0x4c
 8002c28:	e88d0280 	stm	sp, {r7, r9}
 8002c2c:	e1a01006 	mov	r1, r6
 8002c30:	e3a00001 	mov	r0, #1
 8002c34:	e1a02005 	mov	r2, r5
 8002c38:	e1a03005 	mov	r3, r5
 8002c3c:	e1a0e00f 	mov	lr, pc
 8002c40:	e12fff18 	bx	r8
 8002c44:	e3500000 	cmp	r0, #0
 8002c48:	1a00000d 	bne	8002c84 <unwind_phase2_forced+0x144>
 8002c4c:	e1a00007 	mov	r0, r7
 8002c50:	e28d1f7a 	add	r1, sp, #488	; 0x1e8
 8002c54:	e3a02e1e 	mov	r2, #480	; 0x1e0
 8002c58:	eb0004c0 	bl	8003f60 <memcpy>
 8002c5c:	e35a0008 	cmp	sl, #8
 8002c60:	1a000005 	bne	8002c7c <unwind_phase2_forced+0x13c>
 8002c64:	e1a00005 	mov	r0, r5
 8002c68:	e59d1048 	ldr	r1, [sp, #72]	; 0x48
 8002c6c:	ebffff24 	bl	8002904 <get_eit_entry>
 8002c70:	e3a06009 	mov	r6, #9
 8002c74:	e1a04000 	mov	r4, r0
 8002c78:	eaffffca 	b	8002ba8 <unwind_phase2_forced+0x68>
 8002c7c:	e35a0007 	cmp	sl, #7
 8002c80:	0a000003 	beq	8002c94 <unwind_phase2_forced+0x154>
 8002c84:	e3a00009 	mov	r0, #9
 8002c88:	e28ddff2 	add	sp, sp, #968	; 0x3c8
 8002c8c:	e8bd47f0 	pop	{r4, r5, r6, r7, r8, r9, sl, lr}
 8002c90:	e12fff1e 	bx	lr
 8002c94:	e1a00004 	mov	r0, r4
 8002c98:	e59d1048 	ldr	r1, [sp, #72]	; 0x48
 8002c9c:	ebffff8b 	bl	8002ad0 <_Unwind_DebugHook>
 8002ca0:	e28d000c 	add	r0, sp, #12
 8002ca4:	eb000303 	bl	80038b8 <__restore_core_regs>

08002ca8 <_Unwind_GetCFA>:
 8002ca8:	e5900044 	ldr	r0, [r0, #68]	; 0x44
 8002cac:	e12fff1e 	bx	lr

08002cb0 <__gnu_Unwind_RaiseException>:
 8002cb0:	e92d40f0 	push	{r4, r5, r6, r7, lr}
 8002cb4:	e3e05000 	mvn	r5, #0
 8002cb8:	e591303c 	ldr	r3, [r1, #60]	; 0x3c
 8002cbc:	e5813040 	str	r3, [r1, #64]	; 0x40
 8002cc0:	e281e004 	add	lr, r1, #4
 8002cc4:	e24ddf79 	sub	sp, sp, #484	; 0x1e4
 8002cc8:	e1a07001 	mov	r7, r1
 8002ccc:	e1a04000 	mov	r4, r0
 8002cd0:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
 8002cd4:	e28dc004 	add	ip, sp, #4
 8002cd8:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
 8002cdc:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
 8002ce0:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
 8002ce4:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
 8002ce8:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
 8002cec:	e89e000f 	ldm	lr, {r0, r1, r2, r3}
 8002cf0:	e28d6e1e 	add	r6, sp, #480	; 0x1e0
 8002cf4:	e88c000f 	stm	ip, {r0, r1, r2, r3}
 8002cf8:	e52651e0 	str	r5, [r6, #-480]!	; 0xfffffe20
 8002cfc:	ea000007 	b	8002d20 <__gnu_Unwind_RaiseException+0x70>
 8002d00:	e1a01004 	mov	r1, r4
 8002d04:	e1a02006 	mov	r2, r6
 8002d08:	e594c010 	ldr	ip, [r4, #16]
 8002d0c:	e1a0e00f 	mov	lr, pc
 8002d10:	e12fff1c 	bx	ip
 8002d14:	e3500008 	cmp	r0, #8
 8002d18:	e1a05000 	mov	r5, r0
 8002d1c:	1a000008 	bne	8002d44 <__gnu_Unwind_RaiseException+0x94>
 8002d20:	e1a00004 	mov	r0, r4
 8002d24:	e59d1040 	ldr	r1, [sp, #64]	; 0x40
 8002d28:	ebfffef5 	bl	8002904 <get_eit_entry>
 8002d2c:	e3500000 	cmp	r0, #0
 8002d30:	0afffff2 	beq	8002d00 <__gnu_Unwind_RaiseException+0x50>
 8002d34:	e3a00009 	mov	r0, #9
 8002d38:	e28ddf79 	add	sp, sp, #484	; 0x1e4
 8002d3c:	e8bd40f0 	pop	{r4, r5, r6, r7, lr}
 8002d40:	e12fff1e 	bx	lr
 8002d44:	e1a00006 	mov	r0, r6
 8002d48:	ebffff39 	bl	8002a34 <restore_non_core_regs>
 8002d4c:	e3550006 	cmp	r5, #6
 8002d50:	1afffff7 	bne	8002d34 <__gnu_Unwind_RaiseException+0x84>
 8002d54:	e1a00004 	mov	r0, r4
 8002d58:	e1a01007 	mov	r1, r7
 8002d5c:	ebffff5c 	bl	8002ad4 <unwind_phase2>

08002d60 <__gnu_Unwind_ForcedUnwind>:
 8002d60:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 8002d64:	e593e03c 	ldr	lr, [r3, #60]	; 0x3c
 8002d68:	e580100c 	str	r1, [r0, #12]
 8002d6c:	e5802018 	str	r2, [r0, #24]
 8002d70:	e1a01003 	mov	r1, r3
 8002d74:	e583e040 	str	lr, [r3, #64]	; 0x40
 8002d78:	e3a02000 	mov	r2, #0
 8002d7c:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 8002d80:	eaffff6e 	b	8002b40 <unwind_phase2_forced>

08002d84 <__gnu_Unwind_Resume>:
 8002d84:	e92d4070 	push	{r4, r5, r6, lr}
 8002d88:	e590600c 	ldr	r6, [r0, #12]
 8002d8c:	e5903014 	ldr	r3, [r0, #20]
 8002d90:	e3560000 	cmp	r6, #0
 8002d94:	e1a04000 	mov	r4, r0
 8002d98:	e1a05001 	mov	r5, r1
 8002d9c:	e5813040 	str	r3, [r1, #64]	; 0x40
 8002da0:	0a000002 	beq	8002db0 <__gnu_Unwind_Resume+0x2c>
 8002da4:	e3a02001 	mov	r2, #1
 8002da8:	ebffff64 	bl	8002b40 <unwind_phase2_forced>
 8002dac:	eb000466 	bl	8003f4c <abort>
 8002db0:	e3a00002 	mov	r0, #2
 8002db4:	e1a01004 	mov	r1, r4
 8002db8:	e1a02005 	mov	r2, r5
 8002dbc:	e594c010 	ldr	ip, [r4, #16]
 8002dc0:	e1a0e00f 	mov	lr, pc
 8002dc4:	e12fff1c 	bx	ip
 8002dc8:	e3500007 	cmp	r0, #7
 8002dcc:	0a000004 	beq	8002de4 <__gnu_Unwind_Resume+0x60>
 8002dd0:	e3500008 	cmp	r0, #8
 8002dd4:	01a00004 	moveq	r0, r4
 8002dd8:	01a01005 	moveq	r1, r5
 8002ddc:	0bffff3c 	bleq	8002ad4 <unwind_phase2>
 8002de0:	eb000459 	bl	8003f4c <abort>
 8002de4:	e1a00006 	mov	r0, r6
 8002de8:	e5951040 	ldr	r1, [r5, #64]	; 0x40
 8002dec:	ebffff37 	bl	8002ad0 <_Unwind_DebugHook>
 8002df0:	e2850004 	add	r0, r5, #4
 8002df4:	eb0002af 	bl	80038b8 <__restore_core_regs>

08002df8 <__gnu_Unwind_Resume_or_Rethrow>:
 8002df8:	e590300c 	ldr	r3, [r0, #12]
 8002dfc:	e3530000 	cmp	r3, #0
 8002e00:	1591c03c 	ldrne	ip, [r1, #60]	; 0x3c
 8002e04:	13a02000 	movne	r2, #0
 8002e08:	1581c040 	strne	ip, [r1, #64]	; 0x40
 8002e0c:	1affff4b 	bne	8002b40 <unwind_phase2_forced>
 8002e10:	eaffffa6 	b	8002cb0 <__gnu_Unwind_RaiseException>

08002e14 <_Unwind_Complete>:
 8002e14:	e12fff1e 	bx	lr

08002e18 <_Unwind_DeleteException>:
 8002e18:	e5903008 	ldr	r3, [r0, #8]
 8002e1c:	e3530000 	cmp	r3, #0
 8002e20:	012fff1e 	bxeq	lr
 8002e24:	e1a01000 	mov	r1, r0
 8002e28:	e3a00001 	mov	r0, #1
 8002e2c:	e12fff13 	bx	r3

08002e30 <_Unwind_VRS_Get>:
 8002e30:	e3510004 	cmp	r1, #4
 8002e34:	979ff101 	ldrls	pc, [pc, r1, lsl #2]
 8002e38:	ea000009 	b	8002e64 <_Unwind_VRS_Get+0x34>
 8002e3c:	08002e50 	.word	0x08002e50
 8002e40:	08002e6c 	.word	0x08002e6c
 8002e44:	08002e64 	.word	0x08002e64
 8002e48:	08002e6c 	.word	0x08002e6c
 8002e4c:	08002e6c 	.word	0x08002e6c
 8002e50:	e352000f 	cmp	r2, #15
 8002e54:	93530000 	cmpls	r3, #0
 8002e58:	13a03001 	movne	r3, #1
 8002e5c:	03a03000 	moveq	r3, #0
 8002e60:	0a000003 	beq	8002e74 <_Unwind_VRS_Get+0x44>
 8002e64:	e3a00002 	mov	r0, #2
 8002e68:	e12fff1e 	bx	lr
 8002e6c:	e3a00001 	mov	r0, #1
 8002e70:	e12fff1e 	bx	lr
 8002e74:	e0802102 	add	r2, r0, r2, lsl #2
 8002e78:	e5922004 	ldr	r2, [r2, #4]
 8002e7c:	e1a00003 	mov	r0, r3
 8002e80:	e59d3000 	ldr	r3, [sp]
 8002e84:	e5832000 	str	r2, [r3]
 8002e88:	e12fff1e 	bx	lr

08002e8c <_Unwind_GetGR>:
 8002e8c:	e1a02001 	mov	r2, r1
 8002e90:	e3a01000 	mov	r1, #0
 8002e94:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 8002e98:	e24dd014 	sub	sp, sp, #20
 8002e9c:	e28dc00c 	add	ip, sp, #12
 8002ea0:	e1a03001 	mov	r3, r1
 8002ea4:	e58dc000 	str	ip, [sp]
 8002ea8:	ebffffe0 	bl	8002e30 <_Unwind_VRS_Get>
 8002eac:	e59d000c 	ldr	r0, [sp, #12]
 8002eb0:	e28dd014 	add	sp, sp, #20
 8002eb4:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 8002eb8:	e12fff1e 	bx	lr

08002ebc <_Unwind_VRS_Set>:
 8002ebc:	e3510004 	cmp	r1, #4
 8002ec0:	979ff101 	ldrls	pc, [pc, r1, lsl #2]
 8002ec4:	ea000009 	b	8002ef0 <_Unwind_VRS_Set+0x34>
 8002ec8:	08002edc 	.word	0x08002edc
 8002ecc:	08002ef8 	.word	0x08002ef8
 8002ed0:	08002ef0 	.word	0x08002ef0
 8002ed4:	08002ef8 	.word	0x08002ef8
 8002ed8:	08002ef8 	.word	0x08002ef8
 8002edc:	e352000f 	cmp	r2, #15
 8002ee0:	93530000 	cmpls	r3, #0
 8002ee4:	13a03001 	movne	r3, #1
 8002ee8:	03a03000 	moveq	r3, #0
 8002eec:	0a000003 	beq	8002f00 <_Unwind_VRS_Set+0x44>
 8002ef0:	e3a00002 	mov	r0, #2
 8002ef4:	e12fff1e 	bx	lr
 8002ef8:	e3a00001 	mov	r0, #1
 8002efc:	e12fff1e 	bx	lr
 8002f00:	e59d1000 	ldr	r1, [sp]
 8002f04:	e5911000 	ldr	r1, [r1]
 8002f08:	e0802102 	add	r2, r0, r2, lsl #2
 8002f0c:	e5821004 	str	r1, [r2, #4]
 8002f10:	e1a00003 	mov	r0, r3
 8002f14:	e12fff1e 	bx	lr

08002f18 <_Unwind_SetGR>:
 8002f18:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 8002f1c:	e1a0e001 	mov	lr, r1
 8002f20:	e3a01000 	mov	r1, #0
 8002f24:	e24dd014 	sub	sp, sp, #20
 8002f28:	e28dc010 	add	ip, sp, #16
 8002f2c:	e52c2004 	str	r2, [ip, #-4]!
 8002f30:	e1a03001 	mov	r3, r1
 8002f34:	e58dc000 	str	ip, [sp]
 8002f38:	e1a0200e 	mov	r2, lr
 8002f3c:	ebffffde 	bl	8002ebc <_Unwind_VRS_Set>
 8002f40:	e28dd014 	add	sp, sp, #20
 8002f44:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 8002f48:	e12fff1e 	bx	lr

08002f4c <__gnu_Unwind_Backtrace>:
 8002f4c:	e92d4070 	push	{r4, r5, r6, lr}
 8002f50:	e3e04000 	mvn	r4, #0
 8002f54:	e592303c 	ldr	r3, [r2, #60]	; 0x3c
 8002f58:	e5823040 	str	r3, [r2, #64]	; 0x40
 8002f5c:	e282c004 	add	ip, r2, #4
 8002f60:	e24ddf8e 	sub	sp, sp, #568	; 0x238
 8002f64:	e1a06000 	mov	r6, r0
 8002f68:	e1a05001 	mov	r5, r1
 8002f6c:	e8bc000f 	ldm	ip!, {r0, r1, r2, r3}
 8002f70:	e28de05c 	add	lr, sp, #92	; 0x5c
 8002f74:	e8ae000f 	stmia	lr!, {r0, r1, r2, r3}
 8002f78:	e8bc000f 	ldm	ip!, {r0, r1, r2, r3}
 8002f7c:	e8ae000f 	stmia	lr!, {r0, r1, r2, r3}
 8002f80:	e8bc000f 	ldm	ip!, {r0, r1, r2, r3}
 8002f84:	e8ae000f 	stmia	lr!, {r0, r1, r2, r3}
 8002f88:	e89c000f 	ldm	ip, {r0, r1, r2, r3}
 8002f8c:	e88e000f 	stm	lr, {r0, r1, r2, r3}
 8002f90:	e58d4058 	str	r4, [sp, #88]	; 0x58
 8002f94:	ea000013 	b	8002fe8 <__gnu_Unwind_Backtrace+0x9c>
 8002f98:	e28d0058 	add	r0, sp, #88	; 0x58
 8002f9c:	e3a0100c 	mov	r1, #12
 8002fa0:	e1a0200d 	mov	r2, sp
 8002fa4:	ebffffdb 	bl	8002f18 <_Unwind_SetGR>
 8002fa8:	e28d0058 	add	r0, sp, #88	; 0x58
 8002fac:	e1a01005 	mov	r1, r5
 8002fb0:	e1a0e00f 	mov	lr, pc
 8002fb4:	e12fff16 	bx	r6
 8002fb8:	e3500000 	cmp	r0, #0
 8002fbc:	1a00000e 	bne	8002ffc <__gnu_Unwind_Backtrace+0xb0>
 8002fc0:	e3a00008 	mov	r0, #8
 8002fc4:	e1a0100d 	mov	r1, sp
 8002fc8:	e28d2058 	add	r2, sp, #88	; 0x58
 8002fcc:	e59dc010 	ldr	ip, [sp, #16]
 8002fd0:	e1a0e00f 	mov	lr, pc
 8002fd4:	e12fff1c 	bx	ip
 8002fd8:	e2403005 	sub	r3, r0, #5
 8002fdc:	e31300fb 	tst	r3, #251	; 0xfb
 8002fe0:	e1a04000 	mov	r4, r0
 8002fe4:	0a000005 	beq	8003000 <__gnu_Unwind_Backtrace+0xb4>
 8002fe8:	e1a0000d 	mov	r0, sp
 8002fec:	e59d1098 	ldr	r1, [sp, #152]	; 0x98
 8002ff0:	ebfffe43 	bl	8002904 <get_eit_entry>
 8002ff4:	e3500000 	cmp	r0, #0
 8002ff8:	0affffe6 	beq	8002f98 <__gnu_Unwind_Backtrace+0x4c>
 8002ffc:	e3a04009 	mov	r4, #9
 8003000:	e28d0058 	add	r0, sp, #88	; 0x58
 8003004:	ebfffe8a 	bl	8002a34 <restore_non_core_regs>
 8003008:	e1a00004 	mov	r0, r4
 800300c:	e28ddf8e 	add	sp, sp, #568	; 0x238
 8003010:	e8bd4070 	pop	{r4, r5, r6, lr}
 8003014:	e12fff1e 	bx	lr

08003018 <__gnu_unwind_pr_common>:
 8003018:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800301c:	e591604c 	ldr	r6, [r1, #76]	; 0x4c
 8003020:	e1a05001 	mov	r5, r1
 8003024:	e5961000 	ldr	r1, [r6]
 8003028:	e24dd024 	sub	sp, sp, #36	; 0x24
 800302c:	e2866004 	add	r6, r6, #4
 8003030:	e2537000 	subs	r7, r3, #0
 8003034:	e58d0004 	str	r0, [sp, #4]
 8003038:	e1a09002 	mov	r9, r2
 800303c:	e58d1014 	str	r1, [sp, #20]
 8003040:	e58d6018 	str	r6, [sp, #24]
 8003044:	e2008003 	and	r8, r0, #3
 8003048:	1a000076 	bne	8003228 <__gnu_unwind_pr_common+0x210>
 800304c:	e3a03003 	mov	r3, #3
 8003050:	e1a01401 	lsl	r1, r1, #8
 8003054:	e58d1014 	str	r1, [sp, #20]
 8003058:	e5cd701d 	strb	r7, [sp, #29]
 800305c:	e5cd301c 	strb	r3, [sp, #28]
 8003060:	e5953050 	ldr	r3, [r5, #80]	; 0x50
 8003064:	e3580002 	cmp	r8, #2
 8003068:	05956038 	ldreq	r6, [r5, #56]	; 0x38
 800306c:	e2133001 	ands	r3, r3, #1
 8003070:	1a000061 	bne	80031fc <__gnu_unwind_pr_common+0x1e4>
 8003074:	e58d3000 	str	r3, [sp]
 8003078:	e2853058 	add	r3, r5, #88	; 0x58
 800307c:	e58d3008 	str	r3, [sp, #8]
 8003080:	e5964000 	ldr	r4, [r6]
 8003084:	e3540000 	cmp	r4, #0
 8003088:	0a00005d 	beq	8003204 <__gnu_unwind_pr_common+0x1ec>
 800308c:	e3570002 	cmp	r7, #2
 8003090:	0596b004 	ldreq	fp, [r6, #4]
 8003094:	11d6b0b2 	ldrhne	fp, [r6, #2]
 8003098:	e5953048 	ldr	r3, [r5, #72]	; 0x48
 800309c:	e3cba001 	bic	sl, fp, #1
 80030a0:	e1a00009 	mov	r0, r9
 80030a4:	e3a0100f 	mov	r1, #15
 80030a8:	11d640b0 	ldrhne	r4, [r6]
 80030ac:	02866008 	addeq	r6, r6, #8
 80030b0:	12866004 	addne	r6, r6, #4
 80030b4:	e08aa003 	add	sl, sl, r3
 80030b8:	ebffff73 	bl	8002e8c <_Unwind_GetGR>
 80030bc:	e15a0000 	cmp	sl, r0
 80030c0:	e20bb001 	and	fp, fp, #1
 80030c4:	8a00003c 	bhi	80031bc <__gnu_unwind_pr_common+0x1a4>
 80030c8:	e3c43001 	bic	r3, r4, #1
 80030cc:	e08aa003 	add	sl, sl, r3
 80030d0:	e150000a 	cmp	r0, sl
 80030d4:	2a000038 	bcs	80031bc <__gnu_unwind_pr_common+0x1a4>
 80030d8:	e2044001 	and	r4, r4, #1
 80030dc:	e184408b 	orr	r4, r4, fp, lsl #1
 80030e0:	e3540001 	cmp	r4, #1
 80030e4:	0a00005e 	beq	8003264 <__gnu_unwind_pr_common+0x24c>
 80030e8:	3a000059 	bcc	8003254 <__gnu_unwind_pr_common+0x23c>
 80030ec:	e3540002 	cmp	r4, #2
 80030f0:	1a000048 	bne	8003218 <__gnu_unwind_pr_common+0x200>
 80030f4:	e5963000 	ldr	r3, [r6]
 80030f8:	e3580000 	cmp	r8, #0
 80030fc:	e3c34102 	bic	r4, r3, #-2147483648	; 0x80000000
 8003100:	1a000090 	bne	8003348 <__gnu_unwind_pr_common+0x330>
 8003104:	e59d2004 	ldr	r2, [sp, #4]
 8003108:	e3120008 	tst	r2, #8
 800310c:	03a02001 	moveq	r2, #1
 8003110:	13a02000 	movne	r2, #0
 8003114:	e3540000 	cmp	r4, #0
 8003118:	03822001 	orreq	r2, r2, #1
 800311c:	e3520000 	cmp	r2, #0
 8003120:	0a000030 	beq	80031e8 <__gnu_unwind_pr_common+0x1d0>
 8003124:	e3540000 	cmp	r4, #0
 8003128:	0a00001a 	beq	8003198 <__gnu_unwind_pr_common+0x180>
 800312c:	e1a0a007 	mov	sl, r7
 8003130:	e286b004 	add	fp, r6, #4
 8003134:	e1a07004 	mov	r7, r4
 8003138:	e58d800c 	str	r8, [sp, #12]
 800313c:	e59d4008 	ldr	r4, [sp, #8]
 8003140:	ea000003 	b	8003154 <__gnu_unwind_pr_common+0x13c>
 8003144:	e1530007 	cmp	r3, r7
 8003148:	e1a08003 	mov	r8, r3
 800314c:	e28bb004 	add	fp, fp, #4
 8003150:	0a000010 	beq	8003198 <__gnu_unwind_pr_common+0x180>
 8003154:	e1a0000b 	mov	r0, fp
 8003158:	e58d4010 	str	r4, [sp, #16]
 800315c:	ebfffe54 	bl	8002ab4 <_Unwind_decode_typeinfo_ptr.isra.0>
 8003160:	e28d3010 	add	r3, sp, #16
 8003164:	e1a01000 	mov	r1, r0
 8003168:	e3a02000 	mov	r2, #0
 800316c:	e1a00005 	mov	r0, r5
 8003170:	e320f000 	nop	{0}
 8003174:	e3500000 	cmp	r0, #0
 8003178:	e2883001 	add	r3, r8, #1
 800317c:	0afffff0 	beq	8003144 <__gnu_unwind_pr_common+0x12c>
 8003180:	e1a04007 	mov	r4, r7
 8003184:	e1a0700a 	mov	r7, sl
 8003188:	e1a0a008 	mov	sl, r8
 800318c:	e15a0004 	cmp	sl, r4
 8003190:	e59d800c 	ldr	r8, [sp, #12]
 8003194:	1a000071 	bne	8003360 <__gnu_unwind_pr_common+0x348>
 8003198:	e1a00009 	mov	r0, r9
 800319c:	e3a0100d 	mov	r1, #13
 80031a0:	ebffff39 	bl	8002e8c <_Unwind_GetGR>
 80031a4:	e59d3010 	ldr	r3, [sp, #16]
 80031a8:	e5850020 	str	r0, [r5, #32]
 80031ac:	e5856028 	str	r6, [r5, #40]	; 0x28
 80031b0:	e5853024 	str	r3, [r5, #36]	; 0x24
 80031b4:	e3a00006 	mov	r0, #6
 80031b8:	ea000017 	b	800321c <__gnu_unwind_pr_common+0x204>
 80031bc:	e2044001 	and	r4, r4, #1
 80031c0:	e184408b 	orr	r4, r4, fp, lsl #1
 80031c4:	e3540001 	cmp	r4, #1
 80031c8:	0a000044 	beq	80032e0 <__gnu_unwind_pr_common+0x2c8>
 80031cc:	3a000022 	bcc	800325c <__gnu_unwind_pr_common+0x244>
 80031d0:	e3540002 	cmp	r4, #2
 80031d4:	1a00000f 	bne	8003218 <__gnu_unwind_pr_common+0x200>
 80031d8:	e5963000 	ldr	r3, [r6]
 80031dc:	e3580000 	cmp	r8, #0
 80031e0:	e3c34102 	bic	r4, r3, #-2147483648	; 0x80000000
 80031e4:	1a000057 	bne	8003348 <__gnu_unwind_pr_common+0x330>
 80031e8:	e3530000 	cmp	r3, #0
 80031ec:	b2866004 	addlt	r6, r6, #4
 80031f0:	e2844001 	add	r4, r4, #1
 80031f4:	e0866104 	add	r6, r6, r4, lsl #2
 80031f8:	eaffffa0 	b	8003080 <__gnu_unwind_pr_common+0x68>
 80031fc:	e3a03000 	mov	r3, #0
 8003200:	e58d3000 	str	r3, [sp]
 8003204:	e3570002 	cmp	r7, #2
 8003208:	da000038 	ble	80032f0 <__gnu_unwind_pr_common+0x2d8>
 800320c:	ebfffe2d 	bl	8002ac8 <__gnu_unwind_24bit.isra.1>
 8003210:	e3500000 	cmp	r0, #0
 8003214:	0a00003a 	beq	8003304 <__gnu_unwind_pr_common+0x2ec>
 8003218:	e3a00009 	mov	r0, #9
 800321c:	e28dd024 	add	sp, sp, #36	; 0x24
 8003220:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8003224:	e12fff1e 	bx	lr
 8003228:	e3570002 	cmp	r7, #2
 800322c:	caffff8b 	bgt	8003060 <__gnu_unwind_pr_common+0x48>
 8003230:	e3a02002 	mov	r2, #2
 8003234:	e1a03821 	lsr	r3, r1, #16
 8003238:	e5cd301d 	strb	r3, [sp, #29]
 800323c:	e1a01801 	lsl	r1, r1, #16
 8003240:	e20330ff 	and	r3, r3, #255	; 0xff
 8003244:	e58d1014 	str	r1, [sp, #20]
 8003248:	e5cd201c 	strb	r2, [sp, #28]
 800324c:	e0866103 	add	r6, r6, r3, lsl #2
 8003250:	eaffff82 	b	8003060 <__gnu_unwind_pr_common+0x48>
 8003254:	e3580000 	cmp	r8, #0
 8003258:	1a000070 	bne	8003420 <__gnu_unwind_pr_common+0x408>
 800325c:	e2866004 	add	r6, r6, #4
 8003260:	eaffff86 	b	8003080 <__gnu_unwind_pr_common+0x68>
 8003264:	e3580000 	cmp	r8, #0
 8003268:	1a00003e 	bne	8003368 <__gnu_unwind_pr_common+0x350>
 800326c:	e896000c 	ldm	r6, {r2, r3}
 8003270:	e3730002 	cmn	r3, #2
 8003274:	e1a04fa2 	lsr	r4, r2, #31
 8003278:	0affffe6 	beq	8003218 <__gnu_unwind_pr_common+0x200>
 800327c:	e3730001 	cmn	r3, #1
 8003280:	e59d3008 	ldr	r3, [sp, #8]
 8003284:	e58d3010 	str	r3, [sp, #16]
 8003288:	0a00005b 	beq	80033fc <__gnu_unwind_pr_common+0x3e4>
 800328c:	e2860004 	add	r0, r6, #4
 8003290:	ebfffe07 	bl	8002ab4 <_Unwind_decode_typeinfo_ptr.isra.0>
 8003294:	e1a02004 	mov	r2, r4
 8003298:	e1a01000 	mov	r1, r0
 800329c:	e28d3010 	add	r3, sp, #16
 80032a0:	e1a00005 	mov	r0, r5
 80032a4:	e320f000 	nop	{0}
 80032a8:	e3500000 	cmp	r0, #0
 80032ac:	0a00000d 	beq	80032e8 <__gnu_unwind_pr_common+0x2d0>
 80032b0:	e1a04000 	mov	r4, r0
 80032b4:	e3a0100d 	mov	r1, #13
 80032b8:	e1a00009 	mov	r0, r9
 80032bc:	ebfffef2 	bl	8002e8c <_Unwind_GetGR>
 80032c0:	e3540002 	cmp	r4, #2
 80032c4:	e5850020 	str	r0, [r5, #32]
 80032c8:	1a00004f 	bne	800340c <__gnu_unwind_pr_common+0x3f4>
 80032cc:	e1a03005 	mov	r3, r5
 80032d0:	e59d2010 	ldr	r2, [sp, #16]
 80032d4:	e5a3202c 	str	r2, [r3, #44]!	; 0x2c
 80032d8:	e5853024 	str	r3, [r5, #36]	; 0x24
 80032dc:	ea00004c 	b	8003414 <__gnu_unwind_pr_common+0x3fc>
 80032e0:	e3580000 	cmp	r8, #0
 80032e4:	1a00001f 	bne	8003368 <__gnu_unwind_pr_common+0x350>
 80032e8:	e2866008 	add	r6, r6, #8
 80032ec:	eaffff63 	b	8003080 <__gnu_unwind_pr_common+0x68>
 80032f0:	e1a00009 	mov	r0, r9
 80032f4:	e28d1014 	add	r1, sp, #20
 80032f8:	eb0001ff 	bl	8003afc <__gnu_unwind_execute>
 80032fc:	e3500000 	cmp	r0, #0
 8003300:	1affffc4 	bne	8003218 <__gnu_unwind_pr_common+0x200>
 8003304:	e59d3000 	ldr	r3, [sp]
 8003308:	e3530000 	cmp	r3, #0
 800330c:	03a00008 	moveq	r0, #8
 8003310:	0affffc1 	beq	800321c <__gnu_unwind_pr_common+0x204>
 8003314:	e3a0100f 	mov	r1, #15
 8003318:	e1a00009 	mov	r0, r9
 800331c:	ebfffeda 	bl	8002e8c <_Unwind_GetGR>
 8003320:	e3a0100e 	mov	r1, #14
 8003324:	e1a02000 	mov	r2, r0
 8003328:	e1a00009 	mov	r0, r9
 800332c:	ebfffef9 	bl	8002f18 <_Unwind_SetGR>
 8003330:	e1a00009 	mov	r0, r9
 8003334:	e3a0100f 	mov	r1, #15
 8003338:	e59f2128 	ldr	r2, [pc, #296]	; 8003468 <__gnu_unwind_pr_common+0x450>
 800333c:	ebfffef5 	bl	8002f18 <_Unwind_SetGR>
 8003340:	e3a00007 	mov	r0, #7
 8003344:	eaffffb4 	b	800321c <__gnu_unwind_pr_common+0x204>
 8003348:	e1a00009 	mov	r0, r9
 800334c:	e3a0100d 	mov	r1, #13
 8003350:	e595a020 	ldr	sl, [r5, #32]
 8003354:	ebfffecc 	bl	8002e8c <_Unwind_GetGR>
 8003358:	e15a0000 	cmp	sl, r0
 800335c:	0a000016 	beq	80033bc <__gnu_unwind_pr_common+0x3a4>
 8003360:	e5963000 	ldr	r3, [r6]
 8003364:	eaffff9f 	b	80031e8 <__gnu_unwind_pr_common+0x1d0>
 8003368:	e1a00009 	mov	r0, r9
 800336c:	e3a0100d 	mov	r1, #13
 8003370:	e5954020 	ldr	r4, [r5, #32]
 8003374:	ebfffec4 	bl	8002e8c <_Unwind_GetGR>
 8003378:	e1540000 	cmp	r4, r0
 800337c:	1affffd9 	bne	80032e8 <__gnu_unwind_pr_common+0x2d0>
 8003380:	e5953028 	ldr	r3, [r5, #40]	; 0x28
 8003384:	e1560003 	cmp	r6, r3
 8003388:	1affffd6 	bne	80032e8 <__gnu_unwind_pr_common+0x2d0>
 800338c:	e1a00006 	mov	r0, r6
 8003390:	ebfffd12 	bl	80027e0 <selfrel_offset31>
 8003394:	e3a0100f 	mov	r1, #15
 8003398:	e1a02000 	mov	r2, r0
 800339c:	e1a00009 	mov	r0, r9
 80033a0:	ebfffedc 	bl	8002f18 <_Unwind_SetGR>
 80033a4:	e1a00009 	mov	r0, r9
 80033a8:	e1a02005 	mov	r2, r5
 80033ac:	e3a01000 	mov	r1, #0
 80033b0:	ebfffed8 	bl	8002f18 <_Unwind_SetGR>
 80033b4:	e3a00007 	mov	r0, #7
 80033b8:	eaffff97 	b	800321c <__gnu_unwind_pr_common+0x204>
 80033bc:	e5953028 	ldr	r3, [r5, #40]	; 0x28
 80033c0:	e1560003 	cmp	r6, r3
 80033c4:	1affffe5 	bne	8003360 <__gnu_unwind_pr_common+0x348>
 80033c8:	e3a02000 	mov	r2, #0
 80033cc:	e585202c 	str	r2, [r5, #44]	; 0x2c
 80033d0:	e3a02004 	mov	r2, #4
 80033d4:	e2863004 	add	r3, r6, #4
 80033d8:	e5854028 	str	r4, [r5, #40]	; 0x28
 80033dc:	e5852030 	str	r2, [r5, #48]	; 0x30
 80033e0:	e5853034 	str	r3, [r5, #52]	; 0x34
 80033e4:	e5963000 	ldr	r3, [r6]
 80033e8:	e3530000 	cmp	r3, #0
 80033ec:	ba00001a 	blt	800345c <__gnu_unwind_pr_common+0x444>
 80033f0:	e3a03001 	mov	r3, #1
 80033f4:	e58d3000 	str	r3, [sp]
 80033f8:	eaffff7c 	b	80031f0 <__gnu_unwind_pr_common+0x1d8>
 80033fc:	e1a00009 	mov	r0, r9
 8003400:	e3a0100d 	mov	r1, #13
 8003404:	ebfffea0 	bl	8002e8c <_Unwind_GetGR>
 8003408:	e5850020 	str	r0, [r5, #32]
 800340c:	e59d3010 	ldr	r3, [sp, #16]
 8003410:	e5853024 	str	r3, [r5, #36]	; 0x24
 8003414:	e5856028 	str	r6, [r5, #40]	; 0x28
 8003418:	e3a00006 	mov	r0, #6
 800341c:	eaffff7e 	b	800321c <__gnu_unwind_pr_common+0x204>
 8003420:	e1a00006 	mov	r0, r6
 8003424:	ebfffced 	bl	80027e0 <selfrel_offset31>
 8003428:	e2866004 	add	r6, r6, #4
 800342c:	e1a04000 	mov	r4, r0
 8003430:	e5856038 	str	r6, [r5, #56]	; 0x38
 8003434:	e1a00005 	mov	r0, r5
 8003438:	e320f000 	nop	{0}
 800343c:	e3500000 	cmp	r0, #0
 8003440:	0affff74 	beq	8003218 <__gnu_unwind_pr_common+0x200>
 8003444:	e1a00009 	mov	r0, r9
 8003448:	e1a02004 	mov	r2, r4
 800344c:	e3a0100f 	mov	r1, #15
 8003450:	ebfffeb0 	bl	8002f18 <_Unwind_SetGR>
 8003454:	e3a00007 	mov	r0, #7
 8003458:	eaffff6f 	b	800321c <__gnu_unwind_pr_common+0x204>
 800345c:	e2840001 	add	r0, r4, #1
 8003460:	e0860100 	add	r0, r6, r0, lsl #2
 8003464:	eaffffc9 	b	8003390 <__gnu_unwind_pr_common+0x378>
 8003468:	00000000 	.word	0x00000000

0800346c <__aeabi_unwind_cpp_pr0>:
 800346c:	e3a03000 	mov	r3, #0
 8003470:	eafffee8 	b	8003018 <__gnu_unwind_pr_common>

08003474 <__aeabi_unwind_cpp_pr1>:
 8003474:	e3a03001 	mov	r3, #1
 8003478:	eafffee6 	b	8003018 <__gnu_unwind_pr_common>

0800347c <__aeabi_unwind_cpp_pr2>:
 800347c:	e3a03002 	mov	r3, #2
 8003480:	eafffee4 	b	8003018 <__gnu_unwind_pr_common>

08003484 <_Unwind_VRS_Pop>:
 8003484:	e92d43f0 	push	{r4, r5, r6, r7, r8, r9, lr}
 8003488:	e1a04000 	mov	r4, r0
 800348c:	e24ddf45 	sub	sp, sp, #276	; 0x114
 8003490:	e3510004 	cmp	r1, #4
 8003494:	979ff101 	ldrls	pc, [pc, r1, lsl #2]
 8003498:	ea000006 	b	80034b8 <_Unwind_VRS_Pop+0x34>
 800349c:	08003698 	.word	0x08003698
 80034a0:	08003530 	.word	0x08003530
 80034a4:	080034b8 	.word	0x080034b8
 80034a8:	080034b0 	.word	0x080034b0
 80034ac:	080034c8 	.word	0x080034c8
 80034b0:	e3530003 	cmp	r3, #3
 80034b4:	0a00009c 	beq	800372c <_Unwind_VRS_Pop+0x2a8>
 80034b8:	e3a00002 	mov	r0, #2
 80034bc:	e28ddf45 	add	sp, sp, #276	; 0x114
 80034c0:	e8bd43f0 	pop	{r4, r5, r6, r7, r8, r9, lr}
 80034c4:	e12fff1e 	bx	lr
 80034c8:	e3520010 	cmp	r2, #16
 80034cc:	93530000 	cmpls	r3, #0
 80034d0:	1afffff8 	bne	80034b8 <_Unwind_VRS_Pop+0x34>
 80034d4:	e5903000 	ldr	r3, [r0]
 80034d8:	e3130010 	tst	r3, #16
 80034dc:	1a0000b1 	bne	80037a8 <_Unwind_VRS_Pop+0x324>
 80034e0:	e28d5088 	add	r5, sp, #136	; 0x88
 80034e4:	e1a00005 	mov	r0, r5
 80034e8:	e58d2004 	str	r2, [sp, #4]
 80034ec:	eb00012b 	bl	80039a0 <__gnu_Unwind_Save_WMMXC>
 80034f0:	e3a03000 	mov	r3, #0
 80034f4:	e3a00001 	mov	r0, #1
 80034f8:	e5941038 	ldr	r1, [r4, #56]	; 0x38
 80034fc:	e59d2004 	ldr	r2, [sp, #4]
 8003500:	e012c310 	ands	ip, r2, r0, lsl r3
 8003504:	1591c000 	ldrne	ip, [r1]
 8003508:	1785c103 	strne	ip, [r5, r3, lsl #2]
 800350c:	e2833001 	add	r3, r3, #1
 8003510:	12811004 	addne	r1, r1, #4
 8003514:	e3530004 	cmp	r3, #4
 8003518:	1afffff8 	bne	8003500 <_Unwind_VRS_Pop+0x7c>
 800351c:	e1a00005 	mov	r0, r5
 8003520:	e5841038 	str	r1, [r4, #56]	; 0x38
 8003524:	eb000118 	bl	800398c <__gnu_Unwind_Restore_WMMXC>
 8003528:	e3a00000 	mov	r0, #0
 800352c:	eaffffe2 	b	80034bc <_Unwind_VRS_Pop+0x38>
 8003530:	e20310fb 	and	r1, r3, #251	; 0xfb
 8003534:	e3510001 	cmp	r1, #1
 8003538:	1affffde 	bne	80034b8 <_Unwind_VRS_Pop+0x34>
 800353c:	e1a06802 	lsl	r6, r2, #16
 8003540:	e1a06826 	lsr	r6, r6, #16
 8003544:	e1a08822 	lsr	r8, r2, #16
 8003548:	e3530001 	cmp	r3, #1
 800354c:	e0861008 	add	r1, r6, r8
 8003550:	0a000063 	beq	80036e4 <_Unwind_VRS_Pop+0x260>
 8003554:	e3510020 	cmp	r1, #32
 8003558:	8affffd6 	bhi	80034b8 <_Unwind_VRS_Pop+0x34>
 800355c:	e358000f 	cmp	r8, #15
 8003560:	9a000096 	bls	80037c0 <_Unwind_VRS_Pop+0x33c>
 8003564:	e1a07006 	mov	r7, r6
 8003568:	e3570000 	cmp	r7, #0
 800356c:	13530005 	cmpne	r3, #5
 8003570:	13a09001 	movne	r9, #1
 8003574:	03a09000 	moveq	r9, #0
 8003578:	1affffce 	bne	80034b8 <_Unwind_VRS_Pop+0x34>
 800357c:	e358000f 	cmp	r8, #15
 8003580:	8a000096 	bhi	80037e0 <_Unwind_VRS_Pop+0x35c>
 8003584:	e5942000 	ldr	r2, [r4]
 8003588:	e3120001 	tst	r2, #1
 800358c:	0a000093 	beq	80037e0 <_Unwind_VRS_Pop+0x35c>
 8003590:	e3530005 	cmp	r3, #5
 8003594:	e3c23001 	bic	r3, r2, #1
 8003598:	e5843000 	str	r3, [r4]
 800359c:	0a0000bb 	beq	8003890 <_Unwind_VRS_Pop+0x40c>
 80035a0:	e1a00004 	mov	r0, r4
 80035a4:	e3c22003 	bic	r2, r2, #3
 80035a8:	e4802048 	str	r2, [r0], #72	; 0x48
 80035ac:	eb0000ca 	bl	80038dc <__gnu_Unwind_Save_VFP>
 80035b0:	e3570000 	cmp	r7, #0
 80035b4:	0a000099 	beq	8003820 <_Unwind_VRS_Pop+0x39c>
 80035b8:	e5943000 	ldr	r3, [r4]
 80035bc:	e3130004 	tst	r3, #4
 80035c0:	1a0000ad 	bne	800387c <_Unwind_VRS_Pop+0x3f8>
 80035c4:	e3590000 	cmp	r9, #0
 80035c8:	1a0000b7 	bne	80038ac <_Unwind_VRS_Pop+0x428>
 80035cc:	e358000f 	cmp	r8, #15
 80035d0:	8a000004 	bhi	80035e8 <_Unwind_VRS_Pop+0x164>
 80035d4:	e28d5088 	add	r5, sp, #136	; 0x88
 80035d8:	e1a00005 	mov	r0, r5
 80035dc:	eb0000c2 	bl	80038ec <__gnu_Unwind_Save_VFP_D>
 80035e0:	e3570000 	cmp	r7, #0
 80035e4:	0a00009b 	beq	8003858 <_Unwind_VRS_Pop+0x3d4>
 80035e8:	e28d0008 	add	r0, sp, #8
 80035ec:	eb0000c2 	bl	80038fc <__gnu_Unwind_Save_VFP_D_16_to_31>
 80035f0:	e2683010 	rsb	r3, r8, #16
 80035f4:	e3530000 	cmp	r3, #0
 80035f8:	e5941038 	ldr	r1, [r4, #56]	; 0x38
 80035fc:	da00000d 	ble	8003638 <_Unwind_VRS_Pop+0x1b4>
 8003600:	e28d5088 	add	r5, sp, #136	; 0x88
 8003604:	e1a00001 	mov	r0, r1
 8003608:	e1a0e083 	lsl	lr, r3, #1
 800360c:	e0852188 	add	r2, r5, r8, lsl #3
 8003610:	e2422004 	sub	r2, r2, #4
 8003614:	e24e3001 	sub	r3, lr, #1
 8003618:	e2433001 	sub	r3, r3, #1
 800361c:	e490c004 	ldr	ip, [r0], #4
 8003620:	e3730001 	cmn	r3, #1
 8003624:	e5a2c004 	str	ip, [r2, #4]!
 8003628:	1afffffa 	bne	8003618 <_Unwind_VRS_Pop+0x194>
 800362c:	e3570000 	cmp	r7, #0
 8003630:	e081110e 	add	r1, r1, lr, lsl #2
 8003634:	0a00000d 	beq	8003670 <_Unwind_VRS_Pop+0x1ec>
 8003638:	e3580010 	cmp	r8, #16
 800363c:	21a02008 	movcs	r2, r8
 8003640:	33a02010 	movcc	r2, #16
 8003644:	e28d3e11 	add	r3, sp, #272	; 0x110
 8003648:	e0832182 	add	r2, r3, r2, lsl #3
 800364c:	e2422f62 	sub	r2, r2, #392	; 0x188
 8003650:	e1a00087 	lsl	r0, r7, #1
 8003654:	e1a03001 	mov	r3, r1
 8003658:	e2422004 	sub	r2, r2, #4
 800365c:	e0811100 	add	r1, r1, r0, lsl #2
 8003660:	e4930004 	ldr	r0, [r3], #4
 8003664:	e1530001 	cmp	r3, r1
 8003668:	e5a20004 	str	r0, [r2, #4]!
 800366c:	1afffffb 	bne	8003660 <_Unwind_VRS_Pop+0x1dc>
 8003670:	e3590000 	cmp	r9, #0
 8003674:	1a00007b 	bne	8003868 <_Unwind_VRS_Pop+0x3e4>
 8003678:	e358000f 	cmp	r8, #15
 800367c:	e5841038 	str	r1, [r4, #56]	; 0x38
 8003680:	9a00007a 	bls	8003870 <_Unwind_VRS_Pop+0x3ec>
 8003684:	e3570000 	cmp	r7, #0
 8003688:	128d0008 	addne	r0, sp, #8
 800368c:	1b000098 	blne	80038f4 <__gnu_Unwind_Restore_VFP_D_16_to_31>
 8003690:	e3a00000 	mov	r0, #0
 8003694:	eaffff88 	b	80034bc <_Unwind_VRS_Pop+0x38>
 8003698:	e3530000 	cmp	r3, #0
 800369c:	1affff85 	bne	80034b8 <_Unwind_VRS_Pop+0x34>
 80036a0:	e3a0e001 	mov	lr, #1
 80036a4:	e1a00802 	lsl	r0, r2, #16
 80036a8:	e594c038 	ldr	ip, [r4, #56]	; 0x38
 80036ac:	e1a00820 	lsr	r0, r0, #16
 80036b0:	e2841004 	add	r1, r4, #4
 80036b4:	e010531e 	ands	r5, r0, lr, lsl r3
 80036b8:	159c5000 	ldrne	r5, [ip]
 80036bc:	e2833001 	add	r3, r3, #1
 80036c0:	15815000 	strne	r5, [r1]
 80036c4:	128cc004 	addne	ip, ip, #4
 80036c8:	e3530010 	cmp	r3, #16
 80036cc:	e2811004 	add	r1, r1, #4
 80036d0:	1afffff7 	bne	80036b4 <_Unwind_VRS_Pop+0x230>
 80036d4:	e2120a02 	ands	r0, r2, #8192	; 0x2000
 80036d8:	0584c038 	streq	ip, [r4, #56]	; 0x38
 80036dc:	0affff76 	beq	80034bc <_Unwind_VRS_Pop+0x38>
 80036e0:	eaffffea 	b	8003690 <_Unwind_VRS_Pop+0x20c>
 80036e4:	e3510010 	cmp	r1, #16
 80036e8:	8affff72 	bhi	80034b8 <_Unwind_VRS_Pop+0x34>
 80036ec:	e358000f 	cmp	r8, #15
 80036f0:	91a09003 	movls	r9, r3
 80036f4:	8affff6f 	bhi	80034b8 <_Unwind_VRS_Pop+0x34>
 80036f8:	e5942000 	ldr	r2, [r4]
 80036fc:	e3120001 	tst	r2, #1
 8003700:	0a000046 	beq	8003820 <_Unwind_VRS_Pop+0x39c>
 8003704:	e3530005 	cmp	r3, #5
 8003708:	e3c23001 	bic	r3, r2, #1
 800370c:	e5843000 	str	r3, [r4]
 8003710:	e3a07000 	mov	r7, #0
 8003714:	1affffa1 	bne	80035a0 <_Unwind_VRS_Pop+0x11c>
 8003718:	e1a00004 	mov	r0, r4
 800371c:	e3833002 	orr	r3, r3, #2
 8003720:	e4803048 	str	r3, [r0], #72	; 0x48
 8003724:	eb000070 	bl	80038ec <__gnu_Unwind_Save_VFP_D>
 8003728:	eaffffa9 	b	80035d4 <_Unwind_VRS_Pop+0x150>
 800372c:	e1a07802 	lsl	r7, r2, #16
 8003730:	e1a07827 	lsr	r7, r7, #16
 8003734:	e1a06822 	lsr	r6, r2, #16
 8003738:	e0873006 	add	r3, r7, r6
 800373c:	e3530010 	cmp	r3, #16
 8003740:	8affff5c 	bhi	80034b8 <_Unwind_VRS_Pop+0x34>
 8003744:	e5903000 	ldr	r3, [r0]
 8003748:	e3130008 	tst	r3, #8
 800374c:	1a00001f 	bne	80037d0 <_Unwind_VRS_Pop+0x34c>
 8003750:	e28d5088 	add	r5, sp, #136	; 0x88
 8003754:	e1a07087 	lsl	r7, r7, #1
 8003758:	e1a00005 	mov	r0, r5
 800375c:	eb000079 	bl	8003948 <__gnu_Unwind_Save_WMMXD>
 8003760:	e3570000 	cmp	r7, #0
 8003764:	e0852186 	add	r2, r5, r6, lsl #3
 8003768:	e2473001 	sub	r3, r7, #1
 800376c:	e594c038 	ldr	ip, [r4, #56]	; 0x38
 8003770:	0a000007 	beq	8003794 <_Unwind_VRS_Pop+0x310>
 8003774:	e1a0100c 	mov	r1, ip
 8003778:	e2422004 	sub	r2, r2, #4
 800377c:	e2433001 	sub	r3, r3, #1
 8003780:	e4910004 	ldr	r0, [r1], #4
 8003784:	e3730001 	cmn	r3, #1
 8003788:	e5a20004 	str	r0, [r2, #4]!
 800378c:	1afffffa 	bne	800377c <_Unwind_VRS_Pop+0x2f8>
 8003790:	e08cc107 	add	ip, ip, r7, lsl #2
 8003794:	e1a00005 	mov	r0, r5
 8003798:	e584c038 	str	ip, [r4, #56]	; 0x38
 800379c:	eb000058 	bl	8003904 <__gnu_Unwind_Restore_WMMXD>
 80037a0:	e3a00000 	mov	r0, #0
 80037a4:	eaffff44 	b	80034bc <_Unwind_VRS_Pop+0x38>
 80037a8:	e3c33010 	bic	r3, r3, #16
 80037ac:	e48031d0 	str	r3, [r0], #464	; 0x1d0
 80037b0:	e58d2004 	str	r2, [sp, #4]
 80037b4:	eb000079 	bl	80039a0 <__gnu_Unwind_Save_WMMXC>
 80037b8:	e59d2004 	ldr	r2, [sp, #4]
 80037bc:	eaffff47 	b	80034e0 <_Unwind_VRS_Pop+0x5c>
 80037c0:	e3510010 	cmp	r1, #16
 80037c4:	9a000013 	bls	8003818 <_Unwind_VRS_Pop+0x394>
 80037c8:	e2417010 	sub	r7, r1, #16
 80037cc:	eaffff65 	b	8003568 <_Unwind_VRS_Pop+0xe4>
 80037d0:	e3c33008 	bic	r3, r3, #8
 80037d4:	e4803150 	str	r3, [r0], #336	; 0x150
 80037d8:	eb00005a 	bl	8003948 <__gnu_Unwind_Save_WMMXD>
 80037dc:	eaffffdb 	b	8003750 <_Unwind_VRS_Pop+0x2cc>
 80037e0:	e3570000 	cmp	r7, #0
 80037e4:	1affff73 	bne	80035b8 <_Unwind_VRS_Pop+0x134>
 80037e8:	e358000f 	cmp	r8, #15
 80037ec:	93a09000 	movls	r9, #0
 80037f0:	91a07009 	movls	r7, r9
 80037f4:	9affff76 	bls	80035d4 <_Unwind_VRS_Pop+0x150>
 80037f8:	e3a09000 	mov	r9, #0
 80037fc:	e3560000 	cmp	r6, #0
 8003800:	e1a03006 	mov	r3, r6
 8003804:	e5941038 	ldr	r1, [r4, #56]	; 0x38
 8003808:	11a07009 	movne	r7, r9
 800380c:	1affff7b 	bne	8003600 <_Unwind_VRS_Pop+0x17c>
 8003810:	e1a07006 	mov	r7, r6
 8003814:	eaffff97 	b	8003678 <_Unwind_VRS_Pop+0x1f4>
 8003818:	e3a09000 	mov	r9, #0
 800381c:	eaffffb5 	b	80036f8 <_Unwind_VRS_Pop+0x274>
 8003820:	e3590000 	cmp	r9, #0
 8003824:	0affffef 	beq	80037e8 <_Unwind_VRS_Pop+0x364>
 8003828:	e28d5088 	add	r5, sp, #136	; 0x88
 800382c:	e1a00005 	mov	r0, r5
 8003830:	eb000029 	bl	80038dc <__gnu_Unwind_Save_VFP>
 8003834:	e2563000 	subs	r3, r6, #0
 8003838:	e5941038 	ldr	r1, [r4, #56]	; 0x38
 800383c:	13a07000 	movne	r7, #0
 8003840:	1affff6f 	bne	8003604 <_Unwind_VRS_Pop+0x180>
 8003844:	e2811004 	add	r1, r1, #4
 8003848:	e5841038 	str	r1, [r4, #56]	; 0x38
 800384c:	e1a00005 	mov	r0, r5
 8003850:	eb00001f 	bl	80038d4 <__gnu_Unwind_Restore_VFP>
 8003854:	eaffff8d 	b	8003690 <_Unwind_VRS_Pop+0x20c>
 8003858:	e2563000 	subs	r3, r6, #0
 800385c:	e5941038 	ldr	r1, [r4, #56]	; 0x38
 8003860:	1affff67 	bne	8003604 <_Unwind_VRS_Pop+0x180>
 8003864:	eaffff81 	b	8003670 <_Unwind_VRS_Pop+0x1ec>
 8003868:	e28d5088 	add	r5, sp, #136	; 0x88
 800386c:	eafffff4 	b	8003844 <_Unwind_VRS_Pop+0x3c0>
 8003870:	e28d0088 	add	r0, sp, #136	; 0x88
 8003874:	eb00001a 	bl	80038e4 <__gnu_Unwind_Restore_VFP_D>
 8003878:	eaffff81 	b	8003684 <_Unwind_VRS_Pop+0x200>
 800387c:	e1a00004 	mov	r0, r4
 8003880:	e3c33004 	bic	r3, r3, #4
 8003884:	e48030d0 	str	r3, [r0], #208	; 0xd0
 8003888:	eb00001b 	bl	80038fc <__gnu_Unwind_Save_VFP_D_16_to_31>
 800388c:	eaffff4c 	b	80035c4 <_Unwind_VRS_Pop+0x140>
 8003890:	e1a00004 	mov	r0, r4
 8003894:	e3833002 	orr	r3, r3, #2
 8003898:	e4803048 	str	r3, [r0], #72	; 0x48
 800389c:	eb000012 	bl	80038ec <__gnu_Unwind_Save_VFP_D>
 80038a0:	e3570000 	cmp	r7, #0
 80038a4:	1affff43 	bne	80035b8 <_Unwind_VRS_Pop+0x134>
 80038a8:	eaffff49 	b	80035d4 <_Unwind_VRS_Pop+0x150>
 80038ac:	e28d0088 	add	r0, sp, #136	; 0x88
 80038b0:	eb000009 	bl	80038dc <__gnu_Unwind_Save_VFP>
 80038b4:	eaffff4d 	b	80035f0 <_Unwind_VRS_Pop+0x16c>

080038b8 <__restore_core_regs>:
 80038b8:	e2801034 	add	r1, r0, #52	; 0x34
 80038bc:	e8910038 	ldm	r1, {r3, r4, r5}
 80038c0:	e1a02005 	mov	r2, r5
 80038c4:	e92d001c 	push	{r2, r3, r4}
 80038c8:	e8900fff 	ldm	r0, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp}
 80038cc:	e89d7000 	ldm	sp, {ip, sp, lr}
 80038d0:	e12fff1c 	bx	ip

080038d4 <__gnu_Unwind_Restore_VFP>:
 80038d4:	ec900b21 	fldmiax	r0, {d0-d15}	;@ Deprecated
 80038d8:	e12fff1e 	bx	lr

080038dc <__gnu_Unwind_Save_VFP>:
 80038dc:	ec800b21 	fstmiax	r0, {d0-d15}	;@ Deprecated
 80038e0:	e12fff1e 	bx	lr

080038e4 <__gnu_Unwind_Restore_VFP_D>:
 80038e4:	ec900b20 	vldmia	r0, {d0-d15}
 80038e8:	e12fff1e 	bx	lr

080038ec <__gnu_Unwind_Save_VFP_D>:
 80038ec:	ec800b20 	vstmia	r0, {d0-d15}
 80038f0:	e12fff1e 	bx	lr

080038f4 <__gnu_Unwind_Restore_VFP_D_16_to_31>:
 80038f4:	ecd00b20 	vldmia	r0, {d16-d31}
 80038f8:	e12fff1e 	bx	lr

080038fc <__gnu_Unwind_Save_VFP_D_16_to_31>:
 80038fc:	ecc00b20 	vstmia	r0, {d16-d31}
 8003900:	e12fff1e 	bx	lr

08003904 <__gnu_Unwind_Restore_WMMXD>:
 8003904:	ecf00102 	ldfe	f0, [r0], #8
 8003908:	ecf01102 	ldfe	f1, [r0], #8
 800390c:	ecf02102 	ldfe	f2, [r0], #8
 8003910:	ecf03102 	ldfe	f3, [r0], #8
 8003914:	ecf04102 	ldfe	f4, [r0], #8
 8003918:	ecf05102 	ldfe	f5, [r0], #8
 800391c:	ecf06102 	ldfe	f6, [r0], #8
 8003920:	ecf07102 	ldfe	f7, [r0], #8
 8003924:	ecf08102 	ldfp	f0, [r0], #8
 8003928:	ecf09102 	ldfp	f1, [r0], #8
 800392c:	ecf0a102 	ldfp	f2, [r0], #8
 8003930:	ecf0b102 	ldfp	f3, [r0], #8
 8003934:	ecf0c102 	ldfp	f4, [r0], #8
 8003938:	ecf0d102 	ldfp	f5, [r0], #8
 800393c:	ecf0e102 	ldfp	f6, [r0], #8
 8003940:	ecf0f102 	ldfp	f7, [r0], #8
 8003944:	e12fff1e 	bx	lr

08003948 <__gnu_Unwind_Save_WMMXD>:
 8003948:	ece00102 	stfe	f0, [r0], #8
 800394c:	ece01102 	stfe	f1, [r0], #8
 8003950:	ece02102 	stfe	f2, [r0], #8
 8003954:	ece03102 	stfe	f3, [r0], #8
 8003958:	ece04102 	stfe	f4, [r0], #8
 800395c:	ece05102 	stfe	f5, [r0], #8
 8003960:	ece06102 	stfe	f6, [r0], #8
 8003964:	ece07102 	stfe	f7, [r0], #8
 8003968:	ece08102 	stfp	f0, [r0], #8
 800396c:	ece09102 	stfp	f1, [r0], #8
 8003970:	ece0a102 	stfp	f2, [r0], #8
 8003974:	ece0b102 	stfp	f3, [r0], #8
 8003978:	ece0c102 	stfp	f4, [r0], #8
 800397c:	ece0d102 	stfp	f5, [r0], #8
 8003980:	ece0e102 	stfp	f6, [r0], #8
 8003984:	ece0f102 	stfp	f7, [r0], #8
 8003988:	e12fff1e 	bx	lr

0800398c <__gnu_Unwind_Restore_WMMXC>:
 800398c:	fcb08101 	ldc2	1, cr8, [r0], #4
 8003990:	fcb09101 	ldc2	1, cr9, [r0], #4
 8003994:	fcb0a101 	ldc2	1, cr10, [r0], #4
 8003998:	fcb0b101 	ldc2	1, cr11, [r0], #4
 800399c:	e12fff1e 	bx	lr

080039a0 <__gnu_Unwind_Save_WMMXC>:
 80039a0:	fca08101 	stc2	1, cr8, [r0], #4
 80039a4:	fca09101 	stc2	1, cr9, [r0], #4
 80039a8:	fca0a101 	stc2	1, cr10, [r0], #4
 80039ac:	fca0b101 	stc2	1, cr11, [r0], #4
 80039b0:	e12fff1e 	bx	lr

080039b4 <_Unwind_RaiseException>:
 80039b4:	e92de000 	push	{sp, lr, pc}
 80039b8:	e92d1fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
 80039bc:	e3a03000 	mov	r3, #0
 80039c0:	e92d000c 	push	{r2, r3}
 80039c4:	e28d1004 	add	r1, sp, #4
 80039c8:	ebfffcb8 	bl	8002cb0 <__gnu_Unwind_RaiseException>
 80039cc:	e59de040 	ldr	lr, [sp, #64]	; 0x40
 80039d0:	e28dd048 	add	sp, sp, #72	; 0x48
 80039d4:	e12fff1e 	bx	lr

080039d8 <_Unwind_Resume>:
 80039d8:	e92de000 	push	{sp, lr, pc}
 80039dc:	e92d1fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
 80039e0:	e3a03000 	mov	r3, #0
 80039e4:	e92d000c 	push	{r2, r3}
 80039e8:	e28d1004 	add	r1, sp, #4
 80039ec:	ebfffce4 	bl	8002d84 <__gnu_Unwind_Resume>
 80039f0:	e59de040 	ldr	lr, [sp, #64]	; 0x40
 80039f4:	e28dd048 	add	sp, sp, #72	; 0x48
 80039f8:	e12fff1e 	bx	lr

080039fc <_Unwind_Resume_or_Rethrow>:
 80039fc:	e92de000 	push	{sp, lr, pc}
 8003a00:	e92d1fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
 8003a04:	e3a03000 	mov	r3, #0
 8003a08:	e92d000c 	push	{r2, r3}
 8003a0c:	e28d1004 	add	r1, sp, #4
 8003a10:	ebfffcf8 	bl	8002df8 <__gnu_Unwind_Resume_or_Rethrow>
 8003a14:	e59de040 	ldr	lr, [sp, #64]	; 0x40
 8003a18:	e28dd048 	add	sp, sp, #72	; 0x48
 8003a1c:	e12fff1e 	bx	lr

08003a20 <_Unwind_ForcedUnwind>:
 8003a20:	e92de000 	push	{sp, lr, pc}
 8003a24:	e92d1fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
 8003a28:	e3a03000 	mov	r3, #0
 8003a2c:	e92d000c 	push	{r2, r3}
 8003a30:	e28d3004 	add	r3, sp, #4
 8003a34:	ebfffcc9 	bl	8002d60 <__gnu_Unwind_ForcedUnwind>
 8003a38:	e59de040 	ldr	lr, [sp, #64]	; 0x40
 8003a3c:	e28dd048 	add	sp, sp, #72	; 0x48
 8003a40:	e12fff1e 	bx	lr

08003a44 <_Unwind_Backtrace>:
 8003a44:	e92de000 	push	{sp, lr, pc}
 8003a48:	e92d1fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
 8003a4c:	e3a03000 	mov	r3, #0
 8003a50:	e92d000c 	push	{r2, r3}
 8003a54:	e28d2004 	add	r2, sp, #4
 8003a58:	ebfffd3b 	bl	8002f4c <__gnu_Unwind_Backtrace>
 8003a5c:	e59de040 	ldr	lr, [sp, #64]	; 0x40
 8003a60:	e28dd048 	add	sp, sp, #72	; 0x48
 8003a64:	e12fff1e 	bx	lr

08003a68 <next_unwind_byte>:
 8003a68:	e5d03008 	ldrb	r3, [r0, #8]
 8003a6c:	e3530000 	cmp	r3, #0
 8003a70:	1a000004 	bne	8003a88 <next_unwind_byte+0x20>
 8003a74:	e5d03009 	ldrb	r3, [r0, #9]
 8003a78:	e3530000 	cmp	r3, #0
 8003a7c:	1a000008 	bne	8003aa4 <next_unwind_byte+0x3c>
 8003a80:	e3a000b0 	mov	r0, #176	; 0xb0
 8003a84:	e12fff1e 	bx	lr
 8003a88:	e2433001 	sub	r3, r3, #1
 8003a8c:	e5c03008 	strb	r3, [r0, #8]
 8003a90:	e5903000 	ldr	r3, [r0]
 8003a94:	e1a02403 	lsl	r2, r3, #8
 8003a98:	e5802000 	str	r2, [r0]
 8003a9c:	e1a00c23 	lsr	r0, r3, #24
 8003aa0:	e12fff1e 	bx	lr
 8003aa4:	e3a01003 	mov	r1, #3
 8003aa8:	e5902004 	ldr	r2, [r0, #4]
 8003aac:	e2433001 	sub	r3, r3, #1
 8003ab0:	e5c03009 	strb	r3, [r0, #9]
 8003ab4:	e282c004 	add	ip, r2, #4
 8003ab8:	e5923000 	ldr	r3, [r2]
 8003abc:	e580c004 	str	ip, [r0, #4]
 8003ac0:	e5c01008 	strb	r1, [r0, #8]
 8003ac4:	eafffff2 	b	8003a94 <next_unwind_byte+0x2c>

08003ac8 <_Unwind_GetGR.constprop.0>:
 8003ac8:	e3a01000 	mov	r1, #0
 8003acc:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 8003ad0:	e24dd014 	sub	sp, sp, #20
 8003ad4:	e28d200c 	add	r2, sp, #12
 8003ad8:	e58d2000 	str	r2, [sp]
 8003adc:	e1a03001 	mov	r3, r1
 8003ae0:	e3a0200c 	mov	r2, #12
 8003ae4:	ebfffcd1 	bl	8002e30 <_Unwind_VRS_Get>
 8003ae8:	e59d000c 	ldr	r0, [sp, #12]
 8003aec:	e28dd014 	add	sp, sp, #20
 8003af0:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 8003af4:	e12fff1e 	bx	lr

08003af8 <unwind_UCB_from_context>:
 8003af8:	eafffff2 	b	8003ac8 <_Unwind_GetGR.constprop.0>

08003afc <__gnu_unwind_execute>:
 8003afc:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
 8003b00:	e1a07000 	mov	r7, r0
 8003b04:	e1a05001 	mov	r5, r1
 8003b08:	e3a08000 	mov	r8, #0
 8003b0c:	e24dd010 	sub	sp, sp, #16
 8003b10:	e1a00005 	mov	r0, r5
 8003b14:	ebffffd3 	bl	8003a68 <next_unwind_byte>
 8003b18:	e35000b0 	cmp	r0, #176	; 0xb0
 8003b1c:	e1a04000 	mov	r4, r0
 8003b20:	0a00007d 	beq	8003d1c <__gnu_unwind_execute+0x220>
 8003b24:	e2101080 	ands	r1, r0, #128	; 0x80
 8003b28:	0a00001a 	beq	8003b98 <__gnu_unwind_execute+0x9c>
 8003b2c:	e20030f0 	and	r3, r0, #240	; 0xf0
 8003b30:	e3530080 	cmp	r3, #128	; 0x80
 8003b34:	0a000054 	beq	8003c8c <__gnu_unwind_execute+0x190>
 8003b38:	e3530090 	cmp	r3, #144	; 0x90
 8003b3c:	0a00002b 	beq	8003bf0 <__gnu_unwind_execute+0xf4>
 8003b40:	e35300a0 	cmp	r3, #160	; 0xa0
 8003b44:	0a000034 	beq	8003c1c <__gnu_unwind_execute+0x120>
 8003b48:	e35300b0 	cmp	r3, #176	; 0xb0
 8003b4c:	0a000040 	beq	8003c54 <__gnu_unwind_execute+0x158>
 8003b50:	e35300c0 	cmp	r3, #192	; 0xc0
 8003b54:	0a00005e 	beq	8003cd4 <__gnu_unwind_execute+0x1d8>
 8003b58:	e20030f8 	and	r3, r0, #248	; 0xf8
 8003b5c:	e35300d0 	cmp	r3, #208	; 0xd0
 8003b60:	1a000008 	bne	8003b88 <__gnu_unwind_execute+0x8c>
 8003b64:	e2002007 	and	r2, r0, #7
 8003b68:	e2822001 	add	r2, r2, #1
 8003b6c:	e3822702 	orr	r2, r2, #524288	; 0x80000
 8003b70:	e1a00007 	mov	r0, r7
 8003b74:	e3a01001 	mov	r1, #1
 8003b78:	e3a03005 	mov	r3, #5
 8003b7c:	ebfffe40 	bl	8003484 <_Unwind_VRS_Pop>
 8003b80:	e3500000 	cmp	r0, #0
 8003b84:	0affffe1 	beq	8003b10 <__gnu_unwind_execute+0x14>
 8003b88:	e3a00009 	mov	r0, #9
 8003b8c:	e28dd010 	add	sp, sp, #16
 8003b90:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
 8003b94:	e12fff1e 	bx	lr
 8003b98:	e28d300c 	add	r3, sp, #12
 8003b9c:	e1a06100 	lsl	r6, r0, #2
 8003ba0:	e58d3000 	str	r3, [sp]
 8003ba4:	e1a00007 	mov	r0, r7
 8003ba8:	e1a03001 	mov	r3, r1
 8003bac:	e3a0200d 	mov	r2, #13
 8003bb0:	ebfffc9e 	bl	8002e30 <_Unwind_VRS_Get>
 8003bb4:	e20660ff 	and	r6, r6, #255	; 0xff
 8003bb8:	e59d300c 	ldr	r3, [sp, #12]
 8003bbc:	e2866004 	add	r6, r6, #4
 8003bc0:	e3140040 	tst	r4, #64	; 0x40
 8003bc4:	10666003 	rsbne	r6, r6, r3
 8003bc8:	00836006 	addeq	r6, r3, r6
 8003bcc:	e58d600c 	str	r6, [sp, #12]
 8003bd0:	e3a01000 	mov	r1, #0
 8003bd4:	e28d300c 	add	r3, sp, #12
 8003bd8:	e58d3000 	str	r3, [sp]
 8003bdc:	e1a00007 	mov	r0, r7
 8003be0:	e1a03001 	mov	r3, r1
 8003be4:	e3a0200d 	mov	r2, #13
 8003be8:	ebfffcb3 	bl	8002ebc <_Unwind_VRS_Set>
 8003bec:	eaffffc7 	b	8003b10 <__gnu_unwind_execute+0x14>
 8003bf0:	e200300d 	and	r3, r0, #13
 8003bf4:	e353000d 	cmp	r3, #13
 8003bf8:	0affffe2 	beq	8003b88 <__gnu_unwind_execute+0x8c>
 8003bfc:	e3a01000 	mov	r1, #0
 8003c00:	e28d300c 	add	r3, sp, #12
 8003c04:	e58d3000 	str	r3, [sp]
 8003c08:	e200200f 	and	r2, r0, #15
 8003c0c:	e1a03001 	mov	r3, r1
 8003c10:	e1a00007 	mov	r0, r7
 8003c14:	ebfffc85 	bl	8002e30 <_Unwind_VRS_Get>
 8003c18:	eaffffec 	b	8003bd0 <__gnu_unwind_execute+0xd4>
 8003c1c:	e1e02000 	mvn	r2, r0
 8003c20:	e3a03eff 	mov	r3, #4080	; 0xff0
 8003c24:	e3a01000 	mov	r1, #0
 8003c28:	e2022007 	and	r2, r2, #7
 8003c2c:	e1a02253 	asr	r2, r3, r2
 8003c30:	e3100008 	tst	r0, #8
 8003c34:	e0022003 	and	r2, r2, r3
 8003c38:	13822901 	orrne	r2, r2, #16384	; 0x4000
 8003c3c:	e1a03001 	mov	r3, r1
 8003c40:	e1a00007 	mov	r0, r7
 8003c44:	ebfffe0e 	bl	8003484 <_Unwind_VRS_Pop>
 8003c48:	e3500000 	cmp	r0, #0
 8003c4c:	1affffcd 	bne	8003b88 <__gnu_unwind_execute+0x8c>
 8003c50:	eaffffae 	b	8003b10 <__gnu_unwind_execute+0x14>
 8003c54:	e35000b1 	cmp	r0, #177	; 0xb1
 8003c58:	0a000041 	beq	8003d64 <__gnu_unwind_execute+0x268>
 8003c5c:	e35000b2 	cmp	r0, #178	; 0xb2
 8003c60:	0a00004b 	beq	8003d94 <__gnu_unwind_execute+0x298>
 8003c64:	e35000b3 	cmp	r0, #179	; 0xb3
 8003c68:	0a00006b 	beq	8003e1c <__gnu_unwind_execute+0x320>
 8003c6c:	e20030fc 	and	r3, r0, #252	; 0xfc
 8003c70:	e35300b4 	cmp	r3, #180	; 0xb4
 8003c74:	0affffc3 	beq	8003b88 <__gnu_unwind_execute+0x8c>
 8003c78:	e3a01001 	mov	r1, #1
 8003c7c:	e2002007 	and	r2, r0, #7
 8003c80:	e0822001 	add	r2, r2, r1
 8003c84:	e3822702 	orr	r2, r2, #524288	; 0x80000
 8003c88:	eaffffeb 	b	8003c3c <__gnu_unwind_execute+0x140>
 8003c8c:	e1a00005 	mov	r0, r5
 8003c90:	ebffff74 	bl	8003a68 <next_unwind_byte>
 8003c94:	e1a04404 	lsl	r4, r4, #8
 8003c98:	e1804004 	orr	r4, r0, r4
 8003c9c:	e3540902 	cmp	r4, #32768	; 0x8000
 8003ca0:	0affffb8 	beq	8003b88 <__gnu_unwind_execute+0x8c>
 8003ca4:	e3a01000 	mov	r1, #0
 8003ca8:	e1a02a04 	lsl	r2, r4, #20
 8003cac:	e1a03001 	mov	r3, r1
 8003cb0:	e1a02822 	lsr	r2, r2, #16
 8003cb4:	e1a00007 	mov	r0, r7
 8003cb8:	ebfffdf1 	bl	8003484 <_Unwind_VRS_Pop>
 8003cbc:	e3500000 	cmp	r0, #0
 8003cc0:	e1a04204 	lsl	r4, r4, #4
 8003cc4:	1affffaf 	bne	8003b88 <__gnu_unwind_execute+0x8c>
 8003cc8:	e3140902 	tst	r4, #32768	; 0x8000
 8003ccc:	13a08001 	movne	r8, #1
 8003cd0:	eaffff8e 	b	8003b10 <__gnu_unwind_execute+0x14>
 8003cd4:	e35000c6 	cmp	r0, #198	; 0xc6
 8003cd8:	0a000057 	beq	8003e3c <__gnu_unwind_execute+0x340>
 8003cdc:	e35000c7 	cmp	r0, #199	; 0xc7
 8003ce0:	0a00005d 	beq	8003e5c <__gnu_unwind_execute+0x360>
 8003ce4:	e20030f8 	and	r3, r0, #248	; 0xf8
 8003ce8:	e35300c0 	cmp	r3, #192	; 0xc0
 8003cec:	0a000066 	beq	8003e8c <__gnu_unwind_execute+0x390>
 8003cf0:	e35000c8 	cmp	r0, #200	; 0xc8
 8003cf4:	0a000069 	beq	8003ea0 <__gnu_unwind_execute+0x3a4>
 8003cf8:	e35000c9 	cmp	r0, #201	; 0xc9
 8003cfc:	1affffa1 	bne	8003b88 <__gnu_unwind_execute+0x8c>
 8003d00:	e1a00005 	mov	r0, r5
 8003d04:	ebffff57 	bl	8003a68 <next_unwind_byte>
 8003d08:	e200200f 	and	r2, r0, #15
 8003d0c:	e2822001 	add	r2, r2, #1
 8003d10:	e20000f0 	and	r0, r0, #240	; 0xf0
 8003d14:	e1822600 	orr	r2, r2, r0, lsl #12
 8003d18:	eaffff94 	b	8003b70 <__gnu_unwind_execute+0x74>
 8003d1c:	e3580000 	cmp	r8, #0
 8003d20:	13a00000 	movne	r0, #0
 8003d24:	1affff98 	bne	8003b8c <__gnu_unwind_execute+0x90>
 8003d28:	e28d400c 	add	r4, sp, #12
 8003d2c:	e1a01008 	mov	r1, r8
 8003d30:	e3a0200e 	mov	r2, #14
 8003d34:	e1a03008 	mov	r3, r8
 8003d38:	e58d4000 	str	r4, [sp]
 8003d3c:	e1a00007 	mov	r0, r7
 8003d40:	ebfffc3a 	bl	8002e30 <_Unwind_VRS_Get>
 8003d44:	e58d4000 	str	r4, [sp]
 8003d48:	e1a00007 	mov	r0, r7
 8003d4c:	e1a01008 	mov	r1, r8
 8003d50:	e3a0200f 	mov	r2, #15
 8003d54:	e1a03008 	mov	r3, r8
 8003d58:	ebfffc57 	bl	8002ebc <_Unwind_VRS_Set>
 8003d5c:	e1a00008 	mov	r0, r8
 8003d60:	eaffff89 	b	8003b8c <__gnu_unwind_execute+0x90>
 8003d64:	e1a00005 	mov	r0, r5
 8003d68:	ebffff3e 	bl	8003a68 <next_unwind_byte>
 8003d6c:	e2502000 	subs	r2, r0, #0
 8003d70:	0affff84 	beq	8003b88 <__gnu_unwind_execute+0x8c>
 8003d74:	e21210f0 	ands	r1, r2, #240	; 0xf0
 8003d78:	1affff82 	bne	8003b88 <__gnu_unwind_execute+0x8c>
 8003d7c:	e1a00007 	mov	r0, r7
 8003d80:	e1a03001 	mov	r3, r1
 8003d84:	ebfffdbe 	bl	8003484 <_Unwind_VRS_Pop>
 8003d88:	e3500000 	cmp	r0, #0
 8003d8c:	1affff7d 	bne	8003b88 <__gnu_unwind_execute+0x8c>
 8003d90:	eaffff5e 	b	8003b10 <__gnu_unwind_execute+0x14>
 8003d94:	e3a01000 	mov	r1, #0
 8003d98:	e28d300c 	add	r3, sp, #12
 8003d9c:	e58d3000 	str	r3, [sp]
 8003da0:	e3a0200d 	mov	r2, #13
 8003da4:	e1a03001 	mov	r3, r1
 8003da8:	e1a00007 	mov	r0, r7
 8003dac:	ebfffc1f 	bl	8002e30 <_Unwind_VRS_Get>
 8003db0:	e1a00005 	mov	r0, r5
 8003db4:	ebffff2b 	bl	8003a68 <next_unwind_byte>
 8003db8:	e3100080 	tst	r0, #128	; 0x80
 8003dbc:	e3a04002 	mov	r4, #2
 8003dc0:	0a000008 	beq	8003de8 <__gnu_unwind_execute+0x2ec>
 8003dc4:	e59d300c 	ldr	r3, [sp, #12]
 8003dc8:	e200007f 	and	r0, r0, #127	; 0x7f
 8003dcc:	e0833410 	add	r3, r3, r0, lsl r4
 8003dd0:	e1a00005 	mov	r0, r5
 8003dd4:	e58d300c 	str	r3, [sp, #12]
 8003dd8:	ebffff22 	bl	8003a68 <next_unwind_byte>
 8003ddc:	e3100080 	tst	r0, #128	; 0x80
 8003de0:	e2844007 	add	r4, r4, #7
 8003de4:	1afffff6 	bne	8003dc4 <__gnu_unwind_execute+0x2c8>
 8003de8:	e3a01000 	mov	r1, #0
 8003dec:	e59d300c 	ldr	r3, [sp, #12]
 8003df0:	e28d200c 	add	r2, sp, #12
 8003df4:	e200007f 	and	r0, r0, #127	; 0x7f
 8003df8:	e2833f81 	add	r3, r3, #516	; 0x204
 8003dfc:	e0834410 	add	r4, r3, r0, lsl r4
 8003e00:	e58d2000 	str	r2, [sp]
 8003e04:	e1a03001 	mov	r3, r1
 8003e08:	e1a00007 	mov	r0, r7
 8003e0c:	e3a0200d 	mov	r2, #13
 8003e10:	e58d400c 	str	r4, [sp, #12]
 8003e14:	ebfffc28 	bl	8002ebc <_Unwind_VRS_Set>
 8003e18:	eaffff3c 	b	8003b10 <__gnu_unwind_execute+0x14>
 8003e1c:	e1a00005 	mov	r0, r5
 8003e20:	ebffff10 	bl	8003a68 <next_unwind_byte>
 8003e24:	e3a01001 	mov	r1, #1
 8003e28:	e200200f 	and	r2, r0, #15
 8003e2c:	e0822001 	add	r2, r2, r1
 8003e30:	e20000f0 	and	r0, r0, #240	; 0xf0
 8003e34:	e1822600 	orr	r2, r2, r0, lsl #12
 8003e38:	eaffff7f 	b	8003c3c <__gnu_unwind_execute+0x140>
 8003e3c:	e1a00005 	mov	r0, r5
 8003e40:	ebffff08 	bl	8003a68 <next_unwind_byte>
 8003e44:	e200200f 	and	r2, r0, #15
 8003e48:	e2822001 	add	r2, r2, #1
 8003e4c:	e20000f0 	and	r0, r0, #240	; 0xf0
 8003e50:	e3a01003 	mov	r1, #3
 8003e54:	e1822600 	orr	r2, r2, r0, lsl #12
 8003e58:	eaffff77 	b	8003c3c <__gnu_unwind_execute+0x140>
 8003e5c:	e1a00005 	mov	r0, r5
 8003e60:	ebffff00 	bl	8003a68 <next_unwind_byte>
 8003e64:	e2502000 	subs	r2, r0, #0
 8003e68:	0affff46 	beq	8003b88 <__gnu_unwind_execute+0x8c>
 8003e6c:	e21230f0 	ands	r3, r2, #240	; 0xf0
 8003e70:	1affff44 	bne	8003b88 <__gnu_unwind_execute+0x8c>
 8003e74:	e1a00007 	mov	r0, r7
 8003e78:	e3a01004 	mov	r1, #4
 8003e7c:	ebfffd80 	bl	8003484 <_Unwind_VRS_Pop>
 8003e80:	e3500000 	cmp	r0, #0
 8003e84:	1affff3f 	bne	8003b88 <__gnu_unwind_execute+0x8c>
 8003e88:	eaffff20 	b	8003b10 <__gnu_unwind_execute+0x14>
 8003e8c:	e200200f 	and	r2, r0, #15
 8003e90:	e2822001 	add	r2, r2, #1
 8003e94:	e3a01003 	mov	r1, #3
 8003e98:	e382280a 	orr	r2, r2, #655360	; 0xa0000
 8003e9c:	eaffff66 	b	8003c3c <__gnu_unwind_execute+0x140>
 8003ea0:	e1a00005 	mov	r0, r5
 8003ea4:	ebfffeef 	bl	8003a68 <next_unwind_byte>
 8003ea8:	e20020f0 	and	r2, r0, #240	; 0xf0
 8003eac:	e200300f 	and	r3, r0, #15
 8003eb0:	e2822010 	add	r2, r2, #16
 8003eb4:	e2833001 	add	r3, r3, #1
 8003eb8:	e1832602 	orr	r2, r3, r2, lsl #12
 8003ebc:	eaffff2b 	b	8003b70 <__gnu_unwind_execute+0x74>

08003ec0 <__gnu_unwind_frame>:
 8003ec0:	e3a0c003 	mov	ip, #3
 8003ec4:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 8003ec8:	e590304c 	ldr	r3, [r0, #76]	; 0x4c
 8003ecc:	e24dd014 	sub	sp, sp, #20
 8003ed0:	e5932004 	ldr	r2, [r3, #4]
 8003ed4:	e5cdc00c 	strb	ip, [sp, #12]
 8003ed8:	e5d3c007 	ldrb	ip, [r3, #7]
 8003edc:	e1a02402 	lsl	r2, r2, #8
 8003ee0:	e2833008 	add	r3, r3, #8
 8003ee4:	e1a00001 	mov	r0, r1
 8003ee8:	e28d1004 	add	r1, sp, #4
 8003eec:	e58d2004 	str	r2, [sp, #4]
 8003ef0:	e5cdc00d 	strb	ip, [sp, #13]
 8003ef4:	e58d3008 	str	r3, [sp, #8]
 8003ef8:	ebfffeff 	bl	8003afc <__gnu_unwind_execute>
 8003efc:	e28dd014 	add	sp, sp, #20
 8003f00:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 8003f04:	e12fff1e 	bx	lr

08003f08 <_Unwind_GetRegionStart>:
 8003f08:	e92d4008 	push	{r3, lr}
 8003f0c:	ebfffef9 	bl	8003af8 <unwind_UCB_from_context>
 8003f10:	e8bd4008 	pop	{r3, lr}
 8003f14:	e5900048 	ldr	r0, [r0, #72]	; 0x48
 8003f18:	e12fff1e 	bx	lr

08003f1c <_Unwind_GetLanguageSpecificData>:
 8003f1c:	e92d4008 	push	{r3, lr}
 8003f20:	ebfffef4 	bl	8003af8 <unwind_UCB_from_context>
 8003f24:	e590304c 	ldr	r3, [r0, #76]	; 0x4c
 8003f28:	e5d30007 	ldrb	r0, [r3, #7]
 8003f2c:	e0830100 	add	r0, r3, r0, lsl #2
 8003f30:	e2800008 	add	r0, r0, #8
 8003f34:	e8bd4008 	pop	{r3, lr}
 8003f38:	e12fff1e 	bx	lr

08003f3c <_Unwind_GetDataRelBase>:
 8003f3c:	e92d4008 	push	{r3, lr}
 8003f40:	eb000001 	bl	8003f4c <abort>

08003f44 <_Unwind_GetTextRelBase>:
 8003f44:	e92d4008 	push	{r3, lr}
 8003f48:	ebffffff 	bl	8003f4c <abort>

08003f4c <abort>:
 8003f4c:	e92d4008 	push	{r3, lr}
 8003f50:	e3a00006 	mov	r0, #6
 8003f54:	eb000063 	bl	80040e8 <raise>
 8003f58:	e3a00001 	mov	r0, #1
 8003f5c:	eb000086 	bl	800417c <_exit>

08003f60 <memcpy>:
 8003f60:	e352000f 	cmp	r2, #15
 8003f64:	e92d4070 	push	{r4, r5, r6, lr}
 8003f68:	9a000029 	bls	8004014 <memcpy+0xb4>
 8003f6c:	e1803001 	orr	r3, r0, r1
 8003f70:	e3130003 	tst	r3, #3
 8003f74:	1a000031 	bne	8004040 <memcpy+0xe0>
 8003f78:	e1a0e002 	mov	lr, r2
 8003f7c:	e280c010 	add	ip, r0, #16
 8003f80:	e2813010 	add	r3, r1, #16
 8003f84:	e5134010 	ldr	r4, [r3, #-16]
 8003f88:	e50c4010 	str	r4, [ip, #-16]
 8003f8c:	e513400c 	ldr	r4, [r3, #-12]
 8003f90:	e50c400c 	str	r4, [ip, #-12]
 8003f94:	e5134008 	ldr	r4, [r3, #-8]
 8003f98:	e50c4008 	str	r4, [ip, #-8]
 8003f9c:	e24ee010 	sub	lr, lr, #16
 8003fa0:	e5134004 	ldr	r4, [r3, #-4]
 8003fa4:	e35e000f 	cmp	lr, #15
 8003fa8:	e50c4004 	str	r4, [ip, #-4]
 8003fac:	e2833010 	add	r3, r3, #16
 8003fb0:	e28cc010 	add	ip, ip, #16
 8003fb4:	8afffff2 	bhi	8003f84 <memcpy+0x24>
 8003fb8:	e2423010 	sub	r3, r2, #16
 8003fbc:	e3c3300f 	bic	r3, r3, #15
 8003fc0:	e202600f 	and	r6, r2, #15
 8003fc4:	e2833010 	add	r3, r3, #16
 8003fc8:	e3560003 	cmp	r6, #3
 8003fcc:	e0811003 	add	r1, r1, r3
 8003fd0:	e0803003 	add	r3, r0, r3
 8003fd4:	9a00001b 	bls	8004048 <memcpy+0xe8>
 8003fd8:	e1a04001 	mov	r4, r1
 8003fdc:	e1a0c006 	mov	ip, r6
 8003fe0:	e243e004 	sub	lr, r3, #4
 8003fe4:	e24cc004 	sub	ip, ip, #4
 8003fe8:	e4945004 	ldr	r5, [r4], #4
 8003fec:	e35c0003 	cmp	ip, #3
 8003ff0:	e5ae5004 	str	r5, [lr, #4]!
 8003ff4:	8afffffa 	bhi	8003fe4 <memcpy+0x84>
 8003ff8:	e246c004 	sub	ip, r6, #4
 8003ffc:	e3ccc003 	bic	ip, ip, #3
 8004000:	e28cc004 	add	ip, ip, #4
 8004004:	e083300c 	add	r3, r3, ip
 8004008:	e081100c 	add	r1, r1, ip
 800400c:	e2022003 	and	r2, r2, #3
 8004010:	ea000000 	b	8004018 <memcpy+0xb8>
 8004014:	e1a03000 	mov	r3, r0
 8004018:	e3520000 	cmp	r2, #0
 800401c:	0a000005 	beq	8004038 <memcpy+0xd8>
 8004020:	e2433001 	sub	r3, r3, #1
 8004024:	e0812002 	add	r2, r1, r2
 8004028:	e4d1c001 	ldrb	ip, [r1], #1
 800402c:	e1510002 	cmp	r1, r2
 8004030:	e5e3c001 	strb	ip, [r3, #1]!
 8004034:	1afffffb 	bne	8004028 <memcpy+0xc8>
 8004038:	e8bd4070 	pop	{r4, r5, r6, lr}
 800403c:	e12fff1e 	bx	lr
 8004040:	e1a03000 	mov	r3, r0
 8004044:	eafffff5 	b	8004020 <memcpy+0xc0>
 8004048:	e1a02006 	mov	r2, r6
 800404c:	eafffff1 	b	8004018 <memcpy+0xb8>

08004050 <_raise_r>:
 8004050:	e351001f 	cmp	r1, #31
 8004054:	e92d4038 	push	{r3, r4, r5, lr}
 8004058:	e1a05000 	mov	r5, r0
 800405c:	83a03016 	movhi	r3, #22
 8004060:	83e00000 	mvnhi	r0, #0
 8004064:	85853000 	strhi	r3, [r5]
 8004068:	8a000013 	bhi	80040bc <_raise_r+0x6c>
 800406c:	e59522dc 	ldr	r2, [r5, #732]	; 0x2dc
 8004070:	e3520000 	cmp	r2, #0
 8004074:	e1a04001 	mov	r4, r1
 8004078:	0a000013 	beq	80040cc <_raise_r+0x7c>
 800407c:	e7923101 	ldr	r3, [r2, r1, lsl #2]
 8004080:	e3530000 	cmp	r3, #0
 8004084:	0a000010 	beq	80040cc <_raise_r+0x7c>
 8004088:	e3530001 	cmp	r3, #1
 800408c:	0a00000c 	beq	80040c4 <_raise_r+0x74>
 8004090:	e3730001 	cmn	r3, #1
 8004094:	03a03016 	moveq	r3, #22
 8004098:	03a00001 	moveq	r0, #1
 800409c:	05853000 	streq	r3, [r5]
 80040a0:	0a000005 	beq	80040bc <_raise_r+0x6c>
 80040a4:	e3a05000 	mov	r5, #0
 80040a8:	e1a00001 	mov	r0, r1
 80040ac:	e7825101 	str	r5, [r2, r1, lsl #2]
 80040b0:	e1a0e00f 	mov	lr, pc
 80040b4:	e12fff13 	bx	r3
 80040b8:	e1a00005 	mov	r0, r5
 80040bc:	e8bd4038 	pop	{r3, r4, r5, lr}
 80040c0:	e12fff1e 	bx	lr
 80040c4:	e3a00000 	mov	r0, #0
 80040c8:	eafffffb 	b	80040bc <_raise_r+0x6c>
 80040cc:	e1a00005 	mov	r0, r5
 80040d0:	eb000019 	bl	800413c <_getpid_r>
 80040d4:	e1a02004 	mov	r2, r4
 80040d8:	e1a01000 	mov	r1, r0
 80040dc:	e1a00005 	mov	r0, r5
 80040e0:	eb000005 	bl	80040fc <_kill_r>
 80040e4:	eafffff4 	b	80040bc <_raise_r+0x6c>

080040e8 <raise>:
 80040e8:	e59f3008 	ldr	r3, [pc, #8]	; 80040f8 <raise+0x10>
 80040ec:	e1a01000 	mov	r1, r0
 80040f0:	e5930000 	ldr	r0, [r3]
 80040f4:	eaffffd5 	b	8004050 <_raise_r>
 80040f8:	20000500 	.word	0x20000500

080040fc <_kill_r>:
 80040fc:	e92d4038 	push	{r3, r4, r5, lr}
 8004100:	e3a03000 	mov	r3, #0
 8004104:	e59f402c 	ldr	r4, [pc, #44]	; 8004138 <_kill_r+0x3c>
 8004108:	e1a05000 	mov	r5, r0
 800410c:	e1a00001 	mov	r0, r1
 8004110:	e1a01002 	mov	r1, r2
 8004114:	e5843000 	str	r3, [r4]
 8004118:	eb000011 	bl	8004164 <_kill>
 800411c:	e3700001 	cmn	r0, #1
 8004120:	1a000002 	bne	8004130 <_kill_r+0x34>
 8004124:	e5943000 	ldr	r3, [r4]
 8004128:	e3530000 	cmp	r3, #0
 800412c:	15853000 	strne	r3, [r5]
 8004130:	e8bd4038 	pop	{r3, r4, r5, lr}
 8004134:	e12fff1e 	bx	lr
 8004138:	200011ac 	.word	0x200011ac

0800413c <_getpid_r>:
 800413c:	e92d4008 	push	{r3, lr}
 8004140:	eb000001 	bl	800414c <_getpid>
 8004144:	e8bd4008 	pop	{r3, lr}
 8004148:	e12fff1e 	bx	lr

0800414c <_getpid>:
 800414c:	e3a02058 	mov	r2, #88	; 0x58
 8004150:	e59f3008 	ldr	r3, [pc, #8]	; 8004160 <_getpid+0x14>
 8004154:	e3e00000 	mvn	r0, #0
 8004158:	e5832000 	str	r2, [r3]
 800415c:	e12fff1e 	bx	lr
 8004160:	200011ac 	.word	0x200011ac

08004164 <_kill>:
 8004164:	e3a02058 	mov	r2, #88	; 0x58
 8004168:	e59f3008 	ldr	r3, [pc, #8]	; 8004178 <_kill+0x14>
 800416c:	e3e00000 	mvn	r0, #0
 8004170:	e5832000 	str	r2, [r3]
 8004174:	e12fff1e 	bx	lr
 8004178:	200011ac 	.word	0x200011ac

0800417c <_exit>:
 800417c:	eafffffe 	b	800417c <_exit>

08004180 <_init>:
 8004180:	e1a0c00d 	mov	ip, sp
 8004184:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
 8004188:	e24cb004 	sub	fp, ip, #4
 800418c:	e24bd028 	sub	sp, fp, #40	; 0x28
 8004190:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
 8004194:	e12fff1e 	bx	lr

08004198 <_fini>:
 8004198:	e1a0c00d 	mov	ip, sp
 800419c:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
 80041a0:	e24cb004 	sub	fp, ip, #4
 80041a4:	e24bd028 	sub	sp, fp, #40	; 0x28
 80041a8:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
 80041ac:	e12fff1e 	bx	lr
 80041b0:	69647473 	.word	0x69647473
 80041b4:	6e69206f 	.word	0x6e69206f
 80041b8:	64207469 	.word	0x64207469
 80041bc:	0a656e6f 	.word	0x0a656e6f
 80041c0:	00          	.byte	0x00
 80041c1:	65          	.byte	0x65
 80041c2:	7272      	.short	0x7272
 80041c4:	6320726f 	.word	0x6320726f
 80041c8:	2065646f 	.word	0x2065646f
 80041cc:	253a7525 	.word	0x253a7525
 80041d0:	0a75      	.short	0x0a75
 80041d2:	00          	.byte	0x00
 80041d3:	0a          	.byte	0x0a
 80041d4:	636c6577 	.word	0x636c6577
 80041d8:	20656d6f 	.word	0x20656d6f
 80041dc:	53206f74 	.word	0x53206f74
 80041e0:	68757a75 	.word	0x68757a75
 80041e4:	20534f61 	.word	0x20534f61
 80041e8:	205e5f5e 	.word	0x205e5f5e
 80041ec:	2e302e32 	.word	0x2e302e32
 80041f0:	55420a36 	.word	0x55420a36
 80041f4:	20444c49 	.word	0x20444c49
 80041f8:	2079614d 	.word	0x2079614d
 80041fc:	32203320 	.word	0x32203320
 8004200:	20363130 	.word	0x20363130
 8004204:	343a3132 	.word	0x343a3132
 8004208:	37323a37 	.word	0x37323a37
 800420c:	7973000a 	.word	0x7973000a
 8004210:	6d657473 	.word	0x6d657473
 8004214:	6f626120 	.word	0x6f626120
 8004218:	64657472 	.word	0x64657472
 800421c:	000a      	.short	0x000a
 800421e:	3e3e      	.short	0x3e3e
 8004220:	00204c3e 	.word	0x00204c3e
 8004224:	25206925 	.word	0x25206925
 8004228:	69252069 	.word	0x69252069
 800422c:	20692520 	.word	0x20692520
 8004230:	25206925 	.word	0x25206925
 8004234:	0a0a0069 	.word	0x0a0a0069
 8004238:	3e3e3e00 	.word	0x3e3e3e00
 800423c:	3e002049 	.word	0x3e002049
 8004240:	0020533e 	.word	0x0020533e
 8004244:	20433e3e 	.word	0x20433e3e
 8004248:	20692500 	.word	0x20692500
 800424c:	25206925 	.word	0x25206925
 8004250:	69252069 	.word	0x69252069
 8004254:	00000020 	.word	0x00000020
 8004258:	00000043 	.word	0x00000043

0800425c <__EH_FRAME_BEGIN__>:
 800425c:	00000000                                ....
