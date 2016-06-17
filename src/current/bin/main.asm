
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
 80001c6:	f002 bc53 	b.w	8002a70 <drv8834_run>

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
 80001e0:	f001 fcb8 	bl	8001b54 <rgb_get>
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
 800020e:	f001 fca1 	bl	8001b54 <rgb_get>
 8000212:	ea4f 0a45 	mov.w	sl, r5, lsl #1
 8000216:	4450      	add	r0, sl
 8000218:	4b87      	ldr	r3, [pc, #540]	; (8000438 <_ZN6CRobot16line_sensor_readEv+0x264>)
 800021a:	f853 2025 	ldr.w	r2, [r3, r5, lsl #2]
 800021e:	8ec3      	ldrh	r3, [r0, #54]	; 0x36
 8000220:	1a9b      	subs	r3, r3, r2
 8000222:	86c3      	strh	r3, [r0, #54]	; 0x36
 8000224:	f001 fc96 	bl	8001b54 <rgb_get>
 8000228:	4b84      	ldr	r3, [pc, #528]	; (800043c <_ZN6CRobot16line_sensor_readEv+0x268>)
 800022a:	f853 2025 	ldr.w	r2, [r3, r5, lsl #2]
 800022e:	f830 3015 	ldrh.w	r3, [r0, r5, lsl #1]
 8000232:	1a9b      	subs	r3, r3, r2
 8000234:	f820 3015 	strh.w	r3, [r0, r5, lsl #1]
 8000238:	f001 fc8c 	bl	8001b54 <rgb_get>
 800023c:	4b80      	ldr	r3, [pc, #512]	; (8000440 <_ZN6CRobot16line_sensor_readEv+0x26c>)
 800023e:	4450      	add	r0, sl
 8000240:	f853 2025 	ldr.w	r2, [r3, r5, lsl #2]
 8000244:	8a43      	ldrh	r3, [r0, #18]
 8000246:	1a9b      	subs	r3, r3, r2
 8000248:	8243      	strh	r3, [r0, #18]
 800024a:	f001 fc83 	bl	8001b54 <rgb_get>
 800024e:	4b7d      	ldr	r3, [pc, #500]	; (8000444 <_ZN6CRobot16line_sensor_readEv+0x270>)
 8000250:	4450      	add	r0, sl
 8000252:	f853 2025 	ldr.w	r2, [r3, r5, lsl #2]
 8000256:	8c83      	ldrh	r3, [r0, #36]	; 0x24
 8000258:	1a9b      	subs	r3, r3, r2
 800025a:	8483      	strh	r3, [r0, #36]	; 0x24
 800025c:	f001 fc7a 	bl	8001b54 <rgb_get>
 8000260:	eb00 0045 	add.w	r0, r0, r5, lsl #1
 8000264:	f9b0 3036 	ldrsh.w	r3, [r0, #54]	; 0x36
 8000268:	4499      	add	r9, r3
 800026a:	f001 fc73 	bl	8001b54 <rgb_get>
 800026e:	f930 3015 	ldrsh.w	r3, [r0, r5, lsl #1]
 8000272:	4498      	add	r8, r3
 8000274:	f001 fc6e 	bl	8001b54 <rgb_get>
 8000278:	eb00 0045 	add.w	r0, r0, r5, lsl #1
 800027c:	f9b0 3012 	ldrsh.w	r3, [r0, #18]
 8000280:	441f      	add	r7, r3
 8000282:	f001 fc67 	bl	8001b54 <rgb_get>
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
 80002a8:	f001 fc54 	bl	8001b54 <rgb_get>
 80002ac:	4682      	mov	sl, r0
 80002ae:	f001 fc51 	bl	8001b54 <rgb_get>
 80002b2:	f106 0318 	add.w	r3, r6, #24
 80002b6:	005b      	lsls	r3, r3, #1
 80002b8:	4418      	add	r0, r3
 80002ba:	449a      	add	sl, r3
 80002bc:	88c3      	ldrh	r3, [r0, #6]
 80002be:	ebc3 0309 	rsb	r3, r3, r9
 80002c2:	f8aa 3006 	strh.w	r3, [sl, #6]
 80002c6:	f001 fc45 	bl	8001b54 <rgb_get>
 80002ca:	4682      	mov	sl, r0
 80002cc:	f001 fc42 	bl	8001b54 <rgb_get>
 80002d0:	f830 3016 	ldrh.w	r3, [r0, r6, lsl #1]
 80002d4:	ebc8 0303 	rsb	r3, r8, r3
 80002d8:	f82a 3016 	strh.w	r3, [sl, r6, lsl #1]
 80002dc:	f001 fc3a 	bl	8001b54 <rgb_get>
 80002e0:	4682      	mov	sl, r0
 80002e2:	f001 fc37 	bl	8001b54 <rgb_get>
 80002e6:	f106 0308 	add.w	r3, r6, #8
 80002ea:	005b      	lsls	r3, r3, #1
 80002ec:	4418      	add	r0, r3
 80002ee:	449a      	add	sl, r3
 80002f0:	8843      	ldrh	r3, [r0, #2]
 80002f2:	1bdb      	subs	r3, r3, r7
 80002f4:	f8aa 3002 	strh.w	r3, [sl, #2]
 80002f8:	f001 fc2c 	bl	8001b54 <rgb_get>
 80002fc:	4682      	mov	sl, r0
 80002fe:	f001 fc29 	bl	8001b54 <rgb_get>
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
 8000320:	f001 fc18 	bl	8001b54 <rgb_get>
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
 8000450:	f001 fb84 	bl	8001b5c <rgb_read>
 8000454:	4620      	mov	r0, r4
 8000456:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800045a:	f7ff bebb 	b.w	80001d4 <_ZN6CRobot16line_sensor_readEv>

0800045e <_ZN6CRobot16line_sensor_initEv>:
 800045e:	b538      	push	{r3, r4, r5, lr}
 8000460:	4604      	mov	r4, r0
 8000462:	2500      	movs	r5, #0
 8000464:	f001 fb34 	bl	8001ad0 <rgb_init>
 8000468:	f001 fb78 	bl	8001b5c <rgb_read>
 800046c:	2192      	movs	r1, #146	; 0x92
 800046e:	2072      	movs	r0, #114	; 0x72
 8000470:	f104 025c 	add.w	r2, r4, #92	; 0x5c
 8000474:	f001 fb11 	bl	8001a9a <rgb_i2c_read_reg>
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
 80004ba:	f002 f99c 	bl	80027f6 <i2c_read_reg>
 80004be:	2129      	movs	r1, #41	; 0x29
 80004c0:	4605      	mov	r5, r0
 80004c2:	20d4      	movs	r0, #212	; 0xd4
 80004c4:	f002 f997 	bl	80027f6 <i2c_read_reg>
 80004c8:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 80004cc:	f8a4 0094 	strh.w	r0, [r4, #148]	; 0x94
 80004d0:	212a      	movs	r1, #42	; 0x2a
 80004d2:	20d4      	movs	r0, #212	; 0xd4
 80004d4:	f002 f98f 	bl	80027f6 <i2c_read_reg>
 80004d8:	212b      	movs	r1, #43	; 0x2b
 80004da:	4605      	mov	r5, r0
 80004dc:	20d4      	movs	r0, #212	; 0xd4
 80004de:	f002 f98a 	bl	80027f6 <i2c_read_reg>
 80004e2:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 80004e6:	f8a4 0096 	strh.w	r0, [r4, #150]	; 0x96
 80004ea:	212c      	movs	r1, #44	; 0x2c
 80004ec:	20d4      	movs	r0, #212	; 0xd4
 80004ee:	f002 f982 	bl	80027f6 <i2c_read_reg>
 80004f2:	212d      	movs	r1, #45	; 0x2d
 80004f4:	4605      	mov	r5, r0
 80004f6:	20d4      	movs	r0, #212	; 0xd4
 80004f8:	f002 f97d 	bl	80027f6 <i2c_read_reg>
 80004fc:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000500:	f8a4 0098 	strh.w	r0, [r4, #152]	; 0x98
 8000504:	2108      	movs	r1, #8
 8000506:	203c      	movs	r0, #60	; 0x3c
 8000508:	f002 f975 	bl	80027f6 <i2c_read_reg>
 800050c:	2109      	movs	r1, #9
 800050e:	4605      	mov	r5, r0
 8000510:	203c      	movs	r0, #60	; 0x3c
 8000512:	f002 f970 	bl	80027f6 <i2c_read_reg>
 8000516:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 800051a:	f8a4 008e 	strh.w	r0, [r4, #142]	; 0x8e
 800051e:	210a      	movs	r1, #10
 8000520:	203c      	movs	r0, #60	; 0x3c
 8000522:	f002 f968 	bl	80027f6 <i2c_read_reg>
 8000526:	210b      	movs	r1, #11
 8000528:	4605      	mov	r5, r0
 800052a:	203c      	movs	r0, #60	; 0x3c
 800052c:	f002 f963 	bl	80027f6 <i2c_read_reg>
 8000530:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000534:	f8a4 0090 	strh.w	r0, [r4, #144]	; 0x90
 8000538:	210c      	movs	r1, #12
 800053a:	203c      	movs	r0, #60	; 0x3c
 800053c:	f002 f95b 	bl	80027f6 <i2c_read_reg>
 8000540:	210d      	movs	r1, #13
 8000542:	4605      	mov	r5, r0
 8000544:	203c      	movs	r0, #60	; 0x3c
 8000546:	f002 f956 	bl	80027f6 <i2c_read_reg>
 800054a:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 800054e:	f8a4 0092 	strh.w	r0, [r4, #146]	; 0x92
 8000552:	2128      	movs	r1, #40	; 0x28
 8000554:	203c      	movs	r0, #60	; 0x3c
 8000556:	f002 f94e 	bl	80027f6 <i2c_read_reg>
 800055a:	2129      	movs	r1, #41	; 0x29
 800055c:	4605      	mov	r5, r0
 800055e:	203c      	movs	r0, #60	; 0x3c
 8000560:	f002 f949 	bl	80027f6 <i2c_read_reg>
 8000564:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000568:	f8a4 0088 	strh.w	r0, [r4, #136]	; 0x88
 800056c:	212a      	movs	r1, #42	; 0x2a
 800056e:	203c      	movs	r0, #60	; 0x3c
 8000570:	f002 f941 	bl	80027f6 <i2c_read_reg>
 8000574:	212b      	movs	r1, #43	; 0x2b
 8000576:	4605      	mov	r5, r0
 8000578:	203c      	movs	r0, #60	; 0x3c
 800057a:	f002 f93c 	bl	80027f6 <i2c_read_reg>
 800057e:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000582:	f8a4 008a 	strh.w	r0, [r4, #138]	; 0x8a
 8000586:	212c      	movs	r1, #44	; 0x2c
 8000588:	203c      	movs	r0, #60	; 0x3c
 800058a:	f002 f934 	bl	80027f6 <i2c_read_reg>
 800058e:	212d      	movs	r1, #45	; 0x2d
 8000590:	4605      	mov	r5, r0
 8000592:	203c      	movs	r0, #60	; 0x3c
 8000594:	f002 f92f 	bl	80027f6 <i2c_read_reg>
 8000598:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 800059c:	f8a4 008c 	strh.w	r0, [r4, #140]	; 0x8c
 80005a0:	2105      	movs	r1, #5
 80005a2:	203c      	movs	r0, #60	; 0x3c
 80005a4:	f002 f927 	bl	80027f6 <i2c_read_reg>
 80005a8:	2106      	movs	r1, #6
 80005aa:	4605      	mov	r5, r0
 80005ac:	203c      	movs	r0, #60	; 0x3c
 80005ae:	f002 f922 	bl	80027f6 <i2c_read_reg>
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
 800060e:	f002 f8f2 	bl	80027f6 <i2c_read_reg>
 8000612:	28d4      	cmp	r0, #212	; 0xd4
 8000614:	4605      	mov	r5, r0
 8000616:	d164      	bne.n	80006e2 <_ZN6CRobot12lsm9ds0_initEv+0xde>
 8000618:	203c      	movs	r0, #60	; 0x3c
 800061a:	210f      	movs	r1, #15
 800061c:	f002 f8eb 	bl	80027f6 <i2c_read_reg>
 8000620:	2849      	cmp	r0, #73	; 0x49
 8000622:	d160      	bne.n	80006e6 <_ZN6CRobot12lsm9ds0_initEv+0xe2>
 8000624:	4628      	mov	r0, r5
 8000626:	2120      	movs	r1, #32
 8000628:	22ff      	movs	r2, #255	; 0xff
 800062a:	f002 f8d1 	bl	80027d0 <i2c_write_reg>
 800062e:	4628      	mov	r0, r5
 8000630:	2123      	movs	r1, #35	; 0x23
 8000632:	2210      	movs	r2, #16
 8000634:	f002 f8cc 	bl	80027d0 <i2c_write_reg>
 8000638:	203c      	movs	r0, #60	; 0x3c
 800063a:	211f      	movs	r1, #31
 800063c:	2200      	movs	r2, #0
 800063e:	f002 f8c7 	bl	80027d0 <i2c_write_reg>
 8000642:	203c      	movs	r0, #60	; 0x3c
 8000644:	2120      	movs	r1, #32
 8000646:	2267      	movs	r2, #103	; 0x67
 8000648:	f002 f8c2 	bl	80027d0 <i2c_write_reg>
 800064c:	203c      	movs	r0, #60	; 0x3c
 800064e:	2121      	movs	r1, #33	; 0x21
 8000650:	2200      	movs	r2, #0
 8000652:	f002 f8bd 	bl	80027d0 <i2c_write_reg>
 8000656:	203c      	movs	r0, #60	; 0x3c
 8000658:	2124      	movs	r1, #36	; 0x24
 800065a:	22f4      	movs	r2, #244	; 0xf4
 800065c:	f002 f8b8 	bl	80027d0 <i2c_write_reg>
 8000660:	203c      	movs	r0, #60	; 0x3c
 8000662:	2125      	movs	r1, #37	; 0x25
 8000664:	2200      	movs	r2, #0
 8000666:	f002 f8b3 	bl	80027d0 <i2c_write_reg>
 800066a:	203c      	movs	r0, #60	; 0x3c
 800066c:	2126      	movs	r1, #38	; 0x26
 800066e:	2280      	movs	r2, #128	; 0x80
 8000670:	f002 f8ae 	bl	80027d0 <i2c_write_reg>
 8000674:	4620      	mov	r0, r4
 8000676:	f7ff ff1c 	bl	80004b2 <_ZN6CRobot12lsm9ds0_readEv>
 800067a:	2600      	movs	r6, #0
 800067c:	2540      	movs	r5, #64	; 0x40
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
 800069e:	2240      	movs	r2, #64	; 0x40
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
 8000738:	f000 fe6e 	bl	8001418 <printf_>
 800073c:	2400      	movs	r4, #0
 800073e:	1ceb      	adds	r3, r5, #3
 8000740:	429c      	cmp	r4, r3
 8000742:	d20f      	bcs.n	8000764 <abort_error_+0x38>
 8000744:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8000748:	f002 fb54 	bl	8002df4 <led_on>
 800074c:	2032      	movs	r0, #50	; 0x32
 800074e:	f001 fdd7 	bl	8002300 <timer_delay_ms>
 8000752:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8000756:	f002 fb57 	bl	8002e08 <led_off>
 800075a:	2064      	movs	r0, #100	; 0x64
 800075c:	f001 fdd0 	bl	8002300 <timer_delay_ms>
 8000760:	3401      	adds	r4, #1
 8000762:	e7ec      	b.n	800073e <abort_error_+0x12>
 8000764:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 8000768:	f001 fdca 	bl	8002300 <timer_delay_ms>
 800076c:	e7e1      	b.n	8000732 <abort_error_+0x6>
 800076e:	bf00      	nop
 8000770:	08004a80 	.word	0x08004a80

08000774 <_Z13robot_on_linev>:
 8000774:	b508      	push	{r3, lr}
 8000776:	4b04      	ldr	r3, [pc, #16]	; (8000788 <_Z13robot_on_linev+0x14>)
 8000778:	6818      	ldr	r0, [r3, #0]
 800077a:	f7ff fd1c 	bl	80001b6 <_ZN6CRobot24get_line_position_sensorEv>
 800077e:	7800      	ldrb	r0, [r0, #0]
 8000780:	1e43      	subs	r3, r0, #1
 8000782:	4258      	negs	r0, r3
 8000784:	4158      	adcs	r0, r3
 8000786:	bd08      	pop	{r3, pc}
 8000788:	2000052c 	.word	0x2000052c

0800078c <_ZN9CObstacle4initEP6CRobot>:
 800078c:	b121      	cbz	r1, 8000798 <_ZN9CObstacle4initEP6CRobot+0xc>
 800078e:	2300      	movs	r3, #0
 8000790:	6003      	str	r3, [r0, #0]
 8000792:	4b02      	ldr	r3, [pc, #8]	; (800079c <_ZN9CObstacle4initEP6CRobot+0x10>)
 8000794:	6041      	str	r1, [r0, #4]
 8000796:	6019      	str	r1, [r3, #0]
 8000798:	4770      	bx	lr
 800079a:	bf00      	nop
 800079c:	2000052c 	.word	0x2000052c

080007a0 <_ZN9CObstacle12rotate_robotEi>:
 80007a0:	b538      	push	{r3, r4, r5, lr}
 80007a2:	4605      	mov	r5, r0
 80007a4:	ed2d 8b02 	vpush	{d8}
 80007a8:	f240 644a 	movw	r4, #1610	; 0x64a
 80007ac:	6840      	ldr	r0, [r0, #4]
 80007ae:	ed9f 8a22 	vldr	s16, [pc, #136]	; 8000838 <_ZN9CObstacle12rotate_robotEi+0x98>
 80007b2:	434c      	muls	r4, r1
 80007b4:	215a      	movs	r1, #90	; 0x5a
 80007b6:	fb94 f4f1 	sdiv	r4, r4, r1
 80007ba:	f7ff fd06 	bl	80001ca <_ZN6CRobot9reset_imuEv>
 80007be:	6868      	ldr	r0, [r5, #4]
 80007c0:	f7ff fcfd 	bl	80001be <_ZN6CRobot14get_imu_sensorEv>
 80007c4:	6883      	ldr	r3, [r0, #8]
 80007c6:	ea84 72e4 	eor.w	r2, r4, r4, asr #31
 80007ca:	2b00      	cmp	r3, #0
 80007cc:	bfb8      	it	lt
 80007ce:	425b      	neglt	r3, r3
 80007d0:	eba2 72e4 	sub.w	r2, r2, r4, asr #31
 80007d4:	4293      	cmp	r3, r2
 80007d6:	da22      	bge.n	800081e <_ZN9CObstacle12rotate_robotEi+0x7e>
 80007d8:	eddf 7a18 	vldr	s15, [pc, #96]	; 800083c <_ZN9CObstacle12rotate_robotEi+0x9c>
 80007dc:	6868      	ldr	r0, [r5, #4]
 80007de:	ee38 8a27 	vadd.f32	s16, s16, s15
 80007e2:	eddf 7a17 	vldr	s15, [pc, #92]	; 8000840 <_ZN9CObstacle12rotate_robotEi+0xa0>
 80007e6:	eeb4 8a67 	vcmp.f32	s16, s15
 80007ea:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80007ee:	bfc8      	it	gt
 80007f0:	eeb0 8a67 	vmovgt.f32	s16, s15
 80007f4:	eddf 7a13 	vldr	s15, [pc, #76]	; 8000844 <_ZN9CObstacle12rotate_robotEi+0xa4>
 80007f8:	ee68 7a27 	vmul.f32	s15, s16, s15
 80007fc:	2c00      	cmp	r4, #0
 80007fe:	eefd 7ae7 	vcvt.s32.f32	s15, s15
 8000802:	ee17 3a90 	vmov	r3, s15
 8000806:	f1c3 0200 	rsb	r2, r3, #0
 800080a:	bfd6      	itet	le
 800080c:	4611      	movle	r1, r2
 800080e:	4619      	movgt	r1, r3
 8000810:	461a      	movle	r2, r3
 8000812:	f7ff fcd6 	bl	80001c2 <_ZN6CRobot10set_motorsEii>
 8000816:	200a      	movs	r0, #10
 8000818:	f001 fd72 	bl	8002300 <timer_delay_ms>
 800081c:	e7cf      	b.n	80007be <_ZN9CObstacle12rotate_robotEi+0x1e>
 800081e:	2100      	movs	r1, #0
 8000820:	6868      	ldr	r0, [r5, #4]
 8000822:	460a      	mov	r2, r1
 8000824:	f7ff fccd 	bl	80001c2 <_ZN6CRobot10set_motorsEii>
 8000828:	ecbd 8b02 	vpop	{d8}
 800082c:	20c8      	movs	r0, #200	; 0xc8
 800082e:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8000832:	f001 bd65 	b.w	8002300 <timer_delay_ms>
 8000836:	bf00      	nop
 8000838:	00000000 	.word	0x00000000
 800083c:	3c23d70a 	.word	0x3c23d70a
 8000840:	3e4ccccd 	.word	0x3e4ccccd
 8000844:	42c80000 	.word	0x42c80000

08000848 <_ZN9CObstacle10go_forwardEijPFhvE>:
 8000848:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800084c:	460c      	mov	r4, r1
 800084e:	ed2d 8b06 	vpush	{d8-d10}
 8000852:	4605      	mov	r5, r0
 8000854:	4617      	mov	r7, r2
 8000856:	461e      	mov	r6, r3
 8000858:	f001 fd44 	bl	80022e4 <timer_get_time>
 800085c:	ee07 4a90 	vmov	s15, r4
 8000860:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 8000864:	4680      	mov	r8, r0
 8000866:	eef5 7ac0 	vcmpe.f32	s15, #0.0
 800086a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800086e:	bf48      	it	mi
 8000870:	4264      	negmi	r4, r4
 8000872:	6868      	ldr	r0, [r5, #4]
 8000874:	bf4c      	ite	mi
 8000876:	eddf 9a31 	vldrmi	s19, [pc, #196]	; 800093c <_ZN9CObstacle10go_forwardEijPFhvE+0xf4>
 800087a:	eddf 9a31 	vldrpl	s19, [pc, #196]	; 8000940 <_ZN9CObstacle10go_forwardEijPFhvE+0xf8>
 800087e:	f7ff fca4 	bl	80001ca <_ZN6CRobot9reset_imuEv>
 8000882:	2c00      	cmp	r4, #0
 8000884:	d04f      	beq.n	8000926 <_ZN9CObstacle10go_forwardEijPFhvE+0xde>
 8000886:	eddf 8a2f 	vldr	s17, [pc, #188]	; 8000944 <_ZN9CObstacle10go_forwardEijPFhvE+0xfc>
 800088a:	eeb0 8a68 	vmov.f32	s16, s17
 800088e:	eeb0 aa68 	vmov.f32	s20, s17
 8000892:	e004      	b.n	800089e <_ZN9CObstacle10go_forwardEijPFhvE+0x56>
 8000894:	200a      	movs	r0, #10
 8000896:	f001 fd33 	bl	8002300 <timer_delay_ms>
 800089a:	eeb0 8a49 	vmov.f32	s16, s18
 800089e:	f001 fd21 	bl	80022e4 <timer_get_time>
 80008a2:	eb08 0307 	add.w	r3, r8, r7
 80008a6:	4298      	cmp	r0, r3
 80008a8:	d23d      	bcs.n	8000926 <_ZN9CObstacle10go_forwardEijPFhvE+0xde>
 80008aa:	6868      	ldr	r0, [r5, #4]
 80008ac:	f7ff fc87 	bl	80001be <_ZN6CRobot14get_imu_sensorEv>
 80008b0:	ed90 9a02 	vldr	s18, [r0, #8]
 80008b4:	eddf 7a24 	vldr	s15, [pc, #144]	; 8000948 <_ZN9CObstacle10go_forwardEijPFhvE+0x100>
 80008b8:	ed9f 7a24 	vldr	s14, [pc, #144]	; 800094c <_ZN9CObstacle10go_forwardEijPFhvE+0x104>
 80008bc:	6868      	ldr	r0, [r5, #4]
 80008be:	eeb8 9ac9 	vcvt.f32.s32	s18, s18
 80008c2:	ee3a 9a49 	vsub.f32	s18, s20, s18
 80008c6:	ee39 8a48 	vsub.f32	s16, s18, s16
 80008ca:	ee28 8a27 	vmul.f32	s16, s16, s15
 80008ce:	eddf 7a20 	vldr	s15, [pc, #128]	; 8000950 <_ZN9CObstacle10go_forwardEijPFhvE+0x108>
 80008d2:	ee09 8a27 	vmla.f32	s16, s18, s15
 80008d6:	ee07 4a90 	vmov	s15, r4
 80008da:	eef8 6ae7 	vcvt.f32.s32	s13, s15
 80008de:	eddf 7a1d 	vldr	s15, [pc, #116]	; 8000954 <_ZN9CObstacle10go_forwardEijPFhvE+0x10c>
 80008e2:	ee66 7aa7 	vmul.f32	s15, s13, s15
 80008e6:	ee48 7a87 	vmla.f32	s15, s17, s14
 80008ea:	eef4 7ae6 	vcmpe.f32	s15, s13
 80008ee:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80008f2:	eef0 8a67 	vmov.f32	s17, s15
 80008f6:	bf48      	it	mi
 80008f8:	ee77 8a87 	vaddmi.f32	s17, s15, s14
 80008fc:	ee69 7aa8 	vmul.f32	s15, s19, s17
 8000900:	ee37 7ac8 	vsub.f32	s14, s15, s16
 8000904:	ee37 8a88 	vadd.f32	s16, s15, s16
 8000908:	eefd 7ac7 	vcvt.s32.f32	s15, s14
 800090c:	ee17 1a90 	vmov	r1, s15
 8000910:	eefd 7ac8 	vcvt.s32.f32	s15, s16
 8000914:	ee17 2a90 	vmov	r2, s15
 8000918:	f7ff fc53 	bl	80001c2 <_ZN6CRobot10set_motorsEii>
 800091c:	2e00      	cmp	r6, #0
 800091e:	d0b9      	beq.n	8000894 <_ZN9CObstacle10go_forwardEijPFhvE+0x4c>
 8000920:	47b0      	blx	r6
 8000922:	2800      	cmp	r0, #0
 8000924:	d0b6      	beq.n	8000894 <_ZN9CObstacle10go_forwardEijPFhvE+0x4c>
 8000926:	2000      	movs	r0, #0
 8000928:	4601      	mov	r1, r0
 800092a:	f002 f8a1 	bl	8002a70 <drv8834_run>
 800092e:	ecbd 8b06 	vpop	{d8-d10}
 8000932:	2064      	movs	r0, #100	; 0x64
 8000934:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8000938:	f001 bce2 	b.w	8002300 <timer_delay_ms>
 800093c:	bf800000 	.word	0xbf800000
 8000940:	3f800000 	.word	0x3f800000
 8000944:	00000000 	.word	0x00000000
 8000948:	3dcccccd 	.word	0x3dcccccd
 800094c:	3f4ccccd 	.word	0x3f4ccccd
 8000950:	3cf5c28f 	.word	0x3cf5c28f
 8000954:	3e4ccccc 	.word	0x3e4ccccc

08000958 <_ZN9CObstacle18go_forward_encoderEijPFhvE>:
 8000958:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800095a:	1e0d      	subs	r5, r1, #0
 800095c:	ed2d 8b06 	vpush	{d8-d10}
 8000960:	bfb8      	it	lt
 8000962:	426d      	neglt	r5, r5
 8000964:	4606      	mov	r6, r0
 8000966:	6840      	ldr	r0, [r0, #4]
 8000968:	bfb4      	ite	lt
 800096a:	eddf 9a3e 	vldrlt	s19, [pc, #248]	; 8000a64 <_ZN9CObstacle18go_forward_encoderEijPFhvE+0x10c>
 800096e:	eddf 9a3e 	vldrge	s19, [pc, #248]	; 8000a68 <_ZN9CObstacle18go_forward_encoderEijPFhvE+0x110>
 8000972:	4614      	mov	r4, r2
 8000974:	461f      	mov	r7, r3
 8000976:	f7ff fc28 	bl	80001ca <_ZN6CRobot9reset_imuEv>
 800097a:	f002 fa7b 	bl	8002e74 <encoder_get_distance>
 800097e:	b955      	cbnz	r5, 8000996 <_ZN9CObstacle18go_forward_encoderEijPFhvE+0x3e>
 8000980:	2000      	movs	r0, #0
 8000982:	4601      	mov	r1, r0
 8000984:	f002 f874 	bl	8002a70 <drv8834_run>
 8000988:	ecbd 8b06 	vpop	{d8-d10}
 800098c:	2064      	movs	r0, #100	; 0x64
 800098e:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8000992:	f001 bcb5 	b.w	8002300 <timer_delay_ms>
 8000996:	ed9f 8a35 	vldr	s16, [pc, #212]	; 8000a6c <_ZN9CObstacle18go_forward_encoderEijPFhvE+0x114>
 800099a:	4404      	add	r4, r0
 800099c:	eef0 8a48 	vmov.f32	s17, s16
 80009a0:	eeb0 aa48 	vmov.f32	s20, s16
 80009a4:	f002 fa66 	bl	8002e74 <encoder_get_distance>
 80009a8:	42a0      	cmp	r0, r4
 80009aa:	d2e9      	bcs.n	8000980 <_ZN9CObstacle18go_forward_encoderEijPFhvE+0x28>
 80009ac:	6870      	ldr	r0, [r6, #4]
 80009ae:	f7ff fc06 	bl	80001be <_ZN6CRobot14get_imu_sensorEv>
 80009b2:	ed90 9a02 	vldr	s18, [r0, #8]
 80009b6:	eddf 7a2e 	vldr	s15, [pc, #184]	; 8000a70 <_ZN9CObstacle18go_forward_encoderEijPFhvE+0x118>
 80009ba:	eeb8 9ac9 	vcvt.f32.s32	s18, s18
 80009be:	ee3a 9a49 	vsub.f32	s18, s20, s18
 80009c2:	ee79 8a68 	vsub.f32	s17, s18, s17
 80009c6:	ee68 8aa7 	vmul.f32	s17, s17, s15
 80009ca:	eddf 7a2a 	vldr	s15, [pc, #168]	; 8000a74 <_ZN9CObstacle18go_forward_encoderEijPFhvE+0x11c>
 80009ce:	ee49 8a27 	vmla.f32	s17, s18, s15
 80009d2:	f002 fa4f 	bl	8002e74 <encoder_get_distance>
 80009d6:	1a20      	subs	r0, r4, r0
 80009d8:	ee07 0a90 	vmov	s15, r0
 80009dc:	eef8 7a67 	vcvt.f32.u32	s15, s15
 80009e0:	ee17 0a90 	vmov	r0, s15
 80009e4:	f000 fe04 	bl	80015f0 <m_abs>
 80009e8:	eddf 7a23 	vldr	s15, [pc, #140]	; 8000a78 <_ZN9CObstacle18go_forward_encoderEijPFhvE+0x120>
 80009ec:	ee07 0a10 	vmov	s14, r0
 80009f0:	eeb4 7ae7 	vcmpe.f32	s14, s15
 80009f4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80009f8:	d525      	bpl.n	8000a46 <_ZN9CObstacle18go_forward_encoderEijPFhvE+0xee>
 80009fa:	eddf 7a20 	vldr	s15, [pc, #128]	; 8000a7c <_ZN9CObstacle18go_forward_encoderEijPFhvE+0x124>
 80009fe:	eeb4 8ae7 	vcmpe.f32	s16, s15
 8000a02:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000a06:	dd1e      	ble.n	8000a46 <_ZN9CObstacle18go_forward_encoderEijPFhvE+0xee>
 8000a08:	eddf 7a1d 	vldr	s15, [pc, #116]	; 8000a80 <_ZN9CObstacle18go_forward_encoderEijPFhvE+0x128>
 8000a0c:	ee38 8a67 	vsub.f32	s16, s16, s15
 8000a10:	ee69 7a88 	vmul.f32	s15, s19, s16
 8000a14:	6870      	ldr	r0, [r6, #4]
 8000a16:	ee37 7ae8 	vsub.f32	s14, s15, s17
 8000a1a:	ee77 8aa8 	vadd.f32	s17, s15, s17
 8000a1e:	eefd 7ac7 	vcvt.s32.f32	s15, s14
 8000a22:	ee17 1a90 	vmov	r1, s15
 8000a26:	eefd 7ae8 	vcvt.s32.f32	s15, s17
 8000a2a:	ee17 2a90 	vmov	r2, s15
 8000a2e:	f7ff fbc8 	bl	80001c2 <_ZN6CRobot10set_motorsEii>
 8000a32:	b117      	cbz	r7, 8000a3a <_ZN9CObstacle18go_forward_encoderEijPFhvE+0xe2>
 8000a34:	47b8      	blx	r7
 8000a36:	2800      	cmp	r0, #0
 8000a38:	d1a2      	bne.n	8000980 <_ZN9CObstacle18go_forward_encoderEijPFhvE+0x28>
 8000a3a:	200a      	movs	r0, #10
 8000a3c:	f001 fc60 	bl	8002300 <timer_delay_ms>
 8000a40:	eef0 8a49 	vmov.f32	s17, s18
 8000a44:	e7ae      	b.n	80009a4 <_ZN9CObstacle18go_forward_encoderEijPFhvE+0x4c>
 8000a46:	ee07 5a90 	vmov	s15, r5
 8000a4a:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 8000a4e:	eeb4 8ae7 	vcmpe.f32	s16, s15
 8000a52:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000a56:	d5db      	bpl.n	8000a10 <_ZN9CObstacle18go_forward_encoderEijPFhvE+0xb8>
 8000a58:	eddf 7a09 	vldr	s15, [pc, #36]	; 8000a80 <_ZN9CObstacle18go_forward_encoderEijPFhvE+0x128>
 8000a5c:	ee38 8a27 	vadd.f32	s16, s16, s15
 8000a60:	e7d6      	b.n	8000a10 <_ZN9CObstacle18go_forward_encoderEijPFhvE+0xb8>
 8000a62:	bf00      	nop
 8000a64:	bf800000 	.word	0xbf800000
 8000a68:	3f800000 	.word	0x3f800000
 8000a6c:	00000000 	.word	0x00000000
 8000a70:	3dcccccd 	.word	0x3dcccccd
 8000a74:	3cf5c28f 	.word	0x3cf5c28f
 8000a78:	42200000 	.word	0x42200000
 8000a7c:	428c0000 	.word	0x428c0000
 8000a80:	40000000 	.word	0x40000000

08000a84 <_ZN9CObstacle7processEv>:
 8000a84:	2100      	movs	r1, #0
 8000a86:	b510      	push	{r4, lr}
 8000a88:	460b      	mov	r3, r1
 8000a8a:	4604      	mov	r4, r0
 8000a8c:	2232      	movs	r2, #50	; 0x32
 8000a8e:	f7ff fedb 	bl	8000848 <_ZN9CObstacle10go_forwardEijPFhvE>
 8000a92:	4620      	mov	r0, r4
 8000a94:	221e      	movs	r2, #30
 8000a96:	2300      	movs	r3, #0
 8000a98:	f06f 0131 	mvn.w	r1, #49	; 0x31
 8000a9c:	f7ff ff5c 	bl	8000958 <_ZN9CObstacle18go_forward_encoderEijPFhvE>
 8000aa0:	4620      	mov	r0, r4
 8000aa2:	215a      	movs	r1, #90	; 0x5a
 8000aa4:	f7ff fe7c 	bl	80007a0 <_ZN9CObstacle12rotate_robotEi>
 8000aa8:	4620      	mov	r0, r4
 8000aaa:	f44f 7287 	mov.w	r2, #270	; 0x10e
 8000aae:	2300      	movs	r3, #0
 8000ab0:	215a      	movs	r1, #90	; 0x5a
 8000ab2:	f7ff ff51 	bl	8000958 <_ZN9CObstacle18go_forward_encoderEijPFhvE>
 8000ab6:	4620      	mov	r0, r4
 8000ab8:	f06f 0159 	mvn.w	r1, #89	; 0x59
 8000abc:	f7ff fe70 	bl	80007a0 <_ZN9CObstacle12rotate_robotEi>
 8000ac0:	4620      	mov	r0, r4
 8000ac2:	f44f 72af 	mov.w	r2, #350	; 0x15e
 8000ac6:	2300      	movs	r3, #0
 8000ac8:	215a      	movs	r1, #90	; 0x5a
 8000aca:	f7ff ff45 	bl	8000958 <_ZN9CObstacle18go_forward_encoderEijPFhvE>
 8000ace:	4620      	mov	r0, r4
 8000ad0:	f06f 0159 	mvn.w	r1, #89	; 0x59
 8000ad4:	f7ff fe64 	bl	80007a0 <_ZN9CObstacle12rotate_robotEi>
 8000ad8:	4620      	mov	r0, r4
 8000ada:	215a      	movs	r1, #90	; 0x5a
 8000adc:	f44f 7296 	mov.w	r2, #300	; 0x12c
 8000ae0:	4b04      	ldr	r3, [pc, #16]	; (8000af4 <_ZN9CObstacle7processEv+0x70>)
 8000ae2:	f7ff ff39 	bl	8000958 <_ZN9CObstacle18go_forward_encoderEijPFhvE>
 8000ae6:	4620      	mov	r0, r4
 8000ae8:	215a      	movs	r1, #90	; 0x5a
 8000aea:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000aee:	f7ff be57 	b.w	80007a0 <_ZN9CObstacle12rotate_robotEi>
 8000af2:	bf00      	nop
 8000af4:	08000775 	.word	0x08000775

08000af8 <_ZN4CMap4initEP6CRobot>:
 8000af8:	b111      	cbz	r1, 8000b00 <_ZN4CMap4initEP6CRobot+0x8>
 8000afa:	2300      	movs	r3, #0
 8000afc:	6041      	str	r1, [r0, #4]
 8000afe:	6003      	str	r3, [r0, #0]
 8000b00:	4770      	bx	lr

08000b02 <_ZN4CMap10save_stateE6sStatej>:
 8000b02:	b507      	push	{r0, r1, r2, lr}
 8000b04:	ab02      	add	r3, sp, #8
 8000b06:	0090      	lsls	r0, r2, #2
 8000b08:	f843 1d04 	str.w	r1, [r3, #-4]!
 8000b0c:	2204      	movs	r2, #4
 8000b0e:	4619      	mov	r1, r3
 8000b10:	f000 fd52 	bl	80015b8 <log_write>
 8000b14:	b003      	add	sp, #12
 8000b16:	f85d fb04 	ldr.w	pc, [sp], #4
	...

08000b1c <_ZN4CMap10add_to_mapEv>:
 8000b1c:	b537      	push	{r0, r1, r2, r4, r5, lr}
 8000b1e:	4604      	mov	r4, r0
 8000b20:	6840      	ldr	r0, [r0, #4]
 8000b22:	f7ff fb48 	bl	80001b6 <_ZN6CRobot24get_line_position_sensorEv>
 8000b26:	2100      	movs	r1, #0
 8000b28:	6845      	ldr	r5, [r0, #4]
 8000b2a:	460a      	mov	r2, r1
 8000b2c:	f44f 6020 	mov.w	r0, #2560	; 0xa00
 8000b30:	4b12      	ldr	r3, [pc, #72]	; (8000b7c <_ZN4CMap10add_to_mapEv+0x60>)
 8000b32:	f853 3022 	ldr.w	r3, [r3, r2, lsl #2]
 8000b36:	1aeb      	subs	r3, r5, r3
 8000b38:	2b00      	cmp	r3, #0
 8000b3a:	bfb8      	it	lt
 8000b3c:	425b      	neglt	r3, r3
 8000b3e:	4283      	cmp	r3, r0
 8000b40:	bfb8      	it	lt
 8000b42:	4611      	movlt	r1, r2
 8000b44:	f102 0201 	add.w	r2, r2, #1
 8000b48:	bfb8      	it	lt
 8000b4a:	4618      	movlt	r0, r3
 8000b4c:	2a0a      	cmp	r2, #10
 8000b4e:	d1ef      	bne.n	8000b30 <_ZN4CMap10add_to_mapEv+0x14>
 8000b50:	2818      	cmp	r0, #24
 8000b52:	dc11      	bgt.n	8000b78 <_ZN4CMap10add_to_mapEv+0x5c>
 8000b54:	6823      	ldr	r3, [r4, #0]
 8000b56:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8000b5a:	d20d      	bcs.n	8000b78 <_ZN4CMap10add_to_mapEv+0x5c>
 8000b5c:	f88d 1004 	strb.w	r1, [sp, #4]
 8000b60:	f002 f988 	bl	8002e74 <encoder_get_distance>
 8000b64:	f8ad 0006 	strh.w	r0, [sp, #6]
 8000b68:	9901      	ldr	r1, [sp, #4]
 8000b6a:	6822      	ldr	r2, [r4, #0]
 8000b6c:	4620      	mov	r0, r4
 8000b6e:	f7ff ffc8 	bl	8000b02 <_ZN4CMap10save_stateE6sStatej>
 8000b72:	6823      	ldr	r3, [r4, #0]
 8000b74:	3301      	adds	r3, #1
 8000b76:	6023      	str	r3, [r4, #0]
 8000b78:	b003      	add	sp, #12
 8000b7a:	bd30      	pop	{r4, r5, pc}
 8000b7c:	200000a0 	.word	0x200000a0

08000b80 <_Z18line_sensor_threadv>:
 8000b80:	b508      	push	{r3, lr}
 8000b82:	2000      	movs	r0, #0
 8000b84:	2104      	movs	r1, #4
 8000b86:	f001 fbcb 	bl	8002320 <event_timer_set_period>
 8000b8a:	2000      	movs	r0, #0
 8000b8c:	f001 fbe0 	bl	8002350 <event_timer_wait>
 8000b90:	4801      	ldr	r0, [pc, #4]	; (8000b98 <_Z18line_sensor_threadv+0x18>)
 8000b92:	f7ff fc5b 	bl	800044c <_ZN6CRobot19process_rgb_sensorsEv>
 8000b96:	e7f8      	b.n	8000b8a <_Z18line_sensor_threadv+0xa>
 8000b98:	2000094c 	.word	0x2000094c

08000b9c <_Z17imu_sensor_threadv>:
 8000b9c:	b508      	push	{r3, lr}
 8000b9e:	2001      	movs	r0, #1
 8000ba0:	210a      	movs	r1, #10
 8000ba2:	f001 fbbd 	bl	8002320 <event_timer_set_period>
 8000ba6:	2001      	movs	r0, #1
 8000ba8:	f001 fbd2 	bl	8002350 <event_timer_wait>
 8000bac:	4805      	ldr	r0, [pc, #20]	; (8000bc4 <_Z17imu_sensor_threadv+0x28>)
 8000bae:	f7ff fd05 	bl	80005bc <_ZN6CRobot18process_imu_sensorEv>
 8000bb2:	4b05      	ldr	r3, [pc, #20]	; (8000bc8 <_Z17imu_sensor_threadv+0x2c>)
 8000bb4:	681b      	ldr	r3, [r3, #0]
 8000bb6:	2b00      	cmp	r3, #0
 8000bb8:	d0f5      	beq.n	8000ba6 <_Z17imu_sensor_threadv+0xa>
 8000bba:	4804      	ldr	r0, [pc, #16]	; (8000bcc <_Z17imu_sensor_threadv+0x30>)
 8000bbc:	f7ff ffae 	bl	8000b1c <_ZN4CMap10add_to_mapEv>
 8000bc0:	e7f1      	b.n	8000ba6 <_Z17imu_sensor_threadv+0xa>
 8000bc2:	bf00      	nop
 8000bc4:	2000094c 	.word	0x2000094c
 8000bc8:	20000a3c 	.word	0x20000a3c
 8000bcc:	2000053c 	.word	0x2000053c

08000bd0 <_Z13line_followerv>:
 8000bd0:	b510      	push	{r4, lr}
 8000bd2:	2002      	movs	r0, #2
 8000bd4:	2104      	movs	r1, #4
 8000bd6:	f001 fba3 	bl	8002320 <event_timer_set_period>
 8000bda:	2400      	movs	r4, #0
 8000bdc:	2002      	movs	r0, #2
 8000bde:	f001 fbb7 	bl	8002350 <event_timer_wait>
 8000be2:	4813      	ldr	r0, [pc, #76]	; (8000c30 <_Z13line_followerv+0x60>)
 8000be4:	f7ff fae9 	bl	80001ba <_ZN6CRobot28get_obstacle_position_sensorEv>
 8000be8:	7803      	ldrb	r3, [r0, #0]
 8000bea:	2b01      	cmp	r3, #1
 8000bec:	d103      	bne.n	8000bf6 <_Z13line_followerv+0x26>
 8000bee:	4811      	ldr	r0, [pc, #68]	; (8000c34 <_Z13line_followerv+0x64>)
 8000bf0:	f7ff ff48 	bl	8000a84 <_ZN9CObstacle7processEv>
 8000bf4:	e00c      	b.n	8000c10 <_Z13line_followerv+0x40>
 8000bf6:	480e      	ldr	r0, [pc, #56]	; (8000c30 <_Z13line_followerv+0x60>)
 8000bf8:	f7ff fadd 	bl	80001b6 <_ZN6CRobot24get_line_position_sensorEv>
 8000bfc:	7803      	ldrb	r3, [r0, #0]
 8000bfe:	2b01      	cmp	r3, #1
 8000c00:	d103      	bne.n	8000c0a <_Z13line_followerv+0x3a>
 8000c02:	480d      	ldr	r0, [pc, #52]	; (8000c38 <_Z13line_followerv+0x68>)
 8000c04:	f000 f940 	bl	8000e88 <_ZN13CLineFollower7processEv>
 8000c08:	e002      	b.n	8000c10 <_Z13line_followerv+0x40>
 8000c0a:	480c      	ldr	r0, [pc, #48]	; (8000c3c <_Z13line_followerv+0x6c>)
 8000c0c:	f000 f9a9 	bl	8000f62 <_ZN11CBrokenLine7processEv>
 8000c10:	3401      	adds	r4, #1
 8000c12:	2214      	movs	r2, #20
 8000c14:	fbb4 f3f2 	udiv	r3, r4, r2
 8000c18:	fb02 4313 	mls	r3, r2, r3, r4
 8000c1c:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8000c20:	b913      	cbnz	r3, 8000c28 <_Z13line_followerv+0x58>
 8000c22:	f002 f8e7 	bl	8002df4 <led_on>
 8000c26:	e7d9      	b.n	8000bdc <_Z13line_followerv+0xc>
 8000c28:	f002 f8ee 	bl	8002e08 <led_off>
 8000c2c:	e7d6      	b.n	8000bdc <_Z13line_followerv+0xc>
 8000c2e:	bf00      	nop
 8000c30:	2000094c 	.word	0x2000094c
 8000c34:	20000744 	.word	0x20000744
 8000c38:	200009f8 	.word	0x200009f8
 8000c3c:	20000530 	.word	0x20000530

08000c40 <main_thread>:
 8000c40:	b5f0      	push	{r4, r5, r6, r7, lr}
 8000c42:	4849      	ldr	r0, [pc, #292]	; (8000d68 <main_thread+0x128>)
 8000c44:	4e49      	ldr	r6, [pc, #292]	; (8000d6c <main_thread+0x12c>)
 8000c46:	b097      	sub	sp, #92	; 0x5c
 8000c48:	f000 fbe6 	bl	8001418 <printf_>
 8000c4c:	f44f 7096 	mov.w	r0, #300	; 0x12c
 8000c50:	f001 fb56 	bl	8002300 <timer_delay_ms>
 8000c54:	2296      	movs	r2, #150	; 0x96
 8000c56:	f8ad 2028 	strh.w	r2, [sp, #40]	; 0x28
 8000c5a:	223c      	movs	r2, #60	; 0x3c
 8000c5c:	920c      	str	r2, [sp, #48]	; 0x30
 8000c5e:	f640 32b8 	movw	r2, #3000	; 0xbb8
 8000c62:	2300      	movs	r3, #0
 8000c64:	920e      	str	r2, [sp, #56]	; 0x38
 8000c66:	f241 3288 	movw	r2, #5000	; 0x1388
 8000c6a:	f44f 712f 	mov.w	r1, #700	; 0x2bc
 8000c6e:	6033      	str	r3, [r6, #0]
 8000c70:	f88d 302c 	strb.w	r3, [sp, #44]	; 0x2c
 8000c74:	930d      	str	r3, [sp, #52]	; 0x34
 8000c76:	930f      	str	r3, [sp, #60]	; 0x3c
 8000c78:	9211      	str	r2, [sp, #68]	; 0x44
 8000c7a:	2328      	movs	r3, #40	; 0x28
 8000c7c:	f44f 72c8 	mov.w	r2, #400	; 0x190
 8000c80:	483b      	ldr	r0, [pc, #236]	; (8000d70 <main_thread+0x130>)
 8000c82:	f8ad 102a 	strh.w	r1, [sp, #42]	; 0x2a
 8000c86:	ad0d      	add	r5, sp, #52	; 0x34
 8000c88:	9310      	str	r3, [sp, #64]	; 0x40
 8000c8a:	9212      	str	r2, [sp, #72]	; 0x48
 8000c8c:	9113      	str	r1, [sp, #76]	; 0x4c
 8000c8e:	9214      	str	r2, [sp, #80]	; 0x50
 8000c90:	9315      	str	r3, [sp, #84]	; 0x54
 8000c92:	f7ff fd2c 	bl	80006ee <_ZN6CRobot4initEv>
 8000c96:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
 8000c98:	466c      	mov	r4, sp
 8000c9a:	c40f      	stmia	r4!, {r0, r1, r2, r3}
 8000c9c:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
 8000c9e:	c40f      	stmia	r4!, {r0, r1, r2, r3}
 8000ca0:	682b      	ldr	r3, [r5, #0]
 8000ca2:	6023      	str	r3, [r4, #0]
 8000ca4:	ab0a      	add	r3, sp, #40	; 0x28
 8000ca6:	cb0e      	ldmia	r3, {r1, r2, r3}
 8000ca8:	4831      	ldr	r0, [pc, #196]	; (8000d70 <main_thread+0x130>)
 8000caa:	f7ff fa71 	bl	8000190 <_ZN6CRobot13set_configureE15sRobotConfigure>
 8000cae:	4831      	ldr	r0, [pc, #196]	; (8000d74 <main_thread+0x134>)
 8000cb0:	492f      	ldr	r1, [pc, #188]	; (8000d70 <main_thread+0x130>)
 8000cb2:	f000 f871 	bl	8000d98 <_ZN13CLineFollower4initEP6CRobot>
 8000cb6:	4830      	ldr	r0, [pc, #192]	; (8000d78 <main_thread+0x138>)
 8000cb8:	492d      	ldr	r1, [pc, #180]	; (8000d70 <main_thread+0x130>)
 8000cba:	f7ff fd67 	bl	800078c <_ZN9CObstacle4initEP6CRobot>
 8000cbe:	482f      	ldr	r0, [pc, #188]	; (8000d7c <main_thread+0x13c>)
 8000cc0:	492b      	ldr	r1, [pc, #172]	; (8000d70 <main_thread+0x130>)
 8000cc2:	f000 f93f 	bl	8000f44 <_ZN11CBrokenLine4initEP6CRobot>
 8000cc6:	482e      	ldr	r0, [pc, #184]	; (8000d80 <main_thread+0x140>)
 8000cc8:	4929      	ldr	r1, [pc, #164]	; (8000d70 <main_thread+0x130>)
 8000cca:	f7ff ff15 	bl	8000af8 <_ZN4CMap4initEP6CRobot>
 8000cce:	4828      	ldr	r0, [pc, #160]	; (8000d70 <main_thread+0x130>)
 8000cd0:	f7ff fa5a 	bl	8000188 <_ZN6CRobot14get_error_typeEv>
 8000cd4:	b158      	cbz	r0, 8000cee <main_thread+0xae>
 8000cd6:	4826      	ldr	r0, [pc, #152]	; (8000d70 <main_thread+0x130>)
 8000cd8:	f7ff fa56 	bl	8000188 <_ZN6CRobot14get_error_typeEv>
 8000cdc:	4604      	mov	r4, r0
 8000cde:	4824      	ldr	r0, [pc, #144]	; (8000d70 <main_thread+0x130>)
 8000ce0:	f7ff fa54 	bl	800018c <_ZN6CRobot14get_error_codeEv>
 8000ce4:	4601      	mov	r1, r0
 8000ce6:	4620      	mov	r0, r4
 8000ce8:	f7ff fd20 	bl	800072c <abort_error_>
 8000cec:	e7f3      	b.n	8000cd6 <main_thread+0x96>
 8000cee:	4925      	ldr	r1, [pc, #148]	; (8000d84 <main_thread+0x144>)
 8000cf0:	4825      	ldr	r0, [pc, #148]	; (8000d88 <main_thread+0x148>)
 8000cf2:	f44f 7200 	mov.w	r2, #512	; 0x200
 8000cf6:	2306      	movs	r3, #6
 8000cf8:	f000 fa60 	bl	80011bc <create_thread>
 8000cfc:	4823      	ldr	r0, [pc, #140]	; (8000d8c <main_thread+0x14c>)
 8000cfe:	4924      	ldr	r1, [pc, #144]	; (8000d90 <main_thread+0x150>)
 8000d00:	f44f 7200 	mov.w	r2, #512	; 0x200
 8000d04:	2306      	movs	r3, #6
 8000d06:	f000 fa59 	bl	80011bc <create_thread>
 8000d0a:	f002 f887 	bl	8002e1c <get_key>
 8000d0e:	b138      	cbz	r0, 8000d20 <main_thread+0xe0>
 8000d10:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 8000d14:	f001 faf4 	bl	8002300 <timer_delay_ms>
 8000d18:	2301      	movs	r3, #1
 8000d1a:	6033      	str	r3, [r6, #0]
 8000d1c:	f7ff ff58 	bl	8000bd0 <_Z13line_followerv>
 8000d20:	f002 f8a8 	bl	8002e74 <encoder_get_distance>
 8000d24:	4607      	mov	r7, r0
 8000d26:	f002 f881 	bl	8002e2c <left_encoder_read>
 8000d2a:	4605      	mov	r5, r0
 8000d2c:	f002 f890 	bl	8002e50 <right_encoder_read>
 8000d30:	4604      	mov	r4, r0
 8000d32:	480f      	ldr	r0, [pc, #60]	; (8000d70 <main_thread+0x130>)
 8000d34:	f7ff fa43 	bl	80001be <_ZN6CRobot14get_imu_sensorEv>
 8000d38:	6883      	ldr	r3, [r0, #8]
 8000d3a:	9300      	str	r3, [sp, #0]
 8000d3c:	4639      	mov	r1, r7
 8000d3e:	462a      	mov	r2, r5
 8000d40:	4623      	mov	r3, r4
 8000d42:	4814      	ldr	r0, [pc, #80]	; (8000d94 <main_thread+0x154>)
 8000d44:	f000 fb68 	bl	8001418 <printf_>
 8000d48:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8000d4c:	f002 f852 	bl	8002df4 <led_on>
 8000d50:	2064      	movs	r0, #100	; 0x64
 8000d52:	f001 fad5 	bl	8002300 <timer_delay_ms>
 8000d56:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8000d5a:	f002 f855 	bl	8002e08 <led_off>
 8000d5e:	20c8      	movs	r0, #200	; 0xc8
 8000d60:	f001 face 	bl	8002300 <timer_delay_ms>
 8000d64:	e7d1      	b.n	8000d0a <main_thread+0xca>
 8000d66:	bf00      	nop
 8000d68:	08004adf 	.word	0x08004adf
 8000d6c:	20000a3c 	.word	0x20000a3c
 8000d70:	2000094c 	.word	0x2000094c
 8000d74:	200009f8 	.word	0x200009f8
 8000d78:	20000744 	.word	0x20000744
 8000d7c:	20000530 	.word	0x20000530
 8000d80:	2000053c 	.word	0x2000053c
 8000d84:	20000544 	.word	0x20000544
 8000d88:	08000b81 	.word	0x08000b81
 8000d8c:	08000b9d 	.word	0x08000b9d
 8000d90:	2000074c 	.word	0x2000074c
 8000d94:	08004b1a 	.word	0x08004b1a

08000d98 <_ZN13CLineFollower4initEP6CRobot>:
 8000d98:	b510      	push	{r4, lr}
 8000d9a:	ed2d 8b04 	vpush	{d8-d9}
 8000d9e:	4604      	mov	r4, r0
 8000da0:	b082      	sub	sp, #8
 8000da2:	2900      	cmp	r1, #0
 8000da4:	d065      	beq.n	8000e72 <_ZN13CLineFollower4initEP6CRobot+0xda>
 8000da6:	2300      	movs	r3, #0
 8000da8:	6103      	str	r3, [r0, #16]
 8000daa:	6143      	str	r3, [r0, #20]
 8000dac:	6401      	str	r1, [r0, #64]	; 0x40
 8000dae:	4833      	ldr	r0, [pc, #204]	; (8000e7c <_ZN13CLineFollower4initEP6CRobot+0xe4>)
 8000db0:	ed9f 8a33 	vldr	s16, [pc, #204]	; 8000e80 <_ZN13CLineFollower4initEP6CRobot+0xe8>
 8000db4:	f000 f971 	bl	800109a <_ZN11CQPredictor4initEv>
 8000db8:	6c20      	ldr	r0, [r4, #64]	; 0x40
 8000dba:	f7ff f9fb 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000dbe:	ed90 9a02 	vldr	s18, [r0, #8]
 8000dc2:	6c20      	ldr	r0, [r4, #64]	; 0x40
 8000dc4:	f7ff f9f6 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000dc8:	edd0 8a03 	vldr	s17, [r0, #12]
 8000dcc:	6c20      	ldr	r0, [r4, #64]	; 0x40
 8000dce:	f7ff f9f1 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000dd2:	edd0 9a04 	vldr	s19, [r0, #16]
 8000dd6:	6c20      	ldr	r0, [r4, #64]	; 0x40
 8000dd8:	eef8 9ae9 	vcvt.f32.s32	s19, s19
 8000ddc:	f7ff f9ea 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000de0:	eec9 9a88 	vdiv.f32	s19, s19, s16
 8000de4:	4927      	ldr	r1, [pc, #156]	; (8000e84 <_ZN13CLineFollower4initEP6CRobot+0xec>)
 8000de6:	eeb8 9ac9 	vcvt.f32.s32	s18, s18
 8000dea:	edcd 9a00 	vstr	s19, [sp]
 8000dee:	edd0 7a05 	vldr	s15, [r0, #20]
 8000df2:	eef8 8ae8 	vcvt.f32.s32	s17, s17
 8000df6:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 8000dfa:	ee89 9a08 	vdiv.f32	s18, s18, s16
 8000dfe:	f104 0018 	add.w	r0, r4, #24
 8000e02:	eec7 7a88 	vdiv.f32	s15, s15, s16
 8000e06:	eec8 8a88 	vdiv.f32	s17, s17, s16
 8000e0a:	ee19 2a10 	vmov	r2, s18
 8000e0e:	ee18 3a90 	vmov	r3, s17
 8000e12:	edcd 7a01 	vstr	s15, [sp, #4]
 8000e16:	f000 fc1d 	bl	8001654 <pid_init>
 8000e1a:	6c20      	ldr	r0, [r4, #64]	; 0x40
 8000e1c:	f7ff f9ca 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000e20:	edd0 7a06 	vldr	s15, [r0, #24]
 8000e24:	6c20      	ldr	r0, [r4, #64]	; 0x40
 8000e26:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 8000e2a:	eec7 7a88 	vdiv.f32	s15, s15, s16
 8000e2e:	edc4 7a00 	vstr	s15, [r4]
 8000e32:	f7ff f9bf 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000e36:	edd0 7a07 	vldr	s15, [r0, #28]
 8000e3a:	6c20      	ldr	r0, [r4, #64]	; 0x40
 8000e3c:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 8000e40:	eec7 7a88 	vdiv.f32	s15, s15, s16
 8000e44:	edc4 7a01 	vstr	s15, [r4, #4]
 8000e48:	f7ff f9b4 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000e4c:	edd0 7a08 	vldr	s15, [r0, #32]
 8000e50:	6c20      	ldr	r0, [r4, #64]	; 0x40
 8000e52:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 8000e56:	eec7 7a88 	vdiv.f32	s15, s15, s16
 8000e5a:	edc4 7a02 	vstr	s15, [r4, #8]
 8000e5e:	f7ff f9a9 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000e62:	edd0 7a09 	vldr	s15, [r0, #36]	; 0x24
 8000e66:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 8000e6a:	ee87 8a88 	vdiv.f32	s16, s15, s16
 8000e6e:	ed84 8a03 	vstr	s16, [r4, #12]
 8000e72:	b002      	add	sp, #8
 8000e74:	ecbd 8b04 	vpop	{d8-d9}
 8000e78:	bd10      	pop	{r4, pc}
 8000e7a:	bf00      	nop
 8000e7c:	20000a40 	.word	0x20000a40
 8000e80:	447a0000 	.word	0x447a0000
 8000e84:	42c80000 	.word	0x42c80000

08000e88 <_ZN13CLineFollower7processEv>:
 8000e88:	b510      	push	{r4, lr}
 8000e8a:	4604      	mov	r4, r0
 8000e8c:	ed2d 8b02 	vpush	{d8}
 8000e90:	6c00      	ldr	r0, [r0, #64]	; 0x40
 8000e92:	ed9f 8a28 	vldr	s16, [pc, #160]	; 8000f34 <_ZN13CLineFollower7processEv+0xac>
 8000e96:	f7ff f98e 	bl	80001b6 <_ZN6CRobot24get_line_position_sensorEv>
 8000e9a:	edd0 7a01 	vldr	s15, [r0, #4]
 8000e9e:	ed9f 7a26 	vldr	s14, [pc, #152]	; 8000f38 <_ZN13CLineFollower7processEv+0xb0>
 8000ea2:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 8000ea6:	ee07 8ac7 	vmls.f32	s16, s15, s14
 8000eaa:	ee18 0a10 	vmov	r0, s16
 8000eae:	f000 fb9f 	bl	80015f0 <m_abs>
 8000eb2:	ed9f 7a22 	vldr	s14, [pc, #136]	; 8000f3c <_ZN13CLineFollower7processEv+0xb4>
 8000eb6:	edd4 6a01 	vldr	s13, [r4, #4]
 8000eba:	edd4 5a00 	vldr	s11, [r4]
 8000ebe:	ed94 6a04 	vldr	s12, [r4, #16]
 8000ec2:	ee07 0a90 	vmov	s15, r0
 8000ec6:	ee37 5a67 	vsub.f32	s10, s14, s15
 8000eca:	ee07 7ae6 	vmls.f32	s14, s15, s13
 8000ece:	ee05 6a25 	vmla.f32	s12, s10, s11
 8000ed2:	ee17 1a10 	vmov	r1, s14
 8000ed6:	ee16 0a10 	vmov	r0, s12
 8000eda:	f000 fbac 	bl	8001636 <m_min>
 8000ede:	68e2      	ldr	r2, [r4, #12]
 8000ee0:	68a1      	ldr	r1, [r4, #8]
 8000ee2:	6120      	str	r0, [r4, #16]
 8000ee4:	f000 fb90 	bl	8001608 <m_saturate>
 8000ee8:	ee18 1a10 	vmov	r1, s16
 8000eec:	6120      	str	r0, [r4, #16]
 8000eee:	f104 0018 	add.w	r0, r4, #24
 8000ef2:	f000 fbdf 	bl	80016b4 <pid_process>
 8000ef6:	edd4 7a04 	vldr	s15, [r4, #16]
 8000efa:	ed9f 6a11 	vldr	s12, [pc, #68]	; 8000f40 <_ZN13CLineFollower7processEv+0xb8>
 8000efe:	6160      	str	r0, [r4, #20]
 8000f00:	ee06 0a90 	vmov	s13, r0
 8000f04:	ee37 7aa6 	vadd.f32	s14, s15, s13
 8000f08:	ee77 7ae6 	vsub.f32	s15, s15, s13
 8000f0c:	ecbd 8b02 	vpop	{d8}
 8000f10:	ee27 7a06 	vmul.f32	s14, s14, s12
 8000f14:	ee67 7a86 	vmul.f32	s15, s15, s12
 8000f18:	eebd 7ac7 	vcvt.s32.f32	s14, s14
 8000f1c:	eefd 7ae7 	vcvt.s32.f32	s15, s15
 8000f20:	6c20      	ldr	r0, [r4, #64]	; 0x40
 8000f22:	ee17 1a10 	vmov	r1, s14
 8000f26:	ee17 2a90 	vmov	r2, s15
 8000f2a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000f2e:	f7ff b948 	b.w	80001c2 <_ZN6CRobot10set_motorsEii>
 8000f32:	bf00      	nop
 8000f34:	00000000 	.word	0x00000000
 8000f38:	3b800000 	.word	0x3b800000
 8000f3c:	3f800000 	.word	0x3f800000
 8000f40:	42c80000 	.word	0x42c80000

08000f44 <_ZN11CBrokenLine4initEP6CRobot>:
 8000f44:	b510      	push	{r4, lr}
 8000f46:	4604      	mov	r4, r0
 8000f48:	b151      	cbz	r1, 8000f60 <_ZN11CBrokenLine4initEP6CRobot+0x1c>
 8000f4a:	6001      	str	r1, [r0, #0]
 8000f4c:	4608      	mov	r0, r1
 8000f4e:	f7ff f931 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000f52:	6a83      	ldr	r3, [r0, #40]	; 0x28
 8000f54:	6063      	str	r3, [r4, #4]
 8000f56:	6820      	ldr	r0, [r4, #0]
 8000f58:	f7ff f92c 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000f5c:	6ac3      	ldr	r3, [r0, #44]	; 0x2c
 8000f5e:	60a3      	str	r3, [r4, #8]
 8000f60:	bd10      	pop	{r4, pc}

08000f62 <_ZN11CBrokenLine7processEv>:
 8000f62:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8000f66:	2600      	movs	r6, #0
 8000f68:	4607      	mov	r7, r0
 8000f6a:	4634      	mov	r4, r6
 8000f6c:	46b1      	mov	r9, r6
 8000f6e:	46b0      	mov	r8, r6
 8000f70:	4635      	mov	r5, r6
 8000f72:	6838      	ldr	r0, [r7, #0]
 8000f74:	f7ff f91f 	bl	80001b6 <_ZN6CRobot24get_line_position_sensorEv>
 8000f78:	7803      	ldrb	r3, [r0, #0]
 8000f7a:	2b01      	cmp	r3, #1
 8000f7c:	f000 8086 	beq.w	800108c <_ZN11CBrokenLine7processEv+0x12a>
 8000f80:	2005      	movs	r0, #5
 8000f82:	f001 f9bd 	bl	8002300 <timer_delay_ms>
 8000f86:	f1b9 0f05 	cmp.w	r9, #5
 8000f8a:	d879      	bhi.n	8001080 <_ZN11CBrokenLine7processEv+0x11e>
 8000f8c:	e8df f009 	tbb	[pc, r9]
 8000f90:	48311a03 	.word	0x48311a03
 8000f94:	6b5e      	.short	0x6b5e
 8000f96:	2c00      	cmp	r4, #0
 8000f98:	d163      	bne.n	8001062 <_ZN11CBrokenLine7processEv+0x100>
 8000f9a:	6838      	ldr	r0, [r7, #0]
 8000f9c:	f7ff f90b 	bl	80001b6 <_ZN6CRobot24get_line_position_sensorEv>
 8000fa0:	6842      	ldr	r2, [r0, #4]
 8000fa2:	68bb      	ldr	r3, [r7, #8]
 8000fa4:	687c      	ldr	r4, [r7, #4]
 8000fa6:	2a00      	cmp	r2, #0
 8000fa8:	bfce      	itee	gt
 8000faa:	461d      	movgt	r5, r3
 8000fac:	4698      	movle	r8, r3
 8000fae:	2500      	movle	r5, #0
 8000fb0:	f04f 0305 	mov.w	r3, #5
 8000fb4:	bfc8      	it	gt
 8000fb6:	f04f 0800 	movgt.w	r8, #0
 8000fba:	fb94 f4f3 	sdiv	r4, r4, r3
 8000fbe:	f04f 0901 	mov.w	r9, #1
 8000fc2:	e05d      	b.n	8001080 <_ZN11CBrokenLine7processEv+0x11e>
 8000fc4:	2c00      	cmp	r4, #0
 8000fc6:	d14c      	bne.n	8001062 <_ZN11CBrokenLine7processEv+0x100>
 8000fc8:	6838      	ldr	r0, [r7, #0]
 8000fca:	f7ff f8f4 	bl	80001b6 <_ZN6CRobot24get_line_position_sensorEv>
 8000fce:	6843      	ldr	r3, [r0, #4]
 8000fd0:	68bd      	ldr	r5, [r7, #8]
 8000fd2:	2b00      	cmp	r3, #0
 8000fd4:	bfcc      	ite	gt
 8000fd6:	46a0      	movgt	r8, r4
 8000fd8:	f1c5 0800 	rsble	r8, r5, #0
 8000fdc:	f04f 0305 	mov.w	r3, #5
 8000fe0:	bfd4      	ite	le
 8000fe2:	4625      	movle	r5, r4
 8000fe4:	426d      	neggt	r5, r5
 8000fe6:	687c      	ldr	r4, [r7, #4]
 8000fe8:	fb94 f4f3 	sdiv	r4, r4, r3
 8000fec:	f04f 0902 	mov.w	r9, #2
 8000ff0:	e046      	b.n	8001080 <_ZN11CBrokenLine7processEv+0x11e>
 8000ff2:	2c00      	cmp	r4, #0
 8000ff4:	d135      	bne.n	8001062 <_ZN11CBrokenLine7processEv+0x100>
 8000ff6:	6838      	ldr	r0, [r7, #0]
 8000ff8:	f7ff f8dd 	bl	80001b6 <_ZN6CRobot24get_line_position_sensorEv>
 8000ffc:	6842      	ldr	r2, [r0, #4]
 8000ffe:	68bb      	ldr	r3, [r7, #8]
 8001000:	687c      	ldr	r4, [r7, #4]
 8001002:	2a00      	cmp	r2, #0
 8001004:	bfce      	itee	gt
 8001006:	4698      	movgt	r8, r3
 8001008:	461d      	movle	r5, r3
 800100a:	f04f 0800 	movle.w	r8, #0
 800100e:	f04f 0305 	mov.w	r3, #5
 8001012:	bfc8      	it	gt
 8001014:	2500      	movgt	r5, #0
 8001016:	fb94 f4f3 	sdiv	r4, r4, r3
 800101a:	f04f 0903 	mov.w	r9, #3
 800101e:	e02f      	b.n	8001080 <_ZN11CBrokenLine7processEv+0x11e>
 8001020:	b9fc      	cbnz	r4, 8001062 <_ZN11CBrokenLine7processEv+0x100>
 8001022:	6838      	ldr	r0, [r7, #0]
 8001024:	f7ff f8c7 	bl	80001b6 <_ZN6CRobot24get_line_position_sensorEv>
 8001028:	6843      	ldr	r3, [r0, #4]
 800102a:	68bd      	ldr	r5, [r7, #8]
 800102c:	2b00      	cmp	r3, #0
 800102e:	bfca      	itet	gt
 8001030:	f1c5 0800 	rsbgt	r8, r5, #0
 8001034:	46a0      	movle	r8, r4
 8001036:	4625      	movgt	r5, r4
 8001038:	f04f 0305 	mov.w	r3, #5
 800103c:	687c      	ldr	r4, [r7, #4]
 800103e:	fb94 f4f3 	sdiv	r4, r4, r3
 8001042:	bfd8      	it	le
 8001044:	426d      	negle	r5, r5
 8001046:	f04f 0904 	mov.w	r9, #4
 800104a:	e019      	b.n	8001080 <_ZN11CBrokenLine7processEv+0x11e>
 800104c:	b94c      	cbnz	r4, 8001062 <_ZN11CBrokenLine7processEv+0x100>
 800104e:	2600      	movs	r6, #0
 8001050:	687c      	ldr	r4, [r7, #4]
 8001052:	230a      	movs	r3, #10
 8001054:	f04f 0905 	mov.w	r9, #5
 8001058:	fb94 f4f3 	sdiv	r4, r4, r3
 800105c:	46b0      	mov	r8, r6
 800105e:	4635      	mov	r5, r6
 8001060:	e00e      	b.n	8001080 <_ZN11CBrokenLine7processEv+0x11e>
 8001062:	3c01      	subs	r4, #1
 8001064:	e00c      	b.n	8001080 <_ZN11CBrokenLine7processEv+0x11e>
 8001066:	b154      	cbz	r4, 800107e <_ZN11CBrokenLine7processEv+0x11c>
 8001068:	68bb      	ldr	r3, [r7, #8]
 800106a:	2564      	movs	r5, #100	; 0x64
 800106c:	436b      	muls	r3, r5
 800106e:	429e      	cmp	r6, r3
 8001070:	bfb8      	it	lt
 8001072:	3632      	addlt	r6, #50	; 0x32
 8001074:	3c01      	subs	r4, #1
 8001076:	fb96 f5f5 	sdiv	r5, r6, r5
 800107a:	46a8      	mov	r8, r5
 800107c:	e000      	b.n	8001080 <_ZN11CBrokenLine7processEv+0x11e>
 800107e:	46a1      	mov	r9, r4
 8001080:	6838      	ldr	r0, [r7, #0]
 8001082:	4641      	mov	r1, r8
 8001084:	462a      	mov	r2, r5
 8001086:	f7ff f89c 	bl	80001c2 <_ZN6CRobot10set_motorsEii>
 800108a:	e772      	b.n	8000f72 <_ZN11CBrokenLine7processEv+0x10>
 800108c:	2100      	movs	r1, #0
 800108e:	6838      	ldr	r0, [r7, #0]
 8001090:	460a      	mov	r2, r1
 8001092:	e8bd 43f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8001096:	f7ff b894 	b.w	80001c2 <_ZN6CRobot10set_motorsEii>

0800109a <_ZN11CQPredictor4initEv>:
 800109a:	1d03      	adds	r3, r0, #4
 800109c:	3044      	adds	r0, #68	; 0x44
 800109e:	2200      	movs	r2, #0
 80010a0:	f843 2b04 	str.w	r2, [r3], #4
 80010a4:	4283      	cmp	r3, r0
 80010a6:	d1fa      	bne.n	800109e <_ZN11CQPredictor4initEv+0x4>
 80010a8:	4770      	bx	lr
	...

080010ac <thread_ending>:
 80010ac:	b672      	cpsid	i
 80010ae:	4b05      	ldr	r3, [pc, #20]	; (80010c4 <thread_ending+0x18>)
 80010b0:	681a      	ldr	r2, [r3, #0]
 80010b2:	4b05      	ldr	r3, [pc, #20]	; (80010c8 <thread_ending+0x1c>)
 80010b4:	210c      	movs	r1, #12
 80010b6:	fb01 3302 	mla	r3, r1, r2, r3
 80010ba:	2200      	movs	r2, #0
 80010bc:	605a      	str	r2, [r3, #4]
 80010be:	b662      	cpsie	i
 80010c0:	bf00      	nop
 80010c2:	e7fd      	b.n	80010c0 <thread_ending+0x14>
 80010c4:	20000acc 	.word	0x20000acc
 80010c8:	20000a84 	.word	0x20000a84

080010cc <null_thread>:
 80010cc:	b508      	push	{r3, lr}
 80010ce:	f001 fc3b 	bl	8002948 <sleep>
 80010d2:	e7fc      	b.n	80010ce <null_thread+0x2>

080010d4 <scheduler>:
 80010d4:	b570      	push	{r4, r5, r6, lr}
 80010d6:	2200      	movs	r2, #0
 80010d8:	4611      	mov	r1, r2
 80010da:	4b15      	ldr	r3, [pc, #84]	; (8001130 <scheduler+0x5c>)
 80010dc:	200c      	movs	r0, #12
 80010de:	fb00 f401 	mul.w	r4, r0, r1
 80010e2:	191e      	adds	r6, r3, r4
 80010e4:	6875      	ldr	r5, [r6, #4]
 80010e6:	f015 0f02 	tst.w	r5, #2
 80010ea:	461d      	mov	r5, r3
 80010ec:	d10a      	bne.n	8001104 <scheduler+0x30>
 80010ee:	6876      	ldr	r6, [r6, #4]
 80010f0:	07f6      	lsls	r6, r6, #31
 80010f2:	d507      	bpl.n	8001104 <scheduler+0x30>
 80010f4:	4350      	muls	r0, r2
 80010f6:	5b1c      	ldrh	r4, [r3, r4]
 80010f8:	5a18      	ldrh	r0, [r3, r0]
 80010fa:	b2a4      	uxth	r4, r4
 80010fc:	b280      	uxth	r0, r0
 80010fe:	4284      	cmp	r4, r0
 8001100:	bf38      	it	cc
 8001102:	460a      	movcc	r2, r1
 8001104:	200c      	movs	r0, #12
 8001106:	4348      	muls	r0, r1
 8001108:	5a1c      	ldrh	r4, [r3, r0]
 800110a:	b2a4      	uxth	r4, r4
 800110c:	b11c      	cbz	r4, 8001116 <scheduler+0x42>
 800110e:	5a1c      	ldrh	r4, [r3, r0]
 8001110:	3c01      	subs	r4, #1
 8001112:	b2a4      	uxth	r4, r4
 8001114:	521c      	strh	r4, [r3, r0]
 8001116:	3101      	adds	r1, #1
 8001118:	2906      	cmp	r1, #6
 800111a:	d1de      	bne.n	80010da <scheduler+0x6>
 800111c:	230c      	movs	r3, #12
 800111e:	4353      	muls	r3, r2
 8001120:	18e9      	adds	r1, r5, r3
 8001122:	8849      	ldrh	r1, [r1, #2]
 8001124:	b289      	uxth	r1, r1
 8001126:	52e9      	strh	r1, [r5, r3]
 8001128:	4b02      	ldr	r3, [pc, #8]	; (8001134 <scheduler+0x60>)
 800112a:	601a      	str	r2, [r3, #0]
 800112c:	bd70      	pop	{r4, r5, r6, pc}
 800112e:	bf00      	nop
 8001130:	20000a84 	.word	0x20000a84
 8001134:	20000acc 	.word	0x20000acc

08001138 <SysTick_Handler>:
 8001138:	e92d 0ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 800113c:	f3ef 8308 	mrs	r3, MSP
 8001140:	4c0f      	ldr	r4, [pc, #60]	; (8001180 <SysTick_Handler+0x48>)
 8001142:	4d10      	ldr	r5, [pc, #64]	; (8001184 <SysTick_Handler+0x4c>)
 8001144:	6822      	ldr	r2, [r4, #0]
 8001146:	3201      	adds	r2, #1
 8001148:	bf1d      	ittte	ne
 800114a:	6822      	ldrne	r2, [r4, #0]
 800114c:	210c      	movne	r1, #12
 800114e:	fb01 5202 	mlane	r2, r1, r2, r5
 8001152:	2300      	moveq	r3, #0
 8001154:	bf14      	ite	ne
 8001156:	6093      	strne	r3, [r2, #8]
 8001158:	6023      	streq	r3, [r4, #0]
 800115a:	f7ff ffbb 	bl	80010d4 <scheduler>
 800115e:	4b0a      	ldr	r3, [pc, #40]	; (8001188 <SysTick_Handler+0x50>)
 8001160:	681a      	ldr	r2, [r3, #0]
 8001162:	3201      	adds	r2, #1
 8001164:	601a      	str	r2, [r3, #0]
 8001166:	6822      	ldr	r2, [r4, #0]
 8001168:	230c      	movs	r3, #12
 800116a:	fb03 5302 	mla	r3, r3, r2, r5
 800116e:	689a      	ldr	r2, [r3, #8]
 8001170:	f06f 0306 	mvn.w	r3, #6
 8001174:	469e      	mov	lr, r3
 8001176:	f382 8808 	msr	MSP, r2
 800117a:	e8bd 0ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 800117e:	4770      	bx	lr
 8001180:	20000acc 	.word	0x20000acc
 8001184:	20000a84 	.word	0x20000a84
 8001188:	20000ad0 	.word	0x20000ad0

0800118c <sched_off>:
 800118c:	b672      	cpsid	i
 800118e:	4770      	bx	lr

08001190 <sched_on>:
 8001190:	b662      	cpsie	i
 8001192:	4770      	bx	lr

08001194 <yield>:
 8001194:	bf00      	nop
 8001196:	4770      	bx	lr

08001198 <get_thread_id>:
 8001198:	b082      	sub	sp, #8
 800119a:	b672      	cpsid	i
 800119c:	4b03      	ldr	r3, [pc, #12]	; (80011ac <get_thread_id+0x14>)
 800119e:	681b      	ldr	r3, [r3, #0]
 80011a0:	9301      	str	r3, [sp, #4]
 80011a2:	b662      	cpsie	i
 80011a4:	9801      	ldr	r0, [sp, #4]
 80011a6:	b002      	add	sp, #8
 80011a8:	4770      	bx	lr
 80011aa:	bf00      	nop
 80011ac:	20000acc 	.word	0x20000acc

080011b0 <kernel_start>:
 80011b0:	b508      	push	{r3, lr}
 80011b2:	f001 fbb7 	bl	8002924 <sys_tick_init>
 80011b6:	bf00      	nop
 80011b8:	e7fd      	b.n	80011b6 <kernel_start+0x6>
	...

080011bc <create_thread>:
 80011bc:	f022 0203 	bic.w	r2, r2, #3
 80011c0:	3a40      	subs	r2, #64	; 0x40
 80011c2:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80011c6:	eb01 0e02 	add.w	lr, r1, r2
 80011ca:	f102 0634 	add.w	r6, r2, #52	; 0x34
 80011ce:	f102 0738 	add.w	r7, r2, #56	; 0x38
 80011d2:	323c      	adds	r2, #60	; 0x3c
 80011d4:	440e      	add	r6, r1
 80011d6:	440f      	add	r7, r1
 80011d8:	4411      	add	r1, r2
 80011da:	2200      	movs	r2, #0
 80011dc:	b672      	cpsid	i
 80011de:	f8df c054 	ldr.w	ip, [pc, #84]	; 8001234 <create_thread+0x78>
 80011e2:	250c      	movs	r5, #12
 80011e4:	4355      	muls	r5, r2
 80011e6:	eb0c 0405 	add.w	r4, ip, r5
 80011ea:	f8d4 8004 	ldr.w	r8, [r4, #4]
 80011ee:	f018 0f01 	tst.w	r8, #1
 80011f2:	d114      	bne.n	800121e <create_thread+0x62>
 80011f4:	f8df 8040 	ldr.w	r8, [pc, #64]	; 8001238 <create_thread+0x7c>
 80011f8:	f8c4 e008 	str.w	lr, [r4, #8]
 80011fc:	2b05      	cmp	r3, #5
 80011fe:	f8c6 8000 	str.w	r8, [r6]
 8001202:	bf98      	it	ls
 8001204:	2306      	movls	r3, #6
 8001206:	f04f 5804 	mov.w	r8, #553648128	; 0x21000000
 800120a:	6038      	str	r0, [r7, #0]
 800120c:	f8c1 8000 	str.w	r8, [r1]
 8001210:	8063      	strh	r3, [r4, #2]
 8001212:	f82c 3005 	strh.w	r3, [ip, r5]
 8001216:	2501      	movs	r5, #1
 8001218:	6065      	str	r5, [r4, #4]
 800121a:	4614      	mov	r4, r2
 800121c:	e000      	b.n	8001220 <create_thread+0x64>
 800121e:	2406      	movs	r4, #6
 8001220:	b662      	cpsie	i
 8001222:	3201      	adds	r2, #1
 8001224:	2a06      	cmp	r2, #6
 8001226:	d001      	beq.n	800122c <create_thread+0x70>
 8001228:	2c06      	cmp	r4, #6
 800122a:	d0d7      	beq.n	80011dc <create_thread+0x20>
 800122c:	4620      	mov	r0, r4
 800122e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8001232:	bf00      	nop
 8001234:	20000a84 	.word	0x20000a84
 8001238:	080010ad 	.word	0x080010ad

0800123c <kernel_init>:
 800123c:	b530      	push	{r4, r5, lr}
 800123e:	2300      	movs	r3, #0
 8001240:	480c      	ldr	r0, [pc, #48]	; (8001274 <kernel_init+0x38>)
 8001242:	220c      	movs	r2, #12
 8001244:	435a      	muls	r2, r3
 8001246:	2406      	movs	r4, #6
 8001248:	1885      	adds	r5, r0, r2
 800124a:	3301      	adds	r3, #1
 800124c:	2100      	movs	r1, #0
 800124e:	42a3      	cmp	r3, r4
 8001250:	6069      	str	r1, [r5, #4]
 8001252:	806c      	strh	r4, [r5, #2]
 8001254:	5284      	strh	r4, [r0, r2]
 8001256:	d1f3      	bne.n	8001240 <kernel_init+0x4>
 8001258:	4b07      	ldr	r3, [pc, #28]	; (8001278 <kernel_init+0x3c>)
 800125a:	4808      	ldr	r0, [pc, #32]	; (800127c <kernel_init+0x40>)
 800125c:	6019      	str	r1, [r3, #0]
 800125e:	4b08      	ldr	r3, [pc, #32]	; (8001280 <kernel_init+0x44>)
 8001260:	4908      	ldr	r1, [pc, #32]	; (8001284 <kernel_init+0x48>)
 8001262:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8001266:	601a      	str	r2, [r3, #0]
 8001268:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
 800126c:	2280      	movs	r2, #128	; 0x80
 800126e:	23ff      	movs	r3, #255	; 0xff
 8001270:	f7ff bfa4 	b.w	80011bc <create_thread>
 8001274:	20000a84 	.word	0x20000a84
 8001278:	20000ad0 	.word	0x20000ad0
 800127c:	080010cd 	.word	0x080010cd
 8001280:	20000acc 	.word	0x20000acc
 8001284:	20000ad4 	.word	0x20000ad4

08001288 <set_wait_state>:
 8001288:	b507      	push	{r0, r1, r2, lr}
 800128a:	f7ff ff85 	bl	8001198 <get_thread_id>
 800128e:	9000      	str	r0, [sp, #0]
 8001290:	b672      	cpsid	i
 8001292:	4b0d      	ldr	r3, [pc, #52]	; (80012c8 <set_wait_state+0x40>)
 8001294:	9a00      	ldr	r2, [sp, #0]
 8001296:	210c      	movs	r1, #12
 8001298:	fb01 3202 	mla	r2, r1, r2, r3
 800129c:	6851      	ldr	r1, [r2, #4]
 800129e:	f041 0102 	orr.w	r1, r1, #2
 80012a2:	6051      	str	r1, [r2, #4]
 80012a4:	b672      	cpsid	i
 80012a6:	9a00      	ldr	r2, [sp, #0]
 80012a8:	210c      	movs	r1, #12
 80012aa:	fb01 3202 	mla	r2, r1, r2, r3
 80012ae:	6852      	ldr	r2, [r2, #4]
 80012b0:	9201      	str	r2, [sp, #4]
 80012b2:	b662      	cpsie	i
 80012b4:	9a01      	ldr	r2, [sp, #4]
 80012b6:	0791      	lsls	r1, r2, #30
 80012b8:	d500      	bpl.n	80012bc <set_wait_state+0x34>
 80012ba:	bf00      	nop
 80012bc:	9a01      	ldr	r2, [sp, #4]
 80012be:	0792      	lsls	r2, r2, #30
 80012c0:	d4f0      	bmi.n	80012a4 <set_wait_state+0x1c>
 80012c2:	b003      	add	sp, #12
 80012c4:	f85d fb04 	ldr.w	pc, [sp], #4
 80012c8:	20000a84 	.word	0x20000a84

080012cc <wake_up_threads>:
 80012cc:	2300      	movs	r3, #0
 80012ce:	b672      	cpsid	i
 80012d0:	4906      	ldr	r1, [pc, #24]	; (80012ec <wake_up_threads+0x20>)
 80012d2:	220c      	movs	r2, #12
 80012d4:	fb02 1203 	mla	r2, r2, r3, r1
 80012d8:	6851      	ldr	r1, [r2, #4]
 80012da:	f021 0102 	bic.w	r1, r1, #2
 80012de:	6051      	str	r1, [r2, #4]
 80012e0:	b662      	cpsie	i
 80012e2:	3301      	adds	r3, #1
 80012e4:	2b06      	cmp	r3, #6
 80012e6:	d1f2      	bne.n	80012ce <wake_up_threads+0x2>
 80012e8:	4770      	bx	lr
 80012ea:	bf00      	nop
 80012ec:	20000a84 	.word	0x20000a84

080012f0 <messages_init>:
 80012f0:	4a0a      	ldr	r2, [pc, #40]	; (800131c <messages_init+0x2c>)
 80012f2:	2300      	movs	r3, #0
 80012f4:	b510      	push	{r4, lr}
 80012f6:	6013      	str	r3, [r2, #0]
 80012f8:	6053      	str	r3, [r2, #4]
 80012fa:	6093      	str	r3, [r2, #8]
 80012fc:	60d3      	str	r3, [r2, #12]
 80012fe:	6113      	str	r3, [r2, #16]
 8001300:	6153      	str	r3, [r2, #20]
 8001302:	4c07      	ldr	r4, [pc, #28]	; (8001320 <messages_init+0x30>)
 8001304:	0118      	lsls	r0, r3, #4
 8001306:	1821      	adds	r1, r4, r0
 8001308:	3301      	adds	r3, #1
 800130a:	2200      	movs	r2, #0
 800130c:	2b04      	cmp	r3, #4
 800130e:	604a      	str	r2, [r1, #4]
 8001310:	5022      	str	r2, [r4, r0]
 8001312:	60ca      	str	r2, [r1, #12]
 8001314:	608a      	str	r2, [r1, #8]
 8001316:	d1f4      	bne.n	8001302 <messages_init+0x12>
 8001318:	bd10      	pop	{r4, pc}
 800131a:	bf00      	nop
 800131c:	20000b54 	.word	0x20000b54
 8001320:	20000b6c 	.word	0x20000b6c

08001324 <putc_>:
 8001324:	b538      	push	{r3, r4, r5, lr}
 8001326:	4c06      	ldr	r4, [pc, #24]	; (8001340 <putc_+0x1c>)
 8001328:	4605      	mov	r5, r0
 800132a:	4620      	mov	r0, r4
 800132c:	f000 f91f 	bl	800156e <mutex_lock>
 8001330:	4628      	mov	r0, r5
 8001332:	f001 f8d1 	bl	80024d8 <uart_write>
 8001336:	4620      	mov	r0, r4
 8001338:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 800133c:	f000 b933 	b.w	80015a6 <mutex_unlock>
 8001340:	20000bac 	.word	0x20000bac

08001344 <puts_>:
 8001344:	b510      	push	{r4, lr}
 8001346:	4604      	mov	r4, r0
 8001348:	4807      	ldr	r0, [pc, #28]	; (8001368 <puts_+0x24>)
 800134a:	f000 f910 	bl	800156e <mutex_lock>
 800134e:	3c01      	subs	r4, #1
 8001350:	f814 0f01 	ldrb.w	r0, [r4, #1]!
 8001354:	b110      	cbz	r0, 800135c <puts_+0x18>
 8001356:	f7ff ffe5 	bl	8001324 <putc_>
 800135a:	e7f9      	b.n	8001350 <puts_+0xc>
 800135c:	4802      	ldr	r0, [pc, #8]	; (8001368 <puts_+0x24>)
 800135e:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8001362:	f000 b920 	b.w	80015a6 <mutex_unlock>
 8001366:	bf00      	nop
 8001368:	20000bb8 	.word	0x20000bb8

0800136c <puti_>:
 800136c:	b530      	push	{r4, r5, lr}
 800136e:	b085      	sub	sp, #20
 8001370:	1e03      	subs	r3, r0, #0
 8001372:	f04f 0200 	mov.w	r2, #0
 8001376:	bfba      	itte	lt
 8001378:	425b      	neglt	r3, r3
 800137a:	2401      	movlt	r4, #1
 800137c:	4614      	movge	r4, r2
 800137e:	f88d 200f 	strb.w	r2, [sp, #15]
 8001382:	210a      	movs	r1, #10
 8001384:	220a      	movs	r2, #10
 8001386:	a801      	add	r0, sp, #4
 8001388:	fb93 f5f2 	sdiv	r5, r3, r2
 800138c:	fb02 3315 	mls	r3, r2, r5, r3
 8001390:	3330      	adds	r3, #48	; 0x30
 8001392:	540b      	strb	r3, [r1, r0]
 8001394:	1e4a      	subs	r2, r1, #1
 8001396:	462b      	mov	r3, r5
 8001398:	b10d      	cbz	r5, 800139e <puti_+0x32>
 800139a:	4611      	mov	r1, r2
 800139c:	e7f2      	b.n	8001384 <puti_+0x18>
 800139e:	b12c      	cbz	r4, 80013ac <puti_+0x40>
 80013a0:	ab04      	add	r3, sp, #16
 80013a2:	4413      	add	r3, r2
 80013a4:	212d      	movs	r1, #45	; 0x2d
 80013a6:	f803 1c0c 	strb.w	r1, [r3, #-12]
 80013aa:	4611      	mov	r1, r2
 80013ac:	4408      	add	r0, r1
 80013ae:	f7ff ffc9 	bl	8001344 <puts_>
 80013b2:	b005      	add	sp, #20
 80013b4:	bd30      	pop	{r4, r5, pc}

080013b6 <putui_>:
 80013b6:	b51f      	push	{r0, r1, r2, r3, r4, lr}
 80013b8:	2300      	movs	r3, #0
 80013ba:	f88d 300f 	strb.w	r3, [sp, #15]
 80013be:	220a      	movs	r2, #10
 80013c0:	230a      	movs	r3, #10
 80013c2:	a901      	add	r1, sp, #4
 80013c4:	fbb0 f4f3 	udiv	r4, r0, r3
 80013c8:	fb03 0314 	mls	r3, r3, r4, r0
 80013cc:	3330      	adds	r3, #48	; 0x30
 80013ce:	5453      	strb	r3, [r2, r1]
 80013d0:	4620      	mov	r0, r4
 80013d2:	1e53      	subs	r3, r2, #1
 80013d4:	b10c      	cbz	r4, 80013da <putui_+0x24>
 80013d6:	461a      	mov	r2, r3
 80013d8:	e7f2      	b.n	80013c0 <putui_+0xa>
 80013da:	1888      	adds	r0, r1, r2
 80013dc:	f7ff ffb2 	bl	8001344 <puts_>
 80013e0:	b004      	add	sp, #16
 80013e2:	bd10      	pop	{r4, pc}

080013e4 <putx_>:
 80013e4:	b51f      	push	{r0, r1, r2, r3, r4, lr}
 80013e6:	2300      	movs	r3, #0
 80013e8:	f88d 300f 	strb.w	r3, [sp, #15]
 80013ec:	220a      	movs	r2, #10
 80013ee:	f000 030f 	and.w	r3, r0, #15
 80013f2:	2b09      	cmp	r3, #9
 80013f4:	a901      	add	r1, sp, #4
 80013f6:	bf94      	ite	ls
 80013f8:	3330      	addls	r3, #48	; 0x30
 80013fa:	3357      	addhi	r3, #87	; 0x57
 80013fc:	0900      	lsrs	r0, r0, #4
 80013fe:	548b      	strb	r3, [r1, r2]
 8001400:	f102 33ff 	add.w	r3, r2, #4294967295	; 0xffffffff
 8001404:	d001      	beq.n	800140a <putx_+0x26>
 8001406:	461a      	mov	r2, r3
 8001408:	e7f1      	b.n	80013ee <putx_+0xa>
 800140a:	1888      	adds	r0, r1, r2
 800140c:	f7ff ff9a 	bl	8001344 <puts_>
 8001410:	b005      	add	sp, #20
 8001412:	f85d fb04 	ldr.w	pc, [sp], #4
	...

08001418 <printf_>:
 8001418:	b40f      	push	{r0, r1, r2, r3}
 800141a:	b537      	push	{r0, r1, r2, r4, r5, lr}
 800141c:	ac06      	add	r4, sp, #24
 800141e:	4826      	ldr	r0, [pc, #152]	; (80014b8 <printf_+0xa0>)
 8001420:	f854 5b04 	ldr.w	r5, [r4], #4
 8001424:	f000 f8a3 	bl	800156e <mutex_lock>
 8001428:	9401      	str	r4, [sp, #4]
 800142a:	2400      	movs	r4, #0
 800142c:	5d28      	ldrb	r0, [r5, r4]
 800142e:	2800      	cmp	r0, #0
 8001430:	d039      	beq.n	80014a6 <printf_+0x8e>
 8001432:	2825      	cmp	r0, #37	; 0x25
 8001434:	d003      	beq.n	800143e <printf_+0x26>
 8001436:	f7ff ff75 	bl	8001324 <putc_>
 800143a:	3401      	adds	r4, #1
 800143c:	e7f6      	b.n	800142c <printf_+0x14>
 800143e:	192b      	adds	r3, r5, r4
 8001440:	7858      	ldrb	r0, [r3, #1]
 8001442:	2869      	cmp	r0, #105	; 0x69
 8001444:	d016      	beq.n	8001474 <printf_+0x5c>
 8001446:	d808      	bhi.n	800145a <printf_+0x42>
 8001448:	2825      	cmp	r0, #37	; 0x25
 800144a:	d028      	beq.n	800149e <printf_+0x86>
 800144c:	2863      	cmp	r0, #99	; 0x63
 800144e:	d128      	bne.n	80014a2 <printf_+0x8a>
 8001450:	9b01      	ldr	r3, [sp, #4]
 8001452:	1d1a      	adds	r2, r3, #4
 8001454:	9201      	str	r2, [sp, #4]
 8001456:	7818      	ldrb	r0, [r3, #0]
 8001458:	e021      	b.n	800149e <printf_+0x86>
 800145a:	2875      	cmp	r0, #117	; 0x75
 800145c:	d011      	beq.n	8001482 <printf_+0x6a>
 800145e:	2878      	cmp	r0, #120	; 0x78
 8001460:	d016      	beq.n	8001490 <printf_+0x78>
 8001462:	2873      	cmp	r0, #115	; 0x73
 8001464:	d11d      	bne.n	80014a2 <printf_+0x8a>
 8001466:	9b01      	ldr	r3, [sp, #4]
 8001468:	1d1a      	adds	r2, r3, #4
 800146a:	6818      	ldr	r0, [r3, #0]
 800146c:	9201      	str	r2, [sp, #4]
 800146e:	f7ff ff69 	bl	8001344 <puts_>
 8001472:	e016      	b.n	80014a2 <printf_+0x8a>
 8001474:	9b01      	ldr	r3, [sp, #4]
 8001476:	1d1a      	adds	r2, r3, #4
 8001478:	6818      	ldr	r0, [r3, #0]
 800147a:	9201      	str	r2, [sp, #4]
 800147c:	f7ff ff76 	bl	800136c <puti_>
 8001480:	e00f      	b.n	80014a2 <printf_+0x8a>
 8001482:	9b01      	ldr	r3, [sp, #4]
 8001484:	1d1a      	adds	r2, r3, #4
 8001486:	6818      	ldr	r0, [r3, #0]
 8001488:	9201      	str	r2, [sp, #4]
 800148a:	f7ff ff94 	bl	80013b6 <putui_>
 800148e:	e008      	b.n	80014a2 <printf_+0x8a>
 8001490:	9b01      	ldr	r3, [sp, #4]
 8001492:	1d1a      	adds	r2, r3, #4
 8001494:	6818      	ldr	r0, [r3, #0]
 8001496:	9201      	str	r2, [sp, #4]
 8001498:	f7ff ffa4 	bl	80013e4 <putx_>
 800149c:	e001      	b.n	80014a2 <printf_+0x8a>
 800149e:	f7ff ff41 	bl	8001324 <putc_>
 80014a2:	3402      	adds	r4, #2
 80014a4:	e7c2      	b.n	800142c <printf_+0x14>
 80014a6:	4804      	ldr	r0, [pc, #16]	; (80014b8 <printf_+0xa0>)
 80014a8:	f000 f87d 	bl	80015a6 <mutex_unlock>
 80014ac:	b003      	add	sp, #12
 80014ae:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
 80014b2:	b004      	add	sp, #16
 80014b4:	4770      	bx	lr
 80014b6:	bf00      	nop
 80014b8:	20000bb4 	.word	0x20000bb4

080014bc <stdio_init>:
 80014bc:	b510      	push	{r4, lr}
 80014be:	480e      	ldr	r0, [pc, #56]	; (80014f8 <stdio_init+0x3c>)
 80014c0:	f000 f84b 	bl	800155a <mutex_init>
 80014c4:	480d      	ldr	r0, [pc, #52]	; (80014fc <stdio_init+0x40>)
 80014c6:	f000 f848 	bl	800155a <mutex_init>
 80014ca:	480d      	ldr	r0, [pc, #52]	; (8001500 <stdio_init+0x44>)
 80014cc:	f000 f845 	bl	800155a <mutex_init>
 80014d0:	480c      	ldr	r0, [pc, #48]	; (8001504 <stdio_init+0x48>)
 80014d2:	f000 f842 	bl	800155a <mutex_init>
 80014d6:	2408      	movs	r4, #8
 80014d8:	2020      	movs	r0, #32
 80014da:	f7ff ff23 	bl	8001324 <putc_>
 80014de:	3c01      	subs	r4, #1
 80014e0:	d1fa      	bne.n	80014d8 <stdio_init+0x1c>
 80014e2:	2420      	movs	r4, #32
 80014e4:	200a      	movs	r0, #10
 80014e6:	f7ff ff1d 	bl	8001324 <putc_>
 80014ea:	3c01      	subs	r4, #1
 80014ec:	d1fa      	bne.n	80014e4 <stdio_init+0x28>
 80014ee:	4806      	ldr	r0, [pc, #24]	; (8001508 <stdio_init+0x4c>)
 80014f0:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80014f4:	f7ff bf90 	b.w	8001418 <printf_>
 80014f8:	20000bac 	.word	0x20000bac
 80014fc:	20000bb0 	.word	0x20000bb0
 8001500:	20000bb8 	.word	0x20000bb8
 8001504:	20000bb4 	.word	0x20000bb4
 8001508:	08004b35 	.word	0x08004b35

0800150c <mem_init>:
 800150c:	4b06      	ldr	r3, [pc, #24]	; (8001528 <mem_init+0x1c>)
 800150e:	4a07      	ldr	r2, [pc, #28]	; (800152c <mem_init+0x20>)
 8001510:	601a      	str	r2, [r3, #0]
 8001512:	4907      	ldr	r1, [pc, #28]	; (8001530 <mem_init+0x24>)
 8001514:	4b07      	ldr	r3, [pc, #28]	; (8001534 <mem_init+0x28>)
 8001516:	4808      	ldr	r0, [pc, #32]	; (8001538 <mem_init+0x2c>)
 8001518:	1a5b      	subs	r3, r3, r1
 800151a:	4908      	ldr	r1, [pc, #32]	; (800153c <mem_init+0x30>)
 800151c:	4413      	add	r3, r2
 800151e:	600b      	str	r3, [r1, #0]
 8001520:	4b07      	ldr	r3, [pc, #28]	; (8001540 <mem_init+0x34>)
 8001522:	601a      	str	r2, [r3, #0]
 8001524:	f000 b819 	b.w	800155a <mutex_init>
 8001528:	20000bbc 	.word	0x20000bbc
 800152c:	2000109c 	.word	0x2000109c
 8001530:	2000109c 	.word	0x2000109c
 8001534:	20004000 	.word	0x20004000
 8001538:	20000bc8 	.word	0x20000bc8
 800153c:	20000bc4 	.word	0x20000bc4
 8001540:	20000bc0 	.word	0x20000bc0

08001544 <lib_os_init>:
 8001544:	b508      	push	{r3, lr}
 8001546:	f7ff fe79 	bl	800123c <kernel_init>
 800154a:	f7ff ffdf 	bl	800150c <mem_init>
 800154e:	f7ff fecf 	bl	80012f0 <messages_init>
 8001552:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001556:	f7ff bfb1 	b.w	80014bc <stdio_init>

0800155a <mutex_init>:
 800155a:	b510      	push	{r4, lr}
 800155c:	4604      	mov	r4, r0
 800155e:	f7ff fe15 	bl	800118c <sched_off>
 8001562:	2300      	movs	r3, #0
 8001564:	6023      	str	r3, [r4, #0]
 8001566:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800156a:	f7ff be11 	b.w	8001190 <sched_on>

0800156e <mutex_lock>:
 800156e:	b513      	push	{r0, r1, r4, lr}
 8001570:	4604      	mov	r4, r0
 8001572:	f7ff fe0b 	bl	800118c <sched_off>
 8001576:	6823      	ldr	r3, [r4, #0]
 8001578:	9301      	str	r3, [sp, #4]
 800157a:	f7ff fe09 	bl	8001190 <sched_on>
 800157e:	9b01      	ldr	r3, [sp, #4]
 8001580:	b10b      	cbz	r3, 8001586 <mutex_lock+0x18>
 8001582:	f7ff fe81 	bl	8001288 <set_wait_state>
 8001586:	9b01      	ldr	r3, [sp, #4]
 8001588:	2b00      	cmp	r3, #0
 800158a:	d1f2      	bne.n	8001572 <mutex_lock+0x4>
 800158c:	f7ff fdfe 	bl	800118c <sched_off>
 8001590:	6823      	ldr	r3, [r4, #0]
 8001592:	9301      	str	r3, [sp, #4]
 8001594:	9b01      	ldr	r3, [sp, #4]
 8001596:	2b00      	cmp	r3, #0
 8001598:	d1eb      	bne.n	8001572 <mutex_lock+0x4>
 800159a:	2301      	movs	r3, #1
 800159c:	6023      	str	r3, [r4, #0]
 800159e:	f7ff fdf7 	bl	8001190 <sched_on>
 80015a2:	b002      	add	sp, #8
 80015a4:	bd10      	pop	{r4, pc}

080015a6 <mutex_unlock>:
 80015a6:	b508      	push	{r3, lr}
 80015a8:	f7ff ffd7 	bl	800155a <mutex_init>
 80015ac:	f7ff fe8e 	bl	80012cc <wake_up_threads>
 80015b0:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80015b4:	f7ff bdee 	b.w	8001194 <yield>

080015b8 <log_write>:
 80015b8:	b570      	push	{r4, r5, r6, lr}
 80015ba:	f3c0 060a 	ubfx	r6, r0, #0, #11
 80015be:	460c      	mov	r4, r1
 80015c0:	4615      	mov	r5, r2
 80015c2:	f001 f897 	bl	80026f4 <i2cStart>
 80015c6:	0a30      	lsrs	r0, r6, #8
 80015c8:	0040      	lsls	r0, r0, #1
 80015ca:	f040 00a0 	orr.w	r0, r0, #160	; 0xa0
 80015ce:	f001 f8af 	bl	8002730 <i2cWrite>
 80015d2:	b2f0      	uxtb	r0, r6
 80015d4:	f001 f8ac 	bl	8002730 <i2cWrite>
 80015d8:	4425      	add	r5, r4
 80015da:	42ac      	cmp	r4, r5
 80015dc:	d004      	beq.n	80015e8 <log_write+0x30>
 80015de:	f814 0b01 	ldrb.w	r0, [r4], #1
 80015e2:	f001 f8a5 	bl	8002730 <i2cWrite>
 80015e6:	e7f8      	b.n	80015da <log_write+0x22>
 80015e8:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 80015ec:	f001 b891 	b.w	8002712 <i2cStop>

080015f0 <m_abs>:
 80015f0:	ee07 0a90 	vmov	s15, r0
 80015f4:	eef5 7ac0 	vcmpe.f32	s15, #0.0
 80015f8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80015fc:	bf48      	it	mi
 80015fe:	eef1 7a67 	vnegmi.f32	s15, s15
 8001602:	ee17 0a90 	vmov	r0, s15
 8001606:	4770      	bx	lr

08001608 <m_saturate>:
 8001608:	ee07 0a90 	vmov	s15, r0
 800160c:	ee06 1a90 	vmov	s13, r1
 8001610:	eef4 7a66 	vcmp.f32	s15, s13
 8001614:	ee07 2a10 	vmov	s14, r2
 8001618:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800161c:	bf48      	it	mi
 800161e:	eef0 7a66 	vmovmi.f32	s15, s13
 8001622:	eef4 7a47 	vcmp.f32	s15, s14
 8001626:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800162a:	bfcc      	ite	gt
 800162c:	ee17 0a10 	vmovgt	r0, s14
 8001630:	ee17 0a90 	vmovle	r0, s15
 8001634:	4770      	bx	lr

08001636 <m_min>:
 8001636:	ee07 0a10 	vmov	s14, r0
 800163a:	ee07 1a90 	vmov	s15, r1
 800163e:	eeb4 7ae7 	vcmpe.f32	s14, s15
 8001642:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001646:	bf54      	ite	pl
 8001648:	ee17 0a90 	vmovpl	r0, s15
 800164c:	ee17 0a10 	vmovmi	r0, s14
 8001650:	4770      	bx	lr
	...

08001654 <pid_init>:
 8001654:	ee07 2a90 	vmov	s15, r2
 8001658:	ee06 3a10 	vmov	s12, r3
 800165c:	ed9d 7a00 	vldr	s14, [sp]
 8001660:	eddd 6a01 	vldr	s13, [sp, #4]
 8001664:	6241      	str	r1, [r0, #36]	; 0x24
 8001666:	ee37 6a86 	vadd.f32	s12, s15, s12
 800166a:	ee77 5a07 	vadd.f32	s11, s14, s14
 800166e:	ee36 6a07 	vadd.f32	s12, s12, s14
 8001672:	eef1 7a67 	vneg.f32	s15, s15
 8001676:	ee36 6a26 	vadd.f32	s12, s12, s13
 800167a:	ee77 7ae5 	vsub.f32	s15, s15, s11
 800167e:	ed80 6a04 	vstr	s12, [r0, #16]
 8001682:	ed9f 6a0b 	vldr	s12, [pc, #44]	; 80016b0 <pid_init+0x5c>
 8001686:	ee26 6a86 	vmul.f32	s12, s13, s12
 800168a:	2200      	movs	r2, #0
 800168c:	ee77 7ac6 	vsub.f32	s15, s15, s12
 8001690:	ee37 7a06 	vadd.f32	s14, s14, s12
 8001694:	eef1 6a66 	vneg.f32	s13, s13
 8001698:	6002      	str	r2, [r0, #0]
 800169a:	6042      	str	r2, [r0, #4]
 800169c:	6082      	str	r2, [r0, #8]
 800169e:	60c2      	str	r2, [r0, #12]
 80016a0:	edc0 7a05 	vstr	s15, [r0, #20]
 80016a4:	ed80 7a06 	vstr	s14, [r0, #24]
 80016a8:	edc0 6a07 	vstr	s13, [r0, #28]
 80016ac:	6202      	str	r2, [r0, #32]
 80016ae:	4770      	bx	lr
 80016b0:	40400000 	.word	0x40400000

080016b4 <pid_process>:
 80016b4:	edd0 7a08 	vldr	s15, [r0, #32]
 80016b8:	ed90 5a04 	vldr	s10, [r0, #16]
 80016bc:	ed90 6a00 	vldr	s12, [r0]
 80016c0:	edd0 6a01 	vldr	s13, [r0, #4]
 80016c4:	ed80 6a01 	vstr	s12, [r0, #4]
 80016c8:	ee05 1a90 	vmov	s11, r1
 80016cc:	ee45 7a85 	vmla.f32	s15, s11, s10
 80016d0:	6001      	str	r1, [r0, #0]
 80016d2:	edd0 5a05 	vldr	s11, [r0, #20]
 80016d6:	ed90 7a02 	vldr	s14, [r0, #8]
 80016da:	edc0 6a02 	vstr	s13, [r0, #8]
 80016de:	ee46 7a25 	vmla.f32	s15, s12, s11
 80016e2:	ed90 6a06 	vldr	s12, [r0, #24]
 80016e6:	ed80 7a03 	vstr	s14, [r0, #12]
 80016ea:	ee46 7a86 	vmla.f32	s15, s13, s12
 80016ee:	edd0 6a07 	vldr	s13, [r0, #28]
 80016f2:	ee47 7a26 	vmla.f32	s15, s14, s13
 80016f6:	ed90 7a09 	vldr	s14, [r0, #36]	; 0x24
 80016fa:	edc0 7a08 	vstr	s15, [r0, #32]
 80016fe:	eef4 7ac7 	vcmpe.f32	s15, s14
 8001702:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001706:	bfc8      	it	gt
 8001708:	ed80 7a08 	vstrgt	s14, [r0, #32]
 800170c:	edd0 7a08 	vldr	s15, [r0, #32]
 8001710:	eeb1 7a47 	vneg.f32	s14, s14
 8001714:	eef4 7ac7 	vcmpe.f32	s15, s14
 8001718:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800171c:	bf48      	it	mi
 800171e:	ed80 7a08 	vstrmi	s14, [r0, #32]
 8001722:	6a00      	ldr	r0, [r0, #32]
 8001724:	4770      	bx	lr
	...

08001728 <TIM2_IRQHandler>:
 8001728:	4a21      	ldr	r2, [pc, #132]	; (80017b0 <TIM2_IRQHandler+0x88>)
 800172a:	4922      	ldr	r1, [pc, #136]	; (80017b4 <TIM2_IRQHandler+0x8c>)
 800172c:	6813      	ldr	r3, [r2, #0]
 800172e:	2b01      	cmp	r3, #1
 8001730:	b510      	push	{r4, lr}
 8001732:	d011      	beq.n	8001758 <TIM2_IRQHandler+0x30>
 8001734:	d306      	bcc.n	8001744 <TIM2_IRQHandler+0x1c>
 8001736:	2b02      	cmp	r3, #2
 8001738:	d113      	bne.n	8001762 <TIM2_IRQHandler+0x3a>
 800173a:	f44f 6380 	mov.w	r3, #1024	; 0x400
 800173e:	850b      	strh	r3, [r1, #40]	; 0x28
 8001740:	2304      	movs	r3, #4
 8001742:	e023      	b.n	800178c <TIM2_IRQHandler+0x64>
 8001744:	f44f 7380 	mov.w	r3, #256	; 0x100
 8001748:	850b      	strh	r3, [r1, #40]	; 0x28
 800174a:	f44f 6380 	mov.w	r3, #1024	; 0x400
 800174e:	618b      	str	r3, [r1, #24]
 8001750:	2301      	movs	r3, #1
 8001752:	6013      	str	r3, [r2, #0]
 8001754:	6093      	str	r3, [r2, #8]
 8001756:	e023      	b.n	80017a0 <TIM2_IRQHandler+0x78>
 8001758:	f44f 7380 	mov.w	r3, #256	; 0x100
 800175c:	618b      	str	r3, [r1, #24]
 800175e:	2302      	movs	r3, #2
 8001760:	e014      	b.n	800178c <TIM2_IRQHandler+0x64>
 8001762:	f013 0f01 	tst.w	r3, #1
 8001766:	4814      	ldr	r0, [pc, #80]	; (80017b8 <TIM2_IRQHandler+0x90>)
 8001768:	f103 0401 	add.w	r4, r3, #1
 800176c:	d010      	beq.n	8001790 <TIM2_IRQHandler+0x68>
 800176e:	3b04      	subs	r3, #4
 8001770:	f023 0301 	bic.w	r3, r3, #1
 8001774:	4413      	add	r3, r2
 8001776:	6c00      	ldr	r0, [r0, #64]	; 0x40
 8001778:	8298      	strh	r0, [r3, #20]
 800177a:	f5b4 7f82 	cmp.w	r4, #260	; 0x104
 800177e:	f44f 7380 	mov.w	r3, #256	; 0x100
 8001782:	850b      	strh	r3, [r1, #40]	; 0x28
 8001784:	d201      	bcs.n	800178a <TIM2_IRQHandler+0x62>
 8001786:	6014      	str	r4, [r2, #0]
 8001788:	e00a      	b.n	80017a0 <TIM2_IRQHandler+0x78>
 800178a:	2300      	movs	r3, #0
 800178c:	6013      	str	r3, [r2, #0]
 800178e:	e007      	b.n	80017a0 <TIM2_IRQHandler+0x78>
 8001790:	f44f 7380 	mov.w	r3, #256	; 0x100
 8001794:	618b      	str	r3, [r1, #24]
 8001796:	6883      	ldr	r3, [r0, #8]
 8001798:	6014      	str	r4, [r2, #0]
 800179a:	f043 0304 	orr.w	r3, r3, #4
 800179e:	6083      	str	r3, [r0, #8]
 80017a0:	f04f 4080 	mov.w	r0, #1073741824	; 0x40000000
 80017a4:	2101      	movs	r1, #1
 80017a6:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80017aa:	f000 bd1e 	b.w	80021ea <TIM_ClearITPendingBit>
 80017ae:	bf00      	nop
 80017b0:	20000bcc 	.word	0x20000bcc
 80017b4:	48000400 	.word	0x48000400
 80017b8:	50000500 	.word	0x50000500

080017bc <rgb_i2c_delay>:
 80017bc:	bf00      	nop
 80017be:	bf00      	nop
 80017c0:	bf00      	nop
 80017c2:	bf00      	nop
 80017c4:	4770      	bx	lr
	...

080017c8 <RGBSetLowSDA>:
 80017c8:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 80017ca:	4f15      	ldr	r7, [pc, #84]	; (8001820 <RGBSetLowSDA+0x58>)
 80017cc:	2401      	movs	r4, #1
 80017ce:	783b      	ldrb	r3, [r7, #0]
 80017d0:	9300      	str	r3, [sp, #0]
 80017d2:	2603      	movs	r6, #3
 80017d4:	2500      	movs	r5, #0
 80017d6:	4669      	mov	r1, sp
 80017d8:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80017dc:	f88d 5007 	strb.w	r5, [sp, #7]
 80017e0:	f88d 4004 	strb.w	r4, [sp, #4]
 80017e4:	f88d 6005 	strb.w	r6, [sp, #5]
 80017e8:	f88d 4006 	strb.w	r4, [sp, #6]
 80017ec:	f001 fa8e 	bl	8002d0c <GPIO_Init>
 80017f0:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 80017f4:	783a      	ldrb	r2, [r7, #0]
 80017f6:	851a      	strh	r2, [r3, #40]	; 0x28
 80017f8:	f88d 5007 	strb.w	r5, [sp, #7]
 80017fc:	4d09      	ldr	r5, [pc, #36]	; (8001824 <RGBSetLowSDA+0x5c>)
 80017fe:	9400      	str	r4, [sp, #0]
 8001800:	4628      	mov	r0, r5
 8001802:	4669      	mov	r1, sp
 8001804:	f88d 4004 	strb.w	r4, [sp, #4]
 8001808:	f88d 6005 	strb.w	r6, [sp, #5]
 800180c:	f88d 4006 	strb.w	r4, [sp, #6]
 8001810:	f001 fa7c 	bl	8002d0c <GPIO_Init>
 8001814:	852c      	strh	r4, [r5, #40]	; 0x28
 8001816:	f7ff ffd1 	bl	80017bc <rgb_i2c_delay>
 800181a:	b003      	add	sp, #12
 800181c:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800181e:	bf00      	nop
 8001820:	20000e3a 	.word	0x20000e3a
 8001824:	48000400 	.word	0x48000400

08001828 <RGBSetHighSDA>:
 8001828:	b573      	push	{r0, r1, r4, r5, r6, lr}
 800182a:	4d13      	ldr	r5, [pc, #76]	; (8001878 <RGBSetHighSDA+0x50>)
 800182c:	2400      	movs	r4, #0
 800182e:	782b      	ldrb	r3, [r5, #0]
 8001830:	9300      	str	r3, [sp, #0]
 8001832:	2603      	movs	r6, #3
 8001834:	4669      	mov	r1, sp
 8001836:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 800183a:	f88d 4004 	strb.w	r4, [sp, #4]
 800183e:	f88d 4007 	strb.w	r4, [sp, #7]
 8001842:	f88d 6005 	strb.w	r6, [sp, #5]
 8001846:	f001 fa61 	bl	8002d0c <GPIO_Init>
 800184a:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 800184e:	782a      	ldrb	r2, [r5, #0]
 8001850:	619a      	str	r2, [r3, #24]
 8001852:	f88d 4004 	strb.w	r4, [sp, #4]
 8001856:	f88d 4007 	strb.w	r4, [sp, #7]
 800185a:	4c08      	ldr	r4, [pc, #32]	; (800187c <RGBSetHighSDA+0x54>)
 800185c:	f88d 6005 	strb.w	r6, [sp, #5]
 8001860:	2501      	movs	r5, #1
 8001862:	4620      	mov	r0, r4
 8001864:	4669      	mov	r1, sp
 8001866:	9500      	str	r5, [sp, #0]
 8001868:	f001 fa50 	bl	8002d0c <GPIO_Init>
 800186c:	61a5      	str	r5, [r4, #24]
 800186e:	f7ff ffa5 	bl	80017bc <rgb_i2c_delay>
 8001872:	b002      	add	sp, #8
 8001874:	bd70      	pop	{r4, r5, r6, pc}
 8001876:	bf00      	nop
 8001878:	20000e3a 	.word	0x20000e3a
 800187c:	48000400 	.word	0x48000400

08001880 <RGBSetLowSCL>:
 8001880:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8001884:	f44f 7280 	mov.w	r2, #256	; 0x100
 8001888:	851a      	strh	r2, [r3, #40]	; 0x28
 800188a:	f7ff bf97 	b.w	80017bc <rgb_i2c_delay>

0800188e <RGBSetHighSCL>:
 800188e:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8001892:	f44f 7280 	mov.w	r2, #256	; 0x100
 8001896:	619a      	str	r2, [r3, #24]
 8001898:	f7ff bf90 	b.w	80017bc <rgb_i2c_delay>

0800189c <rgb_i2c_init>:
 800189c:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 800189e:	4f1f      	ldr	r7, [pc, #124]	; (800191c <rgb_i2c_init+0x80>)
 80018a0:	2400      	movs	r4, #0
 80018a2:	2501      	movs	r5, #1
 80018a4:	2603      	movs	r6, #3
 80018a6:	f44f 7380 	mov.w	r3, #256	; 0x100
 80018aa:	4669      	mov	r1, sp
 80018ac:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80018b0:	9300      	str	r3, [sp, #0]
 80018b2:	f88d 4006 	strb.w	r4, [sp, #6]
 80018b6:	f88d 4007 	strb.w	r4, [sp, #7]
 80018ba:	f88d 5004 	strb.w	r5, [sp, #4]
 80018be:	f88d 6005 	strb.w	r6, [sp, #5]
 80018c2:	f001 fa23 	bl	8002d0c <GPIO_Init>
 80018c6:	783b      	ldrb	r3, [r7, #0]
 80018c8:	9300      	str	r3, [sp, #0]
 80018ca:	4669      	mov	r1, sp
 80018cc:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80018d0:	f88d 4004 	strb.w	r4, [sp, #4]
 80018d4:	f88d 4007 	strb.w	r4, [sp, #7]
 80018d8:	f88d 6005 	strb.w	r6, [sp, #5]
 80018dc:	f001 fa16 	bl	8002d0c <GPIO_Init>
 80018e0:	7839      	ldrb	r1, [r7, #0]
 80018e2:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80018e6:	f001 fa53 	bl	8002d90 <GPIO_SetBits>
 80018ea:	f88d 4004 	strb.w	r4, [sp, #4]
 80018ee:	f88d 4007 	strb.w	r4, [sp, #7]
 80018f2:	4c0b      	ldr	r4, [pc, #44]	; (8001920 <rgb_i2c_init+0x84>)
 80018f4:	9500      	str	r5, [sp, #0]
 80018f6:	4620      	mov	r0, r4
 80018f8:	4669      	mov	r1, sp
 80018fa:	f88d 6005 	strb.w	r6, [sp, #5]
 80018fe:	f001 fa05 	bl	8002d0c <GPIO_Init>
 8001902:	4620      	mov	r0, r4
 8001904:	4629      	mov	r1, r5
 8001906:	f001 fa43 	bl	8002d90 <GPIO_SetBits>
 800190a:	f7ff ffc0 	bl	800188e <RGBSetHighSCL>
 800190e:	f7ff ff5b 	bl	80017c8 <RGBSetLowSDA>
 8001912:	f7ff ff89 	bl	8001828 <RGBSetHighSDA>
 8001916:	b003      	add	sp, #12
 8001918:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800191a:	bf00      	nop
 800191c:	20000e3a 	.word	0x20000e3a
 8001920:	48000400 	.word	0x48000400

08001924 <rgb_i2cStart>:
 8001924:	b508      	push	{r3, lr}
 8001926:	f7ff ffb2 	bl	800188e <RGBSetHighSCL>
 800192a:	f7ff ff7d 	bl	8001828 <RGBSetHighSDA>
 800192e:	f7ff ffae 	bl	800188e <RGBSetHighSCL>
 8001932:	f7ff ff49 	bl	80017c8 <RGBSetLowSDA>
 8001936:	f7ff ffa3 	bl	8001880 <RGBSetLowSCL>
 800193a:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800193e:	f7ff bf73 	b.w	8001828 <RGBSetHighSDA>

08001942 <rgb_i2cStop>:
 8001942:	b508      	push	{r3, lr}
 8001944:	f7ff ff9c 	bl	8001880 <RGBSetLowSCL>
 8001948:	f7ff ff3e 	bl	80017c8 <RGBSetLowSDA>
 800194c:	f7ff ff9f 	bl	800188e <RGBSetHighSCL>
 8001950:	f7ff ff3a 	bl	80017c8 <RGBSetLowSDA>
 8001954:	f7ff ff9b 	bl	800188e <RGBSetHighSCL>
 8001958:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800195c:	f7ff bf64 	b.w	8001828 <RGBSetHighSDA>

08001960 <rgb_i2cWrite>:
 8001960:	b538      	push	{r3, r4, r5, lr}
 8001962:	4605      	mov	r5, r0
 8001964:	2408      	movs	r4, #8
 8001966:	f7ff ff8b 	bl	8001880 <RGBSetLowSCL>
 800196a:	062b      	lsls	r3, r5, #24
 800196c:	d502      	bpl.n	8001974 <rgb_i2cWrite+0x14>
 800196e:	f7ff ff5b 	bl	8001828 <RGBSetHighSDA>
 8001972:	e001      	b.n	8001978 <rgb_i2cWrite+0x18>
 8001974:	f7ff ff28 	bl	80017c8 <RGBSetLowSDA>
 8001978:	3c01      	subs	r4, #1
 800197a:	f7ff ff88 	bl	800188e <RGBSetHighSCL>
 800197e:	006d      	lsls	r5, r5, #1
 8001980:	f014 04ff 	ands.w	r4, r4, #255	; 0xff
 8001984:	b2ed      	uxtb	r5, r5
 8001986:	d1ee      	bne.n	8001966 <rgb_i2cWrite+0x6>
 8001988:	f7ff ff7a 	bl	8001880 <RGBSetLowSCL>
 800198c:	f7ff ff4c 	bl	8001828 <RGBSetHighSDA>
 8001990:	f7ff ff7d 	bl	800188e <RGBSetHighSCL>
 8001994:	f7ff ff74 	bl	8001880 <RGBSetLowSCL>
 8001998:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 800199c:	f7ff bf0e 	b.w	80017bc <rgb_i2c_delay>

080019a0 <rgb_i2cRead>:
 80019a0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80019a4:	1e4e      	subs	r6, r1, #1
 80019a6:	4680      	mov	r8, r0
 80019a8:	460c      	mov	r4, r1
 80019aa:	f101 0708 	add.w	r7, r1, #8
 80019ae:	4633      	mov	r3, r6
 80019b0:	2200      	movs	r2, #0
 80019b2:	f803 2f01 	strb.w	r2, [r3, #1]!
 80019b6:	42bb      	cmp	r3, r7
 80019b8:	d1fa      	bne.n	80019b0 <rgb_i2cRead+0x10>
 80019ba:	f7ff ff61 	bl	8001880 <RGBSetLowSCL>
 80019be:	f7ff ff33 	bl	8001828 <RGBSetHighSDA>
 80019c2:	2508      	movs	r5, #8
 80019c4:	4633      	mov	r3, r6
 80019c6:	f813 2f01 	ldrb.w	r2, [r3, #1]!
 80019ca:	0052      	lsls	r2, r2, #1
 80019cc:	42bb      	cmp	r3, r7
 80019ce:	701a      	strb	r2, [r3, #0]
 80019d0:	d1f9      	bne.n	80019c6 <rgb_i2cRead+0x26>
 80019d2:	f7ff ff5c 	bl	800188e <RGBSetHighSCL>
 80019d6:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 80019da:	8a1b      	ldrh	r3, [r3, #16]
 80019dc:	b29b      	uxth	r3, r3
 80019de:	07d9      	lsls	r1, r3, #31
 80019e0:	bf42      	ittt	mi
 80019e2:	7822      	ldrbmi	r2, [r4, #0]
 80019e4:	f042 0201 	orrmi.w	r2, r2, #1
 80019e8:	7022      	strbmi	r2, [r4, #0]
 80019ea:	079a      	lsls	r2, r3, #30
 80019ec:	bf42      	ittt	mi
 80019ee:	7862      	ldrbmi	r2, [r4, #1]
 80019f0:	f042 0201 	orrmi.w	r2, r2, #1
 80019f4:	7062      	strbmi	r2, [r4, #1]
 80019f6:	0758      	lsls	r0, r3, #29
 80019f8:	bf42      	ittt	mi
 80019fa:	78a2      	ldrbmi	r2, [r4, #2]
 80019fc:	f042 0201 	orrmi.w	r2, r2, #1
 8001a00:	70a2      	strbmi	r2, [r4, #2]
 8001a02:	0719      	lsls	r1, r3, #28
 8001a04:	bf42      	ittt	mi
 8001a06:	78e2      	ldrbmi	r2, [r4, #3]
 8001a08:	f042 0201 	orrmi.w	r2, r2, #1
 8001a0c:	70e2      	strbmi	r2, [r4, #3]
 8001a0e:	06da      	lsls	r2, r3, #27
 8001a10:	bf42      	ittt	mi
 8001a12:	7922      	ldrbmi	r2, [r4, #4]
 8001a14:	f042 0201 	orrmi.w	r2, r2, #1
 8001a18:	7122      	strbmi	r2, [r4, #4]
 8001a1a:	0698      	lsls	r0, r3, #26
 8001a1c:	bf42      	ittt	mi
 8001a1e:	7962      	ldrbmi	r2, [r4, #5]
 8001a20:	f042 0201 	orrmi.w	r2, r2, #1
 8001a24:	7162      	strbmi	r2, [r4, #5]
 8001a26:	0659      	lsls	r1, r3, #25
 8001a28:	bf42      	ittt	mi
 8001a2a:	79a2      	ldrbmi	r2, [r4, #6]
 8001a2c:	f042 0201 	orrmi.w	r2, r2, #1
 8001a30:	71a2      	strbmi	r2, [r4, #6]
 8001a32:	061a      	lsls	r2, r3, #24
 8001a34:	bf42      	ittt	mi
 8001a36:	79e3      	ldrbmi	r3, [r4, #7]
 8001a38:	f043 0301 	orrmi.w	r3, r3, #1
 8001a3c:	71e3      	strbmi	r3, [r4, #7]
 8001a3e:	4b0c      	ldr	r3, [pc, #48]	; (8001a70 <rgb_i2cRead+0xd0>)
 8001a40:	8a1b      	ldrh	r3, [r3, #16]
 8001a42:	07db      	lsls	r3, r3, #31
 8001a44:	bf42      	ittt	mi
 8001a46:	7a23      	ldrbmi	r3, [r4, #8]
 8001a48:	f043 0301 	orrmi.w	r3, r3, #1
 8001a4c:	7223      	strbmi	r3, [r4, #8]
 8001a4e:	f7ff ff17 	bl	8001880 <RGBSetLowSCL>
 8001a52:	3d01      	subs	r5, #1
 8001a54:	d1b6      	bne.n	80019c4 <rgb_i2cRead+0x24>
 8001a56:	f1b8 0f00 	cmp.w	r8, #0
 8001a5a:	d001      	beq.n	8001a60 <rgb_i2cRead+0xc0>
 8001a5c:	f7ff feb4 	bl	80017c8 <RGBSetLowSDA>
 8001a60:	f7ff ff15 	bl	800188e <RGBSetHighSCL>
 8001a64:	f7ff ff0c 	bl	8001880 <RGBSetLowSCL>
 8001a68:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8001a6c:	f7ff bea6 	b.w	80017bc <rgb_i2c_delay>
 8001a70:	48000400 	.word	0x48000400

08001a74 <rgb_i2c_write_reg>:
 8001a74:	b570      	push	{r4, r5, r6, lr}
 8001a76:	4606      	mov	r6, r0
 8001a78:	460d      	mov	r5, r1
 8001a7a:	4614      	mov	r4, r2
 8001a7c:	f7ff ff52 	bl	8001924 <rgb_i2cStart>
 8001a80:	4630      	mov	r0, r6
 8001a82:	f7ff ff6d 	bl	8001960 <rgb_i2cWrite>
 8001a86:	4628      	mov	r0, r5
 8001a88:	f7ff ff6a 	bl	8001960 <rgb_i2cWrite>
 8001a8c:	4620      	mov	r0, r4
 8001a8e:	f7ff ff67 	bl	8001960 <rgb_i2cWrite>
 8001a92:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8001a96:	f7ff bf54 	b.w	8001942 <rgb_i2cStop>

08001a9a <rgb_i2c_read_reg>:
 8001a9a:	b570      	push	{r4, r5, r6, lr}
 8001a9c:	4604      	mov	r4, r0
 8001a9e:	460e      	mov	r6, r1
 8001aa0:	4615      	mov	r5, r2
 8001aa2:	f7ff ff3f 	bl	8001924 <rgb_i2cStart>
 8001aa6:	4620      	mov	r0, r4
 8001aa8:	f7ff ff5a 	bl	8001960 <rgb_i2cWrite>
 8001aac:	4630      	mov	r0, r6
 8001aae:	f7ff ff57 	bl	8001960 <rgb_i2cWrite>
 8001ab2:	f7ff ff37 	bl	8001924 <rgb_i2cStart>
 8001ab6:	f044 0001 	orr.w	r0, r4, #1
 8001aba:	f7ff ff51 	bl	8001960 <rgb_i2cWrite>
 8001abe:	4629      	mov	r1, r5
 8001ac0:	2000      	movs	r0, #0
 8001ac2:	f7ff ff6d 	bl	80019a0 <rgb_i2cRead>
 8001ac6:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8001aca:	f7ff bf3a 	b.w	8001942 <rgb_i2cStop>
	...

08001ad0 <rgb_init>:
 8001ad0:	b570      	push	{r4, r5, r6, lr}
 8001ad2:	4b1e      	ldr	r3, [pc, #120]	; (8001b4c <rgb_init+0x7c>)
 8001ad4:	2200      	movs	r2, #0
 8001ad6:	3201      	adds	r2, #1
 8001ad8:	2400      	movs	r4, #0
 8001ada:	2a09      	cmp	r2, #9
 8001adc:	801c      	strh	r4, [r3, #0]
 8001ade:	825c      	strh	r4, [r3, #18]
 8001ae0:	849c      	strh	r4, [r3, #36]	; 0x24
 8001ae2:	f8a3 4048 	strh.w	r4, [r3, #72]	; 0x48
 8001ae6:	86dc      	strh	r4, [r3, #54]	; 0x36
 8001ae8:	f103 0302 	add.w	r3, r3, #2
 8001aec:	d1f3      	bne.n	8001ad6 <rgb_init+0x6>
 8001aee:	4d18      	ldr	r5, [pc, #96]	; (8001b50 <rgb_init+0x80>)
 8001af0:	f64f 76ff 	movw	r6, #65535	; 0xffff
 8001af4:	802e      	strh	r6, [r5, #0]
 8001af6:	f7ff fed1 	bl	800189c <rgb_i2c_init>
 8001afa:	2072      	movs	r0, #114	; 0x72
 8001afc:	2181      	movs	r1, #129	; 0x81
 8001afe:	22ff      	movs	r2, #255	; 0xff
 8001b00:	f7ff ffb8 	bl	8001a74 <rgb_i2c_write_reg>
 8001b04:	2072      	movs	r0, #114	; 0x72
 8001b06:	2183      	movs	r1, #131	; 0x83
 8001b08:	22ff      	movs	r2, #255	; 0xff
 8001b0a:	f7ff ffb3 	bl	8001a74 <rgb_i2c_write_reg>
 8001b0e:	2072      	movs	r0, #114	; 0x72
 8001b10:	218d      	movs	r1, #141	; 0x8d
 8001b12:	4622      	mov	r2, r4
 8001b14:	f7ff ffae 	bl	8001a74 <rgb_i2c_write_reg>
 8001b18:	2072      	movs	r0, #114	; 0x72
 8001b1a:	2180      	movs	r1, #128	; 0x80
 8001b1c:	2203      	movs	r2, #3
 8001b1e:	f7ff ffa9 	bl	8001a74 <rgb_i2c_write_reg>
 8001b22:	2072      	movs	r0, #114	; 0x72
 8001b24:	218f      	movs	r1, #143	; 0x8f
 8001b26:	2223      	movs	r2, #35	; 0x23
 8001b28:	f7ff ffa4 	bl	8001a74 <rgb_i2c_write_reg>
 8001b2c:	f7ff fe7c 	bl	8001828 <RGBSetHighSDA>
 8001b30:	2072      	movs	r0, #114	; 0x72
 8001b32:	2180      	movs	r1, #128	; 0x80
 8001b34:	2207      	movs	r2, #7
 8001b36:	802c      	strh	r4, [r5, #0]
 8001b38:	f7ff ff9c 	bl	8001a74 <rgb_i2c_write_reg>
 8001b3c:	2072      	movs	r0, #114	; 0x72
 8001b3e:	218e      	movs	r1, #142	; 0x8e
 8001b40:	2208      	movs	r2, #8
 8001b42:	f7ff ff97 	bl	8001a74 <rgb_i2c_write_reg>
 8001b46:	802e      	strh	r6, [r5, #0]
 8001b48:	bd70      	pop	{r4, r5, r6, pc}
 8001b4a:	bf00      	nop
 8001b4c:	20000de0 	.word	0x20000de0
 8001b50:	20000e3a 	.word	0x20000e3a

08001b54 <rgb_get>:
 8001b54:	4800      	ldr	r0, [pc, #0]	; (8001b58 <rgb_get+0x4>)
 8001b56:	4770      	bx	lr
 8001b58:	20000de0 	.word	0x20000de0

08001b5c <rgb_read>:
 8001b5c:	b538      	push	{r3, r4, r5, lr}
 8001b5e:	f7ff fee1 	bl	8001924 <rgb_i2cStart>
 8001b62:	2072      	movs	r0, #114	; 0x72
 8001b64:	f7ff fefc 	bl	8001960 <rgb_i2cWrite>
 8001b68:	20b4      	movs	r0, #180	; 0xb4
 8001b6a:	f7ff fef9 	bl	8001960 <rgb_i2cWrite>
 8001b6e:	4d48      	ldr	r5, [pc, #288]	; (8001c90 <rgb_read+0x134>)
 8001b70:	f7ff fed8 	bl	8001924 <rgb_i2cStart>
 8001b74:	2073      	movs	r0, #115	; 0x73
 8001b76:	f7ff fef3 	bl	8001960 <rgb_i2cWrite>
 8001b7a:	2001      	movs	r0, #1
 8001b7c:	4945      	ldr	r1, [pc, #276]	; (8001c94 <rgb_read+0x138>)
 8001b7e:	f7ff ff0f 	bl	80019a0 <rgb_i2cRead>
 8001b82:	462a      	mov	r2, r5
 8001b84:	2300      	movs	r3, #0
 8001b86:	4c43      	ldr	r4, [pc, #268]	; (8001c94 <rgb_read+0x138>)
 8001b88:	5d19      	ldrb	r1, [r3, r4]
 8001b8a:	f822 1f02 	strh.w	r1, [r2, #2]!
 8001b8e:	3301      	adds	r3, #1
 8001b90:	2b09      	cmp	r3, #9
 8001b92:	d1f8      	bne.n	8001b86 <rgb_read+0x2a>
 8001b94:	2001      	movs	r0, #1
 8001b96:	4621      	mov	r1, r4
 8001b98:	f7ff ff02 	bl	80019a0 <rgb_i2cRead>
 8001b9c:	2300      	movs	r3, #0
 8001b9e:	5ce1      	ldrb	r1, [r4, r3]
 8001ba0:	f835 2f02 	ldrh.w	r2, [r5, #2]!
 8001ba4:	3301      	adds	r3, #1
 8001ba6:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
 8001baa:	2b09      	cmp	r3, #9
 8001bac:	802a      	strh	r2, [r5, #0]
 8001bae:	d1f6      	bne.n	8001b9e <rgb_read+0x42>
 8001bb0:	2001      	movs	r0, #1
 8001bb2:	4938      	ldr	r1, [pc, #224]	; (8001c94 <rgb_read+0x138>)
 8001bb4:	f7ff fef4 	bl	80019a0 <rgb_i2cRead>
 8001bb8:	2300      	movs	r3, #0
 8001bba:	4d37      	ldr	r5, [pc, #220]	; (8001c98 <rgb_read+0x13c>)
 8001bbc:	5ce2      	ldrb	r2, [r4, r3]
 8001bbe:	f825 2013 	strh.w	r2, [r5, r3, lsl #1]
 8001bc2:	3301      	adds	r3, #1
 8001bc4:	2b09      	cmp	r3, #9
 8001bc6:	d1f8      	bne.n	8001bba <rgb_read+0x5e>
 8001bc8:	2001      	movs	r0, #1
 8001bca:	4932      	ldr	r1, [pc, #200]	; (8001c94 <rgb_read+0x138>)
 8001bcc:	f7ff fee8 	bl	80019a0 <rgb_i2cRead>
 8001bd0:	2300      	movs	r3, #0
 8001bd2:	f835 2013 	ldrh.w	r2, [r5, r3, lsl #1]
 8001bd6:	5ce1      	ldrb	r1, [r4, r3]
 8001bd8:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
 8001bdc:	f825 2013 	strh.w	r2, [r5, r3, lsl #1]
 8001be0:	3301      	adds	r3, #1
 8001be2:	2b09      	cmp	r3, #9
 8001be4:	d1f5      	bne.n	8001bd2 <rgb_read+0x76>
 8001be6:	4d2d      	ldr	r5, [pc, #180]	; (8001c9c <rgb_read+0x140>)
 8001be8:	492a      	ldr	r1, [pc, #168]	; (8001c94 <rgb_read+0x138>)
 8001bea:	2001      	movs	r0, #1
 8001bec:	f7ff fed8 	bl	80019a0 <rgb_i2cRead>
 8001bf0:	462a      	mov	r2, r5
 8001bf2:	2300      	movs	r3, #0
 8001bf4:	5ce1      	ldrb	r1, [r4, r3]
 8001bf6:	f822 1f02 	strh.w	r1, [r2, #2]!
 8001bfa:	3301      	adds	r3, #1
 8001bfc:	2b09      	cmp	r3, #9
 8001bfe:	d1f9      	bne.n	8001bf4 <rgb_read+0x98>
 8001c00:	2001      	movs	r0, #1
 8001c02:	4924      	ldr	r1, [pc, #144]	; (8001c94 <rgb_read+0x138>)
 8001c04:	f7ff fecc 	bl	80019a0 <rgb_i2cRead>
 8001c08:	2300      	movs	r3, #0
 8001c0a:	5ce1      	ldrb	r1, [r4, r3]
 8001c0c:	f835 2f02 	ldrh.w	r2, [r5, #2]!
 8001c10:	3301      	adds	r3, #1
 8001c12:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
 8001c16:	2b09      	cmp	r3, #9
 8001c18:	802a      	strh	r2, [r5, #0]
 8001c1a:	d1f6      	bne.n	8001c0a <rgb_read+0xae>
 8001c1c:	4d20      	ldr	r5, [pc, #128]	; (8001ca0 <rgb_read+0x144>)
 8001c1e:	491d      	ldr	r1, [pc, #116]	; (8001c94 <rgb_read+0x138>)
 8001c20:	2001      	movs	r0, #1
 8001c22:	f7ff febd 	bl	80019a0 <rgb_i2cRead>
 8001c26:	462a      	mov	r2, r5
 8001c28:	2300      	movs	r3, #0
 8001c2a:	5ce1      	ldrb	r1, [r4, r3]
 8001c2c:	f822 1f02 	strh.w	r1, [r2, #2]!
 8001c30:	3301      	adds	r3, #1
 8001c32:	2b09      	cmp	r3, #9
 8001c34:	d1f9      	bne.n	8001c2a <rgb_read+0xce>
 8001c36:	2001      	movs	r0, #1
 8001c38:	4916      	ldr	r1, [pc, #88]	; (8001c94 <rgb_read+0x138>)
 8001c3a:	f7ff feb1 	bl	80019a0 <rgb_i2cRead>
 8001c3e:	2300      	movs	r3, #0
 8001c40:	5ce1      	ldrb	r1, [r4, r3]
 8001c42:	f835 2f02 	ldrh.w	r2, [r5, #2]!
 8001c46:	3301      	adds	r3, #1
 8001c48:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
 8001c4c:	2b09      	cmp	r3, #9
 8001c4e:	802a      	strh	r2, [r5, #0]
 8001c50:	d1f6      	bne.n	8001c40 <rgb_read+0xe4>
 8001c52:	4d14      	ldr	r5, [pc, #80]	; (8001ca4 <rgb_read+0x148>)
 8001c54:	490f      	ldr	r1, [pc, #60]	; (8001c94 <rgb_read+0x138>)
 8001c56:	2001      	movs	r0, #1
 8001c58:	f7ff fea2 	bl	80019a0 <rgb_i2cRead>
 8001c5c:	462a      	mov	r2, r5
 8001c5e:	2300      	movs	r3, #0
 8001c60:	5ce1      	ldrb	r1, [r4, r3]
 8001c62:	f822 1f02 	strh.w	r1, [r2, #2]!
 8001c66:	3301      	adds	r3, #1
 8001c68:	2b09      	cmp	r3, #9
 8001c6a:	d1f9      	bne.n	8001c60 <rgb_read+0x104>
 8001c6c:	2000      	movs	r0, #0
 8001c6e:	4909      	ldr	r1, [pc, #36]	; (8001c94 <rgb_read+0x138>)
 8001c70:	f7ff fe96 	bl	80019a0 <rgb_i2cRead>
 8001c74:	2300      	movs	r3, #0
 8001c76:	5ce1      	ldrb	r1, [r4, r3]
 8001c78:	f835 2f02 	ldrh.w	r2, [r5, #2]!
 8001c7c:	3301      	adds	r3, #1
 8001c7e:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
 8001c82:	2b09      	cmp	r3, #9
 8001c84:	802a      	strh	r2, [r5, #0]
 8001c86:	d1f6      	bne.n	8001c76 <rgb_read+0x11a>
 8001c88:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8001c8c:	f7ff be59 	b.w	8001942 <rgb_i2cStop>
 8001c90:	20000e14 	.word	0x20000e14
 8001c94:	20000e3c 	.word	0x20000e3c
 8001c98:	20000de0 	.word	0x20000de0
 8001c9c:	20000df0 	.word	0x20000df0
 8001ca0:	20000e02 	.word	0x20000e02
 8001ca4:	20000e26 	.word	0x20000e26

08001ca8 <main>:
 8001ca8:	b508      	push	{r3, lr}
 8001caa:	f000 ff8b 	bl	8002bc4 <lib_low_level_init>
 8001cae:	f7ff fc49 	bl	8001544 <lib_os_init>
 8001cb2:	4905      	ldr	r1, [pc, #20]	; (8001cc8 <main+0x20>)
 8001cb4:	4805      	ldr	r0, [pc, #20]	; (8001ccc <main+0x24>)
 8001cb6:	f44f 7200 	mov.w	r2, #512	; 0x200
 8001cba:	2306      	movs	r3, #6
 8001cbc:	f7ff fa7e 	bl	80011bc <create_thread>
 8001cc0:	f7ff fa76 	bl	80011b0 <kernel_start>
 8001cc4:	2000      	movs	r0, #0
 8001cc6:	bd08      	pop	{r3, pc}
 8001cc8:	20000e48 	.word	0x20000e48
 8001ccc:	08000c41 	.word	0x08000c41

08001cd0 <RCC_GetClocksFreq>:
 8001cd0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8001cd4:	4f9b      	ldr	r7, [pc, #620]	; (8001f44 <RCC_GetClocksFreq+0x274>)
 8001cd6:	687b      	ldr	r3, [r7, #4]
 8001cd8:	f003 030c 	and.w	r3, r3, #12
 8001cdc:	2b04      	cmp	r3, #4
 8001cde:	d005      	beq.n	8001cec <RCC_GetClocksFreq+0x1c>
 8001ce0:	2b08      	cmp	r3, #8
 8001ce2:	d006      	beq.n	8001cf2 <RCC_GetClocksFreq+0x22>
 8001ce4:	4a98      	ldr	r2, [pc, #608]	; (8001f48 <RCC_GetClocksFreq+0x278>)
 8001ce6:	6002      	str	r2, [r0, #0]
 8001ce8:	b9b3      	cbnz	r3, 8001d18 <RCC_GetClocksFreq+0x48>
 8001cea:	e016      	b.n	8001d1a <RCC_GetClocksFreq+0x4a>
 8001cec:	4b96      	ldr	r3, [pc, #600]	; (8001f48 <RCC_GetClocksFreq+0x278>)
 8001cee:	6003      	str	r3, [r0, #0]
 8001cf0:	e012      	b.n	8001d18 <RCC_GetClocksFreq+0x48>
 8001cf2:	687b      	ldr	r3, [r7, #4]
 8001cf4:	6879      	ldr	r1, [r7, #4]
 8001cf6:	f3c3 4383 	ubfx	r3, r3, #18, #4
 8001cfa:	1c9a      	adds	r2, r3, #2
 8001cfc:	03cb      	lsls	r3, r1, #15
 8001cfe:	bf49      	itett	mi
 8001d00:	6afb      	ldrmi	r3, [r7, #44]	; 0x2c
 8001d02:	4b92      	ldrpl	r3, [pc, #584]	; (8001f4c <RCC_GetClocksFreq+0x27c>)
 8001d04:	4990      	ldrmi	r1, [pc, #576]	; (8001f48 <RCC_GetClocksFreq+0x278>)
 8001d06:	f003 030f 	andmi.w	r3, r3, #15
 8001d0a:	bf44      	itt	mi
 8001d0c:	3301      	addmi	r3, #1
 8001d0e:	fbb1 f3f3 	udivmi	r3, r1, r3
 8001d12:	4353      	muls	r3, r2
 8001d14:	6003      	str	r3, [r0, #0]
 8001d16:	e000      	b.n	8001d1a <RCC_GetClocksFreq+0x4a>
 8001d18:	2300      	movs	r3, #0
 8001d1a:	687a      	ldr	r2, [r7, #4]
 8001d1c:	4e8c      	ldr	r6, [pc, #560]	; (8001f50 <RCC_GetClocksFreq+0x280>)
 8001d1e:	f8df c234 	ldr.w	ip, [pc, #564]	; 8001f54 <RCC_GetClocksFreq+0x284>
 8001d22:	f3c2 1203 	ubfx	r2, r2, #4, #4
 8001d26:	5cb4      	ldrb	r4, [r6, r2]
 8001d28:	6802      	ldr	r2, [r0, #0]
 8001d2a:	b2e4      	uxtb	r4, r4
 8001d2c:	fa22 f104 	lsr.w	r1, r2, r4
 8001d30:	6041      	str	r1, [r0, #4]
 8001d32:	687d      	ldr	r5, [r7, #4]
 8001d34:	f3c5 2502 	ubfx	r5, r5, #8, #3
 8001d38:	5d75      	ldrb	r5, [r6, r5]
 8001d3a:	fa21 fe05 	lsr.w	lr, r1, r5
 8001d3e:	f8c0 e008 	str.w	lr, [r0, #8]
 8001d42:	687d      	ldr	r5, [r7, #4]
 8001d44:	f3c5 25c2 	ubfx	r5, r5, #11, #3
 8001d48:	5d75      	ldrb	r5, [r6, r5]
 8001d4a:	b2ed      	uxtb	r5, r5
 8001d4c:	40e9      	lsrs	r1, r5
 8001d4e:	60c1      	str	r1, [r0, #12]
 8001d50:	6afe      	ldr	r6, [r7, #44]	; 0x2c
 8001d52:	f3c6 1804 	ubfx	r8, r6, #4, #5
 8001d56:	f008 060f 	and.w	r6, r8, #15
 8001d5a:	f018 0f10 	tst.w	r8, #16
 8001d5e:	f83c 6016 	ldrh.w	r6, [ip, r6, lsl #1]
 8001d62:	46e0      	mov	r8, ip
 8001d64:	b2b6      	uxth	r6, r6
 8001d66:	d004      	beq.n	8001d72 <RCC_GetClocksFreq+0xa2>
 8001d68:	b11e      	cbz	r6, 8001d72 <RCC_GetClocksFreq+0xa2>
 8001d6a:	fbb3 f6f6 	udiv	r6, r3, r6
 8001d6e:	6106      	str	r6, [r0, #16]
 8001d70:	e000      	b.n	8001d74 <RCC_GetClocksFreq+0xa4>
 8001d72:	6102      	str	r2, [r0, #16]
 8001d74:	6afe      	ldr	r6, [r7, #44]	; 0x2c
 8001d76:	f3c6 2c44 	ubfx	ip, r6, #9, #5
 8001d7a:	f00c 060f 	and.w	r6, ip, #15
 8001d7e:	f01c 0f10 	tst.w	ip, #16
 8001d82:	f838 6016 	ldrh.w	r6, [r8, r6, lsl #1]
 8001d86:	b2b6      	uxth	r6, r6
 8001d88:	d004      	beq.n	8001d94 <RCC_GetClocksFreq+0xc4>
 8001d8a:	b11e      	cbz	r6, 8001d94 <RCC_GetClocksFreq+0xc4>
 8001d8c:	fbb3 f6f6 	udiv	r6, r3, r6
 8001d90:	6146      	str	r6, [r0, #20]
 8001d92:	e000      	b.n	8001d96 <RCC_GetClocksFreq+0xc6>
 8001d94:	6142      	str	r2, [r0, #20]
 8001d96:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001d98:	06f6      	lsls	r6, r6, #27
 8001d9a:	bf5a      	itte	pl
 8001d9c:	4e6a      	ldrpl	r6, [pc, #424]	; (8001f48 <RCC_GetClocksFreq+0x278>)
 8001d9e:	6186      	strpl	r6, [r0, #24]
 8001da0:	6182      	strmi	r2, [r0, #24]
 8001da2:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001da4:	06b6      	lsls	r6, r6, #26
 8001da6:	bf5a      	itte	pl
 8001da8:	4e67      	ldrpl	r6, [pc, #412]	; (8001f48 <RCC_GetClocksFreq+0x278>)
 8001daa:	61c6      	strpl	r6, [r0, #28]
 8001dac:	61c2      	strmi	r2, [r0, #28]
 8001dae:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001db0:	0676      	lsls	r6, r6, #25
 8001db2:	bf5a      	itte	pl
 8001db4:	4e64      	ldrpl	r6, [pc, #400]	; (8001f48 <RCC_GetClocksFreq+0x278>)
 8001db6:	6206      	strpl	r6, [r0, #32]
 8001db8:	6202      	strmi	r2, [r0, #32]
 8001dba:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001dbc:	05f6      	lsls	r6, r6, #23
 8001dbe:	d506      	bpl.n	8001dce <RCC_GetClocksFreq+0xfe>
 8001dc0:	429a      	cmp	r2, r3
 8001dc2:	d104      	bne.n	8001dce <RCC_GetClocksFreq+0xfe>
 8001dc4:	42a5      	cmp	r5, r4
 8001dc6:	d102      	bne.n	8001dce <RCC_GetClocksFreq+0xfe>
 8001dc8:	0056      	lsls	r6, r2, #1
 8001dca:	6246      	str	r6, [r0, #36]	; 0x24
 8001dcc:	e000      	b.n	8001dd0 <RCC_GetClocksFreq+0x100>
 8001dce:	6241      	str	r1, [r0, #36]	; 0x24
 8001dd0:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001dd2:	04f6      	lsls	r6, r6, #19
 8001dd4:	d506      	bpl.n	8001de4 <RCC_GetClocksFreq+0x114>
 8001dd6:	429a      	cmp	r2, r3
 8001dd8:	d104      	bne.n	8001de4 <RCC_GetClocksFreq+0x114>
 8001dda:	42a5      	cmp	r5, r4
 8001ddc:	d102      	bne.n	8001de4 <RCC_GetClocksFreq+0x114>
 8001dde:	0056      	lsls	r6, r2, #1
 8001de0:	6286      	str	r6, [r0, #40]	; 0x28
 8001de2:	e000      	b.n	8001de6 <RCC_GetClocksFreq+0x116>
 8001de4:	6281      	str	r1, [r0, #40]	; 0x28
 8001de6:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001de8:	05b6      	lsls	r6, r6, #22
 8001dea:	d506      	bpl.n	8001dfa <RCC_GetClocksFreq+0x12a>
 8001dec:	429a      	cmp	r2, r3
 8001dee:	d104      	bne.n	8001dfa <RCC_GetClocksFreq+0x12a>
 8001df0:	42a5      	cmp	r5, r4
 8001df2:	d102      	bne.n	8001dfa <RCC_GetClocksFreq+0x12a>
 8001df4:	0056      	lsls	r6, r2, #1
 8001df6:	62c6      	str	r6, [r0, #44]	; 0x2c
 8001df8:	e000      	b.n	8001dfc <RCC_GetClocksFreq+0x12c>
 8001dfa:	62c1      	str	r1, [r0, #44]	; 0x2c
 8001dfc:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001dfe:	0576      	lsls	r6, r6, #21
 8001e00:	d506      	bpl.n	8001e10 <RCC_GetClocksFreq+0x140>
 8001e02:	429a      	cmp	r2, r3
 8001e04:	d104      	bne.n	8001e10 <RCC_GetClocksFreq+0x140>
 8001e06:	42a5      	cmp	r5, r4
 8001e08:	d102      	bne.n	8001e10 <RCC_GetClocksFreq+0x140>
 8001e0a:	0056      	lsls	r6, r2, #1
 8001e0c:	64c6      	str	r6, [r0, #76]	; 0x4c
 8001e0e:	e000      	b.n	8001e12 <RCC_GetClocksFreq+0x142>
 8001e10:	64c1      	str	r1, [r0, #76]	; 0x4c
 8001e12:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001e14:	0536      	lsls	r6, r6, #20
 8001e16:	d506      	bpl.n	8001e26 <RCC_GetClocksFreq+0x156>
 8001e18:	429a      	cmp	r2, r3
 8001e1a:	d104      	bne.n	8001e26 <RCC_GetClocksFreq+0x156>
 8001e1c:	42a5      	cmp	r5, r4
 8001e1e:	d102      	bne.n	8001e26 <RCC_GetClocksFreq+0x156>
 8001e20:	0056      	lsls	r6, r2, #1
 8001e22:	6506      	str	r6, [r0, #80]	; 0x50
 8001e24:	e000      	b.n	8001e28 <RCC_GetClocksFreq+0x158>
 8001e26:	6501      	str	r1, [r0, #80]	; 0x50
 8001e28:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001e2a:	04b6      	lsls	r6, r6, #18
 8001e2c:	d506      	bpl.n	8001e3c <RCC_GetClocksFreq+0x16c>
 8001e2e:	429a      	cmp	r2, r3
 8001e30:	d104      	bne.n	8001e3c <RCC_GetClocksFreq+0x16c>
 8001e32:	42a5      	cmp	r5, r4
 8001e34:	d102      	bne.n	8001e3c <RCC_GetClocksFreq+0x16c>
 8001e36:	0056      	lsls	r6, r2, #1
 8001e38:	6546      	str	r6, [r0, #84]	; 0x54
 8001e3a:	e000      	b.n	8001e3e <RCC_GetClocksFreq+0x16e>
 8001e3c:	6501      	str	r1, [r0, #80]	; 0x50
 8001e3e:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001e40:	0436      	lsls	r6, r6, #16
 8001e42:	d506      	bpl.n	8001e52 <RCC_GetClocksFreq+0x182>
 8001e44:	429a      	cmp	r2, r3
 8001e46:	d104      	bne.n	8001e52 <RCC_GetClocksFreq+0x182>
 8001e48:	42a5      	cmp	r5, r4
 8001e4a:	d102      	bne.n	8001e52 <RCC_GetClocksFreq+0x182>
 8001e4c:	0053      	lsls	r3, r2, #1
 8001e4e:	6583      	str	r3, [r0, #88]	; 0x58
 8001e50:	e000      	b.n	8001e54 <RCC_GetClocksFreq+0x184>
 8001e52:	6581      	str	r1, [r0, #88]	; 0x58
 8001e54:	6b3c      	ldr	r4, [r7, #48]	; 0x30
 8001e56:	4b3b      	ldr	r3, [pc, #236]	; (8001f44 <RCC_GetClocksFreq+0x274>)
 8001e58:	07a4      	lsls	r4, r4, #30
 8001e5a:	d101      	bne.n	8001e60 <RCC_GetClocksFreq+0x190>
 8001e5c:	6381      	str	r1, [r0, #56]	; 0x38
 8001e5e:	e015      	b.n	8001e8c <RCC_GetClocksFreq+0x1bc>
 8001e60:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001e62:	f001 0103 	and.w	r1, r1, #3
 8001e66:	2901      	cmp	r1, #1
 8001e68:	d101      	bne.n	8001e6e <RCC_GetClocksFreq+0x19e>
 8001e6a:	6382      	str	r2, [r0, #56]	; 0x38
 8001e6c:	e00e      	b.n	8001e8c <RCC_GetClocksFreq+0x1bc>
 8001e6e:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001e70:	f001 0103 	and.w	r1, r1, #3
 8001e74:	2902      	cmp	r1, #2
 8001e76:	d102      	bne.n	8001e7e <RCC_GetClocksFreq+0x1ae>
 8001e78:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001e7c:	e005      	b.n	8001e8a <RCC_GetClocksFreq+0x1ba>
 8001e7e:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001e80:	f003 0303 	and.w	r3, r3, #3
 8001e84:	2b03      	cmp	r3, #3
 8001e86:	d101      	bne.n	8001e8c <RCC_GetClocksFreq+0x1bc>
 8001e88:	4b2f      	ldr	r3, [pc, #188]	; (8001f48 <RCC_GetClocksFreq+0x278>)
 8001e8a:	6383      	str	r3, [r0, #56]	; 0x38
 8001e8c:	6b39      	ldr	r1, [r7, #48]	; 0x30
 8001e8e:	4b2d      	ldr	r3, [pc, #180]	; (8001f44 <RCC_GetClocksFreq+0x274>)
 8001e90:	f411 3f40 	tst.w	r1, #196608	; 0x30000
 8001e94:	d102      	bne.n	8001e9c <RCC_GetClocksFreq+0x1cc>
 8001e96:	f8c0 e03c 	str.w	lr, [r0, #60]	; 0x3c
 8001e9a:	e018      	b.n	8001ece <RCC_GetClocksFreq+0x1fe>
 8001e9c:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001e9e:	f401 3140 	and.w	r1, r1, #196608	; 0x30000
 8001ea2:	f5b1 3f80 	cmp.w	r1, #65536	; 0x10000
 8001ea6:	d101      	bne.n	8001eac <RCC_GetClocksFreq+0x1dc>
 8001ea8:	63c2      	str	r2, [r0, #60]	; 0x3c
 8001eaa:	e010      	b.n	8001ece <RCC_GetClocksFreq+0x1fe>
 8001eac:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001eae:	f401 3140 	and.w	r1, r1, #196608	; 0x30000
 8001eb2:	f5b1 3f00 	cmp.w	r1, #131072	; 0x20000
 8001eb6:	d102      	bne.n	8001ebe <RCC_GetClocksFreq+0x1ee>
 8001eb8:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001ebc:	e006      	b.n	8001ecc <RCC_GetClocksFreq+0x1fc>
 8001ebe:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001ec0:	f403 3340 	and.w	r3, r3, #196608	; 0x30000
 8001ec4:	f5b3 3f40 	cmp.w	r3, #196608	; 0x30000
 8001ec8:	d101      	bne.n	8001ece <RCC_GetClocksFreq+0x1fe>
 8001eca:	4b1f      	ldr	r3, [pc, #124]	; (8001f48 <RCC_GetClocksFreq+0x278>)
 8001ecc:	63c3      	str	r3, [r0, #60]	; 0x3c
 8001ece:	6b39      	ldr	r1, [r7, #48]	; 0x30
 8001ed0:	4b1c      	ldr	r3, [pc, #112]	; (8001f44 <RCC_GetClocksFreq+0x274>)
 8001ed2:	f411 2f40 	tst.w	r1, #786432	; 0xc0000
 8001ed6:	d102      	bne.n	8001ede <RCC_GetClocksFreq+0x20e>
 8001ed8:	f8c0 e040 	str.w	lr, [r0, #64]	; 0x40
 8001edc:	e018      	b.n	8001f10 <RCC_GetClocksFreq+0x240>
 8001ede:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001ee0:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 8001ee4:	f5b1 2f80 	cmp.w	r1, #262144	; 0x40000
 8001ee8:	d101      	bne.n	8001eee <RCC_GetClocksFreq+0x21e>
 8001eea:	6402      	str	r2, [r0, #64]	; 0x40
 8001eec:	e010      	b.n	8001f10 <RCC_GetClocksFreq+0x240>
 8001eee:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001ef0:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 8001ef4:	f5b1 2f00 	cmp.w	r1, #524288	; 0x80000
 8001ef8:	d102      	bne.n	8001f00 <RCC_GetClocksFreq+0x230>
 8001efa:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001efe:	e006      	b.n	8001f0e <RCC_GetClocksFreq+0x23e>
 8001f00:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001f02:	f403 2340 	and.w	r3, r3, #786432	; 0xc0000
 8001f06:	f5b3 2f40 	cmp.w	r3, #786432	; 0xc0000
 8001f0a:	d101      	bne.n	8001f10 <RCC_GetClocksFreq+0x240>
 8001f0c:	4b0e      	ldr	r3, [pc, #56]	; (8001f48 <RCC_GetClocksFreq+0x278>)
 8001f0e:	6403      	str	r3, [r0, #64]	; 0x40
 8001f10:	6b39      	ldr	r1, [r7, #48]	; 0x30
 8001f12:	4b0c      	ldr	r3, [pc, #48]	; (8001f44 <RCC_GetClocksFreq+0x274>)
 8001f14:	f411 1f40 	tst.w	r1, #3145728	; 0x300000
 8001f18:	d102      	bne.n	8001f20 <RCC_GetClocksFreq+0x250>
 8001f1a:	f8c0 e044 	str.w	lr, [r0, #68]	; 0x44
 8001f1e:	e023      	b.n	8001f68 <RCC_GetClocksFreq+0x298>
 8001f20:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001f22:	f401 1140 	and.w	r1, r1, #3145728	; 0x300000
 8001f26:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 8001f2a:	d101      	bne.n	8001f30 <RCC_GetClocksFreq+0x260>
 8001f2c:	6442      	str	r2, [r0, #68]	; 0x44
 8001f2e:	e01b      	b.n	8001f68 <RCC_GetClocksFreq+0x298>
 8001f30:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001f32:	f401 1140 	and.w	r1, r1, #3145728	; 0x300000
 8001f36:	f5b1 1f00 	cmp.w	r1, #2097152	; 0x200000
 8001f3a:	d10d      	bne.n	8001f58 <RCC_GetClocksFreq+0x288>
 8001f3c:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001f40:	e011      	b.n	8001f66 <RCC_GetClocksFreq+0x296>
 8001f42:	bf00      	nop
 8001f44:	40021000 	.word	0x40021000
 8001f48:	007a1200 	.word	0x007a1200
 8001f4c:	003d0900 	.word	0x003d0900
 8001f50:	200000e8 	.word	0x200000e8
 8001f54:	200000c8 	.word	0x200000c8
 8001f58:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001f5a:	f403 1340 	and.w	r3, r3, #3145728	; 0x300000
 8001f5e:	f5b3 1f40 	cmp.w	r3, #3145728	; 0x300000
 8001f62:	d101      	bne.n	8001f68 <RCC_GetClocksFreq+0x298>
 8001f64:	4b13      	ldr	r3, [pc, #76]	; (8001fb4 <RCC_GetClocksFreq+0x2e4>)
 8001f66:	6443      	str	r3, [r0, #68]	; 0x44
 8001f68:	6b39      	ldr	r1, [r7, #48]	; 0x30
 8001f6a:	4b13      	ldr	r3, [pc, #76]	; (8001fb8 <RCC_GetClocksFreq+0x2e8>)
 8001f6c:	f411 0f40 	tst.w	r1, #12582912	; 0xc00000
 8001f70:	d103      	bne.n	8001f7a <RCC_GetClocksFreq+0x2aa>
 8001f72:	f8c0 e048 	str.w	lr, [r0, #72]	; 0x48
 8001f76:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8001f7a:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001f7c:	f401 0140 	and.w	r1, r1, #12582912	; 0xc00000
 8001f80:	f5b1 0f80 	cmp.w	r1, #4194304	; 0x400000
 8001f84:	d102      	bne.n	8001f8c <RCC_GetClocksFreq+0x2bc>
 8001f86:	6482      	str	r2, [r0, #72]	; 0x48
 8001f88:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8001f8c:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 8001f8e:	f402 0240 	and.w	r2, r2, #12582912	; 0xc00000
 8001f92:	f5b2 0f00 	cmp.w	r2, #8388608	; 0x800000
 8001f96:	d102      	bne.n	8001f9e <RCC_GetClocksFreq+0x2ce>
 8001f98:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001f9c:	e006      	b.n	8001fac <RCC_GetClocksFreq+0x2dc>
 8001f9e:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001fa0:	f403 0340 	and.w	r3, r3, #12582912	; 0xc00000
 8001fa4:	f5b3 0f40 	cmp.w	r3, #12582912	; 0xc00000
 8001fa8:	d101      	bne.n	8001fae <RCC_GetClocksFreq+0x2de>
 8001faa:	4b02      	ldr	r3, [pc, #8]	; (8001fb4 <RCC_GetClocksFreq+0x2e4>)
 8001fac:	6483      	str	r3, [r0, #72]	; 0x48
 8001fae:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8001fb2:	bf00      	nop
 8001fb4:	007a1200 	.word	0x007a1200
 8001fb8:	40021000 	.word	0x40021000

08001fbc <RCC_AHBPeriphClockCmd>:
 8001fbc:	bf00      	nop
 8001fbe:	bf00      	nop
 8001fc0:	4b04      	ldr	r3, [pc, #16]	; (8001fd4 <RCC_AHBPeriphClockCmd+0x18>)
 8001fc2:	695a      	ldr	r2, [r3, #20]
 8001fc4:	b109      	cbz	r1, 8001fca <RCC_AHBPeriphClockCmd+0xe>
 8001fc6:	4310      	orrs	r0, r2
 8001fc8:	e001      	b.n	8001fce <RCC_AHBPeriphClockCmd+0x12>
 8001fca:	ea22 0000 	bic.w	r0, r2, r0
 8001fce:	6158      	str	r0, [r3, #20]
 8001fd0:	4770      	bx	lr
 8001fd2:	bf00      	nop
 8001fd4:	40021000 	.word	0x40021000

08001fd8 <RCC_APB2PeriphClockCmd>:
 8001fd8:	bf00      	nop
 8001fda:	bf00      	nop
 8001fdc:	4b04      	ldr	r3, [pc, #16]	; (8001ff0 <RCC_APB2PeriphClockCmd+0x18>)
 8001fde:	699a      	ldr	r2, [r3, #24]
 8001fe0:	b109      	cbz	r1, 8001fe6 <RCC_APB2PeriphClockCmd+0xe>
 8001fe2:	4310      	orrs	r0, r2
 8001fe4:	e001      	b.n	8001fea <RCC_APB2PeriphClockCmd+0x12>
 8001fe6:	ea22 0000 	bic.w	r0, r2, r0
 8001fea:	6198      	str	r0, [r3, #24]
 8001fec:	4770      	bx	lr
 8001fee:	bf00      	nop
 8001ff0:	40021000 	.word	0x40021000

08001ff4 <RCC_APB1PeriphClockCmd>:
 8001ff4:	bf00      	nop
 8001ff6:	bf00      	nop
 8001ff8:	4b04      	ldr	r3, [pc, #16]	; (800200c <RCC_APB1PeriphClockCmd+0x18>)
 8001ffa:	69da      	ldr	r2, [r3, #28]
 8001ffc:	b109      	cbz	r1, 8002002 <RCC_APB1PeriphClockCmd+0xe>
 8001ffe:	4310      	orrs	r0, r2
 8002000:	e001      	b.n	8002006 <RCC_APB1PeriphClockCmd+0x12>
 8002002:	ea22 0000 	bic.w	r0, r2, r0
 8002006:	61d8      	str	r0, [r3, #28]
 8002008:	4770      	bx	lr
 800200a:	bf00      	nop
 800200c:	40021000 	.word	0x40021000

08002010 <TIM_TimeBaseInit>:
 8002010:	bf00      	nop
 8002012:	bf00      	nop
 8002014:	bf00      	nop
 8002016:	4a24      	ldr	r2, [pc, #144]	; (80020a8 <TIM_TimeBaseInit+0x98>)
 8002018:	8803      	ldrh	r3, [r0, #0]
 800201a:	4290      	cmp	r0, r2
 800201c:	b29b      	uxth	r3, r3
 800201e:	d012      	beq.n	8002046 <TIM_TimeBaseInit+0x36>
 8002020:	f502 6200 	add.w	r2, r2, #2048	; 0x800
 8002024:	4290      	cmp	r0, r2
 8002026:	d00e      	beq.n	8002046 <TIM_TimeBaseInit+0x36>
 8002028:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 800202c:	d00b      	beq.n	8002046 <TIM_TimeBaseInit+0x36>
 800202e:	f5a2 3298 	sub.w	r2, r2, #77824	; 0x13000
 8002032:	4290      	cmp	r0, r2
 8002034:	d007      	beq.n	8002046 <TIM_TimeBaseInit+0x36>
 8002036:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 800203a:	4290      	cmp	r0, r2
 800203c:	d003      	beq.n	8002046 <TIM_TimeBaseInit+0x36>
 800203e:	f502 32a4 	add.w	r2, r2, #83968	; 0x14800
 8002042:	4290      	cmp	r0, r2
 8002044:	d103      	bne.n	800204e <TIM_TimeBaseInit+0x3e>
 8002046:	884a      	ldrh	r2, [r1, #2]
 8002048:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 800204c:	4313      	orrs	r3, r2
 800204e:	4a17      	ldr	r2, [pc, #92]	; (80020ac <TIM_TimeBaseInit+0x9c>)
 8002050:	4290      	cmp	r0, r2
 8002052:	d008      	beq.n	8002066 <TIM_TimeBaseInit+0x56>
 8002054:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8002058:	4290      	cmp	r0, r2
 800205a:	bf1f      	itttt	ne
 800205c:	f423 7340 	bicne.w	r3, r3, #768	; 0x300
 8002060:	890a      	ldrhne	r2, [r1, #8]
 8002062:	b29b      	uxthne	r3, r3
 8002064:	4313      	orrne	r3, r2
 8002066:	8003      	strh	r3, [r0, #0]
 8002068:	684b      	ldr	r3, [r1, #4]
 800206a:	62c3      	str	r3, [r0, #44]	; 0x2c
 800206c:	880b      	ldrh	r3, [r1, #0]
 800206e:	8503      	strh	r3, [r0, #40]	; 0x28
 8002070:	4b0d      	ldr	r3, [pc, #52]	; (80020a8 <TIM_TimeBaseInit+0x98>)
 8002072:	4298      	cmp	r0, r3
 8002074:	d013      	beq.n	800209e <TIM_TimeBaseInit+0x8e>
 8002076:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 800207a:	4298      	cmp	r0, r3
 800207c:	d00f      	beq.n	800209e <TIM_TimeBaseInit+0x8e>
 800207e:	f503 6340 	add.w	r3, r3, #3072	; 0xc00
 8002082:	4298      	cmp	r0, r3
 8002084:	d00b      	beq.n	800209e <TIM_TimeBaseInit+0x8e>
 8002086:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 800208a:	4298      	cmp	r0, r3
 800208c:	d007      	beq.n	800209e <TIM_TimeBaseInit+0x8e>
 800208e:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 8002092:	4298      	cmp	r0, r3
 8002094:	d003      	beq.n	800209e <TIM_TimeBaseInit+0x8e>
 8002096:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 800209a:	4298      	cmp	r0, r3
 800209c:	d101      	bne.n	80020a2 <TIM_TimeBaseInit+0x92>
 800209e:	894b      	ldrh	r3, [r1, #10]
 80020a0:	8603      	strh	r3, [r0, #48]	; 0x30
 80020a2:	2301      	movs	r3, #1
 80020a4:	6143      	str	r3, [r0, #20]
 80020a6:	4770      	bx	lr
 80020a8:	40012c00 	.word	0x40012c00
 80020ac:	40001000 	.word	0x40001000

080020b0 <TIM_Cmd>:
 80020b0:	bf00      	nop
 80020b2:	bf00      	nop
 80020b4:	8803      	ldrh	r3, [r0, #0]
 80020b6:	b119      	cbz	r1, 80020c0 <TIM_Cmd+0x10>
 80020b8:	b29b      	uxth	r3, r3
 80020ba:	f043 0301 	orr.w	r3, r3, #1
 80020be:	e003      	b.n	80020c8 <TIM_Cmd+0x18>
 80020c0:	f023 0301 	bic.w	r3, r3, #1
 80020c4:	041b      	lsls	r3, r3, #16
 80020c6:	0c1b      	lsrs	r3, r3, #16
 80020c8:	8003      	strh	r3, [r0, #0]
 80020ca:	4770      	bx	lr

080020cc <TIM_OC1Init>:
 80020cc:	b570      	push	{r4, r5, r6, lr}
 80020ce:	bf00      	nop
 80020d0:	bf00      	nop
 80020d2:	bf00      	nop
 80020d4:	bf00      	nop
 80020d6:	6a03      	ldr	r3, [r0, #32]
 80020d8:	680d      	ldr	r5, [r1, #0]
 80020da:	f023 0301 	bic.w	r3, r3, #1
 80020de:	6203      	str	r3, [r0, #32]
 80020e0:	6a03      	ldr	r3, [r0, #32]
 80020e2:	6844      	ldr	r4, [r0, #4]
 80020e4:	6982      	ldr	r2, [r0, #24]
 80020e6:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
 80020ea:	f022 0273 	bic.w	r2, r2, #115	; 0x73
 80020ee:	4315      	orrs	r5, r2
 80020f0:	898a      	ldrh	r2, [r1, #12]
 80020f2:	f023 0302 	bic.w	r3, r3, #2
 80020f6:	4313      	orrs	r3, r2
 80020f8:	888a      	ldrh	r2, [r1, #4]
 80020fa:	4313      	orrs	r3, r2
 80020fc:	4a15      	ldr	r2, [pc, #84]	; (8002154 <TIM_OC1Init+0x88>)
 80020fe:	4290      	cmp	r0, r2
 8002100:	d00f      	beq.n	8002122 <TIM_OC1Init+0x56>
 8002102:	f502 6200 	add.w	r2, r2, #2048	; 0x800
 8002106:	4290      	cmp	r0, r2
 8002108:	d00b      	beq.n	8002122 <TIM_OC1Init+0x56>
 800210a:	f502 6240 	add.w	r2, r2, #3072	; 0xc00
 800210e:	4290      	cmp	r0, r2
 8002110:	d007      	beq.n	8002122 <TIM_OC1Init+0x56>
 8002112:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8002116:	4290      	cmp	r0, r2
 8002118:	d003      	beq.n	8002122 <TIM_OC1Init+0x56>
 800211a:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 800211e:	4290      	cmp	r0, r2
 8002120:	d111      	bne.n	8002146 <TIM_OC1Init+0x7a>
 8002122:	bf00      	nop
 8002124:	bf00      	nop
 8002126:	bf00      	nop
 8002128:	bf00      	nop
 800212a:	89ca      	ldrh	r2, [r1, #14]
 800212c:	88ce      	ldrh	r6, [r1, #6]
 800212e:	f023 0308 	bic.w	r3, r3, #8
 8002132:	4313      	orrs	r3, r2
 8002134:	8a0a      	ldrh	r2, [r1, #16]
 8002136:	f424 7440 	bic.w	r4, r4, #768	; 0x300
 800213a:	4314      	orrs	r4, r2
 800213c:	8a4a      	ldrh	r2, [r1, #18]
 800213e:	f023 0304 	bic.w	r3, r3, #4
 8002142:	4333      	orrs	r3, r6
 8002144:	4314      	orrs	r4, r2
 8002146:	688a      	ldr	r2, [r1, #8]
 8002148:	6044      	str	r4, [r0, #4]
 800214a:	6185      	str	r5, [r0, #24]
 800214c:	6342      	str	r2, [r0, #52]	; 0x34
 800214e:	6203      	str	r3, [r0, #32]
 8002150:	bd70      	pop	{r4, r5, r6, pc}
 8002152:	bf00      	nop
 8002154:	40012c00 	.word	0x40012c00

08002158 <TIM_OC2Init>:
 8002158:	b570      	push	{r4, r5, r6, lr}
 800215a:	bf00      	nop
 800215c:	bf00      	nop
 800215e:	bf00      	nop
 8002160:	bf00      	nop
 8002162:	6a03      	ldr	r3, [r0, #32]
 8002164:	680d      	ldr	r5, [r1, #0]
 8002166:	898e      	ldrh	r6, [r1, #12]
 8002168:	f023 0310 	bic.w	r3, r3, #16
 800216c:	6203      	str	r3, [r0, #32]
 800216e:	6a03      	ldr	r3, [r0, #32]
 8002170:	6844      	ldr	r4, [r0, #4]
 8002172:	6982      	ldr	r2, [r0, #24]
 8002174:	f022 7280 	bic.w	r2, r2, #16777216	; 0x1000000
 8002178:	f422 42e6 	bic.w	r2, r2, #29440	; 0x7300
 800217c:	ea42 2505 	orr.w	r5, r2, r5, lsl #8
 8002180:	f023 0220 	bic.w	r2, r3, #32
 8002184:	888b      	ldrh	r3, [r1, #4]
 8002186:	4333      	orrs	r3, r6
 8002188:	ea42 1303 	orr.w	r3, r2, r3, lsl #4
 800218c:	4a10      	ldr	r2, [pc, #64]	; (80021d0 <TIM_OC2Init+0x78>)
 800218e:	4290      	cmp	r0, r2
 8002190:	d003      	beq.n	800219a <TIM_OC2Init+0x42>
 8002192:	f502 6200 	add.w	r2, r2, #2048	; 0x800
 8002196:	4290      	cmp	r0, r2
 8002198:	d114      	bne.n	80021c4 <TIM_OC2Init+0x6c>
 800219a:	bf00      	nop
 800219c:	bf00      	nop
 800219e:	bf00      	nop
 80021a0:	bf00      	nop
 80021a2:	89ca      	ldrh	r2, [r1, #14]
 80021a4:	8a0e      	ldrh	r6, [r1, #16]
 80021a6:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 80021aa:	ea43 1302 	orr.w	r3, r3, r2, lsl #4
 80021ae:	88ca      	ldrh	r2, [r1, #6]
 80021b0:	f023 0340 	bic.w	r3, r3, #64	; 0x40
 80021b4:	ea43 1302 	orr.w	r3, r3, r2, lsl #4
 80021b8:	8a4a      	ldrh	r2, [r1, #18]
 80021ba:	f424 6440 	bic.w	r4, r4, #3072	; 0xc00
 80021be:	4332      	orrs	r2, r6
 80021c0:	ea44 0482 	orr.w	r4, r4, r2, lsl #2
 80021c4:	688a      	ldr	r2, [r1, #8]
 80021c6:	6044      	str	r4, [r0, #4]
 80021c8:	6185      	str	r5, [r0, #24]
 80021ca:	6382      	str	r2, [r0, #56]	; 0x38
 80021cc:	6203      	str	r3, [r0, #32]
 80021ce:	bd70      	pop	{r4, r5, r6, pc}
 80021d0:	40012c00 	.word	0x40012c00

080021d4 <TIM_CtrlPWMOutputs>:
 80021d4:	bf00      	nop
 80021d6:	bf00      	nop
 80021d8:	6c43      	ldr	r3, [r0, #68]	; 0x44
 80021da:	b111      	cbz	r1, 80021e2 <TIM_CtrlPWMOutputs+0xe>
 80021dc:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
 80021e0:	e001      	b.n	80021e6 <TIM_CtrlPWMOutputs+0x12>
 80021e2:	f3c3 030e 	ubfx	r3, r3, #0, #15
 80021e6:	6443      	str	r3, [r0, #68]	; 0x44
 80021e8:	4770      	bx	lr

080021ea <TIM_ClearITPendingBit>:
 80021ea:	bf00      	nop
 80021ec:	43c9      	mvns	r1, r1
 80021ee:	b289      	uxth	r1, r1
 80021f0:	6101      	str	r1, [r0, #16]
 80021f2:	4770      	bx	lr

080021f4 <timer_init>:
 80021f4:	b530      	push	{r4, r5, lr}
 80021f6:	2300      	movs	r3, #0
 80021f8:	b085      	sub	sp, #20
 80021fa:	491f      	ldr	r1, [pc, #124]	; (8002278 <timer_init+0x84>)
 80021fc:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8002200:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 8002204:	491d      	ldr	r1, [pc, #116]	; (800227c <timer_init+0x88>)
 8002206:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 800220a:	4a1d      	ldr	r2, [pc, #116]	; (8002280 <timer_init+0x8c>)
 800220c:	2400      	movs	r4, #0
 800220e:	f822 4013 	strh.w	r4, [r2, r3, lsl #1]
 8002212:	3301      	adds	r3, #1
 8002214:	2b04      	cmp	r3, #4
 8002216:	4625      	mov	r5, r4
 8002218:	d1ef      	bne.n	80021fa <timer_init+0x6>
 800221a:	4b1a      	ldr	r3, [pc, #104]	; (8002284 <timer_init+0x90>)
 800221c:	2002      	movs	r0, #2
 800221e:	2101      	movs	r1, #1
 8002220:	601c      	str	r4, [r3, #0]
 8002222:	f7ff fee7 	bl	8001ff4 <RCC_APB1PeriphClockCmd>
 8002226:	f8ad 4006 	strh.w	r4, [sp, #6]
 800222a:	f8ad 400c 	strh.w	r4, [sp, #12]
 800222e:	f8ad 400e 	strh.w	r4, [sp, #14]
 8002232:	4c15      	ldr	r4, [pc, #84]	; (8002288 <timer_init+0x94>)
 8002234:	f44f 738c 	mov.w	r3, #280	; 0x118
 8002238:	f8ad 3004 	strh.w	r3, [sp, #4]
 800223c:	4620      	mov	r0, r4
 800223e:	2331      	movs	r3, #49	; 0x31
 8002240:	a901      	add	r1, sp, #4
 8002242:	9302      	str	r3, [sp, #8]
 8002244:	f7ff fee4 	bl	8002010 <TIM_TimeBaseInit>
 8002248:	4620      	mov	r0, r4
 800224a:	2101      	movs	r1, #1
 800224c:	f7ff ff30 	bl	80020b0 <TIM_Cmd>
 8002250:	68e3      	ldr	r3, [r4, #12]
 8002252:	f043 0301 	orr.w	r3, r3, #1
 8002256:	60e3      	str	r3, [r4, #12]
 8002258:	231d      	movs	r3, #29
 800225a:	f88d 3000 	strb.w	r3, [sp]
 800225e:	4668      	mov	r0, sp
 8002260:	2301      	movs	r3, #1
 8002262:	f88d 5001 	strb.w	r5, [sp, #1]
 8002266:	f88d 3002 	strb.w	r3, [sp, #2]
 800226a:	f88d 3003 	strb.w	r3, [sp, #3]
 800226e:	f000 fc6f 	bl	8002b50 <NVIC_Init>
 8002272:	b005      	add	sp, #20
 8002274:	bd30      	pop	{r4, r5, pc}
 8002276:	bf00      	nop
 8002278:	2000105c 	.word	0x2000105c
 800227c:	20001050 	.word	0x20001050
 8002280:	20001048 	.word	0x20001048
 8002284:	20001058 	.word	0x20001058
 8002288:	40000400 	.word	0x40000400

0800228c <TIM3_IRQHandler>:
 800228c:	2300      	movs	r3, #0
 800228e:	4910      	ldr	r1, [pc, #64]	; (80022d0 <TIM3_IRQHandler+0x44>)
 8002290:	f831 2013 	ldrh.w	r2, [r1, r3, lsl #1]
 8002294:	b292      	uxth	r2, r2
 8002296:	b132      	cbz	r2, 80022a6 <TIM3_IRQHandler+0x1a>
 8002298:	f831 2013 	ldrh.w	r2, [r1, r3, lsl #1]
 800229c:	3a01      	subs	r2, #1
 800229e:	b292      	uxth	r2, r2
 80022a0:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 80022a4:	e009      	b.n	80022ba <TIM3_IRQHandler+0x2e>
 80022a6:	4a0b      	ldr	r2, [pc, #44]	; (80022d4 <TIM3_IRQHandler+0x48>)
 80022a8:	f832 2013 	ldrh.w	r2, [r2, r3, lsl #1]
 80022ac:	b292      	uxth	r2, r2
 80022ae:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 80022b2:	4a09      	ldr	r2, [pc, #36]	; (80022d8 <TIM3_IRQHandler+0x4c>)
 80022b4:	2101      	movs	r1, #1
 80022b6:	f822 1013 	strh.w	r1, [r2, r3, lsl #1]
 80022ba:	3301      	adds	r3, #1
 80022bc:	2b04      	cmp	r3, #4
 80022be:	d1e6      	bne.n	800228e <TIM3_IRQHandler+0x2>
 80022c0:	4a06      	ldr	r2, [pc, #24]	; (80022dc <TIM3_IRQHandler+0x50>)
 80022c2:	4807      	ldr	r0, [pc, #28]	; (80022e0 <TIM3_IRQHandler+0x54>)
 80022c4:	6813      	ldr	r3, [r2, #0]
 80022c6:	2101      	movs	r1, #1
 80022c8:	3301      	adds	r3, #1
 80022ca:	6013      	str	r3, [r2, #0]
 80022cc:	f7ff bf8d 	b.w	80021ea <TIM_ClearITPendingBit>
 80022d0:	2000105c 	.word	0x2000105c
 80022d4:	20001050 	.word	0x20001050
 80022d8:	20001048 	.word	0x20001048
 80022dc:	20001058 	.word	0x20001058
 80022e0:	40000400 	.word	0x40000400

080022e4 <timer_get_time>:
 80022e4:	b082      	sub	sp, #8
 80022e6:	b672      	cpsid	i
 80022e8:	4b04      	ldr	r3, [pc, #16]	; (80022fc <timer_get_time+0x18>)
 80022ea:	681b      	ldr	r3, [r3, #0]
 80022ec:	9301      	str	r3, [sp, #4]
 80022ee:	b662      	cpsie	i
 80022f0:	230a      	movs	r3, #10
 80022f2:	9801      	ldr	r0, [sp, #4]
 80022f4:	fbb0 f0f3 	udiv	r0, r0, r3
 80022f8:	b002      	add	sp, #8
 80022fa:	4770      	bx	lr
 80022fc:	20001058 	.word	0x20001058

08002300 <timer_delay_ms>:
 8002300:	b513      	push	{r0, r1, r4, lr}
 8002302:	4604      	mov	r4, r0
 8002304:	f7ff ffee 	bl	80022e4 <timer_get_time>
 8002308:	4420      	add	r0, r4
 800230a:	9001      	str	r0, [sp, #4]
 800230c:	9c01      	ldr	r4, [sp, #4]
 800230e:	f7ff ffe9 	bl	80022e4 <timer_get_time>
 8002312:	4284      	cmp	r4, r0
 8002314:	d902      	bls.n	800231c <timer_delay_ms+0x1c>
 8002316:	f000 fb19 	bl	800294c <core_yield>
 800231a:	e7f7      	b.n	800230c <timer_delay_ms+0xc>
 800231c:	b002      	add	sp, #8
 800231e:	bd10      	pop	{r4, pc}

08002320 <event_timer_set_period>:
 8002320:	b672      	cpsid	i
 8002322:	eb01 0181 	add.w	r1, r1, r1, lsl #2
 8002326:	4b07      	ldr	r3, [pc, #28]	; (8002344 <event_timer_set_period+0x24>)
 8002328:	0049      	lsls	r1, r1, #1
 800232a:	b289      	uxth	r1, r1
 800232c:	f823 1010 	strh.w	r1, [r3, r0, lsl #1]
 8002330:	4b05      	ldr	r3, [pc, #20]	; (8002348 <event_timer_set_period+0x28>)
 8002332:	f823 1010 	strh.w	r1, [r3, r0, lsl #1]
 8002336:	4b05      	ldr	r3, [pc, #20]	; (800234c <event_timer_set_period+0x2c>)
 8002338:	2200      	movs	r2, #0
 800233a:	f823 2010 	strh.w	r2, [r3, r0, lsl #1]
 800233e:	b662      	cpsie	i
 8002340:	4770      	bx	lr
 8002342:	bf00      	nop
 8002344:	2000105c 	.word	0x2000105c
 8002348:	20001050 	.word	0x20001050
 800234c:	20001048 	.word	0x20001048

08002350 <event_timer_wait>:
 8002350:	b510      	push	{r4, lr}
 8002352:	4604      	mov	r4, r0
 8002354:	4a06      	ldr	r2, [pc, #24]	; (8002370 <event_timer_wait+0x20>)
 8002356:	f832 3014 	ldrh.w	r3, [r2, r4, lsl #1]
 800235a:	b29b      	uxth	r3, r3
 800235c:	b913      	cbnz	r3, 8002364 <event_timer_wait+0x14>
 800235e:	f000 faf5 	bl	800294c <core_yield>
 8002362:	e7f7      	b.n	8002354 <event_timer_wait+0x4>
 8002364:	b672      	cpsid	i
 8002366:	2300      	movs	r3, #0
 8002368:	f822 3014 	strh.w	r3, [r2, r4, lsl #1]
 800236c:	b662      	cpsie	i
 800236e:	bd10      	pop	{r4, pc}
 8002370:	20001048 	.word	0x20001048

08002374 <USART_Init>:
 8002374:	b530      	push	{r4, r5, lr}
 8002376:	4604      	mov	r4, r0
 8002378:	b099      	sub	sp, #100	; 0x64
 800237a:	460d      	mov	r5, r1
 800237c:	bf00      	nop
 800237e:	bf00      	nop
 8002380:	bf00      	nop
 8002382:	bf00      	nop
 8002384:	bf00      	nop
 8002386:	bf00      	nop
 8002388:	bf00      	nop
 800238a:	6803      	ldr	r3, [r0, #0]
 800238c:	f023 0301 	bic.w	r3, r3, #1
 8002390:	6003      	str	r3, [r0, #0]
 8002392:	6843      	ldr	r3, [r0, #4]
 8002394:	f423 5240 	bic.w	r2, r3, #12288	; 0x3000
 8002398:	688b      	ldr	r3, [r1, #8]
 800239a:	68c9      	ldr	r1, [r1, #12]
 800239c:	4313      	orrs	r3, r2
 800239e:	6043      	str	r3, [r0, #4]
 80023a0:	686a      	ldr	r2, [r5, #4]
 80023a2:	6803      	ldr	r3, [r0, #0]
 80023a4:	4311      	orrs	r1, r2
 80023a6:	692a      	ldr	r2, [r5, #16]
 80023a8:	f423 53b0 	bic.w	r3, r3, #5632	; 0x1600
 80023ac:	430a      	orrs	r2, r1
 80023ae:	f023 030c 	bic.w	r3, r3, #12
 80023b2:	4313      	orrs	r3, r2
 80023b4:	6003      	str	r3, [r0, #0]
 80023b6:	6883      	ldr	r3, [r0, #8]
 80023b8:	f423 7240 	bic.w	r2, r3, #768	; 0x300
 80023bc:	696b      	ldr	r3, [r5, #20]
 80023be:	4313      	orrs	r3, r2
 80023c0:	6083      	str	r3, [r0, #8]
 80023c2:	a801      	add	r0, sp, #4
 80023c4:	f7ff fc84 	bl	8001cd0 <RCC_GetClocksFreq>
 80023c8:	4b17      	ldr	r3, [pc, #92]	; (8002428 <USART_Init+0xb4>)
 80023ca:	429c      	cmp	r4, r3
 80023cc:	d101      	bne.n	80023d2 <USART_Init+0x5e>
 80023ce:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80023d0:	e00e      	b.n	80023f0 <USART_Init+0x7c>
 80023d2:	4b16      	ldr	r3, [pc, #88]	; (800242c <USART_Init+0xb8>)
 80023d4:	429c      	cmp	r4, r3
 80023d6:	d101      	bne.n	80023dc <USART_Init+0x68>
 80023d8:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80023da:	e009      	b.n	80023f0 <USART_Init+0x7c>
 80023dc:	4b14      	ldr	r3, [pc, #80]	; (8002430 <USART_Init+0xbc>)
 80023de:	429c      	cmp	r4, r3
 80023e0:	d101      	bne.n	80023e6 <USART_Init+0x72>
 80023e2:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80023e4:	e004      	b.n	80023f0 <USART_Init+0x7c>
 80023e6:	4b13      	ldr	r3, [pc, #76]	; (8002434 <USART_Init+0xc0>)
 80023e8:	429c      	cmp	r4, r3
 80023ea:	bf0c      	ite	eq
 80023ec:	9b12      	ldreq	r3, [sp, #72]	; 0x48
 80023ee:	9b13      	ldrne	r3, [sp, #76]	; 0x4c
 80023f0:	6822      	ldr	r2, [r4, #0]
 80023f2:	6829      	ldr	r1, [r5, #0]
 80023f4:	f412 4f00 	tst.w	r2, #32768	; 0x8000
 80023f8:	bf18      	it	ne
 80023fa:	005b      	lslne	r3, r3, #1
 80023fc:	fbb3 f2f1 	udiv	r2, r3, r1
 8002400:	fb01 3312 	mls	r3, r1, r2, r3
 8002404:	ebb3 0f51 	cmp.w	r3, r1, lsr #1
 8002408:	6823      	ldr	r3, [r4, #0]
 800240a:	bf28      	it	cs
 800240c:	3201      	addcs	r2, #1
 800240e:	041b      	lsls	r3, r3, #16
 8002410:	bf41      	itttt	mi
 8002412:	f64f 73f0 	movwmi	r3, #65520	; 0xfff0
 8002416:	f3c2 0142 	ubfxmi	r1, r2, #1, #3
 800241a:	4013      	andmi	r3, r2
 800241c:	ea41 0203 	orrmi.w	r2, r1, r3
 8002420:	b292      	uxth	r2, r2
 8002422:	81a2      	strh	r2, [r4, #12]
 8002424:	b019      	add	sp, #100	; 0x64
 8002426:	bd30      	pop	{r4, r5, pc}
 8002428:	40013800 	.word	0x40013800
 800242c:	40004400 	.word	0x40004400
 8002430:	40004800 	.word	0x40004800
 8002434:	40004c00 	.word	0x40004c00

08002438 <USART_Cmd>:
 8002438:	bf00      	nop
 800243a:	bf00      	nop
 800243c:	6803      	ldr	r3, [r0, #0]
 800243e:	b111      	cbz	r1, 8002446 <USART_Cmd+0xe>
 8002440:	f043 0301 	orr.w	r3, r3, #1
 8002444:	e001      	b.n	800244a <USART_Cmd+0x12>
 8002446:	f023 0301 	bic.w	r3, r3, #1
 800244a:	6003      	str	r3, [r0, #0]
 800244c:	4770      	bx	lr

0800244e <USART_ReceiveData>:
 800244e:	bf00      	nop
 8002450:	8c80      	ldrh	r0, [r0, #36]	; 0x24
 8002452:	f3c0 0008 	ubfx	r0, r0, #0, #9
 8002456:	4770      	bx	lr

08002458 <USART_ITConfig>:
 8002458:	b510      	push	{r4, lr}
 800245a:	bf00      	nop
 800245c:	bf00      	nop
 800245e:	bf00      	nop
 8002460:	f3c1 2407 	ubfx	r4, r1, #8, #8
 8002464:	2301      	movs	r3, #1
 8002466:	b2c9      	uxtb	r1, r1
 8002468:	2c02      	cmp	r4, #2
 800246a:	fa03 f301 	lsl.w	r3, r3, r1
 800246e:	d101      	bne.n	8002474 <USART_ITConfig+0x1c>
 8002470:	3004      	adds	r0, #4
 8002472:	e002      	b.n	800247a <USART_ITConfig+0x22>
 8002474:	2c03      	cmp	r4, #3
 8002476:	bf08      	it	eq
 8002478:	3008      	addeq	r0, #8
 800247a:	b112      	cbz	r2, 8002482 <USART_ITConfig+0x2a>
 800247c:	6802      	ldr	r2, [r0, #0]
 800247e:	4313      	orrs	r3, r2
 8002480:	e002      	b.n	8002488 <USART_ITConfig+0x30>
 8002482:	6802      	ldr	r2, [r0, #0]
 8002484:	ea22 0303 	bic.w	r3, r2, r3
 8002488:	6003      	str	r3, [r0, #0]
 800248a:	bd10      	pop	{r4, pc}

0800248c <USART_GetITStatus>:
 800248c:	b510      	push	{r4, lr}
 800248e:	bf00      	nop
 8002490:	bf00      	nop
 8002492:	f3c1 2207 	ubfx	r2, r1, #8, #8
 8002496:	b2cc      	uxtb	r4, r1
 8002498:	2301      	movs	r3, #1
 800249a:	2a01      	cmp	r2, #1
 800249c:	fa03 f304 	lsl.w	r3, r3, r4
 80024a0:	d101      	bne.n	80024a6 <USART_GetITStatus+0x1a>
 80024a2:	6802      	ldr	r2, [r0, #0]
 80024a4:	e003      	b.n	80024ae <USART_GetITStatus+0x22>
 80024a6:	2a02      	cmp	r2, #2
 80024a8:	bf0c      	ite	eq
 80024aa:	6842      	ldreq	r2, [r0, #4]
 80024ac:	6882      	ldrne	r2, [r0, #8]
 80024ae:	4013      	ands	r3, r2
 80024b0:	69c2      	ldr	r2, [r0, #28]
 80024b2:	b13b      	cbz	r3, 80024c4 <USART_GetITStatus+0x38>
 80024b4:	0c09      	lsrs	r1, r1, #16
 80024b6:	2301      	movs	r3, #1
 80024b8:	408b      	lsls	r3, r1
 80024ba:	4213      	tst	r3, r2
 80024bc:	bf14      	ite	ne
 80024be:	2001      	movne	r0, #1
 80024c0:	2000      	moveq	r0, #0
 80024c2:	bd10      	pop	{r4, pc}
 80024c4:	4618      	mov	r0, r3
 80024c6:	bd10      	pop	{r4, pc}

080024c8 <USART_ClearITPendingBit>:
 80024c8:	bf00      	nop
 80024ca:	bf00      	nop
 80024cc:	2301      	movs	r3, #1
 80024ce:	0c09      	lsrs	r1, r1, #16
 80024d0:	408b      	lsls	r3, r1
 80024d2:	6203      	str	r3, [r0, #32]
 80024d4:	4770      	bx	lr
	...

080024d8 <uart_write>:
 80024d8:	4b04      	ldr	r3, [pc, #16]	; (80024ec <uart_write+0x14>)
 80024da:	69da      	ldr	r2, [r3, #28]
 80024dc:	0612      	lsls	r2, r2, #24
 80024de:	d401      	bmi.n	80024e4 <uart_write+0xc>
 80024e0:	bf00      	nop
 80024e2:	e7f9      	b.n	80024d8 <uart_write>
 80024e4:	b280      	uxth	r0, r0
 80024e6:	8518      	strh	r0, [r3, #40]	; 0x28
 80024e8:	4770      	bx	lr
 80024ea:	bf00      	nop
 80024ec:	40013800 	.word	0x40013800

080024f0 <uart_init>:
 80024f0:	b530      	push	{r4, r5, lr}
 80024f2:	4b2c      	ldr	r3, [pc, #176]	; (80025a4 <uart_init+0xb4>)
 80024f4:	4d2c      	ldr	r5, [pc, #176]	; (80025a8 <uart_init+0xb8>)
 80024f6:	2400      	movs	r4, #0
 80024f8:	601c      	str	r4, [r3, #0]
 80024fa:	4b2c      	ldr	r3, [pc, #176]	; (80025ac <uart_init+0xbc>)
 80024fc:	b08b      	sub	sp, #44	; 0x2c
 80024fe:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 8002502:	2101      	movs	r1, #1
 8002504:	601c      	str	r4, [r3, #0]
 8002506:	f7ff fd59 	bl	8001fbc <RCC_AHBPeriphClockCmd>
 800250a:	f44f 4080 	mov.w	r0, #16384	; 0x4000
 800250e:	2101      	movs	r1, #1
 8002510:	f7ff fd62 	bl	8001fd8 <RCC_APB2PeriphClockCmd>
 8002514:	f44f 63c0 	mov.w	r3, #1536	; 0x600
 8002518:	9302      	str	r3, [sp, #8]
 800251a:	2302      	movs	r3, #2
 800251c:	f88d 300c 	strb.w	r3, [sp, #12]
 8002520:	a902      	add	r1, sp, #8
 8002522:	2303      	movs	r3, #3
 8002524:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8002528:	f88d 300d 	strb.w	r3, [sp, #13]
 800252c:	f88d 400e 	strb.w	r4, [sp, #14]
 8002530:	f88d 400f 	strb.w	r4, [sp, #15]
 8002534:	f000 fbea 	bl	8002d0c <GPIO_Init>
 8002538:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 800253c:	2109      	movs	r1, #9
 800253e:	2207      	movs	r2, #7
 8002540:	f000 fc2e 	bl	8002da0 <GPIO_PinAFConfig>
 8002544:	2207      	movs	r2, #7
 8002546:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 800254a:	210a      	movs	r1, #10
 800254c:	f000 fc28 	bl	8002da0 <GPIO_PinAFConfig>
 8002550:	f44f 33e1 	mov.w	r3, #115200	; 0x1c200
 8002554:	9304      	str	r3, [sp, #16]
 8002556:	4628      	mov	r0, r5
 8002558:	230c      	movs	r3, #12
 800255a:	a904      	add	r1, sp, #16
 800255c:	9308      	str	r3, [sp, #32]
 800255e:	9405      	str	r4, [sp, #20]
 8002560:	9406      	str	r4, [sp, #24]
 8002562:	9407      	str	r4, [sp, #28]
 8002564:	9409      	str	r4, [sp, #36]	; 0x24
 8002566:	f7ff ff05 	bl	8002374 <USART_Init>
 800256a:	4628      	mov	r0, r5
 800256c:	2101      	movs	r1, #1
 800256e:	f7ff ff63 	bl	8002438 <USART_Cmd>
 8002572:	2201      	movs	r2, #1
 8002574:	4628      	mov	r0, r5
 8002576:	490e      	ldr	r1, [pc, #56]	; (80025b0 <uart_init+0xc0>)
 8002578:	f7ff ff6e 	bl	8002458 <USART_ITConfig>
 800257c:	2325      	movs	r3, #37	; 0x25
 800257e:	f88d 4005 	strb.w	r4, [sp, #5]
 8002582:	f88d 4006 	strb.w	r4, [sp, #6]
 8002586:	a801      	add	r0, sp, #4
 8002588:	2401      	movs	r4, #1
 800258a:	f88d 3004 	strb.w	r3, [sp, #4]
 800258e:	f88d 4007 	strb.w	r4, [sp, #7]
 8002592:	f000 fadd 	bl	8002b50 <NVIC_Init>
 8002596:	4628      	mov	r0, r5
 8002598:	4621      	mov	r1, r4
 800259a:	f7ff ff4d 	bl	8002438 <USART_Cmd>
 800259e:	b00b      	add	sp, #44	; 0x2c
 80025a0:	bd30      	pop	{r4, r5, pc}
 80025a2:	bf00      	nop
 80025a4:	20001084 	.word	0x20001084
 80025a8:	40013800 	.word	0x40013800
 80025ac:	20001088 	.word	0x20001088
 80025b0:	00050105 	.word	0x00050105

080025b4 <USART1_IRQHandler>:
 80025b4:	b508      	push	{r3, lr}
 80025b6:	480d      	ldr	r0, [pc, #52]	; (80025ec <USART1_IRQHandler+0x38>)
 80025b8:	490d      	ldr	r1, [pc, #52]	; (80025f0 <USART1_IRQHandler+0x3c>)
 80025ba:	f7ff ff67 	bl	800248c <USART_GetITStatus>
 80025be:	b178      	cbz	r0, 80025e0 <USART1_IRQHandler+0x2c>
 80025c0:	480a      	ldr	r0, [pc, #40]	; (80025ec <USART1_IRQHandler+0x38>)
 80025c2:	f7ff ff44 	bl	800244e <USART_ReceiveData>
 80025c6:	4b0b      	ldr	r3, [pc, #44]	; (80025f4 <USART1_IRQHandler+0x40>)
 80025c8:	490b      	ldr	r1, [pc, #44]	; (80025f8 <USART1_IRQHandler+0x44>)
 80025ca:	681a      	ldr	r2, [r3, #0]
 80025cc:	b2c0      	uxtb	r0, r0
 80025ce:	5488      	strb	r0, [r1, r2]
 80025d0:	681a      	ldr	r2, [r3, #0]
 80025d2:	3201      	adds	r2, #1
 80025d4:	601a      	str	r2, [r3, #0]
 80025d6:	681a      	ldr	r2, [r3, #0]
 80025d8:	2a1f      	cmp	r2, #31
 80025da:	bf84      	itt	hi
 80025dc:	2200      	movhi	r2, #0
 80025de:	601a      	strhi	r2, [r3, #0]
 80025e0:	4802      	ldr	r0, [pc, #8]	; (80025ec <USART1_IRQHandler+0x38>)
 80025e2:	4903      	ldr	r1, [pc, #12]	; (80025f0 <USART1_IRQHandler+0x3c>)
 80025e4:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80025e8:	f7ff bf6e 	b.w	80024c8 <USART_ClearITPendingBit>
 80025ec:	40013800 	.word	0x40013800
 80025f0:	00050105 	.word	0x00050105
 80025f4:	20001084 	.word	0x20001084
 80025f8:	20001064 	.word	0x20001064

080025fc <i2c_delay>:
 80025fc:	bf00      	nop
 80025fe:	bf00      	nop
 8002600:	bf00      	nop
 8002602:	bf00      	nop
 8002604:	4770      	bx	lr
	...

08002608 <SetLowSDA>:
 8002608:	b537      	push	{r0, r1, r2, r4, r5, lr}
 800260a:	4d0d      	ldr	r5, [pc, #52]	; (8002640 <SetLowSDA+0x38>)
 800260c:	2301      	movs	r3, #1
 800260e:	2203      	movs	r2, #3
 8002610:	2480      	movs	r4, #128	; 0x80
 8002612:	f88d 3004 	strb.w	r3, [sp, #4]
 8002616:	f88d 3006 	strb.w	r3, [sp, #6]
 800261a:	4628      	mov	r0, r5
 800261c:	2300      	movs	r3, #0
 800261e:	4669      	mov	r1, sp
 8002620:	f88d 2005 	strb.w	r2, [sp, #5]
 8002624:	f88d 3007 	strb.w	r3, [sp, #7]
 8002628:	9400      	str	r4, [sp, #0]
 800262a:	f000 fb6f 	bl	8002d0c <GPIO_Init>
 800262e:	4628      	mov	r0, r5
 8002630:	4621      	mov	r1, r4
 8002632:	f000 fbb1 	bl	8002d98 <GPIO_ResetBits>
 8002636:	f7ff ffe1 	bl	80025fc <i2c_delay>
 800263a:	b003      	add	sp, #12
 800263c:	bd30      	pop	{r4, r5, pc}
 800263e:	bf00      	nop
 8002640:	48000400 	.word	0x48000400

08002644 <SetHighSDA>:
 8002644:	b537      	push	{r0, r1, r2, r4, r5, lr}
 8002646:	4d0d      	ldr	r5, [pc, #52]	; (800267c <SetHighSDA+0x38>)
 8002648:	2203      	movs	r2, #3
 800264a:	2300      	movs	r3, #0
 800264c:	2480      	movs	r4, #128	; 0x80
 800264e:	f88d 2005 	strb.w	r2, [sp, #5]
 8002652:	4628      	mov	r0, r5
 8002654:	2201      	movs	r2, #1
 8002656:	4669      	mov	r1, sp
 8002658:	f88d 3004 	strb.w	r3, [sp, #4]
 800265c:	f88d 2006 	strb.w	r2, [sp, #6]
 8002660:	f88d 3007 	strb.w	r3, [sp, #7]
 8002664:	9400      	str	r4, [sp, #0]
 8002666:	f000 fb51 	bl	8002d0c <GPIO_Init>
 800266a:	4628      	mov	r0, r5
 800266c:	4621      	mov	r1, r4
 800266e:	f000 fb8f 	bl	8002d90 <GPIO_SetBits>
 8002672:	f7ff ffc3 	bl	80025fc <i2c_delay>
 8002676:	b003      	add	sp, #12
 8002678:	bd30      	pop	{r4, r5, pc}
 800267a:	bf00      	nop
 800267c:	48000400 	.word	0x48000400

08002680 <SetLowSCL>:
 8002680:	b508      	push	{r3, lr}
 8002682:	4804      	ldr	r0, [pc, #16]	; (8002694 <SetLowSCL+0x14>)
 8002684:	2140      	movs	r1, #64	; 0x40
 8002686:	f000 fb87 	bl	8002d98 <GPIO_ResetBits>
 800268a:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800268e:	f7ff bfb5 	b.w	80025fc <i2c_delay>
 8002692:	bf00      	nop
 8002694:	48000400 	.word	0x48000400

08002698 <SetHighSCL>:
 8002698:	b508      	push	{r3, lr}
 800269a:	4804      	ldr	r0, [pc, #16]	; (80026ac <SetHighSCL+0x14>)
 800269c:	2140      	movs	r1, #64	; 0x40
 800269e:	f000 fb77 	bl	8002d90 <GPIO_SetBits>
 80026a2:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80026a6:	f7ff bfa9 	b.w	80025fc <i2c_delay>
 80026aa:	bf00      	nop
 80026ac:	48000400 	.word	0x48000400

080026b0 <i2c_0_init>:
 80026b0:	b507      	push	{r0, r1, r2, lr}
 80026b2:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 80026b6:	2101      	movs	r1, #1
 80026b8:	f7ff fc80 	bl	8001fbc <RCC_AHBPeriphClockCmd>
 80026bc:	23c0      	movs	r3, #192	; 0xc0
 80026be:	9300      	str	r3, [sp, #0]
 80026c0:	2301      	movs	r3, #1
 80026c2:	2203      	movs	r2, #3
 80026c4:	480a      	ldr	r0, [pc, #40]	; (80026f0 <i2c_0_init+0x40>)
 80026c6:	f88d 3004 	strb.w	r3, [sp, #4]
 80026ca:	4669      	mov	r1, sp
 80026cc:	f88d 3006 	strb.w	r3, [sp, #6]
 80026d0:	2300      	movs	r3, #0
 80026d2:	f88d 2005 	strb.w	r2, [sp, #5]
 80026d6:	f88d 3007 	strb.w	r3, [sp, #7]
 80026da:	f000 fb17 	bl	8002d0c <GPIO_Init>
 80026de:	f7ff ffdb 	bl	8002698 <SetHighSCL>
 80026e2:	f7ff ff91 	bl	8002608 <SetLowSDA>
 80026e6:	f7ff ffad 	bl	8002644 <SetHighSDA>
 80026ea:	b003      	add	sp, #12
 80026ec:	f85d fb04 	ldr.w	pc, [sp], #4
 80026f0:	48000400 	.word	0x48000400

080026f4 <i2cStart>:
 80026f4:	b508      	push	{r3, lr}
 80026f6:	f7ff ffcf 	bl	8002698 <SetHighSCL>
 80026fa:	f7ff ffa3 	bl	8002644 <SetHighSDA>
 80026fe:	f7ff ffcb 	bl	8002698 <SetHighSCL>
 8002702:	f7ff ff81 	bl	8002608 <SetLowSDA>
 8002706:	f7ff ffbb 	bl	8002680 <SetLowSCL>
 800270a:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800270e:	f7ff bf99 	b.w	8002644 <SetHighSDA>

08002712 <i2cStop>:
 8002712:	b508      	push	{r3, lr}
 8002714:	f7ff ffb4 	bl	8002680 <SetLowSCL>
 8002718:	f7ff ff76 	bl	8002608 <SetLowSDA>
 800271c:	f7ff ffbc 	bl	8002698 <SetHighSCL>
 8002720:	f7ff ff72 	bl	8002608 <SetLowSDA>
 8002724:	f7ff ffb8 	bl	8002698 <SetHighSCL>
 8002728:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800272c:	f7ff bf8a 	b.w	8002644 <SetHighSDA>

08002730 <i2cWrite>:
 8002730:	b538      	push	{r3, r4, r5, lr}
 8002732:	4605      	mov	r5, r0
 8002734:	2408      	movs	r4, #8
 8002736:	f7ff ffa3 	bl	8002680 <SetLowSCL>
 800273a:	062b      	lsls	r3, r5, #24
 800273c:	d502      	bpl.n	8002744 <i2cWrite+0x14>
 800273e:	f7ff ff81 	bl	8002644 <SetHighSDA>
 8002742:	e001      	b.n	8002748 <i2cWrite+0x18>
 8002744:	f7ff ff60 	bl	8002608 <SetLowSDA>
 8002748:	3c01      	subs	r4, #1
 800274a:	f7ff ffa5 	bl	8002698 <SetHighSCL>
 800274e:	006d      	lsls	r5, r5, #1
 8002750:	f014 04ff 	ands.w	r4, r4, #255	; 0xff
 8002754:	b2ed      	uxtb	r5, r5
 8002756:	d1ee      	bne.n	8002736 <i2cWrite+0x6>
 8002758:	f7ff ff92 	bl	8002680 <SetLowSCL>
 800275c:	f7ff ff72 	bl	8002644 <SetHighSDA>
 8002760:	f7ff ff9a 	bl	8002698 <SetHighSCL>
 8002764:	4b05      	ldr	r3, [pc, #20]	; (800277c <i2cWrite+0x4c>)
 8002766:	8a1c      	ldrh	r4, [r3, #16]
 8002768:	b2a4      	uxth	r4, r4
 800276a:	f7ff ff89 	bl	8002680 <SetLowSCL>
 800276e:	f7ff ff45 	bl	80025fc <i2c_delay>
 8002772:	f084 0080 	eor.w	r0, r4, #128	; 0x80
 8002776:	f3c0 10c0 	ubfx	r0, r0, #7, #1
 800277a:	bd38      	pop	{r3, r4, r5, pc}
 800277c:	48000400 	.word	0x48000400

08002780 <i2cRead>:
 8002780:	b570      	push	{r4, r5, r6, lr}
 8002782:	4606      	mov	r6, r0
 8002784:	f7ff ff7c 	bl	8002680 <SetLowSCL>
 8002788:	f7ff ff5c 	bl	8002644 <SetHighSDA>
 800278c:	2508      	movs	r5, #8
 800278e:	2400      	movs	r4, #0
 8002790:	f7ff ff82 	bl	8002698 <SetHighSCL>
 8002794:	4b0d      	ldr	r3, [pc, #52]	; (80027cc <i2cRead+0x4c>)
 8002796:	8a1b      	ldrh	r3, [r3, #16]
 8002798:	0064      	lsls	r4, r4, #1
 800279a:	061b      	lsls	r3, r3, #24
 800279c:	b2e4      	uxtb	r4, r4
 800279e:	bf48      	it	mi
 80027a0:	3401      	addmi	r4, #1
 80027a2:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 80027a6:	bf48      	it	mi
 80027a8:	b2e4      	uxtbmi	r4, r4
 80027aa:	f7ff ff69 	bl	8002680 <SetLowSCL>
 80027ae:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 80027b2:	d1ed      	bne.n	8002790 <i2cRead+0x10>
 80027b4:	b10e      	cbz	r6, 80027ba <i2cRead+0x3a>
 80027b6:	f7ff ff27 	bl	8002608 <SetLowSDA>
 80027ba:	f7ff ff6d 	bl	8002698 <SetHighSCL>
 80027be:	f7ff ff5f 	bl	8002680 <SetLowSCL>
 80027c2:	f7ff ff1b 	bl	80025fc <i2c_delay>
 80027c6:	4620      	mov	r0, r4
 80027c8:	bd70      	pop	{r4, r5, r6, pc}
 80027ca:	bf00      	nop
 80027cc:	48000400 	.word	0x48000400

080027d0 <i2c_write_reg>:
 80027d0:	b570      	push	{r4, r5, r6, lr}
 80027d2:	4606      	mov	r6, r0
 80027d4:	460d      	mov	r5, r1
 80027d6:	4614      	mov	r4, r2
 80027d8:	f7ff ff8c 	bl	80026f4 <i2cStart>
 80027dc:	4630      	mov	r0, r6
 80027de:	f7ff ffa7 	bl	8002730 <i2cWrite>
 80027e2:	4628      	mov	r0, r5
 80027e4:	f7ff ffa4 	bl	8002730 <i2cWrite>
 80027e8:	4620      	mov	r0, r4
 80027ea:	f7ff ffa1 	bl	8002730 <i2cWrite>
 80027ee:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 80027f2:	f7ff bf8e 	b.w	8002712 <i2cStop>

080027f6 <i2c_read_reg>:
 80027f6:	b538      	push	{r3, r4, r5, lr}
 80027f8:	4604      	mov	r4, r0
 80027fa:	460d      	mov	r5, r1
 80027fc:	f7ff ff7a 	bl	80026f4 <i2cStart>
 8002800:	4620      	mov	r0, r4
 8002802:	f7ff ff95 	bl	8002730 <i2cWrite>
 8002806:	4628      	mov	r0, r5
 8002808:	f7ff ff92 	bl	8002730 <i2cWrite>
 800280c:	f7ff ff72 	bl	80026f4 <i2cStart>
 8002810:	f044 0001 	orr.w	r0, r4, #1
 8002814:	f7ff ff8c 	bl	8002730 <i2cWrite>
 8002818:	2000      	movs	r0, #0
 800281a:	f7ff ffb1 	bl	8002780 <i2cRead>
 800281e:	4604      	mov	r4, r0
 8002820:	f7ff ff77 	bl	8002712 <i2cStop>
 8002824:	4620      	mov	r0, r4
 8002826:	bd38      	pop	{r3, r4, r5, pc}

08002828 <SystemInit>:
 8002828:	4a39      	ldr	r2, [pc, #228]	; (8002910 <SystemInit+0xe8>)
 800282a:	f8d2 3088 	ldr.w	r3, [r2, #136]	; 0x88
 800282e:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
 8002832:	f8c2 3088 	str.w	r3, [r2, #136]	; 0x88
 8002836:	4b37      	ldr	r3, [pc, #220]	; (8002914 <SystemInit+0xec>)
 8002838:	681a      	ldr	r2, [r3, #0]
 800283a:	f042 0201 	orr.w	r2, r2, #1
 800283e:	601a      	str	r2, [r3, #0]
 8002840:	6859      	ldr	r1, [r3, #4]
 8002842:	4a35      	ldr	r2, [pc, #212]	; (8002918 <SystemInit+0xf0>)
 8002844:	400a      	ands	r2, r1
 8002846:	605a      	str	r2, [r3, #4]
 8002848:	681a      	ldr	r2, [r3, #0]
 800284a:	f022 7284 	bic.w	r2, r2, #17301504	; 0x1080000
 800284e:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
 8002852:	601a      	str	r2, [r3, #0]
 8002854:	681a      	ldr	r2, [r3, #0]
 8002856:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 800285a:	601a      	str	r2, [r3, #0]
 800285c:	685a      	ldr	r2, [r3, #4]
 800285e:	f422 02fe 	bic.w	r2, r2, #8323072	; 0x7f0000
 8002862:	605a      	str	r2, [r3, #4]
 8002864:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8002866:	f022 020f 	bic.w	r2, r2, #15
 800286a:	62da      	str	r2, [r3, #44]	; 0x2c
 800286c:	6b19      	ldr	r1, [r3, #48]	; 0x30
 800286e:	4a2b      	ldr	r2, [pc, #172]	; (800291c <SystemInit+0xf4>)
 8002870:	b082      	sub	sp, #8
 8002872:	400a      	ands	r2, r1
 8002874:	631a      	str	r2, [r3, #48]	; 0x30
 8002876:	2200      	movs	r2, #0
 8002878:	609a      	str	r2, [r3, #8]
 800287a:	9200      	str	r2, [sp, #0]
 800287c:	9201      	str	r2, [sp, #4]
 800287e:	681a      	ldr	r2, [r3, #0]
 8002880:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
 8002884:	601a      	str	r2, [r3, #0]
 8002886:	681a      	ldr	r2, [r3, #0]
 8002888:	f402 3200 	and.w	r2, r2, #131072	; 0x20000
 800288c:	9201      	str	r2, [sp, #4]
 800288e:	9a00      	ldr	r2, [sp, #0]
 8002890:	3201      	adds	r2, #1
 8002892:	9200      	str	r2, [sp, #0]
 8002894:	9a01      	ldr	r2, [sp, #4]
 8002896:	b91a      	cbnz	r2, 80028a0 <SystemInit+0x78>
 8002898:	9a00      	ldr	r2, [sp, #0]
 800289a:	f5b2 4fa0 	cmp.w	r2, #20480	; 0x5000
 800289e:	d1f2      	bne.n	8002886 <SystemInit+0x5e>
 80028a0:	681a      	ldr	r2, [r3, #0]
 80028a2:	f412 3200 	ands.w	r2, r2, #131072	; 0x20000
 80028a6:	bf18      	it	ne
 80028a8:	2201      	movne	r2, #1
 80028aa:	9201      	str	r2, [sp, #4]
 80028ac:	9a01      	ldr	r2, [sp, #4]
 80028ae:	2a01      	cmp	r2, #1
 80028b0:	d005      	beq.n	80028be <SystemInit+0x96>
 80028b2:	4b17      	ldr	r3, [pc, #92]	; (8002910 <SystemInit+0xe8>)
 80028b4:	f04f 6200 	mov.w	r2, #134217728	; 0x8000000
 80028b8:	609a      	str	r2, [r3, #8]
 80028ba:	b002      	add	sp, #8
 80028bc:	4770      	bx	lr
 80028be:	4a18      	ldr	r2, [pc, #96]	; (8002920 <SystemInit+0xf8>)
 80028c0:	2112      	movs	r1, #18
 80028c2:	6011      	str	r1, [r2, #0]
 80028c4:	685a      	ldr	r2, [r3, #4]
 80028c6:	605a      	str	r2, [r3, #4]
 80028c8:	685a      	ldr	r2, [r3, #4]
 80028ca:	605a      	str	r2, [r3, #4]
 80028cc:	685a      	ldr	r2, [r3, #4]
 80028ce:	f442 6280 	orr.w	r2, r2, #1024	; 0x400
 80028d2:	605a      	str	r2, [r3, #4]
 80028d4:	685a      	ldr	r2, [r3, #4]
 80028d6:	f422 127c 	bic.w	r2, r2, #4128768	; 0x3f0000
 80028da:	605a      	str	r2, [r3, #4]
 80028dc:	685a      	ldr	r2, [r3, #4]
 80028de:	f442 12e8 	orr.w	r2, r2, #1900544	; 0x1d0000
 80028e2:	605a      	str	r2, [r3, #4]
 80028e4:	681a      	ldr	r2, [r3, #0]
 80028e6:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
 80028ea:	601a      	str	r2, [r3, #0]
 80028ec:	6819      	ldr	r1, [r3, #0]
 80028ee:	4a09      	ldr	r2, [pc, #36]	; (8002914 <SystemInit+0xec>)
 80028f0:	0189      	lsls	r1, r1, #6
 80028f2:	d5fb      	bpl.n	80028ec <SystemInit+0xc4>
 80028f4:	6851      	ldr	r1, [r2, #4]
 80028f6:	f021 0103 	bic.w	r1, r1, #3
 80028fa:	6051      	str	r1, [r2, #4]
 80028fc:	6851      	ldr	r1, [r2, #4]
 80028fe:	f041 0102 	orr.w	r1, r1, #2
 8002902:	6051      	str	r1, [r2, #4]
 8002904:	685a      	ldr	r2, [r3, #4]
 8002906:	f002 020c 	and.w	r2, r2, #12
 800290a:	2a08      	cmp	r2, #8
 800290c:	d1fa      	bne.n	8002904 <SystemInit+0xdc>
 800290e:	e7d0      	b.n	80028b2 <SystemInit+0x8a>
 8002910:	e000ed00 	.word	0xe000ed00
 8002914:	40021000 	.word	0x40021000
 8002918:	f87fc00c 	.word	0xf87fc00c
 800291c:	ff00fccc 	.word	0xff00fccc
 8002920:	40022000 	.word	0x40022000

08002924 <sys_tick_init>:
 8002924:	4b06      	ldr	r3, [pc, #24]	; (8002940 <sys_tick_init+0x1c>)
 8002926:	f244 6250 	movw	r2, #18000	; 0x4650
 800292a:	605a      	str	r2, [r3, #4]
 800292c:	4a05      	ldr	r2, [pc, #20]	; (8002944 <sys_tick_init+0x20>)
 800292e:	21f0      	movs	r1, #240	; 0xf0
 8002930:	f882 1023 	strb.w	r1, [r2, #35]	; 0x23
 8002934:	2200      	movs	r2, #0
 8002936:	609a      	str	r2, [r3, #8]
 8002938:	2207      	movs	r2, #7
 800293a:	601a      	str	r2, [r3, #0]
 800293c:	4770      	bx	lr
 800293e:	bf00      	nop
 8002940:	e000e010 	.word	0xe000e010
 8002944:	e000ed00 	.word	0xe000ed00

08002948 <sleep>:
 8002948:	bf30      	wfi
 800294a:	4770      	bx	lr

0800294c <core_yield>:
 800294c:	bf00      	nop
 800294e:	4770      	bx	lr

08002950 <sytem_clock_init>:
 8002950:	f7ff bf6a 	b.w	8002828 <SystemInit>

08002954 <pwm_set>:
 8002954:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8002958:	b086      	sub	sp, #24
 800295a:	2370      	movs	r3, #112	; 0x70
 800295c:	9301      	str	r3, [sp, #4]
 800295e:	2301      	movs	r3, #1
 8002960:	f8ad 3008 	strh.w	r3, [sp, #8]
 8002964:	2304      	movs	r3, #4
 8002966:	f8ad 300a 	strh.w	r3, [sp, #10]
 800296a:	f8df 8064 	ldr.w	r8, [pc, #100]	; 80029d0 <pwm_set+0x7c>
 800296e:	4c17      	ldr	r4, [pc, #92]	; (80029cc <pwm_set+0x78>)
 8002970:	2302      	movs	r3, #2
 8002972:	f8ad 3010 	strh.w	r3, [sp, #16]
 8002976:	2300      	movs	r3, #0
 8002978:	f8ad 3012 	strh.w	r3, [sp, #18]
 800297c:	f8ad 3016 	strh.w	r3, [sp, #22]
 8002980:	f242 7710 	movw	r7, #10000	; 0x2710
 8002984:	f8d8 3000 	ldr.w	r3, [r8]
 8002988:	fbb3 f3f7 	udiv	r3, r3, r7
 800298c:	3b02      	subs	r3, #2
 800298e:	f44f 7280 	mov.w	r2, #256	; 0x100
 8002992:	460e      	mov	r6, r1
 8002994:	2564      	movs	r5, #100	; 0x64
 8002996:	a901      	add	r1, sp, #4
 8002998:	4358      	muls	r0, r3
 800299a:	fbb0 f3f5 	udiv	r3, r0, r5
 800299e:	4620      	mov	r0, r4
 80029a0:	f8ad 2014 	strh.w	r2, [sp, #20]
 80029a4:	9303      	str	r3, [sp, #12]
 80029a6:	f7ff fb91 	bl	80020cc <TIM_OC1Init>
 80029aa:	f8d8 1000 	ldr.w	r1, [r8]
 80029ae:	fbb1 f1f7 	udiv	r1, r1, r7
 80029b2:	3902      	subs	r1, #2
 80029b4:	4371      	muls	r1, r6
 80029b6:	4620      	mov	r0, r4
 80029b8:	fbb1 f1f5 	udiv	r1, r1, r5
 80029bc:	9103      	str	r1, [sp, #12]
 80029be:	a901      	add	r1, sp, #4
 80029c0:	f7ff fbca 	bl	8002158 <TIM_OC2Init>
 80029c4:	b006      	add	sp, #24
 80029c6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80029ca:	bf00      	nop
 80029cc:	40012c00 	.word	0x40012c00
 80029d0:	200000f8 	.word	0x200000f8

080029d4 <pwm_init>:
 80029d4:	b530      	push	{r4, r5, lr}
 80029d6:	f44f 6000 	mov.w	r0, #2048	; 0x800
 80029da:	b087      	sub	sp, #28
 80029dc:	2101      	movs	r1, #1
 80029de:	f7ff fafb 	bl	8001fd8 <RCC_APB2PeriphClockCmd>
 80029e2:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 80029e6:	2101      	movs	r1, #1
 80029e8:	f7ff fae8 	bl	8001fbc <RCC_AHBPeriphClockCmd>
 80029ec:	4c1d      	ldr	r4, [pc, #116]	; (8002a64 <pwm_init+0x90>)
 80029ee:	4d1e      	ldr	r5, [pc, #120]	; (8002a68 <pwm_init+0x94>)
 80029f0:	f44f 43c0 	mov.w	r3, #24576	; 0x6000
 80029f4:	9301      	str	r3, [sp, #4]
 80029f6:	2302      	movs	r3, #2
 80029f8:	f88d 3008 	strb.w	r3, [sp, #8]
 80029fc:	4620      	mov	r0, r4
 80029fe:	2303      	movs	r3, #3
 8002a00:	a901      	add	r1, sp, #4
 8002a02:	f88d 3009 	strb.w	r3, [sp, #9]
 8002a06:	f000 f981 	bl	8002d0c <GPIO_Init>
 8002a0a:	4620      	mov	r0, r4
 8002a0c:	210d      	movs	r1, #13
 8002a0e:	2206      	movs	r2, #6
 8002a10:	f000 f9c6 	bl	8002da0 <GPIO_PinAFConfig>
 8002a14:	4620      	mov	r0, r4
 8002a16:	210e      	movs	r1, #14
 8002a18:	2206      	movs	r2, #6
 8002a1a:	f000 f9c1 	bl	8002da0 <GPIO_PinAFConfig>
 8002a1e:	4b13      	ldr	r3, [pc, #76]	; (8002a6c <pwm_init+0x98>)
 8002a20:	2400      	movs	r4, #0
 8002a22:	f242 7210 	movw	r2, #10000	; 0x2710
 8002a26:	4628      	mov	r0, r5
 8002a28:	a903      	add	r1, sp, #12
 8002a2a:	681b      	ldr	r3, [r3, #0]
 8002a2c:	fbb3 f3f2 	udiv	r3, r3, r2
 8002a30:	3b01      	subs	r3, #1
 8002a32:	9304      	str	r3, [sp, #16]
 8002a34:	f8ad 400c 	strh.w	r4, [sp, #12]
 8002a38:	f8ad 400e 	strh.w	r4, [sp, #14]
 8002a3c:	f8ad 4014 	strh.w	r4, [sp, #20]
 8002a40:	f8ad 4016 	strh.w	r4, [sp, #22]
 8002a44:	f7ff fae4 	bl	8002010 <TIM_TimeBaseInit>
 8002a48:	4620      	mov	r0, r4
 8002a4a:	4621      	mov	r1, r4
 8002a4c:	f7ff ff82 	bl	8002954 <pwm_set>
 8002a50:	4628      	mov	r0, r5
 8002a52:	2101      	movs	r1, #1
 8002a54:	f7ff fb2c 	bl	80020b0 <TIM_Cmd>
 8002a58:	4628      	mov	r0, r5
 8002a5a:	2101      	movs	r1, #1
 8002a5c:	f7ff fbba 	bl	80021d4 <TIM_CtrlPWMOutputs>
 8002a60:	b007      	add	sp, #28
 8002a62:	bd30      	pop	{r4, r5, pc}
 8002a64:	48000400 	.word	0x48000400
 8002a68:	40012c00 	.word	0x40012c00
 8002a6c:	200000f8 	.word	0x200000f8

08002a70 <drv8834_run>:
 8002a70:	1e02      	subs	r2, r0, #0
 8002a72:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8002a76:	bfd5      	itete	le
 8002a78:	4252      	negle	r2, r2
 8002a7a:	8d03      	ldrhgt	r3, [r0, #40]	; 0x28
 8002a7c:	6983      	ldrle	r3, [r0, #24]
 8002a7e:	ea6f 4343 	mvngt.w	r3, r3, lsl #17
 8002a82:	bfc5      	ittet	gt
 8002a84:	ea6f 4353 	mvngt.w	r3, r3, lsr #17
 8002a88:	b29b      	uxthgt	r3, r3
 8002a8a:	f443 4300 	orrle.w	r3, r3, #32768	; 0x8000
 8002a8e:	8503      	strhgt	r3, [r0, #40]	; 0x28
 8002a90:	bfd8      	it	le
 8002a92:	6183      	strle	r3, [r0, #24]
 8002a94:	480d      	ldr	r0, [pc, #52]	; (8002acc <drv8834_run+0x5c>)
 8002a96:	bfd8      	it	le
 8002a98:	b212      	sxthle	r2, r2
 8002a9a:	2900      	cmp	r1, #0
 8002a9c:	bfcd      	iteet	gt
 8002a9e:	8d03      	ldrhgt	r3, [r0, #40]	; 0x28
 8002aa0:	6983      	ldrle	r3, [r0, #24]
 8002aa2:	4249      	negle	r1, r1
 8002aa4:	b29b      	uxthgt	r3, r3
 8002aa6:	bfd5      	itete	le
 8002aa8:	b209      	sxthle	r1, r1
 8002aaa:	f043 0320 	orrgt.w	r3, r3, #32
 8002aae:	f043 0320 	orrle.w	r3, r3, #32
 8002ab2:	8503      	strhgt	r3, [r0, #40]	; 0x28
 8002ab4:	bfd8      	it	le
 8002ab6:	6183      	strle	r3, [r0, #24]
 8002ab8:	2964      	cmp	r1, #100	; 0x64
 8002aba:	bfa8      	it	ge
 8002abc:	2164      	movge	r1, #100	; 0x64
 8002abe:	2a64      	cmp	r2, #100	; 0x64
 8002ac0:	bfa8      	it	ge
 8002ac2:	2264      	movge	r2, #100	; 0x64
 8002ac4:	4608      	mov	r0, r1
 8002ac6:	4611      	mov	r1, r2
 8002ac8:	f7ff bf44 	b.w	8002954 <pwm_set>
 8002acc:	48000400 	.word	0x48000400

08002ad0 <drv8834_init>:
 8002ad0:	e92d 41f3 	stmdb	sp!, {r0, r1, r4, r5, r6, r7, r8, lr}
 8002ad4:	4f1d      	ldr	r7, [pc, #116]	; (8002b4c <drv8834_init+0x7c>)
 8002ad6:	2400      	movs	r4, #0
 8002ad8:	2601      	movs	r6, #1
 8002ada:	2503      	movs	r5, #3
 8002adc:	f04f 0810 	mov.w	r8, #16
 8002ae0:	4638      	mov	r0, r7
 8002ae2:	4669      	mov	r1, sp
 8002ae4:	f8cd 8000 	str.w	r8, [sp]
 8002ae8:	f88d 6004 	strb.w	r6, [sp, #4]
 8002aec:	f88d 4006 	strb.w	r4, [sp, #6]
 8002af0:	f88d 5005 	strb.w	r5, [sp, #5]
 8002af4:	f88d 4007 	strb.w	r4, [sp, #7]
 8002af8:	f000 f908 	bl	8002d0c <GPIO_Init>
 8002afc:	f8a7 8028 	strh.w	r8, [r7, #40]	; 0x28
 8002b00:	2320      	movs	r3, #32
 8002b02:	4638      	mov	r0, r7
 8002b04:	4669      	mov	r1, sp
 8002b06:	9300      	str	r3, [sp, #0]
 8002b08:	f88d 6004 	strb.w	r6, [sp, #4]
 8002b0c:	f88d 4006 	strb.w	r4, [sp, #6]
 8002b10:	f88d 5005 	strb.w	r5, [sp, #5]
 8002b14:	f88d 4007 	strb.w	r4, [sp, #7]
 8002b18:	f000 f8f8 	bl	8002d0c <GPIO_Init>
 8002b1c:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8002b20:	4669      	mov	r1, sp
 8002b22:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8002b26:	9300      	str	r3, [sp, #0]
 8002b28:	f88d 6004 	strb.w	r6, [sp, #4]
 8002b2c:	f88d 4006 	strb.w	r4, [sp, #6]
 8002b30:	f88d 5005 	strb.w	r5, [sp, #5]
 8002b34:	f88d 4007 	strb.w	r4, [sp, #7]
 8002b38:	f000 f8e8 	bl	8002d0c <GPIO_Init>
 8002b3c:	4620      	mov	r0, r4
 8002b3e:	4621      	mov	r1, r4
 8002b40:	f7ff ff96 	bl	8002a70 <drv8834_run>
 8002b44:	b002      	add	sp, #8
 8002b46:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8002b4a:	bf00      	nop
 8002b4c:	48000400 	.word	0x48000400

08002b50 <NVIC_Init>:
 8002b50:	b510      	push	{r4, lr}
 8002b52:	bf00      	nop
 8002b54:	bf00      	nop
 8002b56:	bf00      	nop
 8002b58:	78c2      	ldrb	r2, [r0, #3]
 8002b5a:	7803      	ldrb	r3, [r0, #0]
 8002b5c:	b312      	cbz	r2, 8002ba4 <NVIC_Init+0x54>
 8002b5e:	4a17      	ldr	r2, [pc, #92]	; (8002bbc <NVIC_Init+0x6c>)
 8002b60:	68d1      	ldr	r1, [r2, #12]
 8002b62:	7842      	ldrb	r2, [r0, #1]
 8002b64:	43c9      	mvns	r1, r1
 8002b66:	f3c1 2102 	ubfx	r1, r1, #8, #3
 8002b6a:	f1c1 0404 	rsb	r4, r1, #4
 8002b6e:	b2e4      	uxtb	r4, r4
 8002b70:	40a2      	lsls	r2, r4
 8002b72:	b2d4      	uxtb	r4, r2
 8002b74:	220f      	movs	r2, #15
 8002b76:	410a      	asrs	r2, r1
 8002b78:	7881      	ldrb	r1, [r0, #2]
 8002b7a:	400a      	ands	r2, r1
 8002b7c:	4322      	orrs	r2, r4
 8002b7e:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
 8002b82:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
 8002b86:	0112      	lsls	r2, r2, #4
 8002b88:	b2d2      	uxtb	r2, r2
 8002b8a:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
 8002b8e:	7803      	ldrb	r3, [r0, #0]
 8002b90:	2201      	movs	r2, #1
 8002b92:	0959      	lsrs	r1, r3, #5
 8002b94:	f003 031f 	and.w	r3, r3, #31
 8002b98:	fa02 f303 	lsl.w	r3, r2, r3
 8002b9c:	4a08      	ldr	r2, [pc, #32]	; (8002bc0 <NVIC_Init+0x70>)
 8002b9e:	f842 3021 	str.w	r3, [r2, r1, lsl #2]
 8002ba2:	bd10      	pop	{r4, pc}
 8002ba4:	095a      	lsrs	r2, r3, #5
 8002ba6:	2101      	movs	r1, #1
 8002ba8:	f003 031f 	and.w	r3, r3, #31
 8002bac:	4099      	lsls	r1, r3
 8002bae:	f102 0320 	add.w	r3, r2, #32
 8002bb2:	4a03      	ldr	r2, [pc, #12]	; (8002bc0 <NVIC_Init+0x70>)
 8002bb4:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
 8002bb8:	bd10      	pop	{r4, pc}
 8002bba:	bf00      	nop
 8002bbc:	e000ed00 	.word	0xe000ed00
 8002bc0:	e000e100 	.word	0xe000e100

08002bc4 <lib_low_level_init>:
 8002bc4:	b508      	push	{r3, lr}
 8002bc6:	f7ff fec3 	bl	8002950 <sytem_clock_init>
 8002bca:	f000 f969 	bl	8002ea0 <gpio_init>
 8002bce:	f7ff fc8f 	bl	80024f0 <uart_init>
 8002bd2:	f7ff fb0f 	bl	80021f4 <timer_init>
 8002bd6:	f7ff fefd 	bl	80029d4 <pwm_init>
 8002bda:	f7ff ff79 	bl	8002ad0 <drv8834_init>
 8002bde:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8002be2:	f7ff bd65 	b.w	80026b0 <i2c_0_init>
	...

08002be8 <EXTI_Init>:
 8002be8:	b570      	push	{r4, r5, r6, lr}
 8002bea:	bf00      	nop
 8002bec:	bf00      	nop
 8002bee:	bf00      	nop
 8002bf0:	bf00      	nop
 8002bf2:	7982      	ldrb	r2, [r0, #6]
 8002bf4:	6803      	ldr	r3, [r0, #0]
 8002bf6:	7904      	ldrb	r4, [r0, #4]
 8002bf8:	2a00      	cmp	r2, #0
 8002bfa:	d064      	beq.n	8002cc6 <EXTI_Init+0xde>
 8002bfc:	f023 011f 	bic.w	r1, r3, #31
 8002c00:	f101 4180 	add.w	r1, r1, #1073741824	; 0x40000000
 8002c04:	f501 3182 	add.w	r1, r1, #66560	; 0x10400
 8002c08:	f003 021f 	and.w	r2, r3, #31
 8002c0c:	680d      	ldr	r5, [r1, #0]
 8002c0e:	2301      	movs	r3, #1
 8002c10:	fa03 f202 	lsl.w	r2, r3, r2
 8002c14:	ea25 0202 	bic.w	r2, r5, r2
 8002c18:	600a      	str	r2, [r1, #0]
 8002c1a:	6802      	ldr	r2, [r0, #0]
 8002c1c:	4d32      	ldr	r5, [pc, #200]	; (8002ce8 <EXTI_Init+0x100>)
 8002c1e:	f022 061f 	bic.w	r6, r2, #31
 8002c22:	f002 021f 	and.w	r2, r2, #31
 8002c26:	5971      	ldr	r1, [r6, r5]
 8002c28:	fa03 f202 	lsl.w	r2, r3, r2
 8002c2c:	ea21 0202 	bic.w	r2, r1, r2
 8002c30:	5172      	str	r2, [r6, r5]
 8002c32:	6801      	ldr	r1, [r0, #0]
 8002c34:	f104 4280 	add.w	r2, r4, #1073741824	; 0x40000000
 8002c38:	f502 3282 	add.w	r2, r2, #66560	; 0x10400
 8002c3c:	f021 041f 	bic.w	r4, r1, #31
 8002c40:	f001 011f 	and.w	r1, r1, #31
 8002c44:	5915      	ldr	r5, [r2, r4]
 8002c46:	fa03 f101 	lsl.w	r1, r3, r1
 8002c4a:	4329      	orrs	r1, r5
 8002c4c:	5111      	str	r1, [r2, r4]
 8002c4e:	6802      	ldr	r2, [r0, #0]
 8002c50:	4d26      	ldr	r5, [pc, #152]	; (8002cec <EXTI_Init+0x104>)
 8002c52:	f022 041f 	bic.w	r4, r2, #31
 8002c56:	f002 021f 	and.w	r2, r2, #31
 8002c5a:	5961      	ldr	r1, [r4, r5]
 8002c5c:	fa03 f202 	lsl.w	r2, r3, r2
 8002c60:	ea21 0202 	bic.w	r2, r1, r2
 8002c64:	5162      	str	r2, [r4, r5]
 8002c66:	6802      	ldr	r2, [r0, #0]
 8002c68:	4c21      	ldr	r4, [pc, #132]	; (8002cf0 <EXTI_Init+0x108>)
 8002c6a:	f022 061f 	bic.w	r6, r2, #31
 8002c6e:	f002 021f 	and.w	r2, r2, #31
 8002c72:	5931      	ldr	r1, [r6, r4]
 8002c74:	fa03 f202 	lsl.w	r2, r3, r2
 8002c78:	ea21 0202 	bic.w	r2, r1, r2
 8002c7c:	7941      	ldrb	r1, [r0, #5]
 8002c7e:	5132      	str	r2, [r6, r4]
 8002c80:	2910      	cmp	r1, #16
 8002c82:	6802      	ldr	r2, [r0, #0]
 8002c84:	d112      	bne.n	8002cac <EXTI_Init+0xc4>
 8002c86:	f022 011f 	bic.w	r1, r2, #31
 8002c8a:	f002 021f 	and.w	r2, r2, #31
 8002c8e:	594e      	ldr	r6, [r1, r5]
 8002c90:	fa03 f202 	lsl.w	r2, r3, r2
 8002c94:	4332      	orrs	r2, r6
 8002c96:	514a      	str	r2, [r1, r5]
 8002c98:	6802      	ldr	r2, [r0, #0]
 8002c9a:	f022 011f 	bic.w	r1, r2, #31
 8002c9e:	f002 021f 	and.w	r2, r2, #31
 8002ca2:	5908      	ldr	r0, [r1, r4]
 8002ca4:	4093      	lsls	r3, r2
 8002ca6:	4303      	orrs	r3, r0
 8002ca8:	510b      	str	r3, [r1, r4]
 8002caa:	bd70      	pop	{r4, r5, r6, pc}
 8002cac:	f101 4180 	add.w	r1, r1, #1073741824	; 0x40000000
 8002cb0:	f022 001f 	bic.w	r0, r2, #31
 8002cb4:	f501 3182 	add.w	r1, r1, #66560	; 0x10400
 8002cb8:	f002 021f 	and.w	r2, r2, #31
 8002cbc:	580c      	ldr	r4, [r1, r0]
 8002cbe:	4093      	lsls	r3, r2
 8002cc0:	4323      	orrs	r3, r4
 8002cc2:	500b      	str	r3, [r1, r0]
 8002cc4:	bd70      	pop	{r4, r5, r6, pc}
 8002cc6:	f104 4280 	add.w	r2, r4, #1073741824	; 0x40000000
 8002cca:	f502 3282 	add.w	r2, r2, #66560	; 0x10400
 8002cce:	f023 041f 	bic.w	r4, r3, #31
 8002cd2:	2001      	movs	r0, #1
 8002cd4:	5911      	ldr	r1, [r2, r4]
 8002cd6:	f003 031f 	and.w	r3, r3, #31
 8002cda:	fa00 f303 	lsl.w	r3, r0, r3
 8002cde:	ea21 0303 	bic.w	r3, r1, r3
 8002ce2:	5113      	str	r3, [r2, r4]
 8002ce4:	bd70      	pop	{r4, r5, r6, pc}
 8002ce6:	bf00      	nop
 8002ce8:	40010404 	.word	0x40010404
 8002cec:	40010408 	.word	0x40010408
 8002cf0:	4001040c 	.word	0x4001040c

08002cf4 <EXTI_ClearITPendingBit>:
 8002cf4:	f020 011f 	bic.w	r1, r0, #31
 8002cf8:	2301      	movs	r3, #1
 8002cfa:	f000 001f 	and.w	r0, r0, #31
 8002cfe:	4a02      	ldr	r2, [pc, #8]	; (8002d08 <EXTI_ClearITPendingBit+0x14>)
 8002d00:	4083      	lsls	r3, r0
 8002d02:	508b      	str	r3, [r1, r2]
 8002d04:	4770      	bx	lr
 8002d06:	bf00      	nop
 8002d08:	40010414 	.word	0x40010414

08002d0c <GPIO_Init>:
 8002d0c:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002d0e:	bf00      	nop
 8002d10:	bf00      	nop
 8002d12:	bf00      	nop
 8002d14:	bf00      	nop
 8002d16:	2300      	movs	r3, #0
 8002d18:	680e      	ldr	r6, [r1, #0]
 8002d1a:	461c      	mov	r4, r3
 8002d1c:	2501      	movs	r5, #1
 8002d1e:	40a5      	lsls	r5, r4
 8002d20:	ea05 0e06 	and.w	lr, r5, r6
 8002d24:	45ae      	cmp	lr, r5
 8002d26:	d12d      	bne.n	8002d84 <GPIO_Init+0x78>
 8002d28:	790f      	ldrb	r7, [r1, #4]
 8002d2a:	1e7a      	subs	r2, r7, #1
 8002d2c:	2a01      	cmp	r2, #1
 8002d2e:	d817      	bhi.n	8002d60 <GPIO_Init+0x54>
 8002d30:	bf00      	nop
 8002d32:	2203      	movs	r2, #3
 8002d34:	6885      	ldr	r5, [r0, #8]
 8002d36:	409a      	lsls	r2, r3
 8002d38:	ea25 0202 	bic.w	r2, r5, r2
 8002d3c:	6082      	str	r2, [r0, #8]
 8002d3e:	794d      	ldrb	r5, [r1, #5]
 8002d40:	6882      	ldr	r2, [r0, #8]
 8002d42:	409d      	lsls	r5, r3
 8002d44:	4315      	orrs	r5, r2
 8002d46:	6085      	str	r5, [r0, #8]
 8002d48:	bf00      	nop
 8002d4a:	8882      	ldrh	r2, [r0, #4]
 8002d4c:	b292      	uxth	r2, r2
 8002d4e:	ea22 020e 	bic.w	r2, r2, lr
 8002d52:	8082      	strh	r2, [r0, #4]
 8002d54:	798a      	ldrb	r2, [r1, #6]
 8002d56:	8885      	ldrh	r5, [r0, #4]
 8002d58:	40a2      	lsls	r2, r4
 8002d5a:	432a      	orrs	r2, r5
 8002d5c:	b292      	uxth	r2, r2
 8002d5e:	8082      	strh	r2, [r0, #4]
 8002d60:	2203      	movs	r2, #3
 8002d62:	6805      	ldr	r5, [r0, #0]
 8002d64:	409a      	lsls	r2, r3
 8002d66:	43d2      	mvns	r2, r2
 8002d68:	4015      	ands	r5, r2
 8002d6a:	6005      	str	r5, [r0, #0]
 8002d6c:	6805      	ldr	r5, [r0, #0]
 8002d6e:	409f      	lsls	r7, r3
 8002d70:	432f      	orrs	r7, r5
 8002d72:	6007      	str	r7, [r0, #0]
 8002d74:	68c7      	ldr	r7, [r0, #12]
 8002d76:	4017      	ands	r7, r2
 8002d78:	79ca      	ldrb	r2, [r1, #7]
 8002d7a:	fa02 f503 	lsl.w	r5, r2, r3
 8002d7e:	ea47 0205 	orr.w	r2, r7, r5
 8002d82:	60c2      	str	r2, [r0, #12]
 8002d84:	3401      	adds	r4, #1
 8002d86:	2c10      	cmp	r4, #16
 8002d88:	f103 0302 	add.w	r3, r3, #2
 8002d8c:	d1c6      	bne.n	8002d1c <GPIO_Init+0x10>
 8002d8e:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002d90 <GPIO_SetBits>:
 8002d90:	bf00      	nop
 8002d92:	bf00      	nop
 8002d94:	6181      	str	r1, [r0, #24]
 8002d96:	4770      	bx	lr

08002d98 <GPIO_ResetBits>:
 8002d98:	bf00      	nop
 8002d9a:	bf00      	nop
 8002d9c:	8501      	strh	r1, [r0, #40]	; 0x28
 8002d9e:	4770      	bx	lr

08002da0 <GPIO_PinAFConfig>:
 8002da0:	b510      	push	{r4, lr}
 8002da2:	bf00      	nop
 8002da4:	bf00      	nop
 8002da6:	bf00      	nop
 8002da8:	f001 0307 	and.w	r3, r1, #7
 8002dac:	08c9      	lsrs	r1, r1, #3
 8002dae:	eb00 0081 	add.w	r0, r0, r1, lsl #2
 8002db2:	009b      	lsls	r3, r3, #2
 8002db4:	6a04      	ldr	r4, [r0, #32]
 8002db6:	210f      	movs	r1, #15
 8002db8:	4099      	lsls	r1, r3
 8002dba:	ea24 0101 	bic.w	r1, r4, r1
 8002dbe:	6201      	str	r1, [r0, #32]
 8002dc0:	6a01      	ldr	r1, [r0, #32]
 8002dc2:	409a      	lsls	r2, r3
 8002dc4:	430a      	orrs	r2, r1
 8002dc6:	6202      	str	r2, [r0, #32]
 8002dc8:	bd10      	pop	{r4, pc}
	...

08002dcc <EXTI9_5_IRQHandler>:
 8002dcc:	4a03      	ldr	r2, [pc, #12]	; (8002ddc <EXTI9_5_IRQHandler+0x10>)
 8002dce:	6813      	ldr	r3, [r2, #0]
 8002dd0:	2006      	movs	r0, #6
 8002dd2:	3301      	adds	r3, #1
 8002dd4:	6013      	str	r3, [r2, #0]
 8002dd6:	f7ff bf8d 	b.w	8002cf4 <EXTI_ClearITPendingBit>
 8002dda:	bf00      	nop
 8002ddc:	20001094 	.word	0x20001094

08002de0 <EXTI15_10_IRQHandler>:
 8002de0:	4a03      	ldr	r2, [pc, #12]	; (8002df0 <EXTI15_10_IRQHandler+0x10>)
 8002de2:	6813      	ldr	r3, [r2, #0]
 8002de4:	200c      	movs	r0, #12
 8002de6:	3301      	adds	r3, #1
 8002de8:	6013      	str	r3, [r2, #0]
 8002dea:	f7ff bf83 	b.w	8002cf4 <EXTI_ClearITPendingBit>
 8002dee:	bf00      	nop
 8002df0:	2000108c 	.word	0x2000108c

08002df4 <led_on>:
 8002df4:	0403      	lsls	r3, r0, #16
 8002df6:	bf42      	ittt	mi
 8002df8:	4b02      	ldrmi	r3, [pc, #8]	; (8002e04 <led_on+0x10>)
 8002dfa:	f44f 4200 	movmi.w	r2, #32768	; 0x8000
 8002dfe:	619a      	strmi	r2, [r3, #24]
 8002e00:	4770      	bx	lr
 8002e02:	bf00      	nop
 8002e04:	48000400 	.word	0x48000400

08002e08 <led_off>:
 8002e08:	0403      	lsls	r3, r0, #16
 8002e0a:	bf42      	ittt	mi
 8002e0c:	4b02      	ldrmi	r3, [pc, #8]	; (8002e18 <led_off+0x10>)
 8002e0e:	f44f 4200 	movmi.w	r2, #32768	; 0x8000
 8002e12:	851a      	strhmi	r2, [r3, #40]	; 0x28
 8002e14:	4770      	bx	lr
 8002e16:	bf00      	nop
 8002e18:	48000400 	.word	0x48000400

08002e1c <get_key>:
 8002e1c:	4b02      	ldr	r3, [pc, #8]	; (8002e28 <get_key+0xc>)
 8002e1e:	8a18      	ldrh	r0, [r3, #16]
 8002e20:	43c0      	mvns	r0, r0
 8002e22:	f400 5080 	and.w	r0, r0, #4096	; 0x1000
 8002e26:	4770      	bx	lr
 8002e28:	48000400 	.word	0x48000400

08002e2c <left_encoder_read>:
 8002e2c:	b082      	sub	sp, #8
 8002e2e:	b672      	cpsid	i
 8002e30:	4b06      	ldr	r3, [pc, #24]	; (8002e4c <left_encoder_read+0x20>)
 8002e32:	681b      	ldr	r3, [r3, #0]
 8002e34:	9301      	str	r3, [sp, #4]
 8002e36:	b662      	cpsie	i
 8002e38:	9801      	ldr	r0, [sp, #4]
 8002e3a:	f240 23ee 	movw	r3, #750	; 0x2ee
 8002e3e:	4343      	muls	r3, r0
 8002e40:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 8002e44:	fbb3 f0f0 	udiv	r0, r3, r0
 8002e48:	b002      	add	sp, #8
 8002e4a:	4770      	bx	lr
 8002e4c:	20001094 	.word	0x20001094

08002e50 <right_encoder_read>:
 8002e50:	b082      	sub	sp, #8
 8002e52:	b672      	cpsid	i
 8002e54:	4b06      	ldr	r3, [pc, #24]	; (8002e70 <right_encoder_read+0x20>)
 8002e56:	681b      	ldr	r3, [r3, #0]
 8002e58:	9301      	str	r3, [sp, #4]
 8002e5a:	b662      	cpsie	i
 8002e5c:	9801      	ldr	r0, [sp, #4]
 8002e5e:	f240 23ee 	movw	r3, #750	; 0x2ee
 8002e62:	4343      	muls	r3, r0
 8002e64:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 8002e68:	fbb3 f0f0 	udiv	r0, r3, r0
 8002e6c:	b002      	add	sp, #8
 8002e6e:	4770      	bx	lr
 8002e70:	2000108c 	.word	0x2000108c

08002e74 <encoder_get_distance>:
 8002e74:	b510      	push	{r4, lr}
 8002e76:	f7ff ffd9 	bl	8002e2c <left_encoder_read>
 8002e7a:	4604      	mov	r4, r0
 8002e7c:	f7ff ffe8 	bl	8002e50 <right_encoder_read>
 8002e80:	4420      	add	r0, r4
 8002e82:	0840      	lsrs	r0, r0, #1
 8002e84:	bd10      	pop	{r4, pc}
	...

08002e88 <encoder_reset>:
 8002e88:	b672      	cpsid	i
 8002e8a:	4a03      	ldr	r2, [pc, #12]	; (8002e98 <encoder_reset+0x10>)
 8002e8c:	2300      	movs	r3, #0
 8002e8e:	6013      	str	r3, [r2, #0]
 8002e90:	4a02      	ldr	r2, [pc, #8]	; (8002e9c <encoder_reset+0x14>)
 8002e92:	6013      	str	r3, [r2, #0]
 8002e94:	b662      	cpsie	i
 8002e96:	4770      	bx	lr
 8002e98:	20001094 	.word	0x20001094
 8002e9c:	2000108c 	.word	0x2000108c

08002ea0 <gpio_init>:
 8002ea0:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8002ea4:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 8002ea8:	b087      	sub	sp, #28
 8002eaa:	2101      	movs	r1, #1
 8002eac:	f7ff f886 	bl	8001fbc <RCC_AHBPeriphClockCmd>
 8002eb0:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 8002eb4:	2101      	movs	r1, #1
 8002eb6:	f7ff f881 	bl	8001fbc <RCC_AHBPeriphClockCmd>
 8002eba:	f44f 2000 	mov.w	r0, #524288	; 0x80000
 8002ebe:	2101      	movs	r1, #1
 8002ec0:	f7ff f87c 	bl	8001fbc <RCC_AHBPeriphClockCmd>
 8002ec4:	2400      	movs	r4, #0
 8002ec6:	2603      	movs	r6, #3
 8002ec8:	f44f 4500 	mov.w	r5, #32768	; 0x8000
 8002ecc:	f04f 0801 	mov.w	r8, #1
 8002ed0:	a902      	add	r1, sp, #8
 8002ed2:	4846      	ldr	r0, [pc, #280]	; (8002fec <gpio_init+0x14c>)
 8002ed4:	9502      	str	r5, [sp, #8]
 8002ed6:	f88d 800c 	strb.w	r8, [sp, #12]
 8002eda:	f88d 400e 	strb.w	r4, [sp, #14]
 8002ede:	f88d 600d 	strb.w	r6, [sp, #13]
 8002ee2:	f88d 400f 	strb.w	r4, [sp, #15]
 8002ee6:	f7ff ff11 	bl	8002d0c <GPIO_Init>
 8002eea:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8002eee:	a902      	add	r1, sp, #8
 8002ef0:	483e      	ldr	r0, [pc, #248]	; (8002fec <gpio_init+0x14c>)
 8002ef2:	9302      	str	r3, [sp, #8]
 8002ef4:	f88d 400c 	strb.w	r4, [sp, #12]
 8002ef8:	f88d 600d 	strb.w	r6, [sp, #13]
 8002efc:	f88d 400f 	strb.w	r4, [sp, #15]
 8002f00:	4f3b      	ldr	r7, [pc, #236]	; (8002ff0 <gpio_init+0x150>)
 8002f02:	f7ff ff03 	bl	8002d0c <GPIO_Init>
 8002f06:	f44f 6380 	mov.w	r3, #1024	; 0x400
 8002f0a:	9302      	str	r3, [sp, #8]
 8002f0c:	a902      	add	r1, sp, #8
 8002f0e:	2302      	movs	r3, #2
 8002f10:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8002f14:	603c      	str	r4, [r7, #0]
 8002f16:	f88d 400c 	strb.w	r4, [sp, #12]
 8002f1a:	f88d 600d 	strb.w	r6, [sp, #13]
 8002f1e:	f88d 300f 	strb.w	r3, [sp, #15]
 8002f22:	f7ff fef3 	bl	8002d0c <GPIO_Init>
 8002f26:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8002f2a:	2401      	movs	r4, #1
 8002f2c:	8a1b      	ldrh	r3, [r3, #16]
 8002f2e:	4831      	ldr	r0, [pc, #196]	; (8002ff4 <gpio_init+0x154>)
 8002f30:	055b      	lsls	r3, r3, #21
 8002f32:	4b2e      	ldr	r3, [pc, #184]	; (8002fec <gpio_init+0x14c>)
 8002f34:	bf48      	it	mi
 8002f36:	f8c7 8000 	strmi.w	r8, [r7]
 8002f3a:	2600      	movs	r6, #0
 8002f3c:	619d      	str	r5, [r3, #24]
 8002f3e:	a902      	add	r1, sp, #8
 8002f40:	f44f 5382 	mov.w	r3, #4160	; 0x1040
 8002f44:	9302      	str	r3, [sp, #8]
 8002f46:	f88d 600c 	strb.w	r6, [sp, #12]
 8002f4a:	f88d 400f 	strb.w	r4, [sp, #15]
 8002f4e:	f7ff fedd 	bl	8002d0c <GPIO_Init>
 8002f52:	4620      	mov	r0, r4
 8002f54:	4621      	mov	r1, r4
 8002f56:	f7ff f83f 	bl	8001fd8 <RCC_APB2PeriphClockCmd>
 8002f5a:	f04f 0910 	mov.w	r9, #16
 8002f5e:	2106      	movs	r1, #6
 8002f60:	2002      	movs	r0, #2
 8002f62:	f000 f88d 	bl	8003080 <SYSCFG_EXTILineConfig>
 8002f66:	f04f 0806 	mov.w	r8, #6
 8002f6a:	eb0d 0009 	add.w	r0, sp, r9
 8002f6e:	250f      	movs	r5, #15
 8002f70:	f8cd 8010 	str.w	r8, [sp, #16]
 8002f74:	f88d 6014 	strb.w	r6, [sp, #20]
 8002f78:	f88d 9015 	strb.w	r9, [sp, #21]
 8002f7c:	f88d 4016 	strb.w	r4, [sp, #22]
 8002f80:	f7ff fe32 	bl	8002be8 <EXTI_Init>
 8002f84:	2317      	movs	r3, #23
 8002f86:	a801      	add	r0, sp, #4
 8002f88:	f88d 3004 	strb.w	r3, [sp, #4]
 8002f8c:	f88d 5005 	strb.w	r5, [sp, #5]
 8002f90:	f88d 5006 	strb.w	r5, [sp, #6]
 8002f94:	f88d 4007 	strb.w	r4, [sp, #7]
 8002f98:	f7ff fdda 	bl	8002b50 <NVIC_Init>
 8002f9c:	210c      	movs	r1, #12
 8002f9e:	2002      	movs	r0, #2
 8002fa0:	f000 f86e 	bl	8003080 <SYSCFG_EXTILineConfig>
 8002fa4:	270c      	movs	r7, #12
 8002fa6:	eb0d 0009 	add.w	r0, sp, r9
 8002faa:	9704      	str	r7, [sp, #16]
 8002fac:	f88d 6014 	strb.w	r6, [sp, #20]
 8002fb0:	f88d 9015 	strb.w	r9, [sp, #21]
 8002fb4:	f88d 4016 	strb.w	r4, [sp, #22]
 8002fb8:	f7ff fe16 	bl	8002be8 <EXTI_Init>
 8002fbc:	2328      	movs	r3, #40	; 0x28
 8002fbe:	a801      	add	r0, sp, #4
 8002fc0:	f88d 3004 	strb.w	r3, [sp, #4]
 8002fc4:	f88d 5005 	strb.w	r5, [sp, #5]
 8002fc8:	f88d 5006 	strb.w	r5, [sp, #6]
 8002fcc:	f88d 4007 	strb.w	r4, [sp, #7]
 8002fd0:	f7ff fdbe 	bl	8002b50 <NVIC_Init>
 8002fd4:	4640      	mov	r0, r8
 8002fd6:	f7ff fe8d 	bl	8002cf4 <EXTI_ClearITPendingBit>
 8002fda:	4638      	mov	r0, r7
 8002fdc:	f7ff fe8a 	bl	8002cf4 <EXTI_ClearITPendingBit>
 8002fe0:	f7ff ff52 	bl	8002e88 <encoder_reset>
 8002fe4:	b007      	add	sp, #28
 8002fe6:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8002fea:	bf00      	nop
 8002fec:	48000400 	.word	0x48000400
 8002ff0:	20001090 	.word	0x20001090
 8002ff4:	48000800 	.word	0x48000800

08002ff8 <Default_Handler>:
 8002ff8:	4668      	mov	r0, sp
 8002ffa:	f020 0107 	bic.w	r1, r0, #7
 8002ffe:	468d      	mov	sp, r1
 8003000:	b501      	push	{r0, lr}
 8003002:	bf00      	nop
 8003004:	e8bd 4001 	ldmia.w	sp!, {r0, lr}
 8003008:	4685      	mov	sp, r0
 800300a:	4770      	bx	lr

0800300c <HardFault_Handler>:
 800300c:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8003010:	f7ff fef0 	bl	8002df4 <led_on>
 8003014:	4b06      	ldr	r3, [pc, #24]	; (8003030 <HardFault_Handler+0x24>)
 8003016:	3b01      	subs	r3, #1
 8003018:	d001      	beq.n	800301e <HardFault_Handler+0x12>
 800301a:	bf00      	nop
 800301c:	e7fb      	b.n	8003016 <HardFault_Handler+0xa>
 800301e:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8003022:	f7ff fef1 	bl	8002e08 <led_off>
 8003026:	4b02      	ldr	r3, [pc, #8]	; (8003030 <HardFault_Handler+0x24>)
 8003028:	3b01      	subs	r3, #1
 800302a:	d0ef      	beq.n	800300c <HardFault_Handler>
 800302c:	bf00      	nop
 800302e:	e7fb      	b.n	8003028 <HardFault_Handler+0x1c>
 8003030:	00989681 	.word	0x00989681

08003034 <_reset_init>:
 8003034:	490e      	ldr	r1, [pc, #56]	; (8003070 <_reset_init+0x3c>)
 8003036:	4b0f      	ldr	r3, [pc, #60]	; (8003074 <_reset_init+0x40>)
 8003038:	1a5b      	subs	r3, r3, r1
 800303a:	109b      	asrs	r3, r3, #2
 800303c:	2200      	movs	r2, #0
 800303e:	429a      	cmp	r2, r3
 8003040:	d006      	beq.n	8003050 <_reset_init+0x1c>
 8003042:	480d      	ldr	r0, [pc, #52]	; (8003078 <_reset_init+0x44>)
 8003044:	f850 0022 	ldr.w	r0, [r0, r2, lsl #2]
 8003048:	f841 0022 	str.w	r0, [r1, r2, lsl #2]
 800304c:	3201      	adds	r2, #1
 800304e:	e7f6      	b.n	800303e <_reset_init+0xa>
 8003050:	4a0a      	ldr	r2, [pc, #40]	; (800307c <_reset_init+0x48>)
 8003052:	f8d2 3088 	ldr.w	r3, [r2, #136]	; 0x88
 8003056:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
 800305a:	f8c2 3088 	str.w	r3, [r2, #136]	; 0x88
 800305e:	f502 720c 	add.w	r2, r2, #560	; 0x230
 8003062:	6853      	ldr	r3, [r2, #4]
 8003064:	f023 4340 	bic.w	r3, r3, #3221225472	; 0xc0000000
 8003068:	6053      	str	r3, [r2, #4]
 800306a:	f7fe be1d 	b.w	8001ca8 <main>
 800306e:	bf00      	nop
 8003070:	20000000 	.word	0x20000000
 8003074:	2000052c 	.word	0x2000052c
 8003078:	08004d30 	.word	0x08004d30
 800307c:	e000ed00 	.word	0xe000ed00

08003080 <SYSCFG_EXTILineConfig>:
 8003080:	b510      	push	{r4, lr}
 8003082:	bf00      	nop
 8003084:	bf00      	nop
 8003086:	f001 0303 	and.w	r3, r1, #3
 800308a:	f001 01fc 	and.w	r1, r1, #252	; 0xfc
 800308e:	f101 4180 	add.w	r1, r1, #1073741824	; 0x40000000
 8003092:	f501 3180 	add.w	r1, r1, #65536	; 0x10000
 8003096:	009b      	lsls	r3, r3, #2
 8003098:	688c      	ldr	r4, [r1, #8]
 800309a:	220f      	movs	r2, #15
 800309c:	409a      	lsls	r2, r3
 800309e:	ea24 0202 	bic.w	r2, r4, r2
 80030a2:	608a      	str	r2, [r1, #8]
 80030a4:	688a      	ldr	r2, [r1, #8]
 80030a6:	4098      	lsls	r0, r3
 80030a8:	4310      	orrs	r0, r2
 80030aa:	6088      	str	r0, [r1, #8]
 80030ac:	bd10      	pop	{r4, pc}
	...

080030b0 <selfrel_offset31>:
 80030b0:	e5903000 	ldr	r3, [r0]
 80030b4:	e3130101 	tst	r3, #1073741824	; 0x40000000
 80030b8:	13833102 	orrne	r3, r3, #-2147483648	; 0x80000000
 80030bc:	03c33102 	biceq	r3, r3, #-2147483648	; 0x80000000
 80030c0:	e0800003 	add	r0, r0, r3
 80030c4:	e12fff1e 	bx	lr

080030c8 <search_EIT_table>:
 80030c8:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80030cc:	e3510000 	cmp	r1, #0
 80030d0:	e24dd00c 	sub	sp, sp, #12
 80030d4:	0a000029 	beq	8003180 <search_EIT_table+0xb8>
 80030d8:	e2413001 	sub	r3, r1, #1
 80030dc:	e1a07002 	mov	r7, r2
 80030e0:	e1a05000 	mov	r5, r0
 80030e4:	e1a08003 	mov	r8, r3
 80030e8:	e3a06000 	mov	r6, #0
 80030ec:	e58d3004 	str	r3, [sp, #4]
 80030f0:	e0864008 	add	r4, r6, r8
 80030f4:	e0844fa4 	add	r4, r4, r4, lsr #31
 80030f8:	e1a040c4 	asr	r4, r4, #1
 80030fc:	e1a0a184 	lsl	sl, r4, #3
 8003100:	e085b00a 	add	fp, r5, sl
 8003104:	e1a0000b 	mov	r0, fp
 8003108:	ebffffe8 	bl	80030b0 <selfrel_offset31>
 800310c:	e59d3004 	ldr	r3, [sp, #4]
 8003110:	e1a09000 	mov	r9, r0
 8003114:	e1530004 	cmp	r3, r4
 8003118:	e28a0008 	add	r0, sl, #8
 800311c:	e0850000 	add	r0, r5, r0
 8003120:	0a00000b 	beq	8003154 <search_EIT_table+0x8c>
 8003124:	ebffffe1 	bl	80030b0 <selfrel_offset31>
 8003128:	e1590007 	cmp	r9, r7
 800312c:	e2400001 	sub	r0, r0, #1
 8003130:	9a000003 	bls	8003144 <search_EIT_table+0x7c>
 8003134:	e1540006 	cmp	r4, r6
 8003138:	0a00000b 	beq	800316c <search_EIT_table+0xa4>
 800313c:	e2448001 	sub	r8, r4, #1
 8003140:	eaffffea 	b	80030f0 <search_EIT_table+0x28>
 8003144:	e1500007 	cmp	r0, r7
 8003148:	2a000003 	bcs	800315c <search_EIT_table+0x94>
 800314c:	e2846001 	add	r6, r4, #1
 8003150:	eaffffe6 	b	80030f0 <search_EIT_table+0x28>
 8003154:	e1590007 	cmp	r9, r7
 8003158:	8afffff5 	bhi	8003134 <search_EIT_table+0x6c>
 800315c:	e1a0000b 	mov	r0, fp
 8003160:	e28dd00c 	add	sp, sp, #12
 8003164:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8003168:	e12fff1e 	bx	lr
 800316c:	e3a0b000 	mov	fp, #0
 8003170:	e1a0000b 	mov	r0, fp
 8003174:	e28dd00c 	add	sp, sp, #12
 8003178:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800317c:	e12fff1e 	bx	lr
 8003180:	e1a0b001 	mov	fp, r1
 8003184:	e1a0000b 	mov	r0, fp
 8003188:	e28dd00c 	add	sp, sp, #12
 800318c:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8003190:	e12fff1e 	bx	lr

08003194 <__gnu_unwind_get_pr_addr>:
 8003194:	e3500001 	cmp	r0, #1
 8003198:	0a000006 	beq	80031b8 <__gnu_unwind_get_pr_addr+0x24>
 800319c:	e3500002 	cmp	r0, #2
 80031a0:	0a000006 	beq	80031c0 <__gnu_unwind_get_pr_addr+0x2c>
 80031a4:	e59f301c 	ldr	r3, [pc, #28]	; 80031c8 <__gnu_unwind_get_pr_addr+0x34>
 80031a8:	e3500000 	cmp	r0, #0
 80031ac:	01a00003 	moveq	r0, r3
 80031b0:	13a00000 	movne	r0, #0
 80031b4:	e12fff1e 	bx	lr
 80031b8:	e59f000c 	ldr	r0, [pc, #12]	; 80031cc <__gnu_unwind_get_pr_addr+0x38>
 80031bc:	e12fff1e 	bx	lr
 80031c0:	e59f0008 	ldr	r0, [pc, #8]	; 80031d0 <__gnu_unwind_get_pr_addr+0x3c>
 80031c4:	e12fff1e 	bx	lr
 80031c8:	08003d3c 	.word	0x08003d3c
 80031cc:	08003d44 	.word	0x08003d44
 80031d0:	08003d4c 	.word	0x08003d4c

080031d4 <get_eit_entry>:
 80031d4:	e92d4030 	push	{r4, r5, lr}
 80031d8:	e59f3118 	ldr	r3, [pc, #280]	; 80032f8 <get_eit_entry+0x124>
 80031dc:	e3530000 	cmp	r3, #0
 80031e0:	e24dd00c 	sub	sp, sp, #12
 80031e4:	e1a04000 	mov	r4, r0
 80031e8:	e2415002 	sub	r5, r1, #2
 80031ec:	0a00002d 	beq	80032a8 <get_eit_entry+0xd4>
 80031f0:	e1a00005 	mov	r0, r5
 80031f4:	e28d1004 	add	r1, sp, #4
 80031f8:	e320f000 	nop	{0}
 80031fc:	e3500000 	cmp	r0, #0
 8003200:	0a000021 	beq	800328c <get_eit_entry+0xb8>
 8003204:	e59d1004 	ldr	r1, [sp, #4]
 8003208:	e1a02005 	mov	r2, r5
 800320c:	ebffffad 	bl	80030c8 <search_EIT_table>
 8003210:	e2505000 	subs	r5, r0, #0
 8003214:	0a00001c 	beq	800328c <get_eit_entry+0xb8>
 8003218:	ebffffa4 	bl	80030b0 <selfrel_offset31>
 800321c:	e5953004 	ldr	r3, [r5, #4]
 8003220:	e3530001 	cmp	r3, #1
 8003224:	e5840048 	str	r0, [r4, #72]	; 0x48
 8003228:	0a000010 	beq	8003270 <get_eit_entry+0x9c>
 800322c:	e3530000 	cmp	r3, #0
 8003230:	ba000023 	blt	80032c4 <get_eit_entry+0xf0>
 8003234:	e2850004 	add	r0, r5, #4
 8003238:	ebffff9c 	bl	80030b0 <selfrel_offset31>
 800323c:	e3a03000 	mov	r3, #0
 8003240:	e584004c 	str	r0, [r4, #76]	; 0x4c
 8003244:	e5843050 	str	r3, [r4, #80]	; 0x50
 8003248:	e5903000 	ldr	r3, [r0]
 800324c:	e3530000 	cmp	r3, #0
 8003250:	ba000020 	blt	80032d8 <get_eit_entry+0x104>
 8003254:	ebffff95 	bl	80030b0 <selfrel_offset31>
 8003258:	e3a03000 	mov	r3, #0
 800325c:	e5840010 	str	r0, [r4, #16]
 8003260:	e1a00003 	mov	r0, r3
 8003264:	e28dd00c 	add	sp, sp, #12
 8003268:	e8bd4030 	pop	{r4, r5, lr}
 800326c:	e12fff1e 	bx	lr
 8003270:	e3a03005 	mov	r3, #5
 8003274:	e3a02000 	mov	r2, #0
 8003278:	e1a00003 	mov	r0, r3
 800327c:	e5842010 	str	r2, [r4, #16]
 8003280:	e28dd00c 	add	sp, sp, #12
 8003284:	e8bd4030 	pop	{r4, r5, lr}
 8003288:	e12fff1e 	bx	lr
 800328c:	e3a03009 	mov	r3, #9
 8003290:	e3a02000 	mov	r2, #0
 8003294:	e1a00003 	mov	r0, r3
 8003298:	e5842010 	str	r2, [r4, #16]
 800329c:	e28dd00c 	add	sp, sp, #12
 80032a0:	e8bd4030 	pop	{r4, r5, lr}
 80032a4:	e12fff1e 	bx	lr
 80032a8:	e59f104c 	ldr	r1, [pc, #76]	; 80032fc <get_eit_entry+0x128>
 80032ac:	e59f304c 	ldr	r3, [pc, #76]	; 8003300 <get_eit_entry+0x12c>
 80032b0:	e1a00001 	mov	r0, r1
 80032b4:	e0611003 	rsb	r1, r1, r3
 80032b8:	e1a011c1 	asr	r1, r1, #3
 80032bc:	e58d1004 	str	r1, [sp, #4]
 80032c0:	eaffffd0 	b	8003208 <get_eit_entry+0x34>
 80032c4:	e3a03001 	mov	r3, #1
 80032c8:	e2850004 	add	r0, r5, #4
 80032cc:	e584004c 	str	r0, [r4, #76]	; 0x4c
 80032d0:	e5843050 	str	r3, [r4, #80]	; 0x50
 80032d4:	eaffffdb 	b	8003248 <get_eit_entry+0x74>
 80032d8:	e1a00c23 	lsr	r0, r3, #24
 80032dc:	e200000f 	and	r0, r0, #15
 80032e0:	ebffffab 	bl	8003194 <__gnu_unwind_get_pr_addr>
 80032e4:	e3500000 	cmp	r0, #0
 80032e8:	e5840010 	str	r0, [r4, #16]
 80032ec:	03a03009 	moveq	r3, #9
 80032f0:	13a03000 	movne	r3, #0
 80032f4:	eaffffd9 	b	8003260 <get_eit_entry+0x8c>
 80032f8:	00000000 	.word	0x00000000
 80032fc:	08004bb0 	.word	0x08004bb0
 8003300:	08004d30 	.word	0x08004d30

08003304 <restore_non_core_regs>:
 8003304:	e5903000 	ldr	r3, [r0]
 8003308:	e3130001 	tst	r3, #1
 800330c:	e92d4010 	push	{r4, lr}
 8003310:	e1a04000 	mov	r4, r0
 8003314:	1a000004 	bne	800332c <restore_non_core_regs+0x28>
 8003318:	e3130002 	tst	r3, #2
 800331c:	e2800048 	add	r0, r0, #72	; 0x48
 8003320:	0a00000a 	beq	8003350 <restore_non_core_regs+0x4c>
 8003324:	eb0003a2 	bl	80041b4 <__gnu_Unwind_Restore_VFP_D>
 8003328:	e5943000 	ldr	r3, [r4]
 800332c:	e3130004 	tst	r3, #4
 8003330:	0a00000a 	beq	8003360 <restore_non_core_regs+0x5c>
 8003334:	e3130008 	tst	r3, #8
 8003338:	0a00000d 	beq	8003374 <restore_non_core_regs+0x70>
 800333c:	e3130010 	tst	r3, #16
 8003340:	02840e1d 	addeq	r0, r4, #464	; 0x1d0
 8003344:	0b0003c4 	bleq	800425c <__gnu_Unwind_Restore_WMMXC>
 8003348:	e8bd4010 	pop	{r4, lr}
 800334c:	e12fff1e 	bx	lr
 8003350:	eb000393 	bl	80041a4 <__gnu_Unwind_Restore_VFP>
 8003354:	e5943000 	ldr	r3, [r4]
 8003358:	e3130004 	tst	r3, #4
 800335c:	1afffff4 	bne	8003334 <restore_non_core_regs+0x30>
 8003360:	e28400d0 	add	r0, r4, #208	; 0xd0
 8003364:	eb000396 	bl	80041c4 <__gnu_Unwind_Restore_VFP_D_16_to_31>
 8003368:	e5943000 	ldr	r3, [r4]
 800336c:	e3130008 	tst	r3, #8
 8003370:	1afffff1 	bne	800333c <restore_non_core_regs+0x38>
 8003374:	e2840e15 	add	r0, r4, #336	; 0x150
 8003378:	eb000395 	bl	80041d4 <__gnu_Unwind_Restore_WMMXD>
 800337c:	e5943000 	ldr	r3, [r4]
 8003380:	eaffffed 	b	800333c <restore_non_core_regs+0x38>

08003384 <_Unwind_decode_typeinfo_ptr.isra.0>:
 8003384:	e5903000 	ldr	r3, [r0]
 8003388:	e3530000 	cmp	r3, #0
 800338c:	10830000 	addne	r0, r3, r0
 8003390:	01a00003 	moveq	r0, r3
 8003394:	e12fff1e 	bx	lr

08003398 <__gnu_unwind_24bit.isra.1>:
 8003398:	e3a00009 	mov	r0, #9
 800339c:	e12fff1e 	bx	lr

080033a0 <_Unwind_DebugHook>:
 80033a0:	e12fff1e 	bx	lr

080033a4 <unwind_phase2>:
 80033a4:	e92d4070 	push	{r4, r5, r6, lr}
 80033a8:	e1a04000 	mov	r4, r0
 80033ac:	e1a05001 	mov	r5, r1
 80033b0:	ea000009 	b	80033dc <unwind_phase2+0x38>
 80033b4:	e5953040 	ldr	r3, [r5, #64]	; 0x40
 80033b8:	e3a00001 	mov	r0, #1
 80033bc:	e5843014 	str	r3, [r4, #20]
 80033c0:	e1a01004 	mov	r1, r4
 80033c4:	e1a02005 	mov	r2, r5
 80033c8:	e594c010 	ldr	ip, [r4, #16]
 80033cc:	e1a0e00f 	mov	lr, pc
 80033d0:	e12fff1c 	bx	ip
 80033d4:	e3500008 	cmp	r0, #8
 80033d8:	1a000005 	bne	80033f4 <unwind_phase2+0x50>
 80033dc:	e1a00004 	mov	r0, r4
 80033e0:	e5951040 	ldr	r1, [r5, #64]	; 0x40
 80033e4:	ebffff7a 	bl	80031d4 <get_eit_entry>
 80033e8:	e2506000 	subs	r6, r0, #0
 80033ec:	0afffff0 	beq	80033b4 <unwind_phase2+0x10>
 80033f0:	eb000509 	bl	800481c <abort>
 80033f4:	e3500007 	cmp	r0, #7
 80033f8:	1afffffc 	bne	80033f0 <unwind_phase2+0x4c>
 80033fc:	e1a00006 	mov	r0, r6
 8003400:	e5951040 	ldr	r1, [r5, #64]	; 0x40
 8003404:	ebffffe5 	bl	80033a0 <_Unwind_DebugHook>
 8003408:	e2850004 	add	r0, r5, #4
 800340c:	eb00035d 	bl	8004188 <__restore_core_regs>

08003410 <unwind_phase2_forced>:
 8003410:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
 8003414:	e1a05000 	mov	r5, r0
 8003418:	e1a06002 	mov	r6, r2
 800341c:	e3a04000 	mov	r4, #0
 8003420:	e281e004 	add	lr, r1, #4
 8003424:	e24ddff2 	sub	sp, sp, #968	; 0x3c8
 8003428:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
 800342c:	e28dc00c 	add	ip, sp, #12
 8003430:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
 8003434:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
 8003438:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
 800343c:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
 8003440:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
 8003444:	e89e000f 	ldm	lr, {r0, r1, r2, r3}
 8003448:	e1560004 	cmp	r6, r4
 800344c:	e595800c 	ldr	r8, [r5, #12]
 8003450:	e5959018 	ldr	r9, [r5, #24]
 8003454:	e88c000f 	stm	ip, {r0, r1, r2, r3}
 8003458:	e1a00005 	mov	r0, r5
 800345c:	e59d1048 	ldr	r1, [sp, #72]	; 0x48
 8003460:	e58d4008 	str	r4, [sp, #8]
 8003464:	03a06009 	moveq	r6, #9
 8003468:	13a0600a 	movne	r6, #10
 800346c:	ebffff58 	bl	80031d4 <get_eit_entry>
 8003470:	e1a04000 	mov	r4, r0
 8003474:	e28d7008 	add	r7, sp, #8
 8003478:	e3540000 	cmp	r4, #0
 800347c:	0a00000e 	beq	80034bc <unwind_phase2_forced+0xac>
 8003480:	e59d3040 	ldr	r3, [sp, #64]	; 0x40
 8003484:	e88d0280 	stm	sp, {r7, r9}
 8003488:	e58d304c 	str	r3, [sp, #76]	; 0x4c
 800348c:	e3861010 	orr	r1, r6, #16
 8003490:	e3a00001 	mov	r0, #1
 8003494:	e1a02005 	mov	r2, r5
 8003498:	e1a03005 	mov	r3, r5
 800349c:	e1a0e00f 	mov	lr, pc
 80034a0:	e12fff18 	bx	r8
 80034a4:	e3500000 	cmp	r0, #0
 80034a8:	1a000029 	bne	8003554 <unwind_phase2_forced+0x144>
 80034ac:	e1a00004 	mov	r0, r4
 80034b0:	e28ddff2 	add	sp, sp, #968	; 0x3c8
 80034b4:	e8bd47f0 	pop	{r4, r5, r6, r7, r8, r9, sl, lr}
 80034b8:	e12fff1e 	bx	lr
 80034bc:	e59d3048 	ldr	r3, [sp, #72]	; 0x48
 80034c0:	e1a01007 	mov	r1, r7
 80034c4:	e5853014 	str	r3, [r5, #20]
 80034c8:	e3a02e1e 	mov	r2, #480	; 0x1e0
 80034cc:	e28d0f7a 	add	r0, sp, #488	; 0x1e8
 80034d0:	eb0004d6 	bl	8004830 <memcpy>
 80034d4:	e1a01005 	mov	r1, r5
 80034d8:	e28d2f7a 	add	r2, sp, #488	; 0x1e8
 80034dc:	e1a00006 	mov	r0, r6
 80034e0:	e595c010 	ldr	ip, [r5, #16]
 80034e4:	e1a0e00f 	mov	lr, pc
 80034e8:	e12fff1c 	bx	ip
 80034ec:	e59d3220 	ldr	r3, [sp, #544]	; 0x220
 80034f0:	e1a0a000 	mov	sl, r0
 80034f4:	e58d304c 	str	r3, [sp, #76]	; 0x4c
 80034f8:	e88d0280 	stm	sp, {r7, r9}
 80034fc:	e1a01006 	mov	r1, r6
 8003500:	e3a00001 	mov	r0, #1
 8003504:	e1a02005 	mov	r2, r5
 8003508:	e1a03005 	mov	r3, r5
 800350c:	e1a0e00f 	mov	lr, pc
 8003510:	e12fff18 	bx	r8
 8003514:	e3500000 	cmp	r0, #0
 8003518:	1a00000d 	bne	8003554 <unwind_phase2_forced+0x144>
 800351c:	e1a00007 	mov	r0, r7
 8003520:	e28d1f7a 	add	r1, sp, #488	; 0x1e8
 8003524:	e3a02e1e 	mov	r2, #480	; 0x1e0
 8003528:	eb0004c0 	bl	8004830 <memcpy>
 800352c:	e35a0008 	cmp	sl, #8
 8003530:	1a000005 	bne	800354c <unwind_phase2_forced+0x13c>
 8003534:	e1a00005 	mov	r0, r5
 8003538:	e59d1048 	ldr	r1, [sp, #72]	; 0x48
 800353c:	ebffff24 	bl	80031d4 <get_eit_entry>
 8003540:	e3a06009 	mov	r6, #9
 8003544:	e1a04000 	mov	r4, r0
 8003548:	eaffffca 	b	8003478 <unwind_phase2_forced+0x68>
 800354c:	e35a0007 	cmp	sl, #7
 8003550:	0a000003 	beq	8003564 <unwind_phase2_forced+0x154>
 8003554:	e3a00009 	mov	r0, #9
 8003558:	e28ddff2 	add	sp, sp, #968	; 0x3c8
 800355c:	e8bd47f0 	pop	{r4, r5, r6, r7, r8, r9, sl, lr}
 8003560:	e12fff1e 	bx	lr
 8003564:	e1a00004 	mov	r0, r4
 8003568:	e59d1048 	ldr	r1, [sp, #72]	; 0x48
 800356c:	ebffff8b 	bl	80033a0 <_Unwind_DebugHook>
 8003570:	e28d000c 	add	r0, sp, #12
 8003574:	eb000303 	bl	8004188 <__restore_core_regs>

08003578 <_Unwind_GetCFA>:
 8003578:	e5900044 	ldr	r0, [r0, #68]	; 0x44
 800357c:	e12fff1e 	bx	lr

08003580 <__gnu_Unwind_RaiseException>:
 8003580:	e92d40f0 	push	{r4, r5, r6, r7, lr}
 8003584:	e3e05000 	mvn	r5, #0
 8003588:	e591303c 	ldr	r3, [r1, #60]	; 0x3c
 800358c:	e5813040 	str	r3, [r1, #64]	; 0x40
 8003590:	e281e004 	add	lr, r1, #4
 8003594:	e24ddf79 	sub	sp, sp, #484	; 0x1e4
 8003598:	e1a07001 	mov	r7, r1
 800359c:	e1a04000 	mov	r4, r0
 80035a0:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
 80035a4:	e28dc004 	add	ip, sp, #4
 80035a8:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
 80035ac:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
 80035b0:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
 80035b4:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
 80035b8:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
 80035bc:	e89e000f 	ldm	lr, {r0, r1, r2, r3}
 80035c0:	e28d6e1e 	add	r6, sp, #480	; 0x1e0
 80035c4:	e88c000f 	stm	ip, {r0, r1, r2, r3}
 80035c8:	e52651e0 	str	r5, [r6, #-480]!	; 0xfffffe20
 80035cc:	ea000007 	b	80035f0 <__gnu_Unwind_RaiseException+0x70>
 80035d0:	e1a01004 	mov	r1, r4
 80035d4:	e1a02006 	mov	r2, r6
 80035d8:	e594c010 	ldr	ip, [r4, #16]
 80035dc:	e1a0e00f 	mov	lr, pc
 80035e0:	e12fff1c 	bx	ip
 80035e4:	e3500008 	cmp	r0, #8
 80035e8:	e1a05000 	mov	r5, r0
 80035ec:	1a000008 	bne	8003614 <__gnu_Unwind_RaiseException+0x94>
 80035f0:	e1a00004 	mov	r0, r4
 80035f4:	e59d1040 	ldr	r1, [sp, #64]	; 0x40
 80035f8:	ebfffef5 	bl	80031d4 <get_eit_entry>
 80035fc:	e3500000 	cmp	r0, #0
 8003600:	0afffff2 	beq	80035d0 <__gnu_Unwind_RaiseException+0x50>
 8003604:	e3a00009 	mov	r0, #9
 8003608:	e28ddf79 	add	sp, sp, #484	; 0x1e4
 800360c:	e8bd40f0 	pop	{r4, r5, r6, r7, lr}
 8003610:	e12fff1e 	bx	lr
 8003614:	e1a00006 	mov	r0, r6
 8003618:	ebffff39 	bl	8003304 <restore_non_core_regs>
 800361c:	e3550006 	cmp	r5, #6
 8003620:	1afffff7 	bne	8003604 <__gnu_Unwind_RaiseException+0x84>
 8003624:	e1a00004 	mov	r0, r4
 8003628:	e1a01007 	mov	r1, r7
 800362c:	ebffff5c 	bl	80033a4 <unwind_phase2>

08003630 <__gnu_Unwind_ForcedUnwind>:
 8003630:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 8003634:	e593e03c 	ldr	lr, [r3, #60]	; 0x3c
 8003638:	e580100c 	str	r1, [r0, #12]
 800363c:	e5802018 	str	r2, [r0, #24]
 8003640:	e1a01003 	mov	r1, r3
 8003644:	e583e040 	str	lr, [r3, #64]	; 0x40
 8003648:	e3a02000 	mov	r2, #0
 800364c:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 8003650:	eaffff6e 	b	8003410 <unwind_phase2_forced>

08003654 <__gnu_Unwind_Resume>:
 8003654:	e92d4070 	push	{r4, r5, r6, lr}
 8003658:	e590600c 	ldr	r6, [r0, #12]
 800365c:	e5903014 	ldr	r3, [r0, #20]
 8003660:	e3560000 	cmp	r6, #0
 8003664:	e1a04000 	mov	r4, r0
 8003668:	e1a05001 	mov	r5, r1
 800366c:	e5813040 	str	r3, [r1, #64]	; 0x40
 8003670:	0a000002 	beq	8003680 <__gnu_Unwind_Resume+0x2c>
 8003674:	e3a02001 	mov	r2, #1
 8003678:	ebffff64 	bl	8003410 <unwind_phase2_forced>
 800367c:	eb000466 	bl	800481c <abort>
 8003680:	e3a00002 	mov	r0, #2
 8003684:	e1a01004 	mov	r1, r4
 8003688:	e1a02005 	mov	r2, r5
 800368c:	e594c010 	ldr	ip, [r4, #16]
 8003690:	e1a0e00f 	mov	lr, pc
 8003694:	e12fff1c 	bx	ip
 8003698:	e3500007 	cmp	r0, #7
 800369c:	0a000004 	beq	80036b4 <__gnu_Unwind_Resume+0x60>
 80036a0:	e3500008 	cmp	r0, #8
 80036a4:	01a00004 	moveq	r0, r4
 80036a8:	01a01005 	moveq	r1, r5
 80036ac:	0bffff3c 	bleq	80033a4 <unwind_phase2>
 80036b0:	eb000459 	bl	800481c <abort>
 80036b4:	e1a00006 	mov	r0, r6
 80036b8:	e5951040 	ldr	r1, [r5, #64]	; 0x40
 80036bc:	ebffff37 	bl	80033a0 <_Unwind_DebugHook>
 80036c0:	e2850004 	add	r0, r5, #4
 80036c4:	eb0002af 	bl	8004188 <__restore_core_regs>

080036c8 <__gnu_Unwind_Resume_or_Rethrow>:
 80036c8:	e590300c 	ldr	r3, [r0, #12]
 80036cc:	e3530000 	cmp	r3, #0
 80036d0:	1591c03c 	ldrne	ip, [r1, #60]	; 0x3c
 80036d4:	13a02000 	movne	r2, #0
 80036d8:	1581c040 	strne	ip, [r1, #64]	; 0x40
 80036dc:	1affff4b 	bne	8003410 <unwind_phase2_forced>
 80036e0:	eaffffa6 	b	8003580 <__gnu_Unwind_RaiseException>

080036e4 <_Unwind_Complete>:
 80036e4:	e12fff1e 	bx	lr

080036e8 <_Unwind_DeleteException>:
 80036e8:	e5903008 	ldr	r3, [r0, #8]
 80036ec:	e3530000 	cmp	r3, #0
 80036f0:	012fff1e 	bxeq	lr
 80036f4:	e1a01000 	mov	r1, r0
 80036f8:	e3a00001 	mov	r0, #1
 80036fc:	e12fff13 	bx	r3

08003700 <_Unwind_VRS_Get>:
 8003700:	e3510004 	cmp	r1, #4
 8003704:	979ff101 	ldrls	pc, [pc, r1, lsl #2]
 8003708:	ea000009 	b	8003734 <_Unwind_VRS_Get+0x34>
 800370c:	08003720 	.word	0x08003720
 8003710:	0800373c 	.word	0x0800373c
 8003714:	08003734 	.word	0x08003734
 8003718:	0800373c 	.word	0x0800373c
 800371c:	0800373c 	.word	0x0800373c
 8003720:	e352000f 	cmp	r2, #15
 8003724:	93530000 	cmpls	r3, #0
 8003728:	13a03001 	movne	r3, #1
 800372c:	03a03000 	moveq	r3, #0
 8003730:	0a000003 	beq	8003744 <_Unwind_VRS_Get+0x44>
 8003734:	e3a00002 	mov	r0, #2
 8003738:	e12fff1e 	bx	lr
 800373c:	e3a00001 	mov	r0, #1
 8003740:	e12fff1e 	bx	lr
 8003744:	e0802102 	add	r2, r0, r2, lsl #2
 8003748:	e5922004 	ldr	r2, [r2, #4]
 800374c:	e1a00003 	mov	r0, r3
 8003750:	e59d3000 	ldr	r3, [sp]
 8003754:	e5832000 	str	r2, [r3]
 8003758:	e12fff1e 	bx	lr

0800375c <_Unwind_GetGR>:
 800375c:	e1a02001 	mov	r2, r1
 8003760:	e3a01000 	mov	r1, #0
 8003764:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 8003768:	e24dd014 	sub	sp, sp, #20
 800376c:	e28dc00c 	add	ip, sp, #12
 8003770:	e1a03001 	mov	r3, r1
 8003774:	e58dc000 	str	ip, [sp]
 8003778:	ebffffe0 	bl	8003700 <_Unwind_VRS_Get>
 800377c:	e59d000c 	ldr	r0, [sp, #12]
 8003780:	e28dd014 	add	sp, sp, #20
 8003784:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 8003788:	e12fff1e 	bx	lr

0800378c <_Unwind_VRS_Set>:
 800378c:	e3510004 	cmp	r1, #4
 8003790:	979ff101 	ldrls	pc, [pc, r1, lsl #2]
 8003794:	ea000009 	b	80037c0 <_Unwind_VRS_Set+0x34>
 8003798:	080037ac 	.word	0x080037ac
 800379c:	080037c8 	.word	0x080037c8
 80037a0:	080037c0 	.word	0x080037c0
 80037a4:	080037c8 	.word	0x080037c8
 80037a8:	080037c8 	.word	0x080037c8
 80037ac:	e352000f 	cmp	r2, #15
 80037b0:	93530000 	cmpls	r3, #0
 80037b4:	13a03001 	movne	r3, #1
 80037b8:	03a03000 	moveq	r3, #0
 80037bc:	0a000003 	beq	80037d0 <_Unwind_VRS_Set+0x44>
 80037c0:	e3a00002 	mov	r0, #2
 80037c4:	e12fff1e 	bx	lr
 80037c8:	e3a00001 	mov	r0, #1
 80037cc:	e12fff1e 	bx	lr
 80037d0:	e59d1000 	ldr	r1, [sp]
 80037d4:	e5911000 	ldr	r1, [r1]
 80037d8:	e0802102 	add	r2, r0, r2, lsl #2
 80037dc:	e5821004 	str	r1, [r2, #4]
 80037e0:	e1a00003 	mov	r0, r3
 80037e4:	e12fff1e 	bx	lr

080037e8 <_Unwind_SetGR>:
 80037e8:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 80037ec:	e1a0e001 	mov	lr, r1
 80037f0:	e3a01000 	mov	r1, #0
 80037f4:	e24dd014 	sub	sp, sp, #20
 80037f8:	e28dc010 	add	ip, sp, #16
 80037fc:	e52c2004 	str	r2, [ip, #-4]!
 8003800:	e1a03001 	mov	r3, r1
 8003804:	e58dc000 	str	ip, [sp]
 8003808:	e1a0200e 	mov	r2, lr
 800380c:	ebffffde 	bl	800378c <_Unwind_VRS_Set>
 8003810:	e28dd014 	add	sp, sp, #20
 8003814:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 8003818:	e12fff1e 	bx	lr

0800381c <__gnu_Unwind_Backtrace>:
 800381c:	e92d4070 	push	{r4, r5, r6, lr}
 8003820:	e3e04000 	mvn	r4, #0
 8003824:	e592303c 	ldr	r3, [r2, #60]	; 0x3c
 8003828:	e5823040 	str	r3, [r2, #64]	; 0x40
 800382c:	e282c004 	add	ip, r2, #4
 8003830:	e24ddf8e 	sub	sp, sp, #568	; 0x238
 8003834:	e1a06000 	mov	r6, r0
 8003838:	e1a05001 	mov	r5, r1
 800383c:	e8bc000f 	ldm	ip!, {r0, r1, r2, r3}
 8003840:	e28de05c 	add	lr, sp, #92	; 0x5c
 8003844:	e8ae000f 	stmia	lr!, {r0, r1, r2, r3}
 8003848:	e8bc000f 	ldm	ip!, {r0, r1, r2, r3}
 800384c:	e8ae000f 	stmia	lr!, {r0, r1, r2, r3}
 8003850:	e8bc000f 	ldm	ip!, {r0, r1, r2, r3}
 8003854:	e8ae000f 	stmia	lr!, {r0, r1, r2, r3}
 8003858:	e89c000f 	ldm	ip, {r0, r1, r2, r3}
 800385c:	e88e000f 	stm	lr, {r0, r1, r2, r3}
 8003860:	e58d4058 	str	r4, [sp, #88]	; 0x58
 8003864:	ea000013 	b	80038b8 <__gnu_Unwind_Backtrace+0x9c>
 8003868:	e28d0058 	add	r0, sp, #88	; 0x58
 800386c:	e3a0100c 	mov	r1, #12
 8003870:	e1a0200d 	mov	r2, sp
 8003874:	ebffffdb 	bl	80037e8 <_Unwind_SetGR>
 8003878:	e28d0058 	add	r0, sp, #88	; 0x58
 800387c:	e1a01005 	mov	r1, r5
 8003880:	e1a0e00f 	mov	lr, pc
 8003884:	e12fff16 	bx	r6
 8003888:	e3500000 	cmp	r0, #0
 800388c:	1a00000e 	bne	80038cc <__gnu_Unwind_Backtrace+0xb0>
 8003890:	e3a00008 	mov	r0, #8
 8003894:	e1a0100d 	mov	r1, sp
 8003898:	e28d2058 	add	r2, sp, #88	; 0x58
 800389c:	e59dc010 	ldr	ip, [sp, #16]
 80038a0:	e1a0e00f 	mov	lr, pc
 80038a4:	e12fff1c 	bx	ip
 80038a8:	e2403005 	sub	r3, r0, #5
 80038ac:	e31300fb 	tst	r3, #251	; 0xfb
 80038b0:	e1a04000 	mov	r4, r0
 80038b4:	0a000005 	beq	80038d0 <__gnu_Unwind_Backtrace+0xb4>
 80038b8:	e1a0000d 	mov	r0, sp
 80038bc:	e59d1098 	ldr	r1, [sp, #152]	; 0x98
 80038c0:	ebfffe43 	bl	80031d4 <get_eit_entry>
 80038c4:	e3500000 	cmp	r0, #0
 80038c8:	0affffe6 	beq	8003868 <__gnu_Unwind_Backtrace+0x4c>
 80038cc:	e3a04009 	mov	r4, #9
 80038d0:	e28d0058 	add	r0, sp, #88	; 0x58
 80038d4:	ebfffe8a 	bl	8003304 <restore_non_core_regs>
 80038d8:	e1a00004 	mov	r0, r4
 80038dc:	e28ddf8e 	add	sp, sp, #568	; 0x238
 80038e0:	e8bd4070 	pop	{r4, r5, r6, lr}
 80038e4:	e12fff1e 	bx	lr

080038e8 <__gnu_unwind_pr_common>:
 80038e8:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80038ec:	e591604c 	ldr	r6, [r1, #76]	; 0x4c
 80038f0:	e1a05001 	mov	r5, r1
 80038f4:	e5961000 	ldr	r1, [r6]
 80038f8:	e24dd024 	sub	sp, sp, #36	; 0x24
 80038fc:	e2866004 	add	r6, r6, #4
 8003900:	e2537000 	subs	r7, r3, #0
 8003904:	e58d0004 	str	r0, [sp, #4]
 8003908:	e1a09002 	mov	r9, r2
 800390c:	e58d1014 	str	r1, [sp, #20]
 8003910:	e58d6018 	str	r6, [sp, #24]
 8003914:	e2008003 	and	r8, r0, #3
 8003918:	1a000076 	bne	8003af8 <__gnu_unwind_pr_common+0x210>
 800391c:	e3a03003 	mov	r3, #3
 8003920:	e1a01401 	lsl	r1, r1, #8
 8003924:	e58d1014 	str	r1, [sp, #20]
 8003928:	e5cd701d 	strb	r7, [sp, #29]
 800392c:	e5cd301c 	strb	r3, [sp, #28]
 8003930:	e5953050 	ldr	r3, [r5, #80]	; 0x50
 8003934:	e3580002 	cmp	r8, #2
 8003938:	05956038 	ldreq	r6, [r5, #56]	; 0x38
 800393c:	e2133001 	ands	r3, r3, #1
 8003940:	1a000061 	bne	8003acc <__gnu_unwind_pr_common+0x1e4>
 8003944:	e58d3000 	str	r3, [sp]
 8003948:	e2853058 	add	r3, r5, #88	; 0x58
 800394c:	e58d3008 	str	r3, [sp, #8]
 8003950:	e5964000 	ldr	r4, [r6]
 8003954:	e3540000 	cmp	r4, #0
 8003958:	0a00005d 	beq	8003ad4 <__gnu_unwind_pr_common+0x1ec>
 800395c:	e3570002 	cmp	r7, #2
 8003960:	0596b004 	ldreq	fp, [r6, #4]
 8003964:	11d6b0b2 	ldrhne	fp, [r6, #2]
 8003968:	e5953048 	ldr	r3, [r5, #72]	; 0x48
 800396c:	e3cba001 	bic	sl, fp, #1
 8003970:	e1a00009 	mov	r0, r9
 8003974:	e3a0100f 	mov	r1, #15
 8003978:	11d640b0 	ldrhne	r4, [r6]
 800397c:	02866008 	addeq	r6, r6, #8
 8003980:	12866004 	addne	r6, r6, #4
 8003984:	e08aa003 	add	sl, sl, r3
 8003988:	ebffff73 	bl	800375c <_Unwind_GetGR>
 800398c:	e15a0000 	cmp	sl, r0
 8003990:	e20bb001 	and	fp, fp, #1
 8003994:	8a00003c 	bhi	8003a8c <__gnu_unwind_pr_common+0x1a4>
 8003998:	e3c43001 	bic	r3, r4, #1
 800399c:	e08aa003 	add	sl, sl, r3
 80039a0:	e150000a 	cmp	r0, sl
 80039a4:	2a000038 	bcs	8003a8c <__gnu_unwind_pr_common+0x1a4>
 80039a8:	e2044001 	and	r4, r4, #1
 80039ac:	e184408b 	orr	r4, r4, fp, lsl #1
 80039b0:	e3540001 	cmp	r4, #1
 80039b4:	0a00005e 	beq	8003b34 <__gnu_unwind_pr_common+0x24c>
 80039b8:	3a000059 	bcc	8003b24 <__gnu_unwind_pr_common+0x23c>
 80039bc:	e3540002 	cmp	r4, #2
 80039c0:	1a000048 	bne	8003ae8 <__gnu_unwind_pr_common+0x200>
 80039c4:	e5963000 	ldr	r3, [r6]
 80039c8:	e3580000 	cmp	r8, #0
 80039cc:	e3c34102 	bic	r4, r3, #-2147483648	; 0x80000000
 80039d0:	1a000090 	bne	8003c18 <__gnu_unwind_pr_common+0x330>
 80039d4:	e59d2004 	ldr	r2, [sp, #4]
 80039d8:	e3120008 	tst	r2, #8
 80039dc:	03a02001 	moveq	r2, #1
 80039e0:	13a02000 	movne	r2, #0
 80039e4:	e3540000 	cmp	r4, #0
 80039e8:	03822001 	orreq	r2, r2, #1
 80039ec:	e3520000 	cmp	r2, #0
 80039f0:	0a000030 	beq	8003ab8 <__gnu_unwind_pr_common+0x1d0>
 80039f4:	e3540000 	cmp	r4, #0
 80039f8:	0a00001a 	beq	8003a68 <__gnu_unwind_pr_common+0x180>
 80039fc:	e1a0a007 	mov	sl, r7
 8003a00:	e286b004 	add	fp, r6, #4
 8003a04:	e1a07004 	mov	r7, r4
 8003a08:	e58d800c 	str	r8, [sp, #12]
 8003a0c:	e59d4008 	ldr	r4, [sp, #8]
 8003a10:	ea000003 	b	8003a24 <__gnu_unwind_pr_common+0x13c>
 8003a14:	e1530007 	cmp	r3, r7
 8003a18:	e1a08003 	mov	r8, r3
 8003a1c:	e28bb004 	add	fp, fp, #4
 8003a20:	0a000010 	beq	8003a68 <__gnu_unwind_pr_common+0x180>
 8003a24:	e1a0000b 	mov	r0, fp
 8003a28:	e58d4010 	str	r4, [sp, #16]
 8003a2c:	ebfffe54 	bl	8003384 <_Unwind_decode_typeinfo_ptr.isra.0>
 8003a30:	e28d3010 	add	r3, sp, #16
 8003a34:	e1a01000 	mov	r1, r0
 8003a38:	e3a02000 	mov	r2, #0
 8003a3c:	e1a00005 	mov	r0, r5
 8003a40:	e320f000 	nop	{0}
 8003a44:	e3500000 	cmp	r0, #0
 8003a48:	e2883001 	add	r3, r8, #1
 8003a4c:	0afffff0 	beq	8003a14 <__gnu_unwind_pr_common+0x12c>
 8003a50:	e1a04007 	mov	r4, r7
 8003a54:	e1a0700a 	mov	r7, sl
 8003a58:	e1a0a008 	mov	sl, r8
 8003a5c:	e15a0004 	cmp	sl, r4
 8003a60:	e59d800c 	ldr	r8, [sp, #12]
 8003a64:	1a000071 	bne	8003c30 <__gnu_unwind_pr_common+0x348>
 8003a68:	e1a00009 	mov	r0, r9
 8003a6c:	e3a0100d 	mov	r1, #13
 8003a70:	ebffff39 	bl	800375c <_Unwind_GetGR>
 8003a74:	e59d3010 	ldr	r3, [sp, #16]
 8003a78:	e5850020 	str	r0, [r5, #32]
 8003a7c:	e5856028 	str	r6, [r5, #40]	; 0x28
 8003a80:	e5853024 	str	r3, [r5, #36]	; 0x24
 8003a84:	e3a00006 	mov	r0, #6
 8003a88:	ea000017 	b	8003aec <__gnu_unwind_pr_common+0x204>
 8003a8c:	e2044001 	and	r4, r4, #1
 8003a90:	e184408b 	orr	r4, r4, fp, lsl #1
 8003a94:	e3540001 	cmp	r4, #1
 8003a98:	0a000044 	beq	8003bb0 <__gnu_unwind_pr_common+0x2c8>
 8003a9c:	3a000022 	bcc	8003b2c <__gnu_unwind_pr_common+0x244>
 8003aa0:	e3540002 	cmp	r4, #2
 8003aa4:	1a00000f 	bne	8003ae8 <__gnu_unwind_pr_common+0x200>
 8003aa8:	e5963000 	ldr	r3, [r6]
 8003aac:	e3580000 	cmp	r8, #0
 8003ab0:	e3c34102 	bic	r4, r3, #-2147483648	; 0x80000000
 8003ab4:	1a000057 	bne	8003c18 <__gnu_unwind_pr_common+0x330>
 8003ab8:	e3530000 	cmp	r3, #0
 8003abc:	b2866004 	addlt	r6, r6, #4
 8003ac0:	e2844001 	add	r4, r4, #1
 8003ac4:	e0866104 	add	r6, r6, r4, lsl #2
 8003ac8:	eaffffa0 	b	8003950 <__gnu_unwind_pr_common+0x68>
 8003acc:	e3a03000 	mov	r3, #0
 8003ad0:	e58d3000 	str	r3, [sp]
 8003ad4:	e3570002 	cmp	r7, #2
 8003ad8:	da000038 	ble	8003bc0 <__gnu_unwind_pr_common+0x2d8>
 8003adc:	ebfffe2d 	bl	8003398 <__gnu_unwind_24bit.isra.1>
 8003ae0:	e3500000 	cmp	r0, #0
 8003ae4:	0a00003a 	beq	8003bd4 <__gnu_unwind_pr_common+0x2ec>
 8003ae8:	e3a00009 	mov	r0, #9
 8003aec:	e28dd024 	add	sp, sp, #36	; 0x24
 8003af0:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8003af4:	e12fff1e 	bx	lr
 8003af8:	e3570002 	cmp	r7, #2
 8003afc:	caffff8b 	bgt	8003930 <__gnu_unwind_pr_common+0x48>
 8003b00:	e3a02002 	mov	r2, #2
 8003b04:	e1a03821 	lsr	r3, r1, #16
 8003b08:	e5cd301d 	strb	r3, [sp, #29]
 8003b0c:	e1a01801 	lsl	r1, r1, #16
 8003b10:	e20330ff 	and	r3, r3, #255	; 0xff
 8003b14:	e58d1014 	str	r1, [sp, #20]
 8003b18:	e5cd201c 	strb	r2, [sp, #28]
 8003b1c:	e0866103 	add	r6, r6, r3, lsl #2
 8003b20:	eaffff82 	b	8003930 <__gnu_unwind_pr_common+0x48>
 8003b24:	e3580000 	cmp	r8, #0
 8003b28:	1a000070 	bne	8003cf0 <__gnu_unwind_pr_common+0x408>
 8003b2c:	e2866004 	add	r6, r6, #4
 8003b30:	eaffff86 	b	8003950 <__gnu_unwind_pr_common+0x68>
 8003b34:	e3580000 	cmp	r8, #0
 8003b38:	1a00003e 	bne	8003c38 <__gnu_unwind_pr_common+0x350>
 8003b3c:	e896000c 	ldm	r6, {r2, r3}
 8003b40:	e3730002 	cmn	r3, #2
 8003b44:	e1a04fa2 	lsr	r4, r2, #31
 8003b48:	0affffe6 	beq	8003ae8 <__gnu_unwind_pr_common+0x200>
 8003b4c:	e3730001 	cmn	r3, #1
 8003b50:	e59d3008 	ldr	r3, [sp, #8]
 8003b54:	e58d3010 	str	r3, [sp, #16]
 8003b58:	0a00005b 	beq	8003ccc <__gnu_unwind_pr_common+0x3e4>
 8003b5c:	e2860004 	add	r0, r6, #4
 8003b60:	ebfffe07 	bl	8003384 <_Unwind_decode_typeinfo_ptr.isra.0>
 8003b64:	e1a02004 	mov	r2, r4
 8003b68:	e1a01000 	mov	r1, r0
 8003b6c:	e28d3010 	add	r3, sp, #16
 8003b70:	e1a00005 	mov	r0, r5
 8003b74:	e320f000 	nop	{0}
 8003b78:	e3500000 	cmp	r0, #0
 8003b7c:	0a00000d 	beq	8003bb8 <__gnu_unwind_pr_common+0x2d0>
 8003b80:	e1a04000 	mov	r4, r0
 8003b84:	e3a0100d 	mov	r1, #13
 8003b88:	e1a00009 	mov	r0, r9
 8003b8c:	ebfffef2 	bl	800375c <_Unwind_GetGR>
 8003b90:	e3540002 	cmp	r4, #2
 8003b94:	e5850020 	str	r0, [r5, #32]
 8003b98:	1a00004f 	bne	8003cdc <__gnu_unwind_pr_common+0x3f4>
 8003b9c:	e1a03005 	mov	r3, r5
 8003ba0:	e59d2010 	ldr	r2, [sp, #16]
 8003ba4:	e5a3202c 	str	r2, [r3, #44]!	; 0x2c
 8003ba8:	e5853024 	str	r3, [r5, #36]	; 0x24
 8003bac:	ea00004c 	b	8003ce4 <__gnu_unwind_pr_common+0x3fc>
 8003bb0:	e3580000 	cmp	r8, #0
 8003bb4:	1a00001f 	bne	8003c38 <__gnu_unwind_pr_common+0x350>
 8003bb8:	e2866008 	add	r6, r6, #8
 8003bbc:	eaffff63 	b	8003950 <__gnu_unwind_pr_common+0x68>
 8003bc0:	e1a00009 	mov	r0, r9
 8003bc4:	e28d1014 	add	r1, sp, #20
 8003bc8:	eb0001ff 	bl	80043cc <__gnu_unwind_execute>
 8003bcc:	e3500000 	cmp	r0, #0
 8003bd0:	1affffc4 	bne	8003ae8 <__gnu_unwind_pr_common+0x200>
 8003bd4:	e59d3000 	ldr	r3, [sp]
 8003bd8:	e3530000 	cmp	r3, #0
 8003bdc:	03a00008 	moveq	r0, #8
 8003be0:	0affffc1 	beq	8003aec <__gnu_unwind_pr_common+0x204>
 8003be4:	e3a0100f 	mov	r1, #15
 8003be8:	e1a00009 	mov	r0, r9
 8003bec:	ebfffeda 	bl	800375c <_Unwind_GetGR>
 8003bf0:	e3a0100e 	mov	r1, #14
 8003bf4:	e1a02000 	mov	r2, r0
 8003bf8:	e1a00009 	mov	r0, r9
 8003bfc:	ebfffef9 	bl	80037e8 <_Unwind_SetGR>
 8003c00:	e1a00009 	mov	r0, r9
 8003c04:	e3a0100f 	mov	r1, #15
 8003c08:	e59f2128 	ldr	r2, [pc, #296]	; 8003d38 <__gnu_unwind_pr_common+0x450>
 8003c0c:	ebfffef5 	bl	80037e8 <_Unwind_SetGR>
 8003c10:	e3a00007 	mov	r0, #7
 8003c14:	eaffffb4 	b	8003aec <__gnu_unwind_pr_common+0x204>
 8003c18:	e1a00009 	mov	r0, r9
 8003c1c:	e3a0100d 	mov	r1, #13
 8003c20:	e595a020 	ldr	sl, [r5, #32]
 8003c24:	ebfffecc 	bl	800375c <_Unwind_GetGR>
 8003c28:	e15a0000 	cmp	sl, r0
 8003c2c:	0a000016 	beq	8003c8c <__gnu_unwind_pr_common+0x3a4>
 8003c30:	e5963000 	ldr	r3, [r6]
 8003c34:	eaffff9f 	b	8003ab8 <__gnu_unwind_pr_common+0x1d0>
 8003c38:	e1a00009 	mov	r0, r9
 8003c3c:	e3a0100d 	mov	r1, #13
 8003c40:	e5954020 	ldr	r4, [r5, #32]
 8003c44:	ebfffec4 	bl	800375c <_Unwind_GetGR>
 8003c48:	e1540000 	cmp	r4, r0
 8003c4c:	1affffd9 	bne	8003bb8 <__gnu_unwind_pr_common+0x2d0>
 8003c50:	e5953028 	ldr	r3, [r5, #40]	; 0x28
 8003c54:	e1560003 	cmp	r6, r3
 8003c58:	1affffd6 	bne	8003bb8 <__gnu_unwind_pr_common+0x2d0>
 8003c5c:	e1a00006 	mov	r0, r6
 8003c60:	ebfffd12 	bl	80030b0 <selfrel_offset31>
 8003c64:	e3a0100f 	mov	r1, #15
 8003c68:	e1a02000 	mov	r2, r0
 8003c6c:	e1a00009 	mov	r0, r9
 8003c70:	ebfffedc 	bl	80037e8 <_Unwind_SetGR>
 8003c74:	e1a00009 	mov	r0, r9
 8003c78:	e1a02005 	mov	r2, r5
 8003c7c:	e3a01000 	mov	r1, #0
 8003c80:	ebfffed8 	bl	80037e8 <_Unwind_SetGR>
 8003c84:	e3a00007 	mov	r0, #7
 8003c88:	eaffff97 	b	8003aec <__gnu_unwind_pr_common+0x204>
 8003c8c:	e5953028 	ldr	r3, [r5, #40]	; 0x28
 8003c90:	e1560003 	cmp	r6, r3
 8003c94:	1affffe5 	bne	8003c30 <__gnu_unwind_pr_common+0x348>
 8003c98:	e3a02000 	mov	r2, #0
 8003c9c:	e585202c 	str	r2, [r5, #44]	; 0x2c
 8003ca0:	e3a02004 	mov	r2, #4
 8003ca4:	e2863004 	add	r3, r6, #4
 8003ca8:	e5854028 	str	r4, [r5, #40]	; 0x28
 8003cac:	e5852030 	str	r2, [r5, #48]	; 0x30
 8003cb0:	e5853034 	str	r3, [r5, #52]	; 0x34
 8003cb4:	e5963000 	ldr	r3, [r6]
 8003cb8:	e3530000 	cmp	r3, #0
 8003cbc:	ba00001a 	blt	8003d2c <__gnu_unwind_pr_common+0x444>
 8003cc0:	e3a03001 	mov	r3, #1
 8003cc4:	e58d3000 	str	r3, [sp]
 8003cc8:	eaffff7c 	b	8003ac0 <__gnu_unwind_pr_common+0x1d8>
 8003ccc:	e1a00009 	mov	r0, r9
 8003cd0:	e3a0100d 	mov	r1, #13
 8003cd4:	ebfffea0 	bl	800375c <_Unwind_GetGR>
 8003cd8:	e5850020 	str	r0, [r5, #32]
 8003cdc:	e59d3010 	ldr	r3, [sp, #16]
 8003ce0:	e5853024 	str	r3, [r5, #36]	; 0x24
 8003ce4:	e5856028 	str	r6, [r5, #40]	; 0x28
 8003ce8:	e3a00006 	mov	r0, #6
 8003cec:	eaffff7e 	b	8003aec <__gnu_unwind_pr_common+0x204>
 8003cf0:	e1a00006 	mov	r0, r6
 8003cf4:	ebfffced 	bl	80030b0 <selfrel_offset31>
 8003cf8:	e2866004 	add	r6, r6, #4
 8003cfc:	e1a04000 	mov	r4, r0
 8003d00:	e5856038 	str	r6, [r5, #56]	; 0x38
 8003d04:	e1a00005 	mov	r0, r5
 8003d08:	e320f000 	nop	{0}
 8003d0c:	e3500000 	cmp	r0, #0
 8003d10:	0affff74 	beq	8003ae8 <__gnu_unwind_pr_common+0x200>
 8003d14:	e1a00009 	mov	r0, r9
 8003d18:	e1a02004 	mov	r2, r4
 8003d1c:	e3a0100f 	mov	r1, #15
 8003d20:	ebfffeb0 	bl	80037e8 <_Unwind_SetGR>
 8003d24:	e3a00007 	mov	r0, #7
 8003d28:	eaffff6f 	b	8003aec <__gnu_unwind_pr_common+0x204>
 8003d2c:	e2840001 	add	r0, r4, #1
 8003d30:	e0860100 	add	r0, r6, r0, lsl #2
 8003d34:	eaffffc9 	b	8003c60 <__gnu_unwind_pr_common+0x378>
 8003d38:	00000000 	.word	0x00000000

08003d3c <__aeabi_unwind_cpp_pr0>:
 8003d3c:	e3a03000 	mov	r3, #0
 8003d40:	eafffee8 	b	80038e8 <__gnu_unwind_pr_common>

08003d44 <__aeabi_unwind_cpp_pr1>:
 8003d44:	e3a03001 	mov	r3, #1
 8003d48:	eafffee6 	b	80038e8 <__gnu_unwind_pr_common>

08003d4c <__aeabi_unwind_cpp_pr2>:
 8003d4c:	e3a03002 	mov	r3, #2
 8003d50:	eafffee4 	b	80038e8 <__gnu_unwind_pr_common>

08003d54 <_Unwind_VRS_Pop>:
 8003d54:	e92d43f0 	push	{r4, r5, r6, r7, r8, r9, lr}
 8003d58:	e1a04000 	mov	r4, r0
 8003d5c:	e24ddf45 	sub	sp, sp, #276	; 0x114
 8003d60:	e3510004 	cmp	r1, #4
 8003d64:	979ff101 	ldrls	pc, [pc, r1, lsl #2]
 8003d68:	ea000006 	b	8003d88 <_Unwind_VRS_Pop+0x34>
 8003d6c:	08003f68 	.word	0x08003f68
 8003d70:	08003e00 	.word	0x08003e00
 8003d74:	08003d88 	.word	0x08003d88
 8003d78:	08003d80 	.word	0x08003d80
 8003d7c:	08003d98 	.word	0x08003d98
 8003d80:	e3530003 	cmp	r3, #3
 8003d84:	0a00009c 	beq	8003ffc <_Unwind_VRS_Pop+0x2a8>
 8003d88:	e3a00002 	mov	r0, #2
 8003d8c:	e28ddf45 	add	sp, sp, #276	; 0x114
 8003d90:	e8bd43f0 	pop	{r4, r5, r6, r7, r8, r9, lr}
 8003d94:	e12fff1e 	bx	lr
 8003d98:	e3520010 	cmp	r2, #16
 8003d9c:	93530000 	cmpls	r3, #0
 8003da0:	1afffff8 	bne	8003d88 <_Unwind_VRS_Pop+0x34>
 8003da4:	e5903000 	ldr	r3, [r0]
 8003da8:	e3130010 	tst	r3, #16
 8003dac:	1a0000b1 	bne	8004078 <_Unwind_VRS_Pop+0x324>
 8003db0:	e28d5088 	add	r5, sp, #136	; 0x88
 8003db4:	e1a00005 	mov	r0, r5
 8003db8:	e58d2004 	str	r2, [sp, #4]
 8003dbc:	eb00012b 	bl	8004270 <__gnu_Unwind_Save_WMMXC>
 8003dc0:	e3a03000 	mov	r3, #0
 8003dc4:	e3a00001 	mov	r0, #1
 8003dc8:	e5941038 	ldr	r1, [r4, #56]	; 0x38
 8003dcc:	e59d2004 	ldr	r2, [sp, #4]
 8003dd0:	e012c310 	ands	ip, r2, r0, lsl r3
 8003dd4:	1591c000 	ldrne	ip, [r1]
 8003dd8:	1785c103 	strne	ip, [r5, r3, lsl #2]
 8003ddc:	e2833001 	add	r3, r3, #1
 8003de0:	12811004 	addne	r1, r1, #4
 8003de4:	e3530004 	cmp	r3, #4
 8003de8:	1afffff8 	bne	8003dd0 <_Unwind_VRS_Pop+0x7c>
 8003dec:	e1a00005 	mov	r0, r5
 8003df0:	e5841038 	str	r1, [r4, #56]	; 0x38
 8003df4:	eb000118 	bl	800425c <__gnu_Unwind_Restore_WMMXC>
 8003df8:	e3a00000 	mov	r0, #0
 8003dfc:	eaffffe2 	b	8003d8c <_Unwind_VRS_Pop+0x38>
 8003e00:	e20310fb 	and	r1, r3, #251	; 0xfb
 8003e04:	e3510001 	cmp	r1, #1
 8003e08:	1affffde 	bne	8003d88 <_Unwind_VRS_Pop+0x34>
 8003e0c:	e1a06802 	lsl	r6, r2, #16
 8003e10:	e1a06826 	lsr	r6, r6, #16
 8003e14:	e1a08822 	lsr	r8, r2, #16
 8003e18:	e3530001 	cmp	r3, #1
 8003e1c:	e0861008 	add	r1, r6, r8
 8003e20:	0a000063 	beq	8003fb4 <_Unwind_VRS_Pop+0x260>
 8003e24:	e3510020 	cmp	r1, #32
 8003e28:	8affffd6 	bhi	8003d88 <_Unwind_VRS_Pop+0x34>
 8003e2c:	e358000f 	cmp	r8, #15
 8003e30:	9a000096 	bls	8004090 <_Unwind_VRS_Pop+0x33c>
 8003e34:	e1a07006 	mov	r7, r6
 8003e38:	e3570000 	cmp	r7, #0
 8003e3c:	13530005 	cmpne	r3, #5
 8003e40:	13a09001 	movne	r9, #1
 8003e44:	03a09000 	moveq	r9, #0
 8003e48:	1affffce 	bne	8003d88 <_Unwind_VRS_Pop+0x34>
 8003e4c:	e358000f 	cmp	r8, #15
 8003e50:	8a000096 	bhi	80040b0 <_Unwind_VRS_Pop+0x35c>
 8003e54:	e5942000 	ldr	r2, [r4]
 8003e58:	e3120001 	tst	r2, #1
 8003e5c:	0a000093 	beq	80040b0 <_Unwind_VRS_Pop+0x35c>
 8003e60:	e3530005 	cmp	r3, #5
 8003e64:	e3c23001 	bic	r3, r2, #1
 8003e68:	e5843000 	str	r3, [r4]
 8003e6c:	0a0000bb 	beq	8004160 <_Unwind_VRS_Pop+0x40c>
 8003e70:	e1a00004 	mov	r0, r4
 8003e74:	e3c22003 	bic	r2, r2, #3
 8003e78:	e4802048 	str	r2, [r0], #72	; 0x48
 8003e7c:	eb0000ca 	bl	80041ac <__gnu_Unwind_Save_VFP>
 8003e80:	e3570000 	cmp	r7, #0
 8003e84:	0a000099 	beq	80040f0 <_Unwind_VRS_Pop+0x39c>
 8003e88:	e5943000 	ldr	r3, [r4]
 8003e8c:	e3130004 	tst	r3, #4
 8003e90:	1a0000ad 	bne	800414c <_Unwind_VRS_Pop+0x3f8>
 8003e94:	e3590000 	cmp	r9, #0
 8003e98:	1a0000b7 	bne	800417c <_Unwind_VRS_Pop+0x428>
 8003e9c:	e358000f 	cmp	r8, #15
 8003ea0:	8a000004 	bhi	8003eb8 <_Unwind_VRS_Pop+0x164>
 8003ea4:	e28d5088 	add	r5, sp, #136	; 0x88
 8003ea8:	e1a00005 	mov	r0, r5
 8003eac:	eb0000c2 	bl	80041bc <__gnu_Unwind_Save_VFP_D>
 8003eb0:	e3570000 	cmp	r7, #0
 8003eb4:	0a00009b 	beq	8004128 <_Unwind_VRS_Pop+0x3d4>
 8003eb8:	e28d0008 	add	r0, sp, #8
 8003ebc:	eb0000c2 	bl	80041cc <__gnu_Unwind_Save_VFP_D_16_to_31>
 8003ec0:	e2683010 	rsb	r3, r8, #16
 8003ec4:	e3530000 	cmp	r3, #0
 8003ec8:	e5941038 	ldr	r1, [r4, #56]	; 0x38
 8003ecc:	da00000d 	ble	8003f08 <_Unwind_VRS_Pop+0x1b4>
 8003ed0:	e28d5088 	add	r5, sp, #136	; 0x88
 8003ed4:	e1a00001 	mov	r0, r1
 8003ed8:	e1a0e083 	lsl	lr, r3, #1
 8003edc:	e0852188 	add	r2, r5, r8, lsl #3
 8003ee0:	e2422004 	sub	r2, r2, #4
 8003ee4:	e24e3001 	sub	r3, lr, #1
 8003ee8:	e2433001 	sub	r3, r3, #1
 8003eec:	e490c004 	ldr	ip, [r0], #4
 8003ef0:	e3730001 	cmn	r3, #1
 8003ef4:	e5a2c004 	str	ip, [r2, #4]!
 8003ef8:	1afffffa 	bne	8003ee8 <_Unwind_VRS_Pop+0x194>
 8003efc:	e3570000 	cmp	r7, #0
 8003f00:	e081110e 	add	r1, r1, lr, lsl #2
 8003f04:	0a00000d 	beq	8003f40 <_Unwind_VRS_Pop+0x1ec>
 8003f08:	e3580010 	cmp	r8, #16
 8003f0c:	21a02008 	movcs	r2, r8
 8003f10:	33a02010 	movcc	r2, #16
 8003f14:	e28d3e11 	add	r3, sp, #272	; 0x110
 8003f18:	e0832182 	add	r2, r3, r2, lsl #3
 8003f1c:	e2422f62 	sub	r2, r2, #392	; 0x188
 8003f20:	e1a00087 	lsl	r0, r7, #1
 8003f24:	e1a03001 	mov	r3, r1
 8003f28:	e2422004 	sub	r2, r2, #4
 8003f2c:	e0811100 	add	r1, r1, r0, lsl #2
 8003f30:	e4930004 	ldr	r0, [r3], #4
 8003f34:	e1530001 	cmp	r3, r1
 8003f38:	e5a20004 	str	r0, [r2, #4]!
 8003f3c:	1afffffb 	bne	8003f30 <_Unwind_VRS_Pop+0x1dc>
 8003f40:	e3590000 	cmp	r9, #0
 8003f44:	1a00007b 	bne	8004138 <_Unwind_VRS_Pop+0x3e4>
 8003f48:	e358000f 	cmp	r8, #15
 8003f4c:	e5841038 	str	r1, [r4, #56]	; 0x38
 8003f50:	9a00007a 	bls	8004140 <_Unwind_VRS_Pop+0x3ec>
 8003f54:	e3570000 	cmp	r7, #0
 8003f58:	128d0008 	addne	r0, sp, #8
 8003f5c:	1b000098 	blne	80041c4 <__gnu_Unwind_Restore_VFP_D_16_to_31>
 8003f60:	e3a00000 	mov	r0, #0
 8003f64:	eaffff88 	b	8003d8c <_Unwind_VRS_Pop+0x38>
 8003f68:	e3530000 	cmp	r3, #0
 8003f6c:	1affff85 	bne	8003d88 <_Unwind_VRS_Pop+0x34>
 8003f70:	e3a0e001 	mov	lr, #1
 8003f74:	e1a00802 	lsl	r0, r2, #16
 8003f78:	e594c038 	ldr	ip, [r4, #56]	; 0x38
 8003f7c:	e1a00820 	lsr	r0, r0, #16
 8003f80:	e2841004 	add	r1, r4, #4
 8003f84:	e010531e 	ands	r5, r0, lr, lsl r3
 8003f88:	159c5000 	ldrne	r5, [ip]
 8003f8c:	e2833001 	add	r3, r3, #1
 8003f90:	15815000 	strne	r5, [r1]
 8003f94:	128cc004 	addne	ip, ip, #4
 8003f98:	e3530010 	cmp	r3, #16
 8003f9c:	e2811004 	add	r1, r1, #4
 8003fa0:	1afffff7 	bne	8003f84 <_Unwind_VRS_Pop+0x230>
 8003fa4:	e2120a02 	ands	r0, r2, #8192	; 0x2000
 8003fa8:	0584c038 	streq	ip, [r4, #56]	; 0x38
 8003fac:	0affff76 	beq	8003d8c <_Unwind_VRS_Pop+0x38>
 8003fb0:	eaffffea 	b	8003f60 <_Unwind_VRS_Pop+0x20c>
 8003fb4:	e3510010 	cmp	r1, #16
 8003fb8:	8affff72 	bhi	8003d88 <_Unwind_VRS_Pop+0x34>
 8003fbc:	e358000f 	cmp	r8, #15
 8003fc0:	91a09003 	movls	r9, r3
 8003fc4:	8affff6f 	bhi	8003d88 <_Unwind_VRS_Pop+0x34>
 8003fc8:	e5942000 	ldr	r2, [r4]
 8003fcc:	e3120001 	tst	r2, #1
 8003fd0:	0a000046 	beq	80040f0 <_Unwind_VRS_Pop+0x39c>
 8003fd4:	e3530005 	cmp	r3, #5
 8003fd8:	e3c23001 	bic	r3, r2, #1
 8003fdc:	e5843000 	str	r3, [r4]
 8003fe0:	e3a07000 	mov	r7, #0
 8003fe4:	1affffa1 	bne	8003e70 <_Unwind_VRS_Pop+0x11c>
 8003fe8:	e1a00004 	mov	r0, r4
 8003fec:	e3833002 	orr	r3, r3, #2
 8003ff0:	e4803048 	str	r3, [r0], #72	; 0x48
 8003ff4:	eb000070 	bl	80041bc <__gnu_Unwind_Save_VFP_D>
 8003ff8:	eaffffa9 	b	8003ea4 <_Unwind_VRS_Pop+0x150>
 8003ffc:	e1a07802 	lsl	r7, r2, #16
 8004000:	e1a07827 	lsr	r7, r7, #16
 8004004:	e1a06822 	lsr	r6, r2, #16
 8004008:	e0873006 	add	r3, r7, r6
 800400c:	e3530010 	cmp	r3, #16
 8004010:	8affff5c 	bhi	8003d88 <_Unwind_VRS_Pop+0x34>
 8004014:	e5903000 	ldr	r3, [r0]
 8004018:	e3130008 	tst	r3, #8
 800401c:	1a00001f 	bne	80040a0 <_Unwind_VRS_Pop+0x34c>
 8004020:	e28d5088 	add	r5, sp, #136	; 0x88
 8004024:	e1a07087 	lsl	r7, r7, #1
 8004028:	e1a00005 	mov	r0, r5
 800402c:	eb000079 	bl	8004218 <__gnu_Unwind_Save_WMMXD>
 8004030:	e3570000 	cmp	r7, #0
 8004034:	e0852186 	add	r2, r5, r6, lsl #3
 8004038:	e2473001 	sub	r3, r7, #1
 800403c:	e594c038 	ldr	ip, [r4, #56]	; 0x38
 8004040:	0a000007 	beq	8004064 <_Unwind_VRS_Pop+0x310>
 8004044:	e1a0100c 	mov	r1, ip
 8004048:	e2422004 	sub	r2, r2, #4
 800404c:	e2433001 	sub	r3, r3, #1
 8004050:	e4910004 	ldr	r0, [r1], #4
 8004054:	e3730001 	cmn	r3, #1
 8004058:	e5a20004 	str	r0, [r2, #4]!
 800405c:	1afffffa 	bne	800404c <_Unwind_VRS_Pop+0x2f8>
 8004060:	e08cc107 	add	ip, ip, r7, lsl #2
 8004064:	e1a00005 	mov	r0, r5
 8004068:	e584c038 	str	ip, [r4, #56]	; 0x38
 800406c:	eb000058 	bl	80041d4 <__gnu_Unwind_Restore_WMMXD>
 8004070:	e3a00000 	mov	r0, #0
 8004074:	eaffff44 	b	8003d8c <_Unwind_VRS_Pop+0x38>
 8004078:	e3c33010 	bic	r3, r3, #16
 800407c:	e48031d0 	str	r3, [r0], #464	; 0x1d0
 8004080:	e58d2004 	str	r2, [sp, #4]
 8004084:	eb000079 	bl	8004270 <__gnu_Unwind_Save_WMMXC>
 8004088:	e59d2004 	ldr	r2, [sp, #4]
 800408c:	eaffff47 	b	8003db0 <_Unwind_VRS_Pop+0x5c>
 8004090:	e3510010 	cmp	r1, #16
 8004094:	9a000013 	bls	80040e8 <_Unwind_VRS_Pop+0x394>
 8004098:	e2417010 	sub	r7, r1, #16
 800409c:	eaffff65 	b	8003e38 <_Unwind_VRS_Pop+0xe4>
 80040a0:	e3c33008 	bic	r3, r3, #8
 80040a4:	e4803150 	str	r3, [r0], #336	; 0x150
 80040a8:	eb00005a 	bl	8004218 <__gnu_Unwind_Save_WMMXD>
 80040ac:	eaffffdb 	b	8004020 <_Unwind_VRS_Pop+0x2cc>
 80040b0:	e3570000 	cmp	r7, #0
 80040b4:	1affff73 	bne	8003e88 <_Unwind_VRS_Pop+0x134>
 80040b8:	e358000f 	cmp	r8, #15
 80040bc:	93a09000 	movls	r9, #0
 80040c0:	91a07009 	movls	r7, r9
 80040c4:	9affff76 	bls	8003ea4 <_Unwind_VRS_Pop+0x150>
 80040c8:	e3a09000 	mov	r9, #0
 80040cc:	e3560000 	cmp	r6, #0
 80040d0:	e1a03006 	mov	r3, r6
 80040d4:	e5941038 	ldr	r1, [r4, #56]	; 0x38
 80040d8:	11a07009 	movne	r7, r9
 80040dc:	1affff7b 	bne	8003ed0 <_Unwind_VRS_Pop+0x17c>
 80040e0:	e1a07006 	mov	r7, r6
 80040e4:	eaffff97 	b	8003f48 <_Unwind_VRS_Pop+0x1f4>
 80040e8:	e3a09000 	mov	r9, #0
 80040ec:	eaffffb5 	b	8003fc8 <_Unwind_VRS_Pop+0x274>
 80040f0:	e3590000 	cmp	r9, #0
 80040f4:	0affffef 	beq	80040b8 <_Unwind_VRS_Pop+0x364>
 80040f8:	e28d5088 	add	r5, sp, #136	; 0x88
 80040fc:	e1a00005 	mov	r0, r5
 8004100:	eb000029 	bl	80041ac <__gnu_Unwind_Save_VFP>
 8004104:	e2563000 	subs	r3, r6, #0
 8004108:	e5941038 	ldr	r1, [r4, #56]	; 0x38
 800410c:	13a07000 	movne	r7, #0
 8004110:	1affff6f 	bne	8003ed4 <_Unwind_VRS_Pop+0x180>
 8004114:	e2811004 	add	r1, r1, #4
 8004118:	e5841038 	str	r1, [r4, #56]	; 0x38
 800411c:	e1a00005 	mov	r0, r5
 8004120:	eb00001f 	bl	80041a4 <__gnu_Unwind_Restore_VFP>
 8004124:	eaffff8d 	b	8003f60 <_Unwind_VRS_Pop+0x20c>
 8004128:	e2563000 	subs	r3, r6, #0
 800412c:	e5941038 	ldr	r1, [r4, #56]	; 0x38
 8004130:	1affff67 	bne	8003ed4 <_Unwind_VRS_Pop+0x180>
 8004134:	eaffff81 	b	8003f40 <_Unwind_VRS_Pop+0x1ec>
 8004138:	e28d5088 	add	r5, sp, #136	; 0x88
 800413c:	eafffff4 	b	8004114 <_Unwind_VRS_Pop+0x3c0>
 8004140:	e28d0088 	add	r0, sp, #136	; 0x88
 8004144:	eb00001a 	bl	80041b4 <__gnu_Unwind_Restore_VFP_D>
 8004148:	eaffff81 	b	8003f54 <_Unwind_VRS_Pop+0x200>
 800414c:	e1a00004 	mov	r0, r4
 8004150:	e3c33004 	bic	r3, r3, #4
 8004154:	e48030d0 	str	r3, [r0], #208	; 0xd0
 8004158:	eb00001b 	bl	80041cc <__gnu_Unwind_Save_VFP_D_16_to_31>
 800415c:	eaffff4c 	b	8003e94 <_Unwind_VRS_Pop+0x140>
 8004160:	e1a00004 	mov	r0, r4
 8004164:	e3833002 	orr	r3, r3, #2
 8004168:	e4803048 	str	r3, [r0], #72	; 0x48
 800416c:	eb000012 	bl	80041bc <__gnu_Unwind_Save_VFP_D>
 8004170:	e3570000 	cmp	r7, #0
 8004174:	1affff43 	bne	8003e88 <_Unwind_VRS_Pop+0x134>
 8004178:	eaffff49 	b	8003ea4 <_Unwind_VRS_Pop+0x150>
 800417c:	e28d0088 	add	r0, sp, #136	; 0x88
 8004180:	eb000009 	bl	80041ac <__gnu_Unwind_Save_VFP>
 8004184:	eaffff4d 	b	8003ec0 <_Unwind_VRS_Pop+0x16c>

08004188 <__restore_core_regs>:
 8004188:	e2801034 	add	r1, r0, #52	; 0x34
 800418c:	e8910038 	ldm	r1, {r3, r4, r5}
 8004190:	e1a02005 	mov	r2, r5
 8004194:	e92d001c 	push	{r2, r3, r4}
 8004198:	e8900fff 	ldm	r0, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp}
 800419c:	e89d7000 	ldm	sp, {ip, sp, lr}
 80041a0:	e12fff1c 	bx	ip

080041a4 <__gnu_Unwind_Restore_VFP>:
 80041a4:	ec900b21 	fldmiax	r0, {d0-d15}	;@ Deprecated
 80041a8:	e12fff1e 	bx	lr

080041ac <__gnu_Unwind_Save_VFP>:
 80041ac:	ec800b21 	fstmiax	r0, {d0-d15}	;@ Deprecated
 80041b0:	e12fff1e 	bx	lr

080041b4 <__gnu_Unwind_Restore_VFP_D>:
 80041b4:	ec900b20 	vldmia	r0, {d0-d15}
 80041b8:	e12fff1e 	bx	lr

080041bc <__gnu_Unwind_Save_VFP_D>:
 80041bc:	ec800b20 	vstmia	r0, {d0-d15}
 80041c0:	e12fff1e 	bx	lr

080041c4 <__gnu_Unwind_Restore_VFP_D_16_to_31>:
 80041c4:	ecd00b20 	vldmia	r0, {d16-d31}
 80041c8:	e12fff1e 	bx	lr

080041cc <__gnu_Unwind_Save_VFP_D_16_to_31>:
 80041cc:	ecc00b20 	vstmia	r0, {d16-d31}
 80041d0:	e12fff1e 	bx	lr

080041d4 <__gnu_Unwind_Restore_WMMXD>:
 80041d4:	ecf00102 	ldfe	f0, [r0], #8
 80041d8:	ecf01102 	ldfe	f1, [r0], #8
 80041dc:	ecf02102 	ldfe	f2, [r0], #8
 80041e0:	ecf03102 	ldfe	f3, [r0], #8
 80041e4:	ecf04102 	ldfe	f4, [r0], #8
 80041e8:	ecf05102 	ldfe	f5, [r0], #8
 80041ec:	ecf06102 	ldfe	f6, [r0], #8
 80041f0:	ecf07102 	ldfe	f7, [r0], #8
 80041f4:	ecf08102 	ldfp	f0, [r0], #8
 80041f8:	ecf09102 	ldfp	f1, [r0], #8
 80041fc:	ecf0a102 	ldfp	f2, [r0], #8
 8004200:	ecf0b102 	ldfp	f3, [r0], #8
 8004204:	ecf0c102 	ldfp	f4, [r0], #8
 8004208:	ecf0d102 	ldfp	f5, [r0], #8
 800420c:	ecf0e102 	ldfp	f6, [r0], #8
 8004210:	ecf0f102 	ldfp	f7, [r0], #8
 8004214:	e12fff1e 	bx	lr

08004218 <__gnu_Unwind_Save_WMMXD>:
 8004218:	ece00102 	stfe	f0, [r0], #8
 800421c:	ece01102 	stfe	f1, [r0], #8
 8004220:	ece02102 	stfe	f2, [r0], #8
 8004224:	ece03102 	stfe	f3, [r0], #8
 8004228:	ece04102 	stfe	f4, [r0], #8
 800422c:	ece05102 	stfe	f5, [r0], #8
 8004230:	ece06102 	stfe	f6, [r0], #8
 8004234:	ece07102 	stfe	f7, [r0], #8
 8004238:	ece08102 	stfp	f0, [r0], #8
 800423c:	ece09102 	stfp	f1, [r0], #8
 8004240:	ece0a102 	stfp	f2, [r0], #8
 8004244:	ece0b102 	stfp	f3, [r0], #8
 8004248:	ece0c102 	stfp	f4, [r0], #8
 800424c:	ece0d102 	stfp	f5, [r0], #8
 8004250:	ece0e102 	stfp	f6, [r0], #8
 8004254:	ece0f102 	stfp	f7, [r0], #8
 8004258:	e12fff1e 	bx	lr

0800425c <__gnu_Unwind_Restore_WMMXC>:
 800425c:	fcb08101 	ldc2	1, cr8, [r0], #4
 8004260:	fcb09101 	ldc2	1, cr9, [r0], #4
 8004264:	fcb0a101 	ldc2	1, cr10, [r0], #4
 8004268:	fcb0b101 	ldc2	1, cr11, [r0], #4
 800426c:	e12fff1e 	bx	lr

08004270 <__gnu_Unwind_Save_WMMXC>:
 8004270:	fca08101 	stc2	1, cr8, [r0], #4
 8004274:	fca09101 	stc2	1, cr9, [r0], #4
 8004278:	fca0a101 	stc2	1, cr10, [r0], #4
 800427c:	fca0b101 	stc2	1, cr11, [r0], #4
 8004280:	e12fff1e 	bx	lr

08004284 <_Unwind_RaiseException>:
 8004284:	e92de000 	push	{sp, lr, pc}
 8004288:	e92d1fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
 800428c:	e3a03000 	mov	r3, #0
 8004290:	e92d000c 	push	{r2, r3}
 8004294:	e28d1004 	add	r1, sp, #4
 8004298:	ebfffcb8 	bl	8003580 <__gnu_Unwind_RaiseException>
 800429c:	e59de040 	ldr	lr, [sp, #64]	; 0x40
 80042a0:	e28dd048 	add	sp, sp, #72	; 0x48
 80042a4:	e12fff1e 	bx	lr

080042a8 <_Unwind_Resume>:
 80042a8:	e92de000 	push	{sp, lr, pc}
 80042ac:	e92d1fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
 80042b0:	e3a03000 	mov	r3, #0
 80042b4:	e92d000c 	push	{r2, r3}
 80042b8:	e28d1004 	add	r1, sp, #4
 80042bc:	ebfffce4 	bl	8003654 <__gnu_Unwind_Resume>
 80042c0:	e59de040 	ldr	lr, [sp, #64]	; 0x40
 80042c4:	e28dd048 	add	sp, sp, #72	; 0x48
 80042c8:	e12fff1e 	bx	lr

080042cc <_Unwind_Resume_or_Rethrow>:
 80042cc:	e92de000 	push	{sp, lr, pc}
 80042d0:	e92d1fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
 80042d4:	e3a03000 	mov	r3, #0
 80042d8:	e92d000c 	push	{r2, r3}
 80042dc:	e28d1004 	add	r1, sp, #4
 80042e0:	ebfffcf8 	bl	80036c8 <__gnu_Unwind_Resume_or_Rethrow>
 80042e4:	e59de040 	ldr	lr, [sp, #64]	; 0x40
 80042e8:	e28dd048 	add	sp, sp, #72	; 0x48
 80042ec:	e12fff1e 	bx	lr

080042f0 <_Unwind_ForcedUnwind>:
 80042f0:	e92de000 	push	{sp, lr, pc}
 80042f4:	e92d1fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
 80042f8:	e3a03000 	mov	r3, #0
 80042fc:	e92d000c 	push	{r2, r3}
 8004300:	e28d3004 	add	r3, sp, #4
 8004304:	ebfffcc9 	bl	8003630 <__gnu_Unwind_ForcedUnwind>
 8004308:	e59de040 	ldr	lr, [sp, #64]	; 0x40
 800430c:	e28dd048 	add	sp, sp, #72	; 0x48
 8004310:	e12fff1e 	bx	lr

08004314 <_Unwind_Backtrace>:
 8004314:	e92de000 	push	{sp, lr, pc}
 8004318:	e92d1fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
 800431c:	e3a03000 	mov	r3, #0
 8004320:	e92d000c 	push	{r2, r3}
 8004324:	e28d2004 	add	r2, sp, #4
 8004328:	ebfffd3b 	bl	800381c <__gnu_Unwind_Backtrace>
 800432c:	e59de040 	ldr	lr, [sp, #64]	; 0x40
 8004330:	e28dd048 	add	sp, sp, #72	; 0x48
 8004334:	e12fff1e 	bx	lr

08004338 <next_unwind_byte>:
 8004338:	e5d03008 	ldrb	r3, [r0, #8]
 800433c:	e3530000 	cmp	r3, #0
 8004340:	1a000004 	bne	8004358 <next_unwind_byte+0x20>
 8004344:	e5d03009 	ldrb	r3, [r0, #9]
 8004348:	e3530000 	cmp	r3, #0
 800434c:	1a000008 	bne	8004374 <next_unwind_byte+0x3c>
 8004350:	e3a000b0 	mov	r0, #176	; 0xb0
 8004354:	e12fff1e 	bx	lr
 8004358:	e2433001 	sub	r3, r3, #1
 800435c:	e5c03008 	strb	r3, [r0, #8]
 8004360:	e5903000 	ldr	r3, [r0]
 8004364:	e1a02403 	lsl	r2, r3, #8
 8004368:	e5802000 	str	r2, [r0]
 800436c:	e1a00c23 	lsr	r0, r3, #24
 8004370:	e12fff1e 	bx	lr
 8004374:	e3a01003 	mov	r1, #3
 8004378:	e5902004 	ldr	r2, [r0, #4]
 800437c:	e2433001 	sub	r3, r3, #1
 8004380:	e5c03009 	strb	r3, [r0, #9]
 8004384:	e282c004 	add	ip, r2, #4
 8004388:	e5923000 	ldr	r3, [r2]
 800438c:	e580c004 	str	ip, [r0, #4]
 8004390:	e5c01008 	strb	r1, [r0, #8]
 8004394:	eafffff2 	b	8004364 <next_unwind_byte+0x2c>

08004398 <_Unwind_GetGR.constprop.0>:
 8004398:	e3a01000 	mov	r1, #0
 800439c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 80043a0:	e24dd014 	sub	sp, sp, #20
 80043a4:	e28d200c 	add	r2, sp, #12
 80043a8:	e58d2000 	str	r2, [sp]
 80043ac:	e1a03001 	mov	r3, r1
 80043b0:	e3a0200c 	mov	r2, #12
 80043b4:	ebfffcd1 	bl	8003700 <_Unwind_VRS_Get>
 80043b8:	e59d000c 	ldr	r0, [sp, #12]
 80043bc:	e28dd014 	add	sp, sp, #20
 80043c0:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 80043c4:	e12fff1e 	bx	lr

080043c8 <unwind_UCB_from_context>:
 80043c8:	eafffff2 	b	8004398 <_Unwind_GetGR.constprop.0>

080043cc <__gnu_unwind_execute>:
 80043cc:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
 80043d0:	e1a07000 	mov	r7, r0
 80043d4:	e1a05001 	mov	r5, r1
 80043d8:	e3a08000 	mov	r8, #0
 80043dc:	e24dd010 	sub	sp, sp, #16
 80043e0:	e1a00005 	mov	r0, r5
 80043e4:	ebffffd3 	bl	8004338 <next_unwind_byte>
 80043e8:	e35000b0 	cmp	r0, #176	; 0xb0
 80043ec:	e1a04000 	mov	r4, r0
 80043f0:	0a00007d 	beq	80045ec <__gnu_unwind_execute+0x220>
 80043f4:	e2101080 	ands	r1, r0, #128	; 0x80
 80043f8:	0a00001a 	beq	8004468 <__gnu_unwind_execute+0x9c>
 80043fc:	e20030f0 	and	r3, r0, #240	; 0xf0
 8004400:	e3530080 	cmp	r3, #128	; 0x80
 8004404:	0a000054 	beq	800455c <__gnu_unwind_execute+0x190>
 8004408:	e3530090 	cmp	r3, #144	; 0x90
 800440c:	0a00002b 	beq	80044c0 <__gnu_unwind_execute+0xf4>
 8004410:	e35300a0 	cmp	r3, #160	; 0xa0
 8004414:	0a000034 	beq	80044ec <__gnu_unwind_execute+0x120>
 8004418:	e35300b0 	cmp	r3, #176	; 0xb0
 800441c:	0a000040 	beq	8004524 <__gnu_unwind_execute+0x158>
 8004420:	e35300c0 	cmp	r3, #192	; 0xc0
 8004424:	0a00005e 	beq	80045a4 <__gnu_unwind_execute+0x1d8>
 8004428:	e20030f8 	and	r3, r0, #248	; 0xf8
 800442c:	e35300d0 	cmp	r3, #208	; 0xd0
 8004430:	1a000008 	bne	8004458 <__gnu_unwind_execute+0x8c>
 8004434:	e2002007 	and	r2, r0, #7
 8004438:	e2822001 	add	r2, r2, #1
 800443c:	e3822702 	orr	r2, r2, #524288	; 0x80000
 8004440:	e1a00007 	mov	r0, r7
 8004444:	e3a01001 	mov	r1, #1
 8004448:	e3a03005 	mov	r3, #5
 800444c:	ebfffe40 	bl	8003d54 <_Unwind_VRS_Pop>
 8004450:	e3500000 	cmp	r0, #0
 8004454:	0affffe1 	beq	80043e0 <__gnu_unwind_execute+0x14>
 8004458:	e3a00009 	mov	r0, #9
 800445c:	e28dd010 	add	sp, sp, #16
 8004460:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
 8004464:	e12fff1e 	bx	lr
 8004468:	e28d300c 	add	r3, sp, #12
 800446c:	e1a06100 	lsl	r6, r0, #2
 8004470:	e58d3000 	str	r3, [sp]
 8004474:	e1a00007 	mov	r0, r7
 8004478:	e1a03001 	mov	r3, r1
 800447c:	e3a0200d 	mov	r2, #13
 8004480:	ebfffc9e 	bl	8003700 <_Unwind_VRS_Get>
 8004484:	e20660ff 	and	r6, r6, #255	; 0xff
 8004488:	e59d300c 	ldr	r3, [sp, #12]
 800448c:	e2866004 	add	r6, r6, #4
 8004490:	e3140040 	tst	r4, #64	; 0x40
 8004494:	10666003 	rsbne	r6, r6, r3
 8004498:	00836006 	addeq	r6, r3, r6
 800449c:	e58d600c 	str	r6, [sp, #12]
 80044a0:	e3a01000 	mov	r1, #0
 80044a4:	e28d300c 	add	r3, sp, #12
 80044a8:	e58d3000 	str	r3, [sp]
 80044ac:	e1a00007 	mov	r0, r7
 80044b0:	e1a03001 	mov	r3, r1
 80044b4:	e3a0200d 	mov	r2, #13
 80044b8:	ebfffcb3 	bl	800378c <_Unwind_VRS_Set>
 80044bc:	eaffffc7 	b	80043e0 <__gnu_unwind_execute+0x14>
 80044c0:	e200300d 	and	r3, r0, #13
 80044c4:	e353000d 	cmp	r3, #13
 80044c8:	0affffe2 	beq	8004458 <__gnu_unwind_execute+0x8c>
 80044cc:	e3a01000 	mov	r1, #0
 80044d0:	e28d300c 	add	r3, sp, #12
 80044d4:	e58d3000 	str	r3, [sp]
 80044d8:	e200200f 	and	r2, r0, #15
 80044dc:	e1a03001 	mov	r3, r1
 80044e0:	e1a00007 	mov	r0, r7
 80044e4:	ebfffc85 	bl	8003700 <_Unwind_VRS_Get>
 80044e8:	eaffffec 	b	80044a0 <__gnu_unwind_execute+0xd4>
 80044ec:	e1e02000 	mvn	r2, r0
 80044f0:	e3a03eff 	mov	r3, #4080	; 0xff0
 80044f4:	e3a01000 	mov	r1, #0
 80044f8:	e2022007 	and	r2, r2, #7
 80044fc:	e1a02253 	asr	r2, r3, r2
 8004500:	e3100008 	tst	r0, #8
 8004504:	e0022003 	and	r2, r2, r3
 8004508:	13822901 	orrne	r2, r2, #16384	; 0x4000
 800450c:	e1a03001 	mov	r3, r1
 8004510:	e1a00007 	mov	r0, r7
 8004514:	ebfffe0e 	bl	8003d54 <_Unwind_VRS_Pop>
 8004518:	e3500000 	cmp	r0, #0
 800451c:	1affffcd 	bne	8004458 <__gnu_unwind_execute+0x8c>
 8004520:	eaffffae 	b	80043e0 <__gnu_unwind_execute+0x14>
 8004524:	e35000b1 	cmp	r0, #177	; 0xb1
 8004528:	0a000041 	beq	8004634 <__gnu_unwind_execute+0x268>
 800452c:	e35000b2 	cmp	r0, #178	; 0xb2
 8004530:	0a00004b 	beq	8004664 <__gnu_unwind_execute+0x298>
 8004534:	e35000b3 	cmp	r0, #179	; 0xb3
 8004538:	0a00006b 	beq	80046ec <__gnu_unwind_execute+0x320>
 800453c:	e20030fc 	and	r3, r0, #252	; 0xfc
 8004540:	e35300b4 	cmp	r3, #180	; 0xb4
 8004544:	0affffc3 	beq	8004458 <__gnu_unwind_execute+0x8c>
 8004548:	e3a01001 	mov	r1, #1
 800454c:	e2002007 	and	r2, r0, #7
 8004550:	e0822001 	add	r2, r2, r1
 8004554:	e3822702 	orr	r2, r2, #524288	; 0x80000
 8004558:	eaffffeb 	b	800450c <__gnu_unwind_execute+0x140>
 800455c:	e1a00005 	mov	r0, r5
 8004560:	ebffff74 	bl	8004338 <next_unwind_byte>
 8004564:	e1a04404 	lsl	r4, r4, #8
 8004568:	e1804004 	orr	r4, r0, r4
 800456c:	e3540902 	cmp	r4, #32768	; 0x8000
 8004570:	0affffb8 	beq	8004458 <__gnu_unwind_execute+0x8c>
 8004574:	e3a01000 	mov	r1, #0
 8004578:	e1a02a04 	lsl	r2, r4, #20
 800457c:	e1a03001 	mov	r3, r1
 8004580:	e1a02822 	lsr	r2, r2, #16
 8004584:	e1a00007 	mov	r0, r7
 8004588:	ebfffdf1 	bl	8003d54 <_Unwind_VRS_Pop>
 800458c:	e3500000 	cmp	r0, #0
 8004590:	e1a04204 	lsl	r4, r4, #4
 8004594:	1affffaf 	bne	8004458 <__gnu_unwind_execute+0x8c>
 8004598:	e3140902 	tst	r4, #32768	; 0x8000
 800459c:	13a08001 	movne	r8, #1
 80045a0:	eaffff8e 	b	80043e0 <__gnu_unwind_execute+0x14>
 80045a4:	e35000c6 	cmp	r0, #198	; 0xc6
 80045a8:	0a000057 	beq	800470c <__gnu_unwind_execute+0x340>
 80045ac:	e35000c7 	cmp	r0, #199	; 0xc7
 80045b0:	0a00005d 	beq	800472c <__gnu_unwind_execute+0x360>
 80045b4:	e20030f8 	and	r3, r0, #248	; 0xf8
 80045b8:	e35300c0 	cmp	r3, #192	; 0xc0
 80045bc:	0a000066 	beq	800475c <__gnu_unwind_execute+0x390>
 80045c0:	e35000c8 	cmp	r0, #200	; 0xc8
 80045c4:	0a000069 	beq	8004770 <__gnu_unwind_execute+0x3a4>
 80045c8:	e35000c9 	cmp	r0, #201	; 0xc9
 80045cc:	1affffa1 	bne	8004458 <__gnu_unwind_execute+0x8c>
 80045d0:	e1a00005 	mov	r0, r5
 80045d4:	ebffff57 	bl	8004338 <next_unwind_byte>
 80045d8:	e200200f 	and	r2, r0, #15
 80045dc:	e2822001 	add	r2, r2, #1
 80045e0:	e20000f0 	and	r0, r0, #240	; 0xf0
 80045e4:	e1822600 	orr	r2, r2, r0, lsl #12
 80045e8:	eaffff94 	b	8004440 <__gnu_unwind_execute+0x74>
 80045ec:	e3580000 	cmp	r8, #0
 80045f0:	13a00000 	movne	r0, #0
 80045f4:	1affff98 	bne	800445c <__gnu_unwind_execute+0x90>
 80045f8:	e28d400c 	add	r4, sp, #12
 80045fc:	e1a01008 	mov	r1, r8
 8004600:	e3a0200e 	mov	r2, #14
 8004604:	e1a03008 	mov	r3, r8
 8004608:	e58d4000 	str	r4, [sp]
 800460c:	e1a00007 	mov	r0, r7
 8004610:	ebfffc3a 	bl	8003700 <_Unwind_VRS_Get>
 8004614:	e58d4000 	str	r4, [sp]
 8004618:	e1a00007 	mov	r0, r7
 800461c:	e1a01008 	mov	r1, r8
 8004620:	e3a0200f 	mov	r2, #15
 8004624:	e1a03008 	mov	r3, r8
 8004628:	ebfffc57 	bl	800378c <_Unwind_VRS_Set>
 800462c:	e1a00008 	mov	r0, r8
 8004630:	eaffff89 	b	800445c <__gnu_unwind_execute+0x90>
 8004634:	e1a00005 	mov	r0, r5
 8004638:	ebffff3e 	bl	8004338 <next_unwind_byte>
 800463c:	e2502000 	subs	r2, r0, #0
 8004640:	0affff84 	beq	8004458 <__gnu_unwind_execute+0x8c>
 8004644:	e21210f0 	ands	r1, r2, #240	; 0xf0
 8004648:	1affff82 	bne	8004458 <__gnu_unwind_execute+0x8c>
 800464c:	e1a00007 	mov	r0, r7
 8004650:	e1a03001 	mov	r3, r1
 8004654:	ebfffdbe 	bl	8003d54 <_Unwind_VRS_Pop>
 8004658:	e3500000 	cmp	r0, #0
 800465c:	1affff7d 	bne	8004458 <__gnu_unwind_execute+0x8c>
 8004660:	eaffff5e 	b	80043e0 <__gnu_unwind_execute+0x14>
 8004664:	e3a01000 	mov	r1, #0
 8004668:	e28d300c 	add	r3, sp, #12
 800466c:	e58d3000 	str	r3, [sp]
 8004670:	e3a0200d 	mov	r2, #13
 8004674:	e1a03001 	mov	r3, r1
 8004678:	e1a00007 	mov	r0, r7
 800467c:	ebfffc1f 	bl	8003700 <_Unwind_VRS_Get>
 8004680:	e1a00005 	mov	r0, r5
 8004684:	ebffff2b 	bl	8004338 <next_unwind_byte>
 8004688:	e3100080 	tst	r0, #128	; 0x80
 800468c:	e3a04002 	mov	r4, #2
 8004690:	0a000008 	beq	80046b8 <__gnu_unwind_execute+0x2ec>
 8004694:	e59d300c 	ldr	r3, [sp, #12]
 8004698:	e200007f 	and	r0, r0, #127	; 0x7f
 800469c:	e0833410 	add	r3, r3, r0, lsl r4
 80046a0:	e1a00005 	mov	r0, r5
 80046a4:	e58d300c 	str	r3, [sp, #12]
 80046a8:	ebffff22 	bl	8004338 <next_unwind_byte>
 80046ac:	e3100080 	tst	r0, #128	; 0x80
 80046b0:	e2844007 	add	r4, r4, #7
 80046b4:	1afffff6 	bne	8004694 <__gnu_unwind_execute+0x2c8>
 80046b8:	e3a01000 	mov	r1, #0
 80046bc:	e59d300c 	ldr	r3, [sp, #12]
 80046c0:	e28d200c 	add	r2, sp, #12
 80046c4:	e200007f 	and	r0, r0, #127	; 0x7f
 80046c8:	e2833f81 	add	r3, r3, #516	; 0x204
 80046cc:	e0834410 	add	r4, r3, r0, lsl r4
 80046d0:	e58d2000 	str	r2, [sp]
 80046d4:	e1a03001 	mov	r3, r1
 80046d8:	e1a00007 	mov	r0, r7
 80046dc:	e3a0200d 	mov	r2, #13
 80046e0:	e58d400c 	str	r4, [sp, #12]
 80046e4:	ebfffc28 	bl	800378c <_Unwind_VRS_Set>
 80046e8:	eaffff3c 	b	80043e0 <__gnu_unwind_execute+0x14>
 80046ec:	e1a00005 	mov	r0, r5
 80046f0:	ebffff10 	bl	8004338 <next_unwind_byte>
 80046f4:	e3a01001 	mov	r1, #1
 80046f8:	e200200f 	and	r2, r0, #15
 80046fc:	e0822001 	add	r2, r2, r1
 8004700:	e20000f0 	and	r0, r0, #240	; 0xf0
 8004704:	e1822600 	orr	r2, r2, r0, lsl #12
 8004708:	eaffff7f 	b	800450c <__gnu_unwind_execute+0x140>
 800470c:	e1a00005 	mov	r0, r5
 8004710:	ebffff08 	bl	8004338 <next_unwind_byte>
 8004714:	e200200f 	and	r2, r0, #15
 8004718:	e2822001 	add	r2, r2, #1
 800471c:	e20000f0 	and	r0, r0, #240	; 0xf0
 8004720:	e3a01003 	mov	r1, #3
 8004724:	e1822600 	orr	r2, r2, r0, lsl #12
 8004728:	eaffff77 	b	800450c <__gnu_unwind_execute+0x140>
 800472c:	e1a00005 	mov	r0, r5
 8004730:	ebffff00 	bl	8004338 <next_unwind_byte>
 8004734:	e2502000 	subs	r2, r0, #0
 8004738:	0affff46 	beq	8004458 <__gnu_unwind_execute+0x8c>
 800473c:	e21230f0 	ands	r3, r2, #240	; 0xf0
 8004740:	1affff44 	bne	8004458 <__gnu_unwind_execute+0x8c>
 8004744:	e1a00007 	mov	r0, r7
 8004748:	e3a01004 	mov	r1, #4
 800474c:	ebfffd80 	bl	8003d54 <_Unwind_VRS_Pop>
 8004750:	e3500000 	cmp	r0, #0
 8004754:	1affff3f 	bne	8004458 <__gnu_unwind_execute+0x8c>
 8004758:	eaffff20 	b	80043e0 <__gnu_unwind_execute+0x14>
 800475c:	e200200f 	and	r2, r0, #15
 8004760:	e2822001 	add	r2, r2, #1
 8004764:	e3a01003 	mov	r1, #3
 8004768:	e382280a 	orr	r2, r2, #655360	; 0xa0000
 800476c:	eaffff66 	b	800450c <__gnu_unwind_execute+0x140>
 8004770:	e1a00005 	mov	r0, r5
 8004774:	ebfffeef 	bl	8004338 <next_unwind_byte>
 8004778:	e20020f0 	and	r2, r0, #240	; 0xf0
 800477c:	e200300f 	and	r3, r0, #15
 8004780:	e2822010 	add	r2, r2, #16
 8004784:	e2833001 	add	r3, r3, #1
 8004788:	e1832602 	orr	r2, r3, r2, lsl #12
 800478c:	eaffff2b 	b	8004440 <__gnu_unwind_execute+0x74>

08004790 <__gnu_unwind_frame>:
 8004790:	e3a0c003 	mov	ip, #3
 8004794:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 8004798:	e590304c 	ldr	r3, [r0, #76]	; 0x4c
 800479c:	e24dd014 	sub	sp, sp, #20
 80047a0:	e5932004 	ldr	r2, [r3, #4]
 80047a4:	e5cdc00c 	strb	ip, [sp, #12]
 80047a8:	e5d3c007 	ldrb	ip, [r3, #7]
 80047ac:	e1a02402 	lsl	r2, r2, #8
 80047b0:	e2833008 	add	r3, r3, #8
 80047b4:	e1a00001 	mov	r0, r1
 80047b8:	e28d1004 	add	r1, sp, #4
 80047bc:	e58d2004 	str	r2, [sp, #4]
 80047c0:	e5cdc00d 	strb	ip, [sp, #13]
 80047c4:	e58d3008 	str	r3, [sp, #8]
 80047c8:	ebfffeff 	bl	80043cc <__gnu_unwind_execute>
 80047cc:	e28dd014 	add	sp, sp, #20
 80047d0:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 80047d4:	e12fff1e 	bx	lr

080047d8 <_Unwind_GetRegionStart>:
 80047d8:	e92d4008 	push	{r3, lr}
 80047dc:	ebfffef9 	bl	80043c8 <unwind_UCB_from_context>
 80047e0:	e8bd4008 	pop	{r3, lr}
 80047e4:	e5900048 	ldr	r0, [r0, #72]	; 0x48
 80047e8:	e12fff1e 	bx	lr

080047ec <_Unwind_GetLanguageSpecificData>:
 80047ec:	e92d4008 	push	{r3, lr}
 80047f0:	ebfffef4 	bl	80043c8 <unwind_UCB_from_context>
 80047f4:	e590304c 	ldr	r3, [r0, #76]	; 0x4c
 80047f8:	e5d30007 	ldrb	r0, [r3, #7]
 80047fc:	e0830100 	add	r0, r3, r0, lsl #2
 8004800:	e2800008 	add	r0, r0, #8
 8004804:	e8bd4008 	pop	{r3, lr}
 8004808:	e12fff1e 	bx	lr

0800480c <_Unwind_GetDataRelBase>:
 800480c:	e92d4008 	push	{r3, lr}
 8004810:	eb000001 	bl	800481c <abort>

08004814 <_Unwind_GetTextRelBase>:
 8004814:	e92d4008 	push	{r3, lr}
 8004818:	ebffffff 	bl	800481c <abort>

0800481c <abort>:
 800481c:	e92d4008 	push	{r3, lr}
 8004820:	e3a00006 	mov	r0, #6
 8004824:	eb000063 	bl	80049b8 <raise>
 8004828:	e3a00001 	mov	r0, #1
 800482c:	eb000086 	bl	8004a4c <_exit>

08004830 <memcpy>:
 8004830:	e352000f 	cmp	r2, #15
 8004834:	e92d4070 	push	{r4, r5, r6, lr}
 8004838:	9a000029 	bls	80048e4 <memcpy+0xb4>
 800483c:	e1803001 	orr	r3, r0, r1
 8004840:	e3130003 	tst	r3, #3
 8004844:	1a000031 	bne	8004910 <memcpy+0xe0>
 8004848:	e1a0e002 	mov	lr, r2
 800484c:	e280c010 	add	ip, r0, #16
 8004850:	e2813010 	add	r3, r1, #16
 8004854:	e5134010 	ldr	r4, [r3, #-16]
 8004858:	e50c4010 	str	r4, [ip, #-16]
 800485c:	e513400c 	ldr	r4, [r3, #-12]
 8004860:	e50c400c 	str	r4, [ip, #-12]
 8004864:	e5134008 	ldr	r4, [r3, #-8]
 8004868:	e50c4008 	str	r4, [ip, #-8]
 800486c:	e24ee010 	sub	lr, lr, #16
 8004870:	e5134004 	ldr	r4, [r3, #-4]
 8004874:	e35e000f 	cmp	lr, #15
 8004878:	e50c4004 	str	r4, [ip, #-4]
 800487c:	e2833010 	add	r3, r3, #16
 8004880:	e28cc010 	add	ip, ip, #16
 8004884:	8afffff2 	bhi	8004854 <memcpy+0x24>
 8004888:	e2423010 	sub	r3, r2, #16
 800488c:	e3c3300f 	bic	r3, r3, #15
 8004890:	e202600f 	and	r6, r2, #15
 8004894:	e2833010 	add	r3, r3, #16
 8004898:	e3560003 	cmp	r6, #3
 800489c:	e0811003 	add	r1, r1, r3
 80048a0:	e0803003 	add	r3, r0, r3
 80048a4:	9a00001b 	bls	8004918 <memcpy+0xe8>
 80048a8:	e1a04001 	mov	r4, r1
 80048ac:	e1a0c006 	mov	ip, r6
 80048b0:	e243e004 	sub	lr, r3, #4
 80048b4:	e24cc004 	sub	ip, ip, #4
 80048b8:	e4945004 	ldr	r5, [r4], #4
 80048bc:	e35c0003 	cmp	ip, #3
 80048c0:	e5ae5004 	str	r5, [lr, #4]!
 80048c4:	8afffffa 	bhi	80048b4 <memcpy+0x84>
 80048c8:	e246c004 	sub	ip, r6, #4
 80048cc:	e3ccc003 	bic	ip, ip, #3
 80048d0:	e28cc004 	add	ip, ip, #4
 80048d4:	e083300c 	add	r3, r3, ip
 80048d8:	e081100c 	add	r1, r1, ip
 80048dc:	e2022003 	and	r2, r2, #3
 80048e0:	ea000000 	b	80048e8 <memcpy+0xb8>
 80048e4:	e1a03000 	mov	r3, r0
 80048e8:	e3520000 	cmp	r2, #0
 80048ec:	0a000005 	beq	8004908 <memcpy+0xd8>
 80048f0:	e2433001 	sub	r3, r3, #1
 80048f4:	e0812002 	add	r2, r1, r2
 80048f8:	e4d1c001 	ldrb	ip, [r1], #1
 80048fc:	e1510002 	cmp	r1, r2
 8004900:	e5e3c001 	strb	ip, [r3, #1]!
 8004904:	1afffffb 	bne	80048f8 <memcpy+0xc8>
 8004908:	e8bd4070 	pop	{r4, r5, r6, lr}
 800490c:	e12fff1e 	bx	lr
 8004910:	e1a03000 	mov	r3, r0
 8004914:	eafffff5 	b	80048f0 <memcpy+0xc0>
 8004918:	e1a02006 	mov	r2, r6
 800491c:	eafffff1 	b	80048e8 <memcpy+0xb8>

08004920 <_raise_r>:
 8004920:	e351001f 	cmp	r1, #31
 8004924:	e92d4038 	push	{r3, r4, r5, lr}
 8004928:	e1a05000 	mov	r5, r0
 800492c:	83a03016 	movhi	r3, #22
 8004930:	83e00000 	mvnhi	r0, #0
 8004934:	85853000 	strhi	r3, [r5]
 8004938:	8a000013 	bhi	800498c <_raise_r+0x6c>
 800493c:	e59522dc 	ldr	r2, [r5, #732]	; 0x2dc
 8004940:	e3520000 	cmp	r2, #0
 8004944:	e1a04001 	mov	r4, r1
 8004948:	0a000013 	beq	800499c <_raise_r+0x7c>
 800494c:	e7923101 	ldr	r3, [r2, r1, lsl #2]
 8004950:	e3530000 	cmp	r3, #0
 8004954:	0a000010 	beq	800499c <_raise_r+0x7c>
 8004958:	e3530001 	cmp	r3, #1
 800495c:	0a00000c 	beq	8004994 <_raise_r+0x74>
 8004960:	e3730001 	cmn	r3, #1
 8004964:	03a03016 	moveq	r3, #22
 8004968:	03a00001 	moveq	r0, #1
 800496c:	05853000 	streq	r3, [r5]
 8004970:	0a000005 	beq	800498c <_raise_r+0x6c>
 8004974:	e3a05000 	mov	r5, #0
 8004978:	e1a00001 	mov	r0, r1
 800497c:	e7825101 	str	r5, [r2, r1, lsl #2]
 8004980:	e1a0e00f 	mov	lr, pc
 8004984:	e12fff13 	bx	r3
 8004988:	e1a00005 	mov	r0, r5
 800498c:	e8bd4038 	pop	{r3, r4, r5, lr}
 8004990:	e12fff1e 	bx	lr
 8004994:	e3a00000 	mov	r0, #0
 8004998:	eafffffb 	b	800498c <_raise_r+0x6c>
 800499c:	e1a00005 	mov	r0, r5
 80049a0:	eb000019 	bl	8004a0c <_getpid_r>
 80049a4:	e1a02004 	mov	r2, r4
 80049a8:	e1a01000 	mov	r1, r0
 80049ac:	e1a00005 	mov	r0, r5
 80049b0:	eb000005 	bl	80049cc <_kill_r>
 80049b4:	eafffff4 	b	800498c <_raise_r+0x6c>

080049b8 <raise>:
 80049b8:	e59f3008 	ldr	r3, [pc, #8]	; 80049c8 <raise+0x10>
 80049bc:	e1a01000 	mov	r1, r0
 80049c0:	e5930000 	ldr	r0, [r3]
 80049c4:	eaffffd5 	b	8004920 <_raise_r>
 80049c8:	20000528 	.word	0x20000528

080049cc <_kill_r>:
 80049cc:	e92d4038 	push	{r3, r4, r5, lr}
 80049d0:	e3a03000 	mov	r3, #0
 80049d4:	e59f402c 	ldr	r4, [pc, #44]	; 8004a08 <_kill_r+0x3c>
 80049d8:	e1a05000 	mov	r5, r0
 80049dc:	e1a00001 	mov	r0, r1
 80049e0:	e1a01002 	mov	r1, r2
 80049e4:	e5843000 	str	r3, [r4]
 80049e8:	eb000011 	bl	8004a34 <_kill>
 80049ec:	e3700001 	cmn	r0, #1
 80049f0:	1a000002 	bne	8004a00 <_kill_r+0x34>
 80049f4:	e5943000 	ldr	r3, [r4]
 80049f8:	e3530000 	cmp	r3, #0
 80049fc:	15853000 	strne	r3, [r5]
 8004a00:	e8bd4038 	pop	{r3, r4, r5, lr}
 8004a04:	e12fff1e 	bx	lr
 8004a08:	20001098 	.word	0x20001098

08004a0c <_getpid_r>:
 8004a0c:	e92d4008 	push	{r3, lr}
 8004a10:	eb000001 	bl	8004a1c <_getpid>
 8004a14:	e8bd4008 	pop	{r3, lr}
 8004a18:	e12fff1e 	bx	lr

08004a1c <_getpid>:
 8004a1c:	e3a02058 	mov	r2, #88	; 0x58
 8004a20:	e59f3008 	ldr	r3, [pc, #8]	; 8004a30 <_getpid+0x14>
 8004a24:	e3e00000 	mvn	r0, #0
 8004a28:	e5832000 	str	r2, [r3]
 8004a2c:	e12fff1e 	bx	lr
 8004a30:	20001098 	.word	0x20001098

08004a34 <_kill>:
 8004a34:	e3a02058 	mov	r2, #88	; 0x58
 8004a38:	e59f3008 	ldr	r3, [pc, #8]	; 8004a48 <_kill+0x14>
 8004a3c:	e3e00000 	mvn	r0, #0
 8004a40:	e5832000 	str	r2, [r3]
 8004a44:	e12fff1e 	bx	lr
 8004a48:	20001098 	.word	0x20001098

08004a4c <_exit>:
 8004a4c:	eafffffe 	b	8004a4c <_exit>

08004a50 <_init>:
 8004a50:	e1a0c00d 	mov	ip, sp
 8004a54:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
 8004a58:	e24cb004 	sub	fp, ip, #4
 8004a5c:	e24bd028 	sub	sp, fp, #40	; 0x28
 8004a60:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
 8004a64:	e12fff1e 	bx	lr

08004a68 <_fini>:
 8004a68:	e1a0c00d 	mov	ip, sp
 8004a6c:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
 8004a70:	e24cb004 	sub	fp, ip, #4
 8004a74:	e24bd028 	sub	sp, fp, #40	; 0x28
 8004a78:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
 8004a7c:	e12fff1e 	bx	lr
 8004a80:	453e3e3e 	.word	0x453e3e3e
 8004a84:	72652020 	.word	0x72652020
 8004a88:	20726f72 	.word	0x20726f72
 8004a8c:	65646f63 	.word	0x65646f63
 8004a90:	3a752520 	.word	0x3a752520
 8004a94:	000a7525 	.word	0x000a7525
 8004a98:	433e3e3e 	.word	0x433e3e3e
 8004a9c:	69250020 	.word	0x69250020
 8004aa0:	20692520 	.word	0x20692520
 8004aa4:	25206925 	.word	0x25206925
 8004aa8:	25002069 	.word	0x25002069
 8004aac:	69252069 	.word	0x69252069
 8004ab0:	20752520 	.word	0x20752520
 8004ab4:	00206925 	.word	0x00206925
 8004ab8:	3e000a0a 	.word	0x3e000a0a
 8004abc:	204c3e3e 	.word	0x204c3e3e
 8004ac0:	20692500 	.word	0x20692500
 8004ac4:	25206925 	.word	0x25206925
 8004ac8:	75252075 	.word	0x75252075
 8004acc:	3e3e0020 	.word	0x3e3e0020
 8004ad0:	00204f3e 	.word	0x00204f3e
 8004ad4:	493e3e3e 	.word	0x493e3e3e
 8004ad8:	3e3e0020 	.word	0x3e3e0020
 8004adc:	0a002053 	.word	0x0a002053
 8004ae0:	636c6577 	.word	0x636c6577
 8004ae4:	20656d6f 	.word	0x20656d6f
 8004ae8:	53206f74 	.word	0x53206f74
 8004aec:	68757a75 	.word	0x68757a75
 8004af0:	20534f61 	.word	0x20534f61
 8004af4:	205e5f5e 	.word	0x205e5f5e
 8004af8:	2e302e32 	.word	0x2e302e32
 8004afc:	55420a36 	.word	0x55420a36
 8004b00:	20444c49 	.word	0x20444c49
 8004b04:	206e754a 	.word	0x206e754a
 8004b08:	32203731 	.word	0x32203731
 8004b0c:	20363130 	.word	0x20363130
 8004b10:	333a3132 	.word	0x333a3132
 8004b14:	35323a34 	.word	0x35323a34
 8004b18:	6e65000a 	.word	0x6e65000a
 8004b1c:	65646f63 	.word	0x65646f63
 8004b20:	25207372 	.word	0x25207372
 8004b24:	75252075 	.word	0x75252075
 8004b28:	2c752520 	.word	0x2c752520
 8004b2c:	77617920 	.word	0x77617920
 8004b30:	0a692520 	.word	0x0a692520
 8004b34:	00          	.byte	0x00
 8004b35:	73          	.byte	0x73
 8004b36:	6474      	.short	0x6474
 8004b38:	69206f69 	.word	0x69206f69
 8004b3c:	2074696e 	.word	0x2074696e
 8004b40:	656e6f64 	.word	0x656e6f64
 8004b44:	0000000a 	.word	0x0000000a
 8004b48:	00000043 	.word	0x00000043

08004b4c <__EH_FRAME_BEGIN__>:
 8004b4c:	00000000                                ....
