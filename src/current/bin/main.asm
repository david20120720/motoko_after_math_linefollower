
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
 80001c6:	f002 bb09 	b.w	80027dc <drv8834_run>

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
 80001e0:	f001 fb70 	bl	80018c4 <rgb_get>
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
 800020e:	f001 fb59 	bl	80018c4 <rgb_get>
 8000212:	ea4f 0a45 	mov.w	sl, r5, lsl #1
 8000216:	4450      	add	r0, sl
 8000218:	4b87      	ldr	r3, [pc, #540]	; (8000438 <_ZN6CRobot16line_sensor_readEv+0x264>)
 800021a:	f853 2025 	ldr.w	r2, [r3, r5, lsl #2]
 800021e:	8ec3      	ldrh	r3, [r0, #54]	; 0x36
 8000220:	1a9b      	subs	r3, r3, r2
 8000222:	86c3      	strh	r3, [r0, #54]	; 0x36
 8000224:	f001 fb4e 	bl	80018c4 <rgb_get>
 8000228:	4b84      	ldr	r3, [pc, #528]	; (800043c <_ZN6CRobot16line_sensor_readEv+0x268>)
 800022a:	f853 2025 	ldr.w	r2, [r3, r5, lsl #2]
 800022e:	f830 3015 	ldrh.w	r3, [r0, r5, lsl #1]
 8000232:	1a9b      	subs	r3, r3, r2
 8000234:	f820 3015 	strh.w	r3, [r0, r5, lsl #1]
 8000238:	f001 fb44 	bl	80018c4 <rgb_get>
 800023c:	4b80      	ldr	r3, [pc, #512]	; (8000440 <_ZN6CRobot16line_sensor_readEv+0x26c>)
 800023e:	4450      	add	r0, sl
 8000240:	f853 2025 	ldr.w	r2, [r3, r5, lsl #2]
 8000244:	8a43      	ldrh	r3, [r0, #18]
 8000246:	1a9b      	subs	r3, r3, r2
 8000248:	8243      	strh	r3, [r0, #18]
 800024a:	f001 fb3b 	bl	80018c4 <rgb_get>
 800024e:	4b7d      	ldr	r3, [pc, #500]	; (8000444 <_ZN6CRobot16line_sensor_readEv+0x270>)
 8000250:	4450      	add	r0, sl
 8000252:	f853 2025 	ldr.w	r2, [r3, r5, lsl #2]
 8000256:	8c83      	ldrh	r3, [r0, #36]	; 0x24
 8000258:	1a9b      	subs	r3, r3, r2
 800025a:	8483      	strh	r3, [r0, #36]	; 0x24
 800025c:	f001 fb32 	bl	80018c4 <rgb_get>
 8000260:	eb00 0045 	add.w	r0, r0, r5, lsl #1
 8000264:	f9b0 3036 	ldrsh.w	r3, [r0, #54]	; 0x36
 8000268:	4499      	add	r9, r3
 800026a:	f001 fb2b 	bl	80018c4 <rgb_get>
 800026e:	f930 3015 	ldrsh.w	r3, [r0, r5, lsl #1]
 8000272:	4498      	add	r8, r3
 8000274:	f001 fb26 	bl	80018c4 <rgb_get>
 8000278:	eb00 0045 	add.w	r0, r0, r5, lsl #1
 800027c:	f9b0 3012 	ldrsh.w	r3, [r0, #18]
 8000280:	441f      	add	r7, r3
 8000282:	f001 fb1f 	bl	80018c4 <rgb_get>
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
 80002a8:	f001 fb0c 	bl	80018c4 <rgb_get>
 80002ac:	4682      	mov	sl, r0
 80002ae:	f001 fb09 	bl	80018c4 <rgb_get>
 80002b2:	f106 0318 	add.w	r3, r6, #24
 80002b6:	005b      	lsls	r3, r3, #1
 80002b8:	4418      	add	r0, r3
 80002ba:	449a      	add	sl, r3
 80002bc:	88c3      	ldrh	r3, [r0, #6]
 80002be:	ebc3 0309 	rsb	r3, r3, r9
 80002c2:	f8aa 3006 	strh.w	r3, [sl, #6]
 80002c6:	f001 fafd 	bl	80018c4 <rgb_get>
 80002ca:	4682      	mov	sl, r0
 80002cc:	f001 fafa 	bl	80018c4 <rgb_get>
 80002d0:	f830 3016 	ldrh.w	r3, [r0, r6, lsl #1]
 80002d4:	ebc8 0303 	rsb	r3, r8, r3
 80002d8:	f82a 3016 	strh.w	r3, [sl, r6, lsl #1]
 80002dc:	f001 faf2 	bl	80018c4 <rgb_get>
 80002e0:	4682      	mov	sl, r0
 80002e2:	f001 faef 	bl	80018c4 <rgb_get>
 80002e6:	f106 0308 	add.w	r3, r6, #8
 80002ea:	005b      	lsls	r3, r3, #1
 80002ec:	4418      	add	r0, r3
 80002ee:	449a      	add	sl, r3
 80002f0:	8843      	ldrh	r3, [r0, #2]
 80002f2:	1bdb      	subs	r3, r3, r7
 80002f4:	f8aa 3002 	strh.w	r3, [sl, #2]
 80002f8:	f001 fae4 	bl	80018c4 <rgb_get>
 80002fc:	4682      	mov	sl, r0
 80002fe:	f001 fae1 	bl	80018c4 <rgb_get>
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
 8000320:	f001 fad0 	bl	80018c4 <rgb_get>
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
 8000450:	f001 fa3c 	bl	80018cc <rgb_read>
 8000454:	4620      	mov	r0, r4
 8000456:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800045a:	f7ff bebb 	b.w	80001d4 <_ZN6CRobot16line_sensor_readEv>

0800045e <_ZN6CRobot16line_sensor_initEv>:
 800045e:	b538      	push	{r3, r4, r5, lr}
 8000460:	4604      	mov	r4, r0
 8000462:	2500      	movs	r5, #0
 8000464:	f001 f9ec 	bl	8001840 <rgb_init>
 8000468:	f001 fa30 	bl	80018cc <rgb_read>
 800046c:	2192      	movs	r1, #146	; 0x92
 800046e:	2072      	movs	r0, #114	; 0x72
 8000470:	f104 025c 	add.w	r2, r4, #92	; 0x5c
 8000474:	f001 f9c9 	bl	800180a <rgb_i2c_read_reg>
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
 80004ba:	f002 f854 	bl	8002566 <i2c_read_reg>
 80004be:	2129      	movs	r1, #41	; 0x29
 80004c0:	4605      	mov	r5, r0
 80004c2:	20d4      	movs	r0, #212	; 0xd4
 80004c4:	f002 f84f 	bl	8002566 <i2c_read_reg>
 80004c8:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 80004cc:	f8a4 0094 	strh.w	r0, [r4, #148]	; 0x94
 80004d0:	212a      	movs	r1, #42	; 0x2a
 80004d2:	20d4      	movs	r0, #212	; 0xd4
 80004d4:	f002 f847 	bl	8002566 <i2c_read_reg>
 80004d8:	212b      	movs	r1, #43	; 0x2b
 80004da:	4605      	mov	r5, r0
 80004dc:	20d4      	movs	r0, #212	; 0xd4
 80004de:	f002 f842 	bl	8002566 <i2c_read_reg>
 80004e2:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 80004e6:	f8a4 0096 	strh.w	r0, [r4, #150]	; 0x96
 80004ea:	212c      	movs	r1, #44	; 0x2c
 80004ec:	20d4      	movs	r0, #212	; 0xd4
 80004ee:	f002 f83a 	bl	8002566 <i2c_read_reg>
 80004f2:	212d      	movs	r1, #45	; 0x2d
 80004f4:	4605      	mov	r5, r0
 80004f6:	20d4      	movs	r0, #212	; 0xd4
 80004f8:	f002 f835 	bl	8002566 <i2c_read_reg>
 80004fc:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000500:	f8a4 0098 	strh.w	r0, [r4, #152]	; 0x98
 8000504:	2108      	movs	r1, #8
 8000506:	203c      	movs	r0, #60	; 0x3c
 8000508:	f002 f82d 	bl	8002566 <i2c_read_reg>
 800050c:	2109      	movs	r1, #9
 800050e:	4605      	mov	r5, r0
 8000510:	203c      	movs	r0, #60	; 0x3c
 8000512:	f002 f828 	bl	8002566 <i2c_read_reg>
 8000516:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 800051a:	f8a4 008e 	strh.w	r0, [r4, #142]	; 0x8e
 800051e:	210a      	movs	r1, #10
 8000520:	203c      	movs	r0, #60	; 0x3c
 8000522:	f002 f820 	bl	8002566 <i2c_read_reg>
 8000526:	210b      	movs	r1, #11
 8000528:	4605      	mov	r5, r0
 800052a:	203c      	movs	r0, #60	; 0x3c
 800052c:	f002 f81b 	bl	8002566 <i2c_read_reg>
 8000530:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000534:	f8a4 0090 	strh.w	r0, [r4, #144]	; 0x90
 8000538:	210c      	movs	r1, #12
 800053a:	203c      	movs	r0, #60	; 0x3c
 800053c:	f002 f813 	bl	8002566 <i2c_read_reg>
 8000540:	210d      	movs	r1, #13
 8000542:	4605      	mov	r5, r0
 8000544:	203c      	movs	r0, #60	; 0x3c
 8000546:	f002 f80e 	bl	8002566 <i2c_read_reg>
 800054a:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 800054e:	f8a4 0092 	strh.w	r0, [r4, #146]	; 0x92
 8000552:	2128      	movs	r1, #40	; 0x28
 8000554:	203c      	movs	r0, #60	; 0x3c
 8000556:	f002 f806 	bl	8002566 <i2c_read_reg>
 800055a:	2129      	movs	r1, #41	; 0x29
 800055c:	4605      	mov	r5, r0
 800055e:	203c      	movs	r0, #60	; 0x3c
 8000560:	f002 f801 	bl	8002566 <i2c_read_reg>
 8000564:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000568:	f8a4 0088 	strh.w	r0, [r4, #136]	; 0x88
 800056c:	212a      	movs	r1, #42	; 0x2a
 800056e:	203c      	movs	r0, #60	; 0x3c
 8000570:	f001 fff9 	bl	8002566 <i2c_read_reg>
 8000574:	212b      	movs	r1, #43	; 0x2b
 8000576:	4605      	mov	r5, r0
 8000578:	203c      	movs	r0, #60	; 0x3c
 800057a:	f001 fff4 	bl	8002566 <i2c_read_reg>
 800057e:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000582:	f8a4 008a 	strh.w	r0, [r4, #138]	; 0x8a
 8000586:	212c      	movs	r1, #44	; 0x2c
 8000588:	203c      	movs	r0, #60	; 0x3c
 800058a:	f001 ffec 	bl	8002566 <i2c_read_reg>
 800058e:	212d      	movs	r1, #45	; 0x2d
 8000590:	4605      	mov	r5, r0
 8000592:	203c      	movs	r0, #60	; 0x3c
 8000594:	f001 ffe7 	bl	8002566 <i2c_read_reg>
 8000598:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 800059c:	f8a4 008c 	strh.w	r0, [r4, #140]	; 0x8c
 80005a0:	2105      	movs	r1, #5
 80005a2:	203c      	movs	r0, #60	; 0x3c
 80005a4:	f001 ffdf 	bl	8002566 <i2c_read_reg>
 80005a8:	2106      	movs	r1, #6
 80005aa:	4605      	mov	r5, r0
 80005ac:	203c      	movs	r0, #60	; 0x3c
 80005ae:	f001 ffda 	bl	8002566 <i2c_read_reg>
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
 800060e:	f001 ffaa 	bl	8002566 <i2c_read_reg>
 8000612:	28d4      	cmp	r0, #212	; 0xd4
 8000614:	4605      	mov	r5, r0
 8000616:	d164      	bne.n	80006e2 <_ZN6CRobot12lsm9ds0_initEv+0xde>
 8000618:	203c      	movs	r0, #60	; 0x3c
 800061a:	210f      	movs	r1, #15
 800061c:	f001 ffa3 	bl	8002566 <i2c_read_reg>
 8000620:	2849      	cmp	r0, #73	; 0x49
 8000622:	d160      	bne.n	80006e6 <_ZN6CRobot12lsm9ds0_initEv+0xe2>
 8000624:	4628      	mov	r0, r5
 8000626:	2120      	movs	r1, #32
 8000628:	22ff      	movs	r2, #255	; 0xff
 800062a:	f001 ff89 	bl	8002540 <i2c_write_reg>
 800062e:	4628      	mov	r0, r5
 8000630:	2123      	movs	r1, #35	; 0x23
 8000632:	2210      	movs	r2, #16
 8000634:	f001 ff84 	bl	8002540 <i2c_write_reg>
 8000638:	203c      	movs	r0, #60	; 0x3c
 800063a:	211f      	movs	r1, #31
 800063c:	2200      	movs	r2, #0
 800063e:	f001 ff7f 	bl	8002540 <i2c_write_reg>
 8000642:	203c      	movs	r0, #60	; 0x3c
 8000644:	2120      	movs	r1, #32
 8000646:	2267      	movs	r2, #103	; 0x67
 8000648:	f001 ff7a 	bl	8002540 <i2c_write_reg>
 800064c:	203c      	movs	r0, #60	; 0x3c
 800064e:	2121      	movs	r1, #33	; 0x21
 8000650:	2200      	movs	r2, #0
 8000652:	f001 ff75 	bl	8002540 <i2c_write_reg>
 8000656:	203c      	movs	r0, #60	; 0x3c
 8000658:	2124      	movs	r1, #36	; 0x24
 800065a:	22f4      	movs	r2, #244	; 0xf4
 800065c:	f001 ff70 	bl	8002540 <i2c_write_reg>
 8000660:	203c      	movs	r0, #60	; 0x3c
 8000662:	2125      	movs	r1, #37	; 0x25
 8000664:	2200      	movs	r2, #0
 8000666:	f001 ff6b 	bl	8002540 <i2c_write_reg>
 800066a:	203c      	movs	r0, #60	; 0x3c
 800066c:	2126      	movs	r1, #38	; 0x26
 800066e:	2280      	movs	r2, #128	; 0x80
 8000670:	f001 ff66 	bl	8002540 <i2c_write_reg>
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
 8000738:	f000 fd42 	bl	80011c0 <printf_>
 800073c:	2400      	movs	r4, #0
 800073e:	1ceb      	adds	r3, r5, #3
 8000740:	429c      	cmp	r4, r3
 8000742:	d20f      	bcs.n	8000764 <abort_error_+0x38>
 8000744:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8000748:	f002 f9b4 	bl	8002ab4 <led_on>
 800074c:	2032      	movs	r0, #50	; 0x32
 800074e:	f001 fc8f 	bl	8002070 <timer_delay_ms>
 8000752:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8000756:	f002 f9b7 	bl	8002ac8 <led_off>
 800075a:	2064      	movs	r0, #100	; 0x64
 800075c:	f001 fc88 	bl	8002070 <timer_delay_ms>
 8000760:	3401      	adds	r4, #1
 8000762:	e7ec      	b.n	800073e <abort_error_+0x12>
 8000764:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 8000768:	f001 fc82 	bl	8002070 <timer_delay_ms>
 800076c:	e7e1      	b.n	8000732 <abort_error_+0x6>
 800076e:	bf00      	nop
 8000770:	08004548 	.word	0x08004548

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
 80007f4:	f001 fc3c 	bl	8002070 <timer_delay_ms>
 80007f8:	e7cf      	b.n	800079a <_ZN9CObstacle12rotate_robotEi+0x1e>
 80007fa:	2100      	movs	r1, #0
 80007fc:	6868      	ldr	r0, [r5, #4]
 80007fe:	460a      	mov	r2, r1
 8000800:	f7ff fcdf 	bl	80001c2 <_ZN6CRobot10set_motorsEii>
 8000804:	ecbd 8b02 	vpop	{d8}
 8000808:	20c8      	movs	r0, #200	; 0xc8
 800080a:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 800080e:	f001 bc2f 	b.w	8002070 <timer_delay_ms>
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
 8000834:	f001 fc0e 	bl	8002054 <timer_get_time>
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
 8000856:	f001 fbfd 	bl	8002054 <timer_get_time>
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
 80008c4:	f001 fbd4 	bl	8002070 <timer_delay_ms>
 80008c8:	2e00      	cmp	r6, #0
 80008ca:	d0c2      	beq.n	8000852 <_ZN9CObstacle10go_forwardEijPFhvE+0x2e>
 80008cc:	47b0      	blx	r6
 80008ce:	2800      	cmp	r0, #0
 80008d0:	d0bf      	beq.n	8000852 <_ZN9CObstacle10go_forwardEijPFhvE+0x2e>
 80008d2:	2000      	movs	r0, #0
 80008d4:	4601      	mov	r1, r0
 80008d6:	f001 ff81 	bl	80027dc <drv8834_run>
 80008da:	ecbd 8b04 	vpop	{d8-d9}
 80008de:	2064      	movs	r0, #100	; 0x64
 80008e0:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 80008e4:	f001 bbc4 	b.w	8002070 <timer_delay_ms>
 80008e8:	00000000 	.word	0x00000000
 80008ec:	3a83126f 	.word	0x3a83126f
 80008f0:	3e4ccccc 	.word	0x3e4ccccc
 80008f4:	399d4952 	.word	0x399d4952
 80008f8:	3f4ccccd 	.word	0x3f4ccccd

080008fc <_ZN9CObstacle7processEv>:
 80008fc:	b510      	push	{r4, lr}
 80008fe:	4604      	mov	r4, r0
 8000900:	f002 f8f4 	bl	8002aec <get_mode_jumper>
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
 800099e:	f001 fb77 	bl	8002090 <event_timer_set_period>
 80009a2:	2000      	movs	r0, #0
 80009a4:	f001 fb8c 	bl	80020c0 <event_timer_wait>
 80009a8:	4801      	ldr	r0, [pc, #4]	; (80009b0 <_Z18line_sensor_threadv+0x18>)
 80009aa:	f7ff fd4f 	bl	800044c <_ZN6CRobot19process_rgb_sensorsEv>
 80009ae:	e7f8      	b.n	80009a2 <_Z18line_sensor_threadv+0xa>
 80009b0:	20000918 	.word	0x20000918

080009b4 <_Z17imu_sensor_threadv>:
 80009b4:	b508      	push	{r3, lr}
 80009b6:	2001      	movs	r0, #1
 80009b8:	210a      	movs	r1, #10
 80009ba:	f001 fb69 	bl	8002090 <event_timer_set_period>
 80009be:	2001      	movs	r0, #1
 80009c0:	f001 fb7e 	bl	80020c0 <event_timer_wait>
 80009c4:	4801      	ldr	r0, [pc, #4]	; (80009cc <_Z17imu_sensor_threadv+0x18>)
 80009c6:	f7ff fdf9 	bl	80005bc <_ZN6CRobot18process_imu_sensorEv>
 80009ca:	e7f8      	b.n	80009be <_Z17imu_sensor_threadv+0xa>
 80009cc:	20000918 	.word	0x20000918

080009d0 <_Z13line_followerv>:
 80009d0:	b510      	push	{r4, lr}
 80009d2:	2002      	movs	r0, #2
 80009d4:	2104      	movs	r1, #4
 80009d6:	f001 fb5b 	bl	8002090 <event_timer_set_period>
 80009da:	2400      	movs	r4, #0
 80009dc:	2002      	movs	r0, #2
 80009de:	f001 fb6f 	bl	80020c0 <event_timer_wait>
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
 8000a22:	f002 f847 	bl	8002ab4 <led_on>
 8000a26:	e7d9      	b.n	80009dc <_Z13line_followerv+0xc>
 8000a28:	f002 f84e 	bl	8002ac8 <led_off>
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
 8000a46:	f000 fbbb 	bl	80011c0 <printf_>
 8000a4a:	f44f 7096 	mov.w	r0, #300	; 0x12c
 8000a4e:	f001 fb0f 	bl	8002070 <timer_delay_ms>
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
 8000af4:	f000 fa3c 	bl	8000f70 <create_thread>
 8000af8:	4816      	ldr	r0, [pc, #88]	; (8000b54 <main_thread+0x114>)
 8000afa:	4917      	ldr	r1, [pc, #92]	; (8000b58 <main_thread+0x118>)
 8000afc:	f44f 7200 	mov.w	r2, #512	; 0x200
 8000b00:	2306      	movs	r3, #6
 8000b02:	f000 fa35 	bl	8000f70 <create_thread>
 8000b06:	f001 ffe9 	bl	8002adc <get_key>
 8000b0a:	b128      	cbz	r0, 8000b18 <main_thread+0xd8>
 8000b0c:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 8000b10:	f001 faae 	bl	8002070 <timer_delay_ms>
 8000b14:	f7ff ff5c 	bl	80009d0 <_Z13line_followerv>
 8000b18:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8000b1c:	f001 ffca 	bl	8002ab4 <led_on>
 8000b20:	2064      	movs	r0, #100	; 0x64
 8000b22:	f001 faa5 	bl	8002070 <timer_delay_ms>
 8000b26:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8000b2a:	f001 ffcd 	bl	8002ac8 <led_off>
 8000b2e:	20c8      	movs	r0, #200	; 0xc8
 8000b30:	f001 fa9e 	bl	8002070 <timer_delay_ms>
 8000b34:	e7e7      	b.n	8000b06 <main_thread+0xc6>
 8000b36:	bf00      	nop
 8000b38:	080045a7 	.word	0x080045a7
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
 8000bd6:	f000 fbf5 	bl	80013c4 <pid_init>
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
 8000c6e:	f000 fb77 	bl	8001360 <m_abs>
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
 8000c9a:	f000 fb84 	bl	80013a6 <m_min>
 8000c9e:	68e2      	ldr	r2, [r4, #12]
 8000ca0:	68a1      	ldr	r1, [r4, #8]
 8000ca2:	6120      	str	r0, [r4, #16]
 8000ca4:	f000 fb68 	bl	8001378 <m_saturate>
 8000ca8:	ee18 1a10 	vmov	r1, s16
 8000cac:	6120      	str	r0, [r4, #16]
 8000cae:	f104 0018 	add.w	r0, r4, #24
 8000cb2:	f000 fbb7 	bl	8001424 <pid_process>
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
 8000d40:	f001 f996 	bl	8002070 <timer_delay_ms>
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
 8000e8a:	f001 fc15 	bl	80026b8 <sleep>
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
 8000efc:	4c0d      	ldr	r4, [pc, #52]	; (8000f34 <SysTick_Handler+0x40>)
 8000efe:	4d0e      	ldr	r5, [pc, #56]	; (8000f38 <SysTick_Handler+0x44>)
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
 8000f1a:	6822      	ldr	r2, [r4, #0]
 8000f1c:	230c      	movs	r3, #12
 8000f1e:	fb03 5302 	mla	r3, r3, r2, r5
 8000f22:	689a      	ldr	r2, [r3, #8]
 8000f24:	f06f 0306 	mvn.w	r3, #6
 8000f28:	469e      	mov	lr, r3
 8000f2a:	f382 8808 	msr	MSP, r2
 8000f2e:	e8bd 0ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 8000f32:	4770      	bx	lr
 8000f34:	20000a94 	.word	0x20000a94
 8000f38:	20000a4c 	.word	0x20000a4c

08000f3c <SVC_Handler>:
 8000f3c:	bf00      	nop
 8000f3e:	bf00      	nop
 8000f40:	4770      	bx	lr

08000f42 <sched_off>:
 8000f42:	b672      	cpsid	i
 8000f44:	4770      	bx	lr

08000f46 <sched_on>:
 8000f46:	b662      	cpsie	i
 8000f48:	4770      	bx	lr

08000f4a <yield>:
 8000f4a:	4770      	bx	lr

08000f4c <get_thread_id>:
 8000f4c:	b082      	sub	sp, #8
 8000f4e:	b672      	cpsid	i
 8000f50:	4b03      	ldr	r3, [pc, #12]	; (8000f60 <get_thread_id+0x14>)
 8000f52:	681b      	ldr	r3, [r3, #0]
 8000f54:	9301      	str	r3, [sp, #4]
 8000f56:	b662      	cpsie	i
 8000f58:	9801      	ldr	r0, [sp, #4]
 8000f5a:	b002      	add	sp, #8
 8000f5c:	4770      	bx	lr
 8000f5e:	bf00      	nop
 8000f60:	20000a94 	.word	0x20000a94

08000f64 <kernel_start>:
 8000f64:	b508      	push	{r3, lr}
 8000f66:	f001 fb95 	bl	8002694 <sys_tick_init>
 8000f6a:	bf00      	nop
 8000f6c:	e7fd      	b.n	8000f6a <kernel_start+0x6>
	...

08000f70 <create_thread>:
 8000f70:	f022 0203 	bic.w	r2, r2, #3
 8000f74:	3a40      	subs	r2, #64	; 0x40
 8000f76:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8000f7a:	eb01 0e02 	add.w	lr, r1, r2
 8000f7e:	f102 0634 	add.w	r6, r2, #52	; 0x34
 8000f82:	f102 0738 	add.w	r7, r2, #56	; 0x38
 8000f86:	323c      	adds	r2, #60	; 0x3c
 8000f88:	440e      	add	r6, r1
 8000f8a:	440f      	add	r7, r1
 8000f8c:	4411      	add	r1, r2
 8000f8e:	2200      	movs	r2, #0
 8000f90:	b672      	cpsid	i
 8000f92:	f8df c054 	ldr.w	ip, [pc, #84]	; 8000fe8 <create_thread+0x78>
 8000f96:	250c      	movs	r5, #12
 8000f98:	4355      	muls	r5, r2
 8000f9a:	eb0c 0405 	add.w	r4, ip, r5
 8000f9e:	f8d4 8004 	ldr.w	r8, [r4, #4]
 8000fa2:	f018 0f01 	tst.w	r8, #1
 8000fa6:	d114      	bne.n	8000fd2 <create_thread+0x62>
 8000fa8:	f8df 8040 	ldr.w	r8, [pc, #64]	; 8000fec <create_thread+0x7c>
 8000fac:	f8c4 e008 	str.w	lr, [r4, #8]
 8000fb0:	2b05      	cmp	r3, #5
 8000fb2:	f8c6 8000 	str.w	r8, [r6]
 8000fb6:	bf98      	it	ls
 8000fb8:	2306      	movls	r3, #6
 8000fba:	f04f 5804 	mov.w	r8, #553648128	; 0x21000000
 8000fbe:	6038      	str	r0, [r7, #0]
 8000fc0:	f8c1 8000 	str.w	r8, [r1]
 8000fc4:	8063      	strh	r3, [r4, #2]
 8000fc6:	f82c 3005 	strh.w	r3, [ip, r5]
 8000fca:	2501      	movs	r5, #1
 8000fcc:	6065      	str	r5, [r4, #4]
 8000fce:	4614      	mov	r4, r2
 8000fd0:	e000      	b.n	8000fd4 <create_thread+0x64>
 8000fd2:	2406      	movs	r4, #6
 8000fd4:	b662      	cpsie	i
 8000fd6:	3201      	adds	r2, #1
 8000fd8:	2a06      	cmp	r2, #6
 8000fda:	d001      	beq.n	8000fe0 <create_thread+0x70>
 8000fdc:	2c06      	cmp	r4, #6
 8000fde:	d0d7      	beq.n	8000f90 <create_thread+0x20>
 8000fe0:	4620      	mov	r0, r4
 8000fe2:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8000fe6:	bf00      	nop
 8000fe8:	20000a4c 	.word	0x20000a4c
 8000fec:	08000e69 	.word	0x08000e69

08000ff0 <kernel_init>:
 8000ff0:	b510      	push	{r4, lr}
 8000ff2:	2300      	movs	r3, #0
 8000ff4:	490b      	ldr	r1, [pc, #44]	; (8001024 <kernel_init+0x34>)
 8000ff6:	220c      	movs	r2, #12
 8000ff8:	435a      	muls	r2, r3
 8000ffa:	188c      	adds	r4, r1, r2
 8000ffc:	2000      	movs	r0, #0
 8000ffe:	6060      	str	r0, [r4, #4]
 8001000:	3301      	adds	r3, #1
 8001002:	2006      	movs	r0, #6
 8001004:	4283      	cmp	r3, r0
 8001006:	8060      	strh	r0, [r4, #2]
 8001008:	5288      	strh	r0, [r1, r2]
 800100a:	d1f3      	bne.n	8000ff4 <kernel_init+0x4>
 800100c:	4b06      	ldr	r3, [pc, #24]	; (8001028 <kernel_init+0x38>)
 800100e:	4807      	ldr	r0, [pc, #28]	; (800102c <kernel_init+0x3c>)
 8001010:	4907      	ldr	r1, [pc, #28]	; (8001030 <kernel_init+0x40>)
 8001012:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8001016:	601a      	str	r2, [r3, #0]
 8001018:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800101c:	2280      	movs	r2, #128	; 0x80
 800101e:	23ff      	movs	r3, #255	; 0xff
 8001020:	f7ff bfa6 	b.w	8000f70 <create_thread>
 8001024:	20000a4c 	.word	0x20000a4c
 8001028:	20000a94 	.word	0x20000a94
 800102c:	08000e89 	.word	0x08000e89
 8001030:	20000a98 	.word	0x20000a98

08001034 <set_wait_state>:
 8001034:	b507      	push	{r0, r1, r2, lr}
 8001036:	f7ff ff89 	bl	8000f4c <get_thread_id>
 800103a:	9000      	str	r0, [sp, #0]
 800103c:	b672      	cpsid	i
 800103e:	4b0c      	ldr	r3, [pc, #48]	; (8001070 <set_wait_state+0x3c>)
 8001040:	9a00      	ldr	r2, [sp, #0]
 8001042:	210c      	movs	r1, #12
 8001044:	fb01 3202 	mla	r2, r1, r2, r3
 8001048:	6851      	ldr	r1, [r2, #4]
 800104a:	f041 0102 	orr.w	r1, r1, #2
 800104e:	6051      	str	r1, [r2, #4]
 8001050:	b672      	cpsid	i
 8001052:	9a00      	ldr	r2, [sp, #0]
 8001054:	210c      	movs	r1, #12
 8001056:	fb01 3202 	mla	r2, r1, r2, r3
 800105a:	6852      	ldr	r2, [r2, #4]
 800105c:	9201      	str	r2, [sp, #4]
 800105e:	b662      	cpsie	i
 8001060:	9a01      	ldr	r2, [sp, #4]
 8001062:	9a01      	ldr	r2, [sp, #4]
 8001064:	0792      	lsls	r2, r2, #30
 8001066:	d4f3      	bmi.n	8001050 <set_wait_state+0x1c>
 8001068:	b003      	add	sp, #12
 800106a:	f85d fb04 	ldr.w	pc, [sp], #4
 800106e:	bf00      	nop
 8001070:	20000a4c 	.word	0x20000a4c

08001074 <wake_up_threads>:
 8001074:	2300      	movs	r3, #0
 8001076:	b672      	cpsid	i
 8001078:	4906      	ldr	r1, [pc, #24]	; (8001094 <wake_up_threads+0x20>)
 800107a:	220c      	movs	r2, #12
 800107c:	fb02 1203 	mla	r2, r2, r3, r1
 8001080:	6851      	ldr	r1, [r2, #4]
 8001082:	f021 0102 	bic.w	r1, r1, #2
 8001086:	6051      	str	r1, [r2, #4]
 8001088:	b662      	cpsie	i
 800108a:	3301      	adds	r3, #1
 800108c:	2b06      	cmp	r3, #6
 800108e:	d1f2      	bne.n	8001076 <wake_up_threads+0x2>
 8001090:	4770      	bx	lr
 8001092:	bf00      	nop
 8001094:	20000a4c 	.word	0x20000a4c

08001098 <messages_init>:
 8001098:	4a0a      	ldr	r2, [pc, #40]	; (80010c4 <messages_init+0x2c>)
 800109a:	2300      	movs	r3, #0
 800109c:	b510      	push	{r4, lr}
 800109e:	6013      	str	r3, [r2, #0]
 80010a0:	6053      	str	r3, [r2, #4]
 80010a2:	6093      	str	r3, [r2, #8]
 80010a4:	60d3      	str	r3, [r2, #12]
 80010a6:	6113      	str	r3, [r2, #16]
 80010a8:	6153      	str	r3, [r2, #20]
 80010aa:	4c07      	ldr	r4, [pc, #28]	; (80010c8 <messages_init+0x30>)
 80010ac:	0118      	lsls	r0, r3, #4
 80010ae:	1821      	adds	r1, r4, r0
 80010b0:	3301      	adds	r3, #1
 80010b2:	2200      	movs	r2, #0
 80010b4:	2b04      	cmp	r3, #4
 80010b6:	604a      	str	r2, [r1, #4]
 80010b8:	5022      	str	r2, [r4, r0]
 80010ba:	60ca      	str	r2, [r1, #12]
 80010bc:	608a      	str	r2, [r1, #8]
 80010be:	d1f4      	bne.n	80010aa <messages_init+0x12>
 80010c0:	bd10      	pop	{r4, pc}
 80010c2:	bf00      	nop
 80010c4:	20000b18 	.word	0x20000b18
 80010c8:	20000b30 	.word	0x20000b30

080010cc <putc_>:
 80010cc:	b538      	push	{r3, r4, r5, lr}
 80010ce:	4c06      	ldr	r4, [pc, #24]	; (80010e8 <putc_+0x1c>)
 80010d0:	4605      	mov	r5, r0
 80010d2:	4620      	mov	r0, r4
 80010d4:	f000 f91f 	bl	8001316 <mutex_lock>
 80010d8:	4628      	mov	r0, r5
 80010da:	f001 f8b5 	bl	8002248 <uart_write>
 80010de:	4620      	mov	r0, r4
 80010e0:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 80010e4:	f000 b933 	b.w	800134e <mutex_unlock>
 80010e8:	20000b70 	.word	0x20000b70

080010ec <puts_>:
 80010ec:	b510      	push	{r4, lr}
 80010ee:	4604      	mov	r4, r0
 80010f0:	4807      	ldr	r0, [pc, #28]	; (8001110 <puts_+0x24>)
 80010f2:	f000 f910 	bl	8001316 <mutex_lock>
 80010f6:	3c01      	subs	r4, #1
 80010f8:	f814 0f01 	ldrb.w	r0, [r4, #1]!
 80010fc:	b110      	cbz	r0, 8001104 <puts_+0x18>
 80010fe:	f7ff ffe5 	bl	80010cc <putc_>
 8001102:	e7f9      	b.n	80010f8 <puts_+0xc>
 8001104:	4802      	ldr	r0, [pc, #8]	; (8001110 <puts_+0x24>)
 8001106:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800110a:	f000 b920 	b.w	800134e <mutex_unlock>
 800110e:	bf00      	nop
 8001110:	20000b7c 	.word	0x20000b7c

08001114 <puti_>:
 8001114:	b530      	push	{r4, r5, lr}
 8001116:	b085      	sub	sp, #20
 8001118:	1e03      	subs	r3, r0, #0
 800111a:	f04f 0200 	mov.w	r2, #0
 800111e:	bfba      	itte	lt
 8001120:	425b      	neglt	r3, r3
 8001122:	2401      	movlt	r4, #1
 8001124:	4614      	movge	r4, r2
 8001126:	f88d 200f 	strb.w	r2, [sp, #15]
 800112a:	210a      	movs	r1, #10
 800112c:	220a      	movs	r2, #10
 800112e:	a801      	add	r0, sp, #4
 8001130:	fb93 f5f2 	sdiv	r5, r3, r2
 8001134:	fb02 3315 	mls	r3, r2, r5, r3
 8001138:	3330      	adds	r3, #48	; 0x30
 800113a:	540b      	strb	r3, [r1, r0]
 800113c:	1e4a      	subs	r2, r1, #1
 800113e:	462b      	mov	r3, r5
 8001140:	b10d      	cbz	r5, 8001146 <puti_+0x32>
 8001142:	4611      	mov	r1, r2
 8001144:	e7f2      	b.n	800112c <puti_+0x18>
 8001146:	b12c      	cbz	r4, 8001154 <puti_+0x40>
 8001148:	ab04      	add	r3, sp, #16
 800114a:	4413      	add	r3, r2
 800114c:	212d      	movs	r1, #45	; 0x2d
 800114e:	f803 1c0c 	strb.w	r1, [r3, #-12]
 8001152:	4611      	mov	r1, r2
 8001154:	4408      	add	r0, r1
 8001156:	f7ff ffc9 	bl	80010ec <puts_>
 800115a:	b005      	add	sp, #20
 800115c:	bd30      	pop	{r4, r5, pc}

0800115e <putui_>:
 800115e:	b51f      	push	{r0, r1, r2, r3, r4, lr}
 8001160:	2300      	movs	r3, #0
 8001162:	f88d 300f 	strb.w	r3, [sp, #15]
 8001166:	220a      	movs	r2, #10
 8001168:	230a      	movs	r3, #10
 800116a:	a901      	add	r1, sp, #4
 800116c:	fbb0 f4f3 	udiv	r4, r0, r3
 8001170:	fb03 0314 	mls	r3, r3, r4, r0
 8001174:	3330      	adds	r3, #48	; 0x30
 8001176:	5453      	strb	r3, [r2, r1]
 8001178:	4620      	mov	r0, r4
 800117a:	1e53      	subs	r3, r2, #1
 800117c:	b10c      	cbz	r4, 8001182 <putui_+0x24>
 800117e:	461a      	mov	r2, r3
 8001180:	e7f2      	b.n	8001168 <putui_+0xa>
 8001182:	1888      	adds	r0, r1, r2
 8001184:	f7ff ffb2 	bl	80010ec <puts_>
 8001188:	b004      	add	sp, #16
 800118a:	bd10      	pop	{r4, pc}

0800118c <putx_>:
 800118c:	b51f      	push	{r0, r1, r2, r3, r4, lr}
 800118e:	2300      	movs	r3, #0
 8001190:	f88d 300f 	strb.w	r3, [sp, #15]
 8001194:	220a      	movs	r2, #10
 8001196:	f000 030f 	and.w	r3, r0, #15
 800119a:	2b09      	cmp	r3, #9
 800119c:	a901      	add	r1, sp, #4
 800119e:	bf94      	ite	ls
 80011a0:	3330      	addls	r3, #48	; 0x30
 80011a2:	3357      	addhi	r3, #87	; 0x57
 80011a4:	0900      	lsrs	r0, r0, #4
 80011a6:	548b      	strb	r3, [r1, r2]
 80011a8:	f102 33ff 	add.w	r3, r2, #4294967295	; 0xffffffff
 80011ac:	d001      	beq.n	80011b2 <putx_+0x26>
 80011ae:	461a      	mov	r2, r3
 80011b0:	e7f1      	b.n	8001196 <putx_+0xa>
 80011b2:	1888      	adds	r0, r1, r2
 80011b4:	f7ff ff9a 	bl	80010ec <puts_>
 80011b8:	b005      	add	sp, #20
 80011ba:	f85d fb04 	ldr.w	pc, [sp], #4
	...

080011c0 <printf_>:
 80011c0:	b40f      	push	{r0, r1, r2, r3}
 80011c2:	b537      	push	{r0, r1, r2, r4, r5, lr}
 80011c4:	ac06      	add	r4, sp, #24
 80011c6:	4826      	ldr	r0, [pc, #152]	; (8001260 <printf_+0xa0>)
 80011c8:	f854 5b04 	ldr.w	r5, [r4], #4
 80011cc:	f000 f8a3 	bl	8001316 <mutex_lock>
 80011d0:	9401      	str	r4, [sp, #4]
 80011d2:	2400      	movs	r4, #0
 80011d4:	5d28      	ldrb	r0, [r5, r4]
 80011d6:	2800      	cmp	r0, #0
 80011d8:	d039      	beq.n	800124e <printf_+0x8e>
 80011da:	2825      	cmp	r0, #37	; 0x25
 80011dc:	d003      	beq.n	80011e6 <printf_+0x26>
 80011de:	f7ff ff75 	bl	80010cc <putc_>
 80011e2:	3401      	adds	r4, #1
 80011e4:	e7f6      	b.n	80011d4 <printf_+0x14>
 80011e6:	192b      	adds	r3, r5, r4
 80011e8:	7858      	ldrb	r0, [r3, #1]
 80011ea:	2869      	cmp	r0, #105	; 0x69
 80011ec:	d016      	beq.n	800121c <printf_+0x5c>
 80011ee:	d808      	bhi.n	8001202 <printf_+0x42>
 80011f0:	2825      	cmp	r0, #37	; 0x25
 80011f2:	d028      	beq.n	8001246 <printf_+0x86>
 80011f4:	2863      	cmp	r0, #99	; 0x63
 80011f6:	d128      	bne.n	800124a <printf_+0x8a>
 80011f8:	9b01      	ldr	r3, [sp, #4]
 80011fa:	1d1a      	adds	r2, r3, #4
 80011fc:	9201      	str	r2, [sp, #4]
 80011fe:	7818      	ldrb	r0, [r3, #0]
 8001200:	e021      	b.n	8001246 <printf_+0x86>
 8001202:	2875      	cmp	r0, #117	; 0x75
 8001204:	d011      	beq.n	800122a <printf_+0x6a>
 8001206:	2878      	cmp	r0, #120	; 0x78
 8001208:	d016      	beq.n	8001238 <printf_+0x78>
 800120a:	2873      	cmp	r0, #115	; 0x73
 800120c:	d11d      	bne.n	800124a <printf_+0x8a>
 800120e:	9b01      	ldr	r3, [sp, #4]
 8001210:	1d1a      	adds	r2, r3, #4
 8001212:	6818      	ldr	r0, [r3, #0]
 8001214:	9201      	str	r2, [sp, #4]
 8001216:	f7ff ff69 	bl	80010ec <puts_>
 800121a:	e016      	b.n	800124a <printf_+0x8a>
 800121c:	9b01      	ldr	r3, [sp, #4]
 800121e:	1d1a      	adds	r2, r3, #4
 8001220:	6818      	ldr	r0, [r3, #0]
 8001222:	9201      	str	r2, [sp, #4]
 8001224:	f7ff ff76 	bl	8001114 <puti_>
 8001228:	e00f      	b.n	800124a <printf_+0x8a>
 800122a:	9b01      	ldr	r3, [sp, #4]
 800122c:	1d1a      	adds	r2, r3, #4
 800122e:	6818      	ldr	r0, [r3, #0]
 8001230:	9201      	str	r2, [sp, #4]
 8001232:	f7ff ff94 	bl	800115e <putui_>
 8001236:	e008      	b.n	800124a <printf_+0x8a>
 8001238:	9b01      	ldr	r3, [sp, #4]
 800123a:	1d1a      	adds	r2, r3, #4
 800123c:	6818      	ldr	r0, [r3, #0]
 800123e:	9201      	str	r2, [sp, #4]
 8001240:	f7ff ffa4 	bl	800118c <putx_>
 8001244:	e001      	b.n	800124a <printf_+0x8a>
 8001246:	f7ff ff41 	bl	80010cc <putc_>
 800124a:	3402      	adds	r4, #2
 800124c:	e7c2      	b.n	80011d4 <printf_+0x14>
 800124e:	4804      	ldr	r0, [pc, #16]	; (8001260 <printf_+0xa0>)
 8001250:	f000 f87d 	bl	800134e <mutex_unlock>
 8001254:	b003      	add	sp, #12
 8001256:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
 800125a:	b004      	add	sp, #16
 800125c:	4770      	bx	lr
 800125e:	bf00      	nop
 8001260:	20000b78 	.word	0x20000b78

08001264 <stdio_init>:
 8001264:	b510      	push	{r4, lr}
 8001266:	480e      	ldr	r0, [pc, #56]	; (80012a0 <stdio_init+0x3c>)
 8001268:	f000 f84b 	bl	8001302 <mutex_init>
 800126c:	480d      	ldr	r0, [pc, #52]	; (80012a4 <stdio_init+0x40>)
 800126e:	f000 f848 	bl	8001302 <mutex_init>
 8001272:	480d      	ldr	r0, [pc, #52]	; (80012a8 <stdio_init+0x44>)
 8001274:	f000 f845 	bl	8001302 <mutex_init>
 8001278:	480c      	ldr	r0, [pc, #48]	; (80012ac <stdio_init+0x48>)
 800127a:	f000 f842 	bl	8001302 <mutex_init>
 800127e:	2408      	movs	r4, #8
 8001280:	2020      	movs	r0, #32
 8001282:	f7ff ff23 	bl	80010cc <putc_>
 8001286:	3c01      	subs	r4, #1
 8001288:	d1fa      	bne.n	8001280 <stdio_init+0x1c>
 800128a:	2420      	movs	r4, #32
 800128c:	200a      	movs	r0, #10
 800128e:	f7ff ff1d 	bl	80010cc <putc_>
 8001292:	3c01      	subs	r4, #1
 8001294:	d1fa      	bne.n	800128c <stdio_init+0x28>
 8001296:	4806      	ldr	r0, [pc, #24]	; (80012b0 <stdio_init+0x4c>)
 8001298:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800129c:	f7ff bf90 	b.w	80011c0 <printf_>
 80012a0:	20000b70 	.word	0x20000b70
 80012a4:	20000b74 	.word	0x20000b74
 80012a8:	20000b7c 	.word	0x20000b7c
 80012ac:	20000b78 	.word	0x20000b78
 80012b0:	080045e2 	.word	0x080045e2

080012b4 <mem_init>:
 80012b4:	4b06      	ldr	r3, [pc, #24]	; (80012d0 <mem_init+0x1c>)
 80012b6:	4a07      	ldr	r2, [pc, #28]	; (80012d4 <mem_init+0x20>)
 80012b8:	601a      	str	r2, [r3, #0]
 80012ba:	4907      	ldr	r1, [pc, #28]	; (80012d8 <mem_init+0x24>)
 80012bc:	4b07      	ldr	r3, [pc, #28]	; (80012dc <mem_init+0x28>)
 80012be:	4808      	ldr	r0, [pc, #32]	; (80012e0 <mem_init+0x2c>)
 80012c0:	1a5b      	subs	r3, r3, r1
 80012c2:	4908      	ldr	r1, [pc, #32]	; (80012e4 <mem_init+0x30>)
 80012c4:	4413      	add	r3, r2
 80012c6:	600b      	str	r3, [r1, #0]
 80012c8:	4b07      	ldr	r3, [pc, #28]	; (80012e8 <mem_init+0x34>)
 80012ca:	601a      	str	r2, [r3, #0]
 80012cc:	f000 b819 	b.w	8001302 <mutex_init>
 80012d0:	20000b80 	.word	0x20000b80
 80012d4:	20001048 	.word	0x20001048
 80012d8:	20001048 	.word	0x20001048
 80012dc:	20004000 	.word	0x20004000
 80012e0:	20000b8c 	.word	0x20000b8c
 80012e4:	20000b88 	.word	0x20000b88
 80012e8:	20000b84 	.word	0x20000b84

080012ec <lib_os_init>:
 80012ec:	b508      	push	{r3, lr}
 80012ee:	f7ff fe7f 	bl	8000ff0 <kernel_init>
 80012f2:	f7ff ffdf 	bl	80012b4 <mem_init>
 80012f6:	f7ff fecf 	bl	8001098 <messages_init>
 80012fa:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80012fe:	f7ff bfb1 	b.w	8001264 <stdio_init>

08001302 <mutex_init>:
 8001302:	b510      	push	{r4, lr}
 8001304:	4604      	mov	r4, r0
 8001306:	f7ff fe1c 	bl	8000f42 <sched_off>
 800130a:	2300      	movs	r3, #0
 800130c:	6023      	str	r3, [r4, #0]
 800130e:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8001312:	f7ff be18 	b.w	8000f46 <sched_on>

08001316 <mutex_lock>:
 8001316:	b513      	push	{r0, r1, r4, lr}
 8001318:	4604      	mov	r4, r0
 800131a:	f7ff fe12 	bl	8000f42 <sched_off>
 800131e:	6823      	ldr	r3, [r4, #0]
 8001320:	9301      	str	r3, [sp, #4]
 8001322:	f7ff fe10 	bl	8000f46 <sched_on>
 8001326:	9b01      	ldr	r3, [sp, #4]
 8001328:	b10b      	cbz	r3, 800132e <mutex_lock+0x18>
 800132a:	f7ff fe83 	bl	8001034 <set_wait_state>
 800132e:	9b01      	ldr	r3, [sp, #4]
 8001330:	2b00      	cmp	r3, #0
 8001332:	d1f2      	bne.n	800131a <mutex_lock+0x4>
 8001334:	f7ff fe05 	bl	8000f42 <sched_off>
 8001338:	6823      	ldr	r3, [r4, #0]
 800133a:	9301      	str	r3, [sp, #4]
 800133c:	9b01      	ldr	r3, [sp, #4]
 800133e:	2b00      	cmp	r3, #0
 8001340:	d1eb      	bne.n	800131a <mutex_lock+0x4>
 8001342:	2301      	movs	r3, #1
 8001344:	6023      	str	r3, [r4, #0]
 8001346:	f7ff fdfe 	bl	8000f46 <sched_on>
 800134a:	b002      	add	sp, #8
 800134c:	bd10      	pop	{r4, pc}

0800134e <mutex_unlock>:
 800134e:	b508      	push	{r3, lr}
 8001350:	f7ff ffd7 	bl	8001302 <mutex_init>
 8001354:	f7ff fe8e 	bl	8001074 <wake_up_threads>
 8001358:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800135c:	f7ff bdf5 	b.w	8000f4a <yield>

08001360 <m_abs>:
 8001360:	ee07 0a90 	vmov	s15, r0
 8001364:	eef5 7ac0 	vcmpe.f32	s15, #0.0
 8001368:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800136c:	bf48      	it	mi
 800136e:	eef1 7a67 	vnegmi.f32	s15, s15
 8001372:	ee17 0a90 	vmov	r0, s15
 8001376:	4770      	bx	lr

08001378 <m_saturate>:
 8001378:	ee07 0a90 	vmov	s15, r0
 800137c:	ee06 1a90 	vmov	s13, r1
 8001380:	eef4 7a66 	vcmp.f32	s15, s13
 8001384:	ee07 2a10 	vmov	s14, r2
 8001388:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800138c:	bf48      	it	mi
 800138e:	eef0 7a66 	vmovmi.f32	s15, s13
 8001392:	eef4 7a47 	vcmp.f32	s15, s14
 8001396:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800139a:	bfcc      	ite	gt
 800139c:	ee17 0a10 	vmovgt	r0, s14
 80013a0:	ee17 0a90 	vmovle	r0, s15
 80013a4:	4770      	bx	lr

080013a6 <m_min>:
 80013a6:	ee07 0a10 	vmov	s14, r0
 80013aa:	ee07 1a90 	vmov	s15, r1
 80013ae:	eeb4 7ae7 	vcmpe.f32	s14, s15
 80013b2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80013b6:	bf54      	ite	pl
 80013b8:	ee17 0a90 	vmovpl	r0, s15
 80013bc:	ee17 0a10 	vmovmi	r0, s14
 80013c0:	4770      	bx	lr
	...

080013c4 <pid_init>:
 80013c4:	ee07 2a90 	vmov	s15, r2
 80013c8:	ee06 3a10 	vmov	s12, r3
 80013cc:	ed9d 7a00 	vldr	s14, [sp]
 80013d0:	eddd 6a01 	vldr	s13, [sp, #4]
 80013d4:	6241      	str	r1, [r0, #36]	; 0x24
 80013d6:	ee37 6a86 	vadd.f32	s12, s15, s12
 80013da:	ee77 5a07 	vadd.f32	s11, s14, s14
 80013de:	ee36 6a07 	vadd.f32	s12, s12, s14
 80013e2:	eef1 7a67 	vneg.f32	s15, s15
 80013e6:	ee36 6a26 	vadd.f32	s12, s12, s13
 80013ea:	ee77 7ae5 	vsub.f32	s15, s15, s11
 80013ee:	ed80 6a04 	vstr	s12, [r0, #16]
 80013f2:	ed9f 6a0b 	vldr	s12, [pc, #44]	; 8001420 <pid_init+0x5c>
 80013f6:	ee26 6a86 	vmul.f32	s12, s13, s12
 80013fa:	2200      	movs	r2, #0
 80013fc:	ee77 7ac6 	vsub.f32	s15, s15, s12
 8001400:	ee37 7a06 	vadd.f32	s14, s14, s12
 8001404:	eef1 6a66 	vneg.f32	s13, s13
 8001408:	6002      	str	r2, [r0, #0]
 800140a:	6042      	str	r2, [r0, #4]
 800140c:	6082      	str	r2, [r0, #8]
 800140e:	60c2      	str	r2, [r0, #12]
 8001410:	edc0 7a05 	vstr	s15, [r0, #20]
 8001414:	ed80 7a06 	vstr	s14, [r0, #24]
 8001418:	edc0 6a07 	vstr	s13, [r0, #28]
 800141c:	6202      	str	r2, [r0, #32]
 800141e:	4770      	bx	lr
 8001420:	40400000 	.word	0x40400000

08001424 <pid_process>:
 8001424:	edd0 7a08 	vldr	s15, [r0, #32]
 8001428:	ed90 5a04 	vldr	s10, [r0, #16]
 800142c:	ed90 6a00 	vldr	s12, [r0]
 8001430:	edd0 6a01 	vldr	s13, [r0, #4]
 8001434:	ed80 6a01 	vstr	s12, [r0, #4]
 8001438:	ee05 1a90 	vmov	s11, r1
 800143c:	ee45 7a85 	vmla.f32	s15, s11, s10
 8001440:	6001      	str	r1, [r0, #0]
 8001442:	edd0 5a05 	vldr	s11, [r0, #20]
 8001446:	ed90 7a02 	vldr	s14, [r0, #8]
 800144a:	edc0 6a02 	vstr	s13, [r0, #8]
 800144e:	ee46 7a25 	vmla.f32	s15, s12, s11
 8001452:	ed90 6a06 	vldr	s12, [r0, #24]
 8001456:	ed80 7a03 	vstr	s14, [r0, #12]
 800145a:	ee46 7a86 	vmla.f32	s15, s13, s12
 800145e:	edd0 6a07 	vldr	s13, [r0, #28]
 8001462:	ee47 7a26 	vmla.f32	s15, s14, s13
 8001466:	ed90 7a09 	vldr	s14, [r0, #36]	; 0x24
 800146a:	edc0 7a08 	vstr	s15, [r0, #32]
 800146e:	eef4 7ac7 	vcmpe.f32	s15, s14
 8001472:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001476:	bfc8      	it	gt
 8001478:	ed80 7a08 	vstrgt	s14, [r0, #32]
 800147c:	edd0 7a08 	vldr	s15, [r0, #32]
 8001480:	eeb1 7a47 	vneg.f32	s14, s14
 8001484:	eef4 7ac7 	vcmpe.f32	s15, s14
 8001488:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800148c:	bf48      	it	mi
 800148e:	ed80 7a08 	vstrmi	s14, [r0, #32]
 8001492:	6a00      	ldr	r0, [r0, #32]
 8001494:	4770      	bx	lr
	...

08001498 <TIM2_IRQHandler>:
 8001498:	4a21      	ldr	r2, [pc, #132]	; (8001520 <TIM2_IRQHandler+0x88>)
 800149a:	4922      	ldr	r1, [pc, #136]	; (8001524 <TIM2_IRQHandler+0x8c>)
 800149c:	6813      	ldr	r3, [r2, #0]
 800149e:	2b01      	cmp	r3, #1
 80014a0:	b510      	push	{r4, lr}
 80014a2:	d011      	beq.n	80014c8 <TIM2_IRQHandler+0x30>
 80014a4:	d306      	bcc.n	80014b4 <TIM2_IRQHandler+0x1c>
 80014a6:	2b02      	cmp	r3, #2
 80014a8:	d113      	bne.n	80014d2 <TIM2_IRQHandler+0x3a>
 80014aa:	f44f 6380 	mov.w	r3, #1024	; 0x400
 80014ae:	850b      	strh	r3, [r1, #40]	; 0x28
 80014b0:	2304      	movs	r3, #4
 80014b2:	e023      	b.n	80014fc <TIM2_IRQHandler+0x64>
 80014b4:	f44f 7380 	mov.w	r3, #256	; 0x100
 80014b8:	850b      	strh	r3, [r1, #40]	; 0x28
 80014ba:	f44f 6380 	mov.w	r3, #1024	; 0x400
 80014be:	618b      	str	r3, [r1, #24]
 80014c0:	2301      	movs	r3, #1
 80014c2:	6013      	str	r3, [r2, #0]
 80014c4:	6093      	str	r3, [r2, #8]
 80014c6:	e023      	b.n	8001510 <TIM2_IRQHandler+0x78>
 80014c8:	f44f 7380 	mov.w	r3, #256	; 0x100
 80014cc:	618b      	str	r3, [r1, #24]
 80014ce:	2302      	movs	r3, #2
 80014d0:	e014      	b.n	80014fc <TIM2_IRQHandler+0x64>
 80014d2:	f013 0f01 	tst.w	r3, #1
 80014d6:	4814      	ldr	r0, [pc, #80]	; (8001528 <TIM2_IRQHandler+0x90>)
 80014d8:	f103 0401 	add.w	r4, r3, #1
 80014dc:	d010      	beq.n	8001500 <TIM2_IRQHandler+0x68>
 80014de:	3b04      	subs	r3, #4
 80014e0:	f023 0301 	bic.w	r3, r3, #1
 80014e4:	4413      	add	r3, r2
 80014e6:	6c00      	ldr	r0, [r0, #64]	; 0x40
 80014e8:	8298      	strh	r0, [r3, #20]
 80014ea:	f5b4 7f82 	cmp.w	r4, #260	; 0x104
 80014ee:	f44f 7380 	mov.w	r3, #256	; 0x100
 80014f2:	850b      	strh	r3, [r1, #40]	; 0x28
 80014f4:	d201      	bcs.n	80014fa <TIM2_IRQHandler+0x62>
 80014f6:	6014      	str	r4, [r2, #0]
 80014f8:	e00a      	b.n	8001510 <TIM2_IRQHandler+0x78>
 80014fa:	2300      	movs	r3, #0
 80014fc:	6013      	str	r3, [r2, #0]
 80014fe:	e007      	b.n	8001510 <TIM2_IRQHandler+0x78>
 8001500:	f44f 7380 	mov.w	r3, #256	; 0x100
 8001504:	618b      	str	r3, [r1, #24]
 8001506:	6883      	ldr	r3, [r0, #8]
 8001508:	6014      	str	r4, [r2, #0]
 800150a:	f043 0304 	orr.w	r3, r3, #4
 800150e:	6083      	str	r3, [r0, #8]
 8001510:	f04f 4080 	mov.w	r0, #1073741824	; 0x40000000
 8001514:	2101      	movs	r1, #1
 8001516:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800151a:	f000 bd1e 	b.w	8001f5a <TIM_ClearITPendingBit>
 800151e:	bf00      	nop
 8001520:	20000b90 	.word	0x20000b90
 8001524:	48000400 	.word	0x48000400
 8001528:	50000500 	.word	0x50000500

0800152c <rgb_i2c_delay>:
 800152c:	bf00      	nop
 800152e:	bf00      	nop
 8001530:	bf00      	nop
 8001532:	bf00      	nop
 8001534:	4770      	bx	lr
	...

08001538 <RGBSetLowSDA>:
 8001538:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 800153a:	4f15      	ldr	r7, [pc, #84]	; (8001590 <RGBSetLowSDA+0x58>)
 800153c:	2401      	movs	r4, #1
 800153e:	783b      	ldrb	r3, [r7, #0]
 8001540:	9300      	str	r3, [sp, #0]
 8001542:	2603      	movs	r6, #3
 8001544:	2500      	movs	r5, #0
 8001546:	4669      	mov	r1, sp
 8001548:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 800154c:	f88d 5007 	strb.w	r5, [sp, #7]
 8001550:	f88d 4004 	strb.w	r4, [sp, #4]
 8001554:	f88d 6005 	strb.w	r6, [sp, #5]
 8001558:	f88d 4006 	strb.w	r4, [sp, #6]
 800155c:	f001 f9f9 	bl	8002952 <GPIO_Init>
 8001560:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8001564:	783a      	ldrb	r2, [r7, #0]
 8001566:	851a      	strh	r2, [r3, #40]	; 0x28
 8001568:	f88d 5007 	strb.w	r5, [sp, #7]
 800156c:	4d09      	ldr	r5, [pc, #36]	; (8001594 <RGBSetLowSDA+0x5c>)
 800156e:	9400      	str	r4, [sp, #0]
 8001570:	4628      	mov	r0, r5
 8001572:	4669      	mov	r1, sp
 8001574:	f88d 4004 	strb.w	r4, [sp, #4]
 8001578:	f88d 6005 	strb.w	r6, [sp, #5]
 800157c:	f88d 4006 	strb.w	r4, [sp, #6]
 8001580:	f001 f9e7 	bl	8002952 <GPIO_Init>
 8001584:	852c      	strh	r4, [r5, #40]	; 0x28
 8001586:	f7ff ffd1 	bl	800152c <rgb_i2c_delay>
 800158a:	b003      	add	sp, #12
 800158c:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800158e:	bf00      	nop
 8001590:	20000dfe 	.word	0x20000dfe
 8001594:	48000400 	.word	0x48000400

08001598 <RGBSetHighSDA>:
 8001598:	b573      	push	{r0, r1, r4, r5, r6, lr}
 800159a:	4d13      	ldr	r5, [pc, #76]	; (80015e8 <RGBSetHighSDA+0x50>)
 800159c:	2400      	movs	r4, #0
 800159e:	782b      	ldrb	r3, [r5, #0]
 80015a0:	9300      	str	r3, [sp, #0]
 80015a2:	2603      	movs	r6, #3
 80015a4:	4669      	mov	r1, sp
 80015a6:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80015aa:	f88d 4004 	strb.w	r4, [sp, #4]
 80015ae:	f88d 4007 	strb.w	r4, [sp, #7]
 80015b2:	f88d 6005 	strb.w	r6, [sp, #5]
 80015b6:	f001 f9cc 	bl	8002952 <GPIO_Init>
 80015ba:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 80015be:	782a      	ldrb	r2, [r5, #0]
 80015c0:	619a      	str	r2, [r3, #24]
 80015c2:	f88d 4004 	strb.w	r4, [sp, #4]
 80015c6:	f88d 4007 	strb.w	r4, [sp, #7]
 80015ca:	4c08      	ldr	r4, [pc, #32]	; (80015ec <RGBSetHighSDA+0x54>)
 80015cc:	f88d 6005 	strb.w	r6, [sp, #5]
 80015d0:	2501      	movs	r5, #1
 80015d2:	4620      	mov	r0, r4
 80015d4:	4669      	mov	r1, sp
 80015d6:	9500      	str	r5, [sp, #0]
 80015d8:	f001 f9bb 	bl	8002952 <GPIO_Init>
 80015dc:	61a5      	str	r5, [r4, #24]
 80015de:	f7ff ffa5 	bl	800152c <rgb_i2c_delay>
 80015e2:	b002      	add	sp, #8
 80015e4:	bd70      	pop	{r4, r5, r6, pc}
 80015e6:	bf00      	nop
 80015e8:	20000dfe 	.word	0x20000dfe
 80015ec:	48000400 	.word	0x48000400

080015f0 <RGBSetLowSCL>:
 80015f0:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 80015f4:	f44f 7280 	mov.w	r2, #256	; 0x100
 80015f8:	851a      	strh	r2, [r3, #40]	; 0x28
 80015fa:	f7ff bf97 	b.w	800152c <rgb_i2c_delay>

080015fe <RGBSetHighSCL>:
 80015fe:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8001602:	f44f 7280 	mov.w	r2, #256	; 0x100
 8001606:	619a      	str	r2, [r3, #24]
 8001608:	f7ff bf90 	b.w	800152c <rgb_i2c_delay>

0800160c <rgb_i2c_init>:
 800160c:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 800160e:	4f1f      	ldr	r7, [pc, #124]	; (800168c <rgb_i2c_init+0x80>)
 8001610:	2400      	movs	r4, #0
 8001612:	2501      	movs	r5, #1
 8001614:	2603      	movs	r6, #3
 8001616:	f44f 7380 	mov.w	r3, #256	; 0x100
 800161a:	4669      	mov	r1, sp
 800161c:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8001620:	9300      	str	r3, [sp, #0]
 8001622:	f88d 4006 	strb.w	r4, [sp, #6]
 8001626:	f88d 4007 	strb.w	r4, [sp, #7]
 800162a:	f88d 5004 	strb.w	r5, [sp, #4]
 800162e:	f88d 6005 	strb.w	r6, [sp, #5]
 8001632:	f001 f98e 	bl	8002952 <GPIO_Init>
 8001636:	783b      	ldrb	r3, [r7, #0]
 8001638:	9300      	str	r3, [sp, #0]
 800163a:	4669      	mov	r1, sp
 800163c:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8001640:	f88d 4004 	strb.w	r4, [sp, #4]
 8001644:	f88d 4007 	strb.w	r4, [sp, #7]
 8001648:	f88d 6005 	strb.w	r6, [sp, #5]
 800164c:	f001 f981 	bl	8002952 <GPIO_Init>
 8001650:	7839      	ldrb	r1, [r7, #0]
 8001652:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8001656:	f001 f9be 	bl	80029d6 <GPIO_SetBits>
 800165a:	f88d 4004 	strb.w	r4, [sp, #4]
 800165e:	f88d 4007 	strb.w	r4, [sp, #7]
 8001662:	4c0b      	ldr	r4, [pc, #44]	; (8001690 <rgb_i2c_init+0x84>)
 8001664:	9500      	str	r5, [sp, #0]
 8001666:	4620      	mov	r0, r4
 8001668:	4669      	mov	r1, sp
 800166a:	f88d 6005 	strb.w	r6, [sp, #5]
 800166e:	f001 f970 	bl	8002952 <GPIO_Init>
 8001672:	4620      	mov	r0, r4
 8001674:	4629      	mov	r1, r5
 8001676:	f001 f9ae 	bl	80029d6 <GPIO_SetBits>
 800167a:	f7ff ffc0 	bl	80015fe <RGBSetHighSCL>
 800167e:	f7ff ff5b 	bl	8001538 <RGBSetLowSDA>
 8001682:	f7ff ff89 	bl	8001598 <RGBSetHighSDA>
 8001686:	b003      	add	sp, #12
 8001688:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800168a:	bf00      	nop
 800168c:	20000dfe 	.word	0x20000dfe
 8001690:	48000400 	.word	0x48000400

08001694 <rgb_i2cStart>:
 8001694:	b508      	push	{r3, lr}
 8001696:	f7ff ffb2 	bl	80015fe <RGBSetHighSCL>
 800169a:	f7ff ff7d 	bl	8001598 <RGBSetHighSDA>
 800169e:	f7ff ffae 	bl	80015fe <RGBSetHighSCL>
 80016a2:	f7ff ff49 	bl	8001538 <RGBSetLowSDA>
 80016a6:	f7ff ffa3 	bl	80015f0 <RGBSetLowSCL>
 80016aa:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80016ae:	f7ff bf73 	b.w	8001598 <RGBSetHighSDA>

080016b2 <rgb_i2cStop>:
 80016b2:	b508      	push	{r3, lr}
 80016b4:	f7ff ff9c 	bl	80015f0 <RGBSetLowSCL>
 80016b8:	f7ff ff3e 	bl	8001538 <RGBSetLowSDA>
 80016bc:	f7ff ff9f 	bl	80015fe <RGBSetHighSCL>
 80016c0:	f7ff ff3a 	bl	8001538 <RGBSetLowSDA>
 80016c4:	f7ff ff9b 	bl	80015fe <RGBSetHighSCL>
 80016c8:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80016cc:	f7ff bf64 	b.w	8001598 <RGBSetHighSDA>

080016d0 <rgb_i2cWrite>:
 80016d0:	b538      	push	{r3, r4, r5, lr}
 80016d2:	4605      	mov	r5, r0
 80016d4:	2408      	movs	r4, #8
 80016d6:	f7ff ff8b 	bl	80015f0 <RGBSetLowSCL>
 80016da:	062b      	lsls	r3, r5, #24
 80016dc:	d502      	bpl.n	80016e4 <rgb_i2cWrite+0x14>
 80016de:	f7ff ff5b 	bl	8001598 <RGBSetHighSDA>
 80016e2:	e001      	b.n	80016e8 <rgb_i2cWrite+0x18>
 80016e4:	f7ff ff28 	bl	8001538 <RGBSetLowSDA>
 80016e8:	3c01      	subs	r4, #1
 80016ea:	f7ff ff88 	bl	80015fe <RGBSetHighSCL>
 80016ee:	006d      	lsls	r5, r5, #1
 80016f0:	f014 04ff 	ands.w	r4, r4, #255	; 0xff
 80016f4:	b2ed      	uxtb	r5, r5
 80016f6:	d1ee      	bne.n	80016d6 <rgb_i2cWrite+0x6>
 80016f8:	f7ff ff7a 	bl	80015f0 <RGBSetLowSCL>
 80016fc:	f7ff ff4c 	bl	8001598 <RGBSetHighSDA>
 8001700:	f7ff ff7d 	bl	80015fe <RGBSetHighSCL>
 8001704:	f7ff ff74 	bl	80015f0 <RGBSetLowSCL>
 8001708:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 800170c:	f7ff bf0e 	b.w	800152c <rgb_i2c_delay>

08001710 <rgb_i2cRead>:
 8001710:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8001714:	1e4e      	subs	r6, r1, #1
 8001716:	4680      	mov	r8, r0
 8001718:	460c      	mov	r4, r1
 800171a:	f101 0708 	add.w	r7, r1, #8
 800171e:	4633      	mov	r3, r6
 8001720:	2200      	movs	r2, #0
 8001722:	f803 2f01 	strb.w	r2, [r3, #1]!
 8001726:	42bb      	cmp	r3, r7
 8001728:	d1fa      	bne.n	8001720 <rgb_i2cRead+0x10>
 800172a:	f7ff ff61 	bl	80015f0 <RGBSetLowSCL>
 800172e:	f7ff ff33 	bl	8001598 <RGBSetHighSDA>
 8001732:	2508      	movs	r5, #8
 8001734:	4633      	mov	r3, r6
 8001736:	f813 2f01 	ldrb.w	r2, [r3, #1]!
 800173a:	0052      	lsls	r2, r2, #1
 800173c:	42bb      	cmp	r3, r7
 800173e:	701a      	strb	r2, [r3, #0]
 8001740:	d1f9      	bne.n	8001736 <rgb_i2cRead+0x26>
 8001742:	f7ff ff5c 	bl	80015fe <RGBSetHighSCL>
 8001746:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 800174a:	8a1b      	ldrh	r3, [r3, #16]
 800174c:	b29b      	uxth	r3, r3
 800174e:	07d9      	lsls	r1, r3, #31
 8001750:	bf42      	ittt	mi
 8001752:	7822      	ldrbmi	r2, [r4, #0]
 8001754:	f042 0201 	orrmi.w	r2, r2, #1
 8001758:	7022      	strbmi	r2, [r4, #0]
 800175a:	079a      	lsls	r2, r3, #30
 800175c:	bf42      	ittt	mi
 800175e:	7862      	ldrbmi	r2, [r4, #1]
 8001760:	f042 0201 	orrmi.w	r2, r2, #1
 8001764:	7062      	strbmi	r2, [r4, #1]
 8001766:	0758      	lsls	r0, r3, #29
 8001768:	bf42      	ittt	mi
 800176a:	78a2      	ldrbmi	r2, [r4, #2]
 800176c:	f042 0201 	orrmi.w	r2, r2, #1
 8001770:	70a2      	strbmi	r2, [r4, #2]
 8001772:	0719      	lsls	r1, r3, #28
 8001774:	bf42      	ittt	mi
 8001776:	78e2      	ldrbmi	r2, [r4, #3]
 8001778:	f042 0201 	orrmi.w	r2, r2, #1
 800177c:	70e2      	strbmi	r2, [r4, #3]
 800177e:	06da      	lsls	r2, r3, #27
 8001780:	bf42      	ittt	mi
 8001782:	7922      	ldrbmi	r2, [r4, #4]
 8001784:	f042 0201 	orrmi.w	r2, r2, #1
 8001788:	7122      	strbmi	r2, [r4, #4]
 800178a:	0698      	lsls	r0, r3, #26
 800178c:	bf42      	ittt	mi
 800178e:	7962      	ldrbmi	r2, [r4, #5]
 8001790:	f042 0201 	orrmi.w	r2, r2, #1
 8001794:	7162      	strbmi	r2, [r4, #5]
 8001796:	0659      	lsls	r1, r3, #25
 8001798:	bf42      	ittt	mi
 800179a:	79a2      	ldrbmi	r2, [r4, #6]
 800179c:	f042 0201 	orrmi.w	r2, r2, #1
 80017a0:	71a2      	strbmi	r2, [r4, #6]
 80017a2:	061a      	lsls	r2, r3, #24
 80017a4:	bf42      	ittt	mi
 80017a6:	79e3      	ldrbmi	r3, [r4, #7]
 80017a8:	f043 0301 	orrmi.w	r3, r3, #1
 80017ac:	71e3      	strbmi	r3, [r4, #7]
 80017ae:	4b0c      	ldr	r3, [pc, #48]	; (80017e0 <rgb_i2cRead+0xd0>)
 80017b0:	8a1b      	ldrh	r3, [r3, #16]
 80017b2:	07db      	lsls	r3, r3, #31
 80017b4:	bf42      	ittt	mi
 80017b6:	7a23      	ldrbmi	r3, [r4, #8]
 80017b8:	f043 0301 	orrmi.w	r3, r3, #1
 80017bc:	7223      	strbmi	r3, [r4, #8]
 80017be:	f7ff ff17 	bl	80015f0 <RGBSetLowSCL>
 80017c2:	3d01      	subs	r5, #1
 80017c4:	d1b6      	bne.n	8001734 <rgb_i2cRead+0x24>
 80017c6:	f1b8 0f00 	cmp.w	r8, #0
 80017ca:	d001      	beq.n	80017d0 <rgb_i2cRead+0xc0>
 80017cc:	f7ff feb4 	bl	8001538 <RGBSetLowSDA>
 80017d0:	f7ff ff15 	bl	80015fe <RGBSetHighSCL>
 80017d4:	f7ff ff0c 	bl	80015f0 <RGBSetLowSCL>
 80017d8:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 80017dc:	f7ff bea6 	b.w	800152c <rgb_i2c_delay>
 80017e0:	48000400 	.word	0x48000400

080017e4 <rgb_i2c_write_reg>:
 80017e4:	b570      	push	{r4, r5, r6, lr}
 80017e6:	4606      	mov	r6, r0
 80017e8:	460d      	mov	r5, r1
 80017ea:	4614      	mov	r4, r2
 80017ec:	f7ff ff52 	bl	8001694 <rgb_i2cStart>
 80017f0:	4630      	mov	r0, r6
 80017f2:	f7ff ff6d 	bl	80016d0 <rgb_i2cWrite>
 80017f6:	4628      	mov	r0, r5
 80017f8:	f7ff ff6a 	bl	80016d0 <rgb_i2cWrite>
 80017fc:	4620      	mov	r0, r4
 80017fe:	f7ff ff67 	bl	80016d0 <rgb_i2cWrite>
 8001802:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8001806:	f7ff bf54 	b.w	80016b2 <rgb_i2cStop>

0800180a <rgb_i2c_read_reg>:
 800180a:	b570      	push	{r4, r5, r6, lr}
 800180c:	4604      	mov	r4, r0
 800180e:	460e      	mov	r6, r1
 8001810:	4615      	mov	r5, r2
 8001812:	f7ff ff3f 	bl	8001694 <rgb_i2cStart>
 8001816:	4620      	mov	r0, r4
 8001818:	f7ff ff5a 	bl	80016d0 <rgb_i2cWrite>
 800181c:	4630      	mov	r0, r6
 800181e:	f7ff ff57 	bl	80016d0 <rgb_i2cWrite>
 8001822:	f7ff ff37 	bl	8001694 <rgb_i2cStart>
 8001826:	f044 0001 	orr.w	r0, r4, #1
 800182a:	f7ff ff51 	bl	80016d0 <rgb_i2cWrite>
 800182e:	4629      	mov	r1, r5
 8001830:	2000      	movs	r0, #0
 8001832:	f7ff ff6d 	bl	8001710 <rgb_i2cRead>
 8001836:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 800183a:	f7ff bf3a 	b.w	80016b2 <rgb_i2cStop>
	...

08001840 <rgb_init>:
 8001840:	b570      	push	{r4, r5, r6, lr}
 8001842:	4b1e      	ldr	r3, [pc, #120]	; (80018bc <rgb_init+0x7c>)
 8001844:	2200      	movs	r2, #0
 8001846:	3201      	adds	r2, #1
 8001848:	2400      	movs	r4, #0
 800184a:	2a09      	cmp	r2, #9
 800184c:	801c      	strh	r4, [r3, #0]
 800184e:	825c      	strh	r4, [r3, #18]
 8001850:	849c      	strh	r4, [r3, #36]	; 0x24
 8001852:	f8a3 4048 	strh.w	r4, [r3, #72]	; 0x48
 8001856:	86dc      	strh	r4, [r3, #54]	; 0x36
 8001858:	f103 0302 	add.w	r3, r3, #2
 800185c:	d1f3      	bne.n	8001846 <rgb_init+0x6>
 800185e:	4d18      	ldr	r5, [pc, #96]	; (80018c0 <rgb_init+0x80>)
 8001860:	f64f 76ff 	movw	r6, #65535	; 0xffff
 8001864:	802e      	strh	r6, [r5, #0]
 8001866:	f7ff fed1 	bl	800160c <rgb_i2c_init>
 800186a:	2072      	movs	r0, #114	; 0x72
 800186c:	2181      	movs	r1, #129	; 0x81
 800186e:	22ff      	movs	r2, #255	; 0xff
 8001870:	f7ff ffb8 	bl	80017e4 <rgb_i2c_write_reg>
 8001874:	2072      	movs	r0, #114	; 0x72
 8001876:	2183      	movs	r1, #131	; 0x83
 8001878:	22ff      	movs	r2, #255	; 0xff
 800187a:	f7ff ffb3 	bl	80017e4 <rgb_i2c_write_reg>
 800187e:	2072      	movs	r0, #114	; 0x72
 8001880:	218d      	movs	r1, #141	; 0x8d
 8001882:	4622      	mov	r2, r4
 8001884:	f7ff ffae 	bl	80017e4 <rgb_i2c_write_reg>
 8001888:	2072      	movs	r0, #114	; 0x72
 800188a:	2180      	movs	r1, #128	; 0x80
 800188c:	2203      	movs	r2, #3
 800188e:	f7ff ffa9 	bl	80017e4 <rgb_i2c_write_reg>
 8001892:	2072      	movs	r0, #114	; 0x72
 8001894:	218f      	movs	r1, #143	; 0x8f
 8001896:	2223      	movs	r2, #35	; 0x23
 8001898:	f7ff ffa4 	bl	80017e4 <rgb_i2c_write_reg>
 800189c:	f7ff fe7c 	bl	8001598 <RGBSetHighSDA>
 80018a0:	2072      	movs	r0, #114	; 0x72
 80018a2:	2180      	movs	r1, #128	; 0x80
 80018a4:	2207      	movs	r2, #7
 80018a6:	802c      	strh	r4, [r5, #0]
 80018a8:	f7ff ff9c 	bl	80017e4 <rgb_i2c_write_reg>
 80018ac:	2072      	movs	r0, #114	; 0x72
 80018ae:	218e      	movs	r1, #142	; 0x8e
 80018b0:	2208      	movs	r2, #8
 80018b2:	f7ff ff97 	bl	80017e4 <rgb_i2c_write_reg>
 80018b6:	802e      	strh	r6, [r5, #0]
 80018b8:	bd70      	pop	{r4, r5, r6, pc}
 80018ba:	bf00      	nop
 80018bc:	20000da4 	.word	0x20000da4
 80018c0:	20000dfe 	.word	0x20000dfe

080018c4 <rgb_get>:
 80018c4:	4800      	ldr	r0, [pc, #0]	; (80018c8 <rgb_get+0x4>)
 80018c6:	4770      	bx	lr
 80018c8:	20000da4 	.word	0x20000da4

080018cc <rgb_read>:
 80018cc:	b538      	push	{r3, r4, r5, lr}
 80018ce:	f7ff fee1 	bl	8001694 <rgb_i2cStart>
 80018d2:	2072      	movs	r0, #114	; 0x72
 80018d4:	f7ff fefc 	bl	80016d0 <rgb_i2cWrite>
 80018d8:	20b4      	movs	r0, #180	; 0xb4
 80018da:	f7ff fef9 	bl	80016d0 <rgb_i2cWrite>
 80018de:	4d48      	ldr	r5, [pc, #288]	; (8001a00 <rgb_read+0x134>)
 80018e0:	f7ff fed8 	bl	8001694 <rgb_i2cStart>
 80018e4:	2073      	movs	r0, #115	; 0x73
 80018e6:	f7ff fef3 	bl	80016d0 <rgb_i2cWrite>
 80018ea:	2001      	movs	r0, #1
 80018ec:	4945      	ldr	r1, [pc, #276]	; (8001a04 <rgb_read+0x138>)
 80018ee:	f7ff ff0f 	bl	8001710 <rgb_i2cRead>
 80018f2:	462a      	mov	r2, r5
 80018f4:	2300      	movs	r3, #0
 80018f6:	4c43      	ldr	r4, [pc, #268]	; (8001a04 <rgb_read+0x138>)
 80018f8:	5d19      	ldrb	r1, [r3, r4]
 80018fa:	f822 1f02 	strh.w	r1, [r2, #2]!
 80018fe:	3301      	adds	r3, #1
 8001900:	2b09      	cmp	r3, #9
 8001902:	d1f8      	bne.n	80018f6 <rgb_read+0x2a>
 8001904:	2001      	movs	r0, #1
 8001906:	4621      	mov	r1, r4
 8001908:	f7ff ff02 	bl	8001710 <rgb_i2cRead>
 800190c:	2300      	movs	r3, #0
 800190e:	5ce1      	ldrb	r1, [r4, r3]
 8001910:	f835 2f02 	ldrh.w	r2, [r5, #2]!
 8001914:	3301      	adds	r3, #1
 8001916:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
 800191a:	2b09      	cmp	r3, #9
 800191c:	802a      	strh	r2, [r5, #0]
 800191e:	d1f6      	bne.n	800190e <rgb_read+0x42>
 8001920:	2001      	movs	r0, #1
 8001922:	4938      	ldr	r1, [pc, #224]	; (8001a04 <rgb_read+0x138>)
 8001924:	f7ff fef4 	bl	8001710 <rgb_i2cRead>
 8001928:	2300      	movs	r3, #0
 800192a:	4d37      	ldr	r5, [pc, #220]	; (8001a08 <rgb_read+0x13c>)
 800192c:	5ce2      	ldrb	r2, [r4, r3]
 800192e:	f825 2013 	strh.w	r2, [r5, r3, lsl #1]
 8001932:	3301      	adds	r3, #1
 8001934:	2b09      	cmp	r3, #9
 8001936:	d1f8      	bne.n	800192a <rgb_read+0x5e>
 8001938:	2001      	movs	r0, #1
 800193a:	4932      	ldr	r1, [pc, #200]	; (8001a04 <rgb_read+0x138>)
 800193c:	f7ff fee8 	bl	8001710 <rgb_i2cRead>
 8001940:	2300      	movs	r3, #0
 8001942:	f835 2013 	ldrh.w	r2, [r5, r3, lsl #1]
 8001946:	5ce1      	ldrb	r1, [r4, r3]
 8001948:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
 800194c:	f825 2013 	strh.w	r2, [r5, r3, lsl #1]
 8001950:	3301      	adds	r3, #1
 8001952:	2b09      	cmp	r3, #9
 8001954:	d1f5      	bne.n	8001942 <rgb_read+0x76>
 8001956:	4d2d      	ldr	r5, [pc, #180]	; (8001a0c <rgb_read+0x140>)
 8001958:	492a      	ldr	r1, [pc, #168]	; (8001a04 <rgb_read+0x138>)
 800195a:	2001      	movs	r0, #1
 800195c:	f7ff fed8 	bl	8001710 <rgb_i2cRead>
 8001960:	462a      	mov	r2, r5
 8001962:	2300      	movs	r3, #0
 8001964:	5ce1      	ldrb	r1, [r4, r3]
 8001966:	f822 1f02 	strh.w	r1, [r2, #2]!
 800196a:	3301      	adds	r3, #1
 800196c:	2b09      	cmp	r3, #9
 800196e:	d1f9      	bne.n	8001964 <rgb_read+0x98>
 8001970:	2001      	movs	r0, #1
 8001972:	4924      	ldr	r1, [pc, #144]	; (8001a04 <rgb_read+0x138>)
 8001974:	f7ff fecc 	bl	8001710 <rgb_i2cRead>
 8001978:	2300      	movs	r3, #0
 800197a:	5ce1      	ldrb	r1, [r4, r3]
 800197c:	f835 2f02 	ldrh.w	r2, [r5, #2]!
 8001980:	3301      	adds	r3, #1
 8001982:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
 8001986:	2b09      	cmp	r3, #9
 8001988:	802a      	strh	r2, [r5, #0]
 800198a:	d1f6      	bne.n	800197a <rgb_read+0xae>
 800198c:	4d20      	ldr	r5, [pc, #128]	; (8001a10 <rgb_read+0x144>)
 800198e:	491d      	ldr	r1, [pc, #116]	; (8001a04 <rgb_read+0x138>)
 8001990:	2001      	movs	r0, #1
 8001992:	f7ff febd 	bl	8001710 <rgb_i2cRead>
 8001996:	462a      	mov	r2, r5
 8001998:	2300      	movs	r3, #0
 800199a:	5ce1      	ldrb	r1, [r4, r3]
 800199c:	f822 1f02 	strh.w	r1, [r2, #2]!
 80019a0:	3301      	adds	r3, #1
 80019a2:	2b09      	cmp	r3, #9
 80019a4:	d1f9      	bne.n	800199a <rgb_read+0xce>
 80019a6:	2001      	movs	r0, #1
 80019a8:	4916      	ldr	r1, [pc, #88]	; (8001a04 <rgb_read+0x138>)
 80019aa:	f7ff feb1 	bl	8001710 <rgb_i2cRead>
 80019ae:	2300      	movs	r3, #0
 80019b0:	5ce1      	ldrb	r1, [r4, r3]
 80019b2:	f835 2f02 	ldrh.w	r2, [r5, #2]!
 80019b6:	3301      	adds	r3, #1
 80019b8:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
 80019bc:	2b09      	cmp	r3, #9
 80019be:	802a      	strh	r2, [r5, #0]
 80019c0:	d1f6      	bne.n	80019b0 <rgb_read+0xe4>
 80019c2:	4d14      	ldr	r5, [pc, #80]	; (8001a14 <rgb_read+0x148>)
 80019c4:	490f      	ldr	r1, [pc, #60]	; (8001a04 <rgb_read+0x138>)
 80019c6:	2001      	movs	r0, #1
 80019c8:	f7ff fea2 	bl	8001710 <rgb_i2cRead>
 80019cc:	462a      	mov	r2, r5
 80019ce:	2300      	movs	r3, #0
 80019d0:	5ce1      	ldrb	r1, [r4, r3]
 80019d2:	f822 1f02 	strh.w	r1, [r2, #2]!
 80019d6:	3301      	adds	r3, #1
 80019d8:	2b09      	cmp	r3, #9
 80019da:	d1f9      	bne.n	80019d0 <rgb_read+0x104>
 80019dc:	2000      	movs	r0, #0
 80019de:	4909      	ldr	r1, [pc, #36]	; (8001a04 <rgb_read+0x138>)
 80019e0:	f7ff fe96 	bl	8001710 <rgb_i2cRead>
 80019e4:	2300      	movs	r3, #0
 80019e6:	5ce1      	ldrb	r1, [r4, r3]
 80019e8:	f835 2f02 	ldrh.w	r2, [r5, #2]!
 80019ec:	3301      	adds	r3, #1
 80019ee:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
 80019f2:	2b09      	cmp	r3, #9
 80019f4:	802a      	strh	r2, [r5, #0]
 80019f6:	d1f6      	bne.n	80019e6 <rgb_read+0x11a>
 80019f8:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 80019fc:	f7ff be59 	b.w	80016b2 <rgb_i2cStop>
 8001a00:	20000dd8 	.word	0x20000dd8
 8001a04:	20000e00 	.word	0x20000e00
 8001a08:	20000da4 	.word	0x20000da4
 8001a0c:	20000db4 	.word	0x20000db4
 8001a10:	20000dc6 	.word	0x20000dc6
 8001a14:	20000dea 	.word	0x20000dea

08001a18 <main>:
 8001a18:	b508      	push	{r3, lr}
 8001a1a:	f000 ff89 	bl	8002930 <lib_low_level_init>
 8001a1e:	f7ff fc65 	bl	80012ec <lib_os_init>
 8001a22:	4905      	ldr	r1, [pc, #20]	; (8001a38 <main+0x20>)
 8001a24:	4805      	ldr	r0, [pc, #20]	; (8001a3c <main+0x24>)
 8001a26:	f44f 7200 	mov.w	r2, #512	; 0x200
 8001a2a:	2306      	movs	r3, #6
 8001a2c:	f7ff faa0 	bl	8000f70 <create_thread>
 8001a30:	f7ff fa98 	bl	8000f64 <kernel_start>
 8001a34:	2000      	movs	r0, #0
 8001a36:	bd08      	pop	{r3, pc}
 8001a38:	20000e0c 	.word	0x20000e0c
 8001a3c:	08000a41 	.word	0x08000a41

08001a40 <RCC_GetClocksFreq>:
 8001a40:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8001a44:	4f9b      	ldr	r7, [pc, #620]	; (8001cb4 <RCC_GetClocksFreq+0x274>)
 8001a46:	687b      	ldr	r3, [r7, #4]
 8001a48:	f003 030c 	and.w	r3, r3, #12
 8001a4c:	2b04      	cmp	r3, #4
 8001a4e:	d005      	beq.n	8001a5c <RCC_GetClocksFreq+0x1c>
 8001a50:	2b08      	cmp	r3, #8
 8001a52:	d006      	beq.n	8001a62 <RCC_GetClocksFreq+0x22>
 8001a54:	4a98      	ldr	r2, [pc, #608]	; (8001cb8 <RCC_GetClocksFreq+0x278>)
 8001a56:	6002      	str	r2, [r0, #0]
 8001a58:	b9b3      	cbnz	r3, 8001a88 <RCC_GetClocksFreq+0x48>
 8001a5a:	e016      	b.n	8001a8a <RCC_GetClocksFreq+0x4a>
 8001a5c:	4b96      	ldr	r3, [pc, #600]	; (8001cb8 <RCC_GetClocksFreq+0x278>)
 8001a5e:	6003      	str	r3, [r0, #0]
 8001a60:	e012      	b.n	8001a88 <RCC_GetClocksFreq+0x48>
 8001a62:	687b      	ldr	r3, [r7, #4]
 8001a64:	6879      	ldr	r1, [r7, #4]
 8001a66:	f3c3 4383 	ubfx	r3, r3, #18, #4
 8001a6a:	1c9a      	adds	r2, r3, #2
 8001a6c:	03cb      	lsls	r3, r1, #15
 8001a6e:	bf49      	itett	mi
 8001a70:	6afb      	ldrmi	r3, [r7, #44]	; 0x2c
 8001a72:	4b92      	ldrpl	r3, [pc, #584]	; (8001cbc <RCC_GetClocksFreq+0x27c>)
 8001a74:	4990      	ldrmi	r1, [pc, #576]	; (8001cb8 <RCC_GetClocksFreq+0x278>)
 8001a76:	f003 030f 	andmi.w	r3, r3, #15
 8001a7a:	bf44      	itt	mi
 8001a7c:	3301      	addmi	r3, #1
 8001a7e:	fbb1 f3f3 	udivmi	r3, r1, r3
 8001a82:	4353      	muls	r3, r2
 8001a84:	6003      	str	r3, [r0, #0]
 8001a86:	e000      	b.n	8001a8a <RCC_GetClocksFreq+0x4a>
 8001a88:	2300      	movs	r3, #0
 8001a8a:	687a      	ldr	r2, [r7, #4]
 8001a8c:	4e8c      	ldr	r6, [pc, #560]	; (8001cc0 <RCC_GetClocksFreq+0x280>)
 8001a8e:	f8df c234 	ldr.w	ip, [pc, #564]	; 8001cc4 <RCC_GetClocksFreq+0x284>
 8001a92:	f3c2 1203 	ubfx	r2, r2, #4, #4
 8001a96:	5cb4      	ldrb	r4, [r6, r2]
 8001a98:	6802      	ldr	r2, [r0, #0]
 8001a9a:	b2e4      	uxtb	r4, r4
 8001a9c:	fa22 f104 	lsr.w	r1, r2, r4
 8001aa0:	6041      	str	r1, [r0, #4]
 8001aa2:	687d      	ldr	r5, [r7, #4]
 8001aa4:	f3c5 2502 	ubfx	r5, r5, #8, #3
 8001aa8:	5d75      	ldrb	r5, [r6, r5]
 8001aaa:	fa21 fe05 	lsr.w	lr, r1, r5
 8001aae:	f8c0 e008 	str.w	lr, [r0, #8]
 8001ab2:	687d      	ldr	r5, [r7, #4]
 8001ab4:	f3c5 25c2 	ubfx	r5, r5, #11, #3
 8001ab8:	5d75      	ldrb	r5, [r6, r5]
 8001aba:	b2ed      	uxtb	r5, r5
 8001abc:	40e9      	lsrs	r1, r5
 8001abe:	60c1      	str	r1, [r0, #12]
 8001ac0:	6afe      	ldr	r6, [r7, #44]	; 0x2c
 8001ac2:	f3c6 1804 	ubfx	r8, r6, #4, #5
 8001ac6:	f008 060f 	and.w	r6, r8, #15
 8001aca:	f018 0f10 	tst.w	r8, #16
 8001ace:	f83c 6016 	ldrh.w	r6, [ip, r6, lsl #1]
 8001ad2:	46e0      	mov	r8, ip
 8001ad4:	b2b6      	uxth	r6, r6
 8001ad6:	d004      	beq.n	8001ae2 <RCC_GetClocksFreq+0xa2>
 8001ad8:	b11e      	cbz	r6, 8001ae2 <RCC_GetClocksFreq+0xa2>
 8001ada:	fbb3 f6f6 	udiv	r6, r3, r6
 8001ade:	6106      	str	r6, [r0, #16]
 8001ae0:	e000      	b.n	8001ae4 <RCC_GetClocksFreq+0xa4>
 8001ae2:	6102      	str	r2, [r0, #16]
 8001ae4:	6afe      	ldr	r6, [r7, #44]	; 0x2c
 8001ae6:	f3c6 2c44 	ubfx	ip, r6, #9, #5
 8001aea:	f00c 060f 	and.w	r6, ip, #15
 8001aee:	f01c 0f10 	tst.w	ip, #16
 8001af2:	f838 6016 	ldrh.w	r6, [r8, r6, lsl #1]
 8001af6:	b2b6      	uxth	r6, r6
 8001af8:	d004      	beq.n	8001b04 <RCC_GetClocksFreq+0xc4>
 8001afa:	b11e      	cbz	r6, 8001b04 <RCC_GetClocksFreq+0xc4>
 8001afc:	fbb3 f6f6 	udiv	r6, r3, r6
 8001b00:	6146      	str	r6, [r0, #20]
 8001b02:	e000      	b.n	8001b06 <RCC_GetClocksFreq+0xc6>
 8001b04:	6142      	str	r2, [r0, #20]
 8001b06:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001b08:	06f6      	lsls	r6, r6, #27
 8001b0a:	bf5a      	itte	pl
 8001b0c:	4e6a      	ldrpl	r6, [pc, #424]	; (8001cb8 <RCC_GetClocksFreq+0x278>)
 8001b0e:	6186      	strpl	r6, [r0, #24]
 8001b10:	6182      	strmi	r2, [r0, #24]
 8001b12:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001b14:	06b6      	lsls	r6, r6, #26
 8001b16:	bf5a      	itte	pl
 8001b18:	4e67      	ldrpl	r6, [pc, #412]	; (8001cb8 <RCC_GetClocksFreq+0x278>)
 8001b1a:	61c6      	strpl	r6, [r0, #28]
 8001b1c:	61c2      	strmi	r2, [r0, #28]
 8001b1e:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001b20:	0676      	lsls	r6, r6, #25
 8001b22:	bf5a      	itte	pl
 8001b24:	4e64      	ldrpl	r6, [pc, #400]	; (8001cb8 <RCC_GetClocksFreq+0x278>)
 8001b26:	6206      	strpl	r6, [r0, #32]
 8001b28:	6202      	strmi	r2, [r0, #32]
 8001b2a:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001b2c:	05f6      	lsls	r6, r6, #23
 8001b2e:	d506      	bpl.n	8001b3e <RCC_GetClocksFreq+0xfe>
 8001b30:	429a      	cmp	r2, r3
 8001b32:	d104      	bne.n	8001b3e <RCC_GetClocksFreq+0xfe>
 8001b34:	42a5      	cmp	r5, r4
 8001b36:	d102      	bne.n	8001b3e <RCC_GetClocksFreq+0xfe>
 8001b38:	0056      	lsls	r6, r2, #1
 8001b3a:	6246      	str	r6, [r0, #36]	; 0x24
 8001b3c:	e000      	b.n	8001b40 <RCC_GetClocksFreq+0x100>
 8001b3e:	6241      	str	r1, [r0, #36]	; 0x24
 8001b40:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001b42:	04f6      	lsls	r6, r6, #19
 8001b44:	d506      	bpl.n	8001b54 <RCC_GetClocksFreq+0x114>
 8001b46:	429a      	cmp	r2, r3
 8001b48:	d104      	bne.n	8001b54 <RCC_GetClocksFreq+0x114>
 8001b4a:	42a5      	cmp	r5, r4
 8001b4c:	d102      	bne.n	8001b54 <RCC_GetClocksFreq+0x114>
 8001b4e:	0056      	lsls	r6, r2, #1
 8001b50:	6286      	str	r6, [r0, #40]	; 0x28
 8001b52:	e000      	b.n	8001b56 <RCC_GetClocksFreq+0x116>
 8001b54:	6281      	str	r1, [r0, #40]	; 0x28
 8001b56:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001b58:	05b6      	lsls	r6, r6, #22
 8001b5a:	d506      	bpl.n	8001b6a <RCC_GetClocksFreq+0x12a>
 8001b5c:	429a      	cmp	r2, r3
 8001b5e:	d104      	bne.n	8001b6a <RCC_GetClocksFreq+0x12a>
 8001b60:	42a5      	cmp	r5, r4
 8001b62:	d102      	bne.n	8001b6a <RCC_GetClocksFreq+0x12a>
 8001b64:	0056      	lsls	r6, r2, #1
 8001b66:	62c6      	str	r6, [r0, #44]	; 0x2c
 8001b68:	e000      	b.n	8001b6c <RCC_GetClocksFreq+0x12c>
 8001b6a:	62c1      	str	r1, [r0, #44]	; 0x2c
 8001b6c:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001b6e:	0576      	lsls	r6, r6, #21
 8001b70:	d506      	bpl.n	8001b80 <RCC_GetClocksFreq+0x140>
 8001b72:	429a      	cmp	r2, r3
 8001b74:	d104      	bne.n	8001b80 <RCC_GetClocksFreq+0x140>
 8001b76:	42a5      	cmp	r5, r4
 8001b78:	d102      	bne.n	8001b80 <RCC_GetClocksFreq+0x140>
 8001b7a:	0056      	lsls	r6, r2, #1
 8001b7c:	64c6      	str	r6, [r0, #76]	; 0x4c
 8001b7e:	e000      	b.n	8001b82 <RCC_GetClocksFreq+0x142>
 8001b80:	64c1      	str	r1, [r0, #76]	; 0x4c
 8001b82:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001b84:	0536      	lsls	r6, r6, #20
 8001b86:	d506      	bpl.n	8001b96 <RCC_GetClocksFreq+0x156>
 8001b88:	429a      	cmp	r2, r3
 8001b8a:	d104      	bne.n	8001b96 <RCC_GetClocksFreq+0x156>
 8001b8c:	42a5      	cmp	r5, r4
 8001b8e:	d102      	bne.n	8001b96 <RCC_GetClocksFreq+0x156>
 8001b90:	0056      	lsls	r6, r2, #1
 8001b92:	6506      	str	r6, [r0, #80]	; 0x50
 8001b94:	e000      	b.n	8001b98 <RCC_GetClocksFreq+0x158>
 8001b96:	6501      	str	r1, [r0, #80]	; 0x50
 8001b98:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001b9a:	04b6      	lsls	r6, r6, #18
 8001b9c:	d506      	bpl.n	8001bac <RCC_GetClocksFreq+0x16c>
 8001b9e:	429a      	cmp	r2, r3
 8001ba0:	d104      	bne.n	8001bac <RCC_GetClocksFreq+0x16c>
 8001ba2:	42a5      	cmp	r5, r4
 8001ba4:	d102      	bne.n	8001bac <RCC_GetClocksFreq+0x16c>
 8001ba6:	0056      	lsls	r6, r2, #1
 8001ba8:	6546      	str	r6, [r0, #84]	; 0x54
 8001baa:	e000      	b.n	8001bae <RCC_GetClocksFreq+0x16e>
 8001bac:	6501      	str	r1, [r0, #80]	; 0x50
 8001bae:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001bb0:	0436      	lsls	r6, r6, #16
 8001bb2:	d506      	bpl.n	8001bc2 <RCC_GetClocksFreq+0x182>
 8001bb4:	429a      	cmp	r2, r3
 8001bb6:	d104      	bne.n	8001bc2 <RCC_GetClocksFreq+0x182>
 8001bb8:	42a5      	cmp	r5, r4
 8001bba:	d102      	bne.n	8001bc2 <RCC_GetClocksFreq+0x182>
 8001bbc:	0053      	lsls	r3, r2, #1
 8001bbe:	6583      	str	r3, [r0, #88]	; 0x58
 8001bc0:	e000      	b.n	8001bc4 <RCC_GetClocksFreq+0x184>
 8001bc2:	6581      	str	r1, [r0, #88]	; 0x58
 8001bc4:	6b3c      	ldr	r4, [r7, #48]	; 0x30
 8001bc6:	4b3b      	ldr	r3, [pc, #236]	; (8001cb4 <RCC_GetClocksFreq+0x274>)
 8001bc8:	07a4      	lsls	r4, r4, #30
 8001bca:	d101      	bne.n	8001bd0 <RCC_GetClocksFreq+0x190>
 8001bcc:	6381      	str	r1, [r0, #56]	; 0x38
 8001bce:	e015      	b.n	8001bfc <RCC_GetClocksFreq+0x1bc>
 8001bd0:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001bd2:	f001 0103 	and.w	r1, r1, #3
 8001bd6:	2901      	cmp	r1, #1
 8001bd8:	d101      	bne.n	8001bde <RCC_GetClocksFreq+0x19e>
 8001bda:	6382      	str	r2, [r0, #56]	; 0x38
 8001bdc:	e00e      	b.n	8001bfc <RCC_GetClocksFreq+0x1bc>
 8001bde:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001be0:	f001 0103 	and.w	r1, r1, #3
 8001be4:	2902      	cmp	r1, #2
 8001be6:	d102      	bne.n	8001bee <RCC_GetClocksFreq+0x1ae>
 8001be8:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001bec:	e005      	b.n	8001bfa <RCC_GetClocksFreq+0x1ba>
 8001bee:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001bf0:	f003 0303 	and.w	r3, r3, #3
 8001bf4:	2b03      	cmp	r3, #3
 8001bf6:	d101      	bne.n	8001bfc <RCC_GetClocksFreq+0x1bc>
 8001bf8:	4b2f      	ldr	r3, [pc, #188]	; (8001cb8 <RCC_GetClocksFreq+0x278>)
 8001bfa:	6383      	str	r3, [r0, #56]	; 0x38
 8001bfc:	6b39      	ldr	r1, [r7, #48]	; 0x30
 8001bfe:	4b2d      	ldr	r3, [pc, #180]	; (8001cb4 <RCC_GetClocksFreq+0x274>)
 8001c00:	f411 3f40 	tst.w	r1, #196608	; 0x30000
 8001c04:	d102      	bne.n	8001c0c <RCC_GetClocksFreq+0x1cc>
 8001c06:	f8c0 e03c 	str.w	lr, [r0, #60]	; 0x3c
 8001c0a:	e018      	b.n	8001c3e <RCC_GetClocksFreq+0x1fe>
 8001c0c:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001c0e:	f401 3140 	and.w	r1, r1, #196608	; 0x30000
 8001c12:	f5b1 3f80 	cmp.w	r1, #65536	; 0x10000
 8001c16:	d101      	bne.n	8001c1c <RCC_GetClocksFreq+0x1dc>
 8001c18:	63c2      	str	r2, [r0, #60]	; 0x3c
 8001c1a:	e010      	b.n	8001c3e <RCC_GetClocksFreq+0x1fe>
 8001c1c:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001c1e:	f401 3140 	and.w	r1, r1, #196608	; 0x30000
 8001c22:	f5b1 3f00 	cmp.w	r1, #131072	; 0x20000
 8001c26:	d102      	bne.n	8001c2e <RCC_GetClocksFreq+0x1ee>
 8001c28:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001c2c:	e006      	b.n	8001c3c <RCC_GetClocksFreq+0x1fc>
 8001c2e:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001c30:	f403 3340 	and.w	r3, r3, #196608	; 0x30000
 8001c34:	f5b3 3f40 	cmp.w	r3, #196608	; 0x30000
 8001c38:	d101      	bne.n	8001c3e <RCC_GetClocksFreq+0x1fe>
 8001c3a:	4b1f      	ldr	r3, [pc, #124]	; (8001cb8 <RCC_GetClocksFreq+0x278>)
 8001c3c:	63c3      	str	r3, [r0, #60]	; 0x3c
 8001c3e:	6b39      	ldr	r1, [r7, #48]	; 0x30
 8001c40:	4b1c      	ldr	r3, [pc, #112]	; (8001cb4 <RCC_GetClocksFreq+0x274>)
 8001c42:	f411 2f40 	tst.w	r1, #786432	; 0xc0000
 8001c46:	d102      	bne.n	8001c4e <RCC_GetClocksFreq+0x20e>
 8001c48:	f8c0 e040 	str.w	lr, [r0, #64]	; 0x40
 8001c4c:	e018      	b.n	8001c80 <RCC_GetClocksFreq+0x240>
 8001c4e:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001c50:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 8001c54:	f5b1 2f80 	cmp.w	r1, #262144	; 0x40000
 8001c58:	d101      	bne.n	8001c5e <RCC_GetClocksFreq+0x21e>
 8001c5a:	6402      	str	r2, [r0, #64]	; 0x40
 8001c5c:	e010      	b.n	8001c80 <RCC_GetClocksFreq+0x240>
 8001c5e:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001c60:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 8001c64:	f5b1 2f00 	cmp.w	r1, #524288	; 0x80000
 8001c68:	d102      	bne.n	8001c70 <RCC_GetClocksFreq+0x230>
 8001c6a:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001c6e:	e006      	b.n	8001c7e <RCC_GetClocksFreq+0x23e>
 8001c70:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001c72:	f403 2340 	and.w	r3, r3, #786432	; 0xc0000
 8001c76:	f5b3 2f40 	cmp.w	r3, #786432	; 0xc0000
 8001c7a:	d101      	bne.n	8001c80 <RCC_GetClocksFreq+0x240>
 8001c7c:	4b0e      	ldr	r3, [pc, #56]	; (8001cb8 <RCC_GetClocksFreq+0x278>)
 8001c7e:	6403      	str	r3, [r0, #64]	; 0x40
 8001c80:	6b39      	ldr	r1, [r7, #48]	; 0x30
 8001c82:	4b0c      	ldr	r3, [pc, #48]	; (8001cb4 <RCC_GetClocksFreq+0x274>)
 8001c84:	f411 1f40 	tst.w	r1, #3145728	; 0x300000
 8001c88:	d102      	bne.n	8001c90 <RCC_GetClocksFreq+0x250>
 8001c8a:	f8c0 e044 	str.w	lr, [r0, #68]	; 0x44
 8001c8e:	e023      	b.n	8001cd8 <RCC_GetClocksFreq+0x298>
 8001c90:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001c92:	f401 1140 	and.w	r1, r1, #3145728	; 0x300000
 8001c96:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 8001c9a:	d101      	bne.n	8001ca0 <RCC_GetClocksFreq+0x260>
 8001c9c:	6442      	str	r2, [r0, #68]	; 0x44
 8001c9e:	e01b      	b.n	8001cd8 <RCC_GetClocksFreq+0x298>
 8001ca0:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001ca2:	f401 1140 	and.w	r1, r1, #3145728	; 0x300000
 8001ca6:	f5b1 1f00 	cmp.w	r1, #2097152	; 0x200000
 8001caa:	d10d      	bne.n	8001cc8 <RCC_GetClocksFreq+0x288>
 8001cac:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001cb0:	e011      	b.n	8001cd6 <RCC_GetClocksFreq+0x296>
 8001cb2:	bf00      	nop
 8001cb4:	40021000 	.word	0x40021000
 8001cb8:	007a1200 	.word	0x007a1200
 8001cbc:	003d0900 	.word	0x003d0900
 8001cc0:	200000c0 	.word	0x200000c0
 8001cc4:	200000a0 	.word	0x200000a0
 8001cc8:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001cca:	f403 1340 	and.w	r3, r3, #3145728	; 0x300000
 8001cce:	f5b3 1f40 	cmp.w	r3, #3145728	; 0x300000
 8001cd2:	d101      	bne.n	8001cd8 <RCC_GetClocksFreq+0x298>
 8001cd4:	4b13      	ldr	r3, [pc, #76]	; (8001d24 <RCC_GetClocksFreq+0x2e4>)
 8001cd6:	6443      	str	r3, [r0, #68]	; 0x44
 8001cd8:	6b39      	ldr	r1, [r7, #48]	; 0x30
 8001cda:	4b13      	ldr	r3, [pc, #76]	; (8001d28 <RCC_GetClocksFreq+0x2e8>)
 8001cdc:	f411 0f40 	tst.w	r1, #12582912	; 0xc00000
 8001ce0:	d103      	bne.n	8001cea <RCC_GetClocksFreq+0x2aa>
 8001ce2:	f8c0 e048 	str.w	lr, [r0, #72]	; 0x48
 8001ce6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8001cea:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001cec:	f401 0140 	and.w	r1, r1, #12582912	; 0xc00000
 8001cf0:	f5b1 0f80 	cmp.w	r1, #4194304	; 0x400000
 8001cf4:	d102      	bne.n	8001cfc <RCC_GetClocksFreq+0x2bc>
 8001cf6:	6482      	str	r2, [r0, #72]	; 0x48
 8001cf8:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8001cfc:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 8001cfe:	f402 0240 	and.w	r2, r2, #12582912	; 0xc00000
 8001d02:	f5b2 0f00 	cmp.w	r2, #8388608	; 0x800000
 8001d06:	d102      	bne.n	8001d0e <RCC_GetClocksFreq+0x2ce>
 8001d08:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001d0c:	e006      	b.n	8001d1c <RCC_GetClocksFreq+0x2dc>
 8001d0e:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001d10:	f403 0340 	and.w	r3, r3, #12582912	; 0xc00000
 8001d14:	f5b3 0f40 	cmp.w	r3, #12582912	; 0xc00000
 8001d18:	d101      	bne.n	8001d1e <RCC_GetClocksFreq+0x2de>
 8001d1a:	4b02      	ldr	r3, [pc, #8]	; (8001d24 <RCC_GetClocksFreq+0x2e4>)
 8001d1c:	6483      	str	r3, [r0, #72]	; 0x48
 8001d1e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8001d22:	bf00      	nop
 8001d24:	007a1200 	.word	0x007a1200
 8001d28:	40021000 	.word	0x40021000

08001d2c <RCC_AHBPeriphClockCmd>:
 8001d2c:	bf00      	nop
 8001d2e:	bf00      	nop
 8001d30:	4b04      	ldr	r3, [pc, #16]	; (8001d44 <RCC_AHBPeriphClockCmd+0x18>)
 8001d32:	695a      	ldr	r2, [r3, #20]
 8001d34:	b109      	cbz	r1, 8001d3a <RCC_AHBPeriphClockCmd+0xe>
 8001d36:	4310      	orrs	r0, r2
 8001d38:	e001      	b.n	8001d3e <RCC_AHBPeriphClockCmd+0x12>
 8001d3a:	ea22 0000 	bic.w	r0, r2, r0
 8001d3e:	6158      	str	r0, [r3, #20]
 8001d40:	4770      	bx	lr
 8001d42:	bf00      	nop
 8001d44:	40021000 	.word	0x40021000

08001d48 <RCC_APB2PeriphClockCmd>:
 8001d48:	bf00      	nop
 8001d4a:	bf00      	nop
 8001d4c:	4b04      	ldr	r3, [pc, #16]	; (8001d60 <RCC_APB2PeriphClockCmd+0x18>)
 8001d4e:	699a      	ldr	r2, [r3, #24]
 8001d50:	b109      	cbz	r1, 8001d56 <RCC_APB2PeriphClockCmd+0xe>
 8001d52:	4310      	orrs	r0, r2
 8001d54:	e001      	b.n	8001d5a <RCC_APB2PeriphClockCmd+0x12>
 8001d56:	ea22 0000 	bic.w	r0, r2, r0
 8001d5a:	6198      	str	r0, [r3, #24]
 8001d5c:	4770      	bx	lr
 8001d5e:	bf00      	nop
 8001d60:	40021000 	.word	0x40021000

08001d64 <RCC_APB1PeriphClockCmd>:
 8001d64:	bf00      	nop
 8001d66:	bf00      	nop
 8001d68:	4b04      	ldr	r3, [pc, #16]	; (8001d7c <RCC_APB1PeriphClockCmd+0x18>)
 8001d6a:	69da      	ldr	r2, [r3, #28]
 8001d6c:	b109      	cbz	r1, 8001d72 <RCC_APB1PeriphClockCmd+0xe>
 8001d6e:	4310      	orrs	r0, r2
 8001d70:	e001      	b.n	8001d76 <RCC_APB1PeriphClockCmd+0x12>
 8001d72:	ea22 0000 	bic.w	r0, r2, r0
 8001d76:	61d8      	str	r0, [r3, #28]
 8001d78:	4770      	bx	lr
 8001d7a:	bf00      	nop
 8001d7c:	40021000 	.word	0x40021000

08001d80 <TIM_TimeBaseInit>:
 8001d80:	bf00      	nop
 8001d82:	bf00      	nop
 8001d84:	bf00      	nop
 8001d86:	4a24      	ldr	r2, [pc, #144]	; (8001e18 <TIM_TimeBaseInit+0x98>)
 8001d88:	8803      	ldrh	r3, [r0, #0]
 8001d8a:	4290      	cmp	r0, r2
 8001d8c:	b29b      	uxth	r3, r3
 8001d8e:	d012      	beq.n	8001db6 <TIM_TimeBaseInit+0x36>
 8001d90:	f502 6200 	add.w	r2, r2, #2048	; 0x800
 8001d94:	4290      	cmp	r0, r2
 8001d96:	d00e      	beq.n	8001db6 <TIM_TimeBaseInit+0x36>
 8001d98:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 8001d9c:	d00b      	beq.n	8001db6 <TIM_TimeBaseInit+0x36>
 8001d9e:	f5a2 3298 	sub.w	r2, r2, #77824	; 0x13000
 8001da2:	4290      	cmp	r0, r2
 8001da4:	d007      	beq.n	8001db6 <TIM_TimeBaseInit+0x36>
 8001da6:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8001daa:	4290      	cmp	r0, r2
 8001dac:	d003      	beq.n	8001db6 <TIM_TimeBaseInit+0x36>
 8001dae:	f502 32a4 	add.w	r2, r2, #83968	; 0x14800
 8001db2:	4290      	cmp	r0, r2
 8001db4:	d103      	bne.n	8001dbe <TIM_TimeBaseInit+0x3e>
 8001db6:	884a      	ldrh	r2, [r1, #2]
 8001db8:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 8001dbc:	4313      	orrs	r3, r2
 8001dbe:	4a17      	ldr	r2, [pc, #92]	; (8001e1c <TIM_TimeBaseInit+0x9c>)
 8001dc0:	4290      	cmp	r0, r2
 8001dc2:	d008      	beq.n	8001dd6 <TIM_TimeBaseInit+0x56>
 8001dc4:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8001dc8:	4290      	cmp	r0, r2
 8001dca:	bf1f      	itttt	ne
 8001dcc:	f423 7340 	bicne.w	r3, r3, #768	; 0x300
 8001dd0:	890a      	ldrhne	r2, [r1, #8]
 8001dd2:	b29b      	uxthne	r3, r3
 8001dd4:	4313      	orrne	r3, r2
 8001dd6:	8003      	strh	r3, [r0, #0]
 8001dd8:	684b      	ldr	r3, [r1, #4]
 8001dda:	62c3      	str	r3, [r0, #44]	; 0x2c
 8001ddc:	880b      	ldrh	r3, [r1, #0]
 8001dde:	8503      	strh	r3, [r0, #40]	; 0x28
 8001de0:	4b0d      	ldr	r3, [pc, #52]	; (8001e18 <TIM_TimeBaseInit+0x98>)
 8001de2:	4298      	cmp	r0, r3
 8001de4:	d013      	beq.n	8001e0e <TIM_TimeBaseInit+0x8e>
 8001de6:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 8001dea:	4298      	cmp	r0, r3
 8001dec:	d00f      	beq.n	8001e0e <TIM_TimeBaseInit+0x8e>
 8001dee:	f503 6340 	add.w	r3, r3, #3072	; 0xc00
 8001df2:	4298      	cmp	r0, r3
 8001df4:	d00b      	beq.n	8001e0e <TIM_TimeBaseInit+0x8e>
 8001df6:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 8001dfa:	4298      	cmp	r0, r3
 8001dfc:	d007      	beq.n	8001e0e <TIM_TimeBaseInit+0x8e>
 8001dfe:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 8001e02:	4298      	cmp	r0, r3
 8001e04:	d003      	beq.n	8001e0e <TIM_TimeBaseInit+0x8e>
 8001e06:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 8001e0a:	4298      	cmp	r0, r3
 8001e0c:	d101      	bne.n	8001e12 <TIM_TimeBaseInit+0x92>
 8001e0e:	894b      	ldrh	r3, [r1, #10]
 8001e10:	8603      	strh	r3, [r0, #48]	; 0x30
 8001e12:	2301      	movs	r3, #1
 8001e14:	6143      	str	r3, [r0, #20]
 8001e16:	4770      	bx	lr
 8001e18:	40012c00 	.word	0x40012c00
 8001e1c:	40001000 	.word	0x40001000

08001e20 <TIM_Cmd>:
 8001e20:	bf00      	nop
 8001e22:	bf00      	nop
 8001e24:	8803      	ldrh	r3, [r0, #0]
 8001e26:	b119      	cbz	r1, 8001e30 <TIM_Cmd+0x10>
 8001e28:	b29b      	uxth	r3, r3
 8001e2a:	f043 0301 	orr.w	r3, r3, #1
 8001e2e:	e003      	b.n	8001e38 <TIM_Cmd+0x18>
 8001e30:	f023 0301 	bic.w	r3, r3, #1
 8001e34:	041b      	lsls	r3, r3, #16
 8001e36:	0c1b      	lsrs	r3, r3, #16
 8001e38:	8003      	strh	r3, [r0, #0]
 8001e3a:	4770      	bx	lr

08001e3c <TIM_OC1Init>:
 8001e3c:	b570      	push	{r4, r5, r6, lr}
 8001e3e:	bf00      	nop
 8001e40:	bf00      	nop
 8001e42:	bf00      	nop
 8001e44:	bf00      	nop
 8001e46:	6a03      	ldr	r3, [r0, #32]
 8001e48:	680d      	ldr	r5, [r1, #0]
 8001e4a:	f023 0301 	bic.w	r3, r3, #1
 8001e4e:	6203      	str	r3, [r0, #32]
 8001e50:	6a03      	ldr	r3, [r0, #32]
 8001e52:	6844      	ldr	r4, [r0, #4]
 8001e54:	6982      	ldr	r2, [r0, #24]
 8001e56:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
 8001e5a:	f022 0273 	bic.w	r2, r2, #115	; 0x73
 8001e5e:	4315      	orrs	r5, r2
 8001e60:	898a      	ldrh	r2, [r1, #12]
 8001e62:	f023 0302 	bic.w	r3, r3, #2
 8001e66:	4313      	orrs	r3, r2
 8001e68:	888a      	ldrh	r2, [r1, #4]
 8001e6a:	4313      	orrs	r3, r2
 8001e6c:	4a15      	ldr	r2, [pc, #84]	; (8001ec4 <TIM_OC1Init+0x88>)
 8001e6e:	4290      	cmp	r0, r2
 8001e70:	d00f      	beq.n	8001e92 <TIM_OC1Init+0x56>
 8001e72:	f502 6200 	add.w	r2, r2, #2048	; 0x800
 8001e76:	4290      	cmp	r0, r2
 8001e78:	d00b      	beq.n	8001e92 <TIM_OC1Init+0x56>
 8001e7a:	f502 6240 	add.w	r2, r2, #3072	; 0xc00
 8001e7e:	4290      	cmp	r0, r2
 8001e80:	d007      	beq.n	8001e92 <TIM_OC1Init+0x56>
 8001e82:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8001e86:	4290      	cmp	r0, r2
 8001e88:	d003      	beq.n	8001e92 <TIM_OC1Init+0x56>
 8001e8a:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8001e8e:	4290      	cmp	r0, r2
 8001e90:	d111      	bne.n	8001eb6 <TIM_OC1Init+0x7a>
 8001e92:	bf00      	nop
 8001e94:	bf00      	nop
 8001e96:	bf00      	nop
 8001e98:	bf00      	nop
 8001e9a:	89ca      	ldrh	r2, [r1, #14]
 8001e9c:	88ce      	ldrh	r6, [r1, #6]
 8001e9e:	f023 0308 	bic.w	r3, r3, #8
 8001ea2:	4313      	orrs	r3, r2
 8001ea4:	8a0a      	ldrh	r2, [r1, #16]
 8001ea6:	f424 7440 	bic.w	r4, r4, #768	; 0x300
 8001eaa:	4314      	orrs	r4, r2
 8001eac:	8a4a      	ldrh	r2, [r1, #18]
 8001eae:	f023 0304 	bic.w	r3, r3, #4
 8001eb2:	4333      	orrs	r3, r6
 8001eb4:	4314      	orrs	r4, r2
 8001eb6:	688a      	ldr	r2, [r1, #8]
 8001eb8:	6044      	str	r4, [r0, #4]
 8001eba:	6185      	str	r5, [r0, #24]
 8001ebc:	6342      	str	r2, [r0, #52]	; 0x34
 8001ebe:	6203      	str	r3, [r0, #32]
 8001ec0:	bd70      	pop	{r4, r5, r6, pc}
 8001ec2:	bf00      	nop
 8001ec4:	40012c00 	.word	0x40012c00

08001ec8 <TIM_OC2Init>:
 8001ec8:	b570      	push	{r4, r5, r6, lr}
 8001eca:	bf00      	nop
 8001ecc:	bf00      	nop
 8001ece:	bf00      	nop
 8001ed0:	bf00      	nop
 8001ed2:	6a03      	ldr	r3, [r0, #32]
 8001ed4:	680d      	ldr	r5, [r1, #0]
 8001ed6:	898e      	ldrh	r6, [r1, #12]
 8001ed8:	f023 0310 	bic.w	r3, r3, #16
 8001edc:	6203      	str	r3, [r0, #32]
 8001ede:	6a03      	ldr	r3, [r0, #32]
 8001ee0:	6844      	ldr	r4, [r0, #4]
 8001ee2:	6982      	ldr	r2, [r0, #24]
 8001ee4:	f022 7280 	bic.w	r2, r2, #16777216	; 0x1000000
 8001ee8:	f422 42e6 	bic.w	r2, r2, #29440	; 0x7300
 8001eec:	ea42 2505 	orr.w	r5, r2, r5, lsl #8
 8001ef0:	f023 0220 	bic.w	r2, r3, #32
 8001ef4:	888b      	ldrh	r3, [r1, #4]
 8001ef6:	4333      	orrs	r3, r6
 8001ef8:	ea42 1303 	orr.w	r3, r2, r3, lsl #4
 8001efc:	4a10      	ldr	r2, [pc, #64]	; (8001f40 <TIM_OC2Init+0x78>)
 8001efe:	4290      	cmp	r0, r2
 8001f00:	d003      	beq.n	8001f0a <TIM_OC2Init+0x42>
 8001f02:	f502 6200 	add.w	r2, r2, #2048	; 0x800
 8001f06:	4290      	cmp	r0, r2
 8001f08:	d114      	bne.n	8001f34 <TIM_OC2Init+0x6c>
 8001f0a:	bf00      	nop
 8001f0c:	bf00      	nop
 8001f0e:	bf00      	nop
 8001f10:	bf00      	nop
 8001f12:	89ca      	ldrh	r2, [r1, #14]
 8001f14:	8a0e      	ldrh	r6, [r1, #16]
 8001f16:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8001f1a:	ea43 1302 	orr.w	r3, r3, r2, lsl #4
 8001f1e:	88ca      	ldrh	r2, [r1, #6]
 8001f20:	f023 0340 	bic.w	r3, r3, #64	; 0x40
 8001f24:	ea43 1302 	orr.w	r3, r3, r2, lsl #4
 8001f28:	8a4a      	ldrh	r2, [r1, #18]
 8001f2a:	f424 6440 	bic.w	r4, r4, #3072	; 0xc00
 8001f2e:	4332      	orrs	r2, r6
 8001f30:	ea44 0482 	orr.w	r4, r4, r2, lsl #2
 8001f34:	688a      	ldr	r2, [r1, #8]
 8001f36:	6044      	str	r4, [r0, #4]
 8001f38:	6185      	str	r5, [r0, #24]
 8001f3a:	6382      	str	r2, [r0, #56]	; 0x38
 8001f3c:	6203      	str	r3, [r0, #32]
 8001f3e:	bd70      	pop	{r4, r5, r6, pc}
 8001f40:	40012c00 	.word	0x40012c00

08001f44 <TIM_CtrlPWMOutputs>:
 8001f44:	bf00      	nop
 8001f46:	bf00      	nop
 8001f48:	6c43      	ldr	r3, [r0, #68]	; 0x44
 8001f4a:	b111      	cbz	r1, 8001f52 <TIM_CtrlPWMOutputs+0xe>
 8001f4c:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
 8001f50:	e001      	b.n	8001f56 <TIM_CtrlPWMOutputs+0x12>
 8001f52:	f3c3 030e 	ubfx	r3, r3, #0, #15
 8001f56:	6443      	str	r3, [r0, #68]	; 0x44
 8001f58:	4770      	bx	lr

08001f5a <TIM_ClearITPendingBit>:
 8001f5a:	bf00      	nop
 8001f5c:	43c9      	mvns	r1, r1
 8001f5e:	b289      	uxth	r1, r1
 8001f60:	6101      	str	r1, [r0, #16]
 8001f62:	4770      	bx	lr

08001f64 <timer_init>:
 8001f64:	b530      	push	{r4, r5, lr}
 8001f66:	2300      	movs	r3, #0
 8001f68:	b085      	sub	sp, #20
 8001f6a:	491f      	ldr	r1, [pc, #124]	; (8001fe8 <timer_init+0x84>)
 8001f6c:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8001f70:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 8001f74:	491d      	ldr	r1, [pc, #116]	; (8001fec <timer_init+0x88>)
 8001f76:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 8001f7a:	4a1d      	ldr	r2, [pc, #116]	; (8001ff0 <timer_init+0x8c>)
 8001f7c:	2400      	movs	r4, #0
 8001f7e:	f822 4013 	strh.w	r4, [r2, r3, lsl #1]
 8001f82:	3301      	adds	r3, #1
 8001f84:	2b04      	cmp	r3, #4
 8001f86:	4625      	mov	r5, r4
 8001f88:	d1ef      	bne.n	8001f6a <timer_init+0x6>
 8001f8a:	4b1a      	ldr	r3, [pc, #104]	; (8001ff4 <timer_init+0x90>)
 8001f8c:	2002      	movs	r0, #2
 8001f8e:	2101      	movs	r1, #1
 8001f90:	601c      	str	r4, [r3, #0]
 8001f92:	f7ff fee7 	bl	8001d64 <RCC_APB1PeriphClockCmd>
 8001f96:	f8ad 4006 	strh.w	r4, [sp, #6]
 8001f9a:	f8ad 400c 	strh.w	r4, [sp, #12]
 8001f9e:	f8ad 400e 	strh.w	r4, [sp, #14]
 8001fa2:	4c15      	ldr	r4, [pc, #84]	; (8001ff8 <timer_init+0x94>)
 8001fa4:	f44f 738c 	mov.w	r3, #280	; 0x118
 8001fa8:	f8ad 3004 	strh.w	r3, [sp, #4]
 8001fac:	4620      	mov	r0, r4
 8001fae:	2331      	movs	r3, #49	; 0x31
 8001fb0:	a901      	add	r1, sp, #4
 8001fb2:	9302      	str	r3, [sp, #8]
 8001fb4:	f7ff fee4 	bl	8001d80 <TIM_TimeBaseInit>
 8001fb8:	4620      	mov	r0, r4
 8001fba:	2101      	movs	r1, #1
 8001fbc:	f7ff ff30 	bl	8001e20 <TIM_Cmd>
 8001fc0:	68e3      	ldr	r3, [r4, #12]
 8001fc2:	f043 0301 	orr.w	r3, r3, #1
 8001fc6:	60e3      	str	r3, [r4, #12]
 8001fc8:	231d      	movs	r3, #29
 8001fca:	f88d 3000 	strb.w	r3, [sp]
 8001fce:	4668      	mov	r0, sp
 8001fd0:	2301      	movs	r3, #1
 8001fd2:	f88d 5001 	strb.w	r5, [sp, #1]
 8001fd6:	f88d 3002 	strb.w	r3, [sp, #2]
 8001fda:	f88d 3003 	strb.w	r3, [sp, #3]
 8001fde:	f000 fc6d 	bl	80028bc <NVIC_Init>
 8001fe2:	b005      	add	sp, #20
 8001fe4:	bd30      	pop	{r4, r5, pc}
 8001fe6:	bf00      	nop
 8001fe8:	20001020 	.word	0x20001020
 8001fec:	20001014 	.word	0x20001014
 8001ff0:	2000100c 	.word	0x2000100c
 8001ff4:	2000101c 	.word	0x2000101c
 8001ff8:	40000400 	.word	0x40000400

08001ffc <TIM3_IRQHandler>:
 8001ffc:	2300      	movs	r3, #0
 8001ffe:	4910      	ldr	r1, [pc, #64]	; (8002040 <TIM3_IRQHandler+0x44>)
 8002000:	f831 2013 	ldrh.w	r2, [r1, r3, lsl #1]
 8002004:	b292      	uxth	r2, r2
 8002006:	b132      	cbz	r2, 8002016 <TIM3_IRQHandler+0x1a>
 8002008:	f831 2013 	ldrh.w	r2, [r1, r3, lsl #1]
 800200c:	3a01      	subs	r2, #1
 800200e:	b292      	uxth	r2, r2
 8002010:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 8002014:	e009      	b.n	800202a <TIM3_IRQHandler+0x2e>
 8002016:	4a0b      	ldr	r2, [pc, #44]	; (8002044 <TIM3_IRQHandler+0x48>)
 8002018:	f832 2013 	ldrh.w	r2, [r2, r3, lsl #1]
 800201c:	b292      	uxth	r2, r2
 800201e:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 8002022:	4a09      	ldr	r2, [pc, #36]	; (8002048 <TIM3_IRQHandler+0x4c>)
 8002024:	2101      	movs	r1, #1
 8002026:	f822 1013 	strh.w	r1, [r2, r3, lsl #1]
 800202a:	3301      	adds	r3, #1
 800202c:	2b04      	cmp	r3, #4
 800202e:	d1e6      	bne.n	8001ffe <TIM3_IRQHandler+0x2>
 8002030:	4a06      	ldr	r2, [pc, #24]	; (800204c <TIM3_IRQHandler+0x50>)
 8002032:	4807      	ldr	r0, [pc, #28]	; (8002050 <TIM3_IRQHandler+0x54>)
 8002034:	6813      	ldr	r3, [r2, #0]
 8002036:	2101      	movs	r1, #1
 8002038:	3301      	adds	r3, #1
 800203a:	6013      	str	r3, [r2, #0]
 800203c:	f7ff bf8d 	b.w	8001f5a <TIM_ClearITPendingBit>
 8002040:	20001020 	.word	0x20001020
 8002044:	20001014 	.word	0x20001014
 8002048:	2000100c 	.word	0x2000100c
 800204c:	2000101c 	.word	0x2000101c
 8002050:	40000400 	.word	0x40000400

08002054 <timer_get_time>:
 8002054:	b082      	sub	sp, #8
 8002056:	b672      	cpsid	i
 8002058:	4b04      	ldr	r3, [pc, #16]	; (800206c <timer_get_time+0x18>)
 800205a:	681b      	ldr	r3, [r3, #0]
 800205c:	9301      	str	r3, [sp, #4]
 800205e:	b662      	cpsie	i
 8002060:	230a      	movs	r3, #10
 8002062:	9801      	ldr	r0, [sp, #4]
 8002064:	fbb0 f0f3 	udiv	r0, r0, r3
 8002068:	b002      	add	sp, #8
 800206a:	4770      	bx	lr
 800206c:	2000101c 	.word	0x2000101c

08002070 <timer_delay_ms>:
 8002070:	b513      	push	{r0, r1, r4, lr}
 8002072:	4604      	mov	r4, r0
 8002074:	f7ff ffee 	bl	8002054 <timer_get_time>
 8002078:	4420      	add	r0, r4
 800207a:	9001      	str	r0, [sp, #4]
 800207c:	9c01      	ldr	r4, [sp, #4]
 800207e:	f7ff ffe9 	bl	8002054 <timer_get_time>
 8002082:	4284      	cmp	r4, r0
 8002084:	d902      	bls.n	800208c <timer_delay_ms+0x1c>
 8002086:	f000 fb17 	bl	80026b8 <sleep>
 800208a:	e7f7      	b.n	800207c <timer_delay_ms+0xc>
 800208c:	b002      	add	sp, #8
 800208e:	bd10      	pop	{r4, pc}

08002090 <event_timer_set_period>:
 8002090:	b672      	cpsid	i
 8002092:	eb01 0181 	add.w	r1, r1, r1, lsl #2
 8002096:	4b07      	ldr	r3, [pc, #28]	; (80020b4 <event_timer_set_period+0x24>)
 8002098:	0049      	lsls	r1, r1, #1
 800209a:	b289      	uxth	r1, r1
 800209c:	f823 1010 	strh.w	r1, [r3, r0, lsl #1]
 80020a0:	4b05      	ldr	r3, [pc, #20]	; (80020b8 <event_timer_set_period+0x28>)
 80020a2:	f823 1010 	strh.w	r1, [r3, r0, lsl #1]
 80020a6:	4b05      	ldr	r3, [pc, #20]	; (80020bc <event_timer_set_period+0x2c>)
 80020a8:	2200      	movs	r2, #0
 80020aa:	f823 2010 	strh.w	r2, [r3, r0, lsl #1]
 80020ae:	b662      	cpsie	i
 80020b0:	4770      	bx	lr
 80020b2:	bf00      	nop
 80020b4:	20001020 	.word	0x20001020
 80020b8:	20001014 	.word	0x20001014
 80020bc:	2000100c 	.word	0x2000100c

080020c0 <event_timer_wait>:
 80020c0:	b510      	push	{r4, lr}
 80020c2:	4604      	mov	r4, r0
 80020c4:	4a06      	ldr	r2, [pc, #24]	; (80020e0 <event_timer_wait+0x20>)
 80020c6:	f832 3014 	ldrh.w	r3, [r2, r4, lsl #1]
 80020ca:	b29b      	uxth	r3, r3
 80020cc:	b913      	cbnz	r3, 80020d4 <event_timer_wait+0x14>
 80020ce:	f000 faf3 	bl	80026b8 <sleep>
 80020d2:	e7f7      	b.n	80020c4 <event_timer_wait+0x4>
 80020d4:	b672      	cpsid	i
 80020d6:	2300      	movs	r3, #0
 80020d8:	f822 3014 	strh.w	r3, [r2, r4, lsl #1]
 80020dc:	b662      	cpsie	i
 80020de:	bd10      	pop	{r4, pc}
 80020e0:	2000100c 	.word	0x2000100c

080020e4 <USART_Init>:
 80020e4:	b530      	push	{r4, r5, lr}
 80020e6:	4604      	mov	r4, r0
 80020e8:	b099      	sub	sp, #100	; 0x64
 80020ea:	460d      	mov	r5, r1
 80020ec:	bf00      	nop
 80020ee:	bf00      	nop
 80020f0:	bf00      	nop
 80020f2:	bf00      	nop
 80020f4:	bf00      	nop
 80020f6:	bf00      	nop
 80020f8:	bf00      	nop
 80020fa:	6803      	ldr	r3, [r0, #0]
 80020fc:	f023 0301 	bic.w	r3, r3, #1
 8002100:	6003      	str	r3, [r0, #0]
 8002102:	6843      	ldr	r3, [r0, #4]
 8002104:	f423 5240 	bic.w	r2, r3, #12288	; 0x3000
 8002108:	688b      	ldr	r3, [r1, #8]
 800210a:	68c9      	ldr	r1, [r1, #12]
 800210c:	4313      	orrs	r3, r2
 800210e:	6043      	str	r3, [r0, #4]
 8002110:	686a      	ldr	r2, [r5, #4]
 8002112:	6803      	ldr	r3, [r0, #0]
 8002114:	4311      	orrs	r1, r2
 8002116:	692a      	ldr	r2, [r5, #16]
 8002118:	f423 53b0 	bic.w	r3, r3, #5632	; 0x1600
 800211c:	430a      	orrs	r2, r1
 800211e:	f023 030c 	bic.w	r3, r3, #12
 8002122:	4313      	orrs	r3, r2
 8002124:	6003      	str	r3, [r0, #0]
 8002126:	6883      	ldr	r3, [r0, #8]
 8002128:	f423 7240 	bic.w	r2, r3, #768	; 0x300
 800212c:	696b      	ldr	r3, [r5, #20]
 800212e:	4313      	orrs	r3, r2
 8002130:	6083      	str	r3, [r0, #8]
 8002132:	a801      	add	r0, sp, #4
 8002134:	f7ff fc84 	bl	8001a40 <RCC_GetClocksFreq>
 8002138:	4b17      	ldr	r3, [pc, #92]	; (8002198 <USART_Init+0xb4>)
 800213a:	429c      	cmp	r4, r3
 800213c:	d101      	bne.n	8002142 <USART_Init+0x5e>
 800213e:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8002140:	e00e      	b.n	8002160 <USART_Init+0x7c>
 8002142:	4b16      	ldr	r3, [pc, #88]	; (800219c <USART_Init+0xb8>)
 8002144:	429c      	cmp	r4, r3
 8002146:	d101      	bne.n	800214c <USART_Init+0x68>
 8002148:	9b10      	ldr	r3, [sp, #64]	; 0x40
 800214a:	e009      	b.n	8002160 <USART_Init+0x7c>
 800214c:	4b14      	ldr	r3, [pc, #80]	; (80021a0 <USART_Init+0xbc>)
 800214e:	429c      	cmp	r4, r3
 8002150:	d101      	bne.n	8002156 <USART_Init+0x72>
 8002152:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8002154:	e004      	b.n	8002160 <USART_Init+0x7c>
 8002156:	4b13      	ldr	r3, [pc, #76]	; (80021a4 <USART_Init+0xc0>)
 8002158:	429c      	cmp	r4, r3
 800215a:	bf0c      	ite	eq
 800215c:	9b12      	ldreq	r3, [sp, #72]	; 0x48
 800215e:	9b13      	ldrne	r3, [sp, #76]	; 0x4c
 8002160:	6822      	ldr	r2, [r4, #0]
 8002162:	6829      	ldr	r1, [r5, #0]
 8002164:	f412 4f00 	tst.w	r2, #32768	; 0x8000
 8002168:	bf18      	it	ne
 800216a:	005b      	lslne	r3, r3, #1
 800216c:	fbb3 f2f1 	udiv	r2, r3, r1
 8002170:	fb01 3312 	mls	r3, r1, r2, r3
 8002174:	ebb3 0f51 	cmp.w	r3, r1, lsr #1
 8002178:	6823      	ldr	r3, [r4, #0]
 800217a:	bf28      	it	cs
 800217c:	3201      	addcs	r2, #1
 800217e:	041b      	lsls	r3, r3, #16
 8002180:	bf41      	itttt	mi
 8002182:	f64f 73f0 	movwmi	r3, #65520	; 0xfff0
 8002186:	f3c2 0142 	ubfxmi	r1, r2, #1, #3
 800218a:	4013      	andmi	r3, r2
 800218c:	ea41 0203 	orrmi.w	r2, r1, r3
 8002190:	b292      	uxth	r2, r2
 8002192:	81a2      	strh	r2, [r4, #12]
 8002194:	b019      	add	sp, #100	; 0x64
 8002196:	bd30      	pop	{r4, r5, pc}
 8002198:	40013800 	.word	0x40013800
 800219c:	40004400 	.word	0x40004400
 80021a0:	40004800 	.word	0x40004800
 80021a4:	40004c00 	.word	0x40004c00

080021a8 <USART_Cmd>:
 80021a8:	bf00      	nop
 80021aa:	bf00      	nop
 80021ac:	6803      	ldr	r3, [r0, #0]
 80021ae:	b111      	cbz	r1, 80021b6 <USART_Cmd+0xe>
 80021b0:	f043 0301 	orr.w	r3, r3, #1
 80021b4:	e001      	b.n	80021ba <USART_Cmd+0x12>
 80021b6:	f023 0301 	bic.w	r3, r3, #1
 80021ba:	6003      	str	r3, [r0, #0]
 80021bc:	4770      	bx	lr

080021be <USART_ReceiveData>:
 80021be:	bf00      	nop
 80021c0:	8c80      	ldrh	r0, [r0, #36]	; 0x24
 80021c2:	f3c0 0008 	ubfx	r0, r0, #0, #9
 80021c6:	4770      	bx	lr

080021c8 <USART_ITConfig>:
 80021c8:	b510      	push	{r4, lr}
 80021ca:	bf00      	nop
 80021cc:	bf00      	nop
 80021ce:	bf00      	nop
 80021d0:	f3c1 2407 	ubfx	r4, r1, #8, #8
 80021d4:	2301      	movs	r3, #1
 80021d6:	b2c9      	uxtb	r1, r1
 80021d8:	2c02      	cmp	r4, #2
 80021da:	fa03 f301 	lsl.w	r3, r3, r1
 80021de:	d101      	bne.n	80021e4 <USART_ITConfig+0x1c>
 80021e0:	3004      	adds	r0, #4
 80021e2:	e002      	b.n	80021ea <USART_ITConfig+0x22>
 80021e4:	2c03      	cmp	r4, #3
 80021e6:	bf08      	it	eq
 80021e8:	3008      	addeq	r0, #8
 80021ea:	b112      	cbz	r2, 80021f2 <USART_ITConfig+0x2a>
 80021ec:	6802      	ldr	r2, [r0, #0]
 80021ee:	4313      	orrs	r3, r2
 80021f0:	e002      	b.n	80021f8 <USART_ITConfig+0x30>
 80021f2:	6802      	ldr	r2, [r0, #0]
 80021f4:	ea22 0303 	bic.w	r3, r2, r3
 80021f8:	6003      	str	r3, [r0, #0]
 80021fa:	bd10      	pop	{r4, pc}

080021fc <USART_GetITStatus>:
 80021fc:	b510      	push	{r4, lr}
 80021fe:	bf00      	nop
 8002200:	bf00      	nop
 8002202:	f3c1 2207 	ubfx	r2, r1, #8, #8
 8002206:	b2cc      	uxtb	r4, r1
 8002208:	2301      	movs	r3, #1
 800220a:	2a01      	cmp	r2, #1
 800220c:	fa03 f304 	lsl.w	r3, r3, r4
 8002210:	d101      	bne.n	8002216 <USART_GetITStatus+0x1a>
 8002212:	6802      	ldr	r2, [r0, #0]
 8002214:	e003      	b.n	800221e <USART_GetITStatus+0x22>
 8002216:	2a02      	cmp	r2, #2
 8002218:	bf0c      	ite	eq
 800221a:	6842      	ldreq	r2, [r0, #4]
 800221c:	6882      	ldrne	r2, [r0, #8]
 800221e:	4013      	ands	r3, r2
 8002220:	69c2      	ldr	r2, [r0, #28]
 8002222:	b13b      	cbz	r3, 8002234 <USART_GetITStatus+0x38>
 8002224:	0c09      	lsrs	r1, r1, #16
 8002226:	2301      	movs	r3, #1
 8002228:	408b      	lsls	r3, r1
 800222a:	4213      	tst	r3, r2
 800222c:	bf14      	ite	ne
 800222e:	2001      	movne	r0, #1
 8002230:	2000      	moveq	r0, #0
 8002232:	bd10      	pop	{r4, pc}
 8002234:	4618      	mov	r0, r3
 8002236:	bd10      	pop	{r4, pc}

08002238 <USART_ClearITPendingBit>:
 8002238:	bf00      	nop
 800223a:	bf00      	nop
 800223c:	2301      	movs	r3, #1
 800223e:	0c09      	lsrs	r1, r1, #16
 8002240:	408b      	lsls	r3, r1
 8002242:	6203      	str	r3, [r0, #32]
 8002244:	4770      	bx	lr
	...

08002248 <uart_write>:
 8002248:	4b04      	ldr	r3, [pc, #16]	; (800225c <uart_write+0x14>)
 800224a:	69da      	ldr	r2, [r3, #28]
 800224c:	0612      	lsls	r2, r2, #24
 800224e:	d401      	bmi.n	8002254 <uart_write+0xc>
 8002250:	bf00      	nop
 8002252:	e7f9      	b.n	8002248 <uart_write>
 8002254:	b280      	uxth	r0, r0
 8002256:	8518      	strh	r0, [r3, #40]	; 0x28
 8002258:	4770      	bx	lr
 800225a:	bf00      	nop
 800225c:	40013800 	.word	0x40013800

08002260 <uart_init>:
 8002260:	b530      	push	{r4, r5, lr}
 8002262:	4b2c      	ldr	r3, [pc, #176]	; (8002314 <uart_init+0xb4>)
 8002264:	4d2c      	ldr	r5, [pc, #176]	; (8002318 <uart_init+0xb8>)
 8002266:	2400      	movs	r4, #0
 8002268:	601c      	str	r4, [r3, #0]
 800226a:	4b2c      	ldr	r3, [pc, #176]	; (800231c <uart_init+0xbc>)
 800226c:	b08b      	sub	sp, #44	; 0x2c
 800226e:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 8002272:	2101      	movs	r1, #1
 8002274:	601c      	str	r4, [r3, #0]
 8002276:	f7ff fd59 	bl	8001d2c <RCC_AHBPeriphClockCmd>
 800227a:	f44f 4080 	mov.w	r0, #16384	; 0x4000
 800227e:	2101      	movs	r1, #1
 8002280:	f7ff fd62 	bl	8001d48 <RCC_APB2PeriphClockCmd>
 8002284:	f44f 63c0 	mov.w	r3, #1536	; 0x600
 8002288:	9302      	str	r3, [sp, #8]
 800228a:	2302      	movs	r3, #2
 800228c:	f88d 300c 	strb.w	r3, [sp, #12]
 8002290:	a902      	add	r1, sp, #8
 8002292:	2303      	movs	r3, #3
 8002294:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8002298:	f88d 300d 	strb.w	r3, [sp, #13]
 800229c:	f88d 400e 	strb.w	r4, [sp, #14]
 80022a0:	f88d 400f 	strb.w	r4, [sp, #15]
 80022a4:	f000 fb55 	bl	8002952 <GPIO_Init>
 80022a8:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80022ac:	2109      	movs	r1, #9
 80022ae:	2207      	movs	r2, #7
 80022b0:	f000 fb99 	bl	80029e6 <GPIO_PinAFConfig>
 80022b4:	2207      	movs	r2, #7
 80022b6:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80022ba:	210a      	movs	r1, #10
 80022bc:	f000 fb93 	bl	80029e6 <GPIO_PinAFConfig>
 80022c0:	f44f 33e1 	mov.w	r3, #115200	; 0x1c200
 80022c4:	9304      	str	r3, [sp, #16]
 80022c6:	4628      	mov	r0, r5
 80022c8:	230c      	movs	r3, #12
 80022ca:	a904      	add	r1, sp, #16
 80022cc:	9308      	str	r3, [sp, #32]
 80022ce:	9405      	str	r4, [sp, #20]
 80022d0:	9406      	str	r4, [sp, #24]
 80022d2:	9407      	str	r4, [sp, #28]
 80022d4:	9409      	str	r4, [sp, #36]	; 0x24
 80022d6:	f7ff ff05 	bl	80020e4 <USART_Init>
 80022da:	4628      	mov	r0, r5
 80022dc:	2101      	movs	r1, #1
 80022de:	f7ff ff63 	bl	80021a8 <USART_Cmd>
 80022e2:	2201      	movs	r2, #1
 80022e4:	4628      	mov	r0, r5
 80022e6:	490e      	ldr	r1, [pc, #56]	; (8002320 <uart_init+0xc0>)
 80022e8:	f7ff ff6e 	bl	80021c8 <USART_ITConfig>
 80022ec:	2325      	movs	r3, #37	; 0x25
 80022ee:	f88d 4005 	strb.w	r4, [sp, #5]
 80022f2:	f88d 4006 	strb.w	r4, [sp, #6]
 80022f6:	a801      	add	r0, sp, #4
 80022f8:	2401      	movs	r4, #1
 80022fa:	f88d 3004 	strb.w	r3, [sp, #4]
 80022fe:	f88d 4007 	strb.w	r4, [sp, #7]
 8002302:	f000 fadb 	bl	80028bc <NVIC_Init>
 8002306:	4628      	mov	r0, r5
 8002308:	4621      	mov	r1, r4
 800230a:	f7ff ff4d 	bl	80021a8 <USART_Cmd>
 800230e:	b00b      	add	sp, #44	; 0x2c
 8002310:	bd30      	pop	{r4, r5, pc}
 8002312:	bf00      	nop
 8002314:	20001038 	.word	0x20001038
 8002318:	40013800 	.word	0x40013800
 800231c:	2000103c 	.word	0x2000103c
 8002320:	00050105 	.word	0x00050105

08002324 <USART1_IRQHandler>:
 8002324:	b508      	push	{r3, lr}
 8002326:	480d      	ldr	r0, [pc, #52]	; (800235c <USART1_IRQHandler+0x38>)
 8002328:	490d      	ldr	r1, [pc, #52]	; (8002360 <USART1_IRQHandler+0x3c>)
 800232a:	f7ff ff67 	bl	80021fc <USART_GetITStatus>
 800232e:	b178      	cbz	r0, 8002350 <USART1_IRQHandler+0x2c>
 8002330:	480a      	ldr	r0, [pc, #40]	; (800235c <USART1_IRQHandler+0x38>)
 8002332:	f7ff ff44 	bl	80021be <USART_ReceiveData>
 8002336:	4b0b      	ldr	r3, [pc, #44]	; (8002364 <USART1_IRQHandler+0x40>)
 8002338:	490b      	ldr	r1, [pc, #44]	; (8002368 <USART1_IRQHandler+0x44>)
 800233a:	681a      	ldr	r2, [r3, #0]
 800233c:	b2c0      	uxtb	r0, r0
 800233e:	5488      	strb	r0, [r1, r2]
 8002340:	681a      	ldr	r2, [r3, #0]
 8002342:	3201      	adds	r2, #1
 8002344:	601a      	str	r2, [r3, #0]
 8002346:	681a      	ldr	r2, [r3, #0]
 8002348:	2a0f      	cmp	r2, #15
 800234a:	bf84      	itt	hi
 800234c:	2200      	movhi	r2, #0
 800234e:	601a      	strhi	r2, [r3, #0]
 8002350:	4802      	ldr	r0, [pc, #8]	; (800235c <USART1_IRQHandler+0x38>)
 8002352:	4903      	ldr	r1, [pc, #12]	; (8002360 <USART1_IRQHandler+0x3c>)
 8002354:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8002358:	f7ff bf6e 	b.w	8002238 <USART_ClearITPendingBit>
 800235c:	40013800 	.word	0x40013800
 8002360:	00050105 	.word	0x00050105
 8002364:	20001038 	.word	0x20001038
 8002368:	20001028 	.word	0x20001028

0800236c <i2c_delay>:
 800236c:	bf00      	nop
 800236e:	bf00      	nop
 8002370:	bf00      	nop
 8002372:	bf00      	nop
 8002374:	4770      	bx	lr
	...

08002378 <SetLowSDA>:
 8002378:	b537      	push	{r0, r1, r2, r4, r5, lr}
 800237a:	4d0d      	ldr	r5, [pc, #52]	; (80023b0 <SetLowSDA+0x38>)
 800237c:	2301      	movs	r3, #1
 800237e:	2203      	movs	r2, #3
 8002380:	2480      	movs	r4, #128	; 0x80
 8002382:	f88d 3004 	strb.w	r3, [sp, #4]
 8002386:	f88d 3006 	strb.w	r3, [sp, #6]
 800238a:	4628      	mov	r0, r5
 800238c:	2300      	movs	r3, #0
 800238e:	4669      	mov	r1, sp
 8002390:	f88d 2005 	strb.w	r2, [sp, #5]
 8002394:	f88d 3007 	strb.w	r3, [sp, #7]
 8002398:	9400      	str	r4, [sp, #0]
 800239a:	f000 fada 	bl	8002952 <GPIO_Init>
 800239e:	4628      	mov	r0, r5
 80023a0:	4621      	mov	r1, r4
 80023a2:	f000 fb1c 	bl	80029de <GPIO_ResetBits>
 80023a6:	f7ff ffe1 	bl	800236c <i2c_delay>
 80023aa:	b003      	add	sp, #12
 80023ac:	bd30      	pop	{r4, r5, pc}
 80023ae:	bf00      	nop
 80023b0:	48000400 	.word	0x48000400

080023b4 <SetHighSDA>:
 80023b4:	b537      	push	{r0, r1, r2, r4, r5, lr}
 80023b6:	4d0d      	ldr	r5, [pc, #52]	; (80023ec <SetHighSDA+0x38>)
 80023b8:	2203      	movs	r2, #3
 80023ba:	2300      	movs	r3, #0
 80023bc:	2480      	movs	r4, #128	; 0x80
 80023be:	f88d 2005 	strb.w	r2, [sp, #5]
 80023c2:	4628      	mov	r0, r5
 80023c4:	2201      	movs	r2, #1
 80023c6:	4669      	mov	r1, sp
 80023c8:	f88d 3004 	strb.w	r3, [sp, #4]
 80023cc:	f88d 2006 	strb.w	r2, [sp, #6]
 80023d0:	f88d 3007 	strb.w	r3, [sp, #7]
 80023d4:	9400      	str	r4, [sp, #0]
 80023d6:	f000 fabc 	bl	8002952 <GPIO_Init>
 80023da:	4628      	mov	r0, r5
 80023dc:	4621      	mov	r1, r4
 80023de:	f000 fafa 	bl	80029d6 <GPIO_SetBits>
 80023e2:	f7ff ffc3 	bl	800236c <i2c_delay>
 80023e6:	b003      	add	sp, #12
 80023e8:	bd30      	pop	{r4, r5, pc}
 80023ea:	bf00      	nop
 80023ec:	48000400 	.word	0x48000400

080023f0 <SetLowSCL>:
 80023f0:	b508      	push	{r3, lr}
 80023f2:	4804      	ldr	r0, [pc, #16]	; (8002404 <SetLowSCL+0x14>)
 80023f4:	2140      	movs	r1, #64	; 0x40
 80023f6:	f000 faf2 	bl	80029de <GPIO_ResetBits>
 80023fa:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80023fe:	f7ff bfb5 	b.w	800236c <i2c_delay>
 8002402:	bf00      	nop
 8002404:	48000400 	.word	0x48000400

08002408 <SetHighSCL>:
 8002408:	b508      	push	{r3, lr}
 800240a:	4804      	ldr	r0, [pc, #16]	; (800241c <SetHighSCL+0x14>)
 800240c:	2140      	movs	r1, #64	; 0x40
 800240e:	f000 fae2 	bl	80029d6 <GPIO_SetBits>
 8002412:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8002416:	f7ff bfa9 	b.w	800236c <i2c_delay>
 800241a:	bf00      	nop
 800241c:	48000400 	.word	0x48000400

08002420 <i2c_0_init>:
 8002420:	b507      	push	{r0, r1, r2, lr}
 8002422:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 8002426:	2101      	movs	r1, #1
 8002428:	f7ff fc80 	bl	8001d2c <RCC_AHBPeriphClockCmd>
 800242c:	23c0      	movs	r3, #192	; 0xc0
 800242e:	9300      	str	r3, [sp, #0]
 8002430:	2301      	movs	r3, #1
 8002432:	2203      	movs	r2, #3
 8002434:	480a      	ldr	r0, [pc, #40]	; (8002460 <i2c_0_init+0x40>)
 8002436:	f88d 3004 	strb.w	r3, [sp, #4]
 800243a:	4669      	mov	r1, sp
 800243c:	f88d 3006 	strb.w	r3, [sp, #6]
 8002440:	2300      	movs	r3, #0
 8002442:	f88d 2005 	strb.w	r2, [sp, #5]
 8002446:	f88d 3007 	strb.w	r3, [sp, #7]
 800244a:	f000 fa82 	bl	8002952 <GPIO_Init>
 800244e:	f7ff ffdb 	bl	8002408 <SetHighSCL>
 8002452:	f7ff ff91 	bl	8002378 <SetLowSDA>
 8002456:	f7ff ffad 	bl	80023b4 <SetHighSDA>
 800245a:	b003      	add	sp, #12
 800245c:	f85d fb04 	ldr.w	pc, [sp], #4
 8002460:	48000400 	.word	0x48000400

08002464 <i2cStart>:
 8002464:	b508      	push	{r3, lr}
 8002466:	f7ff ffcf 	bl	8002408 <SetHighSCL>
 800246a:	f7ff ffa3 	bl	80023b4 <SetHighSDA>
 800246e:	f7ff ffcb 	bl	8002408 <SetHighSCL>
 8002472:	f7ff ff81 	bl	8002378 <SetLowSDA>
 8002476:	f7ff ffbb 	bl	80023f0 <SetLowSCL>
 800247a:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800247e:	f7ff bf99 	b.w	80023b4 <SetHighSDA>

08002482 <i2cStop>:
 8002482:	b508      	push	{r3, lr}
 8002484:	f7ff ffb4 	bl	80023f0 <SetLowSCL>
 8002488:	f7ff ff76 	bl	8002378 <SetLowSDA>
 800248c:	f7ff ffbc 	bl	8002408 <SetHighSCL>
 8002490:	f7ff ff72 	bl	8002378 <SetLowSDA>
 8002494:	f7ff ffb8 	bl	8002408 <SetHighSCL>
 8002498:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800249c:	f7ff bf8a 	b.w	80023b4 <SetHighSDA>

080024a0 <i2cWrite>:
 80024a0:	b538      	push	{r3, r4, r5, lr}
 80024a2:	4605      	mov	r5, r0
 80024a4:	2408      	movs	r4, #8
 80024a6:	f7ff ffa3 	bl	80023f0 <SetLowSCL>
 80024aa:	062b      	lsls	r3, r5, #24
 80024ac:	d502      	bpl.n	80024b4 <i2cWrite+0x14>
 80024ae:	f7ff ff81 	bl	80023b4 <SetHighSDA>
 80024b2:	e001      	b.n	80024b8 <i2cWrite+0x18>
 80024b4:	f7ff ff60 	bl	8002378 <SetLowSDA>
 80024b8:	3c01      	subs	r4, #1
 80024ba:	f7ff ffa5 	bl	8002408 <SetHighSCL>
 80024be:	006d      	lsls	r5, r5, #1
 80024c0:	f014 04ff 	ands.w	r4, r4, #255	; 0xff
 80024c4:	b2ed      	uxtb	r5, r5
 80024c6:	d1ee      	bne.n	80024a6 <i2cWrite+0x6>
 80024c8:	f7ff ff92 	bl	80023f0 <SetLowSCL>
 80024cc:	f7ff ff72 	bl	80023b4 <SetHighSDA>
 80024d0:	f7ff ff9a 	bl	8002408 <SetHighSCL>
 80024d4:	4b05      	ldr	r3, [pc, #20]	; (80024ec <i2cWrite+0x4c>)
 80024d6:	8a1c      	ldrh	r4, [r3, #16]
 80024d8:	b2a4      	uxth	r4, r4
 80024da:	f7ff ff89 	bl	80023f0 <SetLowSCL>
 80024de:	f7ff ff45 	bl	800236c <i2c_delay>
 80024e2:	f084 0080 	eor.w	r0, r4, #128	; 0x80
 80024e6:	f3c0 10c0 	ubfx	r0, r0, #7, #1
 80024ea:	bd38      	pop	{r3, r4, r5, pc}
 80024ec:	48000400 	.word	0x48000400

080024f0 <i2cRead>:
 80024f0:	b570      	push	{r4, r5, r6, lr}
 80024f2:	4606      	mov	r6, r0
 80024f4:	f7ff ff7c 	bl	80023f0 <SetLowSCL>
 80024f8:	f7ff ff5c 	bl	80023b4 <SetHighSDA>
 80024fc:	2508      	movs	r5, #8
 80024fe:	2400      	movs	r4, #0
 8002500:	f7ff ff82 	bl	8002408 <SetHighSCL>
 8002504:	4b0d      	ldr	r3, [pc, #52]	; (800253c <i2cRead+0x4c>)
 8002506:	8a1b      	ldrh	r3, [r3, #16]
 8002508:	0064      	lsls	r4, r4, #1
 800250a:	061b      	lsls	r3, r3, #24
 800250c:	b2e4      	uxtb	r4, r4
 800250e:	bf48      	it	mi
 8002510:	3401      	addmi	r4, #1
 8002512:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 8002516:	bf48      	it	mi
 8002518:	b2e4      	uxtbmi	r4, r4
 800251a:	f7ff ff69 	bl	80023f0 <SetLowSCL>
 800251e:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 8002522:	d1ed      	bne.n	8002500 <i2cRead+0x10>
 8002524:	b10e      	cbz	r6, 800252a <i2cRead+0x3a>
 8002526:	f7ff ff27 	bl	8002378 <SetLowSDA>
 800252a:	f7ff ff6d 	bl	8002408 <SetHighSCL>
 800252e:	f7ff ff5f 	bl	80023f0 <SetLowSCL>
 8002532:	f7ff ff1b 	bl	800236c <i2c_delay>
 8002536:	4620      	mov	r0, r4
 8002538:	bd70      	pop	{r4, r5, r6, pc}
 800253a:	bf00      	nop
 800253c:	48000400 	.word	0x48000400

08002540 <i2c_write_reg>:
 8002540:	b570      	push	{r4, r5, r6, lr}
 8002542:	4606      	mov	r6, r0
 8002544:	460d      	mov	r5, r1
 8002546:	4614      	mov	r4, r2
 8002548:	f7ff ff8c 	bl	8002464 <i2cStart>
 800254c:	4630      	mov	r0, r6
 800254e:	f7ff ffa7 	bl	80024a0 <i2cWrite>
 8002552:	4628      	mov	r0, r5
 8002554:	f7ff ffa4 	bl	80024a0 <i2cWrite>
 8002558:	4620      	mov	r0, r4
 800255a:	f7ff ffa1 	bl	80024a0 <i2cWrite>
 800255e:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8002562:	f7ff bf8e 	b.w	8002482 <i2cStop>

08002566 <i2c_read_reg>:
 8002566:	b538      	push	{r3, r4, r5, lr}
 8002568:	4604      	mov	r4, r0
 800256a:	460d      	mov	r5, r1
 800256c:	f7ff ff7a 	bl	8002464 <i2cStart>
 8002570:	4620      	mov	r0, r4
 8002572:	f7ff ff95 	bl	80024a0 <i2cWrite>
 8002576:	4628      	mov	r0, r5
 8002578:	f7ff ff92 	bl	80024a0 <i2cWrite>
 800257c:	f7ff ff72 	bl	8002464 <i2cStart>
 8002580:	f044 0001 	orr.w	r0, r4, #1
 8002584:	f7ff ff8c 	bl	80024a0 <i2cWrite>
 8002588:	2000      	movs	r0, #0
 800258a:	f7ff ffb1 	bl	80024f0 <i2cRead>
 800258e:	4604      	mov	r4, r0
 8002590:	f7ff ff77 	bl	8002482 <i2cStop>
 8002594:	4620      	mov	r0, r4
 8002596:	bd38      	pop	{r3, r4, r5, pc}

08002598 <SystemInit>:
 8002598:	4a39      	ldr	r2, [pc, #228]	; (8002680 <SystemInit+0xe8>)
 800259a:	f8d2 3088 	ldr.w	r3, [r2, #136]	; 0x88
 800259e:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
 80025a2:	f8c2 3088 	str.w	r3, [r2, #136]	; 0x88
 80025a6:	4b37      	ldr	r3, [pc, #220]	; (8002684 <SystemInit+0xec>)
 80025a8:	681a      	ldr	r2, [r3, #0]
 80025aa:	f042 0201 	orr.w	r2, r2, #1
 80025ae:	601a      	str	r2, [r3, #0]
 80025b0:	6859      	ldr	r1, [r3, #4]
 80025b2:	4a35      	ldr	r2, [pc, #212]	; (8002688 <SystemInit+0xf0>)
 80025b4:	400a      	ands	r2, r1
 80025b6:	605a      	str	r2, [r3, #4]
 80025b8:	681a      	ldr	r2, [r3, #0]
 80025ba:	f022 7284 	bic.w	r2, r2, #17301504	; 0x1080000
 80025be:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
 80025c2:	601a      	str	r2, [r3, #0]
 80025c4:	681a      	ldr	r2, [r3, #0]
 80025c6:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 80025ca:	601a      	str	r2, [r3, #0]
 80025cc:	685a      	ldr	r2, [r3, #4]
 80025ce:	f422 02fe 	bic.w	r2, r2, #8323072	; 0x7f0000
 80025d2:	605a      	str	r2, [r3, #4]
 80025d4:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 80025d6:	f022 020f 	bic.w	r2, r2, #15
 80025da:	62da      	str	r2, [r3, #44]	; 0x2c
 80025dc:	6b19      	ldr	r1, [r3, #48]	; 0x30
 80025de:	4a2b      	ldr	r2, [pc, #172]	; (800268c <SystemInit+0xf4>)
 80025e0:	b082      	sub	sp, #8
 80025e2:	400a      	ands	r2, r1
 80025e4:	631a      	str	r2, [r3, #48]	; 0x30
 80025e6:	2200      	movs	r2, #0
 80025e8:	609a      	str	r2, [r3, #8]
 80025ea:	9200      	str	r2, [sp, #0]
 80025ec:	9201      	str	r2, [sp, #4]
 80025ee:	681a      	ldr	r2, [r3, #0]
 80025f0:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
 80025f4:	601a      	str	r2, [r3, #0]
 80025f6:	681a      	ldr	r2, [r3, #0]
 80025f8:	f402 3200 	and.w	r2, r2, #131072	; 0x20000
 80025fc:	9201      	str	r2, [sp, #4]
 80025fe:	9a00      	ldr	r2, [sp, #0]
 8002600:	3201      	adds	r2, #1
 8002602:	9200      	str	r2, [sp, #0]
 8002604:	9a01      	ldr	r2, [sp, #4]
 8002606:	b91a      	cbnz	r2, 8002610 <SystemInit+0x78>
 8002608:	9a00      	ldr	r2, [sp, #0]
 800260a:	f5b2 4fa0 	cmp.w	r2, #20480	; 0x5000
 800260e:	d1f2      	bne.n	80025f6 <SystemInit+0x5e>
 8002610:	681a      	ldr	r2, [r3, #0]
 8002612:	f412 3200 	ands.w	r2, r2, #131072	; 0x20000
 8002616:	bf18      	it	ne
 8002618:	2201      	movne	r2, #1
 800261a:	9201      	str	r2, [sp, #4]
 800261c:	9a01      	ldr	r2, [sp, #4]
 800261e:	2a01      	cmp	r2, #1
 8002620:	d005      	beq.n	800262e <SystemInit+0x96>
 8002622:	4b17      	ldr	r3, [pc, #92]	; (8002680 <SystemInit+0xe8>)
 8002624:	f04f 6200 	mov.w	r2, #134217728	; 0x8000000
 8002628:	609a      	str	r2, [r3, #8]
 800262a:	b002      	add	sp, #8
 800262c:	4770      	bx	lr
 800262e:	4a18      	ldr	r2, [pc, #96]	; (8002690 <SystemInit+0xf8>)
 8002630:	2112      	movs	r1, #18
 8002632:	6011      	str	r1, [r2, #0]
 8002634:	685a      	ldr	r2, [r3, #4]
 8002636:	605a      	str	r2, [r3, #4]
 8002638:	685a      	ldr	r2, [r3, #4]
 800263a:	605a      	str	r2, [r3, #4]
 800263c:	685a      	ldr	r2, [r3, #4]
 800263e:	f442 6280 	orr.w	r2, r2, #1024	; 0x400
 8002642:	605a      	str	r2, [r3, #4]
 8002644:	685a      	ldr	r2, [r3, #4]
 8002646:	f422 127c 	bic.w	r2, r2, #4128768	; 0x3f0000
 800264a:	605a      	str	r2, [r3, #4]
 800264c:	685a      	ldr	r2, [r3, #4]
 800264e:	f442 12e8 	orr.w	r2, r2, #1900544	; 0x1d0000
 8002652:	605a      	str	r2, [r3, #4]
 8002654:	681a      	ldr	r2, [r3, #0]
 8002656:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
 800265a:	601a      	str	r2, [r3, #0]
 800265c:	6819      	ldr	r1, [r3, #0]
 800265e:	4a09      	ldr	r2, [pc, #36]	; (8002684 <SystemInit+0xec>)
 8002660:	0189      	lsls	r1, r1, #6
 8002662:	d5fb      	bpl.n	800265c <SystemInit+0xc4>
 8002664:	6851      	ldr	r1, [r2, #4]
 8002666:	f021 0103 	bic.w	r1, r1, #3
 800266a:	6051      	str	r1, [r2, #4]
 800266c:	6851      	ldr	r1, [r2, #4]
 800266e:	f041 0102 	orr.w	r1, r1, #2
 8002672:	6051      	str	r1, [r2, #4]
 8002674:	685a      	ldr	r2, [r3, #4]
 8002676:	f002 020c 	and.w	r2, r2, #12
 800267a:	2a08      	cmp	r2, #8
 800267c:	d1fa      	bne.n	8002674 <SystemInit+0xdc>
 800267e:	e7d0      	b.n	8002622 <SystemInit+0x8a>
 8002680:	e000ed00 	.word	0xe000ed00
 8002684:	40021000 	.word	0x40021000
 8002688:	f87fc00c 	.word	0xf87fc00c
 800268c:	ff00fccc 	.word	0xff00fccc
 8002690:	40022000 	.word	0x40022000

08002694 <sys_tick_init>:
 8002694:	4b05      	ldr	r3, [pc, #20]	; (80026ac <sys_tick_init+0x18>)
 8002696:	4a06      	ldr	r2, [pc, #24]	; (80026b0 <sys_tick_init+0x1c>)
 8002698:	605a      	str	r2, [r3, #4]
 800269a:	4a06      	ldr	r2, [pc, #24]	; (80026b4 <sys_tick_init+0x20>)
 800269c:	21f0      	movs	r1, #240	; 0xf0
 800269e:	f882 1023 	strb.w	r1, [r2, #35]	; 0x23
 80026a2:	2200      	movs	r2, #0
 80026a4:	609a      	str	r2, [r3, #8]
 80026a6:	2207      	movs	r2, #7
 80026a8:	601a      	str	r2, [r3, #0]
 80026aa:	4770      	bx	lr
 80026ac:	e000e010 	.word	0xe000e010
 80026b0:	00029040 	.word	0x00029040
 80026b4:	e000ed00 	.word	0xe000ed00

080026b8 <sleep>:
 80026b8:	bf30      	wfi
 80026ba:	4770      	bx	lr

080026bc <sytem_clock_init>:
 80026bc:	f7ff bf6c 	b.w	8002598 <SystemInit>

080026c0 <pwm_set>:
 80026c0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80026c4:	b086      	sub	sp, #24
 80026c6:	2370      	movs	r3, #112	; 0x70
 80026c8:	9301      	str	r3, [sp, #4]
 80026ca:	2301      	movs	r3, #1
 80026cc:	f8ad 3008 	strh.w	r3, [sp, #8]
 80026d0:	2304      	movs	r3, #4
 80026d2:	f8ad 300a 	strh.w	r3, [sp, #10]
 80026d6:	f8df 8064 	ldr.w	r8, [pc, #100]	; 800273c <pwm_set+0x7c>
 80026da:	4c17      	ldr	r4, [pc, #92]	; (8002738 <pwm_set+0x78>)
 80026dc:	2302      	movs	r3, #2
 80026de:	f8ad 3010 	strh.w	r3, [sp, #16]
 80026e2:	2300      	movs	r3, #0
 80026e4:	f8ad 3012 	strh.w	r3, [sp, #18]
 80026e8:	f8ad 3016 	strh.w	r3, [sp, #22]
 80026ec:	f242 7710 	movw	r7, #10000	; 0x2710
 80026f0:	f8d8 3000 	ldr.w	r3, [r8]
 80026f4:	fbb3 f3f7 	udiv	r3, r3, r7
 80026f8:	3b02      	subs	r3, #2
 80026fa:	f44f 7280 	mov.w	r2, #256	; 0x100
 80026fe:	460e      	mov	r6, r1
 8002700:	2564      	movs	r5, #100	; 0x64
 8002702:	a901      	add	r1, sp, #4
 8002704:	4358      	muls	r0, r3
 8002706:	fbb0 f3f5 	udiv	r3, r0, r5
 800270a:	4620      	mov	r0, r4
 800270c:	f8ad 2014 	strh.w	r2, [sp, #20]
 8002710:	9303      	str	r3, [sp, #12]
 8002712:	f7ff fb93 	bl	8001e3c <TIM_OC1Init>
 8002716:	f8d8 1000 	ldr.w	r1, [r8]
 800271a:	fbb1 f1f7 	udiv	r1, r1, r7
 800271e:	3902      	subs	r1, #2
 8002720:	4371      	muls	r1, r6
 8002722:	4620      	mov	r0, r4
 8002724:	fbb1 f1f5 	udiv	r1, r1, r5
 8002728:	9103      	str	r1, [sp, #12]
 800272a:	a901      	add	r1, sp, #4
 800272c:	f7ff fbcc 	bl	8001ec8 <TIM_OC2Init>
 8002730:	b006      	add	sp, #24
 8002732:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8002736:	bf00      	nop
 8002738:	40012c00 	.word	0x40012c00
 800273c:	200000d0 	.word	0x200000d0

08002740 <pwm_init>:
 8002740:	b530      	push	{r4, r5, lr}
 8002742:	f44f 6000 	mov.w	r0, #2048	; 0x800
 8002746:	b087      	sub	sp, #28
 8002748:	2101      	movs	r1, #1
 800274a:	f7ff fafd 	bl	8001d48 <RCC_APB2PeriphClockCmd>
 800274e:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 8002752:	2101      	movs	r1, #1
 8002754:	f7ff faea 	bl	8001d2c <RCC_AHBPeriphClockCmd>
 8002758:	4c1d      	ldr	r4, [pc, #116]	; (80027d0 <pwm_init+0x90>)
 800275a:	4d1e      	ldr	r5, [pc, #120]	; (80027d4 <pwm_init+0x94>)
 800275c:	f44f 43c0 	mov.w	r3, #24576	; 0x6000
 8002760:	9301      	str	r3, [sp, #4]
 8002762:	2302      	movs	r3, #2
 8002764:	f88d 3008 	strb.w	r3, [sp, #8]
 8002768:	4620      	mov	r0, r4
 800276a:	2303      	movs	r3, #3
 800276c:	a901      	add	r1, sp, #4
 800276e:	f88d 3009 	strb.w	r3, [sp, #9]
 8002772:	f000 f8ee 	bl	8002952 <GPIO_Init>
 8002776:	4620      	mov	r0, r4
 8002778:	210d      	movs	r1, #13
 800277a:	2206      	movs	r2, #6
 800277c:	f000 f933 	bl	80029e6 <GPIO_PinAFConfig>
 8002780:	4620      	mov	r0, r4
 8002782:	210e      	movs	r1, #14
 8002784:	2206      	movs	r2, #6
 8002786:	f000 f92e 	bl	80029e6 <GPIO_PinAFConfig>
 800278a:	4b13      	ldr	r3, [pc, #76]	; (80027d8 <pwm_init+0x98>)
 800278c:	2400      	movs	r4, #0
 800278e:	f242 7210 	movw	r2, #10000	; 0x2710
 8002792:	4628      	mov	r0, r5
 8002794:	a903      	add	r1, sp, #12
 8002796:	681b      	ldr	r3, [r3, #0]
 8002798:	fbb3 f3f2 	udiv	r3, r3, r2
 800279c:	3b01      	subs	r3, #1
 800279e:	9304      	str	r3, [sp, #16]
 80027a0:	f8ad 400c 	strh.w	r4, [sp, #12]
 80027a4:	f8ad 400e 	strh.w	r4, [sp, #14]
 80027a8:	f8ad 4014 	strh.w	r4, [sp, #20]
 80027ac:	f8ad 4016 	strh.w	r4, [sp, #22]
 80027b0:	f7ff fae6 	bl	8001d80 <TIM_TimeBaseInit>
 80027b4:	4620      	mov	r0, r4
 80027b6:	4621      	mov	r1, r4
 80027b8:	f7ff ff82 	bl	80026c0 <pwm_set>
 80027bc:	4628      	mov	r0, r5
 80027be:	2101      	movs	r1, #1
 80027c0:	f7ff fb2e 	bl	8001e20 <TIM_Cmd>
 80027c4:	4628      	mov	r0, r5
 80027c6:	2101      	movs	r1, #1
 80027c8:	f7ff fbbc 	bl	8001f44 <TIM_CtrlPWMOutputs>
 80027cc:	b007      	add	sp, #28
 80027ce:	bd30      	pop	{r4, r5, pc}
 80027d0:	48000400 	.word	0x48000400
 80027d4:	40012c00 	.word	0x40012c00
 80027d8:	200000d0 	.word	0x200000d0

080027dc <drv8834_run>:
 80027dc:	1e02      	subs	r2, r0, #0
 80027de:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80027e2:	bfd5      	itete	le
 80027e4:	4252      	negle	r2, r2
 80027e6:	8d03      	ldrhgt	r3, [r0, #40]	; 0x28
 80027e8:	6983      	ldrle	r3, [r0, #24]
 80027ea:	ea6f 4343 	mvngt.w	r3, r3, lsl #17
 80027ee:	bfc5      	ittet	gt
 80027f0:	ea6f 4353 	mvngt.w	r3, r3, lsr #17
 80027f4:	b29b      	uxthgt	r3, r3
 80027f6:	f443 4300 	orrle.w	r3, r3, #32768	; 0x8000
 80027fa:	8503      	strhgt	r3, [r0, #40]	; 0x28
 80027fc:	bfd8      	it	le
 80027fe:	6183      	strle	r3, [r0, #24]
 8002800:	480d      	ldr	r0, [pc, #52]	; (8002838 <drv8834_run+0x5c>)
 8002802:	bfd8      	it	le
 8002804:	b212      	sxthle	r2, r2
 8002806:	2900      	cmp	r1, #0
 8002808:	bfcd      	iteet	gt
 800280a:	8d03      	ldrhgt	r3, [r0, #40]	; 0x28
 800280c:	6983      	ldrle	r3, [r0, #24]
 800280e:	4249      	negle	r1, r1
 8002810:	b29b      	uxthgt	r3, r3
 8002812:	bfd5      	itete	le
 8002814:	b209      	sxthle	r1, r1
 8002816:	f043 0320 	orrgt.w	r3, r3, #32
 800281a:	f043 0320 	orrle.w	r3, r3, #32
 800281e:	8503      	strhgt	r3, [r0, #40]	; 0x28
 8002820:	bfd8      	it	le
 8002822:	6183      	strle	r3, [r0, #24]
 8002824:	2964      	cmp	r1, #100	; 0x64
 8002826:	bfa8      	it	ge
 8002828:	2164      	movge	r1, #100	; 0x64
 800282a:	2a64      	cmp	r2, #100	; 0x64
 800282c:	bfa8      	it	ge
 800282e:	2264      	movge	r2, #100	; 0x64
 8002830:	4608      	mov	r0, r1
 8002832:	4611      	mov	r1, r2
 8002834:	f7ff bf44 	b.w	80026c0 <pwm_set>
 8002838:	48000400 	.word	0x48000400

0800283c <drv8834_init>:
 800283c:	e92d 41f3 	stmdb	sp!, {r0, r1, r4, r5, r6, r7, r8, lr}
 8002840:	4f1d      	ldr	r7, [pc, #116]	; (80028b8 <drv8834_init+0x7c>)
 8002842:	2400      	movs	r4, #0
 8002844:	2601      	movs	r6, #1
 8002846:	2503      	movs	r5, #3
 8002848:	f04f 0810 	mov.w	r8, #16
 800284c:	4638      	mov	r0, r7
 800284e:	4669      	mov	r1, sp
 8002850:	f8cd 8000 	str.w	r8, [sp]
 8002854:	f88d 6004 	strb.w	r6, [sp, #4]
 8002858:	f88d 4006 	strb.w	r4, [sp, #6]
 800285c:	f88d 5005 	strb.w	r5, [sp, #5]
 8002860:	f88d 4007 	strb.w	r4, [sp, #7]
 8002864:	f000 f875 	bl	8002952 <GPIO_Init>
 8002868:	f8a7 8028 	strh.w	r8, [r7, #40]	; 0x28
 800286c:	2320      	movs	r3, #32
 800286e:	4638      	mov	r0, r7
 8002870:	4669      	mov	r1, sp
 8002872:	9300      	str	r3, [sp, #0]
 8002874:	f88d 6004 	strb.w	r6, [sp, #4]
 8002878:	f88d 4006 	strb.w	r4, [sp, #6]
 800287c:	f88d 5005 	strb.w	r5, [sp, #5]
 8002880:	f88d 4007 	strb.w	r4, [sp, #7]
 8002884:	f000 f865 	bl	8002952 <GPIO_Init>
 8002888:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 800288c:	4669      	mov	r1, sp
 800288e:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8002892:	9300      	str	r3, [sp, #0]
 8002894:	f88d 6004 	strb.w	r6, [sp, #4]
 8002898:	f88d 4006 	strb.w	r4, [sp, #6]
 800289c:	f88d 5005 	strb.w	r5, [sp, #5]
 80028a0:	f88d 4007 	strb.w	r4, [sp, #7]
 80028a4:	f000 f855 	bl	8002952 <GPIO_Init>
 80028a8:	4620      	mov	r0, r4
 80028aa:	4621      	mov	r1, r4
 80028ac:	f7ff ff96 	bl	80027dc <drv8834_run>
 80028b0:	b002      	add	sp, #8
 80028b2:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80028b6:	bf00      	nop
 80028b8:	48000400 	.word	0x48000400

080028bc <NVIC_Init>:
 80028bc:	b510      	push	{r4, lr}
 80028be:	bf00      	nop
 80028c0:	bf00      	nop
 80028c2:	bf00      	nop
 80028c4:	78c2      	ldrb	r2, [r0, #3]
 80028c6:	7803      	ldrb	r3, [r0, #0]
 80028c8:	b312      	cbz	r2, 8002910 <NVIC_Init+0x54>
 80028ca:	4a17      	ldr	r2, [pc, #92]	; (8002928 <NVIC_Init+0x6c>)
 80028cc:	68d1      	ldr	r1, [r2, #12]
 80028ce:	7842      	ldrb	r2, [r0, #1]
 80028d0:	43c9      	mvns	r1, r1
 80028d2:	f3c1 2102 	ubfx	r1, r1, #8, #3
 80028d6:	f1c1 0404 	rsb	r4, r1, #4
 80028da:	b2e4      	uxtb	r4, r4
 80028dc:	40a2      	lsls	r2, r4
 80028de:	b2d4      	uxtb	r4, r2
 80028e0:	220f      	movs	r2, #15
 80028e2:	410a      	asrs	r2, r1
 80028e4:	7881      	ldrb	r1, [r0, #2]
 80028e6:	400a      	ands	r2, r1
 80028e8:	4322      	orrs	r2, r4
 80028ea:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
 80028ee:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
 80028f2:	0112      	lsls	r2, r2, #4
 80028f4:	b2d2      	uxtb	r2, r2
 80028f6:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
 80028fa:	7803      	ldrb	r3, [r0, #0]
 80028fc:	2201      	movs	r2, #1
 80028fe:	0959      	lsrs	r1, r3, #5
 8002900:	f003 031f 	and.w	r3, r3, #31
 8002904:	fa02 f303 	lsl.w	r3, r2, r3
 8002908:	4a08      	ldr	r2, [pc, #32]	; (800292c <NVIC_Init+0x70>)
 800290a:	f842 3021 	str.w	r3, [r2, r1, lsl #2]
 800290e:	bd10      	pop	{r4, pc}
 8002910:	095a      	lsrs	r2, r3, #5
 8002912:	2101      	movs	r1, #1
 8002914:	f003 031f 	and.w	r3, r3, #31
 8002918:	4099      	lsls	r1, r3
 800291a:	f102 0320 	add.w	r3, r2, #32
 800291e:	4a03      	ldr	r2, [pc, #12]	; (800292c <NVIC_Init+0x70>)
 8002920:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
 8002924:	bd10      	pop	{r4, pc}
 8002926:	bf00      	nop
 8002928:	e000ed00 	.word	0xe000ed00
 800292c:	e000e100 	.word	0xe000e100

08002930 <lib_low_level_init>:
 8002930:	b508      	push	{r3, lr}
 8002932:	f7ff fec3 	bl	80026bc <sytem_clock_init>
 8002936:	f000 f86b 	bl	8002a10 <gpio_init>
 800293a:	f7ff fc91 	bl	8002260 <uart_init>
 800293e:	f7ff fb11 	bl	8001f64 <timer_init>
 8002942:	f7ff fefd 	bl	8002740 <pwm_init>
 8002946:	f7ff ff79 	bl	800283c <drv8834_init>
 800294a:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800294e:	f7ff bd67 	b.w	8002420 <i2c_0_init>

08002952 <GPIO_Init>:
 8002952:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002954:	bf00      	nop
 8002956:	bf00      	nop
 8002958:	bf00      	nop
 800295a:	bf00      	nop
 800295c:	2300      	movs	r3, #0
 800295e:	680e      	ldr	r6, [r1, #0]
 8002960:	461c      	mov	r4, r3
 8002962:	2501      	movs	r5, #1
 8002964:	40a5      	lsls	r5, r4
 8002966:	ea05 0e06 	and.w	lr, r5, r6
 800296a:	45ae      	cmp	lr, r5
 800296c:	d12d      	bne.n	80029ca <GPIO_Init+0x78>
 800296e:	790f      	ldrb	r7, [r1, #4]
 8002970:	1e7a      	subs	r2, r7, #1
 8002972:	2a01      	cmp	r2, #1
 8002974:	d817      	bhi.n	80029a6 <GPIO_Init+0x54>
 8002976:	bf00      	nop
 8002978:	2203      	movs	r2, #3
 800297a:	6885      	ldr	r5, [r0, #8]
 800297c:	409a      	lsls	r2, r3
 800297e:	ea25 0202 	bic.w	r2, r5, r2
 8002982:	6082      	str	r2, [r0, #8]
 8002984:	794d      	ldrb	r5, [r1, #5]
 8002986:	6882      	ldr	r2, [r0, #8]
 8002988:	409d      	lsls	r5, r3
 800298a:	4315      	orrs	r5, r2
 800298c:	6085      	str	r5, [r0, #8]
 800298e:	bf00      	nop
 8002990:	8882      	ldrh	r2, [r0, #4]
 8002992:	b292      	uxth	r2, r2
 8002994:	ea22 020e 	bic.w	r2, r2, lr
 8002998:	8082      	strh	r2, [r0, #4]
 800299a:	798a      	ldrb	r2, [r1, #6]
 800299c:	8885      	ldrh	r5, [r0, #4]
 800299e:	40a2      	lsls	r2, r4
 80029a0:	432a      	orrs	r2, r5
 80029a2:	b292      	uxth	r2, r2
 80029a4:	8082      	strh	r2, [r0, #4]
 80029a6:	2203      	movs	r2, #3
 80029a8:	6805      	ldr	r5, [r0, #0]
 80029aa:	409a      	lsls	r2, r3
 80029ac:	43d2      	mvns	r2, r2
 80029ae:	4015      	ands	r5, r2
 80029b0:	6005      	str	r5, [r0, #0]
 80029b2:	6805      	ldr	r5, [r0, #0]
 80029b4:	409f      	lsls	r7, r3
 80029b6:	432f      	orrs	r7, r5
 80029b8:	6007      	str	r7, [r0, #0]
 80029ba:	68c7      	ldr	r7, [r0, #12]
 80029bc:	4017      	ands	r7, r2
 80029be:	79ca      	ldrb	r2, [r1, #7]
 80029c0:	fa02 f503 	lsl.w	r5, r2, r3
 80029c4:	ea47 0205 	orr.w	r2, r7, r5
 80029c8:	60c2      	str	r2, [r0, #12]
 80029ca:	3401      	adds	r4, #1
 80029cc:	2c10      	cmp	r4, #16
 80029ce:	f103 0302 	add.w	r3, r3, #2
 80029d2:	d1c6      	bne.n	8002962 <GPIO_Init+0x10>
 80029d4:	bdf0      	pop	{r4, r5, r6, r7, pc}

080029d6 <GPIO_SetBits>:
 80029d6:	bf00      	nop
 80029d8:	bf00      	nop
 80029da:	6181      	str	r1, [r0, #24]
 80029dc:	4770      	bx	lr

080029de <GPIO_ResetBits>:
 80029de:	bf00      	nop
 80029e0:	bf00      	nop
 80029e2:	8501      	strh	r1, [r0, #40]	; 0x28
 80029e4:	4770      	bx	lr

080029e6 <GPIO_PinAFConfig>:
 80029e6:	b510      	push	{r4, lr}
 80029e8:	bf00      	nop
 80029ea:	bf00      	nop
 80029ec:	bf00      	nop
 80029ee:	f001 0307 	and.w	r3, r1, #7
 80029f2:	08c9      	lsrs	r1, r1, #3
 80029f4:	eb00 0081 	add.w	r0, r0, r1, lsl #2
 80029f8:	009b      	lsls	r3, r3, #2
 80029fa:	6a04      	ldr	r4, [r0, #32]
 80029fc:	210f      	movs	r1, #15
 80029fe:	4099      	lsls	r1, r3
 8002a00:	ea24 0101 	bic.w	r1, r4, r1
 8002a04:	6201      	str	r1, [r0, #32]
 8002a06:	6a01      	ldr	r1, [r0, #32]
 8002a08:	409a      	lsls	r2, r3
 8002a0a:	430a      	orrs	r2, r1
 8002a0c:	6202      	str	r2, [r0, #32]
 8002a0e:	bd10      	pop	{r4, pc}

08002a10 <gpio_init>:
 8002a10:	e92d 41f3 	stmdb	sp!, {r0, r1, r4, r5, r6, r7, r8, lr}
 8002a14:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 8002a18:	2101      	movs	r1, #1
 8002a1a:	f7ff f987 	bl	8001d2c <RCC_AHBPeriphClockCmd>
 8002a1e:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 8002a22:	2101      	movs	r1, #1
 8002a24:	f7ff f982 	bl	8001d2c <RCC_AHBPeriphClockCmd>
 8002a28:	f44f 2000 	mov.w	r0, #524288	; 0x80000
 8002a2c:	2101      	movs	r1, #1
 8002a2e:	f7ff f97d 	bl	8001d2c <RCC_AHBPeriphClockCmd>
 8002a32:	2400      	movs	r4, #0
 8002a34:	2603      	movs	r6, #3
 8002a36:	f44f 4500 	mov.w	r5, #32768	; 0x8000
 8002a3a:	f04f 0801 	mov.w	r8, #1
 8002a3e:	4669      	mov	r1, sp
 8002a40:	481a      	ldr	r0, [pc, #104]	; (8002aac <gpio_init+0x9c>)
 8002a42:	9500      	str	r5, [sp, #0]
 8002a44:	f88d 8004 	strb.w	r8, [sp, #4]
 8002a48:	f88d 4006 	strb.w	r4, [sp, #6]
 8002a4c:	f88d 6005 	strb.w	r6, [sp, #5]
 8002a50:	f88d 4007 	strb.w	r4, [sp, #7]
 8002a54:	f7ff ff7d 	bl	8002952 <GPIO_Init>
 8002a58:	f44f 7300 	mov.w	r3, #512	; 0x200
 8002a5c:	4669      	mov	r1, sp
 8002a5e:	4813      	ldr	r0, [pc, #76]	; (8002aac <gpio_init+0x9c>)
 8002a60:	9300      	str	r3, [sp, #0]
 8002a62:	4f13      	ldr	r7, [pc, #76]	; (8002ab0 <gpio_init+0xa0>)
 8002a64:	f88d 4004 	strb.w	r4, [sp, #4]
 8002a68:	f88d 6005 	strb.w	r6, [sp, #5]
 8002a6c:	f88d 4007 	strb.w	r4, [sp, #7]
 8002a70:	f7ff ff6f 	bl	8002952 <GPIO_Init>
 8002a74:	f44f 6380 	mov.w	r3, #1024	; 0x400
 8002a78:	9300      	str	r3, [sp, #0]
 8002a7a:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8002a7e:	2302      	movs	r3, #2
 8002a80:	4669      	mov	r1, sp
 8002a82:	f88d 3007 	strb.w	r3, [sp, #7]
 8002a86:	603c      	str	r4, [r7, #0]
 8002a88:	f88d 4004 	strb.w	r4, [sp, #4]
 8002a8c:	f88d 6005 	strb.w	r6, [sp, #5]
 8002a90:	f7ff ff5f 	bl	8002952 <GPIO_Init>
 8002a94:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8002a98:	8a1b      	ldrh	r3, [r3, #16]
 8002a9a:	055b      	lsls	r3, r3, #21
 8002a9c:	4b03      	ldr	r3, [pc, #12]	; (8002aac <gpio_init+0x9c>)
 8002a9e:	bf48      	it	mi
 8002aa0:	f8c7 8000 	strmi.w	r8, [r7]
 8002aa4:	619d      	str	r5, [r3, #24]
 8002aa6:	b002      	add	sp, #8
 8002aa8:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8002aac:	48000400 	.word	0x48000400
 8002ab0:	20001040 	.word	0x20001040

08002ab4 <led_on>:
 8002ab4:	0403      	lsls	r3, r0, #16
 8002ab6:	bf42      	ittt	mi
 8002ab8:	4b02      	ldrmi	r3, [pc, #8]	; (8002ac4 <led_on+0x10>)
 8002aba:	f44f 4200 	movmi.w	r2, #32768	; 0x8000
 8002abe:	619a      	strmi	r2, [r3, #24]
 8002ac0:	4770      	bx	lr
 8002ac2:	bf00      	nop
 8002ac4:	48000400 	.word	0x48000400

08002ac8 <led_off>:
 8002ac8:	0403      	lsls	r3, r0, #16
 8002aca:	bf42      	ittt	mi
 8002acc:	4b02      	ldrmi	r3, [pc, #8]	; (8002ad8 <led_off+0x10>)
 8002ace:	f44f 4200 	movmi.w	r2, #32768	; 0x8000
 8002ad2:	851a      	strhmi	r2, [r3, #40]	; 0x28
 8002ad4:	4770      	bx	lr
 8002ad6:	bf00      	nop
 8002ad8:	48000400 	.word	0x48000400

08002adc <get_key>:
 8002adc:	4b02      	ldr	r3, [pc, #8]	; (8002ae8 <get_key+0xc>)
 8002ade:	8a18      	ldrh	r0, [r3, #16]
 8002ae0:	43c0      	mvns	r0, r0
 8002ae2:	f400 7000 	and.w	r0, r0, #512	; 0x200
 8002ae6:	4770      	bx	lr
 8002ae8:	48000400 	.word	0x48000400

08002aec <get_mode_jumper>:
 8002aec:	4b01      	ldr	r3, [pc, #4]	; (8002af4 <get_mode_jumper+0x8>)
 8002aee:	6818      	ldr	r0, [r3, #0]
 8002af0:	4770      	bx	lr
 8002af2:	bf00      	nop
 8002af4:	20001040 	.word	0x20001040

08002af8 <Default_Handler>:
 8002af8:	4668      	mov	r0, sp
 8002afa:	f020 0107 	bic.w	r1, r0, #7
 8002afe:	468d      	mov	sp, r1
 8002b00:	bf00      	nop
 8002b02:	e7fd      	b.n	8002b00 <Default_Handler+0x8>

08002b04 <HardFault_Handler>:
 8002b04:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8002b08:	f7ff ffd4 	bl	8002ab4 <led_on>
 8002b0c:	4b06      	ldr	r3, [pc, #24]	; (8002b28 <HardFault_Handler+0x24>)
 8002b0e:	3b01      	subs	r3, #1
 8002b10:	d001      	beq.n	8002b16 <HardFault_Handler+0x12>
 8002b12:	bf00      	nop
 8002b14:	e7fb      	b.n	8002b0e <HardFault_Handler+0xa>
 8002b16:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8002b1a:	f7ff ffd5 	bl	8002ac8 <led_off>
 8002b1e:	4b02      	ldr	r3, [pc, #8]	; (8002b28 <HardFault_Handler+0x24>)
 8002b20:	3b01      	subs	r3, #1
 8002b22:	d0ef      	beq.n	8002b04 <HardFault_Handler>
 8002b24:	bf00      	nop
 8002b26:	e7fb      	b.n	8002b20 <HardFault_Handler+0x1c>
 8002b28:	00989681 	.word	0x00989681

08002b2c <_reset_init>:
 8002b2c:	490e      	ldr	r1, [pc, #56]	; (8002b68 <_reset_init+0x3c>)
 8002b2e:	4b0f      	ldr	r3, [pc, #60]	; (8002b6c <_reset_init+0x40>)
 8002b30:	1a5b      	subs	r3, r3, r1
 8002b32:	109b      	asrs	r3, r3, #2
 8002b34:	2200      	movs	r2, #0
 8002b36:	429a      	cmp	r2, r3
 8002b38:	d006      	beq.n	8002b48 <_reset_init+0x1c>
 8002b3a:	480d      	ldr	r0, [pc, #52]	; (8002b70 <_reset_init+0x44>)
 8002b3c:	f850 0022 	ldr.w	r0, [r0, r2, lsl #2]
 8002b40:	f841 0022 	str.w	r0, [r1, r2, lsl #2]
 8002b44:	3201      	adds	r2, #1
 8002b46:	e7f6      	b.n	8002b36 <_reset_init+0xa>
 8002b48:	4a0a      	ldr	r2, [pc, #40]	; (8002b74 <_reset_init+0x48>)
 8002b4a:	f8d2 3088 	ldr.w	r3, [r2, #136]	; 0x88
 8002b4e:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
 8002b52:	f8c2 3088 	str.w	r3, [r2, #136]	; 0x88
 8002b56:	f502 720c 	add.w	r2, r2, #560	; 0x230
 8002b5a:	6853      	ldr	r3, [r2, #4]
 8002b5c:	f023 4340 	bic.w	r3, r3, #3221225472	; 0xc0000000
 8002b60:	6053      	str	r3, [r2, #4]
 8002b62:	f7fe bf59 	b.w	8001a18 <main>
 8002b66:	bf00      	nop
 8002b68:	20000000 	.word	0x20000000
 8002b6c:	20000504 	.word	0x20000504
 8002b70:	0800479c 	.word	0x0800479c
 8002b74:	e000ed00 	.word	0xe000ed00

08002b78 <selfrel_offset31>:
 8002b78:	e5903000 	ldr	r3, [r0]
 8002b7c:	e3130101 	tst	r3, #1073741824	; 0x40000000
 8002b80:	13833102 	orrne	r3, r3, #-2147483648	; 0x80000000
 8002b84:	03c33102 	biceq	r3, r3, #-2147483648	; 0x80000000
 8002b88:	e0800003 	add	r0, r0, r3
 8002b8c:	e12fff1e 	bx	lr

08002b90 <search_EIT_table>:
 8002b90:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8002b94:	e3510000 	cmp	r1, #0
 8002b98:	e24dd00c 	sub	sp, sp, #12
 8002b9c:	0a000029 	beq	8002c48 <search_EIT_table+0xb8>
 8002ba0:	e2413001 	sub	r3, r1, #1
 8002ba4:	e1a07002 	mov	r7, r2
 8002ba8:	e1a05000 	mov	r5, r0
 8002bac:	e1a08003 	mov	r8, r3
 8002bb0:	e3a06000 	mov	r6, #0
 8002bb4:	e58d3004 	str	r3, [sp, #4]
 8002bb8:	e0864008 	add	r4, r6, r8
 8002bbc:	e0844fa4 	add	r4, r4, r4, lsr #31
 8002bc0:	e1a040c4 	asr	r4, r4, #1
 8002bc4:	e1a0a184 	lsl	sl, r4, #3
 8002bc8:	e085b00a 	add	fp, r5, sl
 8002bcc:	e1a0000b 	mov	r0, fp
 8002bd0:	ebffffe8 	bl	8002b78 <selfrel_offset31>
 8002bd4:	e59d3004 	ldr	r3, [sp, #4]
 8002bd8:	e1a09000 	mov	r9, r0
 8002bdc:	e1530004 	cmp	r3, r4
 8002be0:	e28a0008 	add	r0, sl, #8
 8002be4:	e0850000 	add	r0, r5, r0
 8002be8:	0a00000b 	beq	8002c1c <search_EIT_table+0x8c>
 8002bec:	ebffffe1 	bl	8002b78 <selfrel_offset31>
 8002bf0:	e1590007 	cmp	r9, r7
 8002bf4:	e2400001 	sub	r0, r0, #1
 8002bf8:	9a000003 	bls	8002c0c <search_EIT_table+0x7c>
 8002bfc:	e1540006 	cmp	r4, r6
 8002c00:	0a00000b 	beq	8002c34 <search_EIT_table+0xa4>
 8002c04:	e2448001 	sub	r8, r4, #1
 8002c08:	eaffffea 	b	8002bb8 <search_EIT_table+0x28>
 8002c0c:	e1500007 	cmp	r0, r7
 8002c10:	2a000003 	bcs	8002c24 <search_EIT_table+0x94>
 8002c14:	e2846001 	add	r6, r4, #1
 8002c18:	eaffffe6 	b	8002bb8 <search_EIT_table+0x28>
 8002c1c:	e1590007 	cmp	r9, r7
 8002c20:	8afffff5 	bhi	8002bfc <search_EIT_table+0x6c>
 8002c24:	e1a0000b 	mov	r0, fp
 8002c28:	e28dd00c 	add	sp, sp, #12
 8002c2c:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8002c30:	e12fff1e 	bx	lr
 8002c34:	e3a0b000 	mov	fp, #0
 8002c38:	e1a0000b 	mov	r0, fp
 8002c3c:	e28dd00c 	add	sp, sp, #12
 8002c40:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8002c44:	e12fff1e 	bx	lr
 8002c48:	e1a0b001 	mov	fp, r1
 8002c4c:	e1a0000b 	mov	r0, fp
 8002c50:	e28dd00c 	add	sp, sp, #12
 8002c54:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8002c58:	e12fff1e 	bx	lr

08002c5c <__gnu_unwind_get_pr_addr>:
 8002c5c:	e3500001 	cmp	r0, #1
 8002c60:	0a000006 	beq	8002c80 <__gnu_unwind_get_pr_addr+0x24>
 8002c64:	e3500002 	cmp	r0, #2
 8002c68:	0a000006 	beq	8002c88 <__gnu_unwind_get_pr_addr+0x2c>
 8002c6c:	e59f301c 	ldr	r3, [pc, #28]	; 8002c90 <__gnu_unwind_get_pr_addr+0x34>
 8002c70:	e3500000 	cmp	r0, #0
 8002c74:	01a00003 	moveq	r0, r3
 8002c78:	13a00000 	movne	r0, #0
 8002c7c:	e12fff1e 	bx	lr
 8002c80:	e59f000c 	ldr	r0, [pc, #12]	; 8002c94 <__gnu_unwind_get_pr_addr+0x38>
 8002c84:	e12fff1e 	bx	lr
 8002c88:	e59f0008 	ldr	r0, [pc, #8]	; 8002c98 <__gnu_unwind_get_pr_addr+0x3c>
 8002c8c:	e12fff1e 	bx	lr
 8002c90:	08003804 	.word	0x08003804
 8002c94:	0800380c 	.word	0x0800380c
 8002c98:	08003814 	.word	0x08003814

08002c9c <get_eit_entry>:
 8002c9c:	e92d4030 	push	{r4, r5, lr}
 8002ca0:	e59f3118 	ldr	r3, [pc, #280]	; 8002dc0 <get_eit_entry+0x124>
 8002ca4:	e3530000 	cmp	r3, #0
 8002ca8:	e24dd00c 	sub	sp, sp, #12
 8002cac:	e1a04000 	mov	r4, r0
 8002cb0:	e2415002 	sub	r5, r1, #2
 8002cb4:	0a00002d 	beq	8002d70 <get_eit_entry+0xd4>
 8002cb8:	e1a00005 	mov	r0, r5
 8002cbc:	e28d1004 	add	r1, sp, #4
 8002cc0:	e320f000 	nop	{0}
 8002cc4:	e3500000 	cmp	r0, #0
 8002cc8:	0a000021 	beq	8002d54 <get_eit_entry+0xb8>
 8002ccc:	e59d1004 	ldr	r1, [sp, #4]
 8002cd0:	e1a02005 	mov	r2, r5
 8002cd4:	ebffffad 	bl	8002b90 <search_EIT_table>
 8002cd8:	e2505000 	subs	r5, r0, #0
 8002cdc:	0a00001c 	beq	8002d54 <get_eit_entry+0xb8>
 8002ce0:	ebffffa4 	bl	8002b78 <selfrel_offset31>
 8002ce4:	e5953004 	ldr	r3, [r5, #4]
 8002ce8:	e3530001 	cmp	r3, #1
 8002cec:	e5840048 	str	r0, [r4, #72]	; 0x48
 8002cf0:	0a000010 	beq	8002d38 <get_eit_entry+0x9c>
 8002cf4:	e3530000 	cmp	r3, #0
 8002cf8:	ba000023 	blt	8002d8c <get_eit_entry+0xf0>
 8002cfc:	e2850004 	add	r0, r5, #4
 8002d00:	ebffff9c 	bl	8002b78 <selfrel_offset31>
 8002d04:	e3a03000 	mov	r3, #0
 8002d08:	e584004c 	str	r0, [r4, #76]	; 0x4c
 8002d0c:	e5843050 	str	r3, [r4, #80]	; 0x50
 8002d10:	e5903000 	ldr	r3, [r0]
 8002d14:	e3530000 	cmp	r3, #0
 8002d18:	ba000020 	blt	8002da0 <get_eit_entry+0x104>
 8002d1c:	ebffff95 	bl	8002b78 <selfrel_offset31>
 8002d20:	e3a03000 	mov	r3, #0
 8002d24:	e5840010 	str	r0, [r4, #16]
 8002d28:	e1a00003 	mov	r0, r3
 8002d2c:	e28dd00c 	add	sp, sp, #12
 8002d30:	e8bd4030 	pop	{r4, r5, lr}
 8002d34:	e12fff1e 	bx	lr
 8002d38:	e3a03005 	mov	r3, #5
 8002d3c:	e3a02000 	mov	r2, #0
 8002d40:	e1a00003 	mov	r0, r3
 8002d44:	e5842010 	str	r2, [r4, #16]
 8002d48:	e28dd00c 	add	sp, sp, #12
 8002d4c:	e8bd4030 	pop	{r4, r5, lr}
 8002d50:	e12fff1e 	bx	lr
 8002d54:	e3a03009 	mov	r3, #9
 8002d58:	e3a02000 	mov	r2, #0
 8002d5c:	e1a00003 	mov	r0, r3
 8002d60:	e5842010 	str	r2, [r4, #16]
 8002d64:	e28dd00c 	add	sp, sp, #12
 8002d68:	e8bd4030 	pop	{r4, r5, lr}
 8002d6c:	e12fff1e 	bx	lr
 8002d70:	e59f104c 	ldr	r1, [pc, #76]	; 8002dc4 <get_eit_entry+0x128>
 8002d74:	e59f304c 	ldr	r3, [pc, #76]	; 8002dc8 <get_eit_entry+0x12c>
 8002d78:	e1a00001 	mov	r0, r1
 8002d7c:	e0611003 	rsb	r1, r1, r3
 8002d80:	e1a011c1 	asr	r1, r1, #3
 8002d84:	e58d1004 	str	r1, [sp, #4]
 8002d88:	eaffffd0 	b	8002cd0 <get_eit_entry+0x34>
 8002d8c:	e3a03001 	mov	r3, #1
 8002d90:	e2850004 	add	r0, r5, #4
 8002d94:	e584004c 	str	r0, [r4, #76]	; 0x4c
 8002d98:	e5843050 	str	r3, [r4, #80]	; 0x50
 8002d9c:	eaffffdb 	b	8002d10 <get_eit_entry+0x74>
 8002da0:	e1a00c23 	lsr	r0, r3, #24
 8002da4:	e200000f 	and	r0, r0, #15
 8002da8:	ebffffab 	bl	8002c5c <__gnu_unwind_get_pr_addr>
 8002dac:	e3500000 	cmp	r0, #0
 8002db0:	e5840010 	str	r0, [r4, #16]
 8002db4:	03a03009 	moveq	r3, #9
 8002db8:	13a03000 	movne	r3, #0
 8002dbc:	eaffffd9 	b	8002d28 <get_eit_entry+0x8c>
 8002dc0:	00000000 	.word	0x00000000
 8002dc4:	08004644 	.word	0x08004644
 8002dc8:	0800479c 	.word	0x0800479c

08002dcc <restore_non_core_regs>:
 8002dcc:	e5903000 	ldr	r3, [r0]
 8002dd0:	e3130001 	tst	r3, #1
 8002dd4:	e92d4010 	push	{r4, lr}
 8002dd8:	e1a04000 	mov	r4, r0
 8002ddc:	1a000004 	bne	8002df4 <restore_non_core_regs+0x28>
 8002de0:	e3130002 	tst	r3, #2
 8002de4:	e2800048 	add	r0, r0, #72	; 0x48
 8002de8:	0a00000a 	beq	8002e18 <restore_non_core_regs+0x4c>
 8002dec:	eb0003a2 	bl	8003c7c <__gnu_Unwind_Restore_VFP_D>
 8002df0:	e5943000 	ldr	r3, [r4]
 8002df4:	e3130004 	tst	r3, #4
 8002df8:	0a00000a 	beq	8002e28 <restore_non_core_regs+0x5c>
 8002dfc:	e3130008 	tst	r3, #8
 8002e00:	0a00000d 	beq	8002e3c <restore_non_core_regs+0x70>
 8002e04:	e3130010 	tst	r3, #16
 8002e08:	02840e1d 	addeq	r0, r4, #464	; 0x1d0
 8002e0c:	0b0003c4 	bleq	8003d24 <__gnu_Unwind_Restore_WMMXC>
 8002e10:	e8bd4010 	pop	{r4, lr}
 8002e14:	e12fff1e 	bx	lr
 8002e18:	eb000393 	bl	8003c6c <__gnu_Unwind_Restore_VFP>
 8002e1c:	e5943000 	ldr	r3, [r4]
 8002e20:	e3130004 	tst	r3, #4
 8002e24:	1afffff4 	bne	8002dfc <restore_non_core_regs+0x30>
 8002e28:	e28400d0 	add	r0, r4, #208	; 0xd0
 8002e2c:	eb000396 	bl	8003c8c <__gnu_Unwind_Restore_VFP_D_16_to_31>
 8002e30:	e5943000 	ldr	r3, [r4]
 8002e34:	e3130008 	tst	r3, #8
 8002e38:	1afffff1 	bne	8002e04 <restore_non_core_regs+0x38>
 8002e3c:	e2840e15 	add	r0, r4, #336	; 0x150
 8002e40:	eb000395 	bl	8003c9c <__gnu_Unwind_Restore_WMMXD>
 8002e44:	e5943000 	ldr	r3, [r4]
 8002e48:	eaffffed 	b	8002e04 <restore_non_core_regs+0x38>

08002e4c <_Unwind_decode_typeinfo_ptr.isra.0>:
 8002e4c:	e5903000 	ldr	r3, [r0]
 8002e50:	e3530000 	cmp	r3, #0
 8002e54:	10830000 	addne	r0, r3, r0
 8002e58:	01a00003 	moveq	r0, r3
 8002e5c:	e12fff1e 	bx	lr

08002e60 <__gnu_unwind_24bit.isra.1>:
 8002e60:	e3a00009 	mov	r0, #9
 8002e64:	e12fff1e 	bx	lr

08002e68 <_Unwind_DebugHook>:
 8002e68:	e12fff1e 	bx	lr

08002e6c <unwind_phase2>:
 8002e6c:	e92d4070 	push	{r4, r5, r6, lr}
 8002e70:	e1a04000 	mov	r4, r0
 8002e74:	e1a05001 	mov	r5, r1
 8002e78:	ea000009 	b	8002ea4 <unwind_phase2+0x38>
 8002e7c:	e5953040 	ldr	r3, [r5, #64]	; 0x40
 8002e80:	e3a00001 	mov	r0, #1
 8002e84:	e5843014 	str	r3, [r4, #20]
 8002e88:	e1a01004 	mov	r1, r4
 8002e8c:	e1a02005 	mov	r2, r5
 8002e90:	e594c010 	ldr	ip, [r4, #16]
 8002e94:	e1a0e00f 	mov	lr, pc
 8002e98:	e12fff1c 	bx	ip
 8002e9c:	e3500008 	cmp	r0, #8
 8002ea0:	1a000005 	bne	8002ebc <unwind_phase2+0x50>
 8002ea4:	e1a00004 	mov	r0, r4
 8002ea8:	e5951040 	ldr	r1, [r5, #64]	; 0x40
 8002eac:	ebffff7a 	bl	8002c9c <get_eit_entry>
 8002eb0:	e2506000 	subs	r6, r0, #0
 8002eb4:	0afffff0 	beq	8002e7c <unwind_phase2+0x10>
 8002eb8:	eb000509 	bl	80042e4 <abort>
 8002ebc:	e3500007 	cmp	r0, #7
 8002ec0:	1afffffc 	bne	8002eb8 <unwind_phase2+0x4c>
 8002ec4:	e1a00006 	mov	r0, r6
 8002ec8:	e5951040 	ldr	r1, [r5, #64]	; 0x40
 8002ecc:	ebffffe5 	bl	8002e68 <_Unwind_DebugHook>
 8002ed0:	e2850004 	add	r0, r5, #4
 8002ed4:	eb00035d 	bl	8003c50 <__restore_core_regs>

08002ed8 <unwind_phase2_forced>:
 8002ed8:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
 8002edc:	e1a05000 	mov	r5, r0
 8002ee0:	e1a06002 	mov	r6, r2
 8002ee4:	e3a04000 	mov	r4, #0
 8002ee8:	e281e004 	add	lr, r1, #4
 8002eec:	e24ddff2 	sub	sp, sp, #968	; 0x3c8
 8002ef0:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
 8002ef4:	e28dc00c 	add	ip, sp, #12
 8002ef8:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
 8002efc:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
 8002f00:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
 8002f04:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
 8002f08:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
 8002f0c:	e89e000f 	ldm	lr, {r0, r1, r2, r3}
 8002f10:	e1560004 	cmp	r6, r4
 8002f14:	e595800c 	ldr	r8, [r5, #12]
 8002f18:	e5959018 	ldr	r9, [r5, #24]
 8002f1c:	e88c000f 	stm	ip, {r0, r1, r2, r3}
 8002f20:	e1a00005 	mov	r0, r5
 8002f24:	e59d1048 	ldr	r1, [sp, #72]	; 0x48
 8002f28:	e58d4008 	str	r4, [sp, #8]
 8002f2c:	03a06009 	moveq	r6, #9
 8002f30:	13a0600a 	movne	r6, #10
 8002f34:	ebffff58 	bl	8002c9c <get_eit_entry>
 8002f38:	e1a04000 	mov	r4, r0
 8002f3c:	e28d7008 	add	r7, sp, #8
 8002f40:	e3540000 	cmp	r4, #0
 8002f44:	0a00000e 	beq	8002f84 <unwind_phase2_forced+0xac>
 8002f48:	e59d3040 	ldr	r3, [sp, #64]	; 0x40
 8002f4c:	e88d0280 	stm	sp, {r7, r9}
 8002f50:	e58d304c 	str	r3, [sp, #76]	; 0x4c
 8002f54:	e3861010 	orr	r1, r6, #16
 8002f58:	e3a00001 	mov	r0, #1
 8002f5c:	e1a02005 	mov	r2, r5
 8002f60:	e1a03005 	mov	r3, r5
 8002f64:	e1a0e00f 	mov	lr, pc
 8002f68:	e12fff18 	bx	r8
 8002f6c:	e3500000 	cmp	r0, #0
 8002f70:	1a000029 	bne	800301c <unwind_phase2_forced+0x144>
 8002f74:	e1a00004 	mov	r0, r4
 8002f78:	e28ddff2 	add	sp, sp, #968	; 0x3c8
 8002f7c:	e8bd47f0 	pop	{r4, r5, r6, r7, r8, r9, sl, lr}
 8002f80:	e12fff1e 	bx	lr
 8002f84:	e59d3048 	ldr	r3, [sp, #72]	; 0x48
 8002f88:	e1a01007 	mov	r1, r7
 8002f8c:	e5853014 	str	r3, [r5, #20]
 8002f90:	e3a02e1e 	mov	r2, #480	; 0x1e0
 8002f94:	e28d0f7a 	add	r0, sp, #488	; 0x1e8
 8002f98:	eb0004d6 	bl	80042f8 <memcpy>
 8002f9c:	e1a01005 	mov	r1, r5
 8002fa0:	e28d2f7a 	add	r2, sp, #488	; 0x1e8
 8002fa4:	e1a00006 	mov	r0, r6
 8002fa8:	e595c010 	ldr	ip, [r5, #16]
 8002fac:	e1a0e00f 	mov	lr, pc
 8002fb0:	e12fff1c 	bx	ip
 8002fb4:	e59d3220 	ldr	r3, [sp, #544]	; 0x220
 8002fb8:	e1a0a000 	mov	sl, r0
 8002fbc:	e58d304c 	str	r3, [sp, #76]	; 0x4c
 8002fc0:	e88d0280 	stm	sp, {r7, r9}
 8002fc4:	e1a01006 	mov	r1, r6
 8002fc8:	e3a00001 	mov	r0, #1
 8002fcc:	e1a02005 	mov	r2, r5
 8002fd0:	e1a03005 	mov	r3, r5
 8002fd4:	e1a0e00f 	mov	lr, pc
 8002fd8:	e12fff18 	bx	r8
 8002fdc:	e3500000 	cmp	r0, #0
 8002fe0:	1a00000d 	bne	800301c <unwind_phase2_forced+0x144>
 8002fe4:	e1a00007 	mov	r0, r7
 8002fe8:	e28d1f7a 	add	r1, sp, #488	; 0x1e8
 8002fec:	e3a02e1e 	mov	r2, #480	; 0x1e0
 8002ff0:	eb0004c0 	bl	80042f8 <memcpy>
 8002ff4:	e35a0008 	cmp	sl, #8
 8002ff8:	1a000005 	bne	8003014 <unwind_phase2_forced+0x13c>
 8002ffc:	e1a00005 	mov	r0, r5
 8003000:	e59d1048 	ldr	r1, [sp, #72]	; 0x48
 8003004:	ebffff24 	bl	8002c9c <get_eit_entry>
 8003008:	e3a06009 	mov	r6, #9
 800300c:	e1a04000 	mov	r4, r0
 8003010:	eaffffca 	b	8002f40 <unwind_phase2_forced+0x68>
 8003014:	e35a0007 	cmp	sl, #7
 8003018:	0a000003 	beq	800302c <unwind_phase2_forced+0x154>
 800301c:	e3a00009 	mov	r0, #9
 8003020:	e28ddff2 	add	sp, sp, #968	; 0x3c8
 8003024:	e8bd47f0 	pop	{r4, r5, r6, r7, r8, r9, sl, lr}
 8003028:	e12fff1e 	bx	lr
 800302c:	e1a00004 	mov	r0, r4
 8003030:	e59d1048 	ldr	r1, [sp, #72]	; 0x48
 8003034:	ebffff8b 	bl	8002e68 <_Unwind_DebugHook>
 8003038:	e28d000c 	add	r0, sp, #12
 800303c:	eb000303 	bl	8003c50 <__restore_core_regs>

08003040 <_Unwind_GetCFA>:
 8003040:	e5900044 	ldr	r0, [r0, #68]	; 0x44
 8003044:	e12fff1e 	bx	lr

08003048 <__gnu_Unwind_RaiseException>:
 8003048:	e92d40f0 	push	{r4, r5, r6, r7, lr}
 800304c:	e3e05000 	mvn	r5, #0
 8003050:	e591303c 	ldr	r3, [r1, #60]	; 0x3c
 8003054:	e5813040 	str	r3, [r1, #64]	; 0x40
 8003058:	e281e004 	add	lr, r1, #4
 800305c:	e24ddf79 	sub	sp, sp, #484	; 0x1e4
 8003060:	e1a07001 	mov	r7, r1
 8003064:	e1a04000 	mov	r4, r0
 8003068:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
 800306c:	e28dc004 	add	ip, sp, #4
 8003070:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
 8003074:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
 8003078:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
 800307c:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
 8003080:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
 8003084:	e89e000f 	ldm	lr, {r0, r1, r2, r3}
 8003088:	e28d6e1e 	add	r6, sp, #480	; 0x1e0
 800308c:	e88c000f 	stm	ip, {r0, r1, r2, r3}
 8003090:	e52651e0 	str	r5, [r6, #-480]!	; 0xfffffe20
 8003094:	ea000007 	b	80030b8 <__gnu_Unwind_RaiseException+0x70>
 8003098:	e1a01004 	mov	r1, r4
 800309c:	e1a02006 	mov	r2, r6
 80030a0:	e594c010 	ldr	ip, [r4, #16]
 80030a4:	e1a0e00f 	mov	lr, pc
 80030a8:	e12fff1c 	bx	ip
 80030ac:	e3500008 	cmp	r0, #8
 80030b0:	e1a05000 	mov	r5, r0
 80030b4:	1a000008 	bne	80030dc <__gnu_Unwind_RaiseException+0x94>
 80030b8:	e1a00004 	mov	r0, r4
 80030bc:	e59d1040 	ldr	r1, [sp, #64]	; 0x40
 80030c0:	ebfffef5 	bl	8002c9c <get_eit_entry>
 80030c4:	e3500000 	cmp	r0, #0
 80030c8:	0afffff2 	beq	8003098 <__gnu_Unwind_RaiseException+0x50>
 80030cc:	e3a00009 	mov	r0, #9
 80030d0:	e28ddf79 	add	sp, sp, #484	; 0x1e4
 80030d4:	e8bd40f0 	pop	{r4, r5, r6, r7, lr}
 80030d8:	e12fff1e 	bx	lr
 80030dc:	e1a00006 	mov	r0, r6
 80030e0:	ebffff39 	bl	8002dcc <restore_non_core_regs>
 80030e4:	e3550006 	cmp	r5, #6
 80030e8:	1afffff7 	bne	80030cc <__gnu_Unwind_RaiseException+0x84>
 80030ec:	e1a00004 	mov	r0, r4
 80030f0:	e1a01007 	mov	r1, r7
 80030f4:	ebffff5c 	bl	8002e6c <unwind_phase2>

080030f8 <__gnu_Unwind_ForcedUnwind>:
 80030f8:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 80030fc:	e593e03c 	ldr	lr, [r3, #60]	; 0x3c
 8003100:	e580100c 	str	r1, [r0, #12]
 8003104:	e5802018 	str	r2, [r0, #24]
 8003108:	e1a01003 	mov	r1, r3
 800310c:	e583e040 	str	lr, [r3, #64]	; 0x40
 8003110:	e3a02000 	mov	r2, #0
 8003114:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 8003118:	eaffff6e 	b	8002ed8 <unwind_phase2_forced>

0800311c <__gnu_Unwind_Resume>:
 800311c:	e92d4070 	push	{r4, r5, r6, lr}
 8003120:	e590600c 	ldr	r6, [r0, #12]
 8003124:	e5903014 	ldr	r3, [r0, #20]
 8003128:	e3560000 	cmp	r6, #0
 800312c:	e1a04000 	mov	r4, r0
 8003130:	e1a05001 	mov	r5, r1
 8003134:	e5813040 	str	r3, [r1, #64]	; 0x40
 8003138:	0a000002 	beq	8003148 <__gnu_Unwind_Resume+0x2c>
 800313c:	e3a02001 	mov	r2, #1
 8003140:	ebffff64 	bl	8002ed8 <unwind_phase2_forced>
 8003144:	eb000466 	bl	80042e4 <abort>
 8003148:	e3a00002 	mov	r0, #2
 800314c:	e1a01004 	mov	r1, r4
 8003150:	e1a02005 	mov	r2, r5
 8003154:	e594c010 	ldr	ip, [r4, #16]
 8003158:	e1a0e00f 	mov	lr, pc
 800315c:	e12fff1c 	bx	ip
 8003160:	e3500007 	cmp	r0, #7
 8003164:	0a000004 	beq	800317c <__gnu_Unwind_Resume+0x60>
 8003168:	e3500008 	cmp	r0, #8
 800316c:	01a00004 	moveq	r0, r4
 8003170:	01a01005 	moveq	r1, r5
 8003174:	0bffff3c 	bleq	8002e6c <unwind_phase2>
 8003178:	eb000459 	bl	80042e4 <abort>
 800317c:	e1a00006 	mov	r0, r6
 8003180:	e5951040 	ldr	r1, [r5, #64]	; 0x40
 8003184:	ebffff37 	bl	8002e68 <_Unwind_DebugHook>
 8003188:	e2850004 	add	r0, r5, #4
 800318c:	eb0002af 	bl	8003c50 <__restore_core_regs>

08003190 <__gnu_Unwind_Resume_or_Rethrow>:
 8003190:	e590300c 	ldr	r3, [r0, #12]
 8003194:	e3530000 	cmp	r3, #0
 8003198:	1591c03c 	ldrne	ip, [r1, #60]	; 0x3c
 800319c:	13a02000 	movne	r2, #0
 80031a0:	1581c040 	strne	ip, [r1, #64]	; 0x40
 80031a4:	1affff4b 	bne	8002ed8 <unwind_phase2_forced>
 80031a8:	eaffffa6 	b	8003048 <__gnu_Unwind_RaiseException>

080031ac <_Unwind_Complete>:
 80031ac:	e12fff1e 	bx	lr

080031b0 <_Unwind_DeleteException>:
 80031b0:	e5903008 	ldr	r3, [r0, #8]
 80031b4:	e3530000 	cmp	r3, #0
 80031b8:	012fff1e 	bxeq	lr
 80031bc:	e1a01000 	mov	r1, r0
 80031c0:	e3a00001 	mov	r0, #1
 80031c4:	e12fff13 	bx	r3

080031c8 <_Unwind_VRS_Get>:
 80031c8:	e3510004 	cmp	r1, #4
 80031cc:	979ff101 	ldrls	pc, [pc, r1, lsl #2]
 80031d0:	ea000009 	b	80031fc <_Unwind_VRS_Get+0x34>
 80031d4:	080031e8 	.word	0x080031e8
 80031d8:	08003204 	.word	0x08003204
 80031dc:	080031fc 	.word	0x080031fc
 80031e0:	08003204 	.word	0x08003204
 80031e4:	08003204 	.word	0x08003204
 80031e8:	e352000f 	cmp	r2, #15
 80031ec:	93530000 	cmpls	r3, #0
 80031f0:	13a03001 	movne	r3, #1
 80031f4:	03a03000 	moveq	r3, #0
 80031f8:	0a000003 	beq	800320c <_Unwind_VRS_Get+0x44>
 80031fc:	e3a00002 	mov	r0, #2
 8003200:	e12fff1e 	bx	lr
 8003204:	e3a00001 	mov	r0, #1
 8003208:	e12fff1e 	bx	lr
 800320c:	e0802102 	add	r2, r0, r2, lsl #2
 8003210:	e5922004 	ldr	r2, [r2, #4]
 8003214:	e1a00003 	mov	r0, r3
 8003218:	e59d3000 	ldr	r3, [sp]
 800321c:	e5832000 	str	r2, [r3]
 8003220:	e12fff1e 	bx	lr

08003224 <_Unwind_GetGR>:
 8003224:	e1a02001 	mov	r2, r1
 8003228:	e3a01000 	mov	r1, #0
 800322c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 8003230:	e24dd014 	sub	sp, sp, #20
 8003234:	e28dc00c 	add	ip, sp, #12
 8003238:	e1a03001 	mov	r3, r1
 800323c:	e58dc000 	str	ip, [sp]
 8003240:	ebffffe0 	bl	80031c8 <_Unwind_VRS_Get>
 8003244:	e59d000c 	ldr	r0, [sp, #12]
 8003248:	e28dd014 	add	sp, sp, #20
 800324c:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 8003250:	e12fff1e 	bx	lr

08003254 <_Unwind_VRS_Set>:
 8003254:	e3510004 	cmp	r1, #4
 8003258:	979ff101 	ldrls	pc, [pc, r1, lsl #2]
 800325c:	ea000009 	b	8003288 <_Unwind_VRS_Set+0x34>
 8003260:	08003274 	.word	0x08003274
 8003264:	08003290 	.word	0x08003290
 8003268:	08003288 	.word	0x08003288
 800326c:	08003290 	.word	0x08003290
 8003270:	08003290 	.word	0x08003290
 8003274:	e352000f 	cmp	r2, #15
 8003278:	93530000 	cmpls	r3, #0
 800327c:	13a03001 	movne	r3, #1
 8003280:	03a03000 	moveq	r3, #0
 8003284:	0a000003 	beq	8003298 <_Unwind_VRS_Set+0x44>
 8003288:	e3a00002 	mov	r0, #2
 800328c:	e12fff1e 	bx	lr
 8003290:	e3a00001 	mov	r0, #1
 8003294:	e12fff1e 	bx	lr
 8003298:	e59d1000 	ldr	r1, [sp]
 800329c:	e5911000 	ldr	r1, [r1]
 80032a0:	e0802102 	add	r2, r0, r2, lsl #2
 80032a4:	e5821004 	str	r1, [r2, #4]
 80032a8:	e1a00003 	mov	r0, r3
 80032ac:	e12fff1e 	bx	lr

080032b0 <_Unwind_SetGR>:
 80032b0:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 80032b4:	e1a0e001 	mov	lr, r1
 80032b8:	e3a01000 	mov	r1, #0
 80032bc:	e24dd014 	sub	sp, sp, #20
 80032c0:	e28dc010 	add	ip, sp, #16
 80032c4:	e52c2004 	str	r2, [ip, #-4]!
 80032c8:	e1a03001 	mov	r3, r1
 80032cc:	e58dc000 	str	ip, [sp]
 80032d0:	e1a0200e 	mov	r2, lr
 80032d4:	ebffffde 	bl	8003254 <_Unwind_VRS_Set>
 80032d8:	e28dd014 	add	sp, sp, #20
 80032dc:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 80032e0:	e12fff1e 	bx	lr

080032e4 <__gnu_Unwind_Backtrace>:
 80032e4:	e92d4070 	push	{r4, r5, r6, lr}
 80032e8:	e3e04000 	mvn	r4, #0
 80032ec:	e592303c 	ldr	r3, [r2, #60]	; 0x3c
 80032f0:	e5823040 	str	r3, [r2, #64]	; 0x40
 80032f4:	e282c004 	add	ip, r2, #4
 80032f8:	e24ddf8e 	sub	sp, sp, #568	; 0x238
 80032fc:	e1a06000 	mov	r6, r0
 8003300:	e1a05001 	mov	r5, r1
 8003304:	e8bc000f 	ldm	ip!, {r0, r1, r2, r3}
 8003308:	e28de05c 	add	lr, sp, #92	; 0x5c
 800330c:	e8ae000f 	stmia	lr!, {r0, r1, r2, r3}
 8003310:	e8bc000f 	ldm	ip!, {r0, r1, r2, r3}
 8003314:	e8ae000f 	stmia	lr!, {r0, r1, r2, r3}
 8003318:	e8bc000f 	ldm	ip!, {r0, r1, r2, r3}
 800331c:	e8ae000f 	stmia	lr!, {r0, r1, r2, r3}
 8003320:	e89c000f 	ldm	ip, {r0, r1, r2, r3}
 8003324:	e88e000f 	stm	lr, {r0, r1, r2, r3}
 8003328:	e58d4058 	str	r4, [sp, #88]	; 0x58
 800332c:	ea000013 	b	8003380 <__gnu_Unwind_Backtrace+0x9c>
 8003330:	e28d0058 	add	r0, sp, #88	; 0x58
 8003334:	e3a0100c 	mov	r1, #12
 8003338:	e1a0200d 	mov	r2, sp
 800333c:	ebffffdb 	bl	80032b0 <_Unwind_SetGR>
 8003340:	e28d0058 	add	r0, sp, #88	; 0x58
 8003344:	e1a01005 	mov	r1, r5
 8003348:	e1a0e00f 	mov	lr, pc
 800334c:	e12fff16 	bx	r6
 8003350:	e3500000 	cmp	r0, #0
 8003354:	1a00000e 	bne	8003394 <__gnu_Unwind_Backtrace+0xb0>
 8003358:	e3a00008 	mov	r0, #8
 800335c:	e1a0100d 	mov	r1, sp
 8003360:	e28d2058 	add	r2, sp, #88	; 0x58
 8003364:	e59dc010 	ldr	ip, [sp, #16]
 8003368:	e1a0e00f 	mov	lr, pc
 800336c:	e12fff1c 	bx	ip
 8003370:	e2403005 	sub	r3, r0, #5
 8003374:	e31300fb 	tst	r3, #251	; 0xfb
 8003378:	e1a04000 	mov	r4, r0
 800337c:	0a000005 	beq	8003398 <__gnu_Unwind_Backtrace+0xb4>
 8003380:	e1a0000d 	mov	r0, sp
 8003384:	e59d1098 	ldr	r1, [sp, #152]	; 0x98
 8003388:	ebfffe43 	bl	8002c9c <get_eit_entry>
 800338c:	e3500000 	cmp	r0, #0
 8003390:	0affffe6 	beq	8003330 <__gnu_Unwind_Backtrace+0x4c>
 8003394:	e3a04009 	mov	r4, #9
 8003398:	e28d0058 	add	r0, sp, #88	; 0x58
 800339c:	ebfffe8a 	bl	8002dcc <restore_non_core_regs>
 80033a0:	e1a00004 	mov	r0, r4
 80033a4:	e28ddf8e 	add	sp, sp, #568	; 0x238
 80033a8:	e8bd4070 	pop	{r4, r5, r6, lr}
 80033ac:	e12fff1e 	bx	lr

080033b0 <__gnu_unwind_pr_common>:
 80033b0:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80033b4:	e591604c 	ldr	r6, [r1, #76]	; 0x4c
 80033b8:	e1a05001 	mov	r5, r1
 80033bc:	e5961000 	ldr	r1, [r6]
 80033c0:	e24dd024 	sub	sp, sp, #36	; 0x24
 80033c4:	e2866004 	add	r6, r6, #4
 80033c8:	e2537000 	subs	r7, r3, #0
 80033cc:	e58d0004 	str	r0, [sp, #4]
 80033d0:	e1a09002 	mov	r9, r2
 80033d4:	e58d1014 	str	r1, [sp, #20]
 80033d8:	e58d6018 	str	r6, [sp, #24]
 80033dc:	e2008003 	and	r8, r0, #3
 80033e0:	1a000076 	bne	80035c0 <__gnu_unwind_pr_common+0x210>
 80033e4:	e3a03003 	mov	r3, #3
 80033e8:	e1a01401 	lsl	r1, r1, #8
 80033ec:	e58d1014 	str	r1, [sp, #20]
 80033f0:	e5cd701d 	strb	r7, [sp, #29]
 80033f4:	e5cd301c 	strb	r3, [sp, #28]
 80033f8:	e5953050 	ldr	r3, [r5, #80]	; 0x50
 80033fc:	e3580002 	cmp	r8, #2
 8003400:	05956038 	ldreq	r6, [r5, #56]	; 0x38
 8003404:	e2133001 	ands	r3, r3, #1
 8003408:	1a000061 	bne	8003594 <__gnu_unwind_pr_common+0x1e4>
 800340c:	e58d3000 	str	r3, [sp]
 8003410:	e2853058 	add	r3, r5, #88	; 0x58
 8003414:	e58d3008 	str	r3, [sp, #8]
 8003418:	e5964000 	ldr	r4, [r6]
 800341c:	e3540000 	cmp	r4, #0
 8003420:	0a00005d 	beq	800359c <__gnu_unwind_pr_common+0x1ec>
 8003424:	e3570002 	cmp	r7, #2
 8003428:	0596b004 	ldreq	fp, [r6, #4]
 800342c:	11d6b0b2 	ldrhne	fp, [r6, #2]
 8003430:	e5953048 	ldr	r3, [r5, #72]	; 0x48
 8003434:	e3cba001 	bic	sl, fp, #1
 8003438:	e1a00009 	mov	r0, r9
 800343c:	e3a0100f 	mov	r1, #15
 8003440:	11d640b0 	ldrhne	r4, [r6]
 8003444:	02866008 	addeq	r6, r6, #8
 8003448:	12866004 	addne	r6, r6, #4
 800344c:	e08aa003 	add	sl, sl, r3
 8003450:	ebffff73 	bl	8003224 <_Unwind_GetGR>
 8003454:	e15a0000 	cmp	sl, r0
 8003458:	e20bb001 	and	fp, fp, #1
 800345c:	8a00003c 	bhi	8003554 <__gnu_unwind_pr_common+0x1a4>
 8003460:	e3c43001 	bic	r3, r4, #1
 8003464:	e08aa003 	add	sl, sl, r3
 8003468:	e150000a 	cmp	r0, sl
 800346c:	2a000038 	bcs	8003554 <__gnu_unwind_pr_common+0x1a4>
 8003470:	e2044001 	and	r4, r4, #1
 8003474:	e184408b 	orr	r4, r4, fp, lsl #1
 8003478:	e3540001 	cmp	r4, #1
 800347c:	0a00005e 	beq	80035fc <__gnu_unwind_pr_common+0x24c>
 8003480:	3a000059 	bcc	80035ec <__gnu_unwind_pr_common+0x23c>
 8003484:	e3540002 	cmp	r4, #2
 8003488:	1a000048 	bne	80035b0 <__gnu_unwind_pr_common+0x200>
 800348c:	e5963000 	ldr	r3, [r6]
 8003490:	e3580000 	cmp	r8, #0
 8003494:	e3c34102 	bic	r4, r3, #-2147483648	; 0x80000000
 8003498:	1a000090 	bne	80036e0 <__gnu_unwind_pr_common+0x330>
 800349c:	e59d2004 	ldr	r2, [sp, #4]
 80034a0:	e3120008 	tst	r2, #8
 80034a4:	03a02001 	moveq	r2, #1
 80034a8:	13a02000 	movne	r2, #0
 80034ac:	e3540000 	cmp	r4, #0
 80034b0:	03822001 	orreq	r2, r2, #1
 80034b4:	e3520000 	cmp	r2, #0
 80034b8:	0a000030 	beq	8003580 <__gnu_unwind_pr_common+0x1d0>
 80034bc:	e3540000 	cmp	r4, #0
 80034c0:	0a00001a 	beq	8003530 <__gnu_unwind_pr_common+0x180>
 80034c4:	e1a0a007 	mov	sl, r7
 80034c8:	e286b004 	add	fp, r6, #4
 80034cc:	e1a07004 	mov	r7, r4
 80034d0:	e58d800c 	str	r8, [sp, #12]
 80034d4:	e59d4008 	ldr	r4, [sp, #8]
 80034d8:	ea000003 	b	80034ec <__gnu_unwind_pr_common+0x13c>
 80034dc:	e1530007 	cmp	r3, r7
 80034e0:	e1a08003 	mov	r8, r3
 80034e4:	e28bb004 	add	fp, fp, #4
 80034e8:	0a000010 	beq	8003530 <__gnu_unwind_pr_common+0x180>
 80034ec:	e1a0000b 	mov	r0, fp
 80034f0:	e58d4010 	str	r4, [sp, #16]
 80034f4:	ebfffe54 	bl	8002e4c <_Unwind_decode_typeinfo_ptr.isra.0>
 80034f8:	e28d3010 	add	r3, sp, #16
 80034fc:	e1a01000 	mov	r1, r0
 8003500:	e3a02000 	mov	r2, #0
 8003504:	e1a00005 	mov	r0, r5
 8003508:	e320f000 	nop	{0}
 800350c:	e3500000 	cmp	r0, #0
 8003510:	e2883001 	add	r3, r8, #1
 8003514:	0afffff0 	beq	80034dc <__gnu_unwind_pr_common+0x12c>
 8003518:	e1a04007 	mov	r4, r7
 800351c:	e1a0700a 	mov	r7, sl
 8003520:	e1a0a008 	mov	sl, r8
 8003524:	e15a0004 	cmp	sl, r4
 8003528:	e59d800c 	ldr	r8, [sp, #12]
 800352c:	1a000071 	bne	80036f8 <__gnu_unwind_pr_common+0x348>
 8003530:	e1a00009 	mov	r0, r9
 8003534:	e3a0100d 	mov	r1, #13
 8003538:	ebffff39 	bl	8003224 <_Unwind_GetGR>
 800353c:	e59d3010 	ldr	r3, [sp, #16]
 8003540:	e5850020 	str	r0, [r5, #32]
 8003544:	e5856028 	str	r6, [r5, #40]	; 0x28
 8003548:	e5853024 	str	r3, [r5, #36]	; 0x24
 800354c:	e3a00006 	mov	r0, #6
 8003550:	ea000017 	b	80035b4 <__gnu_unwind_pr_common+0x204>
 8003554:	e2044001 	and	r4, r4, #1
 8003558:	e184408b 	orr	r4, r4, fp, lsl #1
 800355c:	e3540001 	cmp	r4, #1
 8003560:	0a000044 	beq	8003678 <__gnu_unwind_pr_common+0x2c8>
 8003564:	3a000022 	bcc	80035f4 <__gnu_unwind_pr_common+0x244>
 8003568:	e3540002 	cmp	r4, #2
 800356c:	1a00000f 	bne	80035b0 <__gnu_unwind_pr_common+0x200>
 8003570:	e5963000 	ldr	r3, [r6]
 8003574:	e3580000 	cmp	r8, #0
 8003578:	e3c34102 	bic	r4, r3, #-2147483648	; 0x80000000
 800357c:	1a000057 	bne	80036e0 <__gnu_unwind_pr_common+0x330>
 8003580:	e3530000 	cmp	r3, #0
 8003584:	b2866004 	addlt	r6, r6, #4
 8003588:	e2844001 	add	r4, r4, #1
 800358c:	e0866104 	add	r6, r6, r4, lsl #2
 8003590:	eaffffa0 	b	8003418 <__gnu_unwind_pr_common+0x68>
 8003594:	e3a03000 	mov	r3, #0
 8003598:	e58d3000 	str	r3, [sp]
 800359c:	e3570002 	cmp	r7, #2
 80035a0:	da000038 	ble	8003688 <__gnu_unwind_pr_common+0x2d8>
 80035a4:	ebfffe2d 	bl	8002e60 <__gnu_unwind_24bit.isra.1>
 80035a8:	e3500000 	cmp	r0, #0
 80035ac:	0a00003a 	beq	800369c <__gnu_unwind_pr_common+0x2ec>
 80035b0:	e3a00009 	mov	r0, #9
 80035b4:	e28dd024 	add	sp, sp, #36	; 0x24
 80035b8:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80035bc:	e12fff1e 	bx	lr
 80035c0:	e3570002 	cmp	r7, #2
 80035c4:	caffff8b 	bgt	80033f8 <__gnu_unwind_pr_common+0x48>
 80035c8:	e3a02002 	mov	r2, #2
 80035cc:	e1a03821 	lsr	r3, r1, #16
 80035d0:	e5cd301d 	strb	r3, [sp, #29]
 80035d4:	e1a01801 	lsl	r1, r1, #16
 80035d8:	e20330ff 	and	r3, r3, #255	; 0xff
 80035dc:	e58d1014 	str	r1, [sp, #20]
 80035e0:	e5cd201c 	strb	r2, [sp, #28]
 80035e4:	e0866103 	add	r6, r6, r3, lsl #2
 80035e8:	eaffff82 	b	80033f8 <__gnu_unwind_pr_common+0x48>
 80035ec:	e3580000 	cmp	r8, #0
 80035f0:	1a000070 	bne	80037b8 <__gnu_unwind_pr_common+0x408>
 80035f4:	e2866004 	add	r6, r6, #4
 80035f8:	eaffff86 	b	8003418 <__gnu_unwind_pr_common+0x68>
 80035fc:	e3580000 	cmp	r8, #0
 8003600:	1a00003e 	bne	8003700 <__gnu_unwind_pr_common+0x350>
 8003604:	e896000c 	ldm	r6, {r2, r3}
 8003608:	e3730002 	cmn	r3, #2
 800360c:	e1a04fa2 	lsr	r4, r2, #31
 8003610:	0affffe6 	beq	80035b0 <__gnu_unwind_pr_common+0x200>
 8003614:	e3730001 	cmn	r3, #1
 8003618:	e59d3008 	ldr	r3, [sp, #8]
 800361c:	e58d3010 	str	r3, [sp, #16]
 8003620:	0a00005b 	beq	8003794 <__gnu_unwind_pr_common+0x3e4>
 8003624:	e2860004 	add	r0, r6, #4
 8003628:	ebfffe07 	bl	8002e4c <_Unwind_decode_typeinfo_ptr.isra.0>
 800362c:	e1a02004 	mov	r2, r4
 8003630:	e1a01000 	mov	r1, r0
 8003634:	e28d3010 	add	r3, sp, #16
 8003638:	e1a00005 	mov	r0, r5
 800363c:	e320f000 	nop	{0}
 8003640:	e3500000 	cmp	r0, #0
 8003644:	0a00000d 	beq	8003680 <__gnu_unwind_pr_common+0x2d0>
 8003648:	e1a04000 	mov	r4, r0
 800364c:	e3a0100d 	mov	r1, #13
 8003650:	e1a00009 	mov	r0, r9
 8003654:	ebfffef2 	bl	8003224 <_Unwind_GetGR>
 8003658:	e3540002 	cmp	r4, #2
 800365c:	e5850020 	str	r0, [r5, #32]
 8003660:	1a00004f 	bne	80037a4 <__gnu_unwind_pr_common+0x3f4>
 8003664:	e1a03005 	mov	r3, r5
 8003668:	e59d2010 	ldr	r2, [sp, #16]
 800366c:	e5a3202c 	str	r2, [r3, #44]!	; 0x2c
 8003670:	e5853024 	str	r3, [r5, #36]	; 0x24
 8003674:	ea00004c 	b	80037ac <__gnu_unwind_pr_common+0x3fc>
 8003678:	e3580000 	cmp	r8, #0
 800367c:	1a00001f 	bne	8003700 <__gnu_unwind_pr_common+0x350>
 8003680:	e2866008 	add	r6, r6, #8
 8003684:	eaffff63 	b	8003418 <__gnu_unwind_pr_common+0x68>
 8003688:	e1a00009 	mov	r0, r9
 800368c:	e28d1014 	add	r1, sp, #20
 8003690:	eb0001ff 	bl	8003e94 <__gnu_unwind_execute>
 8003694:	e3500000 	cmp	r0, #0
 8003698:	1affffc4 	bne	80035b0 <__gnu_unwind_pr_common+0x200>
 800369c:	e59d3000 	ldr	r3, [sp]
 80036a0:	e3530000 	cmp	r3, #0
 80036a4:	03a00008 	moveq	r0, #8
 80036a8:	0affffc1 	beq	80035b4 <__gnu_unwind_pr_common+0x204>
 80036ac:	e3a0100f 	mov	r1, #15
 80036b0:	e1a00009 	mov	r0, r9
 80036b4:	ebfffeda 	bl	8003224 <_Unwind_GetGR>
 80036b8:	e3a0100e 	mov	r1, #14
 80036bc:	e1a02000 	mov	r2, r0
 80036c0:	e1a00009 	mov	r0, r9
 80036c4:	ebfffef9 	bl	80032b0 <_Unwind_SetGR>
 80036c8:	e1a00009 	mov	r0, r9
 80036cc:	e3a0100f 	mov	r1, #15
 80036d0:	e59f2128 	ldr	r2, [pc, #296]	; 8003800 <__gnu_unwind_pr_common+0x450>
 80036d4:	ebfffef5 	bl	80032b0 <_Unwind_SetGR>
 80036d8:	e3a00007 	mov	r0, #7
 80036dc:	eaffffb4 	b	80035b4 <__gnu_unwind_pr_common+0x204>
 80036e0:	e1a00009 	mov	r0, r9
 80036e4:	e3a0100d 	mov	r1, #13
 80036e8:	e595a020 	ldr	sl, [r5, #32]
 80036ec:	ebfffecc 	bl	8003224 <_Unwind_GetGR>
 80036f0:	e15a0000 	cmp	sl, r0
 80036f4:	0a000016 	beq	8003754 <__gnu_unwind_pr_common+0x3a4>
 80036f8:	e5963000 	ldr	r3, [r6]
 80036fc:	eaffff9f 	b	8003580 <__gnu_unwind_pr_common+0x1d0>
 8003700:	e1a00009 	mov	r0, r9
 8003704:	e3a0100d 	mov	r1, #13
 8003708:	e5954020 	ldr	r4, [r5, #32]
 800370c:	ebfffec4 	bl	8003224 <_Unwind_GetGR>
 8003710:	e1540000 	cmp	r4, r0
 8003714:	1affffd9 	bne	8003680 <__gnu_unwind_pr_common+0x2d0>
 8003718:	e5953028 	ldr	r3, [r5, #40]	; 0x28
 800371c:	e1560003 	cmp	r6, r3
 8003720:	1affffd6 	bne	8003680 <__gnu_unwind_pr_common+0x2d0>
 8003724:	e1a00006 	mov	r0, r6
 8003728:	ebfffd12 	bl	8002b78 <selfrel_offset31>
 800372c:	e3a0100f 	mov	r1, #15
 8003730:	e1a02000 	mov	r2, r0
 8003734:	e1a00009 	mov	r0, r9
 8003738:	ebfffedc 	bl	80032b0 <_Unwind_SetGR>
 800373c:	e1a00009 	mov	r0, r9
 8003740:	e1a02005 	mov	r2, r5
 8003744:	e3a01000 	mov	r1, #0
 8003748:	ebfffed8 	bl	80032b0 <_Unwind_SetGR>
 800374c:	e3a00007 	mov	r0, #7
 8003750:	eaffff97 	b	80035b4 <__gnu_unwind_pr_common+0x204>
 8003754:	e5953028 	ldr	r3, [r5, #40]	; 0x28
 8003758:	e1560003 	cmp	r6, r3
 800375c:	1affffe5 	bne	80036f8 <__gnu_unwind_pr_common+0x348>
 8003760:	e3a02000 	mov	r2, #0
 8003764:	e585202c 	str	r2, [r5, #44]	; 0x2c
 8003768:	e3a02004 	mov	r2, #4
 800376c:	e2863004 	add	r3, r6, #4
 8003770:	e5854028 	str	r4, [r5, #40]	; 0x28
 8003774:	e5852030 	str	r2, [r5, #48]	; 0x30
 8003778:	e5853034 	str	r3, [r5, #52]	; 0x34
 800377c:	e5963000 	ldr	r3, [r6]
 8003780:	e3530000 	cmp	r3, #0
 8003784:	ba00001a 	blt	80037f4 <__gnu_unwind_pr_common+0x444>
 8003788:	e3a03001 	mov	r3, #1
 800378c:	e58d3000 	str	r3, [sp]
 8003790:	eaffff7c 	b	8003588 <__gnu_unwind_pr_common+0x1d8>
 8003794:	e1a00009 	mov	r0, r9
 8003798:	e3a0100d 	mov	r1, #13
 800379c:	ebfffea0 	bl	8003224 <_Unwind_GetGR>
 80037a0:	e5850020 	str	r0, [r5, #32]
 80037a4:	e59d3010 	ldr	r3, [sp, #16]
 80037a8:	e5853024 	str	r3, [r5, #36]	; 0x24
 80037ac:	e5856028 	str	r6, [r5, #40]	; 0x28
 80037b0:	e3a00006 	mov	r0, #6
 80037b4:	eaffff7e 	b	80035b4 <__gnu_unwind_pr_common+0x204>
 80037b8:	e1a00006 	mov	r0, r6
 80037bc:	ebfffced 	bl	8002b78 <selfrel_offset31>
 80037c0:	e2866004 	add	r6, r6, #4
 80037c4:	e1a04000 	mov	r4, r0
 80037c8:	e5856038 	str	r6, [r5, #56]	; 0x38
 80037cc:	e1a00005 	mov	r0, r5
 80037d0:	e320f000 	nop	{0}
 80037d4:	e3500000 	cmp	r0, #0
 80037d8:	0affff74 	beq	80035b0 <__gnu_unwind_pr_common+0x200>
 80037dc:	e1a00009 	mov	r0, r9
 80037e0:	e1a02004 	mov	r2, r4
 80037e4:	e3a0100f 	mov	r1, #15
 80037e8:	ebfffeb0 	bl	80032b0 <_Unwind_SetGR>
 80037ec:	e3a00007 	mov	r0, #7
 80037f0:	eaffff6f 	b	80035b4 <__gnu_unwind_pr_common+0x204>
 80037f4:	e2840001 	add	r0, r4, #1
 80037f8:	e0860100 	add	r0, r6, r0, lsl #2
 80037fc:	eaffffc9 	b	8003728 <__gnu_unwind_pr_common+0x378>
 8003800:	00000000 	.word	0x00000000

08003804 <__aeabi_unwind_cpp_pr0>:
 8003804:	e3a03000 	mov	r3, #0
 8003808:	eafffee8 	b	80033b0 <__gnu_unwind_pr_common>

0800380c <__aeabi_unwind_cpp_pr1>:
 800380c:	e3a03001 	mov	r3, #1
 8003810:	eafffee6 	b	80033b0 <__gnu_unwind_pr_common>

08003814 <__aeabi_unwind_cpp_pr2>:
 8003814:	e3a03002 	mov	r3, #2
 8003818:	eafffee4 	b	80033b0 <__gnu_unwind_pr_common>

0800381c <_Unwind_VRS_Pop>:
 800381c:	e92d43f0 	push	{r4, r5, r6, r7, r8, r9, lr}
 8003820:	e1a04000 	mov	r4, r0
 8003824:	e24ddf45 	sub	sp, sp, #276	; 0x114
 8003828:	e3510004 	cmp	r1, #4
 800382c:	979ff101 	ldrls	pc, [pc, r1, lsl #2]
 8003830:	ea000006 	b	8003850 <_Unwind_VRS_Pop+0x34>
 8003834:	08003a30 	.word	0x08003a30
 8003838:	080038c8 	.word	0x080038c8
 800383c:	08003850 	.word	0x08003850
 8003840:	08003848 	.word	0x08003848
 8003844:	08003860 	.word	0x08003860
 8003848:	e3530003 	cmp	r3, #3
 800384c:	0a00009c 	beq	8003ac4 <_Unwind_VRS_Pop+0x2a8>
 8003850:	e3a00002 	mov	r0, #2
 8003854:	e28ddf45 	add	sp, sp, #276	; 0x114
 8003858:	e8bd43f0 	pop	{r4, r5, r6, r7, r8, r9, lr}
 800385c:	e12fff1e 	bx	lr
 8003860:	e3520010 	cmp	r2, #16
 8003864:	93530000 	cmpls	r3, #0
 8003868:	1afffff8 	bne	8003850 <_Unwind_VRS_Pop+0x34>
 800386c:	e5903000 	ldr	r3, [r0]
 8003870:	e3130010 	tst	r3, #16
 8003874:	1a0000b1 	bne	8003b40 <_Unwind_VRS_Pop+0x324>
 8003878:	e28d5088 	add	r5, sp, #136	; 0x88
 800387c:	e1a00005 	mov	r0, r5
 8003880:	e58d2004 	str	r2, [sp, #4]
 8003884:	eb00012b 	bl	8003d38 <__gnu_Unwind_Save_WMMXC>
 8003888:	e3a03000 	mov	r3, #0
 800388c:	e3a00001 	mov	r0, #1
 8003890:	e5941038 	ldr	r1, [r4, #56]	; 0x38
 8003894:	e59d2004 	ldr	r2, [sp, #4]
 8003898:	e012c310 	ands	ip, r2, r0, lsl r3
 800389c:	1591c000 	ldrne	ip, [r1]
 80038a0:	1785c103 	strne	ip, [r5, r3, lsl #2]
 80038a4:	e2833001 	add	r3, r3, #1
 80038a8:	12811004 	addne	r1, r1, #4
 80038ac:	e3530004 	cmp	r3, #4
 80038b0:	1afffff8 	bne	8003898 <_Unwind_VRS_Pop+0x7c>
 80038b4:	e1a00005 	mov	r0, r5
 80038b8:	e5841038 	str	r1, [r4, #56]	; 0x38
 80038bc:	eb000118 	bl	8003d24 <__gnu_Unwind_Restore_WMMXC>
 80038c0:	e3a00000 	mov	r0, #0
 80038c4:	eaffffe2 	b	8003854 <_Unwind_VRS_Pop+0x38>
 80038c8:	e20310fb 	and	r1, r3, #251	; 0xfb
 80038cc:	e3510001 	cmp	r1, #1
 80038d0:	1affffde 	bne	8003850 <_Unwind_VRS_Pop+0x34>
 80038d4:	e1a06802 	lsl	r6, r2, #16
 80038d8:	e1a06826 	lsr	r6, r6, #16
 80038dc:	e1a08822 	lsr	r8, r2, #16
 80038e0:	e3530001 	cmp	r3, #1
 80038e4:	e0861008 	add	r1, r6, r8
 80038e8:	0a000063 	beq	8003a7c <_Unwind_VRS_Pop+0x260>
 80038ec:	e3510020 	cmp	r1, #32
 80038f0:	8affffd6 	bhi	8003850 <_Unwind_VRS_Pop+0x34>
 80038f4:	e358000f 	cmp	r8, #15
 80038f8:	9a000096 	bls	8003b58 <_Unwind_VRS_Pop+0x33c>
 80038fc:	e1a07006 	mov	r7, r6
 8003900:	e3570000 	cmp	r7, #0
 8003904:	13530005 	cmpne	r3, #5
 8003908:	13a09001 	movne	r9, #1
 800390c:	03a09000 	moveq	r9, #0
 8003910:	1affffce 	bne	8003850 <_Unwind_VRS_Pop+0x34>
 8003914:	e358000f 	cmp	r8, #15
 8003918:	8a000096 	bhi	8003b78 <_Unwind_VRS_Pop+0x35c>
 800391c:	e5942000 	ldr	r2, [r4]
 8003920:	e3120001 	tst	r2, #1
 8003924:	0a000093 	beq	8003b78 <_Unwind_VRS_Pop+0x35c>
 8003928:	e3530005 	cmp	r3, #5
 800392c:	e3c23001 	bic	r3, r2, #1
 8003930:	e5843000 	str	r3, [r4]
 8003934:	0a0000bb 	beq	8003c28 <_Unwind_VRS_Pop+0x40c>
 8003938:	e1a00004 	mov	r0, r4
 800393c:	e3c22003 	bic	r2, r2, #3
 8003940:	e4802048 	str	r2, [r0], #72	; 0x48
 8003944:	eb0000ca 	bl	8003c74 <__gnu_Unwind_Save_VFP>
 8003948:	e3570000 	cmp	r7, #0
 800394c:	0a000099 	beq	8003bb8 <_Unwind_VRS_Pop+0x39c>
 8003950:	e5943000 	ldr	r3, [r4]
 8003954:	e3130004 	tst	r3, #4
 8003958:	1a0000ad 	bne	8003c14 <_Unwind_VRS_Pop+0x3f8>
 800395c:	e3590000 	cmp	r9, #0
 8003960:	1a0000b7 	bne	8003c44 <_Unwind_VRS_Pop+0x428>
 8003964:	e358000f 	cmp	r8, #15
 8003968:	8a000004 	bhi	8003980 <_Unwind_VRS_Pop+0x164>
 800396c:	e28d5088 	add	r5, sp, #136	; 0x88
 8003970:	e1a00005 	mov	r0, r5
 8003974:	eb0000c2 	bl	8003c84 <__gnu_Unwind_Save_VFP_D>
 8003978:	e3570000 	cmp	r7, #0
 800397c:	0a00009b 	beq	8003bf0 <_Unwind_VRS_Pop+0x3d4>
 8003980:	e28d0008 	add	r0, sp, #8
 8003984:	eb0000c2 	bl	8003c94 <__gnu_Unwind_Save_VFP_D_16_to_31>
 8003988:	e2683010 	rsb	r3, r8, #16
 800398c:	e3530000 	cmp	r3, #0
 8003990:	e5941038 	ldr	r1, [r4, #56]	; 0x38
 8003994:	da00000d 	ble	80039d0 <_Unwind_VRS_Pop+0x1b4>
 8003998:	e28d5088 	add	r5, sp, #136	; 0x88
 800399c:	e1a00001 	mov	r0, r1
 80039a0:	e1a0e083 	lsl	lr, r3, #1
 80039a4:	e0852188 	add	r2, r5, r8, lsl #3
 80039a8:	e2422004 	sub	r2, r2, #4
 80039ac:	e24e3001 	sub	r3, lr, #1
 80039b0:	e2433001 	sub	r3, r3, #1
 80039b4:	e490c004 	ldr	ip, [r0], #4
 80039b8:	e3730001 	cmn	r3, #1
 80039bc:	e5a2c004 	str	ip, [r2, #4]!
 80039c0:	1afffffa 	bne	80039b0 <_Unwind_VRS_Pop+0x194>
 80039c4:	e3570000 	cmp	r7, #0
 80039c8:	e081110e 	add	r1, r1, lr, lsl #2
 80039cc:	0a00000d 	beq	8003a08 <_Unwind_VRS_Pop+0x1ec>
 80039d0:	e3580010 	cmp	r8, #16
 80039d4:	21a02008 	movcs	r2, r8
 80039d8:	33a02010 	movcc	r2, #16
 80039dc:	e28d3e11 	add	r3, sp, #272	; 0x110
 80039e0:	e0832182 	add	r2, r3, r2, lsl #3
 80039e4:	e2422f62 	sub	r2, r2, #392	; 0x188
 80039e8:	e1a00087 	lsl	r0, r7, #1
 80039ec:	e1a03001 	mov	r3, r1
 80039f0:	e2422004 	sub	r2, r2, #4
 80039f4:	e0811100 	add	r1, r1, r0, lsl #2
 80039f8:	e4930004 	ldr	r0, [r3], #4
 80039fc:	e1530001 	cmp	r3, r1
 8003a00:	e5a20004 	str	r0, [r2, #4]!
 8003a04:	1afffffb 	bne	80039f8 <_Unwind_VRS_Pop+0x1dc>
 8003a08:	e3590000 	cmp	r9, #0
 8003a0c:	1a00007b 	bne	8003c00 <_Unwind_VRS_Pop+0x3e4>
 8003a10:	e358000f 	cmp	r8, #15
 8003a14:	e5841038 	str	r1, [r4, #56]	; 0x38
 8003a18:	9a00007a 	bls	8003c08 <_Unwind_VRS_Pop+0x3ec>
 8003a1c:	e3570000 	cmp	r7, #0
 8003a20:	128d0008 	addne	r0, sp, #8
 8003a24:	1b000098 	blne	8003c8c <__gnu_Unwind_Restore_VFP_D_16_to_31>
 8003a28:	e3a00000 	mov	r0, #0
 8003a2c:	eaffff88 	b	8003854 <_Unwind_VRS_Pop+0x38>
 8003a30:	e3530000 	cmp	r3, #0
 8003a34:	1affff85 	bne	8003850 <_Unwind_VRS_Pop+0x34>
 8003a38:	e3a0e001 	mov	lr, #1
 8003a3c:	e1a00802 	lsl	r0, r2, #16
 8003a40:	e594c038 	ldr	ip, [r4, #56]	; 0x38
 8003a44:	e1a00820 	lsr	r0, r0, #16
 8003a48:	e2841004 	add	r1, r4, #4
 8003a4c:	e010531e 	ands	r5, r0, lr, lsl r3
 8003a50:	159c5000 	ldrne	r5, [ip]
 8003a54:	e2833001 	add	r3, r3, #1
 8003a58:	15815000 	strne	r5, [r1]
 8003a5c:	128cc004 	addne	ip, ip, #4
 8003a60:	e3530010 	cmp	r3, #16
 8003a64:	e2811004 	add	r1, r1, #4
 8003a68:	1afffff7 	bne	8003a4c <_Unwind_VRS_Pop+0x230>
 8003a6c:	e2120a02 	ands	r0, r2, #8192	; 0x2000
 8003a70:	0584c038 	streq	ip, [r4, #56]	; 0x38
 8003a74:	0affff76 	beq	8003854 <_Unwind_VRS_Pop+0x38>
 8003a78:	eaffffea 	b	8003a28 <_Unwind_VRS_Pop+0x20c>
 8003a7c:	e3510010 	cmp	r1, #16
 8003a80:	8affff72 	bhi	8003850 <_Unwind_VRS_Pop+0x34>
 8003a84:	e358000f 	cmp	r8, #15
 8003a88:	91a09003 	movls	r9, r3
 8003a8c:	8affff6f 	bhi	8003850 <_Unwind_VRS_Pop+0x34>
 8003a90:	e5942000 	ldr	r2, [r4]
 8003a94:	e3120001 	tst	r2, #1
 8003a98:	0a000046 	beq	8003bb8 <_Unwind_VRS_Pop+0x39c>
 8003a9c:	e3530005 	cmp	r3, #5
 8003aa0:	e3c23001 	bic	r3, r2, #1
 8003aa4:	e5843000 	str	r3, [r4]
 8003aa8:	e3a07000 	mov	r7, #0
 8003aac:	1affffa1 	bne	8003938 <_Unwind_VRS_Pop+0x11c>
 8003ab0:	e1a00004 	mov	r0, r4
 8003ab4:	e3833002 	orr	r3, r3, #2
 8003ab8:	e4803048 	str	r3, [r0], #72	; 0x48
 8003abc:	eb000070 	bl	8003c84 <__gnu_Unwind_Save_VFP_D>
 8003ac0:	eaffffa9 	b	800396c <_Unwind_VRS_Pop+0x150>
 8003ac4:	e1a07802 	lsl	r7, r2, #16
 8003ac8:	e1a07827 	lsr	r7, r7, #16
 8003acc:	e1a06822 	lsr	r6, r2, #16
 8003ad0:	e0873006 	add	r3, r7, r6
 8003ad4:	e3530010 	cmp	r3, #16
 8003ad8:	8affff5c 	bhi	8003850 <_Unwind_VRS_Pop+0x34>
 8003adc:	e5903000 	ldr	r3, [r0]
 8003ae0:	e3130008 	tst	r3, #8
 8003ae4:	1a00001f 	bne	8003b68 <_Unwind_VRS_Pop+0x34c>
 8003ae8:	e28d5088 	add	r5, sp, #136	; 0x88
 8003aec:	e1a07087 	lsl	r7, r7, #1
 8003af0:	e1a00005 	mov	r0, r5
 8003af4:	eb000079 	bl	8003ce0 <__gnu_Unwind_Save_WMMXD>
 8003af8:	e3570000 	cmp	r7, #0
 8003afc:	e0852186 	add	r2, r5, r6, lsl #3
 8003b00:	e2473001 	sub	r3, r7, #1
 8003b04:	e594c038 	ldr	ip, [r4, #56]	; 0x38
 8003b08:	0a000007 	beq	8003b2c <_Unwind_VRS_Pop+0x310>
 8003b0c:	e1a0100c 	mov	r1, ip
 8003b10:	e2422004 	sub	r2, r2, #4
 8003b14:	e2433001 	sub	r3, r3, #1
 8003b18:	e4910004 	ldr	r0, [r1], #4
 8003b1c:	e3730001 	cmn	r3, #1
 8003b20:	e5a20004 	str	r0, [r2, #4]!
 8003b24:	1afffffa 	bne	8003b14 <_Unwind_VRS_Pop+0x2f8>
 8003b28:	e08cc107 	add	ip, ip, r7, lsl #2
 8003b2c:	e1a00005 	mov	r0, r5
 8003b30:	e584c038 	str	ip, [r4, #56]	; 0x38
 8003b34:	eb000058 	bl	8003c9c <__gnu_Unwind_Restore_WMMXD>
 8003b38:	e3a00000 	mov	r0, #0
 8003b3c:	eaffff44 	b	8003854 <_Unwind_VRS_Pop+0x38>
 8003b40:	e3c33010 	bic	r3, r3, #16
 8003b44:	e48031d0 	str	r3, [r0], #464	; 0x1d0
 8003b48:	e58d2004 	str	r2, [sp, #4]
 8003b4c:	eb000079 	bl	8003d38 <__gnu_Unwind_Save_WMMXC>
 8003b50:	e59d2004 	ldr	r2, [sp, #4]
 8003b54:	eaffff47 	b	8003878 <_Unwind_VRS_Pop+0x5c>
 8003b58:	e3510010 	cmp	r1, #16
 8003b5c:	9a000013 	bls	8003bb0 <_Unwind_VRS_Pop+0x394>
 8003b60:	e2417010 	sub	r7, r1, #16
 8003b64:	eaffff65 	b	8003900 <_Unwind_VRS_Pop+0xe4>
 8003b68:	e3c33008 	bic	r3, r3, #8
 8003b6c:	e4803150 	str	r3, [r0], #336	; 0x150
 8003b70:	eb00005a 	bl	8003ce0 <__gnu_Unwind_Save_WMMXD>
 8003b74:	eaffffdb 	b	8003ae8 <_Unwind_VRS_Pop+0x2cc>
 8003b78:	e3570000 	cmp	r7, #0
 8003b7c:	1affff73 	bne	8003950 <_Unwind_VRS_Pop+0x134>
 8003b80:	e358000f 	cmp	r8, #15
 8003b84:	93a09000 	movls	r9, #0
 8003b88:	91a07009 	movls	r7, r9
 8003b8c:	9affff76 	bls	800396c <_Unwind_VRS_Pop+0x150>
 8003b90:	e3a09000 	mov	r9, #0
 8003b94:	e3560000 	cmp	r6, #0
 8003b98:	e1a03006 	mov	r3, r6
 8003b9c:	e5941038 	ldr	r1, [r4, #56]	; 0x38
 8003ba0:	11a07009 	movne	r7, r9
 8003ba4:	1affff7b 	bne	8003998 <_Unwind_VRS_Pop+0x17c>
 8003ba8:	e1a07006 	mov	r7, r6
 8003bac:	eaffff97 	b	8003a10 <_Unwind_VRS_Pop+0x1f4>
 8003bb0:	e3a09000 	mov	r9, #0
 8003bb4:	eaffffb5 	b	8003a90 <_Unwind_VRS_Pop+0x274>
 8003bb8:	e3590000 	cmp	r9, #0
 8003bbc:	0affffef 	beq	8003b80 <_Unwind_VRS_Pop+0x364>
 8003bc0:	e28d5088 	add	r5, sp, #136	; 0x88
 8003bc4:	e1a00005 	mov	r0, r5
 8003bc8:	eb000029 	bl	8003c74 <__gnu_Unwind_Save_VFP>
 8003bcc:	e2563000 	subs	r3, r6, #0
 8003bd0:	e5941038 	ldr	r1, [r4, #56]	; 0x38
 8003bd4:	13a07000 	movne	r7, #0
 8003bd8:	1affff6f 	bne	800399c <_Unwind_VRS_Pop+0x180>
 8003bdc:	e2811004 	add	r1, r1, #4
 8003be0:	e5841038 	str	r1, [r4, #56]	; 0x38
 8003be4:	e1a00005 	mov	r0, r5
 8003be8:	eb00001f 	bl	8003c6c <__gnu_Unwind_Restore_VFP>
 8003bec:	eaffff8d 	b	8003a28 <_Unwind_VRS_Pop+0x20c>
 8003bf0:	e2563000 	subs	r3, r6, #0
 8003bf4:	e5941038 	ldr	r1, [r4, #56]	; 0x38
 8003bf8:	1affff67 	bne	800399c <_Unwind_VRS_Pop+0x180>
 8003bfc:	eaffff81 	b	8003a08 <_Unwind_VRS_Pop+0x1ec>
 8003c00:	e28d5088 	add	r5, sp, #136	; 0x88
 8003c04:	eafffff4 	b	8003bdc <_Unwind_VRS_Pop+0x3c0>
 8003c08:	e28d0088 	add	r0, sp, #136	; 0x88
 8003c0c:	eb00001a 	bl	8003c7c <__gnu_Unwind_Restore_VFP_D>
 8003c10:	eaffff81 	b	8003a1c <_Unwind_VRS_Pop+0x200>
 8003c14:	e1a00004 	mov	r0, r4
 8003c18:	e3c33004 	bic	r3, r3, #4
 8003c1c:	e48030d0 	str	r3, [r0], #208	; 0xd0
 8003c20:	eb00001b 	bl	8003c94 <__gnu_Unwind_Save_VFP_D_16_to_31>
 8003c24:	eaffff4c 	b	800395c <_Unwind_VRS_Pop+0x140>
 8003c28:	e1a00004 	mov	r0, r4
 8003c2c:	e3833002 	orr	r3, r3, #2
 8003c30:	e4803048 	str	r3, [r0], #72	; 0x48
 8003c34:	eb000012 	bl	8003c84 <__gnu_Unwind_Save_VFP_D>
 8003c38:	e3570000 	cmp	r7, #0
 8003c3c:	1affff43 	bne	8003950 <_Unwind_VRS_Pop+0x134>
 8003c40:	eaffff49 	b	800396c <_Unwind_VRS_Pop+0x150>
 8003c44:	e28d0088 	add	r0, sp, #136	; 0x88
 8003c48:	eb000009 	bl	8003c74 <__gnu_Unwind_Save_VFP>
 8003c4c:	eaffff4d 	b	8003988 <_Unwind_VRS_Pop+0x16c>

08003c50 <__restore_core_regs>:
 8003c50:	e2801034 	add	r1, r0, #52	; 0x34
 8003c54:	e8910038 	ldm	r1, {r3, r4, r5}
 8003c58:	e1a02005 	mov	r2, r5
 8003c5c:	e92d001c 	push	{r2, r3, r4}
 8003c60:	e8900fff 	ldm	r0, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp}
 8003c64:	e89d7000 	ldm	sp, {ip, sp, lr}
 8003c68:	e12fff1c 	bx	ip

08003c6c <__gnu_Unwind_Restore_VFP>:
 8003c6c:	ec900b21 	fldmiax	r0, {d0-d15}	;@ Deprecated
 8003c70:	e12fff1e 	bx	lr

08003c74 <__gnu_Unwind_Save_VFP>:
 8003c74:	ec800b21 	fstmiax	r0, {d0-d15}	;@ Deprecated
 8003c78:	e12fff1e 	bx	lr

08003c7c <__gnu_Unwind_Restore_VFP_D>:
 8003c7c:	ec900b20 	vldmia	r0, {d0-d15}
 8003c80:	e12fff1e 	bx	lr

08003c84 <__gnu_Unwind_Save_VFP_D>:
 8003c84:	ec800b20 	vstmia	r0, {d0-d15}
 8003c88:	e12fff1e 	bx	lr

08003c8c <__gnu_Unwind_Restore_VFP_D_16_to_31>:
 8003c8c:	ecd00b20 	vldmia	r0, {d16-d31}
 8003c90:	e12fff1e 	bx	lr

08003c94 <__gnu_Unwind_Save_VFP_D_16_to_31>:
 8003c94:	ecc00b20 	vstmia	r0, {d16-d31}
 8003c98:	e12fff1e 	bx	lr

08003c9c <__gnu_Unwind_Restore_WMMXD>:
 8003c9c:	ecf00102 	ldfe	f0, [r0], #8
 8003ca0:	ecf01102 	ldfe	f1, [r0], #8
 8003ca4:	ecf02102 	ldfe	f2, [r0], #8
 8003ca8:	ecf03102 	ldfe	f3, [r0], #8
 8003cac:	ecf04102 	ldfe	f4, [r0], #8
 8003cb0:	ecf05102 	ldfe	f5, [r0], #8
 8003cb4:	ecf06102 	ldfe	f6, [r0], #8
 8003cb8:	ecf07102 	ldfe	f7, [r0], #8
 8003cbc:	ecf08102 	ldfp	f0, [r0], #8
 8003cc0:	ecf09102 	ldfp	f1, [r0], #8
 8003cc4:	ecf0a102 	ldfp	f2, [r0], #8
 8003cc8:	ecf0b102 	ldfp	f3, [r0], #8
 8003ccc:	ecf0c102 	ldfp	f4, [r0], #8
 8003cd0:	ecf0d102 	ldfp	f5, [r0], #8
 8003cd4:	ecf0e102 	ldfp	f6, [r0], #8
 8003cd8:	ecf0f102 	ldfp	f7, [r0], #8
 8003cdc:	e12fff1e 	bx	lr

08003ce0 <__gnu_Unwind_Save_WMMXD>:
 8003ce0:	ece00102 	stfe	f0, [r0], #8
 8003ce4:	ece01102 	stfe	f1, [r0], #8
 8003ce8:	ece02102 	stfe	f2, [r0], #8
 8003cec:	ece03102 	stfe	f3, [r0], #8
 8003cf0:	ece04102 	stfe	f4, [r0], #8
 8003cf4:	ece05102 	stfe	f5, [r0], #8
 8003cf8:	ece06102 	stfe	f6, [r0], #8
 8003cfc:	ece07102 	stfe	f7, [r0], #8
 8003d00:	ece08102 	stfp	f0, [r0], #8
 8003d04:	ece09102 	stfp	f1, [r0], #8
 8003d08:	ece0a102 	stfp	f2, [r0], #8
 8003d0c:	ece0b102 	stfp	f3, [r0], #8
 8003d10:	ece0c102 	stfp	f4, [r0], #8
 8003d14:	ece0d102 	stfp	f5, [r0], #8
 8003d18:	ece0e102 	stfp	f6, [r0], #8
 8003d1c:	ece0f102 	stfp	f7, [r0], #8
 8003d20:	e12fff1e 	bx	lr

08003d24 <__gnu_Unwind_Restore_WMMXC>:
 8003d24:	fcb08101 	ldc2	1, cr8, [r0], #4
 8003d28:	fcb09101 	ldc2	1, cr9, [r0], #4
 8003d2c:	fcb0a101 	ldc2	1, cr10, [r0], #4
 8003d30:	fcb0b101 	ldc2	1, cr11, [r0], #4
 8003d34:	e12fff1e 	bx	lr

08003d38 <__gnu_Unwind_Save_WMMXC>:
 8003d38:	fca08101 	stc2	1, cr8, [r0], #4
 8003d3c:	fca09101 	stc2	1, cr9, [r0], #4
 8003d40:	fca0a101 	stc2	1, cr10, [r0], #4
 8003d44:	fca0b101 	stc2	1, cr11, [r0], #4
 8003d48:	e12fff1e 	bx	lr

08003d4c <_Unwind_RaiseException>:
 8003d4c:	e92de000 	push	{sp, lr, pc}
 8003d50:	e92d1fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
 8003d54:	e3a03000 	mov	r3, #0
 8003d58:	e92d000c 	push	{r2, r3}
 8003d5c:	e28d1004 	add	r1, sp, #4
 8003d60:	ebfffcb8 	bl	8003048 <__gnu_Unwind_RaiseException>
 8003d64:	e59de040 	ldr	lr, [sp, #64]	; 0x40
 8003d68:	e28dd048 	add	sp, sp, #72	; 0x48
 8003d6c:	e12fff1e 	bx	lr

08003d70 <_Unwind_Resume>:
 8003d70:	e92de000 	push	{sp, lr, pc}
 8003d74:	e92d1fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
 8003d78:	e3a03000 	mov	r3, #0
 8003d7c:	e92d000c 	push	{r2, r3}
 8003d80:	e28d1004 	add	r1, sp, #4
 8003d84:	ebfffce4 	bl	800311c <__gnu_Unwind_Resume>
 8003d88:	e59de040 	ldr	lr, [sp, #64]	; 0x40
 8003d8c:	e28dd048 	add	sp, sp, #72	; 0x48
 8003d90:	e12fff1e 	bx	lr

08003d94 <_Unwind_Resume_or_Rethrow>:
 8003d94:	e92de000 	push	{sp, lr, pc}
 8003d98:	e92d1fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
 8003d9c:	e3a03000 	mov	r3, #0
 8003da0:	e92d000c 	push	{r2, r3}
 8003da4:	e28d1004 	add	r1, sp, #4
 8003da8:	ebfffcf8 	bl	8003190 <__gnu_Unwind_Resume_or_Rethrow>
 8003dac:	e59de040 	ldr	lr, [sp, #64]	; 0x40
 8003db0:	e28dd048 	add	sp, sp, #72	; 0x48
 8003db4:	e12fff1e 	bx	lr

08003db8 <_Unwind_ForcedUnwind>:
 8003db8:	e92de000 	push	{sp, lr, pc}
 8003dbc:	e92d1fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
 8003dc0:	e3a03000 	mov	r3, #0
 8003dc4:	e92d000c 	push	{r2, r3}
 8003dc8:	e28d3004 	add	r3, sp, #4
 8003dcc:	ebfffcc9 	bl	80030f8 <__gnu_Unwind_ForcedUnwind>
 8003dd0:	e59de040 	ldr	lr, [sp, #64]	; 0x40
 8003dd4:	e28dd048 	add	sp, sp, #72	; 0x48
 8003dd8:	e12fff1e 	bx	lr

08003ddc <_Unwind_Backtrace>:
 8003ddc:	e92de000 	push	{sp, lr, pc}
 8003de0:	e92d1fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
 8003de4:	e3a03000 	mov	r3, #0
 8003de8:	e92d000c 	push	{r2, r3}
 8003dec:	e28d2004 	add	r2, sp, #4
 8003df0:	ebfffd3b 	bl	80032e4 <__gnu_Unwind_Backtrace>
 8003df4:	e59de040 	ldr	lr, [sp, #64]	; 0x40
 8003df8:	e28dd048 	add	sp, sp, #72	; 0x48
 8003dfc:	e12fff1e 	bx	lr

08003e00 <next_unwind_byte>:
 8003e00:	e5d03008 	ldrb	r3, [r0, #8]
 8003e04:	e3530000 	cmp	r3, #0
 8003e08:	1a000004 	bne	8003e20 <next_unwind_byte+0x20>
 8003e0c:	e5d03009 	ldrb	r3, [r0, #9]
 8003e10:	e3530000 	cmp	r3, #0
 8003e14:	1a000008 	bne	8003e3c <next_unwind_byte+0x3c>
 8003e18:	e3a000b0 	mov	r0, #176	; 0xb0
 8003e1c:	e12fff1e 	bx	lr
 8003e20:	e2433001 	sub	r3, r3, #1
 8003e24:	e5c03008 	strb	r3, [r0, #8]
 8003e28:	e5903000 	ldr	r3, [r0]
 8003e2c:	e1a02403 	lsl	r2, r3, #8
 8003e30:	e5802000 	str	r2, [r0]
 8003e34:	e1a00c23 	lsr	r0, r3, #24
 8003e38:	e12fff1e 	bx	lr
 8003e3c:	e3a01003 	mov	r1, #3
 8003e40:	e5902004 	ldr	r2, [r0, #4]
 8003e44:	e2433001 	sub	r3, r3, #1
 8003e48:	e5c03009 	strb	r3, [r0, #9]
 8003e4c:	e282c004 	add	ip, r2, #4
 8003e50:	e5923000 	ldr	r3, [r2]
 8003e54:	e580c004 	str	ip, [r0, #4]
 8003e58:	e5c01008 	strb	r1, [r0, #8]
 8003e5c:	eafffff2 	b	8003e2c <next_unwind_byte+0x2c>

08003e60 <_Unwind_GetGR.constprop.0>:
 8003e60:	e3a01000 	mov	r1, #0
 8003e64:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 8003e68:	e24dd014 	sub	sp, sp, #20
 8003e6c:	e28d200c 	add	r2, sp, #12
 8003e70:	e58d2000 	str	r2, [sp]
 8003e74:	e1a03001 	mov	r3, r1
 8003e78:	e3a0200c 	mov	r2, #12
 8003e7c:	ebfffcd1 	bl	80031c8 <_Unwind_VRS_Get>
 8003e80:	e59d000c 	ldr	r0, [sp, #12]
 8003e84:	e28dd014 	add	sp, sp, #20
 8003e88:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 8003e8c:	e12fff1e 	bx	lr

08003e90 <unwind_UCB_from_context>:
 8003e90:	eafffff2 	b	8003e60 <_Unwind_GetGR.constprop.0>

08003e94 <__gnu_unwind_execute>:
 8003e94:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
 8003e98:	e1a07000 	mov	r7, r0
 8003e9c:	e1a05001 	mov	r5, r1
 8003ea0:	e3a08000 	mov	r8, #0
 8003ea4:	e24dd010 	sub	sp, sp, #16
 8003ea8:	e1a00005 	mov	r0, r5
 8003eac:	ebffffd3 	bl	8003e00 <next_unwind_byte>
 8003eb0:	e35000b0 	cmp	r0, #176	; 0xb0
 8003eb4:	e1a04000 	mov	r4, r0
 8003eb8:	0a00007d 	beq	80040b4 <__gnu_unwind_execute+0x220>
 8003ebc:	e2101080 	ands	r1, r0, #128	; 0x80
 8003ec0:	0a00001a 	beq	8003f30 <__gnu_unwind_execute+0x9c>
 8003ec4:	e20030f0 	and	r3, r0, #240	; 0xf0
 8003ec8:	e3530080 	cmp	r3, #128	; 0x80
 8003ecc:	0a000054 	beq	8004024 <__gnu_unwind_execute+0x190>
 8003ed0:	e3530090 	cmp	r3, #144	; 0x90
 8003ed4:	0a00002b 	beq	8003f88 <__gnu_unwind_execute+0xf4>
 8003ed8:	e35300a0 	cmp	r3, #160	; 0xa0
 8003edc:	0a000034 	beq	8003fb4 <__gnu_unwind_execute+0x120>
 8003ee0:	e35300b0 	cmp	r3, #176	; 0xb0
 8003ee4:	0a000040 	beq	8003fec <__gnu_unwind_execute+0x158>
 8003ee8:	e35300c0 	cmp	r3, #192	; 0xc0
 8003eec:	0a00005e 	beq	800406c <__gnu_unwind_execute+0x1d8>
 8003ef0:	e20030f8 	and	r3, r0, #248	; 0xf8
 8003ef4:	e35300d0 	cmp	r3, #208	; 0xd0
 8003ef8:	1a000008 	bne	8003f20 <__gnu_unwind_execute+0x8c>
 8003efc:	e2002007 	and	r2, r0, #7
 8003f00:	e2822001 	add	r2, r2, #1
 8003f04:	e3822702 	orr	r2, r2, #524288	; 0x80000
 8003f08:	e1a00007 	mov	r0, r7
 8003f0c:	e3a01001 	mov	r1, #1
 8003f10:	e3a03005 	mov	r3, #5
 8003f14:	ebfffe40 	bl	800381c <_Unwind_VRS_Pop>
 8003f18:	e3500000 	cmp	r0, #0
 8003f1c:	0affffe1 	beq	8003ea8 <__gnu_unwind_execute+0x14>
 8003f20:	e3a00009 	mov	r0, #9
 8003f24:	e28dd010 	add	sp, sp, #16
 8003f28:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
 8003f2c:	e12fff1e 	bx	lr
 8003f30:	e28d300c 	add	r3, sp, #12
 8003f34:	e1a06100 	lsl	r6, r0, #2
 8003f38:	e58d3000 	str	r3, [sp]
 8003f3c:	e1a00007 	mov	r0, r7
 8003f40:	e1a03001 	mov	r3, r1
 8003f44:	e3a0200d 	mov	r2, #13
 8003f48:	ebfffc9e 	bl	80031c8 <_Unwind_VRS_Get>
 8003f4c:	e20660ff 	and	r6, r6, #255	; 0xff
 8003f50:	e59d300c 	ldr	r3, [sp, #12]
 8003f54:	e2866004 	add	r6, r6, #4
 8003f58:	e3140040 	tst	r4, #64	; 0x40
 8003f5c:	10666003 	rsbne	r6, r6, r3
 8003f60:	00836006 	addeq	r6, r3, r6
 8003f64:	e58d600c 	str	r6, [sp, #12]
 8003f68:	e3a01000 	mov	r1, #0
 8003f6c:	e28d300c 	add	r3, sp, #12
 8003f70:	e58d3000 	str	r3, [sp]
 8003f74:	e1a00007 	mov	r0, r7
 8003f78:	e1a03001 	mov	r3, r1
 8003f7c:	e3a0200d 	mov	r2, #13
 8003f80:	ebfffcb3 	bl	8003254 <_Unwind_VRS_Set>
 8003f84:	eaffffc7 	b	8003ea8 <__gnu_unwind_execute+0x14>
 8003f88:	e200300d 	and	r3, r0, #13
 8003f8c:	e353000d 	cmp	r3, #13
 8003f90:	0affffe2 	beq	8003f20 <__gnu_unwind_execute+0x8c>
 8003f94:	e3a01000 	mov	r1, #0
 8003f98:	e28d300c 	add	r3, sp, #12
 8003f9c:	e58d3000 	str	r3, [sp]
 8003fa0:	e200200f 	and	r2, r0, #15
 8003fa4:	e1a03001 	mov	r3, r1
 8003fa8:	e1a00007 	mov	r0, r7
 8003fac:	ebfffc85 	bl	80031c8 <_Unwind_VRS_Get>
 8003fb0:	eaffffec 	b	8003f68 <__gnu_unwind_execute+0xd4>
 8003fb4:	e1e02000 	mvn	r2, r0
 8003fb8:	e3a03eff 	mov	r3, #4080	; 0xff0
 8003fbc:	e3a01000 	mov	r1, #0
 8003fc0:	e2022007 	and	r2, r2, #7
 8003fc4:	e1a02253 	asr	r2, r3, r2
 8003fc8:	e3100008 	tst	r0, #8
 8003fcc:	e0022003 	and	r2, r2, r3
 8003fd0:	13822901 	orrne	r2, r2, #16384	; 0x4000
 8003fd4:	e1a03001 	mov	r3, r1
 8003fd8:	e1a00007 	mov	r0, r7
 8003fdc:	ebfffe0e 	bl	800381c <_Unwind_VRS_Pop>
 8003fe0:	e3500000 	cmp	r0, #0
 8003fe4:	1affffcd 	bne	8003f20 <__gnu_unwind_execute+0x8c>
 8003fe8:	eaffffae 	b	8003ea8 <__gnu_unwind_execute+0x14>
 8003fec:	e35000b1 	cmp	r0, #177	; 0xb1
 8003ff0:	0a000041 	beq	80040fc <__gnu_unwind_execute+0x268>
 8003ff4:	e35000b2 	cmp	r0, #178	; 0xb2
 8003ff8:	0a00004b 	beq	800412c <__gnu_unwind_execute+0x298>
 8003ffc:	e35000b3 	cmp	r0, #179	; 0xb3
 8004000:	0a00006b 	beq	80041b4 <__gnu_unwind_execute+0x320>
 8004004:	e20030fc 	and	r3, r0, #252	; 0xfc
 8004008:	e35300b4 	cmp	r3, #180	; 0xb4
 800400c:	0affffc3 	beq	8003f20 <__gnu_unwind_execute+0x8c>
 8004010:	e3a01001 	mov	r1, #1
 8004014:	e2002007 	and	r2, r0, #7
 8004018:	e0822001 	add	r2, r2, r1
 800401c:	e3822702 	orr	r2, r2, #524288	; 0x80000
 8004020:	eaffffeb 	b	8003fd4 <__gnu_unwind_execute+0x140>
 8004024:	e1a00005 	mov	r0, r5
 8004028:	ebffff74 	bl	8003e00 <next_unwind_byte>
 800402c:	e1a04404 	lsl	r4, r4, #8
 8004030:	e1804004 	orr	r4, r0, r4
 8004034:	e3540902 	cmp	r4, #32768	; 0x8000
 8004038:	0affffb8 	beq	8003f20 <__gnu_unwind_execute+0x8c>
 800403c:	e3a01000 	mov	r1, #0
 8004040:	e1a02a04 	lsl	r2, r4, #20
 8004044:	e1a03001 	mov	r3, r1
 8004048:	e1a02822 	lsr	r2, r2, #16
 800404c:	e1a00007 	mov	r0, r7
 8004050:	ebfffdf1 	bl	800381c <_Unwind_VRS_Pop>
 8004054:	e3500000 	cmp	r0, #0
 8004058:	e1a04204 	lsl	r4, r4, #4
 800405c:	1affffaf 	bne	8003f20 <__gnu_unwind_execute+0x8c>
 8004060:	e3140902 	tst	r4, #32768	; 0x8000
 8004064:	13a08001 	movne	r8, #1
 8004068:	eaffff8e 	b	8003ea8 <__gnu_unwind_execute+0x14>
 800406c:	e35000c6 	cmp	r0, #198	; 0xc6
 8004070:	0a000057 	beq	80041d4 <__gnu_unwind_execute+0x340>
 8004074:	e35000c7 	cmp	r0, #199	; 0xc7
 8004078:	0a00005d 	beq	80041f4 <__gnu_unwind_execute+0x360>
 800407c:	e20030f8 	and	r3, r0, #248	; 0xf8
 8004080:	e35300c0 	cmp	r3, #192	; 0xc0
 8004084:	0a000066 	beq	8004224 <__gnu_unwind_execute+0x390>
 8004088:	e35000c8 	cmp	r0, #200	; 0xc8
 800408c:	0a000069 	beq	8004238 <__gnu_unwind_execute+0x3a4>
 8004090:	e35000c9 	cmp	r0, #201	; 0xc9
 8004094:	1affffa1 	bne	8003f20 <__gnu_unwind_execute+0x8c>
 8004098:	e1a00005 	mov	r0, r5
 800409c:	ebffff57 	bl	8003e00 <next_unwind_byte>
 80040a0:	e200200f 	and	r2, r0, #15
 80040a4:	e2822001 	add	r2, r2, #1
 80040a8:	e20000f0 	and	r0, r0, #240	; 0xf0
 80040ac:	e1822600 	orr	r2, r2, r0, lsl #12
 80040b0:	eaffff94 	b	8003f08 <__gnu_unwind_execute+0x74>
 80040b4:	e3580000 	cmp	r8, #0
 80040b8:	13a00000 	movne	r0, #0
 80040bc:	1affff98 	bne	8003f24 <__gnu_unwind_execute+0x90>
 80040c0:	e28d400c 	add	r4, sp, #12
 80040c4:	e1a01008 	mov	r1, r8
 80040c8:	e3a0200e 	mov	r2, #14
 80040cc:	e1a03008 	mov	r3, r8
 80040d0:	e58d4000 	str	r4, [sp]
 80040d4:	e1a00007 	mov	r0, r7
 80040d8:	ebfffc3a 	bl	80031c8 <_Unwind_VRS_Get>
 80040dc:	e58d4000 	str	r4, [sp]
 80040e0:	e1a00007 	mov	r0, r7
 80040e4:	e1a01008 	mov	r1, r8
 80040e8:	e3a0200f 	mov	r2, #15
 80040ec:	e1a03008 	mov	r3, r8
 80040f0:	ebfffc57 	bl	8003254 <_Unwind_VRS_Set>
 80040f4:	e1a00008 	mov	r0, r8
 80040f8:	eaffff89 	b	8003f24 <__gnu_unwind_execute+0x90>
 80040fc:	e1a00005 	mov	r0, r5
 8004100:	ebffff3e 	bl	8003e00 <next_unwind_byte>
 8004104:	e2502000 	subs	r2, r0, #0
 8004108:	0affff84 	beq	8003f20 <__gnu_unwind_execute+0x8c>
 800410c:	e21210f0 	ands	r1, r2, #240	; 0xf0
 8004110:	1affff82 	bne	8003f20 <__gnu_unwind_execute+0x8c>
 8004114:	e1a00007 	mov	r0, r7
 8004118:	e1a03001 	mov	r3, r1
 800411c:	ebfffdbe 	bl	800381c <_Unwind_VRS_Pop>
 8004120:	e3500000 	cmp	r0, #0
 8004124:	1affff7d 	bne	8003f20 <__gnu_unwind_execute+0x8c>
 8004128:	eaffff5e 	b	8003ea8 <__gnu_unwind_execute+0x14>
 800412c:	e3a01000 	mov	r1, #0
 8004130:	e28d300c 	add	r3, sp, #12
 8004134:	e58d3000 	str	r3, [sp]
 8004138:	e3a0200d 	mov	r2, #13
 800413c:	e1a03001 	mov	r3, r1
 8004140:	e1a00007 	mov	r0, r7
 8004144:	ebfffc1f 	bl	80031c8 <_Unwind_VRS_Get>
 8004148:	e1a00005 	mov	r0, r5
 800414c:	ebffff2b 	bl	8003e00 <next_unwind_byte>
 8004150:	e3100080 	tst	r0, #128	; 0x80
 8004154:	e3a04002 	mov	r4, #2
 8004158:	0a000008 	beq	8004180 <__gnu_unwind_execute+0x2ec>
 800415c:	e59d300c 	ldr	r3, [sp, #12]
 8004160:	e200007f 	and	r0, r0, #127	; 0x7f
 8004164:	e0833410 	add	r3, r3, r0, lsl r4
 8004168:	e1a00005 	mov	r0, r5
 800416c:	e58d300c 	str	r3, [sp, #12]
 8004170:	ebffff22 	bl	8003e00 <next_unwind_byte>
 8004174:	e3100080 	tst	r0, #128	; 0x80
 8004178:	e2844007 	add	r4, r4, #7
 800417c:	1afffff6 	bne	800415c <__gnu_unwind_execute+0x2c8>
 8004180:	e3a01000 	mov	r1, #0
 8004184:	e59d300c 	ldr	r3, [sp, #12]
 8004188:	e28d200c 	add	r2, sp, #12
 800418c:	e200007f 	and	r0, r0, #127	; 0x7f
 8004190:	e2833f81 	add	r3, r3, #516	; 0x204
 8004194:	e0834410 	add	r4, r3, r0, lsl r4
 8004198:	e58d2000 	str	r2, [sp]
 800419c:	e1a03001 	mov	r3, r1
 80041a0:	e1a00007 	mov	r0, r7
 80041a4:	e3a0200d 	mov	r2, #13
 80041a8:	e58d400c 	str	r4, [sp, #12]
 80041ac:	ebfffc28 	bl	8003254 <_Unwind_VRS_Set>
 80041b0:	eaffff3c 	b	8003ea8 <__gnu_unwind_execute+0x14>
 80041b4:	e1a00005 	mov	r0, r5
 80041b8:	ebffff10 	bl	8003e00 <next_unwind_byte>
 80041bc:	e3a01001 	mov	r1, #1
 80041c0:	e200200f 	and	r2, r0, #15
 80041c4:	e0822001 	add	r2, r2, r1
 80041c8:	e20000f0 	and	r0, r0, #240	; 0xf0
 80041cc:	e1822600 	orr	r2, r2, r0, lsl #12
 80041d0:	eaffff7f 	b	8003fd4 <__gnu_unwind_execute+0x140>
 80041d4:	e1a00005 	mov	r0, r5
 80041d8:	ebffff08 	bl	8003e00 <next_unwind_byte>
 80041dc:	e200200f 	and	r2, r0, #15
 80041e0:	e2822001 	add	r2, r2, #1
 80041e4:	e20000f0 	and	r0, r0, #240	; 0xf0
 80041e8:	e3a01003 	mov	r1, #3
 80041ec:	e1822600 	orr	r2, r2, r0, lsl #12
 80041f0:	eaffff77 	b	8003fd4 <__gnu_unwind_execute+0x140>
 80041f4:	e1a00005 	mov	r0, r5
 80041f8:	ebffff00 	bl	8003e00 <next_unwind_byte>
 80041fc:	e2502000 	subs	r2, r0, #0
 8004200:	0affff46 	beq	8003f20 <__gnu_unwind_execute+0x8c>
 8004204:	e21230f0 	ands	r3, r2, #240	; 0xf0
 8004208:	1affff44 	bne	8003f20 <__gnu_unwind_execute+0x8c>
 800420c:	e1a00007 	mov	r0, r7
 8004210:	e3a01004 	mov	r1, #4
 8004214:	ebfffd80 	bl	800381c <_Unwind_VRS_Pop>
 8004218:	e3500000 	cmp	r0, #0
 800421c:	1affff3f 	bne	8003f20 <__gnu_unwind_execute+0x8c>
 8004220:	eaffff20 	b	8003ea8 <__gnu_unwind_execute+0x14>
 8004224:	e200200f 	and	r2, r0, #15
 8004228:	e2822001 	add	r2, r2, #1
 800422c:	e3a01003 	mov	r1, #3
 8004230:	e382280a 	orr	r2, r2, #655360	; 0xa0000
 8004234:	eaffff66 	b	8003fd4 <__gnu_unwind_execute+0x140>
 8004238:	e1a00005 	mov	r0, r5
 800423c:	ebfffeef 	bl	8003e00 <next_unwind_byte>
 8004240:	e20020f0 	and	r2, r0, #240	; 0xf0
 8004244:	e200300f 	and	r3, r0, #15
 8004248:	e2822010 	add	r2, r2, #16
 800424c:	e2833001 	add	r3, r3, #1
 8004250:	e1832602 	orr	r2, r3, r2, lsl #12
 8004254:	eaffff2b 	b	8003f08 <__gnu_unwind_execute+0x74>

08004258 <__gnu_unwind_frame>:
 8004258:	e3a0c003 	mov	ip, #3
 800425c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 8004260:	e590304c 	ldr	r3, [r0, #76]	; 0x4c
 8004264:	e24dd014 	sub	sp, sp, #20
 8004268:	e5932004 	ldr	r2, [r3, #4]
 800426c:	e5cdc00c 	strb	ip, [sp, #12]
 8004270:	e5d3c007 	ldrb	ip, [r3, #7]
 8004274:	e1a02402 	lsl	r2, r2, #8
 8004278:	e2833008 	add	r3, r3, #8
 800427c:	e1a00001 	mov	r0, r1
 8004280:	e28d1004 	add	r1, sp, #4
 8004284:	e58d2004 	str	r2, [sp, #4]
 8004288:	e5cdc00d 	strb	ip, [sp, #13]
 800428c:	e58d3008 	str	r3, [sp, #8]
 8004290:	ebfffeff 	bl	8003e94 <__gnu_unwind_execute>
 8004294:	e28dd014 	add	sp, sp, #20
 8004298:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 800429c:	e12fff1e 	bx	lr

080042a0 <_Unwind_GetRegionStart>:
 80042a0:	e92d4008 	push	{r3, lr}
 80042a4:	ebfffef9 	bl	8003e90 <unwind_UCB_from_context>
 80042a8:	e8bd4008 	pop	{r3, lr}
 80042ac:	e5900048 	ldr	r0, [r0, #72]	; 0x48
 80042b0:	e12fff1e 	bx	lr

080042b4 <_Unwind_GetLanguageSpecificData>:
 80042b4:	e92d4008 	push	{r3, lr}
 80042b8:	ebfffef4 	bl	8003e90 <unwind_UCB_from_context>
 80042bc:	e590304c 	ldr	r3, [r0, #76]	; 0x4c
 80042c0:	e5d30007 	ldrb	r0, [r3, #7]
 80042c4:	e0830100 	add	r0, r3, r0, lsl #2
 80042c8:	e2800008 	add	r0, r0, #8
 80042cc:	e8bd4008 	pop	{r3, lr}
 80042d0:	e12fff1e 	bx	lr

080042d4 <_Unwind_GetDataRelBase>:
 80042d4:	e92d4008 	push	{r3, lr}
 80042d8:	eb000001 	bl	80042e4 <abort>

080042dc <_Unwind_GetTextRelBase>:
 80042dc:	e92d4008 	push	{r3, lr}
 80042e0:	ebffffff 	bl	80042e4 <abort>

080042e4 <abort>:
 80042e4:	e92d4008 	push	{r3, lr}
 80042e8:	e3a00006 	mov	r0, #6
 80042ec:	eb000063 	bl	8004480 <raise>
 80042f0:	e3a00001 	mov	r0, #1
 80042f4:	eb000086 	bl	8004514 <_exit>

080042f8 <memcpy>:
 80042f8:	e352000f 	cmp	r2, #15
 80042fc:	e92d4070 	push	{r4, r5, r6, lr}
 8004300:	9a000029 	bls	80043ac <memcpy+0xb4>
 8004304:	e1803001 	orr	r3, r0, r1
 8004308:	e3130003 	tst	r3, #3
 800430c:	1a000031 	bne	80043d8 <memcpy+0xe0>
 8004310:	e1a0e002 	mov	lr, r2
 8004314:	e280c010 	add	ip, r0, #16
 8004318:	e2813010 	add	r3, r1, #16
 800431c:	e5134010 	ldr	r4, [r3, #-16]
 8004320:	e50c4010 	str	r4, [ip, #-16]
 8004324:	e513400c 	ldr	r4, [r3, #-12]
 8004328:	e50c400c 	str	r4, [ip, #-12]
 800432c:	e5134008 	ldr	r4, [r3, #-8]
 8004330:	e50c4008 	str	r4, [ip, #-8]
 8004334:	e24ee010 	sub	lr, lr, #16
 8004338:	e5134004 	ldr	r4, [r3, #-4]
 800433c:	e35e000f 	cmp	lr, #15
 8004340:	e50c4004 	str	r4, [ip, #-4]
 8004344:	e2833010 	add	r3, r3, #16
 8004348:	e28cc010 	add	ip, ip, #16
 800434c:	8afffff2 	bhi	800431c <memcpy+0x24>
 8004350:	e2423010 	sub	r3, r2, #16
 8004354:	e3c3300f 	bic	r3, r3, #15
 8004358:	e202600f 	and	r6, r2, #15
 800435c:	e2833010 	add	r3, r3, #16
 8004360:	e3560003 	cmp	r6, #3
 8004364:	e0811003 	add	r1, r1, r3
 8004368:	e0803003 	add	r3, r0, r3
 800436c:	9a00001b 	bls	80043e0 <memcpy+0xe8>
 8004370:	e1a04001 	mov	r4, r1
 8004374:	e1a0c006 	mov	ip, r6
 8004378:	e243e004 	sub	lr, r3, #4
 800437c:	e24cc004 	sub	ip, ip, #4
 8004380:	e4945004 	ldr	r5, [r4], #4
 8004384:	e35c0003 	cmp	ip, #3
 8004388:	e5ae5004 	str	r5, [lr, #4]!
 800438c:	8afffffa 	bhi	800437c <memcpy+0x84>
 8004390:	e246c004 	sub	ip, r6, #4
 8004394:	e3ccc003 	bic	ip, ip, #3
 8004398:	e28cc004 	add	ip, ip, #4
 800439c:	e083300c 	add	r3, r3, ip
 80043a0:	e081100c 	add	r1, r1, ip
 80043a4:	e2022003 	and	r2, r2, #3
 80043a8:	ea000000 	b	80043b0 <memcpy+0xb8>
 80043ac:	e1a03000 	mov	r3, r0
 80043b0:	e3520000 	cmp	r2, #0
 80043b4:	0a000005 	beq	80043d0 <memcpy+0xd8>
 80043b8:	e2433001 	sub	r3, r3, #1
 80043bc:	e0812002 	add	r2, r1, r2
 80043c0:	e4d1c001 	ldrb	ip, [r1], #1
 80043c4:	e1510002 	cmp	r1, r2
 80043c8:	e5e3c001 	strb	ip, [r3, #1]!
 80043cc:	1afffffb 	bne	80043c0 <memcpy+0xc8>
 80043d0:	e8bd4070 	pop	{r4, r5, r6, lr}
 80043d4:	e12fff1e 	bx	lr
 80043d8:	e1a03000 	mov	r3, r0
 80043dc:	eafffff5 	b	80043b8 <memcpy+0xc0>
 80043e0:	e1a02006 	mov	r2, r6
 80043e4:	eafffff1 	b	80043b0 <memcpy+0xb8>

080043e8 <_raise_r>:
 80043e8:	e351001f 	cmp	r1, #31
 80043ec:	e92d4038 	push	{r3, r4, r5, lr}
 80043f0:	e1a05000 	mov	r5, r0
 80043f4:	83a03016 	movhi	r3, #22
 80043f8:	83e00000 	mvnhi	r0, #0
 80043fc:	85853000 	strhi	r3, [r5]
 8004400:	8a000013 	bhi	8004454 <_raise_r+0x6c>
 8004404:	e59522dc 	ldr	r2, [r5, #732]	; 0x2dc
 8004408:	e3520000 	cmp	r2, #0
 800440c:	e1a04001 	mov	r4, r1
 8004410:	0a000013 	beq	8004464 <_raise_r+0x7c>
 8004414:	e7923101 	ldr	r3, [r2, r1, lsl #2]
 8004418:	e3530000 	cmp	r3, #0
 800441c:	0a000010 	beq	8004464 <_raise_r+0x7c>
 8004420:	e3530001 	cmp	r3, #1
 8004424:	0a00000c 	beq	800445c <_raise_r+0x74>
 8004428:	e3730001 	cmn	r3, #1
 800442c:	03a03016 	moveq	r3, #22
 8004430:	03a00001 	moveq	r0, #1
 8004434:	05853000 	streq	r3, [r5]
 8004438:	0a000005 	beq	8004454 <_raise_r+0x6c>
 800443c:	e3a05000 	mov	r5, #0
 8004440:	e1a00001 	mov	r0, r1
 8004444:	e7825101 	str	r5, [r2, r1, lsl #2]
 8004448:	e1a0e00f 	mov	lr, pc
 800444c:	e12fff13 	bx	r3
 8004450:	e1a00005 	mov	r0, r5
 8004454:	e8bd4038 	pop	{r3, r4, r5, lr}
 8004458:	e12fff1e 	bx	lr
 800445c:	e3a00000 	mov	r0, #0
 8004460:	eafffffb 	b	8004454 <_raise_r+0x6c>
 8004464:	e1a00005 	mov	r0, r5
 8004468:	eb000019 	bl	80044d4 <_getpid_r>
 800446c:	e1a02004 	mov	r2, r4
 8004470:	e1a01000 	mov	r1, r0
 8004474:	e1a00005 	mov	r0, r5
 8004478:	eb000005 	bl	8004494 <_kill_r>
 800447c:	eafffff4 	b	8004454 <_raise_r+0x6c>

08004480 <raise>:
 8004480:	e59f3008 	ldr	r3, [pc, #8]	; 8004490 <raise+0x10>
 8004484:	e1a01000 	mov	r1, r0
 8004488:	e5930000 	ldr	r0, [r3]
 800448c:	eaffffd5 	b	80043e8 <_raise_r>
 8004490:	20000500 	.word	0x20000500

08004494 <_kill_r>:
 8004494:	e92d4038 	push	{r3, r4, r5, lr}
 8004498:	e3a03000 	mov	r3, #0
 800449c:	e59f402c 	ldr	r4, [pc, #44]	; 80044d0 <_kill_r+0x3c>
 80044a0:	e1a05000 	mov	r5, r0
 80044a4:	e1a00001 	mov	r0, r1
 80044a8:	e1a01002 	mov	r1, r2
 80044ac:	e5843000 	str	r3, [r4]
 80044b0:	eb000011 	bl	80044fc <_kill>
 80044b4:	e3700001 	cmn	r0, #1
 80044b8:	1a000002 	bne	80044c8 <_kill_r+0x34>
 80044bc:	e5943000 	ldr	r3, [r4]
 80044c0:	e3530000 	cmp	r3, #0
 80044c4:	15853000 	strne	r3, [r5]
 80044c8:	e8bd4038 	pop	{r3, r4, r5, lr}
 80044cc:	e12fff1e 	bx	lr
 80044d0:	20001044 	.word	0x20001044

080044d4 <_getpid_r>:
 80044d4:	e92d4008 	push	{r3, lr}
 80044d8:	eb000001 	bl	80044e4 <_getpid>
 80044dc:	e8bd4008 	pop	{r3, lr}
 80044e0:	e12fff1e 	bx	lr

080044e4 <_getpid>:
 80044e4:	e3a02058 	mov	r2, #88	; 0x58
 80044e8:	e59f3008 	ldr	r3, [pc, #8]	; 80044f8 <_getpid+0x14>
 80044ec:	e3e00000 	mvn	r0, #0
 80044f0:	e5832000 	str	r2, [r3]
 80044f4:	e12fff1e 	bx	lr
 80044f8:	20001044 	.word	0x20001044

080044fc <_kill>:
 80044fc:	e3a02058 	mov	r2, #88	; 0x58
 8004500:	e59f3008 	ldr	r3, [pc, #8]	; 8004510 <_kill+0x14>
 8004504:	e3e00000 	mvn	r0, #0
 8004508:	e5832000 	str	r2, [r3]
 800450c:	e12fff1e 	bx	lr
 8004510:	20001044 	.word	0x20001044

08004514 <_exit>:
 8004514:	eafffffe 	b	8004514 <_exit>

08004518 <_init>:
 8004518:	e1a0c00d 	mov	ip, sp
 800451c:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
 8004520:	e24cb004 	sub	fp, ip, #4
 8004524:	e24bd028 	sub	sp, fp, #40	; 0x28
 8004528:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
 800452c:	e12fff1e 	bx	lr

08004530 <_fini>:
 8004530:	e1a0c00d 	mov	ip, sp
 8004534:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
 8004538:	e24cb004 	sub	fp, ip, #4
 800453c:	e24bd028 	sub	sp, fp, #40	; 0x28
 8004540:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
 8004544:	e12fff1e 	bx	lr
 8004548:	453e3e3e 	.word	0x453e3e3e
 800454c:	72652020 	.word	0x72652020
 8004550:	20726f72 	.word	0x20726f72
 8004554:	65646f63 	.word	0x65646f63
 8004558:	3a752520 	.word	0x3a752520
 800455c:	000a7525 	.word	0x000a7525
 8004560:	433e3e3e 	.word	0x433e3e3e
 8004564:	69250020 	.word	0x69250020
 8004568:	20692520 	.word	0x20692520
 800456c:	25206925 	.word	0x25206925
 8004570:	25002069 	.word	0x25002069
 8004574:	69252069 	.word	0x69252069
 8004578:	20752520 	.word	0x20752520
 800457c:	00206925 	.word	0x00206925
 8004580:	3e000a0a 	.word	0x3e000a0a
 8004584:	204c3e3e 	.word	0x204c3e3e
 8004588:	20692500 	.word	0x20692500
 800458c:	25206925 	.word	0x25206925
 8004590:	75252075 	.word	0x75252075
 8004594:	3e3e0020 	.word	0x3e3e0020
 8004598:	00204f3e 	.word	0x00204f3e
 800459c:	493e3e3e 	.word	0x493e3e3e
 80045a0:	3e3e0020 	.word	0x3e3e0020
 80045a4:	0a002053 	.word	0x0a002053
 80045a8:	636c6577 	.word	0x636c6577
 80045ac:	20656d6f 	.word	0x20656d6f
 80045b0:	53206f74 	.word	0x53206f74
 80045b4:	68757a75 	.word	0x68757a75
 80045b8:	20534f61 	.word	0x20534f61
 80045bc:	205e5f5e 	.word	0x205e5f5e
 80045c0:	2e302e32 	.word	0x2e302e32
 80045c4:	55420a36 	.word	0x55420a36
 80045c8:	20444c49 	.word	0x20444c49
 80045cc:	2079614d 	.word	0x2079614d
 80045d0:	32203520 	.word	0x32203520
 80045d4:	20363130 	.word	0x20363130
 80045d8:	303a3232 	.word	0x303a3232
 80045dc:	37313a38 	.word	0x37313a38
 80045e0:	000a      	.short	0x000a
 80045e2:	7473      	.short	0x7473
 80045e4:	206f6964 	.word	0x206f6964
 80045e8:	74696e69 	.word	0x74696e69
 80045ec:	6e6f6420 	.word	0x6e6f6420
 80045f0:	00000a65 	.word	0x00000a65
 80045f4:	00000043 	.word	0x00000043

080045f8 <__EH_FRAME_BEGIN__>:
 80045f8:	00000000                                ....
