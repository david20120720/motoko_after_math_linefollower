
bin/main.elf:     file format elf32-littlearm


Disassembly of section .text:

08000188 <_ZN6CRobot14get_error_typeEv>:
 8000188:	6d80      	ldr	r0, [r0, #88]	; 0x58
 800018a:	4770      	bx	lr

0800018c <_ZN6CRobot14get_error_codeEv>:
 800018c:	6d40      	ldr	r0, [r0, #84]	; 0x54
 800018e:	4770      	bx	lr

08000190 <_ZN6CRobot13set_configureE15sRobotConfigure>:
 8000190:	b084      	sub	sp, #16
 8000192:	b530      	push	{r4, r5, lr}
 8000194:	ac04      	add	r4, sp, #16
 8000196:	e884 000e 	stmia.w	r4, {r1, r2, r3}
 800019a:	4605      	mov	r5, r0
 800019c:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
 800019e:	c50f      	stmia	r5!, {r0, r1, r2, r3}
 80001a0:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
 80001a2:	c50f      	stmia	r5!, {r0, r1, r2, r3}
 80001a4:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
 80001a8:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
 80001ac:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
 80001b0:	b004      	add	sp, #16
 80001b2:	4770      	bx	lr

080001b4 <_ZN6CRobot19get_robot_configureEv>:
 80001b4:	4770      	bx	lr

080001b6 <_ZN6CRobot24get_line_position_sensorEv>:
 80001b6:	3030      	adds	r0, #48	; 0x30
 80001b8:	4770      	bx	lr

080001ba <_ZN6CRobot28get_obstacle_position_sensorEv>:
 80001ba:	3040      	adds	r0, #64	; 0x40
 80001bc:	4770      	bx	lr

080001be <_ZN6CRobot14get_imu_sensorEv>:
 80001be:	3048      	adds	r0, #72	; 0x48
 80001c0:	4770      	bx	lr

080001c2 <_ZN6CRobot10set_motorsEii>:
 80001c2:	b208      	sxth	r0, r1
 80001c4:	b211      	sxth	r1, r2
 80001c6:	f002 bb21 	b.w	800280c <drv8834_run>

080001ca <_ZN6CRobot9reset_imuEv>:
 80001ca:	2300      	movs	r3, #0
 80001cc:	6483      	str	r3, [r0, #72]	; 0x48
 80001ce:	64c3      	str	r3, [r0, #76]	; 0x4c
 80001d0:	6503      	str	r3, [r0, #80]	; 0x50
 80001d2:	4770      	bx	lr

080001d4 <_ZN6CRobot16line_sensor_readEv>:
 80001d4:	6c43      	ldr	r3, [r0, #68]	; 0x44
 80001d6:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 80001da:	4604      	mov	r4, r0
 80001dc:	ebc3 05c3 	rsb	r5, r3, r3, lsl #3
 80001e0:	f001 fb86 	bl	80018f0 <rgb_get>
 80001e4:	f9b0 2058 	ldrsh.w	r2, [r0, #88]	; 0x58
 80001e8:	18ab      	adds	r3, r5, r2
 80001ea:	2208      	movs	r2, #8
 80001ec:	fb93 f3f2 	sdiv	r3, r3, r2
 80001f0:	f9b4 2002 	ldrsh.w	r2, [r4, #2]
 80001f4:	6463      	str	r3, [r4, #68]	; 0x44
 80001f6:	4293      	cmp	r3, r2
 80001f8:	f04f 0600 	mov.w	r6, #0
 80001fc:	bfcc      	ite	gt
 80001fe:	2301      	movgt	r3, #1
 8000200:	2300      	movle	r3, #0
 8000202:	f884 3040 	strb.w	r3, [r4, #64]	; 0x40
 8000206:	4637      	mov	r7, r6
 8000208:	46b0      	mov	r8, r6
 800020a:	46b1      	mov	r9, r6
 800020c:	4635      	mov	r5, r6
 800020e:	f001 fb6f 	bl	80018f0 <rgb_get>
 8000212:	ea4f 0a45 	mov.w	sl, r5, lsl #1
 8000216:	4450      	add	r0, sl
 8000218:	4b87      	ldr	r3, [pc, #540]	; (8000438 <_ZN6CRobot16line_sensor_readEv+0x264>)
 800021a:	f853 2025 	ldr.w	r2, [r3, r5, lsl #2]
 800021e:	8ec3      	ldrh	r3, [r0, #54]	; 0x36
 8000220:	1a9b      	subs	r3, r3, r2
 8000222:	86c3      	strh	r3, [r0, #54]	; 0x36
 8000224:	f001 fb64 	bl	80018f0 <rgb_get>
 8000228:	4b84      	ldr	r3, [pc, #528]	; (800043c <_ZN6CRobot16line_sensor_readEv+0x268>)
 800022a:	f853 2025 	ldr.w	r2, [r3, r5, lsl #2]
 800022e:	f830 3015 	ldrh.w	r3, [r0, r5, lsl #1]
 8000232:	1a9b      	subs	r3, r3, r2
 8000234:	f820 3015 	strh.w	r3, [r0, r5, lsl #1]
 8000238:	f001 fb5a 	bl	80018f0 <rgb_get>
 800023c:	4b80      	ldr	r3, [pc, #512]	; (8000440 <_ZN6CRobot16line_sensor_readEv+0x26c>)
 800023e:	4450      	add	r0, sl
 8000240:	f853 2025 	ldr.w	r2, [r3, r5, lsl #2]
 8000244:	8a43      	ldrh	r3, [r0, #18]
 8000246:	1a9b      	subs	r3, r3, r2
 8000248:	8243      	strh	r3, [r0, #18]
 800024a:	f001 fb51 	bl	80018f0 <rgb_get>
 800024e:	4b7d      	ldr	r3, [pc, #500]	; (8000444 <_ZN6CRobot16line_sensor_readEv+0x270>)
 8000250:	4450      	add	r0, sl
 8000252:	f853 2025 	ldr.w	r2, [r3, r5, lsl #2]
 8000256:	8c83      	ldrh	r3, [r0, #36]	; 0x24
 8000258:	1a9b      	subs	r3, r3, r2
 800025a:	8483      	strh	r3, [r0, #36]	; 0x24
 800025c:	f001 fb48 	bl	80018f0 <rgb_get>
 8000260:	eb00 0045 	add.w	r0, r0, r5, lsl #1
 8000264:	f9b0 3036 	ldrsh.w	r3, [r0, #54]	; 0x36
 8000268:	4499      	add	r9, r3
 800026a:	f001 fb41 	bl	80018f0 <rgb_get>
 800026e:	f930 3015 	ldrsh.w	r3, [r0, r5, lsl #1]
 8000272:	4498      	add	r8, r3
 8000274:	f001 fb3c 	bl	80018f0 <rgb_get>
 8000278:	eb00 0045 	add.w	r0, r0, r5, lsl #1
 800027c:	f9b0 3012 	ldrsh.w	r3, [r0, #18]
 8000280:	441f      	add	r7, r3
 8000282:	f001 fb35 	bl	80018f0 <rgb_get>
 8000286:	eb00 0045 	add.w	r0, r0, r5, lsl #1
 800028a:	3501      	adds	r5, #1
 800028c:	f9b0 3024 	ldrsh.w	r3, [r0, #36]	; 0x24
 8000290:	2d08      	cmp	r5, #8
 8000292:	441e      	add	r6, r3
 8000294:	d1bb      	bne.n	800020e <_ZN6CRobot16line_sensor_readEv+0x3a>
 8000296:	fb99 f9f5 	sdiv	r9, r9, r5
 800029a:	fb98 f8f5 	sdiv	r8, r8, r5
 800029e:	fb97 f7f5 	sdiv	r7, r7, r5
 80002a2:	fb96 f5f5 	sdiv	r5, r6, r5
 80002a6:	2600      	movs	r6, #0
 80002a8:	f001 fb22 	bl	80018f0 <rgb_get>
 80002ac:	4682      	mov	sl, r0
 80002ae:	f001 fb1f 	bl	80018f0 <rgb_get>
 80002b2:	f106 0318 	add.w	r3, r6, #24
 80002b6:	005b      	lsls	r3, r3, #1
 80002b8:	4418      	add	r0, r3
 80002ba:	449a      	add	sl, r3
 80002bc:	88c3      	ldrh	r3, [r0, #6]
 80002be:	ebc3 0309 	rsb	r3, r3, r9
 80002c2:	f8aa 3006 	strh.w	r3, [sl, #6]
 80002c6:	f001 fb13 	bl	80018f0 <rgb_get>
 80002ca:	4682      	mov	sl, r0
 80002cc:	f001 fb10 	bl	80018f0 <rgb_get>
 80002d0:	f830 3016 	ldrh.w	r3, [r0, r6, lsl #1]
 80002d4:	ebc8 0303 	rsb	r3, r8, r3
 80002d8:	f82a 3016 	strh.w	r3, [sl, r6, lsl #1]
 80002dc:	f001 fb08 	bl	80018f0 <rgb_get>
 80002e0:	4682      	mov	sl, r0
 80002e2:	f001 fb05 	bl	80018f0 <rgb_get>
 80002e6:	f106 0308 	add.w	r3, r6, #8
 80002ea:	005b      	lsls	r3, r3, #1
 80002ec:	4418      	add	r0, r3
 80002ee:	449a      	add	sl, r3
 80002f0:	8843      	ldrh	r3, [r0, #2]
 80002f2:	1bdb      	subs	r3, r3, r7
 80002f4:	f8aa 3002 	strh.w	r3, [sl, #2]
 80002f8:	f001 fafa 	bl	80018f0 <rgb_get>
 80002fc:	4682      	mov	sl, r0
 80002fe:	f001 faf7 	bl	80018f0 <rgb_get>
 8000302:	f106 0310 	add.w	r3, r6, #16
 8000306:	005b      	lsls	r3, r3, #1
 8000308:	4418      	add	r0, r3
 800030a:	449a      	add	sl, r3
 800030c:	8883      	ldrh	r3, [r0, #4]
 800030e:	3601      	adds	r6, #1
 8000310:	1b5b      	subs	r3, r3, r5
 8000312:	2e08      	cmp	r6, #8
 8000314:	f8aa 3004 	strh.w	r3, [sl, #4]
 8000318:	d1c6      	bne.n	80002a8 <_ZN6CRobot16line_sensor_readEv+0xd4>
 800031a:	f104 0664 	add.w	r6, r4, #100	; 0x64
 800031e:	2500      	movs	r5, #0
 8000320:	f001 fae6 	bl	80018f0 <rgb_get>
 8000324:	eb00 0045 	add.w	r0, r0, r5, lsl #1
 8000328:	3501      	adds	r5, #1
 800032a:	f9b0 3036 	ldrsh.w	r3, [r0, #54]	; 0x36
 800032e:	f846 3f04 	str.w	r3, [r6, #4]!
 8000332:	2d08      	cmp	r5, #8
 8000334:	d1f4      	bne.n	8000320 <_ZN6CRobot16line_sensor_readEv+0x14c>
 8000336:	6fa6      	ldr	r6, [r4, #120]	; 0x78
 8000338:	f8d4 e074 	ldr.w	lr, [r4, #116]	; 0x74
 800033c:	6fe7      	ldr	r7, [r4, #124]	; 0x7c
 800033e:	f9b4 5000 	ldrsh.w	r5, [r4]
 8000342:	eb1e 0206 	adds.w	r2, lr, r6
 8000346:	bf1f      	itttt	ne
 8000348:	4b3f      	ldrne	r3, [pc, #252]	; (8000448 <_ZN6CRobot16line_sensor_readEv+0x274>)
 800034a:	f9b3 1006 	ldrshne.w	r1, [r3, #6]
 800034e:	f9b3 3008 	ldrshne.w	r3, [r3, #8]
 8000352:	4373      	mulne	r3, r6
 8000354:	bf17      	itett	ne
 8000356:	fb01 330e 	mlane	r3, r1, lr, r3
 800035a:	4613      	moveq	r3, r2
 800035c:	fb93 f3f2 	sdivne	r3, r3, r2
 8000360:	2102      	movne	r1, #2
 8000362:	bf18      	it	ne
 8000364:	fb92 f2f1 	sdivne	r2, r2, r1
 8000368:	19b9      	adds	r1, r7, r6
 800036a:	d00c      	beq.n	8000386 <_ZN6CRobot16line_sensor_readEv+0x1b2>
 800036c:	42af      	cmp	r7, r5
 800036e:	dd0a      	ble.n	8000386 <_ZN6CRobot16line_sensor_readEv+0x1b2>
 8000370:	4b35      	ldr	r3, [pc, #212]	; (8000448 <_ZN6CRobot16line_sensor_readEv+0x274>)
 8000372:	f9b3 0008 	ldrsh.w	r0, [r3, #8]
 8000376:	f9b3 200a 	ldrsh.w	r2, [r3, #10]
 800037a:	4370      	muls	r0, r6
 800037c:	fb02 0007 	mla	r0, r2, r7, r0
 8000380:	463a      	mov	r2, r7
 8000382:	fb90 f3f1 	sdiv	r3, r0, r1
 8000386:	6f26      	ldr	r6, [r4, #112]	; 0x70
 8000388:	eb16 0c0e 	adds.w	ip, r6, lr
 800038c:	d00d      	beq.n	80003aa <_ZN6CRobot16line_sensor_readEv+0x1d6>
 800038e:	42ae      	cmp	r6, r5
 8000390:	dd0b      	ble.n	80003aa <_ZN6CRobot16line_sensor_readEv+0x1d6>
 8000392:	4b2d      	ldr	r3, [pc, #180]	; (8000448 <_ZN6CRobot16line_sensor_readEv+0x274>)
 8000394:	f9b3 1006 	ldrsh.w	r1, [r3, #6]
 8000398:	f9b3 0004 	ldrsh.w	r0, [r3, #4]
 800039c:	fb01 f10e 	mul.w	r1, r1, lr
 80003a0:	4632      	mov	r2, r6
 80003a2:	fb00 1106 	mla	r1, r0, r6, r1
 80003a6:	fb91 f3fc 	sdiv	r3, r1, ip
 80003aa:	f8d4 1080 	ldr.w	r1, [r4, #128]	; 0x80
 80003ae:	eb11 0e07 	adds.w	lr, r1, r7
 80003b2:	d00c      	beq.n	80003ce <_ZN6CRobot16line_sensor_readEv+0x1fa>
 80003b4:	42a9      	cmp	r1, r5
 80003b6:	dd0a      	ble.n	80003ce <_ZN6CRobot16line_sensor_readEv+0x1fa>
 80003b8:	4b23      	ldr	r3, [pc, #140]	; (8000448 <_ZN6CRobot16line_sensor_readEv+0x274>)
 80003ba:	f9b3 200a 	ldrsh.w	r2, [r3, #10]
 80003be:	f9b3 000c 	ldrsh.w	r0, [r3, #12]
 80003c2:	437a      	muls	r2, r7
 80003c4:	fb00 2201 	mla	r2, r0, r1, r2
 80003c8:	fb92 f3fe 	sdiv	r3, r2, lr
 80003cc:	460a      	mov	r2, r1
 80003ce:	6ee1      	ldr	r1, [r4, #108]	; 0x6c
 80003d0:	1988      	adds	r0, r1, r6
 80003d2:	d00c      	beq.n	80003ee <_ZN6CRobot16line_sensor_readEv+0x21a>
 80003d4:	42a9      	cmp	r1, r5
 80003d6:	dd0a      	ble.n	80003ee <_ZN6CRobot16line_sensor_readEv+0x21a>
 80003d8:	4b1b      	ldr	r3, [pc, #108]	; (8000448 <_ZN6CRobot16line_sensor_readEv+0x274>)
 80003da:	f9b3 2002 	ldrsh.w	r2, [r3, #2]
 80003de:	f9b3 3004 	ldrsh.w	r3, [r3, #4]
 80003e2:	4373      	muls	r3, r6
 80003e4:	fb02 3301 	mla	r3, r2, r1, r3
 80003e8:	460a      	mov	r2, r1
 80003ea:	fb93 f3f0 	sdiv	r3, r3, r0
 80003ee:	6ea1      	ldr	r1, [r4, #104]	; 0x68
 80003f0:	42a9      	cmp	r1, r5
 80003f2:	bfc4      	itt	gt
 80003f4:	4b14      	ldrgt	r3, [pc, #80]	; (8000448 <_ZN6CRobot16line_sensor_readEv+0x274>)
 80003f6:	460a      	movgt	r2, r1
 80003f8:	f8d4 1084 	ldr.w	r1, [r4, #132]	; 0x84
 80003fc:	bfc8      	it	gt
 80003fe:	f9b3 3000 	ldrshgt.w	r3, [r3]
 8000402:	42a9      	cmp	r1, r5
 8000404:	dd03      	ble.n	800040e <_ZN6CRobot16line_sensor_readEv+0x23a>
 8000406:	4b10      	ldr	r3, [pc, #64]	; (8000448 <_ZN6CRobot16line_sensor_readEv+0x274>)
 8000408:	f9b3 300e 	ldrsh.w	r3, [r3, #14]
 800040c:	e001      	b.n	8000412 <_ZN6CRobot16line_sensor_readEv+0x23e>
 800040e:	42aa      	cmp	r2, r5
 8000410:	dd0d      	ble.n	800042e <_ZN6CRobot16line_sensor_readEv+0x25a>
 8000412:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
 8000416:	dc05      	bgt.n	8000424 <_ZN6CRobot16line_sensor_readEv+0x250>
 8000418:	f06f 02ff 	mvn.w	r2, #255	; 0xff
 800041c:	4293      	cmp	r3, r2
 800041e:	bfb8      	it	lt
 8000420:	4613      	movlt	r3, r2
 8000422:	e001      	b.n	8000428 <_ZN6CRobot16line_sensor_readEv+0x254>
 8000424:	f44f 7380 	mov.w	r3, #256	; 0x100
 8000428:	6363      	str	r3, [r4, #52]	; 0x34
 800042a:	2301      	movs	r3, #1
 800042c:	e000      	b.n	8000430 <_ZN6CRobot16line_sensor_readEv+0x25c>
 800042e:	2300      	movs	r3, #0
 8000430:	f884 3030 	strb.w	r3, [r4, #48]	; 0x30
 8000434:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8000438:	20000010 	.word	0x20000010
 800043c:	2000007c 	.word	0x2000007c
 8000440:	20000058 	.word	0x20000058
 8000444:	20000034 	.word	0x20000034
 8000448:	20000000 	.word	0x20000000

0800044c <_ZN6CRobot19process_rgb_sensorsEv>:
 800044c:	b510      	push	{r4, lr}
 800044e:	4604      	mov	r4, r0
 8000450:	f001 fa52 	bl	80018f8 <rgb_read>
 8000454:	4620      	mov	r0, r4
 8000456:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800045a:	f7ff bebb 	b.w	80001d4 <_ZN6CRobot16line_sensor_readEv>

0800045e <_ZN6CRobot16line_sensor_initEv>:
 800045e:	b538      	push	{r3, r4, r5, lr}
 8000460:	4604      	mov	r4, r0
 8000462:	2500      	movs	r5, #0
 8000464:	f001 fa02 	bl	800186c <rgb_init>
 8000468:	f001 fa46 	bl	80018f8 <rgb_read>
 800046c:	2192      	movs	r1, #146	; 0x92
 800046e:	2072      	movs	r0, #114	; 0x72
 8000470:	f104 025c 	add.w	r2, r4, #92	; 0x5c
 8000474:	f001 f9df 	bl	8001836 <rgb_i2c_read_reg>
 8000478:	f104 015b 	add.w	r1, r4, #91	; 0x5b
 800047c:	462b      	mov	r3, r5
 800047e:	f811 2f01 	ldrb.w	r2, [r1, #1]!
 8000482:	2a69      	cmp	r2, #105	; 0x69
 8000484:	bf1c      	itt	ne
 8000486:	2201      	movne	r2, #1
 8000488:	409a      	lslne	r2, r3
 800048a:	f103 0301 	add.w	r3, r3, #1
 800048e:	bf18      	it	ne
 8000490:	4315      	orrne	r5, r2
 8000492:	2b09      	cmp	r3, #9
 8000494:	d1f3      	bne.n	800047e <_ZN6CRobot16line_sensor_initEv+0x20>
 8000496:	f104 0364 	add.w	r3, r4, #100	; 0x64
 800049a:	f104 0284 	add.w	r2, r4, #132	; 0x84
 800049e:	2100      	movs	r1, #0
 80004a0:	f843 1f04 	str.w	r1, [r3, #4]!
 80004a4:	4293      	cmp	r3, r2
 80004a6:	d1fa      	bne.n	800049e <_ZN6CRobot16line_sensor_initEv+0x40>
 80004a8:	4620      	mov	r0, r4
 80004aa:	f7ff fe93 	bl	80001d4 <_ZN6CRobot16line_sensor_readEv>
 80004ae:	4628      	mov	r0, r5
 80004b0:	bd38      	pop	{r3, r4, r5, pc}

080004b2 <_ZN6CRobot12lsm9ds0_readEv>:
 80004b2:	b538      	push	{r3, r4, r5, lr}
 80004b4:	2128      	movs	r1, #40	; 0x28
 80004b6:	4604      	mov	r4, r0
 80004b8:	20d4      	movs	r0, #212	; 0xd4
 80004ba:	f002 f86a 	bl	8002592 <i2c_read_reg>
 80004be:	2129      	movs	r1, #41	; 0x29
 80004c0:	4605      	mov	r5, r0
 80004c2:	20d4      	movs	r0, #212	; 0xd4
 80004c4:	f002 f865 	bl	8002592 <i2c_read_reg>
 80004c8:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 80004cc:	f8a4 0094 	strh.w	r0, [r4, #148]	; 0x94
 80004d0:	212a      	movs	r1, #42	; 0x2a
 80004d2:	20d4      	movs	r0, #212	; 0xd4
 80004d4:	f002 f85d 	bl	8002592 <i2c_read_reg>
 80004d8:	212b      	movs	r1, #43	; 0x2b
 80004da:	4605      	mov	r5, r0
 80004dc:	20d4      	movs	r0, #212	; 0xd4
 80004de:	f002 f858 	bl	8002592 <i2c_read_reg>
 80004e2:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 80004e6:	f8a4 0096 	strh.w	r0, [r4, #150]	; 0x96
 80004ea:	212c      	movs	r1, #44	; 0x2c
 80004ec:	20d4      	movs	r0, #212	; 0xd4
 80004ee:	f002 f850 	bl	8002592 <i2c_read_reg>
 80004f2:	212d      	movs	r1, #45	; 0x2d
 80004f4:	4605      	mov	r5, r0
 80004f6:	20d4      	movs	r0, #212	; 0xd4
 80004f8:	f002 f84b 	bl	8002592 <i2c_read_reg>
 80004fc:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000500:	f8a4 0098 	strh.w	r0, [r4, #152]	; 0x98
 8000504:	2108      	movs	r1, #8
 8000506:	203c      	movs	r0, #60	; 0x3c
 8000508:	f002 f843 	bl	8002592 <i2c_read_reg>
 800050c:	2109      	movs	r1, #9
 800050e:	4605      	mov	r5, r0
 8000510:	203c      	movs	r0, #60	; 0x3c
 8000512:	f002 f83e 	bl	8002592 <i2c_read_reg>
 8000516:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 800051a:	f8a4 008e 	strh.w	r0, [r4, #142]	; 0x8e
 800051e:	210a      	movs	r1, #10
 8000520:	203c      	movs	r0, #60	; 0x3c
 8000522:	f002 f836 	bl	8002592 <i2c_read_reg>
 8000526:	210b      	movs	r1, #11
 8000528:	4605      	mov	r5, r0
 800052a:	203c      	movs	r0, #60	; 0x3c
 800052c:	f002 f831 	bl	8002592 <i2c_read_reg>
 8000530:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000534:	f8a4 0090 	strh.w	r0, [r4, #144]	; 0x90
 8000538:	210c      	movs	r1, #12
 800053a:	203c      	movs	r0, #60	; 0x3c
 800053c:	f002 f829 	bl	8002592 <i2c_read_reg>
 8000540:	210d      	movs	r1, #13
 8000542:	4605      	mov	r5, r0
 8000544:	203c      	movs	r0, #60	; 0x3c
 8000546:	f002 f824 	bl	8002592 <i2c_read_reg>
 800054a:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 800054e:	f8a4 0092 	strh.w	r0, [r4, #146]	; 0x92
 8000552:	2128      	movs	r1, #40	; 0x28
 8000554:	203c      	movs	r0, #60	; 0x3c
 8000556:	f002 f81c 	bl	8002592 <i2c_read_reg>
 800055a:	2129      	movs	r1, #41	; 0x29
 800055c:	4605      	mov	r5, r0
 800055e:	203c      	movs	r0, #60	; 0x3c
 8000560:	f002 f817 	bl	8002592 <i2c_read_reg>
 8000564:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000568:	f8a4 0088 	strh.w	r0, [r4, #136]	; 0x88
 800056c:	212a      	movs	r1, #42	; 0x2a
 800056e:	203c      	movs	r0, #60	; 0x3c
 8000570:	f002 f80f 	bl	8002592 <i2c_read_reg>
 8000574:	212b      	movs	r1, #43	; 0x2b
 8000576:	4605      	mov	r5, r0
 8000578:	203c      	movs	r0, #60	; 0x3c
 800057a:	f002 f80a 	bl	8002592 <i2c_read_reg>
 800057e:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000582:	f8a4 008a 	strh.w	r0, [r4, #138]	; 0x8a
 8000586:	212c      	movs	r1, #44	; 0x2c
 8000588:	203c      	movs	r0, #60	; 0x3c
 800058a:	f002 f802 	bl	8002592 <i2c_read_reg>
 800058e:	212d      	movs	r1, #45	; 0x2d
 8000590:	4605      	mov	r5, r0
 8000592:	203c      	movs	r0, #60	; 0x3c
 8000594:	f001 fffd 	bl	8002592 <i2c_read_reg>
 8000598:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 800059c:	f8a4 008c 	strh.w	r0, [r4, #140]	; 0x8c
 80005a0:	2105      	movs	r1, #5
 80005a2:	203c      	movs	r0, #60	; 0x3c
 80005a4:	f001 fff5 	bl	8002592 <i2c_read_reg>
 80005a8:	2106      	movs	r1, #6
 80005aa:	4605      	mov	r5, r0
 80005ac:	203c      	movs	r0, #60	; 0x3c
 80005ae:	f001 fff0 	bl	8002592 <i2c_read_reg>
 80005b2:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 80005b6:	f8a4 00a8 	strh.w	r0, [r4, #168]	; 0xa8
 80005ba:	bd38      	pop	{r3, r4, r5, pc}

080005bc <_ZN6CRobot18process_imu_sensorEv>:
 80005bc:	b510      	push	{r4, lr}
 80005be:	4604      	mov	r4, r0
 80005c0:	f7ff ff77 	bl	80004b2 <_ZN6CRobot12lsm9ds0_readEv>
 80005c4:	f9b4 3094 	ldrsh.w	r3, [r4, #148]	; 0x94
 80005c8:	f8d4 209c 	ldr.w	r2, [r4, #156]	; 0x9c
 80005cc:	1a9a      	subs	r2, r3, r2
 80005ce:	6ca3      	ldr	r3, [r4, #72]	; 0x48
 80005d0:	2164      	movs	r1, #100	; 0x64
 80005d2:	fb92 f2f1 	sdiv	r2, r2, r1
 80005d6:	441a      	add	r2, r3
 80005d8:	64a2      	str	r2, [r4, #72]	; 0x48
 80005da:	f8d4 30a0 	ldr.w	r3, [r4, #160]	; 0xa0
 80005de:	f9b4 2096 	ldrsh.w	r2, [r4, #150]	; 0x96
 80005e2:	1ad2      	subs	r2, r2, r3
 80005e4:	6ce3      	ldr	r3, [r4, #76]	; 0x4c
 80005e6:	fb92 f2f1 	sdiv	r2, r2, r1
 80005ea:	441a      	add	r2, r3
 80005ec:	64e2      	str	r2, [r4, #76]	; 0x4c
 80005ee:	f8d4 30a4 	ldr.w	r3, [r4, #164]	; 0xa4
 80005f2:	f9b4 2098 	ldrsh.w	r2, [r4, #152]	; 0x98
 80005f6:	1ad3      	subs	r3, r2, r3
 80005f8:	6d22      	ldr	r2, [r4, #80]	; 0x50
 80005fa:	fb93 f3f1 	sdiv	r3, r3, r1
 80005fe:	4413      	add	r3, r2
 8000600:	6523      	str	r3, [r4, #80]	; 0x50
 8000602:	bd10      	pop	{r4, pc}

08000604 <_ZN6CRobot12lsm9ds0_initEv>:
 8000604:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8000608:	210f      	movs	r1, #15
 800060a:	4604      	mov	r4, r0
 800060c:	20d4      	movs	r0, #212	; 0xd4
 800060e:	f001 ffc0 	bl	8002592 <i2c_read_reg>
 8000612:	28d4      	cmp	r0, #212	; 0xd4
 8000614:	4605      	mov	r5, r0
 8000616:	d164      	bne.n	80006e2 <_ZN6CRobot12lsm9ds0_initEv+0xde>
 8000618:	203c      	movs	r0, #60	; 0x3c
 800061a:	210f      	movs	r1, #15
 800061c:	f001 ffb9 	bl	8002592 <i2c_read_reg>
 8000620:	2849      	cmp	r0, #73	; 0x49
 8000622:	d160      	bne.n	80006e6 <_ZN6CRobot12lsm9ds0_initEv+0xe2>
 8000624:	4628      	mov	r0, r5
 8000626:	2120      	movs	r1, #32
 8000628:	22ff      	movs	r2, #255	; 0xff
 800062a:	f001 ff9f 	bl	800256c <i2c_write_reg>
 800062e:	4628      	mov	r0, r5
 8000630:	2123      	movs	r1, #35	; 0x23
 8000632:	2210      	movs	r2, #16
 8000634:	f001 ff9a 	bl	800256c <i2c_write_reg>
 8000638:	203c      	movs	r0, #60	; 0x3c
 800063a:	211f      	movs	r1, #31
 800063c:	2200      	movs	r2, #0
 800063e:	f001 ff95 	bl	800256c <i2c_write_reg>
 8000642:	203c      	movs	r0, #60	; 0x3c
 8000644:	2120      	movs	r1, #32
 8000646:	2267      	movs	r2, #103	; 0x67
 8000648:	f001 ff90 	bl	800256c <i2c_write_reg>
 800064c:	203c      	movs	r0, #60	; 0x3c
 800064e:	2121      	movs	r1, #33	; 0x21
 8000650:	2200      	movs	r2, #0
 8000652:	f001 ff8b 	bl	800256c <i2c_write_reg>
 8000656:	203c      	movs	r0, #60	; 0x3c
 8000658:	2124      	movs	r1, #36	; 0x24
 800065a:	22f4      	movs	r2, #244	; 0xf4
 800065c:	f001 ff86 	bl	800256c <i2c_write_reg>
 8000660:	203c      	movs	r0, #60	; 0x3c
 8000662:	2125      	movs	r1, #37	; 0x25
 8000664:	2200      	movs	r2, #0
 8000666:	f001 ff81 	bl	800256c <i2c_write_reg>
 800066a:	203c      	movs	r0, #60	; 0x3c
 800066c:	2126      	movs	r1, #38	; 0x26
 800066e:	2280      	movs	r2, #128	; 0x80
 8000670:	f001 ff7c 	bl	800256c <i2c_write_reg>
 8000674:	4620      	mov	r0, r4
 8000676:	f7ff ff1c 	bl	80004b2 <_ZN6CRobot12lsm9ds0_readEv>
 800067a:	2600      	movs	r6, #0
 800067c:	2510      	movs	r5, #16
 800067e:	4637      	mov	r7, r6
 8000680:	46b0      	mov	r8, r6
 8000682:	4620      	mov	r0, r4
 8000684:	f7ff ff15 	bl	80004b2 <_ZN6CRobot12lsm9ds0_readEv>
 8000688:	f9b4 3094 	ldrsh.w	r3, [r4, #148]	; 0x94
 800068c:	4498      	add	r8, r3
 800068e:	f9b4 3096 	ldrsh.w	r3, [r4, #150]	; 0x96
 8000692:	441f      	add	r7, r3
 8000694:	f9b4 3098 	ldrsh.w	r3, [r4, #152]	; 0x98
 8000698:	3d01      	subs	r5, #1
 800069a:	441e      	add	r6, r3
 800069c:	d1f1      	bne.n	8000682 <_ZN6CRobot12lsm9ds0_initEv+0x7e>
 800069e:	2210      	movs	r2, #16
 80006a0:	f8a4 5088 	strh.w	r5, [r4, #136]	; 0x88
 80006a4:	fb98 f3f2 	sdiv	r3, r8, r2
 80006a8:	fb97 f7f2 	sdiv	r7, r7, r2
 80006ac:	fb96 f6f2 	sdiv	r6, r6, r2
 80006b0:	f8c4 309c 	str.w	r3, [r4, #156]	; 0x9c
 80006b4:	f8c4 70a0 	str.w	r7, [r4, #160]	; 0xa0
 80006b8:	f8c4 60a4 	str.w	r6, [r4, #164]	; 0xa4
 80006bc:	f8a4 508a 	strh.w	r5, [r4, #138]	; 0x8a
 80006c0:	f8a4 508c 	strh.w	r5, [r4, #140]	; 0x8c
 80006c4:	f8a4 508e 	strh.w	r5, [r4, #142]	; 0x8e
 80006c8:	f8a4 5090 	strh.w	r5, [r4, #144]	; 0x90
 80006cc:	f8a4 5092 	strh.w	r5, [r4, #146]	; 0x92
 80006d0:	f8a4 5094 	strh.w	r5, [r4, #148]	; 0x94
 80006d4:	f8a4 5096 	strh.w	r5, [r4, #150]	; 0x96
 80006d8:	f8a4 5098 	strh.w	r5, [r4, #152]	; 0x98
 80006dc:	f8a4 50a8 	strh.w	r5, [r4, #168]	; 0xa8
 80006e0:	e002      	b.n	80006e8 <_ZN6CRobot12lsm9ds0_initEv+0xe4>
 80006e2:	2501      	movs	r5, #1
 80006e4:	e000      	b.n	80006e8 <_ZN6CRobot12lsm9ds0_initEv+0xe4>
 80006e6:	2502      	movs	r5, #2
 80006e8:	4628      	mov	r0, r5
 80006ea:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

080006ee <_ZN6CRobot4initEv>:
 80006ee:	2300      	movs	r3, #0
 80006f0:	b510      	push	{r4, lr}
 80006f2:	6543      	str	r3, [r0, #84]	; 0x54
 80006f4:	6583      	str	r3, [r0, #88]	; 0x58
 80006f6:	4604      	mov	r4, r0
 80006f8:	f7ff feb1 	bl	800045e <_ZN6CRobot16line_sensor_initEv>
 80006fc:	b110      	cbz	r0, 8000704 <_ZN6CRobot4initEv+0x16>
 80006fe:	6560      	str	r0, [r4, #84]	; 0x54
 8000700:	2302      	movs	r3, #2
 8000702:	e00d      	b.n	8000720 <_ZN6CRobot4initEv+0x32>
 8000704:	f884 0030 	strb.w	r0, [r4, #48]	; 0x30
 8000708:	6360      	str	r0, [r4, #52]	; 0x34
 800070a:	63a0      	str	r0, [r4, #56]	; 0x38
 800070c:	63e0      	str	r0, [r4, #60]	; 0x3c
 800070e:	f884 0040 	strb.w	r0, [r4, #64]	; 0x40
 8000712:	6460      	str	r0, [r4, #68]	; 0x44
 8000714:	4620      	mov	r0, r4
 8000716:	f7ff ff75 	bl	8000604 <_ZN6CRobot12lsm9ds0_initEv>
 800071a:	b118      	cbz	r0, 8000724 <_ZN6CRobot4initEv+0x36>
 800071c:	6560      	str	r0, [r4, #84]	; 0x54
 800071e:	2303      	movs	r3, #3
 8000720:	65a3      	str	r3, [r4, #88]	; 0x58
 8000722:	bd10      	pop	{r4, pc}
 8000724:	64a0      	str	r0, [r4, #72]	; 0x48
 8000726:	64e0      	str	r0, [r4, #76]	; 0x4c
 8000728:	6520      	str	r0, [r4, #80]	; 0x50
 800072a:	bd10      	pop	{r4, pc}

0800072c <abort_error_>:
 800072c:	b570      	push	{r4, r5, r6, lr}
 800072e:	4605      	mov	r5, r0
 8000730:	460e      	mov	r6, r1
 8000732:	480f      	ldr	r0, [pc, #60]	; (8000770 <abort_error_+0x44>)
 8000734:	4629      	mov	r1, r5
 8000736:	4632      	mov	r2, r6
 8000738:	f000 fd58 	bl	80011ec <printf_>
 800073c:	2400      	movs	r4, #0
 800073e:	1ceb      	adds	r3, r5, #3
 8000740:	429c      	cmp	r4, r3
 8000742:	d20f      	bcs.n	8000764 <abort_error_+0x38>
 8000744:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8000748:	f002 fa22 	bl	8002b90 <led_on>
 800074c:	2032      	movs	r0, #50	; 0x32
 800074e:	f001 fca5 	bl	800209c <timer_delay_ms>
 8000752:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8000756:	f002 fa25 	bl	8002ba4 <led_off>
 800075a:	2064      	movs	r0, #100	; 0x64
 800075c:	f001 fc9e 	bl	800209c <timer_delay_ms>
 8000760:	3401      	adds	r4, #1
 8000762:	e7ec      	b.n	800073e <abort_error_+0x12>
 8000764:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 8000768:	f001 fc98 	bl	800209c <timer_delay_ms>
 800076c:	e7e1      	b.n	8000732 <abort_error_+0x6>
 800076e:	bf00      	nop
 8000770:	080047cc 	.word	0x080047cc

08000774 <_ZN9CObstacle4initEP6CRobot>:
 8000774:	2300      	movs	r3, #0
 8000776:	6003      	str	r3, [r0, #0]
 8000778:	6041      	str	r1, [r0, #4]
 800077a:	4770      	bx	lr

0800077c <_ZN9CObstacle12rotate_robotEi>:
 800077c:	b538      	push	{r3, r4, r5, lr}
 800077e:	4605      	mov	r5, r0
 8000780:	ed2d 8b02 	vpush	{d8}
 8000784:	f240 444c 	movw	r4, #1100	; 0x44c
 8000788:	6840      	ldr	r0, [r0, #4]
 800078a:	ed9f 8a22 	vldr	s16, [pc, #136]	; 8000814 <_ZN9CObstacle12rotate_robotEi+0x98>
 800078e:	434c      	muls	r4, r1
 8000790:	215a      	movs	r1, #90	; 0x5a
 8000792:	fb94 f4f1 	sdiv	r4, r4, r1
 8000796:	f7ff fd18 	bl	80001ca <_ZN6CRobot9reset_imuEv>
 800079a:	6868      	ldr	r0, [r5, #4]
 800079c:	f7ff fd0f 	bl	80001be <_ZN6CRobot14get_imu_sensorEv>
 80007a0:	6883      	ldr	r3, [r0, #8]
 80007a2:	ea84 72e4 	eor.w	r2, r4, r4, asr #31
 80007a6:	2b00      	cmp	r3, #0
 80007a8:	bfb8      	it	lt
 80007aa:	425b      	neglt	r3, r3
 80007ac:	eba2 72e4 	sub.w	r2, r2, r4, asr #31
 80007b0:	4293      	cmp	r3, r2
 80007b2:	da22      	bge.n	80007fa <_ZN9CObstacle12rotate_robotEi+0x7e>
 80007b4:	eddf 7a18 	vldr	s15, [pc, #96]	; 8000818 <_ZN9CObstacle12rotate_robotEi+0x9c>
 80007b8:	6868      	ldr	r0, [r5, #4]
 80007ba:	ee38 8a27 	vadd.f32	s16, s16, s15
 80007be:	eddf 7a17 	vldr	s15, [pc, #92]	; 800081c <_ZN9CObstacle12rotate_robotEi+0xa0>
 80007c2:	eeb4 8a67 	vcmp.f32	s16, s15
 80007c6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80007ca:	bfc8      	it	gt
 80007cc:	eeb0 8a67 	vmovgt.f32	s16, s15
 80007d0:	eddf 7a13 	vldr	s15, [pc, #76]	; 8000820 <_ZN9CObstacle12rotate_robotEi+0xa4>
 80007d4:	ee68 7a27 	vmul.f32	s15, s16, s15
 80007d8:	2c00      	cmp	r4, #0
 80007da:	eefd 7ae7 	vcvt.s32.f32	s15, s15
 80007de:	ee17 3a90 	vmov	r3, s15
 80007e2:	f1c3 0200 	rsb	r2, r3, #0
 80007e6:	bfd6      	itet	le
 80007e8:	4611      	movle	r1, r2
 80007ea:	4619      	movgt	r1, r3
 80007ec:	461a      	movle	r2, r3
 80007ee:	f7ff fce8 	bl	80001c2 <_ZN6CRobot10set_motorsEii>
 80007f2:	200a      	movs	r0, #10
 80007f4:	f001 fc52 	bl	800209c <timer_delay_ms>
 80007f8:	e7cf      	b.n	800079a <_ZN9CObstacle12rotate_robotEi+0x1e>
 80007fa:	2100      	movs	r1, #0
 80007fc:	6868      	ldr	r0, [r5, #4]
 80007fe:	460a      	mov	r2, r1
 8000800:	f7ff fcdf 	bl	80001c2 <_ZN6CRobot10set_motorsEii>
 8000804:	ecbd 8b02 	vpop	{d8}
 8000808:	20c8      	movs	r0, #200	; 0xc8
 800080a:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 800080e:	f001 bc45 	b.w	800209c <timer_delay_ms>
 8000812:	bf00      	nop
 8000814:	00000000 	.word	0x00000000
 8000818:	3d23d70a 	.word	0x3d23d70a
 800081c:	3ecccccd 	.word	0x3ecccccd
 8000820:	42c80000 	.word	0x42c80000

08000824 <_ZN9CObstacle10go_forwardEijPFhvE>:
 8000824:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8000828:	ed2d 8b04 	vpush	{d8-d9}
 800082c:	4604      	mov	r4, r0
 800082e:	460d      	mov	r5, r1
 8000830:	4617      	mov	r7, r2
 8000832:	461e      	mov	r6, r3
 8000834:	f001 fc24 	bl	8002080 <timer_get_time>
 8000838:	4680      	mov	r8, r0
 800083a:	6860      	ldr	r0, [r4, #4]
 800083c:	f7ff fcc5 	bl	80001ca <_ZN6CRobot9reset_imuEv>
 8000840:	2d00      	cmp	r5, #0
 8000842:	d046      	beq.n	80008d2 <_ZN9CObstacle10go_forwardEijPFhvE+0xae>
 8000844:	ed9f 9a28 	vldr	s18, [pc, #160]	; 80008e8 <_ZN9CObstacle10go_forwardEijPFhvE+0xc4>
 8000848:	eeb0 8a49 	vmov.f32	s16, s18
 800084c:	eef0 9a49 	vmov.f32	s19, s18
 8000850:	e001      	b.n	8000856 <_ZN9CObstacle10go_forwardEijPFhvE+0x32>
 8000852:	eeb0 8a68 	vmov.f32	s16, s17
 8000856:	f001 fc13 	bl	8002080 <timer_get_time>
 800085a:	eb08 0307 	add.w	r3, r8, r7
 800085e:	4298      	cmp	r0, r3
 8000860:	d237      	bcs.n	80008d2 <_ZN9CObstacle10go_forwardEijPFhvE+0xae>
 8000862:	6860      	ldr	r0, [r4, #4]
 8000864:	f7ff fcab 	bl	80001be <_ZN6CRobot14get_imu_sensorEv>
 8000868:	edd0 8a02 	vldr	s17, [r0, #8]
 800086c:	eddf 7a1f 	vldr	s15, [pc, #124]	; 80008ec <_ZN9CObstacle10go_forwardEijPFhvE+0xc8>
 8000870:	ed9f 7a1f 	vldr	s14, [pc, #124]	; 80008f0 <_ZN9CObstacle10go_forwardEijPFhvE+0xcc>
 8000874:	6860      	ldr	r0, [r4, #4]
 8000876:	eef8 8ae8 	vcvt.f32.s32	s17, s17
 800087a:	ee79 8ae8 	vsub.f32	s17, s19, s17
 800087e:	ee38 8ac8 	vsub.f32	s16, s17, s16
 8000882:	ee28 8a27 	vmul.f32	s16, s16, s15
 8000886:	eddf 7a1b 	vldr	s15, [pc, #108]	; 80008f4 <_ZN9CObstacle10go_forwardEijPFhvE+0xd0>
 800088a:	ee08 8aa7 	vmla.f32	s16, s17, s15
 800088e:	ee07 5a90 	vmov	s15, r5
 8000892:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 8000896:	ee67 7a87 	vmul.f32	s15, s15, s14
 800089a:	ed9f 7a17 	vldr	s14, [pc, #92]	; 80008f8 <_ZN9CObstacle10go_forwardEijPFhvE+0xd4>
 800089e:	ee49 7a07 	vmla.f32	s15, s18, s14
 80008a2:	eeb0 9a67 	vmov.f32	s18, s15
 80008a6:	ee77 7ac8 	vsub.f32	s15, s15, s16
 80008aa:	ee39 8a08 	vadd.f32	s16, s18, s16
 80008ae:	eefd 7ae7 	vcvt.s32.f32	s15, s15
 80008b2:	ee17 1a90 	vmov	r1, s15
 80008b6:	eefd 7ac8 	vcvt.s32.f32	s15, s16
 80008ba:	ee17 2a90 	vmov	r2, s15
 80008be:	f7ff fc80 	bl	80001c2 <_ZN6CRobot10set_motorsEii>
 80008c2:	200a      	movs	r0, #10
 80008c4:	f001 fbea 	bl	800209c <timer_delay_ms>
 80008c8:	2e00      	cmp	r6, #0
 80008ca:	d0c2      	beq.n	8000852 <_ZN9CObstacle10go_forwardEijPFhvE+0x2e>
 80008cc:	47b0      	blx	r6
 80008ce:	2800      	cmp	r0, #0
 80008d0:	d0bf      	beq.n	8000852 <_ZN9CObstacle10go_forwardEijPFhvE+0x2e>
 80008d2:	2000      	movs	r0, #0
 80008d4:	4601      	mov	r1, r0
 80008d6:	f001 ff99 	bl	800280c <drv8834_run>
 80008da:	ecbd 8b04 	vpop	{d8-d9}
 80008de:	2064      	movs	r0, #100	; 0x64
 80008e0:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 80008e4:	f001 bbda 	b.w	800209c <timer_delay_ms>
 80008e8:	00000000 	.word	0x00000000
 80008ec:	3a83126f 	.word	0x3a83126f
 80008f0:	3e4ccccc 	.word	0x3e4ccccc
 80008f4:	399d4952 	.word	0x399d4952
 80008f8:	3f4ccccd 	.word	0x3f4ccccd

080008fc <_ZN9CObstacle7processEv>:
 80008fc:	b510      	push	{r4, lr}
 80008fe:	4604      	mov	r4, r0
 8000900:	f002 f962 	bl	8002bc8 <get_mode_jumper>
 8000904:	4601      	mov	r1, r0
 8000906:	4620      	mov	r0, r4
 8000908:	b931      	cbnz	r1, 8000918 <_ZN9CObstacle7processEv+0x1c>
 800090a:	460b      	mov	r3, r1
 800090c:	2264      	movs	r2, #100	; 0x64
 800090e:	f7ff ff89 	bl	8000824 <_ZN9CObstacle10go_forwardEijPFhvE>
 8000912:	4620      	mov	r0, r4
 8000914:	21b4      	movs	r1, #180	; 0xb4
 8000916:	e03a      	b.n	800098e <_ZN9CObstacle7processEv+0x92>
 8000918:	2100      	movs	r1, #0
 800091a:	460b      	mov	r3, r1
 800091c:	2232      	movs	r2, #50	; 0x32
 800091e:	f7ff ff81 	bl	8000824 <_ZN9CObstacle10go_forwardEijPFhvE>
 8000922:	4620      	mov	r0, r4
 8000924:	f06f 013b 	mvn.w	r1, #59	; 0x3b
 8000928:	2282      	movs	r2, #130	; 0x82
 800092a:	2300      	movs	r3, #0
 800092c:	f7ff ff7a 	bl	8000824 <_ZN9CObstacle10go_forwardEijPFhvE>
 8000930:	2100      	movs	r1, #0
 8000932:	460b      	mov	r3, r1
 8000934:	2232      	movs	r2, #50	; 0x32
 8000936:	4620      	mov	r0, r4
 8000938:	f7ff ff74 	bl	8000824 <_ZN9CObstacle10go_forwardEijPFhvE>
 800093c:	4620      	mov	r0, r4
 800093e:	215a      	movs	r1, #90	; 0x5a
 8000940:	f7ff ff1c 	bl	800077c <_ZN9CObstacle12rotate_robotEi>
 8000944:	22fa      	movs	r2, #250	; 0xfa
 8000946:	2300      	movs	r3, #0
 8000948:	4620      	mov	r0, r4
 800094a:	213c      	movs	r1, #60	; 0x3c
 800094c:	f7ff ff6a 	bl	8000824 <_ZN9CObstacle10go_forwardEijPFhvE>
 8000950:	4620      	mov	r0, r4
 8000952:	f06f 0159 	mvn.w	r1, #89	; 0x59
 8000956:	f7ff ff11 	bl	800077c <_ZN9CObstacle12rotate_robotEi>
 800095a:	f44f 72af 	mov.w	r2, #350	; 0x15e
 800095e:	2300      	movs	r3, #0
 8000960:	4620      	mov	r0, r4
 8000962:	213c      	movs	r1, #60	; 0x3c
 8000964:	f7ff ff5e 	bl	8000824 <_ZN9CObstacle10go_forwardEijPFhvE>
 8000968:	4620      	mov	r0, r4
 800096a:	f06f 0159 	mvn.w	r1, #89	; 0x59
 800096e:	f7ff ff05 	bl	800077c <_ZN9CObstacle12rotate_robotEi>
 8000972:	4620      	mov	r0, r4
 8000974:	213c      	movs	r1, #60	; 0x3c
 8000976:	2232      	movs	r2, #50	; 0x32
 8000978:	2300      	movs	r3, #0
 800097a:	f7ff ff53 	bl	8000824 <_ZN9CObstacle10go_forwardEijPFhvE>
 800097e:	4620      	mov	r0, r4
 8000980:	213c      	movs	r1, #60	; 0x3c
 8000982:	22fa      	movs	r2, #250	; 0xfa
 8000984:	2300      	movs	r3, #0
 8000986:	f7ff ff4d 	bl	8000824 <_ZN9CObstacle10go_forwardEijPFhvE>
 800098a:	4620      	mov	r0, r4
 800098c:	215a      	movs	r1, #90	; 0x5a
 800098e:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000992:	f7ff bef3 	b.w	800077c <_ZN9CObstacle12rotate_robotEi>
	...

08000998 <_Z18line_sensor_threadv>:
 8000998:	b508      	push	{r3, lr}
 800099a:	2000      	movs	r0, #0
 800099c:	2104      	movs	r1, #4
 800099e:	f001 fb8d 	bl	80020bc <event_timer_set_period>
 80009a2:	2000      	movs	r0, #0
 80009a4:	f001 fba2 	bl	80020ec <event_timer_wait>
 80009a8:	4801      	ldr	r0, [pc, #4]	; (80009b0 <_Z18line_sensor_threadv+0x18>)
 80009aa:	f7ff fd4f 	bl	800044c <_ZN6CRobot19process_rgb_sensorsEv>
 80009ae:	e7f8      	b.n	80009a2 <_Z18line_sensor_threadv+0xa>
 80009b0:	20000918 	.word	0x20000918

080009b4 <_Z17imu_sensor_threadv>:
 80009b4:	b508      	push	{r3, lr}
 80009b6:	2001      	movs	r0, #1
 80009b8:	210a      	movs	r1, #10
 80009ba:	f001 fb7f 	bl	80020bc <event_timer_set_period>
 80009be:	2001      	movs	r0, #1
 80009c0:	f001 fb94 	bl	80020ec <event_timer_wait>
 80009c4:	4801      	ldr	r0, [pc, #4]	; (80009cc <_Z17imu_sensor_threadv+0x18>)
 80009c6:	f7ff fdf9 	bl	80005bc <_ZN6CRobot18process_imu_sensorEv>
 80009ca:	e7f8      	b.n	80009be <_Z17imu_sensor_threadv+0xa>
 80009cc:	20000918 	.word	0x20000918

080009d0 <_Z13line_followerv>:
 80009d0:	b510      	push	{r4, lr}
 80009d2:	2002      	movs	r0, #2
 80009d4:	2104      	movs	r1, #4
 80009d6:	f001 fb71 	bl	80020bc <event_timer_set_period>
 80009da:	2400      	movs	r4, #0
 80009dc:	2002      	movs	r0, #2
 80009de:	f001 fb85 	bl	80020ec <event_timer_wait>
 80009e2:	4813      	ldr	r0, [pc, #76]	; (8000a30 <_Z13line_followerv+0x60>)
 80009e4:	f7ff fbe9 	bl	80001ba <_ZN6CRobot28get_obstacle_position_sensorEv>
 80009e8:	7803      	ldrb	r3, [r0, #0]
 80009ea:	2b01      	cmp	r3, #1
 80009ec:	d103      	bne.n	80009f6 <_Z13line_followerv+0x26>
 80009ee:	4811      	ldr	r0, [pc, #68]	; (8000a34 <_Z13line_followerv+0x64>)
 80009f0:	f7ff ff84 	bl	80008fc <_ZN9CObstacle7processEv>
 80009f4:	e00c      	b.n	8000a10 <_Z13line_followerv+0x40>
 80009f6:	480e      	ldr	r0, [pc, #56]	; (8000a30 <_Z13line_followerv+0x60>)
 80009f8:	f7ff fbdd 	bl	80001b6 <_ZN6CRobot24get_line_position_sensorEv>
 80009fc:	7803      	ldrb	r3, [r0, #0]
 80009fe:	2b01      	cmp	r3, #1
 8000a00:	d103      	bne.n	8000a0a <_Z13line_followerv+0x3a>
 8000a02:	480d      	ldr	r0, [pc, #52]	; (8000a38 <_Z13line_followerv+0x68>)
 8000a04:	f000 f92c 	bl	8000c60 <_ZN13CLineFollower7processEv>
 8000a08:	e002      	b.n	8000a10 <_Z13line_followerv+0x40>
 8000a0a:	480c      	ldr	r0, [pc, #48]	; (8000a3c <_Z13line_followerv+0x6c>)
 8000a0c:	f000 f994 	bl	8000d38 <_ZN11CBrokenLine7processEv>
 8000a10:	3401      	adds	r4, #1
 8000a12:	2214      	movs	r2, #20
 8000a14:	fbb4 f3f2 	udiv	r3, r4, r2
 8000a18:	fb02 4313 	mls	r3, r2, r3, r4
 8000a1c:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8000a20:	b913      	cbnz	r3, 8000a28 <_Z13line_followerv+0x58>
 8000a22:	f002 f8b5 	bl	8002b90 <led_on>
 8000a26:	e7d9      	b.n	80009dc <_Z13line_followerv+0xc>
 8000a28:	f002 f8bc 	bl	8002ba4 <led_off>
 8000a2c:	e7d6      	b.n	80009dc <_Z13line_followerv+0xc>
 8000a2e:	bf00      	nop
 8000a30:	20000918 	.word	0x20000918
 8000a34:	20000710 	.word	0x20000710
 8000a38:	200009c4 	.word	0x200009c4
 8000a3c:	20000504 	.word	0x20000504

08000a40 <main_thread>:
 8000a40:	b530      	push	{r4, r5, lr}
 8000a42:	4842      	ldr	r0, [pc, #264]	; (8000b4c <main_thread+0x10c>)
 8000a44:	b097      	sub	sp, #92	; 0x5c
 8000a46:	f000 fbd1 	bl	80011ec <printf_>
 8000a4a:	f44f 7096 	mov.w	r0, #300	; 0x12c
 8000a4e:	f001 fb25 	bl	800209c <timer_delay_ms>
 8000a52:	2396      	movs	r3, #150	; 0x96
 8000a54:	f8ad 3028 	strh.w	r3, [sp, #40]	; 0x28
 8000a58:	f44f 732f 	mov.w	r3, #700	; 0x2bc
 8000a5c:	f8ad 302a 	strh.w	r3, [sp, #42]	; 0x2a
 8000a60:	2300      	movs	r3, #0
 8000a62:	f88d 302c 	strb.w	r3, [sp, #44]	; 0x2c
 8000a66:	930d      	str	r3, [sp, #52]	; 0x34
 8000a68:	930f      	str	r3, [sp, #60]	; 0x3c
 8000a6a:	2314      	movs	r3, #20
 8000a6c:	f44f 72a3 	mov.w	r2, #326	; 0x146
 8000a70:	9310      	str	r3, [sp, #64]	; 0x40
 8000a72:	f241 3388 	movw	r3, #5000	; 0x1388
 8000a76:	920c      	str	r2, [sp, #48]	; 0x30
 8000a78:	9311      	str	r3, [sp, #68]	; 0x44
 8000a7a:	f241 12b2 	movw	r2, #4530	; 0x11b2
 8000a7e:	f44f 73fa 	mov.w	r3, #500	; 0x1f4
 8000a82:	920e      	str	r2, [sp, #56]	; 0x38
 8000a84:	9312      	str	r3, [sp, #72]	; 0x48
 8000a86:	f44f 7248 	mov.w	r2, #800	; 0x320
 8000a8a:	9314      	str	r3, [sp, #80]	; 0x50
 8000a8c:	4830      	ldr	r0, [pc, #192]	; (8000b50 <main_thread+0x110>)
 8000a8e:	9213      	str	r2, [sp, #76]	; 0x4c
 8000a90:	2332      	movs	r3, #50	; 0x32
 8000a92:	ad0d      	add	r5, sp, #52	; 0x34
 8000a94:	9315      	str	r3, [sp, #84]	; 0x54
 8000a96:	f7ff fe2a 	bl	80006ee <_ZN6CRobot4initEv>
 8000a9a:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
 8000a9c:	466c      	mov	r4, sp
 8000a9e:	c40f      	stmia	r4!, {r0, r1, r2, r3}
 8000aa0:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
 8000aa2:	c40f      	stmia	r4!, {r0, r1, r2, r3}
 8000aa4:	682b      	ldr	r3, [r5, #0]
 8000aa6:	6023      	str	r3, [r4, #0]
 8000aa8:	ab0a      	add	r3, sp, #40	; 0x28
 8000aaa:	cb0e      	ldmia	r3, {r1, r2, r3}
 8000aac:	4828      	ldr	r0, [pc, #160]	; (8000b50 <main_thread+0x110>)
 8000aae:	f7ff fb6f 	bl	8000190 <_ZN6CRobot13set_configureE15sRobotConfigure>
 8000ab2:	4828      	ldr	r0, [pc, #160]	; (8000b54 <main_thread+0x114>)
 8000ab4:	4926      	ldr	r1, [pc, #152]	; (8000b50 <main_thread+0x110>)
 8000ab6:	f000 f85d 	bl	8000b74 <_ZN13CLineFollower4initEP6CRobot>
 8000aba:	4827      	ldr	r0, [pc, #156]	; (8000b58 <main_thread+0x118>)
 8000abc:	4924      	ldr	r1, [pc, #144]	; (8000b50 <main_thread+0x110>)
 8000abe:	f7ff fe59 	bl	8000774 <_ZN9CObstacle4initEP6CRobot>
 8000ac2:	4826      	ldr	r0, [pc, #152]	; (8000b5c <main_thread+0x11c>)
 8000ac4:	4922      	ldr	r1, [pc, #136]	; (8000b50 <main_thread+0x110>)
 8000ac6:	f000 f929 	bl	8000d1c <_ZN11CBrokenLine4initEP6CRobot>
 8000aca:	4821      	ldr	r0, [pc, #132]	; (8000b50 <main_thread+0x110>)
 8000acc:	f7ff fb5c 	bl	8000188 <_ZN6CRobot14get_error_typeEv>
 8000ad0:	b158      	cbz	r0, 8000aea <main_thread+0xaa>
 8000ad2:	481f      	ldr	r0, [pc, #124]	; (8000b50 <main_thread+0x110>)
 8000ad4:	f7ff fb58 	bl	8000188 <_ZN6CRobot14get_error_typeEv>
 8000ad8:	4604      	mov	r4, r0
 8000ada:	481d      	ldr	r0, [pc, #116]	; (8000b50 <main_thread+0x110>)
 8000adc:	f7ff fb56 	bl	800018c <_ZN6CRobot14get_error_codeEv>
 8000ae0:	4601      	mov	r1, r0
 8000ae2:	4620      	mov	r0, r4
 8000ae4:	f7ff fe22 	bl	800072c <abort_error_>
 8000ae8:	e7f3      	b.n	8000ad2 <main_thread+0x92>
 8000aea:	491d      	ldr	r1, [pc, #116]	; (8000b60 <main_thread+0x120>)
 8000aec:	481d      	ldr	r0, [pc, #116]	; (8000b64 <main_thread+0x124>)
 8000aee:	f44f 7200 	mov.w	r2, #512	; 0x200
 8000af2:	2306      	movs	r3, #6
 8000af4:	f000 fa4c 	bl	8000f90 <create_thread>
 8000af8:	481b      	ldr	r0, [pc, #108]	; (8000b68 <main_thread+0x128>)
 8000afa:	491c      	ldr	r1, [pc, #112]	; (8000b6c <main_thread+0x12c>)
 8000afc:	f44f 7200 	mov.w	r2, #512	; 0x200
 8000b00:	2306      	movs	r3, #6
 8000b02:	f000 fa45 	bl	8000f90 <create_thread>
 8000b06:	f002 f857 	bl	8002bb8 <get_key>
 8000b0a:	b128      	cbz	r0, 8000b18 <main_thread+0xd8>
 8000b0c:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 8000b10:	f001 fac4 	bl	800209c <timer_delay_ms>
 8000b14:	f7ff ff5c 	bl	80009d0 <_Z13line_followerv>
 8000b18:	f002 f85c 	bl	8002bd4 <left_encoder_read>
 8000b1c:	4604      	mov	r4, r0
 8000b1e:	f002 f85f 	bl	8002be0 <right_encoder_read>
 8000b22:	4621      	mov	r1, r4
 8000b24:	4602      	mov	r2, r0
 8000b26:	4812      	ldr	r0, [pc, #72]	; (8000b70 <main_thread+0x130>)
 8000b28:	f000 fb60 	bl	80011ec <printf_>
 8000b2c:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8000b30:	f002 f82e 	bl	8002b90 <led_on>
 8000b34:	2064      	movs	r0, #100	; 0x64
 8000b36:	f001 fab1 	bl	800209c <timer_delay_ms>
 8000b3a:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8000b3e:	f002 f831 	bl	8002ba4 <led_off>
 8000b42:	20c8      	movs	r0, #200	; 0xc8
 8000b44:	f001 faaa 	bl	800209c <timer_delay_ms>
 8000b48:	e7dd      	b.n	8000b06 <main_thread+0xc6>
 8000b4a:	bf00      	nop
 8000b4c:	0800482b 	.word	0x0800482b
 8000b50:	20000918 	.word	0x20000918
 8000b54:	200009c4 	.word	0x200009c4
 8000b58:	20000710 	.word	0x20000710
 8000b5c:	20000504 	.word	0x20000504
 8000b60:	20000510 	.word	0x20000510
 8000b64:	08000999 	.word	0x08000999
 8000b68:	080009b5 	.word	0x080009b5
 8000b6c:	20000718 	.word	0x20000718
 8000b70:	08004866 	.word	0x08004866

08000b74 <_ZN13CLineFollower4initEP6CRobot>:
 8000b74:	b510      	push	{r4, lr}
 8000b76:	ed2d 8b04 	vpush	{d8-d9}
 8000b7a:	4604      	mov	r4, r0
 8000b7c:	2300      	movs	r3, #0
 8000b7e:	b082      	sub	sp, #8
 8000b80:	6103      	str	r3, [r0, #16]
 8000b82:	6143      	str	r3, [r0, #20]
 8000b84:	6401      	str	r1, [r0, #64]	; 0x40
 8000b86:	4833      	ldr	r0, [pc, #204]	; (8000c54 <_ZN13CLineFollower4initEP6CRobot+0xe0>)
 8000b88:	ed9f 8a33 	vldr	s16, [pc, #204]	; 8000c58 <_ZN13CLineFollower4initEP6CRobot+0xe4>
 8000b8c:	f000 f970 	bl	8000e70 <_ZN11CQPredictor4initEv>
 8000b90:	6c20      	ldr	r0, [r4, #64]	; 0x40
 8000b92:	f7ff fb0f 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000b96:	ed90 9a02 	vldr	s18, [r0, #8]
 8000b9a:	6c20      	ldr	r0, [r4, #64]	; 0x40
 8000b9c:	f7ff fb0a 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000ba0:	edd0 8a03 	vldr	s17, [r0, #12]
 8000ba4:	6c20      	ldr	r0, [r4, #64]	; 0x40
 8000ba6:	f7ff fb05 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000baa:	edd0 9a04 	vldr	s19, [r0, #16]
 8000bae:	6c20      	ldr	r0, [r4, #64]	; 0x40
 8000bb0:	eef8 9ae9 	vcvt.f32.s32	s19, s19
 8000bb4:	f7ff fafe 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000bb8:	eec9 9a88 	vdiv.f32	s19, s19, s16
 8000bbc:	4927      	ldr	r1, [pc, #156]	; (8000c5c <_ZN13CLineFollower4initEP6CRobot+0xe8>)
 8000bbe:	eeb8 9ac9 	vcvt.f32.s32	s18, s18
 8000bc2:	edcd 9a00 	vstr	s19, [sp]
 8000bc6:	edd0 7a05 	vldr	s15, [r0, #20]
 8000bca:	eef8 8ae8 	vcvt.f32.s32	s17, s17
 8000bce:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 8000bd2:	ee89 9a08 	vdiv.f32	s18, s18, s16
 8000bd6:	f104 0018 	add.w	r0, r4, #24
 8000bda:	eec7 7a88 	vdiv.f32	s15, s15, s16
 8000bde:	eec8 8a88 	vdiv.f32	s17, s17, s16
 8000be2:	ee19 2a10 	vmov	r2, s18
 8000be6:	ee18 3a90 	vmov	r3, s17
 8000bea:	edcd 7a01 	vstr	s15, [sp, #4]
 8000bee:	f000 fbff 	bl	80013f0 <pid_init>
 8000bf2:	6c20      	ldr	r0, [r4, #64]	; 0x40
 8000bf4:	f7ff fade 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000bf8:	edd0 7a06 	vldr	s15, [r0, #24]
 8000bfc:	6c20      	ldr	r0, [r4, #64]	; 0x40
 8000bfe:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 8000c02:	eec7 7a88 	vdiv.f32	s15, s15, s16
 8000c06:	edc4 7a00 	vstr	s15, [r4]
 8000c0a:	f7ff fad3 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000c0e:	edd0 7a07 	vldr	s15, [r0, #28]
 8000c12:	6c20      	ldr	r0, [r4, #64]	; 0x40
 8000c14:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 8000c18:	eec7 7a88 	vdiv.f32	s15, s15, s16
 8000c1c:	edc4 7a01 	vstr	s15, [r4, #4]
 8000c20:	f7ff fac8 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000c24:	edd0 7a08 	vldr	s15, [r0, #32]
 8000c28:	6c20      	ldr	r0, [r4, #64]	; 0x40
 8000c2a:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 8000c2e:	eec7 7a88 	vdiv.f32	s15, s15, s16
 8000c32:	edc4 7a02 	vstr	s15, [r4, #8]
 8000c36:	f7ff fabd 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000c3a:	edd0 7a09 	vldr	s15, [r0, #36]	; 0x24
 8000c3e:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 8000c42:	ee87 8a88 	vdiv.f32	s16, s15, s16
 8000c46:	ed84 8a03 	vstr	s16, [r4, #12]
 8000c4a:	b002      	add	sp, #8
 8000c4c:	ecbd 8b04 	vpop	{d8-d9}
 8000c50:	bd10      	pop	{r4, pc}
 8000c52:	bf00      	nop
 8000c54:	20000a08 	.word	0x20000a08
 8000c58:	447a0000 	.word	0x447a0000
 8000c5c:	42c80000 	.word	0x42c80000

08000c60 <_ZN13CLineFollower7processEv>:
 8000c60:	b510      	push	{r4, lr}
 8000c62:	4604      	mov	r4, r0
 8000c64:	ed2d 8b02 	vpush	{d8}
 8000c68:	6c00      	ldr	r0, [r0, #64]	; 0x40
 8000c6a:	ed9f 8a28 	vldr	s16, [pc, #160]	; 8000d0c <_ZN13CLineFollower7processEv+0xac>
 8000c6e:	f7ff faa2 	bl	80001b6 <_ZN6CRobot24get_line_position_sensorEv>
 8000c72:	edd0 7a01 	vldr	s15, [r0, #4]
 8000c76:	ed9f 7a26 	vldr	s14, [pc, #152]	; 8000d10 <_ZN13CLineFollower7processEv+0xb0>
 8000c7a:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 8000c7e:	ee07 8ac7 	vmls.f32	s16, s15, s14
 8000c82:	ee18 0a10 	vmov	r0, s16
 8000c86:	f000 fb81 	bl	800138c <m_abs>
 8000c8a:	ed9f 7a22 	vldr	s14, [pc, #136]	; 8000d14 <_ZN13CLineFollower7processEv+0xb4>
 8000c8e:	edd4 6a01 	vldr	s13, [r4, #4]
 8000c92:	edd4 5a00 	vldr	s11, [r4]
 8000c96:	ed94 6a04 	vldr	s12, [r4, #16]
 8000c9a:	ee07 0a90 	vmov	s15, r0
 8000c9e:	ee37 5a67 	vsub.f32	s10, s14, s15
 8000ca2:	ee07 7ae6 	vmls.f32	s14, s15, s13
 8000ca6:	ee05 6a25 	vmla.f32	s12, s10, s11
 8000caa:	ee17 1a10 	vmov	r1, s14
 8000cae:	ee16 0a10 	vmov	r0, s12
 8000cb2:	f000 fb8e 	bl	80013d2 <m_min>
 8000cb6:	68e2      	ldr	r2, [r4, #12]
 8000cb8:	68a1      	ldr	r1, [r4, #8]
 8000cba:	6120      	str	r0, [r4, #16]
 8000cbc:	f000 fb72 	bl	80013a4 <m_saturate>
 8000cc0:	ee18 1a10 	vmov	r1, s16
 8000cc4:	6120      	str	r0, [r4, #16]
 8000cc6:	f104 0018 	add.w	r0, r4, #24
 8000cca:	f000 fbc1 	bl	8001450 <pid_process>
 8000cce:	edd4 7a04 	vldr	s15, [r4, #16]
 8000cd2:	ed9f 6a11 	vldr	s12, [pc, #68]	; 8000d18 <_ZN13CLineFollower7processEv+0xb8>
 8000cd6:	6160      	str	r0, [r4, #20]
 8000cd8:	ee06 0a90 	vmov	s13, r0
 8000cdc:	ee37 7aa6 	vadd.f32	s14, s15, s13
 8000ce0:	ee77 7ae6 	vsub.f32	s15, s15, s13
 8000ce4:	ecbd 8b02 	vpop	{d8}
 8000ce8:	ee27 7a06 	vmul.f32	s14, s14, s12
 8000cec:	ee67 7a86 	vmul.f32	s15, s15, s12
 8000cf0:	eebd 7ac7 	vcvt.s32.f32	s14, s14
 8000cf4:	eefd 7ae7 	vcvt.s32.f32	s15, s15
 8000cf8:	6c20      	ldr	r0, [r4, #64]	; 0x40
 8000cfa:	ee17 1a10 	vmov	r1, s14
 8000cfe:	ee17 2a90 	vmov	r2, s15
 8000d02:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000d06:	f7ff ba5c 	b.w	80001c2 <_ZN6CRobot10set_motorsEii>
 8000d0a:	bf00      	nop
 8000d0c:	00000000 	.word	0x00000000
 8000d10:	3b800000 	.word	0x3b800000
 8000d14:	3f800000 	.word	0x3f800000
 8000d18:	42c80000 	.word	0x42c80000

08000d1c <_ZN11CBrokenLine4initEP6CRobot>:
 8000d1c:	b510      	push	{r4, lr}
 8000d1e:	4604      	mov	r4, r0
 8000d20:	6001      	str	r1, [r0, #0]
 8000d22:	4608      	mov	r0, r1
 8000d24:	f7ff fa46 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000d28:	6a83      	ldr	r3, [r0, #40]	; 0x28
 8000d2a:	6063      	str	r3, [r4, #4]
 8000d2c:	6820      	ldr	r0, [r4, #0]
 8000d2e:	f7ff fa41 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000d32:	6ac3      	ldr	r3, [r0, #44]	; 0x2c
 8000d34:	60a3      	str	r3, [r4, #8]
 8000d36:	bd10      	pop	{r4, pc}

08000d38 <_ZN11CBrokenLine7processEv>:
 8000d38:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8000d3c:	2600      	movs	r6, #0
 8000d3e:	4607      	mov	r7, r0
 8000d40:	4634      	mov	r4, r6
 8000d42:	46b1      	mov	r9, r6
 8000d44:	46b0      	mov	r8, r6
 8000d46:	4635      	mov	r5, r6
 8000d48:	6838      	ldr	r0, [r7, #0]
 8000d4a:	f7ff fa34 	bl	80001b6 <_ZN6CRobot24get_line_position_sensorEv>
 8000d4e:	7803      	ldrb	r3, [r0, #0]
 8000d50:	2b01      	cmp	r3, #1
 8000d52:	f000 8086 	beq.w	8000e62 <_ZN11CBrokenLine7processEv+0x12a>
 8000d56:	2005      	movs	r0, #5
 8000d58:	f001 f9a0 	bl	800209c <timer_delay_ms>
 8000d5c:	f1b9 0f05 	cmp.w	r9, #5
 8000d60:	d879      	bhi.n	8000e56 <_ZN11CBrokenLine7processEv+0x11e>
 8000d62:	e8df f009 	tbb	[pc, r9]
 8000d66:	1a03      	.short	0x1a03
 8000d68:	6b5e4831 	.word	0x6b5e4831
 8000d6c:	2c00      	cmp	r4, #0
 8000d6e:	d163      	bne.n	8000e38 <_ZN11CBrokenLine7processEv+0x100>
 8000d70:	6838      	ldr	r0, [r7, #0]
 8000d72:	f7ff fa20 	bl	80001b6 <_ZN6CRobot24get_line_position_sensorEv>
 8000d76:	6842      	ldr	r2, [r0, #4]
 8000d78:	68bb      	ldr	r3, [r7, #8]
 8000d7a:	687c      	ldr	r4, [r7, #4]
 8000d7c:	2a00      	cmp	r2, #0
 8000d7e:	bfce      	itee	gt
 8000d80:	461d      	movgt	r5, r3
 8000d82:	4698      	movle	r8, r3
 8000d84:	2500      	movle	r5, #0
 8000d86:	f04f 0305 	mov.w	r3, #5
 8000d8a:	bfc8      	it	gt
 8000d8c:	f04f 0800 	movgt.w	r8, #0
 8000d90:	fb94 f4f3 	sdiv	r4, r4, r3
 8000d94:	f04f 0901 	mov.w	r9, #1
 8000d98:	e05d      	b.n	8000e56 <_ZN11CBrokenLine7processEv+0x11e>
 8000d9a:	2c00      	cmp	r4, #0
 8000d9c:	d14c      	bne.n	8000e38 <_ZN11CBrokenLine7processEv+0x100>
 8000d9e:	6838      	ldr	r0, [r7, #0]
 8000da0:	f7ff fa09 	bl	80001b6 <_ZN6CRobot24get_line_position_sensorEv>
 8000da4:	6843      	ldr	r3, [r0, #4]
 8000da6:	68bd      	ldr	r5, [r7, #8]
 8000da8:	2b00      	cmp	r3, #0
 8000daa:	bfcc      	ite	gt
 8000dac:	46a0      	movgt	r8, r4
 8000dae:	f1c5 0800 	rsble	r8, r5, #0
 8000db2:	f04f 0305 	mov.w	r3, #5
 8000db6:	bfd4      	ite	le
 8000db8:	4625      	movle	r5, r4
 8000dba:	426d      	neggt	r5, r5
 8000dbc:	687c      	ldr	r4, [r7, #4]
 8000dbe:	fb94 f4f3 	sdiv	r4, r4, r3
 8000dc2:	f04f 0902 	mov.w	r9, #2
 8000dc6:	e046      	b.n	8000e56 <_ZN11CBrokenLine7processEv+0x11e>
 8000dc8:	2c00      	cmp	r4, #0
 8000dca:	d135      	bne.n	8000e38 <_ZN11CBrokenLine7processEv+0x100>
 8000dcc:	6838      	ldr	r0, [r7, #0]
 8000dce:	f7ff f9f2 	bl	80001b6 <_ZN6CRobot24get_line_position_sensorEv>
 8000dd2:	6842      	ldr	r2, [r0, #4]
 8000dd4:	68bb      	ldr	r3, [r7, #8]
 8000dd6:	687c      	ldr	r4, [r7, #4]
 8000dd8:	2a00      	cmp	r2, #0
 8000dda:	bfce      	itee	gt
 8000ddc:	4698      	movgt	r8, r3
 8000dde:	461d      	movle	r5, r3
 8000de0:	f04f 0800 	movle.w	r8, #0
 8000de4:	f04f 0305 	mov.w	r3, #5
 8000de8:	bfc8      	it	gt
 8000dea:	2500      	movgt	r5, #0
 8000dec:	fb94 f4f3 	sdiv	r4, r4, r3
 8000df0:	f04f 0903 	mov.w	r9, #3
 8000df4:	e02f      	b.n	8000e56 <_ZN11CBrokenLine7processEv+0x11e>
 8000df6:	b9fc      	cbnz	r4, 8000e38 <_ZN11CBrokenLine7processEv+0x100>
 8000df8:	6838      	ldr	r0, [r7, #0]
 8000dfa:	f7ff f9dc 	bl	80001b6 <_ZN6CRobot24get_line_position_sensorEv>
 8000dfe:	6843      	ldr	r3, [r0, #4]
 8000e00:	68bd      	ldr	r5, [r7, #8]
 8000e02:	2b00      	cmp	r3, #0
 8000e04:	bfca      	itet	gt
 8000e06:	f1c5 0800 	rsbgt	r8, r5, #0
 8000e0a:	46a0      	movle	r8, r4
 8000e0c:	4625      	movgt	r5, r4
 8000e0e:	f04f 0305 	mov.w	r3, #5
 8000e12:	687c      	ldr	r4, [r7, #4]
 8000e14:	fb94 f4f3 	sdiv	r4, r4, r3
 8000e18:	bfd8      	it	le
 8000e1a:	426d      	negle	r5, r5
 8000e1c:	f04f 0904 	mov.w	r9, #4
 8000e20:	e019      	b.n	8000e56 <_ZN11CBrokenLine7processEv+0x11e>
 8000e22:	b94c      	cbnz	r4, 8000e38 <_ZN11CBrokenLine7processEv+0x100>
 8000e24:	2600      	movs	r6, #0
 8000e26:	687c      	ldr	r4, [r7, #4]
 8000e28:	230a      	movs	r3, #10
 8000e2a:	f04f 0905 	mov.w	r9, #5
 8000e2e:	fb94 f4f3 	sdiv	r4, r4, r3
 8000e32:	46b0      	mov	r8, r6
 8000e34:	4635      	mov	r5, r6
 8000e36:	e00e      	b.n	8000e56 <_ZN11CBrokenLine7processEv+0x11e>
 8000e38:	3c01      	subs	r4, #1
 8000e3a:	e00c      	b.n	8000e56 <_ZN11CBrokenLine7processEv+0x11e>
 8000e3c:	b154      	cbz	r4, 8000e54 <_ZN11CBrokenLine7processEv+0x11c>
 8000e3e:	68bb      	ldr	r3, [r7, #8]
 8000e40:	2564      	movs	r5, #100	; 0x64
 8000e42:	436b      	muls	r3, r5
 8000e44:	429e      	cmp	r6, r3
 8000e46:	bfb8      	it	lt
 8000e48:	3632      	addlt	r6, #50	; 0x32
 8000e4a:	3c01      	subs	r4, #1
 8000e4c:	fb96 f5f5 	sdiv	r5, r6, r5
 8000e50:	46a8      	mov	r8, r5
 8000e52:	e000      	b.n	8000e56 <_ZN11CBrokenLine7processEv+0x11e>
 8000e54:	46a1      	mov	r9, r4
 8000e56:	6838      	ldr	r0, [r7, #0]
 8000e58:	4641      	mov	r1, r8
 8000e5a:	462a      	mov	r2, r5
 8000e5c:	f7ff f9b1 	bl	80001c2 <_ZN6CRobot10set_motorsEii>
 8000e60:	e772      	b.n	8000d48 <_ZN11CBrokenLine7processEv+0x10>
 8000e62:	2100      	movs	r1, #0
 8000e64:	6838      	ldr	r0, [r7, #0]
 8000e66:	460a      	mov	r2, r1
 8000e68:	e8bd 43f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8000e6c:	f7ff b9a9 	b.w	80001c2 <_ZN6CRobot10set_motorsEii>

08000e70 <_ZN11CQPredictor4initEv>:
 8000e70:	1d03      	adds	r3, r0, #4
 8000e72:	3044      	adds	r0, #68	; 0x44
 8000e74:	2200      	movs	r2, #0
 8000e76:	f843 2b04 	str.w	r2, [r3], #4
 8000e7a:	4283      	cmp	r3, r0
 8000e7c:	d1fa      	bne.n	8000e74 <_ZN11CQPredictor4initEv+0x4>
 8000e7e:	4770      	bx	lr

08000e80 <thread_ending>:
 8000e80:	b672      	cpsid	i
 8000e82:	4b05      	ldr	r3, [pc, #20]	; (8000e98 <thread_ending+0x18>)
 8000e84:	681a      	ldr	r2, [r3, #0]
 8000e86:	4b05      	ldr	r3, [pc, #20]	; (8000e9c <thread_ending+0x1c>)
 8000e88:	210c      	movs	r1, #12
 8000e8a:	fb01 3302 	mla	r3, r1, r2, r3
 8000e8e:	2200      	movs	r2, #0
 8000e90:	605a      	str	r2, [r3, #4]
 8000e92:	b662      	cpsie	i
 8000e94:	bf00      	nop
 8000e96:	e7fd      	b.n	8000e94 <thread_ending+0x14>
 8000e98:	20000a94 	.word	0x20000a94
 8000e9c:	20000a4c 	.word	0x20000a4c

08000ea0 <null_thread>:
 8000ea0:	b508      	push	{r3, lr}
 8000ea2:	f001 fc1f 	bl	80026e4 <sleep>
 8000ea6:	e7fc      	b.n	8000ea2 <null_thread+0x2>

08000ea8 <scheduler>:
 8000ea8:	b570      	push	{r4, r5, r6, lr}
 8000eaa:	2200      	movs	r2, #0
 8000eac:	4611      	mov	r1, r2
 8000eae:	4b15      	ldr	r3, [pc, #84]	; (8000f04 <scheduler+0x5c>)
 8000eb0:	200c      	movs	r0, #12
 8000eb2:	fb00 f401 	mul.w	r4, r0, r1
 8000eb6:	191e      	adds	r6, r3, r4
 8000eb8:	6875      	ldr	r5, [r6, #4]
 8000eba:	f015 0f02 	tst.w	r5, #2
 8000ebe:	461d      	mov	r5, r3
 8000ec0:	d10a      	bne.n	8000ed8 <scheduler+0x30>
 8000ec2:	6876      	ldr	r6, [r6, #4]
 8000ec4:	07f6      	lsls	r6, r6, #31
 8000ec6:	d507      	bpl.n	8000ed8 <scheduler+0x30>
 8000ec8:	4350      	muls	r0, r2
 8000eca:	5b1c      	ldrh	r4, [r3, r4]
 8000ecc:	5a18      	ldrh	r0, [r3, r0]
 8000ece:	b2a4      	uxth	r4, r4
 8000ed0:	b280      	uxth	r0, r0
 8000ed2:	4284      	cmp	r4, r0
 8000ed4:	bf38      	it	cc
 8000ed6:	460a      	movcc	r2, r1
 8000ed8:	200c      	movs	r0, #12
 8000eda:	4348      	muls	r0, r1
 8000edc:	5a1c      	ldrh	r4, [r3, r0]
 8000ede:	b2a4      	uxth	r4, r4
 8000ee0:	b11c      	cbz	r4, 8000eea <scheduler+0x42>
 8000ee2:	5a1c      	ldrh	r4, [r3, r0]
 8000ee4:	3c01      	subs	r4, #1
 8000ee6:	b2a4      	uxth	r4, r4
 8000ee8:	521c      	strh	r4, [r3, r0]
 8000eea:	3101      	adds	r1, #1
 8000eec:	2906      	cmp	r1, #6
 8000eee:	d1de      	bne.n	8000eae <scheduler+0x6>
 8000ef0:	230c      	movs	r3, #12
 8000ef2:	4353      	muls	r3, r2
 8000ef4:	18e9      	adds	r1, r5, r3
 8000ef6:	8849      	ldrh	r1, [r1, #2]
 8000ef8:	b289      	uxth	r1, r1
 8000efa:	52e9      	strh	r1, [r5, r3]
 8000efc:	4b02      	ldr	r3, [pc, #8]	; (8000f08 <scheduler+0x60>)
 8000efe:	601a      	str	r2, [r3, #0]
 8000f00:	bd70      	pop	{r4, r5, r6, pc}
 8000f02:	bf00      	nop
 8000f04:	20000a4c 	.word	0x20000a4c
 8000f08:	20000a94 	.word	0x20000a94

08000f0c <SysTick_Handler>:
 8000f0c:	e92d 0ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 8000f10:	f3ef 8308 	mrs	r3, MSP
 8000f14:	4c0f      	ldr	r4, [pc, #60]	; (8000f54 <SysTick_Handler+0x48>)
 8000f16:	4d10      	ldr	r5, [pc, #64]	; (8000f58 <SysTick_Handler+0x4c>)
 8000f18:	6822      	ldr	r2, [r4, #0]
 8000f1a:	3201      	adds	r2, #1
 8000f1c:	bf1d      	ittte	ne
 8000f1e:	6822      	ldrne	r2, [r4, #0]
 8000f20:	210c      	movne	r1, #12
 8000f22:	fb01 5202 	mlane	r2, r1, r2, r5
 8000f26:	2300      	moveq	r3, #0
 8000f28:	bf14      	ite	ne
 8000f2a:	6093      	strne	r3, [r2, #8]
 8000f2c:	6023      	streq	r3, [r4, #0]
 8000f2e:	f7ff ffbb 	bl	8000ea8 <scheduler>
 8000f32:	4b0a      	ldr	r3, [pc, #40]	; (8000f5c <SysTick_Handler+0x50>)
 8000f34:	681a      	ldr	r2, [r3, #0]
 8000f36:	3201      	adds	r2, #1
 8000f38:	601a      	str	r2, [r3, #0]
 8000f3a:	6822      	ldr	r2, [r4, #0]
 8000f3c:	230c      	movs	r3, #12
 8000f3e:	fb03 5302 	mla	r3, r3, r2, r5
 8000f42:	689a      	ldr	r2, [r3, #8]
 8000f44:	f06f 0306 	mvn.w	r3, #6
 8000f48:	469e      	mov	lr, r3
 8000f4a:	f382 8808 	msr	MSP, r2
 8000f4e:	e8bd 0ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 8000f52:	4770      	bx	lr
 8000f54:	20000a94 	.word	0x20000a94
 8000f58:	20000a4c 	.word	0x20000a4c
 8000f5c:	20000a98 	.word	0x20000a98

08000f60 <sched_off>:
 8000f60:	b672      	cpsid	i
 8000f62:	4770      	bx	lr

08000f64 <sched_on>:
 8000f64:	b662      	cpsie	i
 8000f66:	4770      	bx	lr

08000f68 <yield>:
 8000f68:	bf00      	nop
 8000f6a:	4770      	bx	lr

08000f6c <get_thread_id>:
 8000f6c:	b082      	sub	sp, #8
 8000f6e:	b672      	cpsid	i
 8000f70:	4b03      	ldr	r3, [pc, #12]	; (8000f80 <get_thread_id+0x14>)
 8000f72:	681b      	ldr	r3, [r3, #0]
 8000f74:	9301      	str	r3, [sp, #4]
 8000f76:	b662      	cpsie	i
 8000f78:	9801      	ldr	r0, [sp, #4]
 8000f7a:	b002      	add	sp, #8
 8000f7c:	4770      	bx	lr
 8000f7e:	bf00      	nop
 8000f80:	20000a94 	.word	0x20000a94

08000f84 <kernel_start>:
 8000f84:	b508      	push	{r3, lr}
 8000f86:	f001 fb9b 	bl	80026c0 <sys_tick_init>
 8000f8a:	bf00      	nop
 8000f8c:	e7fd      	b.n	8000f8a <kernel_start+0x6>
	...

08000f90 <create_thread>:
 8000f90:	f022 0203 	bic.w	r2, r2, #3
 8000f94:	3a40      	subs	r2, #64	; 0x40
 8000f96:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8000f9a:	eb01 0e02 	add.w	lr, r1, r2
 8000f9e:	f102 0634 	add.w	r6, r2, #52	; 0x34
 8000fa2:	f102 0738 	add.w	r7, r2, #56	; 0x38
 8000fa6:	323c      	adds	r2, #60	; 0x3c
 8000fa8:	440e      	add	r6, r1
 8000faa:	440f      	add	r7, r1
 8000fac:	4411      	add	r1, r2
 8000fae:	2200      	movs	r2, #0
 8000fb0:	b672      	cpsid	i
 8000fb2:	f8df c054 	ldr.w	ip, [pc, #84]	; 8001008 <create_thread+0x78>
 8000fb6:	250c      	movs	r5, #12
 8000fb8:	4355      	muls	r5, r2
 8000fba:	eb0c 0405 	add.w	r4, ip, r5
 8000fbe:	f8d4 8004 	ldr.w	r8, [r4, #4]
 8000fc2:	f018 0f01 	tst.w	r8, #1
 8000fc6:	d114      	bne.n	8000ff2 <create_thread+0x62>
 8000fc8:	f8df 8040 	ldr.w	r8, [pc, #64]	; 800100c <create_thread+0x7c>
 8000fcc:	f8c4 e008 	str.w	lr, [r4, #8]
 8000fd0:	2b05      	cmp	r3, #5
 8000fd2:	f8c6 8000 	str.w	r8, [r6]
 8000fd6:	bf98      	it	ls
 8000fd8:	2306      	movls	r3, #6
 8000fda:	f04f 5804 	mov.w	r8, #553648128	; 0x21000000
 8000fde:	6038      	str	r0, [r7, #0]
 8000fe0:	f8c1 8000 	str.w	r8, [r1]
 8000fe4:	8063      	strh	r3, [r4, #2]
 8000fe6:	f82c 3005 	strh.w	r3, [ip, r5]
 8000fea:	2501      	movs	r5, #1
 8000fec:	6065      	str	r5, [r4, #4]
 8000fee:	4614      	mov	r4, r2
 8000ff0:	e000      	b.n	8000ff4 <create_thread+0x64>
 8000ff2:	2406      	movs	r4, #6
 8000ff4:	b662      	cpsie	i
 8000ff6:	3201      	adds	r2, #1
 8000ff8:	2a06      	cmp	r2, #6
 8000ffa:	d001      	beq.n	8001000 <create_thread+0x70>
 8000ffc:	2c06      	cmp	r4, #6
 8000ffe:	d0d7      	beq.n	8000fb0 <create_thread+0x20>
 8001000:	4620      	mov	r0, r4
 8001002:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8001006:	bf00      	nop
 8001008:	20000a4c 	.word	0x20000a4c
 800100c:	08000e81 	.word	0x08000e81

08001010 <kernel_init>:
 8001010:	b530      	push	{r4, r5, lr}
 8001012:	2300      	movs	r3, #0
 8001014:	480c      	ldr	r0, [pc, #48]	; (8001048 <kernel_init+0x38>)
 8001016:	220c      	movs	r2, #12
 8001018:	435a      	muls	r2, r3
 800101a:	2406      	movs	r4, #6
 800101c:	1885      	adds	r5, r0, r2
 800101e:	3301      	adds	r3, #1
 8001020:	2100      	movs	r1, #0
 8001022:	42a3      	cmp	r3, r4
 8001024:	6069      	str	r1, [r5, #4]
 8001026:	806c      	strh	r4, [r5, #2]
 8001028:	5284      	strh	r4, [r0, r2]
 800102a:	d1f3      	bne.n	8001014 <kernel_init+0x4>
 800102c:	4b07      	ldr	r3, [pc, #28]	; (800104c <kernel_init+0x3c>)
 800102e:	4808      	ldr	r0, [pc, #32]	; (8001050 <kernel_init+0x40>)
 8001030:	6019      	str	r1, [r3, #0]
 8001032:	4b08      	ldr	r3, [pc, #32]	; (8001054 <kernel_init+0x44>)
 8001034:	4908      	ldr	r1, [pc, #32]	; (8001058 <kernel_init+0x48>)
 8001036:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 800103a:	601a      	str	r2, [r3, #0]
 800103c:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
 8001040:	2280      	movs	r2, #128	; 0x80
 8001042:	23ff      	movs	r3, #255	; 0xff
 8001044:	f7ff bfa4 	b.w	8000f90 <create_thread>
 8001048:	20000a4c 	.word	0x20000a4c
 800104c:	20000a98 	.word	0x20000a98
 8001050:	08000ea1 	.word	0x08000ea1
 8001054:	20000a94 	.word	0x20000a94
 8001058:	20000a9c 	.word	0x20000a9c

0800105c <set_wait_state>:
 800105c:	b507      	push	{r0, r1, r2, lr}
 800105e:	f7ff ff85 	bl	8000f6c <get_thread_id>
 8001062:	9000      	str	r0, [sp, #0]
 8001064:	b672      	cpsid	i
 8001066:	4b0d      	ldr	r3, [pc, #52]	; (800109c <set_wait_state+0x40>)
 8001068:	9a00      	ldr	r2, [sp, #0]
 800106a:	210c      	movs	r1, #12
 800106c:	fb01 3202 	mla	r2, r1, r2, r3
 8001070:	6851      	ldr	r1, [r2, #4]
 8001072:	f041 0102 	orr.w	r1, r1, #2
 8001076:	6051      	str	r1, [r2, #4]
 8001078:	b672      	cpsid	i
 800107a:	9a00      	ldr	r2, [sp, #0]
 800107c:	210c      	movs	r1, #12
 800107e:	fb01 3202 	mla	r2, r1, r2, r3
 8001082:	6852      	ldr	r2, [r2, #4]
 8001084:	9201      	str	r2, [sp, #4]
 8001086:	b662      	cpsie	i
 8001088:	9a01      	ldr	r2, [sp, #4]
 800108a:	0791      	lsls	r1, r2, #30
 800108c:	d500      	bpl.n	8001090 <set_wait_state+0x34>
 800108e:	bf00      	nop
 8001090:	9a01      	ldr	r2, [sp, #4]
 8001092:	0792      	lsls	r2, r2, #30
 8001094:	d4f0      	bmi.n	8001078 <set_wait_state+0x1c>
 8001096:	b003      	add	sp, #12
 8001098:	f85d fb04 	ldr.w	pc, [sp], #4
 800109c:	20000a4c 	.word	0x20000a4c

080010a0 <wake_up_threads>:
 80010a0:	2300      	movs	r3, #0
 80010a2:	b672      	cpsid	i
 80010a4:	4906      	ldr	r1, [pc, #24]	; (80010c0 <wake_up_threads+0x20>)
 80010a6:	220c      	movs	r2, #12
 80010a8:	fb02 1203 	mla	r2, r2, r3, r1
 80010ac:	6851      	ldr	r1, [r2, #4]
 80010ae:	f021 0102 	bic.w	r1, r1, #2
 80010b2:	6051      	str	r1, [r2, #4]
 80010b4:	b662      	cpsie	i
 80010b6:	3301      	adds	r3, #1
 80010b8:	2b06      	cmp	r3, #6
 80010ba:	d1f2      	bne.n	80010a2 <wake_up_threads+0x2>
 80010bc:	4770      	bx	lr
 80010be:	bf00      	nop
 80010c0:	20000a4c 	.word	0x20000a4c

080010c4 <messages_init>:
 80010c4:	4a0a      	ldr	r2, [pc, #40]	; (80010f0 <messages_init+0x2c>)
 80010c6:	2300      	movs	r3, #0
 80010c8:	b510      	push	{r4, lr}
 80010ca:	6013      	str	r3, [r2, #0]
 80010cc:	6053      	str	r3, [r2, #4]
 80010ce:	6093      	str	r3, [r2, #8]
 80010d0:	60d3      	str	r3, [r2, #12]
 80010d2:	6113      	str	r3, [r2, #16]
 80010d4:	6153      	str	r3, [r2, #20]
 80010d6:	4c07      	ldr	r4, [pc, #28]	; (80010f4 <messages_init+0x30>)
 80010d8:	0118      	lsls	r0, r3, #4
 80010da:	1821      	adds	r1, r4, r0
 80010dc:	3301      	adds	r3, #1
 80010de:	2200      	movs	r2, #0
 80010e0:	2b04      	cmp	r3, #4
 80010e2:	604a      	str	r2, [r1, #4]
 80010e4:	5022      	str	r2, [r4, r0]
 80010e6:	60ca      	str	r2, [r1, #12]
 80010e8:	608a      	str	r2, [r1, #8]
 80010ea:	d1f4      	bne.n	80010d6 <messages_init+0x12>
 80010ec:	bd10      	pop	{r4, pc}
 80010ee:	bf00      	nop
 80010f0:	20000b1c 	.word	0x20000b1c
 80010f4:	20000b34 	.word	0x20000b34

080010f8 <putc_>:
 80010f8:	b538      	push	{r3, r4, r5, lr}
 80010fa:	4c06      	ldr	r4, [pc, #24]	; (8001114 <putc_+0x1c>)
 80010fc:	4605      	mov	r5, r0
 80010fe:	4620      	mov	r0, r4
 8001100:	f000 f91f 	bl	8001342 <mutex_lock>
 8001104:	4628      	mov	r0, r5
 8001106:	f001 f8b5 	bl	8002274 <uart_write>
 800110a:	4620      	mov	r0, r4
 800110c:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8001110:	f000 b933 	b.w	800137a <mutex_unlock>
 8001114:	20000b74 	.word	0x20000b74

08001118 <puts_>:
 8001118:	b510      	push	{r4, lr}
 800111a:	4604      	mov	r4, r0
 800111c:	4807      	ldr	r0, [pc, #28]	; (800113c <puts_+0x24>)
 800111e:	f000 f910 	bl	8001342 <mutex_lock>
 8001122:	3c01      	subs	r4, #1
 8001124:	f814 0f01 	ldrb.w	r0, [r4, #1]!
 8001128:	b110      	cbz	r0, 8001130 <puts_+0x18>
 800112a:	f7ff ffe5 	bl	80010f8 <putc_>
 800112e:	e7f9      	b.n	8001124 <puts_+0xc>
 8001130:	4802      	ldr	r0, [pc, #8]	; (800113c <puts_+0x24>)
 8001132:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8001136:	f000 b920 	b.w	800137a <mutex_unlock>
 800113a:	bf00      	nop
 800113c:	20000b80 	.word	0x20000b80

08001140 <puti_>:
 8001140:	b530      	push	{r4, r5, lr}
 8001142:	b085      	sub	sp, #20
 8001144:	1e03      	subs	r3, r0, #0
 8001146:	f04f 0200 	mov.w	r2, #0
 800114a:	bfba      	itte	lt
 800114c:	425b      	neglt	r3, r3
 800114e:	2401      	movlt	r4, #1
 8001150:	4614      	movge	r4, r2
 8001152:	f88d 200f 	strb.w	r2, [sp, #15]
 8001156:	210a      	movs	r1, #10
 8001158:	220a      	movs	r2, #10
 800115a:	a801      	add	r0, sp, #4
 800115c:	fb93 f5f2 	sdiv	r5, r3, r2
 8001160:	fb02 3315 	mls	r3, r2, r5, r3
 8001164:	3330      	adds	r3, #48	; 0x30
 8001166:	540b      	strb	r3, [r1, r0]
 8001168:	1e4a      	subs	r2, r1, #1
 800116a:	462b      	mov	r3, r5
 800116c:	b10d      	cbz	r5, 8001172 <puti_+0x32>
 800116e:	4611      	mov	r1, r2
 8001170:	e7f2      	b.n	8001158 <puti_+0x18>
 8001172:	b12c      	cbz	r4, 8001180 <puti_+0x40>
 8001174:	ab04      	add	r3, sp, #16
 8001176:	4413      	add	r3, r2
 8001178:	212d      	movs	r1, #45	; 0x2d
 800117a:	f803 1c0c 	strb.w	r1, [r3, #-12]
 800117e:	4611      	mov	r1, r2
 8001180:	4408      	add	r0, r1
 8001182:	f7ff ffc9 	bl	8001118 <puts_>
 8001186:	b005      	add	sp, #20
 8001188:	bd30      	pop	{r4, r5, pc}

0800118a <putui_>:
 800118a:	b51f      	push	{r0, r1, r2, r3, r4, lr}
 800118c:	2300      	movs	r3, #0
 800118e:	f88d 300f 	strb.w	r3, [sp, #15]
 8001192:	220a      	movs	r2, #10
 8001194:	230a      	movs	r3, #10
 8001196:	a901      	add	r1, sp, #4
 8001198:	fbb0 f4f3 	udiv	r4, r0, r3
 800119c:	fb03 0314 	mls	r3, r3, r4, r0
 80011a0:	3330      	adds	r3, #48	; 0x30
 80011a2:	5453      	strb	r3, [r2, r1]
 80011a4:	4620      	mov	r0, r4
 80011a6:	1e53      	subs	r3, r2, #1
 80011a8:	b10c      	cbz	r4, 80011ae <putui_+0x24>
 80011aa:	461a      	mov	r2, r3
 80011ac:	e7f2      	b.n	8001194 <putui_+0xa>
 80011ae:	1888      	adds	r0, r1, r2
 80011b0:	f7ff ffb2 	bl	8001118 <puts_>
 80011b4:	b004      	add	sp, #16
 80011b6:	bd10      	pop	{r4, pc}

080011b8 <putx_>:
 80011b8:	b51f      	push	{r0, r1, r2, r3, r4, lr}
 80011ba:	2300      	movs	r3, #0
 80011bc:	f88d 300f 	strb.w	r3, [sp, #15]
 80011c0:	220a      	movs	r2, #10
 80011c2:	f000 030f 	and.w	r3, r0, #15
 80011c6:	2b09      	cmp	r3, #9
 80011c8:	a901      	add	r1, sp, #4
 80011ca:	bf94      	ite	ls
 80011cc:	3330      	addls	r3, #48	; 0x30
 80011ce:	3357      	addhi	r3, #87	; 0x57
 80011d0:	0900      	lsrs	r0, r0, #4
 80011d2:	548b      	strb	r3, [r1, r2]
 80011d4:	f102 33ff 	add.w	r3, r2, #4294967295	; 0xffffffff
 80011d8:	d001      	beq.n	80011de <putx_+0x26>
 80011da:	461a      	mov	r2, r3
 80011dc:	e7f1      	b.n	80011c2 <putx_+0xa>
 80011de:	1888      	adds	r0, r1, r2
 80011e0:	f7ff ff9a 	bl	8001118 <puts_>
 80011e4:	b005      	add	sp, #20
 80011e6:	f85d fb04 	ldr.w	pc, [sp], #4
	...

080011ec <printf_>:
 80011ec:	b40f      	push	{r0, r1, r2, r3}
 80011ee:	b537      	push	{r0, r1, r2, r4, r5, lr}
 80011f0:	ac06      	add	r4, sp, #24
 80011f2:	4826      	ldr	r0, [pc, #152]	; (800128c <printf_+0xa0>)
 80011f4:	f854 5b04 	ldr.w	r5, [r4], #4
 80011f8:	f000 f8a3 	bl	8001342 <mutex_lock>
 80011fc:	9401      	str	r4, [sp, #4]
 80011fe:	2400      	movs	r4, #0
 8001200:	5d28      	ldrb	r0, [r5, r4]
 8001202:	2800      	cmp	r0, #0
 8001204:	d039      	beq.n	800127a <printf_+0x8e>
 8001206:	2825      	cmp	r0, #37	; 0x25
 8001208:	d003      	beq.n	8001212 <printf_+0x26>
 800120a:	f7ff ff75 	bl	80010f8 <putc_>
 800120e:	3401      	adds	r4, #1
 8001210:	e7f6      	b.n	8001200 <printf_+0x14>
 8001212:	192b      	adds	r3, r5, r4
 8001214:	7858      	ldrb	r0, [r3, #1]
 8001216:	2869      	cmp	r0, #105	; 0x69
 8001218:	d016      	beq.n	8001248 <printf_+0x5c>
 800121a:	d808      	bhi.n	800122e <printf_+0x42>
 800121c:	2825      	cmp	r0, #37	; 0x25
 800121e:	d028      	beq.n	8001272 <printf_+0x86>
 8001220:	2863      	cmp	r0, #99	; 0x63
 8001222:	d128      	bne.n	8001276 <printf_+0x8a>
 8001224:	9b01      	ldr	r3, [sp, #4]
 8001226:	1d1a      	adds	r2, r3, #4
 8001228:	9201      	str	r2, [sp, #4]
 800122a:	7818      	ldrb	r0, [r3, #0]
 800122c:	e021      	b.n	8001272 <printf_+0x86>
 800122e:	2875      	cmp	r0, #117	; 0x75
 8001230:	d011      	beq.n	8001256 <printf_+0x6a>
 8001232:	2878      	cmp	r0, #120	; 0x78
 8001234:	d016      	beq.n	8001264 <printf_+0x78>
 8001236:	2873      	cmp	r0, #115	; 0x73
 8001238:	d11d      	bne.n	8001276 <printf_+0x8a>
 800123a:	9b01      	ldr	r3, [sp, #4]
 800123c:	1d1a      	adds	r2, r3, #4
 800123e:	6818      	ldr	r0, [r3, #0]
 8001240:	9201      	str	r2, [sp, #4]
 8001242:	f7ff ff69 	bl	8001118 <puts_>
 8001246:	e016      	b.n	8001276 <printf_+0x8a>
 8001248:	9b01      	ldr	r3, [sp, #4]
 800124a:	1d1a      	adds	r2, r3, #4
 800124c:	6818      	ldr	r0, [r3, #0]
 800124e:	9201      	str	r2, [sp, #4]
 8001250:	f7ff ff76 	bl	8001140 <puti_>
 8001254:	e00f      	b.n	8001276 <printf_+0x8a>
 8001256:	9b01      	ldr	r3, [sp, #4]
 8001258:	1d1a      	adds	r2, r3, #4
 800125a:	6818      	ldr	r0, [r3, #0]
 800125c:	9201      	str	r2, [sp, #4]
 800125e:	f7ff ff94 	bl	800118a <putui_>
 8001262:	e008      	b.n	8001276 <printf_+0x8a>
 8001264:	9b01      	ldr	r3, [sp, #4]
 8001266:	1d1a      	adds	r2, r3, #4
 8001268:	6818      	ldr	r0, [r3, #0]
 800126a:	9201      	str	r2, [sp, #4]
 800126c:	f7ff ffa4 	bl	80011b8 <putx_>
 8001270:	e001      	b.n	8001276 <printf_+0x8a>
 8001272:	f7ff ff41 	bl	80010f8 <putc_>
 8001276:	3402      	adds	r4, #2
 8001278:	e7c2      	b.n	8001200 <printf_+0x14>
 800127a:	4804      	ldr	r0, [pc, #16]	; (800128c <printf_+0xa0>)
 800127c:	f000 f87d 	bl	800137a <mutex_unlock>
 8001280:	b003      	add	sp, #12
 8001282:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
 8001286:	b004      	add	sp, #16
 8001288:	4770      	bx	lr
 800128a:	bf00      	nop
 800128c:	20000b7c 	.word	0x20000b7c

08001290 <stdio_init>:
 8001290:	b510      	push	{r4, lr}
 8001292:	480e      	ldr	r0, [pc, #56]	; (80012cc <stdio_init+0x3c>)
 8001294:	f000 f84b 	bl	800132e <mutex_init>
 8001298:	480d      	ldr	r0, [pc, #52]	; (80012d0 <stdio_init+0x40>)
 800129a:	f000 f848 	bl	800132e <mutex_init>
 800129e:	480d      	ldr	r0, [pc, #52]	; (80012d4 <stdio_init+0x44>)
 80012a0:	f000 f845 	bl	800132e <mutex_init>
 80012a4:	480c      	ldr	r0, [pc, #48]	; (80012d8 <stdio_init+0x48>)
 80012a6:	f000 f842 	bl	800132e <mutex_init>
 80012aa:	2408      	movs	r4, #8
 80012ac:	2020      	movs	r0, #32
 80012ae:	f7ff ff23 	bl	80010f8 <putc_>
 80012b2:	3c01      	subs	r4, #1
 80012b4:	d1fa      	bne.n	80012ac <stdio_init+0x1c>
 80012b6:	2420      	movs	r4, #32
 80012b8:	200a      	movs	r0, #10
 80012ba:	f7ff ff1d 	bl	80010f8 <putc_>
 80012be:	3c01      	subs	r4, #1
 80012c0:	d1fa      	bne.n	80012b8 <stdio_init+0x28>
 80012c2:	4806      	ldr	r0, [pc, #24]	; (80012dc <stdio_init+0x4c>)
 80012c4:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80012c8:	f7ff bf90 	b.w	80011ec <printf_>
 80012cc:	20000b74 	.word	0x20000b74
 80012d0:	20000b78 	.word	0x20000b78
 80012d4:	20000b80 	.word	0x20000b80
 80012d8:	20000b7c 	.word	0x20000b7c
 80012dc:	08004877 	.word	0x08004877

080012e0 <mem_init>:
 80012e0:	4b06      	ldr	r3, [pc, #24]	; (80012fc <mem_init+0x1c>)
 80012e2:	4a07      	ldr	r2, [pc, #28]	; (8001300 <mem_init+0x20>)
 80012e4:	601a      	str	r2, [r3, #0]
 80012e6:	4907      	ldr	r1, [pc, #28]	; (8001304 <mem_init+0x24>)
 80012e8:	4b07      	ldr	r3, [pc, #28]	; (8001308 <mem_init+0x28>)
 80012ea:	4808      	ldr	r0, [pc, #32]	; (800130c <mem_init+0x2c>)
 80012ec:	1a5b      	subs	r3, r3, r1
 80012ee:	4908      	ldr	r1, [pc, #32]	; (8001310 <mem_init+0x30>)
 80012f0:	4413      	add	r3, r2
 80012f2:	600b      	str	r3, [r1, #0]
 80012f4:	4b07      	ldr	r3, [pc, #28]	; (8001314 <mem_init+0x34>)
 80012f6:	601a      	str	r2, [r3, #0]
 80012f8:	f000 b819 	b.w	800132e <mutex_init>
 80012fc:	20000b84 	.word	0x20000b84
 8001300:	20001054 	.word	0x20001054
 8001304:	20001054 	.word	0x20001054
 8001308:	20004000 	.word	0x20004000
 800130c:	20000b90 	.word	0x20000b90
 8001310:	20000b8c 	.word	0x20000b8c
 8001314:	20000b88 	.word	0x20000b88

08001318 <lib_os_init>:
 8001318:	b508      	push	{r3, lr}
 800131a:	f7ff fe79 	bl	8001010 <kernel_init>
 800131e:	f7ff ffdf 	bl	80012e0 <mem_init>
 8001322:	f7ff fecf 	bl	80010c4 <messages_init>
 8001326:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800132a:	f7ff bfb1 	b.w	8001290 <stdio_init>

0800132e <mutex_init>:
 800132e:	b510      	push	{r4, lr}
 8001330:	4604      	mov	r4, r0
 8001332:	f7ff fe15 	bl	8000f60 <sched_off>
 8001336:	2300      	movs	r3, #0
 8001338:	6023      	str	r3, [r4, #0]
 800133a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800133e:	f7ff be11 	b.w	8000f64 <sched_on>

08001342 <mutex_lock>:
 8001342:	b513      	push	{r0, r1, r4, lr}
 8001344:	4604      	mov	r4, r0
 8001346:	f7ff fe0b 	bl	8000f60 <sched_off>
 800134a:	6823      	ldr	r3, [r4, #0]
 800134c:	9301      	str	r3, [sp, #4]
 800134e:	f7ff fe09 	bl	8000f64 <sched_on>
 8001352:	9b01      	ldr	r3, [sp, #4]
 8001354:	b10b      	cbz	r3, 800135a <mutex_lock+0x18>
 8001356:	f7ff fe81 	bl	800105c <set_wait_state>
 800135a:	9b01      	ldr	r3, [sp, #4]
 800135c:	2b00      	cmp	r3, #0
 800135e:	d1f2      	bne.n	8001346 <mutex_lock+0x4>
 8001360:	f7ff fdfe 	bl	8000f60 <sched_off>
 8001364:	6823      	ldr	r3, [r4, #0]
 8001366:	9301      	str	r3, [sp, #4]
 8001368:	9b01      	ldr	r3, [sp, #4]
 800136a:	2b00      	cmp	r3, #0
 800136c:	d1eb      	bne.n	8001346 <mutex_lock+0x4>
 800136e:	2301      	movs	r3, #1
 8001370:	6023      	str	r3, [r4, #0]
 8001372:	f7ff fdf7 	bl	8000f64 <sched_on>
 8001376:	b002      	add	sp, #8
 8001378:	bd10      	pop	{r4, pc}

0800137a <mutex_unlock>:
 800137a:	b508      	push	{r3, lr}
 800137c:	f7ff ffd7 	bl	800132e <mutex_init>
 8001380:	f7ff fe8e 	bl	80010a0 <wake_up_threads>
 8001384:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001388:	f7ff bdee 	b.w	8000f68 <yield>

0800138c <m_abs>:
 800138c:	ee07 0a90 	vmov	s15, r0
 8001390:	eef5 7ac0 	vcmpe.f32	s15, #0.0
 8001394:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001398:	bf48      	it	mi
 800139a:	eef1 7a67 	vnegmi.f32	s15, s15
 800139e:	ee17 0a90 	vmov	r0, s15
 80013a2:	4770      	bx	lr

080013a4 <m_saturate>:
 80013a4:	ee07 0a90 	vmov	s15, r0
 80013a8:	ee06 1a90 	vmov	s13, r1
 80013ac:	eef4 7a66 	vcmp.f32	s15, s13
 80013b0:	ee07 2a10 	vmov	s14, r2
 80013b4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80013b8:	bf48      	it	mi
 80013ba:	eef0 7a66 	vmovmi.f32	s15, s13
 80013be:	eef4 7a47 	vcmp.f32	s15, s14
 80013c2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80013c6:	bfcc      	ite	gt
 80013c8:	ee17 0a10 	vmovgt	r0, s14
 80013cc:	ee17 0a90 	vmovle	r0, s15
 80013d0:	4770      	bx	lr

080013d2 <m_min>:
 80013d2:	ee07 0a10 	vmov	s14, r0
 80013d6:	ee07 1a90 	vmov	s15, r1
 80013da:	eeb4 7ae7 	vcmpe.f32	s14, s15
 80013de:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80013e2:	bf54      	ite	pl
 80013e4:	ee17 0a90 	vmovpl	r0, s15
 80013e8:	ee17 0a10 	vmovmi	r0, s14
 80013ec:	4770      	bx	lr
	...

080013f0 <pid_init>:
 80013f0:	ee07 2a90 	vmov	s15, r2
 80013f4:	ee06 3a10 	vmov	s12, r3
 80013f8:	ed9d 7a00 	vldr	s14, [sp]
 80013fc:	eddd 6a01 	vldr	s13, [sp, #4]
 8001400:	6241      	str	r1, [r0, #36]	; 0x24
 8001402:	ee37 6a86 	vadd.f32	s12, s15, s12
 8001406:	ee77 5a07 	vadd.f32	s11, s14, s14
 800140a:	ee36 6a07 	vadd.f32	s12, s12, s14
 800140e:	eef1 7a67 	vneg.f32	s15, s15
 8001412:	ee36 6a26 	vadd.f32	s12, s12, s13
 8001416:	ee77 7ae5 	vsub.f32	s15, s15, s11
 800141a:	ed80 6a04 	vstr	s12, [r0, #16]
 800141e:	ed9f 6a0b 	vldr	s12, [pc, #44]	; 800144c <pid_init+0x5c>
 8001422:	ee26 6a86 	vmul.f32	s12, s13, s12
 8001426:	2200      	movs	r2, #0
 8001428:	ee77 7ac6 	vsub.f32	s15, s15, s12
 800142c:	ee37 7a06 	vadd.f32	s14, s14, s12
 8001430:	eef1 6a66 	vneg.f32	s13, s13
 8001434:	6002      	str	r2, [r0, #0]
 8001436:	6042      	str	r2, [r0, #4]
 8001438:	6082      	str	r2, [r0, #8]
 800143a:	60c2      	str	r2, [r0, #12]
 800143c:	edc0 7a05 	vstr	s15, [r0, #20]
 8001440:	ed80 7a06 	vstr	s14, [r0, #24]
 8001444:	edc0 6a07 	vstr	s13, [r0, #28]
 8001448:	6202      	str	r2, [r0, #32]
 800144a:	4770      	bx	lr
 800144c:	40400000 	.word	0x40400000

08001450 <pid_process>:
 8001450:	edd0 7a08 	vldr	s15, [r0, #32]
 8001454:	ed90 5a04 	vldr	s10, [r0, #16]
 8001458:	ed90 6a00 	vldr	s12, [r0]
 800145c:	edd0 6a01 	vldr	s13, [r0, #4]
 8001460:	ed80 6a01 	vstr	s12, [r0, #4]
 8001464:	ee05 1a90 	vmov	s11, r1
 8001468:	ee45 7a85 	vmla.f32	s15, s11, s10
 800146c:	6001      	str	r1, [r0, #0]
 800146e:	edd0 5a05 	vldr	s11, [r0, #20]
 8001472:	ed90 7a02 	vldr	s14, [r0, #8]
 8001476:	edc0 6a02 	vstr	s13, [r0, #8]
 800147a:	ee46 7a25 	vmla.f32	s15, s12, s11
 800147e:	ed90 6a06 	vldr	s12, [r0, #24]
 8001482:	ed80 7a03 	vstr	s14, [r0, #12]
 8001486:	ee46 7a86 	vmla.f32	s15, s13, s12
 800148a:	edd0 6a07 	vldr	s13, [r0, #28]
 800148e:	ee47 7a26 	vmla.f32	s15, s14, s13
 8001492:	ed90 7a09 	vldr	s14, [r0, #36]	; 0x24
 8001496:	edc0 7a08 	vstr	s15, [r0, #32]
 800149a:	eef4 7ac7 	vcmpe.f32	s15, s14
 800149e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80014a2:	bfc8      	it	gt
 80014a4:	ed80 7a08 	vstrgt	s14, [r0, #32]
 80014a8:	edd0 7a08 	vldr	s15, [r0, #32]
 80014ac:	eeb1 7a47 	vneg.f32	s14, s14
 80014b0:	eef4 7ac7 	vcmpe.f32	s15, s14
 80014b4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80014b8:	bf48      	it	mi
 80014ba:	ed80 7a08 	vstrmi	s14, [r0, #32]
 80014be:	6a00      	ldr	r0, [r0, #32]
 80014c0:	4770      	bx	lr
	...

080014c4 <TIM2_IRQHandler>:
 80014c4:	4a21      	ldr	r2, [pc, #132]	; (800154c <TIM2_IRQHandler+0x88>)
 80014c6:	4922      	ldr	r1, [pc, #136]	; (8001550 <TIM2_IRQHandler+0x8c>)
 80014c8:	6813      	ldr	r3, [r2, #0]
 80014ca:	2b01      	cmp	r3, #1
 80014cc:	b510      	push	{r4, lr}
 80014ce:	d011      	beq.n	80014f4 <TIM2_IRQHandler+0x30>
 80014d0:	d306      	bcc.n	80014e0 <TIM2_IRQHandler+0x1c>
 80014d2:	2b02      	cmp	r3, #2
 80014d4:	d113      	bne.n	80014fe <TIM2_IRQHandler+0x3a>
 80014d6:	f44f 6380 	mov.w	r3, #1024	; 0x400
 80014da:	850b      	strh	r3, [r1, #40]	; 0x28
 80014dc:	2304      	movs	r3, #4
 80014de:	e023      	b.n	8001528 <TIM2_IRQHandler+0x64>
 80014e0:	f44f 7380 	mov.w	r3, #256	; 0x100
 80014e4:	850b      	strh	r3, [r1, #40]	; 0x28
 80014e6:	f44f 6380 	mov.w	r3, #1024	; 0x400
 80014ea:	618b      	str	r3, [r1, #24]
 80014ec:	2301      	movs	r3, #1
 80014ee:	6013      	str	r3, [r2, #0]
 80014f0:	6093      	str	r3, [r2, #8]
 80014f2:	e023      	b.n	800153c <TIM2_IRQHandler+0x78>
 80014f4:	f44f 7380 	mov.w	r3, #256	; 0x100
 80014f8:	618b      	str	r3, [r1, #24]
 80014fa:	2302      	movs	r3, #2
 80014fc:	e014      	b.n	8001528 <TIM2_IRQHandler+0x64>
 80014fe:	f013 0f01 	tst.w	r3, #1
 8001502:	4814      	ldr	r0, [pc, #80]	; (8001554 <TIM2_IRQHandler+0x90>)
 8001504:	f103 0401 	add.w	r4, r3, #1
 8001508:	d010      	beq.n	800152c <TIM2_IRQHandler+0x68>
 800150a:	3b04      	subs	r3, #4
 800150c:	f023 0301 	bic.w	r3, r3, #1
 8001510:	4413      	add	r3, r2
 8001512:	6c00      	ldr	r0, [r0, #64]	; 0x40
 8001514:	8298      	strh	r0, [r3, #20]
 8001516:	f5b4 7f82 	cmp.w	r4, #260	; 0x104
 800151a:	f44f 7380 	mov.w	r3, #256	; 0x100
 800151e:	850b      	strh	r3, [r1, #40]	; 0x28
 8001520:	d201      	bcs.n	8001526 <TIM2_IRQHandler+0x62>
 8001522:	6014      	str	r4, [r2, #0]
 8001524:	e00a      	b.n	800153c <TIM2_IRQHandler+0x78>
 8001526:	2300      	movs	r3, #0
 8001528:	6013      	str	r3, [r2, #0]
 800152a:	e007      	b.n	800153c <TIM2_IRQHandler+0x78>
 800152c:	f44f 7380 	mov.w	r3, #256	; 0x100
 8001530:	618b      	str	r3, [r1, #24]
 8001532:	6883      	ldr	r3, [r0, #8]
 8001534:	6014      	str	r4, [r2, #0]
 8001536:	f043 0304 	orr.w	r3, r3, #4
 800153a:	6083      	str	r3, [r0, #8]
 800153c:	f04f 4080 	mov.w	r0, #1073741824	; 0x40000000
 8001540:	2101      	movs	r1, #1
 8001542:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8001546:	f000 bd1e 	b.w	8001f86 <TIM_ClearITPendingBit>
 800154a:	bf00      	nop
 800154c:	20000b94 	.word	0x20000b94
 8001550:	48000400 	.word	0x48000400
 8001554:	50000500 	.word	0x50000500

08001558 <rgb_i2c_delay>:
 8001558:	bf00      	nop
 800155a:	bf00      	nop
 800155c:	bf00      	nop
 800155e:	bf00      	nop
 8001560:	4770      	bx	lr
	...

08001564 <RGBSetLowSDA>:
 8001564:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 8001566:	4f15      	ldr	r7, [pc, #84]	; (80015bc <RGBSetLowSDA+0x58>)
 8001568:	2401      	movs	r4, #1
 800156a:	783b      	ldrb	r3, [r7, #0]
 800156c:	9300      	str	r3, [sp, #0]
 800156e:	2603      	movs	r6, #3
 8001570:	2500      	movs	r5, #0
 8001572:	4669      	mov	r1, sp
 8001574:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8001578:	f88d 5007 	strb.w	r5, [sp, #7]
 800157c:	f88d 4004 	strb.w	r4, [sp, #4]
 8001580:	f88d 6005 	strb.w	r6, [sp, #5]
 8001584:	f88d 4006 	strb.w	r4, [sp, #6]
 8001588:	f001 fa8e 	bl	8002aa8 <GPIO_Init>
 800158c:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8001590:	783a      	ldrb	r2, [r7, #0]
 8001592:	851a      	strh	r2, [r3, #40]	; 0x28
 8001594:	f88d 5007 	strb.w	r5, [sp, #7]
 8001598:	4d09      	ldr	r5, [pc, #36]	; (80015c0 <RGBSetLowSDA+0x5c>)
 800159a:	9400      	str	r4, [sp, #0]
 800159c:	4628      	mov	r0, r5
 800159e:	4669      	mov	r1, sp
 80015a0:	f88d 4004 	strb.w	r4, [sp, #4]
 80015a4:	f88d 6005 	strb.w	r6, [sp, #5]
 80015a8:	f88d 4006 	strb.w	r4, [sp, #6]
 80015ac:	f001 fa7c 	bl	8002aa8 <GPIO_Init>
 80015b0:	852c      	strh	r4, [r5, #40]	; 0x28
 80015b2:	f7ff ffd1 	bl	8001558 <rgb_i2c_delay>
 80015b6:	b003      	add	sp, #12
 80015b8:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80015ba:	bf00      	nop
 80015bc:	20000e02 	.word	0x20000e02
 80015c0:	48000400 	.word	0x48000400

080015c4 <RGBSetHighSDA>:
 80015c4:	b573      	push	{r0, r1, r4, r5, r6, lr}
 80015c6:	4d13      	ldr	r5, [pc, #76]	; (8001614 <RGBSetHighSDA+0x50>)
 80015c8:	2400      	movs	r4, #0
 80015ca:	782b      	ldrb	r3, [r5, #0]
 80015cc:	9300      	str	r3, [sp, #0]
 80015ce:	2603      	movs	r6, #3
 80015d0:	4669      	mov	r1, sp
 80015d2:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80015d6:	f88d 4004 	strb.w	r4, [sp, #4]
 80015da:	f88d 4007 	strb.w	r4, [sp, #7]
 80015de:	f88d 6005 	strb.w	r6, [sp, #5]
 80015e2:	f001 fa61 	bl	8002aa8 <GPIO_Init>
 80015e6:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 80015ea:	782a      	ldrb	r2, [r5, #0]
 80015ec:	619a      	str	r2, [r3, #24]
 80015ee:	f88d 4004 	strb.w	r4, [sp, #4]
 80015f2:	f88d 4007 	strb.w	r4, [sp, #7]
 80015f6:	4c08      	ldr	r4, [pc, #32]	; (8001618 <RGBSetHighSDA+0x54>)
 80015f8:	f88d 6005 	strb.w	r6, [sp, #5]
 80015fc:	2501      	movs	r5, #1
 80015fe:	4620      	mov	r0, r4
 8001600:	4669      	mov	r1, sp
 8001602:	9500      	str	r5, [sp, #0]
 8001604:	f001 fa50 	bl	8002aa8 <GPIO_Init>
 8001608:	61a5      	str	r5, [r4, #24]
 800160a:	f7ff ffa5 	bl	8001558 <rgb_i2c_delay>
 800160e:	b002      	add	sp, #8
 8001610:	bd70      	pop	{r4, r5, r6, pc}
 8001612:	bf00      	nop
 8001614:	20000e02 	.word	0x20000e02
 8001618:	48000400 	.word	0x48000400

0800161c <RGBSetLowSCL>:
 800161c:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8001620:	f44f 7280 	mov.w	r2, #256	; 0x100
 8001624:	851a      	strh	r2, [r3, #40]	; 0x28
 8001626:	f7ff bf97 	b.w	8001558 <rgb_i2c_delay>

0800162a <RGBSetHighSCL>:
 800162a:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 800162e:	f44f 7280 	mov.w	r2, #256	; 0x100
 8001632:	619a      	str	r2, [r3, #24]
 8001634:	f7ff bf90 	b.w	8001558 <rgb_i2c_delay>

08001638 <rgb_i2c_init>:
 8001638:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 800163a:	4f1f      	ldr	r7, [pc, #124]	; (80016b8 <rgb_i2c_init+0x80>)
 800163c:	2400      	movs	r4, #0
 800163e:	2501      	movs	r5, #1
 8001640:	2603      	movs	r6, #3
 8001642:	f44f 7380 	mov.w	r3, #256	; 0x100
 8001646:	4669      	mov	r1, sp
 8001648:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 800164c:	9300      	str	r3, [sp, #0]
 800164e:	f88d 4006 	strb.w	r4, [sp, #6]
 8001652:	f88d 4007 	strb.w	r4, [sp, #7]
 8001656:	f88d 5004 	strb.w	r5, [sp, #4]
 800165a:	f88d 6005 	strb.w	r6, [sp, #5]
 800165e:	f001 fa23 	bl	8002aa8 <GPIO_Init>
 8001662:	783b      	ldrb	r3, [r7, #0]
 8001664:	9300      	str	r3, [sp, #0]
 8001666:	4669      	mov	r1, sp
 8001668:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 800166c:	f88d 4004 	strb.w	r4, [sp, #4]
 8001670:	f88d 4007 	strb.w	r4, [sp, #7]
 8001674:	f88d 6005 	strb.w	r6, [sp, #5]
 8001678:	f001 fa16 	bl	8002aa8 <GPIO_Init>
 800167c:	7839      	ldrb	r1, [r7, #0]
 800167e:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8001682:	f001 fa53 	bl	8002b2c <GPIO_SetBits>
 8001686:	f88d 4004 	strb.w	r4, [sp, #4]
 800168a:	f88d 4007 	strb.w	r4, [sp, #7]
 800168e:	4c0b      	ldr	r4, [pc, #44]	; (80016bc <rgb_i2c_init+0x84>)
 8001690:	9500      	str	r5, [sp, #0]
 8001692:	4620      	mov	r0, r4
 8001694:	4669      	mov	r1, sp
 8001696:	f88d 6005 	strb.w	r6, [sp, #5]
 800169a:	f001 fa05 	bl	8002aa8 <GPIO_Init>
 800169e:	4620      	mov	r0, r4
 80016a0:	4629      	mov	r1, r5
 80016a2:	f001 fa43 	bl	8002b2c <GPIO_SetBits>
 80016a6:	f7ff ffc0 	bl	800162a <RGBSetHighSCL>
 80016aa:	f7ff ff5b 	bl	8001564 <RGBSetLowSDA>
 80016ae:	f7ff ff89 	bl	80015c4 <RGBSetHighSDA>
 80016b2:	b003      	add	sp, #12
 80016b4:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80016b6:	bf00      	nop
 80016b8:	20000e02 	.word	0x20000e02
 80016bc:	48000400 	.word	0x48000400

080016c0 <rgb_i2cStart>:
 80016c0:	b508      	push	{r3, lr}
 80016c2:	f7ff ffb2 	bl	800162a <RGBSetHighSCL>
 80016c6:	f7ff ff7d 	bl	80015c4 <RGBSetHighSDA>
 80016ca:	f7ff ffae 	bl	800162a <RGBSetHighSCL>
 80016ce:	f7ff ff49 	bl	8001564 <RGBSetLowSDA>
 80016d2:	f7ff ffa3 	bl	800161c <RGBSetLowSCL>
 80016d6:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80016da:	f7ff bf73 	b.w	80015c4 <RGBSetHighSDA>

080016de <rgb_i2cStop>:
 80016de:	b508      	push	{r3, lr}
 80016e0:	f7ff ff9c 	bl	800161c <RGBSetLowSCL>
 80016e4:	f7ff ff3e 	bl	8001564 <RGBSetLowSDA>
 80016e8:	f7ff ff9f 	bl	800162a <RGBSetHighSCL>
 80016ec:	f7ff ff3a 	bl	8001564 <RGBSetLowSDA>
 80016f0:	f7ff ff9b 	bl	800162a <RGBSetHighSCL>
 80016f4:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80016f8:	f7ff bf64 	b.w	80015c4 <RGBSetHighSDA>

080016fc <rgb_i2cWrite>:
 80016fc:	b538      	push	{r3, r4, r5, lr}
 80016fe:	4605      	mov	r5, r0
 8001700:	2408      	movs	r4, #8
 8001702:	f7ff ff8b 	bl	800161c <RGBSetLowSCL>
 8001706:	062b      	lsls	r3, r5, #24
 8001708:	d502      	bpl.n	8001710 <rgb_i2cWrite+0x14>
 800170a:	f7ff ff5b 	bl	80015c4 <RGBSetHighSDA>
 800170e:	e001      	b.n	8001714 <rgb_i2cWrite+0x18>
 8001710:	f7ff ff28 	bl	8001564 <RGBSetLowSDA>
 8001714:	3c01      	subs	r4, #1
 8001716:	f7ff ff88 	bl	800162a <RGBSetHighSCL>
 800171a:	006d      	lsls	r5, r5, #1
 800171c:	f014 04ff 	ands.w	r4, r4, #255	; 0xff
 8001720:	b2ed      	uxtb	r5, r5
 8001722:	d1ee      	bne.n	8001702 <rgb_i2cWrite+0x6>
 8001724:	f7ff ff7a 	bl	800161c <RGBSetLowSCL>
 8001728:	f7ff ff4c 	bl	80015c4 <RGBSetHighSDA>
 800172c:	f7ff ff7d 	bl	800162a <RGBSetHighSCL>
 8001730:	f7ff ff74 	bl	800161c <RGBSetLowSCL>
 8001734:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8001738:	f7ff bf0e 	b.w	8001558 <rgb_i2c_delay>

0800173c <rgb_i2cRead>:
 800173c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8001740:	1e4e      	subs	r6, r1, #1
 8001742:	4680      	mov	r8, r0
 8001744:	460c      	mov	r4, r1
 8001746:	f101 0708 	add.w	r7, r1, #8
 800174a:	4633      	mov	r3, r6
 800174c:	2200      	movs	r2, #0
 800174e:	f803 2f01 	strb.w	r2, [r3, #1]!
 8001752:	42bb      	cmp	r3, r7
 8001754:	d1fa      	bne.n	800174c <rgb_i2cRead+0x10>
 8001756:	f7ff ff61 	bl	800161c <RGBSetLowSCL>
 800175a:	f7ff ff33 	bl	80015c4 <RGBSetHighSDA>
 800175e:	2508      	movs	r5, #8
 8001760:	4633      	mov	r3, r6
 8001762:	f813 2f01 	ldrb.w	r2, [r3, #1]!
 8001766:	0052      	lsls	r2, r2, #1
 8001768:	42bb      	cmp	r3, r7
 800176a:	701a      	strb	r2, [r3, #0]
 800176c:	d1f9      	bne.n	8001762 <rgb_i2cRead+0x26>
 800176e:	f7ff ff5c 	bl	800162a <RGBSetHighSCL>
 8001772:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8001776:	8a1b      	ldrh	r3, [r3, #16]
 8001778:	b29b      	uxth	r3, r3
 800177a:	07d9      	lsls	r1, r3, #31
 800177c:	bf42      	ittt	mi
 800177e:	7822      	ldrbmi	r2, [r4, #0]
 8001780:	f042 0201 	orrmi.w	r2, r2, #1
 8001784:	7022      	strbmi	r2, [r4, #0]
 8001786:	079a      	lsls	r2, r3, #30
 8001788:	bf42      	ittt	mi
 800178a:	7862      	ldrbmi	r2, [r4, #1]
 800178c:	f042 0201 	orrmi.w	r2, r2, #1
 8001790:	7062      	strbmi	r2, [r4, #1]
 8001792:	0758      	lsls	r0, r3, #29
 8001794:	bf42      	ittt	mi
 8001796:	78a2      	ldrbmi	r2, [r4, #2]
 8001798:	f042 0201 	orrmi.w	r2, r2, #1
 800179c:	70a2      	strbmi	r2, [r4, #2]
 800179e:	0719      	lsls	r1, r3, #28
 80017a0:	bf42      	ittt	mi
 80017a2:	78e2      	ldrbmi	r2, [r4, #3]
 80017a4:	f042 0201 	orrmi.w	r2, r2, #1
 80017a8:	70e2      	strbmi	r2, [r4, #3]
 80017aa:	06da      	lsls	r2, r3, #27
 80017ac:	bf42      	ittt	mi
 80017ae:	7922      	ldrbmi	r2, [r4, #4]
 80017b0:	f042 0201 	orrmi.w	r2, r2, #1
 80017b4:	7122      	strbmi	r2, [r4, #4]
 80017b6:	0698      	lsls	r0, r3, #26
 80017b8:	bf42      	ittt	mi
 80017ba:	7962      	ldrbmi	r2, [r4, #5]
 80017bc:	f042 0201 	orrmi.w	r2, r2, #1
 80017c0:	7162      	strbmi	r2, [r4, #5]
 80017c2:	0659      	lsls	r1, r3, #25
 80017c4:	bf42      	ittt	mi
 80017c6:	79a2      	ldrbmi	r2, [r4, #6]
 80017c8:	f042 0201 	orrmi.w	r2, r2, #1
 80017cc:	71a2      	strbmi	r2, [r4, #6]
 80017ce:	061a      	lsls	r2, r3, #24
 80017d0:	bf42      	ittt	mi
 80017d2:	79e3      	ldrbmi	r3, [r4, #7]
 80017d4:	f043 0301 	orrmi.w	r3, r3, #1
 80017d8:	71e3      	strbmi	r3, [r4, #7]
 80017da:	4b0c      	ldr	r3, [pc, #48]	; (800180c <rgb_i2cRead+0xd0>)
 80017dc:	8a1b      	ldrh	r3, [r3, #16]
 80017de:	07db      	lsls	r3, r3, #31
 80017e0:	bf42      	ittt	mi
 80017e2:	7a23      	ldrbmi	r3, [r4, #8]
 80017e4:	f043 0301 	orrmi.w	r3, r3, #1
 80017e8:	7223      	strbmi	r3, [r4, #8]
 80017ea:	f7ff ff17 	bl	800161c <RGBSetLowSCL>
 80017ee:	3d01      	subs	r5, #1
 80017f0:	d1b6      	bne.n	8001760 <rgb_i2cRead+0x24>
 80017f2:	f1b8 0f00 	cmp.w	r8, #0
 80017f6:	d001      	beq.n	80017fc <rgb_i2cRead+0xc0>
 80017f8:	f7ff feb4 	bl	8001564 <RGBSetLowSDA>
 80017fc:	f7ff ff15 	bl	800162a <RGBSetHighSCL>
 8001800:	f7ff ff0c 	bl	800161c <RGBSetLowSCL>
 8001804:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8001808:	f7ff bea6 	b.w	8001558 <rgb_i2c_delay>
 800180c:	48000400 	.word	0x48000400

08001810 <rgb_i2c_write_reg>:
 8001810:	b570      	push	{r4, r5, r6, lr}
 8001812:	4606      	mov	r6, r0
 8001814:	460d      	mov	r5, r1
 8001816:	4614      	mov	r4, r2
 8001818:	f7ff ff52 	bl	80016c0 <rgb_i2cStart>
 800181c:	4630      	mov	r0, r6
 800181e:	f7ff ff6d 	bl	80016fc <rgb_i2cWrite>
 8001822:	4628      	mov	r0, r5
 8001824:	f7ff ff6a 	bl	80016fc <rgb_i2cWrite>
 8001828:	4620      	mov	r0, r4
 800182a:	f7ff ff67 	bl	80016fc <rgb_i2cWrite>
 800182e:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8001832:	f7ff bf54 	b.w	80016de <rgb_i2cStop>

08001836 <rgb_i2c_read_reg>:
 8001836:	b570      	push	{r4, r5, r6, lr}
 8001838:	4604      	mov	r4, r0
 800183a:	460e      	mov	r6, r1
 800183c:	4615      	mov	r5, r2
 800183e:	f7ff ff3f 	bl	80016c0 <rgb_i2cStart>
 8001842:	4620      	mov	r0, r4
 8001844:	f7ff ff5a 	bl	80016fc <rgb_i2cWrite>
 8001848:	4630      	mov	r0, r6
 800184a:	f7ff ff57 	bl	80016fc <rgb_i2cWrite>
 800184e:	f7ff ff37 	bl	80016c0 <rgb_i2cStart>
 8001852:	f044 0001 	orr.w	r0, r4, #1
 8001856:	f7ff ff51 	bl	80016fc <rgb_i2cWrite>
 800185a:	4629      	mov	r1, r5
 800185c:	2000      	movs	r0, #0
 800185e:	f7ff ff6d 	bl	800173c <rgb_i2cRead>
 8001862:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8001866:	f7ff bf3a 	b.w	80016de <rgb_i2cStop>
	...

0800186c <rgb_init>:
 800186c:	b570      	push	{r4, r5, r6, lr}
 800186e:	4b1e      	ldr	r3, [pc, #120]	; (80018e8 <rgb_init+0x7c>)
 8001870:	2200      	movs	r2, #0
 8001872:	3201      	adds	r2, #1
 8001874:	2400      	movs	r4, #0
 8001876:	2a09      	cmp	r2, #9
 8001878:	801c      	strh	r4, [r3, #0]
 800187a:	825c      	strh	r4, [r3, #18]
 800187c:	849c      	strh	r4, [r3, #36]	; 0x24
 800187e:	f8a3 4048 	strh.w	r4, [r3, #72]	; 0x48
 8001882:	86dc      	strh	r4, [r3, #54]	; 0x36
 8001884:	f103 0302 	add.w	r3, r3, #2
 8001888:	d1f3      	bne.n	8001872 <rgb_init+0x6>
 800188a:	4d18      	ldr	r5, [pc, #96]	; (80018ec <rgb_init+0x80>)
 800188c:	f64f 76ff 	movw	r6, #65535	; 0xffff
 8001890:	802e      	strh	r6, [r5, #0]
 8001892:	f7ff fed1 	bl	8001638 <rgb_i2c_init>
 8001896:	2072      	movs	r0, #114	; 0x72
 8001898:	2181      	movs	r1, #129	; 0x81
 800189a:	22ff      	movs	r2, #255	; 0xff
 800189c:	f7ff ffb8 	bl	8001810 <rgb_i2c_write_reg>
 80018a0:	2072      	movs	r0, #114	; 0x72
 80018a2:	2183      	movs	r1, #131	; 0x83
 80018a4:	22ff      	movs	r2, #255	; 0xff
 80018a6:	f7ff ffb3 	bl	8001810 <rgb_i2c_write_reg>
 80018aa:	2072      	movs	r0, #114	; 0x72
 80018ac:	218d      	movs	r1, #141	; 0x8d
 80018ae:	4622      	mov	r2, r4
 80018b0:	f7ff ffae 	bl	8001810 <rgb_i2c_write_reg>
 80018b4:	2072      	movs	r0, #114	; 0x72
 80018b6:	2180      	movs	r1, #128	; 0x80
 80018b8:	2203      	movs	r2, #3
 80018ba:	f7ff ffa9 	bl	8001810 <rgb_i2c_write_reg>
 80018be:	2072      	movs	r0, #114	; 0x72
 80018c0:	218f      	movs	r1, #143	; 0x8f
 80018c2:	2223      	movs	r2, #35	; 0x23
 80018c4:	f7ff ffa4 	bl	8001810 <rgb_i2c_write_reg>
 80018c8:	f7ff fe7c 	bl	80015c4 <RGBSetHighSDA>
 80018cc:	2072      	movs	r0, #114	; 0x72
 80018ce:	2180      	movs	r1, #128	; 0x80
 80018d0:	2207      	movs	r2, #7
 80018d2:	802c      	strh	r4, [r5, #0]
 80018d4:	f7ff ff9c 	bl	8001810 <rgb_i2c_write_reg>
 80018d8:	2072      	movs	r0, #114	; 0x72
 80018da:	218e      	movs	r1, #142	; 0x8e
 80018dc:	2208      	movs	r2, #8
 80018de:	f7ff ff97 	bl	8001810 <rgb_i2c_write_reg>
 80018e2:	802e      	strh	r6, [r5, #0]
 80018e4:	bd70      	pop	{r4, r5, r6, pc}
 80018e6:	bf00      	nop
 80018e8:	20000da8 	.word	0x20000da8
 80018ec:	20000e02 	.word	0x20000e02

080018f0 <rgb_get>:
 80018f0:	4800      	ldr	r0, [pc, #0]	; (80018f4 <rgb_get+0x4>)
 80018f2:	4770      	bx	lr
 80018f4:	20000da8 	.word	0x20000da8

080018f8 <rgb_read>:
 80018f8:	b538      	push	{r3, r4, r5, lr}
 80018fa:	f7ff fee1 	bl	80016c0 <rgb_i2cStart>
 80018fe:	2072      	movs	r0, #114	; 0x72
 8001900:	f7ff fefc 	bl	80016fc <rgb_i2cWrite>
 8001904:	20b4      	movs	r0, #180	; 0xb4
 8001906:	f7ff fef9 	bl	80016fc <rgb_i2cWrite>
 800190a:	4d48      	ldr	r5, [pc, #288]	; (8001a2c <rgb_read+0x134>)
 800190c:	f7ff fed8 	bl	80016c0 <rgb_i2cStart>
 8001910:	2073      	movs	r0, #115	; 0x73
 8001912:	f7ff fef3 	bl	80016fc <rgb_i2cWrite>
 8001916:	2001      	movs	r0, #1
 8001918:	4945      	ldr	r1, [pc, #276]	; (8001a30 <rgb_read+0x138>)
 800191a:	f7ff ff0f 	bl	800173c <rgb_i2cRead>
 800191e:	462a      	mov	r2, r5
 8001920:	2300      	movs	r3, #0
 8001922:	4c43      	ldr	r4, [pc, #268]	; (8001a30 <rgb_read+0x138>)
 8001924:	5d19      	ldrb	r1, [r3, r4]
 8001926:	f822 1f02 	strh.w	r1, [r2, #2]!
 800192a:	3301      	adds	r3, #1
 800192c:	2b09      	cmp	r3, #9
 800192e:	d1f8      	bne.n	8001922 <rgb_read+0x2a>
 8001930:	2001      	movs	r0, #1
 8001932:	4621      	mov	r1, r4
 8001934:	f7ff ff02 	bl	800173c <rgb_i2cRead>
 8001938:	2300      	movs	r3, #0
 800193a:	5ce1      	ldrb	r1, [r4, r3]
 800193c:	f835 2f02 	ldrh.w	r2, [r5, #2]!
 8001940:	3301      	adds	r3, #1
 8001942:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
 8001946:	2b09      	cmp	r3, #9
 8001948:	802a      	strh	r2, [r5, #0]
 800194a:	d1f6      	bne.n	800193a <rgb_read+0x42>
 800194c:	2001      	movs	r0, #1
 800194e:	4938      	ldr	r1, [pc, #224]	; (8001a30 <rgb_read+0x138>)
 8001950:	f7ff fef4 	bl	800173c <rgb_i2cRead>
 8001954:	2300      	movs	r3, #0
 8001956:	4d37      	ldr	r5, [pc, #220]	; (8001a34 <rgb_read+0x13c>)
 8001958:	5ce2      	ldrb	r2, [r4, r3]
 800195a:	f825 2013 	strh.w	r2, [r5, r3, lsl #1]
 800195e:	3301      	adds	r3, #1
 8001960:	2b09      	cmp	r3, #9
 8001962:	d1f8      	bne.n	8001956 <rgb_read+0x5e>
 8001964:	2001      	movs	r0, #1
 8001966:	4932      	ldr	r1, [pc, #200]	; (8001a30 <rgb_read+0x138>)
 8001968:	f7ff fee8 	bl	800173c <rgb_i2cRead>
 800196c:	2300      	movs	r3, #0
 800196e:	f835 2013 	ldrh.w	r2, [r5, r3, lsl #1]
 8001972:	5ce1      	ldrb	r1, [r4, r3]
 8001974:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
 8001978:	f825 2013 	strh.w	r2, [r5, r3, lsl #1]
 800197c:	3301      	adds	r3, #1
 800197e:	2b09      	cmp	r3, #9
 8001980:	d1f5      	bne.n	800196e <rgb_read+0x76>
 8001982:	4d2d      	ldr	r5, [pc, #180]	; (8001a38 <rgb_read+0x140>)
 8001984:	492a      	ldr	r1, [pc, #168]	; (8001a30 <rgb_read+0x138>)
 8001986:	2001      	movs	r0, #1
 8001988:	f7ff fed8 	bl	800173c <rgb_i2cRead>
 800198c:	462a      	mov	r2, r5
 800198e:	2300      	movs	r3, #0
 8001990:	5ce1      	ldrb	r1, [r4, r3]
 8001992:	f822 1f02 	strh.w	r1, [r2, #2]!
 8001996:	3301      	adds	r3, #1
 8001998:	2b09      	cmp	r3, #9
 800199a:	d1f9      	bne.n	8001990 <rgb_read+0x98>
 800199c:	2001      	movs	r0, #1
 800199e:	4924      	ldr	r1, [pc, #144]	; (8001a30 <rgb_read+0x138>)
 80019a0:	f7ff fecc 	bl	800173c <rgb_i2cRead>
 80019a4:	2300      	movs	r3, #0
 80019a6:	5ce1      	ldrb	r1, [r4, r3]
 80019a8:	f835 2f02 	ldrh.w	r2, [r5, #2]!
 80019ac:	3301      	adds	r3, #1
 80019ae:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
 80019b2:	2b09      	cmp	r3, #9
 80019b4:	802a      	strh	r2, [r5, #0]
 80019b6:	d1f6      	bne.n	80019a6 <rgb_read+0xae>
 80019b8:	4d20      	ldr	r5, [pc, #128]	; (8001a3c <rgb_read+0x144>)
 80019ba:	491d      	ldr	r1, [pc, #116]	; (8001a30 <rgb_read+0x138>)
 80019bc:	2001      	movs	r0, #1
 80019be:	f7ff febd 	bl	800173c <rgb_i2cRead>
 80019c2:	462a      	mov	r2, r5
 80019c4:	2300      	movs	r3, #0
 80019c6:	5ce1      	ldrb	r1, [r4, r3]
 80019c8:	f822 1f02 	strh.w	r1, [r2, #2]!
 80019cc:	3301      	adds	r3, #1
 80019ce:	2b09      	cmp	r3, #9
 80019d0:	d1f9      	bne.n	80019c6 <rgb_read+0xce>
 80019d2:	2001      	movs	r0, #1
 80019d4:	4916      	ldr	r1, [pc, #88]	; (8001a30 <rgb_read+0x138>)
 80019d6:	f7ff feb1 	bl	800173c <rgb_i2cRead>
 80019da:	2300      	movs	r3, #0
 80019dc:	5ce1      	ldrb	r1, [r4, r3]
 80019de:	f835 2f02 	ldrh.w	r2, [r5, #2]!
 80019e2:	3301      	adds	r3, #1
 80019e4:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
 80019e8:	2b09      	cmp	r3, #9
 80019ea:	802a      	strh	r2, [r5, #0]
 80019ec:	d1f6      	bne.n	80019dc <rgb_read+0xe4>
 80019ee:	4d14      	ldr	r5, [pc, #80]	; (8001a40 <rgb_read+0x148>)
 80019f0:	490f      	ldr	r1, [pc, #60]	; (8001a30 <rgb_read+0x138>)
 80019f2:	2001      	movs	r0, #1
 80019f4:	f7ff fea2 	bl	800173c <rgb_i2cRead>
 80019f8:	462a      	mov	r2, r5
 80019fa:	2300      	movs	r3, #0
 80019fc:	5ce1      	ldrb	r1, [r4, r3]
 80019fe:	f822 1f02 	strh.w	r1, [r2, #2]!
 8001a02:	3301      	adds	r3, #1
 8001a04:	2b09      	cmp	r3, #9
 8001a06:	d1f9      	bne.n	80019fc <rgb_read+0x104>
 8001a08:	2000      	movs	r0, #0
 8001a0a:	4909      	ldr	r1, [pc, #36]	; (8001a30 <rgb_read+0x138>)
 8001a0c:	f7ff fe96 	bl	800173c <rgb_i2cRead>
 8001a10:	2300      	movs	r3, #0
 8001a12:	5ce1      	ldrb	r1, [r4, r3]
 8001a14:	f835 2f02 	ldrh.w	r2, [r5, #2]!
 8001a18:	3301      	adds	r3, #1
 8001a1a:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
 8001a1e:	2b09      	cmp	r3, #9
 8001a20:	802a      	strh	r2, [r5, #0]
 8001a22:	d1f6      	bne.n	8001a12 <rgb_read+0x11a>
 8001a24:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8001a28:	f7ff be59 	b.w	80016de <rgb_i2cStop>
 8001a2c:	20000ddc 	.word	0x20000ddc
 8001a30:	20000e04 	.word	0x20000e04
 8001a34:	20000da8 	.word	0x20000da8
 8001a38:	20000db8 	.word	0x20000db8
 8001a3c:	20000dca 	.word	0x20000dca
 8001a40:	20000dee 	.word	0x20000dee

08001a44 <main>:
 8001a44:	b508      	push	{r3, lr}
 8001a46:	f000 ff8b 	bl	8002960 <lib_low_level_init>
 8001a4a:	f7ff fc65 	bl	8001318 <lib_os_init>
 8001a4e:	4905      	ldr	r1, [pc, #20]	; (8001a64 <main+0x20>)
 8001a50:	4805      	ldr	r0, [pc, #20]	; (8001a68 <main+0x24>)
 8001a52:	f44f 7200 	mov.w	r2, #512	; 0x200
 8001a56:	2306      	movs	r3, #6
 8001a58:	f7ff fa9a 	bl	8000f90 <create_thread>
 8001a5c:	f7ff fa92 	bl	8000f84 <kernel_start>
 8001a60:	2000      	movs	r0, #0
 8001a62:	bd08      	pop	{r3, pc}
 8001a64:	20000e10 	.word	0x20000e10
 8001a68:	08000a41 	.word	0x08000a41

08001a6c <RCC_GetClocksFreq>:
 8001a6c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8001a70:	4f9b      	ldr	r7, [pc, #620]	; (8001ce0 <RCC_GetClocksFreq+0x274>)
 8001a72:	687b      	ldr	r3, [r7, #4]
 8001a74:	f003 030c 	and.w	r3, r3, #12
 8001a78:	2b04      	cmp	r3, #4
 8001a7a:	d005      	beq.n	8001a88 <RCC_GetClocksFreq+0x1c>
 8001a7c:	2b08      	cmp	r3, #8
 8001a7e:	d006      	beq.n	8001a8e <RCC_GetClocksFreq+0x22>
 8001a80:	4a98      	ldr	r2, [pc, #608]	; (8001ce4 <RCC_GetClocksFreq+0x278>)
 8001a82:	6002      	str	r2, [r0, #0]
 8001a84:	b9b3      	cbnz	r3, 8001ab4 <RCC_GetClocksFreq+0x48>
 8001a86:	e016      	b.n	8001ab6 <RCC_GetClocksFreq+0x4a>
 8001a88:	4b96      	ldr	r3, [pc, #600]	; (8001ce4 <RCC_GetClocksFreq+0x278>)
 8001a8a:	6003      	str	r3, [r0, #0]
 8001a8c:	e012      	b.n	8001ab4 <RCC_GetClocksFreq+0x48>
 8001a8e:	687b      	ldr	r3, [r7, #4]
 8001a90:	6879      	ldr	r1, [r7, #4]
 8001a92:	f3c3 4383 	ubfx	r3, r3, #18, #4
 8001a96:	1c9a      	adds	r2, r3, #2
 8001a98:	03cb      	lsls	r3, r1, #15
 8001a9a:	bf49      	itett	mi
 8001a9c:	6afb      	ldrmi	r3, [r7, #44]	; 0x2c
 8001a9e:	4b92      	ldrpl	r3, [pc, #584]	; (8001ce8 <RCC_GetClocksFreq+0x27c>)
 8001aa0:	4990      	ldrmi	r1, [pc, #576]	; (8001ce4 <RCC_GetClocksFreq+0x278>)
 8001aa2:	f003 030f 	andmi.w	r3, r3, #15
 8001aa6:	bf44      	itt	mi
 8001aa8:	3301      	addmi	r3, #1
 8001aaa:	fbb1 f3f3 	udivmi	r3, r1, r3
 8001aae:	4353      	muls	r3, r2
 8001ab0:	6003      	str	r3, [r0, #0]
 8001ab2:	e000      	b.n	8001ab6 <RCC_GetClocksFreq+0x4a>
 8001ab4:	2300      	movs	r3, #0
 8001ab6:	687a      	ldr	r2, [r7, #4]
 8001ab8:	4e8c      	ldr	r6, [pc, #560]	; (8001cec <RCC_GetClocksFreq+0x280>)
 8001aba:	f8df c234 	ldr.w	ip, [pc, #564]	; 8001cf0 <RCC_GetClocksFreq+0x284>
 8001abe:	f3c2 1203 	ubfx	r2, r2, #4, #4
 8001ac2:	5cb4      	ldrb	r4, [r6, r2]
 8001ac4:	6802      	ldr	r2, [r0, #0]
 8001ac6:	b2e4      	uxtb	r4, r4
 8001ac8:	fa22 f104 	lsr.w	r1, r2, r4
 8001acc:	6041      	str	r1, [r0, #4]
 8001ace:	687d      	ldr	r5, [r7, #4]
 8001ad0:	f3c5 2502 	ubfx	r5, r5, #8, #3
 8001ad4:	5d75      	ldrb	r5, [r6, r5]
 8001ad6:	fa21 fe05 	lsr.w	lr, r1, r5
 8001ada:	f8c0 e008 	str.w	lr, [r0, #8]
 8001ade:	687d      	ldr	r5, [r7, #4]
 8001ae0:	f3c5 25c2 	ubfx	r5, r5, #11, #3
 8001ae4:	5d75      	ldrb	r5, [r6, r5]
 8001ae6:	b2ed      	uxtb	r5, r5
 8001ae8:	40e9      	lsrs	r1, r5
 8001aea:	60c1      	str	r1, [r0, #12]
 8001aec:	6afe      	ldr	r6, [r7, #44]	; 0x2c
 8001aee:	f3c6 1804 	ubfx	r8, r6, #4, #5
 8001af2:	f008 060f 	and.w	r6, r8, #15
 8001af6:	f018 0f10 	tst.w	r8, #16
 8001afa:	f83c 6016 	ldrh.w	r6, [ip, r6, lsl #1]
 8001afe:	46e0      	mov	r8, ip
 8001b00:	b2b6      	uxth	r6, r6
 8001b02:	d004      	beq.n	8001b0e <RCC_GetClocksFreq+0xa2>
 8001b04:	b11e      	cbz	r6, 8001b0e <RCC_GetClocksFreq+0xa2>
 8001b06:	fbb3 f6f6 	udiv	r6, r3, r6
 8001b0a:	6106      	str	r6, [r0, #16]
 8001b0c:	e000      	b.n	8001b10 <RCC_GetClocksFreq+0xa4>
 8001b0e:	6102      	str	r2, [r0, #16]
 8001b10:	6afe      	ldr	r6, [r7, #44]	; 0x2c
 8001b12:	f3c6 2c44 	ubfx	ip, r6, #9, #5
 8001b16:	f00c 060f 	and.w	r6, ip, #15
 8001b1a:	f01c 0f10 	tst.w	ip, #16
 8001b1e:	f838 6016 	ldrh.w	r6, [r8, r6, lsl #1]
 8001b22:	b2b6      	uxth	r6, r6
 8001b24:	d004      	beq.n	8001b30 <RCC_GetClocksFreq+0xc4>
 8001b26:	b11e      	cbz	r6, 8001b30 <RCC_GetClocksFreq+0xc4>
 8001b28:	fbb3 f6f6 	udiv	r6, r3, r6
 8001b2c:	6146      	str	r6, [r0, #20]
 8001b2e:	e000      	b.n	8001b32 <RCC_GetClocksFreq+0xc6>
 8001b30:	6142      	str	r2, [r0, #20]
 8001b32:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001b34:	06f6      	lsls	r6, r6, #27
 8001b36:	bf5a      	itte	pl
 8001b38:	4e6a      	ldrpl	r6, [pc, #424]	; (8001ce4 <RCC_GetClocksFreq+0x278>)
 8001b3a:	6186      	strpl	r6, [r0, #24]
 8001b3c:	6182      	strmi	r2, [r0, #24]
 8001b3e:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001b40:	06b6      	lsls	r6, r6, #26
 8001b42:	bf5a      	itte	pl
 8001b44:	4e67      	ldrpl	r6, [pc, #412]	; (8001ce4 <RCC_GetClocksFreq+0x278>)
 8001b46:	61c6      	strpl	r6, [r0, #28]
 8001b48:	61c2      	strmi	r2, [r0, #28]
 8001b4a:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001b4c:	0676      	lsls	r6, r6, #25
 8001b4e:	bf5a      	itte	pl
 8001b50:	4e64      	ldrpl	r6, [pc, #400]	; (8001ce4 <RCC_GetClocksFreq+0x278>)
 8001b52:	6206      	strpl	r6, [r0, #32]
 8001b54:	6202      	strmi	r2, [r0, #32]
 8001b56:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001b58:	05f6      	lsls	r6, r6, #23
 8001b5a:	d506      	bpl.n	8001b6a <RCC_GetClocksFreq+0xfe>
 8001b5c:	429a      	cmp	r2, r3
 8001b5e:	d104      	bne.n	8001b6a <RCC_GetClocksFreq+0xfe>
 8001b60:	42a5      	cmp	r5, r4
 8001b62:	d102      	bne.n	8001b6a <RCC_GetClocksFreq+0xfe>
 8001b64:	0056      	lsls	r6, r2, #1
 8001b66:	6246      	str	r6, [r0, #36]	; 0x24
 8001b68:	e000      	b.n	8001b6c <RCC_GetClocksFreq+0x100>
 8001b6a:	6241      	str	r1, [r0, #36]	; 0x24
 8001b6c:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001b6e:	04f6      	lsls	r6, r6, #19
 8001b70:	d506      	bpl.n	8001b80 <RCC_GetClocksFreq+0x114>
 8001b72:	429a      	cmp	r2, r3
 8001b74:	d104      	bne.n	8001b80 <RCC_GetClocksFreq+0x114>
 8001b76:	42a5      	cmp	r5, r4
 8001b78:	d102      	bne.n	8001b80 <RCC_GetClocksFreq+0x114>
 8001b7a:	0056      	lsls	r6, r2, #1
 8001b7c:	6286      	str	r6, [r0, #40]	; 0x28
 8001b7e:	e000      	b.n	8001b82 <RCC_GetClocksFreq+0x116>
 8001b80:	6281      	str	r1, [r0, #40]	; 0x28
 8001b82:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001b84:	05b6      	lsls	r6, r6, #22
 8001b86:	d506      	bpl.n	8001b96 <RCC_GetClocksFreq+0x12a>
 8001b88:	429a      	cmp	r2, r3
 8001b8a:	d104      	bne.n	8001b96 <RCC_GetClocksFreq+0x12a>
 8001b8c:	42a5      	cmp	r5, r4
 8001b8e:	d102      	bne.n	8001b96 <RCC_GetClocksFreq+0x12a>
 8001b90:	0056      	lsls	r6, r2, #1
 8001b92:	62c6      	str	r6, [r0, #44]	; 0x2c
 8001b94:	e000      	b.n	8001b98 <RCC_GetClocksFreq+0x12c>
 8001b96:	62c1      	str	r1, [r0, #44]	; 0x2c
 8001b98:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001b9a:	0576      	lsls	r6, r6, #21
 8001b9c:	d506      	bpl.n	8001bac <RCC_GetClocksFreq+0x140>
 8001b9e:	429a      	cmp	r2, r3
 8001ba0:	d104      	bne.n	8001bac <RCC_GetClocksFreq+0x140>
 8001ba2:	42a5      	cmp	r5, r4
 8001ba4:	d102      	bne.n	8001bac <RCC_GetClocksFreq+0x140>
 8001ba6:	0056      	lsls	r6, r2, #1
 8001ba8:	64c6      	str	r6, [r0, #76]	; 0x4c
 8001baa:	e000      	b.n	8001bae <RCC_GetClocksFreq+0x142>
 8001bac:	64c1      	str	r1, [r0, #76]	; 0x4c
 8001bae:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001bb0:	0536      	lsls	r6, r6, #20
 8001bb2:	d506      	bpl.n	8001bc2 <RCC_GetClocksFreq+0x156>
 8001bb4:	429a      	cmp	r2, r3
 8001bb6:	d104      	bne.n	8001bc2 <RCC_GetClocksFreq+0x156>
 8001bb8:	42a5      	cmp	r5, r4
 8001bba:	d102      	bne.n	8001bc2 <RCC_GetClocksFreq+0x156>
 8001bbc:	0056      	lsls	r6, r2, #1
 8001bbe:	6506      	str	r6, [r0, #80]	; 0x50
 8001bc0:	e000      	b.n	8001bc4 <RCC_GetClocksFreq+0x158>
 8001bc2:	6501      	str	r1, [r0, #80]	; 0x50
 8001bc4:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001bc6:	04b6      	lsls	r6, r6, #18
 8001bc8:	d506      	bpl.n	8001bd8 <RCC_GetClocksFreq+0x16c>
 8001bca:	429a      	cmp	r2, r3
 8001bcc:	d104      	bne.n	8001bd8 <RCC_GetClocksFreq+0x16c>
 8001bce:	42a5      	cmp	r5, r4
 8001bd0:	d102      	bne.n	8001bd8 <RCC_GetClocksFreq+0x16c>
 8001bd2:	0056      	lsls	r6, r2, #1
 8001bd4:	6546      	str	r6, [r0, #84]	; 0x54
 8001bd6:	e000      	b.n	8001bda <RCC_GetClocksFreq+0x16e>
 8001bd8:	6501      	str	r1, [r0, #80]	; 0x50
 8001bda:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001bdc:	0436      	lsls	r6, r6, #16
 8001bde:	d506      	bpl.n	8001bee <RCC_GetClocksFreq+0x182>
 8001be0:	429a      	cmp	r2, r3
 8001be2:	d104      	bne.n	8001bee <RCC_GetClocksFreq+0x182>
 8001be4:	42a5      	cmp	r5, r4
 8001be6:	d102      	bne.n	8001bee <RCC_GetClocksFreq+0x182>
 8001be8:	0053      	lsls	r3, r2, #1
 8001bea:	6583      	str	r3, [r0, #88]	; 0x58
 8001bec:	e000      	b.n	8001bf0 <RCC_GetClocksFreq+0x184>
 8001bee:	6581      	str	r1, [r0, #88]	; 0x58
 8001bf0:	6b3c      	ldr	r4, [r7, #48]	; 0x30
 8001bf2:	4b3b      	ldr	r3, [pc, #236]	; (8001ce0 <RCC_GetClocksFreq+0x274>)
 8001bf4:	07a4      	lsls	r4, r4, #30
 8001bf6:	d101      	bne.n	8001bfc <RCC_GetClocksFreq+0x190>
 8001bf8:	6381      	str	r1, [r0, #56]	; 0x38
 8001bfa:	e015      	b.n	8001c28 <RCC_GetClocksFreq+0x1bc>
 8001bfc:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001bfe:	f001 0103 	and.w	r1, r1, #3
 8001c02:	2901      	cmp	r1, #1
 8001c04:	d101      	bne.n	8001c0a <RCC_GetClocksFreq+0x19e>
 8001c06:	6382      	str	r2, [r0, #56]	; 0x38
 8001c08:	e00e      	b.n	8001c28 <RCC_GetClocksFreq+0x1bc>
 8001c0a:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001c0c:	f001 0103 	and.w	r1, r1, #3
 8001c10:	2902      	cmp	r1, #2
 8001c12:	d102      	bne.n	8001c1a <RCC_GetClocksFreq+0x1ae>
 8001c14:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001c18:	e005      	b.n	8001c26 <RCC_GetClocksFreq+0x1ba>
 8001c1a:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001c1c:	f003 0303 	and.w	r3, r3, #3
 8001c20:	2b03      	cmp	r3, #3
 8001c22:	d101      	bne.n	8001c28 <RCC_GetClocksFreq+0x1bc>
 8001c24:	4b2f      	ldr	r3, [pc, #188]	; (8001ce4 <RCC_GetClocksFreq+0x278>)
 8001c26:	6383      	str	r3, [r0, #56]	; 0x38
 8001c28:	6b39      	ldr	r1, [r7, #48]	; 0x30
 8001c2a:	4b2d      	ldr	r3, [pc, #180]	; (8001ce0 <RCC_GetClocksFreq+0x274>)
 8001c2c:	f411 3f40 	tst.w	r1, #196608	; 0x30000
 8001c30:	d102      	bne.n	8001c38 <RCC_GetClocksFreq+0x1cc>
 8001c32:	f8c0 e03c 	str.w	lr, [r0, #60]	; 0x3c
 8001c36:	e018      	b.n	8001c6a <RCC_GetClocksFreq+0x1fe>
 8001c38:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001c3a:	f401 3140 	and.w	r1, r1, #196608	; 0x30000
 8001c3e:	f5b1 3f80 	cmp.w	r1, #65536	; 0x10000
 8001c42:	d101      	bne.n	8001c48 <RCC_GetClocksFreq+0x1dc>
 8001c44:	63c2      	str	r2, [r0, #60]	; 0x3c
 8001c46:	e010      	b.n	8001c6a <RCC_GetClocksFreq+0x1fe>
 8001c48:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001c4a:	f401 3140 	and.w	r1, r1, #196608	; 0x30000
 8001c4e:	f5b1 3f00 	cmp.w	r1, #131072	; 0x20000
 8001c52:	d102      	bne.n	8001c5a <RCC_GetClocksFreq+0x1ee>
 8001c54:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001c58:	e006      	b.n	8001c68 <RCC_GetClocksFreq+0x1fc>
 8001c5a:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001c5c:	f403 3340 	and.w	r3, r3, #196608	; 0x30000
 8001c60:	f5b3 3f40 	cmp.w	r3, #196608	; 0x30000
 8001c64:	d101      	bne.n	8001c6a <RCC_GetClocksFreq+0x1fe>
 8001c66:	4b1f      	ldr	r3, [pc, #124]	; (8001ce4 <RCC_GetClocksFreq+0x278>)
 8001c68:	63c3      	str	r3, [r0, #60]	; 0x3c
 8001c6a:	6b39      	ldr	r1, [r7, #48]	; 0x30
 8001c6c:	4b1c      	ldr	r3, [pc, #112]	; (8001ce0 <RCC_GetClocksFreq+0x274>)
 8001c6e:	f411 2f40 	tst.w	r1, #786432	; 0xc0000
 8001c72:	d102      	bne.n	8001c7a <RCC_GetClocksFreq+0x20e>
 8001c74:	f8c0 e040 	str.w	lr, [r0, #64]	; 0x40
 8001c78:	e018      	b.n	8001cac <RCC_GetClocksFreq+0x240>
 8001c7a:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001c7c:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 8001c80:	f5b1 2f80 	cmp.w	r1, #262144	; 0x40000
 8001c84:	d101      	bne.n	8001c8a <RCC_GetClocksFreq+0x21e>
 8001c86:	6402      	str	r2, [r0, #64]	; 0x40
 8001c88:	e010      	b.n	8001cac <RCC_GetClocksFreq+0x240>
 8001c8a:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001c8c:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 8001c90:	f5b1 2f00 	cmp.w	r1, #524288	; 0x80000
 8001c94:	d102      	bne.n	8001c9c <RCC_GetClocksFreq+0x230>
 8001c96:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001c9a:	e006      	b.n	8001caa <RCC_GetClocksFreq+0x23e>
 8001c9c:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001c9e:	f403 2340 	and.w	r3, r3, #786432	; 0xc0000
 8001ca2:	f5b3 2f40 	cmp.w	r3, #786432	; 0xc0000
 8001ca6:	d101      	bne.n	8001cac <RCC_GetClocksFreq+0x240>
 8001ca8:	4b0e      	ldr	r3, [pc, #56]	; (8001ce4 <RCC_GetClocksFreq+0x278>)
 8001caa:	6403      	str	r3, [r0, #64]	; 0x40
 8001cac:	6b39      	ldr	r1, [r7, #48]	; 0x30
 8001cae:	4b0c      	ldr	r3, [pc, #48]	; (8001ce0 <RCC_GetClocksFreq+0x274>)
 8001cb0:	f411 1f40 	tst.w	r1, #3145728	; 0x300000
 8001cb4:	d102      	bne.n	8001cbc <RCC_GetClocksFreq+0x250>
 8001cb6:	f8c0 e044 	str.w	lr, [r0, #68]	; 0x44
 8001cba:	e023      	b.n	8001d04 <RCC_GetClocksFreq+0x298>
 8001cbc:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001cbe:	f401 1140 	and.w	r1, r1, #3145728	; 0x300000
 8001cc2:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 8001cc6:	d101      	bne.n	8001ccc <RCC_GetClocksFreq+0x260>
 8001cc8:	6442      	str	r2, [r0, #68]	; 0x44
 8001cca:	e01b      	b.n	8001d04 <RCC_GetClocksFreq+0x298>
 8001ccc:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001cce:	f401 1140 	and.w	r1, r1, #3145728	; 0x300000
 8001cd2:	f5b1 1f00 	cmp.w	r1, #2097152	; 0x200000
 8001cd6:	d10d      	bne.n	8001cf4 <RCC_GetClocksFreq+0x288>
 8001cd8:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001cdc:	e011      	b.n	8001d02 <RCC_GetClocksFreq+0x296>
 8001cde:	bf00      	nop
 8001ce0:	40021000 	.word	0x40021000
 8001ce4:	007a1200 	.word	0x007a1200
 8001ce8:	003d0900 	.word	0x003d0900
 8001cec:	200000c0 	.word	0x200000c0
 8001cf0:	200000a0 	.word	0x200000a0
 8001cf4:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001cf6:	f403 1340 	and.w	r3, r3, #3145728	; 0x300000
 8001cfa:	f5b3 1f40 	cmp.w	r3, #3145728	; 0x300000
 8001cfe:	d101      	bne.n	8001d04 <RCC_GetClocksFreq+0x298>
 8001d00:	4b13      	ldr	r3, [pc, #76]	; (8001d50 <RCC_GetClocksFreq+0x2e4>)
 8001d02:	6443      	str	r3, [r0, #68]	; 0x44
 8001d04:	6b39      	ldr	r1, [r7, #48]	; 0x30
 8001d06:	4b13      	ldr	r3, [pc, #76]	; (8001d54 <RCC_GetClocksFreq+0x2e8>)
 8001d08:	f411 0f40 	tst.w	r1, #12582912	; 0xc00000
 8001d0c:	d103      	bne.n	8001d16 <RCC_GetClocksFreq+0x2aa>
 8001d0e:	f8c0 e048 	str.w	lr, [r0, #72]	; 0x48
 8001d12:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8001d16:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001d18:	f401 0140 	and.w	r1, r1, #12582912	; 0xc00000
 8001d1c:	f5b1 0f80 	cmp.w	r1, #4194304	; 0x400000
 8001d20:	d102      	bne.n	8001d28 <RCC_GetClocksFreq+0x2bc>
 8001d22:	6482      	str	r2, [r0, #72]	; 0x48
 8001d24:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8001d28:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 8001d2a:	f402 0240 	and.w	r2, r2, #12582912	; 0xc00000
 8001d2e:	f5b2 0f00 	cmp.w	r2, #8388608	; 0x800000
 8001d32:	d102      	bne.n	8001d3a <RCC_GetClocksFreq+0x2ce>
 8001d34:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001d38:	e006      	b.n	8001d48 <RCC_GetClocksFreq+0x2dc>
 8001d3a:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001d3c:	f403 0340 	and.w	r3, r3, #12582912	; 0xc00000
 8001d40:	f5b3 0f40 	cmp.w	r3, #12582912	; 0xc00000
 8001d44:	d101      	bne.n	8001d4a <RCC_GetClocksFreq+0x2de>
 8001d46:	4b02      	ldr	r3, [pc, #8]	; (8001d50 <RCC_GetClocksFreq+0x2e4>)
 8001d48:	6483      	str	r3, [r0, #72]	; 0x48
 8001d4a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8001d4e:	bf00      	nop
 8001d50:	007a1200 	.word	0x007a1200
 8001d54:	40021000 	.word	0x40021000

08001d58 <RCC_AHBPeriphClockCmd>:
 8001d58:	bf00      	nop
 8001d5a:	bf00      	nop
 8001d5c:	4b04      	ldr	r3, [pc, #16]	; (8001d70 <RCC_AHBPeriphClockCmd+0x18>)
 8001d5e:	695a      	ldr	r2, [r3, #20]
 8001d60:	b109      	cbz	r1, 8001d66 <RCC_AHBPeriphClockCmd+0xe>
 8001d62:	4310      	orrs	r0, r2
 8001d64:	e001      	b.n	8001d6a <RCC_AHBPeriphClockCmd+0x12>
 8001d66:	ea22 0000 	bic.w	r0, r2, r0
 8001d6a:	6158      	str	r0, [r3, #20]
 8001d6c:	4770      	bx	lr
 8001d6e:	bf00      	nop
 8001d70:	40021000 	.word	0x40021000

08001d74 <RCC_APB2PeriphClockCmd>:
 8001d74:	bf00      	nop
 8001d76:	bf00      	nop
 8001d78:	4b04      	ldr	r3, [pc, #16]	; (8001d8c <RCC_APB2PeriphClockCmd+0x18>)
 8001d7a:	699a      	ldr	r2, [r3, #24]
 8001d7c:	b109      	cbz	r1, 8001d82 <RCC_APB2PeriphClockCmd+0xe>
 8001d7e:	4310      	orrs	r0, r2
 8001d80:	e001      	b.n	8001d86 <RCC_APB2PeriphClockCmd+0x12>
 8001d82:	ea22 0000 	bic.w	r0, r2, r0
 8001d86:	6198      	str	r0, [r3, #24]
 8001d88:	4770      	bx	lr
 8001d8a:	bf00      	nop
 8001d8c:	40021000 	.word	0x40021000

08001d90 <RCC_APB1PeriphClockCmd>:
 8001d90:	bf00      	nop
 8001d92:	bf00      	nop
 8001d94:	4b04      	ldr	r3, [pc, #16]	; (8001da8 <RCC_APB1PeriphClockCmd+0x18>)
 8001d96:	69da      	ldr	r2, [r3, #28]
 8001d98:	b109      	cbz	r1, 8001d9e <RCC_APB1PeriphClockCmd+0xe>
 8001d9a:	4310      	orrs	r0, r2
 8001d9c:	e001      	b.n	8001da2 <RCC_APB1PeriphClockCmd+0x12>
 8001d9e:	ea22 0000 	bic.w	r0, r2, r0
 8001da2:	61d8      	str	r0, [r3, #28]
 8001da4:	4770      	bx	lr
 8001da6:	bf00      	nop
 8001da8:	40021000 	.word	0x40021000

08001dac <TIM_TimeBaseInit>:
 8001dac:	bf00      	nop
 8001dae:	bf00      	nop
 8001db0:	bf00      	nop
 8001db2:	4a24      	ldr	r2, [pc, #144]	; (8001e44 <TIM_TimeBaseInit+0x98>)
 8001db4:	8803      	ldrh	r3, [r0, #0]
 8001db6:	4290      	cmp	r0, r2
 8001db8:	b29b      	uxth	r3, r3
 8001dba:	d012      	beq.n	8001de2 <TIM_TimeBaseInit+0x36>
 8001dbc:	f502 6200 	add.w	r2, r2, #2048	; 0x800
 8001dc0:	4290      	cmp	r0, r2
 8001dc2:	d00e      	beq.n	8001de2 <TIM_TimeBaseInit+0x36>
 8001dc4:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 8001dc8:	d00b      	beq.n	8001de2 <TIM_TimeBaseInit+0x36>
 8001dca:	f5a2 3298 	sub.w	r2, r2, #77824	; 0x13000
 8001dce:	4290      	cmp	r0, r2
 8001dd0:	d007      	beq.n	8001de2 <TIM_TimeBaseInit+0x36>
 8001dd2:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8001dd6:	4290      	cmp	r0, r2
 8001dd8:	d003      	beq.n	8001de2 <TIM_TimeBaseInit+0x36>
 8001dda:	f502 32a4 	add.w	r2, r2, #83968	; 0x14800
 8001dde:	4290      	cmp	r0, r2
 8001de0:	d103      	bne.n	8001dea <TIM_TimeBaseInit+0x3e>
 8001de2:	884a      	ldrh	r2, [r1, #2]
 8001de4:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 8001de8:	4313      	orrs	r3, r2
 8001dea:	4a17      	ldr	r2, [pc, #92]	; (8001e48 <TIM_TimeBaseInit+0x9c>)
 8001dec:	4290      	cmp	r0, r2
 8001dee:	d008      	beq.n	8001e02 <TIM_TimeBaseInit+0x56>
 8001df0:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8001df4:	4290      	cmp	r0, r2
 8001df6:	bf1f      	itttt	ne
 8001df8:	f423 7340 	bicne.w	r3, r3, #768	; 0x300
 8001dfc:	890a      	ldrhne	r2, [r1, #8]
 8001dfe:	b29b      	uxthne	r3, r3
 8001e00:	4313      	orrne	r3, r2
 8001e02:	8003      	strh	r3, [r0, #0]
 8001e04:	684b      	ldr	r3, [r1, #4]
 8001e06:	62c3      	str	r3, [r0, #44]	; 0x2c
 8001e08:	880b      	ldrh	r3, [r1, #0]
 8001e0a:	8503      	strh	r3, [r0, #40]	; 0x28
 8001e0c:	4b0d      	ldr	r3, [pc, #52]	; (8001e44 <TIM_TimeBaseInit+0x98>)
 8001e0e:	4298      	cmp	r0, r3
 8001e10:	d013      	beq.n	8001e3a <TIM_TimeBaseInit+0x8e>
 8001e12:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 8001e16:	4298      	cmp	r0, r3
 8001e18:	d00f      	beq.n	8001e3a <TIM_TimeBaseInit+0x8e>
 8001e1a:	f503 6340 	add.w	r3, r3, #3072	; 0xc00
 8001e1e:	4298      	cmp	r0, r3
 8001e20:	d00b      	beq.n	8001e3a <TIM_TimeBaseInit+0x8e>
 8001e22:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 8001e26:	4298      	cmp	r0, r3
 8001e28:	d007      	beq.n	8001e3a <TIM_TimeBaseInit+0x8e>
 8001e2a:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 8001e2e:	4298      	cmp	r0, r3
 8001e30:	d003      	beq.n	8001e3a <TIM_TimeBaseInit+0x8e>
 8001e32:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 8001e36:	4298      	cmp	r0, r3
 8001e38:	d101      	bne.n	8001e3e <TIM_TimeBaseInit+0x92>
 8001e3a:	894b      	ldrh	r3, [r1, #10]
 8001e3c:	8603      	strh	r3, [r0, #48]	; 0x30
 8001e3e:	2301      	movs	r3, #1
 8001e40:	6143      	str	r3, [r0, #20]
 8001e42:	4770      	bx	lr
 8001e44:	40012c00 	.word	0x40012c00
 8001e48:	40001000 	.word	0x40001000

08001e4c <TIM_Cmd>:
 8001e4c:	bf00      	nop
 8001e4e:	bf00      	nop
 8001e50:	8803      	ldrh	r3, [r0, #0]
 8001e52:	b119      	cbz	r1, 8001e5c <TIM_Cmd+0x10>
 8001e54:	b29b      	uxth	r3, r3
 8001e56:	f043 0301 	orr.w	r3, r3, #1
 8001e5a:	e003      	b.n	8001e64 <TIM_Cmd+0x18>
 8001e5c:	f023 0301 	bic.w	r3, r3, #1
 8001e60:	041b      	lsls	r3, r3, #16
 8001e62:	0c1b      	lsrs	r3, r3, #16
 8001e64:	8003      	strh	r3, [r0, #0]
 8001e66:	4770      	bx	lr

08001e68 <TIM_OC1Init>:
 8001e68:	b570      	push	{r4, r5, r6, lr}
 8001e6a:	bf00      	nop
 8001e6c:	bf00      	nop
 8001e6e:	bf00      	nop
 8001e70:	bf00      	nop
 8001e72:	6a03      	ldr	r3, [r0, #32]
 8001e74:	680d      	ldr	r5, [r1, #0]
 8001e76:	f023 0301 	bic.w	r3, r3, #1
 8001e7a:	6203      	str	r3, [r0, #32]
 8001e7c:	6a03      	ldr	r3, [r0, #32]
 8001e7e:	6844      	ldr	r4, [r0, #4]
 8001e80:	6982      	ldr	r2, [r0, #24]
 8001e82:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
 8001e86:	f022 0273 	bic.w	r2, r2, #115	; 0x73
 8001e8a:	4315      	orrs	r5, r2
 8001e8c:	898a      	ldrh	r2, [r1, #12]
 8001e8e:	f023 0302 	bic.w	r3, r3, #2
 8001e92:	4313      	orrs	r3, r2
 8001e94:	888a      	ldrh	r2, [r1, #4]
 8001e96:	4313      	orrs	r3, r2
 8001e98:	4a15      	ldr	r2, [pc, #84]	; (8001ef0 <TIM_OC1Init+0x88>)
 8001e9a:	4290      	cmp	r0, r2
 8001e9c:	d00f      	beq.n	8001ebe <TIM_OC1Init+0x56>
 8001e9e:	f502 6200 	add.w	r2, r2, #2048	; 0x800
 8001ea2:	4290      	cmp	r0, r2
 8001ea4:	d00b      	beq.n	8001ebe <TIM_OC1Init+0x56>
 8001ea6:	f502 6240 	add.w	r2, r2, #3072	; 0xc00
 8001eaa:	4290      	cmp	r0, r2
 8001eac:	d007      	beq.n	8001ebe <TIM_OC1Init+0x56>
 8001eae:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8001eb2:	4290      	cmp	r0, r2
 8001eb4:	d003      	beq.n	8001ebe <TIM_OC1Init+0x56>
 8001eb6:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8001eba:	4290      	cmp	r0, r2
 8001ebc:	d111      	bne.n	8001ee2 <TIM_OC1Init+0x7a>
 8001ebe:	bf00      	nop
 8001ec0:	bf00      	nop
 8001ec2:	bf00      	nop
 8001ec4:	bf00      	nop
 8001ec6:	89ca      	ldrh	r2, [r1, #14]
 8001ec8:	88ce      	ldrh	r6, [r1, #6]
 8001eca:	f023 0308 	bic.w	r3, r3, #8
 8001ece:	4313      	orrs	r3, r2
 8001ed0:	8a0a      	ldrh	r2, [r1, #16]
 8001ed2:	f424 7440 	bic.w	r4, r4, #768	; 0x300
 8001ed6:	4314      	orrs	r4, r2
 8001ed8:	8a4a      	ldrh	r2, [r1, #18]
 8001eda:	f023 0304 	bic.w	r3, r3, #4
 8001ede:	4333      	orrs	r3, r6
 8001ee0:	4314      	orrs	r4, r2
 8001ee2:	688a      	ldr	r2, [r1, #8]
 8001ee4:	6044      	str	r4, [r0, #4]
 8001ee6:	6185      	str	r5, [r0, #24]
 8001ee8:	6342      	str	r2, [r0, #52]	; 0x34
 8001eea:	6203      	str	r3, [r0, #32]
 8001eec:	bd70      	pop	{r4, r5, r6, pc}
 8001eee:	bf00      	nop
 8001ef0:	40012c00 	.word	0x40012c00

08001ef4 <TIM_OC2Init>:
 8001ef4:	b570      	push	{r4, r5, r6, lr}
 8001ef6:	bf00      	nop
 8001ef8:	bf00      	nop
 8001efa:	bf00      	nop
 8001efc:	bf00      	nop
 8001efe:	6a03      	ldr	r3, [r0, #32]
 8001f00:	680d      	ldr	r5, [r1, #0]
 8001f02:	898e      	ldrh	r6, [r1, #12]
 8001f04:	f023 0310 	bic.w	r3, r3, #16
 8001f08:	6203      	str	r3, [r0, #32]
 8001f0a:	6a03      	ldr	r3, [r0, #32]
 8001f0c:	6844      	ldr	r4, [r0, #4]
 8001f0e:	6982      	ldr	r2, [r0, #24]
 8001f10:	f022 7280 	bic.w	r2, r2, #16777216	; 0x1000000
 8001f14:	f422 42e6 	bic.w	r2, r2, #29440	; 0x7300
 8001f18:	ea42 2505 	orr.w	r5, r2, r5, lsl #8
 8001f1c:	f023 0220 	bic.w	r2, r3, #32
 8001f20:	888b      	ldrh	r3, [r1, #4]
 8001f22:	4333      	orrs	r3, r6
 8001f24:	ea42 1303 	orr.w	r3, r2, r3, lsl #4
 8001f28:	4a10      	ldr	r2, [pc, #64]	; (8001f6c <TIM_OC2Init+0x78>)
 8001f2a:	4290      	cmp	r0, r2
 8001f2c:	d003      	beq.n	8001f36 <TIM_OC2Init+0x42>
 8001f2e:	f502 6200 	add.w	r2, r2, #2048	; 0x800
 8001f32:	4290      	cmp	r0, r2
 8001f34:	d114      	bne.n	8001f60 <TIM_OC2Init+0x6c>
 8001f36:	bf00      	nop
 8001f38:	bf00      	nop
 8001f3a:	bf00      	nop
 8001f3c:	bf00      	nop
 8001f3e:	89ca      	ldrh	r2, [r1, #14]
 8001f40:	8a0e      	ldrh	r6, [r1, #16]
 8001f42:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8001f46:	ea43 1302 	orr.w	r3, r3, r2, lsl #4
 8001f4a:	88ca      	ldrh	r2, [r1, #6]
 8001f4c:	f023 0340 	bic.w	r3, r3, #64	; 0x40
 8001f50:	ea43 1302 	orr.w	r3, r3, r2, lsl #4
 8001f54:	8a4a      	ldrh	r2, [r1, #18]
 8001f56:	f424 6440 	bic.w	r4, r4, #3072	; 0xc00
 8001f5a:	4332      	orrs	r2, r6
 8001f5c:	ea44 0482 	orr.w	r4, r4, r2, lsl #2
 8001f60:	688a      	ldr	r2, [r1, #8]
 8001f62:	6044      	str	r4, [r0, #4]
 8001f64:	6185      	str	r5, [r0, #24]
 8001f66:	6382      	str	r2, [r0, #56]	; 0x38
 8001f68:	6203      	str	r3, [r0, #32]
 8001f6a:	bd70      	pop	{r4, r5, r6, pc}
 8001f6c:	40012c00 	.word	0x40012c00

08001f70 <TIM_CtrlPWMOutputs>:
 8001f70:	bf00      	nop
 8001f72:	bf00      	nop
 8001f74:	6c43      	ldr	r3, [r0, #68]	; 0x44
 8001f76:	b111      	cbz	r1, 8001f7e <TIM_CtrlPWMOutputs+0xe>
 8001f78:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
 8001f7c:	e001      	b.n	8001f82 <TIM_CtrlPWMOutputs+0x12>
 8001f7e:	f3c3 030e 	ubfx	r3, r3, #0, #15
 8001f82:	6443      	str	r3, [r0, #68]	; 0x44
 8001f84:	4770      	bx	lr

08001f86 <TIM_ClearITPendingBit>:
 8001f86:	bf00      	nop
 8001f88:	43c9      	mvns	r1, r1
 8001f8a:	b289      	uxth	r1, r1
 8001f8c:	6101      	str	r1, [r0, #16]
 8001f8e:	4770      	bx	lr

08001f90 <timer_init>:
 8001f90:	b530      	push	{r4, r5, lr}
 8001f92:	2300      	movs	r3, #0
 8001f94:	b085      	sub	sp, #20
 8001f96:	491f      	ldr	r1, [pc, #124]	; (8002014 <timer_init+0x84>)
 8001f98:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8001f9c:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 8001fa0:	491d      	ldr	r1, [pc, #116]	; (8002018 <timer_init+0x88>)
 8001fa2:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 8001fa6:	4a1d      	ldr	r2, [pc, #116]	; (800201c <timer_init+0x8c>)
 8001fa8:	2400      	movs	r4, #0
 8001faa:	f822 4013 	strh.w	r4, [r2, r3, lsl #1]
 8001fae:	3301      	adds	r3, #1
 8001fb0:	2b04      	cmp	r3, #4
 8001fb2:	4625      	mov	r5, r4
 8001fb4:	d1ef      	bne.n	8001f96 <timer_init+0x6>
 8001fb6:	4b1a      	ldr	r3, [pc, #104]	; (8002020 <timer_init+0x90>)
 8001fb8:	2002      	movs	r0, #2
 8001fba:	2101      	movs	r1, #1
 8001fbc:	601c      	str	r4, [r3, #0]
 8001fbe:	f7ff fee7 	bl	8001d90 <RCC_APB1PeriphClockCmd>
 8001fc2:	f8ad 4006 	strh.w	r4, [sp, #6]
 8001fc6:	f8ad 400c 	strh.w	r4, [sp, #12]
 8001fca:	f8ad 400e 	strh.w	r4, [sp, #14]
 8001fce:	4c15      	ldr	r4, [pc, #84]	; (8002024 <timer_init+0x94>)
 8001fd0:	f44f 738c 	mov.w	r3, #280	; 0x118
 8001fd4:	f8ad 3004 	strh.w	r3, [sp, #4]
 8001fd8:	4620      	mov	r0, r4
 8001fda:	2331      	movs	r3, #49	; 0x31
 8001fdc:	a901      	add	r1, sp, #4
 8001fde:	9302      	str	r3, [sp, #8]
 8001fe0:	f7ff fee4 	bl	8001dac <TIM_TimeBaseInit>
 8001fe4:	4620      	mov	r0, r4
 8001fe6:	2101      	movs	r1, #1
 8001fe8:	f7ff ff30 	bl	8001e4c <TIM_Cmd>
 8001fec:	68e3      	ldr	r3, [r4, #12]
 8001fee:	f043 0301 	orr.w	r3, r3, #1
 8001ff2:	60e3      	str	r3, [r4, #12]
 8001ff4:	231d      	movs	r3, #29
 8001ff6:	f88d 3000 	strb.w	r3, [sp]
 8001ffa:	4668      	mov	r0, sp
 8001ffc:	2301      	movs	r3, #1
 8001ffe:	f88d 5001 	strb.w	r5, [sp, #1]
 8002002:	f88d 3002 	strb.w	r3, [sp, #2]
 8002006:	f88d 3003 	strb.w	r3, [sp, #3]
 800200a:	f000 fc6f 	bl	80028ec <NVIC_Init>
 800200e:	b005      	add	sp, #20
 8002010:	bd30      	pop	{r4, r5, pc}
 8002012:	bf00      	nop
 8002014:	20001024 	.word	0x20001024
 8002018:	20001018 	.word	0x20001018
 800201c:	20001010 	.word	0x20001010
 8002020:	20001020 	.word	0x20001020
 8002024:	40000400 	.word	0x40000400

08002028 <TIM3_IRQHandler>:
 8002028:	2300      	movs	r3, #0
 800202a:	4910      	ldr	r1, [pc, #64]	; (800206c <TIM3_IRQHandler+0x44>)
 800202c:	f831 2013 	ldrh.w	r2, [r1, r3, lsl #1]
 8002030:	b292      	uxth	r2, r2
 8002032:	b132      	cbz	r2, 8002042 <TIM3_IRQHandler+0x1a>
 8002034:	f831 2013 	ldrh.w	r2, [r1, r3, lsl #1]
 8002038:	3a01      	subs	r2, #1
 800203a:	b292      	uxth	r2, r2
 800203c:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 8002040:	e009      	b.n	8002056 <TIM3_IRQHandler+0x2e>
 8002042:	4a0b      	ldr	r2, [pc, #44]	; (8002070 <TIM3_IRQHandler+0x48>)
 8002044:	f832 2013 	ldrh.w	r2, [r2, r3, lsl #1]
 8002048:	b292      	uxth	r2, r2
 800204a:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 800204e:	4a09      	ldr	r2, [pc, #36]	; (8002074 <TIM3_IRQHandler+0x4c>)
 8002050:	2101      	movs	r1, #1
 8002052:	f822 1013 	strh.w	r1, [r2, r3, lsl #1]
 8002056:	3301      	adds	r3, #1
 8002058:	2b04      	cmp	r3, #4
 800205a:	d1e6      	bne.n	800202a <TIM3_IRQHandler+0x2>
 800205c:	4a06      	ldr	r2, [pc, #24]	; (8002078 <TIM3_IRQHandler+0x50>)
 800205e:	4807      	ldr	r0, [pc, #28]	; (800207c <TIM3_IRQHandler+0x54>)
 8002060:	6813      	ldr	r3, [r2, #0]
 8002062:	2101      	movs	r1, #1
 8002064:	3301      	adds	r3, #1
 8002066:	6013      	str	r3, [r2, #0]
 8002068:	f7ff bf8d 	b.w	8001f86 <TIM_ClearITPendingBit>
 800206c:	20001024 	.word	0x20001024
 8002070:	20001018 	.word	0x20001018
 8002074:	20001010 	.word	0x20001010
 8002078:	20001020 	.word	0x20001020
 800207c:	40000400 	.word	0x40000400

08002080 <timer_get_time>:
 8002080:	b082      	sub	sp, #8
 8002082:	b672      	cpsid	i
 8002084:	4b04      	ldr	r3, [pc, #16]	; (8002098 <timer_get_time+0x18>)
 8002086:	681b      	ldr	r3, [r3, #0]
 8002088:	9301      	str	r3, [sp, #4]
 800208a:	b662      	cpsie	i
 800208c:	230a      	movs	r3, #10
 800208e:	9801      	ldr	r0, [sp, #4]
 8002090:	fbb0 f0f3 	udiv	r0, r0, r3
 8002094:	b002      	add	sp, #8
 8002096:	4770      	bx	lr
 8002098:	20001020 	.word	0x20001020

0800209c <timer_delay_ms>:
 800209c:	b513      	push	{r0, r1, r4, lr}
 800209e:	4604      	mov	r4, r0
 80020a0:	f7ff ffee 	bl	8002080 <timer_get_time>
 80020a4:	4420      	add	r0, r4
 80020a6:	9001      	str	r0, [sp, #4]
 80020a8:	9c01      	ldr	r4, [sp, #4]
 80020aa:	f7ff ffe9 	bl	8002080 <timer_get_time>
 80020ae:	4284      	cmp	r4, r0
 80020b0:	d902      	bls.n	80020b8 <timer_delay_ms+0x1c>
 80020b2:	f000 fb19 	bl	80026e8 <core_yield>
 80020b6:	e7f7      	b.n	80020a8 <timer_delay_ms+0xc>
 80020b8:	b002      	add	sp, #8
 80020ba:	bd10      	pop	{r4, pc}

080020bc <event_timer_set_period>:
 80020bc:	b672      	cpsid	i
 80020be:	eb01 0181 	add.w	r1, r1, r1, lsl #2
 80020c2:	4b07      	ldr	r3, [pc, #28]	; (80020e0 <event_timer_set_period+0x24>)
 80020c4:	0049      	lsls	r1, r1, #1
 80020c6:	b289      	uxth	r1, r1
 80020c8:	f823 1010 	strh.w	r1, [r3, r0, lsl #1]
 80020cc:	4b05      	ldr	r3, [pc, #20]	; (80020e4 <event_timer_set_period+0x28>)
 80020ce:	f823 1010 	strh.w	r1, [r3, r0, lsl #1]
 80020d2:	4b05      	ldr	r3, [pc, #20]	; (80020e8 <event_timer_set_period+0x2c>)
 80020d4:	2200      	movs	r2, #0
 80020d6:	f823 2010 	strh.w	r2, [r3, r0, lsl #1]
 80020da:	b662      	cpsie	i
 80020dc:	4770      	bx	lr
 80020de:	bf00      	nop
 80020e0:	20001024 	.word	0x20001024
 80020e4:	20001018 	.word	0x20001018
 80020e8:	20001010 	.word	0x20001010

080020ec <event_timer_wait>:
 80020ec:	b510      	push	{r4, lr}
 80020ee:	4604      	mov	r4, r0
 80020f0:	4a06      	ldr	r2, [pc, #24]	; (800210c <event_timer_wait+0x20>)
 80020f2:	f832 3014 	ldrh.w	r3, [r2, r4, lsl #1]
 80020f6:	b29b      	uxth	r3, r3
 80020f8:	b913      	cbnz	r3, 8002100 <event_timer_wait+0x14>
 80020fa:	f000 faf5 	bl	80026e8 <core_yield>
 80020fe:	e7f7      	b.n	80020f0 <event_timer_wait+0x4>
 8002100:	b672      	cpsid	i
 8002102:	2300      	movs	r3, #0
 8002104:	f822 3014 	strh.w	r3, [r2, r4, lsl #1]
 8002108:	b662      	cpsie	i
 800210a:	bd10      	pop	{r4, pc}
 800210c:	20001010 	.word	0x20001010

08002110 <USART_Init>:
 8002110:	b530      	push	{r4, r5, lr}
 8002112:	4604      	mov	r4, r0
 8002114:	b099      	sub	sp, #100	; 0x64
 8002116:	460d      	mov	r5, r1
 8002118:	bf00      	nop
 800211a:	bf00      	nop
 800211c:	bf00      	nop
 800211e:	bf00      	nop
 8002120:	bf00      	nop
 8002122:	bf00      	nop
 8002124:	bf00      	nop
 8002126:	6803      	ldr	r3, [r0, #0]
 8002128:	f023 0301 	bic.w	r3, r3, #1
 800212c:	6003      	str	r3, [r0, #0]
 800212e:	6843      	ldr	r3, [r0, #4]
 8002130:	f423 5240 	bic.w	r2, r3, #12288	; 0x3000
 8002134:	688b      	ldr	r3, [r1, #8]
 8002136:	68c9      	ldr	r1, [r1, #12]
 8002138:	4313      	orrs	r3, r2
 800213a:	6043      	str	r3, [r0, #4]
 800213c:	686a      	ldr	r2, [r5, #4]
 800213e:	6803      	ldr	r3, [r0, #0]
 8002140:	4311      	orrs	r1, r2
 8002142:	692a      	ldr	r2, [r5, #16]
 8002144:	f423 53b0 	bic.w	r3, r3, #5632	; 0x1600
 8002148:	430a      	orrs	r2, r1
 800214a:	f023 030c 	bic.w	r3, r3, #12
 800214e:	4313      	orrs	r3, r2
 8002150:	6003      	str	r3, [r0, #0]
 8002152:	6883      	ldr	r3, [r0, #8]
 8002154:	f423 7240 	bic.w	r2, r3, #768	; 0x300
 8002158:	696b      	ldr	r3, [r5, #20]
 800215a:	4313      	orrs	r3, r2
 800215c:	6083      	str	r3, [r0, #8]
 800215e:	a801      	add	r0, sp, #4
 8002160:	f7ff fc84 	bl	8001a6c <RCC_GetClocksFreq>
 8002164:	4b17      	ldr	r3, [pc, #92]	; (80021c4 <USART_Init+0xb4>)
 8002166:	429c      	cmp	r4, r3
 8002168:	d101      	bne.n	800216e <USART_Init+0x5e>
 800216a:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 800216c:	e00e      	b.n	800218c <USART_Init+0x7c>
 800216e:	4b16      	ldr	r3, [pc, #88]	; (80021c8 <USART_Init+0xb8>)
 8002170:	429c      	cmp	r4, r3
 8002172:	d101      	bne.n	8002178 <USART_Init+0x68>
 8002174:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8002176:	e009      	b.n	800218c <USART_Init+0x7c>
 8002178:	4b14      	ldr	r3, [pc, #80]	; (80021cc <USART_Init+0xbc>)
 800217a:	429c      	cmp	r4, r3
 800217c:	d101      	bne.n	8002182 <USART_Init+0x72>
 800217e:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8002180:	e004      	b.n	800218c <USART_Init+0x7c>
 8002182:	4b13      	ldr	r3, [pc, #76]	; (80021d0 <USART_Init+0xc0>)
 8002184:	429c      	cmp	r4, r3
 8002186:	bf0c      	ite	eq
 8002188:	9b12      	ldreq	r3, [sp, #72]	; 0x48
 800218a:	9b13      	ldrne	r3, [sp, #76]	; 0x4c
 800218c:	6822      	ldr	r2, [r4, #0]
 800218e:	6829      	ldr	r1, [r5, #0]
 8002190:	f412 4f00 	tst.w	r2, #32768	; 0x8000
 8002194:	bf18      	it	ne
 8002196:	005b      	lslne	r3, r3, #1
 8002198:	fbb3 f2f1 	udiv	r2, r3, r1
 800219c:	fb01 3312 	mls	r3, r1, r2, r3
 80021a0:	ebb3 0f51 	cmp.w	r3, r1, lsr #1
 80021a4:	6823      	ldr	r3, [r4, #0]
 80021a6:	bf28      	it	cs
 80021a8:	3201      	addcs	r2, #1
 80021aa:	041b      	lsls	r3, r3, #16
 80021ac:	bf41      	itttt	mi
 80021ae:	f64f 73f0 	movwmi	r3, #65520	; 0xfff0
 80021b2:	f3c2 0142 	ubfxmi	r1, r2, #1, #3
 80021b6:	4013      	andmi	r3, r2
 80021b8:	ea41 0203 	orrmi.w	r2, r1, r3
 80021bc:	b292      	uxth	r2, r2
 80021be:	81a2      	strh	r2, [r4, #12]
 80021c0:	b019      	add	sp, #100	; 0x64
 80021c2:	bd30      	pop	{r4, r5, pc}
 80021c4:	40013800 	.word	0x40013800
 80021c8:	40004400 	.word	0x40004400
 80021cc:	40004800 	.word	0x40004800
 80021d0:	40004c00 	.word	0x40004c00

080021d4 <USART_Cmd>:
 80021d4:	bf00      	nop
 80021d6:	bf00      	nop
 80021d8:	6803      	ldr	r3, [r0, #0]
 80021da:	b111      	cbz	r1, 80021e2 <USART_Cmd+0xe>
 80021dc:	f043 0301 	orr.w	r3, r3, #1
 80021e0:	e001      	b.n	80021e6 <USART_Cmd+0x12>
 80021e2:	f023 0301 	bic.w	r3, r3, #1
 80021e6:	6003      	str	r3, [r0, #0]
 80021e8:	4770      	bx	lr

080021ea <USART_ReceiveData>:
 80021ea:	bf00      	nop
 80021ec:	8c80      	ldrh	r0, [r0, #36]	; 0x24
 80021ee:	f3c0 0008 	ubfx	r0, r0, #0, #9
 80021f2:	4770      	bx	lr

080021f4 <USART_ITConfig>:
 80021f4:	b510      	push	{r4, lr}
 80021f6:	bf00      	nop
 80021f8:	bf00      	nop
 80021fa:	bf00      	nop
 80021fc:	f3c1 2407 	ubfx	r4, r1, #8, #8
 8002200:	2301      	movs	r3, #1
 8002202:	b2c9      	uxtb	r1, r1
 8002204:	2c02      	cmp	r4, #2
 8002206:	fa03 f301 	lsl.w	r3, r3, r1
 800220a:	d101      	bne.n	8002210 <USART_ITConfig+0x1c>
 800220c:	3004      	adds	r0, #4
 800220e:	e002      	b.n	8002216 <USART_ITConfig+0x22>
 8002210:	2c03      	cmp	r4, #3
 8002212:	bf08      	it	eq
 8002214:	3008      	addeq	r0, #8
 8002216:	b112      	cbz	r2, 800221e <USART_ITConfig+0x2a>
 8002218:	6802      	ldr	r2, [r0, #0]
 800221a:	4313      	orrs	r3, r2
 800221c:	e002      	b.n	8002224 <USART_ITConfig+0x30>
 800221e:	6802      	ldr	r2, [r0, #0]
 8002220:	ea22 0303 	bic.w	r3, r2, r3
 8002224:	6003      	str	r3, [r0, #0]
 8002226:	bd10      	pop	{r4, pc}

08002228 <USART_GetITStatus>:
 8002228:	b510      	push	{r4, lr}
 800222a:	bf00      	nop
 800222c:	bf00      	nop
 800222e:	f3c1 2207 	ubfx	r2, r1, #8, #8
 8002232:	b2cc      	uxtb	r4, r1
 8002234:	2301      	movs	r3, #1
 8002236:	2a01      	cmp	r2, #1
 8002238:	fa03 f304 	lsl.w	r3, r3, r4
 800223c:	d101      	bne.n	8002242 <USART_GetITStatus+0x1a>
 800223e:	6802      	ldr	r2, [r0, #0]
 8002240:	e003      	b.n	800224a <USART_GetITStatus+0x22>
 8002242:	2a02      	cmp	r2, #2
 8002244:	bf0c      	ite	eq
 8002246:	6842      	ldreq	r2, [r0, #4]
 8002248:	6882      	ldrne	r2, [r0, #8]
 800224a:	4013      	ands	r3, r2
 800224c:	69c2      	ldr	r2, [r0, #28]
 800224e:	b13b      	cbz	r3, 8002260 <USART_GetITStatus+0x38>
 8002250:	0c09      	lsrs	r1, r1, #16
 8002252:	2301      	movs	r3, #1
 8002254:	408b      	lsls	r3, r1
 8002256:	4213      	tst	r3, r2
 8002258:	bf14      	ite	ne
 800225a:	2001      	movne	r0, #1
 800225c:	2000      	moveq	r0, #0
 800225e:	bd10      	pop	{r4, pc}
 8002260:	4618      	mov	r0, r3
 8002262:	bd10      	pop	{r4, pc}

08002264 <USART_ClearITPendingBit>:
 8002264:	bf00      	nop
 8002266:	bf00      	nop
 8002268:	2301      	movs	r3, #1
 800226a:	0c09      	lsrs	r1, r1, #16
 800226c:	408b      	lsls	r3, r1
 800226e:	6203      	str	r3, [r0, #32]
 8002270:	4770      	bx	lr
	...

08002274 <uart_write>:
 8002274:	4b04      	ldr	r3, [pc, #16]	; (8002288 <uart_write+0x14>)
 8002276:	69da      	ldr	r2, [r3, #28]
 8002278:	0612      	lsls	r2, r2, #24
 800227a:	d401      	bmi.n	8002280 <uart_write+0xc>
 800227c:	bf00      	nop
 800227e:	e7f9      	b.n	8002274 <uart_write>
 8002280:	b280      	uxth	r0, r0
 8002282:	8518      	strh	r0, [r3, #40]	; 0x28
 8002284:	4770      	bx	lr
 8002286:	bf00      	nop
 8002288:	40013800 	.word	0x40013800

0800228c <uart_init>:
 800228c:	b530      	push	{r4, r5, lr}
 800228e:	4b2c      	ldr	r3, [pc, #176]	; (8002340 <uart_init+0xb4>)
 8002290:	4d2c      	ldr	r5, [pc, #176]	; (8002344 <uart_init+0xb8>)
 8002292:	2400      	movs	r4, #0
 8002294:	601c      	str	r4, [r3, #0]
 8002296:	4b2c      	ldr	r3, [pc, #176]	; (8002348 <uart_init+0xbc>)
 8002298:	b08b      	sub	sp, #44	; 0x2c
 800229a:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 800229e:	2101      	movs	r1, #1
 80022a0:	601c      	str	r4, [r3, #0]
 80022a2:	f7ff fd59 	bl	8001d58 <RCC_AHBPeriphClockCmd>
 80022a6:	f44f 4080 	mov.w	r0, #16384	; 0x4000
 80022aa:	2101      	movs	r1, #1
 80022ac:	f7ff fd62 	bl	8001d74 <RCC_APB2PeriphClockCmd>
 80022b0:	f44f 63c0 	mov.w	r3, #1536	; 0x600
 80022b4:	9302      	str	r3, [sp, #8]
 80022b6:	2302      	movs	r3, #2
 80022b8:	f88d 300c 	strb.w	r3, [sp, #12]
 80022bc:	a902      	add	r1, sp, #8
 80022be:	2303      	movs	r3, #3
 80022c0:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80022c4:	f88d 300d 	strb.w	r3, [sp, #13]
 80022c8:	f88d 400e 	strb.w	r4, [sp, #14]
 80022cc:	f88d 400f 	strb.w	r4, [sp, #15]
 80022d0:	f000 fbea 	bl	8002aa8 <GPIO_Init>
 80022d4:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80022d8:	2109      	movs	r1, #9
 80022da:	2207      	movs	r2, #7
 80022dc:	f000 fc2e 	bl	8002b3c <GPIO_PinAFConfig>
 80022e0:	2207      	movs	r2, #7
 80022e2:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80022e6:	210a      	movs	r1, #10
 80022e8:	f000 fc28 	bl	8002b3c <GPIO_PinAFConfig>
 80022ec:	f44f 33e1 	mov.w	r3, #115200	; 0x1c200
 80022f0:	9304      	str	r3, [sp, #16]
 80022f2:	4628      	mov	r0, r5
 80022f4:	230c      	movs	r3, #12
 80022f6:	a904      	add	r1, sp, #16
 80022f8:	9308      	str	r3, [sp, #32]
 80022fa:	9405      	str	r4, [sp, #20]
 80022fc:	9406      	str	r4, [sp, #24]
 80022fe:	9407      	str	r4, [sp, #28]
 8002300:	9409      	str	r4, [sp, #36]	; 0x24
 8002302:	f7ff ff05 	bl	8002110 <USART_Init>
 8002306:	4628      	mov	r0, r5
 8002308:	2101      	movs	r1, #1
 800230a:	f7ff ff63 	bl	80021d4 <USART_Cmd>
 800230e:	2201      	movs	r2, #1
 8002310:	4628      	mov	r0, r5
 8002312:	490e      	ldr	r1, [pc, #56]	; (800234c <uart_init+0xc0>)
 8002314:	f7ff ff6e 	bl	80021f4 <USART_ITConfig>
 8002318:	2325      	movs	r3, #37	; 0x25
 800231a:	f88d 4005 	strb.w	r4, [sp, #5]
 800231e:	f88d 4006 	strb.w	r4, [sp, #6]
 8002322:	a801      	add	r0, sp, #4
 8002324:	2401      	movs	r4, #1
 8002326:	f88d 3004 	strb.w	r3, [sp, #4]
 800232a:	f88d 4007 	strb.w	r4, [sp, #7]
 800232e:	f000 fadd 	bl	80028ec <NVIC_Init>
 8002332:	4628      	mov	r0, r5
 8002334:	4621      	mov	r1, r4
 8002336:	f7ff ff4d 	bl	80021d4 <USART_Cmd>
 800233a:	b00b      	add	sp, #44	; 0x2c
 800233c:	bd30      	pop	{r4, r5, pc}
 800233e:	bf00      	nop
 8002340:	2000103c 	.word	0x2000103c
 8002344:	40013800 	.word	0x40013800
 8002348:	20001040 	.word	0x20001040
 800234c:	00050105 	.word	0x00050105

08002350 <USART1_IRQHandler>:
 8002350:	b508      	push	{r3, lr}
 8002352:	480d      	ldr	r0, [pc, #52]	; (8002388 <USART1_IRQHandler+0x38>)
 8002354:	490d      	ldr	r1, [pc, #52]	; (800238c <USART1_IRQHandler+0x3c>)
 8002356:	f7ff ff67 	bl	8002228 <USART_GetITStatus>
 800235a:	b178      	cbz	r0, 800237c <USART1_IRQHandler+0x2c>
 800235c:	480a      	ldr	r0, [pc, #40]	; (8002388 <USART1_IRQHandler+0x38>)
 800235e:	f7ff ff44 	bl	80021ea <USART_ReceiveData>
 8002362:	4b0b      	ldr	r3, [pc, #44]	; (8002390 <USART1_IRQHandler+0x40>)
 8002364:	490b      	ldr	r1, [pc, #44]	; (8002394 <USART1_IRQHandler+0x44>)
 8002366:	681a      	ldr	r2, [r3, #0]
 8002368:	b2c0      	uxtb	r0, r0
 800236a:	5488      	strb	r0, [r1, r2]
 800236c:	681a      	ldr	r2, [r3, #0]
 800236e:	3201      	adds	r2, #1
 8002370:	601a      	str	r2, [r3, #0]
 8002372:	681a      	ldr	r2, [r3, #0]
 8002374:	2a0f      	cmp	r2, #15
 8002376:	bf84      	itt	hi
 8002378:	2200      	movhi	r2, #0
 800237a:	601a      	strhi	r2, [r3, #0]
 800237c:	4802      	ldr	r0, [pc, #8]	; (8002388 <USART1_IRQHandler+0x38>)
 800237e:	4903      	ldr	r1, [pc, #12]	; (800238c <USART1_IRQHandler+0x3c>)
 8002380:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8002384:	f7ff bf6e 	b.w	8002264 <USART_ClearITPendingBit>
 8002388:	40013800 	.word	0x40013800
 800238c:	00050105 	.word	0x00050105
 8002390:	2000103c 	.word	0x2000103c
 8002394:	2000102c 	.word	0x2000102c

08002398 <i2c_delay>:
 8002398:	bf00      	nop
 800239a:	bf00      	nop
 800239c:	bf00      	nop
 800239e:	bf00      	nop
 80023a0:	4770      	bx	lr
	...

080023a4 <SetLowSDA>:
 80023a4:	b537      	push	{r0, r1, r2, r4, r5, lr}
 80023a6:	4d0d      	ldr	r5, [pc, #52]	; (80023dc <SetLowSDA+0x38>)
 80023a8:	2301      	movs	r3, #1
 80023aa:	2203      	movs	r2, #3
 80023ac:	2480      	movs	r4, #128	; 0x80
 80023ae:	f88d 3004 	strb.w	r3, [sp, #4]
 80023b2:	f88d 3006 	strb.w	r3, [sp, #6]
 80023b6:	4628      	mov	r0, r5
 80023b8:	2300      	movs	r3, #0
 80023ba:	4669      	mov	r1, sp
 80023bc:	f88d 2005 	strb.w	r2, [sp, #5]
 80023c0:	f88d 3007 	strb.w	r3, [sp, #7]
 80023c4:	9400      	str	r4, [sp, #0]
 80023c6:	f000 fb6f 	bl	8002aa8 <GPIO_Init>
 80023ca:	4628      	mov	r0, r5
 80023cc:	4621      	mov	r1, r4
 80023ce:	f000 fbb1 	bl	8002b34 <GPIO_ResetBits>
 80023d2:	f7ff ffe1 	bl	8002398 <i2c_delay>
 80023d6:	b003      	add	sp, #12
 80023d8:	bd30      	pop	{r4, r5, pc}
 80023da:	bf00      	nop
 80023dc:	48000400 	.word	0x48000400

080023e0 <SetHighSDA>:
 80023e0:	b537      	push	{r0, r1, r2, r4, r5, lr}
 80023e2:	4d0d      	ldr	r5, [pc, #52]	; (8002418 <SetHighSDA+0x38>)
 80023e4:	2203      	movs	r2, #3
 80023e6:	2300      	movs	r3, #0
 80023e8:	2480      	movs	r4, #128	; 0x80
 80023ea:	f88d 2005 	strb.w	r2, [sp, #5]
 80023ee:	4628      	mov	r0, r5
 80023f0:	2201      	movs	r2, #1
 80023f2:	4669      	mov	r1, sp
 80023f4:	f88d 3004 	strb.w	r3, [sp, #4]
 80023f8:	f88d 2006 	strb.w	r2, [sp, #6]
 80023fc:	f88d 3007 	strb.w	r3, [sp, #7]
 8002400:	9400      	str	r4, [sp, #0]
 8002402:	f000 fb51 	bl	8002aa8 <GPIO_Init>
 8002406:	4628      	mov	r0, r5
 8002408:	4621      	mov	r1, r4
 800240a:	f000 fb8f 	bl	8002b2c <GPIO_SetBits>
 800240e:	f7ff ffc3 	bl	8002398 <i2c_delay>
 8002412:	b003      	add	sp, #12
 8002414:	bd30      	pop	{r4, r5, pc}
 8002416:	bf00      	nop
 8002418:	48000400 	.word	0x48000400

0800241c <SetLowSCL>:
 800241c:	b508      	push	{r3, lr}
 800241e:	4804      	ldr	r0, [pc, #16]	; (8002430 <SetLowSCL+0x14>)
 8002420:	2140      	movs	r1, #64	; 0x40
 8002422:	f000 fb87 	bl	8002b34 <GPIO_ResetBits>
 8002426:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800242a:	f7ff bfb5 	b.w	8002398 <i2c_delay>
 800242e:	bf00      	nop
 8002430:	48000400 	.word	0x48000400

08002434 <SetHighSCL>:
 8002434:	b508      	push	{r3, lr}
 8002436:	4804      	ldr	r0, [pc, #16]	; (8002448 <SetHighSCL+0x14>)
 8002438:	2140      	movs	r1, #64	; 0x40
 800243a:	f000 fb77 	bl	8002b2c <GPIO_SetBits>
 800243e:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8002442:	f7ff bfa9 	b.w	8002398 <i2c_delay>
 8002446:	bf00      	nop
 8002448:	48000400 	.word	0x48000400

0800244c <i2c_0_init>:
 800244c:	b507      	push	{r0, r1, r2, lr}
 800244e:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 8002452:	2101      	movs	r1, #1
 8002454:	f7ff fc80 	bl	8001d58 <RCC_AHBPeriphClockCmd>
 8002458:	23c0      	movs	r3, #192	; 0xc0
 800245a:	9300      	str	r3, [sp, #0]
 800245c:	2301      	movs	r3, #1
 800245e:	2203      	movs	r2, #3
 8002460:	480a      	ldr	r0, [pc, #40]	; (800248c <i2c_0_init+0x40>)
 8002462:	f88d 3004 	strb.w	r3, [sp, #4]
 8002466:	4669      	mov	r1, sp
 8002468:	f88d 3006 	strb.w	r3, [sp, #6]
 800246c:	2300      	movs	r3, #0
 800246e:	f88d 2005 	strb.w	r2, [sp, #5]
 8002472:	f88d 3007 	strb.w	r3, [sp, #7]
 8002476:	f000 fb17 	bl	8002aa8 <GPIO_Init>
 800247a:	f7ff ffdb 	bl	8002434 <SetHighSCL>
 800247e:	f7ff ff91 	bl	80023a4 <SetLowSDA>
 8002482:	f7ff ffad 	bl	80023e0 <SetHighSDA>
 8002486:	b003      	add	sp, #12
 8002488:	f85d fb04 	ldr.w	pc, [sp], #4
 800248c:	48000400 	.word	0x48000400

08002490 <i2cStart>:
 8002490:	b508      	push	{r3, lr}
 8002492:	f7ff ffcf 	bl	8002434 <SetHighSCL>
 8002496:	f7ff ffa3 	bl	80023e0 <SetHighSDA>
 800249a:	f7ff ffcb 	bl	8002434 <SetHighSCL>
 800249e:	f7ff ff81 	bl	80023a4 <SetLowSDA>
 80024a2:	f7ff ffbb 	bl	800241c <SetLowSCL>
 80024a6:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80024aa:	f7ff bf99 	b.w	80023e0 <SetHighSDA>

080024ae <i2cStop>:
 80024ae:	b508      	push	{r3, lr}
 80024b0:	f7ff ffb4 	bl	800241c <SetLowSCL>
 80024b4:	f7ff ff76 	bl	80023a4 <SetLowSDA>
 80024b8:	f7ff ffbc 	bl	8002434 <SetHighSCL>
 80024bc:	f7ff ff72 	bl	80023a4 <SetLowSDA>
 80024c0:	f7ff ffb8 	bl	8002434 <SetHighSCL>
 80024c4:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80024c8:	f7ff bf8a 	b.w	80023e0 <SetHighSDA>

080024cc <i2cWrite>:
 80024cc:	b538      	push	{r3, r4, r5, lr}
 80024ce:	4605      	mov	r5, r0
 80024d0:	2408      	movs	r4, #8
 80024d2:	f7ff ffa3 	bl	800241c <SetLowSCL>
 80024d6:	062b      	lsls	r3, r5, #24
 80024d8:	d502      	bpl.n	80024e0 <i2cWrite+0x14>
 80024da:	f7ff ff81 	bl	80023e0 <SetHighSDA>
 80024de:	e001      	b.n	80024e4 <i2cWrite+0x18>
 80024e0:	f7ff ff60 	bl	80023a4 <SetLowSDA>
 80024e4:	3c01      	subs	r4, #1
 80024e6:	f7ff ffa5 	bl	8002434 <SetHighSCL>
 80024ea:	006d      	lsls	r5, r5, #1
 80024ec:	f014 04ff 	ands.w	r4, r4, #255	; 0xff
 80024f0:	b2ed      	uxtb	r5, r5
 80024f2:	d1ee      	bne.n	80024d2 <i2cWrite+0x6>
 80024f4:	f7ff ff92 	bl	800241c <SetLowSCL>
 80024f8:	f7ff ff72 	bl	80023e0 <SetHighSDA>
 80024fc:	f7ff ff9a 	bl	8002434 <SetHighSCL>
 8002500:	4b05      	ldr	r3, [pc, #20]	; (8002518 <i2cWrite+0x4c>)
 8002502:	8a1c      	ldrh	r4, [r3, #16]
 8002504:	b2a4      	uxth	r4, r4
 8002506:	f7ff ff89 	bl	800241c <SetLowSCL>
 800250a:	f7ff ff45 	bl	8002398 <i2c_delay>
 800250e:	f084 0080 	eor.w	r0, r4, #128	; 0x80
 8002512:	f3c0 10c0 	ubfx	r0, r0, #7, #1
 8002516:	bd38      	pop	{r3, r4, r5, pc}
 8002518:	48000400 	.word	0x48000400

0800251c <i2cRead>:
 800251c:	b570      	push	{r4, r5, r6, lr}
 800251e:	4606      	mov	r6, r0
 8002520:	f7ff ff7c 	bl	800241c <SetLowSCL>
 8002524:	f7ff ff5c 	bl	80023e0 <SetHighSDA>
 8002528:	2508      	movs	r5, #8
 800252a:	2400      	movs	r4, #0
 800252c:	f7ff ff82 	bl	8002434 <SetHighSCL>
 8002530:	4b0d      	ldr	r3, [pc, #52]	; (8002568 <i2cRead+0x4c>)
 8002532:	8a1b      	ldrh	r3, [r3, #16]
 8002534:	0064      	lsls	r4, r4, #1
 8002536:	061b      	lsls	r3, r3, #24
 8002538:	b2e4      	uxtb	r4, r4
 800253a:	bf48      	it	mi
 800253c:	3401      	addmi	r4, #1
 800253e:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 8002542:	bf48      	it	mi
 8002544:	b2e4      	uxtbmi	r4, r4
 8002546:	f7ff ff69 	bl	800241c <SetLowSCL>
 800254a:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 800254e:	d1ed      	bne.n	800252c <i2cRead+0x10>
 8002550:	b10e      	cbz	r6, 8002556 <i2cRead+0x3a>
 8002552:	f7ff ff27 	bl	80023a4 <SetLowSDA>
 8002556:	f7ff ff6d 	bl	8002434 <SetHighSCL>
 800255a:	f7ff ff5f 	bl	800241c <SetLowSCL>
 800255e:	f7ff ff1b 	bl	8002398 <i2c_delay>
 8002562:	4620      	mov	r0, r4
 8002564:	bd70      	pop	{r4, r5, r6, pc}
 8002566:	bf00      	nop
 8002568:	48000400 	.word	0x48000400

0800256c <i2c_write_reg>:
 800256c:	b570      	push	{r4, r5, r6, lr}
 800256e:	4606      	mov	r6, r0
 8002570:	460d      	mov	r5, r1
 8002572:	4614      	mov	r4, r2
 8002574:	f7ff ff8c 	bl	8002490 <i2cStart>
 8002578:	4630      	mov	r0, r6
 800257a:	f7ff ffa7 	bl	80024cc <i2cWrite>
 800257e:	4628      	mov	r0, r5
 8002580:	f7ff ffa4 	bl	80024cc <i2cWrite>
 8002584:	4620      	mov	r0, r4
 8002586:	f7ff ffa1 	bl	80024cc <i2cWrite>
 800258a:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 800258e:	f7ff bf8e 	b.w	80024ae <i2cStop>

08002592 <i2c_read_reg>:
 8002592:	b538      	push	{r3, r4, r5, lr}
 8002594:	4604      	mov	r4, r0
 8002596:	460d      	mov	r5, r1
 8002598:	f7ff ff7a 	bl	8002490 <i2cStart>
 800259c:	4620      	mov	r0, r4
 800259e:	f7ff ff95 	bl	80024cc <i2cWrite>
 80025a2:	4628      	mov	r0, r5
 80025a4:	f7ff ff92 	bl	80024cc <i2cWrite>
 80025a8:	f7ff ff72 	bl	8002490 <i2cStart>
 80025ac:	f044 0001 	orr.w	r0, r4, #1
 80025b0:	f7ff ff8c 	bl	80024cc <i2cWrite>
 80025b4:	2000      	movs	r0, #0
 80025b6:	f7ff ffb1 	bl	800251c <i2cRead>
 80025ba:	4604      	mov	r4, r0
 80025bc:	f7ff ff77 	bl	80024ae <i2cStop>
 80025c0:	4620      	mov	r0, r4
 80025c2:	bd38      	pop	{r3, r4, r5, pc}

080025c4 <SystemInit>:
 80025c4:	4a39      	ldr	r2, [pc, #228]	; (80026ac <SystemInit+0xe8>)
 80025c6:	f8d2 3088 	ldr.w	r3, [r2, #136]	; 0x88
 80025ca:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
 80025ce:	f8c2 3088 	str.w	r3, [r2, #136]	; 0x88
 80025d2:	4b37      	ldr	r3, [pc, #220]	; (80026b0 <SystemInit+0xec>)
 80025d4:	681a      	ldr	r2, [r3, #0]
 80025d6:	f042 0201 	orr.w	r2, r2, #1
 80025da:	601a      	str	r2, [r3, #0]
 80025dc:	6859      	ldr	r1, [r3, #4]
 80025de:	4a35      	ldr	r2, [pc, #212]	; (80026b4 <SystemInit+0xf0>)
 80025e0:	400a      	ands	r2, r1
 80025e2:	605a      	str	r2, [r3, #4]
 80025e4:	681a      	ldr	r2, [r3, #0]
 80025e6:	f022 7284 	bic.w	r2, r2, #17301504	; 0x1080000
 80025ea:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
 80025ee:	601a      	str	r2, [r3, #0]
 80025f0:	681a      	ldr	r2, [r3, #0]
 80025f2:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 80025f6:	601a      	str	r2, [r3, #0]
 80025f8:	685a      	ldr	r2, [r3, #4]
 80025fa:	f422 02fe 	bic.w	r2, r2, #8323072	; 0x7f0000
 80025fe:	605a      	str	r2, [r3, #4]
 8002600:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8002602:	f022 020f 	bic.w	r2, r2, #15
 8002606:	62da      	str	r2, [r3, #44]	; 0x2c
 8002608:	6b19      	ldr	r1, [r3, #48]	; 0x30
 800260a:	4a2b      	ldr	r2, [pc, #172]	; (80026b8 <SystemInit+0xf4>)
 800260c:	b082      	sub	sp, #8
 800260e:	400a      	ands	r2, r1
 8002610:	631a      	str	r2, [r3, #48]	; 0x30
 8002612:	2200      	movs	r2, #0
 8002614:	609a      	str	r2, [r3, #8]
 8002616:	9200      	str	r2, [sp, #0]
 8002618:	9201      	str	r2, [sp, #4]
 800261a:	681a      	ldr	r2, [r3, #0]
 800261c:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
 8002620:	601a      	str	r2, [r3, #0]
 8002622:	681a      	ldr	r2, [r3, #0]
 8002624:	f402 3200 	and.w	r2, r2, #131072	; 0x20000
 8002628:	9201      	str	r2, [sp, #4]
 800262a:	9a00      	ldr	r2, [sp, #0]
 800262c:	3201      	adds	r2, #1
 800262e:	9200      	str	r2, [sp, #0]
 8002630:	9a01      	ldr	r2, [sp, #4]
 8002632:	b91a      	cbnz	r2, 800263c <SystemInit+0x78>
 8002634:	9a00      	ldr	r2, [sp, #0]
 8002636:	f5b2 4fa0 	cmp.w	r2, #20480	; 0x5000
 800263a:	d1f2      	bne.n	8002622 <SystemInit+0x5e>
 800263c:	681a      	ldr	r2, [r3, #0]
 800263e:	f412 3200 	ands.w	r2, r2, #131072	; 0x20000
 8002642:	bf18      	it	ne
 8002644:	2201      	movne	r2, #1
 8002646:	9201      	str	r2, [sp, #4]
 8002648:	9a01      	ldr	r2, [sp, #4]
 800264a:	2a01      	cmp	r2, #1
 800264c:	d005      	beq.n	800265a <SystemInit+0x96>
 800264e:	4b17      	ldr	r3, [pc, #92]	; (80026ac <SystemInit+0xe8>)
 8002650:	f04f 6200 	mov.w	r2, #134217728	; 0x8000000
 8002654:	609a      	str	r2, [r3, #8]
 8002656:	b002      	add	sp, #8
 8002658:	4770      	bx	lr
 800265a:	4a18      	ldr	r2, [pc, #96]	; (80026bc <SystemInit+0xf8>)
 800265c:	2112      	movs	r1, #18
 800265e:	6011      	str	r1, [r2, #0]
 8002660:	685a      	ldr	r2, [r3, #4]
 8002662:	605a      	str	r2, [r3, #4]
 8002664:	685a      	ldr	r2, [r3, #4]
 8002666:	605a      	str	r2, [r3, #4]
 8002668:	685a      	ldr	r2, [r3, #4]
 800266a:	f442 6280 	orr.w	r2, r2, #1024	; 0x400
 800266e:	605a      	str	r2, [r3, #4]
 8002670:	685a      	ldr	r2, [r3, #4]
 8002672:	f422 127c 	bic.w	r2, r2, #4128768	; 0x3f0000
 8002676:	605a      	str	r2, [r3, #4]
 8002678:	685a      	ldr	r2, [r3, #4]
 800267a:	f442 12e8 	orr.w	r2, r2, #1900544	; 0x1d0000
 800267e:	605a      	str	r2, [r3, #4]
 8002680:	681a      	ldr	r2, [r3, #0]
 8002682:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
 8002686:	601a      	str	r2, [r3, #0]
 8002688:	6819      	ldr	r1, [r3, #0]
 800268a:	4a09      	ldr	r2, [pc, #36]	; (80026b0 <SystemInit+0xec>)
 800268c:	0189      	lsls	r1, r1, #6
 800268e:	d5fb      	bpl.n	8002688 <SystemInit+0xc4>
 8002690:	6851      	ldr	r1, [r2, #4]
 8002692:	f021 0103 	bic.w	r1, r1, #3
 8002696:	6051      	str	r1, [r2, #4]
 8002698:	6851      	ldr	r1, [r2, #4]
 800269a:	f041 0102 	orr.w	r1, r1, #2
 800269e:	6051      	str	r1, [r2, #4]
 80026a0:	685a      	ldr	r2, [r3, #4]
 80026a2:	f002 020c 	and.w	r2, r2, #12
 80026a6:	2a08      	cmp	r2, #8
 80026a8:	d1fa      	bne.n	80026a0 <SystemInit+0xdc>
 80026aa:	e7d0      	b.n	800264e <SystemInit+0x8a>
 80026ac:	e000ed00 	.word	0xe000ed00
 80026b0:	40021000 	.word	0x40021000
 80026b4:	f87fc00c 	.word	0xf87fc00c
 80026b8:	ff00fccc 	.word	0xff00fccc
 80026bc:	40022000 	.word	0x40022000

080026c0 <sys_tick_init>:
 80026c0:	4b06      	ldr	r3, [pc, #24]	; (80026dc <sys_tick_init+0x1c>)
 80026c2:	f244 6250 	movw	r2, #18000	; 0x4650
 80026c6:	605a      	str	r2, [r3, #4]
 80026c8:	4a05      	ldr	r2, [pc, #20]	; (80026e0 <sys_tick_init+0x20>)
 80026ca:	21f0      	movs	r1, #240	; 0xf0
 80026cc:	f882 1023 	strb.w	r1, [r2, #35]	; 0x23
 80026d0:	2200      	movs	r2, #0
 80026d2:	609a      	str	r2, [r3, #8]
 80026d4:	2207      	movs	r2, #7
 80026d6:	601a      	str	r2, [r3, #0]
 80026d8:	4770      	bx	lr
 80026da:	bf00      	nop
 80026dc:	e000e010 	.word	0xe000e010
 80026e0:	e000ed00 	.word	0xe000ed00

080026e4 <sleep>:
 80026e4:	bf30      	wfi
 80026e6:	4770      	bx	lr

080026e8 <core_yield>:
 80026e8:	bf00      	nop
 80026ea:	4770      	bx	lr

080026ec <sytem_clock_init>:
 80026ec:	f7ff bf6a 	b.w	80025c4 <SystemInit>

080026f0 <pwm_set>:
 80026f0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80026f4:	b086      	sub	sp, #24
 80026f6:	2370      	movs	r3, #112	; 0x70
 80026f8:	9301      	str	r3, [sp, #4]
 80026fa:	2301      	movs	r3, #1
 80026fc:	f8ad 3008 	strh.w	r3, [sp, #8]
 8002700:	2304      	movs	r3, #4
 8002702:	f8ad 300a 	strh.w	r3, [sp, #10]
 8002706:	f8df 8064 	ldr.w	r8, [pc, #100]	; 800276c <pwm_set+0x7c>
 800270a:	4c17      	ldr	r4, [pc, #92]	; (8002768 <pwm_set+0x78>)
 800270c:	2302      	movs	r3, #2
 800270e:	f8ad 3010 	strh.w	r3, [sp, #16]
 8002712:	2300      	movs	r3, #0
 8002714:	f8ad 3012 	strh.w	r3, [sp, #18]
 8002718:	f8ad 3016 	strh.w	r3, [sp, #22]
 800271c:	f242 7710 	movw	r7, #10000	; 0x2710
 8002720:	f8d8 3000 	ldr.w	r3, [r8]
 8002724:	fbb3 f3f7 	udiv	r3, r3, r7
 8002728:	3b02      	subs	r3, #2
 800272a:	f44f 7280 	mov.w	r2, #256	; 0x100
 800272e:	460e      	mov	r6, r1
 8002730:	2564      	movs	r5, #100	; 0x64
 8002732:	a901      	add	r1, sp, #4
 8002734:	4358      	muls	r0, r3
 8002736:	fbb0 f3f5 	udiv	r3, r0, r5
 800273a:	4620      	mov	r0, r4
 800273c:	f8ad 2014 	strh.w	r2, [sp, #20]
 8002740:	9303      	str	r3, [sp, #12]
 8002742:	f7ff fb91 	bl	8001e68 <TIM_OC1Init>
 8002746:	f8d8 1000 	ldr.w	r1, [r8]
 800274a:	fbb1 f1f7 	udiv	r1, r1, r7
 800274e:	3902      	subs	r1, #2
 8002750:	4371      	muls	r1, r6
 8002752:	4620      	mov	r0, r4
 8002754:	fbb1 f1f5 	udiv	r1, r1, r5
 8002758:	9103      	str	r1, [sp, #12]
 800275a:	a901      	add	r1, sp, #4
 800275c:	f7ff fbca 	bl	8001ef4 <TIM_OC2Init>
 8002760:	b006      	add	sp, #24
 8002762:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8002766:	bf00      	nop
 8002768:	40012c00 	.word	0x40012c00
 800276c:	200000d0 	.word	0x200000d0

08002770 <pwm_init>:
 8002770:	b530      	push	{r4, r5, lr}
 8002772:	f44f 6000 	mov.w	r0, #2048	; 0x800
 8002776:	b087      	sub	sp, #28
 8002778:	2101      	movs	r1, #1
 800277a:	f7ff fafb 	bl	8001d74 <RCC_APB2PeriphClockCmd>
 800277e:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 8002782:	2101      	movs	r1, #1
 8002784:	f7ff fae8 	bl	8001d58 <RCC_AHBPeriphClockCmd>
 8002788:	4c1d      	ldr	r4, [pc, #116]	; (8002800 <pwm_init+0x90>)
 800278a:	4d1e      	ldr	r5, [pc, #120]	; (8002804 <pwm_init+0x94>)
 800278c:	f44f 43c0 	mov.w	r3, #24576	; 0x6000
 8002790:	9301      	str	r3, [sp, #4]
 8002792:	2302      	movs	r3, #2
 8002794:	f88d 3008 	strb.w	r3, [sp, #8]
 8002798:	4620      	mov	r0, r4
 800279a:	2303      	movs	r3, #3
 800279c:	a901      	add	r1, sp, #4
 800279e:	f88d 3009 	strb.w	r3, [sp, #9]
 80027a2:	f000 f981 	bl	8002aa8 <GPIO_Init>
 80027a6:	4620      	mov	r0, r4
 80027a8:	210d      	movs	r1, #13
 80027aa:	2206      	movs	r2, #6
 80027ac:	f000 f9c6 	bl	8002b3c <GPIO_PinAFConfig>
 80027b0:	4620      	mov	r0, r4
 80027b2:	210e      	movs	r1, #14
 80027b4:	2206      	movs	r2, #6
 80027b6:	f000 f9c1 	bl	8002b3c <GPIO_PinAFConfig>
 80027ba:	4b13      	ldr	r3, [pc, #76]	; (8002808 <pwm_init+0x98>)
 80027bc:	2400      	movs	r4, #0
 80027be:	f242 7210 	movw	r2, #10000	; 0x2710
 80027c2:	4628      	mov	r0, r5
 80027c4:	a903      	add	r1, sp, #12
 80027c6:	681b      	ldr	r3, [r3, #0]
 80027c8:	fbb3 f3f2 	udiv	r3, r3, r2
 80027cc:	3b01      	subs	r3, #1
 80027ce:	9304      	str	r3, [sp, #16]
 80027d0:	f8ad 400c 	strh.w	r4, [sp, #12]
 80027d4:	f8ad 400e 	strh.w	r4, [sp, #14]
 80027d8:	f8ad 4014 	strh.w	r4, [sp, #20]
 80027dc:	f8ad 4016 	strh.w	r4, [sp, #22]
 80027e0:	f7ff fae4 	bl	8001dac <TIM_TimeBaseInit>
 80027e4:	4620      	mov	r0, r4
 80027e6:	4621      	mov	r1, r4
 80027e8:	f7ff ff82 	bl	80026f0 <pwm_set>
 80027ec:	4628      	mov	r0, r5
 80027ee:	2101      	movs	r1, #1
 80027f0:	f7ff fb2c 	bl	8001e4c <TIM_Cmd>
 80027f4:	4628      	mov	r0, r5
 80027f6:	2101      	movs	r1, #1
 80027f8:	f7ff fbba 	bl	8001f70 <TIM_CtrlPWMOutputs>
 80027fc:	b007      	add	sp, #28
 80027fe:	bd30      	pop	{r4, r5, pc}
 8002800:	48000400 	.word	0x48000400
 8002804:	40012c00 	.word	0x40012c00
 8002808:	200000d0 	.word	0x200000d0

0800280c <drv8834_run>:
 800280c:	1e02      	subs	r2, r0, #0
 800280e:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8002812:	bfd5      	itete	le
 8002814:	4252      	negle	r2, r2
 8002816:	8d03      	ldrhgt	r3, [r0, #40]	; 0x28
 8002818:	6983      	ldrle	r3, [r0, #24]
 800281a:	ea6f 4343 	mvngt.w	r3, r3, lsl #17
 800281e:	bfc5      	ittet	gt
 8002820:	ea6f 4353 	mvngt.w	r3, r3, lsr #17
 8002824:	b29b      	uxthgt	r3, r3
 8002826:	f443 4300 	orrle.w	r3, r3, #32768	; 0x8000
 800282a:	8503      	strhgt	r3, [r0, #40]	; 0x28
 800282c:	bfd8      	it	le
 800282e:	6183      	strle	r3, [r0, #24]
 8002830:	480d      	ldr	r0, [pc, #52]	; (8002868 <drv8834_run+0x5c>)
 8002832:	bfd8      	it	le
 8002834:	b212      	sxthle	r2, r2
 8002836:	2900      	cmp	r1, #0
 8002838:	bfcd      	iteet	gt
 800283a:	8d03      	ldrhgt	r3, [r0, #40]	; 0x28
 800283c:	6983      	ldrle	r3, [r0, #24]
 800283e:	4249      	negle	r1, r1
 8002840:	b29b      	uxthgt	r3, r3
 8002842:	bfd5      	itete	le
 8002844:	b209      	sxthle	r1, r1
 8002846:	f043 0320 	orrgt.w	r3, r3, #32
 800284a:	f043 0320 	orrle.w	r3, r3, #32
 800284e:	8503      	strhgt	r3, [r0, #40]	; 0x28
 8002850:	bfd8      	it	le
 8002852:	6183      	strle	r3, [r0, #24]
 8002854:	2964      	cmp	r1, #100	; 0x64
 8002856:	bfa8      	it	ge
 8002858:	2164      	movge	r1, #100	; 0x64
 800285a:	2a64      	cmp	r2, #100	; 0x64
 800285c:	bfa8      	it	ge
 800285e:	2264      	movge	r2, #100	; 0x64
 8002860:	4608      	mov	r0, r1
 8002862:	4611      	mov	r1, r2
 8002864:	f7ff bf44 	b.w	80026f0 <pwm_set>
 8002868:	48000400 	.word	0x48000400

0800286c <drv8834_init>:
 800286c:	e92d 41f3 	stmdb	sp!, {r0, r1, r4, r5, r6, r7, r8, lr}
 8002870:	4f1d      	ldr	r7, [pc, #116]	; (80028e8 <drv8834_init+0x7c>)
 8002872:	2400      	movs	r4, #0
 8002874:	2601      	movs	r6, #1
 8002876:	2503      	movs	r5, #3
 8002878:	f04f 0810 	mov.w	r8, #16
 800287c:	4638      	mov	r0, r7
 800287e:	4669      	mov	r1, sp
 8002880:	f8cd 8000 	str.w	r8, [sp]
 8002884:	f88d 6004 	strb.w	r6, [sp, #4]
 8002888:	f88d 4006 	strb.w	r4, [sp, #6]
 800288c:	f88d 5005 	strb.w	r5, [sp, #5]
 8002890:	f88d 4007 	strb.w	r4, [sp, #7]
 8002894:	f000 f908 	bl	8002aa8 <GPIO_Init>
 8002898:	f8a7 8028 	strh.w	r8, [r7, #40]	; 0x28
 800289c:	2320      	movs	r3, #32
 800289e:	4638      	mov	r0, r7
 80028a0:	4669      	mov	r1, sp
 80028a2:	9300      	str	r3, [sp, #0]
 80028a4:	f88d 6004 	strb.w	r6, [sp, #4]
 80028a8:	f88d 4006 	strb.w	r4, [sp, #6]
 80028ac:	f88d 5005 	strb.w	r5, [sp, #5]
 80028b0:	f88d 4007 	strb.w	r4, [sp, #7]
 80028b4:	f000 f8f8 	bl	8002aa8 <GPIO_Init>
 80028b8:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 80028bc:	4669      	mov	r1, sp
 80028be:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80028c2:	9300      	str	r3, [sp, #0]
 80028c4:	f88d 6004 	strb.w	r6, [sp, #4]
 80028c8:	f88d 4006 	strb.w	r4, [sp, #6]
 80028cc:	f88d 5005 	strb.w	r5, [sp, #5]
 80028d0:	f88d 4007 	strb.w	r4, [sp, #7]
 80028d4:	f000 f8e8 	bl	8002aa8 <GPIO_Init>
 80028d8:	4620      	mov	r0, r4
 80028da:	4621      	mov	r1, r4
 80028dc:	f7ff ff96 	bl	800280c <drv8834_run>
 80028e0:	b002      	add	sp, #8
 80028e2:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80028e6:	bf00      	nop
 80028e8:	48000400 	.word	0x48000400

080028ec <NVIC_Init>:
 80028ec:	b510      	push	{r4, lr}
 80028ee:	bf00      	nop
 80028f0:	bf00      	nop
 80028f2:	bf00      	nop
 80028f4:	78c2      	ldrb	r2, [r0, #3]
 80028f6:	7803      	ldrb	r3, [r0, #0]
 80028f8:	b312      	cbz	r2, 8002940 <NVIC_Init+0x54>
 80028fa:	4a17      	ldr	r2, [pc, #92]	; (8002958 <NVIC_Init+0x6c>)
 80028fc:	68d1      	ldr	r1, [r2, #12]
 80028fe:	7842      	ldrb	r2, [r0, #1]
 8002900:	43c9      	mvns	r1, r1
 8002902:	f3c1 2102 	ubfx	r1, r1, #8, #3
 8002906:	f1c1 0404 	rsb	r4, r1, #4
 800290a:	b2e4      	uxtb	r4, r4
 800290c:	40a2      	lsls	r2, r4
 800290e:	b2d4      	uxtb	r4, r2
 8002910:	220f      	movs	r2, #15
 8002912:	410a      	asrs	r2, r1
 8002914:	7881      	ldrb	r1, [r0, #2]
 8002916:	400a      	ands	r2, r1
 8002918:	4322      	orrs	r2, r4
 800291a:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
 800291e:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
 8002922:	0112      	lsls	r2, r2, #4
 8002924:	b2d2      	uxtb	r2, r2
 8002926:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
 800292a:	7803      	ldrb	r3, [r0, #0]
 800292c:	2201      	movs	r2, #1
 800292e:	0959      	lsrs	r1, r3, #5
 8002930:	f003 031f 	and.w	r3, r3, #31
 8002934:	fa02 f303 	lsl.w	r3, r2, r3
 8002938:	4a08      	ldr	r2, [pc, #32]	; (800295c <NVIC_Init+0x70>)
 800293a:	f842 3021 	str.w	r3, [r2, r1, lsl #2]
 800293e:	bd10      	pop	{r4, pc}
 8002940:	095a      	lsrs	r2, r3, #5
 8002942:	2101      	movs	r1, #1
 8002944:	f003 031f 	and.w	r3, r3, #31
 8002948:	4099      	lsls	r1, r3
 800294a:	f102 0320 	add.w	r3, r2, #32
 800294e:	4a03      	ldr	r2, [pc, #12]	; (800295c <NVIC_Init+0x70>)
 8002950:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
 8002954:	bd10      	pop	{r4, pc}
 8002956:	bf00      	nop
 8002958:	e000ed00 	.word	0xe000ed00
 800295c:	e000e100 	.word	0xe000e100

08002960 <lib_low_level_init>:
 8002960:	b508      	push	{r3, lr}
 8002962:	f7ff fec3 	bl	80026ec <sytem_clock_init>
 8002966:	f000 f94b 	bl	8002c00 <gpio_init>
 800296a:	f7ff fc8f 	bl	800228c <uart_init>
 800296e:	f7ff fb0f 	bl	8001f90 <timer_init>
 8002972:	f7ff fefd 	bl	8002770 <pwm_init>
 8002976:	f7ff ff79 	bl	800286c <drv8834_init>
 800297a:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800297e:	f7ff bd65 	b.w	800244c <i2c_0_init>
	...

08002984 <EXTI_Init>:
 8002984:	b570      	push	{r4, r5, r6, lr}
 8002986:	bf00      	nop
 8002988:	bf00      	nop
 800298a:	bf00      	nop
 800298c:	bf00      	nop
 800298e:	7982      	ldrb	r2, [r0, #6]
 8002990:	6803      	ldr	r3, [r0, #0]
 8002992:	7904      	ldrb	r4, [r0, #4]
 8002994:	2a00      	cmp	r2, #0
 8002996:	d064      	beq.n	8002a62 <EXTI_Init+0xde>
 8002998:	f023 011f 	bic.w	r1, r3, #31
 800299c:	f101 4180 	add.w	r1, r1, #1073741824	; 0x40000000
 80029a0:	f501 3182 	add.w	r1, r1, #66560	; 0x10400
 80029a4:	f003 021f 	and.w	r2, r3, #31
 80029a8:	680d      	ldr	r5, [r1, #0]
 80029aa:	2301      	movs	r3, #1
 80029ac:	fa03 f202 	lsl.w	r2, r3, r2
 80029b0:	ea25 0202 	bic.w	r2, r5, r2
 80029b4:	600a      	str	r2, [r1, #0]
 80029b6:	6802      	ldr	r2, [r0, #0]
 80029b8:	4d32      	ldr	r5, [pc, #200]	; (8002a84 <EXTI_Init+0x100>)
 80029ba:	f022 061f 	bic.w	r6, r2, #31
 80029be:	f002 021f 	and.w	r2, r2, #31
 80029c2:	5971      	ldr	r1, [r6, r5]
 80029c4:	fa03 f202 	lsl.w	r2, r3, r2
 80029c8:	ea21 0202 	bic.w	r2, r1, r2
 80029cc:	5172      	str	r2, [r6, r5]
 80029ce:	6801      	ldr	r1, [r0, #0]
 80029d0:	f104 4280 	add.w	r2, r4, #1073741824	; 0x40000000
 80029d4:	f502 3282 	add.w	r2, r2, #66560	; 0x10400
 80029d8:	f021 041f 	bic.w	r4, r1, #31
 80029dc:	f001 011f 	and.w	r1, r1, #31
 80029e0:	5915      	ldr	r5, [r2, r4]
 80029e2:	fa03 f101 	lsl.w	r1, r3, r1
 80029e6:	4329      	orrs	r1, r5
 80029e8:	5111      	str	r1, [r2, r4]
 80029ea:	6802      	ldr	r2, [r0, #0]
 80029ec:	4d26      	ldr	r5, [pc, #152]	; (8002a88 <EXTI_Init+0x104>)
 80029ee:	f022 041f 	bic.w	r4, r2, #31
 80029f2:	f002 021f 	and.w	r2, r2, #31
 80029f6:	5961      	ldr	r1, [r4, r5]
 80029f8:	fa03 f202 	lsl.w	r2, r3, r2
 80029fc:	ea21 0202 	bic.w	r2, r1, r2
 8002a00:	5162      	str	r2, [r4, r5]
 8002a02:	6802      	ldr	r2, [r0, #0]
 8002a04:	4c21      	ldr	r4, [pc, #132]	; (8002a8c <EXTI_Init+0x108>)
 8002a06:	f022 061f 	bic.w	r6, r2, #31
 8002a0a:	f002 021f 	and.w	r2, r2, #31
 8002a0e:	5931      	ldr	r1, [r6, r4]
 8002a10:	fa03 f202 	lsl.w	r2, r3, r2
 8002a14:	ea21 0202 	bic.w	r2, r1, r2
 8002a18:	7941      	ldrb	r1, [r0, #5]
 8002a1a:	5132      	str	r2, [r6, r4]
 8002a1c:	2910      	cmp	r1, #16
 8002a1e:	6802      	ldr	r2, [r0, #0]
 8002a20:	d112      	bne.n	8002a48 <EXTI_Init+0xc4>
 8002a22:	f022 011f 	bic.w	r1, r2, #31
 8002a26:	f002 021f 	and.w	r2, r2, #31
 8002a2a:	594e      	ldr	r6, [r1, r5]
 8002a2c:	fa03 f202 	lsl.w	r2, r3, r2
 8002a30:	4332      	orrs	r2, r6
 8002a32:	514a      	str	r2, [r1, r5]
 8002a34:	6802      	ldr	r2, [r0, #0]
 8002a36:	f022 011f 	bic.w	r1, r2, #31
 8002a3a:	f002 021f 	and.w	r2, r2, #31
 8002a3e:	5908      	ldr	r0, [r1, r4]
 8002a40:	4093      	lsls	r3, r2
 8002a42:	4303      	orrs	r3, r0
 8002a44:	510b      	str	r3, [r1, r4]
 8002a46:	bd70      	pop	{r4, r5, r6, pc}
 8002a48:	f101 4180 	add.w	r1, r1, #1073741824	; 0x40000000
 8002a4c:	f022 001f 	bic.w	r0, r2, #31
 8002a50:	f501 3182 	add.w	r1, r1, #66560	; 0x10400
 8002a54:	f002 021f 	and.w	r2, r2, #31
 8002a58:	580c      	ldr	r4, [r1, r0]
 8002a5a:	4093      	lsls	r3, r2
 8002a5c:	4323      	orrs	r3, r4
 8002a5e:	500b      	str	r3, [r1, r0]
 8002a60:	bd70      	pop	{r4, r5, r6, pc}
 8002a62:	f104 4280 	add.w	r2, r4, #1073741824	; 0x40000000
 8002a66:	f502 3282 	add.w	r2, r2, #66560	; 0x10400
 8002a6a:	f023 041f 	bic.w	r4, r3, #31
 8002a6e:	2001      	movs	r0, #1
 8002a70:	5911      	ldr	r1, [r2, r4]
 8002a72:	f003 031f 	and.w	r3, r3, #31
 8002a76:	fa00 f303 	lsl.w	r3, r0, r3
 8002a7a:	ea21 0303 	bic.w	r3, r1, r3
 8002a7e:	5113      	str	r3, [r2, r4]
 8002a80:	bd70      	pop	{r4, r5, r6, pc}
 8002a82:	bf00      	nop
 8002a84:	40010404 	.word	0x40010404
 8002a88:	40010408 	.word	0x40010408
 8002a8c:	4001040c 	.word	0x4001040c

08002a90 <EXTI_ClearITPendingBit>:
 8002a90:	bf00      	nop
 8002a92:	2301      	movs	r3, #1
 8002a94:	f020 011f 	bic.w	r1, r0, #31
 8002a98:	4a02      	ldr	r2, [pc, #8]	; (8002aa4 <EXTI_ClearITPendingBit+0x14>)
 8002a9a:	f000 001f 	and.w	r0, r0, #31
 8002a9e:	4083      	lsls	r3, r0
 8002aa0:	508b      	str	r3, [r1, r2]
 8002aa2:	4770      	bx	lr
 8002aa4:	40010414 	.word	0x40010414

08002aa8 <GPIO_Init>:
 8002aa8:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002aaa:	bf00      	nop
 8002aac:	bf00      	nop
 8002aae:	bf00      	nop
 8002ab0:	bf00      	nop
 8002ab2:	2300      	movs	r3, #0
 8002ab4:	680e      	ldr	r6, [r1, #0]
 8002ab6:	461c      	mov	r4, r3
 8002ab8:	2501      	movs	r5, #1
 8002aba:	40a5      	lsls	r5, r4
 8002abc:	ea05 0e06 	and.w	lr, r5, r6
 8002ac0:	45ae      	cmp	lr, r5
 8002ac2:	d12d      	bne.n	8002b20 <GPIO_Init+0x78>
 8002ac4:	790f      	ldrb	r7, [r1, #4]
 8002ac6:	1e7a      	subs	r2, r7, #1
 8002ac8:	2a01      	cmp	r2, #1
 8002aca:	d817      	bhi.n	8002afc <GPIO_Init+0x54>
 8002acc:	bf00      	nop
 8002ace:	2203      	movs	r2, #3
 8002ad0:	6885      	ldr	r5, [r0, #8]
 8002ad2:	409a      	lsls	r2, r3
 8002ad4:	ea25 0202 	bic.w	r2, r5, r2
 8002ad8:	6082      	str	r2, [r0, #8]
 8002ada:	794d      	ldrb	r5, [r1, #5]
 8002adc:	6882      	ldr	r2, [r0, #8]
 8002ade:	409d      	lsls	r5, r3
 8002ae0:	4315      	orrs	r5, r2
 8002ae2:	6085      	str	r5, [r0, #8]
 8002ae4:	bf00      	nop
 8002ae6:	8882      	ldrh	r2, [r0, #4]
 8002ae8:	b292      	uxth	r2, r2
 8002aea:	ea22 020e 	bic.w	r2, r2, lr
 8002aee:	8082      	strh	r2, [r0, #4]
 8002af0:	798a      	ldrb	r2, [r1, #6]
 8002af2:	8885      	ldrh	r5, [r0, #4]
 8002af4:	40a2      	lsls	r2, r4
 8002af6:	432a      	orrs	r2, r5
 8002af8:	b292      	uxth	r2, r2
 8002afa:	8082      	strh	r2, [r0, #4]
 8002afc:	2203      	movs	r2, #3
 8002afe:	6805      	ldr	r5, [r0, #0]
 8002b00:	409a      	lsls	r2, r3
 8002b02:	43d2      	mvns	r2, r2
 8002b04:	4015      	ands	r5, r2
 8002b06:	6005      	str	r5, [r0, #0]
 8002b08:	6805      	ldr	r5, [r0, #0]
 8002b0a:	409f      	lsls	r7, r3
 8002b0c:	432f      	orrs	r7, r5
 8002b0e:	6007      	str	r7, [r0, #0]
 8002b10:	68c7      	ldr	r7, [r0, #12]
 8002b12:	4017      	ands	r7, r2
 8002b14:	79ca      	ldrb	r2, [r1, #7]
 8002b16:	fa02 f503 	lsl.w	r5, r2, r3
 8002b1a:	ea47 0205 	orr.w	r2, r7, r5
 8002b1e:	60c2      	str	r2, [r0, #12]
 8002b20:	3401      	adds	r4, #1
 8002b22:	2c10      	cmp	r4, #16
 8002b24:	f103 0302 	add.w	r3, r3, #2
 8002b28:	d1c6      	bne.n	8002ab8 <GPIO_Init+0x10>
 8002b2a:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002b2c <GPIO_SetBits>:
 8002b2c:	bf00      	nop
 8002b2e:	bf00      	nop
 8002b30:	6181      	str	r1, [r0, #24]
 8002b32:	4770      	bx	lr

08002b34 <GPIO_ResetBits>:
 8002b34:	bf00      	nop
 8002b36:	bf00      	nop
 8002b38:	8501      	strh	r1, [r0, #40]	; 0x28
 8002b3a:	4770      	bx	lr

08002b3c <GPIO_PinAFConfig>:
 8002b3c:	b510      	push	{r4, lr}
 8002b3e:	bf00      	nop
 8002b40:	bf00      	nop
 8002b42:	bf00      	nop
 8002b44:	f001 0307 	and.w	r3, r1, #7
 8002b48:	08c9      	lsrs	r1, r1, #3
 8002b4a:	eb00 0081 	add.w	r0, r0, r1, lsl #2
 8002b4e:	009b      	lsls	r3, r3, #2
 8002b50:	6a04      	ldr	r4, [r0, #32]
 8002b52:	210f      	movs	r1, #15
 8002b54:	4099      	lsls	r1, r3
 8002b56:	ea24 0101 	bic.w	r1, r4, r1
 8002b5a:	6201      	str	r1, [r0, #32]
 8002b5c:	6a01      	ldr	r1, [r0, #32]
 8002b5e:	409a      	lsls	r2, r3
 8002b60:	430a      	orrs	r2, r1
 8002b62:	6202      	str	r2, [r0, #32]
 8002b64:	bd10      	pop	{r4, pc}
	...

08002b68 <EXTI9_5_IRQHandler>:
 8002b68:	4a03      	ldr	r2, [pc, #12]	; (8002b78 <EXTI9_5_IRQHandler+0x10>)
 8002b6a:	6813      	ldr	r3, [r2, #0]
 8002b6c:	2006      	movs	r0, #6
 8002b6e:	3301      	adds	r3, #1
 8002b70:	6013      	str	r3, [r2, #0]
 8002b72:	f7ff bf8d 	b.w	8002a90 <EXTI_ClearITPendingBit>
 8002b76:	bf00      	nop
 8002b78:	2000104c 	.word	0x2000104c

08002b7c <EXTI15_10_IRQHandler>:
 8002b7c:	4a03      	ldr	r2, [pc, #12]	; (8002b8c <EXTI15_10_IRQHandler+0x10>)
 8002b7e:	6813      	ldr	r3, [r2, #0]
 8002b80:	200c      	movs	r0, #12
 8002b82:	3301      	adds	r3, #1
 8002b84:	6013      	str	r3, [r2, #0]
 8002b86:	f7ff bf83 	b.w	8002a90 <EXTI_ClearITPendingBit>
 8002b8a:	bf00      	nop
 8002b8c:	20001044 	.word	0x20001044

08002b90 <led_on>:
 8002b90:	0403      	lsls	r3, r0, #16
 8002b92:	bf42      	ittt	mi
 8002b94:	4b02      	ldrmi	r3, [pc, #8]	; (8002ba0 <led_on+0x10>)
 8002b96:	f44f 4200 	movmi.w	r2, #32768	; 0x8000
 8002b9a:	619a      	strmi	r2, [r3, #24]
 8002b9c:	4770      	bx	lr
 8002b9e:	bf00      	nop
 8002ba0:	48000400 	.word	0x48000400

08002ba4 <led_off>:
 8002ba4:	0403      	lsls	r3, r0, #16
 8002ba6:	bf42      	ittt	mi
 8002ba8:	4b02      	ldrmi	r3, [pc, #8]	; (8002bb4 <led_off+0x10>)
 8002baa:	f44f 4200 	movmi.w	r2, #32768	; 0x8000
 8002bae:	851a      	strhmi	r2, [r3, #40]	; 0x28
 8002bb0:	4770      	bx	lr
 8002bb2:	bf00      	nop
 8002bb4:	48000400 	.word	0x48000400

08002bb8 <get_key>:
 8002bb8:	4b02      	ldr	r3, [pc, #8]	; (8002bc4 <get_key+0xc>)
 8002bba:	8a18      	ldrh	r0, [r3, #16]
 8002bbc:	43c0      	mvns	r0, r0
 8002bbe:	f400 5080 	and.w	r0, r0, #4096	; 0x1000
 8002bc2:	4770      	bx	lr
 8002bc4:	48000400 	.word	0x48000400

08002bc8 <get_mode_jumper>:
 8002bc8:	4b01      	ldr	r3, [pc, #4]	; (8002bd0 <get_mode_jumper+0x8>)
 8002bca:	6818      	ldr	r0, [r3, #0]
 8002bcc:	4770      	bx	lr
 8002bce:	bf00      	nop
 8002bd0:	20001048 	.word	0x20001048

08002bd4 <left_encoder_read>:
 8002bd4:	4b01      	ldr	r3, [pc, #4]	; (8002bdc <left_encoder_read+0x8>)
 8002bd6:	6818      	ldr	r0, [r3, #0]
 8002bd8:	4770      	bx	lr
 8002bda:	bf00      	nop
 8002bdc:	2000104c 	.word	0x2000104c

08002be0 <right_encoder_read>:
 8002be0:	4b01      	ldr	r3, [pc, #4]	; (8002be8 <right_encoder_read+0x8>)
 8002be2:	6818      	ldr	r0, [r3, #0]
 8002be4:	4770      	bx	lr
 8002be6:	bf00      	nop
 8002be8:	20001044 	.word	0x20001044

08002bec <encoder_reset>:
 8002bec:	4a02      	ldr	r2, [pc, #8]	; (8002bf8 <encoder_reset+0xc>)
 8002bee:	2300      	movs	r3, #0
 8002bf0:	6013      	str	r3, [r2, #0]
 8002bf2:	4a02      	ldr	r2, [pc, #8]	; (8002bfc <encoder_reset+0x10>)
 8002bf4:	6013      	str	r3, [r2, #0]
 8002bf6:	4770      	bx	lr
 8002bf8:	2000104c 	.word	0x2000104c
 8002bfc:	20001044 	.word	0x20001044

08002c00 <gpio_init>:
 8002c00:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8002c04:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 8002c08:	b086      	sub	sp, #24
 8002c0a:	2101      	movs	r1, #1
 8002c0c:	f7ff f8a4 	bl	8001d58 <RCC_AHBPeriphClockCmd>
 8002c10:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 8002c14:	2101      	movs	r1, #1
 8002c16:	f7ff f89f 	bl	8001d58 <RCC_AHBPeriphClockCmd>
 8002c1a:	f44f 2000 	mov.w	r0, #524288	; 0x80000
 8002c1e:	2101      	movs	r1, #1
 8002c20:	f7ff f89a 	bl	8001d58 <RCC_AHBPeriphClockCmd>
 8002c24:	2400      	movs	r4, #0
 8002c26:	2603      	movs	r6, #3
 8002c28:	f44f 4500 	mov.w	r5, #32768	; 0x8000
 8002c2c:	f04f 0801 	mov.w	r8, #1
 8002c30:	a902      	add	r1, sp, #8
 8002c32:	4841      	ldr	r0, [pc, #260]	; (8002d38 <gpio_init+0x138>)
 8002c34:	9502      	str	r5, [sp, #8]
 8002c36:	f88d 400e 	strb.w	r4, [sp, #14]
 8002c3a:	f88d 600d 	strb.w	r6, [sp, #13]
 8002c3e:	f88d 400f 	strb.w	r4, [sp, #15]
 8002c42:	f88d 800c 	strb.w	r8, [sp, #12]
 8002c46:	f7ff ff2f 	bl	8002aa8 <GPIO_Init>
 8002c4a:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8002c4e:	a902      	add	r1, sp, #8
 8002c50:	4839      	ldr	r0, [pc, #228]	; (8002d38 <gpio_init+0x138>)
 8002c52:	9302      	str	r3, [sp, #8]
 8002c54:	f88d 400c 	strb.w	r4, [sp, #12]
 8002c58:	f88d 600d 	strb.w	r6, [sp, #13]
 8002c5c:	f88d 400f 	strb.w	r4, [sp, #15]
 8002c60:	4f36      	ldr	r7, [pc, #216]	; (8002d3c <gpio_init+0x13c>)
 8002c62:	f7ff ff21 	bl	8002aa8 <GPIO_Init>
 8002c66:	f44f 6380 	mov.w	r3, #1024	; 0x400
 8002c6a:	a902      	add	r1, sp, #8
 8002c6c:	9302      	str	r3, [sp, #8]
 8002c6e:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8002c72:	2302      	movs	r3, #2
 8002c74:	603c      	str	r4, [r7, #0]
 8002c76:	f88d 400c 	strb.w	r4, [sp, #12]
 8002c7a:	f88d 600d 	strb.w	r6, [sp, #13]
 8002c7e:	f88d 300f 	strb.w	r3, [sp, #15]
 8002c82:	f7ff ff11 	bl	8002aa8 <GPIO_Init>
 8002c86:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8002c8a:	2610      	movs	r6, #16
 8002c8c:	8a1b      	ldrh	r3, [r3, #16]
 8002c8e:	055b      	lsls	r3, r3, #21
 8002c90:	4b29      	ldr	r3, [pc, #164]	; (8002d38 <gpio_init+0x138>)
 8002c92:	bf48      	it	mi
 8002c94:	f8c7 8000 	strmi.w	r8, [r7]
 8002c98:	619d      	str	r5, [r3, #24]
 8002c9a:	f7ff ffa7 	bl	8002bec <encoder_reset>
 8002c9e:	2500      	movs	r5, #0
 8002ca0:	f44f 5382 	mov.w	r3, #4160	; 0x1040
 8002ca4:	a902      	add	r1, sp, #8
 8002ca6:	4826      	ldr	r0, [pc, #152]	; (8002d40 <gpio_init+0x140>)
 8002ca8:	9302      	str	r3, [sp, #8]
 8002caa:	f88d 500c 	strb.w	r5, [sp, #12]
 8002cae:	f88d 500f 	strb.w	r5, [sp, #15]
 8002cb2:	f7ff fef9 	bl	8002aa8 <GPIO_Init>
 8002cb6:	2001      	movs	r0, #1
 8002cb8:	4601      	mov	r1, r0
 8002cba:	f7ff f85b 	bl	8001d74 <RCC_APB2PeriphClockCmd>
 8002cbe:	2106      	movs	r1, #6
 8002cc0:	2002      	movs	r0, #2
 8002cc2:	f000 f883 	bl	8002dcc <SYSCFG_EXTILineConfig>
 8002cc6:	2401      	movs	r4, #1
 8002cc8:	2306      	movs	r3, #6
 8002cca:	eb0d 0006 	add.w	r0, sp, r6
 8002cce:	9304      	str	r3, [sp, #16]
 8002cd0:	f88d 5014 	strb.w	r5, [sp, #20]
 8002cd4:	f88d 6015 	strb.w	r6, [sp, #21]
 8002cd8:	f88d 4016 	strb.w	r4, [sp, #22]
 8002cdc:	f7ff fe52 	bl	8002984 <EXTI_Init>
 8002ce0:	2317      	movs	r3, #23
 8002ce2:	a801      	add	r0, sp, #4
 8002ce4:	f88d 3004 	strb.w	r3, [sp, #4]
 8002ce8:	f88d 4005 	strb.w	r4, [sp, #5]
 8002cec:	f88d 4006 	strb.w	r4, [sp, #6]
 8002cf0:	f88d 4007 	strb.w	r4, [sp, #7]
 8002cf4:	f7ff fdfa 	bl	80028ec <NVIC_Init>
 8002cf8:	210c      	movs	r1, #12
 8002cfa:	2002      	movs	r0, #2
 8002cfc:	f000 f866 	bl	8002dcc <SYSCFG_EXTILineConfig>
 8002d00:	230c      	movs	r3, #12
 8002d02:	eb0d 0006 	add.w	r0, sp, r6
 8002d06:	9304      	str	r3, [sp, #16]
 8002d08:	f88d 5014 	strb.w	r5, [sp, #20]
 8002d0c:	f88d 6015 	strb.w	r6, [sp, #21]
 8002d10:	f88d 4016 	strb.w	r4, [sp, #22]
 8002d14:	f7ff fe36 	bl	8002984 <EXTI_Init>
 8002d18:	2328      	movs	r3, #40	; 0x28
 8002d1a:	a801      	add	r0, sp, #4
 8002d1c:	f88d 3004 	strb.w	r3, [sp, #4]
 8002d20:	f88d 4005 	strb.w	r4, [sp, #5]
 8002d24:	f88d 4006 	strb.w	r4, [sp, #6]
 8002d28:	f88d 4007 	strb.w	r4, [sp, #7]
 8002d2c:	f7ff fdde 	bl	80028ec <NVIC_Init>
 8002d30:	b006      	add	sp, #24
 8002d32:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8002d36:	bf00      	nop
 8002d38:	48000400 	.word	0x48000400
 8002d3c:	20001048 	.word	0x20001048
 8002d40:	48000800 	.word	0x48000800

08002d44 <Default_Handler>:
 8002d44:	4668      	mov	r0, sp
 8002d46:	f020 0107 	bic.w	r1, r0, #7
 8002d4a:	468d      	mov	sp, r1
 8002d4c:	b501      	push	{r0, lr}
 8002d4e:	bf00      	nop
 8002d50:	e8bd 4001 	ldmia.w	sp!, {r0, lr}
 8002d54:	4685      	mov	sp, r0
 8002d56:	4770      	bx	lr

08002d58 <HardFault_Handler>:
 8002d58:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8002d5c:	f7ff ff18 	bl	8002b90 <led_on>
 8002d60:	4b06      	ldr	r3, [pc, #24]	; (8002d7c <HardFault_Handler+0x24>)
 8002d62:	3b01      	subs	r3, #1
 8002d64:	d001      	beq.n	8002d6a <HardFault_Handler+0x12>
 8002d66:	bf00      	nop
 8002d68:	e7fb      	b.n	8002d62 <HardFault_Handler+0xa>
 8002d6a:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8002d6e:	f7ff ff19 	bl	8002ba4 <led_off>
 8002d72:	4b02      	ldr	r3, [pc, #8]	; (8002d7c <HardFault_Handler+0x24>)
 8002d74:	3b01      	subs	r3, #1
 8002d76:	d0ef      	beq.n	8002d58 <HardFault_Handler>
 8002d78:	bf00      	nop
 8002d7a:	e7fb      	b.n	8002d74 <HardFault_Handler+0x1c>
 8002d7c:	00989681 	.word	0x00989681

08002d80 <_reset_init>:
 8002d80:	490e      	ldr	r1, [pc, #56]	; (8002dbc <_reset_init+0x3c>)
 8002d82:	4b0f      	ldr	r3, [pc, #60]	; (8002dc0 <_reset_init+0x40>)
 8002d84:	1a5b      	subs	r3, r3, r1
 8002d86:	109b      	asrs	r3, r3, #2
 8002d88:	2200      	movs	r2, #0
 8002d8a:	429a      	cmp	r2, r3
 8002d8c:	d006      	beq.n	8002d9c <_reset_init+0x1c>
 8002d8e:	480d      	ldr	r0, [pc, #52]	; (8002dc4 <_reset_init+0x44>)
 8002d90:	f850 0022 	ldr.w	r0, [r0, r2, lsl #2]
 8002d94:	f841 0022 	str.w	r0, [r1, r2, lsl #2]
 8002d98:	3201      	adds	r2, #1
 8002d9a:	e7f6      	b.n	8002d8a <_reset_init+0xa>
 8002d9c:	4a0a      	ldr	r2, [pc, #40]	; (8002dc8 <_reset_init+0x48>)
 8002d9e:	f8d2 3088 	ldr.w	r3, [r2, #136]	; 0x88
 8002da2:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
 8002da6:	f8c2 3088 	str.w	r3, [r2, #136]	; 0x88
 8002daa:	f502 720c 	add.w	r2, r2, #560	; 0x230
 8002dae:	6853      	ldr	r3, [r2, #4]
 8002db0:	f023 4340 	bic.w	r3, r3, #3221225472	; 0xc0000000
 8002db4:	6053      	str	r3, [r2, #4]
 8002db6:	f7fe be45 	b.w	8001a44 <main>
 8002dba:	bf00      	nop
 8002dbc:	20000000 	.word	0x20000000
 8002dc0:	20000504 	.word	0x20000504
 8002dc4:	08004a30 	.word	0x08004a30
 8002dc8:	e000ed00 	.word	0xe000ed00

08002dcc <SYSCFG_EXTILineConfig>:
 8002dcc:	b510      	push	{r4, lr}
 8002dce:	bf00      	nop
 8002dd0:	bf00      	nop
 8002dd2:	f001 0303 	and.w	r3, r1, #3
 8002dd6:	f001 01fc 	and.w	r1, r1, #252	; 0xfc
 8002dda:	f101 4180 	add.w	r1, r1, #1073741824	; 0x40000000
 8002dde:	f501 3180 	add.w	r1, r1, #65536	; 0x10000
 8002de2:	009b      	lsls	r3, r3, #2
 8002de4:	688c      	ldr	r4, [r1, #8]
 8002de6:	220f      	movs	r2, #15
 8002de8:	409a      	lsls	r2, r3
 8002dea:	ea24 0202 	bic.w	r2, r4, r2
 8002dee:	608a      	str	r2, [r1, #8]
 8002df0:	688a      	ldr	r2, [r1, #8]
 8002df2:	4098      	lsls	r0, r3
 8002df4:	4310      	orrs	r0, r2
 8002df6:	6088      	str	r0, [r1, #8]
 8002df8:	bd10      	pop	{r4, pc}
	...

08002dfc <selfrel_offset31>:
 8002dfc:	e5903000 	ldr	r3, [r0]
 8002e00:	e3130101 	tst	r3, #1073741824	; 0x40000000
 8002e04:	13833102 	orrne	r3, r3, #-2147483648	; 0x80000000
 8002e08:	03c33102 	biceq	r3, r3, #-2147483648	; 0x80000000
 8002e0c:	e0800003 	add	r0, r0, r3
 8002e10:	e12fff1e 	bx	lr

08002e14 <search_EIT_table>:
 8002e14:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8002e18:	e3510000 	cmp	r1, #0
 8002e1c:	e24dd00c 	sub	sp, sp, #12
 8002e20:	0a000029 	beq	8002ecc <search_EIT_table+0xb8>
 8002e24:	e2413001 	sub	r3, r1, #1
 8002e28:	e1a07002 	mov	r7, r2
 8002e2c:	e1a05000 	mov	r5, r0
 8002e30:	e1a08003 	mov	r8, r3
 8002e34:	e3a06000 	mov	r6, #0
 8002e38:	e58d3004 	str	r3, [sp, #4]
 8002e3c:	e0864008 	add	r4, r6, r8
 8002e40:	e0844fa4 	add	r4, r4, r4, lsr #31
 8002e44:	e1a040c4 	asr	r4, r4, #1
 8002e48:	e1a0a184 	lsl	sl, r4, #3
 8002e4c:	e085b00a 	add	fp, r5, sl
 8002e50:	e1a0000b 	mov	r0, fp
 8002e54:	ebffffe8 	bl	8002dfc <selfrel_offset31>
 8002e58:	e59d3004 	ldr	r3, [sp, #4]
 8002e5c:	e1a09000 	mov	r9, r0
 8002e60:	e1530004 	cmp	r3, r4
 8002e64:	e28a0008 	add	r0, sl, #8
 8002e68:	e0850000 	add	r0, r5, r0
 8002e6c:	0a00000b 	beq	8002ea0 <search_EIT_table+0x8c>
 8002e70:	ebffffe1 	bl	8002dfc <selfrel_offset31>
 8002e74:	e1590007 	cmp	r9, r7
 8002e78:	e2400001 	sub	r0, r0, #1
 8002e7c:	9a000003 	bls	8002e90 <search_EIT_table+0x7c>
 8002e80:	e1540006 	cmp	r4, r6
 8002e84:	0a00000b 	beq	8002eb8 <search_EIT_table+0xa4>
 8002e88:	e2448001 	sub	r8, r4, #1
 8002e8c:	eaffffea 	b	8002e3c <search_EIT_table+0x28>
 8002e90:	e1500007 	cmp	r0, r7
 8002e94:	2a000003 	bcs	8002ea8 <search_EIT_table+0x94>
 8002e98:	e2846001 	add	r6, r4, #1
 8002e9c:	eaffffe6 	b	8002e3c <search_EIT_table+0x28>
 8002ea0:	e1590007 	cmp	r9, r7
 8002ea4:	8afffff5 	bhi	8002e80 <search_EIT_table+0x6c>
 8002ea8:	e1a0000b 	mov	r0, fp
 8002eac:	e28dd00c 	add	sp, sp, #12
 8002eb0:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8002eb4:	e12fff1e 	bx	lr
 8002eb8:	e3a0b000 	mov	fp, #0
 8002ebc:	e1a0000b 	mov	r0, fp
 8002ec0:	e28dd00c 	add	sp, sp, #12
 8002ec4:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8002ec8:	e12fff1e 	bx	lr
 8002ecc:	e1a0b001 	mov	fp, r1
 8002ed0:	e1a0000b 	mov	r0, fp
 8002ed4:	e28dd00c 	add	sp, sp, #12
 8002ed8:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8002edc:	e12fff1e 	bx	lr

08002ee0 <__gnu_unwind_get_pr_addr>:
 8002ee0:	e3500001 	cmp	r0, #1
 8002ee4:	0a000006 	beq	8002f04 <__gnu_unwind_get_pr_addr+0x24>
 8002ee8:	e3500002 	cmp	r0, #2
 8002eec:	0a000006 	beq	8002f0c <__gnu_unwind_get_pr_addr+0x2c>
 8002ef0:	e59f301c 	ldr	r3, [pc, #28]	; 8002f14 <__gnu_unwind_get_pr_addr+0x34>
 8002ef4:	e3500000 	cmp	r0, #0
 8002ef8:	01a00003 	moveq	r0, r3
 8002efc:	13a00000 	movne	r0, #0
 8002f00:	e12fff1e 	bx	lr
 8002f04:	e59f000c 	ldr	r0, [pc, #12]	; 8002f18 <__gnu_unwind_get_pr_addr+0x38>
 8002f08:	e12fff1e 	bx	lr
 8002f0c:	e59f0008 	ldr	r0, [pc, #8]	; 8002f1c <__gnu_unwind_get_pr_addr+0x3c>
 8002f10:	e12fff1e 	bx	lr
 8002f14:	08003a88 	.word	0x08003a88
 8002f18:	08003a90 	.word	0x08003a90
 8002f1c:	08003a98 	.word	0x08003a98

08002f20 <get_eit_entry>:
 8002f20:	e92d4030 	push	{r4, r5, lr}
 8002f24:	e59f3118 	ldr	r3, [pc, #280]	; 8003044 <get_eit_entry+0x124>
 8002f28:	e3530000 	cmp	r3, #0
 8002f2c:	e24dd00c 	sub	sp, sp, #12
 8002f30:	e1a04000 	mov	r4, r0
 8002f34:	e2415002 	sub	r5, r1, #2
 8002f38:	0a00002d 	beq	8002ff4 <get_eit_entry+0xd4>
 8002f3c:	e1a00005 	mov	r0, r5
 8002f40:	e28d1004 	add	r1, sp, #4
 8002f44:	e320f000 	nop	{0}
 8002f48:	e3500000 	cmp	r0, #0
 8002f4c:	0a000021 	beq	8002fd8 <get_eit_entry+0xb8>
 8002f50:	e59d1004 	ldr	r1, [sp, #4]
 8002f54:	e1a02005 	mov	r2, r5
 8002f58:	ebffffad 	bl	8002e14 <search_EIT_table>
 8002f5c:	e2505000 	subs	r5, r0, #0
 8002f60:	0a00001c 	beq	8002fd8 <get_eit_entry+0xb8>
 8002f64:	ebffffa4 	bl	8002dfc <selfrel_offset31>
 8002f68:	e5953004 	ldr	r3, [r5, #4]
 8002f6c:	e3530001 	cmp	r3, #1
 8002f70:	e5840048 	str	r0, [r4, #72]	; 0x48
 8002f74:	0a000010 	beq	8002fbc <get_eit_entry+0x9c>
 8002f78:	e3530000 	cmp	r3, #0
 8002f7c:	ba000023 	blt	8003010 <get_eit_entry+0xf0>
 8002f80:	e2850004 	add	r0, r5, #4
 8002f84:	ebffff9c 	bl	8002dfc <selfrel_offset31>
 8002f88:	e3a03000 	mov	r3, #0
 8002f8c:	e584004c 	str	r0, [r4, #76]	; 0x4c
 8002f90:	e5843050 	str	r3, [r4, #80]	; 0x50
 8002f94:	e5903000 	ldr	r3, [r0]
 8002f98:	e3530000 	cmp	r3, #0
 8002f9c:	ba000020 	blt	8003024 <get_eit_entry+0x104>
 8002fa0:	ebffff95 	bl	8002dfc <selfrel_offset31>
 8002fa4:	e3a03000 	mov	r3, #0
 8002fa8:	e5840010 	str	r0, [r4, #16]
 8002fac:	e1a00003 	mov	r0, r3
 8002fb0:	e28dd00c 	add	sp, sp, #12
 8002fb4:	e8bd4030 	pop	{r4, r5, lr}
 8002fb8:	e12fff1e 	bx	lr
 8002fbc:	e3a03005 	mov	r3, #5
 8002fc0:	e3a02000 	mov	r2, #0
 8002fc4:	e1a00003 	mov	r0, r3
 8002fc8:	e5842010 	str	r2, [r4, #16]
 8002fcc:	e28dd00c 	add	sp, sp, #12
 8002fd0:	e8bd4030 	pop	{r4, r5, lr}
 8002fd4:	e12fff1e 	bx	lr
 8002fd8:	e3a03009 	mov	r3, #9
 8002fdc:	e3a02000 	mov	r2, #0
 8002fe0:	e1a00003 	mov	r0, r3
 8002fe4:	e5842010 	str	r2, [r4, #16]
 8002fe8:	e28dd00c 	add	sp, sp, #12
 8002fec:	e8bd4030 	pop	{r4, r5, lr}
 8002ff0:	e12fff1e 	bx	lr
 8002ff4:	e59f104c 	ldr	r1, [pc, #76]	; 8003048 <get_eit_entry+0x128>
 8002ff8:	e59f304c 	ldr	r3, [pc, #76]	; 800304c <get_eit_entry+0x12c>
 8002ffc:	e1a00001 	mov	r0, r1
 8003000:	e0611003 	rsb	r1, r1, r3
 8003004:	e1a011c1 	asr	r1, r1, #3
 8003008:	e58d1004 	str	r1, [sp, #4]
 800300c:	eaffffd0 	b	8002f54 <get_eit_entry+0x34>
 8003010:	e3a03001 	mov	r3, #1
 8003014:	e2850004 	add	r0, r5, #4
 8003018:	e584004c 	str	r0, [r4, #76]	; 0x4c
 800301c:	e5843050 	str	r3, [r4, #80]	; 0x50
 8003020:	eaffffdb 	b	8002f94 <get_eit_entry+0x74>
 8003024:	e1a00c23 	lsr	r0, r3, #24
 8003028:	e200000f 	and	r0, r0, #15
 800302c:	ebffffab 	bl	8002ee0 <__gnu_unwind_get_pr_addr>
 8003030:	e3500000 	cmp	r0, #0
 8003034:	e5840010 	str	r0, [r4, #16]
 8003038:	03a03009 	moveq	r3, #9
 800303c:	13a03000 	movne	r3, #0
 8003040:	eaffffd9 	b	8002fac <get_eit_entry+0x8c>
 8003044:	00000000 	.word	0x00000000
 8003048:	080048d8 	.word	0x080048d8
 800304c:	08004a30 	.word	0x08004a30

08003050 <restore_non_core_regs>:
 8003050:	e5903000 	ldr	r3, [r0]
 8003054:	e3130001 	tst	r3, #1
 8003058:	e92d4010 	push	{r4, lr}
 800305c:	e1a04000 	mov	r4, r0
 8003060:	1a000004 	bne	8003078 <restore_non_core_regs+0x28>
 8003064:	e3130002 	tst	r3, #2
 8003068:	e2800048 	add	r0, r0, #72	; 0x48
 800306c:	0a00000a 	beq	800309c <restore_non_core_regs+0x4c>
 8003070:	eb0003a2 	bl	8003f00 <__gnu_Unwind_Restore_VFP_D>
 8003074:	e5943000 	ldr	r3, [r4]
 8003078:	e3130004 	tst	r3, #4
 800307c:	0a00000a 	beq	80030ac <restore_non_core_regs+0x5c>
 8003080:	e3130008 	tst	r3, #8
 8003084:	0a00000d 	beq	80030c0 <restore_non_core_regs+0x70>
 8003088:	e3130010 	tst	r3, #16
 800308c:	02840e1d 	addeq	r0, r4, #464	; 0x1d0
 8003090:	0b0003c4 	bleq	8003fa8 <__gnu_Unwind_Restore_WMMXC>
 8003094:	e8bd4010 	pop	{r4, lr}
 8003098:	e12fff1e 	bx	lr
 800309c:	eb000393 	bl	8003ef0 <__gnu_Unwind_Restore_VFP>
 80030a0:	e5943000 	ldr	r3, [r4]
 80030a4:	e3130004 	tst	r3, #4
 80030a8:	1afffff4 	bne	8003080 <restore_non_core_regs+0x30>
 80030ac:	e28400d0 	add	r0, r4, #208	; 0xd0
 80030b0:	eb000396 	bl	8003f10 <__gnu_Unwind_Restore_VFP_D_16_to_31>
 80030b4:	e5943000 	ldr	r3, [r4]
 80030b8:	e3130008 	tst	r3, #8
 80030bc:	1afffff1 	bne	8003088 <restore_non_core_regs+0x38>
 80030c0:	e2840e15 	add	r0, r4, #336	; 0x150
 80030c4:	eb000395 	bl	8003f20 <__gnu_Unwind_Restore_WMMXD>
 80030c8:	e5943000 	ldr	r3, [r4]
 80030cc:	eaffffed 	b	8003088 <restore_non_core_regs+0x38>

080030d0 <_Unwind_decode_typeinfo_ptr.isra.0>:
 80030d0:	e5903000 	ldr	r3, [r0]
 80030d4:	e3530000 	cmp	r3, #0
 80030d8:	10830000 	addne	r0, r3, r0
 80030dc:	01a00003 	moveq	r0, r3
 80030e0:	e12fff1e 	bx	lr

080030e4 <__gnu_unwind_24bit.isra.1>:
 80030e4:	e3a00009 	mov	r0, #9
 80030e8:	e12fff1e 	bx	lr

080030ec <_Unwind_DebugHook>:
 80030ec:	e12fff1e 	bx	lr

080030f0 <unwind_phase2>:
 80030f0:	e92d4070 	push	{r4, r5, r6, lr}
 80030f4:	e1a04000 	mov	r4, r0
 80030f8:	e1a05001 	mov	r5, r1
 80030fc:	ea000009 	b	8003128 <unwind_phase2+0x38>
 8003100:	e5953040 	ldr	r3, [r5, #64]	; 0x40
 8003104:	e3a00001 	mov	r0, #1
 8003108:	e5843014 	str	r3, [r4, #20]
 800310c:	e1a01004 	mov	r1, r4
 8003110:	e1a02005 	mov	r2, r5
 8003114:	e594c010 	ldr	ip, [r4, #16]
 8003118:	e1a0e00f 	mov	lr, pc
 800311c:	e12fff1c 	bx	ip
 8003120:	e3500008 	cmp	r0, #8
 8003124:	1a000005 	bne	8003140 <unwind_phase2+0x50>
 8003128:	e1a00004 	mov	r0, r4
 800312c:	e5951040 	ldr	r1, [r5, #64]	; 0x40
 8003130:	ebffff7a 	bl	8002f20 <get_eit_entry>
 8003134:	e2506000 	subs	r6, r0, #0
 8003138:	0afffff0 	beq	8003100 <unwind_phase2+0x10>
 800313c:	eb000509 	bl	8004568 <abort>
 8003140:	e3500007 	cmp	r0, #7
 8003144:	1afffffc 	bne	800313c <unwind_phase2+0x4c>
 8003148:	e1a00006 	mov	r0, r6
 800314c:	e5951040 	ldr	r1, [r5, #64]	; 0x40
 8003150:	ebffffe5 	bl	80030ec <_Unwind_DebugHook>
 8003154:	e2850004 	add	r0, r5, #4
 8003158:	eb00035d 	bl	8003ed4 <__restore_core_regs>

0800315c <unwind_phase2_forced>:
 800315c:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
 8003160:	e1a05000 	mov	r5, r0
 8003164:	e1a06002 	mov	r6, r2
 8003168:	e3a04000 	mov	r4, #0
 800316c:	e281e004 	add	lr, r1, #4
 8003170:	e24ddff2 	sub	sp, sp, #968	; 0x3c8
 8003174:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
 8003178:	e28dc00c 	add	ip, sp, #12
 800317c:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
 8003180:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
 8003184:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
 8003188:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
 800318c:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
 8003190:	e89e000f 	ldm	lr, {r0, r1, r2, r3}
 8003194:	e1560004 	cmp	r6, r4
 8003198:	e595800c 	ldr	r8, [r5, #12]
 800319c:	e5959018 	ldr	r9, [r5, #24]
 80031a0:	e88c000f 	stm	ip, {r0, r1, r2, r3}
 80031a4:	e1a00005 	mov	r0, r5
 80031a8:	e59d1048 	ldr	r1, [sp, #72]	; 0x48
 80031ac:	e58d4008 	str	r4, [sp, #8]
 80031b0:	03a06009 	moveq	r6, #9
 80031b4:	13a0600a 	movne	r6, #10
 80031b8:	ebffff58 	bl	8002f20 <get_eit_entry>
 80031bc:	e1a04000 	mov	r4, r0
 80031c0:	e28d7008 	add	r7, sp, #8
 80031c4:	e3540000 	cmp	r4, #0
 80031c8:	0a00000e 	beq	8003208 <unwind_phase2_forced+0xac>
 80031cc:	e59d3040 	ldr	r3, [sp, #64]	; 0x40
 80031d0:	e88d0280 	stm	sp, {r7, r9}
 80031d4:	e58d304c 	str	r3, [sp, #76]	; 0x4c
 80031d8:	e3861010 	orr	r1, r6, #16
 80031dc:	e3a00001 	mov	r0, #1
 80031e0:	e1a02005 	mov	r2, r5
 80031e4:	e1a03005 	mov	r3, r5
 80031e8:	e1a0e00f 	mov	lr, pc
 80031ec:	e12fff18 	bx	r8
 80031f0:	e3500000 	cmp	r0, #0
 80031f4:	1a000029 	bne	80032a0 <unwind_phase2_forced+0x144>
 80031f8:	e1a00004 	mov	r0, r4
 80031fc:	e28ddff2 	add	sp, sp, #968	; 0x3c8
 8003200:	e8bd47f0 	pop	{r4, r5, r6, r7, r8, r9, sl, lr}
 8003204:	e12fff1e 	bx	lr
 8003208:	e59d3048 	ldr	r3, [sp, #72]	; 0x48
 800320c:	e1a01007 	mov	r1, r7
 8003210:	e5853014 	str	r3, [r5, #20]
 8003214:	e3a02e1e 	mov	r2, #480	; 0x1e0
 8003218:	e28d0f7a 	add	r0, sp, #488	; 0x1e8
 800321c:	eb0004d6 	bl	800457c <memcpy>
 8003220:	e1a01005 	mov	r1, r5
 8003224:	e28d2f7a 	add	r2, sp, #488	; 0x1e8
 8003228:	e1a00006 	mov	r0, r6
 800322c:	e595c010 	ldr	ip, [r5, #16]
 8003230:	e1a0e00f 	mov	lr, pc
 8003234:	e12fff1c 	bx	ip
 8003238:	e59d3220 	ldr	r3, [sp, #544]	; 0x220
 800323c:	e1a0a000 	mov	sl, r0
 8003240:	e58d304c 	str	r3, [sp, #76]	; 0x4c
 8003244:	e88d0280 	stm	sp, {r7, r9}
 8003248:	e1a01006 	mov	r1, r6
 800324c:	e3a00001 	mov	r0, #1
 8003250:	e1a02005 	mov	r2, r5
 8003254:	e1a03005 	mov	r3, r5
 8003258:	e1a0e00f 	mov	lr, pc
 800325c:	e12fff18 	bx	r8
 8003260:	e3500000 	cmp	r0, #0
 8003264:	1a00000d 	bne	80032a0 <unwind_phase2_forced+0x144>
 8003268:	e1a00007 	mov	r0, r7
 800326c:	e28d1f7a 	add	r1, sp, #488	; 0x1e8
 8003270:	e3a02e1e 	mov	r2, #480	; 0x1e0
 8003274:	eb0004c0 	bl	800457c <memcpy>
 8003278:	e35a0008 	cmp	sl, #8
 800327c:	1a000005 	bne	8003298 <unwind_phase2_forced+0x13c>
 8003280:	e1a00005 	mov	r0, r5
 8003284:	e59d1048 	ldr	r1, [sp, #72]	; 0x48
 8003288:	ebffff24 	bl	8002f20 <get_eit_entry>
 800328c:	e3a06009 	mov	r6, #9
 8003290:	e1a04000 	mov	r4, r0
 8003294:	eaffffca 	b	80031c4 <unwind_phase2_forced+0x68>
 8003298:	e35a0007 	cmp	sl, #7
 800329c:	0a000003 	beq	80032b0 <unwind_phase2_forced+0x154>
 80032a0:	e3a00009 	mov	r0, #9
 80032a4:	e28ddff2 	add	sp, sp, #968	; 0x3c8
 80032a8:	e8bd47f0 	pop	{r4, r5, r6, r7, r8, r9, sl, lr}
 80032ac:	e12fff1e 	bx	lr
 80032b0:	e1a00004 	mov	r0, r4
 80032b4:	e59d1048 	ldr	r1, [sp, #72]	; 0x48
 80032b8:	ebffff8b 	bl	80030ec <_Unwind_DebugHook>
 80032bc:	e28d000c 	add	r0, sp, #12
 80032c0:	eb000303 	bl	8003ed4 <__restore_core_regs>

080032c4 <_Unwind_GetCFA>:
 80032c4:	e5900044 	ldr	r0, [r0, #68]	; 0x44
 80032c8:	e12fff1e 	bx	lr

080032cc <__gnu_Unwind_RaiseException>:
 80032cc:	e92d40f0 	push	{r4, r5, r6, r7, lr}
 80032d0:	e3e05000 	mvn	r5, #0
 80032d4:	e591303c 	ldr	r3, [r1, #60]	; 0x3c
 80032d8:	e5813040 	str	r3, [r1, #64]	; 0x40
 80032dc:	e281e004 	add	lr, r1, #4
 80032e0:	e24ddf79 	sub	sp, sp, #484	; 0x1e4
 80032e4:	e1a07001 	mov	r7, r1
 80032e8:	e1a04000 	mov	r4, r0
 80032ec:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
 80032f0:	e28dc004 	add	ip, sp, #4
 80032f4:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
 80032f8:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
 80032fc:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
 8003300:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
 8003304:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
 8003308:	e89e000f 	ldm	lr, {r0, r1, r2, r3}
 800330c:	e28d6e1e 	add	r6, sp, #480	; 0x1e0
 8003310:	e88c000f 	stm	ip, {r0, r1, r2, r3}
 8003314:	e52651e0 	str	r5, [r6, #-480]!	; 0xfffffe20
 8003318:	ea000007 	b	800333c <__gnu_Unwind_RaiseException+0x70>
 800331c:	e1a01004 	mov	r1, r4
 8003320:	e1a02006 	mov	r2, r6
 8003324:	e594c010 	ldr	ip, [r4, #16]
 8003328:	e1a0e00f 	mov	lr, pc
 800332c:	e12fff1c 	bx	ip
 8003330:	e3500008 	cmp	r0, #8
 8003334:	e1a05000 	mov	r5, r0
 8003338:	1a000008 	bne	8003360 <__gnu_Unwind_RaiseException+0x94>
 800333c:	e1a00004 	mov	r0, r4
 8003340:	e59d1040 	ldr	r1, [sp, #64]	; 0x40
 8003344:	ebfffef5 	bl	8002f20 <get_eit_entry>
 8003348:	e3500000 	cmp	r0, #0
 800334c:	0afffff2 	beq	800331c <__gnu_Unwind_RaiseException+0x50>
 8003350:	e3a00009 	mov	r0, #9
 8003354:	e28ddf79 	add	sp, sp, #484	; 0x1e4
 8003358:	e8bd40f0 	pop	{r4, r5, r6, r7, lr}
 800335c:	e12fff1e 	bx	lr
 8003360:	e1a00006 	mov	r0, r6
 8003364:	ebffff39 	bl	8003050 <restore_non_core_regs>
 8003368:	e3550006 	cmp	r5, #6
 800336c:	1afffff7 	bne	8003350 <__gnu_Unwind_RaiseException+0x84>
 8003370:	e1a00004 	mov	r0, r4
 8003374:	e1a01007 	mov	r1, r7
 8003378:	ebffff5c 	bl	80030f0 <unwind_phase2>

0800337c <__gnu_Unwind_ForcedUnwind>:
 800337c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 8003380:	e593e03c 	ldr	lr, [r3, #60]	; 0x3c
 8003384:	e580100c 	str	r1, [r0, #12]
 8003388:	e5802018 	str	r2, [r0, #24]
 800338c:	e1a01003 	mov	r1, r3
 8003390:	e583e040 	str	lr, [r3, #64]	; 0x40
 8003394:	e3a02000 	mov	r2, #0
 8003398:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 800339c:	eaffff6e 	b	800315c <unwind_phase2_forced>

080033a0 <__gnu_Unwind_Resume>:
 80033a0:	e92d4070 	push	{r4, r5, r6, lr}
 80033a4:	e590600c 	ldr	r6, [r0, #12]
 80033a8:	e5903014 	ldr	r3, [r0, #20]
 80033ac:	e3560000 	cmp	r6, #0
 80033b0:	e1a04000 	mov	r4, r0
 80033b4:	e1a05001 	mov	r5, r1
 80033b8:	e5813040 	str	r3, [r1, #64]	; 0x40
 80033bc:	0a000002 	beq	80033cc <__gnu_Unwind_Resume+0x2c>
 80033c0:	e3a02001 	mov	r2, #1
 80033c4:	ebffff64 	bl	800315c <unwind_phase2_forced>
 80033c8:	eb000466 	bl	8004568 <abort>
 80033cc:	e3a00002 	mov	r0, #2
 80033d0:	e1a01004 	mov	r1, r4
 80033d4:	e1a02005 	mov	r2, r5
 80033d8:	e594c010 	ldr	ip, [r4, #16]
 80033dc:	e1a0e00f 	mov	lr, pc
 80033e0:	e12fff1c 	bx	ip
 80033e4:	e3500007 	cmp	r0, #7
 80033e8:	0a000004 	beq	8003400 <__gnu_Unwind_Resume+0x60>
 80033ec:	e3500008 	cmp	r0, #8
 80033f0:	01a00004 	moveq	r0, r4
 80033f4:	01a01005 	moveq	r1, r5
 80033f8:	0bffff3c 	bleq	80030f0 <unwind_phase2>
 80033fc:	eb000459 	bl	8004568 <abort>
 8003400:	e1a00006 	mov	r0, r6
 8003404:	e5951040 	ldr	r1, [r5, #64]	; 0x40
 8003408:	ebffff37 	bl	80030ec <_Unwind_DebugHook>
 800340c:	e2850004 	add	r0, r5, #4
 8003410:	eb0002af 	bl	8003ed4 <__restore_core_regs>

08003414 <__gnu_Unwind_Resume_or_Rethrow>:
 8003414:	e590300c 	ldr	r3, [r0, #12]
 8003418:	e3530000 	cmp	r3, #0
 800341c:	1591c03c 	ldrne	ip, [r1, #60]	; 0x3c
 8003420:	13a02000 	movne	r2, #0
 8003424:	1581c040 	strne	ip, [r1, #64]	; 0x40
 8003428:	1affff4b 	bne	800315c <unwind_phase2_forced>
 800342c:	eaffffa6 	b	80032cc <__gnu_Unwind_RaiseException>

08003430 <_Unwind_Complete>:
 8003430:	e12fff1e 	bx	lr

08003434 <_Unwind_DeleteException>:
 8003434:	e5903008 	ldr	r3, [r0, #8]
 8003438:	e3530000 	cmp	r3, #0
 800343c:	012fff1e 	bxeq	lr
 8003440:	e1a01000 	mov	r1, r0
 8003444:	e3a00001 	mov	r0, #1
 8003448:	e12fff13 	bx	r3

0800344c <_Unwind_VRS_Get>:
 800344c:	e3510004 	cmp	r1, #4
 8003450:	979ff101 	ldrls	pc, [pc, r1, lsl #2]
 8003454:	ea000009 	b	8003480 <_Unwind_VRS_Get+0x34>
 8003458:	0800346c 	.word	0x0800346c
 800345c:	08003488 	.word	0x08003488
 8003460:	08003480 	.word	0x08003480
 8003464:	08003488 	.word	0x08003488
 8003468:	08003488 	.word	0x08003488
 800346c:	e352000f 	cmp	r2, #15
 8003470:	93530000 	cmpls	r3, #0
 8003474:	13a03001 	movne	r3, #1
 8003478:	03a03000 	moveq	r3, #0
 800347c:	0a000003 	beq	8003490 <_Unwind_VRS_Get+0x44>
 8003480:	e3a00002 	mov	r0, #2
 8003484:	e12fff1e 	bx	lr
 8003488:	e3a00001 	mov	r0, #1
 800348c:	e12fff1e 	bx	lr
 8003490:	e0802102 	add	r2, r0, r2, lsl #2
 8003494:	e5922004 	ldr	r2, [r2, #4]
 8003498:	e1a00003 	mov	r0, r3
 800349c:	e59d3000 	ldr	r3, [sp]
 80034a0:	e5832000 	str	r2, [r3]
 80034a4:	e12fff1e 	bx	lr

080034a8 <_Unwind_GetGR>:
 80034a8:	e1a02001 	mov	r2, r1
 80034ac:	e3a01000 	mov	r1, #0
 80034b0:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 80034b4:	e24dd014 	sub	sp, sp, #20
 80034b8:	e28dc00c 	add	ip, sp, #12
 80034bc:	e1a03001 	mov	r3, r1
 80034c0:	e58dc000 	str	ip, [sp]
 80034c4:	ebffffe0 	bl	800344c <_Unwind_VRS_Get>
 80034c8:	e59d000c 	ldr	r0, [sp, #12]
 80034cc:	e28dd014 	add	sp, sp, #20
 80034d0:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 80034d4:	e12fff1e 	bx	lr

080034d8 <_Unwind_VRS_Set>:
 80034d8:	e3510004 	cmp	r1, #4
 80034dc:	979ff101 	ldrls	pc, [pc, r1, lsl #2]
 80034e0:	ea000009 	b	800350c <_Unwind_VRS_Set+0x34>
 80034e4:	080034f8 	.word	0x080034f8
 80034e8:	08003514 	.word	0x08003514
 80034ec:	0800350c 	.word	0x0800350c
 80034f0:	08003514 	.word	0x08003514
 80034f4:	08003514 	.word	0x08003514
 80034f8:	e352000f 	cmp	r2, #15
 80034fc:	93530000 	cmpls	r3, #0
 8003500:	13a03001 	movne	r3, #1
 8003504:	03a03000 	moveq	r3, #0
 8003508:	0a000003 	beq	800351c <_Unwind_VRS_Set+0x44>
 800350c:	e3a00002 	mov	r0, #2
 8003510:	e12fff1e 	bx	lr
 8003514:	e3a00001 	mov	r0, #1
 8003518:	e12fff1e 	bx	lr
 800351c:	e59d1000 	ldr	r1, [sp]
 8003520:	e5911000 	ldr	r1, [r1]
 8003524:	e0802102 	add	r2, r0, r2, lsl #2
 8003528:	e5821004 	str	r1, [r2, #4]
 800352c:	e1a00003 	mov	r0, r3
 8003530:	e12fff1e 	bx	lr

08003534 <_Unwind_SetGR>:
 8003534:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 8003538:	e1a0e001 	mov	lr, r1
 800353c:	e3a01000 	mov	r1, #0
 8003540:	e24dd014 	sub	sp, sp, #20
 8003544:	e28dc010 	add	ip, sp, #16
 8003548:	e52c2004 	str	r2, [ip, #-4]!
 800354c:	e1a03001 	mov	r3, r1
 8003550:	e58dc000 	str	ip, [sp]
 8003554:	e1a0200e 	mov	r2, lr
 8003558:	ebffffde 	bl	80034d8 <_Unwind_VRS_Set>
 800355c:	e28dd014 	add	sp, sp, #20
 8003560:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 8003564:	e12fff1e 	bx	lr

08003568 <__gnu_Unwind_Backtrace>:
 8003568:	e92d4070 	push	{r4, r5, r6, lr}
 800356c:	e3e04000 	mvn	r4, #0
 8003570:	e592303c 	ldr	r3, [r2, #60]	; 0x3c
 8003574:	e5823040 	str	r3, [r2, #64]	; 0x40
 8003578:	e282c004 	add	ip, r2, #4
 800357c:	e24ddf8e 	sub	sp, sp, #568	; 0x238
 8003580:	e1a06000 	mov	r6, r0
 8003584:	e1a05001 	mov	r5, r1
 8003588:	e8bc000f 	ldm	ip!, {r0, r1, r2, r3}
 800358c:	e28de05c 	add	lr, sp, #92	; 0x5c
 8003590:	e8ae000f 	stmia	lr!, {r0, r1, r2, r3}
 8003594:	e8bc000f 	ldm	ip!, {r0, r1, r2, r3}
 8003598:	e8ae000f 	stmia	lr!, {r0, r1, r2, r3}
 800359c:	e8bc000f 	ldm	ip!, {r0, r1, r2, r3}
 80035a0:	e8ae000f 	stmia	lr!, {r0, r1, r2, r3}
 80035a4:	e89c000f 	ldm	ip, {r0, r1, r2, r3}
 80035a8:	e88e000f 	stm	lr, {r0, r1, r2, r3}
 80035ac:	e58d4058 	str	r4, [sp, #88]	; 0x58
 80035b0:	ea000013 	b	8003604 <__gnu_Unwind_Backtrace+0x9c>
 80035b4:	e28d0058 	add	r0, sp, #88	; 0x58
 80035b8:	e3a0100c 	mov	r1, #12
 80035bc:	e1a0200d 	mov	r2, sp
 80035c0:	ebffffdb 	bl	8003534 <_Unwind_SetGR>
 80035c4:	e28d0058 	add	r0, sp, #88	; 0x58
 80035c8:	e1a01005 	mov	r1, r5
 80035cc:	e1a0e00f 	mov	lr, pc
 80035d0:	e12fff16 	bx	r6
 80035d4:	e3500000 	cmp	r0, #0
 80035d8:	1a00000e 	bne	8003618 <__gnu_Unwind_Backtrace+0xb0>
 80035dc:	e3a00008 	mov	r0, #8
 80035e0:	e1a0100d 	mov	r1, sp
 80035e4:	e28d2058 	add	r2, sp, #88	; 0x58
 80035e8:	e59dc010 	ldr	ip, [sp, #16]
 80035ec:	e1a0e00f 	mov	lr, pc
 80035f0:	e12fff1c 	bx	ip
 80035f4:	e2403005 	sub	r3, r0, #5
 80035f8:	e31300fb 	tst	r3, #251	; 0xfb
 80035fc:	e1a04000 	mov	r4, r0
 8003600:	0a000005 	beq	800361c <__gnu_Unwind_Backtrace+0xb4>
 8003604:	e1a0000d 	mov	r0, sp
 8003608:	e59d1098 	ldr	r1, [sp, #152]	; 0x98
 800360c:	ebfffe43 	bl	8002f20 <get_eit_entry>
 8003610:	e3500000 	cmp	r0, #0
 8003614:	0affffe6 	beq	80035b4 <__gnu_Unwind_Backtrace+0x4c>
 8003618:	e3a04009 	mov	r4, #9
 800361c:	e28d0058 	add	r0, sp, #88	; 0x58
 8003620:	ebfffe8a 	bl	8003050 <restore_non_core_regs>
 8003624:	e1a00004 	mov	r0, r4
 8003628:	e28ddf8e 	add	sp, sp, #568	; 0x238
 800362c:	e8bd4070 	pop	{r4, r5, r6, lr}
 8003630:	e12fff1e 	bx	lr

08003634 <__gnu_unwind_pr_common>:
 8003634:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8003638:	e591604c 	ldr	r6, [r1, #76]	; 0x4c
 800363c:	e1a05001 	mov	r5, r1
 8003640:	e5961000 	ldr	r1, [r6]
 8003644:	e24dd024 	sub	sp, sp, #36	; 0x24
 8003648:	e2866004 	add	r6, r6, #4
 800364c:	e2537000 	subs	r7, r3, #0
 8003650:	e58d0004 	str	r0, [sp, #4]
 8003654:	e1a09002 	mov	r9, r2
 8003658:	e58d1014 	str	r1, [sp, #20]
 800365c:	e58d6018 	str	r6, [sp, #24]
 8003660:	e2008003 	and	r8, r0, #3
 8003664:	1a000076 	bne	8003844 <__gnu_unwind_pr_common+0x210>
 8003668:	e3a03003 	mov	r3, #3
 800366c:	e1a01401 	lsl	r1, r1, #8
 8003670:	e58d1014 	str	r1, [sp, #20]
 8003674:	e5cd701d 	strb	r7, [sp, #29]
 8003678:	e5cd301c 	strb	r3, [sp, #28]
 800367c:	e5953050 	ldr	r3, [r5, #80]	; 0x50
 8003680:	e3580002 	cmp	r8, #2
 8003684:	05956038 	ldreq	r6, [r5, #56]	; 0x38
 8003688:	e2133001 	ands	r3, r3, #1
 800368c:	1a000061 	bne	8003818 <__gnu_unwind_pr_common+0x1e4>
 8003690:	e58d3000 	str	r3, [sp]
 8003694:	e2853058 	add	r3, r5, #88	; 0x58
 8003698:	e58d3008 	str	r3, [sp, #8]
 800369c:	e5964000 	ldr	r4, [r6]
 80036a0:	e3540000 	cmp	r4, #0
 80036a4:	0a00005d 	beq	8003820 <__gnu_unwind_pr_common+0x1ec>
 80036a8:	e3570002 	cmp	r7, #2
 80036ac:	0596b004 	ldreq	fp, [r6, #4]
 80036b0:	11d6b0b2 	ldrhne	fp, [r6, #2]
 80036b4:	e5953048 	ldr	r3, [r5, #72]	; 0x48
 80036b8:	e3cba001 	bic	sl, fp, #1
 80036bc:	e1a00009 	mov	r0, r9
 80036c0:	e3a0100f 	mov	r1, #15
 80036c4:	11d640b0 	ldrhne	r4, [r6]
 80036c8:	02866008 	addeq	r6, r6, #8
 80036cc:	12866004 	addne	r6, r6, #4
 80036d0:	e08aa003 	add	sl, sl, r3
 80036d4:	ebffff73 	bl	80034a8 <_Unwind_GetGR>
 80036d8:	e15a0000 	cmp	sl, r0
 80036dc:	e20bb001 	and	fp, fp, #1
 80036e0:	8a00003c 	bhi	80037d8 <__gnu_unwind_pr_common+0x1a4>
 80036e4:	e3c43001 	bic	r3, r4, #1
 80036e8:	e08aa003 	add	sl, sl, r3
 80036ec:	e150000a 	cmp	r0, sl
 80036f0:	2a000038 	bcs	80037d8 <__gnu_unwind_pr_common+0x1a4>
 80036f4:	e2044001 	and	r4, r4, #1
 80036f8:	e184408b 	orr	r4, r4, fp, lsl #1
 80036fc:	e3540001 	cmp	r4, #1
 8003700:	0a00005e 	beq	8003880 <__gnu_unwind_pr_common+0x24c>
 8003704:	3a000059 	bcc	8003870 <__gnu_unwind_pr_common+0x23c>
 8003708:	e3540002 	cmp	r4, #2
 800370c:	1a000048 	bne	8003834 <__gnu_unwind_pr_common+0x200>
 8003710:	e5963000 	ldr	r3, [r6]
 8003714:	e3580000 	cmp	r8, #0
 8003718:	e3c34102 	bic	r4, r3, #-2147483648	; 0x80000000
 800371c:	1a000090 	bne	8003964 <__gnu_unwind_pr_common+0x330>
 8003720:	e59d2004 	ldr	r2, [sp, #4]
 8003724:	e3120008 	tst	r2, #8
 8003728:	03a02001 	moveq	r2, #1
 800372c:	13a02000 	movne	r2, #0
 8003730:	e3540000 	cmp	r4, #0
 8003734:	03822001 	orreq	r2, r2, #1
 8003738:	e3520000 	cmp	r2, #0
 800373c:	0a000030 	beq	8003804 <__gnu_unwind_pr_common+0x1d0>
 8003740:	e3540000 	cmp	r4, #0
 8003744:	0a00001a 	beq	80037b4 <__gnu_unwind_pr_common+0x180>
 8003748:	e1a0a007 	mov	sl, r7
 800374c:	e286b004 	add	fp, r6, #4
 8003750:	e1a07004 	mov	r7, r4
 8003754:	e58d800c 	str	r8, [sp, #12]
 8003758:	e59d4008 	ldr	r4, [sp, #8]
 800375c:	ea000003 	b	8003770 <__gnu_unwind_pr_common+0x13c>
 8003760:	e1530007 	cmp	r3, r7
 8003764:	e1a08003 	mov	r8, r3
 8003768:	e28bb004 	add	fp, fp, #4
 800376c:	0a000010 	beq	80037b4 <__gnu_unwind_pr_common+0x180>
 8003770:	e1a0000b 	mov	r0, fp
 8003774:	e58d4010 	str	r4, [sp, #16]
 8003778:	ebfffe54 	bl	80030d0 <_Unwind_decode_typeinfo_ptr.isra.0>
 800377c:	e28d3010 	add	r3, sp, #16
 8003780:	e1a01000 	mov	r1, r0
 8003784:	e3a02000 	mov	r2, #0
 8003788:	e1a00005 	mov	r0, r5
 800378c:	e320f000 	nop	{0}
 8003790:	e3500000 	cmp	r0, #0
 8003794:	e2883001 	add	r3, r8, #1
 8003798:	0afffff0 	beq	8003760 <__gnu_unwind_pr_common+0x12c>
 800379c:	e1a04007 	mov	r4, r7
 80037a0:	e1a0700a 	mov	r7, sl
 80037a4:	e1a0a008 	mov	sl, r8
 80037a8:	e15a0004 	cmp	sl, r4
 80037ac:	e59d800c 	ldr	r8, [sp, #12]
 80037b0:	1a000071 	bne	800397c <__gnu_unwind_pr_common+0x348>
 80037b4:	e1a00009 	mov	r0, r9
 80037b8:	e3a0100d 	mov	r1, #13
 80037bc:	ebffff39 	bl	80034a8 <_Unwind_GetGR>
 80037c0:	e59d3010 	ldr	r3, [sp, #16]
 80037c4:	e5850020 	str	r0, [r5, #32]
 80037c8:	e5856028 	str	r6, [r5, #40]	; 0x28
 80037cc:	e5853024 	str	r3, [r5, #36]	; 0x24
 80037d0:	e3a00006 	mov	r0, #6
 80037d4:	ea000017 	b	8003838 <__gnu_unwind_pr_common+0x204>
 80037d8:	e2044001 	and	r4, r4, #1
 80037dc:	e184408b 	orr	r4, r4, fp, lsl #1
 80037e0:	e3540001 	cmp	r4, #1
 80037e4:	0a000044 	beq	80038fc <__gnu_unwind_pr_common+0x2c8>
 80037e8:	3a000022 	bcc	8003878 <__gnu_unwind_pr_common+0x244>
 80037ec:	e3540002 	cmp	r4, #2
 80037f0:	1a00000f 	bne	8003834 <__gnu_unwind_pr_common+0x200>
 80037f4:	e5963000 	ldr	r3, [r6]
 80037f8:	e3580000 	cmp	r8, #0
 80037fc:	e3c34102 	bic	r4, r3, #-2147483648	; 0x80000000
 8003800:	1a000057 	bne	8003964 <__gnu_unwind_pr_common+0x330>
 8003804:	e3530000 	cmp	r3, #0
 8003808:	b2866004 	addlt	r6, r6, #4
 800380c:	e2844001 	add	r4, r4, #1
 8003810:	e0866104 	add	r6, r6, r4, lsl #2
 8003814:	eaffffa0 	b	800369c <__gnu_unwind_pr_common+0x68>
 8003818:	e3a03000 	mov	r3, #0
 800381c:	e58d3000 	str	r3, [sp]
 8003820:	e3570002 	cmp	r7, #2
 8003824:	da000038 	ble	800390c <__gnu_unwind_pr_common+0x2d8>
 8003828:	ebfffe2d 	bl	80030e4 <__gnu_unwind_24bit.isra.1>
 800382c:	e3500000 	cmp	r0, #0
 8003830:	0a00003a 	beq	8003920 <__gnu_unwind_pr_common+0x2ec>
 8003834:	e3a00009 	mov	r0, #9
 8003838:	e28dd024 	add	sp, sp, #36	; 0x24
 800383c:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8003840:	e12fff1e 	bx	lr
 8003844:	e3570002 	cmp	r7, #2
 8003848:	caffff8b 	bgt	800367c <__gnu_unwind_pr_common+0x48>
 800384c:	e3a02002 	mov	r2, #2
 8003850:	e1a03821 	lsr	r3, r1, #16
 8003854:	e5cd301d 	strb	r3, [sp, #29]
 8003858:	e1a01801 	lsl	r1, r1, #16
 800385c:	e20330ff 	and	r3, r3, #255	; 0xff
 8003860:	e58d1014 	str	r1, [sp, #20]
 8003864:	e5cd201c 	strb	r2, [sp, #28]
 8003868:	e0866103 	add	r6, r6, r3, lsl #2
 800386c:	eaffff82 	b	800367c <__gnu_unwind_pr_common+0x48>
 8003870:	e3580000 	cmp	r8, #0
 8003874:	1a000070 	bne	8003a3c <__gnu_unwind_pr_common+0x408>
 8003878:	e2866004 	add	r6, r6, #4
 800387c:	eaffff86 	b	800369c <__gnu_unwind_pr_common+0x68>
 8003880:	e3580000 	cmp	r8, #0
 8003884:	1a00003e 	bne	8003984 <__gnu_unwind_pr_common+0x350>
 8003888:	e896000c 	ldm	r6, {r2, r3}
 800388c:	e3730002 	cmn	r3, #2
 8003890:	e1a04fa2 	lsr	r4, r2, #31
 8003894:	0affffe6 	beq	8003834 <__gnu_unwind_pr_common+0x200>
 8003898:	e3730001 	cmn	r3, #1
 800389c:	e59d3008 	ldr	r3, [sp, #8]
 80038a0:	e58d3010 	str	r3, [sp, #16]
 80038a4:	0a00005b 	beq	8003a18 <__gnu_unwind_pr_common+0x3e4>
 80038a8:	e2860004 	add	r0, r6, #4
 80038ac:	ebfffe07 	bl	80030d0 <_Unwind_decode_typeinfo_ptr.isra.0>
 80038b0:	e1a02004 	mov	r2, r4
 80038b4:	e1a01000 	mov	r1, r0
 80038b8:	e28d3010 	add	r3, sp, #16
 80038bc:	e1a00005 	mov	r0, r5
 80038c0:	e320f000 	nop	{0}
 80038c4:	e3500000 	cmp	r0, #0
 80038c8:	0a00000d 	beq	8003904 <__gnu_unwind_pr_common+0x2d0>
 80038cc:	e1a04000 	mov	r4, r0
 80038d0:	e3a0100d 	mov	r1, #13
 80038d4:	e1a00009 	mov	r0, r9
 80038d8:	ebfffef2 	bl	80034a8 <_Unwind_GetGR>
 80038dc:	e3540002 	cmp	r4, #2
 80038e0:	e5850020 	str	r0, [r5, #32]
 80038e4:	1a00004f 	bne	8003a28 <__gnu_unwind_pr_common+0x3f4>
 80038e8:	e1a03005 	mov	r3, r5
 80038ec:	e59d2010 	ldr	r2, [sp, #16]
 80038f0:	e5a3202c 	str	r2, [r3, #44]!	; 0x2c
 80038f4:	e5853024 	str	r3, [r5, #36]	; 0x24
 80038f8:	ea00004c 	b	8003a30 <__gnu_unwind_pr_common+0x3fc>
 80038fc:	e3580000 	cmp	r8, #0
 8003900:	1a00001f 	bne	8003984 <__gnu_unwind_pr_common+0x350>
 8003904:	e2866008 	add	r6, r6, #8
 8003908:	eaffff63 	b	800369c <__gnu_unwind_pr_common+0x68>
 800390c:	e1a00009 	mov	r0, r9
 8003910:	e28d1014 	add	r1, sp, #20
 8003914:	eb0001ff 	bl	8004118 <__gnu_unwind_execute>
 8003918:	e3500000 	cmp	r0, #0
 800391c:	1affffc4 	bne	8003834 <__gnu_unwind_pr_common+0x200>
 8003920:	e59d3000 	ldr	r3, [sp]
 8003924:	e3530000 	cmp	r3, #0
 8003928:	03a00008 	moveq	r0, #8
 800392c:	0affffc1 	beq	8003838 <__gnu_unwind_pr_common+0x204>
 8003930:	e3a0100f 	mov	r1, #15
 8003934:	e1a00009 	mov	r0, r9
 8003938:	ebfffeda 	bl	80034a8 <_Unwind_GetGR>
 800393c:	e3a0100e 	mov	r1, #14
 8003940:	e1a02000 	mov	r2, r0
 8003944:	e1a00009 	mov	r0, r9
 8003948:	ebfffef9 	bl	8003534 <_Unwind_SetGR>
 800394c:	e1a00009 	mov	r0, r9
 8003950:	e3a0100f 	mov	r1, #15
 8003954:	e59f2128 	ldr	r2, [pc, #296]	; 8003a84 <__gnu_unwind_pr_common+0x450>
 8003958:	ebfffef5 	bl	8003534 <_Unwind_SetGR>
 800395c:	e3a00007 	mov	r0, #7
 8003960:	eaffffb4 	b	8003838 <__gnu_unwind_pr_common+0x204>
 8003964:	e1a00009 	mov	r0, r9
 8003968:	e3a0100d 	mov	r1, #13
 800396c:	e595a020 	ldr	sl, [r5, #32]
 8003970:	ebfffecc 	bl	80034a8 <_Unwind_GetGR>
 8003974:	e15a0000 	cmp	sl, r0
 8003978:	0a000016 	beq	80039d8 <__gnu_unwind_pr_common+0x3a4>
 800397c:	e5963000 	ldr	r3, [r6]
 8003980:	eaffff9f 	b	8003804 <__gnu_unwind_pr_common+0x1d0>
 8003984:	e1a00009 	mov	r0, r9
 8003988:	e3a0100d 	mov	r1, #13
 800398c:	e5954020 	ldr	r4, [r5, #32]
 8003990:	ebfffec4 	bl	80034a8 <_Unwind_GetGR>
 8003994:	e1540000 	cmp	r4, r0
 8003998:	1affffd9 	bne	8003904 <__gnu_unwind_pr_common+0x2d0>
 800399c:	e5953028 	ldr	r3, [r5, #40]	; 0x28
 80039a0:	e1560003 	cmp	r6, r3
 80039a4:	1affffd6 	bne	8003904 <__gnu_unwind_pr_common+0x2d0>
 80039a8:	e1a00006 	mov	r0, r6
 80039ac:	ebfffd12 	bl	8002dfc <selfrel_offset31>
 80039b0:	e3a0100f 	mov	r1, #15
 80039b4:	e1a02000 	mov	r2, r0
 80039b8:	e1a00009 	mov	r0, r9
 80039bc:	ebfffedc 	bl	8003534 <_Unwind_SetGR>
 80039c0:	e1a00009 	mov	r0, r9
 80039c4:	e1a02005 	mov	r2, r5
 80039c8:	e3a01000 	mov	r1, #0
 80039cc:	ebfffed8 	bl	8003534 <_Unwind_SetGR>
 80039d0:	e3a00007 	mov	r0, #7
 80039d4:	eaffff97 	b	8003838 <__gnu_unwind_pr_common+0x204>
 80039d8:	e5953028 	ldr	r3, [r5, #40]	; 0x28
 80039dc:	e1560003 	cmp	r6, r3
 80039e0:	1affffe5 	bne	800397c <__gnu_unwind_pr_common+0x348>
 80039e4:	e3a02000 	mov	r2, #0
 80039e8:	e585202c 	str	r2, [r5, #44]	; 0x2c
 80039ec:	e3a02004 	mov	r2, #4
 80039f0:	e2863004 	add	r3, r6, #4
 80039f4:	e5854028 	str	r4, [r5, #40]	; 0x28
 80039f8:	e5852030 	str	r2, [r5, #48]	; 0x30
 80039fc:	e5853034 	str	r3, [r5, #52]	; 0x34
 8003a00:	e5963000 	ldr	r3, [r6]
 8003a04:	e3530000 	cmp	r3, #0
 8003a08:	ba00001a 	blt	8003a78 <__gnu_unwind_pr_common+0x444>
 8003a0c:	e3a03001 	mov	r3, #1
 8003a10:	e58d3000 	str	r3, [sp]
 8003a14:	eaffff7c 	b	800380c <__gnu_unwind_pr_common+0x1d8>
 8003a18:	e1a00009 	mov	r0, r9
 8003a1c:	e3a0100d 	mov	r1, #13
 8003a20:	ebfffea0 	bl	80034a8 <_Unwind_GetGR>
 8003a24:	e5850020 	str	r0, [r5, #32]
 8003a28:	e59d3010 	ldr	r3, [sp, #16]
 8003a2c:	e5853024 	str	r3, [r5, #36]	; 0x24
 8003a30:	e5856028 	str	r6, [r5, #40]	; 0x28
 8003a34:	e3a00006 	mov	r0, #6
 8003a38:	eaffff7e 	b	8003838 <__gnu_unwind_pr_common+0x204>
 8003a3c:	e1a00006 	mov	r0, r6
 8003a40:	ebfffced 	bl	8002dfc <selfrel_offset31>
 8003a44:	e2866004 	add	r6, r6, #4
 8003a48:	e1a04000 	mov	r4, r0
 8003a4c:	e5856038 	str	r6, [r5, #56]	; 0x38
 8003a50:	e1a00005 	mov	r0, r5
 8003a54:	e320f000 	nop	{0}
 8003a58:	e3500000 	cmp	r0, #0
 8003a5c:	0affff74 	beq	8003834 <__gnu_unwind_pr_common+0x200>
 8003a60:	e1a00009 	mov	r0, r9
 8003a64:	e1a02004 	mov	r2, r4
 8003a68:	e3a0100f 	mov	r1, #15
 8003a6c:	ebfffeb0 	bl	8003534 <_Unwind_SetGR>
 8003a70:	e3a00007 	mov	r0, #7
 8003a74:	eaffff6f 	b	8003838 <__gnu_unwind_pr_common+0x204>
 8003a78:	e2840001 	add	r0, r4, #1
 8003a7c:	e0860100 	add	r0, r6, r0, lsl #2
 8003a80:	eaffffc9 	b	80039ac <__gnu_unwind_pr_common+0x378>
 8003a84:	00000000 	.word	0x00000000

08003a88 <__aeabi_unwind_cpp_pr0>:
 8003a88:	e3a03000 	mov	r3, #0
 8003a8c:	eafffee8 	b	8003634 <__gnu_unwind_pr_common>

08003a90 <__aeabi_unwind_cpp_pr1>:
 8003a90:	e3a03001 	mov	r3, #1
 8003a94:	eafffee6 	b	8003634 <__gnu_unwind_pr_common>

08003a98 <__aeabi_unwind_cpp_pr2>:
 8003a98:	e3a03002 	mov	r3, #2
 8003a9c:	eafffee4 	b	8003634 <__gnu_unwind_pr_common>

08003aa0 <_Unwind_VRS_Pop>:
 8003aa0:	e92d43f0 	push	{r4, r5, r6, r7, r8, r9, lr}
 8003aa4:	e1a04000 	mov	r4, r0
 8003aa8:	e24ddf45 	sub	sp, sp, #276	; 0x114
 8003aac:	e3510004 	cmp	r1, #4
 8003ab0:	979ff101 	ldrls	pc, [pc, r1, lsl #2]
 8003ab4:	ea000006 	b	8003ad4 <_Unwind_VRS_Pop+0x34>
 8003ab8:	08003cb4 	.word	0x08003cb4
 8003abc:	08003b4c 	.word	0x08003b4c
 8003ac0:	08003ad4 	.word	0x08003ad4
 8003ac4:	08003acc 	.word	0x08003acc
 8003ac8:	08003ae4 	.word	0x08003ae4
 8003acc:	e3530003 	cmp	r3, #3
 8003ad0:	0a00009c 	beq	8003d48 <_Unwind_VRS_Pop+0x2a8>
 8003ad4:	e3a00002 	mov	r0, #2
 8003ad8:	e28ddf45 	add	sp, sp, #276	; 0x114
 8003adc:	e8bd43f0 	pop	{r4, r5, r6, r7, r8, r9, lr}
 8003ae0:	e12fff1e 	bx	lr
 8003ae4:	e3520010 	cmp	r2, #16
 8003ae8:	93530000 	cmpls	r3, #0
 8003aec:	1afffff8 	bne	8003ad4 <_Unwind_VRS_Pop+0x34>
 8003af0:	e5903000 	ldr	r3, [r0]
 8003af4:	e3130010 	tst	r3, #16
 8003af8:	1a0000b1 	bne	8003dc4 <_Unwind_VRS_Pop+0x324>
 8003afc:	e28d5088 	add	r5, sp, #136	; 0x88
 8003b00:	e1a00005 	mov	r0, r5
 8003b04:	e58d2004 	str	r2, [sp, #4]
 8003b08:	eb00012b 	bl	8003fbc <__gnu_Unwind_Save_WMMXC>
 8003b0c:	e3a03000 	mov	r3, #0
 8003b10:	e3a00001 	mov	r0, #1
 8003b14:	e5941038 	ldr	r1, [r4, #56]	; 0x38
 8003b18:	e59d2004 	ldr	r2, [sp, #4]
 8003b1c:	e012c310 	ands	ip, r2, r0, lsl r3
 8003b20:	1591c000 	ldrne	ip, [r1]
 8003b24:	1785c103 	strne	ip, [r5, r3, lsl #2]
 8003b28:	e2833001 	add	r3, r3, #1
 8003b2c:	12811004 	addne	r1, r1, #4
 8003b30:	e3530004 	cmp	r3, #4
 8003b34:	1afffff8 	bne	8003b1c <_Unwind_VRS_Pop+0x7c>
 8003b38:	e1a00005 	mov	r0, r5
 8003b3c:	e5841038 	str	r1, [r4, #56]	; 0x38
 8003b40:	eb000118 	bl	8003fa8 <__gnu_Unwind_Restore_WMMXC>
 8003b44:	e3a00000 	mov	r0, #0
 8003b48:	eaffffe2 	b	8003ad8 <_Unwind_VRS_Pop+0x38>
 8003b4c:	e20310fb 	and	r1, r3, #251	; 0xfb
 8003b50:	e3510001 	cmp	r1, #1
 8003b54:	1affffde 	bne	8003ad4 <_Unwind_VRS_Pop+0x34>
 8003b58:	e1a06802 	lsl	r6, r2, #16
 8003b5c:	e1a06826 	lsr	r6, r6, #16
 8003b60:	e1a08822 	lsr	r8, r2, #16
 8003b64:	e3530001 	cmp	r3, #1
 8003b68:	e0861008 	add	r1, r6, r8
 8003b6c:	0a000063 	beq	8003d00 <_Unwind_VRS_Pop+0x260>
 8003b70:	e3510020 	cmp	r1, #32
 8003b74:	8affffd6 	bhi	8003ad4 <_Unwind_VRS_Pop+0x34>
 8003b78:	e358000f 	cmp	r8, #15
 8003b7c:	9a000096 	bls	8003ddc <_Unwind_VRS_Pop+0x33c>
 8003b80:	e1a07006 	mov	r7, r6
 8003b84:	e3570000 	cmp	r7, #0
 8003b88:	13530005 	cmpne	r3, #5
 8003b8c:	13a09001 	movne	r9, #1
 8003b90:	03a09000 	moveq	r9, #0
 8003b94:	1affffce 	bne	8003ad4 <_Unwind_VRS_Pop+0x34>
 8003b98:	e358000f 	cmp	r8, #15
 8003b9c:	8a000096 	bhi	8003dfc <_Unwind_VRS_Pop+0x35c>
 8003ba0:	e5942000 	ldr	r2, [r4]
 8003ba4:	e3120001 	tst	r2, #1
 8003ba8:	0a000093 	beq	8003dfc <_Unwind_VRS_Pop+0x35c>
 8003bac:	e3530005 	cmp	r3, #5
 8003bb0:	e3c23001 	bic	r3, r2, #1
 8003bb4:	e5843000 	str	r3, [r4]
 8003bb8:	0a0000bb 	beq	8003eac <_Unwind_VRS_Pop+0x40c>
 8003bbc:	e1a00004 	mov	r0, r4
 8003bc0:	e3c22003 	bic	r2, r2, #3
 8003bc4:	e4802048 	str	r2, [r0], #72	; 0x48
 8003bc8:	eb0000ca 	bl	8003ef8 <__gnu_Unwind_Save_VFP>
 8003bcc:	e3570000 	cmp	r7, #0
 8003bd0:	0a000099 	beq	8003e3c <_Unwind_VRS_Pop+0x39c>
 8003bd4:	e5943000 	ldr	r3, [r4]
 8003bd8:	e3130004 	tst	r3, #4
 8003bdc:	1a0000ad 	bne	8003e98 <_Unwind_VRS_Pop+0x3f8>
 8003be0:	e3590000 	cmp	r9, #0
 8003be4:	1a0000b7 	bne	8003ec8 <_Unwind_VRS_Pop+0x428>
 8003be8:	e358000f 	cmp	r8, #15
 8003bec:	8a000004 	bhi	8003c04 <_Unwind_VRS_Pop+0x164>
 8003bf0:	e28d5088 	add	r5, sp, #136	; 0x88
 8003bf4:	e1a00005 	mov	r0, r5
 8003bf8:	eb0000c2 	bl	8003f08 <__gnu_Unwind_Save_VFP_D>
 8003bfc:	e3570000 	cmp	r7, #0
 8003c00:	0a00009b 	beq	8003e74 <_Unwind_VRS_Pop+0x3d4>
 8003c04:	e28d0008 	add	r0, sp, #8
 8003c08:	eb0000c2 	bl	8003f18 <__gnu_Unwind_Save_VFP_D_16_to_31>
 8003c0c:	e2683010 	rsb	r3, r8, #16
 8003c10:	e3530000 	cmp	r3, #0
 8003c14:	e5941038 	ldr	r1, [r4, #56]	; 0x38
 8003c18:	da00000d 	ble	8003c54 <_Unwind_VRS_Pop+0x1b4>
 8003c1c:	e28d5088 	add	r5, sp, #136	; 0x88
 8003c20:	e1a00001 	mov	r0, r1
 8003c24:	e1a0e083 	lsl	lr, r3, #1
 8003c28:	e0852188 	add	r2, r5, r8, lsl #3
 8003c2c:	e2422004 	sub	r2, r2, #4
 8003c30:	e24e3001 	sub	r3, lr, #1
 8003c34:	e2433001 	sub	r3, r3, #1
 8003c38:	e490c004 	ldr	ip, [r0], #4
 8003c3c:	e3730001 	cmn	r3, #1
 8003c40:	e5a2c004 	str	ip, [r2, #4]!
 8003c44:	1afffffa 	bne	8003c34 <_Unwind_VRS_Pop+0x194>
 8003c48:	e3570000 	cmp	r7, #0
 8003c4c:	e081110e 	add	r1, r1, lr, lsl #2
 8003c50:	0a00000d 	beq	8003c8c <_Unwind_VRS_Pop+0x1ec>
 8003c54:	e3580010 	cmp	r8, #16
 8003c58:	21a02008 	movcs	r2, r8
 8003c5c:	33a02010 	movcc	r2, #16
 8003c60:	e28d3e11 	add	r3, sp, #272	; 0x110
 8003c64:	e0832182 	add	r2, r3, r2, lsl #3
 8003c68:	e2422f62 	sub	r2, r2, #392	; 0x188
 8003c6c:	e1a00087 	lsl	r0, r7, #1
 8003c70:	e1a03001 	mov	r3, r1
 8003c74:	e2422004 	sub	r2, r2, #4
 8003c78:	e0811100 	add	r1, r1, r0, lsl #2
 8003c7c:	e4930004 	ldr	r0, [r3], #4
 8003c80:	e1530001 	cmp	r3, r1
 8003c84:	e5a20004 	str	r0, [r2, #4]!
 8003c88:	1afffffb 	bne	8003c7c <_Unwind_VRS_Pop+0x1dc>
 8003c8c:	e3590000 	cmp	r9, #0
 8003c90:	1a00007b 	bne	8003e84 <_Unwind_VRS_Pop+0x3e4>
 8003c94:	e358000f 	cmp	r8, #15
 8003c98:	e5841038 	str	r1, [r4, #56]	; 0x38
 8003c9c:	9a00007a 	bls	8003e8c <_Unwind_VRS_Pop+0x3ec>
 8003ca0:	e3570000 	cmp	r7, #0
 8003ca4:	128d0008 	addne	r0, sp, #8
 8003ca8:	1b000098 	blne	8003f10 <__gnu_Unwind_Restore_VFP_D_16_to_31>
 8003cac:	e3a00000 	mov	r0, #0
 8003cb0:	eaffff88 	b	8003ad8 <_Unwind_VRS_Pop+0x38>
 8003cb4:	e3530000 	cmp	r3, #0
 8003cb8:	1affff85 	bne	8003ad4 <_Unwind_VRS_Pop+0x34>
 8003cbc:	e3a0e001 	mov	lr, #1
 8003cc0:	e1a00802 	lsl	r0, r2, #16
 8003cc4:	e594c038 	ldr	ip, [r4, #56]	; 0x38
 8003cc8:	e1a00820 	lsr	r0, r0, #16
 8003ccc:	e2841004 	add	r1, r4, #4
 8003cd0:	e010531e 	ands	r5, r0, lr, lsl r3
 8003cd4:	159c5000 	ldrne	r5, [ip]
 8003cd8:	e2833001 	add	r3, r3, #1
 8003cdc:	15815000 	strne	r5, [r1]
 8003ce0:	128cc004 	addne	ip, ip, #4
 8003ce4:	e3530010 	cmp	r3, #16
 8003ce8:	e2811004 	add	r1, r1, #4
 8003cec:	1afffff7 	bne	8003cd0 <_Unwind_VRS_Pop+0x230>
 8003cf0:	e2120a02 	ands	r0, r2, #8192	; 0x2000
 8003cf4:	0584c038 	streq	ip, [r4, #56]	; 0x38
 8003cf8:	0affff76 	beq	8003ad8 <_Unwind_VRS_Pop+0x38>
 8003cfc:	eaffffea 	b	8003cac <_Unwind_VRS_Pop+0x20c>
 8003d00:	e3510010 	cmp	r1, #16
 8003d04:	8affff72 	bhi	8003ad4 <_Unwind_VRS_Pop+0x34>
 8003d08:	e358000f 	cmp	r8, #15
 8003d0c:	91a09003 	movls	r9, r3
 8003d10:	8affff6f 	bhi	8003ad4 <_Unwind_VRS_Pop+0x34>
 8003d14:	e5942000 	ldr	r2, [r4]
 8003d18:	e3120001 	tst	r2, #1
 8003d1c:	0a000046 	beq	8003e3c <_Unwind_VRS_Pop+0x39c>
 8003d20:	e3530005 	cmp	r3, #5
 8003d24:	e3c23001 	bic	r3, r2, #1
 8003d28:	e5843000 	str	r3, [r4]
 8003d2c:	e3a07000 	mov	r7, #0
 8003d30:	1affffa1 	bne	8003bbc <_Unwind_VRS_Pop+0x11c>
 8003d34:	e1a00004 	mov	r0, r4
 8003d38:	e3833002 	orr	r3, r3, #2
 8003d3c:	e4803048 	str	r3, [r0], #72	; 0x48
 8003d40:	eb000070 	bl	8003f08 <__gnu_Unwind_Save_VFP_D>
 8003d44:	eaffffa9 	b	8003bf0 <_Unwind_VRS_Pop+0x150>
 8003d48:	e1a07802 	lsl	r7, r2, #16
 8003d4c:	e1a07827 	lsr	r7, r7, #16
 8003d50:	e1a06822 	lsr	r6, r2, #16
 8003d54:	e0873006 	add	r3, r7, r6
 8003d58:	e3530010 	cmp	r3, #16
 8003d5c:	8affff5c 	bhi	8003ad4 <_Unwind_VRS_Pop+0x34>
 8003d60:	e5903000 	ldr	r3, [r0]
 8003d64:	e3130008 	tst	r3, #8
 8003d68:	1a00001f 	bne	8003dec <_Unwind_VRS_Pop+0x34c>
 8003d6c:	e28d5088 	add	r5, sp, #136	; 0x88
 8003d70:	e1a07087 	lsl	r7, r7, #1
 8003d74:	e1a00005 	mov	r0, r5
 8003d78:	eb000079 	bl	8003f64 <__gnu_Unwind_Save_WMMXD>
 8003d7c:	e3570000 	cmp	r7, #0
 8003d80:	e0852186 	add	r2, r5, r6, lsl #3
 8003d84:	e2473001 	sub	r3, r7, #1
 8003d88:	e594c038 	ldr	ip, [r4, #56]	; 0x38
 8003d8c:	0a000007 	beq	8003db0 <_Unwind_VRS_Pop+0x310>
 8003d90:	e1a0100c 	mov	r1, ip
 8003d94:	e2422004 	sub	r2, r2, #4
 8003d98:	e2433001 	sub	r3, r3, #1
 8003d9c:	e4910004 	ldr	r0, [r1], #4
 8003da0:	e3730001 	cmn	r3, #1
 8003da4:	e5a20004 	str	r0, [r2, #4]!
 8003da8:	1afffffa 	bne	8003d98 <_Unwind_VRS_Pop+0x2f8>
 8003dac:	e08cc107 	add	ip, ip, r7, lsl #2
 8003db0:	e1a00005 	mov	r0, r5
 8003db4:	e584c038 	str	ip, [r4, #56]	; 0x38
 8003db8:	eb000058 	bl	8003f20 <__gnu_Unwind_Restore_WMMXD>
 8003dbc:	e3a00000 	mov	r0, #0
 8003dc0:	eaffff44 	b	8003ad8 <_Unwind_VRS_Pop+0x38>
 8003dc4:	e3c33010 	bic	r3, r3, #16
 8003dc8:	e48031d0 	str	r3, [r0], #464	; 0x1d0
 8003dcc:	e58d2004 	str	r2, [sp, #4]
 8003dd0:	eb000079 	bl	8003fbc <__gnu_Unwind_Save_WMMXC>
 8003dd4:	e59d2004 	ldr	r2, [sp, #4]
 8003dd8:	eaffff47 	b	8003afc <_Unwind_VRS_Pop+0x5c>
 8003ddc:	e3510010 	cmp	r1, #16
 8003de0:	9a000013 	bls	8003e34 <_Unwind_VRS_Pop+0x394>
 8003de4:	e2417010 	sub	r7, r1, #16
 8003de8:	eaffff65 	b	8003b84 <_Unwind_VRS_Pop+0xe4>
 8003dec:	e3c33008 	bic	r3, r3, #8
 8003df0:	e4803150 	str	r3, [r0], #336	; 0x150
 8003df4:	eb00005a 	bl	8003f64 <__gnu_Unwind_Save_WMMXD>
 8003df8:	eaffffdb 	b	8003d6c <_Unwind_VRS_Pop+0x2cc>
 8003dfc:	e3570000 	cmp	r7, #0
 8003e00:	1affff73 	bne	8003bd4 <_Unwind_VRS_Pop+0x134>
 8003e04:	e358000f 	cmp	r8, #15
 8003e08:	93a09000 	movls	r9, #0
 8003e0c:	91a07009 	movls	r7, r9
 8003e10:	9affff76 	bls	8003bf0 <_Unwind_VRS_Pop+0x150>
 8003e14:	e3a09000 	mov	r9, #0
 8003e18:	e3560000 	cmp	r6, #0
 8003e1c:	e1a03006 	mov	r3, r6
 8003e20:	e5941038 	ldr	r1, [r4, #56]	; 0x38
 8003e24:	11a07009 	movne	r7, r9
 8003e28:	1affff7b 	bne	8003c1c <_Unwind_VRS_Pop+0x17c>
 8003e2c:	e1a07006 	mov	r7, r6
 8003e30:	eaffff97 	b	8003c94 <_Unwind_VRS_Pop+0x1f4>
 8003e34:	e3a09000 	mov	r9, #0
 8003e38:	eaffffb5 	b	8003d14 <_Unwind_VRS_Pop+0x274>
 8003e3c:	e3590000 	cmp	r9, #0
 8003e40:	0affffef 	beq	8003e04 <_Unwind_VRS_Pop+0x364>
 8003e44:	e28d5088 	add	r5, sp, #136	; 0x88
 8003e48:	e1a00005 	mov	r0, r5
 8003e4c:	eb000029 	bl	8003ef8 <__gnu_Unwind_Save_VFP>
 8003e50:	e2563000 	subs	r3, r6, #0
 8003e54:	e5941038 	ldr	r1, [r4, #56]	; 0x38
 8003e58:	13a07000 	movne	r7, #0
 8003e5c:	1affff6f 	bne	8003c20 <_Unwind_VRS_Pop+0x180>
 8003e60:	e2811004 	add	r1, r1, #4
 8003e64:	e5841038 	str	r1, [r4, #56]	; 0x38
 8003e68:	e1a00005 	mov	r0, r5
 8003e6c:	eb00001f 	bl	8003ef0 <__gnu_Unwind_Restore_VFP>
 8003e70:	eaffff8d 	b	8003cac <_Unwind_VRS_Pop+0x20c>
 8003e74:	e2563000 	subs	r3, r6, #0
 8003e78:	e5941038 	ldr	r1, [r4, #56]	; 0x38
 8003e7c:	1affff67 	bne	8003c20 <_Unwind_VRS_Pop+0x180>
 8003e80:	eaffff81 	b	8003c8c <_Unwind_VRS_Pop+0x1ec>
 8003e84:	e28d5088 	add	r5, sp, #136	; 0x88
 8003e88:	eafffff4 	b	8003e60 <_Unwind_VRS_Pop+0x3c0>
 8003e8c:	e28d0088 	add	r0, sp, #136	; 0x88
 8003e90:	eb00001a 	bl	8003f00 <__gnu_Unwind_Restore_VFP_D>
 8003e94:	eaffff81 	b	8003ca0 <_Unwind_VRS_Pop+0x200>
 8003e98:	e1a00004 	mov	r0, r4
 8003e9c:	e3c33004 	bic	r3, r3, #4
 8003ea0:	e48030d0 	str	r3, [r0], #208	; 0xd0
 8003ea4:	eb00001b 	bl	8003f18 <__gnu_Unwind_Save_VFP_D_16_to_31>
 8003ea8:	eaffff4c 	b	8003be0 <_Unwind_VRS_Pop+0x140>
 8003eac:	e1a00004 	mov	r0, r4
 8003eb0:	e3833002 	orr	r3, r3, #2
 8003eb4:	e4803048 	str	r3, [r0], #72	; 0x48
 8003eb8:	eb000012 	bl	8003f08 <__gnu_Unwind_Save_VFP_D>
 8003ebc:	e3570000 	cmp	r7, #0
 8003ec0:	1affff43 	bne	8003bd4 <_Unwind_VRS_Pop+0x134>
 8003ec4:	eaffff49 	b	8003bf0 <_Unwind_VRS_Pop+0x150>
 8003ec8:	e28d0088 	add	r0, sp, #136	; 0x88
 8003ecc:	eb000009 	bl	8003ef8 <__gnu_Unwind_Save_VFP>
 8003ed0:	eaffff4d 	b	8003c0c <_Unwind_VRS_Pop+0x16c>

08003ed4 <__restore_core_regs>:
 8003ed4:	e2801034 	add	r1, r0, #52	; 0x34
 8003ed8:	e8910038 	ldm	r1, {r3, r4, r5}
 8003edc:	e1a02005 	mov	r2, r5
 8003ee0:	e92d001c 	push	{r2, r3, r4}
 8003ee4:	e8900fff 	ldm	r0, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp}
 8003ee8:	e89d7000 	ldm	sp, {ip, sp, lr}
 8003eec:	e12fff1c 	bx	ip

08003ef0 <__gnu_Unwind_Restore_VFP>:
 8003ef0:	ec900b21 	fldmiax	r0, {d0-d15}	;@ Deprecated
 8003ef4:	e12fff1e 	bx	lr

08003ef8 <__gnu_Unwind_Save_VFP>:
 8003ef8:	ec800b21 	fstmiax	r0, {d0-d15}	;@ Deprecated
 8003efc:	e12fff1e 	bx	lr

08003f00 <__gnu_Unwind_Restore_VFP_D>:
 8003f00:	ec900b20 	vldmia	r0, {d0-d15}
 8003f04:	e12fff1e 	bx	lr

08003f08 <__gnu_Unwind_Save_VFP_D>:
 8003f08:	ec800b20 	vstmia	r0, {d0-d15}
 8003f0c:	e12fff1e 	bx	lr

08003f10 <__gnu_Unwind_Restore_VFP_D_16_to_31>:
 8003f10:	ecd00b20 	vldmia	r0, {d16-d31}
 8003f14:	e12fff1e 	bx	lr

08003f18 <__gnu_Unwind_Save_VFP_D_16_to_31>:
 8003f18:	ecc00b20 	vstmia	r0, {d16-d31}
 8003f1c:	e12fff1e 	bx	lr

08003f20 <__gnu_Unwind_Restore_WMMXD>:
 8003f20:	ecf00102 	ldfe	f0, [r0], #8
 8003f24:	ecf01102 	ldfe	f1, [r0], #8
 8003f28:	ecf02102 	ldfe	f2, [r0], #8
 8003f2c:	ecf03102 	ldfe	f3, [r0], #8
 8003f30:	ecf04102 	ldfe	f4, [r0], #8
 8003f34:	ecf05102 	ldfe	f5, [r0], #8
 8003f38:	ecf06102 	ldfe	f6, [r0], #8
 8003f3c:	ecf07102 	ldfe	f7, [r0], #8
 8003f40:	ecf08102 	ldfp	f0, [r0], #8
 8003f44:	ecf09102 	ldfp	f1, [r0], #8
 8003f48:	ecf0a102 	ldfp	f2, [r0], #8
 8003f4c:	ecf0b102 	ldfp	f3, [r0], #8
 8003f50:	ecf0c102 	ldfp	f4, [r0], #8
 8003f54:	ecf0d102 	ldfp	f5, [r0], #8
 8003f58:	ecf0e102 	ldfp	f6, [r0], #8
 8003f5c:	ecf0f102 	ldfp	f7, [r0], #8
 8003f60:	e12fff1e 	bx	lr

08003f64 <__gnu_Unwind_Save_WMMXD>:
 8003f64:	ece00102 	stfe	f0, [r0], #8
 8003f68:	ece01102 	stfe	f1, [r0], #8
 8003f6c:	ece02102 	stfe	f2, [r0], #8
 8003f70:	ece03102 	stfe	f3, [r0], #8
 8003f74:	ece04102 	stfe	f4, [r0], #8
 8003f78:	ece05102 	stfe	f5, [r0], #8
 8003f7c:	ece06102 	stfe	f6, [r0], #8
 8003f80:	ece07102 	stfe	f7, [r0], #8
 8003f84:	ece08102 	stfp	f0, [r0], #8
 8003f88:	ece09102 	stfp	f1, [r0], #8
 8003f8c:	ece0a102 	stfp	f2, [r0], #8
 8003f90:	ece0b102 	stfp	f3, [r0], #8
 8003f94:	ece0c102 	stfp	f4, [r0], #8
 8003f98:	ece0d102 	stfp	f5, [r0], #8
 8003f9c:	ece0e102 	stfp	f6, [r0], #8
 8003fa0:	ece0f102 	stfp	f7, [r0], #8
 8003fa4:	e12fff1e 	bx	lr

08003fa8 <__gnu_Unwind_Restore_WMMXC>:
 8003fa8:	fcb08101 	ldc2	1, cr8, [r0], #4
 8003fac:	fcb09101 	ldc2	1, cr9, [r0], #4
 8003fb0:	fcb0a101 	ldc2	1, cr10, [r0], #4
 8003fb4:	fcb0b101 	ldc2	1, cr11, [r0], #4
 8003fb8:	e12fff1e 	bx	lr

08003fbc <__gnu_Unwind_Save_WMMXC>:
 8003fbc:	fca08101 	stc2	1, cr8, [r0], #4
 8003fc0:	fca09101 	stc2	1, cr9, [r0], #4
 8003fc4:	fca0a101 	stc2	1, cr10, [r0], #4
 8003fc8:	fca0b101 	stc2	1, cr11, [r0], #4
 8003fcc:	e12fff1e 	bx	lr

08003fd0 <_Unwind_RaiseException>:
 8003fd0:	e92de000 	push	{sp, lr, pc}
 8003fd4:	e92d1fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
 8003fd8:	e3a03000 	mov	r3, #0
 8003fdc:	e92d000c 	push	{r2, r3}
 8003fe0:	e28d1004 	add	r1, sp, #4
 8003fe4:	ebfffcb8 	bl	80032cc <__gnu_Unwind_RaiseException>
 8003fe8:	e59de040 	ldr	lr, [sp, #64]	; 0x40
 8003fec:	e28dd048 	add	sp, sp, #72	; 0x48
 8003ff0:	e12fff1e 	bx	lr

08003ff4 <_Unwind_Resume>:
 8003ff4:	e92de000 	push	{sp, lr, pc}
 8003ff8:	e92d1fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
 8003ffc:	e3a03000 	mov	r3, #0
 8004000:	e92d000c 	push	{r2, r3}
 8004004:	e28d1004 	add	r1, sp, #4
 8004008:	ebfffce4 	bl	80033a0 <__gnu_Unwind_Resume>
 800400c:	e59de040 	ldr	lr, [sp, #64]	; 0x40
 8004010:	e28dd048 	add	sp, sp, #72	; 0x48
 8004014:	e12fff1e 	bx	lr

08004018 <_Unwind_Resume_or_Rethrow>:
 8004018:	e92de000 	push	{sp, lr, pc}
 800401c:	e92d1fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
 8004020:	e3a03000 	mov	r3, #0
 8004024:	e92d000c 	push	{r2, r3}
 8004028:	e28d1004 	add	r1, sp, #4
 800402c:	ebfffcf8 	bl	8003414 <__gnu_Unwind_Resume_or_Rethrow>
 8004030:	e59de040 	ldr	lr, [sp, #64]	; 0x40
 8004034:	e28dd048 	add	sp, sp, #72	; 0x48
 8004038:	e12fff1e 	bx	lr

0800403c <_Unwind_ForcedUnwind>:
 800403c:	e92de000 	push	{sp, lr, pc}
 8004040:	e92d1fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
 8004044:	e3a03000 	mov	r3, #0
 8004048:	e92d000c 	push	{r2, r3}
 800404c:	e28d3004 	add	r3, sp, #4
 8004050:	ebfffcc9 	bl	800337c <__gnu_Unwind_ForcedUnwind>
 8004054:	e59de040 	ldr	lr, [sp, #64]	; 0x40
 8004058:	e28dd048 	add	sp, sp, #72	; 0x48
 800405c:	e12fff1e 	bx	lr

08004060 <_Unwind_Backtrace>:
 8004060:	e92de000 	push	{sp, lr, pc}
 8004064:	e92d1fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
 8004068:	e3a03000 	mov	r3, #0
 800406c:	e92d000c 	push	{r2, r3}
 8004070:	e28d2004 	add	r2, sp, #4
 8004074:	ebfffd3b 	bl	8003568 <__gnu_Unwind_Backtrace>
 8004078:	e59de040 	ldr	lr, [sp, #64]	; 0x40
 800407c:	e28dd048 	add	sp, sp, #72	; 0x48
 8004080:	e12fff1e 	bx	lr

08004084 <next_unwind_byte>:
 8004084:	e5d03008 	ldrb	r3, [r0, #8]
 8004088:	e3530000 	cmp	r3, #0
 800408c:	1a000004 	bne	80040a4 <next_unwind_byte+0x20>
 8004090:	e5d03009 	ldrb	r3, [r0, #9]
 8004094:	e3530000 	cmp	r3, #0
 8004098:	1a000008 	bne	80040c0 <next_unwind_byte+0x3c>
 800409c:	e3a000b0 	mov	r0, #176	; 0xb0
 80040a0:	e12fff1e 	bx	lr
 80040a4:	e2433001 	sub	r3, r3, #1
 80040a8:	e5c03008 	strb	r3, [r0, #8]
 80040ac:	e5903000 	ldr	r3, [r0]
 80040b0:	e1a02403 	lsl	r2, r3, #8
 80040b4:	e5802000 	str	r2, [r0]
 80040b8:	e1a00c23 	lsr	r0, r3, #24
 80040bc:	e12fff1e 	bx	lr
 80040c0:	e3a01003 	mov	r1, #3
 80040c4:	e5902004 	ldr	r2, [r0, #4]
 80040c8:	e2433001 	sub	r3, r3, #1
 80040cc:	e5c03009 	strb	r3, [r0, #9]
 80040d0:	e282c004 	add	ip, r2, #4
 80040d4:	e5923000 	ldr	r3, [r2]
 80040d8:	e580c004 	str	ip, [r0, #4]
 80040dc:	e5c01008 	strb	r1, [r0, #8]
 80040e0:	eafffff2 	b	80040b0 <next_unwind_byte+0x2c>

080040e4 <_Unwind_GetGR.constprop.0>:
 80040e4:	e3a01000 	mov	r1, #0
 80040e8:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 80040ec:	e24dd014 	sub	sp, sp, #20
 80040f0:	e28d200c 	add	r2, sp, #12
 80040f4:	e58d2000 	str	r2, [sp]
 80040f8:	e1a03001 	mov	r3, r1
 80040fc:	e3a0200c 	mov	r2, #12
 8004100:	ebfffcd1 	bl	800344c <_Unwind_VRS_Get>
 8004104:	e59d000c 	ldr	r0, [sp, #12]
 8004108:	e28dd014 	add	sp, sp, #20
 800410c:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 8004110:	e12fff1e 	bx	lr

08004114 <unwind_UCB_from_context>:
 8004114:	eafffff2 	b	80040e4 <_Unwind_GetGR.constprop.0>

08004118 <__gnu_unwind_execute>:
 8004118:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
 800411c:	e1a07000 	mov	r7, r0
 8004120:	e1a05001 	mov	r5, r1
 8004124:	e3a08000 	mov	r8, #0
 8004128:	e24dd010 	sub	sp, sp, #16
 800412c:	e1a00005 	mov	r0, r5
 8004130:	ebffffd3 	bl	8004084 <next_unwind_byte>
 8004134:	e35000b0 	cmp	r0, #176	; 0xb0
 8004138:	e1a04000 	mov	r4, r0
 800413c:	0a00007d 	beq	8004338 <__gnu_unwind_execute+0x220>
 8004140:	e2101080 	ands	r1, r0, #128	; 0x80
 8004144:	0a00001a 	beq	80041b4 <__gnu_unwind_execute+0x9c>
 8004148:	e20030f0 	and	r3, r0, #240	; 0xf0
 800414c:	e3530080 	cmp	r3, #128	; 0x80
 8004150:	0a000054 	beq	80042a8 <__gnu_unwind_execute+0x190>
 8004154:	e3530090 	cmp	r3, #144	; 0x90
 8004158:	0a00002b 	beq	800420c <__gnu_unwind_execute+0xf4>
 800415c:	e35300a0 	cmp	r3, #160	; 0xa0
 8004160:	0a000034 	beq	8004238 <__gnu_unwind_execute+0x120>
 8004164:	e35300b0 	cmp	r3, #176	; 0xb0
 8004168:	0a000040 	beq	8004270 <__gnu_unwind_execute+0x158>
 800416c:	e35300c0 	cmp	r3, #192	; 0xc0
 8004170:	0a00005e 	beq	80042f0 <__gnu_unwind_execute+0x1d8>
 8004174:	e20030f8 	and	r3, r0, #248	; 0xf8
 8004178:	e35300d0 	cmp	r3, #208	; 0xd0
 800417c:	1a000008 	bne	80041a4 <__gnu_unwind_execute+0x8c>
 8004180:	e2002007 	and	r2, r0, #7
 8004184:	e2822001 	add	r2, r2, #1
 8004188:	e3822702 	orr	r2, r2, #524288	; 0x80000
 800418c:	e1a00007 	mov	r0, r7
 8004190:	e3a01001 	mov	r1, #1
 8004194:	e3a03005 	mov	r3, #5
 8004198:	ebfffe40 	bl	8003aa0 <_Unwind_VRS_Pop>
 800419c:	e3500000 	cmp	r0, #0
 80041a0:	0affffe1 	beq	800412c <__gnu_unwind_execute+0x14>
 80041a4:	e3a00009 	mov	r0, #9
 80041a8:	e28dd010 	add	sp, sp, #16
 80041ac:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
 80041b0:	e12fff1e 	bx	lr
 80041b4:	e28d300c 	add	r3, sp, #12
 80041b8:	e1a06100 	lsl	r6, r0, #2
 80041bc:	e58d3000 	str	r3, [sp]
 80041c0:	e1a00007 	mov	r0, r7
 80041c4:	e1a03001 	mov	r3, r1
 80041c8:	e3a0200d 	mov	r2, #13
 80041cc:	ebfffc9e 	bl	800344c <_Unwind_VRS_Get>
 80041d0:	e20660ff 	and	r6, r6, #255	; 0xff
 80041d4:	e59d300c 	ldr	r3, [sp, #12]
 80041d8:	e2866004 	add	r6, r6, #4
 80041dc:	e3140040 	tst	r4, #64	; 0x40
 80041e0:	10666003 	rsbne	r6, r6, r3
 80041e4:	00836006 	addeq	r6, r3, r6
 80041e8:	e58d600c 	str	r6, [sp, #12]
 80041ec:	e3a01000 	mov	r1, #0
 80041f0:	e28d300c 	add	r3, sp, #12
 80041f4:	e58d3000 	str	r3, [sp]
 80041f8:	e1a00007 	mov	r0, r7
 80041fc:	e1a03001 	mov	r3, r1
 8004200:	e3a0200d 	mov	r2, #13
 8004204:	ebfffcb3 	bl	80034d8 <_Unwind_VRS_Set>
 8004208:	eaffffc7 	b	800412c <__gnu_unwind_execute+0x14>
 800420c:	e200300d 	and	r3, r0, #13
 8004210:	e353000d 	cmp	r3, #13
 8004214:	0affffe2 	beq	80041a4 <__gnu_unwind_execute+0x8c>
 8004218:	e3a01000 	mov	r1, #0
 800421c:	e28d300c 	add	r3, sp, #12
 8004220:	e58d3000 	str	r3, [sp]
 8004224:	e200200f 	and	r2, r0, #15
 8004228:	e1a03001 	mov	r3, r1
 800422c:	e1a00007 	mov	r0, r7
 8004230:	ebfffc85 	bl	800344c <_Unwind_VRS_Get>
 8004234:	eaffffec 	b	80041ec <__gnu_unwind_execute+0xd4>
 8004238:	e1e02000 	mvn	r2, r0
 800423c:	e3a03eff 	mov	r3, #4080	; 0xff0
 8004240:	e3a01000 	mov	r1, #0
 8004244:	e2022007 	and	r2, r2, #7
 8004248:	e1a02253 	asr	r2, r3, r2
 800424c:	e3100008 	tst	r0, #8
 8004250:	e0022003 	and	r2, r2, r3
 8004254:	13822901 	orrne	r2, r2, #16384	; 0x4000
 8004258:	e1a03001 	mov	r3, r1
 800425c:	e1a00007 	mov	r0, r7
 8004260:	ebfffe0e 	bl	8003aa0 <_Unwind_VRS_Pop>
 8004264:	e3500000 	cmp	r0, #0
 8004268:	1affffcd 	bne	80041a4 <__gnu_unwind_execute+0x8c>
 800426c:	eaffffae 	b	800412c <__gnu_unwind_execute+0x14>
 8004270:	e35000b1 	cmp	r0, #177	; 0xb1
 8004274:	0a000041 	beq	8004380 <__gnu_unwind_execute+0x268>
 8004278:	e35000b2 	cmp	r0, #178	; 0xb2
 800427c:	0a00004b 	beq	80043b0 <__gnu_unwind_execute+0x298>
 8004280:	e35000b3 	cmp	r0, #179	; 0xb3
 8004284:	0a00006b 	beq	8004438 <__gnu_unwind_execute+0x320>
 8004288:	e20030fc 	and	r3, r0, #252	; 0xfc
 800428c:	e35300b4 	cmp	r3, #180	; 0xb4
 8004290:	0affffc3 	beq	80041a4 <__gnu_unwind_execute+0x8c>
 8004294:	e3a01001 	mov	r1, #1
 8004298:	e2002007 	and	r2, r0, #7
 800429c:	e0822001 	add	r2, r2, r1
 80042a0:	e3822702 	orr	r2, r2, #524288	; 0x80000
 80042a4:	eaffffeb 	b	8004258 <__gnu_unwind_execute+0x140>
 80042a8:	e1a00005 	mov	r0, r5
 80042ac:	ebffff74 	bl	8004084 <next_unwind_byte>
 80042b0:	e1a04404 	lsl	r4, r4, #8
 80042b4:	e1804004 	orr	r4, r0, r4
 80042b8:	e3540902 	cmp	r4, #32768	; 0x8000
 80042bc:	0affffb8 	beq	80041a4 <__gnu_unwind_execute+0x8c>
 80042c0:	e3a01000 	mov	r1, #0
 80042c4:	e1a02a04 	lsl	r2, r4, #20
 80042c8:	e1a03001 	mov	r3, r1
 80042cc:	e1a02822 	lsr	r2, r2, #16
 80042d0:	e1a00007 	mov	r0, r7
 80042d4:	ebfffdf1 	bl	8003aa0 <_Unwind_VRS_Pop>
 80042d8:	e3500000 	cmp	r0, #0
 80042dc:	e1a04204 	lsl	r4, r4, #4
 80042e0:	1affffaf 	bne	80041a4 <__gnu_unwind_execute+0x8c>
 80042e4:	e3140902 	tst	r4, #32768	; 0x8000
 80042e8:	13a08001 	movne	r8, #1
 80042ec:	eaffff8e 	b	800412c <__gnu_unwind_execute+0x14>
 80042f0:	e35000c6 	cmp	r0, #198	; 0xc6
 80042f4:	0a000057 	beq	8004458 <__gnu_unwind_execute+0x340>
 80042f8:	e35000c7 	cmp	r0, #199	; 0xc7
 80042fc:	0a00005d 	beq	8004478 <__gnu_unwind_execute+0x360>
 8004300:	e20030f8 	and	r3, r0, #248	; 0xf8
 8004304:	e35300c0 	cmp	r3, #192	; 0xc0
 8004308:	0a000066 	beq	80044a8 <__gnu_unwind_execute+0x390>
 800430c:	e35000c8 	cmp	r0, #200	; 0xc8
 8004310:	0a000069 	beq	80044bc <__gnu_unwind_execute+0x3a4>
 8004314:	e35000c9 	cmp	r0, #201	; 0xc9
 8004318:	1affffa1 	bne	80041a4 <__gnu_unwind_execute+0x8c>
 800431c:	e1a00005 	mov	r0, r5
 8004320:	ebffff57 	bl	8004084 <next_unwind_byte>
 8004324:	e200200f 	and	r2, r0, #15
 8004328:	e2822001 	add	r2, r2, #1
 800432c:	e20000f0 	and	r0, r0, #240	; 0xf0
 8004330:	e1822600 	orr	r2, r2, r0, lsl #12
 8004334:	eaffff94 	b	800418c <__gnu_unwind_execute+0x74>
 8004338:	e3580000 	cmp	r8, #0
 800433c:	13a00000 	movne	r0, #0
 8004340:	1affff98 	bne	80041a8 <__gnu_unwind_execute+0x90>
 8004344:	e28d400c 	add	r4, sp, #12
 8004348:	e1a01008 	mov	r1, r8
 800434c:	e3a0200e 	mov	r2, #14
 8004350:	e1a03008 	mov	r3, r8
 8004354:	e58d4000 	str	r4, [sp]
 8004358:	e1a00007 	mov	r0, r7
 800435c:	ebfffc3a 	bl	800344c <_Unwind_VRS_Get>
 8004360:	e58d4000 	str	r4, [sp]
 8004364:	e1a00007 	mov	r0, r7
 8004368:	e1a01008 	mov	r1, r8
 800436c:	e3a0200f 	mov	r2, #15
 8004370:	e1a03008 	mov	r3, r8
 8004374:	ebfffc57 	bl	80034d8 <_Unwind_VRS_Set>
 8004378:	e1a00008 	mov	r0, r8
 800437c:	eaffff89 	b	80041a8 <__gnu_unwind_execute+0x90>
 8004380:	e1a00005 	mov	r0, r5
 8004384:	ebffff3e 	bl	8004084 <next_unwind_byte>
 8004388:	e2502000 	subs	r2, r0, #0
 800438c:	0affff84 	beq	80041a4 <__gnu_unwind_execute+0x8c>
 8004390:	e21210f0 	ands	r1, r2, #240	; 0xf0
 8004394:	1affff82 	bne	80041a4 <__gnu_unwind_execute+0x8c>
 8004398:	e1a00007 	mov	r0, r7
 800439c:	e1a03001 	mov	r3, r1
 80043a0:	ebfffdbe 	bl	8003aa0 <_Unwind_VRS_Pop>
 80043a4:	e3500000 	cmp	r0, #0
 80043a8:	1affff7d 	bne	80041a4 <__gnu_unwind_execute+0x8c>
 80043ac:	eaffff5e 	b	800412c <__gnu_unwind_execute+0x14>
 80043b0:	e3a01000 	mov	r1, #0
 80043b4:	e28d300c 	add	r3, sp, #12
 80043b8:	e58d3000 	str	r3, [sp]
 80043bc:	e3a0200d 	mov	r2, #13
 80043c0:	e1a03001 	mov	r3, r1
 80043c4:	e1a00007 	mov	r0, r7
 80043c8:	ebfffc1f 	bl	800344c <_Unwind_VRS_Get>
 80043cc:	e1a00005 	mov	r0, r5
 80043d0:	ebffff2b 	bl	8004084 <next_unwind_byte>
 80043d4:	e3100080 	tst	r0, #128	; 0x80
 80043d8:	e3a04002 	mov	r4, #2
 80043dc:	0a000008 	beq	8004404 <__gnu_unwind_execute+0x2ec>
 80043e0:	e59d300c 	ldr	r3, [sp, #12]
 80043e4:	e200007f 	and	r0, r0, #127	; 0x7f
 80043e8:	e0833410 	add	r3, r3, r0, lsl r4
 80043ec:	e1a00005 	mov	r0, r5
 80043f0:	e58d300c 	str	r3, [sp, #12]
 80043f4:	ebffff22 	bl	8004084 <next_unwind_byte>
 80043f8:	e3100080 	tst	r0, #128	; 0x80
 80043fc:	e2844007 	add	r4, r4, #7
 8004400:	1afffff6 	bne	80043e0 <__gnu_unwind_execute+0x2c8>
 8004404:	e3a01000 	mov	r1, #0
 8004408:	e59d300c 	ldr	r3, [sp, #12]
 800440c:	e28d200c 	add	r2, sp, #12
 8004410:	e200007f 	and	r0, r0, #127	; 0x7f
 8004414:	e2833f81 	add	r3, r3, #516	; 0x204
 8004418:	e0834410 	add	r4, r3, r0, lsl r4
 800441c:	e58d2000 	str	r2, [sp]
 8004420:	e1a03001 	mov	r3, r1
 8004424:	e1a00007 	mov	r0, r7
 8004428:	e3a0200d 	mov	r2, #13
 800442c:	e58d400c 	str	r4, [sp, #12]
 8004430:	ebfffc28 	bl	80034d8 <_Unwind_VRS_Set>
 8004434:	eaffff3c 	b	800412c <__gnu_unwind_execute+0x14>
 8004438:	e1a00005 	mov	r0, r5
 800443c:	ebffff10 	bl	8004084 <next_unwind_byte>
 8004440:	e3a01001 	mov	r1, #1
 8004444:	e200200f 	and	r2, r0, #15
 8004448:	e0822001 	add	r2, r2, r1
 800444c:	e20000f0 	and	r0, r0, #240	; 0xf0
 8004450:	e1822600 	orr	r2, r2, r0, lsl #12
 8004454:	eaffff7f 	b	8004258 <__gnu_unwind_execute+0x140>
 8004458:	e1a00005 	mov	r0, r5
 800445c:	ebffff08 	bl	8004084 <next_unwind_byte>
 8004460:	e200200f 	and	r2, r0, #15
 8004464:	e2822001 	add	r2, r2, #1
 8004468:	e20000f0 	and	r0, r0, #240	; 0xf0
 800446c:	e3a01003 	mov	r1, #3
 8004470:	e1822600 	orr	r2, r2, r0, lsl #12
 8004474:	eaffff77 	b	8004258 <__gnu_unwind_execute+0x140>
 8004478:	e1a00005 	mov	r0, r5
 800447c:	ebffff00 	bl	8004084 <next_unwind_byte>
 8004480:	e2502000 	subs	r2, r0, #0
 8004484:	0affff46 	beq	80041a4 <__gnu_unwind_execute+0x8c>
 8004488:	e21230f0 	ands	r3, r2, #240	; 0xf0
 800448c:	1affff44 	bne	80041a4 <__gnu_unwind_execute+0x8c>
 8004490:	e1a00007 	mov	r0, r7
 8004494:	e3a01004 	mov	r1, #4
 8004498:	ebfffd80 	bl	8003aa0 <_Unwind_VRS_Pop>
 800449c:	e3500000 	cmp	r0, #0
 80044a0:	1affff3f 	bne	80041a4 <__gnu_unwind_execute+0x8c>
 80044a4:	eaffff20 	b	800412c <__gnu_unwind_execute+0x14>
 80044a8:	e200200f 	and	r2, r0, #15
 80044ac:	e2822001 	add	r2, r2, #1
 80044b0:	e3a01003 	mov	r1, #3
 80044b4:	e382280a 	orr	r2, r2, #655360	; 0xa0000
 80044b8:	eaffff66 	b	8004258 <__gnu_unwind_execute+0x140>
 80044bc:	e1a00005 	mov	r0, r5
 80044c0:	ebfffeef 	bl	8004084 <next_unwind_byte>
 80044c4:	e20020f0 	and	r2, r0, #240	; 0xf0
 80044c8:	e200300f 	and	r3, r0, #15
 80044cc:	e2822010 	add	r2, r2, #16
 80044d0:	e2833001 	add	r3, r3, #1
 80044d4:	e1832602 	orr	r2, r3, r2, lsl #12
 80044d8:	eaffff2b 	b	800418c <__gnu_unwind_execute+0x74>

080044dc <__gnu_unwind_frame>:
 80044dc:	e3a0c003 	mov	ip, #3
 80044e0:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 80044e4:	e590304c 	ldr	r3, [r0, #76]	; 0x4c
 80044e8:	e24dd014 	sub	sp, sp, #20
 80044ec:	e5932004 	ldr	r2, [r3, #4]
 80044f0:	e5cdc00c 	strb	ip, [sp, #12]
 80044f4:	e5d3c007 	ldrb	ip, [r3, #7]
 80044f8:	e1a02402 	lsl	r2, r2, #8
 80044fc:	e2833008 	add	r3, r3, #8
 8004500:	e1a00001 	mov	r0, r1
 8004504:	e28d1004 	add	r1, sp, #4
 8004508:	e58d2004 	str	r2, [sp, #4]
 800450c:	e5cdc00d 	strb	ip, [sp, #13]
 8004510:	e58d3008 	str	r3, [sp, #8]
 8004514:	ebfffeff 	bl	8004118 <__gnu_unwind_execute>
 8004518:	e28dd014 	add	sp, sp, #20
 800451c:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 8004520:	e12fff1e 	bx	lr

08004524 <_Unwind_GetRegionStart>:
 8004524:	e92d4008 	push	{r3, lr}
 8004528:	ebfffef9 	bl	8004114 <unwind_UCB_from_context>
 800452c:	e8bd4008 	pop	{r3, lr}
 8004530:	e5900048 	ldr	r0, [r0, #72]	; 0x48
 8004534:	e12fff1e 	bx	lr

08004538 <_Unwind_GetLanguageSpecificData>:
 8004538:	e92d4008 	push	{r3, lr}
 800453c:	ebfffef4 	bl	8004114 <unwind_UCB_from_context>
 8004540:	e590304c 	ldr	r3, [r0, #76]	; 0x4c
 8004544:	e5d30007 	ldrb	r0, [r3, #7]
 8004548:	e0830100 	add	r0, r3, r0, lsl #2
 800454c:	e2800008 	add	r0, r0, #8
 8004550:	e8bd4008 	pop	{r3, lr}
 8004554:	e12fff1e 	bx	lr

08004558 <_Unwind_GetDataRelBase>:
 8004558:	e92d4008 	push	{r3, lr}
 800455c:	eb000001 	bl	8004568 <abort>

08004560 <_Unwind_GetTextRelBase>:
 8004560:	e92d4008 	push	{r3, lr}
 8004564:	ebffffff 	bl	8004568 <abort>

08004568 <abort>:
 8004568:	e92d4008 	push	{r3, lr}
 800456c:	e3a00006 	mov	r0, #6
 8004570:	eb000063 	bl	8004704 <raise>
 8004574:	e3a00001 	mov	r0, #1
 8004578:	eb000086 	bl	8004798 <_exit>

0800457c <memcpy>:
 800457c:	e352000f 	cmp	r2, #15
 8004580:	e92d4070 	push	{r4, r5, r6, lr}
 8004584:	9a000029 	bls	8004630 <memcpy+0xb4>
 8004588:	e1803001 	orr	r3, r0, r1
 800458c:	e3130003 	tst	r3, #3
 8004590:	1a000031 	bne	800465c <memcpy+0xe0>
 8004594:	e1a0e002 	mov	lr, r2
 8004598:	e280c010 	add	ip, r0, #16
 800459c:	e2813010 	add	r3, r1, #16
 80045a0:	e5134010 	ldr	r4, [r3, #-16]
 80045a4:	e50c4010 	str	r4, [ip, #-16]
 80045a8:	e513400c 	ldr	r4, [r3, #-12]
 80045ac:	e50c400c 	str	r4, [ip, #-12]
 80045b0:	e5134008 	ldr	r4, [r3, #-8]
 80045b4:	e50c4008 	str	r4, [ip, #-8]
 80045b8:	e24ee010 	sub	lr, lr, #16
 80045bc:	e5134004 	ldr	r4, [r3, #-4]
 80045c0:	e35e000f 	cmp	lr, #15
 80045c4:	e50c4004 	str	r4, [ip, #-4]
 80045c8:	e2833010 	add	r3, r3, #16
 80045cc:	e28cc010 	add	ip, ip, #16
 80045d0:	8afffff2 	bhi	80045a0 <memcpy+0x24>
 80045d4:	e2423010 	sub	r3, r2, #16
 80045d8:	e3c3300f 	bic	r3, r3, #15
 80045dc:	e202600f 	and	r6, r2, #15
 80045e0:	e2833010 	add	r3, r3, #16
 80045e4:	e3560003 	cmp	r6, #3
 80045e8:	e0811003 	add	r1, r1, r3
 80045ec:	e0803003 	add	r3, r0, r3
 80045f0:	9a00001b 	bls	8004664 <memcpy+0xe8>
 80045f4:	e1a04001 	mov	r4, r1
 80045f8:	e1a0c006 	mov	ip, r6
 80045fc:	e243e004 	sub	lr, r3, #4
 8004600:	e24cc004 	sub	ip, ip, #4
 8004604:	e4945004 	ldr	r5, [r4], #4
 8004608:	e35c0003 	cmp	ip, #3
 800460c:	e5ae5004 	str	r5, [lr, #4]!
 8004610:	8afffffa 	bhi	8004600 <memcpy+0x84>
 8004614:	e246c004 	sub	ip, r6, #4
 8004618:	e3ccc003 	bic	ip, ip, #3
 800461c:	e28cc004 	add	ip, ip, #4
 8004620:	e083300c 	add	r3, r3, ip
 8004624:	e081100c 	add	r1, r1, ip
 8004628:	e2022003 	and	r2, r2, #3
 800462c:	ea000000 	b	8004634 <memcpy+0xb8>
 8004630:	e1a03000 	mov	r3, r0
 8004634:	e3520000 	cmp	r2, #0
 8004638:	0a000005 	beq	8004654 <memcpy+0xd8>
 800463c:	e2433001 	sub	r3, r3, #1
 8004640:	e0812002 	add	r2, r1, r2
 8004644:	e4d1c001 	ldrb	ip, [r1], #1
 8004648:	e1510002 	cmp	r1, r2
 800464c:	e5e3c001 	strb	ip, [r3, #1]!
 8004650:	1afffffb 	bne	8004644 <memcpy+0xc8>
 8004654:	e8bd4070 	pop	{r4, r5, r6, lr}
 8004658:	e12fff1e 	bx	lr
 800465c:	e1a03000 	mov	r3, r0
 8004660:	eafffff5 	b	800463c <memcpy+0xc0>
 8004664:	e1a02006 	mov	r2, r6
 8004668:	eafffff1 	b	8004634 <memcpy+0xb8>

0800466c <_raise_r>:
 800466c:	e351001f 	cmp	r1, #31
 8004670:	e92d4038 	push	{r3, r4, r5, lr}
 8004674:	e1a05000 	mov	r5, r0
 8004678:	83a03016 	movhi	r3, #22
 800467c:	83e00000 	mvnhi	r0, #0
 8004680:	85853000 	strhi	r3, [r5]
 8004684:	8a000013 	bhi	80046d8 <_raise_r+0x6c>
 8004688:	e59522dc 	ldr	r2, [r5, #732]	; 0x2dc
 800468c:	e3520000 	cmp	r2, #0
 8004690:	e1a04001 	mov	r4, r1
 8004694:	0a000013 	beq	80046e8 <_raise_r+0x7c>
 8004698:	e7923101 	ldr	r3, [r2, r1, lsl #2]
 800469c:	e3530000 	cmp	r3, #0
 80046a0:	0a000010 	beq	80046e8 <_raise_r+0x7c>
 80046a4:	e3530001 	cmp	r3, #1
 80046a8:	0a00000c 	beq	80046e0 <_raise_r+0x74>
 80046ac:	e3730001 	cmn	r3, #1
 80046b0:	03a03016 	moveq	r3, #22
 80046b4:	03a00001 	moveq	r0, #1
 80046b8:	05853000 	streq	r3, [r5]
 80046bc:	0a000005 	beq	80046d8 <_raise_r+0x6c>
 80046c0:	e3a05000 	mov	r5, #0
 80046c4:	e1a00001 	mov	r0, r1
 80046c8:	e7825101 	str	r5, [r2, r1, lsl #2]
 80046cc:	e1a0e00f 	mov	lr, pc
 80046d0:	e12fff13 	bx	r3
 80046d4:	e1a00005 	mov	r0, r5
 80046d8:	e8bd4038 	pop	{r3, r4, r5, lr}
 80046dc:	e12fff1e 	bx	lr
 80046e0:	e3a00000 	mov	r0, #0
 80046e4:	eafffffb 	b	80046d8 <_raise_r+0x6c>
 80046e8:	e1a00005 	mov	r0, r5
 80046ec:	eb000019 	bl	8004758 <_getpid_r>
 80046f0:	e1a02004 	mov	r2, r4
 80046f4:	e1a01000 	mov	r1, r0
 80046f8:	e1a00005 	mov	r0, r5
 80046fc:	eb000005 	bl	8004718 <_kill_r>
 8004700:	eafffff4 	b	80046d8 <_raise_r+0x6c>

08004704 <raise>:
 8004704:	e59f3008 	ldr	r3, [pc, #8]	; 8004714 <raise+0x10>
 8004708:	e1a01000 	mov	r1, r0
 800470c:	e5930000 	ldr	r0, [r3]
 8004710:	eaffffd5 	b	800466c <_raise_r>
 8004714:	20000500 	.word	0x20000500

08004718 <_kill_r>:
 8004718:	e92d4038 	push	{r3, r4, r5, lr}
 800471c:	e3a03000 	mov	r3, #0
 8004720:	e59f402c 	ldr	r4, [pc, #44]	; 8004754 <_kill_r+0x3c>
 8004724:	e1a05000 	mov	r5, r0
 8004728:	e1a00001 	mov	r0, r1
 800472c:	e1a01002 	mov	r1, r2
 8004730:	e5843000 	str	r3, [r4]
 8004734:	eb000011 	bl	8004780 <_kill>
 8004738:	e3700001 	cmn	r0, #1
 800473c:	1a000002 	bne	800474c <_kill_r+0x34>
 8004740:	e5943000 	ldr	r3, [r4]
 8004744:	e3530000 	cmp	r3, #0
 8004748:	15853000 	strne	r3, [r5]
 800474c:	e8bd4038 	pop	{r3, r4, r5, lr}
 8004750:	e12fff1e 	bx	lr
 8004754:	20001050 	.word	0x20001050

08004758 <_getpid_r>:
 8004758:	e92d4008 	push	{r3, lr}
 800475c:	eb000001 	bl	8004768 <_getpid>
 8004760:	e8bd4008 	pop	{r3, lr}
 8004764:	e12fff1e 	bx	lr

08004768 <_getpid>:
 8004768:	e3a02058 	mov	r2, #88	; 0x58
 800476c:	e59f3008 	ldr	r3, [pc, #8]	; 800477c <_getpid+0x14>
 8004770:	e3e00000 	mvn	r0, #0
 8004774:	e5832000 	str	r2, [r3]
 8004778:	e12fff1e 	bx	lr
 800477c:	20001050 	.word	0x20001050

08004780 <_kill>:
 8004780:	e3a02058 	mov	r2, #88	; 0x58
 8004784:	e59f3008 	ldr	r3, [pc, #8]	; 8004794 <_kill+0x14>
 8004788:	e3e00000 	mvn	r0, #0
 800478c:	e5832000 	str	r2, [r3]
 8004790:	e12fff1e 	bx	lr
 8004794:	20001050 	.word	0x20001050

08004798 <_exit>:
 8004798:	eafffffe 	b	8004798 <_exit>

0800479c <_init>:
 800479c:	e1a0c00d 	mov	ip, sp
 80047a0:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
 80047a4:	e24cb004 	sub	fp, ip, #4
 80047a8:	e24bd028 	sub	sp, fp, #40	; 0x28
 80047ac:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
 80047b0:	e12fff1e 	bx	lr

080047b4 <_fini>:
 80047b4:	e1a0c00d 	mov	ip, sp
 80047b8:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
 80047bc:	e24cb004 	sub	fp, ip, #4
 80047c0:	e24bd028 	sub	sp, fp, #40	; 0x28
 80047c4:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
 80047c8:	e12fff1e 	bx	lr
 80047cc:	453e3e3e 	.word	0x453e3e3e
 80047d0:	72652020 	.word	0x72652020
 80047d4:	20726f72 	.word	0x20726f72
 80047d8:	65646f63 	.word	0x65646f63
 80047dc:	3a752520 	.word	0x3a752520
 80047e0:	000a7525 	.word	0x000a7525
 80047e4:	433e3e3e 	.word	0x433e3e3e
 80047e8:	69250020 	.word	0x69250020
 80047ec:	20692520 	.word	0x20692520
 80047f0:	25206925 	.word	0x25206925
 80047f4:	25002069 	.word	0x25002069
 80047f8:	69252069 	.word	0x69252069
 80047fc:	20752520 	.word	0x20752520
 8004800:	00206925 	.word	0x00206925
 8004804:	3e000a0a 	.word	0x3e000a0a
 8004808:	204c3e3e 	.word	0x204c3e3e
 800480c:	20692500 	.word	0x20692500
 8004810:	25206925 	.word	0x25206925
 8004814:	75252075 	.word	0x75252075
 8004818:	3e3e0020 	.word	0x3e3e0020
 800481c:	00204f3e 	.word	0x00204f3e
 8004820:	493e3e3e 	.word	0x493e3e3e
 8004824:	3e3e0020 	.word	0x3e3e0020
 8004828:	0a002053 	.word	0x0a002053
 800482c:	636c6577 	.word	0x636c6577
 8004830:	20656d6f 	.word	0x20656d6f
 8004834:	53206f74 	.word	0x53206f74
 8004838:	68757a75 	.word	0x68757a75
 800483c:	20534f61 	.word	0x20534f61
 8004840:	205e5f5e 	.word	0x205e5f5e
 8004844:	2e302e32 	.word	0x2e302e32
 8004848:	55420a36 	.word	0x55420a36
 800484c:	20444c49 	.word	0x20444c49
 8004850:	206e754a 	.word	0x206e754a
 8004854:	32203820 	.word	0x32203820
 8004858:	20363130 	.word	0x20363130
 800485c:	303a3931 	.word	0x303a3931
 8004860:	39343a37 	.word	0x39343a37
 8004864:	6e65000a 	.word	0x6e65000a
 8004868:	65646f63 	.word	0x65646f63
 800486c:	203a2072 	.word	0x203a2072
 8004870:	25207525 	.word	0x25207525
 8004874:	0a75      	.short	0x0a75
 8004876:	00          	.byte	0x00
 8004877:	73          	.byte	0x73
 8004878:	6f696474 	.word	0x6f696474
 800487c:	696e6920 	.word	0x696e6920
 8004880:	6f642074 	.word	0x6f642074
 8004884:	000a656e 	.word	0x000a656e
 8004888:	00000043 	.word	0x00000043

0800488c <__EH_FRAME_BEGIN__>:
 800488c:	00000000                                ....
