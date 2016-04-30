
bin/main.elf:     file format elf32-littlearm


Disassembly of section .text:

08000188 <_Z13robot_on_linev>:
 8000188:	b508      	push	{r3, lr}
 800018a:	f001 f88b 	bl	80012a4 <line_sensor_get>
 800018e:	f890 0030 	ldrb.w	r0, [r0, #48]	; 0x30
 8000192:	1e43      	subs	r3, r0, #1
 8000194:	4258      	negs	r0, r3
 8000196:	4158      	adcs	r0, r3
 8000198:	bd08      	pop	{r3, pc}
	...

0800019c <_ZN9CObstacle12rotate_robotEi>:
 800019c:	b538      	push	{r3, r4, r5, lr}
 800019e:	f44f 65c8 	mov.w	r5, #1600	; 0x640
 80001a2:	ed2d 8b02 	vpush	{d8}
 80001a6:	ed9f 8a1e 	vldr	s16, [pc, #120]	; 8000220 <_ZN9CObstacle12rotate_robotEi+0x84>
 80001aa:	434d      	muls	r5, r1
 80001ac:	2400      	movs	r4, #0
 80001ae:	ea84 72e4 	eor.w	r2, r4, r4, asr #31
 80001b2:	eba2 72e4 	sub.w	r2, r2, r4, asr #31
 80001b6:	ea85 73e5 	eor.w	r3, r5, r5, asr #31
 80001ba:	eba3 73e5 	sub.w	r3, r3, r5, asr #31
 80001be:	429a      	cmp	r2, r3
 80001c0:	da22      	bge.n	8000208 <_ZN9CObstacle12rotate_robotEi+0x6c>
 80001c2:	f000 fc91 	bl	8000ae8 <lsm9ds0_get>
 80001c6:	ed9f 7a17 	vldr	s14, [pc, #92]	; 8000224 <_ZN9CObstacle12rotate_robotEi+0x88>
 80001ca:	eddf 7a17 	vldr	s15, [pc, #92]	; 8000228 <_ZN9CObstacle12rotate_robotEi+0x8c>
 80001ce:	ee48 7a07 	vmla.f32	s15, s16, s14
 80001d2:	f9b0 3010 	ldrsh.w	r3, [r0, #16]
 80001d6:	eeb0 8a67 	vmov.f32	s16, s15
 80001da:	eddf 7a14 	vldr	s15, [pc, #80]	; 800022c <_ZN9CObstacle12rotate_robotEi+0x90>
 80001de:	ee68 7a27 	vmul.f32	s15, s16, s15
 80001e2:	441c      	add	r4, r3
 80001e4:	eefd 7ae7 	vcvt.s32.f32	s15, s15
 80001e8:	2d00      	cmp	r5, #0
 80001ea:	ee17 3a90 	vmov	r3, s15
 80001ee:	b219      	sxth	r1, r3
 80001f0:	f1c3 0300 	rsb	r3, r3, #0
 80001f4:	bfca      	itet	gt
 80001f6:	4608      	movgt	r0, r1
 80001f8:	b218      	sxthle	r0, r3
 80001fa:	b219      	sxthgt	r1, r3
 80001fc:	f002 fb9c 	bl	8002938 <drv8834_run>
 8000200:	200a      	movs	r0, #10
 8000202:	f001 ffe5 	bl	80021d0 <timer_delay_ms>
 8000206:	e7d2      	b.n	80001ae <_ZN9CObstacle12rotate_robotEi+0x12>
 8000208:	2000      	movs	r0, #0
 800020a:	4601      	mov	r1, r0
 800020c:	f002 fb94 	bl	8002938 <drv8834_run>
 8000210:	ecbd 8b02 	vpop	{d8}
 8000214:	2064      	movs	r0, #100	; 0x64
 8000216:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 800021a:	f001 bfd9 	b.w	80021d0 <timer_delay_ms>
 800021e:	bf00      	nop
 8000220:	00000000 	.word	0x00000000
 8000224:	3f4ccccd 	.word	0x3f4ccccd
 8000228:	3e0f5c28 	.word	0x3e0f5c28
 800022c:	42c80000 	.word	0x42c80000

08000230 <_ZN9CObstacle10go_forwardEijPFhvE>:
 8000230:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8000234:	ed2d 8b04 	vpush	{d8-d9}
 8000238:	460e      	mov	r6, r1
 800023a:	4617      	mov	r7, r2
 800023c:	461d      	mov	r5, r3
 800023e:	f001 ffb9 	bl	80021b4 <timer_get_time>
 8000242:	4680      	mov	r8, r0
 8000244:	b956      	cbnz	r6, 800025c <_ZN9CObstacle10go_forwardEijPFhvE+0x2c>
 8000246:	2000      	movs	r0, #0
 8000248:	4601      	mov	r1, r0
 800024a:	f002 fb75 	bl	8002938 <drv8834_run>
 800024e:	ecbd 8b04 	vpop	{d8-d9}
 8000252:	2064      	movs	r0, #100	; 0x64
 8000254:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8000258:	f001 bfba 	b.w	80021d0 <timer_delay_ms>
 800025c:	ed9f 8a24 	vldr	s16, [pc, #144]	; 80002f0 <_ZN9CObstacle10go_forwardEijPFhvE+0xc0>
 8000260:	2400      	movs	r4, #0
 8000262:	eeb0 9a48 	vmov.f32	s18, s16
 8000266:	eef0 9a48 	vmov.f32	s19, s16
 800026a:	f001 ffa3 	bl	80021b4 <timer_get_time>
 800026e:	eb08 0307 	add.w	r3, r8, r7
 8000272:	4298      	cmp	r0, r3
 8000274:	d2e7      	bcs.n	8000246 <_ZN9CObstacle10go_forwardEijPFhvE+0x16>
 8000276:	f000 fc37 	bl	8000ae8 <lsm9ds0_get>
 800027a:	f9b0 3010 	ldrsh.w	r3, [r0, #16]
 800027e:	441c      	add	r4, r3
 8000280:	ee07 4a10 	vmov	s14, r4
 8000284:	eef8 8ac7 	vcvt.f32.s32	s17, s14
 8000288:	ed9f 7a1a 	vldr	s14, [pc, #104]	; 80002f4 <_ZN9CObstacle10go_forwardEijPFhvE+0xc4>
 800028c:	ee79 8ae8 	vsub.f32	s17, s19, s17
 8000290:	ee78 7ac9 	vsub.f32	s15, s17, s18
 8000294:	ee67 7a87 	vmul.f32	s15, s15, s14
 8000298:	ed9f 7a17 	vldr	s14, [pc, #92]	; 80002f8 <_ZN9CObstacle10go_forwardEijPFhvE+0xc8>
 800029c:	ee48 7a87 	vmla.f32	s15, s17, s14
 80002a0:	ee07 6a10 	vmov	s14, r6
 80002a4:	eef8 6ac7 	vcvt.f32.s32	s13, s14
 80002a8:	ed9f 7a14 	vldr	s14, [pc, #80]	; 80002fc <_ZN9CObstacle10go_forwardEijPFhvE+0xcc>
 80002ac:	ee26 7a87 	vmul.f32	s14, s13, s14
 80002b0:	eddf 6a13 	vldr	s13, [pc, #76]	; 8000300 <_ZN9CObstacle10go_forwardEijPFhvE+0xd0>
 80002b4:	ee08 7a26 	vmla.f32	s14, s16, s13
 80002b8:	eeb0 8a47 	vmov.f32	s16, s14
 80002bc:	ee37 7a67 	vsub.f32	s14, s14, s15
 80002c0:	ee78 7a27 	vadd.f32	s15, s16, s15
 80002c4:	eebd 7ac7 	vcvt.s32.f32	s14, s14
 80002c8:	eefd 7ae7 	vcvt.s32.f32	s15, s15
 80002cc:	ee17 0a10 	vmov	r0, s14
 80002d0:	ee17 1a90 	vmov	r1, s15
 80002d4:	b200      	sxth	r0, r0
 80002d6:	b209      	sxth	r1, r1
 80002d8:	f002 fb2e 	bl	8002938 <drv8834_run>
 80002dc:	200a      	movs	r0, #10
 80002de:	f001 ff77 	bl	80021d0 <timer_delay_ms>
 80002e2:	b115      	cbz	r5, 80002ea <_ZN9CObstacle10go_forwardEijPFhvE+0xba>
 80002e4:	47a8      	blx	r5
 80002e6:	2800      	cmp	r0, #0
 80002e8:	d1ad      	bne.n	8000246 <_ZN9CObstacle10go_forwardEijPFhvE+0x16>
 80002ea:	eeb0 9a68 	vmov.f32	s18, s17
 80002ee:	e7bc      	b.n	800026a <_ZN9CObstacle10go_forwardEijPFhvE+0x3a>
 80002f0:	00000000 	.word	0x00000000
 80002f4:	3a83126f 	.word	0x3a83126f
 80002f8:	399d4952 	.word	0x399d4952
 80002fc:	3e4ccccc 	.word	0x3e4ccccc
 8000300:	3f4ccccd 	.word	0x3f4ccccd

08000304 <_ZN9CObstacle7processEv>:
 8000304:	b510      	push	{r4, lr}
 8000306:	4604      	mov	r4, r0
 8000308:	f002 fca2 	bl	8002c50 <get_mode_jumper>
 800030c:	4601      	mov	r1, r0
 800030e:	4620      	mov	r0, r4
 8000310:	b931      	cbnz	r1, 8000320 <_ZN9CObstacle7processEv+0x1c>
 8000312:	460b      	mov	r3, r1
 8000314:	2264      	movs	r2, #100	; 0x64
 8000316:	f7ff ff8b 	bl	8000230 <_ZN9CObstacle10go_forwardEijPFhvE>
 800031a:	4620      	mov	r0, r4
 800031c:	21b4      	movs	r1, #180	; 0xb4
 800031e:	e03a      	b.n	8000396 <_ZN9CObstacle7processEv+0x92>
 8000320:	2100      	movs	r1, #0
 8000322:	460b      	mov	r3, r1
 8000324:	2232      	movs	r2, #50	; 0x32
 8000326:	f7ff ff83 	bl	8000230 <_ZN9CObstacle10go_forwardEijPFhvE>
 800032a:	4620      	mov	r0, r4
 800032c:	f06f 013b 	mvn.w	r1, #59	; 0x3b
 8000330:	2282      	movs	r2, #130	; 0x82
 8000332:	2300      	movs	r3, #0
 8000334:	f7ff ff7c 	bl	8000230 <_ZN9CObstacle10go_forwardEijPFhvE>
 8000338:	2100      	movs	r1, #0
 800033a:	460b      	mov	r3, r1
 800033c:	2232      	movs	r2, #50	; 0x32
 800033e:	4620      	mov	r0, r4
 8000340:	f7ff ff76 	bl	8000230 <_ZN9CObstacle10go_forwardEijPFhvE>
 8000344:	4620      	mov	r0, r4
 8000346:	215a      	movs	r1, #90	; 0x5a
 8000348:	f7ff ff28 	bl	800019c <_ZN9CObstacle12rotate_robotEi>
 800034c:	22fa      	movs	r2, #250	; 0xfa
 800034e:	2300      	movs	r3, #0
 8000350:	4620      	mov	r0, r4
 8000352:	213c      	movs	r1, #60	; 0x3c
 8000354:	f7ff ff6c 	bl	8000230 <_ZN9CObstacle10go_forwardEijPFhvE>
 8000358:	4620      	mov	r0, r4
 800035a:	f06f 0159 	mvn.w	r1, #89	; 0x59
 800035e:	f7ff ff1d 	bl	800019c <_ZN9CObstacle12rotate_robotEi>
 8000362:	f44f 72af 	mov.w	r2, #350	; 0x15e
 8000366:	2300      	movs	r3, #0
 8000368:	4620      	mov	r0, r4
 800036a:	213c      	movs	r1, #60	; 0x3c
 800036c:	f7ff ff60 	bl	8000230 <_ZN9CObstacle10go_forwardEijPFhvE>
 8000370:	4620      	mov	r0, r4
 8000372:	f06f 0159 	mvn.w	r1, #89	; 0x59
 8000376:	f7ff ff11 	bl	800019c <_ZN9CObstacle12rotate_robotEi>
 800037a:	4620      	mov	r0, r4
 800037c:	213c      	movs	r1, #60	; 0x3c
 800037e:	2232      	movs	r2, #50	; 0x32
 8000380:	2300      	movs	r3, #0
 8000382:	f7ff ff55 	bl	8000230 <_ZN9CObstacle10go_forwardEijPFhvE>
 8000386:	4620      	mov	r0, r4
 8000388:	213c      	movs	r1, #60	; 0x3c
 800038a:	22fa      	movs	r2, #250	; 0xfa
 800038c:	4b04      	ldr	r3, [pc, #16]	; (80003a0 <_ZN9CObstacle7processEv+0x9c>)
 800038e:	f7ff ff4f 	bl	8000230 <_ZN9CObstacle10go_forwardEijPFhvE>
 8000392:	4620      	mov	r0, r4
 8000394:	215a      	movs	r1, #90	; 0x5a
 8000396:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800039a:	f7ff beff 	b.w	800019c <_ZN9CObstacle12rotate_robotEi>
 800039e:	bf00      	nop
 80003a0:	08000189 	.word	0x08000189

080003a4 <obstacle_init>:
 80003a4:	4b01      	ldr	r3, [pc, #4]	; (80003ac <obstacle_init+0x8>)
 80003a6:	2200      	movs	r2, #0
 80003a8:	601a      	str	r2, [r3, #0]
 80003aa:	4770      	bx	lr
 80003ac:	20000504 	.word	0x20000504

080003b0 <obstacle_main>:
 80003b0:	4801      	ldr	r0, [pc, #4]	; (80003b8 <obstacle_main+0x8>)
 80003b2:	f7ff bfa7 	b.w	8000304 <_ZN9CObstacle7processEv>
 80003b6:	bf00      	nop
 80003b8:	20000504 	.word	0x20000504

080003bc <_ZN13CLineFollower4initEv>:
 80003bc:	2300      	movs	r3, #0
 80003be:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 80003c0:	6003      	str	r3, [r0, #0]
 80003c2:	6043      	str	r3, [r0, #4]
 80003c4:	4604      	mov	r4, r0
 80003c6:	f001 f8e5 	bl	8001594 <robot_config_get>
 80003ca:	68c6      	ldr	r6, [r0, #12]
 80003cc:	f001 f8e2 	bl	8001594 <robot_config_get>
 80003d0:	6905      	ldr	r5, [r0, #16]
 80003d2:	f001 f8df 	bl	8001594 <robot_config_get>
 80003d6:	6947      	ldr	r7, [r0, #20]
 80003d8:	f001 f8dc 	bl	8001594 <robot_config_get>
 80003dc:	9700      	str	r7, [sp, #0]
 80003de:	6983      	ldr	r3, [r0, #24]
 80003e0:	4904      	ldr	r1, [pc, #16]	; (80003f4 <_ZN13CLineFollower4initEv+0x38>)
 80003e2:	9301      	str	r3, [sp, #4]
 80003e4:	f104 0008 	add.w	r0, r4, #8
 80003e8:	4632      	mov	r2, r6
 80003ea:	462b      	mov	r3, r5
 80003ec:	f000 fb12 	bl	8000a14 <pid_init>
 80003f0:	b003      	add	sp, #12
 80003f2:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80003f4:	42c80000 	.word	0x42c80000

080003f8 <_ZN13CLineFollower7processEv>:
 80003f8:	b570      	push	{r4, r5, r6, lr}
 80003fa:	ed2d 8b04 	vpush	{d8-d9}
 80003fe:	4604      	mov	r4, r0
 8000400:	f000 ff50 	bl	80012a4 <line_sensor_get>
 8000404:	ed90 7a0d 	vldr	s14, [r0, #52]	; 0x34
 8000408:	eddf 7a2c 	vldr	s15, [pc, #176]	; 80004bc <_ZN13CLineFollower7processEv+0xc4>
 800040c:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 8000410:	ed9f 8a2b 	vldr	s16, [pc, #172]	; 80004c0 <_ZN13CLineFollower7processEv+0xc8>
 8000414:	ee07 8a67 	vmls.f32	s16, s14, s15
 8000418:	f001 f8bc 	bl	8001594 <robot_config_get>
 800041c:	ed90 9a07 	vldr	s18, [r0, #28]
 8000420:	f001 f8b8 	bl	8001594 <robot_config_get>
 8000424:	edd0 8a08 	vldr	s17, [r0, #32]
 8000428:	ee18 0a10 	vmov	r0, s16
 800042c:	f000 fac0 	bl	80009b0 <m_abs>
 8000430:	ed9f 7a24 	vldr	s14, [pc, #144]	; 80004c4 <_ZN13CLineFollower7processEv+0xcc>
 8000434:	ee07 0a90 	vmov	s15, r0
 8000438:	edd4 6a00 	vldr	s13, [r4]
 800043c:	ee37 6a67 	vsub.f32	s12, s14, s15
 8000440:	ee08 7ae7 	vmls.f32	s14, s17, s15
 8000444:	ee49 6a06 	vmla.f32	s13, s18, s12
 8000448:	ee17 1a10 	vmov	r1, s14
 800044c:	ee16 0a90 	vmov	r0, s13
 8000450:	f000 fad1 	bl	80009f6 <m_min>
 8000454:	6020      	str	r0, [r4, #0]
 8000456:	4605      	mov	r5, r0
 8000458:	f001 f89c 	bl	8001594 <robot_config_get>
 800045c:	6a46      	ldr	r6, [r0, #36]	; 0x24
 800045e:	f001 f899 	bl	8001594 <robot_config_get>
 8000462:	4603      	mov	r3, r0
 8000464:	4631      	mov	r1, r6
 8000466:	6a9a      	ldr	r2, [r3, #40]	; 0x28
 8000468:	4628      	mov	r0, r5
 800046a:	f000 faad 	bl	80009c8 <m_saturate>
 800046e:	4623      	mov	r3, r4
 8000470:	ee18 1a10 	vmov	r1, s16
 8000474:	f843 0b08 	str.w	r0, [r3], #8
 8000478:	4618      	mov	r0, r3
 800047a:	f000 fafb 	bl	8000a74 <pid_process>
 800047e:	edd4 6a00 	vldr	s13, [r4]
 8000482:	ee07 0a90 	vmov	s15, r0
 8000486:	ed9f 7a10 	vldr	s14, [pc, #64]	; 80004c8 <_ZN13CLineFollower7processEv+0xd0>
 800048a:	ee36 6aa7 	vadd.f32	s12, s13, s15
 800048e:	ee76 7ae7 	vsub.f32	s15, s13, s15
 8000492:	ee26 6a07 	vmul.f32	s12, s12, s14
 8000496:	ee27 7a87 	vmul.f32	s14, s15, s14
 800049a:	ecbd 8b04 	vpop	{d8-d9}
 800049e:	eebd 6ac6 	vcvt.s32.f32	s12, s12
 80004a2:	eebd 7ac7 	vcvt.s32.f32	s14, s14
 80004a6:	6060      	str	r0, [r4, #4]
 80004a8:	ee17 1a10 	vmov	r1, s14
 80004ac:	ee16 0a10 	vmov	r0, s12
 80004b0:	b209      	sxth	r1, r1
 80004b2:	b200      	sxth	r0, r0
 80004b4:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 80004b8:	f002 ba3e 	b.w	8002938 <drv8834_run>
 80004bc:	3b800000 	.word	0x3b800000
 80004c0:	00000000 	.word	0x00000000
 80004c4:	3f800000 	.word	0x3f800000
 80004c8:	42c80000 	.word	0x42c80000

080004cc <line_follower_init>:
 80004cc:	b508      	push	{r3, lr}
 80004ce:	4804      	ldr	r0, [pc, #16]	; (80004e0 <line_follower_init+0x14>)
 80004d0:	f7ff ff74 	bl	80003bc <_ZN13CLineFollower4initEv>
 80004d4:	4803      	ldr	r0, [pc, #12]	; (80004e4 <line_follower_init+0x18>)
 80004d6:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80004da:	f000 b80b 	b.w	80004f4 <_ZN11CQPredictor4initEv>
 80004de:	bf00      	nop
 80004e0:	2000054c 	.word	0x2000054c
 80004e4:	20000508 	.word	0x20000508

080004e8 <line_follower_main>:
 80004e8:	4801      	ldr	r0, [pc, #4]	; (80004f0 <line_follower_main+0x8>)
 80004ea:	f7ff bf85 	b.w	80003f8 <_ZN13CLineFollower7processEv>
 80004ee:	bf00      	nop
 80004f0:	2000054c 	.word	0x2000054c

080004f4 <_ZN11CQPredictor4initEv>:
 80004f4:	2300      	movs	r3, #0
 80004f6:	18c2      	adds	r2, r0, r3
 80004f8:	3304      	adds	r3, #4
 80004fa:	2100      	movs	r1, #0
 80004fc:	2b40      	cmp	r3, #64	; 0x40
 80004fe:	6051      	str	r1, [r2, #4]
 8000500:	d1f9      	bne.n	80004f6 <_ZN11CQPredictor4initEv+0x2>
 8000502:	4770      	bx	lr

08000504 <thread_ending>:
 8000504:	b672      	cpsid	i
 8000506:	4b05      	ldr	r3, [pc, #20]	; (800051c <thread_ending+0x18>)
 8000508:	4a05      	ldr	r2, [pc, #20]	; (8000520 <thread_ending+0x1c>)
 800050a:	681b      	ldr	r3, [r3, #0]
 800050c:	210c      	movs	r1, #12
 800050e:	fb01 2303 	mla	r3, r1, r3, r2
 8000512:	2200      	movs	r2, #0
 8000514:	605a      	str	r2, [r3, #4]
 8000516:	b662      	cpsie	i
 8000518:	bf00      	nop
 800051a:	e7fd      	b.n	8000518 <thread_ending+0x14>
 800051c:	200005c4 	.word	0x200005c4
 8000520:	2000057c 	.word	0x2000057c

08000524 <null_thread>:
 8000524:	b508      	push	{r3, lr}
 8000526:	f002 f977 	bl	8002818 <sleep>
 800052a:	e7fc      	b.n	8000526 <null_thread+0x2>

0800052c <scheduler>:
 800052c:	b570      	push	{r4, r5, r6, lr}
 800052e:	2200      	movs	r2, #0
 8000530:	4611      	mov	r1, r2
 8000532:	4b15      	ldr	r3, [pc, #84]	; (8000588 <scheduler+0x5c>)
 8000534:	200c      	movs	r0, #12
 8000536:	fb00 f501 	mul.w	r5, r0, r1
 800053a:	195e      	adds	r6, r3, r5
 800053c:	6874      	ldr	r4, [r6, #4]
 800053e:	f014 0f02 	tst.w	r4, #2
 8000542:	461c      	mov	r4, r3
 8000544:	d10a      	bne.n	800055c <scheduler+0x30>
 8000546:	6876      	ldr	r6, [r6, #4]
 8000548:	07f6      	lsls	r6, r6, #31
 800054a:	d507      	bpl.n	800055c <scheduler+0x30>
 800054c:	4350      	muls	r0, r2
 800054e:	5b5d      	ldrh	r5, [r3, r5]
 8000550:	5a18      	ldrh	r0, [r3, r0]
 8000552:	b2ad      	uxth	r5, r5
 8000554:	b280      	uxth	r0, r0
 8000556:	4285      	cmp	r5, r0
 8000558:	bf38      	it	cc
 800055a:	460a      	movcc	r2, r1
 800055c:	200c      	movs	r0, #12
 800055e:	4348      	muls	r0, r1
 8000560:	5a1d      	ldrh	r5, [r3, r0]
 8000562:	b2ad      	uxth	r5, r5
 8000564:	b125      	cbz	r5, 8000570 <scheduler+0x44>
 8000566:	5a1d      	ldrh	r5, [r3, r0]
 8000568:	b2ad      	uxth	r5, r5
 800056a:	3d01      	subs	r5, #1
 800056c:	b2ad      	uxth	r5, r5
 800056e:	521d      	strh	r5, [r3, r0]
 8000570:	3101      	adds	r1, #1
 8000572:	2906      	cmp	r1, #6
 8000574:	d1dd      	bne.n	8000532 <scheduler+0x6>
 8000576:	230c      	movs	r3, #12
 8000578:	4353      	muls	r3, r2
 800057a:	18e1      	adds	r1, r4, r3
 800057c:	8849      	ldrh	r1, [r1, #2]
 800057e:	b289      	uxth	r1, r1
 8000580:	52e1      	strh	r1, [r4, r3]
 8000582:	4b02      	ldr	r3, [pc, #8]	; (800058c <scheduler+0x60>)
 8000584:	601a      	str	r2, [r3, #0]
 8000586:	bd70      	pop	{r4, r5, r6, pc}
 8000588:	2000057c 	.word	0x2000057c
 800058c:	200005c4 	.word	0x200005c4

08000590 <SysTick_Handler>:
 8000590:	e92d 0ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 8000594:	f3ef 8208 	mrs	r2, MSP
 8000598:	4c0d      	ldr	r4, [pc, #52]	; (80005d0 <SysTick_Handler+0x40>)
 800059a:	4d0e      	ldr	r5, [pc, #56]	; (80005d4 <SysTick_Handler+0x44>)
 800059c:	6823      	ldr	r3, [r4, #0]
 800059e:	3301      	adds	r3, #1
 80005a0:	d005      	beq.n	80005ae <SysTick_Handler+0x1e>
 80005a2:	6823      	ldr	r3, [r4, #0]
 80005a4:	210c      	movs	r1, #12
 80005a6:	fb01 5303 	mla	r3, r1, r3, r5
 80005aa:	609a      	str	r2, [r3, #8]
 80005ac:	e001      	b.n	80005b2 <SysTick_Handler+0x22>
 80005ae:	2300      	movs	r3, #0
 80005b0:	6023      	str	r3, [r4, #0]
 80005b2:	f7ff ffbb 	bl	800052c <scheduler>
 80005b6:	6823      	ldr	r3, [r4, #0]
 80005b8:	220c      	movs	r2, #12
 80005ba:	fb02 5503 	mla	r5, r2, r3, r5
 80005be:	f06f 0306 	mvn.w	r3, #6
 80005c2:	68aa      	ldr	r2, [r5, #8]
 80005c4:	469e      	mov	lr, r3
 80005c6:	f382 8808 	msr	MSP, r2
 80005ca:	e8bd 0ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 80005ce:	4770      	bx	lr
 80005d0:	200005c4 	.word	0x200005c4
 80005d4:	2000057c 	.word	0x2000057c

080005d8 <sched_off>:
 80005d8:	b672      	cpsid	i
 80005da:	4770      	bx	lr

080005dc <sched_on>:
 80005dc:	b662      	cpsie	i
 80005de:	4770      	bx	lr

080005e0 <yield>:
 80005e0:	4770      	bx	lr
	...

080005e4 <get_thread_id>:
 80005e4:	b082      	sub	sp, #8
 80005e6:	b672      	cpsid	i
 80005e8:	4b03      	ldr	r3, [pc, #12]	; (80005f8 <get_thread_id+0x14>)
 80005ea:	681b      	ldr	r3, [r3, #0]
 80005ec:	9301      	str	r3, [sp, #4]
 80005ee:	b662      	cpsie	i
 80005f0:	9801      	ldr	r0, [sp, #4]
 80005f2:	b002      	add	sp, #8
 80005f4:	4770      	bx	lr
 80005f6:	bf00      	nop
 80005f8:	200005c4 	.word	0x200005c4

080005fc <kernel_start>:
 80005fc:	b508      	push	{r3, lr}
 80005fe:	f002 f8f9 	bl	80027f4 <sys_tick_init>
 8000602:	bf00      	nop
 8000604:	e7fd      	b.n	8000602 <kernel_start+0x6>
	...

08000608 <create_thread>:
 8000608:	f022 0203 	bic.w	r2, r2, #3
 800060c:	3a40      	subs	r2, #64	; 0x40
 800060e:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8000612:	eb01 0c02 	add.w	ip, r1, r2
 8000616:	f102 0834 	add.w	r8, r2, #52	; 0x34
 800061a:	f102 0938 	add.w	r9, r2, #56	; 0x38
 800061e:	323c      	adds	r2, #60	; 0x3c
 8000620:	4488      	add	r8, r1
 8000622:	4489      	add	r9, r1
 8000624:	4607      	mov	r7, r0
 8000626:	4411      	add	r1, r2
 8000628:	2200      	movs	r2, #0
 800062a:	b672      	cpsid	i
 800062c:	4e11      	ldr	r6, [pc, #68]	; (8000674 <create_thread+0x6c>)
 800062e:	250c      	movs	r5, #12
 8000630:	4355      	muls	r5, r2
 8000632:	1974      	adds	r4, r6, r5
 8000634:	6860      	ldr	r0, [r4, #4]
 8000636:	07c0      	lsls	r0, r0, #31
 8000638:	d412      	bmi.n	8000660 <create_thread+0x58>
 800063a:	480f      	ldr	r0, [pc, #60]	; (8000678 <create_thread+0x70>)
 800063c:	f8c4 c008 	str.w	ip, [r4, #8]
 8000640:	f8c8 0000 	str.w	r0, [r8]
 8000644:	f04f 5004 	mov.w	r0, #553648128	; 0x21000000
 8000648:	f8c9 7000 	str.w	r7, [r9]
 800064c:	2b05      	cmp	r3, #5
 800064e:	bf98      	it	ls
 8000650:	2306      	movls	r3, #6
 8000652:	6008      	str	r0, [r1, #0]
 8000654:	2001      	movs	r0, #1
 8000656:	8063      	strh	r3, [r4, #2]
 8000658:	5373      	strh	r3, [r6, r5]
 800065a:	6060      	str	r0, [r4, #4]
 800065c:	4610      	mov	r0, r2
 800065e:	e000      	b.n	8000662 <create_thread+0x5a>
 8000660:	2006      	movs	r0, #6
 8000662:	b662      	cpsie	i
 8000664:	3201      	adds	r2, #1
 8000666:	2a06      	cmp	r2, #6
 8000668:	d001      	beq.n	800066e <create_thread+0x66>
 800066a:	2806      	cmp	r0, #6
 800066c:	d0dd      	beq.n	800062a <create_thread+0x22>
 800066e:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8000672:	bf00      	nop
 8000674:	2000057c 	.word	0x2000057c
 8000678:	08000505 	.word	0x08000505

0800067c <kernel_init>:
 800067c:	b510      	push	{r4, lr}
 800067e:	2300      	movs	r3, #0
 8000680:	490b      	ldr	r1, [pc, #44]	; (80006b0 <kernel_init+0x34>)
 8000682:	220c      	movs	r2, #12
 8000684:	435a      	muls	r2, r3
 8000686:	188c      	adds	r4, r1, r2
 8000688:	2000      	movs	r0, #0
 800068a:	6060      	str	r0, [r4, #4]
 800068c:	3301      	adds	r3, #1
 800068e:	2006      	movs	r0, #6
 8000690:	4283      	cmp	r3, r0
 8000692:	8060      	strh	r0, [r4, #2]
 8000694:	5288      	strh	r0, [r1, r2]
 8000696:	d1f3      	bne.n	8000680 <kernel_init+0x4>
 8000698:	4b06      	ldr	r3, [pc, #24]	; (80006b4 <kernel_init+0x38>)
 800069a:	4807      	ldr	r0, [pc, #28]	; (80006b8 <kernel_init+0x3c>)
 800069c:	4907      	ldr	r1, [pc, #28]	; (80006bc <kernel_init+0x40>)
 800069e:	f04f 32ff 	mov.w	r2, #4294967295
 80006a2:	601a      	str	r2, [r3, #0]
 80006a4:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80006a8:	2280      	movs	r2, #128	; 0x80
 80006aa:	23ff      	movs	r3, #255	; 0xff
 80006ac:	f7ff bfac 	b.w	8000608 <create_thread>
 80006b0:	2000057c 	.word	0x2000057c
 80006b4:	200005c4 	.word	0x200005c4
 80006b8:	08000525 	.word	0x08000525
 80006bc:	200005c8 	.word	0x200005c8

080006c0 <set_wait_state>:
 80006c0:	b507      	push	{r0, r1, r2, lr}
 80006c2:	f7ff ff8f 	bl	80005e4 <get_thread_id>
 80006c6:	9000      	str	r0, [sp, #0]
 80006c8:	b672      	cpsid	i
 80006ca:	4b0c      	ldr	r3, [pc, #48]	; (80006fc <set_wait_state+0x3c>)
 80006cc:	9a00      	ldr	r2, [sp, #0]
 80006ce:	210c      	movs	r1, #12
 80006d0:	fb01 3202 	mla	r2, r1, r2, r3
 80006d4:	6851      	ldr	r1, [r2, #4]
 80006d6:	f041 0102 	orr.w	r1, r1, #2
 80006da:	6051      	str	r1, [r2, #4]
 80006dc:	b672      	cpsid	i
 80006de:	9a00      	ldr	r2, [sp, #0]
 80006e0:	210c      	movs	r1, #12
 80006e2:	fb01 3202 	mla	r2, r1, r2, r3
 80006e6:	6852      	ldr	r2, [r2, #4]
 80006e8:	9201      	str	r2, [sp, #4]
 80006ea:	b662      	cpsie	i
 80006ec:	9a01      	ldr	r2, [sp, #4]
 80006ee:	9a01      	ldr	r2, [sp, #4]
 80006f0:	0792      	lsls	r2, r2, #30
 80006f2:	d4f3      	bmi.n	80006dc <set_wait_state+0x1c>
 80006f4:	b003      	add	sp, #12
 80006f6:	f85d fb04 	ldr.w	pc, [sp], #4
 80006fa:	bf00      	nop
 80006fc:	2000057c 	.word	0x2000057c

08000700 <wake_up_threads>:
 8000700:	2300      	movs	r3, #0
 8000702:	b672      	cpsid	i
 8000704:	4a06      	ldr	r2, [pc, #24]	; (8000720 <wake_up_threads+0x20>)
 8000706:	210c      	movs	r1, #12
 8000708:	fb01 2203 	mla	r2, r1, r3, r2
 800070c:	6851      	ldr	r1, [r2, #4]
 800070e:	f021 0102 	bic.w	r1, r1, #2
 8000712:	6051      	str	r1, [r2, #4]
 8000714:	b662      	cpsie	i
 8000716:	3301      	adds	r3, #1
 8000718:	2b06      	cmp	r3, #6
 800071a:	d1f2      	bne.n	8000702 <wake_up_threads+0x2>
 800071c:	4770      	bx	lr
 800071e:	bf00      	nop
 8000720:	2000057c 	.word	0x2000057c

08000724 <messages_init>:
 8000724:	4a0a      	ldr	r2, [pc, #40]	; (8000750 <messages_init+0x2c>)
 8000726:	2300      	movs	r3, #0
 8000728:	b510      	push	{r4, lr}
 800072a:	6013      	str	r3, [r2, #0]
 800072c:	6053      	str	r3, [r2, #4]
 800072e:	6093      	str	r3, [r2, #8]
 8000730:	60d3      	str	r3, [r2, #12]
 8000732:	6113      	str	r3, [r2, #16]
 8000734:	6153      	str	r3, [r2, #20]
 8000736:	4c07      	ldr	r4, [pc, #28]	; (8000754 <messages_init+0x30>)
 8000738:	0118      	lsls	r0, r3, #4
 800073a:	1821      	adds	r1, r4, r0
 800073c:	3301      	adds	r3, #1
 800073e:	2200      	movs	r2, #0
 8000740:	2b04      	cmp	r3, #4
 8000742:	604a      	str	r2, [r1, #4]
 8000744:	5022      	str	r2, [r4, r0]
 8000746:	60ca      	str	r2, [r1, #12]
 8000748:	608a      	str	r2, [r1, #8]
 800074a:	d1f4      	bne.n	8000736 <messages_init+0x12>
 800074c:	bd10      	pop	{r4, pc}
 800074e:	bf00      	nop
 8000750:	20000648 	.word	0x20000648
 8000754:	20000660 	.word	0x20000660

08000758 <putc_>:
 8000758:	b538      	push	{r3, r4, r5, lr}
 800075a:	4c06      	ldr	r4, [pc, #24]	; (8000774 <putc_+0x1c>)
 800075c:	4605      	mov	r5, r0
 800075e:	4620      	mov	r0, r4
 8000760:	f000 f901 	bl	8000966 <mutex_lock>
 8000764:	4628      	mov	r0, r5
 8000766:	f001 fe1d 	bl	80023a4 <uart_write>
 800076a:	4620      	mov	r0, r4
 800076c:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8000770:	f000 b915 	b.w	800099e <mutex_unlock>
 8000774:	200006a0 	.word	0x200006a0

08000778 <puts_>:
 8000778:	b510      	push	{r4, lr}
 800077a:	4604      	mov	r4, r0
 800077c:	4807      	ldr	r0, [pc, #28]	; (800079c <puts_+0x24>)
 800077e:	f000 f8f2 	bl	8000966 <mutex_lock>
 8000782:	3c01      	subs	r4, #1
 8000784:	f814 0f01 	ldrb.w	r0, [r4, #1]!
 8000788:	b110      	cbz	r0, 8000790 <puts_+0x18>
 800078a:	f7ff ffe5 	bl	8000758 <putc_>
 800078e:	e7f9      	b.n	8000784 <puts_+0xc>
 8000790:	4802      	ldr	r0, [pc, #8]	; (800079c <puts_+0x24>)
 8000792:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000796:	f000 b902 	b.w	800099e <mutex_unlock>
 800079a:	bf00      	nop
 800079c:	200006ac 	.word	0x200006ac

080007a0 <puti_>:
 80007a0:	b530      	push	{r4, r5, lr}
 80007a2:	b085      	sub	sp, #20
 80007a4:	1e03      	subs	r3, r0, #0
 80007a6:	f04f 0200 	mov.w	r2, #0
 80007aa:	bfa8      	it	ge
 80007ac:	4614      	movge	r4, r2
 80007ae:	f88d 200f 	strb.w	r2, [sp, #15]
 80007b2:	bfbc      	itt	lt
 80007b4:	425b      	neglt	r3, r3
 80007b6:	2401      	movlt	r4, #1
 80007b8:	220a      	movs	r2, #10
 80007ba:	210a      	movs	r1, #10
 80007bc:	fb93 f5f1 	sdiv	r5, r3, r1
 80007c0:	fb01 3315 	mls	r3, r1, r5, r3
 80007c4:	a801      	add	r0, sp, #4
 80007c6:	3330      	adds	r3, #48	; 0x30
 80007c8:	5413      	strb	r3, [r2, r0]
 80007ca:	1e51      	subs	r1, r2, #1
 80007cc:	462b      	mov	r3, r5
 80007ce:	b10d      	cbz	r5, 80007d4 <puti_+0x34>
 80007d0:	460a      	mov	r2, r1
 80007d2:	e7f2      	b.n	80007ba <puti_+0x1a>
 80007d4:	b12c      	cbz	r4, 80007e2 <puti_+0x42>
 80007d6:	ab04      	add	r3, sp, #16
 80007d8:	440b      	add	r3, r1
 80007da:	222d      	movs	r2, #45	; 0x2d
 80007dc:	f803 2c0c 	strb.w	r2, [r3, #-12]
 80007e0:	460a      	mov	r2, r1
 80007e2:	4410      	add	r0, r2
 80007e4:	f7ff ffc8 	bl	8000778 <puts_>
 80007e8:	b005      	add	sp, #20
 80007ea:	bd30      	pop	{r4, r5, pc}

080007ec <putui_>:
 80007ec:	b51f      	push	{r0, r1, r2, r3, r4, lr}
 80007ee:	2300      	movs	r3, #0
 80007f0:	f88d 300f 	strb.w	r3, [sp, #15]
 80007f4:	230a      	movs	r3, #10
 80007f6:	240a      	movs	r4, #10
 80007f8:	fbb0 f1f4 	udiv	r1, r0, r4
 80007fc:	fb04 0011 	mls	r0, r4, r1, r0
 8000800:	aa01      	add	r2, sp, #4
 8000802:	3030      	adds	r0, #48	; 0x30
 8000804:	5498      	strb	r0, [r3, r2]
 8000806:	1e5c      	subs	r4, r3, #1
 8000808:	4608      	mov	r0, r1
 800080a:	b109      	cbz	r1, 8000810 <putui_+0x24>
 800080c:	4623      	mov	r3, r4
 800080e:	e7f2      	b.n	80007f6 <putui_+0xa>
 8000810:	18d0      	adds	r0, r2, r3
 8000812:	f7ff ffb1 	bl	8000778 <puts_>
 8000816:	b004      	add	sp, #16
 8000818:	bd10      	pop	{r4, pc}

0800081a <putx_>:
 800081a:	b51f      	push	{r0, r1, r2, r3, r4, lr}
 800081c:	2300      	movs	r3, #0
 800081e:	f88d 300f 	strb.w	r3, [sp, #15]
 8000822:	230a      	movs	r3, #10
 8000824:	f000 010f 	and.w	r1, r0, #15
 8000828:	2909      	cmp	r1, #9
 800082a:	aa01      	add	r2, sp, #4
 800082c:	bf94      	ite	ls
 800082e:	3130      	addls	r1, #48	; 0x30
 8000830:	3157      	addhi	r1, #87	; 0x57
 8000832:	0900      	lsrs	r0, r0, #4
 8000834:	54d1      	strb	r1, [r2, r3]
 8000836:	f103 31ff 	add.w	r1, r3, #4294967295
 800083a:	d001      	beq.n	8000840 <putx_+0x26>
 800083c:	460b      	mov	r3, r1
 800083e:	e7f1      	b.n	8000824 <putx_+0xa>
 8000840:	18d0      	adds	r0, r2, r3
 8000842:	f7ff ff99 	bl	8000778 <puts_>
 8000846:	b005      	add	sp, #20
 8000848:	f85d fb04 	ldr.w	pc, [sp], #4

0800084c <printf_>:
 800084c:	b40f      	push	{r0, r1, r2, r3}
 800084e:	b537      	push	{r0, r1, r2, r4, r5, lr}
 8000850:	ac06      	add	r4, sp, #24
 8000852:	4826      	ldr	r0, [pc, #152]	; (80008ec <printf_+0xa0>)
 8000854:	f854 5b04 	ldr.w	r5, [r4], #4
 8000858:	f000 f885 	bl	8000966 <mutex_lock>
 800085c:	9401      	str	r4, [sp, #4]
 800085e:	2400      	movs	r4, #0
 8000860:	5d28      	ldrb	r0, [r5, r4]
 8000862:	2800      	cmp	r0, #0
 8000864:	d039      	beq.n	80008da <printf_+0x8e>
 8000866:	2825      	cmp	r0, #37	; 0x25
 8000868:	d003      	beq.n	8000872 <printf_+0x26>
 800086a:	f7ff ff75 	bl	8000758 <putc_>
 800086e:	3401      	adds	r4, #1
 8000870:	e7f6      	b.n	8000860 <printf_+0x14>
 8000872:	192b      	adds	r3, r5, r4
 8000874:	7858      	ldrb	r0, [r3, #1]
 8000876:	2869      	cmp	r0, #105	; 0x69
 8000878:	d016      	beq.n	80008a8 <printf_+0x5c>
 800087a:	d808      	bhi.n	800088e <printf_+0x42>
 800087c:	2825      	cmp	r0, #37	; 0x25
 800087e:	d028      	beq.n	80008d2 <printf_+0x86>
 8000880:	2863      	cmp	r0, #99	; 0x63
 8000882:	d128      	bne.n	80008d6 <printf_+0x8a>
 8000884:	9b01      	ldr	r3, [sp, #4]
 8000886:	1d1a      	adds	r2, r3, #4
 8000888:	9201      	str	r2, [sp, #4]
 800088a:	7818      	ldrb	r0, [r3, #0]
 800088c:	e021      	b.n	80008d2 <printf_+0x86>
 800088e:	2875      	cmp	r0, #117	; 0x75
 8000890:	d011      	beq.n	80008b6 <printf_+0x6a>
 8000892:	2878      	cmp	r0, #120	; 0x78
 8000894:	d016      	beq.n	80008c4 <printf_+0x78>
 8000896:	2873      	cmp	r0, #115	; 0x73
 8000898:	d11d      	bne.n	80008d6 <printf_+0x8a>
 800089a:	9b01      	ldr	r3, [sp, #4]
 800089c:	1d1a      	adds	r2, r3, #4
 800089e:	6818      	ldr	r0, [r3, #0]
 80008a0:	9201      	str	r2, [sp, #4]
 80008a2:	f7ff ff69 	bl	8000778 <puts_>
 80008a6:	e016      	b.n	80008d6 <printf_+0x8a>
 80008a8:	9b01      	ldr	r3, [sp, #4]
 80008aa:	1d1a      	adds	r2, r3, #4
 80008ac:	6818      	ldr	r0, [r3, #0]
 80008ae:	9201      	str	r2, [sp, #4]
 80008b0:	f7ff ff76 	bl	80007a0 <puti_>
 80008b4:	e00f      	b.n	80008d6 <printf_+0x8a>
 80008b6:	9b01      	ldr	r3, [sp, #4]
 80008b8:	1d1a      	adds	r2, r3, #4
 80008ba:	6818      	ldr	r0, [r3, #0]
 80008bc:	9201      	str	r2, [sp, #4]
 80008be:	f7ff ff95 	bl	80007ec <putui_>
 80008c2:	e008      	b.n	80008d6 <printf_+0x8a>
 80008c4:	9b01      	ldr	r3, [sp, #4]
 80008c6:	1d1a      	adds	r2, r3, #4
 80008c8:	6818      	ldr	r0, [r3, #0]
 80008ca:	9201      	str	r2, [sp, #4]
 80008cc:	f7ff ffa5 	bl	800081a <putx_>
 80008d0:	e001      	b.n	80008d6 <printf_+0x8a>
 80008d2:	f7ff ff41 	bl	8000758 <putc_>
 80008d6:	3402      	adds	r4, #2
 80008d8:	e7c2      	b.n	8000860 <printf_+0x14>
 80008da:	4804      	ldr	r0, [pc, #16]	; (80008ec <printf_+0xa0>)
 80008dc:	f000 f85f 	bl	800099e <mutex_unlock>
 80008e0:	b003      	add	sp, #12
 80008e2:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
 80008e6:	b004      	add	sp, #16
 80008e8:	4770      	bx	lr
 80008ea:	bf00      	nop
 80008ec:	200006a8 	.word	0x200006a8

080008f0 <stdio_init>:
 80008f0:	b510      	push	{r4, lr}
 80008f2:	480e      	ldr	r0, [pc, #56]	; (800092c <stdio_init+0x3c>)
 80008f4:	f000 f82d 	bl	8000952 <mutex_init>
 80008f8:	480d      	ldr	r0, [pc, #52]	; (8000930 <stdio_init+0x40>)
 80008fa:	f000 f82a 	bl	8000952 <mutex_init>
 80008fe:	480d      	ldr	r0, [pc, #52]	; (8000934 <stdio_init+0x44>)
 8000900:	f000 f827 	bl	8000952 <mutex_init>
 8000904:	480c      	ldr	r0, [pc, #48]	; (8000938 <stdio_init+0x48>)
 8000906:	f000 f824 	bl	8000952 <mutex_init>
 800090a:	2408      	movs	r4, #8
 800090c:	2020      	movs	r0, #32
 800090e:	f7ff ff23 	bl	8000758 <putc_>
 8000912:	3c01      	subs	r4, #1
 8000914:	d1fa      	bne.n	800090c <stdio_init+0x1c>
 8000916:	2420      	movs	r4, #32
 8000918:	200a      	movs	r0, #10
 800091a:	f7ff ff1d 	bl	8000758 <putc_>
 800091e:	3c01      	subs	r4, #1
 8000920:	d1fa      	bne.n	8000918 <stdio_init+0x28>
 8000922:	4806      	ldr	r0, [pc, #24]	; (800093c <stdio_init+0x4c>)
 8000924:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000928:	f7ff bf90 	b.w	800084c <printf_>
 800092c:	200006a0 	.word	0x200006a0
 8000930:	200006a4 	.word	0x200006a4
 8000934:	200006ac 	.word	0x200006ac
 8000938:	200006a8 	.word	0x200006a8
 800093c:	080045c4 	.word	0x080045c4

08000940 <lib_os_init>:
 8000940:	b508      	push	{r3, lr}
 8000942:	f7ff fe9b 	bl	800067c <kernel_init>
 8000946:	f7ff feed 	bl	8000724 <messages_init>
 800094a:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800094e:	f7ff bfcf 	b.w	80008f0 <stdio_init>

08000952 <mutex_init>:
 8000952:	b510      	push	{r4, lr}
 8000954:	4604      	mov	r4, r0
 8000956:	f7ff fe3f 	bl	80005d8 <sched_off>
 800095a:	2300      	movs	r3, #0
 800095c:	6023      	str	r3, [r4, #0]
 800095e:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000962:	f7ff be3b 	b.w	80005dc <sched_on>

08000966 <mutex_lock>:
 8000966:	b513      	push	{r0, r1, r4, lr}
 8000968:	4604      	mov	r4, r0
 800096a:	f7ff fe35 	bl	80005d8 <sched_off>
 800096e:	6823      	ldr	r3, [r4, #0]
 8000970:	9301      	str	r3, [sp, #4]
 8000972:	f7ff fe33 	bl	80005dc <sched_on>
 8000976:	9b01      	ldr	r3, [sp, #4]
 8000978:	b10b      	cbz	r3, 800097e <mutex_lock+0x18>
 800097a:	f7ff fea1 	bl	80006c0 <set_wait_state>
 800097e:	9b01      	ldr	r3, [sp, #4]
 8000980:	2b00      	cmp	r3, #0
 8000982:	d1f2      	bne.n	800096a <mutex_lock+0x4>
 8000984:	f7ff fe28 	bl	80005d8 <sched_off>
 8000988:	6823      	ldr	r3, [r4, #0]
 800098a:	9301      	str	r3, [sp, #4]
 800098c:	9b01      	ldr	r3, [sp, #4]
 800098e:	2b00      	cmp	r3, #0
 8000990:	d1eb      	bne.n	800096a <mutex_lock+0x4>
 8000992:	2301      	movs	r3, #1
 8000994:	6023      	str	r3, [r4, #0]
 8000996:	f7ff fe21 	bl	80005dc <sched_on>
 800099a:	b002      	add	sp, #8
 800099c:	bd10      	pop	{r4, pc}

0800099e <mutex_unlock>:
 800099e:	b508      	push	{r3, lr}
 80009a0:	f7ff ffd7 	bl	8000952 <mutex_init>
 80009a4:	f7ff feac 	bl	8000700 <wake_up_threads>
 80009a8:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80009ac:	f7ff be18 	b.w	80005e0 <yield>

080009b0 <m_abs>:
 80009b0:	ee07 0a90 	vmov	s15, r0
 80009b4:	eef5 7ac0 	vcmpe.f32	s15, #0.0
 80009b8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80009bc:	bf48      	it	mi
 80009be:	eef1 7a67 	vnegmi.f32	s15, s15
 80009c2:	ee17 0a90 	vmov	r0, s15
 80009c6:	4770      	bx	lr

080009c8 <m_saturate>:
 80009c8:	ee07 0a90 	vmov	s15, r0
 80009cc:	ee06 1a90 	vmov	s13, r1
 80009d0:	eef4 7a66 	vcmp.f32	s15, s13
 80009d4:	ee07 2a10 	vmov	s14, r2
 80009d8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80009dc:	bf48      	it	mi
 80009de:	eef0 7a66 	vmovmi.f32	s15, s13
 80009e2:	eef4 7a47 	vcmp.f32	s15, s14
 80009e6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80009ea:	bfcc      	ite	gt
 80009ec:	ee17 0a10 	vmovgt	r0, s14
 80009f0:	ee17 0a90 	vmovle	r0, s15
 80009f4:	4770      	bx	lr

080009f6 <m_min>:
 80009f6:	ee07 0a10 	vmov	s14, r0
 80009fa:	ee07 1a90 	vmov	s15, r1
 80009fe:	eeb4 7ae7 	vcmpe.f32	s14, s15
 8000a02:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000a06:	bf54      	ite	pl
 8000a08:	ee17 0a90 	vmovpl	r0, s15
 8000a0c:	ee17 0a10 	vmovmi	r0, s14
 8000a10:	4770      	bx	lr
	...

08000a14 <pid_init>:
 8000a14:	ee06 2a10 	vmov	s12, r2
 8000a18:	ee05 3a90 	vmov	s11, r3
 8000a1c:	eddd 7a00 	vldr	s15, [sp]
 8000a20:	ee76 6a25 	vadd.f32	s13, s12, s11
 8000a24:	ed9d 7a01 	vldr	s14, [sp, #4]
 8000a28:	ee76 6aa7 	vadd.f32	s13, s13, s15
 8000a2c:	ee77 5aa7 	vadd.f32	s11, s15, s15
 8000a30:	ee76 6a87 	vadd.f32	s13, s13, s14
 8000a34:	eeb1 6a46 	vneg.f32	s12, s12
 8000a38:	edc0 6a04 	vstr	s13, [r0, #16]
 8000a3c:	eddf 6a0c 	vldr	s13, [pc, #48]	; 8000a70 <pid_init+0x5c>
 8000a40:	ee36 6a65 	vsub.f32	s12, s12, s11
 8000a44:	ee67 6a26 	vmul.f32	s13, s14, s13
 8000a48:	2200      	movs	r2, #0
 8000a4a:	ee36 6a66 	vsub.f32	s12, s12, s13
 8000a4e:	ee77 7aa6 	vadd.f32	s15, s15, s13
 8000a52:	eeb1 7a47 	vneg.f32	s14, s14
 8000a56:	6002      	str	r2, [r0, #0]
 8000a58:	6042      	str	r2, [r0, #4]
 8000a5a:	6082      	str	r2, [r0, #8]
 8000a5c:	60c2      	str	r2, [r0, #12]
 8000a5e:	ed80 6a05 	vstr	s12, [r0, #20]
 8000a62:	edc0 7a06 	vstr	s15, [r0, #24]
 8000a66:	ed80 7a07 	vstr	s14, [r0, #28]
 8000a6a:	6202      	str	r2, [r0, #32]
 8000a6c:	6241      	str	r1, [r0, #36]	; 0x24
 8000a6e:	4770      	bx	lr
 8000a70:	40400000 	.word	0x40400000

08000a74 <pid_process>:
 8000a74:	edd0 7a08 	vldr	s15, [r0, #32]
 8000a78:	ee05 1a90 	vmov	s11, r1
 8000a7c:	ed90 5a04 	vldr	s10, [r0, #16]
 8000a80:	ee45 7a85 	vmla.f32	s15, s11, s10
 8000a84:	ed90 6a00 	vldr	s12, [r0]
 8000a88:	edd0 5a05 	vldr	s11, [r0, #20]
 8000a8c:	ee46 7a25 	vmla.f32	s15, s12, s11
 8000a90:	edd0 6a01 	vldr	s13, [r0, #4]
 8000a94:	ed80 6a01 	vstr	s12, [r0, #4]
 8000a98:	ed90 6a06 	vldr	s12, [r0, #24]
 8000a9c:	ee46 7a86 	vmla.f32	s15, s13, s12
 8000aa0:	ed90 7a02 	vldr	s14, [r0, #8]
 8000aa4:	edc0 6a02 	vstr	s13, [r0, #8]
 8000aa8:	edd0 6a07 	vldr	s13, [r0, #28]
 8000aac:	ee47 7a26 	vmla.f32	s15, s14, s13
 8000ab0:	ed80 7a03 	vstr	s14, [r0, #12]
 8000ab4:	ed90 7a09 	vldr	s14, [r0, #36]	; 0x24
 8000ab8:	eef4 7ac7 	vcmpe.f32	s15, s14
 8000abc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000ac0:	edc0 7a08 	vstr	s15, [r0, #32]
 8000ac4:	bfc8      	it	gt
 8000ac6:	ed80 7a08 	vstrgt	s14, [r0, #32]
 8000aca:	edd0 7a08 	vldr	s15, [r0, #32]
 8000ace:	eeb1 7a47 	vneg.f32	s14, s14
 8000ad2:	eef4 7ac7 	vcmpe.f32	s15, s14
 8000ad6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000ada:	bf48      	it	mi
 8000adc:	ed80 7a08 	vstrmi	s14, [r0, #32]
 8000ae0:	6001      	str	r1, [r0, #0]
 8000ae2:	6a00      	ldr	r0, [r0, #32]
 8000ae4:	4770      	bx	lr
	...

08000ae8 <lsm9ds0_get>:
 8000ae8:	4800      	ldr	r0, [pc, #0]	; (8000aec <lsm9ds0_get+0x4>)
 8000aea:	4770      	bx	lr
 8000aec:	200006b0 	.word	0x200006b0

08000af0 <lsm9ds0_read>:
 8000af0:	b538      	push	{r3, r4, r5, lr}
 8000af2:	2128      	movs	r1, #40	; 0x28
 8000af4:	20d4      	movs	r0, #212	; 0xd4
 8000af6:	f001 fde2 	bl	80026be <i2c_read_reg>
 8000afa:	2129      	movs	r1, #41	; 0x29
 8000afc:	4605      	mov	r5, r0
 8000afe:	20d4      	movs	r0, #212	; 0xd4
 8000b00:	f001 fddd 	bl	80026be <i2c_read_reg>
 8000b04:	4c38      	ldr	r4, [pc, #224]	; (8000be8 <lsm9ds0_read+0xf8>)
 8000b06:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000b0a:	81a0      	strh	r0, [r4, #12]
 8000b0c:	212a      	movs	r1, #42	; 0x2a
 8000b0e:	20d4      	movs	r0, #212	; 0xd4
 8000b10:	f001 fdd5 	bl	80026be <i2c_read_reg>
 8000b14:	212b      	movs	r1, #43	; 0x2b
 8000b16:	4605      	mov	r5, r0
 8000b18:	20d4      	movs	r0, #212	; 0xd4
 8000b1a:	f001 fdd0 	bl	80026be <i2c_read_reg>
 8000b1e:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000b22:	81e0      	strh	r0, [r4, #14]
 8000b24:	212c      	movs	r1, #44	; 0x2c
 8000b26:	20d4      	movs	r0, #212	; 0xd4
 8000b28:	f001 fdc9 	bl	80026be <i2c_read_reg>
 8000b2c:	212d      	movs	r1, #45	; 0x2d
 8000b2e:	4605      	mov	r5, r0
 8000b30:	20d4      	movs	r0, #212	; 0xd4
 8000b32:	f001 fdc4 	bl	80026be <i2c_read_reg>
 8000b36:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000b3a:	8220      	strh	r0, [r4, #16]
 8000b3c:	2108      	movs	r1, #8
 8000b3e:	203c      	movs	r0, #60	; 0x3c
 8000b40:	f001 fdbd 	bl	80026be <i2c_read_reg>
 8000b44:	2109      	movs	r1, #9
 8000b46:	4605      	mov	r5, r0
 8000b48:	203c      	movs	r0, #60	; 0x3c
 8000b4a:	f001 fdb8 	bl	80026be <i2c_read_reg>
 8000b4e:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000b52:	80e0      	strh	r0, [r4, #6]
 8000b54:	210a      	movs	r1, #10
 8000b56:	203c      	movs	r0, #60	; 0x3c
 8000b58:	f001 fdb1 	bl	80026be <i2c_read_reg>
 8000b5c:	210b      	movs	r1, #11
 8000b5e:	4605      	mov	r5, r0
 8000b60:	203c      	movs	r0, #60	; 0x3c
 8000b62:	f001 fdac 	bl	80026be <i2c_read_reg>
 8000b66:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000b6a:	8120      	strh	r0, [r4, #8]
 8000b6c:	210c      	movs	r1, #12
 8000b6e:	203c      	movs	r0, #60	; 0x3c
 8000b70:	f001 fda5 	bl	80026be <i2c_read_reg>
 8000b74:	210d      	movs	r1, #13
 8000b76:	4605      	mov	r5, r0
 8000b78:	203c      	movs	r0, #60	; 0x3c
 8000b7a:	f001 fda0 	bl	80026be <i2c_read_reg>
 8000b7e:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000b82:	8160      	strh	r0, [r4, #10]
 8000b84:	2128      	movs	r1, #40	; 0x28
 8000b86:	203c      	movs	r0, #60	; 0x3c
 8000b88:	f001 fd99 	bl	80026be <i2c_read_reg>
 8000b8c:	2129      	movs	r1, #41	; 0x29
 8000b8e:	4605      	mov	r5, r0
 8000b90:	203c      	movs	r0, #60	; 0x3c
 8000b92:	f001 fd94 	bl	80026be <i2c_read_reg>
 8000b96:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000b9a:	8020      	strh	r0, [r4, #0]
 8000b9c:	212a      	movs	r1, #42	; 0x2a
 8000b9e:	203c      	movs	r0, #60	; 0x3c
 8000ba0:	f001 fd8d 	bl	80026be <i2c_read_reg>
 8000ba4:	212b      	movs	r1, #43	; 0x2b
 8000ba6:	4605      	mov	r5, r0
 8000ba8:	203c      	movs	r0, #60	; 0x3c
 8000baa:	f001 fd88 	bl	80026be <i2c_read_reg>
 8000bae:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000bb2:	8060      	strh	r0, [r4, #2]
 8000bb4:	212c      	movs	r1, #44	; 0x2c
 8000bb6:	203c      	movs	r0, #60	; 0x3c
 8000bb8:	f001 fd81 	bl	80026be <i2c_read_reg>
 8000bbc:	212d      	movs	r1, #45	; 0x2d
 8000bbe:	4605      	mov	r5, r0
 8000bc0:	203c      	movs	r0, #60	; 0x3c
 8000bc2:	f001 fd7c 	bl	80026be <i2c_read_reg>
 8000bc6:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000bca:	80a0      	strh	r0, [r4, #4]
 8000bcc:	2105      	movs	r1, #5
 8000bce:	203c      	movs	r0, #60	; 0x3c
 8000bd0:	f001 fd75 	bl	80026be <i2c_read_reg>
 8000bd4:	2106      	movs	r1, #6
 8000bd6:	4605      	mov	r5, r0
 8000bd8:	203c      	movs	r0, #60	; 0x3c
 8000bda:	f001 fd70 	bl	80026be <i2c_read_reg>
 8000bde:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000be2:	83e0      	strh	r0, [r4, #30]
 8000be4:	bd38      	pop	{r3, r4, r5, pc}
 8000be6:	bf00      	nop
 8000be8:	200006b0 	.word	0x200006b0

08000bec <lsm9ds0_init>:
 8000bec:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8000bf0:	4d35      	ldr	r5, [pc, #212]	; (8000cc8 <lsm9ds0_init+0xdc>)
 8000bf2:	2400      	movs	r4, #0
 8000bf4:	20d4      	movs	r0, #212	; 0xd4
 8000bf6:	210f      	movs	r1, #15
 8000bf8:	802c      	strh	r4, [r5, #0]
 8000bfa:	806c      	strh	r4, [r5, #2]
 8000bfc:	80ac      	strh	r4, [r5, #4]
 8000bfe:	80ec      	strh	r4, [r5, #6]
 8000c00:	812c      	strh	r4, [r5, #8]
 8000c02:	816c      	strh	r4, [r5, #10]
 8000c04:	81ac      	strh	r4, [r5, #12]
 8000c06:	81ec      	strh	r4, [r5, #14]
 8000c08:	822c      	strh	r4, [r5, #16]
 8000c0a:	826c      	strh	r4, [r5, #18]
 8000c0c:	82ac      	strh	r4, [r5, #20]
 8000c0e:	82ec      	strh	r4, [r5, #22]
 8000c10:	832c      	strh	r4, [r5, #24]
 8000c12:	836c      	strh	r4, [r5, #26]
 8000c14:	83ac      	strh	r4, [r5, #28]
 8000c16:	83ec      	strh	r4, [r5, #30]
 8000c18:	f001 fd51 	bl	80026be <i2c_read_reg>
 8000c1c:	28d4      	cmp	r0, #212	; 0xd4
 8000c1e:	4606      	mov	r6, r0
 8000c20:	d14e      	bne.n	8000cc0 <lsm9ds0_init+0xd4>
 8000c22:	203c      	movs	r0, #60	; 0x3c
 8000c24:	210f      	movs	r1, #15
 8000c26:	f001 fd4a 	bl	80026be <i2c_read_reg>
 8000c2a:	2849      	cmp	r0, #73	; 0x49
 8000c2c:	bf18      	it	ne
 8000c2e:	2602      	movne	r6, #2
 8000c30:	d147      	bne.n	8000cc2 <lsm9ds0_init+0xd6>
 8000c32:	4630      	mov	r0, r6
 8000c34:	2120      	movs	r1, #32
 8000c36:	22ff      	movs	r2, #255	; 0xff
 8000c38:	f001 fd2e 	bl	8002698 <i2c_write_reg>
 8000c3c:	4630      	mov	r0, r6
 8000c3e:	2123      	movs	r1, #35	; 0x23
 8000c40:	2218      	movs	r2, #24
 8000c42:	f001 fd29 	bl	8002698 <i2c_write_reg>
 8000c46:	203c      	movs	r0, #60	; 0x3c
 8000c48:	211f      	movs	r1, #31
 8000c4a:	4622      	mov	r2, r4
 8000c4c:	f001 fd24 	bl	8002698 <i2c_write_reg>
 8000c50:	203c      	movs	r0, #60	; 0x3c
 8000c52:	2120      	movs	r1, #32
 8000c54:	2267      	movs	r2, #103	; 0x67
 8000c56:	f001 fd1f 	bl	8002698 <i2c_write_reg>
 8000c5a:	203c      	movs	r0, #60	; 0x3c
 8000c5c:	2121      	movs	r1, #33	; 0x21
 8000c5e:	4622      	mov	r2, r4
 8000c60:	f001 fd1a 	bl	8002698 <i2c_write_reg>
 8000c64:	203c      	movs	r0, #60	; 0x3c
 8000c66:	2124      	movs	r1, #36	; 0x24
 8000c68:	22f4      	movs	r2, #244	; 0xf4
 8000c6a:	f001 fd15 	bl	8002698 <i2c_write_reg>
 8000c6e:	203c      	movs	r0, #60	; 0x3c
 8000c70:	2125      	movs	r1, #37	; 0x25
 8000c72:	4622      	mov	r2, r4
 8000c74:	f001 fd10 	bl	8002698 <i2c_write_reg>
 8000c78:	203c      	movs	r0, #60	; 0x3c
 8000c7a:	2126      	movs	r1, #38	; 0x26
 8000c7c:	2280      	movs	r2, #128	; 0x80
 8000c7e:	f001 fd0b 	bl	8002698 <i2c_write_reg>
 8000c82:	f7ff ff35 	bl	8000af0 <lsm9ds0_read>
 8000c86:	2664      	movs	r6, #100	; 0x64
 8000c88:	4627      	mov	r7, r4
 8000c8a:	46a0      	mov	r8, r4
 8000c8c:	f7ff ff30 	bl	8000af0 <lsm9ds0_read>
 8000c90:	f9b5 200c 	ldrsh.w	r2, [r5, #12]
 8000c94:	4b0c      	ldr	r3, [pc, #48]	; (8000cc8 <lsm9ds0_init+0xdc>)
 8000c96:	4490      	add	r8, r2
 8000c98:	f9b5 200e 	ldrsh.w	r2, [r5, #14]
 8000c9c:	4417      	add	r7, r2
 8000c9e:	f9b5 2010 	ldrsh.w	r2, [r5, #16]
 8000ca2:	3e01      	subs	r6, #1
 8000ca4:	4414      	add	r4, r2
 8000ca6:	d1f1      	bne.n	8000c8c <lsm9ds0_init+0xa0>
 8000ca8:	2264      	movs	r2, #100	; 0x64
 8000caa:	fb98 f8f2 	sdiv	r8, r8, r2
 8000cae:	fb97 f7f2 	sdiv	r7, r7, r2
 8000cb2:	fb94 f4f2 	sdiv	r4, r4, r2
 8000cb6:	f8a3 8012 	strh.w	r8, [r3, #18]
 8000cba:	829f      	strh	r7, [r3, #20]
 8000cbc:	82dc      	strh	r4, [r3, #22]
 8000cbe:	e000      	b.n	8000cc2 <lsm9ds0_init+0xd6>
 8000cc0:	2601      	movs	r6, #1
 8000cc2:	4630      	mov	r0, r6
 8000cc4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8000cc8:	200006b0 	.word	0x200006b0

08000ccc <TIM2_IRQHandler>:
 8000ccc:	4b21      	ldr	r3, [pc, #132]	; (8000d54 <TIM2_IRQHandler+0x88>)
 8000cce:	4a22      	ldr	r2, [pc, #136]	; (8000d58 <TIM2_IRQHandler+0x8c>)
 8000cd0:	6819      	ldr	r1, [r3, #0]
 8000cd2:	2901      	cmp	r1, #1
 8000cd4:	b510      	push	{r4, lr}
 8000cd6:	d011      	beq.n	8000cfc <TIM2_IRQHandler+0x30>
 8000cd8:	d306      	bcc.n	8000ce8 <TIM2_IRQHandler+0x1c>
 8000cda:	2902      	cmp	r1, #2
 8000cdc:	d113      	bne.n	8000d06 <TIM2_IRQHandler+0x3a>
 8000cde:	f44f 6180 	mov.w	r1, #1024	; 0x400
 8000ce2:	8511      	strh	r1, [r2, #40]	; 0x28
 8000ce4:	2204      	movs	r2, #4
 8000ce6:	e023      	b.n	8000d30 <TIM2_IRQHandler+0x64>
 8000ce8:	f44f 7180 	mov.w	r1, #256	; 0x100
 8000cec:	8511      	strh	r1, [r2, #40]	; 0x28
 8000cee:	f44f 6180 	mov.w	r1, #1024	; 0x400
 8000cf2:	6191      	str	r1, [r2, #24]
 8000cf4:	2201      	movs	r2, #1
 8000cf6:	601a      	str	r2, [r3, #0]
 8000cf8:	609a      	str	r2, [r3, #8]
 8000cfa:	e023      	b.n	8000d44 <TIM2_IRQHandler+0x78>
 8000cfc:	f44f 7180 	mov.w	r1, #256	; 0x100
 8000d00:	6191      	str	r1, [r2, #24]
 8000d02:	2202      	movs	r2, #2
 8000d04:	e014      	b.n	8000d30 <TIM2_IRQHandler+0x64>
 8000d06:	f011 0f01 	tst.w	r1, #1
 8000d0a:	4814      	ldr	r0, [pc, #80]	; (8000d5c <TIM2_IRQHandler+0x90>)
 8000d0c:	f101 0401 	add.w	r4, r1, #1
 8000d10:	d010      	beq.n	8000d34 <TIM2_IRQHandler+0x68>
 8000d12:	3904      	subs	r1, #4
 8000d14:	f021 0101 	bic.w	r1, r1, #1
 8000d18:	6c00      	ldr	r0, [r0, #64]	; 0x40
 8000d1a:	4419      	add	r1, r3
 8000d1c:	f5b4 7f82 	cmp.w	r4, #260	; 0x104
 8000d20:	8288      	strh	r0, [r1, #20]
 8000d22:	f44f 7180 	mov.w	r1, #256	; 0x100
 8000d26:	8511      	strh	r1, [r2, #40]	; 0x28
 8000d28:	d201      	bcs.n	8000d2e <TIM2_IRQHandler+0x62>
 8000d2a:	601c      	str	r4, [r3, #0]
 8000d2c:	e00a      	b.n	8000d44 <TIM2_IRQHandler+0x78>
 8000d2e:	2200      	movs	r2, #0
 8000d30:	601a      	str	r2, [r3, #0]
 8000d32:	e007      	b.n	8000d44 <TIM2_IRQHandler+0x78>
 8000d34:	f44f 7180 	mov.w	r1, #256	; 0x100
 8000d38:	6191      	str	r1, [r2, #24]
 8000d3a:	601c      	str	r4, [r3, #0]
 8000d3c:	6883      	ldr	r3, [r0, #8]
 8000d3e:	f043 0304 	orr.w	r3, r3, #4
 8000d42:	6083      	str	r3, [r0, #8]
 8000d44:	f04f 4080 	mov.w	r0, #1073741824	; 0x40000000
 8000d48:	2101      	movs	r1, #1
 8000d4a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000d4e:	f001 b9b4 	b.w	80020ba <TIM_ClearITPendingBit>
 8000d52:	bf00      	nop
 8000d54:	200006d0 	.word	0x200006d0
 8000d58:	48000400 	.word	0x48000400
 8000d5c:	50000500 	.word	0x50000500

08000d60 <rgb_i2c_delay>:
 8000d60:	bf00      	nop
 8000d62:	bf00      	nop
 8000d64:	bf00      	nop
 8000d66:	bf00      	nop
 8000d68:	4770      	bx	lr
	...

08000d6c <RGBSetLowSDA>:
 8000d6c:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 8000d6e:	4f15      	ldr	r7, [pc, #84]	; (8000dc4 <RGBSetLowSDA+0x58>)
 8000d70:	783b      	ldrb	r3, [r7, #0]
 8000d72:	2401      	movs	r4, #1
 8000d74:	2603      	movs	r6, #3
 8000d76:	2500      	movs	r5, #0
 8000d78:	4669      	mov	r1, sp
 8000d7a:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000d7e:	9300      	str	r3, [sp, #0]
 8000d80:	f88d 5007 	strb.w	r5, [sp, #7]
 8000d84:	f88d 4004 	strb.w	r4, [sp, #4]
 8000d88:	f88d 6005 	strb.w	r6, [sp, #5]
 8000d8c:	f88d 4006 	strb.w	r4, [sp, #6]
 8000d90:	f001 fe89 	bl	8002aa6 <GPIO_Init>
 8000d94:	783a      	ldrb	r2, [r7, #0]
 8000d96:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000d9a:	4669      	mov	r1, sp
 8000d9c:	851a      	strh	r2, [r3, #40]	; 0x28
 8000d9e:	f88d 5007 	strb.w	r5, [sp, #7]
 8000da2:	4d09      	ldr	r5, [pc, #36]	; (8000dc8 <RGBSetLowSDA+0x5c>)
 8000da4:	9400      	str	r4, [sp, #0]
 8000da6:	4628      	mov	r0, r5
 8000da8:	f88d 4004 	strb.w	r4, [sp, #4]
 8000dac:	f88d 6005 	strb.w	r6, [sp, #5]
 8000db0:	f88d 4006 	strb.w	r4, [sp, #6]
 8000db4:	f001 fe77 	bl	8002aa6 <GPIO_Init>
 8000db8:	852c      	strh	r4, [r5, #40]	; 0x28
 8000dba:	f7ff ffd1 	bl	8000d60 <rgb_i2c_delay>
 8000dbe:	b003      	add	sp, #12
 8000dc0:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000dc2:	bf00      	nop
 8000dc4:	2000093e 	.word	0x2000093e
 8000dc8:	48000400 	.word	0x48000400

08000dcc <RGBSetHighSDA>:
 8000dcc:	b573      	push	{r0, r1, r4, r5, r6, lr}
 8000dce:	4d13      	ldr	r5, [pc, #76]	; (8000e1c <RGBSetHighSDA+0x50>)
 8000dd0:	782b      	ldrb	r3, [r5, #0]
 8000dd2:	2400      	movs	r4, #0
 8000dd4:	2603      	movs	r6, #3
 8000dd6:	4669      	mov	r1, sp
 8000dd8:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000ddc:	9300      	str	r3, [sp, #0]
 8000dde:	f88d 4004 	strb.w	r4, [sp, #4]
 8000de2:	f88d 4007 	strb.w	r4, [sp, #7]
 8000de6:	f88d 6005 	strb.w	r6, [sp, #5]
 8000dea:	f001 fe5c 	bl	8002aa6 <GPIO_Init>
 8000dee:	782a      	ldrb	r2, [r5, #0]
 8000df0:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000df4:	2501      	movs	r5, #1
 8000df6:	619a      	str	r2, [r3, #24]
 8000df8:	f88d 4004 	strb.w	r4, [sp, #4]
 8000dfc:	f88d 4007 	strb.w	r4, [sp, #7]
 8000e00:	4c07      	ldr	r4, [pc, #28]	; (8000e20 <RGBSetHighSDA+0x54>)
 8000e02:	9500      	str	r5, [sp, #0]
 8000e04:	4620      	mov	r0, r4
 8000e06:	4669      	mov	r1, sp
 8000e08:	f88d 6005 	strb.w	r6, [sp, #5]
 8000e0c:	f001 fe4b 	bl	8002aa6 <GPIO_Init>
 8000e10:	61a5      	str	r5, [r4, #24]
 8000e12:	f7ff ffa5 	bl	8000d60 <rgb_i2c_delay>
 8000e16:	b002      	add	sp, #8
 8000e18:	bd70      	pop	{r4, r5, r6, pc}
 8000e1a:	bf00      	nop
 8000e1c:	2000093e 	.word	0x2000093e
 8000e20:	48000400 	.word	0x48000400

08000e24 <RGBSetLowSCL>:
 8000e24:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000e28:	f44f 7280 	mov.w	r2, #256	; 0x100
 8000e2c:	851a      	strh	r2, [r3, #40]	; 0x28
 8000e2e:	f7ff bf97 	b.w	8000d60 <rgb_i2c_delay>

08000e32 <RGBSetHighSCL>:
 8000e32:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000e36:	f44f 7280 	mov.w	r2, #256	; 0x100
 8000e3a:	619a      	str	r2, [r3, #24]
 8000e3c:	f7ff bf90 	b.w	8000d60 <rgb_i2c_delay>

08000e40 <rgb_i2c_init>:
 8000e40:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 8000e42:	4f1f      	ldr	r7, [pc, #124]	; (8000ec0 <rgb_i2c_init+0x80>)
 8000e44:	2400      	movs	r4, #0
 8000e46:	2501      	movs	r5, #1
 8000e48:	2603      	movs	r6, #3
 8000e4a:	f44f 7380 	mov.w	r3, #256	; 0x100
 8000e4e:	4669      	mov	r1, sp
 8000e50:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000e54:	9300      	str	r3, [sp, #0]
 8000e56:	f88d 4006 	strb.w	r4, [sp, #6]
 8000e5a:	f88d 4007 	strb.w	r4, [sp, #7]
 8000e5e:	f88d 5004 	strb.w	r5, [sp, #4]
 8000e62:	f88d 6005 	strb.w	r6, [sp, #5]
 8000e66:	f001 fe1e 	bl	8002aa6 <GPIO_Init>
 8000e6a:	783b      	ldrb	r3, [r7, #0]
 8000e6c:	f88d 4004 	strb.w	r4, [sp, #4]
 8000e70:	4669      	mov	r1, sp
 8000e72:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000e76:	9300      	str	r3, [sp, #0]
 8000e78:	f88d 4007 	strb.w	r4, [sp, #7]
 8000e7c:	f88d 6005 	strb.w	r6, [sp, #5]
 8000e80:	f001 fe11 	bl	8002aa6 <GPIO_Init>
 8000e84:	7839      	ldrb	r1, [r7, #0]
 8000e86:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000e8a:	f001 fe52 	bl	8002b32 <GPIO_SetBits>
 8000e8e:	f88d 4004 	strb.w	r4, [sp, #4]
 8000e92:	f88d 4007 	strb.w	r4, [sp, #7]
 8000e96:	4c0b      	ldr	r4, [pc, #44]	; (8000ec4 <rgb_i2c_init+0x84>)
 8000e98:	9500      	str	r5, [sp, #0]
 8000e9a:	4620      	mov	r0, r4
 8000e9c:	4669      	mov	r1, sp
 8000e9e:	f88d 6005 	strb.w	r6, [sp, #5]
 8000ea2:	f001 fe00 	bl	8002aa6 <GPIO_Init>
 8000ea6:	4620      	mov	r0, r4
 8000ea8:	4629      	mov	r1, r5
 8000eaa:	f001 fe42 	bl	8002b32 <GPIO_SetBits>
 8000eae:	f7ff ffc0 	bl	8000e32 <RGBSetHighSCL>
 8000eb2:	f7ff ff5b 	bl	8000d6c <RGBSetLowSDA>
 8000eb6:	f7ff ff89 	bl	8000dcc <RGBSetHighSDA>
 8000eba:	b003      	add	sp, #12
 8000ebc:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000ebe:	bf00      	nop
 8000ec0:	2000093e 	.word	0x2000093e
 8000ec4:	48000400 	.word	0x48000400

08000ec8 <rgb_i2cStart>:
 8000ec8:	b508      	push	{r3, lr}
 8000eca:	f7ff ffb2 	bl	8000e32 <RGBSetHighSCL>
 8000ece:	f7ff ff7d 	bl	8000dcc <RGBSetHighSDA>
 8000ed2:	f7ff ffae 	bl	8000e32 <RGBSetHighSCL>
 8000ed6:	f7ff ff49 	bl	8000d6c <RGBSetLowSDA>
 8000eda:	f7ff ffa3 	bl	8000e24 <RGBSetLowSCL>
 8000ede:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8000ee2:	f7ff bf73 	b.w	8000dcc <RGBSetHighSDA>

08000ee6 <rgb_i2cStop>:
 8000ee6:	b508      	push	{r3, lr}
 8000ee8:	f7ff ff9c 	bl	8000e24 <RGBSetLowSCL>
 8000eec:	f7ff ff3e 	bl	8000d6c <RGBSetLowSDA>
 8000ef0:	f7ff ff9f 	bl	8000e32 <RGBSetHighSCL>
 8000ef4:	f7ff ff3a 	bl	8000d6c <RGBSetLowSDA>
 8000ef8:	f7ff ff9b 	bl	8000e32 <RGBSetHighSCL>
 8000efc:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8000f00:	f7ff bf64 	b.w	8000dcc <RGBSetHighSDA>

08000f04 <rgb_i2cWrite>:
 8000f04:	b538      	push	{r3, r4, r5, lr}
 8000f06:	4604      	mov	r4, r0
 8000f08:	2508      	movs	r5, #8
 8000f0a:	f7ff ff8b 	bl	8000e24 <RGBSetLowSCL>
 8000f0e:	0623      	lsls	r3, r4, #24
 8000f10:	d502      	bpl.n	8000f18 <rgb_i2cWrite+0x14>
 8000f12:	f7ff ff5b 	bl	8000dcc <RGBSetHighSDA>
 8000f16:	e001      	b.n	8000f1c <rgb_i2cWrite+0x18>
 8000f18:	f7ff ff28 	bl	8000d6c <RGBSetLowSDA>
 8000f1c:	3d01      	subs	r5, #1
 8000f1e:	f7ff ff88 	bl	8000e32 <RGBSetHighSCL>
 8000f22:	0064      	lsls	r4, r4, #1
 8000f24:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 8000f28:	b2e4      	uxtb	r4, r4
 8000f2a:	d1ee      	bne.n	8000f0a <rgb_i2cWrite+0x6>
 8000f2c:	f7ff ff7a 	bl	8000e24 <RGBSetLowSCL>
 8000f30:	f7ff ff4c 	bl	8000dcc <RGBSetHighSDA>
 8000f34:	f7ff ff7d 	bl	8000e32 <RGBSetHighSCL>
 8000f38:	f7ff ff74 	bl	8000e24 <RGBSetLowSCL>
 8000f3c:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8000f40:	f7ff bf0e 	b.w	8000d60 <rgb_i2c_delay>

08000f44 <rgb_i2cRead>:
 8000f44:	b570      	push	{r4, r5, r6, lr}
 8000f46:	2300      	movs	r3, #0
 8000f48:	4606      	mov	r6, r0
 8000f4a:	460c      	mov	r4, r1
 8000f4c:	2200      	movs	r2, #0
 8000f4e:	54e2      	strb	r2, [r4, r3]
 8000f50:	3301      	adds	r3, #1
 8000f52:	2b09      	cmp	r3, #9
 8000f54:	d1fa      	bne.n	8000f4c <rgb_i2cRead+0x8>
 8000f56:	f7ff ff65 	bl	8000e24 <RGBSetLowSCL>
 8000f5a:	f7ff ff37 	bl	8000dcc <RGBSetHighSDA>
 8000f5e:	2508      	movs	r5, #8
 8000f60:	2300      	movs	r3, #0
 8000f62:	5ce2      	ldrb	r2, [r4, r3]
 8000f64:	0052      	lsls	r2, r2, #1
 8000f66:	54e2      	strb	r2, [r4, r3]
 8000f68:	3301      	adds	r3, #1
 8000f6a:	2b09      	cmp	r3, #9
 8000f6c:	d1f9      	bne.n	8000f62 <rgb_i2cRead+0x1e>
 8000f6e:	f7ff ff60 	bl	8000e32 <RGBSetHighSCL>
 8000f72:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000f76:	8a1b      	ldrh	r3, [r3, #16]
 8000f78:	b29b      	uxth	r3, r3
 8000f7a:	07d8      	lsls	r0, r3, #31
 8000f7c:	d503      	bpl.n	8000f86 <rgb_i2cRead+0x42>
 8000f7e:	7822      	ldrb	r2, [r4, #0]
 8000f80:	f042 0201 	orr.w	r2, r2, #1
 8000f84:	7022      	strb	r2, [r4, #0]
 8000f86:	0799      	lsls	r1, r3, #30
 8000f88:	d503      	bpl.n	8000f92 <rgb_i2cRead+0x4e>
 8000f8a:	7862      	ldrb	r2, [r4, #1]
 8000f8c:	f042 0201 	orr.w	r2, r2, #1
 8000f90:	7062      	strb	r2, [r4, #1]
 8000f92:	075a      	lsls	r2, r3, #29
 8000f94:	d503      	bpl.n	8000f9e <rgb_i2cRead+0x5a>
 8000f96:	78a2      	ldrb	r2, [r4, #2]
 8000f98:	f042 0201 	orr.w	r2, r2, #1
 8000f9c:	70a2      	strb	r2, [r4, #2]
 8000f9e:	0718      	lsls	r0, r3, #28
 8000fa0:	d503      	bpl.n	8000faa <rgb_i2cRead+0x66>
 8000fa2:	78e2      	ldrb	r2, [r4, #3]
 8000fa4:	f042 0201 	orr.w	r2, r2, #1
 8000fa8:	70e2      	strb	r2, [r4, #3]
 8000faa:	06d9      	lsls	r1, r3, #27
 8000fac:	d503      	bpl.n	8000fb6 <rgb_i2cRead+0x72>
 8000fae:	7922      	ldrb	r2, [r4, #4]
 8000fb0:	f042 0201 	orr.w	r2, r2, #1
 8000fb4:	7122      	strb	r2, [r4, #4]
 8000fb6:	069a      	lsls	r2, r3, #26
 8000fb8:	d503      	bpl.n	8000fc2 <rgb_i2cRead+0x7e>
 8000fba:	7962      	ldrb	r2, [r4, #5]
 8000fbc:	f042 0201 	orr.w	r2, r2, #1
 8000fc0:	7162      	strb	r2, [r4, #5]
 8000fc2:	0658      	lsls	r0, r3, #25
 8000fc4:	d503      	bpl.n	8000fce <rgb_i2cRead+0x8a>
 8000fc6:	79a2      	ldrb	r2, [r4, #6]
 8000fc8:	f042 0201 	orr.w	r2, r2, #1
 8000fcc:	71a2      	strb	r2, [r4, #6]
 8000fce:	0619      	lsls	r1, r3, #24
 8000fd0:	d503      	bpl.n	8000fda <rgb_i2cRead+0x96>
 8000fd2:	79e3      	ldrb	r3, [r4, #7]
 8000fd4:	f043 0301 	orr.w	r3, r3, #1
 8000fd8:	71e3      	strb	r3, [r4, #7]
 8000fda:	4b0b      	ldr	r3, [pc, #44]	; (8001008 <rgb_i2cRead+0xc4>)
 8000fdc:	8a1b      	ldrh	r3, [r3, #16]
 8000fde:	07da      	lsls	r2, r3, #31
 8000fe0:	d503      	bpl.n	8000fea <rgb_i2cRead+0xa6>
 8000fe2:	7a23      	ldrb	r3, [r4, #8]
 8000fe4:	f043 0301 	orr.w	r3, r3, #1
 8000fe8:	7223      	strb	r3, [r4, #8]
 8000fea:	f7ff ff1b 	bl	8000e24 <RGBSetLowSCL>
 8000fee:	3d01      	subs	r5, #1
 8000ff0:	d1b6      	bne.n	8000f60 <rgb_i2cRead+0x1c>
 8000ff2:	b10e      	cbz	r6, 8000ff8 <rgb_i2cRead+0xb4>
 8000ff4:	f7ff feba 	bl	8000d6c <RGBSetLowSDA>
 8000ff8:	f7ff ff1b 	bl	8000e32 <RGBSetHighSCL>
 8000ffc:	f7ff ff12 	bl	8000e24 <RGBSetLowSCL>
 8001000:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8001004:	f7ff beac 	b.w	8000d60 <rgb_i2c_delay>
 8001008:	48000400 	.word	0x48000400

0800100c <rgb_i2c_write_reg>:
 800100c:	b570      	push	{r4, r5, r6, lr}
 800100e:	4605      	mov	r5, r0
 8001010:	460c      	mov	r4, r1
 8001012:	4616      	mov	r6, r2
 8001014:	f7ff ff58 	bl	8000ec8 <rgb_i2cStart>
 8001018:	4628      	mov	r0, r5
 800101a:	f7ff ff73 	bl	8000f04 <rgb_i2cWrite>
 800101e:	4620      	mov	r0, r4
 8001020:	f7ff ff70 	bl	8000f04 <rgb_i2cWrite>
 8001024:	4630      	mov	r0, r6
 8001026:	f7ff ff6d 	bl	8000f04 <rgb_i2cWrite>
 800102a:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 800102e:	f7ff bf5a 	b.w	8000ee6 <rgb_i2cStop>

08001032 <rgb_i2c_read_reg>:
 8001032:	b570      	push	{r4, r5, r6, lr}
 8001034:	4604      	mov	r4, r0
 8001036:	460d      	mov	r5, r1
 8001038:	4616      	mov	r6, r2
 800103a:	f7ff ff45 	bl	8000ec8 <rgb_i2cStart>
 800103e:	4620      	mov	r0, r4
 8001040:	f7ff ff60 	bl	8000f04 <rgb_i2cWrite>
 8001044:	4628      	mov	r0, r5
 8001046:	f7ff ff5d 	bl	8000f04 <rgb_i2cWrite>
 800104a:	f7ff ff3d 	bl	8000ec8 <rgb_i2cStart>
 800104e:	f044 0001 	orr.w	r0, r4, #1
 8001052:	f7ff ff57 	bl	8000f04 <rgb_i2cWrite>
 8001056:	4631      	mov	r1, r6
 8001058:	2000      	movs	r0, #0
 800105a:	f7ff ff73 	bl	8000f44 <rgb_i2cRead>
 800105e:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8001062:	f7ff bf40 	b.w	8000ee6 <rgb_i2cStop>
	...

08001068 <rgb_init>:
 8001068:	4b1d      	ldr	r3, [pc, #116]	; (80010e0 <rgb_init+0x78>)
 800106a:	b570      	push	{r4, r5, r6, lr}
 800106c:	2409      	movs	r4, #9
 800106e:	2200      	movs	r2, #0
 8001070:	3c01      	subs	r4, #1
 8001072:	801a      	strh	r2, [r3, #0]
 8001074:	825a      	strh	r2, [r3, #18]
 8001076:	849a      	strh	r2, [r3, #36]	; 0x24
 8001078:	f8a3 2048 	strh.w	r2, [r3, #72]	; 0x48
 800107c:	86da      	strh	r2, [r3, #54]	; 0x36
 800107e:	f103 0302 	add.w	r3, r3, #2
 8001082:	d1f4      	bne.n	800106e <rgb_init+0x6>
 8001084:	4d17      	ldr	r5, [pc, #92]	; (80010e4 <rgb_init+0x7c>)
 8001086:	f64f 76ff 	movw	r6, #65535	; 0xffff
 800108a:	802e      	strh	r6, [r5, #0]
 800108c:	f7ff fed8 	bl	8000e40 <rgb_i2c_init>
 8001090:	2072      	movs	r0, #114	; 0x72
 8001092:	2181      	movs	r1, #129	; 0x81
 8001094:	22ff      	movs	r2, #255	; 0xff
 8001096:	f7ff ffb9 	bl	800100c <rgb_i2c_write_reg>
 800109a:	2072      	movs	r0, #114	; 0x72
 800109c:	2183      	movs	r1, #131	; 0x83
 800109e:	22ff      	movs	r2, #255	; 0xff
 80010a0:	f7ff ffb4 	bl	800100c <rgb_i2c_write_reg>
 80010a4:	2072      	movs	r0, #114	; 0x72
 80010a6:	218d      	movs	r1, #141	; 0x8d
 80010a8:	4622      	mov	r2, r4
 80010aa:	f7ff ffaf 	bl	800100c <rgb_i2c_write_reg>
 80010ae:	2072      	movs	r0, #114	; 0x72
 80010b0:	2180      	movs	r1, #128	; 0x80
 80010b2:	2203      	movs	r2, #3
 80010b4:	f7ff ffaa 	bl	800100c <rgb_i2c_write_reg>
 80010b8:	2072      	movs	r0, #114	; 0x72
 80010ba:	218f      	movs	r1, #143	; 0x8f
 80010bc:	2223      	movs	r2, #35	; 0x23
 80010be:	f7ff ffa5 	bl	800100c <rgb_i2c_write_reg>
 80010c2:	f7ff fe83 	bl	8000dcc <RGBSetHighSDA>
 80010c6:	2072      	movs	r0, #114	; 0x72
 80010c8:	2180      	movs	r1, #128	; 0x80
 80010ca:	2207      	movs	r2, #7
 80010cc:	802c      	strh	r4, [r5, #0]
 80010ce:	f7ff ff9d 	bl	800100c <rgb_i2c_write_reg>
 80010d2:	2072      	movs	r0, #114	; 0x72
 80010d4:	218e      	movs	r1, #142	; 0x8e
 80010d6:	2208      	movs	r2, #8
 80010d8:	f7ff ff98 	bl	800100c <rgb_i2c_write_reg>
 80010dc:	802e      	strh	r6, [r5, #0]
 80010de:	bd70      	pop	{r4, r5, r6, pc}
 80010e0:	200008e4 	.word	0x200008e4
 80010e4:	2000093e 	.word	0x2000093e

080010e8 <rgb_get>:
 80010e8:	4800      	ldr	r0, [pc, #0]	; (80010ec <rgb_get+0x4>)
 80010ea:	4770      	bx	lr
 80010ec:	200008e4 	.word	0x200008e4

080010f0 <rgb_read>:
 80010f0:	b538      	push	{r3, r4, r5, lr}
 80010f2:	f7ff fee9 	bl	8000ec8 <rgb_i2cStart>
 80010f6:	2072      	movs	r0, #114	; 0x72
 80010f8:	f7ff ff04 	bl	8000f04 <rgb_i2cWrite>
 80010fc:	20b4      	movs	r0, #180	; 0xb4
 80010fe:	f7ff ff01 	bl	8000f04 <rgb_i2cWrite>
 8001102:	f7ff fee1 	bl	8000ec8 <rgb_i2cStart>
 8001106:	2073      	movs	r0, #115	; 0x73
 8001108:	f7ff fefc 	bl	8000f04 <rgb_i2cWrite>
 800110c:	2001      	movs	r0, #1
 800110e:	4946      	ldr	r1, [pc, #280]	; (8001228 <rgb_read+0x138>)
 8001110:	f7ff ff18 	bl	8000f44 <rgb_i2cRead>
 8001114:	2300      	movs	r3, #0
 8001116:	4d45      	ldr	r5, [pc, #276]	; (800122c <rgb_read+0x13c>)
 8001118:	4c43      	ldr	r4, [pc, #268]	; (8001228 <rgb_read+0x138>)
 800111a:	eb05 0243 	add.w	r2, r5, r3, lsl #1
 800111e:	5d19      	ldrb	r1, [r3, r4]
 8001120:	3301      	adds	r3, #1
 8001122:	2b09      	cmp	r3, #9
 8001124:	86d1      	strh	r1, [r2, #54]	; 0x36
 8001126:	d1f6      	bne.n	8001116 <rgb_read+0x26>
 8001128:	2001      	movs	r0, #1
 800112a:	4621      	mov	r1, r4
 800112c:	f7ff ff0a 	bl	8000f44 <rgb_i2cRead>
 8001130:	f105 0236 	add.w	r2, r5, #54	; 0x36
 8001134:	2300      	movs	r3, #0
 8001136:	8811      	ldrh	r1, [r2, #0]
 8001138:	5ce0      	ldrb	r0, [r4, r3]
 800113a:	3301      	adds	r3, #1
 800113c:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 8001140:	2b09      	cmp	r3, #9
 8001142:	f822 1b02 	strh.w	r1, [r2], #2
 8001146:	d1f6      	bne.n	8001136 <rgb_read+0x46>
 8001148:	2001      	movs	r0, #1
 800114a:	4937      	ldr	r1, [pc, #220]	; (8001228 <rgb_read+0x138>)
 800114c:	f7ff fefa 	bl	8000f44 <rgb_i2cRead>
 8001150:	2300      	movs	r3, #0
 8001152:	5ce2      	ldrb	r2, [r4, r3]
 8001154:	f825 2013 	strh.w	r2, [r5, r3, lsl #1]
 8001158:	3301      	adds	r3, #1
 800115a:	2b09      	cmp	r3, #9
 800115c:	d1f9      	bne.n	8001152 <rgb_read+0x62>
 800115e:	2001      	movs	r0, #1
 8001160:	4931      	ldr	r1, [pc, #196]	; (8001228 <rgb_read+0x138>)
 8001162:	f7ff feef 	bl	8000f44 <rgb_i2cRead>
 8001166:	4a32      	ldr	r2, [pc, #200]	; (8001230 <rgb_read+0x140>)
 8001168:	2300      	movs	r3, #0
 800116a:	5ce0      	ldrb	r0, [r4, r3]
 800116c:	8851      	ldrh	r1, [r2, #2]
 800116e:	3301      	adds	r3, #1
 8001170:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 8001174:	2b09      	cmp	r3, #9
 8001176:	f822 1f02 	strh.w	r1, [r2, #2]!
 800117a:	d1f6      	bne.n	800116a <rgb_read+0x7a>
 800117c:	2001      	movs	r0, #1
 800117e:	492a      	ldr	r1, [pc, #168]	; (8001228 <rgb_read+0x138>)
 8001180:	f7ff fee0 	bl	8000f44 <rgb_i2cRead>
 8001184:	2300      	movs	r3, #0
 8001186:	eb05 0243 	add.w	r2, r5, r3, lsl #1
 800118a:	5ce1      	ldrb	r1, [r4, r3]
 800118c:	3301      	adds	r3, #1
 800118e:	2b09      	cmp	r3, #9
 8001190:	8251      	strh	r1, [r2, #18]
 8001192:	d1f8      	bne.n	8001186 <rgb_read+0x96>
 8001194:	2001      	movs	r0, #1
 8001196:	4924      	ldr	r1, [pc, #144]	; (8001228 <rgb_read+0x138>)
 8001198:	f7ff fed4 	bl	8000f44 <rgb_i2cRead>
 800119c:	4a25      	ldr	r2, [pc, #148]	; (8001234 <rgb_read+0x144>)
 800119e:	2300      	movs	r3, #0
 80011a0:	8811      	ldrh	r1, [r2, #0]
 80011a2:	5ce0      	ldrb	r0, [r4, r3]
 80011a4:	3301      	adds	r3, #1
 80011a6:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 80011aa:	2b09      	cmp	r3, #9
 80011ac:	f822 1b02 	strh.w	r1, [r2], #2
 80011b0:	d1f6      	bne.n	80011a0 <rgb_read+0xb0>
 80011b2:	2001      	movs	r0, #1
 80011b4:	491c      	ldr	r1, [pc, #112]	; (8001228 <rgb_read+0x138>)
 80011b6:	f7ff fec5 	bl	8000f44 <rgb_i2cRead>
 80011ba:	2300      	movs	r3, #0
 80011bc:	eb05 0243 	add.w	r2, r5, r3, lsl #1
 80011c0:	5ce1      	ldrb	r1, [r4, r3]
 80011c2:	3301      	adds	r3, #1
 80011c4:	2b09      	cmp	r3, #9
 80011c6:	8491      	strh	r1, [r2, #36]	; 0x24
 80011c8:	d1f8      	bne.n	80011bc <rgb_read+0xcc>
 80011ca:	2001      	movs	r0, #1
 80011cc:	4916      	ldr	r1, [pc, #88]	; (8001228 <rgb_read+0x138>)
 80011ce:	f7ff feb9 	bl	8000f44 <rgb_i2cRead>
 80011d2:	4a19      	ldr	r2, [pc, #100]	; (8001238 <rgb_read+0x148>)
 80011d4:	2300      	movs	r3, #0
 80011d6:	8811      	ldrh	r1, [r2, #0]
 80011d8:	5ce0      	ldrb	r0, [r4, r3]
 80011da:	3301      	adds	r3, #1
 80011dc:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 80011e0:	2b09      	cmp	r3, #9
 80011e2:	f822 1b02 	strh.w	r1, [r2], #2
 80011e6:	d1f6      	bne.n	80011d6 <rgb_read+0xe6>
 80011e8:	2001      	movs	r0, #1
 80011ea:	490f      	ldr	r1, [pc, #60]	; (8001228 <rgb_read+0x138>)
 80011ec:	f7ff feaa 	bl	8000f44 <rgb_i2cRead>
 80011f0:	2300      	movs	r3, #0
 80011f2:	eb05 0243 	add.w	r2, r5, r3, lsl #1
 80011f6:	5ce1      	ldrb	r1, [r4, r3]
 80011f8:	3301      	adds	r3, #1
 80011fa:	2b09      	cmp	r3, #9
 80011fc:	f8a2 1048 	strh.w	r1, [r2, #72]	; 0x48
 8001200:	d1f7      	bne.n	80011f2 <rgb_read+0x102>
 8001202:	2000      	movs	r0, #0
 8001204:	4908      	ldr	r1, [pc, #32]	; (8001228 <rgb_read+0x138>)
 8001206:	f7ff fe9d 	bl	8000f44 <rgb_i2cRead>
 800120a:	4a0c      	ldr	r2, [pc, #48]	; (800123c <rgb_read+0x14c>)
 800120c:	2300      	movs	r3, #0
 800120e:	8811      	ldrh	r1, [r2, #0]
 8001210:	5ce0      	ldrb	r0, [r4, r3]
 8001212:	3301      	adds	r3, #1
 8001214:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 8001218:	2b09      	cmp	r3, #9
 800121a:	f822 1b02 	strh.w	r1, [r2], #2
 800121e:	d1f6      	bne.n	800120e <rgb_read+0x11e>
 8001220:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8001224:	f7ff be5f 	b.w	8000ee6 <rgb_i2cStop>
 8001228:	20000940 	.word	0x20000940
 800122c:	200008e4 	.word	0x200008e4
 8001230:	200008e2 	.word	0x200008e2
 8001234:	200008f6 	.word	0x200008f6
 8001238:	20000908 	.word	0x20000908
 800123c:	2000092c 	.word	0x2000092c

08001240 <line_sensor_init>:
 8001240:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8001242:	4607      	mov	r7, r0
 8001244:	2064      	movs	r0, #100	; 0x64
 8001246:	460e      	mov	r6, r1
 8001248:	2400      	movs	r4, #0
 800124a:	f000 ffc1 	bl	80021d0 <timer_delay_ms>
 800124e:	f7ff ff0b 	bl	8001068 <rgb_init>
 8001252:	f7ff ff4d 	bl	80010f0 <rgb_read>
 8001256:	2072      	movs	r0, #114	; 0x72
 8001258:	2192      	movs	r1, #146	; 0x92
 800125a:	4a11      	ldr	r2, [pc, #68]	; (80012a0 <line_sensor_init+0x60>)
 800125c:	f7ff fee9 	bl	8001032 <rgb_i2c_read_reg>
 8001260:	4623      	mov	r3, r4
 8001262:	4a0f      	ldr	r2, [pc, #60]	; (80012a0 <line_sensor_init+0x60>)
 8001264:	5c99      	ldrb	r1, [r3, r2]
 8001266:	2969      	cmp	r1, #105	; 0x69
 8001268:	4610      	mov	r0, r2
 800126a:	d002      	beq.n	8001272 <line_sensor_init+0x32>
 800126c:	2201      	movs	r2, #1
 800126e:	409a      	lsls	r2, r3
 8001270:	4314      	orrs	r4, r2
 8001272:	3301      	adds	r3, #1
 8001274:	2b09      	cmp	r3, #9
 8001276:	d1f4      	bne.n	8001262 <line_sensor_init+0x22>
 8001278:	2500      	movs	r5, #0
 800127a:	1941      	adds	r1, r0, r5
 800127c:	3504      	adds	r5, #4
 800127e:	2200      	movs	r2, #0
 8001280:	2d20      	cmp	r5, #32
 8001282:	4b07      	ldr	r3, [pc, #28]	; (80012a0 <line_sensor_init+0x60>)
 8001284:	60ca      	str	r2, [r1, #12]
 8001286:	d1f8      	bne.n	800127a <line_sensor_init+0x3a>
 8001288:	f883 2030 	strb.w	r2, [r3, #48]	; 0x30
 800128c:	635a      	str	r2, [r3, #52]	; 0x34
 800128e:	871f      	strh	r7, [r3, #56]	; 0x38
 8001290:	f883 203a 	strb.w	r2, [r3, #58]	; 0x3a
 8001294:	63da      	str	r2, [r3, #60]	; 0x3c
 8001296:	641e      	str	r6, [r3, #64]	; 0x40
 8001298:	f7ff ff2a 	bl	80010f0 <rgb_read>
 800129c:	4620      	mov	r0, r4
 800129e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80012a0:	2000094c 	.word	0x2000094c

080012a4 <line_sensor_get>:
 80012a4:	4800      	ldr	r0, [pc, #0]	; (80012a8 <line_sensor_get+0x4>)
 80012a6:	4770      	bx	lr
 80012a8:	2000094c 	.word	0x2000094c

080012ac <line_sensor_read>:
 80012ac:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 80012b0:	4604      	mov	r4, r0
 80012b2:	f7ff ff1d 	bl	80010f0 <rgb_read>
 80012b6:	2c00      	cmp	r4, #0
 80012b8:	f040 8133 	bne.w	8001522 <line_sensor_read+0x276>
 80012bc:	4d9a      	ldr	r5, [pc, #616]	; (8001528 <line_sensor_read+0x27c>)
 80012be:	6beb      	ldr	r3, [r5, #60]	; 0x3c
 80012c0:	2607      	movs	r6, #7
 80012c2:	435e      	muls	r6, r3
 80012c4:	f7ff ff10 	bl	80010e8 <rgb_get>
 80012c8:	f9b0 3058 	ldrsh.w	r3, [r0, #88]	; 0x58
 80012cc:	2208      	movs	r2, #8
 80012ce:	4433      	add	r3, r6
 80012d0:	fb93 f3f2 	sdiv	r3, r3, r2
 80012d4:	6c2a      	ldr	r2, [r5, #64]	; 0x40
 80012d6:	63eb      	str	r3, [r5, #60]	; 0x3c
 80012d8:	4293      	cmp	r3, r2
 80012da:	f04f 0600 	mov.w	r6, #0
 80012de:	bfca      	itet	gt
 80012e0:	2301      	movgt	r3, #1
 80012e2:	f885 403a 	strble.w	r4, [r5, #58]	; 0x3a
 80012e6:	f885 303a 	strbgt.w	r3, [r5, #58]	; 0x3a
 80012ea:	4637      	mov	r7, r6
 80012ec:	46b0      	mov	r8, r6
 80012ee:	46b1      	mov	r9, r6
 80012f0:	4634      	mov	r4, r6
 80012f2:	f7ff fef9 	bl	80010e8 <rgb_get>
 80012f6:	ea4f 0a44 	mov.w	sl, r4, lsl #1
 80012fa:	4450      	add	r0, sl
 80012fc:	4b8b      	ldr	r3, [pc, #556]	; (800152c <line_sensor_read+0x280>)
 80012fe:	8ec2      	ldrh	r2, [r0, #54]	; 0x36
 8001300:	f853 3024 	ldr.w	r3, [r3, r4, lsl #2]
 8001304:	1ad3      	subs	r3, r2, r3
 8001306:	86c3      	strh	r3, [r0, #54]	; 0x36
 8001308:	f7ff feee 	bl	80010e8 <rgb_get>
 800130c:	4b88      	ldr	r3, [pc, #544]	; (8001530 <line_sensor_read+0x284>)
 800130e:	f830 2014 	ldrh.w	r2, [r0, r4, lsl #1]
 8001312:	f853 3024 	ldr.w	r3, [r3, r4, lsl #2]
 8001316:	1ad3      	subs	r3, r2, r3
 8001318:	f820 3014 	strh.w	r3, [r0, r4, lsl #1]
 800131c:	f7ff fee4 	bl	80010e8 <rgb_get>
 8001320:	4b84      	ldr	r3, [pc, #528]	; (8001534 <line_sensor_read+0x288>)
 8001322:	4450      	add	r0, sl
 8001324:	f853 3024 	ldr.w	r3, [r3, r4, lsl #2]
 8001328:	8a42      	ldrh	r2, [r0, #18]
 800132a:	1ad3      	subs	r3, r2, r3
 800132c:	8243      	strh	r3, [r0, #18]
 800132e:	f7ff fedb 	bl	80010e8 <rgb_get>
 8001332:	4b81      	ldr	r3, [pc, #516]	; (8001538 <line_sensor_read+0x28c>)
 8001334:	4450      	add	r0, sl
 8001336:	f853 3024 	ldr.w	r3, [r3, r4, lsl #2]
 800133a:	8c82      	ldrh	r2, [r0, #36]	; 0x24
 800133c:	1ad3      	subs	r3, r2, r3
 800133e:	8483      	strh	r3, [r0, #36]	; 0x24
 8001340:	f7ff fed2 	bl	80010e8 <rgb_get>
 8001344:	eb00 0044 	add.w	r0, r0, r4, lsl #1
 8001348:	f9b0 3036 	ldrsh.w	r3, [r0, #54]	; 0x36
 800134c:	4499      	add	r9, r3
 800134e:	f7ff fecb 	bl	80010e8 <rgb_get>
 8001352:	f930 3014 	ldrsh.w	r3, [r0, r4, lsl #1]
 8001356:	4498      	add	r8, r3
 8001358:	f7ff fec6 	bl	80010e8 <rgb_get>
 800135c:	eb00 0044 	add.w	r0, r0, r4, lsl #1
 8001360:	f9b0 3012 	ldrsh.w	r3, [r0, #18]
 8001364:	441f      	add	r7, r3
 8001366:	f7ff febf 	bl	80010e8 <rgb_get>
 800136a:	eb00 0044 	add.w	r0, r0, r4, lsl #1
 800136e:	3401      	adds	r4, #1
 8001370:	f9b0 3024 	ldrsh.w	r3, [r0, #36]	; 0x24
 8001374:	2c08      	cmp	r4, #8
 8001376:	441e      	add	r6, r3
 8001378:	d1bb      	bne.n	80012f2 <line_sensor_read+0x46>
 800137a:	fb96 faf4 	sdiv	sl, r6, r4
 800137e:	fb99 f9f4 	sdiv	r9, r9, r4
 8001382:	fb98 f8f4 	sdiv	r8, r8, r4
 8001386:	fb97 f7f4 	sdiv	r7, r7, r4
 800138a:	2600      	movs	r6, #0
 800138c:	f7ff feac 	bl	80010e8 <rgb_get>
 8001390:	4604      	mov	r4, r0
 8001392:	f7ff fea9 	bl	80010e8 <rgb_get>
 8001396:	f106 0318 	add.w	r3, r6, #24
 800139a:	005b      	lsls	r3, r3, #1
 800139c:	4418      	add	r0, r3
 800139e:	441c      	add	r4, r3
 80013a0:	88c3      	ldrh	r3, [r0, #6]
 80013a2:	ebc3 0309 	rsb	r3, r3, r9
 80013a6:	80e3      	strh	r3, [r4, #6]
 80013a8:	f7ff fe9e 	bl	80010e8 <rgb_get>
 80013ac:	4604      	mov	r4, r0
 80013ae:	f7ff fe9b 	bl	80010e8 <rgb_get>
 80013b2:	f830 3016 	ldrh.w	r3, [r0, r6, lsl #1]
 80013b6:	ebc8 0303 	rsb	r3, r8, r3
 80013ba:	f824 3016 	strh.w	r3, [r4, r6, lsl #1]
 80013be:	f7ff fe93 	bl	80010e8 <rgb_get>
 80013c2:	4604      	mov	r4, r0
 80013c4:	f7ff fe90 	bl	80010e8 <rgb_get>
 80013c8:	f106 0308 	add.w	r3, r6, #8
 80013cc:	005b      	lsls	r3, r3, #1
 80013ce:	4418      	add	r0, r3
 80013d0:	441c      	add	r4, r3
 80013d2:	8843      	ldrh	r3, [r0, #2]
 80013d4:	1bdb      	subs	r3, r3, r7
 80013d6:	8063      	strh	r3, [r4, #2]
 80013d8:	f7ff fe86 	bl	80010e8 <rgb_get>
 80013dc:	4604      	mov	r4, r0
 80013de:	f7ff fe83 	bl	80010e8 <rgb_get>
 80013e2:	f106 0310 	add.w	r3, r6, #16
 80013e6:	005b      	lsls	r3, r3, #1
 80013e8:	4418      	add	r0, r3
 80013ea:	441c      	add	r4, r3
 80013ec:	8883      	ldrh	r3, [r0, #4]
 80013ee:	3601      	adds	r6, #1
 80013f0:	ebca 0303 	rsb	r3, sl, r3
 80013f4:	2e08      	cmp	r6, #8
 80013f6:	80a3      	strh	r3, [r4, #4]
 80013f8:	d1c8      	bne.n	800138c <line_sensor_read+0xe0>
 80013fa:	2400      	movs	r4, #0
 80013fc:	f7ff fe74 	bl	80010e8 <rgb_get>
 8001400:	eb00 0044 	add.w	r0, r0, r4, lsl #1
 8001404:	eb05 0284 	add.w	r2, r5, r4, lsl #2
 8001408:	f9b0 1036 	ldrsh.w	r1, [r0, #54]	; 0x36
 800140c:	4b46      	ldr	r3, [pc, #280]	; (8001528 <line_sensor_read+0x27c>)
 800140e:	60d1      	str	r1, [r2, #12]
 8001410:	3401      	adds	r4, #1
 8001412:	2c08      	cmp	r4, #8
 8001414:	d1f2      	bne.n	80013fc <line_sensor_read+0x150>
 8001416:	699c      	ldr	r4, [r3, #24]
 8001418:	69d9      	ldr	r1, [r3, #28]
 800141a:	1862      	adds	r2, r4, r1
 800141c:	d00d      	beq.n	800143a <line_sensor_read+0x18e>
 800141e:	4847      	ldr	r0, [pc, #284]	; (800153c <line_sensor_read+0x290>)
 8001420:	f9b0 3008 	ldrsh.w	r3, [r0, #8]
 8001424:	f9b0 6006 	ldrsh.w	r6, [r0, #6]
 8001428:	434b      	muls	r3, r1
 800142a:	fb06 3304 	mla	r3, r6, r4, r3
 800142e:	2002      	movs	r0, #2
 8001430:	fb93 f3f2 	sdiv	r3, r3, r2
 8001434:	fb92 f2f0 	sdiv	r2, r2, r0
 8001438:	e000      	b.n	800143c <line_sensor_read+0x190>
 800143a:	4613      	mov	r3, r2
 800143c:	6a28      	ldr	r0, [r5, #32]
 800143e:	1846      	adds	r6, r0, r1
 8001440:	d00f      	beq.n	8001462 <line_sensor_read+0x1b6>
 8001442:	4f39      	ldr	r7, [pc, #228]	; (8001528 <line_sensor_read+0x27c>)
 8001444:	f9b7 7038 	ldrsh.w	r7, [r7, #56]	; 0x38
 8001448:	42b8      	cmp	r0, r7
 800144a:	dd0a      	ble.n	8001462 <line_sensor_read+0x1b6>
 800144c:	4a3b      	ldr	r2, [pc, #236]	; (800153c <line_sensor_read+0x290>)
 800144e:	f9b2 300a 	ldrsh.w	r3, [r2, #10]
 8001452:	f9b2 2008 	ldrsh.w	r2, [r2, #8]
 8001456:	4351      	muls	r1, r2
 8001458:	fb03 1300 	mla	r3, r3, r0, r1
 800145c:	fb93 f3f6 	sdiv	r3, r3, r6
 8001460:	4602      	mov	r2, r0
 8001462:	6969      	ldr	r1, [r5, #20]
 8001464:	190e      	adds	r6, r1, r4
 8001466:	d00f      	beq.n	8001488 <line_sensor_read+0x1dc>
 8001468:	4f2f      	ldr	r7, [pc, #188]	; (8001528 <line_sensor_read+0x27c>)
 800146a:	f9b7 7038 	ldrsh.w	r7, [r7, #56]	; 0x38
 800146e:	42b9      	cmp	r1, r7
 8001470:	dd0a      	ble.n	8001488 <line_sensor_read+0x1dc>
 8001472:	4a32      	ldr	r2, [pc, #200]	; (800153c <line_sensor_read+0x290>)
 8001474:	f9b2 3004 	ldrsh.w	r3, [r2, #4]
 8001478:	f9b2 2006 	ldrsh.w	r2, [r2, #6]
 800147c:	4354      	muls	r4, r2
 800147e:	fb03 4301 	mla	r3, r3, r1, r4
 8001482:	fb93 f3f6 	sdiv	r3, r3, r6
 8001486:	460a      	mov	r2, r1
 8001488:	6a6c      	ldr	r4, [r5, #36]	; 0x24
 800148a:	1826      	adds	r6, r4, r0
 800148c:	d00f      	beq.n	80014ae <line_sensor_read+0x202>
 800148e:	4f26      	ldr	r7, [pc, #152]	; (8001528 <line_sensor_read+0x27c>)
 8001490:	f9b7 7038 	ldrsh.w	r7, [r7, #56]	; 0x38
 8001494:	42bc      	cmp	r4, r7
 8001496:	dd0a      	ble.n	80014ae <line_sensor_read+0x202>
 8001498:	4a28      	ldr	r2, [pc, #160]	; (800153c <line_sensor_read+0x290>)
 800149a:	f9b2 300c 	ldrsh.w	r3, [r2, #12]
 800149e:	f9b2 200a 	ldrsh.w	r2, [r2, #10]
 80014a2:	4350      	muls	r0, r2
 80014a4:	fb03 0304 	mla	r3, r3, r4, r0
 80014a8:	fb93 f3f6 	sdiv	r3, r3, r6
 80014ac:	4622      	mov	r2, r4
 80014ae:	6928      	ldr	r0, [r5, #16]
 80014b0:	1844      	adds	r4, r0, r1
 80014b2:	d00f      	beq.n	80014d4 <line_sensor_read+0x228>
 80014b4:	4e1c      	ldr	r6, [pc, #112]	; (8001528 <line_sensor_read+0x27c>)
 80014b6:	f9b6 6038 	ldrsh.w	r6, [r6, #56]	; 0x38
 80014ba:	42b0      	cmp	r0, r6
 80014bc:	dd0a      	ble.n	80014d4 <line_sensor_read+0x228>
 80014be:	4a1f      	ldr	r2, [pc, #124]	; (800153c <line_sensor_read+0x290>)
 80014c0:	f9b2 3002 	ldrsh.w	r3, [r2, #2]
 80014c4:	f9b2 2004 	ldrsh.w	r2, [r2, #4]
 80014c8:	4351      	muls	r1, r2
 80014ca:	fb03 1300 	mla	r3, r3, r0, r1
 80014ce:	fb93 f3f4 	sdiv	r3, r3, r4
 80014d2:	4602      	mov	r2, r0
 80014d4:	68e8      	ldr	r0, [r5, #12]
 80014d6:	f9b5 1038 	ldrsh.w	r1, [r5, #56]	; 0x38
 80014da:	4288      	cmp	r0, r1
 80014dc:	dd03      	ble.n	80014e6 <line_sensor_read+0x23a>
 80014de:	4b17      	ldr	r3, [pc, #92]	; (800153c <line_sensor_read+0x290>)
 80014e0:	f9b3 3000 	ldrsh.w	r3, [r3]
 80014e4:	4602      	mov	r2, r0
 80014e6:	6aa8      	ldr	r0, [r5, #40]	; 0x28
 80014e8:	4288      	cmp	r0, r1
 80014ea:	dd03      	ble.n	80014f4 <line_sensor_read+0x248>
 80014ec:	4b13      	ldr	r3, [pc, #76]	; (800153c <line_sensor_read+0x290>)
 80014ee:	f9b3 300e 	ldrsh.w	r3, [r3, #14]
 80014f2:	e001      	b.n	80014f8 <line_sensor_read+0x24c>
 80014f4:	428a      	cmp	r2, r1
 80014f6:	dd10      	ble.n	800151a <line_sensor_read+0x26e>
 80014f8:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
 80014fc:	dc05      	bgt.n	800150a <line_sensor_read+0x25e>
 80014fe:	f06f 02ff 	mvn.w	r2, #255	; 0xff
 8001502:	4293      	cmp	r3, r2
 8001504:	bfb8      	it	lt
 8001506:	4613      	movlt	r3, r2
 8001508:	e001      	b.n	800150e <line_sensor_read+0x262>
 800150a:	f44f 7380 	mov.w	r3, #256	; 0x100
 800150e:	636b      	str	r3, [r5, #52]	; 0x34
 8001510:	2301      	movs	r3, #1
 8001512:	f885 3030 	strb.w	r3, [r5, #48]	; 0x30
 8001516:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800151a:	4b03      	ldr	r3, [pc, #12]	; (8001528 <line_sensor_read+0x27c>)
 800151c:	2200      	movs	r2, #0
 800151e:	f883 2030 	strb.w	r2, [r3, #48]	; 0x30
 8001522:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8001526:	bf00      	nop
 8001528:	2000094c 	.word	0x2000094c
 800152c:	20000000 	.word	0x20000000
 8001530:	2000007c 	.word	0x2000007c
 8001534:	20000048 	.word	0x20000048
 8001538:	20000024 	.word	0x20000024
 800153c:	2000006c 	.word	0x2000006c

08001540 <robot_config_init>:
 8001540:	4b0e      	ldr	r3, [pc, #56]	; (800157c <robot_config_init+0x3c>)
 8001542:	2196      	movs	r1, #150	; 0x96
 8001544:	f44f 722f 	mov.w	r2, #700	; 0x2bc
 8001548:	e883 0006 	stmia.w	r3, {r1, r2}
 800154c:	2200      	movs	r2, #0
 800154e:	721a      	strb	r2, [r3, #8]
 8001550:	4a0b      	ldr	r2, [pc, #44]	; (8001580 <robot_config_init+0x40>)
 8001552:	490c      	ldr	r1, [pc, #48]	; (8001584 <robot_config_init+0x44>)
 8001554:	60da      	str	r2, [r3, #12]
 8001556:	2200      	movs	r2, #0
 8001558:	611a      	str	r2, [r3, #16]
 800155a:	619a      	str	r2, [r3, #24]
 800155c:	4a0a      	ldr	r2, [pc, #40]	; (8001588 <robot_config_init+0x48>)
 800155e:	6159      	str	r1, [r3, #20]
 8001560:	61da      	str	r2, [r3, #28]
 8001562:	4a0a      	ldr	r2, [pc, #40]	; (800158c <robot_config_init+0x4c>)
 8001564:	621a      	str	r2, [r3, #32]
 8001566:	f04f 527c 	mov.w	r2, #1056964608	; 0x3f000000
 800156a:	625a      	str	r2, [r3, #36]	; 0x24
 800156c:	4a08      	ldr	r2, [pc, #32]	; (8001590 <robot_config_init+0x50>)
 800156e:	629a      	str	r2, [r3, #40]	; 0x28
 8001570:	f44f 72fa 	mov.w	r2, #500	; 0x1f4
 8001574:	62da      	str	r2, [r3, #44]	; 0x2c
 8001576:	2232      	movs	r2, #50	; 0x32
 8001578:	631a      	str	r2, [r3, #48]	; 0x30
 800157a:	4770      	bx	lr
 800157c:	20000990 	.word	0x20000990
 8001580:	3ea6e979 	.word	0x3ea6e979
 8001584:	4090f5c3 	.word	0x4090f5c3
 8001588:	3ca3d70a 	.word	0x3ca3d70a
 800158c:	40a00000 	.word	0x40a00000
 8001590:	3f4ccccd 	.word	0x3f4ccccd

08001594 <robot_config_get>:
 8001594:	4800      	ldr	r0, [pc, #0]	; (8001598 <robot_config_get+0x4>)
 8001596:	4770      	bx	lr
 8001598:	20000990 	.word	0x20000990

0800159c <abort_error_>:
 800159c:	b570      	push	{r4, r5, r6, lr}
 800159e:	4605      	mov	r5, r0
 80015a0:	460e      	mov	r6, r1
 80015a2:	480f      	ldr	r0, [pc, #60]	; (80015e0 <abort_error_+0x44>)
 80015a4:	4629      	mov	r1, r5
 80015a6:	4632      	mov	r2, r6
 80015a8:	f7ff f950 	bl	800084c <printf_>
 80015ac:	2400      	movs	r4, #0
 80015ae:	1ceb      	adds	r3, r5, #3
 80015b0:	429c      	cmp	r4, r3
 80015b2:	d20f      	bcs.n	80015d4 <abort_error_+0x38>
 80015b4:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 80015b8:	f001 fb2e 	bl	8002c18 <led_on>
 80015bc:	2032      	movs	r0, #50	; 0x32
 80015be:	f000 fe07 	bl	80021d0 <timer_delay_ms>
 80015c2:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 80015c6:	f001 fb31 	bl	8002c2c <led_off>
 80015ca:	2064      	movs	r0, #100	; 0x64
 80015cc:	f000 fe00 	bl	80021d0 <timer_delay_ms>
 80015d0:	3401      	adds	r4, #1
 80015d2:	e7ec      	b.n	80015ae <abort_error_+0x12>
 80015d4:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 80015d8:	f000 fdfa 	bl	80021d0 <timer_delay_ms>
 80015dc:	e7e1      	b.n	80015a2 <abort_error_+0x6>
 80015de:	bf00      	nop
 80015e0:	080045d5 	.word	0x080045d5

080015e4 <telemetry_thread>:
 80015e4:	b508      	push	{r3, lr}
 80015e6:	f000 f8dd 	bl	80017a4 <telemetry_print>
 80015ea:	2064      	movs	r0, #100	; 0x64
 80015ec:	f000 fdf0 	bl	80021d0 <timer_delay_ms>
 80015f0:	e7f9      	b.n	80015e6 <telemetry_thread+0x2>
	...

080015f4 <line_sensor_thread>:
 80015f4:	b510      	push	{r4, lr}
 80015f6:	f7ff ffcd 	bl	8001594 <robot_config_get>
 80015fa:	6804      	ldr	r4, [r0, #0]
 80015fc:	f7ff ffca 	bl	8001594 <robot_config_get>
 8001600:	4603      	mov	r3, r0
 8001602:	4620      	mov	r0, r4
 8001604:	6859      	ldr	r1, [r3, #4]
 8001606:	f7ff fe1b 	bl	8001240 <line_sensor_init>
 800160a:	4601      	mov	r1, r0
 800160c:	b120      	cbz	r0, 8001618 <line_sensor_thread+0x24>
 800160e:	4b08      	ldr	r3, [pc, #32]	; (8001630 <line_sensor_thread+0x3c>)
 8001610:	2001      	movs	r0, #1
 8001612:	6018      	str	r0, [r3, #0]
 8001614:	f7ff ffc2 	bl	800159c <abort_error_>
 8001618:	2000      	movs	r0, #0
 800161a:	2104      	movs	r1, #4
 800161c:	f000 fde8 	bl	80021f0 <event_timer_set_period>
 8001620:	2000      	movs	r0, #0
 8001622:	f000 fdfb 	bl	800221c <event_timer_wait>
 8001626:	2000      	movs	r0, #0
 8001628:	f7ff fe40 	bl	80012ac <line_sensor_read>
 800162c:	e7f8      	b.n	8001620 <line_sensor_thread+0x2c>
 800162e:	bf00      	nop
 8001630:	20000fc4 	.word	0x20000fc4

08001634 <i2c_sensor_thread>:
 8001634:	b508      	push	{r3, lr}
 8001636:	f7ff fad9 	bl	8000bec <lsm9ds0_init>
 800163a:	4601      	mov	r1, r0
 800163c:	b128      	cbz	r0, 800164a <i2c_sensor_thread+0x16>
 800163e:	4b08      	ldr	r3, [pc, #32]	; (8001660 <i2c_sensor_thread+0x2c>)
 8001640:	2201      	movs	r2, #1
 8001642:	2002      	movs	r0, #2
 8001644:	601a      	str	r2, [r3, #0]
 8001646:	f7ff ffa9 	bl	800159c <abort_error_>
 800164a:	2001      	movs	r0, #1
 800164c:	210a      	movs	r1, #10
 800164e:	f000 fdcf 	bl	80021f0 <event_timer_set_period>
 8001652:	2001      	movs	r0, #1
 8001654:	f000 fde2 	bl	800221c <event_timer_wait>
 8001658:	f7ff fa4a 	bl	8000af0 <lsm9ds0_read>
 800165c:	e7f9      	b.n	8001652 <i2c_sensor_thread+0x1e>
 800165e:	bf00      	nop
 8001660:	20000fc4 	.word	0x20000fc4

08001664 <line_follower>:
 8001664:	b538      	push	{r3, r4, r5, lr}
 8001666:	f7fe ff31 	bl	80004cc <line_follower_init>
 800166a:	f7fe fe9b 	bl	80003a4 <obstacle_init>
 800166e:	2002      	movs	r0, #2
 8001670:	2104      	movs	r1, #4
 8001672:	f000 fdbd 	bl	80021f0 <event_timer_set_period>
 8001676:	f000 fd9d 	bl	80021b4 <timer_get_time>
 800167a:	f500 30c3 	add.w	r0, r0, #99840	; 0x18600
 800167e:	f100 05a0 	add.w	r5, r0, #160	; 0xa0
 8001682:	2400      	movs	r4, #0
 8001684:	2002      	movs	r0, #2
 8001686:	f000 fdc9 	bl	800221c <event_timer_wait>
 800168a:	f7ff fe0b 	bl	80012a4 <line_sensor_get>
 800168e:	f890 303a 	ldrb.w	r3, [r0, #58]	; 0x3a
 8001692:	2b01      	cmp	r3, #1
 8001694:	d109      	bne.n	80016aa <line_follower+0x46>
 8001696:	f7ff fa27 	bl	8000ae8 <lsm9ds0_get>
 800169a:	f9b0 3000 	ldrsh.w	r3, [r0]
 800169e:	f5b3 5ffa 	cmp.w	r3, #8000	; 0x1f40
 80016a2:	dd02      	ble.n	80016aa <line_follower+0x46>
 80016a4:	f7fe fe84 	bl	80003b0 <obstacle_main>
 80016a8:	e00a      	b.n	80016c0 <line_follower+0x5c>
 80016aa:	f7ff fdfb 	bl	80012a4 <line_sensor_get>
 80016ae:	f890 3030 	ldrb.w	r3, [r0, #48]	; 0x30
 80016b2:	2b01      	cmp	r3, #1
 80016b4:	d102      	bne.n	80016bc <line_follower+0x58>
 80016b6:	f7fe ff17 	bl	80004e8 <line_follower_main>
 80016ba:	e001      	b.n	80016c0 <line_follower+0x5c>
 80016bc:	f000 f9c1 	bl	8001a42 <broken_line_main>
 80016c0:	3401      	adds	r4, #1
 80016c2:	2314      	movs	r3, #20
 80016c4:	fbb4 f2f3 	udiv	r2, r4, r3
 80016c8:	fb03 4312 	mls	r3, r3, r2, r4
 80016cc:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 80016d0:	b913      	cbnz	r3, 80016d8 <line_follower+0x74>
 80016d2:	f001 faa1 	bl	8002c18 <led_on>
 80016d6:	e001      	b.n	80016dc <line_follower+0x78>
 80016d8:	f001 faa8 	bl	8002c2c <led_off>
 80016dc:	f000 fd6a 	bl	80021b4 <timer_get_time>
 80016e0:	4285      	cmp	r5, r0
 80016e2:	d2cf      	bcs.n	8001684 <line_follower+0x20>
 80016e4:	2000      	movs	r0, #0
 80016e6:	4601      	mov	r1, r0
 80016e8:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 80016ec:	f001 b924 	b.w	8002938 <drv8834_run>

080016f0 <main_thread>:
 80016f0:	b510      	push	{r4, lr}
 80016f2:	4823      	ldr	r0, [pc, #140]	; (8001780 <main_thread+0x90>)
 80016f4:	4c23      	ldr	r4, [pc, #140]	; (8001784 <main_thread+0x94>)
 80016f6:	f7ff f8a9 	bl	800084c <printf_>
 80016fa:	f44f 7096 	mov.w	r0, #300	; 0x12c
 80016fe:	f000 fd67 	bl	80021d0 <timer_delay_ms>
 8001702:	2300      	movs	r3, #0
 8001704:	6023      	str	r3, [r4, #0]
 8001706:	f7ff ff1b 	bl	8001540 <robot_config_init>
 800170a:	491f      	ldr	r1, [pc, #124]	; (8001788 <main_thread+0x98>)
 800170c:	481f      	ldr	r0, [pc, #124]	; (800178c <main_thread+0x9c>)
 800170e:	f44f 7200 	mov.w	r2, #512	; 0x200
 8001712:	2306      	movs	r3, #6
 8001714:	f7fe ff78 	bl	8000608 <create_thread>
 8001718:	491d      	ldr	r1, [pc, #116]	; (8001790 <main_thread+0xa0>)
 800171a:	481e      	ldr	r0, [pc, #120]	; (8001794 <main_thread+0xa4>)
 800171c:	f44f 7200 	mov.w	r2, #512	; 0x200
 8001720:	2306      	movs	r3, #6
 8001722:	f7fe ff71 	bl	8000608 <create_thread>
 8001726:	491c      	ldr	r1, [pc, #112]	; (8001798 <main_thread+0xa8>)
 8001728:	481c      	ldr	r0, [pc, #112]	; (800179c <main_thread+0xac>)
 800172a:	f44f 7200 	mov.w	r2, #512	; 0x200
 800172e:	231a      	movs	r3, #26
 8001730:	f7fe ff6a 	bl	8000608 <create_thread>
 8001734:	f000 f984 	bl	8001a40 <broken_line_init>
 8001738:	f7fe fe34 	bl	80003a4 <obstacle_init>
 800173c:	6823      	ldr	r3, [r4, #0]
 800173e:	b13b      	cbz	r3, 8001750 <main_thread+0x60>
 8001740:	4817      	ldr	r0, [pc, #92]	; (80017a0 <main_thread+0xb0>)
 8001742:	f7ff f883 	bl	800084c <printf_>
 8001746:	f44f 60fa 	mov.w	r0, #2000	; 0x7d0
 800174a:	f000 fd41 	bl	80021d0 <timer_delay_ms>
 800174e:	e7f7      	b.n	8001740 <main_thread+0x50>
 8001750:	f001 fa76 	bl	8002c40 <get_key>
 8001754:	b128      	cbz	r0, 8001762 <main_thread+0x72>
 8001756:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 800175a:	f000 fd39 	bl	80021d0 <timer_delay_ms>
 800175e:	f7ff ff81 	bl	8001664 <line_follower>
 8001762:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001766:	f001 fa57 	bl	8002c18 <led_on>
 800176a:	2064      	movs	r0, #100	; 0x64
 800176c:	f000 fd30 	bl	80021d0 <timer_delay_ms>
 8001770:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001774:	f001 fa5a 	bl	8002c2c <led_off>
 8001778:	20c8      	movs	r0, #200	; 0xc8
 800177a:	f000 fd29 	bl	80021d0 <timer_delay_ms>
 800177e:	e7dd      	b.n	800173c <main_thread+0x4c>
 8001780:	080045e7 	.word	0x080045e7
 8001784:	20000fc4 	.word	0x20000fc4
 8001788:	200009c4 	.word	0x200009c4
 800178c:	080015f5 	.word	0x080015f5
 8001790:	20000dc4 	.word	0x20000dc4
 8001794:	08001635 	.word	0x08001635
 8001798:	20000bc4 	.word	0x20000bc4
 800179c:	080015e5 	.word	0x080015e5
 80017a0:	08004622 	.word	0x08004622

080017a4 <telemetry_print>:
 80017a4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80017a8:	ed2d 8b02 	vpush	{d8}
 80017ac:	4899      	ldr	r0, [pc, #612]	; (8001a14 <telemetry_print+0x270>)
 80017ae:	b088      	sub	sp, #32
 80017b0:	f7ff f84c 	bl	800084c <printf_>
 80017b4:	f7ff fd76 	bl	80012a4 <line_sensor_get>
 80017b8:	f890 8030 	ldrb.w	r8, [r0, #48]	; 0x30
 80017bc:	f7ff fd72 	bl	80012a4 <line_sensor_get>
 80017c0:	6b45      	ldr	r5, [r0, #52]	; 0x34
 80017c2:	f7ff fd6f 	bl	80012a4 <line_sensor_get>
 80017c6:	f9b0 4038 	ldrsh.w	r4, [r0, #56]	; 0x38
 80017ca:	f7ff fd6b 	bl	80012a4 <line_sensor_get>
 80017ce:	f890 703a 	ldrb.w	r7, [r0, #58]	; 0x3a
 80017d2:	f7ff fd67 	bl	80012a4 <line_sensor_get>
 80017d6:	6bc6      	ldr	r6, [r0, #60]	; 0x3c
 80017d8:	f7ff fd64 	bl	80012a4 <line_sensor_get>
 80017dc:	9700      	str	r7, [sp, #0]
 80017de:	9601      	str	r6, [sp, #4]
 80017e0:	6c00      	ldr	r0, [r0, #64]	; 0x40
 80017e2:	462a      	mov	r2, r5
 80017e4:	4623      	mov	r3, r4
 80017e6:	4641      	mov	r1, r8
 80017e8:	9002      	str	r0, [sp, #8]
 80017ea:	488b      	ldr	r0, [pc, #556]	; (8001a18 <telemetry_print+0x274>)
 80017ec:	f7ff f82e 	bl	800084c <printf_>
 80017f0:	488a      	ldr	r0, [pc, #552]	; (8001a1c <telemetry_print+0x278>)
 80017f2:	f7ff f82b 	bl	800084c <printf_>
 80017f6:	488a      	ldr	r0, [pc, #552]	; (8001a20 <telemetry_print+0x27c>)
 80017f8:	f7ff f828 	bl	800084c <printf_>
 80017fc:	f7ff f974 	bl	8000ae8 <lsm9ds0_get>
 8001800:	f9b0 500c 	ldrsh.w	r5, [r0, #12]
 8001804:	f7ff f970 	bl	8000ae8 <lsm9ds0_get>
 8001808:	f9b0 400e 	ldrsh.w	r4, [r0, #14]
 800180c:	f7ff f96c 	bl	8000ae8 <lsm9ds0_get>
 8001810:	4629      	mov	r1, r5
 8001812:	f9b0 3010 	ldrsh.w	r3, [r0, #16]
 8001816:	4883      	ldr	r0, [pc, #524]	; (8001a24 <telemetry_print+0x280>)
 8001818:	4622      	mov	r2, r4
 800181a:	f7ff f817 	bl	800084c <printf_>
 800181e:	f7ff f963 	bl	8000ae8 <lsm9ds0_get>
 8001822:	f9b0 5006 	ldrsh.w	r5, [r0, #6]
 8001826:	f7ff f95f 	bl	8000ae8 <lsm9ds0_get>
 800182a:	f9b0 4008 	ldrsh.w	r4, [r0, #8]
 800182e:	f7ff f95b 	bl	8000ae8 <lsm9ds0_get>
 8001832:	4629      	mov	r1, r5
 8001834:	f9b0 300a 	ldrsh.w	r3, [r0, #10]
 8001838:	487a      	ldr	r0, [pc, #488]	; (8001a24 <telemetry_print+0x280>)
 800183a:	4622      	mov	r2, r4
 800183c:	f7ff f806 	bl	800084c <printf_>
 8001840:	f7ff f952 	bl	8000ae8 <lsm9ds0_get>
 8001844:	f9b0 5000 	ldrsh.w	r5, [r0]
 8001848:	f7ff f94e 	bl	8000ae8 <lsm9ds0_get>
 800184c:	f9b0 4002 	ldrsh.w	r4, [r0, #2]
 8001850:	f7ff f94a 	bl	8000ae8 <lsm9ds0_get>
 8001854:	4629      	mov	r1, r5
 8001856:	f9b0 3004 	ldrsh.w	r3, [r0, #4]
 800185a:	4872      	ldr	r0, [pc, #456]	; (8001a24 <telemetry_print+0x280>)
 800185c:	4622      	mov	r2, r4
 800185e:	f7fe fff5 	bl	800084c <printf_>
 8001862:	f7ff f941 	bl	8000ae8 <lsm9ds0_get>
 8001866:	f9b0 5018 	ldrsh.w	r5, [r0, #24]
 800186a:	f7ff f93d 	bl	8000ae8 <lsm9ds0_get>
 800186e:	f9b0 401a 	ldrsh.w	r4, [r0, #26]
 8001872:	f7ff f939 	bl	8000ae8 <lsm9ds0_get>
 8001876:	4622      	mov	r2, r4
 8001878:	f9b0 301c 	ldrsh.w	r3, [r0, #28]
 800187c:	4869      	ldr	r0, [pc, #420]	; (8001a24 <telemetry_print+0x280>)
 800187e:	4629      	mov	r1, r5
 8001880:	f7fe ffe4 	bl	800084c <printf_>
 8001884:	4865      	ldr	r0, [pc, #404]	; (8001a1c <telemetry_print+0x278>)
 8001886:	f7fe ffe1 	bl	800084c <printf_>
 800188a:	4867      	ldr	r0, [pc, #412]	; (8001a28 <telemetry_print+0x284>)
 800188c:	f7fe ffde 	bl	800084c <printf_>
 8001890:	2400      	movs	r4, #0
 8001892:	f7ff fd07 	bl	80012a4 <line_sensor_get>
 8001896:	1ca3      	adds	r3, r4, #2
 8001898:	eb00 0383 	add.w	r3, r0, r3, lsl #2
 800189c:	3401      	adds	r4, #1
 800189e:	4863      	ldr	r0, [pc, #396]	; (8001a2c <telemetry_print+0x288>)
 80018a0:	6859      	ldr	r1, [r3, #4]
 80018a2:	f7fe ffd3 	bl	800084c <printf_>
 80018a6:	2c08      	cmp	r4, #8
 80018a8:	d1f3      	bne.n	8001892 <telemetry_print+0xee>
 80018aa:	2400      	movs	r4, #0
 80018ac:	f7ff fc1c 	bl	80010e8 <rgb_get>
 80018b0:	eb00 0344 	add.w	r3, r0, r4, lsl #1
 80018b4:	485d      	ldr	r0, [pc, #372]	; (8001a2c <telemetry_print+0x288>)
 80018b6:	f9b3 1036 	ldrsh.w	r1, [r3, #54]	; 0x36
 80018ba:	3401      	adds	r4, #1
 80018bc:	f7fe ffc6 	bl	800084c <printf_>
 80018c0:	2c08      	cmp	r4, #8
 80018c2:	d1f3      	bne.n	80018ac <telemetry_print+0x108>
 80018c4:	2400      	movs	r4, #0
 80018c6:	f7ff fc0f 	bl	80010e8 <rgb_get>
 80018ca:	f930 1014 	ldrsh.w	r1, [r0, r4, lsl #1]
 80018ce:	4857      	ldr	r0, [pc, #348]	; (8001a2c <telemetry_print+0x288>)
 80018d0:	3401      	adds	r4, #1
 80018d2:	f7fe ffbb 	bl	800084c <printf_>
 80018d6:	2c08      	cmp	r4, #8
 80018d8:	d1f5      	bne.n	80018c6 <telemetry_print+0x122>
 80018da:	2400      	movs	r4, #0
 80018dc:	f7ff fc04 	bl	80010e8 <rgb_get>
 80018e0:	eb00 0344 	add.w	r3, r0, r4, lsl #1
 80018e4:	4851      	ldr	r0, [pc, #324]	; (8001a2c <telemetry_print+0x288>)
 80018e6:	f9b3 1012 	ldrsh.w	r1, [r3, #18]
 80018ea:	3401      	adds	r4, #1
 80018ec:	f7fe ffae 	bl	800084c <printf_>
 80018f0:	2c08      	cmp	r4, #8
 80018f2:	d1f3      	bne.n	80018dc <telemetry_print+0x138>
 80018f4:	2400      	movs	r4, #0
 80018f6:	f7ff fbf7 	bl	80010e8 <rgb_get>
 80018fa:	eb00 0344 	add.w	r3, r0, r4, lsl #1
 80018fe:	484b      	ldr	r0, [pc, #300]	; (8001a2c <telemetry_print+0x288>)
 8001900:	f9b3 1024 	ldrsh.w	r1, [r3, #36]	; 0x24
 8001904:	3401      	adds	r4, #1
 8001906:	f7fe ffa1 	bl	800084c <printf_>
 800190a:	2c08      	cmp	r4, #8
 800190c:	d1f3      	bne.n	80018f6 <telemetry_print+0x152>
 800190e:	4843      	ldr	r0, [pc, #268]	; (8001a1c <telemetry_print+0x278>)
 8001910:	f7fe ff9c 	bl	800084c <printf_>
 8001914:	4846      	ldr	r0, [pc, #280]	; (8001a30 <telemetry_print+0x28c>)
 8001916:	f7fe ff99 	bl	800084c <printf_>
 800191a:	f7ff fe3b 	bl	8001594 <robot_config_get>
 800191e:	6805      	ldr	r5, [r0, #0]
 8001920:	f7ff fe38 	bl	8001594 <robot_config_get>
 8001924:	6844      	ldr	r4, [r0, #4]
 8001926:	f7ff fe35 	bl	8001594 <robot_config_get>
 800192a:	4629      	mov	r1, r5
 800192c:	7a03      	ldrb	r3, [r0, #8]
 800192e:	483d      	ldr	r0, [pc, #244]	; (8001a24 <telemetry_print+0x280>)
 8001930:	4622      	mov	r2, r4
 8001932:	f7fe ff8b 	bl	800084c <printf_>
 8001936:	f7ff fe2d 	bl	8001594 <robot_config_get>
 800193a:	ed9f 8a3e 	vldr	s16, [pc, #248]	; 8001a34 <telemetry_print+0x290>
 800193e:	edd0 7a03 	vldr	s15, [r0, #12]
 8001942:	ee67 7a88 	vmul.f32	s15, s15, s16
 8001946:	eefd 7ae7 	vcvt.s32.f32	s15, s15
 800194a:	edcd 7a05 	vstr	s15, [sp, #20]
 800194e:	f7ff fe21 	bl	8001594 <robot_config_get>
 8001952:	edd0 7a04 	vldr	s15, [r0, #16]
 8001956:	ee67 7a88 	vmul.f32	s15, s15, s16
 800195a:	eefd 7ae7 	vcvt.s32.f32	s15, s15
 800195e:	edcd 7a06 	vstr	s15, [sp, #24]
 8001962:	f7ff fe17 	bl	8001594 <robot_config_get>
 8001966:	edd0 7a05 	vldr	s15, [r0, #20]
 800196a:	ee67 7a88 	vmul.f32	s15, s15, s16
 800196e:	eefd 7ae7 	vcvt.s32.f32	s15, s15
 8001972:	edcd 7a07 	vstr	s15, [sp, #28]
 8001976:	f7ff fe0d 	bl	8001594 <robot_config_get>
 800197a:	edd0 7a06 	vldr	s15, [r0, #24]
 800197e:	ee67 7a88 	vmul.f32	s15, s15, s16
 8001982:	a905      	add	r1, sp, #20
 8001984:	eefd 7ae7 	vcvt.s32.f32	s15, s15
 8001988:	482b      	ldr	r0, [pc, #172]	; (8001a38 <telemetry_print+0x294>)
 800198a:	edcd 7a00 	vstr	s15, [sp]
 800198e:	c90e      	ldmia	r1, {r1, r2, r3}
 8001990:	f7fe ff5c 	bl	800084c <printf_>
 8001994:	f7ff fdfe 	bl	8001594 <robot_config_get>
 8001998:	edd0 7a07 	vldr	s15, [r0, #28]
 800199c:	ee67 7a88 	vmul.f32	s15, s15, s16
 80019a0:	eefd 7ae7 	vcvt.s32.f32	s15, s15
 80019a4:	edcd 7a05 	vstr	s15, [sp, #20]
 80019a8:	f7ff fdf4 	bl	8001594 <robot_config_get>
 80019ac:	edd0 7a08 	vldr	s15, [r0, #32]
 80019b0:	ee67 7a88 	vmul.f32	s15, s15, s16
 80019b4:	eefd 7ae7 	vcvt.s32.f32	s15, s15
 80019b8:	edcd 7a06 	vstr	s15, [sp, #24]
 80019bc:	f7ff fdea 	bl	8001594 <robot_config_get>
 80019c0:	edd0 7a09 	vldr	s15, [r0, #36]	; 0x24
 80019c4:	ee67 7a88 	vmul.f32	s15, s15, s16
 80019c8:	eefd 7ae7 	vcvt.s32.f32	s15, s15
 80019cc:	edcd 7a07 	vstr	s15, [sp, #28]
 80019d0:	f7ff fde0 	bl	8001594 <robot_config_get>
 80019d4:	edd0 7a0a 	vldr	s15, [r0, #40]	; 0x28
 80019d8:	ee27 8a88 	vmul.f32	s16, s15, s16
 80019dc:	a905      	add	r1, sp, #20
 80019de:	eebd 8ac8 	vcvt.s32.f32	s16, s16
 80019e2:	4815      	ldr	r0, [pc, #84]	; (8001a38 <telemetry_print+0x294>)
 80019e4:	ed8d 8a00 	vstr	s16, [sp]
 80019e8:	c90e      	ldmia	r1, {r1, r2, r3}
 80019ea:	f7fe ff2f 	bl	800084c <printf_>
 80019ee:	f7ff fdd1 	bl	8001594 <robot_config_get>
 80019f2:	6ac4      	ldr	r4, [r0, #44]	; 0x2c
 80019f4:	f7ff fdce 	bl	8001594 <robot_config_get>
 80019f8:	4603      	mov	r3, r0
 80019fa:	4621      	mov	r1, r4
 80019fc:	480f      	ldr	r0, [pc, #60]	; (8001a3c <telemetry_print+0x298>)
 80019fe:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 8001a00:	f7fe ff24 	bl	800084c <printf_>
 8001a04:	4805      	ldr	r0, [pc, #20]	; (8001a1c <telemetry_print+0x278>)
 8001a06:	b008      	add	sp, #32
 8001a08:	ecbd 8b02 	vpop	{d8}
 8001a0c:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8001a10:	f7fe bf1c 	b.w	800084c <printf_>
 8001a14:	08004632 	.word	0x08004632
 8001a18:	08004638 	.word	0x08004638
 8001a1c:	0800464a 	.word	0x0800464a
 8001a20:	0800464d 	.word	0x0800464d
 8001a24:	08004660 	.word	0x08004660
 8001a28:	08004653 	.word	0x08004653
 8001a2c:	08004666 	.word	0x08004666
 8001a30:	08004658 	.word	0x08004658
 8001a34:	447a0000 	.word	0x447a0000
 8001a38:	0800465d 	.word	0x0800465d
 8001a3c:	08004663 	.word	0x08004663

08001a40 <broken_line_init>:
 8001a40:	4770      	bx	lr

08001a42 <broken_line_main>:
 8001a42:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8001a46:	2500      	movs	r5, #0
 8001a48:	462c      	mov	r4, r5
 8001a4a:	462f      	mov	r7, r5
 8001a4c:	46a8      	mov	r8, r5
 8001a4e:	462e      	mov	r6, r5
 8001a50:	f7ff fc28 	bl	80012a4 <line_sensor_get>
 8001a54:	f890 3030 	ldrb.w	r3, [r0, #48]	; 0x30
 8001a58:	2b01      	cmp	r3, #1
 8001a5a:	d070      	beq.n	8001b3e <broken_line_main+0xfc>
 8001a5c:	2005      	movs	r0, #5
 8001a5e:	f000 fbb7 	bl	80021d0 <timer_delay_ms>
 8001a62:	2f05      	cmp	r7, #5
 8001a64:	d865      	bhi.n	8001b32 <broken_line_main+0xf0>
 8001a66:	e8df f007 	tbb	[pc, r7]
 8001a6a:	1603      	.short	0x1603
 8001a6c:	514e3b29 	.word	0x514e3b29
 8001a70:	2c00      	cmp	r4, #0
 8001a72:	d149      	bne.n	8001b08 <broken_line_main+0xc6>
 8001a74:	f7ff fc16 	bl	80012a4 <line_sensor_get>
 8001a78:	6b43      	ldr	r3, [r0, #52]	; 0x34
 8001a7a:	2b00      	cmp	r3, #0
 8001a7c:	f04f 0464 	mov.w	r4, #100	; 0x64
 8001a80:	f04f 0701 	mov.w	r7, #1
 8001a84:	bfd4      	ite	le
 8001a86:	f04f 0832 	movle.w	r8, #50	; 0x32
 8001a8a:	f04f 0800 	movgt.w	r8, #0
 8001a8e:	bfd4      	ite	le
 8001a90:	2600      	movle	r6, #0
 8001a92:	2632      	movgt	r6, #50	; 0x32
 8001a94:	e04d      	b.n	8001b32 <broken_line_main+0xf0>
 8001a96:	bbbc      	cbnz	r4, 8001b08 <broken_line_main+0xc6>
 8001a98:	f7ff fc04 	bl	80012a4 <line_sensor_get>
 8001a9c:	6b43      	ldr	r3, [r0, #52]	; 0x34
 8001a9e:	2b00      	cmp	r3, #0
 8001aa0:	f04f 0464 	mov.w	r4, #100	; 0x64
 8001aa4:	f04f 0702 	mov.w	r7, #2
 8001aa8:	bfd4      	ite	le
 8001aaa:	f06f 0831 	mvnle.w	r8, #49	; 0x31
 8001aae:	f04f 0800 	movgt.w	r8, #0
 8001ab2:	bfd4      	ite	le
 8001ab4:	2600      	movle	r6, #0
 8001ab6:	f06f 0631 	mvngt.w	r6, #49	; 0x31
 8001aba:	e03a      	b.n	8001b32 <broken_line_main+0xf0>
 8001abc:	bb24      	cbnz	r4, 8001b08 <broken_line_main+0xc6>
 8001abe:	f7ff fbf1 	bl	80012a4 <line_sensor_get>
 8001ac2:	6b43      	ldr	r3, [r0, #52]	; 0x34
 8001ac4:	2b00      	cmp	r3, #0
 8001ac6:	f04f 0464 	mov.w	r4, #100	; 0x64
 8001aca:	f04f 0703 	mov.w	r7, #3
 8001ace:	bfd4      	ite	le
 8001ad0:	f04f 0800 	movle.w	r8, #0
 8001ad4:	f04f 0832 	movgt.w	r8, #50	; 0x32
 8001ad8:	bfd4      	ite	le
 8001ada:	2632      	movle	r6, #50	; 0x32
 8001adc:	2600      	movgt	r6, #0
 8001ade:	e028      	b.n	8001b32 <broken_line_main+0xf0>
 8001ae0:	b994      	cbnz	r4, 8001b08 <broken_line_main+0xc6>
 8001ae2:	f7ff fbdf 	bl	80012a4 <line_sensor_get>
 8001ae6:	6b43      	ldr	r3, [r0, #52]	; 0x34
 8001ae8:	2b00      	cmp	r3, #0
 8001aea:	f04f 0464 	mov.w	r4, #100	; 0x64
 8001aee:	f04f 0704 	mov.w	r7, #4
 8001af2:	bfd4      	ite	le
 8001af4:	f04f 0800 	movle.w	r8, #0
 8001af8:	f06f 0831 	mvngt.w	r8, #49	; 0x31
 8001afc:	bfd4      	ite	le
 8001afe:	f06f 0631 	mvnle.w	r6, #49	; 0x31
 8001b02:	2600      	movgt	r6, #0
 8001b04:	e015      	b.n	8001b32 <broken_line_main+0xf0>
 8001b06:	b16c      	cbz	r4, 8001b24 <broken_line_main+0xe2>
 8001b08:	3c01      	subs	r4, #1
 8001b0a:	e012      	b.n	8001b32 <broken_line_main+0xf0>
 8001b0c:	b184      	cbz	r4, 8001b30 <broken_line_main+0xee>
 8001b0e:	f241 3387 	movw	r3, #4999	; 0x1387
 8001b12:	429d      	cmp	r5, r3
 8001b14:	bfd8      	it	le
 8001b16:	3532      	addle	r5, #50	; 0x32
 8001b18:	2664      	movs	r6, #100	; 0x64
 8001b1a:	fb95 f6f6 	sdiv	r6, r5, r6
 8001b1e:	3c01      	subs	r4, #1
 8001b20:	46b0      	mov	r8, r6
 8001b22:	e006      	b.n	8001b32 <broken_line_main+0xf0>
 8001b24:	4625      	mov	r5, r4
 8001b26:	2705      	movs	r7, #5
 8001b28:	2432      	movs	r4, #50	; 0x32
 8001b2a:	46a8      	mov	r8, r5
 8001b2c:	462e      	mov	r6, r5
 8001b2e:	e000      	b.n	8001b32 <broken_line_main+0xf0>
 8001b30:	4627      	mov	r7, r4
 8001b32:	fa0f f088 	sxth.w	r0, r8
 8001b36:	b231      	sxth	r1, r6
 8001b38:	f000 fefe 	bl	8002938 <drv8834_run>
 8001b3c:	e788      	b.n	8001a50 <broken_line_main+0xe>
 8001b3e:	2000      	movs	r0, #0
 8001b40:	4601      	mov	r1, r0
 8001b42:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8001b46:	f000 bef7 	b.w	8002938 <drv8834_run>
	...

08001b4c <main>:
 8001b4c:	b508      	push	{r3, lr}
 8001b4e:	f000 ff99 	bl	8002a84 <lib_low_level_init>
 8001b52:	f7fe fef5 	bl	8000940 <lib_os_init>
 8001b56:	4905      	ldr	r1, [pc, #20]	; (8001b6c <main+0x20>)
 8001b58:	4805      	ldr	r0, [pc, #20]	; (8001b70 <main+0x24>)
 8001b5a:	f44f 7200 	mov.w	r2, #512	; 0x200
 8001b5e:	2306      	movs	r3, #6
 8001b60:	f7fe fd52 	bl	8000608 <create_thread>
 8001b64:	f7fe fd4a 	bl	80005fc <kernel_start>
 8001b68:	2000      	movs	r0, #0
 8001b6a:	bd08      	pop	{r3, pc}
 8001b6c:	20000fc8 	.word	0x20000fc8
 8001b70:	080016f1 	.word	0x080016f1

08001b74 <RCC_GetClocksFreq>:
 8001b74:	4ba5      	ldr	r3, [pc, #660]	; (8001e0c <RCC_GetClocksFreq+0x298>)
 8001b76:	685a      	ldr	r2, [r3, #4]
 8001b78:	f002 020c 	and.w	r2, r2, #12
 8001b7c:	2a04      	cmp	r2, #4
 8001b7e:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8001b82:	d005      	beq.n	8001b90 <RCC_GetClocksFreq+0x1c>
 8001b84:	2a08      	cmp	r2, #8
 8001b86:	d006      	beq.n	8001b96 <RCC_GetClocksFreq+0x22>
 8001b88:	4ba1      	ldr	r3, [pc, #644]	; (8001e10 <RCC_GetClocksFreq+0x29c>)
 8001b8a:	6003      	str	r3, [r0, #0]
 8001b8c:	b9ba      	cbnz	r2, 8001bbe <RCC_GetClocksFreq+0x4a>
 8001b8e:	e017      	b.n	8001bc0 <RCC_GetClocksFreq+0x4c>
 8001b90:	4b9f      	ldr	r3, [pc, #636]	; (8001e10 <RCC_GetClocksFreq+0x29c>)
 8001b92:	6003      	str	r3, [r0, #0]
 8001b94:	e013      	b.n	8001bbe <RCC_GetClocksFreq+0x4a>
 8001b96:	6859      	ldr	r1, [r3, #4]
 8001b98:	685c      	ldr	r4, [r3, #4]
 8001b9a:	f3c1 4183 	ubfx	r1, r1, #18, #4
 8001b9e:	03e2      	lsls	r2, r4, #15
 8001ba0:	f101 0102 	add.w	r1, r1, #2
 8001ba4:	d401      	bmi.n	8001baa <RCC_GetClocksFreq+0x36>
 8001ba6:	4a9b      	ldr	r2, [pc, #620]	; (8001e14 <RCC_GetClocksFreq+0x2a0>)
 8001ba8:	e006      	b.n	8001bb8 <RCC_GetClocksFreq+0x44>
 8001baa:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8001bac:	4b98      	ldr	r3, [pc, #608]	; (8001e10 <RCC_GetClocksFreq+0x29c>)
 8001bae:	f002 020f 	and.w	r2, r2, #15
 8001bb2:	3201      	adds	r2, #1
 8001bb4:	fbb3 f2f2 	udiv	r2, r3, r2
 8001bb8:	434a      	muls	r2, r1
 8001bba:	6002      	str	r2, [r0, #0]
 8001bbc:	e000      	b.n	8001bc0 <RCC_GetClocksFreq+0x4c>
 8001bbe:	2200      	movs	r2, #0
 8001bc0:	4f92      	ldr	r7, [pc, #584]	; (8001e0c <RCC_GetClocksFreq+0x298>)
 8001bc2:	4d95      	ldr	r5, [pc, #596]	; (8001e18 <RCC_GetClocksFreq+0x2a4>)
 8001bc4:	687b      	ldr	r3, [r7, #4]
 8001bc6:	f8df 8254 	ldr.w	r8, [pc, #596]	; 8001e1c <RCC_GetClocksFreq+0x2a8>
 8001bca:	f3c3 1303 	ubfx	r3, r3, #4, #4
 8001bce:	5cec      	ldrb	r4, [r5, r3]
 8001bd0:	6803      	ldr	r3, [r0, #0]
 8001bd2:	b2e4      	uxtb	r4, r4
 8001bd4:	fa23 f104 	lsr.w	r1, r3, r4
 8001bd8:	6041      	str	r1, [r0, #4]
 8001bda:	687e      	ldr	r6, [r7, #4]
 8001bdc:	f3c6 2602 	ubfx	r6, r6, #8, #3
 8001be0:	5dae      	ldrb	r6, [r5, r6]
 8001be2:	fa21 f606 	lsr.w	r6, r1, r6
 8001be6:	6086      	str	r6, [r0, #8]
 8001be8:	f8d7 c004 	ldr.w	ip, [r7, #4]
 8001bec:	f3cc 2cc2 	ubfx	ip, ip, #11, #3
 8001bf0:	f815 500c 	ldrb.w	r5, [r5, ip]
 8001bf4:	b2ed      	uxtb	r5, r5
 8001bf6:	40e9      	lsrs	r1, r5
 8001bf8:	60c1      	str	r1, [r0, #12]
 8001bfa:	f8d7 902c 	ldr.w	r9, [r7, #44]	; 0x2c
 8001bfe:	f3c9 1904 	ubfx	r9, r9, #4, #5
 8001c02:	f009 0c0f 	and.w	ip, r9, #15
 8001c06:	f019 0f10 	tst.w	r9, #16
 8001c0a:	f838 c01c 	ldrh.w	ip, [r8, ip, lsl #1]
 8001c0e:	fa1f fc8c 	uxth.w	ip, ip
 8001c12:	d007      	beq.n	8001c24 <RCC_GetClocksFreq+0xb0>
 8001c14:	f1bc 0f00 	cmp.w	ip, #0
 8001c18:	d004      	beq.n	8001c24 <RCC_GetClocksFreq+0xb0>
 8001c1a:	fbb2 fcfc 	udiv	ip, r2, ip
 8001c1e:	f8c0 c010 	str.w	ip, [r0, #16]
 8001c22:	e000      	b.n	8001c26 <RCC_GetClocksFreq+0xb2>
 8001c24:	6103      	str	r3, [r0, #16]
 8001c26:	6aff      	ldr	r7, [r7, #44]	; 0x2c
 8001c28:	f3c7 2c44 	ubfx	ip, r7, #9, #5
 8001c2c:	f00c 070f 	and.w	r7, ip, #15
 8001c30:	f01c 0f10 	tst.w	ip, #16
 8001c34:	f838 7017 	ldrh.w	r7, [r8, r7, lsl #1]
 8001c38:	b2bf      	uxth	r7, r7
 8001c3a:	d004      	beq.n	8001c46 <RCC_GetClocksFreq+0xd2>
 8001c3c:	b11f      	cbz	r7, 8001c46 <RCC_GetClocksFreq+0xd2>
 8001c3e:	fbb2 f7f7 	udiv	r7, r2, r7
 8001c42:	6147      	str	r7, [r0, #20]
 8001c44:	e000      	b.n	8001c48 <RCC_GetClocksFreq+0xd4>
 8001c46:	6143      	str	r3, [r0, #20]
 8001c48:	4f70      	ldr	r7, [pc, #448]	; (8001e0c <RCC_GetClocksFreq+0x298>)
 8001c4a:	f8d7 c030 	ldr.w	ip, [r7, #48]	; 0x30
 8001c4e:	f01c 0f10 	tst.w	ip, #16
 8001c52:	bf0a      	itet	eq
 8001c54:	f8df c1b8 	ldreq.w	ip, [pc, #440]	; 8001e10 <RCC_GetClocksFreq+0x29c>
 8001c58:	6183      	strne	r3, [r0, #24]
 8001c5a:	f8c0 c018 	streq.w	ip, [r0, #24]
 8001c5e:	6b3f      	ldr	r7, [r7, #48]	; 0x30
 8001c60:	06bf      	lsls	r7, r7, #26
 8001c62:	bf56      	itet	pl
 8001c64:	4f6a      	ldrpl	r7, [pc, #424]	; (8001e10 <RCC_GetClocksFreq+0x29c>)
 8001c66:	61c3      	strmi	r3, [r0, #28]
 8001c68:	61c7      	strpl	r7, [r0, #28]
 8001c6a:	4f68      	ldr	r7, [pc, #416]	; (8001e0c <RCC_GetClocksFreq+0x298>)
 8001c6c:	f8d7 c030 	ldr.w	ip, [r7, #48]	; 0x30
 8001c70:	f01c 0f40 	tst.w	ip, #64	; 0x40
 8001c74:	bf0a      	itet	eq
 8001c76:	f8df c198 	ldreq.w	ip, [pc, #408]	; 8001e10 <RCC_GetClocksFreq+0x29c>
 8001c7a:	6203      	strne	r3, [r0, #32]
 8001c7c:	f8c0 c020 	streq.w	ip, [r0, #32]
 8001c80:	6b3f      	ldr	r7, [r7, #48]	; 0x30
 8001c82:	05ff      	lsls	r7, r7, #23
 8001c84:	d506      	bpl.n	8001c94 <RCC_GetClocksFreq+0x120>
 8001c86:	4293      	cmp	r3, r2
 8001c88:	d104      	bne.n	8001c94 <RCC_GetClocksFreq+0x120>
 8001c8a:	42a5      	cmp	r5, r4
 8001c8c:	d102      	bne.n	8001c94 <RCC_GetClocksFreq+0x120>
 8001c8e:	005f      	lsls	r7, r3, #1
 8001c90:	6247      	str	r7, [r0, #36]	; 0x24
 8001c92:	e000      	b.n	8001c96 <RCC_GetClocksFreq+0x122>
 8001c94:	6241      	str	r1, [r0, #36]	; 0x24
 8001c96:	4f5d      	ldr	r7, [pc, #372]	; (8001e0c <RCC_GetClocksFreq+0x298>)
 8001c98:	f8d7 c030 	ldr.w	ip, [r7, #48]	; 0x30
 8001c9c:	f41c 5f80 	tst.w	ip, #4096	; 0x1000
 8001ca0:	d008      	beq.n	8001cb4 <RCC_GetClocksFreq+0x140>
 8001ca2:	4293      	cmp	r3, r2
 8001ca4:	d106      	bne.n	8001cb4 <RCC_GetClocksFreq+0x140>
 8001ca6:	42a5      	cmp	r5, r4
 8001ca8:	d104      	bne.n	8001cb4 <RCC_GetClocksFreq+0x140>
 8001caa:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8001cae:	f8c0 c028 	str.w	ip, [r0, #40]	; 0x28
 8001cb2:	e000      	b.n	8001cb6 <RCC_GetClocksFreq+0x142>
 8001cb4:	6281      	str	r1, [r0, #40]	; 0x28
 8001cb6:	6b3f      	ldr	r7, [r7, #48]	; 0x30
 8001cb8:	05bf      	lsls	r7, r7, #22
 8001cba:	d506      	bpl.n	8001cca <RCC_GetClocksFreq+0x156>
 8001cbc:	4293      	cmp	r3, r2
 8001cbe:	d104      	bne.n	8001cca <RCC_GetClocksFreq+0x156>
 8001cc0:	42a5      	cmp	r5, r4
 8001cc2:	d102      	bne.n	8001cca <RCC_GetClocksFreq+0x156>
 8001cc4:	005f      	lsls	r7, r3, #1
 8001cc6:	62c7      	str	r7, [r0, #44]	; 0x2c
 8001cc8:	e000      	b.n	8001ccc <RCC_GetClocksFreq+0x158>
 8001cca:	62c1      	str	r1, [r0, #44]	; 0x2c
 8001ccc:	4f4f      	ldr	r7, [pc, #316]	; (8001e0c <RCC_GetClocksFreq+0x298>)
 8001cce:	f8d7 c030 	ldr.w	ip, [r7, #48]	; 0x30
 8001cd2:	f41c 6f80 	tst.w	ip, #1024	; 0x400
 8001cd6:	d008      	beq.n	8001cea <RCC_GetClocksFreq+0x176>
 8001cd8:	4293      	cmp	r3, r2
 8001cda:	d106      	bne.n	8001cea <RCC_GetClocksFreq+0x176>
 8001cdc:	42a5      	cmp	r5, r4
 8001cde:	d104      	bne.n	8001cea <RCC_GetClocksFreq+0x176>
 8001ce0:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8001ce4:	f8c0 c04c 	str.w	ip, [r0, #76]	; 0x4c
 8001ce8:	e000      	b.n	8001cec <RCC_GetClocksFreq+0x178>
 8001cea:	64c1      	str	r1, [r0, #76]	; 0x4c
 8001cec:	6b3f      	ldr	r7, [r7, #48]	; 0x30
 8001cee:	053f      	lsls	r7, r7, #20
 8001cf0:	d506      	bpl.n	8001d00 <RCC_GetClocksFreq+0x18c>
 8001cf2:	4293      	cmp	r3, r2
 8001cf4:	d104      	bne.n	8001d00 <RCC_GetClocksFreq+0x18c>
 8001cf6:	42a5      	cmp	r5, r4
 8001cf8:	d102      	bne.n	8001d00 <RCC_GetClocksFreq+0x18c>
 8001cfa:	005f      	lsls	r7, r3, #1
 8001cfc:	6507      	str	r7, [r0, #80]	; 0x50
 8001cfe:	e000      	b.n	8001d02 <RCC_GetClocksFreq+0x18e>
 8001d00:	6501      	str	r1, [r0, #80]	; 0x50
 8001d02:	4f42      	ldr	r7, [pc, #264]	; (8001e0c <RCC_GetClocksFreq+0x298>)
 8001d04:	f8d7 c030 	ldr.w	ip, [r7, #48]	; 0x30
 8001d08:	f41c 5f00 	tst.w	ip, #8192	; 0x2000
 8001d0c:	d008      	beq.n	8001d20 <RCC_GetClocksFreq+0x1ac>
 8001d0e:	4293      	cmp	r3, r2
 8001d10:	d106      	bne.n	8001d20 <RCC_GetClocksFreq+0x1ac>
 8001d12:	42a5      	cmp	r5, r4
 8001d14:	d104      	bne.n	8001d20 <RCC_GetClocksFreq+0x1ac>
 8001d16:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8001d1a:	f8c0 c054 	str.w	ip, [r0, #84]	; 0x54
 8001d1e:	e000      	b.n	8001d22 <RCC_GetClocksFreq+0x1ae>
 8001d20:	6501      	str	r1, [r0, #80]	; 0x50
 8001d22:	6b3f      	ldr	r7, [r7, #48]	; 0x30
 8001d24:	043f      	lsls	r7, r7, #16
 8001d26:	d506      	bpl.n	8001d36 <RCC_GetClocksFreq+0x1c2>
 8001d28:	4293      	cmp	r3, r2
 8001d2a:	d104      	bne.n	8001d36 <RCC_GetClocksFreq+0x1c2>
 8001d2c:	42a5      	cmp	r5, r4
 8001d2e:	d102      	bne.n	8001d36 <RCC_GetClocksFreq+0x1c2>
 8001d30:	005a      	lsls	r2, r3, #1
 8001d32:	6582      	str	r2, [r0, #88]	; 0x58
 8001d34:	e000      	b.n	8001d38 <RCC_GetClocksFreq+0x1c4>
 8001d36:	6581      	str	r1, [r0, #88]	; 0x58
 8001d38:	4a34      	ldr	r2, [pc, #208]	; (8001e0c <RCC_GetClocksFreq+0x298>)
 8001d3a:	6b14      	ldr	r4, [r2, #48]	; 0x30
 8001d3c:	07a4      	lsls	r4, r4, #30
 8001d3e:	d014      	beq.n	8001d6a <RCC_GetClocksFreq+0x1f6>
 8001d40:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8001d42:	f001 0103 	and.w	r1, r1, #3
 8001d46:	2901      	cmp	r1, #1
 8001d48:	d101      	bne.n	8001d4e <RCC_GetClocksFreq+0x1da>
 8001d4a:	6383      	str	r3, [r0, #56]	; 0x38
 8001d4c:	e00e      	b.n	8001d6c <RCC_GetClocksFreq+0x1f8>
 8001d4e:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8001d50:	f001 0103 	and.w	r1, r1, #3
 8001d54:	2902      	cmp	r1, #2
 8001d56:	d102      	bne.n	8001d5e <RCC_GetClocksFreq+0x1ea>
 8001d58:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 8001d5c:	e005      	b.n	8001d6a <RCC_GetClocksFreq+0x1f6>
 8001d5e:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8001d60:	f001 0103 	and.w	r1, r1, #3
 8001d64:	2903      	cmp	r1, #3
 8001d66:	d101      	bne.n	8001d6c <RCC_GetClocksFreq+0x1f8>
 8001d68:	4929      	ldr	r1, [pc, #164]	; (8001e10 <RCC_GetClocksFreq+0x29c>)
 8001d6a:	6381      	str	r1, [r0, #56]	; 0x38
 8001d6c:	6b12      	ldr	r2, [r2, #48]	; 0x30
 8001d6e:	4927      	ldr	r1, [pc, #156]	; (8001e0c <RCC_GetClocksFreq+0x298>)
 8001d70:	f412 3f40 	tst.w	r2, #196608	; 0x30000
 8001d74:	d101      	bne.n	8001d7a <RCC_GetClocksFreq+0x206>
 8001d76:	63c6      	str	r6, [r0, #60]	; 0x3c
 8001d78:	e018      	b.n	8001dac <RCC_GetClocksFreq+0x238>
 8001d7a:	6b0a      	ldr	r2, [r1, #48]	; 0x30
 8001d7c:	f402 3240 	and.w	r2, r2, #196608	; 0x30000
 8001d80:	f5b2 3f80 	cmp.w	r2, #65536	; 0x10000
 8001d84:	d101      	bne.n	8001d8a <RCC_GetClocksFreq+0x216>
 8001d86:	63c3      	str	r3, [r0, #60]	; 0x3c
 8001d88:	e010      	b.n	8001dac <RCC_GetClocksFreq+0x238>
 8001d8a:	6b0a      	ldr	r2, [r1, #48]	; 0x30
 8001d8c:	f402 3240 	and.w	r2, r2, #196608	; 0x30000
 8001d90:	f5b2 3f00 	cmp.w	r2, #131072	; 0x20000
 8001d94:	d102      	bne.n	8001d9c <RCC_GetClocksFreq+0x228>
 8001d96:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 8001d9a:	e006      	b.n	8001daa <RCC_GetClocksFreq+0x236>
 8001d9c:	6b0a      	ldr	r2, [r1, #48]	; 0x30
 8001d9e:	f402 3240 	and.w	r2, r2, #196608	; 0x30000
 8001da2:	f5b2 3f40 	cmp.w	r2, #196608	; 0x30000
 8001da6:	d101      	bne.n	8001dac <RCC_GetClocksFreq+0x238>
 8001da8:	4a19      	ldr	r2, [pc, #100]	; (8001e10 <RCC_GetClocksFreq+0x29c>)
 8001daa:	63c2      	str	r2, [r0, #60]	; 0x3c
 8001dac:	4a17      	ldr	r2, [pc, #92]	; (8001e0c <RCC_GetClocksFreq+0x298>)
 8001dae:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8001db0:	f411 2f40 	tst.w	r1, #786432	; 0xc0000
 8001db4:	d101      	bne.n	8001dba <RCC_GetClocksFreq+0x246>
 8001db6:	6406      	str	r6, [r0, #64]	; 0x40
 8001db8:	e018      	b.n	8001dec <RCC_GetClocksFreq+0x278>
 8001dba:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8001dbc:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 8001dc0:	f5b1 2f80 	cmp.w	r1, #262144	; 0x40000
 8001dc4:	d101      	bne.n	8001dca <RCC_GetClocksFreq+0x256>
 8001dc6:	6403      	str	r3, [r0, #64]	; 0x40
 8001dc8:	e010      	b.n	8001dec <RCC_GetClocksFreq+0x278>
 8001dca:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8001dcc:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 8001dd0:	f5b1 2f00 	cmp.w	r1, #524288	; 0x80000
 8001dd4:	d102      	bne.n	8001ddc <RCC_GetClocksFreq+0x268>
 8001dd6:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 8001dda:	e006      	b.n	8001dea <RCC_GetClocksFreq+0x276>
 8001ddc:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8001dde:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 8001de2:	f5b1 2f40 	cmp.w	r1, #786432	; 0xc0000
 8001de6:	d101      	bne.n	8001dec <RCC_GetClocksFreq+0x278>
 8001de8:	4909      	ldr	r1, [pc, #36]	; (8001e10 <RCC_GetClocksFreq+0x29c>)
 8001dea:	6401      	str	r1, [r0, #64]	; 0x40
 8001dec:	6b12      	ldr	r2, [r2, #48]	; 0x30
 8001dee:	4907      	ldr	r1, [pc, #28]	; (8001e0c <RCC_GetClocksFreq+0x298>)
 8001df0:	f412 1f40 	tst.w	r2, #3145728	; 0x300000
 8001df4:	d101      	bne.n	8001dfa <RCC_GetClocksFreq+0x286>
 8001df6:	6446      	str	r6, [r0, #68]	; 0x44
 8001df8:	e023      	b.n	8001e42 <RCC_GetClocksFreq+0x2ce>
 8001dfa:	6b0a      	ldr	r2, [r1, #48]	; 0x30
 8001dfc:	f402 1240 	and.w	r2, r2, #3145728	; 0x300000
 8001e00:	f5b2 1f80 	cmp.w	r2, #1048576	; 0x100000
 8001e04:	d10c      	bne.n	8001e20 <RCC_GetClocksFreq+0x2ac>
 8001e06:	6443      	str	r3, [r0, #68]	; 0x44
 8001e08:	e01b      	b.n	8001e42 <RCC_GetClocksFreq+0x2ce>
 8001e0a:	bf00      	nop
 8001e0c:	40021000 	.word	0x40021000
 8001e10:	007a1200 	.word	0x007a1200
 8001e14:	003d0900 	.word	0x003d0900
 8001e18:	200000c0 	.word	0x200000c0
 8001e1c:	200000a0 	.word	0x200000a0
 8001e20:	6b0a      	ldr	r2, [r1, #48]	; 0x30
 8001e22:	f402 1240 	and.w	r2, r2, #3145728	; 0x300000
 8001e26:	f5b2 1f00 	cmp.w	r2, #2097152	; 0x200000
 8001e2a:	d102      	bne.n	8001e32 <RCC_GetClocksFreq+0x2be>
 8001e2c:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 8001e30:	e006      	b.n	8001e40 <RCC_GetClocksFreq+0x2cc>
 8001e32:	6b0a      	ldr	r2, [r1, #48]	; 0x30
 8001e34:	f402 1240 	and.w	r2, r2, #3145728	; 0x300000
 8001e38:	f5b2 1f40 	cmp.w	r2, #3145728	; 0x300000
 8001e3c:	d101      	bne.n	8001e42 <RCC_GetClocksFreq+0x2ce>
 8001e3e:	4a11      	ldr	r2, [pc, #68]	; (8001e84 <RCC_GetClocksFreq+0x310>)
 8001e40:	6442      	str	r2, [r0, #68]	; 0x44
 8001e42:	4a11      	ldr	r2, [pc, #68]	; (8001e88 <RCC_GetClocksFreq+0x314>)
 8001e44:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8001e46:	f411 0f40 	tst.w	r1, #12582912	; 0xc00000
 8001e4a:	d102      	bne.n	8001e52 <RCC_GetClocksFreq+0x2de>
 8001e4c:	6486      	str	r6, [r0, #72]	; 0x48
 8001e4e:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8001e52:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8001e54:	f401 0140 	and.w	r1, r1, #12582912	; 0xc00000
 8001e58:	f5b1 0f80 	cmp.w	r1, #4194304	; 0x400000
 8001e5c:	d00f      	beq.n	8001e7e <RCC_GetClocksFreq+0x30a>
 8001e5e:	6b13      	ldr	r3, [r2, #48]	; 0x30
 8001e60:	f403 0340 	and.w	r3, r3, #12582912	; 0xc00000
 8001e64:	f5b3 0f00 	cmp.w	r3, #8388608	; 0x800000
 8001e68:	d102      	bne.n	8001e70 <RCC_GetClocksFreq+0x2fc>
 8001e6a:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001e6e:	e006      	b.n	8001e7e <RCC_GetClocksFreq+0x30a>
 8001e70:	6b13      	ldr	r3, [r2, #48]	; 0x30
 8001e72:	f403 0340 	and.w	r3, r3, #12582912	; 0xc00000
 8001e76:	f5b3 0f40 	cmp.w	r3, #12582912	; 0xc00000
 8001e7a:	d101      	bne.n	8001e80 <RCC_GetClocksFreq+0x30c>
 8001e7c:	4b01      	ldr	r3, [pc, #4]	; (8001e84 <RCC_GetClocksFreq+0x310>)
 8001e7e:	6483      	str	r3, [r0, #72]	; 0x48
 8001e80:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8001e84:	007a1200 	.word	0x007a1200
 8001e88:	40021000 	.word	0x40021000

08001e8c <RCC_AHBPeriphClockCmd>:
 8001e8c:	bf00      	nop
 8001e8e:	bf00      	nop
 8001e90:	4b04      	ldr	r3, [pc, #16]	; (8001ea4 <RCC_AHBPeriphClockCmd+0x18>)
 8001e92:	695a      	ldr	r2, [r3, #20]
 8001e94:	b109      	cbz	r1, 8001e9a <RCC_AHBPeriphClockCmd+0xe>
 8001e96:	4310      	orrs	r0, r2
 8001e98:	e001      	b.n	8001e9e <RCC_AHBPeriphClockCmd+0x12>
 8001e9a:	ea22 0000 	bic.w	r0, r2, r0
 8001e9e:	6158      	str	r0, [r3, #20]
 8001ea0:	4770      	bx	lr
 8001ea2:	bf00      	nop
 8001ea4:	40021000 	.word	0x40021000

08001ea8 <RCC_APB2PeriphClockCmd>:
 8001ea8:	bf00      	nop
 8001eaa:	bf00      	nop
 8001eac:	4b04      	ldr	r3, [pc, #16]	; (8001ec0 <RCC_APB2PeriphClockCmd+0x18>)
 8001eae:	699a      	ldr	r2, [r3, #24]
 8001eb0:	b109      	cbz	r1, 8001eb6 <RCC_APB2PeriphClockCmd+0xe>
 8001eb2:	4310      	orrs	r0, r2
 8001eb4:	e001      	b.n	8001eba <RCC_APB2PeriphClockCmd+0x12>
 8001eb6:	ea22 0000 	bic.w	r0, r2, r0
 8001eba:	6198      	str	r0, [r3, #24]
 8001ebc:	4770      	bx	lr
 8001ebe:	bf00      	nop
 8001ec0:	40021000 	.word	0x40021000

08001ec4 <RCC_APB1PeriphClockCmd>:
 8001ec4:	bf00      	nop
 8001ec6:	bf00      	nop
 8001ec8:	4b04      	ldr	r3, [pc, #16]	; (8001edc <RCC_APB1PeriphClockCmd+0x18>)
 8001eca:	69da      	ldr	r2, [r3, #28]
 8001ecc:	b109      	cbz	r1, 8001ed2 <RCC_APB1PeriphClockCmd+0xe>
 8001ece:	4310      	orrs	r0, r2
 8001ed0:	e001      	b.n	8001ed6 <RCC_APB1PeriphClockCmd+0x12>
 8001ed2:	ea22 0000 	bic.w	r0, r2, r0
 8001ed6:	61d8      	str	r0, [r3, #28]
 8001ed8:	4770      	bx	lr
 8001eda:	bf00      	nop
 8001edc:	40021000 	.word	0x40021000

08001ee0 <TIM_TimeBaseInit>:
 8001ee0:	bf00      	nop
 8001ee2:	bf00      	nop
 8001ee4:	bf00      	nop
 8001ee6:	4a24      	ldr	r2, [pc, #144]	; (8001f78 <TIM_TimeBaseInit+0x98>)
 8001ee8:	8803      	ldrh	r3, [r0, #0]
 8001eea:	4290      	cmp	r0, r2
 8001eec:	b29b      	uxth	r3, r3
 8001eee:	d012      	beq.n	8001f16 <TIM_TimeBaseInit+0x36>
 8001ef0:	f502 6200 	add.w	r2, r2, #2048	; 0x800
 8001ef4:	4290      	cmp	r0, r2
 8001ef6:	d00e      	beq.n	8001f16 <TIM_TimeBaseInit+0x36>
 8001ef8:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 8001efc:	d00b      	beq.n	8001f16 <TIM_TimeBaseInit+0x36>
 8001efe:	f5a2 3298 	sub.w	r2, r2, #77824	; 0x13000
 8001f02:	4290      	cmp	r0, r2
 8001f04:	d007      	beq.n	8001f16 <TIM_TimeBaseInit+0x36>
 8001f06:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8001f0a:	4290      	cmp	r0, r2
 8001f0c:	d003      	beq.n	8001f16 <TIM_TimeBaseInit+0x36>
 8001f0e:	f502 32a4 	add.w	r2, r2, #83968	; 0x14800
 8001f12:	4290      	cmp	r0, r2
 8001f14:	d103      	bne.n	8001f1e <TIM_TimeBaseInit+0x3e>
 8001f16:	884a      	ldrh	r2, [r1, #2]
 8001f18:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 8001f1c:	4313      	orrs	r3, r2
 8001f1e:	4a17      	ldr	r2, [pc, #92]	; (8001f7c <TIM_TimeBaseInit+0x9c>)
 8001f20:	4290      	cmp	r0, r2
 8001f22:	d008      	beq.n	8001f36 <TIM_TimeBaseInit+0x56>
 8001f24:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8001f28:	4290      	cmp	r0, r2
 8001f2a:	d004      	beq.n	8001f36 <TIM_TimeBaseInit+0x56>
 8001f2c:	f423 7340 	bic.w	r3, r3, #768	; 0x300
 8001f30:	890a      	ldrh	r2, [r1, #8]
 8001f32:	b29b      	uxth	r3, r3
 8001f34:	4313      	orrs	r3, r2
 8001f36:	8003      	strh	r3, [r0, #0]
 8001f38:	684b      	ldr	r3, [r1, #4]
 8001f3a:	62c3      	str	r3, [r0, #44]	; 0x2c
 8001f3c:	880b      	ldrh	r3, [r1, #0]
 8001f3e:	8503      	strh	r3, [r0, #40]	; 0x28
 8001f40:	4b0d      	ldr	r3, [pc, #52]	; (8001f78 <TIM_TimeBaseInit+0x98>)
 8001f42:	4298      	cmp	r0, r3
 8001f44:	d013      	beq.n	8001f6e <TIM_TimeBaseInit+0x8e>
 8001f46:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 8001f4a:	4298      	cmp	r0, r3
 8001f4c:	d00f      	beq.n	8001f6e <TIM_TimeBaseInit+0x8e>
 8001f4e:	f503 6340 	add.w	r3, r3, #3072	; 0xc00
 8001f52:	4298      	cmp	r0, r3
 8001f54:	d00b      	beq.n	8001f6e <TIM_TimeBaseInit+0x8e>
 8001f56:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 8001f5a:	4298      	cmp	r0, r3
 8001f5c:	d007      	beq.n	8001f6e <TIM_TimeBaseInit+0x8e>
 8001f5e:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 8001f62:	4298      	cmp	r0, r3
 8001f64:	d003      	beq.n	8001f6e <TIM_TimeBaseInit+0x8e>
 8001f66:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 8001f6a:	4298      	cmp	r0, r3
 8001f6c:	d101      	bne.n	8001f72 <TIM_TimeBaseInit+0x92>
 8001f6e:	894b      	ldrh	r3, [r1, #10]
 8001f70:	8603      	strh	r3, [r0, #48]	; 0x30
 8001f72:	2301      	movs	r3, #1
 8001f74:	6143      	str	r3, [r0, #20]
 8001f76:	4770      	bx	lr
 8001f78:	40012c00 	.word	0x40012c00
 8001f7c:	40001000 	.word	0x40001000

08001f80 <TIM_Cmd>:
 8001f80:	bf00      	nop
 8001f82:	bf00      	nop
 8001f84:	8803      	ldrh	r3, [r0, #0]
 8001f86:	b119      	cbz	r1, 8001f90 <TIM_Cmd+0x10>
 8001f88:	b29b      	uxth	r3, r3
 8001f8a:	f043 0301 	orr.w	r3, r3, #1
 8001f8e:	e003      	b.n	8001f98 <TIM_Cmd+0x18>
 8001f90:	f023 0301 	bic.w	r3, r3, #1
 8001f94:	041b      	lsls	r3, r3, #16
 8001f96:	0c1b      	lsrs	r3, r3, #16
 8001f98:	8003      	strh	r3, [r0, #0]
 8001f9a:	4770      	bx	lr

08001f9c <TIM_OC1Init>:
 8001f9c:	b530      	push	{r4, r5, lr}
 8001f9e:	bf00      	nop
 8001fa0:	bf00      	nop
 8001fa2:	bf00      	nop
 8001fa4:	bf00      	nop
 8001fa6:	6a03      	ldr	r3, [r0, #32]
 8001fa8:	680c      	ldr	r4, [r1, #0]
 8001faa:	f023 0301 	bic.w	r3, r3, #1
 8001fae:	6203      	str	r3, [r0, #32]
 8001fb0:	6a03      	ldr	r3, [r0, #32]
 8001fb2:	6842      	ldr	r2, [r0, #4]
 8001fb4:	6985      	ldr	r5, [r0, #24]
 8001fb6:	f425 3580 	bic.w	r5, r5, #65536	; 0x10000
 8001fba:	f025 0573 	bic.w	r5, r5, #115	; 0x73
 8001fbe:	432c      	orrs	r4, r5
 8001fc0:	898d      	ldrh	r5, [r1, #12]
 8001fc2:	f023 0302 	bic.w	r3, r3, #2
 8001fc6:	432b      	orrs	r3, r5
 8001fc8:	888d      	ldrh	r5, [r1, #4]
 8001fca:	432b      	orrs	r3, r5
 8001fcc:	4d15      	ldr	r5, [pc, #84]	; (8002024 <TIM_OC1Init+0x88>)
 8001fce:	42a8      	cmp	r0, r5
 8001fd0:	d00f      	beq.n	8001ff2 <TIM_OC1Init+0x56>
 8001fd2:	f505 6500 	add.w	r5, r5, #2048	; 0x800
 8001fd6:	42a8      	cmp	r0, r5
 8001fd8:	d00b      	beq.n	8001ff2 <TIM_OC1Init+0x56>
 8001fda:	f505 6540 	add.w	r5, r5, #3072	; 0xc00
 8001fde:	42a8      	cmp	r0, r5
 8001fe0:	d007      	beq.n	8001ff2 <TIM_OC1Init+0x56>
 8001fe2:	f505 6580 	add.w	r5, r5, #1024	; 0x400
 8001fe6:	42a8      	cmp	r0, r5
 8001fe8:	d003      	beq.n	8001ff2 <TIM_OC1Init+0x56>
 8001fea:	f505 6580 	add.w	r5, r5, #1024	; 0x400
 8001fee:	42a8      	cmp	r0, r5
 8001ff0:	d111      	bne.n	8002016 <TIM_OC1Init+0x7a>
 8001ff2:	bf00      	nop
 8001ff4:	bf00      	nop
 8001ff6:	bf00      	nop
 8001ff8:	bf00      	nop
 8001ffa:	89cd      	ldrh	r5, [r1, #14]
 8001ffc:	f023 0308 	bic.w	r3, r3, #8
 8002000:	432b      	orrs	r3, r5
 8002002:	88cd      	ldrh	r5, [r1, #6]
 8002004:	f023 0304 	bic.w	r3, r3, #4
 8002008:	432b      	orrs	r3, r5
 800200a:	8a0d      	ldrh	r5, [r1, #16]
 800200c:	f422 7240 	bic.w	r2, r2, #768	; 0x300
 8002010:	432a      	orrs	r2, r5
 8002012:	8a4d      	ldrh	r5, [r1, #18]
 8002014:	432a      	orrs	r2, r5
 8002016:	6042      	str	r2, [r0, #4]
 8002018:	688a      	ldr	r2, [r1, #8]
 800201a:	6184      	str	r4, [r0, #24]
 800201c:	6342      	str	r2, [r0, #52]	; 0x34
 800201e:	6203      	str	r3, [r0, #32]
 8002020:	bd30      	pop	{r4, r5, pc}
 8002022:	bf00      	nop
 8002024:	40012c00 	.word	0x40012c00

08002028 <TIM_OC2Init>:
 8002028:	b570      	push	{r4, r5, r6, lr}
 800202a:	bf00      	nop
 800202c:	bf00      	nop
 800202e:	bf00      	nop
 8002030:	bf00      	nop
 8002032:	6a03      	ldr	r3, [r0, #32]
 8002034:	680c      	ldr	r4, [r1, #0]
 8002036:	898e      	ldrh	r6, [r1, #12]
 8002038:	f023 0310 	bic.w	r3, r3, #16
 800203c:	6203      	str	r3, [r0, #32]
 800203e:	6a05      	ldr	r5, [r0, #32]
 8002040:	6842      	ldr	r2, [r0, #4]
 8002042:	6983      	ldr	r3, [r0, #24]
 8002044:	f023 7380 	bic.w	r3, r3, #16777216	; 0x1000000
 8002048:	f423 43e6 	bic.w	r3, r3, #29440	; 0x7300
 800204c:	ea43 2404 	orr.w	r4, r3, r4, lsl #8
 8002050:	888b      	ldrh	r3, [r1, #4]
 8002052:	f025 0520 	bic.w	r5, r5, #32
 8002056:	4333      	orrs	r3, r6
 8002058:	ea45 1303 	orr.w	r3, r5, r3, lsl #4
 800205c:	4d10      	ldr	r5, [pc, #64]	; (80020a0 <TIM_OC2Init+0x78>)
 800205e:	42a8      	cmp	r0, r5
 8002060:	d003      	beq.n	800206a <TIM_OC2Init+0x42>
 8002062:	f505 6500 	add.w	r5, r5, #2048	; 0x800
 8002066:	42a8      	cmp	r0, r5
 8002068:	d114      	bne.n	8002094 <TIM_OC2Init+0x6c>
 800206a:	bf00      	nop
 800206c:	bf00      	nop
 800206e:	bf00      	nop
 8002070:	bf00      	nop
 8002072:	89cd      	ldrh	r5, [r1, #14]
 8002074:	8a0e      	ldrh	r6, [r1, #16]
 8002076:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 800207a:	ea43 1305 	orr.w	r3, r3, r5, lsl #4
 800207e:	88cd      	ldrh	r5, [r1, #6]
 8002080:	f023 0340 	bic.w	r3, r3, #64	; 0x40
 8002084:	ea43 1305 	orr.w	r3, r3, r5, lsl #4
 8002088:	8a4d      	ldrh	r5, [r1, #18]
 800208a:	f422 6240 	bic.w	r2, r2, #3072	; 0xc00
 800208e:	4335      	orrs	r5, r6
 8002090:	ea42 0285 	orr.w	r2, r2, r5, lsl #2
 8002094:	6042      	str	r2, [r0, #4]
 8002096:	688a      	ldr	r2, [r1, #8]
 8002098:	6184      	str	r4, [r0, #24]
 800209a:	6382      	str	r2, [r0, #56]	; 0x38
 800209c:	6203      	str	r3, [r0, #32]
 800209e:	bd70      	pop	{r4, r5, r6, pc}
 80020a0:	40012c00 	.word	0x40012c00

080020a4 <TIM_CtrlPWMOutputs>:
 80020a4:	bf00      	nop
 80020a6:	bf00      	nop
 80020a8:	6c43      	ldr	r3, [r0, #68]	; 0x44
 80020aa:	b111      	cbz	r1, 80020b2 <TIM_CtrlPWMOutputs+0xe>
 80020ac:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
 80020b0:	e001      	b.n	80020b6 <TIM_CtrlPWMOutputs+0x12>
 80020b2:	f3c3 030e 	ubfx	r3, r3, #0, #15
 80020b6:	6443      	str	r3, [r0, #68]	; 0x44
 80020b8:	4770      	bx	lr

080020ba <TIM_ClearITPendingBit>:
 80020ba:	bf00      	nop
 80020bc:	43c9      	mvns	r1, r1
 80020be:	b289      	uxth	r1, r1
 80020c0:	6101      	str	r1, [r0, #16]
 80020c2:	4770      	bx	lr

080020c4 <timer_init>:
 80020c4:	b530      	push	{r4, r5, lr}
 80020c6:	2300      	movs	r3, #0
 80020c8:	b085      	sub	sp, #20
 80020ca:	491f      	ldr	r1, [pc, #124]	; (8002148 <timer_init+0x84>)
 80020cc:	f44f 6280 	mov.w	r2, #1024	; 0x400
 80020d0:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 80020d4:	491d      	ldr	r1, [pc, #116]	; (800214c <timer_init+0x88>)
 80020d6:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 80020da:	4a1d      	ldr	r2, [pc, #116]	; (8002150 <timer_init+0x8c>)
 80020dc:	2400      	movs	r4, #0
 80020de:	f822 4013 	strh.w	r4, [r2, r3, lsl #1]
 80020e2:	3301      	adds	r3, #1
 80020e4:	2b04      	cmp	r3, #4
 80020e6:	4625      	mov	r5, r4
 80020e8:	d1ef      	bne.n	80020ca <timer_init+0x6>
 80020ea:	4b1a      	ldr	r3, [pc, #104]	; (8002154 <timer_init+0x90>)
 80020ec:	2002      	movs	r0, #2
 80020ee:	2101      	movs	r1, #1
 80020f0:	601c      	str	r4, [r3, #0]
 80020f2:	f7ff fee7 	bl	8001ec4 <RCC_APB1PeriphClockCmd>
 80020f6:	f8ad 4006 	strh.w	r4, [sp, #6]
 80020fa:	f8ad 400c 	strh.w	r4, [sp, #12]
 80020fe:	f8ad 400e 	strh.w	r4, [sp, #14]
 8002102:	4c15      	ldr	r4, [pc, #84]	; (8002158 <timer_init+0x94>)
 8002104:	f44f 738c 	mov.w	r3, #280	; 0x118
 8002108:	f8ad 3004 	strh.w	r3, [sp, #4]
 800210c:	4620      	mov	r0, r4
 800210e:	2331      	movs	r3, #49	; 0x31
 8002110:	a901      	add	r1, sp, #4
 8002112:	9302      	str	r3, [sp, #8]
 8002114:	f7ff fee4 	bl	8001ee0 <TIM_TimeBaseInit>
 8002118:	4620      	mov	r0, r4
 800211a:	2101      	movs	r1, #1
 800211c:	f7ff ff30 	bl	8001f80 <TIM_Cmd>
 8002120:	68e3      	ldr	r3, [r4, #12]
 8002122:	f043 0301 	orr.w	r3, r3, #1
 8002126:	60e3      	str	r3, [r4, #12]
 8002128:	231d      	movs	r3, #29
 800212a:	f88d 3000 	strb.w	r3, [sp]
 800212e:	4668      	mov	r0, sp
 8002130:	2301      	movs	r3, #1
 8002132:	f88d 5001 	strb.w	r5, [sp, #1]
 8002136:	f88d 3002 	strb.w	r3, [sp, #2]
 800213a:	f88d 3003 	strb.w	r3, [sp, #3]
 800213e:	f000 fc69 	bl	8002a14 <NVIC_Init>
 8002142:	b005      	add	sp, #20
 8002144:	bd30      	pop	{r4, r5, pc}
 8002146:	bf00      	nop
 8002148:	200011dc 	.word	0x200011dc
 800214c:	200011d0 	.word	0x200011d0
 8002150:	200011c8 	.word	0x200011c8
 8002154:	200011d8 	.word	0x200011d8
 8002158:	40000400 	.word	0x40000400

0800215c <TIM3_IRQHandler>:
 800215c:	2300      	movs	r3, #0
 800215e:	4a10      	ldr	r2, [pc, #64]	; (80021a0 <TIM3_IRQHandler+0x44>)
 8002160:	f832 1013 	ldrh.w	r1, [r2, r3, lsl #1]
 8002164:	b289      	uxth	r1, r1
 8002166:	b129      	cbz	r1, 8002174 <TIM3_IRQHandler+0x18>
 8002168:	f832 1013 	ldrh.w	r1, [r2, r3, lsl #1]
 800216c:	b289      	uxth	r1, r1
 800216e:	3901      	subs	r1, #1
 8002170:	b289      	uxth	r1, r1
 8002172:	e007      	b.n	8002184 <TIM3_IRQHandler+0x28>
 8002174:	490b      	ldr	r1, [pc, #44]	; (80021a4 <TIM3_IRQHandler+0x48>)
 8002176:	f831 1013 	ldrh.w	r1, [r1, r3, lsl #1]
 800217a:	b289      	uxth	r1, r1
 800217c:	f822 1013 	strh.w	r1, [r2, r3, lsl #1]
 8002180:	4a09      	ldr	r2, [pc, #36]	; (80021a8 <TIM3_IRQHandler+0x4c>)
 8002182:	2101      	movs	r1, #1
 8002184:	f822 1013 	strh.w	r1, [r2, r3, lsl #1]
 8002188:	3301      	adds	r3, #1
 800218a:	2b04      	cmp	r3, #4
 800218c:	d1e7      	bne.n	800215e <TIM3_IRQHandler+0x2>
 800218e:	4b07      	ldr	r3, [pc, #28]	; (80021ac <TIM3_IRQHandler+0x50>)
 8002190:	4807      	ldr	r0, [pc, #28]	; (80021b0 <TIM3_IRQHandler+0x54>)
 8002192:	681a      	ldr	r2, [r3, #0]
 8002194:	2101      	movs	r1, #1
 8002196:	3201      	adds	r2, #1
 8002198:	601a      	str	r2, [r3, #0]
 800219a:	f7ff bf8e 	b.w	80020ba <TIM_ClearITPendingBit>
 800219e:	bf00      	nop
 80021a0:	200011dc 	.word	0x200011dc
 80021a4:	200011d0 	.word	0x200011d0
 80021a8:	200011c8 	.word	0x200011c8
 80021ac:	200011d8 	.word	0x200011d8
 80021b0:	40000400 	.word	0x40000400

080021b4 <timer_get_time>:
 80021b4:	b082      	sub	sp, #8
 80021b6:	b672      	cpsid	i
 80021b8:	4b04      	ldr	r3, [pc, #16]	; (80021cc <timer_get_time+0x18>)
 80021ba:	681b      	ldr	r3, [r3, #0]
 80021bc:	9301      	str	r3, [sp, #4]
 80021be:	b662      	cpsie	i
 80021c0:	9801      	ldr	r0, [sp, #4]
 80021c2:	230a      	movs	r3, #10
 80021c4:	fbb0 f0f3 	udiv	r0, r0, r3
 80021c8:	b002      	add	sp, #8
 80021ca:	4770      	bx	lr
 80021cc:	200011d8 	.word	0x200011d8

080021d0 <timer_delay_ms>:
 80021d0:	b513      	push	{r0, r1, r4, lr}
 80021d2:	4604      	mov	r4, r0
 80021d4:	f7ff ffee 	bl	80021b4 <timer_get_time>
 80021d8:	4420      	add	r0, r4
 80021da:	9001      	str	r0, [sp, #4]
 80021dc:	9c01      	ldr	r4, [sp, #4]
 80021de:	f7ff ffe9 	bl	80021b4 <timer_get_time>
 80021e2:	4284      	cmp	r4, r0
 80021e4:	d902      	bls.n	80021ec <timer_delay_ms+0x1c>
 80021e6:	f000 fb17 	bl	8002818 <sleep>
 80021ea:	e7f7      	b.n	80021dc <timer_delay_ms+0xc>
 80021ec:	b002      	add	sp, #8
 80021ee:	bd10      	pop	{r4, pc}

080021f0 <event_timer_set_period>:
 80021f0:	b672      	cpsid	i
 80021f2:	230a      	movs	r3, #10
 80021f4:	4359      	muls	r1, r3
 80021f6:	4b06      	ldr	r3, [pc, #24]	; (8002210 <event_timer_set_period+0x20>)
 80021f8:	b289      	uxth	r1, r1
 80021fa:	f823 1010 	strh.w	r1, [r3, r0, lsl #1]
 80021fe:	4b05      	ldr	r3, [pc, #20]	; (8002214 <event_timer_set_period+0x24>)
 8002200:	f823 1010 	strh.w	r1, [r3, r0, lsl #1]
 8002204:	4b04      	ldr	r3, [pc, #16]	; (8002218 <event_timer_set_period+0x28>)
 8002206:	2200      	movs	r2, #0
 8002208:	f823 2010 	strh.w	r2, [r3, r0, lsl #1]
 800220c:	b662      	cpsie	i
 800220e:	4770      	bx	lr
 8002210:	200011dc 	.word	0x200011dc
 8002214:	200011d0 	.word	0x200011d0
 8002218:	200011c8 	.word	0x200011c8

0800221c <event_timer_wait>:
 800221c:	b510      	push	{r4, lr}
 800221e:	4604      	mov	r4, r0
 8002220:	4b06      	ldr	r3, [pc, #24]	; (800223c <event_timer_wait+0x20>)
 8002222:	f833 2014 	ldrh.w	r2, [r3, r4, lsl #1]
 8002226:	b292      	uxth	r2, r2
 8002228:	b912      	cbnz	r2, 8002230 <event_timer_wait+0x14>
 800222a:	f000 faf5 	bl	8002818 <sleep>
 800222e:	e7f7      	b.n	8002220 <event_timer_wait+0x4>
 8002230:	b672      	cpsid	i
 8002232:	2200      	movs	r2, #0
 8002234:	f823 2014 	strh.w	r2, [r3, r4, lsl #1]
 8002238:	b662      	cpsie	i
 800223a:	bd10      	pop	{r4, pc}
 800223c:	200011c8 	.word	0x200011c8

08002240 <USART_Init>:
 8002240:	b530      	push	{r4, r5, lr}
 8002242:	4604      	mov	r4, r0
 8002244:	b099      	sub	sp, #100	; 0x64
 8002246:	460d      	mov	r5, r1
 8002248:	bf00      	nop
 800224a:	bf00      	nop
 800224c:	bf00      	nop
 800224e:	bf00      	nop
 8002250:	bf00      	nop
 8002252:	bf00      	nop
 8002254:	bf00      	nop
 8002256:	6803      	ldr	r3, [r0, #0]
 8002258:	f023 0301 	bic.w	r3, r3, #1
 800225c:	6003      	str	r3, [r0, #0]
 800225e:	6842      	ldr	r2, [r0, #4]
 8002260:	688b      	ldr	r3, [r1, #8]
 8002262:	f422 5240 	bic.w	r2, r2, #12288	; 0x3000
 8002266:	4313      	orrs	r3, r2
 8002268:	6043      	str	r3, [r0, #4]
 800226a:	686a      	ldr	r2, [r5, #4]
 800226c:	68eb      	ldr	r3, [r5, #12]
 800226e:	6801      	ldr	r1, [r0, #0]
 8002270:	431a      	orrs	r2, r3
 8002272:	692b      	ldr	r3, [r5, #16]
 8002274:	f421 51b0 	bic.w	r1, r1, #5632	; 0x1600
 8002278:	f021 010c 	bic.w	r1, r1, #12
 800227c:	4313      	orrs	r3, r2
 800227e:	430b      	orrs	r3, r1
 8002280:	6003      	str	r3, [r0, #0]
 8002282:	6882      	ldr	r2, [r0, #8]
 8002284:	696b      	ldr	r3, [r5, #20]
 8002286:	f422 7240 	bic.w	r2, r2, #768	; 0x300
 800228a:	4313      	orrs	r3, r2
 800228c:	6083      	str	r3, [r0, #8]
 800228e:	a801      	add	r0, sp, #4
 8002290:	f7ff fc70 	bl	8001b74 <RCC_GetClocksFreq>
 8002294:	4b17      	ldr	r3, [pc, #92]	; (80022f4 <USART_Init+0xb4>)
 8002296:	429c      	cmp	r4, r3
 8002298:	d101      	bne.n	800229e <USART_Init+0x5e>
 800229a:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 800229c:	e00e      	b.n	80022bc <USART_Init+0x7c>
 800229e:	4b16      	ldr	r3, [pc, #88]	; (80022f8 <USART_Init+0xb8>)
 80022a0:	429c      	cmp	r4, r3
 80022a2:	d101      	bne.n	80022a8 <USART_Init+0x68>
 80022a4:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80022a6:	e009      	b.n	80022bc <USART_Init+0x7c>
 80022a8:	4b14      	ldr	r3, [pc, #80]	; (80022fc <USART_Init+0xbc>)
 80022aa:	429c      	cmp	r4, r3
 80022ac:	d101      	bne.n	80022b2 <USART_Init+0x72>
 80022ae:	9a11      	ldr	r2, [sp, #68]	; 0x44
 80022b0:	e004      	b.n	80022bc <USART_Init+0x7c>
 80022b2:	4b13      	ldr	r3, [pc, #76]	; (8002300 <USART_Init+0xc0>)
 80022b4:	429c      	cmp	r4, r3
 80022b6:	bf0c      	ite	eq
 80022b8:	9a12      	ldreq	r2, [sp, #72]	; 0x48
 80022ba:	9a13      	ldrne	r2, [sp, #76]	; 0x4c
 80022bc:	6823      	ldr	r3, [r4, #0]
 80022be:	6829      	ldr	r1, [r5, #0]
 80022c0:	f413 4f00 	tst.w	r3, #32768	; 0x8000
 80022c4:	bf18      	it	ne
 80022c6:	0052      	lslne	r2, r2, #1
 80022c8:	fbb2 f3f1 	udiv	r3, r2, r1
 80022cc:	fb01 2213 	mls	r2, r1, r3, r2
 80022d0:	ebb2 0f51 	cmp.w	r2, r1, lsr #1
 80022d4:	6822      	ldr	r2, [r4, #0]
 80022d6:	bf28      	it	cs
 80022d8:	3301      	addcs	r3, #1
 80022da:	0412      	lsls	r2, r2, #16
 80022dc:	d506      	bpl.n	80022ec <USART_Init+0xac>
 80022de:	f64f 72f0 	movw	r2, #65520	; 0xfff0
 80022e2:	f3c3 0142 	ubfx	r1, r3, #1, #3
 80022e6:	401a      	ands	r2, r3
 80022e8:	ea41 0302 	orr.w	r3, r1, r2
 80022ec:	b29b      	uxth	r3, r3
 80022ee:	81a3      	strh	r3, [r4, #12]
 80022f0:	b019      	add	sp, #100	; 0x64
 80022f2:	bd30      	pop	{r4, r5, pc}
 80022f4:	40013800 	.word	0x40013800
 80022f8:	40004400 	.word	0x40004400
 80022fc:	40004800 	.word	0x40004800
 8002300:	40004c00 	.word	0x40004c00

08002304 <USART_Cmd>:
 8002304:	bf00      	nop
 8002306:	bf00      	nop
 8002308:	6803      	ldr	r3, [r0, #0]
 800230a:	b111      	cbz	r1, 8002312 <USART_Cmd+0xe>
 800230c:	f043 0301 	orr.w	r3, r3, #1
 8002310:	e001      	b.n	8002316 <USART_Cmd+0x12>
 8002312:	f023 0301 	bic.w	r3, r3, #1
 8002316:	6003      	str	r3, [r0, #0]
 8002318:	4770      	bx	lr

0800231a <USART_ReceiveData>:
 800231a:	bf00      	nop
 800231c:	8c80      	ldrh	r0, [r0, #36]	; 0x24
 800231e:	f3c0 0008 	ubfx	r0, r0, #0, #9
 8002322:	4770      	bx	lr

08002324 <USART_ITConfig>:
 8002324:	b510      	push	{r4, lr}
 8002326:	bf00      	nop
 8002328:	bf00      	nop
 800232a:	bf00      	nop
 800232c:	f3c1 2307 	ubfx	r3, r1, #8, #8
 8002330:	2401      	movs	r4, #1
 8002332:	b2c9      	uxtb	r1, r1
 8002334:	2b02      	cmp	r3, #2
 8002336:	fa04 f101 	lsl.w	r1, r4, r1
 800233a:	d101      	bne.n	8002340 <USART_ITConfig+0x1c>
 800233c:	3004      	adds	r0, #4
 800233e:	e002      	b.n	8002346 <USART_ITConfig+0x22>
 8002340:	2b03      	cmp	r3, #3
 8002342:	bf08      	it	eq
 8002344:	3008      	addeq	r0, #8
 8002346:	6803      	ldr	r3, [r0, #0]
 8002348:	b10a      	cbz	r2, 800234e <USART_ITConfig+0x2a>
 800234a:	4319      	orrs	r1, r3
 800234c:	e001      	b.n	8002352 <USART_ITConfig+0x2e>
 800234e:	ea23 0101 	bic.w	r1, r3, r1
 8002352:	6001      	str	r1, [r0, #0]
 8002354:	bd10      	pop	{r4, pc}

08002356 <USART_GetITStatus>:
 8002356:	b510      	push	{r4, lr}
 8002358:	bf00      	nop
 800235a:	bf00      	nop
 800235c:	2401      	movs	r4, #1
 800235e:	f3c1 2207 	ubfx	r2, r1, #8, #8
 8002362:	b2cb      	uxtb	r3, r1
 8002364:	42a2      	cmp	r2, r4
 8002366:	fa04 f303 	lsl.w	r3, r4, r3
 800236a:	d101      	bne.n	8002370 <USART_GetITStatus+0x1a>
 800236c:	6802      	ldr	r2, [r0, #0]
 800236e:	e003      	b.n	8002378 <USART_GetITStatus+0x22>
 8002370:	2a02      	cmp	r2, #2
 8002372:	bf0c      	ite	eq
 8002374:	6842      	ldreq	r2, [r0, #4]
 8002376:	6882      	ldrne	r2, [r0, #8]
 8002378:	4013      	ands	r3, r2
 800237a:	69c2      	ldr	r2, [r0, #28]
 800237c:	b143      	cbz	r3, 8002390 <USART_GetITStatus+0x3a>
 800237e:	2301      	movs	r3, #1
 8002380:	0c09      	lsrs	r1, r1, #16
 8002382:	fa03 f101 	lsl.w	r1, r3, r1
 8002386:	4211      	tst	r1, r2
 8002388:	bf0c      	ite	eq
 800238a:	2000      	moveq	r0, #0
 800238c:	2001      	movne	r0, #1
 800238e:	bd10      	pop	{r4, pc}
 8002390:	4618      	mov	r0, r3
 8002392:	bd10      	pop	{r4, pc}

08002394 <USART_ClearITPendingBit>:
 8002394:	bf00      	nop
 8002396:	bf00      	nop
 8002398:	2301      	movs	r3, #1
 800239a:	0c09      	lsrs	r1, r1, #16
 800239c:	fa03 f101 	lsl.w	r1, r3, r1
 80023a0:	6201      	str	r1, [r0, #32]
 80023a2:	4770      	bx	lr

080023a4 <uart_write>:
 80023a4:	4b03      	ldr	r3, [pc, #12]	; (80023b4 <uart_write+0x10>)
 80023a6:	69da      	ldr	r2, [r3, #28]
 80023a8:	0612      	lsls	r2, r2, #24
 80023aa:	d401      	bmi.n	80023b0 <uart_write+0xc>
 80023ac:	bf00      	nop
 80023ae:	e7f9      	b.n	80023a4 <uart_write>
 80023b0:	8518      	strh	r0, [r3, #40]	; 0x28
 80023b2:	4770      	bx	lr
 80023b4:	40013800 	.word	0x40013800

080023b8 <uart_init>:
 80023b8:	b530      	push	{r4, r5, lr}
 80023ba:	4b2c      	ldr	r3, [pc, #176]	; (800246c <uart_init+0xb4>)
 80023bc:	4d2c      	ldr	r5, [pc, #176]	; (8002470 <uart_init+0xb8>)
 80023be:	2400      	movs	r4, #0
 80023c0:	601c      	str	r4, [r3, #0]
 80023c2:	4b2c      	ldr	r3, [pc, #176]	; (8002474 <uart_init+0xbc>)
 80023c4:	b08b      	sub	sp, #44	; 0x2c
 80023c6:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 80023ca:	2101      	movs	r1, #1
 80023cc:	601c      	str	r4, [r3, #0]
 80023ce:	f7ff fd5d 	bl	8001e8c <RCC_AHBPeriphClockCmd>
 80023d2:	f44f 4080 	mov.w	r0, #16384	; 0x4000
 80023d6:	2101      	movs	r1, #1
 80023d8:	f7ff fd66 	bl	8001ea8 <RCC_APB2PeriphClockCmd>
 80023dc:	f44f 63c0 	mov.w	r3, #1536	; 0x600
 80023e0:	9302      	str	r3, [sp, #8]
 80023e2:	2302      	movs	r3, #2
 80023e4:	f88d 300c 	strb.w	r3, [sp, #12]
 80023e8:	a902      	add	r1, sp, #8
 80023ea:	2303      	movs	r3, #3
 80023ec:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80023f0:	f88d 300d 	strb.w	r3, [sp, #13]
 80023f4:	f88d 400e 	strb.w	r4, [sp, #14]
 80023f8:	f88d 400f 	strb.w	r4, [sp, #15]
 80023fc:	f000 fb53 	bl	8002aa6 <GPIO_Init>
 8002400:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8002404:	2109      	movs	r1, #9
 8002406:	2207      	movs	r2, #7
 8002408:	f000 fb9b 	bl	8002b42 <GPIO_PinAFConfig>
 800240c:	2207      	movs	r2, #7
 800240e:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8002412:	210a      	movs	r1, #10
 8002414:	f000 fb95 	bl	8002b42 <GPIO_PinAFConfig>
 8002418:	f44f 33e1 	mov.w	r3, #115200	; 0x1c200
 800241c:	9304      	str	r3, [sp, #16]
 800241e:	4628      	mov	r0, r5
 8002420:	230c      	movs	r3, #12
 8002422:	a904      	add	r1, sp, #16
 8002424:	9308      	str	r3, [sp, #32]
 8002426:	9405      	str	r4, [sp, #20]
 8002428:	9406      	str	r4, [sp, #24]
 800242a:	9407      	str	r4, [sp, #28]
 800242c:	9409      	str	r4, [sp, #36]	; 0x24
 800242e:	f7ff ff07 	bl	8002240 <USART_Init>
 8002432:	4628      	mov	r0, r5
 8002434:	2101      	movs	r1, #1
 8002436:	f7ff ff65 	bl	8002304 <USART_Cmd>
 800243a:	2201      	movs	r2, #1
 800243c:	4628      	mov	r0, r5
 800243e:	490e      	ldr	r1, [pc, #56]	; (8002478 <uart_init+0xc0>)
 8002440:	f7ff ff70 	bl	8002324 <USART_ITConfig>
 8002444:	2325      	movs	r3, #37	; 0x25
 8002446:	f88d 4005 	strb.w	r4, [sp, #5]
 800244a:	f88d 4006 	strb.w	r4, [sp, #6]
 800244e:	a801      	add	r0, sp, #4
 8002450:	2401      	movs	r4, #1
 8002452:	f88d 3004 	strb.w	r3, [sp, #4]
 8002456:	f88d 4007 	strb.w	r4, [sp, #7]
 800245a:	f000 fadb 	bl	8002a14 <NVIC_Init>
 800245e:	4628      	mov	r0, r5
 8002460:	4621      	mov	r1, r4
 8002462:	f7ff ff4f 	bl	8002304 <USART_Cmd>
 8002466:	b00b      	add	sp, #44	; 0x2c
 8002468:	bd30      	pop	{r4, r5, pc}
 800246a:	bf00      	nop
 800246c:	200011f4 	.word	0x200011f4
 8002470:	40013800 	.word	0x40013800
 8002474:	200011f8 	.word	0x200011f8
 8002478:	00050105 	.word	0x00050105

0800247c <USART1_IRQHandler>:
 800247c:	b508      	push	{r3, lr}
 800247e:	480d      	ldr	r0, [pc, #52]	; (80024b4 <USART1_IRQHandler+0x38>)
 8002480:	490d      	ldr	r1, [pc, #52]	; (80024b8 <USART1_IRQHandler+0x3c>)
 8002482:	f7ff ff68 	bl	8002356 <USART_GetITStatus>
 8002486:	b178      	cbz	r0, 80024a8 <USART1_IRQHandler+0x2c>
 8002488:	480a      	ldr	r0, [pc, #40]	; (80024b4 <USART1_IRQHandler+0x38>)
 800248a:	f7ff ff46 	bl	800231a <USART_ReceiveData>
 800248e:	4b0b      	ldr	r3, [pc, #44]	; (80024bc <USART1_IRQHandler+0x40>)
 8002490:	490b      	ldr	r1, [pc, #44]	; (80024c0 <USART1_IRQHandler+0x44>)
 8002492:	681a      	ldr	r2, [r3, #0]
 8002494:	b2c0      	uxtb	r0, r0
 8002496:	5488      	strb	r0, [r1, r2]
 8002498:	681a      	ldr	r2, [r3, #0]
 800249a:	3201      	adds	r2, #1
 800249c:	601a      	str	r2, [r3, #0]
 800249e:	681a      	ldr	r2, [r3, #0]
 80024a0:	2a0f      	cmp	r2, #15
 80024a2:	bf84      	itt	hi
 80024a4:	2200      	movhi	r2, #0
 80024a6:	601a      	strhi	r2, [r3, #0]
 80024a8:	4802      	ldr	r0, [pc, #8]	; (80024b4 <USART1_IRQHandler+0x38>)
 80024aa:	4903      	ldr	r1, [pc, #12]	; (80024b8 <USART1_IRQHandler+0x3c>)
 80024ac:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80024b0:	f7ff bf70 	b.w	8002394 <USART_ClearITPendingBit>
 80024b4:	40013800 	.word	0x40013800
 80024b8:	00050105 	.word	0x00050105
 80024bc:	200011f4 	.word	0x200011f4
 80024c0:	200011e4 	.word	0x200011e4

080024c4 <i2c_delay>:
 80024c4:	230b      	movs	r3, #11
 80024c6:	3b01      	subs	r3, #1
 80024c8:	d001      	beq.n	80024ce <i2c_delay+0xa>
 80024ca:	bf00      	nop
 80024cc:	e7fb      	b.n	80024c6 <i2c_delay+0x2>
 80024ce:	4770      	bx	lr

080024d0 <SetLowSDA>:
 80024d0:	b537      	push	{r0, r1, r2, r4, r5, lr}
 80024d2:	4d0d      	ldr	r5, [pc, #52]	; (8002508 <SetLowSDA+0x38>)
 80024d4:	2301      	movs	r3, #1
 80024d6:	2203      	movs	r2, #3
 80024d8:	2480      	movs	r4, #128	; 0x80
 80024da:	f88d 3004 	strb.w	r3, [sp, #4]
 80024de:	f88d 3006 	strb.w	r3, [sp, #6]
 80024e2:	4628      	mov	r0, r5
 80024e4:	2300      	movs	r3, #0
 80024e6:	4669      	mov	r1, sp
 80024e8:	f88d 2005 	strb.w	r2, [sp, #5]
 80024ec:	f88d 3007 	strb.w	r3, [sp, #7]
 80024f0:	9400      	str	r4, [sp, #0]
 80024f2:	f000 fad8 	bl	8002aa6 <GPIO_Init>
 80024f6:	4628      	mov	r0, r5
 80024f8:	4621      	mov	r1, r4
 80024fa:	f000 fb1e 	bl	8002b3a <GPIO_ResetBits>
 80024fe:	f7ff ffe1 	bl	80024c4 <i2c_delay>
 8002502:	b003      	add	sp, #12
 8002504:	bd30      	pop	{r4, r5, pc}
 8002506:	bf00      	nop
 8002508:	48000400 	.word	0x48000400

0800250c <SetHighSDA>:
 800250c:	b537      	push	{r0, r1, r2, r4, r5, lr}
 800250e:	4d0d      	ldr	r5, [pc, #52]	; (8002544 <SetHighSDA+0x38>)
 8002510:	2203      	movs	r2, #3
 8002512:	2300      	movs	r3, #0
 8002514:	2480      	movs	r4, #128	; 0x80
 8002516:	f88d 2005 	strb.w	r2, [sp, #5]
 800251a:	4628      	mov	r0, r5
 800251c:	2201      	movs	r2, #1
 800251e:	4669      	mov	r1, sp
 8002520:	f88d 3004 	strb.w	r3, [sp, #4]
 8002524:	f88d 2006 	strb.w	r2, [sp, #6]
 8002528:	f88d 3007 	strb.w	r3, [sp, #7]
 800252c:	9400      	str	r4, [sp, #0]
 800252e:	f000 faba 	bl	8002aa6 <GPIO_Init>
 8002532:	4628      	mov	r0, r5
 8002534:	4621      	mov	r1, r4
 8002536:	f000 fafc 	bl	8002b32 <GPIO_SetBits>
 800253a:	f7ff ffc3 	bl	80024c4 <i2c_delay>
 800253e:	b003      	add	sp, #12
 8002540:	bd30      	pop	{r4, r5, pc}
 8002542:	bf00      	nop
 8002544:	48000400 	.word	0x48000400

08002548 <SetLowSCL>:
 8002548:	b508      	push	{r3, lr}
 800254a:	4804      	ldr	r0, [pc, #16]	; (800255c <SetLowSCL+0x14>)
 800254c:	2140      	movs	r1, #64	; 0x40
 800254e:	f000 faf4 	bl	8002b3a <GPIO_ResetBits>
 8002552:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8002556:	f7ff bfb5 	b.w	80024c4 <i2c_delay>
 800255a:	bf00      	nop
 800255c:	48000400 	.word	0x48000400

08002560 <SetHighSCL>:
 8002560:	b508      	push	{r3, lr}
 8002562:	4804      	ldr	r0, [pc, #16]	; (8002574 <SetHighSCL+0x14>)
 8002564:	2140      	movs	r1, #64	; 0x40
 8002566:	f000 fae4 	bl	8002b32 <GPIO_SetBits>
 800256a:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800256e:	f7ff bfa9 	b.w	80024c4 <i2c_delay>
 8002572:	bf00      	nop
 8002574:	48000400 	.word	0x48000400

08002578 <i2c_0_init>:
 8002578:	b507      	push	{r0, r1, r2, lr}
 800257a:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 800257e:	2101      	movs	r1, #1
 8002580:	f7ff fc84 	bl	8001e8c <RCC_AHBPeriphClockCmd>
 8002584:	23c0      	movs	r3, #192	; 0xc0
 8002586:	9300      	str	r3, [sp, #0]
 8002588:	2301      	movs	r3, #1
 800258a:	2203      	movs	r2, #3
 800258c:	480a      	ldr	r0, [pc, #40]	; (80025b8 <i2c_0_init+0x40>)
 800258e:	f88d 3004 	strb.w	r3, [sp, #4]
 8002592:	4669      	mov	r1, sp
 8002594:	f88d 3006 	strb.w	r3, [sp, #6]
 8002598:	2300      	movs	r3, #0
 800259a:	f88d 2005 	strb.w	r2, [sp, #5]
 800259e:	f88d 3007 	strb.w	r3, [sp, #7]
 80025a2:	f000 fa80 	bl	8002aa6 <GPIO_Init>
 80025a6:	f7ff ffdb 	bl	8002560 <SetHighSCL>
 80025aa:	f7ff ff91 	bl	80024d0 <SetLowSDA>
 80025ae:	f7ff ffad 	bl	800250c <SetHighSDA>
 80025b2:	b003      	add	sp, #12
 80025b4:	f85d fb04 	ldr.w	pc, [sp], #4
 80025b8:	48000400 	.word	0x48000400

080025bc <i2cStart>:
 80025bc:	b508      	push	{r3, lr}
 80025be:	f7ff ffcf 	bl	8002560 <SetHighSCL>
 80025c2:	f7ff ffa3 	bl	800250c <SetHighSDA>
 80025c6:	f7ff ffcb 	bl	8002560 <SetHighSCL>
 80025ca:	f7ff ff81 	bl	80024d0 <SetLowSDA>
 80025ce:	f7ff ffbb 	bl	8002548 <SetLowSCL>
 80025d2:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80025d6:	f7ff bf99 	b.w	800250c <SetHighSDA>

080025da <i2cStop>:
 80025da:	b508      	push	{r3, lr}
 80025dc:	f7ff ffb4 	bl	8002548 <SetLowSCL>
 80025e0:	f7ff ff76 	bl	80024d0 <SetLowSDA>
 80025e4:	f7ff ffbc 	bl	8002560 <SetHighSCL>
 80025e8:	f7ff ff72 	bl	80024d0 <SetLowSDA>
 80025ec:	f7ff ffb8 	bl	8002560 <SetHighSCL>
 80025f0:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80025f4:	f7ff bf8a 	b.w	800250c <SetHighSDA>

080025f8 <i2cWrite>:
 80025f8:	b538      	push	{r3, r4, r5, lr}
 80025fa:	4604      	mov	r4, r0
 80025fc:	2508      	movs	r5, #8
 80025fe:	f7ff ffa3 	bl	8002548 <SetLowSCL>
 8002602:	0623      	lsls	r3, r4, #24
 8002604:	d502      	bpl.n	800260c <i2cWrite+0x14>
 8002606:	f7ff ff81 	bl	800250c <SetHighSDA>
 800260a:	e001      	b.n	8002610 <i2cWrite+0x18>
 800260c:	f7ff ff60 	bl	80024d0 <SetLowSDA>
 8002610:	3d01      	subs	r5, #1
 8002612:	f7ff ffa5 	bl	8002560 <SetHighSCL>
 8002616:	0064      	lsls	r4, r4, #1
 8002618:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 800261c:	b2e4      	uxtb	r4, r4
 800261e:	d1ee      	bne.n	80025fe <i2cWrite+0x6>
 8002620:	f7ff ff92 	bl	8002548 <SetLowSCL>
 8002624:	f7ff ff72 	bl	800250c <SetHighSDA>
 8002628:	f7ff ff9a 	bl	8002560 <SetHighSCL>
 800262c:	4b05      	ldr	r3, [pc, #20]	; (8002644 <i2cWrite+0x4c>)
 800262e:	8a1c      	ldrh	r4, [r3, #16]
 8002630:	b2a4      	uxth	r4, r4
 8002632:	f7ff ff89 	bl	8002548 <SetLowSCL>
 8002636:	f7ff ff45 	bl	80024c4 <i2c_delay>
 800263a:	f084 0080 	eor.w	r0, r4, #128	; 0x80
 800263e:	f3c0 10c0 	ubfx	r0, r0, #7, #1
 8002642:	bd38      	pop	{r3, r4, r5, pc}
 8002644:	48000400 	.word	0x48000400

08002648 <i2cRead>:
 8002648:	b570      	push	{r4, r5, r6, lr}
 800264a:	4606      	mov	r6, r0
 800264c:	f7ff ff7c 	bl	8002548 <SetLowSCL>
 8002650:	f7ff ff5c 	bl	800250c <SetHighSDA>
 8002654:	2508      	movs	r5, #8
 8002656:	2400      	movs	r4, #0
 8002658:	f7ff ff82 	bl	8002560 <SetHighSCL>
 800265c:	4b0d      	ldr	r3, [pc, #52]	; (8002694 <i2cRead+0x4c>)
 800265e:	8a1b      	ldrh	r3, [r3, #16]
 8002660:	0064      	lsls	r4, r4, #1
 8002662:	061a      	lsls	r2, r3, #24
 8002664:	b2e4      	uxtb	r4, r4
 8002666:	bf48      	it	mi
 8002668:	3401      	addmi	r4, #1
 800266a:	f105 35ff 	add.w	r5, r5, #4294967295
 800266e:	bf48      	it	mi
 8002670:	b2e4      	uxtbmi	r4, r4
 8002672:	f7ff ff69 	bl	8002548 <SetLowSCL>
 8002676:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 800267a:	d1ed      	bne.n	8002658 <i2cRead+0x10>
 800267c:	b10e      	cbz	r6, 8002682 <i2cRead+0x3a>
 800267e:	f7ff ff27 	bl	80024d0 <SetLowSDA>
 8002682:	f7ff ff6d 	bl	8002560 <SetHighSCL>
 8002686:	f7ff ff5f 	bl	8002548 <SetLowSCL>
 800268a:	f7ff ff1b 	bl	80024c4 <i2c_delay>
 800268e:	4620      	mov	r0, r4
 8002690:	bd70      	pop	{r4, r5, r6, pc}
 8002692:	bf00      	nop
 8002694:	48000400 	.word	0x48000400

08002698 <i2c_write_reg>:
 8002698:	b570      	push	{r4, r5, r6, lr}
 800269a:	4605      	mov	r5, r0
 800269c:	460c      	mov	r4, r1
 800269e:	4616      	mov	r6, r2
 80026a0:	f7ff ff8c 	bl	80025bc <i2cStart>
 80026a4:	4628      	mov	r0, r5
 80026a6:	f7ff ffa7 	bl	80025f8 <i2cWrite>
 80026aa:	4620      	mov	r0, r4
 80026ac:	f7ff ffa4 	bl	80025f8 <i2cWrite>
 80026b0:	4630      	mov	r0, r6
 80026b2:	f7ff ffa1 	bl	80025f8 <i2cWrite>
 80026b6:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 80026ba:	f7ff bf8e 	b.w	80025da <i2cStop>

080026be <i2c_read_reg>:
 80026be:	b538      	push	{r3, r4, r5, lr}
 80026c0:	4604      	mov	r4, r0
 80026c2:	460d      	mov	r5, r1
 80026c4:	f7ff ff7a 	bl	80025bc <i2cStart>
 80026c8:	4620      	mov	r0, r4
 80026ca:	f7ff ff95 	bl	80025f8 <i2cWrite>
 80026ce:	4628      	mov	r0, r5
 80026d0:	f7ff ff92 	bl	80025f8 <i2cWrite>
 80026d4:	f7ff ff72 	bl	80025bc <i2cStart>
 80026d8:	f044 0001 	orr.w	r0, r4, #1
 80026dc:	f7ff ff8c 	bl	80025f8 <i2cWrite>
 80026e0:	2000      	movs	r0, #0
 80026e2:	f7ff ffb1 	bl	8002648 <i2cRead>
 80026e6:	4604      	mov	r4, r0
 80026e8:	f7ff ff77 	bl	80025da <i2cStop>
 80026ec:	4620      	mov	r0, r4
 80026ee:	bd38      	pop	{r3, r4, r5, pc}

080026f0 <SystemInit>:
 80026f0:	4b3b      	ldr	r3, [pc, #236]	; (80027e0 <SystemInit+0xf0>)
 80026f2:	f8d3 2088 	ldr.w	r2, [r3, #136]	; 0x88
 80026f6:	f442 0270 	orr.w	r2, r2, #15728640	; 0xf00000
 80026fa:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
 80026fe:	4b39      	ldr	r3, [pc, #228]	; (80027e4 <SystemInit+0xf4>)
 8002700:	681a      	ldr	r2, [r3, #0]
 8002702:	f042 0201 	orr.w	r2, r2, #1
 8002706:	601a      	str	r2, [r3, #0]
 8002708:	6859      	ldr	r1, [r3, #4]
 800270a:	4a37      	ldr	r2, [pc, #220]	; (80027e8 <SystemInit+0xf8>)
 800270c:	400a      	ands	r2, r1
 800270e:	605a      	str	r2, [r3, #4]
 8002710:	681a      	ldr	r2, [r3, #0]
 8002712:	f022 7284 	bic.w	r2, r2, #17301504	; 0x1080000
 8002716:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
 800271a:	601a      	str	r2, [r3, #0]
 800271c:	681a      	ldr	r2, [r3, #0]
 800271e:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 8002722:	601a      	str	r2, [r3, #0]
 8002724:	685a      	ldr	r2, [r3, #4]
 8002726:	f422 02fe 	bic.w	r2, r2, #8323072	; 0x7f0000
 800272a:	605a      	str	r2, [r3, #4]
 800272c:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 800272e:	f022 020f 	bic.w	r2, r2, #15
 8002732:	62da      	str	r2, [r3, #44]	; 0x2c
 8002734:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8002736:	4a2d      	ldr	r2, [pc, #180]	; (80027ec <SystemInit+0xfc>)
 8002738:	b082      	sub	sp, #8
 800273a:	400a      	ands	r2, r1
 800273c:	631a      	str	r2, [r3, #48]	; 0x30
 800273e:	2200      	movs	r2, #0
 8002740:	609a      	str	r2, [r3, #8]
 8002742:	9200      	str	r2, [sp, #0]
 8002744:	9201      	str	r2, [sp, #4]
 8002746:	681a      	ldr	r2, [r3, #0]
 8002748:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
 800274c:	601a      	str	r2, [r3, #0]
 800274e:	4b25      	ldr	r3, [pc, #148]	; (80027e4 <SystemInit+0xf4>)
 8002750:	681a      	ldr	r2, [r3, #0]
 8002752:	f402 3200 	and.w	r2, r2, #131072	; 0x20000
 8002756:	9201      	str	r2, [sp, #4]
 8002758:	9a00      	ldr	r2, [sp, #0]
 800275a:	3201      	adds	r2, #1
 800275c:	9200      	str	r2, [sp, #0]
 800275e:	9a01      	ldr	r2, [sp, #4]
 8002760:	b91a      	cbnz	r2, 800276a <SystemInit+0x7a>
 8002762:	9a00      	ldr	r2, [sp, #0]
 8002764:	f5b2 4fa0 	cmp.w	r2, #20480	; 0x5000
 8002768:	d1f1      	bne.n	800274e <SystemInit+0x5e>
 800276a:	681b      	ldr	r3, [r3, #0]
 800276c:	f413 3300 	ands.w	r3, r3, #131072	; 0x20000
 8002770:	bf18      	it	ne
 8002772:	2301      	movne	r3, #1
 8002774:	9301      	str	r3, [sp, #4]
 8002776:	9b01      	ldr	r3, [sp, #4]
 8002778:	2b01      	cmp	r3, #1
 800277a:	d005      	beq.n	8002788 <SystemInit+0x98>
 800277c:	4b18      	ldr	r3, [pc, #96]	; (80027e0 <SystemInit+0xf0>)
 800277e:	f04f 6200 	mov.w	r2, #134217728	; 0x8000000
 8002782:	609a      	str	r2, [r3, #8]
 8002784:	b002      	add	sp, #8
 8002786:	4770      	bx	lr
 8002788:	4b19      	ldr	r3, [pc, #100]	; (80027f0 <SystemInit+0x100>)
 800278a:	2212      	movs	r2, #18
 800278c:	601a      	str	r2, [r3, #0]
 800278e:	f5a3 5380 	sub.w	r3, r3, #4096	; 0x1000
 8002792:	685a      	ldr	r2, [r3, #4]
 8002794:	605a      	str	r2, [r3, #4]
 8002796:	685a      	ldr	r2, [r3, #4]
 8002798:	605a      	str	r2, [r3, #4]
 800279a:	685a      	ldr	r2, [r3, #4]
 800279c:	f442 6280 	orr.w	r2, r2, #1024	; 0x400
 80027a0:	605a      	str	r2, [r3, #4]
 80027a2:	685a      	ldr	r2, [r3, #4]
 80027a4:	f422 127c 	bic.w	r2, r2, #4128768	; 0x3f0000
 80027a8:	605a      	str	r2, [r3, #4]
 80027aa:	685a      	ldr	r2, [r3, #4]
 80027ac:	f442 12e8 	orr.w	r2, r2, #1900544	; 0x1d0000
 80027b0:	605a      	str	r2, [r3, #4]
 80027b2:	681a      	ldr	r2, [r3, #0]
 80027b4:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
 80027b8:	601a      	str	r2, [r3, #0]
 80027ba:	6819      	ldr	r1, [r3, #0]
 80027bc:	4a09      	ldr	r2, [pc, #36]	; (80027e4 <SystemInit+0xf4>)
 80027be:	0189      	lsls	r1, r1, #6
 80027c0:	d5fb      	bpl.n	80027ba <SystemInit+0xca>
 80027c2:	6853      	ldr	r3, [r2, #4]
 80027c4:	f023 0303 	bic.w	r3, r3, #3
 80027c8:	6053      	str	r3, [r2, #4]
 80027ca:	6853      	ldr	r3, [r2, #4]
 80027cc:	f043 0302 	orr.w	r3, r3, #2
 80027d0:	6053      	str	r3, [r2, #4]
 80027d2:	4b04      	ldr	r3, [pc, #16]	; (80027e4 <SystemInit+0xf4>)
 80027d4:	685b      	ldr	r3, [r3, #4]
 80027d6:	f003 030c 	and.w	r3, r3, #12
 80027da:	2b08      	cmp	r3, #8
 80027dc:	d1f9      	bne.n	80027d2 <SystemInit+0xe2>
 80027de:	e7cd      	b.n	800277c <SystemInit+0x8c>
 80027e0:	e000ed00 	.word	0xe000ed00
 80027e4:	40021000 	.word	0x40021000
 80027e8:	f87fc00c 	.word	0xf87fc00c
 80027ec:	ff00fccc 	.word	0xff00fccc
 80027f0:	40022000 	.word	0x40022000

080027f4 <sys_tick_init>:
 80027f4:	4b05      	ldr	r3, [pc, #20]	; (800280c <sys_tick_init+0x18>)
 80027f6:	4a06      	ldr	r2, [pc, #24]	; (8002810 <sys_tick_init+0x1c>)
 80027f8:	605a      	str	r2, [r3, #4]
 80027fa:	4a06      	ldr	r2, [pc, #24]	; (8002814 <sys_tick_init+0x20>)
 80027fc:	21f0      	movs	r1, #240	; 0xf0
 80027fe:	f882 1023 	strb.w	r1, [r2, #35]	; 0x23
 8002802:	2200      	movs	r2, #0
 8002804:	609a      	str	r2, [r3, #8]
 8002806:	2207      	movs	r2, #7
 8002808:	601a      	str	r2, [r3, #0]
 800280a:	4770      	bx	lr
 800280c:	e000e010 	.word	0xe000e010
 8002810:	00029040 	.word	0x00029040
 8002814:	e000ed00 	.word	0xe000ed00

08002818 <sleep>:
 8002818:	bf30      	wfi
 800281a:	4770      	bx	lr

0800281c <sytem_clock_init>:
 800281c:	f7ff bf68 	b.w	80026f0 <SystemInit>

08002820 <pwm_set>:
 8002820:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8002824:	b086      	sub	sp, #24
 8002826:	2370      	movs	r3, #112	; 0x70
 8002828:	9301      	str	r3, [sp, #4]
 800282a:	2301      	movs	r3, #1
 800282c:	f8ad 3008 	strh.w	r3, [sp, #8]
 8002830:	2304      	movs	r3, #4
 8002832:	f8ad 300a 	strh.w	r3, [sp, #10]
 8002836:	4f17      	ldr	r7, [pc, #92]	; (8002894 <pwm_set+0x74>)
 8002838:	4c17      	ldr	r4, [pc, #92]	; (8002898 <pwm_set+0x78>)
 800283a:	2302      	movs	r3, #2
 800283c:	f8ad 3010 	strh.w	r3, [sp, #16]
 8002840:	2300      	movs	r3, #0
 8002842:	f8ad 3012 	strh.w	r3, [sp, #18]
 8002846:	f8ad 3016 	strh.w	r3, [sp, #22]
 800284a:	683b      	ldr	r3, [r7, #0]
 800284c:	f242 7610 	movw	r6, #10000	; 0x2710
 8002850:	fbb3 f3f6 	udiv	r3, r3, r6
 8002854:	3b02      	subs	r3, #2
 8002856:	4358      	muls	r0, r3
 8002858:	2564      	movs	r5, #100	; 0x64
 800285a:	fbb0 f3f5 	udiv	r3, r0, r5
 800285e:	f44f 7280 	mov.w	r2, #256	; 0x100
 8002862:	4620      	mov	r0, r4
 8002864:	4688      	mov	r8, r1
 8002866:	a901      	add	r1, sp, #4
 8002868:	f8ad 2014 	strh.w	r2, [sp, #20]
 800286c:	9303      	str	r3, [sp, #12]
 800286e:	f7ff fb95 	bl	8001f9c <TIM_OC1Init>
 8002872:	683b      	ldr	r3, [r7, #0]
 8002874:	fbb3 f6f6 	udiv	r6, r3, r6
 8002878:	3e02      	subs	r6, #2
 800287a:	fb06 f808 	mul.w	r8, r6, r8
 800287e:	fbb8 f5f5 	udiv	r5, r8, r5
 8002882:	4620      	mov	r0, r4
 8002884:	a901      	add	r1, sp, #4
 8002886:	9503      	str	r5, [sp, #12]
 8002888:	f7ff fbce 	bl	8002028 <TIM_OC2Init>
 800288c:	b006      	add	sp, #24
 800288e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8002892:	bf00      	nop
 8002894:	200000d0 	.word	0x200000d0
 8002898:	40012c00 	.word	0x40012c00

0800289c <pwm_init>:
 800289c:	b530      	push	{r4, r5, lr}
 800289e:	f44f 6000 	mov.w	r0, #2048	; 0x800
 80028a2:	b087      	sub	sp, #28
 80028a4:	2101      	movs	r1, #1
 80028a6:	f7ff faff 	bl	8001ea8 <RCC_APB2PeriphClockCmd>
 80028aa:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 80028ae:	2101      	movs	r1, #1
 80028b0:	f7ff faec 	bl	8001e8c <RCC_AHBPeriphClockCmd>
 80028b4:	4c1d      	ldr	r4, [pc, #116]	; (800292c <pwm_init+0x90>)
 80028b6:	4d1e      	ldr	r5, [pc, #120]	; (8002930 <pwm_init+0x94>)
 80028b8:	f44f 43c0 	mov.w	r3, #24576	; 0x6000
 80028bc:	9301      	str	r3, [sp, #4]
 80028be:	2302      	movs	r3, #2
 80028c0:	f88d 3008 	strb.w	r3, [sp, #8]
 80028c4:	4620      	mov	r0, r4
 80028c6:	2303      	movs	r3, #3
 80028c8:	a901      	add	r1, sp, #4
 80028ca:	f88d 3009 	strb.w	r3, [sp, #9]
 80028ce:	f000 f8ea 	bl	8002aa6 <GPIO_Init>
 80028d2:	4620      	mov	r0, r4
 80028d4:	210d      	movs	r1, #13
 80028d6:	2206      	movs	r2, #6
 80028d8:	f000 f933 	bl	8002b42 <GPIO_PinAFConfig>
 80028dc:	4620      	mov	r0, r4
 80028de:	210e      	movs	r1, #14
 80028e0:	2206      	movs	r2, #6
 80028e2:	f000 f92e 	bl	8002b42 <GPIO_PinAFConfig>
 80028e6:	4b13      	ldr	r3, [pc, #76]	; (8002934 <pwm_init+0x98>)
 80028e8:	681a      	ldr	r2, [r3, #0]
 80028ea:	f242 7310 	movw	r3, #10000	; 0x2710
 80028ee:	fbb2 f3f3 	udiv	r3, r2, r3
 80028f2:	2400      	movs	r4, #0
 80028f4:	3b01      	subs	r3, #1
 80028f6:	4628      	mov	r0, r5
 80028f8:	a903      	add	r1, sp, #12
 80028fa:	9304      	str	r3, [sp, #16]
 80028fc:	f8ad 400c 	strh.w	r4, [sp, #12]
 8002900:	f8ad 400e 	strh.w	r4, [sp, #14]
 8002904:	f8ad 4014 	strh.w	r4, [sp, #20]
 8002908:	f8ad 4016 	strh.w	r4, [sp, #22]
 800290c:	f7ff fae8 	bl	8001ee0 <TIM_TimeBaseInit>
 8002910:	4620      	mov	r0, r4
 8002912:	4621      	mov	r1, r4
 8002914:	f7ff ff84 	bl	8002820 <pwm_set>
 8002918:	4628      	mov	r0, r5
 800291a:	2101      	movs	r1, #1
 800291c:	f7ff fb30 	bl	8001f80 <TIM_Cmd>
 8002920:	4628      	mov	r0, r5
 8002922:	2101      	movs	r1, #1
 8002924:	f7ff fbbe 	bl	80020a4 <TIM_CtrlPWMOutputs>
 8002928:	b007      	add	sp, #28
 800292a:	bd30      	pop	{r4, r5, pc}
 800292c:	48000400 	.word	0x48000400
 8002930:	40012c00 	.word	0x40012c00
 8002934:	200000d0 	.word	0x200000d0

08002938 <drv8834_run>:
 8002938:	1e02      	subs	r2, r0, #0
 800293a:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 800293e:	dd07      	ble.n	8002950 <drv8834_run+0x18>
 8002940:	8d18      	ldrh	r0, [r3, #40]	; 0x28
 8002942:	ea6f 4040 	mvn.w	r0, r0, lsl #17
 8002946:	ea6f 4050 	mvn.w	r0, r0, lsr #17
 800294a:	b280      	uxth	r0, r0
 800294c:	8518      	strh	r0, [r3, #40]	; 0x28
 800294e:	e005      	b.n	800295c <drv8834_run+0x24>
 8002950:	6998      	ldr	r0, [r3, #24]
 8002952:	4252      	negs	r2, r2
 8002954:	f440 4000 	orr.w	r0, r0, #32768	; 0x8000
 8002958:	6198      	str	r0, [r3, #24]
 800295a:	b212      	sxth	r2, r2
 800295c:	2900      	cmp	r1, #0
 800295e:	4b0c      	ldr	r3, [pc, #48]	; (8002990 <drv8834_run+0x58>)
 8002960:	dd05      	ble.n	800296e <drv8834_run+0x36>
 8002962:	8d18      	ldrh	r0, [r3, #40]	; 0x28
 8002964:	b280      	uxth	r0, r0
 8002966:	f040 0020 	orr.w	r0, r0, #32
 800296a:	8518      	strh	r0, [r3, #40]	; 0x28
 800296c:	e005      	b.n	800297a <drv8834_run+0x42>
 800296e:	6998      	ldr	r0, [r3, #24]
 8002970:	4249      	negs	r1, r1
 8002972:	f040 0020 	orr.w	r0, r0, #32
 8002976:	6198      	str	r0, [r3, #24]
 8002978:	b209      	sxth	r1, r1
 800297a:	2964      	cmp	r1, #100	; 0x64
 800297c:	bfb4      	ite	lt
 800297e:	4608      	movlt	r0, r1
 8002980:	2064      	movge	r0, #100	; 0x64
 8002982:	2a64      	cmp	r2, #100	; 0x64
 8002984:	bfb4      	ite	lt
 8002986:	4611      	movlt	r1, r2
 8002988:	2164      	movge	r1, #100	; 0x64
 800298a:	f7ff bf49 	b.w	8002820 <pwm_set>
 800298e:	bf00      	nop
 8002990:	48000400 	.word	0x48000400

08002994 <drv8834_init>:
 8002994:	e92d 41f3 	stmdb	sp!, {r0, r1, r4, r5, r6, r7, r8, lr}
 8002998:	4f1d      	ldr	r7, [pc, #116]	; (8002a10 <drv8834_init+0x7c>)
 800299a:	2400      	movs	r4, #0
 800299c:	2601      	movs	r6, #1
 800299e:	2503      	movs	r5, #3
 80029a0:	f04f 0810 	mov.w	r8, #16
 80029a4:	4638      	mov	r0, r7
 80029a6:	4669      	mov	r1, sp
 80029a8:	f8cd 8000 	str.w	r8, [sp]
 80029ac:	f88d 6004 	strb.w	r6, [sp, #4]
 80029b0:	f88d 4006 	strb.w	r4, [sp, #6]
 80029b4:	f88d 5005 	strb.w	r5, [sp, #5]
 80029b8:	f88d 4007 	strb.w	r4, [sp, #7]
 80029bc:	f000 f873 	bl	8002aa6 <GPIO_Init>
 80029c0:	f8a7 8028 	strh.w	r8, [r7, #40]	; 0x28
 80029c4:	2320      	movs	r3, #32
 80029c6:	4638      	mov	r0, r7
 80029c8:	4669      	mov	r1, sp
 80029ca:	9300      	str	r3, [sp, #0]
 80029cc:	f88d 6004 	strb.w	r6, [sp, #4]
 80029d0:	f88d 4006 	strb.w	r4, [sp, #6]
 80029d4:	f88d 5005 	strb.w	r5, [sp, #5]
 80029d8:	f88d 4007 	strb.w	r4, [sp, #7]
 80029dc:	f000 f863 	bl	8002aa6 <GPIO_Init>
 80029e0:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 80029e4:	4669      	mov	r1, sp
 80029e6:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80029ea:	9300      	str	r3, [sp, #0]
 80029ec:	f88d 6004 	strb.w	r6, [sp, #4]
 80029f0:	f88d 4006 	strb.w	r4, [sp, #6]
 80029f4:	f88d 5005 	strb.w	r5, [sp, #5]
 80029f8:	f88d 4007 	strb.w	r4, [sp, #7]
 80029fc:	f000 f853 	bl	8002aa6 <GPIO_Init>
 8002a00:	4620      	mov	r0, r4
 8002a02:	4621      	mov	r1, r4
 8002a04:	f7ff ff98 	bl	8002938 <drv8834_run>
 8002a08:	b002      	add	sp, #8
 8002a0a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8002a0e:	bf00      	nop
 8002a10:	48000400 	.word	0x48000400

08002a14 <NVIC_Init>:
 8002a14:	b510      	push	{r4, lr}
 8002a16:	bf00      	nop
 8002a18:	bf00      	nop
 8002a1a:	bf00      	nop
 8002a1c:	78c2      	ldrb	r2, [r0, #3]
 8002a1e:	7803      	ldrb	r3, [r0, #0]
 8002a20:	b30a      	cbz	r2, 8002a66 <NVIC_Init+0x52>
 8002a22:	4a16      	ldr	r2, [pc, #88]	; (8002a7c <NVIC_Init+0x68>)
 8002a24:	7844      	ldrb	r4, [r0, #1]
 8002a26:	68d2      	ldr	r2, [r2, #12]
 8002a28:	43d2      	mvns	r2, r2
 8002a2a:	f3c2 2202 	ubfx	r2, r2, #8, #3
 8002a2e:	f1c2 0104 	rsb	r1, r2, #4
 8002a32:	b2c9      	uxtb	r1, r1
 8002a34:	fa04 f101 	lsl.w	r1, r4, r1
 8002a38:	240f      	movs	r4, #15
 8002a3a:	fa44 f202 	asr.w	r2, r4, r2
 8002a3e:	7884      	ldrb	r4, [r0, #2]
 8002a40:	b2c9      	uxtb	r1, r1
 8002a42:	4022      	ands	r2, r4
 8002a44:	430a      	orrs	r2, r1
 8002a46:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
 8002a4a:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
 8002a4e:	0112      	lsls	r2, r2, #4
 8002a50:	b2d2      	uxtb	r2, r2
 8002a52:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
 8002a56:	7803      	ldrb	r3, [r0, #0]
 8002a58:	2201      	movs	r2, #1
 8002a5a:	0959      	lsrs	r1, r3, #5
 8002a5c:	f003 031f 	and.w	r3, r3, #31
 8002a60:	fa02 f303 	lsl.w	r3, r2, r3
 8002a64:	e006      	b.n	8002a74 <NVIC_Init+0x60>
 8002a66:	0959      	lsrs	r1, r3, #5
 8002a68:	2201      	movs	r2, #1
 8002a6a:	f003 031f 	and.w	r3, r3, #31
 8002a6e:	fa02 f303 	lsl.w	r3, r2, r3
 8002a72:	3120      	adds	r1, #32
 8002a74:	4a02      	ldr	r2, [pc, #8]	; (8002a80 <NVIC_Init+0x6c>)
 8002a76:	f842 3021 	str.w	r3, [r2, r1, lsl #2]
 8002a7a:	bd10      	pop	{r4, pc}
 8002a7c:	e000ed00 	.word	0xe000ed00
 8002a80:	e000e100 	.word	0xe000e100

08002a84 <lib_low_level_init>:
 8002a84:	b508      	push	{r3, lr}
 8002a86:	f7ff fec9 	bl	800281c <sytem_clock_init>
 8002a8a:	f000 f871 	bl	8002b70 <gpio_init>
 8002a8e:	f7ff fc93 	bl	80023b8 <uart_init>
 8002a92:	f7ff fb17 	bl	80020c4 <timer_init>
 8002a96:	f7ff ff01 	bl	800289c <pwm_init>
 8002a9a:	f7ff ff7b 	bl	8002994 <drv8834_init>
 8002a9e:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8002aa2:	f7ff bd69 	b.w	8002578 <i2c_0_init>

08002aa6 <GPIO_Init>:
 8002aa6:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002aa8:	bf00      	nop
 8002aaa:	bf00      	nop
 8002aac:	bf00      	nop
 8002aae:	bf00      	nop
 8002ab0:	2300      	movs	r3, #0
 8002ab2:	680e      	ldr	r6, [r1, #0]
 8002ab4:	461a      	mov	r2, r3
 8002ab6:	2501      	movs	r5, #1
 8002ab8:	4095      	lsls	r5, r2
 8002aba:	ea05 0406 	and.w	r4, r5, r6
 8002abe:	42ac      	cmp	r4, r5
 8002ac0:	d131      	bne.n	8002b26 <GPIO_Init+0x80>
 8002ac2:	790d      	ldrb	r5, [r1, #4]
 8002ac4:	1e6f      	subs	r7, r5, #1
 8002ac6:	b2ff      	uxtb	r7, r7
 8002ac8:	2f01      	cmp	r7, #1
 8002aca:	d81c      	bhi.n	8002b06 <GPIO_Init+0x60>
 8002acc:	bf00      	nop
 8002ace:	f04f 0c03 	mov.w	ip, #3
 8002ad2:	6887      	ldr	r7, [r0, #8]
 8002ad4:	fa0c fc03 	lsl.w	ip, ip, r3
 8002ad8:	ea27 070c 	bic.w	r7, r7, ip
 8002adc:	6087      	str	r7, [r0, #8]
 8002ade:	f891 c005 	ldrb.w	ip, [r1, #5]
 8002ae2:	6887      	ldr	r7, [r0, #8]
 8002ae4:	fa0c fc03 	lsl.w	ip, ip, r3
 8002ae8:	ea4c 0707 	orr.w	r7, ip, r7
 8002aec:	6087      	str	r7, [r0, #8]
 8002aee:	bf00      	nop
 8002af0:	8887      	ldrh	r7, [r0, #4]
 8002af2:	b2bf      	uxth	r7, r7
 8002af4:	ea27 0404 	bic.w	r4, r7, r4
 8002af8:	8084      	strh	r4, [r0, #4]
 8002afa:	798c      	ldrb	r4, [r1, #6]
 8002afc:	8887      	ldrh	r7, [r0, #4]
 8002afe:	4094      	lsls	r4, r2
 8002b00:	433c      	orrs	r4, r7
 8002b02:	b2a4      	uxth	r4, r4
 8002b04:	8084      	strh	r4, [r0, #4]
 8002b06:	2403      	movs	r4, #3
 8002b08:	6807      	ldr	r7, [r0, #0]
 8002b0a:	409c      	lsls	r4, r3
 8002b0c:	43e4      	mvns	r4, r4
 8002b0e:	4027      	ands	r7, r4
 8002b10:	6007      	str	r7, [r0, #0]
 8002b12:	6807      	ldr	r7, [r0, #0]
 8002b14:	409d      	lsls	r5, r3
 8002b16:	433d      	orrs	r5, r7
 8002b18:	6005      	str	r5, [r0, #0]
 8002b1a:	68c5      	ldr	r5, [r0, #12]
 8002b1c:	402c      	ands	r4, r5
 8002b1e:	79cd      	ldrb	r5, [r1, #7]
 8002b20:	409d      	lsls	r5, r3
 8002b22:	432c      	orrs	r4, r5
 8002b24:	60c4      	str	r4, [r0, #12]
 8002b26:	3201      	adds	r2, #1
 8002b28:	2a10      	cmp	r2, #16
 8002b2a:	f103 0302 	add.w	r3, r3, #2
 8002b2e:	d1c2      	bne.n	8002ab6 <GPIO_Init+0x10>
 8002b30:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002b32 <GPIO_SetBits>:
 8002b32:	bf00      	nop
 8002b34:	bf00      	nop
 8002b36:	6181      	str	r1, [r0, #24]
 8002b38:	4770      	bx	lr

08002b3a <GPIO_ResetBits>:
 8002b3a:	bf00      	nop
 8002b3c:	bf00      	nop
 8002b3e:	8501      	strh	r1, [r0, #40]	; 0x28
 8002b40:	4770      	bx	lr

08002b42 <GPIO_PinAFConfig>:
 8002b42:	b510      	push	{r4, lr}
 8002b44:	bf00      	nop
 8002b46:	bf00      	nop
 8002b48:	bf00      	nop
 8002b4a:	f001 0307 	and.w	r3, r1, #7
 8002b4e:	08c9      	lsrs	r1, r1, #3
 8002b50:	eb00 0081 	add.w	r0, r0, r1, lsl #2
 8002b54:	009b      	lsls	r3, r3, #2
 8002b56:	6a04      	ldr	r4, [r0, #32]
 8002b58:	210f      	movs	r1, #15
 8002b5a:	4099      	lsls	r1, r3
 8002b5c:	ea24 0101 	bic.w	r1, r4, r1
 8002b60:	6201      	str	r1, [r0, #32]
 8002b62:	6a01      	ldr	r1, [r0, #32]
 8002b64:	fa02 f303 	lsl.w	r3, r2, r3
 8002b68:	430b      	orrs	r3, r1
 8002b6a:	6203      	str	r3, [r0, #32]
 8002b6c:	bd10      	pop	{r4, pc}
	...

08002b70 <gpio_init>:
 8002b70:	e92d 41f3 	stmdb	sp!, {r0, r1, r4, r5, r6, r7, r8, lr}
 8002b74:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 8002b78:	2101      	movs	r1, #1
 8002b7a:	f7ff f987 	bl	8001e8c <RCC_AHBPeriphClockCmd>
 8002b7e:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 8002b82:	2101      	movs	r1, #1
 8002b84:	f7ff f982 	bl	8001e8c <RCC_AHBPeriphClockCmd>
 8002b88:	f44f 2000 	mov.w	r0, #524288	; 0x80000
 8002b8c:	2101      	movs	r1, #1
 8002b8e:	f7ff f97d 	bl	8001e8c <RCC_AHBPeriphClockCmd>
 8002b92:	2400      	movs	r4, #0
 8002b94:	2503      	movs	r5, #3
 8002b96:	f44f 4800 	mov.w	r8, #32768	; 0x8000
 8002b9a:	2701      	movs	r7, #1
 8002b9c:	4669      	mov	r1, sp
 8002b9e:	481c      	ldr	r0, [pc, #112]	; (8002c10 <gpio_init+0xa0>)
 8002ba0:	f8cd 8000 	str.w	r8, [sp]
 8002ba4:	f88d 7004 	strb.w	r7, [sp, #4]
 8002ba8:	f88d 4006 	strb.w	r4, [sp, #6]
 8002bac:	f88d 5005 	strb.w	r5, [sp, #5]
 8002bb0:	f88d 4007 	strb.w	r4, [sp, #7]
 8002bb4:	f7ff ff77 	bl	8002aa6 <GPIO_Init>
 8002bb8:	f44f 7300 	mov.w	r3, #512	; 0x200
 8002bbc:	4669      	mov	r1, sp
 8002bbe:	4814      	ldr	r0, [pc, #80]	; (8002c10 <gpio_init+0xa0>)
 8002bc0:	9300      	str	r3, [sp, #0]
 8002bc2:	4e14      	ldr	r6, [pc, #80]	; (8002c14 <gpio_init+0xa4>)
 8002bc4:	f88d 4004 	strb.w	r4, [sp, #4]
 8002bc8:	f88d 5005 	strb.w	r5, [sp, #5]
 8002bcc:	f88d 4007 	strb.w	r4, [sp, #7]
 8002bd0:	f7ff ff69 	bl	8002aa6 <GPIO_Init>
 8002bd4:	f44f 6380 	mov.w	r3, #1024	; 0x400
 8002bd8:	9300      	str	r3, [sp, #0]
 8002bda:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8002bde:	2302      	movs	r3, #2
 8002be0:	4669      	mov	r1, sp
 8002be2:	f88d 3007 	strb.w	r3, [sp, #7]
 8002be6:	6034      	str	r4, [r6, #0]
 8002be8:	f88d 4004 	strb.w	r4, [sp, #4]
 8002bec:	f88d 5005 	strb.w	r5, [sp, #5]
 8002bf0:	f7ff ff59 	bl	8002aa6 <GPIO_Init>
 8002bf4:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8002bf8:	8a1b      	ldrh	r3, [r3, #16]
 8002bfa:	f413 6f80 	tst.w	r3, #1024	; 0x400
 8002bfe:	4b04      	ldr	r3, [pc, #16]	; (8002c10 <gpio_init+0xa0>)
 8002c00:	bf18      	it	ne
 8002c02:	6037      	strne	r7, [r6, #0]
 8002c04:	f8c3 8018 	str.w	r8, [r3, #24]
 8002c08:	b002      	add	sp, #8
 8002c0a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8002c0e:	bf00      	nop
 8002c10:	48000400 	.word	0x48000400
 8002c14:	200011fc 	.word	0x200011fc

08002c18 <led_on>:
 8002c18:	0403      	lsls	r3, r0, #16
 8002c1a:	d503      	bpl.n	8002c24 <led_on+0xc>
 8002c1c:	4b02      	ldr	r3, [pc, #8]	; (8002c28 <led_on+0x10>)
 8002c1e:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 8002c22:	619a      	str	r2, [r3, #24]
 8002c24:	4770      	bx	lr
 8002c26:	bf00      	nop
 8002c28:	48000400 	.word	0x48000400

08002c2c <led_off>:
 8002c2c:	0402      	lsls	r2, r0, #16
 8002c2e:	d503      	bpl.n	8002c38 <led_off+0xc>
 8002c30:	4b02      	ldr	r3, [pc, #8]	; (8002c3c <led_off+0x10>)
 8002c32:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 8002c36:	851a      	strh	r2, [r3, #40]	; 0x28
 8002c38:	4770      	bx	lr
 8002c3a:	bf00      	nop
 8002c3c:	48000400 	.word	0x48000400

08002c40 <get_key>:
 8002c40:	4b02      	ldr	r3, [pc, #8]	; (8002c4c <get_key+0xc>)
 8002c42:	8a18      	ldrh	r0, [r3, #16]
 8002c44:	43c0      	mvns	r0, r0
 8002c46:	f400 7000 	and.w	r0, r0, #512	; 0x200
 8002c4a:	4770      	bx	lr
 8002c4c:	48000400 	.word	0x48000400

08002c50 <get_mode_jumper>:
 8002c50:	4b01      	ldr	r3, [pc, #4]	; (8002c58 <get_mode_jumper+0x8>)
 8002c52:	6818      	ldr	r0, [r3, #0]
 8002c54:	4770      	bx	lr
 8002c56:	bf00      	nop
 8002c58:	200011fc 	.word	0x200011fc

08002c5c <Default_Handler>:
 8002c5c:	4668      	mov	r0, sp
 8002c5e:	f020 0107 	bic.w	r1, r0, #7
 8002c62:	468d      	mov	sp, r1
 8002c64:	bf00      	nop
 8002c66:	e7fd      	b.n	8002c64 <Default_Handler+0x8>

08002c68 <HardFault_Handler>:
 8002c68:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8002c6c:	f7ff ffd4 	bl	8002c18 <led_on>
 8002c70:	4b06      	ldr	r3, [pc, #24]	; (8002c8c <HardFault_Handler+0x24>)
 8002c72:	3b01      	subs	r3, #1
 8002c74:	d001      	beq.n	8002c7a <HardFault_Handler+0x12>
 8002c76:	bf00      	nop
 8002c78:	e7fb      	b.n	8002c72 <HardFault_Handler+0xa>
 8002c7a:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8002c7e:	f7ff ffd5 	bl	8002c2c <led_off>
 8002c82:	4b02      	ldr	r3, [pc, #8]	; (8002c8c <HardFault_Handler+0x24>)
 8002c84:	3b01      	subs	r3, #1
 8002c86:	d0ef      	beq.n	8002c68 <HardFault_Handler>
 8002c88:	bf00      	nop
 8002c8a:	e7fb      	b.n	8002c84 <HardFault_Handler+0x1c>
 8002c8c:	00989681 	.word	0x00989681

08002c90 <_reset_init>:
 8002c90:	4a0e      	ldr	r2, [pc, #56]	; (8002ccc <_reset_init+0x3c>)
 8002c92:	480f      	ldr	r0, [pc, #60]	; (8002cd0 <_reset_init+0x40>)
 8002c94:	1a80      	subs	r0, r0, r2
 8002c96:	1080      	asrs	r0, r0, #2
 8002c98:	2300      	movs	r3, #0
 8002c9a:	4283      	cmp	r3, r0
 8002c9c:	d006      	beq.n	8002cac <_reset_init+0x1c>
 8002c9e:	490d      	ldr	r1, [pc, #52]	; (8002cd4 <_reset_init+0x44>)
 8002ca0:	f851 1023 	ldr.w	r1, [r1, r3, lsl #2]
 8002ca4:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
 8002ca8:	3301      	adds	r3, #1
 8002caa:	e7f6      	b.n	8002c9a <_reset_init+0xa>
 8002cac:	4b0a      	ldr	r3, [pc, #40]	; (8002cd8 <_reset_init+0x48>)
 8002cae:	f8d3 2088 	ldr.w	r2, [r3, #136]	; 0x88
 8002cb2:	f442 0270 	orr.w	r2, r2, #15728640	; 0xf00000
 8002cb6:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
 8002cba:	f503 730c 	add.w	r3, r3, #560	; 0x230
 8002cbe:	685a      	ldr	r2, [r3, #4]
 8002cc0:	f022 4240 	bic.w	r2, r2, #3221225472	; 0xc0000000
 8002cc4:	605a      	str	r2, [r3, #4]
 8002cc6:	f7fe bf41 	b.w	8001b4c <main>
 8002cca:	bf00      	nop
 8002ccc:	20000000 	.word	0x20000000
 8002cd0:	20000504 	.word	0x20000504
 8002cd4:	080047c4 	.word	0x080047c4
 8002cd8:	e000ed00 	.word	0xe000ed00

08002cdc <selfrel_offset31>:
 8002cdc:	e5903000 	ldr	r3, [r0]
 8002ce0:	e3130101 	tst	r3, #1073741824	; 0x40000000
 8002ce4:	13833102 	orrne	r3, r3, #-2147483648	; 0x80000000
 8002ce8:	03c33102 	biceq	r3, r3, #-2147483648	; 0x80000000
 8002cec:	e0800003 	add	r0, r0, r3
 8002cf0:	e12fff1e 	bx	lr

08002cf4 <search_EIT_table>:
 8002cf4:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8002cf8:	e3510000 	cmp	r1, #0
 8002cfc:	e24dd00c 	sub	sp, sp, #12
 8002d00:	e1a06000 	mov	r6, r0
 8002d04:	e1a09002 	mov	r9, r2
 8002d08:	0a00001c 	beq	8002d80 <search_EIT_table+0x8c>
 8002d0c:	e2411001 	sub	r1, r1, #1
 8002d10:	e58d1004 	str	r1, [sp, #4]
 8002d14:	e1a08001 	mov	r8, r1
 8002d18:	e3a07000 	mov	r7, #0
 8002d1c:	e0874008 	add	r4, r7, r8
 8002d20:	e0844fa4 	add	r4, r4, r4, lsr #31
 8002d24:	e1a040c4 	asr	r4, r4, #1
 8002d28:	e1a05184 	lsl	r5, r4, #3
 8002d2c:	e086b005 	add	fp, r6, r5
 8002d30:	e1a0000b 	mov	r0, fp
 8002d34:	ebffffe8 	bl	8002cdc <selfrel_offset31>
 8002d38:	e59d3004 	ldr	r3, [sp, #4]
 8002d3c:	e1a0a000 	mov	sl, r0
 8002d40:	e1530004 	cmp	r3, r4
 8002d44:	e2850008 	add	r0, r5, #8
 8002d48:	e0860000 	add	r0, r6, r0
 8002d4c:	0a000015 	beq	8002da8 <search_EIT_table+0xb4>
 8002d50:	ebffffe1 	bl	8002cdc <selfrel_offset31>
 8002d54:	e15a0009 	cmp	sl, r9
 8002d58:	e2400001 	sub	r0, r0, #1
 8002d5c:	9a000003 	bls	8002d70 <search_EIT_table+0x7c>
 8002d60:	e1540007 	cmp	r4, r7
 8002d64:	0a00000a 	beq	8002d94 <search_EIT_table+0xa0>
 8002d68:	e2448001 	sub	r8, r4, #1
 8002d6c:	eaffffea 	b	8002d1c <search_EIT_table+0x28>
 8002d70:	e1500009 	cmp	r0, r9
 8002d74:	2a000002 	bcs	8002d84 <search_EIT_table+0x90>
 8002d78:	e2847001 	add	r7, r4, #1
 8002d7c:	eaffffe6 	b	8002d1c <search_EIT_table+0x28>
 8002d80:	e1a0b001 	mov	fp, r1
 8002d84:	e1a0000b 	mov	r0, fp
 8002d88:	e28dd00c 	add	sp, sp, #12
 8002d8c:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8002d90:	e12fff1e 	bx	lr
 8002d94:	e3a0b000 	mov	fp, #0
 8002d98:	e1a0000b 	mov	r0, fp
 8002d9c:	e28dd00c 	add	sp, sp, #12
 8002da0:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8002da4:	e12fff1e 	bx	lr
 8002da8:	e15a0009 	cmp	sl, r9
 8002dac:	8affffeb 	bhi	8002d60 <search_EIT_table+0x6c>
 8002db0:	eafffff3 	b	8002d84 <search_EIT_table+0x90>

08002db4 <__gnu_unwind_get_pr_addr>:
 8002db4:	e3500001 	cmp	r0, #1
 8002db8:	0a000006 	beq	8002dd8 <__gnu_unwind_get_pr_addr+0x24>
 8002dbc:	e3500002 	cmp	r0, #2
 8002dc0:	0a000006 	beq	8002de0 <__gnu_unwind_get_pr_addr+0x2c>
 8002dc4:	e59f301c 	ldr	r3, [pc, #28]	; 8002de8 <__gnu_unwind_get_pr_addr+0x34>
 8002dc8:	e3500000 	cmp	r0, #0
 8002dcc:	01a00003 	moveq	r0, r3
 8002dd0:	13a00000 	movne	r0, #0
 8002dd4:	e12fff1e 	bx	lr
 8002dd8:	e59f000c 	ldr	r0, [pc, #12]	; 8002dec <__gnu_unwind_get_pr_addr+0x38>
 8002ddc:	e12fff1e 	bx	lr
 8002de0:	e59f0008 	ldr	r0, [pc, #8]	; 8002df0 <__gnu_unwind_get_pr_addr+0x3c>
 8002de4:	e12fff1e 	bx	lr
 8002de8:	0800392c 	.word	0x0800392c
 8002dec:	08003934 	.word	0x08003934
 8002df0:	0800393c 	.word	0x0800393c

08002df4 <get_eit_entry>:
 8002df4:	e92d4030 	push	{r4, r5, lr}
 8002df8:	e59f30fc 	ldr	r3, [pc, #252]	; 8002efc <get_eit_entry+0x108>
 8002dfc:	e3530000 	cmp	r3, #0
 8002e00:	e24dd00c 	sub	sp, sp, #12
 8002e04:	e1a04000 	mov	r4, r0
 8002e08:	e2415002 	sub	r5, r1, #2
 8002e0c:	0a000034 	beq	8002ee4 <get_eit_entry+0xf0>
 8002e10:	e1a00005 	mov	r0, r5
 8002e14:	e28d1004 	add	r1, sp, #4
 8002e18:	e320f000 	nop	{0}
 8002e1c:	e1a03000 	mov	r3, r0
 8002e20:	e3500000 	cmp	r0, #0
 8002e24:	05843010 	streq	r3, [r4, #16]
 8002e28:	03a00009 	moveq	r0, #9
 8002e2c:	0a00001b 	beq	8002ea0 <get_eit_entry+0xac>
 8002e30:	e1a02005 	mov	r2, r5
 8002e34:	e59d1004 	ldr	r1, [sp, #4]
 8002e38:	ebffffad 	bl	8002cf4 <search_EIT_table>
 8002e3c:	e2505000 	subs	r5, r0, #0
 8002e40:	05845010 	streq	r5, [r4, #16]
 8002e44:	03a00009 	moveq	r0, #9
 8002e48:	0a000014 	beq	8002ea0 <get_eit_entry+0xac>
 8002e4c:	ebffffa2 	bl	8002cdc <selfrel_offset31>
 8002e50:	e5953004 	ldr	r3, [r5, #4]
 8002e54:	e3530001 	cmp	r3, #1
 8002e58:	e5840048 	str	r0, [r4, #72]	; 0x48
 8002e5c:	0a000012 	beq	8002eac <get_eit_entry+0xb8>
 8002e60:	e3530000 	cmp	r3, #0
 8002e64:	e2850004 	add	r0, r5, #4
 8002e68:	b3a03001 	movlt	r3, #1
 8002e6c:	b584004c 	strlt	r0, [r4, #76]	; 0x4c
 8002e70:	b5843050 	strlt	r3, [r4, #80]	; 0x50
 8002e74:	ba000003 	blt	8002e88 <get_eit_entry+0x94>
 8002e78:	ebffff97 	bl	8002cdc <selfrel_offset31>
 8002e7c:	e3a03000 	mov	r3, #0
 8002e80:	e584004c 	str	r0, [r4, #76]	; 0x4c
 8002e84:	e5843050 	str	r3, [r4, #80]	; 0x50
 8002e88:	e5903000 	ldr	r3, [r0]
 8002e8c:	e3530000 	cmp	r3, #0
 8002e90:	ba00000b 	blt	8002ec4 <get_eit_entry+0xd0>
 8002e94:	ebffff90 	bl	8002cdc <selfrel_offset31>
 8002e98:	e5840010 	str	r0, [r4, #16]
 8002e9c:	e3a00000 	mov	r0, #0
 8002ea0:	e28dd00c 	add	sp, sp, #12
 8002ea4:	e8bd4030 	pop	{r4, r5, lr}
 8002ea8:	e12fff1e 	bx	lr
 8002eac:	e3a03000 	mov	r3, #0
 8002eb0:	e3a00005 	mov	r0, #5
 8002eb4:	e5843010 	str	r3, [r4, #16]
 8002eb8:	e28dd00c 	add	sp, sp, #12
 8002ebc:	e8bd4030 	pop	{r4, r5, lr}
 8002ec0:	e12fff1e 	bx	lr
 8002ec4:	e1a00c23 	lsr	r0, r3, #24
 8002ec8:	e200000f 	and	r0, r0, #15
 8002ecc:	ebffffb8 	bl	8002db4 <__gnu_unwind_get_pr_addr>
 8002ed0:	e3500000 	cmp	r0, #0
 8002ed4:	e5840010 	str	r0, [r4, #16]
 8002ed8:	03a00009 	moveq	r0, #9
 8002edc:	13a00000 	movne	r0, #0
 8002ee0:	eaffffee 	b	8002ea0 <get_eit_entry+0xac>
 8002ee4:	e59f3014 	ldr	r3, [pc, #20]	; 8002f00 <get_eit_entry+0x10c>
 8002ee8:	e59f0014 	ldr	r0, [pc, #20]	; 8002f04 <get_eit_entry+0x110>
 8002eec:	e0603003 	rsb	r3, r0, r3
 8002ef0:	e1a031c3 	asr	r3, r3, #3
 8002ef4:	e58d3004 	str	r3, [sp, #4]
 8002ef8:	eaffffcc 	b	8002e30 <get_eit_entry+0x3c>
 8002efc:	00000000 	.word	0x00000000
 8002f00:	080047c4 	.word	0x080047c4
 8002f04:	080046bc 	.word	0x080046bc

08002f08 <restore_non_core_regs>:
 8002f08:	e5903000 	ldr	r3, [r0]
 8002f0c:	e3130001 	tst	r3, #1
 8002f10:	e92d4010 	push	{r4, lr}
 8002f14:	e1a04000 	mov	r4, r0
 8002f18:	1a000004 	bne	8002f30 <restore_non_core_regs+0x28>
 8002f1c:	e3130002 	tst	r3, #2
 8002f20:	e2800048 	add	r0, r0, #72	; 0x48
 8002f24:	0a00000a 	beq	8002f54 <restore_non_core_regs+0x4c>
 8002f28:	eb000377 	bl	8003d0c <__gnu_Unwind_Restore_VFP_D>
 8002f2c:	e5943000 	ldr	r3, [r4]
 8002f30:	e3130004 	tst	r3, #4
 8002f34:	0a00000a 	beq	8002f64 <restore_non_core_regs+0x5c>
 8002f38:	e3130008 	tst	r3, #8
 8002f3c:	0a00000d 	beq	8002f78 <restore_non_core_regs+0x70>
 8002f40:	e3130010 	tst	r3, #16
 8002f44:	02840e1d 	addeq	r0, r4, #464	; 0x1d0
 8002f48:	0b000399 	bleq	8003db4 <__gnu_Unwind_Restore_WMMXC>
 8002f4c:	e8bd4010 	pop	{r4, lr}
 8002f50:	e12fff1e 	bx	lr
 8002f54:	eb000368 	bl	8003cfc <__gnu_Unwind_Restore_VFP>
 8002f58:	e5943000 	ldr	r3, [r4]
 8002f5c:	e3130004 	tst	r3, #4
 8002f60:	1afffff4 	bne	8002f38 <restore_non_core_regs+0x30>
 8002f64:	e28400d0 	add	r0, r4, #208	; 0xd0
 8002f68:	eb00036b 	bl	8003d1c <__gnu_Unwind_Restore_VFP_D_16_to_31>
 8002f6c:	e5943000 	ldr	r3, [r4]
 8002f70:	e3130008 	tst	r3, #8
 8002f74:	1afffff1 	bne	8002f40 <restore_non_core_regs+0x38>
 8002f78:	e2840e15 	add	r0, r4, #336	; 0x150
 8002f7c:	eb00036a 	bl	8003d2c <__gnu_Unwind_Restore_WMMXD>
 8002f80:	e5943000 	ldr	r3, [r4]
 8002f84:	eaffffed 	b	8002f40 <restore_non_core_regs+0x38>

08002f88 <_Unwind_decode_typeinfo_ptr.isra.0>:
 8002f88:	e5903000 	ldr	r3, [r0]
 8002f8c:	e3530000 	cmp	r3, #0
 8002f90:	10830000 	addne	r0, r3, r0
 8002f94:	01a00003 	moveq	r0, r3
 8002f98:	e12fff1e 	bx	lr

08002f9c <__gnu_unwind_24bit.isra.1>:
 8002f9c:	e3a00009 	mov	r0, #9
 8002fa0:	e12fff1e 	bx	lr

08002fa4 <_Unwind_DebugHook>:
 8002fa4:	e12fff1e 	bx	lr

08002fa8 <unwind_phase2>:
 8002fa8:	e92d4070 	push	{r4, r5, r6, lr}
 8002fac:	e1a04000 	mov	r4, r0
 8002fb0:	e1a05001 	mov	r5, r1
 8002fb4:	ea000009 	b	8002fe0 <unwind_phase2+0x38>
 8002fb8:	e5953040 	ldr	r3, [r5, #64]	; 0x40
 8002fbc:	e3a00001 	mov	r0, #1
 8002fc0:	e5843014 	str	r3, [r4, #20]
 8002fc4:	e1a01004 	mov	r1, r4
 8002fc8:	e1a02005 	mov	r2, r5
 8002fcc:	e594c010 	ldr	ip, [r4, #16]
 8002fd0:	e1a0e00f 	mov	lr, pc
 8002fd4:	e12fff1c 	bx	ip
 8002fd8:	e3500008 	cmp	r0, #8
 8002fdc:	1a000005 	bne	8002ff8 <unwind_phase2+0x50>
 8002fe0:	e1a00004 	mov	r0, r4
 8002fe4:	e5951040 	ldr	r1, [r5, #64]	; 0x40
 8002fe8:	ebffff81 	bl	8002df4 <get_eit_entry>
 8002fec:	e2506000 	subs	r6, r0, #0
 8002ff0:	0afffff0 	beq	8002fb8 <unwind_phase2+0x10>
 8002ff4:	eb0004d9 	bl	8004360 <abort>
 8002ff8:	e3500007 	cmp	r0, #7
 8002ffc:	1afffffc 	bne	8002ff4 <unwind_phase2+0x4c>
 8003000:	e1a00006 	mov	r0, r6
 8003004:	e5951040 	ldr	r1, [r5, #64]	; 0x40
 8003008:	ebffffe5 	bl	8002fa4 <_Unwind_DebugHook>
 800300c:	e2850004 	add	r0, r5, #4
 8003010:	eb000332 	bl	8003ce0 <__restore_core_regs>

08003014 <unwind_phase2_forced>:
 8003014:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
 8003018:	e281e004 	add	lr, r1, #4
 800301c:	e24ddff2 	sub	sp, sp, #968	; 0x3c8
 8003020:	e1a04000 	mov	r4, r0
 8003024:	e1a07002 	mov	r7, r2
 8003028:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
 800302c:	e28dc00c 	add	ip, sp, #12
 8003030:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
 8003034:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
 8003038:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
 800303c:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
 8003040:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
 8003044:	e89e000f 	ldm	lr, {r0, r1, r2, r3}
 8003048:	e3a0e000 	mov	lr, #0
 800304c:	e157000e 	cmp	r7, lr
 8003050:	e594800c 	ldr	r8, [r4, #12]
 8003054:	e5949018 	ldr	r9, [r4, #24]
 8003058:	e88c000f 	stm	ip, {r0, r1, r2, r3}
 800305c:	e1a00004 	mov	r0, r4
 8003060:	e59d1048 	ldr	r1, [sp, #72]	; 0x48
 8003064:	13a0700a 	movne	r7, #10
 8003068:	03a07009 	moveq	r7, #9
 800306c:	e58de008 	str	lr, [sp, #8]
 8003070:	ebffff5f 	bl	8002df4 <get_eit_entry>
 8003074:	e28d6008 	add	r6, sp, #8
 8003078:	e1a05000 	mov	r5, r0
 800307c:	e3550000 	cmp	r5, #0
 8003080:	0a00000e 	beq	80030c0 <unwind_phase2_forced+0xac>
 8003084:	e59d0040 	ldr	r0, [sp, #64]	; 0x40
 8003088:	e1a02004 	mov	r2, r4
 800308c:	e58d004c 	str	r0, [sp, #76]	; 0x4c
 8003090:	e88d0240 	stm	sp, {r6, r9}
 8003094:	e3871010 	orr	r1, r7, #16
 8003098:	e1a03004 	mov	r3, r4
 800309c:	e3a00001 	mov	r0, #1
 80030a0:	e1a0e00f 	mov	lr, pc
 80030a4:	e12fff18 	bx	r8
 80030a8:	e3500000 	cmp	r0, #0
 80030ac:	1a000029 	bne	8003158 <unwind_phase2_forced+0x144>
 80030b0:	e1a00005 	mov	r0, r5
 80030b4:	e28ddff2 	add	sp, sp, #968	; 0x3c8
 80030b8:	e8bd47f0 	pop	{r4, r5, r6, r7, r8, r9, sl, lr}
 80030bc:	e12fff1e 	bx	lr
 80030c0:	e59d3048 	ldr	r3, [sp, #72]	; 0x48
 80030c4:	e1a01006 	mov	r1, r6
 80030c8:	e5843014 	str	r3, [r4, #20]
 80030cc:	e3a02e1e 	mov	r2, #480	; 0x1e0
 80030d0:	e28d0f7a 	add	r0, sp, #488	; 0x1e8
 80030d4:	eb0004a6 	bl	8004374 <memcpy>
 80030d8:	e1a01004 	mov	r1, r4
 80030dc:	e28d2f7a 	add	r2, sp, #488	; 0x1e8
 80030e0:	e1a00007 	mov	r0, r7
 80030e4:	e594c010 	ldr	ip, [r4, #16]
 80030e8:	e1a0e00f 	mov	lr, pc
 80030ec:	e12fff1c 	bx	ip
 80030f0:	e59d3220 	ldr	r3, [sp, #544]	; 0x220
 80030f4:	e1a0a000 	mov	sl, r0
 80030f8:	e58d304c 	str	r3, [sp, #76]	; 0x4c
 80030fc:	e88d0240 	stm	sp, {r6, r9}
 8003100:	e1a01007 	mov	r1, r7
 8003104:	e3a00001 	mov	r0, #1
 8003108:	e1a02004 	mov	r2, r4
 800310c:	e1a03004 	mov	r3, r4
 8003110:	e1a0e00f 	mov	lr, pc
 8003114:	e12fff18 	bx	r8
 8003118:	e3500000 	cmp	r0, #0
 800311c:	1a00000d 	bne	8003158 <unwind_phase2_forced+0x144>
 8003120:	e1a00006 	mov	r0, r6
 8003124:	e28d1f7a 	add	r1, sp, #488	; 0x1e8
 8003128:	e3a02e1e 	mov	r2, #480	; 0x1e0
 800312c:	eb000490 	bl	8004374 <memcpy>
 8003130:	e35a0008 	cmp	sl, #8
 8003134:	1a000005 	bne	8003150 <unwind_phase2_forced+0x13c>
 8003138:	e1a00004 	mov	r0, r4
 800313c:	e59d1048 	ldr	r1, [sp, #72]	; 0x48
 8003140:	ebffff2b 	bl	8002df4 <get_eit_entry>
 8003144:	e3a07009 	mov	r7, #9
 8003148:	e1a05000 	mov	r5, r0
 800314c:	eaffffca 	b	800307c <unwind_phase2_forced+0x68>
 8003150:	e35a0007 	cmp	sl, #7
 8003154:	0a000003 	beq	8003168 <unwind_phase2_forced+0x154>
 8003158:	e3a00009 	mov	r0, #9
 800315c:	e28ddff2 	add	sp, sp, #968	; 0x3c8
 8003160:	e8bd47f0 	pop	{r4, r5, r6, r7, r8, r9, sl, lr}
 8003164:	e12fff1e 	bx	lr
 8003168:	e1a00005 	mov	r0, r5
 800316c:	e59d1048 	ldr	r1, [sp, #72]	; 0x48
 8003170:	ebffff8b 	bl	8002fa4 <_Unwind_DebugHook>
 8003174:	e28d000c 	add	r0, sp, #12
 8003178:	eb0002d8 	bl	8003ce0 <__restore_core_regs>

0800317c <_Unwind_GetCFA>:
 800317c:	e5900044 	ldr	r0, [r0, #68]	; 0x44
 8003180:	e12fff1e 	bx	lr

08003184 <__gnu_Unwind_RaiseException>:
 8003184:	e92d40f0 	push	{r4, r5, r6, r7, lr}
 8003188:	e591303c 	ldr	r3, [r1, #60]	; 0x3c
 800318c:	e5813040 	str	r3, [r1, #64]	; 0x40
 8003190:	e281e004 	add	lr, r1, #4
 8003194:	e24ddf79 	sub	sp, sp, #484	; 0x1e4
 8003198:	e1a07001 	mov	r7, r1
 800319c:	e1a04000 	mov	r4, r0
 80031a0:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
 80031a4:	e28dc004 	add	ip, sp, #4
 80031a8:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
 80031ac:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
 80031b0:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
 80031b4:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
 80031b8:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
 80031bc:	e89e000f 	ldm	lr, {r0, r1, r2, r3}
 80031c0:	e28d6e1e 	add	r6, sp, #480	; 0x1e0
 80031c4:	e3e0e000 	mvn	lr, #0
 80031c8:	e88c000f 	stm	ip, {r0, r1, r2, r3}
 80031cc:	e526e1e0 	str	lr, [r6, #-480]!	; 0x1e0
 80031d0:	ea000007 	b	80031f4 <__gnu_Unwind_RaiseException+0x70>
 80031d4:	e1a01004 	mov	r1, r4
 80031d8:	e1a0200d 	mov	r2, sp
 80031dc:	e594c010 	ldr	ip, [r4, #16]
 80031e0:	e1a0e00f 	mov	lr, pc
 80031e4:	e12fff1c 	bx	ip
 80031e8:	e3500008 	cmp	r0, #8
 80031ec:	e1a05000 	mov	r5, r0
 80031f0:	1a000008 	bne	8003218 <__gnu_Unwind_RaiseException+0x94>
 80031f4:	e1a00004 	mov	r0, r4
 80031f8:	e59d1040 	ldr	r1, [sp, #64]	; 0x40
 80031fc:	ebfffefc 	bl	8002df4 <get_eit_entry>
 8003200:	e3500000 	cmp	r0, #0
 8003204:	0afffff2 	beq	80031d4 <__gnu_Unwind_RaiseException+0x50>
 8003208:	e3a00009 	mov	r0, #9
 800320c:	e28ddf79 	add	sp, sp, #484	; 0x1e4
 8003210:	e8bd40f0 	pop	{r4, r5, r6, r7, lr}
 8003214:	e12fff1e 	bx	lr
 8003218:	e1a0000d 	mov	r0, sp
 800321c:	ebffff39 	bl	8002f08 <restore_non_core_regs>
 8003220:	e3550006 	cmp	r5, #6
 8003224:	1afffff7 	bne	8003208 <__gnu_Unwind_RaiseException+0x84>
 8003228:	e1a00004 	mov	r0, r4
 800322c:	e1a01007 	mov	r1, r7
 8003230:	ebffff5c 	bl	8002fa8 <unwind_phase2>

08003234 <__gnu_Unwind_ForcedUnwind>:
 8003234:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
 8003238:	e593403c 	ldr	r4, [r3, #60]	; 0x3c
 800323c:	e580100c 	str	r1, [r0, #12]
 8003240:	e5802018 	str	r2, [r0, #24]
 8003244:	e1a01003 	mov	r1, r3
 8003248:	e5834040 	str	r4, [r3, #64]	; 0x40
 800324c:	e3a02000 	mov	r2, #0
 8003250:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
 8003254:	eaffff6e 	b	8003014 <unwind_phase2_forced>

08003258 <__gnu_Unwind_Resume>:
 8003258:	e92d4070 	push	{r4, r5, r6, lr}
 800325c:	e590600c 	ldr	r6, [r0, #12]
 8003260:	e5903014 	ldr	r3, [r0, #20]
 8003264:	e3560000 	cmp	r6, #0
 8003268:	e1a04000 	mov	r4, r0
 800326c:	e1a05001 	mov	r5, r1
 8003270:	e5813040 	str	r3, [r1, #64]	; 0x40
 8003274:	0a000002 	beq	8003284 <__gnu_Unwind_Resume+0x2c>
 8003278:	e3a02001 	mov	r2, #1
 800327c:	ebffff64 	bl	8003014 <unwind_phase2_forced>
 8003280:	eb000436 	bl	8004360 <abort>
 8003284:	e3a00002 	mov	r0, #2
 8003288:	e1a01004 	mov	r1, r4
 800328c:	e1a02005 	mov	r2, r5
 8003290:	e594c010 	ldr	ip, [r4, #16]
 8003294:	e1a0e00f 	mov	lr, pc
 8003298:	e12fff1c 	bx	ip
 800329c:	e3500007 	cmp	r0, #7
 80032a0:	0a000004 	beq	80032b8 <__gnu_Unwind_Resume+0x60>
 80032a4:	e3500008 	cmp	r0, #8
 80032a8:	01a00004 	moveq	r0, r4
 80032ac:	01a01005 	moveq	r1, r5
 80032b0:	0bffff3c 	bleq	8002fa8 <unwind_phase2>
 80032b4:	eb000429 	bl	8004360 <abort>
 80032b8:	e1a00006 	mov	r0, r6
 80032bc:	e5951040 	ldr	r1, [r5, #64]	; 0x40
 80032c0:	ebffff37 	bl	8002fa4 <_Unwind_DebugHook>
 80032c4:	e2850004 	add	r0, r5, #4
 80032c8:	eb000284 	bl	8003ce0 <__restore_core_regs>

080032cc <__gnu_Unwind_Resume_or_Rethrow>:
 80032cc:	e590300c 	ldr	r3, [r0, #12]
 80032d0:	e3530000 	cmp	r3, #0
 80032d4:	1591c03c 	ldrne	ip, [r1, #60]	; 0x3c
 80032d8:	13a02000 	movne	r2, #0
 80032dc:	1581c040 	strne	ip, [r1, #64]	; 0x40
 80032e0:	1affff4b 	bne	8003014 <unwind_phase2_forced>
 80032e4:	eaffffa6 	b	8003184 <__gnu_Unwind_RaiseException>

080032e8 <_Unwind_Complete>:
 80032e8:	e12fff1e 	bx	lr

080032ec <_Unwind_DeleteException>:
 80032ec:	e92d4008 	push	{r3, lr}
 80032f0:	e5903008 	ldr	r3, [r0, #8]
 80032f4:	e3530000 	cmp	r3, #0
 80032f8:	11a01000 	movne	r1, r0
 80032fc:	13a00001 	movne	r0, #1
 8003300:	11a0e00f 	movne	lr, pc
 8003304:	112fff13 	bxne	r3
 8003308:	e8bd4008 	pop	{r3, lr}
 800330c:	e12fff1e 	bx	lr

08003310 <_Unwind_VRS_Get>:
 8003310:	e3510004 	cmp	r1, #4
 8003314:	979ff101 	ldrls	pc, [pc, r1, lsl #2]
 8003318:	ea00000b 	b	800334c <_Unwind_VRS_Get+0x3c>
 800331c:	08003338 	.word	0x08003338
 8003320:	08003330 	.word	0x08003330
 8003324:	0800334c 	.word	0x0800334c
 8003328:	08003330 	.word	0x08003330
 800332c:	08003330 	.word	0x08003330
 8003330:	e3a00001 	mov	r0, #1
 8003334:	e12fff1e 	bx	lr
 8003338:	e352000f 	cmp	r2, #15
 800333c:	93530000 	cmpls	r3, #0
 8003340:	03a03000 	moveq	r3, #0
 8003344:	13a03001 	movne	r3, #1
 8003348:	0a000001 	beq	8003354 <_Unwind_VRS_Get+0x44>
 800334c:	e3a00002 	mov	r0, #2
 8003350:	e12fff1e 	bx	lr
 8003354:	e0802102 	add	r2, r0, r2, lsl #2
 8003358:	e5922004 	ldr	r2, [r2, #4]
 800335c:	e1a00003 	mov	r0, r3
 8003360:	e59d3000 	ldr	r3, [sp]
 8003364:	e5832000 	str	r2, [r3]
 8003368:	e12fff1e 	bx	lr

0800336c <_Unwind_GetGR>:
 800336c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 8003370:	e24dd014 	sub	sp, sp, #20
 8003374:	e1a02001 	mov	r2, r1
 8003378:	e28d300c 	add	r3, sp, #12
 800337c:	e3a01000 	mov	r1, #0
 8003380:	e58d3000 	str	r3, [sp]
 8003384:	e1a03001 	mov	r3, r1
 8003388:	ebffffe0 	bl	8003310 <_Unwind_VRS_Get>
 800338c:	e59d000c 	ldr	r0, [sp, #12]
 8003390:	e28dd014 	add	sp, sp, #20
 8003394:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 8003398:	e12fff1e 	bx	lr

0800339c <_Unwind_VRS_Set>:
 800339c:	e3510004 	cmp	r1, #4
 80033a0:	979ff101 	ldrls	pc, [pc, r1, lsl #2]
 80033a4:	ea00000b 	b	80033d8 <_Unwind_VRS_Set+0x3c>
 80033a8:	080033c4 	.word	0x080033c4
 80033ac:	080033bc 	.word	0x080033bc
 80033b0:	080033d8 	.word	0x080033d8
 80033b4:	080033bc 	.word	0x080033bc
 80033b8:	080033bc 	.word	0x080033bc
 80033bc:	e3a00001 	mov	r0, #1
 80033c0:	e12fff1e 	bx	lr
 80033c4:	e352000f 	cmp	r2, #15
 80033c8:	93530000 	cmpls	r3, #0
 80033cc:	03a03000 	moveq	r3, #0
 80033d0:	13a03001 	movne	r3, #1
 80033d4:	0a000001 	beq	80033e0 <_Unwind_VRS_Set+0x44>
 80033d8:	e3a00002 	mov	r0, #2
 80033dc:	e12fff1e 	bx	lr
 80033e0:	e59dc000 	ldr	ip, [sp]
 80033e4:	e59c1000 	ldr	r1, [ip]
 80033e8:	e0802102 	add	r2, r0, r2, lsl #2
 80033ec:	e5821004 	str	r1, [r2, #4]
 80033f0:	e1a00003 	mov	r0, r3
 80033f4:	e12fff1e 	bx	lr

080033f8 <_Unwind_SetGR>:
 80033f8:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 80033fc:	e24dd014 	sub	sp, sp, #20
 8003400:	e28d3010 	add	r3, sp, #16
 8003404:	e5232004 	str	r2, [r3, #-4]!
 8003408:	e1a02001 	mov	r2, r1
 800340c:	e3a01000 	mov	r1, #0
 8003410:	e58d3000 	str	r3, [sp]
 8003414:	e1a03001 	mov	r3, r1
 8003418:	ebffffdf 	bl	800339c <_Unwind_VRS_Set>
 800341c:	e28dd014 	add	sp, sp, #20
 8003420:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 8003424:	e12fff1e 	bx	lr

08003428 <__gnu_Unwind_Backtrace>:
 8003428:	e92d4070 	push	{r4, r5, r6, lr}
 800342c:	e592303c 	ldr	r3, [r2, #60]	; 0x3c
 8003430:	e5823040 	str	r3, [r2, #64]	; 0x40
 8003434:	e282e004 	add	lr, r2, #4
 8003438:	e24ddf8e 	sub	sp, sp, #568	; 0x238
 800343c:	e1a06000 	mov	r6, r0
 8003440:	e1a05001 	mov	r5, r1
 8003444:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
 8003448:	e28dc05c 	add	ip, sp, #92	; 0x5c
 800344c:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
 8003450:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
 8003454:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
 8003458:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
 800345c:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
 8003460:	e89e000f 	ldm	lr, {r0, r1, r2, r3}
 8003464:	e3e0e000 	mvn	lr, #0
 8003468:	e88c000f 	stm	ip, {r0, r1, r2, r3}
 800346c:	e58de058 	str	lr, [sp, #88]	; 0x58
 8003470:	ea000010 	b	80034b8 <__gnu_Unwind_Backtrace+0x90>
 8003474:	ebffffdf 	bl	80033f8 <_Unwind_SetGR>
 8003478:	e1a01005 	mov	r1, r5
 800347c:	e28d0058 	add	r0, sp, #88	; 0x58
 8003480:	e1a0e00f 	mov	lr, pc
 8003484:	e12fff16 	bx	r6
 8003488:	e3500000 	cmp	r0, #0
 800348c:	e1a0100d 	mov	r1, sp
 8003490:	e28d2058 	add	r2, sp, #88	; 0x58
 8003494:	e3a00008 	mov	r0, #8
 8003498:	1a00000e 	bne	80034d8 <__gnu_Unwind_Backtrace+0xb0>
 800349c:	e59dc010 	ldr	ip, [sp, #16]
 80034a0:	e1a0e00f 	mov	lr, pc
 80034a4:	e12fff1c 	bx	ip
 80034a8:	e3500009 	cmp	r0, #9
 80034ac:	13500005 	cmpne	r0, #5
 80034b0:	e1a04000 	mov	r4, r0
 80034b4:	0a000008 	beq	80034dc <__gnu_Unwind_Backtrace+0xb4>
 80034b8:	e59d1098 	ldr	r1, [sp, #152]	; 0x98
 80034bc:	e1a0000d 	mov	r0, sp
 80034c0:	ebfffe4b 	bl	8002df4 <get_eit_entry>
 80034c4:	e3500000 	cmp	r0, #0
 80034c8:	e1a0200d 	mov	r2, sp
 80034cc:	e3a0100c 	mov	r1, #12
 80034d0:	e28d0058 	add	r0, sp, #88	; 0x58
 80034d4:	0affffe6 	beq	8003474 <__gnu_Unwind_Backtrace+0x4c>
 80034d8:	e3a04009 	mov	r4, #9
 80034dc:	e28d0058 	add	r0, sp, #88	; 0x58
 80034e0:	ebfffe88 	bl	8002f08 <restore_non_core_regs>
 80034e4:	e1a00004 	mov	r0, r4
 80034e8:	e28ddf8e 	add	sp, sp, #568	; 0x238
 80034ec:	e8bd4070 	pop	{r4, r5, r6, lr}
 80034f0:	e12fff1e 	bx	lr

080034f4 <__gnu_unwind_pr_common>:
 80034f4:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80034f8:	e591504c 	ldr	r5, [r1, #76]	; 0x4c
 80034fc:	e1a04001 	mov	r4, r1
 8003500:	e5951000 	ldr	r1, [r5]
 8003504:	e24dd024 	sub	sp, sp, #36	; 0x24
 8003508:	e2855004 	add	r5, r5, #4
 800350c:	e2536000 	subs	r6, r3, #0
 8003510:	e58d0000 	str	r0, [sp]
 8003514:	e1a08002 	mov	r8, r2
 8003518:	e58d1014 	str	r1, [sp, #20]
 800351c:	e58d5018 	str	r5, [sp, #24]
 8003520:	e2007003 	and	r7, r0, #3
 8003524:	1a000068 	bne	80036cc <__gnu_unwind_pr_common+0x1d8>
 8003528:	e1a01401 	lsl	r1, r1, #8
 800352c:	e3a03003 	mov	r3, #3
 8003530:	e58d1014 	str	r1, [sp, #20]
 8003534:	e5cd601d 	strb	r6, [sp, #29]
 8003538:	e5cd301c 	strb	r3, [sp, #28]
 800353c:	e5943050 	ldr	r3, [r4, #80]	; 0x50
 8003540:	e3570002 	cmp	r7, #2
 8003544:	05945038 	ldreq	r5, [r4, #56]	; 0x38
 8003548:	e2133001 	ands	r3, r3, #1
 800354c:	1a000053 	bne	80036a0 <__gnu_unwind_pr_common+0x1ac>
 8003550:	e58d3004 	str	r3, [sp, #4]
 8003554:	e2843058 	add	r3, r4, #88	; 0x58
 8003558:	e58d3008 	str	r3, [sp, #8]
 800355c:	e5959000 	ldr	r9, [r5]
 8003560:	e3590000 	cmp	r9, #0
 8003564:	0a00004f 	beq	80036a8 <__gnu_unwind_pr_common+0x1b4>
 8003568:	e3560002 	cmp	r6, #2
 800356c:	0595a004 	ldreq	sl, [r5, #4]
 8003570:	11d5a0b2 	ldrhne	sl, [r5, #2]
 8003574:	e5943048 	ldr	r3, [r4, #72]	; 0x48
 8003578:	e3cab001 	bic	fp, sl, #1
 800357c:	e1a00008 	mov	r0, r8
 8003580:	e3a0100f 	mov	r1, #15
 8003584:	11d590b0 	ldrhne	r9, [r5]
 8003588:	02855008 	addeq	r5, r5, #8
 800358c:	12855004 	addne	r5, r5, #4
 8003590:	e08bb003 	add	fp, fp, r3
 8003594:	ebffff74 	bl	800336c <_Unwind_GetGR>
 8003598:	e15b0000 	cmp	fp, r0
 800359c:	83a00000 	movhi	r0, #0
 80035a0:	8a000004 	bhi	80035b8 <__gnu_unwind_pr_common+0xc4>
 80035a4:	e3c93001 	bic	r3, r9, #1
 80035a8:	e08bb003 	add	fp, fp, r3
 80035ac:	e150000b 	cmp	r0, fp
 80035b0:	23a00000 	movcs	r0, #0
 80035b4:	33a00001 	movcc	r0, #1
 80035b8:	e20aa001 	and	sl, sl, #1
 80035bc:	e2099001 	and	r9, r9, #1
 80035c0:	e189908a 	orr	r9, r9, sl, lsl #1
 80035c4:	e3590001 	cmp	r9, #1
 80035c8:	0a00005d 	beq	8003744 <__gnu_unwind_pr_common+0x250>
 80035cc:	3a000055 	bcc	8003728 <__gnu_unwind_pr_common+0x234>
 80035d0:	e3590002 	cmp	r9, #2
 80035d4:	1a000038 	bne	80036bc <__gnu_unwind_pr_common+0x1c8>
 80035d8:	e5953000 	ldr	r3, [r5]
 80035dc:	e3570000 	cmp	r7, #0
 80035e0:	e3c3b102 	bic	fp, r3, #-2147483648	; 0x80000000
 80035e4:	1a000043 	bne	80036f8 <__gnu_unwind_pr_common+0x204>
 80035e8:	e3500000 	cmp	r0, #0
 80035ec:	0a000048 	beq	8003714 <__gnu_unwind_pr_common+0x220>
 80035f0:	e59d2000 	ldr	r2, [sp]
 80035f4:	e3120008 	tst	r2, #8
 80035f8:	13a02000 	movne	r2, #0
 80035fc:	03a02001 	moveq	r2, #1
 8003600:	e35b0000 	cmp	fp, #0
 8003604:	03822001 	orreq	r2, r2, #1
 8003608:	e3520000 	cmp	r2, #0
 800360c:	0a000040 	beq	8003714 <__gnu_unwind_pr_common+0x220>
 8003610:	e35b0000 	cmp	fp, #0
 8003614:	0a000018 	beq	800367c <__gnu_unwind_pr_common+0x188>
 8003618:	e1a0a006 	mov	sl, r6
 800361c:	e2859004 	add	r9, r5, #4
 8003620:	e58d700c 	str	r7, [sp, #12]
 8003624:	e59d6008 	ldr	r6, [sp, #8]
 8003628:	ea000003 	b	800363c <__gnu_unwind_pr_common+0x148>
 800362c:	e153000b 	cmp	r3, fp
 8003630:	e2899004 	add	r9, r9, #4
 8003634:	0a000010 	beq	800367c <__gnu_unwind_pr_common+0x188>
 8003638:	e1a07003 	mov	r7, r3
 800363c:	e1a00009 	mov	r0, r9
 8003640:	e58d6010 	str	r6, [sp, #16]
 8003644:	ebfffe4f 	bl	8002f88 <_Unwind_decode_typeinfo_ptr.isra.0>
 8003648:	e28d3010 	add	r3, sp, #16
 800364c:	e1a01000 	mov	r1, r0
 8003650:	e3a02000 	mov	r2, #0
 8003654:	e1a00004 	mov	r0, r4
 8003658:	e320f000 	nop	{0}
 800365c:	e3500000 	cmp	r0, #0
 8003660:	e2873001 	add	r3, r7, #1
 8003664:	0afffff0 	beq	800362c <__gnu_unwind_pr_common+0x138>
 8003668:	e1a0600a 	mov	r6, sl
 800366c:	e1a0a007 	mov	sl, r7
 8003670:	e15b000a 	cmp	fp, sl
 8003674:	e59d700c 	ldr	r7, [sp, #12]
 8003678:	1a000024 	bne	8003710 <__gnu_unwind_pr_common+0x21c>
 800367c:	e1a00008 	mov	r0, r8
 8003680:	e3a0100d 	mov	r1, #13
 8003684:	ebffff38 	bl	800336c <_Unwind_GetGR>
 8003688:	e59d3010 	ldr	r3, [sp, #16]
 800368c:	e5840020 	str	r0, [r4, #32]
 8003690:	e5845028 	str	r5, [r4, #40]	; 0x28
 8003694:	e5843024 	str	r3, [r4, #36]	; 0x24
 8003698:	e3a00006 	mov	r0, #6
 800369c:	ea000007 	b	80036c0 <__gnu_unwind_pr_common+0x1cc>
 80036a0:	e3a02000 	mov	r2, #0
 80036a4:	e58d2004 	str	r2, [sp, #4]
 80036a8:	e3560002 	cmp	r6, #2
 80036ac:	da00003b 	ble	80037a0 <__gnu_unwind_pr_common+0x2ac>
 80036b0:	ebfffe39 	bl	8002f9c <__gnu_unwind_24bit.isra.1>
 80036b4:	e3500000 	cmp	r0, #0
 80036b8:	0a00003d 	beq	80037b4 <__gnu_unwind_pr_common+0x2c0>
 80036bc:	e3a00009 	mov	r0, #9
 80036c0:	e28dd024 	add	sp, sp, #36	; 0x24
 80036c4:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80036c8:	e12fff1e 	bx	lr
 80036cc:	e3560002 	cmp	r6, #2
 80036d0:	caffff99 	bgt	800353c <__gnu_unwind_pr_common+0x48>
 80036d4:	e1a03821 	lsr	r3, r1, #16
 80036d8:	e3a02002 	mov	r2, #2
 80036dc:	e1a01801 	lsl	r1, r1, #16
 80036e0:	e5cd301d 	strb	r3, [sp, #29]
 80036e4:	e20330ff 	and	r3, r3, #255	; 0xff
 80036e8:	e58d1014 	str	r1, [sp, #20]
 80036ec:	e5cd201c 	strb	r2, [sp, #28]
 80036f0:	e0855103 	add	r5, r5, r3, lsl #2
 80036f4:	eaffff90 	b	800353c <__gnu_unwind_pr_common+0x48>
 80036f8:	e1a00008 	mov	r0, r8
 80036fc:	e3a0100d 	mov	r1, #13
 8003700:	e5949020 	ldr	r9, [r4, #32]
 8003704:	ebffff18 	bl	800336c <_Unwind_GetGR>
 8003708:	e1590000 	cmp	r9, r0
 800370c:	0a00004e 	beq	800384c <__gnu_unwind_pr_common+0x358>
 8003710:	e5953000 	ldr	r3, [r5]
 8003714:	e3530000 	cmp	r3, #0
 8003718:	b2855004 	addlt	r5, r5, #4
 800371c:	e28bb001 	add	fp, fp, #1
 8003720:	e085510b 	add	r5, r5, fp, lsl #2
 8003724:	eaffff8c 	b	800355c <__gnu_unwind_pr_common+0x68>
 8003728:	e3570000 	cmp	r7, #0
 800372c:	03a00000 	moveq	r0, #0
 8003730:	12000001 	andne	r0, r0, #1
 8003734:	e3500000 	cmp	r0, #0
 8003738:	1a00005c 	bne	80038b0 <__gnu_unwind_pr_common+0x3bc>
 800373c:	e2855004 	add	r5, r5, #4
 8003740:	eaffff85 	b	800355c <__gnu_unwind_pr_common+0x68>
 8003744:	e3570000 	cmp	r7, #0
 8003748:	1a00002a 	bne	80037f8 <__gnu_unwind_pr_common+0x304>
 800374c:	e3500000 	cmp	r0, #0
 8003750:	0a000010 	beq	8003798 <__gnu_unwind_pr_common+0x2a4>
 8003754:	e895000c 	ldm	r5, {r2, r3}
 8003758:	e3730002 	cmn	r3, #2
 800375c:	e1a09fa2 	lsr	r9, r2, #31
 8003760:	0affffd5 	beq	80036bc <__gnu_unwind_pr_common+0x1c8>
 8003764:	e59d2008 	ldr	r2, [sp, #8]
 8003768:	e3730001 	cmn	r3, #1
 800376c:	e58d2010 	str	r2, [sp, #16]
 8003770:	0a000045 	beq	800388c <__gnu_unwind_pr_common+0x398>
 8003774:	e2850004 	add	r0, r5, #4
 8003778:	ebfffe02 	bl	8002f88 <_Unwind_decode_typeinfo_ptr.isra.0>
 800377c:	e1a02009 	mov	r2, r9
 8003780:	e1a01000 	mov	r1, r0
 8003784:	e28d3010 	add	r3, sp, #16
 8003788:	e1a00004 	mov	r0, r4
 800378c:	e320f000 	nop	{0}
 8003790:	e3500000 	cmp	r0, #0
 8003794:	1a000057 	bne	80038f8 <__gnu_unwind_pr_common+0x404>
 8003798:	e2855008 	add	r5, r5, #8
 800379c:	eaffff6e 	b	800355c <__gnu_unwind_pr_common+0x68>
 80037a0:	e1a00008 	mov	r0, r8
 80037a4:	e28d1014 	add	r1, sp, #20
 80037a8:	eb0001dd 	bl	8003f24 <__gnu_unwind_execute>
 80037ac:	e3500000 	cmp	r0, #0
 80037b0:	1affffc1 	bne	80036bc <__gnu_unwind_pr_common+0x1c8>
 80037b4:	e59d3004 	ldr	r3, [sp, #4]
 80037b8:	e3530000 	cmp	r3, #0
 80037bc:	03a00008 	moveq	r0, #8
 80037c0:	0affffbe 	beq	80036c0 <__gnu_unwind_pr_common+0x1cc>
 80037c4:	e3a0100f 	mov	r1, #15
 80037c8:	e1a00008 	mov	r0, r8
 80037cc:	ebfffee6 	bl	800336c <_Unwind_GetGR>
 80037d0:	e3a0100e 	mov	r1, #14
 80037d4:	e1a02000 	mov	r2, r0
 80037d8:	e1a00008 	mov	r0, r8
 80037dc:	ebffff05 	bl	80033f8 <_Unwind_SetGR>
 80037e0:	e1a00008 	mov	r0, r8
 80037e4:	e3a0100f 	mov	r1, #15
 80037e8:	e59f2138 	ldr	r2, [pc, #312]	; 8003928 <__gnu_unwind_pr_common+0x434>
 80037ec:	ebffff01 	bl	80033f8 <_Unwind_SetGR>
 80037f0:	e3a00007 	mov	r0, #7
 80037f4:	eaffffb1 	b	80036c0 <__gnu_unwind_pr_common+0x1cc>
 80037f8:	e1a00008 	mov	r0, r8
 80037fc:	e3a0100d 	mov	r1, #13
 8003800:	e5949020 	ldr	r9, [r4, #32]
 8003804:	ebfffed8 	bl	800336c <_Unwind_GetGR>
 8003808:	e1590000 	cmp	r9, r0
 800380c:	1affffe1 	bne	8003798 <__gnu_unwind_pr_common+0x2a4>
 8003810:	e5943028 	ldr	r3, [r4, #40]	; 0x28
 8003814:	e1550003 	cmp	r5, r3
 8003818:	1affffde 	bne	8003798 <__gnu_unwind_pr_common+0x2a4>
 800381c:	e1a00005 	mov	r0, r5
 8003820:	ebfffd2d 	bl	8002cdc <selfrel_offset31>
 8003824:	e3a0100f 	mov	r1, #15
 8003828:	e1a02000 	mov	r2, r0
 800382c:	e1a00008 	mov	r0, r8
 8003830:	ebfffef0 	bl	80033f8 <_Unwind_SetGR>
 8003834:	e1a00008 	mov	r0, r8
 8003838:	e1a02004 	mov	r2, r4
 800383c:	e3a01000 	mov	r1, #0
 8003840:	ebfffeec 	bl	80033f8 <_Unwind_SetGR>
 8003844:	e3a00007 	mov	r0, #7
 8003848:	eaffff9c 	b	80036c0 <__gnu_unwind_pr_common+0x1cc>
 800384c:	e5943028 	ldr	r3, [r4, #40]	; 0x28
 8003850:	e1550003 	cmp	r5, r3
 8003854:	1affffad 	bne	8003710 <__gnu_unwind_pr_common+0x21c>
 8003858:	e3a02000 	mov	r2, #0
 800385c:	e2853004 	add	r3, r5, #4
 8003860:	e584202c 	str	r2, [r4, #44]	; 0x2c
 8003864:	e3a02004 	mov	r2, #4
 8003868:	e584b028 	str	fp, [r4, #40]	; 0x28
 800386c:	e5842030 	str	r2, [r4, #48]	; 0x30
 8003870:	e5843034 	str	r3, [r4, #52]	; 0x34
 8003874:	e5953000 	ldr	r3, [r5]
 8003878:	e3530000 	cmp	r3, #0
 800387c:	ba00001a 	blt	80038ec <__gnu_unwind_pr_common+0x3f8>
 8003880:	e3a03001 	mov	r3, #1
 8003884:	e58d3004 	str	r3, [sp, #4]
 8003888:	eaffffa3 	b	800371c <__gnu_unwind_pr_common+0x228>
 800388c:	e1a00008 	mov	r0, r8
 8003890:	e3a0100d 	mov	r1, #13
 8003894:	ebfffeb4 	bl	800336c <_Unwind_GetGR>
 8003898:	e5840020 	str	r0, [r4, #32]
 800389c:	e59d3010 	ldr	r3, [sp, #16]
 80038a0:	e5843024 	str	r3, [r4, #36]	; 0x24
 80038a4:	e5845028 	str	r5, [r4, #40]	; 0x28
 80038a8:	e3a00006 	mov	r0, #6
 80038ac:	eaffff83 	b	80036c0 <__gnu_unwind_pr_common+0x1cc>
 80038b0:	e1a00005 	mov	r0, r5
 80038b4:	ebfffd08 	bl	8002cdc <selfrel_offset31>
 80038b8:	e2855004 	add	r5, r5, #4
 80038bc:	e1a06000 	mov	r6, r0
 80038c0:	e5845038 	str	r5, [r4, #56]	; 0x38
 80038c4:	e1a00004 	mov	r0, r4
 80038c8:	e320f000 	nop	{0}
 80038cc:	e3500000 	cmp	r0, #0
 80038d0:	0affff79 	beq	80036bc <__gnu_unwind_pr_common+0x1c8>
 80038d4:	e1a00008 	mov	r0, r8
 80038d8:	e1a02006 	mov	r2, r6
 80038dc:	e3a0100f 	mov	r1, #15
 80038e0:	ebfffec4 	bl	80033f8 <_Unwind_SetGR>
 80038e4:	e3a00007 	mov	r0, #7
 80038e8:	eaffff74 	b	80036c0 <__gnu_unwind_pr_common+0x1cc>
 80038ec:	e28b0001 	add	r0, fp, #1
 80038f0:	e0850100 	add	r0, r5, r0, lsl #2
 80038f4:	eaffffc9 	b	8003820 <__gnu_unwind_pr_common+0x32c>
 80038f8:	e1a09000 	mov	r9, r0
 80038fc:	e3a0100d 	mov	r1, #13
 8003900:	e1a00008 	mov	r0, r8
 8003904:	ebfffe98 	bl	800336c <_Unwind_GetGR>
 8003908:	e3590002 	cmp	r9, #2
 800390c:	e5840020 	str	r0, [r4, #32]
 8003910:	1affffe1 	bne	800389c <__gnu_unwind_pr_common+0x3a8>
 8003914:	e59d2010 	ldr	r2, [sp, #16]
 8003918:	e1a03004 	mov	r3, r4
 800391c:	e5a3202c 	str	r2, [r3, #44]!	; 0x2c
 8003920:	e5843024 	str	r3, [r4, #36]	; 0x24
 8003924:	eaffffde 	b	80038a4 <__gnu_unwind_pr_common+0x3b0>
 8003928:	00000000 	.word	0x00000000

0800392c <__aeabi_unwind_cpp_pr0>:
 800392c:	e3a03000 	mov	r3, #0
 8003930:	eafffeef 	b	80034f4 <__gnu_unwind_pr_common>

08003934 <__aeabi_unwind_cpp_pr1>:
 8003934:	e3a03001 	mov	r3, #1
 8003938:	eafffeed 	b	80034f4 <__gnu_unwind_pr_common>

0800393c <__aeabi_unwind_cpp_pr2>:
 800393c:	e3a03002 	mov	r3, #2
 8003940:	eafffeeb 	b	80034f4 <__gnu_unwind_pr_common>

08003944 <_Unwind_VRS_Pop>:
 8003944:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
 8003948:	e1a04000 	mov	r4, r0
 800394c:	e24dde11 	sub	sp, sp, #272	; 0x110
 8003950:	e3510004 	cmp	r1, #4
 8003954:	979ff101 	ldrls	pc, [pc, r1, lsl #2]
 8003958:	ea000006 	b	8003978 <_Unwind_VRS_Pop+0x34>
 800395c:	08003b70 	.word	0x08003b70
 8003960:	080039f0 	.word	0x080039f0
 8003964:	08003978 	.word	0x08003978
 8003968:	08003970 	.word	0x08003970
 800396c:	08003988 	.word	0x08003988
 8003970:	e3530003 	cmp	r3, #3
 8003974:	0a00008f 	beq	8003bb8 <_Unwind_VRS_Pop+0x274>
 8003978:	e3a00002 	mov	r0, #2
 800397c:	e28dde11 	add	sp, sp, #272	; 0x110
 8003980:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
 8003984:	e12fff1e 	bx	lr
 8003988:	e3520010 	cmp	r2, #16
 800398c:	93530000 	cmpls	r3, #0
 8003990:	1afffff8 	bne	8003978 <_Unwind_VRS_Pop+0x34>
 8003994:	e5903000 	ldr	r3, [r0]
 8003998:	e3130010 	tst	r3, #16
 800399c:	1a0000a5 	bne	8003c38 <_Unwind_VRS_Pop+0x2f4>
 80039a0:	e28d5088 	add	r5, sp, #136	; 0x88
 80039a4:	e1a00005 	mov	r0, r5
 80039a8:	e58d2004 	str	r2, [sp, #4]
 80039ac:	eb000105 	bl	8003dc8 <__gnu_Unwind_Save_WMMXC>
 80039b0:	e5941038 	ldr	r1, [r4, #56]	; 0x38
 80039b4:	e59d2004 	ldr	r2, [sp, #4]
 80039b8:	e3a03000 	mov	r3, #0
 80039bc:	e3a00001 	mov	r0, #1
 80039c0:	e012c310 	ands	ip, r2, r0, lsl r3
 80039c4:	1591c000 	ldrne	ip, [r1]
 80039c8:	1785c103 	strne	ip, [r5, r3, lsl #2]
 80039cc:	e2833001 	add	r3, r3, #1
 80039d0:	12811004 	addne	r1, r1, #4
 80039d4:	e3530004 	cmp	r3, #4
 80039d8:	1afffff8 	bne	80039c0 <_Unwind_VRS_Pop+0x7c>
 80039dc:	e1a00005 	mov	r0, r5
 80039e0:	e5841038 	str	r1, [r4, #56]	; 0x38
 80039e4:	eb0000f2 	bl	8003db4 <__gnu_Unwind_Restore_WMMXC>
 80039e8:	e3a00000 	mov	r0, #0
 80039ec:	eaffffe2 	b	800397c <_Unwind_VRS_Pop+0x38>
 80039f0:	e20310fb 	and	r1, r3, #251	; 0xfb
 80039f4:	e3510001 	cmp	r1, #1
 80039f8:	1affffde 	bne	8003978 <_Unwind_VRS_Pop+0x34>
 80039fc:	e1a06802 	lsl	r6, r2, #16
 8003a00:	e3530001 	cmp	r3, #1
 8003a04:	e1a06826 	lsr	r6, r6, #16
 8003a08:	e1a05822 	lsr	r5, r2, #16
 8003a0c:	e0862005 	add	r2, r6, r5
 8003a10:	13a01020 	movne	r1, #32
 8003a14:	03a01010 	moveq	r1, #16
 8003a18:	e1510002 	cmp	r1, r2
 8003a1c:	3affffd5 	bcc	8003978 <_Unwind_VRS_Pop+0x34>
 8003a20:	e2530001 	subs	r0, r3, #1
 8003a24:	e2707000 	rsbs	r7, r0, #0
 8003a28:	e0b77000 	adcs	r7, r7, r0
 8003a2c:	e355000f 	cmp	r5, #15
 8003a30:	93a01000 	movls	r1, #0
 8003a34:	83a01001 	movhi	r1, #1
 8003a38:	e1170001 	tst	r7, r1
 8003a3c:	1affffcd 	bne	8003978 <_Unwind_VRS_Pop+0x34>
 8003a40:	e3510000 	cmp	r1, #0
 8003a44:	11a08006 	movne	r8, r6
 8003a48:	1a000002 	bne	8003a58 <_Unwind_VRS_Pop+0x114>
 8003a4c:	e3520010 	cmp	r2, #16
 8003a50:	9a000082 	bls	8003c60 <_Unwind_VRS_Pop+0x31c>
 8003a54:	e2428010 	sub	r8, r2, #16
 8003a58:	e3580000 	cmp	r8, #0
 8003a5c:	13530005 	cmpne	r3, #5
 8003a60:	1affffc4 	bne	8003978 <_Unwind_VRS_Pop+0x34>
 8003a64:	e355000f 	cmp	r5, #15
 8003a68:	8a00000a 	bhi	8003a98 <_Unwind_VRS_Pop+0x154>
 8003a6c:	e5942000 	ldr	r2, [r4]
 8003a70:	e3120001 	tst	r2, #1
 8003a74:	0a000007 	beq	8003a98 <_Unwind_VRS_Pop+0x154>
 8003a78:	e3530005 	cmp	r3, #5
 8003a7c:	e3c23001 	bic	r3, r2, #1
 8003a80:	e5843000 	str	r3, [r4]
 8003a84:	0a000090 	beq	8003ccc <_Unwind_VRS_Pop+0x388>
 8003a88:	e3c22003 	bic	r2, r2, #3
 8003a8c:	e1a00004 	mov	r0, r4
 8003a90:	e4802048 	str	r2, [r0], #72	; 0x48
 8003a94:	eb00009a 	bl	8003d04 <__gnu_Unwind_Save_VFP>
 8003a98:	e3580000 	cmp	r8, #0
 8003a9c:	0a000002 	beq	8003aac <_Unwind_VRS_Pop+0x168>
 8003aa0:	e5943000 	ldr	r3, [r4]
 8003aa4:	e3130004 	tst	r3, #4
 8003aa8:	1a00007d 	bne	8003ca4 <_Unwind_VRS_Pop+0x360>
 8003aac:	e3570000 	cmp	r7, #0
 8003ab0:	1a000080 	bne	8003cb8 <_Unwind_VRS_Pop+0x374>
 8003ab4:	e355000f 	cmp	r5, #15
 8003ab8:	9a000072 	bls	8003c88 <_Unwind_VRS_Pop+0x344>
 8003abc:	e3580000 	cmp	r8, #0
 8003ac0:	1a000073 	bne	8003c94 <_Unwind_VRS_Pop+0x350>
 8003ac4:	e594c038 	ldr	ip, [r4, #56]	; 0x38
 8003ac8:	e3560000 	cmp	r6, #0
 8003acc:	e1a0200c 	mov	r2, ip
 8003ad0:	da00000b 	ble	8003b04 <_Unwind_VRS_Pop+0x1c0>
 8003ad4:	e28d3088 	add	r3, sp, #136	; 0x88
 8003ad8:	e0830185 	add	r0, r3, r5, lsl #3
 8003adc:	e1a06086 	lsl	r6, r6, #1
 8003ae0:	e06c0000 	rsb	r0, ip, r0
 8003ae4:	e2461001 	sub	r1, r6, #1
 8003ae8:	e24c3004 	sub	r3, ip, #4
 8003aec:	e2411001 	sub	r1, r1, #1
 8003af0:	e5b32004 	ldr	r2, [r3, #4]!
 8003af4:	e3710001 	cmn	r1, #1
 8003af8:	e7802003 	str	r2, [r0, r3]
 8003afc:	1afffffa 	bne	8003aec <_Unwind_VRS_Pop+0x1a8>
 8003b00:	e08c2106 	add	r2, ip, r6, lsl #2
 8003b04:	e3580000 	cmp	r8, #0
 8003b08:	0a00000e 	beq	8003b48 <_Unwind_VRS_Pop+0x204>
 8003b0c:	e28d3e11 	add	r3, sp, #272	; 0x110
 8003b10:	e3550010 	cmp	r5, #16
 8003b14:	21a0c005 	movcs	ip, r5
 8003b18:	33a0c010 	movcc	ip, #16
 8003b1c:	e083c18c 	add	ip, r3, ip, lsl #3
 8003b20:	e1a01088 	lsl	r1, r8, #1
 8003b24:	e24ccf62 	sub	ip, ip, #392	; 0x188
 8003b28:	e2413001 	sub	r3, r1, #1
 8003b2c:	e1a00002 	mov	r0, r2
 8003b30:	e2433001 	sub	r3, r3, #1
 8003b34:	e4906004 	ldr	r6, [r0], #4
 8003b38:	e3730001 	cmn	r3, #1
 8003b3c:	e48c6004 	str	r6, [ip], #4
 8003b40:	1afffffa 	bne	8003b30 <_Unwind_VRS_Pop+0x1ec>
 8003b44:	e0822101 	add	r2, r2, r1, lsl #2
 8003b48:	e3570000 	cmp	r7, #0
 8003b4c:	1a000045 	bne	8003c68 <_Unwind_VRS_Pop+0x324>
 8003b50:	e355000f 	cmp	r5, #15
 8003b54:	e5842038 	str	r2, [r4, #56]	; 0x38
 8003b58:	9a000047 	bls	8003c7c <_Unwind_VRS_Pop+0x338>
 8003b5c:	e3580000 	cmp	r8, #0
 8003b60:	128d0008 	addne	r0, sp, #8
 8003b64:	1b00006c 	blne	8003d1c <__gnu_Unwind_Restore_VFP_D_16_to_31>
 8003b68:	e3a00000 	mov	r0, #0
 8003b6c:	eaffff82 	b	800397c <_Unwind_VRS_Pop+0x38>
 8003b70:	e3530000 	cmp	r3, #0
 8003b74:	1affff7f 	bne	8003978 <_Unwind_VRS_Pop+0x34>
 8003b78:	e1a0c802 	lsl	ip, r2, #16
 8003b7c:	e5901038 	ldr	r1, [r0, #56]	; 0x38
 8003b80:	e1a0c82c 	lsr	ip, ip, #16
 8003b84:	e3a00001 	mov	r0, #1
 8003b88:	e01c5310 	ands	r5, ip, r0, lsl r3
 8003b8c:	15916000 	ldrne	r6, [r1]
 8003b90:	10845103 	addne	r5, r4, r3, lsl #2
 8003b94:	e2833001 	add	r3, r3, #1
 8003b98:	15856004 	strne	r6, [r5, #4]
 8003b9c:	12811004 	addne	r1, r1, #4
 8003ba0:	e3530010 	cmp	r3, #16
 8003ba4:	1afffff7 	bne	8003b88 <_Unwind_VRS_Pop+0x244>
 8003ba8:	e2120a02 	ands	r0, r2, #8192	; 0x2000
 8003bac:	05841038 	streq	r1, [r4, #56]	; 0x38
 8003bb0:	0affff71 	beq	800397c <_Unwind_VRS_Pop+0x38>
 8003bb4:	eaffffeb 	b	8003b68 <_Unwind_VRS_Pop+0x224>
 8003bb8:	e1a07802 	lsl	r7, r2, #16
 8003bbc:	e1a07827 	lsr	r7, r7, #16
 8003bc0:	e1a06822 	lsr	r6, r2, #16
 8003bc4:	e0873006 	add	r3, r7, r6
 8003bc8:	e3530010 	cmp	r3, #16
 8003bcc:	8affff69 	bhi	8003978 <_Unwind_VRS_Pop+0x34>
 8003bd0:	e5903000 	ldr	r3, [r0]
 8003bd4:	e3130008 	tst	r3, #8
 8003bd8:	1a00001c 	bne	8003c50 <_Unwind_VRS_Pop+0x30c>
 8003bdc:	e28d5088 	add	r5, sp, #136	; 0x88
 8003be0:	e1a00005 	mov	r0, r5
 8003be4:	eb000061 	bl	8003d70 <__gnu_Unwind_Save_WMMXD>
 8003be8:	e1a07087 	lsl	r7, r7, #1
 8003bec:	e594c038 	ldr	ip, [r4, #56]	; 0x38
 8003bf0:	e3570000 	cmp	r7, #0
 8003bf4:	e0850186 	add	r0, r5, r6, lsl #3
 8003bf8:	e2473001 	sub	r3, r7, #1
 8003bfc:	e1a0200c 	mov	r2, ip
 8003c00:	0a000007 	beq	8003c24 <_Unwind_VRS_Pop+0x2e0>
 8003c04:	e06c0000 	rsb	r0, ip, r0
 8003c08:	e24c2004 	sub	r2, ip, #4
 8003c0c:	e2433001 	sub	r3, r3, #1
 8003c10:	e5b21004 	ldr	r1, [r2, #4]!
 8003c14:	e3730001 	cmn	r3, #1
 8003c18:	e7801002 	str	r1, [r0, r2]
 8003c1c:	1afffffa 	bne	8003c0c <_Unwind_VRS_Pop+0x2c8>
 8003c20:	e08c2107 	add	r2, ip, r7, lsl #2
 8003c24:	e1a00005 	mov	r0, r5
 8003c28:	e5842038 	str	r2, [r4, #56]	; 0x38
 8003c2c:	eb00003e 	bl	8003d2c <__gnu_Unwind_Restore_WMMXD>
 8003c30:	e3a00000 	mov	r0, #0
 8003c34:	eaffff50 	b	800397c <_Unwind_VRS_Pop+0x38>
 8003c38:	e3c33010 	bic	r3, r3, #16
 8003c3c:	e48031d0 	str	r3, [r0], #464	; 0x1d0
 8003c40:	e58d2004 	str	r2, [sp, #4]
 8003c44:	eb00005f 	bl	8003dc8 <__gnu_Unwind_Save_WMMXC>
 8003c48:	e59d2004 	ldr	r2, [sp, #4]
 8003c4c:	eaffff53 	b	80039a0 <_Unwind_VRS_Pop+0x5c>
 8003c50:	e3c33008 	bic	r3, r3, #8
 8003c54:	e4803150 	str	r3, [r0], #336	; 0x150
 8003c58:	eb000044 	bl	8003d70 <__gnu_Unwind_Save_WMMXD>
 8003c5c:	eaffffde 	b	8003bdc <_Unwind_VRS_Pop+0x298>
 8003c60:	e1a08001 	mov	r8, r1
 8003c64:	eaffff7e 	b	8003a64 <_Unwind_VRS_Pop+0x120>
 8003c68:	e2822004 	add	r2, r2, #4
 8003c6c:	e5842038 	str	r2, [r4, #56]	; 0x38
 8003c70:	e28d0088 	add	r0, sp, #136	; 0x88
 8003c74:	eb000020 	bl	8003cfc <__gnu_Unwind_Restore_VFP>
 8003c78:	eaffffba 	b	8003b68 <_Unwind_VRS_Pop+0x224>
 8003c7c:	e28d0088 	add	r0, sp, #136	; 0x88
 8003c80:	eb000021 	bl	8003d0c <__gnu_Unwind_Restore_VFP_D>
 8003c84:	eaffffb4 	b	8003b5c <_Unwind_VRS_Pop+0x218>
 8003c88:	e28d0088 	add	r0, sp, #136	; 0x88
 8003c8c:	eb000020 	bl	8003d14 <__gnu_Unwind_Save_VFP_D>
 8003c90:	eaffff89 	b	8003abc <_Unwind_VRS_Pop+0x178>
 8003c94:	e28d0008 	add	r0, sp, #8
 8003c98:	eb000021 	bl	8003d24 <__gnu_Unwind_Save_VFP_D_16_to_31>
 8003c9c:	e2656010 	rsb	r6, r5, #16
 8003ca0:	eaffff87 	b	8003ac4 <_Unwind_VRS_Pop+0x180>
 8003ca4:	e3c33004 	bic	r3, r3, #4
 8003ca8:	e1a00004 	mov	r0, r4
 8003cac:	e48030d0 	str	r3, [r0], #208	; 0xd0
 8003cb0:	eb00001b 	bl	8003d24 <__gnu_Unwind_Save_VFP_D_16_to_31>
 8003cb4:	eaffff7c 	b	8003aac <_Unwind_VRS_Pop+0x168>
 8003cb8:	e28d0088 	add	r0, sp, #136	; 0x88
 8003cbc:	eb000010 	bl	8003d04 <__gnu_Unwind_Save_VFP>
 8003cc0:	e3580000 	cmp	r8, #0
 8003cc4:	1afffff4 	bne	8003c9c <_Unwind_VRS_Pop+0x358>
 8003cc8:	eaffff7d 	b	8003ac4 <_Unwind_VRS_Pop+0x180>
 8003ccc:	e3833002 	orr	r3, r3, #2
 8003cd0:	e1a00004 	mov	r0, r4
 8003cd4:	e4803048 	str	r3, [r0], #72	; 0x48
 8003cd8:	eb00000d 	bl	8003d14 <__gnu_Unwind_Save_VFP_D>
 8003cdc:	eaffff6d 	b	8003a98 <_Unwind_VRS_Pop+0x154>

08003ce0 <__restore_core_regs>:
 8003ce0:	e2801034 	add	r1, r0, #52	; 0x34
 8003ce4:	e8910038 	ldm	r1, {r3, r4, r5}
 8003ce8:	e1a02005 	mov	r2, r5
 8003cec:	e92d001c 	push	{r2, r3, r4}
 8003cf0:	e8900fff 	ldm	r0, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp}
 8003cf4:	e89d7000 	ldm	sp, {ip, sp, lr}
 8003cf8:	e12fff1c 	bx	ip

08003cfc <__gnu_Unwind_Restore_VFP>:
 8003cfc:	ec900b21 	fldmiax	r0, {d0-d15}	;@ Deprecated
 8003d00:	e12fff1e 	bx	lr

08003d04 <__gnu_Unwind_Save_VFP>:
 8003d04:	ec800b21 	fstmiax	r0, {d0-d15}	;@ Deprecated
 8003d08:	e12fff1e 	bx	lr

08003d0c <__gnu_Unwind_Restore_VFP_D>:
 8003d0c:	ec900b20 	vldmia	r0, {d0-d15}
 8003d10:	e12fff1e 	bx	lr

08003d14 <__gnu_Unwind_Save_VFP_D>:
 8003d14:	ec800b20 	vstmia	r0, {d0-d15}
 8003d18:	e12fff1e 	bx	lr

08003d1c <__gnu_Unwind_Restore_VFP_D_16_to_31>:
 8003d1c:	ecd00b20 	vldmia	r0, {d16-d31}
 8003d20:	e12fff1e 	bx	lr

08003d24 <__gnu_Unwind_Save_VFP_D_16_to_31>:
 8003d24:	ecc00b20 	vstmia	r0, {d16-d31}
 8003d28:	e12fff1e 	bx	lr

08003d2c <__gnu_Unwind_Restore_WMMXD>:
 8003d2c:	ecf00102 	ldfe	f0, [r0], #8
 8003d30:	ecf01102 	ldfe	f1, [r0], #8
 8003d34:	ecf02102 	ldfe	f2, [r0], #8
 8003d38:	ecf03102 	ldfe	f3, [r0], #8
 8003d3c:	ecf04102 	ldfe	f4, [r0], #8
 8003d40:	ecf05102 	ldfe	f5, [r0], #8
 8003d44:	ecf06102 	ldfe	f6, [r0], #8
 8003d48:	ecf07102 	ldfe	f7, [r0], #8
 8003d4c:	ecf08102 	ldfp	f0, [r0], #8
 8003d50:	ecf09102 	ldfp	f1, [r0], #8
 8003d54:	ecf0a102 	ldfp	f2, [r0], #8
 8003d58:	ecf0b102 	ldfp	f3, [r0], #8
 8003d5c:	ecf0c102 	ldfp	f4, [r0], #8
 8003d60:	ecf0d102 	ldfp	f5, [r0], #8
 8003d64:	ecf0e102 	ldfp	f6, [r0], #8
 8003d68:	ecf0f102 	ldfp	f7, [r0], #8
 8003d6c:	e12fff1e 	bx	lr

08003d70 <__gnu_Unwind_Save_WMMXD>:
 8003d70:	ece00102 	stfe	f0, [r0], #8
 8003d74:	ece01102 	stfe	f1, [r0], #8
 8003d78:	ece02102 	stfe	f2, [r0], #8
 8003d7c:	ece03102 	stfe	f3, [r0], #8
 8003d80:	ece04102 	stfe	f4, [r0], #8
 8003d84:	ece05102 	stfe	f5, [r0], #8
 8003d88:	ece06102 	stfe	f6, [r0], #8
 8003d8c:	ece07102 	stfe	f7, [r0], #8
 8003d90:	ece08102 	stfp	f0, [r0], #8
 8003d94:	ece09102 	stfp	f1, [r0], #8
 8003d98:	ece0a102 	stfp	f2, [r0], #8
 8003d9c:	ece0b102 	stfp	f3, [r0], #8
 8003da0:	ece0c102 	stfp	f4, [r0], #8
 8003da4:	ece0d102 	stfp	f5, [r0], #8
 8003da8:	ece0e102 	stfp	f6, [r0], #8
 8003dac:	ece0f102 	stfp	f7, [r0], #8
 8003db0:	e12fff1e 	bx	lr

08003db4 <__gnu_Unwind_Restore_WMMXC>:
 8003db4:	fcb08101 	ldc2	1, cr8, [r0], #4
 8003db8:	fcb09101 	ldc2	1, cr9, [r0], #4
 8003dbc:	fcb0a101 	ldc2	1, cr10, [r0], #4
 8003dc0:	fcb0b101 	ldc2	1, cr11, [r0], #4
 8003dc4:	e12fff1e 	bx	lr

08003dc8 <__gnu_Unwind_Save_WMMXC>:
 8003dc8:	fca08101 	stc2	1, cr8, [r0], #4
 8003dcc:	fca09101 	stc2	1, cr9, [r0], #4
 8003dd0:	fca0a101 	stc2	1, cr10, [r0], #4
 8003dd4:	fca0b101 	stc2	1, cr11, [r0], #4
 8003dd8:	e12fff1e 	bx	lr

08003ddc <_Unwind_RaiseException>:
 8003ddc:	e92de000 	push	{sp, lr, pc}
 8003de0:	e92d1fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
 8003de4:	e3a03000 	mov	r3, #0
 8003de8:	e92d000c 	push	{r2, r3}
 8003dec:	e28d1004 	add	r1, sp, #4
 8003df0:	ebfffce3 	bl	8003184 <__gnu_Unwind_RaiseException>
 8003df4:	e59de040 	ldr	lr, [sp, #64]	; 0x40
 8003df8:	e28dd048 	add	sp, sp, #72	; 0x48
 8003dfc:	e12fff1e 	bx	lr

08003e00 <_Unwind_Resume>:
 8003e00:	e92de000 	push	{sp, lr, pc}
 8003e04:	e92d1fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
 8003e08:	e3a03000 	mov	r3, #0
 8003e0c:	e92d000c 	push	{r2, r3}
 8003e10:	e28d1004 	add	r1, sp, #4
 8003e14:	ebfffd0f 	bl	8003258 <__gnu_Unwind_Resume>
 8003e18:	e59de040 	ldr	lr, [sp, #64]	; 0x40
 8003e1c:	e28dd048 	add	sp, sp, #72	; 0x48
 8003e20:	e12fff1e 	bx	lr

08003e24 <_Unwind_Resume_or_Rethrow>:
 8003e24:	e92de000 	push	{sp, lr, pc}
 8003e28:	e92d1fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
 8003e2c:	e3a03000 	mov	r3, #0
 8003e30:	e92d000c 	push	{r2, r3}
 8003e34:	e28d1004 	add	r1, sp, #4
 8003e38:	ebfffd23 	bl	80032cc <__gnu_Unwind_Resume_or_Rethrow>
 8003e3c:	e59de040 	ldr	lr, [sp, #64]	; 0x40
 8003e40:	e28dd048 	add	sp, sp, #72	; 0x48
 8003e44:	e12fff1e 	bx	lr

08003e48 <_Unwind_ForcedUnwind>:
 8003e48:	e92de000 	push	{sp, lr, pc}
 8003e4c:	e92d1fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
 8003e50:	e3a03000 	mov	r3, #0
 8003e54:	e92d000c 	push	{r2, r3}
 8003e58:	e28d3004 	add	r3, sp, #4
 8003e5c:	ebfffcf4 	bl	8003234 <__gnu_Unwind_ForcedUnwind>
 8003e60:	e59de040 	ldr	lr, [sp, #64]	; 0x40
 8003e64:	e28dd048 	add	sp, sp, #72	; 0x48
 8003e68:	e12fff1e 	bx	lr

08003e6c <_Unwind_Backtrace>:
 8003e6c:	e92de000 	push	{sp, lr, pc}
 8003e70:	e92d1fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
 8003e74:	e3a03000 	mov	r3, #0
 8003e78:	e92d000c 	push	{r2, r3}
 8003e7c:	e28d2004 	add	r2, sp, #4
 8003e80:	ebfffd68 	bl	8003428 <__gnu_Unwind_Backtrace>
 8003e84:	e59de040 	ldr	lr, [sp, #64]	; 0x40
 8003e88:	e28dd048 	add	sp, sp, #72	; 0x48
 8003e8c:	e12fff1e 	bx	lr

08003e90 <next_unwind_byte>:
 8003e90:	e5d03008 	ldrb	r3, [r0, #8]
 8003e94:	e3530000 	cmp	r3, #0
 8003e98:	1a000004 	bne	8003eb0 <next_unwind_byte+0x20>
 8003e9c:	e5d03009 	ldrb	r3, [r0, #9]
 8003ea0:	e3530000 	cmp	r3, #0
 8003ea4:	1a000008 	bne	8003ecc <next_unwind_byte+0x3c>
 8003ea8:	e3a000b0 	mov	r0, #176	; 0xb0
 8003eac:	e12fff1e 	bx	lr
 8003eb0:	e2433001 	sub	r3, r3, #1
 8003eb4:	e5c03008 	strb	r3, [r0, #8]
 8003eb8:	e5903000 	ldr	r3, [r0]
 8003ebc:	e1a02403 	lsl	r2, r3, #8
 8003ec0:	e5802000 	str	r2, [r0]
 8003ec4:	e1a00c23 	lsr	r0, r3, #24
 8003ec8:	e12fff1e 	bx	lr
 8003ecc:	e2433001 	sub	r3, r3, #1
 8003ed0:	e5902004 	ldr	r2, [r0, #4]
 8003ed4:	e5c03009 	strb	r3, [r0, #9]
 8003ed8:	e2822004 	add	r2, r2, #4
 8003edc:	e5123004 	ldr	r3, [r2, #-4]
 8003ee0:	e3a01003 	mov	r1, #3
 8003ee4:	e5802004 	str	r2, [r0, #4]
 8003ee8:	e5c01008 	strb	r1, [r0, #8]
 8003eec:	eafffff2 	b	8003ebc <next_unwind_byte+0x2c>

08003ef0 <_Unwind_GetGR.constprop.0>:
 8003ef0:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 8003ef4:	e24dd014 	sub	sp, sp, #20
 8003ef8:	e28d300c 	add	r3, sp, #12
 8003efc:	e3a01000 	mov	r1, #0
 8003f00:	e58d3000 	str	r3, [sp]
 8003f04:	e3a0200c 	mov	r2, #12
 8003f08:	e1a03001 	mov	r3, r1
 8003f0c:	ebfffcff 	bl	8003310 <_Unwind_VRS_Get>
 8003f10:	e59d000c 	ldr	r0, [sp, #12]
 8003f14:	e28dd014 	add	sp, sp, #20
 8003f18:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 8003f1c:	e12fff1e 	bx	lr

08003f20 <unwind_UCB_from_context>:
 8003f20:	eafffff2 	b	8003ef0 <_Unwind_GetGR.constprop.0>

08003f24 <__gnu_unwind_execute>:
 8003f24:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
 8003f28:	e1a06000 	mov	r6, r0
 8003f2c:	e24dd010 	sub	sp, sp, #16
 8003f30:	e1a05001 	mov	r5, r1
 8003f34:	e3a07000 	mov	r7, #0
 8003f38:	e1a00005 	mov	r0, r5
 8003f3c:	ebffffd3 	bl	8003e90 <next_unwind_byte>
 8003f40:	e35000b0 	cmp	r0, #176	; 0xb0
 8003f44:	e1a04000 	mov	r4, r0
 8003f48:	0a00007d 	beq	8004144 <__gnu_unwind_execute+0x220>
 8003f4c:	e2101080 	ands	r1, r0, #128	; 0x80
 8003f50:	0a00001a 	beq	8003fc0 <__gnu_unwind_execute+0x9c>
 8003f54:	e20020f0 	and	r2, r0, #240	; 0xf0
 8003f58:	e3520080 	cmp	r2, #128	; 0x80
 8003f5c:	0a000054 	beq	80040b4 <__gnu_unwind_execute+0x190>
 8003f60:	e3520090 	cmp	r2, #144	; 0x90
 8003f64:	0a00002b 	beq	8004018 <__gnu_unwind_execute+0xf4>
 8003f68:	e35200a0 	cmp	r2, #160	; 0xa0
 8003f6c:	0a000034 	beq	8004044 <__gnu_unwind_execute+0x120>
 8003f70:	e35200b0 	cmp	r2, #176	; 0xb0
 8003f74:	0a000040 	beq	800407c <__gnu_unwind_execute+0x158>
 8003f78:	e35200c0 	cmp	r2, #192	; 0xc0
 8003f7c:	0a00005e 	beq	80040fc <__gnu_unwind_execute+0x1d8>
 8003f80:	e20030f8 	and	r3, r0, #248	; 0xf8
 8003f84:	e35300d0 	cmp	r3, #208	; 0xd0
 8003f88:	1a000008 	bne	8003fb0 <__gnu_unwind_execute+0x8c>
 8003f8c:	e2004007 	and	r4, r0, #7
 8003f90:	e2842001 	add	r2, r4, #1
 8003f94:	e3822702 	orr	r2, r2, #524288	; 0x80000
 8003f98:	e1a00006 	mov	r0, r6
 8003f9c:	e3a01001 	mov	r1, #1
 8003fa0:	e3a03005 	mov	r3, #5
 8003fa4:	ebfffe66 	bl	8003944 <_Unwind_VRS_Pop>
 8003fa8:	e3500000 	cmp	r0, #0
 8003fac:	0affffe1 	beq	8003f38 <__gnu_unwind_execute+0x14>
 8003fb0:	e3a00009 	mov	r0, #9
 8003fb4:	e28dd010 	add	sp, sp, #16
 8003fb8:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
 8003fbc:	e12fff1e 	bx	lr
 8003fc0:	e28d300c 	add	r3, sp, #12
 8003fc4:	e1a08100 	lsl	r8, r0, #2
 8003fc8:	e58d3000 	str	r3, [sp]
 8003fcc:	e1a00006 	mov	r0, r6
 8003fd0:	e1a03001 	mov	r3, r1
 8003fd4:	e3a0200d 	mov	r2, #13
 8003fd8:	ebfffccc 	bl	8003310 <_Unwind_VRS_Get>
 8003fdc:	e20880ff 	and	r8, r8, #255	; 0xff
 8003fe0:	e59d300c 	ldr	r3, [sp, #12]
 8003fe4:	e2888004 	add	r8, r8, #4
 8003fe8:	e3140040 	tst	r4, #64	; 0x40
 8003fec:	10688003 	rsbne	r8, r8, r3
 8003ff0:	00838008 	addeq	r8, r3, r8
 8003ff4:	e58d800c 	str	r8, [sp, #12]
 8003ff8:	e28d300c 	add	r3, sp, #12
 8003ffc:	e3a01000 	mov	r1, #0
 8004000:	e58d3000 	str	r3, [sp]
 8004004:	e1a00006 	mov	r0, r6
 8004008:	e1a03001 	mov	r3, r1
 800400c:	e3a0200d 	mov	r2, #13
 8004010:	ebfffce1 	bl	800339c <_Unwind_VRS_Set>
 8004014:	eaffffc7 	b	8003f38 <__gnu_unwind_execute+0x14>
 8004018:	e200300d 	and	r3, r0, #13
 800401c:	e353000d 	cmp	r3, #13
 8004020:	0affffe2 	beq	8003fb0 <__gnu_unwind_execute+0x8c>
 8004024:	e28d300c 	add	r3, sp, #12
 8004028:	e3a01000 	mov	r1, #0
 800402c:	e58d3000 	str	r3, [sp]
 8004030:	e200200f 	and	r2, r0, #15
 8004034:	e1a03001 	mov	r3, r1
 8004038:	e1a00006 	mov	r0, r6
 800403c:	ebfffcb3 	bl	8003310 <_Unwind_VRS_Get>
 8004040:	eaffffec 	b	8003ff8 <__gnu_unwind_execute+0xd4>
 8004044:	e1e02000 	mvn	r2, r0
 8004048:	e3a03eff 	mov	r3, #4080	; 0xff0
 800404c:	e2022007 	and	r2, r2, #7
 8004050:	e1a02253 	asr	r2, r3, r2
 8004054:	e3100008 	tst	r0, #8
 8004058:	e0022003 	and	r2, r2, r3
 800405c:	13822901 	orrne	r2, r2, #16384	; 0x4000
 8004060:	e3a01000 	mov	r1, #0
 8004064:	e1a03001 	mov	r3, r1
 8004068:	e1a00006 	mov	r0, r6
 800406c:	ebfffe34 	bl	8003944 <_Unwind_VRS_Pop>
 8004070:	e3500000 	cmp	r0, #0
 8004074:	1affffcd 	bne	8003fb0 <__gnu_unwind_execute+0x8c>
 8004078:	eaffffae 	b	8003f38 <__gnu_unwind_execute+0x14>
 800407c:	e35000b1 	cmp	r0, #177	; 0xb1
 8004080:	0a000041 	beq	800418c <__gnu_unwind_execute+0x268>
 8004084:	e35000b2 	cmp	r0, #178	; 0xb2
 8004088:	0a000046 	beq	80041a8 <__gnu_unwind_execute+0x284>
 800408c:	e35000b3 	cmp	r0, #179	; 0xb3
 8004090:	0a000066 	beq	8004230 <__gnu_unwind_execute+0x30c>
 8004094:	e20030fc 	and	r3, r0, #252	; 0xfc
 8004098:	e35300b4 	cmp	r3, #180	; 0xb4
 800409c:	0affffc3 	beq	8003fb0 <__gnu_unwind_execute+0x8c>
 80040a0:	e2002007 	and	r2, r0, #7
 80040a4:	e2822001 	add	r2, r2, #1
 80040a8:	e3a01001 	mov	r1, #1
 80040ac:	e3822702 	orr	r2, r2, #524288	; 0x80000
 80040b0:	eaffffeb 	b	8004064 <__gnu_unwind_execute+0x140>
 80040b4:	e1a00005 	mov	r0, r5
 80040b8:	ebffff74 	bl	8003e90 <next_unwind_byte>
 80040bc:	e1a04404 	lsl	r4, r4, #8
 80040c0:	e1804004 	orr	r4, r0, r4
 80040c4:	e3540902 	cmp	r4, #32768	; 0x8000
 80040c8:	0affffb8 	beq	8003fb0 <__gnu_unwind_execute+0x8c>
 80040cc:	e1a02a04 	lsl	r2, r4, #20
 80040d0:	e3a01000 	mov	r1, #0
 80040d4:	e1a02822 	lsr	r2, r2, #16
 80040d8:	e1a03001 	mov	r3, r1
 80040dc:	e1a00006 	mov	r0, r6
 80040e0:	ebfffe17 	bl	8003944 <_Unwind_VRS_Pop>
 80040e4:	e3500000 	cmp	r0, #0
 80040e8:	e1a04204 	lsl	r4, r4, #4
 80040ec:	1affffaf 	bne	8003fb0 <__gnu_unwind_execute+0x8c>
 80040f0:	e3140902 	tst	r4, #32768	; 0x8000
 80040f4:	13a07001 	movne	r7, #1
 80040f8:	eaffff8e 	b	8003f38 <__gnu_unwind_execute+0x14>
 80040fc:	e35000c6 	cmp	r0, #198	; 0xc6
 8004100:	0a000052 	beq	8004250 <__gnu_unwind_execute+0x32c>
 8004104:	e35000c7 	cmp	r0, #199	; 0xc7
 8004108:	0a000058 	beq	8004270 <__gnu_unwind_execute+0x34c>
 800410c:	e20030f8 	and	r3, r0, #248	; 0xf8
 8004110:	e35300c0 	cmp	r3, #192	; 0xc0
 8004114:	0a000061 	beq	80042a0 <__gnu_unwind_execute+0x37c>
 8004118:	e35000c8 	cmp	r0, #200	; 0xc8
 800411c:	0a000064 	beq	80042b4 <__gnu_unwind_execute+0x390>
 8004120:	e35000c9 	cmp	r0, #201	; 0xc9
 8004124:	1affffa1 	bne	8003fb0 <__gnu_unwind_execute+0x8c>
 8004128:	e1a00005 	mov	r0, r5
 800412c:	ebffff57 	bl	8003e90 <next_unwind_byte>
 8004130:	e200300f 	and	r3, r0, #15
 8004134:	e2833001 	add	r3, r3, #1
 8004138:	e20020f0 	and	r2, r0, #240	; 0xf0
 800413c:	e1832602 	orr	r2, r3, r2, lsl #12
 8004140:	eaffff94 	b	8003f98 <__gnu_unwind_execute+0x74>
 8004144:	e3570000 	cmp	r7, #0
 8004148:	13a00000 	movne	r0, #0
 800414c:	1affff98 	bne	8003fb4 <__gnu_unwind_execute+0x90>
 8004150:	e28d400c 	add	r4, sp, #12
 8004154:	e1a01007 	mov	r1, r7
 8004158:	e3a0200e 	mov	r2, #14
 800415c:	e1a03007 	mov	r3, r7
 8004160:	e58d4000 	str	r4, [sp]
 8004164:	e1a00006 	mov	r0, r6
 8004168:	ebfffc68 	bl	8003310 <_Unwind_VRS_Get>
 800416c:	e58d4000 	str	r4, [sp]
 8004170:	e1a00006 	mov	r0, r6
 8004174:	e1a01007 	mov	r1, r7
 8004178:	e3a0200f 	mov	r2, #15
 800417c:	e1a03007 	mov	r3, r7
 8004180:	ebfffc85 	bl	800339c <_Unwind_VRS_Set>
 8004184:	e1a00007 	mov	r0, r7
 8004188:	eaffff89 	b	8003fb4 <__gnu_unwind_execute+0x90>
 800418c:	e1a00005 	mov	r0, r5
 8004190:	ebffff3e 	bl	8003e90 <next_unwind_byte>
 8004194:	e2502000 	subs	r2, r0, #0
 8004198:	0affff84 	beq	8003fb0 <__gnu_unwind_execute+0x8c>
 800419c:	e21210f0 	ands	r1, r2, #240	; 0xf0
 80041a0:	0affffaf 	beq	8004064 <__gnu_unwind_execute+0x140>
 80041a4:	eaffff81 	b	8003fb0 <__gnu_unwind_execute+0x8c>
 80041a8:	e3a01000 	mov	r1, #0
 80041ac:	e28d300c 	add	r3, sp, #12
 80041b0:	e58d3000 	str	r3, [sp]
 80041b4:	e3a0200d 	mov	r2, #13
 80041b8:	e1a03001 	mov	r3, r1
 80041bc:	e1a00006 	mov	r0, r6
 80041c0:	ebfffc52 	bl	8003310 <_Unwind_VRS_Get>
 80041c4:	e1a00005 	mov	r0, r5
 80041c8:	ebffff30 	bl	8003e90 <next_unwind_byte>
 80041cc:	e3100080 	tst	r0, #128	; 0x80
 80041d0:	e3a04002 	mov	r4, #2
 80041d4:	0a000008 	beq	80041fc <__gnu_unwind_execute+0x2d8>
 80041d8:	e59d300c 	ldr	r3, [sp, #12]
 80041dc:	e200007f 	and	r0, r0, #127	; 0x7f
 80041e0:	e0833410 	add	r3, r3, r0, lsl r4
 80041e4:	e1a00005 	mov	r0, r5
 80041e8:	e58d300c 	str	r3, [sp, #12]
 80041ec:	ebffff27 	bl	8003e90 <next_unwind_byte>
 80041f0:	e3100080 	tst	r0, #128	; 0x80
 80041f4:	e2844007 	add	r4, r4, #7
 80041f8:	1afffff6 	bne	80041d8 <__gnu_unwind_execute+0x2b4>
 80041fc:	e59d300c 	ldr	r3, [sp, #12]
 8004200:	e200007f 	and	r0, r0, #127	; 0x7f
 8004204:	e2833f81 	add	r3, r3, #516	; 0x204
 8004208:	e0834410 	add	r4, r3, r0, lsl r4
 800420c:	e3a01000 	mov	r1, #0
 8004210:	e28d300c 	add	r3, sp, #12
 8004214:	e58d3000 	str	r3, [sp]
 8004218:	e1a00006 	mov	r0, r6
 800421c:	e1a03001 	mov	r3, r1
 8004220:	e3a0200d 	mov	r2, #13
 8004224:	e58d400c 	str	r4, [sp, #12]
 8004228:	ebfffc5b 	bl	800339c <_Unwind_VRS_Set>
 800422c:	eaffff41 	b	8003f38 <__gnu_unwind_execute+0x14>
 8004230:	e1a00005 	mov	r0, r5
 8004234:	ebffff15 	bl	8003e90 <next_unwind_byte>
 8004238:	e200300f 	and	r3, r0, #15
 800423c:	e2833001 	add	r3, r3, #1
 8004240:	e20020f0 	and	r2, r0, #240	; 0xf0
 8004244:	e3a01001 	mov	r1, #1
 8004248:	e1832602 	orr	r2, r3, r2, lsl #12
 800424c:	eaffff84 	b	8004064 <__gnu_unwind_execute+0x140>
 8004250:	e1a00005 	mov	r0, r5
 8004254:	ebffff0d 	bl	8003e90 <next_unwind_byte>
 8004258:	e200300f 	and	r3, r0, #15
 800425c:	e2833001 	add	r3, r3, #1
 8004260:	e20020f0 	and	r2, r0, #240	; 0xf0
 8004264:	e3a01003 	mov	r1, #3
 8004268:	e1832602 	orr	r2, r3, r2, lsl #12
 800426c:	eaffff7c 	b	8004064 <__gnu_unwind_execute+0x140>
 8004270:	e1a00005 	mov	r0, r5
 8004274:	ebffff05 	bl	8003e90 <next_unwind_byte>
 8004278:	e2502000 	subs	r2, r0, #0
 800427c:	0affff4b 	beq	8003fb0 <__gnu_unwind_execute+0x8c>
 8004280:	e21230f0 	ands	r3, r2, #240	; 0xf0
 8004284:	1affff49 	bne	8003fb0 <__gnu_unwind_execute+0x8c>
 8004288:	e1a00006 	mov	r0, r6
 800428c:	e3a01004 	mov	r1, #4
 8004290:	ebfffdab 	bl	8003944 <_Unwind_VRS_Pop>
 8004294:	e3500000 	cmp	r0, #0
 8004298:	1affff44 	bne	8003fb0 <__gnu_unwind_execute+0x8c>
 800429c:	eaffff25 	b	8003f38 <__gnu_unwind_execute+0x14>
 80042a0:	e200200f 	and	r2, r0, #15
 80042a4:	e2822001 	add	r2, r2, #1
 80042a8:	e3a01003 	mov	r1, #3
 80042ac:	e382280a 	orr	r2, r2, #655360	; 0xa0000
 80042b0:	eaffff6b 	b	8004064 <__gnu_unwind_execute+0x140>
 80042b4:	e1a00005 	mov	r0, r5
 80042b8:	ebfffef4 	bl	8003e90 <next_unwind_byte>
 80042bc:	e20020f0 	and	r2, r0, #240	; 0xf0
 80042c0:	e200300f 	and	r3, r0, #15
 80042c4:	e2822010 	add	r2, r2, #16
 80042c8:	e2833001 	add	r3, r3, #1
 80042cc:	e1832602 	orr	r2, r3, r2, lsl #12
 80042d0:	eaffff30 	b	8003f98 <__gnu_unwind_execute+0x74>

080042d4 <__gnu_unwind_frame>:
 80042d4:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 80042d8:	e590304c 	ldr	r3, [r0, #76]	; 0x4c
 80042dc:	e24dd014 	sub	sp, sp, #20
 80042e0:	e3a02003 	mov	r2, #3
 80042e4:	e593c004 	ldr	ip, [r3, #4]
 80042e8:	e5cd200c 	strb	r2, [sp, #12]
 80042ec:	e5d32007 	ldrb	r2, [r3, #7]
 80042f0:	e1a0c40c 	lsl	ip, ip, #8
 80042f4:	e2833008 	add	r3, r3, #8
 80042f8:	e1a00001 	mov	r0, r1
 80042fc:	e28d1004 	add	r1, sp, #4
 8004300:	e58dc004 	str	ip, [sp, #4]
 8004304:	e5cd200d 	strb	r2, [sp, #13]
 8004308:	e58d3008 	str	r3, [sp, #8]
 800430c:	ebffff04 	bl	8003f24 <__gnu_unwind_execute>
 8004310:	e28dd014 	add	sp, sp, #20
 8004314:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 8004318:	e12fff1e 	bx	lr

0800431c <_Unwind_GetRegionStart>:
 800431c:	e92d4008 	push	{r3, lr}
 8004320:	ebfffefe 	bl	8003f20 <unwind_UCB_from_context>
 8004324:	e8bd4008 	pop	{r3, lr}
 8004328:	e5900048 	ldr	r0, [r0, #72]	; 0x48
 800432c:	e12fff1e 	bx	lr

08004330 <_Unwind_GetLanguageSpecificData>:
 8004330:	e92d4008 	push	{r3, lr}
 8004334:	ebfffef9 	bl	8003f20 <unwind_UCB_from_context>
 8004338:	e590304c 	ldr	r3, [r0, #76]	; 0x4c
 800433c:	e5d32007 	ldrb	r2, [r3, #7]
 8004340:	e0830102 	add	r0, r3, r2, lsl #2
 8004344:	e2800008 	add	r0, r0, #8
 8004348:	e8bd4008 	pop	{r3, lr}
 800434c:	e12fff1e 	bx	lr

08004350 <_Unwind_GetDataRelBase>:
 8004350:	e92d4008 	push	{r3, lr}
 8004354:	eb000001 	bl	8004360 <abort>

08004358 <_Unwind_GetTextRelBase>:
 8004358:	e92d4008 	push	{r3, lr}
 800435c:	ebffffff 	bl	8004360 <abort>

08004360 <abort>:
 8004360:	e92d4008 	push	{r3, lr}
 8004364:	e3a00006 	mov	r0, #6
 8004368:	eb000063 	bl	80044fc <raise>
 800436c:	e3a00001 	mov	r0, #1
 8004370:	eb000086 	bl	8004590 <_exit>

08004374 <memcpy>:
 8004374:	e352000f 	cmp	r2, #15
 8004378:	e92d00f0 	push	{r4, r5, r6, r7}
 800437c:	9a00002a 	bls	800442c <memcpy+0xb8>
 8004380:	e1803001 	orr	r3, r0, r1
 8004384:	e3130003 	tst	r3, #3
 8004388:	1a000031 	bne	8004454 <memcpy+0xe0>
 800438c:	e2426010 	sub	r6, r2, #16
 8004390:	e1a06226 	lsr	r6, r6, #4
 8004394:	e0805206 	add	r5, r0, r6, lsl #4
 8004398:	e2855010 	add	r5, r5, #16
 800439c:	e1a0c001 	mov	ip, r1
 80043a0:	e1a03000 	mov	r3, r0
 80043a4:	e59c4000 	ldr	r4, [ip]
 80043a8:	e5834000 	str	r4, [r3]
 80043ac:	e59c4004 	ldr	r4, [ip, #4]
 80043b0:	e5834004 	str	r4, [r3, #4]
 80043b4:	e59c4008 	ldr	r4, [ip, #8]
 80043b8:	e5834008 	str	r4, [r3, #8]
 80043bc:	e59c400c 	ldr	r4, [ip, #12]
 80043c0:	e2833010 	add	r3, r3, #16
 80043c4:	e5034004 	str	r4, [r3, #-4]
 80043c8:	e1530005 	cmp	r3, r5
 80043cc:	e28cc010 	add	ip, ip, #16
 80043d0:	1afffff3 	bne	80043a4 <memcpy+0x30>
 80043d4:	e2863001 	add	r3, r6, #1
 80043d8:	e202700f 	and	r7, r2, #15
 80043dc:	e1a03203 	lsl	r3, r3, #4
 80043e0:	e3570003 	cmp	r7, #3
 80043e4:	e0811003 	add	r1, r1, r3
 80043e8:	e0803003 	add	r3, r0, r3
 80043ec:	9a00001a 	bls	800445c <memcpy+0xe8>
 80043f0:	e1a05001 	mov	r5, r1
 80043f4:	e1a04003 	mov	r4, r3
 80043f8:	e1a0c007 	mov	ip, r7
 80043fc:	e24cc004 	sub	ip, ip, #4
 8004400:	e4956004 	ldr	r6, [r5], #4
 8004404:	e35c0003 	cmp	ip, #3
 8004408:	e4846004 	str	r6, [r4], #4
 800440c:	8afffffa 	bhi	80043fc <memcpy+0x88>
 8004410:	e247c004 	sub	ip, r7, #4
 8004414:	e3ccc003 	bic	ip, ip, #3
 8004418:	e28cc004 	add	ip, ip, #4
 800441c:	e083300c 	add	r3, r3, ip
 8004420:	e081100c 	add	r1, r1, ip
 8004424:	e2022003 	and	r2, r2, #3
 8004428:	ea000000 	b	8004430 <memcpy+0xbc>
 800442c:	e1a03000 	mov	r3, r0
 8004430:	e3520000 	cmp	r2, #0
 8004434:	0a000004 	beq	800444c <memcpy+0xd8>
 8004438:	e0812002 	add	r2, r1, r2
 800443c:	e4d1c001 	ldrb	ip, [r1], #1
 8004440:	e1510002 	cmp	r1, r2
 8004444:	e4c3c001 	strb	ip, [r3], #1
 8004448:	1afffffb 	bne	800443c <memcpy+0xc8>
 800444c:	e8bd00f0 	pop	{r4, r5, r6, r7}
 8004450:	e12fff1e 	bx	lr
 8004454:	e1a03000 	mov	r3, r0
 8004458:	eafffff6 	b	8004438 <memcpy+0xc4>
 800445c:	e1a02007 	mov	r2, r7
 8004460:	eafffff2 	b	8004430 <memcpy+0xbc>

08004464 <_raise_r>:
 8004464:	e351001f 	cmp	r1, #31
 8004468:	e92d4038 	push	{r3, r4, r5, lr}
 800446c:	83a03016 	movhi	r3, #22
 8004470:	e1a05000 	mov	r5, r0
 8004474:	85803000 	strhi	r3, [r0]
 8004478:	e1a04001 	mov	r4, r1
 800447c:	83e00000 	mvnhi	r0, #0
 8004480:	8a000012 	bhi	80044d0 <_raise_r+0x6c>
 8004484:	e59522dc 	ldr	r2, [r5, #732]	; 0x2dc
 8004488:	e3520000 	cmp	r2, #0
 800448c:	0a000013 	beq	80044e0 <_raise_r+0x7c>
 8004490:	e7923101 	ldr	r3, [r2, r1, lsl #2]
 8004494:	e3530000 	cmp	r3, #0
 8004498:	0a000010 	beq	80044e0 <_raise_r+0x7c>
 800449c:	e3530001 	cmp	r3, #1
 80044a0:	0a00000c 	beq	80044d8 <_raise_r+0x74>
 80044a4:	e3730001 	cmn	r3, #1
 80044a8:	03a03016 	moveq	r3, #22
 80044ac:	05853000 	streq	r3, [r5]
 80044b0:	03a00001 	moveq	r0, #1
 80044b4:	0a000005 	beq	80044d0 <_raise_r+0x6c>
 80044b8:	e3a05000 	mov	r5, #0
 80044bc:	e1a00001 	mov	r0, r1
 80044c0:	e7825101 	str	r5, [r2, r1, lsl #2]
 80044c4:	e1a0e00f 	mov	lr, pc
 80044c8:	e12fff13 	bx	r3
 80044cc:	e1a00005 	mov	r0, r5
 80044d0:	e8bd4038 	pop	{r3, r4, r5, lr}
 80044d4:	e12fff1e 	bx	lr
 80044d8:	e3a00000 	mov	r0, #0
 80044dc:	eafffffb 	b	80044d0 <_raise_r+0x6c>
 80044e0:	e1a00005 	mov	r0, r5
 80044e4:	eb000019 	bl	8004550 <_getpid_r>
 80044e8:	e1a02004 	mov	r2, r4
 80044ec:	e1a01000 	mov	r1, r0
 80044f0:	e1a00005 	mov	r0, r5
 80044f4:	eb000005 	bl	8004510 <_kill_r>
 80044f8:	eafffff4 	b	80044d0 <_raise_r+0x6c>

080044fc <raise>:
 80044fc:	e59f3008 	ldr	r3, [pc, #8]	; 800450c <raise+0x10>
 8004500:	e1a01000 	mov	r1, r0
 8004504:	e5930000 	ldr	r0, [r3]
 8004508:	eaffffd5 	b	8004464 <_raise_r>
 800450c:	20000500 	.word	0x20000500

08004510 <_kill_r>:
 8004510:	e92d4038 	push	{r3, r4, r5, lr}
 8004514:	e59f4030 	ldr	r4, [pc, #48]	; 800454c <_kill_r+0x3c>
 8004518:	e3a03000 	mov	r3, #0
 800451c:	e1a05000 	mov	r5, r0
 8004520:	e1a00001 	mov	r0, r1
 8004524:	e1a01002 	mov	r1, r2
 8004528:	e5843000 	str	r3, [r4]
 800452c:	eb000011 	bl	8004578 <_kill>
 8004530:	e3700001 	cmn	r0, #1
 8004534:	1a000002 	bne	8004544 <_kill_r+0x34>
 8004538:	e5943000 	ldr	r3, [r4]
 800453c:	e3530000 	cmp	r3, #0
 8004540:	15853000 	strne	r3, [r5]
 8004544:	e8bd4038 	pop	{r3, r4, r5, lr}
 8004548:	e12fff1e 	bx	lr
 800454c:	20001200 	.word	0x20001200

08004550 <_getpid_r>:
 8004550:	e92d4008 	push	{r3, lr}
 8004554:	eb000001 	bl	8004560 <_getpid>
 8004558:	e8bd4008 	pop	{r3, lr}
 800455c:	e12fff1e 	bx	lr

08004560 <_getpid>:
 8004560:	e59f300c 	ldr	r3, [pc, #12]	; 8004574 <_getpid+0x14>
 8004564:	e3a02058 	mov	r2, #88	; 0x58
 8004568:	e5832000 	str	r2, [r3]
 800456c:	e3e00000 	mvn	r0, #0
 8004570:	e12fff1e 	bx	lr
 8004574:	20001200 	.word	0x20001200

08004578 <_kill>:
 8004578:	e59f300c 	ldr	r3, [pc, #12]	; 800458c <_kill+0x14>
 800457c:	e3a02058 	mov	r2, #88	; 0x58
 8004580:	e5832000 	str	r2, [r3]
 8004584:	e3e00000 	mvn	r0, #0
 8004588:	e12fff1e 	bx	lr
 800458c:	20001200 	.word	0x20001200

08004590 <_exit>:
 8004590:	eafffffe 	b	8004590 <_exit>

08004594 <_init>:
 8004594:	e1a0c00d 	mov	ip, sp
 8004598:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
 800459c:	e24cb004 	sub	fp, ip, #4
 80045a0:	e24bd028 	sub	sp, fp, #40	; 0x28
 80045a4:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
 80045a8:	e12fff1e 	bx	lr

080045ac <_fini>:
 80045ac:	e1a0c00d 	mov	ip, sp
 80045b0:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
 80045b4:	e24cb004 	sub	fp, ip, #4
 80045b8:	e24bd028 	sub	sp, fp, #40	; 0x28
 80045bc:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
 80045c0:	e12fff1e 	bx	lr
 80045c4:	69647473 	.word	0x69647473
 80045c8:	6e69206f 	.word	0x6e69206f
 80045cc:	64207469 	.word	0x64207469
 80045d0:	0a656e6f 	.word	0x0a656e6f
 80045d4:	00          	.byte	0x00
 80045d5:	65          	.byte	0x65
 80045d6:	7272      	.short	0x7272
 80045d8:	6320726f 	.word	0x6320726f
 80045dc:	2065646f 	.word	0x2065646f
 80045e0:	253a7525 	.word	0x253a7525
 80045e4:	0a75      	.short	0x0a75
 80045e6:	00          	.byte	0x00
 80045e7:	0a          	.byte	0x0a
 80045e8:	636c6577 	.word	0x636c6577
 80045ec:	20656d6f 	.word	0x20656d6f
 80045f0:	53206f74 	.word	0x53206f74
 80045f4:	68757a75 	.word	0x68757a75
 80045f8:	20534f61 	.word	0x20534f61
 80045fc:	205e5f5e 	.word	0x205e5f5e
 8004600:	2e302e32 	.word	0x2e302e32
 8004604:	55420a36 	.word	0x55420a36
 8004608:	20444c49 	.word	0x20444c49
 800460c:	20727041 	.word	0x20727041
 8004610:	32203033 	.word	0x32203033
 8004614:	20363130 	.word	0x20363130
 8004618:	313a3232 	.word	0x313a3232
 800461c:	36323a34 	.word	0x36323a34
 8004620:	7973000a 	.word	0x7973000a
 8004624:	6d657473 	.word	0x6d657473
 8004628:	6f626120 	.word	0x6f626120
 800462c:	64657472 	.word	0x64657472
 8004630:	000a      	.short	0x000a
 8004632:	3e3e      	.short	0x3e3e
 8004634:	00204c3e 	.word	0x00204c3e
 8004638:	25206925 	.word	0x25206925
 800463c:	69252069 	.word	0x69252069
 8004640:	20692520 	.word	0x20692520
 8004644:	25206925 	.word	0x25206925
 8004648:	0a0a0069 	.word	0x0a0a0069
 800464c:	3e3e3e00 	.word	0x3e3e3e00
 8004650:	3e002049 	.word	0x3e002049
 8004654:	0020533e 	.word	0x0020533e
 8004658:	20433e3e 	.word	0x20433e3e
 800465c:	20692500 	.word	0x20692500
 8004660:	25206925 	.word	0x25206925
 8004664:	69252069 	.word	0x69252069
 8004668:	00000020 	.word	0x00000020
 800466c:	00000043 	.word	0x00000043

08004670 <__EH_FRAME_BEGIN__>:
 8004670:	00000000                                ....
