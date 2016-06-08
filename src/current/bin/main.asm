
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
 80001c6:	f002 bb15 	b.w	80027f4 <drv8834_run>

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
 80001e0:	f001 fb7a 	bl	80018d8 <rgb_get>
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
 800020e:	f001 fb63 	bl	80018d8 <rgb_get>
 8000212:	ea4f 0a45 	mov.w	sl, r5, lsl #1
 8000216:	4450      	add	r0, sl
 8000218:	4b87      	ldr	r3, [pc, #540]	; (8000438 <_ZN6CRobot16line_sensor_readEv+0x264>)
 800021a:	f853 2025 	ldr.w	r2, [r3, r5, lsl #2]
 800021e:	8ec3      	ldrh	r3, [r0, #54]	; 0x36
 8000220:	1a9b      	subs	r3, r3, r2
 8000222:	86c3      	strh	r3, [r0, #54]	; 0x36
 8000224:	f001 fb58 	bl	80018d8 <rgb_get>
 8000228:	4b84      	ldr	r3, [pc, #528]	; (800043c <_ZN6CRobot16line_sensor_readEv+0x268>)
 800022a:	f853 2025 	ldr.w	r2, [r3, r5, lsl #2]
 800022e:	f830 3015 	ldrh.w	r3, [r0, r5, lsl #1]
 8000232:	1a9b      	subs	r3, r3, r2
 8000234:	f820 3015 	strh.w	r3, [r0, r5, lsl #1]
 8000238:	f001 fb4e 	bl	80018d8 <rgb_get>
 800023c:	4b80      	ldr	r3, [pc, #512]	; (8000440 <_ZN6CRobot16line_sensor_readEv+0x26c>)
 800023e:	4450      	add	r0, sl
 8000240:	f853 2025 	ldr.w	r2, [r3, r5, lsl #2]
 8000244:	8a43      	ldrh	r3, [r0, #18]
 8000246:	1a9b      	subs	r3, r3, r2
 8000248:	8243      	strh	r3, [r0, #18]
 800024a:	f001 fb45 	bl	80018d8 <rgb_get>
 800024e:	4b7d      	ldr	r3, [pc, #500]	; (8000444 <_ZN6CRobot16line_sensor_readEv+0x270>)
 8000250:	4450      	add	r0, sl
 8000252:	f853 2025 	ldr.w	r2, [r3, r5, lsl #2]
 8000256:	8c83      	ldrh	r3, [r0, #36]	; 0x24
 8000258:	1a9b      	subs	r3, r3, r2
 800025a:	8483      	strh	r3, [r0, #36]	; 0x24
 800025c:	f001 fb3c 	bl	80018d8 <rgb_get>
 8000260:	eb00 0045 	add.w	r0, r0, r5, lsl #1
 8000264:	f9b0 3036 	ldrsh.w	r3, [r0, #54]	; 0x36
 8000268:	4499      	add	r9, r3
 800026a:	f001 fb35 	bl	80018d8 <rgb_get>
 800026e:	f930 3015 	ldrsh.w	r3, [r0, r5, lsl #1]
 8000272:	4498      	add	r8, r3
 8000274:	f001 fb30 	bl	80018d8 <rgb_get>
 8000278:	eb00 0045 	add.w	r0, r0, r5, lsl #1
 800027c:	f9b0 3012 	ldrsh.w	r3, [r0, #18]
 8000280:	441f      	add	r7, r3
 8000282:	f001 fb29 	bl	80018d8 <rgb_get>
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
 80002a8:	f001 fb16 	bl	80018d8 <rgb_get>
 80002ac:	4682      	mov	sl, r0
 80002ae:	f001 fb13 	bl	80018d8 <rgb_get>
 80002b2:	f106 0318 	add.w	r3, r6, #24
 80002b6:	005b      	lsls	r3, r3, #1
 80002b8:	4418      	add	r0, r3
 80002ba:	449a      	add	sl, r3
 80002bc:	88c3      	ldrh	r3, [r0, #6]
 80002be:	ebc3 0309 	rsb	r3, r3, r9
 80002c2:	f8aa 3006 	strh.w	r3, [sl, #6]
 80002c6:	f001 fb07 	bl	80018d8 <rgb_get>
 80002ca:	4682      	mov	sl, r0
 80002cc:	f001 fb04 	bl	80018d8 <rgb_get>
 80002d0:	f830 3016 	ldrh.w	r3, [r0, r6, lsl #1]
 80002d4:	ebc8 0303 	rsb	r3, r8, r3
 80002d8:	f82a 3016 	strh.w	r3, [sl, r6, lsl #1]
 80002dc:	f001 fafc 	bl	80018d8 <rgb_get>
 80002e0:	4682      	mov	sl, r0
 80002e2:	f001 faf9 	bl	80018d8 <rgb_get>
 80002e6:	f106 0308 	add.w	r3, r6, #8
 80002ea:	005b      	lsls	r3, r3, #1
 80002ec:	4418      	add	r0, r3
 80002ee:	449a      	add	sl, r3
 80002f0:	8843      	ldrh	r3, [r0, #2]
 80002f2:	1bdb      	subs	r3, r3, r7
 80002f4:	f8aa 3002 	strh.w	r3, [sl, #2]
 80002f8:	f001 faee 	bl	80018d8 <rgb_get>
 80002fc:	4682      	mov	sl, r0
 80002fe:	f001 faeb 	bl	80018d8 <rgb_get>
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
 8000320:	f001 fada 	bl	80018d8 <rgb_get>
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
 8000450:	f001 fa46 	bl	80018e0 <rgb_read>
 8000454:	4620      	mov	r0, r4
 8000456:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800045a:	f7ff bebb 	b.w	80001d4 <_ZN6CRobot16line_sensor_readEv>

0800045e <_ZN6CRobot16line_sensor_initEv>:
 800045e:	b538      	push	{r3, r4, r5, lr}
 8000460:	4604      	mov	r4, r0
 8000462:	2500      	movs	r5, #0
 8000464:	f001 f9f6 	bl	8001854 <rgb_init>
 8000468:	f001 fa3a 	bl	80018e0 <rgb_read>
 800046c:	2192      	movs	r1, #146	; 0x92
 800046e:	2072      	movs	r0, #114	; 0x72
 8000470:	f104 025c 	add.w	r2, r4, #92	; 0x5c
 8000474:	f001 f9d3 	bl	800181e <rgb_i2c_read_reg>
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
 80004ba:	f002 f85e 	bl	800257a <i2c_read_reg>
 80004be:	2129      	movs	r1, #41	; 0x29
 80004c0:	4605      	mov	r5, r0
 80004c2:	20d4      	movs	r0, #212	; 0xd4
 80004c4:	f002 f859 	bl	800257a <i2c_read_reg>
 80004c8:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 80004cc:	f8a4 0094 	strh.w	r0, [r4, #148]	; 0x94
 80004d0:	212a      	movs	r1, #42	; 0x2a
 80004d2:	20d4      	movs	r0, #212	; 0xd4
 80004d4:	f002 f851 	bl	800257a <i2c_read_reg>
 80004d8:	212b      	movs	r1, #43	; 0x2b
 80004da:	4605      	mov	r5, r0
 80004dc:	20d4      	movs	r0, #212	; 0xd4
 80004de:	f002 f84c 	bl	800257a <i2c_read_reg>
 80004e2:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 80004e6:	f8a4 0096 	strh.w	r0, [r4, #150]	; 0x96
 80004ea:	212c      	movs	r1, #44	; 0x2c
 80004ec:	20d4      	movs	r0, #212	; 0xd4
 80004ee:	f002 f844 	bl	800257a <i2c_read_reg>
 80004f2:	212d      	movs	r1, #45	; 0x2d
 80004f4:	4605      	mov	r5, r0
 80004f6:	20d4      	movs	r0, #212	; 0xd4
 80004f8:	f002 f83f 	bl	800257a <i2c_read_reg>
 80004fc:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000500:	f8a4 0098 	strh.w	r0, [r4, #152]	; 0x98
 8000504:	2108      	movs	r1, #8
 8000506:	203c      	movs	r0, #60	; 0x3c
 8000508:	f002 f837 	bl	800257a <i2c_read_reg>
 800050c:	2109      	movs	r1, #9
 800050e:	4605      	mov	r5, r0
 8000510:	203c      	movs	r0, #60	; 0x3c
 8000512:	f002 f832 	bl	800257a <i2c_read_reg>
 8000516:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 800051a:	f8a4 008e 	strh.w	r0, [r4, #142]	; 0x8e
 800051e:	210a      	movs	r1, #10
 8000520:	203c      	movs	r0, #60	; 0x3c
 8000522:	f002 f82a 	bl	800257a <i2c_read_reg>
 8000526:	210b      	movs	r1, #11
 8000528:	4605      	mov	r5, r0
 800052a:	203c      	movs	r0, #60	; 0x3c
 800052c:	f002 f825 	bl	800257a <i2c_read_reg>
 8000530:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000534:	f8a4 0090 	strh.w	r0, [r4, #144]	; 0x90
 8000538:	210c      	movs	r1, #12
 800053a:	203c      	movs	r0, #60	; 0x3c
 800053c:	f002 f81d 	bl	800257a <i2c_read_reg>
 8000540:	210d      	movs	r1, #13
 8000542:	4605      	mov	r5, r0
 8000544:	203c      	movs	r0, #60	; 0x3c
 8000546:	f002 f818 	bl	800257a <i2c_read_reg>
 800054a:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 800054e:	f8a4 0092 	strh.w	r0, [r4, #146]	; 0x92
 8000552:	2128      	movs	r1, #40	; 0x28
 8000554:	203c      	movs	r0, #60	; 0x3c
 8000556:	f002 f810 	bl	800257a <i2c_read_reg>
 800055a:	2129      	movs	r1, #41	; 0x29
 800055c:	4605      	mov	r5, r0
 800055e:	203c      	movs	r0, #60	; 0x3c
 8000560:	f002 f80b 	bl	800257a <i2c_read_reg>
 8000564:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000568:	f8a4 0088 	strh.w	r0, [r4, #136]	; 0x88
 800056c:	212a      	movs	r1, #42	; 0x2a
 800056e:	203c      	movs	r0, #60	; 0x3c
 8000570:	f002 f803 	bl	800257a <i2c_read_reg>
 8000574:	212b      	movs	r1, #43	; 0x2b
 8000576:	4605      	mov	r5, r0
 8000578:	203c      	movs	r0, #60	; 0x3c
 800057a:	f001 fffe 	bl	800257a <i2c_read_reg>
 800057e:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000582:	f8a4 008a 	strh.w	r0, [r4, #138]	; 0x8a
 8000586:	212c      	movs	r1, #44	; 0x2c
 8000588:	203c      	movs	r0, #60	; 0x3c
 800058a:	f001 fff6 	bl	800257a <i2c_read_reg>
 800058e:	212d      	movs	r1, #45	; 0x2d
 8000590:	4605      	mov	r5, r0
 8000592:	203c      	movs	r0, #60	; 0x3c
 8000594:	f001 fff1 	bl	800257a <i2c_read_reg>
 8000598:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 800059c:	f8a4 008c 	strh.w	r0, [r4, #140]	; 0x8c
 80005a0:	2105      	movs	r1, #5
 80005a2:	203c      	movs	r0, #60	; 0x3c
 80005a4:	f001 ffe9 	bl	800257a <i2c_read_reg>
 80005a8:	2106      	movs	r1, #6
 80005aa:	4605      	mov	r5, r0
 80005ac:	203c      	movs	r0, #60	; 0x3c
 80005ae:	f001 ffe4 	bl	800257a <i2c_read_reg>
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
 800060e:	f001 ffb4 	bl	800257a <i2c_read_reg>
 8000612:	28d4      	cmp	r0, #212	; 0xd4
 8000614:	4605      	mov	r5, r0
 8000616:	d164      	bne.n	80006e2 <_ZN6CRobot12lsm9ds0_initEv+0xde>
 8000618:	203c      	movs	r0, #60	; 0x3c
 800061a:	210f      	movs	r1, #15
 800061c:	f001 ffad 	bl	800257a <i2c_read_reg>
 8000620:	2849      	cmp	r0, #73	; 0x49
 8000622:	d160      	bne.n	80006e6 <_ZN6CRobot12lsm9ds0_initEv+0xe2>
 8000624:	4628      	mov	r0, r5
 8000626:	2120      	movs	r1, #32
 8000628:	22ff      	movs	r2, #255	; 0xff
 800062a:	f001 ff93 	bl	8002554 <i2c_write_reg>
 800062e:	4628      	mov	r0, r5
 8000630:	2123      	movs	r1, #35	; 0x23
 8000632:	2210      	movs	r2, #16
 8000634:	f001 ff8e 	bl	8002554 <i2c_write_reg>
 8000638:	203c      	movs	r0, #60	; 0x3c
 800063a:	211f      	movs	r1, #31
 800063c:	2200      	movs	r2, #0
 800063e:	f001 ff89 	bl	8002554 <i2c_write_reg>
 8000642:	203c      	movs	r0, #60	; 0x3c
 8000644:	2120      	movs	r1, #32
 8000646:	2267      	movs	r2, #103	; 0x67
 8000648:	f001 ff84 	bl	8002554 <i2c_write_reg>
 800064c:	203c      	movs	r0, #60	; 0x3c
 800064e:	2121      	movs	r1, #33	; 0x21
 8000650:	2200      	movs	r2, #0
 8000652:	f001 ff7f 	bl	8002554 <i2c_write_reg>
 8000656:	203c      	movs	r0, #60	; 0x3c
 8000658:	2124      	movs	r1, #36	; 0x24
 800065a:	22f4      	movs	r2, #244	; 0xf4
 800065c:	f001 ff7a 	bl	8002554 <i2c_write_reg>
 8000660:	203c      	movs	r0, #60	; 0x3c
 8000662:	2125      	movs	r1, #37	; 0x25
 8000664:	2200      	movs	r2, #0
 8000666:	f001 ff75 	bl	8002554 <i2c_write_reg>
 800066a:	203c      	movs	r0, #60	; 0x3c
 800066c:	2126      	movs	r1, #38	; 0x26
 800066e:	2280      	movs	r2, #128	; 0x80
 8000670:	f001 ff70 	bl	8002554 <i2c_write_reg>
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
 8000738:	f000 fd4c 	bl	80011d4 <printf_>
 800073c:	2400      	movs	r4, #0
 800073e:	1ceb      	adds	r3, r5, #3
 8000740:	429c      	cmp	r4, r3
 8000742:	d20f      	bcs.n	8000764 <abort_error_+0x38>
 8000744:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8000748:	f002 f9c0 	bl	8002acc <led_on>
 800074c:	2032      	movs	r0, #50	; 0x32
 800074e:	f001 fc99 	bl	8002084 <timer_delay_ms>
 8000752:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8000756:	f002 f9c3 	bl	8002ae0 <led_off>
 800075a:	2064      	movs	r0, #100	; 0x64
 800075c:	f001 fc92 	bl	8002084 <timer_delay_ms>
 8000760:	3401      	adds	r4, #1
 8000762:	e7ec      	b.n	800073e <abort_error_+0x12>
 8000764:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 8000768:	f001 fc8c 	bl	8002084 <timer_delay_ms>
 800076c:	e7e1      	b.n	8000732 <abort_error_+0x6>
 800076e:	bf00      	nop
 8000770:	08004568 	.word	0x08004568

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
 80007f4:	f001 fc46 	bl	8002084 <timer_delay_ms>
 80007f8:	e7cf      	b.n	800079a <_ZN9CObstacle12rotate_robotEi+0x1e>
 80007fa:	2100      	movs	r1, #0
 80007fc:	6868      	ldr	r0, [r5, #4]
 80007fe:	460a      	mov	r2, r1
 8000800:	f7ff fcdf 	bl	80001c2 <_ZN6CRobot10set_motorsEii>
 8000804:	ecbd 8b02 	vpop	{d8}
 8000808:	20c8      	movs	r0, #200	; 0xc8
 800080a:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 800080e:	f001 bc39 	b.w	8002084 <timer_delay_ms>
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
 8000834:	f001 fc18 	bl	8002068 <timer_get_time>
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
 8000856:	f001 fc07 	bl	8002068 <timer_get_time>
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
 80008c4:	f001 fbde 	bl	8002084 <timer_delay_ms>
 80008c8:	2e00      	cmp	r6, #0
 80008ca:	d0c2      	beq.n	8000852 <_ZN9CObstacle10go_forwardEijPFhvE+0x2e>
 80008cc:	47b0      	blx	r6
 80008ce:	2800      	cmp	r0, #0
 80008d0:	d0bf      	beq.n	8000852 <_ZN9CObstacle10go_forwardEijPFhvE+0x2e>
 80008d2:	2000      	movs	r0, #0
 80008d4:	4601      	mov	r1, r0
 80008d6:	f001 ff8d 	bl	80027f4 <drv8834_run>
 80008da:	ecbd 8b04 	vpop	{d8-d9}
 80008de:	2064      	movs	r0, #100	; 0x64
 80008e0:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 80008e4:	f001 bbce 	b.w	8002084 <timer_delay_ms>
 80008e8:	00000000 	.word	0x00000000
 80008ec:	3a83126f 	.word	0x3a83126f
 80008f0:	3e4ccccc 	.word	0x3e4ccccc
 80008f4:	399d4952 	.word	0x399d4952
 80008f8:	3f4ccccd 	.word	0x3f4ccccd

080008fc <_ZN9CObstacle7processEv>:
 80008fc:	b510      	push	{r4, lr}
 80008fe:	4604      	mov	r4, r0
 8000900:	f002 f900 	bl	8002b04 <get_mode_jumper>
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
 800099e:	f001 fb81 	bl	80020a4 <event_timer_set_period>
 80009a2:	2000      	movs	r0, #0
 80009a4:	f001 fb96 	bl	80020d4 <event_timer_wait>
 80009a8:	4801      	ldr	r0, [pc, #4]	; (80009b0 <_Z18line_sensor_threadv+0x18>)
 80009aa:	f7ff fd4f 	bl	800044c <_ZN6CRobot19process_rgb_sensorsEv>
 80009ae:	e7f8      	b.n	80009a2 <_Z18line_sensor_threadv+0xa>
 80009b0:	20000918 	.word	0x20000918

080009b4 <_Z17imu_sensor_threadv>:
 80009b4:	b508      	push	{r3, lr}
 80009b6:	2001      	movs	r0, #1
 80009b8:	210a      	movs	r1, #10
 80009ba:	f001 fb73 	bl	80020a4 <event_timer_set_period>
 80009be:	2001      	movs	r0, #1
 80009c0:	f001 fb88 	bl	80020d4 <event_timer_wait>
 80009c4:	4801      	ldr	r0, [pc, #4]	; (80009cc <_Z17imu_sensor_threadv+0x18>)
 80009c6:	f7ff fdf9 	bl	80005bc <_ZN6CRobot18process_imu_sensorEv>
 80009ca:	e7f8      	b.n	80009be <_Z17imu_sensor_threadv+0xa>
 80009cc:	20000918 	.word	0x20000918

080009d0 <_Z13line_followerv>:
 80009d0:	b510      	push	{r4, lr}
 80009d2:	2002      	movs	r0, #2
 80009d4:	2104      	movs	r1, #4
 80009d6:	f001 fb65 	bl	80020a4 <event_timer_set_period>
 80009da:	2400      	movs	r4, #0
 80009dc:	2002      	movs	r0, #2
 80009de:	f001 fb79 	bl	80020d4 <event_timer_wait>
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
 8000a04:	f000 f920 	bl	8000c48 <_ZN13CLineFollower7processEv>
 8000a08:	e002      	b.n	8000a10 <_Z13line_followerv+0x40>
 8000a0a:	480c      	ldr	r0, [pc, #48]	; (8000a3c <_Z13line_followerv+0x6c>)
 8000a0c:	f000 f988 	bl	8000d20 <_ZN11CBrokenLine7processEv>
 8000a10:	3401      	adds	r4, #1
 8000a12:	2214      	movs	r2, #20
 8000a14:	fbb4 f3f2 	udiv	r3, r4, r2
 8000a18:	fb02 4313 	mls	r3, r2, r3, r4
 8000a1c:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8000a20:	b913      	cbnz	r3, 8000a28 <_Z13line_followerv+0x58>
 8000a22:	f002 f853 	bl	8002acc <led_on>
 8000a26:	e7d9      	b.n	80009dc <_Z13line_followerv+0xc>
 8000a28:	f002 f85a 	bl	8002ae0 <led_off>
 8000a2c:	e7d6      	b.n	80009dc <_Z13line_followerv+0xc>
 8000a2e:	bf00      	nop
 8000a30:	20000918 	.word	0x20000918
 8000a34:	20000710 	.word	0x20000710
 8000a38:	200009c4 	.word	0x200009c4
 8000a3c:	20000504 	.word	0x20000504

08000a40 <main_thread>:
 8000a40:	b530      	push	{r4, r5, lr}
 8000a42:	483d      	ldr	r0, [pc, #244]	; (8000b38 <main_thread+0xf8>)
 8000a44:	b097      	sub	sp, #92	; 0x5c
 8000a46:	f000 fbc5 	bl	80011d4 <printf_>
 8000a4a:	f44f 7096 	mov.w	r0, #300	; 0x12c
 8000a4e:	f001 fb19 	bl	8002084 <timer_delay_ms>
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
 8000a8c:	482b      	ldr	r0, [pc, #172]	; (8000b3c <main_thread+0xfc>)
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
 8000aac:	4823      	ldr	r0, [pc, #140]	; (8000b3c <main_thread+0xfc>)
 8000aae:	f7ff fb6f 	bl	8000190 <_ZN6CRobot13set_configureE15sRobotConfigure>
 8000ab2:	4823      	ldr	r0, [pc, #140]	; (8000b40 <main_thread+0x100>)
 8000ab4:	4921      	ldr	r1, [pc, #132]	; (8000b3c <main_thread+0xfc>)
 8000ab6:	f000 f851 	bl	8000b5c <_ZN13CLineFollower4initEP6CRobot>
 8000aba:	4822      	ldr	r0, [pc, #136]	; (8000b44 <main_thread+0x104>)
 8000abc:	491f      	ldr	r1, [pc, #124]	; (8000b3c <main_thread+0xfc>)
 8000abe:	f7ff fe59 	bl	8000774 <_ZN9CObstacle4initEP6CRobot>
 8000ac2:	4821      	ldr	r0, [pc, #132]	; (8000b48 <main_thread+0x108>)
 8000ac4:	491d      	ldr	r1, [pc, #116]	; (8000b3c <main_thread+0xfc>)
 8000ac6:	f000 f91d 	bl	8000d04 <_ZN11CBrokenLine4initEP6CRobot>
 8000aca:	481c      	ldr	r0, [pc, #112]	; (8000b3c <main_thread+0xfc>)
 8000acc:	f7ff fb5c 	bl	8000188 <_ZN6CRobot14get_error_typeEv>
 8000ad0:	b158      	cbz	r0, 8000aea <main_thread+0xaa>
 8000ad2:	481a      	ldr	r0, [pc, #104]	; (8000b3c <main_thread+0xfc>)
 8000ad4:	f7ff fb58 	bl	8000188 <_ZN6CRobot14get_error_typeEv>
 8000ad8:	4604      	mov	r4, r0
 8000ada:	4818      	ldr	r0, [pc, #96]	; (8000b3c <main_thread+0xfc>)
 8000adc:	f7ff fb56 	bl	800018c <_ZN6CRobot14get_error_codeEv>
 8000ae0:	4601      	mov	r1, r0
 8000ae2:	4620      	mov	r0, r4
 8000ae4:	f7ff fe22 	bl	800072c <abort_error_>
 8000ae8:	e7f3      	b.n	8000ad2 <main_thread+0x92>
 8000aea:	4918      	ldr	r1, [pc, #96]	; (8000b4c <main_thread+0x10c>)
 8000aec:	4818      	ldr	r0, [pc, #96]	; (8000b50 <main_thread+0x110>)
 8000aee:	f44f 7200 	mov.w	r2, #512	; 0x200
 8000af2:	2306      	movs	r3, #6
 8000af4:	f000 fa40 	bl	8000f78 <create_thread>
 8000af8:	4816      	ldr	r0, [pc, #88]	; (8000b54 <main_thread+0x114>)
 8000afa:	4917      	ldr	r1, [pc, #92]	; (8000b58 <main_thread+0x118>)
 8000afc:	f44f 7200 	mov.w	r2, #512	; 0x200
 8000b00:	2306      	movs	r3, #6
 8000b02:	f000 fa39 	bl	8000f78 <create_thread>
 8000b06:	f001 fff5 	bl	8002af4 <get_key>
 8000b0a:	b128      	cbz	r0, 8000b18 <main_thread+0xd8>
 8000b0c:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 8000b10:	f001 fab8 	bl	8002084 <timer_delay_ms>
 8000b14:	f7ff ff5c 	bl	80009d0 <_Z13line_followerv>
 8000b18:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8000b1c:	f001 ffd6 	bl	8002acc <led_on>
 8000b20:	2064      	movs	r0, #100	; 0x64
 8000b22:	f001 faaf 	bl	8002084 <timer_delay_ms>
 8000b26:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8000b2a:	f001 ffd9 	bl	8002ae0 <led_off>
 8000b2e:	20c8      	movs	r0, #200	; 0xc8
 8000b30:	f001 faa8 	bl	8002084 <timer_delay_ms>
 8000b34:	e7e7      	b.n	8000b06 <main_thread+0xc6>
 8000b36:	bf00      	nop
 8000b38:	080045c7 	.word	0x080045c7
 8000b3c:	20000918 	.word	0x20000918
 8000b40:	200009c4 	.word	0x200009c4
 8000b44:	20000710 	.word	0x20000710
 8000b48:	20000504 	.word	0x20000504
 8000b4c:	20000510 	.word	0x20000510
 8000b50:	08000999 	.word	0x08000999
 8000b54:	080009b5 	.word	0x080009b5
 8000b58:	20000718 	.word	0x20000718

08000b5c <_ZN13CLineFollower4initEP6CRobot>:
 8000b5c:	b510      	push	{r4, lr}
 8000b5e:	ed2d 8b04 	vpush	{d8-d9}
 8000b62:	4604      	mov	r4, r0
 8000b64:	2300      	movs	r3, #0
 8000b66:	b082      	sub	sp, #8
 8000b68:	6103      	str	r3, [r0, #16]
 8000b6a:	6143      	str	r3, [r0, #20]
 8000b6c:	6401      	str	r1, [r0, #64]	; 0x40
 8000b6e:	4833      	ldr	r0, [pc, #204]	; (8000c3c <_ZN13CLineFollower4initEP6CRobot+0xe0>)
 8000b70:	ed9f 8a33 	vldr	s16, [pc, #204]	; 8000c40 <_ZN13CLineFollower4initEP6CRobot+0xe4>
 8000b74:	f000 f970 	bl	8000e58 <_ZN11CQPredictor4initEv>
 8000b78:	6c20      	ldr	r0, [r4, #64]	; 0x40
 8000b7a:	f7ff fb1b 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000b7e:	ed90 9a02 	vldr	s18, [r0, #8]
 8000b82:	6c20      	ldr	r0, [r4, #64]	; 0x40
 8000b84:	f7ff fb16 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000b88:	edd0 8a03 	vldr	s17, [r0, #12]
 8000b8c:	6c20      	ldr	r0, [r4, #64]	; 0x40
 8000b8e:	f7ff fb11 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000b92:	edd0 9a04 	vldr	s19, [r0, #16]
 8000b96:	6c20      	ldr	r0, [r4, #64]	; 0x40
 8000b98:	eef8 9ae9 	vcvt.f32.s32	s19, s19
 8000b9c:	f7ff fb0a 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000ba0:	eec9 9a88 	vdiv.f32	s19, s19, s16
 8000ba4:	4927      	ldr	r1, [pc, #156]	; (8000c44 <_ZN13CLineFollower4initEP6CRobot+0xe8>)
 8000ba6:	eeb8 9ac9 	vcvt.f32.s32	s18, s18
 8000baa:	edcd 9a00 	vstr	s19, [sp]
 8000bae:	edd0 7a05 	vldr	s15, [r0, #20]
 8000bb2:	eef8 8ae8 	vcvt.f32.s32	s17, s17
 8000bb6:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 8000bba:	ee89 9a08 	vdiv.f32	s18, s18, s16
 8000bbe:	f104 0018 	add.w	r0, r4, #24
 8000bc2:	eec7 7a88 	vdiv.f32	s15, s15, s16
 8000bc6:	eec8 8a88 	vdiv.f32	s17, s17, s16
 8000bca:	ee19 2a10 	vmov	r2, s18
 8000bce:	ee18 3a90 	vmov	r3, s17
 8000bd2:	edcd 7a01 	vstr	s15, [sp, #4]
 8000bd6:	f000 fbff 	bl	80013d8 <pid_init>
 8000bda:	6c20      	ldr	r0, [r4, #64]	; 0x40
 8000bdc:	f7ff faea 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000be0:	edd0 7a06 	vldr	s15, [r0, #24]
 8000be4:	6c20      	ldr	r0, [r4, #64]	; 0x40
 8000be6:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 8000bea:	eec7 7a88 	vdiv.f32	s15, s15, s16
 8000bee:	edc4 7a00 	vstr	s15, [r4]
 8000bf2:	f7ff fadf 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000bf6:	edd0 7a07 	vldr	s15, [r0, #28]
 8000bfa:	6c20      	ldr	r0, [r4, #64]	; 0x40
 8000bfc:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 8000c00:	eec7 7a88 	vdiv.f32	s15, s15, s16
 8000c04:	edc4 7a01 	vstr	s15, [r4, #4]
 8000c08:	f7ff fad4 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000c0c:	edd0 7a08 	vldr	s15, [r0, #32]
 8000c10:	6c20      	ldr	r0, [r4, #64]	; 0x40
 8000c12:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 8000c16:	eec7 7a88 	vdiv.f32	s15, s15, s16
 8000c1a:	edc4 7a02 	vstr	s15, [r4, #8]
 8000c1e:	f7ff fac9 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000c22:	edd0 7a09 	vldr	s15, [r0, #36]	; 0x24
 8000c26:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 8000c2a:	ee87 8a88 	vdiv.f32	s16, s15, s16
 8000c2e:	ed84 8a03 	vstr	s16, [r4, #12]
 8000c32:	b002      	add	sp, #8
 8000c34:	ecbd 8b04 	vpop	{d8-d9}
 8000c38:	bd10      	pop	{r4, pc}
 8000c3a:	bf00      	nop
 8000c3c:	20000a08 	.word	0x20000a08
 8000c40:	447a0000 	.word	0x447a0000
 8000c44:	42c80000 	.word	0x42c80000

08000c48 <_ZN13CLineFollower7processEv>:
 8000c48:	b510      	push	{r4, lr}
 8000c4a:	4604      	mov	r4, r0
 8000c4c:	ed2d 8b02 	vpush	{d8}
 8000c50:	6c00      	ldr	r0, [r0, #64]	; 0x40
 8000c52:	ed9f 8a28 	vldr	s16, [pc, #160]	; 8000cf4 <_ZN13CLineFollower7processEv+0xac>
 8000c56:	f7ff faae 	bl	80001b6 <_ZN6CRobot24get_line_position_sensorEv>
 8000c5a:	edd0 7a01 	vldr	s15, [r0, #4]
 8000c5e:	ed9f 7a26 	vldr	s14, [pc, #152]	; 8000cf8 <_ZN13CLineFollower7processEv+0xb0>
 8000c62:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 8000c66:	ee07 8ac7 	vmls.f32	s16, s15, s14
 8000c6a:	ee18 0a10 	vmov	r0, s16
 8000c6e:	f000 fb81 	bl	8001374 <m_abs>
 8000c72:	ed9f 7a22 	vldr	s14, [pc, #136]	; 8000cfc <_ZN13CLineFollower7processEv+0xb4>
 8000c76:	edd4 6a01 	vldr	s13, [r4, #4]
 8000c7a:	edd4 5a00 	vldr	s11, [r4]
 8000c7e:	ed94 6a04 	vldr	s12, [r4, #16]
 8000c82:	ee07 0a90 	vmov	s15, r0
 8000c86:	ee37 5a67 	vsub.f32	s10, s14, s15
 8000c8a:	ee07 7ae6 	vmls.f32	s14, s15, s13
 8000c8e:	ee05 6a25 	vmla.f32	s12, s10, s11
 8000c92:	ee17 1a10 	vmov	r1, s14
 8000c96:	ee16 0a10 	vmov	r0, s12
 8000c9a:	f000 fb8e 	bl	80013ba <m_min>
 8000c9e:	68e2      	ldr	r2, [r4, #12]
 8000ca0:	68a1      	ldr	r1, [r4, #8]
 8000ca2:	6120      	str	r0, [r4, #16]
 8000ca4:	f000 fb72 	bl	800138c <m_saturate>
 8000ca8:	ee18 1a10 	vmov	r1, s16
 8000cac:	6120      	str	r0, [r4, #16]
 8000cae:	f104 0018 	add.w	r0, r4, #24
 8000cb2:	f000 fbc1 	bl	8001438 <pid_process>
 8000cb6:	edd4 7a04 	vldr	s15, [r4, #16]
 8000cba:	ed9f 6a11 	vldr	s12, [pc, #68]	; 8000d00 <_ZN13CLineFollower7processEv+0xb8>
 8000cbe:	6160      	str	r0, [r4, #20]
 8000cc0:	ee06 0a90 	vmov	s13, r0
 8000cc4:	ee37 7aa6 	vadd.f32	s14, s15, s13
 8000cc8:	ee77 7ae6 	vsub.f32	s15, s15, s13
 8000ccc:	ecbd 8b02 	vpop	{d8}
 8000cd0:	ee27 7a06 	vmul.f32	s14, s14, s12
 8000cd4:	ee67 7a86 	vmul.f32	s15, s15, s12
 8000cd8:	eebd 7ac7 	vcvt.s32.f32	s14, s14
 8000cdc:	eefd 7ae7 	vcvt.s32.f32	s15, s15
 8000ce0:	6c20      	ldr	r0, [r4, #64]	; 0x40
 8000ce2:	ee17 1a10 	vmov	r1, s14
 8000ce6:	ee17 2a90 	vmov	r2, s15
 8000cea:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000cee:	f7ff ba68 	b.w	80001c2 <_ZN6CRobot10set_motorsEii>
 8000cf2:	bf00      	nop
 8000cf4:	00000000 	.word	0x00000000
 8000cf8:	3b800000 	.word	0x3b800000
 8000cfc:	3f800000 	.word	0x3f800000
 8000d00:	42c80000 	.word	0x42c80000

08000d04 <_ZN11CBrokenLine4initEP6CRobot>:
 8000d04:	b510      	push	{r4, lr}
 8000d06:	4604      	mov	r4, r0
 8000d08:	6001      	str	r1, [r0, #0]
 8000d0a:	4608      	mov	r0, r1
 8000d0c:	f7ff fa52 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000d10:	6a83      	ldr	r3, [r0, #40]	; 0x28
 8000d12:	6063      	str	r3, [r4, #4]
 8000d14:	6820      	ldr	r0, [r4, #0]
 8000d16:	f7ff fa4d 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000d1a:	6ac3      	ldr	r3, [r0, #44]	; 0x2c
 8000d1c:	60a3      	str	r3, [r4, #8]
 8000d1e:	bd10      	pop	{r4, pc}

08000d20 <_ZN11CBrokenLine7processEv>:
 8000d20:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8000d24:	2600      	movs	r6, #0
 8000d26:	4607      	mov	r7, r0
 8000d28:	4634      	mov	r4, r6
 8000d2a:	46b1      	mov	r9, r6
 8000d2c:	46b0      	mov	r8, r6
 8000d2e:	4635      	mov	r5, r6
 8000d30:	6838      	ldr	r0, [r7, #0]
 8000d32:	f7ff fa40 	bl	80001b6 <_ZN6CRobot24get_line_position_sensorEv>
 8000d36:	7803      	ldrb	r3, [r0, #0]
 8000d38:	2b01      	cmp	r3, #1
 8000d3a:	f000 8086 	beq.w	8000e4a <_ZN11CBrokenLine7processEv+0x12a>
 8000d3e:	2005      	movs	r0, #5
 8000d40:	f001 f9a0 	bl	8002084 <timer_delay_ms>
 8000d44:	f1b9 0f05 	cmp.w	r9, #5
 8000d48:	d879      	bhi.n	8000e3e <_ZN11CBrokenLine7processEv+0x11e>
 8000d4a:	e8df f009 	tbb	[pc, r9]
 8000d4e:	1a03      	.short	0x1a03
 8000d50:	6b5e4831 	.word	0x6b5e4831
 8000d54:	2c00      	cmp	r4, #0
 8000d56:	d163      	bne.n	8000e20 <_ZN11CBrokenLine7processEv+0x100>
 8000d58:	6838      	ldr	r0, [r7, #0]
 8000d5a:	f7ff fa2c 	bl	80001b6 <_ZN6CRobot24get_line_position_sensorEv>
 8000d5e:	6842      	ldr	r2, [r0, #4]
 8000d60:	68bb      	ldr	r3, [r7, #8]
 8000d62:	687c      	ldr	r4, [r7, #4]
 8000d64:	2a00      	cmp	r2, #0
 8000d66:	bfce      	itee	gt
 8000d68:	461d      	movgt	r5, r3
 8000d6a:	4698      	movle	r8, r3
 8000d6c:	2500      	movle	r5, #0
 8000d6e:	f04f 0305 	mov.w	r3, #5
 8000d72:	bfc8      	it	gt
 8000d74:	f04f 0800 	movgt.w	r8, #0
 8000d78:	fb94 f4f3 	sdiv	r4, r4, r3
 8000d7c:	f04f 0901 	mov.w	r9, #1
 8000d80:	e05d      	b.n	8000e3e <_ZN11CBrokenLine7processEv+0x11e>
 8000d82:	2c00      	cmp	r4, #0
 8000d84:	d14c      	bne.n	8000e20 <_ZN11CBrokenLine7processEv+0x100>
 8000d86:	6838      	ldr	r0, [r7, #0]
 8000d88:	f7ff fa15 	bl	80001b6 <_ZN6CRobot24get_line_position_sensorEv>
 8000d8c:	6843      	ldr	r3, [r0, #4]
 8000d8e:	68bd      	ldr	r5, [r7, #8]
 8000d90:	2b00      	cmp	r3, #0
 8000d92:	bfcc      	ite	gt
 8000d94:	46a0      	movgt	r8, r4
 8000d96:	f1c5 0800 	rsble	r8, r5, #0
 8000d9a:	f04f 0305 	mov.w	r3, #5
 8000d9e:	bfd4      	ite	le
 8000da0:	4625      	movle	r5, r4
 8000da2:	426d      	neggt	r5, r5
 8000da4:	687c      	ldr	r4, [r7, #4]
 8000da6:	fb94 f4f3 	sdiv	r4, r4, r3
 8000daa:	f04f 0902 	mov.w	r9, #2
 8000dae:	e046      	b.n	8000e3e <_ZN11CBrokenLine7processEv+0x11e>
 8000db0:	2c00      	cmp	r4, #0
 8000db2:	d135      	bne.n	8000e20 <_ZN11CBrokenLine7processEv+0x100>
 8000db4:	6838      	ldr	r0, [r7, #0]
 8000db6:	f7ff f9fe 	bl	80001b6 <_ZN6CRobot24get_line_position_sensorEv>
 8000dba:	6842      	ldr	r2, [r0, #4]
 8000dbc:	68bb      	ldr	r3, [r7, #8]
 8000dbe:	687c      	ldr	r4, [r7, #4]
 8000dc0:	2a00      	cmp	r2, #0
 8000dc2:	bfce      	itee	gt
 8000dc4:	4698      	movgt	r8, r3
 8000dc6:	461d      	movle	r5, r3
 8000dc8:	f04f 0800 	movle.w	r8, #0
 8000dcc:	f04f 0305 	mov.w	r3, #5
 8000dd0:	bfc8      	it	gt
 8000dd2:	2500      	movgt	r5, #0
 8000dd4:	fb94 f4f3 	sdiv	r4, r4, r3
 8000dd8:	f04f 0903 	mov.w	r9, #3
 8000ddc:	e02f      	b.n	8000e3e <_ZN11CBrokenLine7processEv+0x11e>
 8000dde:	b9fc      	cbnz	r4, 8000e20 <_ZN11CBrokenLine7processEv+0x100>
 8000de0:	6838      	ldr	r0, [r7, #0]
 8000de2:	f7ff f9e8 	bl	80001b6 <_ZN6CRobot24get_line_position_sensorEv>
 8000de6:	6843      	ldr	r3, [r0, #4]
 8000de8:	68bd      	ldr	r5, [r7, #8]
 8000dea:	2b00      	cmp	r3, #0
 8000dec:	bfca      	itet	gt
 8000dee:	f1c5 0800 	rsbgt	r8, r5, #0
 8000df2:	46a0      	movle	r8, r4
 8000df4:	4625      	movgt	r5, r4
 8000df6:	f04f 0305 	mov.w	r3, #5
 8000dfa:	687c      	ldr	r4, [r7, #4]
 8000dfc:	fb94 f4f3 	sdiv	r4, r4, r3
 8000e00:	bfd8      	it	le
 8000e02:	426d      	negle	r5, r5
 8000e04:	f04f 0904 	mov.w	r9, #4
 8000e08:	e019      	b.n	8000e3e <_ZN11CBrokenLine7processEv+0x11e>
 8000e0a:	b94c      	cbnz	r4, 8000e20 <_ZN11CBrokenLine7processEv+0x100>
 8000e0c:	2600      	movs	r6, #0
 8000e0e:	687c      	ldr	r4, [r7, #4]
 8000e10:	230a      	movs	r3, #10
 8000e12:	f04f 0905 	mov.w	r9, #5
 8000e16:	fb94 f4f3 	sdiv	r4, r4, r3
 8000e1a:	46b0      	mov	r8, r6
 8000e1c:	4635      	mov	r5, r6
 8000e1e:	e00e      	b.n	8000e3e <_ZN11CBrokenLine7processEv+0x11e>
 8000e20:	3c01      	subs	r4, #1
 8000e22:	e00c      	b.n	8000e3e <_ZN11CBrokenLine7processEv+0x11e>
 8000e24:	b154      	cbz	r4, 8000e3c <_ZN11CBrokenLine7processEv+0x11c>
 8000e26:	68bb      	ldr	r3, [r7, #8]
 8000e28:	2564      	movs	r5, #100	; 0x64
 8000e2a:	436b      	muls	r3, r5
 8000e2c:	429e      	cmp	r6, r3
 8000e2e:	bfb8      	it	lt
 8000e30:	3632      	addlt	r6, #50	; 0x32
 8000e32:	3c01      	subs	r4, #1
 8000e34:	fb96 f5f5 	sdiv	r5, r6, r5
 8000e38:	46a8      	mov	r8, r5
 8000e3a:	e000      	b.n	8000e3e <_ZN11CBrokenLine7processEv+0x11e>
 8000e3c:	46a1      	mov	r9, r4
 8000e3e:	6838      	ldr	r0, [r7, #0]
 8000e40:	4641      	mov	r1, r8
 8000e42:	462a      	mov	r2, r5
 8000e44:	f7ff f9bd 	bl	80001c2 <_ZN6CRobot10set_motorsEii>
 8000e48:	e772      	b.n	8000d30 <_ZN11CBrokenLine7processEv+0x10>
 8000e4a:	2100      	movs	r1, #0
 8000e4c:	6838      	ldr	r0, [r7, #0]
 8000e4e:	460a      	mov	r2, r1
 8000e50:	e8bd 43f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8000e54:	f7ff b9b5 	b.w	80001c2 <_ZN6CRobot10set_motorsEii>

08000e58 <_ZN11CQPredictor4initEv>:
 8000e58:	1d03      	adds	r3, r0, #4
 8000e5a:	3044      	adds	r0, #68	; 0x44
 8000e5c:	2200      	movs	r2, #0
 8000e5e:	f843 2b04 	str.w	r2, [r3], #4
 8000e62:	4283      	cmp	r3, r0
 8000e64:	d1fa      	bne.n	8000e5c <_ZN11CQPredictor4initEv+0x4>
 8000e66:	4770      	bx	lr

08000e68 <thread_ending>:
 8000e68:	b672      	cpsid	i
 8000e6a:	4b05      	ldr	r3, [pc, #20]	; (8000e80 <thread_ending+0x18>)
 8000e6c:	681a      	ldr	r2, [r3, #0]
 8000e6e:	4b05      	ldr	r3, [pc, #20]	; (8000e84 <thread_ending+0x1c>)
 8000e70:	210c      	movs	r1, #12
 8000e72:	fb01 3302 	mla	r3, r1, r2, r3
 8000e76:	2200      	movs	r2, #0
 8000e78:	605a      	str	r2, [r3, #4]
 8000e7a:	b662      	cpsie	i
 8000e7c:	bf00      	nop
 8000e7e:	e7fd      	b.n	8000e7c <thread_ending+0x14>
 8000e80:	20000a94 	.word	0x20000a94
 8000e84:	20000a4c 	.word	0x20000a4c

08000e88 <null_thread>:
 8000e88:	b508      	push	{r3, lr}
 8000e8a:	f001 fc1f 	bl	80026cc <sleep>
 8000e8e:	e7fc      	b.n	8000e8a <null_thread+0x2>

08000e90 <scheduler>:
 8000e90:	b570      	push	{r4, r5, r6, lr}
 8000e92:	2200      	movs	r2, #0
 8000e94:	4611      	mov	r1, r2
 8000e96:	4b15      	ldr	r3, [pc, #84]	; (8000eec <scheduler+0x5c>)
 8000e98:	200c      	movs	r0, #12
 8000e9a:	fb00 f401 	mul.w	r4, r0, r1
 8000e9e:	191e      	adds	r6, r3, r4
 8000ea0:	6875      	ldr	r5, [r6, #4]
 8000ea2:	f015 0f02 	tst.w	r5, #2
 8000ea6:	461d      	mov	r5, r3
 8000ea8:	d10a      	bne.n	8000ec0 <scheduler+0x30>
 8000eaa:	6876      	ldr	r6, [r6, #4]
 8000eac:	07f6      	lsls	r6, r6, #31
 8000eae:	d507      	bpl.n	8000ec0 <scheduler+0x30>
 8000eb0:	4350      	muls	r0, r2
 8000eb2:	5b1c      	ldrh	r4, [r3, r4]
 8000eb4:	5a18      	ldrh	r0, [r3, r0]
 8000eb6:	b2a4      	uxth	r4, r4
 8000eb8:	b280      	uxth	r0, r0
 8000eba:	4284      	cmp	r4, r0
 8000ebc:	bf38      	it	cc
 8000ebe:	460a      	movcc	r2, r1
 8000ec0:	200c      	movs	r0, #12
 8000ec2:	4348      	muls	r0, r1
 8000ec4:	5a1c      	ldrh	r4, [r3, r0]
 8000ec6:	b2a4      	uxth	r4, r4
 8000ec8:	b11c      	cbz	r4, 8000ed2 <scheduler+0x42>
 8000eca:	5a1c      	ldrh	r4, [r3, r0]
 8000ecc:	3c01      	subs	r4, #1
 8000ece:	b2a4      	uxth	r4, r4
 8000ed0:	521c      	strh	r4, [r3, r0]
 8000ed2:	3101      	adds	r1, #1
 8000ed4:	2906      	cmp	r1, #6
 8000ed6:	d1de      	bne.n	8000e96 <scheduler+0x6>
 8000ed8:	230c      	movs	r3, #12
 8000eda:	4353      	muls	r3, r2
 8000edc:	18e9      	adds	r1, r5, r3
 8000ede:	8849      	ldrh	r1, [r1, #2]
 8000ee0:	b289      	uxth	r1, r1
 8000ee2:	52e9      	strh	r1, [r5, r3]
 8000ee4:	4b02      	ldr	r3, [pc, #8]	; (8000ef0 <scheduler+0x60>)
 8000ee6:	601a      	str	r2, [r3, #0]
 8000ee8:	bd70      	pop	{r4, r5, r6, pc}
 8000eea:	bf00      	nop
 8000eec:	20000a4c 	.word	0x20000a4c
 8000ef0:	20000a94 	.word	0x20000a94

08000ef4 <SysTick_Handler>:
 8000ef4:	e92d 0ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 8000ef8:	f3ef 8308 	mrs	r3, MSP
 8000efc:	4c0f      	ldr	r4, [pc, #60]	; (8000f3c <SysTick_Handler+0x48>)
 8000efe:	4d10      	ldr	r5, [pc, #64]	; (8000f40 <SysTick_Handler+0x4c>)
 8000f00:	6822      	ldr	r2, [r4, #0]
 8000f02:	3201      	adds	r2, #1
 8000f04:	bf1d      	ittte	ne
 8000f06:	6822      	ldrne	r2, [r4, #0]
 8000f08:	210c      	movne	r1, #12
 8000f0a:	fb01 5202 	mlane	r2, r1, r2, r5
 8000f0e:	2300      	moveq	r3, #0
 8000f10:	bf14      	ite	ne
 8000f12:	6093      	strne	r3, [r2, #8]
 8000f14:	6023      	streq	r3, [r4, #0]
 8000f16:	f7ff ffbb 	bl	8000e90 <scheduler>
 8000f1a:	4b0a      	ldr	r3, [pc, #40]	; (8000f44 <SysTick_Handler+0x50>)
 8000f1c:	681a      	ldr	r2, [r3, #0]
 8000f1e:	3201      	adds	r2, #1
 8000f20:	601a      	str	r2, [r3, #0]
 8000f22:	6822      	ldr	r2, [r4, #0]
 8000f24:	230c      	movs	r3, #12
 8000f26:	fb03 5302 	mla	r3, r3, r2, r5
 8000f2a:	689a      	ldr	r2, [r3, #8]
 8000f2c:	f06f 0306 	mvn.w	r3, #6
 8000f30:	469e      	mov	lr, r3
 8000f32:	f382 8808 	msr	MSP, r2
 8000f36:	e8bd 0ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 8000f3a:	4770      	bx	lr
 8000f3c:	20000a94 	.word	0x20000a94
 8000f40:	20000a4c 	.word	0x20000a4c
 8000f44:	20000a98 	.word	0x20000a98

08000f48 <sched_off>:
 8000f48:	b672      	cpsid	i
 8000f4a:	4770      	bx	lr

08000f4c <sched_on>:
 8000f4c:	b662      	cpsie	i
 8000f4e:	4770      	bx	lr

08000f50 <yield>:
 8000f50:	bf00      	nop
 8000f52:	4770      	bx	lr

08000f54 <get_thread_id>:
 8000f54:	b082      	sub	sp, #8
 8000f56:	b672      	cpsid	i
 8000f58:	4b03      	ldr	r3, [pc, #12]	; (8000f68 <get_thread_id+0x14>)
 8000f5a:	681b      	ldr	r3, [r3, #0]
 8000f5c:	9301      	str	r3, [sp, #4]
 8000f5e:	b662      	cpsie	i
 8000f60:	9801      	ldr	r0, [sp, #4]
 8000f62:	b002      	add	sp, #8
 8000f64:	4770      	bx	lr
 8000f66:	bf00      	nop
 8000f68:	20000a94 	.word	0x20000a94

08000f6c <kernel_start>:
 8000f6c:	b508      	push	{r3, lr}
 8000f6e:	f001 fb9b 	bl	80026a8 <sys_tick_init>
 8000f72:	bf00      	nop
 8000f74:	e7fd      	b.n	8000f72 <kernel_start+0x6>
	...

08000f78 <create_thread>:
 8000f78:	f022 0203 	bic.w	r2, r2, #3
 8000f7c:	3a40      	subs	r2, #64	; 0x40
 8000f7e:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8000f82:	eb01 0e02 	add.w	lr, r1, r2
 8000f86:	f102 0634 	add.w	r6, r2, #52	; 0x34
 8000f8a:	f102 0738 	add.w	r7, r2, #56	; 0x38
 8000f8e:	323c      	adds	r2, #60	; 0x3c
 8000f90:	440e      	add	r6, r1
 8000f92:	440f      	add	r7, r1
 8000f94:	4411      	add	r1, r2
 8000f96:	2200      	movs	r2, #0
 8000f98:	b672      	cpsid	i
 8000f9a:	f8df c054 	ldr.w	ip, [pc, #84]	; 8000ff0 <create_thread+0x78>
 8000f9e:	250c      	movs	r5, #12
 8000fa0:	4355      	muls	r5, r2
 8000fa2:	eb0c 0405 	add.w	r4, ip, r5
 8000fa6:	f8d4 8004 	ldr.w	r8, [r4, #4]
 8000faa:	f018 0f01 	tst.w	r8, #1
 8000fae:	d114      	bne.n	8000fda <create_thread+0x62>
 8000fb0:	f8df 8040 	ldr.w	r8, [pc, #64]	; 8000ff4 <create_thread+0x7c>
 8000fb4:	f8c4 e008 	str.w	lr, [r4, #8]
 8000fb8:	2b05      	cmp	r3, #5
 8000fba:	f8c6 8000 	str.w	r8, [r6]
 8000fbe:	bf98      	it	ls
 8000fc0:	2306      	movls	r3, #6
 8000fc2:	f04f 5804 	mov.w	r8, #553648128	; 0x21000000
 8000fc6:	6038      	str	r0, [r7, #0]
 8000fc8:	f8c1 8000 	str.w	r8, [r1]
 8000fcc:	8063      	strh	r3, [r4, #2]
 8000fce:	f82c 3005 	strh.w	r3, [ip, r5]
 8000fd2:	2501      	movs	r5, #1
 8000fd4:	6065      	str	r5, [r4, #4]
 8000fd6:	4614      	mov	r4, r2
 8000fd8:	e000      	b.n	8000fdc <create_thread+0x64>
 8000fda:	2406      	movs	r4, #6
 8000fdc:	b662      	cpsie	i
 8000fde:	3201      	adds	r2, #1
 8000fe0:	2a06      	cmp	r2, #6
 8000fe2:	d001      	beq.n	8000fe8 <create_thread+0x70>
 8000fe4:	2c06      	cmp	r4, #6
 8000fe6:	d0d7      	beq.n	8000f98 <create_thread+0x20>
 8000fe8:	4620      	mov	r0, r4
 8000fea:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8000fee:	bf00      	nop
 8000ff0:	20000a4c 	.word	0x20000a4c
 8000ff4:	08000e69 	.word	0x08000e69

08000ff8 <kernel_init>:
 8000ff8:	b530      	push	{r4, r5, lr}
 8000ffa:	2300      	movs	r3, #0
 8000ffc:	480c      	ldr	r0, [pc, #48]	; (8001030 <kernel_init+0x38>)
 8000ffe:	220c      	movs	r2, #12
 8001000:	435a      	muls	r2, r3
 8001002:	2406      	movs	r4, #6
 8001004:	1885      	adds	r5, r0, r2
 8001006:	3301      	adds	r3, #1
 8001008:	2100      	movs	r1, #0
 800100a:	42a3      	cmp	r3, r4
 800100c:	6069      	str	r1, [r5, #4]
 800100e:	806c      	strh	r4, [r5, #2]
 8001010:	5284      	strh	r4, [r0, r2]
 8001012:	d1f3      	bne.n	8000ffc <kernel_init+0x4>
 8001014:	4b07      	ldr	r3, [pc, #28]	; (8001034 <kernel_init+0x3c>)
 8001016:	4808      	ldr	r0, [pc, #32]	; (8001038 <kernel_init+0x40>)
 8001018:	6019      	str	r1, [r3, #0]
 800101a:	4b08      	ldr	r3, [pc, #32]	; (800103c <kernel_init+0x44>)
 800101c:	4908      	ldr	r1, [pc, #32]	; (8001040 <kernel_init+0x48>)
 800101e:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8001022:	601a      	str	r2, [r3, #0]
 8001024:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
 8001028:	2280      	movs	r2, #128	; 0x80
 800102a:	23ff      	movs	r3, #255	; 0xff
 800102c:	f7ff bfa4 	b.w	8000f78 <create_thread>
 8001030:	20000a4c 	.word	0x20000a4c
 8001034:	20000a98 	.word	0x20000a98
 8001038:	08000e89 	.word	0x08000e89
 800103c:	20000a94 	.word	0x20000a94
 8001040:	20000a9c 	.word	0x20000a9c

08001044 <set_wait_state>:
 8001044:	b507      	push	{r0, r1, r2, lr}
 8001046:	f7ff ff85 	bl	8000f54 <get_thread_id>
 800104a:	9000      	str	r0, [sp, #0]
 800104c:	b672      	cpsid	i
 800104e:	4b0d      	ldr	r3, [pc, #52]	; (8001084 <set_wait_state+0x40>)
 8001050:	9a00      	ldr	r2, [sp, #0]
 8001052:	210c      	movs	r1, #12
 8001054:	fb01 3202 	mla	r2, r1, r2, r3
 8001058:	6851      	ldr	r1, [r2, #4]
 800105a:	f041 0102 	orr.w	r1, r1, #2
 800105e:	6051      	str	r1, [r2, #4]
 8001060:	b672      	cpsid	i
 8001062:	9a00      	ldr	r2, [sp, #0]
 8001064:	210c      	movs	r1, #12
 8001066:	fb01 3202 	mla	r2, r1, r2, r3
 800106a:	6852      	ldr	r2, [r2, #4]
 800106c:	9201      	str	r2, [sp, #4]
 800106e:	b662      	cpsie	i
 8001070:	9a01      	ldr	r2, [sp, #4]
 8001072:	0791      	lsls	r1, r2, #30
 8001074:	d500      	bpl.n	8001078 <set_wait_state+0x34>
 8001076:	bf00      	nop
 8001078:	9a01      	ldr	r2, [sp, #4]
 800107a:	0792      	lsls	r2, r2, #30
 800107c:	d4f0      	bmi.n	8001060 <set_wait_state+0x1c>
 800107e:	b003      	add	sp, #12
 8001080:	f85d fb04 	ldr.w	pc, [sp], #4
 8001084:	20000a4c 	.word	0x20000a4c

08001088 <wake_up_threads>:
 8001088:	2300      	movs	r3, #0
 800108a:	b672      	cpsid	i
 800108c:	4906      	ldr	r1, [pc, #24]	; (80010a8 <wake_up_threads+0x20>)
 800108e:	220c      	movs	r2, #12
 8001090:	fb02 1203 	mla	r2, r2, r3, r1
 8001094:	6851      	ldr	r1, [r2, #4]
 8001096:	f021 0102 	bic.w	r1, r1, #2
 800109a:	6051      	str	r1, [r2, #4]
 800109c:	b662      	cpsie	i
 800109e:	3301      	adds	r3, #1
 80010a0:	2b06      	cmp	r3, #6
 80010a2:	d1f2      	bne.n	800108a <wake_up_threads+0x2>
 80010a4:	4770      	bx	lr
 80010a6:	bf00      	nop
 80010a8:	20000a4c 	.word	0x20000a4c

080010ac <messages_init>:
 80010ac:	4a0a      	ldr	r2, [pc, #40]	; (80010d8 <messages_init+0x2c>)
 80010ae:	2300      	movs	r3, #0
 80010b0:	b510      	push	{r4, lr}
 80010b2:	6013      	str	r3, [r2, #0]
 80010b4:	6053      	str	r3, [r2, #4]
 80010b6:	6093      	str	r3, [r2, #8]
 80010b8:	60d3      	str	r3, [r2, #12]
 80010ba:	6113      	str	r3, [r2, #16]
 80010bc:	6153      	str	r3, [r2, #20]
 80010be:	4c07      	ldr	r4, [pc, #28]	; (80010dc <messages_init+0x30>)
 80010c0:	0118      	lsls	r0, r3, #4
 80010c2:	1821      	adds	r1, r4, r0
 80010c4:	3301      	adds	r3, #1
 80010c6:	2200      	movs	r2, #0
 80010c8:	2b04      	cmp	r3, #4
 80010ca:	604a      	str	r2, [r1, #4]
 80010cc:	5022      	str	r2, [r4, r0]
 80010ce:	60ca      	str	r2, [r1, #12]
 80010d0:	608a      	str	r2, [r1, #8]
 80010d2:	d1f4      	bne.n	80010be <messages_init+0x12>
 80010d4:	bd10      	pop	{r4, pc}
 80010d6:	bf00      	nop
 80010d8:	20000b1c 	.word	0x20000b1c
 80010dc:	20000b34 	.word	0x20000b34

080010e0 <putc_>:
 80010e0:	b538      	push	{r3, r4, r5, lr}
 80010e2:	4c06      	ldr	r4, [pc, #24]	; (80010fc <putc_+0x1c>)
 80010e4:	4605      	mov	r5, r0
 80010e6:	4620      	mov	r0, r4
 80010e8:	f000 f91f 	bl	800132a <mutex_lock>
 80010ec:	4628      	mov	r0, r5
 80010ee:	f001 f8b5 	bl	800225c <uart_write>
 80010f2:	4620      	mov	r0, r4
 80010f4:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 80010f8:	f000 b933 	b.w	8001362 <mutex_unlock>
 80010fc:	20000b74 	.word	0x20000b74

08001100 <puts_>:
 8001100:	b510      	push	{r4, lr}
 8001102:	4604      	mov	r4, r0
 8001104:	4807      	ldr	r0, [pc, #28]	; (8001124 <puts_+0x24>)
 8001106:	f000 f910 	bl	800132a <mutex_lock>
 800110a:	3c01      	subs	r4, #1
 800110c:	f814 0f01 	ldrb.w	r0, [r4, #1]!
 8001110:	b110      	cbz	r0, 8001118 <puts_+0x18>
 8001112:	f7ff ffe5 	bl	80010e0 <putc_>
 8001116:	e7f9      	b.n	800110c <puts_+0xc>
 8001118:	4802      	ldr	r0, [pc, #8]	; (8001124 <puts_+0x24>)
 800111a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800111e:	f000 b920 	b.w	8001362 <mutex_unlock>
 8001122:	bf00      	nop
 8001124:	20000b80 	.word	0x20000b80

08001128 <puti_>:
 8001128:	b530      	push	{r4, r5, lr}
 800112a:	b085      	sub	sp, #20
 800112c:	1e03      	subs	r3, r0, #0
 800112e:	f04f 0200 	mov.w	r2, #0
 8001132:	bfba      	itte	lt
 8001134:	425b      	neglt	r3, r3
 8001136:	2401      	movlt	r4, #1
 8001138:	4614      	movge	r4, r2
 800113a:	f88d 200f 	strb.w	r2, [sp, #15]
 800113e:	210a      	movs	r1, #10
 8001140:	220a      	movs	r2, #10
 8001142:	a801      	add	r0, sp, #4
 8001144:	fb93 f5f2 	sdiv	r5, r3, r2
 8001148:	fb02 3315 	mls	r3, r2, r5, r3
 800114c:	3330      	adds	r3, #48	; 0x30
 800114e:	540b      	strb	r3, [r1, r0]
 8001150:	1e4a      	subs	r2, r1, #1
 8001152:	462b      	mov	r3, r5
 8001154:	b10d      	cbz	r5, 800115a <puti_+0x32>
 8001156:	4611      	mov	r1, r2
 8001158:	e7f2      	b.n	8001140 <puti_+0x18>
 800115a:	b12c      	cbz	r4, 8001168 <puti_+0x40>
 800115c:	ab04      	add	r3, sp, #16
 800115e:	4413      	add	r3, r2
 8001160:	212d      	movs	r1, #45	; 0x2d
 8001162:	f803 1c0c 	strb.w	r1, [r3, #-12]
 8001166:	4611      	mov	r1, r2
 8001168:	4408      	add	r0, r1
 800116a:	f7ff ffc9 	bl	8001100 <puts_>
 800116e:	b005      	add	sp, #20
 8001170:	bd30      	pop	{r4, r5, pc}

08001172 <putui_>:
 8001172:	b51f      	push	{r0, r1, r2, r3, r4, lr}
 8001174:	2300      	movs	r3, #0
 8001176:	f88d 300f 	strb.w	r3, [sp, #15]
 800117a:	220a      	movs	r2, #10
 800117c:	230a      	movs	r3, #10
 800117e:	a901      	add	r1, sp, #4
 8001180:	fbb0 f4f3 	udiv	r4, r0, r3
 8001184:	fb03 0314 	mls	r3, r3, r4, r0
 8001188:	3330      	adds	r3, #48	; 0x30
 800118a:	5453      	strb	r3, [r2, r1]
 800118c:	4620      	mov	r0, r4
 800118e:	1e53      	subs	r3, r2, #1
 8001190:	b10c      	cbz	r4, 8001196 <putui_+0x24>
 8001192:	461a      	mov	r2, r3
 8001194:	e7f2      	b.n	800117c <putui_+0xa>
 8001196:	1888      	adds	r0, r1, r2
 8001198:	f7ff ffb2 	bl	8001100 <puts_>
 800119c:	b004      	add	sp, #16
 800119e:	bd10      	pop	{r4, pc}

080011a0 <putx_>:
 80011a0:	b51f      	push	{r0, r1, r2, r3, r4, lr}
 80011a2:	2300      	movs	r3, #0
 80011a4:	f88d 300f 	strb.w	r3, [sp, #15]
 80011a8:	220a      	movs	r2, #10
 80011aa:	f000 030f 	and.w	r3, r0, #15
 80011ae:	2b09      	cmp	r3, #9
 80011b0:	a901      	add	r1, sp, #4
 80011b2:	bf94      	ite	ls
 80011b4:	3330      	addls	r3, #48	; 0x30
 80011b6:	3357      	addhi	r3, #87	; 0x57
 80011b8:	0900      	lsrs	r0, r0, #4
 80011ba:	548b      	strb	r3, [r1, r2]
 80011bc:	f102 33ff 	add.w	r3, r2, #4294967295	; 0xffffffff
 80011c0:	d001      	beq.n	80011c6 <putx_+0x26>
 80011c2:	461a      	mov	r2, r3
 80011c4:	e7f1      	b.n	80011aa <putx_+0xa>
 80011c6:	1888      	adds	r0, r1, r2
 80011c8:	f7ff ff9a 	bl	8001100 <puts_>
 80011cc:	b005      	add	sp, #20
 80011ce:	f85d fb04 	ldr.w	pc, [sp], #4
	...

080011d4 <printf_>:
 80011d4:	b40f      	push	{r0, r1, r2, r3}
 80011d6:	b537      	push	{r0, r1, r2, r4, r5, lr}
 80011d8:	ac06      	add	r4, sp, #24
 80011da:	4826      	ldr	r0, [pc, #152]	; (8001274 <printf_+0xa0>)
 80011dc:	f854 5b04 	ldr.w	r5, [r4], #4
 80011e0:	f000 f8a3 	bl	800132a <mutex_lock>
 80011e4:	9401      	str	r4, [sp, #4]
 80011e6:	2400      	movs	r4, #0
 80011e8:	5d28      	ldrb	r0, [r5, r4]
 80011ea:	2800      	cmp	r0, #0
 80011ec:	d039      	beq.n	8001262 <printf_+0x8e>
 80011ee:	2825      	cmp	r0, #37	; 0x25
 80011f0:	d003      	beq.n	80011fa <printf_+0x26>
 80011f2:	f7ff ff75 	bl	80010e0 <putc_>
 80011f6:	3401      	adds	r4, #1
 80011f8:	e7f6      	b.n	80011e8 <printf_+0x14>
 80011fa:	192b      	adds	r3, r5, r4
 80011fc:	7858      	ldrb	r0, [r3, #1]
 80011fe:	2869      	cmp	r0, #105	; 0x69
 8001200:	d016      	beq.n	8001230 <printf_+0x5c>
 8001202:	d808      	bhi.n	8001216 <printf_+0x42>
 8001204:	2825      	cmp	r0, #37	; 0x25
 8001206:	d028      	beq.n	800125a <printf_+0x86>
 8001208:	2863      	cmp	r0, #99	; 0x63
 800120a:	d128      	bne.n	800125e <printf_+0x8a>
 800120c:	9b01      	ldr	r3, [sp, #4]
 800120e:	1d1a      	adds	r2, r3, #4
 8001210:	9201      	str	r2, [sp, #4]
 8001212:	7818      	ldrb	r0, [r3, #0]
 8001214:	e021      	b.n	800125a <printf_+0x86>
 8001216:	2875      	cmp	r0, #117	; 0x75
 8001218:	d011      	beq.n	800123e <printf_+0x6a>
 800121a:	2878      	cmp	r0, #120	; 0x78
 800121c:	d016      	beq.n	800124c <printf_+0x78>
 800121e:	2873      	cmp	r0, #115	; 0x73
 8001220:	d11d      	bne.n	800125e <printf_+0x8a>
 8001222:	9b01      	ldr	r3, [sp, #4]
 8001224:	1d1a      	adds	r2, r3, #4
 8001226:	6818      	ldr	r0, [r3, #0]
 8001228:	9201      	str	r2, [sp, #4]
 800122a:	f7ff ff69 	bl	8001100 <puts_>
 800122e:	e016      	b.n	800125e <printf_+0x8a>
 8001230:	9b01      	ldr	r3, [sp, #4]
 8001232:	1d1a      	adds	r2, r3, #4
 8001234:	6818      	ldr	r0, [r3, #0]
 8001236:	9201      	str	r2, [sp, #4]
 8001238:	f7ff ff76 	bl	8001128 <puti_>
 800123c:	e00f      	b.n	800125e <printf_+0x8a>
 800123e:	9b01      	ldr	r3, [sp, #4]
 8001240:	1d1a      	adds	r2, r3, #4
 8001242:	6818      	ldr	r0, [r3, #0]
 8001244:	9201      	str	r2, [sp, #4]
 8001246:	f7ff ff94 	bl	8001172 <putui_>
 800124a:	e008      	b.n	800125e <printf_+0x8a>
 800124c:	9b01      	ldr	r3, [sp, #4]
 800124e:	1d1a      	adds	r2, r3, #4
 8001250:	6818      	ldr	r0, [r3, #0]
 8001252:	9201      	str	r2, [sp, #4]
 8001254:	f7ff ffa4 	bl	80011a0 <putx_>
 8001258:	e001      	b.n	800125e <printf_+0x8a>
 800125a:	f7ff ff41 	bl	80010e0 <putc_>
 800125e:	3402      	adds	r4, #2
 8001260:	e7c2      	b.n	80011e8 <printf_+0x14>
 8001262:	4804      	ldr	r0, [pc, #16]	; (8001274 <printf_+0xa0>)
 8001264:	f000 f87d 	bl	8001362 <mutex_unlock>
 8001268:	b003      	add	sp, #12
 800126a:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
 800126e:	b004      	add	sp, #16
 8001270:	4770      	bx	lr
 8001272:	bf00      	nop
 8001274:	20000b7c 	.word	0x20000b7c

08001278 <stdio_init>:
 8001278:	b510      	push	{r4, lr}
 800127a:	480e      	ldr	r0, [pc, #56]	; (80012b4 <stdio_init+0x3c>)
 800127c:	f000 f84b 	bl	8001316 <mutex_init>
 8001280:	480d      	ldr	r0, [pc, #52]	; (80012b8 <stdio_init+0x40>)
 8001282:	f000 f848 	bl	8001316 <mutex_init>
 8001286:	480d      	ldr	r0, [pc, #52]	; (80012bc <stdio_init+0x44>)
 8001288:	f000 f845 	bl	8001316 <mutex_init>
 800128c:	480c      	ldr	r0, [pc, #48]	; (80012c0 <stdio_init+0x48>)
 800128e:	f000 f842 	bl	8001316 <mutex_init>
 8001292:	2408      	movs	r4, #8
 8001294:	2020      	movs	r0, #32
 8001296:	f7ff ff23 	bl	80010e0 <putc_>
 800129a:	3c01      	subs	r4, #1
 800129c:	d1fa      	bne.n	8001294 <stdio_init+0x1c>
 800129e:	2420      	movs	r4, #32
 80012a0:	200a      	movs	r0, #10
 80012a2:	f7ff ff1d 	bl	80010e0 <putc_>
 80012a6:	3c01      	subs	r4, #1
 80012a8:	d1fa      	bne.n	80012a0 <stdio_init+0x28>
 80012aa:	4806      	ldr	r0, [pc, #24]	; (80012c4 <stdio_init+0x4c>)
 80012ac:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80012b0:	f7ff bf90 	b.w	80011d4 <printf_>
 80012b4:	20000b74 	.word	0x20000b74
 80012b8:	20000b78 	.word	0x20000b78
 80012bc:	20000b80 	.word	0x20000b80
 80012c0:	20000b7c 	.word	0x20000b7c
 80012c4:	08004602 	.word	0x08004602

080012c8 <mem_init>:
 80012c8:	4b06      	ldr	r3, [pc, #24]	; (80012e4 <mem_init+0x1c>)
 80012ca:	4a07      	ldr	r2, [pc, #28]	; (80012e8 <mem_init+0x20>)
 80012cc:	601a      	str	r2, [r3, #0]
 80012ce:	4907      	ldr	r1, [pc, #28]	; (80012ec <mem_init+0x24>)
 80012d0:	4b07      	ldr	r3, [pc, #28]	; (80012f0 <mem_init+0x28>)
 80012d2:	4808      	ldr	r0, [pc, #32]	; (80012f4 <mem_init+0x2c>)
 80012d4:	1a5b      	subs	r3, r3, r1
 80012d6:	4908      	ldr	r1, [pc, #32]	; (80012f8 <mem_init+0x30>)
 80012d8:	4413      	add	r3, r2
 80012da:	600b      	str	r3, [r1, #0]
 80012dc:	4b07      	ldr	r3, [pc, #28]	; (80012fc <mem_init+0x34>)
 80012de:	601a      	str	r2, [r3, #0]
 80012e0:	f000 b819 	b.w	8001316 <mutex_init>
 80012e4:	20000b84 	.word	0x20000b84
 80012e8:	2000104c 	.word	0x2000104c
 80012ec:	2000104c 	.word	0x2000104c
 80012f0:	20004000 	.word	0x20004000
 80012f4:	20000b90 	.word	0x20000b90
 80012f8:	20000b8c 	.word	0x20000b8c
 80012fc:	20000b88 	.word	0x20000b88

08001300 <lib_os_init>:
 8001300:	b508      	push	{r3, lr}
 8001302:	f7ff fe79 	bl	8000ff8 <kernel_init>
 8001306:	f7ff ffdf 	bl	80012c8 <mem_init>
 800130a:	f7ff fecf 	bl	80010ac <messages_init>
 800130e:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001312:	f7ff bfb1 	b.w	8001278 <stdio_init>

08001316 <mutex_init>:
 8001316:	b510      	push	{r4, lr}
 8001318:	4604      	mov	r4, r0
 800131a:	f7ff fe15 	bl	8000f48 <sched_off>
 800131e:	2300      	movs	r3, #0
 8001320:	6023      	str	r3, [r4, #0]
 8001322:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8001326:	f7ff be11 	b.w	8000f4c <sched_on>

0800132a <mutex_lock>:
 800132a:	b513      	push	{r0, r1, r4, lr}
 800132c:	4604      	mov	r4, r0
 800132e:	f7ff fe0b 	bl	8000f48 <sched_off>
 8001332:	6823      	ldr	r3, [r4, #0]
 8001334:	9301      	str	r3, [sp, #4]
 8001336:	f7ff fe09 	bl	8000f4c <sched_on>
 800133a:	9b01      	ldr	r3, [sp, #4]
 800133c:	b10b      	cbz	r3, 8001342 <mutex_lock+0x18>
 800133e:	f7ff fe81 	bl	8001044 <set_wait_state>
 8001342:	9b01      	ldr	r3, [sp, #4]
 8001344:	2b00      	cmp	r3, #0
 8001346:	d1f2      	bne.n	800132e <mutex_lock+0x4>
 8001348:	f7ff fdfe 	bl	8000f48 <sched_off>
 800134c:	6823      	ldr	r3, [r4, #0]
 800134e:	9301      	str	r3, [sp, #4]
 8001350:	9b01      	ldr	r3, [sp, #4]
 8001352:	2b00      	cmp	r3, #0
 8001354:	d1eb      	bne.n	800132e <mutex_lock+0x4>
 8001356:	2301      	movs	r3, #1
 8001358:	6023      	str	r3, [r4, #0]
 800135a:	f7ff fdf7 	bl	8000f4c <sched_on>
 800135e:	b002      	add	sp, #8
 8001360:	bd10      	pop	{r4, pc}

08001362 <mutex_unlock>:
 8001362:	b508      	push	{r3, lr}
 8001364:	f7ff ffd7 	bl	8001316 <mutex_init>
 8001368:	f7ff fe8e 	bl	8001088 <wake_up_threads>
 800136c:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001370:	f7ff bdee 	b.w	8000f50 <yield>

08001374 <m_abs>:
 8001374:	ee07 0a90 	vmov	s15, r0
 8001378:	eef5 7ac0 	vcmpe.f32	s15, #0.0
 800137c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001380:	bf48      	it	mi
 8001382:	eef1 7a67 	vnegmi.f32	s15, s15
 8001386:	ee17 0a90 	vmov	r0, s15
 800138a:	4770      	bx	lr

0800138c <m_saturate>:
 800138c:	ee07 0a90 	vmov	s15, r0
 8001390:	ee06 1a90 	vmov	s13, r1
 8001394:	eef4 7a66 	vcmp.f32	s15, s13
 8001398:	ee07 2a10 	vmov	s14, r2
 800139c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80013a0:	bf48      	it	mi
 80013a2:	eef0 7a66 	vmovmi.f32	s15, s13
 80013a6:	eef4 7a47 	vcmp.f32	s15, s14
 80013aa:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80013ae:	bfcc      	ite	gt
 80013b0:	ee17 0a10 	vmovgt	r0, s14
 80013b4:	ee17 0a90 	vmovle	r0, s15
 80013b8:	4770      	bx	lr

080013ba <m_min>:
 80013ba:	ee07 0a10 	vmov	s14, r0
 80013be:	ee07 1a90 	vmov	s15, r1
 80013c2:	eeb4 7ae7 	vcmpe.f32	s14, s15
 80013c6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80013ca:	bf54      	ite	pl
 80013cc:	ee17 0a90 	vmovpl	r0, s15
 80013d0:	ee17 0a10 	vmovmi	r0, s14
 80013d4:	4770      	bx	lr
	...

080013d8 <pid_init>:
 80013d8:	ee07 2a90 	vmov	s15, r2
 80013dc:	ee06 3a10 	vmov	s12, r3
 80013e0:	ed9d 7a00 	vldr	s14, [sp]
 80013e4:	eddd 6a01 	vldr	s13, [sp, #4]
 80013e8:	6241      	str	r1, [r0, #36]	; 0x24
 80013ea:	ee37 6a86 	vadd.f32	s12, s15, s12
 80013ee:	ee77 5a07 	vadd.f32	s11, s14, s14
 80013f2:	ee36 6a07 	vadd.f32	s12, s12, s14
 80013f6:	eef1 7a67 	vneg.f32	s15, s15
 80013fa:	ee36 6a26 	vadd.f32	s12, s12, s13
 80013fe:	ee77 7ae5 	vsub.f32	s15, s15, s11
 8001402:	ed80 6a04 	vstr	s12, [r0, #16]
 8001406:	ed9f 6a0b 	vldr	s12, [pc, #44]	; 8001434 <pid_init+0x5c>
 800140a:	ee26 6a86 	vmul.f32	s12, s13, s12
 800140e:	2200      	movs	r2, #0
 8001410:	ee77 7ac6 	vsub.f32	s15, s15, s12
 8001414:	ee37 7a06 	vadd.f32	s14, s14, s12
 8001418:	eef1 6a66 	vneg.f32	s13, s13
 800141c:	6002      	str	r2, [r0, #0]
 800141e:	6042      	str	r2, [r0, #4]
 8001420:	6082      	str	r2, [r0, #8]
 8001422:	60c2      	str	r2, [r0, #12]
 8001424:	edc0 7a05 	vstr	s15, [r0, #20]
 8001428:	ed80 7a06 	vstr	s14, [r0, #24]
 800142c:	edc0 6a07 	vstr	s13, [r0, #28]
 8001430:	6202      	str	r2, [r0, #32]
 8001432:	4770      	bx	lr
 8001434:	40400000 	.word	0x40400000

08001438 <pid_process>:
 8001438:	edd0 7a08 	vldr	s15, [r0, #32]
 800143c:	ed90 5a04 	vldr	s10, [r0, #16]
 8001440:	ed90 6a00 	vldr	s12, [r0]
 8001444:	edd0 6a01 	vldr	s13, [r0, #4]
 8001448:	ed80 6a01 	vstr	s12, [r0, #4]
 800144c:	ee05 1a90 	vmov	s11, r1
 8001450:	ee45 7a85 	vmla.f32	s15, s11, s10
 8001454:	6001      	str	r1, [r0, #0]
 8001456:	edd0 5a05 	vldr	s11, [r0, #20]
 800145a:	ed90 7a02 	vldr	s14, [r0, #8]
 800145e:	edc0 6a02 	vstr	s13, [r0, #8]
 8001462:	ee46 7a25 	vmla.f32	s15, s12, s11
 8001466:	ed90 6a06 	vldr	s12, [r0, #24]
 800146a:	ed80 7a03 	vstr	s14, [r0, #12]
 800146e:	ee46 7a86 	vmla.f32	s15, s13, s12
 8001472:	edd0 6a07 	vldr	s13, [r0, #28]
 8001476:	ee47 7a26 	vmla.f32	s15, s14, s13
 800147a:	ed90 7a09 	vldr	s14, [r0, #36]	; 0x24
 800147e:	edc0 7a08 	vstr	s15, [r0, #32]
 8001482:	eef4 7ac7 	vcmpe.f32	s15, s14
 8001486:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800148a:	bfc8      	it	gt
 800148c:	ed80 7a08 	vstrgt	s14, [r0, #32]
 8001490:	edd0 7a08 	vldr	s15, [r0, #32]
 8001494:	eeb1 7a47 	vneg.f32	s14, s14
 8001498:	eef4 7ac7 	vcmpe.f32	s15, s14
 800149c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80014a0:	bf48      	it	mi
 80014a2:	ed80 7a08 	vstrmi	s14, [r0, #32]
 80014a6:	6a00      	ldr	r0, [r0, #32]
 80014a8:	4770      	bx	lr
	...

080014ac <TIM2_IRQHandler>:
 80014ac:	4a21      	ldr	r2, [pc, #132]	; (8001534 <TIM2_IRQHandler+0x88>)
 80014ae:	4922      	ldr	r1, [pc, #136]	; (8001538 <TIM2_IRQHandler+0x8c>)
 80014b0:	6813      	ldr	r3, [r2, #0]
 80014b2:	2b01      	cmp	r3, #1
 80014b4:	b510      	push	{r4, lr}
 80014b6:	d011      	beq.n	80014dc <TIM2_IRQHandler+0x30>
 80014b8:	d306      	bcc.n	80014c8 <TIM2_IRQHandler+0x1c>
 80014ba:	2b02      	cmp	r3, #2
 80014bc:	d113      	bne.n	80014e6 <TIM2_IRQHandler+0x3a>
 80014be:	f44f 6380 	mov.w	r3, #1024	; 0x400
 80014c2:	850b      	strh	r3, [r1, #40]	; 0x28
 80014c4:	2304      	movs	r3, #4
 80014c6:	e023      	b.n	8001510 <TIM2_IRQHandler+0x64>
 80014c8:	f44f 7380 	mov.w	r3, #256	; 0x100
 80014cc:	850b      	strh	r3, [r1, #40]	; 0x28
 80014ce:	f44f 6380 	mov.w	r3, #1024	; 0x400
 80014d2:	618b      	str	r3, [r1, #24]
 80014d4:	2301      	movs	r3, #1
 80014d6:	6013      	str	r3, [r2, #0]
 80014d8:	6093      	str	r3, [r2, #8]
 80014da:	e023      	b.n	8001524 <TIM2_IRQHandler+0x78>
 80014dc:	f44f 7380 	mov.w	r3, #256	; 0x100
 80014e0:	618b      	str	r3, [r1, #24]
 80014e2:	2302      	movs	r3, #2
 80014e4:	e014      	b.n	8001510 <TIM2_IRQHandler+0x64>
 80014e6:	f013 0f01 	tst.w	r3, #1
 80014ea:	4814      	ldr	r0, [pc, #80]	; (800153c <TIM2_IRQHandler+0x90>)
 80014ec:	f103 0401 	add.w	r4, r3, #1
 80014f0:	d010      	beq.n	8001514 <TIM2_IRQHandler+0x68>
 80014f2:	3b04      	subs	r3, #4
 80014f4:	f023 0301 	bic.w	r3, r3, #1
 80014f8:	4413      	add	r3, r2
 80014fa:	6c00      	ldr	r0, [r0, #64]	; 0x40
 80014fc:	8298      	strh	r0, [r3, #20]
 80014fe:	f5b4 7f82 	cmp.w	r4, #260	; 0x104
 8001502:	f44f 7380 	mov.w	r3, #256	; 0x100
 8001506:	850b      	strh	r3, [r1, #40]	; 0x28
 8001508:	d201      	bcs.n	800150e <TIM2_IRQHandler+0x62>
 800150a:	6014      	str	r4, [r2, #0]
 800150c:	e00a      	b.n	8001524 <TIM2_IRQHandler+0x78>
 800150e:	2300      	movs	r3, #0
 8001510:	6013      	str	r3, [r2, #0]
 8001512:	e007      	b.n	8001524 <TIM2_IRQHandler+0x78>
 8001514:	f44f 7380 	mov.w	r3, #256	; 0x100
 8001518:	618b      	str	r3, [r1, #24]
 800151a:	6883      	ldr	r3, [r0, #8]
 800151c:	6014      	str	r4, [r2, #0]
 800151e:	f043 0304 	orr.w	r3, r3, #4
 8001522:	6083      	str	r3, [r0, #8]
 8001524:	f04f 4080 	mov.w	r0, #1073741824	; 0x40000000
 8001528:	2101      	movs	r1, #1
 800152a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800152e:	f000 bd1e 	b.w	8001f6e <TIM_ClearITPendingBit>
 8001532:	bf00      	nop
 8001534:	20000b94 	.word	0x20000b94
 8001538:	48000400 	.word	0x48000400
 800153c:	50000500 	.word	0x50000500

08001540 <rgb_i2c_delay>:
 8001540:	bf00      	nop
 8001542:	bf00      	nop
 8001544:	bf00      	nop
 8001546:	bf00      	nop
 8001548:	4770      	bx	lr
	...

0800154c <RGBSetLowSDA>:
 800154c:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 800154e:	4f15      	ldr	r7, [pc, #84]	; (80015a4 <RGBSetLowSDA+0x58>)
 8001550:	2401      	movs	r4, #1
 8001552:	783b      	ldrb	r3, [r7, #0]
 8001554:	9300      	str	r3, [sp, #0]
 8001556:	2603      	movs	r6, #3
 8001558:	2500      	movs	r5, #0
 800155a:	4669      	mov	r1, sp
 800155c:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8001560:	f88d 5007 	strb.w	r5, [sp, #7]
 8001564:	f88d 4004 	strb.w	r4, [sp, #4]
 8001568:	f88d 6005 	strb.w	r6, [sp, #5]
 800156c:	f88d 4006 	strb.w	r4, [sp, #6]
 8001570:	f001 f9fb 	bl	800296a <GPIO_Init>
 8001574:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8001578:	783a      	ldrb	r2, [r7, #0]
 800157a:	851a      	strh	r2, [r3, #40]	; 0x28
 800157c:	f88d 5007 	strb.w	r5, [sp, #7]
 8001580:	4d09      	ldr	r5, [pc, #36]	; (80015a8 <RGBSetLowSDA+0x5c>)
 8001582:	9400      	str	r4, [sp, #0]
 8001584:	4628      	mov	r0, r5
 8001586:	4669      	mov	r1, sp
 8001588:	f88d 4004 	strb.w	r4, [sp, #4]
 800158c:	f88d 6005 	strb.w	r6, [sp, #5]
 8001590:	f88d 4006 	strb.w	r4, [sp, #6]
 8001594:	f001 f9e9 	bl	800296a <GPIO_Init>
 8001598:	852c      	strh	r4, [r5, #40]	; 0x28
 800159a:	f7ff ffd1 	bl	8001540 <rgb_i2c_delay>
 800159e:	b003      	add	sp, #12
 80015a0:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80015a2:	bf00      	nop
 80015a4:	20000e02 	.word	0x20000e02
 80015a8:	48000400 	.word	0x48000400

080015ac <RGBSetHighSDA>:
 80015ac:	b573      	push	{r0, r1, r4, r5, r6, lr}
 80015ae:	4d13      	ldr	r5, [pc, #76]	; (80015fc <RGBSetHighSDA+0x50>)
 80015b0:	2400      	movs	r4, #0
 80015b2:	782b      	ldrb	r3, [r5, #0]
 80015b4:	9300      	str	r3, [sp, #0]
 80015b6:	2603      	movs	r6, #3
 80015b8:	4669      	mov	r1, sp
 80015ba:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80015be:	f88d 4004 	strb.w	r4, [sp, #4]
 80015c2:	f88d 4007 	strb.w	r4, [sp, #7]
 80015c6:	f88d 6005 	strb.w	r6, [sp, #5]
 80015ca:	f001 f9ce 	bl	800296a <GPIO_Init>
 80015ce:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 80015d2:	782a      	ldrb	r2, [r5, #0]
 80015d4:	619a      	str	r2, [r3, #24]
 80015d6:	f88d 4004 	strb.w	r4, [sp, #4]
 80015da:	f88d 4007 	strb.w	r4, [sp, #7]
 80015de:	4c08      	ldr	r4, [pc, #32]	; (8001600 <RGBSetHighSDA+0x54>)
 80015e0:	f88d 6005 	strb.w	r6, [sp, #5]
 80015e4:	2501      	movs	r5, #1
 80015e6:	4620      	mov	r0, r4
 80015e8:	4669      	mov	r1, sp
 80015ea:	9500      	str	r5, [sp, #0]
 80015ec:	f001 f9bd 	bl	800296a <GPIO_Init>
 80015f0:	61a5      	str	r5, [r4, #24]
 80015f2:	f7ff ffa5 	bl	8001540 <rgb_i2c_delay>
 80015f6:	b002      	add	sp, #8
 80015f8:	bd70      	pop	{r4, r5, r6, pc}
 80015fa:	bf00      	nop
 80015fc:	20000e02 	.word	0x20000e02
 8001600:	48000400 	.word	0x48000400

08001604 <RGBSetLowSCL>:
 8001604:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8001608:	f44f 7280 	mov.w	r2, #256	; 0x100
 800160c:	851a      	strh	r2, [r3, #40]	; 0x28
 800160e:	f7ff bf97 	b.w	8001540 <rgb_i2c_delay>

08001612 <RGBSetHighSCL>:
 8001612:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8001616:	f44f 7280 	mov.w	r2, #256	; 0x100
 800161a:	619a      	str	r2, [r3, #24]
 800161c:	f7ff bf90 	b.w	8001540 <rgb_i2c_delay>

08001620 <rgb_i2c_init>:
 8001620:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 8001622:	4f1f      	ldr	r7, [pc, #124]	; (80016a0 <rgb_i2c_init+0x80>)
 8001624:	2400      	movs	r4, #0
 8001626:	2501      	movs	r5, #1
 8001628:	2603      	movs	r6, #3
 800162a:	f44f 7380 	mov.w	r3, #256	; 0x100
 800162e:	4669      	mov	r1, sp
 8001630:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8001634:	9300      	str	r3, [sp, #0]
 8001636:	f88d 4006 	strb.w	r4, [sp, #6]
 800163a:	f88d 4007 	strb.w	r4, [sp, #7]
 800163e:	f88d 5004 	strb.w	r5, [sp, #4]
 8001642:	f88d 6005 	strb.w	r6, [sp, #5]
 8001646:	f001 f990 	bl	800296a <GPIO_Init>
 800164a:	783b      	ldrb	r3, [r7, #0]
 800164c:	9300      	str	r3, [sp, #0]
 800164e:	4669      	mov	r1, sp
 8001650:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8001654:	f88d 4004 	strb.w	r4, [sp, #4]
 8001658:	f88d 4007 	strb.w	r4, [sp, #7]
 800165c:	f88d 6005 	strb.w	r6, [sp, #5]
 8001660:	f001 f983 	bl	800296a <GPIO_Init>
 8001664:	7839      	ldrb	r1, [r7, #0]
 8001666:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 800166a:	f001 f9c0 	bl	80029ee <GPIO_SetBits>
 800166e:	f88d 4004 	strb.w	r4, [sp, #4]
 8001672:	f88d 4007 	strb.w	r4, [sp, #7]
 8001676:	4c0b      	ldr	r4, [pc, #44]	; (80016a4 <rgb_i2c_init+0x84>)
 8001678:	9500      	str	r5, [sp, #0]
 800167a:	4620      	mov	r0, r4
 800167c:	4669      	mov	r1, sp
 800167e:	f88d 6005 	strb.w	r6, [sp, #5]
 8001682:	f001 f972 	bl	800296a <GPIO_Init>
 8001686:	4620      	mov	r0, r4
 8001688:	4629      	mov	r1, r5
 800168a:	f001 f9b0 	bl	80029ee <GPIO_SetBits>
 800168e:	f7ff ffc0 	bl	8001612 <RGBSetHighSCL>
 8001692:	f7ff ff5b 	bl	800154c <RGBSetLowSDA>
 8001696:	f7ff ff89 	bl	80015ac <RGBSetHighSDA>
 800169a:	b003      	add	sp, #12
 800169c:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800169e:	bf00      	nop
 80016a0:	20000e02 	.word	0x20000e02
 80016a4:	48000400 	.word	0x48000400

080016a8 <rgb_i2cStart>:
 80016a8:	b508      	push	{r3, lr}
 80016aa:	f7ff ffb2 	bl	8001612 <RGBSetHighSCL>
 80016ae:	f7ff ff7d 	bl	80015ac <RGBSetHighSDA>
 80016b2:	f7ff ffae 	bl	8001612 <RGBSetHighSCL>
 80016b6:	f7ff ff49 	bl	800154c <RGBSetLowSDA>
 80016ba:	f7ff ffa3 	bl	8001604 <RGBSetLowSCL>
 80016be:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80016c2:	f7ff bf73 	b.w	80015ac <RGBSetHighSDA>

080016c6 <rgb_i2cStop>:
 80016c6:	b508      	push	{r3, lr}
 80016c8:	f7ff ff9c 	bl	8001604 <RGBSetLowSCL>
 80016cc:	f7ff ff3e 	bl	800154c <RGBSetLowSDA>
 80016d0:	f7ff ff9f 	bl	8001612 <RGBSetHighSCL>
 80016d4:	f7ff ff3a 	bl	800154c <RGBSetLowSDA>
 80016d8:	f7ff ff9b 	bl	8001612 <RGBSetHighSCL>
 80016dc:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80016e0:	f7ff bf64 	b.w	80015ac <RGBSetHighSDA>

080016e4 <rgb_i2cWrite>:
 80016e4:	b538      	push	{r3, r4, r5, lr}
 80016e6:	4605      	mov	r5, r0
 80016e8:	2408      	movs	r4, #8
 80016ea:	f7ff ff8b 	bl	8001604 <RGBSetLowSCL>
 80016ee:	062b      	lsls	r3, r5, #24
 80016f0:	d502      	bpl.n	80016f8 <rgb_i2cWrite+0x14>
 80016f2:	f7ff ff5b 	bl	80015ac <RGBSetHighSDA>
 80016f6:	e001      	b.n	80016fc <rgb_i2cWrite+0x18>
 80016f8:	f7ff ff28 	bl	800154c <RGBSetLowSDA>
 80016fc:	3c01      	subs	r4, #1
 80016fe:	f7ff ff88 	bl	8001612 <RGBSetHighSCL>
 8001702:	006d      	lsls	r5, r5, #1
 8001704:	f014 04ff 	ands.w	r4, r4, #255	; 0xff
 8001708:	b2ed      	uxtb	r5, r5
 800170a:	d1ee      	bne.n	80016ea <rgb_i2cWrite+0x6>
 800170c:	f7ff ff7a 	bl	8001604 <RGBSetLowSCL>
 8001710:	f7ff ff4c 	bl	80015ac <RGBSetHighSDA>
 8001714:	f7ff ff7d 	bl	8001612 <RGBSetHighSCL>
 8001718:	f7ff ff74 	bl	8001604 <RGBSetLowSCL>
 800171c:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8001720:	f7ff bf0e 	b.w	8001540 <rgb_i2c_delay>

08001724 <rgb_i2cRead>:
 8001724:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8001728:	1e4e      	subs	r6, r1, #1
 800172a:	4680      	mov	r8, r0
 800172c:	460c      	mov	r4, r1
 800172e:	f101 0708 	add.w	r7, r1, #8
 8001732:	4633      	mov	r3, r6
 8001734:	2200      	movs	r2, #0
 8001736:	f803 2f01 	strb.w	r2, [r3, #1]!
 800173a:	42bb      	cmp	r3, r7
 800173c:	d1fa      	bne.n	8001734 <rgb_i2cRead+0x10>
 800173e:	f7ff ff61 	bl	8001604 <RGBSetLowSCL>
 8001742:	f7ff ff33 	bl	80015ac <RGBSetHighSDA>
 8001746:	2508      	movs	r5, #8
 8001748:	4633      	mov	r3, r6
 800174a:	f813 2f01 	ldrb.w	r2, [r3, #1]!
 800174e:	0052      	lsls	r2, r2, #1
 8001750:	42bb      	cmp	r3, r7
 8001752:	701a      	strb	r2, [r3, #0]
 8001754:	d1f9      	bne.n	800174a <rgb_i2cRead+0x26>
 8001756:	f7ff ff5c 	bl	8001612 <RGBSetHighSCL>
 800175a:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 800175e:	8a1b      	ldrh	r3, [r3, #16]
 8001760:	b29b      	uxth	r3, r3
 8001762:	07d9      	lsls	r1, r3, #31
 8001764:	bf42      	ittt	mi
 8001766:	7822      	ldrbmi	r2, [r4, #0]
 8001768:	f042 0201 	orrmi.w	r2, r2, #1
 800176c:	7022      	strbmi	r2, [r4, #0]
 800176e:	079a      	lsls	r2, r3, #30
 8001770:	bf42      	ittt	mi
 8001772:	7862      	ldrbmi	r2, [r4, #1]
 8001774:	f042 0201 	orrmi.w	r2, r2, #1
 8001778:	7062      	strbmi	r2, [r4, #1]
 800177a:	0758      	lsls	r0, r3, #29
 800177c:	bf42      	ittt	mi
 800177e:	78a2      	ldrbmi	r2, [r4, #2]
 8001780:	f042 0201 	orrmi.w	r2, r2, #1
 8001784:	70a2      	strbmi	r2, [r4, #2]
 8001786:	0719      	lsls	r1, r3, #28
 8001788:	bf42      	ittt	mi
 800178a:	78e2      	ldrbmi	r2, [r4, #3]
 800178c:	f042 0201 	orrmi.w	r2, r2, #1
 8001790:	70e2      	strbmi	r2, [r4, #3]
 8001792:	06da      	lsls	r2, r3, #27
 8001794:	bf42      	ittt	mi
 8001796:	7922      	ldrbmi	r2, [r4, #4]
 8001798:	f042 0201 	orrmi.w	r2, r2, #1
 800179c:	7122      	strbmi	r2, [r4, #4]
 800179e:	0698      	lsls	r0, r3, #26
 80017a0:	bf42      	ittt	mi
 80017a2:	7962      	ldrbmi	r2, [r4, #5]
 80017a4:	f042 0201 	orrmi.w	r2, r2, #1
 80017a8:	7162      	strbmi	r2, [r4, #5]
 80017aa:	0659      	lsls	r1, r3, #25
 80017ac:	bf42      	ittt	mi
 80017ae:	79a2      	ldrbmi	r2, [r4, #6]
 80017b0:	f042 0201 	orrmi.w	r2, r2, #1
 80017b4:	71a2      	strbmi	r2, [r4, #6]
 80017b6:	061a      	lsls	r2, r3, #24
 80017b8:	bf42      	ittt	mi
 80017ba:	79e3      	ldrbmi	r3, [r4, #7]
 80017bc:	f043 0301 	orrmi.w	r3, r3, #1
 80017c0:	71e3      	strbmi	r3, [r4, #7]
 80017c2:	4b0c      	ldr	r3, [pc, #48]	; (80017f4 <rgb_i2cRead+0xd0>)
 80017c4:	8a1b      	ldrh	r3, [r3, #16]
 80017c6:	07db      	lsls	r3, r3, #31
 80017c8:	bf42      	ittt	mi
 80017ca:	7a23      	ldrbmi	r3, [r4, #8]
 80017cc:	f043 0301 	orrmi.w	r3, r3, #1
 80017d0:	7223      	strbmi	r3, [r4, #8]
 80017d2:	f7ff ff17 	bl	8001604 <RGBSetLowSCL>
 80017d6:	3d01      	subs	r5, #1
 80017d8:	d1b6      	bne.n	8001748 <rgb_i2cRead+0x24>
 80017da:	f1b8 0f00 	cmp.w	r8, #0
 80017de:	d001      	beq.n	80017e4 <rgb_i2cRead+0xc0>
 80017e0:	f7ff feb4 	bl	800154c <RGBSetLowSDA>
 80017e4:	f7ff ff15 	bl	8001612 <RGBSetHighSCL>
 80017e8:	f7ff ff0c 	bl	8001604 <RGBSetLowSCL>
 80017ec:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 80017f0:	f7ff bea6 	b.w	8001540 <rgb_i2c_delay>
 80017f4:	48000400 	.word	0x48000400

080017f8 <rgb_i2c_write_reg>:
 80017f8:	b570      	push	{r4, r5, r6, lr}
 80017fa:	4606      	mov	r6, r0
 80017fc:	460d      	mov	r5, r1
 80017fe:	4614      	mov	r4, r2
 8001800:	f7ff ff52 	bl	80016a8 <rgb_i2cStart>
 8001804:	4630      	mov	r0, r6
 8001806:	f7ff ff6d 	bl	80016e4 <rgb_i2cWrite>
 800180a:	4628      	mov	r0, r5
 800180c:	f7ff ff6a 	bl	80016e4 <rgb_i2cWrite>
 8001810:	4620      	mov	r0, r4
 8001812:	f7ff ff67 	bl	80016e4 <rgb_i2cWrite>
 8001816:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 800181a:	f7ff bf54 	b.w	80016c6 <rgb_i2cStop>

0800181e <rgb_i2c_read_reg>:
 800181e:	b570      	push	{r4, r5, r6, lr}
 8001820:	4604      	mov	r4, r0
 8001822:	460e      	mov	r6, r1
 8001824:	4615      	mov	r5, r2
 8001826:	f7ff ff3f 	bl	80016a8 <rgb_i2cStart>
 800182a:	4620      	mov	r0, r4
 800182c:	f7ff ff5a 	bl	80016e4 <rgb_i2cWrite>
 8001830:	4630      	mov	r0, r6
 8001832:	f7ff ff57 	bl	80016e4 <rgb_i2cWrite>
 8001836:	f7ff ff37 	bl	80016a8 <rgb_i2cStart>
 800183a:	f044 0001 	orr.w	r0, r4, #1
 800183e:	f7ff ff51 	bl	80016e4 <rgb_i2cWrite>
 8001842:	4629      	mov	r1, r5
 8001844:	2000      	movs	r0, #0
 8001846:	f7ff ff6d 	bl	8001724 <rgb_i2cRead>
 800184a:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 800184e:	f7ff bf3a 	b.w	80016c6 <rgb_i2cStop>
	...

08001854 <rgb_init>:
 8001854:	b570      	push	{r4, r5, r6, lr}
 8001856:	4b1e      	ldr	r3, [pc, #120]	; (80018d0 <rgb_init+0x7c>)
 8001858:	2200      	movs	r2, #0
 800185a:	3201      	adds	r2, #1
 800185c:	2400      	movs	r4, #0
 800185e:	2a09      	cmp	r2, #9
 8001860:	801c      	strh	r4, [r3, #0]
 8001862:	825c      	strh	r4, [r3, #18]
 8001864:	849c      	strh	r4, [r3, #36]	; 0x24
 8001866:	f8a3 4048 	strh.w	r4, [r3, #72]	; 0x48
 800186a:	86dc      	strh	r4, [r3, #54]	; 0x36
 800186c:	f103 0302 	add.w	r3, r3, #2
 8001870:	d1f3      	bne.n	800185a <rgb_init+0x6>
 8001872:	4d18      	ldr	r5, [pc, #96]	; (80018d4 <rgb_init+0x80>)
 8001874:	f64f 76ff 	movw	r6, #65535	; 0xffff
 8001878:	802e      	strh	r6, [r5, #0]
 800187a:	f7ff fed1 	bl	8001620 <rgb_i2c_init>
 800187e:	2072      	movs	r0, #114	; 0x72
 8001880:	2181      	movs	r1, #129	; 0x81
 8001882:	22ff      	movs	r2, #255	; 0xff
 8001884:	f7ff ffb8 	bl	80017f8 <rgb_i2c_write_reg>
 8001888:	2072      	movs	r0, #114	; 0x72
 800188a:	2183      	movs	r1, #131	; 0x83
 800188c:	22ff      	movs	r2, #255	; 0xff
 800188e:	f7ff ffb3 	bl	80017f8 <rgb_i2c_write_reg>
 8001892:	2072      	movs	r0, #114	; 0x72
 8001894:	218d      	movs	r1, #141	; 0x8d
 8001896:	4622      	mov	r2, r4
 8001898:	f7ff ffae 	bl	80017f8 <rgb_i2c_write_reg>
 800189c:	2072      	movs	r0, #114	; 0x72
 800189e:	2180      	movs	r1, #128	; 0x80
 80018a0:	2203      	movs	r2, #3
 80018a2:	f7ff ffa9 	bl	80017f8 <rgb_i2c_write_reg>
 80018a6:	2072      	movs	r0, #114	; 0x72
 80018a8:	218f      	movs	r1, #143	; 0x8f
 80018aa:	2223      	movs	r2, #35	; 0x23
 80018ac:	f7ff ffa4 	bl	80017f8 <rgb_i2c_write_reg>
 80018b0:	f7ff fe7c 	bl	80015ac <RGBSetHighSDA>
 80018b4:	2072      	movs	r0, #114	; 0x72
 80018b6:	2180      	movs	r1, #128	; 0x80
 80018b8:	2207      	movs	r2, #7
 80018ba:	802c      	strh	r4, [r5, #0]
 80018bc:	f7ff ff9c 	bl	80017f8 <rgb_i2c_write_reg>
 80018c0:	2072      	movs	r0, #114	; 0x72
 80018c2:	218e      	movs	r1, #142	; 0x8e
 80018c4:	2208      	movs	r2, #8
 80018c6:	f7ff ff97 	bl	80017f8 <rgb_i2c_write_reg>
 80018ca:	802e      	strh	r6, [r5, #0]
 80018cc:	bd70      	pop	{r4, r5, r6, pc}
 80018ce:	bf00      	nop
 80018d0:	20000da8 	.word	0x20000da8
 80018d4:	20000e02 	.word	0x20000e02

080018d8 <rgb_get>:
 80018d8:	4800      	ldr	r0, [pc, #0]	; (80018dc <rgb_get+0x4>)
 80018da:	4770      	bx	lr
 80018dc:	20000da8 	.word	0x20000da8

080018e0 <rgb_read>:
 80018e0:	b538      	push	{r3, r4, r5, lr}
 80018e2:	f7ff fee1 	bl	80016a8 <rgb_i2cStart>
 80018e6:	2072      	movs	r0, #114	; 0x72
 80018e8:	f7ff fefc 	bl	80016e4 <rgb_i2cWrite>
 80018ec:	20b4      	movs	r0, #180	; 0xb4
 80018ee:	f7ff fef9 	bl	80016e4 <rgb_i2cWrite>
 80018f2:	4d48      	ldr	r5, [pc, #288]	; (8001a14 <rgb_read+0x134>)
 80018f4:	f7ff fed8 	bl	80016a8 <rgb_i2cStart>
 80018f8:	2073      	movs	r0, #115	; 0x73
 80018fa:	f7ff fef3 	bl	80016e4 <rgb_i2cWrite>
 80018fe:	2001      	movs	r0, #1
 8001900:	4945      	ldr	r1, [pc, #276]	; (8001a18 <rgb_read+0x138>)
 8001902:	f7ff ff0f 	bl	8001724 <rgb_i2cRead>
 8001906:	462a      	mov	r2, r5
 8001908:	2300      	movs	r3, #0
 800190a:	4c43      	ldr	r4, [pc, #268]	; (8001a18 <rgb_read+0x138>)
 800190c:	5d19      	ldrb	r1, [r3, r4]
 800190e:	f822 1f02 	strh.w	r1, [r2, #2]!
 8001912:	3301      	adds	r3, #1
 8001914:	2b09      	cmp	r3, #9
 8001916:	d1f8      	bne.n	800190a <rgb_read+0x2a>
 8001918:	2001      	movs	r0, #1
 800191a:	4621      	mov	r1, r4
 800191c:	f7ff ff02 	bl	8001724 <rgb_i2cRead>
 8001920:	2300      	movs	r3, #0
 8001922:	5ce1      	ldrb	r1, [r4, r3]
 8001924:	f835 2f02 	ldrh.w	r2, [r5, #2]!
 8001928:	3301      	adds	r3, #1
 800192a:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
 800192e:	2b09      	cmp	r3, #9
 8001930:	802a      	strh	r2, [r5, #0]
 8001932:	d1f6      	bne.n	8001922 <rgb_read+0x42>
 8001934:	2001      	movs	r0, #1
 8001936:	4938      	ldr	r1, [pc, #224]	; (8001a18 <rgb_read+0x138>)
 8001938:	f7ff fef4 	bl	8001724 <rgb_i2cRead>
 800193c:	2300      	movs	r3, #0
 800193e:	4d37      	ldr	r5, [pc, #220]	; (8001a1c <rgb_read+0x13c>)
 8001940:	5ce2      	ldrb	r2, [r4, r3]
 8001942:	f825 2013 	strh.w	r2, [r5, r3, lsl #1]
 8001946:	3301      	adds	r3, #1
 8001948:	2b09      	cmp	r3, #9
 800194a:	d1f8      	bne.n	800193e <rgb_read+0x5e>
 800194c:	2001      	movs	r0, #1
 800194e:	4932      	ldr	r1, [pc, #200]	; (8001a18 <rgb_read+0x138>)
 8001950:	f7ff fee8 	bl	8001724 <rgb_i2cRead>
 8001954:	2300      	movs	r3, #0
 8001956:	f835 2013 	ldrh.w	r2, [r5, r3, lsl #1]
 800195a:	5ce1      	ldrb	r1, [r4, r3]
 800195c:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
 8001960:	f825 2013 	strh.w	r2, [r5, r3, lsl #1]
 8001964:	3301      	adds	r3, #1
 8001966:	2b09      	cmp	r3, #9
 8001968:	d1f5      	bne.n	8001956 <rgb_read+0x76>
 800196a:	4d2d      	ldr	r5, [pc, #180]	; (8001a20 <rgb_read+0x140>)
 800196c:	492a      	ldr	r1, [pc, #168]	; (8001a18 <rgb_read+0x138>)
 800196e:	2001      	movs	r0, #1
 8001970:	f7ff fed8 	bl	8001724 <rgb_i2cRead>
 8001974:	462a      	mov	r2, r5
 8001976:	2300      	movs	r3, #0
 8001978:	5ce1      	ldrb	r1, [r4, r3]
 800197a:	f822 1f02 	strh.w	r1, [r2, #2]!
 800197e:	3301      	adds	r3, #1
 8001980:	2b09      	cmp	r3, #9
 8001982:	d1f9      	bne.n	8001978 <rgb_read+0x98>
 8001984:	2001      	movs	r0, #1
 8001986:	4924      	ldr	r1, [pc, #144]	; (8001a18 <rgb_read+0x138>)
 8001988:	f7ff fecc 	bl	8001724 <rgb_i2cRead>
 800198c:	2300      	movs	r3, #0
 800198e:	5ce1      	ldrb	r1, [r4, r3]
 8001990:	f835 2f02 	ldrh.w	r2, [r5, #2]!
 8001994:	3301      	adds	r3, #1
 8001996:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
 800199a:	2b09      	cmp	r3, #9
 800199c:	802a      	strh	r2, [r5, #0]
 800199e:	d1f6      	bne.n	800198e <rgb_read+0xae>
 80019a0:	4d20      	ldr	r5, [pc, #128]	; (8001a24 <rgb_read+0x144>)
 80019a2:	491d      	ldr	r1, [pc, #116]	; (8001a18 <rgb_read+0x138>)
 80019a4:	2001      	movs	r0, #1
 80019a6:	f7ff febd 	bl	8001724 <rgb_i2cRead>
 80019aa:	462a      	mov	r2, r5
 80019ac:	2300      	movs	r3, #0
 80019ae:	5ce1      	ldrb	r1, [r4, r3]
 80019b0:	f822 1f02 	strh.w	r1, [r2, #2]!
 80019b4:	3301      	adds	r3, #1
 80019b6:	2b09      	cmp	r3, #9
 80019b8:	d1f9      	bne.n	80019ae <rgb_read+0xce>
 80019ba:	2001      	movs	r0, #1
 80019bc:	4916      	ldr	r1, [pc, #88]	; (8001a18 <rgb_read+0x138>)
 80019be:	f7ff feb1 	bl	8001724 <rgb_i2cRead>
 80019c2:	2300      	movs	r3, #0
 80019c4:	5ce1      	ldrb	r1, [r4, r3]
 80019c6:	f835 2f02 	ldrh.w	r2, [r5, #2]!
 80019ca:	3301      	adds	r3, #1
 80019cc:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
 80019d0:	2b09      	cmp	r3, #9
 80019d2:	802a      	strh	r2, [r5, #0]
 80019d4:	d1f6      	bne.n	80019c4 <rgb_read+0xe4>
 80019d6:	4d14      	ldr	r5, [pc, #80]	; (8001a28 <rgb_read+0x148>)
 80019d8:	490f      	ldr	r1, [pc, #60]	; (8001a18 <rgb_read+0x138>)
 80019da:	2001      	movs	r0, #1
 80019dc:	f7ff fea2 	bl	8001724 <rgb_i2cRead>
 80019e0:	462a      	mov	r2, r5
 80019e2:	2300      	movs	r3, #0
 80019e4:	5ce1      	ldrb	r1, [r4, r3]
 80019e6:	f822 1f02 	strh.w	r1, [r2, #2]!
 80019ea:	3301      	adds	r3, #1
 80019ec:	2b09      	cmp	r3, #9
 80019ee:	d1f9      	bne.n	80019e4 <rgb_read+0x104>
 80019f0:	2000      	movs	r0, #0
 80019f2:	4909      	ldr	r1, [pc, #36]	; (8001a18 <rgb_read+0x138>)
 80019f4:	f7ff fe96 	bl	8001724 <rgb_i2cRead>
 80019f8:	2300      	movs	r3, #0
 80019fa:	5ce1      	ldrb	r1, [r4, r3]
 80019fc:	f835 2f02 	ldrh.w	r2, [r5, #2]!
 8001a00:	3301      	adds	r3, #1
 8001a02:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
 8001a06:	2b09      	cmp	r3, #9
 8001a08:	802a      	strh	r2, [r5, #0]
 8001a0a:	d1f6      	bne.n	80019fa <rgb_read+0x11a>
 8001a0c:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8001a10:	f7ff be59 	b.w	80016c6 <rgb_i2cStop>
 8001a14:	20000ddc 	.word	0x20000ddc
 8001a18:	20000e04 	.word	0x20000e04
 8001a1c:	20000da8 	.word	0x20000da8
 8001a20:	20000db8 	.word	0x20000db8
 8001a24:	20000dca 	.word	0x20000dca
 8001a28:	20000dee 	.word	0x20000dee

08001a2c <main>:
 8001a2c:	b508      	push	{r3, lr}
 8001a2e:	f000 ff8b 	bl	8002948 <lib_low_level_init>
 8001a32:	f7ff fc65 	bl	8001300 <lib_os_init>
 8001a36:	4905      	ldr	r1, [pc, #20]	; (8001a4c <main+0x20>)
 8001a38:	4805      	ldr	r0, [pc, #20]	; (8001a50 <main+0x24>)
 8001a3a:	f44f 7200 	mov.w	r2, #512	; 0x200
 8001a3e:	2306      	movs	r3, #6
 8001a40:	f7ff fa9a 	bl	8000f78 <create_thread>
 8001a44:	f7ff fa92 	bl	8000f6c <kernel_start>
 8001a48:	2000      	movs	r0, #0
 8001a4a:	bd08      	pop	{r3, pc}
 8001a4c:	20000e10 	.word	0x20000e10
 8001a50:	08000a41 	.word	0x08000a41

08001a54 <RCC_GetClocksFreq>:
 8001a54:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8001a58:	4f9b      	ldr	r7, [pc, #620]	; (8001cc8 <RCC_GetClocksFreq+0x274>)
 8001a5a:	687b      	ldr	r3, [r7, #4]
 8001a5c:	f003 030c 	and.w	r3, r3, #12
 8001a60:	2b04      	cmp	r3, #4
 8001a62:	d005      	beq.n	8001a70 <RCC_GetClocksFreq+0x1c>
 8001a64:	2b08      	cmp	r3, #8
 8001a66:	d006      	beq.n	8001a76 <RCC_GetClocksFreq+0x22>
 8001a68:	4a98      	ldr	r2, [pc, #608]	; (8001ccc <RCC_GetClocksFreq+0x278>)
 8001a6a:	6002      	str	r2, [r0, #0]
 8001a6c:	b9b3      	cbnz	r3, 8001a9c <RCC_GetClocksFreq+0x48>
 8001a6e:	e016      	b.n	8001a9e <RCC_GetClocksFreq+0x4a>
 8001a70:	4b96      	ldr	r3, [pc, #600]	; (8001ccc <RCC_GetClocksFreq+0x278>)
 8001a72:	6003      	str	r3, [r0, #0]
 8001a74:	e012      	b.n	8001a9c <RCC_GetClocksFreq+0x48>
 8001a76:	687b      	ldr	r3, [r7, #4]
 8001a78:	6879      	ldr	r1, [r7, #4]
 8001a7a:	f3c3 4383 	ubfx	r3, r3, #18, #4
 8001a7e:	1c9a      	adds	r2, r3, #2
 8001a80:	03cb      	lsls	r3, r1, #15
 8001a82:	bf49      	itett	mi
 8001a84:	6afb      	ldrmi	r3, [r7, #44]	; 0x2c
 8001a86:	4b92      	ldrpl	r3, [pc, #584]	; (8001cd0 <RCC_GetClocksFreq+0x27c>)
 8001a88:	4990      	ldrmi	r1, [pc, #576]	; (8001ccc <RCC_GetClocksFreq+0x278>)
 8001a8a:	f003 030f 	andmi.w	r3, r3, #15
 8001a8e:	bf44      	itt	mi
 8001a90:	3301      	addmi	r3, #1
 8001a92:	fbb1 f3f3 	udivmi	r3, r1, r3
 8001a96:	4353      	muls	r3, r2
 8001a98:	6003      	str	r3, [r0, #0]
 8001a9a:	e000      	b.n	8001a9e <RCC_GetClocksFreq+0x4a>
 8001a9c:	2300      	movs	r3, #0
 8001a9e:	687a      	ldr	r2, [r7, #4]
 8001aa0:	4e8c      	ldr	r6, [pc, #560]	; (8001cd4 <RCC_GetClocksFreq+0x280>)
 8001aa2:	f8df c234 	ldr.w	ip, [pc, #564]	; 8001cd8 <RCC_GetClocksFreq+0x284>
 8001aa6:	f3c2 1203 	ubfx	r2, r2, #4, #4
 8001aaa:	5cb4      	ldrb	r4, [r6, r2]
 8001aac:	6802      	ldr	r2, [r0, #0]
 8001aae:	b2e4      	uxtb	r4, r4
 8001ab0:	fa22 f104 	lsr.w	r1, r2, r4
 8001ab4:	6041      	str	r1, [r0, #4]
 8001ab6:	687d      	ldr	r5, [r7, #4]
 8001ab8:	f3c5 2502 	ubfx	r5, r5, #8, #3
 8001abc:	5d75      	ldrb	r5, [r6, r5]
 8001abe:	fa21 fe05 	lsr.w	lr, r1, r5
 8001ac2:	f8c0 e008 	str.w	lr, [r0, #8]
 8001ac6:	687d      	ldr	r5, [r7, #4]
 8001ac8:	f3c5 25c2 	ubfx	r5, r5, #11, #3
 8001acc:	5d75      	ldrb	r5, [r6, r5]
 8001ace:	b2ed      	uxtb	r5, r5
 8001ad0:	40e9      	lsrs	r1, r5
 8001ad2:	60c1      	str	r1, [r0, #12]
 8001ad4:	6afe      	ldr	r6, [r7, #44]	; 0x2c
 8001ad6:	f3c6 1804 	ubfx	r8, r6, #4, #5
 8001ada:	f008 060f 	and.w	r6, r8, #15
 8001ade:	f018 0f10 	tst.w	r8, #16
 8001ae2:	f83c 6016 	ldrh.w	r6, [ip, r6, lsl #1]
 8001ae6:	46e0      	mov	r8, ip
 8001ae8:	b2b6      	uxth	r6, r6
 8001aea:	d004      	beq.n	8001af6 <RCC_GetClocksFreq+0xa2>
 8001aec:	b11e      	cbz	r6, 8001af6 <RCC_GetClocksFreq+0xa2>
 8001aee:	fbb3 f6f6 	udiv	r6, r3, r6
 8001af2:	6106      	str	r6, [r0, #16]
 8001af4:	e000      	b.n	8001af8 <RCC_GetClocksFreq+0xa4>
 8001af6:	6102      	str	r2, [r0, #16]
 8001af8:	6afe      	ldr	r6, [r7, #44]	; 0x2c
 8001afa:	f3c6 2c44 	ubfx	ip, r6, #9, #5
 8001afe:	f00c 060f 	and.w	r6, ip, #15
 8001b02:	f01c 0f10 	tst.w	ip, #16
 8001b06:	f838 6016 	ldrh.w	r6, [r8, r6, lsl #1]
 8001b0a:	b2b6      	uxth	r6, r6
 8001b0c:	d004      	beq.n	8001b18 <RCC_GetClocksFreq+0xc4>
 8001b0e:	b11e      	cbz	r6, 8001b18 <RCC_GetClocksFreq+0xc4>
 8001b10:	fbb3 f6f6 	udiv	r6, r3, r6
 8001b14:	6146      	str	r6, [r0, #20]
 8001b16:	e000      	b.n	8001b1a <RCC_GetClocksFreq+0xc6>
 8001b18:	6142      	str	r2, [r0, #20]
 8001b1a:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001b1c:	06f6      	lsls	r6, r6, #27
 8001b1e:	bf5a      	itte	pl
 8001b20:	4e6a      	ldrpl	r6, [pc, #424]	; (8001ccc <RCC_GetClocksFreq+0x278>)
 8001b22:	6186      	strpl	r6, [r0, #24]
 8001b24:	6182      	strmi	r2, [r0, #24]
 8001b26:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001b28:	06b6      	lsls	r6, r6, #26
 8001b2a:	bf5a      	itte	pl
 8001b2c:	4e67      	ldrpl	r6, [pc, #412]	; (8001ccc <RCC_GetClocksFreq+0x278>)
 8001b2e:	61c6      	strpl	r6, [r0, #28]
 8001b30:	61c2      	strmi	r2, [r0, #28]
 8001b32:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001b34:	0676      	lsls	r6, r6, #25
 8001b36:	bf5a      	itte	pl
 8001b38:	4e64      	ldrpl	r6, [pc, #400]	; (8001ccc <RCC_GetClocksFreq+0x278>)
 8001b3a:	6206      	strpl	r6, [r0, #32]
 8001b3c:	6202      	strmi	r2, [r0, #32]
 8001b3e:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001b40:	05f6      	lsls	r6, r6, #23
 8001b42:	d506      	bpl.n	8001b52 <RCC_GetClocksFreq+0xfe>
 8001b44:	429a      	cmp	r2, r3
 8001b46:	d104      	bne.n	8001b52 <RCC_GetClocksFreq+0xfe>
 8001b48:	42a5      	cmp	r5, r4
 8001b4a:	d102      	bne.n	8001b52 <RCC_GetClocksFreq+0xfe>
 8001b4c:	0056      	lsls	r6, r2, #1
 8001b4e:	6246      	str	r6, [r0, #36]	; 0x24
 8001b50:	e000      	b.n	8001b54 <RCC_GetClocksFreq+0x100>
 8001b52:	6241      	str	r1, [r0, #36]	; 0x24
 8001b54:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001b56:	04f6      	lsls	r6, r6, #19
 8001b58:	d506      	bpl.n	8001b68 <RCC_GetClocksFreq+0x114>
 8001b5a:	429a      	cmp	r2, r3
 8001b5c:	d104      	bne.n	8001b68 <RCC_GetClocksFreq+0x114>
 8001b5e:	42a5      	cmp	r5, r4
 8001b60:	d102      	bne.n	8001b68 <RCC_GetClocksFreq+0x114>
 8001b62:	0056      	lsls	r6, r2, #1
 8001b64:	6286      	str	r6, [r0, #40]	; 0x28
 8001b66:	e000      	b.n	8001b6a <RCC_GetClocksFreq+0x116>
 8001b68:	6281      	str	r1, [r0, #40]	; 0x28
 8001b6a:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001b6c:	05b6      	lsls	r6, r6, #22
 8001b6e:	d506      	bpl.n	8001b7e <RCC_GetClocksFreq+0x12a>
 8001b70:	429a      	cmp	r2, r3
 8001b72:	d104      	bne.n	8001b7e <RCC_GetClocksFreq+0x12a>
 8001b74:	42a5      	cmp	r5, r4
 8001b76:	d102      	bne.n	8001b7e <RCC_GetClocksFreq+0x12a>
 8001b78:	0056      	lsls	r6, r2, #1
 8001b7a:	62c6      	str	r6, [r0, #44]	; 0x2c
 8001b7c:	e000      	b.n	8001b80 <RCC_GetClocksFreq+0x12c>
 8001b7e:	62c1      	str	r1, [r0, #44]	; 0x2c
 8001b80:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001b82:	0576      	lsls	r6, r6, #21
 8001b84:	d506      	bpl.n	8001b94 <RCC_GetClocksFreq+0x140>
 8001b86:	429a      	cmp	r2, r3
 8001b88:	d104      	bne.n	8001b94 <RCC_GetClocksFreq+0x140>
 8001b8a:	42a5      	cmp	r5, r4
 8001b8c:	d102      	bne.n	8001b94 <RCC_GetClocksFreq+0x140>
 8001b8e:	0056      	lsls	r6, r2, #1
 8001b90:	64c6      	str	r6, [r0, #76]	; 0x4c
 8001b92:	e000      	b.n	8001b96 <RCC_GetClocksFreq+0x142>
 8001b94:	64c1      	str	r1, [r0, #76]	; 0x4c
 8001b96:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001b98:	0536      	lsls	r6, r6, #20
 8001b9a:	d506      	bpl.n	8001baa <RCC_GetClocksFreq+0x156>
 8001b9c:	429a      	cmp	r2, r3
 8001b9e:	d104      	bne.n	8001baa <RCC_GetClocksFreq+0x156>
 8001ba0:	42a5      	cmp	r5, r4
 8001ba2:	d102      	bne.n	8001baa <RCC_GetClocksFreq+0x156>
 8001ba4:	0056      	lsls	r6, r2, #1
 8001ba6:	6506      	str	r6, [r0, #80]	; 0x50
 8001ba8:	e000      	b.n	8001bac <RCC_GetClocksFreq+0x158>
 8001baa:	6501      	str	r1, [r0, #80]	; 0x50
 8001bac:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001bae:	04b6      	lsls	r6, r6, #18
 8001bb0:	d506      	bpl.n	8001bc0 <RCC_GetClocksFreq+0x16c>
 8001bb2:	429a      	cmp	r2, r3
 8001bb4:	d104      	bne.n	8001bc0 <RCC_GetClocksFreq+0x16c>
 8001bb6:	42a5      	cmp	r5, r4
 8001bb8:	d102      	bne.n	8001bc0 <RCC_GetClocksFreq+0x16c>
 8001bba:	0056      	lsls	r6, r2, #1
 8001bbc:	6546      	str	r6, [r0, #84]	; 0x54
 8001bbe:	e000      	b.n	8001bc2 <RCC_GetClocksFreq+0x16e>
 8001bc0:	6501      	str	r1, [r0, #80]	; 0x50
 8001bc2:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001bc4:	0436      	lsls	r6, r6, #16
 8001bc6:	d506      	bpl.n	8001bd6 <RCC_GetClocksFreq+0x182>
 8001bc8:	429a      	cmp	r2, r3
 8001bca:	d104      	bne.n	8001bd6 <RCC_GetClocksFreq+0x182>
 8001bcc:	42a5      	cmp	r5, r4
 8001bce:	d102      	bne.n	8001bd6 <RCC_GetClocksFreq+0x182>
 8001bd0:	0053      	lsls	r3, r2, #1
 8001bd2:	6583      	str	r3, [r0, #88]	; 0x58
 8001bd4:	e000      	b.n	8001bd8 <RCC_GetClocksFreq+0x184>
 8001bd6:	6581      	str	r1, [r0, #88]	; 0x58
 8001bd8:	6b3c      	ldr	r4, [r7, #48]	; 0x30
 8001bda:	4b3b      	ldr	r3, [pc, #236]	; (8001cc8 <RCC_GetClocksFreq+0x274>)
 8001bdc:	07a4      	lsls	r4, r4, #30
 8001bde:	d101      	bne.n	8001be4 <RCC_GetClocksFreq+0x190>
 8001be0:	6381      	str	r1, [r0, #56]	; 0x38
 8001be2:	e015      	b.n	8001c10 <RCC_GetClocksFreq+0x1bc>
 8001be4:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001be6:	f001 0103 	and.w	r1, r1, #3
 8001bea:	2901      	cmp	r1, #1
 8001bec:	d101      	bne.n	8001bf2 <RCC_GetClocksFreq+0x19e>
 8001bee:	6382      	str	r2, [r0, #56]	; 0x38
 8001bf0:	e00e      	b.n	8001c10 <RCC_GetClocksFreq+0x1bc>
 8001bf2:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001bf4:	f001 0103 	and.w	r1, r1, #3
 8001bf8:	2902      	cmp	r1, #2
 8001bfa:	d102      	bne.n	8001c02 <RCC_GetClocksFreq+0x1ae>
 8001bfc:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001c00:	e005      	b.n	8001c0e <RCC_GetClocksFreq+0x1ba>
 8001c02:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001c04:	f003 0303 	and.w	r3, r3, #3
 8001c08:	2b03      	cmp	r3, #3
 8001c0a:	d101      	bne.n	8001c10 <RCC_GetClocksFreq+0x1bc>
 8001c0c:	4b2f      	ldr	r3, [pc, #188]	; (8001ccc <RCC_GetClocksFreq+0x278>)
 8001c0e:	6383      	str	r3, [r0, #56]	; 0x38
 8001c10:	6b39      	ldr	r1, [r7, #48]	; 0x30
 8001c12:	4b2d      	ldr	r3, [pc, #180]	; (8001cc8 <RCC_GetClocksFreq+0x274>)
 8001c14:	f411 3f40 	tst.w	r1, #196608	; 0x30000
 8001c18:	d102      	bne.n	8001c20 <RCC_GetClocksFreq+0x1cc>
 8001c1a:	f8c0 e03c 	str.w	lr, [r0, #60]	; 0x3c
 8001c1e:	e018      	b.n	8001c52 <RCC_GetClocksFreq+0x1fe>
 8001c20:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001c22:	f401 3140 	and.w	r1, r1, #196608	; 0x30000
 8001c26:	f5b1 3f80 	cmp.w	r1, #65536	; 0x10000
 8001c2a:	d101      	bne.n	8001c30 <RCC_GetClocksFreq+0x1dc>
 8001c2c:	63c2      	str	r2, [r0, #60]	; 0x3c
 8001c2e:	e010      	b.n	8001c52 <RCC_GetClocksFreq+0x1fe>
 8001c30:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001c32:	f401 3140 	and.w	r1, r1, #196608	; 0x30000
 8001c36:	f5b1 3f00 	cmp.w	r1, #131072	; 0x20000
 8001c3a:	d102      	bne.n	8001c42 <RCC_GetClocksFreq+0x1ee>
 8001c3c:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001c40:	e006      	b.n	8001c50 <RCC_GetClocksFreq+0x1fc>
 8001c42:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001c44:	f403 3340 	and.w	r3, r3, #196608	; 0x30000
 8001c48:	f5b3 3f40 	cmp.w	r3, #196608	; 0x30000
 8001c4c:	d101      	bne.n	8001c52 <RCC_GetClocksFreq+0x1fe>
 8001c4e:	4b1f      	ldr	r3, [pc, #124]	; (8001ccc <RCC_GetClocksFreq+0x278>)
 8001c50:	63c3      	str	r3, [r0, #60]	; 0x3c
 8001c52:	6b39      	ldr	r1, [r7, #48]	; 0x30
 8001c54:	4b1c      	ldr	r3, [pc, #112]	; (8001cc8 <RCC_GetClocksFreq+0x274>)
 8001c56:	f411 2f40 	tst.w	r1, #786432	; 0xc0000
 8001c5a:	d102      	bne.n	8001c62 <RCC_GetClocksFreq+0x20e>
 8001c5c:	f8c0 e040 	str.w	lr, [r0, #64]	; 0x40
 8001c60:	e018      	b.n	8001c94 <RCC_GetClocksFreq+0x240>
 8001c62:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001c64:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 8001c68:	f5b1 2f80 	cmp.w	r1, #262144	; 0x40000
 8001c6c:	d101      	bne.n	8001c72 <RCC_GetClocksFreq+0x21e>
 8001c6e:	6402      	str	r2, [r0, #64]	; 0x40
 8001c70:	e010      	b.n	8001c94 <RCC_GetClocksFreq+0x240>
 8001c72:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001c74:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 8001c78:	f5b1 2f00 	cmp.w	r1, #524288	; 0x80000
 8001c7c:	d102      	bne.n	8001c84 <RCC_GetClocksFreq+0x230>
 8001c7e:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001c82:	e006      	b.n	8001c92 <RCC_GetClocksFreq+0x23e>
 8001c84:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001c86:	f403 2340 	and.w	r3, r3, #786432	; 0xc0000
 8001c8a:	f5b3 2f40 	cmp.w	r3, #786432	; 0xc0000
 8001c8e:	d101      	bne.n	8001c94 <RCC_GetClocksFreq+0x240>
 8001c90:	4b0e      	ldr	r3, [pc, #56]	; (8001ccc <RCC_GetClocksFreq+0x278>)
 8001c92:	6403      	str	r3, [r0, #64]	; 0x40
 8001c94:	6b39      	ldr	r1, [r7, #48]	; 0x30
 8001c96:	4b0c      	ldr	r3, [pc, #48]	; (8001cc8 <RCC_GetClocksFreq+0x274>)
 8001c98:	f411 1f40 	tst.w	r1, #3145728	; 0x300000
 8001c9c:	d102      	bne.n	8001ca4 <RCC_GetClocksFreq+0x250>
 8001c9e:	f8c0 e044 	str.w	lr, [r0, #68]	; 0x44
 8001ca2:	e023      	b.n	8001cec <RCC_GetClocksFreq+0x298>
 8001ca4:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001ca6:	f401 1140 	and.w	r1, r1, #3145728	; 0x300000
 8001caa:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 8001cae:	d101      	bne.n	8001cb4 <RCC_GetClocksFreq+0x260>
 8001cb0:	6442      	str	r2, [r0, #68]	; 0x44
 8001cb2:	e01b      	b.n	8001cec <RCC_GetClocksFreq+0x298>
 8001cb4:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001cb6:	f401 1140 	and.w	r1, r1, #3145728	; 0x300000
 8001cba:	f5b1 1f00 	cmp.w	r1, #2097152	; 0x200000
 8001cbe:	d10d      	bne.n	8001cdc <RCC_GetClocksFreq+0x288>
 8001cc0:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001cc4:	e011      	b.n	8001cea <RCC_GetClocksFreq+0x296>
 8001cc6:	bf00      	nop
 8001cc8:	40021000 	.word	0x40021000
 8001ccc:	007a1200 	.word	0x007a1200
 8001cd0:	003d0900 	.word	0x003d0900
 8001cd4:	200000c0 	.word	0x200000c0
 8001cd8:	200000a0 	.word	0x200000a0
 8001cdc:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001cde:	f403 1340 	and.w	r3, r3, #3145728	; 0x300000
 8001ce2:	f5b3 1f40 	cmp.w	r3, #3145728	; 0x300000
 8001ce6:	d101      	bne.n	8001cec <RCC_GetClocksFreq+0x298>
 8001ce8:	4b13      	ldr	r3, [pc, #76]	; (8001d38 <RCC_GetClocksFreq+0x2e4>)
 8001cea:	6443      	str	r3, [r0, #68]	; 0x44
 8001cec:	6b39      	ldr	r1, [r7, #48]	; 0x30
 8001cee:	4b13      	ldr	r3, [pc, #76]	; (8001d3c <RCC_GetClocksFreq+0x2e8>)
 8001cf0:	f411 0f40 	tst.w	r1, #12582912	; 0xc00000
 8001cf4:	d103      	bne.n	8001cfe <RCC_GetClocksFreq+0x2aa>
 8001cf6:	f8c0 e048 	str.w	lr, [r0, #72]	; 0x48
 8001cfa:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8001cfe:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001d00:	f401 0140 	and.w	r1, r1, #12582912	; 0xc00000
 8001d04:	f5b1 0f80 	cmp.w	r1, #4194304	; 0x400000
 8001d08:	d102      	bne.n	8001d10 <RCC_GetClocksFreq+0x2bc>
 8001d0a:	6482      	str	r2, [r0, #72]	; 0x48
 8001d0c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8001d10:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 8001d12:	f402 0240 	and.w	r2, r2, #12582912	; 0xc00000
 8001d16:	f5b2 0f00 	cmp.w	r2, #8388608	; 0x800000
 8001d1a:	d102      	bne.n	8001d22 <RCC_GetClocksFreq+0x2ce>
 8001d1c:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001d20:	e006      	b.n	8001d30 <RCC_GetClocksFreq+0x2dc>
 8001d22:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001d24:	f403 0340 	and.w	r3, r3, #12582912	; 0xc00000
 8001d28:	f5b3 0f40 	cmp.w	r3, #12582912	; 0xc00000
 8001d2c:	d101      	bne.n	8001d32 <RCC_GetClocksFreq+0x2de>
 8001d2e:	4b02      	ldr	r3, [pc, #8]	; (8001d38 <RCC_GetClocksFreq+0x2e4>)
 8001d30:	6483      	str	r3, [r0, #72]	; 0x48
 8001d32:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8001d36:	bf00      	nop
 8001d38:	007a1200 	.word	0x007a1200
 8001d3c:	40021000 	.word	0x40021000

08001d40 <RCC_AHBPeriphClockCmd>:
 8001d40:	bf00      	nop
 8001d42:	bf00      	nop
 8001d44:	4b04      	ldr	r3, [pc, #16]	; (8001d58 <RCC_AHBPeriphClockCmd+0x18>)
 8001d46:	695a      	ldr	r2, [r3, #20]
 8001d48:	b109      	cbz	r1, 8001d4e <RCC_AHBPeriphClockCmd+0xe>
 8001d4a:	4310      	orrs	r0, r2
 8001d4c:	e001      	b.n	8001d52 <RCC_AHBPeriphClockCmd+0x12>
 8001d4e:	ea22 0000 	bic.w	r0, r2, r0
 8001d52:	6158      	str	r0, [r3, #20]
 8001d54:	4770      	bx	lr
 8001d56:	bf00      	nop
 8001d58:	40021000 	.word	0x40021000

08001d5c <RCC_APB2PeriphClockCmd>:
 8001d5c:	bf00      	nop
 8001d5e:	bf00      	nop
 8001d60:	4b04      	ldr	r3, [pc, #16]	; (8001d74 <RCC_APB2PeriphClockCmd+0x18>)
 8001d62:	699a      	ldr	r2, [r3, #24]
 8001d64:	b109      	cbz	r1, 8001d6a <RCC_APB2PeriphClockCmd+0xe>
 8001d66:	4310      	orrs	r0, r2
 8001d68:	e001      	b.n	8001d6e <RCC_APB2PeriphClockCmd+0x12>
 8001d6a:	ea22 0000 	bic.w	r0, r2, r0
 8001d6e:	6198      	str	r0, [r3, #24]
 8001d70:	4770      	bx	lr
 8001d72:	bf00      	nop
 8001d74:	40021000 	.word	0x40021000

08001d78 <RCC_APB1PeriphClockCmd>:
 8001d78:	bf00      	nop
 8001d7a:	bf00      	nop
 8001d7c:	4b04      	ldr	r3, [pc, #16]	; (8001d90 <RCC_APB1PeriphClockCmd+0x18>)
 8001d7e:	69da      	ldr	r2, [r3, #28]
 8001d80:	b109      	cbz	r1, 8001d86 <RCC_APB1PeriphClockCmd+0xe>
 8001d82:	4310      	orrs	r0, r2
 8001d84:	e001      	b.n	8001d8a <RCC_APB1PeriphClockCmd+0x12>
 8001d86:	ea22 0000 	bic.w	r0, r2, r0
 8001d8a:	61d8      	str	r0, [r3, #28]
 8001d8c:	4770      	bx	lr
 8001d8e:	bf00      	nop
 8001d90:	40021000 	.word	0x40021000

08001d94 <TIM_TimeBaseInit>:
 8001d94:	bf00      	nop
 8001d96:	bf00      	nop
 8001d98:	bf00      	nop
 8001d9a:	4a24      	ldr	r2, [pc, #144]	; (8001e2c <TIM_TimeBaseInit+0x98>)
 8001d9c:	8803      	ldrh	r3, [r0, #0]
 8001d9e:	4290      	cmp	r0, r2
 8001da0:	b29b      	uxth	r3, r3
 8001da2:	d012      	beq.n	8001dca <TIM_TimeBaseInit+0x36>
 8001da4:	f502 6200 	add.w	r2, r2, #2048	; 0x800
 8001da8:	4290      	cmp	r0, r2
 8001daa:	d00e      	beq.n	8001dca <TIM_TimeBaseInit+0x36>
 8001dac:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 8001db0:	d00b      	beq.n	8001dca <TIM_TimeBaseInit+0x36>
 8001db2:	f5a2 3298 	sub.w	r2, r2, #77824	; 0x13000
 8001db6:	4290      	cmp	r0, r2
 8001db8:	d007      	beq.n	8001dca <TIM_TimeBaseInit+0x36>
 8001dba:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8001dbe:	4290      	cmp	r0, r2
 8001dc0:	d003      	beq.n	8001dca <TIM_TimeBaseInit+0x36>
 8001dc2:	f502 32a4 	add.w	r2, r2, #83968	; 0x14800
 8001dc6:	4290      	cmp	r0, r2
 8001dc8:	d103      	bne.n	8001dd2 <TIM_TimeBaseInit+0x3e>
 8001dca:	884a      	ldrh	r2, [r1, #2]
 8001dcc:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 8001dd0:	4313      	orrs	r3, r2
 8001dd2:	4a17      	ldr	r2, [pc, #92]	; (8001e30 <TIM_TimeBaseInit+0x9c>)
 8001dd4:	4290      	cmp	r0, r2
 8001dd6:	d008      	beq.n	8001dea <TIM_TimeBaseInit+0x56>
 8001dd8:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8001ddc:	4290      	cmp	r0, r2
 8001dde:	bf1f      	itttt	ne
 8001de0:	f423 7340 	bicne.w	r3, r3, #768	; 0x300
 8001de4:	890a      	ldrhne	r2, [r1, #8]
 8001de6:	b29b      	uxthne	r3, r3
 8001de8:	4313      	orrne	r3, r2
 8001dea:	8003      	strh	r3, [r0, #0]
 8001dec:	684b      	ldr	r3, [r1, #4]
 8001dee:	62c3      	str	r3, [r0, #44]	; 0x2c
 8001df0:	880b      	ldrh	r3, [r1, #0]
 8001df2:	8503      	strh	r3, [r0, #40]	; 0x28
 8001df4:	4b0d      	ldr	r3, [pc, #52]	; (8001e2c <TIM_TimeBaseInit+0x98>)
 8001df6:	4298      	cmp	r0, r3
 8001df8:	d013      	beq.n	8001e22 <TIM_TimeBaseInit+0x8e>
 8001dfa:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 8001dfe:	4298      	cmp	r0, r3
 8001e00:	d00f      	beq.n	8001e22 <TIM_TimeBaseInit+0x8e>
 8001e02:	f503 6340 	add.w	r3, r3, #3072	; 0xc00
 8001e06:	4298      	cmp	r0, r3
 8001e08:	d00b      	beq.n	8001e22 <TIM_TimeBaseInit+0x8e>
 8001e0a:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 8001e0e:	4298      	cmp	r0, r3
 8001e10:	d007      	beq.n	8001e22 <TIM_TimeBaseInit+0x8e>
 8001e12:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 8001e16:	4298      	cmp	r0, r3
 8001e18:	d003      	beq.n	8001e22 <TIM_TimeBaseInit+0x8e>
 8001e1a:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 8001e1e:	4298      	cmp	r0, r3
 8001e20:	d101      	bne.n	8001e26 <TIM_TimeBaseInit+0x92>
 8001e22:	894b      	ldrh	r3, [r1, #10]
 8001e24:	8603      	strh	r3, [r0, #48]	; 0x30
 8001e26:	2301      	movs	r3, #1
 8001e28:	6143      	str	r3, [r0, #20]
 8001e2a:	4770      	bx	lr
 8001e2c:	40012c00 	.word	0x40012c00
 8001e30:	40001000 	.word	0x40001000

08001e34 <TIM_Cmd>:
 8001e34:	bf00      	nop
 8001e36:	bf00      	nop
 8001e38:	8803      	ldrh	r3, [r0, #0]
 8001e3a:	b119      	cbz	r1, 8001e44 <TIM_Cmd+0x10>
 8001e3c:	b29b      	uxth	r3, r3
 8001e3e:	f043 0301 	orr.w	r3, r3, #1
 8001e42:	e003      	b.n	8001e4c <TIM_Cmd+0x18>
 8001e44:	f023 0301 	bic.w	r3, r3, #1
 8001e48:	041b      	lsls	r3, r3, #16
 8001e4a:	0c1b      	lsrs	r3, r3, #16
 8001e4c:	8003      	strh	r3, [r0, #0]
 8001e4e:	4770      	bx	lr

08001e50 <TIM_OC1Init>:
 8001e50:	b570      	push	{r4, r5, r6, lr}
 8001e52:	bf00      	nop
 8001e54:	bf00      	nop
 8001e56:	bf00      	nop
 8001e58:	bf00      	nop
 8001e5a:	6a03      	ldr	r3, [r0, #32]
 8001e5c:	680d      	ldr	r5, [r1, #0]
 8001e5e:	f023 0301 	bic.w	r3, r3, #1
 8001e62:	6203      	str	r3, [r0, #32]
 8001e64:	6a03      	ldr	r3, [r0, #32]
 8001e66:	6844      	ldr	r4, [r0, #4]
 8001e68:	6982      	ldr	r2, [r0, #24]
 8001e6a:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
 8001e6e:	f022 0273 	bic.w	r2, r2, #115	; 0x73
 8001e72:	4315      	orrs	r5, r2
 8001e74:	898a      	ldrh	r2, [r1, #12]
 8001e76:	f023 0302 	bic.w	r3, r3, #2
 8001e7a:	4313      	orrs	r3, r2
 8001e7c:	888a      	ldrh	r2, [r1, #4]
 8001e7e:	4313      	orrs	r3, r2
 8001e80:	4a15      	ldr	r2, [pc, #84]	; (8001ed8 <TIM_OC1Init+0x88>)
 8001e82:	4290      	cmp	r0, r2
 8001e84:	d00f      	beq.n	8001ea6 <TIM_OC1Init+0x56>
 8001e86:	f502 6200 	add.w	r2, r2, #2048	; 0x800
 8001e8a:	4290      	cmp	r0, r2
 8001e8c:	d00b      	beq.n	8001ea6 <TIM_OC1Init+0x56>
 8001e8e:	f502 6240 	add.w	r2, r2, #3072	; 0xc00
 8001e92:	4290      	cmp	r0, r2
 8001e94:	d007      	beq.n	8001ea6 <TIM_OC1Init+0x56>
 8001e96:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8001e9a:	4290      	cmp	r0, r2
 8001e9c:	d003      	beq.n	8001ea6 <TIM_OC1Init+0x56>
 8001e9e:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8001ea2:	4290      	cmp	r0, r2
 8001ea4:	d111      	bne.n	8001eca <TIM_OC1Init+0x7a>
 8001ea6:	bf00      	nop
 8001ea8:	bf00      	nop
 8001eaa:	bf00      	nop
 8001eac:	bf00      	nop
 8001eae:	89ca      	ldrh	r2, [r1, #14]
 8001eb0:	88ce      	ldrh	r6, [r1, #6]
 8001eb2:	f023 0308 	bic.w	r3, r3, #8
 8001eb6:	4313      	orrs	r3, r2
 8001eb8:	8a0a      	ldrh	r2, [r1, #16]
 8001eba:	f424 7440 	bic.w	r4, r4, #768	; 0x300
 8001ebe:	4314      	orrs	r4, r2
 8001ec0:	8a4a      	ldrh	r2, [r1, #18]
 8001ec2:	f023 0304 	bic.w	r3, r3, #4
 8001ec6:	4333      	orrs	r3, r6
 8001ec8:	4314      	orrs	r4, r2
 8001eca:	688a      	ldr	r2, [r1, #8]
 8001ecc:	6044      	str	r4, [r0, #4]
 8001ece:	6185      	str	r5, [r0, #24]
 8001ed0:	6342      	str	r2, [r0, #52]	; 0x34
 8001ed2:	6203      	str	r3, [r0, #32]
 8001ed4:	bd70      	pop	{r4, r5, r6, pc}
 8001ed6:	bf00      	nop
 8001ed8:	40012c00 	.word	0x40012c00

08001edc <TIM_OC2Init>:
 8001edc:	b570      	push	{r4, r5, r6, lr}
 8001ede:	bf00      	nop
 8001ee0:	bf00      	nop
 8001ee2:	bf00      	nop
 8001ee4:	bf00      	nop
 8001ee6:	6a03      	ldr	r3, [r0, #32]
 8001ee8:	680d      	ldr	r5, [r1, #0]
 8001eea:	898e      	ldrh	r6, [r1, #12]
 8001eec:	f023 0310 	bic.w	r3, r3, #16
 8001ef0:	6203      	str	r3, [r0, #32]
 8001ef2:	6a03      	ldr	r3, [r0, #32]
 8001ef4:	6844      	ldr	r4, [r0, #4]
 8001ef6:	6982      	ldr	r2, [r0, #24]
 8001ef8:	f022 7280 	bic.w	r2, r2, #16777216	; 0x1000000
 8001efc:	f422 42e6 	bic.w	r2, r2, #29440	; 0x7300
 8001f00:	ea42 2505 	orr.w	r5, r2, r5, lsl #8
 8001f04:	f023 0220 	bic.w	r2, r3, #32
 8001f08:	888b      	ldrh	r3, [r1, #4]
 8001f0a:	4333      	orrs	r3, r6
 8001f0c:	ea42 1303 	orr.w	r3, r2, r3, lsl #4
 8001f10:	4a10      	ldr	r2, [pc, #64]	; (8001f54 <TIM_OC2Init+0x78>)
 8001f12:	4290      	cmp	r0, r2
 8001f14:	d003      	beq.n	8001f1e <TIM_OC2Init+0x42>
 8001f16:	f502 6200 	add.w	r2, r2, #2048	; 0x800
 8001f1a:	4290      	cmp	r0, r2
 8001f1c:	d114      	bne.n	8001f48 <TIM_OC2Init+0x6c>
 8001f1e:	bf00      	nop
 8001f20:	bf00      	nop
 8001f22:	bf00      	nop
 8001f24:	bf00      	nop
 8001f26:	89ca      	ldrh	r2, [r1, #14]
 8001f28:	8a0e      	ldrh	r6, [r1, #16]
 8001f2a:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8001f2e:	ea43 1302 	orr.w	r3, r3, r2, lsl #4
 8001f32:	88ca      	ldrh	r2, [r1, #6]
 8001f34:	f023 0340 	bic.w	r3, r3, #64	; 0x40
 8001f38:	ea43 1302 	orr.w	r3, r3, r2, lsl #4
 8001f3c:	8a4a      	ldrh	r2, [r1, #18]
 8001f3e:	f424 6440 	bic.w	r4, r4, #3072	; 0xc00
 8001f42:	4332      	orrs	r2, r6
 8001f44:	ea44 0482 	orr.w	r4, r4, r2, lsl #2
 8001f48:	688a      	ldr	r2, [r1, #8]
 8001f4a:	6044      	str	r4, [r0, #4]
 8001f4c:	6185      	str	r5, [r0, #24]
 8001f4e:	6382      	str	r2, [r0, #56]	; 0x38
 8001f50:	6203      	str	r3, [r0, #32]
 8001f52:	bd70      	pop	{r4, r5, r6, pc}
 8001f54:	40012c00 	.word	0x40012c00

08001f58 <TIM_CtrlPWMOutputs>:
 8001f58:	bf00      	nop
 8001f5a:	bf00      	nop
 8001f5c:	6c43      	ldr	r3, [r0, #68]	; 0x44
 8001f5e:	b111      	cbz	r1, 8001f66 <TIM_CtrlPWMOutputs+0xe>
 8001f60:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
 8001f64:	e001      	b.n	8001f6a <TIM_CtrlPWMOutputs+0x12>
 8001f66:	f3c3 030e 	ubfx	r3, r3, #0, #15
 8001f6a:	6443      	str	r3, [r0, #68]	; 0x44
 8001f6c:	4770      	bx	lr

08001f6e <TIM_ClearITPendingBit>:
 8001f6e:	bf00      	nop
 8001f70:	43c9      	mvns	r1, r1
 8001f72:	b289      	uxth	r1, r1
 8001f74:	6101      	str	r1, [r0, #16]
 8001f76:	4770      	bx	lr

08001f78 <timer_init>:
 8001f78:	b530      	push	{r4, r5, lr}
 8001f7a:	2300      	movs	r3, #0
 8001f7c:	b085      	sub	sp, #20
 8001f7e:	491f      	ldr	r1, [pc, #124]	; (8001ffc <timer_init+0x84>)
 8001f80:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8001f84:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 8001f88:	491d      	ldr	r1, [pc, #116]	; (8002000 <timer_init+0x88>)
 8001f8a:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 8001f8e:	4a1d      	ldr	r2, [pc, #116]	; (8002004 <timer_init+0x8c>)
 8001f90:	2400      	movs	r4, #0
 8001f92:	f822 4013 	strh.w	r4, [r2, r3, lsl #1]
 8001f96:	3301      	adds	r3, #1
 8001f98:	2b04      	cmp	r3, #4
 8001f9a:	4625      	mov	r5, r4
 8001f9c:	d1ef      	bne.n	8001f7e <timer_init+0x6>
 8001f9e:	4b1a      	ldr	r3, [pc, #104]	; (8002008 <timer_init+0x90>)
 8001fa0:	2002      	movs	r0, #2
 8001fa2:	2101      	movs	r1, #1
 8001fa4:	601c      	str	r4, [r3, #0]
 8001fa6:	f7ff fee7 	bl	8001d78 <RCC_APB1PeriphClockCmd>
 8001faa:	f8ad 4006 	strh.w	r4, [sp, #6]
 8001fae:	f8ad 400c 	strh.w	r4, [sp, #12]
 8001fb2:	f8ad 400e 	strh.w	r4, [sp, #14]
 8001fb6:	4c15      	ldr	r4, [pc, #84]	; (800200c <timer_init+0x94>)
 8001fb8:	f44f 738c 	mov.w	r3, #280	; 0x118
 8001fbc:	f8ad 3004 	strh.w	r3, [sp, #4]
 8001fc0:	4620      	mov	r0, r4
 8001fc2:	2331      	movs	r3, #49	; 0x31
 8001fc4:	a901      	add	r1, sp, #4
 8001fc6:	9302      	str	r3, [sp, #8]
 8001fc8:	f7ff fee4 	bl	8001d94 <TIM_TimeBaseInit>
 8001fcc:	4620      	mov	r0, r4
 8001fce:	2101      	movs	r1, #1
 8001fd0:	f7ff ff30 	bl	8001e34 <TIM_Cmd>
 8001fd4:	68e3      	ldr	r3, [r4, #12]
 8001fd6:	f043 0301 	orr.w	r3, r3, #1
 8001fda:	60e3      	str	r3, [r4, #12]
 8001fdc:	231d      	movs	r3, #29
 8001fde:	f88d 3000 	strb.w	r3, [sp]
 8001fe2:	4668      	mov	r0, sp
 8001fe4:	2301      	movs	r3, #1
 8001fe6:	f88d 5001 	strb.w	r5, [sp, #1]
 8001fea:	f88d 3002 	strb.w	r3, [sp, #2]
 8001fee:	f88d 3003 	strb.w	r3, [sp, #3]
 8001ff2:	f000 fc6f 	bl	80028d4 <NVIC_Init>
 8001ff6:	b005      	add	sp, #20
 8001ff8:	bd30      	pop	{r4, r5, pc}
 8001ffa:	bf00      	nop
 8001ffc:	20001024 	.word	0x20001024
 8002000:	20001018 	.word	0x20001018
 8002004:	20001010 	.word	0x20001010
 8002008:	20001020 	.word	0x20001020
 800200c:	40000400 	.word	0x40000400

08002010 <TIM3_IRQHandler>:
 8002010:	2300      	movs	r3, #0
 8002012:	4910      	ldr	r1, [pc, #64]	; (8002054 <TIM3_IRQHandler+0x44>)
 8002014:	f831 2013 	ldrh.w	r2, [r1, r3, lsl #1]
 8002018:	b292      	uxth	r2, r2
 800201a:	b132      	cbz	r2, 800202a <TIM3_IRQHandler+0x1a>
 800201c:	f831 2013 	ldrh.w	r2, [r1, r3, lsl #1]
 8002020:	3a01      	subs	r2, #1
 8002022:	b292      	uxth	r2, r2
 8002024:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 8002028:	e009      	b.n	800203e <TIM3_IRQHandler+0x2e>
 800202a:	4a0b      	ldr	r2, [pc, #44]	; (8002058 <TIM3_IRQHandler+0x48>)
 800202c:	f832 2013 	ldrh.w	r2, [r2, r3, lsl #1]
 8002030:	b292      	uxth	r2, r2
 8002032:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 8002036:	4a09      	ldr	r2, [pc, #36]	; (800205c <TIM3_IRQHandler+0x4c>)
 8002038:	2101      	movs	r1, #1
 800203a:	f822 1013 	strh.w	r1, [r2, r3, lsl #1]
 800203e:	3301      	adds	r3, #1
 8002040:	2b04      	cmp	r3, #4
 8002042:	d1e6      	bne.n	8002012 <TIM3_IRQHandler+0x2>
 8002044:	4a06      	ldr	r2, [pc, #24]	; (8002060 <TIM3_IRQHandler+0x50>)
 8002046:	4807      	ldr	r0, [pc, #28]	; (8002064 <TIM3_IRQHandler+0x54>)
 8002048:	6813      	ldr	r3, [r2, #0]
 800204a:	2101      	movs	r1, #1
 800204c:	3301      	adds	r3, #1
 800204e:	6013      	str	r3, [r2, #0]
 8002050:	f7ff bf8d 	b.w	8001f6e <TIM_ClearITPendingBit>
 8002054:	20001024 	.word	0x20001024
 8002058:	20001018 	.word	0x20001018
 800205c:	20001010 	.word	0x20001010
 8002060:	20001020 	.word	0x20001020
 8002064:	40000400 	.word	0x40000400

08002068 <timer_get_time>:
 8002068:	b082      	sub	sp, #8
 800206a:	b672      	cpsid	i
 800206c:	4b04      	ldr	r3, [pc, #16]	; (8002080 <timer_get_time+0x18>)
 800206e:	681b      	ldr	r3, [r3, #0]
 8002070:	9301      	str	r3, [sp, #4]
 8002072:	b662      	cpsie	i
 8002074:	230a      	movs	r3, #10
 8002076:	9801      	ldr	r0, [sp, #4]
 8002078:	fbb0 f0f3 	udiv	r0, r0, r3
 800207c:	b002      	add	sp, #8
 800207e:	4770      	bx	lr
 8002080:	20001020 	.word	0x20001020

08002084 <timer_delay_ms>:
 8002084:	b513      	push	{r0, r1, r4, lr}
 8002086:	4604      	mov	r4, r0
 8002088:	f7ff ffee 	bl	8002068 <timer_get_time>
 800208c:	4420      	add	r0, r4
 800208e:	9001      	str	r0, [sp, #4]
 8002090:	9c01      	ldr	r4, [sp, #4]
 8002092:	f7ff ffe9 	bl	8002068 <timer_get_time>
 8002096:	4284      	cmp	r4, r0
 8002098:	d902      	bls.n	80020a0 <timer_delay_ms+0x1c>
 800209a:	f000 fb19 	bl	80026d0 <core_yield>
 800209e:	e7f7      	b.n	8002090 <timer_delay_ms+0xc>
 80020a0:	b002      	add	sp, #8
 80020a2:	bd10      	pop	{r4, pc}

080020a4 <event_timer_set_period>:
 80020a4:	b672      	cpsid	i
 80020a6:	eb01 0181 	add.w	r1, r1, r1, lsl #2
 80020aa:	4b07      	ldr	r3, [pc, #28]	; (80020c8 <event_timer_set_period+0x24>)
 80020ac:	0049      	lsls	r1, r1, #1
 80020ae:	b289      	uxth	r1, r1
 80020b0:	f823 1010 	strh.w	r1, [r3, r0, lsl #1]
 80020b4:	4b05      	ldr	r3, [pc, #20]	; (80020cc <event_timer_set_period+0x28>)
 80020b6:	f823 1010 	strh.w	r1, [r3, r0, lsl #1]
 80020ba:	4b05      	ldr	r3, [pc, #20]	; (80020d0 <event_timer_set_period+0x2c>)
 80020bc:	2200      	movs	r2, #0
 80020be:	f823 2010 	strh.w	r2, [r3, r0, lsl #1]
 80020c2:	b662      	cpsie	i
 80020c4:	4770      	bx	lr
 80020c6:	bf00      	nop
 80020c8:	20001024 	.word	0x20001024
 80020cc:	20001018 	.word	0x20001018
 80020d0:	20001010 	.word	0x20001010

080020d4 <event_timer_wait>:
 80020d4:	b510      	push	{r4, lr}
 80020d6:	4604      	mov	r4, r0
 80020d8:	4a06      	ldr	r2, [pc, #24]	; (80020f4 <event_timer_wait+0x20>)
 80020da:	f832 3014 	ldrh.w	r3, [r2, r4, lsl #1]
 80020de:	b29b      	uxth	r3, r3
 80020e0:	b913      	cbnz	r3, 80020e8 <event_timer_wait+0x14>
 80020e2:	f000 faf5 	bl	80026d0 <core_yield>
 80020e6:	e7f7      	b.n	80020d8 <event_timer_wait+0x4>
 80020e8:	b672      	cpsid	i
 80020ea:	2300      	movs	r3, #0
 80020ec:	f822 3014 	strh.w	r3, [r2, r4, lsl #1]
 80020f0:	b662      	cpsie	i
 80020f2:	bd10      	pop	{r4, pc}
 80020f4:	20001010 	.word	0x20001010

080020f8 <USART_Init>:
 80020f8:	b530      	push	{r4, r5, lr}
 80020fa:	4604      	mov	r4, r0
 80020fc:	b099      	sub	sp, #100	; 0x64
 80020fe:	460d      	mov	r5, r1
 8002100:	bf00      	nop
 8002102:	bf00      	nop
 8002104:	bf00      	nop
 8002106:	bf00      	nop
 8002108:	bf00      	nop
 800210a:	bf00      	nop
 800210c:	bf00      	nop
 800210e:	6803      	ldr	r3, [r0, #0]
 8002110:	f023 0301 	bic.w	r3, r3, #1
 8002114:	6003      	str	r3, [r0, #0]
 8002116:	6843      	ldr	r3, [r0, #4]
 8002118:	f423 5240 	bic.w	r2, r3, #12288	; 0x3000
 800211c:	688b      	ldr	r3, [r1, #8]
 800211e:	68c9      	ldr	r1, [r1, #12]
 8002120:	4313      	orrs	r3, r2
 8002122:	6043      	str	r3, [r0, #4]
 8002124:	686a      	ldr	r2, [r5, #4]
 8002126:	6803      	ldr	r3, [r0, #0]
 8002128:	4311      	orrs	r1, r2
 800212a:	692a      	ldr	r2, [r5, #16]
 800212c:	f423 53b0 	bic.w	r3, r3, #5632	; 0x1600
 8002130:	430a      	orrs	r2, r1
 8002132:	f023 030c 	bic.w	r3, r3, #12
 8002136:	4313      	orrs	r3, r2
 8002138:	6003      	str	r3, [r0, #0]
 800213a:	6883      	ldr	r3, [r0, #8]
 800213c:	f423 7240 	bic.w	r2, r3, #768	; 0x300
 8002140:	696b      	ldr	r3, [r5, #20]
 8002142:	4313      	orrs	r3, r2
 8002144:	6083      	str	r3, [r0, #8]
 8002146:	a801      	add	r0, sp, #4
 8002148:	f7ff fc84 	bl	8001a54 <RCC_GetClocksFreq>
 800214c:	4b17      	ldr	r3, [pc, #92]	; (80021ac <USART_Init+0xb4>)
 800214e:	429c      	cmp	r4, r3
 8002150:	d101      	bne.n	8002156 <USART_Init+0x5e>
 8002152:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8002154:	e00e      	b.n	8002174 <USART_Init+0x7c>
 8002156:	4b16      	ldr	r3, [pc, #88]	; (80021b0 <USART_Init+0xb8>)
 8002158:	429c      	cmp	r4, r3
 800215a:	d101      	bne.n	8002160 <USART_Init+0x68>
 800215c:	9b10      	ldr	r3, [sp, #64]	; 0x40
 800215e:	e009      	b.n	8002174 <USART_Init+0x7c>
 8002160:	4b14      	ldr	r3, [pc, #80]	; (80021b4 <USART_Init+0xbc>)
 8002162:	429c      	cmp	r4, r3
 8002164:	d101      	bne.n	800216a <USART_Init+0x72>
 8002166:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8002168:	e004      	b.n	8002174 <USART_Init+0x7c>
 800216a:	4b13      	ldr	r3, [pc, #76]	; (80021b8 <USART_Init+0xc0>)
 800216c:	429c      	cmp	r4, r3
 800216e:	bf0c      	ite	eq
 8002170:	9b12      	ldreq	r3, [sp, #72]	; 0x48
 8002172:	9b13      	ldrne	r3, [sp, #76]	; 0x4c
 8002174:	6822      	ldr	r2, [r4, #0]
 8002176:	6829      	ldr	r1, [r5, #0]
 8002178:	f412 4f00 	tst.w	r2, #32768	; 0x8000
 800217c:	bf18      	it	ne
 800217e:	005b      	lslne	r3, r3, #1
 8002180:	fbb3 f2f1 	udiv	r2, r3, r1
 8002184:	fb01 3312 	mls	r3, r1, r2, r3
 8002188:	ebb3 0f51 	cmp.w	r3, r1, lsr #1
 800218c:	6823      	ldr	r3, [r4, #0]
 800218e:	bf28      	it	cs
 8002190:	3201      	addcs	r2, #1
 8002192:	041b      	lsls	r3, r3, #16
 8002194:	bf41      	itttt	mi
 8002196:	f64f 73f0 	movwmi	r3, #65520	; 0xfff0
 800219a:	f3c2 0142 	ubfxmi	r1, r2, #1, #3
 800219e:	4013      	andmi	r3, r2
 80021a0:	ea41 0203 	orrmi.w	r2, r1, r3
 80021a4:	b292      	uxth	r2, r2
 80021a6:	81a2      	strh	r2, [r4, #12]
 80021a8:	b019      	add	sp, #100	; 0x64
 80021aa:	bd30      	pop	{r4, r5, pc}
 80021ac:	40013800 	.word	0x40013800
 80021b0:	40004400 	.word	0x40004400
 80021b4:	40004800 	.word	0x40004800
 80021b8:	40004c00 	.word	0x40004c00

080021bc <USART_Cmd>:
 80021bc:	bf00      	nop
 80021be:	bf00      	nop
 80021c0:	6803      	ldr	r3, [r0, #0]
 80021c2:	b111      	cbz	r1, 80021ca <USART_Cmd+0xe>
 80021c4:	f043 0301 	orr.w	r3, r3, #1
 80021c8:	e001      	b.n	80021ce <USART_Cmd+0x12>
 80021ca:	f023 0301 	bic.w	r3, r3, #1
 80021ce:	6003      	str	r3, [r0, #0]
 80021d0:	4770      	bx	lr

080021d2 <USART_ReceiveData>:
 80021d2:	bf00      	nop
 80021d4:	8c80      	ldrh	r0, [r0, #36]	; 0x24
 80021d6:	f3c0 0008 	ubfx	r0, r0, #0, #9
 80021da:	4770      	bx	lr

080021dc <USART_ITConfig>:
 80021dc:	b510      	push	{r4, lr}
 80021de:	bf00      	nop
 80021e0:	bf00      	nop
 80021e2:	bf00      	nop
 80021e4:	f3c1 2407 	ubfx	r4, r1, #8, #8
 80021e8:	2301      	movs	r3, #1
 80021ea:	b2c9      	uxtb	r1, r1
 80021ec:	2c02      	cmp	r4, #2
 80021ee:	fa03 f301 	lsl.w	r3, r3, r1
 80021f2:	d101      	bne.n	80021f8 <USART_ITConfig+0x1c>
 80021f4:	3004      	adds	r0, #4
 80021f6:	e002      	b.n	80021fe <USART_ITConfig+0x22>
 80021f8:	2c03      	cmp	r4, #3
 80021fa:	bf08      	it	eq
 80021fc:	3008      	addeq	r0, #8
 80021fe:	b112      	cbz	r2, 8002206 <USART_ITConfig+0x2a>
 8002200:	6802      	ldr	r2, [r0, #0]
 8002202:	4313      	orrs	r3, r2
 8002204:	e002      	b.n	800220c <USART_ITConfig+0x30>
 8002206:	6802      	ldr	r2, [r0, #0]
 8002208:	ea22 0303 	bic.w	r3, r2, r3
 800220c:	6003      	str	r3, [r0, #0]
 800220e:	bd10      	pop	{r4, pc}

08002210 <USART_GetITStatus>:
 8002210:	b510      	push	{r4, lr}
 8002212:	bf00      	nop
 8002214:	bf00      	nop
 8002216:	f3c1 2207 	ubfx	r2, r1, #8, #8
 800221a:	b2cc      	uxtb	r4, r1
 800221c:	2301      	movs	r3, #1
 800221e:	2a01      	cmp	r2, #1
 8002220:	fa03 f304 	lsl.w	r3, r3, r4
 8002224:	d101      	bne.n	800222a <USART_GetITStatus+0x1a>
 8002226:	6802      	ldr	r2, [r0, #0]
 8002228:	e003      	b.n	8002232 <USART_GetITStatus+0x22>
 800222a:	2a02      	cmp	r2, #2
 800222c:	bf0c      	ite	eq
 800222e:	6842      	ldreq	r2, [r0, #4]
 8002230:	6882      	ldrne	r2, [r0, #8]
 8002232:	4013      	ands	r3, r2
 8002234:	69c2      	ldr	r2, [r0, #28]
 8002236:	b13b      	cbz	r3, 8002248 <USART_GetITStatus+0x38>
 8002238:	0c09      	lsrs	r1, r1, #16
 800223a:	2301      	movs	r3, #1
 800223c:	408b      	lsls	r3, r1
 800223e:	4213      	tst	r3, r2
 8002240:	bf14      	ite	ne
 8002242:	2001      	movne	r0, #1
 8002244:	2000      	moveq	r0, #0
 8002246:	bd10      	pop	{r4, pc}
 8002248:	4618      	mov	r0, r3
 800224a:	bd10      	pop	{r4, pc}

0800224c <USART_ClearITPendingBit>:
 800224c:	bf00      	nop
 800224e:	bf00      	nop
 8002250:	2301      	movs	r3, #1
 8002252:	0c09      	lsrs	r1, r1, #16
 8002254:	408b      	lsls	r3, r1
 8002256:	6203      	str	r3, [r0, #32]
 8002258:	4770      	bx	lr
	...

0800225c <uart_write>:
 800225c:	4b04      	ldr	r3, [pc, #16]	; (8002270 <uart_write+0x14>)
 800225e:	69da      	ldr	r2, [r3, #28]
 8002260:	0612      	lsls	r2, r2, #24
 8002262:	d401      	bmi.n	8002268 <uart_write+0xc>
 8002264:	bf00      	nop
 8002266:	e7f9      	b.n	800225c <uart_write>
 8002268:	b280      	uxth	r0, r0
 800226a:	8518      	strh	r0, [r3, #40]	; 0x28
 800226c:	4770      	bx	lr
 800226e:	bf00      	nop
 8002270:	40013800 	.word	0x40013800

08002274 <uart_init>:
 8002274:	b530      	push	{r4, r5, lr}
 8002276:	4b2c      	ldr	r3, [pc, #176]	; (8002328 <uart_init+0xb4>)
 8002278:	4d2c      	ldr	r5, [pc, #176]	; (800232c <uart_init+0xb8>)
 800227a:	2400      	movs	r4, #0
 800227c:	601c      	str	r4, [r3, #0]
 800227e:	4b2c      	ldr	r3, [pc, #176]	; (8002330 <uart_init+0xbc>)
 8002280:	b08b      	sub	sp, #44	; 0x2c
 8002282:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 8002286:	2101      	movs	r1, #1
 8002288:	601c      	str	r4, [r3, #0]
 800228a:	f7ff fd59 	bl	8001d40 <RCC_AHBPeriphClockCmd>
 800228e:	f44f 4080 	mov.w	r0, #16384	; 0x4000
 8002292:	2101      	movs	r1, #1
 8002294:	f7ff fd62 	bl	8001d5c <RCC_APB2PeriphClockCmd>
 8002298:	f44f 63c0 	mov.w	r3, #1536	; 0x600
 800229c:	9302      	str	r3, [sp, #8]
 800229e:	2302      	movs	r3, #2
 80022a0:	f88d 300c 	strb.w	r3, [sp, #12]
 80022a4:	a902      	add	r1, sp, #8
 80022a6:	2303      	movs	r3, #3
 80022a8:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80022ac:	f88d 300d 	strb.w	r3, [sp, #13]
 80022b0:	f88d 400e 	strb.w	r4, [sp, #14]
 80022b4:	f88d 400f 	strb.w	r4, [sp, #15]
 80022b8:	f000 fb57 	bl	800296a <GPIO_Init>
 80022bc:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80022c0:	2109      	movs	r1, #9
 80022c2:	2207      	movs	r2, #7
 80022c4:	f000 fb9b 	bl	80029fe <GPIO_PinAFConfig>
 80022c8:	2207      	movs	r2, #7
 80022ca:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80022ce:	210a      	movs	r1, #10
 80022d0:	f000 fb95 	bl	80029fe <GPIO_PinAFConfig>
 80022d4:	f44f 33e1 	mov.w	r3, #115200	; 0x1c200
 80022d8:	9304      	str	r3, [sp, #16]
 80022da:	4628      	mov	r0, r5
 80022dc:	230c      	movs	r3, #12
 80022de:	a904      	add	r1, sp, #16
 80022e0:	9308      	str	r3, [sp, #32]
 80022e2:	9405      	str	r4, [sp, #20]
 80022e4:	9406      	str	r4, [sp, #24]
 80022e6:	9407      	str	r4, [sp, #28]
 80022e8:	9409      	str	r4, [sp, #36]	; 0x24
 80022ea:	f7ff ff05 	bl	80020f8 <USART_Init>
 80022ee:	4628      	mov	r0, r5
 80022f0:	2101      	movs	r1, #1
 80022f2:	f7ff ff63 	bl	80021bc <USART_Cmd>
 80022f6:	2201      	movs	r2, #1
 80022f8:	4628      	mov	r0, r5
 80022fa:	490e      	ldr	r1, [pc, #56]	; (8002334 <uart_init+0xc0>)
 80022fc:	f7ff ff6e 	bl	80021dc <USART_ITConfig>
 8002300:	2325      	movs	r3, #37	; 0x25
 8002302:	f88d 4005 	strb.w	r4, [sp, #5]
 8002306:	f88d 4006 	strb.w	r4, [sp, #6]
 800230a:	a801      	add	r0, sp, #4
 800230c:	2401      	movs	r4, #1
 800230e:	f88d 3004 	strb.w	r3, [sp, #4]
 8002312:	f88d 4007 	strb.w	r4, [sp, #7]
 8002316:	f000 fadd 	bl	80028d4 <NVIC_Init>
 800231a:	4628      	mov	r0, r5
 800231c:	4621      	mov	r1, r4
 800231e:	f7ff ff4d 	bl	80021bc <USART_Cmd>
 8002322:	b00b      	add	sp, #44	; 0x2c
 8002324:	bd30      	pop	{r4, r5, pc}
 8002326:	bf00      	nop
 8002328:	2000103c 	.word	0x2000103c
 800232c:	40013800 	.word	0x40013800
 8002330:	20001040 	.word	0x20001040
 8002334:	00050105 	.word	0x00050105

08002338 <USART1_IRQHandler>:
 8002338:	b508      	push	{r3, lr}
 800233a:	480d      	ldr	r0, [pc, #52]	; (8002370 <USART1_IRQHandler+0x38>)
 800233c:	490d      	ldr	r1, [pc, #52]	; (8002374 <USART1_IRQHandler+0x3c>)
 800233e:	f7ff ff67 	bl	8002210 <USART_GetITStatus>
 8002342:	b178      	cbz	r0, 8002364 <USART1_IRQHandler+0x2c>
 8002344:	480a      	ldr	r0, [pc, #40]	; (8002370 <USART1_IRQHandler+0x38>)
 8002346:	f7ff ff44 	bl	80021d2 <USART_ReceiveData>
 800234a:	4b0b      	ldr	r3, [pc, #44]	; (8002378 <USART1_IRQHandler+0x40>)
 800234c:	490b      	ldr	r1, [pc, #44]	; (800237c <USART1_IRQHandler+0x44>)
 800234e:	681a      	ldr	r2, [r3, #0]
 8002350:	b2c0      	uxtb	r0, r0
 8002352:	5488      	strb	r0, [r1, r2]
 8002354:	681a      	ldr	r2, [r3, #0]
 8002356:	3201      	adds	r2, #1
 8002358:	601a      	str	r2, [r3, #0]
 800235a:	681a      	ldr	r2, [r3, #0]
 800235c:	2a0f      	cmp	r2, #15
 800235e:	bf84      	itt	hi
 8002360:	2200      	movhi	r2, #0
 8002362:	601a      	strhi	r2, [r3, #0]
 8002364:	4802      	ldr	r0, [pc, #8]	; (8002370 <USART1_IRQHandler+0x38>)
 8002366:	4903      	ldr	r1, [pc, #12]	; (8002374 <USART1_IRQHandler+0x3c>)
 8002368:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800236c:	f7ff bf6e 	b.w	800224c <USART_ClearITPendingBit>
 8002370:	40013800 	.word	0x40013800
 8002374:	00050105 	.word	0x00050105
 8002378:	2000103c 	.word	0x2000103c
 800237c:	2000102c 	.word	0x2000102c

08002380 <i2c_delay>:
 8002380:	bf00      	nop
 8002382:	bf00      	nop
 8002384:	bf00      	nop
 8002386:	bf00      	nop
 8002388:	4770      	bx	lr
	...

0800238c <SetLowSDA>:
 800238c:	b537      	push	{r0, r1, r2, r4, r5, lr}
 800238e:	4d0d      	ldr	r5, [pc, #52]	; (80023c4 <SetLowSDA+0x38>)
 8002390:	2301      	movs	r3, #1
 8002392:	2203      	movs	r2, #3
 8002394:	2480      	movs	r4, #128	; 0x80
 8002396:	f88d 3004 	strb.w	r3, [sp, #4]
 800239a:	f88d 3006 	strb.w	r3, [sp, #6]
 800239e:	4628      	mov	r0, r5
 80023a0:	2300      	movs	r3, #0
 80023a2:	4669      	mov	r1, sp
 80023a4:	f88d 2005 	strb.w	r2, [sp, #5]
 80023a8:	f88d 3007 	strb.w	r3, [sp, #7]
 80023ac:	9400      	str	r4, [sp, #0]
 80023ae:	f000 fadc 	bl	800296a <GPIO_Init>
 80023b2:	4628      	mov	r0, r5
 80023b4:	4621      	mov	r1, r4
 80023b6:	f000 fb1e 	bl	80029f6 <GPIO_ResetBits>
 80023ba:	f7ff ffe1 	bl	8002380 <i2c_delay>
 80023be:	b003      	add	sp, #12
 80023c0:	bd30      	pop	{r4, r5, pc}
 80023c2:	bf00      	nop
 80023c4:	48000400 	.word	0x48000400

080023c8 <SetHighSDA>:
 80023c8:	b537      	push	{r0, r1, r2, r4, r5, lr}
 80023ca:	4d0d      	ldr	r5, [pc, #52]	; (8002400 <SetHighSDA+0x38>)
 80023cc:	2203      	movs	r2, #3
 80023ce:	2300      	movs	r3, #0
 80023d0:	2480      	movs	r4, #128	; 0x80
 80023d2:	f88d 2005 	strb.w	r2, [sp, #5]
 80023d6:	4628      	mov	r0, r5
 80023d8:	2201      	movs	r2, #1
 80023da:	4669      	mov	r1, sp
 80023dc:	f88d 3004 	strb.w	r3, [sp, #4]
 80023e0:	f88d 2006 	strb.w	r2, [sp, #6]
 80023e4:	f88d 3007 	strb.w	r3, [sp, #7]
 80023e8:	9400      	str	r4, [sp, #0]
 80023ea:	f000 fabe 	bl	800296a <GPIO_Init>
 80023ee:	4628      	mov	r0, r5
 80023f0:	4621      	mov	r1, r4
 80023f2:	f000 fafc 	bl	80029ee <GPIO_SetBits>
 80023f6:	f7ff ffc3 	bl	8002380 <i2c_delay>
 80023fa:	b003      	add	sp, #12
 80023fc:	bd30      	pop	{r4, r5, pc}
 80023fe:	bf00      	nop
 8002400:	48000400 	.word	0x48000400

08002404 <SetLowSCL>:
 8002404:	b508      	push	{r3, lr}
 8002406:	4804      	ldr	r0, [pc, #16]	; (8002418 <SetLowSCL+0x14>)
 8002408:	2140      	movs	r1, #64	; 0x40
 800240a:	f000 faf4 	bl	80029f6 <GPIO_ResetBits>
 800240e:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8002412:	f7ff bfb5 	b.w	8002380 <i2c_delay>
 8002416:	bf00      	nop
 8002418:	48000400 	.word	0x48000400

0800241c <SetHighSCL>:
 800241c:	b508      	push	{r3, lr}
 800241e:	4804      	ldr	r0, [pc, #16]	; (8002430 <SetHighSCL+0x14>)
 8002420:	2140      	movs	r1, #64	; 0x40
 8002422:	f000 fae4 	bl	80029ee <GPIO_SetBits>
 8002426:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800242a:	f7ff bfa9 	b.w	8002380 <i2c_delay>
 800242e:	bf00      	nop
 8002430:	48000400 	.word	0x48000400

08002434 <i2c_0_init>:
 8002434:	b507      	push	{r0, r1, r2, lr}
 8002436:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 800243a:	2101      	movs	r1, #1
 800243c:	f7ff fc80 	bl	8001d40 <RCC_AHBPeriphClockCmd>
 8002440:	23c0      	movs	r3, #192	; 0xc0
 8002442:	9300      	str	r3, [sp, #0]
 8002444:	2301      	movs	r3, #1
 8002446:	2203      	movs	r2, #3
 8002448:	480a      	ldr	r0, [pc, #40]	; (8002474 <i2c_0_init+0x40>)
 800244a:	f88d 3004 	strb.w	r3, [sp, #4]
 800244e:	4669      	mov	r1, sp
 8002450:	f88d 3006 	strb.w	r3, [sp, #6]
 8002454:	2300      	movs	r3, #0
 8002456:	f88d 2005 	strb.w	r2, [sp, #5]
 800245a:	f88d 3007 	strb.w	r3, [sp, #7]
 800245e:	f000 fa84 	bl	800296a <GPIO_Init>
 8002462:	f7ff ffdb 	bl	800241c <SetHighSCL>
 8002466:	f7ff ff91 	bl	800238c <SetLowSDA>
 800246a:	f7ff ffad 	bl	80023c8 <SetHighSDA>
 800246e:	b003      	add	sp, #12
 8002470:	f85d fb04 	ldr.w	pc, [sp], #4
 8002474:	48000400 	.word	0x48000400

08002478 <i2cStart>:
 8002478:	b508      	push	{r3, lr}
 800247a:	f7ff ffcf 	bl	800241c <SetHighSCL>
 800247e:	f7ff ffa3 	bl	80023c8 <SetHighSDA>
 8002482:	f7ff ffcb 	bl	800241c <SetHighSCL>
 8002486:	f7ff ff81 	bl	800238c <SetLowSDA>
 800248a:	f7ff ffbb 	bl	8002404 <SetLowSCL>
 800248e:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8002492:	f7ff bf99 	b.w	80023c8 <SetHighSDA>

08002496 <i2cStop>:
 8002496:	b508      	push	{r3, lr}
 8002498:	f7ff ffb4 	bl	8002404 <SetLowSCL>
 800249c:	f7ff ff76 	bl	800238c <SetLowSDA>
 80024a0:	f7ff ffbc 	bl	800241c <SetHighSCL>
 80024a4:	f7ff ff72 	bl	800238c <SetLowSDA>
 80024a8:	f7ff ffb8 	bl	800241c <SetHighSCL>
 80024ac:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80024b0:	f7ff bf8a 	b.w	80023c8 <SetHighSDA>

080024b4 <i2cWrite>:
 80024b4:	b538      	push	{r3, r4, r5, lr}
 80024b6:	4605      	mov	r5, r0
 80024b8:	2408      	movs	r4, #8
 80024ba:	f7ff ffa3 	bl	8002404 <SetLowSCL>
 80024be:	062b      	lsls	r3, r5, #24
 80024c0:	d502      	bpl.n	80024c8 <i2cWrite+0x14>
 80024c2:	f7ff ff81 	bl	80023c8 <SetHighSDA>
 80024c6:	e001      	b.n	80024cc <i2cWrite+0x18>
 80024c8:	f7ff ff60 	bl	800238c <SetLowSDA>
 80024cc:	3c01      	subs	r4, #1
 80024ce:	f7ff ffa5 	bl	800241c <SetHighSCL>
 80024d2:	006d      	lsls	r5, r5, #1
 80024d4:	f014 04ff 	ands.w	r4, r4, #255	; 0xff
 80024d8:	b2ed      	uxtb	r5, r5
 80024da:	d1ee      	bne.n	80024ba <i2cWrite+0x6>
 80024dc:	f7ff ff92 	bl	8002404 <SetLowSCL>
 80024e0:	f7ff ff72 	bl	80023c8 <SetHighSDA>
 80024e4:	f7ff ff9a 	bl	800241c <SetHighSCL>
 80024e8:	4b05      	ldr	r3, [pc, #20]	; (8002500 <i2cWrite+0x4c>)
 80024ea:	8a1c      	ldrh	r4, [r3, #16]
 80024ec:	b2a4      	uxth	r4, r4
 80024ee:	f7ff ff89 	bl	8002404 <SetLowSCL>
 80024f2:	f7ff ff45 	bl	8002380 <i2c_delay>
 80024f6:	f084 0080 	eor.w	r0, r4, #128	; 0x80
 80024fa:	f3c0 10c0 	ubfx	r0, r0, #7, #1
 80024fe:	bd38      	pop	{r3, r4, r5, pc}
 8002500:	48000400 	.word	0x48000400

08002504 <i2cRead>:
 8002504:	b570      	push	{r4, r5, r6, lr}
 8002506:	4606      	mov	r6, r0
 8002508:	f7ff ff7c 	bl	8002404 <SetLowSCL>
 800250c:	f7ff ff5c 	bl	80023c8 <SetHighSDA>
 8002510:	2508      	movs	r5, #8
 8002512:	2400      	movs	r4, #0
 8002514:	f7ff ff82 	bl	800241c <SetHighSCL>
 8002518:	4b0d      	ldr	r3, [pc, #52]	; (8002550 <i2cRead+0x4c>)
 800251a:	8a1b      	ldrh	r3, [r3, #16]
 800251c:	0064      	lsls	r4, r4, #1
 800251e:	061b      	lsls	r3, r3, #24
 8002520:	b2e4      	uxtb	r4, r4
 8002522:	bf48      	it	mi
 8002524:	3401      	addmi	r4, #1
 8002526:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 800252a:	bf48      	it	mi
 800252c:	b2e4      	uxtbmi	r4, r4
 800252e:	f7ff ff69 	bl	8002404 <SetLowSCL>
 8002532:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 8002536:	d1ed      	bne.n	8002514 <i2cRead+0x10>
 8002538:	b10e      	cbz	r6, 800253e <i2cRead+0x3a>
 800253a:	f7ff ff27 	bl	800238c <SetLowSDA>
 800253e:	f7ff ff6d 	bl	800241c <SetHighSCL>
 8002542:	f7ff ff5f 	bl	8002404 <SetLowSCL>
 8002546:	f7ff ff1b 	bl	8002380 <i2c_delay>
 800254a:	4620      	mov	r0, r4
 800254c:	bd70      	pop	{r4, r5, r6, pc}
 800254e:	bf00      	nop
 8002550:	48000400 	.word	0x48000400

08002554 <i2c_write_reg>:
 8002554:	b570      	push	{r4, r5, r6, lr}
 8002556:	4606      	mov	r6, r0
 8002558:	460d      	mov	r5, r1
 800255a:	4614      	mov	r4, r2
 800255c:	f7ff ff8c 	bl	8002478 <i2cStart>
 8002560:	4630      	mov	r0, r6
 8002562:	f7ff ffa7 	bl	80024b4 <i2cWrite>
 8002566:	4628      	mov	r0, r5
 8002568:	f7ff ffa4 	bl	80024b4 <i2cWrite>
 800256c:	4620      	mov	r0, r4
 800256e:	f7ff ffa1 	bl	80024b4 <i2cWrite>
 8002572:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8002576:	f7ff bf8e 	b.w	8002496 <i2cStop>

0800257a <i2c_read_reg>:
 800257a:	b538      	push	{r3, r4, r5, lr}
 800257c:	4604      	mov	r4, r0
 800257e:	460d      	mov	r5, r1
 8002580:	f7ff ff7a 	bl	8002478 <i2cStart>
 8002584:	4620      	mov	r0, r4
 8002586:	f7ff ff95 	bl	80024b4 <i2cWrite>
 800258a:	4628      	mov	r0, r5
 800258c:	f7ff ff92 	bl	80024b4 <i2cWrite>
 8002590:	f7ff ff72 	bl	8002478 <i2cStart>
 8002594:	f044 0001 	orr.w	r0, r4, #1
 8002598:	f7ff ff8c 	bl	80024b4 <i2cWrite>
 800259c:	2000      	movs	r0, #0
 800259e:	f7ff ffb1 	bl	8002504 <i2cRead>
 80025a2:	4604      	mov	r4, r0
 80025a4:	f7ff ff77 	bl	8002496 <i2cStop>
 80025a8:	4620      	mov	r0, r4
 80025aa:	bd38      	pop	{r3, r4, r5, pc}

080025ac <SystemInit>:
 80025ac:	4a39      	ldr	r2, [pc, #228]	; (8002694 <SystemInit+0xe8>)
 80025ae:	f8d2 3088 	ldr.w	r3, [r2, #136]	; 0x88
 80025b2:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
 80025b6:	f8c2 3088 	str.w	r3, [r2, #136]	; 0x88
 80025ba:	4b37      	ldr	r3, [pc, #220]	; (8002698 <SystemInit+0xec>)
 80025bc:	681a      	ldr	r2, [r3, #0]
 80025be:	f042 0201 	orr.w	r2, r2, #1
 80025c2:	601a      	str	r2, [r3, #0]
 80025c4:	6859      	ldr	r1, [r3, #4]
 80025c6:	4a35      	ldr	r2, [pc, #212]	; (800269c <SystemInit+0xf0>)
 80025c8:	400a      	ands	r2, r1
 80025ca:	605a      	str	r2, [r3, #4]
 80025cc:	681a      	ldr	r2, [r3, #0]
 80025ce:	f022 7284 	bic.w	r2, r2, #17301504	; 0x1080000
 80025d2:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
 80025d6:	601a      	str	r2, [r3, #0]
 80025d8:	681a      	ldr	r2, [r3, #0]
 80025da:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 80025de:	601a      	str	r2, [r3, #0]
 80025e0:	685a      	ldr	r2, [r3, #4]
 80025e2:	f422 02fe 	bic.w	r2, r2, #8323072	; 0x7f0000
 80025e6:	605a      	str	r2, [r3, #4]
 80025e8:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 80025ea:	f022 020f 	bic.w	r2, r2, #15
 80025ee:	62da      	str	r2, [r3, #44]	; 0x2c
 80025f0:	6b19      	ldr	r1, [r3, #48]	; 0x30
 80025f2:	4a2b      	ldr	r2, [pc, #172]	; (80026a0 <SystemInit+0xf4>)
 80025f4:	b082      	sub	sp, #8
 80025f6:	400a      	ands	r2, r1
 80025f8:	631a      	str	r2, [r3, #48]	; 0x30
 80025fa:	2200      	movs	r2, #0
 80025fc:	609a      	str	r2, [r3, #8]
 80025fe:	9200      	str	r2, [sp, #0]
 8002600:	9201      	str	r2, [sp, #4]
 8002602:	681a      	ldr	r2, [r3, #0]
 8002604:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
 8002608:	601a      	str	r2, [r3, #0]
 800260a:	681a      	ldr	r2, [r3, #0]
 800260c:	f402 3200 	and.w	r2, r2, #131072	; 0x20000
 8002610:	9201      	str	r2, [sp, #4]
 8002612:	9a00      	ldr	r2, [sp, #0]
 8002614:	3201      	adds	r2, #1
 8002616:	9200      	str	r2, [sp, #0]
 8002618:	9a01      	ldr	r2, [sp, #4]
 800261a:	b91a      	cbnz	r2, 8002624 <SystemInit+0x78>
 800261c:	9a00      	ldr	r2, [sp, #0]
 800261e:	f5b2 4fa0 	cmp.w	r2, #20480	; 0x5000
 8002622:	d1f2      	bne.n	800260a <SystemInit+0x5e>
 8002624:	681a      	ldr	r2, [r3, #0]
 8002626:	f412 3200 	ands.w	r2, r2, #131072	; 0x20000
 800262a:	bf18      	it	ne
 800262c:	2201      	movne	r2, #1
 800262e:	9201      	str	r2, [sp, #4]
 8002630:	9a01      	ldr	r2, [sp, #4]
 8002632:	2a01      	cmp	r2, #1
 8002634:	d005      	beq.n	8002642 <SystemInit+0x96>
 8002636:	4b17      	ldr	r3, [pc, #92]	; (8002694 <SystemInit+0xe8>)
 8002638:	f04f 6200 	mov.w	r2, #134217728	; 0x8000000
 800263c:	609a      	str	r2, [r3, #8]
 800263e:	b002      	add	sp, #8
 8002640:	4770      	bx	lr
 8002642:	4a18      	ldr	r2, [pc, #96]	; (80026a4 <SystemInit+0xf8>)
 8002644:	2112      	movs	r1, #18
 8002646:	6011      	str	r1, [r2, #0]
 8002648:	685a      	ldr	r2, [r3, #4]
 800264a:	605a      	str	r2, [r3, #4]
 800264c:	685a      	ldr	r2, [r3, #4]
 800264e:	605a      	str	r2, [r3, #4]
 8002650:	685a      	ldr	r2, [r3, #4]
 8002652:	f442 6280 	orr.w	r2, r2, #1024	; 0x400
 8002656:	605a      	str	r2, [r3, #4]
 8002658:	685a      	ldr	r2, [r3, #4]
 800265a:	f422 127c 	bic.w	r2, r2, #4128768	; 0x3f0000
 800265e:	605a      	str	r2, [r3, #4]
 8002660:	685a      	ldr	r2, [r3, #4]
 8002662:	f442 12e8 	orr.w	r2, r2, #1900544	; 0x1d0000
 8002666:	605a      	str	r2, [r3, #4]
 8002668:	681a      	ldr	r2, [r3, #0]
 800266a:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
 800266e:	601a      	str	r2, [r3, #0]
 8002670:	6819      	ldr	r1, [r3, #0]
 8002672:	4a09      	ldr	r2, [pc, #36]	; (8002698 <SystemInit+0xec>)
 8002674:	0189      	lsls	r1, r1, #6
 8002676:	d5fb      	bpl.n	8002670 <SystemInit+0xc4>
 8002678:	6851      	ldr	r1, [r2, #4]
 800267a:	f021 0103 	bic.w	r1, r1, #3
 800267e:	6051      	str	r1, [r2, #4]
 8002680:	6851      	ldr	r1, [r2, #4]
 8002682:	f041 0102 	orr.w	r1, r1, #2
 8002686:	6051      	str	r1, [r2, #4]
 8002688:	685a      	ldr	r2, [r3, #4]
 800268a:	f002 020c 	and.w	r2, r2, #12
 800268e:	2a08      	cmp	r2, #8
 8002690:	d1fa      	bne.n	8002688 <SystemInit+0xdc>
 8002692:	e7d0      	b.n	8002636 <SystemInit+0x8a>
 8002694:	e000ed00 	.word	0xe000ed00
 8002698:	40021000 	.word	0x40021000
 800269c:	f87fc00c 	.word	0xf87fc00c
 80026a0:	ff00fccc 	.word	0xff00fccc
 80026a4:	40022000 	.word	0x40022000

080026a8 <sys_tick_init>:
 80026a8:	4b06      	ldr	r3, [pc, #24]	; (80026c4 <sys_tick_init+0x1c>)
 80026aa:	f244 6250 	movw	r2, #18000	; 0x4650
 80026ae:	605a      	str	r2, [r3, #4]
 80026b0:	4a05      	ldr	r2, [pc, #20]	; (80026c8 <sys_tick_init+0x20>)
 80026b2:	21f0      	movs	r1, #240	; 0xf0
 80026b4:	f882 1023 	strb.w	r1, [r2, #35]	; 0x23
 80026b8:	2200      	movs	r2, #0
 80026ba:	609a      	str	r2, [r3, #8]
 80026bc:	2207      	movs	r2, #7
 80026be:	601a      	str	r2, [r3, #0]
 80026c0:	4770      	bx	lr
 80026c2:	bf00      	nop
 80026c4:	e000e010 	.word	0xe000e010
 80026c8:	e000ed00 	.word	0xe000ed00

080026cc <sleep>:
 80026cc:	bf30      	wfi
 80026ce:	4770      	bx	lr

080026d0 <core_yield>:
 80026d0:	bf00      	nop
 80026d2:	4770      	bx	lr

080026d4 <sytem_clock_init>:
 80026d4:	f7ff bf6a 	b.w	80025ac <SystemInit>

080026d8 <pwm_set>:
 80026d8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80026dc:	b086      	sub	sp, #24
 80026de:	2370      	movs	r3, #112	; 0x70
 80026e0:	9301      	str	r3, [sp, #4]
 80026e2:	2301      	movs	r3, #1
 80026e4:	f8ad 3008 	strh.w	r3, [sp, #8]
 80026e8:	2304      	movs	r3, #4
 80026ea:	f8ad 300a 	strh.w	r3, [sp, #10]
 80026ee:	f8df 8064 	ldr.w	r8, [pc, #100]	; 8002754 <pwm_set+0x7c>
 80026f2:	4c17      	ldr	r4, [pc, #92]	; (8002750 <pwm_set+0x78>)
 80026f4:	2302      	movs	r3, #2
 80026f6:	f8ad 3010 	strh.w	r3, [sp, #16]
 80026fa:	2300      	movs	r3, #0
 80026fc:	f8ad 3012 	strh.w	r3, [sp, #18]
 8002700:	f8ad 3016 	strh.w	r3, [sp, #22]
 8002704:	f242 7710 	movw	r7, #10000	; 0x2710
 8002708:	f8d8 3000 	ldr.w	r3, [r8]
 800270c:	fbb3 f3f7 	udiv	r3, r3, r7
 8002710:	3b02      	subs	r3, #2
 8002712:	f44f 7280 	mov.w	r2, #256	; 0x100
 8002716:	460e      	mov	r6, r1
 8002718:	2564      	movs	r5, #100	; 0x64
 800271a:	a901      	add	r1, sp, #4
 800271c:	4358      	muls	r0, r3
 800271e:	fbb0 f3f5 	udiv	r3, r0, r5
 8002722:	4620      	mov	r0, r4
 8002724:	f8ad 2014 	strh.w	r2, [sp, #20]
 8002728:	9303      	str	r3, [sp, #12]
 800272a:	f7ff fb91 	bl	8001e50 <TIM_OC1Init>
 800272e:	f8d8 1000 	ldr.w	r1, [r8]
 8002732:	fbb1 f1f7 	udiv	r1, r1, r7
 8002736:	3902      	subs	r1, #2
 8002738:	4371      	muls	r1, r6
 800273a:	4620      	mov	r0, r4
 800273c:	fbb1 f1f5 	udiv	r1, r1, r5
 8002740:	9103      	str	r1, [sp, #12]
 8002742:	a901      	add	r1, sp, #4
 8002744:	f7ff fbca 	bl	8001edc <TIM_OC2Init>
 8002748:	b006      	add	sp, #24
 800274a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800274e:	bf00      	nop
 8002750:	40012c00 	.word	0x40012c00
 8002754:	200000d0 	.word	0x200000d0

08002758 <pwm_init>:
 8002758:	b530      	push	{r4, r5, lr}
 800275a:	f44f 6000 	mov.w	r0, #2048	; 0x800
 800275e:	b087      	sub	sp, #28
 8002760:	2101      	movs	r1, #1
 8002762:	f7ff fafb 	bl	8001d5c <RCC_APB2PeriphClockCmd>
 8002766:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 800276a:	2101      	movs	r1, #1
 800276c:	f7ff fae8 	bl	8001d40 <RCC_AHBPeriphClockCmd>
 8002770:	4c1d      	ldr	r4, [pc, #116]	; (80027e8 <pwm_init+0x90>)
 8002772:	4d1e      	ldr	r5, [pc, #120]	; (80027ec <pwm_init+0x94>)
 8002774:	f44f 43c0 	mov.w	r3, #24576	; 0x6000
 8002778:	9301      	str	r3, [sp, #4]
 800277a:	2302      	movs	r3, #2
 800277c:	f88d 3008 	strb.w	r3, [sp, #8]
 8002780:	4620      	mov	r0, r4
 8002782:	2303      	movs	r3, #3
 8002784:	a901      	add	r1, sp, #4
 8002786:	f88d 3009 	strb.w	r3, [sp, #9]
 800278a:	f000 f8ee 	bl	800296a <GPIO_Init>
 800278e:	4620      	mov	r0, r4
 8002790:	210d      	movs	r1, #13
 8002792:	2206      	movs	r2, #6
 8002794:	f000 f933 	bl	80029fe <GPIO_PinAFConfig>
 8002798:	4620      	mov	r0, r4
 800279a:	210e      	movs	r1, #14
 800279c:	2206      	movs	r2, #6
 800279e:	f000 f92e 	bl	80029fe <GPIO_PinAFConfig>
 80027a2:	4b13      	ldr	r3, [pc, #76]	; (80027f0 <pwm_init+0x98>)
 80027a4:	2400      	movs	r4, #0
 80027a6:	f242 7210 	movw	r2, #10000	; 0x2710
 80027aa:	4628      	mov	r0, r5
 80027ac:	a903      	add	r1, sp, #12
 80027ae:	681b      	ldr	r3, [r3, #0]
 80027b0:	fbb3 f3f2 	udiv	r3, r3, r2
 80027b4:	3b01      	subs	r3, #1
 80027b6:	9304      	str	r3, [sp, #16]
 80027b8:	f8ad 400c 	strh.w	r4, [sp, #12]
 80027bc:	f8ad 400e 	strh.w	r4, [sp, #14]
 80027c0:	f8ad 4014 	strh.w	r4, [sp, #20]
 80027c4:	f8ad 4016 	strh.w	r4, [sp, #22]
 80027c8:	f7ff fae4 	bl	8001d94 <TIM_TimeBaseInit>
 80027cc:	4620      	mov	r0, r4
 80027ce:	4621      	mov	r1, r4
 80027d0:	f7ff ff82 	bl	80026d8 <pwm_set>
 80027d4:	4628      	mov	r0, r5
 80027d6:	2101      	movs	r1, #1
 80027d8:	f7ff fb2c 	bl	8001e34 <TIM_Cmd>
 80027dc:	4628      	mov	r0, r5
 80027de:	2101      	movs	r1, #1
 80027e0:	f7ff fbba 	bl	8001f58 <TIM_CtrlPWMOutputs>
 80027e4:	b007      	add	sp, #28
 80027e6:	bd30      	pop	{r4, r5, pc}
 80027e8:	48000400 	.word	0x48000400
 80027ec:	40012c00 	.word	0x40012c00
 80027f0:	200000d0 	.word	0x200000d0

080027f4 <drv8834_run>:
 80027f4:	1e02      	subs	r2, r0, #0
 80027f6:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80027fa:	bfd5      	itete	le
 80027fc:	4252      	negle	r2, r2
 80027fe:	8d03      	ldrhgt	r3, [r0, #40]	; 0x28
 8002800:	6983      	ldrle	r3, [r0, #24]
 8002802:	ea6f 4343 	mvngt.w	r3, r3, lsl #17
 8002806:	bfc5      	ittet	gt
 8002808:	ea6f 4353 	mvngt.w	r3, r3, lsr #17
 800280c:	b29b      	uxthgt	r3, r3
 800280e:	f443 4300 	orrle.w	r3, r3, #32768	; 0x8000
 8002812:	8503      	strhgt	r3, [r0, #40]	; 0x28
 8002814:	bfd8      	it	le
 8002816:	6183      	strle	r3, [r0, #24]
 8002818:	480d      	ldr	r0, [pc, #52]	; (8002850 <drv8834_run+0x5c>)
 800281a:	bfd8      	it	le
 800281c:	b212      	sxthle	r2, r2
 800281e:	2900      	cmp	r1, #0
 8002820:	bfcd      	iteet	gt
 8002822:	8d03      	ldrhgt	r3, [r0, #40]	; 0x28
 8002824:	6983      	ldrle	r3, [r0, #24]
 8002826:	4249      	negle	r1, r1
 8002828:	b29b      	uxthgt	r3, r3
 800282a:	bfd5      	itete	le
 800282c:	b209      	sxthle	r1, r1
 800282e:	f043 0320 	orrgt.w	r3, r3, #32
 8002832:	f043 0320 	orrle.w	r3, r3, #32
 8002836:	8503      	strhgt	r3, [r0, #40]	; 0x28
 8002838:	bfd8      	it	le
 800283a:	6183      	strle	r3, [r0, #24]
 800283c:	2964      	cmp	r1, #100	; 0x64
 800283e:	bfa8      	it	ge
 8002840:	2164      	movge	r1, #100	; 0x64
 8002842:	2a64      	cmp	r2, #100	; 0x64
 8002844:	bfa8      	it	ge
 8002846:	2264      	movge	r2, #100	; 0x64
 8002848:	4608      	mov	r0, r1
 800284a:	4611      	mov	r1, r2
 800284c:	f7ff bf44 	b.w	80026d8 <pwm_set>
 8002850:	48000400 	.word	0x48000400

08002854 <drv8834_init>:
 8002854:	e92d 41f3 	stmdb	sp!, {r0, r1, r4, r5, r6, r7, r8, lr}
 8002858:	4f1d      	ldr	r7, [pc, #116]	; (80028d0 <drv8834_init+0x7c>)
 800285a:	2400      	movs	r4, #0
 800285c:	2601      	movs	r6, #1
 800285e:	2503      	movs	r5, #3
 8002860:	f04f 0810 	mov.w	r8, #16
 8002864:	4638      	mov	r0, r7
 8002866:	4669      	mov	r1, sp
 8002868:	f8cd 8000 	str.w	r8, [sp]
 800286c:	f88d 6004 	strb.w	r6, [sp, #4]
 8002870:	f88d 4006 	strb.w	r4, [sp, #6]
 8002874:	f88d 5005 	strb.w	r5, [sp, #5]
 8002878:	f88d 4007 	strb.w	r4, [sp, #7]
 800287c:	f000 f875 	bl	800296a <GPIO_Init>
 8002880:	f8a7 8028 	strh.w	r8, [r7, #40]	; 0x28
 8002884:	2320      	movs	r3, #32
 8002886:	4638      	mov	r0, r7
 8002888:	4669      	mov	r1, sp
 800288a:	9300      	str	r3, [sp, #0]
 800288c:	f88d 6004 	strb.w	r6, [sp, #4]
 8002890:	f88d 4006 	strb.w	r4, [sp, #6]
 8002894:	f88d 5005 	strb.w	r5, [sp, #5]
 8002898:	f88d 4007 	strb.w	r4, [sp, #7]
 800289c:	f000 f865 	bl	800296a <GPIO_Init>
 80028a0:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 80028a4:	4669      	mov	r1, sp
 80028a6:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80028aa:	9300      	str	r3, [sp, #0]
 80028ac:	f88d 6004 	strb.w	r6, [sp, #4]
 80028b0:	f88d 4006 	strb.w	r4, [sp, #6]
 80028b4:	f88d 5005 	strb.w	r5, [sp, #5]
 80028b8:	f88d 4007 	strb.w	r4, [sp, #7]
 80028bc:	f000 f855 	bl	800296a <GPIO_Init>
 80028c0:	4620      	mov	r0, r4
 80028c2:	4621      	mov	r1, r4
 80028c4:	f7ff ff96 	bl	80027f4 <drv8834_run>
 80028c8:	b002      	add	sp, #8
 80028ca:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80028ce:	bf00      	nop
 80028d0:	48000400 	.word	0x48000400

080028d4 <NVIC_Init>:
 80028d4:	b510      	push	{r4, lr}
 80028d6:	bf00      	nop
 80028d8:	bf00      	nop
 80028da:	bf00      	nop
 80028dc:	78c2      	ldrb	r2, [r0, #3]
 80028de:	7803      	ldrb	r3, [r0, #0]
 80028e0:	b312      	cbz	r2, 8002928 <NVIC_Init+0x54>
 80028e2:	4a17      	ldr	r2, [pc, #92]	; (8002940 <NVIC_Init+0x6c>)
 80028e4:	68d1      	ldr	r1, [r2, #12]
 80028e6:	7842      	ldrb	r2, [r0, #1]
 80028e8:	43c9      	mvns	r1, r1
 80028ea:	f3c1 2102 	ubfx	r1, r1, #8, #3
 80028ee:	f1c1 0404 	rsb	r4, r1, #4
 80028f2:	b2e4      	uxtb	r4, r4
 80028f4:	40a2      	lsls	r2, r4
 80028f6:	b2d4      	uxtb	r4, r2
 80028f8:	220f      	movs	r2, #15
 80028fa:	410a      	asrs	r2, r1
 80028fc:	7881      	ldrb	r1, [r0, #2]
 80028fe:	400a      	ands	r2, r1
 8002900:	4322      	orrs	r2, r4
 8002902:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
 8002906:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
 800290a:	0112      	lsls	r2, r2, #4
 800290c:	b2d2      	uxtb	r2, r2
 800290e:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
 8002912:	7803      	ldrb	r3, [r0, #0]
 8002914:	2201      	movs	r2, #1
 8002916:	0959      	lsrs	r1, r3, #5
 8002918:	f003 031f 	and.w	r3, r3, #31
 800291c:	fa02 f303 	lsl.w	r3, r2, r3
 8002920:	4a08      	ldr	r2, [pc, #32]	; (8002944 <NVIC_Init+0x70>)
 8002922:	f842 3021 	str.w	r3, [r2, r1, lsl #2]
 8002926:	bd10      	pop	{r4, pc}
 8002928:	095a      	lsrs	r2, r3, #5
 800292a:	2101      	movs	r1, #1
 800292c:	f003 031f 	and.w	r3, r3, #31
 8002930:	4099      	lsls	r1, r3
 8002932:	f102 0320 	add.w	r3, r2, #32
 8002936:	4a03      	ldr	r2, [pc, #12]	; (8002944 <NVIC_Init+0x70>)
 8002938:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
 800293c:	bd10      	pop	{r4, pc}
 800293e:	bf00      	nop
 8002940:	e000ed00 	.word	0xe000ed00
 8002944:	e000e100 	.word	0xe000e100

08002948 <lib_low_level_init>:
 8002948:	b508      	push	{r3, lr}
 800294a:	f7ff fec3 	bl	80026d4 <sytem_clock_init>
 800294e:	f000 f86b 	bl	8002a28 <gpio_init>
 8002952:	f7ff fc8f 	bl	8002274 <uart_init>
 8002956:	f7ff fb0f 	bl	8001f78 <timer_init>
 800295a:	f7ff fefd 	bl	8002758 <pwm_init>
 800295e:	f7ff ff79 	bl	8002854 <drv8834_init>
 8002962:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8002966:	f7ff bd65 	b.w	8002434 <i2c_0_init>

0800296a <GPIO_Init>:
 800296a:	b5f0      	push	{r4, r5, r6, r7, lr}
 800296c:	bf00      	nop
 800296e:	bf00      	nop
 8002970:	bf00      	nop
 8002972:	bf00      	nop
 8002974:	2300      	movs	r3, #0
 8002976:	680e      	ldr	r6, [r1, #0]
 8002978:	461c      	mov	r4, r3
 800297a:	2501      	movs	r5, #1
 800297c:	40a5      	lsls	r5, r4
 800297e:	ea05 0e06 	and.w	lr, r5, r6
 8002982:	45ae      	cmp	lr, r5
 8002984:	d12d      	bne.n	80029e2 <GPIO_Init+0x78>
 8002986:	790f      	ldrb	r7, [r1, #4]
 8002988:	1e7a      	subs	r2, r7, #1
 800298a:	2a01      	cmp	r2, #1
 800298c:	d817      	bhi.n	80029be <GPIO_Init+0x54>
 800298e:	bf00      	nop
 8002990:	2203      	movs	r2, #3
 8002992:	6885      	ldr	r5, [r0, #8]
 8002994:	409a      	lsls	r2, r3
 8002996:	ea25 0202 	bic.w	r2, r5, r2
 800299a:	6082      	str	r2, [r0, #8]
 800299c:	794d      	ldrb	r5, [r1, #5]
 800299e:	6882      	ldr	r2, [r0, #8]
 80029a0:	409d      	lsls	r5, r3
 80029a2:	4315      	orrs	r5, r2
 80029a4:	6085      	str	r5, [r0, #8]
 80029a6:	bf00      	nop
 80029a8:	8882      	ldrh	r2, [r0, #4]
 80029aa:	b292      	uxth	r2, r2
 80029ac:	ea22 020e 	bic.w	r2, r2, lr
 80029b0:	8082      	strh	r2, [r0, #4]
 80029b2:	798a      	ldrb	r2, [r1, #6]
 80029b4:	8885      	ldrh	r5, [r0, #4]
 80029b6:	40a2      	lsls	r2, r4
 80029b8:	432a      	orrs	r2, r5
 80029ba:	b292      	uxth	r2, r2
 80029bc:	8082      	strh	r2, [r0, #4]
 80029be:	2203      	movs	r2, #3
 80029c0:	6805      	ldr	r5, [r0, #0]
 80029c2:	409a      	lsls	r2, r3
 80029c4:	43d2      	mvns	r2, r2
 80029c6:	4015      	ands	r5, r2
 80029c8:	6005      	str	r5, [r0, #0]
 80029ca:	6805      	ldr	r5, [r0, #0]
 80029cc:	409f      	lsls	r7, r3
 80029ce:	432f      	orrs	r7, r5
 80029d0:	6007      	str	r7, [r0, #0]
 80029d2:	68c7      	ldr	r7, [r0, #12]
 80029d4:	4017      	ands	r7, r2
 80029d6:	79ca      	ldrb	r2, [r1, #7]
 80029d8:	fa02 f503 	lsl.w	r5, r2, r3
 80029dc:	ea47 0205 	orr.w	r2, r7, r5
 80029e0:	60c2      	str	r2, [r0, #12]
 80029e2:	3401      	adds	r4, #1
 80029e4:	2c10      	cmp	r4, #16
 80029e6:	f103 0302 	add.w	r3, r3, #2
 80029ea:	d1c6      	bne.n	800297a <GPIO_Init+0x10>
 80029ec:	bdf0      	pop	{r4, r5, r6, r7, pc}

080029ee <GPIO_SetBits>:
 80029ee:	bf00      	nop
 80029f0:	bf00      	nop
 80029f2:	6181      	str	r1, [r0, #24]
 80029f4:	4770      	bx	lr

080029f6 <GPIO_ResetBits>:
 80029f6:	bf00      	nop
 80029f8:	bf00      	nop
 80029fa:	8501      	strh	r1, [r0, #40]	; 0x28
 80029fc:	4770      	bx	lr

080029fe <GPIO_PinAFConfig>:
 80029fe:	b510      	push	{r4, lr}
 8002a00:	bf00      	nop
 8002a02:	bf00      	nop
 8002a04:	bf00      	nop
 8002a06:	f001 0307 	and.w	r3, r1, #7
 8002a0a:	08c9      	lsrs	r1, r1, #3
 8002a0c:	eb00 0081 	add.w	r0, r0, r1, lsl #2
 8002a10:	009b      	lsls	r3, r3, #2
 8002a12:	6a04      	ldr	r4, [r0, #32]
 8002a14:	210f      	movs	r1, #15
 8002a16:	4099      	lsls	r1, r3
 8002a18:	ea24 0101 	bic.w	r1, r4, r1
 8002a1c:	6201      	str	r1, [r0, #32]
 8002a1e:	6a01      	ldr	r1, [r0, #32]
 8002a20:	409a      	lsls	r2, r3
 8002a22:	430a      	orrs	r2, r1
 8002a24:	6202      	str	r2, [r0, #32]
 8002a26:	bd10      	pop	{r4, pc}

08002a28 <gpio_init>:
 8002a28:	e92d 41f3 	stmdb	sp!, {r0, r1, r4, r5, r6, r7, r8, lr}
 8002a2c:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 8002a30:	2101      	movs	r1, #1
 8002a32:	f7ff f985 	bl	8001d40 <RCC_AHBPeriphClockCmd>
 8002a36:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 8002a3a:	2101      	movs	r1, #1
 8002a3c:	f7ff f980 	bl	8001d40 <RCC_AHBPeriphClockCmd>
 8002a40:	f44f 2000 	mov.w	r0, #524288	; 0x80000
 8002a44:	2101      	movs	r1, #1
 8002a46:	f7ff f97b 	bl	8001d40 <RCC_AHBPeriphClockCmd>
 8002a4a:	2400      	movs	r4, #0
 8002a4c:	2603      	movs	r6, #3
 8002a4e:	f44f 4500 	mov.w	r5, #32768	; 0x8000
 8002a52:	f04f 0801 	mov.w	r8, #1
 8002a56:	4669      	mov	r1, sp
 8002a58:	481a      	ldr	r0, [pc, #104]	; (8002ac4 <gpio_init+0x9c>)
 8002a5a:	9500      	str	r5, [sp, #0]
 8002a5c:	f88d 8004 	strb.w	r8, [sp, #4]
 8002a60:	f88d 4006 	strb.w	r4, [sp, #6]
 8002a64:	f88d 6005 	strb.w	r6, [sp, #5]
 8002a68:	f88d 4007 	strb.w	r4, [sp, #7]
 8002a6c:	f7ff ff7d 	bl	800296a <GPIO_Init>
 8002a70:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8002a74:	4669      	mov	r1, sp
 8002a76:	4813      	ldr	r0, [pc, #76]	; (8002ac4 <gpio_init+0x9c>)
 8002a78:	9300      	str	r3, [sp, #0]
 8002a7a:	4f13      	ldr	r7, [pc, #76]	; (8002ac8 <gpio_init+0xa0>)
 8002a7c:	f88d 4004 	strb.w	r4, [sp, #4]
 8002a80:	f88d 6005 	strb.w	r6, [sp, #5]
 8002a84:	f88d 4007 	strb.w	r4, [sp, #7]
 8002a88:	f7ff ff6f 	bl	800296a <GPIO_Init>
 8002a8c:	f44f 6380 	mov.w	r3, #1024	; 0x400
 8002a90:	9300      	str	r3, [sp, #0]
 8002a92:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8002a96:	2302      	movs	r3, #2
 8002a98:	4669      	mov	r1, sp
 8002a9a:	f88d 3007 	strb.w	r3, [sp, #7]
 8002a9e:	603c      	str	r4, [r7, #0]
 8002aa0:	f88d 4004 	strb.w	r4, [sp, #4]
 8002aa4:	f88d 6005 	strb.w	r6, [sp, #5]
 8002aa8:	f7ff ff5f 	bl	800296a <GPIO_Init>
 8002aac:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8002ab0:	8a1b      	ldrh	r3, [r3, #16]
 8002ab2:	055b      	lsls	r3, r3, #21
 8002ab4:	4b03      	ldr	r3, [pc, #12]	; (8002ac4 <gpio_init+0x9c>)
 8002ab6:	bf48      	it	mi
 8002ab8:	f8c7 8000 	strmi.w	r8, [r7]
 8002abc:	619d      	str	r5, [r3, #24]
 8002abe:	b002      	add	sp, #8
 8002ac0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8002ac4:	48000400 	.word	0x48000400
 8002ac8:	20001044 	.word	0x20001044

08002acc <led_on>:
 8002acc:	0403      	lsls	r3, r0, #16
 8002ace:	bf42      	ittt	mi
 8002ad0:	4b02      	ldrmi	r3, [pc, #8]	; (8002adc <led_on+0x10>)
 8002ad2:	f44f 4200 	movmi.w	r2, #32768	; 0x8000
 8002ad6:	619a      	strmi	r2, [r3, #24]
 8002ad8:	4770      	bx	lr
 8002ada:	bf00      	nop
 8002adc:	48000400 	.word	0x48000400

08002ae0 <led_off>:
 8002ae0:	0403      	lsls	r3, r0, #16
 8002ae2:	bf42      	ittt	mi
 8002ae4:	4b02      	ldrmi	r3, [pc, #8]	; (8002af0 <led_off+0x10>)
 8002ae6:	f44f 4200 	movmi.w	r2, #32768	; 0x8000
 8002aea:	851a      	strhmi	r2, [r3, #40]	; 0x28
 8002aec:	4770      	bx	lr
 8002aee:	bf00      	nop
 8002af0:	48000400 	.word	0x48000400

08002af4 <get_key>:
 8002af4:	4b02      	ldr	r3, [pc, #8]	; (8002b00 <get_key+0xc>)
 8002af6:	8a18      	ldrh	r0, [r3, #16]
 8002af8:	43c0      	mvns	r0, r0
 8002afa:	f400 5080 	and.w	r0, r0, #4096	; 0x1000
 8002afe:	4770      	bx	lr
 8002b00:	48000400 	.word	0x48000400

08002b04 <get_mode_jumper>:
 8002b04:	4b01      	ldr	r3, [pc, #4]	; (8002b0c <get_mode_jumper+0x8>)
 8002b06:	6818      	ldr	r0, [r3, #0]
 8002b08:	4770      	bx	lr
 8002b0a:	bf00      	nop
 8002b0c:	20001044 	.word	0x20001044

08002b10 <Default_Handler>:
 8002b10:	4668      	mov	r0, sp
 8002b12:	f020 0107 	bic.w	r1, r0, #7
 8002b16:	468d      	mov	sp, r1
 8002b18:	b501      	push	{r0, lr}
 8002b1a:	bf00      	nop
 8002b1c:	e8bd 4001 	ldmia.w	sp!, {r0, lr}
 8002b20:	4685      	mov	sp, r0
 8002b22:	4770      	bx	lr

08002b24 <HardFault_Handler>:
 8002b24:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8002b28:	f7ff ffd0 	bl	8002acc <led_on>
 8002b2c:	4b06      	ldr	r3, [pc, #24]	; (8002b48 <HardFault_Handler+0x24>)
 8002b2e:	3b01      	subs	r3, #1
 8002b30:	d001      	beq.n	8002b36 <HardFault_Handler+0x12>
 8002b32:	bf00      	nop
 8002b34:	e7fb      	b.n	8002b2e <HardFault_Handler+0xa>
 8002b36:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8002b3a:	f7ff ffd1 	bl	8002ae0 <led_off>
 8002b3e:	4b02      	ldr	r3, [pc, #8]	; (8002b48 <HardFault_Handler+0x24>)
 8002b40:	3b01      	subs	r3, #1
 8002b42:	d0ef      	beq.n	8002b24 <HardFault_Handler>
 8002b44:	bf00      	nop
 8002b46:	e7fb      	b.n	8002b40 <HardFault_Handler+0x1c>
 8002b48:	00989681 	.word	0x00989681

08002b4c <_reset_init>:
 8002b4c:	490e      	ldr	r1, [pc, #56]	; (8002b88 <_reset_init+0x3c>)
 8002b4e:	4b0f      	ldr	r3, [pc, #60]	; (8002b8c <_reset_init+0x40>)
 8002b50:	1a5b      	subs	r3, r3, r1
 8002b52:	109b      	asrs	r3, r3, #2
 8002b54:	2200      	movs	r2, #0
 8002b56:	429a      	cmp	r2, r3
 8002b58:	d006      	beq.n	8002b68 <_reset_init+0x1c>
 8002b5a:	480d      	ldr	r0, [pc, #52]	; (8002b90 <_reset_init+0x44>)
 8002b5c:	f850 0022 	ldr.w	r0, [r0, r2, lsl #2]
 8002b60:	f841 0022 	str.w	r0, [r1, r2, lsl #2]
 8002b64:	3201      	adds	r2, #1
 8002b66:	e7f6      	b.n	8002b56 <_reset_init+0xa>
 8002b68:	4a0a      	ldr	r2, [pc, #40]	; (8002b94 <_reset_init+0x48>)
 8002b6a:	f8d2 3088 	ldr.w	r3, [r2, #136]	; 0x88
 8002b6e:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
 8002b72:	f8c2 3088 	str.w	r3, [r2, #136]	; 0x88
 8002b76:	f502 720c 	add.w	r2, r2, #560	; 0x230
 8002b7a:	6853      	ldr	r3, [r2, #4]
 8002b7c:	f023 4340 	bic.w	r3, r3, #3221225472	; 0xc0000000
 8002b80:	6053      	str	r3, [r2, #4]
 8002b82:	f7fe bf53 	b.w	8001a2c <main>
 8002b86:	bf00      	nop
 8002b88:	20000000 	.word	0x20000000
 8002b8c:	20000504 	.word	0x20000504
 8002b90:	080047bc 	.word	0x080047bc
 8002b94:	e000ed00 	.word	0xe000ed00

08002b98 <selfrel_offset31>:
 8002b98:	e5903000 	ldr	r3, [r0]
 8002b9c:	e3130101 	tst	r3, #1073741824	; 0x40000000
 8002ba0:	13833102 	orrne	r3, r3, #-2147483648	; 0x80000000
 8002ba4:	03c33102 	biceq	r3, r3, #-2147483648	; 0x80000000
 8002ba8:	e0800003 	add	r0, r0, r3
 8002bac:	e12fff1e 	bx	lr

08002bb0 <search_EIT_table>:
 8002bb0:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8002bb4:	e3510000 	cmp	r1, #0
 8002bb8:	e24dd00c 	sub	sp, sp, #12
 8002bbc:	0a000029 	beq	8002c68 <search_EIT_table+0xb8>
 8002bc0:	e2413001 	sub	r3, r1, #1
 8002bc4:	e1a07002 	mov	r7, r2
 8002bc8:	e1a05000 	mov	r5, r0
 8002bcc:	e1a08003 	mov	r8, r3
 8002bd0:	e3a06000 	mov	r6, #0
 8002bd4:	e58d3004 	str	r3, [sp, #4]
 8002bd8:	e0864008 	add	r4, r6, r8
 8002bdc:	e0844fa4 	add	r4, r4, r4, lsr #31
 8002be0:	e1a040c4 	asr	r4, r4, #1
 8002be4:	e1a0a184 	lsl	sl, r4, #3
 8002be8:	e085b00a 	add	fp, r5, sl
 8002bec:	e1a0000b 	mov	r0, fp
 8002bf0:	ebffffe8 	bl	8002b98 <selfrel_offset31>
 8002bf4:	e59d3004 	ldr	r3, [sp, #4]
 8002bf8:	e1a09000 	mov	r9, r0
 8002bfc:	e1530004 	cmp	r3, r4
 8002c00:	e28a0008 	add	r0, sl, #8
 8002c04:	e0850000 	add	r0, r5, r0
 8002c08:	0a00000b 	beq	8002c3c <search_EIT_table+0x8c>
 8002c0c:	ebffffe1 	bl	8002b98 <selfrel_offset31>
 8002c10:	e1590007 	cmp	r9, r7
 8002c14:	e2400001 	sub	r0, r0, #1
 8002c18:	9a000003 	bls	8002c2c <search_EIT_table+0x7c>
 8002c1c:	e1540006 	cmp	r4, r6
 8002c20:	0a00000b 	beq	8002c54 <search_EIT_table+0xa4>
 8002c24:	e2448001 	sub	r8, r4, #1
 8002c28:	eaffffea 	b	8002bd8 <search_EIT_table+0x28>
 8002c2c:	e1500007 	cmp	r0, r7
 8002c30:	2a000003 	bcs	8002c44 <search_EIT_table+0x94>
 8002c34:	e2846001 	add	r6, r4, #1
 8002c38:	eaffffe6 	b	8002bd8 <search_EIT_table+0x28>
 8002c3c:	e1590007 	cmp	r9, r7
 8002c40:	8afffff5 	bhi	8002c1c <search_EIT_table+0x6c>
 8002c44:	e1a0000b 	mov	r0, fp
 8002c48:	e28dd00c 	add	sp, sp, #12
 8002c4c:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8002c50:	e12fff1e 	bx	lr
 8002c54:	e3a0b000 	mov	fp, #0
 8002c58:	e1a0000b 	mov	r0, fp
 8002c5c:	e28dd00c 	add	sp, sp, #12
 8002c60:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8002c64:	e12fff1e 	bx	lr
 8002c68:	e1a0b001 	mov	fp, r1
 8002c6c:	e1a0000b 	mov	r0, fp
 8002c70:	e28dd00c 	add	sp, sp, #12
 8002c74:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8002c78:	e12fff1e 	bx	lr

08002c7c <__gnu_unwind_get_pr_addr>:
 8002c7c:	e3500001 	cmp	r0, #1
 8002c80:	0a000006 	beq	8002ca0 <__gnu_unwind_get_pr_addr+0x24>
 8002c84:	e3500002 	cmp	r0, #2
 8002c88:	0a000006 	beq	8002ca8 <__gnu_unwind_get_pr_addr+0x2c>
 8002c8c:	e59f301c 	ldr	r3, [pc, #28]	; 8002cb0 <__gnu_unwind_get_pr_addr+0x34>
 8002c90:	e3500000 	cmp	r0, #0
 8002c94:	01a00003 	moveq	r0, r3
 8002c98:	13a00000 	movne	r0, #0
 8002c9c:	e12fff1e 	bx	lr
 8002ca0:	e59f000c 	ldr	r0, [pc, #12]	; 8002cb4 <__gnu_unwind_get_pr_addr+0x38>
 8002ca4:	e12fff1e 	bx	lr
 8002ca8:	e59f0008 	ldr	r0, [pc, #8]	; 8002cb8 <__gnu_unwind_get_pr_addr+0x3c>
 8002cac:	e12fff1e 	bx	lr
 8002cb0:	08003824 	.word	0x08003824
 8002cb4:	0800382c 	.word	0x0800382c
 8002cb8:	08003834 	.word	0x08003834

08002cbc <get_eit_entry>:
 8002cbc:	e92d4030 	push	{r4, r5, lr}
 8002cc0:	e59f3118 	ldr	r3, [pc, #280]	; 8002de0 <get_eit_entry+0x124>
 8002cc4:	e3530000 	cmp	r3, #0
 8002cc8:	e24dd00c 	sub	sp, sp, #12
 8002ccc:	e1a04000 	mov	r4, r0
 8002cd0:	e2415002 	sub	r5, r1, #2
 8002cd4:	0a00002d 	beq	8002d90 <get_eit_entry+0xd4>
 8002cd8:	e1a00005 	mov	r0, r5
 8002cdc:	e28d1004 	add	r1, sp, #4
 8002ce0:	e320f000 	nop	{0}
 8002ce4:	e3500000 	cmp	r0, #0
 8002ce8:	0a000021 	beq	8002d74 <get_eit_entry+0xb8>
 8002cec:	e59d1004 	ldr	r1, [sp, #4]
 8002cf0:	e1a02005 	mov	r2, r5
 8002cf4:	ebffffad 	bl	8002bb0 <search_EIT_table>
 8002cf8:	e2505000 	subs	r5, r0, #0
 8002cfc:	0a00001c 	beq	8002d74 <get_eit_entry+0xb8>
 8002d00:	ebffffa4 	bl	8002b98 <selfrel_offset31>
 8002d04:	e5953004 	ldr	r3, [r5, #4]
 8002d08:	e3530001 	cmp	r3, #1
 8002d0c:	e5840048 	str	r0, [r4, #72]	; 0x48
 8002d10:	0a000010 	beq	8002d58 <get_eit_entry+0x9c>
 8002d14:	e3530000 	cmp	r3, #0
 8002d18:	ba000023 	blt	8002dac <get_eit_entry+0xf0>
 8002d1c:	e2850004 	add	r0, r5, #4
 8002d20:	ebffff9c 	bl	8002b98 <selfrel_offset31>
 8002d24:	e3a03000 	mov	r3, #0
 8002d28:	e584004c 	str	r0, [r4, #76]	; 0x4c
 8002d2c:	e5843050 	str	r3, [r4, #80]	; 0x50
 8002d30:	e5903000 	ldr	r3, [r0]
 8002d34:	e3530000 	cmp	r3, #0
 8002d38:	ba000020 	blt	8002dc0 <get_eit_entry+0x104>
 8002d3c:	ebffff95 	bl	8002b98 <selfrel_offset31>
 8002d40:	e3a03000 	mov	r3, #0
 8002d44:	e5840010 	str	r0, [r4, #16]
 8002d48:	e1a00003 	mov	r0, r3
 8002d4c:	e28dd00c 	add	sp, sp, #12
 8002d50:	e8bd4030 	pop	{r4, r5, lr}
 8002d54:	e12fff1e 	bx	lr
 8002d58:	e3a03005 	mov	r3, #5
 8002d5c:	e3a02000 	mov	r2, #0
 8002d60:	e1a00003 	mov	r0, r3
 8002d64:	e5842010 	str	r2, [r4, #16]
 8002d68:	e28dd00c 	add	sp, sp, #12
 8002d6c:	e8bd4030 	pop	{r4, r5, lr}
 8002d70:	e12fff1e 	bx	lr
 8002d74:	e3a03009 	mov	r3, #9
 8002d78:	e3a02000 	mov	r2, #0
 8002d7c:	e1a00003 	mov	r0, r3
 8002d80:	e5842010 	str	r2, [r4, #16]
 8002d84:	e28dd00c 	add	sp, sp, #12
 8002d88:	e8bd4030 	pop	{r4, r5, lr}
 8002d8c:	e12fff1e 	bx	lr
 8002d90:	e59f104c 	ldr	r1, [pc, #76]	; 8002de4 <get_eit_entry+0x128>
 8002d94:	e59f304c 	ldr	r3, [pc, #76]	; 8002de8 <get_eit_entry+0x12c>
 8002d98:	e1a00001 	mov	r0, r1
 8002d9c:	e0611003 	rsb	r1, r1, r3
 8002da0:	e1a011c1 	asr	r1, r1, #3
 8002da4:	e58d1004 	str	r1, [sp, #4]
 8002da8:	eaffffd0 	b	8002cf0 <get_eit_entry+0x34>
 8002dac:	e3a03001 	mov	r3, #1
 8002db0:	e2850004 	add	r0, r5, #4
 8002db4:	e584004c 	str	r0, [r4, #76]	; 0x4c
 8002db8:	e5843050 	str	r3, [r4, #80]	; 0x50
 8002dbc:	eaffffdb 	b	8002d30 <get_eit_entry+0x74>
 8002dc0:	e1a00c23 	lsr	r0, r3, #24
 8002dc4:	e200000f 	and	r0, r0, #15
 8002dc8:	ebffffab 	bl	8002c7c <__gnu_unwind_get_pr_addr>
 8002dcc:	e3500000 	cmp	r0, #0
 8002dd0:	e5840010 	str	r0, [r4, #16]
 8002dd4:	03a03009 	moveq	r3, #9
 8002dd8:	13a03000 	movne	r3, #0
 8002ddc:	eaffffd9 	b	8002d48 <get_eit_entry+0x8c>
 8002de0:	00000000 	.word	0x00000000
 8002de4:	08004664 	.word	0x08004664
 8002de8:	080047bc 	.word	0x080047bc

08002dec <restore_non_core_regs>:
 8002dec:	e5903000 	ldr	r3, [r0]
 8002df0:	e3130001 	tst	r3, #1
 8002df4:	e92d4010 	push	{r4, lr}
 8002df8:	e1a04000 	mov	r4, r0
 8002dfc:	1a000004 	bne	8002e14 <restore_non_core_regs+0x28>
 8002e00:	e3130002 	tst	r3, #2
 8002e04:	e2800048 	add	r0, r0, #72	; 0x48
 8002e08:	0a00000a 	beq	8002e38 <restore_non_core_regs+0x4c>
 8002e0c:	eb0003a2 	bl	8003c9c <__gnu_Unwind_Restore_VFP_D>
 8002e10:	e5943000 	ldr	r3, [r4]
 8002e14:	e3130004 	tst	r3, #4
 8002e18:	0a00000a 	beq	8002e48 <restore_non_core_regs+0x5c>
 8002e1c:	e3130008 	tst	r3, #8
 8002e20:	0a00000d 	beq	8002e5c <restore_non_core_regs+0x70>
 8002e24:	e3130010 	tst	r3, #16
 8002e28:	02840e1d 	addeq	r0, r4, #464	; 0x1d0
 8002e2c:	0b0003c4 	bleq	8003d44 <__gnu_Unwind_Restore_WMMXC>
 8002e30:	e8bd4010 	pop	{r4, lr}
 8002e34:	e12fff1e 	bx	lr
 8002e38:	eb000393 	bl	8003c8c <__gnu_Unwind_Restore_VFP>
 8002e3c:	e5943000 	ldr	r3, [r4]
 8002e40:	e3130004 	tst	r3, #4
 8002e44:	1afffff4 	bne	8002e1c <restore_non_core_regs+0x30>
 8002e48:	e28400d0 	add	r0, r4, #208	; 0xd0
 8002e4c:	eb000396 	bl	8003cac <__gnu_Unwind_Restore_VFP_D_16_to_31>
 8002e50:	e5943000 	ldr	r3, [r4]
 8002e54:	e3130008 	tst	r3, #8
 8002e58:	1afffff1 	bne	8002e24 <restore_non_core_regs+0x38>
 8002e5c:	e2840e15 	add	r0, r4, #336	; 0x150
 8002e60:	eb000395 	bl	8003cbc <__gnu_Unwind_Restore_WMMXD>
 8002e64:	e5943000 	ldr	r3, [r4]
 8002e68:	eaffffed 	b	8002e24 <restore_non_core_regs+0x38>

08002e6c <_Unwind_decode_typeinfo_ptr.isra.0>:
 8002e6c:	e5903000 	ldr	r3, [r0]
 8002e70:	e3530000 	cmp	r3, #0
 8002e74:	10830000 	addne	r0, r3, r0
 8002e78:	01a00003 	moveq	r0, r3
 8002e7c:	e12fff1e 	bx	lr

08002e80 <__gnu_unwind_24bit.isra.1>:
 8002e80:	e3a00009 	mov	r0, #9
 8002e84:	e12fff1e 	bx	lr

08002e88 <_Unwind_DebugHook>:
 8002e88:	e12fff1e 	bx	lr

08002e8c <unwind_phase2>:
 8002e8c:	e92d4070 	push	{r4, r5, r6, lr}
 8002e90:	e1a04000 	mov	r4, r0
 8002e94:	e1a05001 	mov	r5, r1
 8002e98:	ea000009 	b	8002ec4 <unwind_phase2+0x38>
 8002e9c:	e5953040 	ldr	r3, [r5, #64]	; 0x40
 8002ea0:	e3a00001 	mov	r0, #1
 8002ea4:	e5843014 	str	r3, [r4, #20]
 8002ea8:	e1a01004 	mov	r1, r4
 8002eac:	e1a02005 	mov	r2, r5
 8002eb0:	e594c010 	ldr	ip, [r4, #16]
 8002eb4:	e1a0e00f 	mov	lr, pc
 8002eb8:	e12fff1c 	bx	ip
 8002ebc:	e3500008 	cmp	r0, #8
 8002ec0:	1a000005 	bne	8002edc <unwind_phase2+0x50>
 8002ec4:	e1a00004 	mov	r0, r4
 8002ec8:	e5951040 	ldr	r1, [r5, #64]	; 0x40
 8002ecc:	ebffff7a 	bl	8002cbc <get_eit_entry>
 8002ed0:	e2506000 	subs	r6, r0, #0
 8002ed4:	0afffff0 	beq	8002e9c <unwind_phase2+0x10>
 8002ed8:	eb000509 	bl	8004304 <abort>
 8002edc:	e3500007 	cmp	r0, #7
 8002ee0:	1afffffc 	bne	8002ed8 <unwind_phase2+0x4c>
 8002ee4:	e1a00006 	mov	r0, r6
 8002ee8:	e5951040 	ldr	r1, [r5, #64]	; 0x40
 8002eec:	ebffffe5 	bl	8002e88 <_Unwind_DebugHook>
 8002ef0:	e2850004 	add	r0, r5, #4
 8002ef4:	eb00035d 	bl	8003c70 <__restore_core_regs>

08002ef8 <unwind_phase2_forced>:
 8002ef8:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
 8002efc:	e1a05000 	mov	r5, r0
 8002f00:	e1a06002 	mov	r6, r2
 8002f04:	e3a04000 	mov	r4, #0
 8002f08:	e281e004 	add	lr, r1, #4
 8002f0c:	e24ddff2 	sub	sp, sp, #968	; 0x3c8
 8002f10:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
 8002f14:	e28dc00c 	add	ip, sp, #12
 8002f18:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
 8002f1c:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
 8002f20:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
 8002f24:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
 8002f28:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
 8002f2c:	e89e000f 	ldm	lr, {r0, r1, r2, r3}
 8002f30:	e1560004 	cmp	r6, r4
 8002f34:	e595800c 	ldr	r8, [r5, #12]
 8002f38:	e5959018 	ldr	r9, [r5, #24]
 8002f3c:	e88c000f 	stm	ip, {r0, r1, r2, r3}
 8002f40:	e1a00005 	mov	r0, r5
 8002f44:	e59d1048 	ldr	r1, [sp, #72]	; 0x48
 8002f48:	e58d4008 	str	r4, [sp, #8]
 8002f4c:	03a06009 	moveq	r6, #9
 8002f50:	13a0600a 	movne	r6, #10
 8002f54:	ebffff58 	bl	8002cbc <get_eit_entry>
 8002f58:	e1a04000 	mov	r4, r0
 8002f5c:	e28d7008 	add	r7, sp, #8
 8002f60:	e3540000 	cmp	r4, #0
 8002f64:	0a00000e 	beq	8002fa4 <unwind_phase2_forced+0xac>
 8002f68:	e59d3040 	ldr	r3, [sp, #64]	; 0x40
 8002f6c:	e88d0280 	stm	sp, {r7, r9}
 8002f70:	e58d304c 	str	r3, [sp, #76]	; 0x4c
 8002f74:	e3861010 	orr	r1, r6, #16
 8002f78:	e3a00001 	mov	r0, #1
 8002f7c:	e1a02005 	mov	r2, r5
 8002f80:	e1a03005 	mov	r3, r5
 8002f84:	e1a0e00f 	mov	lr, pc
 8002f88:	e12fff18 	bx	r8
 8002f8c:	e3500000 	cmp	r0, #0
 8002f90:	1a000029 	bne	800303c <unwind_phase2_forced+0x144>
 8002f94:	e1a00004 	mov	r0, r4
 8002f98:	e28ddff2 	add	sp, sp, #968	; 0x3c8
 8002f9c:	e8bd47f0 	pop	{r4, r5, r6, r7, r8, r9, sl, lr}
 8002fa0:	e12fff1e 	bx	lr
 8002fa4:	e59d3048 	ldr	r3, [sp, #72]	; 0x48
 8002fa8:	e1a01007 	mov	r1, r7
 8002fac:	e5853014 	str	r3, [r5, #20]
 8002fb0:	e3a02e1e 	mov	r2, #480	; 0x1e0
 8002fb4:	e28d0f7a 	add	r0, sp, #488	; 0x1e8
 8002fb8:	eb0004d6 	bl	8004318 <memcpy>
 8002fbc:	e1a01005 	mov	r1, r5
 8002fc0:	e28d2f7a 	add	r2, sp, #488	; 0x1e8
 8002fc4:	e1a00006 	mov	r0, r6
 8002fc8:	e595c010 	ldr	ip, [r5, #16]
 8002fcc:	e1a0e00f 	mov	lr, pc
 8002fd0:	e12fff1c 	bx	ip
 8002fd4:	e59d3220 	ldr	r3, [sp, #544]	; 0x220
 8002fd8:	e1a0a000 	mov	sl, r0
 8002fdc:	e58d304c 	str	r3, [sp, #76]	; 0x4c
 8002fe0:	e88d0280 	stm	sp, {r7, r9}
 8002fe4:	e1a01006 	mov	r1, r6
 8002fe8:	e3a00001 	mov	r0, #1
 8002fec:	e1a02005 	mov	r2, r5
 8002ff0:	e1a03005 	mov	r3, r5
 8002ff4:	e1a0e00f 	mov	lr, pc
 8002ff8:	e12fff18 	bx	r8
 8002ffc:	e3500000 	cmp	r0, #0
 8003000:	1a00000d 	bne	800303c <unwind_phase2_forced+0x144>
 8003004:	e1a00007 	mov	r0, r7
 8003008:	e28d1f7a 	add	r1, sp, #488	; 0x1e8
 800300c:	e3a02e1e 	mov	r2, #480	; 0x1e0
 8003010:	eb0004c0 	bl	8004318 <memcpy>
 8003014:	e35a0008 	cmp	sl, #8
 8003018:	1a000005 	bne	8003034 <unwind_phase2_forced+0x13c>
 800301c:	e1a00005 	mov	r0, r5
 8003020:	e59d1048 	ldr	r1, [sp, #72]	; 0x48
 8003024:	ebffff24 	bl	8002cbc <get_eit_entry>
 8003028:	e3a06009 	mov	r6, #9
 800302c:	e1a04000 	mov	r4, r0
 8003030:	eaffffca 	b	8002f60 <unwind_phase2_forced+0x68>
 8003034:	e35a0007 	cmp	sl, #7
 8003038:	0a000003 	beq	800304c <unwind_phase2_forced+0x154>
 800303c:	e3a00009 	mov	r0, #9
 8003040:	e28ddff2 	add	sp, sp, #968	; 0x3c8
 8003044:	e8bd47f0 	pop	{r4, r5, r6, r7, r8, r9, sl, lr}
 8003048:	e12fff1e 	bx	lr
 800304c:	e1a00004 	mov	r0, r4
 8003050:	e59d1048 	ldr	r1, [sp, #72]	; 0x48
 8003054:	ebffff8b 	bl	8002e88 <_Unwind_DebugHook>
 8003058:	e28d000c 	add	r0, sp, #12
 800305c:	eb000303 	bl	8003c70 <__restore_core_regs>

08003060 <_Unwind_GetCFA>:
 8003060:	e5900044 	ldr	r0, [r0, #68]	; 0x44
 8003064:	e12fff1e 	bx	lr

08003068 <__gnu_Unwind_RaiseException>:
 8003068:	e92d40f0 	push	{r4, r5, r6, r7, lr}
 800306c:	e3e05000 	mvn	r5, #0
 8003070:	e591303c 	ldr	r3, [r1, #60]	; 0x3c
 8003074:	e5813040 	str	r3, [r1, #64]	; 0x40
 8003078:	e281e004 	add	lr, r1, #4
 800307c:	e24ddf79 	sub	sp, sp, #484	; 0x1e4
 8003080:	e1a07001 	mov	r7, r1
 8003084:	e1a04000 	mov	r4, r0
 8003088:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
 800308c:	e28dc004 	add	ip, sp, #4
 8003090:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
 8003094:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
 8003098:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
 800309c:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
 80030a0:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
 80030a4:	e89e000f 	ldm	lr, {r0, r1, r2, r3}
 80030a8:	e28d6e1e 	add	r6, sp, #480	; 0x1e0
 80030ac:	e88c000f 	stm	ip, {r0, r1, r2, r3}
 80030b0:	e52651e0 	str	r5, [r6, #-480]!	; 0xfffffe20
 80030b4:	ea000007 	b	80030d8 <__gnu_Unwind_RaiseException+0x70>
 80030b8:	e1a01004 	mov	r1, r4
 80030bc:	e1a02006 	mov	r2, r6
 80030c0:	e594c010 	ldr	ip, [r4, #16]
 80030c4:	e1a0e00f 	mov	lr, pc
 80030c8:	e12fff1c 	bx	ip
 80030cc:	e3500008 	cmp	r0, #8
 80030d0:	e1a05000 	mov	r5, r0
 80030d4:	1a000008 	bne	80030fc <__gnu_Unwind_RaiseException+0x94>
 80030d8:	e1a00004 	mov	r0, r4
 80030dc:	e59d1040 	ldr	r1, [sp, #64]	; 0x40
 80030e0:	ebfffef5 	bl	8002cbc <get_eit_entry>
 80030e4:	e3500000 	cmp	r0, #0
 80030e8:	0afffff2 	beq	80030b8 <__gnu_Unwind_RaiseException+0x50>
 80030ec:	e3a00009 	mov	r0, #9
 80030f0:	e28ddf79 	add	sp, sp, #484	; 0x1e4
 80030f4:	e8bd40f0 	pop	{r4, r5, r6, r7, lr}
 80030f8:	e12fff1e 	bx	lr
 80030fc:	e1a00006 	mov	r0, r6
 8003100:	ebffff39 	bl	8002dec <restore_non_core_regs>
 8003104:	e3550006 	cmp	r5, #6
 8003108:	1afffff7 	bne	80030ec <__gnu_Unwind_RaiseException+0x84>
 800310c:	e1a00004 	mov	r0, r4
 8003110:	e1a01007 	mov	r1, r7
 8003114:	ebffff5c 	bl	8002e8c <unwind_phase2>

08003118 <__gnu_Unwind_ForcedUnwind>:
 8003118:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 800311c:	e593e03c 	ldr	lr, [r3, #60]	; 0x3c
 8003120:	e580100c 	str	r1, [r0, #12]
 8003124:	e5802018 	str	r2, [r0, #24]
 8003128:	e1a01003 	mov	r1, r3
 800312c:	e583e040 	str	lr, [r3, #64]	; 0x40
 8003130:	e3a02000 	mov	r2, #0
 8003134:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 8003138:	eaffff6e 	b	8002ef8 <unwind_phase2_forced>

0800313c <__gnu_Unwind_Resume>:
 800313c:	e92d4070 	push	{r4, r5, r6, lr}
 8003140:	e590600c 	ldr	r6, [r0, #12]
 8003144:	e5903014 	ldr	r3, [r0, #20]
 8003148:	e3560000 	cmp	r6, #0
 800314c:	e1a04000 	mov	r4, r0
 8003150:	e1a05001 	mov	r5, r1
 8003154:	e5813040 	str	r3, [r1, #64]	; 0x40
 8003158:	0a000002 	beq	8003168 <__gnu_Unwind_Resume+0x2c>
 800315c:	e3a02001 	mov	r2, #1
 8003160:	ebffff64 	bl	8002ef8 <unwind_phase2_forced>
 8003164:	eb000466 	bl	8004304 <abort>
 8003168:	e3a00002 	mov	r0, #2
 800316c:	e1a01004 	mov	r1, r4
 8003170:	e1a02005 	mov	r2, r5
 8003174:	e594c010 	ldr	ip, [r4, #16]
 8003178:	e1a0e00f 	mov	lr, pc
 800317c:	e12fff1c 	bx	ip
 8003180:	e3500007 	cmp	r0, #7
 8003184:	0a000004 	beq	800319c <__gnu_Unwind_Resume+0x60>
 8003188:	e3500008 	cmp	r0, #8
 800318c:	01a00004 	moveq	r0, r4
 8003190:	01a01005 	moveq	r1, r5
 8003194:	0bffff3c 	bleq	8002e8c <unwind_phase2>
 8003198:	eb000459 	bl	8004304 <abort>
 800319c:	e1a00006 	mov	r0, r6
 80031a0:	e5951040 	ldr	r1, [r5, #64]	; 0x40
 80031a4:	ebffff37 	bl	8002e88 <_Unwind_DebugHook>
 80031a8:	e2850004 	add	r0, r5, #4
 80031ac:	eb0002af 	bl	8003c70 <__restore_core_regs>

080031b0 <__gnu_Unwind_Resume_or_Rethrow>:
 80031b0:	e590300c 	ldr	r3, [r0, #12]
 80031b4:	e3530000 	cmp	r3, #0
 80031b8:	1591c03c 	ldrne	ip, [r1, #60]	; 0x3c
 80031bc:	13a02000 	movne	r2, #0
 80031c0:	1581c040 	strne	ip, [r1, #64]	; 0x40
 80031c4:	1affff4b 	bne	8002ef8 <unwind_phase2_forced>
 80031c8:	eaffffa6 	b	8003068 <__gnu_Unwind_RaiseException>

080031cc <_Unwind_Complete>:
 80031cc:	e12fff1e 	bx	lr

080031d0 <_Unwind_DeleteException>:
 80031d0:	e5903008 	ldr	r3, [r0, #8]
 80031d4:	e3530000 	cmp	r3, #0
 80031d8:	012fff1e 	bxeq	lr
 80031dc:	e1a01000 	mov	r1, r0
 80031e0:	e3a00001 	mov	r0, #1
 80031e4:	e12fff13 	bx	r3

080031e8 <_Unwind_VRS_Get>:
 80031e8:	e3510004 	cmp	r1, #4
 80031ec:	979ff101 	ldrls	pc, [pc, r1, lsl #2]
 80031f0:	ea000009 	b	800321c <_Unwind_VRS_Get+0x34>
 80031f4:	08003208 	.word	0x08003208
 80031f8:	08003224 	.word	0x08003224
 80031fc:	0800321c 	.word	0x0800321c
 8003200:	08003224 	.word	0x08003224
 8003204:	08003224 	.word	0x08003224
 8003208:	e352000f 	cmp	r2, #15
 800320c:	93530000 	cmpls	r3, #0
 8003210:	13a03001 	movne	r3, #1
 8003214:	03a03000 	moveq	r3, #0
 8003218:	0a000003 	beq	800322c <_Unwind_VRS_Get+0x44>
 800321c:	e3a00002 	mov	r0, #2
 8003220:	e12fff1e 	bx	lr
 8003224:	e3a00001 	mov	r0, #1
 8003228:	e12fff1e 	bx	lr
 800322c:	e0802102 	add	r2, r0, r2, lsl #2
 8003230:	e5922004 	ldr	r2, [r2, #4]
 8003234:	e1a00003 	mov	r0, r3
 8003238:	e59d3000 	ldr	r3, [sp]
 800323c:	e5832000 	str	r2, [r3]
 8003240:	e12fff1e 	bx	lr

08003244 <_Unwind_GetGR>:
 8003244:	e1a02001 	mov	r2, r1
 8003248:	e3a01000 	mov	r1, #0
 800324c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 8003250:	e24dd014 	sub	sp, sp, #20
 8003254:	e28dc00c 	add	ip, sp, #12
 8003258:	e1a03001 	mov	r3, r1
 800325c:	e58dc000 	str	ip, [sp]
 8003260:	ebffffe0 	bl	80031e8 <_Unwind_VRS_Get>
 8003264:	e59d000c 	ldr	r0, [sp, #12]
 8003268:	e28dd014 	add	sp, sp, #20
 800326c:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 8003270:	e12fff1e 	bx	lr

08003274 <_Unwind_VRS_Set>:
 8003274:	e3510004 	cmp	r1, #4
 8003278:	979ff101 	ldrls	pc, [pc, r1, lsl #2]
 800327c:	ea000009 	b	80032a8 <_Unwind_VRS_Set+0x34>
 8003280:	08003294 	.word	0x08003294
 8003284:	080032b0 	.word	0x080032b0
 8003288:	080032a8 	.word	0x080032a8
 800328c:	080032b0 	.word	0x080032b0
 8003290:	080032b0 	.word	0x080032b0
 8003294:	e352000f 	cmp	r2, #15
 8003298:	93530000 	cmpls	r3, #0
 800329c:	13a03001 	movne	r3, #1
 80032a0:	03a03000 	moveq	r3, #0
 80032a4:	0a000003 	beq	80032b8 <_Unwind_VRS_Set+0x44>
 80032a8:	e3a00002 	mov	r0, #2
 80032ac:	e12fff1e 	bx	lr
 80032b0:	e3a00001 	mov	r0, #1
 80032b4:	e12fff1e 	bx	lr
 80032b8:	e59d1000 	ldr	r1, [sp]
 80032bc:	e5911000 	ldr	r1, [r1]
 80032c0:	e0802102 	add	r2, r0, r2, lsl #2
 80032c4:	e5821004 	str	r1, [r2, #4]
 80032c8:	e1a00003 	mov	r0, r3
 80032cc:	e12fff1e 	bx	lr

080032d0 <_Unwind_SetGR>:
 80032d0:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 80032d4:	e1a0e001 	mov	lr, r1
 80032d8:	e3a01000 	mov	r1, #0
 80032dc:	e24dd014 	sub	sp, sp, #20
 80032e0:	e28dc010 	add	ip, sp, #16
 80032e4:	e52c2004 	str	r2, [ip, #-4]!
 80032e8:	e1a03001 	mov	r3, r1
 80032ec:	e58dc000 	str	ip, [sp]
 80032f0:	e1a0200e 	mov	r2, lr
 80032f4:	ebffffde 	bl	8003274 <_Unwind_VRS_Set>
 80032f8:	e28dd014 	add	sp, sp, #20
 80032fc:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 8003300:	e12fff1e 	bx	lr

08003304 <__gnu_Unwind_Backtrace>:
 8003304:	e92d4070 	push	{r4, r5, r6, lr}
 8003308:	e3e04000 	mvn	r4, #0
 800330c:	e592303c 	ldr	r3, [r2, #60]	; 0x3c
 8003310:	e5823040 	str	r3, [r2, #64]	; 0x40
 8003314:	e282c004 	add	ip, r2, #4
 8003318:	e24ddf8e 	sub	sp, sp, #568	; 0x238
 800331c:	e1a06000 	mov	r6, r0
 8003320:	e1a05001 	mov	r5, r1
 8003324:	e8bc000f 	ldm	ip!, {r0, r1, r2, r3}
 8003328:	e28de05c 	add	lr, sp, #92	; 0x5c
 800332c:	e8ae000f 	stmia	lr!, {r0, r1, r2, r3}
 8003330:	e8bc000f 	ldm	ip!, {r0, r1, r2, r3}
 8003334:	e8ae000f 	stmia	lr!, {r0, r1, r2, r3}
 8003338:	e8bc000f 	ldm	ip!, {r0, r1, r2, r3}
 800333c:	e8ae000f 	stmia	lr!, {r0, r1, r2, r3}
 8003340:	e89c000f 	ldm	ip, {r0, r1, r2, r3}
 8003344:	e88e000f 	stm	lr, {r0, r1, r2, r3}
 8003348:	e58d4058 	str	r4, [sp, #88]	; 0x58
 800334c:	ea000013 	b	80033a0 <__gnu_Unwind_Backtrace+0x9c>
 8003350:	e28d0058 	add	r0, sp, #88	; 0x58
 8003354:	e3a0100c 	mov	r1, #12
 8003358:	e1a0200d 	mov	r2, sp
 800335c:	ebffffdb 	bl	80032d0 <_Unwind_SetGR>
 8003360:	e28d0058 	add	r0, sp, #88	; 0x58
 8003364:	e1a01005 	mov	r1, r5
 8003368:	e1a0e00f 	mov	lr, pc
 800336c:	e12fff16 	bx	r6
 8003370:	e3500000 	cmp	r0, #0
 8003374:	1a00000e 	bne	80033b4 <__gnu_Unwind_Backtrace+0xb0>
 8003378:	e3a00008 	mov	r0, #8
 800337c:	e1a0100d 	mov	r1, sp
 8003380:	e28d2058 	add	r2, sp, #88	; 0x58
 8003384:	e59dc010 	ldr	ip, [sp, #16]
 8003388:	e1a0e00f 	mov	lr, pc
 800338c:	e12fff1c 	bx	ip
 8003390:	e2403005 	sub	r3, r0, #5
 8003394:	e31300fb 	tst	r3, #251	; 0xfb
 8003398:	e1a04000 	mov	r4, r0
 800339c:	0a000005 	beq	80033b8 <__gnu_Unwind_Backtrace+0xb4>
 80033a0:	e1a0000d 	mov	r0, sp
 80033a4:	e59d1098 	ldr	r1, [sp, #152]	; 0x98
 80033a8:	ebfffe43 	bl	8002cbc <get_eit_entry>
 80033ac:	e3500000 	cmp	r0, #0
 80033b0:	0affffe6 	beq	8003350 <__gnu_Unwind_Backtrace+0x4c>
 80033b4:	e3a04009 	mov	r4, #9
 80033b8:	e28d0058 	add	r0, sp, #88	; 0x58
 80033bc:	ebfffe8a 	bl	8002dec <restore_non_core_regs>
 80033c0:	e1a00004 	mov	r0, r4
 80033c4:	e28ddf8e 	add	sp, sp, #568	; 0x238
 80033c8:	e8bd4070 	pop	{r4, r5, r6, lr}
 80033cc:	e12fff1e 	bx	lr

080033d0 <__gnu_unwind_pr_common>:
 80033d0:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80033d4:	e591604c 	ldr	r6, [r1, #76]	; 0x4c
 80033d8:	e1a05001 	mov	r5, r1
 80033dc:	e5961000 	ldr	r1, [r6]
 80033e0:	e24dd024 	sub	sp, sp, #36	; 0x24
 80033e4:	e2866004 	add	r6, r6, #4
 80033e8:	e2537000 	subs	r7, r3, #0
 80033ec:	e58d0004 	str	r0, [sp, #4]
 80033f0:	e1a09002 	mov	r9, r2
 80033f4:	e58d1014 	str	r1, [sp, #20]
 80033f8:	e58d6018 	str	r6, [sp, #24]
 80033fc:	e2008003 	and	r8, r0, #3
 8003400:	1a000076 	bne	80035e0 <__gnu_unwind_pr_common+0x210>
 8003404:	e3a03003 	mov	r3, #3
 8003408:	e1a01401 	lsl	r1, r1, #8
 800340c:	e58d1014 	str	r1, [sp, #20]
 8003410:	e5cd701d 	strb	r7, [sp, #29]
 8003414:	e5cd301c 	strb	r3, [sp, #28]
 8003418:	e5953050 	ldr	r3, [r5, #80]	; 0x50
 800341c:	e3580002 	cmp	r8, #2
 8003420:	05956038 	ldreq	r6, [r5, #56]	; 0x38
 8003424:	e2133001 	ands	r3, r3, #1
 8003428:	1a000061 	bne	80035b4 <__gnu_unwind_pr_common+0x1e4>
 800342c:	e58d3000 	str	r3, [sp]
 8003430:	e2853058 	add	r3, r5, #88	; 0x58
 8003434:	e58d3008 	str	r3, [sp, #8]
 8003438:	e5964000 	ldr	r4, [r6]
 800343c:	e3540000 	cmp	r4, #0
 8003440:	0a00005d 	beq	80035bc <__gnu_unwind_pr_common+0x1ec>
 8003444:	e3570002 	cmp	r7, #2
 8003448:	0596b004 	ldreq	fp, [r6, #4]
 800344c:	11d6b0b2 	ldrhne	fp, [r6, #2]
 8003450:	e5953048 	ldr	r3, [r5, #72]	; 0x48
 8003454:	e3cba001 	bic	sl, fp, #1
 8003458:	e1a00009 	mov	r0, r9
 800345c:	e3a0100f 	mov	r1, #15
 8003460:	11d640b0 	ldrhne	r4, [r6]
 8003464:	02866008 	addeq	r6, r6, #8
 8003468:	12866004 	addne	r6, r6, #4
 800346c:	e08aa003 	add	sl, sl, r3
 8003470:	ebffff73 	bl	8003244 <_Unwind_GetGR>
 8003474:	e15a0000 	cmp	sl, r0
 8003478:	e20bb001 	and	fp, fp, #1
 800347c:	8a00003c 	bhi	8003574 <__gnu_unwind_pr_common+0x1a4>
 8003480:	e3c43001 	bic	r3, r4, #1
 8003484:	e08aa003 	add	sl, sl, r3
 8003488:	e150000a 	cmp	r0, sl
 800348c:	2a000038 	bcs	8003574 <__gnu_unwind_pr_common+0x1a4>
 8003490:	e2044001 	and	r4, r4, #1
 8003494:	e184408b 	orr	r4, r4, fp, lsl #1
 8003498:	e3540001 	cmp	r4, #1
 800349c:	0a00005e 	beq	800361c <__gnu_unwind_pr_common+0x24c>
 80034a0:	3a000059 	bcc	800360c <__gnu_unwind_pr_common+0x23c>
 80034a4:	e3540002 	cmp	r4, #2
 80034a8:	1a000048 	bne	80035d0 <__gnu_unwind_pr_common+0x200>
 80034ac:	e5963000 	ldr	r3, [r6]
 80034b0:	e3580000 	cmp	r8, #0
 80034b4:	e3c34102 	bic	r4, r3, #-2147483648	; 0x80000000
 80034b8:	1a000090 	bne	8003700 <__gnu_unwind_pr_common+0x330>
 80034bc:	e59d2004 	ldr	r2, [sp, #4]
 80034c0:	e3120008 	tst	r2, #8
 80034c4:	03a02001 	moveq	r2, #1
 80034c8:	13a02000 	movne	r2, #0
 80034cc:	e3540000 	cmp	r4, #0
 80034d0:	03822001 	orreq	r2, r2, #1
 80034d4:	e3520000 	cmp	r2, #0
 80034d8:	0a000030 	beq	80035a0 <__gnu_unwind_pr_common+0x1d0>
 80034dc:	e3540000 	cmp	r4, #0
 80034e0:	0a00001a 	beq	8003550 <__gnu_unwind_pr_common+0x180>
 80034e4:	e1a0a007 	mov	sl, r7
 80034e8:	e286b004 	add	fp, r6, #4
 80034ec:	e1a07004 	mov	r7, r4
 80034f0:	e58d800c 	str	r8, [sp, #12]
 80034f4:	e59d4008 	ldr	r4, [sp, #8]
 80034f8:	ea000003 	b	800350c <__gnu_unwind_pr_common+0x13c>
 80034fc:	e1530007 	cmp	r3, r7
 8003500:	e1a08003 	mov	r8, r3
 8003504:	e28bb004 	add	fp, fp, #4
 8003508:	0a000010 	beq	8003550 <__gnu_unwind_pr_common+0x180>
 800350c:	e1a0000b 	mov	r0, fp
 8003510:	e58d4010 	str	r4, [sp, #16]
 8003514:	ebfffe54 	bl	8002e6c <_Unwind_decode_typeinfo_ptr.isra.0>
 8003518:	e28d3010 	add	r3, sp, #16
 800351c:	e1a01000 	mov	r1, r0
 8003520:	e3a02000 	mov	r2, #0
 8003524:	e1a00005 	mov	r0, r5
 8003528:	e320f000 	nop	{0}
 800352c:	e3500000 	cmp	r0, #0
 8003530:	e2883001 	add	r3, r8, #1
 8003534:	0afffff0 	beq	80034fc <__gnu_unwind_pr_common+0x12c>
 8003538:	e1a04007 	mov	r4, r7
 800353c:	e1a0700a 	mov	r7, sl
 8003540:	e1a0a008 	mov	sl, r8
 8003544:	e15a0004 	cmp	sl, r4
 8003548:	e59d800c 	ldr	r8, [sp, #12]
 800354c:	1a000071 	bne	8003718 <__gnu_unwind_pr_common+0x348>
 8003550:	e1a00009 	mov	r0, r9
 8003554:	e3a0100d 	mov	r1, #13
 8003558:	ebffff39 	bl	8003244 <_Unwind_GetGR>
 800355c:	e59d3010 	ldr	r3, [sp, #16]
 8003560:	e5850020 	str	r0, [r5, #32]
 8003564:	e5856028 	str	r6, [r5, #40]	; 0x28
 8003568:	e5853024 	str	r3, [r5, #36]	; 0x24
 800356c:	e3a00006 	mov	r0, #6
 8003570:	ea000017 	b	80035d4 <__gnu_unwind_pr_common+0x204>
 8003574:	e2044001 	and	r4, r4, #1
 8003578:	e184408b 	orr	r4, r4, fp, lsl #1
 800357c:	e3540001 	cmp	r4, #1
 8003580:	0a000044 	beq	8003698 <__gnu_unwind_pr_common+0x2c8>
 8003584:	3a000022 	bcc	8003614 <__gnu_unwind_pr_common+0x244>
 8003588:	e3540002 	cmp	r4, #2
 800358c:	1a00000f 	bne	80035d0 <__gnu_unwind_pr_common+0x200>
 8003590:	e5963000 	ldr	r3, [r6]
 8003594:	e3580000 	cmp	r8, #0
 8003598:	e3c34102 	bic	r4, r3, #-2147483648	; 0x80000000
 800359c:	1a000057 	bne	8003700 <__gnu_unwind_pr_common+0x330>
 80035a0:	e3530000 	cmp	r3, #0
 80035a4:	b2866004 	addlt	r6, r6, #4
 80035a8:	e2844001 	add	r4, r4, #1
 80035ac:	e0866104 	add	r6, r6, r4, lsl #2
 80035b0:	eaffffa0 	b	8003438 <__gnu_unwind_pr_common+0x68>
 80035b4:	e3a03000 	mov	r3, #0
 80035b8:	e58d3000 	str	r3, [sp]
 80035bc:	e3570002 	cmp	r7, #2
 80035c0:	da000038 	ble	80036a8 <__gnu_unwind_pr_common+0x2d8>
 80035c4:	ebfffe2d 	bl	8002e80 <__gnu_unwind_24bit.isra.1>
 80035c8:	e3500000 	cmp	r0, #0
 80035cc:	0a00003a 	beq	80036bc <__gnu_unwind_pr_common+0x2ec>
 80035d0:	e3a00009 	mov	r0, #9
 80035d4:	e28dd024 	add	sp, sp, #36	; 0x24
 80035d8:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80035dc:	e12fff1e 	bx	lr
 80035e0:	e3570002 	cmp	r7, #2
 80035e4:	caffff8b 	bgt	8003418 <__gnu_unwind_pr_common+0x48>
 80035e8:	e3a02002 	mov	r2, #2
 80035ec:	e1a03821 	lsr	r3, r1, #16
 80035f0:	e5cd301d 	strb	r3, [sp, #29]
 80035f4:	e1a01801 	lsl	r1, r1, #16
 80035f8:	e20330ff 	and	r3, r3, #255	; 0xff
 80035fc:	e58d1014 	str	r1, [sp, #20]
 8003600:	e5cd201c 	strb	r2, [sp, #28]
 8003604:	e0866103 	add	r6, r6, r3, lsl #2
 8003608:	eaffff82 	b	8003418 <__gnu_unwind_pr_common+0x48>
 800360c:	e3580000 	cmp	r8, #0
 8003610:	1a000070 	bne	80037d8 <__gnu_unwind_pr_common+0x408>
 8003614:	e2866004 	add	r6, r6, #4
 8003618:	eaffff86 	b	8003438 <__gnu_unwind_pr_common+0x68>
 800361c:	e3580000 	cmp	r8, #0
 8003620:	1a00003e 	bne	8003720 <__gnu_unwind_pr_common+0x350>
 8003624:	e896000c 	ldm	r6, {r2, r3}
 8003628:	e3730002 	cmn	r3, #2
 800362c:	e1a04fa2 	lsr	r4, r2, #31
 8003630:	0affffe6 	beq	80035d0 <__gnu_unwind_pr_common+0x200>
 8003634:	e3730001 	cmn	r3, #1
 8003638:	e59d3008 	ldr	r3, [sp, #8]
 800363c:	e58d3010 	str	r3, [sp, #16]
 8003640:	0a00005b 	beq	80037b4 <__gnu_unwind_pr_common+0x3e4>
 8003644:	e2860004 	add	r0, r6, #4
 8003648:	ebfffe07 	bl	8002e6c <_Unwind_decode_typeinfo_ptr.isra.0>
 800364c:	e1a02004 	mov	r2, r4
 8003650:	e1a01000 	mov	r1, r0
 8003654:	e28d3010 	add	r3, sp, #16
 8003658:	e1a00005 	mov	r0, r5
 800365c:	e320f000 	nop	{0}
 8003660:	e3500000 	cmp	r0, #0
 8003664:	0a00000d 	beq	80036a0 <__gnu_unwind_pr_common+0x2d0>
 8003668:	e1a04000 	mov	r4, r0
 800366c:	e3a0100d 	mov	r1, #13
 8003670:	e1a00009 	mov	r0, r9
 8003674:	ebfffef2 	bl	8003244 <_Unwind_GetGR>
 8003678:	e3540002 	cmp	r4, #2
 800367c:	e5850020 	str	r0, [r5, #32]
 8003680:	1a00004f 	bne	80037c4 <__gnu_unwind_pr_common+0x3f4>
 8003684:	e1a03005 	mov	r3, r5
 8003688:	e59d2010 	ldr	r2, [sp, #16]
 800368c:	e5a3202c 	str	r2, [r3, #44]!	; 0x2c
 8003690:	e5853024 	str	r3, [r5, #36]	; 0x24
 8003694:	ea00004c 	b	80037cc <__gnu_unwind_pr_common+0x3fc>
 8003698:	e3580000 	cmp	r8, #0
 800369c:	1a00001f 	bne	8003720 <__gnu_unwind_pr_common+0x350>
 80036a0:	e2866008 	add	r6, r6, #8
 80036a4:	eaffff63 	b	8003438 <__gnu_unwind_pr_common+0x68>
 80036a8:	e1a00009 	mov	r0, r9
 80036ac:	e28d1014 	add	r1, sp, #20
 80036b0:	eb0001ff 	bl	8003eb4 <__gnu_unwind_execute>
 80036b4:	e3500000 	cmp	r0, #0
 80036b8:	1affffc4 	bne	80035d0 <__gnu_unwind_pr_common+0x200>
 80036bc:	e59d3000 	ldr	r3, [sp]
 80036c0:	e3530000 	cmp	r3, #0
 80036c4:	03a00008 	moveq	r0, #8
 80036c8:	0affffc1 	beq	80035d4 <__gnu_unwind_pr_common+0x204>
 80036cc:	e3a0100f 	mov	r1, #15
 80036d0:	e1a00009 	mov	r0, r9
 80036d4:	ebfffeda 	bl	8003244 <_Unwind_GetGR>
 80036d8:	e3a0100e 	mov	r1, #14
 80036dc:	e1a02000 	mov	r2, r0
 80036e0:	e1a00009 	mov	r0, r9
 80036e4:	ebfffef9 	bl	80032d0 <_Unwind_SetGR>
 80036e8:	e1a00009 	mov	r0, r9
 80036ec:	e3a0100f 	mov	r1, #15
 80036f0:	e59f2128 	ldr	r2, [pc, #296]	; 8003820 <__gnu_unwind_pr_common+0x450>
 80036f4:	ebfffef5 	bl	80032d0 <_Unwind_SetGR>
 80036f8:	e3a00007 	mov	r0, #7
 80036fc:	eaffffb4 	b	80035d4 <__gnu_unwind_pr_common+0x204>
 8003700:	e1a00009 	mov	r0, r9
 8003704:	e3a0100d 	mov	r1, #13
 8003708:	e595a020 	ldr	sl, [r5, #32]
 800370c:	ebfffecc 	bl	8003244 <_Unwind_GetGR>
 8003710:	e15a0000 	cmp	sl, r0
 8003714:	0a000016 	beq	8003774 <__gnu_unwind_pr_common+0x3a4>
 8003718:	e5963000 	ldr	r3, [r6]
 800371c:	eaffff9f 	b	80035a0 <__gnu_unwind_pr_common+0x1d0>
 8003720:	e1a00009 	mov	r0, r9
 8003724:	e3a0100d 	mov	r1, #13
 8003728:	e5954020 	ldr	r4, [r5, #32]
 800372c:	ebfffec4 	bl	8003244 <_Unwind_GetGR>
 8003730:	e1540000 	cmp	r4, r0
 8003734:	1affffd9 	bne	80036a0 <__gnu_unwind_pr_common+0x2d0>
 8003738:	e5953028 	ldr	r3, [r5, #40]	; 0x28
 800373c:	e1560003 	cmp	r6, r3
 8003740:	1affffd6 	bne	80036a0 <__gnu_unwind_pr_common+0x2d0>
 8003744:	e1a00006 	mov	r0, r6
 8003748:	ebfffd12 	bl	8002b98 <selfrel_offset31>
 800374c:	e3a0100f 	mov	r1, #15
 8003750:	e1a02000 	mov	r2, r0
 8003754:	e1a00009 	mov	r0, r9
 8003758:	ebfffedc 	bl	80032d0 <_Unwind_SetGR>
 800375c:	e1a00009 	mov	r0, r9
 8003760:	e1a02005 	mov	r2, r5
 8003764:	e3a01000 	mov	r1, #0
 8003768:	ebfffed8 	bl	80032d0 <_Unwind_SetGR>
 800376c:	e3a00007 	mov	r0, #7
 8003770:	eaffff97 	b	80035d4 <__gnu_unwind_pr_common+0x204>
 8003774:	e5953028 	ldr	r3, [r5, #40]	; 0x28
 8003778:	e1560003 	cmp	r6, r3
 800377c:	1affffe5 	bne	8003718 <__gnu_unwind_pr_common+0x348>
 8003780:	e3a02000 	mov	r2, #0
 8003784:	e585202c 	str	r2, [r5, #44]	; 0x2c
 8003788:	e3a02004 	mov	r2, #4
 800378c:	e2863004 	add	r3, r6, #4
 8003790:	e5854028 	str	r4, [r5, #40]	; 0x28
 8003794:	e5852030 	str	r2, [r5, #48]	; 0x30
 8003798:	e5853034 	str	r3, [r5, #52]	; 0x34
 800379c:	e5963000 	ldr	r3, [r6]
 80037a0:	e3530000 	cmp	r3, #0
 80037a4:	ba00001a 	blt	8003814 <__gnu_unwind_pr_common+0x444>
 80037a8:	e3a03001 	mov	r3, #1
 80037ac:	e58d3000 	str	r3, [sp]
 80037b0:	eaffff7c 	b	80035a8 <__gnu_unwind_pr_common+0x1d8>
 80037b4:	e1a00009 	mov	r0, r9
 80037b8:	e3a0100d 	mov	r1, #13
 80037bc:	ebfffea0 	bl	8003244 <_Unwind_GetGR>
 80037c0:	e5850020 	str	r0, [r5, #32]
 80037c4:	e59d3010 	ldr	r3, [sp, #16]
 80037c8:	e5853024 	str	r3, [r5, #36]	; 0x24
 80037cc:	e5856028 	str	r6, [r5, #40]	; 0x28
 80037d0:	e3a00006 	mov	r0, #6
 80037d4:	eaffff7e 	b	80035d4 <__gnu_unwind_pr_common+0x204>
 80037d8:	e1a00006 	mov	r0, r6
 80037dc:	ebfffced 	bl	8002b98 <selfrel_offset31>
 80037e0:	e2866004 	add	r6, r6, #4
 80037e4:	e1a04000 	mov	r4, r0
 80037e8:	e5856038 	str	r6, [r5, #56]	; 0x38
 80037ec:	e1a00005 	mov	r0, r5
 80037f0:	e320f000 	nop	{0}
 80037f4:	e3500000 	cmp	r0, #0
 80037f8:	0affff74 	beq	80035d0 <__gnu_unwind_pr_common+0x200>
 80037fc:	e1a00009 	mov	r0, r9
 8003800:	e1a02004 	mov	r2, r4
 8003804:	e3a0100f 	mov	r1, #15
 8003808:	ebfffeb0 	bl	80032d0 <_Unwind_SetGR>
 800380c:	e3a00007 	mov	r0, #7
 8003810:	eaffff6f 	b	80035d4 <__gnu_unwind_pr_common+0x204>
 8003814:	e2840001 	add	r0, r4, #1
 8003818:	e0860100 	add	r0, r6, r0, lsl #2
 800381c:	eaffffc9 	b	8003748 <__gnu_unwind_pr_common+0x378>
 8003820:	00000000 	.word	0x00000000

08003824 <__aeabi_unwind_cpp_pr0>:
 8003824:	e3a03000 	mov	r3, #0
 8003828:	eafffee8 	b	80033d0 <__gnu_unwind_pr_common>

0800382c <__aeabi_unwind_cpp_pr1>:
 800382c:	e3a03001 	mov	r3, #1
 8003830:	eafffee6 	b	80033d0 <__gnu_unwind_pr_common>

08003834 <__aeabi_unwind_cpp_pr2>:
 8003834:	e3a03002 	mov	r3, #2
 8003838:	eafffee4 	b	80033d0 <__gnu_unwind_pr_common>

0800383c <_Unwind_VRS_Pop>:
 800383c:	e92d43f0 	push	{r4, r5, r6, r7, r8, r9, lr}
 8003840:	e1a04000 	mov	r4, r0
 8003844:	e24ddf45 	sub	sp, sp, #276	; 0x114
 8003848:	e3510004 	cmp	r1, #4
 800384c:	979ff101 	ldrls	pc, [pc, r1, lsl #2]
 8003850:	ea000006 	b	8003870 <_Unwind_VRS_Pop+0x34>
 8003854:	08003a50 	.word	0x08003a50
 8003858:	080038e8 	.word	0x080038e8
 800385c:	08003870 	.word	0x08003870
 8003860:	08003868 	.word	0x08003868
 8003864:	08003880 	.word	0x08003880
 8003868:	e3530003 	cmp	r3, #3
 800386c:	0a00009c 	beq	8003ae4 <_Unwind_VRS_Pop+0x2a8>
 8003870:	e3a00002 	mov	r0, #2
 8003874:	e28ddf45 	add	sp, sp, #276	; 0x114
 8003878:	e8bd43f0 	pop	{r4, r5, r6, r7, r8, r9, lr}
 800387c:	e12fff1e 	bx	lr
 8003880:	e3520010 	cmp	r2, #16
 8003884:	93530000 	cmpls	r3, #0
 8003888:	1afffff8 	bne	8003870 <_Unwind_VRS_Pop+0x34>
 800388c:	e5903000 	ldr	r3, [r0]
 8003890:	e3130010 	tst	r3, #16
 8003894:	1a0000b1 	bne	8003b60 <_Unwind_VRS_Pop+0x324>
 8003898:	e28d5088 	add	r5, sp, #136	; 0x88
 800389c:	e1a00005 	mov	r0, r5
 80038a0:	e58d2004 	str	r2, [sp, #4]
 80038a4:	eb00012b 	bl	8003d58 <__gnu_Unwind_Save_WMMXC>
 80038a8:	e3a03000 	mov	r3, #0
 80038ac:	e3a00001 	mov	r0, #1
 80038b0:	e5941038 	ldr	r1, [r4, #56]	; 0x38
 80038b4:	e59d2004 	ldr	r2, [sp, #4]
 80038b8:	e012c310 	ands	ip, r2, r0, lsl r3
 80038bc:	1591c000 	ldrne	ip, [r1]
 80038c0:	1785c103 	strne	ip, [r5, r3, lsl #2]
 80038c4:	e2833001 	add	r3, r3, #1
 80038c8:	12811004 	addne	r1, r1, #4
 80038cc:	e3530004 	cmp	r3, #4
 80038d0:	1afffff8 	bne	80038b8 <_Unwind_VRS_Pop+0x7c>
 80038d4:	e1a00005 	mov	r0, r5
 80038d8:	e5841038 	str	r1, [r4, #56]	; 0x38
 80038dc:	eb000118 	bl	8003d44 <__gnu_Unwind_Restore_WMMXC>
 80038e0:	e3a00000 	mov	r0, #0
 80038e4:	eaffffe2 	b	8003874 <_Unwind_VRS_Pop+0x38>
 80038e8:	e20310fb 	and	r1, r3, #251	; 0xfb
 80038ec:	e3510001 	cmp	r1, #1
 80038f0:	1affffde 	bne	8003870 <_Unwind_VRS_Pop+0x34>
 80038f4:	e1a06802 	lsl	r6, r2, #16
 80038f8:	e1a06826 	lsr	r6, r6, #16
 80038fc:	e1a08822 	lsr	r8, r2, #16
 8003900:	e3530001 	cmp	r3, #1
 8003904:	e0861008 	add	r1, r6, r8
 8003908:	0a000063 	beq	8003a9c <_Unwind_VRS_Pop+0x260>
 800390c:	e3510020 	cmp	r1, #32
 8003910:	8affffd6 	bhi	8003870 <_Unwind_VRS_Pop+0x34>
 8003914:	e358000f 	cmp	r8, #15
 8003918:	9a000096 	bls	8003b78 <_Unwind_VRS_Pop+0x33c>
 800391c:	e1a07006 	mov	r7, r6
 8003920:	e3570000 	cmp	r7, #0
 8003924:	13530005 	cmpne	r3, #5
 8003928:	13a09001 	movne	r9, #1
 800392c:	03a09000 	moveq	r9, #0
 8003930:	1affffce 	bne	8003870 <_Unwind_VRS_Pop+0x34>
 8003934:	e358000f 	cmp	r8, #15
 8003938:	8a000096 	bhi	8003b98 <_Unwind_VRS_Pop+0x35c>
 800393c:	e5942000 	ldr	r2, [r4]
 8003940:	e3120001 	tst	r2, #1
 8003944:	0a000093 	beq	8003b98 <_Unwind_VRS_Pop+0x35c>
 8003948:	e3530005 	cmp	r3, #5
 800394c:	e3c23001 	bic	r3, r2, #1
 8003950:	e5843000 	str	r3, [r4]
 8003954:	0a0000bb 	beq	8003c48 <_Unwind_VRS_Pop+0x40c>
 8003958:	e1a00004 	mov	r0, r4
 800395c:	e3c22003 	bic	r2, r2, #3
 8003960:	e4802048 	str	r2, [r0], #72	; 0x48
 8003964:	eb0000ca 	bl	8003c94 <__gnu_Unwind_Save_VFP>
 8003968:	e3570000 	cmp	r7, #0
 800396c:	0a000099 	beq	8003bd8 <_Unwind_VRS_Pop+0x39c>
 8003970:	e5943000 	ldr	r3, [r4]
 8003974:	e3130004 	tst	r3, #4
 8003978:	1a0000ad 	bne	8003c34 <_Unwind_VRS_Pop+0x3f8>
 800397c:	e3590000 	cmp	r9, #0
 8003980:	1a0000b7 	bne	8003c64 <_Unwind_VRS_Pop+0x428>
 8003984:	e358000f 	cmp	r8, #15
 8003988:	8a000004 	bhi	80039a0 <_Unwind_VRS_Pop+0x164>
 800398c:	e28d5088 	add	r5, sp, #136	; 0x88
 8003990:	e1a00005 	mov	r0, r5
 8003994:	eb0000c2 	bl	8003ca4 <__gnu_Unwind_Save_VFP_D>
 8003998:	e3570000 	cmp	r7, #0
 800399c:	0a00009b 	beq	8003c10 <_Unwind_VRS_Pop+0x3d4>
 80039a0:	e28d0008 	add	r0, sp, #8
 80039a4:	eb0000c2 	bl	8003cb4 <__gnu_Unwind_Save_VFP_D_16_to_31>
 80039a8:	e2683010 	rsb	r3, r8, #16
 80039ac:	e3530000 	cmp	r3, #0
 80039b0:	e5941038 	ldr	r1, [r4, #56]	; 0x38
 80039b4:	da00000d 	ble	80039f0 <_Unwind_VRS_Pop+0x1b4>
 80039b8:	e28d5088 	add	r5, sp, #136	; 0x88
 80039bc:	e1a00001 	mov	r0, r1
 80039c0:	e1a0e083 	lsl	lr, r3, #1
 80039c4:	e0852188 	add	r2, r5, r8, lsl #3
 80039c8:	e2422004 	sub	r2, r2, #4
 80039cc:	e24e3001 	sub	r3, lr, #1
 80039d0:	e2433001 	sub	r3, r3, #1
 80039d4:	e490c004 	ldr	ip, [r0], #4
 80039d8:	e3730001 	cmn	r3, #1
 80039dc:	e5a2c004 	str	ip, [r2, #4]!
 80039e0:	1afffffa 	bne	80039d0 <_Unwind_VRS_Pop+0x194>
 80039e4:	e3570000 	cmp	r7, #0
 80039e8:	e081110e 	add	r1, r1, lr, lsl #2
 80039ec:	0a00000d 	beq	8003a28 <_Unwind_VRS_Pop+0x1ec>
 80039f0:	e3580010 	cmp	r8, #16
 80039f4:	21a02008 	movcs	r2, r8
 80039f8:	33a02010 	movcc	r2, #16
 80039fc:	e28d3e11 	add	r3, sp, #272	; 0x110
 8003a00:	e0832182 	add	r2, r3, r2, lsl #3
 8003a04:	e2422f62 	sub	r2, r2, #392	; 0x188
 8003a08:	e1a00087 	lsl	r0, r7, #1
 8003a0c:	e1a03001 	mov	r3, r1
 8003a10:	e2422004 	sub	r2, r2, #4
 8003a14:	e0811100 	add	r1, r1, r0, lsl #2
 8003a18:	e4930004 	ldr	r0, [r3], #4
 8003a1c:	e1530001 	cmp	r3, r1
 8003a20:	e5a20004 	str	r0, [r2, #4]!
 8003a24:	1afffffb 	bne	8003a18 <_Unwind_VRS_Pop+0x1dc>
 8003a28:	e3590000 	cmp	r9, #0
 8003a2c:	1a00007b 	bne	8003c20 <_Unwind_VRS_Pop+0x3e4>
 8003a30:	e358000f 	cmp	r8, #15
 8003a34:	e5841038 	str	r1, [r4, #56]	; 0x38
 8003a38:	9a00007a 	bls	8003c28 <_Unwind_VRS_Pop+0x3ec>
 8003a3c:	e3570000 	cmp	r7, #0
 8003a40:	128d0008 	addne	r0, sp, #8
 8003a44:	1b000098 	blne	8003cac <__gnu_Unwind_Restore_VFP_D_16_to_31>
 8003a48:	e3a00000 	mov	r0, #0
 8003a4c:	eaffff88 	b	8003874 <_Unwind_VRS_Pop+0x38>
 8003a50:	e3530000 	cmp	r3, #0
 8003a54:	1affff85 	bne	8003870 <_Unwind_VRS_Pop+0x34>
 8003a58:	e3a0e001 	mov	lr, #1
 8003a5c:	e1a00802 	lsl	r0, r2, #16
 8003a60:	e594c038 	ldr	ip, [r4, #56]	; 0x38
 8003a64:	e1a00820 	lsr	r0, r0, #16
 8003a68:	e2841004 	add	r1, r4, #4
 8003a6c:	e010531e 	ands	r5, r0, lr, lsl r3
 8003a70:	159c5000 	ldrne	r5, [ip]
 8003a74:	e2833001 	add	r3, r3, #1
 8003a78:	15815000 	strne	r5, [r1]
 8003a7c:	128cc004 	addne	ip, ip, #4
 8003a80:	e3530010 	cmp	r3, #16
 8003a84:	e2811004 	add	r1, r1, #4
 8003a88:	1afffff7 	bne	8003a6c <_Unwind_VRS_Pop+0x230>
 8003a8c:	e2120a02 	ands	r0, r2, #8192	; 0x2000
 8003a90:	0584c038 	streq	ip, [r4, #56]	; 0x38
 8003a94:	0affff76 	beq	8003874 <_Unwind_VRS_Pop+0x38>
 8003a98:	eaffffea 	b	8003a48 <_Unwind_VRS_Pop+0x20c>
 8003a9c:	e3510010 	cmp	r1, #16
 8003aa0:	8affff72 	bhi	8003870 <_Unwind_VRS_Pop+0x34>
 8003aa4:	e358000f 	cmp	r8, #15
 8003aa8:	91a09003 	movls	r9, r3
 8003aac:	8affff6f 	bhi	8003870 <_Unwind_VRS_Pop+0x34>
 8003ab0:	e5942000 	ldr	r2, [r4]
 8003ab4:	e3120001 	tst	r2, #1
 8003ab8:	0a000046 	beq	8003bd8 <_Unwind_VRS_Pop+0x39c>
 8003abc:	e3530005 	cmp	r3, #5
 8003ac0:	e3c23001 	bic	r3, r2, #1
 8003ac4:	e5843000 	str	r3, [r4]
 8003ac8:	e3a07000 	mov	r7, #0
 8003acc:	1affffa1 	bne	8003958 <_Unwind_VRS_Pop+0x11c>
 8003ad0:	e1a00004 	mov	r0, r4
 8003ad4:	e3833002 	orr	r3, r3, #2
 8003ad8:	e4803048 	str	r3, [r0], #72	; 0x48
 8003adc:	eb000070 	bl	8003ca4 <__gnu_Unwind_Save_VFP_D>
 8003ae0:	eaffffa9 	b	800398c <_Unwind_VRS_Pop+0x150>
 8003ae4:	e1a07802 	lsl	r7, r2, #16
 8003ae8:	e1a07827 	lsr	r7, r7, #16
 8003aec:	e1a06822 	lsr	r6, r2, #16
 8003af0:	e0873006 	add	r3, r7, r6
 8003af4:	e3530010 	cmp	r3, #16
 8003af8:	8affff5c 	bhi	8003870 <_Unwind_VRS_Pop+0x34>
 8003afc:	e5903000 	ldr	r3, [r0]
 8003b00:	e3130008 	tst	r3, #8
 8003b04:	1a00001f 	bne	8003b88 <_Unwind_VRS_Pop+0x34c>
 8003b08:	e28d5088 	add	r5, sp, #136	; 0x88
 8003b0c:	e1a07087 	lsl	r7, r7, #1
 8003b10:	e1a00005 	mov	r0, r5
 8003b14:	eb000079 	bl	8003d00 <__gnu_Unwind_Save_WMMXD>
 8003b18:	e3570000 	cmp	r7, #0
 8003b1c:	e0852186 	add	r2, r5, r6, lsl #3
 8003b20:	e2473001 	sub	r3, r7, #1
 8003b24:	e594c038 	ldr	ip, [r4, #56]	; 0x38
 8003b28:	0a000007 	beq	8003b4c <_Unwind_VRS_Pop+0x310>
 8003b2c:	e1a0100c 	mov	r1, ip
 8003b30:	e2422004 	sub	r2, r2, #4
 8003b34:	e2433001 	sub	r3, r3, #1
 8003b38:	e4910004 	ldr	r0, [r1], #4
 8003b3c:	e3730001 	cmn	r3, #1
 8003b40:	e5a20004 	str	r0, [r2, #4]!
 8003b44:	1afffffa 	bne	8003b34 <_Unwind_VRS_Pop+0x2f8>
 8003b48:	e08cc107 	add	ip, ip, r7, lsl #2
 8003b4c:	e1a00005 	mov	r0, r5
 8003b50:	e584c038 	str	ip, [r4, #56]	; 0x38
 8003b54:	eb000058 	bl	8003cbc <__gnu_Unwind_Restore_WMMXD>
 8003b58:	e3a00000 	mov	r0, #0
 8003b5c:	eaffff44 	b	8003874 <_Unwind_VRS_Pop+0x38>
 8003b60:	e3c33010 	bic	r3, r3, #16
 8003b64:	e48031d0 	str	r3, [r0], #464	; 0x1d0
 8003b68:	e58d2004 	str	r2, [sp, #4]
 8003b6c:	eb000079 	bl	8003d58 <__gnu_Unwind_Save_WMMXC>
 8003b70:	e59d2004 	ldr	r2, [sp, #4]
 8003b74:	eaffff47 	b	8003898 <_Unwind_VRS_Pop+0x5c>
 8003b78:	e3510010 	cmp	r1, #16
 8003b7c:	9a000013 	bls	8003bd0 <_Unwind_VRS_Pop+0x394>
 8003b80:	e2417010 	sub	r7, r1, #16
 8003b84:	eaffff65 	b	8003920 <_Unwind_VRS_Pop+0xe4>
 8003b88:	e3c33008 	bic	r3, r3, #8
 8003b8c:	e4803150 	str	r3, [r0], #336	; 0x150
 8003b90:	eb00005a 	bl	8003d00 <__gnu_Unwind_Save_WMMXD>
 8003b94:	eaffffdb 	b	8003b08 <_Unwind_VRS_Pop+0x2cc>
 8003b98:	e3570000 	cmp	r7, #0
 8003b9c:	1affff73 	bne	8003970 <_Unwind_VRS_Pop+0x134>
 8003ba0:	e358000f 	cmp	r8, #15
 8003ba4:	93a09000 	movls	r9, #0
 8003ba8:	91a07009 	movls	r7, r9
 8003bac:	9affff76 	bls	800398c <_Unwind_VRS_Pop+0x150>
 8003bb0:	e3a09000 	mov	r9, #0
 8003bb4:	e3560000 	cmp	r6, #0
 8003bb8:	e1a03006 	mov	r3, r6
 8003bbc:	e5941038 	ldr	r1, [r4, #56]	; 0x38
 8003bc0:	11a07009 	movne	r7, r9
 8003bc4:	1affff7b 	bne	80039b8 <_Unwind_VRS_Pop+0x17c>
 8003bc8:	e1a07006 	mov	r7, r6
 8003bcc:	eaffff97 	b	8003a30 <_Unwind_VRS_Pop+0x1f4>
 8003bd0:	e3a09000 	mov	r9, #0
 8003bd4:	eaffffb5 	b	8003ab0 <_Unwind_VRS_Pop+0x274>
 8003bd8:	e3590000 	cmp	r9, #0
 8003bdc:	0affffef 	beq	8003ba0 <_Unwind_VRS_Pop+0x364>
 8003be0:	e28d5088 	add	r5, sp, #136	; 0x88
 8003be4:	e1a00005 	mov	r0, r5
 8003be8:	eb000029 	bl	8003c94 <__gnu_Unwind_Save_VFP>
 8003bec:	e2563000 	subs	r3, r6, #0
 8003bf0:	e5941038 	ldr	r1, [r4, #56]	; 0x38
 8003bf4:	13a07000 	movne	r7, #0
 8003bf8:	1affff6f 	bne	80039bc <_Unwind_VRS_Pop+0x180>
 8003bfc:	e2811004 	add	r1, r1, #4
 8003c00:	e5841038 	str	r1, [r4, #56]	; 0x38
 8003c04:	e1a00005 	mov	r0, r5
 8003c08:	eb00001f 	bl	8003c8c <__gnu_Unwind_Restore_VFP>
 8003c0c:	eaffff8d 	b	8003a48 <_Unwind_VRS_Pop+0x20c>
 8003c10:	e2563000 	subs	r3, r6, #0
 8003c14:	e5941038 	ldr	r1, [r4, #56]	; 0x38
 8003c18:	1affff67 	bne	80039bc <_Unwind_VRS_Pop+0x180>
 8003c1c:	eaffff81 	b	8003a28 <_Unwind_VRS_Pop+0x1ec>
 8003c20:	e28d5088 	add	r5, sp, #136	; 0x88
 8003c24:	eafffff4 	b	8003bfc <_Unwind_VRS_Pop+0x3c0>
 8003c28:	e28d0088 	add	r0, sp, #136	; 0x88
 8003c2c:	eb00001a 	bl	8003c9c <__gnu_Unwind_Restore_VFP_D>
 8003c30:	eaffff81 	b	8003a3c <_Unwind_VRS_Pop+0x200>
 8003c34:	e1a00004 	mov	r0, r4
 8003c38:	e3c33004 	bic	r3, r3, #4
 8003c3c:	e48030d0 	str	r3, [r0], #208	; 0xd0
 8003c40:	eb00001b 	bl	8003cb4 <__gnu_Unwind_Save_VFP_D_16_to_31>
 8003c44:	eaffff4c 	b	800397c <_Unwind_VRS_Pop+0x140>
 8003c48:	e1a00004 	mov	r0, r4
 8003c4c:	e3833002 	orr	r3, r3, #2
 8003c50:	e4803048 	str	r3, [r0], #72	; 0x48
 8003c54:	eb000012 	bl	8003ca4 <__gnu_Unwind_Save_VFP_D>
 8003c58:	e3570000 	cmp	r7, #0
 8003c5c:	1affff43 	bne	8003970 <_Unwind_VRS_Pop+0x134>
 8003c60:	eaffff49 	b	800398c <_Unwind_VRS_Pop+0x150>
 8003c64:	e28d0088 	add	r0, sp, #136	; 0x88
 8003c68:	eb000009 	bl	8003c94 <__gnu_Unwind_Save_VFP>
 8003c6c:	eaffff4d 	b	80039a8 <_Unwind_VRS_Pop+0x16c>

08003c70 <__restore_core_regs>:
 8003c70:	e2801034 	add	r1, r0, #52	; 0x34
 8003c74:	e8910038 	ldm	r1, {r3, r4, r5}
 8003c78:	e1a02005 	mov	r2, r5
 8003c7c:	e92d001c 	push	{r2, r3, r4}
 8003c80:	e8900fff 	ldm	r0, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp}
 8003c84:	e89d7000 	ldm	sp, {ip, sp, lr}
 8003c88:	e12fff1c 	bx	ip

08003c8c <__gnu_Unwind_Restore_VFP>:
 8003c8c:	ec900b21 	fldmiax	r0, {d0-d15}	;@ Deprecated
 8003c90:	e12fff1e 	bx	lr

08003c94 <__gnu_Unwind_Save_VFP>:
 8003c94:	ec800b21 	fstmiax	r0, {d0-d15}	;@ Deprecated
 8003c98:	e12fff1e 	bx	lr

08003c9c <__gnu_Unwind_Restore_VFP_D>:
 8003c9c:	ec900b20 	vldmia	r0, {d0-d15}
 8003ca0:	e12fff1e 	bx	lr

08003ca4 <__gnu_Unwind_Save_VFP_D>:
 8003ca4:	ec800b20 	vstmia	r0, {d0-d15}
 8003ca8:	e12fff1e 	bx	lr

08003cac <__gnu_Unwind_Restore_VFP_D_16_to_31>:
 8003cac:	ecd00b20 	vldmia	r0, {d16-d31}
 8003cb0:	e12fff1e 	bx	lr

08003cb4 <__gnu_Unwind_Save_VFP_D_16_to_31>:
 8003cb4:	ecc00b20 	vstmia	r0, {d16-d31}
 8003cb8:	e12fff1e 	bx	lr

08003cbc <__gnu_Unwind_Restore_WMMXD>:
 8003cbc:	ecf00102 	ldfe	f0, [r0], #8
 8003cc0:	ecf01102 	ldfe	f1, [r0], #8
 8003cc4:	ecf02102 	ldfe	f2, [r0], #8
 8003cc8:	ecf03102 	ldfe	f3, [r0], #8
 8003ccc:	ecf04102 	ldfe	f4, [r0], #8
 8003cd0:	ecf05102 	ldfe	f5, [r0], #8
 8003cd4:	ecf06102 	ldfe	f6, [r0], #8
 8003cd8:	ecf07102 	ldfe	f7, [r0], #8
 8003cdc:	ecf08102 	ldfp	f0, [r0], #8
 8003ce0:	ecf09102 	ldfp	f1, [r0], #8
 8003ce4:	ecf0a102 	ldfp	f2, [r0], #8
 8003ce8:	ecf0b102 	ldfp	f3, [r0], #8
 8003cec:	ecf0c102 	ldfp	f4, [r0], #8
 8003cf0:	ecf0d102 	ldfp	f5, [r0], #8
 8003cf4:	ecf0e102 	ldfp	f6, [r0], #8
 8003cf8:	ecf0f102 	ldfp	f7, [r0], #8
 8003cfc:	e12fff1e 	bx	lr

08003d00 <__gnu_Unwind_Save_WMMXD>:
 8003d00:	ece00102 	stfe	f0, [r0], #8
 8003d04:	ece01102 	stfe	f1, [r0], #8
 8003d08:	ece02102 	stfe	f2, [r0], #8
 8003d0c:	ece03102 	stfe	f3, [r0], #8
 8003d10:	ece04102 	stfe	f4, [r0], #8
 8003d14:	ece05102 	stfe	f5, [r0], #8
 8003d18:	ece06102 	stfe	f6, [r0], #8
 8003d1c:	ece07102 	stfe	f7, [r0], #8
 8003d20:	ece08102 	stfp	f0, [r0], #8
 8003d24:	ece09102 	stfp	f1, [r0], #8
 8003d28:	ece0a102 	stfp	f2, [r0], #8
 8003d2c:	ece0b102 	stfp	f3, [r0], #8
 8003d30:	ece0c102 	stfp	f4, [r0], #8
 8003d34:	ece0d102 	stfp	f5, [r0], #8
 8003d38:	ece0e102 	stfp	f6, [r0], #8
 8003d3c:	ece0f102 	stfp	f7, [r0], #8
 8003d40:	e12fff1e 	bx	lr

08003d44 <__gnu_Unwind_Restore_WMMXC>:
 8003d44:	fcb08101 	ldc2	1, cr8, [r0], #4
 8003d48:	fcb09101 	ldc2	1, cr9, [r0], #4
 8003d4c:	fcb0a101 	ldc2	1, cr10, [r0], #4
 8003d50:	fcb0b101 	ldc2	1, cr11, [r0], #4
 8003d54:	e12fff1e 	bx	lr

08003d58 <__gnu_Unwind_Save_WMMXC>:
 8003d58:	fca08101 	stc2	1, cr8, [r0], #4
 8003d5c:	fca09101 	stc2	1, cr9, [r0], #4
 8003d60:	fca0a101 	stc2	1, cr10, [r0], #4
 8003d64:	fca0b101 	stc2	1, cr11, [r0], #4
 8003d68:	e12fff1e 	bx	lr

08003d6c <_Unwind_RaiseException>:
 8003d6c:	e92de000 	push	{sp, lr, pc}
 8003d70:	e92d1fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
 8003d74:	e3a03000 	mov	r3, #0
 8003d78:	e92d000c 	push	{r2, r3}
 8003d7c:	e28d1004 	add	r1, sp, #4
 8003d80:	ebfffcb8 	bl	8003068 <__gnu_Unwind_RaiseException>
 8003d84:	e59de040 	ldr	lr, [sp, #64]	; 0x40
 8003d88:	e28dd048 	add	sp, sp, #72	; 0x48
 8003d8c:	e12fff1e 	bx	lr

08003d90 <_Unwind_Resume>:
 8003d90:	e92de000 	push	{sp, lr, pc}
 8003d94:	e92d1fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
 8003d98:	e3a03000 	mov	r3, #0
 8003d9c:	e92d000c 	push	{r2, r3}
 8003da0:	e28d1004 	add	r1, sp, #4
 8003da4:	ebfffce4 	bl	800313c <__gnu_Unwind_Resume>
 8003da8:	e59de040 	ldr	lr, [sp, #64]	; 0x40
 8003dac:	e28dd048 	add	sp, sp, #72	; 0x48
 8003db0:	e12fff1e 	bx	lr

08003db4 <_Unwind_Resume_or_Rethrow>:
 8003db4:	e92de000 	push	{sp, lr, pc}
 8003db8:	e92d1fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
 8003dbc:	e3a03000 	mov	r3, #0
 8003dc0:	e92d000c 	push	{r2, r3}
 8003dc4:	e28d1004 	add	r1, sp, #4
 8003dc8:	ebfffcf8 	bl	80031b0 <__gnu_Unwind_Resume_or_Rethrow>
 8003dcc:	e59de040 	ldr	lr, [sp, #64]	; 0x40
 8003dd0:	e28dd048 	add	sp, sp, #72	; 0x48
 8003dd4:	e12fff1e 	bx	lr

08003dd8 <_Unwind_ForcedUnwind>:
 8003dd8:	e92de000 	push	{sp, lr, pc}
 8003ddc:	e92d1fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
 8003de0:	e3a03000 	mov	r3, #0
 8003de4:	e92d000c 	push	{r2, r3}
 8003de8:	e28d3004 	add	r3, sp, #4
 8003dec:	ebfffcc9 	bl	8003118 <__gnu_Unwind_ForcedUnwind>
 8003df0:	e59de040 	ldr	lr, [sp, #64]	; 0x40
 8003df4:	e28dd048 	add	sp, sp, #72	; 0x48
 8003df8:	e12fff1e 	bx	lr

08003dfc <_Unwind_Backtrace>:
 8003dfc:	e92de000 	push	{sp, lr, pc}
 8003e00:	e92d1fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
 8003e04:	e3a03000 	mov	r3, #0
 8003e08:	e92d000c 	push	{r2, r3}
 8003e0c:	e28d2004 	add	r2, sp, #4
 8003e10:	ebfffd3b 	bl	8003304 <__gnu_Unwind_Backtrace>
 8003e14:	e59de040 	ldr	lr, [sp, #64]	; 0x40
 8003e18:	e28dd048 	add	sp, sp, #72	; 0x48
 8003e1c:	e12fff1e 	bx	lr

08003e20 <next_unwind_byte>:
 8003e20:	e5d03008 	ldrb	r3, [r0, #8]
 8003e24:	e3530000 	cmp	r3, #0
 8003e28:	1a000004 	bne	8003e40 <next_unwind_byte+0x20>
 8003e2c:	e5d03009 	ldrb	r3, [r0, #9]
 8003e30:	e3530000 	cmp	r3, #0
 8003e34:	1a000008 	bne	8003e5c <next_unwind_byte+0x3c>
 8003e38:	e3a000b0 	mov	r0, #176	; 0xb0
 8003e3c:	e12fff1e 	bx	lr
 8003e40:	e2433001 	sub	r3, r3, #1
 8003e44:	e5c03008 	strb	r3, [r0, #8]
 8003e48:	e5903000 	ldr	r3, [r0]
 8003e4c:	e1a02403 	lsl	r2, r3, #8
 8003e50:	e5802000 	str	r2, [r0]
 8003e54:	e1a00c23 	lsr	r0, r3, #24
 8003e58:	e12fff1e 	bx	lr
 8003e5c:	e3a01003 	mov	r1, #3
 8003e60:	e5902004 	ldr	r2, [r0, #4]
 8003e64:	e2433001 	sub	r3, r3, #1
 8003e68:	e5c03009 	strb	r3, [r0, #9]
 8003e6c:	e282c004 	add	ip, r2, #4
 8003e70:	e5923000 	ldr	r3, [r2]
 8003e74:	e580c004 	str	ip, [r0, #4]
 8003e78:	e5c01008 	strb	r1, [r0, #8]
 8003e7c:	eafffff2 	b	8003e4c <next_unwind_byte+0x2c>

08003e80 <_Unwind_GetGR.constprop.0>:
 8003e80:	e3a01000 	mov	r1, #0
 8003e84:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 8003e88:	e24dd014 	sub	sp, sp, #20
 8003e8c:	e28d200c 	add	r2, sp, #12
 8003e90:	e58d2000 	str	r2, [sp]
 8003e94:	e1a03001 	mov	r3, r1
 8003e98:	e3a0200c 	mov	r2, #12
 8003e9c:	ebfffcd1 	bl	80031e8 <_Unwind_VRS_Get>
 8003ea0:	e59d000c 	ldr	r0, [sp, #12]
 8003ea4:	e28dd014 	add	sp, sp, #20
 8003ea8:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 8003eac:	e12fff1e 	bx	lr

08003eb0 <unwind_UCB_from_context>:
 8003eb0:	eafffff2 	b	8003e80 <_Unwind_GetGR.constprop.0>

08003eb4 <__gnu_unwind_execute>:
 8003eb4:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
 8003eb8:	e1a07000 	mov	r7, r0
 8003ebc:	e1a05001 	mov	r5, r1
 8003ec0:	e3a08000 	mov	r8, #0
 8003ec4:	e24dd010 	sub	sp, sp, #16
 8003ec8:	e1a00005 	mov	r0, r5
 8003ecc:	ebffffd3 	bl	8003e20 <next_unwind_byte>
 8003ed0:	e35000b0 	cmp	r0, #176	; 0xb0
 8003ed4:	e1a04000 	mov	r4, r0
 8003ed8:	0a00007d 	beq	80040d4 <__gnu_unwind_execute+0x220>
 8003edc:	e2101080 	ands	r1, r0, #128	; 0x80
 8003ee0:	0a00001a 	beq	8003f50 <__gnu_unwind_execute+0x9c>
 8003ee4:	e20030f0 	and	r3, r0, #240	; 0xf0
 8003ee8:	e3530080 	cmp	r3, #128	; 0x80
 8003eec:	0a000054 	beq	8004044 <__gnu_unwind_execute+0x190>
 8003ef0:	e3530090 	cmp	r3, #144	; 0x90
 8003ef4:	0a00002b 	beq	8003fa8 <__gnu_unwind_execute+0xf4>
 8003ef8:	e35300a0 	cmp	r3, #160	; 0xa0
 8003efc:	0a000034 	beq	8003fd4 <__gnu_unwind_execute+0x120>
 8003f00:	e35300b0 	cmp	r3, #176	; 0xb0
 8003f04:	0a000040 	beq	800400c <__gnu_unwind_execute+0x158>
 8003f08:	e35300c0 	cmp	r3, #192	; 0xc0
 8003f0c:	0a00005e 	beq	800408c <__gnu_unwind_execute+0x1d8>
 8003f10:	e20030f8 	and	r3, r0, #248	; 0xf8
 8003f14:	e35300d0 	cmp	r3, #208	; 0xd0
 8003f18:	1a000008 	bne	8003f40 <__gnu_unwind_execute+0x8c>
 8003f1c:	e2002007 	and	r2, r0, #7
 8003f20:	e2822001 	add	r2, r2, #1
 8003f24:	e3822702 	orr	r2, r2, #524288	; 0x80000
 8003f28:	e1a00007 	mov	r0, r7
 8003f2c:	e3a01001 	mov	r1, #1
 8003f30:	e3a03005 	mov	r3, #5
 8003f34:	ebfffe40 	bl	800383c <_Unwind_VRS_Pop>
 8003f38:	e3500000 	cmp	r0, #0
 8003f3c:	0affffe1 	beq	8003ec8 <__gnu_unwind_execute+0x14>
 8003f40:	e3a00009 	mov	r0, #9
 8003f44:	e28dd010 	add	sp, sp, #16
 8003f48:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
 8003f4c:	e12fff1e 	bx	lr
 8003f50:	e28d300c 	add	r3, sp, #12
 8003f54:	e1a06100 	lsl	r6, r0, #2
 8003f58:	e58d3000 	str	r3, [sp]
 8003f5c:	e1a00007 	mov	r0, r7
 8003f60:	e1a03001 	mov	r3, r1
 8003f64:	e3a0200d 	mov	r2, #13
 8003f68:	ebfffc9e 	bl	80031e8 <_Unwind_VRS_Get>
 8003f6c:	e20660ff 	and	r6, r6, #255	; 0xff
 8003f70:	e59d300c 	ldr	r3, [sp, #12]
 8003f74:	e2866004 	add	r6, r6, #4
 8003f78:	e3140040 	tst	r4, #64	; 0x40
 8003f7c:	10666003 	rsbne	r6, r6, r3
 8003f80:	00836006 	addeq	r6, r3, r6
 8003f84:	e58d600c 	str	r6, [sp, #12]
 8003f88:	e3a01000 	mov	r1, #0
 8003f8c:	e28d300c 	add	r3, sp, #12
 8003f90:	e58d3000 	str	r3, [sp]
 8003f94:	e1a00007 	mov	r0, r7
 8003f98:	e1a03001 	mov	r3, r1
 8003f9c:	e3a0200d 	mov	r2, #13
 8003fa0:	ebfffcb3 	bl	8003274 <_Unwind_VRS_Set>
 8003fa4:	eaffffc7 	b	8003ec8 <__gnu_unwind_execute+0x14>
 8003fa8:	e200300d 	and	r3, r0, #13
 8003fac:	e353000d 	cmp	r3, #13
 8003fb0:	0affffe2 	beq	8003f40 <__gnu_unwind_execute+0x8c>
 8003fb4:	e3a01000 	mov	r1, #0
 8003fb8:	e28d300c 	add	r3, sp, #12
 8003fbc:	e58d3000 	str	r3, [sp]
 8003fc0:	e200200f 	and	r2, r0, #15
 8003fc4:	e1a03001 	mov	r3, r1
 8003fc8:	e1a00007 	mov	r0, r7
 8003fcc:	ebfffc85 	bl	80031e8 <_Unwind_VRS_Get>
 8003fd0:	eaffffec 	b	8003f88 <__gnu_unwind_execute+0xd4>
 8003fd4:	e1e02000 	mvn	r2, r0
 8003fd8:	e3a03eff 	mov	r3, #4080	; 0xff0
 8003fdc:	e3a01000 	mov	r1, #0
 8003fe0:	e2022007 	and	r2, r2, #7
 8003fe4:	e1a02253 	asr	r2, r3, r2
 8003fe8:	e3100008 	tst	r0, #8
 8003fec:	e0022003 	and	r2, r2, r3
 8003ff0:	13822901 	orrne	r2, r2, #16384	; 0x4000
 8003ff4:	e1a03001 	mov	r3, r1
 8003ff8:	e1a00007 	mov	r0, r7
 8003ffc:	ebfffe0e 	bl	800383c <_Unwind_VRS_Pop>
 8004000:	e3500000 	cmp	r0, #0
 8004004:	1affffcd 	bne	8003f40 <__gnu_unwind_execute+0x8c>
 8004008:	eaffffae 	b	8003ec8 <__gnu_unwind_execute+0x14>
 800400c:	e35000b1 	cmp	r0, #177	; 0xb1
 8004010:	0a000041 	beq	800411c <__gnu_unwind_execute+0x268>
 8004014:	e35000b2 	cmp	r0, #178	; 0xb2
 8004018:	0a00004b 	beq	800414c <__gnu_unwind_execute+0x298>
 800401c:	e35000b3 	cmp	r0, #179	; 0xb3
 8004020:	0a00006b 	beq	80041d4 <__gnu_unwind_execute+0x320>
 8004024:	e20030fc 	and	r3, r0, #252	; 0xfc
 8004028:	e35300b4 	cmp	r3, #180	; 0xb4
 800402c:	0affffc3 	beq	8003f40 <__gnu_unwind_execute+0x8c>
 8004030:	e3a01001 	mov	r1, #1
 8004034:	e2002007 	and	r2, r0, #7
 8004038:	e0822001 	add	r2, r2, r1
 800403c:	e3822702 	orr	r2, r2, #524288	; 0x80000
 8004040:	eaffffeb 	b	8003ff4 <__gnu_unwind_execute+0x140>
 8004044:	e1a00005 	mov	r0, r5
 8004048:	ebffff74 	bl	8003e20 <next_unwind_byte>
 800404c:	e1a04404 	lsl	r4, r4, #8
 8004050:	e1804004 	orr	r4, r0, r4
 8004054:	e3540902 	cmp	r4, #32768	; 0x8000
 8004058:	0affffb8 	beq	8003f40 <__gnu_unwind_execute+0x8c>
 800405c:	e3a01000 	mov	r1, #0
 8004060:	e1a02a04 	lsl	r2, r4, #20
 8004064:	e1a03001 	mov	r3, r1
 8004068:	e1a02822 	lsr	r2, r2, #16
 800406c:	e1a00007 	mov	r0, r7
 8004070:	ebfffdf1 	bl	800383c <_Unwind_VRS_Pop>
 8004074:	e3500000 	cmp	r0, #0
 8004078:	e1a04204 	lsl	r4, r4, #4
 800407c:	1affffaf 	bne	8003f40 <__gnu_unwind_execute+0x8c>
 8004080:	e3140902 	tst	r4, #32768	; 0x8000
 8004084:	13a08001 	movne	r8, #1
 8004088:	eaffff8e 	b	8003ec8 <__gnu_unwind_execute+0x14>
 800408c:	e35000c6 	cmp	r0, #198	; 0xc6
 8004090:	0a000057 	beq	80041f4 <__gnu_unwind_execute+0x340>
 8004094:	e35000c7 	cmp	r0, #199	; 0xc7
 8004098:	0a00005d 	beq	8004214 <__gnu_unwind_execute+0x360>
 800409c:	e20030f8 	and	r3, r0, #248	; 0xf8
 80040a0:	e35300c0 	cmp	r3, #192	; 0xc0
 80040a4:	0a000066 	beq	8004244 <__gnu_unwind_execute+0x390>
 80040a8:	e35000c8 	cmp	r0, #200	; 0xc8
 80040ac:	0a000069 	beq	8004258 <__gnu_unwind_execute+0x3a4>
 80040b0:	e35000c9 	cmp	r0, #201	; 0xc9
 80040b4:	1affffa1 	bne	8003f40 <__gnu_unwind_execute+0x8c>
 80040b8:	e1a00005 	mov	r0, r5
 80040bc:	ebffff57 	bl	8003e20 <next_unwind_byte>
 80040c0:	e200200f 	and	r2, r0, #15
 80040c4:	e2822001 	add	r2, r2, #1
 80040c8:	e20000f0 	and	r0, r0, #240	; 0xf0
 80040cc:	e1822600 	orr	r2, r2, r0, lsl #12
 80040d0:	eaffff94 	b	8003f28 <__gnu_unwind_execute+0x74>
 80040d4:	e3580000 	cmp	r8, #0
 80040d8:	13a00000 	movne	r0, #0
 80040dc:	1affff98 	bne	8003f44 <__gnu_unwind_execute+0x90>
 80040e0:	e28d400c 	add	r4, sp, #12
 80040e4:	e1a01008 	mov	r1, r8
 80040e8:	e3a0200e 	mov	r2, #14
 80040ec:	e1a03008 	mov	r3, r8
 80040f0:	e58d4000 	str	r4, [sp]
 80040f4:	e1a00007 	mov	r0, r7
 80040f8:	ebfffc3a 	bl	80031e8 <_Unwind_VRS_Get>
 80040fc:	e58d4000 	str	r4, [sp]
 8004100:	e1a00007 	mov	r0, r7
 8004104:	e1a01008 	mov	r1, r8
 8004108:	e3a0200f 	mov	r2, #15
 800410c:	e1a03008 	mov	r3, r8
 8004110:	ebfffc57 	bl	8003274 <_Unwind_VRS_Set>
 8004114:	e1a00008 	mov	r0, r8
 8004118:	eaffff89 	b	8003f44 <__gnu_unwind_execute+0x90>
 800411c:	e1a00005 	mov	r0, r5
 8004120:	ebffff3e 	bl	8003e20 <next_unwind_byte>
 8004124:	e2502000 	subs	r2, r0, #0
 8004128:	0affff84 	beq	8003f40 <__gnu_unwind_execute+0x8c>
 800412c:	e21210f0 	ands	r1, r2, #240	; 0xf0
 8004130:	1affff82 	bne	8003f40 <__gnu_unwind_execute+0x8c>
 8004134:	e1a00007 	mov	r0, r7
 8004138:	e1a03001 	mov	r3, r1
 800413c:	ebfffdbe 	bl	800383c <_Unwind_VRS_Pop>
 8004140:	e3500000 	cmp	r0, #0
 8004144:	1affff7d 	bne	8003f40 <__gnu_unwind_execute+0x8c>
 8004148:	eaffff5e 	b	8003ec8 <__gnu_unwind_execute+0x14>
 800414c:	e3a01000 	mov	r1, #0
 8004150:	e28d300c 	add	r3, sp, #12
 8004154:	e58d3000 	str	r3, [sp]
 8004158:	e3a0200d 	mov	r2, #13
 800415c:	e1a03001 	mov	r3, r1
 8004160:	e1a00007 	mov	r0, r7
 8004164:	ebfffc1f 	bl	80031e8 <_Unwind_VRS_Get>
 8004168:	e1a00005 	mov	r0, r5
 800416c:	ebffff2b 	bl	8003e20 <next_unwind_byte>
 8004170:	e3100080 	tst	r0, #128	; 0x80
 8004174:	e3a04002 	mov	r4, #2
 8004178:	0a000008 	beq	80041a0 <__gnu_unwind_execute+0x2ec>
 800417c:	e59d300c 	ldr	r3, [sp, #12]
 8004180:	e200007f 	and	r0, r0, #127	; 0x7f
 8004184:	e0833410 	add	r3, r3, r0, lsl r4
 8004188:	e1a00005 	mov	r0, r5
 800418c:	e58d300c 	str	r3, [sp, #12]
 8004190:	ebffff22 	bl	8003e20 <next_unwind_byte>
 8004194:	e3100080 	tst	r0, #128	; 0x80
 8004198:	e2844007 	add	r4, r4, #7
 800419c:	1afffff6 	bne	800417c <__gnu_unwind_execute+0x2c8>
 80041a0:	e3a01000 	mov	r1, #0
 80041a4:	e59d300c 	ldr	r3, [sp, #12]
 80041a8:	e28d200c 	add	r2, sp, #12
 80041ac:	e200007f 	and	r0, r0, #127	; 0x7f
 80041b0:	e2833f81 	add	r3, r3, #516	; 0x204
 80041b4:	e0834410 	add	r4, r3, r0, lsl r4
 80041b8:	e58d2000 	str	r2, [sp]
 80041bc:	e1a03001 	mov	r3, r1
 80041c0:	e1a00007 	mov	r0, r7
 80041c4:	e3a0200d 	mov	r2, #13
 80041c8:	e58d400c 	str	r4, [sp, #12]
 80041cc:	ebfffc28 	bl	8003274 <_Unwind_VRS_Set>
 80041d0:	eaffff3c 	b	8003ec8 <__gnu_unwind_execute+0x14>
 80041d4:	e1a00005 	mov	r0, r5
 80041d8:	ebffff10 	bl	8003e20 <next_unwind_byte>
 80041dc:	e3a01001 	mov	r1, #1
 80041e0:	e200200f 	and	r2, r0, #15
 80041e4:	e0822001 	add	r2, r2, r1
 80041e8:	e20000f0 	and	r0, r0, #240	; 0xf0
 80041ec:	e1822600 	orr	r2, r2, r0, lsl #12
 80041f0:	eaffff7f 	b	8003ff4 <__gnu_unwind_execute+0x140>
 80041f4:	e1a00005 	mov	r0, r5
 80041f8:	ebffff08 	bl	8003e20 <next_unwind_byte>
 80041fc:	e200200f 	and	r2, r0, #15
 8004200:	e2822001 	add	r2, r2, #1
 8004204:	e20000f0 	and	r0, r0, #240	; 0xf0
 8004208:	e3a01003 	mov	r1, #3
 800420c:	e1822600 	orr	r2, r2, r0, lsl #12
 8004210:	eaffff77 	b	8003ff4 <__gnu_unwind_execute+0x140>
 8004214:	e1a00005 	mov	r0, r5
 8004218:	ebffff00 	bl	8003e20 <next_unwind_byte>
 800421c:	e2502000 	subs	r2, r0, #0
 8004220:	0affff46 	beq	8003f40 <__gnu_unwind_execute+0x8c>
 8004224:	e21230f0 	ands	r3, r2, #240	; 0xf0
 8004228:	1affff44 	bne	8003f40 <__gnu_unwind_execute+0x8c>
 800422c:	e1a00007 	mov	r0, r7
 8004230:	e3a01004 	mov	r1, #4
 8004234:	ebfffd80 	bl	800383c <_Unwind_VRS_Pop>
 8004238:	e3500000 	cmp	r0, #0
 800423c:	1affff3f 	bne	8003f40 <__gnu_unwind_execute+0x8c>
 8004240:	eaffff20 	b	8003ec8 <__gnu_unwind_execute+0x14>
 8004244:	e200200f 	and	r2, r0, #15
 8004248:	e2822001 	add	r2, r2, #1
 800424c:	e3a01003 	mov	r1, #3
 8004250:	e382280a 	orr	r2, r2, #655360	; 0xa0000
 8004254:	eaffff66 	b	8003ff4 <__gnu_unwind_execute+0x140>
 8004258:	e1a00005 	mov	r0, r5
 800425c:	ebfffeef 	bl	8003e20 <next_unwind_byte>
 8004260:	e20020f0 	and	r2, r0, #240	; 0xf0
 8004264:	e200300f 	and	r3, r0, #15
 8004268:	e2822010 	add	r2, r2, #16
 800426c:	e2833001 	add	r3, r3, #1
 8004270:	e1832602 	orr	r2, r3, r2, lsl #12
 8004274:	eaffff2b 	b	8003f28 <__gnu_unwind_execute+0x74>

08004278 <__gnu_unwind_frame>:
 8004278:	e3a0c003 	mov	ip, #3
 800427c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 8004280:	e590304c 	ldr	r3, [r0, #76]	; 0x4c
 8004284:	e24dd014 	sub	sp, sp, #20
 8004288:	e5932004 	ldr	r2, [r3, #4]
 800428c:	e5cdc00c 	strb	ip, [sp, #12]
 8004290:	e5d3c007 	ldrb	ip, [r3, #7]
 8004294:	e1a02402 	lsl	r2, r2, #8
 8004298:	e2833008 	add	r3, r3, #8
 800429c:	e1a00001 	mov	r0, r1
 80042a0:	e28d1004 	add	r1, sp, #4
 80042a4:	e58d2004 	str	r2, [sp, #4]
 80042a8:	e5cdc00d 	strb	ip, [sp, #13]
 80042ac:	e58d3008 	str	r3, [sp, #8]
 80042b0:	ebfffeff 	bl	8003eb4 <__gnu_unwind_execute>
 80042b4:	e28dd014 	add	sp, sp, #20
 80042b8:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 80042bc:	e12fff1e 	bx	lr

080042c0 <_Unwind_GetRegionStart>:
 80042c0:	e92d4008 	push	{r3, lr}
 80042c4:	ebfffef9 	bl	8003eb0 <unwind_UCB_from_context>
 80042c8:	e8bd4008 	pop	{r3, lr}
 80042cc:	e5900048 	ldr	r0, [r0, #72]	; 0x48
 80042d0:	e12fff1e 	bx	lr

080042d4 <_Unwind_GetLanguageSpecificData>:
 80042d4:	e92d4008 	push	{r3, lr}
 80042d8:	ebfffef4 	bl	8003eb0 <unwind_UCB_from_context>
 80042dc:	e590304c 	ldr	r3, [r0, #76]	; 0x4c
 80042e0:	e5d30007 	ldrb	r0, [r3, #7]
 80042e4:	e0830100 	add	r0, r3, r0, lsl #2
 80042e8:	e2800008 	add	r0, r0, #8
 80042ec:	e8bd4008 	pop	{r3, lr}
 80042f0:	e12fff1e 	bx	lr

080042f4 <_Unwind_GetDataRelBase>:
 80042f4:	e92d4008 	push	{r3, lr}
 80042f8:	eb000001 	bl	8004304 <abort>

080042fc <_Unwind_GetTextRelBase>:
 80042fc:	e92d4008 	push	{r3, lr}
 8004300:	ebffffff 	bl	8004304 <abort>

08004304 <abort>:
 8004304:	e92d4008 	push	{r3, lr}
 8004308:	e3a00006 	mov	r0, #6
 800430c:	eb000063 	bl	80044a0 <raise>
 8004310:	e3a00001 	mov	r0, #1
 8004314:	eb000086 	bl	8004534 <_exit>

08004318 <memcpy>:
 8004318:	e352000f 	cmp	r2, #15
 800431c:	e92d4070 	push	{r4, r5, r6, lr}
 8004320:	9a000029 	bls	80043cc <memcpy+0xb4>
 8004324:	e1803001 	orr	r3, r0, r1
 8004328:	e3130003 	tst	r3, #3
 800432c:	1a000031 	bne	80043f8 <memcpy+0xe0>
 8004330:	e1a0e002 	mov	lr, r2
 8004334:	e280c010 	add	ip, r0, #16
 8004338:	e2813010 	add	r3, r1, #16
 800433c:	e5134010 	ldr	r4, [r3, #-16]
 8004340:	e50c4010 	str	r4, [ip, #-16]
 8004344:	e513400c 	ldr	r4, [r3, #-12]
 8004348:	e50c400c 	str	r4, [ip, #-12]
 800434c:	e5134008 	ldr	r4, [r3, #-8]
 8004350:	e50c4008 	str	r4, [ip, #-8]
 8004354:	e24ee010 	sub	lr, lr, #16
 8004358:	e5134004 	ldr	r4, [r3, #-4]
 800435c:	e35e000f 	cmp	lr, #15
 8004360:	e50c4004 	str	r4, [ip, #-4]
 8004364:	e2833010 	add	r3, r3, #16
 8004368:	e28cc010 	add	ip, ip, #16
 800436c:	8afffff2 	bhi	800433c <memcpy+0x24>
 8004370:	e2423010 	sub	r3, r2, #16
 8004374:	e3c3300f 	bic	r3, r3, #15
 8004378:	e202600f 	and	r6, r2, #15
 800437c:	e2833010 	add	r3, r3, #16
 8004380:	e3560003 	cmp	r6, #3
 8004384:	e0811003 	add	r1, r1, r3
 8004388:	e0803003 	add	r3, r0, r3
 800438c:	9a00001b 	bls	8004400 <memcpy+0xe8>
 8004390:	e1a04001 	mov	r4, r1
 8004394:	e1a0c006 	mov	ip, r6
 8004398:	e243e004 	sub	lr, r3, #4
 800439c:	e24cc004 	sub	ip, ip, #4
 80043a0:	e4945004 	ldr	r5, [r4], #4
 80043a4:	e35c0003 	cmp	ip, #3
 80043a8:	e5ae5004 	str	r5, [lr, #4]!
 80043ac:	8afffffa 	bhi	800439c <memcpy+0x84>
 80043b0:	e246c004 	sub	ip, r6, #4
 80043b4:	e3ccc003 	bic	ip, ip, #3
 80043b8:	e28cc004 	add	ip, ip, #4
 80043bc:	e083300c 	add	r3, r3, ip
 80043c0:	e081100c 	add	r1, r1, ip
 80043c4:	e2022003 	and	r2, r2, #3
 80043c8:	ea000000 	b	80043d0 <memcpy+0xb8>
 80043cc:	e1a03000 	mov	r3, r0
 80043d0:	e3520000 	cmp	r2, #0
 80043d4:	0a000005 	beq	80043f0 <memcpy+0xd8>
 80043d8:	e2433001 	sub	r3, r3, #1
 80043dc:	e0812002 	add	r2, r1, r2
 80043e0:	e4d1c001 	ldrb	ip, [r1], #1
 80043e4:	e1510002 	cmp	r1, r2
 80043e8:	e5e3c001 	strb	ip, [r3, #1]!
 80043ec:	1afffffb 	bne	80043e0 <memcpy+0xc8>
 80043f0:	e8bd4070 	pop	{r4, r5, r6, lr}
 80043f4:	e12fff1e 	bx	lr
 80043f8:	e1a03000 	mov	r3, r0
 80043fc:	eafffff5 	b	80043d8 <memcpy+0xc0>
 8004400:	e1a02006 	mov	r2, r6
 8004404:	eafffff1 	b	80043d0 <memcpy+0xb8>

08004408 <_raise_r>:
 8004408:	e351001f 	cmp	r1, #31
 800440c:	e92d4038 	push	{r3, r4, r5, lr}
 8004410:	e1a05000 	mov	r5, r0
 8004414:	83a03016 	movhi	r3, #22
 8004418:	83e00000 	mvnhi	r0, #0
 800441c:	85853000 	strhi	r3, [r5]
 8004420:	8a000013 	bhi	8004474 <_raise_r+0x6c>
 8004424:	e59522dc 	ldr	r2, [r5, #732]	; 0x2dc
 8004428:	e3520000 	cmp	r2, #0
 800442c:	e1a04001 	mov	r4, r1
 8004430:	0a000013 	beq	8004484 <_raise_r+0x7c>
 8004434:	e7923101 	ldr	r3, [r2, r1, lsl #2]
 8004438:	e3530000 	cmp	r3, #0
 800443c:	0a000010 	beq	8004484 <_raise_r+0x7c>
 8004440:	e3530001 	cmp	r3, #1
 8004444:	0a00000c 	beq	800447c <_raise_r+0x74>
 8004448:	e3730001 	cmn	r3, #1
 800444c:	03a03016 	moveq	r3, #22
 8004450:	03a00001 	moveq	r0, #1
 8004454:	05853000 	streq	r3, [r5]
 8004458:	0a000005 	beq	8004474 <_raise_r+0x6c>
 800445c:	e3a05000 	mov	r5, #0
 8004460:	e1a00001 	mov	r0, r1
 8004464:	e7825101 	str	r5, [r2, r1, lsl #2]
 8004468:	e1a0e00f 	mov	lr, pc
 800446c:	e12fff13 	bx	r3
 8004470:	e1a00005 	mov	r0, r5
 8004474:	e8bd4038 	pop	{r3, r4, r5, lr}
 8004478:	e12fff1e 	bx	lr
 800447c:	e3a00000 	mov	r0, #0
 8004480:	eafffffb 	b	8004474 <_raise_r+0x6c>
 8004484:	e1a00005 	mov	r0, r5
 8004488:	eb000019 	bl	80044f4 <_getpid_r>
 800448c:	e1a02004 	mov	r2, r4
 8004490:	e1a01000 	mov	r1, r0
 8004494:	e1a00005 	mov	r0, r5
 8004498:	eb000005 	bl	80044b4 <_kill_r>
 800449c:	eafffff4 	b	8004474 <_raise_r+0x6c>

080044a0 <raise>:
 80044a0:	e59f3008 	ldr	r3, [pc, #8]	; 80044b0 <raise+0x10>
 80044a4:	e1a01000 	mov	r1, r0
 80044a8:	e5930000 	ldr	r0, [r3]
 80044ac:	eaffffd5 	b	8004408 <_raise_r>
 80044b0:	20000500 	.word	0x20000500

080044b4 <_kill_r>:
 80044b4:	e92d4038 	push	{r3, r4, r5, lr}
 80044b8:	e3a03000 	mov	r3, #0
 80044bc:	e59f402c 	ldr	r4, [pc, #44]	; 80044f0 <_kill_r+0x3c>
 80044c0:	e1a05000 	mov	r5, r0
 80044c4:	e1a00001 	mov	r0, r1
 80044c8:	e1a01002 	mov	r1, r2
 80044cc:	e5843000 	str	r3, [r4]
 80044d0:	eb000011 	bl	800451c <_kill>
 80044d4:	e3700001 	cmn	r0, #1
 80044d8:	1a000002 	bne	80044e8 <_kill_r+0x34>
 80044dc:	e5943000 	ldr	r3, [r4]
 80044e0:	e3530000 	cmp	r3, #0
 80044e4:	15853000 	strne	r3, [r5]
 80044e8:	e8bd4038 	pop	{r3, r4, r5, lr}
 80044ec:	e12fff1e 	bx	lr
 80044f0:	20001048 	.word	0x20001048

080044f4 <_getpid_r>:
 80044f4:	e92d4008 	push	{r3, lr}
 80044f8:	eb000001 	bl	8004504 <_getpid>
 80044fc:	e8bd4008 	pop	{r3, lr}
 8004500:	e12fff1e 	bx	lr

08004504 <_getpid>:
 8004504:	e3a02058 	mov	r2, #88	; 0x58
 8004508:	e59f3008 	ldr	r3, [pc, #8]	; 8004518 <_getpid+0x14>
 800450c:	e3e00000 	mvn	r0, #0
 8004510:	e5832000 	str	r2, [r3]
 8004514:	e12fff1e 	bx	lr
 8004518:	20001048 	.word	0x20001048

0800451c <_kill>:
 800451c:	e3a02058 	mov	r2, #88	; 0x58
 8004520:	e59f3008 	ldr	r3, [pc, #8]	; 8004530 <_kill+0x14>
 8004524:	e3e00000 	mvn	r0, #0
 8004528:	e5832000 	str	r2, [r3]
 800452c:	e12fff1e 	bx	lr
 8004530:	20001048 	.word	0x20001048

08004534 <_exit>:
 8004534:	eafffffe 	b	8004534 <_exit>

08004538 <_init>:
 8004538:	e1a0c00d 	mov	ip, sp
 800453c:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
 8004540:	e24cb004 	sub	fp, ip, #4
 8004544:	e24bd028 	sub	sp, fp, #40	; 0x28
 8004548:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
 800454c:	e12fff1e 	bx	lr

08004550 <_fini>:
 8004550:	e1a0c00d 	mov	ip, sp
 8004554:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
 8004558:	e24cb004 	sub	fp, ip, #4
 800455c:	e24bd028 	sub	sp, fp, #40	; 0x28
 8004560:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
 8004564:	e12fff1e 	bx	lr
 8004568:	453e3e3e 	.word	0x453e3e3e
 800456c:	72652020 	.word	0x72652020
 8004570:	20726f72 	.word	0x20726f72
 8004574:	65646f63 	.word	0x65646f63
 8004578:	3a752520 	.word	0x3a752520
 800457c:	000a7525 	.word	0x000a7525
 8004580:	433e3e3e 	.word	0x433e3e3e
 8004584:	69250020 	.word	0x69250020
 8004588:	20692520 	.word	0x20692520
 800458c:	25206925 	.word	0x25206925
 8004590:	25002069 	.word	0x25002069
 8004594:	69252069 	.word	0x69252069
 8004598:	20752520 	.word	0x20752520
 800459c:	00206925 	.word	0x00206925
 80045a0:	3e000a0a 	.word	0x3e000a0a
 80045a4:	204c3e3e 	.word	0x204c3e3e
 80045a8:	20692500 	.word	0x20692500
 80045ac:	25206925 	.word	0x25206925
 80045b0:	75252075 	.word	0x75252075
 80045b4:	3e3e0020 	.word	0x3e3e0020
 80045b8:	00204f3e 	.word	0x00204f3e
 80045bc:	493e3e3e 	.word	0x493e3e3e
 80045c0:	3e3e0020 	.word	0x3e3e0020
 80045c4:	0a002053 	.word	0x0a002053
 80045c8:	636c6577 	.word	0x636c6577
 80045cc:	20656d6f 	.word	0x20656d6f
 80045d0:	53206f74 	.word	0x53206f74
 80045d4:	68757a75 	.word	0x68757a75
 80045d8:	20534f61 	.word	0x20534f61
 80045dc:	205e5f5e 	.word	0x205e5f5e
 80045e0:	2e302e32 	.word	0x2e302e32
 80045e4:	55420a36 	.word	0x55420a36
 80045e8:	20444c49 	.word	0x20444c49
 80045ec:	206e754a 	.word	0x206e754a
 80045f0:	32203820 	.word	0x32203820
 80045f4:	20363130 	.word	0x20363130
 80045f8:	343a3930 	.word	0x343a3930
 80045fc:	33333a32 	.word	0x33333a32
 8004600:	000a      	.short	0x000a
 8004602:	7473      	.short	0x7473
 8004604:	206f6964 	.word	0x206f6964
 8004608:	74696e69 	.word	0x74696e69
 800460c:	6e6f6420 	.word	0x6e6f6420
 8004610:	00000a65 	.word	0x00000a65
 8004614:	00000043 	.word	0x00000043

08004618 <__EH_FRAME_BEGIN__>:
 8004618:	00000000                                ....
