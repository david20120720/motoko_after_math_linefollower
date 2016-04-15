
bin/main.elf:     file format elf32-littlearm


Disassembly of section .text:

08000188 <main>:
 8000188:	b508      	push	{r3, lr}
 800018a:	f001 feab 	bl	8001ee4 <lib_low_level_init>
 800018e:	f001 fbd8 	bl	8001942 <lib_os_init>
 8000192:	4905      	ldr	r1, [pc, #20]	; (80001a8 <main+0x20>)
 8000194:	4805      	ldr	r0, [pc, #20]	; (80001ac <main+0x24>)
 8000196:	f44f 7200 	mov.w	r2, #512	; 0x200
 800019a:	2306      	movs	r3, #6
 800019c:	f001 fa04 	bl	80015a8 <create_thread>
 80001a0:	f001 f9fc 	bl	800159c <kernel_start>
 80001a4:	2000      	movs	r0, #0
 80001a6:	bd08      	pop	{r3, pc}
 80001a8:	2000089c 	.word	0x2000089c
 80001ac:	080004b9 	.word	0x080004b9

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
 80001cc:	f001 f8d0 	bl	8001370 <pid_init>
 80001d0:	b003      	add	sp, #12
 80001d2:	f85d eb04 	ldr.w	lr, [sp], #4
 80001d6:	f000 ba25 	b.w	8000624 <q_predictor_init>
 80001da:	bf00      	nop
 80001dc:	20000d4c 	.word	0x20000d4c
 80001e0:	3e99999a 	.word	0x3e99999a
 80001e4:	3f19999a 	.word	0x3f19999a
 80001e8:	4090f5c3 	.word	0x4090f5c3
 80001ec:	20000a9c 	.word	0x20000a9c
 80001f0:	42c80000 	.word	0x42c80000
 80001f4:	3eda1cac 	.word	0x3eda1cac

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
 800021a:	f001 f912 	bl	8001442 <m_abs>
 800021e:	ee08 0a90 	vmov	s17, r0
 8000222:	f000 ffeb 	bl	80011fc <camera_read>
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
 8000256:	f001 f917 	bl	8001488 <m_min>
 800025a:	6862      	ldr	r2, [r4, #4]
 800025c:	491c      	ldr	r1, [pc, #112]	; (80002d0 <line_follower_main+0xd8>)
 800025e:	6020      	str	r0, [r4, #0]
 8000260:	f001 f8fb 	bl	800145a <m_saturate>
 8000264:	ee18 1a10 	vmov	r1, s16
 8000268:	6020      	str	r0, [r4, #0]
 800026a:	481a      	ldr	r0, [pc, #104]	; (80002d4 <line_follower_main+0xdc>)
 800026c:	f001 f8b0 	bl	80013d0 <pid_process>
 8000270:	edd4 6a00 	vldr	s13, [r4]
 8000274:	ed9f 7a18 	vldr	s14, [pc, #96]	; 80002d8 <line_follower_main+0xe0>
 8000278:	60a0      	str	r0, [r4, #8]
 800027a:	ee07 0a90 	vmov	s15, r0
 800027e:	ee36 6aa7 	vadd.f32	s12, s13, s15
 8000282:	ee76 7ae7 	vsub.f32	s15, s13, s15
 8000286:	ee26 6a07 	vmul.f32	s12, s12, s14
 800028a:	ee27 7a87 	vmul.f32	s14, s15, s14
 800028e:	ecbd 8b02 	vpop	{d8}
 8000292:	eebd 6ac6 	vcvt.s32.f32	s12, s12
 8000296:	eebd 7ac7 	vcvt.s32.f32	s14, s14
 800029a:	ee16 0a10 	vmov	r0, s12
 800029e:	ee17 1a10 	vmov	r1, s14
 80002a2:	b200      	sxth	r0, r0
 80002a4:	b209      	sxth	r1, r1
 80002a6:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80002aa:	f002 b9d9 	b.w	8002660 <drv8834_run>
 80002ae:	bf00      	nop
 80002b0:	2000045c 	.word	0x2000045c
 80002b4:	3b800000 	.word	0x3b800000
 80002b8:	20000d4c 	.word	0x20000d4c
 80002bc:	00000000 	.word	0x00000000
 80002c0:	20000488 	.word	0x20000488
 80002c4:	3f800000 	.word	0x3f800000
 80002c8:	3b83126f 	.word	0x3b83126f
 80002cc:	40600000 	.word	0x40600000
 80002d0:	3e99999a 	.word	0x3e99999a
 80002d4:	20000a9c 	.word	0x20000a9c
 80002d8:	42c80000 	.word	0x42c80000

080002dc <broken_line_init>:
 80002dc:	4770      	bx	lr
	...

080002e0 <broken_line_main>:
 80002e0:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 80002e4:	2500      	movs	r5, #0
 80002e6:	462c      	mov	r4, r5
 80002e8:	462f      	mov	r7, r5
 80002ea:	46a8      	mov	r8, r5
 80002ec:	462e      	mov	r6, r5
 80002ee:	f8df 90f0 	ldr.w	r9, [pc, #240]	; 80003e0 <broken_line_main+0x100>
 80002f2:	f899 301c 	ldrb.w	r3, [r9, #28]
 80002f6:	2b08      	cmp	r3, #8
 80002f8:	d06c      	beq.n	80003d4 <broken_line_main+0xf4>
 80002fa:	2005      	movs	r0, #5
 80002fc:	f002 fc5a 	bl	8002bb4 <timer_delay_ms>
 8000300:	2f05      	cmp	r7, #5
 8000302:	d861      	bhi.n	80003c8 <broken_line_main+0xe8>
 8000304:	e8df f007 	tbb	[pc, r7]
 8000308:	38271503 	.word	0x38271503
 800030c:	4d4a      	.short	0x4d4a
 800030e:	2c00      	cmp	r4, #0
 8000310:	d145      	bne.n	800039e <broken_line_main+0xbe>
 8000312:	f8d9 3020 	ldr.w	r3, [r9, #32]
 8000316:	2b00      	cmp	r3, #0
 8000318:	f04f 0450 	mov.w	r4, #80	; 0x50
 800031c:	f04f 0701 	mov.w	r7, #1
 8000320:	bfd4      	ite	le
 8000322:	f04f 0832 	movle.w	r8, #50	; 0x32
 8000326:	f04f 0800 	movgt.w	r8, #0
 800032a:	bfd4      	ite	le
 800032c:	2600      	movle	r6, #0
 800032e:	2632      	movgt	r6, #50	; 0x32
 8000330:	e04a      	b.n	80003c8 <broken_line_main+0xe8>
 8000332:	bba4      	cbnz	r4, 800039e <broken_line_main+0xbe>
 8000334:	f8d9 3020 	ldr.w	r3, [r9, #32]
 8000338:	2b00      	cmp	r3, #0
 800033a:	f04f 0450 	mov.w	r4, #80	; 0x50
 800033e:	f04f 0702 	mov.w	r7, #2
 8000342:	bfd4      	ite	le
 8000344:	f06f 0831 	mvnle.w	r8, #49	; 0x31
 8000348:	f04f 0800 	movgt.w	r8, #0
 800034c:	bfd4      	ite	le
 800034e:	2600      	movle	r6, #0
 8000350:	f06f 0631 	mvngt.w	r6, #49	; 0x31
 8000354:	e038      	b.n	80003c8 <broken_line_main+0xe8>
 8000356:	bb14      	cbnz	r4, 800039e <broken_line_main+0xbe>
 8000358:	f8d9 3020 	ldr.w	r3, [r9, #32]
 800035c:	2b00      	cmp	r3, #0
 800035e:	f04f 0450 	mov.w	r4, #80	; 0x50
 8000362:	f04f 0703 	mov.w	r7, #3
 8000366:	bfd4      	ite	le
 8000368:	f04f 0800 	movle.w	r8, #0
 800036c:	f04f 0832 	movgt.w	r8, #50	; 0x32
 8000370:	bfd4      	ite	le
 8000372:	2632      	movle	r6, #50	; 0x32
 8000374:	2600      	movgt	r6, #0
 8000376:	e027      	b.n	80003c8 <broken_line_main+0xe8>
 8000378:	b98c      	cbnz	r4, 800039e <broken_line_main+0xbe>
 800037a:	f8d9 3020 	ldr.w	r3, [r9, #32]
 800037e:	2b00      	cmp	r3, #0
 8000380:	f04f 0450 	mov.w	r4, #80	; 0x50
 8000384:	f04f 0704 	mov.w	r7, #4
 8000388:	bfd4      	ite	le
 800038a:	f04f 0800 	movle.w	r8, #0
 800038e:	f06f 0831 	mvngt.w	r8, #49	; 0x31
 8000392:	bfd4      	ite	le
 8000394:	f06f 0631 	mvnle.w	r6, #49	; 0x31
 8000398:	2600      	movgt	r6, #0
 800039a:	e015      	b.n	80003c8 <broken_line_main+0xe8>
 800039c:	b16c      	cbz	r4, 80003ba <broken_line_main+0xda>
 800039e:	3c01      	subs	r4, #1
 80003a0:	e012      	b.n	80003c8 <broken_line_main+0xe8>
 80003a2:	b184      	cbz	r4, 80003c6 <broken_line_main+0xe6>
 80003a4:	f241 3387 	movw	r3, #4999	; 0x1387
 80003a8:	429d      	cmp	r5, r3
 80003aa:	bfd8      	it	le
 80003ac:	3532      	addle	r5, #50	; 0x32
 80003ae:	2664      	movs	r6, #100	; 0x64
 80003b0:	fb95 f6f6 	sdiv	r6, r5, r6
 80003b4:	3c01      	subs	r4, #1
 80003b6:	46b0      	mov	r8, r6
 80003b8:	e006      	b.n	80003c8 <broken_line_main+0xe8>
 80003ba:	4625      	mov	r5, r4
 80003bc:	2705      	movs	r7, #5
 80003be:	2428      	movs	r4, #40	; 0x28
 80003c0:	46a8      	mov	r8, r5
 80003c2:	462e      	mov	r6, r5
 80003c4:	e000      	b.n	80003c8 <broken_line_main+0xe8>
 80003c6:	4627      	mov	r7, r4
 80003c8:	fa0f f088 	sxth.w	r0, r8
 80003cc:	b231      	sxth	r1, r6
 80003ce:	f002 f947 	bl	8002660 <drv8834_run>
 80003d2:	e78c      	b.n	80002ee <broken_line_main+0xe>
 80003d4:	2000      	movs	r0, #0
 80003d6:	4601      	mov	r1, r0
 80003d8:	e8bd 43f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 80003dc:	f002 b940 	b.w	8002660 <drv8834_run>
 80003e0:	2000045c 	.word	0x2000045c

080003e4 <line_sensor_thread>:
 80003e4:	b508      	push	{r3, lr}
 80003e6:	f000 fd11 	bl	8000e0c <line_sensor_init>
 80003ea:	4601      	mov	r1, r0
 80003ec:	b120      	cbz	r0, 80003f8 <line_sensor_thread+0x14>
 80003ee:	4b08      	ldr	r3, [pc, #32]	; (8000410 <line_sensor_thread+0x2c>)
 80003f0:	2001      	movs	r0, #1
 80003f2:	6018      	str	r0, [r3, #0]
 80003f4:	f000 f96a 	bl	80006cc <abort_error_>
 80003f8:	2000      	movs	r0, #0
 80003fa:	2104      	movs	r1, #4
 80003fc:	f002 fbea 	bl	8002bd4 <event_timer_set_period>
 8000400:	2000      	movs	r0, #0
 8000402:	f002 fbff 	bl	8002c04 <event_timer_wait>
 8000406:	2000      	movs	r0, #0
 8000408:	f000 fd78 	bl	8000efc <line_sensor_read>
 800040c:	e7f8      	b.n	8000400 <line_sensor_thread+0x1c>
 800040e:	bf00      	nop
 8000410:	20000d58 	.word	0x20000d58

08000414 <i2c_sensor_thread>:
 8000414:	b508      	push	{r3, lr}
 8000416:	f000 fdf9 	bl	800100c <lsm9ds0_init>
 800041a:	4601      	mov	r1, r0
 800041c:	b128      	cbz	r0, 800042a <i2c_sensor_thread+0x16>
 800041e:	4b08      	ldr	r3, [pc, #32]	; (8000440 <i2c_sensor_thread+0x2c>)
 8000420:	2201      	movs	r2, #1
 8000422:	2002      	movs	r0, #2
 8000424:	601a      	str	r2, [r3, #0]
 8000426:	f000 f951 	bl	80006cc <abort_error_>
 800042a:	2001      	movs	r0, #1
 800042c:	210a      	movs	r1, #10
 800042e:	f002 fbd1 	bl	8002bd4 <event_timer_set_period>
 8000432:	2001      	movs	r0, #1
 8000434:	f002 fbe6 	bl	8002c04 <event_timer_wait>
 8000438:	f000 fd6a 	bl	8000f10 <lsm9ds0_read>
 800043c:	e7f9      	b.n	8000432 <i2c_sensor_thread+0x1e>
 800043e:	bf00      	nop
 8000440:	20000d58 	.word	0x20000d58

08000444 <line_follower>:
 8000444:	b538      	push	{r3, r4, r5, lr}
 8000446:	f7ff feb3 	bl	80001b0 <line_follower_init>
 800044a:	2002      	movs	r0, #2
 800044c:	2104      	movs	r1, #4
 800044e:	f002 fbc1 	bl	8002bd4 <event_timer_set_period>
 8000452:	f002 fba1 	bl	8002b98 <timer_get_time>
 8000456:	f500 35c3 	add.w	r5, r0, #99840	; 0x18600
 800045a:	35a0      	adds	r5, #160	; 0xa0
 800045c:	2400      	movs	r4, #0
 800045e:	2002      	movs	r0, #2
 8000460:	f002 fbd0 	bl	8002c04 <event_timer_wait>
 8000464:	4b13      	ldr	r3, [pc, #76]	; (80004b4 <line_follower+0x70>)
 8000466:	6a5a      	ldr	r2, [r3, #36]	; 0x24
 8000468:	f5b2 7f48 	cmp.w	r2, #800	; 0x320
 800046c:	dd02      	ble.n	8000474 <line_follower+0x30>
 800046e:	f000 f8d4 	bl	800061a <obstacle_main>
 8000472:	e007      	b.n	8000484 <line_follower+0x40>
 8000474:	7f1b      	ldrb	r3, [r3, #28]
 8000476:	2b08      	cmp	r3, #8
 8000478:	d102      	bne.n	8000480 <line_follower+0x3c>
 800047a:	f7ff febd 	bl	80001f8 <line_follower_main>
 800047e:	e001      	b.n	8000484 <line_follower+0x40>
 8000480:	f7ff ff2e 	bl	80002e0 <broken_line_main>
 8000484:	3401      	adds	r4, #1
 8000486:	2314      	movs	r3, #20
 8000488:	fbb4 f2f3 	udiv	r2, r4, r3
 800048c:	fb03 4312 	mls	r3, r3, r2, r4
 8000490:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8000494:	b913      	cbnz	r3, 800049c <line_follower+0x58>
 8000496:	f001 fc01 	bl	8001c9c <led_on>
 800049a:	e001      	b.n	80004a0 <line_follower+0x5c>
 800049c:	f001 fc10 	bl	8001cc0 <led_off>
 80004a0:	f002 fb7a 	bl	8002b98 <timer_get_time>
 80004a4:	4285      	cmp	r5, r0
 80004a6:	d2da      	bcs.n	800045e <line_follower+0x1a>
 80004a8:	2000      	movs	r0, #0
 80004aa:	4601      	mov	r1, r0
 80004ac:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 80004b0:	f002 b8d6 	b.w	8002660 <drv8834_run>
 80004b4:	2000045c 	.word	0x2000045c

080004b8 <main_thread>:
 80004b8:	b510      	push	{r4, lr}
 80004ba:	4820      	ldr	r0, [pc, #128]	; (800053c <main_thread+0x84>)
 80004bc:	4c20      	ldr	r4, [pc, #128]	; (8000540 <main_thread+0x88>)
 80004be:	f001 f97d 	bl	80017bc <printf_>
 80004c2:	f44f 7096 	mov.w	r0, #300	; 0x12c
 80004c6:	f002 fb75 	bl	8002bb4 <timer_delay_ms>
 80004ca:	2300      	movs	r3, #0
 80004cc:	6023      	str	r3, [r4, #0]
 80004ce:	491d      	ldr	r1, [pc, #116]	; (8000544 <main_thread+0x8c>)
 80004d0:	481d      	ldr	r0, [pc, #116]	; (8000548 <main_thread+0x90>)
 80004d2:	f44f 7200 	mov.w	r2, #512	; 0x200
 80004d6:	2306      	movs	r3, #6
 80004d8:	f001 f866 	bl	80015a8 <create_thread>
 80004dc:	491b      	ldr	r1, [pc, #108]	; (800054c <main_thread+0x94>)
 80004de:	481c      	ldr	r0, [pc, #112]	; (8000550 <main_thread+0x98>)
 80004e0:	f44f 7200 	mov.w	r2, #512	; 0x200
 80004e4:	2306      	movs	r3, #6
 80004e6:	f001 f85f 	bl	80015a8 <create_thread>
 80004ea:	f7ff fef7 	bl	80002dc <broken_line_init>
 80004ee:	f000 f893 	bl	8000618 <obstacle_init>
 80004f2:	f000 fdf9 	bl	80010e8 <camera_init>
 80004f6:	6823      	ldr	r3, [r4, #0]
 80004f8:	b13b      	cbz	r3, 800050a <main_thread+0x52>
 80004fa:	4816      	ldr	r0, [pc, #88]	; (8000554 <main_thread+0x9c>)
 80004fc:	f001 f95e 	bl	80017bc <printf_>
 8000500:	f44f 60fa 	mov.w	r0, #2000	; 0x7d0
 8000504:	f002 fb56 	bl	8002bb4 <timer_delay_ms>
 8000508:	e7f7      	b.n	80004fa <main_thread+0x42>
 800050a:	f001 fbeb 	bl	8001ce4 <get_key>
 800050e:	b128      	cbz	r0, 800051c <main_thread+0x64>
 8000510:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 8000514:	f002 fb4e 	bl	8002bb4 <timer_delay_ms>
 8000518:	f7ff ff94 	bl	8000444 <line_follower>
 800051c:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8000520:	f001 fbbc 	bl	8001c9c <led_on>
 8000524:	2064      	movs	r0, #100	; 0x64
 8000526:	f002 fb45 	bl	8002bb4 <timer_delay_ms>
 800052a:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 800052e:	f001 fbc7 	bl	8001cc0 <led_off>
 8000532:	20c8      	movs	r0, #200	; 0xc8
 8000534:	f002 fb3e 	bl	8002bb4 <timer_delay_ms>
 8000538:	e7dd      	b.n	80004f6 <main_thread+0x3e>
 800053a:	bf00      	nop
 800053c:	08002c58 	.word	0x08002c58
 8000540:	20000d58 	.word	0x20000d58
 8000544:	20000200 	.word	0x20000200
 8000548:	080003e5 	.word	0x080003e5
 800054c:	2000069c 	.word	0x2000069c
 8000550:	08000415 	.word	0x08000415
 8000554:	08002c93 	.word	0x08002c93

08000558 <obstacle_go_forward>:
 8000558:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800055a:	460f      	mov	r7, r1
 800055c:	ed2d 8b04 	vpush	{d8-d9}
 8000560:	4606      	mov	r6, r0
 8000562:	b950      	cbnz	r0, 800057a <obstacle_go_forward+0x22>
 8000564:	2000      	movs	r0, #0
 8000566:	4601      	mov	r1, r0
 8000568:	f002 f87a 	bl	8002660 <drv8834_run>
 800056c:	ecbd 8b04 	vpop	{d8-d9}
 8000570:	2064      	movs	r0, #100	; 0x64
 8000572:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8000576:	f002 bb1d 	b.w	8002bb4 <timer_delay_ms>
 800057a:	ed9f 8a21 	vldr	s16, [pc, #132]	; 8000600 <obstacle_go_forward+0xa8>
 800057e:	2400      	movs	r4, #0
 8000580:	eef0 7a48 	vmov.f32	s15, s16
 8000584:	4625      	mov	r5, r4
 8000586:	eeb0 9a48 	vmov.f32	s18, s16
 800058a:	42bd      	cmp	r5, r7
 800058c:	d2ea      	bcs.n	8000564 <obstacle_go_forward+0xc>
 800058e:	4b1d      	ldr	r3, [pc, #116]	; (8000604 <obstacle_go_forward+0xac>)
 8000590:	f9b3 3010 	ldrsh.w	r3, [r3, #16]
 8000594:	441c      	add	r4, r3
 8000596:	ee07 4a10 	vmov	s14, r4
 800059a:	eef8 8ac7 	vcvt.f32.s32	s17, s14
 800059e:	ed9f 7a1a 	vldr	s14, [pc, #104]	; 8000608 <obstacle_go_forward+0xb0>
 80005a2:	ee79 8a68 	vsub.f32	s17, s18, s17
 80005a6:	350a      	adds	r5, #10
 80005a8:	ee78 7ae7 	vsub.f32	s15, s17, s15
 80005ac:	ee67 7a87 	vmul.f32	s15, s15, s14
 80005b0:	ed9f 7a16 	vldr	s14, [pc, #88]	; 800060c <obstacle_go_forward+0xb4>
 80005b4:	ee48 7a87 	vmla.f32	s15, s17, s14
 80005b8:	ee07 6a10 	vmov	s14, r6
 80005bc:	eef8 6a47 	vcvt.f32.u32	s13, s14
 80005c0:	ed9f 7a13 	vldr	s14, [pc, #76]	; 8000610 <obstacle_go_forward+0xb8>
 80005c4:	ee26 7a87 	vmul.f32	s14, s13, s14
 80005c8:	eddf 6a12 	vldr	s13, [pc, #72]	; 8000614 <obstacle_go_forward+0xbc>
 80005cc:	ee08 7a26 	vmla.f32	s14, s16, s13
 80005d0:	eeb0 8a47 	vmov.f32	s16, s14
 80005d4:	ee37 7a67 	vsub.f32	s14, s14, s15
 80005d8:	ee78 7a27 	vadd.f32	s15, s16, s15
 80005dc:	eebd 7ac7 	vcvt.s32.f32	s14, s14
 80005e0:	eefd 7ae7 	vcvt.s32.f32	s15, s15
 80005e4:	ee17 0a10 	vmov	r0, s14
 80005e8:	ee17 1a90 	vmov	r1, s15
 80005ec:	b200      	sxth	r0, r0
 80005ee:	b209      	sxth	r1, r1
 80005f0:	f002 f836 	bl	8002660 <drv8834_run>
 80005f4:	200a      	movs	r0, #10
 80005f6:	f002 fadd 	bl	8002bb4 <timer_delay_ms>
 80005fa:	eef0 7a68 	vmov.f32	s15, s17
 80005fe:	e7c4      	b.n	800058a <obstacle_go_forward+0x32>
 8000600:	00000000 	.word	0x00000000
 8000604:	200001e4 	.word	0x200001e4
 8000608:	3a83126f 	.word	0x3a83126f
 800060c:	399d4952 	.word	0x399d4952
 8000610:	3e4ccccc 	.word	0x3e4ccccc
 8000614:	3f4ccccd 	.word	0x3f4ccccd

08000618 <obstacle_init>:
 8000618:	4770      	bx	lr

0800061a <obstacle_main>:
 800061a:	2000      	movs	r0, #0
 800061c:	2164      	movs	r1, #100	; 0x64
 800061e:	f7ff bf9b 	b.w	8000558 <obstacle_go_forward>
	...

08000624 <q_predictor_init>:
 8000624:	4b24      	ldr	r3, [pc, #144]	; (80006b8 <q_predictor_init+0x94>)
 8000626:	2200      	movs	r2, #0
 8000628:	4619      	mov	r1, r3
 800062a:	b570      	push	{r4, r5, r6, lr}
 800062c:	4608      	mov	r0, r1
 800062e:	601a      	str	r2, [r3, #0]
 8000630:	605a      	str	r2, [r3, #4]
 8000632:	f103 0208 	add.w	r2, r3, #8
 8000636:	3348      	adds	r3, #72	; 0x48
 8000638:	2400      	movs	r4, #0
 800063a:	f842 4b04 	str.w	r4, [r2], #4
 800063e:	429a      	cmp	r2, r3
 8000640:	d1fa      	bne.n	8000638 <q_predictor_init+0x14>
 8000642:	2200      	movs	r2, #0
 8000644:	eb01 0442 	add.w	r4, r1, r2, lsl #1
 8000648:	2300      	movs	r3, #0
 800064a:	4e1c      	ldr	r6, [pc, #112]	; (80006bc <q_predictor_init+0x98>)
 800064c:	eddf 7a1c 	vldr	s15, [pc, #112]	; 80006c0 <q_predictor_init+0x9c>
 8000650:	4416      	add	r6, r2
 8000652:	eb04 0543 	add.w	r5, r4, r3, lsl #1
 8000656:	5ef6      	ldrsh	r6, [r6, r3]
 8000658:	ee07 6a10 	vmov	s14, r6
 800065c:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 8000660:	3302      	adds	r3, #2
 8000662:	ee87 7a27 	vdiv.f32	s14, s14, s15
 8000666:	2b20      	cmp	r3, #32
 8000668:	ed85 7a12 	vstr	s14, [r5, #72]	; 0x48
 800066c:	d1ed      	bne.n	800064a <q_predictor_init+0x26>
 800066e:	3220      	adds	r2, #32
 8000670:	f5b2 7f80 	cmp.w	r2, #256	; 0x100
 8000674:	d1e6      	bne.n	8000644 <q_predictor_init+0x20>
 8000676:	2300      	movs	r3, #0
 8000678:	4912      	ldr	r1, [pc, #72]	; (80006c4 <q_predictor_init+0xa0>)
 800067a:	5e59      	ldrsh	r1, [r3, r1]
 800067c:	ee07 1a10 	vmov	s14, r1
 8000680:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 8000684:	eb00 0243 	add.w	r2, r0, r3, lsl #1
 8000688:	ee87 7a27 	vdiv.f32	s14, s14, s15
 800068c:	3302      	adds	r3, #2
 800068e:	2b10      	cmp	r3, #16
 8000690:	ed82 7a92 	vstr	s14, [r2, #584]	; 0x248
 8000694:	d1f0      	bne.n	8000678 <q_predictor_init+0x54>
 8000696:	2300      	movs	r3, #0
 8000698:	490b      	ldr	r1, [pc, #44]	; (80006c8 <q_predictor_init+0xa4>)
 800069a:	5e59      	ldrsh	r1, [r3, r1]
 800069c:	ee07 1a10 	vmov	s14, r1
 80006a0:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 80006a4:	eb00 0243 	add.w	r2, r0, r3, lsl #1
 80006a8:	ee87 7a27 	vdiv.f32	s14, s14, s15
 80006ac:	3302      	adds	r3, #2
 80006ae:	2b10      	cmp	r3, #16
 80006b0:	ed82 7a9a 	vstr	s14, [r2, #616]	; 0x268
 80006b4:	d1f0      	bne.n	8000698 <q_predictor_init+0x74>
 80006b6:	bd70      	pop	{r4, r5, r6, pc}
 80006b8:	20000ac4 	.word	0x20000ac4
 80006bc:	20000010 	.word	0x20000010
 80006c0:	447a0000 	.word	0x447a0000
 80006c4:	20000000 	.word	0x20000000
 80006c8:	20000154 	.word	0x20000154

080006cc <abort_error_>:
 80006cc:	b570      	push	{r4, r5, r6, lr}
 80006ce:	4605      	mov	r5, r0
 80006d0:	460e      	mov	r6, r1
 80006d2:	480f      	ldr	r0, [pc, #60]	; (8000710 <abort_error_+0x44>)
 80006d4:	4629      	mov	r1, r5
 80006d6:	4632      	mov	r2, r6
 80006d8:	f001 f870 	bl	80017bc <printf_>
 80006dc:	2400      	movs	r4, #0
 80006de:	1ceb      	adds	r3, r5, #3
 80006e0:	429c      	cmp	r4, r3
 80006e2:	d20f      	bcs.n	8000704 <abort_error_+0x38>
 80006e4:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 80006e8:	f001 fad8 	bl	8001c9c <led_on>
 80006ec:	2032      	movs	r0, #50	; 0x32
 80006ee:	f002 fa61 	bl	8002bb4 <timer_delay_ms>
 80006f2:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 80006f6:	f001 fae3 	bl	8001cc0 <led_off>
 80006fa:	2064      	movs	r0, #100	; 0x64
 80006fc:	f002 fa5a 	bl	8002bb4 <timer_delay_ms>
 8000700:	3401      	adds	r4, #1
 8000702:	e7ec      	b.n	80006de <abort_error_+0x12>
 8000704:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 8000708:	f002 fa54 	bl	8002bb4 <timer_delay_ms>
 800070c:	e7e1      	b.n	80006d2 <abort_error_+0x6>
 800070e:	bf00      	nop
 8000710:	08002ca3 	.word	0x08002ca3

08000714 <rgb_i2c_delay>:
 8000714:	bf00      	nop
 8000716:	bf00      	nop
 8000718:	bf00      	nop
 800071a:	bf00      	nop
 800071c:	4770      	bx	lr
	...

08000720 <RGBSetLowSDA>:
 8000720:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 8000722:	4f15      	ldr	r7, [pc, #84]	; (8000778 <RGBSetLowSDA+0x58>)
 8000724:	2401      	movs	r4, #1
 8000726:	783b      	ldrb	r3, [r7, #0]
 8000728:	9300      	str	r3, [sp, #0]
 800072a:	2603      	movs	r6, #3
 800072c:	2500      	movs	r5, #0
 800072e:	4669      	mov	r1, sp
 8000730:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000734:	f88d 5007 	strb.w	r5, [sp, #7]
 8000738:	f88d 4004 	strb.w	r4, [sp, #4]
 800073c:	f88d 6005 	strb.w	r6, [sp, #5]
 8000740:	f88d 4006 	strb.w	r4, [sp, #6]
 8000744:	f001 fad6 	bl	8001cf4 <GPIO_Init>
 8000748:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 800074c:	783a      	ldrb	r2, [r7, #0]
 800074e:	851a      	strh	r2, [r3, #40]	; 0x28
 8000750:	f88d 5007 	strb.w	r5, [sp, #7]
 8000754:	4d09      	ldr	r5, [pc, #36]	; (800077c <RGBSetLowSDA+0x5c>)
 8000756:	9400      	str	r4, [sp, #0]
 8000758:	4628      	mov	r0, r5
 800075a:	4669      	mov	r1, sp
 800075c:	f88d 4004 	strb.w	r4, [sp, #4]
 8000760:	f88d 6005 	strb.w	r6, [sp, #5]
 8000764:	f88d 4006 	strb.w	r4, [sp, #6]
 8000768:	f001 fac4 	bl	8001cf4 <GPIO_Init>
 800076c:	852c      	strh	r4, [r5, #40]	; 0x28
 800076e:	f7ff ffd1 	bl	8000714 <rgb_i2c_delay>
 8000772:	b003      	add	sp, #12
 8000774:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000776:	bf00      	nop
 8000778:	20000d5c 	.word	0x20000d5c
 800077c:	48000400 	.word	0x48000400

08000780 <RGBSetHighSDA>:
 8000780:	b573      	push	{r0, r1, r4, r5, r6, lr}
 8000782:	4d13      	ldr	r5, [pc, #76]	; (80007d0 <RGBSetHighSDA+0x50>)
 8000784:	2400      	movs	r4, #0
 8000786:	782b      	ldrb	r3, [r5, #0]
 8000788:	9300      	str	r3, [sp, #0]
 800078a:	2603      	movs	r6, #3
 800078c:	4669      	mov	r1, sp
 800078e:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000792:	f88d 4004 	strb.w	r4, [sp, #4]
 8000796:	f88d 4007 	strb.w	r4, [sp, #7]
 800079a:	f88d 6005 	strb.w	r6, [sp, #5]
 800079e:	f001 faa9 	bl	8001cf4 <GPIO_Init>
 80007a2:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 80007a6:	782a      	ldrb	r2, [r5, #0]
 80007a8:	619a      	str	r2, [r3, #24]
 80007aa:	f88d 4004 	strb.w	r4, [sp, #4]
 80007ae:	f88d 4007 	strb.w	r4, [sp, #7]
 80007b2:	4c08      	ldr	r4, [pc, #32]	; (80007d4 <RGBSetHighSDA+0x54>)
 80007b4:	f88d 6005 	strb.w	r6, [sp, #5]
 80007b8:	2501      	movs	r5, #1
 80007ba:	4620      	mov	r0, r4
 80007bc:	4669      	mov	r1, sp
 80007be:	9500      	str	r5, [sp, #0]
 80007c0:	f001 fa98 	bl	8001cf4 <GPIO_Init>
 80007c4:	61a5      	str	r5, [r4, #24]
 80007c6:	f7ff ffa5 	bl	8000714 <rgb_i2c_delay>
 80007ca:	b002      	add	sp, #8
 80007cc:	bd70      	pop	{r4, r5, r6, pc}
 80007ce:	bf00      	nop
 80007d0:	20000d5c 	.word	0x20000d5c
 80007d4:	48000400 	.word	0x48000400

080007d8 <RGBSetLowSCL>:
 80007d8:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 80007dc:	f44f 7280 	mov.w	r2, #256	; 0x100
 80007e0:	851a      	strh	r2, [r3, #40]	; 0x28
 80007e2:	f7ff bf97 	b.w	8000714 <rgb_i2c_delay>

080007e6 <RGBSetHighSCL>:
 80007e6:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 80007ea:	f44f 7280 	mov.w	r2, #256	; 0x100
 80007ee:	619a      	str	r2, [r3, #24]
 80007f0:	f7ff bf90 	b.w	8000714 <rgb_i2c_delay>

080007f4 <rgb_i2c_init>:
 80007f4:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 80007f6:	4f1f      	ldr	r7, [pc, #124]	; (8000874 <rgb_i2c_init+0x80>)
 80007f8:	2400      	movs	r4, #0
 80007fa:	2501      	movs	r5, #1
 80007fc:	2603      	movs	r6, #3
 80007fe:	f44f 7380 	mov.w	r3, #256	; 0x100
 8000802:	4669      	mov	r1, sp
 8000804:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000808:	9300      	str	r3, [sp, #0]
 800080a:	f88d 4006 	strb.w	r4, [sp, #6]
 800080e:	f88d 4007 	strb.w	r4, [sp, #7]
 8000812:	f88d 5004 	strb.w	r5, [sp, #4]
 8000816:	f88d 6005 	strb.w	r6, [sp, #5]
 800081a:	f001 fa6b 	bl	8001cf4 <GPIO_Init>
 800081e:	783b      	ldrb	r3, [r7, #0]
 8000820:	9300      	str	r3, [sp, #0]
 8000822:	4669      	mov	r1, sp
 8000824:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000828:	f88d 4004 	strb.w	r4, [sp, #4]
 800082c:	f88d 4007 	strb.w	r4, [sp, #7]
 8000830:	f88d 6005 	strb.w	r6, [sp, #5]
 8000834:	f001 fa5e 	bl	8001cf4 <GPIO_Init>
 8000838:	7839      	ldrb	r1, [r7, #0]
 800083a:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 800083e:	f001 fa9e 	bl	8001d7e <GPIO_SetBits>
 8000842:	f88d 4004 	strb.w	r4, [sp, #4]
 8000846:	f88d 4007 	strb.w	r4, [sp, #7]
 800084a:	4c0b      	ldr	r4, [pc, #44]	; (8000878 <rgb_i2c_init+0x84>)
 800084c:	9500      	str	r5, [sp, #0]
 800084e:	4620      	mov	r0, r4
 8000850:	4669      	mov	r1, sp
 8000852:	f88d 6005 	strb.w	r6, [sp, #5]
 8000856:	f001 fa4d 	bl	8001cf4 <GPIO_Init>
 800085a:	4620      	mov	r0, r4
 800085c:	4629      	mov	r1, r5
 800085e:	f001 fa8e 	bl	8001d7e <GPIO_SetBits>
 8000862:	f7ff ffc0 	bl	80007e6 <RGBSetHighSCL>
 8000866:	f7ff ff5b 	bl	8000720 <RGBSetLowSDA>
 800086a:	f7ff ff89 	bl	8000780 <RGBSetHighSDA>
 800086e:	b003      	add	sp, #12
 8000870:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000872:	bf00      	nop
 8000874:	20000d5c 	.word	0x20000d5c
 8000878:	48000400 	.word	0x48000400

0800087c <rgb_i2cStart>:
 800087c:	b508      	push	{r3, lr}
 800087e:	f7ff ffb2 	bl	80007e6 <RGBSetHighSCL>
 8000882:	f7ff ff7d 	bl	8000780 <RGBSetHighSDA>
 8000886:	f7ff ffae 	bl	80007e6 <RGBSetHighSCL>
 800088a:	f7ff ff49 	bl	8000720 <RGBSetLowSDA>
 800088e:	f7ff ffa3 	bl	80007d8 <RGBSetLowSCL>
 8000892:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8000896:	f7ff bf73 	b.w	8000780 <RGBSetHighSDA>

0800089a <rgb_i2cStop>:
 800089a:	b508      	push	{r3, lr}
 800089c:	f7ff ff9c 	bl	80007d8 <RGBSetLowSCL>
 80008a0:	f7ff ff3e 	bl	8000720 <RGBSetLowSDA>
 80008a4:	f7ff ff9f 	bl	80007e6 <RGBSetHighSCL>
 80008a8:	f7ff ff3a 	bl	8000720 <RGBSetLowSDA>
 80008ac:	f7ff ff9b 	bl	80007e6 <RGBSetHighSCL>
 80008b0:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80008b4:	f7ff bf64 	b.w	8000780 <RGBSetHighSDA>

080008b8 <rgb_i2cWrite>:
 80008b8:	b538      	push	{r3, r4, r5, lr}
 80008ba:	4604      	mov	r4, r0
 80008bc:	2508      	movs	r5, #8
 80008be:	f7ff ff8b 	bl	80007d8 <RGBSetLowSCL>
 80008c2:	0623      	lsls	r3, r4, #24
 80008c4:	d502      	bpl.n	80008cc <rgb_i2cWrite+0x14>
 80008c6:	f7ff ff5b 	bl	8000780 <RGBSetHighSDA>
 80008ca:	e001      	b.n	80008d0 <rgb_i2cWrite+0x18>
 80008cc:	f7ff ff28 	bl	8000720 <RGBSetLowSDA>
 80008d0:	3d01      	subs	r5, #1
 80008d2:	f7ff ff88 	bl	80007e6 <RGBSetHighSCL>
 80008d6:	0064      	lsls	r4, r4, #1
 80008d8:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 80008dc:	b2e4      	uxtb	r4, r4
 80008de:	d1ee      	bne.n	80008be <rgb_i2cWrite+0x6>
 80008e0:	f7ff ff7a 	bl	80007d8 <RGBSetLowSCL>
 80008e4:	f7ff ff4c 	bl	8000780 <RGBSetHighSDA>
 80008e8:	f7ff ff7d 	bl	80007e6 <RGBSetHighSCL>
 80008ec:	f7ff ff74 	bl	80007d8 <RGBSetLowSCL>
 80008f0:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 80008f4:	f7ff bf0e 	b.w	8000714 <rgb_i2c_delay>

080008f8 <rgb_i2cRead>:
 80008f8:	b570      	push	{r4, r5, r6, lr}
 80008fa:	2300      	movs	r3, #0
 80008fc:	4606      	mov	r6, r0
 80008fe:	460c      	mov	r4, r1
 8000900:	2200      	movs	r2, #0
 8000902:	54e2      	strb	r2, [r4, r3]
 8000904:	3301      	adds	r3, #1
 8000906:	2b09      	cmp	r3, #9
 8000908:	d1fa      	bne.n	8000900 <rgb_i2cRead+0x8>
 800090a:	f7ff ff65 	bl	80007d8 <RGBSetLowSCL>
 800090e:	f7ff ff37 	bl	8000780 <RGBSetHighSDA>
 8000912:	2508      	movs	r5, #8
 8000914:	2300      	movs	r3, #0
 8000916:	5ce2      	ldrb	r2, [r4, r3]
 8000918:	0052      	lsls	r2, r2, #1
 800091a:	54e2      	strb	r2, [r4, r3]
 800091c:	3301      	adds	r3, #1
 800091e:	2b09      	cmp	r3, #9
 8000920:	d1f9      	bne.n	8000916 <rgb_i2cRead+0x1e>
 8000922:	f7ff ff60 	bl	80007e6 <RGBSetHighSCL>
 8000926:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 800092a:	8a1b      	ldrh	r3, [r3, #16]
 800092c:	b29b      	uxth	r3, r3
 800092e:	07d9      	lsls	r1, r3, #31
 8000930:	d503      	bpl.n	800093a <rgb_i2cRead+0x42>
 8000932:	7822      	ldrb	r2, [r4, #0]
 8000934:	f042 0201 	orr.w	r2, r2, #1
 8000938:	7022      	strb	r2, [r4, #0]
 800093a:	079a      	lsls	r2, r3, #30
 800093c:	d503      	bpl.n	8000946 <rgb_i2cRead+0x4e>
 800093e:	7862      	ldrb	r2, [r4, #1]
 8000940:	f042 0201 	orr.w	r2, r2, #1
 8000944:	7062      	strb	r2, [r4, #1]
 8000946:	0758      	lsls	r0, r3, #29
 8000948:	d503      	bpl.n	8000952 <rgb_i2cRead+0x5a>
 800094a:	78a2      	ldrb	r2, [r4, #2]
 800094c:	f042 0201 	orr.w	r2, r2, #1
 8000950:	70a2      	strb	r2, [r4, #2]
 8000952:	0719      	lsls	r1, r3, #28
 8000954:	d503      	bpl.n	800095e <rgb_i2cRead+0x66>
 8000956:	78e2      	ldrb	r2, [r4, #3]
 8000958:	f042 0201 	orr.w	r2, r2, #1
 800095c:	70e2      	strb	r2, [r4, #3]
 800095e:	06da      	lsls	r2, r3, #27
 8000960:	d503      	bpl.n	800096a <rgb_i2cRead+0x72>
 8000962:	7922      	ldrb	r2, [r4, #4]
 8000964:	f042 0201 	orr.w	r2, r2, #1
 8000968:	7122      	strb	r2, [r4, #4]
 800096a:	0698      	lsls	r0, r3, #26
 800096c:	d503      	bpl.n	8000976 <rgb_i2cRead+0x7e>
 800096e:	7962      	ldrb	r2, [r4, #5]
 8000970:	f042 0201 	orr.w	r2, r2, #1
 8000974:	7162      	strb	r2, [r4, #5]
 8000976:	0659      	lsls	r1, r3, #25
 8000978:	d503      	bpl.n	8000982 <rgb_i2cRead+0x8a>
 800097a:	79a2      	ldrb	r2, [r4, #6]
 800097c:	f042 0201 	orr.w	r2, r2, #1
 8000980:	71a2      	strb	r2, [r4, #6]
 8000982:	061a      	lsls	r2, r3, #24
 8000984:	d503      	bpl.n	800098e <rgb_i2cRead+0x96>
 8000986:	79e3      	ldrb	r3, [r4, #7]
 8000988:	f043 0301 	orr.w	r3, r3, #1
 800098c:	71e3      	strb	r3, [r4, #7]
 800098e:	4b0b      	ldr	r3, [pc, #44]	; (80009bc <rgb_i2cRead+0xc4>)
 8000990:	8a1b      	ldrh	r3, [r3, #16]
 8000992:	07db      	lsls	r3, r3, #31
 8000994:	d503      	bpl.n	800099e <rgb_i2cRead+0xa6>
 8000996:	7a23      	ldrb	r3, [r4, #8]
 8000998:	f043 0301 	orr.w	r3, r3, #1
 800099c:	7223      	strb	r3, [r4, #8]
 800099e:	f7ff ff1b 	bl	80007d8 <RGBSetLowSCL>
 80009a2:	3d01      	subs	r5, #1
 80009a4:	d1b6      	bne.n	8000914 <rgb_i2cRead+0x1c>
 80009a6:	b10e      	cbz	r6, 80009ac <rgb_i2cRead+0xb4>
 80009a8:	f7ff feba 	bl	8000720 <RGBSetLowSDA>
 80009ac:	f7ff ff1b 	bl	80007e6 <RGBSetHighSCL>
 80009b0:	f7ff ff12 	bl	80007d8 <RGBSetLowSCL>
 80009b4:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 80009b8:	f7ff beac 	b.w	8000714 <rgb_i2c_delay>
 80009bc:	48000400 	.word	0x48000400

080009c0 <rgb_i2c_write_reg>:
 80009c0:	b570      	push	{r4, r5, r6, lr}
 80009c2:	4605      	mov	r5, r0
 80009c4:	460c      	mov	r4, r1
 80009c6:	4616      	mov	r6, r2
 80009c8:	f7ff ff58 	bl	800087c <rgb_i2cStart>
 80009cc:	4628      	mov	r0, r5
 80009ce:	f7ff ff73 	bl	80008b8 <rgb_i2cWrite>
 80009d2:	4620      	mov	r0, r4
 80009d4:	f7ff ff70 	bl	80008b8 <rgb_i2cWrite>
 80009d8:	4630      	mov	r0, r6
 80009da:	f7ff ff6d 	bl	80008b8 <rgb_i2cWrite>
 80009de:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 80009e2:	f7ff bf5a 	b.w	800089a <rgb_i2cStop>

080009e6 <rgb_i2c_read_reg>:
 80009e6:	b570      	push	{r4, r5, r6, lr}
 80009e8:	4604      	mov	r4, r0
 80009ea:	460d      	mov	r5, r1
 80009ec:	4616      	mov	r6, r2
 80009ee:	f7ff ff45 	bl	800087c <rgb_i2cStart>
 80009f2:	4620      	mov	r0, r4
 80009f4:	f7ff ff60 	bl	80008b8 <rgb_i2cWrite>
 80009f8:	4628      	mov	r0, r5
 80009fa:	f7ff ff5d 	bl	80008b8 <rgb_i2cWrite>
 80009fe:	f7ff ff3d 	bl	800087c <rgb_i2cStart>
 8000a02:	f044 0001 	orr.w	r0, r4, #1
 8000a06:	f7ff ff57 	bl	80008b8 <rgb_i2cWrite>
 8000a0a:	4631      	mov	r1, r6
 8000a0c:	2000      	movs	r0, #0
 8000a0e:	f7ff ff73 	bl	80008f8 <rgb_i2cRead>
 8000a12:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8000a16:	f7ff bf40 	b.w	800089a <rgb_i2cStop>
	...

08000a1c <rgb_init>:
 8000a1c:	4b1d      	ldr	r3, [pc, #116]	; (8000a94 <rgb_init+0x78>)
 8000a1e:	b570      	push	{r4, r5, r6, lr}
 8000a20:	2409      	movs	r4, #9
 8000a22:	2200      	movs	r2, #0
 8000a24:	3c01      	subs	r4, #1
 8000a26:	801a      	strh	r2, [r3, #0]
 8000a28:	825a      	strh	r2, [r3, #18]
 8000a2a:	849a      	strh	r2, [r3, #36]	; 0x24
 8000a2c:	f8a3 2048 	strh.w	r2, [r3, #72]	; 0x48
 8000a30:	86da      	strh	r2, [r3, #54]	; 0x36
 8000a32:	f103 0302 	add.w	r3, r3, #2
 8000a36:	d1f4      	bne.n	8000a22 <rgb_init+0x6>
 8000a38:	4d17      	ldr	r5, [pc, #92]	; (8000a98 <rgb_init+0x7c>)
 8000a3a:	f64f 76ff 	movw	r6, #65535	; 0xffff
 8000a3e:	802e      	strh	r6, [r5, #0]
 8000a40:	f7ff fed8 	bl	80007f4 <rgb_i2c_init>
 8000a44:	2072      	movs	r0, #114	; 0x72
 8000a46:	2181      	movs	r1, #129	; 0x81
 8000a48:	22ff      	movs	r2, #255	; 0xff
 8000a4a:	f7ff ffb9 	bl	80009c0 <rgb_i2c_write_reg>
 8000a4e:	2072      	movs	r0, #114	; 0x72
 8000a50:	2183      	movs	r1, #131	; 0x83
 8000a52:	22ff      	movs	r2, #255	; 0xff
 8000a54:	f7ff ffb4 	bl	80009c0 <rgb_i2c_write_reg>
 8000a58:	2072      	movs	r0, #114	; 0x72
 8000a5a:	218d      	movs	r1, #141	; 0x8d
 8000a5c:	4622      	mov	r2, r4
 8000a5e:	f7ff ffaf 	bl	80009c0 <rgb_i2c_write_reg>
 8000a62:	2072      	movs	r0, #114	; 0x72
 8000a64:	2180      	movs	r1, #128	; 0x80
 8000a66:	2203      	movs	r2, #3
 8000a68:	f7ff ffaa 	bl	80009c0 <rgb_i2c_write_reg>
 8000a6c:	2072      	movs	r0, #114	; 0x72
 8000a6e:	218f      	movs	r1, #143	; 0x8f
 8000a70:	2223      	movs	r2, #35	; 0x23
 8000a72:	f7ff ffa5 	bl	80009c0 <rgb_i2c_write_reg>
 8000a76:	f7ff fe83 	bl	8000780 <RGBSetHighSDA>
 8000a7a:	2072      	movs	r0, #114	; 0x72
 8000a7c:	2180      	movs	r1, #128	; 0x80
 8000a7e:	2207      	movs	r2, #7
 8000a80:	802c      	strh	r4, [r5, #0]
 8000a82:	f7ff ff9d 	bl	80009c0 <rgb_i2c_write_reg>
 8000a86:	2072      	movs	r0, #114	; 0x72
 8000a88:	218e      	movs	r1, #142	; 0x8e
 8000a8a:	2208      	movs	r2, #8
 8000a8c:	f7ff ff98 	bl	80009c0 <rgb_i2c_write_reg>
 8000a90:	802e      	strh	r6, [r5, #0]
 8000a92:	bd70      	pop	{r4, r5, r6, pc}
 8000a94:	20000400 	.word	0x20000400
 8000a98:	20000d5c 	.word	0x20000d5c

08000a9c <rgb_read>:
 8000a9c:	b538      	push	{r3, r4, r5, lr}
 8000a9e:	f7ff feed 	bl	800087c <rgb_i2cStart>
 8000aa2:	2072      	movs	r0, #114	; 0x72
 8000aa4:	f7ff ff08 	bl	80008b8 <rgb_i2cWrite>
 8000aa8:	20b4      	movs	r0, #180	; 0xb4
 8000aaa:	f7ff ff05 	bl	80008b8 <rgb_i2cWrite>
 8000aae:	f7ff fee5 	bl	800087c <rgb_i2cStart>
 8000ab2:	2073      	movs	r0, #115	; 0x73
 8000ab4:	f7ff ff00 	bl	80008b8 <rgb_i2cWrite>
 8000ab8:	2001      	movs	r0, #1
 8000aba:	4946      	ldr	r1, [pc, #280]	; (8000bd4 <rgb_read+0x138>)
 8000abc:	f7ff ff1c 	bl	80008f8 <rgb_i2cRead>
 8000ac0:	2300      	movs	r3, #0
 8000ac2:	4d45      	ldr	r5, [pc, #276]	; (8000bd8 <rgb_read+0x13c>)
 8000ac4:	4c43      	ldr	r4, [pc, #268]	; (8000bd4 <rgb_read+0x138>)
 8000ac6:	eb05 0243 	add.w	r2, r5, r3, lsl #1
 8000aca:	5d19      	ldrb	r1, [r3, r4]
 8000acc:	86d1      	strh	r1, [r2, #54]	; 0x36
 8000ace:	3301      	adds	r3, #1
 8000ad0:	2b09      	cmp	r3, #9
 8000ad2:	d1f6      	bne.n	8000ac2 <rgb_read+0x26>
 8000ad4:	2001      	movs	r0, #1
 8000ad6:	4621      	mov	r1, r4
 8000ad8:	f7ff ff0e 	bl	80008f8 <rgb_i2cRead>
 8000adc:	f105 0236 	add.w	r2, r5, #54	; 0x36
 8000ae0:	2300      	movs	r3, #0
 8000ae2:	8811      	ldrh	r1, [r2, #0]
 8000ae4:	5ce0      	ldrb	r0, [r4, r3]
 8000ae6:	3301      	adds	r3, #1
 8000ae8:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 8000aec:	2b09      	cmp	r3, #9
 8000aee:	f822 1b02 	strh.w	r1, [r2], #2
 8000af2:	d1f6      	bne.n	8000ae2 <rgb_read+0x46>
 8000af4:	2001      	movs	r0, #1
 8000af6:	4937      	ldr	r1, [pc, #220]	; (8000bd4 <rgb_read+0x138>)
 8000af8:	f7ff fefe 	bl	80008f8 <rgb_i2cRead>
 8000afc:	2300      	movs	r3, #0
 8000afe:	5ce2      	ldrb	r2, [r4, r3]
 8000b00:	f825 2013 	strh.w	r2, [r5, r3, lsl #1]
 8000b04:	3301      	adds	r3, #1
 8000b06:	2b09      	cmp	r3, #9
 8000b08:	d1f9      	bne.n	8000afe <rgb_read+0x62>
 8000b0a:	2001      	movs	r0, #1
 8000b0c:	4931      	ldr	r1, [pc, #196]	; (8000bd4 <rgb_read+0x138>)
 8000b0e:	f7ff fef3 	bl	80008f8 <rgb_i2cRead>
 8000b12:	4a32      	ldr	r2, [pc, #200]	; (8000bdc <rgb_read+0x140>)
 8000b14:	2300      	movs	r3, #0
 8000b16:	5ce0      	ldrb	r0, [r4, r3]
 8000b18:	8851      	ldrh	r1, [r2, #2]
 8000b1a:	3301      	adds	r3, #1
 8000b1c:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 8000b20:	2b09      	cmp	r3, #9
 8000b22:	f822 1f02 	strh.w	r1, [r2, #2]!
 8000b26:	d1f6      	bne.n	8000b16 <rgb_read+0x7a>
 8000b28:	2001      	movs	r0, #1
 8000b2a:	492a      	ldr	r1, [pc, #168]	; (8000bd4 <rgb_read+0x138>)
 8000b2c:	f7ff fee4 	bl	80008f8 <rgb_i2cRead>
 8000b30:	2300      	movs	r3, #0
 8000b32:	eb05 0243 	add.w	r2, r5, r3, lsl #1
 8000b36:	5ce1      	ldrb	r1, [r4, r3]
 8000b38:	8251      	strh	r1, [r2, #18]
 8000b3a:	3301      	adds	r3, #1
 8000b3c:	2b09      	cmp	r3, #9
 8000b3e:	d1f8      	bne.n	8000b32 <rgb_read+0x96>
 8000b40:	2001      	movs	r0, #1
 8000b42:	4924      	ldr	r1, [pc, #144]	; (8000bd4 <rgb_read+0x138>)
 8000b44:	f7ff fed8 	bl	80008f8 <rgb_i2cRead>
 8000b48:	4a25      	ldr	r2, [pc, #148]	; (8000be0 <rgb_read+0x144>)
 8000b4a:	2300      	movs	r3, #0
 8000b4c:	8811      	ldrh	r1, [r2, #0]
 8000b4e:	5ce0      	ldrb	r0, [r4, r3]
 8000b50:	3301      	adds	r3, #1
 8000b52:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 8000b56:	2b09      	cmp	r3, #9
 8000b58:	f822 1b02 	strh.w	r1, [r2], #2
 8000b5c:	d1f6      	bne.n	8000b4c <rgb_read+0xb0>
 8000b5e:	2001      	movs	r0, #1
 8000b60:	491c      	ldr	r1, [pc, #112]	; (8000bd4 <rgb_read+0x138>)
 8000b62:	f7ff fec9 	bl	80008f8 <rgb_i2cRead>
 8000b66:	2300      	movs	r3, #0
 8000b68:	eb05 0243 	add.w	r2, r5, r3, lsl #1
 8000b6c:	5ce1      	ldrb	r1, [r4, r3]
 8000b6e:	8491      	strh	r1, [r2, #36]	; 0x24
 8000b70:	3301      	adds	r3, #1
 8000b72:	2b09      	cmp	r3, #9
 8000b74:	d1f8      	bne.n	8000b68 <rgb_read+0xcc>
 8000b76:	2001      	movs	r0, #1
 8000b78:	4916      	ldr	r1, [pc, #88]	; (8000bd4 <rgb_read+0x138>)
 8000b7a:	f7ff febd 	bl	80008f8 <rgb_i2cRead>
 8000b7e:	4a19      	ldr	r2, [pc, #100]	; (8000be4 <rgb_read+0x148>)
 8000b80:	2300      	movs	r3, #0
 8000b82:	8811      	ldrh	r1, [r2, #0]
 8000b84:	5ce0      	ldrb	r0, [r4, r3]
 8000b86:	3301      	adds	r3, #1
 8000b88:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 8000b8c:	2b09      	cmp	r3, #9
 8000b8e:	f822 1b02 	strh.w	r1, [r2], #2
 8000b92:	d1f6      	bne.n	8000b82 <rgb_read+0xe6>
 8000b94:	2001      	movs	r0, #1
 8000b96:	490f      	ldr	r1, [pc, #60]	; (8000bd4 <rgb_read+0x138>)
 8000b98:	f7ff feae 	bl	80008f8 <rgb_i2cRead>
 8000b9c:	2300      	movs	r3, #0
 8000b9e:	eb05 0243 	add.w	r2, r5, r3, lsl #1
 8000ba2:	5ce1      	ldrb	r1, [r4, r3]
 8000ba4:	f8a2 1048 	strh.w	r1, [r2, #72]	; 0x48
 8000ba8:	3301      	adds	r3, #1
 8000baa:	2b09      	cmp	r3, #9
 8000bac:	d1f7      	bne.n	8000b9e <rgb_read+0x102>
 8000bae:	2000      	movs	r0, #0
 8000bb0:	4908      	ldr	r1, [pc, #32]	; (8000bd4 <rgb_read+0x138>)
 8000bb2:	f7ff fea1 	bl	80008f8 <rgb_i2cRead>
 8000bb6:	4a0c      	ldr	r2, [pc, #48]	; (8000be8 <rgb_read+0x14c>)
 8000bb8:	2300      	movs	r3, #0
 8000bba:	8811      	ldrh	r1, [r2, #0]
 8000bbc:	5ce0      	ldrb	r0, [r4, r3]
 8000bbe:	3301      	adds	r3, #1
 8000bc0:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 8000bc4:	2b09      	cmp	r3, #9
 8000bc6:	f822 1b02 	strh.w	r1, [r2], #2
 8000bca:	d1f6      	bne.n	8000bba <rgb_read+0x11e>
 8000bcc:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8000bd0:	f7ff be63 	b.w	800089a <rgb_i2cStop>
 8000bd4:	20000d5e 	.word	0x20000d5e
 8000bd8:	20000400 	.word	0x20000400
 8000bdc:	200003fe 	.word	0x200003fe
 8000be0:	20000412 	.word	0x20000412
 8000be4:	20000424 	.word	0x20000424
 8000be8:	20000448 	.word	0x20000448

08000bec <line_sensor_read.part.0>:
 8000bec:	4980      	ldr	r1, [pc, #512]	; (8000df0 <line_sensor_read.part.0+0x204>)
 8000bee:	4a81      	ldr	r2, [pc, #516]	; (8000df4 <line_sensor_read.part.0+0x208>)
 8000bf0:	6a4b      	ldr	r3, [r1, #36]	; 0x24
 8000bf2:	f9b2 0058 	ldrsh.w	r0, [r2, #88]	; 0x58
 8000bf6:	ebc3 03c3 	rsb	r3, r3, r3, lsl #3
 8000bfa:	4403      	add	r3, r0
 8000bfc:	2008      	movs	r0, #8
 8000bfe:	fb93 f3f0 	sdiv	r3, r3, r0
 8000c02:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8000c06:	624b      	str	r3, [r1, #36]	; 0x24
 8000c08:	2300      	movs	r3, #0
 8000c0a:	461c      	mov	r4, r3
 8000c0c:	461d      	mov	r5, r3
 8000c0e:	461e      	mov	r6, r3
 8000c10:	461f      	mov	r7, r3
 8000c12:	4610      	mov	r0, r2
 8000c14:	f8df c1e4 	ldr.w	ip, [pc, #484]	; 8000dfc <line_sensor_read.part.0+0x210>
 8000c18:	f8b2 a036 	ldrh.w	sl, [r2, #54]	; 0x36
 8000c1c:	f853 c00c 	ldr.w	ip, [r3, ip]
 8000c20:	f8b2 9000 	ldrh.w	r9, [r2]
 8000c24:	f8b2 8012 	ldrh.w	r8, [r2, #18]
 8000c28:	f8b2 b024 	ldrh.w	fp, [r2, #36]	; 0x24
 8000c2c:	ebcc 0a0a 	rsb	sl, ip, sl
 8000c30:	f8df c1cc 	ldr.w	ip, [pc, #460]	; 8000e00 <line_sensor_read.part.0+0x214>
 8000c34:	f853 c00c 	ldr.w	ip, [r3, ip]
 8000c38:	ebcc 0909 	rsb	r9, ip, r9
 8000c3c:	f8df c1c4 	ldr.w	ip, [pc, #452]	; 8000e04 <line_sensor_read.part.0+0x218>
 8000c40:	f853 c00c 	ldr.w	ip, [r3, ip]
 8000c44:	ebcc 0808 	rsb	r8, ip, r8
 8000c48:	f8df c1bc 	ldr.w	ip, [pc, #444]	; 8000e08 <line_sensor_read.part.0+0x21c>
 8000c4c:	f853 c00c 	ldr.w	ip, [r3, ip]
 8000c50:	3304      	adds	r3, #4
 8000c52:	ebcc 0c0b 	rsb	ip, ip, fp
 8000c56:	fa1f fa8a 	uxth.w	sl, sl
 8000c5a:	fa1f f989 	uxth.w	r9, r9
 8000c5e:	fa1f f888 	uxth.w	r8, r8
 8000c62:	fa1f fc8c 	uxth.w	ip, ip
 8000c66:	2b20      	cmp	r3, #32
 8000c68:	f8a2 a036 	strh.w	sl, [r2, #54]	; 0x36
 8000c6c:	f8a2 9000 	strh.w	r9, [r2]
 8000c70:	f8a2 8012 	strh.w	r8, [r2, #18]
 8000c74:	f8a2 c024 	strh.w	ip, [r2, #36]	; 0x24
 8000c78:	fa07 f78a 	sxtah	r7, r7, sl
 8000c7c:	fa06 f689 	sxtah	r6, r6, r9
 8000c80:	fa05 f588 	sxtah	r5, r5, r8
 8000c84:	fa04 f48c 	sxtah	r4, r4, ip
 8000c88:	f102 0202 	add.w	r2, r2, #2
 8000c8c:	d1c2      	bne.n	8000c14 <line_sensor_read.part.0+0x28>
 8000c8e:	2308      	movs	r3, #8
 8000c90:	fb97 f7f3 	sdiv	r7, r7, r3
 8000c94:	fb96 f6f3 	sdiv	r6, r6, r3
 8000c98:	fb95 f5f3 	sdiv	r5, r5, r3
 8000c9c:	fb94 f4f3 	sdiv	r4, r4, r3
 8000ca0:	4b54      	ldr	r3, [pc, #336]	; (8000df4 <line_sensor_read.part.0+0x208>)
 8000ca2:	2200      	movs	r2, #0
 8000ca4:	f8b3 c036 	ldrh.w	ip, [r3, #54]	; 0x36
 8000ca8:	ebcc 0c07 	rsb	ip, ip, r7
 8000cac:	f8a3 c036 	strh.w	ip, [r3, #54]	; 0x36
 8000cb0:	f832 c000 	ldrh.w	ip, [r2, r0]
 8000cb4:	ebc6 0c0c 	rsb	ip, r6, ip
 8000cb8:	f822 c000 	strh.w	ip, [r2, r0]
 8000cbc:	f8b3 c012 	ldrh.w	ip, [r3, #18]
 8000cc0:	ebc5 0c0c 	rsb	ip, r5, ip
 8000cc4:	f8a3 c012 	strh.w	ip, [r3, #18]
 8000cc8:	f8b3 c024 	ldrh.w	ip, [r3, #36]	; 0x24
 8000ccc:	3202      	adds	r2, #2
 8000cce:	ebc4 0c0c 	rsb	ip, r4, ip
 8000cd2:	2a10      	cmp	r2, #16
 8000cd4:	f8a3 c024 	strh.w	ip, [r3, #36]	; 0x24
 8000cd8:	f103 0302 	add.w	r3, r3, #2
 8000cdc:	d1e2      	bne.n	8000ca4 <line_sensor_read.part.0+0xb8>
 8000cde:	2300      	movs	r3, #0
 8000ce0:	181d      	adds	r5, r3, r0
 8000ce2:	18cc      	adds	r4, r1, r3
 8000ce4:	3302      	adds	r3, #2
 8000ce6:	8eed      	ldrh	r5, [r5, #54]	; 0x36
 8000ce8:	4a41      	ldr	r2, [pc, #260]	; (8000df0 <line_sensor_read.part.0+0x204>)
 8000cea:	8165      	strh	r5, [r4, #10]
 8000cec:	2b10      	cmp	r3, #16
 8000cee:	d1f7      	bne.n	8000ce0 <line_sensor_read.part.0+0xf4>
 8000cf0:	f8b2 c010 	ldrh.w	ip, [r2, #16]
 8000cf4:	8a56      	ldrh	r6, [r2, #18]
 8000cf6:	fa0f f58c 	sxth.w	r5, ip
 8000cfa:	b230      	sxth	r0, r6
 8000cfc:	182a      	adds	r2, r5, r0
 8000cfe:	d00c      	beq.n	8000d1a <line_sensor_read.part.0+0x12e>
 8000d00:	4c3d      	ldr	r4, [pc, #244]	; (8000df8 <line_sensor_read.part.0+0x20c>)
 8000d02:	8923      	ldrh	r3, [r4, #8]
 8000d04:	88e7      	ldrh	r7, [r4, #6]
 8000d06:	fb16 f303 	smulbb	r3, r6, r3
 8000d0a:	fb1c 3307 	smlabb	r3, ip, r7, r3
 8000d0e:	2402      	movs	r4, #2
 8000d10:	fb93 f3f2 	sdiv	r3, r3, r2
 8000d14:	fb92 f2f4 	sdiv	r2, r2, r4
 8000d18:	e000      	b.n	8000d1c <line_sensor_read.part.0+0x130>
 8000d1a:	4613      	mov	r3, r2
 8000d1c:	8a8f      	ldrh	r7, [r1, #20]
 8000d1e:	b23c      	sxth	r4, r7
 8000d20:	1820      	adds	r0, r4, r0
 8000d22:	d00b      	beq.n	8000d3c <line_sensor_read.part.0+0x150>
 8000d24:	2c96      	cmp	r4, #150	; 0x96
 8000d26:	dd09      	ble.n	8000d3c <line_sensor_read.part.0+0x150>
 8000d28:	4a33      	ldr	r2, [pc, #204]	; (8000df8 <line_sensor_read.part.0+0x20c>)
 8000d2a:	8953      	ldrh	r3, [r2, #10]
 8000d2c:	8912      	ldrh	r2, [r2, #8]
 8000d2e:	fb16 f602 	smulbb	r6, r6, r2
 8000d32:	fb17 6303 	smlabb	r3, r7, r3, r6
 8000d36:	fb93 f3f0 	sdiv	r3, r3, r0
 8000d3a:	4622      	mov	r2, r4
 8000d3c:	89ce      	ldrh	r6, [r1, #14]
 8000d3e:	b230      	sxth	r0, r6
 8000d40:	1945      	adds	r5, r0, r5
 8000d42:	d00b      	beq.n	8000d5c <line_sensor_read.part.0+0x170>
 8000d44:	2896      	cmp	r0, #150	; 0x96
 8000d46:	dd09      	ble.n	8000d5c <line_sensor_read.part.0+0x170>
 8000d48:	4a2b      	ldr	r2, [pc, #172]	; (8000df8 <line_sensor_read.part.0+0x20c>)
 8000d4a:	8893      	ldrh	r3, [r2, #4]
 8000d4c:	88d2      	ldrh	r2, [r2, #6]
 8000d4e:	fb1c fc02 	smulbb	ip, ip, r2
 8000d52:	fb16 c303 	smlabb	r3, r6, r3, ip
 8000d56:	fb93 f3f5 	sdiv	r3, r3, r5
 8000d5a:	4602      	mov	r2, r0
 8000d5c:	f8b1 c016 	ldrh.w	ip, [r1, #22]
 8000d60:	fa0f f58c 	sxth.w	r5, ip
 8000d64:	192c      	adds	r4, r5, r4
 8000d66:	d00b      	beq.n	8000d80 <line_sensor_read.part.0+0x194>
 8000d68:	2d96      	cmp	r5, #150	; 0x96
 8000d6a:	dd09      	ble.n	8000d80 <line_sensor_read.part.0+0x194>
 8000d6c:	4a22      	ldr	r2, [pc, #136]	; (8000df8 <line_sensor_read.part.0+0x20c>)
 8000d6e:	8993      	ldrh	r3, [r2, #12]
 8000d70:	8952      	ldrh	r2, [r2, #10]
 8000d72:	fb17 f702 	smulbb	r7, r7, r2
 8000d76:	fb1c 7303 	smlabb	r3, ip, r3, r7
 8000d7a:	fb93 f3f4 	sdiv	r3, r3, r4
 8000d7e:	462a      	mov	r2, r5
 8000d80:	898d      	ldrh	r5, [r1, #12]
 8000d82:	b22c      	sxth	r4, r5
 8000d84:	1820      	adds	r0, r4, r0
 8000d86:	d00b      	beq.n	8000da0 <line_sensor_read.part.0+0x1b4>
 8000d88:	2c96      	cmp	r4, #150	; 0x96
 8000d8a:	dd09      	ble.n	8000da0 <line_sensor_read.part.0+0x1b4>
 8000d8c:	4a1a      	ldr	r2, [pc, #104]	; (8000df8 <line_sensor_read.part.0+0x20c>)
 8000d8e:	8853      	ldrh	r3, [r2, #2]
 8000d90:	8892      	ldrh	r2, [r2, #4]
 8000d92:	fb16 f602 	smulbb	r6, r6, r2
 8000d96:	fb15 6303 	smlabb	r3, r5, r3, r6
 8000d9a:	fb93 f3f0 	sdiv	r3, r3, r0
 8000d9e:	4622      	mov	r2, r4
 8000da0:	f9b1 0018 	ldrsh.w	r0, [r1, #24]
 8000da4:	2896      	cmp	r0, #150	; 0x96
 8000da6:	dd03      	ble.n	8000db0 <line_sensor_read.part.0+0x1c4>
 8000da8:	4b13      	ldr	r3, [pc, #76]	; (8000df8 <line_sensor_read.part.0+0x20c>)
 8000daa:	f9b3 300e 	ldrsh.w	r3, [r3, #14]
 8000dae:	4602      	mov	r2, r0
 8000db0:	f9b1 000a 	ldrsh.w	r0, [r1, #10]
 8000db4:	2896      	cmp	r0, #150	; 0x96
 8000db6:	dd03      	ble.n	8000dc0 <line_sensor_read.part.0+0x1d4>
 8000db8:	4b0f      	ldr	r3, [pc, #60]	; (8000df8 <line_sensor_read.part.0+0x20c>)
 8000dba:	f9b3 3000 	ldrsh.w	r3, [r3]
 8000dbe:	e001      	b.n	8000dc4 <line_sensor_read.part.0+0x1d8>
 8000dc0:	2a96      	cmp	r2, #150	; 0x96
 8000dc2:	dd0f      	ble.n	8000de4 <line_sensor_read.part.0+0x1f8>
 8000dc4:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
 8000dc8:	dc05      	bgt.n	8000dd6 <line_sensor_read.part.0+0x1ea>
 8000dca:	f06f 02ff 	mvn.w	r2, #255	; 0xff
 8000dce:	4293      	cmp	r3, r2
 8000dd0:	bfb8      	it	lt
 8000dd2:	4613      	movlt	r3, r2
 8000dd4:	e001      	b.n	8000dda <line_sensor_read.part.0+0x1ee>
 8000dd6:	f44f 7380 	mov.w	r3, #256	; 0x100
 8000dda:	620b      	str	r3, [r1, #32]
 8000ddc:	2308      	movs	r3, #8
 8000dde:	770b      	strb	r3, [r1, #28]
 8000de0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8000de4:	4b02      	ldr	r3, [pc, #8]	; (8000df0 <line_sensor_read.part.0+0x204>)
 8000de6:	2200      	movs	r2, #0
 8000de8:	771a      	strb	r2, [r3, #28]
 8000dea:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8000dee:	bf00      	nop
 8000df0:	2000045c 	.word	0x2000045c
 8000df4:	20000400 	.word	0x20000400
 8000df8:	20000110 	.word	0x20000110
 8000dfc:	20000164 	.word	0x20000164
 8000e00:	200001c4 	.word	0x200001c4
 8000e04:	200001a4 	.word	0x200001a4
 8000e08:	20000184 	.word	0x20000184

08000e0c <line_sensor_init>:
 8000e0c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8000e10:	2064      	movs	r0, #100	; 0x64
 8000e12:	f001 fecf 	bl	8002bb4 <timer_delay_ms>
 8000e16:	2400      	movs	r4, #0
 8000e18:	f7ff fe00 	bl	8000a1c <rgb_init>
 8000e1c:	f7ff fe3e 	bl	8000a9c <rgb_read>
 8000e20:	2072      	movs	r0, #114	; 0x72
 8000e22:	2192      	movs	r1, #146	; 0x92
 8000e24:	4a2e      	ldr	r2, [pc, #184]	; (8000ee0 <line_sensor_init+0xd4>)
 8000e26:	f7ff fdde 	bl	80009e6 <rgb_i2c_read_reg>
 8000e2a:	4623      	mov	r3, r4
 8000e2c:	4a2d      	ldr	r2, [pc, #180]	; (8000ee4 <line_sensor_init+0xd8>)
 8000e2e:	1899      	adds	r1, r3, r2
 8000e30:	4616      	mov	r6, r2
 8000e32:	7849      	ldrb	r1, [r1, #1]
 8000e34:	2969      	cmp	r1, #105	; 0x69
 8000e36:	d002      	beq.n	8000e3e <line_sensor_init+0x32>
 8000e38:	2201      	movs	r2, #1
 8000e3a:	409a      	lsls	r2, r3
 8000e3c:	4314      	orrs	r4, r2
 8000e3e:	3301      	adds	r3, #1
 8000e40:	2b09      	cmp	r3, #9
 8000e42:	d1f3      	bne.n	8000e2c <line_sensor_init+0x20>
 8000e44:	2100      	movs	r1, #0
 8000e46:	1875      	adds	r5, r6, r1
 8000e48:	3102      	adds	r1, #2
 8000e4a:	2200      	movs	r2, #0
 8000e4c:	2910      	cmp	r1, #16
 8000e4e:	4b25      	ldr	r3, [pc, #148]	; (8000ee4 <line_sensor_init+0xd8>)
 8000e50:	816a      	strh	r2, [r5, #10]
 8000e52:	d1f8      	bne.n	8000e46 <line_sensor_init+0x3a>
 8000e54:	701a      	strb	r2, [r3, #0]
 8000e56:	771a      	strb	r2, [r3, #28]
 8000e58:	f883 2028 	strb.w	r2, [r3, #40]	; 0x28
 8000e5c:	621a      	str	r2, [r3, #32]
 8000e5e:	625a      	str	r2, [r3, #36]	; 0x24
 8000e60:	f7ff fe1c 	bl	8000a9c <rgb_read>
 8000e64:	2520      	movs	r5, #32
 8000e66:	f7ff fe19 	bl	8000a9c <rgb_read>
 8000e6a:	491f      	ldr	r1, [pc, #124]	; (8000ee8 <line_sensor_init+0xdc>)
 8000e6c:	2200      	movs	r2, #0
 8000e6e:	f8df c088 	ldr.w	ip, [pc, #136]	; 8000ef8 <line_sensor_init+0xec>
 8000e72:	f9b1 0036 	ldrsh.w	r0, [r1, #54]	; 0x36
 8000e76:	f852 300c 	ldr.w	r3, [r2, ip]
 8000e7a:	4e1c      	ldr	r6, [pc, #112]	; (8000eec <line_sensor_init+0xe0>)
 8000e7c:	f9b1 7012 	ldrsh.w	r7, [r1, #18]
 8000e80:	f9b1 8024 	ldrsh.w	r8, [r1, #36]	; 0x24
 8000e84:	4403      	add	r3, r0
 8000e86:	f842 300c 	str.w	r3, [r2, ip]
 8000e8a:	f9b1 0000 	ldrsh.w	r0, [r1]
 8000e8e:	5993      	ldr	r3, [r2, r6]
 8000e90:	4403      	add	r3, r0
 8000e92:	4817      	ldr	r0, [pc, #92]	; (8000ef0 <line_sensor_init+0xe4>)
 8000e94:	5193      	str	r3, [r2, r6]
 8000e96:	5813      	ldr	r3, [r2, r0]
 8000e98:	443b      	add	r3, r7
 8000e9a:	5013      	str	r3, [r2, r0]
 8000e9c:	4b15      	ldr	r3, [pc, #84]	; (8000ef4 <line_sensor_init+0xe8>)
 8000e9e:	58d7      	ldr	r7, [r2, r3]
 8000ea0:	4447      	add	r7, r8
 8000ea2:	50d7      	str	r7, [r2, r3]
 8000ea4:	3204      	adds	r2, #4
 8000ea6:	2a20      	cmp	r2, #32
 8000ea8:	f101 0102 	add.w	r1, r1, #2
 8000eac:	461f      	mov	r7, r3
 8000eae:	d1de      	bne.n	8000e6e <line_sensor_init+0x62>
 8000eb0:	3d01      	subs	r5, #1
 8000eb2:	d1d8      	bne.n	8000e66 <line_sensor_init+0x5a>
 8000eb4:	462b      	mov	r3, r5
 8000eb6:	f85c 2003 	ldr.w	r2, [ip, r3]
 8000eba:	0952      	lsrs	r2, r2, #5
 8000ebc:	f84c 2003 	str.w	r2, [ip, r3]
 8000ec0:	58f2      	ldr	r2, [r6, r3]
 8000ec2:	0952      	lsrs	r2, r2, #5
 8000ec4:	50f2      	str	r2, [r6, r3]
 8000ec6:	58c2      	ldr	r2, [r0, r3]
 8000ec8:	0952      	lsrs	r2, r2, #5
 8000eca:	50c2      	str	r2, [r0, r3]
 8000ecc:	58fa      	ldr	r2, [r7, r3]
 8000ece:	0952      	lsrs	r2, r2, #5
 8000ed0:	50fa      	str	r2, [r7, r3]
 8000ed2:	3304      	adds	r3, #4
 8000ed4:	2b20      	cmp	r3, #32
 8000ed6:	d1ee      	bne.n	8000eb6 <line_sensor_init+0xaa>
 8000ed8:	4620      	mov	r0, r4
 8000eda:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8000ede:	bf00      	nop
 8000ee0:	2000045d 	.word	0x2000045d
 8000ee4:	2000045c 	.word	0x2000045c
 8000ee8:	20000400 	.word	0x20000400
 8000eec:	200001c4 	.word	0x200001c4
 8000ef0:	200001a4 	.word	0x200001a4
 8000ef4:	20000184 	.word	0x20000184
 8000ef8:	20000164 	.word	0x20000164

08000efc <line_sensor_read>:
 8000efc:	b510      	push	{r4, lr}
 8000efe:	4604      	mov	r4, r0
 8000f00:	f7ff fdcc 	bl	8000a9c <rgb_read>
 8000f04:	b91c      	cbnz	r4, 8000f0e <line_sensor_read+0x12>
 8000f06:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000f0a:	f7ff be6f 	b.w	8000bec <line_sensor_read.part.0>
 8000f0e:	bd10      	pop	{r4, pc}

08000f10 <lsm9ds0_read>:
 8000f10:	b538      	push	{r3, r4, r5, lr}
 8000f12:	2128      	movs	r1, #40	; 0x28
 8000f14:	20d4      	movs	r0, #212	; 0xd4
 8000f16:	f000 fe5a 	bl	8001bce <i2c_read_reg>
 8000f1a:	2129      	movs	r1, #41	; 0x29
 8000f1c:	4605      	mov	r5, r0
 8000f1e:	20d4      	movs	r0, #212	; 0xd4
 8000f20:	f000 fe55 	bl	8001bce <i2c_read_reg>
 8000f24:	4c38      	ldr	r4, [pc, #224]	; (8001008 <lsm9ds0_read+0xf8>)
 8000f26:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000f2a:	81a0      	strh	r0, [r4, #12]
 8000f2c:	212a      	movs	r1, #42	; 0x2a
 8000f2e:	20d4      	movs	r0, #212	; 0xd4
 8000f30:	f000 fe4d 	bl	8001bce <i2c_read_reg>
 8000f34:	212b      	movs	r1, #43	; 0x2b
 8000f36:	4605      	mov	r5, r0
 8000f38:	20d4      	movs	r0, #212	; 0xd4
 8000f3a:	f000 fe48 	bl	8001bce <i2c_read_reg>
 8000f3e:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000f42:	81e0      	strh	r0, [r4, #14]
 8000f44:	212c      	movs	r1, #44	; 0x2c
 8000f46:	20d4      	movs	r0, #212	; 0xd4
 8000f48:	f000 fe41 	bl	8001bce <i2c_read_reg>
 8000f4c:	212d      	movs	r1, #45	; 0x2d
 8000f4e:	4605      	mov	r5, r0
 8000f50:	20d4      	movs	r0, #212	; 0xd4
 8000f52:	f000 fe3c 	bl	8001bce <i2c_read_reg>
 8000f56:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000f5a:	8220      	strh	r0, [r4, #16]
 8000f5c:	2108      	movs	r1, #8
 8000f5e:	203c      	movs	r0, #60	; 0x3c
 8000f60:	f000 fe35 	bl	8001bce <i2c_read_reg>
 8000f64:	2109      	movs	r1, #9
 8000f66:	4605      	mov	r5, r0
 8000f68:	203c      	movs	r0, #60	; 0x3c
 8000f6a:	f000 fe30 	bl	8001bce <i2c_read_reg>
 8000f6e:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000f72:	80e0      	strh	r0, [r4, #6]
 8000f74:	210a      	movs	r1, #10
 8000f76:	203c      	movs	r0, #60	; 0x3c
 8000f78:	f000 fe29 	bl	8001bce <i2c_read_reg>
 8000f7c:	210b      	movs	r1, #11
 8000f7e:	4605      	mov	r5, r0
 8000f80:	203c      	movs	r0, #60	; 0x3c
 8000f82:	f000 fe24 	bl	8001bce <i2c_read_reg>
 8000f86:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000f8a:	8120      	strh	r0, [r4, #8]
 8000f8c:	210c      	movs	r1, #12
 8000f8e:	203c      	movs	r0, #60	; 0x3c
 8000f90:	f000 fe1d 	bl	8001bce <i2c_read_reg>
 8000f94:	210d      	movs	r1, #13
 8000f96:	4605      	mov	r5, r0
 8000f98:	203c      	movs	r0, #60	; 0x3c
 8000f9a:	f000 fe18 	bl	8001bce <i2c_read_reg>
 8000f9e:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000fa2:	8160      	strh	r0, [r4, #10]
 8000fa4:	2128      	movs	r1, #40	; 0x28
 8000fa6:	203c      	movs	r0, #60	; 0x3c
 8000fa8:	f000 fe11 	bl	8001bce <i2c_read_reg>
 8000fac:	2129      	movs	r1, #41	; 0x29
 8000fae:	4605      	mov	r5, r0
 8000fb0:	203c      	movs	r0, #60	; 0x3c
 8000fb2:	f000 fe0c 	bl	8001bce <i2c_read_reg>
 8000fb6:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000fba:	8020      	strh	r0, [r4, #0]
 8000fbc:	212a      	movs	r1, #42	; 0x2a
 8000fbe:	203c      	movs	r0, #60	; 0x3c
 8000fc0:	f000 fe05 	bl	8001bce <i2c_read_reg>
 8000fc4:	212b      	movs	r1, #43	; 0x2b
 8000fc6:	4605      	mov	r5, r0
 8000fc8:	203c      	movs	r0, #60	; 0x3c
 8000fca:	f000 fe00 	bl	8001bce <i2c_read_reg>
 8000fce:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000fd2:	8060      	strh	r0, [r4, #2]
 8000fd4:	212c      	movs	r1, #44	; 0x2c
 8000fd6:	203c      	movs	r0, #60	; 0x3c
 8000fd8:	f000 fdf9 	bl	8001bce <i2c_read_reg>
 8000fdc:	212d      	movs	r1, #45	; 0x2d
 8000fde:	4605      	mov	r5, r0
 8000fe0:	203c      	movs	r0, #60	; 0x3c
 8000fe2:	f000 fdf4 	bl	8001bce <i2c_read_reg>
 8000fe6:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000fea:	80a0      	strh	r0, [r4, #4]
 8000fec:	2105      	movs	r1, #5
 8000fee:	203c      	movs	r0, #60	; 0x3c
 8000ff0:	f000 fded 	bl	8001bce <i2c_read_reg>
 8000ff4:	2106      	movs	r1, #6
 8000ff6:	4605      	mov	r5, r0
 8000ff8:	203c      	movs	r0, #60	; 0x3c
 8000ffa:	f000 fde8 	bl	8001bce <i2c_read_reg>
 8000ffe:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8001002:	8320      	strh	r0, [r4, #24]
 8001004:	bd38      	pop	{r3, r4, r5, pc}
 8001006:	bf00      	nop
 8001008:	200001e4 	.word	0x200001e4

0800100c <lsm9ds0_init>:
 800100c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8001010:	4d34      	ldr	r5, [pc, #208]	; (80010e4 <lsm9ds0_init+0xd8>)
 8001012:	2400      	movs	r4, #0
 8001014:	20d4      	movs	r0, #212	; 0xd4
 8001016:	210f      	movs	r1, #15
 8001018:	802c      	strh	r4, [r5, #0]
 800101a:	806c      	strh	r4, [r5, #2]
 800101c:	80ac      	strh	r4, [r5, #4]
 800101e:	80ec      	strh	r4, [r5, #6]
 8001020:	812c      	strh	r4, [r5, #8]
 8001022:	816c      	strh	r4, [r5, #10]
 8001024:	81ac      	strh	r4, [r5, #12]
 8001026:	81ec      	strh	r4, [r5, #14]
 8001028:	822c      	strh	r4, [r5, #16]
 800102a:	826c      	strh	r4, [r5, #18]
 800102c:	82ac      	strh	r4, [r5, #20]
 800102e:	82ec      	strh	r4, [r5, #22]
 8001030:	832c      	strh	r4, [r5, #24]
 8001032:	f000 fdcc 	bl	8001bce <i2c_read_reg>
 8001036:	28d4      	cmp	r0, #212	; 0xd4
 8001038:	4606      	mov	r6, r0
 800103a:	d14e      	bne.n	80010da <lsm9ds0_init+0xce>
 800103c:	203c      	movs	r0, #60	; 0x3c
 800103e:	210f      	movs	r1, #15
 8001040:	f000 fdc5 	bl	8001bce <i2c_read_reg>
 8001044:	2849      	cmp	r0, #73	; 0x49
 8001046:	bf18      	it	ne
 8001048:	2602      	movne	r6, #2
 800104a:	d147      	bne.n	80010dc <lsm9ds0_init+0xd0>
 800104c:	4630      	mov	r0, r6
 800104e:	2120      	movs	r1, #32
 8001050:	22ff      	movs	r2, #255	; 0xff
 8001052:	f000 fda9 	bl	8001ba8 <i2c_write_reg>
 8001056:	4630      	mov	r0, r6
 8001058:	2123      	movs	r1, #35	; 0x23
 800105a:	2218      	movs	r2, #24
 800105c:	f000 fda4 	bl	8001ba8 <i2c_write_reg>
 8001060:	203c      	movs	r0, #60	; 0x3c
 8001062:	211f      	movs	r1, #31
 8001064:	4622      	mov	r2, r4
 8001066:	f000 fd9f 	bl	8001ba8 <i2c_write_reg>
 800106a:	203c      	movs	r0, #60	; 0x3c
 800106c:	2120      	movs	r1, #32
 800106e:	2267      	movs	r2, #103	; 0x67
 8001070:	f000 fd9a 	bl	8001ba8 <i2c_write_reg>
 8001074:	203c      	movs	r0, #60	; 0x3c
 8001076:	2121      	movs	r1, #33	; 0x21
 8001078:	4622      	mov	r2, r4
 800107a:	f000 fd95 	bl	8001ba8 <i2c_write_reg>
 800107e:	203c      	movs	r0, #60	; 0x3c
 8001080:	2124      	movs	r1, #36	; 0x24
 8001082:	22f4      	movs	r2, #244	; 0xf4
 8001084:	f000 fd90 	bl	8001ba8 <i2c_write_reg>
 8001088:	203c      	movs	r0, #60	; 0x3c
 800108a:	2125      	movs	r1, #37	; 0x25
 800108c:	4622      	mov	r2, r4
 800108e:	f000 fd8b 	bl	8001ba8 <i2c_write_reg>
 8001092:	203c      	movs	r0, #60	; 0x3c
 8001094:	2126      	movs	r1, #38	; 0x26
 8001096:	2280      	movs	r2, #128	; 0x80
 8001098:	f000 fd86 	bl	8001ba8 <i2c_write_reg>
 800109c:	f7ff ff38 	bl	8000f10 <lsm9ds0_read>
 80010a0:	2664      	movs	r6, #100	; 0x64
 80010a2:	4627      	mov	r7, r4
 80010a4:	46a0      	mov	r8, r4
 80010a6:	f7ff ff33 	bl	8000f10 <lsm9ds0_read>
 80010aa:	f9b5 200c 	ldrsh.w	r2, [r5, #12]
 80010ae:	4b0d      	ldr	r3, [pc, #52]	; (80010e4 <lsm9ds0_init+0xd8>)
 80010b0:	4490      	add	r8, r2
 80010b2:	f9b5 200e 	ldrsh.w	r2, [r5, #14]
 80010b6:	4417      	add	r7, r2
 80010b8:	f9b5 2010 	ldrsh.w	r2, [r5, #16]
 80010bc:	3e01      	subs	r6, #1
 80010be:	4414      	add	r4, r2
 80010c0:	d1f1      	bne.n	80010a6 <lsm9ds0_init+0x9a>
 80010c2:	2264      	movs	r2, #100	; 0x64
 80010c4:	fb98 f8f2 	sdiv	r8, r8, r2
 80010c8:	fb97 f7f2 	sdiv	r7, r7, r2
 80010cc:	fb94 f4f2 	sdiv	r4, r4, r2
 80010d0:	f8a3 8012 	strh.w	r8, [r3, #18]
 80010d4:	829f      	strh	r7, [r3, #20]
 80010d6:	82dc      	strh	r4, [r3, #22]
 80010d8:	e000      	b.n	80010dc <lsm9ds0_init+0xd0>
 80010da:	2601      	movs	r6, #1
 80010dc:	4630      	mov	r0, r6
 80010de:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80010e2:	bf00      	nop
 80010e4:	200001e4 	.word	0x200001e4

080010e8 <camera_init>:
 80010e8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80010ec:	4b3f      	ldr	r3, [pc, #252]	; (80011ec <camera_init+0x104>)
 80010ee:	2200      	movs	r2, #0
 80010f0:	601a      	str	r2, [r3, #0]
 80010f2:	605a      	str	r2, [r3, #4]
 80010f4:	609a      	str	r2, [r3, #8]
 80010f6:	611a      	str	r2, [r3, #16]
 80010f8:	60da      	str	r2, [r3, #12]
 80010fa:	b08e      	sub	sp, #56	; 0x38
 80010fc:	f103 0212 	add.w	r2, r3, #18
 8001100:	f503 7389 	add.w	r3, r3, #274	; 0x112
 8001104:	2400      	movs	r4, #0
 8001106:	f822 4f02 	strh.w	r4, [r2, #2]!
 800110a:	429a      	cmp	r2, r3
 800110c:	f8a2 4100 	strh.w	r4, [r2, #256]	; 0x100
 8001110:	d1f8      	bne.n	8001104 <camera_init+0x1c>
 8001112:	4f37      	ldr	r7, [pc, #220]	; (80011f0 <camera_init+0x108>)
 8001114:	2501      	movs	r5, #1
 8001116:	2603      	movs	r6, #3
 8001118:	f44f 63a0 	mov.w	r3, #1280	; 0x500
 800111c:	4638      	mov	r0, r7
 800111e:	a901      	add	r1, sp, #4
 8001120:	9301      	str	r3, [sp, #4]
 8001122:	f88d 5008 	strb.w	r5, [sp, #8]
 8001126:	f88d 6009 	strb.w	r6, [sp, #9]
 800112a:	f000 fde3 	bl	8001cf4 <GPIO_Init>
 800112e:	a901      	add	r1, sp, #4
 8001130:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8001134:	4638      	mov	r0, r7
 8001136:	9301      	str	r3, [sp, #4]
 8001138:	f88d 6008 	strb.w	r6, [sp, #8]
 800113c:	f88d 6009 	strb.w	r6, [sp, #9]
 8001140:	f000 fdd8 	bl	8001cf4 <GPIO_Init>
 8001144:	f44f 7380 	mov.w	r3, #256	; 0x100
 8001148:	853b      	strh	r3, [r7, #40]	; 0x28
 800114a:	f44f 6380 	mov.w	r3, #1024	; 0x400
 800114e:	853b      	strh	r3, [r7, #40]	; 0x28
 8001150:	4828      	ldr	r0, [pc, #160]	; (80011f4 <camera_init+0x10c>)
 8001152:	f001 f879 	bl	8002248 <RCC_ADCCLKConfig>
 8001156:	4629      	mov	r1, r5
 8001158:	f04f 5000 	mov.w	r0, #536870912	; 0x20000000
 800115c:	f001 f884 	bl	8002268 <RCC_AHBPeriphClockCmd>
 8001160:	a906      	add	r1, sp, #24
 8001162:	4825      	ldr	r0, [pc, #148]	; (80011f8 <camera_init+0x110>)
 8001164:	940c      	str	r4, [sp, #48]	; 0x30
 8001166:	9406      	str	r4, [sp, #24]
 8001168:	940a      	str	r4, [sp, #40]	; 0x28
 800116a:	9408      	str	r4, [sp, #32]
 800116c:	9409      	str	r4, [sp, #36]	; 0x24
 800116e:	f88d 5034 	strb.w	r5, [sp, #52]	; 0x34
 8001172:	940b      	str	r4, [sp, #44]	; 0x2c
 8001174:	9407      	str	r4, [sp, #28]
 8001176:	f001 f8a1 	bl	80022bc <ADC_Init>
 800117a:	462a      	mov	r2, r5
 800117c:	4623      	mov	r3, r4
 800117e:	4631      	mov	r1, r6
 8001180:	481d      	ldr	r0, [pc, #116]	; (80011f8 <camera_init+0x110>)
 8001182:	f001 f8cc 	bl	800231e <ADC_RegularChannelConfig>
 8001186:	4629      	mov	r1, r5
 8001188:	481b      	ldr	r0, [pc, #108]	; (80011f8 <camera_init+0x110>)
 800118a:	f001 f8bd 	bl	8002308 <ADC_Cmd>
 800118e:	4628      	mov	r0, r5
 8001190:	4629      	mov	r1, r5
 8001192:	f001 f885 	bl	80022a0 <RCC_APB1PeriphClockCmd>
 8001196:	f44f 738c 	mov.w	r3, #280	; 0x118
 800119a:	f8ad 300c 	strh.w	r3, [sp, #12]
 800119e:	a903      	add	r1, sp, #12
 80011a0:	2320      	movs	r3, #32
 80011a2:	f04f 4080 	mov.w	r0, #1073741824	; 0x40000000
 80011a6:	9304      	str	r3, [sp, #16]
 80011a8:	f8ad 400e 	strh.w	r4, [sp, #14]
 80011ac:	f8ad 4014 	strh.w	r4, [sp, #20]
 80011b0:	f8ad 4016 	strh.w	r4, [sp, #22]
 80011b4:	f001 fb88 	bl	80028c8 <TIM_TimeBaseInit>
 80011b8:	4629      	mov	r1, r5
 80011ba:	f04f 4080 	mov.w	r0, #1073741824	; 0x40000000
 80011be:	f001 fbd3 	bl	8002968 <TIM_Cmd>
 80011c2:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 80011c6:	4668      	mov	r0, sp
 80011c8:	68da      	ldr	r2, [r3, #12]
 80011ca:	432a      	orrs	r2, r5
 80011cc:	60da      	str	r2, [r3, #12]
 80011ce:	231c      	movs	r3, #28
 80011d0:	f88d 3000 	strb.w	r3, [sp]
 80011d4:	f88d 4001 	strb.w	r4, [sp, #1]
 80011d8:	f88d 5002 	strb.w	r5, [sp, #2]
 80011dc:	f88d 5003 	strb.w	r5, [sp, #3]
 80011e0:	f001 fb3a 	bl	8002858 <NVIC_Init>
 80011e4:	b00e      	add	sp, #56	; 0x38
 80011e6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80011ea:	bf00      	nop
 80011ec:	20000488 	.word	0x20000488
 80011f0:	48000400 	.word	0x48000400
 80011f4:	10002200 	.word	0x10002200
 80011f8:	50000500 	.word	0x50000500

080011fc <camera_read>:
 80011fc:	4a35      	ldr	r2, [pc, #212]	; (80012d4 <camera_read+0xd8>)
 80011fe:	6890      	ldr	r0, [r2, #8]
 8001200:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001202:	2800      	cmp	r0, #0
 8001204:	d065      	beq.n	80012d2 <camera_read+0xd6>
 8001206:	f102 0312 	add.w	r3, r2, #18
 800120a:	f502 7189 	add.w	r1, r2, #274	; 0x112
 800120e:	f833 0f02 	ldrh.w	r0, [r3, #2]!
 8001212:	f8a3 0100 	strh.w	r0, [r3, #256]	; 0x100
 8001216:	428b      	cmp	r3, r1
 8001218:	d1f9      	bne.n	800120e <camera_read+0x12>
 800121a:	2300      	movs	r3, #0
 800121c:	6093      	str	r3, [r2, #8]
 800121e:	4618      	mov	r0, r3
 8001220:	18d4      	adds	r4, r2, r3
 8001222:	3302      	adds	r3, #2
 8001224:	f9b4 4114 	ldrsh.w	r4, [r4, #276]	; 0x114
 8001228:	492a      	ldr	r1, [pc, #168]	; (80012d4 <camera_read+0xd8>)
 800122a:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
 800122e:	4420      	add	r0, r4
 8001230:	d1f6      	bne.n	8001220 <camera_read+0x24>
 8001232:	2680      	movs	r6, #128	; 0x80
 8001234:	fb90 f6f6 	sdiv	r6, r0, r6
 8001238:	610e      	str	r6, [r1, #16]
 800123a:	f501 7005 	add.w	r0, r1, #532	; 0x214
 800123e:	f501 738a 	add.w	r3, r1, #276	; 0x114
 8001242:	8819      	ldrh	r1, [r3, #0]
 8001244:	1b89      	subs	r1, r1, r6
 8001246:	f823 1b02 	strh.w	r1, [r3], #2
 800124a:	4283      	cmp	r3, r0
 800124c:	d1f9      	bne.n	8001242 <camera_read+0x46>
 800124e:	4b22      	ldr	r3, [pc, #136]	; (80012d8 <camera_read+0xdc>)
 8001250:	f933 1b02 	ldrsh.w	r1, [r3], #2
 8001254:	2900      	cmp	r1, #0
 8001256:	bfb4      	ite	lt
 8001258:	2101      	movlt	r1, #1
 800125a:	2100      	movge	r1, #0
 800125c:	4283      	cmp	r3, r0
 800125e:	f823 1c02 	strh.w	r1, [r3, #-2]
 8001262:	d1f5      	bne.n	8001250 <camera_read+0x54>
 8001264:	2300      	movs	r3, #0
 8001266:	481b      	ldr	r0, [pc, #108]	; (80012d4 <camera_read+0xd8>)
 8001268:	f44f 67a0 	mov.w	r7, #1280	; 0x500
 800126c:	4619      	mov	r1, r3
 800126e:	461c      	mov	r4, r3
 8001270:	2501      	movs	r5, #1
 8001272:	2b01      	cmp	r3, #1
 8001274:	d007      	beq.n	8001286 <camera_read+0x8a>
 8001276:	f9b0 1114 	ldrsh.w	r1, [r0, #276]	; 0x114
 800127a:	b981      	cbnz	r1, 800129e <camera_read+0xa2>
 800127c:	f9b0 3116 	ldrsh.w	r3, [r0, #278]	; 0x116
 8001280:	2b01      	cmp	r3, #1
 8001282:	d10f      	bne.n	80012a4 <camera_read+0xa8>
 8001284:	e00c      	b.n	80012a0 <camera_read+0xa4>
 8001286:	f9b0 c116 	ldrsh.w	ip, [r0, #278]	; 0x116
 800128a:	f1bc 0f01 	cmp.w	ip, #1
 800128e:	d101      	bne.n	8001294 <camera_read+0x98>
 8001290:	3101      	adds	r1, #1
 8001292:	e008      	b.n	80012a6 <camera_read+0xaa>
 8001294:	42a1      	cmp	r1, r4
 8001296:	dd05      	ble.n	80012a4 <camera_read+0xa8>
 8001298:	462f      	mov	r7, r5
 800129a:	460c      	mov	r4, r1
 800129c:	e002      	b.n	80012a4 <camera_read+0xa8>
 800129e:	2300      	movs	r3, #0
 80012a0:	4619      	mov	r1, r3
 80012a2:	e000      	b.n	80012a6 <camera_read+0xaa>
 80012a4:	2300      	movs	r3, #0
 80012a6:	3501      	adds	r5, #1
 80012a8:	2d80      	cmp	r5, #128	; 0x80
 80012aa:	f100 0002 	add.w	r0, r0, #2
 80012ae:	d1e0      	bne.n	8001272 <camera_read+0x76>
 80012b0:	2c03      	cmp	r4, #3
 80012b2:	dc03      	bgt.n	80012bc <camera_read+0xc0>
 80012b4:	2300      	movs	r3, #0
 80012b6:	6053      	str	r3, [r2, #4]
 80012b8:	2001      	movs	r0, #1
 80012ba:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80012bc:	f5b6 7fc8 	cmp.w	r6, #400	; 0x190
 80012c0:	ddf8      	ble.n	80012b4 <camera_read+0xb8>
 80012c2:	2302      	movs	r3, #2
 80012c4:	fb94 f4f3 	sdiv	r4, r4, r3
 80012c8:	1b3f      	subs	r7, r7, r4
 80012ca:	2001      	movs	r0, #1
 80012cc:	3f40      	subs	r7, #64	; 0x40
 80012ce:	6050      	str	r0, [r2, #4]
 80012d0:	60d7      	str	r7, [r2, #12]
 80012d2:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80012d4:	20000488 	.word	0x20000488
 80012d8:	2000059c 	.word	0x2000059c

080012dc <TIM2_IRQHandler>:
 80012dc:	4b21      	ldr	r3, [pc, #132]	; (8001364 <TIM2_IRQHandler+0x88>)
 80012de:	4a22      	ldr	r2, [pc, #136]	; (8001368 <TIM2_IRQHandler+0x8c>)
 80012e0:	6819      	ldr	r1, [r3, #0]
 80012e2:	2901      	cmp	r1, #1
 80012e4:	b510      	push	{r4, lr}
 80012e6:	d011      	beq.n	800130c <TIM2_IRQHandler+0x30>
 80012e8:	d306      	bcc.n	80012f8 <TIM2_IRQHandler+0x1c>
 80012ea:	2902      	cmp	r1, #2
 80012ec:	d113      	bne.n	8001316 <TIM2_IRQHandler+0x3a>
 80012ee:	f44f 6180 	mov.w	r1, #1024	; 0x400
 80012f2:	8511      	strh	r1, [r2, #40]	; 0x28
 80012f4:	2204      	movs	r2, #4
 80012f6:	e023      	b.n	8001340 <TIM2_IRQHandler+0x64>
 80012f8:	f44f 7180 	mov.w	r1, #256	; 0x100
 80012fc:	8511      	strh	r1, [r2, #40]	; 0x28
 80012fe:	f44f 6180 	mov.w	r1, #1024	; 0x400
 8001302:	6191      	str	r1, [r2, #24]
 8001304:	2201      	movs	r2, #1
 8001306:	601a      	str	r2, [r3, #0]
 8001308:	609a      	str	r2, [r3, #8]
 800130a:	e023      	b.n	8001354 <TIM2_IRQHandler+0x78>
 800130c:	f44f 7180 	mov.w	r1, #256	; 0x100
 8001310:	6191      	str	r1, [r2, #24]
 8001312:	2202      	movs	r2, #2
 8001314:	e014      	b.n	8001340 <TIM2_IRQHandler+0x64>
 8001316:	f011 0f01 	tst.w	r1, #1
 800131a:	4814      	ldr	r0, [pc, #80]	; (800136c <TIM2_IRQHandler+0x90>)
 800131c:	f101 0401 	add.w	r4, r1, #1
 8001320:	d010      	beq.n	8001344 <TIM2_IRQHandler+0x68>
 8001322:	3904      	subs	r1, #4
 8001324:	f021 0101 	bic.w	r1, r1, #1
 8001328:	4419      	add	r1, r3
 800132a:	6c00      	ldr	r0, [r0, #64]	; 0x40
 800132c:	8288      	strh	r0, [r1, #20]
 800132e:	f5b4 7f82 	cmp.w	r4, #260	; 0x104
 8001332:	f44f 7180 	mov.w	r1, #256	; 0x100
 8001336:	8511      	strh	r1, [r2, #40]	; 0x28
 8001338:	d201      	bcs.n	800133e <TIM2_IRQHandler+0x62>
 800133a:	601c      	str	r4, [r3, #0]
 800133c:	e00a      	b.n	8001354 <TIM2_IRQHandler+0x78>
 800133e:	2200      	movs	r2, #0
 8001340:	601a      	str	r2, [r3, #0]
 8001342:	e007      	b.n	8001354 <TIM2_IRQHandler+0x78>
 8001344:	f44f 7180 	mov.w	r1, #256	; 0x100
 8001348:	6191      	str	r1, [r2, #24]
 800134a:	601c      	str	r4, [r3, #0]
 800134c:	6883      	ldr	r3, [r0, #8]
 800134e:	f043 0304 	orr.w	r3, r3, #4
 8001352:	6083      	str	r3, [r0, #8]
 8001354:	f04f 4080 	mov.w	r0, #1073741824	; 0x40000000
 8001358:	2101      	movs	r1, #1
 800135a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800135e:	f001 bba0 	b.w	8002aa2 <TIM_ClearITPendingBit>
 8001362:	bf00      	nop
 8001364:	20000488 	.word	0x20000488
 8001368:	48000400 	.word	0x48000400
 800136c:	50000500 	.word	0x50000500

08001370 <pid_init>:
 8001370:	ee06 2a10 	vmov	s12, r2
 8001374:	ee05 3a90 	vmov	s11, r3
 8001378:	eddd 7a00 	vldr	s15, [sp]
 800137c:	ed9d 7a01 	vldr	s14, [sp, #4]
 8001380:	6241      	str	r1, [r0, #36]	; 0x24
 8001382:	ee76 6a25 	vadd.f32	s13, s12, s11
 8001386:	ee77 5aa7 	vadd.f32	s11, s15, s15
 800138a:	ee76 6aa7 	vadd.f32	s13, s13, s15
 800138e:	eeb1 6a46 	vneg.f32	s12, s12
 8001392:	ee76 6a87 	vadd.f32	s13, s13, s14
 8001396:	ee36 6a65 	vsub.f32	s12, s12, s11
 800139a:	edc0 6a04 	vstr	s13, [r0, #16]
 800139e:	eddf 6a0b 	vldr	s13, [pc, #44]	; 80013cc <pid_init+0x5c>
 80013a2:	ee67 6a26 	vmul.f32	s13, s14, s13
 80013a6:	2200      	movs	r2, #0
 80013a8:	ee36 6a66 	vsub.f32	s12, s12, s13
 80013ac:	ee77 7aa6 	vadd.f32	s15, s15, s13
 80013b0:	eeb1 7a47 	vneg.f32	s14, s14
 80013b4:	6002      	str	r2, [r0, #0]
 80013b6:	6042      	str	r2, [r0, #4]
 80013b8:	6082      	str	r2, [r0, #8]
 80013ba:	60c2      	str	r2, [r0, #12]
 80013bc:	ed80 6a05 	vstr	s12, [r0, #20]
 80013c0:	edc0 7a06 	vstr	s15, [r0, #24]
 80013c4:	ed80 7a07 	vstr	s14, [r0, #28]
 80013c8:	6202      	str	r2, [r0, #32]
 80013ca:	4770      	bx	lr
 80013cc:	40400000 	.word	0x40400000

080013d0 <pid_process>:
 80013d0:	edd0 7a08 	vldr	s15, [r0, #32]
 80013d4:	ed90 5a04 	vldr	s10, [r0, #16]
 80013d8:	ed90 6a00 	vldr	s12, [r0]
 80013dc:	edd0 6a01 	vldr	s13, [r0, #4]
 80013e0:	ed80 6a01 	vstr	s12, [r0, #4]
 80013e4:	ee05 1a90 	vmov	s11, r1
 80013e8:	ee45 7a85 	vmla.f32	s15, s11, s10
 80013ec:	6001      	str	r1, [r0, #0]
 80013ee:	edd0 5a05 	vldr	s11, [r0, #20]
 80013f2:	ed90 7a02 	vldr	s14, [r0, #8]
 80013f6:	edc0 6a02 	vstr	s13, [r0, #8]
 80013fa:	ee46 7a25 	vmla.f32	s15, s12, s11
 80013fe:	ed90 6a06 	vldr	s12, [r0, #24]
 8001402:	ed80 7a03 	vstr	s14, [r0, #12]
 8001406:	ee46 7a86 	vmla.f32	s15, s13, s12
 800140a:	edd0 6a07 	vldr	s13, [r0, #28]
 800140e:	ee47 7a26 	vmla.f32	s15, s14, s13
 8001412:	ed90 7a09 	vldr	s14, [r0, #36]	; 0x24
 8001416:	edc0 7a08 	vstr	s15, [r0, #32]
 800141a:	eef4 7ac7 	vcmpe.f32	s15, s14
 800141e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001422:	bfc8      	it	gt
 8001424:	ed80 7a08 	vstrgt	s14, [r0, #32]
 8001428:	edd0 7a08 	vldr	s15, [r0, #32]
 800142c:	eeb1 7a47 	vneg.f32	s14, s14
 8001430:	eef4 7ac7 	vcmpe.f32	s15, s14
 8001434:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001438:	bf48      	it	mi
 800143a:	ed80 7a08 	vstrmi	s14, [r0, #32]
 800143e:	6a00      	ldr	r0, [r0, #32]
 8001440:	4770      	bx	lr

08001442 <m_abs>:
 8001442:	ee07 0a90 	vmov	s15, r0
 8001446:	eef5 7ac0 	vcmpe.f32	s15, #0.0
 800144a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800144e:	bf48      	it	mi
 8001450:	eef1 7a67 	vnegmi.f32	s15, s15
 8001454:	ee17 0a90 	vmov	r0, s15
 8001458:	4770      	bx	lr

0800145a <m_saturate>:
 800145a:	ee07 0a90 	vmov	s15, r0
 800145e:	ee06 1a90 	vmov	s13, r1
 8001462:	eef4 7a66 	vcmp.f32	s15, s13
 8001466:	ee07 2a10 	vmov	s14, r2
 800146a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800146e:	bf48      	it	mi
 8001470:	eef0 7a66 	vmovmi.f32	s15, s13
 8001474:	eef4 7a47 	vcmp.f32	s15, s14
 8001478:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800147c:	bfcc      	ite	gt
 800147e:	ee17 0a10 	vmovgt	r0, s14
 8001482:	ee17 0a90 	vmovle	r0, s15
 8001486:	4770      	bx	lr

08001488 <m_min>:
 8001488:	ee07 0a10 	vmov	s14, r0
 800148c:	ee07 1a90 	vmov	s15, r1
 8001490:	eeb4 7ae7 	vcmpe.f32	s14, s15
 8001494:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001498:	bf54      	ite	pl
 800149a:	ee17 0a90 	vmovpl	r0, s15
 800149e:	ee17 0a10 	vmovmi	r0, s14
 80014a2:	4770      	bx	lr

080014a4 <thread_ending>:
 80014a4:	b672      	cpsid	i
 80014a6:	4b05      	ldr	r3, [pc, #20]	; (80014bc <thread_ending+0x18>)
 80014a8:	4a05      	ldr	r2, [pc, #20]	; (80014c0 <thread_ending+0x1c>)
 80014aa:	681b      	ldr	r3, [r3, #0]
 80014ac:	210c      	movs	r1, #12
 80014ae:	fb01 2303 	mla	r3, r1, r3, r2
 80014b2:	2200      	movs	r2, #0
 80014b4:	605a      	str	r2, [r3, #4]
 80014b6:	b662      	cpsie	i
 80014b8:	bf00      	nop
 80014ba:	e7fd      	b.n	80014b8 <thread_ending+0x14>
 80014bc:	20000db0 	.word	0x20000db0
 80014c0:	20000d68 	.word	0x20000d68

080014c4 <null_thread>:
 80014c4:	b508      	push	{r3, lr}
 80014c6:	f000 fd09 	bl	8001edc <sleep>
 80014ca:	e7fc      	b.n	80014c6 <null_thread+0x2>

080014cc <scheduler>:
 80014cc:	b570      	push	{r4, r5, r6, lr}
 80014ce:	2200      	movs	r2, #0
 80014d0:	4611      	mov	r1, r2
 80014d2:	4b15      	ldr	r3, [pc, #84]	; (8001528 <scheduler+0x5c>)
 80014d4:	200c      	movs	r0, #12
 80014d6:	fb00 f501 	mul.w	r5, r0, r1
 80014da:	195e      	adds	r6, r3, r5
 80014dc:	6874      	ldr	r4, [r6, #4]
 80014de:	f014 0f02 	tst.w	r4, #2
 80014e2:	461c      	mov	r4, r3
 80014e4:	d10a      	bne.n	80014fc <scheduler+0x30>
 80014e6:	6876      	ldr	r6, [r6, #4]
 80014e8:	07f6      	lsls	r6, r6, #31
 80014ea:	d507      	bpl.n	80014fc <scheduler+0x30>
 80014ec:	4350      	muls	r0, r2
 80014ee:	5b5d      	ldrh	r5, [r3, r5]
 80014f0:	5a18      	ldrh	r0, [r3, r0]
 80014f2:	b2ad      	uxth	r5, r5
 80014f4:	b280      	uxth	r0, r0
 80014f6:	4285      	cmp	r5, r0
 80014f8:	bf38      	it	cc
 80014fa:	460a      	movcc	r2, r1
 80014fc:	200c      	movs	r0, #12
 80014fe:	4348      	muls	r0, r1
 8001500:	5a1d      	ldrh	r5, [r3, r0]
 8001502:	b2ad      	uxth	r5, r5
 8001504:	b11d      	cbz	r5, 800150e <scheduler+0x42>
 8001506:	5a1d      	ldrh	r5, [r3, r0]
 8001508:	3d01      	subs	r5, #1
 800150a:	b2ad      	uxth	r5, r5
 800150c:	521d      	strh	r5, [r3, r0]
 800150e:	3101      	adds	r1, #1
 8001510:	2906      	cmp	r1, #6
 8001512:	d1de      	bne.n	80014d2 <scheduler+0x6>
 8001514:	230c      	movs	r3, #12
 8001516:	4353      	muls	r3, r2
 8001518:	18e1      	adds	r1, r4, r3
 800151a:	8849      	ldrh	r1, [r1, #2]
 800151c:	b289      	uxth	r1, r1
 800151e:	52e1      	strh	r1, [r4, r3]
 8001520:	4b02      	ldr	r3, [pc, #8]	; (800152c <scheduler+0x60>)
 8001522:	601a      	str	r2, [r3, #0]
 8001524:	bd70      	pop	{r4, r5, r6, pc}
 8001526:	bf00      	nop
 8001528:	20000d68 	.word	0x20000d68
 800152c:	20000db0 	.word	0x20000db0

08001530 <SysTick_Handler>:
 8001530:	e92d 0ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 8001534:	f3ef 8208 	mrs	r2, MSP
 8001538:	4c0d      	ldr	r4, [pc, #52]	; (8001570 <SysTick_Handler+0x40>)
 800153a:	4d0e      	ldr	r5, [pc, #56]	; (8001574 <SysTick_Handler+0x44>)
 800153c:	6823      	ldr	r3, [r4, #0]
 800153e:	3301      	adds	r3, #1
 8001540:	d005      	beq.n	800154e <SysTick_Handler+0x1e>
 8001542:	6823      	ldr	r3, [r4, #0]
 8001544:	210c      	movs	r1, #12
 8001546:	fb01 5303 	mla	r3, r1, r3, r5
 800154a:	609a      	str	r2, [r3, #8]
 800154c:	e001      	b.n	8001552 <SysTick_Handler+0x22>
 800154e:	2300      	movs	r3, #0
 8001550:	6023      	str	r3, [r4, #0]
 8001552:	f7ff ffbb 	bl	80014cc <scheduler>
 8001556:	6823      	ldr	r3, [r4, #0]
 8001558:	220c      	movs	r2, #12
 800155a:	fb02 5503 	mla	r5, r2, r3, r5
 800155e:	f06f 0306 	mvn.w	r3, #6
 8001562:	68aa      	ldr	r2, [r5, #8]
 8001564:	469e      	mov	lr, r3
 8001566:	f382 8808 	msr	MSP, r2
 800156a:	e8bd 0ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 800156e:	4770      	bx	lr
 8001570:	20000db0 	.word	0x20000db0
 8001574:	20000d68 	.word	0x20000d68

08001578 <sched_off>:
 8001578:	b672      	cpsid	i
 800157a:	4770      	bx	lr

0800157c <sched_on>:
 800157c:	b662      	cpsie	i
 800157e:	4770      	bx	lr

08001580 <yield>:
 8001580:	bf00      	nop
 8001582:	4770      	bx	lr

08001584 <get_thread_id>:
 8001584:	b082      	sub	sp, #8
 8001586:	b672      	cpsid	i
 8001588:	4b03      	ldr	r3, [pc, #12]	; (8001598 <get_thread_id+0x14>)
 800158a:	681b      	ldr	r3, [r3, #0]
 800158c:	9301      	str	r3, [sp, #4]
 800158e:	b662      	cpsie	i
 8001590:	9801      	ldr	r0, [sp, #4]
 8001592:	b002      	add	sp, #8
 8001594:	4770      	bx	lr
 8001596:	bf00      	nop
 8001598:	20000db0 	.word	0x20000db0

0800159c <kernel_start>:
 800159c:	b508      	push	{r3, lr}
 800159e:	f000 fc8b 	bl	8001eb8 <sys_tick_init>
 80015a2:	bf00      	nop
 80015a4:	e7fd      	b.n	80015a2 <kernel_start+0x6>
	...

080015a8 <create_thread>:
 80015a8:	f022 0203 	bic.w	r2, r2, #3
 80015ac:	3a40      	subs	r2, #64	; 0x40
 80015ae:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 80015b2:	eb01 0c02 	add.w	ip, r1, r2
 80015b6:	f102 0834 	add.w	r8, r2, #52	; 0x34
 80015ba:	f102 0938 	add.w	r9, r2, #56	; 0x38
 80015be:	323c      	adds	r2, #60	; 0x3c
 80015c0:	4488      	add	r8, r1
 80015c2:	4489      	add	r9, r1
 80015c4:	4607      	mov	r7, r0
 80015c6:	4411      	add	r1, r2
 80015c8:	2200      	movs	r2, #0
 80015ca:	b672      	cpsid	i
 80015cc:	4e11      	ldr	r6, [pc, #68]	; (8001614 <create_thread+0x6c>)
 80015ce:	250c      	movs	r5, #12
 80015d0:	4355      	muls	r5, r2
 80015d2:	1974      	adds	r4, r6, r5
 80015d4:	6860      	ldr	r0, [r4, #4]
 80015d6:	07c0      	lsls	r0, r0, #31
 80015d8:	d412      	bmi.n	8001600 <create_thread+0x58>
 80015da:	480f      	ldr	r0, [pc, #60]	; (8001618 <create_thread+0x70>)
 80015dc:	f8c4 c008 	str.w	ip, [r4, #8]
 80015e0:	2b05      	cmp	r3, #5
 80015e2:	f8c8 0000 	str.w	r0, [r8]
 80015e6:	f04f 5004 	mov.w	r0, #553648128	; 0x21000000
 80015ea:	f8c9 7000 	str.w	r7, [r9]
 80015ee:	bf98      	it	ls
 80015f0:	2306      	movls	r3, #6
 80015f2:	6008      	str	r0, [r1, #0]
 80015f4:	2001      	movs	r0, #1
 80015f6:	8063      	strh	r3, [r4, #2]
 80015f8:	5373      	strh	r3, [r6, r5]
 80015fa:	6060      	str	r0, [r4, #4]
 80015fc:	4610      	mov	r0, r2
 80015fe:	e000      	b.n	8001602 <create_thread+0x5a>
 8001600:	2006      	movs	r0, #6
 8001602:	b662      	cpsie	i
 8001604:	3201      	adds	r2, #1
 8001606:	2a06      	cmp	r2, #6
 8001608:	d001      	beq.n	800160e <create_thread+0x66>
 800160a:	2806      	cmp	r0, #6
 800160c:	d0dd      	beq.n	80015ca <create_thread+0x22>
 800160e:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8001612:	bf00      	nop
 8001614:	20000d68 	.word	0x20000d68
 8001618:	080014a5 	.word	0x080014a5

0800161c <kernel_init>:
 800161c:	b510      	push	{r4, lr}
 800161e:	2300      	movs	r3, #0
 8001620:	490b      	ldr	r1, [pc, #44]	; (8001650 <kernel_init+0x34>)
 8001622:	220c      	movs	r2, #12
 8001624:	435a      	muls	r2, r3
 8001626:	188c      	adds	r4, r1, r2
 8001628:	2000      	movs	r0, #0
 800162a:	6060      	str	r0, [r4, #4]
 800162c:	3301      	adds	r3, #1
 800162e:	2006      	movs	r0, #6
 8001630:	4283      	cmp	r3, r0
 8001632:	8060      	strh	r0, [r4, #2]
 8001634:	5288      	strh	r0, [r1, r2]
 8001636:	d1f3      	bne.n	8001620 <kernel_init+0x4>
 8001638:	4b06      	ldr	r3, [pc, #24]	; (8001654 <kernel_init+0x38>)
 800163a:	4807      	ldr	r0, [pc, #28]	; (8001658 <kernel_init+0x3c>)
 800163c:	4907      	ldr	r1, [pc, #28]	; (800165c <kernel_init+0x40>)
 800163e:	f04f 32ff 	mov.w	r2, #4294967295
 8001642:	601a      	str	r2, [r3, #0]
 8001644:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8001648:	2280      	movs	r2, #128	; 0x80
 800164a:	23ff      	movs	r3, #255	; 0xff
 800164c:	f7ff bfac 	b.w	80015a8 <create_thread>
 8001650:	20000d68 	.word	0x20000d68
 8001654:	20000db0 	.word	0x20000db0
 8001658:	080014c5 	.word	0x080014c5
 800165c:	20000db4 	.word	0x20000db4

08001660 <set_wait_state>:
 8001660:	b507      	push	{r0, r1, r2, lr}
 8001662:	f7ff ff8f 	bl	8001584 <get_thread_id>
 8001666:	9000      	str	r0, [sp, #0]
 8001668:	b672      	cpsid	i
 800166a:	4b0d      	ldr	r3, [pc, #52]	; (80016a0 <set_wait_state+0x40>)
 800166c:	9a00      	ldr	r2, [sp, #0]
 800166e:	210c      	movs	r1, #12
 8001670:	fb01 3202 	mla	r2, r1, r2, r3
 8001674:	6851      	ldr	r1, [r2, #4]
 8001676:	f041 0102 	orr.w	r1, r1, #2
 800167a:	6051      	str	r1, [r2, #4]
 800167c:	b672      	cpsid	i
 800167e:	9a00      	ldr	r2, [sp, #0]
 8001680:	210c      	movs	r1, #12
 8001682:	fb01 3202 	mla	r2, r1, r2, r3
 8001686:	6852      	ldr	r2, [r2, #4]
 8001688:	9201      	str	r2, [sp, #4]
 800168a:	b662      	cpsie	i
 800168c:	9a01      	ldr	r2, [sp, #4]
 800168e:	0791      	lsls	r1, r2, #30
 8001690:	d500      	bpl.n	8001694 <set_wait_state+0x34>
 8001692:	bf00      	nop
 8001694:	9a01      	ldr	r2, [sp, #4]
 8001696:	0792      	lsls	r2, r2, #30
 8001698:	d4f0      	bmi.n	800167c <set_wait_state+0x1c>
 800169a:	b003      	add	sp, #12
 800169c:	f85d fb04 	ldr.w	pc, [sp], #4
 80016a0:	20000d68 	.word	0x20000d68

080016a4 <wake_up_threads>:
 80016a4:	2300      	movs	r3, #0
 80016a6:	b672      	cpsid	i
 80016a8:	4a06      	ldr	r2, [pc, #24]	; (80016c4 <wake_up_threads+0x20>)
 80016aa:	210c      	movs	r1, #12
 80016ac:	fb01 2203 	mla	r2, r1, r3, r2
 80016b0:	6851      	ldr	r1, [r2, #4]
 80016b2:	f021 0102 	bic.w	r1, r1, #2
 80016b6:	6051      	str	r1, [r2, #4]
 80016b8:	b662      	cpsie	i
 80016ba:	3301      	adds	r3, #1
 80016bc:	2b06      	cmp	r3, #6
 80016be:	d1f2      	bne.n	80016a6 <wake_up_threads+0x2>
 80016c0:	4770      	bx	lr
 80016c2:	bf00      	nop
 80016c4:	20000d68 	.word	0x20000d68

080016c8 <putc_>:
 80016c8:	b538      	push	{r3, r4, r5, lr}
 80016ca:	4c06      	ldr	r4, [pc, #24]	; (80016e4 <putc_+0x1c>)
 80016cc:	4605      	mov	r5, r0
 80016ce:	4620      	mov	r0, r4
 80016d0:	f000 f912 	bl	80018f8 <mutex_lock>
 80016d4:	4628      	mov	r0, r5
 80016d6:	f000 fe81 	bl	80023dc <uart_write>
 80016da:	4620      	mov	r0, r4
 80016dc:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 80016e0:	f000 b926 	b.w	8001930 <mutex_unlock>
 80016e4:	20000e34 	.word	0x20000e34

080016e8 <puts_>:
 80016e8:	b510      	push	{r4, lr}
 80016ea:	4604      	mov	r4, r0
 80016ec:	4807      	ldr	r0, [pc, #28]	; (800170c <puts_+0x24>)
 80016ee:	f000 f903 	bl	80018f8 <mutex_lock>
 80016f2:	3c01      	subs	r4, #1
 80016f4:	f814 0f01 	ldrb.w	r0, [r4, #1]!
 80016f8:	b110      	cbz	r0, 8001700 <puts_+0x18>
 80016fa:	f7ff ffe5 	bl	80016c8 <putc_>
 80016fe:	e7f9      	b.n	80016f4 <puts_+0xc>
 8001700:	4802      	ldr	r0, [pc, #8]	; (800170c <puts_+0x24>)
 8001702:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8001706:	f000 b913 	b.w	8001930 <mutex_unlock>
 800170a:	bf00      	nop
 800170c:	20000e40 	.word	0x20000e40

08001710 <puti_>:
 8001710:	b530      	push	{r4, r5, lr}
 8001712:	b085      	sub	sp, #20
 8001714:	1e03      	subs	r3, r0, #0
 8001716:	f04f 0200 	mov.w	r2, #0
 800171a:	bfa8      	it	ge
 800171c:	4614      	movge	r4, r2
 800171e:	f88d 200f 	strb.w	r2, [sp, #15]
 8001722:	bfbc      	itt	lt
 8001724:	425b      	neglt	r3, r3
 8001726:	2401      	movlt	r4, #1
 8001728:	220a      	movs	r2, #10
 800172a:	210a      	movs	r1, #10
 800172c:	fb93 f5f1 	sdiv	r5, r3, r1
 8001730:	fb01 3315 	mls	r3, r1, r5, r3
 8001734:	a801      	add	r0, sp, #4
 8001736:	3330      	adds	r3, #48	; 0x30
 8001738:	5413      	strb	r3, [r2, r0]
 800173a:	1e51      	subs	r1, r2, #1
 800173c:	462b      	mov	r3, r5
 800173e:	b10d      	cbz	r5, 8001744 <puti_+0x34>
 8001740:	460a      	mov	r2, r1
 8001742:	e7f2      	b.n	800172a <puti_+0x1a>
 8001744:	b12c      	cbz	r4, 8001752 <puti_+0x42>
 8001746:	ab04      	add	r3, sp, #16
 8001748:	440b      	add	r3, r1
 800174a:	222d      	movs	r2, #45	; 0x2d
 800174c:	f803 2c0c 	strb.w	r2, [r3, #-12]
 8001750:	460a      	mov	r2, r1
 8001752:	4410      	add	r0, r2
 8001754:	f7ff ffc8 	bl	80016e8 <puts_>
 8001758:	b005      	add	sp, #20
 800175a:	bd30      	pop	{r4, r5, pc}

0800175c <putui_>:
 800175c:	b51f      	push	{r0, r1, r2, r3, r4, lr}
 800175e:	2300      	movs	r3, #0
 8001760:	f88d 300f 	strb.w	r3, [sp, #15]
 8001764:	230a      	movs	r3, #10
 8001766:	240a      	movs	r4, #10
 8001768:	fbb0 f1f4 	udiv	r1, r0, r4
 800176c:	fb04 0011 	mls	r0, r4, r1, r0
 8001770:	aa01      	add	r2, sp, #4
 8001772:	3030      	adds	r0, #48	; 0x30
 8001774:	5498      	strb	r0, [r3, r2]
 8001776:	1e5c      	subs	r4, r3, #1
 8001778:	4608      	mov	r0, r1
 800177a:	b109      	cbz	r1, 8001780 <putui_+0x24>
 800177c:	4623      	mov	r3, r4
 800177e:	e7f2      	b.n	8001766 <putui_+0xa>
 8001780:	18d0      	adds	r0, r2, r3
 8001782:	f7ff ffb1 	bl	80016e8 <puts_>
 8001786:	b004      	add	sp, #16
 8001788:	bd10      	pop	{r4, pc}

0800178a <putx_>:
 800178a:	b51f      	push	{r0, r1, r2, r3, r4, lr}
 800178c:	2300      	movs	r3, #0
 800178e:	f88d 300f 	strb.w	r3, [sp, #15]
 8001792:	230a      	movs	r3, #10
 8001794:	f000 010f 	and.w	r1, r0, #15
 8001798:	2909      	cmp	r1, #9
 800179a:	aa01      	add	r2, sp, #4
 800179c:	bf94      	ite	ls
 800179e:	3130      	addls	r1, #48	; 0x30
 80017a0:	3157      	addhi	r1, #87	; 0x57
 80017a2:	0900      	lsrs	r0, r0, #4
 80017a4:	54d1      	strb	r1, [r2, r3]
 80017a6:	f103 31ff 	add.w	r1, r3, #4294967295
 80017aa:	d001      	beq.n	80017b0 <putx_+0x26>
 80017ac:	460b      	mov	r3, r1
 80017ae:	e7f1      	b.n	8001794 <putx_+0xa>
 80017b0:	18d0      	adds	r0, r2, r3
 80017b2:	f7ff ff99 	bl	80016e8 <puts_>
 80017b6:	b005      	add	sp, #20
 80017b8:	f85d fb04 	ldr.w	pc, [sp], #4

080017bc <printf_>:
 80017bc:	b40f      	push	{r0, r1, r2, r3}
 80017be:	b537      	push	{r0, r1, r2, r4, r5, lr}
 80017c0:	ac06      	add	r4, sp, #24
 80017c2:	4826      	ldr	r0, [pc, #152]	; (800185c <printf_+0xa0>)
 80017c4:	f854 5b04 	ldr.w	r5, [r4], #4
 80017c8:	f000 f896 	bl	80018f8 <mutex_lock>
 80017cc:	9401      	str	r4, [sp, #4]
 80017ce:	2400      	movs	r4, #0
 80017d0:	5d28      	ldrb	r0, [r5, r4]
 80017d2:	2800      	cmp	r0, #0
 80017d4:	d039      	beq.n	800184a <printf_+0x8e>
 80017d6:	2825      	cmp	r0, #37	; 0x25
 80017d8:	d003      	beq.n	80017e2 <printf_+0x26>
 80017da:	f7ff ff75 	bl	80016c8 <putc_>
 80017de:	3401      	adds	r4, #1
 80017e0:	e7f6      	b.n	80017d0 <printf_+0x14>
 80017e2:	192b      	adds	r3, r5, r4
 80017e4:	7858      	ldrb	r0, [r3, #1]
 80017e6:	2869      	cmp	r0, #105	; 0x69
 80017e8:	d016      	beq.n	8001818 <printf_+0x5c>
 80017ea:	d808      	bhi.n	80017fe <printf_+0x42>
 80017ec:	2825      	cmp	r0, #37	; 0x25
 80017ee:	d028      	beq.n	8001842 <printf_+0x86>
 80017f0:	2863      	cmp	r0, #99	; 0x63
 80017f2:	d128      	bne.n	8001846 <printf_+0x8a>
 80017f4:	9b01      	ldr	r3, [sp, #4]
 80017f6:	1d1a      	adds	r2, r3, #4
 80017f8:	9201      	str	r2, [sp, #4]
 80017fa:	7818      	ldrb	r0, [r3, #0]
 80017fc:	e021      	b.n	8001842 <printf_+0x86>
 80017fe:	2875      	cmp	r0, #117	; 0x75
 8001800:	d011      	beq.n	8001826 <printf_+0x6a>
 8001802:	2878      	cmp	r0, #120	; 0x78
 8001804:	d016      	beq.n	8001834 <printf_+0x78>
 8001806:	2873      	cmp	r0, #115	; 0x73
 8001808:	d11d      	bne.n	8001846 <printf_+0x8a>
 800180a:	9b01      	ldr	r3, [sp, #4]
 800180c:	1d1a      	adds	r2, r3, #4
 800180e:	6818      	ldr	r0, [r3, #0]
 8001810:	9201      	str	r2, [sp, #4]
 8001812:	f7ff ff69 	bl	80016e8 <puts_>
 8001816:	e016      	b.n	8001846 <printf_+0x8a>
 8001818:	9b01      	ldr	r3, [sp, #4]
 800181a:	1d1a      	adds	r2, r3, #4
 800181c:	6818      	ldr	r0, [r3, #0]
 800181e:	9201      	str	r2, [sp, #4]
 8001820:	f7ff ff76 	bl	8001710 <puti_>
 8001824:	e00f      	b.n	8001846 <printf_+0x8a>
 8001826:	9b01      	ldr	r3, [sp, #4]
 8001828:	1d1a      	adds	r2, r3, #4
 800182a:	6818      	ldr	r0, [r3, #0]
 800182c:	9201      	str	r2, [sp, #4]
 800182e:	f7ff ff95 	bl	800175c <putui_>
 8001832:	e008      	b.n	8001846 <printf_+0x8a>
 8001834:	9b01      	ldr	r3, [sp, #4]
 8001836:	1d1a      	adds	r2, r3, #4
 8001838:	6818      	ldr	r0, [r3, #0]
 800183a:	9201      	str	r2, [sp, #4]
 800183c:	f7ff ffa5 	bl	800178a <putx_>
 8001840:	e001      	b.n	8001846 <printf_+0x8a>
 8001842:	f7ff ff41 	bl	80016c8 <putc_>
 8001846:	3402      	adds	r4, #2
 8001848:	e7c2      	b.n	80017d0 <printf_+0x14>
 800184a:	4804      	ldr	r0, [pc, #16]	; (800185c <printf_+0xa0>)
 800184c:	f000 f870 	bl	8001930 <mutex_unlock>
 8001850:	b003      	add	sp, #12
 8001852:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
 8001856:	b004      	add	sp, #16
 8001858:	4770      	bx	lr
 800185a:	bf00      	nop
 800185c:	20000e3c 	.word	0x20000e3c

08001860 <stdio_init>:
 8001860:	b510      	push	{r4, lr}
 8001862:	480e      	ldr	r0, [pc, #56]	; (800189c <stdio_init+0x3c>)
 8001864:	f000 f83e 	bl	80018e4 <mutex_init>
 8001868:	480d      	ldr	r0, [pc, #52]	; (80018a0 <stdio_init+0x40>)
 800186a:	f000 f83b 	bl	80018e4 <mutex_init>
 800186e:	480d      	ldr	r0, [pc, #52]	; (80018a4 <stdio_init+0x44>)
 8001870:	f000 f838 	bl	80018e4 <mutex_init>
 8001874:	480c      	ldr	r0, [pc, #48]	; (80018a8 <stdio_init+0x48>)
 8001876:	f000 f835 	bl	80018e4 <mutex_init>
 800187a:	2408      	movs	r4, #8
 800187c:	2020      	movs	r0, #32
 800187e:	f7ff ff23 	bl	80016c8 <putc_>
 8001882:	3c01      	subs	r4, #1
 8001884:	d1fa      	bne.n	800187c <stdio_init+0x1c>
 8001886:	2420      	movs	r4, #32
 8001888:	200a      	movs	r0, #10
 800188a:	f7ff ff1d 	bl	80016c8 <putc_>
 800188e:	3c01      	subs	r4, #1
 8001890:	d1fa      	bne.n	8001888 <stdio_init+0x28>
 8001892:	4806      	ldr	r0, [pc, #24]	; (80018ac <stdio_init+0x4c>)
 8001894:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8001898:	f7ff bf90 	b.w	80017bc <printf_>
 800189c:	20000e34 	.word	0x20000e34
 80018a0:	20000e38 	.word	0x20000e38
 80018a4:	20000e40 	.word	0x20000e40
 80018a8:	20000e3c 	.word	0x20000e3c
 80018ac:	08002cb5 	.word	0x08002cb5

080018b0 <messages_init>:
 80018b0:	4a0a      	ldr	r2, [pc, #40]	; (80018dc <messages_init+0x2c>)
 80018b2:	2300      	movs	r3, #0
 80018b4:	b510      	push	{r4, lr}
 80018b6:	6013      	str	r3, [r2, #0]
 80018b8:	6053      	str	r3, [r2, #4]
 80018ba:	6093      	str	r3, [r2, #8]
 80018bc:	60d3      	str	r3, [r2, #12]
 80018be:	6113      	str	r3, [r2, #16]
 80018c0:	6153      	str	r3, [r2, #20]
 80018c2:	4c07      	ldr	r4, [pc, #28]	; (80018e0 <messages_init+0x30>)
 80018c4:	0118      	lsls	r0, r3, #4
 80018c6:	1821      	adds	r1, r4, r0
 80018c8:	3301      	adds	r3, #1
 80018ca:	2200      	movs	r2, #0
 80018cc:	2b04      	cmp	r3, #4
 80018ce:	604a      	str	r2, [r1, #4]
 80018d0:	5022      	str	r2, [r4, r0]
 80018d2:	60ca      	str	r2, [r1, #12]
 80018d4:	608a      	str	r2, [r1, #8]
 80018d6:	d1f4      	bne.n	80018c2 <messages_init+0x12>
 80018d8:	bd10      	pop	{r4, pc}
 80018da:	bf00      	nop
 80018dc:	20000e44 	.word	0x20000e44
 80018e0:	20000e5c 	.word	0x20000e5c

080018e4 <mutex_init>:
 80018e4:	b510      	push	{r4, lr}
 80018e6:	4604      	mov	r4, r0
 80018e8:	f7ff fe46 	bl	8001578 <sched_off>
 80018ec:	2300      	movs	r3, #0
 80018ee:	6023      	str	r3, [r4, #0]
 80018f0:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80018f4:	f7ff be42 	b.w	800157c <sched_on>

080018f8 <mutex_lock>:
 80018f8:	b513      	push	{r0, r1, r4, lr}
 80018fa:	4604      	mov	r4, r0
 80018fc:	f7ff fe3c 	bl	8001578 <sched_off>
 8001900:	6823      	ldr	r3, [r4, #0]
 8001902:	9301      	str	r3, [sp, #4]
 8001904:	f7ff fe3a 	bl	800157c <sched_on>
 8001908:	9b01      	ldr	r3, [sp, #4]
 800190a:	b10b      	cbz	r3, 8001910 <mutex_lock+0x18>
 800190c:	f7ff fea8 	bl	8001660 <set_wait_state>
 8001910:	9b01      	ldr	r3, [sp, #4]
 8001912:	2b00      	cmp	r3, #0
 8001914:	d1f2      	bne.n	80018fc <mutex_lock+0x4>
 8001916:	f7ff fe2f 	bl	8001578 <sched_off>
 800191a:	6823      	ldr	r3, [r4, #0]
 800191c:	9301      	str	r3, [sp, #4]
 800191e:	9b01      	ldr	r3, [sp, #4]
 8001920:	2b00      	cmp	r3, #0
 8001922:	d1eb      	bne.n	80018fc <mutex_lock+0x4>
 8001924:	2301      	movs	r3, #1
 8001926:	6023      	str	r3, [r4, #0]
 8001928:	f7ff fe28 	bl	800157c <sched_on>
 800192c:	b002      	add	sp, #8
 800192e:	bd10      	pop	{r4, pc}

08001930 <mutex_unlock>:
 8001930:	b508      	push	{r3, lr}
 8001932:	f7ff ffd7 	bl	80018e4 <mutex_init>
 8001936:	f7ff feb5 	bl	80016a4 <wake_up_threads>
 800193a:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800193e:	f7ff be1f 	b.w	8001580 <yield>

08001942 <lib_os_init>:
 8001942:	b508      	push	{r3, lr}
 8001944:	f7ff fe6a 	bl	800161c <kernel_init>
 8001948:	f7ff ffb2 	bl	80018b0 <messages_init>
 800194c:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001950:	f7ff bf86 	b.w	8001860 <stdio_init>

08001954 <Default_Handler>:
 8001954:	4668      	mov	r0, sp
 8001956:	f020 0107 	bic.w	r1, r0, #7
 800195a:	468d      	mov	sp, r1
 800195c:	bf00      	nop
 800195e:	e7fd      	b.n	800195c <Default_Handler+0x8>

08001960 <HardFault_Handler>:
 8001960:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001964:	f000 f99a 	bl	8001c9c <led_on>
 8001968:	4b06      	ldr	r3, [pc, #24]	; (8001984 <HardFault_Handler+0x24>)
 800196a:	3b01      	subs	r3, #1
 800196c:	d001      	beq.n	8001972 <HardFault_Handler+0x12>
 800196e:	bf00      	nop
 8001970:	e7fb      	b.n	800196a <HardFault_Handler+0xa>
 8001972:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001976:	f000 f9a3 	bl	8001cc0 <led_off>
 800197a:	4b02      	ldr	r3, [pc, #8]	; (8001984 <HardFault_Handler+0x24>)
 800197c:	3b01      	subs	r3, #1
 800197e:	d0ef      	beq.n	8001960 <HardFault_Handler>
 8001980:	bf00      	nop
 8001982:	e7fb      	b.n	800197c <HardFault_Handler+0x1c>
 8001984:	00989681 	.word	0x00989681

08001988 <_reset_init>:
 8001988:	4a0e      	ldr	r2, [pc, #56]	; (80019c4 <_reset_init+0x3c>)
 800198a:	480f      	ldr	r0, [pc, #60]	; (80019c8 <_reset_init+0x40>)
 800198c:	1a80      	subs	r0, r0, r2
 800198e:	1080      	asrs	r0, r0, #2
 8001990:	2300      	movs	r3, #0
 8001992:	4283      	cmp	r3, r0
 8001994:	d006      	beq.n	80019a4 <_reset_init+0x1c>
 8001996:	490d      	ldr	r1, [pc, #52]	; (80019cc <_reset_init+0x44>)
 8001998:	f851 1023 	ldr.w	r1, [r1, r3, lsl #2]
 800199c:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
 80019a0:	3301      	adds	r3, #1
 80019a2:	e7f6      	b.n	8001992 <_reset_init+0xa>
 80019a4:	4b0a      	ldr	r3, [pc, #40]	; (80019d0 <_reset_init+0x48>)
 80019a6:	f8d3 2088 	ldr.w	r2, [r3, #136]	; 0x88
 80019aa:	f442 0270 	orr.w	r2, r2, #15728640	; 0xf00000
 80019ae:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
 80019b2:	f503 730c 	add.w	r3, r3, #560	; 0x230
 80019b6:	685a      	ldr	r2, [r3, #4]
 80019b8:	f022 4240 	bic.w	r2, r2, #3221225472	; 0xc0000000
 80019bc:	605a      	str	r2, [r3, #4]
 80019be:	f7fe bbe3 	b.w	8000188 <main>
 80019c2:	bf00      	nop
 80019c4:	20000000 	.word	0x20000000
 80019c8:	20000154 	.word	0x20000154
 80019cc:	08002ccc 	.word	0x08002ccc
 80019d0:	e000ed00 	.word	0xe000ed00

080019d4 <i2c_delay>:
 80019d4:	230b      	movs	r3, #11
 80019d6:	3b01      	subs	r3, #1
 80019d8:	d001      	beq.n	80019de <i2c_delay+0xa>
 80019da:	bf00      	nop
 80019dc:	e7fb      	b.n	80019d6 <i2c_delay+0x2>
 80019de:	4770      	bx	lr

080019e0 <SetLowSDA>:
 80019e0:	b537      	push	{r0, r1, r2, r4, r5, lr}
 80019e2:	4d0d      	ldr	r5, [pc, #52]	; (8001a18 <SetLowSDA+0x38>)
 80019e4:	2301      	movs	r3, #1
 80019e6:	2203      	movs	r2, #3
 80019e8:	2480      	movs	r4, #128	; 0x80
 80019ea:	f88d 3004 	strb.w	r3, [sp, #4]
 80019ee:	f88d 3006 	strb.w	r3, [sp, #6]
 80019f2:	4628      	mov	r0, r5
 80019f4:	2300      	movs	r3, #0
 80019f6:	4669      	mov	r1, sp
 80019f8:	f88d 2005 	strb.w	r2, [sp, #5]
 80019fc:	f88d 3007 	strb.w	r3, [sp, #7]
 8001a00:	9400      	str	r4, [sp, #0]
 8001a02:	f000 f977 	bl	8001cf4 <GPIO_Init>
 8001a06:	4628      	mov	r0, r5
 8001a08:	4621      	mov	r1, r4
 8001a0a:	f000 f9bc 	bl	8001d86 <GPIO_ResetBits>
 8001a0e:	f7ff ffe1 	bl	80019d4 <i2c_delay>
 8001a12:	b003      	add	sp, #12
 8001a14:	bd30      	pop	{r4, r5, pc}
 8001a16:	bf00      	nop
 8001a18:	48000400 	.word	0x48000400

08001a1c <SetHighSDA>:
 8001a1c:	b537      	push	{r0, r1, r2, r4, r5, lr}
 8001a1e:	4d0d      	ldr	r5, [pc, #52]	; (8001a54 <SetHighSDA+0x38>)
 8001a20:	2203      	movs	r2, #3
 8001a22:	2300      	movs	r3, #0
 8001a24:	2480      	movs	r4, #128	; 0x80
 8001a26:	f88d 2005 	strb.w	r2, [sp, #5]
 8001a2a:	4628      	mov	r0, r5
 8001a2c:	2201      	movs	r2, #1
 8001a2e:	4669      	mov	r1, sp
 8001a30:	f88d 3004 	strb.w	r3, [sp, #4]
 8001a34:	f88d 2006 	strb.w	r2, [sp, #6]
 8001a38:	f88d 3007 	strb.w	r3, [sp, #7]
 8001a3c:	9400      	str	r4, [sp, #0]
 8001a3e:	f000 f959 	bl	8001cf4 <GPIO_Init>
 8001a42:	4628      	mov	r0, r5
 8001a44:	4621      	mov	r1, r4
 8001a46:	f000 f99a 	bl	8001d7e <GPIO_SetBits>
 8001a4a:	f7ff ffc3 	bl	80019d4 <i2c_delay>
 8001a4e:	b003      	add	sp, #12
 8001a50:	bd30      	pop	{r4, r5, pc}
 8001a52:	bf00      	nop
 8001a54:	48000400 	.word	0x48000400

08001a58 <SetLowSCL>:
 8001a58:	b508      	push	{r3, lr}
 8001a5a:	4804      	ldr	r0, [pc, #16]	; (8001a6c <SetLowSCL+0x14>)
 8001a5c:	2140      	movs	r1, #64	; 0x40
 8001a5e:	f000 f992 	bl	8001d86 <GPIO_ResetBits>
 8001a62:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001a66:	f7ff bfb5 	b.w	80019d4 <i2c_delay>
 8001a6a:	bf00      	nop
 8001a6c:	48000400 	.word	0x48000400

08001a70 <SetHighSCL>:
 8001a70:	b508      	push	{r3, lr}
 8001a72:	4804      	ldr	r0, [pc, #16]	; (8001a84 <SetHighSCL+0x14>)
 8001a74:	2140      	movs	r1, #64	; 0x40
 8001a76:	f000 f982 	bl	8001d7e <GPIO_SetBits>
 8001a7a:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001a7e:	f7ff bfa9 	b.w	80019d4 <i2c_delay>
 8001a82:	bf00      	nop
 8001a84:	48000400 	.word	0x48000400

08001a88 <i2c_0_init>:
 8001a88:	b507      	push	{r0, r1, r2, lr}
 8001a8a:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 8001a8e:	2101      	movs	r1, #1
 8001a90:	f000 fbea 	bl	8002268 <RCC_AHBPeriphClockCmd>
 8001a94:	23c0      	movs	r3, #192	; 0xc0
 8001a96:	9300      	str	r3, [sp, #0]
 8001a98:	2301      	movs	r3, #1
 8001a9a:	2203      	movs	r2, #3
 8001a9c:	480a      	ldr	r0, [pc, #40]	; (8001ac8 <i2c_0_init+0x40>)
 8001a9e:	f88d 3004 	strb.w	r3, [sp, #4]
 8001aa2:	4669      	mov	r1, sp
 8001aa4:	f88d 3006 	strb.w	r3, [sp, #6]
 8001aa8:	2300      	movs	r3, #0
 8001aaa:	f88d 2005 	strb.w	r2, [sp, #5]
 8001aae:	f88d 3007 	strb.w	r3, [sp, #7]
 8001ab2:	f000 f91f 	bl	8001cf4 <GPIO_Init>
 8001ab6:	f7ff ffdb 	bl	8001a70 <SetHighSCL>
 8001aba:	f7ff ff91 	bl	80019e0 <SetLowSDA>
 8001abe:	f7ff ffad 	bl	8001a1c <SetHighSDA>
 8001ac2:	b003      	add	sp, #12
 8001ac4:	f85d fb04 	ldr.w	pc, [sp], #4
 8001ac8:	48000400 	.word	0x48000400

08001acc <i2cStart>:
 8001acc:	b508      	push	{r3, lr}
 8001ace:	f7ff ffcf 	bl	8001a70 <SetHighSCL>
 8001ad2:	f7ff ffa3 	bl	8001a1c <SetHighSDA>
 8001ad6:	f7ff ffcb 	bl	8001a70 <SetHighSCL>
 8001ada:	f7ff ff81 	bl	80019e0 <SetLowSDA>
 8001ade:	f7ff ffbb 	bl	8001a58 <SetLowSCL>
 8001ae2:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001ae6:	f7ff bf99 	b.w	8001a1c <SetHighSDA>

08001aea <i2cStop>:
 8001aea:	b508      	push	{r3, lr}
 8001aec:	f7ff ffb4 	bl	8001a58 <SetLowSCL>
 8001af0:	f7ff ff76 	bl	80019e0 <SetLowSDA>
 8001af4:	f7ff ffbc 	bl	8001a70 <SetHighSCL>
 8001af8:	f7ff ff72 	bl	80019e0 <SetLowSDA>
 8001afc:	f7ff ffb8 	bl	8001a70 <SetHighSCL>
 8001b00:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001b04:	f7ff bf8a 	b.w	8001a1c <SetHighSDA>

08001b08 <i2cWrite>:
 8001b08:	b538      	push	{r3, r4, r5, lr}
 8001b0a:	4604      	mov	r4, r0
 8001b0c:	2508      	movs	r5, #8
 8001b0e:	f7ff ffa3 	bl	8001a58 <SetLowSCL>
 8001b12:	0623      	lsls	r3, r4, #24
 8001b14:	d502      	bpl.n	8001b1c <i2cWrite+0x14>
 8001b16:	f7ff ff81 	bl	8001a1c <SetHighSDA>
 8001b1a:	e001      	b.n	8001b20 <i2cWrite+0x18>
 8001b1c:	f7ff ff60 	bl	80019e0 <SetLowSDA>
 8001b20:	3d01      	subs	r5, #1
 8001b22:	f7ff ffa5 	bl	8001a70 <SetHighSCL>
 8001b26:	0064      	lsls	r4, r4, #1
 8001b28:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 8001b2c:	b2e4      	uxtb	r4, r4
 8001b2e:	d1ee      	bne.n	8001b0e <i2cWrite+0x6>
 8001b30:	f7ff ff92 	bl	8001a58 <SetLowSCL>
 8001b34:	f7ff ff72 	bl	8001a1c <SetHighSDA>
 8001b38:	f7ff ff9a 	bl	8001a70 <SetHighSCL>
 8001b3c:	4b05      	ldr	r3, [pc, #20]	; (8001b54 <i2cWrite+0x4c>)
 8001b3e:	8a1c      	ldrh	r4, [r3, #16]
 8001b40:	b2a4      	uxth	r4, r4
 8001b42:	f7ff ff89 	bl	8001a58 <SetLowSCL>
 8001b46:	f7ff ff45 	bl	80019d4 <i2c_delay>
 8001b4a:	f084 0080 	eor.w	r0, r4, #128	; 0x80
 8001b4e:	f3c0 10c0 	ubfx	r0, r0, #7, #1
 8001b52:	bd38      	pop	{r3, r4, r5, pc}
 8001b54:	48000400 	.word	0x48000400

08001b58 <i2cRead>:
 8001b58:	b570      	push	{r4, r5, r6, lr}
 8001b5a:	4606      	mov	r6, r0
 8001b5c:	f7ff ff7c 	bl	8001a58 <SetLowSCL>
 8001b60:	f7ff ff5c 	bl	8001a1c <SetHighSDA>
 8001b64:	2508      	movs	r5, #8
 8001b66:	2400      	movs	r4, #0
 8001b68:	f7ff ff82 	bl	8001a70 <SetHighSCL>
 8001b6c:	4b0d      	ldr	r3, [pc, #52]	; (8001ba4 <i2cRead+0x4c>)
 8001b6e:	8a1b      	ldrh	r3, [r3, #16]
 8001b70:	0064      	lsls	r4, r4, #1
 8001b72:	061b      	lsls	r3, r3, #24
 8001b74:	b2e4      	uxtb	r4, r4
 8001b76:	bf48      	it	mi
 8001b78:	3401      	addmi	r4, #1
 8001b7a:	f105 35ff 	add.w	r5, r5, #4294967295
 8001b7e:	bf48      	it	mi
 8001b80:	b2e4      	uxtbmi	r4, r4
 8001b82:	f7ff ff69 	bl	8001a58 <SetLowSCL>
 8001b86:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 8001b8a:	d1ed      	bne.n	8001b68 <i2cRead+0x10>
 8001b8c:	b10e      	cbz	r6, 8001b92 <i2cRead+0x3a>
 8001b8e:	f7ff ff27 	bl	80019e0 <SetLowSDA>
 8001b92:	f7ff ff6d 	bl	8001a70 <SetHighSCL>
 8001b96:	f7ff ff5f 	bl	8001a58 <SetLowSCL>
 8001b9a:	f7ff ff1b 	bl	80019d4 <i2c_delay>
 8001b9e:	4620      	mov	r0, r4
 8001ba0:	bd70      	pop	{r4, r5, r6, pc}
 8001ba2:	bf00      	nop
 8001ba4:	48000400 	.word	0x48000400

08001ba8 <i2c_write_reg>:
 8001ba8:	b570      	push	{r4, r5, r6, lr}
 8001baa:	4605      	mov	r5, r0
 8001bac:	460c      	mov	r4, r1
 8001bae:	4616      	mov	r6, r2
 8001bb0:	f7ff ff8c 	bl	8001acc <i2cStart>
 8001bb4:	4628      	mov	r0, r5
 8001bb6:	f7ff ffa7 	bl	8001b08 <i2cWrite>
 8001bba:	4620      	mov	r0, r4
 8001bbc:	f7ff ffa4 	bl	8001b08 <i2cWrite>
 8001bc0:	4630      	mov	r0, r6
 8001bc2:	f7ff ffa1 	bl	8001b08 <i2cWrite>
 8001bc6:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8001bca:	f7ff bf8e 	b.w	8001aea <i2cStop>

08001bce <i2c_read_reg>:
 8001bce:	b538      	push	{r3, r4, r5, lr}
 8001bd0:	4604      	mov	r4, r0
 8001bd2:	460d      	mov	r5, r1
 8001bd4:	f7ff ff7a 	bl	8001acc <i2cStart>
 8001bd8:	4620      	mov	r0, r4
 8001bda:	f7ff ff95 	bl	8001b08 <i2cWrite>
 8001bde:	4628      	mov	r0, r5
 8001be0:	f7ff ff92 	bl	8001b08 <i2cWrite>
 8001be4:	f7ff ff72 	bl	8001acc <i2cStart>
 8001be8:	f044 0001 	orr.w	r0, r4, #1
 8001bec:	f7ff ff8c 	bl	8001b08 <i2cWrite>
 8001bf0:	2000      	movs	r0, #0
 8001bf2:	f7ff ffb1 	bl	8001b58 <i2cRead>
 8001bf6:	4604      	mov	r4, r0
 8001bf8:	f7ff ff77 	bl	8001aea <i2cStop>
 8001bfc:	4620      	mov	r0, r4
 8001bfe:	bd38      	pop	{r3, r4, r5, pc}

08001c00 <gpio_init>:
 8001c00:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
 8001c04:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 8001c08:	2101      	movs	r1, #1
 8001c0a:	f000 fb2d 	bl	8002268 <RCC_AHBPeriphClockCmd>
 8001c0e:	4d21      	ldr	r5, [pc, #132]	; (8001c94 <gpio_init+0x94>)
 8001c10:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 8001c14:	2101      	movs	r1, #1
 8001c16:	f000 fb27 	bl	8002268 <RCC_AHBPeriphClockCmd>
 8001c1a:	f44f 2000 	mov.w	r0, #524288	; 0x80000
 8001c1e:	2101      	movs	r1, #1
 8001c20:	f000 fb22 	bl	8002268 <RCC_AHBPeriphClockCmd>
 8001c24:	2400      	movs	r4, #0
 8001c26:	2603      	movs	r6, #3
 8001c28:	f44f 4900 	mov.w	r9, #32768	; 0x8000
 8001c2c:	2701      	movs	r7, #1
 8001c2e:	4628      	mov	r0, r5
 8001c30:	4669      	mov	r1, sp
 8001c32:	f88d 7004 	strb.w	r7, [sp, #4]
 8001c36:	f8cd 9000 	str.w	r9, [sp]
 8001c3a:	f88d 4006 	strb.w	r4, [sp, #6]
 8001c3e:	f88d 6005 	strb.w	r6, [sp, #5]
 8001c42:	f88d 4007 	strb.w	r4, [sp, #7]
 8001c46:	f000 f855 	bl	8001cf4 <GPIO_Init>
 8001c4a:	f88d 7004 	strb.w	r7, [sp, #4]
 8001c4e:	4f12      	ldr	r7, [pc, #72]	; (8001c98 <gpio_init+0x98>)
 8001c50:	f88d 4006 	strb.w	r4, [sp, #6]
 8001c54:	f44f 5800 	mov.w	r8, #8192	; 0x2000
 8001c58:	4638      	mov	r0, r7
 8001c5a:	4669      	mov	r1, sp
 8001c5c:	f8cd 8000 	str.w	r8, [sp]
 8001c60:	f88d 6005 	strb.w	r6, [sp, #5]
 8001c64:	f88d 4007 	strb.w	r4, [sp, #7]
 8001c68:	f000 f844 	bl	8001cf4 <GPIO_Init>
 8001c6c:	f44f 7300 	mov.w	r3, #512	; 0x200
 8001c70:	4628      	mov	r0, r5
 8001c72:	4669      	mov	r1, sp
 8001c74:	9300      	str	r3, [sp, #0]
 8001c76:	f88d 4004 	strb.w	r4, [sp, #4]
 8001c7a:	f88d 6005 	strb.w	r6, [sp, #5]
 8001c7e:	f88d 4007 	strb.w	r4, [sp, #7]
 8001c82:	f000 f837 	bl	8001cf4 <GPIO_Init>
 8001c86:	f8c5 9018 	str.w	r9, [r5, #24]
 8001c8a:	f8c7 8018 	str.w	r8, [r7, #24]
 8001c8e:	b003      	add	sp, #12
 8001c90:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8001c94:	48000400 	.word	0x48000400
 8001c98:	48000800 	.word	0x48000800

08001c9c <led_on>:
 8001c9c:	0402      	lsls	r2, r0, #16
 8001c9e:	d503      	bpl.n	8001ca8 <led_on+0xc>
 8001ca0:	4b05      	ldr	r3, [pc, #20]	; (8001cb8 <led_on+0x1c>)
 8001ca2:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 8001ca6:	619a      	str	r2, [r3, #24]
 8001ca8:	0483      	lsls	r3, r0, #18
 8001caa:	d503      	bpl.n	8001cb4 <led_on+0x18>
 8001cac:	4b03      	ldr	r3, [pc, #12]	; (8001cbc <led_on+0x20>)
 8001cae:	f44f 5200 	mov.w	r2, #8192	; 0x2000
 8001cb2:	851a      	strh	r2, [r3, #40]	; 0x28
 8001cb4:	4770      	bx	lr
 8001cb6:	bf00      	nop
 8001cb8:	48000400 	.word	0x48000400
 8001cbc:	48000800 	.word	0x48000800

08001cc0 <led_off>:
 8001cc0:	0402      	lsls	r2, r0, #16
 8001cc2:	d503      	bpl.n	8001ccc <led_off+0xc>
 8001cc4:	4b05      	ldr	r3, [pc, #20]	; (8001cdc <led_off+0x1c>)
 8001cc6:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 8001cca:	851a      	strh	r2, [r3, #40]	; 0x28
 8001ccc:	0483      	lsls	r3, r0, #18
 8001cce:	d503      	bpl.n	8001cd8 <led_off+0x18>
 8001cd0:	4b03      	ldr	r3, [pc, #12]	; (8001ce0 <led_off+0x20>)
 8001cd2:	f44f 5200 	mov.w	r2, #8192	; 0x2000
 8001cd6:	619a      	str	r2, [r3, #24]
 8001cd8:	4770      	bx	lr
 8001cda:	bf00      	nop
 8001cdc:	48000400 	.word	0x48000400
 8001ce0:	48000800 	.word	0x48000800

08001ce4 <get_key>:
 8001ce4:	4b02      	ldr	r3, [pc, #8]	; (8001cf0 <get_key+0xc>)
 8001ce6:	8a18      	ldrh	r0, [r3, #16]
 8001ce8:	43c0      	mvns	r0, r0
 8001cea:	f400 7000 	and.w	r0, r0, #512	; 0x200
 8001cee:	4770      	bx	lr
 8001cf0:	48000400 	.word	0x48000400

08001cf4 <GPIO_Init>:
 8001cf4:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001cf6:	bf00      	nop
 8001cf8:	bf00      	nop
 8001cfa:	bf00      	nop
 8001cfc:	bf00      	nop
 8001cfe:	2300      	movs	r3, #0
 8001d00:	680e      	ldr	r6, [r1, #0]
 8001d02:	461a      	mov	r2, r3
 8001d04:	2501      	movs	r5, #1
 8001d06:	4095      	lsls	r5, r2
 8001d08:	ea05 0406 	and.w	r4, r5, r6
 8001d0c:	42ac      	cmp	r4, r5
 8001d0e:	d130      	bne.n	8001d72 <GPIO_Init+0x7e>
 8001d10:	790d      	ldrb	r5, [r1, #4]
 8001d12:	1e6f      	subs	r7, r5, #1
 8001d14:	2f01      	cmp	r7, #1
 8001d16:	d81c      	bhi.n	8001d52 <GPIO_Init+0x5e>
 8001d18:	bf00      	nop
 8001d1a:	f04f 0c03 	mov.w	ip, #3
 8001d1e:	6887      	ldr	r7, [r0, #8]
 8001d20:	fa0c fc03 	lsl.w	ip, ip, r3
 8001d24:	ea27 070c 	bic.w	r7, r7, ip
 8001d28:	6087      	str	r7, [r0, #8]
 8001d2a:	f891 c005 	ldrb.w	ip, [r1, #5]
 8001d2e:	6887      	ldr	r7, [r0, #8]
 8001d30:	fa0c fc03 	lsl.w	ip, ip, r3
 8001d34:	ea4c 0707 	orr.w	r7, ip, r7
 8001d38:	6087      	str	r7, [r0, #8]
 8001d3a:	bf00      	nop
 8001d3c:	8887      	ldrh	r7, [r0, #4]
 8001d3e:	b2bf      	uxth	r7, r7
 8001d40:	ea27 0404 	bic.w	r4, r7, r4
 8001d44:	8084      	strh	r4, [r0, #4]
 8001d46:	798c      	ldrb	r4, [r1, #6]
 8001d48:	8887      	ldrh	r7, [r0, #4]
 8001d4a:	4094      	lsls	r4, r2
 8001d4c:	433c      	orrs	r4, r7
 8001d4e:	b2a4      	uxth	r4, r4
 8001d50:	8084      	strh	r4, [r0, #4]
 8001d52:	2403      	movs	r4, #3
 8001d54:	6807      	ldr	r7, [r0, #0]
 8001d56:	409c      	lsls	r4, r3
 8001d58:	43e4      	mvns	r4, r4
 8001d5a:	4027      	ands	r7, r4
 8001d5c:	6007      	str	r7, [r0, #0]
 8001d5e:	6807      	ldr	r7, [r0, #0]
 8001d60:	409d      	lsls	r5, r3
 8001d62:	433d      	orrs	r5, r7
 8001d64:	6005      	str	r5, [r0, #0]
 8001d66:	68c5      	ldr	r5, [r0, #12]
 8001d68:	402c      	ands	r4, r5
 8001d6a:	79cd      	ldrb	r5, [r1, #7]
 8001d6c:	409d      	lsls	r5, r3
 8001d6e:	432c      	orrs	r4, r5
 8001d70:	60c4      	str	r4, [r0, #12]
 8001d72:	3201      	adds	r2, #1
 8001d74:	2a10      	cmp	r2, #16
 8001d76:	f103 0302 	add.w	r3, r3, #2
 8001d7a:	d1c3      	bne.n	8001d04 <GPIO_Init+0x10>
 8001d7c:	bdf0      	pop	{r4, r5, r6, r7, pc}

08001d7e <GPIO_SetBits>:
 8001d7e:	bf00      	nop
 8001d80:	bf00      	nop
 8001d82:	6181      	str	r1, [r0, #24]
 8001d84:	4770      	bx	lr

08001d86 <GPIO_ResetBits>:
 8001d86:	bf00      	nop
 8001d88:	bf00      	nop
 8001d8a:	8501      	strh	r1, [r0, #40]	; 0x28
 8001d8c:	4770      	bx	lr

08001d8e <GPIO_PinAFConfig>:
 8001d8e:	b510      	push	{r4, lr}
 8001d90:	bf00      	nop
 8001d92:	bf00      	nop
 8001d94:	bf00      	nop
 8001d96:	f001 0307 	and.w	r3, r1, #7
 8001d9a:	08c9      	lsrs	r1, r1, #3
 8001d9c:	eb00 0081 	add.w	r0, r0, r1, lsl #2
 8001da0:	009b      	lsls	r3, r3, #2
 8001da2:	6a04      	ldr	r4, [r0, #32]
 8001da4:	210f      	movs	r1, #15
 8001da6:	4099      	lsls	r1, r3
 8001da8:	ea24 0101 	bic.w	r1, r4, r1
 8001dac:	6201      	str	r1, [r0, #32]
 8001dae:	6a01      	ldr	r1, [r0, #32]
 8001db0:	fa02 f303 	lsl.w	r3, r2, r3
 8001db4:	430b      	orrs	r3, r1
 8001db6:	6203      	str	r3, [r0, #32]
 8001db8:	bd10      	pop	{r4, pc}
	...

08001dbc <SystemInit>:
 8001dbc:	4b39      	ldr	r3, [pc, #228]	; (8001ea4 <SystemInit+0xe8>)
 8001dbe:	f8d3 2088 	ldr.w	r2, [r3, #136]	; 0x88
 8001dc2:	f442 0270 	orr.w	r2, r2, #15728640	; 0xf00000
 8001dc6:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
 8001dca:	4b37      	ldr	r3, [pc, #220]	; (8001ea8 <SystemInit+0xec>)
 8001dcc:	681a      	ldr	r2, [r3, #0]
 8001dce:	f042 0201 	orr.w	r2, r2, #1
 8001dd2:	601a      	str	r2, [r3, #0]
 8001dd4:	6859      	ldr	r1, [r3, #4]
 8001dd6:	4a35      	ldr	r2, [pc, #212]	; (8001eac <SystemInit+0xf0>)
 8001dd8:	400a      	ands	r2, r1
 8001dda:	605a      	str	r2, [r3, #4]
 8001ddc:	681a      	ldr	r2, [r3, #0]
 8001dde:	f022 7284 	bic.w	r2, r2, #17301504	; 0x1080000
 8001de2:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
 8001de6:	601a      	str	r2, [r3, #0]
 8001de8:	681a      	ldr	r2, [r3, #0]
 8001dea:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 8001dee:	601a      	str	r2, [r3, #0]
 8001df0:	685a      	ldr	r2, [r3, #4]
 8001df2:	f422 02fe 	bic.w	r2, r2, #8323072	; 0x7f0000
 8001df6:	605a      	str	r2, [r3, #4]
 8001df8:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8001dfa:	f022 020f 	bic.w	r2, r2, #15
 8001dfe:	62da      	str	r2, [r3, #44]	; 0x2c
 8001e00:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001e02:	4a2b      	ldr	r2, [pc, #172]	; (8001eb0 <SystemInit+0xf4>)
 8001e04:	b082      	sub	sp, #8
 8001e06:	400a      	ands	r2, r1
 8001e08:	631a      	str	r2, [r3, #48]	; 0x30
 8001e0a:	2200      	movs	r2, #0
 8001e0c:	609a      	str	r2, [r3, #8]
 8001e0e:	9200      	str	r2, [sp, #0]
 8001e10:	9201      	str	r2, [sp, #4]
 8001e12:	681a      	ldr	r2, [r3, #0]
 8001e14:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
 8001e18:	601a      	str	r2, [r3, #0]
 8001e1a:	681a      	ldr	r2, [r3, #0]
 8001e1c:	f402 3200 	and.w	r2, r2, #131072	; 0x20000
 8001e20:	9201      	str	r2, [sp, #4]
 8001e22:	9a00      	ldr	r2, [sp, #0]
 8001e24:	3201      	adds	r2, #1
 8001e26:	9200      	str	r2, [sp, #0]
 8001e28:	9a01      	ldr	r2, [sp, #4]
 8001e2a:	b91a      	cbnz	r2, 8001e34 <SystemInit+0x78>
 8001e2c:	9a00      	ldr	r2, [sp, #0]
 8001e2e:	f5b2 4fa0 	cmp.w	r2, #20480	; 0x5000
 8001e32:	d1f2      	bne.n	8001e1a <SystemInit+0x5e>
 8001e34:	681a      	ldr	r2, [r3, #0]
 8001e36:	f412 3200 	ands.w	r2, r2, #131072	; 0x20000
 8001e3a:	bf18      	it	ne
 8001e3c:	2201      	movne	r2, #1
 8001e3e:	9201      	str	r2, [sp, #4]
 8001e40:	9a01      	ldr	r2, [sp, #4]
 8001e42:	2a01      	cmp	r2, #1
 8001e44:	d005      	beq.n	8001e52 <SystemInit+0x96>
 8001e46:	4b17      	ldr	r3, [pc, #92]	; (8001ea4 <SystemInit+0xe8>)
 8001e48:	f04f 6200 	mov.w	r2, #134217728	; 0x8000000
 8001e4c:	609a      	str	r2, [r3, #8]
 8001e4e:	b002      	add	sp, #8
 8001e50:	4770      	bx	lr
 8001e52:	4a18      	ldr	r2, [pc, #96]	; (8001eb4 <SystemInit+0xf8>)
 8001e54:	2112      	movs	r1, #18
 8001e56:	6011      	str	r1, [r2, #0]
 8001e58:	685a      	ldr	r2, [r3, #4]
 8001e5a:	605a      	str	r2, [r3, #4]
 8001e5c:	685a      	ldr	r2, [r3, #4]
 8001e5e:	605a      	str	r2, [r3, #4]
 8001e60:	685a      	ldr	r2, [r3, #4]
 8001e62:	f442 6280 	orr.w	r2, r2, #1024	; 0x400
 8001e66:	605a      	str	r2, [r3, #4]
 8001e68:	685a      	ldr	r2, [r3, #4]
 8001e6a:	f422 127c 	bic.w	r2, r2, #4128768	; 0x3f0000
 8001e6e:	605a      	str	r2, [r3, #4]
 8001e70:	685a      	ldr	r2, [r3, #4]
 8001e72:	f442 12e8 	orr.w	r2, r2, #1900544	; 0x1d0000
 8001e76:	605a      	str	r2, [r3, #4]
 8001e78:	681a      	ldr	r2, [r3, #0]
 8001e7a:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
 8001e7e:	601a      	str	r2, [r3, #0]
 8001e80:	6819      	ldr	r1, [r3, #0]
 8001e82:	4a09      	ldr	r2, [pc, #36]	; (8001ea8 <SystemInit+0xec>)
 8001e84:	0189      	lsls	r1, r1, #6
 8001e86:	d5fb      	bpl.n	8001e80 <SystemInit+0xc4>
 8001e88:	6851      	ldr	r1, [r2, #4]
 8001e8a:	f021 0103 	bic.w	r1, r1, #3
 8001e8e:	6051      	str	r1, [r2, #4]
 8001e90:	6851      	ldr	r1, [r2, #4]
 8001e92:	f041 0102 	orr.w	r1, r1, #2
 8001e96:	6051      	str	r1, [r2, #4]
 8001e98:	685a      	ldr	r2, [r3, #4]
 8001e9a:	f002 020c 	and.w	r2, r2, #12
 8001e9e:	2a08      	cmp	r2, #8
 8001ea0:	d1fa      	bne.n	8001e98 <SystemInit+0xdc>
 8001ea2:	e7d0      	b.n	8001e46 <SystemInit+0x8a>
 8001ea4:	e000ed00 	.word	0xe000ed00
 8001ea8:	40021000 	.word	0x40021000
 8001eac:	f87fc00c 	.word	0xf87fc00c
 8001eb0:	ff00fccc 	.word	0xff00fccc
 8001eb4:	40022000 	.word	0x40022000

08001eb8 <sys_tick_init>:
 8001eb8:	4b05      	ldr	r3, [pc, #20]	; (8001ed0 <sys_tick_init+0x18>)
 8001eba:	4a06      	ldr	r2, [pc, #24]	; (8001ed4 <sys_tick_init+0x1c>)
 8001ebc:	605a      	str	r2, [r3, #4]
 8001ebe:	4a06      	ldr	r2, [pc, #24]	; (8001ed8 <sys_tick_init+0x20>)
 8001ec0:	21f0      	movs	r1, #240	; 0xf0
 8001ec2:	f882 1023 	strb.w	r1, [r2, #35]	; 0x23
 8001ec6:	2200      	movs	r2, #0
 8001ec8:	609a      	str	r2, [r3, #8]
 8001eca:	2207      	movs	r2, #7
 8001ecc:	601a      	str	r2, [r3, #0]
 8001ece:	4770      	bx	lr
 8001ed0:	e000e010 	.word	0xe000e010
 8001ed4:	00029040 	.word	0x00029040
 8001ed8:	e000ed00 	.word	0xe000ed00

08001edc <sleep>:
 8001edc:	bf30      	wfi
 8001ede:	4770      	bx	lr

08001ee0 <sytem_clock_init>:
 8001ee0:	f7ff bf6c 	b.w	8001dbc <SystemInit>

08001ee4 <lib_low_level_init>:
 8001ee4:	b508      	push	{r3, lr}
 8001ee6:	f7ff fffb 	bl	8001ee0 <sytem_clock_init>
 8001eea:	f7ff fe89 	bl	8001c00 <gpio_init>
 8001eee:	f000 fa7f 	bl	80023f0 <uart_init>
 8001ef2:	f000 fddb 	bl	8002aac <timer_init>
 8001ef6:	f000 fc61 	bl	80027bc <pwm_init>
 8001efa:	f000 fbe1 	bl	80026c0 <drv8834_init>
 8001efe:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001f02:	f7ff bdc1 	b.w	8001a88 <i2c_0_init>
	...

08001f08 <RCC_GetClocksFreq>:
 8001f08:	4aaf      	ldr	r2, [pc, #700]	; (80021c8 <RCC_GetClocksFreq+0x2c0>)
 8001f0a:	6851      	ldr	r1, [r2, #4]
 8001f0c:	f001 010c 	and.w	r1, r1, #12
 8001f10:	2904      	cmp	r1, #4
 8001f12:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8001f16:	d005      	beq.n	8001f24 <RCC_GetClocksFreq+0x1c>
 8001f18:	2908      	cmp	r1, #8
 8001f1a:	d006      	beq.n	8001f2a <RCC_GetClocksFreq+0x22>
 8001f1c:	4bab      	ldr	r3, [pc, #684]	; (80021cc <RCC_GetClocksFreq+0x2c4>)
 8001f1e:	6003      	str	r3, [r0, #0]
 8001f20:	b9b9      	cbnz	r1, 8001f52 <RCC_GetClocksFreq+0x4a>
 8001f22:	e017      	b.n	8001f54 <RCC_GetClocksFreq+0x4c>
 8001f24:	4ba9      	ldr	r3, [pc, #676]	; (80021cc <RCC_GetClocksFreq+0x2c4>)
 8001f26:	6003      	str	r3, [r0, #0]
 8001f28:	e013      	b.n	8001f52 <RCC_GetClocksFreq+0x4a>
 8001f2a:	6853      	ldr	r3, [r2, #4]
 8001f2c:	6854      	ldr	r4, [r2, #4]
 8001f2e:	f3c3 4383 	ubfx	r3, r3, #18, #4
 8001f32:	03e6      	lsls	r6, r4, #15
 8001f34:	f103 0302 	add.w	r3, r3, #2
 8001f38:	d401      	bmi.n	8001f3e <RCC_GetClocksFreq+0x36>
 8001f3a:	49a5      	ldr	r1, [pc, #660]	; (80021d0 <RCC_GetClocksFreq+0x2c8>)
 8001f3c:	e006      	b.n	8001f4c <RCC_GetClocksFreq+0x44>
 8001f3e:	6ad1      	ldr	r1, [r2, #44]	; 0x2c
 8001f40:	4ca2      	ldr	r4, [pc, #648]	; (80021cc <RCC_GetClocksFreq+0x2c4>)
 8001f42:	f001 010f 	and.w	r1, r1, #15
 8001f46:	3101      	adds	r1, #1
 8001f48:	fbb4 f1f1 	udiv	r1, r4, r1
 8001f4c:	4359      	muls	r1, r3
 8001f4e:	6001      	str	r1, [r0, #0]
 8001f50:	e000      	b.n	8001f54 <RCC_GetClocksFreq+0x4c>
 8001f52:	2100      	movs	r1, #0
 8001f54:	6853      	ldr	r3, [r2, #4]
 8001f56:	4e9f      	ldr	r6, [pc, #636]	; (80021d4 <RCC_GetClocksFreq+0x2cc>)
 8001f58:	f8df 827c 	ldr.w	r8, [pc, #636]	; 80021d8 <RCC_GetClocksFreq+0x2d0>
 8001f5c:	f3c3 1303 	ubfx	r3, r3, #4, #4
 8001f60:	5cf5      	ldrb	r5, [r6, r3]
 8001f62:	6803      	ldr	r3, [r0, #0]
 8001f64:	b2ed      	uxtb	r5, r5
 8001f66:	fa23 f405 	lsr.w	r4, r3, r5
 8001f6a:	6044      	str	r4, [r0, #4]
 8001f6c:	6857      	ldr	r7, [r2, #4]
 8001f6e:	f3c7 2702 	ubfx	r7, r7, #8, #3
 8001f72:	5df7      	ldrb	r7, [r6, r7]
 8001f74:	fa24 f707 	lsr.w	r7, r4, r7
 8001f78:	6087      	str	r7, [r0, #8]
 8001f7a:	f8d2 c004 	ldr.w	ip, [r2, #4]
 8001f7e:	f3cc 2cc2 	ubfx	ip, ip, #11, #3
 8001f82:	f816 600c 	ldrb.w	r6, [r6, ip]
 8001f86:	b2f6      	uxtb	r6, r6
 8001f88:	40f4      	lsrs	r4, r6
 8001f8a:	60c4      	str	r4, [r0, #12]
 8001f8c:	f8d2 902c 	ldr.w	r9, [r2, #44]	; 0x2c
 8001f90:	f3c9 1904 	ubfx	r9, r9, #4, #5
 8001f94:	f009 0c0f 	and.w	ip, r9, #15
 8001f98:	f019 0f10 	tst.w	r9, #16
 8001f9c:	f838 c01c 	ldrh.w	ip, [r8, ip, lsl #1]
 8001fa0:	46c1      	mov	r9, r8
 8001fa2:	fa1f fc8c 	uxth.w	ip, ip
 8001fa6:	d007      	beq.n	8001fb8 <RCC_GetClocksFreq+0xb0>
 8001fa8:	f1bc 0f00 	cmp.w	ip, #0
 8001fac:	d004      	beq.n	8001fb8 <RCC_GetClocksFreq+0xb0>
 8001fae:	fbb1 fcfc 	udiv	ip, r1, ip
 8001fb2:	f8c0 c010 	str.w	ip, [r0, #16]
 8001fb6:	e000      	b.n	8001fba <RCC_GetClocksFreq+0xb2>
 8001fb8:	6103      	str	r3, [r0, #16]
 8001fba:	f8d2 802c 	ldr.w	r8, [r2, #44]	; 0x2c
 8001fbe:	f3c8 2844 	ubfx	r8, r8, #9, #5
 8001fc2:	f008 0c0f 	and.w	ip, r8, #15
 8001fc6:	f018 0f10 	tst.w	r8, #16
 8001fca:	f839 c01c 	ldrh.w	ip, [r9, ip, lsl #1]
 8001fce:	fa1f fc8c 	uxth.w	ip, ip
 8001fd2:	d007      	beq.n	8001fe4 <RCC_GetClocksFreq+0xdc>
 8001fd4:	f1bc 0f00 	cmp.w	ip, #0
 8001fd8:	d004      	beq.n	8001fe4 <RCC_GetClocksFreq+0xdc>
 8001fda:	fbb1 fcfc 	udiv	ip, r1, ip
 8001fde:	f8c0 c014 	str.w	ip, [r0, #20]
 8001fe2:	e000      	b.n	8001fe6 <RCC_GetClocksFreq+0xde>
 8001fe4:	6143      	str	r3, [r0, #20]
 8001fe6:	f8d2 c030 	ldr.w	ip, [r2, #48]	; 0x30
 8001fea:	f01c 0f10 	tst.w	ip, #16
 8001fee:	bf06      	itte	eq
 8001ff0:	f8df c1d8 	ldreq.w	ip, [pc, #472]	; 80021cc <RCC_GetClocksFreq+0x2c4>
 8001ff4:	f8c0 c018 	streq.w	ip, [r0, #24]
 8001ff8:	6183      	strne	r3, [r0, #24]
 8001ffa:	f8d2 c030 	ldr.w	ip, [r2, #48]	; 0x30
 8001ffe:	f01c 0f20 	tst.w	ip, #32
 8002002:	bf06      	itte	eq
 8002004:	f8df c1c4 	ldreq.w	ip, [pc, #452]	; 80021cc <RCC_GetClocksFreq+0x2c4>
 8002008:	f8c0 c01c 	streq.w	ip, [r0, #28]
 800200c:	61c3      	strne	r3, [r0, #28]
 800200e:	f8d2 c030 	ldr.w	ip, [r2, #48]	; 0x30
 8002012:	f01c 0f40 	tst.w	ip, #64	; 0x40
 8002016:	bf06      	itte	eq
 8002018:	f8df c1b0 	ldreq.w	ip, [pc, #432]	; 80021cc <RCC_GetClocksFreq+0x2c4>
 800201c:	f8c0 c020 	streq.w	ip, [r0, #32]
 8002020:	6203      	strne	r3, [r0, #32]
 8002022:	f8d2 c030 	ldr.w	ip, [r2, #48]	; 0x30
 8002026:	f41c 7f80 	tst.w	ip, #256	; 0x100
 800202a:	d008      	beq.n	800203e <RCC_GetClocksFreq+0x136>
 800202c:	428b      	cmp	r3, r1
 800202e:	d106      	bne.n	800203e <RCC_GetClocksFreq+0x136>
 8002030:	42ae      	cmp	r6, r5
 8002032:	d104      	bne.n	800203e <RCC_GetClocksFreq+0x136>
 8002034:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8002038:	f8c0 c024 	str.w	ip, [r0, #36]	; 0x24
 800203c:	e000      	b.n	8002040 <RCC_GetClocksFreq+0x138>
 800203e:	6244      	str	r4, [r0, #36]	; 0x24
 8002040:	f8d2 c030 	ldr.w	ip, [r2, #48]	; 0x30
 8002044:	f41c 5f80 	tst.w	ip, #4096	; 0x1000
 8002048:	d008      	beq.n	800205c <RCC_GetClocksFreq+0x154>
 800204a:	428b      	cmp	r3, r1
 800204c:	d106      	bne.n	800205c <RCC_GetClocksFreq+0x154>
 800204e:	42ae      	cmp	r6, r5
 8002050:	d104      	bne.n	800205c <RCC_GetClocksFreq+0x154>
 8002052:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8002056:	f8c0 c028 	str.w	ip, [r0, #40]	; 0x28
 800205a:	e000      	b.n	800205e <RCC_GetClocksFreq+0x156>
 800205c:	6284      	str	r4, [r0, #40]	; 0x28
 800205e:	f8d2 c030 	ldr.w	ip, [r2, #48]	; 0x30
 8002062:	f41c 7f00 	tst.w	ip, #512	; 0x200
 8002066:	d008      	beq.n	800207a <RCC_GetClocksFreq+0x172>
 8002068:	428b      	cmp	r3, r1
 800206a:	d106      	bne.n	800207a <RCC_GetClocksFreq+0x172>
 800206c:	42ae      	cmp	r6, r5
 800206e:	d104      	bne.n	800207a <RCC_GetClocksFreq+0x172>
 8002070:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8002074:	f8c0 c02c 	str.w	ip, [r0, #44]	; 0x2c
 8002078:	e000      	b.n	800207c <RCC_GetClocksFreq+0x174>
 800207a:	62c4      	str	r4, [r0, #44]	; 0x2c
 800207c:	f8d2 c030 	ldr.w	ip, [r2, #48]	; 0x30
 8002080:	f41c 6f80 	tst.w	ip, #1024	; 0x400
 8002084:	d008      	beq.n	8002098 <RCC_GetClocksFreq+0x190>
 8002086:	428b      	cmp	r3, r1
 8002088:	d106      	bne.n	8002098 <RCC_GetClocksFreq+0x190>
 800208a:	42ae      	cmp	r6, r5
 800208c:	d104      	bne.n	8002098 <RCC_GetClocksFreq+0x190>
 800208e:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8002092:	f8c0 c04c 	str.w	ip, [r0, #76]	; 0x4c
 8002096:	e000      	b.n	800209a <RCC_GetClocksFreq+0x192>
 8002098:	64c4      	str	r4, [r0, #76]	; 0x4c
 800209a:	f8d2 c030 	ldr.w	ip, [r2, #48]	; 0x30
 800209e:	f41c 6f00 	tst.w	ip, #2048	; 0x800
 80020a2:	d008      	beq.n	80020b6 <RCC_GetClocksFreq+0x1ae>
 80020a4:	428b      	cmp	r3, r1
 80020a6:	d106      	bne.n	80020b6 <RCC_GetClocksFreq+0x1ae>
 80020a8:	42ae      	cmp	r6, r5
 80020aa:	d104      	bne.n	80020b6 <RCC_GetClocksFreq+0x1ae>
 80020ac:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 80020b0:	f8c0 c050 	str.w	ip, [r0, #80]	; 0x50
 80020b4:	e000      	b.n	80020b8 <RCC_GetClocksFreq+0x1b0>
 80020b6:	6504      	str	r4, [r0, #80]	; 0x50
 80020b8:	f8d2 c030 	ldr.w	ip, [r2, #48]	; 0x30
 80020bc:	f41c 5f00 	tst.w	ip, #8192	; 0x2000
 80020c0:	d008      	beq.n	80020d4 <RCC_GetClocksFreq+0x1cc>
 80020c2:	428b      	cmp	r3, r1
 80020c4:	d106      	bne.n	80020d4 <RCC_GetClocksFreq+0x1cc>
 80020c6:	42ae      	cmp	r6, r5
 80020c8:	d104      	bne.n	80020d4 <RCC_GetClocksFreq+0x1cc>
 80020ca:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 80020ce:	f8c0 c054 	str.w	ip, [r0, #84]	; 0x54
 80020d2:	e000      	b.n	80020d6 <RCC_GetClocksFreq+0x1ce>
 80020d4:	6504      	str	r4, [r0, #80]	; 0x50
 80020d6:	f8d2 c030 	ldr.w	ip, [r2, #48]	; 0x30
 80020da:	f41c 4f00 	tst.w	ip, #32768	; 0x8000
 80020de:	d006      	beq.n	80020ee <RCC_GetClocksFreq+0x1e6>
 80020e0:	428b      	cmp	r3, r1
 80020e2:	d104      	bne.n	80020ee <RCC_GetClocksFreq+0x1e6>
 80020e4:	42ae      	cmp	r6, r5
 80020e6:	d102      	bne.n	80020ee <RCC_GetClocksFreq+0x1e6>
 80020e8:	0059      	lsls	r1, r3, #1
 80020ea:	6581      	str	r1, [r0, #88]	; 0x58
 80020ec:	e000      	b.n	80020f0 <RCC_GetClocksFreq+0x1e8>
 80020ee:	6584      	str	r4, [r0, #88]	; 0x58
 80020f0:	6b15      	ldr	r5, [r2, #48]	; 0x30
 80020f2:	4935      	ldr	r1, [pc, #212]	; (80021c8 <RCC_GetClocksFreq+0x2c0>)
 80020f4:	07ad      	lsls	r5, r5, #30
 80020f6:	d101      	bne.n	80020fc <RCC_GetClocksFreq+0x1f4>
 80020f8:	6384      	str	r4, [r0, #56]	; 0x38
 80020fa:	e015      	b.n	8002128 <RCC_GetClocksFreq+0x220>
 80020fc:	6b0c      	ldr	r4, [r1, #48]	; 0x30
 80020fe:	f004 0403 	and.w	r4, r4, #3
 8002102:	2c01      	cmp	r4, #1
 8002104:	d101      	bne.n	800210a <RCC_GetClocksFreq+0x202>
 8002106:	6383      	str	r3, [r0, #56]	; 0x38
 8002108:	e00e      	b.n	8002128 <RCC_GetClocksFreq+0x220>
 800210a:	6b0c      	ldr	r4, [r1, #48]	; 0x30
 800210c:	f004 0403 	and.w	r4, r4, #3
 8002110:	2c02      	cmp	r4, #2
 8002112:	d102      	bne.n	800211a <RCC_GetClocksFreq+0x212>
 8002114:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 8002118:	e005      	b.n	8002126 <RCC_GetClocksFreq+0x21e>
 800211a:	6b09      	ldr	r1, [r1, #48]	; 0x30
 800211c:	f001 0103 	and.w	r1, r1, #3
 8002120:	2903      	cmp	r1, #3
 8002122:	d101      	bne.n	8002128 <RCC_GetClocksFreq+0x220>
 8002124:	4929      	ldr	r1, [pc, #164]	; (80021cc <RCC_GetClocksFreq+0x2c4>)
 8002126:	6381      	str	r1, [r0, #56]	; 0x38
 8002128:	6b14      	ldr	r4, [r2, #48]	; 0x30
 800212a:	4927      	ldr	r1, [pc, #156]	; (80021c8 <RCC_GetClocksFreq+0x2c0>)
 800212c:	f414 3f40 	tst.w	r4, #196608	; 0x30000
 8002130:	d101      	bne.n	8002136 <RCC_GetClocksFreq+0x22e>
 8002132:	63c7      	str	r7, [r0, #60]	; 0x3c
 8002134:	e018      	b.n	8002168 <RCC_GetClocksFreq+0x260>
 8002136:	6b0c      	ldr	r4, [r1, #48]	; 0x30
 8002138:	f404 3440 	and.w	r4, r4, #196608	; 0x30000
 800213c:	f5b4 3f80 	cmp.w	r4, #65536	; 0x10000
 8002140:	d101      	bne.n	8002146 <RCC_GetClocksFreq+0x23e>
 8002142:	63c3      	str	r3, [r0, #60]	; 0x3c
 8002144:	e010      	b.n	8002168 <RCC_GetClocksFreq+0x260>
 8002146:	6b0c      	ldr	r4, [r1, #48]	; 0x30
 8002148:	f404 3440 	and.w	r4, r4, #196608	; 0x30000
 800214c:	f5b4 3f00 	cmp.w	r4, #131072	; 0x20000
 8002150:	d102      	bne.n	8002158 <RCC_GetClocksFreq+0x250>
 8002152:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 8002156:	e006      	b.n	8002166 <RCC_GetClocksFreq+0x25e>
 8002158:	6b09      	ldr	r1, [r1, #48]	; 0x30
 800215a:	f401 3140 	and.w	r1, r1, #196608	; 0x30000
 800215e:	f5b1 3f40 	cmp.w	r1, #196608	; 0x30000
 8002162:	d101      	bne.n	8002168 <RCC_GetClocksFreq+0x260>
 8002164:	4919      	ldr	r1, [pc, #100]	; (80021cc <RCC_GetClocksFreq+0x2c4>)
 8002166:	63c1      	str	r1, [r0, #60]	; 0x3c
 8002168:	6b14      	ldr	r4, [r2, #48]	; 0x30
 800216a:	4917      	ldr	r1, [pc, #92]	; (80021c8 <RCC_GetClocksFreq+0x2c0>)
 800216c:	f414 2f40 	tst.w	r4, #786432	; 0xc0000
 8002170:	d101      	bne.n	8002176 <RCC_GetClocksFreq+0x26e>
 8002172:	6407      	str	r7, [r0, #64]	; 0x40
 8002174:	e018      	b.n	80021a8 <RCC_GetClocksFreq+0x2a0>
 8002176:	6b0c      	ldr	r4, [r1, #48]	; 0x30
 8002178:	f404 2440 	and.w	r4, r4, #786432	; 0xc0000
 800217c:	f5b4 2f80 	cmp.w	r4, #262144	; 0x40000
 8002180:	d101      	bne.n	8002186 <RCC_GetClocksFreq+0x27e>
 8002182:	6403      	str	r3, [r0, #64]	; 0x40
 8002184:	e010      	b.n	80021a8 <RCC_GetClocksFreq+0x2a0>
 8002186:	6b0c      	ldr	r4, [r1, #48]	; 0x30
 8002188:	f404 2440 	and.w	r4, r4, #786432	; 0xc0000
 800218c:	f5b4 2f00 	cmp.w	r4, #524288	; 0x80000
 8002190:	d102      	bne.n	8002198 <RCC_GetClocksFreq+0x290>
 8002192:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 8002196:	e006      	b.n	80021a6 <RCC_GetClocksFreq+0x29e>
 8002198:	6b09      	ldr	r1, [r1, #48]	; 0x30
 800219a:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 800219e:	f5b1 2f40 	cmp.w	r1, #786432	; 0xc0000
 80021a2:	d101      	bne.n	80021a8 <RCC_GetClocksFreq+0x2a0>
 80021a4:	4909      	ldr	r1, [pc, #36]	; (80021cc <RCC_GetClocksFreq+0x2c4>)
 80021a6:	6401      	str	r1, [r0, #64]	; 0x40
 80021a8:	6b14      	ldr	r4, [r2, #48]	; 0x30
 80021aa:	4907      	ldr	r1, [pc, #28]	; (80021c8 <RCC_GetClocksFreq+0x2c0>)
 80021ac:	f414 1f40 	tst.w	r4, #3145728	; 0x300000
 80021b0:	d101      	bne.n	80021b6 <RCC_GetClocksFreq+0x2ae>
 80021b2:	6447      	str	r7, [r0, #68]	; 0x44
 80021b4:	e023      	b.n	80021fe <RCC_GetClocksFreq+0x2f6>
 80021b6:	6b0c      	ldr	r4, [r1, #48]	; 0x30
 80021b8:	f404 1440 	and.w	r4, r4, #3145728	; 0x300000
 80021bc:	f5b4 1f80 	cmp.w	r4, #1048576	; 0x100000
 80021c0:	d10c      	bne.n	80021dc <RCC_GetClocksFreq+0x2d4>
 80021c2:	6443      	str	r3, [r0, #68]	; 0x44
 80021c4:	e01b      	b.n	80021fe <RCC_GetClocksFreq+0x2f6>
 80021c6:	bf00      	nop
 80021c8:	40021000 	.word	0x40021000
 80021cc:	007a1200 	.word	0x007a1200
 80021d0:	003d0900 	.word	0x003d0900
 80021d4:	20000144 	.word	0x20000144
 80021d8:	20000124 	.word	0x20000124
 80021dc:	6b0c      	ldr	r4, [r1, #48]	; 0x30
 80021de:	f404 1440 	and.w	r4, r4, #3145728	; 0x300000
 80021e2:	f5b4 1f00 	cmp.w	r4, #2097152	; 0x200000
 80021e6:	d102      	bne.n	80021ee <RCC_GetClocksFreq+0x2e6>
 80021e8:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 80021ec:	e006      	b.n	80021fc <RCC_GetClocksFreq+0x2f4>
 80021ee:	6b09      	ldr	r1, [r1, #48]	; 0x30
 80021f0:	f401 1140 	and.w	r1, r1, #3145728	; 0x300000
 80021f4:	f5b1 1f40 	cmp.w	r1, #3145728	; 0x300000
 80021f8:	d101      	bne.n	80021fe <RCC_GetClocksFreq+0x2f6>
 80021fa:	4911      	ldr	r1, [pc, #68]	; (8002240 <RCC_GetClocksFreq+0x338>)
 80021fc:	6441      	str	r1, [r0, #68]	; 0x44
 80021fe:	6b12      	ldr	r2, [r2, #48]	; 0x30
 8002200:	4910      	ldr	r1, [pc, #64]	; (8002244 <RCC_GetClocksFreq+0x33c>)
 8002202:	f412 0f40 	tst.w	r2, #12582912	; 0xc00000
 8002206:	d102      	bne.n	800220e <RCC_GetClocksFreq+0x306>
 8002208:	6487      	str	r7, [r0, #72]	; 0x48
 800220a:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 800220e:	6b0a      	ldr	r2, [r1, #48]	; 0x30
 8002210:	f402 0240 	and.w	r2, r2, #12582912	; 0xc00000
 8002214:	f5b2 0f80 	cmp.w	r2, #4194304	; 0x400000
 8002218:	d00f      	beq.n	800223a <RCC_GetClocksFreq+0x332>
 800221a:	6b0b      	ldr	r3, [r1, #48]	; 0x30
 800221c:	f403 0340 	and.w	r3, r3, #12582912	; 0xc00000
 8002220:	f5b3 0f00 	cmp.w	r3, #8388608	; 0x800000
 8002224:	d102      	bne.n	800222c <RCC_GetClocksFreq+0x324>
 8002226:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 800222a:	e006      	b.n	800223a <RCC_GetClocksFreq+0x332>
 800222c:	6b0b      	ldr	r3, [r1, #48]	; 0x30
 800222e:	f403 0340 	and.w	r3, r3, #12582912	; 0xc00000
 8002232:	f5b3 0f40 	cmp.w	r3, #12582912	; 0xc00000
 8002236:	d101      	bne.n	800223c <RCC_GetClocksFreq+0x334>
 8002238:	4b01      	ldr	r3, [pc, #4]	; (8002240 <RCC_GetClocksFreq+0x338>)
 800223a:	6483      	str	r3, [r0, #72]	; 0x48
 800223c:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8002240:	007a1200 	.word	0x007a1200
 8002244:	40021000 	.word	0x40021000

08002248 <RCC_ADCCLKConfig>:
 8002248:	bf00      	nop
 800224a:	0f03      	lsrs	r3, r0, #28
 800224c:	4b05      	ldr	r3, [pc, #20]	; (8002264 <RCC_ADCCLKConfig+0x1c>)
 800224e:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8002250:	bf14      	ite	ne
 8002252:	f422 5278 	bicne.w	r2, r2, #15872	; 0x3e00
 8002256:	f422 72f8 	biceq.w	r2, r2, #496	; 0x1f0
 800225a:	62da      	str	r2, [r3, #44]	; 0x2c
 800225c:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 800225e:	4310      	orrs	r0, r2
 8002260:	62d8      	str	r0, [r3, #44]	; 0x2c
 8002262:	4770      	bx	lr
 8002264:	40021000 	.word	0x40021000

08002268 <RCC_AHBPeriphClockCmd>:
 8002268:	bf00      	nop
 800226a:	bf00      	nop
 800226c:	4b04      	ldr	r3, [pc, #16]	; (8002280 <RCC_AHBPeriphClockCmd+0x18>)
 800226e:	695a      	ldr	r2, [r3, #20]
 8002270:	b109      	cbz	r1, 8002276 <RCC_AHBPeriphClockCmd+0xe>
 8002272:	4310      	orrs	r0, r2
 8002274:	e001      	b.n	800227a <RCC_AHBPeriphClockCmd+0x12>
 8002276:	ea22 0000 	bic.w	r0, r2, r0
 800227a:	6158      	str	r0, [r3, #20]
 800227c:	4770      	bx	lr
 800227e:	bf00      	nop
 8002280:	40021000 	.word	0x40021000

08002284 <RCC_APB2PeriphClockCmd>:
 8002284:	bf00      	nop
 8002286:	bf00      	nop
 8002288:	4b04      	ldr	r3, [pc, #16]	; (800229c <RCC_APB2PeriphClockCmd+0x18>)
 800228a:	699a      	ldr	r2, [r3, #24]
 800228c:	b109      	cbz	r1, 8002292 <RCC_APB2PeriphClockCmd+0xe>
 800228e:	4310      	orrs	r0, r2
 8002290:	e001      	b.n	8002296 <RCC_APB2PeriphClockCmd+0x12>
 8002292:	ea22 0000 	bic.w	r0, r2, r0
 8002296:	6198      	str	r0, [r3, #24]
 8002298:	4770      	bx	lr
 800229a:	bf00      	nop
 800229c:	40021000 	.word	0x40021000

080022a0 <RCC_APB1PeriphClockCmd>:
 80022a0:	bf00      	nop
 80022a2:	bf00      	nop
 80022a4:	4b04      	ldr	r3, [pc, #16]	; (80022b8 <RCC_APB1PeriphClockCmd+0x18>)
 80022a6:	69da      	ldr	r2, [r3, #28]
 80022a8:	b109      	cbz	r1, 80022ae <RCC_APB1PeriphClockCmd+0xe>
 80022aa:	4310      	orrs	r0, r2
 80022ac:	e001      	b.n	80022b2 <RCC_APB1PeriphClockCmd+0x12>
 80022ae:	ea22 0000 	bic.w	r0, r2, r0
 80022b2:	61d8      	str	r0, [r3, #28]
 80022b4:	4770      	bx	lr
 80022b6:	bf00      	nop
 80022b8:	40021000 	.word	0x40021000

080022bc <ADC_Init>:
 80022bc:	b510      	push	{r4, lr}
 80022be:	bf00      	nop
 80022c0:	bf00      	nop
 80022c2:	bf00      	nop
 80022c4:	bf00      	nop
 80022c6:	bf00      	nop
 80022c8:	bf00      	nop
 80022ca:	bf00      	nop
 80022cc:	bf00      	nop
 80022ce:	bf00      	nop
 80022d0:	4b0c      	ldr	r3, [pc, #48]	; (8002304 <ADC_Init+0x48>)
 80022d2:	68c2      	ldr	r2, [r0, #12]
 80022d4:	4013      	ands	r3, r2
 80022d6:	e891 0014 	ldmia.w	r1, {r2, r4}
 80022da:	4314      	orrs	r4, r2
 80022dc:	688a      	ldr	r2, [r1, #8]
 80022de:	4314      	orrs	r4, r2
 80022e0:	68ca      	ldr	r2, [r1, #12]
 80022e2:	4314      	orrs	r4, r2
 80022e4:	690a      	ldr	r2, [r1, #16]
 80022e6:	4314      	orrs	r4, r2
 80022e8:	694a      	ldr	r2, [r1, #20]
 80022ea:	4314      	orrs	r4, r2
 80022ec:	698a      	ldr	r2, [r1, #24]
 80022ee:	4322      	orrs	r2, r4
 80022f0:	4313      	orrs	r3, r2
 80022f2:	60c3      	str	r3, [r0, #12]
 80022f4:	6b02      	ldr	r2, [r0, #48]	; 0x30
 80022f6:	7f0b      	ldrb	r3, [r1, #28]
 80022f8:	f022 020f 	bic.w	r2, r2, #15
 80022fc:	3b01      	subs	r3, #1
 80022fe:	4313      	orrs	r3, r2
 8002300:	6303      	str	r3, [r0, #48]	; 0x30
 8002302:	bd10      	pop	{r4, pc}
 8002304:	fdffc007 	.word	0xfdffc007

08002308 <ADC_Cmd>:
 8002308:	bf00      	nop
 800230a:	bf00      	nop
 800230c:	6883      	ldr	r3, [r0, #8]
 800230e:	b111      	cbz	r1, 8002316 <ADC_Cmd+0xe>
 8002310:	f043 0301 	orr.w	r3, r3, #1
 8002314:	e001      	b.n	800231a <ADC_Cmd+0x12>
 8002316:	f043 0302 	orr.w	r3, r3, #2
 800231a:	6083      	str	r3, [r0, #8]
 800231c:	4770      	bx	lr

0800231e <ADC_RegularChannelConfig>:
 800231e:	b530      	push	{r4, r5, lr}
 8002320:	bf00      	nop
 8002322:	bf00      	nop
 8002324:	bf00      	nop
 8002326:	2a04      	cmp	r2, #4
 8002328:	d80c      	bhi.n	8002344 <ADC_RegularChannelConfig+0x26>
 800232a:	eb02 0242 	add.w	r2, r2, r2, lsl #1
 800232e:	6b05      	ldr	r5, [r0, #48]	; 0x30
 8002330:	0052      	lsls	r2, r2, #1
 8002332:	241f      	movs	r4, #31
 8002334:	4094      	lsls	r4, r2
 8002336:	ea25 0404 	bic.w	r4, r5, r4
 800233a:	fa01 f202 	lsl.w	r2, r1, r2
 800233e:	4322      	orrs	r2, r4
 8002340:	6302      	str	r2, [r0, #48]	; 0x30
 8002342:	e029      	b.n	8002398 <ADC_RegularChannelConfig+0x7a>
 8002344:	2a09      	cmp	r2, #9
 8002346:	d80c      	bhi.n	8002362 <ADC_RegularChannelConfig+0x44>
 8002348:	2406      	movs	r4, #6
 800234a:	3a05      	subs	r2, #5
 800234c:	4362      	muls	r2, r4
 800234e:	6b45      	ldr	r5, [r0, #52]	; 0x34
 8002350:	241f      	movs	r4, #31
 8002352:	4094      	lsls	r4, r2
 8002354:	ea25 0404 	bic.w	r4, r5, r4
 8002358:	fa01 f202 	lsl.w	r2, r1, r2
 800235c:	4322      	orrs	r2, r4
 800235e:	6342      	str	r2, [r0, #52]	; 0x34
 8002360:	e01a      	b.n	8002398 <ADC_RegularChannelConfig+0x7a>
 8002362:	2a0e      	cmp	r2, #14
 8002364:	f04f 0406 	mov.w	r4, #6
 8002368:	d80b      	bhi.n	8002382 <ADC_RegularChannelConfig+0x64>
 800236a:	3a0a      	subs	r2, #10
 800236c:	4354      	muls	r4, r2
 800236e:	6b85      	ldr	r5, [r0, #56]	; 0x38
 8002370:	221f      	movs	r2, #31
 8002372:	40a2      	lsls	r2, r4
 8002374:	ea25 0202 	bic.w	r2, r5, r2
 8002378:	fa01 f404 	lsl.w	r4, r1, r4
 800237c:	4314      	orrs	r4, r2
 800237e:	6384      	str	r4, [r0, #56]	; 0x38
 8002380:	e00a      	b.n	8002398 <ADC_RegularChannelConfig+0x7a>
 8002382:	3a0f      	subs	r2, #15
 8002384:	4362      	muls	r2, r4
 8002386:	6bc5      	ldr	r5, [r0, #60]	; 0x3c
 8002388:	241f      	movs	r4, #31
 800238a:	4094      	lsls	r4, r2
 800238c:	ea25 0404 	bic.w	r4, r5, r4
 8002390:	fa01 f202 	lsl.w	r2, r1, r2
 8002394:	4322      	orrs	r2, r4
 8002396:	63c2      	str	r2, [r0, #60]	; 0x3c
 8002398:	2909      	cmp	r1, #9
 800239a:	d90f      	bls.n	80023bc <ADC_RegularChannelConfig+0x9e>
 800239c:	390a      	subs	r1, #10
 800239e:	6982      	ldr	r2, [r0, #24]
 80023a0:	6984      	ldr	r4, [r0, #24]
 80023a2:	eb01 0141 	add.w	r1, r1, r1, lsl #1
 80023a6:	2207      	movs	r2, #7
 80023a8:	408a      	lsls	r2, r1
 80023aa:	ea24 0202 	bic.w	r2, r4, r2
 80023ae:	6182      	str	r2, [r0, #24]
 80023b0:	6982      	ldr	r2, [r0, #24]
 80023b2:	fa03 f101 	lsl.w	r1, r3, r1
 80023b6:	4311      	orrs	r1, r2
 80023b8:	6181      	str	r1, [r0, #24]
 80023ba:	bd30      	pop	{r4, r5, pc}
 80023bc:	3901      	subs	r1, #1
 80023be:	6942      	ldr	r2, [r0, #20]
 80023c0:	6944      	ldr	r4, [r0, #20]
 80023c2:	eb01 0141 	add.w	r1, r1, r1, lsl #1
 80023c6:	2238      	movs	r2, #56	; 0x38
 80023c8:	408a      	lsls	r2, r1
 80023ca:	ea24 0202 	bic.w	r2, r4, r2
 80023ce:	6142      	str	r2, [r0, #20]
 80023d0:	6942      	ldr	r2, [r0, #20]
 80023d2:	3103      	adds	r1, #3
 80023d4:	408b      	lsls	r3, r1
 80023d6:	4313      	orrs	r3, r2
 80023d8:	6143      	str	r3, [r0, #20]
 80023da:	bd30      	pop	{r4, r5, pc}

080023dc <uart_write>:
 80023dc:	4b03      	ldr	r3, [pc, #12]	; (80023ec <uart_write+0x10>)
 80023de:	69da      	ldr	r2, [r3, #28]
 80023e0:	0612      	lsls	r2, r2, #24
 80023e2:	d401      	bmi.n	80023e8 <uart_write+0xc>
 80023e4:	bf00      	nop
 80023e6:	e7f9      	b.n	80023dc <uart_write>
 80023e8:	8518      	strh	r0, [r3, #40]	; 0x28
 80023ea:	4770      	bx	lr
 80023ec:	40013800 	.word	0x40013800

080023f0 <uart_init>:
 80023f0:	b530      	push	{r4, r5, lr}
 80023f2:	4b2c      	ldr	r3, [pc, #176]	; (80024a4 <uart_init+0xb4>)
 80023f4:	4d2c      	ldr	r5, [pc, #176]	; (80024a8 <uart_init+0xb8>)
 80023f6:	2400      	movs	r4, #0
 80023f8:	601c      	str	r4, [r3, #0]
 80023fa:	4b2c      	ldr	r3, [pc, #176]	; (80024ac <uart_init+0xbc>)
 80023fc:	b08b      	sub	sp, #44	; 0x2c
 80023fe:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 8002402:	2101      	movs	r1, #1
 8002404:	601c      	str	r4, [r3, #0]
 8002406:	f7ff ff2f 	bl	8002268 <RCC_AHBPeriphClockCmd>
 800240a:	f44f 4080 	mov.w	r0, #16384	; 0x4000
 800240e:	2101      	movs	r1, #1
 8002410:	f7ff ff38 	bl	8002284 <RCC_APB2PeriphClockCmd>
 8002414:	f44f 63c0 	mov.w	r3, #1536	; 0x600
 8002418:	9302      	str	r3, [sp, #8]
 800241a:	2302      	movs	r3, #2
 800241c:	f88d 300c 	strb.w	r3, [sp, #12]
 8002420:	a902      	add	r1, sp, #8
 8002422:	2303      	movs	r3, #3
 8002424:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8002428:	f88d 300d 	strb.w	r3, [sp, #13]
 800242c:	f88d 400e 	strb.w	r4, [sp, #14]
 8002430:	f88d 400f 	strb.w	r4, [sp, #15]
 8002434:	f7ff fc5e 	bl	8001cf4 <GPIO_Init>
 8002438:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 800243c:	2109      	movs	r1, #9
 800243e:	2207      	movs	r2, #7
 8002440:	f7ff fca5 	bl	8001d8e <GPIO_PinAFConfig>
 8002444:	2207      	movs	r2, #7
 8002446:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 800244a:	210a      	movs	r1, #10
 800244c:	f7ff fc9f 	bl	8001d8e <GPIO_PinAFConfig>
 8002450:	f44f 33e1 	mov.w	r3, #115200	; 0x1c200
 8002454:	9304      	str	r3, [sp, #16]
 8002456:	4628      	mov	r0, r5
 8002458:	230c      	movs	r3, #12
 800245a:	a904      	add	r1, sp, #16
 800245c:	9308      	str	r3, [sp, #32]
 800245e:	9405      	str	r4, [sp, #20]
 8002460:	9406      	str	r4, [sp, #24]
 8002462:	9407      	str	r4, [sp, #28]
 8002464:	9409      	str	r4, [sp, #36]	; 0x24
 8002466:	f000 f849 	bl	80024fc <USART_Init>
 800246a:	4628      	mov	r0, r5
 800246c:	2101      	movs	r1, #1
 800246e:	f000 f8a7 	bl	80025c0 <USART_Cmd>
 8002472:	2201      	movs	r2, #1
 8002474:	4628      	mov	r0, r5
 8002476:	490e      	ldr	r1, [pc, #56]	; (80024b0 <uart_init+0xc0>)
 8002478:	f000 f8b2 	bl	80025e0 <USART_ITConfig>
 800247c:	2325      	movs	r3, #37	; 0x25
 800247e:	f88d 4005 	strb.w	r4, [sp, #5]
 8002482:	f88d 4006 	strb.w	r4, [sp, #6]
 8002486:	a801      	add	r0, sp, #4
 8002488:	2401      	movs	r4, #1
 800248a:	f88d 3004 	strb.w	r3, [sp, #4]
 800248e:	f88d 4007 	strb.w	r4, [sp, #7]
 8002492:	f000 f9e1 	bl	8002858 <NVIC_Init>
 8002496:	4628      	mov	r0, r5
 8002498:	4621      	mov	r1, r4
 800249a:	f000 f891 	bl	80025c0 <USART_Cmd>
 800249e:	b00b      	add	sp, #44	; 0x2c
 80024a0:	bd30      	pop	{r4, r5, pc}
 80024a2:	bf00      	nop
 80024a4:	20000eac 	.word	0x20000eac
 80024a8:	40013800 	.word	0x40013800
 80024ac:	20000eb0 	.word	0x20000eb0
 80024b0:	00050105 	.word	0x00050105

080024b4 <USART1_IRQHandler>:
 80024b4:	b508      	push	{r3, lr}
 80024b6:	480d      	ldr	r0, [pc, #52]	; (80024ec <USART1_IRQHandler+0x38>)
 80024b8:	490d      	ldr	r1, [pc, #52]	; (80024f0 <USART1_IRQHandler+0x3c>)
 80024ba:	f000 f8aa 	bl	8002612 <USART_GetITStatus>
 80024be:	b178      	cbz	r0, 80024e0 <USART1_IRQHandler+0x2c>
 80024c0:	480a      	ldr	r0, [pc, #40]	; (80024ec <USART1_IRQHandler+0x38>)
 80024c2:	f000 f888 	bl	80025d6 <USART_ReceiveData>
 80024c6:	4b0b      	ldr	r3, [pc, #44]	; (80024f4 <USART1_IRQHandler+0x40>)
 80024c8:	490b      	ldr	r1, [pc, #44]	; (80024f8 <USART1_IRQHandler+0x44>)
 80024ca:	681a      	ldr	r2, [r3, #0]
 80024cc:	b2c0      	uxtb	r0, r0
 80024ce:	5488      	strb	r0, [r1, r2]
 80024d0:	681a      	ldr	r2, [r3, #0]
 80024d2:	3201      	adds	r2, #1
 80024d4:	601a      	str	r2, [r3, #0]
 80024d6:	681a      	ldr	r2, [r3, #0]
 80024d8:	2a0f      	cmp	r2, #15
 80024da:	bf84      	itt	hi
 80024dc:	2200      	movhi	r2, #0
 80024de:	601a      	strhi	r2, [r3, #0]
 80024e0:	4802      	ldr	r0, [pc, #8]	; (80024ec <USART1_IRQHandler+0x38>)
 80024e2:	4903      	ldr	r1, [pc, #12]	; (80024f0 <USART1_IRQHandler+0x3c>)
 80024e4:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80024e8:	f000 b8b2 	b.w	8002650 <USART_ClearITPendingBit>
 80024ec:	40013800 	.word	0x40013800
 80024f0:	00050105 	.word	0x00050105
 80024f4:	20000eac 	.word	0x20000eac
 80024f8:	20000e9c 	.word	0x20000e9c

080024fc <USART_Init>:
 80024fc:	b530      	push	{r4, r5, lr}
 80024fe:	4604      	mov	r4, r0
 8002500:	b099      	sub	sp, #100	; 0x64
 8002502:	460d      	mov	r5, r1
 8002504:	bf00      	nop
 8002506:	bf00      	nop
 8002508:	bf00      	nop
 800250a:	bf00      	nop
 800250c:	bf00      	nop
 800250e:	bf00      	nop
 8002510:	bf00      	nop
 8002512:	6803      	ldr	r3, [r0, #0]
 8002514:	f023 0301 	bic.w	r3, r3, #1
 8002518:	6003      	str	r3, [r0, #0]
 800251a:	6842      	ldr	r2, [r0, #4]
 800251c:	688b      	ldr	r3, [r1, #8]
 800251e:	68c9      	ldr	r1, [r1, #12]
 8002520:	f422 5240 	bic.w	r2, r2, #12288	; 0x3000
 8002524:	4313      	orrs	r3, r2
 8002526:	6043      	str	r3, [r0, #4]
 8002528:	686a      	ldr	r2, [r5, #4]
 800252a:	6803      	ldr	r3, [r0, #0]
 800252c:	4311      	orrs	r1, r2
 800252e:	692a      	ldr	r2, [r5, #16]
 8002530:	f423 53b0 	bic.w	r3, r3, #5632	; 0x1600
 8002534:	430a      	orrs	r2, r1
 8002536:	f023 030c 	bic.w	r3, r3, #12
 800253a:	4313      	orrs	r3, r2
 800253c:	6003      	str	r3, [r0, #0]
 800253e:	6882      	ldr	r2, [r0, #8]
 8002540:	696b      	ldr	r3, [r5, #20]
 8002542:	f422 7240 	bic.w	r2, r2, #768	; 0x300
 8002546:	4313      	orrs	r3, r2
 8002548:	6083      	str	r3, [r0, #8]
 800254a:	a801      	add	r0, sp, #4
 800254c:	f7ff fcdc 	bl	8001f08 <RCC_GetClocksFreq>
 8002550:	4b17      	ldr	r3, [pc, #92]	; (80025b0 <USART_Init+0xb4>)
 8002552:	429c      	cmp	r4, r3
 8002554:	d101      	bne.n	800255a <USART_Init+0x5e>
 8002556:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8002558:	e00e      	b.n	8002578 <USART_Init+0x7c>
 800255a:	4b16      	ldr	r3, [pc, #88]	; (80025b4 <USART_Init+0xb8>)
 800255c:	429c      	cmp	r4, r3
 800255e:	d101      	bne.n	8002564 <USART_Init+0x68>
 8002560:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8002562:	e009      	b.n	8002578 <USART_Init+0x7c>
 8002564:	4b14      	ldr	r3, [pc, #80]	; (80025b8 <USART_Init+0xbc>)
 8002566:	429c      	cmp	r4, r3
 8002568:	d101      	bne.n	800256e <USART_Init+0x72>
 800256a:	9a11      	ldr	r2, [sp, #68]	; 0x44
 800256c:	e004      	b.n	8002578 <USART_Init+0x7c>
 800256e:	4b13      	ldr	r3, [pc, #76]	; (80025bc <USART_Init+0xc0>)
 8002570:	429c      	cmp	r4, r3
 8002572:	bf0c      	ite	eq
 8002574:	9a12      	ldreq	r2, [sp, #72]	; 0x48
 8002576:	9a13      	ldrne	r2, [sp, #76]	; 0x4c
 8002578:	6823      	ldr	r3, [r4, #0]
 800257a:	6829      	ldr	r1, [r5, #0]
 800257c:	f413 4f00 	tst.w	r3, #32768	; 0x8000
 8002580:	bf18      	it	ne
 8002582:	0052      	lslne	r2, r2, #1
 8002584:	fbb2 f3f1 	udiv	r3, r2, r1
 8002588:	fb01 2213 	mls	r2, r1, r3, r2
 800258c:	ebb2 0f51 	cmp.w	r2, r1, lsr #1
 8002590:	6822      	ldr	r2, [r4, #0]
 8002592:	bf28      	it	cs
 8002594:	3301      	addcs	r3, #1
 8002596:	0412      	lsls	r2, r2, #16
 8002598:	d506      	bpl.n	80025a8 <USART_Init+0xac>
 800259a:	f64f 72f0 	movw	r2, #65520	; 0xfff0
 800259e:	f3c3 0142 	ubfx	r1, r3, #1, #3
 80025a2:	401a      	ands	r2, r3
 80025a4:	ea41 0302 	orr.w	r3, r1, r2
 80025a8:	b29b      	uxth	r3, r3
 80025aa:	81a3      	strh	r3, [r4, #12]
 80025ac:	b019      	add	sp, #100	; 0x64
 80025ae:	bd30      	pop	{r4, r5, pc}
 80025b0:	40013800 	.word	0x40013800
 80025b4:	40004400 	.word	0x40004400
 80025b8:	40004800 	.word	0x40004800
 80025bc:	40004c00 	.word	0x40004c00

080025c0 <USART_Cmd>:
 80025c0:	bf00      	nop
 80025c2:	bf00      	nop
 80025c4:	6803      	ldr	r3, [r0, #0]
 80025c6:	b111      	cbz	r1, 80025ce <USART_Cmd+0xe>
 80025c8:	f043 0301 	orr.w	r3, r3, #1
 80025cc:	e001      	b.n	80025d2 <USART_Cmd+0x12>
 80025ce:	f023 0301 	bic.w	r3, r3, #1
 80025d2:	6003      	str	r3, [r0, #0]
 80025d4:	4770      	bx	lr

080025d6 <USART_ReceiveData>:
 80025d6:	bf00      	nop
 80025d8:	8c80      	ldrh	r0, [r0, #36]	; 0x24
 80025da:	f3c0 0008 	ubfx	r0, r0, #0, #9
 80025de:	4770      	bx	lr

080025e0 <USART_ITConfig>:
 80025e0:	b510      	push	{r4, lr}
 80025e2:	bf00      	nop
 80025e4:	bf00      	nop
 80025e6:	bf00      	nop
 80025e8:	f3c1 2307 	ubfx	r3, r1, #8, #8
 80025ec:	2401      	movs	r4, #1
 80025ee:	b2c9      	uxtb	r1, r1
 80025f0:	2b02      	cmp	r3, #2
 80025f2:	fa04 f101 	lsl.w	r1, r4, r1
 80025f6:	d101      	bne.n	80025fc <USART_ITConfig+0x1c>
 80025f8:	3004      	adds	r0, #4
 80025fa:	e002      	b.n	8002602 <USART_ITConfig+0x22>
 80025fc:	2b03      	cmp	r3, #3
 80025fe:	bf08      	it	eq
 8002600:	3008      	addeq	r0, #8
 8002602:	6803      	ldr	r3, [r0, #0]
 8002604:	b10a      	cbz	r2, 800260a <USART_ITConfig+0x2a>
 8002606:	4319      	orrs	r1, r3
 8002608:	e001      	b.n	800260e <USART_ITConfig+0x2e>
 800260a:	ea23 0101 	bic.w	r1, r3, r1
 800260e:	6001      	str	r1, [r0, #0]
 8002610:	bd10      	pop	{r4, pc}

08002612 <USART_GetITStatus>:
 8002612:	b510      	push	{r4, lr}
 8002614:	bf00      	nop
 8002616:	bf00      	nop
 8002618:	2401      	movs	r4, #1
 800261a:	f3c1 2207 	ubfx	r2, r1, #8, #8
 800261e:	b2cb      	uxtb	r3, r1
 8002620:	42a2      	cmp	r2, r4
 8002622:	fa04 f303 	lsl.w	r3, r4, r3
 8002626:	d101      	bne.n	800262c <USART_GetITStatus+0x1a>
 8002628:	6802      	ldr	r2, [r0, #0]
 800262a:	e003      	b.n	8002634 <USART_GetITStatus+0x22>
 800262c:	2a02      	cmp	r2, #2
 800262e:	bf0c      	ite	eq
 8002630:	6842      	ldreq	r2, [r0, #4]
 8002632:	6882      	ldrne	r2, [r0, #8]
 8002634:	4013      	ands	r3, r2
 8002636:	69c2      	ldr	r2, [r0, #28]
 8002638:	b143      	cbz	r3, 800264c <USART_GetITStatus+0x3a>
 800263a:	2301      	movs	r3, #1
 800263c:	0c09      	lsrs	r1, r1, #16
 800263e:	fa03 f101 	lsl.w	r1, r3, r1
 8002642:	4211      	tst	r1, r2
 8002644:	bf0c      	ite	eq
 8002646:	2000      	moveq	r0, #0
 8002648:	2001      	movne	r0, #1
 800264a:	bd10      	pop	{r4, pc}
 800264c:	4618      	mov	r0, r3
 800264e:	bd10      	pop	{r4, pc}

08002650 <USART_ClearITPendingBit>:
 8002650:	bf00      	nop
 8002652:	bf00      	nop
 8002654:	2301      	movs	r3, #1
 8002656:	0c09      	lsrs	r1, r1, #16
 8002658:	fa03 f101 	lsl.w	r1, r3, r1
 800265c:	6201      	str	r1, [r0, #32]
 800265e:	4770      	bx	lr

08002660 <drv8834_run>:
 8002660:	1e02      	subs	r2, r0, #0
 8002662:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8002666:	dd07      	ble.n	8002678 <drv8834_run+0x18>
 8002668:	8d18      	ldrh	r0, [r3, #40]	; 0x28
 800266a:	ea6f 4040 	mvn.w	r0, r0, lsl #17
 800266e:	ea6f 4050 	mvn.w	r0, r0, lsr #17
 8002672:	b280      	uxth	r0, r0
 8002674:	8518      	strh	r0, [r3, #40]	; 0x28
 8002676:	e005      	b.n	8002684 <drv8834_run+0x24>
 8002678:	6998      	ldr	r0, [r3, #24]
 800267a:	4252      	negs	r2, r2
 800267c:	f440 4000 	orr.w	r0, r0, #32768	; 0x8000
 8002680:	6198      	str	r0, [r3, #24]
 8002682:	b212      	sxth	r2, r2
 8002684:	2900      	cmp	r1, #0
 8002686:	4b0d      	ldr	r3, [pc, #52]	; (80026bc <drv8834_run+0x5c>)
 8002688:	dd05      	ble.n	8002696 <drv8834_run+0x36>
 800268a:	8d18      	ldrh	r0, [r3, #40]	; 0x28
 800268c:	b280      	uxth	r0, r0
 800268e:	f040 0020 	orr.w	r0, r0, #32
 8002692:	8518      	strh	r0, [r3, #40]	; 0x28
 8002694:	e005      	b.n	80026a2 <drv8834_run+0x42>
 8002696:	6998      	ldr	r0, [r3, #24]
 8002698:	4249      	negs	r1, r1
 800269a:	f040 0020 	orr.w	r0, r0, #32
 800269e:	6198      	str	r0, [r3, #24]
 80026a0:	b209      	sxth	r1, r1
 80026a2:	2964      	cmp	r1, #100	; 0x64
 80026a4:	bfb4      	ite	lt
 80026a6:	4608      	movlt	r0, r1
 80026a8:	2064      	movge	r0, #100	; 0x64
 80026aa:	2a64      	cmp	r2, #100	; 0x64
 80026ac:	bfa8      	it	ge
 80026ae:	2264      	movge	r2, #100	; 0x64
 80026b0:	f1c0 0064 	rsb	r0, r0, #100	; 0x64
 80026b4:	f1c2 0164 	rsb	r1, r2, #100	; 0x64
 80026b8:	f000 b842 	b.w	8002740 <pwm_set>
 80026bc:	48000400 	.word	0x48000400

080026c0 <drv8834_init>:
 80026c0:	e92d 41f3 	stmdb	sp!, {r0, r1, r4, r5, r6, r7, r8, lr}
 80026c4:	4f1d      	ldr	r7, [pc, #116]	; (800273c <drv8834_init+0x7c>)
 80026c6:	2400      	movs	r4, #0
 80026c8:	2601      	movs	r6, #1
 80026ca:	2503      	movs	r5, #3
 80026cc:	f04f 0810 	mov.w	r8, #16
 80026d0:	4638      	mov	r0, r7
 80026d2:	4669      	mov	r1, sp
 80026d4:	f8cd 8000 	str.w	r8, [sp]
 80026d8:	f88d 6004 	strb.w	r6, [sp, #4]
 80026dc:	f88d 4006 	strb.w	r4, [sp, #6]
 80026e0:	f88d 5005 	strb.w	r5, [sp, #5]
 80026e4:	f88d 4007 	strb.w	r4, [sp, #7]
 80026e8:	f7ff fb04 	bl	8001cf4 <GPIO_Init>
 80026ec:	f8a7 8028 	strh.w	r8, [r7, #40]	; 0x28
 80026f0:	2320      	movs	r3, #32
 80026f2:	4638      	mov	r0, r7
 80026f4:	4669      	mov	r1, sp
 80026f6:	9300      	str	r3, [sp, #0]
 80026f8:	f88d 6004 	strb.w	r6, [sp, #4]
 80026fc:	f88d 4006 	strb.w	r4, [sp, #6]
 8002700:	f88d 5005 	strb.w	r5, [sp, #5]
 8002704:	f88d 4007 	strb.w	r4, [sp, #7]
 8002708:	f7ff faf4 	bl	8001cf4 <GPIO_Init>
 800270c:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8002710:	4669      	mov	r1, sp
 8002712:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8002716:	9300      	str	r3, [sp, #0]
 8002718:	f88d 6004 	strb.w	r6, [sp, #4]
 800271c:	f88d 4006 	strb.w	r4, [sp, #6]
 8002720:	f88d 5005 	strb.w	r5, [sp, #5]
 8002724:	f88d 4007 	strb.w	r4, [sp, #7]
 8002728:	f7ff fae4 	bl	8001cf4 <GPIO_Init>
 800272c:	4620      	mov	r0, r4
 800272e:	4621      	mov	r1, r4
 8002730:	f7ff ff96 	bl	8002660 <drv8834_run>
 8002734:	b002      	add	sp, #8
 8002736:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800273a:	bf00      	nop
 800273c:	48000400 	.word	0x48000400

08002740 <pwm_set>:
 8002740:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8002744:	b086      	sub	sp, #24
 8002746:	2370      	movs	r3, #112	; 0x70
 8002748:	9301      	str	r3, [sp, #4]
 800274a:	2301      	movs	r3, #1
 800274c:	f8ad 3008 	strh.w	r3, [sp, #8]
 8002750:	2304      	movs	r3, #4
 8002752:	f8ad 300a 	strh.w	r3, [sp, #10]
 8002756:	4f17      	ldr	r7, [pc, #92]	; (80027b4 <pwm_set+0x74>)
 8002758:	4c17      	ldr	r4, [pc, #92]	; (80027b8 <pwm_set+0x78>)
 800275a:	2302      	movs	r3, #2
 800275c:	f8ad 3010 	strh.w	r3, [sp, #16]
 8002760:	2300      	movs	r3, #0
 8002762:	f8ad 3012 	strh.w	r3, [sp, #18]
 8002766:	f8ad 3016 	strh.w	r3, [sp, #22]
 800276a:	683b      	ldr	r3, [r7, #0]
 800276c:	f242 7610 	movw	r6, #10000	; 0x2710
 8002770:	fbb3 f3f6 	udiv	r3, r3, r6
 8002774:	3b02      	subs	r3, #2
 8002776:	4358      	muls	r0, r3
 8002778:	2564      	movs	r5, #100	; 0x64
 800277a:	fbb0 f3f5 	udiv	r3, r0, r5
 800277e:	f44f 7280 	mov.w	r2, #256	; 0x100
 8002782:	4620      	mov	r0, r4
 8002784:	4688      	mov	r8, r1
 8002786:	a901      	add	r1, sp, #4
 8002788:	f8ad 2014 	strh.w	r2, [sp, #20]
 800278c:	9303      	str	r3, [sp, #12]
 800278e:	f000 f8f9 	bl	8002984 <TIM_OC1Init>
 8002792:	683b      	ldr	r3, [r7, #0]
 8002794:	fbb3 f6f6 	udiv	r6, r3, r6
 8002798:	3e02      	subs	r6, #2
 800279a:	fb06 f808 	mul.w	r8, r6, r8
 800279e:	fbb8 f5f5 	udiv	r5, r8, r5
 80027a2:	4620      	mov	r0, r4
 80027a4:	a901      	add	r1, sp, #4
 80027a6:	9503      	str	r5, [sp, #12]
 80027a8:	f000 f932 	bl	8002a10 <TIM_OC2Init>
 80027ac:	b006      	add	sp, #24
 80027ae:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80027b2:	bf00      	nop
 80027b4:	20000120 	.word	0x20000120
 80027b8:	40012c00 	.word	0x40012c00

080027bc <pwm_init>:
 80027bc:	b530      	push	{r4, r5, lr}
 80027be:	f44f 6000 	mov.w	r0, #2048	; 0x800
 80027c2:	b087      	sub	sp, #28
 80027c4:	2101      	movs	r1, #1
 80027c6:	f7ff fd5d 	bl	8002284 <RCC_APB2PeriphClockCmd>
 80027ca:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 80027ce:	2101      	movs	r1, #1
 80027d0:	f7ff fd4a 	bl	8002268 <RCC_AHBPeriphClockCmd>
 80027d4:	4c1d      	ldr	r4, [pc, #116]	; (800284c <pwm_init+0x90>)
 80027d6:	4d1e      	ldr	r5, [pc, #120]	; (8002850 <pwm_init+0x94>)
 80027d8:	f44f 43c0 	mov.w	r3, #24576	; 0x6000
 80027dc:	9301      	str	r3, [sp, #4]
 80027de:	2302      	movs	r3, #2
 80027e0:	f88d 3008 	strb.w	r3, [sp, #8]
 80027e4:	4620      	mov	r0, r4
 80027e6:	2303      	movs	r3, #3
 80027e8:	a901      	add	r1, sp, #4
 80027ea:	f88d 3009 	strb.w	r3, [sp, #9]
 80027ee:	f7ff fa81 	bl	8001cf4 <GPIO_Init>
 80027f2:	4620      	mov	r0, r4
 80027f4:	210d      	movs	r1, #13
 80027f6:	2206      	movs	r2, #6
 80027f8:	f7ff fac9 	bl	8001d8e <GPIO_PinAFConfig>
 80027fc:	4620      	mov	r0, r4
 80027fe:	210e      	movs	r1, #14
 8002800:	2206      	movs	r2, #6
 8002802:	f7ff fac4 	bl	8001d8e <GPIO_PinAFConfig>
 8002806:	4b13      	ldr	r3, [pc, #76]	; (8002854 <pwm_init+0x98>)
 8002808:	681a      	ldr	r2, [r3, #0]
 800280a:	f242 7310 	movw	r3, #10000	; 0x2710
 800280e:	fbb2 f3f3 	udiv	r3, r2, r3
 8002812:	2400      	movs	r4, #0
 8002814:	3b01      	subs	r3, #1
 8002816:	4628      	mov	r0, r5
 8002818:	a903      	add	r1, sp, #12
 800281a:	9304      	str	r3, [sp, #16]
 800281c:	f8ad 400c 	strh.w	r4, [sp, #12]
 8002820:	f8ad 400e 	strh.w	r4, [sp, #14]
 8002824:	f8ad 4014 	strh.w	r4, [sp, #20]
 8002828:	f8ad 4016 	strh.w	r4, [sp, #22]
 800282c:	f000 f84c 	bl	80028c8 <TIM_TimeBaseInit>
 8002830:	4620      	mov	r0, r4
 8002832:	4621      	mov	r1, r4
 8002834:	f7ff ff84 	bl	8002740 <pwm_set>
 8002838:	4628      	mov	r0, r5
 800283a:	2101      	movs	r1, #1
 800283c:	f000 f894 	bl	8002968 <TIM_Cmd>
 8002840:	4628      	mov	r0, r5
 8002842:	2101      	movs	r1, #1
 8002844:	f000 f922 	bl	8002a8c <TIM_CtrlPWMOutputs>
 8002848:	b007      	add	sp, #28
 800284a:	bd30      	pop	{r4, r5, pc}
 800284c:	48000400 	.word	0x48000400
 8002850:	40012c00 	.word	0x40012c00
 8002854:	20000120 	.word	0x20000120

08002858 <NVIC_Init>:
 8002858:	b510      	push	{r4, lr}
 800285a:	bf00      	nop
 800285c:	bf00      	nop
 800285e:	bf00      	nop
 8002860:	78c2      	ldrb	r2, [r0, #3]
 8002862:	7803      	ldrb	r3, [r0, #0]
 8002864:	b30a      	cbz	r2, 80028aa <NVIC_Init+0x52>
 8002866:	4a16      	ldr	r2, [pc, #88]	; (80028c0 <NVIC_Init+0x68>)
 8002868:	7844      	ldrb	r4, [r0, #1]
 800286a:	68d2      	ldr	r2, [r2, #12]
 800286c:	43d2      	mvns	r2, r2
 800286e:	f3c2 2202 	ubfx	r2, r2, #8, #3
 8002872:	f1c2 0104 	rsb	r1, r2, #4
 8002876:	b2c9      	uxtb	r1, r1
 8002878:	fa04 f101 	lsl.w	r1, r4, r1
 800287c:	240f      	movs	r4, #15
 800287e:	fa44 f202 	asr.w	r2, r4, r2
 8002882:	7884      	ldrb	r4, [r0, #2]
 8002884:	b2c9      	uxtb	r1, r1
 8002886:	4022      	ands	r2, r4
 8002888:	430a      	orrs	r2, r1
 800288a:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
 800288e:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
 8002892:	0112      	lsls	r2, r2, #4
 8002894:	b2d2      	uxtb	r2, r2
 8002896:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
 800289a:	7803      	ldrb	r3, [r0, #0]
 800289c:	2201      	movs	r2, #1
 800289e:	0959      	lsrs	r1, r3, #5
 80028a0:	f003 031f 	and.w	r3, r3, #31
 80028a4:	fa02 f303 	lsl.w	r3, r2, r3
 80028a8:	e006      	b.n	80028b8 <NVIC_Init+0x60>
 80028aa:	0959      	lsrs	r1, r3, #5
 80028ac:	2201      	movs	r2, #1
 80028ae:	f003 031f 	and.w	r3, r3, #31
 80028b2:	fa02 f303 	lsl.w	r3, r2, r3
 80028b6:	3120      	adds	r1, #32
 80028b8:	4a02      	ldr	r2, [pc, #8]	; (80028c4 <NVIC_Init+0x6c>)
 80028ba:	f842 3021 	str.w	r3, [r2, r1, lsl #2]
 80028be:	bd10      	pop	{r4, pc}
 80028c0:	e000ed00 	.word	0xe000ed00
 80028c4:	e000e100 	.word	0xe000e100

080028c8 <TIM_TimeBaseInit>:
 80028c8:	bf00      	nop
 80028ca:	bf00      	nop
 80028cc:	bf00      	nop
 80028ce:	4a24      	ldr	r2, [pc, #144]	; (8002960 <TIM_TimeBaseInit+0x98>)
 80028d0:	8803      	ldrh	r3, [r0, #0]
 80028d2:	4290      	cmp	r0, r2
 80028d4:	b29b      	uxth	r3, r3
 80028d6:	d012      	beq.n	80028fe <TIM_TimeBaseInit+0x36>
 80028d8:	f502 6200 	add.w	r2, r2, #2048	; 0x800
 80028dc:	4290      	cmp	r0, r2
 80028de:	d00e      	beq.n	80028fe <TIM_TimeBaseInit+0x36>
 80028e0:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 80028e4:	d00b      	beq.n	80028fe <TIM_TimeBaseInit+0x36>
 80028e6:	f5a2 3298 	sub.w	r2, r2, #77824	; 0x13000
 80028ea:	4290      	cmp	r0, r2
 80028ec:	d007      	beq.n	80028fe <TIM_TimeBaseInit+0x36>
 80028ee:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 80028f2:	4290      	cmp	r0, r2
 80028f4:	d003      	beq.n	80028fe <TIM_TimeBaseInit+0x36>
 80028f6:	f502 32a4 	add.w	r2, r2, #83968	; 0x14800
 80028fa:	4290      	cmp	r0, r2
 80028fc:	d103      	bne.n	8002906 <TIM_TimeBaseInit+0x3e>
 80028fe:	884a      	ldrh	r2, [r1, #2]
 8002900:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 8002904:	4313      	orrs	r3, r2
 8002906:	4a17      	ldr	r2, [pc, #92]	; (8002964 <TIM_TimeBaseInit+0x9c>)
 8002908:	4290      	cmp	r0, r2
 800290a:	d008      	beq.n	800291e <TIM_TimeBaseInit+0x56>
 800290c:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8002910:	4290      	cmp	r0, r2
 8002912:	d004      	beq.n	800291e <TIM_TimeBaseInit+0x56>
 8002914:	f423 7340 	bic.w	r3, r3, #768	; 0x300
 8002918:	890a      	ldrh	r2, [r1, #8]
 800291a:	b29b      	uxth	r3, r3
 800291c:	4313      	orrs	r3, r2
 800291e:	8003      	strh	r3, [r0, #0]
 8002920:	684b      	ldr	r3, [r1, #4]
 8002922:	62c3      	str	r3, [r0, #44]	; 0x2c
 8002924:	880b      	ldrh	r3, [r1, #0]
 8002926:	8503      	strh	r3, [r0, #40]	; 0x28
 8002928:	4b0d      	ldr	r3, [pc, #52]	; (8002960 <TIM_TimeBaseInit+0x98>)
 800292a:	4298      	cmp	r0, r3
 800292c:	d013      	beq.n	8002956 <TIM_TimeBaseInit+0x8e>
 800292e:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 8002932:	4298      	cmp	r0, r3
 8002934:	d00f      	beq.n	8002956 <TIM_TimeBaseInit+0x8e>
 8002936:	f503 6340 	add.w	r3, r3, #3072	; 0xc00
 800293a:	4298      	cmp	r0, r3
 800293c:	d00b      	beq.n	8002956 <TIM_TimeBaseInit+0x8e>
 800293e:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 8002942:	4298      	cmp	r0, r3
 8002944:	d007      	beq.n	8002956 <TIM_TimeBaseInit+0x8e>
 8002946:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 800294a:	4298      	cmp	r0, r3
 800294c:	d003      	beq.n	8002956 <TIM_TimeBaseInit+0x8e>
 800294e:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 8002952:	4298      	cmp	r0, r3
 8002954:	d101      	bne.n	800295a <TIM_TimeBaseInit+0x92>
 8002956:	894b      	ldrh	r3, [r1, #10]
 8002958:	8603      	strh	r3, [r0, #48]	; 0x30
 800295a:	2301      	movs	r3, #1
 800295c:	6143      	str	r3, [r0, #20]
 800295e:	4770      	bx	lr
 8002960:	40012c00 	.word	0x40012c00
 8002964:	40001000 	.word	0x40001000

08002968 <TIM_Cmd>:
 8002968:	bf00      	nop
 800296a:	bf00      	nop
 800296c:	8803      	ldrh	r3, [r0, #0]
 800296e:	b119      	cbz	r1, 8002978 <TIM_Cmd+0x10>
 8002970:	b29b      	uxth	r3, r3
 8002972:	f043 0301 	orr.w	r3, r3, #1
 8002976:	e003      	b.n	8002980 <TIM_Cmd+0x18>
 8002978:	f023 0301 	bic.w	r3, r3, #1
 800297c:	041b      	lsls	r3, r3, #16
 800297e:	0c1b      	lsrs	r3, r3, #16
 8002980:	8003      	strh	r3, [r0, #0]
 8002982:	4770      	bx	lr

08002984 <TIM_OC1Init>:
 8002984:	b530      	push	{r4, r5, lr}
 8002986:	bf00      	nop
 8002988:	bf00      	nop
 800298a:	bf00      	nop
 800298c:	bf00      	nop
 800298e:	6a03      	ldr	r3, [r0, #32]
 8002990:	680d      	ldr	r5, [r1, #0]
 8002992:	f023 0301 	bic.w	r3, r3, #1
 8002996:	6203      	str	r3, [r0, #32]
 8002998:	6a03      	ldr	r3, [r0, #32]
 800299a:	6842      	ldr	r2, [r0, #4]
 800299c:	6984      	ldr	r4, [r0, #24]
 800299e:	f424 3480 	bic.w	r4, r4, #65536	; 0x10000
 80029a2:	f024 0473 	bic.w	r4, r4, #115	; 0x73
 80029a6:	432c      	orrs	r4, r5
 80029a8:	898d      	ldrh	r5, [r1, #12]
 80029aa:	f023 0302 	bic.w	r3, r3, #2
 80029ae:	432b      	orrs	r3, r5
 80029b0:	888d      	ldrh	r5, [r1, #4]
 80029b2:	432b      	orrs	r3, r5
 80029b4:	4d15      	ldr	r5, [pc, #84]	; (8002a0c <TIM_OC1Init+0x88>)
 80029b6:	42a8      	cmp	r0, r5
 80029b8:	d00f      	beq.n	80029da <TIM_OC1Init+0x56>
 80029ba:	f505 6500 	add.w	r5, r5, #2048	; 0x800
 80029be:	42a8      	cmp	r0, r5
 80029c0:	d00b      	beq.n	80029da <TIM_OC1Init+0x56>
 80029c2:	f505 6540 	add.w	r5, r5, #3072	; 0xc00
 80029c6:	42a8      	cmp	r0, r5
 80029c8:	d007      	beq.n	80029da <TIM_OC1Init+0x56>
 80029ca:	f505 6580 	add.w	r5, r5, #1024	; 0x400
 80029ce:	42a8      	cmp	r0, r5
 80029d0:	d003      	beq.n	80029da <TIM_OC1Init+0x56>
 80029d2:	f505 6580 	add.w	r5, r5, #1024	; 0x400
 80029d6:	42a8      	cmp	r0, r5
 80029d8:	d111      	bne.n	80029fe <TIM_OC1Init+0x7a>
 80029da:	bf00      	nop
 80029dc:	bf00      	nop
 80029de:	bf00      	nop
 80029e0:	bf00      	nop
 80029e2:	89cd      	ldrh	r5, [r1, #14]
 80029e4:	f023 0308 	bic.w	r3, r3, #8
 80029e8:	432b      	orrs	r3, r5
 80029ea:	88cd      	ldrh	r5, [r1, #6]
 80029ec:	f023 0304 	bic.w	r3, r3, #4
 80029f0:	432b      	orrs	r3, r5
 80029f2:	8a0d      	ldrh	r5, [r1, #16]
 80029f4:	f422 7240 	bic.w	r2, r2, #768	; 0x300
 80029f8:	432a      	orrs	r2, r5
 80029fa:	8a4d      	ldrh	r5, [r1, #18]
 80029fc:	432a      	orrs	r2, r5
 80029fe:	6042      	str	r2, [r0, #4]
 8002a00:	688a      	ldr	r2, [r1, #8]
 8002a02:	6184      	str	r4, [r0, #24]
 8002a04:	6342      	str	r2, [r0, #52]	; 0x34
 8002a06:	6203      	str	r3, [r0, #32]
 8002a08:	bd30      	pop	{r4, r5, pc}
 8002a0a:	bf00      	nop
 8002a0c:	40012c00 	.word	0x40012c00

08002a10 <TIM_OC2Init>:
 8002a10:	b570      	push	{r4, r5, r6, lr}
 8002a12:	bf00      	nop
 8002a14:	bf00      	nop
 8002a16:	bf00      	nop
 8002a18:	bf00      	nop
 8002a1a:	6a03      	ldr	r3, [r0, #32]
 8002a1c:	680d      	ldr	r5, [r1, #0]
 8002a1e:	898e      	ldrh	r6, [r1, #12]
 8002a20:	f023 0310 	bic.w	r3, r3, #16
 8002a24:	6203      	str	r3, [r0, #32]
 8002a26:	6a03      	ldr	r3, [r0, #32]
 8002a28:	6842      	ldr	r2, [r0, #4]
 8002a2a:	6984      	ldr	r4, [r0, #24]
 8002a2c:	f024 7480 	bic.w	r4, r4, #16777216	; 0x1000000
 8002a30:	f424 44e6 	bic.w	r4, r4, #29440	; 0x7300
 8002a34:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
 8002a38:	f023 0520 	bic.w	r5, r3, #32
 8002a3c:	888b      	ldrh	r3, [r1, #4]
 8002a3e:	4333      	orrs	r3, r6
 8002a40:	ea45 1303 	orr.w	r3, r5, r3, lsl #4
 8002a44:	4d10      	ldr	r5, [pc, #64]	; (8002a88 <TIM_OC2Init+0x78>)
 8002a46:	42a8      	cmp	r0, r5
 8002a48:	d003      	beq.n	8002a52 <TIM_OC2Init+0x42>
 8002a4a:	f505 6500 	add.w	r5, r5, #2048	; 0x800
 8002a4e:	42a8      	cmp	r0, r5
 8002a50:	d114      	bne.n	8002a7c <TIM_OC2Init+0x6c>
 8002a52:	bf00      	nop
 8002a54:	bf00      	nop
 8002a56:	bf00      	nop
 8002a58:	bf00      	nop
 8002a5a:	89cd      	ldrh	r5, [r1, #14]
 8002a5c:	8a0e      	ldrh	r6, [r1, #16]
 8002a5e:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8002a62:	ea43 1305 	orr.w	r3, r3, r5, lsl #4
 8002a66:	88cd      	ldrh	r5, [r1, #6]
 8002a68:	f023 0340 	bic.w	r3, r3, #64	; 0x40
 8002a6c:	ea43 1305 	orr.w	r3, r3, r5, lsl #4
 8002a70:	8a4d      	ldrh	r5, [r1, #18]
 8002a72:	f422 6240 	bic.w	r2, r2, #3072	; 0xc00
 8002a76:	4335      	orrs	r5, r6
 8002a78:	ea42 0285 	orr.w	r2, r2, r5, lsl #2
 8002a7c:	6042      	str	r2, [r0, #4]
 8002a7e:	688a      	ldr	r2, [r1, #8]
 8002a80:	6184      	str	r4, [r0, #24]
 8002a82:	6382      	str	r2, [r0, #56]	; 0x38
 8002a84:	6203      	str	r3, [r0, #32]
 8002a86:	bd70      	pop	{r4, r5, r6, pc}
 8002a88:	40012c00 	.word	0x40012c00

08002a8c <TIM_CtrlPWMOutputs>:
 8002a8c:	bf00      	nop
 8002a8e:	bf00      	nop
 8002a90:	6c43      	ldr	r3, [r0, #68]	; 0x44
 8002a92:	b111      	cbz	r1, 8002a9a <TIM_CtrlPWMOutputs+0xe>
 8002a94:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
 8002a98:	e001      	b.n	8002a9e <TIM_CtrlPWMOutputs+0x12>
 8002a9a:	f3c3 030e 	ubfx	r3, r3, #0, #15
 8002a9e:	6443      	str	r3, [r0, #68]	; 0x44
 8002aa0:	4770      	bx	lr

08002aa2 <TIM_ClearITPendingBit>:
 8002aa2:	bf00      	nop
 8002aa4:	43c9      	mvns	r1, r1
 8002aa6:	b289      	uxth	r1, r1
 8002aa8:	6101      	str	r1, [r0, #16]
 8002aaa:	4770      	bx	lr

08002aac <timer_init>:
 8002aac:	b530      	push	{r4, r5, lr}
 8002aae:	2300      	movs	r3, #0
 8002ab0:	b085      	sub	sp, #20
 8002ab2:	491f      	ldr	r1, [pc, #124]	; (8002b30 <timer_init+0x84>)
 8002ab4:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8002ab8:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 8002abc:	491d      	ldr	r1, [pc, #116]	; (8002b34 <timer_init+0x88>)
 8002abe:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 8002ac2:	4a1d      	ldr	r2, [pc, #116]	; (8002b38 <timer_init+0x8c>)
 8002ac4:	2400      	movs	r4, #0
 8002ac6:	f822 4013 	strh.w	r4, [r2, r3, lsl #1]
 8002aca:	3301      	adds	r3, #1
 8002acc:	2b04      	cmp	r3, #4
 8002ace:	4625      	mov	r5, r4
 8002ad0:	d1ef      	bne.n	8002ab2 <timer_init+0x6>
 8002ad2:	4b1a      	ldr	r3, [pc, #104]	; (8002b3c <timer_init+0x90>)
 8002ad4:	2002      	movs	r0, #2
 8002ad6:	2101      	movs	r1, #1
 8002ad8:	601c      	str	r4, [r3, #0]
 8002ada:	f7ff fbe1 	bl	80022a0 <RCC_APB1PeriphClockCmd>
 8002ade:	f8ad 4006 	strh.w	r4, [sp, #6]
 8002ae2:	f8ad 400c 	strh.w	r4, [sp, #12]
 8002ae6:	f8ad 400e 	strh.w	r4, [sp, #14]
 8002aea:	4c15      	ldr	r4, [pc, #84]	; (8002b40 <timer_init+0x94>)
 8002aec:	f44f 738c 	mov.w	r3, #280	; 0x118
 8002af0:	f8ad 3004 	strh.w	r3, [sp, #4]
 8002af4:	4620      	mov	r0, r4
 8002af6:	2331      	movs	r3, #49	; 0x31
 8002af8:	a901      	add	r1, sp, #4
 8002afa:	9302      	str	r3, [sp, #8]
 8002afc:	f7ff fee4 	bl	80028c8 <TIM_TimeBaseInit>
 8002b00:	4620      	mov	r0, r4
 8002b02:	2101      	movs	r1, #1
 8002b04:	f7ff ff30 	bl	8002968 <TIM_Cmd>
 8002b08:	68e3      	ldr	r3, [r4, #12]
 8002b0a:	f043 0301 	orr.w	r3, r3, #1
 8002b0e:	60e3      	str	r3, [r4, #12]
 8002b10:	231d      	movs	r3, #29
 8002b12:	f88d 3000 	strb.w	r3, [sp]
 8002b16:	4668      	mov	r0, sp
 8002b18:	2301      	movs	r3, #1
 8002b1a:	f88d 5001 	strb.w	r5, [sp, #1]
 8002b1e:	f88d 3002 	strb.w	r3, [sp, #2]
 8002b22:	f88d 3003 	strb.w	r3, [sp, #3]
 8002b26:	f7ff fe97 	bl	8002858 <NVIC_Init>
 8002b2a:	b005      	add	sp, #20
 8002b2c:	bd30      	pop	{r4, r5, pc}
 8002b2e:	bf00      	nop
 8002b30:	20000ec8 	.word	0x20000ec8
 8002b34:	20000ebc 	.word	0x20000ebc
 8002b38:	20000eb4 	.word	0x20000eb4
 8002b3c:	20000ec4 	.word	0x20000ec4
 8002b40:	40000400 	.word	0x40000400

08002b44 <TIM3_IRQHandler>:
 8002b44:	2300      	movs	r3, #0
 8002b46:	4a0f      	ldr	r2, [pc, #60]	; (8002b84 <TIM3_IRQHandler+0x40>)
 8002b48:	f832 1013 	ldrh.w	r1, [r2, r3, lsl #1]
 8002b4c:	b289      	uxth	r1, r1
 8002b4e:	b121      	cbz	r1, 8002b5a <TIM3_IRQHandler+0x16>
 8002b50:	f832 1013 	ldrh.w	r1, [r2, r3, lsl #1]
 8002b54:	3901      	subs	r1, #1
 8002b56:	b289      	uxth	r1, r1
 8002b58:	e007      	b.n	8002b6a <TIM3_IRQHandler+0x26>
 8002b5a:	490b      	ldr	r1, [pc, #44]	; (8002b88 <TIM3_IRQHandler+0x44>)
 8002b5c:	f831 1013 	ldrh.w	r1, [r1, r3, lsl #1]
 8002b60:	b289      	uxth	r1, r1
 8002b62:	f822 1013 	strh.w	r1, [r2, r3, lsl #1]
 8002b66:	4a09      	ldr	r2, [pc, #36]	; (8002b8c <TIM3_IRQHandler+0x48>)
 8002b68:	2101      	movs	r1, #1
 8002b6a:	f822 1013 	strh.w	r1, [r2, r3, lsl #1]
 8002b6e:	3301      	adds	r3, #1
 8002b70:	2b04      	cmp	r3, #4
 8002b72:	d1e8      	bne.n	8002b46 <TIM3_IRQHandler+0x2>
 8002b74:	4b06      	ldr	r3, [pc, #24]	; (8002b90 <TIM3_IRQHandler+0x4c>)
 8002b76:	4807      	ldr	r0, [pc, #28]	; (8002b94 <TIM3_IRQHandler+0x50>)
 8002b78:	681a      	ldr	r2, [r3, #0]
 8002b7a:	2101      	movs	r1, #1
 8002b7c:	3201      	adds	r2, #1
 8002b7e:	601a      	str	r2, [r3, #0]
 8002b80:	f7ff bf8f 	b.w	8002aa2 <TIM_ClearITPendingBit>
 8002b84:	20000ec8 	.word	0x20000ec8
 8002b88:	20000ebc 	.word	0x20000ebc
 8002b8c:	20000eb4 	.word	0x20000eb4
 8002b90:	20000ec4 	.word	0x20000ec4
 8002b94:	40000400 	.word	0x40000400

08002b98 <timer_get_time>:
 8002b98:	b082      	sub	sp, #8
 8002b9a:	b672      	cpsid	i
 8002b9c:	4b04      	ldr	r3, [pc, #16]	; (8002bb0 <timer_get_time+0x18>)
 8002b9e:	681b      	ldr	r3, [r3, #0]
 8002ba0:	9301      	str	r3, [sp, #4]
 8002ba2:	b662      	cpsie	i
 8002ba4:	9801      	ldr	r0, [sp, #4]
 8002ba6:	230a      	movs	r3, #10
 8002ba8:	fbb0 f0f3 	udiv	r0, r0, r3
 8002bac:	b002      	add	sp, #8
 8002bae:	4770      	bx	lr
 8002bb0:	20000ec4 	.word	0x20000ec4

08002bb4 <timer_delay_ms>:
 8002bb4:	b513      	push	{r0, r1, r4, lr}
 8002bb6:	4604      	mov	r4, r0
 8002bb8:	f7ff ffee 	bl	8002b98 <timer_get_time>
 8002bbc:	4420      	add	r0, r4
 8002bbe:	9001      	str	r0, [sp, #4]
 8002bc0:	9c01      	ldr	r4, [sp, #4]
 8002bc2:	f7ff ffe9 	bl	8002b98 <timer_get_time>
 8002bc6:	4284      	cmp	r4, r0
 8002bc8:	d902      	bls.n	8002bd0 <timer_delay_ms+0x1c>
 8002bca:	f7ff f987 	bl	8001edc <sleep>
 8002bce:	e7f7      	b.n	8002bc0 <timer_delay_ms+0xc>
 8002bd0:	b002      	add	sp, #8
 8002bd2:	bd10      	pop	{r4, pc}

08002bd4 <event_timer_set_period>:
 8002bd4:	b672      	cpsid	i
 8002bd6:	eb01 0181 	add.w	r1, r1, r1, lsl #2
 8002bda:	4b07      	ldr	r3, [pc, #28]	; (8002bf8 <event_timer_set_period+0x24>)
 8002bdc:	0049      	lsls	r1, r1, #1
 8002bde:	b289      	uxth	r1, r1
 8002be0:	f823 1010 	strh.w	r1, [r3, r0, lsl #1]
 8002be4:	4b05      	ldr	r3, [pc, #20]	; (8002bfc <event_timer_set_period+0x28>)
 8002be6:	f823 1010 	strh.w	r1, [r3, r0, lsl #1]
 8002bea:	4b05      	ldr	r3, [pc, #20]	; (8002c00 <event_timer_set_period+0x2c>)
 8002bec:	2200      	movs	r2, #0
 8002bee:	f823 2010 	strh.w	r2, [r3, r0, lsl #1]
 8002bf2:	b662      	cpsie	i
 8002bf4:	4770      	bx	lr
 8002bf6:	bf00      	nop
 8002bf8:	20000ec8 	.word	0x20000ec8
 8002bfc:	20000ebc 	.word	0x20000ebc
 8002c00:	20000eb4 	.word	0x20000eb4

08002c04 <event_timer_wait>:
 8002c04:	b510      	push	{r4, lr}
 8002c06:	4604      	mov	r4, r0
 8002c08:	4b06      	ldr	r3, [pc, #24]	; (8002c24 <event_timer_wait+0x20>)
 8002c0a:	f833 2014 	ldrh.w	r2, [r3, r4, lsl #1]
 8002c0e:	b292      	uxth	r2, r2
 8002c10:	b912      	cbnz	r2, 8002c18 <event_timer_wait+0x14>
 8002c12:	f7ff f963 	bl	8001edc <sleep>
 8002c16:	e7f7      	b.n	8002c08 <event_timer_wait+0x4>
 8002c18:	b672      	cpsid	i
 8002c1a:	2200      	movs	r2, #0
 8002c1c:	f823 2014 	strh.w	r2, [r3, r4, lsl #1]
 8002c20:	b662      	cpsie	i
 8002c22:	bd10      	pop	{r4, pc}
 8002c24:	20000eb4 	.word	0x20000eb4

08002c28 <_init>:
 8002c28:	e1a0c00d 	mov	ip, sp
 8002c2c:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
 8002c30:	e24cb004 	sub	fp, ip, #4
 8002c34:	e24bd028 	sub	sp, fp, #40	; 0x28
 8002c38:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
 8002c3c:	e12fff1e 	bx	lr

08002c40 <_fini>:
 8002c40:	e1a0c00d 	mov	ip, sp
 8002c44:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
 8002c48:	e24cb004 	sub	fp, ip, #4
 8002c4c:	e24bd028 	sub	sp, fp, #40	; 0x28
 8002c50:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
 8002c54:	e12fff1e 	bx	lr
 8002c58:	6c65770a 	.word	0x6c65770a
 8002c5c:	656d6f63 	.word	0x656d6f63
 8002c60:	206f7420 	.word	0x206f7420
 8002c64:	757a7553 	.word	0x757a7553
 8002c68:	534f6168 	.word	0x534f6168
 8002c6c:	5e5f5e20 	.word	0x5e5f5e20
 8002c70:	302e3220 	.word	0x302e3220
 8002c74:	420a362e 	.word	0x420a362e
 8002c78:	444c4955 	.word	0x444c4955
 8002c7c:	72704120 	.word	0x72704120
 8002c80:	20343120 	.word	0x20343120
 8002c84:	36313032 	.word	0x36313032
 8002c88:	3a323120 	.word	0x3a323120
 8002c8c:	323a3734 	.word	0x323a3734
 8002c90:	73000a39 	.word	0x73000a39
 8002c94:	65747379 	.word	0x65747379
 8002c98:	6261206d 	.word	0x6261206d
 8002c9c:	6574726f 	.word	0x6574726f
 8002ca0:	0a64      	.short	0x0a64
 8002ca2:	00          	.byte	0x00
 8002ca3:	65          	.byte	0x65
 8002ca4:	726f7272 	.word	0x726f7272
 8002ca8:	646f6320 	.word	0x646f6320
 8002cac:	75252065 	.word	0x75252065
 8002cb0:	0a75253a 	.word	0x0a75253a
 8002cb4:	00          	.byte	0x00
 8002cb5:	73          	.byte	0x73
 8002cb6:	6474      	.short	0x6474
 8002cb8:	69206f69 	.word	0x69206f69
 8002cbc:	2074696e 	.word	0x2074696e
 8002cc0:	656e6f64 	.word	0x656e6f64
 8002cc4:	0000000a 	.word	0x0000000a

08002cc8 <__EH_FRAME_BEGIN__>:
 8002cc8:	00000000                                ....
