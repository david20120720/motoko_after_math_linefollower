
bin/main.elf:     file format elf32-littlearm


Disassembly of section .text:

08000188 <main>:
 8000188:	b508      	push	{r3, lr}
 800018a:	f001 fda3 	bl	8001cd4 <lib_low_level_init>
 800018e:	f001 fad0 	bl	8001732 <lib_os_init>
 8000192:	4905      	ldr	r1, [pc, #20]	; (80001a8 <main+0x20>)
 8000194:	4805      	ldr	r0, [pc, #20]	; (80001ac <main+0x24>)
 8000196:	f44f 7200 	mov.w	r2, #512	; 0x200
 800019a:	2306      	movs	r3, #6
 800019c:	f001 f8fc 	bl	8001398 <create_thread>
 80001a0:	f001 f8f4 	bl	800138c <kernel_start>
 80001a4:	2000      	movs	r0, #0
 80001a6:	bd08      	pop	{r3, pc}
 80001a8:	2000089c 	.word	0x2000089c
 80001ac:	080004a1 	.word	0x080004a1

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
 80001cc:	f000 ffc8 	bl	8001160 <pid_init>
 80001d0:	b003      	add	sp, #12
 80001d2:	f85d eb04 	ldr.w	lr, [sp], #4
 80001d6:	f000 ba17 	b.w	8000608 <q_predictor_init>
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
 80001fa:	4b29      	ldr	r3, [pc, #164]	; (80002a0 <line_follower_main+0xa8>)
 80001fc:	eddf 7a29 	vldr	s15, [pc, #164]	; 80002a4 <line_follower_main+0xac>
 8000200:	ed93 7a08 	vldr	s14, [r3, #32]
 8000204:	4c28      	ldr	r4, [pc, #160]	; (80002a8 <line_follower_main+0xb0>)
 8000206:	ed2d 8b02 	vpush	{d8}
 800020a:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 800020e:	ed9f 8a27 	vldr	s16, [pc, #156]	; 80002ac <line_follower_main+0xb4>
 8000212:	ee07 8a67 	vmls.f32	s16, s14, s15
 8000216:	ee18 0a10 	vmov	r0, s16
 800021a:	f001 f80a 	bl	8001232 <m_abs>
 800021e:	ed9f 7a24 	vldr	s14, [pc, #144]	; 80002b0 <line_follower_main+0xb8>
 8000222:	ed9f 6a24 	vldr	s12, [pc, #144]	; 80002b4 <line_follower_main+0xbc>
 8000226:	edd4 6a00 	vldr	s13, [r4]
 800022a:	ee07 0a90 	vmov	s15, r0
 800022e:	ee77 5a67 	vsub.f32	s11, s14, s15
 8000232:	ee45 6a86 	vmla.f32	s13, s11, s12
 8000236:	ee16 0a90 	vmov	r0, s13
 800023a:	eddf 6a1f 	vldr	s13, [pc, #124]	; 80002b8 <line_follower_main+0xc0>
 800023e:	ee07 7ae6 	vmls.f32	s14, s15, s13
 8000242:	ee17 1a10 	vmov	r1, s14
 8000246:	f001 f817 	bl	8001278 <m_min>
 800024a:	6862      	ldr	r2, [r4, #4]
 800024c:	6020      	str	r0, [r4, #0]
 800024e:	f04f 517c 	mov.w	r1, #1056964608	; 0x3f000000
 8000252:	f000 fffa 	bl	800124a <m_saturate>
 8000256:	ee18 1a10 	vmov	r1, s16
 800025a:	6020      	str	r0, [r4, #0]
 800025c:	4817      	ldr	r0, [pc, #92]	; (80002bc <line_follower_main+0xc4>)
 800025e:	f000 ffaf 	bl	80011c0 <pid_process>
 8000262:	edd4 6a00 	vldr	s13, [r4]
 8000266:	ed9f 7a16 	vldr	s14, [pc, #88]	; 80002c0 <line_follower_main+0xc8>
 800026a:	60a0      	str	r0, [r4, #8]
 800026c:	ee07 0a90 	vmov	s15, r0
 8000270:	ee36 6aa7 	vadd.f32	s12, s13, s15
 8000274:	ee76 7ae7 	vsub.f32	s15, s13, s15
 8000278:	ee26 6a07 	vmul.f32	s12, s12, s14
 800027c:	ee27 7a87 	vmul.f32	s14, s15, s14
 8000280:	ecbd 8b02 	vpop	{d8}
 8000284:	eebd 6ac6 	vcvt.s32.f32	s12, s12
 8000288:	eebd 7ac7 	vcvt.s32.f32	s14, s14
 800028c:	ee16 0a10 	vmov	r0, s12
 8000290:	ee17 1a10 	vmov	r1, s14
 8000294:	b200      	sxth	r0, r0
 8000296:	b209      	sxth	r1, r1
 8000298:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800029c:	f002 b838 	b.w	8002310 <drv8834_run>
 80002a0:	2000045c 	.word	0x2000045c
 80002a4:	3b800000 	.word	0x3b800000
 80002a8:	20000d4c 	.word	0x20000d4c
 80002ac:	00000000 	.word	0x00000000
 80002b0:	3f800000 	.word	0x3f800000
 80002b4:	3ca3d70a 	.word	0x3ca3d70a
 80002b8:	40a00000 	.word	0x40a00000
 80002bc:	20000a9c 	.word	0x20000a9c
 80002c0:	42c80000 	.word	0x42c80000

080002c4 <broken_line_init>:
 80002c4:	4770      	bx	lr
	...

080002c8 <broken_line_main>:
 80002c8:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 80002cc:	2500      	movs	r5, #0
 80002ce:	462c      	mov	r4, r5
 80002d0:	462f      	mov	r7, r5
 80002d2:	46a8      	mov	r8, r5
 80002d4:	462e      	mov	r6, r5
 80002d6:	f8df 90f0 	ldr.w	r9, [pc, #240]	; 80003c8 <broken_line_main+0x100>
 80002da:	f899 301c 	ldrb.w	r3, [r9, #28]
 80002de:	2b08      	cmp	r3, #8
 80002e0:	d06c      	beq.n	80003bc <broken_line_main+0xf4>
 80002e2:	2005      	movs	r0, #5
 80002e4:	f002 fabc 	bl	8002860 <timer_delay_ms>
 80002e8:	2f05      	cmp	r7, #5
 80002ea:	d861      	bhi.n	80003b0 <broken_line_main+0xe8>
 80002ec:	e8df f007 	tbb	[pc, r7]
 80002f0:	38271503 	.word	0x38271503
 80002f4:	4d4a      	.short	0x4d4a
 80002f6:	2c00      	cmp	r4, #0
 80002f8:	d145      	bne.n	8000386 <broken_line_main+0xbe>
 80002fa:	f8d9 3020 	ldr.w	r3, [r9, #32]
 80002fe:	2b00      	cmp	r3, #0
 8000300:	f04f 0464 	mov.w	r4, #100	; 0x64
 8000304:	f04f 0701 	mov.w	r7, #1
 8000308:	bfd4      	ite	le
 800030a:	f04f 0832 	movle.w	r8, #50	; 0x32
 800030e:	f04f 0800 	movgt.w	r8, #0
 8000312:	bfd4      	ite	le
 8000314:	2600      	movle	r6, #0
 8000316:	2632      	movgt	r6, #50	; 0x32
 8000318:	e04a      	b.n	80003b0 <broken_line_main+0xe8>
 800031a:	bba4      	cbnz	r4, 8000386 <broken_line_main+0xbe>
 800031c:	f8d9 3020 	ldr.w	r3, [r9, #32]
 8000320:	2b00      	cmp	r3, #0
 8000322:	f04f 0464 	mov.w	r4, #100	; 0x64
 8000326:	f04f 0702 	mov.w	r7, #2
 800032a:	bfd4      	ite	le
 800032c:	f06f 0831 	mvnle.w	r8, #49	; 0x31
 8000330:	f04f 0800 	movgt.w	r8, #0
 8000334:	bfd4      	ite	le
 8000336:	2600      	movle	r6, #0
 8000338:	f06f 0631 	mvngt.w	r6, #49	; 0x31
 800033c:	e038      	b.n	80003b0 <broken_line_main+0xe8>
 800033e:	bb14      	cbnz	r4, 8000386 <broken_line_main+0xbe>
 8000340:	f8d9 3020 	ldr.w	r3, [r9, #32]
 8000344:	2b00      	cmp	r3, #0
 8000346:	f04f 0464 	mov.w	r4, #100	; 0x64
 800034a:	f04f 0703 	mov.w	r7, #3
 800034e:	bfd4      	ite	le
 8000350:	f04f 0800 	movle.w	r8, #0
 8000354:	f04f 0832 	movgt.w	r8, #50	; 0x32
 8000358:	bfd4      	ite	le
 800035a:	2632      	movle	r6, #50	; 0x32
 800035c:	2600      	movgt	r6, #0
 800035e:	e027      	b.n	80003b0 <broken_line_main+0xe8>
 8000360:	b98c      	cbnz	r4, 8000386 <broken_line_main+0xbe>
 8000362:	f8d9 3020 	ldr.w	r3, [r9, #32]
 8000366:	2b00      	cmp	r3, #0
 8000368:	f04f 0464 	mov.w	r4, #100	; 0x64
 800036c:	f04f 0704 	mov.w	r7, #4
 8000370:	bfd4      	ite	le
 8000372:	f04f 0800 	movle.w	r8, #0
 8000376:	f06f 0831 	mvngt.w	r8, #49	; 0x31
 800037a:	bfd4      	ite	le
 800037c:	f06f 0631 	mvnle.w	r6, #49	; 0x31
 8000380:	2600      	movgt	r6, #0
 8000382:	e015      	b.n	80003b0 <broken_line_main+0xe8>
 8000384:	b16c      	cbz	r4, 80003a2 <broken_line_main+0xda>
 8000386:	3c01      	subs	r4, #1
 8000388:	e012      	b.n	80003b0 <broken_line_main+0xe8>
 800038a:	b184      	cbz	r4, 80003ae <broken_line_main+0xe6>
 800038c:	f241 3387 	movw	r3, #4999	; 0x1387
 8000390:	429d      	cmp	r5, r3
 8000392:	bfd8      	it	le
 8000394:	3532      	addle	r5, #50	; 0x32
 8000396:	2664      	movs	r6, #100	; 0x64
 8000398:	fb95 f6f6 	sdiv	r6, r5, r6
 800039c:	3c01      	subs	r4, #1
 800039e:	46b0      	mov	r8, r6
 80003a0:	e006      	b.n	80003b0 <broken_line_main+0xe8>
 80003a2:	4625      	mov	r5, r4
 80003a4:	2705      	movs	r7, #5
 80003a6:	2432      	movs	r4, #50	; 0x32
 80003a8:	46a8      	mov	r8, r5
 80003aa:	462e      	mov	r6, r5
 80003ac:	e000      	b.n	80003b0 <broken_line_main+0xe8>
 80003ae:	4627      	mov	r7, r4
 80003b0:	fa0f f088 	sxth.w	r0, r8
 80003b4:	b231      	sxth	r1, r6
 80003b6:	f001 ffab 	bl	8002310 <drv8834_run>
 80003ba:	e78c      	b.n	80002d6 <broken_line_main+0xe>
 80003bc:	2000      	movs	r0, #0
 80003be:	4601      	mov	r1, r0
 80003c0:	e8bd 43f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 80003c4:	f001 bfa4 	b.w	8002310 <drv8834_run>
 80003c8:	2000045c 	.word	0x2000045c

080003cc <line_sensor_thread>:
 80003cc:	b508      	push	{r3, lr}
 80003ce:	f000 fd0f 	bl	8000df0 <line_sensor_init>
 80003d2:	4601      	mov	r1, r0
 80003d4:	b120      	cbz	r0, 80003e0 <line_sensor_thread+0x14>
 80003d6:	4b08      	ldr	r3, [pc, #32]	; (80003f8 <line_sensor_thread+0x2c>)
 80003d8:	2001      	movs	r0, #1
 80003da:	6018      	str	r0, [r3, #0]
 80003dc:	f000 f968 	bl	80006b0 <abort_error_>
 80003e0:	2000      	movs	r0, #0
 80003e2:	2104      	movs	r1, #4
 80003e4:	f002 fa4c 	bl	8002880 <event_timer_set_period>
 80003e8:	2000      	movs	r0, #0
 80003ea:	f002 fa61 	bl	80028b0 <event_timer_wait>
 80003ee:	2000      	movs	r0, #0
 80003f0:	f000 fd76 	bl	8000ee0 <line_sensor_read>
 80003f4:	e7f8      	b.n	80003e8 <line_sensor_thread+0x1c>
 80003f6:	bf00      	nop
 80003f8:	20000d58 	.word	0x20000d58

080003fc <i2c_sensor_thread>:
 80003fc:	b508      	push	{r3, lr}
 80003fe:	f000 fdf7 	bl	8000ff0 <lsm9ds0_init>
 8000402:	4601      	mov	r1, r0
 8000404:	b128      	cbz	r0, 8000412 <i2c_sensor_thread+0x16>
 8000406:	4b08      	ldr	r3, [pc, #32]	; (8000428 <i2c_sensor_thread+0x2c>)
 8000408:	2201      	movs	r2, #1
 800040a:	2002      	movs	r0, #2
 800040c:	601a      	str	r2, [r3, #0]
 800040e:	f000 f94f 	bl	80006b0 <abort_error_>
 8000412:	2001      	movs	r0, #1
 8000414:	210a      	movs	r1, #10
 8000416:	f002 fa33 	bl	8002880 <event_timer_set_period>
 800041a:	2001      	movs	r0, #1
 800041c:	f002 fa48 	bl	80028b0 <event_timer_wait>
 8000420:	f000 fd68 	bl	8000ef4 <lsm9ds0_read>
 8000424:	e7f9      	b.n	800041a <i2c_sensor_thread+0x1e>
 8000426:	bf00      	nop
 8000428:	20000d58 	.word	0x20000d58

0800042c <line_follower>:
 800042c:	b538      	push	{r3, r4, r5, lr}
 800042e:	f7ff febf 	bl	80001b0 <line_follower_init>
 8000432:	2002      	movs	r0, #2
 8000434:	2104      	movs	r1, #4
 8000436:	f002 fa23 	bl	8002880 <event_timer_set_period>
 800043a:	f002 fa03 	bl	8002844 <timer_get_time>
 800043e:	f500 35c3 	add.w	r5, r0, #99840	; 0x18600
 8000442:	35a0      	adds	r5, #160	; 0xa0
 8000444:	2400      	movs	r4, #0
 8000446:	2002      	movs	r0, #2
 8000448:	f002 fa32 	bl	80028b0 <event_timer_wait>
 800044c:	4b13      	ldr	r3, [pc, #76]	; (800049c <line_follower+0x70>)
 800044e:	6a5a      	ldr	r2, [r3, #36]	; 0x24
 8000450:	f5b2 7f48 	cmp.w	r2, #800	; 0x320
 8000454:	dd02      	ble.n	800045c <line_follower+0x30>
 8000456:	f000 f8d2 	bl	80005fe <obstacle_main>
 800045a:	e007      	b.n	800046c <line_follower+0x40>
 800045c:	7f1b      	ldrb	r3, [r3, #28]
 800045e:	2b08      	cmp	r3, #8
 8000460:	d102      	bne.n	8000468 <line_follower+0x3c>
 8000462:	f7ff fec9 	bl	80001f8 <line_follower_main>
 8000466:	e001      	b.n	800046c <line_follower+0x40>
 8000468:	f7ff ff2e 	bl	80002c8 <broken_line_main>
 800046c:	3401      	adds	r4, #1
 800046e:	2314      	movs	r3, #20
 8000470:	fbb4 f2f3 	udiv	r2, r4, r3
 8000474:	fb03 4312 	mls	r3, r3, r2, r4
 8000478:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 800047c:	b913      	cbnz	r3, 8000484 <line_follower+0x58>
 800047e:	f001 fb05 	bl	8001a8c <led_on>
 8000482:	e001      	b.n	8000488 <line_follower+0x5c>
 8000484:	f001 fb14 	bl	8001ab0 <led_off>
 8000488:	f002 f9dc 	bl	8002844 <timer_get_time>
 800048c:	4285      	cmp	r5, r0
 800048e:	d2da      	bcs.n	8000446 <line_follower+0x1a>
 8000490:	2000      	movs	r0, #0
 8000492:	4601      	mov	r1, r0
 8000494:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8000498:	f001 bf3a 	b.w	8002310 <drv8834_run>
 800049c:	2000045c 	.word	0x2000045c

080004a0 <main_thread>:
 80004a0:	b510      	push	{r4, lr}
 80004a2:	481f      	ldr	r0, [pc, #124]	; (8000520 <main_thread+0x80>)
 80004a4:	4c1f      	ldr	r4, [pc, #124]	; (8000524 <main_thread+0x84>)
 80004a6:	f001 f881 	bl	80015ac <printf_>
 80004aa:	f44f 7096 	mov.w	r0, #300	; 0x12c
 80004ae:	f002 f9d7 	bl	8002860 <timer_delay_ms>
 80004b2:	2300      	movs	r3, #0
 80004b4:	6023      	str	r3, [r4, #0]
 80004b6:	491c      	ldr	r1, [pc, #112]	; (8000528 <main_thread+0x88>)
 80004b8:	481c      	ldr	r0, [pc, #112]	; (800052c <main_thread+0x8c>)
 80004ba:	f44f 7200 	mov.w	r2, #512	; 0x200
 80004be:	2306      	movs	r3, #6
 80004c0:	f000 ff6a 	bl	8001398 <create_thread>
 80004c4:	491a      	ldr	r1, [pc, #104]	; (8000530 <main_thread+0x90>)
 80004c6:	481b      	ldr	r0, [pc, #108]	; (8000534 <main_thread+0x94>)
 80004c8:	f44f 7200 	mov.w	r2, #512	; 0x200
 80004cc:	2306      	movs	r3, #6
 80004ce:	f000 ff63 	bl	8001398 <create_thread>
 80004d2:	f7ff fef7 	bl	80002c4 <broken_line_init>
 80004d6:	f000 f891 	bl	80005fc <obstacle_init>
 80004da:	6823      	ldr	r3, [r4, #0]
 80004dc:	b13b      	cbz	r3, 80004ee <main_thread+0x4e>
 80004de:	4816      	ldr	r0, [pc, #88]	; (8000538 <main_thread+0x98>)
 80004e0:	f001 f864 	bl	80015ac <printf_>
 80004e4:	f44f 60fa 	mov.w	r0, #2000	; 0x7d0
 80004e8:	f002 f9ba 	bl	8002860 <timer_delay_ms>
 80004ec:	e7f7      	b.n	80004de <main_thread+0x3e>
 80004ee:	f001 faf1 	bl	8001ad4 <get_key>
 80004f2:	b128      	cbz	r0, 8000500 <main_thread+0x60>
 80004f4:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 80004f8:	f002 f9b2 	bl	8002860 <timer_delay_ms>
 80004fc:	f7ff ff96 	bl	800042c <line_follower>
 8000500:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8000504:	f001 fac2 	bl	8001a8c <led_on>
 8000508:	2064      	movs	r0, #100	; 0x64
 800050a:	f002 f9a9 	bl	8002860 <timer_delay_ms>
 800050e:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8000512:	f001 facd 	bl	8001ab0 <led_off>
 8000516:	20c8      	movs	r0, #200	; 0xc8
 8000518:	f002 f9a2 	bl	8002860 <timer_delay_ms>
 800051c:	e7dd      	b.n	80004da <main_thread+0x3a>
 800051e:	bf00      	nop
 8000520:	08002904 	.word	0x08002904
 8000524:	20000d58 	.word	0x20000d58
 8000528:	20000200 	.word	0x20000200
 800052c:	080003cd 	.word	0x080003cd
 8000530:	2000069c 	.word	0x2000069c
 8000534:	080003fd 	.word	0x080003fd
 8000538:	0800293f 	.word	0x0800293f

0800053c <obstacle_go_forward>:
 800053c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800053e:	460f      	mov	r7, r1
 8000540:	ed2d 8b04 	vpush	{d8-d9}
 8000544:	4606      	mov	r6, r0
 8000546:	b950      	cbnz	r0, 800055e <obstacle_go_forward+0x22>
 8000548:	2000      	movs	r0, #0
 800054a:	4601      	mov	r1, r0
 800054c:	f001 fee0 	bl	8002310 <drv8834_run>
 8000550:	ecbd 8b04 	vpop	{d8-d9}
 8000554:	2064      	movs	r0, #100	; 0x64
 8000556:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 800055a:	f002 b981 	b.w	8002860 <timer_delay_ms>
 800055e:	ed9f 8a21 	vldr	s16, [pc, #132]	; 80005e4 <obstacle_go_forward+0xa8>
 8000562:	2400      	movs	r4, #0
 8000564:	eef0 7a48 	vmov.f32	s15, s16
 8000568:	4625      	mov	r5, r4
 800056a:	eeb0 9a48 	vmov.f32	s18, s16
 800056e:	42bd      	cmp	r5, r7
 8000570:	d2ea      	bcs.n	8000548 <obstacle_go_forward+0xc>
 8000572:	4b1d      	ldr	r3, [pc, #116]	; (80005e8 <obstacle_go_forward+0xac>)
 8000574:	f9b3 3010 	ldrsh.w	r3, [r3, #16]
 8000578:	441c      	add	r4, r3
 800057a:	ee07 4a10 	vmov	s14, r4
 800057e:	eef8 8ac7 	vcvt.f32.s32	s17, s14
 8000582:	ed9f 7a1a 	vldr	s14, [pc, #104]	; 80005ec <obstacle_go_forward+0xb0>
 8000586:	ee79 8a68 	vsub.f32	s17, s18, s17
 800058a:	350a      	adds	r5, #10
 800058c:	ee78 7ae7 	vsub.f32	s15, s17, s15
 8000590:	ee67 7a87 	vmul.f32	s15, s15, s14
 8000594:	ed9f 7a16 	vldr	s14, [pc, #88]	; 80005f0 <obstacle_go_forward+0xb4>
 8000598:	ee48 7a87 	vmla.f32	s15, s17, s14
 800059c:	ee07 6a10 	vmov	s14, r6
 80005a0:	eef8 6a47 	vcvt.f32.u32	s13, s14
 80005a4:	ed9f 7a13 	vldr	s14, [pc, #76]	; 80005f4 <obstacle_go_forward+0xb8>
 80005a8:	ee26 7a87 	vmul.f32	s14, s13, s14
 80005ac:	eddf 6a12 	vldr	s13, [pc, #72]	; 80005f8 <obstacle_go_forward+0xbc>
 80005b0:	ee08 7a26 	vmla.f32	s14, s16, s13
 80005b4:	eeb0 8a47 	vmov.f32	s16, s14
 80005b8:	ee37 7a67 	vsub.f32	s14, s14, s15
 80005bc:	ee78 7a27 	vadd.f32	s15, s16, s15
 80005c0:	eebd 7ac7 	vcvt.s32.f32	s14, s14
 80005c4:	eefd 7ae7 	vcvt.s32.f32	s15, s15
 80005c8:	ee17 0a10 	vmov	r0, s14
 80005cc:	ee17 1a90 	vmov	r1, s15
 80005d0:	b200      	sxth	r0, r0
 80005d2:	b209      	sxth	r1, r1
 80005d4:	f001 fe9c 	bl	8002310 <drv8834_run>
 80005d8:	200a      	movs	r0, #10
 80005da:	f002 f941 	bl	8002860 <timer_delay_ms>
 80005de:	eef0 7a68 	vmov.f32	s15, s17
 80005e2:	e7c4      	b.n	800056e <obstacle_go_forward+0x32>
 80005e4:	00000000 	.word	0x00000000
 80005e8:	200001e4 	.word	0x200001e4
 80005ec:	3a83126f 	.word	0x3a83126f
 80005f0:	399d4952 	.word	0x399d4952
 80005f4:	3e4ccccc 	.word	0x3e4ccccc
 80005f8:	3f4ccccd 	.word	0x3f4ccccd

080005fc <obstacle_init>:
 80005fc:	4770      	bx	lr

080005fe <obstacle_main>:
 80005fe:	2000      	movs	r0, #0
 8000600:	2164      	movs	r1, #100	; 0x64
 8000602:	f7ff bf9b 	b.w	800053c <obstacle_go_forward>
	...

08000608 <q_predictor_init>:
 8000608:	4b24      	ldr	r3, [pc, #144]	; (800069c <q_predictor_init+0x94>)
 800060a:	2200      	movs	r2, #0
 800060c:	4619      	mov	r1, r3
 800060e:	b570      	push	{r4, r5, r6, lr}
 8000610:	4608      	mov	r0, r1
 8000612:	601a      	str	r2, [r3, #0]
 8000614:	605a      	str	r2, [r3, #4]
 8000616:	f103 0208 	add.w	r2, r3, #8
 800061a:	3348      	adds	r3, #72	; 0x48
 800061c:	2400      	movs	r4, #0
 800061e:	f842 4b04 	str.w	r4, [r2], #4
 8000622:	429a      	cmp	r2, r3
 8000624:	d1fa      	bne.n	800061c <q_predictor_init+0x14>
 8000626:	2200      	movs	r2, #0
 8000628:	eb01 0442 	add.w	r4, r1, r2, lsl #1
 800062c:	2300      	movs	r3, #0
 800062e:	4e1c      	ldr	r6, [pc, #112]	; (80006a0 <q_predictor_init+0x98>)
 8000630:	eddf 7a1c 	vldr	s15, [pc, #112]	; 80006a4 <q_predictor_init+0x9c>
 8000634:	4416      	add	r6, r2
 8000636:	eb04 0543 	add.w	r5, r4, r3, lsl #1
 800063a:	5ef6      	ldrsh	r6, [r6, r3]
 800063c:	ee07 6a10 	vmov	s14, r6
 8000640:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 8000644:	3302      	adds	r3, #2
 8000646:	ee87 7a27 	vdiv.f32	s14, s14, s15
 800064a:	2b20      	cmp	r3, #32
 800064c:	ed85 7a12 	vstr	s14, [r5, #72]	; 0x48
 8000650:	d1ed      	bne.n	800062e <q_predictor_init+0x26>
 8000652:	3220      	adds	r2, #32
 8000654:	f5b2 7f80 	cmp.w	r2, #256	; 0x100
 8000658:	d1e6      	bne.n	8000628 <q_predictor_init+0x20>
 800065a:	2300      	movs	r3, #0
 800065c:	4912      	ldr	r1, [pc, #72]	; (80006a8 <q_predictor_init+0xa0>)
 800065e:	5e59      	ldrsh	r1, [r3, r1]
 8000660:	ee07 1a10 	vmov	s14, r1
 8000664:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 8000668:	eb00 0243 	add.w	r2, r0, r3, lsl #1
 800066c:	ee87 7a27 	vdiv.f32	s14, s14, s15
 8000670:	3302      	adds	r3, #2
 8000672:	2b10      	cmp	r3, #16
 8000674:	ed82 7a92 	vstr	s14, [r2, #584]	; 0x248
 8000678:	d1f0      	bne.n	800065c <q_predictor_init+0x54>
 800067a:	2300      	movs	r3, #0
 800067c:	490b      	ldr	r1, [pc, #44]	; (80006ac <q_predictor_init+0xa4>)
 800067e:	5e59      	ldrsh	r1, [r3, r1]
 8000680:	ee07 1a10 	vmov	s14, r1
 8000684:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 8000688:	eb00 0243 	add.w	r2, r0, r3, lsl #1
 800068c:	ee87 7a27 	vdiv.f32	s14, s14, s15
 8000690:	3302      	adds	r3, #2
 8000692:	2b10      	cmp	r3, #16
 8000694:	ed82 7a9a 	vstr	s14, [r2, #616]	; 0x268
 8000698:	d1f0      	bne.n	800067c <q_predictor_init+0x74>
 800069a:	bd70      	pop	{r4, r5, r6, pc}
 800069c:	20000ac4 	.word	0x20000ac4
 80006a0:	20000010 	.word	0x20000010
 80006a4:	447a0000 	.word	0x447a0000
 80006a8:	20000000 	.word	0x20000000
 80006ac:	20000154 	.word	0x20000154

080006b0 <abort_error_>:
 80006b0:	b570      	push	{r4, r5, r6, lr}
 80006b2:	4605      	mov	r5, r0
 80006b4:	460e      	mov	r6, r1
 80006b6:	480f      	ldr	r0, [pc, #60]	; (80006f4 <abort_error_+0x44>)
 80006b8:	4629      	mov	r1, r5
 80006ba:	4632      	mov	r2, r6
 80006bc:	f000 ff76 	bl	80015ac <printf_>
 80006c0:	2400      	movs	r4, #0
 80006c2:	1ceb      	adds	r3, r5, #3
 80006c4:	429c      	cmp	r4, r3
 80006c6:	d20f      	bcs.n	80006e8 <abort_error_+0x38>
 80006c8:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 80006cc:	f001 f9de 	bl	8001a8c <led_on>
 80006d0:	2032      	movs	r0, #50	; 0x32
 80006d2:	f002 f8c5 	bl	8002860 <timer_delay_ms>
 80006d6:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 80006da:	f001 f9e9 	bl	8001ab0 <led_off>
 80006de:	2064      	movs	r0, #100	; 0x64
 80006e0:	f002 f8be 	bl	8002860 <timer_delay_ms>
 80006e4:	3401      	adds	r4, #1
 80006e6:	e7ec      	b.n	80006c2 <abort_error_+0x12>
 80006e8:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 80006ec:	f002 f8b8 	bl	8002860 <timer_delay_ms>
 80006f0:	e7e1      	b.n	80006b6 <abort_error_+0x6>
 80006f2:	bf00      	nop
 80006f4:	0800294f 	.word	0x0800294f

080006f8 <rgb_i2c_delay>:
 80006f8:	bf00      	nop
 80006fa:	bf00      	nop
 80006fc:	bf00      	nop
 80006fe:	bf00      	nop
 8000700:	4770      	bx	lr
	...

08000704 <RGBSetLowSDA>:
 8000704:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 8000706:	4f15      	ldr	r7, [pc, #84]	; (800075c <RGBSetLowSDA+0x58>)
 8000708:	2401      	movs	r4, #1
 800070a:	783b      	ldrb	r3, [r7, #0]
 800070c:	9300      	str	r3, [sp, #0]
 800070e:	2603      	movs	r6, #3
 8000710:	2500      	movs	r5, #0
 8000712:	4669      	mov	r1, sp
 8000714:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000718:	f88d 5007 	strb.w	r5, [sp, #7]
 800071c:	f88d 4004 	strb.w	r4, [sp, #4]
 8000720:	f88d 6005 	strb.w	r6, [sp, #5]
 8000724:	f88d 4006 	strb.w	r4, [sp, #6]
 8000728:	f001 f9dc 	bl	8001ae4 <GPIO_Init>
 800072c:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000730:	783a      	ldrb	r2, [r7, #0]
 8000732:	851a      	strh	r2, [r3, #40]	; 0x28
 8000734:	f88d 5007 	strb.w	r5, [sp, #7]
 8000738:	4d09      	ldr	r5, [pc, #36]	; (8000760 <RGBSetLowSDA+0x5c>)
 800073a:	9400      	str	r4, [sp, #0]
 800073c:	4628      	mov	r0, r5
 800073e:	4669      	mov	r1, sp
 8000740:	f88d 4004 	strb.w	r4, [sp, #4]
 8000744:	f88d 6005 	strb.w	r6, [sp, #5]
 8000748:	f88d 4006 	strb.w	r4, [sp, #6]
 800074c:	f001 f9ca 	bl	8001ae4 <GPIO_Init>
 8000750:	852c      	strh	r4, [r5, #40]	; 0x28
 8000752:	f7ff ffd1 	bl	80006f8 <rgb_i2c_delay>
 8000756:	b003      	add	sp, #12
 8000758:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800075a:	bf00      	nop
 800075c:	20000d5c 	.word	0x20000d5c
 8000760:	48000400 	.word	0x48000400

08000764 <RGBSetHighSDA>:
 8000764:	b573      	push	{r0, r1, r4, r5, r6, lr}
 8000766:	4d13      	ldr	r5, [pc, #76]	; (80007b4 <RGBSetHighSDA+0x50>)
 8000768:	2400      	movs	r4, #0
 800076a:	782b      	ldrb	r3, [r5, #0]
 800076c:	9300      	str	r3, [sp, #0]
 800076e:	2603      	movs	r6, #3
 8000770:	4669      	mov	r1, sp
 8000772:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000776:	f88d 4004 	strb.w	r4, [sp, #4]
 800077a:	f88d 4007 	strb.w	r4, [sp, #7]
 800077e:	f88d 6005 	strb.w	r6, [sp, #5]
 8000782:	f001 f9af 	bl	8001ae4 <GPIO_Init>
 8000786:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 800078a:	782a      	ldrb	r2, [r5, #0]
 800078c:	619a      	str	r2, [r3, #24]
 800078e:	f88d 4004 	strb.w	r4, [sp, #4]
 8000792:	f88d 4007 	strb.w	r4, [sp, #7]
 8000796:	4c08      	ldr	r4, [pc, #32]	; (80007b8 <RGBSetHighSDA+0x54>)
 8000798:	f88d 6005 	strb.w	r6, [sp, #5]
 800079c:	2501      	movs	r5, #1
 800079e:	4620      	mov	r0, r4
 80007a0:	4669      	mov	r1, sp
 80007a2:	9500      	str	r5, [sp, #0]
 80007a4:	f001 f99e 	bl	8001ae4 <GPIO_Init>
 80007a8:	61a5      	str	r5, [r4, #24]
 80007aa:	f7ff ffa5 	bl	80006f8 <rgb_i2c_delay>
 80007ae:	b002      	add	sp, #8
 80007b0:	bd70      	pop	{r4, r5, r6, pc}
 80007b2:	bf00      	nop
 80007b4:	20000d5c 	.word	0x20000d5c
 80007b8:	48000400 	.word	0x48000400

080007bc <RGBSetLowSCL>:
 80007bc:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 80007c0:	f44f 7280 	mov.w	r2, #256	; 0x100
 80007c4:	851a      	strh	r2, [r3, #40]	; 0x28
 80007c6:	f7ff bf97 	b.w	80006f8 <rgb_i2c_delay>

080007ca <RGBSetHighSCL>:
 80007ca:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 80007ce:	f44f 7280 	mov.w	r2, #256	; 0x100
 80007d2:	619a      	str	r2, [r3, #24]
 80007d4:	f7ff bf90 	b.w	80006f8 <rgb_i2c_delay>

080007d8 <rgb_i2c_init>:
 80007d8:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 80007da:	4f1f      	ldr	r7, [pc, #124]	; (8000858 <rgb_i2c_init+0x80>)
 80007dc:	2400      	movs	r4, #0
 80007de:	2501      	movs	r5, #1
 80007e0:	2603      	movs	r6, #3
 80007e2:	f44f 7380 	mov.w	r3, #256	; 0x100
 80007e6:	4669      	mov	r1, sp
 80007e8:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80007ec:	9300      	str	r3, [sp, #0]
 80007ee:	f88d 4006 	strb.w	r4, [sp, #6]
 80007f2:	f88d 4007 	strb.w	r4, [sp, #7]
 80007f6:	f88d 5004 	strb.w	r5, [sp, #4]
 80007fa:	f88d 6005 	strb.w	r6, [sp, #5]
 80007fe:	f001 f971 	bl	8001ae4 <GPIO_Init>
 8000802:	783b      	ldrb	r3, [r7, #0]
 8000804:	9300      	str	r3, [sp, #0]
 8000806:	4669      	mov	r1, sp
 8000808:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 800080c:	f88d 4004 	strb.w	r4, [sp, #4]
 8000810:	f88d 4007 	strb.w	r4, [sp, #7]
 8000814:	f88d 6005 	strb.w	r6, [sp, #5]
 8000818:	f001 f964 	bl	8001ae4 <GPIO_Init>
 800081c:	7839      	ldrb	r1, [r7, #0]
 800081e:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000822:	f001 f9a4 	bl	8001b6e <GPIO_SetBits>
 8000826:	f88d 4004 	strb.w	r4, [sp, #4]
 800082a:	f88d 4007 	strb.w	r4, [sp, #7]
 800082e:	4c0b      	ldr	r4, [pc, #44]	; (800085c <rgb_i2c_init+0x84>)
 8000830:	9500      	str	r5, [sp, #0]
 8000832:	4620      	mov	r0, r4
 8000834:	4669      	mov	r1, sp
 8000836:	f88d 6005 	strb.w	r6, [sp, #5]
 800083a:	f001 f953 	bl	8001ae4 <GPIO_Init>
 800083e:	4620      	mov	r0, r4
 8000840:	4629      	mov	r1, r5
 8000842:	f001 f994 	bl	8001b6e <GPIO_SetBits>
 8000846:	f7ff ffc0 	bl	80007ca <RGBSetHighSCL>
 800084a:	f7ff ff5b 	bl	8000704 <RGBSetLowSDA>
 800084e:	f7ff ff89 	bl	8000764 <RGBSetHighSDA>
 8000852:	b003      	add	sp, #12
 8000854:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000856:	bf00      	nop
 8000858:	20000d5c 	.word	0x20000d5c
 800085c:	48000400 	.word	0x48000400

08000860 <rgb_i2cStart>:
 8000860:	b508      	push	{r3, lr}
 8000862:	f7ff ffb2 	bl	80007ca <RGBSetHighSCL>
 8000866:	f7ff ff7d 	bl	8000764 <RGBSetHighSDA>
 800086a:	f7ff ffae 	bl	80007ca <RGBSetHighSCL>
 800086e:	f7ff ff49 	bl	8000704 <RGBSetLowSDA>
 8000872:	f7ff ffa3 	bl	80007bc <RGBSetLowSCL>
 8000876:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800087a:	f7ff bf73 	b.w	8000764 <RGBSetHighSDA>

0800087e <rgb_i2cStop>:
 800087e:	b508      	push	{r3, lr}
 8000880:	f7ff ff9c 	bl	80007bc <RGBSetLowSCL>
 8000884:	f7ff ff3e 	bl	8000704 <RGBSetLowSDA>
 8000888:	f7ff ff9f 	bl	80007ca <RGBSetHighSCL>
 800088c:	f7ff ff3a 	bl	8000704 <RGBSetLowSDA>
 8000890:	f7ff ff9b 	bl	80007ca <RGBSetHighSCL>
 8000894:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8000898:	f7ff bf64 	b.w	8000764 <RGBSetHighSDA>

0800089c <rgb_i2cWrite>:
 800089c:	b538      	push	{r3, r4, r5, lr}
 800089e:	4604      	mov	r4, r0
 80008a0:	2508      	movs	r5, #8
 80008a2:	f7ff ff8b 	bl	80007bc <RGBSetLowSCL>
 80008a6:	0623      	lsls	r3, r4, #24
 80008a8:	d502      	bpl.n	80008b0 <rgb_i2cWrite+0x14>
 80008aa:	f7ff ff5b 	bl	8000764 <RGBSetHighSDA>
 80008ae:	e001      	b.n	80008b4 <rgb_i2cWrite+0x18>
 80008b0:	f7ff ff28 	bl	8000704 <RGBSetLowSDA>
 80008b4:	3d01      	subs	r5, #1
 80008b6:	f7ff ff88 	bl	80007ca <RGBSetHighSCL>
 80008ba:	0064      	lsls	r4, r4, #1
 80008bc:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 80008c0:	b2e4      	uxtb	r4, r4
 80008c2:	d1ee      	bne.n	80008a2 <rgb_i2cWrite+0x6>
 80008c4:	f7ff ff7a 	bl	80007bc <RGBSetLowSCL>
 80008c8:	f7ff ff4c 	bl	8000764 <RGBSetHighSDA>
 80008cc:	f7ff ff7d 	bl	80007ca <RGBSetHighSCL>
 80008d0:	f7ff ff74 	bl	80007bc <RGBSetLowSCL>
 80008d4:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 80008d8:	f7ff bf0e 	b.w	80006f8 <rgb_i2c_delay>

080008dc <rgb_i2cRead>:
 80008dc:	b570      	push	{r4, r5, r6, lr}
 80008de:	2300      	movs	r3, #0
 80008e0:	4606      	mov	r6, r0
 80008e2:	460c      	mov	r4, r1
 80008e4:	2200      	movs	r2, #0
 80008e6:	54e2      	strb	r2, [r4, r3]
 80008e8:	3301      	adds	r3, #1
 80008ea:	2b09      	cmp	r3, #9
 80008ec:	d1fa      	bne.n	80008e4 <rgb_i2cRead+0x8>
 80008ee:	f7ff ff65 	bl	80007bc <RGBSetLowSCL>
 80008f2:	f7ff ff37 	bl	8000764 <RGBSetHighSDA>
 80008f6:	2508      	movs	r5, #8
 80008f8:	2300      	movs	r3, #0
 80008fa:	5ce2      	ldrb	r2, [r4, r3]
 80008fc:	0052      	lsls	r2, r2, #1
 80008fe:	54e2      	strb	r2, [r4, r3]
 8000900:	3301      	adds	r3, #1
 8000902:	2b09      	cmp	r3, #9
 8000904:	d1f9      	bne.n	80008fa <rgb_i2cRead+0x1e>
 8000906:	f7ff ff60 	bl	80007ca <RGBSetHighSCL>
 800090a:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 800090e:	8a1b      	ldrh	r3, [r3, #16]
 8000910:	b29b      	uxth	r3, r3
 8000912:	07d9      	lsls	r1, r3, #31
 8000914:	d503      	bpl.n	800091e <rgb_i2cRead+0x42>
 8000916:	7822      	ldrb	r2, [r4, #0]
 8000918:	f042 0201 	orr.w	r2, r2, #1
 800091c:	7022      	strb	r2, [r4, #0]
 800091e:	079a      	lsls	r2, r3, #30
 8000920:	d503      	bpl.n	800092a <rgb_i2cRead+0x4e>
 8000922:	7862      	ldrb	r2, [r4, #1]
 8000924:	f042 0201 	orr.w	r2, r2, #1
 8000928:	7062      	strb	r2, [r4, #1]
 800092a:	0758      	lsls	r0, r3, #29
 800092c:	d503      	bpl.n	8000936 <rgb_i2cRead+0x5a>
 800092e:	78a2      	ldrb	r2, [r4, #2]
 8000930:	f042 0201 	orr.w	r2, r2, #1
 8000934:	70a2      	strb	r2, [r4, #2]
 8000936:	0719      	lsls	r1, r3, #28
 8000938:	d503      	bpl.n	8000942 <rgb_i2cRead+0x66>
 800093a:	78e2      	ldrb	r2, [r4, #3]
 800093c:	f042 0201 	orr.w	r2, r2, #1
 8000940:	70e2      	strb	r2, [r4, #3]
 8000942:	06da      	lsls	r2, r3, #27
 8000944:	d503      	bpl.n	800094e <rgb_i2cRead+0x72>
 8000946:	7922      	ldrb	r2, [r4, #4]
 8000948:	f042 0201 	orr.w	r2, r2, #1
 800094c:	7122      	strb	r2, [r4, #4]
 800094e:	0698      	lsls	r0, r3, #26
 8000950:	d503      	bpl.n	800095a <rgb_i2cRead+0x7e>
 8000952:	7962      	ldrb	r2, [r4, #5]
 8000954:	f042 0201 	orr.w	r2, r2, #1
 8000958:	7162      	strb	r2, [r4, #5]
 800095a:	0659      	lsls	r1, r3, #25
 800095c:	d503      	bpl.n	8000966 <rgb_i2cRead+0x8a>
 800095e:	79a2      	ldrb	r2, [r4, #6]
 8000960:	f042 0201 	orr.w	r2, r2, #1
 8000964:	71a2      	strb	r2, [r4, #6]
 8000966:	061a      	lsls	r2, r3, #24
 8000968:	d503      	bpl.n	8000972 <rgb_i2cRead+0x96>
 800096a:	79e3      	ldrb	r3, [r4, #7]
 800096c:	f043 0301 	orr.w	r3, r3, #1
 8000970:	71e3      	strb	r3, [r4, #7]
 8000972:	4b0b      	ldr	r3, [pc, #44]	; (80009a0 <rgb_i2cRead+0xc4>)
 8000974:	8a1b      	ldrh	r3, [r3, #16]
 8000976:	07db      	lsls	r3, r3, #31
 8000978:	d503      	bpl.n	8000982 <rgb_i2cRead+0xa6>
 800097a:	7a23      	ldrb	r3, [r4, #8]
 800097c:	f043 0301 	orr.w	r3, r3, #1
 8000980:	7223      	strb	r3, [r4, #8]
 8000982:	f7ff ff1b 	bl	80007bc <RGBSetLowSCL>
 8000986:	3d01      	subs	r5, #1
 8000988:	d1b6      	bne.n	80008f8 <rgb_i2cRead+0x1c>
 800098a:	b10e      	cbz	r6, 8000990 <rgb_i2cRead+0xb4>
 800098c:	f7ff feba 	bl	8000704 <RGBSetLowSDA>
 8000990:	f7ff ff1b 	bl	80007ca <RGBSetHighSCL>
 8000994:	f7ff ff12 	bl	80007bc <RGBSetLowSCL>
 8000998:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 800099c:	f7ff beac 	b.w	80006f8 <rgb_i2c_delay>
 80009a0:	48000400 	.word	0x48000400

080009a4 <rgb_i2c_write_reg>:
 80009a4:	b570      	push	{r4, r5, r6, lr}
 80009a6:	4605      	mov	r5, r0
 80009a8:	460c      	mov	r4, r1
 80009aa:	4616      	mov	r6, r2
 80009ac:	f7ff ff58 	bl	8000860 <rgb_i2cStart>
 80009b0:	4628      	mov	r0, r5
 80009b2:	f7ff ff73 	bl	800089c <rgb_i2cWrite>
 80009b6:	4620      	mov	r0, r4
 80009b8:	f7ff ff70 	bl	800089c <rgb_i2cWrite>
 80009bc:	4630      	mov	r0, r6
 80009be:	f7ff ff6d 	bl	800089c <rgb_i2cWrite>
 80009c2:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 80009c6:	f7ff bf5a 	b.w	800087e <rgb_i2cStop>

080009ca <rgb_i2c_read_reg>:
 80009ca:	b570      	push	{r4, r5, r6, lr}
 80009cc:	4604      	mov	r4, r0
 80009ce:	460d      	mov	r5, r1
 80009d0:	4616      	mov	r6, r2
 80009d2:	f7ff ff45 	bl	8000860 <rgb_i2cStart>
 80009d6:	4620      	mov	r0, r4
 80009d8:	f7ff ff60 	bl	800089c <rgb_i2cWrite>
 80009dc:	4628      	mov	r0, r5
 80009de:	f7ff ff5d 	bl	800089c <rgb_i2cWrite>
 80009e2:	f7ff ff3d 	bl	8000860 <rgb_i2cStart>
 80009e6:	f044 0001 	orr.w	r0, r4, #1
 80009ea:	f7ff ff57 	bl	800089c <rgb_i2cWrite>
 80009ee:	4631      	mov	r1, r6
 80009f0:	2000      	movs	r0, #0
 80009f2:	f7ff ff73 	bl	80008dc <rgb_i2cRead>
 80009f6:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 80009fa:	f7ff bf40 	b.w	800087e <rgb_i2cStop>
	...

08000a00 <rgb_init>:
 8000a00:	4b1d      	ldr	r3, [pc, #116]	; (8000a78 <rgb_init+0x78>)
 8000a02:	b570      	push	{r4, r5, r6, lr}
 8000a04:	2409      	movs	r4, #9
 8000a06:	2200      	movs	r2, #0
 8000a08:	3c01      	subs	r4, #1
 8000a0a:	801a      	strh	r2, [r3, #0]
 8000a0c:	825a      	strh	r2, [r3, #18]
 8000a0e:	849a      	strh	r2, [r3, #36]	; 0x24
 8000a10:	f8a3 2048 	strh.w	r2, [r3, #72]	; 0x48
 8000a14:	86da      	strh	r2, [r3, #54]	; 0x36
 8000a16:	f103 0302 	add.w	r3, r3, #2
 8000a1a:	d1f4      	bne.n	8000a06 <rgb_init+0x6>
 8000a1c:	4d17      	ldr	r5, [pc, #92]	; (8000a7c <rgb_init+0x7c>)
 8000a1e:	f64f 76ff 	movw	r6, #65535	; 0xffff
 8000a22:	802e      	strh	r6, [r5, #0]
 8000a24:	f7ff fed8 	bl	80007d8 <rgb_i2c_init>
 8000a28:	2072      	movs	r0, #114	; 0x72
 8000a2a:	2181      	movs	r1, #129	; 0x81
 8000a2c:	22ff      	movs	r2, #255	; 0xff
 8000a2e:	f7ff ffb9 	bl	80009a4 <rgb_i2c_write_reg>
 8000a32:	2072      	movs	r0, #114	; 0x72
 8000a34:	2183      	movs	r1, #131	; 0x83
 8000a36:	22ff      	movs	r2, #255	; 0xff
 8000a38:	f7ff ffb4 	bl	80009a4 <rgb_i2c_write_reg>
 8000a3c:	2072      	movs	r0, #114	; 0x72
 8000a3e:	218d      	movs	r1, #141	; 0x8d
 8000a40:	4622      	mov	r2, r4
 8000a42:	f7ff ffaf 	bl	80009a4 <rgb_i2c_write_reg>
 8000a46:	2072      	movs	r0, #114	; 0x72
 8000a48:	2180      	movs	r1, #128	; 0x80
 8000a4a:	2203      	movs	r2, #3
 8000a4c:	f7ff ffaa 	bl	80009a4 <rgb_i2c_write_reg>
 8000a50:	2072      	movs	r0, #114	; 0x72
 8000a52:	218f      	movs	r1, #143	; 0x8f
 8000a54:	2223      	movs	r2, #35	; 0x23
 8000a56:	f7ff ffa5 	bl	80009a4 <rgb_i2c_write_reg>
 8000a5a:	f7ff fe83 	bl	8000764 <RGBSetHighSDA>
 8000a5e:	2072      	movs	r0, #114	; 0x72
 8000a60:	2180      	movs	r1, #128	; 0x80
 8000a62:	2207      	movs	r2, #7
 8000a64:	802c      	strh	r4, [r5, #0]
 8000a66:	f7ff ff9d 	bl	80009a4 <rgb_i2c_write_reg>
 8000a6a:	2072      	movs	r0, #114	; 0x72
 8000a6c:	218e      	movs	r1, #142	; 0x8e
 8000a6e:	2208      	movs	r2, #8
 8000a70:	f7ff ff98 	bl	80009a4 <rgb_i2c_write_reg>
 8000a74:	802e      	strh	r6, [r5, #0]
 8000a76:	bd70      	pop	{r4, r5, r6, pc}
 8000a78:	20000400 	.word	0x20000400
 8000a7c:	20000d5c 	.word	0x20000d5c

08000a80 <rgb_read>:
 8000a80:	b538      	push	{r3, r4, r5, lr}
 8000a82:	f7ff feed 	bl	8000860 <rgb_i2cStart>
 8000a86:	2072      	movs	r0, #114	; 0x72
 8000a88:	f7ff ff08 	bl	800089c <rgb_i2cWrite>
 8000a8c:	20b4      	movs	r0, #180	; 0xb4
 8000a8e:	f7ff ff05 	bl	800089c <rgb_i2cWrite>
 8000a92:	f7ff fee5 	bl	8000860 <rgb_i2cStart>
 8000a96:	2073      	movs	r0, #115	; 0x73
 8000a98:	f7ff ff00 	bl	800089c <rgb_i2cWrite>
 8000a9c:	2001      	movs	r0, #1
 8000a9e:	4946      	ldr	r1, [pc, #280]	; (8000bb8 <rgb_read+0x138>)
 8000aa0:	f7ff ff1c 	bl	80008dc <rgb_i2cRead>
 8000aa4:	2300      	movs	r3, #0
 8000aa6:	4d45      	ldr	r5, [pc, #276]	; (8000bbc <rgb_read+0x13c>)
 8000aa8:	4c43      	ldr	r4, [pc, #268]	; (8000bb8 <rgb_read+0x138>)
 8000aaa:	eb05 0243 	add.w	r2, r5, r3, lsl #1
 8000aae:	5d19      	ldrb	r1, [r3, r4]
 8000ab0:	86d1      	strh	r1, [r2, #54]	; 0x36
 8000ab2:	3301      	adds	r3, #1
 8000ab4:	2b09      	cmp	r3, #9
 8000ab6:	d1f6      	bne.n	8000aa6 <rgb_read+0x26>
 8000ab8:	2001      	movs	r0, #1
 8000aba:	4621      	mov	r1, r4
 8000abc:	f7ff ff0e 	bl	80008dc <rgb_i2cRead>
 8000ac0:	f105 0236 	add.w	r2, r5, #54	; 0x36
 8000ac4:	2300      	movs	r3, #0
 8000ac6:	8811      	ldrh	r1, [r2, #0]
 8000ac8:	5ce0      	ldrb	r0, [r4, r3]
 8000aca:	3301      	adds	r3, #1
 8000acc:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 8000ad0:	2b09      	cmp	r3, #9
 8000ad2:	f822 1b02 	strh.w	r1, [r2], #2
 8000ad6:	d1f6      	bne.n	8000ac6 <rgb_read+0x46>
 8000ad8:	2001      	movs	r0, #1
 8000ada:	4937      	ldr	r1, [pc, #220]	; (8000bb8 <rgb_read+0x138>)
 8000adc:	f7ff fefe 	bl	80008dc <rgb_i2cRead>
 8000ae0:	2300      	movs	r3, #0
 8000ae2:	5ce2      	ldrb	r2, [r4, r3]
 8000ae4:	f825 2013 	strh.w	r2, [r5, r3, lsl #1]
 8000ae8:	3301      	adds	r3, #1
 8000aea:	2b09      	cmp	r3, #9
 8000aec:	d1f9      	bne.n	8000ae2 <rgb_read+0x62>
 8000aee:	2001      	movs	r0, #1
 8000af0:	4931      	ldr	r1, [pc, #196]	; (8000bb8 <rgb_read+0x138>)
 8000af2:	f7ff fef3 	bl	80008dc <rgb_i2cRead>
 8000af6:	4a32      	ldr	r2, [pc, #200]	; (8000bc0 <rgb_read+0x140>)
 8000af8:	2300      	movs	r3, #0
 8000afa:	5ce0      	ldrb	r0, [r4, r3]
 8000afc:	8851      	ldrh	r1, [r2, #2]
 8000afe:	3301      	adds	r3, #1
 8000b00:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 8000b04:	2b09      	cmp	r3, #9
 8000b06:	f822 1f02 	strh.w	r1, [r2, #2]!
 8000b0a:	d1f6      	bne.n	8000afa <rgb_read+0x7a>
 8000b0c:	2001      	movs	r0, #1
 8000b0e:	492a      	ldr	r1, [pc, #168]	; (8000bb8 <rgb_read+0x138>)
 8000b10:	f7ff fee4 	bl	80008dc <rgb_i2cRead>
 8000b14:	2300      	movs	r3, #0
 8000b16:	eb05 0243 	add.w	r2, r5, r3, lsl #1
 8000b1a:	5ce1      	ldrb	r1, [r4, r3]
 8000b1c:	8251      	strh	r1, [r2, #18]
 8000b1e:	3301      	adds	r3, #1
 8000b20:	2b09      	cmp	r3, #9
 8000b22:	d1f8      	bne.n	8000b16 <rgb_read+0x96>
 8000b24:	2001      	movs	r0, #1
 8000b26:	4924      	ldr	r1, [pc, #144]	; (8000bb8 <rgb_read+0x138>)
 8000b28:	f7ff fed8 	bl	80008dc <rgb_i2cRead>
 8000b2c:	4a25      	ldr	r2, [pc, #148]	; (8000bc4 <rgb_read+0x144>)
 8000b2e:	2300      	movs	r3, #0
 8000b30:	8811      	ldrh	r1, [r2, #0]
 8000b32:	5ce0      	ldrb	r0, [r4, r3]
 8000b34:	3301      	adds	r3, #1
 8000b36:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 8000b3a:	2b09      	cmp	r3, #9
 8000b3c:	f822 1b02 	strh.w	r1, [r2], #2
 8000b40:	d1f6      	bne.n	8000b30 <rgb_read+0xb0>
 8000b42:	2001      	movs	r0, #1
 8000b44:	491c      	ldr	r1, [pc, #112]	; (8000bb8 <rgb_read+0x138>)
 8000b46:	f7ff fec9 	bl	80008dc <rgb_i2cRead>
 8000b4a:	2300      	movs	r3, #0
 8000b4c:	eb05 0243 	add.w	r2, r5, r3, lsl #1
 8000b50:	5ce1      	ldrb	r1, [r4, r3]
 8000b52:	8491      	strh	r1, [r2, #36]	; 0x24
 8000b54:	3301      	adds	r3, #1
 8000b56:	2b09      	cmp	r3, #9
 8000b58:	d1f8      	bne.n	8000b4c <rgb_read+0xcc>
 8000b5a:	2001      	movs	r0, #1
 8000b5c:	4916      	ldr	r1, [pc, #88]	; (8000bb8 <rgb_read+0x138>)
 8000b5e:	f7ff febd 	bl	80008dc <rgb_i2cRead>
 8000b62:	4a19      	ldr	r2, [pc, #100]	; (8000bc8 <rgb_read+0x148>)
 8000b64:	2300      	movs	r3, #0
 8000b66:	8811      	ldrh	r1, [r2, #0]
 8000b68:	5ce0      	ldrb	r0, [r4, r3]
 8000b6a:	3301      	adds	r3, #1
 8000b6c:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 8000b70:	2b09      	cmp	r3, #9
 8000b72:	f822 1b02 	strh.w	r1, [r2], #2
 8000b76:	d1f6      	bne.n	8000b66 <rgb_read+0xe6>
 8000b78:	2001      	movs	r0, #1
 8000b7a:	490f      	ldr	r1, [pc, #60]	; (8000bb8 <rgb_read+0x138>)
 8000b7c:	f7ff feae 	bl	80008dc <rgb_i2cRead>
 8000b80:	2300      	movs	r3, #0
 8000b82:	eb05 0243 	add.w	r2, r5, r3, lsl #1
 8000b86:	5ce1      	ldrb	r1, [r4, r3]
 8000b88:	f8a2 1048 	strh.w	r1, [r2, #72]	; 0x48
 8000b8c:	3301      	adds	r3, #1
 8000b8e:	2b09      	cmp	r3, #9
 8000b90:	d1f7      	bne.n	8000b82 <rgb_read+0x102>
 8000b92:	2000      	movs	r0, #0
 8000b94:	4908      	ldr	r1, [pc, #32]	; (8000bb8 <rgb_read+0x138>)
 8000b96:	f7ff fea1 	bl	80008dc <rgb_i2cRead>
 8000b9a:	4a0c      	ldr	r2, [pc, #48]	; (8000bcc <rgb_read+0x14c>)
 8000b9c:	2300      	movs	r3, #0
 8000b9e:	8811      	ldrh	r1, [r2, #0]
 8000ba0:	5ce0      	ldrb	r0, [r4, r3]
 8000ba2:	3301      	adds	r3, #1
 8000ba4:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 8000ba8:	2b09      	cmp	r3, #9
 8000baa:	f822 1b02 	strh.w	r1, [r2], #2
 8000bae:	d1f6      	bne.n	8000b9e <rgb_read+0x11e>
 8000bb0:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8000bb4:	f7ff be63 	b.w	800087e <rgb_i2cStop>
 8000bb8:	20000d5e 	.word	0x20000d5e
 8000bbc:	20000400 	.word	0x20000400
 8000bc0:	200003fe 	.word	0x200003fe
 8000bc4:	20000412 	.word	0x20000412
 8000bc8:	20000424 	.word	0x20000424
 8000bcc:	20000448 	.word	0x20000448

08000bd0 <line_sensor_read.part.0>:
 8000bd0:	4980      	ldr	r1, [pc, #512]	; (8000dd4 <line_sensor_read.part.0+0x204>)
 8000bd2:	4a81      	ldr	r2, [pc, #516]	; (8000dd8 <line_sensor_read.part.0+0x208>)
 8000bd4:	6a4b      	ldr	r3, [r1, #36]	; 0x24
 8000bd6:	f9b2 0058 	ldrsh.w	r0, [r2, #88]	; 0x58
 8000bda:	ebc3 03c3 	rsb	r3, r3, r3, lsl #3
 8000bde:	4403      	add	r3, r0
 8000be0:	2008      	movs	r0, #8
 8000be2:	fb93 f3f0 	sdiv	r3, r3, r0
 8000be6:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8000bea:	624b      	str	r3, [r1, #36]	; 0x24
 8000bec:	2300      	movs	r3, #0
 8000bee:	461c      	mov	r4, r3
 8000bf0:	461d      	mov	r5, r3
 8000bf2:	461e      	mov	r6, r3
 8000bf4:	461f      	mov	r7, r3
 8000bf6:	4610      	mov	r0, r2
 8000bf8:	f8df c1e4 	ldr.w	ip, [pc, #484]	; 8000de0 <line_sensor_read.part.0+0x210>
 8000bfc:	f8b2 a036 	ldrh.w	sl, [r2, #54]	; 0x36
 8000c00:	f853 c00c 	ldr.w	ip, [r3, ip]
 8000c04:	f8b2 9000 	ldrh.w	r9, [r2]
 8000c08:	f8b2 8012 	ldrh.w	r8, [r2, #18]
 8000c0c:	f8b2 b024 	ldrh.w	fp, [r2, #36]	; 0x24
 8000c10:	ebcc 0a0a 	rsb	sl, ip, sl
 8000c14:	f8df c1cc 	ldr.w	ip, [pc, #460]	; 8000de4 <line_sensor_read.part.0+0x214>
 8000c18:	f853 c00c 	ldr.w	ip, [r3, ip]
 8000c1c:	ebcc 0909 	rsb	r9, ip, r9
 8000c20:	f8df c1c4 	ldr.w	ip, [pc, #452]	; 8000de8 <line_sensor_read.part.0+0x218>
 8000c24:	f853 c00c 	ldr.w	ip, [r3, ip]
 8000c28:	ebcc 0808 	rsb	r8, ip, r8
 8000c2c:	f8df c1bc 	ldr.w	ip, [pc, #444]	; 8000dec <line_sensor_read.part.0+0x21c>
 8000c30:	f853 c00c 	ldr.w	ip, [r3, ip]
 8000c34:	3304      	adds	r3, #4
 8000c36:	ebcc 0c0b 	rsb	ip, ip, fp
 8000c3a:	fa1f fa8a 	uxth.w	sl, sl
 8000c3e:	fa1f f989 	uxth.w	r9, r9
 8000c42:	fa1f f888 	uxth.w	r8, r8
 8000c46:	fa1f fc8c 	uxth.w	ip, ip
 8000c4a:	2b20      	cmp	r3, #32
 8000c4c:	f8a2 a036 	strh.w	sl, [r2, #54]	; 0x36
 8000c50:	f8a2 9000 	strh.w	r9, [r2]
 8000c54:	f8a2 8012 	strh.w	r8, [r2, #18]
 8000c58:	f8a2 c024 	strh.w	ip, [r2, #36]	; 0x24
 8000c5c:	fa07 f78a 	sxtah	r7, r7, sl
 8000c60:	fa06 f689 	sxtah	r6, r6, r9
 8000c64:	fa05 f588 	sxtah	r5, r5, r8
 8000c68:	fa04 f48c 	sxtah	r4, r4, ip
 8000c6c:	f102 0202 	add.w	r2, r2, #2
 8000c70:	d1c2      	bne.n	8000bf8 <line_sensor_read.part.0+0x28>
 8000c72:	2308      	movs	r3, #8
 8000c74:	fb97 f7f3 	sdiv	r7, r7, r3
 8000c78:	fb96 f6f3 	sdiv	r6, r6, r3
 8000c7c:	fb95 f5f3 	sdiv	r5, r5, r3
 8000c80:	fb94 f4f3 	sdiv	r4, r4, r3
 8000c84:	4b54      	ldr	r3, [pc, #336]	; (8000dd8 <line_sensor_read.part.0+0x208>)
 8000c86:	2200      	movs	r2, #0
 8000c88:	f8b3 c036 	ldrh.w	ip, [r3, #54]	; 0x36
 8000c8c:	ebcc 0c07 	rsb	ip, ip, r7
 8000c90:	f8a3 c036 	strh.w	ip, [r3, #54]	; 0x36
 8000c94:	f832 c000 	ldrh.w	ip, [r2, r0]
 8000c98:	ebc6 0c0c 	rsb	ip, r6, ip
 8000c9c:	f822 c000 	strh.w	ip, [r2, r0]
 8000ca0:	f8b3 c012 	ldrh.w	ip, [r3, #18]
 8000ca4:	ebc5 0c0c 	rsb	ip, r5, ip
 8000ca8:	f8a3 c012 	strh.w	ip, [r3, #18]
 8000cac:	f8b3 c024 	ldrh.w	ip, [r3, #36]	; 0x24
 8000cb0:	3202      	adds	r2, #2
 8000cb2:	ebc4 0c0c 	rsb	ip, r4, ip
 8000cb6:	2a10      	cmp	r2, #16
 8000cb8:	f8a3 c024 	strh.w	ip, [r3, #36]	; 0x24
 8000cbc:	f103 0302 	add.w	r3, r3, #2
 8000cc0:	d1e2      	bne.n	8000c88 <line_sensor_read.part.0+0xb8>
 8000cc2:	2300      	movs	r3, #0
 8000cc4:	181d      	adds	r5, r3, r0
 8000cc6:	18cc      	adds	r4, r1, r3
 8000cc8:	3302      	adds	r3, #2
 8000cca:	8eed      	ldrh	r5, [r5, #54]	; 0x36
 8000ccc:	4a41      	ldr	r2, [pc, #260]	; (8000dd4 <line_sensor_read.part.0+0x204>)
 8000cce:	8165      	strh	r5, [r4, #10]
 8000cd0:	2b10      	cmp	r3, #16
 8000cd2:	d1f7      	bne.n	8000cc4 <line_sensor_read.part.0+0xf4>
 8000cd4:	f8b2 c010 	ldrh.w	ip, [r2, #16]
 8000cd8:	8a56      	ldrh	r6, [r2, #18]
 8000cda:	fa0f f58c 	sxth.w	r5, ip
 8000cde:	b230      	sxth	r0, r6
 8000ce0:	182a      	adds	r2, r5, r0
 8000ce2:	d00c      	beq.n	8000cfe <line_sensor_read.part.0+0x12e>
 8000ce4:	4c3d      	ldr	r4, [pc, #244]	; (8000ddc <line_sensor_read.part.0+0x20c>)
 8000ce6:	8923      	ldrh	r3, [r4, #8]
 8000ce8:	88e7      	ldrh	r7, [r4, #6]
 8000cea:	fb16 f303 	smulbb	r3, r6, r3
 8000cee:	fb1c 3307 	smlabb	r3, ip, r7, r3
 8000cf2:	2402      	movs	r4, #2
 8000cf4:	fb93 f3f2 	sdiv	r3, r3, r2
 8000cf8:	fb92 f2f4 	sdiv	r2, r2, r4
 8000cfc:	e000      	b.n	8000d00 <line_sensor_read.part.0+0x130>
 8000cfe:	4613      	mov	r3, r2
 8000d00:	8a8f      	ldrh	r7, [r1, #20]
 8000d02:	b23c      	sxth	r4, r7
 8000d04:	1820      	adds	r0, r4, r0
 8000d06:	d00b      	beq.n	8000d20 <line_sensor_read.part.0+0x150>
 8000d08:	2c96      	cmp	r4, #150	; 0x96
 8000d0a:	dd09      	ble.n	8000d20 <line_sensor_read.part.0+0x150>
 8000d0c:	4a33      	ldr	r2, [pc, #204]	; (8000ddc <line_sensor_read.part.0+0x20c>)
 8000d0e:	8953      	ldrh	r3, [r2, #10]
 8000d10:	8912      	ldrh	r2, [r2, #8]
 8000d12:	fb16 f602 	smulbb	r6, r6, r2
 8000d16:	fb17 6303 	smlabb	r3, r7, r3, r6
 8000d1a:	fb93 f3f0 	sdiv	r3, r3, r0
 8000d1e:	4622      	mov	r2, r4
 8000d20:	89ce      	ldrh	r6, [r1, #14]
 8000d22:	b230      	sxth	r0, r6
 8000d24:	1945      	adds	r5, r0, r5
 8000d26:	d00b      	beq.n	8000d40 <line_sensor_read.part.0+0x170>
 8000d28:	2896      	cmp	r0, #150	; 0x96
 8000d2a:	dd09      	ble.n	8000d40 <line_sensor_read.part.0+0x170>
 8000d2c:	4a2b      	ldr	r2, [pc, #172]	; (8000ddc <line_sensor_read.part.0+0x20c>)
 8000d2e:	8893      	ldrh	r3, [r2, #4]
 8000d30:	88d2      	ldrh	r2, [r2, #6]
 8000d32:	fb1c fc02 	smulbb	ip, ip, r2
 8000d36:	fb16 c303 	smlabb	r3, r6, r3, ip
 8000d3a:	fb93 f3f5 	sdiv	r3, r3, r5
 8000d3e:	4602      	mov	r2, r0
 8000d40:	f8b1 c016 	ldrh.w	ip, [r1, #22]
 8000d44:	fa0f f58c 	sxth.w	r5, ip
 8000d48:	192c      	adds	r4, r5, r4
 8000d4a:	d00b      	beq.n	8000d64 <line_sensor_read.part.0+0x194>
 8000d4c:	2d96      	cmp	r5, #150	; 0x96
 8000d4e:	dd09      	ble.n	8000d64 <line_sensor_read.part.0+0x194>
 8000d50:	4a22      	ldr	r2, [pc, #136]	; (8000ddc <line_sensor_read.part.0+0x20c>)
 8000d52:	8993      	ldrh	r3, [r2, #12]
 8000d54:	8952      	ldrh	r2, [r2, #10]
 8000d56:	fb17 f702 	smulbb	r7, r7, r2
 8000d5a:	fb1c 7303 	smlabb	r3, ip, r3, r7
 8000d5e:	fb93 f3f4 	sdiv	r3, r3, r4
 8000d62:	462a      	mov	r2, r5
 8000d64:	898d      	ldrh	r5, [r1, #12]
 8000d66:	b22c      	sxth	r4, r5
 8000d68:	1820      	adds	r0, r4, r0
 8000d6a:	d00b      	beq.n	8000d84 <line_sensor_read.part.0+0x1b4>
 8000d6c:	2c96      	cmp	r4, #150	; 0x96
 8000d6e:	dd09      	ble.n	8000d84 <line_sensor_read.part.0+0x1b4>
 8000d70:	4a1a      	ldr	r2, [pc, #104]	; (8000ddc <line_sensor_read.part.0+0x20c>)
 8000d72:	8853      	ldrh	r3, [r2, #2]
 8000d74:	8892      	ldrh	r2, [r2, #4]
 8000d76:	fb16 f602 	smulbb	r6, r6, r2
 8000d7a:	fb15 6303 	smlabb	r3, r5, r3, r6
 8000d7e:	fb93 f3f0 	sdiv	r3, r3, r0
 8000d82:	4622      	mov	r2, r4
 8000d84:	f9b1 0018 	ldrsh.w	r0, [r1, #24]
 8000d88:	2896      	cmp	r0, #150	; 0x96
 8000d8a:	dd03      	ble.n	8000d94 <line_sensor_read.part.0+0x1c4>
 8000d8c:	4b13      	ldr	r3, [pc, #76]	; (8000ddc <line_sensor_read.part.0+0x20c>)
 8000d8e:	f9b3 300e 	ldrsh.w	r3, [r3, #14]
 8000d92:	4602      	mov	r2, r0
 8000d94:	f9b1 000a 	ldrsh.w	r0, [r1, #10]
 8000d98:	2896      	cmp	r0, #150	; 0x96
 8000d9a:	dd03      	ble.n	8000da4 <line_sensor_read.part.0+0x1d4>
 8000d9c:	4b0f      	ldr	r3, [pc, #60]	; (8000ddc <line_sensor_read.part.0+0x20c>)
 8000d9e:	f9b3 3000 	ldrsh.w	r3, [r3]
 8000da2:	e001      	b.n	8000da8 <line_sensor_read.part.0+0x1d8>
 8000da4:	2a96      	cmp	r2, #150	; 0x96
 8000da6:	dd0f      	ble.n	8000dc8 <line_sensor_read.part.0+0x1f8>
 8000da8:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
 8000dac:	dc05      	bgt.n	8000dba <line_sensor_read.part.0+0x1ea>
 8000dae:	f06f 02ff 	mvn.w	r2, #255	; 0xff
 8000db2:	4293      	cmp	r3, r2
 8000db4:	bfb8      	it	lt
 8000db6:	4613      	movlt	r3, r2
 8000db8:	e001      	b.n	8000dbe <line_sensor_read.part.0+0x1ee>
 8000dba:	f44f 7380 	mov.w	r3, #256	; 0x100
 8000dbe:	620b      	str	r3, [r1, #32]
 8000dc0:	2308      	movs	r3, #8
 8000dc2:	770b      	strb	r3, [r1, #28]
 8000dc4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8000dc8:	4b02      	ldr	r3, [pc, #8]	; (8000dd4 <line_sensor_read.part.0+0x204>)
 8000dca:	2200      	movs	r2, #0
 8000dcc:	771a      	strb	r2, [r3, #28]
 8000dce:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8000dd2:	bf00      	nop
 8000dd4:	2000045c 	.word	0x2000045c
 8000dd8:	20000400 	.word	0x20000400
 8000ddc:	20000110 	.word	0x20000110
 8000de0:	20000164 	.word	0x20000164
 8000de4:	200001c4 	.word	0x200001c4
 8000de8:	200001a4 	.word	0x200001a4
 8000dec:	20000184 	.word	0x20000184

08000df0 <line_sensor_init>:
 8000df0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8000df4:	2064      	movs	r0, #100	; 0x64
 8000df6:	f001 fd33 	bl	8002860 <timer_delay_ms>
 8000dfa:	2400      	movs	r4, #0
 8000dfc:	f7ff fe00 	bl	8000a00 <rgb_init>
 8000e00:	f7ff fe3e 	bl	8000a80 <rgb_read>
 8000e04:	2072      	movs	r0, #114	; 0x72
 8000e06:	2192      	movs	r1, #146	; 0x92
 8000e08:	4a2e      	ldr	r2, [pc, #184]	; (8000ec4 <line_sensor_init+0xd4>)
 8000e0a:	f7ff fdde 	bl	80009ca <rgb_i2c_read_reg>
 8000e0e:	4623      	mov	r3, r4
 8000e10:	4a2d      	ldr	r2, [pc, #180]	; (8000ec8 <line_sensor_init+0xd8>)
 8000e12:	1899      	adds	r1, r3, r2
 8000e14:	4616      	mov	r6, r2
 8000e16:	7849      	ldrb	r1, [r1, #1]
 8000e18:	2969      	cmp	r1, #105	; 0x69
 8000e1a:	d002      	beq.n	8000e22 <line_sensor_init+0x32>
 8000e1c:	2201      	movs	r2, #1
 8000e1e:	409a      	lsls	r2, r3
 8000e20:	4314      	orrs	r4, r2
 8000e22:	3301      	adds	r3, #1
 8000e24:	2b09      	cmp	r3, #9
 8000e26:	d1f3      	bne.n	8000e10 <line_sensor_init+0x20>
 8000e28:	2100      	movs	r1, #0
 8000e2a:	1875      	adds	r5, r6, r1
 8000e2c:	3102      	adds	r1, #2
 8000e2e:	2200      	movs	r2, #0
 8000e30:	2910      	cmp	r1, #16
 8000e32:	4b25      	ldr	r3, [pc, #148]	; (8000ec8 <line_sensor_init+0xd8>)
 8000e34:	816a      	strh	r2, [r5, #10]
 8000e36:	d1f8      	bne.n	8000e2a <line_sensor_init+0x3a>
 8000e38:	701a      	strb	r2, [r3, #0]
 8000e3a:	771a      	strb	r2, [r3, #28]
 8000e3c:	f883 2028 	strb.w	r2, [r3, #40]	; 0x28
 8000e40:	621a      	str	r2, [r3, #32]
 8000e42:	625a      	str	r2, [r3, #36]	; 0x24
 8000e44:	f7ff fe1c 	bl	8000a80 <rgb_read>
 8000e48:	2520      	movs	r5, #32
 8000e4a:	f7ff fe19 	bl	8000a80 <rgb_read>
 8000e4e:	491f      	ldr	r1, [pc, #124]	; (8000ecc <line_sensor_init+0xdc>)
 8000e50:	2200      	movs	r2, #0
 8000e52:	f8df c088 	ldr.w	ip, [pc, #136]	; 8000edc <line_sensor_init+0xec>
 8000e56:	f9b1 0036 	ldrsh.w	r0, [r1, #54]	; 0x36
 8000e5a:	f852 300c 	ldr.w	r3, [r2, ip]
 8000e5e:	4e1c      	ldr	r6, [pc, #112]	; (8000ed0 <line_sensor_init+0xe0>)
 8000e60:	f9b1 7012 	ldrsh.w	r7, [r1, #18]
 8000e64:	f9b1 8024 	ldrsh.w	r8, [r1, #36]	; 0x24
 8000e68:	4403      	add	r3, r0
 8000e6a:	f842 300c 	str.w	r3, [r2, ip]
 8000e6e:	f9b1 0000 	ldrsh.w	r0, [r1]
 8000e72:	5993      	ldr	r3, [r2, r6]
 8000e74:	4403      	add	r3, r0
 8000e76:	4817      	ldr	r0, [pc, #92]	; (8000ed4 <line_sensor_init+0xe4>)
 8000e78:	5193      	str	r3, [r2, r6]
 8000e7a:	5813      	ldr	r3, [r2, r0]
 8000e7c:	443b      	add	r3, r7
 8000e7e:	5013      	str	r3, [r2, r0]
 8000e80:	4b15      	ldr	r3, [pc, #84]	; (8000ed8 <line_sensor_init+0xe8>)
 8000e82:	58d7      	ldr	r7, [r2, r3]
 8000e84:	4447      	add	r7, r8
 8000e86:	50d7      	str	r7, [r2, r3]
 8000e88:	3204      	adds	r2, #4
 8000e8a:	2a20      	cmp	r2, #32
 8000e8c:	f101 0102 	add.w	r1, r1, #2
 8000e90:	461f      	mov	r7, r3
 8000e92:	d1de      	bne.n	8000e52 <line_sensor_init+0x62>
 8000e94:	3d01      	subs	r5, #1
 8000e96:	d1d8      	bne.n	8000e4a <line_sensor_init+0x5a>
 8000e98:	462b      	mov	r3, r5
 8000e9a:	f85c 2003 	ldr.w	r2, [ip, r3]
 8000e9e:	0952      	lsrs	r2, r2, #5
 8000ea0:	f84c 2003 	str.w	r2, [ip, r3]
 8000ea4:	58f2      	ldr	r2, [r6, r3]
 8000ea6:	0952      	lsrs	r2, r2, #5
 8000ea8:	50f2      	str	r2, [r6, r3]
 8000eaa:	58c2      	ldr	r2, [r0, r3]
 8000eac:	0952      	lsrs	r2, r2, #5
 8000eae:	50c2      	str	r2, [r0, r3]
 8000eb0:	58fa      	ldr	r2, [r7, r3]
 8000eb2:	0952      	lsrs	r2, r2, #5
 8000eb4:	50fa      	str	r2, [r7, r3]
 8000eb6:	3304      	adds	r3, #4
 8000eb8:	2b20      	cmp	r3, #32
 8000eba:	d1ee      	bne.n	8000e9a <line_sensor_init+0xaa>
 8000ebc:	4620      	mov	r0, r4
 8000ebe:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8000ec2:	bf00      	nop
 8000ec4:	2000045d 	.word	0x2000045d
 8000ec8:	2000045c 	.word	0x2000045c
 8000ecc:	20000400 	.word	0x20000400
 8000ed0:	200001c4 	.word	0x200001c4
 8000ed4:	200001a4 	.word	0x200001a4
 8000ed8:	20000184 	.word	0x20000184
 8000edc:	20000164 	.word	0x20000164

08000ee0 <line_sensor_read>:
 8000ee0:	b510      	push	{r4, lr}
 8000ee2:	4604      	mov	r4, r0
 8000ee4:	f7ff fdcc 	bl	8000a80 <rgb_read>
 8000ee8:	b91c      	cbnz	r4, 8000ef2 <line_sensor_read+0x12>
 8000eea:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000eee:	f7ff be6f 	b.w	8000bd0 <line_sensor_read.part.0>
 8000ef2:	bd10      	pop	{r4, pc}

08000ef4 <lsm9ds0_read>:
 8000ef4:	b538      	push	{r3, r4, r5, lr}
 8000ef6:	2128      	movs	r1, #40	; 0x28
 8000ef8:	20d4      	movs	r0, #212	; 0xd4
 8000efa:	f000 fd60 	bl	80019be <i2c_read_reg>
 8000efe:	2129      	movs	r1, #41	; 0x29
 8000f00:	4605      	mov	r5, r0
 8000f02:	20d4      	movs	r0, #212	; 0xd4
 8000f04:	f000 fd5b 	bl	80019be <i2c_read_reg>
 8000f08:	4c38      	ldr	r4, [pc, #224]	; (8000fec <lsm9ds0_read+0xf8>)
 8000f0a:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000f0e:	81a0      	strh	r0, [r4, #12]
 8000f10:	212a      	movs	r1, #42	; 0x2a
 8000f12:	20d4      	movs	r0, #212	; 0xd4
 8000f14:	f000 fd53 	bl	80019be <i2c_read_reg>
 8000f18:	212b      	movs	r1, #43	; 0x2b
 8000f1a:	4605      	mov	r5, r0
 8000f1c:	20d4      	movs	r0, #212	; 0xd4
 8000f1e:	f000 fd4e 	bl	80019be <i2c_read_reg>
 8000f22:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000f26:	81e0      	strh	r0, [r4, #14]
 8000f28:	212c      	movs	r1, #44	; 0x2c
 8000f2a:	20d4      	movs	r0, #212	; 0xd4
 8000f2c:	f000 fd47 	bl	80019be <i2c_read_reg>
 8000f30:	212d      	movs	r1, #45	; 0x2d
 8000f32:	4605      	mov	r5, r0
 8000f34:	20d4      	movs	r0, #212	; 0xd4
 8000f36:	f000 fd42 	bl	80019be <i2c_read_reg>
 8000f3a:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000f3e:	8220      	strh	r0, [r4, #16]
 8000f40:	2108      	movs	r1, #8
 8000f42:	203c      	movs	r0, #60	; 0x3c
 8000f44:	f000 fd3b 	bl	80019be <i2c_read_reg>
 8000f48:	2109      	movs	r1, #9
 8000f4a:	4605      	mov	r5, r0
 8000f4c:	203c      	movs	r0, #60	; 0x3c
 8000f4e:	f000 fd36 	bl	80019be <i2c_read_reg>
 8000f52:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000f56:	80e0      	strh	r0, [r4, #6]
 8000f58:	210a      	movs	r1, #10
 8000f5a:	203c      	movs	r0, #60	; 0x3c
 8000f5c:	f000 fd2f 	bl	80019be <i2c_read_reg>
 8000f60:	210b      	movs	r1, #11
 8000f62:	4605      	mov	r5, r0
 8000f64:	203c      	movs	r0, #60	; 0x3c
 8000f66:	f000 fd2a 	bl	80019be <i2c_read_reg>
 8000f6a:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000f6e:	8120      	strh	r0, [r4, #8]
 8000f70:	210c      	movs	r1, #12
 8000f72:	203c      	movs	r0, #60	; 0x3c
 8000f74:	f000 fd23 	bl	80019be <i2c_read_reg>
 8000f78:	210d      	movs	r1, #13
 8000f7a:	4605      	mov	r5, r0
 8000f7c:	203c      	movs	r0, #60	; 0x3c
 8000f7e:	f000 fd1e 	bl	80019be <i2c_read_reg>
 8000f82:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000f86:	8160      	strh	r0, [r4, #10]
 8000f88:	2128      	movs	r1, #40	; 0x28
 8000f8a:	203c      	movs	r0, #60	; 0x3c
 8000f8c:	f000 fd17 	bl	80019be <i2c_read_reg>
 8000f90:	2129      	movs	r1, #41	; 0x29
 8000f92:	4605      	mov	r5, r0
 8000f94:	203c      	movs	r0, #60	; 0x3c
 8000f96:	f000 fd12 	bl	80019be <i2c_read_reg>
 8000f9a:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000f9e:	8020      	strh	r0, [r4, #0]
 8000fa0:	212a      	movs	r1, #42	; 0x2a
 8000fa2:	203c      	movs	r0, #60	; 0x3c
 8000fa4:	f000 fd0b 	bl	80019be <i2c_read_reg>
 8000fa8:	212b      	movs	r1, #43	; 0x2b
 8000faa:	4605      	mov	r5, r0
 8000fac:	203c      	movs	r0, #60	; 0x3c
 8000fae:	f000 fd06 	bl	80019be <i2c_read_reg>
 8000fb2:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000fb6:	8060      	strh	r0, [r4, #2]
 8000fb8:	212c      	movs	r1, #44	; 0x2c
 8000fba:	203c      	movs	r0, #60	; 0x3c
 8000fbc:	f000 fcff 	bl	80019be <i2c_read_reg>
 8000fc0:	212d      	movs	r1, #45	; 0x2d
 8000fc2:	4605      	mov	r5, r0
 8000fc4:	203c      	movs	r0, #60	; 0x3c
 8000fc6:	f000 fcfa 	bl	80019be <i2c_read_reg>
 8000fca:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000fce:	80a0      	strh	r0, [r4, #4]
 8000fd0:	2105      	movs	r1, #5
 8000fd2:	203c      	movs	r0, #60	; 0x3c
 8000fd4:	f000 fcf3 	bl	80019be <i2c_read_reg>
 8000fd8:	2106      	movs	r1, #6
 8000fda:	4605      	mov	r5, r0
 8000fdc:	203c      	movs	r0, #60	; 0x3c
 8000fde:	f000 fcee 	bl	80019be <i2c_read_reg>
 8000fe2:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000fe6:	8320      	strh	r0, [r4, #24]
 8000fe8:	bd38      	pop	{r3, r4, r5, pc}
 8000fea:	bf00      	nop
 8000fec:	200001e4 	.word	0x200001e4

08000ff0 <lsm9ds0_init>:
 8000ff0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8000ff4:	4d34      	ldr	r5, [pc, #208]	; (80010c8 <lsm9ds0_init+0xd8>)
 8000ff6:	2400      	movs	r4, #0
 8000ff8:	20d4      	movs	r0, #212	; 0xd4
 8000ffa:	210f      	movs	r1, #15
 8000ffc:	802c      	strh	r4, [r5, #0]
 8000ffe:	806c      	strh	r4, [r5, #2]
 8001000:	80ac      	strh	r4, [r5, #4]
 8001002:	80ec      	strh	r4, [r5, #6]
 8001004:	812c      	strh	r4, [r5, #8]
 8001006:	816c      	strh	r4, [r5, #10]
 8001008:	81ac      	strh	r4, [r5, #12]
 800100a:	81ec      	strh	r4, [r5, #14]
 800100c:	822c      	strh	r4, [r5, #16]
 800100e:	826c      	strh	r4, [r5, #18]
 8001010:	82ac      	strh	r4, [r5, #20]
 8001012:	82ec      	strh	r4, [r5, #22]
 8001014:	832c      	strh	r4, [r5, #24]
 8001016:	f000 fcd2 	bl	80019be <i2c_read_reg>
 800101a:	28d4      	cmp	r0, #212	; 0xd4
 800101c:	4606      	mov	r6, r0
 800101e:	d14e      	bne.n	80010be <lsm9ds0_init+0xce>
 8001020:	203c      	movs	r0, #60	; 0x3c
 8001022:	210f      	movs	r1, #15
 8001024:	f000 fccb 	bl	80019be <i2c_read_reg>
 8001028:	2849      	cmp	r0, #73	; 0x49
 800102a:	bf18      	it	ne
 800102c:	2602      	movne	r6, #2
 800102e:	d147      	bne.n	80010c0 <lsm9ds0_init+0xd0>
 8001030:	4630      	mov	r0, r6
 8001032:	2120      	movs	r1, #32
 8001034:	22ff      	movs	r2, #255	; 0xff
 8001036:	f000 fcaf 	bl	8001998 <i2c_write_reg>
 800103a:	4630      	mov	r0, r6
 800103c:	2123      	movs	r1, #35	; 0x23
 800103e:	2218      	movs	r2, #24
 8001040:	f000 fcaa 	bl	8001998 <i2c_write_reg>
 8001044:	203c      	movs	r0, #60	; 0x3c
 8001046:	211f      	movs	r1, #31
 8001048:	4622      	mov	r2, r4
 800104a:	f000 fca5 	bl	8001998 <i2c_write_reg>
 800104e:	203c      	movs	r0, #60	; 0x3c
 8001050:	2120      	movs	r1, #32
 8001052:	2267      	movs	r2, #103	; 0x67
 8001054:	f000 fca0 	bl	8001998 <i2c_write_reg>
 8001058:	203c      	movs	r0, #60	; 0x3c
 800105a:	2121      	movs	r1, #33	; 0x21
 800105c:	4622      	mov	r2, r4
 800105e:	f000 fc9b 	bl	8001998 <i2c_write_reg>
 8001062:	203c      	movs	r0, #60	; 0x3c
 8001064:	2124      	movs	r1, #36	; 0x24
 8001066:	22f4      	movs	r2, #244	; 0xf4
 8001068:	f000 fc96 	bl	8001998 <i2c_write_reg>
 800106c:	203c      	movs	r0, #60	; 0x3c
 800106e:	2125      	movs	r1, #37	; 0x25
 8001070:	4622      	mov	r2, r4
 8001072:	f000 fc91 	bl	8001998 <i2c_write_reg>
 8001076:	203c      	movs	r0, #60	; 0x3c
 8001078:	2126      	movs	r1, #38	; 0x26
 800107a:	2280      	movs	r2, #128	; 0x80
 800107c:	f000 fc8c 	bl	8001998 <i2c_write_reg>
 8001080:	f7ff ff38 	bl	8000ef4 <lsm9ds0_read>
 8001084:	2664      	movs	r6, #100	; 0x64
 8001086:	4627      	mov	r7, r4
 8001088:	46a0      	mov	r8, r4
 800108a:	f7ff ff33 	bl	8000ef4 <lsm9ds0_read>
 800108e:	f9b5 200c 	ldrsh.w	r2, [r5, #12]
 8001092:	4b0d      	ldr	r3, [pc, #52]	; (80010c8 <lsm9ds0_init+0xd8>)
 8001094:	4490      	add	r8, r2
 8001096:	f9b5 200e 	ldrsh.w	r2, [r5, #14]
 800109a:	4417      	add	r7, r2
 800109c:	f9b5 2010 	ldrsh.w	r2, [r5, #16]
 80010a0:	3e01      	subs	r6, #1
 80010a2:	4414      	add	r4, r2
 80010a4:	d1f1      	bne.n	800108a <lsm9ds0_init+0x9a>
 80010a6:	2264      	movs	r2, #100	; 0x64
 80010a8:	fb98 f8f2 	sdiv	r8, r8, r2
 80010ac:	fb97 f7f2 	sdiv	r7, r7, r2
 80010b0:	fb94 f4f2 	sdiv	r4, r4, r2
 80010b4:	f8a3 8012 	strh.w	r8, [r3, #18]
 80010b8:	829f      	strh	r7, [r3, #20]
 80010ba:	82dc      	strh	r4, [r3, #22]
 80010bc:	e000      	b.n	80010c0 <lsm9ds0_init+0xd0>
 80010be:	2601      	movs	r6, #1
 80010c0:	4630      	mov	r0, r6
 80010c2:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80010c6:	bf00      	nop
 80010c8:	200001e4 	.word	0x200001e4

080010cc <TIM2_IRQHandler>:
 80010cc:	4b21      	ldr	r3, [pc, #132]	; (8001154 <TIM2_IRQHandler+0x88>)
 80010ce:	4a22      	ldr	r2, [pc, #136]	; (8001158 <TIM2_IRQHandler+0x8c>)
 80010d0:	6819      	ldr	r1, [r3, #0]
 80010d2:	2901      	cmp	r1, #1
 80010d4:	b510      	push	{r4, lr}
 80010d6:	d011      	beq.n	80010fc <TIM2_IRQHandler+0x30>
 80010d8:	d306      	bcc.n	80010e8 <TIM2_IRQHandler+0x1c>
 80010da:	2902      	cmp	r1, #2
 80010dc:	d113      	bne.n	8001106 <TIM2_IRQHandler+0x3a>
 80010de:	f44f 6180 	mov.w	r1, #1024	; 0x400
 80010e2:	8511      	strh	r1, [r2, #40]	; 0x28
 80010e4:	2204      	movs	r2, #4
 80010e6:	e023      	b.n	8001130 <TIM2_IRQHandler+0x64>
 80010e8:	f44f 7180 	mov.w	r1, #256	; 0x100
 80010ec:	8511      	strh	r1, [r2, #40]	; 0x28
 80010ee:	f44f 6180 	mov.w	r1, #1024	; 0x400
 80010f2:	6191      	str	r1, [r2, #24]
 80010f4:	2201      	movs	r2, #1
 80010f6:	601a      	str	r2, [r3, #0]
 80010f8:	609a      	str	r2, [r3, #8]
 80010fa:	e023      	b.n	8001144 <TIM2_IRQHandler+0x78>
 80010fc:	f44f 7180 	mov.w	r1, #256	; 0x100
 8001100:	6191      	str	r1, [r2, #24]
 8001102:	2202      	movs	r2, #2
 8001104:	e014      	b.n	8001130 <TIM2_IRQHandler+0x64>
 8001106:	f011 0f01 	tst.w	r1, #1
 800110a:	4814      	ldr	r0, [pc, #80]	; (800115c <TIM2_IRQHandler+0x90>)
 800110c:	f101 0401 	add.w	r4, r1, #1
 8001110:	d010      	beq.n	8001134 <TIM2_IRQHandler+0x68>
 8001112:	3904      	subs	r1, #4
 8001114:	f021 0101 	bic.w	r1, r1, #1
 8001118:	4419      	add	r1, r3
 800111a:	6c00      	ldr	r0, [r0, #64]	; 0x40
 800111c:	8288      	strh	r0, [r1, #20]
 800111e:	f5b4 7f82 	cmp.w	r4, #260	; 0x104
 8001122:	f44f 7180 	mov.w	r1, #256	; 0x100
 8001126:	8511      	strh	r1, [r2, #40]	; 0x28
 8001128:	d201      	bcs.n	800112e <TIM2_IRQHandler+0x62>
 800112a:	601c      	str	r4, [r3, #0]
 800112c:	e00a      	b.n	8001144 <TIM2_IRQHandler+0x78>
 800112e:	2200      	movs	r2, #0
 8001130:	601a      	str	r2, [r3, #0]
 8001132:	e007      	b.n	8001144 <TIM2_IRQHandler+0x78>
 8001134:	f44f 7180 	mov.w	r1, #256	; 0x100
 8001138:	6191      	str	r1, [r2, #24]
 800113a:	601c      	str	r4, [r3, #0]
 800113c:	6883      	ldr	r3, [r0, #8]
 800113e:	f043 0304 	orr.w	r3, r3, #4
 8001142:	6083      	str	r3, [r0, #8]
 8001144:	f04f 4080 	mov.w	r0, #1073741824	; 0x40000000
 8001148:	2101      	movs	r1, #1
 800114a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800114e:	f001 bafe 	b.w	800274e <TIM_ClearITPendingBit>
 8001152:	bf00      	nop
 8001154:	20000488 	.word	0x20000488
 8001158:	48000400 	.word	0x48000400
 800115c:	50000500 	.word	0x50000500

08001160 <pid_init>:
 8001160:	ee06 2a10 	vmov	s12, r2
 8001164:	ee05 3a90 	vmov	s11, r3
 8001168:	eddd 7a00 	vldr	s15, [sp]
 800116c:	ed9d 7a01 	vldr	s14, [sp, #4]
 8001170:	6241      	str	r1, [r0, #36]	; 0x24
 8001172:	ee76 6a25 	vadd.f32	s13, s12, s11
 8001176:	ee77 5aa7 	vadd.f32	s11, s15, s15
 800117a:	ee76 6aa7 	vadd.f32	s13, s13, s15
 800117e:	eeb1 6a46 	vneg.f32	s12, s12
 8001182:	ee76 6a87 	vadd.f32	s13, s13, s14
 8001186:	ee36 6a65 	vsub.f32	s12, s12, s11
 800118a:	edc0 6a04 	vstr	s13, [r0, #16]
 800118e:	eddf 6a0b 	vldr	s13, [pc, #44]	; 80011bc <pid_init+0x5c>
 8001192:	ee67 6a26 	vmul.f32	s13, s14, s13
 8001196:	2200      	movs	r2, #0
 8001198:	ee36 6a66 	vsub.f32	s12, s12, s13
 800119c:	ee77 7aa6 	vadd.f32	s15, s15, s13
 80011a0:	eeb1 7a47 	vneg.f32	s14, s14
 80011a4:	6002      	str	r2, [r0, #0]
 80011a6:	6042      	str	r2, [r0, #4]
 80011a8:	6082      	str	r2, [r0, #8]
 80011aa:	60c2      	str	r2, [r0, #12]
 80011ac:	ed80 6a05 	vstr	s12, [r0, #20]
 80011b0:	edc0 7a06 	vstr	s15, [r0, #24]
 80011b4:	ed80 7a07 	vstr	s14, [r0, #28]
 80011b8:	6202      	str	r2, [r0, #32]
 80011ba:	4770      	bx	lr
 80011bc:	40400000 	.word	0x40400000

080011c0 <pid_process>:
 80011c0:	edd0 7a08 	vldr	s15, [r0, #32]
 80011c4:	ed90 5a04 	vldr	s10, [r0, #16]
 80011c8:	ed90 6a00 	vldr	s12, [r0]
 80011cc:	edd0 6a01 	vldr	s13, [r0, #4]
 80011d0:	ed80 6a01 	vstr	s12, [r0, #4]
 80011d4:	ee05 1a90 	vmov	s11, r1
 80011d8:	ee45 7a85 	vmla.f32	s15, s11, s10
 80011dc:	6001      	str	r1, [r0, #0]
 80011de:	edd0 5a05 	vldr	s11, [r0, #20]
 80011e2:	ed90 7a02 	vldr	s14, [r0, #8]
 80011e6:	edc0 6a02 	vstr	s13, [r0, #8]
 80011ea:	ee46 7a25 	vmla.f32	s15, s12, s11
 80011ee:	ed90 6a06 	vldr	s12, [r0, #24]
 80011f2:	ed80 7a03 	vstr	s14, [r0, #12]
 80011f6:	ee46 7a86 	vmla.f32	s15, s13, s12
 80011fa:	edd0 6a07 	vldr	s13, [r0, #28]
 80011fe:	ee47 7a26 	vmla.f32	s15, s14, s13
 8001202:	ed90 7a09 	vldr	s14, [r0, #36]	; 0x24
 8001206:	edc0 7a08 	vstr	s15, [r0, #32]
 800120a:	eef4 7ac7 	vcmpe.f32	s15, s14
 800120e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001212:	bfc8      	it	gt
 8001214:	ed80 7a08 	vstrgt	s14, [r0, #32]
 8001218:	edd0 7a08 	vldr	s15, [r0, #32]
 800121c:	eeb1 7a47 	vneg.f32	s14, s14
 8001220:	eef4 7ac7 	vcmpe.f32	s15, s14
 8001224:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001228:	bf48      	it	mi
 800122a:	ed80 7a08 	vstrmi	s14, [r0, #32]
 800122e:	6a00      	ldr	r0, [r0, #32]
 8001230:	4770      	bx	lr

08001232 <m_abs>:
 8001232:	ee07 0a90 	vmov	s15, r0
 8001236:	eef5 7ac0 	vcmpe.f32	s15, #0.0
 800123a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800123e:	bf48      	it	mi
 8001240:	eef1 7a67 	vnegmi.f32	s15, s15
 8001244:	ee17 0a90 	vmov	r0, s15
 8001248:	4770      	bx	lr

0800124a <m_saturate>:
 800124a:	ee07 0a90 	vmov	s15, r0
 800124e:	ee06 1a90 	vmov	s13, r1
 8001252:	eef4 7a66 	vcmp.f32	s15, s13
 8001256:	ee07 2a10 	vmov	s14, r2
 800125a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800125e:	bf48      	it	mi
 8001260:	eef0 7a66 	vmovmi.f32	s15, s13
 8001264:	eef4 7a47 	vcmp.f32	s15, s14
 8001268:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800126c:	bfcc      	ite	gt
 800126e:	ee17 0a10 	vmovgt	r0, s14
 8001272:	ee17 0a90 	vmovle	r0, s15
 8001276:	4770      	bx	lr

08001278 <m_min>:
 8001278:	ee07 0a10 	vmov	s14, r0
 800127c:	ee07 1a90 	vmov	s15, r1
 8001280:	eeb4 7ae7 	vcmpe.f32	s14, s15
 8001284:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001288:	bf54      	ite	pl
 800128a:	ee17 0a90 	vmovpl	r0, s15
 800128e:	ee17 0a10 	vmovmi	r0, s14
 8001292:	4770      	bx	lr

08001294 <thread_ending>:
 8001294:	b672      	cpsid	i
 8001296:	4b05      	ldr	r3, [pc, #20]	; (80012ac <thread_ending+0x18>)
 8001298:	4a05      	ldr	r2, [pc, #20]	; (80012b0 <thread_ending+0x1c>)
 800129a:	681b      	ldr	r3, [r3, #0]
 800129c:	210c      	movs	r1, #12
 800129e:	fb01 2303 	mla	r3, r1, r3, r2
 80012a2:	2200      	movs	r2, #0
 80012a4:	605a      	str	r2, [r3, #4]
 80012a6:	b662      	cpsie	i
 80012a8:	bf00      	nop
 80012aa:	e7fd      	b.n	80012a8 <thread_ending+0x14>
 80012ac:	20000db0 	.word	0x20000db0
 80012b0:	20000d68 	.word	0x20000d68

080012b4 <null_thread>:
 80012b4:	b508      	push	{r3, lr}
 80012b6:	f000 fd09 	bl	8001ccc <sleep>
 80012ba:	e7fc      	b.n	80012b6 <null_thread+0x2>

080012bc <scheduler>:
 80012bc:	b570      	push	{r4, r5, r6, lr}
 80012be:	2200      	movs	r2, #0
 80012c0:	4611      	mov	r1, r2
 80012c2:	4b15      	ldr	r3, [pc, #84]	; (8001318 <scheduler+0x5c>)
 80012c4:	200c      	movs	r0, #12
 80012c6:	fb00 f501 	mul.w	r5, r0, r1
 80012ca:	195e      	adds	r6, r3, r5
 80012cc:	6874      	ldr	r4, [r6, #4]
 80012ce:	f014 0f02 	tst.w	r4, #2
 80012d2:	461c      	mov	r4, r3
 80012d4:	d10a      	bne.n	80012ec <scheduler+0x30>
 80012d6:	6876      	ldr	r6, [r6, #4]
 80012d8:	07f6      	lsls	r6, r6, #31
 80012da:	d507      	bpl.n	80012ec <scheduler+0x30>
 80012dc:	4350      	muls	r0, r2
 80012de:	5b5d      	ldrh	r5, [r3, r5]
 80012e0:	5a18      	ldrh	r0, [r3, r0]
 80012e2:	b2ad      	uxth	r5, r5
 80012e4:	b280      	uxth	r0, r0
 80012e6:	4285      	cmp	r5, r0
 80012e8:	bf38      	it	cc
 80012ea:	460a      	movcc	r2, r1
 80012ec:	200c      	movs	r0, #12
 80012ee:	4348      	muls	r0, r1
 80012f0:	5a1d      	ldrh	r5, [r3, r0]
 80012f2:	b2ad      	uxth	r5, r5
 80012f4:	b11d      	cbz	r5, 80012fe <scheduler+0x42>
 80012f6:	5a1d      	ldrh	r5, [r3, r0]
 80012f8:	3d01      	subs	r5, #1
 80012fa:	b2ad      	uxth	r5, r5
 80012fc:	521d      	strh	r5, [r3, r0]
 80012fe:	3101      	adds	r1, #1
 8001300:	2906      	cmp	r1, #6
 8001302:	d1de      	bne.n	80012c2 <scheduler+0x6>
 8001304:	230c      	movs	r3, #12
 8001306:	4353      	muls	r3, r2
 8001308:	18e1      	adds	r1, r4, r3
 800130a:	8849      	ldrh	r1, [r1, #2]
 800130c:	b289      	uxth	r1, r1
 800130e:	52e1      	strh	r1, [r4, r3]
 8001310:	4b02      	ldr	r3, [pc, #8]	; (800131c <scheduler+0x60>)
 8001312:	601a      	str	r2, [r3, #0]
 8001314:	bd70      	pop	{r4, r5, r6, pc}
 8001316:	bf00      	nop
 8001318:	20000d68 	.word	0x20000d68
 800131c:	20000db0 	.word	0x20000db0

08001320 <SysTick_Handler>:
 8001320:	e92d 0ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 8001324:	f3ef 8208 	mrs	r2, MSP
 8001328:	4c0d      	ldr	r4, [pc, #52]	; (8001360 <SysTick_Handler+0x40>)
 800132a:	4d0e      	ldr	r5, [pc, #56]	; (8001364 <SysTick_Handler+0x44>)
 800132c:	6823      	ldr	r3, [r4, #0]
 800132e:	3301      	adds	r3, #1
 8001330:	d005      	beq.n	800133e <SysTick_Handler+0x1e>
 8001332:	6823      	ldr	r3, [r4, #0]
 8001334:	210c      	movs	r1, #12
 8001336:	fb01 5303 	mla	r3, r1, r3, r5
 800133a:	609a      	str	r2, [r3, #8]
 800133c:	e001      	b.n	8001342 <SysTick_Handler+0x22>
 800133e:	2300      	movs	r3, #0
 8001340:	6023      	str	r3, [r4, #0]
 8001342:	f7ff ffbb 	bl	80012bc <scheduler>
 8001346:	6823      	ldr	r3, [r4, #0]
 8001348:	220c      	movs	r2, #12
 800134a:	fb02 5503 	mla	r5, r2, r3, r5
 800134e:	f06f 0306 	mvn.w	r3, #6
 8001352:	68aa      	ldr	r2, [r5, #8]
 8001354:	469e      	mov	lr, r3
 8001356:	f382 8808 	msr	MSP, r2
 800135a:	e8bd 0ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 800135e:	4770      	bx	lr
 8001360:	20000db0 	.word	0x20000db0
 8001364:	20000d68 	.word	0x20000d68

08001368 <sched_off>:
 8001368:	b672      	cpsid	i
 800136a:	4770      	bx	lr

0800136c <sched_on>:
 800136c:	b662      	cpsie	i
 800136e:	4770      	bx	lr

08001370 <yield>:
 8001370:	bf00      	nop
 8001372:	4770      	bx	lr

08001374 <get_thread_id>:
 8001374:	b082      	sub	sp, #8
 8001376:	b672      	cpsid	i
 8001378:	4b03      	ldr	r3, [pc, #12]	; (8001388 <get_thread_id+0x14>)
 800137a:	681b      	ldr	r3, [r3, #0]
 800137c:	9301      	str	r3, [sp, #4]
 800137e:	b662      	cpsie	i
 8001380:	9801      	ldr	r0, [sp, #4]
 8001382:	b002      	add	sp, #8
 8001384:	4770      	bx	lr
 8001386:	bf00      	nop
 8001388:	20000db0 	.word	0x20000db0

0800138c <kernel_start>:
 800138c:	b508      	push	{r3, lr}
 800138e:	f000 fc8b 	bl	8001ca8 <sys_tick_init>
 8001392:	bf00      	nop
 8001394:	e7fd      	b.n	8001392 <kernel_start+0x6>
	...

08001398 <create_thread>:
 8001398:	f022 0203 	bic.w	r2, r2, #3
 800139c:	3a40      	subs	r2, #64	; 0x40
 800139e:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 80013a2:	eb01 0c02 	add.w	ip, r1, r2
 80013a6:	f102 0834 	add.w	r8, r2, #52	; 0x34
 80013aa:	f102 0938 	add.w	r9, r2, #56	; 0x38
 80013ae:	323c      	adds	r2, #60	; 0x3c
 80013b0:	4488      	add	r8, r1
 80013b2:	4489      	add	r9, r1
 80013b4:	4607      	mov	r7, r0
 80013b6:	4411      	add	r1, r2
 80013b8:	2200      	movs	r2, #0
 80013ba:	b672      	cpsid	i
 80013bc:	4e11      	ldr	r6, [pc, #68]	; (8001404 <create_thread+0x6c>)
 80013be:	250c      	movs	r5, #12
 80013c0:	4355      	muls	r5, r2
 80013c2:	1974      	adds	r4, r6, r5
 80013c4:	6860      	ldr	r0, [r4, #4]
 80013c6:	07c0      	lsls	r0, r0, #31
 80013c8:	d412      	bmi.n	80013f0 <create_thread+0x58>
 80013ca:	480f      	ldr	r0, [pc, #60]	; (8001408 <create_thread+0x70>)
 80013cc:	f8c4 c008 	str.w	ip, [r4, #8]
 80013d0:	2b05      	cmp	r3, #5
 80013d2:	f8c8 0000 	str.w	r0, [r8]
 80013d6:	f04f 5004 	mov.w	r0, #553648128	; 0x21000000
 80013da:	f8c9 7000 	str.w	r7, [r9]
 80013de:	bf98      	it	ls
 80013e0:	2306      	movls	r3, #6
 80013e2:	6008      	str	r0, [r1, #0]
 80013e4:	2001      	movs	r0, #1
 80013e6:	8063      	strh	r3, [r4, #2]
 80013e8:	5373      	strh	r3, [r6, r5]
 80013ea:	6060      	str	r0, [r4, #4]
 80013ec:	4610      	mov	r0, r2
 80013ee:	e000      	b.n	80013f2 <create_thread+0x5a>
 80013f0:	2006      	movs	r0, #6
 80013f2:	b662      	cpsie	i
 80013f4:	3201      	adds	r2, #1
 80013f6:	2a06      	cmp	r2, #6
 80013f8:	d001      	beq.n	80013fe <create_thread+0x66>
 80013fa:	2806      	cmp	r0, #6
 80013fc:	d0dd      	beq.n	80013ba <create_thread+0x22>
 80013fe:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8001402:	bf00      	nop
 8001404:	20000d68 	.word	0x20000d68
 8001408:	08001295 	.word	0x08001295

0800140c <kernel_init>:
 800140c:	b510      	push	{r4, lr}
 800140e:	2300      	movs	r3, #0
 8001410:	490b      	ldr	r1, [pc, #44]	; (8001440 <kernel_init+0x34>)
 8001412:	220c      	movs	r2, #12
 8001414:	435a      	muls	r2, r3
 8001416:	188c      	adds	r4, r1, r2
 8001418:	2000      	movs	r0, #0
 800141a:	6060      	str	r0, [r4, #4]
 800141c:	3301      	adds	r3, #1
 800141e:	2006      	movs	r0, #6
 8001420:	4283      	cmp	r3, r0
 8001422:	8060      	strh	r0, [r4, #2]
 8001424:	5288      	strh	r0, [r1, r2]
 8001426:	d1f3      	bne.n	8001410 <kernel_init+0x4>
 8001428:	4b06      	ldr	r3, [pc, #24]	; (8001444 <kernel_init+0x38>)
 800142a:	4807      	ldr	r0, [pc, #28]	; (8001448 <kernel_init+0x3c>)
 800142c:	4907      	ldr	r1, [pc, #28]	; (800144c <kernel_init+0x40>)
 800142e:	f04f 32ff 	mov.w	r2, #4294967295
 8001432:	601a      	str	r2, [r3, #0]
 8001434:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8001438:	2280      	movs	r2, #128	; 0x80
 800143a:	23ff      	movs	r3, #255	; 0xff
 800143c:	f7ff bfac 	b.w	8001398 <create_thread>
 8001440:	20000d68 	.word	0x20000d68
 8001444:	20000db0 	.word	0x20000db0
 8001448:	080012b5 	.word	0x080012b5
 800144c:	20000db4 	.word	0x20000db4

08001450 <set_wait_state>:
 8001450:	b507      	push	{r0, r1, r2, lr}
 8001452:	f7ff ff8f 	bl	8001374 <get_thread_id>
 8001456:	9000      	str	r0, [sp, #0]
 8001458:	b672      	cpsid	i
 800145a:	4b0d      	ldr	r3, [pc, #52]	; (8001490 <set_wait_state+0x40>)
 800145c:	9a00      	ldr	r2, [sp, #0]
 800145e:	210c      	movs	r1, #12
 8001460:	fb01 3202 	mla	r2, r1, r2, r3
 8001464:	6851      	ldr	r1, [r2, #4]
 8001466:	f041 0102 	orr.w	r1, r1, #2
 800146a:	6051      	str	r1, [r2, #4]
 800146c:	b672      	cpsid	i
 800146e:	9a00      	ldr	r2, [sp, #0]
 8001470:	210c      	movs	r1, #12
 8001472:	fb01 3202 	mla	r2, r1, r2, r3
 8001476:	6852      	ldr	r2, [r2, #4]
 8001478:	9201      	str	r2, [sp, #4]
 800147a:	b662      	cpsie	i
 800147c:	9a01      	ldr	r2, [sp, #4]
 800147e:	0791      	lsls	r1, r2, #30
 8001480:	d500      	bpl.n	8001484 <set_wait_state+0x34>
 8001482:	bf00      	nop
 8001484:	9a01      	ldr	r2, [sp, #4]
 8001486:	0792      	lsls	r2, r2, #30
 8001488:	d4f0      	bmi.n	800146c <set_wait_state+0x1c>
 800148a:	b003      	add	sp, #12
 800148c:	f85d fb04 	ldr.w	pc, [sp], #4
 8001490:	20000d68 	.word	0x20000d68

08001494 <wake_up_threads>:
 8001494:	2300      	movs	r3, #0
 8001496:	b672      	cpsid	i
 8001498:	4a06      	ldr	r2, [pc, #24]	; (80014b4 <wake_up_threads+0x20>)
 800149a:	210c      	movs	r1, #12
 800149c:	fb01 2203 	mla	r2, r1, r3, r2
 80014a0:	6851      	ldr	r1, [r2, #4]
 80014a2:	f021 0102 	bic.w	r1, r1, #2
 80014a6:	6051      	str	r1, [r2, #4]
 80014a8:	b662      	cpsie	i
 80014aa:	3301      	adds	r3, #1
 80014ac:	2b06      	cmp	r3, #6
 80014ae:	d1f2      	bne.n	8001496 <wake_up_threads+0x2>
 80014b0:	4770      	bx	lr
 80014b2:	bf00      	nop
 80014b4:	20000d68 	.word	0x20000d68

080014b8 <putc_>:
 80014b8:	b538      	push	{r3, r4, r5, lr}
 80014ba:	4c06      	ldr	r4, [pc, #24]	; (80014d4 <putc_+0x1c>)
 80014bc:	4605      	mov	r5, r0
 80014be:	4620      	mov	r0, r4
 80014c0:	f000 f912 	bl	80016e8 <mutex_lock>
 80014c4:	4628      	mov	r0, r5
 80014c6:	f000 fde1 	bl	800208c <uart_write>
 80014ca:	4620      	mov	r0, r4
 80014cc:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 80014d0:	f000 b926 	b.w	8001720 <mutex_unlock>
 80014d4:	20000e34 	.word	0x20000e34

080014d8 <puts_>:
 80014d8:	b510      	push	{r4, lr}
 80014da:	4604      	mov	r4, r0
 80014dc:	4807      	ldr	r0, [pc, #28]	; (80014fc <puts_+0x24>)
 80014de:	f000 f903 	bl	80016e8 <mutex_lock>
 80014e2:	3c01      	subs	r4, #1
 80014e4:	f814 0f01 	ldrb.w	r0, [r4, #1]!
 80014e8:	b110      	cbz	r0, 80014f0 <puts_+0x18>
 80014ea:	f7ff ffe5 	bl	80014b8 <putc_>
 80014ee:	e7f9      	b.n	80014e4 <puts_+0xc>
 80014f0:	4802      	ldr	r0, [pc, #8]	; (80014fc <puts_+0x24>)
 80014f2:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80014f6:	f000 b913 	b.w	8001720 <mutex_unlock>
 80014fa:	bf00      	nop
 80014fc:	20000e40 	.word	0x20000e40

08001500 <puti_>:
 8001500:	b530      	push	{r4, r5, lr}
 8001502:	b085      	sub	sp, #20
 8001504:	1e03      	subs	r3, r0, #0
 8001506:	f04f 0200 	mov.w	r2, #0
 800150a:	bfa8      	it	ge
 800150c:	4614      	movge	r4, r2
 800150e:	f88d 200f 	strb.w	r2, [sp, #15]
 8001512:	bfbc      	itt	lt
 8001514:	425b      	neglt	r3, r3
 8001516:	2401      	movlt	r4, #1
 8001518:	220a      	movs	r2, #10
 800151a:	210a      	movs	r1, #10
 800151c:	fb93 f5f1 	sdiv	r5, r3, r1
 8001520:	fb01 3315 	mls	r3, r1, r5, r3
 8001524:	a801      	add	r0, sp, #4
 8001526:	3330      	adds	r3, #48	; 0x30
 8001528:	5413      	strb	r3, [r2, r0]
 800152a:	1e51      	subs	r1, r2, #1
 800152c:	462b      	mov	r3, r5
 800152e:	b10d      	cbz	r5, 8001534 <puti_+0x34>
 8001530:	460a      	mov	r2, r1
 8001532:	e7f2      	b.n	800151a <puti_+0x1a>
 8001534:	b12c      	cbz	r4, 8001542 <puti_+0x42>
 8001536:	ab04      	add	r3, sp, #16
 8001538:	440b      	add	r3, r1
 800153a:	222d      	movs	r2, #45	; 0x2d
 800153c:	f803 2c0c 	strb.w	r2, [r3, #-12]
 8001540:	460a      	mov	r2, r1
 8001542:	4410      	add	r0, r2
 8001544:	f7ff ffc8 	bl	80014d8 <puts_>
 8001548:	b005      	add	sp, #20
 800154a:	bd30      	pop	{r4, r5, pc}

0800154c <putui_>:
 800154c:	b51f      	push	{r0, r1, r2, r3, r4, lr}
 800154e:	2300      	movs	r3, #0
 8001550:	f88d 300f 	strb.w	r3, [sp, #15]
 8001554:	230a      	movs	r3, #10
 8001556:	240a      	movs	r4, #10
 8001558:	fbb0 f1f4 	udiv	r1, r0, r4
 800155c:	fb04 0011 	mls	r0, r4, r1, r0
 8001560:	aa01      	add	r2, sp, #4
 8001562:	3030      	adds	r0, #48	; 0x30
 8001564:	5498      	strb	r0, [r3, r2]
 8001566:	1e5c      	subs	r4, r3, #1
 8001568:	4608      	mov	r0, r1
 800156a:	b109      	cbz	r1, 8001570 <putui_+0x24>
 800156c:	4623      	mov	r3, r4
 800156e:	e7f2      	b.n	8001556 <putui_+0xa>
 8001570:	18d0      	adds	r0, r2, r3
 8001572:	f7ff ffb1 	bl	80014d8 <puts_>
 8001576:	b004      	add	sp, #16
 8001578:	bd10      	pop	{r4, pc}

0800157a <putx_>:
 800157a:	b51f      	push	{r0, r1, r2, r3, r4, lr}
 800157c:	2300      	movs	r3, #0
 800157e:	f88d 300f 	strb.w	r3, [sp, #15]
 8001582:	230a      	movs	r3, #10
 8001584:	f000 010f 	and.w	r1, r0, #15
 8001588:	2909      	cmp	r1, #9
 800158a:	aa01      	add	r2, sp, #4
 800158c:	bf94      	ite	ls
 800158e:	3130      	addls	r1, #48	; 0x30
 8001590:	3157      	addhi	r1, #87	; 0x57
 8001592:	0900      	lsrs	r0, r0, #4
 8001594:	54d1      	strb	r1, [r2, r3]
 8001596:	f103 31ff 	add.w	r1, r3, #4294967295
 800159a:	d001      	beq.n	80015a0 <putx_+0x26>
 800159c:	460b      	mov	r3, r1
 800159e:	e7f1      	b.n	8001584 <putx_+0xa>
 80015a0:	18d0      	adds	r0, r2, r3
 80015a2:	f7ff ff99 	bl	80014d8 <puts_>
 80015a6:	b005      	add	sp, #20
 80015a8:	f85d fb04 	ldr.w	pc, [sp], #4

080015ac <printf_>:
 80015ac:	b40f      	push	{r0, r1, r2, r3}
 80015ae:	b537      	push	{r0, r1, r2, r4, r5, lr}
 80015b0:	ac06      	add	r4, sp, #24
 80015b2:	4826      	ldr	r0, [pc, #152]	; (800164c <printf_+0xa0>)
 80015b4:	f854 5b04 	ldr.w	r5, [r4], #4
 80015b8:	f000 f896 	bl	80016e8 <mutex_lock>
 80015bc:	9401      	str	r4, [sp, #4]
 80015be:	2400      	movs	r4, #0
 80015c0:	5d28      	ldrb	r0, [r5, r4]
 80015c2:	2800      	cmp	r0, #0
 80015c4:	d039      	beq.n	800163a <printf_+0x8e>
 80015c6:	2825      	cmp	r0, #37	; 0x25
 80015c8:	d003      	beq.n	80015d2 <printf_+0x26>
 80015ca:	f7ff ff75 	bl	80014b8 <putc_>
 80015ce:	3401      	adds	r4, #1
 80015d0:	e7f6      	b.n	80015c0 <printf_+0x14>
 80015d2:	192b      	adds	r3, r5, r4
 80015d4:	7858      	ldrb	r0, [r3, #1]
 80015d6:	2869      	cmp	r0, #105	; 0x69
 80015d8:	d016      	beq.n	8001608 <printf_+0x5c>
 80015da:	d808      	bhi.n	80015ee <printf_+0x42>
 80015dc:	2825      	cmp	r0, #37	; 0x25
 80015de:	d028      	beq.n	8001632 <printf_+0x86>
 80015e0:	2863      	cmp	r0, #99	; 0x63
 80015e2:	d128      	bne.n	8001636 <printf_+0x8a>
 80015e4:	9b01      	ldr	r3, [sp, #4]
 80015e6:	1d1a      	adds	r2, r3, #4
 80015e8:	9201      	str	r2, [sp, #4]
 80015ea:	7818      	ldrb	r0, [r3, #0]
 80015ec:	e021      	b.n	8001632 <printf_+0x86>
 80015ee:	2875      	cmp	r0, #117	; 0x75
 80015f0:	d011      	beq.n	8001616 <printf_+0x6a>
 80015f2:	2878      	cmp	r0, #120	; 0x78
 80015f4:	d016      	beq.n	8001624 <printf_+0x78>
 80015f6:	2873      	cmp	r0, #115	; 0x73
 80015f8:	d11d      	bne.n	8001636 <printf_+0x8a>
 80015fa:	9b01      	ldr	r3, [sp, #4]
 80015fc:	1d1a      	adds	r2, r3, #4
 80015fe:	6818      	ldr	r0, [r3, #0]
 8001600:	9201      	str	r2, [sp, #4]
 8001602:	f7ff ff69 	bl	80014d8 <puts_>
 8001606:	e016      	b.n	8001636 <printf_+0x8a>
 8001608:	9b01      	ldr	r3, [sp, #4]
 800160a:	1d1a      	adds	r2, r3, #4
 800160c:	6818      	ldr	r0, [r3, #0]
 800160e:	9201      	str	r2, [sp, #4]
 8001610:	f7ff ff76 	bl	8001500 <puti_>
 8001614:	e00f      	b.n	8001636 <printf_+0x8a>
 8001616:	9b01      	ldr	r3, [sp, #4]
 8001618:	1d1a      	adds	r2, r3, #4
 800161a:	6818      	ldr	r0, [r3, #0]
 800161c:	9201      	str	r2, [sp, #4]
 800161e:	f7ff ff95 	bl	800154c <putui_>
 8001622:	e008      	b.n	8001636 <printf_+0x8a>
 8001624:	9b01      	ldr	r3, [sp, #4]
 8001626:	1d1a      	adds	r2, r3, #4
 8001628:	6818      	ldr	r0, [r3, #0]
 800162a:	9201      	str	r2, [sp, #4]
 800162c:	f7ff ffa5 	bl	800157a <putx_>
 8001630:	e001      	b.n	8001636 <printf_+0x8a>
 8001632:	f7ff ff41 	bl	80014b8 <putc_>
 8001636:	3402      	adds	r4, #2
 8001638:	e7c2      	b.n	80015c0 <printf_+0x14>
 800163a:	4804      	ldr	r0, [pc, #16]	; (800164c <printf_+0xa0>)
 800163c:	f000 f870 	bl	8001720 <mutex_unlock>
 8001640:	b003      	add	sp, #12
 8001642:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
 8001646:	b004      	add	sp, #16
 8001648:	4770      	bx	lr
 800164a:	bf00      	nop
 800164c:	20000e3c 	.word	0x20000e3c

08001650 <stdio_init>:
 8001650:	b510      	push	{r4, lr}
 8001652:	480e      	ldr	r0, [pc, #56]	; (800168c <stdio_init+0x3c>)
 8001654:	f000 f83e 	bl	80016d4 <mutex_init>
 8001658:	480d      	ldr	r0, [pc, #52]	; (8001690 <stdio_init+0x40>)
 800165a:	f000 f83b 	bl	80016d4 <mutex_init>
 800165e:	480d      	ldr	r0, [pc, #52]	; (8001694 <stdio_init+0x44>)
 8001660:	f000 f838 	bl	80016d4 <mutex_init>
 8001664:	480c      	ldr	r0, [pc, #48]	; (8001698 <stdio_init+0x48>)
 8001666:	f000 f835 	bl	80016d4 <mutex_init>
 800166a:	2408      	movs	r4, #8
 800166c:	2020      	movs	r0, #32
 800166e:	f7ff ff23 	bl	80014b8 <putc_>
 8001672:	3c01      	subs	r4, #1
 8001674:	d1fa      	bne.n	800166c <stdio_init+0x1c>
 8001676:	2420      	movs	r4, #32
 8001678:	200a      	movs	r0, #10
 800167a:	f7ff ff1d 	bl	80014b8 <putc_>
 800167e:	3c01      	subs	r4, #1
 8001680:	d1fa      	bne.n	8001678 <stdio_init+0x28>
 8001682:	4806      	ldr	r0, [pc, #24]	; (800169c <stdio_init+0x4c>)
 8001684:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8001688:	f7ff bf90 	b.w	80015ac <printf_>
 800168c:	20000e34 	.word	0x20000e34
 8001690:	20000e38 	.word	0x20000e38
 8001694:	20000e40 	.word	0x20000e40
 8001698:	20000e3c 	.word	0x20000e3c
 800169c:	08002961 	.word	0x08002961

080016a0 <messages_init>:
 80016a0:	4a0a      	ldr	r2, [pc, #40]	; (80016cc <messages_init+0x2c>)
 80016a2:	2300      	movs	r3, #0
 80016a4:	b510      	push	{r4, lr}
 80016a6:	6013      	str	r3, [r2, #0]
 80016a8:	6053      	str	r3, [r2, #4]
 80016aa:	6093      	str	r3, [r2, #8]
 80016ac:	60d3      	str	r3, [r2, #12]
 80016ae:	6113      	str	r3, [r2, #16]
 80016b0:	6153      	str	r3, [r2, #20]
 80016b2:	4c07      	ldr	r4, [pc, #28]	; (80016d0 <messages_init+0x30>)
 80016b4:	0118      	lsls	r0, r3, #4
 80016b6:	1821      	adds	r1, r4, r0
 80016b8:	3301      	adds	r3, #1
 80016ba:	2200      	movs	r2, #0
 80016bc:	2b04      	cmp	r3, #4
 80016be:	604a      	str	r2, [r1, #4]
 80016c0:	5022      	str	r2, [r4, r0]
 80016c2:	60ca      	str	r2, [r1, #12]
 80016c4:	608a      	str	r2, [r1, #8]
 80016c6:	d1f4      	bne.n	80016b2 <messages_init+0x12>
 80016c8:	bd10      	pop	{r4, pc}
 80016ca:	bf00      	nop
 80016cc:	20000e44 	.word	0x20000e44
 80016d0:	20000e5c 	.word	0x20000e5c

080016d4 <mutex_init>:
 80016d4:	b510      	push	{r4, lr}
 80016d6:	4604      	mov	r4, r0
 80016d8:	f7ff fe46 	bl	8001368 <sched_off>
 80016dc:	2300      	movs	r3, #0
 80016de:	6023      	str	r3, [r4, #0]
 80016e0:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80016e4:	f7ff be42 	b.w	800136c <sched_on>

080016e8 <mutex_lock>:
 80016e8:	b513      	push	{r0, r1, r4, lr}
 80016ea:	4604      	mov	r4, r0
 80016ec:	f7ff fe3c 	bl	8001368 <sched_off>
 80016f0:	6823      	ldr	r3, [r4, #0]
 80016f2:	9301      	str	r3, [sp, #4]
 80016f4:	f7ff fe3a 	bl	800136c <sched_on>
 80016f8:	9b01      	ldr	r3, [sp, #4]
 80016fa:	b10b      	cbz	r3, 8001700 <mutex_lock+0x18>
 80016fc:	f7ff fea8 	bl	8001450 <set_wait_state>
 8001700:	9b01      	ldr	r3, [sp, #4]
 8001702:	2b00      	cmp	r3, #0
 8001704:	d1f2      	bne.n	80016ec <mutex_lock+0x4>
 8001706:	f7ff fe2f 	bl	8001368 <sched_off>
 800170a:	6823      	ldr	r3, [r4, #0]
 800170c:	9301      	str	r3, [sp, #4]
 800170e:	9b01      	ldr	r3, [sp, #4]
 8001710:	2b00      	cmp	r3, #0
 8001712:	d1eb      	bne.n	80016ec <mutex_lock+0x4>
 8001714:	2301      	movs	r3, #1
 8001716:	6023      	str	r3, [r4, #0]
 8001718:	f7ff fe28 	bl	800136c <sched_on>
 800171c:	b002      	add	sp, #8
 800171e:	bd10      	pop	{r4, pc}

08001720 <mutex_unlock>:
 8001720:	b508      	push	{r3, lr}
 8001722:	f7ff ffd7 	bl	80016d4 <mutex_init>
 8001726:	f7ff feb5 	bl	8001494 <wake_up_threads>
 800172a:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800172e:	f7ff be1f 	b.w	8001370 <yield>

08001732 <lib_os_init>:
 8001732:	b508      	push	{r3, lr}
 8001734:	f7ff fe6a 	bl	800140c <kernel_init>
 8001738:	f7ff ffb2 	bl	80016a0 <messages_init>
 800173c:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001740:	f7ff bf86 	b.w	8001650 <stdio_init>

08001744 <Default_Handler>:
 8001744:	4668      	mov	r0, sp
 8001746:	f020 0107 	bic.w	r1, r0, #7
 800174a:	468d      	mov	sp, r1
 800174c:	bf00      	nop
 800174e:	e7fd      	b.n	800174c <Default_Handler+0x8>

08001750 <HardFault_Handler>:
 8001750:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001754:	f000 f99a 	bl	8001a8c <led_on>
 8001758:	4b06      	ldr	r3, [pc, #24]	; (8001774 <HardFault_Handler+0x24>)
 800175a:	3b01      	subs	r3, #1
 800175c:	d001      	beq.n	8001762 <HardFault_Handler+0x12>
 800175e:	bf00      	nop
 8001760:	e7fb      	b.n	800175a <HardFault_Handler+0xa>
 8001762:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001766:	f000 f9a3 	bl	8001ab0 <led_off>
 800176a:	4b02      	ldr	r3, [pc, #8]	; (8001774 <HardFault_Handler+0x24>)
 800176c:	3b01      	subs	r3, #1
 800176e:	d0ef      	beq.n	8001750 <HardFault_Handler>
 8001770:	bf00      	nop
 8001772:	e7fb      	b.n	800176c <HardFault_Handler+0x1c>
 8001774:	00989681 	.word	0x00989681

08001778 <_reset_init>:
 8001778:	4a0e      	ldr	r2, [pc, #56]	; (80017b4 <_reset_init+0x3c>)
 800177a:	480f      	ldr	r0, [pc, #60]	; (80017b8 <_reset_init+0x40>)
 800177c:	1a80      	subs	r0, r0, r2
 800177e:	1080      	asrs	r0, r0, #2
 8001780:	2300      	movs	r3, #0
 8001782:	4283      	cmp	r3, r0
 8001784:	d006      	beq.n	8001794 <_reset_init+0x1c>
 8001786:	490d      	ldr	r1, [pc, #52]	; (80017bc <_reset_init+0x44>)
 8001788:	f851 1023 	ldr.w	r1, [r1, r3, lsl #2]
 800178c:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
 8001790:	3301      	adds	r3, #1
 8001792:	e7f6      	b.n	8001782 <_reset_init+0xa>
 8001794:	4b0a      	ldr	r3, [pc, #40]	; (80017c0 <_reset_init+0x48>)
 8001796:	f8d3 2088 	ldr.w	r2, [r3, #136]	; 0x88
 800179a:	f442 0270 	orr.w	r2, r2, #15728640	; 0xf00000
 800179e:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
 80017a2:	f503 730c 	add.w	r3, r3, #560	; 0x230
 80017a6:	685a      	ldr	r2, [r3, #4]
 80017a8:	f022 4240 	bic.w	r2, r2, #3221225472	; 0xc0000000
 80017ac:	605a      	str	r2, [r3, #4]
 80017ae:	f7fe bceb 	b.w	8000188 <main>
 80017b2:	bf00      	nop
 80017b4:	20000000 	.word	0x20000000
 80017b8:	20000154 	.word	0x20000154
 80017bc:	08002978 	.word	0x08002978
 80017c0:	e000ed00 	.word	0xe000ed00

080017c4 <i2c_delay>:
 80017c4:	230b      	movs	r3, #11
 80017c6:	3b01      	subs	r3, #1
 80017c8:	d001      	beq.n	80017ce <i2c_delay+0xa>
 80017ca:	bf00      	nop
 80017cc:	e7fb      	b.n	80017c6 <i2c_delay+0x2>
 80017ce:	4770      	bx	lr

080017d0 <SetLowSDA>:
 80017d0:	b537      	push	{r0, r1, r2, r4, r5, lr}
 80017d2:	4d0d      	ldr	r5, [pc, #52]	; (8001808 <SetLowSDA+0x38>)
 80017d4:	2301      	movs	r3, #1
 80017d6:	2203      	movs	r2, #3
 80017d8:	2480      	movs	r4, #128	; 0x80
 80017da:	f88d 3004 	strb.w	r3, [sp, #4]
 80017de:	f88d 3006 	strb.w	r3, [sp, #6]
 80017e2:	4628      	mov	r0, r5
 80017e4:	2300      	movs	r3, #0
 80017e6:	4669      	mov	r1, sp
 80017e8:	f88d 2005 	strb.w	r2, [sp, #5]
 80017ec:	f88d 3007 	strb.w	r3, [sp, #7]
 80017f0:	9400      	str	r4, [sp, #0]
 80017f2:	f000 f977 	bl	8001ae4 <GPIO_Init>
 80017f6:	4628      	mov	r0, r5
 80017f8:	4621      	mov	r1, r4
 80017fa:	f000 f9bc 	bl	8001b76 <GPIO_ResetBits>
 80017fe:	f7ff ffe1 	bl	80017c4 <i2c_delay>
 8001802:	b003      	add	sp, #12
 8001804:	bd30      	pop	{r4, r5, pc}
 8001806:	bf00      	nop
 8001808:	48000400 	.word	0x48000400

0800180c <SetHighSDA>:
 800180c:	b537      	push	{r0, r1, r2, r4, r5, lr}
 800180e:	4d0d      	ldr	r5, [pc, #52]	; (8001844 <SetHighSDA+0x38>)
 8001810:	2203      	movs	r2, #3
 8001812:	2300      	movs	r3, #0
 8001814:	2480      	movs	r4, #128	; 0x80
 8001816:	f88d 2005 	strb.w	r2, [sp, #5]
 800181a:	4628      	mov	r0, r5
 800181c:	2201      	movs	r2, #1
 800181e:	4669      	mov	r1, sp
 8001820:	f88d 3004 	strb.w	r3, [sp, #4]
 8001824:	f88d 2006 	strb.w	r2, [sp, #6]
 8001828:	f88d 3007 	strb.w	r3, [sp, #7]
 800182c:	9400      	str	r4, [sp, #0]
 800182e:	f000 f959 	bl	8001ae4 <GPIO_Init>
 8001832:	4628      	mov	r0, r5
 8001834:	4621      	mov	r1, r4
 8001836:	f000 f99a 	bl	8001b6e <GPIO_SetBits>
 800183a:	f7ff ffc3 	bl	80017c4 <i2c_delay>
 800183e:	b003      	add	sp, #12
 8001840:	bd30      	pop	{r4, r5, pc}
 8001842:	bf00      	nop
 8001844:	48000400 	.word	0x48000400

08001848 <SetLowSCL>:
 8001848:	b508      	push	{r3, lr}
 800184a:	4804      	ldr	r0, [pc, #16]	; (800185c <SetLowSCL+0x14>)
 800184c:	2140      	movs	r1, #64	; 0x40
 800184e:	f000 f992 	bl	8001b76 <GPIO_ResetBits>
 8001852:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001856:	f7ff bfb5 	b.w	80017c4 <i2c_delay>
 800185a:	bf00      	nop
 800185c:	48000400 	.word	0x48000400

08001860 <SetHighSCL>:
 8001860:	b508      	push	{r3, lr}
 8001862:	4804      	ldr	r0, [pc, #16]	; (8001874 <SetHighSCL+0x14>)
 8001864:	2140      	movs	r1, #64	; 0x40
 8001866:	f000 f982 	bl	8001b6e <GPIO_SetBits>
 800186a:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800186e:	f7ff bfa9 	b.w	80017c4 <i2c_delay>
 8001872:	bf00      	nop
 8001874:	48000400 	.word	0x48000400

08001878 <i2c_0_init>:
 8001878:	b507      	push	{r0, r1, r2, lr}
 800187a:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 800187e:	2101      	movs	r1, #1
 8001880:	f000 fbda 	bl	8002038 <RCC_AHBPeriphClockCmd>
 8001884:	23c0      	movs	r3, #192	; 0xc0
 8001886:	9300      	str	r3, [sp, #0]
 8001888:	2301      	movs	r3, #1
 800188a:	2203      	movs	r2, #3
 800188c:	480a      	ldr	r0, [pc, #40]	; (80018b8 <i2c_0_init+0x40>)
 800188e:	f88d 3004 	strb.w	r3, [sp, #4]
 8001892:	4669      	mov	r1, sp
 8001894:	f88d 3006 	strb.w	r3, [sp, #6]
 8001898:	2300      	movs	r3, #0
 800189a:	f88d 2005 	strb.w	r2, [sp, #5]
 800189e:	f88d 3007 	strb.w	r3, [sp, #7]
 80018a2:	f000 f91f 	bl	8001ae4 <GPIO_Init>
 80018a6:	f7ff ffdb 	bl	8001860 <SetHighSCL>
 80018aa:	f7ff ff91 	bl	80017d0 <SetLowSDA>
 80018ae:	f7ff ffad 	bl	800180c <SetHighSDA>
 80018b2:	b003      	add	sp, #12
 80018b4:	f85d fb04 	ldr.w	pc, [sp], #4
 80018b8:	48000400 	.word	0x48000400

080018bc <i2cStart>:
 80018bc:	b508      	push	{r3, lr}
 80018be:	f7ff ffcf 	bl	8001860 <SetHighSCL>
 80018c2:	f7ff ffa3 	bl	800180c <SetHighSDA>
 80018c6:	f7ff ffcb 	bl	8001860 <SetHighSCL>
 80018ca:	f7ff ff81 	bl	80017d0 <SetLowSDA>
 80018ce:	f7ff ffbb 	bl	8001848 <SetLowSCL>
 80018d2:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80018d6:	f7ff bf99 	b.w	800180c <SetHighSDA>

080018da <i2cStop>:
 80018da:	b508      	push	{r3, lr}
 80018dc:	f7ff ffb4 	bl	8001848 <SetLowSCL>
 80018e0:	f7ff ff76 	bl	80017d0 <SetLowSDA>
 80018e4:	f7ff ffbc 	bl	8001860 <SetHighSCL>
 80018e8:	f7ff ff72 	bl	80017d0 <SetLowSDA>
 80018ec:	f7ff ffb8 	bl	8001860 <SetHighSCL>
 80018f0:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80018f4:	f7ff bf8a 	b.w	800180c <SetHighSDA>

080018f8 <i2cWrite>:
 80018f8:	b538      	push	{r3, r4, r5, lr}
 80018fa:	4604      	mov	r4, r0
 80018fc:	2508      	movs	r5, #8
 80018fe:	f7ff ffa3 	bl	8001848 <SetLowSCL>
 8001902:	0623      	lsls	r3, r4, #24
 8001904:	d502      	bpl.n	800190c <i2cWrite+0x14>
 8001906:	f7ff ff81 	bl	800180c <SetHighSDA>
 800190a:	e001      	b.n	8001910 <i2cWrite+0x18>
 800190c:	f7ff ff60 	bl	80017d0 <SetLowSDA>
 8001910:	3d01      	subs	r5, #1
 8001912:	f7ff ffa5 	bl	8001860 <SetHighSCL>
 8001916:	0064      	lsls	r4, r4, #1
 8001918:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 800191c:	b2e4      	uxtb	r4, r4
 800191e:	d1ee      	bne.n	80018fe <i2cWrite+0x6>
 8001920:	f7ff ff92 	bl	8001848 <SetLowSCL>
 8001924:	f7ff ff72 	bl	800180c <SetHighSDA>
 8001928:	f7ff ff9a 	bl	8001860 <SetHighSCL>
 800192c:	4b05      	ldr	r3, [pc, #20]	; (8001944 <i2cWrite+0x4c>)
 800192e:	8a1c      	ldrh	r4, [r3, #16]
 8001930:	b2a4      	uxth	r4, r4
 8001932:	f7ff ff89 	bl	8001848 <SetLowSCL>
 8001936:	f7ff ff45 	bl	80017c4 <i2c_delay>
 800193a:	f084 0080 	eor.w	r0, r4, #128	; 0x80
 800193e:	f3c0 10c0 	ubfx	r0, r0, #7, #1
 8001942:	bd38      	pop	{r3, r4, r5, pc}
 8001944:	48000400 	.word	0x48000400

08001948 <i2cRead>:
 8001948:	b570      	push	{r4, r5, r6, lr}
 800194a:	4606      	mov	r6, r0
 800194c:	f7ff ff7c 	bl	8001848 <SetLowSCL>
 8001950:	f7ff ff5c 	bl	800180c <SetHighSDA>
 8001954:	2508      	movs	r5, #8
 8001956:	2400      	movs	r4, #0
 8001958:	f7ff ff82 	bl	8001860 <SetHighSCL>
 800195c:	4b0d      	ldr	r3, [pc, #52]	; (8001994 <i2cRead+0x4c>)
 800195e:	8a1b      	ldrh	r3, [r3, #16]
 8001960:	0064      	lsls	r4, r4, #1
 8001962:	061b      	lsls	r3, r3, #24
 8001964:	b2e4      	uxtb	r4, r4
 8001966:	bf48      	it	mi
 8001968:	3401      	addmi	r4, #1
 800196a:	f105 35ff 	add.w	r5, r5, #4294967295
 800196e:	bf48      	it	mi
 8001970:	b2e4      	uxtbmi	r4, r4
 8001972:	f7ff ff69 	bl	8001848 <SetLowSCL>
 8001976:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 800197a:	d1ed      	bne.n	8001958 <i2cRead+0x10>
 800197c:	b10e      	cbz	r6, 8001982 <i2cRead+0x3a>
 800197e:	f7ff ff27 	bl	80017d0 <SetLowSDA>
 8001982:	f7ff ff6d 	bl	8001860 <SetHighSCL>
 8001986:	f7ff ff5f 	bl	8001848 <SetLowSCL>
 800198a:	f7ff ff1b 	bl	80017c4 <i2c_delay>
 800198e:	4620      	mov	r0, r4
 8001990:	bd70      	pop	{r4, r5, r6, pc}
 8001992:	bf00      	nop
 8001994:	48000400 	.word	0x48000400

08001998 <i2c_write_reg>:
 8001998:	b570      	push	{r4, r5, r6, lr}
 800199a:	4605      	mov	r5, r0
 800199c:	460c      	mov	r4, r1
 800199e:	4616      	mov	r6, r2
 80019a0:	f7ff ff8c 	bl	80018bc <i2cStart>
 80019a4:	4628      	mov	r0, r5
 80019a6:	f7ff ffa7 	bl	80018f8 <i2cWrite>
 80019aa:	4620      	mov	r0, r4
 80019ac:	f7ff ffa4 	bl	80018f8 <i2cWrite>
 80019b0:	4630      	mov	r0, r6
 80019b2:	f7ff ffa1 	bl	80018f8 <i2cWrite>
 80019b6:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 80019ba:	f7ff bf8e 	b.w	80018da <i2cStop>

080019be <i2c_read_reg>:
 80019be:	b538      	push	{r3, r4, r5, lr}
 80019c0:	4604      	mov	r4, r0
 80019c2:	460d      	mov	r5, r1
 80019c4:	f7ff ff7a 	bl	80018bc <i2cStart>
 80019c8:	4620      	mov	r0, r4
 80019ca:	f7ff ff95 	bl	80018f8 <i2cWrite>
 80019ce:	4628      	mov	r0, r5
 80019d0:	f7ff ff92 	bl	80018f8 <i2cWrite>
 80019d4:	f7ff ff72 	bl	80018bc <i2cStart>
 80019d8:	f044 0001 	orr.w	r0, r4, #1
 80019dc:	f7ff ff8c 	bl	80018f8 <i2cWrite>
 80019e0:	2000      	movs	r0, #0
 80019e2:	f7ff ffb1 	bl	8001948 <i2cRead>
 80019e6:	4604      	mov	r4, r0
 80019e8:	f7ff ff77 	bl	80018da <i2cStop>
 80019ec:	4620      	mov	r0, r4
 80019ee:	bd38      	pop	{r3, r4, r5, pc}

080019f0 <gpio_init>:
 80019f0:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
 80019f4:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 80019f8:	2101      	movs	r1, #1
 80019fa:	f000 fb1d 	bl	8002038 <RCC_AHBPeriphClockCmd>
 80019fe:	4d21      	ldr	r5, [pc, #132]	; (8001a84 <gpio_init+0x94>)
 8001a00:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 8001a04:	2101      	movs	r1, #1
 8001a06:	f000 fb17 	bl	8002038 <RCC_AHBPeriphClockCmd>
 8001a0a:	f44f 2000 	mov.w	r0, #524288	; 0x80000
 8001a0e:	2101      	movs	r1, #1
 8001a10:	f000 fb12 	bl	8002038 <RCC_AHBPeriphClockCmd>
 8001a14:	2400      	movs	r4, #0
 8001a16:	2603      	movs	r6, #3
 8001a18:	f44f 4900 	mov.w	r9, #32768	; 0x8000
 8001a1c:	2701      	movs	r7, #1
 8001a1e:	4628      	mov	r0, r5
 8001a20:	4669      	mov	r1, sp
 8001a22:	f88d 7004 	strb.w	r7, [sp, #4]
 8001a26:	f8cd 9000 	str.w	r9, [sp]
 8001a2a:	f88d 4006 	strb.w	r4, [sp, #6]
 8001a2e:	f88d 6005 	strb.w	r6, [sp, #5]
 8001a32:	f88d 4007 	strb.w	r4, [sp, #7]
 8001a36:	f000 f855 	bl	8001ae4 <GPIO_Init>
 8001a3a:	f88d 7004 	strb.w	r7, [sp, #4]
 8001a3e:	4f12      	ldr	r7, [pc, #72]	; (8001a88 <gpio_init+0x98>)
 8001a40:	f88d 4006 	strb.w	r4, [sp, #6]
 8001a44:	f44f 5800 	mov.w	r8, #8192	; 0x2000
 8001a48:	4638      	mov	r0, r7
 8001a4a:	4669      	mov	r1, sp
 8001a4c:	f8cd 8000 	str.w	r8, [sp]
 8001a50:	f88d 6005 	strb.w	r6, [sp, #5]
 8001a54:	f88d 4007 	strb.w	r4, [sp, #7]
 8001a58:	f000 f844 	bl	8001ae4 <GPIO_Init>
 8001a5c:	f44f 7300 	mov.w	r3, #512	; 0x200
 8001a60:	4628      	mov	r0, r5
 8001a62:	4669      	mov	r1, sp
 8001a64:	9300      	str	r3, [sp, #0]
 8001a66:	f88d 4004 	strb.w	r4, [sp, #4]
 8001a6a:	f88d 6005 	strb.w	r6, [sp, #5]
 8001a6e:	f88d 4007 	strb.w	r4, [sp, #7]
 8001a72:	f000 f837 	bl	8001ae4 <GPIO_Init>
 8001a76:	f8c5 9018 	str.w	r9, [r5, #24]
 8001a7a:	f8c7 8018 	str.w	r8, [r7, #24]
 8001a7e:	b003      	add	sp, #12
 8001a80:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8001a84:	48000400 	.word	0x48000400
 8001a88:	48000800 	.word	0x48000800

08001a8c <led_on>:
 8001a8c:	0402      	lsls	r2, r0, #16
 8001a8e:	d503      	bpl.n	8001a98 <led_on+0xc>
 8001a90:	4b05      	ldr	r3, [pc, #20]	; (8001aa8 <led_on+0x1c>)
 8001a92:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 8001a96:	619a      	str	r2, [r3, #24]
 8001a98:	0483      	lsls	r3, r0, #18
 8001a9a:	d503      	bpl.n	8001aa4 <led_on+0x18>
 8001a9c:	4b03      	ldr	r3, [pc, #12]	; (8001aac <led_on+0x20>)
 8001a9e:	f44f 5200 	mov.w	r2, #8192	; 0x2000
 8001aa2:	851a      	strh	r2, [r3, #40]	; 0x28
 8001aa4:	4770      	bx	lr
 8001aa6:	bf00      	nop
 8001aa8:	48000400 	.word	0x48000400
 8001aac:	48000800 	.word	0x48000800

08001ab0 <led_off>:
 8001ab0:	0402      	lsls	r2, r0, #16
 8001ab2:	d503      	bpl.n	8001abc <led_off+0xc>
 8001ab4:	4b05      	ldr	r3, [pc, #20]	; (8001acc <led_off+0x1c>)
 8001ab6:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 8001aba:	851a      	strh	r2, [r3, #40]	; 0x28
 8001abc:	0483      	lsls	r3, r0, #18
 8001abe:	d503      	bpl.n	8001ac8 <led_off+0x18>
 8001ac0:	4b03      	ldr	r3, [pc, #12]	; (8001ad0 <led_off+0x20>)
 8001ac2:	f44f 5200 	mov.w	r2, #8192	; 0x2000
 8001ac6:	619a      	str	r2, [r3, #24]
 8001ac8:	4770      	bx	lr
 8001aca:	bf00      	nop
 8001acc:	48000400 	.word	0x48000400
 8001ad0:	48000800 	.word	0x48000800

08001ad4 <get_key>:
 8001ad4:	4b02      	ldr	r3, [pc, #8]	; (8001ae0 <get_key+0xc>)
 8001ad6:	8a18      	ldrh	r0, [r3, #16]
 8001ad8:	43c0      	mvns	r0, r0
 8001ada:	f400 7000 	and.w	r0, r0, #512	; 0x200
 8001ade:	4770      	bx	lr
 8001ae0:	48000400 	.word	0x48000400

08001ae4 <GPIO_Init>:
 8001ae4:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001ae6:	bf00      	nop
 8001ae8:	bf00      	nop
 8001aea:	bf00      	nop
 8001aec:	bf00      	nop
 8001aee:	2300      	movs	r3, #0
 8001af0:	680e      	ldr	r6, [r1, #0]
 8001af2:	461a      	mov	r2, r3
 8001af4:	2501      	movs	r5, #1
 8001af6:	4095      	lsls	r5, r2
 8001af8:	ea05 0406 	and.w	r4, r5, r6
 8001afc:	42ac      	cmp	r4, r5
 8001afe:	d130      	bne.n	8001b62 <GPIO_Init+0x7e>
 8001b00:	790d      	ldrb	r5, [r1, #4]
 8001b02:	1e6f      	subs	r7, r5, #1
 8001b04:	2f01      	cmp	r7, #1
 8001b06:	d81c      	bhi.n	8001b42 <GPIO_Init+0x5e>
 8001b08:	bf00      	nop
 8001b0a:	f04f 0c03 	mov.w	ip, #3
 8001b0e:	6887      	ldr	r7, [r0, #8]
 8001b10:	fa0c fc03 	lsl.w	ip, ip, r3
 8001b14:	ea27 070c 	bic.w	r7, r7, ip
 8001b18:	6087      	str	r7, [r0, #8]
 8001b1a:	f891 c005 	ldrb.w	ip, [r1, #5]
 8001b1e:	6887      	ldr	r7, [r0, #8]
 8001b20:	fa0c fc03 	lsl.w	ip, ip, r3
 8001b24:	ea4c 0707 	orr.w	r7, ip, r7
 8001b28:	6087      	str	r7, [r0, #8]
 8001b2a:	bf00      	nop
 8001b2c:	8887      	ldrh	r7, [r0, #4]
 8001b2e:	b2bf      	uxth	r7, r7
 8001b30:	ea27 0404 	bic.w	r4, r7, r4
 8001b34:	8084      	strh	r4, [r0, #4]
 8001b36:	798c      	ldrb	r4, [r1, #6]
 8001b38:	8887      	ldrh	r7, [r0, #4]
 8001b3a:	4094      	lsls	r4, r2
 8001b3c:	433c      	orrs	r4, r7
 8001b3e:	b2a4      	uxth	r4, r4
 8001b40:	8084      	strh	r4, [r0, #4]
 8001b42:	2403      	movs	r4, #3
 8001b44:	6807      	ldr	r7, [r0, #0]
 8001b46:	409c      	lsls	r4, r3
 8001b48:	43e4      	mvns	r4, r4
 8001b4a:	4027      	ands	r7, r4
 8001b4c:	6007      	str	r7, [r0, #0]
 8001b4e:	6807      	ldr	r7, [r0, #0]
 8001b50:	409d      	lsls	r5, r3
 8001b52:	433d      	orrs	r5, r7
 8001b54:	6005      	str	r5, [r0, #0]
 8001b56:	68c5      	ldr	r5, [r0, #12]
 8001b58:	402c      	ands	r4, r5
 8001b5a:	79cd      	ldrb	r5, [r1, #7]
 8001b5c:	409d      	lsls	r5, r3
 8001b5e:	432c      	orrs	r4, r5
 8001b60:	60c4      	str	r4, [r0, #12]
 8001b62:	3201      	adds	r2, #1
 8001b64:	2a10      	cmp	r2, #16
 8001b66:	f103 0302 	add.w	r3, r3, #2
 8001b6a:	d1c3      	bne.n	8001af4 <GPIO_Init+0x10>
 8001b6c:	bdf0      	pop	{r4, r5, r6, r7, pc}

08001b6e <GPIO_SetBits>:
 8001b6e:	bf00      	nop
 8001b70:	bf00      	nop
 8001b72:	6181      	str	r1, [r0, #24]
 8001b74:	4770      	bx	lr

08001b76 <GPIO_ResetBits>:
 8001b76:	bf00      	nop
 8001b78:	bf00      	nop
 8001b7a:	8501      	strh	r1, [r0, #40]	; 0x28
 8001b7c:	4770      	bx	lr

08001b7e <GPIO_PinAFConfig>:
 8001b7e:	b510      	push	{r4, lr}
 8001b80:	bf00      	nop
 8001b82:	bf00      	nop
 8001b84:	bf00      	nop
 8001b86:	f001 0307 	and.w	r3, r1, #7
 8001b8a:	08c9      	lsrs	r1, r1, #3
 8001b8c:	eb00 0081 	add.w	r0, r0, r1, lsl #2
 8001b90:	009b      	lsls	r3, r3, #2
 8001b92:	6a04      	ldr	r4, [r0, #32]
 8001b94:	210f      	movs	r1, #15
 8001b96:	4099      	lsls	r1, r3
 8001b98:	ea24 0101 	bic.w	r1, r4, r1
 8001b9c:	6201      	str	r1, [r0, #32]
 8001b9e:	6a01      	ldr	r1, [r0, #32]
 8001ba0:	fa02 f303 	lsl.w	r3, r2, r3
 8001ba4:	430b      	orrs	r3, r1
 8001ba6:	6203      	str	r3, [r0, #32]
 8001ba8:	bd10      	pop	{r4, pc}
	...

08001bac <SystemInit>:
 8001bac:	4b39      	ldr	r3, [pc, #228]	; (8001c94 <SystemInit+0xe8>)
 8001bae:	f8d3 2088 	ldr.w	r2, [r3, #136]	; 0x88
 8001bb2:	f442 0270 	orr.w	r2, r2, #15728640	; 0xf00000
 8001bb6:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
 8001bba:	4b37      	ldr	r3, [pc, #220]	; (8001c98 <SystemInit+0xec>)
 8001bbc:	681a      	ldr	r2, [r3, #0]
 8001bbe:	f042 0201 	orr.w	r2, r2, #1
 8001bc2:	601a      	str	r2, [r3, #0]
 8001bc4:	6859      	ldr	r1, [r3, #4]
 8001bc6:	4a35      	ldr	r2, [pc, #212]	; (8001c9c <SystemInit+0xf0>)
 8001bc8:	400a      	ands	r2, r1
 8001bca:	605a      	str	r2, [r3, #4]
 8001bcc:	681a      	ldr	r2, [r3, #0]
 8001bce:	f022 7284 	bic.w	r2, r2, #17301504	; 0x1080000
 8001bd2:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
 8001bd6:	601a      	str	r2, [r3, #0]
 8001bd8:	681a      	ldr	r2, [r3, #0]
 8001bda:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 8001bde:	601a      	str	r2, [r3, #0]
 8001be0:	685a      	ldr	r2, [r3, #4]
 8001be2:	f422 02fe 	bic.w	r2, r2, #8323072	; 0x7f0000
 8001be6:	605a      	str	r2, [r3, #4]
 8001be8:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8001bea:	f022 020f 	bic.w	r2, r2, #15
 8001bee:	62da      	str	r2, [r3, #44]	; 0x2c
 8001bf0:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001bf2:	4a2b      	ldr	r2, [pc, #172]	; (8001ca0 <SystemInit+0xf4>)
 8001bf4:	b082      	sub	sp, #8
 8001bf6:	400a      	ands	r2, r1
 8001bf8:	631a      	str	r2, [r3, #48]	; 0x30
 8001bfa:	2200      	movs	r2, #0
 8001bfc:	609a      	str	r2, [r3, #8]
 8001bfe:	9200      	str	r2, [sp, #0]
 8001c00:	9201      	str	r2, [sp, #4]
 8001c02:	681a      	ldr	r2, [r3, #0]
 8001c04:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
 8001c08:	601a      	str	r2, [r3, #0]
 8001c0a:	681a      	ldr	r2, [r3, #0]
 8001c0c:	f402 3200 	and.w	r2, r2, #131072	; 0x20000
 8001c10:	9201      	str	r2, [sp, #4]
 8001c12:	9a00      	ldr	r2, [sp, #0]
 8001c14:	3201      	adds	r2, #1
 8001c16:	9200      	str	r2, [sp, #0]
 8001c18:	9a01      	ldr	r2, [sp, #4]
 8001c1a:	b91a      	cbnz	r2, 8001c24 <SystemInit+0x78>
 8001c1c:	9a00      	ldr	r2, [sp, #0]
 8001c1e:	f5b2 4fa0 	cmp.w	r2, #20480	; 0x5000
 8001c22:	d1f2      	bne.n	8001c0a <SystemInit+0x5e>
 8001c24:	681a      	ldr	r2, [r3, #0]
 8001c26:	f412 3200 	ands.w	r2, r2, #131072	; 0x20000
 8001c2a:	bf18      	it	ne
 8001c2c:	2201      	movne	r2, #1
 8001c2e:	9201      	str	r2, [sp, #4]
 8001c30:	9a01      	ldr	r2, [sp, #4]
 8001c32:	2a01      	cmp	r2, #1
 8001c34:	d005      	beq.n	8001c42 <SystemInit+0x96>
 8001c36:	4b17      	ldr	r3, [pc, #92]	; (8001c94 <SystemInit+0xe8>)
 8001c38:	f04f 6200 	mov.w	r2, #134217728	; 0x8000000
 8001c3c:	609a      	str	r2, [r3, #8]
 8001c3e:	b002      	add	sp, #8
 8001c40:	4770      	bx	lr
 8001c42:	4a18      	ldr	r2, [pc, #96]	; (8001ca4 <SystemInit+0xf8>)
 8001c44:	2112      	movs	r1, #18
 8001c46:	6011      	str	r1, [r2, #0]
 8001c48:	685a      	ldr	r2, [r3, #4]
 8001c4a:	605a      	str	r2, [r3, #4]
 8001c4c:	685a      	ldr	r2, [r3, #4]
 8001c4e:	605a      	str	r2, [r3, #4]
 8001c50:	685a      	ldr	r2, [r3, #4]
 8001c52:	f442 6280 	orr.w	r2, r2, #1024	; 0x400
 8001c56:	605a      	str	r2, [r3, #4]
 8001c58:	685a      	ldr	r2, [r3, #4]
 8001c5a:	f422 127c 	bic.w	r2, r2, #4128768	; 0x3f0000
 8001c5e:	605a      	str	r2, [r3, #4]
 8001c60:	685a      	ldr	r2, [r3, #4]
 8001c62:	f442 12e8 	orr.w	r2, r2, #1900544	; 0x1d0000
 8001c66:	605a      	str	r2, [r3, #4]
 8001c68:	681a      	ldr	r2, [r3, #0]
 8001c6a:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
 8001c6e:	601a      	str	r2, [r3, #0]
 8001c70:	6819      	ldr	r1, [r3, #0]
 8001c72:	4a09      	ldr	r2, [pc, #36]	; (8001c98 <SystemInit+0xec>)
 8001c74:	0189      	lsls	r1, r1, #6
 8001c76:	d5fb      	bpl.n	8001c70 <SystemInit+0xc4>
 8001c78:	6851      	ldr	r1, [r2, #4]
 8001c7a:	f021 0103 	bic.w	r1, r1, #3
 8001c7e:	6051      	str	r1, [r2, #4]
 8001c80:	6851      	ldr	r1, [r2, #4]
 8001c82:	f041 0102 	orr.w	r1, r1, #2
 8001c86:	6051      	str	r1, [r2, #4]
 8001c88:	685a      	ldr	r2, [r3, #4]
 8001c8a:	f002 020c 	and.w	r2, r2, #12
 8001c8e:	2a08      	cmp	r2, #8
 8001c90:	d1fa      	bne.n	8001c88 <SystemInit+0xdc>
 8001c92:	e7d0      	b.n	8001c36 <SystemInit+0x8a>
 8001c94:	e000ed00 	.word	0xe000ed00
 8001c98:	40021000 	.word	0x40021000
 8001c9c:	f87fc00c 	.word	0xf87fc00c
 8001ca0:	ff00fccc 	.word	0xff00fccc
 8001ca4:	40022000 	.word	0x40022000

08001ca8 <sys_tick_init>:
 8001ca8:	4b05      	ldr	r3, [pc, #20]	; (8001cc0 <sys_tick_init+0x18>)
 8001caa:	4a06      	ldr	r2, [pc, #24]	; (8001cc4 <sys_tick_init+0x1c>)
 8001cac:	605a      	str	r2, [r3, #4]
 8001cae:	4a06      	ldr	r2, [pc, #24]	; (8001cc8 <sys_tick_init+0x20>)
 8001cb0:	21f0      	movs	r1, #240	; 0xf0
 8001cb2:	f882 1023 	strb.w	r1, [r2, #35]	; 0x23
 8001cb6:	2200      	movs	r2, #0
 8001cb8:	609a      	str	r2, [r3, #8]
 8001cba:	2207      	movs	r2, #7
 8001cbc:	601a      	str	r2, [r3, #0]
 8001cbe:	4770      	bx	lr
 8001cc0:	e000e010 	.word	0xe000e010
 8001cc4:	00029040 	.word	0x00029040
 8001cc8:	e000ed00 	.word	0xe000ed00

08001ccc <sleep>:
 8001ccc:	bf30      	wfi
 8001cce:	4770      	bx	lr

08001cd0 <sytem_clock_init>:
 8001cd0:	f7ff bf6c 	b.w	8001bac <SystemInit>

08001cd4 <lib_low_level_init>:
 8001cd4:	b508      	push	{r3, lr}
 8001cd6:	f7ff fffb 	bl	8001cd0 <sytem_clock_init>
 8001cda:	f7ff fe89 	bl	80019f0 <gpio_init>
 8001cde:	f000 f9df 	bl	80020a0 <uart_init>
 8001ce2:	f000 fd39 	bl	8002758 <timer_init>
 8001ce6:	f000 fbbf 	bl	8002468 <pwm_init>
 8001cea:	f000 fb3f 	bl	800236c <drv8834_init>
 8001cee:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001cf2:	f7ff bdc1 	b.w	8001878 <i2c_0_init>
	...

08001cf8 <RCC_GetClocksFreq>:
 8001cf8:	4aaf      	ldr	r2, [pc, #700]	; (8001fb8 <RCC_GetClocksFreq+0x2c0>)
 8001cfa:	6851      	ldr	r1, [r2, #4]
 8001cfc:	f001 010c 	and.w	r1, r1, #12
 8001d00:	2904      	cmp	r1, #4
 8001d02:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8001d06:	d005      	beq.n	8001d14 <RCC_GetClocksFreq+0x1c>
 8001d08:	2908      	cmp	r1, #8
 8001d0a:	d006      	beq.n	8001d1a <RCC_GetClocksFreq+0x22>
 8001d0c:	4bab      	ldr	r3, [pc, #684]	; (8001fbc <RCC_GetClocksFreq+0x2c4>)
 8001d0e:	6003      	str	r3, [r0, #0]
 8001d10:	b9b9      	cbnz	r1, 8001d42 <RCC_GetClocksFreq+0x4a>
 8001d12:	e017      	b.n	8001d44 <RCC_GetClocksFreq+0x4c>
 8001d14:	4ba9      	ldr	r3, [pc, #676]	; (8001fbc <RCC_GetClocksFreq+0x2c4>)
 8001d16:	6003      	str	r3, [r0, #0]
 8001d18:	e013      	b.n	8001d42 <RCC_GetClocksFreq+0x4a>
 8001d1a:	6853      	ldr	r3, [r2, #4]
 8001d1c:	6854      	ldr	r4, [r2, #4]
 8001d1e:	f3c3 4383 	ubfx	r3, r3, #18, #4
 8001d22:	03e6      	lsls	r6, r4, #15
 8001d24:	f103 0302 	add.w	r3, r3, #2
 8001d28:	d401      	bmi.n	8001d2e <RCC_GetClocksFreq+0x36>
 8001d2a:	49a5      	ldr	r1, [pc, #660]	; (8001fc0 <RCC_GetClocksFreq+0x2c8>)
 8001d2c:	e006      	b.n	8001d3c <RCC_GetClocksFreq+0x44>
 8001d2e:	6ad1      	ldr	r1, [r2, #44]	; 0x2c
 8001d30:	4ca2      	ldr	r4, [pc, #648]	; (8001fbc <RCC_GetClocksFreq+0x2c4>)
 8001d32:	f001 010f 	and.w	r1, r1, #15
 8001d36:	3101      	adds	r1, #1
 8001d38:	fbb4 f1f1 	udiv	r1, r4, r1
 8001d3c:	4359      	muls	r1, r3
 8001d3e:	6001      	str	r1, [r0, #0]
 8001d40:	e000      	b.n	8001d44 <RCC_GetClocksFreq+0x4c>
 8001d42:	2100      	movs	r1, #0
 8001d44:	6853      	ldr	r3, [r2, #4]
 8001d46:	4e9f      	ldr	r6, [pc, #636]	; (8001fc4 <RCC_GetClocksFreq+0x2cc>)
 8001d48:	f8df 827c 	ldr.w	r8, [pc, #636]	; 8001fc8 <RCC_GetClocksFreq+0x2d0>
 8001d4c:	f3c3 1303 	ubfx	r3, r3, #4, #4
 8001d50:	5cf5      	ldrb	r5, [r6, r3]
 8001d52:	6803      	ldr	r3, [r0, #0]
 8001d54:	b2ed      	uxtb	r5, r5
 8001d56:	fa23 f405 	lsr.w	r4, r3, r5
 8001d5a:	6044      	str	r4, [r0, #4]
 8001d5c:	6857      	ldr	r7, [r2, #4]
 8001d5e:	f3c7 2702 	ubfx	r7, r7, #8, #3
 8001d62:	5df7      	ldrb	r7, [r6, r7]
 8001d64:	fa24 f707 	lsr.w	r7, r4, r7
 8001d68:	6087      	str	r7, [r0, #8]
 8001d6a:	f8d2 c004 	ldr.w	ip, [r2, #4]
 8001d6e:	f3cc 2cc2 	ubfx	ip, ip, #11, #3
 8001d72:	f816 600c 	ldrb.w	r6, [r6, ip]
 8001d76:	b2f6      	uxtb	r6, r6
 8001d78:	40f4      	lsrs	r4, r6
 8001d7a:	60c4      	str	r4, [r0, #12]
 8001d7c:	f8d2 902c 	ldr.w	r9, [r2, #44]	; 0x2c
 8001d80:	f3c9 1904 	ubfx	r9, r9, #4, #5
 8001d84:	f009 0c0f 	and.w	ip, r9, #15
 8001d88:	f019 0f10 	tst.w	r9, #16
 8001d8c:	f838 c01c 	ldrh.w	ip, [r8, ip, lsl #1]
 8001d90:	46c1      	mov	r9, r8
 8001d92:	fa1f fc8c 	uxth.w	ip, ip
 8001d96:	d007      	beq.n	8001da8 <RCC_GetClocksFreq+0xb0>
 8001d98:	f1bc 0f00 	cmp.w	ip, #0
 8001d9c:	d004      	beq.n	8001da8 <RCC_GetClocksFreq+0xb0>
 8001d9e:	fbb1 fcfc 	udiv	ip, r1, ip
 8001da2:	f8c0 c010 	str.w	ip, [r0, #16]
 8001da6:	e000      	b.n	8001daa <RCC_GetClocksFreq+0xb2>
 8001da8:	6103      	str	r3, [r0, #16]
 8001daa:	f8d2 802c 	ldr.w	r8, [r2, #44]	; 0x2c
 8001dae:	f3c8 2844 	ubfx	r8, r8, #9, #5
 8001db2:	f008 0c0f 	and.w	ip, r8, #15
 8001db6:	f018 0f10 	tst.w	r8, #16
 8001dba:	f839 c01c 	ldrh.w	ip, [r9, ip, lsl #1]
 8001dbe:	fa1f fc8c 	uxth.w	ip, ip
 8001dc2:	d007      	beq.n	8001dd4 <RCC_GetClocksFreq+0xdc>
 8001dc4:	f1bc 0f00 	cmp.w	ip, #0
 8001dc8:	d004      	beq.n	8001dd4 <RCC_GetClocksFreq+0xdc>
 8001dca:	fbb1 fcfc 	udiv	ip, r1, ip
 8001dce:	f8c0 c014 	str.w	ip, [r0, #20]
 8001dd2:	e000      	b.n	8001dd6 <RCC_GetClocksFreq+0xde>
 8001dd4:	6143      	str	r3, [r0, #20]
 8001dd6:	f8d2 c030 	ldr.w	ip, [r2, #48]	; 0x30
 8001dda:	f01c 0f10 	tst.w	ip, #16
 8001dde:	bf06      	itte	eq
 8001de0:	f8df c1d8 	ldreq.w	ip, [pc, #472]	; 8001fbc <RCC_GetClocksFreq+0x2c4>
 8001de4:	f8c0 c018 	streq.w	ip, [r0, #24]
 8001de8:	6183      	strne	r3, [r0, #24]
 8001dea:	f8d2 c030 	ldr.w	ip, [r2, #48]	; 0x30
 8001dee:	f01c 0f20 	tst.w	ip, #32
 8001df2:	bf06      	itte	eq
 8001df4:	f8df c1c4 	ldreq.w	ip, [pc, #452]	; 8001fbc <RCC_GetClocksFreq+0x2c4>
 8001df8:	f8c0 c01c 	streq.w	ip, [r0, #28]
 8001dfc:	61c3      	strne	r3, [r0, #28]
 8001dfe:	f8d2 c030 	ldr.w	ip, [r2, #48]	; 0x30
 8001e02:	f01c 0f40 	tst.w	ip, #64	; 0x40
 8001e06:	bf06      	itte	eq
 8001e08:	f8df c1b0 	ldreq.w	ip, [pc, #432]	; 8001fbc <RCC_GetClocksFreq+0x2c4>
 8001e0c:	f8c0 c020 	streq.w	ip, [r0, #32]
 8001e10:	6203      	strne	r3, [r0, #32]
 8001e12:	f8d2 c030 	ldr.w	ip, [r2, #48]	; 0x30
 8001e16:	f41c 7f80 	tst.w	ip, #256	; 0x100
 8001e1a:	d008      	beq.n	8001e2e <RCC_GetClocksFreq+0x136>
 8001e1c:	428b      	cmp	r3, r1
 8001e1e:	d106      	bne.n	8001e2e <RCC_GetClocksFreq+0x136>
 8001e20:	42ae      	cmp	r6, r5
 8001e22:	d104      	bne.n	8001e2e <RCC_GetClocksFreq+0x136>
 8001e24:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8001e28:	f8c0 c024 	str.w	ip, [r0, #36]	; 0x24
 8001e2c:	e000      	b.n	8001e30 <RCC_GetClocksFreq+0x138>
 8001e2e:	6244      	str	r4, [r0, #36]	; 0x24
 8001e30:	f8d2 c030 	ldr.w	ip, [r2, #48]	; 0x30
 8001e34:	f41c 5f80 	tst.w	ip, #4096	; 0x1000
 8001e38:	d008      	beq.n	8001e4c <RCC_GetClocksFreq+0x154>
 8001e3a:	428b      	cmp	r3, r1
 8001e3c:	d106      	bne.n	8001e4c <RCC_GetClocksFreq+0x154>
 8001e3e:	42ae      	cmp	r6, r5
 8001e40:	d104      	bne.n	8001e4c <RCC_GetClocksFreq+0x154>
 8001e42:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8001e46:	f8c0 c028 	str.w	ip, [r0, #40]	; 0x28
 8001e4a:	e000      	b.n	8001e4e <RCC_GetClocksFreq+0x156>
 8001e4c:	6284      	str	r4, [r0, #40]	; 0x28
 8001e4e:	f8d2 c030 	ldr.w	ip, [r2, #48]	; 0x30
 8001e52:	f41c 7f00 	tst.w	ip, #512	; 0x200
 8001e56:	d008      	beq.n	8001e6a <RCC_GetClocksFreq+0x172>
 8001e58:	428b      	cmp	r3, r1
 8001e5a:	d106      	bne.n	8001e6a <RCC_GetClocksFreq+0x172>
 8001e5c:	42ae      	cmp	r6, r5
 8001e5e:	d104      	bne.n	8001e6a <RCC_GetClocksFreq+0x172>
 8001e60:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8001e64:	f8c0 c02c 	str.w	ip, [r0, #44]	; 0x2c
 8001e68:	e000      	b.n	8001e6c <RCC_GetClocksFreq+0x174>
 8001e6a:	62c4      	str	r4, [r0, #44]	; 0x2c
 8001e6c:	f8d2 c030 	ldr.w	ip, [r2, #48]	; 0x30
 8001e70:	f41c 6f80 	tst.w	ip, #1024	; 0x400
 8001e74:	d008      	beq.n	8001e88 <RCC_GetClocksFreq+0x190>
 8001e76:	428b      	cmp	r3, r1
 8001e78:	d106      	bne.n	8001e88 <RCC_GetClocksFreq+0x190>
 8001e7a:	42ae      	cmp	r6, r5
 8001e7c:	d104      	bne.n	8001e88 <RCC_GetClocksFreq+0x190>
 8001e7e:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8001e82:	f8c0 c04c 	str.w	ip, [r0, #76]	; 0x4c
 8001e86:	e000      	b.n	8001e8a <RCC_GetClocksFreq+0x192>
 8001e88:	64c4      	str	r4, [r0, #76]	; 0x4c
 8001e8a:	f8d2 c030 	ldr.w	ip, [r2, #48]	; 0x30
 8001e8e:	f41c 6f00 	tst.w	ip, #2048	; 0x800
 8001e92:	d008      	beq.n	8001ea6 <RCC_GetClocksFreq+0x1ae>
 8001e94:	428b      	cmp	r3, r1
 8001e96:	d106      	bne.n	8001ea6 <RCC_GetClocksFreq+0x1ae>
 8001e98:	42ae      	cmp	r6, r5
 8001e9a:	d104      	bne.n	8001ea6 <RCC_GetClocksFreq+0x1ae>
 8001e9c:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8001ea0:	f8c0 c050 	str.w	ip, [r0, #80]	; 0x50
 8001ea4:	e000      	b.n	8001ea8 <RCC_GetClocksFreq+0x1b0>
 8001ea6:	6504      	str	r4, [r0, #80]	; 0x50
 8001ea8:	f8d2 c030 	ldr.w	ip, [r2, #48]	; 0x30
 8001eac:	f41c 5f00 	tst.w	ip, #8192	; 0x2000
 8001eb0:	d008      	beq.n	8001ec4 <RCC_GetClocksFreq+0x1cc>
 8001eb2:	428b      	cmp	r3, r1
 8001eb4:	d106      	bne.n	8001ec4 <RCC_GetClocksFreq+0x1cc>
 8001eb6:	42ae      	cmp	r6, r5
 8001eb8:	d104      	bne.n	8001ec4 <RCC_GetClocksFreq+0x1cc>
 8001eba:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8001ebe:	f8c0 c054 	str.w	ip, [r0, #84]	; 0x54
 8001ec2:	e000      	b.n	8001ec6 <RCC_GetClocksFreq+0x1ce>
 8001ec4:	6504      	str	r4, [r0, #80]	; 0x50
 8001ec6:	f8d2 c030 	ldr.w	ip, [r2, #48]	; 0x30
 8001eca:	f41c 4f00 	tst.w	ip, #32768	; 0x8000
 8001ece:	d006      	beq.n	8001ede <RCC_GetClocksFreq+0x1e6>
 8001ed0:	428b      	cmp	r3, r1
 8001ed2:	d104      	bne.n	8001ede <RCC_GetClocksFreq+0x1e6>
 8001ed4:	42ae      	cmp	r6, r5
 8001ed6:	d102      	bne.n	8001ede <RCC_GetClocksFreq+0x1e6>
 8001ed8:	0059      	lsls	r1, r3, #1
 8001eda:	6581      	str	r1, [r0, #88]	; 0x58
 8001edc:	e000      	b.n	8001ee0 <RCC_GetClocksFreq+0x1e8>
 8001ede:	6584      	str	r4, [r0, #88]	; 0x58
 8001ee0:	6b15      	ldr	r5, [r2, #48]	; 0x30
 8001ee2:	4935      	ldr	r1, [pc, #212]	; (8001fb8 <RCC_GetClocksFreq+0x2c0>)
 8001ee4:	07ad      	lsls	r5, r5, #30
 8001ee6:	d101      	bne.n	8001eec <RCC_GetClocksFreq+0x1f4>
 8001ee8:	6384      	str	r4, [r0, #56]	; 0x38
 8001eea:	e015      	b.n	8001f18 <RCC_GetClocksFreq+0x220>
 8001eec:	6b0c      	ldr	r4, [r1, #48]	; 0x30
 8001eee:	f004 0403 	and.w	r4, r4, #3
 8001ef2:	2c01      	cmp	r4, #1
 8001ef4:	d101      	bne.n	8001efa <RCC_GetClocksFreq+0x202>
 8001ef6:	6383      	str	r3, [r0, #56]	; 0x38
 8001ef8:	e00e      	b.n	8001f18 <RCC_GetClocksFreq+0x220>
 8001efa:	6b0c      	ldr	r4, [r1, #48]	; 0x30
 8001efc:	f004 0403 	and.w	r4, r4, #3
 8001f00:	2c02      	cmp	r4, #2
 8001f02:	d102      	bne.n	8001f0a <RCC_GetClocksFreq+0x212>
 8001f04:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 8001f08:	e005      	b.n	8001f16 <RCC_GetClocksFreq+0x21e>
 8001f0a:	6b09      	ldr	r1, [r1, #48]	; 0x30
 8001f0c:	f001 0103 	and.w	r1, r1, #3
 8001f10:	2903      	cmp	r1, #3
 8001f12:	d101      	bne.n	8001f18 <RCC_GetClocksFreq+0x220>
 8001f14:	4929      	ldr	r1, [pc, #164]	; (8001fbc <RCC_GetClocksFreq+0x2c4>)
 8001f16:	6381      	str	r1, [r0, #56]	; 0x38
 8001f18:	6b14      	ldr	r4, [r2, #48]	; 0x30
 8001f1a:	4927      	ldr	r1, [pc, #156]	; (8001fb8 <RCC_GetClocksFreq+0x2c0>)
 8001f1c:	f414 3f40 	tst.w	r4, #196608	; 0x30000
 8001f20:	d101      	bne.n	8001f26 <RCC_GetClocksFreq+0x22e>
 8001f22:	63c7      	str	r7, [r0, #60]	; 0x3c
 8001f24:	e018      	b.n	8001f58 <RCC_GetClocksFreq+0x260>
 8001f26:	6b0c      	ldr	r4, [r1, #48]	; 0x30
 8001f28:	f404 3440 	and.w	r4, r4, #196608	; 0x30000
 8001f2c:	f5b4 3f80 	cmp.w	r4, #65536	; 0x10000
 8001f30:	d101      	bne.n	8001f36 <RCC_GetClocksFreq+0x23e>
 8001f32:	63c3      	str	r3, [r0, #60]	; 0x3c
 8001f34:	e010      	b.n	8001f58 <RCC_GetClocksFreq+0x260>
 8001f36:	6b0c      	ldr	r4, [r1, #48]	; 0x30
 8001f38:	f404 3440 	and.w	r4, r4, #196608	; 0x30000
 8001f3c:	f5b4 3f00 	cmp.w	r4, #131072	; 0x20000
 8001f40:	d102      	bne.n	8001f48 <RCC_GetClocksFreq+0x250>
 8001f42:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 8001f46:	e006      	b.n	8001f56 <RCC_GetClocksFreq+0x25e>
 8001f48:	6b09      	ldr	r1, [r1, #48]	; 0x30
 8001f4a:	f401 3140 	and.w	r1, r1, #196608	; 0x30000
 8001f4e:	f5b1 3f40 	cmp.w	r1, #196608	; 0x30000
 8001f52:	d101      	bne.n	8001f58 <RCC_GetClocksFreq+0x260>
 8001f54:	4919      	ldr	r1, [pc, #100]	; (8001fbc <RCC_GetClocksFreq+0x2c4>)
 8001f56:	63c1      	str	r1, [r0, #60]	; 0x3c
 8001f58:	6b14      	ldr	r4, [r2, #48]	; 0x30
 8001f5a:	4917      	ldr	r1, [pc, #92]	; (8001fb8 <RCC_GetClocksFreq+0x2c0>)
 8001f5c:	f414 2f40 	tst.w	r4, #786432	; 0xc0000
 8001f60:	d101      	bne.n	8001f66 <RCC_GetClocksFreq+0x26e>
 8001f62:	6407      	str	r7, [r0, #64]	; 0x40
 8001f64:	e018      	b.n	8001f98 <RCC_GetClocksFreq+0x2a0>
 8001f66:	6b0c      	ldr	r4, [r1, #48]	; 0x30
 8001f68:	f404 2440 	and.w	r4, r4, #786432	; 0xc0000
 8001f6c:	f5b4 2f80 	cmp.w	r4, #262144	; 0x40000
 8001f70:	d101      	bne.n	8001f76 <RCC_GetClocksFreq+0x27e>
 8001f72:	6403      	str	r3, [r0, #64]	; 0x40
 8001f74:	e010      	b.n	8001f98 <RCC_GetClocksFreq+0x2a0>
 8001f76:	6b0c      	ldr	r4, [r1, #48]	; 0x30
 8001f78:	f404 2440 	and.w	r4, r4, #786432	; 0xc0000
 8001f7c:	f5b4 2f00 	cmp.w	r4, #524288	; 0x80000
 8001f80:	d102      	bne.n	8001f88 <RCC_GetClocksFreq+0x290>
 8001f82:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 8001f86:	e006      	b.n	8001f96 <RCC_GetClocksFreq+0x29e>
 8001f88:	6b09      	ldr	r1, [r1, #48]	; 0x30
 8001f8a:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 8001f8e:	f5b1 2f40 	cmp.w	r1, #786432	; 0xc0000
 8001f92:	d101      	bne.n	8001f98 <RCC_GetClocksFreq+0x2a0>
 8001f94:	4909      	ldr	r1, [pc, #36]	; (8001fbc <RCC_GetClocksFreq+0x2c4>)
 8001f96:	6401      	str	r1, [r0, #64]	; 0x40
 8001f98:	6b14      	ldr	r4, [r2, #48]	; 0x30
 8001f9a:	4907      	ldr	r1, [pc, #28]	; (8001fb8 <RCC_GetClocksFreq+0x2c0>)
 8001f9c:	f414 1f40 	tst.w	r4, #3145728	; 0x300000
 8001fa0:	d101      	bne.n	8001fa6 <RCC_GetClocksFreq+0x2ae>
 8001fa2:	6447      	str	r7, [r0, #68]	; 0x44
 8001fa4:	e023      	b.n	8001fee <RCC_GetClocksFreq+0x2f6>
 8001fa6:	6b0c      	ldr	r4, [r1, #48]	; 0x30
 8001fa8:	f404 1440 	and.w	r4, r4, #3145728	; 0x300000
 8001fac:	f5b4 1f80 	cmp.w	r4, #1048576	; 0x100000
 8001fb0:	d10c      	bne.n	8001fcc <RCC_GetClocksFreq+0x2d4>
 8001fb2:	6443      	str	r3, [r0, #68]	; 0x44
 8001fb4:	e01b      	b.n	8001fee <RCC_GetClocksFreq+0x2f6>
 8001fb6:	bf00      	nop
 8001fb8:	40021000 	.word	0x40021000
 8001fbc:	007a1200 	.word	0x007a1200
 8001fc0:	003d0900 	.word	0x003d0900
 8001fc4:	20000144 	.word	0x20000144
 8001fc8:	20000124 	.word	0x20000124
 8001fcc:	6b0c      	ldr	r4, [r1, #48]	; 0x30
 8001fce:	f404 1440 	and.w	r4, r4, #3145728	; 0x300000
 8001fd2:	f5b4 1f00 	cmp.w	r4, #2097152	; 0x200000
 8001fd6:	d102      	bne.n	8001fde <RCC_GetClocksFreq+0x2e6>
 8001fd8:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 8001fdc:	e006      	b.n	8001fec <RCC_GetClocksFreq+0x2f4>
 8001fde:	6b09      	ldr	r1, [r1, #48]	; 0x30
 8001fe0:	f401 1140 	and.w	r1, r1, #3145728	; 0x300000
 8001fe4:	f5b1 1f40 	cmp.w	r1, #3145728	; 0x300000
 8001fe8:	d101      	bne.n	8001fee <RCC_GetClocksFreq+0x2f6>
 8001fea:	4911      	ldr	r1, [pc, #68]	; (8002030 <RCC_GetClocksFreq+0x338>)
 8001fec:	6441      	str	r1, [r0, #68]	; 0x44
 8001fee:	6b12      	ldr	r2, [r2, #48]	; 0x30
 8001ff0:	4910      	ldr	r1, [pc, #64]	; (8002034 <RCC_GetClocksFreq+0x33c>)
 8001ff2:	f412 0f40 	tst.w	r2, #12582912	; 0xc00000
 8001ff6:	d102      	bne.n	8001ffe <RCC_GetClocksFreq+0x306>
 8001ff8:	6487      	str	r7, [r0, #72]	; 0x48
 8001ffa:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8001ffe:	6b0a      	ldr	r2, [r1, #48]	; 0x30
 8002000:	f402 0240 	and.w	r2, r2, #12582912	; 0xc00000
 8002004:	f5b2 0f80 	cmp.w	r2, #4194304	; 0x400000
 8002008:	d00f      	beq.n	800202a <RCC_GetClocksFreq+0x332>
 800200a:	6b0b      	ldr	r3, [r1, #48]	; 0x30
 800200c:	f403 0340 	and.w	r3, r3, #12582912	; 0xc00000
 8002010:	f5b3 0f00 	cmp.w	r3, #8388608	; 0x800000
 8002014:	d102      	bne.n	800201c <RCC_GetClocksFreq+0x324>
 8002016:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 800201a:	e006      	b.n	800202a <RCC_GetClocksFreq+0x332>
 800201c:	6b0b      	ldr	r3, [r1, #48]	; 0x30
 800201e:	f403 0340 	and.w	r3, r3, #12582912	; 0xc00000
 8002022:	f5b3 0f40 	cmp.w	r3, #12582912	; 0xc00000
 8002026:	d101      	bne.n	800202c <RCC_GetClocksFreq+0x334>
 8002028:	4b01      	ldr	r3, [pc, #4]	; (8002030 <RCC_GetClocksFreq+0x338>)
 800202a:	6483      	str	r3, [r0, #72]	; 0x48
 800202c:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8002030:	007a1200 	.word	0x007a1200
 8002034:	40021000 	.word	0x40021000

08002038 <RCC_AHBPeriphClockCmd>:
 8002038:	bf00      	nop
 800203a:	bf00      	nop
 800203c:	4b04      	ldr	r3, [pc, #16]	; (8002050 <RCC_AHBPeriphClockCmd+0x18>)
 800203e:	695a      	ldr	r2, [r3, #20]
 8002040:	b109      	cbz	r1, 8002046 <RCC_AHBPeriphClockCmd+0xe>
 8002042:	4310      	orrs	r0, r2
 8002044:	e001      	b.n	800204a <RCC_AHBPeriphClockCmd+0x12>
 8002046:	ea22 0000 	bic.w	r0, r2, r0
 800204a:	6158      	str	r0, [r3, #20]
 800204c:	4770      	bx	lr
 800204e:	bf00      	nop
 8002050:	40021000 	.word	0x40021000

08002054 <RCC_APB2PeriphClockCmd>:
 8002054:	bf00      	nop
 8002056:	bf00      	nop
 8002058:	4b04      	ldr	r3, [pc, #16]	; (800206c <RCC_APB2PeriphClockCmd+0x18>)
 800205a:	699a      	ldr	r2, [r3, #24]
 800205c:	b109      	cbz	r1, 8002062 <RCC_APB2PeriphClockCmd+0xe>
 800205e:	4310      	orrs	r0, r2
 8002060:	e001      	b.n	8002066 <RCC_APB2PeriphClockCmd+0x12>
 8002062:	ea22 0000 	bic.w	r0, r2, r0
 8002066:	6198      	str	r0, [r3, #24]
 8002068:	4770      	bx	lr
 800206a:	bf00      	nop
 800206c:	40021000 	.word	0x40021000

08002070 <RCC_APB1PeriphClockCmd>:
 8002070:	bf00      	nop
 8002072:	bf00      	nop
 8002074:	4b04      	ldr	r3, [pc, #16]	; (8002088 <RCC_APB1PeriphClockCmd+0x18>)
 8002076:	69da      	ldr	r2, [r3, #28]
 8002078:	b109      	cbz	r1, 800207e <RCC_APB1PeriphClockCmd+0xe>
 800207a:	4310      	orrs	r0, r2
 800207c:	e001      	b.n	8002082 <RCC_APB1PeriphClockCmd+0x12>
 800207e:	ea22 0000 	bic.w	r0, r2, r0
 8002082:	61d8      	str	r0, [r3, #28]
 8002084:	4770      	bx	lr
 8002086:	bf00      	nop
 8002088:	40021000 	.word	0x40021000

0800208c <uart_write>:
 800208c:	4b03      	ldr	r3, [pc, #12]	; (800209c <uart_write+0x10>)
 800208e:	69da      	ldr	r2, [r3, #28]
 8002090:	0612      	lsls	r2, r2, #24
 8002092:	d401      	bmi.n	8002098 <uart_write+0xc>
 8002094:	bf00      	nop
 8002096:	e7f9      	b.n	800208c <uart_write>
 8002098:	8518      	strh	r0, [r3, #40]	; 0x28
 800209a:	4770      	bx	lr
 800209c:	40013800 	.word	0x40013800

080020a0 <uart_init>:
 80020a0:	b530      	push	{r4, r5, lr}
 80020a2:	4b2c      	ldr	r3, [pc, #176]	; (8002154 <uart_init+0xb4>)
 80020a4:	4d2c      	ldr	r5, [pc, #176]	; (8002158 <uart_init+0xb8>)
 80020a6:	2400      	movs	r4, #0
 80020a8:	601c      	str	r4, [r3, #0]
 80020aa:	4b2c      	ldr	r3, [pc, #176]	; (800215c <uart_init+0xbc>)
 80020ac:	b08b      	sub	sp, #44	; 0x2c
 80020ae:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 80020b2:	2101      	movs	r1, #1
 80020b4:	601c      	str	r4, [r3, #0]
 80020b6:	f7ff ffbf 	bl	8002038 <RCC_AHBPeriphClockCmd>
 80020ba:	f44f 4080 	mov.w	r0, #16384	; 0x4000
 80020be:	2101      	movs	r1, #1
 80020c0:	f7ff ffc8 	bl	8002054 <RCC_APB2PeriphClockCmd>
 80020c4:	f44f 63c0 	mov.w	r3, #1536	; 0x600
 80020c8:	9302      	str	r3, [sp, #8]
 80020ca:	2302      	movs	r3, #2
 80020cc:	f88d 300c 	strb.w	r3, [sp, #12]
 80020d0:	a902      	add	r1, sp, #8
 80020d2:	2303      	movs	r3, #3
 80020d4:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80020d8:	f88d 300d 	strb.w	r3, [sp, #13]
 80020dc:	f88d 400e 	strb.w	r4, [sp, #14]
 80020e0:	f88d 400f 	strb.w	r4, [sp, #15]
 80020e4:	f7ff fcfe 	bl	8001ae4 <GPIO_Init>
 80020e8:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80020ec:	2109      	movs	r1, #9
 80020ee:	2207      	movs	r2, #7
 80020f0:	f7ff fd45 	bl	8001b7e <GPIO_PinAFConfig>
 80020f4:	2207      	movs	r2, #7
 80020f6:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80020fa:	210a      	movs	r1, #10
 80020fc:	f7ff fd3f 	bl	8001b7e <GPIO_PinAFConfig>
 8002100:	f44f 33e1 	mov.w	r3, #115200	; 0x1c200
 8002104:	9304      	str	r3, [sp, #16]
 8002106:	4628      	mov	r0, r5
 8002108:	230c      	movs	r3, #12
 800210a:	a904      	add	r1, sp, #16
 800210c:	9308      	str	r3, [sp, #32]
 800210e:	9405      	str	r4, [sp, #20]
 8002110:	9406      	str	r4, [sp, #24]
 8002112:	9407      	str	r4, [sp, #28]
 8002114:	9409      	str	r4, [sp, #36]	; 0x24
 8002116:	f000 f849 	bl	80021ac <USART_Init>
 800211a:	4628      	mov	r0, r5
 800211c:	2101      	movs	r1, #1
 800211e:	f000 f8a7 	bl	8002270 <USART_Cmd>
 8002122:	2201      	movs	r2, #1
 8002124:	4628      	mov	r0, r5
 8002126:	490e      	ldr	r1, [pc, #56]	; (8002160 <uart_init+0xc0>)
 8002128:	f000 f8b2 	bl	8002290 <USART_ITConfig>
 800212c:	2325      	movs	r3, #37	; 0x25
 800212e:	f88d 4005 	strb.w	r4, [sp, #5]
 8002132:	f88d 4006 	strb.w	r4, [sp, #6]
 8002136:	a801      	add	r0, sp, #4
 8002138:	2401      	movs	r4, #1
 800213a:	f88d 3004 	strb.w	r3, [sp, #4]
 800213e:	f88d 4007 	strb.w	r4, [sp, #7]
 8002142:	f000 f9df 	bl	8002504 <NVIC_Init>
 8002146:	4628      	mov	r0, r5
 8002148:	4621      	mov	r1, r4
 800214a:	f000 f891 	bl	8002270 <USART_Cmd>
 800214e:	b00b      	add	sp, #44	; 0x2c
 8002150:	bd30      	pop	{r4, r5, pc}
 8002152:	bf00      	nop
 8002154:	20000eac 	.word	0x20000eac
 8002158:	40013800 	.word	0x40013800
 800215c:	20000eb0 	.word	0x20000eb0
 8002160:	00050105 	.word	0x00050105

08002164 <USART1_IRQHandler>:
 8002164:	b508      	push	{r3, lr}
 8002166:	480d      	ldr	r0, [pc, #52]	; (800219c <USART1_IRQHandler+0x38>)
 8002168:	490d      	ldr	r1, [pc, #52]	; (80021a0 <USART1_IRQHandler+0x3c>)
 800216a:	f000 f8aa 	bl	80022c2 <USART_GetITStatus>
 800216e:	b178      	cbz	r0, 8002190 <USART1_IRQHandler+0x2c>
 8002170:	480a      	ldr	r0, [pc, #40]	; (800219c <USART1_IRQHandler+0x38>)
 8002172:	f000 f888 	bl	8002286 <USART_ReceiveData>
 8002176:	4b0b      	ldr	r3, [pc, #44]	; (80021a4 <USART1_IRQHandler+0x40>)
 8002178:	490b      	ldr	r1, [pc, #44]	; (80021a8 <USART1_IRQHandler+0x44>)
 800217a:	681a      	ldr	r2, [r3, #0]
 800217c:	b2c0      	uxtb	r0, r0
 800217e:	5488      	strb	r0, [r1, r2]
 8002180:	681a      	ldr	r2, [r3, #0]
 8002182:	3201      	adds	r2, #1
 8002184:	601a      	str	r2, [r3, #0]
 8002186:	681a      	ldr	r2, [r3, #0]
 8002188:	2a0f      	cmp	r2, #15
 800218a:	bf84      	itt	hi
 800218c:	2200      	movhi	r2, #0
 800218e:	601a      	strhi	r2, [r3, #0]
 8002190:	4802      	ldr	r0, [pc, #8]	; (800219c <USART1_IRQHandler+0x38>)
 8002192:	4903      	ldr	r1, [pc, #12]	; (80021a0 <USART1_IRQHandler+0x3c>)
 8002194:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8002198:	f000 b8b2 	b.w	8002300 <USART_ClearITPendingBit>
 800219c:	40013800 	.word	0x40013800
 80021a0:	00050105 	.word	0x00050105
 80021a4:	20000eac 	.word	0x20000eac
 80021a8:	20000e9c 	.word	0x20000e9c

080021ac <USART_Init>:
 80021ac:	b530      	push	{r4, r5, lr}
 80021ae:	4604      	mov	r4, r0
 80021b0:	b099      	sub	sp, #100	; 0x64
 80021b2:	460d      	mov	r5, r1
 80021b4:	bf00      	nop
 80021b6:	bf00      	nop
 80021b8:	bf00      	nop
 80021ba:	bf00      	nop
 80021bc:	bf00      	nop
 80021be:	bf00      	nop
 80021c0:	bf00      	nop
 80021c2:	6803      	ldr	r3, [r0, #0]
 80021c4:	f023 0301 	bic.w	r3, r3, #1
 80021c8:	6003      	str	r3, [r0, #0]
 80021ca:	6842      	ldr	r2, [r0, #4]
 80021cc:	688b      	ldr	r3, [r1, #8]
 80021ce:	68c9      	ldr	r1, [r1, #12]
 80021d0:	f422 5240 	bic.w	r2, r2, #12288	; 0x3000
 80021d4:	4313      	orrs	r3, r2
 80021d6:	6043      	str	r3, [r0, #4]
 80021d8:	686a      	ldr	r2, [r5, #4]
 80021da:	6803      	ldr	r3, [r0, #0]
 80021dc:	4311      	orrs	r1, r2
 80021de:	692a      	ldr	r2, [r5, #16]
 80021e0:	f423 53b0 	bic.w	r3, r3, #5632	; 0x1600
 80021e4:	430a      	orrs	r2, r1
 80021e6:	f023 030c 	bic.w	r3, r3, #12
 80021ea:	4313      	orrs	r3, r2
 80021ec:	6003      	str	r3, [r0, #0]
 80021ee:	6882      	ldr	r2, [r0, #8]
 80021f0:	696b      	ldr	r3, [r5, #20]
 80021f2:	f422 7240 	bic.w	r2, r2, #768	; 0x300
 80021f6:	4313      	orrs	r3, r2
 80021f8:	6083      	str	r3, [r0, #8]
 80021fa:	a801      	add	r0, sp, #4
 80021fc:	f7ff fd7c 	bl	8001cf8 <RCC_GetClocksFreq>
 8002200:	4b17      	ldr	r3, [pc, #92]	; (8002260 <USART_Init+0xb4>)
 8002202:	429c      	cmp	r4, r3
 8002204:	d101      	bne.n	800220a <USART_Init+0x5e>
 8002206:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8002208:	e00e      	b.n	8002228 <USART_Init+0x7c>
 800220a:	4b16      	ldr	r3, [pc, #88]	; (8002264 <USART_Init+0xb8>)
 800220c:	429c      	cmp	r4, r3
 800220e:	d101      	bne.n	8002214 <USART_Init+0x68>
 8002210:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8002212:	e009      	b.n	8002228 <USART_Init+0x7c>
 8002214:	4b14      	ldr	r3, [pc, #80]	; (8002268 <USART_Init+0xbc>)
 8002216:	429c      	cmp	r4, r3
 8002218:	d101      	bne.n	800221e <USART_Init+0x72>
 800221a:	9a11      	ldr	r2, [sp, #68]	; 0x44
 800221c:	e004      	b.n	8002228 <USART_Init+0x7c>
 800221e:	4b13      	ldr	r3, [pc, #76]	; (800226c <USART_Init+0xc0>)
 8002220:	429c      	cmp	r4, r3
 8002222:	bf0c      	ite	eq
 8002224:	9a12      	ldreq	r2, [sp, #72]	; 0x48
 8002226:	9a13      	ldrne	r2, [sp, #76]	; 0x4c
 8002228:	6823      	ldr	r3, [r4, #0]
 800222a:	6829      	ldr	r1, [r5, #0]
 800222c:	f413 4f00 	tst.w	r3, #32768	; 0x8000
 8002230:	bf18      	it	ne
 8002232:	0052      	lslne	r2, r2, #1
 8002234:	fbb2 f3f1 	udiv	r3, r2, r1
 8002238:	fb01 2213 	mls	r2, r1, r3, r2
 800223c:	ebb2 0f51 	cmp.w	r2, r1, lsr #1
 8002240:	6822      	ldr	r2, [r4, #0]
 8002242:	bf28      	it	cs
 8002244:	3301      	addcs	r3, #1
 8002246:	0412      	lsls	r2, r2, #16
 8002248:	d506      	bpl.n	8002258 <USART_Init+0xac>
 800224a:	f64f 72f0 	movw	r2, #65520	; 0xfff0
 800224e:	f3c3 0142 	ubfx	r1, r3, #1, #3
 8002252:	401a      	ands	r2, r3
 8002254:	ea41 0302 	orr.w	r3, r1, r2
 8002258:	b29b      	uxth	r3, r3
 800225a:	81a3      	strh	r3, [r4, #12]
 800225c:	b019      	add	sp, #100	; 0x64
 800225e:	bd30      	pop	{r4, r5, pc}
 8002260:	40013800 	.word	0x40013800
 8002264:	40004400 	.word	0x40004400
 8002268:	40004800 	.word	0x40004800
 800226c:	40004c00 	.word	0x40004c00

08002270 <USART_Cmd>:
 8002270:	bf00      	nop
 8002272:	bf00      	nop
 8002274:	6803      	ldr	r3, [r0, #0]
 8002276:	b111      	cbz	r1, 800227e <USART_Cmd+0xe>
 8002278:	f043 0301 	orr.w	r3, r3, #1
 800227c:	e001      	b.n	8002282 <USART_Cmd+0x12>
 800227e:	f023 0301 	bic.w	r3, r3, #1
 8002282:	6003      	str	r3, [r0, #0]
 8002284:	4770      	bx	lr

08002286 <USART_ReceiveData>:
 8002286:	bf00      	nop
 8002288:	8c80      	ldrh	r0, [r0, #36]	; 0x24
 800228a:	f3c0 0008 	ubfx	r0, r0, #0, #9
 800228e:	4770      	bx	lr

08002290 <USART_ITConfig>:
 8002290:	b510      	push	{r4, lr}
 8002292:	bf00      	nop
 8002294:	bf00      	nop
 8002296:	bf00      	nop
 8002298:	f3c1 2307 	ubfx	r3, r1, #8, #8
 800229c:	2401      	movs	r4, #1
 800229e:	b2c9      	uxtb	r1, r1
 80022a0:	2b02      	cmp	r3, #2
 80022a2:	fa04 f101 	lsl.w	r1, r4, r1
 80022a6:	d101      	bne.n	80022ac <USART_ITConfig+0x1c>
 80022a8:	3004      	adds	r0, #4
 80022aa:	e002      	b.n	80022b2 <USART_ITConfig+0x22>
 80022ac:	2b03      	cmp	r3, #3
 80022ae:	bf08      	it	eq
 80022b0:	3008      	addeq	r0, #8
 80022b2:	6803      	ldr	r3, [r0, #0]
 80022b4:	b10a      	cbz	r2, 80022ba <USART_ITConfig+0x2a>
 80022b6:	4319      	orrs	r1, r3
 80022b8:	e001      	b.n	80022be <USART_ITConfig+0x2e>
 80022ba:	ea23 0101 	bic.w	r1, r3, r1
 80022be:	6001      	str	r1, [r0, #0]
 80022c0:	bd10      	pop	{r4, pc}

080022c2 <USART_GetITStatus>:
 80022c2:	b510      	push	{r4, lr}
 80022c4:	bf00      	nop
 80022c6:	bf00      	nop
 80022c8:	2401      	movs	r4, #1
 80022ca:	f3c1 2207 	ubfx	r2, r1, #8, #8
 80022ce:	b2cb      	uxtb	r3, r1
 80022d0:	42a2      	cmp	r2, r4
 80022d2:	fa04 f303 	lsl.w	r3, r4, r3
 80022d6:	d101      	bne.n	80022dc <USART_GetITStatus+0x1a>
 80022d8:	6802      	ldr	r2, [r0, #0]
 80022da:	e003      	b.n	80022e4 <USART_GetITStatus+0x22>
 80022dc:	2a02      	cmp	r2, #2
 80022de:	bf0c      	ite	eq
 80022e0:	6842      	ldreq	r2, [r0, #4]
 80022e2:	6882      	ldrne	r2, [r0, #8]
 80022e4:	4013      	ands	r3, r2
 80022e6:	69c2      	ldr	r2, [r0, #28]
 80022e8:	b143      	cbz	r3, 80022fc <USART_GetITStatus+0x3a>
 80022ea:	2301      	movs	r3, #1
 80022ec:	0c09      	lsrs	r1, r1, #16
 80022ee:	fa03 f101 	lsl.w	r1, r3, r1
 80022f2:	4211      	tst	r1, r2
 80022f4:	bf0c      	ite	eq
 80022f6:	2000      	moveq	r0, #0
 80022f8:	2001      	movne	r0, #1
 80022fa:	bd10      	pop	{r4, pc}
 80022fc:	4618      	mov	r0, r3
 80022fe:	bd10      	pop	{r4, pc}

08002300 <USART_ClearITPendingBit>:
 8002300:	bf00      	nop
 8002302:	bf00      	nop
 8002304:	2301      	movs	r3, #1
 8002306:	0c09      	lsrs	r1, r1, #16
 8002308:	fa03 f101 	lsl.w	r1, r3, r1
 800230c:	6201      	str	r1, [r0, #32]
 800230e:	4770      	bx	lr

08002310 <drv8834_run>:
 8002310:	1e02      	subs	r2, r0, #0
 8002312:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8002316:	dd07      	ble.n	8002328 <drv8834_run+0x18>
 8002318:	8d18      	ldrh	r0, [r3, #40]	; 0x28
 800231a:	ea6f 4040 	mvn.w	r0, r0, lsl #17
 800231e:	ea6f 4050 	mvn.w	r0, r0, lsr #17
 8002322:	b280      	uxth	r0, r0
 8002324:	8518      	strh	r0, [r3, #40]	; 0x28
 8002326:	e005      	b.n	8002334 <drv8834_run+0x24>
 8002328:	6998      	ldr	r0, [r3, #24]
 800232a:	4252      	negs	r2, r2
 800232c:	f440 4000 	orr.w	r0, r0, #32768	; 0x8000
 8002330:	6198      	str	r0, [r3, #24]
 8002332:	b212      	sxth	r2, r2
 8002334:	2900      	cmp	r1, #0
 8002336:	4b0c      	ldr	r3, [pc, #48]	; (8002368 <drv8834_run+0x58>)
 8002338:	dd05      	ble.n	8002346 <drv8834_run+0x36>
 800233a:	8d18      	ldrh	r0, [r3, #40]	; 0x28
 800233c:	b280      	uxth	r0, r0
 800233e:	f040 0020 	orr.w	r0, r0, #32
 8002342:	8518      	strh	r0, [r3, #40]	; 0x28
 8002344:	e005      	b.n	8002352 <drv8834_run+0x42>
 8002346:	6998      	ldr	r0, [r3, #24]
 8002348:	4249      	negs	r1, r1
 800234a:	f040 0020 	orr.w	r0, r0, #32
 800234e:	6198      	str	r0, [r3, #24]
 8002350:	b209      	sxth	r1, r1
 8002352:	2964      	cmp	r1, #100	; 0x64
 8002354:	bfb4      	ite	lt
 8002356:	4608      	movlt	r0, r1
 8002358:	2064      	movge	r0, #100	; 0x64
 800235a:	2a64      	cmp	r2, #100	; 0x64
 800235c:	bfb4      	ite	lt
 800235e:	4611      	movlt	r1, r2
 8002360:	2164      	movge	r1, #100	; 0x64
 8002362:	f000 b843 	b.w	80023ec <pwm_set>
 8002366:	bf00      	nop
 8002368:	48000400 	.word	0x48000400

0800236c <drv8834_init>:
 800236c:	e92d 41f3 	stmdb	sp!, {r0, r1, r4, r5, r6, r7, r8, lr}
 8002370:	4f1d      	ldr	r7, [pc, #116]	; (80023e8 <drv8834_init+0x7c>)
 8002372:	2400      	movs	r4, #0
 8002374:	2601      	movs	r6, #1
 8002376:	2503      	movs	r5, #3
 8002378:	f04f 0810 	mov.w	r8, #16
 800237c:	4638      	mov	r0, r7
 800237e:	4669      	mov	r1, sp
 8002380:	f8cd 8000 	str.w	r8, [sp]
 8002384:	f88d 6004 	strb.w	r6, [sp, #4]
 8002388:	f88d 4006 	strb.w	r4, [sp, #6]
 800238c:	f88d 5005 	strb.w	r5, [sp, #5]
 8002390:	f88d 4007 	strb.w	r4, [sp, #7]
 8002394:	f7ff fba6 	bl	8001ae4 <GPIO_Init>
 8002398:	f8a7 8028 	strh.w	r8, [r7, #40]	; 0x28
 800239c:	2320      	movs	r3, #32
 800239e:	4638      	mov	r0, r7
 80023a0:	4669      	mov	r1, sp
 80023a2:	9300      	str	r3, [sp, #0]
 80023a4:	f88d 6004 	strb.w	r6, [sp, #4]
 80023a8:	f88d 4006 	strb.w	r4, [sp, #6]
 80023ac:	f88d 5005 	strb.w	r5, [sp, #5]
 80023b0:	f88d 4007 	strb.w	r4, [sp, #7]
 80023b4:	f7ff fb96 	bl	8001ae4 <GPIO_Init>
 80023b8:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 80023bc:	4669      	mov	r1, sp
 80023be:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80023c2:	9300      	str	r3, [sp, #0]
 80023c4:	f88d 6004 	strb.w	r6, [sp, #4]
 80023c8:	f88d 4006 	strb.w	r4, [sp, #6]
 80023cc:	f88d 5005 	strb.w	r5, [sp, #5]
 80023d0:	f88d 4007 	strb.w	r4, [sp, #7]
 80023d4:	f7ff fb86 	bl	8001ae4 <GPIO_Init>
 80023d8:	4620      	mov	r0, r4
 80023da:	4621      	mov	r1, r4
 80023dc:	f7ff ff98 	bl	8002310 <drv8834_run>
 80023e0:	b002      	add	sp, #8
 80023e2:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80023e6:	bf00      	nop
 80023e8:	48000400 	.word	0x48000400

080023ec <pwm_set>:
 80023ec:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80023f0:	b086      	sub	sp, #24
 80023f2:	2370      	movs	r3, #112	; 0x70
 80023f4:	9301      	str	r3, [sp, #4]
 80023f6:	2301      	movs	r3, #1
 80023f8:	f8ad 3008 	strh.w	r3, [sp, #8]
 80023fc:	2304      	movs	r3, #4
 80023fe:	f8ad 300a 	strh.w	r3, [sp, #10]
 8002402:	4f17      	ldr	r7, [pc, #92]	; (8002460 <pwm_set+0x74>)
 8002404:	4c17      	ldr	r4, [pc, #92]	; (8002464 <pwm_set+0x78>)
 8002406:	2302      	movs	r3, #2
 8002408:	f8ad 3010 	strh.w	r3, [sp, #16]
 800240c:	2300      	movs	r3, #0
 800240e:	f8ad 3012 	strh.w	r3, [sp, #18]
 8002412:	f8ad 3016 	strh.w	r3, [sp, #22]
 8002416:	683b      	ldr	r3, [r7, #0]
 8002418:	f242 7610 	movw	r6, #10000	; 0x2710
 800241c:	fbb3 f3f6 	udiv	r3, r3, r6
 8002420:	3b02      	subs	r3, #2
 8002422:	4358      	muls	r0, r3
 8002424:	2564      	movs	r5, #100	; 0x64
 8002426:	fbb0 f3f5 	udiv	r3, r0, r5
 800242a:	f44f 7280 	mov.w	r2, #256	; 0x100
 800242e:	4620      	mov	r0, r4
 8002430:	4688      	mov	r8, r1
 8002432:	a901      	add	r1, sp, #4
 8002434:	f8ad 2014 	strh.w	r2, [sp, #20]
 8002438:	9303      	str	r3, [sp, #12]
 800243a:	f000 f8f9 	bl	8002630 <TIM_OC1Init>
 800243e:	683b      	ldr	r3, [r7, #0]
 8002440:	fbb3 f6f6 	udiv	r6, r3, r6
 8002444:	3e02      	subs	r6, #2
 8002446:	fb06 f808 	mul.w	r8, r6, r8
 800244a:	fbb8 f5f5 	udiv	r5, r8, r5
 800244e:	4620      	mov	r0, r4
 8002450:	a901      	add	r1, sp, #4
 8002452:	9503      	str	r5, [sp, #12]
 8002454:	f000 f932 	bl	80026bc <TIM_OC2Init>
 8002458:	b006      	add	sp, #24
 800245a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800245e:	bf00      	nop
 8002460:	20000120 	.word	0x20000120
 8002464:	40012c00 	.word	0x40012c00

08002468 <pwm_init>:
 8002468:	b530      	push	{r4, r5, lr}
 800246a:	f44f 6000 	mov.w	r0, #2048	; 0x800
 800246e:	b087      	sub	sp, #28
 8002470:	2101      	movs	r1, #1
 8002472:	f7ff fdef 	bl	8002054 <RCC_APB2PeriphClockCmd>
 8002476:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 800247a:	2101      	movs	r1, #1
 800247c:	f7ff fddc 	bl	8002038 <RCC_AHBPeriphClockCmd>
 8002480:	4c1d      	ldr	r4, [pc, #116]	; (80024f8 <pwm_init+0x90>)
 8002482:	4d1e      	ldr	r5, [pc, #120]	; (80024fc <pwm_init+0x94>)
 8002484:	f44f 43c0 	mov.w	r3, #24576	; 0x6000
 8002488:	9301      	str	r3, [sp, #4]
 800248a:	2302      	movs	r3, #2
 800248c:	f88d 3008 	strb.w	r3, [sp, #8]
 8002490:	4620      	mov	r0, r4
 8002492:	2303      	movs	r3, #3
 8002494:	a901      	add	r1, sp, #4
 8002496:	f88d 3009 	strb.w	r3, [sp, #9]
 800249a:	f7ff fb23 	bl	8001ae4 <GPIO_Init>
 800249e:	4620      	mov	r0, r4
 80024a0:	210d      	movs	r1, #13
 80024a2:	2206      	movs	r2, #6
 80024a4:	f7ff fb6b 	bl	8001b7e <GPIO_PinAFConfig>
 80024a8:	4620      	mov	r0, r4
 80024aa:	210e      	movs	r1, #14
 80024ac:	2206      	movs	r2, #6
 80024ae:	f7ff fb66 	bl	8001b7e <GPIO_PinAFConfig>
 80024b2:	4b13      	ldr	r3, [pc, #76]	; (8002500 <pwm_init+0x98>)
 80024b4:	681a      	ldr	r2, [r3, #0]
 80024b6:	f242 7310 	movw	r3, #10000	; 0x2710
 80024ba:	fbb2 f3f3 	udiv	r3, r2, r3
 80024be:	2400      	movs	r4, #0
 80024c0:	3b01      	subs	r3, #1
 80024c2:	4628      	mov	r0, r5
 80024c4:	a903      	add	r1, sp, #12
 80024c6:	9304      	str	r3, [sp, #16]
 80024c8:	f8ad 400c 	strh.w	r4, [sp, #12]
 80024cc:	f8ad 400e 	strh.w	r4, [sp, #14]
 80024d0:	f8ad 4014 	strh.w	r4, [sp, #20]
 80024d4:	f8ad 4016 	strh.w	r4, [sp, #22]
 80024d8:	f000 f84c 	bl	8002574 <TIM_TimeBaseInit>
 80024dc:	4620      	mov	r0, r4
 80024de:	4621      	mov	r1, r4
 80024e0:	f7ff ff84 	bl	80023ec <pwm_set>
 80024e4:	4628      	mov	r0, r5
 80024e6:	2101      	movs	r1, #1
 80024e8:	f000 f894 	bl	8002614 <TIM_Cmd>
 80024ec:	4628      	mov	r0, r5
 80024ee:	2101      	movs	r1, #1
 80024f0:	f000 f922 	bl	8002738 <TIM_CtrlPWMOutputs>
 80024f4:	b007      	add	sp, #28
 80024f6:	bd30      	pop	{r4, r5, pc}
 80024f8:	48000400 	.word	0x48000400
 80024fc:	40012c00 	.word	0x40012c00
 8002500:	20000120 	.word	0x20000120

08002504 <NVIC_Init>:
 8002504:	b510      	push	{r4, lr}
 8002506:	bf00      	nop
 8002508:	bf00      	nop
 800250a:	bf00      	nop
 800250c:	78c2      	ldrb	r2, [r0, #3]
 800250e:	7803      	ldrb	r3, [r0, #0]
 8002510:	b30a      	cbz	r2, 8002556 <NVIC_Init+0x52>
 8002512:	4a16      	ldr	r2, [pc, #88]	; (800256c <NVIC_Init+0x68>)
 8002514:	7844      	ldrb	r4, [r0, #1]
 8002516:	68d2      	ldr	r2, [r2, #12]
 8002518:	43d2      	mvns	r2, r2
 800251a:	f3c2 2202 	ubfx	r2, r2, #8, #3
 800251e:	f1c2 0104 	rsb	r1, r2, #4
 8002522:	b2c9      	uxtb	r1, r1
 8002524:	fa04 f101 	lsl.w	r1, r4, r1
 8002528:	240f      	movs	r4, #15
 800252a:	fa44 f202 	asr.w	r2, r4, r2
 800252e:	7884      	ldrb	r4, [r0, #2]
 8002530:	b2c9      	uxtb	r1, r1
 8002532:	4022      	ands	r2, r4
 8002534:	430a      	orrs	r2, r1
 8002536:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
 800253a:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
 800253e:	0112      	lsls	r2, r2, #4
 8002540:	b2d2      	uxtb	r2, r2
 8002542:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
 8002546:	7803      	ldrb	r3, [r0, #0]
 8002548:	2201      	movs	r2, #1
 800254a:	0959      	lsrs	r1, r3, #5
 800254c:	f003 031f 	and.w	r3, r3, #31
 8002550:	fa02 f303 	lsl.w	r3, r2, r3
 8002554:	e006      	b.n	8002564 <NVIC_Init+0x60>
 8002556:	0959      	lsrs	r1, r3, #5
 8002558:	2201      	movs	r2, #1
 800255a:	f003 031f 	and.w	r3, r3, #31
 800255e:	fa02 f303 	lsl.w	r3, r2, r3
 8002562:	3120      	adds	r1, #32
 8002564:	4a02      	ldr	r2, [pc, #8]	; (8002570 <NVIC_Init+0x6c>)
 8002566:	f842 3021 	str.w	r3, [r2, r1, lsl #2]
 800256a:	bd10      	pop	{r4, pc}
 800256c:	e000ed00 	.word	0xe000ed00
 8002570:	e000e100 	.word	0xe000e100

08002574 <TIM_TimeBaseInit>:
 8002574:	bf00      	nop
 8002576:	bf00      	nop
 8002578:	bf00      	nop
 800257a:	4a24      	ldr	r2, [pc, #144]	; (800260c <TIM_TimeBaseInit+0x98>)
 800257c:	8803      	ldrh	r3, [r0, #0]
 800257e:	4290      	cmp	r0, r2
 8002580:	b29b      	uxth	r3, r3
 8002582:	d012      	beq.n	80025aa <TIM_TimeBaseInit+0x36>
 8002584:	f502 6200 	add.w	r2, r2, #2048	; 0x800
 8002588:	4290      	cmp	r0, r2
 800258a:	d00e      	beq.n	80025aa <TIM_TimeBaseInit+0x36>
 800258c:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 8002590:	d00b      	beq.n	80025aa <TIM_TimeBaseInit+0x36>
 8002592:	f5a2 3298 	sub.w	r2, r2, #77824	; 0x13000
 8002596:	4290      	cmp	r0, r2
 8002598:	d007      	beq.n	80025aa <TIM_TimeBaseInit+0x36>
 800259a:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 800259e:	4290      	cmp	r0, r2
 80025a0:	d003      	beq.n	80025aa <TIM_TimeBaseInit+0x36>
 80025a2:	f502 32a4 	add.w	r2, r2, #83968	; 0x14800
 80025a6:	4290      	cmp	r0, r2
 80025a8:	d103      	bne.n	80025b2 <TIM_TimeBaseInit+0x3e>
 80025aa:	884a      	ldrh	r2, [r1, #2]
 80025ac:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 80025b0:	4313      	orrs	r3, r2
 80025b2:	4a17      	ldr	r2, [pc, #92]	; (8002610 <TIM_TimeBaseInit+0x9c>)
 80025b4:	4290      	cmp	r0, r2
 80025b6:	d008      	beq.n	80025ca <TIM_TimeBaseInit+0x56>
 80025b8:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 80025bc:	4290      	cmp	r0, r2
 80025be:	d004      	beq.n	80025ca <TIM_TimeBaseInit+0x56>
 80025c0:	f423 7340 	bic.w	r3, r3, #768	; 0x300
 80025c4:	890a      	ldrh	r2, [r1, #8]
 80025c6:	b29b      	uxth	r3, r3
 80025c8:	4313      	orrs	r3, r2
 80025ca:	8003      	strh	r3, [r0, #0]
 80025cc:	684b      	ldr	r3, [r1, #4]
 80025ce:	62c3      	str	r3, [r0, #44]	; 0x2c
 80025d0:	880b      	ldrh	r3, [r1, #0]
 80025d2:	8503      	strh	r3, [r0, #40]	; 0x28
 80025d4:	4b0d      	ldr	r3, [pc, #52]	; (800260c <TIM_TimeBaseInit+0x98>)
 80025d6:	4298      	cmp	r0, r3
 80025d8:	d013      	beq.n	8002602 <TIM_TimeBaseInit+0x8e>
 80025da:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 80025de:	4298      	cmp	r0, r3
 80025e0:	d00f      	beq.n	8002602 <TIM_TimeBaseInit+0x8e>
 80025e2:	f503 6340 	add.w	r3, r3, #3072	; 0xc00
 80025e6:	4298      	cmp	r0, r3
 80025e8:	d00b      	beq.n	8002602 <TIM_TimeBaseInit+0x8e>
 80025ea:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 80025ee:	4298      	cmp	r0, r3
 80025f0:	d007      	beq.n	8002602 <TIM_TimeBaseInit+0x8e>
 80025f2:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 80025f6:	4298      	cmp	r0, r3
 80025f8:	d003      	beq.n	8002602 <TIM_TimeBaseInit+0x8e>
 80025fa:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 80025fe:	4298      	cmp	r0, r3
 8002600:	d101      	bne.n	8002606 <TIM_TimeBaseInit+0x92>
 8002602:	894b      	ldrh	r3, [r1, #10]
 8002604:	8603      	strh	r3, [r0, #48]	; 0x30
 8002606:	2301      	movs	r3, #1
 8002608:	6143      	str	r3, [r0, #20]
 800260a:	4770      	bx	lr
 800260c:	40012c00 	.word	0x40012c00
 8002610:	40001000 	.word	0x40001000

08002614 <TIM_Cmd>:
 8002614:	bf00      	nop
 8002616:	bf00      	nop
 8002618:	8803      	ldrh	r3, [r0, #0]
 800261a:	b119      	cbz	r1, 8002624 <TIM_Cmd+0x10>
 800261c:	b29b      	uxth	r3, r3
 800261e:	f043 0301 	orr.w	r3, r3, #1
 8002622:	e003      	b.n	800262c <TIM_Cmd+0x18>
 8002624:	f023 0301 	bic.w	r3, r3, #1
 8002628:	041b      	lsls	r3, r3, #16
 800262a:	0c1b      	lsrs	r3, r3, #16
 800262c:	8003      	strh	r3, [r0, #0]
 800262e:	4770      	bx	lr

08002630 <TIM_OC1Init>:
 8002630:	b530      	push	{r4, r5, lr}
 8002632:	bf00      	nop
 8002634:	bf00      	nop
 8002636:	bf00      	nop
 8002638:	bf00      	nop
 800263a:	6a03      	ldr	r3, [r0, #32]
 800263c:	680d      	ldr	r5, [r1, #0]
 800263e:	f023 0301 	bic.w	r3, r3, #1
 8002642:	6203      	str	r3, [r0, #32]
 8002644:	6a03      	ldr	r3, [r0, #32]
 8002646:	6842      	ldr	r2, [r0, #4]
 8002648:	6984      	ldr	r4, [r0, #24]
 800264a:	f424 3480 	bic.w	r4, r4, #65536	; 0x10000
 800264e:	f024 0473 	bic.w	r4, r4, #115	; 0x73
 8002652:	432c      	orrs	r4, r5
 8002654:	898d      	ldrh	r5, [r1, #12]
 8002656:	f023 0302 	bic.w	r3, r3, #2
 800265a:	432b      	orrs	r3, r5
 800265c:	888d      	ldrh	r5, [r1, #4]
 800265e:	432b      	orrs	r3, r5
 8002660:	4d15      	ldr	r5, [pc, #84]	; (80026b8 <TIM_OC1Init+0x88>)
 8002662:	42a8      	cmp	r0, r5
 8002664:	d00f      	beq.n	8002686 <TIM_OC1Init+0x56>
 8002666:	f505 6500 	add.w	r5, r5, #2048	; 0x800
 800266a:	42a8      	cmp	r0, r5
 800266c:	d00b      	beq.n	8002686 <TIM_OC1Init+0x56>
 800266e:	f505 6540 	add.w	r5, r5, #3072	; 0xc00
 8002672:	42a8      	cmp	r0, r5
 8002674:	d007      	beq.n	8002686 <TIM_OC1Init+0x56>
 8002676:	f505 6580 	add.w	r5, r5, #1024	; 0x400
 800267a:	42a8      	cmp	r0, r5
 800267c:	d003      	beq.n	8002686 <TIM_OC1Init+0x56>
 800267e:	f505 6580 	add.w	r5, r5, #1024	; 0x400
 8002682:	42a8      	cmp	r0, r5
 8002684:	d111      	bne.n	80026aa <TIM_OC1Init+0x7a>
 8002686:	bf00      	nop
 8002688:	bf00      	nop
 800268a:	bf00      	nop
 800268c:	bf00      	nop
 800268e:	89cd      	ldrh	r5, [r1, #14]
 8002690:	f023 0308 	bic.w	r3, r3, #8
 8002694:	432b      	orrs	r3, r5
 8002696:	88cd      	ldrh	r5, [r1, #6]
 8002698:	f023 0304 	bic.w	r3, r3, #4
 800269c:	432b      	orrs	r3, r5
 800269e:	8a0d      	ldrh	r5, [r1, #16]
 80026a0:	f422 7240 	bic.w	r2, r2, #768	; 0x300
 80026a4:	432a      	orrs	r2, r5
 80026a6:	8a4d      	ldrh	r5, [r1, #18]
 80026a8:	432a      	orrs	r2, r5
 80026aa:	6042      	str	r2, [r0, #4]
 80026ac:	688a      	ldr	r2, [r1, #8]
 80026ae:	6184      	str	r4, [r0, #24]
 80026b0:	6342      	str	r2, [r0, #52]	; 0x34
 80026b2:	6203      	str	r3, [r0, #32]
 80026b4:	bd30      	pop	{r4, r5, pc}
 80026b6:	bf00      	nop
 80026b8:	40012c00 	.word	0x40012c00

080026bc <TIM_OC2Init>:
 80026bc:	b570      	push	{r4, r5, r6, lr}
 80026be:	bf00      	nop
 80026c0:	bf00      	nop
 80026c2:	bf00      	nop
 80026c4:	bf00      	nop
 80026c6:	6a03      	ldr	r3, [r0, #32]
 80026c8:	680d      	ldr	r5, [r1, #0]
 80026ca:	898e      	ldrh	r6, [r1, #12]
 80026cc:	f023 0310 	bic.w	r3, r3, #16
 80026d0:	6203      	str	r3, [r0, #32]
 80026d2:	6a03      	ldr	r3, [r0, #32]
 80026d4:	6842      	ldr	r2, [r0, #4]
 80026d6:	6984      	ldr	r4, [r0, #24]
 80026d8:	f024 7480 	bic.w	r4, r4, #16777216	; 0x1000000
 80026dc:	f424 44e6 	bic.w	r4, r4, #29440	; 0x7300
 80026e0:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
 80026e4:	f023 0520 	bic.w	r5, r3, #32
 80026e8:	888b      	ldrh	r3, [r1, #4]
 80026ea:	4333      	orrs	r3, r6
 80026ec:	ea45 1303 	orr.w	r3, r5, r3, lsl #4
 80026f0:	4d10      	ldr	r5, [pc, #64]	; (8002734 <TIM_OC2Init+0x78>)
 80026f2:	42a8      	cmp	r0, r5
 80026f4:	d003      	beq.n	80026fe <TIM_OC2Init+0x42>
 80026f6:	f505 6500 	add.w	r5, r5, #2048	; 0x800
 80026fa:	42a8      	cmp	r0, r5
 80026fc:	d114      	bne.n	8002728 <TIM_OC2Init+0x6c>
 80026fe:	bf00      	nop
 8002700:	bf00      	nop
 8002702:	bf00      	nop
 8002704:	bf00      	nop
 8002706:	89cd      	ldrh	r5, [r1, #14]
 8002708:	8a0e      	ldrh	r6, [r1, #16]
 800270a:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 800270e:	ea43 1305 	orr.w	r3, r3, r5, lsl #4
 8002712:	88cd      	ldrh	r5, [r1, #6]
 8002714:	f023 0340 	bic.w	r3, r3, #64	; 0x40
 8002718:	ea43 1305 	orr.w	r3, r3, r5, lsl #4
 800271c:	8a4d      	ldrh	r5, [r1, #18]
 800271e:	f422 6240 	bic.w	r2, r2, #3072	; 0xc00
 8002722:	4335      	orrs	r5, r6
 8002724:	ea42 0285 	orr.w	r2, r2, r5, lsl #2
 8002728:	6042      	str	r2, [r0, #4]
 800272a:	688a      	ldr	r2, [r1, #8]
 800272c:	6184      	str	r4, [r0, #24]
 800272e:	6382      	str	r2, [r0, #56]	; 0x38
 8002730:	6203      	str	r3, [r0, #32]
 8002732:	bd70      	pop	{r4, r5, r6, pc}
 8002734:	40012c00 	.word	0x40012c00

08002738 <TIM_CtrlPWMOutputs>:
 8002738:	bf00      	nop
 800273a:	bf00      	nop
 800273c:	6c43      	ldr	r3, [r0, #68]	; 0x44
 800273e:	b111      	cbz	r1, 8002746 <TIM_CtrlPWMOutputs+0xe>
 8002740:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
 8002744:	e001      	b.n	800274a <TIM_CtrlPWMOutputs+0x12>
 8002746:	f3c3 030e 	ubfx	r3, r3, #0, #15
 800274a:	6443      	str	r3, [r0, #68]	; 0x44
 800274c:	4770      	bx	lr

0800274e <TIM_ClearITPendingBit>:
 800274e:	bf00      	nop
 8002750:	43c9      	mvns	r1, r1
 8002752:	b289      	uxth	r1, r1
 8002754:	6101      	str	r1, [r0, #16]
 8002756:	4770      	bx	lr

08002758 <timer_init>:
 8002758:	b530      	push	{r4, r5, lr}
 800275a:	2300      	movs	r3, #0
 800275c:	b085      	sub	sp, #20
 800275e:	491f      	ldr	r1, [pc, #124]	; (80027dc <timer_init+0x84>)
 8002760:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8002764:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 8002768:	491d      	ldr	r1, [pc, #116]	; (80027e0 <timer_init+0x88>)
 800276a:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 800276e:	4a1d      	ldr	r2, [pc, #116]	; (80027e4 <timer_init+0x8c>)
 8002770:	2400      	movs	r4, #0
 8002772:	f822 4013 	strh.w	r4, [r2, r3, lsl #1]
 8002776:	3301      	adds	r3, #1
 8002778:	2b04      	cmp	r3, #4
 800277a:	4625      	mov	r5, r4
 800277c:	d1ef      	bne.n	800275e <timer_init+0x6>
 800277e:	4b1a      	ldr	r3, [pc, #104]	; (80027e8 <timer_init+0x90>)
 8002780:	2002      	movs	r0, #2
 8002782:	2101      	movs	r1, #1
 8002784:	601c      	str	r4, [r3, #0]
 8002786:	f7ff fc73 	bl	8002070 <RCC_APB1PeriphClockCmd>
 800278a:	f8ad 4006 	strh.w	r4, [sp, #6]
 800278e:	f8ad 400c 	strh.w	r4, [sp, #12]
 8002792:	f8ad 400e 	strh.w	r4, [sp, #14]
 8002796:	4c15      	ldr	r4, [pc, #84]	; (80027ec <timer_init+0x94>)
 8002798:	f44f 738c 	mov.w	r3, #280	; 0x118
 800279c:	f8ad 3004 	strh.w	r3, [sp, #4]
 80027a0:	4620      	mov	r0, r4
 80027a2:	2331      	movs	r3, #49	; 0x31
 80027a4:	a901      	add	r1, sp, #4
 80027a6:	9302      	str	r3, [sp, #8]
 80027a8:	f7ff fee4 	bl	8002574 <TIM_TimeBaseInit>
 80027ac:	4620      	mov	r0, r4
 80027ae:	2101      	movs	r1, #1
 80027b0:	f7ff ff30 	bl	8002614 <TIM_Cmd>
 80027b4:	68e3      	ldr	r3, [r4, #12]
 80027b6:	f043 0301 	orr.w	r3, r3, #1
 80027ba:	60e3      	str	r3, [r4, #12]
 80027bc:	231d      	movs	r3, #29
 80027be:	f88d 3000 	strb.w	r3, [sp]
 80027c2:	4668      	mov	r0, sp
 80027c4:	2301      	movs	r3, #1
 80027c6:	f88d 5001 	strb.w	r5, [sp, #1]
 80027ca:	f88d 3002 	strb.w	r3, [sp, #2]
 80027ce:	f88d 3003 	strb.w	r3, [sp, #3]
 80027d2:	f7ff fe97 	bl	8002504 <NVIC_Init>
 80027d6:	b005      	add	sp, #20
 80027d8:	bd30      	pop	{r4, r5, pc}
 80027da:	bf00      	nop
 80027dc:	20000ec8 	.word	0x20000ec8
 80027e0:	20000ebc 	.word	0x20000ebc
 80027e4:	20000eb4 	.word	0x20000eb4
 80027e8:	20000ec4 	.word	0x20000ec4
 80027ec:	40000400 	.word	0x40000400

080027f0 <TIM3_IRQHandler>:
 80027f0:	2300      	movs	r3, #0
 80027f2:	4a0f      	ldr	r2, [pc, #60]	; (8002830 <TIM3_IRQHandler+0x40>)
 80027f4:	f832 1013 	ldrh.w	r1, [r2, r3, lsl #1]
 80027f8:	b289      	uxth	r1, r1
 80027fa:	b121      	cbz	r1, 8002806 <TIM3_IRQHandler+0x16>
 80027fc:	f832 1013 	ldrh.w	r1, [r2, r3, lsl #1]
 8002800:	3901      	subs	r1, #1
 8002802:	b289      	uxth	r1, r1
 8002804:	e007      	b.n	8002816 <TIM3_IRQHandler+0x26>
 8002806:	490b      	ldr	r1, [pc, #44]	; (8002834 <TIM3_IRQHandler+0x44>)
 8002808:	f831 1013 	ldrh.w	r1, [r1, r3, lsl #1]
 800280c:	b289      	uxth	r1, r1
 800280e:	f822 1013 	strh.w	r1, [r2, r3, lsl #1]
 8002812:	4a09      	ldr	r2, [pc, #36]	; (8002838 <TIM3_IRQHandler+0x48>)
 8002814:	2101      	movs	r1, #1
 8002816:	f822 1013 	strh.w	r1, [r2, r3, lsl #1]
 800281a:	3301      	adds	r3, #1
 800281c:	2b04      	cmp	r3, #4
 800281e:	d1e8      	bne.n	80027f2 <TIM3_IRQHandler+0x2>
 8002820:	4b06      	ldr	r3, [pc, #24]	; (800283c <TIM3_IRQHandler+0x4c>)
 8002822:	4807      	ldr	r0, [pc, #28]	; (8002840 <TIM3_IRQHandler+0x50>)
 8002824:	681a      	ldr	r2, [r3, #0]
 8002826:	2101      	movs	r1, #1
 8002828:	3201      	adds	r2, #1
 800282a:	601a      	str	r2, [r3, #0]
 800282c:	f7ff bf8f 	b.w	800274e <TIM_ClearITPendingBit>
 8002830:	20000ec8 	.word	0x20000ec8
 8002834:	20000ebc 	.word	0x20000ebc
 8002838:	20000eb4 	.word	0x20000eb4
 800283c:	20000ec4 	.word	0x20000ec4
 8002840:	40000400 	.word	0x40000400

08002844 <timer_get_time>:
 8002844:	b082      	sub	sp, #8
 8002846:	b672      	cpsid	i
 8002848:	4b04      	ldr	r3, [pc, #16]	; (800285c <timer_get_time+0x18>)
 800284a:	681b      	ldr	r3, [r3, #0]
 800284c:	9301      	str	r3, [sp, #4]
 800284e:	b662      	cpsie	i
 8002850:	9801      	ldr	r0, [sp, #4]
 8002852:	230a      	movs	r3, #10
 8002854:	fbb0 f0f3 	udiv	r0, r0, r3
 8002858:	b002      	add	sp, #8
 800285a:	4770      	bx	lr
 800285c:	20000ec4 	.word	0x20000ec4

08002860 <timer_delay_ms>:
 8002860:	b513      	push	{r0, r1, r4, lr}
 8002862:	4604      	mov	r4, r0
 8002864:	f7ff ffee 	bl	8002844 <timer_get_time>
 8002868:	4420      	add	r0, r4
 800286a:	9001      	str	r0, [sp, #4]
 800286c:	9c01      	ldr	r4, [sp, #4]
 800286e:	f7ff ffe9 	bl	8002844 <timer_get_time>
 8002872:	4284      	cmp	r4, r0
 8002874:	d902      	bls.n	800287c <timer_delay_ms+0x1c>
 8002876:	f7ff fa29 	bl	8001ccc <sleep>
 800287a:	e7f7      	b.n	800286c <timer_delay_ms+0xc>
 800287c:	b002      	add	sp, #8
 800287e:	bd10      	pop	{r4, pc}

08002880 <event_timer_set_period>:
 8002880:	b672      	cpsid	i
 8002882:	eb01 0181 	add.w	r1, r1, r1, lsl #2
 8002886:	4b07      	ldr	r3, [pc, #28]	; (80028a4 <event_timer_set_period+0x24>)
 8002888:	0049      	lsls	r1, r1, #1
 800288a:	b289      	uxth	r1, r1
 800288c:	f823 1010 	strh.w	r1, [r3, r0, lsl #1]
 8002890:	4b05      	ldr	r3, [pc, #20]	; (80028a8 <event_timer_set_period+0x28>)
 8002892:	f823 1010 	strh.w	r1, [r3, r0, lsl #1]
 8002896:	4b05      	ldr	r3, [pc, #20]	; (80028ac <event_timer_set_period+0x2c>)
 8002898:	2200      	movs	r2, #0
 800289a:	f823 2010 	strh.w	r2, [r3, r0, lsl #1]
 800289e:	b662      	cpsie	i
 80028a0:	4770      	bx	lr
 80028a2:	bf00      	nop
 80028a4:	20000ec8 	.word	0x20000ec8
 80028a8:	20000ebc 	.word	0x20000ebc
 80028ac:	20000eb4 	.word	0x20000eb4

080028b0 <event_timer_wait>:
 80028b0:	b510      	push	{r4, lr}
 80028b2:	4604      	mov	r4, r0
 80028b4:	4b06      	ldr	r3, [pc, #24]	; (80028d0 <event_timer_wait+0x20>)
 80028b6:	f833 2014 	ldrh.w	r2, [r3, r4, lsl #1]
 80028ba:	b292      	uxth	r2, r2
 80028bc:	b912      	cbnz	r2, 80028c4 <event_timer_wait+0x14>
 80028be:	f7ff fa05 	bl	8001ccc <sleep>
 80028c2:	e7f7      	b.n	80028b4 <event_timer_wait+0x4>
 80028c4:	b672      	cpsid	i
 80028c6:	2200      	movs	r2, #0
 80028c8:	f823 2014 	strh.w	r2, [r3, r4, lsl #1]
 80028cc:	b662      	cpsie	i
 80028ce:	bd10      	pop	{r4, pc}
 80028d0:	20000eb4 	.word	0x20000eb4

080028d4 <_init>:
 80028d4:	e1a0c00d 	mov	ip, sp
 80028d8:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
 80028dc:	e24cb004 	sub	fp, ip, #4
 80028e0:	e24bd028 	sub	sp, fp, #40	; 0x28
 80028e4:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
 80028e8:	e12fff1e 	bx	lr

080028ec <_fini>:
 80028ec:	e1a0c00d 	mov	ip, sp
 80028f0:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
 80028f4:	e24cb004 	sub	fp, ip, #4
 80028f8:	e24bd028 	sub	sp, fp, #40	; 0x28
 80028fc:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
 8002900:	e12fff1e 	bx	lr
 8002904:	6c65770a 	.word	0x6c65770a
 8002908:	656d6f63 	.word	0x656d6f63
 800290c:	206f7420 	.word	0x206f7420
 8002910:	757a7553 	.word	0x757a7553
 8002914:	534f6168 	.word	0x534f6168
 8002918:	5e5f5e20 	.word	0x5e5f5e20
 800291c:	302e3220 	.word	0x302e3220
 8002920:	420a362e 	.word	0x420a362e
 8002924:	444c4955 	.word	0x444c4955
 8002928:	72704120 	.word	0x72704120
 800292c:	20313120 	.word	0x20313120
 8002930:	36313032 	.word	0x36313032
 8002934:	3a323120 	.word	0x3a323120
 8002938:	323a3332 	.word	0x323a3332
 800293c:	73000a35 	.word	0x73000a35
 8002940:	65747379 	.word	0x65747379
 8002944:	6261206d 	.word	0x6261206d
 8002948:	6574726f 	.word	0x6574726f
 800294c:	0a64      	.short	0x0a64
 800294e:	00          	.byte	0x00
 800294f:	65          	.byte	0x65
 8002950:	726f7272 	.word	0x726f7272
 8002954:	646f6320 	.word	0x646f6320
 8002958:	75252065 	.word	0x75252065
 800295c:	0a75253a 	.word	0x0a75253a
 8002960:	00          	.byte	0x00
 8002961:	73          	.byte	0x73
 8002962:	6474      	.short	0x6474
 8002964:	69206f69 	.word	0x69206f69
 8002968:	2074696e 	.word	0x2074696e
 800296c:	656e6f64 	.word	0x656e6f64
 8002970:	0000000a 	.word	0x0000000a

08002974 <__EH_FRAME_BEGIN__>:
 8002974:	00000000                                ....
