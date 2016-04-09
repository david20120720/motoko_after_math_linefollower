
bin/main.elf:     file format elf32-littlearm


Disassembly of section .text:

08000188 <main>:
 8000188:	b508      	push	{r3, lr}
 800018a:	f001 fea9 	bl	8001ee0 <lib_low_level_init>
 800018e:	f001 fbd6 	bl	800193e <lib_os_init>
 8000192:	4905      	ldr	r1, [pc, #20]	; (80001a8 <main+0x20>)
 8000194:	4805      	ldr	r0, [pc, #20]	; (80001ac <main+0x24>)
 8000196:	f44f 7200 	mov.w	r2, #512	; 0x200
 800019a:	2306      	movs	r3, #6
 800019c:	f001 fa02 	bl	80015a4 <create_thread>
 80001a0:	f001 f9fa 	bl	8001598 <kernel_start>
 80001a4:	2000      	movs	r0, #0
 80001a6:	bd08      	pop	{r3, pc}
 80001a8:	2000089c 	.word	0x2000089c
 80001ac:	080004b5 	.word	0x080004b5

080001b0 <line_follower_init>:
 80001b0:	b507      	push	{r0, r1, r2, lr}
 80001b2:	4a0a      	ldr	r2, [pc, #40]	; (80001dc <line_follower_init+0x2c>)
 80001b4:	4b0a      	ldr	r3, [pc, #40]	; (80001e0 <line_follower_init+0x30>)
 80001b6:	6013      	str	r3, [r2, #0]
 80001b8:	4b0a      	ldr	r3, [pc, #40]	; (80001e4 <line_follower_init+0x34>)
 80001ba:	6053      	str	r3, [r2, #4]
 80001bc:	2300      	movs	r3, #0
 80001be:	6093      	str	r3, [r2, #8]
 80001c0:	4a09      	ldr	r2, [pc, #36]	; (80001e8 <line_follower_init+0x38>)
 80001c2:	9200      	str	r2, [sp, #0]
 80001c4:	9301      	str	r3, [sp, #4]
 80001c6:	4809      	ldr	r0, [pc, #36]	; (80001ec <line_follower_init+0x3c>)
 80001c8:	4909      	ldr	r1, [pc, #36]	; (80001f0 <line_follower_init+0x40>)
 80001ca:	4a0a      	ldr	r2, [pc, #40]	; (80001f4 <line_follower_init+0x44>)
 80001cc:	f001 f8ce 	bl	800136c <pid_init>
 80001d0:	b003      	add	sp, #12
 80001d2:	f85d eb04 	ldr.w	lr, [sp], #4
 80001d6:	f000 ba23 	b.w	8000620 <q_predictor_init>
 80001da:	bf00      	nop
 80001dc:	20000d4c 	.word	0x20000d4c
 80001e0:	3ecccccd 	.word	0x3ecccccd
 80001e4:	3f666666 	.word	0x3f666666
 80001e8:	4090f5c3 	.word	0x4090f5c3
 80001ec:	20000a9c 	.word	0x20000a9c
 80001f0:	42c80000 	.word	0x42c80000
 80001f4:	3ea6e979 	.word	0x3ea6e979

080001f8 <line_follower_main>:
 80001f8:	b510      	push	{r4, lr}
 80001fa:	4b2d      	ldr	r3, [pc, #180]	; (80002b0 <line_follower_main+0xb8>)
 80001fc:	eddf 7a2d 	vldr	s15, [pc, #180]	; 80002b4 <line_follower_main+0xbc>
 8000200:	ed93 7a08 	vldr	s14, [r3, #32]
 8000204:	4c2c      	ldr	r4, [pc, #176]	; (80002b8 <line_follower_main+0xc0>)
 8000206:	ed2d 8b02 	vpush	{d8}
 800020a:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 800020e:	ed9f 8a2b 	vldr	s16, [pc, #172]	; 80002bc <line_follower_main+0xc4>
 8000212:	ee07 8a67 	vmls.f32	s16, s14, s15
 8000216:	ee18 0a10 	vmov	r0, s16
 800021a:	f001 f910 	bl	800143e <m_abs>
 800021e:	ee08 0a90 	vmov	s17, r0
 8000222:	f000 ffe9 	bl	80011f8 <camera_read>
 8000226:	4b26      	ldr	r3, [pc, #152]	; (80002c0 <line_follower_main+0xc8>)
 8000228:	eddf 7a26 	vldr	s15, [pc, #152]	; 80002c4 <line_follower_main+0xcc>
 800022c:	685b      	ldr	r3, [r3, #4]
 800022e:	eddf 6a26 	vldr	s13, [pc, #152]	; 80002c8 <line_follower_main+0xd0>
 8000232:	ed94 7a00 	vldr	s14, [r4]
 8000236:	2b00      	cmp	r3, #0
 8000238:	bf08      	it	eq
 800023a:	eef0 8a67 	vmoveq.f32	s17, s15
 800023e:	ee37 6ae8 	vsub.f32	s12, s15, s17
 8000242:	ee06 7a26 	vmla.f32	s14, s12, s13
 8000246:	ee17 0a10 	vmov	r0, s14
 800024a:	ed9f 7a20 	vldr	s14, [pc, #128]	; 80002cc <line_follower_main+0xd4>
 800024e:	ee48 7ac7 	vmls.f32	s15, s17, s14
 8000252:	ee17 1a90 	vmov	r1, s15
 8000256:	f001 f915 	bl	8001484 <m_min>
 800025a:	6862      	ldr	r2, [r4, #4]
 800025c:	6020      	str	r0, [r4, #0]
 800025e:	f04f 517c 	mov.w	r1, #1056964608	; 0x3f000000
 8000262:	f001 f8f8 	bl	8001456 <m_saturate>
 8000266:	ee18 1a10 	vmov	r1, s16
 800026a:	6020      	str	r0, [r4, #0]
 800026c:	4818      	ldr	r0, [pc, #96]	; (80002d0 <line_follower_main+0xd8>)
 800026e:	f001 f8ad 	bl	80013cc <pid_process>
 8000272:	edd4 6a00 	vldr	s13, [r4]
 8000276:	ed9f 7a17 	vldr	s14, [pc, #92]	; 80002d4 <line_follower_main+0xdc>
 800027a:	60a0      	str	r0, [r4, #8]
 800027c:	ee07 0a90 	vmov	s15, r0
 8000280:	ee36 6aa7 	vadd.f32	s12, s13, s15
 8000284:	ee76 7ae7 	vsub.f32	s15, s13, s15
 8000288:	ee26 6a07 	vmul.f32	s12, s12, s14
 800028c:	ee27 7a87 	vmul.f32	s14, s15, s14
 8000290:	ecbd 8b02 	vpop	{d8}
 8000294:	eebd 6ac6 	vcvt.s32.f32	s12, s12
 8000298:	eebd 7ac7 	vcvt.s32.f32	s14, s14
 800029c:	ee16 0a10 	vmov	r0, s12
 80002a0:	ee17 1a10 	vmov	r1, s14
 80002a4:	b200      	sxth	r0, r0
 80002a6:	b209      	sxth	r1, r1
 80002a8:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80002ac:	f002 b9d6 	b.w	800265c <drv8834_run>
 80002b0:	2000045c 	.word	0x2000045c
 80002b4:	3b800000 	.word	0x3b800000
 80002b8:	20000d4c 	.word	0x20000d4c
 80002bc:	00000000 	.word	0x00000000
 80002c0:	20000488 	.word	0x20000488
 80002c4:	3f800000 	.word	0x3f800000
 80002c8:	3ca3d70a 	.word	0x3ca3d70a
 80002cc:	41000000 	.word	0x41000000
 80002d0:	20000a9c 	.word	0x20000a9c
 80002d4:	42c80000 	.word	0x42c80000

080002d8 <broken_line_init>:
 80002d8:	4770      	bx	lr
	...

080002dc <broken_line_main>:
 80002dc:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 80002e0:	2500      	movs	r5, #0
 80002e2:	462c      	mov	r4, r5
 80002e4:	462f      	mov	r7, r5
 80002e6:	46a8      	mov	r8, r5
 80002e8:	462e      	mov	r6, r5
 80002ea:	f8df 90f0 	ldr.w	r9, [pc, #240]	; 80003dc <broken_line_main+0x100>
 80002ee:	f899 301c 	ldrb.w	r3, [r9, #28]
 80002f2:	2b08      	cmp	r3, #8
 80002f4:	d06c      	beq.n	80003d0 <broken_line_main+0xf4>
 80002f6:	2005      	movs	r0, #5
 80002f8:	f002 fc58 	bl	8002bac <timer_delay_ms>
 80002fc:	2f05      	cmp	r7, #5
 80002fe:	d861      	bhi.n	80003c4 <broken_line_main+0xe8>
 8000300:	e8df f007 	tbb	[pc, r7]
 8000304:	38271503 	.word	0x38271503
 8000308:	4d4a      	.short	0x4d4a
 800030a:	2c00      	cmp	r4, #0
 800030c:	d145      	bne.n	800039a <broken_line_main+0xbe>
 800030e:	f8d9 3020 	ldr.w	r3, [r9, #32]
 8000312:	2b00      	cmp	r3, #0
 8000314:	f04f 0464 	mov.w	r4, #100	; 0x64
 8000318:	f04f 0701 	mov.w	r7, #1
 800031c:	bfd4      	ite	le
 800031e:	f04f 0832 	movle.w	r8, #50	; 0x32
 8000322:	f04f 0800 	movgt.w	r8, #0
 8000326:	bfd4      	ite	le
 8000328:	2600      	movle	r6, #0
 800032a:	2632      	movgt	r6, #50	; 0x32
 800032c:	e04a      	b.n	80003c4 <broken_line_main+0xe8>
 800032e:	bba4      	cbnz	r4, 800039a <broken_line_main+0xbe>
 8000330:	f8d9 3020 	ldr.w	r3, [r9, #32]
 8000334:	2b00      	cmp	r3, #0
 8000336:	f04f 0464 	mov.w	r4, #100	; 0x64
 800033a:	f04f 0702 	mov.w	r7, #2
 800033e:	bfd4      	ite	le
 8000340:	f06f 0831 	mvnle.w	r8, #49	; 0x31
 8000344:	f04f 0800 	movgt.w	r8, #0
 8000348:	bfd4      	ite	le
 800034a:	2600      	movle	r6, #0
 800034c:	f06f 0631 	mvngt.w	r6, #49	; 0x31
 8000350:	e038      	b.n	80003c4 <broken_line_main+0xe8>
 8000352:	bb14      	cbnz	r4, 800039a <broken_line_main+0xbe>
 8000354:	f8d9 3020 	ldr.w	r3, [r9, #32]
 8000358:	2b00      	cmp	r3, #0
 800035a:	f04f 0464 	mov.w	r4, #100	; 0x64
 800035e:	f04f 0703 	mov.w	r7, #3
 8000362:	bfd4      	ite	le
 8000364:	f04f 0800 	movle.w	r8, #0
 8000368:	f04f 0832 	movgt.w	r8, #50	; 0x32
 800036c:	bfd4      	ite	le
 800036e:	2632      	movle	r6, #50	; 0x32
 8000370:	2600      	movgt	r6, #0
 8000372:	e027      	b.n	80003c4 <broken_line_main+0xe8>
 8000374:	b98c      	cbnz	r4, 800039a <broken_line_main+0xbe>
 8000376:	f8d9 3020 	ldr.w	r3, [r9, #32]
 800037a:	2b00      	cmp	r3, #0
 800037c:	f04f 0464 	mov.w	r4, #100	; 0x64
 8000380:	f04f 0704 	mov.w	r7, #4
 8000384:	bfd4      	ite	le
 8000386:	f04f 0800 	movle.w	r8, #0
 800038a:	f06f 0831 	mvngt.w	r8, #49	; 0x31
 800038e:	bfd4      	ite	le
 8000390:	f06f 0631 	mvnle.w	r6, #49	; 0x31
 8000394:	2600      	movgt	r6, #0
 8000396:	e015      	b.n	80003c4 <broken_line_main+0xe8>
 8000398:	b16c      	cbz	r4, 80003b6 <broken_line_main+0xda>
 800039a:	3c01      	subs	r4, #1
 800039c:	e012      	b.n	80003c4 <broken_line_main+0xe8>
 800039e:	b184      	cbz	r4, 80003c2 <broken_line_main+0xe6>
 80003a0:	f241 3387 	movw	r3, #4999	; 0x1387
 80003a4:	429d      	cmp	r5, r3
 80003a6:	bfd8      	it	le
 80003a8:	3532      	addle	r5, #50	; 0x32
 80003aa:	2664      	movs	r6, #100	; 0x64
 80003ac:	fb95 f6f6 	sdiv	r6, r5, r6
 80003b0:	3c01      	subs	r4, #1
 80003b2:	46b0      	mov	r8, r6
 80003b4:	e006      	b.n	80003c4 <broken_line_main+0xe8>
 80003b6:	4625      	mov	r5, r4
 80003b8:	2705      	movs	r7, #5
 80003ba:	2432      	movs	r4, #50	; 0x32
 80003bc:	46a8      	mov	r8, r5
 80003be:	462e      	mov	r6, r5
 80003c0:	e000      	b.n	80003c4 <broken_line_main+0xe8>
 80003c2:	4627      	mov	r7, r4
 80003c4:	fa0f f088 	sxth.w	r0, r8
 80003c8:	b231      	sxth	r1, r6
 80003ca:	f002 f947 	bl	800265c <drv8834_run>
 80003ce:	e78c      	b.n	80002ea <broken_line_main+0xe>
 80003d0:	2000      	movs	r0, #0
 80003d2:	4601      	mov	r1, r0
 80003d4:	e8bd 43f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 80003d8:	f002 b940 	b.w	800265c <drv8834_run>
 80003dc:	2000045c 	.word	0x2000045c

080003e0 <line_sensor_thread>:
 80003e0:	b508      	push	{r3, lr}
 80003e2:	f000 fd11 	bl	8000e08 <line_sensor_init>
 80003e6:	4601      	mov	r1, r0
 80003e8:	b120      	cbz	r0, 80003f4 <line_sensor_thread+0x14>
 80003ea:	4b08      	ldr	r3, [pc, #32]	; (800040c <line_sensor_thread+0x2c>)
 80003ec:	2001      	movs	r0, #1
 80003ee:	6018      	str	r0, [r3, #0]
 80003f0:	f000 f96a 	bl	80006c8 <abort_error_>
 80003f4:	2000      	movs	r0, #0
 80003f6:	2104      	movs	r1, #4
 80003f8:	f002 fbe8 	bl	8002bcc <event_timer_set_period>
 80003fc:	2000      	movs	r0, #0
 80003fe:	f002 fbfd 	bl	8002bfc <event_timer_wait>
 8000402:	2000      	movs	r0, #0
 8000404:	f000 fd78 	bl	8000ef8 <line_sensor_read>
 8000408:	e7f8      	b.n	80003fc <line_sensor_thread+0x1c>
 800040a:	bf00      	nop
 800040c:	20000d58 	.word	0x20000d58

08000410 <i2c_sensor_thread>:
 8000410:	b508      	push	{r3, lr}
 8000412:	f000 fdf9 	bl	8001008 <lsm9ds0_init>
 8000416:	4601      	mov	r1, r0
 8000418:	b128      	cbz	r0, 8000426 <i2c_sensor_thread+0x16>
 800041a:	4b08      	ldr	r3, [pc, #32]	; (800043c <i2c_sensor_thread+0x2c>)
 800041c:	2201      	movs	r2, #1
 800041e:	2002      	movs	r0, #2
 8000420:	601a      	str	r2, [r3, #0]
 8000422:	f000 f951 	bl	80006c8 <abort_error_>
 8000426:	2001      	movs	r0, #1
 8000428:	210a      	movs	r1, #10
 800042a:	f002 fbcf 	bl	8002bcc <event_timer_set_period>
 800042e:	2001      	movs	r0, #1
 8000430:	f002 fbe4 	bl	8002bfc <event_timer_wait>
 8000434:	f000 fd6a 	bl	8000f0c <lsm9ds0_read>
 8000438:	e7f9      	b.n	800042e <i2c_sensor_thread+0x1e>
 800043a:	bf00      	nop
 800043c:	20000d58 	.word	0x20000d58

08000440 <line_follower>:
 8000440:	b538      	push	{r3, r4, r5, lr}
 8000442:	f7ff feb5 	bl	80001b0 <line_follower_init>
 8000446:	2002      	movs	r0, #2
 8000448:	2104      	movs	r1, #4
 800044a:	f002 fbbf 	bl	8002bcc <event_timer_set_period>
 800044e:	f002 fb9f 	bl	8002b90 <timer_get_time>
 8000452:	f500 35c3 	add.w	r5, r0, #99840	; 0x18600
 8000456:	35a0      	adds	r5, #160	; 0xa0
 8000458:	2400      	movs	r4, #0
 800045a:	2002      	movs	r0, #2
 800045c:	f002 fbce 	bl	8002bfc <event_timer_wait>
 8000460:	4b13      	ldr	r3, [pc, #76]	; (80004b0 <line_follower+0x70>)
 8000462:	6a5a      	ldr	r2, [r3, #36]	; 0x24
 8000464:	f5b2 7f48 	cmp.w	r2, #800	; 0x320
 8000468:	dd02      	ble.n	8000470 <line_follower+0x30>
 800046a:	f000 f8d4 	bl	8000616 <obstacle_main>
 800046e:	e007      	b.n	8000480 <line_follower+0x40>
 8000470:	7f1b      	ldrb	r3, [r3, #28]
 8000472:	2b08      	cmp	r3, #8
 8000474:	d102      	bne.n	800047c <line_follower+0x3c>
 8000476:	f7ff febf 	bl	80001f8 <line_follower_main>
 800047a:	e001      	b.n	8000480 <line_follower+0x40>
 800047c:	f7ff ff2e 	bl	80002dc <broken_line_main>
 8000480:	3401      	adds	r4, #1
 8000482:	2314      	movs	r3, #20
 8000484:	fbb4 f2f3 	udiv	r2, r4, r3
 8000488:	fb03 4312 	mls	r3, r3, r2, r4
 800048c:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8000490:	b913      	cbnz	r3, 8000498 <line_follower+0x58>
 8000492:	f001 fc01 	bl	8001c98 <led_on>
 8000496:	e001      	b.n	800049c <line_follower+0x5c>
 8000498:	f001 fc10 	bl	8001cbc <led_off>
 800049c:	f002 fb78 	bl	8002b90 <timer_get_time>
 80004a0:	4285      	cmp	r5, r0
 80004a2:	d2da      	bcs.n	800045a <line_follower+0x1a>
 80004a4:	2000      	movs	r0, #0
 80004a6:	4601      	mov	r1, r0
 80004a8:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 80004ac:	f002 b8d6 	b.w	800265c <drv8834_run>
 80004b0:	2000045c 	.word	0x2000045c

080004b4 <main_thread>:
 80004b4:	b510      	push	{r4, lr}
 80004b6:	4820      	ldr	r0, [pc, #128]	; (8000538 <main_thread+0x84>)
 80004b8:	4c20      	ldr	r4, [pc, #128]	; (800053c <main_thread+0x88>)
 80004ba:	f001 f97d 	bl	80017b8 <printf_>
 80004be:	f44f 7096 	mov.w	r0, #300	; 0x12c
 80004c2:	f002 fb73 	bl	8002bac <timer_delay_ms>
 80004c6:	2300      	movs	r3, #0
 80004c8:	6023      	str	r3, [r4, #0]
 80004ca:	491d      	ldr	r1, [pc, #116]	; (8000540 <main_thread+0x8c>)
 80004cc:	481d      	ldr	r0, [pc, #116]	; (8000544 <main_thread+0x90>)
 80004ce:	f44f 7200 	mov.w	r2, #512	; 0x200
 80004d2:	2306      	movs	r3, #6
 80004d4:	f001 f866 	bl	80015a4 <create_thread>
 80004d8:	491b      	ldr	r1, [pc, #108]	; (8000548 <main_thread+0x94>)
 80004da:	481c      	ldr	r0, [pc, #112]	; (800054c <main_thread+0x98>)
 80004dc:	f44f 7200 	mov.w	r2, #512	; 0x200
 80004e0:	2306      	movs	r3, #6
 80004e2:	f001 f85f 	bl	80015a4 <create_thread>
 80004e6:	f7ff fef7 	bl	80002d8 <broken_line_init>
 80004ea:	f000 f893 	bl	8000614 <obstacle_init>
 80004ee:	f000 fdf9 	bl	80010e4 <camera_init>
 80004f2:	6823      	ldr	r3, [r4, #0]
 80004f4:	b13b      	cbz	r3, 8000506 <main_thread+0x52>
 80004f6:	4816      	ldr	r0, [pc, #88]	; (8000550 <main_thread+0x9c>)
 80004f8:	f001 f95e 	bl	80017b8 <printf_>
 80004fc:	f44f 60fa 	mov.w	r0, #2000	; 0x7d0
 8000500:	f002 fb54 	bl	8002bac <timer_delay_ms>
 8000504:	e7f7      	b.n	80004f6 <main_thread+0x42>
 8000506:	f001 fbeb 	bl	8001ce0 <get_key>
 800050a:	b128      	cbz	r0, 8000518 <main_thread+0x64>
 800050c:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 8000510:	f002 fb4c 	bl	8002bac <timer_delay_ms>
 8000514:	f7ff ff94 	bl	8000440 <line_follower>
 8000518:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 800051c:	f001 fbbc 	bl	8001c98 <led_on>
 8000520:	2064      	movs	r0, #100	; 0x64
 8000522:	f002 fb43 	bl	8002bac <timer_delay_ms>
 8000526:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 800052a:	f001 fbc7 	bl	8001cbc <led_off>
 800052e:	20c8      	movs	r0, #200	; 0xc8
 8000530:	f002 fb3c 	bl	8002bac <timer_delay_ms>
 8000534:	e7dd      	b.n	80004f2 <main_thread+0x3e>
 8000536:	bf00      	nop
 8000538:	08002c50 	.word	0x08002c50
 800053c:	20000d58 	.word	0x20000d58
 8000540:	20000200 	.word	0x20000200
 8000544:	080003e1 	.word	0x080003e1
 8000548:	2000069c 	.word	0x2000069c
 800054c:	08000411 	.word	0x08000411
 8000550:	08002c8b 	.word	0x08002c8b

08000554 <obstacle_go_forward>:
 8000554:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000556:	460f      	mov	r7, r1
 8000558:	ed2d 8b04 	vpush	{d8-d9}
 800055c:	4606      	mov	r6, r0
 800055e:	b950      	cbnz	r0, 8000576 <obstacle_go_forward+0x22>
 8000560:	2000      	movs	r0, #0
 8000562:	4601      	mov	r1, r0
 8000564:	f002 f87a 	bl	800265c <drv8834_run>
 8000568:	ecbd 8b04 	vpop	{d8-d9}
 800056c:	2064      	movs	r0, #100	; 0x64
 800056e:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8000572:	f002 bb1b 	b.w	8002bac <timer_delay_ms>
 8000576:	ed9f 8a21 	vldr	s16, [pc, #132]	; 80005fc <obstacle_go_forward+0xa8>
 800057a:	2400      	movs	r4, #0
 800057c:	eef0 7a48 	vmov.f32	s15, s16
 8000580:	4625      	mov	r5, r4
 8000582:	eeb0 9a48 	vmov.f32	s18, s16
 8000586:	42bd      	cmp	r5, r7
 8000588:	d2ea      	bcs.n	8000560 <obstacle_go_forward+0xc>
 800058a:	4b1d      	ldr	r3, [pc, #116]	; (8000600 <obstacle_go_forward+0xac>)
 800058c:	f9b3 3010 	ldrsh.w	r3, [r3, #16]
 8000590:	441c      	add	r4, r3
 8000592:	ee07 4a10 	vmov	s14, r4
 8000596:	eef8 8ac7 	vcvt.f32.s32	s17, s14
 800059a:	ed9f 7a1a 	vldr	s14, [pc, #104]	; 8000604 <obstacle_go_forward+0xb0>
 800059e:	ee79 8a68 	vsub.f32	s17, s18, s17
 80005a2:	350a      	adds	r5, #10
 80005a4:	ee78 7ae7 	vsub.f32	s15, s17, s15
 80005a8:	ee67 7a87 	vmul.f32	s15, s15, s14
 80005ac:	ed9f 7a16 	vldr	s14, [pc, #88]	; 8000608 <obstacle_go_forward+0xb4>
 80005b0:	ee48 7a87 	vmla.f32	s15, s17, s14
 80005b4:	ee07 6a10 	vmov	s14, r6
 80005b8:	eef8 6a47 	vcvt.f32.u32	s13, s14
 80005bc:	ed9f 7a13 	vldr	s14, [pc, #76]	; 800060c <obstacle_go_forward+0xb8>
 80005c0:	ee26 7a87 	vmul.f32	s14, s13, s14
 80005c4:	eddf 6a12 	vldr	s13, [pc, #72]	; 8000610 <obstacle_go_forward+0xbc>
 80005c8:	ee08 7a26 	vmla.f32	s14, s16, s13
 80005cc:	eeb0 8a47 	vmov.f32	s16, s14
 80005d0:	ee37 7a67 	vsub.f32	s14, s14, s15
 80005d4:	ee78 7a27 	vadd.f32	s15, s16, s15
 80005d8:	eebd 7ac7 	vcvt.s32.f32	s14, s14
 80005dc:	eefd 7ae7 	vcvt.s32.f32	s15, s15
 80005e0:	ee17 0a10 	vmov	r0, s14
 80005e4:	ee17 1a90 	vmov	r1, s15
 80005e8:	b200      	sxth	r0, r0
 80005ea:	b209      	sxth	r1, r1
 80005ec:	f002 f836 	bl	800265c <drv8834_run>
 80005f0:	200a      	movs	r0, #10
 80005f2:	f002 fadb 	bl	8002bac <timer_delay_ms>
 80005f6:	eef0 7a68 	vmov.f32	s15, s17
 80005fa:	e7c4      	b.n	8000586 <obstacle_go_forward+0x32>
 80005fc:	00000000 	.word	0x00000000
 8000600:	200001e4 	.word	0x200001e4
 8000604:	3a83126f 	.word	0x3a83126f
 8000608:	399d4952 	.word	0x399d4952
 800060c:	3e4ccccc 	.word	0x3e4ccccc
 8000610:	3f4ccccd 	.word	0x3f4ccccd

08000614 <obstacle_init>:
 8000614:	4770      	bx	lr

08000616 <obstacle_main>:
 8000616:	2000      	movs	r0, #0
 8000618:	2164      	movs	r1, #100	; 0x64
 800061a:	f7ff bf9b 	b.w	8000554 <obstacle_go_forward>
	...

08000620 <q_predictor_init>:
 8000620:	4b24      	ldr	r3, [pc, #144]	; (80006b4 <q_predictor_init+0x94>)
 8000622:	2200      	movs	r2, #0
 8000624:	4619      	mov	r1, r3
 8000626:	b570      	push	{r4, r5, r6, lr}
 8000628:	4608      	mov	r0, r1
 800062a:	601a      	str	r2, [r3, #0]
 800062c:	605a      	str	r2, [r3, #4]
 800062e:	f103 0208 	add.w	r2, r3, #8
 8000632:	3348      	adds	r3, #72	; 0x48
 8000634:	2400      	movs	r4, #0
 8000636:	f842 4b04 	str.w	r4, [r2], #4
 800063a:	429a      	cmp	r2, r3
 800063c:	d1fa      	bne.n	8000634 <q_predictor_init+0x14>
 800063e:	2200      	movs	r2, #0
 8000640:	eb01 0442 	add.w	r4, r1, r2, lsl #1
 8000644:	2300      	movs	r3, #0
 8000646:	4e1c      	ldr	r6, [pc, #112]	; (80006b8 <q_predictor_init+0x98>)
 8000648:	eddf 7a1c 	vldr	s15, [pc, #112]	; 80006bc <q_predictor_init+0x9c>
 800064c:	4416      	add	r6, r2
 800064e:	eb04 0543 	add.w	r5, r4, r3, lsl #1
 8000652:	5ef6      	ldrsh	r6, [r6, r3]
 8000654:	ee07 6a10 	vmov	s14, r6
 8000658:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 800065c:	3302      	adds	r3, #2
 800065e:	ee87 7a27 	vdiv.f32	s14, s14, s15
 8000662:	2b20      	cmp	r3, #32
 8000664:	ed85 7a12 	vstr	s14, [r5, #72]	; 0x48
 8000668:	d1ed      	bne.n	8000646 <q_predictor_init+0x26>
 800066a:	3220      	adds	r2, #32
 800066c:	f5b2 7f80 	cmp.w	r2, #256	; 0x100
 8000670:	d1e6      	bne.n	8000640 <q_predictor_init+0x20>
 8000672:	2300      	movs	r3, #0
 8000674:	4912      	ldr	r1, [pc, #72]	; (80006c0 <q_predictor_init+0xa0>)
 8000676:	5e59      	ldrsh	r1, [r3, r1]
 8000678:	ee07 1a10 	vmov	s14, r1
 800067c:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 8000680:	eb00 0243 	add.w	r2, r0, r3, lsl #1
 8000684:	ee87 7a27 	vdiv.f32	s14, s14, s15
 8000688:	3302      	adds	r3, #2
 800068a:	2b10      	cmp	r3, #16
 800068c:	ed82 7a92 	vstr	s14, [r2, #584]	; 0x248
 8000690:	d1f0      	bne.n	8000674 <q_predictor_init+0x54>
 8000692:	2300      	movs	r3, #0
 8000694:	490b      	ldr	r1, [pc, #44]	; (80006c4 <q_predictor_init+0xa4>)
 8000696:	5e59      	ldrsh	r1, [r3, r1]
 8000698:	ee07 1a10 	vmov	s14, r1
 800069c:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 80006a0:	eb00 0243 	add.w	r2, r0, r3, lsl #1
 80006a4:	ee87 7a27 	vdiv.f32	s14, s14, s15
 80006a8:	3302      	adds	r3, #2
 80006aa:	2b10      	cmp	r3, #16
 80006ac:	ed82 7a9a 	vstr	s14, [r2, #616]	; 0x268
 80006b0:	d1f0      	bne.n	8000694 <q_predictor_init+0x74>
 80006b2:	bd70      	pop	{r4, r5, r6, pc}
 80006b4:	20000ac4 	.word	0x20000ac4
 80006b8:	20000010 	.word	0x20000010
 80006bc:	447a0000 	.word	0x447a0000
 80006c0:	20000000 	.word	0x20000000
 80006c4:	20000154 	.word	0x20000154

080006c8 <abort_error_>:
 80006c8:	b570      	push	{r4, r5, r6, lr}
 80006ca:	4605      	mov	r5, r0
 80006cc:	460e      	mov	r6, r1
 80006ce:	480f      	ldr	r0, [pc, #60]	; (800070c <abort_error_+0x44>)
 80006d0:	4629      	mov	r1, r5
 80006d2:	4632      	mov	r2, r6
 80006d4:	f001 f870 	bl	80017b8 <printf_>
 80006d8:	2400      	movs	r4, #0
 80006da:	1ceb      	adds	r3, r5, #3
 80006dc:	429c      	cmp	r4, r3
 80006de:	d20f      	bcs.n	8000700 <abort_error_+0x38>
 80006e0:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 80006e4:	f001 fad8 	bl	8001c98 <led_on>
 80006e8:	2032      	movs	r0, #50	; 0x32
 80006ea:	f002 fa5f 	bl	8002bac <timer_delay_ms>
 80006ee:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 80006f2:	f001 fae3 	bl	8001cbc <led_off>
 80006f6:	2064      	movs	r0, #100	; 0x64
 80006f8:	f002 fa58 	bl	8002bac <timer_delay_ms>
 80006fc:	3401      	adds	r4, #1
 80006fe:	e7ec      	b.n	80006da <abort_error_+0x12>
 8000700:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 8000704:	f002 fa52 	bl	8002bac <timer_delay_ms>
 8000708:	e7e1      	b.n	80006ce <abort_error_+0x6>
 800070a:	bf00      	nop
 800070c:	08002c9b 	.word	0x08002c9b

08000710 <rgb_i2c_delay>:
 8000710:	bf00      	nop
 8000712:	bf00      	nop
 8000714:	bf00      	nop
 8000716:	bf00      	nop
 8000718:	4770      	bx	lr
	...

0800071c <RGBSetLowSDA>:
 800071c:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 800071e:	4f15      	ldr	r7, [pc, #84]	; (8000774 <RGBSetLowSDA+0x58>)
 8000720:	2401      	movs	r4, #1
 8000722:	783b      	ldrb	r3, [r7, #0]
 8000724:	9300      	str	r3, [sp, #0]
 8000726:	2603      	movs	r6, #3
 8000728:	2500      	movs	r5, #0
 800072a:	4669      	mov	r1, sp
 800072c:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000730:	f88d 5007 	strb.w	r5, [sp, #7]
 8000734:	f88d 4004 	strb.w	r4, [sp, #4]
 8000738:	f88d 6005 	strb.w	r6, [sp, #5]
 800073c:	f88d 4006 	strb.w	r4, [sp, #6]
 8000740:	f001 fad6 	bl	8001cf0 <GPIO_Init>
 8000744:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000748:	783a      	ldrb	r2, [r7, #0]
 800074a:	851a      	strh	r2, [r3, #40]	; 0x28
 800074c:	f88d 5007 	strb.w	r5, [sp, #7]
 8000750:	4d09      	ldr	r5, [pc, #36]	; (8000778 <RGBSetLowSDA+0x5c>)
 8000752:	9400      	str	r4, [sp, #0]
 8000754:	4628      	mov	r0, r5
 8000756:	4669      	mov	r1, sp
 8000758:	f88d 4004 	strb.w	r4, [sp, #4]
 800075c:	f88d 6005 	strb.w	r6, [sp, #5]
 8000760:	f88d 4006 	strb.w	r4, [sp, #6]
 8000764:	f001 fac4 	bl	8001cf0 <GPIO_Init>
 8000768:	852c      	strh	r4, [r5, #40]	; 0x28
 800076a:	f7ff ffd1 	bl	8000710 <rgb_i2c_delay>
 800076e:	b003      	add	sp, #12
 8000770:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000772:	bf00      	nop
 8000774:	20000d5c 	.word	0x20000d5c
 8000778:	48000400 	.word	0x48000400

0800077c <RGBSetHighSDA>:
 800077c:	b573      	push	{r0, r1, r4, r5, r6, lr}
 800077e:	4d13      	ldr	r5, [pc, #76]	; (80007cc <RGBSetHighSDA+0x50>)
 8000780:	2400      	movs	r4, #0
 8000782:	782b      	ldrb	r3, [r5, #0]
 8000784:	9300      	str	r3, [sp, #0]
 8000786:	2603      	movs	r6, #3
 8000788:	4669      	mov	r1, sp
 800078a:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 800078e:	f88d 4004 	strb.w	r4, [sp, #4]
 8000792:	f88d 4007 	strb.w	r4, [sp, #7]
 8000796:	f88d 6005 	strb.w	r6, [sp, #5]
 800079a:	f001 faa9 	bl	8001cf0 <GPIO_Init>
 800079e:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 80007a2:	782a      	ldrb	r2, [r5, #0]
 80007a4:	619a      	str	r2, [r3, #24]
 80007a6:	f88d 4004 	strb.w	r4, [sp, #4]
 80007aa:	f88d 4007 	strb.w	r4, [sp, #7]
 80007ae:	4c08      	ldr	r4, [pc, #32]	; (80007d0 <RGBSetHighSDA+0x54>)
 80007b0:	f88d 6005 	strb.w	r6, [sp, #5]
 80007b4:	2501      	movs	r5, #1
 80007b6:	4620      	mov	r0, r4
 80007b8:	4669      	mov	r1, sp
 80007ba:	9500      	str	r5, [sp, #0]
 80007bc:	f001 fa98 	bl	8001cf0 <GPIO_Init>
 80007c0:	61a5      	str	r5, [r4, #24]
 80007c2:	f7ff ffa5 	bl	8000710 <rgb_i2c_delay>
 80007c6:	b002      	add	sp, #8
 80007c8:	bd70      	pop	{r4, r5, r6, pc}
 80007ca:	bf00      	nop
 80007cc:	20000d5c 	.word	0x20000d5c
 80007d0:	48000400 	.word	0x48000400

080007d4 <RGBSetLowSCL>:
 80007d4:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 80007d8:	f44f 7280 	mov.w	r2, #256	; 0x100
 80007dc:	851a      	strh	r2, [r3, #40]	; 0x28
 80007de:	f7ff bf97 	b.w	8000710 <rgb_i2c_delay>

080007e2 <RGBSetHighSCL>:
 80007e2:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 80007e6:	f44f 7280 	mov.w	r2, #256	; 0x100
 80007ea:	619a      	str	r2, [r3, #24]
 80007ec:	f7ff bf90 	b.w	8000710 <rgb_i2c_delay>

080007f0 <rgb_i2c_init>:
 80007f0:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 80007f2:	4f1f      	ldr	r7, [pc, #124]	; (8000870 <rgb_i2c_init+0x80>)
 80007f4:	2400      	movs	r4, #0
 80007f6:	2501      	movs	r5, #1
 80007f8:	2603      	movs	r6, #3
 80007fa:	f44f 7380 	mov.w	r3, #256	; 0x100
 80007fe:	4669      	mov	r1, sp
 8000800:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000804:	9300      	str	r3, [sp, #0]
 8000806:	f88d 4006 	strb.w	r4, [sp, #6]
 800080a:	f88d 4007 	strb.w	r4, [sp, #7]
 800080e:	f88d 5004 	strb.w	r5, [sp, #4]
 8000812:	f88d 6005 	strb.w	r6, [sp, #5]
 8000816:	f001 fa6b 	bl	8001cf0 <GPIO_Init>
 800081a:	783b      	ldrb	r3, [r7, #0]
 800081c:	9300      	str	r3, [sp, #0]
 800081e:	4669      	mov	r1, sp
 8000820:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000824:	f88d 4004 	strb.w	r4, [sp, #4]
 8000828:	f88d 4007 	strb.w	r4, [sp, #7]
 800082c:	f88d 6005 	strb.w	r6, [sp, #5]
 8000830:	f001 fa5e 	bl	8001cf0 <GPIO_Init>
 8000834:	7839      	ldrb	r1, [r7, #0]
 8000836:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 800083a:	f001 fa9e 	bl	8001d7a <GPIO_SetBits>
 800083e:	f88d 4004 	strb.w	r4, [sp, #4]
 8000842:	f88d 4007 	strb.w	r4, [sp, #7]
 8000846:	4c0b      	ldr	r4, [pc, #44]	; (8000874 <rgb_i2c_init+0x84>)
 8000848:	9500      	str	r5, [sp, #0]
 800084a:	4620      	mov	r0, r4
 800084c:	4669      	mov	r1, sp
 800084e:	f88d 6005 	strb.w	r6, [sp, #5]
 8000852:	f001 fa4d 	bl	8001cf0 <GPIO_Init>
 8000856:	4620      	mov	r0, r4
 8000858:	4629      	mov	r1, r5
 800085a:	f001 fa8e 	bl	8001d7a <GPIO_SetBits>
 800085e:	f7ff ffc0 	bl	80007e2 <RGBSetHighSCL>
 8000862:	f7ff ff5b 	bl	800071c <RGBSetLowSDA>
 8000866:	f7ff ff89 	bl	800077c <RGBSetHighSDA>
 800086a:	b003      	add	sp, #12
 800086c:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800086e:	bf00      	nop
 8000870:	20000d5c 	.word	0x20000d5c
 8000874:	48000400 	.word	0x48000400

08000878 <rgb_i2cStart>:
 8000878:	b508      	push	{r3, lr}
 800087a:	f7ff ffb2 	bl	80007e2 <RGBSetHighSCL>
 800087e:	f7ff ff7d 	bl	800077c <RGBSetHighSDA>
 8000882:	f7ff ffae 	bl	80007e2 <RGBSetHighSCL>
 8000886:	f7ff ff49 	bl	800071c <RGBSetLowSDA>
 800088a:	f7ff ffa3 	bl	80007d4 <RGBSetLowSCL>
 800088e:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8000892:	f7ff bf73 	b.w	800077c <RGBSetHighSDA>

08000896 <rgb_i2cStop>:
 8000896:	b508      	push	{r3, lr}
 8000898:	f7ff ff9c 	bl	80007d4 <RGBSetLowSCL>
 800089c:	f7ff ff3e 	bl	800071c <RGBSetLowSDA>
 80008a0:	f7ff ff9f 	bl	80007e2 <RGBSetHighSCL>
 80008a4:	f7ff ff3a 	bl	800071c <RGBSetLowSDA>
 80008a8:	f7ff ff9b 	bl	80007e2 <RGBSetHighSCL>
 80008ac:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80008b0:	f7ff bf64 	b.w	800077c <RGBSetHighSDA>

080008b4 <rgb_i2cWrite>:
 80008b4:	b538      	push	{r3, r4, r5, lr}
 80008b6:	4604      	mov	r4, r0
 80008b8:	2508      	movs	r5, #8
 80008ba:	f7ff ff8b 	bl	80007d4 <RGBSetLowSCL>
 80008be:	0623      	lsls	r3, r4, #24
 80008c0:	d502      	bpl.n	80008c8 <rgb_i2cWrite+0x14>
 80008c2:	f7ff ff5b 	bl	800077c <RGBSetHighSDA>
 80008c6:	e001      	b.n	80008cc <rgb_i2cWrite+0x18>
 80008c8:	f7ff ff28 	bl	800071c <RGBSetLowSDA>
 80008cc:	3d01      	subs	r5, #1
 80008ce:	f7ff ff88 	bl	80007e2 <RGBSetHighSCL>
 80008d2:	0064      	lsls	r4, r4, #1
 80008d4:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 80008d8:	b2e4      	uxtb	r4, r4
 80008da:	d1ee      	bne.n	80008ba <rgb_i2cWrite+0x6>
 80008dc:	f7ff ff7a 	bl	80007d4 <RGBSetLowSCL>
 80008e0:	f7ff ff4c 	bl	800077c <RGBSetHighSDA>
 80008e4:	f7ff ff7d 	bl	80007e2 <RGBSetHighSCL>
 80008e8:	f7ff ff74 	bl	80007d4 <RGBSetLowSCL>
 80008ec:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 80008f0:	f7ff bf0e 	b.w	8000710 <rgb_i2c_delay>

080008f4 <rgb_i2cRead>:
 80008f4:	b570      	push	{r4, r5, r6, lr}
 80008f6:	2300      	movs	r3, #0
 80008f8:	4606      	mov	r6, r0
 80008fa:	460c      	mov	r4, r1
 80008fc:	2200      	movs	r2, #0
 80008fe:	54e2      	strb	r2, [r4, r3]
 8000900:	3301      	adds	r3, #1
 8000902:	2b09      	cmp	r3, #9
 8000904:	d1fa      	bne.n	80008fc <rgb_i2cRead+0x8>
 8000906:	f7ff ff65 	bl	80007d4 <RGBSetLowSCL>
 800090a:	f7ff ff37 	bl	800077c <RGBSetHighSDA>
 800090e:	2508      	movs	r5, #8
 8000910:	2300      	movs	r3, #0
 8000912:	5ce2      	ldrb	r2, [r4, r3]
 8000914:	0052      	lsls	r2, r2, #1
 8000916:	54e2      	strb	r2, [r4, r3]
 8000918:	3301      	adds	r3, #1
 800091a:	2b09      	cmp	r3, #9
 800091c:	d1f9      	bne.n	8000912 <rgb_i2cRead+0x1e>
 800091e:	f7ff ff60 	bl	80007e2 <RGBSetHighSCL>
 8000922:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000926:	8a1b      	ldrh	r3, [r3, #16]
 8000928:	b29b      	uxth	r3, r3
 800092a:	07d9      	lsls	r1, r3, #31
 800092c:	d503      	bpl.n	8000936 <rgb_i2cRead+0x42>
 800092e:	7822      	ldrb	r2, [r4, #0]
 8000930:	f042 0201 	orr.w	r2, r2, #1
 8000934:	7022      	strb	r2, [r4, #0]
 8000936:	079a      	lsls	r2, r3, #30
 8000938:	d503      	bpl.n	8000942 <rgb_i2cRead+0x4e>
 800093a:	7862      	ldrb	r2, [r4, #1]
 800093c:	f042 0201 	orr.w	r2, r2, #1
 8000940:	7062      	strb	r2, [r4, #1]
 8000942:	0758      	lsls	r0, r3, #29
 8000944:	d503      	bpl.n	800094e <rgb_i2cRead+0x5a>
 8000946:	78a2      	ldrb	r2, [r4, #2]
 8000948:	f042 0201 	orr.w	r2, r2, #1
 800094c:	70a2      	strb	r2, [r4, #2]
 800094e:	0719      	lsls	r1, r3, #28
 8000950:	d503      	bpl.n	800095a <rgb_i2cRead+0x66>
 8000952:	78e2      	ldrb	r2, [r4, #3]
 8000954:	f042 0201 	orr.w	r2, r2, #1
 8000958:	70e2      	strb	r2, [r4, #3]
 800095a:	06da      	lsls	r2, r3, #27
 800095c:	d503      	bpl.n	8000966 <rgb_i2cRead+0x72>
 800095e:	7922      	ldrb	r2, [r4, #4]
 8000960:	f042 0201 	orr.w	r2, r2, #1
 8000964:	7122      	strb	r2, [r4, #4]
 8000966:	0698      	lsls	r0, r3, #26
 8000968:	d503      	bpl.n	8000972 <rgb_i2cRead+0x7e>
 800096a:	7962      	ldrb	r2, [r4, #5]
 800096c:	f042 0201 	orr.w	r2, r2, #1
 8000970:	7162      	strb	r2, [r4, #5]
 8000972:	0659      	lsls	r1, r3, #25
 8000974:	d503      	bpl.n	800097e <rgb_i2cRead+0x8a>
 8000976:	79a2      	ldrb	r2, [r4, #6]
 8000978:	f042 0201 	orr.w	r2, r2, #1
 800097c:	71a2      	strb	r2, [r4, #6]
 800097e:	061a      	lsls	r2, r3, #24
 8000980:	d503      	bpl.n	800098a <rgb_i2cRead+0x96>
 8000982:	79e3      	ldrb	r3, [r4, #7]
 8000984:	f043 0301 	orr.w	r3, r3, #1
 8000988:	71e3      	strb	r3, [r4, #7]
 800098a:	4b0b      	ldr	r3, [pc, #44]	; (80009b8 <rgb_i2cRead+0xc4>)
 800098c:	8a1b      	ldrh	r3, [r3, #16]
 800098e:	07db      	lsls	r3, r3, #31
 8000990:	d503      	bpl.n	800099a <rgb_i2cRead+0xa6>
 8000992:	7a23      	ldrb	r3, [r4, #8]
 8000994:	f043 0301 	orr.w	r3, r3, #1
 8000998:	7223      	strb	r3, [r4, #8]
 800099a:	f7ff ff1b 	bl	80007d4 <RGBSetLowSCL>
 800099e:	3d01      	subs	r5, #1
 80009a0:	d1b6      	bne.n	8000910 <rgb_i2cRead+0x1c>
 80009a2:	b10e      	cbz	r6, 80009a8 <rgb_i2cRead+0xb4>
 80009a4:	f7ff feba 	bl	800071c <RGBSetLowSDA>
 80009a8:	f7ff ff1b 	bl	80007e2 <RGBSetHighSCL>
 80009ac:	f7ff ff12 	bl	80007d4 <RGBSetLowSCL>
 80009b0:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 80009b4:	f7ff beac 	b.w	8000710 <rgb_i2c_delay>
 80009b8:	48000400 	.word	0x48000400

080009bc <rgb_i2c_write_reg>:
 80009bc:	b570      	push	{r4, r5, r6, lr}
 80009be:	4605      	mov	r5, r0
 80009c0:	460c      	mov	r4, r1
 80009c2:	4616      	mov	r6, r2
 80009c4:	f7ff ff58 	bl	8000878 <rgb_i2cStart>
 80009c8:	4628      	mov	r0, r5
 80009ca:	f7ff ff73 	bl	80008b4 <rgb_i2cWrite>
 80009ce:	4620      	mov	r0, r4
 80009d0:	f7ff ff70 	bl	80008b4 <rgb_i2cWrite>
 80009d4:	4630      	mov	r0, r6
 80009d6:	f7ff ff6d 	bl	80008b4 <rgb_i2cWrite>
 80009da:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 80009de:	f7ff bf5a 	b.w	8000896 <rgb_i2cStop>

080009e2 <rgb_i2c_read_reg>:
 80009e2:	b570      	push	{r4, r5, r6, lr}
 80009e4:	4604      	mov	r4, r0
 80009e6:	460d      	mov	r5, r1
 80009e8:	4616      	mov	r6, r2
 80009ea:	f7ff ff45 	bl	8000878 <rgb_i2cStart>
 80009ee:	4620      	mov	r0, r4
 80009f0:	f7ff ff60 	bl	80008b4 <rgb_i2cWrite>
 80009f4:	4628      	mov	r0, r5
 80009f6:	f7ff ff5d 	bl	80008b4 <rgb_i2cWrite>
 80009fa:	f7ff ff3d 	bl	8000878 <rgb_i2cStart>
 80009fe:	f044 0001 	orr.w	r0, r4, #1
 8000a02:	f7ff ff57 	bl	80008b4 <rgb_i2cWrite>
 8000a06:	4631      	mov	r1, r6
 8000a08:	2000      	movs	r0, #0
 8000a0a:	f7ff ff73 	bl	80008f4 <rgb_i2cRead>
 8000a0e:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8000a12:	f7ff bf40 	b.w	8000896 <rgb_i2cStop>
	...

08000a18 <rgb_init>:
 8000a18:	4b1d      	ldr	r3, [pc, #116]	; (8000a90 <rgb_init+0x78>)
 8000a1a:	b570      	push	{r4, r5, r6, lr}
 8000a1c:	2409      	movs	r4, #9
 8000a1e:	2200      	movs	r2, #0
 8000a20:	3c01      	subs	r4, #1
 8000a22:	801a      	strh	r2, [r3, #0]
 8000a24:	825a      	strh	r2, [r3, #18]
 8000a26:	849a      	strh	r2, [r3, #36]	; 0x24
 8000a28:	f8a3 2048 	strh.w	r2, [r3, #72]	; 0x48
 8000a2c:	86da      	strh	r2, [r3, #54]	; 0x36
 8000a2e:	f103 0302 	add.w	r3, r3, #2
 8000a32:	d1f4      	bne.n	8000a1e <rgb_init+0x6>
 8000a34:	4d17      	ldr	r5, [pc, #92]	; (8000a94 <rgb_init+0x7c>)
 8000a36:	f64f 76ff 	movw	r6, #65535	; 0xffff
 8000a3a:	802e      	strh	r6, [r5, #0]
 8000a3c:	f7ff fed8 	bl	80007f0 <rgb_i2c_init>
 8000a40:	2072      	movs	r0, #114	; 0x72
 8000a42:	2181      	movs	r1, #129	; 0x81
 8000a44:	22ff      	movs	r2, #255	; 0xff
 8000a46:	f7ff ffb9 	bl	80009bc <rgb_i2c_write_reg>
 8000a4a:	2072      	movs	r0, #114	; 0x72
 8000a4c:	2183      	movs	r1, #131	; 0x83
 8000a4e:	22ff      	movs	r2, #255	; 0xff
 8000a50:	f7ff ffb4 	bl	80009bc <rgb_i2c_write_reg>
 8000a54:	2072      	movs	r0, #114	; 0x72
 8000a56:	218d      	movs	r1, #141	; 0x8d
 8000a58:	4622      	mov	r2, r4
 8000a5a:	f7ff ffaf 	bl	80009bc <rgb_i2c_write_reg>
 8000a5e:	2072      	movs	r0, #114	; 0x72
 8000a60:	2180      	movs	r1, #128	; 0x80
 8000a62:	2203      	movs	r2, #3
 8000a64:	f7ff ffaa 	bl	80009bc <rgb_i2c_write_reg>
 8000a68:	2072      	movs	r0, #114	; 0x72
 8000a6a:	218f      	movs	r1, #143	; 0x8f
 8000a6c:	2223      	movs	r2, #35	; 0x23
 8000a6e:	f7ff ffa5 	bl	80009bc <rgb_i2c_write_reg>
 8000a72:	f7ff fe83 	bl	800077c <RGBSetHighSDA>
 8000a76:	2072      	movs	r0, #114	; 0x72
 8000a78:	2180      	movs	r1, #128	; 0x80
 8000a7a:	2207      	movs	r2, #7
 8000a7c:	802c      	strh	r4, [r5, #0]
 8000a7e:	f7ff ff9d 	bl	80009bc <rgb_i2c_write_reg>
 8000a82:	2072      	movs	r0, #114	; 0x72
 8000a84:	218e      	movs	r1, #142	; 0x8e
 8000a86:	2208      	movs	r2, #8
 8000a88:	f7ff ff98 	bl	80009bc <rgb_i2c_write_reg>
 8000a8c:	802e      	strh	r6, [r5, #0]
 8000a8e:	bd70      	pop	{r4, r5, r6, pc}
 8000a90:	20000400 	.word	0x20000400
 8000a94:	20000d5c 	.word	0x20000d5c

08000a98 <rgb_read>:
 8000a98:	b538      	push	{r3, r4, r5, lr}
 8000a9a:	f7ff feed 	bl	8000878 <rgb_i2cStart>
 8000a9e:	2072      	movs	r0, #114	; 0x72
 8000aa0:	f7ff ff08 	bl	80008b4 <rgb_i2cWrite>
 8000aa4:	20b4      	movs	r0, #180	; 0xb4
 8000aa6:	f7ff ff05 	bl	80008b4 <rgb_i2cWrite>
 8000aaa:	f7ff fee5 	bl	8000878 <rgb_i2cStart>
 8000aae:	2073      	movs	r0, #115	; 0x73
 8000ab0:	f7ff ff00 	bl	80008b4 <rgb_i2cWrite>
 8000ab4:	2001      	movs	r0, #1
 8000ab6:	4946      	ldr	r1, [pc, #280]	; (8000bd0 <rgb_read+0x138>)
 8000ab8:	f7ff ff1c 	bl	80008f4 <rgb_i2cRead>
 8000abc:	2300      	movs	r3, #0
 8000abe:	4d45      	ldr	r5, [pc, #276]	; (8000bd4 <rgb_read+0x13c>)
 8000ac0:	4c43      	ldr	r4, [pc, #268]	; (8000bd0 <rgb_read+0x138>)
 8000ac2:	eb05 0243 	add.w	r2, r5, r3, lsl #1
 8000ac6:	5d19      	ldrb	r1, [r3, r4]
 8000ac8:	86d1      	strh	r1, [r2, #54]	; 0x36
 8000aca:	3301      	adds	r3, #1
 8000acc:	2b09      	cmp	r3, #9
 8000ace:	d1f6      	bne.n	8000abe <rgb_read+0x26>
 8000ad0:	2001      	movs	r0, #1
 8000ad2:	4621      	mov	r1, r4
 8000ad4:	f7ff ff0e 	bl	80008f4 <rgb_i2cRead>
 8000ad8:	f105 0236 	add.w	r2, r5, #54	; 0x36
 8000adc:	2300      	movs	r3, #0
 8000ade:	8811      	ldrh	r1, [r2, #0]
 8000ae0:	5ce0      	ldrb	r0, [r4, r3]
 8000ae2:	3301      	adds	r3, #1
 8000ae4:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 8000ae8:	2b09      	cmp	r3, #9
 8000aea:	f822 1b02 	strh.w	r1, [r2], #2
 8000aee:	d1f6      	bne.n	8000ade <rgb_read+0x46>
 8000af0:	2001      	movs	r0, #1
 8000af2:	4937      	ldr	r1, [pc, #220]	; (8000bd0 <rgb_read+0x138>)
 8000af4:	f7ff fefe 	bl	80008f4 <rgb_i2cRead>
 8000af8:	2300      	movs	r3, #0
 8000afa:	5ce2      	ldrb	r2, [r4, r3]
 8000afc:	f825 2013 	strh.w	r2, [r5, r3, lsl #1]
 8000b00:	3301      	adds	r3, #1
 8000b02:	2b09      	cmp	r3, #9
 8000b04:	d1f9      	bne.n	8000afa <rgb_read+0x62>
 8000b06:	2001      	movs	r0, #1
 8000b08:	4931      	ldr	r1, [pc, #196]	; (8000bd0 <rgb_read+0x138>)
 8000b0a:	f7ff fef3 	bl	80008f4 <rgb_i2cRead>
 8000b0e:	4a32      	ldr	r2, [pc, #200]	; (8000bd8 <rgb_read+0x140>)
 8000b10:	2300      	movs	r3, #0
 8000b12:	5ce0      	ldrb	r0, [r4, r3]
 8000b14:	8851      	ldrh	r1, [r2, #2]
 8000b16:	3301      	adds	r3, #1
 8000b18:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 8000b1c:	2b09      	cmp	r3, #9
 8000b1e:	f822 1f02 	strh.w	r1, [r2, #2]!
 8000b22:	d1f6      	bne.n	8000b12 <rgb_read+0x7a>
 8000b24:	2001      	movs	r0, #1
 8000b26:	492a      	ldr	r1, [pc, #168]	; (8000bd0 <rgb_read+0x138>)
 8000b28:	f7ff fee4 	bl	80008f4 <rgb_i2cRead>
 8000b2c:	2300      	movs	r3, #0
 8000b2e:	eb05 0243 	add.w	r2, r5, r3, lsl #1
 8000b32:	5ce1      	ldrb	r1, [r4, r3]
 8000b34:	8251      	strh	r1, [r2, #18]
 8000b36:	3301      	adds	r3, #1
 8000b38:	2b09      	cmp	r3, #9
 8000b3a:	d1f8      	bne.n	8000b2e <rgb_read+0x96>
 8000b3c:	2001      	movs	r0, #1
 8000b3e:	4924      	ldr	r1, [pc, #144]	; (8000bd0 <rgb_read+0x138>)
 8000b40:	f7ff fed8 	bl	80008f4 <rgb_i2cRead>
 8000b44:	4a25      	ldr	r2, [pc, #148]	; (8000bdc <rgb_read+0x144>)
 8000b46:	2300      	movs	r3, #0
 8000b48:	8811      	ldrh	r1, [r2, #0]
 8000b4a:	5ce0      	ldrb	r0, [r4, r3]
 8000b4c:	3301      	adds	r3, #1
 8000b4e:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 8000b52:	2b09      	cmp	r3, #9
 8000b54:	f822 1b02 	strh.w	r1, [r2], #2
 8000b58:	d1f6      	bne.n	8000b48 <rgb_read+0xb0>
 8000b5a:	2001      	movs	r0, #1
 8000b5c:	491c      	ldr	r1, [pc, #112]	; (8000bd0 <rgb_read+0x138>)
 8000b5e:	f7ff fec9 	bl	80008f4 <rgb_i2cRead>
 8000b62:	2300      	movs	r3, #0
 8000b64:	eb05 0243 	add.w	r2, r5, r3, lsl #1
 8000b68:	5ce1      	ldrb	r1, [r4, r3]
 8000b6a:	8491      	strh	r1, [r2, #36]	; 0x24
 8000b6c:	3301      	adds	r3, #1
 8000b6e:	2b09      	cmp	r3, #9
 8000b70:	d1f8      	bne.n	8000b64 <rgb_read+0xcc>
 8000b72:	2001      	movs	r0, #1
 8000b74:	4916      	ldr	r1, [pc, #88]	; (8000bd0 <rgb_read+0x138>)
 8000b76:	f7ff febd 	bl	80008f4 <rgb_i2cRead>
 8000b7a:	4a19      	ldr	r2, [pc, #100]	; (8000be0 <rgb_read+0x148>)
 8000b7c:	2300      	movs	r3, #0
 8000b7e:	8811      	ldrh	r1, [r2, #0]
 8000b80:	5ce0      	ldrb	r0, [r4, r3]
 8000b82:	3301      	adds	r3, #1
 8000b84:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 8000b88:	2b09      	cmp	r3, #9
 8000b8a:	f822 1b02 	strh.w	r1, [r2], #2
 8000b8e:	d1f6      	bne.n	8000b7e <rgb_read+0xe6>
 8000b90:	2001      	movs	r0, #1
 8000b92:	490f      	ldr	r1, [pc, #60]	; (8000bd0 <rgb_read+0x138>)
 8000b94:	f7ff feae 	bl	80008f4 <rgb_i2cRead>
 8000b98:	2300      	movs	r3, #0
 8000b9a:	eb05 0243 	add.w	r2, r5, r3, lsl #1
 8000b9e:	5ce1      	ldrb	r1, [r4, r3]
 8000ba0:	f8a2 1048 	strh.w	r1, [r2, #72]	; 0x48
 8000ba4:	3301      	adds	r3, #1
 8000ba6:	2b09      	cmp	r3, #9
 8000ba8:	d1f7      	bne.n	8000b9a <rgb_read+0x102>
 8000baa:	2000      	movs	r0, #0
 8000bac:	4908      	ldr	r1, [pc, #32]	; (8000bd0 <rgb_read+0x138>)
 8000bae:	f7ff fea1 	bl	80008f4 <rgb_i2cRead>
 8000bb2:	4a0c      	ldr	r2, [pc, #48]	; (8000be4 <rgb_read+0x14c>)
 8000bb4:	2300      	movs	r3, #0
 8000bb6:	8811      	ldrh	r1, [r2, #0]
 8000bb8:	5ce0      	ldrb	r0, [r4, r3]
 8000bba:	3301      	adds	r3, #1
 8000bbc:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 8000bc0:	2b09      	cmp	r3, #9
 8000bc2:	f822 1b02 	strh.w	r1, [r2], #2
 8000bc6:	d1f6      	bne.n	8000bb6 <rgb_read+0x11e>
 8000bc8:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8000bcc:	f7ff be63 	b.w	8000896 <rgb_i2cStop>
 8000bd0:	20000d5e 	.word	0x20000d5e
 8000bd4:	20000400 	.word	0x20000400
 8000bd8:	200003fe 	.word	0x200003fe
 8000bdc:	20000412 	.word	0x20000412
 8000be0:	20000424 	.word	0x20000424
 8000be4:	20000448 	.word	0x20000448

08000be8 <line_sensor_read.part.0>:
 8000be8:	4980      	ldr	r1, [pc, #512]	; (8000dec <line_sensor_read.part.0+0x204>)
 8000bea:	4a81      	ldr	r2, [pc, #516]	; (8000df0 <line_sensor_read.part.0+0x208>)
 8000bec:	6a4b      	ldr	r3, [r1, #36]	; 0x24
 8000bee:	f9b2 0058 	ldrsh.w	r0, [r2, #88]	; 0x58
 8000bf2:	ebc3 03c3 	rsb	r3, r3, r3, lsl #3
 8000bf6:	4403      	add	r3, r0
 8000bf8:	2008      	movs	r0, #8
 8000bfa:	fb93 f3f0 	sdiv	r3, r3, r0
 8000bfe:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8000c02:	624b      	str	r3, [r1, #36]	; 0x24
 8000c04:	2300      	movs	r3, #0
 8000c06:	461c      	mov	r4, r3
 8000c08:	461d      	mov	r5, r3
 8000c0a:	461e      	mov	r6, r3
 8000c0c:	461f      	mov	r7, r3
 8000c0e:	4610      	mov	r0, r2
 8000c10:	f8df c1e4 	ldr.w	ip, [pc, #484]	; 8000df8 <line_sensor_read.part.0+0x210>
 8000c14:	f8b2 a036 	ldrh.w	sl, [r2, #54]	; 0x36
 8000c18:	f853 c00c 	ldr.w	ip, [r3, ip]
 8000c1c:	f8b2 9000 	ldrh.w	r9, [r2]
 8000c20:	f8b2 8012 	ldrh.w	r8, [r2, #18]
 8000c24:	f8b2 b024 	ldrh.w	fp, [r2, #36]	; 0x24
 8000c28:	ebcc 0a0a 	rsb	sl, ip, sl
 8000c2c:	f8df c1cc 	ldr.w	ip, [pc, #460]	; 8000dfc <line_sensor_read.part.0+0x214>
 8000c30:	f853 c00c 	ldr.w	ip, [r3, ip]
 8000c34:	ebcc 0909 	rsb	r9, ip, r9
 8000c38:	f8df c1c4 	ldr.w	ip, [pc, #452]	; 8000e00 <line_sensor_read.part.0+0x218>
 8000c3c:	f853 c00c 	ldr.w	ip, [r3, ip]
 8000c40:	ebcc 0808 	rsb	r8, ip, r8
 8000c44:	f8df c1bc 	ldr.w	ip, [pc, #444]	; 8000e04 <line_sensor_read.part.0+0x21c>
 8000c48:	f853 c00c 	ldr.w	ip, [r3, ip]
 8000c4c:	3304      	adds	r3, #4
 8000c4e:	ebcc 0c0b 	rsb	ip, ip, fp
 8000c52:	fa1f fa8a 	uxth.w	sl, sl
 8000c56:	fa1f f989 	uxth.w	r9, r9
 8000c5a:	fa1f f888 	uxth.w	r8, r8
 8000c5e:	fa1f fc8c 	uxth.w	ip, ip
 8000c62:	2b20      	cmp	r3, #32
 8000c64:	f8a2 a036 	strh.w	sl, [r2, #54]	; 0x36
 8000c68:	f8a2 9000 	strh.w	r9, [r2]
 8000c6c:	f8a2 8012 	strh.w	r8, [r2, #18]
 8000c70:	f8a2 c024 	strh.w	ip, [r2, #36]	; 0x24
 8000c74:	fa07 f78a 	sxtah	r7, r7, sl
 8000c78:	fa06 f689 	sxtah	r6, r6, r9
 8000c7c:	fa05 f588 	sxtah	r5, r5, r8
 8000c80:	fa04 f48c 	sxtah	r4, r4, ip
 8000c84:	f102 0202 	add.w	r2, r2, #2
 8000c88:	d1c2      	bne.n	8000c10 <line_sensor_read.part.0+0x28>
 8000c8a:	2308      	movs	r3, #8
 8000c8c:	fb97 f7f3 	sdiv	r7, r7, r3
 8000c90:	fb96 f6f3 	sdiv	r6, r6, r3
 8000c94:	fb95 f5f3 	sdiv	r5, r5, r3
 8000c98:	fb94 f4f3 	sdiv	r4, r4, r3
 8000c9c:	4b54      	ldr	r3, [pc, #336]	; (8000df0 <line_sensor_read.part.0+0x208>)
 8000c9e:	2200      	movs	r2, #0
 8000ca0:	f8b3 c036 	ldrh.w	ip, [r3, #54]	; 0x36
 8000ca4:	ebcc 0c07 	rsb	ip, ip, r7
 8000ca8:	f8a3 c036 	strh.w	ip, [r3, #54]	; 0x36
 8000cac:	f832 c000 	ldrh.w	ip, [r2, r0]
 8000cb0:	ebc6 0c0c 	rsb	ip, r6, ip
 8000cb4:	f822 c000 	strh.w	ip, [r2, r0]
 8000cb8:	f8b3 c012 	ldrh.w	ip, [r3, #18]
 8000cbc:	ebc5 0c0c 	rsb	ip, r5, ip
 8000cc0:	f8a3 c012 	strh.w	ip, [r3, #18]
 8000cc4:	f8b3 c024 	ldrh.w	ip, [r3, #36]	; 0x24
 8000cc8:	3202      	adds	r2, #2
 8000cca:	ebc4 0c0c 	rsb	ip, r4, ip
 8000cce:	2a10      	cmp	r2, #16
 8000cd0:	f8a3 c024 	strh.w	ip, [r3, #36]	; 0x24
 8000cd4:	f103 0302 	add.w	r3, r3, #2
 8000cd8:	d1e2      	bne.n	8000ca0 <line_sensor_read.part.0+0xb8>
 8000cda:	2300      	movs	r3, #0
 8000cdc:	181d      	adds	r5, r3, r0
 8000cde:	18cc      	adds	r4, r1, r3
 8000ce0:	3302      	adds	r3, #2
 8000ce2:	8eed      	ldrh	r5, [r5, #54]	; 0x36
 8000ce4:	4a41      	ldr	r2, [pc, #260]	; (8000dec <line_sensor_read.part.0+0x204>)
 8000ce6:	8165      	strh	r5, [r4, #10]
 8000ce8:	2b10      	cmp	r3, #16
 8000cea:	d1f7      	bne.n	8000cdc <line_sensor_read.part.0+0xf4>
 8000cec:	f8b2 c010 	ldrh.w	ip, [r2, #16]
 8000cf0:	8a56      	ldrh	r6, [r2, #18]
 8000cf2:	fa0f f58c 	sxth.w	r5, ip
 8000cf6:	b230      	sxth	r0, r6
 8000cf8:	182a      	adds	r2, r5, r0
 8000cfa:	d00c      	beq.n	8000d16 <line_sensor_read.part.0+0x12e>
 8000cfc:	4c3d      	ldr	r4, [pc, #244]	; (8000df4 <line_sensor_read.part.0+0x20c>)
 8000cfe:	8923      	ldrh	r3, [r4, #8]
 8000d00:	88e7      	ldrh	r7, [r4, #6]
 8000d02:	fb16 f303 	smulbb	r3, r6, r3
 8000d06:	fb1c 3307 	smlabb	r3, ip, r7, r3
 8000d0a:	2402      	movs	r4, #2
 8000d0c:	fb93 f3f2 	sdiv	r3, r3, r2
 8000d10:	fb92 f2f4 	sdiv	r2, r2, r4
 8000d14:	e000      	b.n	8000d18 <line_sensor_read.part.0+0x130>
 8000d16:	4613      	mov	r3, r2
 8000d18:	8a8f      	ldrh	r7, [r1, #20]
 8000d1a:	b23c      	sxth	r4, r7
 8000d1c:	1820      	adds	r0, r4, r0
 8000d1e:	d00b      	beq.n	8000d38 <line_sensor_read.part.0+0x150>
 8000d20:	2c96      	cmp	r4, #150	; 0x96
 8000d22:	dd09      	ble.n	8000d38 <line_sensor_read.part.0+0x150>
 8000d24:	4a33      	ldr	r2, [pc, #204]	; (8000df4 <line_sensor_read.part.0+0x20c>)
 8000d26:	8953      	ldrh	r3, [r2, #10]
 8000d28:	8912      	ldrh	r2, [r2, #8]
 8000d2a:	fb16 f602 	smulbb	r6, r6, r2
 8000d2e:	fb17 6303 	smlabb	r3, r7, r3, r6
 8000d32:	fb93 f3f0 	sdiv	r3, r3, r0
 8000d36:	4622      	mov	r2, r4
 8000d38:	89ce      	ldrh	r6, [r1, #14]
 8000d3a:	b230      	sxth	r0, r6
 8000d3c:	1945      	adds	r5, r0, r5
 8000d3e:	d00b      	beq.n	8000d58 <line_sensor_read.part.0+0x170>
 8000d40:	2896      	cmp	r0, #150	; 0x96
 8000d42:	dd09      	ble.n	8000d58 <line_sensor_read.part.0+0x170>
 8000d44:	4a2b      	ldr	r2, [pc, #172]	; (8000df4 <line_sensor_read.part.0+0x20c>)
 8000d46:	8893      	ldrh	r3, [r2, #4]
 8000d48:	88d2      	ldrh	r2, [r2, #6]
 8000d4a:	fb1c fc02 	smulbb	ip, ip, r2
 8000d4e:	fb16 c303 	smlabb	r3, r6, r3, ip
 8000d52:	fb93 f3f5 	sdiv	r3, r3, r5
 8000d56:	4602      	mov	r2, r0
 8000d58:	f8b1 c016 	ldrh.w	ip, [r1, #22]
 8000d5c:	fa0f f58c 	sxth.w	r5, ip
 8000d60:	192c      	adds	r4, r5, r4
 8000d62:	d00b      	beq.n	8000d7c <line_sensor_read.part.0+0x194>
 8000d64:	2d96      	cmp	r5, #150	; 0x96
 8000d66:	dd09      	ble.n	8000d7c <line_sensor_read.part.0+0x194>
 8000d68:	4a22      	ldr	r2, [pc, #136]	; (8000df4 <line_sensor_read.part.0+0x20c>)
 8000d6a:	8993      	ldrh	r3, [r2, #12]
 8000d6c:	8952      	ldrh	r2, [r2, #10]
 8000d6e:	fb17 f702 	smulbb	r7, r7, r2
 8000d72:	fb1c 7303 	smlabb	r3, ip, r3, r7
 8000d76:	fb93 f3f4 	sdiv	r3, r3, r4
 8000d7a:	462a      	mov	r2, r5
 8000d7c:	898d      	ldrh	r5, [r1, #12]
 8000d7e:	b22c      	sxth	r4, r5
 8000d80:	1820      	adds	r0, r4, r0
 8000d82:	d00b      	beq.n	8000d9c <line_sensor_read.part.0+0x1b4>
 8000d84:	2c96      	cmp	r4, #150	; 0x96
 8000d86:	dd09      	ble.n	8000d9c <line_sensor_read.part.0+0x1b4>
 8000d88:	4a1a      	ldr	r2, [pc, #104]	; (8000df4 <line_sensor_read.part.0+0x20c>)
 8000d8a:	8853      	ldrh	r3, [r2, #2]
 8000d8c:	8892      	ldrh	r2, [r2, #4]
 8000d8e:	fb16 f602 	smulbb	r6, r6, r2
 8000d92:	fb15 6303 	smlabb	r3, r5, r3, r6
 8000d96:	fb93 f3f0 	sdiv	r3, r3, r0
 8000d9a:	4622      	mov	r2, r4
 8000d9c:	f9b1 0018 	ldrsh.w	r0, [r1, #24]
 8000da0:	2896      	cmp	r0, #150	; 0x96
 8000da2:	dd03      	ble.n	8000dac <line_sensor_read.part.0+0x1c4>
 8000da4:	4b13      	ldr	r3, [pc, #76]	; (8000df4 <line_sensor_read.part.0+0x20c>)
 8000da6:	f9b3 300e 	ldrsh.w	r3, [r3, #14]
 8000daa:	4602      	mov	r2, r0
 8000dac:	f9b1 000a 	ldrsh.w	r0, [r1, #10]
 8000db0:	2896      	cmp	r0, #150	; 0x96
 8000db2:	dd03      	ble.n	8000dbc <line_sensor_read.part.0+0x1d4>
 8000db4:	4b0f      	ldr	r3, [pc, #60]	; (8000df4 <line_sensor_read.part.0+0x20c>)
 8000db6:	f9b3 3000 	ldrsh.w	r3, [r3]
 8000dba:	e001      	b.n	8000dc0 <line_sensor_read.part.0+0x1d8>
 8000dbc:	2a96      	cmp	r2, #150	; 0x96
 8000dbe:	dd0f      	ble.n	8000de0 <line_sensor_read.part.0+0x1f8>
 8000dc0:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
 8000dc4:	dc05      	bgt.n	8000dd2 <line_sensor_read.part.0+0x1ea>
 8000dc6:	f06f 02ff 	mvn.w	r2, #255	; 0xff
 8000dca:	4293      	cmp	r3, r2
 8000dcc:	bfb8      	it	lt
 8000dce:	4613      	movlt	r3, r2
 8000dd0:	e001      	b.n	8000dd6 <line_sensor_read.part.0+0x1ee>
 8000dd2:	f44f 7380 	mov.w	r3, #256	; 0x100
 8000dd6:	620b      	str	r3, [r1, #32]
 8000dd8:	2308      	movs	r3, #8
 8000dda:	770b      	strb	r3, [r1, #28]
 8000ddc:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8000de0:	4b02      	ldr	r3, [pc, #8]	; (8000dec <line_sensor_read.part.0+0x204>)
 8000de2:	2200      	movs	r2, #0
 8000de4:	771a      	strb	r2, [r3, #28]
 8000de6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8000dea:	bf00      	nop
 8000dec:	2000045c 	.word	0x2000045c
 8000df0:	20000400 	.word	0x20000400
 8000df4:	20000110 	.word	0x20000110
 8000df8:	20000164 	.word	0x20000164
 8000dfc:	200001c4 	.word	0x200001c4
 8000e00:	200001a4 	.word	0x200001a4
 8000e04:	20000184 	.word	0x20000184

08000e08 <line_sensor_init>:
 8000e08:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8000e0c:	2064      	movs	r0, #100	; 0x64
 8000e0e:	f001 fecd 	bl	8002bac <timer_delay_ms>
 8000e12:	2400      	movs	r4, #0
 8000e14:	f7ff fe00 	bl	8000a18 <rgb_init>
 8000e18:	f7ff fe3e 	bl	8000a98 <rgb_read>
 8000e1c:	2072      	movs	r0, #114	; 0x72
 8000e1e:	2192      	movs	r1, #146	; 0x92
 8000e20:	4a2e      	ldr	r2, [pc, #184]	; (8000edc <line_sensor_init+0xd4>)
 8000e22:	f7ff fdde 	bl	80009e2 <rgb_i2c_read_reg>
 8000e26:	4623      	mov	r3, r4
 8000e28:	4a2d      	ldr	r2, [pc, #180]	; (8000ee0 <line_sensor_init+0xd8>)
 8000e2a:	1899      	adds	r1, r3, r2
 8000e2c:	4616      	mov	r6, r2
 8000e2e:	7849      	ldrb	r1, [r1, #1]
 8000e30:	2969      	cmp	r1, #105	; 0x69
 8000e32:	d002      	beq.n	8000e3a <line_sensor_init+0x32>
 8000e34:	2201      	movs	r2, #1
 8000e36:	409a      	lsls	r2, r3
 8000e38:	4314      	orrs	r4, r2
 8000e3a:	3301      	adds	r3, #1
 8000e3c:	2b09      	cmp	r3, #9
 8000e3e:	d1f3      	bne.n	8000e28 <line_sensor_init+0x20>
 8000e40:	2100      	movs	r1, #0
 8000e42:	1875      	adds	r5, r6, r1
 8000e44:	3102      	adds	r1, #2
 8000e46:	2200      	movs	r2, #0
 8000e48:	2910      	cmp	r1, #16
 8000e4a:	4b25      	ldr	r3, [pc, #148]	; (8000ee0 <line_sensor_init+0xd8>)
 8000e4c:	816a      	strh	r2, [r5, #10]
 8000e4e:	d1f8      	bne.n	8000e42 <line_sensor_init+0x3a>
 8000e50:	701a      	strb	r2, [r3, #0]
 8000e52:	771a      	strb	r2, [r3, #28]
 8000e54:	f883 2028 	strb.w	r2, [r3, #40]	; 0x28
 8000e58:	621a      	str	r2, [r3, #32]
 8000e5a:	625a      	str	r2, [r3, #36]	; 0x24
 8000e5c:	f7ff fe1c 	bl	8000a98 <rgb_read>
 8000e60:	2520      	movs	r5, #32
 8000e62:	f7ff fe19 	bl	8000a98 <rgb_read>
 8000e66:	491f      	ldr	r1, [pc, #124]	; (8000ee4 <line_sensor_init+0xdc>)
 8000e68:	2200      	movs	r2, #0
 8000e6a:	f8df c088 	ldr.w	ip, [pc, #136]	; 8000ef4 <line_sensor_init+0xec>
 8000e6e:	f9b1 0036 	ldrsh.w	r0, [r1, #54]	; 0x36
 8000e72:	f852 300c 	ldr.w	r3, [r2, ip]
 8000e76:	4e1c      	ldr	r6, [pc, #112]	; (8000ee8 <line_sensor_init+0xe0>)
 8000e78:	f9b1 7012 	ldrsh.w	r7, [r1, #18]
 8000e7c:	f9b1 8024 	ldrsh.w	r8, [r1, #36]	; 0x24
 8000e80:	4403      	add	r3, r0
 8000e82:	f842 300c 	str.w	r3, [r2, ip]
 8000e86:	f9b1 0000 	ldrsh.w	r0, [r1]
 8000e8a:	5993      	ldr	r3, [r2, r6]
 8000e8c:	4403      	add	r3, r0
 8000e8e:	4817      	ldr	r0, [pc, #92]	; (8000eec <line_sensor_init+0xe4>)
 8000e90:	5193      	str	r3, [r2, r6]
 8000e92:	5813      	ldr	r3, [r2, r0]
 8000e94:	443b      	add	r3, r7
 8000e96:	5013      	str	r3, [r2, r0]
 8000e98:	4b15      	ldr	r3, [pc, #84]	; (8000ef0 <line_sensor_init+0xe8>)
 8000e9a:	58d7      	ldr	r7, [r2, r3]
 8000e9c:	4447      	add	r7, r8
 8000e9e:	50d7      	str	r7, [r2, r3]
 8000ea0:	3204      	adds	r2, #4
 8000ea2:	2a20      	cmp	r2, #32
 8000ea4:	f101 0102 	add.w	r1, r1, #2
 8000ea8:	461f      	mov	r7, r3
 8000eaa:	d1de      	bne.n	8000e6a <line_sensor_init+0x62>
 8000eac:	3d01      	subs	r5, #1
 8000eae:	d1d8      	bne.n	8000e62 <line_sensor_init+0x5a>
 8000eb0:	462b      	mov	r3, r5
 8000eb2:	f85c 2003 	ldr.w	r2, [ip, r3]
 8000eb6:	0952      	lsrs	r2, r2, #5
 8000eb8:	f84c 2003 	str.w	r2, [ip, r3]
 8000ebc:	58f2      	ldr	r2, [r6, r3]
 8000ebe:	0952      	lsrs	r2, r2, #5
 8000ec0:	50f2      	str	r2, [r6, r3]
 8000ec2:	58c2      	ldr	r2, [r0, r3]
 8000ec4:	0952      	lsrs	r2, r2, #5
 8000ec6:	50c2      	str	r2, [r0, r3]
 8000ec8:	58fa      	ldr	r2, [r7, r3]
 8000eca:	0952      	lsrs	r2, r2, #5
 8000ecc:	50fa      	str	r2, [r7, r3]
 8000ece:	3304      	adds	r3, #4
 8000ed0:	2b20      	cmp	r3, #32
 8000ed2:	d1ee      	bne.n	8000eb2 <line_sensor_init+0xaa>
 8000ed4:	4620      	mov	r0, r4
 8000ed6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8000eda:	bf00      	nop
 8000edc:	2000045d 	.word	0x2000045d
 8000ee0:	2000045c 	.word	0x2000045c
 8000ee4:	20000400 	.word	0x20000400
 8000ee8:	200001c4 	.word	0x200001c4
 8000eec:	200001a4 	.word	0x200001a4
 8000ef0:	20000184 	.word	0x20000184
 8000ef4:	20000164 	.word	0x20000164

08000ef8 <line_sensor_read>:
 8000ef8:	b510      	push	{r4, lr}
 8000efa:	4604      	mov	r4, r0
 8000efc:	f7ff fdcc 	bl	8000a98 <rgb_read>
 8000f00:	b91c      	cbnz	r4, 8000f0a <line_sensor_read+0x12>
 8000f02:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000f06:	f7ff be6f 	b.w	8000be8 <line_sensor_read.part.0>
 8000f0a:	bd10      	pop	{r4, pc}

08000f0c <lsm9ds0_read>:
 8000f0c:	b538      	push	{r3, r4, r5, lr}
 8000f0e:	2128      	movs	r1, #40	; 0x28
 8000f10:	20d4      	movs	r0, #212	; 0xd4
 8000f12:	f000 fe5a 	bl	8001bca <i2c_read_reg>
 8000f16:	2129      	movs	r1, #41	; 0x29
 8000f18:	4605      	mov	r5, r0
 8000f1a:	20d4      	movs	r0, #212	; 0xd4
 8000f1c:	f000 fe55 	bl	8001bca <i2c_read_reg>
 8000f20:	4c38      	ldr	r4, [pc, #224]	; (8001004 <lsm9ds0_read+0xf8>)
 8000f22:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000f26:	81a0      	strh	r0, [r4, #12]
 8000f28:	212a      	movs	r1, #42	; 0x2a
 8000f2a:	20d4      	movs	r0, #212	; 0xd4
 8000f2c:	f000 fe4d 	bl	8001bca <i2c_read_reg>
 8000f30:	212b      	movs	r1, #43	; 0x2b
 8000f32:	4605      	mov	r5, r0
 8000f34:	20d4      	movs	r0, #212	; 0xd4
 8000f36:	f000 fe48 	bl	8001bca <i2c_read_reg>
 8000f3a:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000f3e:	81e0      	strh	r0, [r4, #14]
 8000f40:	212c      	movs	r1, #44	; 0x2c
 8000f42:	20d4      	movs	r0, #212	; 0xd4
 8000f44:	f000 fe41 	bl	8001bca <i2c_read_reg>
 8000f48:	212d      	movs	r1, #45	; 0x2d
 8000f4a:	4605      	mov	r5, r0
 8000f4c:	20d4      	movs	r0, #212	; 0xd4
 8000f4e:	f000 fe3c 	bl	8001bca <i2c_read_reg>
 8000f52:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000f56:	8220      	strh	r0, [r4, #16]
 8000f58:	2108      	movs	r1, #8
 8000f5a:	203c      	movs	r0, #60	; 0x3c
 8000f5c:	f000 fe35 	bl	8001bca <i2c_read_reg>
 8000f60:	2109      	movs	r1, #9
 8000f62:	4605      	mov	r5, r0
 8000f64:	203c      	movs	r0, #60	; 0x3c
 8000f66:	f000 fe30 	bl	8001bca <i2c_read_reg>
 8000f6a:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000f6e:	80e0      	strh	r0, [r4, #6]
 8000f70:	210a      	movs	r1, #10
 8000f72:	203c      	movs	r0, #60	; 0x3c
 8000f74:	f000 fe29 	bl	8001bca <i2c_read_reg>
 8000f78:	210b      	movs	r1, #11
 8000f7a:	4605      	mov	r5, r0
 8000f7c:	203c      	movs	r0, #60	; 0x3c
 8000f7e:	f000 fe24 	bl	8001bca <i2c_read_reg>
 8000f82:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000f86:	8120      	strh	r0, [r4, #8]
 8000f88:	210c      	movs	r1, #12
 8000f8a:	203c      	movs	r0, #60	; 0x3c
 8000f8c:	f000 fe1d 	bl	8001bca <i2c_read_reg>
 8000f90:	210d      	movs	r1, #13
 8000f92:	4605      	mov	r5, r0
 8000f94:	203c      	movs	r0, #60	; 0x3c
 8000f96:	f000 fe18 	bl	8001bca <i2c_read_reg>
 8000f9a:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000f9e:	8160      	strh	r0, [r4, #10]
 8000fa0:	2128      	movs	r1, #40	; 0x28
 8000fa2:	203c      	movs	r0, #60	; 0x3c
 8000fa4:	f000 fe11 	bl	8001bca <i2c_read_reg>
 8000fa8:	2129      	movs	r1, #41	; 0x29
 8000faa:	4605      	mov	r5, r0
 8000fac:	203c      	movs	r0, #60	; 0x3c
 8000fae:	f000 fe0c 	bl	8001bca <i2c_read_reg>
 8000fb2:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000fb6:	8020      	strh	r0, [r4, #0]
 8000fb8:	212a      	movs	r1, #42	; 0x2a
 8000fba:	203c      	movs	r0, #60	; 0x3c
 8000fbc:	f000 fe05 	bl	8001bca <i2c_read_reg>
 8000fc0:	212b      	movs	r1, #43	; 0x2b
 8000fc2:	4605      	mov	r5, r0
 8000fc4:	203c      	movs	r0, #60	; 0x3c
 8000fc6:	f000 fe00 	bl	8001bca <i2c_read_reg>
 8000fca:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000fce:	8060      	strh	r0, [r4, #2]
 8000fd0:	212c      	movs	r1, #44	; 0x2c
 8000fd2:	203c      	movs	r0, #60	; 0x3c
 8000fd4:	f000 fdf9 	bl	8001bca <i2c_read_reg>
 8000fd8:	212d      	movs	r1, #45	; 0x2d
 8000fda:	4605      	mov	r5, r0
 8000fdc:	203c      	movs	r0, #60	; 0x3c
 8000fde:	f000 fdf4 	bl	8001bca <i2c_read_reg>
 8000fe2:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000fe6:	80a0      	strh	r0, [r4, #4]
 8000fe8:	2105      	movs	r1, #5
 8000fea:	203c      	movs	r0, #60	; 0x3c
 8000fec:	f000 fded 	bl	8001bca <i2c_read_reg>
 8000ff0:	2106      	movs	r1, #6
 8000ff2:	4605      	mov	r5, r0
 8000ff4:	203c      	movs	r0, #60	; 0x3c
 8000ff6:	f000 fde8 	bl	8001bca <i2c_read_reg>
 8000ffa:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000ffe:	8320      	strh	r0, [r4, #24]
 8001000:	bd38      	pop	{r3, r4, r5, pc}
 8001002:	bf00      	nop
 8001004:	200001e4 	.word	0x200001e4

08001008 <lsm9ds0_init>:
 8001008:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800100c:	4d34      	ldr	r5, [pc, #208]	; (80010e0 <lsm9ds0_init+0xd8>)
 800100e:	2400      	movs	r4, #0
 8001010:	20d4      	movs	r0, #212	; 0xd4
 8001012:	210f      	movs	r1, #15
 8001014:	802c      	strh	r4, [r5, #0]
 8001016:	806c      	strh	r4, [r5, #2]
 8001018:	80ac      	strh	r4, [r5, #4]
 800101a:	80ec      	strh	r4, [r5, #6]
 800101c:	812c      	strh	r4, [r5, #8]
 800101e:	816c      	strh	r4, [r5, #10]
 8001020:	81ac      	strh	r4, [r5, #12]
 8001022:	81ec      	strh	r4, [r5, #14]
 8001024:	822c      	strh	r4, [r5, #16]
 8001026:	826c      	strh	r4, [r5, #18]
 8001028:	82ac      	strh	r4, [r5, #20]
 800102a:	82ec      	strh	r4, [r5, #22]
 800102c:	832c      	strh	r4, [r5, #24]
 800102e:	f000 fdcc 	bl	8001bca <i2c_read_reg>
 8001032:	28d4      	cmp	r0, #212	; 0xd4
 8001034:	4606      	mov	r6, r0
 8001036:	d14e      	bne.n	80010d6 <lsm9ds0_init+0xce>
 8001038:	203c      	movs	r0, #60	; 0x3c
 800103a:	210f      	movs	r1, #15
 800103c:	f000 fdc5 	bl	8001bca <i2c_read_reg>
 8001040:	2849      	cmp	r0, #73	; 0x49
 8001042:	bf18      	it	ne
 8001044:	2602      	movne	r6, #2
 8001046:	d147      	bne.n	80010d8 <lsm9ds0_init+0xd0>
 8001048:	4630      	mov	r0, r6
 800104a:	2120      	movs	r1, #32
 800104c:	22ff      	movs	r2, #255	; 0xff
 800104e:	f000 fda9 	bl	8001ba4 <i2c_write_reg>
 8001052:	4630      	mov	r0, r6
 8001054:	2123      	movs	r1, #35	; 0x23
 8001056:	2218      	movs	r2, #24
 8001058:	f000 fda4 	bl	8001ba4 <i2c_write_reg>
 800105c:	203c      	movs	r0, #60	; 0x3c
 800105e:	211f      	movs	r1, #31
 8001060:	4622      	mov	r2, r4
 8001062:	f000 fd9f 	bl	8001ba4 <i2c_write_reg>
 8001066:	203c      	movs	r0, #60	; 0x3c
 8001068:	2120      	movs	r1, #32
 800106a:	2267      	movs	r2, #103	; 0x67
 800106c:	f000 fd9a 	bl	8001ba4 <i2c_write_reg>
 8001070:	203c      	movs	r0, #60	; 0x3c
 8001072:	2121      	movs	r1, #33	; 0x21
 8001074:	4622      	mov	r2, r4
 8001076:	f000 fd95 	bl	8001ba4 <i2c_write_reg>
 800107a:	203c      	movs	r0, #60	; 0x3c
 800107c:	2124      	movs	r1, #36	; 0x24
 800107e:	22f4      	movs	r2, #244	; 0xf4
 8001080:	f000 fd90 	bl	8001ba4 <i2c_write_reg>
 8001084:	203c      	movs	r0, #60	; 0x3c
 8001086:	2125      	movs	r1, #37	; 0x25
 8001088:	4622      	mov	r2, r4
 800108a:	f000 fd8b 	bl	8001ba4 <i2c_write_reg>
 800108e:	203c      	movs	r0, #60	; 0x3c
 8001090:	2126      	movs	r1, #38	; 0x26
 8001092:	2280      	movs	r2, #128	; 0x80
 8001094:	f000 fd86 	bl	8001ba4 <i2c_write_reg>
 8001098:	f7ff ff38 	bl	8000f0c <lsm9ds0_read>
 800109c:	2664      	movs	r6, #100	; 0x64
 800109e:	4627      	mov	r7, r4
 80010a0:	46a0      	mov	r8, r4
 80010a2:	f7ff ff33 	bl	8000f0c <lsm9ds0_read>
 80010a6:	f9b5 200c 	ldrsh.w	r2, [r5, #12]
 80010aa:	4b0d      	ldr	r3, [pc, #52]	; (80010e0 <lsm9ds0_init+0xd8>)
 80010ac:	4490      	add	r8, r2
 80010ae:	f9b5 200e 	ldrsh.w	r2, [r5, #14]
 80010b2:	4417      	add	r7, r2
 80010b4:	f9b5 2010 	ldrsh.w	r2, [r5, #16]
 80010b8:	3e01      	subs	r6, #1
 80010ba:	4414      	add	r4, r2
 80010bc:	d1f1      	bne.n	80010a2 <lsm9ds0_init+0x9a>
 80010be:	2264      	movs	r2, #100	; 0x64
 80010c0:	fb98 f8f2 	sdiv	r8, r8, r2
 80010c4:	fb97 f7f2 	sdiv	r7, r7, r2
 80010c8:	fb94 f4f2 	sdiv	r4, r4, r2
 80010cc:	f8a3 8012 	strh.w	r8, [r3, #18]
 80010d0:	829f      	strh	r7, [r3, #20]
 80010d2:	82dc      	strh	r4, [r3, #22]
 80010d4:	e000      	b.n	80010d8 <lsm9ds0_init+0xd0>
 80010d6:	2601      	movs	r6, #1
 80010d8:	4630      	mov	r0, r6
 80010da:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80010de:	bf00      	nop
 80010e0:	200001e4 	.word	0x200001e4

080010e4 <camera_init>:
 80010e4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80010e8:	4b3f      	ldr	r3, [pc, #252]	; (80011e8 <camera_init+0x104>)
 80010ea:	2200      	movs	r2, #0
 80010ec:	601a      	str	r2, [r3, #0]
 80010ee:	605a      	str	r2, [r3, #4]
 80010f0:	609a      	str	r2, [r3, #8]
 80010f2:	611a      	str	r2, [r3, #16]
 80010f4:	60da      	str	r2, [r3, #12]
 80010f6:	b08e      	sub	sp, #56	; 0x38
 80010f8:	f103 0212 	add.w	r2, r3, #18
 80010fc:	f503 7389 	add.w	r3, r3, #274	; 0x112
 8001100:	2400      	movs	r4, #0
 8001102:	f822 4f02 	strh.w	r4, [r2, #2]!
 8001106:	429a      	cmp	r2, r3
 8001108:	f8a2 4100 	strh.w	r4, [r2, #256]	; 0x100
 800110c:	d1f8      	bne.n	8001100 <camera_init+0x1c>
 800110e:	4f37      	ldr	r7, [pc, #220]	; (80011ec <camera_init+0x108>)
 8001110:	2501      	movs	r5, #1
 8001112:	2603      	movs	r6, #3
 8001114:	f44f 63a0 	mov.w	r3, #1280	; 0x500
 8001118:	4638      	mov	r0, r7
 800111a:	a901      	add	r1, sp, #4
 800111c:	9301      	str	r3, [sp, #4]
 800111e:	f88d 5008 	strb.w	r5, [sp, #8]
 8001122:	f88d 6009 	strb.w	r6, [sp, #9]
 8001126:	f000 fde3 	bl	8001cf0 <GPIO_Init>
 800112a:	a901      	add	r1, sp, #4
 800112c:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8001130:	4638      	mov	r0, r7
 8001132:	9301      	str	r3, [sp, #4]
 8001134:	f88d 6008 	strb.w	r6, [sp, #8]
 8001138:	f88d 6009 	strb.w	r6, [sp, #9]
 800113c:	f000 fdd8 	bl	8001cf0 <GPIO_Init>
 8001140:	f44f 7380 	mov.w	r3, #256	; 0x100
 8001144:	853b      	strh	r3, [r7, #40]	; 0x28
 8001146:	f44f 6380 	mov.w	r3, #1024	; 0x400
 800114a:	853b      	strh	r3, [r7, #40]	; 0x28
 800114c:	4828      	ldr	r0, [pc, #160]	; (80011f0 <camera_init+0x10c>)
 800114e:	f001 f879 	bl	8002244 <RCC_ADCCLKConfig>
 8001152:	4629      	mov	r1, r5
 8001154:	f04f 5000 	mov.w	r0, #536870912	; 0x20000000
 8001158:	f001 f884 	bl	8002264 <RCC_AHBPeriphClockCmd>
 800115c:	a906      	add	r1, sp, #24
 800115e:	4825      	ldr	r0, [pc, #148]	; (80011f4 <camera_init+0x110>)
 8001160:	940c      	str	r4, [sp, #48]	; 0x30
 8001162:	9406      	str	r4, [sp, #24]
 8001164:	940a      	str	r4, [sp, #40]	; 0x28
 8001166:	9408      	str	r4, [sp, #32]
 8001168:	9409      	str	r4, [sp, #36]	; 0x24
 800116a:	f88d 5034 	strb.w	r5, [sp, #52]	; 0x34
 800116e:	940b      	str	r4, [sp, #44]	; 0x2c
 8001170:	9407      	str	r4, [sp, #28]
 8001172:	f001 f8a1 	bl	80022b8 <ADC_Init>
 8001176:	462a      	mov	r2, r5
 8001178:	4623      	mov	r3, r4
 800117a:	4631      	mov	r1, r6
 800117c:	481d      	ldr	r0, [pc, #116]	; (80011f4 <camera_init+0x110>)
 800117e:	f001 f8cc 	bl	800231a <ADC_RegularChannelConfig>
 8001182:	4629      	mov	r1, r5
 8001184:	481b      	ldr	r0, [pc, #108]	; (80011f4 <camera_init+0x110>)
 8001186:	f001 f8bd 	bl	8002304 <ADC_Cmd>
 800118a:	4628      	mov	r0, r5
 800118c:	4629      	mov	r1, r5
 800118e:	f001 f885 	bl	800229c <RCC_APB1PeriphClockCmd>
 8001192:	f44f 738c 	mov.w	r3, #280	; 0x118
 8001196:	f8ad 300c 	strh.w	r3, [sp, #12]
 800119a:	a903      	add	r1, sp, #12
 800119c:	2320      	movs	r3, #32
 800119e:	f04f 4080 	mov.w	r0, #1073741824	; 0x40000000
 80011a2:	9304      	str	r3, [sp, #16]
 80011a4:	f8ad 400e 	strh.w	r4, [sp, #14]
 80011a8:	f8ad 4014 	strh.w	r4, [sp, #20]
 80011ac:	f8ad 4016 	strh.w	r4, [sp, #22]
 80011b0:	f001 fb86 	bl	80028c0 <TIM_TimeBaseInit>
 80011b4:	4629      	mov	r1, r5
 80011b6:	f04f 4080 	mov.w	r0, #1073741824	; 0x40000000
 80011ba:	f001 fbd1 	bl	8002960 <TIM_Cmd>
 80011be:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 80011c2:	4668      	mov	r0, sp
 80011c4:	68da      	ldr	r2, [r3, #12]
 80011c6:	432a      	orrs	r2, r5
 80011c8:	60da      	str	r2, [r3, #12]
 80011ca:	231c      	movs	r3, #28
 80011cc:	f88d 3000 	strb.w	r3, [sp]
 80011d0:	f88d 4001 	strb.w	r4, [sp, #1]
 80011d4:	f88d 5002 	strb.w	r5, [sp, #2]
 80011d8:	f88d 5003 	strb.w	r5, [sp, #3]
 80011dc:	f001 fb38 	bl	8002850 <NVIC_Init>
 80011e0:	b00e      	add	sp, #56	; 0x38
 80011e2:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80011e6:	bf00      	nop
 80011e8:	20000488 	.word	0x20000488
 80011ec:	48000400 	.word	0x48000400
 80011f0:	10002200 	.word	0x10002200
 80011f4:	50000500 	.word	0x50000500

080011f8 <camera_read>:
 80011f8:	4a35      	ldr	r2, [pc, #212]	; (80012d0 <camera_read+0xd8>)
 80011fa:	6890      	ldr	r0, [r2, #8]
 80011fc:	b5f0      	push	{r4, r5, r6, r7, lr}
 80011fe:	2800      	cmp	r0, #0
 8001200:	d065      	beq.n	80012ce <camera_read+0xd6>
 8001202:	f102 0312 	add.w	r3, r2, #18
 8001206:	f502 7189 	add.w	r1, r2, #274	; 0x112
 800120a:	f833 0f02 	ldrh.w	r0, [r3, #2]!
 800120e:	f8a3 0100 	strh.w	r0, [r3, #256]	; 0x100
 8001212:	428b      	cmp	r3, r1
 8001214:	d1f9      	bne.n	800120a <camera_read+0x12>
 8001216:	2300      	movs	r3, #0
 8001218:	6093      	str	r3, [r2, #8]
 800121a:	4618      	mov	r0, r3
 800121c:	18d4      	adds	r4, r2, r3
 800121e:	3302      	adds	r3, #2
 8001220:	f9b4 4114 	ldrsh.w	r4, [r4, #276]	; 0x114
 8001224:	492a      	ldr	r1, [pc, #168]	; (80012d0 <camera_read+0xd8>)
 8001226:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
 800122a:	4420      	add	r0, r4
 800122c:	d1f6      	bne.n	800121c <camera_read+0x24>
 800122e:	2680      	movs	r6, #128	; 0x80
 8001230:	fb90 f6f6 	sdiv	r6, r0, r6
 8001234:	610e      	str	r6, [r1, #16]
 8001236:	f501 7005 	add.w	r0, r1, #532	; 0x214
 800123a:	f501 738a 	add.w	r3, r1, #276	; 0x114
 800123e:	8819      	ldrh	r1, [r3, #0]
 8001240:	1b89      	subs	r1, r1, r6
 8001242:	f823 1b02 	strh.w	r1, [r3], #2
 8001246:	4283      	cmp	r3, r0
 8001248:	d1f9      	bne.n	800123e <camera_read+0x46>
 800124a:	4b22      	ldr	r3, [pc, #136]	; (80012d4 <camera_read+0xdc>)
 800124c:	f933 1b02 	ldrsh.w	r1, [r3], #2
 8001250:	2900      	cmp	r1, #0
 8001252:	bfb4      	ite	lt
 8001254:	2101      	movlt	r1, #1
 8001256:	2100      	movge	r1, #0
 8001258:	4283      	cmp	r3, r0
 800125a:	f823 1c02 	strh.w	r1, [r3, #-2]
 800125e:	d1f5      	bne.n	800124c <camera_read+0x54>
 8001260:	2300      	movs	r3, #0
 8001262:	481b      	ldr	r0, [pc, #108]	; (80012d0 <camera_read+0xd8>)
 8001264:	f44f 67a0 	mov.w	r7, #1280	; 0x500
 8001268:	4619      	mov	r1, r3
 800126a:	461c      	mov	r4, r3
 800126c:	2501      	movs	r5, #1
 800126e:	2b01      	cmp	r3, #1
 8001270:	d007      	beq.n	8001282 <camera_read+0x8a>
 8001272:	f9b0 1114 	ldrsh.w	r1, [r0, #276]	; 0x114
 8001276:	b981      	cbnz	r1, 800129a <camera_read+0xa2>
 8001278:	f9b0 3116 	ldrsh.w	r3, [r0, #278]	; 0x116
 800127c:	2b01      	cmp	r3, #1
 800127e:	d10f      	bne.n	80012a0 <camera_read+0xa8>
 8001280:	e00c      	b.n	800129c <camera_read+0xa4>
 8001282:	f9b0 c116 	ldrsh.w	ip, [r0, #278]	; 0x116
 8001286:	f1bc 0f01 	cmp.w	ip, #1
 800128a:	d101      	bne.n	8001290 <camera_read+0x98>
 800128c:	3101      	adds	r1, #1
 800128e:	e008      	b.n	80012a2 <camera_read+0xaa>
 8001290:	42a1      	cmp	r1, r4
 8001292:	dd05      	ble.n	80012a0 <camera_read+0xa8>
 8001294:	462f      	mov	r7, r5
 8001296:	460c      	mov	r4, r1
 8001298:	e002      	b.n	80012a0 <camera_read+0xa8>
 800129a:	2300      	movs	r3, #0
 800129c:	4619      	mov	r1, r3
 800129e:	e000      	b.n	80012a2 <camera_read+0xaa>
 80012a0:	2300      	movs	r3, #0
 80012a2:	3501      	adds	r5, #1
 80012a4:	2d80      	cmp	r5, #128	; 0x80
 80012a6:	f100 0002 	add.w	r0, r0, #2
 80012aa:	d1e0      	bne.n	800126e <camera_read+0x76>
 80012ac:	2c03      	cmp	r4, #3
 80012ae:	dc03      	bgt.n	80012b8 <camera_read+0xc0>
 80012b0:	2300      	movs	r3, #0
 80012b2:	6053      	str	r3, [r2, #4]
 80012b4:	2001      	movs	r0, #1
 80012b6:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80012b8:	f5b6 7fc8 	cmp.w	r6, #400	; 0x190
 80012bc:	ddf8      	ble.n	80012b0 <camera_read+0xb8>
 80012be:	2302      	movs	r3, #2
 80012c0:	fb94 f4f3 	sdiv	r4, r4, r3
 80012c4:	1b3f      	subs	r7, r7, r4
 80012c6:	2001      	movs	r0, #1
 80012c8:	3f40      	subs	r7, #64	; 0x40
 80012ca:	6050      	str	r0, [r2, #4]
 80012cc:	60d7      	str	r7, [r2, #12]
 80012ce:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80012d0:	20000488 	.word	0x20000488
 80012d4:	2000059c 	.word	0x2000059c

080012d8 <TIM2_IRQHandler>:
 80012d8:	4b21      	ldr	r3, [pc, #132]	; (8001360 <TIM2_IRQHandler+0x88>)
 80012da:	4a22      	ldr	r2, [pc, #136]	; (8001364 <TIM2_IRQHandler+0x8c>)
 80012dc:	6819      	ldr	r1, [r3, #0]
 80012de:	2901      	cmp	r1, #1
 80012e0:	b510      	push	{r4, lr}
 80012e2:	d011      	beq.n	8001308 <TIM2_IRQHandler+0x30>
 80012e4:	d306      	bcc.n	80012f4 <TIM2_IRQHandler+0x1c>
 80012e6:	2902      	cmp	r1, #2
 80012e8:	d113      	bne.n	8001312 <TIM2_IRQHandler+0x3a>
 80012ea:	f44f 6180 	mov.w	r1, #1024	; 0x400
 80012ee:	8511      	strh	r1, [r2, #40]	; 0x28
 80012f0:	2204      	movs	r2, #4
 80012f2:	e023      	b.n	800133c <TIM2_IRQHandler+0x64>
 80012f4:	f44f 7180 	mov.w	r1, #256	; 0x100
 80012f8:	8511      	strh	r1, [r2, #40]	; 0x28
 80012fa:	f44f 6180 	mov.w	r1, #1024	; 0x400
 80012fe:	6191      	str	r1, [r2, #24]
 8001300:	2201      	movs	r2, #1
 8001302:	601a      	str	r2, [r3, #0]
 8001304:	609a      	str	r2, [r3, #8]
 8001306:	e023      	b.n	8001350 <TIM2_IRQHandler+0x78>
 8001308:	f44f 7180 	mov.w	r1, #256	; 0x100
 800130c:	6191      	str	r1, [r2, #24]
 800130e:	2202      	movs	r2, #2
 8001310:	e014      	b.n	800133c <TIM2_IRQHandler+0x64>
 8001312:	f011 0f01 	tst.w	r1, #1
 8001316:	4814      	ldr	r0, [pc, #80]	; (8001368 <TIM2_IRQHandler+0x90>)
 8001318:	f101 0401 	add.w	r4, r1, #1
 800131c:	d010      	beq.n	8001340 <TIM2_IRQHandler+0x68>
 800131e:	3904      	subs	r1, #4
 8001320:	f021 0101 	bic.w	r1, r1, #1
 8001324:	4419      	add	r1, r3
 8001326:	6c00      	ldr	r0, [r0, #64]	; 0x40
 8001328:	8288      	strh	r0, [r1, #20]
 800132a:	f5b4 7f82 	cmp.w	r4, #260	; 0x104
 800132e:	f44f 7180 	mov.w	r1, #256	; 0x100
 8001332:	8511      	strh	r1, [r2, #40]	; 0x28
 8001334:	d201      	bcs.n	800133a <TIM2_IRQHandler+0x62>
 8001336:	601c      	str	r4, [r3, #0]
 8001338:	e00a      	b.n	8001350 <TIM2_IRQHandler+0x78>
 800133a:	2200      	movs	r2, #0
 800133c:	601a      	str	r2, [r3, #0]
 800133e:	e007      	b.n	8001350 <TIM2_IRQHandler+0x78>
 8001340:	f44f 7180 	mov.w	r1, #256	; 0x100
 8001344:	6191      	str	r1, [r2, #24]
 8001346:	601c      	str	r4, [r3, #0]
 8001348:	6883      	ldr	r3, [r0, #8]
 800134a:	f043 0304 	orr.w	r3, r3, #4
 800134e:	6083      	str	r3, [r0, #8]
 8001350:	f04f 4080 	mov.w	r0, #1073741824	; 0x40000000
 8001354:	2101      	movs	r1, #1
 8001356:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800135a:	f001 bb9e 	b.w	8002a9a <TIM_ClearITPendingBit>
 800135e:	bf00      	nop
 8001360:	20000488 	.word	0x20000488
 8001364:	48000400 	.word	0x48000400
 8001368:	50000500 	.word	0x50000500

0800136c <pid_init>:
 800136c:	ee06 2a10 	vmov	s12, r2
 8001370:	ee05 3a90 	vmov	s11, r3
 8001374:	eddd 7a00 	vldr	s15, [sp]
 8001378:	ed9d 7a01 	vldr	s14, [sp, #4]
 800137c:	6241      	str	r1, [r0, #36]	; 0x24
 800137e:	ee76 6a25 	vadd.f32	s13, s12, s11
 8001382:	ee77 5aa7 	vadd.f32	s11, s15, s15
 8001386:	ee76 6aa7 	vadd.f32	s13, s13, s15
 800138a:	eeb1 6a46 	vneg.f32	s12, s12
 800138e:	ee76 6a87 	vadd.f32	s13, s13, s14
 8001392:	ee36 6a65 	vsub.f32	s12, s12, s11
 8001396:	edc0 6a04 	vstr	s13, [r0, #16]
 800139a:	eddf 6a0b 	vldr	s13, [pc, #44]	; 80013c8 <pid_init+0x5c>
 800139e:	ee67 6a26 	vmul.f32	s13, s14, s13
 80013a2:	2200      	movs	r2, #0
 80013a4:	ee36 6a66 	vsub.f32	s12, s12, s13
 80013a8:	ee77 7aa6 	vadd.f32	s15, s15, s13
 80013ac:	eeb1 7a47 	vneg.f32	s14, s14
 80013b0:	6002      	str	r2, [r0, #0]
 80013b2:	6042      	str	r2, [r0, #4]
 80013b4:	6082      	str	r2, [r0, #8]
 80013b6:	60c2      	str	r2, [r0, #12]
 80013b8:	ed80 6a05 	vstr	s12, [r0, #20]
 80013bc:	edc0 7a06 	vstr	s15, [r0, #24]
 80013c0:	ed80 7a07 	vstr	s14, [r0, #28]
 80013c4:	6202      	str	r2, [r0, #32]
 80013c6:	4770      	bx	lr
 80013c8:	40400000 	.word	0x40400000

080013cc <pid_process>:
 80013cc:	edd0 7a08 	vldr	s15, [r0, #32]
 80013d0:	ed90 5a04 	vldr	s10, [r0, #16]
 80013d4:	ed90 6a00 	vldr	s12, [r0]
 80013d8:	edd0 6a01 	vldr	s13, [r0, #4]
 80013dc:	ed80 6a01 	vstr	s12, [r0, #4]
 80013e0:	ee05 1a90 	vmov	s11, r1
 80013e4:	ee45 7a85 	vmla.f32	s15, s11, s10
 80013e8:	6001      	str	r1, [r0, #0]
 80013ea:	edd0 5a05 	vldr	s11, [r0, #20]
 80013ee:	ed90 7a02 	vldr	s14, [r0, #8]
 80013f2:	edc0 6a02 	vstr	s13, [r0, #8]
 80013f6:	ee46 7a25 	vmla.f32	s15, s12, s11
 80013fa:	ed90 6a06 	vldr	s12, [r0, #24]
 80013fe:	ed80 7a03 	vstr	s14, [r0, #12]
 8001402:	ee46 7a86 	vmla.f32	s15, s13, s12
 8001406:	edd0 6a07 	vldr	s13, [r0, #28]
 800140a:	ee47 7a26 	vmla.f32	s15, s14, s13
 800140e:	ed90 7a09 	vldr	s14, [r0, #36]	; 0x24
 8001412:	edc0 7a08 	vstr	s15, [r0, #32]
 8001416:	eef4 7ac7 	vcmpe.f32	s15, s14
 800141a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800141e:	bfc8      	it	gt
 8001420:	ed80 7a08 	vstrgt	s14, [r0, #32]
 8001424:	edd0 7a08 	vldr	s15, [r0, #32]
 8001428:	eeb1 7a47 	vneg.f32	s14, s14
 800142c:	eef4 7ac7 	vcmpe.f32	s15, s14
 8001430:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001434:	bf48      	it	mi
 8001436:	ed80 7a08 	vstrmi	s14, [r0, #32]
 800143a:	6a00      	ldr	r0, [r0, #32]
 800143c:	4770      	bx	lr

0800143e <m_abs>:
 800143e:	ee07 0a90 	vmov	s15, r0
 8001442:	eef5 7ac0 	vcmpe.f32	s15, #0.0
 8001446:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800144a:	bf48      	it	mi
 800144c:	eef1 7a67 	vnegmi.f32	s15, s15
 8001450:	ee17 0a90 	vmov	r0, s15
 8001454:	4770      	bx	lr

08001456 <m_saturate>:
 8001456:	ee07 0a90 	vmov	s15, r0
 800145a:	ee06 1a90 	vmov	s13, r1
 800145e:	eef4 7a66 	vcmp.f32	s15, s13
 8001462:	ee07 2a10 	vmov	s14, r2
 8001466:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800146a:	bf48      	it	mi
 800146c:	eef0 7a66 	vmovmi.f32	s15, s13
 8001470:	eef4 7a47 	vcmp.f32	s15, s14
 8001474:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001478:	bfcc      	ite	gt
 800147a:	ee17 0a10 	vmovgt	r0, s14
 800147e:	ee17 0a90 	vmovle	r0, s15
 8001482:	4770      	bx	lr

08001484 <m_min>:
 8001484:	ee07 0a10 	vmov	s14, r0
 8001488:	ee07 1a90 	vmov	s15, r1
 800148c:	eeb4 7ae7 	vcmpe.f32	s14, s15
 8001490:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001494:	bf54      	ite	pl
 8001496:	ee17 0a90 	vmovpl	r0, s15
 800149a:	ee17 0a10 	vmovmi	r0, s14
 800149e:	4770      	bx	lr

080014a0 <thread_ending>:
 80014a0:	b672      	cpsid	i
 80014a2:	4b05      	ldr	r3, [pc, #20]	; (80014b8 <thread_ending+0x18>)
 80014a4:	4a05      	ldr	r2, [pc, #20]	; (80014bc <thread_ending+0x1c>)
 80014a6:	681b      	ldr	r3, [r3, #0]
 80014a8:	210c      	movs	r1, #12
 80014aa:	fb01 2303 	mla	r3, r1, r3, r2
 80014ae:	2200      	movs	r2, #0
 80014b0:	605a      	str	r2, [r3, #4]
 80014b2:	b662      	cpsie	i
 80014b4:	bf00      	nop
 80014b6:	e7fd      	b.n	80014b4 <thread_ending+0x14>
 80014b8:	20000db0 	.word	0x20000db0
 80014bc:	20000d68 	.word	0x20000d68

080014c0 <null_thread>:
 80014c0:	b508      	push	{r3, lr}
 80014c2:	f000 fd09 	bl	8001ed8 <sleep>
 80014c6:	e7fc      	b.n	80014c2 <null_thread+0x2>

080014c8 <scheduler>:
 80014c8:	b570      	push	{r4, r5, r6, lr}
 80014ca:	2200      	movs	r2, #0
 80014cc:	4611      	mov	r1, r2
 80014ce:	4b15      	ldr	r3, [pc, #84]	; (8001524 <scheduler+0x5c>)
 80014d0:	200c      	movs	r0, #12
 80014d2:	fb00 f501 	mul.w	r5, r0, r1
 80014d6:	195e      	adds	r6, r3, r5
 80014d8:	6874      	ldr	r4, [r6, #4]
 80014da:	f014 0f02 	tst.w	r4, #2
 80014de:	461c      	mov	r4, r3
 80014e0:	d10a      	bne.n	80014f8 <scheduler+0x30>
 80014e2:	6876      	ldr	r6, [r6, #4]
 80014e4:	07f6      	lsls	r6, r6, #31
 80014e6:	d507      	bpl.n	80014f8 <scheduler+0x30>
 80014e8:	4350      	muls	r0, r2
 80014ea:	5b5d      	ldrh	r5, [r3, r5]
 80014ec:	5a18      	ldrh	r0, [r3, r0]
 80014ee:	b2ad      	uxth	r5, r5
 80014f0:	b280      	uxth	r0, r0
 80014f2:	4285      	cmp	r5, r0
 80014f4:	bf38      	it	cc
 80014f6:	460a      	movcc	r2, r1
 80014f8:	200c      	movs	r0, #12
 80014fa:	4348      	muls	r0, r1
 80014fc:	5a1d      	ldrh	r5, [r3, r0]
 80014fe:	b2ad      	uxth	r5, r5
 8001500:	b11d      	cbz	r5, 800150a <scheduler+0x42>
 8001502:	5a1d      	ldrh	r5, [r3, r0]
 8001504:	3d01      	subs	r5, #1
 8001506:	b2ad      	uxth	r5, r5
 8001508:	521d      	strh	r5, [r3, r0]
 800150a:	3101      	adds	r1, #1
 800150c:	2906      	cmp	r1, #6
 800150e:	d1de      	bne.n	80014ce <scheduler+0x6>
 8001510:	230c      	movs	r3, #12
 8001512:	4353      	muls	r3, r2
 8001514:	18e1      	adds	r1, r4, r3
 8001516:	8849      	ldrh	r1, [r1, #2]
 8001518:	b289      	uxth	r1, r1
 800151a:	52e1      	strh	r1, [r4, r3]
 800151c:	4b02      	ldr	r3, [pc, #8]	; (8001528 <scheduler+0x60>)
 800151e:	601a      	str	r2, [r3, #0]
 8001520:	bd70      	pop	{r4, r5, r6, pc}
 8001522:	bf00      	nop
 8001524:	20000d68 	.word	0x20000d68
 8001528:	20000db0 	.word	0x20000db0

0800152c <SysTick_Handler>:
 800152c:	e92d 0ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 8001530:	f3ef 8208 	mrs	r2, MSP
 8001534:	4c0d      	ldr	r4, [pc, #52]	; (800156c <SysTick_Handler+0x40>)
 8001536:	4d0e      	ldr	r5, [pc, #56]	; (8001570 <SysTick_Handler+0x44>)
 8001538:	6823      	ldr	r3, [r4, #0]
 800153a:	3301      	adds	r3, #1
 800153c:	d005      	beq.n	800154a <SysTick_Handler+0x1e>
 800153e:	6823      	ldr	r3, [r4, #0]
 8001540:	210c      	movs	r1, #12
 8001542:	fb01 5303 	mla	r3, r1, r3, r5
 8001546:	609a      	str	r2, [r3, #8]
 8001548:	e001      	b.n	800154e <SysTick_Handler+0x22>
 800154a:	2300      	movs	r3, #0
 800154c:	6023      	str	r3, [r4, #0]
 800154e:	f7ff ffbb 	bl	80014c8 <scheduler>
 8001552:	6823      	ldr	r3, [r4, #0]
 8001554:	220c      	movs	r2, #12
 8001556:	fb02 5503 	mla	r5, r2, r3, r5
 800155a:	f06f 0306 	mvn.w	r3, #6
 800155e:	68aa      	ldr	r2, [r5, #8]
 8001560:	469e      	mov	lr, r3
 8001562:	f382 8808 	msr	MSP, r2
 8001566:	e8bd 0ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 800156a:	4770      	bx	lr
 800156c:	20000db0 	.word	0x20000db0
 8001570:	20000d68 	.word	0x20000d68

08001574 <sched_off>:
 8001574:	b672      	cpsid	i
 8001576:	4770      	bx	lr

08001578 <sched_on>:
 8001578:	b662      	cpsie	i
 800157a:	4770      	bx	lr

0800157c <yield>:
 800157c:	bf00      	nop
 800157e:	4770      	bx	lr

08001580 <get_thread_id>:
 8001580:	b082      	sub	sp, #8
 8001582:	b672      	cpsid	i
 8001584:	4b03      	ldr	r3, [pc, #12]	; (8001594 <get_thread_id+0x14>)
 8001586:	681b      	ldr	r3, [r3, #0]
 8001588:	9301      	str	r3, [sp, #4]
 800158a:	b662      	cpsie	i
 800158c:	9801      	ldr	r0, [sp, #4]
 800158e:	b002      	add	sp, #8
 8001590:	4770      	bx	lr
 8001592:	bf00      	nop
 8001594:	20000db0 	.word	0x20000db0

08001598 <kernel_start>:
 8001598:	b508      	push	{r3, lr}
 800159a:	f000 fc8b 	bl	8001eb4 <sys_tick_init>
 800159e:	bf00      	nop
 80015a0:	e7fd      	b.n	800159e <kernel_start+0x6>
	...

080015a4 <create_thread>:
 80015a4:	f022 0203 	bic.w	r2, r2, #3
 80015a8:	3a40      	subs	r2, #64	; 0x40
 80015aa:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 80015ae:	eb01 0c02 	add.w	ip, r1, r2
 80015b2:	f102 0834 	add.w	r8, r2, #52	; 0x34
 80015b6:	f102 0938 	add.w	r9, r2, #56	; 0x38
 80015ba:	323c      	adds	r2, #60	; 0x3c
 80015bc:	4488      	add	r8, r1
 80015be:	4489      	add	r9, r1
 80015c0:	4607      	mov	r7, r0
 80015c2:	4411      	add	r1, r2
 80015c4:	2200      	movs	r2, #0
 80015c6:	b672      	cpsid	i
 80015c8:	4e11      	ldr	r6, [pc, #68]	; (8001610 <create_thread+0x6c>)
 80015ca:	250c      	movs	r5, #12
 80015cc:	4355      	muls	r5, r2
 80015ce:	1974      	adds	r4, r6, r5
 80015d0:	6860      	ldr	r0, [r4, #4]
 80015d2:	07c0      	lsls	r0, r0, #31
 80015d4:	d412      	bmi.n	80015fc <create_thread+0x58>
 80015d6:	480f      	ldr	r0, [pc, #60]	; (8001614 <create_thread+0x70>)
 80015d8:	f8c4 c008 	str.w	ip, [r4, #8]
 80015dc:	2b05      	cmp	r3, #5
 80015de:	f8c8 0000 	str.w	r0, [r8]
 80015e2:	f04f 5004 	mov.w	r0, #553648128	; 0x21000000
 80015e6:	f8c9 7000 	str.w	r7, [r9]
 80015ea:	bf98      	it	ls
 80015ec:	2306      	movls	r3, #6
 80015ee:	6008      	str	r0, [r1, #0]
 80015f0:	2001      	movs	r0, #1
 80015f2:	8063      	strh	r3, [r4, #2]
 80015f4:	5373      	strh	r3, [r6, r5]
 80015f6:	6060      	str	r0, [r4, #4]
 80015f8:	4610      	mov	r0, r2
 80015fa:	e000      	b.n	80015fe <create_thread+0x5a>
 80015fc:	2006      	movs	r0, #6
 80015fe:	b662      	cpsie	i
 8001600:	3201      	adds	r2, #1
 8001602:	2a06      	cmp	r2, #6
 8001604:	d001      	beq.n	800160a <create_thread+0x66>
 8001606:	2806      	cmp	r0, #6
 8001608:	d0dd      	beq.n	80015c6 <create_thread+0x22>
 800160a:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 800160e:	bf00      	nop
 8001610:	20000d68 	.word	0x20000d68
 8001614:	080014a1 	.word	0x080014a1

08001618 <kernel_init>:
 8001618:	b510      	push	{r4, lr}
 800161a:	2300      	movs	r3, #0
 800161c:	490b      	ldr	r1, [pc, #44]	; (800164c <kernel_init+0x34>)
 800161e:	220c      	movs	r2, #12
 8001620:	435a      	muls	r2, r3
 8001622:	188c      	adds	r4, r1, r2
 8001624:	2000      	movs	r0, #0
 8001626:	6060      	str	r0, [r4, #4]
 8001628:	3301      	adds	r3, #1
 800162a:	2006      	movs	r0, #6
 800162c:	4283      	cmp	r3, r0
 800162e:	8060      	strh	r0, [r4, #2]
 8001630:	5288      	strh	r0, [r1, r2]
 8001632:	d1f3      	bne.n	800161c <kernel_init+0x4>
 8001634:	4b06      	ldr	r3, [pc, #24]	; (8001650 <kernel_init+0x38>)
 8001636:	4807      	ldr	r0, [pc, #28]	; (8001654 <kernel_init+0x3c>)
 8001638:	4907      	ldr	r1, [pc, #28]	; (8001658 <kernel_init+0x40>)
 800163a:	f04f 32ff 	mov.w	r2, #4294967295
 800163e:	601a      	str	r2, [r3, #0]
 8001640:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8001644:	2280      	movs	r2, #128	; 0x80
 8001646:	23ff      	movs	r3, #255	; 0xff
 8001648:	f7ff bfac 	b.w	80015a4 <create_thread>
 800164c:	20000d68 	.word	0x20000d68
 8001650:	20000db0 	.word	0x20000db0
 8001654:	080014c1 	.word	0x080014c1
 8001658:	20000db4 	.word	0x20000db4

0800165c <set_wait_state>:
 800165c:	b507      	push	{r0, r1, r2, lr}
 800165e:	f7ff ff8f 	bl	8001580 <get_thread_id>
 8001662:	9000      	str	r0, [sp, #0]
 8001664:	b672      	cpsid	i
 8001666:	4b0d      	ldr	r3, [pc, #52]	; (800169c <set_wait_state+0x40>)
 8001668:	9a00      	ldr	r2, [sp, #0]
 800166a:	210c      	movs	r1, #12
 800166c:	fb01 3202 	mla	r2, r1, r2, r3
 8001670:	6851      	ldr	r1, [r2, #4]
 8001672:	f041 0102 	orr.w	r1, r1, #2
 8001676:	6051      	str	r1, [r2, #4]
 8001678:	b672      	cpsid	i
 800167a:	9a00      	ldr	r2, [sp, #0]
 800167c:	210c      	movs	r1, #12
 800167e:	fb01 3202 	mla	r2, r1, r2, r3
 8001682:	6852      	ldr	r2, [r2, #4]
 8001684:	9201      	str	r2, [sp, #4]
 8001686:	b662      	cpsie	i
 8001688:	9a01      	ldr	r2, [sp, #4]
 800168a:	0791      	lsls	r1, r2, #30
 800168c:	d500      	bpl.n	8001690 <set_wait_state+0x34>
 800168e:	bf00      	nop
 8001690:	9a01      	ldr	r2, [sp, #4]
 8001692:	0792      	lsls	r2, r2, #30
 8001694:	d4f0      	bmi.n	8001678 <set_wait_state+0x1c>
 8001696:	b003      	add	sp, #12
 8001698:	f85d fb04 	ldr.w	pc, [sp], #4
 800169c:	20000d68 	.word	0x20000d68

080016a0 <wake_up_threads>:
 80016a0:	2300      	movs	r3, #0
 80016a2:	b672      	cpsid	i
 80016a4:	4a06      	ldr	r2, [pc, #24]	; (80016c0 <wake_up_threads+0x20>)
 80016a6:	210c      	movs	r1, #12
 80016a8:	fb01 2203 	mla	r2, r1, r3, r2
 80016ac:	6851      	ldr	r1, [r2, #4]
 80016ae:	f021 0102 	bic.w	r1, r1, #2
 80016b2:	6051      	str	r1, [r2, #4]
 80016b4:	b662      	cpsie	i
 80016b6:	3301      	adds	r3, #1
 80016b8:	2b06      	cmp	r3, #6
 80016ba:	d1f2      	bne.n	80016a2 <wake_up_threads+0x2>
 80016bc:	4770      	bx	lr
 80016be:	bf00      	nop
 80016c0:	20000d68 	.word	0x20000d68

080016c4 <putc_>:
 80016c4:	b538      	push	{r3, r4, r5, lr}
 80016c6:	4c06      	ldr	r4, [pc, #24]	; (80016e0 <putc_+0x1c>)
 80016c8:	4605      	mov	r5, r0
 80016ca:	4620      	mov	r0, r4
 80016cc:	f000 f912 	bl	80018f4 <mutex_lock>
 80016d0:	4628      	mov	r0, r5
 80016d2:	f000 fe81 	bl	80023d8 <uart_write>
 80016d6:	4620      	mov	r0, r4
 80016d8:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 80016dc:	f000 b926 	b.w	800192c <mutex_unlock>
 80016e0:	20000e34 	.word	0x20000e34

080016e4 <puts_>:
 80016e4:	b510      	push	{r4, lr}
 80016e6:	4604      	mov	r4, r0
 80016e8:	4807      	ldr	r0, [pc, #28]	; (8001708 <puts_+0x24>)
 80016ea:	f000 f903 	bl	80018f4 <mutex_lock>
 80016ee:	3c01      	subs	r4, #1
 80016f0:	f814 0f01 	ldrb.w	r0, [r4, #1]!
 80016f4:	b110      	cbz	r0, 80016fc <puts_+0x18>
 80016f6:	f7ff ffe5 	bl	80016c4 <putc_>
 80016fa:	e7f9      	b.n	80016f0 <puts_+0xc>
 80016fc:	4802      	ldr	r0, [pc, #8]	; (8001708 <puts_+0x24>)
 80016fe:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8001702:	f000 b913 	b.w	800192c <mutex_unlock>
 8001706:	bf00      	nop
 8001708:	20000e40 	.word	0x20000e40

0800170c <puti_>:
 800170c:	b530      	push	{r4, r5, lr}
 800170e:	b085      	sub	sp, #20
 8001710:	1e03      	subs	r3, r0, #0
 8001712:	f04f 0200 	mov.w	r2, #0
 8001716:	bfa8      	it	ge
 8001718:	4614      	movge	r4, r2
 800171a:	f88d 200f 	strb.w	r2, [sp, #15]
 800171e:	bfbc      	itt	lt
 8001720:	425b      	neglt	r3, r3
 8001722:	2401      	movlt	r4, #1
 8001724:	220a      	movs	r2, #10
 8001726:	210a      	movs	r1, #10
 8001728:	fb93 f5f1 	sdiv	r5, r3, r1
 800172c:	fb01 3315 	mls	r3, r1, r5, r3
 8001730:	a801      	add	r0, sp, #4
 8001732:	3330      	adds	r3, #48	; 0x30
 8001734:	5413      	strb	r3, [r2, r0]
 8001736:	1e51      	subs	r1, r2, #1
 8001738:	462b      	mov	r3, r5
 800173a:	b10d      	cbz	r5, 8001740 <puti_+0x34>
 800173c:	460a      	mov	r2, r1
 800173e:	e7f2      	b.n	8001726 <puti_+0x1a>
 8001740:	b12c      	cbz	r4, 800174e <puti_+0x42>
 8001742:	ab04      	add	r3, sp, #16
 8001744:	440b      	add	r3, r1
 8001746:	222d      	movs	r2, #45	; 0x2d
 8001748:	f803 2c0c 	strb.w	r2, [r3, #-12]
 800174c:	460a      	mov	r2, r1
 800174e:	4410      	add	r0, r2
 8001750:	f7ff ffc8 	bl	80016e4 <puts_>
 8001754:	b005      	add	sp, #20
 8001756:	bd30      	pop	{r4, r5, pc}

08001758 <putui_>:
 8001758:	b51f      	push	{r0, r1, r2, r3, r4, lr}
 800175a:	2300      	movs	r3, #0
 800175c:	f88d 300f 	strb.w	r3, [sp, #15]
 8001760:	230a      	movs	r3, #10
 8001762:	240a      	movs	r4, #10
 8001764:	fbb0 f1f4 	udiv	r1, r0, r4
 8001768:	fb04 0011 	mls	r0, r4, r1, r0
 800176c:	aa01      	add	r2, sp, #4
 800176e:	3030      	adds	r0, #48	; 0x30
 8001770:	5498      	strb	r0, [r3, r2]
 8001772:	1e5c      	subs	r4, r3, #1
 8001774:	4608      	mov	r0, r1
 8001776:	b109      	cbz	r1, 800177c <putui_+0x24>
 8001778:	4623      	mov	r3, r4
 800177a:	e7f2      	b.n	8001762 <putui_+0xa>
 800177c:	18d0      	adds	r0, r2, r3
 800177e:	f7ff ffb1 	bl	80016e4 <puts_>
 8001782:	b004      	add	sp, #16
 8001784:	bd10      	pop	{r4, pc}

08001786 <putx_>:
 8001786:	b51f      	push	{r0, r1, r2, r3, r4, lr}
 8001788:	2300      	movs	r3, #0
 800178a:	f88d 300f 	strb.w	r3, [sp, #15]
 800178e:	230a      	movs	r3, #10
 8001790:	f000 010f 	and.w	r1, r0, #15
 8001794:	2909      	cmp	r1, #9
 8001796:	aa01      	add	r2, sp, #4
 8001798:	bf94      	ite	ls
 800179a:	3130      	addls	r1, #48	; 0x30
 800179c:	3157      	addhi	r1, #87	; 0x57
 800179e:	0900      	lsrs	r0, r0, #4
 80017a0:	54d1      	strb	r1, [r2, r3]
 80017a2:	f103 31ff 	add.w	r1, r3, #4294967295
 80017a6:	d001      	beq.n	80017ac <putx_+0x26>
 80017a8:	460b      	mov	r3, r1
 80017aa:	e7f1      	b.n	8001790 <putx_+0xa>
 80017ac:	18d0      	adds	r0, r2, r3
 80017ae:	f7ff ff99 	bl	80016e4 <puts_>
 80017b2:	b005      	add	sp, #20
 80017b4:	f85d fb04 	ldr.w	pc, [sp], #4

080017b8 <printf_>:
 80017b8:	b40f      	push	{r0, r1, r2, r3}
 80017ba:	b537      	push	{r0, r1, r2, r4, r5, lr}
 80017bc:	ac06      	add	r4, sp, #24
 80017be:	4826      	ldr	r0, [pc, #152]	; (8001858 <printf_+0xa0>)
 80017c0:	f854 5b04 	ldr.w	r5, [r4], #4
 80017c4:	f000 f896 	bl	80018f4 <mutex_lock>
 80017c8:	9401      	str	r4, [sp, #4]
 80017ca:	2400      	movs	r4, #0
 80017cc:	5d28      	ldrb	r0, [r5, r4]
 80017ce:	2800      	cmp	r0, #0
 80017d0:	d039      	beq.n	8001846 <printf_+0x8e>
 80017d2:	2825      	cmp	r0, #37	; 0x25
 80017d4:	d003      	beq.n	80017de <printf_+0x26>
 80017d6:	f7ff ff75 	bl	80016c4 <putc_>
 80017da:	3401      	adds	r4, #1
 80017dc:	e7f6      	b.n	80017cc <printf_+0x14>
 80017de:	192b      	adds	r3, r5, r4
 80017e0:	7858      	ldrb	r0, [r3, #1]
 80017e2:	2869      	cmp	r0, #105	; 0x69
 80017e4:	d016      	beq.n	8001814 <printf_+0x5c>
 80017e6:	d808      	bhi.n	80017fa <printf_+0x42>
 80017e8:	2825      	cmp	r0, #37	; 0x25
 80017ea:	d028      	beq.n	800183e <printf_+0x86>
 80017ec:	2863      	cmp	r0, #99	; 0x63
 80017ee:	d128      	bne.n	8001842 <printf_+0x8a>
 80017f0:	9b01      	ldr	r3, [sp, #4]
 80017f2:	1d1a      	adds	r2, r3, #4
 80017f4:	9201      	str	r2, [sp, #4]
 80017f6:	7818      	ldrb	r0, [r3, #0]
 80017f8:	e021      	b.n	800183e <printf_+0x86>
 80017fa:	2875      	cmp	r0, #117	; 0x75
 80017fc:	d011      	beq.n	8001822 <printf_+0x6a>
 80017fe:	2878      	cmp	r0, #120	; 0x78
 8001800:	d016      	beq.n	8001830 <printf_+0x78>
 8001802:	2873      	cmp	r0, #115	; 0x73
 8001804:	d11d      	bne.n	8001842 <printf_+0x8a>
 8001806:	9b01      	ldr	r3, [sp, #4]
 8001808:	1d1a      	adds	r2, r3, #4
 800180a:	6818      	ldr	r0, [r3, #0]
 800180c:	9201      	str	r2, [sp, #4]
 800180e:	f7ff ff69 	bl	80016e4 <puts_>
 8001812:	e016      	b.n	8001842 <printf_+0x8a>
 8001814:	9b01      	ldr	r3, [sp, #4]
 8001816:	1d1a      	adds	r2, r3, #4
 8001818:	6818      	ldr	r0, [r3, #0]
 800181a:	9201      	str	r2, [sp, #4]
 800181c:	f7ff ff76 	bl	800170c <puti_>
 8001820:	e00f      	b.n	8001842 <printf_+0x8a>
 8001822:	9b01      	ldr	r3, [sp, #4]
 8001824:	1d1a      	adds	r2, r3, #4
 8001826:	6818      	ldr	r0, [r3, #0]
 8001828:	9201      	str	r2, [sp, #4]
 800182a:	f7ff ff95 	bl	8001758 <putui_>
 800182e:	e008      	b.n	8001842 <printf_+0x8a>
 8001830:	9b01      	ldr	r3, [sp, #4]
 8001832:	1d1a      	adds	r2, r3, #4
 8001834:	6818      	ldr	r0, [r3, #0]
 8001836:	9201      	str	r2, [sp, #4]
 8001838:	f7ff ffa5 	bl	8001786 <putx_>
 800183c:	e001      	b.n	8001842 <printf_+0x8a>
 800183e:	f7ff ff41 	bl	80016c4 <putc_>
 8001842:	3402      	adds	r4, #2
 8001844:	e7c2      	b.n	80017cc <printf_+0x14>
 8001846:	4804      	ldr	r0, [pc, #16]	; (8001858 <printf_+0xa0>)
 8001848:	f000 f870 	bl	800192c <mutex_unlock>
 800184c:	b003      	add	sp, #12
 800184e:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
 8001852:	b004      	add	sp, #16
 8001854:	4770      	bx	lr
 8001856:	bf00      	nop
 8001858:	20000e3c 	.word	0x20000e3c

0800185c <stdio_init>:
 800185c:	b510      	push	{r4, lr}
 800185e:	480e      	ldr	r0, [pc, #56]	; (8001898 <stdio_init+0x3c>)
 8001860:	f000 f83e 	bl	80018e0 <mutex_init>
 8001864:	480d      	ldr	r0, [pc, #52]	; (800189c <stdio_init+0x40>)
 8001866:	f000 f83b 	bl	80018e0 <mutex_init>
 800186a:	480d      	ldr	r0, [pc, #52]	; (80018a0 <stdio_init+0x44>)
 800186c:	f000 f838 	bl	80018e0 <mutex_init>
 8001870:	480c      	ldr	r0, [pc, #48]	; (80018a4 <stdio_init+0x48>)
 8001872:	f000 f835 	bl	80018e0 <mutex_init>
 8001876:	2408      	movs	r4, #8
 8001878:	2020      	movs	r0, #32
 800187a:	f7ff ff23 	bl	80016c4 <putc_>
 800187e:	3c01      	subs	r4, #1
 8001880:	d1fa      	bne.n	8001878 <stdio_init+0x1c>
 8001882:	2420      	movs	r4, #32
 8001884:	200a      	movs	r0, #10
 8001886:	f7ff ff1d 	bl	80016c4 <putc_>
 800188a:	3c01      	subs	r4, #1
 800188c:	d1fa      	bne.n	8001884 <stdio_init+0x28>
 800188e:	4806      	ldr	r0, [pc, #24]	; (80018a8 <stdio_init+0x4c>)
 8001890:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8001894:	f7ff bf90 	b.w	80017b8 <printf_>
 8001898:	20000e34 	.word	0x20000e34
 800189c:	20000e38 	.word	0x20000e38
 80018a0:	20000e40 	.word	0x20000e40
 80018a4:	20000e3c 	.word	0x20000e3c
 80018a8:	08002cad 	.word	0x08002cad

080018ac <messages_init>:
 80018ac:	4a0a      	ldr	r2, [pc, #40]	; (80018d8 <messages_init+0x2c>)
 80018ae:	2300      	movs	r3, #0
 80018b0:	b510      	push	{r4, lr}
 80018b2:	6013      	str	r3, [r2, #0]
 80018b4:	6053      	str	r3, [r2, #4]
 80018b6:	6093      	str	r3, [r2, #8]
 80018b8:	60d3      	str	r3, [r2, #12]
 80018ba:	6113      	str	r3, [r2, #16]
 80018bc:	6153      	str	r3, [r2, #20]
 80018be:	4c07      	ldr	r4, [pc, #28]	; (80018dc <messages_init+0x30>)
 80018c0:	0118      	lsls	r0, r3, #4
 80018c2:	1821      	adds	r1, r4, r0
 80018c4:	3301      	adds	r3, #1
 80018c6:	2200      	movs	r2, #0
 80018c8:	2b04      	cmp	r3, #4
 80018ca:	604a      	str	r2, [r1, #4]
 80018cc:	5022      	str	r2, [r4, r0]
 80018ce:	60ca      	str	r2, [r1, #12]
 80018d0:	608a      	str	r2, [r1, #8]
 80018d2:	d1f4      	bne.n	80018be <messages_init+0x12>
 80018d4:	bd10      	pop	{r4, pc}
 80018d6:	bf00      	nop
 80018d8:	20000e44 	.word	0x20000e44
 80018dc:	20000e5c 	.word	0x20000e5c

080018e0 <mutex_init>:
 80018e0:	b510      	push	{r4, lr}
 80018e2:	4604      	mov	r4, r0
 80018e4:	f7ff fe46 	bl	8001574 <sched_off>
 80018e8:	2300      	movs	r3, #0
 80018ea:	6023      	str	r3, [r4, #0]
 80018ec:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80018f0:	f7ff be42 	b.w	8001578 <sched_on>

080018f4 <mutex_lock>:
 80018f4:	b513      	push	{r0, r1, r4, lr}
 80018f6:	4604      	mov	r4, r0
 80018f8:	f7ff fe3c 	bl	8001574 <sched_off>
 80018fc:	6823      	ldr	r3, [r4, #0]
 80018fe:	9301      	str	r3, [sp, #4]
 8001900:	f7ff fe3a 	bl	8001578 <sched_on>
 8001904:	9b01      	ldr	r3, [sp, #4]
 8001906:	b10b      	cbz	r3, 800190c <mutex_lock+0x18>
 8001908:	f7ff fea8 	bl	800165c <set_wait_state>
 800190c:	9b01      	ldr	r3, [sp, #4]
 800190e:	2b00      	cmp	r3, #0
 8001910:	d1f2      	bne.n	80018f8 <mutex_lock+0x4>
 8001912:	f7ff fe2f 	bl	8001574 <sched_off>
 8001916:	6823      	ldr	r3, [r4, #0]
 8001918:	9301      	str	r3, [sp, #4]
 800191a:	9b01      	ldr	r3, [sp, #4]
 800191c:	2b00      	cmp	r3, #0
 800191e:	d1eb      	bne.n	80018f8 <mutex_lock+0x4>
 8001920:	2301      	movs	r3, #1
 8001922:	6023      	str	r3, [r4, #0]
 8001924:	f7ff fe28 	bl	8001578 <sched_on>
 8001928:	b002      	add	sp, #8
 800192a:	bd10      	pop	{r4, pc}

0800192c <mutex_unlock>:
 800192c:	b508      	push	{r3, lr}
 800192e:	f7ff ffd7 	bl	80018e0 <mutex_init>
 8001932:	f7ff feb5 	bl	80016a0 <wake_up_threads>
 8001936:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800193a:	f7ff be1f 	b.w	800157c <yield>

0800193e <lib_os_init>:
 800193e:	b508      	push	{r3, lr}
 8001940:	f7ff fe6a 	bl	8001618 <kernel_init>
 8001944:	f7ff ffb2 	bl	80018ac <messages_init>
 8001948:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800194c:	f7ff bf86 	b.w	800185c <stdio_init>

08001950 <Default_Handler>:
 8001950:	4668      	mov	r0, sp
 8001952:	f020 0107 	bic.w	r1, r0, #7
 8001956:	468d      	mov	sp, r1
 8001958:	bf00      	nop
 800195a:	e7fd      	b.n	8001958 <Default_Handler+0x8>

0800195c <HardFault_Handler>:
 800195c:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001960:	f000 f99a 	bl	8001c98 <led_on>
 8001964:	4b06      	ldr	r3, [pc, #24]	; (8001980 <HardFault_Handler+0x24>)
 8001966:	3b01      	subs	r3, #1
 8001968:	d001      	beq.n	800196e <HardFault_Handler+0x12>
 800196a:	bf00      	nop
 800196c:	e7fb      	b.n	8001966 <HardFault_Handler+0xa>
 800196e:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001972:	f000 f9a3 	bl	8001cbc <led_off>
 8001976:	4b02      	ldr	r3, [pc, #8]	; (8001980 <HardFault_Handler+0x24>)
 8001978:	3b01      	subs	r3, #1
 800197a:	d0ef      	beq.n	800195c <HardFault_Handler>
 800197c:	bf00      	nop
 800197e:	e7fb      	b.n	8001978 <HardFault_Handler+0x1c>
 8001980:	00989681 	.word	0x00989681

08001984 <_reset_init>:
 8001984:	4a0e      	ldr	r2, [pc, #56]	; (80019c0 <_reset_init+0x3c>)
 8001986:	480f      	ldr	r0, [pc, #60]	; (80019c4 <_reset_init+0x40>)
 8001988:	1a80      	subs	r0, r0, r2
 800198a:	1080      	asrs	r0, r0, #2
 800198c:	2300      	movs	r3, #0
 800198e:	4283      	cmp	r3, r0
 8001990:	d006      	beq.n	80019a0 <_reset_init+0x1c>
 8001992:	490d      	ldr	r1, [pc, #52]	; (80019c8 <_reset_init+0x44>)
 8001994:	f851 1023 	ldr.w	r1, [r1, r3, lsl #2]
 8001998:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
 800199c:	3301      	adds	r3, #1
 800199e:	e7f6      	b.n	800198e <_reset_init+0xa>
 80019a0:	4b0a      	ldr	r3, [pc, #40]	; (80019cc <_reset_init+0x48>)
 80019a2:	f8d3 2088 	ldr.w	r2, [r3, #136]	; 0x88
 80019a6:	f442 0270 	orr.w	r2, r2, #15728640	; 0xf00000
 80019aa:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
 80019ae:	f503 730c 	add.w	r3, r3, #560	; 0x230
 80019b2:	685a      	ldr	r2, [r3, #4]
 80019b4:	f022 4240 	bic.w	r2, r2, #3221225472	; 0xc0000000
 80019b8:	605a      	str	r2, [r3, #4]
 80019ba:	f7fe bbe5 	b.w	8000188 <main>
 80019be:	bf00      	nop
 80019c0:	20000000 	.word	0x20000000
 80019c4:	20000154 	.word	0x20000154
 80019c8:	08002cc4 	.word	0x08002cc4
 80019cc:	e000ed00 	.word	0xe000ed00

080019d0 <i2c_delay>:
 80019d0:	230b      	movs	r3, #11
 80019d2:	3b01      	subs	r3, #1
 80019d4:	d001      	beq.n	80019da <i2c_delay+0xa>
 80019d6:	bf00      	nop
 80019d8:	e7fb      	b.n	80019d2 <i2c_delay+0x2>
 80019da:	4770      	bx	lr

080019dc <SetLowSDA>:
 80019dc:	b537      	push	{r0, r1, r2, r4, r5, lr}
 80019de:	4d0d      	ldr	r5, [pc, #52]	; (8001a14 <SetLowSDA+0x38>)
 80019e0:	2301      	movs	r3, #1
 80019e2:	2203      	movs	r2, #3
 80019e4:	2480      	movs	r4, #128	; 0x80
 80019e6:	f88d 3004 	strb.w	r3, [sp, #4]
 80019ea:	f88d 3006 	strb.w	r3, [sp, #6]
 80019ee:	4628      	mov	r0, r5
 80019f0:	2300      	movs	r3, #0
 80019f2:	4669      	mov	r1, sp
 80019f4:	f88d 2005 	strb.w	r2, [sp, #5]
 80019f8:	f88d 3007 	strb.w	r3, [sp, #7]
 80019fc:	9400      	str	r4, [sp, #0]
 80019fe:	f000 f977 	bl	8001cf0 <GPIO_Init>
 8001a02:	4628      	mov	r0, r5
 8001a04:	4621      	mov	r1, r4
 8001a06:	f000 f9bc 	bl	8001d82 <GPIO_ResetBits>
 8001a0a:	f7ff ffe1 	bl	80019d0 <i2c_delay>
 8001a0e:	b003      	add	sp, #12
 8001a10:	bd30      	pop	{r4, r5, pc}
 8001a12:	bf00      	nop
 8001a14:	48000400 	.word	0x48000400

08001a18 <SetHighSDA>:
 8001a18:	b537      	push	{r0, r1, r2, r4, r5, lr}
 8001a1a:	4d0d      	ldr	r5, [pc, #52]	; (8001a50 <SetHighSDA+0x38>)
 8001a1c:	2203      	movs	r2, #3
 8001a1e:	2300      	movs	r3, #0
 8001a20:	2480      	movs	r4, #128	; 0x80
 8001a22:	f88d 2005 	strb.w	r2, [sp, #5]
 8001a26:	4628      	mov	r0, r5
 8001a28:	2201      	movs	r2, #1
 8001a2a:	4669      	mov	r1, sp
 8001a2c:	f88d 3004 	strb.w	r3, [sp, #4]
 8001a30:	f88d 2006 	strb.w	r2, [sp, #6]
 8001a34:	f88d 3007 	strb.w	r3, [sp, #7]
 8001a38:	9400      	str	r4, [sp, #0]
 8001a3a:	f000 f959 	bl	8001cf0 <GPIO_Init>
 8001a3e:	4628      	mov	r0, r5
 8001a40:	4621      	mov	r1, r4
 8001a42:	f000 f99a 	bl	8001d7a <GPIO_SetBits>
 8001a46:	f7ff ffc3 	bl	80019d0 <i2c_delay>
 8001a4a:	b003      	add	sp, #12
 8001a4c:	bd30      	pop	{r4, r5, pc}
 8001a4e:	bf00      	nop
 8001a50:	48000400 	.word	0x48000400

08001a54 <SetLowSCL>:
 8001a54:	b508      	push	{r3, lr}
 8001a56:	4804      	ldr	r0, [pc, #16]	; (8001a68 <SetLowSCL+0x14>)
 8001a58:	2140      	movs	r1, #64	; 0x40
 8001a5a:	f000 f992 	bl	8001d82 <GPIO_ResetBits>
 8001a5e:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001a62:	f7ff bfb5 	b.w	80019d0 <i2c_delay>
 8001a66:	bf00      	nop
 8001a68:	48000400 	.word	0x48000400

08001a6c <SetHighSCL>:
 8001a6c:	b508      	push	{r3, lr}
 8001a6e:	4804      	ldr	r0, [pc, #16]	; (8001a80 <SetHighSCL+0x14>)
 8001a70:	2140      	movs	r1, #64	; 0x40
 8001a72:	f000 f982 	bl	8001d7a <GPIO_SetBits>
 8001a76:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001a7a:	f7ff bfa9 	b.w	80019d0 <i2c_delay>
 8001a7e:	bf00      	nop
 8001a80:	48000400 	.word	0x48000400

08001a84 <i2c_0_init>:
 8001a84:	b507      	push	{r0, r1, r2, lr}
 8001a86:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 8001a8a:	2101      	movs	r1, #1
 8001a8c:	f000 fbea 	bl	8002264 <RCC_AHBPeriphClockCmd>
 8001a90:	23c0      	movs	r3, #192	; 0xc0
 8001a92:	9300      	str	r3, [sp, #0]
 8001a94:	2301      	movs	r3, #1
 8001a96:	2203      	movs	r2, #3
 8001a98:	480a      	ldr	r0, [pc, #40]	; (8001ac4 <i2c_0_init+0x40>)
 8001a9a:	f88d 3004 	strb.w	r3, [sp, #4]
 8001a9e:	4669      	mov	r1, sp
 8001aa0:	f88d 3006 	strb.w	r3, [sp, #6]
 8001aa4:	2300      	movs	r3, #0
 8001aa6:	f88d 2005 	strb.w	r2, [sp, #5]
 8001aaa:	f88d 3007 	strb.w	r3, [sp, #7]
 8001aae:	f000 f91f 	bl	8001cf0 <GPIO_Init>
 8001ab2:	f7ff ffdb 	bl	8001a6c <SetHighSCL>
 8001ab6:	f7ff ff91 	bl	80019dc <SetLowSDA>
 8001aba:	f7ff ffad 	bl	8001a18 <SetHighSDA>
 8001abe:	b003      	add	sp, #12
 8001ac0:	f85d fb04 	ldr.w	pc, [sp], #4
 8001ac4:	48000400 	.word	0x48000400

08001ac8 <i2cStart>:
 8001ac8:	b508      	push	{r3, lr}
 8001aca:	f7ff ffcf 	bl	8001a6c <SetHighSCL>
 8001ace:	f7ff ffa3 	bl	8001a18 <SetHighSDA>
 8001ad2:	f7ff ffcb 	bl	8001a6c <SetHighSCL>
 8001ad6:	f7ff ff81 	bl	80019dc <SetLowSDA>
 8001ada:	f7ff ffbb 	bl	8001a54 <SetLowSCL>
 8001ade:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001ae2:	f7ff bf99 	b.w	8001a18 <SetHighSDA>

08001ae6 <i2cStop>:
 8001ae6:	b508      	push	{r3, lr}
 8001ae8:	f7ff ffb4 	bl	8001a54 <SetLowSCL>
 8001aec:	f7ff ff76 	bl	80019dc <SetLowSDA>
 8001af0:	f7ff ffbc 	bl	8001a6c <SetHighSCL>
 8001af4:	f7ff ff72 	bl	80019dc <SetLowSDA>
 8001af8:	f7ff ffb8 	bl	8001a6c <SetHighSCL>
 8001afc:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001b00:	f7ff bf8a 	b.w	8001a18 <SetHighSDA>

08001b04 <i2cWrite>:
 8001b04:	b538      	push	{r3, r4, r5, lr}
 8001b06:	4604      	mov	r4, r0
 8001b08:	2508      	movs	r5, #8
 8001b0a:	f7ff ffa3 	bl	8001a54 <SetLowSCL>
 8001b0e:	0623      	lsls	r3, r4, #24
 8001b10:	d502      	bpl.n	8001b18 <i2cWrite+0x14>
 8001b12:	f7ff ff81 	bl	8001a18 <SetHighSDA>
 8001b16:	e001      	b.n	8001b1c <i2cWrite+0x18>
 8001b18:	f7ff ff60 	bl	80019dc <SetLowSDA>
 8001b1c:	3d01      	subs	r5, #1
 8001b1e:	f7ff ffa5 	bl	8001a6c <SetHighSCL>
 8001b22:	0064      	lsls	r4, r4, #1
 8001b24:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 8001b28:	b2e4      	uxtb	r4, r4
 8001b2a:	d1ee      	bne.n	8001b0a <i2cWrite+0x6>
 8001b2c:	f7ff ff92 	bl	8001a54 <SetLowSCL>
 8001b30:	f7ff ff72 	bl	8001a18 <SetHighSDA>
 8001b34:	f7ff ff9a 	bl	8001a6c <SetHighSCL>
 8001b38:	4b05      	ldr	r3, [pc, #20]	; (8001b50 <i2cWrite+0x4c>)
 8001b3a:	8a1c      	ldrh	r4, [r3, #16]
 8001b3c:	b2a4      	uxth	r4, r4
 8001b3e:	f7ff ff89 	bl	8001a54 <SetLowSCL>
 8001b42:	f7ff ff45 	bl	80019d0 <i2c_delay>
 8001b46:	f084 0080 	eor.w	r0, r4, #128	; 0x80
 8001b4a:	f3c0 10c0 	ubfx	r0, r0, #7, #1
 8001b4e:	bd38      	pop	{r3, r4, r5, pc}
 8001b50:	48000400 	.word	0x48000400

08001b54 <i2cRead>:
 8001b54:	b570      	push	{r4, r5, r6, lr}
 8001b56:	4606      	mov	r6, r0
 8001b58:	f7ff ff7c 	bl	8001a54 <SetLowSCL>
 8001b5c:	f7ff ff5c 	bl	8001a18 <SetHighSDA>
 8001b60:	2508      	movs	r5, #8
 8001b62:	2400      	movs	r4, #0
 8001b64:	f7ff ff82 	bl	8001a6c <SetHighSCL>
 8001b68:	4b0d      	ldr	r3, [pc, #52]	; (8001ba0 <i2cRead+0x4c>)
 8001b6a:	8a1b      	ldrh	r3, [r3, #16]
 8001b6c:	0064      	lsls	r4, r4, #1
 8001b6e:	061b      	lsls	r3, r3, #24
 8001b70:	b2e4      	uxtb	r4, r4
 8001b72:	bf48      	it	mi
 8001b74:	3401      	addmi	r4, #1
 8001b76:	f105 35ff 	add.w	r5, r5, #4294967295
 8001b7a:	bf48      	it	mi
 8001b7c:	b2e4      	uxtbmi	r4, r4
 8001b7e:	f7ff ff69 	bl	8001a54 <SetLowSCL>
 8001b82:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 8001b86:	d1ed      	bne.n	8001b64 <i2cRead+0x10>
 8001b88:	b10e      	cbz	r6, 8001b8e <i2cRead+0x3a>
 8001b8a:	f7ff ff27 	bl	80019dc <SetLowSDA>
 8001b8e:	f7ff ff6d 	bl	8001a6c <SetHighSCL>
 8001b92:	f7ff ff5f 	bl	8001a54 <SetLowSCL>
 8001b96:	f7ff ff1b 	bl	80019d0 <i2c_delay>
 8001b9a:	4620      	mov	r0, r4
 8001b9c:	bd70      	pop	{r4, r5, r6, pc}
 8001b9e:	bf00      	nop
 8001ba0:	48000400 	.word	0x48000400

08001ba4 <i2c_write_reg>:
 8001ba4:	b570      	push	{r4, r5, r6, lr}
 8001ba6:	4605      	mov	r5, r0
 8001ba8:	460c      	mov	r4, r1
 8001baa:	4616      	mov	r6, r2
 8001bac:	f7ff ff8c 	bl	8001ac8 <i2cStart>
 8001bb0:	4628      	mov	r0, r5
 8001bb2:	f7ff ffa7 	bl	8001b04 <i2cWrite>
 8001bb6:	4620      	mov	r0, r4
 8001bb8:	f7ff ffa4 	bl	8001b04 <i2cWrite>
 8001bbc:	4630      	mov	r0, r6
 8001bbe:	f7ff ffa1 	bl	8001b04 <i2cWrite>
 8001bc2:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8001bc6:	f7ff bf8e 	b.w	8001ae6 <i2cStop>

08001bca <i2c_read_reg>:
 8001bca:	b538      	push	{r3, r4, r5, lr}
 8001bcc:	4604      	mov	r4, r0
 8001bce:	460d      	mov	r5, r1
 8001bd0:	f7ff ff7a 	bl	8001ac8 <i2cStart>
 8001bd4:	4620      	mov	r0, r4
 8001bd6:	f7ff ff95 	bl	8001b04 <i2cWrite>
 8001bda:	4628      	mov	r0, r5
 8001bdc:	f7ff ff92 	bl	8001b04 <i2cWrite>
 8001be0:	f7ff ff72 	bl	8001ac8 <i2cStart>
 8001be4:	f044 0001 	orr.w	r0, r4, #1
 8001be8:	f7ff ff8c 	bl	8001b04 <i2cWrite>
 8001bec:	2000      	movs	r0, #0
 8001bee:	f7ff ffb1 	bl	8001b54 <i2cRead>
 8001bf2:	4604      	mov	r4, r0
 8001bf4:	f7ff ff77 	bl	8001ae6 <i2cStop>
 8001bf8:	4620      	mov	r0, r4
 8001bfa:	bd38      	pop	{r3, r4, r5, pc}

08001bfc <gpio_init>:
 8001bfc:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
 8001c00:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 8001c04:	2101      	movs	r1, #1
 8001c06:	f000 fb2d 	bl	8002264 <RCC_AHBPeriphClockCmd>
 8001c0a:	4d21      	ldr	r5, [pc, #132]	; (8001c90 <gpio_init+0x94>)
 8001c0c:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 8001c10:	2101      	movs	r1, #1
 8001c12:	f000 fb27 	bl	8002264 <RCC_AHBPeriphClockCmd>
 8001c16:	f44f 2000 	mov.w	r0, #524288	; 0x80000
 8001c1a:	2101      	movs	r1, #1
 8001c1c:	f000 fb22 	bl	8002264 <RCC_AHBPeriphClockCmd>
 8001c20:	2400      	movs	r4, #0
 8001c22:	2603      	movs	r6, #3
 8001c24:	f44f 4900 	mov.w	r9, #32768	; 0x8000
 8001c28:	2701      	movs	r7, #1
 8001c2a:	4628      	mov	r0, r5
 8001c2c:	4669      	mov	r1, sp
 8001c2e:	f88d 7004 	strb.w	r7, [sp, #4]
 8001c32:	f8cd 9000 	str.w	r9, [sp]
 8001c36:	f88d 4006 	strb.w	r4, [sp, #6]
 8001c3a:	f88d 6005 	strb.w	r6, [sp, #5]
 8001c3e:	f88d 4007 	strb.w	r4, [sp, #7]
 8001c42:	f000 f855 	bl	8001cf0 <GPIO_Init>
 8001c46:	f88d 7004 	strb.w	r7, [sp, #4]
 8001c4a:	4f12      	ldr	r7, [pc, #72]	; (8001c94 <gpio_init+0x98>)
 8001c4c:	f88d 4006 	strb.w	r4, [sp, #6]
 8001c50:	f44f 5800 	mov.w	r8, #8192	; 0x2000
 8001c54:	4638      	mov	r0, r7
 8001c56:	4669      	mov	r1, sp
 8001c58:	f8cd 8000 	str.w	r8, [sp]
 8001c5c:	f88d 6005 	strb.w	r6, [sp, #5]
 8001c60:	f88d 4007 	strb.w	r4, [sp, #7]
 8001c64:	f000 f844 	bl	8001cf0 <GPIO_Init>
 8001c68:	f44f 7300 	mov.w	r3, #512	; 0x200
 8001c6c:	4628      	mov	r0, r5
 8001c6e:	4669      	mov	r1, sp
 8001c70:	9300      	str	r3, [sp, #0]
 8001c72:	f88d 4004 	strb.w	r4, [sp, #4]
 8001c76:	f88d 6005 	strb.w	r6, [sp, #5]
 8001c7a:	f88d 4007 	strb.w	r4, [sp, #7]
 8001c7e:	f000 f837 	bl	8001cf0 <GPIO_Init>
 8001c82:	f8c5 9018 	str.w	r9, [r5, #24]
 8001c86:	f8c7 8018 	str.w	r8, [r7, #24]
 8001c8a:	b003      	add	sp, #12
 8001c8c:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8001c90:	48000400 	.word	0x48000400
 8001c94:	48000800 	.word	0x48000800

08001c98 <led_on>:
 8001c98:	0402      	lsls	r2, r0, #16
 8001c9a:	d503      	bpl.n	8001ca4 <led_on+0xc>
 8001c9c:	4b05      	ldr	r3, [pc, #20]	; (8001cb4 <led_on+0x1c>)
 8001c9e:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 8001ca2:	619a      	str	r2, [r3, #24]
 8001ca4:	0483      	lsls	r3, r0, #18
 8001ca6:	d503      	bpl.n	8001cb0 <led_on+0x18>
 8001ca8:	4b03      	ldr	r3, [pc, #12]	; (8001cb8 <led_on+0x20>)
 8001caa:	f44f 5200 	mov.w	r2, #8192	; 0x2000
 8001cae:	851a      	strh	r2, [r3, #40]	; 0x28
 8001cb0:	4770      	bx	lr
 8001cb2:	bf00      	nop
 8001cb4:	48000400 	.word	0x48000400
 8001cb8:	48000800 	.word	0x48000800

08001cbc <led_off>:
 8001cbc:	0402      	lsls	r2, r0, #16
 8001cbe:	d503      	bpl.n	8001cc8 <led_off+0xc>
 8001cc0:	4b05      	ldr	r3, [pc, #20]	; (8001cd8 <led_off+0x1c>)
 8001cc2:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 8001cc6:	851a      	strh	r2, [r3, #40]	; 0x28
 8001cc8:	0483      	lsls	r3, r0, #18
 8001cca:	d503      	bpl.n	8001cd4 <led_off+0x18>
 8001ccc:	4b03      	ldr	r3, [pc, #12]	; (8001cdc <led_off+0x20>)
 8001cce:	f44f 5200 	mov.w	r2, #8192	; 0x2000
 8001cd2:	619a      	str	r2, [r3, #24]
 8001cd4:	4770      	bx	lr
 8001cd6:	bf00      	nop
 8001cd8:	48000400 	.word	0x48000400
 8001cdc:	48000800 	.word	0x48000800

08001ce0 <get_key>:
 8001ce0:	4b02      	ldr	r3, [pc, #8]	; (8001cec <get_key+0xc>)
 8001ce2:	8a18      	ldrh	r0, [r3, #16]
 8001ce4:	43c0      	mvns	r0, r0
 8001ce6:	f400 7000 	and.w	r0, r0, #512	; 0x200
 8001cea:	4770      	bx	lr
 8001cec:	48000400 	.word	0x48000400

08001cf0 <GPIO_Init>:
 8001cf0:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001cf2:	bf00      	nop
 8001cf4:	bf00      	nop
 8001cf6:	bf00      	nop
 8001cf8:	bf00      	nop
 8001cfa:	2300      	movs	r3, #0
 8001cfc:	680e      	ldr	r6, [r1, #0]
 8001cfe:	461a      	mov	r2, r3
 8001d00:	2501      	movs	r5, #1
 8001d02:	4095      	lsls	r5, r2
 8001d04:	ea05 0406 	and.w	r4, r5, r6
 8001d08:	42ac      	cmp	r4, r5
 8001d0a:	d130      	bne.n	8001d6e <GPIO_Init+0x7e>
 8001d0c:	790d      	ldrb	r5, [r1, #4]
 8001d0e:	1e6f      	subs	r7, r5, #1
 8001d10:	2f01      	cmp	r7, #1
 8001d12:	d81c      	bhi.n	8001d4e <GPIO_Init+0x5e>
 8001d14:	bf00      	nop
 8001d16:	f04f 0c03 	mov.w	ip, #3
 8001d1a:	6887      	ldr	r7, [r0, #8]
 8001d1c:	fa0c fc03 	lsl.w	ip, ip, r3
 8001d20:	ea27 070c 	bic.w	r7, r7, ip
 8001d24:	6087      	str	r7, [r0, #8]
 8001d26:	f891 c005 	ldrb.w	ip, [r1, #5]
 8001d2a:	6887      	ldr	r7, [r0, #8]
 8001d2c:	fa0c fc03 	lsl.w	ip, ip, r3
 8001d30:	ea4c 0707 	orr.w	r7, ip, r7
 8001d34:	6087      	str	r7, [r0, #8]
 8001d36:	bf00      	nop
 8001d38:	8887      	ldrh	r7, [r0, #4]
 8001d3a:	b2bf      	uxth	r7, r7
 8001d3c:	ea27 0404 	bic.w	r4, r7, r4
 8001d40:	8084      	strh	r4, [r0, #4]
 8001d42:	798c      	ldrb	r4, [r1, #6]
 8001d44:	8887      	ldrh	r7, [r0, #4]
 8001d46:	4094      	lsls	r4, r2
 8001d48:	433c      	orrs	r4, r7
 8001d4a:	b2a4      	uxth	r4, r4
 8001d4c:	8084      	strh	r4, [r0, #4]
 8001d4e:	2403      	movs	r4, #3
 8001d50:	6807      	ldr	r7, [r0, #0]
 8001d52:	409c      	lsls	r4, r3
 8001d54:	43e4      	mvns	r4, r4
 8001d56:	4027      	ands	r7, r4
 8001d58:	6007      	str	r7, [r0, #0]
 8001d5a:	6807      	ldr	r7, [r0, #0]
 8001d5c:	409d      	lsls	r5, r3
 8001d5e:	433d      	orrs	r5, r7
 8001d60:	6005      	str	r5, [r0, #0]
 8001d62:	68c5      	ldr	r5, [r0, #12]
 8001d64:	402c      	ands	r4, r5
 8001d66:	79cd      	ldrb	r5, [r1, #7]
 8001d68:	409d      	lsls	r5, r3
 8001d6a:	432c      	orrs	r4, r5
 8001d6c:	60c4      	str	r4, [r0, #12]
 8001d6e:	3201      	adds	r2, #1
 8001d70:	2a10      	cmp	r2, #16
 8001d72:	f103 0302 	add.w	r3, r3, #2
 8001d76:	d1c3      	bne.n	8001d00 <GPIO_Init+0x10>
 8001d78:	bdf0      	pop	{r4, r5, r6, r7, pc}

08001d7a <GPIO_SetBits>:
 8001d7a:	bf00      	nop
 8001d7c:	bf00      	nop
 8001d7e:	6181      	str	r1, [r0, #24]
 8001d80:	4770      	bx	lr

08001d82 <GPIO_ResetBits>:
 8001d82:	bf00      	nop
 8001d84:	bf00      	nop
 8001d86:	8501      	strh	r1, [r0, #40]	; 0x28
 8001d88:	4770      	bx	lr

08001d8a <GPIO_PinAFConfig>:
 8001d8a:	b510      	push	{r4, lr}
 8001d8c:	bf00      	nop
 8001d8e:	bf00      	nop
 8001d90:	bf00      	nop
 8001d92:	f001 0307 	and.w	r3, r1, #7
 8001d96:	08c9      	lsrs	r1, r1, #3
 8001d98:	eb00 0081 	add.w	r0, r0, r1, lsl #2
 8001d9c:	009b      	lsls	r3, r3, #2
 8001d9e:	6a04      	ldr	r4, [r0, #32]
 8001da0:	210f      	movs	r1, #15
 8001da2:	4099      	lsls	r1, r3
 8001da4:	ea24 0101 	bic.w	r1, r4, r1
 8001da8:	6201      	str	r1, [r0, #32]
 8001daa:	6a01      	ldr	r1, [r0, #32]
 8001dac:	fa02 f303 	lsl.w	r3, r2, r3
 8001db0:	430b      	orrs	r3, r1
 8001db2:	6203      	str	r3, [r0, #32]
 8001db4:	bd10      	pop	{r4, pc}
	...

08001db8 <SystemInit>:
 8001db8:	4b39      	ldr	r3, [pc, #228]	; (8001ea0 <SystemInit+0xe8>)
 8001dba:	f8d3 2088 	ldr.w	r2, [r3, #136]	; 0x88
 8001dbe:	f442 0270 	orr.w	r2, r2, #15728640	; 0xf00000
 8001dc2:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
 8001dc6:	4b37      	ldr	r3, [pc, #220]	; (8001ea4 <SystemInit+0xec>)
 8001dc8:	681a      	ldr	r2, [r3, #0]
 8001dca:	f042 0201 	orr.w	r2, r2, #1
 8001dce:	601a      	str	r2, [r3, #0]
 8001dd0:	6859      	ldr	r1, [r3, #4]
 8001dd2:	4a35      	ldr	r2, [pc, #212]	; (8001ea8 <SystemInit+0xf0>)
 8001dd4:	400a      	ands	r2, r1
 8001dd6:	605a      	str	r2, [r3, #4]
 8001dd8:	681a      	ldr	r2, [r3, #0]
 8001dda:	f022 7284 	bic.w	r2, r2, #17301504	; 0x1080000
 8001dde:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
 8001de2:	601a      	str	r2, [r3, #0]
 8001de4:	681a      	ldr	r2, [r3, #0]
 8001de6:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 8001dea:	601a      	str	r2, [r3, #0]
 8001dec:	685a      	ldr	r2, [r3, #4]
 8001dee:	f422 02fe 	bic.w	r2, r2, #8323072	; 0x7f0000
 8001df2:	605a      	str	r2, [r3, #4]
 8001df4:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8001df6:	f022 020f 	bic.w	r2, r2, #15
 8001dfa:	62da      	str	r2, [r3, #44]	; 0x2c
 8001dfc:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001dfe:	4a2b      	ldr	r2, [pc, #172]	; (8001eac <SystemInit+0xf4>)
 8001e00:	b082      	sub	sp, #8
 8001e02:	400a      	ands	r2, r1
 8001e04:	631a      	str	r2, [r3, #48]	; 0x30
 8001e06:	2200      	movs	r2, #0
 8001e08:	609a      	str	r2, [r3, #8]
 8001e0a:	9200      	str	r2, [sp, #0]
 8001e0c:	9201      	str	r2, [sp, #4]
 8001e0e:	681a      	ldr	r2, [r3, #0]
 8001e10:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
 8001e14:	601a      	str	r2, [r3, #0]
 8001e16:	681a      	ldr	r2, [r3, #0]
 8001e18:	f402 3200 	and.w	r2, r2, #131072	; 0x20000
 8001e1c:	9201      	str	r2, [sp, #4]
 8001e1e:	9a00      	ldr	r2, [sp, #0]
 8001e20:	3201      	adds	r2, #1
 8001e22:	9200      	str	r2, [sp, #0]
 8001e24:	9a01      	ldr	r2, [sp, #4]
 8001e26:	b91a      	cbnz	r2, 8001e30 <SystemInit+0x78>
 8001e28:	9a00      	ldr	r2, [sp, #0]
 8001e2a:	f5b2 4fa0 	cmp.w	r2, #20480	; 0x5000
 8001e2e:	d1f2      	bne.n	8001e16 <SystemInit+0x5e>
 8001e30:	681a      	ldr	r2, [r3, #0]
 8001e32:	f412 3200 	ands.w	r2, r2, #131072	; 0x20000
 8001e36:	bf18      	it	ne
 8001e38:	2201      	movne	r2, #1
 8001e3a:	9201      	str	r2, [sp, #4]
 8001e3c:	9a01      	ldr	r2, [sp, #4]
 8001e3e:	2a01      	cmp	r2, #1
 8001e40:	d005      	beq.n	8001e4e <SystemInit+0x96>
 8001e42:	4b17      	ldr	r3, [pc, #92]	; (8001ea0 <SystemInit+0xe8>)
 8001e44:	f04f 6200 	mov.w	r2, #134217728	; 0x8000000
 8001e48:	609a      	str	r2, [r3, #8]
 8001e4a:	b002      	add	sp, #8
 8001e4c:	4770      	bx	lr
 8001e4e:	4a18      	ldr	r2, [pc, #96]	; (8001eb0 <SystemInit+0xf8>)
 8001e50:	2112      	movs	r1, #18
 8001e52:	6011      	str	r1, [r2, #0]
 8001e54:	685a      	ldr	r2, [r3, #4]
 8001e56:	605a      	str	r2, [r3, #4]
 8001e58:	685a      	ldr	r2, [r3, #4]
 8001e5a:	605a      	str	r2, [r3, #4]
 8001e5c:	685a      	ldr	r2, [r3, #4]
 8001e5e:	f442 6280 	orr.w	r2, r2, #1024	; 0x400
 8001e62:	605a      	str	r2, [r3, #4]
 8001e64:	685a      	ldr	r2, [r3, #4]
 8001e66:	f422 127c 	bic.w	r2, r2, #4128768	; 0x3f0000
 8001e6a:	605a      	str	r2, [r3, #4]
 8001e6c:	685a      	ldr	r2, [r3, #4]
 8001e6e:	f442 12e8 	orr.w	r2, r2, #1900544	; 0x1d0000
 8001e72:	605a      	str	r2, [r3, #4]
 8001e74:	681a      	ldr	r2, [r3, #0]
 8001e76:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
 8001e7a:	601a      	str	r2, [r3, #0]
 8001e7c:	6819      	ldr	r1, [r3, #0]
 8001e7e:	4a09      	ldr	r2, [pc, #36]	; (8001ea4 <SystemInit+0xec>)
 8001e80:	0189      	lsls	r1, r1, #6
 8001e82:	d5fb      	bpl.n	8001e7c <SystemInit+0xc4>
 8001e84:	6851      	ldr	r1, [r2, #4]
 8001e86:	f021 0103 	bic.w	r1, r1, #3
 8001e8a:	6051      	str	r1, [r2, #4]
 8001e8c:	6851      	ldr	r1, [r2, #4]
 8001e8e:	f041 0102 	orr.w	r1, r1, #2
 8001e92:	6051      	str	r1, [r2, #4]
 8001e94:	685a      	ldr	r2, [r3, #4]
 8001e96:	f002 020c 	and.w	r2, r2, #12
 8001e9a:	2a08      	cmp	r2, #8
 8001e9c:	d1fa      	bne.n	8001e94 <SystemInit+0xdc>
 8001e9e:	e7d0      	b.n	8001e42 <SystemInit+0x8a>
 8001ea0:	e000ed00 	.word	0xe000ed00
 8001ea4:	40021000 	.word	0x40021000
 8001ea8:	f87fc00c 	.word	0xf87fc00c
 8001eac:	ff00fccc 	.word	0xff00fccc
 8001eb0:	40022000 	.word	0x40022000

08001eb4 <sys_tick_init>:
 8001eb4:	4b05      	ldr	r3, [pc, #20]	; (8001ecc <sys_tick_init+0x18>)
 8001eb6:	4a06      	ldr	r2, [pc, #24]	; (8001ed0 <sys_tick_init+0x1c>)
 8001eb8:	605a      	str	r2, [r3, #4]
 8001eba:	4a06      	ldr	r2, [pc, #24]	; (8001ed4 <sys_tick_init+0x20>)
 8001ebc:	21f0      	movs	r1, #240	; 0xf0
 8001ebe:	f882 1023 	strb.w	r1, [r2, #35]	; 0x23
 8001ec2:	2200      	movs	r2, #0
 8001ec4:	609a      	str	r2, [r3, #8]
 8001ec6:	2207      	movs	r2, #7
 8001ec8:	601a      	str	r2, [r3, #0]
 8001eca:	4770      	bx	lr
 8001ecc:	e000e010 	.word	0xe000e010
 8001ed0:	00029040 	.word	0x00029040
 8001ed4:	e000ed00 	.word	0xe000ed00

08001ed8 <sleep>:
 8001ed8:	bf30      	wfi
 8001eda:	4770      	bx	lr

08001edc <sytem_clock_init>:
 8001edc:	f7ff bf6c 	b.w	8001db8 <SystemInit>

08001ee0 <lib_low_level_init>:
 8001ee0:	b508      	push	{r3, lr}
 8001ee2:	f7ff fffb 	bl	8001edc <sytem_clock_init>
 8001ee6:	f7ff fe89 	bl	8001bfc <gpio_init>
 8001eea:	f000 fa7f 	bl	80023ec <uart_init>
 8001eee:	f000 fdd9 	bl	8002aa4 <timer_init>
 8001ef2:	f000 fc5f 	bl	80027b4 <pwm_init>
 8001ef6:	f000 fbdf 	bl	80026b8 <drv8834_init>
 8001efa:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001efe:	f7ff bdc1 	b.w	8001a84 <i2c_0_init>
	...

08001f04 <RCC_GetClocksFreq>:
 8001f04:	4aaf      	ldr	r2, [pc, #700]	; (80021c4 <RCC_GetClocksFreq+0x2c0>)
 8001f06:	6851      	ldr	r1, [r2, #4]
 8001f08:	f001 010c 	and.w	r1, r1, #12
 8001f0c:	2904      	cmp	r1, #4
 8001f0e:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8001f12:	d005      	beq.n	8001f20 <RCC_GetClocksFreq+0x1c>
 8001f14:	2908      	cmp	r1, #8
 8001f16:	d006      	beq.n	8001f26 <RCC_GetClocksFreq+0x22>
 8001f18:	4bab      	ldr	r3, [pc, #684]	; (80021c8 <RCC_GetClocksFreq+0x2c4>)
 8001f1a:	6003      	str	r3, [r0, #0]
 8001f1c:	b9b9      	cbnz	r1, 8001f4e <RCC_GetClocksFreq+0x4a>
 8001f1e:	e017      	b.n	8001f50 <RCC_GetClocksFreq+0x4c>
 8001f20:	4ba9      	ldr	r3, [pc, #676]	; (80021c8 <RCC_GetClocksFreq+0x2c4>)
 8001f22:	6003      	str	r3, [r0, #0]
 8001f24:	e013      	b.n	8001f4e <RCC_GetClocksFreq+0x4a>
 8001f26:	6853      	ldr	r3, [r2, #4]
 8001f28:	6854      	ldr	r4, [r2, #4]
 8001f2a:	f3c3 4383 	ubfx	r3, r3, #18, #4
 8001f2e:	03e6      	lsls	r6, r4, #15
 8001f30:	f103 0302 	add.w	r3, r3, #2
 8001f34:	d401      	bmi.n	8001f3a <RCC_GetClocksFreq+0x36>
 8001f36:	49a5      	ldr	r1, [pc, #660]	; (80021cc <RCC_GetClocksFreq+0x2c8>)
 8001f38:	e006      	b.n	8001f48 <RCC_GetClocksFreq+0x44>
 8001f3a:	6ad1      	ldr	r1, [r2, #44]	; 0x2c
 8001f3c:	4ca2      	ldr	r4, [pc, #648]	; (80021c8 <RCC_GetClocksFreq+0x2c4>)
 8001f3e:	f001 010f 	and.w	r1, r1, #15
 8001f42:	3101      	adds	r1, #1
 8001f44:	fbb4 f1f1 	udiv	r1, r4, r1
 8001f48:	4359      	muls	r1, r3
 8001f4a:	6001      	str	r1, [r0, #0]
 8001f4c:	e000      	b.n	8001f50 <RCC_GetClocksFreq+0x4c>
 8001f4e:	2100      	movs	r1, #0
 8001f50:	6853      	ldr	r3, [r2, #4]
 8001f52:	4e9f      	ldr	r6, [pc, #636]	; (80021d0 <RCC_GetClocksFreq+0x2cc>)
 8001f54:	f8df 827c 	ldr.w	r8, [pc, #636]	; 80021d4 <RCC_GetClocksFreq+0x2d0>
 8001f58:	f3c3 1303 	ubfx	r3, r3, #4, #4
 8001f5c:	5cf5      	ldrb	r5, [r6, r3]
 8001f5e:	6803      	ldr	r3, [r0, #0]
 8001f60:	b2ed      	uxtb	r5, r5
 8001f62:	fa23 f405 	lsr.w	r4, r3, r5
 8001f66:	6044      	str	r4, [r0, #4]
 8001f68:	6857      	ldr	r7, [r2, #4]
 8001f6a:	f3c7 2702 	ubfx	r7, r7, #8, #3
 8001f6e:	5df7      	ldrb	r7, [r6, r7]
 8001f70:	fa24 f707 	lsr.w	r7, r4, r7
 8001f74:	6087      	str	r7, [r0, #8]
 8001f76:	f8d2 c004 	ldr.w	ip, [r2, #4]
 8001f7a:	f3cc 2cc2 	ubfx	ip, ip, #11, #3
 8001f7e:	f816 600c 	ldrb.w	r6, [r6, ip]
 8001f82:	b2f6      	uxtb	r6, r6
 8001f84:	40f4      	lsrs	r4, r6
 8001f86:	60c4      	str	r4, [r0, #12]
 8001f88:	f8d2 902c 	ldr.w	r9, [r2, #44]	; 0x2c
 8001f8c:	f3c9 1904 	ubfx	r9, r9, #4, #5
 8001f90:	f009 0c0f 	and.w	ip, r9, #15
 8001f94:	f019 0f10 	tst.w	r9, #16
 8001f98:	f838 c01c 	ldrh.w	ip, [r8, ip, lsl #1]
 8001f9c:	46c1      	mov	r9, r8
 8001f9e:	fa1f fc8c 	uxth.w	ip, ip
 8001fa2:	d007      	beq.n	8001fb4 <RCC_GetClocksFreq+0xb0>
 8001fa4:	f1bc 0f00 	cmp.w	ip, #0
 8001fa8:	d004      	beq.n	8001fb4 <RCC_GetClocksFreq+0xb0>
 8001faa:	fbb1 fcfc 	udiv	ip, r1, ip
 8001fae:	f8c0 c010 	str.w	ip, [r0, #16]
 8001fb2:	e000      	b.n	8001fb6 <RCC_GetClocksFreq+0xb2>
 8001fb4:	6103      	str	r3, [r0, #16]
 8001fb6:	f8d2 802c 	ldr.w	r8, [r2, #44]	; 0x2c
 8001fba:	f3c8 2844 	ubfx	r8, r8, #9, #5
 8001fbe:	f008 0c0f 	and.w	ip, r8, #15
 8001fc2:	f018 0f10 	tst.w	r8, #16
 8001fc6:	f839 c01c 	ldrh.w	ip, [r9, ip, lsl #1]
 8001fca:	fa1f fc8c 	uxth.w	ip, ip
 8001fce:	d007      	beq.n	8001fe0 <RCC_GetClocksFreq+0xdc>
 8001fd0:	f1bc 0f00 	cmp.w	ip, #0
 8001fd4:	d004      	beq.n	8001fe0 <RCC_GetClocksFreq+0xdc>
 8001fd6:	fbb1 fcfc 	udiv	ip, r1, ip
 8001fda:	f8c0 c014 	str.w	ip, [r0, #20]
 8001fde:	e000      	b.n	8001fe2 <RCC_GetClocksFreq+0xde>
 8001fe0:	6143      	str	r3, [r0, #20]
 8001fe2:	f8d2 c030 	ldr.w	ip, [r2, #48]	; 0x30
 8001fe6:	f01c 0f10 	tst.w	ip, #16
 8001fea:	bf06      	itte	eq
 8001fec:	f8df c1d8 	ldreq.w	ip, [pc, #472]	; 80021c8 <RCC_GetClocksFreq+0x2c4>
 8001ff0:	f8c0 c018 	streq.w	ip, [r0, #24]
 8001ff4:	6183      	strne	r3, [r0, #24]
 8001ff6:	f8d2 c030 	ldr.w	ip, [r2, #48]	; 0x30
 8001ffa:	f01c 0f20 	tst.w	ip, #32
 8001ffe:	bf06      	itte	eq
 8002000:	f8df c1c4 	ldreq.w	ip, [pc, #452]	; 80021c8 <RCC_GetClocksFreq+0x2c4>
 8002004:	f8c0 c01c 	streq.w	ip, [r0, #28]
 8002008:	61c3      	strne	r3, [r0, #28]
 800200a:	f8d2 c030 	ldr.w	ip, [r2, #48]	; 0x30
 800200e:	f01c 0f40 	tst.w	ip, #64	; 0x40
 8002012:	bf06      	itte	eq
 8002014:	f8df c1b0 	ldreq.w	ip, [pc, #432]	; 80021c8 <RCC_GetClocksFreq+0x2c4>
 8002018:	f8c0 c020 	streq.w	ip, [r0, #32]
 800201c:	6203      	strne	r3, [r0, #32]
 800201e:	f8d2 c030 	ldr.w	ip, [r2, #48]	; 0x30
 8002022:	f41c 7f80 	tst.w	ip, #256	; 0x100
 8002026:	d008      	beq.n	800203a <RCC_GetClocksFreq+0x136>
 8002028:	428b      	cmp	r3, r1
 800202a:	d106      	bne.n	800203a <RCC_GetClocksFreq+0x136>
 800202c:	42ae      	cmp	r6, r5
 800202e:	d104      	bne.n	800203a <RCC_GetClocksFreq+0x136>
 8002030:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8002034:	f8c0 c024 	str.w	ip, [r0, #36]	; 0x24
 8002038:	e000      	b.n	800203c <RCC_GetClocksFreq+0x138>
 800203a:	6244      	str	r4, [r0, #36]	; 0x24
 800203c:	f8d2 c030 	ldr.w	ip, [r2, #48]	; 0x30
 8002040:	f41c 5f80 	tst.w	ip, #4096	; 0x1000
 8002044:	d008      	beq.n	8002058 <RCC_GetClocksFreq+0x154>
 8002046:	428b      	cmp	r3, r1
 8002048:	d106      	bne.n	8002058 <RCC_GetClocksFreq+0x154>
 800204a:	42ae      	cmp	r6, r5
 800204c:	d104      	bne.n	8002058 <RCC_GetClocksFreq+0x154>
 800204e:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8002052:	f8c0 c028 	str.w	ip, [r0, #40]	; 0x28
 8002056:	e000      	b.n	800205a <RCC_GetClocksFreq+0x156>
 8002058:	6284      	str	r4, [r0, #40]	; 0x28
 800205a:	f8d2 c030 	ldr.w	ip, [r2, #48]	; 0x30
 800205e:	f41c 7f00 	tst.w	ip, #512	; 0x200
 8002062:	d008      	beq.n	8002076 <RCC_GetClocksFreq+0x172>
 8002064:	428b      	cmp	r3, r1
 8002066:	d106      	bne.n	8002076 <RCC_GetClocksFreq+0x172>
 8002068:	42ae      	cmp	r6, r5
 800206a:	d104      	bne.n	8002076 <RCC_GetClocksFreq+0x172>
 800206c:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8002070:	f8c0 c02c 	str.w	ip, [r0, #44]	; 0x2c
 8002074:	e000      	b.n	8002078 <RCC_GetClocksFreq+0x174>
 8002076:	62c4      	str	r4, [r0, #44]	; 0x2c
 8002078:	f8d2 c030 	ldr.w	ip, [r2, #48]	; 0x30
 800207c:	f41c 6f80 	tst.w	ip, #1024	; 0x400
 8002080:	d008      	beq.n	8002094 <RCC_GetClocksFreq+0x190>
 8002082:	428b      	cmp	r3, r1
 8002084:	d106      	bne.n	8002094 <RCC_GetClocksFreq+0x190>
 8002086:	42ae      	cmp	r6, r5
 8002088:	d104      	bne.n	8002094 <RCC_GetClocksFreq+0x190>
 800208a:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 800208e:	f8c0 c04c 	str.w	ip, [r0, #76]	; 0x4c
 8002092:	e000      	b.n	8002096 <RCC_GetClocksFreq+0x192>
 8002094:	64c4      	str	r4, [r0, #76]	; 0x4c
 8002096:	f8d2 c030 	ldr.w	ip, [r2, #48]	; 0x30
 800209a:	f41c 6f00 	tst.w	ip, #2048	; 0x800
 800209e:	d008      	beq.n	80020b2 <RCC_GetClocksFreq+0x1ae>
 80020a0:	428b      	cmp	r3, r1
 80020a2:	d106      	bne.n	80020b2 <RCC_GetClocksFreq+0x1ae>
 80020a4:	42ae      	cmp	r6, r5
 80020a6:	d104      	bne.n	80020b2 <RCC_GetClocksFreq+0x1ae>
 80020a8:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 80020ac:	f8c0 c050 	str.w	ip, [r0, #80]	; 0x50
 80020b0:	e000      	b.n	80020b4 <RCC_GetClocksFreq+0x1b0>
 80020b2:	6504      	str	r4, [r0, #80]	; 0x50
 80020b4:	f8d2 c030 	ldr.w	ip, [r2, #48]	; 0x30
 80020b8:	f41c 5f00 	tst.w	ip, #8192	; 0x2000
 80020bc:	d008      	beq.n	80020d0 <RCC_GetClocksFreq+0x1cc>
 80020be:	428b      	cmp	r3, r1
 80020c0:	d106      	bne.n	80020d0 <RCC_GetClocksFreq+0x1cc>
 80020c2:	42ae      	cmp	r6, r5
 80020c4:	d104      	bne.n	80020d0 <RCC_GetClocksFreq+0x1cc>
 80020c6:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 80020ca:	f8c0 c054 	str.w	ip, [r0, #84]	; 0x54
 80020ce:	e000      	b.n	80020d2 <RCC_GetClocksFreq+0x1ce>
 80020d0:	6504      	str	r4, [r0, #80]	; 0x50
 80020d2:	f8d2 c030 	ldr.w	ip, [r2, #48]	; 0x30
 80020d6:	f41c 4f00 	tst.w	ip, #32768	; 0x8000
 80020da:	d006      	beq.n	80020ea <RCC_GetClocksFreq+0x1e6>
 80020dc:	428b      	cmp	r3, r1
 80020de:	d104      	bne.n	80020ea <RCC_GetClocksFreq+0x1e6>
 80020e0:	42ae      	cmp	r6, r5
 80020e2:	d102      	bne.n	80020ea <RCC_GetClocksFreq+0x1e6>
 80020e4:	0059      	lsls	r1, r3, #1
 80020e6:	6581      	str	r1, [r0, #88]	; 0x58
 80020e8:	e000      	b.n	80020ec <RCC_GetClocksFreq+0x1e8>
 80020ea:	6584      	str	r4, [r0, #88]	; 0x58
 80020ec:	6b15      	ldr	r5, [r2, #48]	; 0x30
 80020ee:	4935      	ldr	r1, [pc, #212]	; (80021c4 <RCC_GetClocksFreq+0x2c0>)
 80020f0:	07ad      	lsls	r5, r5, #30
 80020f2:	d101      	bne.n	80020f8 <RCC_GetClocksFreq+0x1f4>
 80020f4:	6384      	str	r4, [r0, #56]	; 0x38
 80020f6:	e015      	b.n	8002124 <RCC_GetClocksFreq+0x220>
 80020f8:	6b0c      	ldr	r4, [r1, #48]	; 0x30
 80020fa:	f004 0403 	and.w	r4, r4, #3
 80020fe:	2c01      	cmp	r4, #1
 8002100:	d101      	bne.n	8002106 <RCC_GetClocksFreq+0x202>
 8002102:	6383      	str	r3, [r0, #56]	; 0x38
 8002104:	e00e      	b.n	8002124 <RCC_GetClocksFreq+0x220>
 8002106:	6b0c      	ldr	r4, [r1, #48]	; 0x30
 8002108:	f004 0403 	and.w	r4, r4, #3
 800210c:	2c02      	cmp	r4, #2
 800210e:	d102      	bne.n	8002116 <RCC_GetClocksFreq+0x212>
 8002110:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 8002114:	e005      	b.n	8002122 <RCC_GetClocksFreq+0x21e>
 8002116:	6b09      	ldr	r1, [r1, #48]	; 0x30
 8002118:	f001 0103 	and.w	r1, r1, #3
 800211c:	2903      	cmp	r1, #3
 800211e:	d101      	bne.n	8002124 <RCC_GetClocksFreq+0x220>
 8002120:	4929      	ldr	r1, [pc, #164]	; (80021c8 <RCC_GetClocksFreq+0x2c4>)
 8002122:	6381      	str	r1, [r0, #56]	; 0x38
 8002124:	6b14      	ldr	r4, [r2, #48]	; 0x30
 8002126:	4927      	ldr	r1, [pc, #156]	; (80021c4 <RCC_GetClocksFreq+0x2c0>)
 8002128:	f414 3f40 	tst.w	r4, #196608	; 0x30000
 800212c:	d101      	bne.n	8002132 <RCC_GetClocksFreq+0x22e>
 800212e:	63c7      	str	r7, [r0, #60]	; 0x3c
 8002130:	e018      	b.n	8002164 <RCC_GetClocksFreq+0x260>
 8002132:	6b0c      	ldr	r4, [r1, #48]	; 0x30
 8002134:	f404 3440 	and.w	r4, r4, #196608	; 0x30000
 8002138:	f5b4 3f80 	cmp.w	r4, #65536	; 0x10000
 800213c:	d101      	bne.n	8002142 <RCC_GetClocksFreq+0x23e>
 800213e:	63c3      	str	r3, [r0, #60]	; 0x3c
 8002140:	e010      	b.n	8002164 <RCC_GetClocksFreq+0x260>
 8002142:	6b0c      	ldr	r4, [r1, #48]	; 0x30
 8002144:	f404 3440 	and.w	r4, r4, #196608	; 0x30000
 8002148:	f5b4 3f00 	cmp.w	r4, #131072	; 0x20000
 800214c:	d102      	bne.n	8002154 <RCC_GetClocksFreq+0x250>
 800214e:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 8002152:	e006      	b.n	8002162 <RCC_GetClocksFreq+0x25e>
 8002154:	6b09      	ldr	r1, [r1, #48]	; 0x30
 8002156:	f401 3140 	and.w	r1, r1, #196608	; 0x30000
 800215a:	f5b1 3f40 	cmp.w	r1, #196608	; 0x30000
 800215e:	d101      	bne.n	8002164 <RCC_GetClocksFreq+0x260>
 8002160:	4919      	ldr	r1, [pc, #100]	; (80021c8 <RCC_GetClocksFreq+0x2c4>)
 8002162:	63c1      	str	r1, [r0, #60]	; 0x3c
 8002164:	6b14      	ldr	r4, [r2, #48]	; 0x30
 8002166:	4917      	ldr	r1, [pc, #92]	; (80021c4 <RCC_GetClocksFreq+0x2c0>)
 8002168:	f414 2f40 	tst.w	r4, #786432	; 0xc0000
 800216c:	d101      	bne.n	8002172 <RCC_GetClocksFreq+0x26e>
 800216e:	6407      	str	r7, [r0, #64]	; 0x40
 8002170:	e018      	b.n	80021a4 <RCC_GetClocksFreq+0x2a0>
 8002172:	6b0c      	ldr	r4, [r1, #48]	; 0x30
 8002174:	f404 2440 	and.w	r4, r4, #786432	; 0xc0000
 8002178:	f5b4 2f80 	cmp.w	r4, #262144	; 0x40000
 800217c:	d101      	bne.n	8002182 <RCC_GetClocksFreq+0x27e>
 800217e:	6403      	str	r3, [r0, #64]	; 0x40
 8002180:	e010      	b.n	80021a4 <RCC_GetClocksFreq+0x2a0>
 8002182:	6b0c      	ldr	r4, [r1, #48]	; 0x30
 8002184:	f404 2440 	and.w	r4, r4, #786432	; 0xc0000
 8002188:	f5b4 2f00 	cmp.w	r4, #524288	; 0x80000
 800218c:	d102      	bne.n	8002194 <RCC_GetClocksFreq+0x290>
 800218e:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 8002192:	e006      	b.n	80021a2 <RCC_GetClocksFreq+0x29e>
 8002194:	6b09      	ldr	r1, [r1, #48]	; 0x30
 8002196:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 800219a:	f5b1 2f40 	cmp.w	r1, #786432	; 0xc0000
 800219e:	d101      	bne.n	80021a4 <RCC_GetClocksFreq+0x2a0>
 80021a0:	4909      	ldr	r1, [pc, #36]	; (80021c8 <RCC_GetClocksFreq+0x2c4>)
 80021a2:	6401      	str	r1, [r0, #64]	; 0x40
 80021a4:	6b14      	ldr	r4, [r2, #48]	; 0x30
 80021a6:	4907      	ldr	r1, [pc, #28]	; (80021c4 <RCC_GetClocksFreq+0x2c0>)
 80021a8:	f414 1f40 	tst.w	r4, #3145728	; 0x300000
 80021ac:	d101      	bne.n	80021b2 <RCC_GetClocksFreq+0x2ae>
 80021ae:	6447      	str	r7, [r0, #68]	; 0x44
 80021b0:	e023      	b.n	80021fa <RCC_GetClocksFreq+0x2f6>
 80021b2:	6b0c      	ldr	r4, [r1, #48]	; 0x30
 80021b4:	f404 1440 	and.w	r4, r4, #3145728	; 0x300000
 80021b8:	f5b4 1f80 	cmp.w	r4, #1048576	; 0x100000
 80021bc:	d10c      	bne.n	80021d8 <RCC_GetClocksFreq+0x2d4>
 80021be:	6443      	str	r3, [r0, #68]	; 0x44
 80021c0:	e01b      	b.n	80021fa <RCC_GetClocksFreq+0x2f6>
 80021c2:	bf00      	nop
 80021c4:	40021000 	.word	0x40021000
 80021c8:	007a1200 	.word	0x007a1200
 80021cc:	003d0900 	.word	0x003d0900
 80021d0:	20000144 	.word	0x20000144
 80021d4:	20000124 	.word	0x20000124
 80021d8:	6b0c      	ldr	r4, [r1, #48]	; 0x30
 80021da:	f404 1440 	and.w	r4, r4, #3145728	; 0x300000
 80021de:	f5b4 1f00 	cmp.w	r4, #2097152	; 0x200000
 80021e2:	d102      	bne.n	80021ea <RCC_GetClocksFreq+0x2e6>
 80021e4:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 80021e8:	e006      	b.n	80021f8 <RCC_GetClocksFreq+0x2f4>
 80021ea:	6b09      	ldr	r1, [r1, #48]	; 0x30
 80021ec:	f401 1140 	and.w	r1, r1, #3145728	; 0x300000
 80021f0:	f5b1 1f40 	cmp.w	r1, #3145728	; 0x300000
 80021f4:	d101      	bne.n	80021fa <RCC_GetClocksFreq+0x2f6>
 80021f6:	4911      	ldr	r1, [pc, #68]	; (800223c <RCC_GetClocksFreq+0x338>)
 80021f8:	6441      	str	r1, [r0, #68]	; 0x44
 80021fa:	6b12      	ldr	r2, [r2, #48]	; 0x30
 80021fc:	4910      	ldr	r1, [pc, #64]	; (8002240 <RCC_GetClocksFreq+0x33c>)
 80021fe:	f412 0f40 	tst.w	r2, #12582912	; 0xc00000
 8002202:	d102      	bne.n	800220a <RCC_GetClocksFreq+0x306>
 8002204:	6487      	str	r7, [r0, #72]	; 0x48
 8002206:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 800220a:	6b0a      	ldr	r2, [r1, #48]	; 0x30
 800220c:	f402 0240 	and.w	r2, r2, #12582912	; 0xc00000
 8002210:	f5b2 0f80 	cmp.w	r2, #4194304	; 0x400000
 8002214:	d00f      	beq.n	8002236 <RCC_GetClocksFreq+0x332>
 8002216:	6b0b      	ldr	r3, [r1, #48]	; 0x30
 8002218:	f403 0340 	and.w	r3, r3, #12582912	; 0xc00000
 800221c:	f5b3 0f00 	cmp.w	r3, #8388608	; 0x800000
 8002220:	d102      	bne.n	8002228 <RCC_GetClocksFreq+0x324>
 8002222:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8002226:	e006      	b.n	8002236 <RCC_GetClocksFreq+0x332>
 8002228:	6b0b      	ldr	r3, [r1, #48]	; 0x30
 800222a:	f403 0340 	and.w	r3, r3, #12582912	; 0xc00000
 800222e:	f5b3 0f40 	cmp.w	r3, #12582912	; 0xc00000
 8002232:	d101      	bne.n	8002238 <RCC_GetClocksFreq+0x334>
 8002234:	4b01      	ldr	r3, [pc, #4]	; (800223c <RCC_GetClocksFreq+0x338>)
 8002236:	6483      	str	r3, [r0, #72]	; 0x48
 8002238:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 800223c:	007a1200 	.word	0x007a1200
 8002240:	40021000 	.word	0x40021000

08002244 <RCC_ADCCLKConfig>:
 8002244:	bf00      	nop
 8002246:	0f03      	lsrs	r3, r0, #28
 8002248:	4b05      	ldr	r3, [pc, #20]	; (8002260 <RCC_ADCCLKConfig+0x1c>)
 800224a:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 800224c:	bf14      	ite	ne
 800224e:	f422 5278 	bicne.w	r2, r2, #15872	; 0x3e00
 8002252:	f422 72f8 	biceq.w	r2, r2, #496	; 0x1f0
 8002256:	62da      	str	r2, [r3, #44]	; 0x2c
 8002258:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 800225a:	4310      	orrs	r0, r2
 800225c:	62d8      	str	r0, [r3, #44]	; 0x2c
 800225e:	4770      	bx	lr
 8002260:	40021000 	.word	0x40021000

08002264 <RCC_AHBPeriphClockCmd>:
 8002264:	bf00      	nop
 8002266:	bf00      	nop
 8002268:	4b04      	ldr	r3, [pc, #16]	; (800227c <RCC_AHBPeriphClockCmd+0x18>)
 800226a:	695a      	ldr	r2, [r3, #20]
 800226c:	b109      	cbz	r1, 8002272 <RCC_AHBPeriphClockCmd+0xe>
 800226e:	4310      	orrs	r0, r2
 8002270:	e001      	b.n	8002276 <RCC_AHBPeriphClockCmd+0x12>
 8002272:	ea22 0000 	bic.w	r0, r2, r0
 8002276:	6158      	str	r0, [r3, #20]
 8002278:	4770      	bx	lr
 800227a:	bf00      	nop
 800227c:	40021000 	.word	0x40021000

08002280 <RCC_APB2PeriphClockCmd>:
 8002280:	bf00      	nop
 8002282:	bf00      	nop
 8002284:	4b04      	ldr	r3, [pc, #16]	; (8002298 <RCC_APB2PeriphClockCmd+0x18>)
 8002286:	699a      	ldr	r2, [r3, #24]
 8002288:	b109      	cbz	r1, 800228e <RCC_APB2PeriphClockCmd+0xe>
 800228a:	4310      	orrs	r0, r2
 800228c:	e001      	b.n	8002292 <RCC_APB2PeriphClockCmd+0x12>
 800228e:	ea22 0000 	bic.w	r0, r2, r0
 8002292:	6198      	str	r0, [r3, #24]
 8002294:	4770      	bx	lr
 8002296:	bf00      	nop
 8002298:	40021000 	.word	0x40021000

0800229c <RCC_APB1PeriphClockCmd>:
 800229c:	bf00      	nop
 800229e:	bf00      	nop
 80022a0:	4b04      	ldr	r3, [pc, #16]	; (80022b4 <RCC_APB1PeriphClockCmd+0x18>)
 80022a2:	69da      	ldr	r2, [r3, #28]
 80022a4:	b109      	cbz	r1, 80022aa <RCC_APB1PeriphClockCmd+0xe>
 80022a6:	4310      	orrs	r0, r2
 80022a8:	e001      	b.n	80022ae <RCC_APB1PeriphClockCmd+0x12>
 80022aa:	ea22 0000 	bic.w	r0, r2, r0
 80022ae:	61d8      	str	r0, [r3, #28]
 80022b0:	4770      	bx	lr
 80022b2:	bf00      	nop
 80022b4:	40021000 	.word	0x40021000

080022b8 <ADC_Init>:
 80022b8:	b510      	push	{r4, lr}
 80022ba:	bf00      	nop
 80022bc:	bf00      	nop
 80022be:	bf00      	nop
 80022c0:	bf00      	nop
 80022c2:	bf00      	nop
 80022c4:	bf00      	nop
 80022c6:	bf00      	nop
 80022c8:	bf00      	nop
 80022ca:	bf00      	nop
 80022cc:	4b0c      	ldr	r3, [pc, #48]	; (8002300 <ADC_Init+0x48>)
 80022ce:	68c2      	ldr	r2, [r0, #12]
 80022d0:	4013      	ands	r3, r2
 80022d2:	e891 0014 	ldmia.w	r1, {r2, r4}
 80022d6:	4314      	orrs	r4, r2
 80022d8:	688a      	ldr	r2, [r1, #8]
 80022da:	4314      	orrs	r4, r2
 80022dc:	68ca      	ldr	r2, [r1, #12]
 80022de:	4314      	orrs	r4, r2
 80022e0:	690a      	ldr	r2, [r1, #16]
 80022e2:	4314      	orrs	r4, r2
 80022e4:	694a      	ldr	r2, [r1, #20]
 80022e6:	4314      	orrs	r4, r2
 80022e8:	698a      	ldr	r2, [r1, #24]
 80022ea:	4322      	orrs	r2, r4
 80022ec:	4313      	orrs	r3, r2
 80022ee:	60c3      	str	r3, [r0, #12]
 80022f0:	6b02      	ldr	r2, [r0, #48]	; 0x30
 80022f2:	7f0b      	ldrb	r3, [r1, #28]
 80022f4:	f022 020f 	bic.w	r2, r2, #15
 80022f8:	3b01      	subs	r3, #1
 80022fa:	4313      	orrs	r3, r2
 80022fc:	6303      	str	r3, [r0, #48]	; 0x30
 80022fe:	bd10      	pop	{r4, pc}
 8002300:	fdffc007 	.word	0xfdffc007

08002304 <ADC_Cmd>:
 8002304:	bf00      	nop
 8002306:	bf00      	nop
 8002308:	6883      	ldr	r3, [r0, #8]
 800230a:	b111      	cbz	r1, 8002312 <ADC_Cmd+0xe>
 800230c:	f043 0301 	orr.w	r3, r3, #1
 8002310:	e001      	b.n	8002316 <ADC_Cmd+0x12>
 8002312:	f043 0302 	orr.w	r3, r3, #2
 8002316:	6083      	str	r3, [r0, #8]
 8002318:	4770      	bx	lr

0800231a <ADC_RegularChannelConfig>:
 800231a:	b530      	push	{r4, r5, lr}
 800231c:	bf00      	nop
 800231e:	bf00      	nop
 8002320:	bf00      	nop
 8002322:	2a04      	cmp	r2, #4
 8002324:	d80c      	bhi.n	8002340 <ADC_RegularChannelConfig+0x26>
 8002326:	eb02 0242 	add.w	r2, r2, r2, lsl #1
 800232a:	6b05      	ldr	r5, [r0, #48]	; 0x30
 800232c:	0052      	lsls	r2, r2, #1
 800232e:	241f      	movs	r4, #31
 8002330:	4094      	lsls	r4, r2
 8002332:	ea25 0404 	bic.w	r4, r5, r4
 8002336:	fa01 f202 	lsl.w	r2, r1, r2
 800233a:	4322      	orrs	r2, r4
 800233c:	6302      	str	r2, [r0, #48]	; 0x30
 800233e:	e029      	b.n	8002394 <ADC_RegularChannelConfig+0x7a>
 8002340:	2a09      	cmp	r2, #9
 8002342:	d80c      	bhi.n	800235e <ADC_RegularChannelConfig+0x44>
 8002344:	2406      	movs	r4, #6
 8002346:	3a05      	subs	r2, #5
 8002348:	4362      	muls	r2, r4
 800234a:	6b45      	ldr	r5, [r0, #52]	; 0x34
 800234c:	241f      	movs	r4, #31
 800234e:	4094      	lsls	r4, r2
 8002350:	ea25 0404 	bic.w	r4, r5, r4
 8002354:	fa01 f202 	lsl.w	r2, r1, r2
 8002358:	4322      	orrs	r2, r4
 800235a:	6342      	str	r2, [r0, #52]	; 0x34
 800235c:	e01a      	b.n	8002394 <ADC_RegularChannelConfig+0x7a>
 800235e:	2a0e      	cmp	r2, #14
 8002360:	f04f 0406 	mov.w	r4, #6
 8002364:	d80b      	bhi.n	800237e <ADC_RegularChannelConfig+0x64>
 8002366:	3a0a      	subs	r2, #10
 8002368:	4354      	muls	r4, r2
 800236a:	6b85      	ldr	r5, [r0, #56]	; 0x38
 800236c:	221f      	movs	r2, #31
 800236e:	40a2      	lsls	r2, r4
 8002370:	ea25 0202 	bic.w	r2, r5, r2
 8002374:	fa01 f404 	lsl.w	r4, r1, r4
 8002378:	4314      	orrs	r4, r2
 800237a:	6384      	str	r4, [r0, #56]	; 0x38
 800237c:	e00a      	b.n	8002394 <ADC_RegularChannelConfig+0x7a>
 800237e:	3a0f      	subs	r2, #15
 8002380:	4362      	muls	r2, r4
 8002382:	6bc5      	ldr	r5, [r0, #60]	; 0x3c
 8002384:	241f      	movs	r4, #31
 8002386:	4094      	lsls	r4, r2
 8002388:	ea25 0404 	bic.w	r4, r5, r4
 800238c:	fa01 f202 	lsl.w	r2, r1, r2
 8002390:	4322      	orrs	r2, r4
 8002392:	63c2      	str	r2, [r0, #60]	; 0x3c
 8002394:	2909      	cmp	r1, #9
 8002396:	d90f      	bls.n	80023b8 <ADC_RegularChannelConfig+0x9e>
 8002398:	390a      	subs	r1, #10
 800239a:	6982      	ldr	r2, [r0, #24]
 800239c:	6984      	ldr	r4, [r0, #24]
 800239e:	eb01 0141 	add.w	r1, r1, r1, lsl #1
 80023a2:	2207      	movs	r2, #7
 80023a4:	408a      	lsls	r2, r1
 80023a6:	ea24 0202 	bic.w	r2, r4, r2
 80023aa:	6182      	str	r2, [r0, #24]
 80023ac:	6982      	ldr	r2, [r0, #24]
 80023ae:	fa03 f101 	lsl.w	r1, r3, r1
 80023b2:	4311      	orrs	r1, r2
 80023b4:	6181      	str	r1, [r0, #24]
 80023b6:	bd30      	pop	{r4, r5, pc}
 80023b8:	3901      	subs	r1, #1
 80023ba:	6942      	ldr	r2, [r0, #20]
 80023bc:	6944      	ldr	r4, [r0, #20]
 80023be:	eb01 0141 	add.w	r1, r1, r1, lsl #1
 80023c2:	2238      	movs	r2, #56	; 0x38
 80023c4:	408a      	lsls	r2, r1
 80023c6:	ea24 0202 	bic.w	r2, r4, r2
 80023ca:	6142      	str	r2, [r0, #20]
 80023cc:	6942      	ldr	r2, [r0, #20]
 80023ce:	3103      	adds	r1, #3
 80023d0:	408b      	lsls	r3, r1
 80023d2:	4313      	orrs	r3, r2
 80023d4:	6143      	str	r3, [r0, #20]
 80023d6:	bd30      	pop	{r4, r5, pc}

080023d8 <uart_write>:
 80023d8:	4b03      	ldr	r3, [pc, #12]	; (80023e8 <uart_write+0x10>)
 80023da:	69da      	ldr	r2, [r3, #28]
 80023dc:	0612      	lsls	r2, r2, #24
 80023de:	d401      	bmi.n	80023e4 <uart_write+0xc>
 80023e0:	bf00      	nop
 80023e2:	e7f9      	b.n	80023d8 <uart_write>
 80023e4:	8518      	strh	r0, [r3, #40]	; 0x28
 80023e6:	4770      	bx	lr
 80023e8:	40013800 	.word	0x40013800

080023ec <uart_init>:
 80023ec:	b530      	push	{r4, r5, lr}
 80023ee:	4b2c      	ldr	r3, [pc, #176]	; (80024a0 <uart_init+0xb4>)
 80023f0:	4d2c      	ldr	r5, [pc, #176]	; (80024a4 <uart_init+0xb8>)
 80023f2:	2400      	movs	r4, #0
 80023f4:	601c      	str	r4, [r3, #0]
 80023f6:	4b2c      	ldr	r3, [pc, #176]	; (80024a8 <uart_init+0xbc>)
 80023f8:	b08b      	sub	sp, #44	; 0x2c
 80023fa:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 80023fe:	2101      	movs	r1, #1
 8002400:	601c      	str	r4, [r3, #0]
 8002402:	f7ff ff2f 	bl	8002264 <RCC_AHBPeriphClockCmd>
 8002406:	f44f 4080 	mov.w	r0, #16384	; 0x4000
 800240a:	2101      	movs	r1, #1
 800240c:	f7ff ff38 	bl	8002280 <RCC_APB2PeriphClockCmd>
 8002410:	f44f 63c0 	mov.w	r3, #1536	; 0x600
 8002414:	9302      	str	r3, [sp, #8]
 8002416:	2302      	movs	r3, #2
 8002418:	f88d 300c 	strb.w	r3, [sp, #12]
 800241c:	a902      	add	r1, sp, #8
 800241e:	2303      	movs	r3, #3
 8002420:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8002424:	f88d 300d 	strb.w	r3, [sp, #13]
 8002428:	f88d 400e 	strb.w	r4, [sp, #14]
 800242c:	f88d 400f 	strb.w	r4, [sp, #15]
 8002430:	f7ff fc5e 	bl	8001cf0 <GPIO_Init>
 8002434:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8002438:	2109      	movs	r1, #9
 800243a:	2207      	movs	r2, #7
 800243c:	f7ff fca5 	bl	8001d8a <GPIO_PinAFConfig>
 8002440:	2207      	movs	r2, #7
 8002442:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8002446:	210a      	movs	r1, #10
 8002448:	f7ff fc9f 	bl	8001d8a <GPIO_PinAFConfig>
 800244c:	f44f 33e1 	mov.w	r3, #115200	; 0x1c200
 8002450:	9304      	str	r3, [sp, #16]
 8002452:	4628      	mov	r0, r5
 8002454:	230c      	movs	r3, #12
 8002456:	a904      	add	r1, sp, #16
 8002458:	9308      	str	r3, [sp, #32]
 800245a:	9405      	str	r4, [sp, #20]
 800245c:	9406      	str	r4, [sp, #24]
 800245e:	9407      	str	r4, [sp, #28]
 8002460:	9409      	str	r4, [sp, #36]	; 0x24
 8002462:	f000 f849 	bl	80024f8 <USART_Init>
 8002466:	4628      	mov	r0, r5
 8002468:	2101      	movs	r1, #1
 800246a:	f000 f8a7 	bl	80025bc <USART_Cmd>
 800246e:	2201      	movs	r2, #1
 8002470:	4628      	mov	r0, r5
 8002472:	490e      	ldr	r1, [pc, #56]	; (80024ac <uart_init+0xc0>)
 8002474:	f000 f8b2 	bl	80025dc <USART_ITConfig>
 8002478:	2325      	movs	r3, #37	; 0x25
 800247a:	f88d 4005 	strb.w	r4, [sp, #5]
 800247e:	f88d 4006 	strb.w	r4, [sp, #6]
 8002482:	a801      	add	r0, sp, #4
 8002484:	2401      	movs	r4, #1
 8002486:	f88d 3004 	strb.w	r3, [sp, #4]
 800248a:	f88d 4007 	strb.w	r4, [sp, #7]
 800248e:	f000 f9df 	bl	8002850 <NVIC_Init>
 8002492:	4628      	mov	r0, r5
 8002494:	4621      	mov	r1, r4
 8002496:	f000 f891 	bl	80025bc <USART_Cmd>
 800249a:	b00b      	add	sp, #44	; 0x2c
 800249c:	bd30      	pop	{r4, r5, pc}
 800249e:	bf00      	nop
 80024a0:	20000eac 	.word	0x20000eac
 80024a4:	40013800 	.word	0x40013800
 80024a8:	20000eb0 	.word	0x20000eb0
 80024ac:	00050105 	.word	0x00050105

080024b0 <USART1_IRQHandler>:
 80024b0:	b508      	push	{r3, lr}
 80024b2:	480d      	ldr	r0, [pc, #52]	; (80024e8 <USART1_IRQHandler+0x38>)
 80024b4:	490d      	ldr	r1, [pc, #52]	; (80024ec <USART1_IRQHandler+0x3c>)
 80024b6:	f000 f8aa 	bl	800260e <USART_GetITStatus>
 80024ba:	b178      	cbz	r0, 80024dc <USART1_IRQHandler+0x2c>
 80024bc:	480a      	ldr	r0, [pc, #40]	; (80024e8 <USART1_IRQHandler+0x38>)
 80024be:	f000 f888 	bl	80025d2 <USART_ReceiveData>
 80024c2:	4b0b      	ldr	r3, [pc, #44]	; (80024f0 <USART1_IRQHandler+0x40>)
 80024c4:	490b      	ldr	r1, [pc, #44]	; (80024f4 <USART1_IRQHandler+0x44>)
 80024c6:	681a      	ldr	r2, [r3, #0]
 80024c8:	b2c0      	uxtb	r0, r0
 80024ca:	5488      	strb	r0, [r1, r2]
 80024cc:	681a      	ldr	r2, [r3, #0]
 80024ce:	3201      	adds	r2, #1
 80024d0:	601a      	str	r2, [r3, #0]
 80024d2:	681a      	ldr	r2, [r3, #0]
 80024d4:	2a0f      	cmp	r2, #15
 80024d6:	bf84      	itt	hi
 80024d8:	2200      	movhi	r2, #0
 80024da:	601a      	strhi	r2, [r3, #0]
 80024dc:	4802      	ldr	r0, [pc, #8]	; (80024e8 <USART1_IRQHandler+0x38>)
 80024de:	4903      	ldr	r1, [pc, #12]	; (80024ec <USART1_IRQHandler+0x3c>)
 80024e0:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80024e4:	f000 b8b2 	b.w	800264c <USART_ClearITPendingBit>
 80024e8:	40013800 	.word	0x40013800
 80024ec:	00050105 	.word	0x00050105
 80024f0:	20000eac 	.word	0x20000eac
 80024f4:	20000e9c 	.word	0x20000e9c

080024f8 <USART_Init>:
 80024f8:	b530      	push	{r4, r5, lr}
 80024fa:	4604      	mov	r4, r0
 80024fc:	b099      	sub	sp, #100	; 0x64
 80024fe:	460d      	mov	r5, r1
 8002500:	bf00      	nop
 8002502:	bf00      	nop
 8002504:	bf00      	nop
 8002506:	bf00      	nop
 8002508:	bf00      	nop
 800250a:	bf00      	nop
 800250c:	bf00      	nop
 800250e:	6803      	ldr	r3, [r0, #0]
 8002510:	f023 0301 	bic.w	r3, r3, #1
 8002514:	6003      	str	r3, [r0, #0]
 8002516:	6842      	ldr	r2, [r0, #4]
 8002518:	688b      	ldr	r3, [r1, #8]
 800251a:	68c9      	ldr	r1, [r1, #12]
 800251c:	f422 5240 	bic.w	r2, r2, #12288	; 0x3000
 8002520:	4313      	orrs	r3, r2
 8002522:	6043      	str	r3, [r0, #4]
 8002524:	686a      	ldr	r2, [r5, #4]
 8002526:	6803      	ldr	r3, [r0, #0]
 8002528:	4311      	orrs	r1, r2
 800252a:	692a      	ldr	r2, [r5, #16]
 800252c:	f423 53b0 	bic.w	r3, r3, #5632	; 0x1600
 8002530:	430a      	orrs	r2, r1
 8002532:	f023 030c 	bic.w	r3, r3, #12
 8002536:	4313      	orrs	r3, r2
 8002538:	6003      	str	r3, [r0, #0]
 800253a:	6882      	ldr	r2, [r0, #8]
 800253c:	696b      	ldr	r3, [r5, #20]
 800253e:	f422 7240 	bic.w	r2, r2, #768	; 0x300
 8002542:	4313      	orrs	r3, r2
 8002544:	6083      	str	r3, [r0, #8]
 8002546:	a801      	add	r0, sp, #4
 8002548:	f7ff fcdc 	bl	8001f04 <RCC_GetClocksFreq>
 800254c:	4b17      	ldr	r3, [pc, #92]	; (80025ac <USART_Init+0xb4>)
 800254e:	429c      	cmp	r4, r3
 8002550:	d101      	bne.n	8002556 <USART_Init+0x5e>
 8002552:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8002554:	e00e      	b.n	8002574 <USART_Init+0x7c>
 8002556:	4b16      	ldr	r3, [pc, #88]	; (80025b0 <USART_Init+0xb8>)
 8002558:	429c      	cmp	r4, r3
 800255a:	d101      	bne.n	8002560 <USART_Init+0x68>
 800255c:	9a10      	ldr	r2, [sp, #64]	; 0x40
 800255e:	e009      	b.n	8002574 <USART_Init+0x7c>
 8002560:	4b14      	ldr	r3, [pc, #80]	; (80025b4 <USART_Init+0xbc>)
 8002562:	429c      	cmp	r4, r3
 8002564:	d101      	bne.n	800256a <USART_Init+0x72>
 8002566:	9a11      	ldr	r2, [sp, #68]	; 0x44
 8002568:	e004      	b.n	8002574 <USART_Init+0x7c>
 800256a:	4b13      	ldr	r3, [pc, #76]	; (80025b8 <USART_Init+0xc0>)
 800256c:	429c      	cmp	r4, r3
 800256e:	bf0c      	ite	eq
 8002570:	9a12      	ldreq	r2, [sp, #72]	; 0x48
 8002572:	9a13      	ldrne	r2, [sp, #76]	; 0x4c
 8002574:	6823      	ldr	r3, [r4, #0]
 8002576:	6829      	ldr	r1, [r5, #0]
 8002578:	f413 4f00 	tst.w	r3, #32768	; 0x8000
 800257c:	bf18      	it	ne
 800257e:	0052      	lslne	r2, r2, #1
 8002580:	fbb2 f3f1 	udiv	r3, r2, r1
 8002584:	fb01 2213 	mls	r2, r1, r3, r2
 8002588:	ebb2 0f51 	cmp.w	r2, r1, lsr #1
 800258c:	6822      	ldr	r2, [r4, #0]
 800258e:	bf28      	it	cs
 8002590:	3301      	addcs	r3, #1
 8002592:	0412      	lsls	r2, r2, #16
 8002594:	d506      	bpl.n	80025a4 <USART_Init+0xac>
 8002596:	f64f 72f0 	movw	r2, #65520	; 0xfff0
 800259a:	f3c3 0142 	ubfx	r1, r3, #1, #3
 800259e:	401a      	ands	r2, r3
 80025a0:	ea41 0302 	orr.w	r3, r1, r2
 80025a4:	b29b      	uxth	r3, r3
 80025a6:	81a3      	strh	r3, [r4, #12]
 80025a8:	b019      	add	sp, #100	; 0x64
 80025aa:	bd30      	pop	{r4, r5, pc}
 80025ac:	40013800 	.word	0x40013800
 80025b0:	40004400 	.word	0x40004400
 80025b4:	40004800 	.word	0x40004800
 80025b8:	40004c00 	.word	0x40004c00

080025bc <USART_Cmd>:
 80025bc:	bf00      	nop
 80025be:	bf00      	nop
 80025c0:	6803      	ldr	r3, [r0, #0]
 80025c2:	b111      	cbz	r1, 80025ca <USART_Cmd+0xe>
 80025c4:	f043 0301 	orr.w	r3, r3, #1
 80025c8:	e001      	b.n	80025ce <USART_Cmd+0x12>
 80025ca:	f023 0301 	bic.w	r3, r3, #1
 80025ce:	6003      	str	r3, [r0, #0]
 80025d0:	4770      	bx	lr

080025d2 <USART_ReceiveData>:
 80025d2:	bf00      	nop
 80025d4:	8c80      	ldrh	r0, [r0, #36]	; 0x24
 80025d6:	f3c0 0008 	ubfx	r0, r0, #0, #9
 80025da:	4770      	bx	lr

080025dc <USART_ITConfig>:
 80025dc:	b510      	push	{r4, lr}
 80025de:	bf00      	nop
 80025e0:	bf00      	nop
 80025e2:	bf00      	nop
 80025e4:	f3c1 2307 	ubfx	r3, r1, #8, #8
 80025e8:	2401      	movs	r4, #1
 80025ea:	b2c9      	uxtb	r1, r1
 80025ec:	2b02      	cmp	r3, #2
 80025ee:	fa04 f101 	lsl.w	r1, r4, r1
 80025f2:	d101      	bne.n	80025f8 <USART_ITConfig+0x1c>
 80025f4:	3004      	adds	r0, #4
 80025f6:	e002      	b.n	80025fe <USART_ITConfig+0x22>
 80025f8:	2b03      	cmp	r3, #3
 80025fa:	bf08      	it	eq
 80025fc:	3008      	addeq	r0, #8
 80025fe:	6803      	ldr	r3, [r0, #0]
 8002600:	b10a      	cbz	r2, 8002606 <USART_ITConfig+0x2a>
 8002602:	4319      	orrs	r1, r3
 8002604:	e001      	b.n	800260a <USART_ITConfig+0x2e>
 8002606:	ea23 0101 	bic.w	r1, r3, r1
 800260a:	6001      	str	r1, [r0, #0]
 800260c:	bd10      	pop	{r4, pc}

0800260e <USART_GetITStatus>:
 800260e:	b510      	push	{r4, lr}
 8002610:	bf00      	nop
 8002612:	bf00      	nop
 8002614:	2401      	movs	r4, #1
 8002616:	f3c1 2207 	ubfx	r2, r1, #8, #8
 800261a:	b2cb      	uxtb	r3, r1
 800261c:	42a2      	cmp	r2, r4
 800261e:	fa04 f303 	lsl.w	r3, r4, r3
 8002622:	d101      	bne.n	8002628 <USART_GetITStatus+0x1a>
 8002624:	6802      	ldr	r2, [r0, #0]
 8002626:	e003      	b.n	8002630 <USART_GetITStatus+0x22>
 8002628:	2a02      	cmp	r2, #2
 800262a:	bf0c      	ite	eq
 800262c:	6842      	ldreq	r2, [r0, #4]
 800262e:	6882      	ldrne	r2, [r0, #8]
 8002630:	4013      	ands	r3, r2
 8002632:	69c2      	ldr	r2, [r0, #28]
 8002634:	b143      	cbz	r3, 8002648 <USART_GetITStatus+0x3a>
 8002636:	2301      	movs	r3, #1
 8002638:	0c09      	lsrs	r1, r1, #16
 800263a:	fa03 f101 	lsl.w	r1, r3, r1
 800263e:	4211      	tst	r1, r2
 8002640:	bf0c      	ite	eq
 8002642:	2000      	moveq	r0, #0
 8002644:	2001      	movne	r0, #1
 8002646:	bd10      	pop	{r4, pc}
 8002648:	4618      	mov	r0, r3
 800264a:	bd10      	pop	{r4, pc}

0800264c <USART_ClearITPendingBit>:
 800264c:	bf00      	nop
 800264e:	bf00      	nop
 8002650:	2301      	movs	r3, #1
 8002652:	0c09      	lsrs	r1, r1, #16
 8002654:	fa03 f101 	lsl.w	r1, r3, r1
 8002658:	6201      	str	r1, [r0, #32]
 800265a:	4770      	bx	lr

0800265c <drv8834_run>:
 800265c:	1e02      	subs	r2, r0, #0
 800265e:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8002662:	dd07      	ble.n	8002674 <drv8834_run+0x18>
 8002664:	8d18      	ldrh	r0, [r3, #40]	; 0x28
 8002666:	ea6f 4040 	mvn.w	r0, r0, lsl #17
 800266a:	ea6f 4050 	mvn.w	r0, r0, lsr #17
 800266e:	b280      	uxth	r0, r0
 8002670:	8518      	strh	r0, [r3, #40]	; 0x28
 8002672:	e005      	b.n	8002680 <drv8834_run+0x24>
 8002674:	6998      	ldr	r0, [r3, #24]
 8002676:	4252      	negs	r2, r2
 8002678:	f440 4000 	orr.w	r0, r0, #32768	; 0x8000
 800267c:	6198      	str	r0, [r3, #24]
 800267e:	b212      	sxth	r2, r2
 8002680:	2900      	cmp	r1, #0
 8002682:	4b0c      	ldr	r3, [pc, #48]	; (80026b4 <drv8834_run+0x58>)
 8002684:	dd05      	ble.n	8002692 <drv8834_run+0x36>
 8002686:	8d18      	ldrh	r0, [r3, #40]	; 0x28
 8002688:	b280      	uxth	r0, r0
 800268a:	f040 0020 	orr.w	r0, r0, #32
 800268e:	8518      	strh	r0, [r3, #40]	; 0x28
 8002690:	e005      	b.n	800269e <drv8834_run+0x42>
 8002692:	6998      	ldr	r0, [r3, #24]
 8002694:	4249      	negs	r1, r1
 8002696:	f040 0020 	orr.w	r0, r0, #32
 800269a:	6198      	str	r0, [r3, #24]
 800269c:	b209      	sxth	r1, r1
 800269e:	2964      	cmp	r1, #100	; 0x64
 80026a0:	bfb4      	ite	lt
 80026a2:	4608      	movlt	r0, r1
 80026a4:	2064      	movge	r0, #100	; 0x64
 80026a6:	2a64      	cmp	r2, #100	; 0x64
 80026a8:	bfb4      	ite	lt
 80026aa:	4611      	movlt	r1, r2
 80026ac:	2164      	movge	r1, #100	; 0x64
 80026ae:	f000 b843 	b.w	8002738 <pwm_set>
 80026b2:	bf00      	nop
 80026b4:	48000400 	.word	0x48000400

080026b8 <drv8834_init>:
 80026b8:	e92d 41f3 	stmdb	sp!, {r0, r1, r4, r5, r6, r7, r8, lr}
 80026bc:	4f1d      	ldr	r7, [pc, #116]	; (8002734 <drv8834_init+0x7c>)
 80026be:	2400      	movs	r4, #0
 80026c0:	2601      	movs	r6, #1
 80026c2:	2503      	movs	r5, #3
 80026c4:	f04f 0810 	mov.w	r8, #16
 80026c8:	4638      	mov	r0, r7
 80026ca:	4669      	mov	r1, sp
 80026cc:	f8cd 8000 	str.w	r8, [sp]
 80026d0:	f88d 6004 	strb.w	r6, [sp, #4]
 80026d4:	f88d 4006 	strb.w	r4, [sp, #6]
 80026d8:	f88d 5005 	strb.w	r5, [sp, #5]
 80026dc:	f88d 4007 	strb.w	r4, [sp, #7]
 80026e0:	f7ff fb06 	bl	8001cf0 <GPIO_Init>
 80026e4:	f8a7 8028 	strh.w	r8, [r7, #40]	; 0x28
 80026e8:	2320      	movs	r3, #32
 80026ea:	4638      	mov	r0, r7
 80026ec:	4669      	mov	r1, sp
 80026ee:	9300      	str	r3, [sp, #0]
 80026f0:	f88d 6004 	strb.w	r6, [sp, #4]
 80026f4:	f88d 4006 	strb.w	r4, [sp, #6]
 80026f8:	f88d 5005 	strb.w	r5, [sp, #5]
 80026fc:	f88d 4007 	strb.w	r4, [sp, #7]
 8002700:	f7ff faf6 	bl	8001cf0 <GPIO_Init>
 8002704:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8002708:	4669      	mov	r1, sp
 800270a:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 800270e:	9300      	str	r3, [sp, #0]
 8002710:	f88d 6004 	strb.w	r6, [sp, #4]
 8002714:	f88d 4006 	strb.w	r4, [sp, #6]
 8002718:	f88d 5005 	strb.w	r5, [sp, #5]
 800271c:	f88d 4007 	strb.w	r4, [sp, #7]
 8002720:	f7ff fae6 	bl	8001cf0 <GPIO_Init>
 8002724:	4620      	mov	r0, r4
 8002726:	4621      	mov	r1, r4
 8002728:	f7ff ff98 	bl	800265c <drv8834_run>
 800272c:	b002      	add	sp, #8
 800272e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8002732:	bf00      	nop
 8002734:	48000400 	.word	0x48000400

08002738 <pwm_set>:
 8002738:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800273c:	b086      	sub	sp, #24
 800273e:	2370      	movs	r3, #112	; 0x70
 8002740:	9301      	str	r3, [sp, #4]
 8002742:	2301      	movs	r3, #1
 8002744:	f8ad 3008 	strh.w	r3, [sp, #8]
 8002748:	2304      	movs	r3, #4
 800274a:	f8ad 300a 	strh.w	r3, [sp, #10]
 800274e:	4f17      	ldr	r7, [pc, #92]	; (80027ac <pwm_set+0x74>)
 8002750:	4c17      	ldr	r4, [pc, #92]	; (80027b0 <pwm_set+0x78>)
 8002752:	2302      	movs	r3, #2
 8002754:	f8ad 3010 	strh.w	r3, [sp, #16]
 8002758:	2300      	movs	r3, #0
 800275a:	f8ad 3012 	strh.w	r3, [sp, #18]
 800275e:	f8ad 3016 	strh.w	r3, [sp, #22]
 8002762:	683b      	ldr	r3, [r7, #0]
 8002764:	f242 7610 	movw	r6, #10000	; 0x2710
 8002768:	fbb3 f3f6 	udiv	r3, r3, r6
 800276c:	3b02      	subs	r3, #2
 800276e:	4358      	muls	r0, r3
 8002770:	2564      	movs	r5, #100	; 0x64
 8002772:	fbb0 f3f5 	udiv	r3, r0, r5
 8002776:	f44f 7280 	mov.w	r2, #256	; 0x100
 800277a:	4620      	mov	r0, r4
 800277c:	4688      	mov	r8, r1
 800277e:	a901      	add	r1, sp, #4
 8002780:	f8ad 2014 	strh.w	r2, [sp, #20]
 8002784:	9303      	str	r3, [sp, #12]
 8002786:	f000 f8f9 	bl	800297c <TIM_OC1Init>
 800278a:	683b      	ldr	r3, [r7, #0]
 800278c:	fbb3 f6f6 	udiv	r6, r3, r6
 8002790:	3e02      	subs	r6, #2
 8002792:	fb06 f808 	mul.w	r8, r6, r8
 8002796:	fbb8 f5f5 	udiv	r5, r8, r5
 800279a:	4620      	mov	r0, r4
 800279c:	a901      	add	r1, sp, #4
 800279e:	9503      	str	r5, [sp, #12]
 80027a0:	f000 f932 	bl	8002a08 <TIM_OC2Init>
 80027a4:	b006      	add	sp, #24
 80027a6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80027aa:	bf00      	nop
 80027ac:	20000120 	.word	0x20000120
 80027b0:	40012c00 	.word	0x40012c00

080027b4 <pwm_init>:
 80027b4:	b530      	push	{r4, r5, lr}
 80027b6:	f44f 6000 	mov.w	r0, #2048	; 0x800
 80027ba:	b087      	sub	sp, #28
 80027bc:	2101      	movs	r1, #1
 80027be:	f7ff fd5f 	bl	8002280 <RCC_APB2PeriphClockCmd>
 80027c2:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 80027c6:	2101      	movs	r1, #1
 80027c8:	f7ff fd4c 	bl	8002264 <RCC_AHBPeriphClockCmd>
 80027cc:	4c1d      	ldr	r4, [pc, #116]	; (8002844 <pwm_init+0x90>)
 80027ce:	4d1e      	ldr	r5, [pc, #120]	; (8002848 <pwm_init+0x94>)
 80027d0:	f44f 43c0 	mov.w	r3, #24576	; 0x6000
 80027d4:	9301      	str	r3, [sp, #4]
 80027d6:	2302      	movs	r3, #2
 80027d8:	f88d 3008 	strb.w	r3, [sp, #8]
 80027dc:	4620      	mov	r0, r4
 80027de:	2303      	movs	r3, #3
 80027e0:	a901      	add	r1, sp, #4
 80027e2:	f88d 3009 	strb.w	r3, [sp, #9]
 80027e6:	f7ff fa83 	bl	8001cf0 <GPIO_Init>
 80027ea:	4620      	mov	r0, r4
 80027ec:	210d      	movs	r1, #13
 80027ee:	2206      	movs	r2, #6
 80027f0:	f7ff facb 	bl	8001d8a <GPIO_PinAFConfig>
 80027f4:	4620      	mov	r0, r4
 80027f6:	210e      	movs	r1, #14
 80027f8:	2206      	movs	r2, #6
 80027fa:	f7ff fac6 	bl	8001d8a <GPIO_PinAFConfig>
 80027fe:	4b13      	ldr	r3, [pc, #76]	; (800284c <pwm_init+0x98>)
 8002800:	681a      	ldr	r2, [r3, #0]
 8002802:	f242 7310 	movw	r3, #10000	; 0x2710
 8002806:	fbb2 f3f3 	udiv	r3, r2, r3
 800280a:	2400      	movs	r4, #0
 800280c:	3b01      	subs	r3, #1
 800280e:	4628      	mov	r0, r5
 8002810:	a903      	add	r1, sp, #12
 8002812:	9304      	str	r3, [sp, #16]
 8002814:	f8ad 400c 	strh.w	r4, [sp, #12]
 8002818:	f8ad 400e 	strh.w	r4, [sp, #14]
 800281c:	f8ad 4014 	strh.w	r4, [sp, #20]
 8002820:	f8ad 4016 	strh.w	r4, [sp, #22]
 8002824:	f000 f84c 	bl	80028c0 <TIM_TimeBaseInit>
 8002828:	4620      	mov	r0, r4
 800282a:	4621      	mov	r1, r4
 800282c:	f7ff ff84 	bl	8002738 <pwm_set>
 8002830:	4628      	mov	r0, r5
 8002832:	2101      	movs	r1, #1
 8002834:	f000 f894 	bl	8002960 <TIM_Cmd>
 8002838:	4628      	mov	r0, r5
 800283a:	2101      	movs	r1, #1
 800283c:	f000 f922 	bl	8002a84 <TIM_CtrlPWMOutputs>
 8002840:	b007      	add	sp, #28
 8002842:	bd30      	pop	{r4, r5, pc}
 8002844:	48000400 	.word	0x48000400
 8002848:	40012c00 	.word	0x40012c00
 800284c:	20000120 	.word	0x20000120

08002850 <NVIC_Init>:
 8002850:	b510      	push	{r4, lr}
 8002852:	bf00      	nop
 8002854:	bf00      	nop
 8002856:	bf00      	nop
 8002858:	78c2      	ldrb	r2, [r0, #3]
 800285a:	7803      	ldrb	r3, [r0, #0]
 800285c:	b30a      	cbz	r2, 80028a2 <NVIC_Init+0x52>
 800285e:	4a16      	ldr	r2, [pc, #88]	; (80028b8 <NVIC_Init+0x68>)
 8002860:	7844      	ldrb	r4, [r0, #1]
 8002862:	68d2      	ldr	r2, [r2, #12]
 8002864:	43d2      	mvns	r2, r2
 8002866:	f3c2 2202 	ubfx	r2, r2, #8, #3
 800286a:	f1c2 0104 	rsb	r1, r2, #4
 800286e:	b2c9      	uxtb	r1, r1
 8002870:	fa04 f101 	lsl.w	r1, r4, r1
 8002874:	240f      	movs	r4, #15
 8002876:	fa44 f202 	asr.w	r2, r4, r2
 800287a:	7884      	ldrb	r4, [r0, #2]
 800287c:	b2c9      	uxtb	r1, r1
 800287e:	4022      	ands	r2, r4
 8002880:	430a      	orrs	r2, r1
 8002882:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
 8002886:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
 800288a:	0112      	lsls	r2, r2, #4
 800288c:	b2d2      	uxtb	r2, r2
 800288e:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
 8002892:	7803      	ldrb	r3, [r0, #0]
 8002894:	2201      	movs	r2, #1
 8002896:	0959      	lsrs	r1, r3, #5
 8002898:	f003 031f 	and.w	r3, r3, #31
 800289c:	fa02 f303 	lsl.w	r3, r2, r3
 80028a0:	e006      	b.n	80028b0 <NVIC_Init+0x60>
 80028a2:	0959      	lsrs	r1, r3, #5
 80028a4:	2201      	movs	r2, #1
 80028a6:	f003 031f 	and.w	r3, r3, #31
 80028aa:	fa02 f303 	lsl.w	r3, r2, r3
 80028ae:	3120      	adds	r1, #32
 80028b0:	4a02      	ldr	r2, [pc, #8]	; (80028bc <NVIC_Init+0x6c>)
 80028b2:	f842 3021 	str.w	r3, [r2, r1, lsl #2]
 80028b6:	bd10      	pop	{r4, pc}
 80028b8:	e000ed00 	.word	0xe000ed00
 80028bc:	e000e100 	.word	0xe000e100

080028c0 <TIM_TimeBaseInit>:
 80028c0:	bf00      	nop
 80028c2:	bf00      	nop
 80028c4:	bf00      	nop
 80028c6:	4a24      	ldr	r2, [pc, #144]	; (8002958 <TIM_TimeBaseInit+0x98>)
 80028c8:	8803      	ldrh	r3, [r0, #0]
 80028ca:	4290      	cmp	r0, r2
 80028cc:	b29b      	uxth	r3, r3
 80028ce:	d012      	beq.n	80028f6 <TIM_TimeBaseInit+0x36>
 80028d0:	f502 6200 	add.w	r2, r2, #2048	; 0x800
 80028d4:	4290      	cmp	r0, r2
 80028d6:	d00e      	beq.n	80028f6 <TIM_TimeBaseInit+0x36>
 80028d8:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 80028dc:	d00b      	beq.n	80028f6 <TIM_TimeBaseInit+0x36>
 80028de:	f5a2 3298 	sub.w	r2, r2, #77824	; 0x13000
 80028e2:	4290      	cmp	r0, r2
 80028e4:	d007      	beq.n	80028f6 <TIM_TimeBaseInit+0x36>
 80028e6:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 80028ea:	4290      	cmp	r0, r2
 80028ec:	d003      	beq.n	80028f6 <TIM_TimeBaseInit+0x36>
 80028ee:	f502 32a4 	add.w	r2, r2, #83968	; 0x14800
 80028f2:	4290      	cmp	r0, r2
 80028f4:	d103      	bne.n	80028fe <TIM_TimeBaseInit+0x3e>
 80028f6:	884a      	ldrh	r2, [r1, #2]
 80028f8:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 80028fc:	4313      	orrs	r3, r2
 80028fe:	4a17      	ldr	r2, [pc, #92]	; (800295c <TIM_TimeBaseInit+0x9c>)
 8002900:	4290      	cmp	r0, r2
 8002902:	d008      	beq.n	8002916 <TIM_TimeBaseInit+0x56>
 8002904:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8002908:	4290      	cmp	r0, r2
 800290a:	d004      	beq.n	8002916 <TIM_TimeBaseInit+0x56>
 800290c:	f423 7340 	bic.w	r3, r3, #768	; 0x300
 8002910:	890a      	ldrh	r2, [r1, #8]
 8002912:	b29b      	uxth	r3, r3
 8002914:	4313      	orrs	r3, r2
 8002916:	8003      	strh	r3, [r0, #0]
 8002918:	684b      	ldr	r3, [r1, #4]
 800291a:	62c3      	str	r3, [r0, #44]	; 0x2c
 800291c:	880b      	ldrh	r3, [r1, #0]
 800291e:	8503      	strh	r3, [r0, #40]	; 0x28
 8002920:	4b0d      	ldr	r3, [pc, #52]	; (8002958 <TIM_TimeBaseInit+0x98>)
 8002922:	4298      	cmp	r0, r3
 8002924:	d013      	beq.n	800294e <TIM_TimeBaseInit+0x8e>
 8002926:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 800292a:	4298      	cmp	r0, r3
 800292c:	d00f      	beq.n	800294e <TIM_TimeBaseInit+0x8e>
 800292e:	f503 6340 	add.w	r3, r3, #3072	; 0xc00
 8002932:	4298      	cmp	r0, r3
 8002934:	d00b      	beq.n	800294e <TIM_TimeBaseInit+0x8e>
 8002936:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 800293a:	4298      	cmp	r0, r3
 800293c:	d007      	beq.n	800294e <TIM_TimeBaseInit+0x8e>
 800293e:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 8002942:	4298      	cmp	r0, r3
 8002944:	d003      	beq.n	800294e <TIM_TimeBaseInit+0x8e>
 8002946:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 800294a:	4298      	cmp	r0, r3
 800294c:	d101      	bne.n	8002952 <TIM_TimeBaseInit+0x92>
 800294e:	894b      	ldrh	r3, [r1, #10]
 8002950:	8603      	strh	r3, [r0, #48]	; 0x30
 8002952:	2301      	movs	r3, #1
 8002954:	6143      	str	r3, [r0, #20]
 8002956:	4770      	bx	lr
 8002958:	40012c00 	.word	0x40012c00
 800295c:	40001000 	.word	0x40001000

08002960 <TIM_Cmd>:
 8002960:	bf00      	nop
 8002962:	bf00      	nop
 8002964:	8803      	ldrh	r3, [r0, #0]
 8002966:	b119      	cbz	r1, 8002970 <TIM_Cmd+0x10>
 8002968:	b29b      	uxth	r3, r3
 800296a:	f043 0301 	orr.w	r3, r3, #1
 800296e:	e003      	b.n	8002978 <TIM_Cmd+0x18>
 8002970:	f023 0301 	bic.w	r3, r3, #1
 8002974:	041b      	lsls	r3, r3, #16
 8002976:	0c1b      	lsrs	r3, r3, #16
 8002978:	8003      	strh	r3, [r0, #0]
 800297a:	4770      	bx	lr

0800297c <TIM_OC1Init>:
 800297c:	b530      	push	{r4, r5, lr}
 800297e:	bf00      	nop
 8002980:	bf00      	nop
 8002982:	bf00      	nop
 8002984:	bf00      	nop
 8002986:	6a03      	ldr	r3, [r0, #32]
 8002988:	680d      	ldr	r5, [r1, #0]
 800298a:	f023 0301 	bic.w	r3, r3, #1
 800298e:	6203      	str	r3, [r0, #32]
 8002990:	6a03      	ldr	r3, [r0, #32]
 8002992:	6842      	ldr	r2, [r0, #4]
 8002994:	6984      	ldr	r4, [r0, #24]
 8002996:	f424 3480 	bic.w	r4, r4, #65536	; 0x10000
 800299a:	f024 0473 	bic.w	r4, r4, #115	; 0x73
 800299e:	432c      	orrs	r4, r5
 80029a0:	898d      	ldrh	r5, [r1, #12]
 80029a2:	f023 0302 	bic.w	r3, r3, #2
 80029a6:	432b      	orrs	r3, r5
 80029a8:	888d      	ldrh	r5, [r1, #4]
 80029aa:	432b      	orrs	r3, r5
 80029ac:	4d15      	ldr	r5, [pc, #84]	; (8002a04 <TIM_OC1Init+0x88>)
 80029ae:	42a8      	cmp	r0, r5
 80029b0:	d00f      	beq.n	80029d2 <TIM_OC1Init+0x56>
 80029b2:	f505 6500 	add.w	r5, r5, #2048	; 0x800
 80029b6:	42a8      	cmp	r0, r5
 80029b8:	d00b      	beq.n	80029d2 <TIM_OC1Init+0x56>
 80029ba:	f505 6540 	add.w	r5, r5, #3072	; 0xc00
 80029be:	42a8      	cmp	r0, r5
 80029c0:	d007      	beq.n	80029d2 <TIM_OC1Init+0x56>
 80029c2:	f505 6580 	add.w	r5, r5, #1024	; 0x400
 80029c6:	42a8      	cmp	r0, r5
 80029c8:	d003      	beq.n	80029d2 <TIM_OC1Init+0x56>
 80029ca:	f505 6580 	add.w	r5, r5, #1024	; 0x400
 80029ce:	42a8      	cmp	r0, r5
 80029d0:	d111      	bne.n	80029f6 <TIM_OC1Init+0x7a>
 80029d2:	bf00      	nop
 80029d4:	bf00      	nop
 80029d6:	bf00      	nop
 80029d8:	bf00      	nop
 80029da:	89cd      	ldrh	r5, [r1, #14]
 80029dc:	f023 0308 	bic.w	r3, r3, #8
 80029e0:	432b      	orrs	r3, r5
 80029e2:	88cd      	ldrh	r5, [r1, #6]
 80029e4:	f023 0304 	bic.w	r3, r3, #4
 80029e8:	432b      	orrs	r3, r5
 80029ea:	8a0d      	ldrh	r5, [r1, #16]
 80029ec:	f422 7240 	bic.w	r2, r2, #768	; 0x300
 80029f0:	432a      	orrs	r2, r5
 80029f2:	8a4d      	ldrh	r5, [r1, #18]
 80029f4:	432a      	orrs	r2, r5
 80029f6:	6042      	str	r2, [r0, #4]
 80029f8:	688a      	ldr	r2, [r1, #8]
 80029fa:	6184      	str	r4, [r0, #24]
 80029fc:	6342      	str	r2, [r0, #52]	; 0x34
 80029fe:	6203      	str	r3, [r0, #32]
 8002a00:	bd30      	pop	{r4, r5, pc}
 8002a02:	bf00      	nop
 8002a04:	40012c00 	.word	0x40012c00

08002a08 <TIM_OC2Init>:
 8002a08:	b570      	push	{r4, r5, r6, lr}
 8002a0a:	bf00      	nop
 8002a0c:	bf00      	nop
 8002a0e:	bf00      	nop
 8002a10:	bf00      	nop
 8002a12:	6a03      	ldr	r3, [r0, #32]
 8002a14:	680d      	ldr	r5, [r1, #0]
 8002a16:	898e      	ldrh	r6, [r1, #12]
 8002a18:	f023 0310 	bic.w	r3, r3, #16
 8002a1c:	6203      	str	r3, [r0, #32]
 8002a1e:	6a03      	ldr	r3, [r0, #32]
 8002a20:	6842      	ldr	r2, [r0, #4]
 8002a22:	6984      	ldr	r4, [r0, #24]
 8002a24:	f024 7480 	bic.w	r4, r4, #16777216	; 0x1000000
 8002a28:	f424 44e6 	bic.w	r4, r4, #29440	; 0x7300
 8002a2c:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
 8002a30:	f023 0520 	bic.w	r5, r3, #32
 8002a34:	888b      	ldrh	r3, [r1, #4]
 8002a36:	4333      	orrs	r3, r6
 8002a38:	ea45 1303 	orr.w	r3, r5, r3, lsl #4
 8002a3c:	4d10      	ldr	r5, [pc, #64]	; (8002a80 <TIM_OC2Init+0x78>)
 8002a3e:	42a8      	cmp	r0, r5
 8002a40:	d003      	beq.n	8002a4a <TIM_OC2Init+0x42>
 8002a42:	f505 6500 	add.w	r5, r5, #2048	; 0x800
 8002a46:	42a8      	cmp	r0, r5
 8002a48:	d114      	bne.n	8002a74 <TIM_OC2Init+0x6c>
 8002a4a:	bf00      	nop
 8002a4c:	bf00      	nop
 8002a4e:	bf00      	nop
 8002a50:	bf00      	nop
 8002a52:	89cd      	ldrh	r5, [r1, #14]
 8002a54:	8a0e      	ldrh	r6, [r1, #16]
 8002a56:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8002a5a:	ea43 1305 	orr.w	r3, r3, r5, lsl #4
 8002a5e:	88cd      	ldrh	r5, [r1, #6]
 8002a60:	f023 0340 	bic.w	r3, r3, #64	; 0x40
 8002a64:	ea43 1305 	orr.w	r3, r3, r5, lsl #4
 8002a68:	8a4d      	ldrh	r5, [r1, #18]
 8002a6a:	f422 6240 	bic.w	r2, r2, #3072	; 0xc00
 8002a6e:	4335      	orrs	r5, r6
 8002a70:	ea42 0285 	orr.w	r2, r2, r5, lsl #2
 8002a74:	6042      	str	r2, [r0, #4]
 8002a76:	688a      	ldr	r2, [r1, #8]
 8002a78:	6184      	str	r4, [r0, #24]
 8002a7a:	6382      	str	r2, [r0, #56]	; 0x38
 8002a7c:	6203      	str	r3, [r0, #32]
 8002a7e:	bd70      	pop	{r4, r5, r6, pc}
 8002a80:	40012c00 	.word	0x40012c00

08002a84 <TIM_CtrlPWMOutputs>:
 8002a84:	bf00      	nop
 8002a86:	bf00      	nop
 8002a88:	6c43      	ldr	r3, [r0, #68]	; 0x44
 8002a8a:	b111      	cbz	r1, 8002a92 <TIM_CtrlPWMOutputs+0xe>
 8002a8c:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
 8002a90:	e001      	b.n	8002a96 <TIM_CtrlPWMOutputs+0x12>
 8002a92:	f3c3 030e 	ubfx	r3, r3, #0, #15
 8002a96:	6443      	str	r3, [r0, #68]	; 0x44
 8002a98:	4770      	bx	lr

08002a9a <TIM_ClearITPendingBit>:
 8002a9a:	bf00      	nop
 8002a9c:	43c9      	mvns	r1, r1
 8002a9e:	b289      	uxth	r1, r1
 8002aa0:	6101      	str	r1, [r0, #16]
 8002aa2:	4770      	bx	lr

08002aa4 <timer_init>:
 8002aa4:	b530      	push	{r4, r5, lr}
 8002aa6:	2300      	movs	r3, #0
 8002aa8:	b085      	sub	sp, #20
 8002aaa:	491f      	ldr	r1, [pc, #124]	; (8002b28 <timer_init+0x84>)
 8002aac:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8002ab0:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 8002ab4:	491d      	ldr	r1, [pc, #116]	; (8002b2c <timer_init+0x88>)
 8002ab6:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 8002aba:	4a1d      	ldr	r2, [pc, #116]	; (8002b30 <timer_init+0x8c>)
 8002abc:	2400      	movs	r4, #0
 8002abe:	f822 4013 	strh.w	r4, [r2, r3, lsl #1]
 8002ac2:	3301      	adds	r3, #1
 8002ac4:	2b04      	cmp	r3, #4
 8002ac6:	4625      	mov	r5, r4
 8002ac8:	d1ef      	bne.n	8002aaa <timer_init+0x6>
 8002aca:	4b1a      	ldr	r3, [pc, #104]	; (8002b34 <timer_init+0x90>)
 8002acc:	2002      	movs	r0, #2
 8002ace:	2101      	movs	r1, #1
 8002ad0:	601c      	str	r4, [r3, #0]
 8002ad2:	f7ff fbe3 	bl	800229c <RCC_APB1PeriphClockCmd>
 8002ad6:	f8ad 4006 	strh.w	r4, [sp, #6]
 8002ada:	f8ad 400c 	strh.w	r4, [sp, #12]
 8002ade:	f8ad 400e 	strh.w	r4, [sp, #14]
 8002ae2:	4c15      	ldr	r4, [pc, #84]	; (8002b38 <timer_init+0x94>)
 8002ae4:	f44f 738c 	mov.w	r3, #280	; 0x118
 8002ae8:	f8ad 3004 	strh.w	r3, [sp, #4]
 8002aec:	4620      	mov	r0, r4
 8002aee:	2331      	movs	r3, #49	; 0x31
 8002af0:	a901      	add	r1, sp, #4
 8002af2:	9302      	str	r3, [sp, #8]
 8002af4:	f7ff fee4 	bl	80028c0 <TIM_TimeBaseInit>
 8002af8:	4620      	mov	r0, r4
 8002afa:	2101      	movs	r1, #1
 8002afc:	f7ff ff30 	bl	8002960 <TIM_Cmd>
 8002b00:	68e3      	ldr	r3, [r4, #12]
 8002b02:	f043 0301 	orr.w	r3, r3, #1
 8002b06:	60e3      	str	r3, [r4, #12]
 8002b08:	231d      	movs	r3, #29
 8002b0a:	f88d 3000 	strb.w	r3, [sp]
 8002b0e:	4668      	mov	r0, sp
 8002b10:	2301      	movs	r3, #1
 8002b12:	f88d 5001 	strb.w	r5, [sp, #1]
 8002b16:	f88d 3002 	strb.w	r3, [sp, #2]
 8002b1a:	f88d 3003 	strb.w	r3, [sp, #3]
 8002b1e:	f7ff fe97 	bl	8002850 <NVIC_Init>
 8002b22:	b005      	add	sp, #20
 8002b24:	bd30      	pop	{r4, r5, pc}
 8002b26:	bf00      	nop
 8002b28:	20000ec8 	.word	0x20000ec8
 8002b2c:	20000ebc 	.word	0x20000ebc
 8002b30:	20000eb4 	.word	0x20000eb4
 8002b34:	20000ec4 	.word	0x20000ec4
 8002b38:	40000400 	.word	0x40000400

08002b3c <TIM3_IRQHandler>:
 8002b3c:	2300      	movs	r3, #0
 8002b3e:	4a0f      	ldr	r2, [pc, #60]	; (8002b7c <TIM3_IRQHandler+0x40>)
 8002b40:	f832 1013 	ldrh.w	r1, [r2, r3, lsl #1]
 8002b44:	b289      	uxth	r1, r1
 8002b46:	b121      	cbz	r1, 8002b52 <TIM3_IRQHandler+0x16>
 8002b48:	f832 1013 	ldrh.w	r1, [r2, r3, lsl #1]
 8002b4c:	3901      	subs	r1, #1
 8002b4e:	b289      	uxth	r1, r1
 8002b50:	e007      	b.n	8002b62 <TIM3_IRQHandler+0x26>
 8002b52:	490b      	ldr	r1, [pc, #44]	; (8002b80 <TIM3_IRQHandler+0x44>)
 8002b54:	f831 1013 	ldrh.w	r1, [r1, r3, lsl #1]
 8002b58:	b289      	uxth	r1, r1
 8002b5a:	f822 1013 	strh.w	r1, [r2, r3, lsl #1]
 8002b5e:	4a09      	ldr	r2, [pc, #36]	; (8002b84 <TIM3_IRQHandler+0x48>)
 8002b60:	2101      	movs	r1, #1
 8002b62:	f822 1013 	strh.w	r1, [r2, r3, lsl #1]
 8002b66:	3301      	adds	r3, #1
 8002b68:	2b04      	cmp	r3, #4
 8002b6a:	d1e8      	bne.n	8002b3e <TIM3_IRQHandler+0x2>
 8002b6c:	4b06      	ldr	r3, [pc, #24]	; (8002b88 <TIM3_IRQHandler+0x4c>)
 8002b6e:	4807      	ldr	r0, [pc, #28]	; (8002b8c <TIM3_IRQHandler+0x50>)
 8002b70:	681a      	ldr	r2, [r3, #0]
 8002b72:	2101      	movs	r1, #1
 8002b74:	3201      	adds	r2, #1
 8002b76:	601a      	str	r2, [r3, #0]
 8002b78:	f7ff bf8f 	b.w	8002a9a <TIM_ClearITPendingBit>
 8002b7c:	20000ec8 	.word	0x20000ec8
 8002b80:	20000ebc 	.word	0x20000ebc
 8002b84:	20000eb4 	.word	0x20000eb4
 8002b88:	20000ec4 	.word	0x20000ec4
 8002b8c:	40000400 	.word	0x40000400

08002b90 <timer_get_time>:
 8002b90:	b082      	sub	sp, #8
 8002b92:	b672      	cpsid	i
 8002b94:	4b04      	ldr	r3, [pc, #16]	; (8002ba8 <timer_get_time+0x18>)
 8002b96:	681b      	ldr	r3, [r3, #0]
 8002b98:	9301      	str	r3, [sp, #4]
 8002b9a:	b662      	cpsie	i
 8002b9c:	9801      	ldr	r0, [sp, #4]
 8002b9e:	230a      	movs	r3, #10
 8002ba0:	fbb0 f0f3 	udiv	r0, r0, r3
 8002ba4:	b002      	add	sp, #8
 8002ba6:	4770      	bx	lr
 8002ba8:	20000ec4 	.word	0x20000ec4

08002bac <timer_delay_ms>:
 8002bac:	b513      	push	{r0, r1, r4, lr}
 8002bae:	4604      	mov	r4, r0
 8002bb0:	f7ff ffee 	bl	8002b90 <timer_get_time>
 8002bb4:	4420      	add	r0, r4
 8002bb6:	9001      	str	r0, [sp, #4]
 8002bb8:	9c01      	ldr	r4, [sp, #4]
 8002bba:	f7ff ffe9 	bl	8002b90 <timer_get_time>
 8002bbe:	4284      	cmp	r4, r0
 8002bc0:	d902      	bls.n	8002bc8 <timer_delay_ms+0x1c>
 8002bc2:	f7ff f989 	bl	8001ed8 <sleep>
 8002bc6:	e7f7      	b.n	8002bb8 <timer_delay_ms+0xc>
 8002bc8:	b002      	add	sp, #8
 8002bca:	bd10      	pop	{r4, pc}

08002bcc <event_timer_set_period>:
 8002bcc:	b672      	cpsid	i
 8002bce:	eb01 0181 	add.w	r1, r1, r1, lsl #2
 8002bd2:	4b07      	ldr	r3, [pc, #28]	; (8002bf0 <event_timer_set_period+0x24>)
 8002bd4:	0049      	lsls	r1, r1, #1
 8002bd6:	b289      	uxth	r1, r1
 8002bd8:	f823 1010 	strh.w	r1, [r3, r0, lsl #1]
 8002bdc:	4b05      	ldr	r3, [pc, #20]	; (8002bf4 <event_timer_set_period+0x28>)
 8002bde:	f823 1010 	strh.w	r1, [r3, r0, lsl #1]
 8002be2:	4b05      	ldr	r3, [pc, #20]	; (8002bf8 <event_timer_set_period+0x2c>)
 8002be4:	2200      	movs	r2, #0
 8002be6:	f823 2010 	strh.w	r2, [r3, r0, lsl #1]
 8002bea:	b662      	cpsie	i
 8002bec:	4770      	bx	lr
 8002bee:	bf00      	nop
 8002bf0:	20000ec8 	.word	0x20000ec8
 8002bf4:	20000ebc 	.word	0x20000ebc
 8002bf8:	20000eb4 	.word	0x20000eb4

08002bfc <event_timer_wait>:
 8002bfc:	b510      	push	{r4, lr}
 8002bfe:	4604      	mov	r4, r0
 8002c00:	4b06      	ldr	r3, [pc, #24]	; (8002c1c <event_timer_wait+0x20>)
 8002c02:	f833 2014 	ldrh.w	r2, [r3, r4, lsl #1]
 8002c06:	b292      	uxth	r2, r2
 8002c08:	b912      	cbnz	r2, 8002c10 <event_timer_wait+0x14>
 8002c0a:	f7ff f965 	bl	8001ed8 <sleep>
 8002c0e:	e7f7      	b.n	8002c00 <event_timer_wait+0x4>
 8002c10:	b672      	cpsid	i
 8002c12:	2200      	movs	r2, #0
 8002c14:	f823 2014 	strh.w	r2, [r3, r4, lsl #1]
 8002c18:	b662      	cpsie	i
 8002c1a:	bd10      	pop	{r4, pc}
 8002c1c:	20000eb4 	.word	0x20000eb4

08002c20 <_init>:
 8002c20:	e1a0c00d 	mov	ip, sp
 8002c24:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
 8002c28:	e24cb004 	sub	fp, ip, #4
 8002c2c:	e24bd028 	sub	sp, fp, #40	; 0x28
 8002c30:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
 8002c34:	e12fff1e 	bx	lr

08002c38 <_fini>:
 8002c38:	e1a0c00d 	mov	ip, sp
 8002c3c:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
 8002c40:	e24cb004 	sub	fp, ip, #4
 8002c44:	e24bd028 	sub	sp, fp, #40	; 0x28
 8002c48:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
 8002c4c:	e12fff1e 	bx	lr
 8002c50:	6c65770a 	.word	0x6c65770a
 8002c54:	656d6f63 	.word	0x656d6f63
 8002c58:	206f7420 	.word	0x206f7420
 8002c5c:	757a7553 	.word	0x757a7553
 8002c60:	534f6168 	.word	0x534f6168
 8002c64:	5e5f5e20 	.word	0x5e5f5e20
 8002c68:	302e3220 	.word	0x302e3220
 8002c6c:	420a362e 	.word	0x420a362e
 8002c70:	444c4955 	.word	0x444c4955
 8002c74:	72704120 	.word	0x72704120
 8002c78:	20392020 	.word	0x20392020
 8002c7c:	36313032 	.word	0x36313032
 8002c80:	3a383120 	.word	0x3a383120
 8002c84:	303a3133 	.word	0x303a3133
 8002c88:	73000a39 	.word	0x73000a39
 8002c8c:	65747379 	.word	0x65747379
 8002c90:	6261206d 	.word	0x6261206d
 8002c94:	6574726f 	.word	0x6574726f
 8002c98:	0a64      	.short	0x0a64
 8002c9a:	00          	.byte	0x00
 8002c9b:	65          	.byte	0x65
 8002c9c:	726f7272 	.word	0x726f7272
 8002ca0:	646f6320 	.word	0x646f6320
 8002ca4:	75252065 	.word	0x75252065
 8002ca8:	0a75253a 	.word	0x0a75253a
 8002cac:	00          	.byte	0x00
 8002cad:	73          	.byte	0x73
 8002cae:	6474      	.short	0x6474
 8002cb0:	69206f69 	.word	0x69206f69
 8002cb4:	2074696e 	.word	0x2074696e
 8002cb8:	656e6f64 	.word	0x656e6f64
 8002cbc:	0000000a 	.word	0x0000000a

08002cc0 <__EH_FRAME_BEGIN__>:
 8002cc0:	00000000                                ....
