
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
 80001c6:	f002 bc2b 	b.w	8002a20 <drv8834_run>

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
 80001e0:	f001 fc90 	bl	8001b04 <rgb_get>
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
 800020e:	f001 fc79 	bl	8001b04 <rgb_get>
 8000212:	ea4f 0a45 	mov.w	sl, r5, lsl #1
 8000216:	4450      	add	r0, sl
 8000218:	4b87      	ldr	r3, [pc, #540]	; (8000438 <_ZN6CRobot16line_sensor_readEv+0x264>)
 800021a:	f853 2025 	ldr.w	r2, [r3, r5, lsl #2]
 800021e:	8ec3      	ldrh	r3, [r0, #54]	; 0x36
 8000220:	1a9b      	subs	r3, r3, r2
 8000222:	86c3      	strh	r3, [r0, #54]	; 0x36
 8000224:	f001 fc6e 	bl	8001b04 <rgb_get>
 8000228:	4b84      	ldr	r3, [pc, #528]	; (800043c <_ZN6CRobot16line_sensor_readEv+0x268>)
 800022a:	f853 2025 	ldr.w	r2, [r3, r5, lsl #2]
 800022e:	f830 3015 	ldrh.w	r3, [r0, r5, lsl #1]
 8000232:	1a9b      	subs	r3, r3, r2
 8000234:	f820 3015 	strh.w	r3, [r0, r5, lsl #1]
 8000238:	f001 fc64 	bl	8001b04 <rgb_get>
 800023c:	4b80      	ldr	r3, [pc, #512]	; (8000440 <_ZN6CRobot16line_sensor_readEv+0x26c>)
 800023e:	4450      	add	r0, sl
 8000240:	f853 2025 	ldr.w	r2, [r3, r5, lsl #2]
 8000244:	8a43      	ldrh	r3, [r0, #18]
 8000246:	1a9b      	subs	r3, r3, r2
 8000248:	8243      	strh	r3, [r0, #18]
 800024a:	f001 fc5b 	bl	8001b04 <rgb_get>
 800024e:	4b7d      	ldr	r3, [pc, #500]	; (8000444 <_ZN6CRobot16line_sensor_readEv+0x270>)
 8000250:	4450      	add	r0, sl
 8000252:	f853 2025 	ldr.w	r2, [r3, r5, lsl #2]
 8000256:	8c83      	ldrh	r3, [r0, #36]	; 0x24
 8000258:	1a9b      	subs	r3, r3, r2
 800025a:	8483      	strh	r3, [r0, #36]	; 0x24
 800025c:	f001 fc52 	bl	8001b04 <rgb_get>
 8000260:	eb00 0045 	add.w	r0, r0, r5, lsl #1
 8000264:	f9b0 3036 	ldrsh.w	r3, [r0, #54]	; 0x36
 8000268:	4499      	add	r9, r3
 800026a:	f001 fc4b 	bl	8001b04 <rgb_get>
 800026e:	f930 3015 	ldrsh.w	r3, [r0, r5, lsl #1]
 8000272:	4498      	add	r8, r3
 8000274:	f001 fc46 	bl	8001b04 <rgb_get>
 8000278:	eb00 0045 	add.w	r0, r0, r5, lsl #1
 800027c:	f9b0 3012 	ldrsh.w	r3, [r0, #18]
 8000280:	441f      	add	r7, r3
 8000282:	f001 fc3f 	bl	8001b04 <rgb_get>
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
 80002a8:	f001 fc2c 	bl	8001b04 <rgb_get>
 80002ac:	4682      	mov	sl, r0
 80002ae:	f001 fc29 	bl	8001b04 <rgb_get>
 80002b2:	f106 0318 	add.w	r3, r6, #24
 80002b6:	005b      	lsls	r3, r3, #1
 80002b8:	4418      	add	r0, r3
 80002ba:	449a      	add	sl, r3
 80002bc:	88c3      	ldrh	r3, [r0, #6]
 80002be:	ebc3 0309 	rsb	r3, r3, r9
 80002c2:	f8aa 3006 	strh.w	r3, [sl, #6]
 80002c6:	f001 fc1d 	bl	8001b04 <rgb_get>
 80002ca:	4682      	mov	sl, r0
 80002cc:	f001 fc1a 	bl	8001b04 <rgb_get>
 80002d0:	f830 3016 	ldrh.w	r3, [r0, r6, lsl #1]
 80002d4:	ebc8 0303 	rsb	r3, r8, r3
 80002d8:	f82a 3016 	strh.w	r3, [sl, r6, lsl #1]
 80002dc:	f001 fc12 	bl	8001b04 <rgb_get>
 80002e0:	4682      	mov	sl, r0
 80002e2:	f001 fc0f 	bl	8001b04 <rgb_get>
 80002e6:	f106 0308 	add.w	r3, r6, #8
 80002ea:	005b      	lsls	r3, r3, #1
 80002ec:	4418      	add	r0, r3
 80002ee:	449a      	add	sl, r3
 80002f0:	8843      	ldrh	r3, [r0, #2]
 80002f2:	1bdb      	subs	r3, r3, r7
 80002f4:	f8aa 3002 	strh.w	r3, [sl, #2]
 80002f8:	f001 fc04 	bl	8001b04 <rgb_get>
 80002fc:	4682      	mov	sl, r0
 80002fe:	f001 fc01 	bl	8001b04 <rgb_get>
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
 8000320:	f001 fbf0 	bl	8001b04 <rgb_get>
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
 8000450:	f001 fb5c 	bl	8001b0c <rgb_read>
 8000454:	4620      	mov	r0, r4
 8000456:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800045a:	f7ff bebb 	b.w	80001d4 <_ZN6CRobot16line_sensor_readEv>

0800045e <_ZN6CRobot16line_sensor_initEv>:
 800045e:	b538      	push	{r3, r4, r5, lr}
 8000460:	4604      	mov	r4, r0
 8000462:	2500      	movs	r5, #0
 8000464:	f001 fb0c 	bl	8001a80 <rgb_init>
 8000468:	f001 fb50 	bl	8001b0c <rgb_read>
 800046c:	2192      	movs	r1, #146	; 0x92
 800046e:	2072      	movs	r0, #114	; 0x72
 8000470:	f104 025c 	add.w	r2, r4, #92	; 0x5c
 8000474:	f001 fae9 	bl	8001a4a <rgb_i2c_read_reg>
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
 80004ba:	f002 f974 	bl	80027a6 <i2c_read_reg>
 80004be:	2129      	movs	r1, #41	; 0x29
 80004c0:	4605      	mov	r5, r0
 80004c2:	20d4      	movs	r0, #212	; 0xd4
 80004c4:	f002 f96f 	bl	80027a6 <i2c_read_reg>
 80004c8:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 80004cc:	f8a4 0094 	strh.w	r0, [r4, #148]	; 0x94
 80004d0:	212a      	movs	r1, #42	; 0x2a
 80004d2:	20d4      	movs	r0, #212	; 0xd4
 80004d4:	f002 f967 	bl	80027a6 <i2c_read_reg>
 80004d8:	212b      	movs	r1, #43	; 0x2b
 80004da:	4605      	mov	r5, r0
 80004dc:	20d4      	movs	r0, #212	; 0xd4
 80004de:	f002 f962 	bl	80027a6 <i2c_read_reg>
 80004e2:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 80004e6:	f8a4 0096 	strh.w	r0, [r4, #150]	; 0x96
 80004ea:	212c      	movs	r1, #44	; 0x2c
 80004ec:	20d4      	movs	r0, #212	; 0xd4
 80004ee:	f002 f95a 	bl	80027a6 <i2c_read_reg>
 80004f2:	212d      	movs	r1, #45	; 0x2d
 80004f4:	4605      	mov	r5, r0
 80004f6:	20d4      	movs	r0, #212	; 0xd4
 80004f8:	f002 f955 	bl	80027a6 <i2c_read_reg>
 80004fc:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000500:	f8a4 0098 	strh.w	r0, [r4, #152]	; 0x98
 8000504:	2108      	movs	r1, #8
 8000506:	203c      	movs	r0, #60	; 0x3c
 8000508:	f002 f94d 	bl	80027a6 <i2c_read_reg>
 800050c:	2109      	movs	r1, #9
 800050e:	4605      	mov	r5, r0
 8000510:	203c      	movs	r0, #60	; 0x3c
 8000512:	f002 f948 	bl	80027a6 <i2c_read_reg>
 8000516:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 800051a:	f8a4 008e 	strh.w	r0, [r4, #142]	; 0x8e
 800051e:	210a      	movs	r1, #10
 8000520:	203c      	movs	r0, #60	; 0x3c
 8000522:	f002 f940 	bl	80027a6 <i2c_read_reg>
 8000526:	210b      	movs	r1, #11
 8000528:	4605      	mov	r5, r0
 800052a:	203c      	movs	r0, #60	; 0x3c
 800052c:	f002 f93b 	bl	80027a6 <i2c_read_reg>
 8000530:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000534:	f8a4 0090 	strh.w	r0, [r4, #144]	; 0x90
 8000538:	210c      	movs	r1, #12
 800053a:	203c      	movs	r0, #60	; 0x3c
 800053c:	f002 f933 	bl	80027a6 <i2c_read_reg>
 8000540:	210d      	movs	r1, #13
 8000542:	4605      	mov	r5, r0
 8000544:	203c      	movs	r0, #60	; 0x3c
 8000546:	f002 f92e 	bl	80027a6 <i2c_read_reg>
 800054a:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 800054e:	f8a4 0092 	strh.w	r0, [r4, #146]	; 0x92
 8000552:	2128      	movs	r1, #40	; 0x28
 8000554:	203c      	movs	r0, #60	; 0x3c
 8000556:	f002 f926 	bl	80027a6 <i2c_read_reg>
 800055a:	2129      	movs	r1, #41	; 0x29
 800055c:	4605      	mov	r5, r0
 800055e:	203c      	movs	r0, #60	; 0x3c
 8000560:	f002 f921 	bl	80027a6 <i2c_read_reg>
 8000564:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000568:	f8a4 0088 	strh.w	r0, [r4, #136]	; 0x88
 800056c:	212a      	movs	r1, #42	; 0x2a
 800056e:	203c      	movs	r0, #60	; 0x3c
 8000570:	f002 f919 	bl	80027a6 <i2c_read_reg>
 8000574:	212b      	movs	r1, #43	; 0x2b
 8000576:	4605      	mov	r5, r0
 8000578:	203c      	movs	r0, #60	; 0x3c
 800057a:	f002 f914 	bl	80027a6 <i2c_read_reg>
 800057e:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000582:	f8a4 008a 	strh.w	r0, [r4, #138]	; 0x8a
 8000586:	212c      	movs	r1, #44	; 0x2c
 8000588:	203c      	movs	r0, #60	; 0x3c
 800058a:	f002 f90c 	bl	80027a6 <i2c_read_reg>
 800058e:	212d      	movs	r1, #45	; 0x2d
 8000590:	4605      	mov	r5, r0
 8000592:	203c      	movs	r0, #60	; 0x3c
 8000594:	f002 f907 	bl	80027a6 <i2c_read_reg>
 8000598:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 800059c:	f8a4 008c 	strh.w	r0, [r4, #140]	; 0x8c
 80005a0:	2105      	movs	r1, #5
 80005a2:	203c      	movs	r0, #60	; 0x3c
 80005a4:	f002 f8ff 	bl	80027a6 <i2c_read_reg>
 80005a8:	2106      	movs	r1, #6
 80005aa:	4605      	mov	r5, r0
 80005ac:	203c      	movs	r0, #60	; 0x3c
 80005ae:	f002 f8fa 	bl	80027a6 <i2c_read_reg>
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
 800060e:	f002 f8ca 	bl	80027a6 <i2c_read_reg>
 8000612:	28d4      	cmp	r0, #212	; 0xd4
 8000614:	4605      	mov	r5, r0
 8000616:	d164      	bne.n	80006e2 <_ZN6CRobot12lsm9ds0_initEv+0xde>
 8000618:	203c      	movs	r0, #60	; 0x3c
 800061a:	210f      	movs	r1, #15
 800061c:	f002 f8c3 	bl	80027a6 <i2c_read_reg>
 8000620:	2849      	cmp	r0, #73	; 0x49
 8000622:	d160      	bne.n	80006e6 <_ZN6CRobot12lsm9ds0_initEv+0xe2>
 8000624:	4628      	mov	r0, r5
 8000626:	2120      	movs	r1, #32
 8000628:	22ff      	movs	r2, #255	; 0xff
 800062a:	f002 f8a9 	bl	8002780 <i2c_write_reg>
 800062e:	4628      	mov	r0, r5
 8000630:	2123      	movs	r1, #35	; 0x23
 8000632:	2210      	movs	r2, #16
 8000634:	f002 f8a4 	bl	8002780 <i2c_write_reg>
 8000638:	203c      	movs	r0, #60	; 0x3c
 800063a:	211f      	movs	r1, #31
 800063c:	2200      	movs	r2, #0
 800063e:	f002 f89f 	bl	8002780 <i2c_write_reg>
 8000642:	203c      	movs	r0, #60	; 0x3c
 8000644:	2120      	movs	r1, #32
 8000646:	2267      	movs	r2, #103	; 0x67
 8000648:	f002 f89a 	bl	8002780 <i2c_write_reg>
 800064c:	203c      	movs	r0, #60	; 0x3c
 800064e:	2121      	movs	r1, #33	; 0x21
 8000650:	2200      	movs	r2, #0
 8000652:	f002 f895 	bl	8002780 <i2c_write_reg>
 8000656:	203c      	movs	r0, #60	; 0x3c
 8000658:	2124      	movs	r1, #36	; 0x24
 800065a:	22f4      	movs	r2, #244	; 0xf4
 800065c:	f002 f890 	bl	8002780 <i2c_write_reg>
 8000660:	203c      	movs	r0, #60	; 0x3c
 8000662:	2125      	movs	r1, #37	; 0x25
 8000664:	2200      	movs	r2, #0
 8000666:	f002 f88b 	bl	8002780 <i2c_write_reg>
 800066a:	203c      	movs	r0, #60	; 0x3c
 800066c:	2126      	movs	r1, #38	; 0x26
 800066e:	2280      	movs	r2, #128	; 0x80
 8000670:	f002 f886 	bl	8002780 <i2c_write_reg>
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
 8000738:	f000 fe46 	bl	80013c8 <printf_>
 800073c:	2400      	movs	r4, #0
 800073e:	1ceb      	adds	r3, r5, #3
 8000740:	429c      	cmp	r4, r3
 8000742:	d20f      	bcs.n	8000764 <abort_error_+0x38>
 8000744:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8000748:	f002 fb2c 	bl	8002da4 <led_on>
 800074c:	2032      	movs	r0, #50	; 0x32
 800074e:	f001 fdaf 	bl	80022b0 <timer_delay_ms>
 8000752:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8000756:	f002 fb2f 	bl	8002db8 <led_off>
 800075a:	2064      	movs	r0, #100	; 0x64
 800075c:	f001 fda8 	bl	80022b0 <timer_delay_ms>
 8000760:	3401      	adds	r4, #1
 8000762:	e7ec      	b.n	800073e <abort_error_+0x12>
 8000764:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 8000768:	f001 fda2 	bl	80022b0 <timer_delay_ms>
 800076c:	e7e1      	b.n	8000732 <abort_error_+0x6>
 800076e:	bf00      	nop
 8000770:	08004a30 	.word	0x08004a30

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
 80007a2:	4604      	mov	r4, r0
 80007a4:	ed2d 8b02 	vpush	{d8}
 80007a8:	250a      	movs	r5, #10
 80007aa:	6840      	ldr	r0, [r0, #4]
 80007ac:	ed9f 8a20 	vldr	s16, [pc, #128]	; 8000830 <_ZN9CObstacle12rotate_robotEi+0x90>
 80007b0:	434d      	muls	r5, r1
 80007b2:	f7ff fd0a 	bl	80001ca <_ZN6CRobot9reset_imuEv>
 80007b6:	6860      	ldr	r0, [r4, #4]
 80007b8:	f7ff fd01 	bl	80001be <_ZN6CRobot14get_imu_sensorEv>
 80007bc:	6883      	ldr	r3, [r0, #8]
 80007be:	ea85 72e5 	eor.w	r2, r5, r5, asr #31
 80007c2:	2b00      	cmp	r3, #0
 80007c4:	bfb8      	it	lt
 80007c6:	425b      	neglt	r3, r3
 80007c8:	eba2 72e5 	sub.w	r2, r2, r5, asr #31
 80007cc:	4293      	cmp	r3, r2
 80007ce:	da22      	bge.n	8000816 <_ZN9CObstacle12rotate_robotEi+0x76>
 80007d0:	eddf 7a18 	vldr	s15, [pc, #96]	; 8000834 <_ZN9CObstacle12rotate_robotEi+0x94>
 80007d4:	6860      	ldr	r0, [r4, #4]
 80007d6:	ee38 8a27 	vadd.f32	s16, s16, s15
 80007da:	eddf 7a17 	vldr	s15, [pc, #92]	; 8000838 <_ZN9CObstacle12rotate_robotEi+0x98>
 80007de:	eeb4 8a67 	vcmp.f32	s16, s15
 80007e2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80007e6:	bfc8      	it	gt
 80007e8:	eeb0 8a67 	vmovgt.f32	s16, s15
 80007ec:	eddf 7a13 	vldr	s15, [pc, #76]	; 800083c <_ZN9CObstacle12rotate_robotEi+0x9c>
 80007f0:	ee68 7a27 	vmul.f32	s15, s16, s15
 80007f4:	2d00      	cmp	r5, #0
 80007f6:	eefd 7ae7 	vcvt.s32.f32	s15, s15
 80007fa:	ee17 3a90 	vmov	r3, s15
 80007fe:	f1c3 0200 	rsb	r2, r3, #0
 8000802:	bfd6      	itet	le
 8000804:	4611      	movle	r1, r2
 8000806:	4619      	movgt	r1, r3
 8000808:	461a      	movle	r2, r3
 800080a:	f7ff fcda 	bl	80001c2 <_ZN6CRobot10set_motorsEii>
 800080e:	200a      	movs	r0, #10
 8000810:	f001 fd4e 	bl	80022b0 <timer_delay_ms>
 8000814:	e7cf      	b.n	80007b6 <_ZN9CObstacle12rotate_robotEi+0x16>
 8000816:	2100      	movs	r1, #0
 8000818:	6860      	ldr	r0, [r4, #4]
 800081a:	460a      	mov	r2, r1
 800081c:	f7ff fcd1 	bl	80001c2 <_ZN6CRobot10set_motorsEii>
 8000820:	ecbd 8b02 	vpop	{d8}
 8000824:	20c8      	movs	r0, #200	; 0xc8
 8000826:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 800082a:	f001 bd41 	b.w	80022b0 <timer_delay_ms>
 800082e:	bf00      	nop
 8000830:	00000000 	.word	0x00000000
 8000834:	3d23d70a 	.word	0x3d23d70a
 8000838:	3ecccccd 	.word	0x3ecccccd
 800083c:	42c80000 	.word	0x42c80000

08000840 <_ZN9CObstacle10go_forwardEijPFhvE>:
 8000840:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8000844:	460c      	mov	r4, r1
 8000846:	ed2d 8b06 	vpush	{d8-d10}
 800084a:	4605      	mov	r5, r0
 800084c:	4617      	mov	r7, r2
 800084e:	461e      	mov	r6, r3
 8000850:	f001 fd20 	bl	8002294 <timer_get_time>
 8000854:	ee07 4a90 	vmov	s15, r4
 8000858:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 800085c:	4680      	mov	r8, r0
 800085e:	eef5 7ac0 	vcmpe.f32	s15, #0.0
 8000862:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000866:	bf48      	it	mi
 8000868:	4264      	negmi	r4, r4
 800086a:	6868      	ldr	r0, [r5, #4]
 800086c:	bf4c      	ite	mi
 800086e:	eddf 9a31 	vldrmi	s19, [pc, #196]	; 8000934 <_ZN9CObstacle10go_forwardEijPFhvE+0xf4>
 8000872:	eddf 9a31 	vldrpl	s19, [pc, #196]	; 8000938 <_ZN9CObstacle10go_forwardEijPFhvE+0xf8>
 8000876:	f7ff fca8 	bl	80001ca <_ZN6CRobot9reset_imuEv>
 800087a:	2c00      	cmp	r4, #0
 800087c:	d04f      	beq.n	800091e <_ZN9CObstacle10go_forwardEijPFhvE+0xde>
 800087e:	eddf 8a2f 	vldr	s17, [pc, #188]	; 800093c <_ZN9CObstacle10go_forwardEijPFhvE+0xfc>
 8000882:	eeb0 8a68 	vmov.f32	s16, s17
 8000886:	eeb0 aa68 	vmov.f32	s20, s17
 800088a:	e004      	b.n	8000896 <_ZN9CObstacle10go_forwardEijPFhvE+0x56>
 800088c:	200a      	movs	r0, #10
 800088e:	f001 fd0f 	bl	80022b0 <timer_delay_ms>
 8000892:	eeb0 8a49 	vmov.f32	s16, s18
 8000896:	f001 fcfd 	bl	8002294 <timer_get_time>
 800089a:	eb08 0307 	add.w	r3, r8, r7
 800089e:	4298      	cmp	r0, r3
 80008a0:	d23d      	bcs.n	800091e <_ZN9CObstacle10go_forwardEijPFhvE+0xde>
 80008a2:	6868      	ldr	r0, [r5, #4]
 80008a4:	f7ff fc8b 	bl	80001be <_ZN6CRobot14get_imu_sensorEv>
 80008a8:	ed90 9a02 	vldr	s18, [r0, #8]
 80008ac:	eddf 7a24 	vldr	s15, [pc, #144]	; 8000940 <_ZN9CObstacle10go_forwardEijPFhvE+0x100>
 80008b0:	ed9f 7a24 	vldr	s14, [pc, #144]	; 8000944 <_ZN9CObstacle10go_forwardEijPFhvE+0x104>
 80008b4:	6868      	ldr	r0, [r5, #4]
 80008b6:	eeb8 9ac9 	vcvt.f32.s32	s18, s18
 80008ba:	ee3a 9a49 	vsub.f32	s18, s20, s18
 80008be:	ee39 8a48 	vsub.f32	s16, s18, s16
 80008c2:	ee28 8a27 	vmul.f32	s16, s16, s15
 80008c6:	eddf 7a20 	vldr	s15, [pc, #128]	; 8000948 <_ZN9CObstacle10go_forwardEijPFhvE+0x108>
 80008ca:	ee09 8a27 	vmla.f32	s16, s18, s15
 80008ce:	ee07 4a90 	vmov	s15, r4
 80008d2:	eef8 6ae7 	vcvt.f32.s32	s13, s15
 80008d6:	eddf 7a1d 	vldr	s15, [pc, #116]	; 800094c <_ZN9CObstacle10go_forwardEijPFhvE+0x10c>
 80008da:	ee66 7aa7 	vmul.f32	s15, s13, s15
 80008de:	ee48 7a87 	vmla.f32	s15, s17, s14
 80008e2:	eef4 7ae6 	vcmpe.f32	s15, s13
 80008e6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80008ea:	eef0 8a67 	vmov.f32	s17, s15
 80008ee:	bf48      	it	mi
 80008f0:	ee77 8a87 	vaddmi.f32	s17, s15, s14
 80008f4:	ee69 7aa8 	vmul.f32	s15, s19, s17
 80008f8:	ee37 7ac8 	vsub.f32	s14, s15, s16
 80008fc:	ee37 8a88 	vadd.f32	s16, s15, s16
 8000900:	eefd 7ac7 	vcvt.s32.f32	s15, s14
 8000904:	ee17 1a90 	vmov	r1, s15
 8000908:	eefd 7ac8 	vcvt.s32.f32	s15, s16
 800090c:	ee17 2a90 	vmov	r2, s15
 8000910:	f7ff fc57 	bl	80001c2 <_ZN6CRobot10set_motorsEii>
 8000914:	2e00      	cmp	r6, #0
 8000916:	d0b9      	beq.n	800088c <_ZN9CObstacle10go_forwardEijPFhvE+0x4c>
 8000918:	47b0      	blx	r6
 800091a:	2800      	cmp	r0, #0
 800091c:	d0b6      	beq.n	800088c <_ZN9CObstacle10go_forwardEijPFhvE+0x4c>
 800091e:	2000      	movs	r0, #0
 8000920:	4601      	mov	r1, r0
 8000922:	f002 f87d 	bl	8002a20 <drv8834_run>
 8000926:	ecbd 8b06 	vpop	{d8-d10}
 800092a:	2064      	movs	r0, #100	; 0x64
 800092c:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8000930:	f001 bcbe 	b.w	80022b0 <timer_delay_ms>
 8000934:	bf800000 	.word	0xbf800000
 8000938:	3f800000 	.word	0x3f800000
 800093c:	00000000 	.word	0x00000000
 8000940:	3dcccccd 	.word	0x3dcccccd
 8000944:	3f4ccccd 	.word	0x3f4ccccd
 8000948:	3cf5c28f 	.word	0x3cf5c28f
 800094c:	3e4ccccc 	.word	0x3e4ccccc

08000950 <_ZN9CObstacle18go_forward_encoderEijPFhvE>:
 8000950:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8000954:	1e0c      	subs	r4, r1, #0
 8000956:	ed2d 8b06 	vpush	{d8-d10}
 800095a:	4605      	mov	r5, r0
 800095c:	6840      	ldr	r0, [r0, #4]
 800095e:	bfb4      	ite	lt
 8000960:	eddf 9a30 	vldrlt	s19, [pc, #192]	; 8000a24 <_ZN9CObstacle18go_forward_encoderEijPFhvE+0xd4>
 8000964:	eddf 9a30 	vldrge	s19, [pc, #192]	; 8000a28 <_ZN9CObstacle18go_forward_encoderEijPFhvE+0xd8>
 8000968:	4617      	mov	r7, r2
 800096a:	461e      	mov	r6, r3
 800096c:	bfb8      	it	lt
 800096e:	4264      	neglt	r4, r4
 8000970:	f7ff fc2b 	bl	80001ca <_ZN6CRobot9reset_imuEv>
 8000974:	f002 fa56 	bl	8002e24 <encoder_get_distance>
 8000978:	4680      	mov	r8, r0
 800097a:	2c00      	cmp	r4, #0
 800097c:	d047      	beq.n	8000a0e <_ZN9CObstacle18go_forward_encoderEijPFhvE+0xbe>
 800097e:	ed9f 9a2b 	vldr	s18, [pc, #172]	; 8000a2c <_ZN9CObstacle18go_forward_encoderEijPFhvE+0xdc>
 8000982:	eeb0 8a49 	vmov.f32	s16, s18
 8000986:	eeb0 aa49 	vmov.f32	s20, s18
 800098a:	e004      	b.n	8000996 <_ZN9CObstacle18go_forward_encoderEijPFhvE+0x46>
 800098c:	200a      	movs	r0, #10
 800098e:	f001 fc8f 	bl	80022b0 <timer_delay_ms>
 8000992:	eeb0 8a68 	vmov.f32	s16, s17
 8000996:	f002 fa45 	bl	8002e24 <encoder_get_distance>
 800099a:	eb08 0307 	add.w	r3, r8, r7
 800099e:	4298      	cmp	r0, r3
 80009a0:	d235      	bcs.n	8000a0e <_ZN9CObstacle18go_forward_encoderEijPFhvE+0xbe>
 80009a2:	6868      	ldr	r0, [r5, #4]
 80009a4:	f7ff fc0b 	bl	80001be <_ZN6CRobot14get_imu_sensorEv>
 80009a8:	edd0 8a02 	vldr	s17, [r0, #8]
 80009ac:	eddf 7a20 	vldr	s15, [pc, #128]	; 8000a30 <_ZN9CObstacle18go_forward_encoderEijPFhvE+0xe0>
 80009b0:	6868      	ldr	r0, [r5, #4]
 80009b2:	eef8 8ae8 	vcvt.f32.s32	s17, s17
 80009b6:	ee7a 8a68 	vsub.f32	s17, s20, s17
 80009ba:	ee38 8ac8 	vsub.f32	s16, s17, s16
 80009be:	ee28 8a27 	vmul.f32	s16, s16, s15
 80009c2:	eddf 7a1c 	vldr	s15, [pc, #112]	; 8000a34 <_ZN9CObstacle18go_forward_encoderEijPFhvE+0xe4>
 80009c6:	ee08 8aa7 	vmla.f32	s16, s17, s15
 80009ca:	ee07 4a90 	vmov	s15, r4
 80009ce:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 80009d2:	eeb4 9ae7 	vcmpe.f32	s18, s15
 80009d6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80009da:	bf44      	itt	mi
 80009dc:	eddf 7a16 	vldrmi	s15, [pc, #88]	; 8000a38 <_ZN9CObstacle18go_forward_encoderEijPFhvE+0xe8>
 80009e0:	ee39 9a27 	vaddmi.f32	s18, s18, s15
 80009e4:	ee69 7a89 	vmul.f32	s15, s19, s18
 80009e8:	ee37 7ac8 	vsub.f32	s14, s15, s16
 80009ec:	ee37 8a88 	vadd.f32	s16, s15, s16
 80009f0:	eefd 7ac7 	vcvt.s32.f32	s15, s14
 80009f4:	ee17 1a90 	vmov	r1, s15
 80009f8:	eefd 7ac8 	vcvt.s32.f32	s15, s16
 80009fc:	ee17 2a90 	vmov	r2, s15
 8000a00:	f7ff fbdf 	bl	80001c2 <_ZN6CRobot10set_motorsEii>
 8000a04:	2e00      	cmp	r6, #0
 8000a06:	d0c1      	beq.n	800098c <_ZN9CObstacle18go_forward_encoderEijPFhvE+0x3c>
 8000a08:	47b0      	blx	r6
 8000a0a:	2800      	cmp	r0, #0
 8000a0c:	d0be      	beq.n	800098c <_ZN9CObstacle18go_forward_encoderEijPFhvE+0x3c>
 8000a0e:	2000      	movs	r0, #0
 8000a10:	4601      	mov	r1, r0
 8000a12:	f002 f805 	bl	8002a20 <drv8834_run>
 8000a16:	ecbd 8b06 	vpop	{d8-d10}
 8000a1a:	2064      	movs	r0, #100	; 0x64
 8000a1c:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8000a20:	f001 bc46 	b.w	80022b0 <timer_delay_ms>
 8000a24:	bf800000 	.word	0xbf800000
 8000a28:	3f800000 	.word	0x3f800000
 8000a2c:	00000000 	.word	0x00000000
 8000a30:	3dcccccd 	.word	0x3dcccccd
 8000a34:	3cf5c28f 	.word	0x3cf5c28f
 8000a38:	3fb33333 	.word	0x3fb33333

08000a3c <_ZN9CObstacle7processEv>:
 8000a3c:	2100      	movs	r1, #0
 8000a3e:	b510      	push	{r4, lr}
 8000a40:	460b      	mov	r3, r1
 8000a42:	4604      	mov	r4, r0
 8000a44:	2232      	movs	r2, #50	; 0x32
 8000a46:	f7ff fefb 	bl	8000840 <_ZN9CObstacle10go_forwardEijPFhvE>
 8000a4a:	4620      	mov	r0, r4
 8000a4c:	221e      	movs	r2, #30
 8000a4e:	2300      	movs	r3, #0
 8000a50:	f06f 0131 	mvn.w	r1, #49	; 0x31
 8000a54:	f7ff ff7c 	bl	8000950 <_ZN9CObstacle18go_forward_encoderEijPFhvE>
 8000a58:	4620      	mov	r0, r4
 8000a5a:	215a      	movs	r1, #90	; 0x5a
 8000a5c:	f7ff fea0 	bl	80007a0 <_ZN9CObstacle12rotate_robotEi>
 8000a60:	4620      	mov	r0, r4
 8000a62:	f44f 7287 	mov.w	r2, #270	; 0x10e
 8000a66:	2300      	movs	r3, #0
 8000a68:	2150      	movs	r1, #80	; 0x50
 8000a6a:	f7ff ff71 	bl	8000950 <_ZN9CObstacle18go_forward_encoderEijPFhvE>
 8000a6e:	4620      	mov	r0, r4
 8000a70:	f06f 0159 	mvn.w	r1, #89	; 0x59
 8000a74:	f7ff fe94 	bl	80007a0 <_ZN9CObstacle12rotate_robotEi>
 8000a78:	4620      	mov	r0, r4
 8000a7a:	f44f 72af 	mov.w	r2, #350	; 0x15e
 8000a7e:	2300      	movs	r3, #0
 8000a80:	2150      	movs	r1, #80	; 0x50
 8000a82:	f7ff ff65 	bl	8000950 <_ZN9CObstacle18go_forward_encoderEijPFhvE>
 8000a86:	4620      	mov	r0, r4
 8000a88:	f06f 0159 	mvn.w	r1, #89	; 0x59
 8000a8c:	f7ff fe88 	bl	80007a0 <_ZN9CObstacle12rotate_robotEi>
 8000a90:	4620      	mov	r0, r4
 8000a92:	2150      	movs	r1, #80	; 0x50
 8000a94:	f44f 7296 	mov.w	r2, #300	; 0x12c
 8000a98:	4b04      	ldr	r3, [pc, #16]	; (8000aac <_ZN9CObstacle7processEv+0x70>)
 8000a9a:	f7ff ff59 	bl	8000950 <_ZN9CObstacle18go_forward_encoderEijPFhvE>
 8000a9e:	4620      	mov	r0, r4
 8000aa0:	215a      	movs	r1, #90	; 0x5a
 8000aa2:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000aa6:	f7ff be7b 	b.w	80007a0 <_ZN9CObstacle12rotate_robotEi>
 8000aaa:	bf00      	nop
 8000aac:	08000775 	.word	0x08000775

08000ab0 <_ZN4CMap4initEP6CRobot>:
 8000ab0:	b111      	cbz	r1, 8000ab8 <_ZN4CMap4initEP6CRobot+0x8>
 8000ab2:	2300      	movs	r3, #0
 8000ab4:	6041      	str	r1, [r0, #4]
 8000ab6:	6003      	str	r3, [r0, #0]
 8000ab8:	4770      	bx	lr

08000aba <_ZN4CMap10save_stateE6sStatej>:
 8000aba:	b507      	push	{r0, r1, r2, lr}
 8000abc:	ab02      	add	r3, sp, #8
 8000abe:	0090      	lsls	r0, r2, #2
 8000ac0:	f843 1d04 	str.w	r1, [r3, #-4]!
 8000ac4:	2204      	movs	r2, #4
 8000ac6:	4619      	mov	r1, r3
 8000ac8:	f000 fd4e 	bl	8001568 <log_write>
 8000acc:	b003      	add	sp, #12
 8000ace:	f85d fb04 	ldr.w	pc, [sp], #4
	...

08000ad4 <_ZN4CMap10add_to_mapEv>:
 8000ad4:	b537      	push	{r0, r1, r2, r4, r5, lr}
 8000ad6:	4604      	mov	r4, r0
 8000ad8:	6840      	ldr	r0, [r0, #4]
 8000ada:	f7ff fb6c 	bl	80001b6 <_ZN6CRobot24get_line_position_sensorEv>
 8000ade:	2100      	movs	r1, #0
 8000ae0:	6845      	ldr	r5, [r0, #4]
 8000ae2:	460a      	mov	r2, r1
 8000ae4:	f44f 6020 	mov.w	r0, #2560	; 0xa00
 8000ae8:	4b12      	ldr	r3, [pc, #72]	; (8000b34 <_ZN4CMap10add_to_mapEv+0x60>)
 8000aea:	f853 3022 	ldr.w	r3, [r3, r2, lsl #2]
 8000aee:	1aeb      	subs	r3, r5, r3
 8000af0:	2b00      	cmp	r3, #0
 8000af2:	bfb8      	it	lt
 8000af4:	425b      	neglt	r3, r3
 8000af6:	4283      	cmp	r3, r0
 8000af8:	bfb8      	it	lt
 8000afa:	4611      	movlt	r1, r2
 8000afc:	f102 0201 	add.w	r2, r2, #1
 8000b00:	bfb8      	it	lt
 8000b02:	4618      	movlt	r0, r3
 8000b04:	2a0a      	cmp	r2, #10
 8000b06:	d1ef      	bne.n	8000ae8 <_ZN4CMap10add_to_mapEv+0x14>
 8000b08:	2818      	cmp	r0, #24
 8000b0a:	dc11      	bgt.n	8000b30 <_ZN4CMap10add_to_mapEv+0x5c>
 8000b0c:	6823      	ldr	r3, [r4, #0]
 8000b0e:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8000b12:	d20d      	bcs.n	8000b30 <_ZN4CMap10add_to_mapEv+0x5c>
 8000b14:	f88d 1004 	strb.w	r1, [sp, #4]
 8000b18:	f002 f984 	bl	8002e24 <encoder_get_distance>
 8000b1c:	f8ad 0006 	strh.w	r0, [sp, #6]
 8000b20:	9901      	ldr	r1, [sp, #4]
 8000b22:	6822      	ldr	r2, [r4, #0]
 8000b24:	4620      	mov	r0, r4
 8000b26:	f7ff ffc8 	bl	8000aba <_ZN4CMap10save_stateE6sStatej>
 8000b2a:	6823      	ldr	r3, [r4, #0]
 8000b2c:	3301      	adds	r3, #1
 8000b2e:	6023      	str	r3, [r4, #0]
 8000b30:	b003      	add	sp, #12
 8000b32:	bd30      	pop	{r4, r5, pc}
 8000b34:	200000a0 	.word	0x200000a0

08000b38 <_Z18line_sensor_threadv>:
 8000b38:	b508      	push	{r3, lr}
 8000b3a:	2000      	movs	r0, #0
 8000b3c:	2104      	movs	r1, #4
 8000b3e:	f001 fbc7 	bl	80022d0 <event_timer_set_period>
 8000b42:	2000      	movs	r0, #0
 8000b44:	f001 fbdc 	bl	8002300 <event_timer_wait>
 8000b48:	4801      	ldr	r0, [pc, #4]	; (8000b50 <_Z18line_sensor_threadv+0x18>)
 8000b4a:	f7ff fc7f 	bl	800044c <_ZN6CRobot19process_rgb_sensorsEv>
 8000b4e:	e7f8      	b.n	8000b42 <_Z18line_sensor_threadv+0xa>
 8000b50:	2000094c 	.word	0x2000094c

08000b54 <_Z17imu_sensor_threadv>:
 8000b54:	b508      	push	{r3, lr}
 8000b56:	2001      	movs	r0, #1
 8000b58:	210a      	movs	r1, #10
 8000b5a:	f001 fbb9 	bl	80022d0 <event_timer_set_period>
 8000b5e:	2001      	movs	r0, #1
 8000b60:	f001 fbce 	bl	8002300 <event_timer_wait>
 8000b64:	4805      	ldr	r0, [pc, #20]	; (8000b7c <_Z17imu_sensor_threadv+0x28>)
 8000b66:	f7ff fd29 	bl	80005bc <_ZN6CRobot18process_imu_sensorEv>
 8000b6a:	4b05      	ldr	r3, [pc, #20]	; (8000b80 <_Z17imu_sensor_threadv+0x2c>)
 8000b6c:	681b      	ldr	r3, [r3, #0]
 8000b6e:	2b00      	cmp	r3, #0
 8000b70:	d0f5      	beq.n	8000b5e <_Z17imu_sensor_threadv+0xa>
 8000b72:	4804      	ldr	r0, [pc, #16]	; (8000b84 <_Z17imu_sensor_threadv+0x30>)
 8000b74:	f7ff ffae 	bl	8000ad4 <_ZN4CMap10add_to_mapEv>
 8000b78:	e7f1      	b.n	8000b5e <_Z17imu_sensor_threadv+0xa>
 8000b7a:	bf00      	nop
 8000b7c:	2000094c 	.word	0x2000094c
 8000b80:	20000a3c 	.word	0x20000a3c
 8000b84:	2000053c 	.word	0x2000053c

08000b88 <_Z13line_followerv>:
 8000b88:	b510      	push	{r4, lr}
 8000b8a:	2002      	movs	r0, #2
 8000b8c:	2104      	movs	r1, #4
 8000b8e:	f001 fb9f 	bl	80022d0 <event_timer_set_period>
 8000b92:	2400      	movs	r4, #0
 8000b94:	2002      	movs	r0, #2
 8000b96:	f001 fbb3 	bl	8002300 <event_timer_wait>
 8000b9a:	4813      	ldr	r0, [pc, #76]	; (8000be8 <_Z13line_followerv+0x60>)
 8000b9c:	f7ff fb0d 	bl	80001ba <_ZN6CRobot28get_obstacle_position_sensorEv>
 8000ba0:	7803      	ldrb	r3, [r0, #0]
 8000ba2:	2b01      	cmp	r3, #1
 8000ba4:	d103      	bne.n	8000bae <_Z13line_followerv+0x26>
 8000ba6:	4811      	ldr	r0, [pc, #68]	; (8000bec <_Z13line_followerv+0x64>)
 8000ba8:	f7ff ff48 	bl	8000a3c <_ZN9CObstacle7processEv>
 8000bac:	e00c      	b.n	8000bc8 <_Z13line_followerv+0x40>
 8000bae:	480e      	ldr	r0, [pc, #56]	; (8000be8 <_Z13line_followerv+0x60>)
 8000bb0:	f7ff fb01 	bl	80001b6 <_ZN6CRobot24get_line_position_sensorEv>
 8000bb4:	7803      	ldrb	r3, [r0, #0]
 8000bb6:	2b01      	cmp	r3, #1
 8000bb8:	d103      	bne.n	8000bc2 <_Z13line_followerv+0x3a>
 8000bba:	480d      	ldr	r0, [pc, #52]	; (8000bf0 <_Z13line_followerv+0x68>)
 8000bbc:	f000 f93c 	bl	8000e38 <_ZN13CLineFollower7processEv>
 8000bc0:	e002      	b.n	8000bc8 <_Z13line_followerv+0x40>
 8000bc2:	480c      	ldr	r0, [pc, #48]	; (8000bf4 <_Z13line_followerv+0x6c>)
 8000bc4:	f000 f9a5 	bl	8000f12 <_ZN11CBrokenLine7processEv>
 8000bc8:	3401      	adds	r4, #1
 8000bca:	2214      	movs	r2, #20
 8000bcc:	fbb4 f3f2 	udiv	r3, r4, r2
 8000bd0:	fb02 4313 	mls	r3, r2, r3, r4
 8000bd4:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8000bd8:	b913      	cbnz	r3, 8000be0 <_Z13line_followerv+0x58>
 8000bda:	f002 f8e3 	bl	8002da4 <led_on>
 8000bde:	e7d9      	b.n	8000b94 <_Z13line_followerv+0xc>
 8000be0:	f002 f8ea 	bl	8002db8 <led_off>
 8000be4:	e7d6      	b.n	8000b94 <_Z13line_followerv+0xc>
 8000be6:	bf00      	nop
 8000be8:	2000094c 	.word	0x2000094c
 8000bec:	20000744 	.word	0x20000744
 8000bf0:	200009f8 	.word	0x200009f8
 8000bf4:	20000530 	.word	0x20000530

08000bf8 <main_thread>:
 8000bf8:	b570      	push	{r4, r5, r6, lr}
 8000bfa:	4847      	ldr	r0, [pc, #284]	; (8000d18 <main_thread+0x120>)
 8000bfc:	4e47      	ldr	r6, [pc, #284]	; (8000d1c <main_thread+0x124>)
 8000bfe:	b096      	sub	sp, #88	; 0x58
 8000c00:	f000 fbe2 	bl	80013c8 <printf_>
 8000c04:	f44f 7096 	mov.w	r0, #300	; 0x12c
 8000c08:	f001 fb52 	bl	80022b0 <timer_delay_ms>
 8000c0c:	2300      	movs	r3, #0
 8000c0e:	2296      	movs	r2, #150	; 0x96
 8000c10:	6033      	str	r3, [r6, #0]
 8000c12:	f8ad 2028 	strh.w	r2, [sp, #40]	; 0x28
 8000c16:	f88d 302c 	strb.w	r3, [sp, #44]	; 0x2c
 8000c1a:	f44f 722f 	mov.w	r2, #700	; 0x2bc
 8000c1e:	930d      	str	r3, [sp, #52]	; 0x34
 8000c20:	930f      	str	r3, [sp, #60]	; 0x3c
 8000c22:	2314      	movs	r3, #20
 8000c24:	f8ad 202a 	strh.w	r2, [sp, #42]	; 0x2a
 8000c28:	9310      	str	r3, [sp, #64]	; 0x40
 8000c2a:	2246      	movs	r2, #70	; 0x46
 8000c2c:	f241 3388 	movw	r3, #5000	; 0x1388
 8000c30:	920c      	str	r2, [sp, #48]	; 0x30
 8000c32:	9311      	str	r3, [sp, #68]	; 0x44
 8000c34:	f640 52ac 	movw	r2, #3500	; 0xdac
 8000c38:	f44f 73fa 	mov.w	r3, #500	; 0x1f4
 8000c3c:	920e      	str	r2, [sp, #56]	; 0x38
 8000c3e:	9312      	str	r3, [sp, #72]	; 0x48
 8000c40:	f44f 7248 	mov.w	r2, #800	; 0x320
 8000c44:	9314      	str	r3, [sp, #80]	; 0x50
 8000c46:	4836      	ldr	r0, [pc, #216]	; (8000d20 <main_thread+0x128>)
 8000c48:	9213      	str	r2, [sp, #76]	; 0x4c
 8000c4a:	2332      	movs	r3, #50	; 0x32
 8000c4c:	ad0d      	add	r5, sp, #52	; 0x34
 8000c4e:	9315      	str	r3, [sp, #84]	; 0x54
 8000c50:	f7ff fd4d 	bl	80006ee <_ZN6CRobot4initEv>
 8000c54:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
 8000c56:	466c      	mov	r4, sp
 8000c58:	c40f      	stmia	r4!, {r0, r1, r2, r3}
 8000c5a:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
 8000c5c:	c40f      	stmia	r4!, {r0, r1, r2, r3}
 8000c5e:	682b      	ldr	r3, [r5, #0]
 8000c60:	6023      	str	r3, [r4, #0]
 8000c62:	ab0a      	add	r3, sp, #40	; 0x28
 8000c64:	cb0e      	ldmia	r3, {r1, r2, r3}
 8000c66:	482e      	ldr	r0, [pc, #184]	; (8000d20 <main_thread+0x128>)
 8000c68:	f7ff fa92 	bl	8000190 <_ZN6CRobot13set_configureE15sRobotConfigure>
 8000c6c:	482d      	ldr	r0, [pc, #180]	; (8000d24 <main_thread+0x12c>)
 8000c6e:	492c      	ldr	r1, [pc, #176]	; (8000d20 <main_thread+0x128>)
 8000c70:	f000 f86a 	bl	8000d48 <_ZN13CLineFollower4initEP6CRobot>
 8000c74:	482c      	ldr	r0, [pc, #176]	; (8000d28 <main_thread+0x130>)
 8000c76:	492a      	ldr	r1, [pc, #168]	; (8000d20 <main_thread+0x128>)
 8000c78:	f7ff fd88 	bl	800078c <_ZN9CObstacle4initEP6CRobot>
 8000c7c:	482b      	ldr	r0, [pc, #172]	; (8000d2c <main_thread+0x134>)
 8000c7e:	4928      	ldr	r1, [pc, #160]	; (8000d20 <main_thread+0x128>)
 8000c80:	f000 f938 	bl	8000ef4 <_ZN11CBrokenLine4initEP6CRobot>
 8000c84:	482a      	ldr	r0, [pc, #168]	; (8000d30 <main_thread+0x138>)
 8000c86:	4926      	ldr	r1, [pc, #152]	; (8000d20 <main_thread+0x128>)
 8000c88:	f7ff ff12 	bl	8000ab0 <_ZN4CMap4initEP6CRobot>
 8000c8c:	4824      	ldr	r0, [pc, #144]	; (8000d20 <main_thread+0x128>)
 8000c8e:	f7ff fa7b 	bl	8000188 <_ZN6CRobot14get_error_typeEv>
 8000c92:	b158      	cbz	r0, 8000cac <main_thread+0xb4>
 8000c94:	4822      	ldr	r0, [pc, #136]	; (8000d20 <main_thread+0x128>)
 8000c96:	f7ff fa77 	bl	8000188 <_ZN6CRobot14get_error_typeEv>
 8000c9a:	4604      	mov	r4, r0
 8000c9c:	4820      	ldr	r0, [pc, #128]	; (8000d20 <main_thread+0x128>)
 8000c9e:	f7ff fa75 	bl	800018c <_ZN6CRobot14get_error_codeEv>
 8000ca2:	4601      	mov	r1, r0
 8000ca4:	4620      	mov	r0, r4
 8000ca6:	f7ff fd41 	bl	800072c <abort_error_>
 8000caa:	e7f3      	b.n	8000c94 <main_thread+0x9c>
 8000cac:	4921      	ldr	r1, [pc, #132]	; (8000d34 <main_thread+0x13c>)
 8000cae:	4822      	ldr	r0, [pc, #136]	; (8000d38 <main_thread+0x140>)
 8000cb0:	f44f 7200 	mov.w	r2, #512	; 0x200
 8000cb4:	2306      	movs	r3, #6
 8000cb6:	f000 fa59 	bl	800116c <create_thread>
 8000cba:	4820      	ldr	r0, [pc, #128]	; (8000d3c <main_thread+0x144>)
 8000cbc:	4920      	ldr	r1, [pc, #128]	; (8000d40 <main_thread+0x148>)
 8000cbe:	f44f 7200 	mov.w	r2, #512	; 0x200
 8000cc2:	2306      	movs	r3, #6
 8000cc4:	f000 fa52 	bl	800116c <create_thread>
 8000cc8:	f002 f880 	bl	8002dcc <get_key>
 8000ccc:	b138      	cbz	r0, 8000cde <main_thread+0xe6>
 8000cce:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 8000cd2:	f001 faed 	bl	80022b0 <timer_delay_ms>
 8000cd6:	2301      	movs	r3, #1
 8000cd8:	6033      	str	r3, [r6, #0]
 8000cda:	f7ff ff55 	bl	8000b88 <_Z13line_followerv>
 8000cde:	f002 f8a1 	bl	8002e24 <encoder_get_distance>
 8000ce2:	4605      	mov	r5, r0
 8000ce4:	f002 f87a 	bl	8002ddc <left_encoder_read>
 8000ce8:	4604      	mov	r4, r0
 8000cea:	f002 f889 	bl	8002e00 <right_encoder_read>
 8000cee:	4629      	mov	r1, r5
 8000cf0:	4603      	mov	r3, r0
 8000cf2:	4622      	mov	r2, r4
 8000cf4:	4813      	ldr	r0, [pc, #76]	; (8000d44 <main_thread+0x14c>)
 8000cf6:	f000 fb67 	bl	80013c8 <printf_>
 8000cfa:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8000cfe:	f002 f851 	bl	8002da4 <led_on>
 8000d02:	2064      	movs	r0, #100	; 0x64
 8000d04:	f001 fad4 	bl	80022b0 <timer_delay_ms>
 8000d08:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8000d0c:	f002 f854 	bl	8002db8 <led_off>
 8000d10:	20c8      	movs	r0, #200	; 0xc8
 8000d12:	f001 facd 	bl	80022b0 <timer_delay_ms>
 8000d16:	e7d7      	b.n	8000cc8 <main_thread+0xd0>
 8000d18:	08004a8f 	.word	0x08004a8f
 8000d1c:	20000a3c 	.word	0x20000a3c
 8000d20:	2000094c 	.word	0x2000094c
 8000d24:	200009f8 	.word	0x200009f8
 8000d28:	20000744 	.word	0x20000744
 8000d2c:	20000530 	.word	0x20000530
 8000d30:	2000053c 	.word	0x2000053c
 8000d34:	20000544 	.word	0x20000544
 8000d38:	08000b39 	.word	0x08000b39
 8000d3c:	08000b55 	.word	0x08000b55
 8000d40:	2000074c 	.word	0x2000074c
 8000d44:	08004aca 	.word	0x08004aca

08000d48 <_ZN13CLineFollower4initEP6CRobot>:
 8000d48:	b510      	push	{r4, lr}
 8000d4a:	ed2d 8b04 	vpush	{d8-d9}
 8000d4e:	4604      	mov	r4, r0
 8000d50:	b082      	sub	sp, #8
 8000d52:	2900      	cmp	r1, #0
 8000d54:	d065      	beq.n	8000e22 <_ZN13CLineFollower4initEP6CRobot+0xda>
 8000d56:	2300      	movs	r3, #0
 8000d58:	6103      	str	r3, [r0, #16]
 8000d5a:	6143      	str	r3, [r0, #20]
 8000d5c:	6401      	str	r1, [r0, #64]	; 0x40
 8000d5e:	4833      	ldr	r0, [pc, #204]	; (8000e2c <_ZN13CLineFollower4initEP6CRobot+0xe4>)
 8000d60:	ed9f 8a33 	vldr	s16, [pc, #204]	; 8000e30 <_ZN13CLineFollower4initEP6CRobot+0xe8>
 8000d64:	f000 f971 	bl	800104a <_ZN11CQPredictor4initEv>
 8000d68:	6c20      	ldr	r0, [r4, #64]	; 0x40
 8000d6a:	f7ff fa23 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000d6e:	ed90 9a02 	vldr	s18, [r0, #8]
 8000d72:	6c20      	ldr	r0, [r4, #64]	; 0x40
 8000d74:	f7ff fa1e 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000d78:	edd0 8a03 	vldr	s17, [r0, #12]
 8000d7c:	6c20      	ldr	r0, [r4, #64]	; 0x40
 8000d7e:	f7ff fa19 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000d82:	edd0 9a04 	vldr	s19, [r0, #16]
 8000d86:	6c20      	ldr	r0, [r4, #64]	; 0x40
 8000d88:	eef8 9ae9 	vcvt.f32.s32	s19, s19
 8000d8c:	f7ff fa12 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000d90:	eec9 9a88 	vdiv.f32	s19, s19, s16
 8000d94:	4927      	ldr	r1, [pc, #156]	; (8000e34 <_ZN13CLineFollower4initEP6CRobot+0xec>)
 8000d96:	eeb8 9ac9 	vcvt.f32.s32	s18, s18
 8000d9a:	edcd 9a00 	vstr	s19, [sp]
 8000d9e:	edd0 7a05 	vldr	s15, [r0, #20]
 8000da2:	eef8 8ae8 	vcvt.f32.s32	s17, s17
 8000da6:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 8000daa:	ee89 9a08 	vdiv.f32	s18, s18, s16
 8000dae:	f104 0018 	add.w	r0, r4, #24
 8000db2:	eec7 7a88 	vdiv.f32	s15, s15, s16
 8000db6:	eec8 8a88 	vdiv.f32	s17, s17, s16
 8000dba:	ee19 2a10 	vmov	r2, s18
 8000dbe:	ee18 3a90 	vmov	r3, s17
 8000dc2:	edcd 7a01 	vstr	s15, [sp, #4]
 8000dc6:	f000 fc1d 	bl	8001604 <pid_init>
 8000dca:	6c20      	ldr	r0, [r4, #64]	; 0x40
 8000dcc:	f7ff f9f2 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000dd0:	edd0 7a06 	vldr	s15, [r0, #24]
 8000dd4:	6c20      	ldr	r0, [r4, #64]	; 0x40
 8000dd6:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 8000dda:	eec7 7a88 	vdiv.f32	s15, s15, s16
 8000dde:	edc4 7a00 	vstr	s15, [r4]
 8000de2:	f7ff f9e7 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000de6:	edd0 7a07 	vldr	s15, [r0, #28]
 8000dea:	6c20      	ldr	r0, [r4, #64]	; 0x40
 8000dec:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 8000df0:	eec7 7a88 	vdiv.f32	s15, s15, s16
 8000df4:	edc4 7a01 	vstr	s15, [r4, #4]
 8000df8:	f7ff f9dc 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000dfc:	edd0 7a08 	vldr	s15, [r0, #32]
 8000e00:	6c20      	ldr	r0, [r4, #64]	; 0x40
 8000e02:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 8000e06:	eec7 7a88 	vdiv.f32	s15, s15, s16
 8000e0a:	edc4 7a02 	vstr	s15, [r4, #8]
 8000e0e:	f7ff f9d1 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000e12:	edd0 7a09 	vldr	s15, [r0, #36]	; 0x24
 8000e16:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 8000e1a:	ee87 8a88 	vdiv.f32	s16, s15, s16
 8000e1e:	ed84 8a03 	vstr	s16, [r4, #12]
 8000e22:	b002      	add	sp, #8
 8000e24:	ecbd 8b04 	vpop	{d8-d9}
 8000e28:	bd10      	pop	{r4, pc}
 8000e2a:	bf00      	nop
 8000e2c:	20000a40 	.word	0x20000a40
 8000e30:	447a0000 	.word	0x447a0000
 8000e34:	42c80000 	.word	0x42c80000

08000e38 <_ZN13CLineFollower7processEv>:
 8000e38:	b510      	push	{r4, lr}
 8000e3a:	4604      	mov	r4, r0
 8000e3c:	ed2d 8b02 	vpush	{d8}
 8000e40:	6c00      	ldr	r0, [r0, #64]	; 0x40
 8000e42:	ed9f 8a28 	vldr	s16, [pc, #160]	; 8000ee4 <_ZN13CLineFollower7processEv+0xac>
 8000e46:	f7ff f9b6 	bl	80001b6 <_ZN6CRobot24get_line_position_sensorEv>
 8000e4a:	edd0 7a01 	vldr	s15, [r0, #4]
 8000e4e:	ed9f 7a26 	vldr	s14, [pc, #152]	; 8000ee8 <_ZN13CLineFollower7processEv+0xb0>
 8000e52:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 8000e56:	ee07 8ac7 	vmls.f32	s16, s15, s14
 8000e5a:	ee18 0a10 	vmov	r0, s16
 8000e5e:	f000 fb9f 	bl	80015a0 <m_abs>
 8000e62:	ed9f 7a22 	vldr	s14, [pc, #136]	; 8000eec <_ZN13CLineFollower7processEv+0xb4>
 8000e66:	edd4 6a01 	vldr	s13, [r4, #4]
 8000e6a:	edd4 5a00 	vldr	s11, [r4]
 8000e6e:	ed94 6a04 	vldr	s12, [r4, #16]
 8000e72:	ee07 0a90 	vmov	s15, r0
 8000e76:	ee37 5a67 	vsub.f32	s10, s14, s15
 8000e7a:	ee07 7ae6 	vmls.f32	s14, s15, s13
 8000e7e:	ee05 6a25 	vmla.f32	s12, s10, s11
 8000e82:	ee17 1a10 	vmov	r1, s14
 8000e86:	ee16 0a10 	vmov	r0, s12
 8000e8a:	f000 fbac 	bl	80015e6 <m_min>
 8000e8e:	68e2      	ldr	r2, [r4, #12]
 8000e90:	68a1      	ldr	r1, [r4, #8]
 8000e92:	6120      	str	r0, [r4, #16]
 8000e94:	f000 fb90 	bl	80015b8 <m_saturate>
 8000e98:	ee18 1a10 	vmov	r1, s16
 8000e9c:	6120      	str	r0, [r4, #16]
 8000e9e:	f104 0018 	add.w	r0, r4, #24
 8000ea2:	f000 fbdf 	bl	8001664 <pid_process>
 8000ea6:	edd4 7a04 	vldr	s15, [r4, #16]
 8000eaa:	ed9f 6a11 	vldr	s12, [pc, #68]	; 8000ef0 <_ZN13CLineFollower7processEv+0xb8>
 8000eae:	6160      	str	r0, [r4, #20]
 8000eb0:	ee06 0a90 	vmov	s13, r0
 8000eb4:	ee37 7aa6 	vadd.f32	s14, s15, s13
 8000eb8:	ee77 7ae6 	vsub.f32	s15, s15, s13
 8000ebc:	ecbd 8b02 	vpop	{d8}
 8000ec0:	ee27 7a06 	vmul.f32	s14, s14, s12
 8000ec4:	ee67 7a86 	vmul.f32	s15, s15, s12
 8000ec8:	eebd 7ac7 	vcvt.s32.f32	s14, s14
 8000ecc:	eefd 7ae7 	vcvt.s32.f32	s15, s15
 8000ed0:	6c20      	ldr	r0, [r4, #64]	; 0x40
 8000ed2:	ee17 1a10 	vmov	r1, s14
 8000ed6:	ee17 2a90 	vmov	r2, s15
 8000eda:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000ede:	f7ff b970 	b.w	80001c2 <_ZN6CRobot10set_motorsEii>
 8000ee2:	bf00      	nop
 8000ee4:	00000000 	.word	0x00000000
 8000ee8:	3b800000 	.word	0x3b800000
 8000eec:	3f800000 	.word	0x3f800000
 8000ef0:	42c80000 	.word	0x42c80000

08000ef4 <_ZN11CBrokenLine4initEP6CRobot>:
 8000ef4:	b510      	push	{r4, lr}
 8000ef6:	4604      	mov	r4, r0
 8000ef8:	b151      	cbz	r1, 8000f10 <_ZN11CBrokenLine4initEP6CRobot+0x1c>
 8000efa:	6001      	str	r1, [r0, #0]
 8000efc:	4608      	mov	r0, r1
 8000efe:	f7ff f959 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000f02:	6a83      	ldr	r3, [r0, #40]	; 0x28
 8000f04:	6063      	str	r3, [r4, #4]
 8000f06:	6820      	ldr	r0, [r4, #0]
 8000f08:	f7ff f954 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000f0c:	6ac3      	ldr	r3, [r0, #44]	; 0x2c
 8000f0e:	60a3      	str	r3, [r4, #8]
 8000f10:	bd10      	pop	{r4, pc}

08000f12 <_ZN11CBrokenLine7processEv>:
 8000f12:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8000f16:	2600      	movs	r6, #0
 8000f18:	4607      	mov	r7, r0
 8000f1a:	4634      	mov	r4, r6
 8000f1c:	46b1      	mov	r9, r6
 8000f1e:	46b0      	mov	r8, r6
 8000f20:	4635      	mov	r5, r6
 8000f22:	6838      	ldr	r0, [r7, #0]
 8000f24:	f7ff f947 	bl	80001b6 <_ZN6CRobot24get_line_position_sensorEv>
 8000f28:	7803      	ldrb	r3, [r0, #0]
 8000f2a:	2b01      	cmp	r3, #1
 8000f2c:	f000 8086 	beq.w	800103c <_ZN11CBrokenLine7processEv+0x12a>
 8000f30:	2005      	movs	r0, #5
 8000f32:	f001 f9bd 	bl	80022b0 <timer_delay_ms>
 8000f36:	f1b9 0f05 	cmp.w	r9, #5
 8000f3a:	d879      	bhi.n	8001030 <_ZN11CBrokenLine7processEv+0x11e>
 8000f3c:	e8df f009 	tbb	[pc, r9]
 8000f40:	48311a03 	.word	0x48311a03
 8000f44:	6b5e      	.short	0x6b5e
 8000f46:	2c00      	cmp	r4, #0
 8000f48:	d163      	bne.n	8001012 <_ZN11CBrokenLine7processEv+0x100>
 8000f4a:	6838      	ldr	r0, [r7, #0]
 8000f4c:	f7ff f933 	bl	80001b6 <_ZN6CRobot24get_line_position_sensorEv>
 8000f50:	6842      	ldr	r2, [r0, #4]
 8000f52:	68bb      	ldr	r3, [r7, #8]
 8000f54:	687c      	ldr	r4, [r7, #4]
 8000f56:	2a00      	cmp	r2, #0
 8000f58:	bfce      	itee	gt
 8000f5a:	461d      	movgt	r5, r3
 8000f5c:	4698      	movle	r8, r3
 8000f5e:	2500      	movle	r5, #0
 8000f60:	f04f 0305 	mov.w	r3, #5
 8000f64:	bfc8      	it	gt
 8000f66:	f04f 0800 	movgt.w	r8, #0
 8000f6a:	fb94 f4f3 	sdiv	r4, r4, r3
 8000f6e:	f04f 0901 	mov.w	r9, #1
 8000f72:	e05d      	b.n	8001030 <_ZN11CBrokenLine7processEv+0x11e>
 8000f74:	2c00      	cmp	r4, #0
 8000f76:	d14c      	bne.n	8001012 <_ZN11CBrokenLine7processEv+0x100>
 8000f78:	6838      	ldr	r0, [r7, #0]
 8000f7a:	f7ff f91c 	bl	80001b6 <_ZN6CRobot24get_line_position_sensorEv>
 8000f7e:	6843      	ldr	r3, [r0, #4]
 8000f80:	68bd      	ldr	r5, [r7, #8]
 8000f82:	2b00      	cmp	r3, #0
 8000f84:	bfcc      	ite	gt
 8000f86:	46a0      	movgt	r8, r4
 8000f88:	f1c5 0800 	rsble	r8, r5, #0
 8000f8c:	f04f 0305 	mov.w	r3, #5
 8000f90:	bfd4      	ite	le
 8000f92:	4625      	movle	r5, r4
 8000f94:	426d      	neggt	r5, r5
 8000f96:	687c      	ldr	r4, [r7, #4]
 8000f98:	fb94 f4f3 	sdiv	r4, r4, r3
 8000f9c:	f04f 0902 	mov.w	r9, #2
 8000fa0:	e046      	b.n	8001030 <_ZN11CBrokenLine7processEv+0x11e>
 8000fa2:	2c00      	cmp	r4, #0
 8000fa4:	d135      	bne.n	8001012 <_ZN11CBrokenLine7processEv+0x100>
 8000fa6:	6838      	ldr	r0, [r7, #0]
 8000fa8:	f7ff f905 	bl	80001b6 <_ZN6CRobot24get_line_position_sensorEv>
 8000fac:	6842      	ldr	r2, [r0, #4]
 8000fae:	68bb      	ldr	r3, [r7, #8]
 8000fb0:	687c      	ldr	r4, [r7, #4]
 8000fb2:	2a00      	cmp	r2, #0
 8000fb4:	bfce      	itee	gt
 8000fb6:	4698      	movgt	r8, r3
 8000fb8:	461d      	movle	r5, r3
 8000fba:	f04f 0800 	movle.w	r8, #0
 8000fbe:	f04f 0305 	mov.w	r3, #5
 8000fc2:	bfc8      	it	gt
 8000fc4:	2500      	movgt	r5, #0
 8000fc6:	fb94 f4f3 	sdiv	r4, r4, r3
 8000fca:	f04f 0903 	mov.w	r9, #3
 8000fce:	e02f      	b.n	8001030 <_ZN11CBrokenLine7processEv+0x11e>
 8000fd0:	b9fc      	cbnz	r4, 8001012 <_ZN11CBrokenLine7processEv+0x100>
 8000fd2:	6838      	ldr	r0, [r7, #0]
 8000fd4:	f7ff f8ef 	bl	80001b6 <_ZN6CRobot24get_line_position_sensorEv>
 8000fd8:	6843      	ldr	r3, [r0, #4]
 8000fda:	68bd      	ldr	r5, [r7, #8]
 8000fdc:	2b00      	cmp	r3, #0
 8000fde:	bfca      	itet	gt
 8000fe0:	f1c5 0800 	rsbgt	r8, r5, #0
 8000fe4:	46a0      	movle	r8, r4
 8000fe6:	4625      	movgt	r5, r4
 8000fe8:	f04f 0305 	mov.w	r3, #5
 8000fec:	687c      	ldr	r4, [r7, #4]
 8000fee:	fb94 f4f3 	sdiv	r4, r4, r3
 8000ff2:	bfd8      	it	le
 8000ff4:	426d      	negle	r5, r5
 8000ff6:	f04f 0904 	mov.w	r9, #4
 8000ffa:	e019      	b.n	8001030 <_ZN11CBrokenLine7processEv+0x11e>
 8000ffc:	b94c      	cbnz	r4, 8001012 <_ZN11CBrokenLine7processEv+0x100>
 8000ffe:	2600      	movs	r6, #0
 8001000:	687c      	ldr	r4, [r7, #4]
 8001002:	230a      	movs	r3, #10
 8001004:	f04f 0905 	mov.w	r9, #5
 8001008:	fb94 f4f3 	sdiv	r4, r4, r3
 800100c:	46b0      	mov	r8, r6
 800100e:	4635      	mov	r5, r6
 8001010:	e00e      	b.n	8001030 <_ZN11CBrokenLine7processEv+0x11e>
 8001012:	3c01      	subs	r4, #1
 8001014:	e00c      	b.n	8001030 <_ZN11CBrokenLine7processEv+0x11e>
 8001016:	b154      	cbz	r4, 800102e <_ZN11CBrokenLine7processEv+0x11c>
 8001018:	68bb      	ldr	r3, [r7, #8]
 800101a:	2564      	movs	r5, #100	; 0x64
 800101c:	436b      	muls	r3, r5
 800101e:	429e      	cmp	r6, r3
 8001020:	bfb8      	it	lt
 8001022:	3632      	addlt	r6, #50	; 0x32
 8001024:	3c01      	subs	r4, #1
 8001026:	fb96 f5f5 	sdiv	r5, r6, r5
 800102a:	46a8      	mov	r8, r5
 800102c:	e000      	b.n	8001030 <_ZN11CBrokenLine7processEv+0x11e>
 800102e:	46a1      	mov	r9, r4
 8001030:	6838      	ldr	r0, [r7, #0]
 8001032:	4641      	mov	r1, r8
 8001034:	462a      	mov	r2, r5
 8001036:	f7ff f8c4 	bl	80001c2 <_ZN6CRobot10set_motorsEii>
 800103a:	e772      	b.n	8000f22 <_ZN11CBrokenLine7processEv+0x10>
 800103c:	2100      	movs	r1, #0
 800103e:	6838      	ldr	r0, [r7, #0]
 8001040:	460a      	mov	r2, r1
 8001042:	e8bd 43f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8001046:	f7ff b8bc 	b.w	80001c2 <_ZN6CRobot10set_motorsEii>

0800104a <_ZN11CQPredictor4initEv>:
 800104a:	1d03      	adds	r3, r0, #4
 800104c:	3044      	adds	r0, #68	; 0x44
 800104e:	2200      	movs	r2, #0
 8001050:	f843 2b04 	str.w	r2, [r3], #4
 8001054:	4283      	cmp	r3, r0
 8001056:	d1fa      	bne.n	800104e <_ZN11CQPredictor4initEv+0x4>
 8001058:	4770      	bx	lr
	...

0800105c <thread_ending>:
 800105c:	b672      	cpsid	i
 800105e:	4b05      	ldr	r3, [pc, #20]	; (8001074 <thread_ending+0x18>)
 8001060:	681a      	ldr	r2, [r3, #0]
 8001062:	4b05      	ldr	r3, [pc, #20]	; (8001078 <thread_ending+0x1c>)
 8001064:	210c      	movs	r1, #12
 8001066:	fb01 3302 	mla	r3, r1, r2, r3
 800106a:	2200      	movs	r2, #0
 800106c:	605a      	str	r2, [r3, #4]
 800106e:	b662      	cpsie	i
 8001070:	bf00      	nop
 8001072:	e7fd      	b.n	8001070 <thread_ending+0x14>
 8001074:	20000acc 	.word	0x20000acc
 8001078:	20000a84 	.word	0x20000a84

0800107c <null_thread>:
 800107c:	b508      	push	{r3, lr}
 800107e:	f001 fc3b 	bl	80028f8 <sleep>
 8001082:	e7fc      	b.n	800107e <null_thread+0x2>

08001084 <scheduler>:
 8001084:	b570      	push	{r4, r5, r6, lr}
 8001086:	2200      	movs	r2, #0
 8001088:	4611      	mov	r1, r2
 800108a:	4b15      	ldr	r3, [pc, #84]	; (80010e0 <scheduler+0x5c>)
 800108c:	200c      	movs	r0, #12
 800108e:	fb00 f401 	mul.w	r4, r0, r1
 8001092:	191e      	adds	r6, r3, r4
 8001094:	6875      	ldr	r5, [r6, #4]
 8001096:	f015 0f02 	tst.w	r5, #2
 800109a:	461d      	mov	r5, r3
 800109c:	d10a      	bne.n	80010b4 <scheduler+0x30>
 800109e:	6876      	ldr	r6, [r6, #4]
 80010a0:	07f6      	lsls	r6, r6, #31
 80010a2:	d507      	bpl.n	80010b4 <scheduler+0x30>
 80010a4:	4350      	muls	r0, r2
 80010a6:	5b1c      	ldrh	r4, [r3, r4]
 80010a8:	5a18      	ldrh	r0, [r3, r0]
 80010aa:	b2a4      	uxth	r4, r4
 80010ac:	b280      	uxth	r0, r0
 80010ae:	4284      	cmp	r4, r0
 80010b0:	bf38      	it	cc
 80010b2:	460a      	movcc	r2, r1
 80010b4:	200c      	movs	r0, #12
 80010b6:	4348      	muls	r0, r1
 80010b8:	5a1c      	ldrh	r4, [r3, r0]
 80010ba:	b2a4      	uxth	r4, r4
 80010bc:	b11c      	cbz	r4, 80010c6 <scheduler+0x42>
 80010be:	5a1c      	ldrh	r4, [r3, r0]
 80010c0:	3c01      	subs	r4, #1
 80010c2:	b2a4      	uxth	r4, r4
 80010c4:	521c      	strh	r4, [r3, r0]
 80010c6:	3101      	adds	r1, #1
 80010c8:	2906      	cmp	r1, #6
 80010ca:	d1de      	bne.n	800108a <scheduler+0x6>
 80010cc:	230c      	movs	r3, #12
 80010ce:	4353      	muls	r3, r2
 80010d0:	18e9      	adds	r1, r5, r3
 80010d2:	8849      	ldrh	r1, [r1, #2]
 80010d4:	b289      	uxth	r1, r1
 80010d6:	52e9      	strh	r1, [r5, r3]
 80010d8:	4b02      	ldr	r3, [pc, #8]	; (80010e4 <scheduler+0x60>)
 80010da:	601a      	str	r2, [r3, #0]
 80010dc:	bd70      	pop	{r4, r5, r6, pc}
 80010de:	bf00      	nop
 80010e0:	20000a84 	.word	0x20000a84
 80010e4:	20000acc 	.word	0x20000acc

080010e8 <SysTick_Handler>:
 80010e8:	e92d 0ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 80010ec:	f3ef 8308 	mrs	r3, MSP
 80010f0:	4c0f      	ldr	r4, [pc, #60]	; (8001130 <SysTick_Handler+0x48>)
 80010f2:	4d10      	ldr	r5, [pc, #64]	; (8001134 <SysTick_Handler+0x4c>)
 80010f4:	6822      	ldr	r2, [r4, #0]
 80010f6:	3201      	adds	r2, #1
 80010f8:	bf1d      	ittte	ne
 80010fa:	6822      	ldrne	r2, [r4, #0]
 80010fc:	210c      	movne	r1, #12
 80010fe:	fb01 5202 	mlane	r2, r1, r2, r5
 8001102:	2300      	moveq	r3, #0
 8001104:	bf14      	ite	ne
 8001106:	6093      	strne	r3, [r2, #8]
 8001108:	6023      	streq	r3, [r4, #0]
 800110a:	f7ff ffbb 	bl	8001084 <scheduler>
 800110e:	4b0a      	ldr	r3, [pc, #40]	; (8001138 <SysTick_Handler+0x50>)
 8001110:	681a      	ldr	r2, [r3, #0]
 8001112:	3201      	adds	r2, #1
 8001114:	601a      	str	r2, [r3, #0]
 8001116:	6822      	ldr	r2, [r4, #0]
 8001118:	230c      	movs	r3, #12
 800111a:	fb03 5302 	mla	r3, r3, r2, r5
 800111e:	689a      	ldr	r2, [r3, #8]
 8001120:	f06f 0306 	mvn.w	r3, #6
 8001124:	469e      	mov	lr, r3
 8001126:	f382 8808 	msr	MSP, r2
 800112a:	e8bd 0ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 800112e:	4770      	bx	lr
 8001130:	20000acc 	.word	0x20000acc
 8001134:	20000a84 	.word	0x20000a84
 8001138:	20000ad0 	.word	0x20000ad0

0800113c <sched_off>:
 800113c:	b672      	cpsid	i
 800113e:	4770      	bx	lr

08001140 <sched_on>:
 8001140:	b662      	cpsie	i
 8001142:	4770      	bx	lr

08001144 <yield>:
 8001144:	bf00      	nop
 8001146:	4770      	bx	lr

08001148 <get_thread_id>:
 8001148:	b082      	sub	sp, #8
 800114a:	b672      	cpsid	i
 800114c:	4b03      	ldr	r3, [pc, #12]	; (800115c <get_thread_id+0x14>)
 800114e:	681b      	ldr	r3, [r3, #0]
 8001150:	9301      	str	r3, [sp, #4]
 8001152:	b662      	cpsie	i
 8001154:	9801      	ldr	r0, [sp, #4]
 8001156:	b002      	add	sp, #8
 8001158:	4770      	bx	lr
 800115a:	bf00      	nop
 800115c:	20000acc 	.word	0x20000acc

08001160 <kernel_start>:
 8001160:	b508      	push	{r3, lr}
 8001162:	f001 fbb7 	bl	80028d4 <sys_tick_init>
 8001166:	bf00      	nop
 8001168:	e7fd      	b.n	8001166 <kernel_start+0x6>
	...

0800116c <create_thread>:
 800116c:	f022 0203 	bic.w	r2, r2, #3
 8001170:	3a40      	subs	r2, #64	; 0x40
 8001172:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8001176:	eb01 0e02 	add.w	lr, r1, r2
 800117a:	f102 0634 	add.w	r6, r2, #52	; 0x34
 800117e:	f102 0738 	add.w	r7, r2, #56	; 0x38
 8001182:	323c      	adds	r2, #60	; 0x3c
 8001184:	440e      	add	r6, r1
 8001186:	440f      	add	r7, r1
 8001188:	4411      	add	r1, r2
 800118a:	2200      	movs	r2, #0
 800118c:	b672      	cpsid	i
 800118e:	f8df c054 	ldr.w	ip, [pc, #84]	; 80011e4 <create_thread+0x78>
 8001192:	250c      	movs	r5, #12
 8001194:	4355      	muls	r5, r2
 8001196:	eb0c 0405 	add.w	r4, ip, r5
 800119a:	f8d4 8004 	ldr.w	r8, [r4, #4]
 800119e:	f018 0f01 	tst.w	r8, #1
 80011a2:	d114      	bne.n	80011ce <create_thread+0x62>
 80011a4:	f8df 8040 	ldr.w	r8, [pc, #64]	; 80011e8 <create_thread+0x7c>
 80011a8:	f8c4 e008 	str.w	lr, [r4, #8]
 80011ac:	2b05      	cmp	r3, #5
 80011ae:	f8c6 8000 	str.w	r8, [r6]
 80011b2:	bf98      	it	ls
 80011b4:	2306      	movls	r3, #6
 80011b6:	f04f 5804 	mov.w	r8, #553648128	; 0x21000000
 80011ba:	6038      	str	r0, [r7, #0]
 80011bc:	f8c1 8000 	str.w	r8, [r1]
 80011c0:	8063      	strh	r3, [r4, #2]
 80011c2:	f82c 3005 	strh.w	r3, [ip, r5]
 80011c6:	2501      	movs	r5, #1
 80011c8:	6065      	str	r5, [r4, #4]
 80011ca:	4614      	mov	r4, r2
 80011cc:	e000      	b.n	80011d0 <create_thread+0x64>
 80011ce:	2406      	movs	r4, #6
 80011d0:	b662      	cpsie	i
 80011d2:	3201      	adds	r2, #1
 80011d4:	2a06      	cmp	r2, #6
 80011d6:	d001      	beq.n	80011dc <create_thread+0x70>
 80011d8:	2c06      	cmp	r4, #6
 80011da:	d0d7      	beq.n	800118c <create_thread+0x20>
 80011dc:	4620      	mov	r0, r4
 80011de:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80011e2:	bf00      	nop
 80011e4:	20000a84 	.word	0x20000a84
 80011e8:	0800105d 	.word	0x0800105d

080011ec <kernel_init>:
 80011ec:	b530      	push	{r4, r5, lr}
 80011ee:	2300      	movs	r3, #0
 80011f0:	480c      	ldr	r0, [pc, #48]	; (8001224 <kernel_init+0x38>)
 80011f2:	220c      	movs	r2, #12
 80011f4:	435a      	muls	r2, r3
 80011f6:	2406      	movs	r4, #6
 80011f8:	1885      	adds	r5, r0, r2
 80011fa:	3301      	adds	r3, #1
 80011fc:	2100      	movs	r1, #0
 80011fe:	42a3      	cmp	r3, r4
 8001200:	6069      	str	r1, [r5, #4]
 8001202:	806c      	strh	r4, [r5, #2]
 8001204:	5284      	strh	r4, [r0, r2]
 8001206:	d1f3      	bne.n	80011f0 <kernel_init+0x4>
 8001208:	4b07      	ldr	r3, [pc, #28]	; (8001228 <kernel_init+0x3c>)
 800120a:	4808      	ldr	r0, [pc, #32]	; (800122c <kernel_init+0x40>)
 800120c:	6019      	str	r1, [r3, #0]
 800120e:	4b08      	ldr	r3, [pc, #32]	; (8001230 <kernel_init+0x44>)
 8001210:	4908      	ldr	r1, [pc, #32]	; (8001234 <kernel_init+0x48>)
 8001212:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8001216:	601a      	str	r2, [r3, #0]
 8001218:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
 800121c:	2280      	movs	r2, #128	; 0x80
 800121e:	23ff      	movs	r3, #255	; 0xff
 8001220:	f7ff bfa4 	b.w	800116c <create_thread>
 8001224:	20000a84 	.word	0x20000a84
 8001228:	20000ad0 	.word	0x20000ad0
 800122c:	0800107d 	.word	0x0800107d
 8001230:	20000acc 	.word	0x20000acc
 8001234:	20000ad4 	.word	0x20000ad4

08001238 <set_wait_state>:
 8001238:	b507      	push	{r0, r1, r2, lr}
 800123a:	f7ff ff85 	bl	8001148 <get_thread_id>
 800123e:	9000      	str	r0, [sp, #0]
 8001240:	b672      	cpsid	i
 8001242:	4b0d      	ldr	r3, [pc, #52]	; (8001278 <set_wait_state+0x40>)
 8001244:	9a00      	ldr	r2, [sp, #0]
 8001246:	210c      	movs	r1, #12
 8001248:	fb01 3202 	mla	r2, r1, r2, r3
 800124c:	6851      	ldr	r1, [r2, #4]
 800124e:	f041 0102 	orr.w	r1, r1, #2
 8001252:	6051      	str	r1, [r2, #4]
 8001254:	b672      	cpsid	i
 8001256:	9a00      	ldr	r2, [sp, #0]
 8001258:	210c      	movs	r1, #12
 800125a:	fb01 3202 	mla	r2, r1, r2, r3
 800125e:	6852      	ldr	r2, [r2, #4]
 8001260:	9201      	str	r2, [sp, #4]
 8001262:	b662      	cpsie	i
 8001264:	9a01      	ldr	r2, [sp, #4]
 8001266:	0791      	lsls	r1, r2, #30
 8001268:	d500      	bpl.n	800126c <set_wait_state+0x34>
 800126a:	bf00      	nop
 800126c:	9a01      	ldr	r2, [sp, #4]
 800126e:	0792      	lsls	r2, r2, #30
 8001270:	d4f0      	bmi.n	8001254 <set_wait_state+0x1c>
 8001272:	b003      	add	sp, #12
 8001274:	f85d fb04 	ldr.w	pc, [sp], #4
 8001278:	20000a84 	.word	0x20000a84

0800127c <wake_up_threads>:
 800127c:	2300      	movs	r3, #0
 800127e:	b672      	cpsid	i
 8001280:	4906      	ldr	r1, [pc, #24]	; (800129c <wake_up_threads+0x20>)
 8001282:	220c      	movs	r2, #12
 8001284:	fb02 1203 	mla	r2, r2, r3, r1
 8001288:	6851      	ldr	r1, [r2, #4]
 800128a:	f021 0102 	bic.w	r1, r1, #2
 800128e:	6051      	str	r1, [r2, #4]
 8001290:	b662      	cpsie	i
 8001292:	3301      	adds	r3, #1
 8001294:	2b06      	cmp	r3, #6
 8001296:	d1f2      	bne.n	800127e <wake_up_threads+0x2>
 8001298:	4770      	bx	lr
 800129a:	bf00      	nop
 800129c:	20000a84 	.word	0x20000a84

080012a0 <messages_init>:
 80012a0:	4a0a      	ldr	r2, [pc, #40]	; (80012cc <messages_init+0x2c>)
 80012a2:	2300      	movs	r3, #0
 80012a4:	b510      	push	{r4, lr}
 80012a6:	6013      	str	r3, [r2, #0]
 80012a8:	6053      	str	r3, [r2, #4]
 80012aa:	6093      	str	r3, [r2, #8]
 80012ac:	60d3      	str	r3, [r2, #12]
 80012ae:	6113      	str	r3, [r2, #16]
 80012b0:	6153      	str	r3, [r2, #20]
 80012b2:	4c07      	ldr	r4, [pc, #28]	; (80012d0 <messages_init+0x30>)
 80012b4:	0118      	lsls	r0, r3, #4
 80012b6:	1821      	adds	r1, r4, r0
 80012b8:	3301      	adds	r3, #1
 80012ba:	2200      	movs	r2, #0
 80012bc:	2b04      	cmp	r3, #4
 80012be:	604a      	str	r2, [r1, #4]
 80012c0:	5022      	str	r2, [r4, r0]
 80012c2:	60ca      	str	r2, [r1, #12]
 80012c4:	608a      	str	r2, [r1, #8]
 80012c6:	d1f4      	bne.n	80012b2 <messages_init+0x12>
 80012c8:	bd10      	pop	{r4, pc}
 80012ca:	bf00      	nop
 80012cc:	20000b54 	.word	0x20000b54
 80012d0:	20000b6c 	.word	0x20000b6c

080012d4 <putc_>:
 80012d4:	b538      	push	{r3, r4, r5, lr}
 80012d6:	4c06      	ldr	r4, [pc, #24]	; (80012f0 <putc_+0x1c>)
 80012d8:	4605      	mov	r5, r0
 80012da:	4620      	mov	r0, r4
 80012dc:	f000 f91f 	bl	800151e <mutex_lock>
 80012e0:	4628      	mov	r0, r5
 80012e2:	f001 f8d1 	bl	8002488 <uart_write>
 80012e6:	4620      	mov	r0, r4
 80012e8:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 80012ec:	f000 b933 	b.w	8001556 <mutex_unlock>
 80012f0:	20000bac 	.word	0x20000bac

080012f4 <puts_>:
 80012f4:	b510      	push	{r4, lr}
 80012f6:	4604      	mov	r4, r0
 80012f8:	4807      	ldr	r0, [pc, #28]	; (8001318 <puts_+0x24>)
 80012fa:	f000 f910 	bl	800151e <mutex_lock>
 80012fe:	3c01      	subs	r4, #1
 8001300:	f814 0f01 	ldrb.w	r0, [r4, #1]!
 8001304:	b110      	cbz	r0, 800130c <puts_+0x18>
 8001306:	f7ff ffe5 	bl	80012d4 <putc_>
 800130a:	e7f9      	b.n	8001300 <puts_+0xc>
 800130c:	4802      	ldr	r0, [pc, #8]	; (8001318 <puts_+0x24>)
 800130e:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8001312:	f000 b920 	b.w	8001556 <mutex_unlock>
 8001316:	bf00      	nop
 8001318:	20000bb8 	.word	0x20000bb8

0800131c <puti_>:
 800131c:	b530      	push	{r4, r5, lr}
 800131e:	b085      	sub	sp, #20
 8001320:	1e03      	subs	r3, r0, #0
 8001322:	f04f 0200 	mov.w	r2, #0
 8001326:	bfba      	itte	lt
 8001328:	425b      	neglt	r3, r3
 800132a:	2401      	movlt	r4, #1
 800132c:	4614      	movge	r4, r2
 800132e:	f88d 200f 	strb.w	r2, [sp, #15]
 8001332:	210a      	movs	r1, #10
 8001334:	220a      	movs	r2, #10
 8001336:	a801      	add	r0, sp, #4
 8001338:	fb93 f5f2 	sdiv	r5, r3, r2
 800133c:	fb02 3315 	mls	r3, r2, r5, r3
 8001340:	3330      	adds	r3, #48	; 0x30
 8001342:	540b      	strb	r3, [r1, r0]
 8001344:	1e4a      	subs	r2, r1, #1
 8001346:	462b      	mov	r3, r5
 8001348:	b10d      	cbz	r5, 800134e <puti_+0x32>
 800134a:	4611      	mov	r1, r2
 800134c:	e7f2      	b.n	8001334 <puti_+0x18>
 800134e:	b12c      	cbz	r4, 800135c <puti_+0x40>
 8001350:	ab04      	add	r3, sp, #16
 8001352:	4413      	add	r3, r2
 8001354:	212d      	movs	r1, #45	; 0x2d
 8001356:	f803 1c0c 	strb.w	r1, [r3, #-12]
 800135a:	4611      	mov	r1, r2
 800135c:	4408      	add	r0, r1
 800135e:	f7ff ffc9 	bl	80012f4 <puts_>
 8001362:	b005      	add	sp, #20
 8001364:	bd30      	pop	{r4, r5, pc}

08001366 <putui_>:
 8001366:	b51f      	push	{r0, r1, r2, r3, r4, lr}
 8001368:	2300      	movs	r3, #0
 800136a:	f88d 300f 	strb.w	r3, [sp, #15]
 800136e:	220a      	movs	r2, #10
 8001370:	230a      	movs	r3, #10
 8001372:	a901      	add	r1, sp, #4
 8001374:	fbb0 f4f3 	udiv	r4, r0, r3
 8001378:	fb03 0314 	mls	r3, r3, r4, r0
 800137c:	3330      	adds	r3, #48	; 0x30
 800137e:	5453      	strb	r3, [r2, r1]
 8001380:	4620      	mov	r0, r4
 8001382:	1e53      	subs	r3, r2, #1
 8001384:	b10c      	cbz	r4, 800138a <putui_+0x24>
 8001386:	461a      	mov	r2, r3
 8001388:	e7f2      	b.n	8001370 <putui_+0xa>
 800138a:	1888      	adds	r0, r1, r2
 800138c:	f7ff ffb2 	bl	80012f4 <puts_>
 8001390:	b004      	add	sp, #16
 8001392:	bd10      	pop	{r4, pc}

08001394 <putx_>:
 8001394:	b51f      	push	{r0, r1, r2, r3, r4, lr}
 8001396:	2300      	movs	r3, #0
 8001398:	f88d 300f 	strb.w	r3, [sp, #15]
 800139c:	220a      	movs	r2, #10
 800139e:	f000 030f 	and.w	r3, r0, #15
 80013a2:	2b09      	cmp	r3, #9
 80013a4:	a901      	add	r1, sp, #4
 80013a6:	bf94      	ite	ls
 80013a8:	3330      	addls	r3, #48	; 0x30
 80013aa:	3357      	addhi	r3, #87	; 0x57
 80013ac:	0900      	lsrs	r0, r0, #4
 80013ae:	548b      	strb	r3, [r1, r2]
 80013b0:	f102 33ff 	add.w	r3, r2, #4294967295	; 0xffffffff
 80013b4:	d001      	beq.n	80013ba <putx_+0x26>
 80013b6:	461a      	mov	r2, r3
 80013b8:	e7f1      	b.n	800139e <putx_+0xa>
 80013ba:	1888      	adds	r0, r1, r2
 80013bc:	f7ff ff9a 	bl	80012f4 <puts_>
 80013c0:	b005      	add	sp, #20
 80013c2:	f85d fb04 	ldr.w	pc, [sp], #4
	...

080013c8 <printf_>:
 80013c8:	b40f      	push	{r0, r1, r2, r3}
 80013ca:	b537      	push	{r0, r1, r2, r4, r5, lr}
 80013cc:	ac06      	add	r4, sp, #24
 80013ce:	4826      	ldr	r0, [pc, #152]	; (8001468 <printf_+0xa0>)
 80013d0:	f854 5b04 	ldr.w	r5, [r4], #4
 80013d4:	f000 f8a3 	bl	800151e <mutex_lock>
 80013d8:	9401      	str	r4, [sp, #4]
 80013da:	2400      	movs	r4, #0
 80013dc:	5d28      	ldrb	r0, [r5, r4]
 80013de:	2800      	cmp	r0, #0
 80013e0:	d039      	beq.n	8001456 <printf_+0x8e>
 80013e2:	2825      	cmp	r0, #37	; 0x25
 80013e4:	d003      	beq.n	80013ee <printf_+0x26>
 80013e6:	f7ff ff75 	bl	80012d4 <putc_>
 80013ea:	3401      	adds	r4, #1
 80013ec:	e7f6      	b.n	80013dc <printf_+0x14>
 80013ee:	192b      	adds	r3, r5, r4
 80013f0:	7858      	ldrb	r0, [r3, #1]
 80013f2:	2869      	cmp	r0, #105	; 0x69
 80013f4:	d016      	beq.n	8001424 <printf_+0x5c>
 80013f6:	d808      	bhi.n	800140a <printf_+0x42>
 80013f8:	2825      	cmp	r0, #37	; 0x25
 80013fa:	d028      	beq.n	800144e <printf_+0x86>
 80013fc:	2863      	cmp	r0, #99	; 0x63
 80013fe:	d128      	bne.n	8001452 <printf_+0x8a>
 8001400:	9b01      	ldr	r3, [sp, #4]
 8001402:	1d1a      	adds	r2, r3, #4
 8001404:	9201      	str	r2, [sp, #4]
 8001406:	7818      	ldrb	r0, [r3, #0]
 8001408:	e021      	b.n	800144e <printf_+0x86>
 800140a:	2875      	cmp	r0, #117	; 0x75
 800140c:	d011      	beq.n	8001432 <printf_+0x6a>
 800140e:	2878      	cmp	r0, #120	; 0x78
 8001410:	d016      	beq.n	8001440 <printf_+0x78>
 8001412:	2873      	cmp	r0, #115	; 0x73
 8001414:	d11d      	bne.n	8001452 <printf_+0x8a>
 8001416:	9b01      	ldr	r3, [sp, #4]
 8001418:	1d1a      	adds	r2, r3, #4
 800141a:	6818      	ldr	r0, [r3, #0]
 800141c:	9201      	str	r2, [sp, #4]
 800141e:	f7ff ff69 	bl	80012f4 <puts_>
 8001422:	e016      	b.n	8001452 <printf_+0x8a>
 8001424:	9b01      	ldr	r3, [sp, #4]
 8001426:	1d1a      	adds	r2, r3, #4
 8001428:	6818      	ldr	r0, [r3, #0]
 800142a:	9201      	str	r2, [sp, #4]
 800142c:	f7ff ff76 	bl	800131c <puti_>
 8001430:	e00f      	b.n	8001452 <printf_+0x8a>
 8001432:	9b01      	ldr	r3, [sp, #4]
 8001434:	1d1a      	adds	r2, r3, #4
 8001436:	6818      	ldr	r0, [r3, #0]
 8001438:	9201      	str	r2, [sp, #4]
 800143a:	f7ff ff94 	bl	8001366 <putui_>
 800143e:	e008      	b.n	8001452 <printf_+0x8a>
 8001440:	9b01      	ldr	r3, [sp, #4]
 8001442:	1d1a      	adds	r2, r3, #4
 8001444:	6818      	ldr	r0, [r3, #0]
 8001446:	9201      	str	r2, [sp, #4]
 8001448:	f7ff ffa4 	bl	8001394 <putx_>
 800144c:	e001      	b.n	8001452 <printf_+0x8a>
 800144e:	f7ff ff41 	bl	80012d4 <putc_>
 8001452:	3402      	adds	r4, #2
 8001454:	e7c2      	b.n	80013dc <printf_+0x14>
 8001456:	4804      	ldr	r0, [pc, #16]	; (8001468 <printf_+0xa0>)
 8001458:	f000 f87d 	bl	8001556 <mutex_unlock>
 800145c:	b003      	add	sp, #12
 800145e:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
 8001462:	b004      	add	sp, #16
 8001464:	4770      	bx	lr
 8001466:	bf00      	nop
 8001468:	20000bb4 	.word	0x20000bb4

0800146c <stdio_init>:
 800146c:	b510      	push	{r4, lr}
 800146e:	480e      	ldr	r0, [pc, #56]	; (80014a8 <stdio_init+0x3c>)
 8001470:	f000 f84b 	bl	800150a <mutex_init>
 8001474:	480d      	ldr	r0, [pc, #52]	; (80014ac <stdio_init+0x40>)
 8001476:	f000 f848 	bl	800150a <mutex_init>
 800147a:	480d      	ldr	r0, [pc, #52]	; (80014b0 <stdio_init+0x44>)
 800147c:	f000 f845 	bl	800150a <mutex_init>
 8001480:	480c      	ldr	r0, [pc, #48]	; (80014b4 <stdio_init+0x48>)
 8001482:	f000 f842 	bl	800150a <mutex_init>
 8001486:	2408      	movs	r4, #8
 8001488:	2020      	movs	r0, #32
 800148a:	f7ff ff23 	bl	80012d4 <putc_>
 800148e:	3c01      	subs	r4, #1
 8001490:	d1fa      	bne.n	8001488 <stdio_init+0x1c>
 8001492:	2420      	movs	r4, #32
 8001494:	200a      	movs	r0, #10
 8001496:	f7ff ff1d 	bl	80012d4 <putc_>
 800149a:	3c01      	subs	r4, #1
 800149c:	d1fa      	bne.n	8001494 <stdio_init+0x28>
 800149e:	4806      	ldr	r0, [pc, #24]	; (80014b8 <stdio_init+0x4c>)
 80014a0:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80014a4:	f7ff bf90 	b.w	80013c8 <printf_>
 80014a8:	20000bac 	.word	0x20000bac
 80014ac:	20000bb0 	.word	0x20000bb0
 80014b0:	20000bb8 	.word	0x20000bb8
 80014b4:	20000bb4 	.word	0x20000bb4
 80014b8:	08004add 	.word	0x08004add

080014bc <mem_init>:
 80014bc:	4b06      	ldr	r3, [pc, #24]	; (80014d8 <mem_init+0x1c>)
 80014be:	4a07      	ldr	r2, [pc, #28]	; (80014dc <mem_init+0x20>)
 80014c0:	601a      	str	r2, [r3, #0]
 80014c2:	4907      	ldr	r1, [pc, #28]	; (80014e0 <mem_init+0x24>)
 80014c4:	4b07      	ldr	r3, [pc, #28]	; (80014e4 <mem_init+0x28>)
 80014c6:	4808      	ldr	r0, [pc, #32]	; (80014e8 <mem_init+0x2c>)
 80014c8:	1a5b      	subs	r3, r3, r1
 80014ca:	4908      	ldr	r1, [pc, #32]	; (80014ec <mem_init+0x30>)
 80014cc:	4413      	add	r3, r2
 80014ce:	600b      	str	r3, [r1, #0]
 80014d0:	4b07      	ldr	r3, [pc, #28]	; (80014f0 <mem_init+0x34>)
 80014d2:	601a      	str	r2, [r3, #0]
 80014d4:	f000 b819 	b.w	800150a <mutex_init>
 80014d8:	20000bbc 	.word	0x20000bbc
 80014dc:	2000109c 	.word	0x2000109c
 80014e0:	2000109c 	.word	0x2000109c
 80014e4:	20004000 	.word	0x20004000
 80014e8:	20000bc8 	.word	0x20000bc8
 80014ec:	20000bc4 	.word	0x20000bc4
 80014f0:	20000bc0 	.word	0x20000bc0

080014f4 <lib_os_init>:
 80014f4:	b508      	push	{r3, lr}
 80014f6:	f7ff fe79 	bl	80011ec <kernel_init>
 80014fa:	f7ff ffdf 	bl	80014bc <mem_init>
 80014fe:	f7ff fecf 	bl	80012a0 <messages_init>
 8001502:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001506:	f7ff bfb1 	b.w	800146c <stdio_init>

0800150a <mutex_init>:
 800150a:	b510      	push	{r4, lr}
 800150c:	4604      	mov	r4, r0
 800150e:	f7ff fe15 	bl	800113c <sched_off>
 8001512:	2300      	movs	r3, #0
 8001514:	6023      	str	r3, [r4, #0]
 8001516:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800151a:	f7ff be11 	b.w	8001140 <sched_on>

0800151e <mutex_lock>:
 800151e:	b513      	push	{r0, r1, r4, lr}
 8001520:	4604      	mov	r4, r0
 8001522:	f7ff fe0b 	bl	800113c <sched_off>
 8001526:	6823      	ldr	r3, [r4, #0]
 8001528:	9301      	str	r3, [sp, #4]
 800152a:	f7ff fe09 	bl	8001140 <sched_on>
 800152e:	9b01      	ldr	r3, [sp, #4]
 8001530:	b10b      	cbz	r3, 8001536 <mutex_lock+0x18>
 8001532:	f7ff fe81 	bl	8001238 <set_wait_state>
 8001536:	9b01      	ldr	r3, [sp, #4]
 8001538:	2b00      	cmp	r3, #0
 800153a:	d1f2      	bne.n	8001522 <mutex_lock+0x4>
 800153c:	f7ff fdfe 	bl	800113c <sched_off>
 8001540:	6823      	ldr	r3, [r4, #0]
 8001542:	9301      	str	r3, [sp, #4]
 8001544:	9b01      	ldr	r3, [sp, #4]
 8001546:	2b00      	cmp	r3, #0
 8001548:	d1eb      	bne.n	8001522 <mutex_lock+0x4>
 800154a:	2301      	movs	r3, #1
 800154c:	6023      	str	r3, [r4, #0]
 800154e:	f7ff fdf7 	bl	8001140 <sched_on>
 8001552:	b002      	add	sp, #8
 8001554:	bd10      	pop	{r4, pc}

08001556 <mutex_unlock>:
 8001556:	b508      	push	{r3, lr}
 8001558:	f7ff ffd7 	bl	800150a <mutex_init>
 800155c:	f7ff fe8e 	bl	800127c <wake_up_threads>
 8001560:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001564:	f7ff bdee 	b.w	8001144 <yield>

08001568 <log_write>:
 8001568:	b570      	push	{r4, r5, r6, lr}
 800156a:	f3c0 060a 	ubfx	r6, r0, #0, #11
 800156e:	460c      	mov	r4, r1
 8001570:	4615      	mov	r5, r2
 8001572:	f001 f897 	bl	80026a4 <i2cStart>
 8001576:	0a30      	lsrs	r0, r6, #8
 8001578:	0040      	lsls	r0, r0, #1
 800157a:	f040 00a0 	orr.w	r0, r0, #160	; 0xa0
 800157e:	f001 f8af 	bl	80026e0 <i2cWrite>
 8001582:	b2f0      	uxtb	r0, r6
 8001584:	f001 f8ac 	bl	80026e0 <i2cWrite>
 8001588:	4425      	add	r5, r4
 800158a:	42ac      	cmp	r4, r5
 800158c:	d004      	beq.n	8001598 <log_write+0x30>
 800158e:	f814 0b01 	ldrb.w	r0, [r4], #1
 8001592:	f001 f8a5 	bl	80026e0 <i2cWrite>
 8001596:	e7f8      	b.n	800158a <log_write+0x22>
 8001598:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 800159c:	f001 b891 	b.w	80026c2 <i2cStop>

080015a0 <m_abs>:
 80015a0:	ee07 0a90 	vmov	s15, r0
 80015a4:	eef5 7ac0 	vcmpe.f32	s15, #0.0
 80015a8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80015ac:	bf48      	it	mi
 80015ae:	eef1 7a67 	vnegmi.f32	s15, s15
 80015b2:	ee17 0a90 	vmov	r0, s15
 80015b6:	4770      	bx	lr

080015b8 <m_saturate>:
 80015b8:	ee07 0a90 	vmov	s15, r0
 80015bc:	ee06 1a90 	vmov	s13, r1
 80015c0:	eef4 7a66 	vcmp.f32	s15, s13
 80015c4:	ee07 2a10 	vmov	s14, r2
 80015c8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80015cc:	bf48      	it	mi
 80015ce:	eef0 7a66 	vmovmi.f32	s15, s13
 80015d2:	eef4 7a47 	vcmp.f32	s15, s14
 80015d6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80015da:	bfcc      	ite	gt
 80015dc:	ee17 0a10 	vmovgt	r0, s14
 80015e0:	ee17 0a90 	vmovle	r0, s15
 80015e4:	4770      	bx	lr

080015e6 <m_min>:
 80015e6:	ee07 0a10 	vmov	s14, r0
 80015ea:	ee07 1a90 	vmov	s15, r1
 80015ee:	eeb4 7ae7 	vcmpe.f32	s14, s15
 80015f2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80015f6:	bf54      	ite	pl
 80015f8:	ee17 0a90 	vmovpl	r0, s15
 80015fc:	ee17 0a10 	vmovmi	r0, s14
 8001600:	4770      	bx	lr
	...

08001604 <pid_init>:
 8001604:	ee07 2a90 	vmov	s15, r2
 8001608:	ee06 3a10 	vmov	s12, r3
 800160c:	ed9d 7a00 	vldr	s14, [sp]
 8001610:	eddd 6a01 	vldr	s13, [sp, #4]
 8001614:	6241      	str	r1, [r0, #36]	; 0x24
 8001616:	ee37 6a86 	vadd.f32	s12, s15, s12
 800161a:	ee77 5a07 	vadd.f32	s11, s14, s14
 800161e:	ee36 6a07 	vadd.f32	s12, s12, s14
 8001622:	eef1 7a67 	vneg.f32	s15, s15
 8001626:	ee36 6a26 	vadd.f32	s12, s12, s13
 800162a:	ee77 7ae5 	vsub.f32	s15, s15, s11
 800162e:	ed80 6a04 	vstr	s12, [r0, #16]
 8001632:	ed9f 6a0b 	vldr	s12, [pc, #44]	; 8001660 <pid_init+0x5c>
 8001636:	ee26 6a86 	vmul.f32	s12, s13, s12
 800163a:	2200      	movs	r2, #0
 800163c:	ee77 7ac6 	vsub.f32	s15, s15, s12
 8001640:	ee37 7a06 	vadd.f32	s14, s14, s12
 8001644:	eef1 6a66 	vneg.f32	s13, s13
 8001648:	6002      	str	r2, [r0, #0]
 800164a:	6042      	str	r2, [r0, #4]
 800164c:	6082      	str	r2, [r0, #8]
 800164e:	60c2      	str	r2, [r0, #12]
 8001650:	edc0 7a05 	vstr	s15, [r0, #20]
 8001654:	ed80 7a06 	vstr	s14, [r0, #24]
 8001658:	edc0 6a07 	vstr	s13, [r0, #28]
 800165c:	6202      	str	r2, [r0, #32]
 800165e:	4770      	bx	lr
 8001660:	40400000 	.word	0x40400000

08001664 <pid_process>:
 8001664:	edd0 7a08 	vldr	s15, [r0, #32]
 8001668:	ed90 5a04 	vldr	s10, [r0, #16]
 800166c:	ed90 6a00 	vldr	s12, [r0]
 8001670:	edd0 6a01 	vldr	s13, [r0, #4]
 8001674:	ed80 6a01 	vstr	s12, [r0, #4]
 8001678:	ee05 1a90 	vmov	s11, r1
 800167c:	ee45 7a85 	vmla.f32	s15, s11, s10
 8001680:	6001      	str	r1, [r0, #0]
 8001682:	edd0 5a05 	vldr	s11, [r0, #20]
 8001686:	ed90 7a02 	vldr	s14, [r0, #8]
 800168a:	edc0 6a02 	vstr	s13, [r0, #8]
 800168e:	ee46 7a25 	vmla.f32	s15, s12, s11
 8001692:	ed90 6a06 	vldr	s12, [r0, #24]
 8001696:	ed80 7a03 	vstr	s14, [r0, #12]
 800169a:	ee46 7a86 	vmla.f32	s15, s13, s12
 800169e:	edd0 6a07 	vldr	s13, [r0, #28]
 80016a2:	ee47 7a26 	vmla.f32	s15, s14, s13
 80016a6:	ed90 7a09 	vldr	s14, [r0, #36]	; 0x24
 80016aa:	edc0 7a08 	vstr	s15, [r0, #32]
 80016ae:	eef4 7ac7 	vcmpe.f32	s15, s14
 80016b2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80016b6:	bfc8      	it	gt
 80016b8:	ed80 7a08 	vstrgt	s14, [r0, #32]
 80016bc:	edd0 7a08 	vldr	s15, [r0, #32]
 80016c0:	eeb1 7a47 	vneg.f32	s14, s14
 80016c4:	eef4 7ac7 	vcmpe.f32	s15, s14
 80016c8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80016cc:	bf48      	it	mi
 80016ce:	ed80 7a08 	vstrmi	s14, [r0, #32]
 80016d2:	6a00      	ldr	r0, [r0, #32]
 80016d4:	4770      	bx	lr
	...

080016d8 <TIM2_IRQHandler>:
 80016d8:	4a21      	ldr	r2, [pc, #132]	; (8001760 <TIM2_IRQHandler+0x88>)
 80016da:	4922      	ldr	r1, [pc, #136]	; (8001764 <TIM2_IRQHandler+0x8c>)
 80016dc:	6813      	ldr	r3, [r2, #0]
 80016de:	2b01      	cmp	r3, #1
 80016e0:	b510      	push	{r4, lr}
 80016e2:	d011      	beq.n	8001708 <TIM2_IRQHandler+0x30>
 80016e4:	d306      	bcc.n	80016f4 <TIM2_IRQHandler+0x1c>
 80016e6:	2b02      	cmp	r3, #2
 80016e8:	d113      	bne.n	8001712 <TIM2_IRQHandler+0x3a>
 80016ea:	f44f 6380 	mov.w	r3, #1024	; 0x400
 80016ee:	850b      	strh	r3, [r1, #40]	; 0x28
 80016f0:	2304      	movs	r3, #4
 80016f2:	e023      	b.n	800173c <TIM2_IRQHandler+0x64>
 80016f4:	f44f 7380 	mov.w	r3, #256	; 0x100
 80016f8:	850b      	strh	r3, [r1, #40]	; 0x28
 80016fa:	f44f 6380 	mov.w	r3, #1024	; 0x400
 80016fe:	618b      	str	r3, [r1, #24]
 8001700:	2301      	movs	r3, #1
 8001702:	6013      	str	r3, [r2, #0]
 8001704:	6093      	str	r3, [r2, #8]
 8001706:	e023      	b.n	8001750 <TIM2_IRQHandler+0x78>
 8001708:	f44f 7380 	mov.w	r3, #256	; 0x100
 800170c:	618b      	str	r3, [r1, #24]
 800170e:	2302      	movs	r3, #2
 8001710:	e014      	b.n	800173c <TIM2_IRQHandler+0x64>
 8001712:	f013 0f01 	tst.w	r3, #1
 8001716:	4814      	ldr	r0, [pc, #80]	; (8001768 <TIM2_IRQHandler+0x90>)
 8001718:	f103 0401 	add.w	r4, r3, #1
 800171c:	d010      	beq.n	8001740 <TIM2_IRQHandler+0x68>
 800171e:	3b04      	subs	r3, #4
 8001720:	f023 0301 	bic.w	r3, r3, #1
 8001724:	4413      	add	r3, r2
 8001726:	6c00      	ldr	r0, [r0, #64]	; 0x40
 8001728:	8298      	strh	r0, [r3, #20]
 800172a:	f5b4 7f82 	cmp.w	r4, #260	; 0x104
 800172e:	f44f 7380 	mov.w	r3, #256	; 0x100
 8001732:	850b      	strh	r3, [r1, #40]	; 0x28
 8001734:	d201      	bcs.n	800173a <TIM2_IRQHandler+0x62>
 8001736:	6014      	str	r4, [r2, #0]
 8001738:	e00a      	b.n	8001750 <TIM2_IRQHandler+0x78>
 800173a:	2300      	movs	r3, #0
 800173c:	6013      	str	r3, [r2, #0]
 800173e:	e007      	b.n	8001750 <TIM2_IRQHandler+0x78>
 8001740:	f44f 7380 	mov.w	r3, #256	; 0x100
 8001744:	618b      	str	r3, [r1, #24]
 8001746:	6883      	ldr	r3, [r0, #8]
 8001748:	6014      	str	r4, [r2, #0]
 800174a:	f043 0304 	orr.w	r3, r3, #4
 800174e:	6083      	str	r3, [r0, #8]
 8001750:	f04f 4080 	mov.w	r0, #1073741824	; 0x40000000
 8001754:	2101      	movs	r1, #1
 8001756:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800175a:	f000 bd1e 	b.w	800219a <TIM_ClearITPendingBit>
 800175e:	bf00      	nop
 8001760:	20000bcc 	.word	0x20000bcc
 8001764:	48000400 	.word	0x48000400
 8001768:	50000500 	.word	0x50000500

0800176c <rgb_i2c_delay>:
 800176c:	bf00      	nop
 800176e:	bf00      	nop
 8001770:	bf00      	nop
 8001772:	bf00      	nop
 8001774:	4770      	bx	lr
	...

08001778 <RGBSetLowSDA>:
 8001778:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 800177a:	4f15      	ldr	r7, [pc, #84]	; (80017d0 <RGBSetLowSDA+0x58>)
 800177c:	2401      	movs	r4, #1
 800177e:	783b      	ldrb	r3, [r7, #0]
 8001780:	9300      	str	r3, [sp, #0]
 8001782:	2603      	movs	r6, #3
 8001784:	2500      	movs	r5, #0
 8001786:	4669      	mov	r1, sp
 8001788:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 800178c:	f88d 5007 	strb.w	r5, [sp, #7]
 8001790:	f88d 4004 	strb.w	r4, [sp, #4]
 8001794:	f88d 6005 	strb.w	r6, [sp, #5]
 8001798:	f88d 4006 	strb.w	r4, [sp, #6]
 800179c:	f001 fa8e 	bl	8002cbc <GPIO_Init>
 80017a0:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 80017a4:	783a      	ldrb	r2, [r7, #0]
 80017a6:	851a      	strh	r2, [r3, #40]	; 0x28
 80017a8:	f88d 5007 	strb.w	r5, [sp, #7]
 80017ac:	4d09      	ldr	r5, [pc, #36]	; (80017d4 <RGBSetLowSDA+0x5c>)
 80017ae:	9400      	str	r4, [sp, #0]
 80017b0:	4628      	mov	r0, r5
 80017b2:	4669      	mov	r1, sp
 80017b4:	f88d 4004 	strb.w	r4, [sp, #4]
 80017b8:	f88d 6005 	strb.w	r6, [sp, #5]
 80017bc:	f88d 4006 	strb.w	r4, [sp, #6]
 80017c0:	f001 fa7c 	bl	8002cbc <GPIO_Init>
 80017c4:	852c      	strh	r4, [r5, #40]	; 0x28
 80017c6:	f7ff ffd1 	bl	800176c <rgb_i2c_delay>
 80017ca:	b003      	add	sp, #12
 80017cc:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80017ce:	bf00      	nop
 80017d0:	20000e3a 	.word	0x20000e3a
 80017d4:	48000400 	.word	0x48000400

080017d8 <RGBSetHighSDA>:
 80017d8:	b573      	push	{r0, r1, r4, r5, r6, lr}
 80017da:	4d13      	ldr	r5, [pc, #76]	; (8001828 <RGBSetHighSDA+0x50>)
 80017dc:	2400      	movs	r4, #0
 80017de:	782b      	ldrb	r3, [r5, #0]
 80017e0:	9300      	str	r3, [sp, #0]
 80017e2:	2603      	movs	r6, #3
 80017e4:	4669      	mov	r1, sp
 80017e6:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80017ea:	f88d 4004 	strb.w	r4, [sp, #4]
 80017ee:	f88d 4007 	strb.w	r4, [sp, #7]
 80017f2:	f88d 6005 	strb.w	r6, [sp, #5]
 80017f6:	f001 fa61 	bl	8002cbc <GPIO_Init>
 80017fa:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 80017fe:	782a      	ldrb	r2, [r5, #0]
 8001800:	619a      	str	r2, [r3, #24]
 8001802:	f88d 4004 	strb.w	r4, [sp, #4]
 8001806:	f88d 4007 	strb.w	r4, [sp, #7]
 800180a:	4c08      	ldr	r4, [pc, #32]	; (800182c <RGBSetHighSDA+0x54>)
 800180c:	f88d 6005 	strb.w	r6, [sp, #5]
 8001810:	2501      	movs	r5, #1
 8001812:	4620      	mov	r0, r4
 8001814:	4669      	mov	r1, sp
 8001816:	9500      	str	r5, [sp, #0]
 8001818:	f001 fa50 	bl	8002cbc <GPIO_Init>
 800181c:	61a5      	str	r5, [r4, #24]
 800181e:	f7ff ffa5 	bl	800176c <rgb_i2c_delay>
 8001822:	b002      	add	sp, #8
 8001824:	bd70      	pop	{r4, r5, r6, pc}
 8001826:	bf00      	nop
 8001828:	20000e3a 	.word	0x20000e3a
 800182c:	48000400 	.word	0x48000400

08001830 <RGBSetLowSCL>:
 8001830:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8001834:	f44f 7280 	mov.w	r2, #256	; 0x100
 8001838:	851a      	strh	r2, [r3, #40]	; 0x28
 800183a:	f7ff bf97 	b.w	800176c <rgb_i2c_delay>

0800183e <RGBSetHighSCL>:
 800183e:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8001842:	f44f 7280 	mov.w	r2, #256	; 0x100
 8001846:	619a      	str	r2, [r3, #24]
 8001848:	f7ff bf90 	b.w	800176c <rgb_i2c_delay>

0800184c <rgb_i2c_init>:
 800184c:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 800184e:	4f1f      	ldr	r7, [pc, #124]	; (80018cc <rgb_i2c_init+0x80>)
 8001850:	2400      	movs	r4, #0
 8001852:	2501      	movs	r5, #1
 8001854:	2603      	movs	r6, #3
 8001856:	f44f 7380 	mov.w	r3, #256	; 0x100
 800185a:	4669      	mov	r1, sp
 800185c:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8001860:	9300      	str	r3, [sp, #0]
 8001862:	f88d 4006 	strb.w	r4, [sp, #6]
 8001866:	f88d 4007 	strb.w	r4, [sp, #7]
 800186a:	f88d 5004 	strb.w	r5, [sp, #4]
 800186e:	f88d 6005 	strb.w	r6, [sp, #5]
 8001872:	f001 fa23 	bl	8002cbc <GPIO_Init>
 8001876:	783b      	ldrb	r3, [r7, #0]
 8001878:	9300      	str	r3, [sp, #0]
 800187a:	4669      	mov	r1, sp
 800187c:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8001880:	f88d 4004 	strb.w	r4, [sp, #4]
 8001884:	f88d 4007 	strb.w	r4, [sp, #7]
 8001888:	f88d 6005 	strb.w	r6, [sp, #5]
 800188c:	f001 fa16 	bl	8002cbc <GPIO_Init>
 8001890:	7839      	ldrb	r1, [r7, #0]
 8001892:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8001896:	f001 fa53 	bl	8002d40 <GPIO_SetBits>
 800189a:	f88d 4004 	strb.w	r4, [sp, #4]
 800189e:	f88d 4007 	strb.w	r4, [sp, #7]
 80018a2:	4c0b      	ldr	r4, [pc, #44]	; (80018d0 <rgb_i2c_init+0x84>)
 80018a4:	9500      	str	r5, [sp, #0]
 80018a6:	4620      	mov	r0, r4
 80018a8:	4669      	mov	r1, sp
 80018aa:	f88d 6005 	strb.w	r6, [sp, #5]
 80018ae:	f001 fa05 	bl	8002cbc <GPIO_Init>
 80018b2:	4620      	mov	r0, r4
 80018b4:	4629      	mov	r1, r5
 80018b6:	f001 fa43 	bl	8002d40 <GPIO_SetBits>
 80018ba:	f7ff ffc0 	bl	800183e <RGBSetHighSCL>
 80018be:	f7ff ff5b 	bl	8001778 <RGBSetLowSDA>
 80018c2:	f7ff ff89 	bl	80017d8 <RGBSetHighSDA>
 80018c6:	b003      	add	sp, #12
 80018c8:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80018ca:	bf00      	nop
 80018cc:	20000e3a 	.word	0x20000e3a
 80018d0:	48000400 	.word	0x48000400

080018d4 <rgb_i2cStart>:
 80018d4:	b508      	push	{r3, lr}
 80018d6:	f7ff ffb2 	bl	800183e <RGBSetHighSCL>
 80018da:	f7ff ff7d 	bl	80017d8 <RGBSetHighSDA>
 80018de:	f7ff ffae 	bl	800183e <RGBSetHighSCL>
 80018e2:	f7ff ff49 	bl	8001778 <RGBSetLowSDA>
 80018e6:	f7ff ffa3 	bl	8001830 <RGBSetLowSCL>
 80018ea:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80018ee:	f7ff bf73 	b.w	80017d8 <RGBSetHighSDA>

080018f2 <rgb_i2cStop>:
 80018f2:	b508      	push	{r3, lr}
 80018f4:	f7ff ff9c 	bl	8001830 <RGBSetLowSCL>
 80018f8:	f7ff ff3e 	bl	8001778 <RGBSetLowSDA>
 80018fc:	f7ff ff9f 	bl	800183e <RGBSetHighSCL>
 8001900:	f7ff ff3a 	bl	8001778 <RGBSetLowSDA>
 8001904:	f7ff ff9b 	bl	800183e <RGBSetHighSCL>
 8001908:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800190c:	f7ff bf64 	b.w	80017d8 <RGBSetHighSDA>

08001910 <rgb_i2cWrite>:
 8001910:	b538      	push	{r3, r4, r5, lr}
 8001912:	4605      	mov	r5, r0
 8001914:	2408      	movs	r4, #8
 8001916:	f7ff ff8b 	bl	8001830 <RGBSetLowSCL>
 800191a:	062b      	lsls	r3, r5, #24
 800191c:	d502      	bpl.n	8001924 <rgb_i2cWrite+0x14>
 800191e:	f7ff ff5b 	bl	80017d8 <RGBSetHighSDA>
 8001922:	e001      	b.n	8001928 <rgb_i2cWrite+0x18>
 8001924:	f7ff ff28 	bl	8001778 <RGBSetLowSDA>
 8001928:	3c01      	subs	r4, #1
 800192a:	f7ff ff88 	bl	800183e <RGBSetHighSCL>
 800192e:	006d      	lsls	r5, r5, #1
 8001930:	f014 04ff 	ands.w	r4, r4, #255	; 0xff
 8001934:	b2ed      	uxtb	r5, r5
 8001936:	d1ee      	bne.n	8001916 <rgb_i2cWrite+0x6>
 8001938:	f7ff ff7a 	bl	8001830 <RGBSetLowSCL>
 800193c:	f7ff ff4c 	bl	80017d8 <RGBSetHighSDA>
 8001940:	f7ff ff7d 	bl	800183e <RGBSetHighSCL>
 8001944:	f7ff ff74 	bl	8001830 <RGBSetLowSCL>
 8001948:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 800194c:	f7ff bf0e 	b.w	800176c <rgb_i2c_delay>

08001950 <rgb_i2cRead>:
 8001950:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8001954:	1e4e      	subs	r6, r1, #1
 8001956:	4680      	mov	r8, r0
 8001958:	460c      	mov	r4, r1
 800195a:	f101 0708 	add.w	r7, r1, #8
 800195e:	4633      	mov	r3, r6
 8001960:	2200      	movs	r2, #0
 8001962:	f803 2f01 	strb.w	r2, [r3, #1]!
 8001966:	42bb      	cmp	r3, r7
 8001968:	d1fa      	bne.n	8001960 <rgb_i2cRead+0x10>
 800196a:	f7ff ff61 	bl	8001830 <RGBSetLowSCL>
 800196e:	f7ff ff33 	bl	80017d8 <RGBSetHighSDA>
 8001972:	2508      	movs	r5, #8
 8001974:	4633      	mov	r3, r6
 8001976:	f813 2f01 	ldrb.w	r2, [r3, #1]!
 800197a:	0052      	lsls	r2, r2, #1
 800197c:	42bb      	cmp	r3, r7
 800197e:	701a      	strb	r2, [r3, #0]
 8001980:	d1f9      	bne.n	8001976 <rgb_i2cRead+0x26>
 8001982:	f7ff ff5c 	bl	800183e <RGBSetHighSCL>
 8001986:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 800198a:	8a1b      	ldrh	r3, [r3, #16]
 800198c:	b29b      	uxth	r3, r3
 800198e:	07d9      	lsls	r1, r3, #31
 8001990:	bf42      	ittt	mi
 8001992:	7822      	ldrbmi	r2, [r4, #0]
 8001994:	f042 0201 	orrmi.w	r2, r2, #1
 8001998:	7022      	strbmi	r2, [r4, #0]
 800199a:	079a      	lsls	r2, r3, #30
 800199c:	bf42      	ittt	mi
 800199e:	7862      	ldrbmi	r2, [r4, #1]
 80019a0:	f042 0201 	orrmi.w	r2, r2, #1
 80019a4:	7062      	strbmi	r2, [r4, #1]
 80019a6:	0758      	lsls	r0, r3, #29
 80019a8:	bf42      	ittt	mi
 80019aa:	78a2      	ldrbmi	r2, [r4, #2]
 80019ac:	f042 0201 	orrmi.w	r2, r2, #1
 80019b0:	70a2      	strbmi	r2, [r4, #2]
 80019b2:	0719      	lsls	r1, r3, #28
 80019b4:	bf42      	ittt	mi
 80019b6:	78e2      	ldrbmi	r2, [r4, #3]
 80019b8:	f042 0201 	orrmi.w	r2, r2, #1
 80019bc:	70e2      	strbmi	r2, [r4, #3]
 80019be:	06da      	lsls	r2, r3, #27
 80019c0:	bf42      	ittt	mi
 80019c2:	7922      	ldrbmi	r2, [r4, #4]
 80019c4:	f042 0201 	orrmi.w	r2, r2, #1
 80019c8:	7122      	strbmi	r2, [r4, #4]
 80019ca:	0698      	lsls	r0, r3, #26
 80019cc:	bf42      	ittt	mi
 80019ce:	7962      	ldrbmi	r2, [r4, #5]
 80019d0:	f042 0201 	orrmi.w	r2, r2, #1
 80019d4:	7162      	strbmi	r2, [r4, #5]
 80019d6:	0659      	lsls	r1, r3, #25
 80019d8:	bf42      	ittt	mi
 80019da:	79a2      	ldrbmi	r2, [r4, #6]
 80019dc:	f042 0201 	orrmi.w	r2, r2, #1
 80019e0:	71a2      	strbmi	r2, [r4, #6]
 80019e2:	061a      	lsls	r2, r3, #24
 80019e4:	bf42      	ittt	mi
 80019e6:	79e3      	ldrbmi	r3, [r4, #7]
 80019e8:	f043 0301 	orrmi.w	r3, r3, #1
 80019ec:	71e3      	strbmi	r3, [r4, #7]
 80019ee:	4b0c      	ldr	r3, [pc, #48]	; (8001a20 <rgb_i2cRead+0xd0>)
 80019f0:	8a1b      	ldrh	r3, [r3, #16]
 80019f2:	07db      	lsls	r3, r3, #31
 80019f4:	bf42      	ittt	mi
 80019f6:	7a23      	ldrbmi	r3, [r4, #8]
 80019f8:	f043 0301 	orrmi.w	r3, r3, #1
 80019fc:	7223      	strbmi	r3, [r4, #8]
 80019fe:	f7ff ff17 	bl	8001830 <RGBSetLowSCL>
 8001a02:	3d01      	subs	r5, #1
 8001a04:	d1b6      	bne.n	8001974 <rgb_i2cRead+0x24>
 8001a06:	f1b8 0f00 	cmp.w	r8, #0
 8001a0a:	d001      	beq.n	8001a10 <rgb_i2cRead+0xc0>
 8001a0c:	f7ff feb4 	bl	8001778 <RGBSetLowSDA>
 8001a10:	f7ff ff15 	bl	800183e <RGBSetHighSCL>
 8001a14:	f7ff ff0c 	bl	8001830 <RGBSetLowSCL>
 8001a18:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8001a1c:	f7ff bea6 	b.w	800176c <rgb_i2c_delay>
 8001a20:	48000400 	.word	0x48000400

08001a24 <rgb_i2c_write_reg>:
 8001a24:	b570      	push	{r4, r5, r6, lr}
 8001a26:	4606      	mov	r6, r0
 8001a28:	460d      	mov	r5, r1
 8001a2a:	4614      	mov	r4, r2
 8001a2c:	f7ff ff52 	bl	80018d4 <rgb_i2cStart>
 8001a30:	4630      	mov	r0, r6
 8001a32:	f7ff ff6d 	bl	8001910 <rgb_i2cWrite>
 8001a36:	4628      	mov	r0, r5
 8001a38:	f7ff ff6a 	bl	8001910 <rgb_i2cWrite>
 8001a3c:	4620      	mov	r0, r4
 8001a3e:	f7ff ff67 	bl	8001910 <rgb_i2cWrite>
 8001a42:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8001a46:	f7ff bf54 	b.w	80018f2 <rgb_i2cStop>

08001a4a <rgb_i2c_read_reg>:
 8001a4a:	b570      	push	{r4, r5, r6, lr}
 8001a4c:	4604      	mov	r4, r0
 8001a4e:	460e      	mov	r6, r1
 8001a50:	4615      	mov	r5, r2
 8001a52:	f7ff ff3f 	bl	80018d4 <rgb_i2cStart>
 8001a56:	4620      	mov	r0, r4
 8001a58:	f7ff ff5a 	bl	8001910 <rgb_i2cWrite>
 8001a5c:	4630      	mov	r0, r6
 8001a5e:	f7ff ff57 	bl	8001910 <rgb_i2cWrite>
 8001a62:	f7ff ff37 	bl	80018d4 <rgb_i2cStart>
 8001a66:	f044 0001 	orr.w	r0, r4, #1
 8001a6a:	f7ff ff51 	bl	8001910 <rgb_i2cWrite>
 8001a6e:	4629      	mov	r1, r5
 8001a70:	2000      	movs	r0, #0
 8001a72:	f7ff ff6d 	bl	8001950 <rgb_i2cRead>
 8001a76:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8001a7a:	f7ff bf3a 	b.w	80018f2 <rgb_i2cStop>
	...

08001a80 <rgb_init>:
 8001a80:	b570      	push	{r4, r5, r6, lr}
 8001a82:	4b1e      	ldr	r3, [pc, #120]	; (8001afc <rgb_init+0x7c>)
 8001a84:	2200      	movs	r2, #0
 8001a86:	3201      	adds	r2, #1
 8001a88:	2400      	movs	r4, #0
 8001a8a:	2a09      	cmp	r2, #9
 8001a8c:	801c      	strh	r4, [r3, #0]
 8001a8e:	825c      	strh	r4, [r3, #18]
 8001a90:	849c      	strh	r4, [r3, #36]	; 0x24
 8001a92:	f8a3 4048 	strh.w	r4, [r3, #72]	; 0x48
 8001a96:	86dc      	strh	r4, [r3, #54]	; 0x36
 8001a98:	f103 0302 	add.w	r3, r3, #2
 8001a9c:	d1f3      	bne.n	8001a86 <rgb_init+0x6>
 8001a9e:	4d18      	ldr	r5, [pc, #96]	; (8001b00 <rgb_init+0x80>)
 8001aa0:	f64f 76ff 	movw	r6, #65535	; 0xffff
 8001aa4:	802e      	strh	r6, [r5, #0]
 8001aa6:	f7ff fed1 	bl	800184c <rgb_i2c_init>
 8001aaa:	2072      	movs	r0, #114	; 0x72
 8001aac:	2181      	movs	r1, #129	; 0x81
 8001aae:	22ff      	movs	r2, #255	; 0xff
 8001ab0:	f7ff ffb8 	bl	8001a24 <rgb_i2c_write_reg>
 8001ab4:	2072      	movs	r0, #114	; 0x72
 8001ab6:	2183      	movs	r1, #131	; 0x83
 8001ab8:	22ff      	movs	r2, #255	; 0xff
 8001aba:	f7ff ffb3 	bl	8001a24 <rgb_i2c_write_reg>
 8001abe:	2072      	movs	r0, #114	; 0x72
 8001ac0:	218d      	movs	r1, #141	; 0x8d
 8001ac2:	4622      	mov	r2, r4
 8001ac4:	f7ff ffae 	bl	8001a24 <rgb_i2c_write_reg>
 8001ac8:	2072      	movs	r0, #114	; 0x72
 8001aca:	2180      	movs	r1, #128	; 0x80
 8001acc:	2203      	movs	r2, #3
 8001ace:	f7ff ffa9 	bl	8001a24 <rgb_i2c_write_reg>
 8001ad2:	2072      	movs	r0, #114	; 0x72
 8001ad4:	218f      	movs	r1, #143	; 0x8f
 8001ad6:	2223      	movs	r2, #35	; 0x23
 8001ad8:	f7ff ffa4 	bl	8001a24 <rgb_i2c_write_reg>
 8001adc:	f7ff fe7c 	bl	80017d8 <RGBSetHighSDA>
 8001ae0:	2072      	movs	r0, #114	; 0x72
 8001ae2:	2180      	movs	r1, #128	; 0x80
 8001ae4:	2207      	movs	r2, #7
 8001ae6:	802c      	strh	r4, [r5, #0]
 8001ae8:	f7ff ff9c 	bl	8001a24 <rgb_i2c_write_reg>
 8001aec:	2072      	movs	r0, #114	; 0x72
 8001aee:	218e      	movs	r1, #142	; 0x8e
 8001af0:	2208      	movs	r2, #8
 8001af2:	f7ff ff97 	bl	8001a24 <rgb_i2c_write_reg>
 8001af6:	802e      	strh	r6, [r5, #0]
 8001af8:	bd70      	pop	{r4, r5, r6, pc}
 8001afa:	bf00      	nop
 8001afc:	20000de0 	.word	0x20000de0
 8001b00:	20000e3a 	.word	0x20000e3a

08001b04 <rgb_get>:
 8001b04:	4800      	ldr	r0, [pc, #0]	; (8001b08 <rgb_get+0x4>)
 8001b06:	4770      	bx	lr
 8001b08:	20000de0 	.word	0x20000de0

08001b0c <rgb_read>:
 8001b0c:	b538      	push	{r3, r4, r5, lr}
 8001b0e:	f7ff fee1 	bl	80018d4 <rgb_i2cStart>
 8001b12:	2072      	movs	r0, #114	; 0x72
 8001b14:	f7ff fefc 	bl	8001910 <rgb_i2cWrite>
 8001b18:	20b4      	movs	r0, #180	; 0xb4
 8001b1a:	f7ff fef9 	bl	8001910 <rgb_i2cWrite>
 8001b1e:	4d48      	ldr	r5, [pc, #288]	; (8001c40 <rgb_read+0x134>)
 8001b20:	f7ff fed8 	bl	80018d4 <rgb_i2cStart>
 8001b24:	2073      	movs	r0, #115	; 0x73
 8001b26:	f7ff fef3 	bl	8001910 <rgb_i2cWrite>
 8001b2a:	2001      	movs	r0, #1
 8001b2c:	4945      	ldr	r1, [pc, #276]	; (8001c44 <rgb_read+0x138>)
 8001b2e:	f7ff ff0f 	bl	8001950 <rgb_i2cRead>
 8001b32:	462a      	mov	r2, r5
 8001b34:	2300      	movs	r3, #0
 8001b36:	4c43      	ldr	r4, [pc, #268]	; (8001c44 <rgb_read+0x138>)
 8001b38:	5d19      	ldrb	r1, [r3, r4]
 8001b3a:	f822 1f02 	strh.w	r1, [r2, #2]!
 8001b3e:	3301      	adds	r3, #1
 8001b40:	2b09      	cmp	r3, #9
 8001b42:	d1f8      	bne.n	8001b36 <rgb_read+0x2a>
 8001b44:	2001      	movs	r0, #1
 8001b46:	4621      	mov	r1, r4
 8001b48:	f7ff ff02 	bl	8001950 <rgb_i2cRead>
 8001b4c:	2300      	movs	r3, #0
 8001b4e:	5ce1      	ldrb	r1, [r4, r3]
 8001b50:	f835 2f02 	ldrh.w	r2, [r5, #2]!
 8001b54:	3301      	adds	r3, #1
 8001b56:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
 8001b5a:	2b09      	cmp	r3, #9
 8001b5c:	802a      	strh	r2, [r5, #0]
 8001b5e:	d1f6      	bne.n	8001b4e <rgb_read+0x42>
 8001b60:	2001      	movs	r0, #1
 8001b62:	4938      	ldr	r1, [pc, #224]	; (8001c44 <rgb_read+0x138>)
 8001b64:	f7ff fef4 	bl	8001950 <rgb_i2cRead>
 8001b68:	2300      	movs	r3, #0
 8001b6a:	4d37      	ldr	r5, [pc, #220]	; (8001c48 <rgb_read+0x13c>)
 8001b6c:	5ce2      	ldrb	r2, [r4, r3]
 8001b6e:	f825 2013 	strh.w	r2, [r5, r3, lsl #1]
 8001b72:	3301      	adds	r3, #1
 8001b74:	2b09      	cmp	r3, #9
 8001b76:	d1f8      	bne.n	8001b6a <rgb_read+0x5e>
 8001b78:	2001      	movs	r0, #1
 8001b7a:	4932      	ldr	r1, [pc, #200]	; (8001c44 <rgb_read+0x138>)
 8001b7c:	f7ff fee8 	bl	8001950 <rgb_i2cRead>
 8001b80:	2300      	movs	r3, #0
 8001b82:	f835 2013 	ldrh.w	r2, [r5, r3, lsl #1]
 8001b86:	5ce1      	ldrb	r1, [r4, r3]
 8001b88:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
 8001b8c:	f825 2013 	strh.w	r2, [r5, r3, lsl #1]
 8001b90:	3301      	adds	r3, #1
 8001b92:	2b09      	cmp	r3, #9
 8001b94:	d1f5      	bne.n	8001b82 <rgb_read+0x76>
 8001b96:	4d2d      	ldr	r5, [pc, #180]	; (8001c4c <rgb_read+0x140>)
 8001b98:	492a      	ldr	r1, [pc, #168]	; (8001c44 <rgb_read+0x138>)
 8001b9a:	2001      	movs	r0, #1
 8001b9c:	f7ff fed8 	bl	8001950 <rgb_i2cRead>
 8001ba0:	462a      	mov	r2, r5
 8001ba2:	2300      	movs	r3, #0
 8001ba4:	5ce1      	ldrb	r1, [r4, r3]
 8001ba6:	f822 1f02 	strh.w	r1, [r2, #2]!
 8001baa:	3301      	adds	r3, #1
 8001bac:	2b09      	cmp	r3, #9
 8001bae:	d1f9      	bne.n	8001ba4 <rgb_read+0x98>
 8001bb0:	2001      	movs	r0, #1
 8001bb2:	4924      	ldr	r1, [pc, #144]	; (8001c44 <rgb_read+0x138>)
 8001bb4:	f7ff fecc 	bl	8001950 <rgb_i2cRead>
 8001bb8:	2300      	movs	r3, #0
 8001bba:	5ce1      	ldrb	r1, [r4, r3]
 8001bbc:	f835 2f02 	ldrh.w	r2, [r5, #2]!
 8001bc0:	3301      	adds	r3, #1
 8001bc2:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
 8001bc6:	2b09      	cmp	r3, #9
 8001bc8:	802a      	strh	r2, [r5, #0]
 8001bca:	d1f6      	bne.n	8001bba <rgb_read+0xae>
 8001bcc:	4d20      	ldr	r5, [pc, #128]	; (8001c50 <rgb_read+0x144>)
 8001bce:	491d      	ldr	r1, [pc, #116]	; (8001c44 <rgb_read+0x138>)
 8001bd0:	2001      	movs	r0, #1
 8001bd2:	f7ff febd 	bl	8001950 <rgb_i2cRead>
 8001bd6:	462a      	mov	r2, r5
 8001bd8:	2300      	movs	r3, #0
 8001bda:	5ce1      	ldrb	r1, [r4, r3]
 8001bdc:	f822 1f02 	strh.w	r1, [r2, #2]!
 8001be0:	3301      	adds	r3, #1
 8001be2:	2b09      	cmp	r3, #9
 8001be4:	d1f9      	bne.n	8001bda <rgb_read+0xce>
 8001be6:	2001      	movs	r0, #1
 8001be8:	4916      	ldr	r1, [pc, #88]	; (8001c44 <rgb_read+0x138>)
 8001bea:	f7ff feb1 	bl	8001950 <rgb_i2cRead>
 8001bee:	2300      	movs	r3, #0
 8001bf0:	5ce1      	ldrb	r1, [r4, r3]
 8001bf2:	f835 2f02 	ldrh.w	r2, [r5, #2]!
 8001bf6:	3301      	adds	r3, #1
 8001bf8:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
 8001bfc:	2b09      	cmp	r3, #9
 8001bfe:	802a      	strh	r2, [r5, #0]
 8001c00:	d1f6      	bne.n	8001bf0 <rgb_read+0xe4>
 8001c02:	4d14      	ldr	r5, [pc, #80]	; (8001c54 <rgb_read+0x148>)
 8001c04:	490f      	ldr	r1, [pc, #60]	; (8001c44 <rgb_read+0x138>)
 8001c06:	2001      	movs	r0, #1
 8001c08:	f7ff fea2 	bl	8001950 <rgb_i2cRead>
 8001c0c:	462a      	mov	r2, r5
 8001c0e:	2300      	movs	r3, #0
 8001c10:	5ce1      	ldrb	r1, [r4, r3]
 8001c12:	f822 1f02 	strh.w	r1, [r2, #2]!
 8001c16:	3301      	adds	r3, #1
 8001c18:	2b09      	cmp	r3, #9
 8001c1a:	d1f9      	bne.n	8001c10 <rgb_read+0x104>
 8001c1c:	2000      	movs	r0, #0
 8001c1e:	4909      	ldr	r1, [pc, #36]	; (8001c44 <rgb_read+0x138>)
 8001c20:	f7ff fe96 	bl	8001950 <rgb_i2cRead>
 8001c24:	2300      	movs	r3, #0
 8001c26:	5ce1      	ldrb	r1, [r4, r3]
 8001c28:	f835 2f02 	ldrh.w	r2, [r5, #2]!
 8001c2c:	3301      	adds	r3, #1
 8001c2e:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
 8001c32:	2b09      	cmp	r3, #9
 8001c34:	802a      	strh	r2, [r5, #0]
 8001c36:	d1f6      	bne.n	8001c26 <rgb_read+0x11a>
 8001c38:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8001c3c:	f7ff be59 	b.w	80018f2 <rgb_i2cStop>
 8001c40:	20000e14 	.word	0x20000e14
 8001c44:	20000e3c 	.word	0x20000e3c
 8001c48:	20000de0 	.word	0x20000de0
 8001c4c:	20000df0 	.word	0x20000df0
 8001c50:	20000e02 	.word	0x20000e02
 8001c54:	20000e26 	.word	0x20000e26

08001c58 <main>:
 8001c58:	b508      	push	{r3, lr}
 8001c5a:	f000 ff8b 	bl	8002b74 <lib_low_level_init>
 8001c5e:	f7ff fc49 	bl	80014f4 <lib_os_init>
 8001c62:	4905      	ldr	r1, [pc, #20]	; (8001c78 <main+0x20>)
 8001c64:	4805      	ldr	r0, [pc, #20]	; (8001c7c <main+0x24>)
 8001c66:	f44f 7200 	mov.w	r2, #512	; 0x200
 8001c6a:	2306      	movs	r3, #6
 8001c6c:	f7ff fa7e 	bl	800116c <create_thread>
 8001c70:	f7ff fa76 	bl	8001160 <kernel_start>
 8001c74:	2000      	movs	r0, #0
 8001c76:	bd08      	pop	{r3, pc}
 8001c78:	20000e48 	.word	0x20000e48
 8001c7c:	08000bf9 	.word	0x08000bf9

08001c80 <RCC_GetClocksFreq>:
 8001c80:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8001c84:	4f9b      	ldr	r7, [pc, #620]	; (8001ef4 <RCC_GetClocksFreq+0x274>)
 8001c86:	687b      	ldr	r3, [r7, #4]
 8001c88:	f003 030c 	and.w	r3, r3, #12
 8001c8c:	2b04      	cmp	r3, #4
 8001c8e:	d005      	beq.n	8001c9c <RCC_GetClocksFreq+0x1c>
 8001c90:	2b08      	cmp	r3, #8
 8001c92:	d006      	beq.n	8001ca2 <RCC_GetClocksFreq+0x22>
 8001c94:	4a98      	ldr	r2, [pc, #608]	; (8001ef8 <RCC_GetClocksFreq+0x278>)
 8001c96:	6002      	str	r2, [r0, #0]
 8001c98:	b9b3      	cbnz	r3, 8001cc8 <RCC_GetClocksFreq+0x48>
 8001c9a:	e016      	b.n	8001cca <RCC_GetClocksFreq+0x4a>
 8001c9c:	4b96      	ldr	r3, [pc, #600]	; (8001ef8 <RCC_GetClocksFreq+0x278>)
 8001c9e:	6003      	str	r3, [r0, #0]
 8001ca0:	e012      	b.n	8001cc8 <RCC_GetClocksFreq+0x48>
 8001ca2:	687b      	ldr	r3, [r7, #4]
 8001ca4:	6879      	ldr	r1, [r7, #4]
 8001ca6:	f3c3 4383 	ubfx	r3, r3, #18, #4
 8001caa:	1c9a      	adds	r2, r3, #2
 8001cac:	03cb      	lsls	r3, r1, #15
 8001cae:	bf49      	itett	mi
 8001cb0:	6afb      	ldrmi	r3, [r7, #44]	; 0x2c
 8001cb2:	4b92      	ldrpl	r3, [pc, #584]	; (8001efc <RCC_GetClocksFreq+0x27c>)
 8001cb4:	4990      	ldrmi	r1, [pc, #576]	; (8001ef8 <RCC_GetClocksFreq+0x278>)
 8001cb6:	f003 030f 	andmi.w	r3, r3, #15
 8001cba:	bf44      	itt	mi
 8001cbc:	3301      	addmi	r3, #1
 8001cbe:	fbb1 f3f3 	udivmi	r3, r1, r3
 8001cc2:	4353      	muls	r3, r2
 8001cc4:	6003      	str	r3, [r0, #0]
 8001cc6:	e000      	b.n	8001cca <RCC_GetClocksFreq+0x4a>
 8001cc8:	2300      	movs	r3, #0
 8001cca:	687a      	ldr	r2, [r7, #4]
 8001ccc:	4e8c      	ldr	r6, [pc, #560]	; (8001f00 <RCC_GetClocksFreq+0x280>)
 8001cce:	f8df c234 	ldr.w	ip, [pc, #564]	; 8001f04 <RCC_GetClocksFreq+0x284>
 8001cd2:	f3c2 1203 	ubfx	r2, r2, #4, #4
 8001cd6:	5cb4      	ldrb	r4, [r6, r2]
 8001cd8:	6802      	ldr	r2, [r0, #0]
 8001cda:	b2e4      	uxtb	r4, r4
 8001cdc:	fa22 f104 	lsr.w	r1, r2, r4
 8001ce0:	6041      	str	r1, [r0, #4]
 8001ce2:	687d      	ldr	r5, [r7, #4]
 8001ce4:	f3c5 2502 	ubfx	r5, r5, #8, #3
 8001ce8:	5d75      	ldrb	r5, [r6, r5]
 8001cea:	fa21 fe05 	lsr.w	lr, r1, r5
 8001cee:	f8c0 e008 	str.w	lr, [r0, #8]
 8001cf2:	687d      	ldr	r5, [r7, #4]
 8001cf4:	f3c5 25c2 	ubfx	r5, r5, #11, #3
 8001cf8:	5d75      	ldrb	r5, [r6, r5]
 8001cfa:	b2ed      	uxtb	r5, r5
 8001cfc:	40e9      	lsrs	r1, r5
 8001cfe:	60c1      	str	r1, [r0, #12]
 8001d00:	6afe      	ldr	r6, [r7, #44]	; 0x2c
 8001d02:	f3c6 1804 	ubfx	r8, r6, #4, #5
 8001d06:	f008 060f 	and.w	r6, r8, #15
 8001d0a:	f018 0f10 	tst.w	r8, #16
 8001d0e:	f83c 6016 	ldrh.w	r6, [ip, r6, lsl #1]
 8001d12:	46e0      	mov	r8, ip
 8001d14:	b2b6      	uxth	r6, r6
 8001d16:	d004      	beq.n	8001d22 <RCC_GetClocksFreq+0xa2>
 8001d18:	b11e      	cbz	r6, 8001d22 <RCC_GetClocksFreq+0xa2>
 8001d1a:	fbb3 f6f6 	udiv	r6, r3, r6
 8001d1e:	6106      	str	r6, [r0, #16]
 8001d20:	e000      	b.n	8001d24 <RCC_GetClocksFreq+0xa4>
 8001d22:	6102      	str	r2, [r0, #16]
 8001d24:	6afe      	ldr	r6, [r7, #44]	; 0x2c
 8001d26:	f3c6 2c44 	ubfx	ip, r6, #9, #5
 8001d2a:	f00c 060f 	and.w	r6, ip, #15
 8001d2e:	f01c 0f10 	tst.w	ip, #16
 8001d32:	f838 6016 	ldrh.w	r6, [r8, r6, lsl #1]
 8001d36:	b2b6      	uxth	r6, r6
 8001d38:	d004      	beq.n	8001d44 <RCC_GetClocksFreq+0xc4>
 8001d3a:	b11e      	cbz	r6, 8001d44 <RCC_GetClocksFreq+0xc4>
 8001d3c:	fbb3 f6f6 	udiv	r6, r3, r6
 8001d40:	6146      	str	r6, [r0, #20]
 8001d42:	e000      	b.n	8001d46 <RCC_GetClocksFreq+0xc6>
 8001d44:	6142      	str	r2, [r0, #20]
 8001d46:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001d48:	06f6      	lsls	r6, r6, #27
 8001d4a:	bf5a      	itte	pl
 8001d4c:	4e6a      	ldrpl	r6, [pc, #424]	; (8001ef8 <RCC_GetClocksFreq+0x278>)
 8001d4e:	6186      	strpl	r6, [r0, #24]
 8001d50:	6182      	strmi	r2, [r0, #24]
 8001d52:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001d54:	06b6      	lsls	r6, r6, #26
 8001d56:	bf5a      	itte	pl
 8001d58:	4e67      	ldrpl	r6, [pc, #412]	; (8001ef8 <RCC_GetClocksFreq+0x278>)
 8001d5a:	61c6      	strpl	r6, [r0, #28]
 8001d5c:	61c2      	strmi	r2, [r0, #28]
 8001d5e:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001d60:	0676      	lsls	r6, r6, #25
 8001d62:	bf5a      	itte	pl
 8001d64:	4e64      	ldrpl	r6, [pc, #400]	; (8001ef8 <RCC_GetClocksFreq+0x278>)
 8001d66:	6206      	strpl	r6, [r0, #32]
 8001d68:	6202      	strmi	r2, [r0, #32]
 8001d6a:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001d6c:	05f6      	lsls	r6, r6, #23
 8001d6e:	d506      	bpl.n	8001d7e <RCC_GetClocksFreq+0xfe>
 8001d70:	429a      	cmp	r2, r3
 8001d72:	d104      	bne.n	8001d7e <RCC_GetClocksFreq+0xfe>
 8001d74:	42a5      	cmp	r5, r4
 8001d76:	d102      	bne.n	8001d7e <RCC_GetClocksFreq+0xfe>
 8001d78:	0056      	lsls	r6, r2, #1
 8001d7a:	6246      	str	r6, [r0, #36]	; 0x24
 8001d7c:	e000      	b.n	8001d80 <RCC_GetClocksFreq+0x100>
 8001d7e:	6241      	str	r1, [r0, #36]	; 0x24
 8001d80:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001d82:	04f6      	lsls	r6, r6, #19
 8001d84:	d506      	bpl.n	8001d94 <RCC_GetClocksFreq+0x114>
 8001d86:	429a      	cmp	r2, r3
 8001d88:	d104      	bne.n	8001d94 <RCC_GetClocksFreq+0x114>
 8001d8a:	42a5      	cmp	r5, r4
 8001d8c:	d102      	bne.n	8001d94 <RCC_GetClocksFreq+0x114>
 8001d8e:	0056      	lsls	r6, r2, #1
 8001d90:	6286      	str	r6, [r0, #40]	; 0x28
 8001d92:	e000      	b.n	8001d96 <RCC_GetClocksFreq+0x116>
 8001d94:	6281      	str	r1, [r0, #40]	; 0x28
 8001d96:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001d98:	05b6      	lsls	r6, r6, #22
 8001d9a:	d506      	bpl.n	8001daa <RCC_GetClocksFreq+0x12a>
 8001d9c:	429a      	cmp	r2, r3
 8001d9e:	d104      	bne.n	8001daa <RCC_GetClocksFreq+0x12a>
 8001da0:	42a5      	cmp	r5, r4
 8001da2:	d102      	bne.n	8001daa <RCC_GetClocksFreq+0x12a>
 8001da4:	0056      	lsls	r6, r2, #1
 8001da6:	62c6      	str	r6, [r0, #44]	; 0x2c
 8001da8:	e000      	b.n	8001dac <RCC_GetClocksFreq+0x12c>
 8001daa:	62c1      	str	r1, [r0, #44]	; 0x2c
 8001dac:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001dae:	0576      	lsls	r6, r6, #21
 8001db0:	d506      	bpl.n	8001dc0 <RCC_GetClocksFreq+0x140>
 8001db2:	429a      	cmp	r2, r3
 8001db4:	d104      	bne.n	8001dc0 <RCC_GetClocksFreq+0x140>
 8001db6:	42a5      	cmp	r5, r4
 8001db8:	d102      	bne.n	8001dc0 <RCC_GetClocksFreq+0x140>
 8001dba:	0056      	lsls	r6, r2, #1
 8001dbc:	64c6      	str	r6, [r0, #76]	; 0x4c
 8001dbe:	e000      	b.n	8001dc2 <RCC_GetClocksFreq+0x142>
 8001dc0:	64c1      	str	r1, [r0, #76]	; 0x4c
 8001dc2:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001dc4:	0536      	lsls	r6, r6, #20
 8001dc6:	d506      	bpl.n	8001dd6 <RCC_GetClocksFreq+0x156>
 8001dc8:	429a      	cmp	r2, r3
 8001dca:	d104      	bne.n	8001dd6 <RCC_GetClocksFreq+0x156>
 8001dcc:	42a5      	cmp	r5, r4
 8001dce:	d102      	bne.n	8001dd6 <RCC_GetClocksFreq+0x156>
 8001dd0:	0056      	lsls	r6, r2, #1
 8001dd2:	6506      	str	r6, [r0, #80]	; 0x50
 8001dd4:	e000      	b.n	8001dd8 <RCC_GetClocksFreq+0x158>
 8001dd6:	6501      	str	r1, [r0, #80]	; 0x50
 8001dd8:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001dda:	04b6      	lsls	r6, r6, #18
 8001ddc:	d506      	bpl.n	8001dec <RCC_GetClocksFreq+0x16c>
 8001dde:	429a      	cmp	r2, r3
 8001de0:	d104      	bne.n	8001dec <RCC_GetClocksFreq+0x16c>
 8001de2:	42a5      	cmp	r5, r4
 8001de4:	d102      	bne.n	8001dec <RCC_GetClocksFreq+0x16c>
 8001de6:	0056      	lsls	r6, r2, #1
 8001de8:	6546      	str	r6, [r0, #84]	; 0x54
 8001dea:	e000      	b.n	8001dee <RCC_GetClocksFreq+0x16e>
 8001dec:	6501      	str	r1, [r0, #80]	; 0x50
 8001dee:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001df0:	0436      	lsls	r6, r6, #16
 8001df2:	d506      	bpl.n	8001e02 <RCC_GetClocksFreq+0x182>
 8001df4:	429a      	cmp	r2, r3
 8001df6:	d104      	bne.n	8001e02 <RCC_GetClocksFreq+0x182>
 8001df8:	42a5      	cmp	r5, r4
 8001dfa:	d102      	bne.n	8001e02 <RCC_GetClocksFreq+0x182>
 8001dfc:	0053      	lsls	r3, r2, #1
 8001dfe:	6583      	str	r3, [r0, #88]	; 0x58
 8001e00:	e000      	b.n	8001e04 <RCC_GetClocksFreq+0x184>
 8001e02:	6581      	str	r1, [r0, #88]	; 0x58
 8001e04:	6b3c      	ldr	r4, [r7, #48]	; 0x30
 8001e06:	4b3b      	ldr	r3, [pc, #236]	; (8001ef4 <RCC_GetClocksFreq+0x274>)
 8001e08:	07a4      	lsls	r4, r4, #30
 8001e0a:	d101      	bne.n	8001e10 <RCC_GetClocksFreq+0x190>
 8001e0c:	6381      	str	r1, [r0, #56]	; 0x38
 8001e0e:	e015      	b.n	8001e3c <RCC_GetClocksFreq+0x1bc>
 8001e10:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001e12:	f001 0103 	and.w	r1, r1, #3
 8001e16:	2901      	cmp	r1, #1
 8001e18:	d101      	bne.n	8001e1e <RCC_GetClocksFreq+0x19e>
 8001e1a:	6382      	str	r2, [r0, #56]	; 0x38
 8001e1c:	e00e      	b.n	8001e3c <RCC_GetClocksFreq+0x1bc>
 8001e1e:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001e20:	f001 0103 	and.w	r1, r1, #3
 8001e24:	2902      	cmp	r1, #2
 8001e26:	d102      	bne.n	8001e2e <RCC_GetClocksFreq+0x1ae>
 8001e28:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001e2c:	e005      	b.n	8001e3a <RCC_GetClocksFreq+0x1ba>
 8001e2e:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001e30:	f003 0303 	and.w	r3, r3, #3
 8001e34:	2b03      	cmp	r3, #3
 8001e36:	d101      	bne.n	8001e3c <RCC_GetClocksFreq+0x1bc>
 8001e38:	4b2f      	ldr	r3, [pc, #188]	; (8001ef8 <RCC_GetClocksFreq+0x278>)
 8001e3a:	6383      	str	r3, [r0, #56]	; 0x38
 8001e3c:	6b39      	ldr	r1, [r7, #48]	; 0x30
 8001e3e:	4b2d      	ldr	r3, [pc, #180]	; (8001ef4 <RCC_GetClocksFreq+0x274>)
 8001e40:	f411 3f40 	tst.w	r1, #196608	; 0x30000
 8001e44:	d102      	bne.n	8001e4c <RCC_GetClocksFreq+0x1cc>
 8001e46:	f8c0 e03c 	str.w	lr, [r0, #60]	; 0x3c
 8001e4a:	e018      	b.n	8001e7e <RCC_GetClocksFreq+0x1fe>
 8001e4c:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001e4e:	f401 3140 	and.w	r1, r1, #196608	; 0x30000
 8001e52:	f5b1 3f80 	cmp.w	r1, #65536	; 0x10000
 8001e56:	d101      	bne.n	8001e5c <RCC_GetClocksFreq+0x1dc>
 8001e58:	63c2      	str	r2, [r0, #60]	; 0x3c
 8001e5a:	e010      	b.n	8001e7e <RCC_GetClocksFreq+0x1fe>
 8001e5c:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001e5e:	f401 3140 	and.w	r1, r1, #196608	; 0x30000
 8001e62:	f5b1 3f00 	cmp.w	r1, #131072	; 0x20000
 8001e66:	d102      	bne.n	8001e6e <RCC_GetClocksFreq+0x1ee>
 8001e68:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001e6c:	e006      	b.n	8001e7c <RCC_GetClocksFreq+0x1fc>
 8001e6e:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001e70:	f403 3340 	and.w	r3, r3, #196608	; 0x30000
 8001e74:	f5b3 3f40 	cmp.w	r3, #196608	; 0x30000
 8001e78:	d101      	bne.n	8001e7e <RCC_GetClocksFreq+0x1fe>
 8001e7a:	4b1f      	ldr	r3, [pc, #124]	; (8001ef8 <RCC_GetClocksFreq+0x278>)
 8001e7c:	63c3      	str	r3, [r0, #60]	; 0x3c
 8001e7e:	6b39      	ldr	r1, [r7, #48]	; 0x30
 8001e80:	4b1c      	ldr	r3, [pc, #112]	; (8001ef4 <RCC_GetClocksFreq+0x274>)
 8001e82:	f411 2f40 	tst.w	r1, #786432	; 0xc0000
 8001e86:	d102      	bne.n	8001e8e <RCC_GetClocksFreq+0x20e>
 8001e88:	f8c0 e040 	str.w	lr, [r0, #64]	; 0x40
 8001e8c:	e018      	b.n	8001ec0 <RCC_GetClocksFreq+0x240>
 8001e8e:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001e90:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 8001e94:	f5b1 2f80 	cmp.w	r1, #262144	; 0x40000
 8001e98:	d101      	bne.n	8001e9e <RCC_GetClocksFreq+0x21e>
 8001e9a:	6402      	str	r2, [r0, #64]	; 0x40
 8001e9c:	e010      	b.n	8001ec0 <RCC_GetClocksFreq+0x240>
 8001e9e:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001ea0:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 8001ea4:	f5b1 2f00 	cmp.w	r1, #524288	; 0x80000
 8001ea8:	d102      	bne.n	8001eb0 <RCC_GetClocksFreq+0x230>
 8001eaa:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001eae:	e006      	b.n	8001ebe <RCC_GetClocksFreq+0x23e>
 8001eb0:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001eb2:	f403 2340 	and.w	r3, r3, #786432	; 0xc0000
 8001eb6:	f5b3 2f40 	cmp.w	r3, #786432	; 0xc0000
 8001eba:	d101      	bne.n	8001ec0 <RCC_GetClocksFreq+0x240>
 8001ebc:	4b0e      	ldr	r3, [pc, #56]	; (8001ef8 <RCC_GetClocksFreq+0x278>)
 8001ebe:	6403      	str	r3, [r0, #64]	; 0x40
 8001ec0:	6b39      	ldr	r1, [r7, #48]	; 0x30
 8001ec2:	4b0c      	ldr	r3, [pc, #48]	; (8001ef4 <RCC_GetClocksFreq+0x274>)
 8001ec4:	f411 1f40 	tst.w	r1, #3145728	; 0x300000
 8001ec8:	d102      	bne.n	8001ed0 <RCC_GetClocksFreq+0x250>
 8001eca:	f8c0 e044 	str.w	lr, [r0, #68]	; 0x44
 8001ece:	e023      	b.n	8001f18 <RCC_GetClocksFreq+0x298>
 8001ed0:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001ed2:	f401 1140 	and.w	r1, r1, #3145728	; 0x300000
 8001ed6:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 8001eda:	d101      	bne.n	8001ee0 <RCC_GetClocksFreq+0x260>
 8001edc:	6442      	str	r2, [r0, #68]	; 0x44
 8001ede:	e01b      	b.n	8001f18 <RCC_GetClocksFreq+0x298>
 8001ee0:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001ee2:	f401 1140 	and.w	r1, r1, #3145728	; 0x300000
 8001ee6:	f5b1 1f00 	cmp.w	r1, #2097152	; 0x200000
 8001eea:	d10d      	bne.n	8001f08 <RCC_GetClocksFreq+0x288>
 8001eec:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001ef0:	e011      	b.n	8001f16 <RCC_GetClocksFreq+0x296>
 8001ef2:	bf00      	nop
 8001ef4:	40021000 	.word	0x40021000
 8001ef8:	007a1200 	.word	0x007a1200
 8001efc:	003d0900 	.word	0x003d0900
 8001f00:	200000e8 	.word	0x200000e8
 8001f04:	200000c8 	.word	0x200000c8
 8001f08:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001f0a:	f403 1340 	and.w	r3, r3, #3145728	; 0x300000
 8001f0e:	f5b3 1f40 	cmp.w	r3, #3145728	; 0x300000
 8001f12:	d101      	bne.n	8001f18 <RCC_GetClocksFreq+0x298>
 8001f14:	4b13      	ldr	r3, [pc, #76]	; (8001f64 <RCC_GetClocksFreq+0x2e4>)
 8001f16:	6443      	str	r3, [r0, #68]	; 0x44
 8001f18:	6b39      	ldr	r1, [r7, #48]	; 0x30
 8001f1a:	4b13      	ldr	r3, [pc, #76]	; (8001f68 <RCC_GetClocksFreq+0x2e8>)
 8001f1c:	f411 0f40 	tst.w	r1, #12582912	; 0xc00000
 8001f20:	d103      	bne.n	8001f2a <RCC_GetClocksFreq+0x2aa>
 8001f22:	f8c0 e048 	str.w	lr, [r0, #72]	; 0x48
 8001f26:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8001f2a:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001f2c:	f401 0140 	and.w	r1, r1, #12582912	; 0xc00000
 8001f30:	f5b1 0f80 	cmp.w	r1, #4194304	; 0x400000
 8001f34:	d102      	bne.n	8001f3c <RCC_GetClocksFreq+0x2bc>
 8001f36:	6482      	str	r2, [r0, #72]	; 0x48
 8001f38:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8001f3c:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 8001f3e:	f402 0240 	and.w	r2, r2, #12582912	; 0xc00000
 8001f42:	f5b2 0f00 	cmp.w	r2, #8388608	; 0x800000
 8001f46:	d102      	bne.n	8001f4e <RCC_GetClocksFreq+0x2ce>
 8001f48:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001f4c:	e006      	b.n	8001f5c <RCC_GetClocksFreq+0x2dc>
 8001f4e:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001f50:	f403 0340 	and.w	r3, r3, #12582912	; 0xc00000
 8001f54:	f5b3 0f40 	cmp.w	r3, #12582912	; 0xc00000
 8001f58:	d101      	bne.n	8001f5e <RCC_GetClocksFreq+0x2de>
 8001f5a:	4b02      	ldr	r3, [pc, #8]	; (8001f64 <RCC_GetClocksFreq+0x2e4>)
 8001f5c:	6483      	str	r3, [r0, #72]	; 0x48
 8001f5e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8001f62:	bf00      	nop
 8001f64:	007a1200 	.word	0x007a1200
 8001f68:	40021000 	.word	0x40021000

08001f6c <RCC_AHBPeriphClockCmd>:
 8001f6c:	bf00      	nop
 8001f6e:	bf00      	nop
 8001f70:	4b04      	ldr	r3, [pc, #16]	; (8001f84 <RCC_AHBPeriphClockCmd+0x18>)
 8001f72:	695a      	ldr	r2, [r3, #20]
 8001f74:	b109      	cbz	r1, 8001f7a <RCC_AHBPeriphClockCmd+0xe>
 8001f76:	4310      	orrs	r0, r2
 8001f78:	e001      	b.n	8001f7e <RCC_AHBPeriphClockCmd+0x12>
 8001f7a:	ea22 0000 	bic.w	r0, r2, r0
 8001f7e:	6158      	str	r0, [r3, #20]
 8001f80:	4770      	bx	lr
 8001f82:	bf00      	nop
 8001f84:	40021000 	.word	0x40021000

08001f88 <RCC_APB2PeriphClockCmd>:
 8001f88:	bf00      	nop
 8001f8a:	bf00      	nop
 8001f8c:	4b04      	ldr	r3, [pc, #16]	; (8001fa0 <RCC_APB2PeriphClockCmd+0x18>)
 8001f8e:	699a      	ldr	r2, [r3, #24]
 8001f90:	b109      	cbz	r1, 8001f96 <RCC_APB2PeriphClockCmd+0xe>
 8001f92:	4310      	orrs	r0, r2
 8001f94:	e001      	b.n	8001f9a <RCC_APB2PeriphClockCmd+0x12>
 8001f96:	ea22 0000 	bic.w	r0, r2, r0
 8001f9a:	6198      	str	r0, [r3, #24]
 8001f9c:	4770      	bx	lr
 8001f9e:	bf00      	nop
 8001fa0:	40021000 	.word	0x40021000

08001fa4 <RCC_APB1PeriphClockCmd>:
 8001fa4:	bf00      	nop
 8001fa6:	bf00      	nop
 8001fa8:	4b04      	ldr	r3, [pc, #16]	; (8001fbc <RCC_APB1PeriphClockCmd+0x18>)
 8001faa:	69da      	ldr	r2, [r3, #28]
 8001fac:	b109      	cbz	r1, 8001fb2 <RCC_APB1PeriphClockCmd+0xe>
 8001fae:	4310      	orrs	r0, r2
 8001fb0:	e001      	b.n	8001fb6 <RCC_APB1PeriphClockCmd+0x12>
 8001fb2:	ea22 0000 	bic.w	r0, r2, r0
 8001fb6:	61d8      	str	r0, [r3, #28]
 8001fb8:	4770      	bx	lr
 8001fba:	bf00      	nop
 8001fbc:	40021000 	.word	0x40021000

08001fc0 <TIM_TimeBaseInit>:
 8001fc0:	bf00      	nop
 8001fc2:	bf00      	nop
 8001fc4:	bf00      	nop
 8001fc6:	4a24      	ldr	r2, [pc, #144]	; (8002058 <TIM_TimeBaseInit+0x98>)
 8001fc8:	8803      	ldrh	r3, [r0, #0]
 8001fca:	4290      	cmp	r0, r2
 8001fcc:	b29b      	uxth	r3, r3
 8001fce:	d012      	beq.n	8001ff6 <TIM_TimeBaseInit+0x36>
 8001fd0:	f502 6200 	add.w	r2, r2, #2048	; 0x800
 8001fd4:	4290      	cmp	r0, r2
 8001fd6:	d00e      	beq.n	8001ff6 <TIM_TimeBaseInit+0x36>
 8001fd8:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 8001fdc:	d00b      	beq.n	8001ff6 <TIM_TimeBaseInit+0x36>
 8001fde:	f5a2 3298 	sub.w	r2, r2, #77824	; 0x13000
 8001fe2:	4290      	cmp	r0, r2
 8001fe4:	d007      	beq.n	8001ff6 <TIM_TimeBaseInit+0x36>
 8001fe6:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8001fea:	4290      	cmp	r0, r2
 8001fec:	d003      	beq.n	8001ff6 <TIM_TimeBaseInit+0x36>
 8001fee:	f502 32a4 	add.w	r2, r2, #83968	; 0x14800
 8001ff2:	4290      	cmp	r0, r2
 8001ff4:	d103      	bne.n	8001ffe <TIM_TimeBaseInit+0x3e>
 8001ff6:	884a      	ldrh	r2, [r1, #2]
 8001ff8:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 8001ffc:	4313      	orrs	r3, r2
 8001ffe:	4a17      	ldr	r2, [pc, #92]	; (800205c <TIM_TimeBaseInit+0x9c>)
 8002000:	4290      	cmp	r0, r2
 8002002:	d008      	beq.n	8002016 <TIM_TimeBaseInit+0x56>
 8002004:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8002008:	4290      	cmp	r0, r2
 800200a:	bf1f      	itttt	ne
 800200c:	f423 7340 	bicne.w	r3, r3, #768	; 0x300
 8002010:	890a      	ldrhne	r2, [r1, #8]
 8002012:	b29b      	uxthne	r3, r3
 8002014:	4313      	orrne	r3, r2
 8002016:	8003      	strh	r3, [r0, #0]
 8002018:	684b      	ldr	r3, [r1, #4]
 800201a:	62c3      	str	r3, [r0, #44]	; 0x2c
 800201c:	880b      	ldrh	r3, [r1, #0]
 800201e:	8503      	strh	r3, [r0, #40]	; 0x28
 8002020:	4b0d      	ldr	r3, [pc, #52]	; (8002058 <TIM_TimeBaseInit+0x98>)
 8002022:	4298      	cmp	r0, r3
 8002024:	d013      	beq.n	800204e <TIM_TimeBaseInit+0x8e>
 8002026:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 800202a:	4298      	cmp	r0, r3
 800202c:	d00f      	beq.n	800204e <TIM_TimeBaseInit+0x8e>
 800202e:	f503 6340 	add.w	r3, r3, #3072	; 0xc00
 8002032:	4298      	cmp	r0, r3
 8002034:	d00b      	beq.n	800204e <TIM_TimeBaseInit+0x8e>
 8002036:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 800203a:	4298      	cmp	r0, r3
 800203c:	d007      	beq.n	800204e <TIM_TimeBaseInit+0x8e>
 800203e:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 8002042:	4298      	cmp	r0, r3
 8002044:	d003      	beq.n	800204e <TIM_TimeBaseInit+0x8e>
 8002046:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 800204a:	4298      	cmp	r0, r3
 800204c:	d101      	bne.n	8002052 <TIM_TimeBaseInit+0x92>
 800204e:	894b      	ldrh	r3, [r1, #10]
 8002050:	8603      	strh	r3, [r0, #48]	; 0x30
 8002052:	2301      	movs	r3, #1
 8002054:	6143      	str	r3, [r0, #20]
 8002056:	4770      	bx	lr
 8002058:	40012c00 	.word	0x40012c00
 800205c:	40001000 	.word	0x40001000

08002060 <TIM_Cmd>:
 8002060:	bf00      	nop
 8002062:	bf00      	nop
 8002064:	8803      	ldrh	r3, [r0, #0]
 8002066:	b119      	cbz	r1, 8002070 <TIM_Cmd+0x10>
 8002068:	b29b      	uxth	r3, r3
 800206a:	f043 0301 	orr.w	r3, r3, #1
 800206e:	e003      	b.n	8002078 <TIM_Cmd+0x18>
 8002070:	f023 0301 	bic.w	r3, r3, #1
 8002074:	041b      	lsls	r3, r3, #16
 8002076:	0c1b      	lsrs	r3, r3, #16
 8002078:	8003      	strh	r3, [r0, #0]
 800207a:	4770      	bx	lr

0800207c <TIM_OC1Init>:
 800207c:	b570      	push	{r4, r5, r6, lr}
 800207e:	bf00      	nop
 8002080:	bf00      	nop
 8002082:	bf00      	nop
 8002084:	bf00      	nop
 8002086:	6a03      	ldr	r3, [r0, #32]
 8002088:	680d      	ldr	r5, [r1, #0]
 800208a:	f023 0301 	bic.w	r3, r3, #1
 800208e:	6203      	str	r3, [r0, #32]
 8002090:	6a03      	ldr	r3, [r0, #32]
 8002092:	6844      	ldr	r4, [r0, #4]
 8002094:	6982      	ldr	r2, [r0, #24]
 8002096:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
 800209a:	f022 0273 	bic.w	r2, r2, #115	; 0x73
 800209e:	4315      	orrs	r5, r2
 80020a0:	898a      	ldrh	r2, [r1, #12]
 80020a2:	f023 0302 	bic.w	r3, r3, #2
 80020a6:	4313      	orrs	r3, r2
 80020a8:	888a      	ldrh	r2, [r1, #4]
 80020aa:	4313      	orrs	r3, r2
 80020ac:	4a15      	ldr	r2, [pc, #84]	; (8002104 <TIM_OC1Init+0x88>)
 80020ae:	4290      	cmp	r0, r2
 80020b0:	d00f      	beq.n	80020d2 <TIM_OC1Init+0x56>
 80020b2:	f502 6200 	add.w	r2, r2, #2048	; 0x800
 80020b6:	4290      	cmp	r0, r2
 80020b8:	d00b      	beq.n	80020d2 <TIM_OC1Init+0x56>
 80020ba:	f502 6240 	add.w	r2, r2, #3072	; 0xc00
 80020be:	4290      	cmp	r0, r2
 80020c0:	d007      	beq.n	80020d2 <TIM_OC1Init+0x56>
 80020c2:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 80020c6:	4290      	cmp	r0, r2
 80020c8:	d003      	beq.n	80020d2 <TIM_OC1Init+0x56>
 80020ca:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 80020ce:	4290      	cmp	r0, r2
 80020d0:	d111      	bne.n	80020f6 <TIM_OC1Init+0x7a>
 80020d2:	bf00      	nop
 80020d4:	bf00      	nop
 80020d6:	bf00      	nop
 80020d8:	bf00      	nop
 80020da:	89ca      	ldrh	r2, [r1, #14]
 80020dc:	88ce      	ldrh	r6, [r1, #6]
 80020de:	f023 0308 	bic.w	r3, r3, #8
 80020e2:	4313      	orrs	r3, r2
 80020e4:	8a0a      	ldrh	r2, [r1, #16]
 80020e6:	f424 7440 	bic.w	r4, r4, #768	; 0x300
 80020ea:	4314      	orrs	r4, r2
 80020ec:	8a4a      	ldrh	r2, [r1, #18]
 80020ee:	f023 0304 	bic.w	r3, r3, #4
 80020f2:	4333      	orrs	r3, r6
 80020f4:	4314      	orrs	r4, r2
 80020f6:	688a      	ldr	r2, [r1, #8]
 80020f8:	6044      	str	r4, [r0, #4]
 80020fa:	6185      	str	r5, [r0, #24]
 80020fc:	6342      	str	r2, [r0, #52]	; 0x34
 80020fe:	6203      	str	r3, [r0, #32]
 8002100:	bd70      	pop	{r4, r5, r6, pc}
 8002102:	bf00      	nop
 8002104:	40012c00 	.word	0x40012c00

08002108 <TIM_OC2Init>:
 8002108:	b570      	push	{r4, r5, r6, lr}
 800210a:	bf00      	nop
 800210c:	bf00      	nop
 800210e:	bf00      	nop
 8002110:	bf00      	nop
 8002112:	6a03      	ldr	r3, [r0, #32]
 8002114:	680d      	ldr	r5, [r1, #0]
 8002116:	898e      	ldrh	r6, [r1, #12]
 8002118:	f023 0310 	bic.w	r3, r3, #16
 800211c:	6203      	str	r3, [r0, #32]
 800211e:	6a03      	ldr	r3, [r0, #32]
 8002120:	6844      	ldr	r4, [r0, #4]
 8002122:	6982      	ldr	r2, [r0, #24]
 8002124:	f022 7280 	bic.w	r2, r2, #16777216	; 0x1000000
 8002128:	f422 42e6 	bic.w	r2, r2, #29440	; 0x7300
 800212c:	ea42 2505 	orr.w	r5, r2, r5, lsl #8
 8002130:	f023 0220 	bic.w	r2, r3, #32
 8002134:	888b      	ldrh	r3, [r1, #4]
 8002136:	4333      	orrs	r3, r6
 8002138:	ea42 1303 	orr.w	r3, r2, r3, lsl #4
 800213c:	4a10      	ldr	r2, [pc, #64]	; (8002180 <TIM_OC2Init+0x78>)
 800213e:	4290      	cmp	r0, r2
 8002140:	d003      	beq.n	800214a <TIM_OC2Init+0x42>
 8002142:	f502 6200 	add.w	r2, r2, #2048	; 0x800
 8002146:	4290      	cmp	r0, r2
 8002148:	d114      	bne.n	8002174 <TIM_OC2Init+0x6c>
 800214a:	bf00      	nop
 800214c:	bf00      	nop
 800214e:	bf00      	nop
 8002150:	bf00      	nop
 8002152:	89ca      	ldrh	r2, [r1, #14]
 8002154:	8a0e      	ldrh	r6, [r1, #16]
 8002156:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 800215a:	ea43 1302 	orr.w	r3, r3, r2, lsl #4
 800215e:	88ca      	ldrh	r2, [r1, #6]
 8002160:	f023 0340 	bic.w	r3, r3, #64	; 0x40
 8002164:	ea43 1302 	orr.w	r3, r3, r2, lsl #4
 8002168:	8a4a      	ldrh	r2, [r1, #18]
 800216a:	f424 6440 	bic.w	r4, r4, #3072	; 0xc00
 800216e:	4332      	orrs	r2, r6
 8002170:	ea44 0482 	orr.w	r4, r4, r2, lsl #2
 8002174:	688a      	ldr	r2, [r1, #8]
 8002176:	6044      	str	r4, [r0, #4]
 8002178:	6185      	str	r5, [r0, #24]
 800217a:	6382      	str	r2, [r0, #56]	; 0x38
 800217c:	6203      	str	r3, [r0, #32]
 800217e:	bd70      	pop	{r4, r5, r6, pc}
 8002180:	40012c00 	.word	0x40012c00

08002184 <TIM_CtrlPWMOutputs>:
 8002184:	bf00      	nop
 8002186:	bf00      	nop
 8002188:	6c43      	ldr	r3, [r0, #68]	; 0x44
 800218a:	b111      	cbz	r1, 8002192 <TIM_CtrlPWMOutputs+0xe>
 800218c:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
 8002190:	e001      	b.n	8002196 <TIM_CtrlPWMOutputs+0x12>
 8002192:	f3c3 030e 	ubfx	r3, r3, #0, #15
 8002196:	6443      	str	r3, [r0, #68]	; 0x44
 8002198:	4770      	bx	lr

0800219a <TIM_ClearITPendingBit>:
 800219a:	bf00      	nop
 800219c:	43c9      	mvns	r1, r1
 800219e:	b289      	uxth	r1, r1
 80021a0:	6101      	str	r1, [r0, #16]
 80021a2:	4770      	bx	lr

080021a4 <timer_init>:
 80021a4:	b530      	push	{r4, r5, lr}
 80021a6:	2300      	movs	r3, #0
 80021a8:	b085      	sub	sp, #20
 80021aa:	491f      	ldr	r1, [pc, #124]	; (8002228 <timer_init+0x84>)
 80021ac:	f44f 6280 	mov.w	r2, #1024	; 0x400
 80021b0:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 80021b4:	491d      	ldr	r1, [pc, #116]	; (800222c <timer_init+0x88>)
 80021b6:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 80021ba:	4a1d      	ldr	r2, [pc, #116]	; (8002230 <timer_init+0x8c>)
 80021bc:	2400      	movs	r4, #0
 80021be:	f822 4013 	strh.w	r4, [r2, r3, lsl #1]
 80021c2:	3301      	adds	r3, #1
 80021c4:	2b04      	cmp	r3, #4
 80021c6:	4625      	mov	r5, r4
 80021c8:	d1ef      	bne.n	80021aa <timer_init+0x6>
 80021ca:	4b1a      	ldr	r3, [pc, #104]	; (8002234 <timer_init+0x90>)
 80021cc:	2002      	movs	r0, #2
 80021ce:	2101      	movs	r1, #1
 80021d0:	601c      	str	r4, [r3, #0]
 80021d2:	f7ff fee7 	bl	8001fa4 <RCC_APB1PeriphClockCmd>
 80021d6:	f8ad 4006 	strh.w	r4, [sp, #6]
 80021da:	f8ad 400c 	strh.w	r4, [sp, #12]
 80021de:	f8ad 400e 	strh.w	r4, [sp, #14]
 80021e2:	4c15      	ldr	r4, [pc, #84]	; (8002238 <timer_init+0x94>)
 80021e4:	f44f 738c 	mov.w	r3, #280	; 0x118
 80021e8:	f8ad 3004 	strh.w	r3, [sp, #4]
 80021ec:	4620      	mov	r0, r4
 80021ee:	2331      	movs	r3, #49	; 0x31
 80021f0:	a901      	add	r1, sp, #4
 80021f2:	9302      	str	r3, [sp, #8]
 80021f4:	f7ff fee4 	bl	8001fc0 <TIM_TimeBaseInit>
 80021f8:	4620      	mov	r0, r4
 80021fa:	2101      	movs	r1, #1
 80021fc:	f7ff ff30 	bl	8002060 <TIM_Cmd>
 8002200:	68e3      	ldr	r3, [r4, #12]
 8002202:	f043 0301 	orr.w	r3, r3, #1
 8002206:	60e3      	str	r3, [r4, #12]
 8002208:	231d      	movs	r3, #29
 800220a:	f88d 3000 	strb.w	r3, [sp]
 800220e:	4668      	mov	r0, sp
 8002210:	2301      	movs	r3, #1
 8002212:	f88d 5001 	strb.w	r5, [sp, #1]
 8002216:	f88d 3002 	strb.w	r3, [sp, #2]
 800221a:	f88d 3003 	strb.w	r3, [sp, #3]
 800221e:	f000 fc6f 	bl	8002b00 <NVIC_Init>
 8002222:	b005      	add	sp, #20
 8002224:	bd30      	pop	{r4, r5, pc}
 8002226:	bf00      	nop
 8002228:	2000105c 	.word	0x2000105c
 800222c:	20001050 	.word	0x20001050
 8002230:	20001048 	.word	0x20001048
 8002234:	20001058 	.word	0x20001058
 8002238:	40000400 	.word	0x40000400

0800223c <TIM3_IRQHandler>:
 800223c:	2300      	movs	r3, #0
 800223e:	4910      	ldr	r1, [pc, #64]	; (8002280 <TIM3_IRQHandler+0x44>)
 8002240:	f831 2013 	ldrh.w	r2, [r1, r3, lsl #1]
 8002244:	b292      	uxth	r2, r2
 8002246:	b132      	cbz	r2, 8002256 <TIM3_IRQHandler+0x1a>
 8002248:	f831 2013 	ldrh.w	r2, [r1, r3, lsl #1]
 800224c:	3a01      	subs	r2, #1
 800224e:	b292      	uxth	r2, r2
 8002250:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 8002254:	e009      	b.n	800226a <TIM3_IRQHandler+0x2e>
 8002256:	4a0b      	ldr	r2, [pc, #44]	; (8002284 <TIM3_IRQHandler+0x48>)
 8002258:	f832 2013 	ldrh.w	r2, [r2, r3, lsl #1]
 800225c:	b292      	uxth	r2, r2
 800225e:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 8002262:	4a09      	ldr	r2, [pc, #36]	; (8002288 <TIM3_IRQHandler+0x4c>)
 8002264:	2101      	movs	r1, #1
 8002266:	f822 1013 	strh.w	r1, [r2, r3, lsl #1]
 800226a:	3301      	adds	r3, #1
 800226c:	2b04      	cmp	r3, #4
 800226e:	d1e6      	bne.n	800223e <TIM3_IRQHandler+0x2>
 8002270:	4a06      	ldr	r2, [pc, #24]	; (800228c <TIM3_IRQHandler+0x50>)
 8002272:	4807      	ldr	r0, [pc, #28]	; (8002290 <TIM3_IRQHandler+0x54>)
 8002274:	6813      	ldr	r3, [r2, #0]
 8002276:	2101      	movs	r1, #1
 8002278:	3301      	adds	r3, #1
 800227a:	6013      	str	r3, [r2, #0]
 800227c:	f7ff bf8d 	b.w	800219a <TIM_ClearITPendingBit>
 8002280:	2000105c 	.word	0x2000105c
 8002284:	20001050 	.word	0x20001050
 8002288:	20001048 	.word	0x20001048
 800228c:	20001058 	.word	0x20001058
 8002290:	40000400 	.word	0x40000400

08002294 <timer_get_time>:
 8002294:	b082      	sub	sp, #8
 8002296:	b672      	cpsid	i
 8002298:	4b04      	ldr	r3, [pc, #16]	; (80022ac <timer_get_time+0x18>)
 800229a:	681b      	ldr	r3, [r3, #0]
 800229c:	9301      	str	r3, [sp, #4]
 800229e:	b662      	cpsie	i
 80022a0:	230a      	movs	r3, #10
 80022a2:	9801      	ldr	r0, [sp, #4]
 80022a4:	fbb0 f0f3 	udiv	r0, r0, r3
 80022a8:	b002      	add	sp, #8
 80022aa:	4770      	bx	lr
 80022ac:	20001058 	.word	0x20001058

080022b0 <timer_delay_ms>:
 80022b0:	b513      	push	{r0, r1, r4, lr}
 80022b2:	4604      	mov	r4, r0
 80022b4:	f7ff ffee 	bl	8002294 <timer_get_time>
 80022b8:	4420      	add	r0, r4
 80022ba:	9001      	str	r0, [sp, #4]
 80022bc:	9c01      	ldr	r4, [sp, #4]
 80022be:	f7ff ffe9 	bl	8002294 <timer_get_time>
 80022c2:	4284      	cmp	r4, r0
 80022c4:	d902      	bls.n	80022cc <timer_delay_ms+0x1c>
 80022c6:	f000 fb19 	bl	80028fc <core_yield>
 80022ca:	e7f7      	b.n	80022bc <timer_delay_ms+0xc>
 80022cc:	b002      	add	sp, #8
 80022ce:	bd10      	pop	{r4, pc}

080022d0 <event_timer_set_period>:
 80022d0:	b672      	cpsid	i
 80022d2:	eb01 0181 	add.w	r1, r1, r1, lsl #2
 80022d6:	4b07      	ldr	r3, [pc, #28]	; (80022f4 <event_timer_set_period+0x24>)
 80022d8:	0049      	lsls	r1, r1, #1
 80022da:	b289      	uxth	r1, r1
 80022dc:	f823 1010 	strh.w	r1, [r3, r0, lsl #1]
 80022e0:	4b05      	ldr	r3, [pc, #20]	; (80022f8 <event_timer_set_period+0x28>)
 80022e2:	f823 1010 	strh.w	r1, [r3, r0, lsl #1]
 80022e6:	4b05      	ldr	r3, [pc, #20]	; (80022fc <event_timer_set_period+0x2c>)
 80022e8:	2200      	movs	r2, #0
 80022ea:	f823 2010 	strh.w	r2, [r3, r0, lsl #1]
 80022ee:	b662      	cpsie	i
 80022f0:	4770      	bx	lr
 80022f2:	bf00      	nop
 80022f4:	2000105c 	.word	0x2000105c
 80022f8:	20001050 	.word	0x20001050
 80022fc:	20001048 	.word	0x20001048

08002300 <event_timer_wait>:
 8002300:	b510      	push	{r4, lr}
 8002302:	4604      	mov	r4, r0
 8002304:	4a06      	ldr	r2, [pc, #24]	; (8002320 <event_timer_wait+0x20>)
 8002306:	f832 3014 	ldrh.w	r3, [r2, r4, lsl #1]
 800230a:	b29b      	uxth	r3, r3
 800230c:	b913      	cbnz	r3, 8002314 <event_timer_wait+0x14>
 800230e:	f000 faf5 	bl	80028fc <core_yield>
 8002312:	e7f7      	b.n	8002304 <event_timer_wait+0x4>
 8002314:	b672      	cpsid	i
 8002316:	2300      	movs	r3, #0
 8002318:	f822 3014 	strh.w	r3, [r2, r4, lsl #1]
 800231c:	b662      	cpsie	i
 800231e:	bd10      	pop	{r4, pc}
 8002320:	20001048 	.word	0x20001048

08002324 <USART_Init>:
 8002324:	b530      	push	{r4, r5, lr}
 8002326:	4604      	mov	r4, r0
 8002328:	b099      	sub	sp, #100	; 0x64
 800232a:	460d      	mov	r5, r1
 800232c:	bf00      	nop
 800232e:	bf00      	nop
 8002330:	bf00      	nop
 8002332:	bf00      	nop
 8002334:	bf00      	nop
 8002336:	bf00      	nop
 8002338:	bf00      	nop
 800233a:	6803      	ldr	r3, [r0, #0]
 800233c:	f023 0301 	bic.w	r3, r3, #1
 8002340:	6003      	str	r3, [r0, #0]
 8002342:	6843      	ldr	r3, [r0, #4]
 8002344:	f423 5240 	bic.w	r2, r3, #12288	; 0x3000
 8002348:	688b      	ldr	r3, [r1, #8]
 800234a:	68c9      	ldr	r1, [r1, #12]
 800234c:	4313      	orrs	r3, r2
 800234e:	6043      	str	r3, [r0, #4]
 8002350:	686a      	ldr	r2, [r5, #4]
 8002352:	6803      	ldr	r3, [r0, #0]
 8002354:	4311      	orrs	r1, r2
 8002356:	692a      	ldr	r2, [r5, #16]
 8002358:	f423 53b0 	bic.w	r3, r3, #5632	; 0x1600
 800235c:	430a      	orrs	r2, r1
 800235e:	f023 030c 	bic.w	r3, r3, #12
 8002362:	4313      	orrs	r3, r2
 8002364:	6003      	str	r3, [r0, #0]
 8002366:	6883      	ldr	r3, [r0, #8]
 8002368:	f423 7240 	bic.w	r2, r3, #768	; 0x300
 800236c:	696b      	ldr	r3, [r5, #20]
 800236e:	4313      	orrs	r3, r2
 8002370:	6083      	str	r3, [r0, #8]
 8002372:	a801      	add	r0, sp, #4
 8002374:	f7ff fc84 	bl	8001c80 <RCC_GetClocksFreq>
 8002378:	4b17      	ldr	r3, [pc, #92]	; (80023d8 <USART_Init+0xb4>)
 800237a:	429c      	cmp	r4, r3
 800237c:	d101      	bne.n	8002382 <USART_Init+0x5e>
 800237e:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8002380:	e00e      	b.n	80023a0 <USART_Init+0x7c>
 8002382:	4b16      	ldr	r3, [pc, #88]	; (80023dc <USART_Init+0xb8>)
 8002384:	429c      	cmp	r4, r3
 8002386:	d101      	bne.n	800238c <USART_Init+0x68>
 8002388:	9b10      	ldr	r3, [sp, #64]	; 0x40
 800238a:	e009      	b.n	80023a0 <USART_Init+0x7c>
 800238c:	4b14      	ldr	r3, [pc, #80]	; (80023e0 <USART_Init+0xbc>)
 800238e:	429c      	cmp	r4, r3
 8002390:	d101      	bne.n	8002396 <USART_Init+0x72>
 8002392:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8002394:	e004      	b.n	80023a0 <USART_Init+0x7c>
 8002396:	4b13      	ldr	r3, [pc, #76]	; (80023e4 <USART_Init+0xc0>)
 8002398:	429c      	cmp	r4, r3
 800239a:	bf0c      	ite	eq
 800239c:	9b12      	ldreq	r3, [sp, #72]	; 0x48
 800239e:	9b13      	ldrne	r3, [sp, #76]	; 0x4c
 80023a0:	6822      	ldr	r2, [r4, #0]
 80023a2:	6829      	ldr	r1, [r5, #0]
 80023a4:	f412 4f00 	tst.w	r2, #32768	; 0x8000
 80023a8:	bf18      	it	ne
 80023aa:	005b      	lslne	r3, r3, #1
 80023ac:	fbb3 f2f1 	udiv	r2, r3, r1
 80023b0:	fb01 3312 	mls	r3, r1, r2, r3
 80023b4:	ebb3 0f51 	cmp.w	r3, r1, lsr #1
 80023b8:	6823      	ldr	r3, [r4, #0]
 80023ba:	bf28      	it	cs
 80023bc:	3201      	addcs	r2, #1
 80023be:	041b      	lsls	r3, r3, #16
 80023c0:	bf41      	itttt	mi
 80023c2:	f64f 73f0 	movwmi	r3, #65520	; 0xfff0
 80023c6:	f3c2 0142 	ubfxmi	r1, r2, #1, #3
 80023ca:	4013      	andmi	r3, r2
 80023cc:	ea41 0203 	orrmi.w	r2, r1, r3
 80023d0:	b292      	uxth	r2, r2
 80023d2:	81a2      	strh	r2, [r4, #12]
 80023d4:	b019      	add	sp, #100	; 0x64
 80023d6:	bd30      	pop	{r4, r5, pc}
 80023d8:	40013800 	.word	0x40013800
 80023dc:	40004400 	.word	0x40004400
 80023e0:	40004800 	.word	0x40004800
 80023e4:	40004c00 	.word	0x40004c00

080023e8 <USART_Cmd>:
 80023e8:	bf00      	nop
 80023ea:	bf00      	nop
 80023ec:	6803      	ldr	r3, [r0, #0]
 80023ee:	b111      	cbz	r1, 80023f6 <USART_Cmd+0xe>
 80023f0:	f043 0301 	orr.w	r3, r3, #1
 80023f4:	e001      	b.n	80023fa <USART_Cmd+0x12>
 80023f6:	f023 0301 	bic.w	r3, r3, #1
 80023fa:	6003      	str	r3, [r0, #0]
 80023fc:	4770      	bx	lr

080023fe <USART_ReceiveData>:
 80023fe:	bf00      	nop
 8002400:	8c80      	ldrh	r0, [r0, #36]	; 0x24
 8002402:	f3c0 0008 	ubfx	r0, r0, #0, #9
 8002406:	4770      	bx	lr

08002408 <USART_ITConfig>:
 8002408:	b510      	push	{r4, lr}
 800240a:	bf00      	nop
 800240c:	bf00      	nop
 800240e:	bf00      	nop
 8002410:	f3c1 2407 	ubfx	r4, r1, #8, #8
 8002414:	2301      	movs	r3, #1
 8002416:	b2c9      	uxtb	r1, r1
 8002418:	2c02      	cmp	r4, #2
 800241a:	fa03 f301 	lsl.w	r3, r3, r1
 800241e:	d101      	bne.n	8002424 <USART_ITConfig+0x1c>
 8002420:	3004      	adds	r0, #4
 8002422:	e002      	b.n	800242a <USART_ITConfig+0x22>
 8002424:	2c03      	cmp	r4, #3
 8002426:	bf08      	it	eq
 8002428:	3008      	addeq	r0, #8
 800242a:	b112      	cbz	r2, 8002432 <USART_ITConfig+0x2a>
 800242c:	6802      	ldr	r2, [r0, #0]
 800242e:	4313      	orrs	r3, r2
 8002430:	e002      	b.n	8002438 <USART_ITConfig+0x30>
 8002432:	6802      	ldr	r2, [r0, #0]
 8002434:	ea22 0303 	bic.w	r3, r2, r3
 8002438:	6003      	str	r3, [r0, #0]
 800243a:	bd10      	pop	{r4, pc}

0800243c <USART_GetITStatus>:
 800243c:	b510      	push	{r4, lr}
 800243e:	bf00      	nop
 8002440:	bf00      	nop
 8002442:	f3c1 2207 	ubfx	r2, r1, #8, #8
 8002446:	b2cc      	uxtb	r4, r1
 8002448:	2301      	movs	r3, #1
 800244a:	2a01      	cmp	r2, #1
 800244c:	fa03 f304 	lsl.w	r3, r3, r4
 8002450:	d101      	bne.n	8002456 <USART_GetITStatus+0x1a>
 8002452:	6802      	ldr	r2, [r0, #0]
 8002454:	e003      	b.n	800245e <USART_GetITStatus+0x22>
 8002456:	2a02      	cmp	r2, #2
 8002458:	bf0c      	ite	eq
 800245a:	6842      	ldreq	r2, [r0, #4]
 800245c:	6882      	ldrne	r2, [r0, #8]
 800245e:	4013      	ands	r3, r2
 8002460:	69c2      	ldr	r2, [r0, #28]
 8002462:	b13b      	cbz	r3, 8002474 <USART_GetITStatus+0x38>
 8002464:	0c09      	lsrs	r1, r1, #16
 8002466:	2301      	movs	r3, #1
 8002468:	408b      	lsls	r3, r1
 800246a:	4213      	tst	r3, r2
 800246c:	bf14      	ite	ne
 800246e:	2001      	movne	r0, #1
 8002470:	2000      	moveq	r0, #0
 8002472:	bd10      	pop	{r4, pc}
 8002474:	4618      	mov	r0, r3
 8002476:	bd10      	pop	{r4, pc}

08002478 <USART_ClearITPendingBit>:
 8002478:	bf00      	nop
 800247a:	bf00      	nop
 800247c:	2301      	movs	r3, #1
 800247e:	0c09      	lsrs	r1, r1, #16
 8002480:	408b      	lsls	r3, r1
 8002482:	6203      	str	r3, [r0, #32]
 8002484:	4770      	bx	lr
	...

08002488 <uart_write>:
 8002488:	4b04      	ldr	r3, [pc, #16]	; (800249c <uart_write+0x14>)
 800248a:	69da      	ldr	r2, [r3, #28]
 800248c:	0612      	lsls	r2, r2, #24
 800248e:	d401      	bmi.n	8002494 <uart_write+0xc>
 8002490:	bf00      	nop
 8002492:	e7f9      	b.n	8002488 <uart_write>
 8002494:	b280      	uxth	r0, r0
 8002496:	8518      	strh	r0, [r3, #40]	; 0x28
 8002498:	4770      	bx	lr
 800249a:	bf00      	nop
 800249c:	40013800 	.word	0x40013800

080024a0 <uart_init>:
 80024a0:	b530      	push	{r4, r5, lr}
 80024a2:	4b2c      	ldr	r3, [pc, #176]	; (8002554 <uart_init+0xb4>)
 80024a4:	4d2c      	ldr	r5, [pc, #176]	; (8002558 <uart_init+0xb8>)
 80024a6:	2400      	movs	r4, #0
 80024a8:	601c      	str	r4, [r3, #0]
 80024aa:	4b2c      	ldr	r3, [pc, #176]	; (800255c <uart_init+0xbc>)
 80024ac:	b08b      	sub	sp, #44	; 0x2c
 80024ae:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 80024b2:	2101      	movs	r1, #1
 80024b4:	601c      	str	r4, [r3, #0]
 80024b6:	f7ff fd59 	bl	8001f6c <RCC_AHBPeriphClockCmd>
 80024ba:	f44f 4080 	mov.w	r0, #16384	; 0x4000
 80024be:	2101      	movs	r1, #1
 80024c0:	f7ff fd62 	bl	8001f88 <RCC_APB2PeriphClockCmd>
 80024c4:	f44f 63c0 	mov.w	r3, #1536	; 0x600
 80024c8:	9302      	str	r3, [sp, #8]
 80024ca:	2302      	movs	r3, #2
 80024cc:	f88d 300c 	strb.w	r3, [sp, #12]
 80024d0:	a902      	add	r1, sp, #8
 80024d2:	2303      	movs	r3, #3
 80024d4:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80024d8:	f88d 300d 	strb.w	r3, [sp, #13]
 80024dc:	f88d 400e 	strb.w	r4, [sp, #14]
 80024e0:	f88d 400f 	strb.w	r4, [sp, #15]
 80024e4:	f000 fbea 	bl	8002cbc <GPIO_Init>
 80024e8:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80024ec:	2109      	movs	r1, #9
 80024ee:	2207      	movs	r2, #7
 80024f0:	f000 fc2e 	bl	8002d50 <GPIO_PinAFConfig>
 80024f4:	2207      	movs	r2, #7
 80024f6:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80024fa:	210a      	movs	r1, #10
 80024fc:	f000 fc28 	bl	8002d50 <GPIO_PinAFConfig>
 8002500:	f44f 33e1 	mov.w	r3, #115200	; 0x1c200
 8002504:	9304      	str	r3, [sp, #16]
 8002506:	4628      	mov	r0, r5
 8002508:	230c      	movs	r3, #12
 800250a:	a904      	add	r1, sp, #16
 800250c:	9308      	str	r3, [sp, #32]
 800250e:	9405      	str	r4, [sp, #20]
 8002510:	9406      	str	r4, [sp, #24]
 8002512:	9407      	str	r4, [sp, #28]
 8002514:	9409      	str	r4, [sp, #36]	; 0x24
 8002516:	f7ff ff05 	bl	8002324 <USART_Init>
 800251a:	4628      	mov	r0, r5
 800251c:	2101      	movs	r1, #1
 800251e:	f7ff ff63 	bl	80023e8 <USART_Cmd>
 8002522:	2201      	movs	r2, #1
 8002524:	4628      	mov	r0, r5
 8002526:	490e      	ldr	r1, [pc, #56]	; (8002560 <uart_init+0xc0>)
 8002528:	f7ff ff6e 	bl	8002408 <USART_ITConfig>
 800252c:	2325      	movs	r3, #37	; 0x25
 800252e:	f88d 4005 	strb.w	r4, [sp, #5]
 8002532:	f88d 4006 	strb.w	r4, [sp, #6]
 8002536:	a801      	add	r0, sp, #4
 8002538:	2401      	movs	r4, #1
 800253a:	f88d 3004 	strb.w	r3, [sp, #4]
 800253e:	f88d 4007 	strb.w	r4, [sp, #7]
 8002542:	f000 fadd 	bl	8002b00 <NVIC_Init>
 8002546:	4628      	mov	r0, r5
 8002548:	4621      	mov	r1, r4
 800254a:	f7ff ff4d 	bl	80023e8 <USART_Cmd>
 800254e:	b00b      	add	sp, #44	; 0x2c
 8002550:	bd30      	pop	{r4, r5, pc}
 8002552:	bf00      	nop
 8002554:	20001084 	.word	0x20001084
 8002558:	40013800 	.word	0x40013800
 800255c:	20001088 	.word	0x20001088
 8002560:	00050105 	.word	0x00050105

08002564 <USART1_IRQHandler>:
 8002564:	b508      	push	{r3, lr}
 8002566:	480d      	ldr	r0, [pc, #52]	; (800259c <USART1_IRQHandler+0x38>)
 8002568:	490d      	ldr	r1, [pc, #52]	; (80025a0 <USART1_IRQHandler+0x3c>)
 800256a:	f7ff ff67 	bl	800243c <USART_GetITStatus>
 800256e:	b178      	cbz	r0, 8002590 <USART1_IRQHandler+0x2c>
 8002570:	480a      	ldr	r0, [pc, #40]	; (800259c <USART1_IRQHandler+0x38>)
 8002572:	f7ff ff44 	bl	80023fe <USART_ReceiveData>
 8002576:	4b0b      	ldr	r3, [pc, #44]	; (80025a4 <USART1_IRQHandler+0x40>)
 8002578:	490b      	ldr	r1, [pc, #44]	; (80025a8 <USART1_IRQHandler+0x44>)
 800257a:	681a      	ldr	r2, [r3, #0]
 800257c:	b2c0      	uxtb	r0, r0
 800257e:	5488      	strb	r0, [r1, r2]
 8002580:	681a      	ldr	r2, [r3, #0]
 8002582:	3201      	adds	r2, #1
 8002584:	601a      	str	r2, [r3, #0]
 8002586:	681a      	ldr	r2, [r3, #0]
 8002588:	2a1f      	cmp	r2, #31
 800258a:	bf84      	itt	hi
 800258c:	2200      	movhi	r2, #0
 800258e:	601a      	strhi	r2, [r3, #0]
 8002590:	4802      	ldr	r0, [pc, #8]	; (800259c <USART1_IRQHandler+0x38>)
 8002592:	4903      	ldr	r1, [pc, #12]	; (80025a0 <USART1_IRQHandler+0x3c>)
 8002594:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8002598:	f7ff bf6e 	b.w	8002478 <USART_ClearITPendingBit>
 800259c:	40013800 	.word	0x40013800
 80025a0:	00050105 	.word	0x00050105
 80025a4:	20001084 	.word	0x20001084
 80025a8:	20001064 	.word	0x20001064

080025ac <i2c_delay>:
 80025ac:	bf00      	nop
 80025ae:	bf00      	nop
 80025b0:	bf00      	nop
 80025b2:	bf00      	nop
 80025b4:	4770      	bx	lr
	...

080025b8 <SetLowSDA>:
 80025b8:	b537      	push	{r0, r1, r2, r4, r5, lr}
 80025ba:	4d0d      	ldr	r5, [pc, #52]	; (80025f0 <SetLowSDA+0x38>)
 80025bc:	2301      	movs	r3, #1
 80025be:	2203      	movs	r2, #3
 80025c0:	2480      	movs	r4, #128	; 0x80
 80025c2:	f88d 3004 	strb.w	r3, [sp, #4]
 80025c6:	f88d 3006 	strb.w	r3, [sp, #6]
 80025ca:	4628      	mov	r0, r5
 80025cc:	2300      	movs	r3, #0
 80025ce:	4669      	mov	r1, sp
 80025d0:	f88d 2005 	strb.w	r2, [sp, #5]
 80025d4:	f88d 3007 	strb.w	r3, [sp, #7]
 80025d8:	9400      	str	r4, [sp, #0]
 80025da:	f000 fb6f 	bl	8002cbc <GPIO_Init>
 80025de:	4628      	mov	r0, r5
 80025e0:	4621      	mov	r1, r4
 80025e2:	f000 fbb1 	bl	8002d48 <GPIO_ResetBits>
 80025e6:	f7ff ffe1 	bl	80025ac <i2c_delay>
 80025ea:	b003      	add	sp, #12
 80025ec:	bd30      	pop	{r4, r5, pc}
 80025ee:	bf00      	nop
 80025f0:	48000400 	.word	0x48000400

080025f4 <SetHighSDA>:
 80025f4:	b537      	push	{r0, r1, r2, r4, r5, lr}
 80025f6:	4d0d      	ldr	r5, [pc, #52]	; (800262c <SetHighSDA+0x38>)
 80025f8:	2203      	movs	r2, #3
 80025fa:	2300      	movs	r3, #0
 80025fc:	2480      	movs	r4, #128	; 0x80
 80025fe:	f88d 2005 	strb.w	r2, [sp, #5]
 8002602:	4628      	mov	r0, r5
 8002604:	2201      	movs	r2, #1
 8002606:	4669      	mov	r1, sp
 8002608:	f88d 3004 	strb.w	r3, [sp, #4]
 800260c:	f88d 2006 	strb.w	r2, [sp, #6]
 8002610:	f88d 3007 	strb.w	r3, [sp, #7]
 8002614:	9400      	str	r4, [sp, #0]
 8002616:	f000 fb51 	bl	8002cbc <GPIO_Init>
 800261a:	4628      	mov	r0, r5
 800261c:	4621      	mov	r1, r4
 800261e:	f000 fb8f 	bl	8002d40 <GPIO_SetBits>
 8002622:	f7ff ffc3 	bl	80025ac <i2c_delay>
 8002626:	b003      	add	sp, #12
 8002628:	bd30      	pop	{r4, r5, pc}
 800262a:	bf00      	nop
 800262c:	48000400 	.word	0x48000400

08002630 <SetLowSCL>:
 8002630:	b508      	push	{r3, lr}
 8002632:	4804      	ldr	r0, [pc, #16]	; (8002644 <SetLowSCL+0x14>)
 8002634:	2140      	movs	r1, #64	; 0x40
 8002636:	f000 fb87 	bl	8002d48 <GPIO_ResetBits>
 800263a:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800263e:	f7ff bfb5 	b.w	80025ac <i2c_delay>
 8002642:	bf00      	nop
 8002644:	48000400 	.word	0x48000400

08002648 <SetHighSCL>:
 8002648:	b508      	push	{r3, lr}
 800264a:	4804      	ldr	r0, [pc, #16]	; (800265c <SetHighSCL+0x14>)
 800264c:	2140      	movs	r1, #64	; 0x40
 800264e:	f000 fb77 	bl	8002d40 <GPIO_SetBits>
 8002652:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8002656:	f7ff bfa9 	b.w	80025ac <i2c_delay>
 800265a:	bf00      	nop
 800265c:	48000400 	.word	0x48000400

08002660 <i2c_0_init>:
 8002660:	b507      	push	{r0, r1, r2, lr}
 8002662:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 8002666:	2101      	movs	r1, #1
 8002668:	f7ff fc80 	bl	8001f6c <RCC_AHBPeriphClockCmd>
 800266c:	23c0      	movs	r3, #192	; 0xc0
 800266e:	9300      	str	r3, [sp, #0]
 8002670:	2301      	movs	r3, #1
 8002672:	2203      	movs	r2, #3
 8002674:	480a      	ldr	r0, [pc, #40]	; (80026a0 <i2c_0_init+0x40>)
 8002676:	f88d 3004 	strb.w	r3, [sp, #4]
 800267a:	4669      	mov	r1, sp
 800267c:	f88d 3006 	strb.w	r3, [sp, #6]
 8002680:	2300      	movs	r3, #0
 8002682:	f88d 2005 	strb.w	r2, [sp, #5]
 8002686:	f88d 3007 	strb.w	r3, [sp, #7]
 800268a:	f000 fb17 	bl	8002cbc <GPIO_Init>
 800268e:	f7ff ffdb 	bl	8002648 <SetHighSCL>
 8002692:	f7ff ff91 	bl	80025b8 <SetLowSDA>
 8002696:	f7ff ffad 	bl	80025f4 <SetHighSDA>
 800269a:	b003      	add	sp, #12
 800269c:	f85d fb04 	ldr.w	pc, [sp], #4
 80026a0:	48000400 	.word	0x48000400

080026a4 <i2cStart>:
 80026a4:	b508      	push	{r3, lr}
 80026a6:	f7ff ffcf 	bl	8002648 <SetHighSCL>
 80026aa:	f7ff ffa3 	bl	80025f4 <SetHighSDA>
 80026ae:	f7ff ffcb 	bl	8002648 <SetHighSCL>
 80026b2:	f7ff ff81 	bl	80025b8 <SetLowSDA>
 80026b6:	f7ff ffbb 	bl	8002630 <SetLowSCL>
 80026ba:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80026be:	f7ff bf99 	b.w	80025f4 <SetHighSDA>

080026c2 <i2cStop>:
 80026c2:	b508      	push	{r3, lr}
 80026c4:	f7ff ffb4 	bl	8002630 <SetLowSCL>
 80026c8:	f7ff ff76 	bl	80025b8 <SetLowSDA>
 80026cc:	f7ff ffbc 	bl	8002648 <SetHighSCL>
 80026d0:	f7ff ff72 	bl	80025b8 <SetLowSDA>
 80026d4:	f7ff ffb8 	bl	8002648 <SetHighSCL>
 80026d8:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80026dc:	f7ff bf8a 	b.w	80025f4 <SetHighSDA>

080026e0 <i2cWrite>:
 80026e0:	b538      	push	{r3, r4, r5, lr}
 80026e2:	4605      	mov	r5, r0
 80026e4:	2408      	movs	r4, #8
 80026e6:	f7ff ffa3 	bl	8002630 <SetLowSCL>
 80026ea:	062b      	lsls	r3, r5, #24
 80026ec:	d502      	bpl.n	80026f4 <i2cWrite+0x14>
 80026ee:	f7ff ff81 	bl	80025f4 <SetHighSDA>
 80026f2:	e001      	b.n	80026f8 <i2cWrite+0x18>
 80026f4:	f7ff ff60 	bl	80025b8 <SetLowSDA>
 80026f8:	3c01      	subs	r4, #1
 80026fa:	f7ff ffa5 	bl	8002648 <SetHighSCL>
 80026fe:	006d      	lsls	r5, r5, #1
 8002700:	f014 04ff 	ands.w	r4, r4, #255	; 0xff
 8002704:	b2ed      	uxtb	r5, r5
 8002706:	d1ee      	bne.n	80026e6 <i2cWrite+0x6>
 8002708:	f7ff ff92 	bl	8002630 <SetLowSCL>
 800270c:	f7ff ff72 	bl	80025f4 <SetHighSDA>
 8002710:	f7ff ff9a 	bl	8002648 <SetHighSCL>
 8002714:	4b05      	ldr	r3, [pc, #20]	; (800272c <i2cWrite+0x4c>)
 8002716:	8a1c      	ldrh	r4, [r3, #16]
 8002718:	b2a4      	uxth	r4, r4
 800271a:	f7ff ff89 	bl	8002630 <SetLowSCL>
 800271e:	f7ff ff45 	bl	80025ac <i2c_delay>
 8002722:	f084 0080 	eor.w	r0, r4, #128	; 0x80
 8002726:	f3c0 10c0 	ubfx	r0, r0, #7, #1
 800272a:	bd38      	pop	{r3, r4, r5, pc}
 800272c:	48000400 	.word	0x48000400

08002730 <i2cRead>:
 8002730:	b570      	push	{r4, r5, r6, lr}
 8002732:	4606      	mov	r6, r0
 8002734:	f7ff ff7c 	bl	8002630 <SetLowSCL>
 8002738:	f7ff ff5c 	bl	80025f4 <SetHighSDA>
 800273c:	2508      	movs	r5, #8
 800273e:	2400      	movs	r4, #0
 8002740:	f7ff ff82 	bl	8002648 <SetHighSCL>
 8002744:	4b0d      	ldr	r3, [pc, #52]	; (800277c <i2cRead+0x4c>)
 8002746:	8a1b      	ldrh	r3, [r3, #16]
 8002748:	0064      	lsls	r4, r4, #1
 800274a:	061b      	lsls	r3, r3, #24
 800274c:	b2e4      	uxtb	r4, r4
 800274e:	bf48      	it	mi
 8002750:	3401      	addmi	r4, #1
 8002752:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 8002756:	bf48      	it	mi
 8002758:	b2e4      	uxtbmi	r4, r4
 800275a:	f7ff ff69 	bl	8002630 <SetLowSCL>
 800275e:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 8002762:	d1ed      	bne.n	8002740 <i2cRead+0x10>
 8002764:	b10e      	cbz	r6, 800276a <i2cRead+0x3a>
 8002766:	f7ff ff27 	bl	80025b8 <SetLowSDA>
 800276a:	f7ff ff6d 	bl	8002648 <SetHighSCL>
 800276e:	f7ff ff5f 	bl	8002630 <SetLowSCL>
 8002772:	f7ff ff1b 	bl	80025ac <i2c_delay>
 8002776:	4620      	mov	r0, r4
 8002778:	bd70      	pop	{r4, r5, r6, pc}
 800277a:	bf00      	nop
 800277c:	48000400 	.word	0x48000400

08002780 <i2c_write_reg>:
 8002780:	b570      	push	{r4, r5, r6, lr}
 8002782:	4606      	mov	r6, r0
 8002784:	460d      	mov	r5, r1
 8002786:	4614      	mov	r4, r2
 8002788:	f7ff ff8c 	bl	80026a4 <i2cStart>
 800278c:	4630      	mov	r0, r6
 800278e:	f7ff ffa7 	bl	80026e0 <i2cWrite>
 8002792:	4628      	mov	r0, r5
 8002794:	f7ff ffa4 	bl	80026e0 <i2cWrite>
 8002798:	4620      	mov	r0, r4
 800279a:	f7ff ffa1 	bl	80026e0 <i2cWrite>
 800279e:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 80027a2:	f7ff bf8e 	b.w	80026c2 <i2cStop>

080027a6 <i2c_read_reg>:
 80027a6:	b538      	push	{r3, r4, r5, lr}
 80027a8:	4604      	mov	r4, r0
 80027aa:	460d      	mov	r5, r1
 80027ac:	f7ff ff7a 	bl	80026a4 <i2cStart>
 80027b0:	4620      	mov	r0, r4
 80027b2:	f7ff ff95 	bl	80026e0 <i2cWrite>
 80027b6:	4628      	mov	r0, r5
 80027b8:	f7ff ff92 	bl	80026e0 <i2cWrite>
 80027bc:	f7ff ff72 	bl	80026a4 <i2cStart>
 80027c0:	f044 0001 	orr.w	r0, r4, #1
 80027c4:	f7ff ff8c 	bl	80026e0 <i2cWrite>
 80027c8:	2000      	movs	r0, #0
 80027ca:	f7ff ffb1 	bl	8002730 <i2cRead>
 80027ce:	4604      	mov	r4, r0
 80027d0:	f7ff ff77 	bl	80026c2 <i2cStop>
 80027d4:	4620      	mov	r0, r4
 80027d6:	bd38      	pop	{r3, r4, r5, pc}

080027d8 <SystemInit>:
 80027d8:	4a39      	ldr	r2, [pc, #228]	; (80028c0 <SystemInit+0xe8>)
 80027da:	f8d2 3088 	ldr.w	r3, [r2, #136]	; 0x88
 80027de:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
 80027e2:	f8c2 3088 	str.w	r3, [r2, #136]	; 0x88
 80027e6:	4b37      	ldr	r3, [pc, #220]	; (80028c4 <SystemInit+0xec>)
 80027e8:	681a      	ldr	r2, [r3, #0]
 80027ea:	f042 0201 	orr.w	r2, r2, #1
 80027ee:	601a      	str	r2, [r3, #0]
 80027f0:	6859      	ldr	r1, [r3, #4]
 80027f2:	4a35      	ldr	r2, [pc, #212]	; (80028c8 <SystemInit+0xf0>)
 80027f4:	400a      	ands	r2, r1
 80027f6:	605a      	str	r2, [r3, #4]
 80027f8:	681a      	ldr	r2, [r3, #0]
 80027fa:	f022 7284 	bic.w	r2, r2, #17301504	; 0x1080000
 80027fe:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
 8002802:	601a      	str	r2, [r3, #0]
 8002804:	681a      	ldr	r2, [r3, #0]
 8002806:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 800280a:	601a      	str	r2, [r3, #0]
 800280c:	685a      	ldr	r2, [r3, #4]
 800280e:	f422 02fe 	bic.w	r2, r2, #8323072	; 0x7f0000
 8002812:	605a      	str	r2, [r3, #4]
 8002814:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8002816:	f022 020f 	bic.w	r2, r2, #15
 800281a:	62da      	str	r2, [r3, #44]	; 0x2c
 800281c:	6b19      	ldr	r1, [r3, #48]	; 0x30
 800281e:	4a2b      	ldr	r2, [pc, #172]	; (80028cc <SystemInit+0xf4>)
 8002820:	b082      	sub	sp, #8
 8002822:	400a      	ands	r2, r1
 8002824:	631a      	str	r2, [r3, #48]	; 0x30
 8002826:	2200      	movs	r2, #0
 8002828:	609a      	str	r2, [r3, #8]
 800282a:	9200      	str	r2, [sp, #0]
 800282c:	9201      	str	r2, [sp, #4]
 800282e:	681a      	ldr	r2, [r3, #0]
 8002830:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
 8002834:	601a      	str	r2, [r3, #0]
 8002836:	681a      	ldr	r2, [r3, #0]
 8002838:	f402 3200 	and.w	r2, r2, #131072	; 0x20000
 800283c:	9201      	str	r2, [sp, #4]
 800283e:	9a00      	ldr	r2, [sp, #0]
 8002840:	3201      	adds	r2, #1
 8002842:	9200      	str	r2, [sp, #0]
 8002844:	9a01      	ldr	r2, [sp, #4]
 8002846:	b91a      	cbnz	r2, 8002850 <SystemInit+0x78>
 8002848:	9a00      	ldr	r2, [sp, #0]
 800284a:	f5b2 4fa0 	cmp.w	r2, #20480	; 0x5000
 800284e:	d1f2      	bne.n	8002836 <SystemInit+0x5e>
 8002850:	681a      	ldr	r2, [r3, #0]
 8002852:	f412 3200 	ands.w	r2, r2, #131072	; 0x20000
 8002856:	bf18      	it	ne
 8002858:	2201      	movne	r2, #1
 800285a:	9201      	str	r2, [sp, #4]
 800285c:	9a01      	ldr	r2, [sp, #4]
 800285e:	2a01      	cmp	r2, #1
 8002860:	d005      	beq.n	800286e <SystemInit+0x96>
 8002862:	4b17      	ldr	r3, [pc, #92]	; (80028c0 <SystemInit+0xe8>)
 8002864:	f04f 6200 	mov.w	r2, #134217728	; 0x8000000
 8002868:	609a      	str	r2, [r3, #8]
 800286a:	b002      	add	sp, #8
 800286c:	4770      	bx	lr
 800286e:	4a18      	ldr	r2, [pc, #96]	; (80028d0 <SystemInit+0xf8>)
 8002870:	2112      	movs	r1, #18
 8002872:	6011      	str	r1, [r2, #0]
 8002874:	685a      	ldr	r2, [r3, #4]
 8002876:	605a      	str	r2, [r3, #4]
 8002878:	685a      	ldr	r2, [r3, #4]
 800287a:	605a      	str	r2, [r3, #4]
 800287c:	685a      	ldr	r2, [r3, #4]
 800287e:	f442 6280 	orr.w	r2, r2, #1024	; 0x400
 8002882:	605a      	str	r2, [r3, #4]
 8002884:	685a      	ldr	r2, [r3, #4]
 8002886:	f422 127c 	bic.w	r2, r2, #4128768	; 0x3f0000
 800288a:	605a      	str	r2, [r3, #4]
 800288c:	685a      	ldr	r2, [r3, #4]
 800288e:	f442 12e8 	orr.w	r2, r2, #1900544	; 0x1d0000
 8002892:	605a      	str	r2, [r3, #4]
 8002894:	681a      	ldr	r2, [r3, #0]
 8002896:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
 800289a:	601a      	str	r2, [r3, #0]
 800289c:	6819      	ldr	r1, [r3, #0]
 800289e:	4a09      	ldr	r2, [pc, #36]	; (80028c4 <SystemInit+0xec>)
 80028a0:	0189      	lsls	r1, r1, #6
 80028a2:	d5fb      	bpl.n	800289c <SystemInit+0xc4>
 80028a4:	6851      	ldr	r1, [r2, #4]
 80028a6:	f021 0103 	bic.w	r1, r1, #3
 80028aa:	6051      	str	r1, [r2, #4]
 80028ac:	6851      	ldr	r1, [r2, #4]
 80028ae:	f041 0102 	orr.w	r1, r1, #2
 80028b2:	6051      	str	r1, [r2, #4]
 80028b4:	685a      	ldr	r2, [r3, #4]
 80028b6:	f002 020c 	and.w	r2, r2, #12
 80028ba:	2a08      	cmp	r2, #8
 80028bc:	d1fa      	bne.n	80028b4 <SystemInit+0xdc>
 80028be:	e7d0      	b.n	8002862 <SystemInit+0x8a>
 80028c0:	e000ed00 	.word	0xe000ed00
 80028c4:	40021000 	.word	0x40021000
 80028c8:	f87fc00c 	.word	0xf87fc00c
 80028cc:	ff00fccc 	.word	0xff00fccc
 80028d0:	40022000 	.word	0x40022000

080028d4 <sys_tick_init>:
 80028d4:	4b06      	ldr	r3, [pc, #24]	; (80028f0 <sys_tick_init+0x1c>)
 80028d6:	f244 6250 	movw	r2, #18000	; 0x4650
 80028da:	605a      	str	r2, [r3, #4]
 80028dc:	4a05      	ldr	r2, [pc, #20]	; (80028f4 <sys_tick_init+0x20>)
 80028de:	21f0      	movs	r1, #240	; 0xf0
 80028e0:	f882 1023 	strb.w	r1, [r2, #35]	; 0x23
 80028e4:	2200      	movs	r2, #0
 80028e6:	609a      	str	r2, [r3, #8]
 80028e8:	2207      	movs	r2, #7
 80028ea:	601a      	str	r2, [r3, #0]
 80028ec:	4770      	bx	lr
 80028ee:	bf00      	nop
 80028f0:	e000e010 	.word	0xe000e010
 80028f4:	e000ed00 	.word	0xe000ed00

080028f8 <sleep>:
 80028f8:	bf30      	wfi
 80028fa:	4770      	bx	lr

080028fc <core_yield>:
 80028fc:	bf00      	nop
 80028fe:	4770      	bx	lr

08002900 <sytem_clock_init>:
 8002900:	f7ff bf6a 	b.w	80027d8 <SystemInit>

08002904 <pwm_set>:
 8002904:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8002908:	b086      	sub	sp, #24
 800290a:	2370      	movs	r3, #112	; 0x70
 800290c:	9301      	str	r3, [sp, #4]
 800290e:	2301      	movs	r3, #1
 8002910:	f8ad 3008 	strh.w	r3, [sp, #8]
 8002914:	2304      	movs	r3, #4
 8002916:	f8ad 300a 	strh.w	r3, [sp, #10]
 800291a:	f8df 8064 	ldr.w	r8, [pc, #100]	; 8002980 <pwm_set+0x7c>
 800291e:	4c17      	ldr	r4, [pc, #92]	; (800297c <pwm_set+0x78>)
 8002920:	2302      	movs	r3, #2
 8002922:	f8ad 3010 	strh.w	r3, [sp, #16]
 8002926:	2300      	movs	r3, #0
 8002928:	f8ad 3012 	strh.w	r3, [sp, #18]
 800292c:	f8ad 3016 	strh.w	r3, [sp, #22]
 8002930:	f242 7710 	movw	r7, #10000	; 0x2710
 8002934:	f8d8 3000 	ldr.w	r3, [r8]
 8002938:	fbb3 f3f7 	udiv	r3, r3, r7
 800293c:	3b02      	subs	r3, #2
 800293e:	f44f 7280 	mov.w	r2, #256	; 0x100
 8002942:	460e      	mov	r6, r1
 8002944:	2564      	movs	r5, #100	; 0x64
 8002946:	a901      	add	r1, sp, #4
 8002948:	4358      	muls	r0, r3
 800294a:	fbb0 f3f5 	udiv	r3, r0, r5
 800294e:	4620      	mov	r0, r4
 8002950:	f8ad 2014 	strh.w	r2, [sp, #20]
 8002954:	9303      	str	r3, [sp, #12]
 8002956:	f7ff fb91 	bl	800207c <TIM_OC1Init>
 800295a:	f8d8 1000 	ldr.w	r1, [r8]
 800295e:	fbb1 f1f7 	udiv	r1, r1, r7
 8002962:	3902      	subs	r1, #2
 8002964:	4371      	muls	r1, r6
 8002966:	4620      	mov	r0, r4
 8002968:	fbb1 f1f5 	udiv	r1, r1, r5
 800296c:	9103      	str	r1, [sp, #12]
 800296e:	a901      	add	r1, sp, #4
 8002970:	f7ff fbca 	bl	8002108 <TIM_OC2Init>
 8002974:	b006      	add	sp, #24
 8002976:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800297a:	bf00      	nop
 800297c:	40012c00 	.word	0x40012c00
 8002980:	200000f8 	.word	0x200000f8

08002984 <pwm_init>:
 8002984:	b530      	push	{r4, r5, lr}
 8002986:	f44f 6000 	mov.w	r0, #2048	; 0x800
 800298a:	b087      	sub	sp, #28
 800298c:	2101      	movs	r1, #1
 800298e:	f7ff fafb 	bl	8001f88 <RCC_APB2PeriphClockCmd>
 8002992:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 8002996:	2101      	movs	r1, #1
 8002998:	f7ff fae8 	bl	8001f6c <RCC_AHBPeriphClockCmd>
 800299c:	4c1d      	ldr	r4, [pc, #116]	; (8002a14 <pwm_init+0x90>)
 800299e:	4d1e      	ldr	r5, [pc, #120]	; (8002a18 <pwm_init+0x94>)
 80029a0:	f44f 43c0 	mov.w	r3, #24576	; 0x6000
 80029a4:	9301      	str	r3, [sp, #4]
 80029a6:	2302      	movs	r3, #2
 80029a8:	f88d 3008 	strb.w	r3, [sp, #8]
 80029ac:	4620      	mov	r0, r4
 80029ae:	2303      	movs	r3, #3
 80029b0:	a901      	add	r1, sp, #4
 80029b2:	f88d 3009 	strb.w	r3, [sp, #9]
 80029b6:	f000 f981 	bl	8002cbc <GPIO_Init>
 80029ba:	4620      	mov	r0, r4
 80029bc:	210d      	movs	r1, #13
 80029be:	2206      	movs	r2, #6
 80029c0:	f000 f9c6 	bl	8002d50 <GPIO_PinAFConfig>
 80029c4:	4620      	mov	r0, r4
 80029c6:	210e      	movs	r1, #14
 80029c8:	2206      	movs	r2, #6
 80029ca:	f000 f9c1 	bl	8002d50 <GPIO_PinAFConfig>
 80029ce:	4b13      	ldr	r3, [pc, #76]	; (8002a1c <pwm_init+0x98>)
 80029d0:	2400      	movs	r4, #0
 80029d2:	f242 7210 	movw	r2, #10000	; 0x2710
 80029d6:	4628      	mov	r0, r5
 80029d8:	a903      	add	r1, sp, #12
 80029da:	681b      	ldr	r3, [r3, #0]
 80029dc:	fbb3 f3f2 	udiv	r3, r3, r2
 80029e0:	3b01      	subs	r3, #1
 80029e2:	9304      	str	r3, [sp, #16]
 80029e4:	f8ad 400c 	strh.w	r4, [sp, #12]
 80029e8:	f8ad 400e 	strh.w	r4, [sp, #14]
 80029ec:	f8ad 4014 	strh.w	r4, [sp, #20]
 80029f0:	f8ad 4016 	strh.w	r4, [sp, #22]
 80029f4:	f7ff fae4 	bl	8001fc0 <TIM_TimeBaseInit>
 80029f8:	4620      	mov	r0, r4
 80029fa:	4621      	mov	r1, r4
 80029fc:	f7ff ff82 	bl	8002904 <pwm_set>
 8002a00:	4628      	mov	r0, r5
 8002a02:	2101      	movs	r1, #1
 8002a04:	f7ff fb2c 	bl	8002060 <TIM_Cmd>
 8002a08:	4628      	mov	r0, r5
 8002a0a:	2101      	movs	r1, #1
 8002a0c:	f7ff fbba 	bl	8002184 <TIM_CtrlPWMOutputs>
 8002a10:	b007      	add	sp, #28
 8002a12:	bd30      	pop	{r4, r5, pc}
 8002a14:	48000400 	.word	0x48000400
 8002a18:	40012c00 	.word	0x40012c00
 8002a1c:	200000f8 	.word	0x200000f8

08002a20 <drv8834_run>:
 8002a20:	1e02      	subs	r2, r0, #0
 8002a22:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8002a26:	bfd5      	itete	le
 8002a28:	4252      	negle	r2, r2
 8002a2a:	8d03      	ldrhgt	r3, [r0, #40]	; 0x28
 8002a2c:	6983      	ldrle	r3, [r0, #24]
 8002a2e:	ea6f 4343 	mvngt.w	r3, r3, lsl #17
 8002a32:	bfc5      	ittet	gt
 8002a34:	ea6f 4353 	mvngt.w	r3, r3, lsr #17
 8002a38:	b29b      	uxthgt	r3, r3
 8002a3a:	f443 4300 	orrle.w	r3, r3, #32768	; 0x8000
 8002a3e:	8503      	strhgt	r3, [r0, #40]	; 0x28
 8002a40:	bfd8      	it	le
 8002a42:	6183      	strle	r3, [r0, #24]
 8002a44:	480d      	ldr	r0, [pc, #52]	; (8002a7c <drv8834_run+0x5c>)
 8002a46:	bfd8      	it	le
 8002a48:	b212      	sxthle	r2, r2
 8002a4a:	2900      	cmp	r1, #0
 8002a4c:	bfcd      	iteet	gt
 8002a4e:	8d03      	ldrhgt	r3, [r0, #40]	; 0x28
 8002a50:	6983      	ldrle	r3, [r0, #24]
 8002a52:	4249      	negle	r1, r1
 8002a54:	b29b      	uxthgt	r3, r3
 8002a56:	bfd5      	itete	le
 8002a58:	b209      	sxthle	r1, r1
 8002a5a:	f043 0320 	orrgt.w	r3, r3, #32
 8002a5e:	f043 0320 	orrle.w	r3, r3, #32
 8002a62:	8503      	strhgt	r3, [r0, #40]	; 0x28
 8002a64:	bfd8      	it	le
 8002a66:	6183      	strle	r3, [r0, #24]
 8002a68:	2964      	cmp	r1, #100	; 0x64
 8002a6a:	bfa8      	it	ge
 8002a6c:	2164      	movge	r1, #100	; 0x64
 8002a6e:	2a64      	cmp	r2, #100	; 0x64
 8002a70:	bfa8      	it	ge
 8002a72:	2264      	movge	r2, #100	; 0x64
 8002a74:	4608      	mov	r0, r1
 8002a76:	4611      	mov	r1, r2
 8002a78:	f7ff bf44 	b.w	8002904 <pwm_set>
 8002a7c:	48000400 	.word	0x48000400

08002a80 <drv8834_init>:
 8002a80:	e92d 41f3 	stmdb	sp!, {r0, r1, r4, r5, r6, r7, r8, lr}
 8002a84:	4f1d      	ldr	r7, [pc, #116]	; (8002afc <drv8834_init+0x7c>)
 8002a86:	2400      	movs	r4, #0
 8002a88:	2601      	movs	r6, #1
 8002a8a:	2503      	movs	r5, #3
 8002a8c:	f04f 0810 	mov.w	r8, #16
 8002a90:	4638      	mov	r0, r7
 8002a92:	4669      	mov	r1, sp
 8002a94:	f8cd 8000 	str.w	r8, [sp]
 8002a98:	f88d 6004 	strb.w	r6, [sp, #4]
 8002a9c:	f88d 4006 	strb.w	r4, [sp, #6]
 8002aa0:	f88d 5005 	strb.w	r5, [sp, #5]
 8002aa4:	f88d 4007 	strb.w	r4, [sp, #7]
 8002aa8:	f000 f908 	bl	8002cbc <GPIO_Init>
 8002aac:	f8a7 8028 	strh.w	r8, [r7, #40]	; 0x28
 8002ab0:	2320      	movs	r3, #32
 8002ab2:	4638      	mov	r0, r7
 8002ab4:	4669      	mov	r1, sp
 8002ab6:	9300      	str	r3, [sp, #0]
 8002ab8:	f88d 6004 	strb.w	r6, [sp, #4]
 8002abc:	f88d 4006 	strb.w	r4, [sp, #6]
 8002ac0:	f88d 5005 	strb.w	r5, [sp, #5]
 8002ac4:	f88d 4007 	strb.w	r4, [sp, #7]
 8002ac8:	f000 f8f8 	bl	8002cbc <GPIO_Init>
 8002acc:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8002ad0:	4669      	mov	r1, sp
 8002ad2:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8002ad6:	9300      	str	r3, [sp, #0]
 8002ad8:	f88d 6004 	strb.w	r6, [sp, #4]
 8002adc:	f88d 4006 	strb.w	r4, [sp, #6]
 8002ae0:	f88d 5005 	strb.w	r5, [sp, #5]
 8002ae4:	f88d 4007 	strb.w	r4, [sp, #7]
 8002ae8:	f000 f8e8 	bl	8002cbc <GPIO_Init>
 8002aec:	4620      	mov	r0, r4
 8002aee:	4621      	mov	r1, r4
 8002af0:	f7ff ff96 	bl	8002a20 <drv8834_run>
 8002af4:	b002      	add	sp, #8
 8002af6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8002afa:	bf00      	nop
 8002afc:	48000400 	.word	0x48000400

08002b00 <NVIC_Init>:
 8002b00:	b510      	push	{r4, lr}
 8002b02:	bf00      	nop
 8002b04:	bf00      	nop
 8002b06:	bf00      	nop
 8002b08:	78c2      	ldrb	r2, [r0, #3]
 8002b0a:	7803      	ldrb	r3, [r0, #0]
 8002b0c:	b312      	cbz	r2, 8002b54 <NVIC_Init+0x54>
 8002b0e:	4a17      	ldr	r2, [pc, #92]	; (8002b6c <NVIC_Init+0x6c>)
 8002b10:	68d1      	ldr	r1, [r2, #12]
 8002b12:	7842      	ldrb	r2, [r0, #1]
 8002b14:	43c9      	mvns	r1, r1
 8002b16:	f3c1 2102 	ubfx	r1, r1, #8, #3
 8002b1a:	f1c1 0404 	rsb	r4, r1, #4
 8002b1e:	b2e4      	uxtb	r4, r4
 8002b20:	40a2      	lsls	r2, r4
 8002b22:	b2d4      	uxtb	r4, r2
 8002b24:	220f      	movs	r2, #15
 8002b26:	410a      	asrs	r2, r1
 8002b28:	7881      	ldrb	r1, [r0, #2]
 8002b2a:	400a      	ands	r2, r1
 8002b2c:	4322      	orrs	r2, r4
 8002b2e:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
 8002b32:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
 8002b36:	0112      	lsls	r2, r2, #4
 8002b38:	b2d2      	uxtb	r2, r2
 8002b3a:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
 8002b3e:	7803      	ldrb	r3, [r0, #0]
 8002b40:	2201      	movs	r2, #1
 8002b42:	0959      	lsrs	r1, r3, #5
 8002b44:	f003 031f 	and.w	r3, r3, #31
 8002b48:	fa02 f303 	lsl.w	r3, r2, r3
 8002b4c:	4a08      	ldr	r2, [pc, #32]	; (8002b70 <NVIC_Init+0x70>)
 8002b4e:	f842 3021 	str.w	r3, [r2, r1, lsl #2]
 8002b52:	bd10      	pop	{r4, pc}
 8002b54:	095a      	lsrs	r2, r3, #5
 8002b56:	2101      	movs	r1, #1
 8002b58:	f003 031f 	and.w	r3, r3, #31
 8002b5c:	4099      	lsls	r1, r3
 8002b5e:	f102 0320 	add.w	r3, r2, #32
 8002b62:	4a03      	ldr	r2, [pc, #12]	; (8002b70 <NVIC_Init+0x70>)
 8002b64:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
 8002b68:	bd10      	pop	{r4, pc}
 8002b6a:	bf00      	nop
 8002b6c:	e000ed00 	.word	0xe000ed00
 8002b70:	e000e100 	.word	0xe000e100

08002b74 <lib_low_level_init>:
 8002b74:	b508      	push	{r3, lr}
 8002b76:	f7ff fec3 	bl	8002900 <sytem_clock_init>
 8002b7a:	f000 f969 	bl	8002e50 <gpio_init>
 8002b7e:	f7ff fc8f 	bl	80024a0 <uart_init>
 8002b82:	f7ff fb0f 	bl	80021a4 <timer_init>
 8002b86:	f7ff fefd 	bl	8002984 <pwm_init>
 8002b8a:	f7ff ff79 	bl	8002a80 <drv8834_init>
 8002b8e:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8002b92:	f7ff bd65 	b.w	8002660 <i2c_0_init>
	...

08002b98 <EXTI_Init>:
 8002b98:	b570      	push	{r4, r5, r6, lr}
 8002b9a:	bf00      	nop
 8002b9c:	bf00      	nop
 8002b9e:	bf00      	nop
 8002ba0:	bf00      	nop
 8002ba2:	7982      	ldrb	r2, [r0, #6]
 8002ba4:	6803      	ldr	r3, [r0, #0]
 8002ba6:	7904      	ldrb	r4, [r0, #4]
 8002ba8:	2a00      	cmp	r2, #0
 8002baa:	d064      	beq.n	8002c76 <EXTI_Init+0xde>
 8002bac:	f023 011f 	bic.w	r1, r3, #31
 8002bb0:	f101 4180 	add.w	r1, r1, #1073741824	; 0x40000000
 8002bb4:	f501 3182 	add.w	r1, r1, #66560	; 0x10400
 8002bb8:	f003 021f 	and.w	r2, r3, #31
 8002bbc:	680d      	ldr	r5, [r1, #0]
 8002bbe:	2301      	movs	r3, #1
 8002bc0:	fa03 f202 	lsl.w	r2, r3, r2
 8002bc4:	ea25 0202 	bic.w	r2, r5, r2
 8002bc8:	600a      	str	r2, [r1, #0]
 8002bca:	6802      	ldr	r2, [r0, #0]
 8002bcc:	4d32      	ldr	r5, [pc, #200]	; (8002c98 <EXTI_Init+0x100>)
 8002bce:	f022 061f 	bic.w	r6, r2, #31
 8002bd2:	f002 021f 	and.w	r2, r2, #31
 8002bd6:	5971      	ldr	r1, [r6, r5]
 8002bd8:	fa03 f202 	lsl.w	r2, r3, r2
 8002bdc:	ea21 0202 	bic.w	r2, r1, r2
 8002be0:	5172      	str	r2, [r6, r5]
 8002be2:	6801      	ldr	r1, [r0, #0]
 8002be4:	f104 4280 	add.w	r2, r4, #1073741824	; 0x40000000
 8002be8:	f502 3282 	add.w	r2, r2, #66560	; 0x10400
 8002bec:	f021 041f 	bic.w	r4, r1, #31
 8002bf0:	f001 011f 	and.w	r1, r1, #31
 8002bf4:	5915      	ldr	r5, [r2, r4]
 8002bf6:	fa03 f101 	lsl.w	r1, r3, r1
 8002bfa:	4329      	orrs	r1, r5
 8002bfc:	5111      	str	r1, [r2, r4]
 8002bfe:	6802      	ldr	r2, [r0, #0]
 8002c00:	4d26      	ldr	r5, [pc, #152]	; (8002c9c <EXTI_Init+0x104>)
 8002c02:	f022 041f 	bic.w	r4, r2, #31
 8002c06:	f002 021f 	and.w	r2, r2, #31
 8002c0a:	5961      	ldr	r1, [r4, r5]
 8002c0c:	fa03 f202 	lsl.w	r2, r3, r2
 8002c10:	ea21 0202 	bic.w	r2, r1, r2
 8002c14:	5162      	str	r2, [r4, r5]
 8002c16:	6802      	ldr	r2, [r0, #0]
 8002c18:	4c21      	ldr	r4, [pc, #132]	; (8002ca0 <EXTI_Init+0x108>)
 8002c1a:	f022 061f 	bic.w	r6, r2, #31
 8002c1e:	f002 021f 	and.w	r2, r2, #31
 8002c22:	5931      	ldr	r1, [r6, r4]
 8002c24:	fa03 f202 	lsl.w	r2, r3, r2
 8002c28:	ea21 0202 	bic.w	r2, r1, r2
 8002c2c:	7941      	ldrb	r1, [r0, #5]
 8002c2e:	5132      	str	r2, [r6, r4]
 8002c30:	2910      	cmp	r1, #16
 8002c32:	6802      	ldr	r2, [r0, #0]
 8002c34:	d112      	bne.n	8002c5c <EXTI_Init+0xc4>
 8002c36:	f022 011f 	bic.w	r1, r2, #31
 8002c3a:	f002 021f 	and.w	r2, r2, #31
 8002c3e:	594e      	ldr	r6, [r1, r5]
 8002c40:	fa03 f202 	lsl.w	r2, r3, r2
 8002c44:	4332      	orrs	r2, r6
 8002c46:	514a      	str	r2, [r1, r5]
 8002c48:	6802      	ldr	r2, [r0, #0]
 8002c4a:	f022 011f 	bic.w	r1, r2, #31
 8002c4e:	f002 021f 	and.w	r2, r2, #31
 8002c52:	5908      	ldr	r0, [r1, r4]
 8002c54:	4093      	lsls	r3, r2
 8002c56:	4303      	orrs	r3, r0
 8002c58:	510b      	str	r3, [r1, r4]
 8002c5a:	bd70      	pop	{r4, r5, r6, pc}
 8002c5c:	f101 4180 	add.w	r1, r1, #1073741824	; 0x40000000
 8002c60:	f022 001f 	bic.w	r0, r2, #31
 8002c64:	f501 3182 	add.w	r1, r1, #66560	; 0x10400
 8002c68:	f002 021f 	and.w	r2, r2, #31
 8002c6c:	580c      	ldr	r4, [r1, r0]
 8002c6e:	4093      	lsls	r3, r2
 8002c70:	4323      	orrs	r3, r4
 8002c72:	500b      	str	r3, [r1, r0]
 8002c74:	bd70      	pop	{r4, r5, r6, pc}
 8002c76:	f104 4280 	add.w	r2, r4, #1073741824	; 0x40000000
 8002c7a:	f502 3282 	add.w	r2, r2, #66560	; 0x10400
 8002c7e:	f023 041f 	bic.w	r4, r3, #31
 8002c82:	2001      	movs	r0, #1
 8002c84:	5911      	ldr	r1, [r2, r4]
 8002c86:	f003 031f 	and.w	r3, r3, #31
 8002c8a:	fa00 f303 	lsl.w	r3, r0, r3
 8002c8e:	ea21 0303 	bic.w	r3, r1, r3
 8002c92:	5113      	str	r3, [r2, r4]
 8002c94:	bd70      	pop	{r4, r5, r6, pc}
 8002c96:	bf00      	nop
 8002c98:	40010404 	.word	0x40010404
 8002c9c:	40010408 	.word	0x40010408
 8002ca0:	4001040c 	.word	0x4001040c

08002ca4 <EXTI_ClearITPendingBit>:
 8002ca4:	f020 011f 	bic.w	r1, r0, #31
 8002ca8:	2301      	movs	r3, #1
 8002caa:	f000 001f 	and.w	r0, r0, #31
 8002cae:	4a02      	ldr	r2, [pc, #8]	; (8002cb8 <EXTI_ClearITPendingBit+0x14>)
 8002cb0:	4083      	lsls	r3, r0
 8002cb2:	508b      	str	r3, [r1, r2]
 8002cb4:	4770      	bx	lr
 8002cb6:	bf00      	nop
 8002cb8:	40010414 	.word	0x40010414

08002cbc <GPIO_Init>:
 8002cbc:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002cbe:	bf00      	nop
 8002cc0:	bf00      	nop
 8002cc2:	bf00      	nop
 8002cc4:	bf00      	nop
 8002cc6:	2300      	movs	r3, #0
 8002cc8:	680e      	ldr	r6, [r1, #0]
 8002cca:	461c      	mov	r4, r3
 8002ccc:	2501      	movs	r5, #1
 8002cce:	40a5      	lsls	r5, r4
 8002cd0:	ea05 0e06 	and.w	lr, r5, r6
 8002cd4:	45ae      	cmp	lr, r5
 8002cd6:	d12d      	bne.n	8002d34 <GPIO_Init+0x78>
 8002cd8:	790f      	ldrb	r7, [r1, #4]
 8002cda:	1e7a      	subs	r2, r7, #1
 8002cdc:	2a01      	cmp	r2, #1
 8002cde:	d817      	bhi.n	8002d10 <GPIO_Init+0x54>
 8002ce0:	bf00      	nop
 8002ce2:	2203      	movs	r2, #3
 8002ce4:	6885      	ldr	r5, [r0, #8]
 8002ce6:	409a      	lsls	r2, r3
 8002ce8:	ea25 0202 	bic.w	r2, r5, r2
 8002cec:	6082      	str	r2, [r0, #8]
 8002cee:	794d      	ldrb	r5, [r1, #5]
 8002cf0:	6882      	ldr	r2, [r0, #8]
 8002cf2:	409d      	lsls	r5, r3
 8002cf4:	4315      	orrs	r5, r2
 8002cf6:	6085      	str	r5, [r0, #8]
 8002cf8:	bf00      	nop
 8002cfa:	8882      	ldrh	r2, [r0, #4]
 8002cfc:	b292      	uxth	r2, r2
 8002cfe:	ea22 020e 	bic.w	r2, r2, lr
 8002d02:	8082      	strh	r2, [r0, #4]
 8002d04:	798a      	ldrb	r2, [r1, #6]
 8002d06:	8885      	ldrh	r5, [r0, #4]
 8002d08:	40a2      	lsls	r2, r4
 8002d0a:	432a      	orrs	r2, r5
 8002d0c:	b292      	uxth	r2, r2
 8002d0e:	8082      	strh	r2, [r0, #4]
 8002d10:	2203      	movs	r2, #3
 8002d12:	6805      	ldr	r5, [r0, #0]
 8002d14:	409a      	lsls	r2, r3
 8002d16:	43d2      	mvns	r2, r2
 8002d18:	4015      	ands	r5, r2
 8002d1a:	6005      	str	r5, [r0, #0]
 8002d1c:	6805      	ldr	r5, [r0, #0]
 8002d1e:	409f      	lsls	r7, r3
 8002d20:	432f      	orrs	r7, r5
 8002d22:	6007      	str	r7, [r0, #0]
 8002d24:	68c7      	ldr	r7, [r0, #12]
 8002d26:	4017      	ands	r7, r2
 8002d28:	79ca      	ldrb	r2, [r1, #7]
 8002d2a:	fa02 f503 	lsl.w	r5, r2, r3
 8002d2e:	ea47 0205 	orr.w	r2, r7, r5
 8002d32:	60c2      	str	r2, [r0, #12]
 8002d34:	3401      	adds	r4, #1
 8002d36:	2c10      	cmp	r4, #16
 8002d38:	f103 0302 	add.w	r3, r3, #2
 8002d3c:	d1c6      	bne.n	8002ccc <GPIO_Init+0x10>
 8002d3e:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002d40 <GPIO_SetBits>:
 8002d40:	bf00      	nop
 8002d42:	bf00      	nop
 8002d44:	6181      	str	r1, [r0, #24]
 8002d46:	4770      	bx	lr

08002d48 <GPIO_ResetBits>:
 8002d48:	bf00      	nop
 8002d4a:	bf00      	nop
 8002d4c:	8501      	strh	r1, [r0, #40]	; 0x28
 8002d4e:	4770      	bx	lr

08002d50 <GPIO_PinAFConfig>:
 8002d50:	b510      	push	{r4, lr}
 8002d52:	bf00      	nop
 8002d54:	bf00      	nop
 8002d56:	bf00      	nop
 8002d58:	f001 0307 	and.w	r3, r1, #7
 8002d5c:	08c9      	lsrs	r1, r1, #3
 8002d5e:	eb00 0081 	add.w	r0, r0, r1, lsl #2
 8002d62:	009b      	lsls	r3, r3, #2
 8002d64:	6a04      	ldr	r4, [r0, #32]
 8002d66:	210f      	movs	r1, #15
 8002d68:	4099      	lsls	r1, r3
 8002d6a:	ea24 0101 	bic.w	r1, r4, r1
 8002d6e:	6201      	str	r1, [r0, #32]
 8002d70:	6a01      	ldr	r1, [r0, #32]
 8002d72:	409a      	lsls	r2, r3
 8002d74:	430a      	orrs	r2, r1
 8002d76:	6202      	str	r2, [r0, #32]
 8002d78:	bd10      	pop	{r4, pc}
	...

08002d7c <EXTI9_5_IRQHandler>:
 8002d7c:	4a03      	ldr	r2, [pc, #12]	; (8002d8c <EXTI9_5_IRQHandler+0x10>)
 8002d7e:	6813      	ldr	r3, [r2, #0]
 8002d80:	2006      	movs	r0, #6
 8002d82:	3301      	adds	r3, #1
 8002d84:	6013      	str	r3, [r2, #0]
 8002d86:	f7ff bf8d 	b.w	8002ca4 <EXTI_ClearITPendingBit>
 8002d8a:	bf00      	nop
 8002d8c:	20001094 	.word	0x20001094

08002d90 <EXTI15_10_IRQHandler>:
 8002d90:	4a03      	ldr	r2, [pc, #12]	; (8002da0 <EXTI15_10_IRQHandler+0x10>)
 8002d92:	6813      	ldr	r3, [r2, #0]
 8002d94:	200c      	movs	r0, #12
 8002d96:	3301      	adds	r3, #1
 8002d98:	6013      	str	r3, [r2, #0]
 8002d9a:	f7ff bf83 	b.w	8002ca4 <EXTI_ClearITPendingBit>
 8002d9e:	bf00      	nop
 8002da0:	2000108c 	.word	0x2000108c

08002da4 <led_on>:
 8002da4:	0403      	lsls	r3, r0, #16
 8002da6:	bf42      	ittt	mi
 8002da8:	4b02      	ldrmi	r3, [pc, #8]	; (8002db4 <led_on+0x10>)
 8002daa:	f44f 4200 	movmi.w	r2, #32768	; 0x8000
 8002dae:	619a      	strmi	r2, [r3, #24]
 8002db0:	4770      	bx	lr
 8002db2:	bf00      	nop
 8002db4:	48000400 	.word	0x48000400

08002db8 <led_off>:
 8002db8:	0403      	lsls	r3, r0, #16
 8002dba:	bf42      	ittt	mi
 8002dbc:	4b02      	ldrmi	r3, [pc, #8]	; (8002dc8 <led_off+0x10>)
 8002dbe:	f44f 4200 	movmi.w	r2, #32768	; 0x8000
 8002dc2:	851a      	strhmi	r2, [r3, #40]	; 0x28
 8002dc4:	4770      	bx	lr
 8002dc6:	bf00      	nop
 8002dc8:	48000400 	.word	0x48000400

08002dcc <get_key>:
 8002dcc:	4b02      	ldr	r3, [pc, #8]	; (8002dd8 <get_key+0xc>)
 8002dce:	8a18      	ldrh	r0, [r3, #16]
 8002dd0:	43c0      	mvns	r0, r0
 8002dd2:	f400 5080 	and.w	r0, r0, #4096	; 0x1000
 8002dd6:	4770      	bx	lr
 8002dd8:	48000400 	.word	0x48000400

08002ddc <left_encoder_read>:
 8002ddc:	b082      	sub	sp, #8
 8002dde:	b672      	cpsid	i
 8002de0:	4b06      	ldr	r3, [pc, #24]	; (8002dfc <left_encoder_read+0x20>)
 8002de2:	681b      	ldr	r3, [r3, #0]
 8002de4:	9301      	str	r3, [sp, #4]
 8002de6:	b662      	cpsie	i
 8002de8:	9801      	ldr	r0, [sp, #4]
 8002dea:	f240 23ee 	movw	r3, #750	; 0x2ee
 8002dee:	4343      	muls	r3, r0
 8002df0:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 8002df4:	fbb3 f0f0 	udiv	r0, r3, r0
 8002df8:	b002      	add	sp, #8
 8002dfa:	4770      	bx	lr
 8002dfc:	20001094 	.word	0x20001094

08002e00 <right_encoder_read>:
 8002e00:	b082      	sub	sp, #8
 8002e02:	b672      	cpsid	i
 8002e04:	4b06      	ldr	r3, [pc, #24]	; (8002e20 <right_encoder_read+0x20>)
 8002e06:	681b      	ldr	r3, [r3, #0]
 8002e08:	9301      	str	r3, [sp, #4]
 8002e0a:	b662      	cpsie	i
 8002e0c:	9801      	ldr	r0, [sp, #4]
 8002e0e:	f240 23ee 	movw	r3, #750	; 0x2ee
 8002e12:	4343      	muls	r3, r0
 8002e14:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 8002e18:	fbb3 f0f0 	udiv	r0, r3, r0
 8002e1c:	b002      	add	sp, #8
 8002e1e:	4770      	bx	lr
 8002e20:	2000108c 	.word	0x2000108c

08002e24 <encoder_get_distance>:
 8002e24:	b510      	push	{r4, lr}
 8002e26:	f7ff ffd9 	bl	8002ddc <left_encoder_read>
 8002e2a:	4604      	mov	r4, r0
 8002e2c:	f7ff ffe8 	bl	8002e00 <right_encoder_read>
 8002e30:	4420      	add	r0, r4
 8002e32:	0840      	lsrs	r0, r0, #1
 8002e34:	bd10      	pop	{r4, pc}
	...

08002e38 <encoder_reset>:
 8002e38:	b672      	cpsid	i
 8002e3a:	4a03      	ldr	r2, [pc, #12]	; (8002e48 <encoder_reset+0x10>)
 8002e3c:	2300      	movs	r3, #0
 8002e3e:	6013      	str	r3, [r2, #0]
 8002e40:	4a02      	ldr	r2, [pc, #8]	; (8002e4c <encoder_reset+0x14>)
 8002e42:	6013      	str	r3, [r2, #0]
 8002e44:	b662      	cpsie	i
 8002e46:	4770      	bx	lr
 8002e48:	20001094 	.word	0x20001094
 8002e4c:	2000108c 	.word	0x2000108c

08002e50 <gpio_init>:
 8002e50:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8002e54:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 8002e58:	b087      	sub	sp, #28
 8002e5a:	2101      	movs	r1, #1
 8002e5c:	f7ff f886 	bl	8001f6c <RCC_AHBPeriphClockCmd>
 8002e60:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 8002e64:	2101      	movs	r1, #1
 8002e66:	f7ff f881 	bl	8001f6c <RCC_AHBPeriphClockCmd>
 8002e6a:	f44f 2000 	mov.w	r0, #524288	; 0x80000
 8002e6e:	2101      	movs	r1, #1
 8002e70:	f7ff f87c 	bl	8001f6c <RCC_AHBPeriphClockCmd>
 8002e74:	2400      	movs	r4, #0
 8002e76:	2603      	movs	r6, #3
 8002e78:	f44f 4500 	mov.w	r5, #32768	; 0x8000
 8002e7c:	f04f 0801 	mov.w	r8, #1
 8002e80:	a902      	add	r1, sp, #8
 8002e82:	4846      	ldr	r0, [pc, #280]	; (8002f9c <gpio_init+0x14c>)
 8002e84:	9502      	str	r5, [sp, #8]
 8002e86:	f88d 800c 	strb.w	r8, [sp, #12]
 8002e8a:	f88d 400e 	strb.w	r4, [sp, #14]
 8002e8e:	f88d 600d 	strb.w	r6, [sp, #13]
 8002e92:	f88d 400f 	strb.w	r4, [sp, #15]
 8002e96:	f7ff ff11 	bl	8002cbc <GPIO_Init>
 8002e9a:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8002e9e:	a902      	add	r1, sp, #8
 8002ea0:	483e      	ldr	r0, [pc, #248]	; (8002f9c <gpio_init+0x14c>)
 8002ea2:	9302      	str	r3, [sp, #8]
 8002ea4:	f88d 400c 	strb.w	r4, [sp, #12]
 8002ea8:	f88d 600d 	strb.w	r6, [sp, #13]
 8002eac:	f88d 400f 	strb.w	r4, [sp, #15]
 8002eb0:	4f3b      	ldr	r7, [pc, #236]	; (8002fa0 <gpio_init+0x150>)
 8002eb2:	f7ff ff03 	bl	8002cbc <GPIO_Init>
 8002eb6:	f44f 6380 	mov.w	r3, #1024	; 0x400
 8002eba:	9302      	str	r3, [sp, #8]
 8002ebc:	a902      	add	r1, sp, #8
 8002ebe:	2302      	movs	r3, #2
 8002ec0:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8002ec4:	603c      	str	r4, [r7, #0]
 8002ec6:	f88d 400c 	strb.w	r4, [sp, #12]
 8002eca:	f88d 600d 	strb.w	r6, [sp, #13]
 8002ece:	f88d 300f 	strb.w	r3, [sp, #15]
 8002ed2:	f7ff fef3 	bl	8002cbc <GPIO_Init>
 8002ed6:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8002eda:	2401      	movs	r4, #1
 8002edc:	8a1b      	ldrh	r3, [r3, #16]
 8002ede:	4831      	ldr	r0, [pc, #196]	; (8002fa4 <gpio_init+0x154>)
 8002ee0:	055b      	lsls	r3, r3, #21
 8002ee2:	4b2e      	ldr	r3, [pc, #184]	; (8002f9c <gpio_init+0x14c>)
 8002ee4:	bf48      	it	mi
 8002ee6:	f8c7 8000 	strmi.w	r8, [r7]
 8002eea:	2600      	movs	r6, #0
 8002eec:	619d      	str	r5, [r3, #24]
 8002eee:	a902      	add	r1, sp, #8
 8002ef0:	f44f 5382 	mov.w	r3, #4160	; 0x1040
 8002ef4:	9302      	str	r3, [sp, #8]
 8002ef6:	f88d 600c 	strb.w	r6, [sp, #12]
 8002efa:	f88d 400f 	strb.w	r4, [sp, #15]
 8002efe:	f7ff fedd 	bl	8002cbc <GPIO_Init>
 8002f02:	4620      	mov	r0, r4
 8002f04:	4621      	mov	r1, r4
 8002f06:	f7ff f83f 	bl	8001f88 <RCC_APB2PeriphClockCmd>
 8002f0a:	f04f 0910 	mov.w	r9, #16
 8002f0e:	2106      	movs	r1, #6
 8002f10:	2002      	movs	r0, #2
 8002f12:	f000 f88d 	bl	8003030 <SYSCFG_EXTILineConfig>
 8002f16:	f04f 0806 	mov.w	r8, #6
 8002f1a:	eb0d 0009 	add.w	r0, sp, r9
 8002f1e:	250f      	movs	r5, #15
 8002f20:	f8cd 8010 	str.w	r8, [sp, #16]
 8002f24:	f88d 6014 	strb.w	r6, [sp, #20]
 8002f28:	f88d 9015 	strb.w	r9, [sp, #21]
 8002f2c:	f88d 4016 	strb.w	r4, [sp, #22]
 8002f30:	f7ff fe32 	bl	8002b98 <EXTI_Init>
 8002f34:	2317      	movs	r3, #23
 8002f36:	a801      	add	r0, sp, #4
 8002f38:	f88d 3004 	strb.w	r3, [sp, #4]
 8002f3c:	f88d 5005 	strb.w	r5, [sp, #5]
 8002f40:	f88d 5006 	strb.w	r5, [sp, #6]
 8002f44:	f88d 4007 	strb.w	r4, [sp, #7]
 8002f48:	f7ff fdda 	bl	8002b00 <NVIC_Init>
 8002f4c:	210c      	movs	r1, #12
 8002f4e:	2002      	movs	r0, #2
 8002f50:	f000 f86e 	bl	8003030 <SYSCFG_EXTILineConfig>
 8002f54:	270c      	movs	r7, #12
 8002f56:	eb0d 0009 	add.w	r0, sp, r9
 8002f5a:	9704      	str	r7, [sp, #16]
 8002f5c:	f88d 6014 	strb.w	r6, [sp, #20]
 8002f60:	f88d 9015 	strb.w	r9, [sp, #21]
 8002f64:	f88d 4016 	strb.w	r4, [sp, #22]
 8002f68:	f7ff fe16 	bl	8002b98 <EXTI_Init>
 8002f6c:	2328      	movs	r3, #40	; 0x28
 8002f6e:	a801      	add	r0, sp, #4
 8002f70:	f88d 3004 	strb.w	r3, [sp, #4]
 8002f74:	f88d 5005 	strb.w	r5, [sp, #5]
 8002f78:	f88d 5006 	strb.w	r5, [sp, #6]
 8002f7c:	f88d 4007 	strb.w	r4, [sp, #7]
 8002f80:	f7ff fdbe 	bl	8002b00 <NVIC_Init>
 8002f84:	4640      	mov	r0, r8
 8002f86:	f7ff fe8d 	bl	8002ca4 <EXTI_ClearITPendingBit>
 8002f8a:	4638      	mov	r0, r7
 8002f8c:	f7ff fe8a 	bl	8002ca4 <EXTI_ClearITPendingBit>
 8002f90:	f7ff ff52 	bl	8002e38 <encoder_reset>
 8002f94:	b007      	add	sp, #28
 8002f96:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8002f9a:	bf00      	nop
 8002f9c:	48000400 	.word	0x48000400
 8002fa0:	20001090 	.word	0x20001090
 8002fa4:	48000800 	.word	0x48000800

08002fa8 <Default_Handler>:
 8002fa8:	4668      	mov	r0, sp
 8002faa:	f020 0107 	bic.w	r1, r0, #7
 8002fae:	468d      	mov	sp, r1
 8002fb0:	b501      	push	{r0, lr}
 8002fb2:	bf00      	nop
 8002fb4:	e8bd 4001 	ldmia.w	sp!, {r0, lr}
 8002fb8:	4685      	mov	sp, r0
 8002fba:	4770      	bx	lr

08002fbc <HardFault_Handler>:
 8002fbc:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8002fc0:	f7ff fef0 	bl	8002da4 <led_on>
 8002fc4:	4b06      	ldr	r3, [pc, #24]	; (8002fe0 <HardFault_Handler+0x24>)
 8002fc6:	3b01      	subs	r3, #1
 8002fc8:	d001      	beq.n	8002fce <HardFault_Handler+0x12>
 8002fca:	bf00      	nop
 8002fcc:	e7fb      	b.n	8002fc6 <HardFault_Handler+0xa>
 8002fce:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8002fd2:	f7ff fef1 	bl	8002db8 <led_off>
 8002fd6:	4b02      	ldr	r3, [pc, #8]	; (8002fe0 <HardFault_Handler+0x24>)
 8002fd8:	3b01      	subs	r3, #1
 8002fda:	d0ef      	beq.n	8002fbc <HardFault_Handler>
 8002fdc:	bf00      	nop
 8002fde:	e7fb      	b.n	8002fd8 <HardFault_Handler+0x1c>
 8002fe0:	00989681 	.word	0x00989681

08002fe4 <_reset_init>:
 8002fe4:	490e      	ldr	r1, [pc, #56]	; (8003020 <_reset_init+0x3c>)
 8002fe6:	4b0f      	ldr	r3, [pc, #60]	; (8003024 <_reset_init+0x40>)
 8002fe8:	1a5b      	subs	r3, r3, r1
 8002fea:	109b      	asrs	r3, r3, #2
 8002fec:	2200      	movs	r2, #0
 8002fee:	429a      	cmp	r2, r3
 8002ff0:	d006      	beq.n	8003000 <_reset_init+0x1c>
 8002ff2:	480d      	ldr	r0, [pc, #52]	; (8003028 <_reset_init+0x44>)
 8002ff4:	f850 0022 	ldr.w	r0, [r0, r2, lsl #2]
 8002ff8:	f841 0022 	str.w	r0, [r1, r2, lsl #2]
 8002ffc:	3201      	adds	r2, #1
 8002ffe:	e7f6      	b.n	8002fee <_reset_init+0xa>
 8003000:	4a0a      	ldr	r2, [pc, #40]	; (800302c <_reset_init+0x48>)
 8003002:	f8d2 3088 	ldr.w	r3, [r2, #136]	; 0x88
 8003006:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
 800300a:	f8c2 3088 	str.w	r3, [r2, #136]	; 0x88
 800300e:	f502 720c 	add.w	r2, r2, #560	; 0x230
 8003012:	6853      	ldr	r3, [r2, #4]
 8003014:	f023 4340 	bic.w	r3, r3, #3221225472	; 0xc0000000
 8003018:	6053      	str	r3, [r2, #4]
 800301a:	f7fe be1d 	b.w	8001c58 <main>
 800301e:	bf00      	nop
 8003020:	20000000 	.word	0x20000000
 8003024:	2000052c 	.word	0x2000052c
 8003028:	08004cc4 	.word	0x08004cc4
 800302c:	e000ed00 	.word	0xe000ed00

08003030 <SYSCFG_EXTILineConfig>:
 8003030:	b510      	push	{r4, lr}
 8003032:	bf00      	nop
 8003034:	bf00      	nop
 8003036:	f001 0303 	and.w	r3, r1, #3
 800303a:	f001 01fc 	and.w	r1, r1, #252	; 0xfc
 800303e:	f101 4180 	add.w	r1, r1, #1073741824	; 0x40000000
 8003042:	f501 3180 	add.w	r1, r1, #65536	; 0x10000
 8003046:	009b      	lsls	r3, r3, #2
 8003048:	688c      	ldr	r4, [r1, #8]
 800304a:	220f      	movs	r2, #15
 800304c:	409a      	lsls	r2, r3
 800304e:	ea24 0202 	bic.w	r2, r4, r2
 8003052:	608a      	str	r2, [r1, #8]
 8003054:	688a      	ldr	r2, [r1, #8]
 8003056:	4098      	lsls	r0, r3
 8003058:	4310      	orrs	r0, r2
 800305a:	6088      	str	r0, [r1, #8]
 800305c:	bd10      	pop	{r4, pc}
	...

08003060 <selfrel_offset31>:
 8003060:	e5903000 	ldr	r3, [r0]
 8003064:	e3130101 	tst	r3, #1073741824	; 0x40000000
 8003068:	13833102 	orrne	r3, r3, #-2147483648	; 0x80000000
 800306c:	03c33102 	biceq	r3, r3, #-2147483648	; 0x80000000
 8003070:	e0800003 	add	r0, r0, r3
 8003074:	e12fff1e 	bx	lr

08003078 <search_EIT_table>:
 8003078:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800307c:	e3510000 	cmp	r1, #0
 8003080:	e24dd00c 	sub	sp, sp, #12
 8003084:	0a000029 	beq	8003130 <search_EIT_table+0xb8>
 8003088:	e2413001 	sub	r3, r1, #1
 800308c:	e1a07002 	mov	r7, r2
 8003090:	e1a05000 	mov	r5, r0
 8003094:	e1a08003 	mov	r8, r3
 8003098:	e3a06000 	mov	r6, #0
 800309c:	e58d3004 	str	r3, [sp, #4]
 80030a0:	e0864008 	add	r4, r6, r8
 80030a4:	e0844fa4 	add	r4, r4, r4, lsr #31
 80030a8:	e1a040c4 	asr	r4, r4, #1
 80030ac:	e1a0a184 	lsl	sl, r4, #3
 80030b0:	e085b00a 	add	fp, r5, sl
 80030b4:	e1a0000b 	mov	r0, fp
 80030b8:	ebffffe8 	bl	8003060 <selfrel_offset31>
 80030bc:	e59d3004 	ldr	r3, [sp, #4]
 80030c0:	e1a09000 	mov	r9, r0
 80030c4:	e1530004 	cmp	r3, r4
 80030c8:	e28a0008 	add	r0, sl, #8
 80030cc:	e0850000 	add	r0, r5, r0
 80030d0:	0a00000b 	beq	8003104 <search_EIT_table+0x8c>
 80030d4:	ebffffe1 	bl	8003060 <selfrel_offset31>
 80030d8:	e1590007 	cmp	r9, r7
 80030dc:	e2400001 	sub	r0, r0, #1
 80030e0:	9a000003 	bls	80030f4 <search_EIT_table+0x7c>
 80030e4:	e1540006 	cmp	r4, r6
 80030e8:	0a00000b 	beq	800311c <search_EIT_table+0xa4>
 80030ec:	e2448001 	sub	r8, r4, #1
 80030f0:	eaffffea 	b	80030a0 <search_EIT_table+0x28>
 80030f4:	e1500007 	cmp	r0, r7
 80030f8:	2a000003 	bcs	800310c <search_EIT_table+0x94>
 80030fc:	e2846001 	add	r6, r4, #1
 8003100:	eaffffe6 	b	80030a0 <search_EIT_table+0x28>
 8003104:	e1590007 	cmp	r9, r7
 8003108:	8afffff5 	bhi	80030e4 <search_EIT_table+0x6c>
 800310c:	e1a0000b 	mov	r0, fp
 8003110:	e28dd00c 	add	sp, sp, #12
 8003114:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8003118:	e12fff1e 	bx	lr
 800311c:	e3a0b000 	mov	fp, #0
 8003120:	e1a0000b 	mov	r0, fp
 8003124:	e28dd00c 	add	sp, sp, #12
 8003128:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800312c:	e12fff1e 	bx	lr
 8003130:	e1a0b001 	mov	fp, r1
 8003134:	e1a0000b 	mov	r0, fp
 8003138:	e28dd00c 	add	sp, sp, #12
 800313c:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8003140:	e12fff1e 	bx	lr

08003144 <__gnu_unwind_get_pr_addr>:
 8003144:	e3500001 	cmp	r0, #1
 8003148:	0a000006 	beq	8003168 <__gnu_unwind_get_pr_addr+0x24>
 800314c:	e3500002 	cmp	r0, #2
 8003150:	0a000006 	beq	8003170 <__gnu_unwind_get_pr_addr+0x2c>
 8003154:	e59f301c 	ldr	r3, [pc, #28]	; 8003178 <__gnu_unwind_get_pr_addr+0x34>
 8003158:	e3500000 	cmp	r0, #0
 800315c:	01a00003 	moveq	r0, r3
 8003160:	13a00000 	movne	r0, #0
 8003164:	e12fff1e 	bx	lr
 8003168:	e59f000c 	ldr	r0, [pc, #12]	; 800317c <__gnu_unwind_get_pr_addr+0x38>
 800316c:	e12fff1e 	bx	lr
 8003170:	e59f0008 	ldr	r0, [pc, #8]	; 8003180 <__gnu_unwind_get_pr_addr+0x3c>
 8003174:	e12fff1e 	bx	lr
 8003178:	08003cec 	.word	0x08003cec
 800317c:	08003cf4 	.word	0x08003cf4
 8003180:	08003cfc 	.word	0x08003cfc

08003184 <get_eit_entry>:
 8003184:	e92d4030 	push	{r4, r5, lr}
 8003188:	e59f3118 	ldr	r3, [pc, #280]	; 80032a8 <get_eit_entry+0x124>
 800318c:	e3530000 	cmp	r3, #0
 8003190:	e24dd00c 	sub	sp, sp, #12
 8003194:	e1a04000 	mov	r4, r0
 8003198:	e2415002 	sub	r5, r1, #2
 800319c:	0a00002d 	beq	8003258 <get_eit_entry+0xd4>
 80031a0:	e1a00005 	mov	r0, r5
 80031a4:	e28d1004 	add	r1, sp, #4
 80031a8:	e320f000 	nop	{0}
 80031ac:	e3500000 	cmp	r0, #0
 80031b0:	0a000021 	beq	800323c <get_eit_entry+0xb8>
 80031b4:	e59d1004 	ldr	r1, [sp, #4]
 80031b8:	e1a02005 	mov	r2, r5
 80031bc:	ebffffad 	bl	8003078 <search_EIT_table>
 80031c0:	e2505000 	subs	r5, r0, #0
 80031c4:	0a00001c 	beq	800323c <get_eit_entry+0xb8>
 80031c8:	ebffffa4 	bl	8003060 <selfrel_offset31>
 80031cc:	e5953004 	ldr	r3, [r5, #4]
 80031d0:	e3530001 	cmp	r3, #1
 80031d4:	e5840048 	str	r0, [r4, #72]	; 0x48
 80031d8:	0a000010 	beq	8003220 <get_eit_entry+0x9c>
 80031dc:	e3530000 	cmp	r3, #0
 80031e0:	ba000023 	blt	8003274 <get_eit_entry+0xf0>
 80031e4:	e2850004 	add	r0, r5, #4
 80031e8:	ebffff9c 	bl	8003060 <selfrel_offset31>
 80031ec:	e3a03000 	mov	r3, #0
 80031f0:	e584004c 	str	r0, [r4, #76]	; 0x4c
 80031f4:	e5843050 	str	r3, [r4, #80]	; 0x50
 80031f8:	e5903000 	ldr	r3, [r0]
 80031fc:	e3530000 	cmp	r3, #0
 8003200:	ba000020 	blt	8003288 <get_eit_entry+0x104>
 8003204:	ebffff95 	bl	8003060 <selfrel_offset31>
 8003208:	e3a03000 	mov	r3, #0
 800320c:	e5840010 	str	r0, [r4, #16]
 8003210:	e1a00003 	mov	r0, r3
 8003214:	e28dd00c 	add	sp, sp, #12
 8003218:	e8bd4030 	pop	{r4, r5, lr}
 800321c:	e12fff1e 	bx	lr
 8003220:	e3a03005 	mov	r3, #5
 8003224:	e3a02000 	mov	r2, #0
 8003228:	e1a00003 	mov	r0, r3
 800322c:	e5842010 	str	r2, [r4, #16]
 8003230:	e28dd00c 	add	sp, sp, #12
 8003234:	e8bd4030 	pop	{r4, r5, lr}
 8003238:	e12fff1e 	bx	lr
 800323c:	e3a03009 	mov	r3, #9
 8003240:	e3a02000 	mov	r2, #0
 8003244:	e1a00003 	mov	r0, r3
 8003248:	e5842010 	str	r2, [r4, #16]
 800324c:	e28dd00c 	add	sp, sp, #12
 8003250:	e8bd4030 	pop	{r4, r5, lr}
 8003254:	e12fff1e 	bx	lr
 8003258:	e59f104c 	ldr	r1, [pc, #76]	; 80032ac <get_eit_entry+0x128>
 800325c:	e59f304c 	ldr	r3, [pc, #76]	; 80032b0 <get_eit_entry+0x12c>
 8003260:	e1a00001 	mov	r0, r1
 8003264:	e0611003 	rsb	r1, r1, r3
 8003268:	e1a011c1 	asr	r1, r1, #3
 800326c:	e58d1004 	str	r1, [sp, #4]
 8003270:	eaffffd0 	b	80031b8 <get_eit_entry+0x34>
 8003274:	e3a03001 	mov	r3, #1
 8003278:	e2850004 	add	r0, r5, #4
 800327c:	e584004c 	str	r0, [r4, #76]	; 0x4c
 8003280:	e5843050 	str	r3, [r4, #80]	; 0x50
 8003284:	eaffffdb 	b	80031f8 <get_eit_entry+0x74>
 8003288:	e1a00c23 	lsr	r0, r3, #24
 800328c:	e200000f 	and	r0, r0, #15
 8003290:	ebffffab 	bl	8003144 <__gnu_unwind_get_pr_addr>
 8003294:	e3500000 	cmp	r0, #0
 8003298:	e5840010 	str	r0, [r4, #16]
 800329c:	03a03009 	moveq	r3, #9
 80032a0:	13a03000 	movne	r3, #0
 80032a4:	eaffffd9 	b	8003210 <get_eit_entry+0x8c>
 80032a8:	00000000 	.word	0x00000000
 80032ac:	08004b4c 	.word	0x08004b4c
 80032b0:	08004cc4 	.word	0x08004cc4

080032b4 <restore_non_core_regs>:
 80032b4:	e5903000 	ldr	r3, [r0]
 80032b8:	e3130001 	tst	r3, #1
 80032bc:	e92d4010 	push	{r4, lr}
 80032c0:	e1a04000 	mov	r4, r0
 80032c4:	1a000004 	bne	80032dc <restore_non_core_regs+0x28>
 80032c8:	e3130002 	tst	r3, #2
 80032cc:	e2800048 	add	r0, r0, #72	; 0x48
 80032d0:	0a00000a 	beq	8003300 <restore_non_core_regs+0x4c>
 80032d4:	eb0003a2 	bl	8004164 <__gnu_Unwind_Restore_VFP_D>
 80032d8:	e5943000 	ldr	r3, [r4]
 80032dc:	e3130004 	tst	r3, #4
 80032e0:	0a00000a 	beq	8003310 <restore_non_core_regs+0x5c>
 80032e4:	e3130008 	tst	r3, #8
 80032e8:	0a00000d 	beq	8003324 <restore_non_core_regs+0x70>
 80032ec:	e3130010 	tst	r3, #16
 80032f0:	02840e1d 	addeq	r0, r4, #464	; 0x1d0
 80032f4:	0b0003c4 	bleq	800420c <__gnu_Unwind_Restore_WMMXC>
 80032f8:	e8bd4010 	pop	{r4, lr}
 80032fc:	e12fff1e 	bx	lr
 8003300:	eb000393 	bl	8004154 <__gnu_Unwind_Restore_VFP>
 8003304:	e5943000 	ldr	r3, [r4]
 8003308:	e3130004 	tst	r3, #4
 800330c:	1afffff4 	bne	80032e4 <restore_non_core_regs+0x30>
 8003310:	e28400d0 	add	r0, r4, #208	; 0xd0
 8003314:	eb000396 	bl	8004174 <__gnu_Unwind_Restore_VFP_D_16_to_31>
 8003318:	e5943000 	ldr	r3, [r4]
 800331c:	e3130008 	tst	r3, #8
 8003320:	1afffff1 	bne	80032ec <restore_non_core_regs+0x38>
 8003324:	e2840e15 	add	r0, r4, #336	; 0x150
 8003328:	eb000395 	bl	8004184 <__gnu_Unwind_Restore_WMMXD>
 800332c:	e5943000 	ldr	r3, [r4]
 8003330:	eaffffed 	b	80032ec <restore_non_core_regs+0x38>

08003334 <_Unwind_decode_typeinfo_ptr.isra.0>:
 8003334:	e5903000 	ldr	r3, [r0]
 8003338:	e3530000 	cmp	r3, #0
 800333c:	10830000 	addne	r0, r3, r0
 8003340:	01a00003 	moveq	r0, r3
 8003344:	e12fff1e 	bx	lr

08003348 <__gnu_unwind_24bit.isra.1>:
 8003348:	e3a00009 	mov	r0, #9
 800334c:	e12fff1e 	bx	lr

08003350 <_Unwind_DebugHook>:
 8003350:	e12fff1e 	bx	lr

08003354 <unwind_phase2>:
 8003354:	e92d4070 	push	{r4, r5, r6, lr}
 8003358:	e1a04000 	mov	r4, r0
 800335c:	e1a05001 	mov	r5, r1
 8003360:	ea000009 	b	800338c <unwind_phase2+0x38>
 8003364:	e5953040 	ldr	r3, [r5, #64]	; 0x40
 8003368:	e3a00001 	mov	r0, #1
 800336c:	e5843014 	str	r3, [r4, #20]
 8003370:	e1a01004 	mov	r1, r4
 8003374:	e1a02005 	mov	r2, r5
 8003378:	e594c010 	ldr	ip, [r4, #16]
 800337c:	e1a0e00f 	mov	lr, pc
 8003380:	e12fff1c 	bx	ip
 8003384:	e3500008 	cmp	r0, #8
 8003388:	1a000005 	bne	80033a4 <unwind_phase2+0x50>
 800338c:	e1a00004 	mov	r0, r4
 8003390:	e5951040 	ldr	r1, [r5, #64]	; 0x40
 8003394:	ebffff7a 	bl	8003184 <get_eit_entry>
 8003398:	e2506000 	subs	r6, r0, #0
 800339c:	0afffff0 	beq	8003364 <unwind_phase2+0x10>
 80033a0:	eb000509 	bl	80047cc <abort>
 80033a4:	e3500007 	cmp	r0, #7
 80033a8:	1afffffc 	bne	80033a0 <unwind_phase2+0x4c>
 80033ac:	e1a00006 	mov	r0, r6
 80033b0:	e5951040 	ldr	r1, [r5, #64]	; 0x40
 80033b4:	ebffffe5 	bl	8003350 <_Unwind_DebugHook>
 80033b8:	e2850004 	add	r0, r5, #4
 80033bc:	eb00035d 	bl	8004138 <__restore_core_regs>

080033c0 <unwind_phase2_forced>:
 80033c0:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
 80033c4:	e1a05000 	mov	r5, r0
 80033c8:	e1a06002 	mov	r6, r2
 80033cc:	e3a04000 	mov	r4, #0
 80033d0:	e281e004 	add	lr, r1, #4
 80033d4:	e24ddff2 	sub	sp, sp, #968	; 0x3c8
 80033d8:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
 80033dc:	e28dc00c 	add	ip, sp, #12
 80033e0:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
 80033e4:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
 80033e8:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
 80033ec:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
 80033f0:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
 80033f4:	e89e000f 	ldm	lr, {r0, r1, r2, r3}
 80033f8:	e1560004 	cmp	r6, r4
 80033fc:	e595800c 	ldr	r8, [r5, #12]
 8003400:	e5959018 	ldr	r9, [r5, #24]
 8003404:	e88c000f 	stm	ip, {r0, r1, r2, r3}
 8003408:	e1a00005 	mov	r0, r5
 800340c:	e59d1048 	ldr	r1, [sp, #72]	; 0x48
 8003410:	e58d4008 	str	r4, [sp, #8]
 8003414:	03a06009 	moveq	r6, #9
 8003418:	13a0600a 	movne	r6, #10
 800341c:	ebffff58 	bl	8003184 <get_eit_entry>
 8003420:	e1a04000 	mov	r4, r0
 8003424:	e28d7008 	add	r7, sp, #8
 8003428:	e3540000 	cmp	r4, #0
 800342c:	0a00000e 	beq	800346c <unwind_phase2_forced+0xac>
 8003430:	e59d3040 	ldr	r3, [sp, #64]	; 0x40
 8003434:	e88d0280 	stm	sp, {r7, r9}
 8003438:	e58d304c 	str	r3, [sp, #76]	; 0x4c
 800343c:	e3861010 	orr	r1, r6, #16
 8003440:	e3a00001 	mov	r0, #1
 8003444:	e1a02005 	mov	r2, r5
 8003448:	e1a03005 	mov	r3, r5
 800344c:	e1a0e00f 	mov	lr, pc
 8003450:	e12fff18 	bx	r8
 8003454:	e3500000 	cmp	r0, #0
 8003458:	1a000029 	bne	8003504 <unwind_phase2_forced+0x144>
 800345c:	e1a00004 	mov	r0, r4
 8003460:	e28ddff2 	add	sp, sp, #968	; 0x3c8
 8003464:	e8bd47f0 	pop	{r4, r5, r6, r7, r8, r9, sl, lr}
 8003468:	e12fff1e 	bx	lr
 800346c:	e59d3048 	ldr	r3, [sp, #72]	; 0x48
 8003470:	e1a01007 	mov	r1, r7
 8003474:	e5853014 	str	r3, [r5, #20]
 8003478:	e3a02e1e 	mov	r2, #480	; 0x1e0
 800347c:	e28d0f7a 	add	r0, sp, #488	; 0x1e8
 8003480:	eb0004d6 	bl	80047e0 <memcpy>
 8003484:	e1a01005 	mov	r1, r5
 8003488:	e28d2f7a 	add	r2, sp, #488	; 0x1e8
 800348c:	e1a00006 	mov	r0, r6
 8003490:	e595c010 	ldr	ip, [r5, #16]
 8003494:	e1a0e00f 	mov	lr, pc
 8003498:	e12fff1c 	bx	ip
 800349c:	e59d3220 	ldr	r3, [sp, #544]	; 0x220
 80034a0:	e1a0a000 	mov	sl, r0
 80034a4:	e58d304c 	str	r3, [sp, #76]	; 0x4c
 80034a8:	e88d0280 	stm	sp, {r7, r9}
 80034ac:	e1a01006 	mov	r1, r6
 80034b0:	e3a00001 	mov	r0, #1
 80034b4:	e1a02005 	mov	r2, r5
 80034b8:	e1a03005 	mov	r3, r5
 80034bc:	e1a0e00f 	mov	lr, pc
 80034c0:	e12fff18 	bx	r8
 80034c4:	e3500000 	cmp	r0, #0
 80034c8:	1a00000d 	bne	8003504 <unwind_phase2_forced+0x144>
 80034cc:	e1a00007 	mov	r0, r7
 80034d0:	e28d1f7a 	add	r1, sp, #488	; 0x1e8
 80034d4:	e3a02e1e 	mov	r2, #480	; 0x1e0
 80034d8:	eb0004c0 	bl	80047e0 <memcpy>
 80034dc:	e35a0008 	cmp	sl, #8
 80034e0:	1a000005 	bne	80034fc <unwind_phase2_forced+0x13c>
 80034e4:	e1a00005 	mov	r0, r5
 80034e8:	e59d1048 	ldr	r1, [sp, #72]	; 0x48
 80034ec:	ebffff24 	bl	8003184 <get_eit_entry>
 80034f0:	e3a06009 	mov	r6, #9
 80034f4:	e1a04000 	mov	r4, r0
 80034f8:	eaffffca 	b	8003428 <unwind_phase2_forced+0x68>
 80034fc:	e35a0007 	cmp	sl, #7
 8003500:	0a000003 	beq	8003514 <unwind_phase2_forced+0x154>
 8003504:	e3a00009 	mov	r0, #9
 8003508:	e28ddff2 	add	sp, sp, #968	; 0x3c8
 800350c:	e8bd47f0 	pop	{r4, r5, r6, r7, r8, r9, sl, lr}
 8003510:	e12fff1e 	bx	lr
 8003514:	e1a00004 	mov	r0, r4
 8003518:	e59d1048 	ldr	r1, [sp, #72]	; 0x48
 800351c:	ebffff8b 	bl	8003350 <_Unwind_DebugHook>
 8003520:	e28d000c 	add	r0, sp, #12
 8003524:	eb000303 	bl	8004138 <__restore_core_regs>

08003528 <_Unwind_GetCFA>:
 8003528:	e5900044 	ldr	r0, [r0, #68]	; 0x44
 800352c:	e12fff1e 	bx	lr

08003530 <__gnu_Unwind_RaiseException>:
 8003530:	e92d40f0 	push	{r4, r5, r6, r7, lr}
 8003534:	e3e05000 	mvn	r5, #0
 8003538:	e591303c 	ldr	r3, [r1, #60]	; 0x3c
 800353c:	e5813040 	str	r3, [r1, #64]	; 0x40
 8003540:	e281e004 	add	lr, r1, #4
 8003544:	e24ddf79 	sub	sp, sp, #484	; 0x1e4
 8003548:	e1a07001 	mov	r7, r1
 800354c:	e1a04000 	mov	r4, r0
 8003550:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
 8003554:	e28dc004 	add	ip, sp, #4
 8003558:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
 800355c:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
 8003560:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
 8003564:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
 8003568:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
 800356c:	e89e000f 	ldm	lr, {r0, r1, r2, r3}
 8003570:	e28d6e1e 	add	r6, sp, #480	; 0x1e0
 8003574:	e88c000f 	stm	ip, {r0, r1, r2, r3}
 8003578:	e52651e0 	str	r5, [r6, #-480]!	; 0xfffffe20
 800357c:	ea000007 	b	80035a0 <__gnu_Unwind_RaiseException+0x70>
 8003580:	e1a01004 	mov	r1, r4
 8003584:	e1a02006 	mov	r2, r6
 8003588:	e594c010 	ldr	ip, [r4, #16]
 800358c:	e1a0e00f 	mov	lr, pc
 8003590:	e12fff1c 	bx	ip
 8003594:	e3500008 	cmp	r0, #8
 8003598:	e1a05000 	mov	r5, r0
 800359c:	1a000008 	bne	80035c4 <__gnu_Unwind_RaiseException+0x94>
 80035a0:	e1a00004 	mov	r0, r4
 80035a4:	e59d1040 	ldr	r1, [sp, #64]	; 0x40
 80035a8:	ebfffef5 	bl	8003184 <get_eit_entry>
 80035ac:	e3500000 	cmp	r0, #0
 80035b0:	0afffff2 	beq	8003580 <__gnu_Unwind_RaiseException+0x50>
 80035b4:	e3a00009 	mov	r0, #9
 80035b8:	e28ddf79 	add	sp, sp, #484	; 0x1e4
 80035bc:	e8bd40f0 	pop	{r4, r5, r6, r7, lr}
 80035c0:	e12fff1e 	bx	lr
 80035c4:	e1a00006 	mov	r0, r6
 80035c8:	ebffff39 	bl	80032b4 <restore_non_core_regs>
 80035cc:	e3550006 	cmp	r5, #6
 80035d0:	1afffff7 	bne	80035b4 <__gnu_Unwind_RaiseException+0x84>
 80035d4:	e1a00004 	mov	r0, r4
 80035d8:	e1a01007 	mov	r1, r7
 80035dc:	ebffff5c 	bl	8003354 <unwind_phase2>

080035e0 <__gnu_Unwind_ForcedUnwind>:
 80035e0:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 80035e4:	e593e03c 	ldr	lr, [r3, #60]	; 0x3c
 80035e8:	e580100c 	str	r1, [r0, #12]
 80035ec:	e5802018 	str	r2, [r0, #24]
 80035f0:	e1a01003 	mov	r1, r3
 80035f4:	e583e040 	str	lr, [r3, #64]	; 0x40
 80035f8:	e3a02000 	mov	r2, #0
 80035fc:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 8003600:	eaffff6e 	b	80033c0 <unwind_phase2_forced>

08003604 <__gnu_Unwind_Resume>:
 8003604:	e92d4070 	push	{r4, r5, r6, lr}
 8003608:	e590600c 	ldr	r6, [r0, #12]
 800360c:	e5903014 	ldr	r3, [r0, #20]
 8003610:	e3560000 	cmp	r6, #0
 8003614:	e1a04000 	mov	r4, r0
 8003618:	e1a05001 	mov	r5, r1
 800361c:	e5813040 	str	r3, [r1, #64]	; 0x40
 8003620:	0a000002 	beq	8003630 <__gnu_Unwind_Resume+0x2c>
 8003624:	e3a02001 	mov	r2, #1
 8003628:	ebffff64 	bl	80033c0 <unwind_phase2_forced>
 800362c:	eb000466 	bl	80047cc <abort>
 8003630:	e3a00002 	mov	r0, #2
 8003634:	e1a01004 	mov	r1, r4
 8003638:	e1a02005 	mov	r2, r5
 800363c:	e594c010 	ldr	ip, [r4, #16]
 8003640:	e1a0e00f 	mov	lr, pc
 8003644:	e12fff1c 	bx	ip
 8003648:	e3500007 	cmp	r0, #7
 800364c:	0a000004 	beq	8003664 <__gnu_Unwind_Resume+0x60>
 8003650:	e3500008 	cmp	r0, #8
 8003654:	01a00004 	moveq	r0, r4
 8003658:	01a01005 	moveq	r1, r5
 800365c:	0bffff3c 	bleq	8003354 <unwind_phase2>
 8003660:	eb000459 	bl	80047cc <abort>
 8003664:	e1a00006 	mov	r0, r6
 8003668:	e5951040 	ldr	r1, [r5, #64]	; 0x40
 800366c:	ebffff37 	bl	8003350 <_Unwind_DebugHook>
 8003670:	e2850004 	add	r0, r5, #4
 8003674:	eb0002af 	bl	8004138 <__restore_core_regs>

08003678 <__gnu_Unwind_Resume_or_Rethrow>:
 8003678:	e590300c 	ldr	r3, [r0, #12]
 800367c:	e3530000 	cmp	r3, #0
 8003680:	1591c03c 	ldrne	ip, [r1, #60]	; 0x3c
 8003684:	13a02000 	movne	r2, #0
 8003688:	1581c040 	strne	ip, [r1, #64]	; 0x40
 800368c:	1affff4b 	bne	80033c0 <unwind_phase2_forced>
 8003690:	eaffffa6 	b	8003530 <__gnu_Unwind_RaiseException>

08003694 <_Unwind_Complete>:
 8003694:	e12fff1e 	bx	lr

08003698 <_Unwind_DeleteException>:
 8003698:	e5903008 	ldr	r3, [r0, #8]
 800369c:	e3530000 	cmp	r3, #0
 80036a0:	012fff1e 	bxeq	lr
 80036a4:	e1a01000 	mov	r1, r0
 80036a8:	e3a00001 	mov	r0, #1
 80036ac:	e12fff13 	bx	r3

080036b0 <_Unwind_VRS_Get>:
 80036b0:	e3510004 	cmp	r1, #4
 80036b4:	979ff101 	ldrls	pc, [pc, r1, lsl #2]
 80036b8:	ea000009 	b	80036e4 <_Unwind_VRS_Get+0x34>
 80036bc:	080036d0 	.word	0x080036d0
 80036c0:	080036ec 	.word	0x080036ec
 80036c4:	080036e4 	.word	0x080036e4
 80036c8:	080036ec 	.word	0x080036ec
 80036cc:	080036ec 	.word	0x080036ec
 80036d0:	e352000f 	cmp	r2, #15
 80036d4:	93530000 	cmpls	r3, #0
 80036d8:	13a03001 	movne	r3, #1
 80036dc:	03a03000 	moveq	r3, #0
 80036e0:	0a000003 	beq	80036f4 <_Unwind_VRS_Get+0x44>
 80036e4:	e3a00002 	mov	r0, #2
 80036e8:	e12fff1e 	bx	lr
 80036ec:	e3a00001 	mov	r0, #1
 80036f0:	e12fff1e 	bx	lr
 80036f4:	e0802102 	add	r2, r0, r2, lsl #2
 80036f8:	e5922004 	ldr	r2, [r2, #4]
 80036fc:	e1a00003 	mov	r0, r3
 8003700:	e59d3000 	ldr	r3, [sp]
 8003704:	e5832000 	str	r2, [r3]
 8003708:	e12fff1e 	bx	lr

0800370c <_Unwind_GetGR>:
 800370c:	e1a02001 	mov	r2, r1
 8003710:	e3a01000 	mov	r1, #0
 8003714:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 8003718:	e24dd014 	sub	sp, sp, #20
 800371c:	e28dc00c 	add	ip, sp, #12
 8003720:	e1a03001 	mov	r3, r1
 8003724:	e58dc000 	str	ip, [sp]
 8003728:	ebffffe0 	bl	80036b0 <_Unwind_VRS_Get>
 800372c:	e59d000c 	ldr	r0, [sp, #12]
 8003730:	e28dd014 	add	sp, sp, #20
 8003734:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 8003738:	e12fff1e 	bx	lr

0800373c <_Unwind_VRS_Set>:
 800373c:	e3510004 	cmp	r1, #4
 8003740:	979ff101 	ldrls	pc, [pc, r1, lsl #2]
 8003744:	ea000009 	b	8003770 <_Unwind_VRS_Set+0x34>
 8003748:	0800375c 	.word	0x0800375c
 800374c:	08003778 	.word	0x08003778
 8003750:	08003770 	.word	0x08003770
 8003754:	08003778 	.word	0x08003778
 8003758:	08003778 	.word	0x08003778
 800375c:	e352000f 	cmp	r2, #15
 8003760:	93530000 	cmpls	r3, #0
 8003764:	13a03001 	movne	r3, #1
 8003768:	03a03000 	moveq	r3, #0
 800376c:	0a000003 	beq	8003780 <_Unwind_VRS_Set+0x44>
 8003770:	e3a00002 	mov	r0, #2
 8003774:	e12fff1e 	bx	lr
 8003778:	e3a00001 	mov	r0, #1
 800377c:	e12fff1e 	bx	lr
 8003780:	e59d1000 	ldr	r1, [sp]
 8003784:	e5911000 	ldr	r1, [r1]
 8003788:	e0802102 	add	r2, r0, r2, lsl #2
 800378c:	e5821004 	str	r1, [r2, #4]
 8003790:	e1a00003 	mov	r0, r3
 8003794:	e12fff1e 	bx	lr

08003798 <_Unwind_SetGR>:
 8003798:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 800379c:	e1a0e001 	mov	lr, r1
 80037a0:	e3a01000 	mov	r1, #0
 80037a4:	e24dd014 	sub	sp, sp, #20
 80037a8:	e28dc010 	add	ip, sp, #16
 80037ac:	e52c2004 	str	r2, [ip, #-4]!
 80037b0:	e1a03001 	mov	r3, r1
 80037b4:	e58dc000 	str	ip, [sp]
 80037b8:	e1a0200e 	mov	r2, lr
 80037bc:	ebffffde 	bl	800373c <_Unwind_VRS_Set>
 80037c0:	e28dd014 	add	sp, sp, #20
 80037c4:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 80037c8:	e12fff1e 	bx	lr

080037cc <__gnu_Unwind_Backtrace>:
 80037cc:	e92d4070 	push	{r4, r5, r6, lr}
 80037d0:	e3e04000 	mvn	r4, #0
 80037d4:	e592303c 	ldr	r3, [r2, #60]	; 0x3c
 80037d8:	e5823040 	str	r3, [r2, #64]	; 0x40
 80037dc:	e282c004 	add	ip, r2, #4
 80037e0:	e24ddf8e 	sub	sp, sp, #568	; 0x238
 80037e4:	e1a06000 	mov	r6, r0
 80037e8:	e1a05001 	mov	r5, r1
 80037ec:	e8bc000f 	ldm	ip!, {r0, r1, r2, r3}
 80037f0:	e28de05c 	add	lr, sp, #92	; 0x5c
 80037f4:	e8ae000f 	stmia	lr!, {r0, r1, r2, r3}
 80037f8:	e8bc000f 	ldm	ip!, {r0, r1, r2, r3}
 80037fc:	e8ae000f 	stmia	lr!, {r0, r1, r2, r3}
 8003800:	e8bc000f 	ldm	ip!, {r0, r1, r2, r3}
 8003804:	e8ae000f 	stmia	lr!, {r0, r1, r2, r3}
 8003808:	e89c000f 	ldm	ip, {r0, r1, r2, r3}
 800380c:	e88e000f 	stm	lr, {r0, r1, r2, r3}
 8003810:	e58d4058 	str	r4, [sp, #88]	; 0x58
 8003814:	ea000013 	b	8003868 <__gnu_Unwind_Backtrace+0x9c>
 8003818:	e28d0058 	add	r0, sp, #88	; 0x58
 800381c:	e3a0100c 	mov	r1, #12
 8003820:	e1a0200d 	mov	r2, sp
 8003824:	ebffffdb 	bl	8003798 <_Unwind_SetGR>
 8003828:	e28d0058 	add	r0, sp, #88	; 0x58
 800382c:	e1a01005 	mov	r1, r5
 8003830:	e1a0e00f 	mov	lr, pc
 8003834:	e12fff16 	bx	r6
 8003838:	e3500000 	cmp	r0, #0
 800383c:	1a00000e 	bne	800387c <__gnu_Unwind_Backtrace+0xb0>
 8003840:	e3a00008 	mov	r0, #8
 8003844:	e1a0100d 	mov	r1, sp
 8003848:	e28d2058 	add	r2, sp, #88	; 0x58
 800384c:	e59dc010 	ldr	ip, [sp, #16]
 8003850:	e1a0e00f 	mov	lr, pc
 8003854:	e12fff1c 	bx	ip
 8003858:	e2403005 	sub	r3, r0, #5
 800385c:	e31300fb 	tst	r3, #251	; 0xfb
 8003860:	e1a04000 	mov	r4, r0
 8003864:	0a000005 	beq	8003880 <__gnu_Unwind_Backtrace+0xb4>
 8003868:	e1a0000d 	mov	r0, sp
 800386c:	e59d1098 	ldr	r1, [sp, #152]	; 0x98
 8003870:	ebfffe43 	bl	8003184 <get_eit_entry>
 8003874:	e3500000 	cmp	r0, #0
 8003878:	0affffe6 	beq	8003818 <__gnu_Unwind_Backtrace+0x4c>
 800387c:	e3a04009 	mov	r4, #9
 8003880:	e28d0058 	add	r0, sp, #88	; 0x58
 8003884:	ebfffe8a 	bl	80032b4 <restore_non_core_regs>
 8003888:	e1a00004 	mov	r0, r4
 800388c:	e28ddf8e 	add	sp, sp, #568	; 0x238
 8003890:	e8bd4070 	pop	{r4, r5, r6, lr}
 8003894:	e12fff1e 	bx	lr

08003898 <__gnu_unwind_pr_common>:
 8003898:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800389c:	e591604c 	ldr	r6, [r1, #76]	; 0x4c
 80038a0:	e1a05001 	mov	r5, r1
 80038a4:	e5961000 	ldr	r1, [r6]
 80038a8:	e24dd024 	sub	sp, sp, #36	; 0x24
 80038ac:	e2866004 	add	r6, r6, #4
 80038b0:	e2537000 	subs	r7, r3, #0
 80038b4:	e58d0004 	str	r0, [sp, #4]
 80038b8:	e1a09002 	mov	r9, r2
 80038bc:	e58d1014 	str	r1, [sp, #20]
 80038c0:	e58d6018 	str	r6, [sp, #24]
 80038c4:	e2008003 	and	r8, r0, #3
 80038c8:	1a000076 	bne	8003aa8 <__gnu_unwind_pr_common+0x210>
 80038cc:	e3a03003 	mov	r3, #3
 80038d0:	e1a01401 	lsl	r1, r1, #8
 80038d4:	e58d1014 	str	r1, [sp, #20]
 80038d8:	e5cd701d 	strb	r7, [sp, #29]
 80038dc:	e5cd301c 	strb	r3, [sp, #28]
 80038e0:	e5953050 	ldr	r3, [r5, #80]	; 0x50
 80038e4:	e3580002 	cmp	r8, #2
 80038e8:	05956038 	ldreq	r6, [r5, #56]	; 0x38
 80038ec:	e2133001 	ands	r3, r3, #1
 80038f0:	1a000061 	bne	8003a7c <__gnu_unwind_pr_common+0x1e4>
 80038f4:	e58d3000 	str	r3, [sp]
 80038f8:	e2853058 	add	r3, r5, #88	; 0x58
 80038fc:	e58d3008 	str	r3, [sp, #8]
 8003900:	e5964000 	ldr	r4, [r6]
 8003904:	e3540000 	cmp	r4, #0
 8003908:	0a00005d 	beq	8003a84 <__gnu_unwind_pr_common+0x1ec>
 800390c:	e3570002 	cmp	r7, #2
 8003910:	0596b004 	ldreq	fp, [r6, #4]
 8003914:	11d6b0b2 	ldrhne	fp, [r6, #2]
 8003918:	e5953048 	ldr	r3, [r5, #72]	; 0x48
 800391c:	e3cba001 	bic	sl, fp, #1
 8003920:	e1a00009 	mov	r0, r9
 8003924:	e3a0100f 	mov	r1, #15
 8003928:	11d640b0 	ldrhne	r4, [r6]
 800392c:	02866008 	addeq	r6, r6, #8
 8003930:	12866004 	addne	r6, r6, #4
 8003934:	e08aa003 	add	sl, sl, r3
 8003938:	ebffff73 	bl	800370c <_Unwind_GetGR>
 800393c:	e15a0000 	cmp	sl, r0
 8003940:	e20bb001 	and	fp, fp, #1
 8003944:	8a00003c 	bhi	8003a3c <__gnu_unwind_pr_common+0x1a4>
 8003948:	e3c43001 	bic	r3, r4, #1
 800394c:	e08aa003 	add	sl, sl, r3
 8003950:	e150000a 	cmp	r0, sl
 8003954:	2a000038 	bcs	8003a3c <__gnu_unwind_pr_common+0x1a4>
 8003958:	e2044001 	and	r4, r4, #1
 800395c:	e184408b 	orr	r4, r4, fp, lsl #1
 8003960:	e3540001 	cmp	r4, #1
 8003964:	0a00005e 	beq	8003ae4 <__gnu_unwind_pr_common+0x24c>
 8003968:	3a000059 	bcc	8003ad4 <__gnu_unwind_pr_common+0x23c>
 800396c:	e3540002 	cmp	r4, #2
 8003970:	1a000048 	bne	8003a98 <__gnu_unwind_pr_common+0x200>
 8003974:	e5963000 	ldr	r3, [r6]
 8003978:	e3580000 	cmp	r8, #0
 800397c:	e3c34102 	bic	r4, r3, #-2147483648	; 0x80000000
 8003980:	1a000090 	bne	8003bc8 <__gnu_unwind_pr_common+0x330>
 8003984:	e59d2004 	ldr	r2, [sp, #4]
 8003988:	e3120008 	tst	r2, #8
 800398c:	03a02001 	moveq	r2, #1
 8003990:	13a02000 	movne	r2, #0
 8003994:	e3540000 	cmp	r4, #0
 8003998:	03822001 	orreq	r2, r2, #1
 800399c:	e3520000 	cmp	r2, #0
 80039a0:	0a000030 	beq	8003a68 <__gnu_unwind_pr_common+0x1d0>
 80039a4:	e3540000 	cmp	r4, #0
 80039a8:	0a00001a 	beq	8003a18 <__gnu_unwind_pr_common+0x180>
 80039ac:	e1a0a007 	mov	sl, r7
 80039b0:	e286b004 	add	fp, r6, #4
 80039b4:	e1a07004 	mov	r7, r4
 80039b8:	e58d800c 	str	r8, [sp, #12]
 80039bc:	e59d4008 	ldr	r4, [sp, #8]
 80039c0:	ea000003 	b	80039d4 <__gnu_unwind_pr_common+0x13c>
 80039c4:	e1530007 	cmp	r3, r7
 80039c8:	e1a08003 	mov	r8, r3
 80039cc:	e28bb004 	add	fp, fp, #4
 80039d0:	0a000010 	beq	8003a18 <__gnu_unwind_pr_common+0x180>
 80039d4:	e1a0000b 	mov	r0, fp
 80039d8:	e58d4010 	str	r4, [sp, #16]
 80039dc:	ebfffe54 	bl	8003334 <_Unwind_decode_typeinfo_ptr.isra.0>
 80039e0:	e28d3010 	add	r3, sp, #16
 80039e4:	e1a01000 	mov	r1, r0
 80039e8:	e3a02000 	mov	r2, #0
 80039ec:	e1a00005 	mov	r0, r5
 80039f0:	e320f000 	nop	{0}
 80039f4:	e3500000 	cmp	r0, #0
 80039f8:	e2883001 	add	r3, r8, #1
 80039fc:	0afffff0 	beq	80039c4 <__gnu_unwind_pr_common+0x12c>
 8003a00:	e1a04007 	mov	r4, r7
 8003a04:	e1a0700a 	mov	r7, sl
 8003a08:	e1a0a008 	mov	sl, r8
 8003a0c:	e15a0004 	cmp	sl, r4
 8003a10:	e59d800c 	ldr	r8, [sp, #12]
 8003a14:	1a000071 	bne	8003be0 <__gnu_unwind_pr_common+0x348>
 8003a18:	e1a00009 	mov	r0, r9
 8003a1c:	e3a0100d 	mov	r1, #13
 8003a20:	ebffff39 	bl	800370c <_Unwind_GetGR>
 8003a24:	e59d3010 	ldr	r3, [sp, #16]
 8003a28:	e5850020 	str	r0, [r5, #32]
 8003a2c:	e5856028 	str	r6, [r5, #40]	; 0x28
 8003a30:	e5853024 	str	r3, [r5, #36]	; 0x24
 8003a34:	e3a00006 	mov	r0, #6
 8003a38:	ea000017 	b	8003a9c <__gnu_unwind_pr_common+0x204>
 8003a3c:	e2044001 	and	r4, r4, #1
 8003a40:	e184408b 	orr	r4, r4, fp, lsl #1
 8003a44:	e3540001 	cmp	r4, #1
 8003a48:	0a000044 	beq	8003b60 <__gnu_unwind_pr_common+0x2c8>
 8003a4c:	3a000022 	bcc	8003adc <__gnu_unwind_pr_common+0x244>
 8003a50:	e3540002 	cmp	r4, #2
 8003a54:	1a00000f 	bne	8003a98 <__gnu_unwind_pr_common+0x200>
 8003a58:	e5963000 	ldr	r3, [r6]
 8003a5c:	e3580000 	cmp	r8, #0
 8003a60:	e3c34102 	bic	r4, r3, #-2147483648	; 0x80000000
 8003a64:	1a000057 	bne	8003bc8 <__gnu_unwind_pr_common+0x330>
 8003a68:	e3530000 	cmp	r3, #0
 8003a6c:	b2866004 	addlt	r6, r6, #4
 8003a70:	e2844001 	add	r4, r4, #1
 8003a74:	e0866104 	add	r6, r6, r4, lsl #2
 8003a78:	eaffffa0 	b	8003900 <__gnu_unwind_pr_common+0x68>
 8003a7c:	e3a03000 	mov	r3, #0
 8003a80:	e58d3000 	str	r3, [sp]
 8003a84:	e3570002 	cmp	r7, #2
 8003a88:	da000038 	ble	8003b70 <__gnu_unwind_pr_common+0x2d8>
 8003a8c:	ebfffe2d 	bl	8003348 <__gnu_unwind_24bit.isra.1>
 8003a90:	e3500000 	cmp	r0, #0
 8003a94:	0a00003a 	beq	8003b84 <__gnu_unwind_pr_common+0x2ec>
 8003a98:	e3a00009 	mov	r0, #9
 8003a9c:	e28dd024 	add	sp, sp, #36	; 0x24
 8003aa0:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8003aa4:	e12fff1e 	bx	lr
 8003aa8:	e3570002 	cmp	r7, #2
 8003aac:	caffff8b 	bgt	80038e0 <__gnu_unwind_pr_common+0x48>
 8003ab0:	e3a02002 	mov	r2, #2
 8003ab4:	e1a03821 	lsr	r3, r1, #16
 8003ab8:	e5cd301d 	strb	r3, [sp, #29]
 8003abc:	e1a01801 	lsl	r1, r1, #16
 8003ac0:	e20330ff 	and	r3, r3, #255	; 0xff
 8003ac4:	e58d1014 	str	r1, [sp, #20]
 8003ac8:	e5cd201c 	strb	r2, [sp, #28]
 8003acc:	e0866103 	add	r6, r6, r3, lsl #2
 8003ad0:	eaffff82 	b	80038e0 <__gnu_unwind_pr_common+0x48>
 8003ad4:	e3580000 	cmp	r8, #0
 8003ad8:	1a000070 	bne	8003ca0 <__gnu_unwind_pr_common+0x408>
 8003adc:	e2866004 	add	r6, r6, #4
 8003ae0:	eaffff86 	b	8003900 <__gnu_unwind_pr_common+0x68>
 8003ae4:	e3580000 	cmp	r8, #0
 8003ae8:	1a00003e 	bne	8003be8 <__gnu_unwind_pr_common+0x350>
 8003aec:	e896000c 	ldm	r6, {r2, r3}
 8003af0:	e3730002 	cmn	r3, #2
 8003af4:	e1a04fa2 	lsr	r4, r2, #31
 8003af8:	0affffe6 	beq	8003a98 <__gnu_unwind_pr_common+0x200>
 8003afc:	e3730001 	cmn	r3, #1
 8003b00:	e59d3008 	ldr	r3, [sp, #8]
 8003b04:	e58d3010 	str	r3, [sp, #16]
 8003b08:	0a00005b 	beq	8003c7c <__gnu_unwind_pr_common+0x3e4>
 8003b0c:	e2860004 	add	r0, r6, #4
 8003b10:	ebfffe07 	bl	8003334 <_Unwind_decode_typeinfo_ptr.isra.0>
 8003b14:	e1a02004 	mov	r2, r4
 8003b18:	e1a01000 	mov	r1, r0
 8003b1c:	e28d3010 	add	r3, sp, #16
 8003b20:	e1a00005 	mov	r0, r5
 8003b24:	e320f000 	nop	{0}
 8003b28:	e3500000 	cmp	r0, #0
 8003b2c:	0a00000d 	beq	8003b68 <__gnu_unwind_pr_common+0x2d0>
 8003b30:	e1a04000 	mov	r4, r0
 8003b34:	e3a0100d 	mov	r1, #13
 8003b38:	e1a00009 	mov	r0, r9
 8003b3c:	ebfffef2 	bl	800370c <_Unwind_GetGR>
 8003b40:	e3540002 	cmp	r4, #2
 8003b44:	e5850020 	str	r0, [r5, #32]
 8003b48:	1a00004f 	bne	8003c8c <__gnu_unwind_pr_common+0x3f4>
 8003b4c:	e1a03005 	mov	r3, r5
 8003b50:	e59d2010 	ldr	r2, [sp, #16]
 8003b54:	e5a3202c 	str	r2, [r3, #44]!	; 0x2c
 8003b58:	e5853024 	str	r3, [r5, #36]	; 0x24
 8003b5c:	ea00004c 	b	8003c94 <__gnu_unwind_pr_common+0x3fc>
 8003b60:	e3580000 	cmp	r8, #0
 8003b64:	1a00001f 	bne	8003be8 <__gnu_unwind_pr_common+0x350>
 8003b68:	e2866008 	add	r6, r6, #8
 8003b6c:	eaffff63 	b	8003900 <__gnu_unwind_pr_common+0x68>
 8003b70:	e1a00009 	mov	r0, r9
 8003b74:	e28d1014 	add	r1, sp, #20
 8003b78:	eb0001ff 	bl	800437c <__gnu_unwind_execute>
 8003b7c:	e3500000 	cmp	r0, #0
 8003b80:	1affffc4 	bne	8003a98 <__gnu_unwind_pr_common+0x200>
 8003b84:	e59d3000 	ldr	r3, [sp]
 8003b88:	e3530000 	cmp	r3, #0
 8003b8c:	03a00008 	moveq	r0, #8
 8003b90:	0affffc1 	beq	8003a9c <__gnu_unwind_pr_common+0x204>
 8003b94:	e3a0100f 	mov	r1, #15
 8003b98:	e1a00009 	mov	r0, r9
 8003b9c:	ebfffeda 	bl	800370c <_Unwind_GetGR>
 8003ba0:	e3a0100e 	mov	r1, #14
 8003ba4:	e1a02000 	mov	r2, r0
 8003ba8:	e1a00009 	mov	r0, r9
 8003bac:	ebfffef9 	bl	8003798 <_Unwind_SetGR>
 8003bb0:	e1a00009 	mov	r0, r9
 8003bb4:	e3a0100f 	mov	r1, #15
 8003bb8:	e59f2128 	ldr	r2, [pc, #296]	; 8003ce8 <__gnu_unwind_pr_common+0x450>
 8003bbc:	ebfffef5 	bl	8003798 <_Unwind_SetGR>
 8003bc0:	e3a00007 	mov	r0, #7
 8003bc4:	eaffffb4 	b	8003a9c <__gnu_unwind_pr_common+0x204>
 8003bc8:	e1a00009 	mov	r0, r9
 8003bcc:	e3a0100d 	mov	r1, #13
 8003bd0:	e595a020 	ldr	sl, [r5, #32]
 8003bd4:	ebfffecc 	bl	800370c <_Unwind_GetGR>
 8003bd8:	e15a0000 	cmp	sl, r0
 8003bdc:	0a000016 	beq	8003c3c <__gnu_unwind_pr_common+0x3a4>
 8003be0:	e5963000 	ldr	r3, [r6]
 8003be4:	eaffff9f 	b	8003a68 <__gnu_unwind_pr_common+0x1d0>
 8003be8:	e1a00009 	mov	r0, r9
 8003bec:	e3a0100d 	mov	r1, #13
 8003bf0:	e5954020 	ldr	r4, [r5, #32]
 8003bf4:	ebfffec4 	bl	800370c <_Unwind_GetGR>
 8003bf8:	e1540000 	cmp	r4, r0
 8003bfc:	1affffd9 	bne	8003b68 <__gnu_unwind_pr_common+0x2d0>
 8003c00:	e5953028 	ldr	r3, [r5, #40]	; 0x28
 8003c04:	e1560003 	cmp	r6, r3
 8003c08:	1affffd6 	bne	8003b68 <__gnu_unwind_pr_common+0x2d0>
 8003c0c:	e1a00006 	mov	r0, r6
 8003c10:	ebfffd12 	bl	8003060 <selfrel_offset31>
 8003c14:	e3a0100f 	mov	r1, #15
 8003c18:	e1a02000 	mov	r2, r0
 8003c1c:	e1a00009 	mov	r0, r9
 8003c20:	ebfffedc 	bl	8003798 <_Unwind_SetGR>
 8003c24:	e1a00009 	mov	r0, r9
 8003c28:	e1a02005 	mov	r2, r5
 8003c2c:	e3a01000 	mov	r1, #0
 8003c30:	ebfffed8 	bl	8003798 <_Unwind_SetGR>
 8003c34:	e3a00007 	mov	r0, #7
 8003c38:	eaffff97 	b	8003a9c <__gnu_unwind_pr_common+0x204>
 8003c3c:	e5953028 	ldr	r3, [r5, #40]	; 0x28
 8003c40:	e1560003 	cmp	r6, r3
 8003c44:	1affffe5 	bne	8003be0 <__gnu_unwind_pr_common+0x348>
 8003c48:	e3a02000 	mov	r2, #0
 8003c4c:	e585202c 	str	r2, [r5, #44]	; 0x2c
 8003c50:	e3a02004 	mov	r2, #4
 8003c54:	e2863004 	add	r3, r6, #4
 8003c58:	e5854028 	str	r4, [r5, #40]	; 0x28
 8003c5c:	e5852030 	str	r2, [r5, #48]	; 0x30
 8003c60:	e5853034 	str	r3, [r5, #52]	; 0x34
 8003c64:	e5963000 	ldr	r3, [r6]
 8003c68:	e3530000 	cmp	r3, #0
 8003c6c:	ba00001a 	blt	8003cdc <__gnu_unwind_pr_common+0x444>
 8003c70:	e3a03001 	mov	r3, #1
 8003c74:	e58d3000 	str	r3, [sp]
 8003c78:	eaffff7c 	b	8003a70 <__gnu_unwind_pr_common+0x1d8>
 8003c7c:	e1a00009 	mov	r0, r9
 8003c80:	e3a0100d 	mov	r1, #13
 8003c84:	ebfffea0 	bl	800370c <_Unwind_GetGR>
 8003c88:	e5850020 	str	r0, [r5, #32]
 8003c8c:	e59d3010 	ldr	r3, [sp, #16]
 8003c90:	e5853024 	str	r3, [r5, #36]	; 0x24
 8003c94:	e5856028 	str	r6, [r5, #40]	; 0x28
 8003c98:	e3a00006 	mov	r0, #6
 8003c9c:	eaffff7e 	b	8003a9c <__gnu_unwind_pr_common+0x204>
 8003ca0:	e1a00006 	mov	r0, r6
 8003ca4:	ebfffced 	bl	8003060 <selfrel_offset31>
 8003ca8:	e2866004 	add	r6, r6, #4
 8003cac:	e1a04000 	mov	r4, r0
 8003cb0:	e5856038 	str	r6, [r5, #56]	; 0x38
 8003cb4:	e1a00005 	mov	r0, r5
 8003cb8:	e320f000 	nop	{0}
 8003cbc:	e3500000 	cmp	r0, #0
 8003cc0:	0affff74 	beq	8003a98 <__gnu_unwind_pr_common+0x200>
 8003cc4:	e1a00009 	mov	r0, r9
 8003cc8:	e1a02004 	mov	r2, r4
 8003ccc:	e3a0100f 	mov	r1, #15
 8003cd0:	ebfffeb0 	bl	8003798 <_Unwind_SetGR>
 8003cd4:	e3a00007 	mov	r0, #7
 8003cd8:	eaffff6f 	b	8003a9c <__gnu_unwind_pr_common+0x204>
 8003cdc:	e2840001 	add	r0, r4, #1
 8003ce0:	e0860100 	add	r0, r6, r0, lsl #2
 8003ce4:	eaffffc9 	b	8003c10 <__gnu_unwind_pr_common+0x378>
 8003ce8:	00000000 	.word	0x00000000

08003cec <__aeabi_unwind_cpp_pr0>:
 8003cec:	e3a03000 	mov	r3, #0
 8003cf0:	eafffee8 	b	8003898 <__gnu_unwind_pr_common>

08003cf4 <__aeabi_unwind_cpp_pr1>:
 8003cf4:	e3a03001 	mov	r3, #1
 8003cf8:	eafffee6 	b	8003898 <__gnu_unwind_pr_common>

08003cfc <__aeabi_unwind_cpp_pr2>:
 8003cfc:	e3a03002 	mov	r3, #2
 8003d00:	eafffee4 	b	8003898 <__gnu_unwind_pr_common>

08003d04 <_Unwind_VRS_Pop>:
 8003d04:	e92d43f0 	push	{r4, r5, r6, r7, r8, r9, lr}
 8003d08:	e1a04000 	mov	r4, r0
 8003d0c:	e24ddf45 	sub	sp, sp, #276	; 0x114
 8003d10:	e3510004 	cmp	r1, #4
 8003d14:	979ff101 	ldrls	pc, [pc, r1, lsl #2]
 8003d18:	ea000006 	b	8003d38 <_Unwind_VRS_Pop+0x34>
 8003d1c:	08003f18 	.word	0x08003f18
 8003d20:	08003db0 	.word	0x08003db0
 8003d24:	08003d38 	.word	0x08003d38
 8003d28:	08003d30 	.word	0x08003d30
 8003d2c:	08003d48 	.word	0x08003d48
 8003d30:	e3530003 	cmp	r3, #3
 8003d34:	0a00009c 	beq	8003fac <_Unwind_VRS_Pop+0x2a8>
 8003d38:	e3a00002 	mov	r0, #2
 8003d3c:	e28ddf45 	add	sp, sp, #276	; 0x114
 8003d40:	e8bd43f0 	pop	{r4, r5, r6, r7, r8, r9, lr}
 8003d44:	e12fff1e 	bx	lr
 8003d48:	e3520010 	cmp	r2, #16
 8003d4c:	93530000 	cmpls	r3, #0
 8003d50:	1afffff8 	bne	8003d38 <_Unwind_VRS_Pop+0x34>
 8003d54:	e5903000 	ldr	r3, [r0]
 8003d58:	e3130010 	tst	r3, #16
 8003d5c:	1a0000b1 	bne	8004028 <_Unwind_VRS_Pop+0x324>
 8003d60:	e28d5088 	add	r5, sp, #136	; 0x88
 8003d64:	e1a00005 	mov	r0, r5
 8003d68:	e58d2004 	str	r2, [sp, #4]
 8003d6c:	eb00012b 	bl	8004220 <__gnu_Unwind_Save_WMMXC>
 8003d70:	e3a03000 	mov	r3, #0
 8003d74:	e3a00001 	mov	r0, #1
 8003d78:	e5941038 	ldr	r1, [r4, #56]	; 0x38
 8003d7c:	e59d2004 	ldr	r2, [sp, #4]
 8003d80:	e012c310 	ands	ip, r2, r0, lsl r3
 8003d84:	1591c000 	ldrne	ip, [r1]
 8003d88:	1785c103 	strne	ip, [r5, r3, lsl #2]
 8003d8c:	e2833001 	add	r3, r3, #1
 8003d90:	12811004 	addne	r1, r1, #4
 8003d94:	e3530004 	cmp	r3, #4
 8003d98:	1afffff8 	bne	8003d80 <_Unwind_VRS_Pop+0x7c>
 8003d9c:	e1a00005 	mov	r0, r5
 8003da0:	e5841038 	str	r1, [r4, #56]	; 0x38
 8003da4:	eb000118 	bl	800420c <__gnu_Unwind_Restore_WMMXC>
 8003da8:	e3a00000 	mov	r0, #0
 8003dac:	eaffffe2 	b	8003d3c <_Unwind_VRS_Pop+0x38>
 8003db0:	e20310fb 	and	r1, r3, #251	; 0xfb
 8003db4:	e3510001 	cmp	r1, #1
 8003db8:	1affffde 	bne	8003d38 <_Unwind_VRS_Pop+0x34>
 8003dbc:	e1a06802 	lsl	r6, r2, #16
 8003dc0:	e1a06826 	lsr	r6, r6, #16
 8003dc4:	e1a08822 	lsr	r8, r2, #16
 8003dc8:	e3530001 	cmp	r3, #1
 8003dcc:	e0861008 	add	r1, r6, r8
 8003dd0:	0a000063 	beq	8003f64 <_Unwind_VRS_Pop+0x260>
 8003dd4:	e3510020 	cmp	r1, #32
 8003dd8:	8affffd6 	bhi	8003d38 <_Unwind_VRS_Pop+0x34>
 8003ddc:	e358000f 	cmp	r8, #15
 8003de0:	9a000096 	bls	8004040 <_Unwind_VRS_Pop+0x33c>
 8003de4:	e1a07006 	mov	r7, r6
 8003de8:	e3570000 	cmp	r7, #0
 8003dec:	13530005 	cmpne	r3, #5
 8003df0:	13a09001 	movne	r9, #1
 8003df4:	03a09000 	moveq	r9, #0
 8003df8:	1affffce 	bne	8003d38 <_Unwind_VRS_Pop+0x34>
 8003dfc:	e358000f 	cmp	r8, #15
 8003e00:	8a000096 	bhi	8004060 <_Unwind_VRS_Pop+0x35c>
 8003e04:	e5942000 	ldr	r2, [r4]
 8003e08:	e3120001 	tst	r2, #1
 8003e0c:	0a000093 	beq	8004060 <_Unwind_VRS_Pop+0x35c>
 8003e10:	e3530005 	cmp	r3, #5
 8003e14:	e3c23001 	bic	r3, r2, #1
 8003e18:	e5843000 	str	r3, [r4]
 8003e1c:	0a0000bb 	beq	8004110 <_Unwind_VRS_Pop+0x40c>
 8003e20:	e1a00004 	mov	r0, r4
 8003e24:	e3c22003 	bic	r2, r2, #3
 8003e28:	e4802048 	str	r2, [r0], #72	; 0x48
 8003e2c:	eb0000ca 	bl	800415c <__gnu_Unwind_Save_VFP>
 8003e30:	e3570000 	cmp	r7, #0
 8003e34:	0a000099 	beq	80040a0 <_Unwind_VRS_Pop+0x39c>
 8003e38:	e5943000 	ldr	r3, [r4]
 8003e3c:	e3130004 	tst	r3, #4
 8003e40:	1a0000ad 	bne	80040fc <_Unwind_VRS_Pop+0x3f8>
 8003e44:	e3590000 	cmp	r9, #0
 8003e48:	1a0000b7 	bne	800412c <_Unwind_VRS_Pop+0x428>
 8003e4c:	e358000f 	cmp	r8, #15
 8003e50:	8a000004 	bhi	8003e68 <_Unwind_VRS_Pop+0x164>
 8003e54:	e28d5088 	add	r5, sp, #136	; 0x88
 8003e58:	e1a00005 	mov	r0, r5
 8003e5c:	eb0000c2 	bl	800416c <__gnu_Unwind_Save_VFP_D>
 8003e60:	e3570000 	cmp	r7, #0
 8003e64:	0a00009b 	beq	80040d8 <_Unwind_VRS_Pop+0x3d4>
 8003e68:	e28d0008 	add	r0, sp, #8
 8003e6c:	eb0000c2 	bl	800417c <__gnu_Unwind_Save_VFP_D_16_to_31>
 8003e70:	e2683010 	rsb	r3, r8, #16
 8003e74:	e3530000 	cmp	r3, #0
 8003e78:	e5941038 	ldr	r1, [r4, #56]	; 0x38
 8003e7c:	da00000d 	ble	8003eb8 <_Unwind_VRS_Pop+0x1b4>
 8003e80:	e28d5088 	add	r5, sp, #136	; 0x88
 8003e84:	e1a00001 	mov	r0, r1
 8003e88:	e1a0e083 	lsl	lr, r3, #1
 8003e8c:	e0852188 	add	r2, r5, r8, lsl #3
 8003e90:	e2422004 	sub	r2, r2, #4
 8003e94:	e24e3001 	sub	r3, lr, #1
 8003e98:	e2433001 	sub	r3, r3, #1
 8003e9c:	e490c004 	ldr	ip, [r0], #4
 8003ea0:	e3730001 	cmn	r3, #1
 8003ea4:	e5a2c004 	str	ip, [r2, #4]!
 8003ea8:	1afffffa 	bne	8003e98 <_Unwind_VRS_Pop+0x194>
 8003eac:	e3570000 	cmp	r7, #0
 8003eb0:	e081110e 	add	r1, r1, lr, lsl #2
 8003eb4:	0a00000d 	beq	8003ef0 <_Unwind_VRS_Pop+0x1ec>
 8003eb8:	e3580010 	cmp	r8, #16
 8003ebc:	21a02008 	movcs	r2, r8
 8003ec0:	33a02010 	movcc	r2, #16
 8003ec4:	e28d3e11 	add	r3, sp, #272	; 0x110
 8003ec8:	e0832182 	add	r2, r3, r2, lsl #3
 8003ecc:	e2422f62 	sub	r2, r2, #392	; 0x188
 8003ed0:	e1a00087 	lsl	r0, r7, #1
 8003ed4:	e1a03001 	mov	r3, r1
 8003ed8:	e2422004 	sub	r2, r2, #4
 8003edc:	e0811100 	add	r1, r1, r0, lsl #2
 8003ee0:	e4930004 	ldr	r0, [r3], #4
 8003ee4:	e1530001 	cmp	r3, r1
 8003ee8:	e5a20004 	str	r0, [r2, #4]!
 8003eec:	1afffffb 	bne	8003ee0 <_Unwind_VRS_Pop+0x1dc>
 8003ef0:	e3590000 	cmp	r9, #0
 8003ef4:	1a00007b 	bne	80040e8 <_Unwind_VRS_Pop+0x3e4>
 8003ef8:	e358000f 	cmp	r8, #15
 8003efc:	e5841038 	str	r1, [r4, #56]	; 0x38
 8003f00:	9a00007a 	bls	80040f0 <_Unwind_VRS_Pop+0x3ec>
 8003f04:	e3570000 	cmp	r7, #0
 8003f08:	128d0008 	addne	r0, sp, #8
 8003f0c:	1b000098 	blne	8004174 <__gnu_Unwind_Restore_VFP_D_16_to_31>
 8003f10:	e3a00000 	mov	r0, #0
 8003f14:	eaffff88 	b	8003d3c <_Unwind_VRS_Pop+0x38>
 8003f18:	e3530000 	cmp	r3, #0
 8003f1c:	1affff85 	bne	8003d38 <_Unwind_VRS_Pop+0x34>
 8003f20:	e3a0e001 	mov	lr, #1
 8003f24:	e1a00802 	lsl	r0, r2, #16
 8003f28:	e594c038 	ldr	ip, [r4, #56]	; 0x38
 8003f2c:	e1a00820 	lsr	r0, r0, #16
 8003f30:	e2841004 	add	r1, r4, #4
 8003f34:	e010531e 	ands	r5, r0, lr, lsl r3
 8003f38:	159c5000 	ldrne	r5, [ip]
 8003f3c:	e2833001 	add	r3, r3, #1
 8003f40:	15815000 	strne	r5, [r1]
 8003f44:	128cc004 	addne	ip, ip, #4
 8003f48:	e3530010 	cmp	r3, #16
 8003f4c:	e2811004 	add	r1, r1, #4
 8003f50:	1afffff7 	bne	8003f34 <_Unwind_VRS_Pop+0x230>
 8003f54:	e2120a02 	ands	r0, r2, #8192	; 0x2000
 8003f58:	0584c038 	streq	ip, [r4, #56]	; 0x38
 8003f5c:	0affff76 	beq	8003d3c <_Unwind_VRS_Pop+0x38>
 8003f60:	eaffffea 	b	8003f10 <_Unwind_VRS_Pop+0x20c>
 8003f64:	e3510010 	cmp	r1, #16
 8003f68:	8affff72 	bhi	8003d38 <_Unwind_VRS_Pop+0x34>
 8003f6c:	e358000f 	cmp	r8, #15
 8003f70:	91a09003 	movls	r9, r3
 8003f74:	8affff6f 	bhi	8003d38 <_Unwind_VRS_Pop+0x34>
 8003f78:	e5942000 	ldr	r2, [r4]
 8003f7c:	e3120001 	tst	r2, #1
 8003f80:	0a000046 	beq	80040a0 <_Unwind_VRS_Pop+0x39c>
 8003f84:	e3530005 	cmp	r3, #5
 8003f88:	e3c23001 	bic	r3, r2, #1
 8003f8c:	e5843000 	str	r3, [r4]
 8003f90:	e3a07000 	mov	r7, #0
 8003f94:	1affffa1 	bne	8003e20 <_Unwind_VRS_Pop+0x11c>
 8003f98:	e1a00004 	mov	r0, r4
 8003f9c:	e3833002 	orr	r3, r3, #2
 8003fa0:	e4803048 	str	r3, [r0], #72	; 0x48
 8003fa4:	eb000070 	bl	800416c <__gnu_Unwind_Save_VFP_D>
 8003fa8:	eaffffa9 	b	8003e54 <_Unwind_VRS_Pop+0x150>
 8003fac:	e1a07802 	lsl	r7, r2, #16
 8003fb0:	e1a07827 	lsr	r7, r7, #16
 8003fb4:	e1a06822 	lsr	r6, r2, #16
 8003fb8:	e0873006 	add	r3, r7, r6
 8003fbc:	e3530010 	cmp	r3, #16
 8003fc0:	8affff5c 	bhi	8003d38 <_Unwind_VRS_Pop+0x34>
 8003fc4:	e5903000 	ldr	r3, [r0]
 8003fc8:	e3130008 	tst	r3, #8
 8003fcc:	1a00001f 	bne	8004050 <_Unwind_VRS_Pop+0x34c>
 8003fd0:	e28d5088 	add	r5, sp, #136	; 0x88
 8003fd4:	e1a07087 	lsl	r7, r7, #1
 8003fd8:	e1a00005 	mov	r0, r5
 8003fdc:	eb000079 	bl	80041c8 <__gnu_Unwind_Save_WMMXD>
 8003fe0:	e3570000 	cmp	r7, #0
 8003fe4:	e0852186 	add	r2, r5, r6, lsl #3
 8003fe8:	e2473001 	sub	r3, r7, #1
 8003fec:	e594c038 	ldr	ip, [r4, #56]	; 0x38
 8003ff0:	0a000007 	beq	8004014 <_Unwind_VRS_Pop+0x310>
 8003ff4:	e1a0100c 	mov	r1, ip
 8003ff8:	e2422004 	sub	r2, r2, #4
 8003ffc:	e2433001 	sub	r3, r3, #1
 8004000:	e4910004 	ldr	r0, [r1], #4
 8004004:	e3730001 	cmn	r3, #1
 8004008:	e5a20004 	str	r0, [r2, #4]!
 800400c:	1afffffa 	bne	8003ffc <_Unwind_VRS_Pop+0x2f8>
 8004010:	e08cc107 	add	ip, ip, r7, lsl #2
 8004014:	e1a00005 	mov	r0, r5
 8004018:	e584c038 	str	ip, [r4, #56]	; 0x38
 800401c:	eb000058 	bl	8004184 <__gnu_Unwind_Restore_WMMXD>
 8004020:	e3a00000 	mov	r0, #0
 8004024:	eaffff44 	b	8003d3c <_Unwind_VRS_Pop+0x38>
 8004028:	e3c33010 	bic	r3, r3, #16
 800402c:	e48031d0 	str	r3, [r0], #464	; 0x1d0
 8004030:	e58d2004 	str	r2, [sp, #4]
 8004034:	eb000079 	bl	8004220 <__gnu_Unwind_Save_WMMXC>
 8004038:	e59d2004 	ldr	r2, [sp, #4]
 800403c:	eaffff47 	b	8003d60 <_Unwind_VRS_Pop+0x5c>
 8004040:	e3510010 	cmp	r1, #16
 8004044:	9a000013 	bls	8004098 <_Unwind_VRS_Pop+0x394>
 8004048:	e2417010 	sub	r7, r1, #16
 800404c:	eaffff65 	b	8003de8 <_Unwind_VRS_Pop+0xe4>
 8004050:	e3c33008 	bic	r3, r3, #8
 8004054:	e4803150 	str	r3, [r0], #336	; 0x150
 8004058:	eb00005a 	bl	80041c8 <__gnu_Unwind_Save_WMMXD>
 800405c:	eaffffdb 	b	8003fd0 <_Unwind_VRS_Pop+0x2cc>
 8004060:	e3570000 	cmp	r7, #0
 8004064:	1affff73 	bne	8003e38 <_Unwind_VRS_Pop+0x134>
 8004068:	e358000f 	cmp	r8, #15
 800406c:	93a09000 	movls	r9, #0
 8004070:	91a07009 	movls	r7, r9
 8004074:	9affff76 	bls	8003e54 <_Unwind_VRS_Pop+0x150>
 8004078:	e3a09000 	mov	r9, #0
 800407c:	e3560000 	cmp	r6, #0
 8004080:	e1a03006 	mov	r3, r6
 8004084:	e5941038 	ldr	r1, [r4, #56]	; 0x38
 8004088:	11a07009 	movne	r7, r9
 800408c:	1affff7b 	bne	8003e80 <_Unwind_VRS_Pop+0x17c>
 8004090:	e1a07006 	mov	r7, r6
 8004094:	eaffff97 	b	8003ef8 <_Unwind_VRS_Pop+0x1f4>
 8004098:	e3a09000 	mov	r9, #0
 800409c:	eaffffb5 	b	8003f78 <_Unwind_VRS_Pop+0x274>
 80040a0:	e3590000 	cmp	r9, #0
 80040a4:	0affffef 	beq	8004068 <_Unwind_VRS_Pop+0x364>
 80040a8:	e28d5088 	add	r5, sp, #136	; 0x88
 80040ac:	e1a00005 	mov	r0, r5
 80040b0:	eb000029 	bl	800415c <__gnu_Unwind_Save_VFP>
 80040b4:	e2563000 	subs	r3, r6, #0
 80040b8:	e5941038 	ldr	r1, [r4, #56]	; 0x38
 80040bc:	13a07000 	movne	r7, #0
 80040c0:	1affff6f 	bne	8003e84 <_Unwind_VRS_Pop+0x180>
 80040c4:	e2811004 	add	r1, r1, #4
 80040c8:	e5841038 	str	r1, [r4, #56]	; 0x38
 80040cc:	e1a00005 	mov	r0, r5
 80040d0:	eb00001f 	bl	8004154 <__gnu_Unwind_Restore_VFP>
 80040d4:	eaffff8d 	b	8003f10 <_Unwind_VRS_Pop+0x20c>
 80040d8:	e2563000 	subs	r3, r6, #0
 80040dc:	e5941038 	ldr	r1, [r4, #56]	; 0x38
 80040e0:	1affff67 	bne	8003e84 <_Unwind_VRS_Pop+0x180>
 80040e4:	eaffff81 	b	8003ef0 <_Unwind_VRS_Pop+0x1ec>
 80040e8:	e28d5088 	add	r5, sp, #136	; 0x88
 80040ec:	eafffff4 	b	80040c4 <_Unwind_VRS_Pop+0x3c0>
 80040f0:	e28d0088 	add	r0, sp, #136	; 0x88
 80040f4:	eb00001a 	bl	8004164 <__gnu_Unwind_Restore_VFP_D>
 80040f8:	eaffff81 	b	8003f04 <_Unwind_VRS_Pop+0x200>
 80040fc:	e1a00004 	mov	r0, r4
 8004100:	e3c33004 	bic	r3, r3, #4
 8004104:	e48030d0 	str	r3, [r0], #208	; 0xd0
 8004108:	eb00001b 	bl	800417c <__gnu_Unwind_Save_VFP_D_16_to_31>
 800410c:	eaffff4c 	b	8003e44 <_Unwind_VRS_Pop+0x140>
 8004110:	e1a00004 	mov	r0, r4
 8004114:	e3833002 	orr	r3, r3, #2
 8004118:	e4803048 	str	r3, [r0], #72	; 0x48
 800411c:	eb000012 	bl	800416c <__gnu_Unwind_Save_VFP_D>
 8004120:	e3570000 	cmp	r7, #0
 8004124:	1affff43 	bne	8003e38 <_Unwind_VRS_Pop+0x134>
 8004128:	eaffff49 	b	8003e54 <_Unwind_VRS_Pop+0x150>
 800412c:	e28d0088 	add	r0, sp, #136	; 0x88
 8004130:	eb000009 	bl	800415c <__gnu_Unwind_Save_VFP>
 8004134:	eaffff4d 	b	8003e70 <_Unwind_VRS_Pop+0x16c>

08004138 <__restore_core_regs>:
 8004138:	e2801034 	add	r1, r0, #52	; 0x34
 800413c:	e8910038 	ldm	r1, {r3, r4, r5}
 8004140:	e1a02005 	mov	r2, r5
 8004144:	e92d001c 	push	{r2, r3, r4}
 8004148:	e8900fff 	ldm	r0, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp}
 800414c:	e89d7000 	ldm	sp, {ip, sp, lr}
 8004150:	e12fff1c 	bx	ip

08004154 <__gnu_Unwind_Restore_VFP>:
 8004154:	ec900b21 	fldmiax	r0, {d0-d15}	;@ Deprecated
 8004158:	e12fff1e 	bx	lr

0800415c <__gnu_Unwind_Save_VFP>:
 800415c:	ec800b21 	fstmiax	r0, {d0-d15}	;@ Deprecated
 8004160:	e12fff1e 	bx	lr

08004164 <__gnu_Unwind_Restore_VFP_D>:
 8004164:	ec900b20 	vldmia	r0, {d0-d15}
 8004168:	e12fff1e 	bx	lr

0800416c <__gnu_Unwind_Save_VFP_D>:
 800416c:	ec800b20 	vstmia	r0, {d0-d15}
 8004170:	e12fff1e 	bx	lr

08004174 <__gnu_Unwind_Restore_VFP_D_16_to_31>:
 8004174:	ecd00b20 	vldmia	r0, {d16-d31}
 8004178:	e12fff1e 	bx	lr

0800417c <__gnu_Unwind_Save_VFP_D_16_to_31>:
 800417c:	ecc00b20 	vstmia	r0, {d16-d31}
 8004180:	e12fff1e 	bx	lr

08004184 <__gnu_Unwind_Restore_WMMXD>:
 8004184:	ecf00102 	ldfe	f0, [r0], #8
 8004188:	ecf01102 	ldfe	f1, [r0], #8
 800418c:	ecf02102 	ldfe	f2, [r0], #8
 8004190:	ecf03102 	ldfe	f3, [r0], #8
 8004194:	ecf04102 	ldfe	f4, [r0], #8
 8004198:	ecf05102 	ldfe	f5, [r0], #8
 800419c:	ecf06102 	ldfe	f6, [r0], #8
 80041a0:	ecf07102 	ldfe	f7, [r0], #8
 80041a4:	ecf08102 	ldfp	f0, [r0], #8
 80041a8:	ecf09102 	ldfp	f1, [r0], #8
 80041ac:	ecf0a102 	ldfp	f2, [r0], #8
 80041b0:	ecf0b102 	ldfp	f3, [r0], #8
 80041b4:	ecf0c102 	ldfp	f4, [r0], #8
 80041b8:	ecf0d102 	ldfp	f5, [r0], #8
 80041bc:	ecf0e102 	ldfp	f6, [r0], #8
 80041c0:	ecf0f102 	ldfp	f7, [r0], #8
 80041c4:	e12fff1e 	bx	lr

080041c8 <__gnu_Unwind_Save_WMMXD>:
 80041c8:	ece00102 	stfe	f0, [r0], #8
 80041cc:	ece01102 	stfe	f1, [r0], #8
 80041d0:	ece02102 	stfe	f2, [r0], #8
 80041d4:	ece03102 	stfe	f3, [r0], #8
 80041d8:	ece04102 	stfe	f4, [r0], #8
 80041dc:	ece05102 	stfe	f5, [r0], #8
 80041e0:	ece06102 	stfe	f6, [r0], #8
 80041e4:	ece07102 	stfe	f7, [r0], #8
 80041e8:	ece08102 	stfp	f0, [r0], #8
 80041ec:	ece09102 	stfp	f1, [r0], #8
 80041f0:	ece0a102 	stfp	f2, [r0], #8
 80041f4:	ece0b102 	stfp	f3, [r0], #8
 80041f8:	ece0c102 	stfp	f4, [r0], #8
 80041fc:	ece0d102 	stfp	f5, [r0], #8
 8004200:	ece0e102 	stfp	f6, [r0], #8
 8004204:	ece0f102 	stfp	f7, [r0], #8
 8004208:	e12fff1e 	bx	lr

0800420c <__gnu_Unwind_Restore_WMMXC>:
 800420c:	fcb08101 	ldc2	1, cr8, [r0], #4
 8004210:	fcb09101 	ldc2	1, cr9, [r0], #4
 8004214:	fcb0a101 	ldc2	1, cr10, [r0], #4
 8004218:	fcb0b101 	ldc2	1, cr11, [r0], #4
 800421c:	e12fff1e 	bx	lr

08004220 <__gnu_Unwind_Save_WMMXC>:
 8004220:	fca08101 	stc2	1, cr8, [r0], #4
 8004224:	fca09101 	stc2	1, cr9, [r0], #4
 8004228:	fca0a101 	stc2	1, cr10, [r0], #4
 800422c:	fca0b101 	stc2	1, cr11, [r0], #4
 8004230:	e12fff1e 	bx	lr

08004234 <_Unwind_RaiseException>:
 8004234:	e92de000 	push	{sp, lr, pc}
 8004238:	e92d1fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
 800423c:	e3a03000 	mov	r3, #0
 8004240:	e92d000c 	push	{r2, r3}
 8004244:	e28d1004 	add	r1, sp, #4
 8004248:	ebfffcb8 	bl	8003530 <__gnu_Unwind_RaiseException>
 800424c:	e59de040 	ldr	lr, [sp, #64]	; 0x40
 8004250:	e28dd048 	add	sp, sp, #72	; 0x48
 8004254:	e12fff1e 	bx	lr

08004258 <_Unwind_Resume>:
 8004258:	e92de000 	push	{sp, lr, pc}
 800425c:	e92d1fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
 8004260:	e3a03000 	mov	r3, #0
 8004264:	e92d000c 	push	{r2, r3}
 8004268:	e28d1004 	add	r1, sp, #4
 800426c:	ebfffce4 	bl	8003604 <__gnu_Unwind_Resume>
 8004270:	e59de040 	ldr	lr, [sp, #64]	; 0x40
 8004274:	e28dd048 	add	sp, sp, #72	; 0x48
 8004278:	e12fff1e 	bx	lr

0800427c <_Unwind_Resume_or_Rethrow>:
 800427c:	e92de000 	push	{sp, lr, pc}
 8004280:	e92d1fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
 8004284:	e3a03000 	mov	r3, #0
 8004288:	e92d000c 	push	{r2, r3}
 800428c:	e28d1004 	add	r1, sp, #4
 8004290:	ebfffcf8 	bl	8003678 <__gnu_Unwind_Resume_or_Rethrow>
 8004294:	e59de040 	ldr	lr, [sp, #64]	; 0x40
 8004298:	e28dd048 	add	sp, sp, #72	; 0x48
 800429c:	e12fff1e 	bx	lr

080042a0 <_Unwind_ForcedUnwind>:
 80042a0:	e92de000 	push	{sp, lr, pc}
 80042a4:	e92d1fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
 80042a8:	e3a03000 	mov	r3, #0
 80042ac:	e92d000c 	push	{r2, r3}
 80042b0:	e28d3004 	add	r3, sp, #4
 80042b4:	ebfffcc9 	bl	80035e0 <__gnu_Unwind_ForcedUnwind>
 80042b8:	e59de040 	ldr	lr, [sp, #64]	; 0x40
 80042bc:	e28dd048 	add	sp, sp, #72	; 0x48
 80042c0:	e12fff1e 	bx	lr

080042c4 <_Unwind_Backtrace>:
 80042c4:	e92de000 	push	{sp, lr, pc}
 80042c8:	e92d1fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
 80042cc:	e3a03000 	mov	r3, #0
 80042d0:	e92d000c 	push	{r2, r3}
 80042d4:	e28d2004 	add	r2, sp, #4
 80042d8:	ebfffd3b 	bl	80037cc <__gnu_Unwind_Backtrace>
 80042dc:	e59de040 	ldr	lr, [sp, #64]	; 0x40
 80042e0:	e28dd048 	add	sp, sp, #72	; 0x48
 80042e4:	e12fff1e 	bx	lr

080042e8 <next_unwind_byte>:
 80042e8:	e5d03008 	ldrb	r3, [r0, #8]
 80042ec:	e3530000 	cmp	r3, #0
 80042f0:	1a000004 	bne	8004308 <next_unwind_byte+0x20>
 80042f4:	e5d03009 	ldrb	r3, [r0, #9]
 80042f8:	e3530000 	cmp	r3, #0
 80042fc:	1a000008 	bne	8004324 <next_unwind_byte+0x3c>
 8004300:	e3a000b0 	mov	r0, #176	; 0xb0
 8004304:	e12fff1e 	bx	lr
 8004308:	e2433001 	sub	r3, r3, #1
 800430c:	e5c03008 	strb	r3, [r0, #8]
 8004310:	e5903000 	ldr	r3, [r0]
 8004314:	e1a02403 	lsl	r2, r3, #8
 8004318:	e5802000 	str	r2, [r0]
 800431c:	e1a00c23 	lsr	r0, r3, #24
 8004320:	e12fff1e 	bx	lr
 8004324:	e3a01003 	mov	r1, #3
 8004328:	e5902004 	ldr	r2, [r0, #4]
 800432c:	e2433001 	sub	r3, r3, #1
 8004330:	e5c03009 	strb	r3, [r0, #9]
 8004334:	e282c004 	add	ip, r2, #4
 8004338:	e5923000 	ldr	r3, [r2]
 800433c:	e580c004 	str	ip, [r0, #4]
 8004340:	e5c01008 	strb	r1, [r0, #8]
 8004344:	eafffff2 	b	8004314 <next_unwind_byte+0x2c>

08004348 <_Unwind_GetGR.constprop.0>:
 8004348:	e3a01000 	mov	r1, #0
 800434c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 8004350:	e24dd014 	sub	sp, sp, #20
 8004354:	e28d200c 	add	r2, sp, #12
 8004358:	e58d2000 	str	r2, [sp]
 800435c:	e1a03001 	mov	r3, r1
 8004360:	e3a0200c 	mov	r2, #12
 8004364:	ebfffcd1 	bl	80036b0 <_Unwind_VRS_Get>
 8004368:	e59d000c 	ldr	r0, [sp, #12]
 800436c:	e28dd014 	add	sp, sp, #20
 8004370:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 8004374:	e12fff1e 	bx	lr

08004378 <unwind_UCB_from_context>:
 8004378:	eafffff2 	b	8004348 <_Unwind_GetGR.constprop.0>

0800437c <__gnu_unwind_execute>:
 800437c:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
 8004380:	e1a07000 	mov	r7, r0
 8004384:	e1a05001 	mov	r5, r1
 8004388:	e3a08000 	mov	r8, #0
 800438c:	e24dd010 	sub	sp, sp, #16
 8004390:	e1a00005 	mov	r0, r5
 8004394:	ebffffd3 	bl	80042e8 <next_unwind_byte>
 8004398:	e35000b0 	cmp	r0, #176	; 0xb0
 800439c:	e1a04000 	mov	r4, r0
 80043a0:	0a00007d 	beq	800459c <__gnu_unwind_execute+0x220>
 80043a4:	e2101080 	ands	r1, r0, #128	; 0x80
 80043a8:	0a00001a 	beq	8004418 <__gnu_unwind_execute+0x9c>
 80043ac:	e20030f0 	and	r3, r0, #240	; 0xf0
 80043b0:	e3530080 	cmp	r3, #128	; 0x80
 80043b4:	0a000054 	beq	800450c <__gnu_unwind_execute+0x190>
 80043b8:	e3530090 	cmp	r3, #144	; 0x90
 80043bc:	0a00002b 	beq	8004470 <__gnu_unwind_execute+0xf4>
 80043c0:	e35300a0 	cmp	r3, #160	; 0xa0
 80043c4:	0a000034 	beq	800449c <__gnu_unwind_execute+0x120>
 80043c8:	e35300b0 	cmp	r3, #176	; 0xb0
 80043cc:	0a000040 	beq	80044d4 <__gnu_unwind_execute+0x158>
 80043d0:	e35300c0 	cmp	r3, #192	; 0xc0
 80043d4:	0a00005e 	beq	8004554 <__gnu_unwind_execute+0x1d8>
 80043d8:	e20030f8 	and	r3, r0, #248	; 0xf8
 80043dc:	e35300d0 	cmp	r3, #208	; 0xd0
 80043e0:	1a000008 	bne	8004408 <__gnu_unwind_execute+0x8c>
 80043e4:	e2002007 	and	r2, r0, #7
 80043e8:	e2822001 	add	r2, r2, #1
 80043ec:	e3822702 	orr	r2, r2, #524288	; 0x80000
 80043f0:	e1a00007 	mov	r0, r7
 80043f4:	e3a01001 	mov	r1, #1
 80043f8:	e3a03005 	mov	r3, #5
 80043fc:	ebfffe40 	bl	8003d04 <_Unwind_VRS_Pop>
 8004400:	e3500000 	cmp	r0, #0
 8004404:	0affffe1 	beq	8004390 <__gnu_unwind_execute+0x14>
 8004408:	e3a00009 	mov	r0, #9
 800440c:	e28dd010 	add	sp, sp, #16
 8004410:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
 8004414:	e12fff1e 	bx	lr
 8004418:	e28d300c 	add	r3, sp, #12
 800441c:	e1a06100 	lsl	r6, r0, #2
 8004420:	e58d3000 	str	r3, [sp]
 8004424:	e1a00007 	mov	r0, r7
 8004428:	e1a03001 	mov	r3, r1
 800442c:	e3a0200d 	mov	r2, #13
 8004430:	ebfffc9e 	bl	80036b0 <_Unwind_VRS_Get>
 8004434:	e20660ff 	and	r6, r6, #255	; 0xff
 8004438:	e59d300c 	ldr	r3, [sp, #12]
 800443c:	e2866004 	add	r6, r6, #4
 8004440:	e3140040 	tst	r4, #64	; 0x40
 8004444:	10666003 	rsbne	r6, r6, r3
 8004448:	00836006 	addeq	r6, r3, r6
 800444c:	e58d600c 	str	r6, [sp, #12]
 8004450:	e3a01000 	mov	r1, #0
 8004454:	e28d300c 	add	r3, sp, #12
 8004458:	e58d3000 	str	r3, [sp]
 800445c:	e1a00007 	mov	r0, r7
 8004460:	e1a03001 	mov	r3, r1
 8004464:	e3a0200d 	mov	r2, #13
 8004468:	ebfffcb3 	bl	800373c <_Unwind_VRS_Set>
 800446c:	eaffffc7 	b	8004390 <__gnu_unwind_execute+0x14>
 8004470:	e200300d 	and	r3, r0, #13
 8004474:	e353000d 	cmp	r3, #13
 8004478:	0affffe2 	beq	8004408 <__gnu_unwind_execute+0x8c>
 800447c:	e3a01000 	mov	r1, #0
 8004480:	e28d300c 	add	r3, sp, #12
 8004484:	e58d3000 	str	r3, [sp]
 8004488:	e200200f 	and	r2, r0, #15
 800448c:	e1a03001 	mov	r3, r1
 8004490:	e1a00007 	mov	r0, r7
 8004494:	ebfffc85 	bl	80036b0 <_Unwind_VRS_Get>
 8004498:	eaffffec 	b	8004450 <__gnu_unwind_execute+0xd4>
 800449c:	e1e02000 	mvn	r2, r0
 80044a0:	e3a03eff 	mov	r3, #4080	; 0xff0
 80044a4:	e3a01000 	mov	r1, #0
 80044a8:	e2022007 	and	r2, r2, #7
 80044ac:	e1a02253 	asr	r2, r3, r2
 80044b0:	e3100008 	tst	r0, #8
 80044b4:	e0022003 	and	r2, r2, r3
 80044b8:	13822901 	orrne	r2, r2, #16384	; 0x4000
 80044bc:	e1a03001 	mov	r3, r1
 80044c0:	e1a00007 	mov	r0, r7
 80044c4:	ebfffe0e 	bl	8003d04 <_Unwind_VRS_Pop>
 80044c8:	e3500000 	cmp	r0, #0
 80044cc:	1affffcd 	bne	8004408 <__gnu_unwind_execute+0x8c>
 80044d0:	eaffffae 	b	8004390 <__gnu_unwind_execute+0x14>
 80044d4:	e35000b1 	cmp	r0, #177	; 0xb1
 80044d8:	0a000041 	beq	80045e4 <__gnu_unwind_execute+0x268>
 80044dc:	e35000b2 	cmp	r0, #178	; 0xb2
 80044e0:	0a00004b 	beq	8004614 <__gnu_unwind_execute+0x298>
 80044e4:	e35000b3 	cmp	r0, #179	; 0xb3
 80044e8:	0a00006b 	beq	800469c <__gnu_unwind_execute+0x320>
 80044ec:	e20030fc 	and	r3, r0, #252	; 0xfc
 80044f0:	e35300b4 	cmp	r3, #180	; 0xb4
 80044f4:	0affffc3 	beq	8004408 <__gnu_unwind_execute+0x8c>
 80044f8:	e3a01001 	mov	r1, #1
 80044fc:	e2002007 	and	r2, r0, #7
 8004500:	e0822001 	add	r2, r2, r1
 8004504:	e3822702 	orr	r2, r2, #524288	; 0x80000
 8004508:	eaffffeb 	b	80044bc <__gnu_unwind_execute+0x140>
 800450c:	e1a00005 	mov	r0, r5
 8004510:	ebffff74 	bl	80042e8 <next_unwind_byte>
 8004514:	e1a04404 	lsl	r4, r4, #8
 8004518:	e1804004 	orr	r4, r0, r4
 800451c:	e3540902 	cmp	r4, #32768	; 0x8000
 8004520:	0affffb8 	beq	8004408 <__gnu_unwind_execute+0x8c>
 8004524:	e3a01000 	mov	r1, #0
 8004528:	e1a02a04 	lsl	r2, r4, #20
 800452c:	e1a03001 	mov	r3, r1
 8004530:	e1a02822 	lsr	r2, r2, #16
 8004534:	e1a00007 	mov	r0, r7
 8004538:	ebfffdf1 	bl	8003d04 <_Unwind_VRS_Pop>
 800453c:	e3500000 	cmp	r0, #0
 8004540:	e1a04204 	lsl	r4, r4, #4
 8004544:	1affffaf 	bne	8004408 <__gnu_unwind_execute+0x8c>
 8004548:	e3140902 	tst	r4, #32768	; 0x8000
 800454c:	13a08001 	movne	r8, #1
 8004550:	eaffff8e 	b	8004390 <__gnu_unwind_execute+0x14>
 8004554:	e35000c6 	cmp	r0, #198	; 0xc6
 8004558:	0a000057 	beq	80046bc <__gnu_unwind_execute+0x340>
 800455c:	e35000c7 	cmp	r0, #199	; 0xc7
 8004560:	0a00005d 	beq	80046dc <__gnu_unwind_execute+0x360>
 8004564:	e20030f8 	and	r3, r0, #248	; 0xf8
 8004568:	e35300c0 	cmp	r3, #192	; 0xc0
 800456c:	0a000066 	beq	800470c <__gnu_unwind_execute+0x390>
 8004570:	e35000c8 	cmp	r0, #200	; 0xc8
 8004574:	0a000069 	beq	8004720 <__gnu_unwind_execute+0x3a4>
 8004578:	e35000c9 	cmp	r0, #201	; 0xc9
 800457c:	1affffa1 	bne	8004408 <__gnu_unwind_execute+0x8c>
 8004580:	e1a00005 	mov	r0, r5
 8004584:	ebffff57 	bl	80042e8 <next_unwind_byte>
 8004588:	e200200f 	and	r2, r0, #15
 800458c:	e2822001 	add	r2, r2, #1
 8004590:	e20000f0 	and	r0, r0, #240	; 0xf0
 8004594:	e1822600 	orr	r2, r2, r0, lsl #12
 8004598:	eaffff94 	b	80043f0 <__gnu_unwind_execute+0x74>
 800459c:	e3580000 	cmp	r8, #0
 80045a0:	13a00000 	movne	r0, #0
 80045a4:	1affff98 	bne	800440c <__gnu_unwind_execute+0x90>
 80045a8:	e28d400c 	add	r4, sp, #12
 80045ac:	e1a01008 	mov	r1, r8
 80045b0:	e3a0200e 	mov	r2, #14
 80045b4:	e1a03008 	mov	r3, r8
 80045b8:	e58d4000 	str	r4, [sp]
 80045bc:	e1a00007 	mov	r0, r7
 80045c0:	ebfffc3a 	bl	80036b0 <_Unwind_VRS_Get>
 80045c4:	e58d4000 	str	r4, [sp]
 80045c8:	e1a00007 	mov	r0, r7
 80045cc:	e1a01008 	mov	r1, r8
 80045d0:	e3a0200f 	mov	r2, #15
 80045d4:	e1a03008 	mov	r3, r8
 80045d8:	ebfffc57 	bl	800373c <_Unwind_VRS_Set>
 80045dc:	e1a00008 	mov	r0, r8
 80045e0:	eaffff89 	b	800440c <__gnu_unwind_execute+0x90>
 80045e4:	e1a00005 	mov	r0, r5
 80045e8:	ebffff3e 	bl	80042e8 <next_unwind_byte>
 80045ec:	e2502000 	subs	r2, r0, #0
 80045f0:	0affff84 	beq	8004408 <__gnu_unwind_execute+0x8c>
 80045f4:	e21210f0 	ands	r1, r2, #240	; 0xf0
 80045f8:	1affff82 	bne	8004408 <__gnu_unwind_execute+0x8c>
 80045fc:	e1a00007 	mov	r0, r7
 8004600:	e1a03001 	mov	r3, r1
 8004604:	ebfffdbe 	bl	8003d04 <_Unwind_VRS_Pop>
 8004608:	e3500000 	cmp	r0, #0
 800460c:	1affff7d 	bne	8004408 <__gnu_unwind_execute+0x8c>
 8004610:	eaffff5e 	b	8004390 <__gnu_unwind_execute+0x14>
 8004614:	e3a01000 	mov	r1, #0
 8004618:	e28d300c 	add	r3, sp, #12
 800461c:	e58d3000 	str	r3, [sp]
 8004620:	e3a0200d 	mov	r2, #13
 8004624:	e1a03001 	mov	r3, r1
 8004628:	e1a00007 	mov	r0, r7
 800462c:	ebfffc1f 	bl	80036b0 <_Unwind_VRS_Get>
 8004630:	e1a00005 	mov	r0, r5
 8004634:	ebffff2b 	bl	80042e8 <next_unwind_byte>
 8004638:	e3100080 	tst	r0, #128	; 0x80
 800463c:	e3a04002 	mov	r4, #2
 8004640:	0a000008 	beq	8004668 <__gnu_unwind_execute+0x2ec>
 8004644:	e59d300c 	ldr	r3, [sp, #12]
 8004648:	e200007f 	and	r0, r0, #127	; 0x7f
 800464c:	e0833410 	add	r3, r3, r0, lsl r4
 8004650:	e1a00005 	mov	r0, r5
 8004654:	e58d300c 	str	r3, [sp, #12]
 8004658:	ebffff22 	bl	80042e8 <next_unwind_byte>
 800465c:	e3100080 	tst	r0, #128	; 0x80
 8004660:	e2844007 	add	r4, r4, #7
 8004664:	1afffff6 	bne	8004644 <__gnu_unwind_execute+0x2c8>
 8004668:	e3a01000 	mov	r1, #0
 800466c:	e59d300c 	ldr	r3, [sp, #12]
 8004670:	e28d200c 	add	r2, sp, #12
 8004674:	e200007f 	and	r0, r0, #127	; 0x7f
 8004678:	e2833f81 	add	r3, r3, #516	; 0x204
 800467c:	e0834410 	add	r4, r3, r0, lsl r4
 8004680:	e58d2000 	str	r2, [sp]
 8004684:	e1a03001 	mov	r3, r1
 8004688:	e1a00007 	mov	r0, r7
 800468c:	e3a0200d 	mov	r2, #13
 8004690:	e58d400c 	str	r4, [sp, #12]
 8004694:	ebfffc28 	bl	800373c <_Unwind_VRS_Set>
 8004698:	eaffff3c 	b	8004390 <__gnu_unwind_execute+0x14>
 800469c:	e1a00005 	mov	r0, r5
 80046a0:	ebffff10 	bl	80042e8 <next_unwind_byte>
 80046a4:	e3a01001 	mov	r1, #1
 80046a8:	e200200f 	and	r2, r0, #15
 80046ac:	e0822001 	add	r2, r2, r1
 80046b0:	e20000f0 	and	r0, r0, #240	; 0xf0
 80046b4:	e1822600 	orr	r2, r2, r0, lsl #12
 80046b8:	eaffff7f 	b	80044bc <__gnu_unwind_execute+0x140>
 80046bc:	e1a00005 	mov	r0, r5
 80046c0:	ebffff08 	bl	80042e8 <next_unwind_byte>
 80046c4:	e200200f 	and	r2, r0, #15
 80046c8:	e2822001 	add	r2, r2, #1
 80046cc:	e20000f0 	and	r0, r0, #240	; 0xf0
 80046d0:	e3a01003 	mov	r1, #3
 80046d4:	e1822600 	orr	r2, r2, r0, lsl #12
 80046d8:	eaffff77 	b	80044bc <__gnu_unwind_execute+0x140>
 80046dc:	e1a00005 	mov	r0, r5
 80046e0:	ebffff00 	bl	80042e8 <next_unwind_byte>
 80046e4:	e2502000 	subs	r2, r0, #0
 80046e8:	0affff46 	beq	8004408 <__gnu_unwind_execute+0x8c>
 80046ec:	e21230f0 	ands	r3, r2, #240	; 0xf0
 80046f0:	1affff44 	bne	8004408 <__gnu_unwind_execute+0x8c>
 80046f4:	e1a00007 	mov	r0, r7
 80046f8:	e3a01004 	mov	r1, #4
 80046fc:	ebfffd80 	bl	8003d04 <_Unwind_VRS_Pop>
 8004700:	e3500000 	cmp	r0, #0
 8004704:	1affff3f 	bne	8004408 <__gnu_unwind_execute+0x8c>
 8004708:	eaffff20 	b	8004390 <__gnu_unwind_execute+0x14>
 800470c:	e200200f 	and	r2, r0, #15
 8004710:	e2822001 	add	r2, r2, #1
 8004714:	e3a01003 	mov	r1, #3
 8004718:	e382280a 	orr	r2, r2, #655360	; 0xa0000
 800471c:	eaffff66 	b	80044bc <__gnu_unwind_execute+0x140>
 8004720:	e1a00005 	mov	r0, r5
 8004724:	ebfffeef 	bl	80042e8 <next_unwind_byte>
 8004728:	e20020f0 	and	r2, r0, #240	; 0xf0
 800472c:	e200300f 	and	r3, r0, #15
 8004730:	e2822010 	add	r2, r2, #16
 8004734:	e2833001 	add	r3, r3, #1
 8004738:	e1832602 	orr	r2, r3, r2, lsl #12
 800473c:	eaffff2b 	b	80043f0 <__gnu_unwind_execute+0x74>

08004740 <__gnu_unwind_frame>:
 8004740:	e3a0c003 	mov	ip, #3
 8004744:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 8004748:	e590304c 	ldr	r3, [r0, #76]	; 0x4c
 800474c:	e24dd014 	sub	sp, sp, #20
 8004750:	e5932004 	ldr	r2, [r3, #4]
 8004754:	e5cdc00c 	strb	ip, [sp, #12]
 8004758:	e5d3c007 	ldrb	ip, [r3, #7]
 800475c:	e1a02402 	lsl	r2, r2, #8
 8004760:	e2833008 	add	r3, r3, #8
 8004764:	e1a00001 	mov	r0, r1
 8004768:	e28d1004 	add	r1, sp, #4
 800476c:	e58d2004 	str	r2, [sp, #4]
 8004770:	e5cdc00d 	strb	ip, [sp, #13]
 8004774:	e58d3008 	str	r3, [sp, #8]
 8004778:	ebfffeff 	bl	800437c <__gnu_unwind_execute>
 800477c:	e28dd014 	add	sp, sp, #20
 8004780:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 8004784:	e12fff1e 	bx	lr

08004788 <_Unwind_GetRegionStart>:
 8004788:	e92d4008 	push	{r3, lr}
 800478c:	ebfffef9 	bl	8004378 <unwind_UCB_from_context>
 8004790:	e8bd4008 	pop	{r3, lr}
 8004794:	e5900048 	ldr	r0, [r0, #72]	; 0x48
 8004798:	e12fff1e 	bx	lr

0800479c <_Unwind_GetLanguageSpecificData>:
 800479c:	e92d4008 	push	{r3, lr}
 80047a0:	ebfffef4 	bl	8004378 <unwind_UCB_from_context>
 80047a4:	e590304c 	ldr	r3, [r0, #76]	; 0x4c
 80047a8:	e5d30007 	ldrb	r0, [r3, #7]
 80047ac:	e0830100 	add	r0, r3, r0, lsl #2
 80047b0:	e2800008 	add	r0, r0, #8
 80047b4:	e8bd4008 	pop	{r3, lr}
 80047b8:	e12fff1e 	bx	lr

080047bc <_Unwind_GetDataRelBase>:
 80047bc:	e92d4008 	push	{r3, lr}
 80047c0:	eb000001 	bl	80047cc <abort>

080047c4 <_Unwind_GetTextRelBase>:
 80047c4:	e92d4008 	push	{r3, lr}
 80047c8:	ebffffff 	bl	80047cc <abort>

080047cc <abort>:
 80047cc:	e92d4008 	push	{r3, lr}
 80047d0:	e3a00006 	mov	r0, #6
 80047d4:	eb000063 	bl	8004968 <raise>
 80047d8:	e3a00001 	mov	r0, #1
 80047dc:	eb000086 	bl	80049fc <_exit>

080047e0 <memcpy>:
 80047e0:	e352000f 	cmp	r2, #15
 80047e4:	e92d4070 	push	{r4, r5, r6, lr}
 80047e8:	9a000029 	bls	8004894 <memcpy+0xb4>
 80047ec:	e1803001 	orr	r3, r0, r1
 80047f0:	e3130003 	tst	r3, #3
 80047f4:	1a000031 	bne	80048c0 <memcpy+0xe0>
 80047f8:	e1a0e002 	mov	lr, r2
 80047fc:	e280c010 	add	ip, r0, #16
 8004800:	e2813010 	add	r3, r1, #16
 8004804:	e5134010 	ldr	r4, [r3, #-16]
 8004808:	e50c4010 	str	r4, [ip, #-16]
 800480c:	e513400c 	ldr	r4, [r3, #-12]
 8004810:	e50c400c 	str	r4, [ip, #-12]
 8004814:	e5134008 	ldr	r4, [r3, #-8]
 8004818:	e50c4008 	str	r4, [ip, #-8]
 800481c:	e24ee010 	sub	lr, lr, #16
 8004820:	e5134004 	ldr	r4, [r3, #-4]
 8004824:	e35e000f 	cmp	lr, #15
 8004828:	e50c4004 	str	r4, [ip, #-4]
 800482c:	e2833010 	add	r3, r3, #16
 8004830:	e28cc010 	add	ip, ip, #16
 8004834:	8afffff2 	bhi	8004804 <memcpy+0x24>
 8004838:	e2423010 	sub	r3, r2, #16
 800483c:	e3c3300f 	bic	r3, r3, #15
 8004840:	e202600f 	and	r6, r2, #15
 8004844:	e2833010 	add	r3, r3, #16
 8004848:	e3560003 	cmp	r6, #3
 800484c:	e0811003 	add	r1, r1, r3
 8004850:	e0803003 	add	r3, r0, r3
 8004854:	9a00001b 	bls	80048c8 <memcpy+0xe8>
 8004858:	e1a04001 	mov	r4, r1
 800485c:	e1a0c006 	mov	ip, r6
 8004860:	e243e004 	sub	lr, r3, #4
 8004864:	e24cc004 	sub	ip, ip, #4
 8004868:	e4945004 	ldr	r5, [r4], #4
 800486c:	e35c0003 	cmp	ip, #3
 8004870:	e5ae5004 	str	r5, [lr, #4]!
 8004874:	8afffffa 	bhi	8004864 <memcpy+0x84>
 8004878:	e246c004 	sub	ip, r6, #4
 800487c:	e3ccc003 	bic	ip, ip, #3
 8004880:	e28cc004 	add	ip, ip, #4
 8004884:	e083300c 	add	r3, r3, ip
 8004888:	e081100c 	add	r1, r1, ip
 800488c:	e2022003 	and	r2, r2, #3
 8004890:	ea000000 	b	8004898 <memcpy+0xb8>
 8004894:	e1a03000 	mov	r3, r0
 8004898:	e3520000 	cmp	r2, #0
 800489c:	0a000005 	beq	80048b8 <memcpy+0xd8>
 80048a0:	e2433001 	sub	r3, r3, #1
 80048a4:	e0812002 	add	r2, r1, r2
 80048a8:	e4d1c001 	ldrb	ip, [r1], #1
 80048ac:	e1510002 	cmp	r1, r2
 80048b0:	e5e3c001 	strb	ip, [r3, #1]!
 80048b4:	1afffffb 	bne	80048a8 <memcpy+0xc8>
 80048b8:	e8bd4070 	pop	{r4, r5, r6, lr}
 80048bc:	e12fff1e 	bx	lr
 80048c0:	e1a03000 	mov	r3, r0
 80048c4:	eafffff5 	b	80048a0 <memcpy+0xc0>
 80048c8:	e1a02006 	mov	r2, r6
 80048cc:	eafffff1 	b	8004898 <memcpy+0xb8>

080048d0 <_raise_r>:
 80048d0:	e351001f 	cmp	r1, #31
 80048d4:	e92d4038 	push	{r3, r4, r5, lr}
 80048d8:	e1a05000 	mov	r5, r0
 80048dc:	83a03016 	movhi	r3, #22
 80048e0:	83e00000 	mvnhi	r0, #0
 80048e4:	85853000 	strhi	r3, [r5]
 80048e8:	8a000013 	bhi	800493c <_raise_r+0x6c>
 80048ec:	e59522dc 	ldr	r2, [r5, #732]	; 0x2dc
 80048f0:	e3520000 	cmp	r2, #0
 80048f4:	e1a04001 	mov	r4, r1
 80048f8:	0a000013 	beq	800494c <_raise_r+0x7c>
 80048fc:	e7923101 	ldr	r3, [r2, r1, lsl #2]
 8004900:	e3530000 	cmp	r3, #0
 8004904:	0a000010 	beq	800494c <_raise_r+0x7c>
 8004908:	e3530001 	cmp	r3, #1
 800490c:	0a00000c 	beq	8004944 <_raise_r+0x74>
 8004910:	e3730001 	cmn	r3, #1
 8004914:	03a03016 	moveq	r3, #22
 8004918:	03a00001 	moveq	r0, #1
 800491c:	05853000 	streq	r3, [r5]
 8004920:	0a000005 	beq	800493c <_raise_r+0x6c>
 8004924:	e3a05000 	mov	r5, #0
 8004928:	e1a00001 	mov	r0, r1
 800492c:	e7825101 	str	r5, [r2, r1, lsl #2]
 8004930:	e1a0e00f 	mov	lr, pc
 8004934:	e12fff13 	bx	r3
 8004938:	e1a00005 	mov	r0, r5
 800493c:	e8bd4038 	pop	{r3, r4, r5, lr}
 8004940:	e12fff1e 	bx	lr
 8004944:	e3a00000 	mov	r0, #0
 8004948:	eafffffb 	b	800493c <_raise_r+0x6c>
 800494c:	e1a00005 	mov	r0, r5
 8004950:	eb000019 	bl	80049bc <_getpid_r>
 8004954:	e1a02004 	mov	r2, r4
 8004958:	e1a01000 	mov	r1, r0
 800495c:	e1a00005 	mov	r0, r5
 8004960:	eb000005 	bl	800497c <_kill_r>
 8004964:	eafffff4 	b	800493c <_raise_r+0x6c>

08004968 <raise>:
 8004968:	e59f3008 	ldr	r3, [pc, #8]	; 8004978 <raise+0x10>
 800496c:	e1a01000 	mov	r1, r0
 8004970:	e5930000 	ldr	r0, [r3]
 8004974:	eaffffd5 	b	80048d0 <_raise_r>
 8004978:	20000528 	.word	0x20000528

0800497c <_kill_r>:
 800497c:	e92d4038 	push	{r3, r4, r5, lr}
 8004980:	e3a03000 	mov	r3, #0
 8004984:	e59f402c 	ldr	r4, [pc, #44]	; 80049b8 <_kill_r+0x3c>
 8004988:	e1a05000 	mov	r5, r0
 800498c:	e1a00001 	mov	r0, r1
 8004990:	e1a01002 	mov	r1, r2
 8004994:	e5843000 	str	r3, [r4]
 8004998:	eb000011 	bl	80049e4 <_kill>
 800499c:	e3700001 	cmn	r0, #1
 80049a0:	1a000002 	bne	80049b0 <_kill_r+0x34>
 80049a4:	e5943000 	ldr	r3, [r4]
 80049a8:	e3530000 	cmp	r3, #0
 80049ac:	15853000 	strne	r3, [r5]
 80049b0:	e8bd4038 	pop	{r3, r4, r5, lr}
 80049b4:	e12fff1e 	bx	lr
 80049b8:	20001098 	.word	0x20001098

080049bc <_getpid_r>:
 80049bc:	e92d4008 	push	{r3, lr}
 80049c0:	eb000001 	bl	80049cc <_getpid>
 80049c4:	e8bd4008 	pop	{r3, lr}
 80049c8:	e12fff1e 	bx	lr

080049cc <_getpid>:
 80049cc:	e3a02058 	mov	r2, #88	; 0x58
 80049d0:	e59f3008 	ldr	r3, [pc, #8]	; 80049e0 <_getpid+0x14>
 80049d4:	e3e00000 	mvn	r0, #0
 80049d8:	e5832000 	str	r2, [r3]
 80049dc:	e12fff1e 	bx	lr
 80049e0:	20001098 	.word	0x20001098

080049e4 <_kill>:
 80049e4:	e3a02058 	mov	r2, #88	; 0x58
 80049e8:	e59f3008 	ldr	r3, [pc, #8]	; 80049f8 <_kill+0x14>
 80049ec:	e3e00000 	mvn	r0, #0
 80049f0:	e5832000 	str	r2, [r3]
 80049f4:	e12fff1e 	bx	lr
 80049f8:	20001098 	.word	0x20001098

080049fc <_exit>:
 80049fc:	eafffffe 	b	80049fc <_exit>

08004a00 <_init>:
 8004a00:	e1a0c00d 	mov	ip, sp
 8004a04:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
 8004a08:	e24cb004 	sub	fp, ip, #4
 8004a0c:	e24bd028 	sub	sp, fp, #40	; 0x28
 8004a10:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
 8004a14:	e12fff1e 	bx	lr

08004a18 <_fini>:
 8004a18:	e1a0c00d 	mov	ip, sp
 8004a1c:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
 8004a20:	e24cb004 	sub	fp, ip, #4
 8004a24:	e24bd028 	sub	sp, fp, #40	; 0x28
 8004a28:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
 8004a2c:	e12fff1e 	bx	lr
 8004a30:	453e3e3e 	.word	0x453e3e3e
 8004a34:	72652020 	.word	0x72652020
 8004a38:	20726f72 	.word	0x20726f72
 8004a3c:	65646f63 	.word	0x65646f63
 8004a40:	3a752520 	.word	0x3a752520
 8004a44:	000a7525 	.word	0x000a7525
 8004a48:	433e3e3e 	.word	0x433e3e3e
 8004a4c:	69250020 	.word	0x69250020
 8004a50:	20692520 	.word	0x20692520
 8004a54:	25206925 	.word	0x25206925
 8004a58:	25002069 	.word	0x25002069
 8004a5c:	69252069 	.word	0x69252069
 8004a60:	20752520 	.word	0x20752520
 8004a64:	00206925 	.word	0x00206925
 8004a68:	3e000a0a 	.word	0x3e000a0a
 8004a6c:	204c3e3e 	.word	0x204c3e3e
 8004a70:	20692500 	.word	0x20692500
 8004a74:	25206925 	.word	0x25206925
 8004a78:	75252075 	.word	0x75252075
 8004a7c:	3e3e0020 	.word	0x3e3e0020
 8004a80:	00204f3e 	.word	0x00204f3e
 8004a84:	493e3e3e 	.word	0x493e3e3e
 8004a88:	3e3e0020 	.word	0x3e3e0020
 8004a8c:	0a002053 	.word	0x0a002053
 8004a90:	636c6577 	.word	0x636c6577
 8004a94:	20656d6f 	.word	0x20656d6f
 8004a98:	53206f74 	.word	0x53206f74
 8004a9c:	68757a75 	.word	0x68757a75
 8004aa0:	20534f61 	.word	0x20534f61
 8004aa4:	205e5f5e 	.word	0x205e5f5e
 8004aa8:	2e302e32 	.word	0x2e302e32
 8004aac:	55420a36 	.word	0x55420a36
 8004ab0:	20444c49 	.word	0x20444c49
 8004ab4:	206e754a 	.word	0x206e754a
 8004ab8:	32203431 	.word	0x32203431
 8004abc:	20363130 	.word	0x20363130
 8004ac0:	343a3032 	.word	0x343a3032
 8004ac4:	30313a31 	.word	0x30313a31
 8004ac8:	6e65000a 	.word	0x6e65000a
 8004acc:	65646f63 	.word	0x65646f63
 8004ad0:	25207372 	.word	0x25207372
 8004ad4:	75252075 	.word	0x75252075
 8004ad8:	0a752520 	.word	0x0a752520
 8004adc:	00          	.byte	0x00
 8004add:	73          	.byte	0x73
 8004ade:	6474      	.short	0x6474
 8004ae0:	69206f69 	.word	0x69206f69
 8004ae4:	2074696e 	.word	0x2074696e
 8004ae8:	656e6f64 	.word	0x656e6f64
 8004aec:	0000000a 	.word	0x0000000a
 8004af0:	00000043 	.word	0x00000043

08004af4 <__EH_FRAME_BEGIN__>:
 8004af4:	00000000                                ....
