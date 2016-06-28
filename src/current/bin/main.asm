
bin/main.elf:     file format elf32-littlearm


Disassembly of section .text:

08000188 <_ZN6CRobot14get_error_typeEv>:
 8000188:	6dc0      	ldr	r0, [r0, #92]	; 0x5c
 800018a:	4770      	bx	lr

0800018c <_ZN6CRobot14get_error_codeEv>:
 800018c:	6d80      	ldr	r0, [r0, #88]	; 0x58
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
 80001c2:	4608      	mov	r0, r1
 80001c4:	4611      	mov	r1, r2
 80001c6:	f002 be5d 	b.w	8002e84 <drv8834_run>

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
 80001e0:	f001 fec2 	bl	8001f68 <rgb_get>
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
 800020e:	f001 feab 	bl	8001f68 <rgb_get>
 8000212:	ea4f 0a45 	mov.w	sl, r5, lsl #1
 8000216:	4450      	add	r0, sl
 8000218:	4b97      	ldr	r3, [pc, #604]	; (8000478 <_ZN6CRobot16line_sensor_readEv+0x2a4>)
 800021a:	f853 2025 	ldr.w	r2, [r3, r5, lsl #2]
 800021e:	8ec3      	ldrh	r3, [r0, #54]	; 0x36
 8000220:	1a9b      	subs	r3, r3, r2
 8000222:	86c3      	strh	r3, [r0, #54]	; 0x36
 8000224:	f001 fea0 	bl	8001f68 <rgb_get>
 8000228:	4b94      	ldr	r3, [pc, #592]	; (800047c <_ZN6CRobot16line_sensor_readEv+0x2a8>)
 800022a:	f853 2025 	ldr.w	r2, [r3, r5, lsl #2]
 800022e:	f830 3015 	ldrh.w	r3, [r0, r5, lsl #1]
 8000232:	1a9b      	subs	r3, r3, r2
 8000234:	f820 3015 	strh.w	r3, [r0, r5, lsl #1]
 8000238:	f001 fe96 	bl	8001f68 <rgb_get>
 800023c:	4b90      	ldr	r3, [pc, #576]	; (8000480 <_ZN6CRobot16line_sensor_readEv+0x2ac>)
 800023e:	4450      	add	r0, sl
 8000240:	f853 2025 	ldr.w	r2, [r3, r5, lsl #2]
 8000244:	8a43      	ldrh	r3, [r0, #18]
 8000246:	1a9b      	subs	r3, r3, r2
 8000248:	8243      	strh	r3, [r0, #18]
 800024a:	f001 fe8d 	bl	8001f68 <rgb_get>
 800024e:	4b8d      	ldr	r3, [pc, #564]	; (8000484 <_ZN6CRobot16line_sensor_readEv+0x2b0>)
 8000250:	4450      	add	r0, sl
 8000252:	f853 2025 	ldr.w	r2, [r3, r5, lsl #2]
 8000256:	8c83      	ldrh	r3, [r0, #36]	; 0x24
 8000258:	1a9b      	subs	r3, r3, r2
 800025a:	8483      	strh	r3, [r0, #36]	; 0x24
 800025c:	f001 fe84 	bl	8001f68 <rgb_get>
 8000260:	eb00 0045 	add.w	r0, r0, r5, lsl #1
 8000264:	f9b0 3036 	ldrsh.w	r3, [r0, #54]	; 0x36
 8000268:	4499      	add	r9, r3
 800026a:	f001 fe7d 	bl	8001f68 <rgb_get>
 800026e:	f930 3015 	ldrsh.w	r3, [r0, r5, lsl #1]
 8000272:	4498      	add	r8, r3
 8000274:	f001 fe78 	bl	8001f68 <rgb_get>
 8000278:	eb00 0045 	add.w	r0, r0, r5, lsl #1
 800027c:	f9b0 3012 	ldrsh.w	r3, [r0, #18]
 8000280:	441f      	add	r7, r3
 8000282:	f001 fe71 	bl	8001f68 <rgb_get>
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
 80002a8:	f001 fe5e 	bl	8001f68 <rgb_get>
 80002ac:	4682      	mov	sl, r0
 80002ae:	f001 fe5b 	bl	8001f68 <rgb_get>
 80002b2:	f106 0318 	add.w	r3, r6, #24
 80002b6:	005b      	lsls	r3, r3, #1
 80002b8:	4418      	add	r0, r3
 80002ba:	449a      	add	sl, r3
 80002bc:	88c3      	ldrh	r3, [r0, #6]
 80002be:	ebc3 0309 	rsb	r3, r3, r9
 80002c2:	f8aa 3006 	strh.w	r3, [sl, #6]
 80002c6:	f001 fe4f 	bl	8001f68 <rgb_get>
 80002ca:	4682      	mov	sl, r0
 80002cc:	f001 fe4c 	bl	8001f68 <rgb_get>
 80002d0:	f830 3016 	ldrh.w	r3, [r0, r6, lsl #1]
 80002d4:	ebc8 0303 	rsb	r3, r8, r3
 80002d8:	f82a 3016 	strh.w	r3, [sl, r6, lsl #1]
 80002dc:	f001 fe44 	bl	8001f68 <rgb_get>
 80002e0:	4682      	mov	sl, r0
 80002e2:	f001 fe41 	bl	8001f68 <rgb_get>
 80002e6:	f106 0308 	add.w	r3, r6, #8
 80002ea:	005b      	lsls	r3, r3, #1
 80002ec:	4418      	add	r0, r3
 80002ee:	449a      	add	sl, r3
 80002f0:	8843      	ldrh	r3, [r0, #2]
 80002f2:	1bdb      	subs	r3, r3, r7
 80002f4:	f8aa 3002 	strh.w	r3, [sl, #2]
 80002f8:	f001 fe36 	bl	8001f68 <rgb_get>
 80002fc:	4682      	mov	sl, r0
 80002fe:	f001 fe33 	bl	8001f68 <rgb_get>
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
 800031a:	f104 0568 	add.w	r5, r4, #104	; 0x68
 800031e:	462f      	mov	r7, r5
 8000320:	2600      	movs	r6, #0
 8000322:	f001 fe21 	bl	8001f68 <rgb_get>
 8000326:	eb00 0046 	add.w	r0, r0, r6, lsl #1
 800032a:	3601      	adds	r6, #1
 800032c:	8ec3      	ldrh	r3, [r0, #54]	; 0x36
 800032e:	f827 3f02 	strh.w	r3, [r7, #2]!
 8000332:	2e08      	cmp	r6, #8
 8000334:	d1f5      	bne.n	8000322 <_ZN6CRobot16line_sensor_readEv+0x14e>
 8000336:	f504 73ac 	add.w	r3, r4, #344	; 0x158
 800033a:	f103 0110 	add.w	r1, r3, #16
 800033e:	461a      	mov	r2, r3
 8000340:	f832 0f02 	ldrh.w	r0, [r2, #2]!
 8000344:	8210      	strh	r0, [r2, #16]
 8000346:	428a      	cmp	r2, r1
 8000348:	d1fa      	bne.n	8000340 <_ZN6CRobot16line_sensor_readEv+0x16c>
 800034a:	3b10      	subs	r3, #16
 800034c:	42ab      	cmp	r3, r5
 800034e:	d1f4      	bne.n	800033a <_ZN6CRobot16line_sensor_readEv+0x166>
 8000350:	f104 0378 	add.w	r3, r4, #120	; 0x78
 8000354:	f835 2f02 	ldrh.w	r2, [r5, #2]!
 8000358:	822a      	strh	r2, [r5, #16]
 800035a:	429d      	cmp	r5, r3
 800035c:	d1fa      	bne.n	8000354 <_ZN6CRobot16line_sensor_readEv+0x180>
 800035e:	f8b4 6070 	ldrh.w	r6, [r4, #112]	; 0x70
 8000362:	f8b4 7072 	ldrh.w	r7, [r4, #114]	; 0x72
 8000366:	f8b4 c074 	ldrh.w	ip, [r4, #116]	; 0x74
 800036a:	b239      	sxth	r1, r7
 800036c:	b235      	sxth	r5, r6
 800036e:	186a      	adds	r2, r5, r1
 8000370:	bf1f      	itttt	ne
 8000372:	4b45      	ldrne	r3, [pc, #276]	; (8000488 <_ZN6CRobot16line_sensor_readEv+0x2b4>)
 8000374:	88d8      	ldrhne	r0, [r3, #6]
 8000376:	891b      	ldrhne	r3, [r3, #8]
 8000378:	fb17 f303 	smulbbne	r3, r7, r3
 800037c:	bf1f      	itttt	ne
 800037e:	fb16 3300 	smlabbne	r3, r6, r0, r3
 8000382:	2002      	movne	r0, #2
 8000384:	fb93 f3f2 	sdivne	r3, r3, r2
 8000388:	fb92 f2f0 	sdivne	r2, r2, r0
 800038c:	fa0f f08c 	sxth.w	r0, ip
 8000390:	bf08      	it	eq
 8000392:	4613      	moveq	r3, r2
 8000394:	1841      	adds	r1, r0, r1
 8000396:	d00d      	beq.n	80003b4 <_ZN6CRobot16line_sensor_readEv+0x1e0>
 8000398:	f9b4 e000 	ldrsh.w	lr, [r4]
 800039c:	4586      	cmp	lr, r0
 800039e:	da09      	bge.n	80003b4 <_ZN6CRobot16line_sensor_readEv+0x1e0>
 80003a0:	4b39      	ldr	r3, [pc, #228]	; (8000488 <_ZN6CRobot16line_sensor_readEv+0x2b4>)
 80003a2:	895a      	ldrh	r2, [r3, #10]
 80003a4:	891b      	ldrh	r3, [r3, #8]
 80003a6:	fb17 f303 	smulbb	r3, r7, r3
 80003aa:	fb1c 3302 	smlabb	r3, ip, r2, r3
 80003ae:	4602      	mov	r2, r0
 80003b0:	fb93 f3f1 	sdiv	r3, r3, r1
 80003b4:	f8b4 e06e 	ldrh.w	lr, [r4, #110]	; 0x6e
 80003b8:	fa0f f18e 	sxth.w	r1, lr
 80003bc:	194d      	adds	r5, r1, r5
 80003be:	d00d      	beq.n	80003dc <_ZN6CRobot16line_sensor_readEv+0x208>
 80003c0:	f9b4 7000 	ldrsh.w	r7, [r4]
 80003c4:	428f      	cmp	r7, r1
 80003c6:	da09      	bge.n	80003dc <_ZN6CRobot16line_sensor_readEv+0x208>
 80003c8:	4b2f      	ldr	r3, [pc, #188]	; (8000488 <_ZN6CRobot16line_sensor_readEv+0x2b4>)
 80003ca:	889a      	ldrh	r2, [r3, #4]
 80003cc:	88db      	ldrh	r3, [r3, #6]
 80003ce:	fb16 f303 	smulbb	r3, r6, r3
 80003d2:	fb1e 3302 	smlabb	r3, lr, r2, r3
 80003d6:	460a      	mov	r2, r1
 80003d8:	fb93 f3f5 	sdiv	r3, r3, r5
 80003dc:	f8b4 7076 	ldrh.w	r7, [r4, #118]	; 0x76
 80003e0:	b23e      	sxth	r6, r7
 80003e2:	1830      	adds	r0, r6, r0
 80003e4:	d00d      	beq.n	8000402 <_ZN6CRobot16line_sensor_readEv+0x22e>
 80003e6:	f9b4 5000 	ldrsh.w	r5, [r4]
 80003ea:	42b5      	cmp	r5, r6
 80003ec:	da09      	bge.n	8000402 <_ZN6CRobot16line_sensor_readEv+0x22e>
 80003ee:	4a26      	ldr	r2, [pc, #152]	; (8000488 <_ZN6CRobot16line_sensor_readEv+0x2b4>)
 80003f0:	8995      	ldrh	r5, [r2, #12]
 80003f2:	8952      	ldrh	r2, [r2, #10]
 80003f4:	fb1c f302 	smulbb	r3, ip, r2
 80003f8:	4632      	mov	r2, r6
 80003fa:	fb17 3705 	smlabb	r7, r7, r5, r3
 80003fe:	fb97 f3f0 	sdiv	r3, r7, r0
 8000402:	f8b4 506c 	ldrh.w	r5, [r4, #108]	; 0x6c
 8000406:	b228      	sxth	r0, r5
 8000408:	1841      	adds	r1, r0, r1
 800040a:	d00d      	beq.n	8000428 <_ZN6CRobot16line_sensor_readEv+0x254>
 800040c:	f9b4 6000 	ldrsh.w	r6, [r4]
 8000410:	4286      	cmp	r6, r0
 8000412:	da09      	bge.n	8000428 <_ZN6CRobot16line_sensor_readEv+0x254>
 8000414:	4a1c      	ldr	r2, [pc, #112]	; (8000488 <_ZN6CRobot16line_sensor_readEv+0x2b4>)
 8000416:	8856      	ldrh	r6, [r2, #2]
 8000418:	8892      	ldrh	r2, [r2, #4]
 800041a:	fb1e f302 	smulbb	r3, lr, r2
 800041e:	4602      	mov	r2, r0
 8000420:	fb15 3306 	smlabb	r3, r5, r6, r3
 8000424:	fb93 f3f1 	sdiv	r3, r3, r1
 8000428:	f9b4 0078 	ldrsh.w	r0, [r4, #120]	; 0x78
 800042c:	f9b4 1000 	ldrsh.w	r1, [r4]
 8000430:	4288      	cmp	r0, r1
 8000432:	bfc4      	itt	gt
 8000434:	4b14      	ldrgt	r3, [pc, #80]	; (8000488 <_ZN6CRobot16line_sensor_readEv+0x2b4>)
 8000436:	4602      	movgt	r2, r0
 8000438:	f9b4 006a 	ldrsh.w	r0, [r4, #106]	; 0x6a
 800043c:	bfc8      	it	gt
 800043e:	f9b3 300e 	ldrshgt.w	r3, [r3, #14]
 8000442:	4288      	cmp	r0, r1
 8000444:	bfc2      	ittt	gt
 8000446:	4b10      	ldrgt	r3, [pc, #64]	; (8000488 <_ZN6CRobot16line_sensor_readEv+0x2b4>)
 8000448:	4602      	movgt	r2, r0
 800044a:	f9b3 3000 	ldrshgt.w	r3, [r3]
 800044e:	428a      	cmp	r2, r1
 8000450:	dd0d      	ble.n	800046e <_ZN6CRobot16line_sensor_readEv+0x29a>
 8000452:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
 8000456:	dc05      	bgt.n	8000464 <_ZN6CRobot16line_sensor_readEv+0x290>
 8000458:	f06f 02ff 	mvn.w	r2, #255	; 0xff
 800045c:	4293      	cmp	r3, r2
 800045e:	bfb8      	it	lt
 8000460:	4613      	movlt	r3, r2
 8000462:	e001      	b.n	8000468 <_ZN6CRobot16line_sensor_readEv+0x294>
 8000464:	f44f 7380 	mov.w	r3, #256	; 0x100
 8000468:	6363      	str	r3, [r4, #52]	; 0x34
 800046a:	2301      	movs	r3, #1
 800046c:	e000      	b.n	8000470 <_ZN6CRobot16line_sensor_readEv+0x29c>
 800046e:	2300      	movs	r3, #0
 8000470:	f884 3030 	strb.w	r3, [r4, #48]	; 0x30
 8000474:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8000478:	200004fc 	.word	0x200004fc
 800047c:	2000049c 	.word	0x2000049c
 8000480:	200004bc 	.word	0x200004bc
 8000484:	200004dc 	.word	0x200004dc
 8000488:	20000000 	.word	0x20000000

0800048c <_ZN6CRobot19process_rgb_sensorsEv>:
 800048c:	b510      	push	{r4, lr}
 800048e:	4604      	mov	r4, r0
 8000490:	f001 fd6e 	bl	8001f70 <rgb_read>
 8000494:	4620      	mov	r0, r4
 8000496:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800049a:	f7ff be9b 	b.w	80001d4 <_ZN6CRobot16line_sensor_readEv>
	...

080004a0 <_ZN6CRobot16line_sensor_initEv>:
 80004a0:	e92d 4ff7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80004a4:	4680      	mov	r8, r0
 80004a6:	f04f 0900 	mov.w	r9, #0
 80004aa:	f001 fd1b 	bl	8001ee4 <rgb_init>
 80004ae:	f001 fd5f 	bl	8001f70 <rgb_read>
 80004b2:	2192      	movs	r1, #146	; 0x92
 80004b4:	2072      	movs	r0, #114	; 0x72
 80004b6:	f108 0260 	add.w	r2, r8, #96	; 0x60
 80004ba:	f001 fcf8 	bl	8001eae <rgb_i2c_read_reg>
 80004be:	f108 015f 	add.w	r1, r8, #95	; 0x5f
 80004c2:	464b      	mov	r3, r9
 80004c4:	f811 2f01 	ldrb.w	r2, [r1, #1]!
 80004c8:	2a69      	cmp	r2, #105	; 0x69
 80004ca:	bf1c      	itt	ne
 80004cc:	2201      	movne	r2, #1
 80004ce:	409a      	lslne	r2, r3
 80004d0:	f103 0301 	add.w	r3, r3, #1
 80004d4:	bf18      	it	ne
 80004d6:	ea49 0902 	orrne.w	r9, r9, r2
 80004da:	2b09      	cmp	r3, #9
 80004dc:	d1f2      	bne.n	80004c4 <_ZN6CRobot16line_sensor_initEv+0x24>
 80004de:	f108 0368 	add.w	r3, r8, #104	; 0x68
 80004e2:	9301      	str	r3, [sp, #4]
 80004e4:	9a01      	ldr	r2, [sp, #4]
 80004e6:	f108 0378 	add.w	r3, r8, #120	; 0x78
 80004ea:	9300      	str	r3, [sp, #0]
 80004ec:	2300      	movs	r3, #0
 80004ee:	f822 3f02 	strh.w	r3, [r2, #2]!
 80004f2:	9900      	ldr	r1, [sp, #0]
 80004f4:	428a      	cmp	r2, r1
 80004f6:	d1f9      	bne.n	80004ec <_ZN6CRobot16line_sensor_initEv+0x4c>
 80004f8:	4a3d      	ldr	r2, [pc, #244]	; (80005f0 <_ZN6CRobot16line_sensor_initEv+0x150>)
 80004fa:	4f3e      	ldr	r7, [pc, #248]	; (80005f4 <_ZN6CRobot16line_sensor_initEv+0x154>)
 80004fc:	4e3e      	ldr	r6, [pc, #248]	; (80005f8 <_ZN6CRobot16line_sensor_initEv+0x158>)
 80004fe:	4d3f      	ldr	r5, [pc, #252]	; (80005fc <_ZN6CRobot16line_sensor_initEv+0x15c>)
 8000500:	2100      	movs	r1, #0
 8000502:	f847 1023 	str.w	r1, [r7, r3, lsl #2]
 8000506:	f846 1023 	str.w	r1, [r6, r3, lsl #2]
 800050a:	f845 1023 	str.w	r1, [r5, r3, lsl #2]
 800050e:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
 8000512:	3301      	adds	r3, #1
 8000514:	2b08      	cmp	r3, #8
 8000516:	4692      	mov	sl, r2
 8000518:	d1ee      	bne.n	80004f8 <_ZN6CRobot16line_sensor_initEv+0x58>
 800051a:	2440      	movs	r4, #64	; 0x40
 800051c:	f001 fd28 	bl	8001f70 <rgb_read>
 8000520:	f04f 0b00 	mov.w	fp, #0
 8000524:	f001 fd20 	bl	8001f68 <rgb_get>
 8000528:	eb00 004b 	add.w	r0, r0, fp, lsl #1
 800052c:	f9b0 1036 	ldrsh.w	r1, [r0, #54]	; 0x36
 8000530:	f857 002b 	ldr.w	r0, [r7, fp, lsl #2]
 8000534:	4401      	add	r1, r0
 8000536:	f847 102b 	str.w	r1, [r7, fp, lsl #2]
 800053a:	f001 fd15 	bl	8001f68 <rgb_get>
 800053e:	f930 101b 	ldrsh.w	r1, [r0, fp, lsl #1]
 8000542:	f856 002b 	ldr.w	r0, [r6, fp, lsl #2]
 8000546:	4401      	add	r1, r0
 8000548:	f846 102b 	str.w	r1, [r6, fp, lsl #2]
 800054c:	f001 fd0c 	bl	8001f68 <rgb_get>
 8000550:	eb00 004b 	add.w	r0, r0, fp, lsl #1
 8000554:	f9b0 1012 	ldrsh.w	r1, [r0, #18]
 8000558:	f855 002b 	ldr.w	r0, [r5, fp, lsl #2]
 800055c:	4401      	add	r1, r0
 800055e:	f845 102b 	str.w	r1, [r5, fp, lsl #2]
 8000562:	f001 fd01 	bl	8001f68 <rgb_get>
 8000566:	eb00 004b 	add.w	r0, r0, fp, lsl #1
 800056a:	f9b0 1024 	ldrsh.w	r1, [r0, #36]	; 0x24
 800056e:	f85a 002b 	ldr.w	r0, [sl, fp, lsl #2]
 8000572:	4401      	add	r1, r0
 8000574:	f84a 102b 	str.w	r1, [sl, fp, lsl #2]
 8000578:	f10b 0b01 	add.w	fp, fp, #1
 800057c:	f1bb 0f08 	cmp.w	fp, #8
 8000580:	d1d0      	bne.n	8000524 <_ZN6CRobot16line_sensor_initEv+0x84>
 8000582:	2005      	movs	r0, #5
 8000584:	f002 f8c6 	bl	8002714 <timer_delay_ms>
 8000588:	3c01      	subs	r4, #1
 800058a:	d1c7      	bne.n	800051c <_ZN6CRobot16line_sensor_initEv+0x7c>
 800058c:	f857 3024 	ldr.w	r3, [r7, r4, lsl #2]
 8000590:	099b      	lsrs	r3, r3, #6
 8000592:	f847 3024 	str.w	r3, [r7, r4, lsl #2]
 8000596:	f856 3024 	ldr.w	r3, [r6, r4, lsl #2]
 800059a:	099b      	lsrs	r3, r3, #6
 800059c:	f846 3024 	str.w	r3, [r6, r4, lsl #2]
 80005a0:	f855 3024 	ldr.w	r3, [r5, r4, lsl #2]
 80005a4:	099b      	lsrs	r3, r3, #6
 80005a6:	f845 3024 	str.w	r3, [r5, r4, lsl #2]
 80005aa:	f85a 3024 	ldr.w	r3, [sl, r4, lsl #2]
 80005ae:	099b      	lsrs	r3, r3, #6
 80005b0:	f84a 3024 	str.w	r3, [sl, r4, lsl #2]
 80005b4:	3401      	adds	r4, #1
 80005b6:	2c08      	cmp	r4, #8
 80005b8:	d1e8      	bne.n	800058c <_ZN6CRobot16line_sensor_initEv+0xec>
 80005ba:	4640      	mov	r0, r8
 80005bc:	f7ff fe0a 	bl	80001d4 <_ZN6CRobot16line_sensor_readEv>
 80005c0:	2400      	movs	r4, #0
 80005c2:	4640      	mov	r0, r8
 80005c4:	f7ff fe06 	bl	80001d4 <_ZN6CRobot16line_sensor_readEv>
 80005c8:	9b01      	ldr	r3, [sp, #4]
 80005ca:	f833 1f02 	ldrh.w	r1, [r3, #2]!
 80005ce:	191a      	adds	r2, r3, r4
 80005d0:	8211      	strh	r1, [r2, #16]
 80005d2:	9a00      	ldr	r2, [sp, #0]
 80005d4:	4293      	cmp	r3, r2
 80005d6:	d1f8      	bne.n	80005ca <_ZN6CRobot16line_sensor_initEv+0x12a>
 80005d8:	2005      	movs	r0, #5
 80005da:	3410      	adds	r4, #16
 80005dc:	f002 f89a 	bl	8002714 <timer_delay_ms>
 80005e0:	f5b4 7f80 	cmp.w	r4, #256	; 0x100
 80005e4:	d1ed      	bne.n	80005c2 <_ZN6CRobot16line_sensor_initEv+0x122>
 80005e6:	4648      	mov	r0, r9
 80005e8:	b003      	add	sp, #12
 80005ea:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80005ee:	bf00      	nop
 80005f0:	200004dc 	.word	0x200004dc
 80005f4:	200004fc 	.word	0x200004fc
 80005f8:	2000049c 	.word	0x2000049c
 80005fc:	200004bc 	.word	0x200004bc

08000600 <_ZN6CRobot28get_line_sensor_raw_data_difEv>:
 8000600:	306a      	adds	r0, #106	; 0x6a
 8000602:	4770      	bx	lr

08000604 <_ZN6CRobot12lsm9ds0_readEv>:
 8000604:	b538      	push	{r3, r4, r5, lr}
 8000606:	2128      	movs	r1, #40	; 0x28
 8000608:	4604      	mov	r4, r0
 800060a:	20d4      	movs	r0, #212	; 0xd4
 800060c:	f002 fafd 	bl	8002c0a <i2c_read_reg>
 8000610:	2129      	movs	r1, #41	; 0x29
 8000612:	4605      	mov	r5, r0
 8000614:	20d4      	movs	r0, #212	; 0xd4
 8000616:	f002 faf8 	bl	8002c0a <i2c_read_reg>
 800061a:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 800061e:	f8a4 0186 	strh.w	r0, [r4, #390]	; 0x186
 8000622:	212a      	movs	r1, #42	; 0x2a
 8000624:	20d4      	movs	r0, #212	; 0xd4
 8000626:	f002 faf0 	bl	8002c0a <i2c_read_reg>
 800062a:	212b      	movs	r1, #43	; 0x2b
 800062c:	4605      	mov	r5, r0
 800062e:	20d4      	movs	r0, #212	; 0xd4
 8000630:	f002 faeb 	bl	8002c0a <i2c_read_reg>
 8000634:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000638:	f8a4 0188 	strh.w	r0, [r4, #392]	; 0x188
 800063c:	212c      	movs	r1, #44	; 0x2c
 800063e:	20d4      	movs	r0, #212	; 0xd4
 8000640:	f002 fae3 	bl	8002c0a <i2c_read_reg>
 8000644:	212d      	movs	r1, #45	; 0x2d
 8000646:	4605      	mov	r5, r0
 8000648:	20d4      	movs	r0, #212	; 0xd4
 800064a:	f002 fade 	bl	8002c0a <i2c_read_reg>
 800064e:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000652:	f8a4 018a 	strh.w	r0, [r4, #394]	; 0x18a
 8000656:	2108      	movs	r1, #8
 8000658:	203c      	movs	r0, #60	; 0x3c
 800065a:	f002 fad6 	bl	8002c0a <i2c_read_reg>
 800065e:	2109      	movs	r1, #9
 8000660:	4605      	mov	r5, r0
 8000662:	203c      	movs	r0, #60	; 0x3c
 8000664:	f002 fad1 	bl	8002c0a <i2c_read_reg>
 8000668:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 800066c:	f8a4 0180 	strh.w	r0, [r4, #384]	; 0x180
 8000670:	210a      	movs	r1, #10
 8000672:	203c      	movs	r0, #60	; 0x3c
 8000674:	f002 fac9 	bl	8002c0a <i2c_read_reg>
 8000678:	210b      	movs	r1, #11
 800067a:	4605      	mov	r5, r0
 800067c:	203c      	movs	r0, #60	; 0x3c
 800067e:	f002 fac4 	bl	8002c0a <i2c_read_reg>
 8000682:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000686:	f8a4 0182 	strh.w	r0, [r4, #386]	; 0x182
 800068a:	210c      	movs	r1, #12
 800068c:	203c      	movs	r0, #60	; 0x3c
 800068e:	f002 fabc 	bl	8002c0a <i2c_read_reg>
 8000692:	210d      	movs	r1, #13
 8000694:	4605      	mov	r5, r0
 8000696:	203c      	movs	r0, #60	; 0x3c
 8000698:	f002 fab7 	bl	8002c0a <i2c_read_reg>
 800069c:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 80006a0:	f8a4 0184 	strh.w	r0, [r4, #388]	; 0x184
 80006a4:	2128      	movs	r1, #40	; 0x28
 80006a6:	203c      	movs	r0, #60	; 0x3c
 80006a8:	f002 faaf 	bl	8002c0a <i2c_read_reg>
 80006ac:	2129      	movs	r1, #41	; 0x29
 80006ae:	4605      	mov	r5, r0
 80006b0:	203c      	movs	r0, #60	; 0x3c
 80006b2:	f002 faaa 	bl	8002c0a <i2c_read_reg>
 80006b6:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 80006ba:	f8a4 017a 	strh.w	r0, [r4, #378]	; 0x17a
 80006be:	212a      	movs	r1, #42	; 0x2a
 80006c0:	203c      	movs	r0, #60	; 0x3c
 80006c2:	f002 faa2 	bl	8002c0a <i2c_read_reg>
 80006c6:	212b      	movs	r1, #43	; 0x2b
 80006c8:	4605      	mov	r5, r0
 80006ca:	203c      	movs	r0, #60	; 0x3c
 80006cc:	f002 fa9d 	bl	8002c0a <i2c_read_reg>
 80006d0:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 80006d4:	f8a4 017c 	strh.w	r0, [r4, #380]	; 0x17c
 80006d8:	212c      	movs	r1, #44	; 0x2c
 80006da:	203c      	movs	r0, #60	; 0x3c
 80006dc:	f002 fa95 	bl	8002c0a <i2c_read_reg>
 80006e0:	212d      	movs	r1, #45	; 0x2d
 80006e2:	4605      	mov	r5, r0
 80006e4:	203c      	movs	r0, #60	; 0x3c
 80006e6:	f002 fa90 	bl	8002c0a <i2c_read_reg>
 80006ea:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 80006ee:	f8a4 017e 	strh.w	r0, [r4, #382]	; 0x17e
 80006f2:	2105      	movs	r1, #5
 80006f4:	203c      	movs	r0, #60	; 0x3c
 80006f6:	f002 fa88 	bl	8002c0a <i2c_read_reg>
 80006fa:	2106      	movs	r1, #6
 80006fc:	4605      	mov	r5, r0
 80006fe:	203c      	movs	r0, #60	; 0x3c
 8000700:	f002 fa83 	bl	8002c0a <i2c_read_reg>
 8000704:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000708:	f8a4 0198 	strh.w	r0, [r4, #408]	; 0x198
 800070c:	bd38      	pop	{r3, r4, r5, pc}

0800070e <_ZN6CRobot18process_imu_sensorEv>:
 800070e:	b510      	push	{r4, lr}
 8000710:	4604      	mov	r4, r0
 8000712:	f7ff ff77 	bl	8000604 <_ZN6CRobot12lsm9ds0_readEv>
 8000716:	f9b4 3186 	ldrsh.w	r3, [r4, #390]	; 0x186
 800071a:	f8d4 218c 	ldr.w	r2, [r4, #396]	; 0x18c
 800071e:	1a9a      	subs	r2, r3, r2
 8000720:	6ca3      	ldr	r3, [r4, #72]	; 0x48
 8000722:	2164      	movs	r1, #100	; 0x64
 8000724:	fb92 f2f1 	sdiv	r2, r2, r1
 8000728:	441a      	add	r2, r3
 800072a:	64a2      	str	r2, [r4, #72]	; 0x48
 800072c:	f8d4 3190 	ldr.w	r3, [r4, #400]	; 0x190
 8000730:	f9b4 2188 	ldrsh.w	r2, [r4, #392]	; 0x188
 8000734:	1ad2      	subs	r2, r2, r3
 8000736:	6ce3      	ldr	r3, [r4, #76]	; 0x4c
 8000738:	fb92 f2f1 	sdiv	r2, r2, r1
 800073c:	441a      	add	r2, r3
 800073e:	64e2      	str	r2, [r4, #76]	; 0x4c
 8000740:	f8d4 3194 	ldr.w	r3, [r4, #404]	; 0x194
 8000744:	f9b4 218a 	ldrsh.w	r2, [r4, #394]	; 0x18a
 8000748:	1ad3      	subs	r3, r2, r3
 800074a:	6d22      	ldr	r2, [r4, #80]	; 0x50
 800074c:	fb93 f3f1 	sdiv	r3, r3, r1
 8000750:	4413      	add	r3, r2
 8000752:	6523      	str	r3, [r4, #80]	; 0x50
 8000754:	f9b4 317a 	ldrsh.w	r3, [r4, #378]	; 0x17a
 8000758:	6563      	str	r3, [r4, #84]	; 0x54
 800075a:	bd10      	pop	{r4, pc}

0800075c <_ZN6CRobot12lsm9ds0_initEv>:
 800075c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8000760:	210f      	movs	r1, #15
 8000762:	4604      	mov	r4, r0
 8000764:	20d4      	movs	r0, #212	; 0xd4
 8000766:	f002 fa50 	bl	8002c0a <i2c_read_reg>
 800076a:	28d4      	cmp	r0, #212	; 0xd4
 800076c:	4605      	mov	r5, r0
 800076e:	d164      	bne.n	800083a <_ZN6CRobot12lsm9ds0_initEv+0xde>
 8000770:	203c      	movs	r0, #60	; 0x3c
 8000772:	210f      	movs	r1, #15
 8000774:	f002 fa49 	bl	8002c0a <i2c_read_reg>
 8000778:	2849      	cmp	r0, #73	; 0x49
 800077a:	d160      	bne.n	800083e <_ZN6CRobot12lsm9ds0_initEv+0xe2>
 800077c:	4628      	mov	r0, r5
 800077e:	2120      	movs	r1, #32
 8000780:	22ff      	movs	r2, #255	; 0xff
 8000782:	f002 fa2f 	bl	8002be4 <i2c_write_reg>
 8000786:	4628      	mov	r0, r5
 8000788:	2123      	movs	r1, #35	; 0x23
 800078a:	2210      	movs	r2, #16
 800078c:	f002 fa2a 	bl	8002be4 <i2c_write_reg>
 8000790:	203c      	movs	r0, #60	; 0x3c
 8000792:	211f      	movs	r1, #31
 8000794:	2200      	movs	r2, #0
 8000796:	f002 fa25 	bl	8002be4 <i2c_write_reg>
 800079a:	203c      	movs	r0, #60	; 0x3c
 800079c:	2120      	movs	r1, #32
 800079e:	2267      	movs	r2, #103	; 0x67
 80007a0:	f002 fa20 	bl	8002be4 <i2c_write_reg>
 80007a4:	203c      	movs	r0, #60	; 0x3c
 80007a6:	2121      	movs	r1, #33	; 0x21
 80007a8:	2200      	movs	r2, #0
 80007aa:	f002 fa1b 	bl	8002be4 <i2c_write_reg>
 80007ae:	203c      	movs	r0, #60	; 0x3c
 80007b0:	2124      	movs	r1, #36	; 0x24
 80007b2:	22f4      	movs	r2, #244	; 0xf4
 80007b4:	f002 fa16 	bl	8002be4 <i2c_write_reg>
 80007b8:	203c      	movs	r0, #60	; 0x3c
 80007ba:	2125      	movs	r1, #37	; 0x25
 80007bc:	2200      	movs	r2, #0
 80007be:	f002 fa11 	bl	8002be4 <i2c_write_reg>
 80007c2:	203c      	movs	r0, #60	; 0x3c
 80007c4:	2126      	movs	r1, #38	; 0x26
 80007c6:	2280      	movs	r2, #128	; 0x80
 80007c8:	f002 fa0c 	bl	8002be4 <i2c_write_reg>
 80007cc:	4620      	mov	r0, r4
 80007ce:	f7ff ff19 	bl	8000604 <_ZN6CRobot12lsm9ds0_readEv>
 80007d2:	2600      	movs	r6, #0
 80007d4:	2540      	movs	r5, #64	; 0x40
 80007d6:	4637      	mov	r7, r6
 80007d8:	46b0      	mov	r8, r6
 80007da:	4620      	mov	r0, r4
 80007dc:	f7ff ff12 	bl	8000604 <_ZN6CRobot12lsm9ds0_readEv>
 80007e0:	f9b4 3186 	ldrsh.w	r3, [r4, #390]	; 0x186
 80007e4:	4498      	add	r8, r3
 80007e6:	f9b4 3188 	ldrsh.w	r3, [r4, #392]	; 0x188
 80007ea:	441f      	add	r7, r3
 80007ec:	f9b4 318a 	ldrsh.w	r3, [r4, #394]	; 0x18a
 80007f0:	3d01      	subs	r5, #1
 80007f2:	441e      	add	r6, r3
 80007f4:	d1f1      	bne.n	80007da <_ZN6CRobot12lsm9ds0_initEv+0x7e>
 80007f6:	2240      	movs	r2, #64	; 0x40
 80007f8:	f8a4 517a 	strh.w	r5, [r4, #378]	; 0x17a
 80007fc:	fb98 f3f2 	sdiv	r3, r8, r2
 8000800:	fb97 f7f2 	sdiv	r7, r7, r2
 8000804:	fb96 f6f2 	sdiv	r6, r6, r2
 8000808:	f8c4 318c 	str.w	r3, [r4, #396]	; 0x18c
 800080c:	f8c4 7190 	str.w	r7, [r4, #400]	; 0x190
 8000810:	f8c4 6194 	str.w	r6, [r4, #404]	; 0x194
 8000814:	f8a4 517c 	strh.w	r5, [r4, #380]	; 0x17c
 8000818:	f8a4 517e 	strh.w	r5, [r4, #382]	; 0x17e
 800081c:	f8a4 5180 	strh.w	r5, [r4, #384]	; 0x180
 8000820:	f8a4 5182 	strh.w	r5, [r4, #386]	; 0x182
 8000824:	f8a4 5184 	strh.w	r5, [r4, #388]	; 0x184
 8000828:	f8a4 5186 	strh.w	r5, [r4, #390]	; 0x186
 800082c:	f8a4 5188 	strh.w	r5, [r4, #392]	; 0x188
 8000830:	f8a4 518a 	strh.w	r5, [r4, #394]	; 0x18a
 8000834:	f8a4 5198 	strh.w	r5, [r4, #408]	; 0x198
 8000838:	e002      	b.n	8000840 <_ZN6CRobot12lsm9ds0_initEv+0xe4>
 800083a:	2501      	movs	r5, #1
 800083c:	e000      	b.n	8000840 <_ZN6CRobot12lsm9ds0_initEv+0xe4>
 800083e:	2502      	movs	r5, #2
 8000840:	4628      	mov	r0, r5
 8000842:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08000846 <_ZN6CRobot4initEv>:
 8000846:	2300      	movs	r3, #0
 8000848:	b510      	push	{r4, lr}
 800084a:	6583      	str	r3, [r0, #88]	; 0x58
 800084c:	65c3      	str	r3, [r0, #92]	; 0x5c
 800084e:	4604      	mov	r4, r0
 8000850:	f7ff fe26 	bl	80004a0 <_ZN6CRobot16line_sensor_initEv>
 8000854:	b110      	cbz	r0, 800085c <_ZN6CRobot4initEv+0x16>
 8000856:	65a0      	str	r0, [r4, #88]	; 0x58
 8000858:	2302      	movs	r3, #2
 800085a:	e00d      	b.n	8000878 <_ZN6CRobot4initEv+0x32>
 800085c:	f884 0030 	strb.w	r0, [r4, #48]	; 0x30
 8000860:	6360      	str	r0, [r4, #52]	; 0x34
 8000862:	63a0      	str	r0, [r4, #56]	; 0x38
 8000864:	63e0      	str	r0, [r4, #60]	; 0x3c
 8000866:	f884 0040 	strb.w	r0, [r4, #64]	; 0x40
 800086a:	6460      	str	r0, [r4, #68]	; 0x44
 800086c:	4620      	mov	r0, r4
 800086e:	f7ff ff75 	bl	800075c <_ZN6CRobot12lsm9ds0_initEv>
 8000872:	b118      	cbz	r0, 800087c <_ZN6CRobot4initEv+0x36>
 8000874:	65a0      	str	r0, [r4, #88]	; 0x58
 8000876:	2303      	movs	r3, #3
 8000878:	65e3      	str	r3, [r4, #92]	; 0x5c
 800087a:	bd10      	pop	{r4, pc}
 800087c:	64a0      	str	r0, [r4, #72]	; 0x48
 800087e:	64e0      	str	r0, [r4, #76]	; 0x4c
 8000880:	6520      	str	r0, [r4, #80]	; 0x50
 8000882:	bd10      	pop	{r4, pc}

08000884 <abort_error_>:
 8000884:	b570      	push	{r4, r5, r6, lr}
 8000886:	4605      	mov	r5, r0
 8000888:	460e      	mov	r6, r1
 800088a:	480f      	ldr	r0, [pc, #60]	; (80008c8 <abort_error_+0x44>)
 800088c:	4629      	mov	r1, r5
 800088e:	4632      	mov	r2, r6
 8000890:	f000 ffc0 	bl	8001814 <printf_>
 8000894:	2400      	movs	r4, #0
 8000896:	1ceb      	adds	r3, r5, #3
 8000898:	429c      	cmp	r4, r3
 800089a:	d20f      	bcs.n	80008bc <abort_error_+0x38>
 800089c:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 80008a0:	f002 fca0 	bl	80031e4 <led_on>
 80008a4:	2032      	movs	r0, #50	; 0x32
 80008a6:	f001 ff35 	bl	8002714 <timer_delay_ms>
 80008aa:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 80008ae:	f002 fca3 	bl	80031f8 <led_off>
 80008b2:	2064      	movs	r0, #100	; 0x64
 80008b4:	f001 ff2e 	bl	8002714 <timer_delay_ms>
 80008b8:	3401      	adds	r4, #1
 80008ba:	e7ec      	b.n	8000896 <abort_error_+0x12>
 80008bc:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 80008c0:	f001 ff28 	bl	8002714 <timer_delay_ms>
 80008c4:	e7e1      	b.n	800088a <abort_error_+0x6>
 80008c6:	bf00      	nop
 80008c8:	08004e70 	.word	0x08004e70

080008cc <_ZN9CObstacle4initEP6CRobot>:
 80008cc:	b121      	cbz	r1, 80008d8 <_ZN9CObstacle4initEP6CRobot+0xc>
 80008ce:	2300      	movs	r3, #0
 80008d0:	6003      	str	r3, [r0, #0]
 80008d2:	4b02      	ldr	r3, [pc, #8]	; (80008dc <_ZN9CObstacle4initEP6CRobot+0x10>)
 80008d4:	6041      	str	r1, [r0, #4]
 80008d6:	6019      	str	r1, [r3, #0]
 80008d8:	4770      	bx	lr
 80008da:	bf00      	nop
 80008dc:	2000051c 	.word	0x2000051c

080008e0 <_ZN9CObstacle12rotate_robotEi>:
 80008e0:	b538      	push	{r3, r4, r5, lr}
 80008e2:	4605      	mov	r5, r0
 80008e4:	ed2d 8b02 	vpush	{d8}
 80008e8:	f240 644a 	movw	r4, #1610	; 0x64a
 80008ec:	6840      	ldr	r0, [r0, #4]
 80008ee:	ed9f 8a22 	vldr	s16, [pc, #136]	; 8000978 <_ZN9CObstacle12rotate_robotEi+0x98>
 80008f2:	434c      	muls	r4, r1
 80008f4:	215a      	movs	r1, #90	; 0x5a
 80008f6:	fb94 f4f1 	sdiv	r4, r4, r1
 80008fa:	f7ff fc66 	bl	80001ca <_ZN6CRobot9reset_imuEv>
 80008fe:	6868      	ldr	r0, [r5, #4]
 8000900:	f7ff fc5d 	bl	80001be <_ZN6CRobot14get_imu_sensorEv>
 8000904:	6883      	ldr	r3, [r0, #8]
 8000906:	ea84 72e4 	eor.w	r2, r4, r4, asr #31
 800090a:	2b00      	cmp	r3, #0
 800090c:	bfb8      	it	lt
 800090e:	425b      	neglt	r3, r3
 8000910:	eba2 72e4 	sub.w	r2, r2, r4, asr #31
 8000914:	4293      	cmp	r3, r2
 8000916:	da22      	bge.n	800095e <_ZN9CObstacle12rotate_robotEi+0x7e>
 8000918:	eddf 7a18 	vldr	s15, [pc, #96]	; 800097c <_ZN9CObstacle12rotate_robotEi+0x9c>
 800091c:	6868      	ldr	r0, [r5, #4]
 800091e:	ee38 8a27 	vadd.f32	s16, s16, s15
 8000922:	eddf 7a17 	vldr	s15, [pc, #92]	; 8000980 <_ZN9CObstacle12rotate_robotEi+0xa0>
 8000926:	eeb4 8a67 	vcmp.f32	s16, s15
 800092a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800092e:	bfc8      	it	gt
 8000930:	eeb0 8a67 	vmovgt.f32	s16, s15
 8000934:	eddf 7a13 	vldr	s15, [pc, #76]	; 8000984 <_ZN9CObstacle12rotate_robotEi+0xa4>
 8000938:	ee68 7a27 	vmul.f32	s15, s16, s15
 800093c:	2c00      	cmp	r4, #0
 800093e:	eefd 7ae7 	vcvt.s32.f32	s15, s15
 8000942:	ee17 3a90 	vmov	r3, s15
 8000946:	f1c3 0200 	rsb	r2, r3, #0
 800094a:	bfd6      	itet	le
 800094c:	4611      	movle	r1, r2
 800094e:	4619      	movgt	r1, r3
 8000950:	461a      	movle	r2, r3
 8000952:	f7ff fc36 	bl	80001c2 <_ZN6CRobot10set_motorsEii>
 8000956:	200a      	movs	r0, #10
 8000958:	f001 fedc 	bl	8002714 <timer_delay_ms>
 800095c:	e7cf      	b.n	80008fe <_ZN9CObstacle12rotate_robotEi+0x1e>
 800095e:	2100      	movs	r1, #0
 8000960:	6868      	ldr	r0, [r5, #4]
 8000962:	460a      	mov	r2, r1
 8000964:	f7ff fc2d 	bl	80001c2 <_ZN6CRobot10set_motorsEii>
 8000968:	ecbd 8b02 	vpop	{d8}
 800096c:	2064      	movs	r0, #100	; 0x64
 800096e:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8000972:	f001 becf 	b.w	8002714 <timer_delay_ms>
 8000976:	bf00      	nop
 8000978:	00000000 	.word	0x00000000
 800097c:	3c23d70a 	.word	0x3c23d70a
 8000980:	3e4ccccd 	.word	0x3e4ccccd
 8000984:	42c80000 	.word	0x42c80000

08000988 <_ZN9CObstacle10go_forwardEijPFhvE>:
 8000988:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800098c:	460c      	mov	r4, r1
 800098e:	ed2d 8b06 	vpush	{d8-d10}
 8000992:	4605      	mov	r5, r0
 8000994:	4617      	mov	r7, r2
 8000996:	461e      	mov	r6, r3
 8000998:	f001 feae 	bl	80026f8 <timer_get_time>
 800099c:	ee07 4a90 	vmov	s15, r4
 80009a0:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 80009a4:	4680      	mov	r8, r0
 80009a6:	eef5 7ac0 	vcmpe.f32	s15, #0.0
 80009aa:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80009ae:	bf48      	it	mi
 80009b0:	4264      	negmi	r4, r4
 80009b2:	6868      	ldr	r0, [r5, #4]
 80009b4:	bf4c      	ite	mi
 80009b6:	eddf 9a31 	vldrmi	s19, [pc, #196]	; 8000a7c <_ZN9CObstacle10go_forwardEijPFhvE+0xf4>
 80009ba:	eddf 9a31 	vldrpl	s19, [pc, #196]	; 8000a80 <_ZN9CObstacle10go_forwardEijPFhvE+0xf8>
 80009be:	f7ff fc04 	bl	80001ca <_ZN6CRobot9reset_imuEv>
 80009c2:	2c00      	cmp	r4, #0
 80009c4:	d04f      	beq.n	8000a66 <_ZN9CObstacle10go_forwardEijPFhvE+0xde>
 80009c6:	eddf 8a2f 	vldr	s17, [pc, #188]	; 8000a84 <_ZN9CObstacle10go_forwardEijPFhvE+0xfc>
 80009ca:	eeb0 8a68 	vmov.f32	s16, s17
 80009ce:	eeb0 aa68 	vmov.f32	s20, s17
 80009d2:	e004      	b.n	80009de <_ZN9CObstacle10go_forwardEijPFhvE+0x56>
 80009d4:	200a      	movs	r0, #10
 80009d6:	f001 fe9d 	bl	8002714 <timer_delay_ms>
 80009da:	eeb0 8a49 	vmov.f32	s16, s18
 80009de:	f001 fe8b 	bl	80026f8 <timer_get_time>
 80009e2:	eb08 0307 	add.w	r3, r8, r7
 80009e6:	4298      	cmp	r0, r3
 80009e8:	d23d      	bcs.n	8000a66 <_ZN9CObstacle10go_forwardEijPFhvE+0xde>
 80009ea:	6868      	ldr	r0, [r5, #4]
 80009ec:	f7ff fbe7 	bl	80001be <_ZN6CRobot14get_imu_sensorEv>
 80009f0:	ed90 9a02 	vldr	s18, [r0, #8]
 80009f4:	eddf 7a24 	vldr	s15, [pc, #144]	; 8000a88 <_ZN9CObstacle10go_forwardEijPFhvE+0x100>
 80009f8:	ed9f 7a24 	vldr	s14, [pc, #144]	; 8000a8c <_ZN9CObstacle10go_forwardEijPFhvE+0x104>
 80009fc:	6868      	ldr	r0, [r5, #4]
 80009fe:	eeb8 9ac9 	vcvt.f32.s32	s18, s18
 8000a02:	ee3a 9a49 	vsub.f32	s18, s20, s18
 8000a06:	ee39 8a48 	vsub.f32	s16, s18, s16
 8000a0a:	ee28 8a27 	vmul.f32	s16, s16, s15
 8000a0e:	eddf 7a20 	vldr	s15, [pc, #128]	; 8000a90 <_ZN9CObstacle10go_forwardEijPFhvE+0x108>
 8000a12:	ee09 8a27 	vmla.f32	s16, s18, s15
 8000a16:	ee07 4a90 	vmov	s15, r4
 8000a1a:	eef8 6ae7 	vcvt.f32.s32	s13, s15
 8000a1e:	eddf 7a1d 	vldr	s15, [pc, #116]	; 8000a94 <_ZN9CObstacle10go_forwardEijPFhvE+0x10c>
 8000a22:	ee66 7aa7 	vmul.f32	s15, s13, s15
 8000a26:	ee48 7a87 	vmla.f32	s15, s17, s14
 8000a2a:	eef4 7ae6 	vcmpe.f32	s15, s13
 8000a2e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000a32:	eef0 8a67 	vmov.f32	s17, s15
 8000a36:	bf48      	it	mi
 8000a38:	ee77 8a87 	vaddmi.f32	s17, s15, s14
 8000a3c:	ee69 7aa8 	vmul.f32	s15, s19, s17
 8000a40:	ee37 7ac8 	vsub.f32	s14, s15, s16
 8000a44:	ee37 8a88 	vadd.f32	s16, s15, s16
 8000a48:	eefd 7ac7 	vcvt.s32.f32	s15, s14
 8000a4c:	ee17 1a90 	vmov	r1, s15
 8000a50:	eefd 7ac8 	vcvt.s32.f32	s15, s16
 8000a54:	ee17 2a90 	vmov	r2, s15
 8000a58:	f7ff fbb3 	bl	80001c2 <_ZN6CRobot10set_motorsEii>
 8000a5c:	2e00      	cmp	r6, #0
 8000a5e:	d0b9      	beq.n	80009d4 <_ZN9CObstacle10go_forwardEijPFhvE+0x4c>
 8000a60:	47b0      	blx	r6
 8000a62:	2800      	cmp	r0, #0
 8000a64:	d0b6      	beq.n	80009d4 <_ZN9CObstacle10go_forwardEijPFhvE+0x4c>
 8000a66:	2000      	movs	r0, #0
 8000a68:	4601      	mov	r1, r0
 8000a6a:	f002 fa0b 	bl	8002e84 <drv8834_run>
 8000a6e:	ecbd 8b06 	vpop	{d8-d10}
 8000a72:	2064      	movs	r0, #100	; 0x64
 8000a74:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8000a78:	f001 be4c 	b.w	8002714 <timer_delay_ms>
 8000a7c:	bf800000 	.word	0xbf800000
 8000a80:	3f800000 	.word	0x3f800000
 8000a84:	00000000 	.word	0x00000000
 8000a88:	3dcccccd 	.word	0x3dcccccd
 8000a8c:	3f4ccccd 	.word	0x3f4ccccd
 8000a90:	3cf5c28f 	.word	0x3cf5c28f
 8000a94:	3e4ccccc 	.word	0x3e4ccccc

08000a98 <_ZN9CObstacle18go_forward_encoderEijPFhvE>:
 8000a98:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000a9a:	1e0d      	subs	r5, r1, #0
 8000a9c:	ed2d 8b06 	vpush	{d8-d10}
 8000aa0:	bfb8      	it	lt
 8000aa2:	426d      	neglt	r5, r5
 8000aa4:	4606      	mov	r6, r0
 8000aa6:	6840      	ldr	r0, [r0, #4]
 8000aa8:	bfb4      	ite	lt
 8000aaa:	eddf 9a3e 	vldrlt	s19, [pc, #248]	; 8000ba4 <_ZN9CObstacle18go_forward_encoderEijPFhvE+0x10c>
 8000aae:	eddf 9a3e 	vldrge	s19, [pc, #248]	; 8000ba8 <_ZN9CObstacle18go_forward_encoderEijPFhvE+0x110>
 8000ab2:	4614      	mov	r4, r2
 8000ab4:	461f      	mov	r7, r3
 8000ab6:	f7ff fb88 	bl	80001ca <_ZN6CRobot9reset_imuEv>
 8000aba:	f002 fbd3 	bl	8003264 <encoder_get_distance>
 8000abe:	b955      	cbnz	r5, 8000ad6 <_ZN9CObstacle18go_forward_encoderEijPFhvE+0x3e>
 8000ac0:	2000      	movs	r0, #0
 8000ac2:	4601      	mov	r1, r0
 8000ac4:	f002 f9de 	bl	8002e84 <drv8834_run>
 8000ac8:	ecbd 8b06 	vpop	{d8-d10}
 8000acc:	2064      	movs	r0, #100	; 0x64
 8000ace:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8000ad2:	f001 be1f 	b.w	8002714 <timer_delay_ms>
 8000ad6:	ed9f 8a35 	vldr	s16, [pc, #212]	; 8000bac <_ZN9CObstacle18go_forward_encoderEijPFhvE+0x114>
 8000ada:	4404      	add	r4, r0
 8000adc:	eef0 8a48 	vmov.f32	s17, s16
 8000ae0:	eeb0 aa48 	vmov.f32	s20, s16
 8000ae4:	f002 fbbe 	bl	8003264 <encoder_get_distance>
 8000ae8:	42a0      	cmp	r0, r4
 8000aea:	d2e9      	bcs.n	8000ac0 <_ZN9CObstacle18go_forward_encoderEijPFhvE+0x28>
 8000aec:	6870      	ldr	r0, [r6, #4]
 8000aee:	f7ff fb66 	bl	80001be <_ZN6CRobot14get_imu_sensorEv>
 8000af2:	ed90 9a02 	vldr	s18, [r0, #8]
 8000af6:	eddf 7a2e 	vldr	s15, [pc, #184]	; 8000bb0 <_ZN9CObstacle18go_forward_encoderEijPFhvE+0x118>
 8000afa:	eeb8 9ac9 	vcvt.f32.s32	s18, s18
 8000afe:	ee3a 9a49 	vsub.f32	s18, s20, s18
 8000b02:	ee79 8a68 	vsub.f32	s17, s18, s17
 8000b06:	ee68 8aa7 	vmul.f32	s17, s17, s15
 8000b0a:	eddf 7a2a 	vldr	s15, [pc, #168]	; 8000bb4 <_ZN9CObstacle18go_forward_encoderEijPFhvE+0x11c>
 8000b0e:	ee49 8a27 	vmla.f32	s17, s18, s15
 8000b12:	f002 fba7 	bl	8003264 <encoder_get_distance>
 8000b16:	1a20      	subs	r0, r4, r0
 8000b18:	ee07 0a90 	vmov	s15, r0
 8000b1c:	eef8 7a67 	vcvt.f32.u32	s15, s15
 8000b20:	ee17 0a90 	vmov	r0, s15
 8000b24:	f000 ff62 	bl	80019ec <m_abs>
 8000b28:	eddf 7a23 	vldr	s15, [pc, #140]	; 8000bb8 <_ZN9CObstacle18go_forward_encoderEijPFhvE+0x120>
 8000b2c:	ee07 0a10 	vmov	s14, r0
 8000b30:	eeb4 7ae7 	vcmpe.f32	s14, s15
 8000b34:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000b38:	d525      	bpl.n	8000b86 <_ZN9CObstacle18go_forward_encoderEijPFhvE+0xee>
 8000b3a:	eddf 7a20 	vldr	s15, [pc, #128]	; 8000bbc <_ZN9CObstacle18go_forward_encoderEijPFhvE+0x124>
 8000b3e:	eeb4 8ae7 	vcmpe.f32	s16, s15
 8000b42:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000b46:	dd1e      	ble.n	8000b86 <_ZN9CObstacle18go_forward_encoderEijPFhvE+0xee>
 8000b48:	eddf 7a1d 	vldr	s15, [pc, #116]	; 8000bc0 <_ZN9CObstacle18go_forward_encoderEijPFhvE+0x128>
 8000b4c:	ee38 8a67 	vsub.f32	s16, s16, s15
 8000b50:	ee69 7a88 	vmul.f32	s15, s19, s16
 8000b54:	6870      	ldr	r0, [r6, #4]
 8000b56:	ee37 7ae8 	vsub.f32	s14, s15, s17
 8000b5a:	ee77 8aa8 	vadd.f32	s17, s15, s17
 8000b5e:	eefd 7ac7 	vcvt.s32.f32	s15, s14
 8000b62:	ee17 1a90 	vmov	r1, s15
 8000b66:	eefd 7ae8 	vcvt.s32.f32	s15, s17
 8000b6a:	ee17 2a90 	vmov	r2, s15
 8000b6e:	f7ff fb28 	bl	80001c2 <_ZN6CRobot10set_motorsEii>
 8000b72:	b117      	cbz	r7, 8000b7a <_ZN9CObstacle18go_forward_encoderEijPFhvE+0xe2>
 8000b74:	47b8      	blx	r7
 8000b76:	2800      	cmp	r0, #0
 8000b78:	d1a2      	bne.n	8000ac0 <_ZN9CObstacle18go_forward_encoderEijPFhvE+0x28>
 8000b7a:	200a      	movs	r0, #10
 8000b7c:	f001 fdca 	bl	8002714 <timer_delay_ms>
 8000b80:	eef0 8a49 	vmov.f32	s17, s18
 8000b84:	e7ae      	b.n	8000ae4 <_ZN9CObstacle18go_forward_encoderEijPFhvE+0x4c>
 8000b86:	ee07 5a90 	vmov	s15, r5
 8000b8a:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 8000b8e:	eeb4 8ae7 	vcmpe.f32	s16, s15
 8000b92:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000b96:	d5db      	bpl.n	8000b50 <_ZN9CObstacle18go_forward_encoderEijPFhvE+0xb8>
 8000b98:	eddf 7a09 	vldr	s15, [pc, #36]	; 8000bc0 <_ZN9CObstacle18go_forward_encoderEijPFhvE+0x128>
 8000b9c:	ee38 8a27 	vadd.f32	s16, s16, s15
 8000ba0:	e7d6      	b.n	8000b50 <_ZN9CObstacle18go_forward_encoderEijPFhvE+0xb8>
 8000ba2:	bf00      	nop
 8000ba4:	bf800000 	.word	0xbf800000
 8000ba8:	3f800000 	.word	0x3f800000
 8000bac:	00000000 	.word	0x00000000
 8000bb0:	3dcccccd 	.word	0x3dcccccd
 8000bb4:	3cf5c28f 	.word	0x3cf5c28f
 8000bb8:	42200000 	.word	0x42200000
 8000bbc:	428c0000 	.word	0x428c0000
 8000bc0:	40800000 	.word	0x40800000

08000bc4 <_ZN9CObstacle7processEv>:
 8000bc4:	2100      	movs	r1, #0
 8000bc6:	b510      	push	{r4, lr}
 8000bc8:	460b      	mov	r3, r1
 8000bca:	4604      	mov	r4, r0
 8000bcc:	2232      	movs	r2, #50	; 0x32
 8000bce:	f7ff fedb 	bl	8000988 <_ZN9CObstacle10go_forwardEijPFhvE>
 8000bd2:	4620      	mov	r0, r4
 8000bd4:	221e      	movs	r2, #30
 8000bd6:	2300      	movs	r3, #0
 8000bd8:	f06f 0131 	mvn.w	r1, #49	; 0x31
 8000bdc:	f7ff ff5c 	bl	8000a98 <_ZN9CObstacle18go_forward_encoderEijPFhvE>
 8000be0:	4620      	mov	r0, r4
 8000be2:	f06f 0159 	mvn.w	r1, #89	; 0x59
 8000be6:	f7ff fe7b 	bl	80008e0 <_ZN9CObstacle12rotate_robotEi>
 8000bea:	4620      	mov	r0, r4
 8000bec:	22cf      	movs	r2, #207	; 0xcf
 8000bee:	2300      	movs	r3, #0
 8000bf0:	215a      	movs	r1, #90	; 0x5a
 8000bf2:	f7ff ff51 	bl	8000a98 <_ZN9CObstacle18go_forward_encoderEijPFhvE>
 8000bf6:	4620      	mov	r0, r4
 8000bf8:	215a      	movs	r1, #90	; 0x5a
 8000bfa:	f7ff fe71 	bl	80008e0 <_ZN9CObstacle12rotate_robotEi>
 8000bfe:	4620      	mov	r0, r4
 8000c00:	22dc      	movs	r2, #220	; 0xdc
 8000c02:	2300      	movs	r3, #0
 8000c04:	215a      	movs	r1, #90	; 0x5a
 8000c06:	f7ff ff47 	bl	8000a98 <_ZN9CObstacle18go_forward_encoderEijPFhvE>
 8000c0a:	4620      	mov	r0, r4
 8000c0c:	215a      	movs	r1, #90	; 0x5a
 8000c0e:	f7ff fe67 	bl	80008e0 <_ZN9CObstacle12rotate_robotEi>
 8000c12:	4620      	mov	r0, r4
 8000c14:	2150      	movs	r1, #80	; 0x50
 8000c16:	22e6      	movs	r2, #230	; 0xe6
 8000c18:	2300      	movs	r3, #0
 8000c1a:	f7ff ff3d 	bl	8000a98 <_ZN9CObstacle18go_forward_encoderEijPFhvE>
 8000c1e:	4620      	mov	r0, r4
 8000c20:	f06f 0159 	mvn.w	r1, #89	; 0x59
 8000c24:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000c28:	f7ff be5a 	b.w	80008e0 <_ZN9CObstacle12rotate_robotEi>

08000c2c <_ZN4CMap4initEP6CRobot>:
 8000c2c:	b111      	cbz	r1, 8000c34 <_ZN4CMap4initEP6CRobot+0x8>
 8000c2e:	2300      	movs	r3, #0
 8000c30:	6041      	str	r1, [r0, #4]
 8000c32:	6003      	str	r3, [r0, #0]
 8000c34:	4770      	bx	lr

08000c36 <_ZN4CMap10save_stateE6sStatej>:
 8000c36:	b507      	push	{r0, r1, r2, lr}
 8000c38:	ab02      	add	r3, sp, #8
 8000c3a:	0090      	lsls	r0, r2, #2
 8000c3c:	f843 1d04 	str.w	r1, [r3, #-4]!
 8000c40:	2204      	movs	r2, #4
 8000c42:	4619      	mov	r1, r3
 8000c44:	f000 feb6 	bl	80019b4 <log_write>
 8000c48:	b003      	add	sp, #12
 8000c4a:	f85d fb04 	ldr.w	pc, [sp], #4
	...

08000c50 <_ZN4CMap10add_to_mapEv>:
 8000c50:	b537      	push	{r0, r1, r2, r4, r5, lr}
 8000c52:	4604      	mov	r4, r0
 8000c54:	6840      	ldr	r0, [r0, #4]
 8000c56:	f7ff faae 	bl	80001b6 <_ZN6CRobot24get_line_position_sensorEv>
 8000c5a:	2100      	movs	r1, #0
 8000c5c:	6845      	ldr	r5, [r0, #4]
 8000c5e:	460a      	mov	r2, r1
 8000c60:	f44f 6020 	mov.w	r0, #2560	; 0xa00
 8000c64:	4b12      	ldr	r3, [pc, #72]	; (8000cb0 <_ZN4CMap10add_to_mapEv+0x60>)
 8000c66:	f853 3022 	ldr.w	r3, [r3, r2, lsl #2]
 8000c6a:	1aeb      	subs	r3, r5, r3
 8000c6c:	2b00      	cmp	r3, #0
 8000c6e:	bfb8      	it	lt
 8000c70:	425b      	neglt	r3, r3
 8000c72:	4283      	cmp	r3, r0
 8000c74:	bfb8      	it	lt
 8000c76:	4611      	movlt	r1, r2
 8000c78:	f102 0201 	add.w	r2, r2, #1
 8000c7c:	bfb8      	it	lt
 8000c7e:	4618      	movlt	r0, r3
 8000c80:	2a0a      	cmp	r2, #10
 8000c82:	d1ef      	bne.n	8000c64 <_ZN4CMap10add_to_mapEv+0x14>
 8000c84:	2818      	cmp	r0, #24
 8000c86:	dc11      	bgt.n	8000cac <_ZN4CMap10add_to_mapEv+0x5c>
 8000c88:	6823      	ldr	r3, [r4, #0]
 8000c8a:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8000c8e:	d20d      	bcs.n	8000cac <_ZN4CMap10add_to_mapEv+0x5c>
 8000c90:	f88d 1004 	strb.w	r1, [sp, #4]
 8000c94:	f002 fae6 	bl	8003264 <encoder_get_distance>
 8000c98:	f8ad 0006 	strh.w	r0, [sp, #6]
 8000c9c:	9901      	ldr	r1, [sp, #4]
 8000c9e:	6822      	ldr	r2, [r4, #0]
 8000ca0:	4620      	mov	r0, r4
 8000ca2:	f7ff ffc8 	bl	8000c36 <_ZN4CMap10save_stateE6sStatej>
 8000ca6:	6823      	ldr	r3, [r4, #0]
 8000ca8:	3301      	adds	r3, #1
 8000caa:	6023      	str	r3, [r4, #0]
 8000cac:	b003      	add	sp, #12
 8000cae:	bd30      	pop	{r4, r5, pc}
 8000cb0:	20000010 	.word	0x20000010

08000cb4 <_Z18line_sensor_threadv>:
 8000cb4:	b508      	push	{r3, lr}
 8000cb6:	2000      	movs	r0, #0
 8000cb8:	2104      	movs	r1, #4
 8000cba:	f001 fd3b 	bl	8002734 <event_timer_set_period>
 8000cbe:	2000      	movs	r0, #0
 8000cc0:	f001 fd50 	bl	8002764 <event_timer_wait>
 8000cc4:	4801      	ldr	r0, [pc, #4]	; (8000ccc <_Z18line_sensor_threadv+0x18>)
 8000cc6:	f7ff fbe1 	bl	800048c <_ZN6CRobot19process_rgb_sensorsEv>
 8000cca:	e7f8      	b.n	8000cbe <_Z18line_sensor_threadv+0xa>
 8000ccc:	2000093c 	.word	0x2000093c

08000cd0 <_Z17imu_sensor_threadv>:
 8000cd0:	b508      	push	{r3, lr}
 8000cd2:	2001      	movs	r0, #1
 8000cd4:	210a      	movs	r1, #10
 8000cd6:	f001 fd2d 	bl	8002734 <event_timer_set_period>
 8000cda:	2001      	movs	r0, #1
 8000cdc:	f001 fd42 	bl	8002764 <event_timer_wait>
 8000ce0:	4805      	ldr	r0, [pc, #20]	; (8000cf8 <_Z17imu_sensor_threadv+0x28>)
 8000ce2:	f7ff fd14 	bl	800070e <_ZN6CRobot18process_imu_sensorEv>
 8000ce6:	4b05      	ldr	r3, [pc, #20]	; (8000cfc <_Z17imu_sensor_threadv+0x2c>)
 8000ce8:	681b      	ldr	r3, [r3, #0]
 8000cea:	2b00      	cmp	r3, #0
 8000cec:	d0f5      	beq.n	8000cda <_Z17imu_sensor_threadv+0xa>
 8000cee:	4804      	ldr	r0, [pc, #16]	; (8000d00 <_Z17imu_sensor_threadv+0x30>)
 8000cf0:	f7ff ffae 	bl	8000c50 <_ZN4CMap10add_to_mapEv>
 8000cf4:	e7f1      	b.n	8000cda <_Z17imu_sensor_threadv+0xa>
 8000cf6:	bf00      	nop
 8000cf8:	2000093c 	.word	0x2000093c
 8000cfc:	20000d20 	.word	0x20000d20
 8000d00:	2000052c 	.word	0x2000052c

08000d04 <_Z16telemetry_threadv>:
 8000d04:	b573      	push	{r0, r1, r4, r5, r6, lr}
 8000d06:	4865      	ldr	r0, [pc, #404]	; (8000e9c <_Z16telemetry_threadv+0x198>)
 8000d08:	f000 fd84 	bl	8001814 <printf_>
 8000d0c:	4864      	ldr	r0, [pc, #400]	; (8000ea0 <_Z16telemetry_threadv+0x19c>)
 8000d0e:	f7ff fa51 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000d12:	f9b0 5000 	ldrsh.w	r5, [r0]
 8000d16:	4862      	ldr	r0, [pc, #392]	; (8000ea0 <_Z16telemetry_threadv+0x19c>)
 8000d18:	f7ff fa4c 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000d1c:	f9b0 4002 	ldrsh.w	r4, [r0, #2]
 8000d20:	485f      	ldr	r0, [pc, #380]	; (8000ea0 <_Z16telemetry_threadv+0x19c>)
 8000d22:	f7ff fa47 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000d26:	4629      	mov	r1, r5
 8000d28:	7903      	ldrb	r3, [r0, #4]
 8000d2a:	485e      	ldr	r0, [pc, #376]	; (8000ea4 <_Z16telemetry_threadv+0x1a0>)
 8000d2c:	4622      	mov	r2, r4
 8000d2e:	f000 fd71 	bl	8001814 <printf_>
 8000d32:	485b      	ldr	r0, [pc, #364]	; (8000ea0 <_Z16telemetry_threadv+0x19c>)
 8000d34:	f7ff fa3e 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000d38:	6886      	ldr	r6, [r0, #8]
 8000d3a:	4859      	ldr	r0, [pc, #356]	; (8000ea0 <_Z16telemetry_threadv+0x19c>)
 8000d3c:	f7ff fa3a 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000d40:	68c5      	ldr	r5, [r0, #12]
 8000d42:	4857      	ldr	r0, [pc, #348]	; (8000ea0 <_Z16telemetry_threadv+0x19c>)
 8000d44:	f7ff fa36 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000d48:	6904      	ldr	r4, [r0, #16]
 8000d4a:	4855      	ldr	r0, [pc, #340]	; (8000ea0 <_Z16telemetry_threadv+0x19c>)
 8000d4c:	f7ff fa32 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000d50:	6943      	ldr	r3, [r0, #20]
 8000d52:	9300      	str	r3, [sp, #0]
 8000d54:	4631      	mov	r1, r6
 8000d56:	462a      	mov	r2, r5
 8000d58:	4623      	mov	r3, r4
 8000d5a:	4853      	ldr	r0, [pc, #332]	; (8000ea8 <_Z16telemetry_threadv+0x1a4>)
 8000d5c:	f000 fd5a 	bl	8001814 <printf_>
 8000d60:	484f      	ldr	r0, [pc, #316]	; (8000ea0 <_Z16telemetry_threadv+0x19c>)
 8000d62:	f7ff fa27 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000d66:	6a06      	ldr	r6, [r0, #32]
 8000d68:	484d      	ldr	r0, [pc, #308]	; (8000ea0 <_Z16telemetry_threadv+0x19c>)
 8000d6a:	f7ff fa23 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000d6e:	6a45      	ldr	r5, [r0, #36]	; 0x24
 8000d70:	484b      	ldr	r0, [pc, #300]	; (8000ea0 <_Z16telemetry_threadv+0x19c>)
 8000d72:	f7ff fa1f 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000d76:	6a84      	ldr	r4, [r0, #40]	; 0x28
 8000d78:	4849      	ldr	r0, [pc, #292]	; (8000ea0 <_Z16telemetry_threadv+0x19c>)
 8000d7a:	f7ff fa1b 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8000d7e:	6ac3      	ldr	r3, [r0, #44]	; 0x2c
 8000d80:	9300      	str	r3, [sp, #0]
 8000d82:	4631      	mov	r1, r6
 8000d84:	462a      	mov	r2, r5
 8000d86:	4623      	mov	r3, r4
 8000d88:	4848      	ldr	r0, [pc, #288]	; (8000eac <_Z16telemetry_threadv+0x1a8>)
 8000d8a:	f000 fd43 	bl	8001814 <printf_>
 8000d8e:	4848      	ldr	r0, [pc, #288]	; (8000eb0 <_Z16telemetry_threadv+0x1ac>)
 8000d90:	f000 fd40 	bl	8001814 <printf_>
 8000d94:	4847      	ldr	r0, [pc, #284]	; (8000eb4 <_Z16telemetry_threadv+0x1b0>)
 8000d96:	f000 fd3d 	bl	8001814 <printf_>
 8000d9a:	4841      	ldr	r0, [pc, #260]	; (8000ea0 <_Z16telemetry_threadv+0x19c>)
 8000d9c:	f7ff fa0b 	bl	80001b6 <_ZN6CRobot24get_line_position_sensorEv>
 8000da0:	7806      	ldrb	r6, [r0, #0]
 8000da2:	483f      	ldr	r0, [pc, #252]	; (8000ea0 <_Z16telemetry_threadv+0x19c>)
 8000da4:	f7ff fa07 	bl	80001b6 <_ZN6CRobot24get_line_position_sensorEv>
 8000da8:	6845      	ldr	r5, [r0, #4]
 8000daa:	483d      	ldr	r0, [pc, #244]	; (8000ea0 <_Z16telemetry_threadv+0x19c>)
 8000dac:	f7ff fa03 	bl	80001b6 <_ZN6CRobot24get_line_position_sensorEv>
 8000db0:	6884      	ldr	r4, [r0, #8]
 8000db2:	483b      	ldr	r0, [pc, #236]	; (8000ea0 <_Z16telemetry_threadv+0x19c>)
 8000db4:	f7ff f9ff 	bl	80001b6 <_ZN6CRobot24get_line_position_sensorEv>
 8000db8:	68c3      	ldr	r3, [r0, #12]
 8000dba:	9300      	str	r3, [sp, #0]
 8000dbc:	4631      	mov	r1, r6
 8000dbe:	4623      	mov	r3, r4
 8000dc0:	462a      	mov	r2, r5
 8000dc2:	483d      	ldr	r0, [pc, #244]	; (8000eb8 <_Z16telemetry_threadv+0x1b4>)
 8000dc4:	f000 fd26 	bl	8001814 <printf_>
 8000dc8:	4839      	ldr	r0, [pc, #228]	; (8000eb0 <_Z16telemetry_threadv+0x1ac>)
 8000dca:	f000 fd23 	bl	8001814 <printf_>
 8000dce:	483b      	ldr	r0, [pc, #236]	; (8000ebc <_Z16telemetry_threadv+0x1b8>)
 8000dd0:	f000 fd20 	bl	8001814 <printf_>
 8000dd4:	4832      	ldr	r0, [pc, #200]	; (8000ea0 <_Z16telemetry_threadv+0x19c>)
 8000dd6:	f7ff f9f0 	bl	80001ba <_ZN6CRobot28get_obstacle_position_sensorEv>
 8000dda:	7804      	ldrb	r4, [r0, #0]
 8000ddc:	4830      	ldr	r0, [pc, #192]	; (8000ea0 <_Z16telemetry_threadv+0x19c>)
 8000dde:	f7ff f9ec 	bl	80001ba <_ZN6CRobot28get_obstacle_position_sensorEv>
 8000de2:	4603      	mov	r3, r0
 8000de4:	4621      	mov	r1, r4
 8000de6:	685a      	ldr	r2, [r3, #4]
 8000de8:	4835      	ldr	r0, [pc, #212]	; (8000ec0 <_Z16telemetry_threadv+0x1bc>)
 8000dea:	f000 fd13 	bl	8001814 <printf_>
 8000dee:	4830      	ldr	r0, [pc, #192]	; (8000eb0 <_Z16telemetry_threadv+0x1ac>)
 8000df0:	f000 fd10 	bl	8001814 <printf_>
 8000df4:	4833      	ldr	r0, [pc, #204]	; (8000ec4 <_Z16telemetry_threadv+0x1c0>)
 8000df6:	f000 fd0d 	bl	8001814 <printf_>
 8000dfa:	2400      	movs	r4, #0
 8000dfc:	4828      	ldr	r0, [pc, #160]	; (8000ea0 <_Z16telemetry_threadv+0x19c>)
 8000dfe:	f7ff fbff 	bl	8000600 <_ZN6CRobot28get_line_sensor_raw_data_difEv>
 8000e02:	5f01      	ldrsh	r1, [r0, r4]
 8000e04:	4830      	ldr	r0, [pc, #192]	; (8000ec8 <_Z16telemetry_threadv+0x1c4>)
 8000e06:	3402      	adds	r4, #2
 8000e08:	f000 fd04 	bl	8001814 <printf_>
 8000e0c:	2c10      	cmp	r4, #16
 8000e0e:	d1f5      	bne.n	8000dfc <_Z16telemetry_threadv+0xf8>
 8000e10:	482e      	ldr	r0, [pc, #184]	; (8000ecc <_Z16telemetry_threadv+0x1c8>)
 8000e12:	f000 fcff 	bl	8001814 <printf_>
 8000e16:	2400      	movs	r4, #0
 8000e18:	f001 f8a6 	bl	8001f68 <rgb_get>
 8000e1c:	eb00 0344 	add.w	r3, r0, r4, lsl #1
 8000e20:	4829      	ldr	r0, [pc, #164]	; (8000ec8 <_Z16telemetry_threadv+0x1c4>)
 8000e22:	f9b3 1036 	ldrsh.w	r1, [r3, #54]	; 0x36
 8000e26:	3401      	adds	r4, #1
 8000e28:	f000 fcf4 	bl	8001814 <printf_>
 8000e2c:	2c08      	cmp	r4, #8
 8000e2e:	d1f3      	bne.n	8000e18 <_Z16telemetry_threadv+0x114>
 8000e30:	4826      	ldr	r0, [pc, #152]	; (8000ecc <_Z16telemetry_threadv+0x1c8>)
 8000e32:	f000 fcef 	bl	8001814 <printf_>
 8000e36:	2400      	movs	r4, #0
 8000e38:	f001 f896 	bl	8001f68 <rgb_get>
 8000e3c:	f930 1014 	ldrsh.w	r1, [r0, r4, lsl #1]
 8000e40:	4821      	ldr	r0, [pc, #132]	; (8000ec8 <_Z16telemetry_threadv+0x1c4>)
 8000e42:	3401      	adds	r4, #1
 8000e44:	f000 fce6 	bl	8001814 <printf_>
 8000e48:	2c08      	cmp	r4, #8
 8000e4a:	d1f5      	bne.n	8000e38 <_Z16telemetry_threadv+0x134>
 8000e4c:	481f      	ldr	r0, [pc, #124]	; (8000ecc <_Z16telemetry_threadv+0x1c8>)
 8000e4e:	f000 fce1 	bl	8001814 <printf_>
 8000e52:	2400      	movs	r4, #0
 8000e54:	f001 f888 	bl	8001f68 <rgb_get>
 8000e58:	eb00 0344 	add.w	r3, r0, r4, lsl #1
 8000e5c:	481a      	ldr	r0, [pc, #104]	; (8000ec8 <_Z16telemetry_threadv+0x1c4>)
 8000e5e:	f9b3 1012 	ldrsh.w	r1, [r3, #18]
 8000e62:	3401      	adds	r4, #1
 8000e64:	f000 fcd6 	bl	8001814 <printf_>
 8000e68:	2c08      	cmp	r4, #8
 8000e6a:	d1f3      	bne.n	8000e54 <_Z16telemetry_threadv+0x150>
 8000e6c:	4817      	ldr	r0, [pc, #92]	; (8000ecc <_Z16telemetry_threadv+0x1c8>)
 8000e6e:	f000 fcd1 	bl	8001814 <printf_>
 8000e72:	2400      	movs	r4, #0
 8000e74:	f001 f878 	bl	8001f68 <rgb_get>
 8000e78:	eb00 0344 	add.w	r3, r0, r4, lsl #1
 8000e7c:	4812      	ldr	r0, [pc, #72]	; (8000ec8 <_Z16telemetry_threadv+0x1c4>)
 8000e7e:	f9b3 1024 	ldrsh.w	r1, [r3, #36]	; 0x24
 8000e82:	3401      	adds	r4, #1
 8000e84:	f000 fcc6 	bl	8001814 <printf_>
 8000e88:	2c08      	cmp	r4, #8
 8000e8a:	d1f3      	bne.n	8000e74 <_Z16telemetry_threadv+0x170>
 8000e8c:	4808      	ldr	r0, [pc, #32]	; (8000eb0 <_Z16telemetry_threadv+0x1ac>)
 8000e8e:	f000 fcc1 	bl	8001814 <printf_>
 8000e92:	2064      	movs	r0, #100	; 0x64
 8000e94:	f001 fc3e 	bl	8002714 <timer_delay_ms>
 8000e98:	e735      	b.n	8000d06 <_Z16telemetry_threadv+0x2>
 8000e9a:	bf00      	nop
 8000e9c:	08004e88 	.word	0x08004e88
 8000ea0:	2000093c 	.word	0x2000093c
 8000ea4:	08004e91 	.word	0x08004e91
 8000ea8:	08004e8e 	.word	0x08004e8e
 8000eac:	08004e9b 	.word	0x08004e9b
 8000eb0:	08004ea8 	.word	0x08004ea8
 8000eb4:	08004eab 	.word	0x08004eab
 8000eb8:	08004eb1 	.word	0x08004eb1
 8000ebc:	08004ebe 	.word	0x08004ebe
 8000ec0:	08004ea1 	.word	0x08004ea1
 8000ec4:	08004ec4 	.word	0x08004ec4
 8000ec8:	08004e97 	.word	0x08004e97
 8000ecc:	08004ea9 	.word	0x08004ea9

08000ed0 <_Z13line_followerv>:
 8000ed0:	b510      	push	{r4, lr}
 8000ed2:	2002      	movs	r0, #2
 8000ed4:	2104      	movs	r1, #4
 8000ed6:	f001 fc2d 	bl	8002734 <event_timer_set_period>
 8000eda:	2400      	movs	r4, #0
 8000edc:	2002      	movs	r0, #2
 8000ede:	f001 fc41 	bl	8002764 <event_timer_wait>
 8000ee2:	4818      	ldr	r0, [pc, #96]	; (8000f44 <_Z13line_followerv+0x74>)
 8000ee4:	f7ff f969 	bl	80001ba <_ZN6CRobot28get_obstacle_position_sensorEv>
 8000ee8:	7803      	ldrb	r3, [r0, #0]
 8000eea:	2b01      	cmp	r3, #1
 8000eec:	d11b      	bne.n	8000f26 <_Z13line_followerv+0x56>
 8000eee:	4815      	ldr	r0, [pc, #84]	; (8000f44 <_Z13line_followerv+0x74>)
 8000ef0:	f7ff f965 	bl	80001be <_ZN6CRobot14get_imu_sensorEv>
 8000ef4:	68c0      	ldr	r0, [r0, #12]
 8000ef6:	f000 fd85 	bl	8001a04 <m_abs_int>
 8000efa:	f640 63d8 	movw	r3, #3800	; 0xed8
 8000efe:	4298      	cmp	r0, r3
 8000f00:	dd11      	ble.n	8000f26 <_Z13line_followerv+0x56>
 8000f02:	4811      	ldr	r0, [pc, #68]	; (8000f48 <_Z13line_followerv+0x78>)
 8000f04:	f7ff fe5e 	bl	8000bc4 <_ZN9CObstacle7processEv>
 8000f08:	3401      	adds	r4, #1
 8000f0a:	2214      	movs	r2, #20
 8000f0c:	fbb4 f3f2 	udiv	r3, r4, r2
 8000f10:	fb02 4313 	mls	r3, r2, r3, r4
 8000f14:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8000f18:	b913      	cbnz	r3, 8000f20 <_Z13line_followerv+0x50>
 8000f1a:	f002 f963 	bl	80031e4 <led_on>
 8000f1e:	e7dd      	b.n	8000edc <_Z13line_followerv+0xc>
 8000f20:	f002 f96a 	bl	80031f8 <led_off>
 8000f24:	e7da      	b.n	8000edc <_Z13line_followerv+0xc>
 8000f26:	4807      	ldr	r0, [pc, #28]	; (8000f44 <_Z13line_followerv+0x74>)
 8000f28:	f7ff f945 	bl	80001b6 <_ZN6CRobot24get_line_position_sensorEv>
 8000f2c:	7803      	ldrb	r3, [r0, #0]
 8000f2e:	2b01      	cmp	r3, #1
 8000f30:	d103      	bne.n	8000f3a <_Z13line_followerv+0x6a>
 8000f32:	4806      	ldr	r0, [pc, #24]	; (8000f4c <_Z13line_followerv+0x7c>)
 8000f34:	f000 f946 	bl	80011c4 <_ZN13CLineFollower7processEv>
 8000f38:	e7e6      	b.n	8000f08 <_Z13line_followerv+0x38>
 8000f3a:	4805      	ldr	r0, [pc, #20]	; (8000f50 <_Z13line_followerv+0x80>)
 8000f3c:	2100      	movs	r1, #0
 8000f3e:	f000 f9c0 	bl	80012c2 <_ZN11CBrokenLine7processEj>
 8000f42:	e7e1      	b.n	8000f08 <_Z13line_followerv+0x38>
 8000f44:	2000093c 	.word	0x2000093c
 8000f48:	20000734 	.word	0x20000734
 8000f4c:	20000ad8 	.word	0x20000ad8
 8000f50:	20000520 	.word	0x20000520

08000f54 <main_thread>:
 8000f54:	b5f0      	push	{r4, r5, r6, r7, lr}
 8000f56:	484f      	ldr	r0, [pc, #316]	; (8001094 <main_thread+0x140>)
 8000f58:	4e4f      	ldr	r6, [pc, #316]	; (8001098 <main_thread+0x144>)
 8000f5a:	b097      	sub	sp, #92	; 0x5c
 8000f5c:	f000 fc5a 	bl	8001814 <printf_>
 8000f60:	f44f 7096 	mov.w	r0, #300	; 0x12c
 8000f64:	f001 fbd6 	bl	8002714 <timer_delay_ms>
 8000f68:	2300      	movs	r3, #0
 8000f6a:	6033      	str	r3, [r6, #0]
 8000f6c:	f88d 302c 	strb.w	r3, [sp, #44]	; 0x2c
 8000f70:	930d      	str	r3, [sp, #52]	; 0x34
 8000f72:	930f      	str	r3, [sp, #60]	; 0x3c
 8000f74:	2328      	movs	r3, #40	; 0x28
 8000f76:	22b4      	movs	r2, #180	; 0xb4
 8000f78:	9310      	str	r3, [sp, #64]	; 0x40
 8000f7a:	f44f 73fa 	mov.w	r3, #500	; 0x1f4
 8000f7e:	f8ad 2028 	strh.w	r2, [sp, #40]	; 0x28
 8000f82:	9312      	str	r3, [sp, #72]	; 0x48
 8000f84:	f44f 7248 	mov.w	r2, #800	; 0x320
 8000f88:	f240 2326 	movw	r3, #550	; 0x226
 8000f8c:	f8ad 202a 	strh.w	r2, [sp, #42]	; 0x2a
 8000f90:	9313      	str	r3, [sp, #76]	; 0x4c
 8000f92:	223c      	movs	r2, #60	; 0x3c
 8000f94:	f44f 73c8 	mov.w	r3, #400	; 0x190
 8000f98:	920c      	str	r2, [sp, #48]	; 0x30
 8000f9a:	9314      	str	r3, [sp, #80]	; 0x50
 8000f9c:	f640 32b8 	movw	r2, #3000	; 0xbb8
 8000fa0:	231e      	movs	r3, #30
 8000fa2:	483e      	ldr	r0, [pc, #248]	; (800109c <main_thread+0x148>)
 8000fa4:	920e      	str	r2, [sp, #56]	; 0x38
 8000fa6:	ad0d      	add	r5, sp, #52	; 0x34
 8000fa8:	9211      	str	r2, [sp, #68]	; 0x44
 8000faa:	9315      	str	r3, [sp, #84]	; 0x54
 8000fac:	f7ff fc4b 	bl	8000846 <_ZN6CRobot4initEv>
 8000fb0:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
 8000fb2:	466c      	mov	r4, sp
 8000fb4:	c40f      	stmia	r4!, {r0, r1, r2, r3}
 8000fb6:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
 8000fb8:	c40f      	stmia	r4!, {r0, r1, r2, r3}
 8000fba:	682b      	ldr	r3, [r5, #0]
 8000fbc:	6023      	str	r3, [r4, #0]
 8000fbe:	ab0a      	add	r3, sp, #40	; 0x28
 8000fc0:	cb0e      	ldmia	r3, {r1, r2, r3}
 8000fc2:	4836      	ldr	r0, [pc, #216]	; (800109c <main_thread+0x148>)
 8000fc4:	f7ff f8e4 	bl	8000190 <_ZN6CRobot13set_configureE15sRobotConfigure>
 8000fc8:	4835      	ldr	r0, [pc, #212]	; (80010a0 <main_thread+0x14c>)
 8000fca:	4934      	ldr	r1, [pc, #208]	; (800109c <main_thread+0x148>)
 8000fcc:	f000 f87e 	bl	80010cc <_ZN13CLineFollower4initEP6CRobot>
 8000fd0:	4834      	ldr	r0, [pc, #208]	; (80010a4 <main_thread+0x150>)
 8000fd2:	4932      	ldr	r1, [pc, #200]	; (800109c <main_thread+0x148>)
 8000fd4:	f7ff fc7a 	bl	80008cc <_ZN9CObstacle4initEP6CRobot>
 8000fd8:	4833      	ldr	r0, [pc, #204]	; (80010a8 <main_thread+0x154>)
 8000fda:	4930      	ldr	r1, [pc, #192]	; (800109c <main_thread+0x148>)
 8000fdc:	f000 f962 	bl	80012a4 <_ZN11CBrokenLine4initEP6CRobot>
 8000fe0:	4832      	ldr	r0, [pc, #200]	; (80010ac <main_thread+0x158>)
 8000fe2:	492e      	ldr	r1, [pc, #184]	; (800109c <main_thread+0x148>)
 8000fe4:	f7ff fe22 	bl	8000c2c <_ZN4CMap4initEP6CRobot>
 8000fe8:	482c      	ldr	r0, [pc, #176]	; (800109c <main_thread+0x148>)
 8000fea:	f7ff f8cd 	bl	8000188 <_ZN6CRobot14get_error_typeEv>
 8000fee:	b158      	cbz	r0, 8001008 <main_thread+0xb4>
 8000ff0:	482a      	ldr	r0, [pc, #168]	; (800109c <main_thread+0x148>)
 8000ff2:	f7ff f8c9 	bl	8000188 <_ZN6CRobot14get_error_typeEv>
 8000ff6:	4604      	mov	r4, r0
 8000ff8:	4828      	ldr	r0, [pc, #160]	; (800109c <main_thread+0x148>)
 8000ffa:	f7ff f8c7 	bl	800018c <_ZN6CRobot14get_error_codeEv>
 8000ffe:	4601      	mov	r1, r0
 8001000:	4620      	mov	r0, r4
 8001002:	f7ff fc3f 	bl	8000884 <abort_error_>
 8001006:	e7f3      	b.n	8000ff0 <main_thread+0x9c>
 8001008:	4929      	ldr	r1, [pc, #164]	; (80010b0 <main_thread+0x15c>)
 800100a:	482a      	ldr	r0, [pc, #168]	; (80010b4 <main_thread+0x160>)
 800100c:	f44f 7200 	mov.w	r2, #512	; 0x200
 8001010:	2306      	movs	r3, #6
 8001012:	f000 fad1 	bl	80015b8 <create_thread>
 8001016:	4928      	ldr	r1, [pc, #160]	; (80010b8 <main_thread+0x164>)
 8001018:	4828      	ldr	r0, [pc, #160]	; (80010bc <main_thread+0x168>)
 800101a:	f44f 7200 	mov.w	r2, #512	; 0x200
 800101e:	2306      	movs	r3, #6
 8001020:	f000 faca 	bl	80015b8 <create_thread>
 8001024:	4826      	ldr	r0, [pc, #152]	; (80010c0 <main_thread+0x16c>)
 8001026:	4927      	ldr	r1, [pc, #156]	; (80010c4 <main_thread+0x170>)
 8001028:	f44f 7200 	mov.w	r2, #512	; 0x200
 800102c:	231a      	movs	r3, #26
 800102e:	f000 fac3 	bl	80015b8 <create_thread>
 8001032:	f002 f8eb 	bl	800320c <get_key>
 8001036:	b150      	cbz	r0, 800104e <main_thread+0xfa>
 8001038:	f44f 7096 	mov.w	r0, #300	; 0x12c
 800103c:	f001 fb6a 	bl	8002714 <timer_delay_ms>
 8001040:	2301      	movs	r3, #1
 8001042:	4817      	ldr	r0, [pc, #92]	; (80010a0 <main_thread+0x14c>)
 8001044:	6033      	str	r3, [r6, #0]
 8001046:	f000 f925 	bl	8001294 <_ZN13CLineFollower5startEv>
 800104a:	f7ff ff41 	bl	8000ed0 <_Z13line_followerv>
 800104e:	f002 f909 	bl	8003264 <encoder_get_distance>
 8001052:	4607      	mov	r7, r0
 8001054:	f002 f8e2 	bl	800321c <left_encoder_read>
 8001058:	4605      	mov	r5, r0
 800105a:	f002 f8f1 	bl	8003240 <right_encoder_read>
 800105e:	4604      	mov	r4, r0
 8001060:	480e      	ldr	r0, [pc, #56]	; (800109c <main_thread+0x148>)
 8001062:	f7ff f8ac 	bl	80001be <_ZN6CRobot14get_imu_sensorEv>
 8001066:	6883      	ldr	r3, [r0, #8]
 8001068:	9300      	str	r3, [sp, #0]
 800106a:	4639      	mov	r1, r7
 800106c:	462a      	mov	r2, r5
 800106e:	4623      	mov	r3, r4
 8001070:	4815      	ldr	r0, [pc, #84]	; (80010c8 <main_thread+0x174>)
 8001072:	f000 fbcf 	bl	8001814 <printf_>
 8001076:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 800107a:	f002 f8b3 	bl	80031e4 <led_on>
 800107e:	2064      	movs	r0, #100	; 0x64
 8001080:	f001 fb48 	bl	8002714 <timer_delay_ms>
 8001084:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001088:	f002 f8b6 	bl	80031f8 <led_off>
 800108c:	20c8      	movs	r0, #200	; 0xc8
 800108e:	f001 fb41 	bl	8002714 <timer_delay_ms>
 8001092:	e7ce      	b.n	8001032 <main_thread+0xde>
 8001094:	08004ec9 	.word	0x08004ec9
 8001098:	20000d20 	.word	0x20000d20
 800109c:	2000093c 	.word	0x2000093c
 80010a0:	20000ad8 	.word	0x20000ad8
 80010a4:	20000734 	.word	0x20000734
 80010a8:	20000520 	.word	0x20000520
 80010ac:	2000052c 	.word	0x2000052c
 80010b0:	20000534 	.word	0x20000534
 80010b4:	08000cb5 	.word	0x08000cb5
 80010b8:	2000073c 	.word	0x2000073c
 80010bc:	08000cd1 	.word	0x08000cd1
 80010c0:	08000d05 	.word	0x08000d05
 80010c4:	20000b20 	.word	0x20000b20
 80010c8:	08004f04 	.word	0x08004f04

080010cc <_ZN13CLineFollower4initEP6CRobot>:
 80010cc:	b510      	push	{r4, lr}
 80010ce:	ed2d 8b04 	vpush	{d8-d9}
 80010d2:	4604      	mov	r4, r0
 80010d4:	b082      	sub	sp, #8
 80010d6:	2900      	cmp	r1, #0
 80010d8:	d069      	beq.n	80011ae <_ZN13CLineFollower4initEP6CRobot+0xe2>
 80010da:	2300      	movs	r3, #0
 80010dc:	6103      	str	r3, [r0, #16]
 80010de:	6143      	str	r3, [r0, #20]
 80010e0:	6441      	str	r1, [r0, #68]	; 0x44
 80010e2:	4835      	ldr	r0, [pc, #212]	; (80011b8 <_ZN13CLineFollower4initEP6CRobot+0xec>)
 80010e4:	ed9f 8a35 	vldr	s16, [pc, #212]	; 80011bc <_ZN13CLineFollower4initEP6CRobot+0xf0>
 80010e8:	f000 f9d5 	bl	8001496 <_ZN11CQPredictor4initEv>
 80010ec:	f001 fb04 	bl	80026f8 <timer_get_time>
 80010f0:	3064      	adds	r0, #100	; 0x64
 80010f2:	61a0      	str	r0, [r4, #24]
 80010f4:	6c60      	ldr	r0, [r4, #68]	; 0x44
 80010f6:	f7ff f85d 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 80010fa:	ed90 9a02 	vldr	s18, [r0, #8]
 80010fe:	6c60      	ldr	r0, [r4, #68]	; 0x44
 8001100:	f7ff f858 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8001104:	edd0 8a03 	vldr	s17, [r0, #12]
 8001108:	6c60      	ldr	r0, [r4, #68]	; 0x44
 800110a:	f7ff f853 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 800110e:	edd0 9a04 	vldr	s19, [r0, #16]
 8001112:	6c60      	ldr	r0, [r4, #68]	; 0x44
 8001114:	eef8 9ae9 	vcvt.f32.s32	s19, s19
 8001118:	f7ff f84c 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 800111c:	eec9 9a88 	vdiv.f32	s19, s19, s16
 8001120:	4927      	ldr	r1, [pc, #156]	; (80011c0 <_ZN13CLineFollower4initEP6CRobot+0xf4>)
 8001122:	eeb8 9ac9 	vcvt.f32.s32	s18, s18
 8001126:	edcd 9a00 	vstr	s19, [sp]
 800112a:	edd0 7a05 	vldr	s15, [r0, #20]
 800112e:	eef8 8ae8 	vcvt.f32.s32	s17, s17
 8001132:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 8001136:	ee89 9a08 	vdiv.f32	s18, s18, s16
 800113a:	f104 001c 	add.w	r0, r4, #28
 800113e:	eec7 7a88 	vdiv.f32	s15, s15, s16
 8001142:	eec8 8a88 	vdiv.f32	s17, s17, s16
 8001146:	ee19 2a10 	vmov	r2, s18
 800114a:	ee18 3a90 	vmov	r3, s17
 800114e:	edcd 7a01 	vstr	s15, [sp, #4]
 8001152:	f000 fc89 	bl	8001a68 <pid_init>
 8001156:	6c60      	ldr	r0, [r4, #68]	; 0x44
 8001158:	f7ff f82c 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 800115c:	edd0 7a06 	vldr	s15, [r0, #24]
 8001160:	6c60      	ldr	r0, [r4, #68]	; 0x44
 8001162:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 8001166:	eec7 7a88 	vdiv.f32	s15, s15, s16
 800116a:	edc4 7a00 	vstr	s15, [r4]
 800116e:	f7ff f821 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8001172:	edd0 7a07 	vldr	s15, [r0, #28]
 8001176:	6c60      	ldr	r0, [r4, #68]	; 0x44
 8001178:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 800117c:	eec7 7a88 	vdiv.f32	s15, s15, s16
 8001180:	edc4 7a01 	vstr	s15, [r4, #4]
 8001184:	f7ff f816 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 8001188:	edd0 7a08 	vldr	s15, [r0, #32]
 800118c:	6c60      	ldr	r0, [r4, #68]	; 0x44
 800118e:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 8001192:	eec7 7a88 	vdiv.f32	s15, s15, s16
 8001196:	edc4 7a02 	vstr	s15, [r4, #8]
 800119a:	f7ff f80b 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 800119e:	edd0 7a09 	vldr	s15, [r0, #36]	; 0x24
 80011a2:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 80011a6:	ee87 8a88 	vdiv.f32	s16, s15, s16
 80011aa:	ed84 8a03 	vstr	s16, [r4, #12]
 80011ae:	b002      	add	sp, #8
 80011b0:	ecbd 8b04 	vpop	{d8-d9}
 80011b4:	bd10      	pop	{r4, pc}
 80011b6:	bf00      	nop
 80011b8:	20000d24 	.word	0x20000d24
 80011bc:	447a0000 	.word	0x447a0000
 80011c0:	42c80000 	.word	0x42c80000

080011c4 <_ZN13CLineFollower7processEv>:
 80011c4:	b538      	push	{r3, r4, r5, lr}
 80011c6:	4604      	mov	r4, r0
 80011c8:	ed2d 8b02 	vpush	{d8}
 80011cc:	6c40      	ldr	r0, [r0, #68]	; 0x44
 80011ce:	ed9f 8a2d 	vldr	s16, [pc, #180]	; 8001284 <_ZN13CLineFollower7processEv+0xc0>
 80011d2:	f7fe fff0 	bl	80001b6 <_ZN6CRobot24get_line_position_sensorEv>
 80011d6:	6845      	ldr	r5, [r0, #4]
 80011d8:	f001 fa8e 	bl	80026f8 <timer_get_time>
 80011dc:	69a3      	ldr	r3, [r4, #24]
 80011de:	4298      	cmp	r0, r3
 80011e0:	bf21      	itttt	cs
 80011e2:	ee07 5a90 	vmovcs	s15, r5
 80011e6:	eeb8 7ae7 	vcvtcs.f32.s32	s14, s15
 80011ea:	eddf 7a27 	vldrcs	s15, [pc, #156]	; 8001288 <_ZN13CLineFollower7processEv+0xc4>
 80011ee:	ee67 7a27 	vmulcs.f32	s15, s14, s15
 80011f2:	bf38      	it	cc
 80011f4:	eef0 7a48 	vmovcc.f32	s15, s16
 80011f8:	ee38 8a67 	vsub.f32	s16, s16, s15
 80011fc:	ee18 0a10 	vmov	r0, s16
 8001200:	f000 fbf4 	bl	80019ec <m_abs>
 8001204:	ed9f 7a21 	vldr	s14, [pc, #132]	; 800128c <_ZN13CLineFollower7processEv+0xc8>
 8001208:	edd4 6a01 	vldr	s13, [r4, #4]
 800120c:	edd4 5a00 	vldr	s11, [r4]
 8001210:	ed94 6a04 	vldr	s12, [r4, #16]
 8001214:	ee07 0a90 	vmov	s15, r0
 8001218:	ee37 5a67 	vsub.f32	s10, s14, s15
 800121c:	ee07 7ae6 	vmls.f32	s14, s15, s13
 8001220:	ee05 6a25 	vmla.f32	s12, s10, s11
 8001224:	ee17 1a10 	vmov	r1, s14
 8001228:	ee16 0a10 	vmov	r0, s12
 800122c:	f000 fc0e 	bl	8001a4c <m_min>
 8001230:	68e2      	ldr	r2, [r4, #12]
 8001232:	68a1      	ldr	r1, [r4, #8]
 8001234:	6120      	str	r0, [r4, #16]
 8001236:	f000 fbf2 	bl	8001a1e <m_saturate>
 800123a:	ee18 1a10 	vmov	r1, s16
 800123e:	6120      	str	r0, [r4, #16]
 8001240:	f104 001c 	add.w	r0, r4, #28
 8001244:	f000 fc40 	bl	8001ac8 <pid_process>
 8001248:	edd4 7a04 	vldr	s15, [r4, #16]
 800124c:	ed9f 6a10 	vldr	s12, [pc, #64]	; 8001290 <_ZN13CLineFollower7processEv+0xcc>
 8001250:	6160      	str	r0, [r4, #20]
 8001252:	ee06 0a90 	vmov	s13, r0
 8001256:	ee37 7aa6 	vadd.f32	s14, s15, s13
 800125a:	ee77 7ae6 	vsub.f32	s15, s15, s13
 800125e:	ecbd 8b02 	vpop	{d8}
 8001262:	ee27 7a06 	vmul.f32	s14, s14, s12
 8001266:	ee67 7a86 	vmul.f32	s15, s15, s12
 800126a:	eebd 7ac7 	vcvt.s32.f32	s14, s14
 800126e:	eefd 7ae7 	vcvt.s32.f32	s15, s15
 8001272:	6c60      	ldr	r0, [r4, #68]	; 0x44
 8001274:	ee17 1a10 	vmov	r1, s14
 8001278:	ee17 2a90 	vmov	r2, s15
 800127c:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8001280:	f7fe bf9f 	b.w	80001c2 <_ZN6CRobot10set_motorsEii>
 8001284:	00000000 	.word	0x00000000
 8001288:	3b800000 	.word	0x3b800000
 800128c:	3f800000 	.word	0x3f800000
 8001290:	42c80000 	.word	0x42c80000

08001294 <_ZN13CLineFollower5startEv>:
 8001294:	b510      	push	{r4, lr}
 8001296:	4604      	mov	r4, r0
 8001298:	f001 fa2e 	bl	80026f8 <timer_get_time>
 800129c:	f500 7096 	add.w	r0, r0, #300	; 0x12c
 80012a0:	61a0      	str	r0, [r4, #24]
 80012a2:	bd10      	pop	{r4, pc}

080012a4 <_ZN11CBrokenLine4initEP6CRobot>:
 80012a4:	b510      	push	{r4, lr}
 80012a6:	4604      	mov	r4, r0
 80012a8:	b151      	cbz	r1, 80012c0 <_ZN11CBrokenLine4initEP6CRobot+0x1c>
 80012aa:	6001      	str	r1, [r0, #0]
 80012ac:	4608      	mov	r0, r1
 80012ae:	f7fe ff81 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 80012b2:	6a83      	ldr	r3, [r0, #40]	; 0x28
 80012b4:	6063      	str	r3, [r4, #4]
 80012b6:	6820      	ldr	r0, [r4, #0]
 80012b8:	f7fe ff7c 	bl	80001b4 <_ZN6CRobot19get_robot_configureEv>
 80012bc:	6ac3      	ldr	r3, [r0, #44]	; 0x2c
 80012be:	60a3      	str	r3, [r4, #8]
 80012c0:	bd10      	pop	{r4, pc}

080012c2 <_ZN11CBrokenLine7processEj>:
 80012c2:	e92d 4ff7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80012c6:	4681      	mov	r9, r0
 80012c8:	6800      	ldr	r0, [r0, #0]
 80012ca:	9100      	str	r1, [sp, #0]
 80012cc:	f7fe ff73 	bl	80001b6 <_ZN6CRobot24get_line_position_sensorEv>
 80012d0:	f8d0 a004 	ldr.w	sl, [r0, #4]
 80012d4:	f001 ffc6 	bl	8003264 <encoder_get_distance>
 80012d8:	2500      	movs	r5, #0
 80012da:	f100 06a0 	add.w	r6, r0, #160	; 0xa0
 80012de:	462c      	mov	r4, r5
 80012e0:	f8d9 0000 	ldr.w	r0, [r9]
 80012e4:	f7fe ff67 	bl	80001b6 <_ZN6CRobot24get_line_position_sensorEv>
 80012e8:	7803      	ldrb	r3, [r0, #0]
 80012ea:	2b01      	cmp	r3, #1
 80012ec:	d003      	beq.n	80012f6 <_ZN11CBrokenLine7processEj+0x34>
 80012ee:	f001 ffb9 	bl	8003264 <encoder_get_distance>
 80012f2:	42b0      	cmp	r0, r6
 80012f4:	d30e      	bcc.n	8001314 <_ZN11CBrokenLine7processEj+0x52>
 80012f6:	f04f 0b00 	mov.w	fp, #0
 80012fa:	465e      	mov	r6, fp
 80012fc:	46d8      	mov	r8, fp
 80012fe:	2701      	movs	r7, #1
 8001300:	f8d9 0000 	ldr.w	r0, [r9]
 8001304:	f7fe ff57 	bl	80001b6 <_ZN6CRobot24get_line_position_sensorEv>
 8001308:	7802      	ldrb	r2, [r0, #0]
 800130a:	2a01      	cmp	r2, #1
 800130c:	d11b      	bne.n	8001346 <_ZN11CBrokenLine7processEj+0x84>
 800130e:	9b00      	ldr	r3, [sp, #0]
 8001310:	b9cb      	cbnz	r3, 8001346 <_ZN11CBrokenLine7processEj+0x84>
 8001312:	e0b9      	b.n	8001488 <_ZN11CBrokenLine7processEj+0x1c6>
 8001314:	f8d9 5008 	ldr.w	r5, [r9, #8]
 8001318:	f1ba 0f00 	cmp.w	sl, #0
 800131c:	bfd6      	itet	le
 800131e:	462c      	movle	r4, r5
 8001320:	2400      	movgt	r4, #0
 8001322:	2500      	movle	r5, #0
 8001324:	4629      	mov	r1, r5
 8001326:	4620      	mov	r0, r4
 8001328:	f001 fdac 	bl	8002e84 <drv8834_run>
 800132c:	200a      	movs	r0, #10
 800132e:	f001 f9f1 	bl	8002714 <timer_delay_ms>
 8001332:	f8d9 0000 	ldr.w	r0, [r9]
 8001336:	f7fe ff3e 	bl	80001b6 <_ZN6CRobot24get_line_position_sensorEv>
 800133a:	7803      	ldrb	r3, [r0, #0]
 800133c:	2b01      	cmp	r3, #1
 800133e:	d1cf      	bne.n	80012e0 <_ZN11CBrokenLine7processEj+0x1e>
 8001340:	b003      	add	sp, #12
 8001342:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8001346:	2f04      	cmp	r7, #4
 8001348:	d87a      	bhi.n	8001440 <_ZN11CBrokenLine7processEj+0x17e>
 800134a:	e8df f007 	tbb	[pc, r7]
 800134e:	1c03      	.short	0x1c03
 8001350:	5037      	.short	0x5037
 8001352:	6b          	.byte	0x6b
 8001353:	00          	.byte	0x00
 8001354:	f001 ff86 	bl	8003264 <encoder_get_distance>
 8001358:	4540      	cmp	r0, r8
 800135a:	d371      	bcc.n	8001440 <_ZN11CBrokenLine7processEj+0x17e>
 800135c:	f001 ff82 	bl	8003264 <encoder_get_distance>
 8001360:	f1ba 0f00 	cmp.w	sl, #0
 8001364:	f8d9 4008 	ldr.w	r4, [r9, #8]
 8001368:	bfca      	itet	gt
 800136a:	f04f 0b00 	movgt.w	fp, #0
 800136e:	f04f 0b00 	movle.w	fp, #0
 8001372:	4625      	movgt	r5, r4
 8001374:	f100 08a0 	add.w	r8, r0, #160	; 0xa0
 8001378:	bfc7      	ittee	gt
 800137a:	465e      	movgt	r6, fp
 800137c:	465c      	movgt	r4, fp
 800137e:	465e      	movle	r6, fp
 8001380:	465d      	movle	r5, fp
 8001382:	2701      	movs	r7, #1
 8001384:	e05c      	b.n	8001440 <_ZN11CBrokenLine7processEj+0x17e>
 8001386:	f001 ff6d 	bl	8003264 <encoder_get_distance>
 800138a:	4540      	cmp	r0, r8
 800138c:	d358      	bcc.n	8001440 <_ZN11CBrokenLine7processEj+0x17e>
 800138e:	f001 ff69 	bl	8003264 <encoder_get_distance>
 8001392:	f1ba 0f00 	cmp.w	sl, #0
 8001396:	f8d9 4008 	ldr.w	r4, [r9, #8]
 800139a:	bfca      	itet	gt
 800139c:	f04f 0b00 	movgt.w	fp, #0
 80013a0:	f04f 0b00 	movle.w	fp, #0
 80013a4:	4265      	neggt	r5, r4
 80013a6:	f100 08a0 	add.w	r8, r0, #160	; 0xa0
 80013aa:	bfc7      	ittee	gt
 80013ac:	465e      	movgt	r6, fp
 80013ae:	465c      	movgt	r4, fp
 80013b0:	4264      	negle	r4, r4
 80013b2:	465e      	movle	r6, fp
 80013b4:	bfd8      	it	le
 80013b6:	465d      	movle	r5, fp
 80013b8:	2702      	movs	r7, #2
 80013ba:	e041      	b.n	8001440 <_ZN11CBrokenLine7processEj+0x17e>
 80013bc:	f001 ff52 	bl	8003264 <encoder_get_distance>
 80013c0:	4540      	cmp	r0, r8
 80013c2:	d33d      	bcc.n	8001440 <_ZN11CBrokenLine7processEj+0x17e>
 80013c4:	f001 ff4e 	bl	8003264 <encoder_get_distance>
 80013c8:	f1ba 0f00 	cmp.w	sl, #0
 80013cc:	f8d9 4008 	ldr.w	r4, [r9, #8]
 80013d0:	bfce      	itee	gt
 80013d2:	f04f 0b00 	movgt.w	fp, #0
 80013d6:	f04f 0b00 	movle.w	fp, #0
 80013da:	4625      	movle	r5, r4
 80013dc:	f100 08a0 	add.w	r8, r0, #160	; 0xa0
 80013e0:	bfc7      	ittee	gt
 80013e2:	465e      	movgt	r6, fp
 80013e4:	465d      	movgt	r5, fp
 80013e6:	465e      	movle	r6, fp
 80013e8:	465c      	movle	r4, fp
 80013ea:	2703      	movs	r7, #3
 80013ec:	e028      	b.n	8001440 <_ZN11CBrokenLine7processEj+0x17e>
 80013ee:	f001 ff39 	bl	8003264 <encoder_get_distance>
 80013f2:	4540      	cmp	r0, r8
 80013f4:	d324      	bcc.n	8001440 <_ZN11CBrokenLine7processEj+0x17e>
 80013f6:	f001 ff35 	bl	8003264 <encoder_get_distance>
 80013fa:	f1ba 0f00 	cmp.w	sl, #0
 80013fe:	f8d9 4008 	ldr.w	r4, [r9, #8]
 8001402:	bfce      	itee	gt
 8001404:	f04f 0b00 	movgt.w	fp, #0
 8001408:	f04f 0b00 	movle.w	fp, #0
 800140c:	4265      	negle	r5, r4
 800140e:	f100 08a0 	add.w	r8, r0, #160	; 0xa0
 8001412:	bfc3      	ittte	gt
 8001414:	4264      	neggt	r4, r4
 8001416:	465e      	movgt	r6, fp
 8001418:	465d      	movgt	r5, fp
 800141a:	465e      	movle	r6, fp
 800141c:	bfd8      	it	le
 800141e:	465c      	movle	r4, fp
 8001420:	2704      	movs	r7, #4
 8001422:	e00d      	b.n	8001440 <_ZN11CBrokenLine7processEj+0x17e>
 8001424:	f001 ff1e 	bl	8003264 <encoder_get_distance>
 8001428:	4540      	cmp	r0, r8
 800142a:	d309      	bcc.n	8001440 <_ZN11CBrokenLine7processEj+0x17e>
 800142c:	f001 ff1a 	bl	8003264 <encoder_get_distance>
 8001430:	f04f 0b00 	mov.w	fp, #0
 8001434:	2514      	movs	r5, #20
 8001436:	f100 08a0 	add.w	r8, r0, #160	; 0xa0
 800143a:	465e      	mov	r6, fp
 800143c:	462c      	mov	r4, r5
 800143e:	465f      	mov	r7, fp
 8001440:	4630      	mov	r0, r6
 8001442:	f000 fadf 	bl	8001a04 <m_abs_int>
 8001446:	9001      	str	r0, [sp, #4]
 8001448:	4620      	mov	r0, r4
 800144a:	f000 fadb 	bl	8001a04 <m_abs_int>
 800144e:	9a01      	ldr	r2, [sp, #4]
 8001450:	4282      	cmp	r2, r0
 8001452:	da03      	bge.n	800145c <_ZN11CBrokenLine7processEj+0x19a>
 8001454:	4620      	mov	r0, r4
 8001456:	f000 fad9 	bl	8001a0c <m_sgn_int>
 800145a:	4406      	add	r6, r0
 800145c:	4658      	mov	r0, fp
 800145e:	f000 fad1 	bl	8001a04 <m_abs_int>
 8001462:	9001      	str	r0, [sp, #4]
 8001464:	4628      	mov	r0, r5
 8001466:	f000 facd 	bl	8001a04 <m_abs_int>
 800146a:	9a01      	ldr	r2, [sp, #4]
 800146c:	4282      	cmp	r2, r0
 800146e:	da03      	bge.n	8001478 <_ZN11CBrokenLine7processEj+0x1b6>
 8001470:	4628      	mov	r0, r5
 8001472:	f000 facb 	bl	8001a0c <m_sgn_int>
 8001476:	4483      	add	fp, r0
 8001478:	4630      	mov	r0, r6
 800147a:	4659      	mov	r1, fp
 800147c:	f001 fd02 	bl	8002e84 <drv8834_run>
 8001480:	200a      	movs	r0, #10
 8001482:	f001 f947 	bl	8002714 <timer_delay_ms>
 8001486:	e73b      	b.n	8001300 <_ZN11CBrokenLine7processEj+0x3e>
 8001488:	9800      	ldr	r0, [sp, #0]
 800148a:	4601      	mov	r1, r0
 800148c:	b003      	add	sp, #12
 800148e:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8001492:	f001 bcf7 	b.w	8002e84 <drv8834_run>

08001496 <_ZN11CQPredictor4initEv>:
 8001496:	1d03      	adds	r3, r0, #4
 8001498:	3044      	adds	r0, #68	; 0x44
 800149a:	2200      	movs	r2, #0
 800149c:	f843 2b04 	str.w	r2, [r3], #4
 80014a0:	4283      	cmp	r3, r0
 80014a2:	d1fa      	bne.n	800149a <_ZN11CQPredictor4initEv+0x4>
 80014a4:	4770      	bx	lr
	...

080014a8 <thread_ending>:
 80014a8:	b672      	cpsid	i
 80014aa:	4b05      	ldr	r3, [pc, #20]	; (80014c0 <thread_ending+0x18>)
 80014ac:	681a      	ldr	r2, [r3, #0]
 80014ae:	4b05      	ldr	r3, [pc, #20]	; (80014c4 <thread_ending+0x1c>)
 80014b0:	210c      	movs	r1, #12
 80014b2:	fb01 3302 	mla	r3, r1, r2, r3
 80014b6:	2200      	movs	r2, #0
 80014b8:	605a      	str	r2, [r3, #4]
 80014ba:	b662      	cpsie	i
 80014bc:	bf00      	nop
 80014be:	e7fd      	b.n	80014bc <thread_ending+0x14>
 80014c0:	20000db0 	.word	0x20000db0
 80014c4:	20000d68 	.word	0x20000d68

080014c8 <null_thread>:
 80014c8:	b508      	push	{r3, lr}
 80014ca:	f001 fc47 	bl	8002d5c <sleep>
 80014ce:	e7fc      	b.n	80014ca <null_thread+0x2>

080014d0 <scheduler>:
 80014d0:	b570      	push	{r4, r5, r6, lr}
 80014d2:	2200      	movs	r2, #0
 80014d4:	4611      	mov	r1, r2
 80014d6:	4b15      	ldr	r3, [pc, #84]	; (800152c <scheduler+0x5c>)
 80014d8:	200c      	movs	r0, #12
 80014da:	fb00 f401 	mul.w	r4, r0, r1
 80014de:	191e      	adds	r6, r3, r4
 80014e0:	6875      	ldr	r5, [r6, #4]
 80014e2:	f015 0f02 	tst.w	r5, #2
 80014e6:	461d      	mov	r5, r3
 80014e8:	d10a      	bne.n	8001500 <scheduler+0x30>
 80014ea:	6876      	ldr	r6, [r6, #4]
 80014ec:	07f6      	lsls	r6, r6, #31
 80014ee:	d507      	bpl.n	8001500 <scheduler+0x30>
 80014f0:	4350      	muls	r0, r2
 80014f2:	5b1c      	ldrh	r4, [r3, r4]
 80014f4:	5a18      	ldrh	r0, [r3, r0]
 80014f6:	b2a4      	uxth	r4, r4
 80014f8:	b280      	uxth	r0, r0
 80014fa:	4284      	cmp	r4, r0
 80014fc:	bf38      	it	cc
 80014fe:	460a      	movcc	r2, r1
 8001500:	200c      	movs	r0, #12
 8001502:	4348      	muls	r0, r1
 8001504:	5a1c      	ldrh	r4, [r3, r0]
 8001506:	b2a4      	uxth	r4, r4
 8001508:	b11c      	cbz	r4, 8001512 <scheduler+0x42>
 800150a:	5a1c      	ldrh	r4, [r3, r0]
 800150c:	3c01      	subs	r4, #1
 800150e:	b2a4      	uxth	r4, r4
 8001510:	521c      	strh	r4, [r3, r0]
 8001512:	3101      	adds	r1, #1
 8001514:	2906      	cmp	r1, #6
 8001516:	d1de      	bne.n	80014d6 <scheduler+0x6>
 8001518:	230c      	movs	r3, #12
 800151a:	4353      	muls	r3, r2
 800151c:	18e9      	adds	r1, r5, r3
 800151e:	8849      	ldrh	r1, [r1, #2]
 8001520:	b289      	uxth	r1, r1
 8001522:	52e9      	strh	r1, [r5, r3]
 8001524:	4b02      	ldr	r3, [pc, #8]	; (8001530 <scheduler+0x60>)
 8001526:	601a      	str	r2, [r3, #0]
 8001528:	bd70      	pop	{r4, r5, r6, pc}
 800152a:	bf00      	nop
 800152c:	20000d68 	.word	0x20000d68
 8001530:	20000db0 	.word	0x20000db0

08001534 <SysTick_Handler>:
 8001534:	e92d 0ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 8001538:	f3ef 8308 	mrs	r3, MSP
 800153c:	4c0f      	ldr	r4, [pc, #60]	; (800157c <SysTick_Handler+0x48>)
 800153e:	4d10      	ldr	r5, [pc, #64]	; (8001580 <SysTick_Handler+0x4c>)
 8001540:	6822      	ldr	r2, [r4, #0]
 8001542:	3201      	adds	r2, #1
 8001544:	bf1d      	ittte	ne
 8001546:	6822      	ldrne	r2, [r4, #0]
 8001548:	210c      	movne	r1, #12
 800154a:	fb01 5202 	mlane	r2, r1, r2, r5
 800154e:	2300      	moveq	r3, #0
 8001550:	bf14      	ite	ne
 8001552:	6093      	strne	r3, [r2, #8]
 8001554:	6023      	streq	r3, [r4, #0]
 8001556:	f7ff ffbb 	bl	80014d0 <scheduler>
 800155a:	4b0a      	ldr	r3, [pc, #40]	; (8001584 <SysTick_Handler+0x50>)
 800155c:	681a      	ldr	r2, [r3, #0]
 800155e:	3201      	adds	r2, #1
 8001560:	601a      	str	r2, [r3, #0]
 8001562:	6822      	ldr	r2, [r4, #0]
 8001564:	230c      	movs	r3, #12
 8001566:	fb03 5302 	mla	r3, r3, r2, r5
 800156a:	689a      	ldr	r2, [r3, #8]
 800156c:	f06f 0306 	mvn.w	r3, #6
 8001570:	469e      	mov	lr, r3
 8001572:	f382 8808 	msr	MSP, r2
 8001576:	e8bd 0ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 800157a:	4770      	bx	lr
 800157c:	20000db0 	.word	0x20000db0
 8001580:	20000d68 	.word	0x20000d68
 8001584:	20000db4 	.word	0x20000db4

08001588 <sched_off>:
 8001588:	b672      	cpsid	i
 800158a:	4770      	bx	lr

0800158c <sched_on>:
 800158c:	b662      	cpsie	i
 800158e:	4770      	bx	lr

08001590 <yield>:
 8001590:	bf00      	nop
 8001592:	4770      	bx	lr

08001594 <get_thread_id>:
 8001594:	b082      	sub	sp, #8
 8001596:	b672      	cpsid	i
 8001598:	4b03      	ldr	r3, [pc, #12]	; (80015a8 <get_thread_id+0x14>)
 800159a:	681b      	ldr	r3, [r3, #0]
 800159c:	9301      	str	r3, [sp, #4]
 800159e:	b662      	cpsie	i
 80015a0:	9801      	ldr	r0, [sp, #4]
 80015a2:	b002      	add	sp, #8
 80015a4:	4770      	bx	lr
 80015a6:	bf00      	nop
 80015a8:	20000db0 	.word	0x20000db0

080015ac <kernel_start>:
 80015ac:	b508      	push	{r3, lr}
 80015ae:	f001 fbc3 	bl	8002d38 <sys_tick_init>
 80015b2:	bf00      	nop
 80015b4:	e7fd      	b.n	80015b2 <kernel_start+0x6>
	...

080015b8 <create_thread>:
 80015b8:	f022 0203 	bic.w	r2, r2, #3
 80015bc:	3a40      	subs	r2, #64	; 0x40
 80015be:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80015c2:	eb01 0e02 	add.w	lr, r1, r2
 80015c6:	f102 0634 	add.w	r6, r2, #52	; 0x34
 80015ca:	f102 0738 	add.w	r7, r2, #56	; 0x38
 80015ce:	323c      	adds	r2, #60	; 0x3c
 80015d0:	440e      	add	r6, r1
 80015d2:	440f      	add	r7, r1
 80015d4:	4411      	add	r1, r2
 80015d6:	2200      	movs	r2, #0
 80015d8:	b672      	cpsid	i
 80015da:	f8df c054 	ldr.w	ip, [pc, #84]	; 8001630 <create_thread+0x78>
 80015de:	250c      	movs	r5, #12
 80015e0:	4355      	muls	r5, r2
 80015e2:	eb0c 0405 	add.w	r4, ip, r5
 80015e6:	f8d4 8004 	ldr.w	r8, [r4, #4]
 80015ea:	f018 0f01 	tst.w	r8, #1
 80015ee:	d114      	bne.n	800161a <create_thread+0x62>
 80015f0:	f8df 8040 	ldr.w	r8, [pc, #64]	; 8001634 <create_thread+0x7c>
 80015f4:	f8c4 e008 	str.w	lr, [r4, #8]
 80015f8:	2b05      	cmp	r3, #5
 80015fa:	f8c6 8000 	str.w	r8, [r6]
 80015fe:	bf98      	it	ls
 8001600:	2306      	movls	r3, #6
 8001602:	f04f 5804 	mov.w	r8, #553648128	; 0x21000000
 8001606:	6038      	str	r0, [r7, #0]
 8001608:	f8c1 8000 	str.w	r8, [r1]
 800160c:	8063      	strh	r3, [r4, #2]
 800160e:	f82c 3005 	strh.w	r3, [ip, r5]
 8001612:	2501      	movs	r5, #1
 8001614:	6065      	str	r5, [r4, #4]
 8001616:	4614      	mov	r4, r2
 8001618:	e000      	b.n	800161c <create_thread+0x64>
 800161a:	2406      	movs	r4, #6
 800161c:	b662      	cpsie	i
 800161e:	3201      	adds	r2, #1
 8001620:	2a06      	cmp	r2, #6
 8001622:	d001      	beq.n	8001628 <create_thread+0x70>
 8001624:	2c06      	cmp	r4, #6
 8001626:	d0d7      	beq.n	80015d8 <create_thread+0x20>
 8001628:	4620      	mov	r0, r4
 800162a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800162e:	bf00      	nop
 8001630:	20000d68 	.word	0x20000d68
 8001634:	080014a9 	.word	0x080014a9

08001638 <kernel_init>:
 8001638:	b530      	push	{r4, r5, lr}
 800163a:	2300      	movs	r3, #0
 800163c:	480c      	ldr	r0, [pc, #48]	; (8001670 <kernel_init+0x38>)
 800163e:	220c      	movs	r2, #12
 8001640:	435a      	muls	r2, r3
 8001642:	2406      	movs	r4, #6
 8001644:	1885      	adds	r5, r0, r2
 8001646:	3301      	adds	r3, #1
 8001648:	2100      	movs	r1, #0
 800164a:	42a3      	cmp	r3, r4
 800164c:	6069      	str	r1, [r5, #4]
 800164e:	806c      	strh	r4, [r5, #2]
 8001650:	5284      	strh	r4, [r0, r2]
 8001652:	d1f3      	bne.n	800163c <kernel_init+0x4>
 8001654:	4b07      	ldr	r3, [pc, #28]	; (8001674 <kernel_init+0x3c>)
 8001656:	4808      	ldr	r0, [pc, #32]	; (8001678 <kernel_init+0x40>)
 8001658:	6019      	str	r1, [r3, #0]
 800165a:	4b08      	ldr	r3, [pc, #32]	; (800167c <kernel_init+0x44>)
 800165c:	4908      	ldr	r1, [pc, #32]	; (8001680 <kernel_init+0x48>)
 800165e:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8001662:	601a      	str	r2, [r3, #0]
 8001664:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
 8001668:	2280      	movs	r2, #128	; 0x80
 800166a:	23ff      	movs	r3, #255	; 0xff
 800166c:	f7ff bfa4 	b.w	80015b8 <create_thread>
 8001670:	20000d68 	.word	0x20000d68
 8001674:	20000db4 	.word	0x20000db4
 8001678:	080014c9 	.word	0x080014c9
 800167c:	20000db0 	.word	0x20000db0
 8001680:	20000db8 	.word	0x20000db8

08001684 <set_wait_state>:
 8001684:	b507      	push	{r0, r1, r2, lr}
 8001686:	f7ff ff85 	bl	8001594 <get_thread_id>
 800168a:	9000      	str	r0, [sp, #0]
 800168c:	b672      	cpsid	i
 800168e:	4b0d      	ldr	r3, [pc, #52]	; (80016c4 <set_wait_state+0x40>)
 8001690:	9a00      	ldr	r2, [sp, #0]
 8001692:	210c      	movs	r1, #12
 8001694:	fb01 3202 	mla	r2, r1, r2, r3
 8001698:	6851      	ldr	r1, [r2, #4]
 800169a:	f041 0102 	orr.w	r1, r1, #2
 800169e:	6051      	str	r1, [r2, #4]
 80016a0:	b672      	cpsid	i
 80016a2:	9a00      	ldr	r2, [sp, #0]
 80016a4:	210c      	movs	r1, #12
 80016a6:	fb01 3202 	mla	r2, r1, r2, r3
 80016aa:	6852      	ldr	r2, [r2, #4]
 80016ac:	9201      	str	r2, [sp, #4]
 80016ae:	b662      	cpsie	i
 80016b0:	9a01      	ldr	r2, [sp, #4]
 80016b2:	0791      	lsls	r1, r2, #30
 80016b4:	d500      	bpl.n	80016b8 <set_wait_state+0x34>
 80016b6:	bf00      	nop
 80016b8:	9a01      	ldr	r2, [sp, #4]
 80016ba:	0792      	lsls	r2, r2, #30
 80016bc:	d4f0      	bmi.n	80016a0 <set_wait_state+0x1c>
 80016be:	b003      	add	sp, #12
 80016c0:	f85d fb04 	ldr.w	pc, [sp], #4
 80016c4:	20000d68 	.word	0x20000d68

080016c8 <wake_up_threads>:
 80016c8:	2300      	movs	r3, #0
 80016ca:	b672      	cpsid	i
 80016cc:	4906      	ldr	r1, [pc, #24]	; (80016e8 <wake_up_threads+0x20>)
 80016ce:	220c      	movs	r2, #12
 80016d0:	fb02 1203 	mla	r2, r2, r3, r1
 80016d4:	6851      	ldr	r1, [r2, #4]
 80016d6:	f021 0102 	bic.w	r1, r1, #2
 80016da:	6051      	str	r1, [r2, #4]
 80016dc:	b662      	cpsie	i
 80016de:	3301      	adds	r3, #1
 80016e0:	2b06      	cmp	r3, #6
 80016e2:	d1f2      	bne.n	80016ca <wake_up_threads+0x2>
 80016e4:	4770      	bx	lr
 80016e6:	bf00      	nop
 80016e8:	20000d68 	.word	0x20000d68

080016ec <messages_init>:
 80016ec:	4a0a      	ldr	r2, [pc, #40]	; (8001718 <messages_init+0x2c>)
 80016ee:	2300      	movs	r3, #0
 80016f0:	b510      	push	{r4, lr}
 80016f2:	6013      	str	r3, [r2, #0]
 80016f4:	6053      	str	r3, [r2, #4]
 80016f6:	6093      	str	r3, [r2, #8]
 80016f8:	60d3      	str	r3, [r2, #12]
 80016fa:	6113      	str	r3, [r2, #16]
 80016fc:	6153      	str	r3, [r2, #20]
 80016fe:	4c07      	ldr	r4, [pc, #28]	; (800171c <messages_init+0x30>)
 8001700:	0118      	lsls	r0, r3, #4
 8001702:	1821      	adds	r1, r4, r0
 8001704:	3301      	adds	r3, #1
 8001706:	2200      	movs	r2, #0
 8001708:	2b04      	cmp	r3, #4
 800170a:	604a      	str	r2, [r1, #4]
 800170c:	5022      	str	r2, [r4, r0]
 800170e:	60ca      	str	r2, [r1, #12]
 8001710:	608a      	str	r2, [r1, #8]
 8001712:	d1f4      	bne.n	80016fe <messages_init+0x12>
 8001714:	bd10      	pop	{r4, pc}
 8001716:	bf00      	nop
 8001718:	20000e38 	.word	0x20000e38
 800171c:	20000e50 	.word	0x20000e50

08001720 <putc_>:
 8001720:	b538      	push	{r3, r4, r5, lr}
 8001722:	4c06      	ldr	r4, [pc, #24]	; (800173c <putc_+0x1c>)
 8001724:	4605      	mov	r5, r0
 8001726:	4620      	mov	r0, r4
 8001728:	f000 f91f 	bl	800196a <mutex_lock>
 800172c:	4628      	mov	r0, r5
 800172e:	f001 f8dd 	bl	80028ec <uart_write>
 8001732:	4620      	mov	r0, r4
 8001734:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8001738:	f000 b933 	b.w	80019a2 <mutex_unlock>
 800173c:	20000e90 	.word	0x20000e90

08001740 <puts_>:
 8001740:	b510      	push	{r4, lr}
 8001742:	4604      	mov	r4, r0
 8001744:	4807      	ldr	r0, [pc, #28]	; (8001764 <puts_+0x24>)
 8001746:	f000 f910 	bl	800196a <mutex_lock>
 800174a:	3c01      	subs	r4, #1
 800174c:	f814 0f01 	ldrb.w	r0, [r4, #1]!
 8001750:	b110      	cbz	r0, 8001758 <puts_+0x18>
 8001752:	f7ff ffe5 	bl	8001720 <putc_>
 8001756:	e7f9      	b.n	800174c <puts_+0xc>
 8001758:	4802      	ldr	r0, [pc, #8]	; (8001764 <puts_+0x24>)
 800175a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800175e:	f000 b920 	b.w	80019a2 <mutex_unlock>
 8001762:	bf00      	nop
 8001764:	20000e9c 	.word	0x20000e9c

08001768 <puti_>:
 8001768:	b530      	push	{r4, r5, lr}
 800176a:	b085      	sub	sp, #20
 800176c:	1e03      	subs	r3, r0, #0
 800176e:	f04f 0200 	mov.w	r2, #0
 8001772:	bfba      	itte	lt
 8001774:	425b      	neglt	r3, r3
 8001776:	2401      	movlt	r4, #1
 8001778:	4614      	movge	r4, r2
 800177a:	f88d 200f 	strb.w	r2, [sp, #15]
 800177e:	210a      	movs	r1, #10
 8001780:	220a      	movs	r2, #10
 8001782:	a801      	add	r0, sp, #4
 8001784:	fb93 f5f2 	sdiv	r5, r3, r2
 8001788:	fb02 3315 	mls	r3, r2, r5, r3
 800178c:	3330      	adds	r3, #48	; 0x30
 800178e:	540b      	strb	r3, [r1, r0]
 8001790:	1e4a      	subs	r2, r1, #1
 8001792:	462b      	mov	r3, r5
 8001794:	b10d      	cbz	r5, 800179a <puti_+0x32>
 8001796:	4611      	mov	r1, r2
 8001798:	e7f2      	b.n	8001780 <puti_+0x18>
 800179a:	b12c      	cbz	r4, 80017a8 <puti_+0x40>
 800179c:	ab04      	add	r3, sp, #16
 800179e:	4413      	add	r3, r2
 80017a0:	212d      	movs	r1, #45	; 0x2d
 80017a2:	f803 1c0c 	strb.w	r1, [r3, #-12]
 80017a6:	4611      	mov	r1, r2
 80017a8:	4408      	add	r0, r1
 80017aa:	f7ff ffc9 	bl	8001740 <puts_>
 80017ae:	b005      	add	sp, #20
 80017b0:	bd30      	pop	{r4, r5, pc}

080017b2 <putui_>:
 80017b2:	b51f      	push	{r0, r1, r2, r3, r4, lr}
 80017b4:	2300      	movs	r3, #0
 80017b6:	f88d 300f 	strb.w	r3, [sp, #15]
 80017ba:	220a      	movs	r2, #10
 80017bc:	230a      	movs	r3, #10
 80017be:	a901      	add	r1, sp, #4
 80017c0:	fbb0 f4f3 	udiv	r4, r0, r3
 80017c4:	fb03 0314 	mls	r3, r3, r4, r0
 80017c8:	3330      	adds	r3, #48	; 0x30
 80017ca:	5453      	strb	r3, [r2, r1]
 80017cc:	4620      	mov	r0, r4
 80017ce:	1e53      	subs	r3, r2, #1
 80017d0:	b10c      	cbz	r4, 80017d6 <putui_+0x24>
 80017d2:	461a      	mov	r2, r3
 80017d4:	e7f2      	b.n	80017bc <putui_+0xa>
 80017d6:	1888      	adds	r0, r1, r2
 80017d8:	f7ff ffb2 	bl	8001740 <puts_>
 80017dc:	b004      	add	sp, #16
 80017de:	bd10      	pop	{r4, pc}

080017e0 <putx_>:
 80017e0:	b51f      	push	{r0, r1, r2, r3, r4, lr}
 80017e2:	2300      	movs	r3, #0
 80017e4:	f88d 300f 	strb.w	r3, [sp, #15]
 80017e8:	220a      	movs	r2, #10
 80017ea:	f000 030f 	and.w	r3, r0, #15
 80017ee:	2b09      	cmp	r3, #9
 80017f0:	a901      	add	r1, sp, #4
 80017f2:	bf94      	ite	ls
 80017f4:	3330      	addls	r3, #48	; 0x30
 80017f6:	3357      	addhi	r3, #87	; 0x57
 80017f8:	0900      	lsrs	r0, r0, #4
 80017fa:	548b      	strb	r3, [r1, r2]
 80017fc:	f102 33ff 	add.w	r3, r2, #4294967295	; 0xffffffff
 8001800:	d001      	beq.n	8001806 <putx_+0x26>
 8001802:	461a      	mov	r2, r3
 8001804:	e7f1      	b.n	80017ea <putx_+0xa>
 8001806:	1888      	adds	r0, r1, r2
 8001808:	f7ff ff9a 	bl	8001740 <puts_>
 800180c:	b005      	add	sp, #20
 800180e:	f85d fb04 	ldr.w	pc, [sp], #4
	...

08001814 <printf_>:
 8001814:	b40f      	push	{r0, r1, r2, r3}
 8001816:	b537      	push	{r0, r1, r2, r4, r5, lr}
 8001818:	ac06      	add	r4, sp, #24
 800181a:	4826      	ldr	r0, [pc, #152]	; (80018b4 <printf_+0xa0>)
 800181c:	f854 5b04 	ldr.w	r5, [r4], #4
 8001820:	f000 f8a3 	bl	800196a <mutex_lock>
 8001824:	9401      	str	r4, [sp, #4]
 8001826:	2400      	movs	r4, #0
 8001828:	5d28      	ldrb	r0, [r5, r4]
 800182a:	2800      	cmp	r0, #0
 800182c:	d039      	beq.n	80018a2 <printf_+0x8e>
 800182e:	2825      	cmp	r0, #37	; 0x25
 8001830:	d003      	beq.n	800183a <printf_+0x26>
 8001832:	f7ff ff75 	bl	8001720 <putc_>
 8001836:	3401      	adds	r4, #1
 8001838:	e7f6      	b.n	8001828 <printf_+0x14>
 800183a:	192b      	adds	r3, r5, r4
 800183c:	7858      	ldrb	r0, [r3, #1]
 800183e:	2869      	cmp	r0, #105	; 0x69
 8001840:	d016      	beq.n	8001870 <printf_+0x5c>
 8001842:	d808      	bhi.n	8001856 <printf_+0x42>
 8001844:	2825      	cmp	r0, #37	; 0x25
 8001846:	d028      	beq.n	800189a <printf_+0x86>
 8001848:	2863      	cmp	r0, #99	; 0x63
 800184a:	d128      	bne.n	800189e <printf_+0x8a>
 800184c:	9b01      	ldr	r3, [sp, #4]
 800184e:	1d1a      	adds	r2, r3, #4
 8001850:	9201      	str	r2, [sp, #4]
 8001852:	7818      	ldrb	r0, [r3, #0]
 8001854:	e021      	b.n	800189a <printf_+0x86>
 8001856:	2875      	cmp	r0, #117	; 0x75
 8001858:	d011      	beq.n	800187e <printf_+0x6a>
 800185a:	2878      	cmp	r0, #120	; 0x78
 800185c:	d016      	beq.n	800188c <printf_+0x78>
 800185e:	2873      	cmp	r0, #115	; 0x73
 8001860:	d11d      	bne.n	800189e <printf_+0x8a>
 8001862:	9b01      	ldr	r3, [sp, #4]
 8001864:	1d1a      	adds	r2, r3, #4
 8001866:	6818      	ldr	r0, [r3, #0]
 8001868:	9201      	str	r2, [sp, #4]
 800186a:	f7ff ff69 	bl	8001740 <puts_>
 800186e:	e016      	b.n	800189e <printf_+0x8a>
 8001870:	9b01      	ldr	r3, [sp, #4]
 8001872:	1d1a      	adds	r2, r3, #4
 8001874:	6818      	ldr	r0, [r3, #0]
 8001876:	9201      	str	r2, [sp, #4]
 8001878:	f7ff ff76 	bl	8001768 <puti_>
 800187c:	e00f      	b.n	800189e <printf_+0x8a>
 800187e:	9b01      	ldr	r3, [sp, #4]
 8001880:	1d1a      	adds	r2, r3, #4
 8001882:	6818      	ldr	r0, [r3, #0]
 8001884:	9201      	str	r2, [sp, #4]
 8001886:	f7ff ff94 	bl	80017b2 <putui_>
 800188a:	e008      	b.n	800189e <printf_+0x8a>
 800188c:	9b01      	ldr	r3, [sp, #4]
 800188e:	1d1a      	adds	r2, r3, #4
 8001890:	6818      	ldr	r0, [r3, #0]
 8001892:	9201      	str	r2, [sp, #4]
 8001894:	f7ff ffa4 	bl	80017e0 <putx_>
 8001898:	e001      	b.n	800189e <printf_+0x8a>
 800189a:	f7ff ff41 	bl	8001720 <putc_>
 800189e:	3402      	adds	r4, #2
 80018a0:	e7c2      	b.n	8001828 <printf_+0x14>
 80018a2:	4804      	ldr	r0, [pc, #16]	; (80018b4 <printf_+0xa0>)
 80018a4:	f000 f87d 	bl	80019a2 <mutex_unlock>
 80018a8:	b003      	add	sp, #12
 80018aa:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
 80018ae:	b004      	add	sp, #16
 80018b0:	4770      	bx	lr
 80018b2:	bf00      	nop
 80018b4:	20000e98 	.word	0x20000e98

080018b8 <stdio_init>:
 80018b8:	b510      	push	{r4, lr}
 80018ba:	480e      	ldr	r0, [pc, #56]	; (80018f4 <stdio_init+0x3c>)
 80018bc:	f000 f84b 	bl	8001956 <mutex_init>
 80018c0:	480d      	ldr	r0, [pc, #52]	; (80018f8 <stdio_init+0x40>)
 80018c2:	f000 f848 	bl	8001956 <mutex_init>
 80018c6:	480d      	ldr	r0, [pc, #52]	; (80018fc <stdio_init+0x44>)
 80018c8:	f000 f845 	bl	8001956 <mutex_init>
 80018cc:	480c      	ldr	r0, [pc, #48]	; (8001900 <stdio_init+0x48>)
 80018ce:	f000 f842 	bl	8001956 <mutex_init>
 80018d2:	2408      	movs	r4, #8
 80018d4:	2020      	movs	r0, #32
 80018d6:	f7ff ff23 	bl	8001720 <putc_>
 80018da:	3c01      	subs	r4, #1
 80018dc:	d1fa      	bne.n	80018d4 <stdio_init+0x1c>
 80018de:	2420      	movs	r4, #32
 80018e0:	200a      	movs	r0, #10
 80018e2:	f7ff ff1d 	bl	8001720 <putc_>
 80018e6:	3c01      	subs	r4, #1
 80018e8:	d1fa      	bne.n	80018e0 <stdio_init+0x28>
 80018ea:	4806      	ldr	r0, [pc, #24]	; (8001904 <stdio_init+0x4c>)
 80018ec:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80018f0:	f7ff bf90 	b.w	8001814 <printf_>
 80018f4:	20000e90 	.word	0x20000e90
 80018f8:	20000e94 	.word	0x20000e94
 80018fc:	20000e9c 	.word	0x20000e9c
 8001900:	20000e98 	.word	0x20000e98
 8001904:	08004f1f 	.word	0x08004f1f

08001908 <mem_init>:
 8001908:	4b06      	ldr	r3, [pc, #24]	; (8001924 <mem_init+0x1c>)
 800190a:	4a07      	ldr	r2, [pc, #28]	; (8001928 <mem_init+0x20>)
 800190c:	601a      	str	r2, [r3, #0]
 800190e:	4907      	ldr	r1, [pc, #28]	; (800192c <mem_init+0x24>)
 8001910:	4b07      	ldr	r3, [pc, #28]	; (8001930 <mem_init+0x28>)
 8001912:	4808      	ldr	r0, [pc, #32]	; (8001934 <mem_init+0x2c>)
 8001914:	1a5b      	subs	r3, r3, r1
 8001916:	4908      	ldr	r1, [pc, #32]	; (8001938 <mem_init+0x30>)
 8001918:	4413      	add	r3, r2
 800191a:	600b      	str	r3, [r1, #0]
 800191c:	4b07      	ldr	r3, [pc, #28]	; (800193c <mem_init+0x34>)
 800191e:	601a      	str	r2, [r3, #0]
 8001920:	f000 b819 	b.w	8001956 <mutex_init>
 8001924:	20000ea0 	.word	0x20000ea0
 8001928:	20001380 	.word	0x20001380
 800192c:	20001380 	.word	0x20001380
 8001930:	20004000 	.word	0x20004000
 8001934:	20000eac 	.word	0x20000eac
 8001938:	20000ea8 	.word	0x20000ea8
 800193c:	20000ea4 	.word	0x20000ea4

08001940 <lib_os_init>:
 8001940:	b508      	push	{r3, lr}
 8001942:	f7ff fe79 	bl	8001638 <kernel_init>
 8001946:	f7ff ffdf 	bl	8001908 <mem_init>
 800194a:	f7ff fecf 	bl	80016ec <messages_init>
 800194e:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001952:	f7ff bfb1 	b.w	80018b8 <stdio_init>

08001956 <mutex_init>:
 8001956:	b510      	push	{r4, lr}
 8001958:	4604      	mov	r4, r0
 800195a:	f7ff fe15 	bl	8001588 <sched_off>
 800195e:	2300      	movs	r3, #0
 8001960:	6023      	str	r3, [r4, #0]
 8001962:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8001966:	f7ff be11 	b.w	800158c <sched_on>

0800196a <mutex_lock>:
 800196a:	b513      	push	{r0, r1, r4, lr}
 800196c:	4604      	mov	r4, r0
 800196e:	f7ff fe0b 	bl	8001588 <sched_off>
 8001972:	6823      	ldr	r3, [r4, #0]
 8001974:	9301      	str	r3, [sp, #4]
 8001976:	f7ff fe09 	bl	800158c <sched_on>
 800197a:	9b01      	ldr	r3, [sp, #4]
 800197c:	b10b      	cbz	r3, 8001982 <mutex_lock+0x18>
 800197e:	f7ff fe81 	bl	8001684 <set_wait_state>
 8001982:	9b01      	ldr	r3, [sp, #4]
 8001984:	2b00      	cmp	r3, #0
 8001986:	d1f2      	bne.n	800196e <mutex_lock+0x4>
 8001988:	f7ff fdfe 	bl	8001588 <sched_off>
 800198c:	6823      	ldr	r3, [r4, #0]
 800198e:	9301      	str	r3, [sp, #4]
 8001990:	9b01      	ldr	r3, [sp, #4]
 8001992:	2b00      	cmp	r3, #0
 8001994:	d1eb      	bne.n	800196e <mutex_lock+0x4>
 8001996:	2301      	movs	r3, #1
 8001998:	6023      	str	r3, [r4, #0]
 800199a:	f7ff fdf7 	bl	800158c <sched_on>
 800199e:	b002      	add	sp, #8
 80019a0:	bd10      	pop	{r4, pc}

080019a2 <mutex_unlock>:
 80019a2:	b508      	push	{r3, lr}
 80019a4:	f7ff ffd7 	bl	8001956 <mutex_init>
 80019a8:	f7ff fe8e 	bl	80016c8 <wake_up_threads>
 80019ac:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80019b0:	f7ff bdee 	b.w	8001590 <yield>

080019b4 <log_write>:
 80019b4:	b570      	push	{r4, r5, r6, lr}
 80019b6:	f3c0 060a 	ubfx	r6, r0, #0, #11
 80019ba:	460c      	mov	r4, r1
 80019bc:	4615      	mov	r5, r2
 80019be:	f001 f8a3 	bl	8002b08 <i2cStart>
 80019c2:	0a30      	lsrs	r0, r6, #8
 80019c4:	0040      	lsls	r0, r0, #1
 80019c6:	f040 00a0 	orr.w	r0, r0, #160	; 0xa0
 80019ca:	f001 f8bb 	bl	8002b44 <i2cWrite>
 80019ce:	b2f0      	uxtb	r0, r6
 80019d0:	f001 f8b8 	bl	8002b44 <i2cWrite>
 80019d4:	4425      	add	r5, r4
 80019d6:	42ac      	cmp	r4, r5
 80019d8:	d004      	beq.n	80019e4 <log_write+0x30>
 80019da:	f814 0b01 	ldrb.w	r0, [r4], #1
 80019de:	f001 f8b1 	bl	8002b44 <i2cWrite>
 80019e2:	e7f8      	b.n	80019d6 <log_write+0x22>
 80019e4:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 80019e8:	f001 b89d 	b.w	8002b26 <i2cStop>

080019ec <m_abs>:
 80019ec:	ee07 0a90 	vmov	s15, r0
 80019f0:	eef5 7ac0 	vcmpe.f32	s15, #0.0
 80019f4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80019f8:	bf48      	it	mi
 80019fa:	eef1 7a67 	vnegmi.f32	s15, s15
 80019fe:	ee17 0a90 	vmov	r0, s15
 8001a02:	4770      	bx	lr

08001a04 <m_abs_int>:
 8001a04:	2800      	cmp	r0, #0
 8001a06:	bfb8      	it	lt
 8001a08:	4240      	neglt	r0, r0
 8001a0a:	4770      	bx	lr

08001a0c <m_sgn_int>:
 8001a0c:	2800      	cmp	r0, #0
 8001a0e:	db03      	blt.n	8001a18 <m_sgn_int+0xc>
 8001a10:	bf14      	ite	ne
 8001a12:	2001      	movne	r0, #1
 8001a14:	2000      	moveq	r0, #0
 8001a16:	4770      	bx	lr
 8001a18:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8001a1c:	4770      	bx	lr

08001a1e <m_saturate>:
 8001a1e:	ee07 0a90 	vmov	s15, r0
 8001a22:	ee06 1a90 	vmov	s13, r1
 8001a26:	eef4 7a66 	vcmp.f32	s15, s13
 8001a2a:	ee07 2a10 	vmov	s14, r2
 8001a2e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001a32:	bf48      	it	mi
 8001a34:	eef0 7a66 	vmovmi.f32	s15, s13
 8001a38:	eef4 7a47 	vcmp.f32	s15, s14
 8001a3c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001a40:	bfcc      	ite	gt
 8001a42:	ee17 0a10 	vmovgt	r0, s14
 8001a46:	ee17 0a90 	vmovle	r0, s15
 8001a4a:	4770      	bx	lr

08001a4c <m_min>:
 8001a4c:	ee07 0a10 	vmov	s14, r0
 8001a50:	ee07 1a90 	vmov	s15, r1
 8001a54:	eeb4 7ae7 	vcmpe.f32	s14, s15
 8001a58:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001a5c:	bf54      	ite	pl
 8001a5e:	ee17 0a90 	vmovpl	r0, s15
 8001a62:	ee17 0a10 	vmovmi	r0, s14
 8001a66:	4770      	bx	lr

08001a68 <pid_init>:
 8001a68:	ee07 2a90 	vmov	s15, r2
 8001a6c:	ee06 3a10 	vmov	s12, r3
 8001a70:	ed9d 7a00 	vldr	s14, [sp]
 8001a74:	eddd 6a01 	vldr	s13, [sp, #4]
 8001a78:	6241      	str	r1, [r0, #36]	; 0x24
 8001a7a:	ee37 6a86 	vadd.f32	s12, s15, s12
 8001a7e:	ee77 5a07 	vadd.f32	s11, s14, s14
 8001a82:	ee36 6a07 	vadd.f32	s12, s12, s14
 8001a86:	eef1 7a67 	vneg.f32	s15, s15
 8001a8a:	ee36 6a26 	vadd.f32	s12, s12, s13
 8001a8e:	ee77 7ae5 	vsub.f32	s15, s15, s11
 8001a92:	ed80 6a04 	vstr	s12, [r0, #16]
 8001a96:	ed9f 6a0b 	vldr	s12, [pc, #44]	; 8001ac4 <pid_init+0x5c>
 8001a9a:	ee26 6a86 	vmul.f32	s12, s13, s12
 8001a9e:	2200      	movs	r2, #0
 8001aa0:	ee77 7ac6 	vsub.f32	s15, s15, s12
 8001aa4:	ee37 7a06 	vadd.f32	s14, s14, s12
 8001aa8:	eef1 6a66 	vneg.f32	s13, s13
 8001aac:	6002      	str	r2, [r0, #0]
 8001aae:	6042      	str	r2, [r0, #4]
 8001ab0:	6082      	str	r2, [r0, #8]
 8001ab2:	60c2      	str	r2, [r0, #12]
 8001ab4:	edc0 7a05 	vstr	s15, [r0, #20]
 8001ab8:	ed80 7a06 	vstr	s14, [r0, #24]
 8001abc:	edc0 6a07 	vstr	s13, [r0, #28]
 8001ac0:	6202      	str	r2, [r0, #32]
 8001ac2:	4770      	bx	lr
 8001ac4:	40400000 	.word	0x40400000

08001ac8 <pid_process>:
 8001ac8:	edd0 7a08 	vldr	s15, [r0, #32]
 8001acc:	ed90 5a04 	vldr	s10, [r0, #16]
 8001ad0:	ed90 6a00 	vldr	s12, [r0]
 8001ad4:	edd0 6a01 	vldr	s13, [r0, #4]
 8001ad8:	ed80 6a01 	vstr	s12, [r0, #4]
 8001adc:	ee05 1a90 	vmov	s11, r1
 8001ae0:	ee45 7a85 	vmla.f32	s15, s11, s10
 8001ae4:	6001      	str	r1, [r0, #0]
 8001ae6:	edd0 5a05 	vldr	s11, [r0, #20]
 8001aea:	ed90 7a02 	vldr	s14, [r0, #8]
 8001aee:	edc0 6a02 	vstr	s13, [r0, #8]
 8001af2:	ee46 7a25 	vmla.f32	s15, s12, s11
 8001af6:	ed90 6a06 	vldr	s12, [r0, #24]
 8001afa:	ed80 7a03 	vstr	s14, [r0, #12]
 8001afe:	ee46 7a86 	vmla.f32	s15, s13, s12
 8001b02:	edd0 6a07 	vldr	s13, [r0, #28]
 8001b06:	ee47 7a26 	vmla.f32	s15, s14, s13
 8001b0a:	ed90 7a09 	vldr	s14, [r0, #36]	; 0x24
 8001b0e:	edc0 7a08 	vstr	s15, [r0, #32]
 8001b12:	eef4 7ac7 	vcmpe.f32	s15, s14
 8001b16:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001b1a:	bfc8      	it	gt
 8001b1c:	ed80 7a08 	vstrgt	s14, [r0, #32]
 8001b20:	edd0 7a08 	vldr	s15, [r0, #32]
 8001b24:	eeb1 7a47 	vneg.f32	s14, s14
 8001b28:	eef4 7ac7 	vcmpe.f32	s15, s14
 8001b2c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001b30:	bf48      	it	mi
 8001b32:	ed80 7a08 	vstrmi	s14, [r0, #32]
 8001b36:	6a00      	ldr	r0, [r0, #32]
 8001b38:	4770      	bx	lr
	...

08001b3c <TIM2_IRQHandler>:
 8001b3c:	4a21      	ldr	r2, [pc, #132]	; (8001bc4 <TIM2_IRQHandler+0x88>)
 8001b3e:	4922      	ldr	r1, [pc, #136]	; (8001bc8 <TIM2_IRQHandler+0x8c>)
 8001b40:	6813      	ldr	r3, [r2, #0]
 8001b42:	2b01      	cmp	r3, #1
 8001b44:	b510      	push	{r4, lr}
 8001b46:	d011      	beq.n	8001b6c <TIM2_IRQHandler+0x30>
 8001b48:	d306      	bcc.n	8001b58 <TIM2_IRQHandler+0x1c>
 8001b4a:	2b02      	cmp	r3, #2
 8001b4c:	d113      	bne.n	8001b76 <TIM2_IRQHandler+0x3a>
 8001b4e:	f44f 6380 	mov.w	r3, #1024	; 0x400
 8001b52:	850b      	strh	r3, [r1, #40]	; 0x28
 8001b54:	2304      	movs	r3, #4
 8001b56:	e023      	b.n	8001ba0 <TIM2_IRQHandler+0x64>
 8001b58:	f44f 7380 	mov.w	r3, #256	; 0x100
 8001b5c:	850b      	strh	r3, [r1, #40]	; 0x28
 8001b5e:	f44f 6380 	mov.w	r3, #1024	; 0x400
 8001b62:	618b      	str	r3, [r1, #24]
 8001b64:	2301      	movs	r3, #1
 8001b66:	6013      	str	r3, [r2, #0]
 8001b68:	6093      	str	r3, [r2, #8]
 8001b6a:	e023      	b.n	8001bb4 <TIM2_IRQHandler+0x78>
 8001b6c:	f44f 7380 	mov.w	r3, #256	; 0x100
 8001b70:	618b      	str	r3, [r1, #24]
 8001b72:	2302      	movs	r3, #2
 8001b74:	e014      	b.n	8001ba0 <TIM2_IRQHandler+0x64>
 8001b76:	f013 0f01 	tst.w	r3, #1
 8001b7a:	4814      	ldr	r0, [pc, #80]	; (8001bcc <TIM2_IRQHandler+0x90>)
 8001b7c:	f103 0401 	add.w	r4, r3, #1
 8001b80:	d010      	beq.n	8001ba4 <TIM2_IRQHandler+0x68>
 8001b82:	3b04      	subs	r3, #4
 8001b84:	f023 0301 	bic.w	r3, r3, #1
 8001b88:	4413      	add	r3, r2
 8001b8a:	6c00      	ldr	r0, [r0, #64]	; 0x40
 8001b8c:	8298      	strh	r0, [r3, #20]
 8001b8e:	f5b4 7f82 	cmp.w	r4, #260	; 0x104
 8001b92:	f44f 7380 	mov.w	r3, #256	; 0x100
 8001b96:	850b      	strh	r3, [r1, #40]	; 0x28
 8001b98:	d201      	bcs.n	8001b9e <TIM2_IRQHandler+0x62>
 8001b9a:	6014      	str	r4, [r2, #0]
 8001b9c:	e00a      	b.n	8001bb4 <TIM2_IRQHandler+0x78>
 8001b9e:	2300      	movs	r3, #0
 8001ba0:	6013      	str	r3, [r2, #0]
 8001ba2:	e007      	b.n	8001bb4 <TIM2_IRQHandler+0x78>
 8001ba4:	f44f 7380 	mov.w	r3, #256	; 0x100
 8001ba8:	618b      	str	r3, [r1, #24]
 8001baa:	6883      	ldr	r3, [r0, #8]
 8001bac:	6014      	str	r4, [r2, #0]
 8001bae:	f043 0304 	orr.w	r3, r3, #4
 8001bb2:	6083      	str	r3, [r0, #8]
 8001bb4:	f04f 4080 	mov.w	r0, #1073741824	; 0x40000000
 8001bb8:	2101      	movs	r1, #1
 8001bba:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8001bbe:	f000 bd1e 	b.w	80025fe <TIM_ClearITPendingBit>
 8001bc2:	bf00      	nop
 8001bc4:	20000eb0 	.word	0x20000eb0
 8001bc8:	48000400 	.word	0x48000400
 8001bcc:	50000500 	.word	0x50000500

08001bd0 <rgb_i2c_delay>:
 8001bd0:	bf00      	nop
 8001bd2:	bf00      	nop
 8001bd4:	bf00      	nop
 8001bd6:	bf00      	nop
 8001bd8:	4770      	bx	lr
	...

08001bdc <RGBSetLowSDA>:
 8001bdc:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 8001bde:	4f15      	ldr	r7, [pc, #84]	; (8001c34 <RGBSetLowSDA+0x58>)
 8001be0:	2401      	movs	r4, #1
 8001be2:	783b      	ldrb	r3, [r7, #0]
 8001be4:	9300      	str	r3, [sp, #0]
 8001be6:	2603      	movs	r6, #3
 8001be8:	2500      	movs	r5, #0
 8001bea:	4669      	mov	r1, sp
 8001bec:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8001bf0:	f88d 5007 	strb.w	r5, [sp, #7]
 8001bf4:	f88d 4004 	strb.w	r4, [sp, #4]
 8001bf8:	f88d 6005 	strb.w	r6, [sp, #5]
 8001bfc:	f88d 4006 	strb.w	r4, [sp, #6]
 8001c00:	f001 fa7c 	bl	80030fc <GPIO_Init>
 8001c04:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8001c08:	783a      	ldrb	r2, [r7, #0]
 8001c0a:	851a      	strh	r2, [r3, #40]	; 0x28
 8001c0c:	f88d 5007 	strb.w	r5, [sp, #7]
 8001c10:	4d09      	ldr	r5, [pc, #36]	; (8001c38 <RGBSetLowSDA+0x5c>)
 8001c12:	9400      	str	r4, [sp, #0]
 8001c14:	4628      	mov	r0, r5
 8001c16:	4669      	mov	r1, sp
 8001c18:	f88d 4004 	strb.w	r4, [sp, #4]
 8001c1c:	f88d 6005 	strb.w	r6, [sp, #5]
 8001c20:	f88d 4006 	strb.w	r4, [sp, #6]
 8001c24:	f001 fa6a 	bl	80030fc <GPIO_Init>
 8001c28:	852c      	strh	r4, [r5, #40]	; 0x28
 8001c2a:	f7ff ffd1 	bl	8001bd0 <rgb_i2c_delay>
 8001c2e:	b003      	add	sp, #12
 8001c30:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8001c32:	bf00      	nop
 8001c34:	2000111e 	.word	0x2000111e
 8001c38:	48000400 	.word	0x48000400

08001c3c <RGBSetHighSDA>:
 8001c3c:	b573      	push	{r0, r1, r4, r5, r6, lr}
 8001c3e:	4d13      	ldr	r5, [pc, #76]	; (8001c8c <RGBSetHighSDA+0x50>)
 8001c40:	2400      	movs	r4, #0
 8001c42:	782b      	ldrb	r3, [r5, #0]
 8001c44:	9300      	str	r3, [sp, #0]
 8001c46:	2603      	movs	r6, #3
 8001c48:	4669      	mov	r1, sp
 8001c4a:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8001c4e:	f88d 4004 	strb.w	r4, [sp, #4]
 8001c52:	f88d 4007 	strb.w	r4, [sp, #7]
 8001c56:	f88d 6005 	strb.w	r6, [sp, #5]
 8001c5a:	f001 fa4f 	bl	80030fc <GPIO_Init>
 8001c5e:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8001c62:	782a      	ldrb	r2, [r5, #0]
 8001c64:	619a      	str	r2, [r3, #24]
 8001c66:	f88d 4004 	strb.w	r4, [sp, #4]
 8001c6a:	f88d 4007 	strb.w	r4, [sp, #7]
 8001c6e:	4c08      	ldr	r4, [pc, #32]	; (8001c90 <RGBSetHighSDA+0x54>)
 8001c70:	f88d 6005 	strb.w	r6, [sp, #5]
 8001c74:	2501      	movs	r5, #1
 8001c76:	4620      	mov	r0, r4
 8001c78:	4669      	mov	r1, sp
 8001c7a:	9500      	str	r5, [sp, #0]
 8001c7c:	f001 fa3e 	bl	80030fc <GPIO_Init>
 8001c80:	61a5      	str	r5, [r4, #24]
 8001c82:	f7ff ffa5 	bl	8001bd0 <rgb_i2c_delay>
 8001c86:	b002      	add	sp, #8
 8001c88:	bd70      	pop	{r4, r5, r6, pc}
 8001c8a:	bf00      	nop
 8001c8c:	2000111e 	.word	0x2000111e
 8001c90:	48000400 	.word	0x48000400

08001c94 <RGBSetLowSCL>:
 8001c94:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8001c98:	f44f 7280 	mov.w	r2, #256	; 0x100
 8001c9c:	851a      	strh	r2, [r3, #40]	; 0x28
 8001c9e:	f7ff bf97 	b.w	8001bd0 <rgb_i2c_delay>

08001ca2 <RGBSetHighSCL>:
 8001ca2:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8001ca6:	f44f 7280 	mov.w	r2, #256	; 0x100
 8001caa:	619a      	str	r2, [r3, #24]
 8001cac:	f7ff bf90 	b.w	8001bd0 <rgb_i2c_delay>

08001cb0 <rgb_i2c_init>:
 8001cb0:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 8001cb2:	4f1f      	ldr	r7, [pc, #124]	; (8001d30 <rgb_i2c_init+0x80>)
 8001cb4:	2400      	movs	r4, #0
 8001cb6:	2501      	movs	r5, #1
 8001cb8:	2603      	movs	r6, #3
 8001cba:	f44f 7380 	mov.w	r3, #256	; 0x100
 8001cbe:	4669      	mov	r1, sp
 8001cc0:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8001cc4:	9300      	str	r3, [sp, #0]
 8001cc6:	f88d 4006 	strb.w	r4, [sp, #6]
 8001cca:	f88d 4007 	strb.w	r4, [sp, #7]
 8001cce:	f88d 5004 	strb.w	r5, [sp, #4]
 8001cd2:	f88d 6005 	strb.w	r6, [sp, #5]
 8001cd6:	f001 fa11 	bl	80030fc <GPIO_Init>
 8001cda:	783b      	ldrb	r3, [r7, #0]
 8001cdc:	9300      	str	r3, [sp, #0]
 8001cde:	4669      	mov	r1, sp
 8001ce0:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8001ce4:	f88d 4004 	strb.w	r4, [sp, #4]
 8001ce8:	f88d 4007 	strb.w	r4, [sp, #7]
 8001cec:	f88d 6005 	strb.w	r6, [sp, #5]
 8001cf0:	f001 fa04 	bl	80030fc <GPIO_Init>
 8001cf4:	7839      	ldrb	r1, [r7, #0]
 8001cf6:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8001cfa:	f001 fa41 	bl	8003180 <GPIO_SetBits>
 8001cfe:	f88d 4004 	strb.w	r4, [sp, #4]
 8001d02:	f88d 4007 	strb.w	r4, [sp, #7]
 8001d06:	4c0b      	ldr	r4, [pc, #44]	; (8001d34 <rgb_i2c_init+0x84>)
 8001d08:	9500      	str	r5, [sp, #0]
 8001d0a:	4620      	mov	r0, r4
 8001d0c:	4669      	mov	r1, sp
 8001d0e:	f88d 6005 	strb.w	r6, [sp, #5]
 8001d12:	f001 f9f3 	bl	80030fc <GPIO_Init>
 8001d16:	4620      	mov	r0, r4
 8001d18:	4629      	mov	r1, r5
 8001d1a:	f001 fa31 	bl	8003180 <GPIO_SetBits>
 8001d1e:	f7ff ffc0 	bl	8001ca2 <RGBSetHighSCL>
 8001d22:	f7ff ff5b 	bl	8001bdc <RGBSetLowSDA>
 8001d26:	f7ff ff89 	bl	8001c3c <RGBSetHighSDA>
 8001d2a:	b003      	add	sp, #12
 8001d2c:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8001d2e:	bf00      	nop
 8001d30:	2000111e 	.word	0x2000111e
 8001d34:	48000400 	.word	0x48000400

08001d38 <rgb_i2cStart>:
 8001d38:	b508      	push	{r3, lr}
 8001d3a:	f7ff ffb2 	bl	8001ca2 <RGBSetHighSCL>
 8001d3e:	f7ff ff7d 	bl	8001c3c <RGBSetHighSDA>
 8001d42:	f7ff ffae 	bl	8001ca2 <RGBSetHighSCL>
 8001d46:	f7ff ff49 	bl	8001bdc <RGBSetLowSDA>
 8001d4a:	f7ff ffa3 	bl	8001c94 <RGBSetLowSCL>
 8001d4e:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001d52:	f7ff bf73 	b.w	8001c3c <RGBSetHighSDA>

08001d56 <rgb_i2cStop>:
 8001d56:	b508      	push	{r3, lr}
 8001d58:	f7ff ff9c 	bl	8001c94 <RGBSetLowSCL>
 8001d5c:	f7ff ff3e 	bl	8001bdc <RGBSetLowSDA>
 8001d60:	f7ff ff9f 	bl	8001ca2 <RGBSetHighSCL>
 8001d64:	f7ff ff3a 	bl	8001bdc <RGBSetLowSDA>
 8001d68:	f7ff ff9b 	bl	8001ca2 <RGBSetHighSCL>
 8001d6c:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001d70:	f7ff bf64 	b.w	8001c3c <RGBSetHighSDA>

08001d74 <rgb_i2cWrite>:
 8001d74:	b538      	push	{r3, r4, r5, lr}
 8001d76:	4605      	mov	r5, r0
 8001d78:	2408      	movs	r4, #8
 8001d7a:	f7ff ff8b 	bl	8001c94 <RGBSetLowSCL>
 8001d7e:	062b      	lsls	r3, r5, #24
 8001d80:	d502      	bpl.n	8001d88 <rgb_i2cWrite+0x14>
 8001d82:	f7ff ff5b 	bl	8001c3c <RGBSetHighSDA>
 8001d86:	e001      	b.n	8001d8c <rgb_i2cWrite+0x18>
 8001d88:	f7ff ff28 	bl	8001bdc <RGBSetLowSDA>
 8001d8c:	3c01      	subs	r4, #1
 8001d8e:	f7ff ff88 	bl	8001ca2 <RGBSetHighSCL>
 8001d92:	006d      	lsls	r5, r5, #1
 8001d94:	f014 04ff 	ands.w	r4, r4, #255	; 0xff
 8001d98:	b2ed      	uxtb	r5, r5
 8001d9a:	d1ee      	bne.n	8001d7a <rgb_i2cWrite+0x6>
 8001d9c:	f7ff ff7a 	bl	8001c94 <RGBSetLowSCL>
 8001da0:	f7ff ff4c 	bl	8001c3c <RGBSetHighSDA>
 8001da4:	f7ff ff7d 	bl	8001ca2 <RGBSetHighSCL>
 8001da8:	f7ff ff74 	bl	8001c94 <RGBSetLowSCL>
 8001dac:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8001db0:	f7ff bf0e 	b.w	8001bd0 <rgb_i2c_delay>

08001db4 <rgb_i2cRead>:
 8001db4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8001db8:	1e4e      	subs	r6, r1, #1
 8001dba:	4680      	mov	r8, r0
 8001dbc:	460c      	mov	r4, r1
 8001dbe:	f101 0708 	add.w	r7, r1, #8
 8001dc2:	4633      	mov	r3, r6
 8001dc4:	2200      	movs	r2, #0
 8001dc6:	f803 2f01 	strb.w	r2, [r3, #1]!
 8001dca:	42bb      	cmp	r3, r7
 8001dcc:	d1fa      	bne.n	8001dc4 <rgb_i2cRead+0x10>
 8001dce:	f7ff ff61 	bl	8001c94 <RGBSetLowSCL>
 8001dd2:	f7ff ff33 	bl	8001c3c <RGBSetHighSDA>
 8001dd6:	2508      	movs	r5, #8
 8001dd8:	4633      	mov	r3, r6
 8001dda:	f813 2f01 	ldrb.w	r2, [r3, #1]!
 8001dde:	0052      	lsls	r2, r2, #1
 8001de0:	42bb      	cmp	r3, r7
 8001de2:	701a      	strb	r2, [r3, #0]
 8001de4:	d1f9      	bne.n	8001dda <rgb_i2cRead+0x26>
 8001de6:	f7ff ff5c 	bl	8001ca2 <RGBSetHighSCL>
 8001dea:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8001dee:	8a1b      	ldrh	r3, [r3, #16]
 8001df0:	b29b      	uxth	r3, r3
 8001df2:	07d9      	lsls	r1, r3, #31
 8001df4:	bf42      	ittt	mi
 8001df6:	7822      	ldrbmi	r2, [r4, #0]
 8001df8:	f042 0201 	orrmi.w	r2, r2, #1
 8001dfc:	7022      	strbmi	r2, [r4, #0]
 8001dfe:	079a      	lsls	r2, r3, #30
 8001e00:	bf42      	ittt	mi
 8001e02:	7862      	ldrbmi	r2, [r4, #1]
 8001e04:	f042 0201 	orrmi.w	r2, r2, #1
 8001e08:	7062      	strbmi	r2, [r4, #1]
 8001e0a:	0758      	lsls	r0, r3, #29
 8001e0c:	bf42      	ittt	mi
 8001e0e:	78a2      	ldrbmi	r2, [r4, #2]
 8001e10:	f042 0201 	orrmi.w	r2, r2, #1
 8001e14:	70a2      	strbmi	r2, [r4, #2]
 8001e16:	0719      	lsls	r1, r3, #28
 8001e18:	bf42      	ittt	mi
 8001e1a:	78e2      	ldrbmi	r2, [r4, #3]
 8001e1c:	f042 0201 	orrmi.w	r2, r2, #1
 8001e20:	70e2      	strbmi	r2, [r4, #3]
 8001e22:	06da      	lsls	r2, r3, #27
 8001e24:	bf42      	ittt	mi
 8001e26:	7922      	ldrbmi	r2, [r4, #4]
 8001e28:	f042 0201 	orrmi.w	r2, r2, #1
 8001e2c:	7122      	strbmi	r2, [r4, #4]
 8001e2e:	0698      	lsls	r0, r3, #26
 8001e30:	bf42      	ittt	mi
 8001e32:	7962      	ldrbmi	r2, [r4, #5]
 8001e34:	f042 0201 	orrmi.w	r2, r2, #1
 8001e38:	7162      	strbmi	r2, [r4, #5]
 8001e3a:	0659      	lsls	r1, r3, #25
 8001e3c:	bf42      	ittt	mi
 8001e3e:	79a2      	ldrbmi	r2, [r4, #6]
 8001e40:	f042 0201 	orrmi.w	r2, r2, #1
 8001e44:	71a2      	strbmi	r2, [r4, #6]
 8001e46:	061a      	lsls	r2, r3, #24
 8001e48:	bf42      	ittt	mi
 8001e4a:	79e3      	ldrbmi	r3, [r4, #7]
 8001e4c:	f043 0301 	orrmi.w	r3, r3, #1
 8001e50:	71e3      	strbmi	r3, [r4, #7]
 8001e52:	4b0c      	ldr	r3, [pc, #48]	; (8001e84 <rgb_i2cRead+0xd0>)
 8001e54:	8a1b      	ldrh	r3, [r3, #16]
 8001e56:	07db      	lsls	r3, r3, #31
 8001e58:	bf42      	ittt	mi
 8001e5a:	7a23      	ldrbmi	r3, [r4, #8]
 8001e5c:	f043 0301 	orrmi.w	r3, r3, #1
 8001e60:	7223      	strbmi	r3, [r4, #8]
 8001e62:	f7ff ff17 	bl	8001c94 <RGBSetLowSCL>
 8001e66:	3d01      	subs	r5, #1
 8001e68:	d1b6      	bne.n	8001dd8 <rgb_i2cRead+0x24>
 8001e6a:	f1b8 0f00 	cmp.w	r8, #0
 8001e6e:	d001      	beq.n	8001e74 <rgb_i2cRead+0xc0>
 8001e70:	f7ff feb4 	bl	8001bdc <RGBSetLowSDA>
 8001e74:	f7ff ff15 	bl	8001ca2 <RGBSetHighSCL>
 8001e78:	f7ff ff0c 	bl	8001c94 <RGBSetLowSCL>
 8001e7c:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8001e80:	f7ff bea6 	b.w	8001bd0 <rgb_i2c_delay>
 8001e84:	48000400 	.word	0x48000400

08001e88 <rgb_i2c_write_reg>:
 8001e88:	b570      	push	{r4, r5, r6, lr}
 8001e8a:	4606      	mov	r6, r0
 8001e8c:	460d      	mov	r5, r1
 8001e8e:	4614      	mov	r4, r2
 8001e90:	f7ff ff52 	bl	8001d38 <rgb_i2cStart>
 8001e94:	4630      	mov	r0, r6
 8001e96:	f7ff ff6d 	bl	8001d74 <rgb_i2cWrite>
 8001e9a:	4628      	mov	r0, r5
 8001e9c:	f7ff ff6a 	bl	8001d74 <rgb_i2cWrite>
 8001ea0:	4620      	mov	r0, r4
 8001ea2:	f7ff ff67 	bl	8001d74 <rgb_i2cWrite>
 8001ea6:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8001eaa:	f7ff bf54 	b.w	8001d56 <rgb_i2cStop>

08001eae <rgb_i2c_read_reg>:
 8001eae:	b570      	push	{r4, r5, r6, lr}
 8001eb0:	4604      	mov	r4, r0
 8001eb2:	460e      	mov	r6, r1
 8001eb4:	4615      	mov	r5, r2
 8001eb6:	f7ff ff3f 	bl	8001d38 <rgb_i2cStart>
 8001eba:	4620      	mov	r0, r4
 8001ebc:	f7ff ff5a 	bl	8001d74 <rgb_i2cWrite>
 8001ec0:	4630      	mov	r0, r6
 8001ec2:	f7ff ff57 	bl	8001d74 <rgb_i2cWrite>
 8001ec6:	f7ff ff37 	bl	8001d38 <rgb_i2cStart>
 8001eca:	f044 0001 	orr.w	r0, r4, #1
 8001ece:	f7ff ff51 	bl	8001d74 <rgb_i2cWrite>
 8001ed2:	4629      	mov	r1, r5
 8001ed4:	2000      	movs	r0, #0
 8001ed6:	f7ff ff6d 	bl	8001db4 <rgb_i2cRead>
 8001eda:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8001ede:	f7ff bf3a 	b.w	8001d56 <rgb_i2cStop>
	...

08001ee4 <rgb_init>:
 8001ee4:	b570      	push	{r4, r5, r6, lr}
 8001ee6:	4b1e      	ldr	r3, [pc, #120]	; (8001f60 <rgb_init+0x7c>)
 8001ee8:	2200      	movs	r2, #0
 8001eea:	3201      	adds	r2, #1
 8001eec:	2400      	movs	r4, #0
 8001eee:	2a09      	cmp	r2, #9
 8001ef0:	801c      	strh	r4, [r3, #0]
 8001ef2:	825c      	strh	r4, [r3, #18]
 8001ef4:	849c      	strh	r4, [r3, #36]	; 0x24
 8001ef6:	f8a3 4048 	strh.w	r4, [r3, #72]	; 0x48
 8001efa:	86dc      	strh	r4, [r3, #54]	; 0x36
 8001efc:	f103 0302 	add.w	r3, r3, #2
 8001f00:	d1f3      	bne.n	8001eea <rgb_init+0x6>
 8001f02:	4d18      	ldr	r5, [pc, #96]	; (8001f64 <rgb_init+0x80>)
 8001f04:	f64f 76ff 	movw	r6, #65535	; 0xffff
 8001f08:	802e      	strh	r6, [r5, #0]
 8001f0a:	f7ff fed1 	bl	8001cb0 <rgb_i2c_init>
 8001f0e:	2072      	movs	r0, #114	; 0x72
 8001f10:	2181      	movs	r1, #129	; 0x81
 8001f12:	22ff      	movs	r2, #255	; 0xff
 8001f14:	f7ff ffb8 	bl	8001e88 <rgb_i2c_write_reg>
 8001f18:	2072      	movs	r0, #114	; 0x72
 8001f1a:	2183      	movs	r1, #131	; 0x83
 8001f1c:	22ff      	movs	r2, #255	; 0xff
 8001f1e:	f7ff ffb3 	bl	8001e88 <rgb_i2c_write_reg>
 8001f22:	2072      	movs	r0, #114	; 0x72
 8001f24:	218d      	movs	r1, #141	; 0x8d
 8001f26:	4622      	mov	r2, r4
 8001f28:	f7ff ffae 	bl	8001e88 <rgb_i2c_write_reg>
 8001f2c:	2072      	movs	r0, #114	; 0x72
 8001f2e:	2180      	movs	r1, #128	; 0x80
 8001f30:	2203      	movs	r2, #3
 8001f32:	f7ff ffa9 	bl	8001e88 <rgb_i2c_write_reg>
 8001f36:	2072      	movs	r0, #114	; 0x72
 8001f38:	218f      	movs	r1, #143	; 0x8f
 8001f3a:	2223      	movs	r2, #35	; 0x23
 8001f3c:	f7ff ffa4 	bl	8001e88 <rgb_i2c_write_reg>
 8001f40:	f7ff fe7c 	bl	8001c3c <RGBSetHighSDA>
 8001f44:	2072      	movs	r0, #114	; 0x72
 8001f46:	2180      	movs	r1, #128	; 0x80
 8001f48:	2207      	movs	r2, #7
 8001f4a:	802c      	strh	r4, [r5, #0]
 8001f4c:	f7ff ff9c 	bl	8001e88 <rgb_i2c_write_reg>
 8001f50:	2072      	movs	r0, #114	; 0x72
 8001f52:	218e      	movs	r1, #142	; 0x8e
 8001f54:	2208      	movs	r2, #8
 8001f56:	f7ff ff97 	bl	8001e88 <rgb_i2c_write_reg>
 8001f5a:	802e      	strh	r6, [r5, #0]
 8001f5c:	bd70      	pop	{r4, r5, r6, pc}
 8001f5e:	bf00      	nop
 8001f60:	200010c4 	.word	0x200010c4
 8001f64:	2000111e 	.word	0x2000111e

08001f68 <rgb_get>:
 8001f68:	4800      	ldr	r0, [pc, #0]	; (8001f6c <rgb_get+0x4>)
 8001f6a:	4770      	bx	lr
 8001f6c:	200010c4 	.word	0x200010c4

08001f70 <rgb_read>:
 8001f70:	b538      	push	{r3, r4, r5, lr}
 8001f72:	f7ff fee1 	bl	8001d38 <rgb_i2cStart>
 8001f76:	2072      	movs	r0, #114	; 0x72
 8001f78:	f7ff fefc 	bl	8001d74 <rgb_i2cWrite>
 8001f7c:	20b4      	movs	r0, #180	; 0xb4
 8001f7e:	f7ff fef9 	bl	8001d74 <rgb_i2cWrite>
 8001f82:	4d48      	ldr	r5, [pc, #288]	; (80020a4 <rgb_read+0x134>)
 8001f84:	f7ff fed8 	bl	8001d38 <rgb_i2cStart>
 8001f88:	2073      	movs	r0, #115	; 0x73
 8001f8a:	f7ff fef3 	bl	8001d74 <rgb_i2cWrite>
 8001f8e:	2001      	movs	r0, #1
 8001f90:	4945      	ldr	r1, [pc, #276]	; (80020a8 <rgb_read+0x138>)
 8001f92:	f7ff ff0f 	bl	8001db4 <rgb_i2cRead>
 8001f96:	462a      	mov	r2, r5
 8001f98:	2300      	movs	r3, #0
 8001f9a:	4c43      	ldr	r4, [pc, #268]	; (80020a8 <rgb_read+0x138>)
 8001f9c:	5d19      	ldrb	r1, [r3, r4]
 8001f9e:	f822 1f02 	strh.w	r1, [r2, #2]!
 8001fa2:	3301      	adds	r3, #1
 8001fa4:	2b09      	cmp	r3, #9
 8001fa6:	d1f8      	bne.n	8001f9a <rgb_read+0x2a>
 8001fa8:	2001      	movs	r0, #1
 8001faa:	4621      	mov	r1, r4
 8001fac:	f7ff ff02 	bl	8001db4 <rgb_i2cRead>
 8001fb0:	2300      	movs	r3, #0
 8001fb2:	5ce1      	ldrb	r1, [r4, r3]
 8001fb4:	f835 2f02 	ldrh.w	r2, [r5, #2]!
 8001fb8:	3301      	adds	r3, #1
 8001fba:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
 8001fbe:	2b09      	cmp	r3, #9
 8001fc0:	802a      	strh	r2, [r5, #0]
 8001fc2:	d1f6      	bne.n	8001fb2 <rgb_read+0x42>
 8001fc4:	2001      	movs	r0, #1
 8001fc6:	4938      	ldr	r1, [pc, #224]	; (80020a8 <rgb_read+0x138>)
 8001fc8:	f7ff fef4 	bl	8001db4 <rgb_i2cRead>
 8001fcc:	2300      	movs	r3, #0
 8001fce:	4d37      	ldr	r5, [pc, #220]	; (80020ac <rgb_read+0x13c>)
 8001fd0:	5ce2      	ldrb	r2, [r4, r3]
 8001fd2:	f825 2013 	strh.w	r2, [r5, r3, lsl #1]
 8001fd6:	3301      	adds	r3, #1
 8001fd8:	2b09      	cmp	r3, #9
 8001fda:	d1f8      	bne.n	8001fce <rgb_read+0x5e>
 8001fdc:	2001      	movs	r0, #1
 8001fde:	4932      	ldr	r1, [pc, #200]	; (80020a8 <rgb_read+0x138>)
 8001fe0:	f7ff fee8 	bl	8001db4 <rgb_i2cRead>
 8001fe4:	2300      	movs	r3, #0
 8001fe6:	f835 2013 	ldrh.w	r2, [r5, r3, lsl #1]
 8001fea:	5ce1      	ldrb	r1, [r4, r3]
 8001fec:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
 8001ff0:	f825 2013 	strh.w	r2, [r5, r3, lsl #1]
 8001ff4:	3301      	adds	r3, #1
 8001ff6:	2b09      	cmp	r3, #9
 8001ff8:	d1f5      	bne.n	8001fe6 <rgb_read+0x76>
 8001ffa:	4d2d      	ldr	r5, [pc, #180]	; (80020b0 <rgb_read+0x140>)
 8001ffc:	492a      	ldr	r1, [pc, #168]	; (80020a8 <rgb_read+0x138>)
 8001ffe:	2001      	movs	r0, #1
 8002000:	f7ff fed8 	bl	8001db4 <rgb_i2cRead>
 8002004:	462a      	mov	r2, r5
 8002006:	2300      	movs	r3, #0
 8002008:	5ce1      	ldrb	r1, [r4, r3]
 800200a:	f822 1f02 	strh.w	r1, [r2, #2]!
 800200e:	3301      	adds	r3, #1
 8002010:	2b09      	cmp	r3, #9
 8002012:	d1f9      	bne.n	8002008 <rgb_read+0x98>
 8002014:	2001      	movs	r0, #1
 8002016:	4924      	ldr	r1, [pc, #144]	; (80020a8 <rgb_read+0x138>)
 8002018:	f7ff fecc 	bl	8001db4 <rgb_i2cRead>
 800201c:	2300      	movs	r3, #0
 800201e:	5ce1      	ldrb	r1, [r4, r3]
 8002020:	f835 2f02 	ldrh.w	r2, [r5, #2]!
 8002024:	3301      	adds	r3, #1
 8002026:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
 800202a:	2b09      	cmp	r3, #9
 800202c:	802a      	strh	r2, [r5, #0]
 800202e:	d1f6      	bne.n	800201e <rgb_read+0xae>
 8002030:	4d20      	ldr	r5, [pc, #128]	; (80020b4 <rgb_read+0x144>)
 8002032:	491d      	ldr	r1, [pc, #116]	; (80020a8 <rgb_read+0x138>)
 8002034:	2001      	movs	r0, #1
 8002036:	f7ff febd 	bl	8001db4 <rgb_i2cRead>
 800203a:	462a      	mov	r2, r5
 800203c:	2300      	movs	r3, #0
 800203e:	5ce1      	ldrb	r1, [r4, r3]
 8002040:	f822 1f02 	strh.w	r1, [r2, #2]!
 8002044:	3301      	adds	r3, #1
 8002046:	2b09      	cmp	r3, #9
 8002048:	d1f9      	bne.n	800203e <rgb_read+0xce>
 800204a:	2001      	movs	r0, #1
 800204c:	4916      	ldr	r1, [pc, #88]	; (80020a8 <rgb_read+0x138>)
 800204e:	f7ff feb1 	bl	8001db4 <rgb_i2cRead>
 8002052:	2300      	movs	r3, #0
 8002054:	5ce1      	ldrb	r1, [r4, r3]
 8002056:	f835 2f02 	ldrh.w	r2, [r5, #2]!
 800205a:	3301      	adds	r3, #1
 800205c:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
 8002060:	2b09      	cmp	r3, #9
 8002062:	802a      	strh	r2, [r5, #0]
 8002064:	d1f6      	bne.n	8002054 <rgb_read+0xe4>
 8002066:	4d14      	ldr	r5, [pc, #80]	; (80020b8 <rgb_read+0x148>)
 8002068:	490f      	ldr	r1, [pc, #60]	; (80020a8 <rgb_read+0x138>)
 800206a:	2001      	movs	r0, #1
 800206c:	f7ff fea2 	bl	8001db4 <rgb_i2cRead>
 8002070:	462a      	mov	r2, r5
 8002072:	2300      	movs	r3, #0
 8002074:	5ce1      	ldrb	r1, [r4, r3]
 8002076:	f822 1f02 	strh.w	r1, [r2, #2]!
 800207a:	3301      	adds	r3, #1
 800207c:	2b09      	cmp	r3, #9
 800207e:	d1f9      	bne.n	8002074 <rgb_read+0x104>
 8002080:	2000      	movs	r0, #0
 8002082:	4909      	ldr	r1, [pc, #36]	; (80020a8 <rgb_read+0x138>)
 8002084:	f7ff fe96 	bl	8001db4 <rgb_i2cRead>
 8002088:	2300      	movs	r3, #0
 800208a:	5ce1      	ldrb	r1, [r4, r3]
 800208c:	f835 2f02 	ldrh.w	r2, [r5, #2]!
 8002090:	3301      	adds	r3, #1
 8002092:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
 8002096:	2b09      	cmp	r3, #9
 8002098:	802a      	strh	r2, [r5, #0]
 800209a:	d1f6      	bne.n	800208a <rgb_read+0x11a>
 800209c:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 80020a0:	f7ff be59 	b.w	8001d56 <rgb_i2cStop>
 80020a4:	200010f8 	.word	0x200010f8
 80020a8:	20001120 	.word	0x20001120
 80020ac:	200010c4 	.word	0x200010c4
 80020b0:	200010d4 	.word	0x200010d4
 80020b4:	200010e6 	.word	0x200010e6
 80020b8:	2000110a 	.word	0x2000110a

080020bc <main>:
 80020bc:	b508      	push	{r3, lr}
 80020be:	f000 ff79 	bl	8002fb4 <lib_low_level_init>
 80020c2:	f7ff fc3d 	bl	8001940 <lib_os_init>
 80020c6:	4905      	ldr	r1, [pc, #20]	; (80020dc <main+0x20>)
 80020c8:	4805      	ldr	r0, [pc, #20]	; (80020e0 <main+0x24>)
 80020ca:	f44f 7200 	mov.w	r2, #512	; 0x200
 80020ce:	2306      	movs	r3, #6
 80020d0:	f7ff fa72 	bl	80015b8 <create_thread>
 80020d4:	f7ff fa6a 	bl	80015ac <kernel_start>
 80020d8:	2000      	movs	r0, #0
 80020da:	bd08      	pop	{r3, pc}
 80020dc:	2000112c 	.word	0x2000112c
 80020e0:	08000f55 	.word	0x08000f55

080020e4 <RCC_GetClocksFreq>:
 80020e4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80020e8:	4f9b      	ldr	r7, [pc, #620]	; (8002358 <RCC_GetClocksFreq+0x274>)
 80020ea:	687b      	ldr	r3, [r7, #4]
 80020ec:	f003 030c 	and.w	r3, r3, #12
 80020f0:	2b04      	cmp	r3, #4
 80020f2:	d005      	beq.n	8002100 <RCC_GetClocksFreq+0x1c>
 80020f4:	2b08      	cmp	r3, #8
 80020f6:	d006      	beq.n	8002106 <RCC_GetClocksFreq+0x22>
 80020f8:	4a98      	ldr	r2, [pc, #608]	; (800235c <RCC_GetClocksFreq+0x278>)
 80020fa:	6002      	str	r2, [r0, #0]
 80020fc:	b9b3      	cbnz	r3, 800212c <RCC_GetClocksFreq+0x48>
 80020fe:	e016      	b.n	800212e <RCC_GetClocksFreq+0x4a>
 8002100:	4b96      	ldr	r3, [pc, #600]	; (800235c <RCC_GetClocksFreq+0x278>)
 8002102:	6003      	str	r3, [r0, #0]
 8002104:	e012      	b.n	800212c <RCC_GetClocksFreq+0x48>
 8002106:	687b      	ldr	r3, [r7, #4]
 8002108:	6879      	ldr	r1, [r7, #4]
 800210a:	f3c3 4383 	ubfx	r3, r3, #18, #4
 800210e:	1c9a      	adds	r2, r3, #2
 8002110:	03cb      	lsls	r3, r1, #15
 8002112:	bf49      	itett	mi
 8002114:	6afb      	ldrmi	r3, [r7, #44]	; 0x2c
 8002116:	4b92      	ldrpl	r3, [pc, #584]	; (8002360 <RCC_GetClocksFreq+0x27c>)
 8002118:	4990      	ldrmi	r1, [pc, #576]	; (800235c <RCC_GetClocksFreq+0x278>)
 800211a:	f003 030f 	andmi.w	r3, r3, #15
 800211e:	bf44      	itt	mi
 8002120:	3301      	addmi	r3, #1
 8002122:	fbb1 f3f3 	udivmi	r3, r1, r3
 8002126:	4353      	muls	r3, r2
 8002128:	6003      	str	r3, [r0, #0]
 800212a:	e000      	b.n	800212e <RCC_GetClocksFreq+0x4a>
 800212c:	2300      	movs	r3, #0
 800212e:	687a      	ldr	r2, [r7, #4]
 8002130:	4e8c      	ldr	r6, [pc, #560]	; (8002364 <RCC_GetClocksFreq+0x280>)
 8002132:	f8df c234 	ldr.w	ip, [pc, #564]	; 8002368 <RCC_GetClocksFreq+0x284>
 8002136:	f3c2 1203 	ubfx	r2, r2, #4, #4
 800213a:	5cb4      	ldrb	r4, [r6, r2]
 800213c:	6802      	ldr	r2, [r0, #0]
 800213e:	b2e4      	uxtb	r4, r4
 8002140:	fa22 f104 	lsr.w	r1, r2, r4
 8002144:	6041      	str	r1, [r0, #4]
 8002146:	687d      	ldr	r5, [r7, #4]
 8002148:	f3c5 2502 	ubfx	r5, r5, #8, #3
 800214c:	5d75      	ldrb	r5, [r6, r5]
 800214e:	fa21 fe05 	lsr.w	lr, r1, r5
 8002152:	f8c0 e008 	str.w	lr, [r0, #8]
 8002156:	687d      	ldr	r5, [r7, #4]
 8002158:	f3c5 25c2 	ubfx	r5, r5, #11, #3
 800215c:	5d75      	ldrb	r5, [r6, r5]
 800215e:	b2ed      	uxtb	r5, r5
 8002160:	40e9      	lsrs	r1, r5
 8002162:	60c1      	str	r1, [r0, #12]
 8002164:	6afe      	ldr	r6, [r7, #44]	; 0x2c
 8002166:	f3c6 1804 	ubfx	r8, r6, #4, #5
 800216a:	f008 060f 	and.w	r6, r8, #15
 800216e:	f018 0f10 	tst.w	r8, #16
 8002172:	f83c 6016 	ldrh.w	r6, [ip, r6, lsl #1]
 8002176:	46e0      	mov	r8, ip
 8002178:	b2b6      	uxth	r6, r6
 800217a:	d004      	beq.n	8002186 <RCC_GetClocksFreq+0xa2>
 800217c:	b11e      	cbz	r6, 8002186 <RCC_GetClocksFreq+0xa2>
 800217e:	fbb3 f6f6 	udiv	r6, r3, r6
 8002182:	6106      	str	r6, [r0, #16]
 8002184:	e000      	b.n	8002188 <RCC_GetClocksFreq+0xa4>
 8002186:	6102      	str	r2, [r0, #16]
 8002188:	6afe      	ldr	r6, [r7, #44]	; 0x2c
 800218a:	f3c6 2c44 	ubfx	ip, r6, #9, #5
 800218e:	f00c 060f 	and.w	r6, ip, #15
 8002192:	f01c 0f10 	tst.w	ip, #16
 8002196:	f838 6016 	ldrh.w	r6, [r8, r6, lsl #1]
 800219a:	b2b6      	uxth	r6, r6
 800219c:	d004      	beq.n	80021a8 <RCC_GetClocksFreq+0xc4>
 800219e:	b11e      	cbz	r6, 80021a8 <RCC_GetClocksFreq+0xc4>
 80021a0:	fbb3 f6f6 	udiv	r6, r3, r6
 80021a4:	6146      	str	r6, [r0, #20]
 80021a6:	e000      	b.n	80021aa <RCC_GetClocksFreq+0xc6>
 80021a8:	6142      	str	r2, [r0, #20]
 80021aa:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 80021ac:	06f6      	lsls	r6, r6, #27
 80021ae:	bf5a      	itte	pl
 80021b0:	4e6a      	ldrpl	r6, [pc, #424]	; (800235c <RCC_GetClocksFreq+0x278>)
 80021b2:	6186      	strpl	r6, [r0, #24]
 80021b4:	6182      	strmi	r2, [r0, #24]
 80021b6:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 80021b8:	06b6      	lsls	r6, r6, #26
 80021ba:	bf5a      	itte	pl
 80021bc:	4e67      	ldrpl	r6, [pc, #412]	; (800235c <RCC_GetClocksFreq+0x278>)
 80021be:	61c6      	strpl	r6, [r0, #28]
 80021c0:	61c2      	strmi	r2, [r0, #28]
 80021c2:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 80021c4:	0676      	lsls	r6, r6, #25
 80021c6:	bf5a      	itte	pl
 80021c8:	4e64      	ldrpl	r6, [pc, #400]	; (800235c <RCC_GetClocksFreq+0x278>)
 80021ca:	6206      	strpl	r6, [r0, #32]
 80021cc:	6202      	strmi	r2, [r0, #32]
 80021ce:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 80021d0:	05f6      	lsls	r6, r6, #23
 80021d2:	d506      	bpl.n	80021e2 <RCC_GetClocksFreq+0xfe>
 80021d4:	429a      	cmp	r2, r3
 80021d6:	d104      	bne.n	80021e2 <RCC_GetClocksFreq+0xfe>
 80021d8:	42a5      	cmp	r5, r4
 80021da:	d102      	bne.n	80021e2 <RCC_GetClocksFreq+0xfe>
 80021dc:	0056      	lsls	r6, r2, #1
 80021de:	6246      	str	r6, [r0, #36]	; 0x24
 80021e0:	e000      	b.n	80021e4 <RCC_GetClocksFreq+0x100>
 80021e2:	6241      	str	r1, [r0, #36]	; 0x24
 80021e4:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 80021e6:	04f6      	lsls	r6, r6, #19
 80021e8:	d506      	bpl.n	80021f8 <RCC_GetClocksFreq+0x114>
 80021ea:	429a      	cmp	r2, r3
 80021ec:	d104      	bne.n	80021f8 <RCC_GetClocksFreq+0x114>
 80021ee:	42a5      	cmp	r5, r4
 80021f0:	d102      	bne.n	80021f8 <RCC_GetClocksFreq+0x114>
 80021f2:	0056      	lsls	r6, r2, #1
 80021f4:	6286      	str	r6, [r0, #40]	; 0x28
 80021f6:	e000      	b.n	80021fa <RCC_GetClocksFreq+0x116>
 80021f8:	6281      	str	r1, [r0, #40]	; 0x28
 80021fa:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 80021fc:	05b6      	lsls	r6, r6, #22
 80021fe:	d506      	bpl.n	800220e <RCC_GetClocksFreq+0x12a>
 8002200:	429a      	cmp	r2, r3
 8002202:	d104      	bne.n	800220e <RCC_GetClocksFreq+0x12a>
 8002204:	42a5      	cmp	r5, r4
 8002206:	d102      	bne.n	800220e <RCC_GetClocksFreq+0x12a>
 8002208:	0056      	lsls	r6, r2, #1
 800220a:	62c6      	str	r6, [r0, #44]	; 0x2c
 800220c:	e000      	b.n	8002210 <RCC_GetClocksFreq+0x12c>
 800220e:	62c1      	str	r1, [r0, #44]	; 0x2c
 8002210:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8002212:	0576      	lsls	r6, r6, #21
 8002214:	d506      	bpl.n	8002224 <RCC_GetClocksFreq+0x140>
 8002216:	429a      	cmp	r2, r3
 8002218:	d104      	bne.n	8002224 <RCC_GetClocksFreq+0x140>
 800221a:	42a5      	cmp	r5, r4
 800221c:	d102      	bne.n	8002224 <RCC_GetClocksFreq+0x140>
 800221e:	0056      	lsls	r6, r2, #1
 8002220:	64c6      	str	r6, [r0, #76]	; 0x4c
 8002222:	e000      	b.n	8002226 <RCC_GetClocksFreq+0x142>
 8002224:	64c1      	str	r1, [r0, #76]	; 0x4c
 8002226:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8002228:	0536      	lsls	r6, r6, #20
 800222a:	d506      	bpl.n	800223a <RCC_GetClocksFreq+0x156>
 800222c:	429a      	cmp	r2, r3
 800222e:	d104      	bne.n	800223a <RCC_GetClocksFreq+0x156>
 8002230:	42a5      	cmp	r5, r4
 8002232:	d102      	bne.n	800223a <RCC_GetClocksFreq+0x156>
 8002234:	0056      	lsls	r6, r2, #1
 8002236:	6506      	str	r6, [r0, #80]	; 0x50
 8002238:	e000      	b.n	800223c <RCC_GetClocksFreq+0x158>
 800223a:	6501      	str	r1, [r0, #80]	; 0x50
 800223c:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 800223e:	04b6      	lsls	r6, r6, #18
 8002240:	d506      	bpl.n	8002250 <RCC_GetClocksFreq+0x16c>
 8002242:	429a      	cmp	r2, r3
 8002244:	d104      	bne.n	8002250 <RCC_GetClocksFreq+0x16c>
 8002246:	42a5      	cmp	r5, r4
 8002248:	d102      	bne.n	8002250 <RCC_GetClocksFreq+0x16c>
 800224a:	0056      	lsls	r6, r2, #1
 800224c:	6546      	str	r6, [r0, #84]	; 0x54
 800224e:	e000      	b.n	8002252 <RCC_GetClocksFreq+0x16e>
 8002250:	6501      	str	r1, [r0, #80]	; 0x50
 8002252:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8002254:	0436      	lsls	r6, r6, #16
 8002256:	d506      	bpl.n	8002266 <RCC_GetClocksFreq+0x182>
 8002258:	429a      	cmp	r2, r3
 800225a:	d104      	bne.n	8002266 <RCC_GetClocksFreq+0x182>
 800225c:	42a5      	cmp	r5, r4
 800225e:	d102      	bne.n	8002266 <RCC_GetClocksFreq+0x182>
 8002260:	0053      	lsls	r3, r2, #1
 8002262:	6583      	str	r3, [r0, #88]	; 0x58
 8002264:	e000      	b.n	8002268 <RCC_GetClocksFreq+0x184>
 8002266:	6581      	str	r1, [r0, #88]	; 0x58
 8002268:	6b3c      	ldr	r4, [r7, #48]	; 0x30
 800226a:	4b3b      	ldr	r3, [pc, #236]	; (8002358 <RCC_GetClocksFreq+0x274>)
 800226c:	07a4      	lsls	r4, r4, #30
 800226e:	d101      	bne.n	8002274 <RCC_GetClocksFreq+0x190>
 8002270:	6381      	str	r1, [r0, #56]	; 0x38
 8002272:	e015      	b.n	80022a0 <RCC_GetClocksFreq+0x1bc>
 8002274:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8002276:	f001 0103 	and.w	r1, r1, #3
 800227a:	2901      	cmp	r1, #1
 800227c:	d101      	bne.n	8002282 <RCC_GetClocksFreq+0x19e>
 800227e:	6382      	str	r2, [r0, #56]	; 0x38
 8002280:	e00e      	b.n	80022a0 <RCC_GetClocksFreq+0x1bc>
 8002282:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8002284:	f001 0103 	and.w	r1, r1, #3
 8002288:	2902      	cmp	r1, #2
 800228a:	d102      	bne.n	8002292 <RCC_GetClocksFreq+0x1ae>
 800228c:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8002290:	e005      	b.n	800229e <RCC_GetClocksFreq+0x1ba>
 8002292:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8002294:	f003 0303 	and.w	r3, r3, #3
 8002298:	2b03      	cmp	r3, #3
 800229a:	d101      	bne.n	80022a0 <RCC_GetClocksFreq+0x1bc>
 800229c:	4b2f      	ldr	r3, [pc, #188]	; (800235c <RCC_GetClocksFreq+0x278>)
 800229e:	6383      	str	r3, [r0, #56]	; 0x38
 80022a0:	6b39      	ldr	r1, [r7, #48]	; 0x30
 80022a2:	4b2d      	ldr	r3, [pc, #180]	; (8002358 <RCC_GetClocksFreq+0x274>)
 80022a4:	f411 3f40 	tst.w	r1, #196608	; 0x30000
 80022a8:	d102      	bne.n	80022b0 <RCC_GetClocksFreq+0x1cc>
 80022aa:	f8c0 e03c 	str.w	lr, [r0, #60]	; 0x3c
 80022ae:	e018      	b.n	80022e2 <RCC_GetClocksFreq+0x1fe>
 80022b0:	6b19      	ldr	r1, [r3, #48]	; 0x30
 80022b2:	f401 3140 	and.w	r1, r1, #196608	; 0x30000
 80022b6:	f5b1 3f80 	cmp.w	r1, #65536	; 0x10000
 80022ba:	d101      	bne.n	80022c0 <RCC_GetClocksFreq+0x1dc>
 80022bc:	63c2      	str	r2, [r0, #60]	; 0x3c
 80022be:	e010      	b.n	80022e2 <RCC_GetClocksFreq+0x1fe>
 80022c0:	6b19      	ldr	r1, [r3, #48]	; 0x30
 80022c2:	f401 3140 	and.w	r1, r1, #196608	; 0x30000
 80022c6:	f5b1 3f00 	cmp.w	r1, #131072	; 0x20000
 80022ca:	d102      	bne.n	80022d2 <RCC_GetClocksFreq+0x1ee>
 80022cc:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 80022d0:	e006      	b.n	80022e0 <RCC_GetClocksFreq+0x1fc>
 80022d2:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80022d4:	f403 3340 	and.w	r3, r3, #196608	; 0x30000
 80022d8:	f5b3 3f40 	cmp.w	r3, #196608	; 0x30000
 80022dc:	d101      	bne.n	80022e2 <RCC_GetClocksFreq+0x1fe>
 80022de:	4b1f      	ldr	r3, [pc, #124]	; (800235c <RCC_GetClocksFreq+0x278>)
 80022e0:	63c3      	str	r3, [r0, #60]	; 0x3c
 80022e2:	6b39      	ldr	r1, [r7, #48]	; 0x30
 80022e4:	4b1c      	ldr	r3, [pc, #112]	; (8002358 <RCC_GetClocksFreq+0x274>)
 80022e6:	f411 2f40 	tst.w	r1, #786432	; 0xc0000
 80022ea:	d102      	bne.n	80022f2 <RCC_GetClocksFreq+0x20e>
 80022ec:	f8c0 e040 	str.w	lr, [r0, #64]	; 0x40
 80022f0:	e018      	b.n	8002324 <RCC_GetClocksFreq+0x240>
 80022f2:	6b19      	ldr	r1, [r3, #48]	; 0x30
 80022f4:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 80022f8:	f5b1 2f80 	cmp.w	r1, #262144	; 0x40000
 80022fc:	d101      	bne.n	8002302 <RCC_GetClocksFreq+0x21e>
 80022fe:	6402      	str	r2, [r0, #64]	; 0x40
 8002300:	e010      	b.n	8002324 <RCC_GetClocksFreq+0x240>
 8002302:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8002304:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 8002308:	f5b1 2f00 	cmp.w	r1, #524288	; 0x80000
 800230c:	d102      	bne.n	8002314 <RCC_GetClocksFreq+0x230>
 800230e:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8002312:	e006      	b.n	8002322 <RCC_GetClocksFreq+0x23e>
 8002314:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8002316:	f403 2340 	and.w	r3, r3, #786432	; 0xc0000
 800231a:	f5b3 2f40 	cmp.w	r3, #786432	; 0xc0000
 800231e:	d101      	bne.n	8002324 <RCC_GetClocksFreq+0x240>
 8002320:	4b0e      	ldr	r3, [pc, #56]	; (800235c <RCC_GetClocksFreq+0x278>)
 8002322:	6403      	str	r3, [r0, #64]	; 0x40
 8002324:	6b39      	ldr	r1, [r7, #48]	; 0x30
 8002326:	4b0c      	ldr	r3, [pc, #48]	; (8002358 <RCC_GetClocksFreq+0x274>)
 8002328:	f411 1f40 	tst.w	r1, #3145728	; 0x300000
 800232c:	d102      	bne.n	8002334 <RCC_GetClocksFreq+0x250>
 800232e:	f8c0 e044 	str.w	lr, [r0, #68]	; 0x44
 8002332:	e023      	b.n	800237c <RCC_GetClocksFreq+0x298>
 8002334:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8002336:	f401 1140 	and.w	r1, r1, #3145728	; 0x300000
 800233a:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 800233e:	d101      	bne.n	8002344 <RCC_GetClocksFreq+0x260>
 8002340:	6442      	str	r2, [r0, #68]	; 0x44
 8002342:	e01b      	b.n	800237c <RCC_GetClocksFreq+0x298>
 8002344:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8002346:	f401 1140 	and.w	r1, r1, #3145728	; 0x300000
 800234a:	f5b1 1f00 	cmp.w	r1, #2097152	; 0x200000
 800234e:	d10d      	bne.n	800236c <RCC_GetClocksFreq+0x288>
 8002350:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8002354:	e011      	b.n	800237a <RCC_GetClocksFreq+0x296>
 8002356:	bf00      	nop
 8002358:	40021000 	.word	0x40021000
 800235c:	007a1200 	.word	0x007a1200
 8002360:	003d0900 	.word	0x003d0900
 8002364:	20000058 	.word	0x20000058
 8002368:	20000038 	.word	0x20000038
 800236c:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 800236e:	f403 1340 	and.w	r3, r3, #3145728	; 0x300000
 8002372:	f5b3 1f40 	cmp.w	r3, #3145728	; 0x300000
 8002376:	d101      	bne.n	800237c <RCC_GetClocksFreq+0x298>
 8002378:	4b13      	ldr	r3, [pc, #76]	; (80023c8 <RCC_GetClocksFreq+0x2e4>)
 800237a:	6443      	str	r3, [r0, #68]	; 0x44
 800237c:	6b39      	ldr	r1, [r7, #48]	; 0x30
 800237e:	4b13      	ldr	r3, [pc, #76]	; (80023cc <RCC_GetClocksFreq+0x2e8>)
 8002380:	f411 0f40 	tst.w	r1, #12582912	; 0xc00000
 8002384:	d103      	bne.n	800238e <RCC_GetClocksFreq+0x2aa>
 8002386:	f8c0 e048 	str.w	lr, [r0, #72]	; 0x48
 800238a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800238e:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8002390:	f401 0140 	and.w	r1, r1, #12582912	; 0xc00000
 8002394:	f5b1 0f80 	cmp.w	r1, #4194304	; 0x400000
 8002398:	d102      	bne.n	80023a0 <RCC_GetClocksFreq+0x2bc>
 800239a:	6482      	str	r2, [r0, #72]	; 0x48
 800239c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80023a0:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 80023a2:	f402 0240 	and.w	r2, r2, #12582912	; 0xc00000
 80023a6:	f5b2 0f00 	cmp.w	r2, #8388608	; 0x800000
 80023aa:	d102      	bne.n	80023b2 <RCC_GetClocksFreq+0x2ce>
 80023ac:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 80023b0:	e006      	b.n	80023c0 <RCC_GetClocksFreq+0x2dc>
 80023b2:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80023b4:	f403 0340 	and.w	r3, r3, #12582912	; 0xc00000
 80023b8:	f5b3 0f40 	cmp.w	r3, #12582912	; 0xc00000
 80023bc:	d101      	bne.n	80023c2 <RCC_GetClocksFreq+0x2de>
 80023be:	4b02      	ldr	r3, [pc, #8]	; (80023c8 <RCC_GetClocksFreq+0x2e4>)
 80023c0:	6483      	str	r3, [r0, #72]	; 0x48
 80023c2:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80023c6:	bf00      	nop
 80023c8:	007a1200 	.word	0x007a1200
 80023cc:	40021000 	.word	0x40021000

080023d0 <RCC_AHBPeriphClockCmd>:
 80023d0:	bf00      	nop
 80023d2:	bf00      	nop
 80023d4:	4b04      	ldr	r3, [pc, #16]	; (80023e8 <RCC_AHBPeriphClockCmd+0x18>)
 80023d6:	695a      	ldr	r2, [r3, #20]
 80023d8:	b109      	cbz	r1, 80023de <RCC_AHBPeriphClockCmd+0xe>
 80023da:	4310      	orrs	r0, r2
 80023dc:	e001      	b.n	80023e2 <RCC_AHBPeriphClockCmd+0x12>
 80023de:	ea22 0000 	bic.w	r0, r2, r0
 80023e2:	6158      	str	r0, [r3, #20]
 80023e4:	4770      	bx	lr
 80023e6:	bf00      	nop
 80023e8:	40021000 	.word	0x40021000

080023ec <RCC_APB2PeriphClockCmd>:
 80023ec:	bf00      	nop
 80023ee:	bf00      	nop
 80023f0:	4b04      	ldr	r3, [pc, #16]	; (8002404 <RCC_APB2PeriphClockCmd+0x18>)
 80023f2:	699a      	ldr	r2, [r3, #24]
 80023f4:	b109      	cbz	r1, 80023fa <RCC_APB2PeriphClockCmd+0xe>
 80023f6:	4310      	orrs	r0, r2
 80023f8:	e001      	b.n	80023fe <RCC_APB2PeriphClockCmd+0x12>
 80023fa:	ea22 0000 	bic.w	r0, r2, r0
 80023fe:	6198      	str	r0, [r3, #24]
 8002400:	4770      	bx	lr
 8002402:	bf00      	nop
 8002404:	40021000 	.word	0x40021000

08002408 <RCC_APB1PeriphClockCmd>:
 8002408:	bf00      	nop
 800240a:	bf00      	nop
 800240c:	4b04      	ldr	r3, [pc, #16]	; (8002420 <RCC_APB1PeriphClockCmd+0x18>)
 800240e:	69da      	ldr	r2, [r3, #28]
 8002410:	b109      	cbz	r1, 8002416 <RCC_APB1PeriphClockCmd+0xe>
 8002412:	4310      	orrs	r0, r2
 8002414:	e001      	b.n	800241a <RCC_APB1PeriphClockCmd+0x12>
 8002416:	ea22 0000 	bic.w	r0, r2, r0
 800241a:	61d8      	str	r0, [r3, #28]
 800241c:	4770      	bx	lr
 800241e:	bf00      	nop
 8002420:	40021000 	.word	0x40021000

08002424 <TIM_TimeBaseInit>:
 8002424:	bf00      	nop
 8002426:	bf00      	nop
 8002428:	bf00      	nop
 800242a:	4a24      	ldr	r2, [pc, #144]	; (80024bc <TIM_TimeBaseInit+0x98>)
 800242c:	8803      	ldrh	r3, [r0, #0]
 800242e:	4290      	cmp	r0, r2
 8002430:	b29b      	uxth	r3, r3
 8002432:	d012      	beq.n	800245a <TIM_TimeBaseInit+0x36>
 8002434:	f502 6200 	add.w	r2, r2, #2048	; 0x800
 8002438:	4290      	cmp	r0, r2
 800243a:	d00e      	beq.n	800245a <TIM_TimeBaseInit+0x36>
 800243c:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 8002440:	d00b      	beq.n	800245a <TIM_TimeBaseInit+0x36>
 8002442:	f5a2 3298 	sub.w	r2, r2, #77824	; 0x13000
 8002446:	4290      	cmp	r0, r2
 8002448:	d007      	beq.n	800245a <TIM_TimeBaseInit+0x36>
 800244a:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 800244e:	4290      	cmp	r0, r2
 8002450:	d003      	beq.n	800245a <TIM_TimeBaseInit+0x36>
 8002452:	f502 32a4 	add.w	r2, r2, #83968	; 0x14800
 8002456:	4290      	cmp	r0, r2
 8002458:	d103      	bne.n	8002462 <TIM_TimeBaseInit+0x3e>
 800245a:	884a      	ldrh	r2, [r1, #2]
 800245c:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 8002460:	4313      	orrs	r3, r2
 8002462:	4a17      	ldr	r2, [pc, #92]	; (80024c0 <TIM_TimeBaseInit+0x9c>)
 8002464:	4290      	cmp	r0, r2
 8002466:	d008      	beq.n	800247a <TIM_TimeBaseInit+0x56>
 8002468:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 800246c:	4290      	cmp	r0, r2
 800246e:	bf1f      	itttt	ne
 8002470:	f423 7340 	bicne.w	r3, r3, #768	; 0x300
 8002474:	890a      	ldrhne	r2, [r1, #8]
 8002476:	b29b      	uxthne	r3, r3
 8002478:	4313      	orrne	r3, r2
 800247a:	8003      	strh	r3, [r0, #0]
 800247c:	684b      	ldr	r3, [r1, #4]
 800247e:	62c3      	str	r3, [r0, #44]	; 0x2c
 8002480:	880b      	ldrh	r3, [r1, #0]
 8002482:	8503      	strh	r3, [r0, #40]	; 0x28
 8002484:	4b0d      	ldr	r3, [pc, #52]	; (80024bc <TIM_TimeBaseInit+0x98>)
 8002486:	4298      	cmp	r0, r3
 8002488:	d013      	beq.n	80024b2 <TIM_TimeBaseInit+0x8e>
 800248a:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 800248e:	4298      	cmp	r0, r3
 8002490:	d00f      	beq.n	80024b2 <TIM_TimeBaseInit+0x8e>
 8002492:	f503 6340 	add.w	r3, r3, #3072	; 0xc00
 8002496:	4298      	cmp	r0, r3
 8002498:	d00b      	beq.n	80024b2 <TIM_TimeBaseInit+0x8e>
 800249a:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 800249e:	4298      	cmp	r0, r3
 80024a0:	d007      	beq.n	80024b2 <TIM_TimeBaseInit+0x8e>
 80024a2:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 80024a6:	4298      	cmp	r0, r3
 80024a8:	d003      	beq.n	80024b2 <TIM_TimeBaseInit+0x8e>
 80024aa:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 80024ae:	4298      	cmp	r0, r3
 80024b0:	d101      	bne.n	80024b6 <TIM_TimeBaseInit+0x92>
 80024b2:	894b      	ldrh	r3, [r1, #10]
 80024b4:	8603      	strh	r3, [r0, #48]	; 0x30
 80024b6:	2301      	movs	r3, #1
 80024b8:	6143      	str	r3, [r0, #20]
 80024ba:	4770      	bx	lr
 80024bc:	40012c00 	.word	0x40012c00
 80024c0:	40001000 	.word	0x40001000

080024c4 <TIM_Cmd>:
 80024c4:	bf00      	nop
 80024c6:	bf00      	nop
 80024c8:	8803      	ldrh	r3, [r0, #0]
 80024ca:	b119      	cbz	r1, 80024d4 <TIM_Cmd+0x10>
 80024cc:	b29b      	uxth	r3, r3
 80024ce:	f043 0301 	orr.w	r3, r3, #1
 80024d2:	e003      	b.n	80024dc <TIM_Cmd+0x18>
 80024d4:	f023 0301 	bic.w	r3, r3, #1
 80024d8:	041b      	lsls	r3, r3, #16
 80024da:	0c1b      	lsrs	r3, r3, #16
 80024dc:	8003      	strh	r3, [r0, #0]
 80024de:	4770      	bx	lr

080024e0 <TIM_OC1Init>:
 80024e0:	b570      	push	{r4, r5, r6, lr}
 80024e2:	bf00      	nop
 80024e4:	bf00      	nop
 80024e6:	bf00      	nop
 80024e8:	bf00      	nop
 80024ea:	6a03      	ldr	r3, [r0, #32]
 80024ec:	680d      	ldr	r5, [r1, #0]
 80024ee:	f023 0301 	bic.w	r3, r3, #1
 80024f2:	6203      	str	r3, [r0, #32]
 80024f4:	6a03      	ldr	r3, [r0, #32]
 80024f6:	6844      	ldr	r4, [r0, #4]
 80024f8:	6982      	ldr	r2, [r0, #24]
 80024fa:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
 80024fe:	f022 0273 	bic.w	r2, r2, #115	; 0x73
 8002502:	4315      	orrs	r5, r2
 8002504:	898a      	ldrh	r2, [r1, #12]
 8002506:	f023 0302 	bic.w	r3, r3, #2
 800250a:	4313      	orrs	r3, r2
 800250c:	888a      	ldrh	r2, [r1, #4]
 800250e:	4313      	orrs	r3, r2
 8002510:	4a15      	ldr	r2, [pc, #84]	; (8002568 <TIM_OC1Init+0x88>)
 8002512:	4290      	cmp	r0, r2
 8002514:	d00f      	beq.n	8002536 <TIM_OC1Init+0x56>
 8002516:	f502 6200 	add.w	r2, r2, #2048	; 0x800
 800251a:	4290      	cmp	r0, r2
 800251c:	d00b      	beq.n	8002536 <TIM_OC1Init+0x56>
 800251e:	f502 6240 	add.w	r2, r2, #3072	; 0xc00
 8002522:	4290      	cmp	r0, r2
 8002524:	d007      	beq.n	8002536 <TIM_OC1Init+0x56>
 8002526:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 800252a:	4290      	cmp	r0, r2
 800252c:	d003      	beq.n	8002536 <TIM_OC1Init+0x56>
 800252e:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8002532:	4290      	cmp	r0, r2
 8002534:	d111      	bne.n	800255a <TIM_OC1Init+0x7a>
 8002536:	bf00      	nop
 8002538:	bf00      	nop
 800253a:	bf00      	nop
 800253c:	bf00      	nop
 800253e:	89ca      	ldrh	r2, [r1, #14]
 8002540:	88ce      	ldrh	r6, [r1, #6]
 8002542:	f023 0308 	bic.w	r3, r3, #8
 8002546:	4313      	orrs	r3, r2
 8002548:	8a0a      	ldrh	r2, [r1, #16]
 800254a:	f424 7440 	bic.w	r4, r4, #768	; 0x300
 800254e:	4314      	orrs	r4, r2
 8002550:	8a4a      	ldrh	r2, [r1, #18]
 8002552:	f023 0304 	bic.w	r3, r3, #4
 8002556:	4333      	orrs	r3, r6
 8002558:	4314      	orrs	r4, r2
 800255a:	688a      	ldr	r2, [r1, #8]
 800255c:	6044      	str	r4, [r0, #4]
 800255e:	6185      	str	r5, [r0, #24]
 8002560:	6342      	str	r2, [r0, #52]	; 0x34
 8002562:	6203      	str	r3, [r0, #32]
 8002564:	bd70      	pop	{r4, r5, r6, pc}
 8002566:	bf00      	nop
 8002568:	40012c00 	.word	0x40012c00

0800256c <TIM_OC2Init>:
 800256c:	b570      	push	{r4, r5, r6, lr}
 800256e:	bf00      	nop
 8002570:	bf00      	nop
 8002572:	bf00      	nop
 8002574:	bf00      	nop
 8002576:	6a03      	ldr	r3, [r0, #32]
 8002578:	680d      	ldr	r5, [r1, #0]
 800257a:	898e      	ldrh	r6, [r1, #12]
 800257c:	f023 0310 	bic.w	r3, r3, #16
 8002580:	6203      	str	r3, [r0, #32]
 8002582:	6a03      	ldr	r3, [r0, #32]
 8002584:	6844      	ldr	r4, [r0, #4]
 8002586:	6982      	ldr	r2, [r0, #24]
 8002588:	f022 7280 	bic.w	r2, r2, #16777216	; 0x1000000
 800258c:	f422 42e6 	bic.w	r2, r2, #29440	; 0x7300
 8002590:	ea42 2505 	orr.w	r5, r2, r5, lsl #8
 8002594:	f023 0220 	bic.w	r2, r3, #32
 8002598:	888b      	ldrh	r3, [r1, #4]
 800259a:	4333      	orrs	r3, r6
 800259c:	ea42 1303 	orr.w	r3, r2, r3, lsl #4
 80025a0:	4a10      	ldr	r2, [pc, #64]	; (80025e4 <TIM_OC2Init+0x78>)
 80025a2:	4290      	cmp	r0, r2
 80025a4:	d003      	beq.n	80025ae <TIM_OC2Init+0x42>
 80025a6:	f502 6200 	add.w	r2, r2, #2048	; 0x800
 80025aa:	4290      	cmp	r0, r2
 80025ac:	d114      	bne.n	80025d8 <TIM_OC2Init+0x6c>
 80025ae:	bf00      	nop
 80025b0:	bf00      	nop
 80025b2:	bf00      	nop
 80025b4:	bf00      	nop
 80025b6:	89ca      	ldrh	r2, [r1, #14]
 80025b8:	8a0e      	ldrh	r6, [r1, #16]
 80025ba:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 80025be:	ea43 1302 	orr.w	r3, r3, r2, lsl #4
 80025c2:	88ca      	ldrh	r2, [r1, #6]
 80025c4:	f023 0340 	bic.w	r3, r3, #64	; 0x40
 80025c8:	ea43 1302 	orr.w	r3, r3, r2, lsl #4
 80025cc:	8a4a      	ldrh	r2, [r1, #18]
 80025ce:	f424 6440 	bic.w	r4, r4, #3072	; 0xc00
 80025d2:	4332      	orrs	r2, r6
 80025d4:	ea44 0482 	orr.w	r4, r4, r2, lsl #2
 80025d8:	688a      	ldr	r2, [r1, #8]
 80025da:	6044      	str	r4, [r0, #4]
 80025dc:	6185      	str	r5, [r0, #24]
 80025de:	6382      	str	r2, [r0, #56]	; 0x38
 80025e0:	6203      	str	r3, [r0, #32]
 80025e2:	bd70      	pop	{r4, r5, r6, pc}
 80025e4:	40012c00 	.word	0x40012c00

080025e8 <TIM_CtrlPWMOutputs>:
 80025e8:	bf00      	nop
 80025ea:	bf00      	nop
 80025ec:	6c43      	ldr	r3, [r0, #68]	; 0x44
 80025ee:	b111      	cbz	r1, 80025f6 <TIM_CtrlPWMOutputs+0xe>
 80025f0:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
 80025f4:	e001      	b.n	80025fa <TIM_CtrlPWMOutputs+0x12>
 80025f6:	f3c3 030e 	ubfx	r3, r3, #0, #15
 80025fa:	6443      	str	r3, [r0, #68]	; 0x44
 80025fc:	4770      	bx	lr

080025fe <TIM_ClearITPendingBit>:
 80025fe:	bf00      	nop
 8002600:	43c9      	mvns	r1, r1
 8002602:	b289      	uxth	r1, r1
 8002604:	6101      	str	r1, [r0, #16]
 8002606:	4770      	bx	lr

08002608 <timer_init>:
 8002608:	b530      	push	{r4, r5, lr}
 800260a:	2300      	movs	r3, #0
 800260c:	b085      	sub	sp, #20
 800260e:	491f      	ldr	r1, [pc, #124]	; (800268c <timer_init+0x84>)
 8002610:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8002614:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 8002618:	491d      	ldr	r1, [pc, #116]	; (8002690 <timer_init+0x88>)
 800261a:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 800261e:	4a1d      	ldr	r2, [pc, #116]	; (8002694 <timer_init+0x8c>)
 8002620:	2400      	movs	r4, #0
 8002622:	f822 4013 	strh.w	r4, [r2, r3, lsl #1]
 8002626:	3301      	adds	r3, #1
 8002628:	2b04      	cmp	r3, #4
 800262a:	4625      	mov	r5, r4
 800262c:	d1ef      	bne.n	800260e <timer_init+0x6>
 800262e:	4b1a      	ldr	r3, [pc, #104]	; (8002698 <timer_init+0x90>)
 8002630:	2002      	movs	r0, #2
 8002632:	2101      	movs	r1, #1
 8002634:	601c      	str	r4, [r3, #0]
 8002636:	f7ff fee7 	bl	8002408 <RCC_APB1PeriphClockCmd>
 800263a:	f8ad 4006 	strh.w	r4, [sp, #6]
 800263e:	f8ad 400c 	strh.w	r4, [sp, #12]
 8002642:	f8ad 400e 	strh.w	r4, [sp, #14]
 8002646:	4c15      	ldr	r4, [pc, #84]	; (800269c <timer_init+0x94>)
 8002648:	f44f 738c 	mov.w	r3, #280	; 0x118
 800264c:	f8ad 3004 	strh.w	r3, [sp, #4]
 8002650:	4620      	mov	r0, r4
 8002652:	2331      	movs	r3, #49	; 0x31
 8002654:	a901      	add	r1, sp, #4
 8002656:	9302      	str	r3, [sp, #8]
 8002658:	f7ff fee4 	bl	8002424 <TIM_TimeBaseInit>
 800265c:	4620      	mov	r0, r4
 800265e:	2101      	movs	r1, #1
 8002660:	f7ff ff30 	bl	80024c4 <TIM_Cmd>
 8002664:	68e3      	ldr	r3, [r4, #12]
 8002666:	f043 0301 	orr.w	r3, r3, #1
 800266a:	60e3      	str	r3, [r4, #12]
 800266c:	231d      	movs	r3, #29
 800266e:	f88d 3000 	strb.w	r3, [sp]
 8002672:	4668      	mov	r0, sp
 8002674:	2301      	movs	r3, #1
 8002676:	f88d 5001 	strb.w	r5, [sp, #1]
 800267a:	f88d 3002 	strb.w	r3, [sp, #2]
 800267e:	f88d 3003 	strb.w	r3, [sp, #3]
 8002682:	f000 fc5d 	bl	8002f40 <NVIC_Init>
 8002686:	b005      	add	sp, #20
 8002688:	bd30      	pop	{r4, r5, pc}
 800268a:	bf00      	nop
 800268c:	20001340 	.word	0x20001340
 8002690:	20001334 	.word	0x20001334
 8002694:	2000132c 	.word	0x2000132c
 8002698:	2000133c 	.word	0x2000133c
 800269c:	40000400 	.word	0x40000400

080026a0 <TIM3_IRQHandler>:
 80026a0:	2300      	movs	r3, #0
 80026a2:	4910      	ldr	r1, [pc, #64]	; (80026e4 <TIM3_IRQHandler+0x44>)
 80026a4:	f831 2013 	ldrh.w	r2, [r1, r3, lsl #1]
 80026a8:	b292      	uxth	r2, r2
 80026aa:	b132      	cbz	r2, 80026ba <TIM3_IRQHandler+0x1a>
 80026ac:	f831 2013 	ldrh.w	r2, [r1, r3, lsl #1]
 80026b0:	3a01      	subs	r2, #1
 80026b2:	b292      	uxth	r2, r2
 80026b4:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 80026b8:	e009      	b.n	80026ce <TIM3_IRQHandler+0x2e>
 80026ba:	4a0b      	ldr	r2, [pc, #44]	; (80026e8 <TIM3_IRQHandler+0x48>)
 80026bc:	f832 2013 	ldrh.w	r2, [r2, r3, lsl #1]
 80026c0:	b292      	uxth	r2, r2
 80026c2:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 80026c6:	4a09      	ldr	r2, [pc, #36]	; (80026ec <TIM3_IRQHandler+0x4c>)
 80026c8:	2101      	movs	r1, #1
 80026ca:	f822 1013 	strh.w	r1, [r2, r3, lsl #1]
 80026ce:	3301      	adds	r3, #1
 80026d0:	2b04      	cmp	r3, #4
 80026d2:	d1e6      	bne.n	80026a2 <TIM3_IRQHandler+0x2>
 80026d4:	4a06      	ldr	r2, [pc, #24]	; (80026f0 <TIM3_IRQHandler+0x50>)
 80026d6:	4807      	ldr	r0, [pc, #28]	; (80026f4 <TIM3_IRQHandler+0x54>)
 80026d8:	6813      	ldr	r3, [r2, #0]
 80026da:	2101      	movs	r1, #1
 80026dc:	3301      	adds	r3, #1
 80026de:	6013      	str	r3, [r2, #0]
 80026e0:	f7ff bf8d 	b.w	80025fe <TIM_ClearITPendingBit>
 80026e4:	20001340 	.word	0x20001340
 80026e8:	20001334 	.word	0x20001334
 80026ec:	2000132c 	.word	0x2000132c
 80026f0:	2000133c 	.word	0x2000133c
 80026f4:	40000400 	.word	0x40000400

080026f8 <timer_get_time>:
 80026f8:	b082      	sub	sp, #8
 80026fa:	b672      	cpsid	i
 80026fc:	4b04      	ldr	r3, [pc, #16]	; (8002710 <timer_get_time+0x18>)
 80026fe:	681b      	ldr	r3, [r3, #0]
 8002700:	9301      	str	r3, [sp, #4]
 8002702:	b662      	cpsie	i
 8002704:	230a      	movs	r3, #10
 8002706:	9801      	ldr	r0, [sp, #4]
 8002708:	fbb0 f0f3 	udiv	r0, r0, r3
 800270c:	b002      	add	sp, #8
 800270e:	4770      	bx	lr
 8002710:	2000133c 	.word	0x2000133c

08002714 <timer_delay_ms>:
 8002714:	b513      	push	{r0, r1, r4, lr}
 8002716:	4604      	mov	r4, r0
 8002718:	f7ff ffee 	bl	80026f8 <timer_get_time>
 800271c:	4420      	add	r0, r4
 800271e:	9001      	str	r0, [sp, #4]
 8002720:	9c01      	ldr	r4, [sp, #4]
 8002722:	f7ff ffe9 	bl	80026f8 <timer_get_time>
 8002726:	4284      	cmp	r4, r0
 8002728:	d902      	bls.n	8002730 <timer_delay_ms+0x1c>
 800272a:	f000 fb19 	bl	8002d60 <core_yield>
 800272e:	e7f7      	b.n	8002720 <timer_delay_ms+0xc>
 8002730:	b002      	add	sp, #8
 8002732:	bd10      	pop	{r4, pc}

08002734 <event_timer_set_period>:
 8002734:	b672      	cpsid	i
 8002736:	eb01 0181 	add.w	r1, r1, r1, lsl #2
 800273a:	4b07      	ldr	r3, [pc, #28]	; (8002758 <event_timer_set_period+0x24>)
 800273c:	0049      	lsls	r1, r1, #1
 800273e:	b289      	uxth	r1, r1
 8002740:	f823 1010 	strh.w	r1, [r3, r0, lsl #1]
 8002744:	4b05      	ldr	r3, [pc, #20]	; (800275c <event_timer_set_period+0x28>)
 8002746:	f823 1010 	strh.w	r1, [r3, r0, lsl #1]
 800274a:	4b05      	ldr	r3, [pc, #20]	; (8002760 <event_timer_set_period+0x2c>)
 800274c:	2200      	movs	r2, #0
 800274e:	f823 2010 	strh.w	r2, [r3, r0, lsl #1]
 8002752:	b662      	cpsie	i
 8002754:	4770      	bx	lr
 8002756:	bf00      	nop
 8002758:	20001340 	.word	0x20001340
 800275c:	20001334 	.word	0x20001334
 8002760:	2000132c 	.word	0x2000132c

08002764 <event_timer_wait>:
 8002764:	b510      	push	{r4, lr}
 8002766:	4604      	mov	r4, r0
 8002768:	4a06      	ldr	r2, [pc, #24]	; (8002784 <event_timer_wait+0x20>)
 800276a:	f832 3014 	ldrh.w	r3, [r2, r4, lsl #1]
 800276e:	b29b      	uxth	r3, r3
 8002770:	b913      	cbnz	r3, 8002778 <event_timer_wait+0x14>
 8002772:	f000 faf5 	bl	8002d60 <core_yield>
 8002776:	e7f7      	b.n	8002768 <event_timer_wait+0x4>
 8002778:	b672      	cpsid	i
 800277a:	2300      	movs	r3, #0
 800277c:	f822 3014 	strh.w	r3, [r2, r4, lsl #1]
 8002780:	b662      	cpsie	i
 8002782:	bd10      	pop	{r4, pc}
 8002784:	2000132c 	.word	0x2000132c

08002788 <USART_Init>:
 8002788:	b530      	push	{r4, r5, lr}
 800278a:	4604      	mov	r4, r0
 800278c:	b099      	sub	sp, #100	; 0x64
 800278e:	460d      	mov	r5, r1
 8002790:	bf00      	nop
 8002792:	bf00      	nop
 8002794:	bf00      	nop
 8002796:	bf00      	nop
 8002798:	bf00      	nop
 800279a:	bf00      	nop
 800279c:	bf00      	nop
 800279e:	6803      	ldr	r3, [r0, #0]
 80027a0:	f023 0301 	bic.w	r3, r3, #1
 80027a4:	6003      	str	r3, [r0, #0]
 80027a6:	6843      	ldr	r3, [r0, #4]
 80027a8:	f423 5240 	bic.w	r2, r3, #12288	; 0x3000
 80027ac:	688b      	ldr	r3, [r1, #8]
 80027ae:	68c9      	ldr	r1, [r1, #12]
 80027b0:	4313      	orrs	r3, r2
 80027b2:	6043      	str	r3, [r0, #4]
 80027b4:	686a      	ldr	r2, [r5, #4]
 80027b6:	6803      	ldr	r3, [r0, #0]
 80027b8:	4311      	orrs	r1, r2
 80027ba:	692a      	ldr	r2, [r5, #16]
 80027bc:	f423 53b0 	bic.w	r3, r3, #5632	; 0x1600
 80027c0:	430a      	orrs	r2, r1
 80027c2:	f023 030c 	bic.w	r3, r3, #12
 80027c6:	4313      	orrs	r3, r2
 80027c8:	6003      	str	r3, [r0, #0]
 80027ca:	6883      	ldr	r3, [r0, #8]
 80027cc:	f423 7240 	bic.w	r2, r3, #768	; 0x300
 80027d0:	696b      	ldr	r3, [r5, #20]
 80027d2:	4313      	orrs	r3, r2
 80027d4:	6083      	str	r3, [r0, #8]
 80027d6:	a801      	add	r0, sp, #4
 80027d8:	f7ff fc84 	bl	80020e4 <RCC_GetClocksFreq>
 80027dc:	4b17      	ldr	r3, [pc, #92]	; (800283c <USART_Init+0xb4>)
 80027de:	429c      	cmp	r4, r3
 80027e0:	d101      	bne.n	80027e6 <USART_Init+0x5e>
 80027e2:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80027e4:	e00e      	b.n	8002804 <USART_Init+0x7c>
 80027e6:	4b16      	ldr	r3, [pc, #88]	; (8002840 <USART_Init+0xb8>)
 80027e8:	429c      	cmp	r4, r3
 80027ea:	d101      	bne.n	80027f0 <USART_Init+0x68>
 80027ec:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80027ee:	e009      	b.n	8002804 <USART_Init+0x7c>
 80027f0:	4b14      	ldr	r3, [pc, #80]	; (8002844 <USART_Init+0xbc>)
 80027f2:	429c      	cmp	r4, r3
 80027f4:	d101      	bne.n	80027fa <USART_Init+0x72>
 80027f6:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80027f8:	e004      	b.n	8002804 <USART_Init+0x7c>
 80027fa:	4b13      	ldr	r3, [pc, #76]	; (8002848 <USART_Init+0xc0>)
 80027fc:	429c      	cmp	r4, r3
 80027fe:	bf0c      	ite	eq
 8002800:	9b12      	ldreq	r3, [sp, #72]	; 0x48
 8002802:	9b13      	ldrne	r3, [sp, #76]	; 0x4c
 8002804:	6822      	ldr	r2, [r4, #0]
 8002806:	6829      	ldr	r1, [r5, #0]
 8002808:	f412 4f00 	tst.w	r2, #32768	; 0x8000
 800280c:	bf18      	it	ne
 800280e:	005b      	lslne	r3, r3, #1
 8002810:	fbb3 f2f1 	udiv	r2, r3, r1
 8002814:	fb01 3312 	mls	r3, r1, r2, r3
 8002818:	ebb3 0f51 	cmp.w	r3, r1, lsr #1
 800281c:	6823      	ldr	r3, [r4, #0]
 800281e:	bf28      	it	cs
 8002820:	3201      	addcs	r2, #1
 8002822:	041b      	lsls	r3, r3, #16
 8002824:	bf41      	itttt	mi
 8002826:	f64f 73f0 	movwmi	r3, #65520	; 0xfff0
 800282a:	f3c2 0142 	ubfxmi	r1, r2, #1, #3
 800282e:	4013      	andmi	r3, r2
 8002830:	ea41 0203 	orrmi.w	r2, r1, r3
 8002834:	b292      	uxth	r2, r2
 8002836:	81a2      	strh	r2, [r4, #12]
 8002838:	b019      	add	sp, #100	; 0x64
 800283a:	bd30      	pop	{r4, r5, pc}
 800283c:	40013800 	.word	0x40013800
 8002840:	40004400 	.word	0x40004400
 8002844:	40004800 	.word	0x40004800
 8002848:	40004c00 	.word	0x40004c00

0800284c <USART_Cmd>:
 800284c:	bf00      	nop
 800284e:	bf00      	nop
 8002850:	6803      	ldr	r3, [r0, #0]
 8002852:	b111      	cbz	r1, 800285a <USART_Cmd+0xe>
 8002854:	f043 0301 	orr.w	r3, r3, #1
 8002858:	e001      	b.n	800285e <USART_Cmd+0x12>
 800285a:	f023 0301 	bic.w	r3, r3, #1
 800285e:	6003      	str	r3, [r0, #0]
 8002860:	4770      	bx	lr

08002862 <USART_ReceiveData>:
 8002862:	bf00      	nop
 8002864:	8c80      	ldrh	r0, [r0, #36]	; 0x24
 8002866:	f3c0 0008 	ubfx	r0, r0, #0, #9
 800286a:	4770      	bx	lr

0800286c <USART_ITConfig>:
 800286c:	b510      	push	{r4, lr}
 800286e:	bf00      	nop
 8002870:	bf00      	nop
 8002872:	bf00      	nop
 8002874:	f3c1 2407 	ubfx	r4, r1, #8, #8
 8002878:	2301      	movs	r3, #1
 800287a:	b2c9      	uxtb	r1, r1
 800287c:	2c02      	cmp	r4, #2
 800287e:	fa03 f301 	lsl.w	r3, r3, r1
 8002882:	d101      	bne.n	8002888 <USART_ITConfig+0x1c>
 8002884:	3004      	adds	r0, #4
 8002886:	e002      	b.n	800288e <USART_ITConfig+0x22>
 8002888:	2c03      	cmp	r4, #3
 800288a:	bf08      	it	eq
 800288c:	3008      	addeq	r0, #8
 800288e:	b112      	cbz	r2, 8002896 <USART_ITConfig+0x2a>
 8002890:	6802      	ldr	r2, [r0, #0]
 8002892:	4313      	orrs	r3, r2
 8002894:	e002      	b.n	800289c <USART_ITConfig+0x30>
 8002896:	6802      	ldr	r2, [r0, #0]
 8002898:	ea22 0303 	bic.w	r3, r2, r3
 800289c:	6003      	str	r3, [r0, #0]
 800289e:	bd10      	pop	{r4, pc}

080028a0 <USART_GetITStatus>:
 80028a0:	b510      	push	{r4, lr}
 80028a2:	bf00      	nop
 80028a4:	bf00      	nop
 80028a6:	f3c1 2207 	ubfx	r2, r1, #8, #8
 80028aa:	b2cc      	uxtb	r4, r1
 80028ac:	2301      	movs	r3, #1
 80028ae:	2a01      	cmp	r2, #1
 80028b0:	fa03 f304 	lsl.w	r3, r3, r4
 80028b4:	d101      	bne.n	80028ba <USART_GetITStatus+0x1a>
 80028b6:	6802      	ldr	r2, [r0, #0]
 80028b8:	e003      	b.n	80028c2 <USART_GetITStatus+0x22>
 80028ba:	2a02      	cmp	r2, #2
 80028bc:	bf0c      	ite	eq
 80028be:	6842      	ldreq	r2, [r0, #4]
 80028c0:	6882      	ldrne	r2, [r0, #8]
 80028c2:	4013      	ands	r3, r2
 80028c4:	69c2      	ldr	r2, [r0, #28]
 80028c6:	b13b      	cbz	r3, 80028d8 <USART_GetITStatus+0x38>
 80028c8:	0c09      	lsrs	r1, r1, #16
 80028ca:	2301      	movs	r3, #1
 80028cc:	408b      	lsls	r3, r1
 80028ce:	4213      	tst	r3, r2
 80028d0:	bf14      	ite	ne
 80028d2:	2001      	movne	r0, #1
 80028d4:	2000      	moveq	r0, #0
 80028d6:	bd10      	pop	{r4, pc}
 80028d8:	4618      	mov	r0, r3
 80028da:	bd10      	pop	{r4, pc}

080028dc <USART_ClearITPendingBit>:
 80028dc:	bf00      	nop
 80028de:	bf00      	nop
 80028e0:	2301      	movs	r3, #1
 80028e2:	0c09      	lsrs	r1, r1, #16
 80028e4:	408b      	lsls	r3, r1
 80028e6:	6203      	str	r3, [r0, #32]
 80028e8:	4770      	bx	lr
	...

080028ec <uart_write>:
 80028ec:	4b04      	ldr	r3, [pc, #16]	; (8002900 <uart_write+0x14>)
 80028ee:	69da      	ldr	r2, [r3, #28]
 80028f0:	0612      	lsls	r2, r2, #24
 80028f2:	d401      	bmi.n	80028f8 <uart_write+0xc>
 80028f4:	bf00      	nop
 80028f6:	e7f9      	b.n	80028ec <uart_write>
 80028f8:	b280      	uxth	r0, r0
 80028fa:	8518      	strh	r0, [r3, #40]	; 0x28
 80028fc:	4770      	bx	lr
 80028fe:	bf00      	nop
 8002900:	40013800 	.word	0x40013800

08002904 <uart_init>:
 8002904:	b530      	push	{r4, r5, lr}
 8002906:	4b2c      	ldr	r3, [pc, #176]	; (80029b8 <uart_init+0xb4>)
 8002908:	4d2c      	ldr	r5, [pc, #176]	; (80029bc <uart_init+0xb8>)
 800290a:	2400      	movs	r4, #0
 800290c:	601c      	str	r4, [r3, #0]
 800290e:	4b2c      	ldr	r3, [pc, #176]	; (80029c0 <uart_init+0xbc>)
 8002910:	b08b      	sub	sp, #44	; 0x2c
 8002912:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 8002916:	2101      	movs	r1, #1
 8002918:	601c      	str	r4, [r3, #0]
 800291a:	f7ff fd59 	bl	80023d0 <RCC_AHBPeriphClockCmd>
 800291e:	f44f 4080 	mov.w	r0, #16384	; 0x4000
 8002922:	2101      	movs	r1, #1
 8002924:	f7ff fd62 	bl	80023ec <RCC_APB2PeriphClockCmd>
 8002928:	f44f 63c0 	mov.w	r3, #1536	; 0x600
 800292c:	9302      	str	r3, [sp, #8]
 800292e:	2302      	movs	r3, #2
 8002930:	f88d 300c 	strb.w	r3, [sp, #12]
 8002934:	a902      	add	r1, sp, #8
 8002936:	2303      	movs	r3, #3
 8002938:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 800293c:	f88d 300d 	strb.w	r3, [sp, #13]
 8002940:	f88d 400e 	strb.w	r4, [sp, #14]
 8002944:	f88d 400f 	strb.w	r4, [sp, #15]
 8002948:	f000 fbd8 	bl	80030fc <GPIO_Init>
 800294c:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8002950:	2109      	movs	r1, #9
 8002952:	2207      	movs	r2, #7
 8002954:	f000 fc1c 	bl	8003190 <GPIO_PinAFConfig>
 8002958:	2207      	movs	r2, #7
 800295a:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 800295e:	210a      	movs	r1, #10
 8002960:	f000 fc16 	bl	8003190 <GPIO_PinAFConfig>
 8002964:	f44f 33e1 	mov.w	r3, #115200	; 0x1c200
 8002968:	9304      	str	r3, [sp, #16]
 800296a:	4628      	mov	r0, r5
 800296c:	230c      	movs	r3, #12
 800296e:	a904      	add	r1, sp, #16
 8002970:	9308      	str	r3, [sp, #32]
 8002972:	9405      	str	r4, [sp, #20]
 8002974:	9406      	str	r4, [sp, #24]
 8002976:	9407      	str	r4, [sp, #28]
 8002978:	9409      	str	r4, [sp, #36]	; 0x24
 800297a:	f7ff ff05 	bl	8002788 <USART_Init>
 800297e:	4628      	mov	r0, r5
 8002980:	2101      	movs	r1, #1
 8002982:	f7ff ff63 	bl	800284c <USART_Cmd>
 8002986:	2201      	movs	r2, #1
 8002988:	4628      	mov	r0, r5
 800298a:	490e      	ldr	r1, [pc, #56]	; (80029c4 <uart_init+0xc0>)
 800298c:	f7ff ff6e 	bl	800286c <USART_ITConfig>
 8002990:	2325      	movs	r3, #37	; 0x25
 8002992:	f88d 4005 	strb.w	r4, [sp, #5]
 8002996:	f88d 4006 	strb.w	r4, [sp, #6]
 800299a:	a801      	add	r0, sp, #4
 800299c:	2401      	movs	r4, #1
 800299e:	f88d 3004 	strb.w	r3, [sp, #4]
 80029a2:	f88d 4007 	strb.w	r4, [sp, #7]
 80029a6:	f000 facb 	bl	8002f40 <NVIC_Init>
 80029aa:	4628      	mov	r0, r5
 80029ac:	4621      	mov	r1, r4
 80029ae:	f7ff ff4d 	bl	800284c <USART_Cmd>
 80029b2:	b00b      	add	sp, #44	; 0x2c
 80029b4:	bd30      	pop	{r4, r5, pc}
 80029b6:	bf00      	nop
 80029b8:	20001368 	.word	0x20001368
 80029bc:	40013800 	.word	0x40013800
 80029c0:	2000136c 	.word	0x2000136c
 80029c4:	00050105 	.word	0x00050105

080029c8 <USART1_IRQHandler>:
 80029c8:	b508      	push	{r3, lr}
 80029ca:	480d      	ldr	r0, [pc, #52]	; (8002a00 <USART1_IRQHandler+0x38>)
 80029cc:	490d      	ldr	r1, [pc, #52]	; (8002a04 <USART1_IRQHandler+0x3c>)
 80029ce:	f7ff ff67 	bl	80028a0 <USART_GetITStatus>
 80029d2:	b178      	cbz	r0, 80029f4 <USART1_IRQHandler+0x2c>
 80029d4:	480a      	ldr	r0, [pc, #40]	; (8002a00 <USART1_IRQHandler+0x38>)
 80029d6:	f7ff ff44 	bl	8002862 <USART_ReceiveData>
 80029da:	4b0b      	ldr	r3, [pc, #44]	; (8002a08 <USART1_IRQHandler+0x40>)
 80029dc:	490b      	ldr	r1, [pc, #44]	; (8002a0c <USART1_IRQHandler+0x44>)
 80029de:	681a      	ldr	r2, [r3, #0]
 80029e0:	b2c0      	uxtb	r0, r0
 80029e2:	5488      	strb	r0, [r1, r2]
 80029e4:	681a      	ldr	r2, [r3, #0]
 80029e6:	3201      	adds	r2, #1
 80029e8:	601a      	str	r2, [r3, #0]
 80029ea:	681a      	ldr	r2, [r3, #0]
 80029ec:	2a1f      	cmp	r2, #31
 80029ee:	bf84      	itt	hi
 80029f0:	2200      	movhi	r2, #0
 80029f2:	601a      	strhi	r2, [r3, #0]
 80029f4:	4802      	ldr	r0, [pc, #8]	; (8002a00 <USART1_IRQHandler+0x38>)
 80029f6:	4903      	ldr	r1, [pc, #12]	; (8002a04 <USART1_IRQHandler+0x3c>)
 80029f8:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80029fc:	f7ff bf6e 	b.w	80028dc <USART_ClearITPendingBit>
 8002a00:	40013800 	.word	0x40013800
 8002a04:	00050105 	.word	0x00050105
 8002a08:	20001368 	.word	0x20001368
 8002a0c:	20001348 	.word	0x20001348

08002a10 <i2c_delay>:
 8002a10:	bf00      	nop
 8002a12:	bf00      	nop
 8002a14:	bf00      	nop
 8002a16:	bf00      	nop
 8002a18:	4770      	bx	lr
	...

08002a1c <SetLowSDA>:
 8002a1c:	b537      	push	{r0, r1, r2, r4, r5, lr}
 8002a1e:	4d0d      	ldr	r5, [pc, #52]	; (8002a54 <SetLowSDA+0x38>)
 8002a20:	2301      	movs	r3, #1
 8002a22:	2203      	movs	r2, #3
 8002a24:	2480      	movs	r4, #128	; 0x80
 8002a26:	f88d 3004 	strb.w	r3, [sp, #4]
 8002a2a:	f88d 3006 	strb.w	r3, [sp, #6]
 8002a2e:	4628      	mov	r0, r5
 8002a30:	2300      	movs	r3, #0
 8002a32:	4669      	mov	r1, sp
 8002a34:	f88d 2005 	strb.w	r2, [sp, #5]
 8002a38:	f88d 3007 	strb.w	r3, [sp, #7]
 8002a3c:	9400      	str	r4, [sp, #0]
 8002a3e:	f000 fb5d 	bl	80030fc <GPIO_Init>
 8002a42:	4628      	mov	r0, r5
 8002a44:	4621      	mov	r1, r4
 8002a46:	f000 fb9f 	bl	8003188 <GPIO_ResetBits>
 8002a4a:	f7ff ffe1 	bl	8002a10 <i2c_delay>
 8002a4e:	b003      	add	sp, #12
 8002a50:	bd30      	pop	{r4, r5, pc}
 8002a52:	bf00      	nop
 8002a54:	48000400 	.word	0x48000400

08002a58 <SetHighSDA>:
 8002a58:	b537      	push	{r0, r1, r2, r4, r5, lr}
 8002a5a:	4d0d      	ldr	r5, [pc, #52]	; (8002a90 <SetHighSDA+0x38>)
 8002a5c:	2203      	movs	r2, #3
 8002a5e:	2300      	movs	r3, #0
 8002a60:	2480      	movs	r4, #128	; 0x80
 8002a62:	f88d 2005 	strb.w	r2, [sp, #5]
 8002a66:	4628      	mov	r0, r5
 8002a68:	2201      	movs	r2, #1
 8002a6a:	4669      	mov	r1, sp
 8002a6c:	f88d 3004 	strb.w	r3, [sp, #4]
 8002a70:	f88d 2006 	strb.w	r2, [sp, #6]
 8002a74:	f88d 3007 	strb.w	r3, [sp, #7]
 8002a78:	9400      	str	r4, [sp, #0]
 8002a7a:	f000 fb3f 	bl	80030fc <GPIO_Init>
 8002a7e:	4628      	mov	r0, r5
 8002a80:	4621      	mov	r1, r4
 8002a82:	f000 fb7d 	bl	8003180 <GPIO_SetBits>
 8002a86:	f7ff ffc3 	bl	8002a10 <i2c_delay>
 8002a8a:	b003      	add	sp, #12
 8002a8c:	bd30      	pop	{r4, r5, pc}
 8002a8e:	bf00      	nop
 8002a90:	48000400 	.word	0x48000400

08002a94 <SetLowSCL>:
 8002a94:	b508      	push	{r3, lr}
 8002a96:	4804      	ldr	r0, [pc, #16]	; (8002aa8 <SetLowSCL+0x14>)
 8002a98:	2140      	movs	r1, #64	; 0x40
 8002a9a:	f000 fb75 	bl	8003188 <GPIO_ResetBits>
 8002a9e:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8002aa2:	f7ff bfb5 	b.w	8002a10 <i2c_delay>
 8002aa6:	bf00      	nop
 8002aa8:	48000400 	.word	0x48000400

08002aac <SetHighSCL>:
 8002aac:	b508      	push	{r3, lr}
 8002aae:	4804      	ldr	r0, [pc, #16]	; (8002ac0 <SetHighSCL+0x14>)
 8002ab0:	2140      	movs	r1, #64	; 0x40
 8002ab2:	f000 fb65 	bl	8003180 <GPIO_SetBits>
 8002ab6:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8002aba:	f7ff bfa9 	b.w	8002a10 <i2c_delay>
 8002abe:	bf00      	nop
 8002ac0:	48000400 	.word	0x48000400

08002ac4 <i2c_0_init>:
 8002ac4:	b507      	push	{r0, r1, r2, lr}
 8002ac6:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 8002aca:	2101      	movs	r1, #1
 8002acc:	f7ff fc80 	bl	80023d0 <RCC_AHBPeriphClockCmd>
 8002ad0:	23c0      	movs	r3, #192	; 0xc0
 8002ad2:	9300      	str	r3, [sp, #0]
 8002ad4:	2301      	movs	r3, #1
 8002ad6:	2203      	movs	r2, #3
 8002ad8:	480a      	ldr	r0, [pc, #40]	; (8002b04 <i2c_0_init+0x40>)
 8002ada:	f88d 3004 	strb.w	r3, [sp, #4]
 8002ade:	4669      	mov	r1, sp
 8002ae0:	f88d 3006 	strb.w	r3, [sp, #6]
 8002ae4:	2300      	movs	r3, #0
 8002ae6:	f88d 2005 	strb.w	r2, [sp, #5]
 8002aea:	f88d 3007 	strb.w	r3, [sp, #7]
 8002aee:	f000 fb05 	bl	80030fc <GPIO_Init>
 8002af2:	f7ff ffdb 	bl	8002aac <SetHighSCL>
 8002af6:	f7ff ff91 	bl	8002a1c <SetLowSDA>
 8002afa:	f7ff ffad 	bl	8002a58 <SetHighSDA>
 8002afe:	b003      	add	sp, #12
 8002b00:	f85d fb04 	ldr.w	pc, [sp], #4
 8002b04:	48000400 	.word	0x48000400

08002b08 <i2cStart>:
 8002b08:	b508      	push	{r3, lr}
 8002b0a:	f7ff ffcf 	bl	8002aac <SetHighSCL>
 8002b0e:	f7ff ffa3 	bl	8002a58 <SetHighSDA>
 8002b12:	f7ff ffcb 	bl	8002aac <SetHighSCL>
 8002b16:	f7ff ff81 	bl	8002a1c <SetLowSDA>
 8002b1a:	f7ff ffbb 	bl	8002a94 <SetLowSCL>
 8002b1e:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8002b22:	f7ff bf99 	b.w	8002a58 <SetHighSDA>

08002b26 <i2cStop>:
 8002b26:	b508      	push	{r3, lr}
 8002b28:	f7ff ffb4 	bl	8002a94 <SetLowSCL>
 8002b2c:	f7ff ff76 	bl	8002a1c <SetLowSDA>
 8002b30:	f7ff ffbc 	bl	8002aac <SetHighSCL>
 8002b34:	f7ff ff72 	bl	8002a1c <SetLowSDA>
 8002b38:	f7ff ffb8 	bl	8002aac <SetHighSCL>
 8002b3c:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8002b40:	f7ff bf8a 	b.w	8002a58 <SetHighSDA>

08002b44 <i2cWrite>:
 8002b44:	b538      	push	{r3, r4, r5, lr}
 8002b46:	4605      	mov	r5, r0
 8002b48:	2408      	movs	r4, #8
 8002b4a:	f7ff ffa3 	bl	8002a94 <SetLowSCL>
 8002b4e:	062b      	lsls	r3, r5, #24
 8002b50:	d502      	bpl.n	8002b58 <i2cWrite+0x14>
 8002b52:	f7ff ff81 	bl	8002a58 <SetHighSDA>
 8002b56:	e001      	b.n	8002b5c <i2cWrite+0x18>
 8002b58:	f7ff ff60 	bl	8002a1c <SetLowSDA>
 8002b5c:	3c01      	subs	r4, #1
 8002b5e:	f7ff ffa5 	bl	8002aac <SetHighSCL>
 8002b62:	006d      	lsls	r5, r5, #1
 8002b64:	f014 04ff 	ands.w	r4, r4, #255	; 0xff
 8002b68:	b2ed      	uxtb	r5, r5
 8002b6a:	d1ee      	bne.n	8002b4a <i2cWrite+0x6>
 8002b6c:	f7ff ff92 	bl	8002a94 <SetLowSCL>
 8002b70:	f7ff ff72 	bl	8002a58 <SetHighSDA>
 8002b74:	f7ff ff9a 	bl	8002aac <SetHighSCL>
 8002b78:	4b05      	ldr	r3, [pc, #20]	; (8002b90 <i2cWrite+0x4c>)
 8002b7a:	8a1c      	ldrh	r4, [r3, #16]
 8002b7c:	b2a4      	uxth	r4, r4
 8002b7e:	f7ff ff89 	bl	8002a94 <SetLowSCL>
 8002b82:	f7ff ff45 	bl	8002a10 <i2c_delay>
 8002b86:	f084 0080 	eor.w	r0, r4, #128	; 0x80
 8002b8a:	f3c0 10c0 	ubfx	r0, r0, #7, #1
 8002b8e:	bd38      	pop	{r3, r4, r5, pc}
 8002b90:	48000400 	.word	0x48000400

08002b94 <i2cRead>:
 8002b94:	b570      	push	{r4, r5, r6, lr}
 8002b96:	4606      	mov	r6, r0
 8002b98:	f7ff ff7c 	bl	8002a94 <SetLowSCL>
 8002b9c:	f7ff ff5c 	bl	8002a58 <SetHighSDA>
 8002ba0:	2508      	movs	r5, #8
 8002ba2:	2400      	movs	r4, #0
 8002ba4:	f7ff ff82 	bl	8002aac <SetHighSCL>
 8002ba8:	4b0d      	ldr	r3, [pc, #52]	; (8002be0 <i2cRead+0x4c>)
 8002baa:	8a1b      	ldrh	r3, [r3, #16]
 8002bac:	0064      	lsls	r4, r4, #1
 8002bae:	061b      	lsls	r3, r3, #24
 8002bb0:	b2e4      	uxtb	r4, r4
 8002bb2:	bf48      	it	mi
 8002bb4:	3401      	addmi	r4, #1
 8002bb6:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 8002bba:	bf48      	it	mi
 8002bbc:	b2e4      	uxtbmi	r4, r4
 8002bbe:	f7ff ff69 	bl	8002a94 <SetLowSCL>
 8002bc2:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 8002bc6:	d1ed      	bne.n	8002ba4 <i2cRead+0x10>
 8002bc8:	b10e      	cbz	r6, 8002bce <i2cRead+0x3a>
 8002bca:	f7ff ff27 	bl	8002a1c <SetLowSDA>
 8002bce:	f7ff ff6d 	bl	8002aac <SetHighSCL>
 8002bd2:	f7ff ff5f 	bl	8002a94 <SetLowSCL>
 8002bd6:	f7ff ff1b 	bl	8002a10 <i2c_delay>
 8002bda:	4620      	mov	r0, r4
 8002bdc:	bd70      	pop	{r4, r5, r6, pc}
 8002bde:	bf00      	nop
 8002be0:	48000400 	.word	0x48000400

08002be4 <i2c_write_reg>:
 8002be4:	b570      	push	{r4, r5, r6, lr}
 8002be6:	4606      	mov	r6, r0
 8002be8:	460d      	mov	r5, r1
 8002bea:	4614      	mov	r4, r2
 8002bec:	f7ff ff8c 	bl	8002b08 <i2cStart>
 8002bf0:	4630      	mov	r0, r6
 8002bf2:	f7ff ffa7 	bl	8002b44 <i2cWrite>
 8002bf6:	4628      	mov	r0, r5
 8002bf8:	f7ff ffa4 	bl	8002b44 <i2cWrite>
 8002bfc:	4620      	mov	r0, r4
 8002bfe:	f7ff ffa1 	bl	8002b44 <i2cWrite>
 8002c02:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8002c06:	f7ff bf8e 	b.w	8002b26 <i2cStop>

08002c0a <i2c_read_reg>:
 8002c0a:	b538      	push	{r3, r4, r5, lr}
 8002c0c:	4604      	mov	r4, r0
 8002c0e:	460d      	mov	r5, r1
 8002c10:	f7ff ff7a 	bl	8002b08 <i2cStart>
 8002c14:	4620      	mov	r0, r4
 8002c16:	f7ff ff95 	bl	8002b44 <i2cWrite>
 8002c1a:	4628      	mov	r0, r5
 8002c1c:	f7ff ff92 	bl	8002b44 <i2cWrite>
 8002c20:	f7ff ff72 	bl	8002b08 <i2cStart>
 8002c24:	f044 0001 	orr.w	r0, r4, #1
 8002c28:	f7ff ff8c 	bl	8002b44 <i2cWrite>
 8002c2c:	2000      	movs	r0, #0
 8002c2e:	f7ff ffb1 	bl	8002b94 <i2cRead>
 8002c32:	4604      	mov	r4, r0
 8002c34:	f7ff ff77 	bl	8002b26 <i2cStop>
 8002c38:	4620      	mov	r0, r4
 8002c3a:	bd38      	pop	{r3, r4, r5, pc}

08002c3c <SystemInit>:
 8002c3c:	4a39      	ldr	r2, [pc, #228]	; (8002d24 <SystemInit+0xe8>)
 8002c3e:	f8d2 3088 	ldr.w	r3, [r2, #136]	; 0x88
 8002c42:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
 8002c46:	f8c2 3088 	str.w	r3, [r2, #136]	; 0x88
 8002c4a:	4b37      	ldr	r3, [pc, #220]	; (8002d28 <SystemInit+0xec>)
 8002c4c:	681a      	ldr	r2, [r3, #0]
 8002c4e:	f042 0201 	orr.w	r2, r2, #1
 8002c52:	601a      	str	r2, [r3, #0]
 8002c54:	6859      	ldr	r1, [r3, #4]
 8002c56:	4a35      	ldr	r2, [pc, #212]	; (8002d2c <SystemInit+0xf0>)
 8002c58:	400a      	ands	r2, r1
 8002c5a:	605a      	str	r2, [r3, #4]
 8002c5c:	681a      	ldr	r2, [r3, #0]
 8002c5e:	f022 7284 	bic.w	r2, r2, #17301504	; 0x1080000
 8002c62:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
 8002c66:	601a      	str	r2, [r3, #0]
 8002c68:	681a      	ldr	r2, [r3, #0]
 8002c6a:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 8002c6e:	601a      	str	r2, [r3, #0]
 8002c70:	685a      	ldr	r2, [r3, #4]
 8002c72:	f422 02fe 	bic.w	r2, r2, #8323072	; 0x7f0000
 8002c76:	605a      	str	r2, [r3, #4]
 8002c78:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8002c7a:	f022 020f 	bic.w	r2, r2, #15
 8002c7e:	62da      	str	r2, [r3, #44]	; 0x2c
 8002c80:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8002c82:	4a2b      	ldr	r2, [pc, #172]	; (8002d30 <SystemInit+0xf4>)
 8002c84:	b082      	sub	sp, #8
 8002c86:	400a      	ands	r2, r1
 8002c88:	631a      	str	r2, [r3, #48]	; 0x30
 8002c8a:	2200      	movs	r2, #0
 8002c8c:	609a      	str	r2, [r3, #8]
 8002c8e:	9200      	str	r2, [sp, #0]
 8002c90:	9201      	str	r2, [sp, #4]
 8002c92:	681a      	ldr	r2, [r3, #0]
 8002c94:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
 8002c98:	601a      	str	r2, [r3, #0]
 8002c9a:	681a      	ldr	r2, [r3, #0]
 8002c9c:	f402 3200 	and.w	r2, r2, #131072	; 0x20000
 8002ca0:	9201      	str	r2, [sp, #4]
 8002ca2:	9a00      	ldr	r2, [sp, #0]
 8002ca4:	3201      	adds	r2, #1
 8002ca6:	9200      	str	r2, [sp, #0]
 8002ca8:	9a01      	ldr	r2, [sp, #4]
 8002caa:	b91a      	cbnz	r2, 8002cb4 <SystemInit+0x78>
 8002cac:	9a00      	ldr	r2, [sp, #0]
 8002cae:	f5b2 4fa0 	cmp.w	r2, #20480	; 0x5000
 8002cb2:	d1f2      	bne.n	8002c9a <SystemInit+0x5e>
 8002cb4:	681a      	ldr	r2, [r3, #0]
 8002cb6:	f412 3200 	ands.w	r2, r2, #131072	; 0x20000
 8002cba:	bf18      	it	ne
 8002cbc:	2201      	movne	r2, #1
 8002cbe:	9201      	str	r2, [sp, #4]
 8002cc0:	9a01      	ldr	r2, [sp, #4]
 8002cc2:	2a01      	cmp	r2, #1
 8002cc4:	d005      	beq.n	8002cd2 <SystemInit+0x96>
 8002cc6:	4b17      	ldr	r3, [pc, #92]	; (8002d24 <SystemInit+0xe8>)
 8002cc8:	f04f 6200 	mov.w	r2, #134217728	; 0x8000000
 8002ccc:	609a      	str	r2, [r3, #8]
 8002cce:	b002      	add	sp, #8
 8002cd0:	4770      	bx	lr
 8002cd2:	4a18      	ldr	r2, [pc, #96]	; (8002d34 <SystemInit+0xf8>)
 8002cd4:	2112      	movs	r1, #18
 8002cd6:	6011      	str	r1, [r2, #0]
 8002cd8:	685a      	ldr	r2, [r3, #4]
 8002cda:	605a      	str	r2, [r3, #4]
 8002cdc:	685a      	ldr	r2, [r3, #4]
 8002cde:	605a      	str	r2, [r3, #4]
 8002ce0:	685a      	ldr	r2, [r3, #4]
 8002ce2:	f442 6280 	orr.w	r2, r2, #1024	; 0x400
 8002ce6:	605a      	str	r2, [r3, #4]
 8002ce8:	685a      	ldr	r2, [r3, #4]
 8002cea:	f422 127c 	bic.w	r2, r2, #4128768	; 0x3f0000
 8002cee:	605a      	str	r2, [r3, #4]
 8002cf0:	685a      	ldr	r2, [r3, #4]
 8002cf2:	f442 12e8 	orr.w	r2, r2, #1900544	; 0x1d0000
 8002cf6:	605a      	str	r2, [r3, #4]
 8002cf8:	681a      	ldr	r2, [r3, #0]
 8002cfa:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
 8002cfe:	601a      	str	r2, [r3, #0]
 8002d00:	6819      	ldr	r1, [r3, #0]
 8002d02:	4a09      	ldr	r2, [pc, #36]	; (8002d28 <SystemInit+0xec>)
 8002d04:	0189      	lsls	r1, r1, #6
 8002d06:	d5fb      	bpl.n	8002d00 <SystemInit+0xc4>
 8002d08:	6851      	ldr	r1, [r2, #4]
 8002d0a:	f021 0103 	bic.w	r1, r1, #3
 8002d0e:	6051      	str	r1, [r2, #4]
 8002d10:	6851      	ldr	r1, [r2, #4]
 8002d12:	f041 0102 	orr.w	r1, r1, #2
 8002d16:	6051      	str	r1, [r2, #4]
 8002d18:	685a      	ldr	r2, [r3, #4]
 8002d1a:	f002 020c 	and.w	r2, r2, #12
 8002d1e:	2a08      	cmp	r2, #8
 8002d20:	d1fa      	bne.n	8002d18 <SystemInit+0xdc>
 8002d22:	e7d0      	b.n	8002cc6 <SystemInit+0x8a>
 8002d24:	e000ed00 	.word	0xe000ed00
 8002d28:	40021000 	.word	0x40021000
 8002d2c:	f87fc00c 	.word	0xf87fc00c
 8002d30:	ff00fccc 	.word	0xff00fccc
 8002d34:	40022000 	.word	0x40022000

08002d38 <sys_tick_init>:
 8002d38:	4b06      	ldr	r3, [pc, #24]	; (8002d54 <sys_tick_init+0x1c>)
 8002d3a:	f244 6250 	movw	r2, #18000	; 0x4650
 8002d3e:	605a      	str	r2, [r3, #4]
 8002d40:	4a05      	ldr	r2, [pc, #20]	; (8002d58 <sys_tick_init+0x20>)
 8002d42:	21f0      	movs	r1, #240	; 0xf0
 8002d44:	f882 1023 	strb.w	r1, [r2, #35]	; 0x23
 8002d48:	2200      	movs	r2, #0
 8002d4a:	609a      	str	r2, [r3, #8]
 8002d4c:	2207      	movs	r2, #7
 8002d4e:	601a      	str	r2, [r3, #0]
 8002d50:	4770      	bx	lr
 8002d52:	bf00      	nop
 8002d54:	e000e010 	.word	0xe000e010
 8002d58:	e000ed00 	.word	0xe000ed00

08002d5c <sleep>:
 8002d5c:	bf30      	wfi
 8002d5e:	4770      	bx	lr

08002d60 <core_yield>:
 8002d60:	bf00      	nop
 8002d62:	4770      	bx	lr

08002d64 <sytem_clock_init>:
 8002d64:	f7ff bf6a 	b.w	8002c3c <SystemInit>

08002d68 <pwm_set>:
 8002d68:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8002d6c:	b086      	sub	sp, #24
 8002d6e:	2370      	movs	r3, #112	; 0x70
 8002d70:	9301      	str	r3, [sp, #4]
 8002d72:	2301      	movs	r3, #1
 8002d74:	f8ad 3008 	strh.w	r3, [sp, #8]
 8002d78:	2304      	movs	r3, #4
 8002d7a:	f8ad 300a 	strh.w	r3, [sp, #10]
 8002d7e:	f8df 8064 	ldr.w	r8, [pc, #100]	; 8002de4 <pwm_set+0x7c>
 8002d82:	4c17      	ldr	r4, [pc, #92]	; (8002de0 <pwm_set+0x78>)
 8002d84:	2302      	movs	r3, #2
 8002d86:	f8ad 3010 	strh.w	r3, [sp, #16]
 8002d8a:	2300      	movs	r3, #0
 8002d8c:	f8ad 3012 	strh.w	r3, [sp, #18]
 8002d90:	f8ad 3016 	strh.w	r3, [sp, #22]
 8002d94:	f242 7710 	movw	r7, #10000	; 0x2710
 8002d98:	f8d8 3000 	ldr.w	r3, [r8]
 8002d9c:	fbb3 f3f7 	udiv	r3, r3, r7
 8002da0:	3b02      	subs	r3, #2
 8002da2:	f44f 7280 	mov.w	r2, #256	; 0x100
 8002da6:	460e      	mov	r6, r1
 8002da8:	2564      	movs	r5, #100	; 0x64
 8002daa:	a901      	add	r1, sp, #4
 8002dac:	4358      	muls	r0, r3
 8002dae:	fbb0 f3f5 	udiv	r3, r0, r5
 8002db2:	4620      	mov	r0, r4
 8002db4:	f8ad 2014 	strh.w	r2, [sp, #20]
 8002db8:	9303      	str	r3, [sp, #12]
 8002dba:	f7ff fb91 	bl	80024e0 <TIM_OC1Init>
 8002dbe:	f8d8 1000 	ldr.w	r1, [r8]
 8002dc2:	fbb1 f1f7 	udiv	r1, r1, r7
 8002dc6:	3902      	subs	r1, #2
 8002dc8:	4371      	muls	r1, r6
 8002dca:	4620      	mov	r0, r4
 8002dcc:	fbb1 f1f5 	udiv	r1, r1, r5
 8002dd0:	9103      	str	r1, [sp, #12]
 8002dd2:	a901      	add	r1, sp, #4
 8002dd4:	f7ff fbca 	bl	800256c <TIM_OC2Init>
 8002dd8:	b006      	add	sp, #24
 8002dda:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8002dde:	bf00      	nop
 8002de0:	40012c00 	.word	0x40012c00
 8002de4:	20000068 	.word	0x20000068

08002de8 <pwm_init>:
 8002de8:	b530      	push	{r4, r5, lr}
 8002dea:	f44f 6000 	mov.w	r0, #2048	; 0x800
 8002dee:	b087      	sub	sp, #28
 8002df0:	2101      	movs	r1, #1
 8002df2:	f7ff fafb 	bl	80023ec <RCC_APB2PeriphClockCmd>
 8002df6:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 8002dfa:	2101      	movs	r1, #1
 8002dfc:	f7ff fae8 	bl	80023d0 <RCC_AHBPeriphClockCmd>
 8002e00:	4c1d      	ldr	r4, [pc, #116]	; (8002e78 <pwm_init+0x90>)
 8002e02:	4d1e      	ldr	r5, [pc, #120]	; (8002e7c <pwm_init+0x94>)
 8002e04:	f44f 43c0 	mov.w	r3, #24576	; 0x6000
 8002e08:	9301      	str	r3, [sp, #4]
 8002e0a:	2302      	movs	r3, #2
 8002e0c:	f88d 3008 	strb.w	r3, [sp, #8]
 8002e10:	4620      	mov	r0, r4
 8002e12:	2303      	movs	r3, #3
 8002e14:	a901      	add	r1, sp, #4
 8002e16:	f88d 3009 	strb.w	r3, [sp, #9]
 8002e1a:	f000 f96f 	bl	80030fc <GPIO_Init>
 8002e1e:	4620      	mov	r0, r4
 8002e20:	210d      	movs	r1, #13
 8002e22:	2206      	movs	r2, #6
 8002e24:	f000 f9b4 	bl	8003190 <GPIO_PinAFConfig>
 8002e28:	4620      	mov	r0, r4
 8002e2a:	210e      	movs	r1, #14
 8002e2c:	2206      	movs	r2, #6
 8002e2e:	f000 f9af 	bl	8003190 <GPIO_PinAFConfig>
 8002e32:	4b13      	ldr	r3, [pc, #76]	; (8002e80 <pwm_init+0x98>)
 8002e34:	2400      	movs	r4, #0
 8002e36:	f242 7210 	movw	r2, #10000	; 0x2710
 8002e3a:	4628      	mov	r0, r5
 8002e3c:	a903      	add	r1, sp, #12
 8002e3e:	681b      	ldr	r3, [r3, #0]
 8002e40:	fbb3 f3f2 	udiv	r3, r3, r2
 8002e44:	3b01      	subs	r3, #1
 8002e46:	9304      	str	r3, [sp, #16]
 8002e48:	f8ad 400c 	strh.w	r4, [sp, #12]
 8002e4c:	f8ad 400e 	strh.w	r4, [sp, #14]
 8002e50:	f8ad 4014 	strh.w	r4, [sp, #20]
 8002e54:	f8ad 4016 	strh.w	r4, [sp, #22]
 8002e58:	f7ff fae4 	bl	8002424 <TIM_TimeBaseInit>
 8002e5c:	4620      	mov	r0, r4
 8002e5e:	4621      	mov	r1, r4
 8002e60:	f7ff ff82 	bl	8002d68 <pwm_set>
 8002e64:	4628      	mov	r0, r5
 8002e66:	2101      	movs	r1, #1
 8002e68:	f7ff fb2c 	bl	80024c4 <TIM_Cmd>
 8002e6c:	4628      	mov	r0, r5
 8002e6e:	2101      	movs	r1, #1
 8002e70:	f7ff fbba 	bl	80025e8 <TIM_CtrlPWMOutputs>
 8002e74:	b007      	add	sp, #28
 8002e76:	bd30      	pop	{r4, r5, pc}
 8002e78:	48000400 	.word	0x48000400
 8002e7c:	40012c00 	.word	0x40012c00
 8002e80:	20000068 	.word	0x20000068

08002e84 <drv8834_run>:
 8002e84:	f04f 4290 	mov.w	r2, #1207959552	; 0x48000000
 8002e88:	1e03      	subs	r3, r0, #0
 8002e8a:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8002e8e:	bfce      	itee	gt
 8002e90:	8510      	strhgt	r0, [r2, #40]	; 0x28
 8002e92:	6190      	strle	r0, [r2, #24]
 8002e94:	425b      	negle	r3, r3
 8002e96:	4a09      	ldr	r2, [pc, #36]	; (8002ebc <drv8834_run+0x38>)
 8002e98:	2900      	cmp	r1, #0
 8002e9a:	bfd8      	it	le
 8002e9c:	4249      	negle	r1, r1
 8002e9e:	f04f 0020 	mov.w	r0, #32
 8002ea2:	bfcc      	ite	gt
 8002ea4:	8510      	strhgt	r0, [r2, #40]	; 0x28
 8002ea6:	6190      	strle	r0, [r2, #24]
 8002ea8:	2964      	cmp	r1, #100	; 0x64
 8002eaa:	bfa8      	it	ge
 8002eac:	2164      	movge	r1, #100	; 0x64
 8002eae:	2b64      	cmp	r3, #100	; 0x64
 8002eb0:	bfa8      	it	ge
 8002eb2:	2364      	movge	r3, #100	; 0x64
 8002eb4:	4608      	mov	r0, r1
 8002eb6:	4619      	mov	r1, r3
 8002eb8:	f7ff bf56 	b.w	8002d68 <pwm_set>
 8002ebc:	48000400 	.word	0x48000400

08002ec0 <drv8834_init>:
 8002ec0:	e92d 41f3 	stmdb	sp!, {r0, r1, r4, r5, r6, r7, r8, lr}
 8002ec4:	4f1d      	ldr	r7, [pc, #116]	; (8002f3c <drv8834_init+0x7c>)
 8002ec6:	2400      	movs	r4, #0
 8002ec8:	2601      	movs	r6, #1
 8002eca:	2503      	movs	r5, #3
 8002ecc:	f04f 0810 	mov.w	r8, #16
 8002ed0:	4638      	mov	r0, r7
 8002ed2:	4669      	mov	r1, sp
 8002ed4:	f8cd 8000 	str.w	r8, [sp]
 8002ed8:	f88d 6004 	strb.w	r6, [sp, #4]
 8002edc:	f88d 4006 	strb.w	r4, [sp, #6]
 8002ee0:	f88d 5005 	strb.w	r5, [sp, #5]
 8002ee4:	f88d 4007 	strb.w	r4, [sp, #7]
 8002ee8:	f000 f908 	bl	80030fc <GPIO_Init>
 8002eec:	f8a7 8028 	strh.w	r8, [r7, #40]	; 0x28
 8002ef0:	2320      	movs	r3, #32
 8002ef2:	4638      	mov	r0, r7
 8002ef4:	4669      	mov	r1, sp
 8002ef6:	9300      	str	r3, [sp, #0]
 8002ef8:	f88d 6004 	strb.w	r6, [sp, #4]
 8002efc:	f88d 4006 	strb.w	r4, [sp, #6]
 8002f00:	f88d 5005 	strb.w	r5, [sp, #5]
 8002f04:	f88d 4007 	strb.w	r4, [sp, #7]
 8002f08:	f000 f8f8 	bl	80030fc <GPIO_Init>
 8002f0c:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8002f10:	4669      	mov	r1, sp
 8002f12:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8002f16:	9300      	str	r3, [sp, #0]
 8002f18:	f88d 6004 	strb.w	r6, [sp, #4]
 8002f1c:	f88d 4006 	strb.w	r4, [sp, #6]
 8002f20:	f88d 5005 	strb.w	r5, [sp, #5]
 8002f24:	f88d 4007 	strb.w	r4, [sp, #7]
 8002f28:	f000 f8e8 	bl	80030fc <GPIO_Init>
 8002f2c:	4620      	mov	r0, r4
 8002f2e:	4621      	mov	r1, r4
 8002f30:	f7ff ffa8 	bl	8002e84 <drv8834_run>
 8002f34:	b002      	add	sp, #8
 8002f36:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8002f3a:	bf00      	nop
 8002f3c:	48000400 	.word	0x48000400

08002f40 <NVIC_Init>:
 8002f40:	b510      	push	{r4, lr}
 8002f42:	bf00      	nop
 8002f44:	bf00      	nop
 8002f46:	bf00      	nop
 8002f48:	78c2      	ldrb	r2, [r0, #3]
 8002f4a:	7803      	ldrb	r3, [r0, #0]
 8002f4c:	b312      	cbz	r2, 8002f94 <NVIC_Init+0x54>
 8002f4e:	4a17      	ldr	r2, [pc, #92]	; (8002fac <NVIC_Init+0x6c>)
 8002f50:	68d1      	ldr	r1, [r2, #12]
 8002f52:	7842      	ldrb	r2, [r0, #1]
 8002f54:	43c9      	mvns	r1, r1
 8002f56:	f3c1 2102 	ubfx	r1, r1, #8, #3
 8002f5a:	f1c1 0404 	rsb	r4, r1, #4
 8002f5e:	b2e4      	uxtb	r4, r4
 8002f60:	40a2      	lsls	r2, r4
 8002f62:	b2d4      	uxtb	r4, r2
 8002f64:	220f      	movs	r2, #15
 8002f66:	410a      	asrs	r2, r1
 8002f68:	7881      	ldrb	r1, [r0, #2]
 8002f6a:	400a      	ands	r2, r1
 8002f6c:	4322      	orrs	r2, r4
 8002f6e:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
 8002f72:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
 8002f76:	0112      	lsls	r2, r2, #4
 8002f78:	b2d2      	uxtb	r2, r2
 8002f7a:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
 8002f7e:	7803      	ldrb	r3, [r0, #0]
 8002f80:	2201      	movs	r2, #1
 8002f82:	0959      	lsrs	r1, r3, #5
 8002f84:	f003 031f 	and.w	r3, r3, #31
 8002f88:	fa02 f303 	lsl.w	r3, r2, r3
 8002f8c:	4a08      	ldr	r2, [pc, #32]	; (8002fb0 <NVIC_Init+0x70>)
 8002f8e:	f842 3021 	str.w	r3, [r2, r1, lsl #2]
 8002f92:	bd10      	pop	{r4, pc}
 8002f94:	095a      	lsrs	r2, r3, #5
 8002f96:	2101      	movs	r1, #1
 8002f98:	f003 031f 	and.w	r3, r3, #31
 8002f9c:	4099      	lsls	r1, r3
 8002f9e:	f102 0320 	add.w	r3, r2, #32
 8002fa2:	4a03      	ldr	r2, [pc, #12]	; (8002fb0 <NVIC_Init+0x70>)
 8002fa4:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
 8002fa8:	bd10      	pop	{r4, pc}
 8002faa:	bf00      	nop
 8002fac:	e000ed00 	.word	0xe000ed00
 8002fb0:	e000e100 	.word	0xe000e100

08002fb4 <lib_low_level_init>:
 8002fb4:	b508      	push	{r3, lr}
 8002fb6:	f7ff fed5 	bl	8002d64 <sytem_clock_init>
 8002fba:	f000 f969 	bl	8003290 <gpio_init>
 8002fbe:	f7ff fca1 	bl	8002904 <uart_init>
 8002fc2:	f7ff fb21 	bl	8002608 <timer_init>
 8002fc6:	f7ff ff0f 	bl	8002de8 <pwm_init>
 8002fca:	f7ff ff79 	bl	8002ec0 <drv8834_init>
 8002fce:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8002fd2:	f7ff bd77 	b.w	8002ac4 <i2c_0_init>
	...

08002fd8 <EXTI_Init>:
 8002fd8:	b570      	push	{r4, r5, r6, lr}
 8002fda:	bf00      	nop
 8002fdc:	bf00      	nop
 8002fde:	bf00      	nop
 8002fe0:	bf00      	nop
 8002fe2:	7982      	ldrb	r2, [r0, #6]
 8002fe4:	6803      	ldr	r3, [r0, #0]
 8002fe6:	7904      	ldrb	r4, [r0, #4]
 8002fe8:	2a00      	cmp	r2, #0
 8002fea:	d064      	beq.n	80030b6 <EXTI_Init+0xde>
 8002fec:	f023 011f 	bic.w	r1, r3, #31
 8002ff0:	f101 4180 	add.w	r1, r1, #1073741824	; 0x40000000
 8002ff4:	f501 3182 	add.w	r1, r1, #66560	; 0x10400
 8002ff8:	f003 021f 	and.w	r2, r3, #31
 8002ffc:	680d      	ldr	r5, [r1, #0]
 8002ffe:	2301      	movs	r3, #1
 8003000:	fa03 f202 	lsl.w	r2, r3, r2
 8003004:	ea25 0202 	bic.w	r2, r5, r2
 8003008:	600a      	str	r2, [r1, #0]
 800300a:	6802      	ldr	r2, [r0, #0]
 800300c:	4d32      	ldr	r5, [pc, #200]	; (80030d8 <EXTI_Init+0x100>)
 800300e:	f022 061f 	bic.w	r6, r2, #31
 8003012:	f002 021f 	and.w	r2, r2, #31
 8003016:	5971      	ldr	r1, [r6, r5]
 8003018:	fa03 f202 	lsl.w	r2, r3, r2
 800301c:	ea21 0202 	bic.w	r2, r1, r2
 8003020:	5172      	str	r2, [r6, r5]
 8003022:	6801      	ldr	r1, [r0, #0]
 8003024:	f104 4280 	add.w	r2, r4, #1073741824	; 0x40000000
 8003028:	f502 3282 	add.w	r2, r2, #66560	; 0x10400
 800302c:	f021 041f 	bic.w	r4, r1, #31
 8003030:	f001 011f 	and.w	r1, r1, #31
 8003034:	5915      	ldr	r5, [r2, r4]
 8003036:	fa03 f101 	lsl.w	r1, r3, r1
 800303a:	4329      	orrs	r1, r5
 800303c:	5111      	str	r1, [r2, r4]
 800303e:	6802      	ldr	r2, [r0, #0]
 8003040:	4d26      	ldr	r5, [pc, #152]	; (80030dc <EXTI_Init+0x104>)
 8003042:	f022 041f 	bic.w	r4, r2, #31
 8003046:	f002 021f 	and.w	r2, r2, #31
 800304a:	5961      	ldr	r1, [r4, r5]
 800304c:	fa03 f202 	lsl.w	r2, r3, r2
 8003050:	ea21 0202 	bic.w	r2, r1, r2
 8003054:	5162      	str	r2, [r4, r5]
 8003056:	6802      	ldr	r2, [r0, #0]
 8003058:	4c21      	ldr	r4, [pc, #132]	; (80030e0 <EXTI_Init+0x108>)
 800305a:	f022 061f 	bic.w	r6, r2, #31
 800305e:	f002 021f 	and.w	r2, r2, #31
 8003062:	5931      	ldr	r1, [r6, r4]
 8003064:	fa03 f202 	lsl.w	r2, r3, r2
 8003068:	ea21 0202 	bic.w	r2, r1, r2
 800306c:	7941      	ldrb	r1, [r0, #5]
 800306e:	5132      	str	r2, [r6, r4]
 8003070:	2910      	cmp	r1, #16
 8003072:	6802      	ldr	r2, [r0, #0]
 8003074:	d112      	bne.n	800309c <EXTI_Init+0xc4>
 8003076:	f022 011f 	bic.w	r1, r2, #31
 800307a:	f002 021f 	and.w	r2, r2, #31
 800307e:	594e      	ldr	r6, [r1, r5]
 8003080:	fa03 f202 	lsl.w	r2, r3, r2
 8003084:	4332      	orrs	r2, r6
 8003086:	514a      	str	r2, [r1, r5]
 8003088:	6802      	ldr	r2, [r0, #0]
 800308a:	f022 011f 	bic.w	r1, r2, #31
 800308e:	f002 021f 	and.w	r2, r2, #31
 8003092:	5908      	ldr	r0, [r1, r4]
 8003094:	4093      	lsls	r3, r2
 8003096:	4303      	orrs	r3, r0
 8003098:	510b      	str	r3, [r1, r4]
 800309a:	bd70      	pop	{r4, r5, r6, pc}
 800309c:	f101 4180 	add.w	r1, r1, #1073741824	; 0x40000000
 80030a0:	f022 001f 	bic.w	r0, r2, #31
 80030a4:	f501 3182 	add.w	r1, r1, #66560	; 0x10400
 80030a8:	f002 021f 	and.w	r2, r2, #31
 80030ac:	580c      	ldr	r4, [r1, r0]
 80030ae:	4093      	lsls	r3, r2
 80030b0:	4323      	orrs	r3, r4
 80030b2:	500b      	str	r3, [r1, r0]
 80030b4:	bd70      	pop	{r4, r5, r6, pc}
 80030b6:	f104 4280 	add.w	r2, r4, #1073741824	; 0x40000000
 80030ba:	f502 3282 	add.w	r2, r2, #66560	; 0x10400
 80030be:	f023 041f 	bic.w	r4, r3, #31
 80030c2:	2001      	movs	r0, #1
 80030c4:	5911      	ldr	r1, [r2, r4]
 80030c6:	f003 031f 	and.w	r3, r3, #31
 80030ca:	fa00 f303 	lsl.w	r3, r0, r3
 80030ce:	ea21 0303 	bic.w	r3, r1, r3
 80030d2:	5113      	str	r3, [r2, r4]
 80030d4:	bd70      	pop	{r4, r5, r6, pc}
 80030d6:	bf00      	nop
 80030d8:	40010404 	.word	0x40010404
 80030dc:	40010408 	.word	0x40010408
 80030e0:	4001040c 	.word	0x4001040c

080030e4 <EXTI_ClearITPendingBit>:
 80030e4:	f020 011f 	bic.w	r1, r0, #31
 80030e8:	2301      	movs	r3, #1
 80030ea:	f000 001f 	and.w	r0, r0, #31
 80030ee:	4a02      	ldr	r2, [pc, #8]	; (80030f8 <EXTI_ClearITPendingBit+0x14>)
 80030f0:	4083      	lsls	r3, r0
 80030f2:	508b      	str	r3, [r1, r2]
 80030f4:	4770      	bx	lr
 80030f6:	bf00      	nop
 80030f8:	40010414 	.word	0x40010414

080030fc <GPIO_Init>:
 80030fc:	b5f0      	push	{r4, r5, r6, r7, lr}
 80030fe:	bf00      	nop
 8003100:	bf00      	nop
 8003102:	bf00      	nop
 8003104:	bf00      	nop
 8003106:	2300      	movs	r3, #0
 8003108:	680e      	ldr	r6, [r1, #0]
 800310a:	461c      	mov	r4, r3
 800310c:	2501      	movs	r5, #1
 800310e:	40a5      	lsls	r5, r4
 8003110:	ea05 0e06 	and.w	lr, r5, r6
 8003114:	45ae      	cmp	lr, r5
 8003116:	d12d      	bne.n	8003174 <GPIO_Init+0x78>
 8003118:	790f      	ldrb	r7, [r1, #4]
 800311a:	1e7a      	subs	r2, r7, #1
 800311c:	2a01      	cmp	r2, #1
 800311e:	d817      	bhi.n	8003150 <GPIO_Init+0x54>
 8003120:	bf00      	nop
 8003122:	2203      	movs	r2, #3
 8003124:	6885      	ldr	r5, [r0, #8]
 8003126:	409a      	lsls	r2, r3
 8003128:	ea25 0202 	bic.w	r2, r5, r2
 800312c:	6082      	str	r2, [r0, #8]
 800312e:	794d      	ldrb	r5, [r1, #5]
 8003130:	6882      	ldr	r2, [r0, #8]
 8003132:	409d      	lsls	r5, r3
 8003134:	4315      	orrs	r5, r2
 8003136:	6085      	str	r5, [r0, #8]
 8003138:	bf00      	nop
 800313a:	8882      	ldrh	r2, [r0, #4]
 800313c:	b292      	uxth	r2, r2
 800313e:	ea22 020e 	bic.w	r2, r2, lr
 8003142:	8082      	strh	r2, [r0, #4]
 8003144:	798a      	ldrb	r2, [r1, #6]
 8003146:	8885      	ldrh	r5, [r0, #4]
 8003148:	40a2      	lsls	r2, r4
 800314a:	432a      	orrs	r2, r5
 800314c:	b292      	uxth	r2, r2
 800314e:	8082      	strh	r2, [r0, #4]
 8003150:	2203      	movs	r2, #3
 8003152:	6805      	ldr	r5, [r0, #0]
 8003154:	409a      	lsls	r2, r3
 8003156:	43d2      	mvns	r2, r2
 8003158:	4015      	ands	r5, r2
 800315a:	6005      	str	r5, [r0, #0]
 800315c:	6805      	ldr	r5, [r0, #0]
 800315e:	409f      	lsls	r7, r3
 8003160:	432f      	orrs	r7, r5
 8003162:	6007      	str	r7, [r0, #0]
 8003164:	68c7      	ldr	r7, [r0, #12]
 8003166:	4017      	ands	r7, r2
 8003168:	79ca      	ldrb	r2, [r1, #7]
 800316a:	fa02 f503 	lsl.w	r5, r2, r3
 800316e:	ea47 0205 	orr.w	r2, r7, r5
 8003172:	60c2      	str	r2, [r0, #12]
 8003174:	3401      	adds	r4, #1
 8003176:	2c10      	cmp	r4, #16
 8003178:	f103 0302 	add.w	r3, r3, #2
 800317c:	d1c6      	bne.n	800310c <GPIO_Init+0x10>
 800317e:	bdf0      	pop	{r4, r5, r6, r7, pc}

08003180 <GPIO_SetBits>:
 8003180:	bf00      	nop
 8003182:	bf00      	nop
 8003184:	6181      	str	r1, [r0, #24]
 8003186:	4770      	bx	lr

08003188 <GPIO_ResetBits>:
 8003188:	bf00      	nop
 800318a:	bf00      	nop
 800318c:	8501      	strh	r1, [r0, #40]	; 0x28
 800318e:	4770      	bx	lr

08003190 <GPIO_PinAFConfig>:
 8003190:	b510      	push	{r4, lr}
 8003192:	bf00      	nop
 8003194:	bf00      	nop
 8003196:	bf00      	nop
 8003198:	f001 0307 	and.w	r3, r1, #7
 800319c:	08c9      	lsrs	r1, r1, #3
 800319e:	eb00 0081 	add.w	r0, r0, r1, lsl #2
 80031a2:	009b      	lsls	r3, r3, #2
 80031a4:	6a04      	ldr	r4, [r0, #32]
 80031a6:	210f      	movs	r1, #15
 80031a8:	4099      	lsls	r1, r3
 80031aa:	ea24 0101 	bic.w	r1, r4, r1
 80031ae:	6201      	str	r1, [r0, #32]
 80031b0:	6a01      	ldr	r1, [r0, #32]
 80031b2:	409a      	lsls	r2, r3
 80031b4:	430a      	orrs	r2, r1
 80031b6:	6202      	str	r2, [r0, #32]
 80031b8:	bd10      	pop	{r4, pc}
	...

080031bc <EXTI9_5_IRQHandler>:
 80031bc:	4a03      	ldr	r2, [pc, #12]	; (80031cc <EXTI9_5_IRQHandler+0x10>)
 80031be:	6813      	ldr	r3, [r2, #0]
 80031c0:	2006      	movs	r0, #6
 80031c2:	3301      	adds	r3, #1
 80031c4:	6013      	str	r3, [r2, #0]
 80031c6:	f7ff bf8d 	b.w	80030e4 <EXTI_ClearITPendingBit>
 80031ca:	bf00      	nop
 80031cc:	20001378 	.word	0x20001378

080031d0 <EXTI15_10_IRQHandler>:
 80031d0:	4a03      	ldr	r2, [pc, #12]	; (80031e0 <EXTI15_10_IRQHandler+0x10>)
 80031d2:	6813      	ldr	r3, [r2, #0]
 80031d4:	200c      	movs	r0, #12
 80031d6:	3301      	adds	r3, #1
 80031d8:	6013      	str	r3, [r2, #0]
 80031da:	f7ff bf83 	b.w	80030e4 <EXTI_ClearITPendingBit>
 80031de:	bf00      	nop
 80031e0:	20001370 	.word	0x20001370

080031e4 <led_on>:
 80031e4:	0403      	lsls	r3, r0, #16
 80031e6:	bf42      	ittt	mi
 80031e8:	4b02      	ldrmi	r3, [pc, #8]	; (80031f4 <led_on+0x10>)
 80031ea:	f44f 4200 	movmi.w	r2, #32768	; 0x8000
 80031ee:	619a      	strmi	r2, [r3, #24]
 80031f0:	4770      	bx	lr
 80031f2:	bf00      	nop
 80031f4:	48000400 	.word	0x48000400

080031f8 <led_off>:
 80031f8:	0403      	lsls	r3, r0, #16
 80031fa:	bf42      	ittt	mi
 80031fc:	4b02      	ldrmi	r3, [pc, #8]	; (8003208 <led_off+0x10>)
 80031fe:	f44f 4200 	movmi.w	r2, #32768	; 0x8000
 8003202:	851a      	strhmi	r2, [r3, #40]	; 0x28
 8003204:	4770      	bx	lr
 8003206:	bf00      	nop
 8003208:	48000400 	.word	0x48000400

0800320c <get_key>:
 800320c:	4b02      	ldr	r3, [pc, #8]	; (8003218 <get_key+0xc>)
 800320e:	8a18      	ldrh	r0, [r3, #16]
 8003210:	43c0      	mvns	r0, r0
 8003212:	f400 5080 	and.w	r0, r0, #4096	; 0x1000
 8003216:	4770      	bx	lr
 8003218:	48000400 	.word	0x48000400

0800321c <left_encoder_read>:
 800321c:	b082      	sub	sp, #8
 800321e:	b672      	cpsid	i
 8003220:	4b06      	ldr	r3, [pc, #24]	; (800323c <left_encoder_read+0x20>)
 8003222:	681b      	ldr	r3, [r3, #0]
 8003224:	9301      	str	r3, [sp, #4]
 8003226:	b662      	cpsie	i
 8003228:	9801      	ldr	r0, [sp, #4]
 800322a:	f240 23ee 	movw	r3, #750	; 0x2ee
 800322e:	4343      	muls	r3, r0
 8003230:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 8003234:	fbb3 f0f0 	udiv	r0, r3, r0
 8003238:	b002      	add	sp, #8
 800323a:	4770      	bx	lr
 800323c:	20001378 	.word	0x20001378

08003240 <right_encoder_read>:
 8003240:	b082      	sub	sp, #8
 8003242:	b672      	cpsid	i
 8003244:	4b06      	ldr	r3, [pc, #24]	; (8003260 <right_encoder_read+0x20>)
 8003246:	681b      	ldr	r3, [r3, #0]
 8003248:	9301      	str	r3, [sp, #4]
 800324a:	b662      	cpsie	i
 800324c:	9801      	ldr	r0, [sp, #4]
 800324e:	f240 23ee 	movw	r3, #750	; 0x2ee
 8003252:	4343      	muls	r3, r0
 8003254:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 8003258:	fbb3 f0f0 	udiv	r0, r3, r0
 800325c:	b002      	add	sp, #8
 800325e:	4770      	bx	lr
 8003260:	20001370 	.word	0x20001370

08003264 <encoder_get_distance>:
 8003264:	b510      	push	{r4, lr}
 8003266:	f7ff ffd9 	bl	800321c <left_encoder_read>
 800326a:	4604      	mov	r4, r0
 800326c:	f7ff ffe8 	bl	8003240 <right_encoder_read>
 8003270:	4420      	add	r0, r4
 8003272:	0840      	lsrs	r0, r0, #1
 8003274:	bd10      	pop	{r4, pc}
	...

08003278 <encoder_reset>:
 8003278:	b672      	cpsid	i
 800327a:	4a03      	ldr	r2, [pc, #12]	; (8003288 <encoder_reset+0x10>)
 800327c:	2300      	movs	r3, #0
 800327e:	6013      	str	r3, [r2, #0]
 8003280:	4a02      	ldr	r2, [pc, #8]	; (800328c <encoder_reset+0x14>)
 8003282:	6013      	str	r3, [r2, #0]
 8003284:	b662      	cpsie	i
 8003286:	4770      	bx	lr
 8003288:	20001378 	.word	0x20001378
 800328c:	20001370 	.word	0x20001370

08003290 <gpio_init>:
 8003290:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8003294:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 8003298:	b087      	sub	sp, #28
 800329a:	2101      	movs	r1, #1
 800329c:	f7ff f898 	bl	80023d0 <RCC_AHBPeriphClockCmd>
 80032a0:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 80032a4:	2101      	movs	r1, #1
 80032a6:	f7ff f893 	bl	80023d0 <RCC_AHBPeriphClockCmd>
 80032aa:	f44f 2000 	mov.w	r0, #524288	; 0x80000
 80032ae:	2101      	movs	r1, #1
 80032b0:	f7ff f88e 	bl	80023d0 <RCC_AHBPeriphClockCmd>
 80032b4:	2400      	movs	r4, #0
 80032b6:	2603      	movs	r6, #3
 80032b8:	f44f 4500 	mov.w	r5, #32768	; 0x8000
 80032bc:	f04f 0801 	mov.w	r8, #1
 80032c0:	a902      	add	r1, sp, #8
 80032c2:	4846      	ldr	r0, [pc, #280]	; (80033dc <gpio_init+0x14c>)
 80032c4:	9502      	str	r5, [sp, #8]
 80032c6:	f88d 800c 	strb.w	r8, [sp, #12]
 80032ca:	f88d 400e 	strb.w	r4, [sp, #14]
 80032ce:	f88d 600d 	strb.w	r6, [sp, #13]
 80032d2:	f88d 400f 	strb.w	r4, [sp, #15]
 80032d6:	f7ff ff11 	bl	80030fc <GPIO_Init>
 80032da:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 80032de:	a902      	add	r1, sp, #8
 80032e0:	483e      	ldr	r0, [pc, #248]	; (80033dc <gpio_init+0x14c>)
 80032e2:	9302      	str	r3, [sp, #8]
 80032e4:	f88d 400c 	strb.w	r4, [sp, #12]
 80032e8:	f88d 600d 	strb.w	r6, [sp, #13]
 80032ec:	f88d 400f 	strb.w	r4, [sp, #15]
 80032f0:	4f3b      	ldr	r7, [pc, #236]	; (80033e0 <gpio_init+0x150>)
 80032f2:	f7ff ff03 	bl	80030fc <GPIO_Init>
 80032f6:	f44f 6380 	mov.w	r3, #1024	; 0x400
 80032fa:	9302      	str	r3, [sp, #8]
 80032fc:	a902      	add	r1, sp, #8
 80032fe:	2302      	movs	r3, #2
 8003300:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8003304:	603c      	str	r4, [r7, #0]
 8003306:	f88d 400c 	strb.w	r4, [sp, #12]
 800330a:	f88d 600d 	strb.w	r6, [sp, #13]
 800330e:	f88d 300f 	strb.w	r3, [sp, #15]
 8003312:	f7ff fef3 	bl	80030fc <GPIO_Init>
 8003316:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 800331a:	2401      	movs	r4, #1
 800331c:	8a1b      	ldrh	r3, [r3, #16]
 800331e:	4831      	ldr	r0, [pc, #196]	; (80033e4 <gpio_init+0x154>)
 8003320:	055b      	lsls	r3, r3, #21
 8003322:	4b2e      	ldr	r3, [pc, #184]	; (80033dc <gpio_init+0x14c>)
 8003324:	bf48      	it	mi
 8003326:	f8c7 8000 	strmi.w	r8, [r7]
 800332a:	2600      	movs	r6, #0
 800332c:	619d      	str	r5, [r3, #24]
 800332e:	a902      	add	r1, sp, #8
 8003330:	f44f 5382 	mov.w	r3, #4160	; 0x1040
 8003334:	9302      	str	r3, [sp, #8]
 8003336:	f88d 600c 	strb.w	r6, [sp, #12]
 800333a:	f88d 400f 	strb.w	r4, [sp, #15]
 800333e:	f7ff fedd 	bl	80030fc <GPIO_Init>
 8003342:	4620      	mov	r0, r4
 8003344:	4621      	mov	r1, r4
 8003346:	f7ff f851 	bl	80023ec <RCC_APB2PeriphClockCmd>
 800334a:	f04f 0910 	mov.w	r9, #16
 800334e:	2106      	movs	r1, #6
 8003350:	2002      	movs	r0, #2
 8003352:	f000 f88d 	bl	8003470 <SYSCFG_EXTILineConfig>
 8003356:	f04f 0806 	mov.w	r8, #6
 800335a:	eb0d 0009 	add.w	r0, sp, r9
 800335e:	250f      	movs	r5, #15
 8003360:	f8cd 8010 	str.w	r8, [sp, #16]
 8003364:	f88d 6014 	strb.w	r6, [sp, #20]
 8003368:	f88d 9015 	strb.w	r9, [sp, #21]
 800336c:	f88d 4016 	strb.w	r4, [sp, #22]
 8003370:	f7ff fe32 	bl	8002fd8 <EXTI_Init>
 8003374:	2317      	movs	r3, #23
 8003376:	a801      	add	r0, sp, #4
 8003378:	f88d 3004 	strb.w	r3, [sp, #4]
 800337c:	f88d 5005 	strb.w	r5, [sp, #5]
 8003380:	f88d 5006 	strb.w	r5, [sp, #6]
 8003384:	f88d 4007 	strb.w	r4, [sp, #7]
 8003388:	f7ff fdda 	bl	8002f40 <NVIC_Init>
 800338c:	210c      	movs	r1, #12
 800338e:	2002      	movs	r0, #2
 8003390:	f000 f86e 	bl	8003470 <SYSCFG_EXTILineConfig>
 8003394:	270c      	movs	r7, #12
 8003396:	eb0d 0009 	add.w	r0, sp, r9
 800339a:	9704      	str	r7, [sp, #16]
 800339c:	f88d 6014 	strb.w	r6, [sp, #20]
 80033a0:	f88d 9015 	strb.w	r9, [sp, #21]
 80033a4:	f88d 4016 	strb.w	r4, [sp, #22]
 80033a8:	f7ff fe16 	bl	8002fd8 <EXTI_Init>
 80033ac:	2328      	movs	r3, #40	; 0x28
 80033ae:	a801      	add	r0, sp, #4
 80033b0:	f88d 3004 	strb.w	r3, [sp, #4]
 80033b4:	f88d 5005 	strb.w	r5, [sp, #5]
 80033b8:	f88d 5006 	strb.w	r5, [sp, #6]
 80033bc:	f88d 4007 	strb.w	r4, [sp, #7]
 80033c0:	f7ff fdbe 	bl	8002f40 <NVIC_Init>
 80033c4:	4640      	mov	r0, r8
 80033c6:	f7ff fe8d 	bl	80030e4 <EXTI_ClearITPendingBit>
 80033ca:	4638      	mov	r0, r7
 80033cc:	f7ff fe8a 	bl	80030e4 <EXTI_ClearITPendingBit>
 80033d0:	f7ff ff52 	bl	8003278 <encoder_reset>
 80033d4:	b007      	add	sp, #28
 80033d6:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 80033da:	bf00      	nop
 80033dc:	48000400 	.word	0x48000400
 80033e0:	20001374 	.word	0x20001374
 80033e4:	48000800 	.word	0x48000800

080033e8 <Default_Handler>:
 80033e8:	4668      	mov	r0, sp
 80033ea:	f020 0107 	bic.w	r1, r0, #7
 80033ee:	468d      	mov	sp, r1
 80033f0:	b501      	push	{r0, lr}
 80033f2:	bf00      	nop
 80033f4:	e8bd 4001 	ldmia.w	sp!, {r0, lr}
 80033f8:	4685      	mov	sp, r0
 80033fa:	4770      	bx	lr

080033fc <HardFault_Handler>:
 80033fc:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8003400:	f7ff fef0 	bl	80031e4 <led_on>
 8003404:	4b06      	ldr	r3, [pc, #24]	; (8003420 <HardFault_Handler+0x24>)
 8003406:	3b01      	subs	r3, #1
 8003408:	d001      	beq.n	800340e <HardFault_Handler+0x12>
 800340a:	bf00      	nop
 800340c:	e7fb      	b.n	8003406 <HardFault_Handler+0xa>
 800340e:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8003412:	f7ff fef1 	bl	80031f8 <led_off>
 8003416:	4b02      	ldr	r3, [pc, #8]	; (8003420 <HardFault_Handler+0x24>)
 8003418:	3b01      	subs	r3, #1
 800341a:	d0ef      	beq.n	80033fc <HardFault_Handler>
 800341c:	bf00      	nop
 800341e:	e7fb      	b.n	8003418 <HardFault_Handler+0x1c>
 8003420:	00989681 	.word	0x00989681

08003424 <_reset_init>:
 8003424:	490e      	ldr	r1, [pc, #56]	; (8003460 <_reset_init+0x3c>)
 8003426:	4b0f      	ldr	r3, [pc, #60]	; (8003464 <_reset_init+0x40>)
 8003428:	1a5b      	subs	r3, r3, r1
 800342a:	109b      	asrs	r3, r3, #2
 800342c:	2200      	movs	r2, #0
 800342e:	429a      	cmp	r2, r3
 8003430:	d006      	beq.n	8003440 <_reset_init+0x1c>
 8003432:	480d      	ldr	r0, [pc, #52]	; (8003468 <_reset_init+0x44>)
 8003434:	f850 0022 	ldr.w	r0, [r0, r2, lsl #2]
 8003438:	f841 0022 	str.w	r0, [r1, r2, lsl #2]
 800343c:	3201      	adds	r2, #1
 800343e:	e7f6      	b.n	800342e <_reset_init+0xa>
 8003440:	4a0a      	ldr	r2, [pc, #40]	; (800346c <_reset_init+0x48>)
 8003442:	f8d2 3088 	ldr.w	r3, [r2, #136]	; 0x88
 8003446:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
 800344a:	f8c2 3088 	str.w	r3, [r2, #136]	; 0x88
 800344e:	f502 720c 	add.w	r2, r2, #560	; 0x230
 8003452:	6853      	ldr	r3, [r2, #4]
 8003454:	f023 4340 	bic.w	r3, r3, #3221225472	; 0xc0000000
 8003458:	6053      	str	r3, [r2, #4]
 800345a:	f7fe be2f 	b.w	80020bc <main>
 800345e:	bf00      	nop
 8003460:	20000000 	.word	0x20000000
 8003464:	2000049c 	.word	0x2000049c
 8003468:	08005128 	.word	0x08005128
 800346c:	e000ed00 	.word	0xe000ed00

08003470 <SYSCFG_EXTILineConfig>:
 8003470:	b510      	push	{r4, lr}
 8003472:	bf00      	nop
 8003474:	bf00      	nop
 8003476:	f001 0303 	and.w	r3, r1, #3
 800347a:	f001 01fc 	and.w	r1, r1, #252	; 0xfc
 800347e:	f101 4180 	add.w	r1, r1, #1073741824	; 0x40000000
 8003482:	f501 3180 	add.w	r1, r1, #65536	; 0x10000
 8003486:	009b      	lsls	r3, r3, #2
 8003488:	688c      	ldr	r4, [r1, #8]
 800348a:	220f      	movs	r2, #15
 800348c:	409a      	lsls	r2, r3
 800348e:	ea24 0202 	bic.w	r2, r4, r2
 8003492:	608a      	str	r2, [r1, #8]
 8003494:	688a      	ldr	r2, [r1, #8]
 8003496:	4098      	lsls	r0, r3
 8003498:	4310      	orrs	r0, r2
 800349a:	6088      	str	r0, [r1, #8]
 800349c:	bd10      	pop	{r4, pc}
	...

080034a0 <selfrel_offset31>:
 80034a0:	e5903000 	ldr	r3, [r0]
 80034a4:	e3130101 	tst	r3, #1073741824	; 0x40000000
 80034a8:	13833102 	orrne	r3, r3, #-2147483648	; 0x80000000
 80034ac:	03c33102 	biceq	r3, r3, #-2147483648	; 0x80000000
 80034b0:	e0800003 	add	r0, r0, r3
 80034b4:	e12fff1e 	bx	lr

080034b8 <search_EIT_table>:
 80034b8:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80034bc:	e3510000 	cmp	r1, #0
 80034c0:	e24dd00c 	sub	sp, sp, #12
 80034c4:	0a000029 	beq	8003570 <search_EIT_table+0xb8>
 80034c8:	e2413001 	sub	r3, r1, #1
 80034cc:	e1a07002 	mov	r7, r2
 80034d0:	e1a05000 	mov	r5, r0
 80034d4:	e1a08003 	mov	r8, r3
 80034d8:	e3a06000 	mov	r6, #0
 80034dc:	e58d3004 	str	r3, [sp, #4]
 80034e0:	e0864008 	add	r4, r6, r8
 80034e4:	e0844fa4 	add	r4, r4, r4, lsr #31
 80034e8:	e1a040c4 	asr	r4, r4, #1
 80034ec:	e1a0a184 	lsl	sl, r4, #3
 80034f0:	e085b00a 	add	fp, r5, sl
 80034f4:	e1a0000b 	mov	r0, fp
 80034f8:	ebffffe8 	bl	80034a0 <selfrel_offset31>
 80034fc:	e59d3004 	ldr	r3, [sp, #4]
 8003500:	e1a09000 	mov	r9, r0
 8003504:	e1530004 	cmp	r3, r4
 8003508:	e28a0008 	add	r0, sl, #8
 800350c:	e0850000 	add	r0, r5, r0
 8003510:	0a00000b 	beq	8003544 <search_EIT_table+0x8c>
 8003514:	ebffffe1 	bl	80034a0 <selfrel_offset31>
 8003518:	e1590007 	cmp	r9, r7
 800351c:	e2400001 	sub	r0, r0, #1
 8003520:	9a000003 	bls	8003534 <search_EIT_table+0x7c>
 8003524:	e1540006 	cmp	r4, r6
 8003528:	0a00000b 	beq	800355c <search_EIT_table+0xa4>
 800352c:	e2448001 	sub	r8, r4, #1
 8003530:	eaffffea 	b	80034e0 <search_EIT_table+0x28>
 8003534:	e1500007 	cmp	r0, r7
 8003538:	2a000003 	bcs	800354c <search_EIT_table+0x94>
 800353c:	e2846001 	add	r6, r4, #1
 8003540:	eaffffe6 	b	80034e0 <search_EIT_table+0x28>
 8003544:	e1590007 	cmp	r9, r7
 8003548:	8afffff5 	bhi	8003524 <search_EIT_table+0x6c>
 800354c:	e1a0000b 	mov	r0, fp
 8003550:	e28dd00c 	add	sp, sp, #12
 8003554:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8003558:	e12fff1e 	bx	lr
 800355c:	e3a0b000 	mov	fp, #0
 8003560:	e1a0000b 	mov	r0, fp
 8003564:	e28dd00c 	add	sp, sp, #12
 8003568:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800356c:	e12fff1e 	bx	lr
 8003570:	e1a0b001 	mov	fp, r1
 8003574:	e1a0000b 	mov	r0, fp
 8003578:	e28dd00c 	add	sp, sp, #12
 800357c:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8003580:	e12fff1e 	bx	lr

08003584 <__gnu_unwind_get_pr_addr>:
 8003584:	e3500001 	cmp	r0, #1
 8003588:	0a000006 	beq	80035a8 <__gnu_unwind_get_pr_addr+0x24>
 800358c:	e3500002 	cmp	r0, #2
 8003590:	0a000006 	beq	80035b0 <__gnu_unwind_get_pr_addr+0x2c>
 8003594:	e59f301c 	ldr	r3, [pc, #28]	; 80035b8 <__gnu_unwind_get_pr_addr+0x34>
 8003598:	e3500000 	cmp	r0, #0
 800359c:	01a00003 	moveq	r0, r3
 80035a0:	13a00000 	movne	r0, #0
 80035a4:	e12fff1e 	bx	lr
 80035a8:	e59f000c 	ldr	r0, [pc, #12]	; 80035bc <__gnu_unwind_get_pr_addr+0x38>
 80035ac:	e12fff1e 	bx	lr
 80035b0:	e59f0008 	ldr	r0, [pc, #8]	; 80035c0 <__gnu_unwind_get_pr_addr+0x3c>
 80035b4:	e12fff1e 	bx	lr
 80035b8:	0800412c 	.word	0x0800412c
 80035bc:	08004134 	.word	0x08004134
 80035c0:	0800413c 	.word	0x0800413c

080035c4 <get_eit_entry>:
 80035c4:	e92d4030 	push	{r4, r5, lr}
 80035c8:	e59f3118 	ldr	r3, [pc, #280]	; 80036e8 <get_eit_entry+0x124>
 80035cc:	e3530000 	cmp	r3, #0
 80035d0:	e24dd00c 	sub	sp, sp, #12
 80035d4:	e1a04000 	mov	r4, r0
 80035d8:	e2415002 	sub	r5, r1, #2
 80035dc:	0a00002d 	beq	8003698 <get_eit_entry+0xd4>
 80035e0:	e1a00005 	mov	r0, r5
 80035e4:	e28d1004 	add	r1, sp, #4
 80035e8:	e320f000 	nop	{0}
 80035ec:	e3500000 	cmp	r0, #0
 80035f0:	0a000021 	beq	800367c <get_eit_entry+0xb8>
 80035f4:	e59d1004 	ldr	r1, [sp, #4]
 80035f8:	e1a02005 	mov	r2, r5
 80035fc:	ebffffad 	bl	80034b8 <search_EIT_table>
 8003600:	e2505000 	subs	r5, r0, #0
 8003604:	0a00001c 	beq	800367c <get_eit_entry+0xb8>
 8003608:	ebffffa4 	bl	80034a0 <selfrel_offset31>
 800360c:	e5953004 	ldr	r3, [r5, #4]
 8003610:	e3530001 	cmp	r3, #1
 8003614:	e5840048 	str	r0, [r4, #72]	; 0x48
 8003618:	0a000010 	beq	8003660 <get_eit_entry+0x9c>
 800361c:	e3530000 	cmp	r3, #0
 8003620:	ba000023 	blt	80036b4 <get_eit_entry+0xf0>
 8003624:	e2850004 	add	r0, r5, #4
 8003628:	ebffff9c 	bl	80034a0 <selfrel_offset31>
 800362c:	e3a03000 	mov	r3, #0
 8003630:	e584004c 	str	r0, [r4, #76]	; 0x4c
 8003634:	e5843050 	str	r3, [r4, #80]	; 0x50
 8003638:	e5903000 	ldr	r3, [r0]
 800363c:	e3530000 	cmp	r3, #0
 8003640:	ba000020 	blt	80036c8 <get_eit_entry+0x104>
 8003644:	ebffff95 	bl	80034a0 <selfrel_offset31>
 8003648:	e3a03000 	mov	r3, #0
 800364c:	e5840010 	str	r0, [r4, #16]
 8003650:	e1a00003 	mov	r0, r3
 8003654:	e28dd00c 	add	sp, sp, #12
 8003658:	e8bd4030 	pop	{r4, r5, lr}
 800365c:	e12fff1e 	bx	lr
 8003660:	e3a03005 	mov	r3, #5
 8003664:	e3a02000 	mov	r2, #0
 8003668:	e1a00003 	mov	r0, r3
 800366c:	e5842010 	str	r2, [r4, #16]
 8003670:	e28dd00c 	add	sp, sp, #12
 8003674:	e8bd4030 	pop	{r4, r5, lr}
 8003678:	e12fff1e 	bx	lr
 800367c:	e3a03009 	mov	r3, #9
 8003680:	e3a02000 	mov	r2, #0
 8003684:	e1a00003 	mov	r0, r3
 8003688:	e5842010 	str	r2, [r4, #16]
 800368c:	e28dd00c 	add	sp, sp, #12
 8003690:	e8bd4030 	pop	{r4, r5, lr}
 8003694:	e12fff1e 	bx	lr
 8003698:	e59f104c 	ldr	r1, [pc, #76]	; 80036ec <get_eit_entry+0x128>
 800369c:	e59f304c 	ldr	r3, [pc, #76]	; 80036f0 <get_eit_entry+0x12c>
 80036a0:	e1a00001 	mov	r0, r1
 80036a4:	e0611003 	rsb	r1, r1, r3
 80036a8:	e1a011c1 	asr	r1, r1, #3
 80036ac:	e58d1004 	str	r1, [sp, #4]
 80036b0:	eaffffd0 	b	80035f8 <get_eit_entry+0x34>
 80036b4:	e3a03001 	mov	r3, #1
 80036b8:	e2850004 	add	r0, r5, #4
 80036bc:	e584004c 	str	r0, [r4, #76]	; 0x4c
 80036c0:	e5843050 	str	r3, [r4, #80]	; 0x50
 80036c4:	eaffffdb 	b	8003638 <get_eit_entry+0x74>
 80036c8:	e1a00c23 	lsr	r0, r3, #24
 80036cc:	e200000f 	and	r0, r0, #15
 80036d0:	ebffffab 	bl	8003584 <__gnu_unwind_get_pr_addr>
 80036d4:	e3500000 	cmp	r0, #0
 80036d8:	e5840010 	str	r0, [r4, #16]
 80036dc:	03a03009 	moveq	r3, #9
 80036e0:	13a03000 	movne	r3, #0
 80036e4:	eaffffd9 	b	8003650 <get_eit_entry+0x8c>
 80036e8:	00000000 	.word	0x00000000
 80036ec:	08004f98 	.word	0x08004f98
 80036f0:	08005128 	.word	0x08005128

080036f4 <restore_non_core_regs>:
 80036f4:	e5903000 	ldr	r3, [r0]
 80036f8:	e3130001 	tst	r3, #1
 80036fc:	e92d4010 	push	{r4, lr}
 8003700:	e1a04000 	mov	r4, r0
 8003704:	1a000004 	bne	800371c <restore_non_core_regs+0x28>
 8003708:	e3130002 	tst	r3, #2
 800370c:	e2800048 	add	r0, r0, #72	; 0x48
 8003710:	0a00000a 	beq	8003740 <restore_non_core_regs+0x4c>
 8003714:	eb0003a2 	bl	80045a4 <__gnu_Unwind_Restore_VFP_D>
 8003718:	e5943000 	ldr	r3, [r4]
 800371c:	e3130004 	tst	r3, #4
 8003720:	0a00000a 	beq	8003750 <restore_non_core_regs+0x5c>
 8003724:	e3130008 	tst	r3, #8
 8003728:	0a00000d 	beq	8003764 <restore_non_core_regs+0x70>
 800372c:	e3130010 	tst	r3, #16
 8003730:	02840e1d 	addeq	r0, r4, #464	; 0x1d0
 8003734:	0b0003c4 	bleq	800464c <__gnu_Unwind_Restore_WMMXC>
 8003738:	e8bd4010 	pop	{r4, lr}
 800373c:	e12fff1e 	bx	lr
 8003740:	eb000393 	bl	8004594 <__gnu_Unwind_Restore_VFP>
 8003744:	e5943000 	ldr	r3, [r4]
 8003748:	e3130004 	tst	r3, #4
 800374c:	1afffff4 	bne	8003724 <restore_non_core_regs+0x30>
 8003750:	e28400d0 	add	r0, r4, #208	; 0xd0
 8003754:	eb000396 	bl	80045b4 <__gnu_Unwind_Restore_VFP_D_16_to_31>
 8003758:	e5943000 	ldr	r3, [r4]
 800375c:	e3130008 	tst	r3, #8
 8003760:	1afffff1 	bne	800372c <restore_non_core_regs+0x38>
 8003764:	e2840e15 	add	r0, r4, #336	; 0x150
 8003768:	eb000395 	bl	80045c4 <__gnu_Unwind_Restore_WMMXD>
 800376c:	e5943000 	ldr	r3, [r4]
 8003770:	eaffffed 	b	800372c <restore_non_core_regs+0x38>

08003774 <_Unwind_decode_typeinfo_ptr.isra.0>:
 8003774:	e5903000 	ldr	r3, [r0]
 8003778:	e3530000 	cmp	r3, #0
 800377c:	10830000 	addne	r0, r3, r0
 8003780:	01a00003 	moveq	r0, r3
 8003784:	e12fff1e 	bx	lr

08003788 <__gnu_unwind_24bit.isra.1>:
 8003788:	e3a00009 	mov	r0, #9
 800378c:	e12fff1e 	bx	lr

08003790 <_Unwind_DebugHook>:
 8003790:	e12fff1e 	bx	lr

08003794 <unwind_phase2>:
 8003794:	e92d4070 	push	{r4, r5, r6, lr}
 8003798:	e1a04000 	mov	r4, r0
 800379c:	e1a05001 	mov	r5, r1
 80037a0:	ea000009 	b	80037cc <unwind_phase2+0x38>
 80037a4:	e5953040 	ldr	r3, [r5, #64]	; 0x40
 80037a8:	e3a00001 	mov	r0, #1
 80037ac:	e5843014 	str	r3, [r4, #20]
 80037b0:	e1a01004 	mov	r1, r4
 80037b4:	e1a02005 	mov	r2, r5
 80037b8:	e594c010 	ldr	ip, [r4, #16]
 80037bc:	e1a0e00f 	mov	lr, pc
 80037c0:	e12fff1c 	bx	ip
 80037c4:	e3500008 	cmp	r0, #8
 80037c8:	1a000005 	bne	80037e4 <unwind_phase2+0x50>
 80037cc:	e1a00004 	mov	r0, r4
 80037d0:	e5951040 	ldr	r1, [r5, #64]	; 0x40
 80037d4:	ebffff7a 	bl	80035c4 <get_eit_entry>
 80037d8:	e2506000 	subs	r6, r0, #0
 80037dc:	0afffff0 	beq	80037a4 <unwind_phase2+0x10>
 80037e0:	eb000509 	bl	8004c0c <abort>
 80037e4:	e3500007 	cmp	r0, #7
 80037e8:	1afffffc 	bne	80037e0 <unwind_phase2+0x4c>
 80037ec:	e1a00006 	mov	r0, r6
 80037f0:	e5951040 	ldr	r1, [r5, #64]	; 0x40
 80037f4:	ebffffe5 	bl	8003790 <_Unwind_DebugHook>
 80037f8:	e2850004 	add	r0, r5, #4
 80037fc:	eb00035d 	bl	8004578 <__restore_core_regs>

08003800 <unwind_phase2_forced>:
 8003800:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
 8003804:	e1a05000 	mov	r5, r0
 8003808:	e1a06002 	mov	r6, r2
 800380c:	e3a04000 	mov	r4, #0
 8003810:	e281e004 	add	lr, r1, #4
 8003814:	e24ddff2 	sub	sp, sp, #968	; 0x3c8
 8003818:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
 800381c:	e28dc00c 	add	ip, sp, #12
 8003820:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
 8003824:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
 8003828:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
 800382c:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
 8003830:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
 8003834:	e89e000f 	ldm	lr, {r0, r1, r2, r3}
 8003838:	e1560004 	cmp	r6, r4
 800383c:	e595800c 	ldr	r8, [r5, #12]
 8003840:	e5959018 	ldr	r9, [r5, #24]
 8003844:	e88c000f 	stm	ip, {r0, r1, r2, r3}
 8003848:	e1a00005 	mov	r0, r5
 800384c:	e59d1048 	ldr	r1, [sp, #72]	; 0x48
 8003850:	e58d4008 	str	r4, [sp, #8]
 8003854:	03a06009 	moveq	r6, #9
 8003858:	13a0600a 	movne	r6, #10
 800385c:	ebffff58 	bl	80035c4 <get_eit_entry>
 8003860:	e1a04000 	mov	r4, r0
 8003864:	e28d7008 	add	r7, sp, #8
 8003868:	e3540000 	cmp	r4, #0
 800386c:	0a00000e 	beq	80038ac <unwind_phase2_forced+0xac>
 8003870:	e59d3040 	ldr	r3, [sp, #64]	; 0x40
 8003874:	e88d0280 	stm	sp, {r7, r9}
 8003878:	e58d304c 	str	r3, [sp, #76]	; 0x4c
 800387c:	e3861010 	orr	r1, r6, #16
 8003880:	e3a00001 	mov	r0, #1
 8003884:	e1a02005 	mov	r2, r5
 8003888:	e1a03005 	mov	r3, r5
 800388c:	e1a0e00f 	mov	lr, pc
 8003890:	e12fff18 	bx	r8
 8003894:	e3500000 	cmp	r0, #0
 8003898:	1a000029 	bne	8003944 <unwind_phase2_forced+0x144>
 800389c:	e1a00004 	mov	r0, r4
 80038a0:	e28ddff2 	add	sp, sp, #968	; 0x3c8
 80038a4:	e8bd47f0 	pop	{r4, r5, r6, r7, r8, r9, sl, lr}
 80038a8:	e12fff1e 	bx	lr
 80038ac:	e59d3048 	ldr	r3, [sp, #72]	; 0x48
 80038b0:	e1a01007 	mov	r1, r7
 80038b4:	e5853014 	str	r3, [r5, #20]
 80038b8:	e3a02e1e 	mov	r2, #480	; 0x1e0
 80038bc:	e28d0f7a 	add	r0, sp, #488	; 0x1e8
 80038c0:	eb0004d6 	bl	8004c20 <memcpy>
 80038c4:	e1a01005 	mov	r1, r5
 80038c8:	e28d2f7a 	add	r2, sp, #488	; 0x1e8
 80038cc:	e1a00006 	mov	r0, r6
 80038d0:	e595c010 	ldr	ip, [r5, #16]
 80038d4:	e1a0e00f 	mov	lr, pc
 80038d8:	e12fff1c 	bx	ip
 80038dc:	e59d3220 	ldr	r3, [sp, #544]	; 0x220
 80038e0:	e1a0a000 	mov	sl, r0
 80038e4:	e58d304c 	str	r3, [sp, #76]	; 0x4c
 80038e8:	e88d0280 	stm	sp, {r7, r9}
 80038ec:	e1a01006 	mov	r1, r6
 80038f0:	e3a00001 	mov	r0, #1
 80038f4:	e1a02005 	mov	r2, r5
 80038f8:	e1a03005 	mov	r3, r5
 80038fc:	e1a0e00f 	mov	lr, pc
 8003900:	e12fff18 	bx	r8
 8003904:	e3500000 	cmp	r0, #0
 8003908:	1a00000d 	bne	8003944 <unwind_phase2_forced+0x144>
 800390c:	e1a00007 	mov	r0, r7
 8003910:	e28d1f7a 	add	r1, sp, #488	; 0x1e8
 8003914:	e3a02e1e 	mov	r2, #480	; 0x1e0
 8003918:	eb0004c0 	bl	8004c20 <memcpy>
 800391c:	e35a0008 	cmp	sl, #8
 8003920:	1a000005 	bne	800393c <unwind_phase2_forced+0x13c>
 8003924:	e1a00005 	mov	r0, r5
 8003928:	e59d1048 	ldr	r1, [sp, #72]	; 0x48
 800392c:	ebffff24 	bl	80035c4 <get_eit_entry>
 8003930:	e3a06009 	mov	r6, #9
 8003934:	e1a04000 	mov	r4, r0
 8003938:	eaffffca 	b	8003868 <unwind_phase2_forced+0x68>
 800393c:	e35a0007 	cmp	sl, #7
 8003940:	0a000003 	beq	8003954 <unwind_phase2_forced+0x154>
 8003944:	e3a00009 	mov	r0, #9
 8003948:	e28ddff2 	add	sp, sp, #968	; 0x3c8
 800394c:	e8bd47f0 	pop	{r4, r5, r6, r7, r8, r9, sl, lr}
 8003950:	e12fff1e 	bx	lr
 8003954:	e1a00004 	mov	r0, r4
 8003958:	e59d1048 	ldr	r1, [sp, #72]	; 0x48
 800395c:	ebffff8b 	bl	8003790 <_Unwind_DebugHook>
 8003960:	e28d000c 	add	r0, sp, #12
 8003964:	eb000303 	bl	8004578 <__restore_core_regs>

08003968 <_Unwind_GetCFA>:
 8003968:	e5900044 	ldr	r0, [r0, #68]	; 0x44
 800396c:	e12fff1e 	bx	lr

08003970 <__gnu_Unwind_RaiseException>:
 8003970:	e92d40f0 	push	{r4, r5, r6, r7, lr}
 8003974:	e3e05000 	mvn	r5, #0
 8003978:	e591303c 	ldr	r3, [r1, #60]	; 0x3c
 800397c:	e5813040 	str	r3, [r1, #64]	; 0x40
 8003980:	e281e004 	add	lr, r1, #4
 8003984:	e24ddf79 	sub	sp, sp, #484	; 0x1e4
 8003988:	e1a07001 	mov	r7, r1
 800398c:	e1a04000 	mov	r4, r0
 8003990:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
 8003994:	e28dc004 	add	ip, sp, #4
 8003998:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
 800399c:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
 80039a0:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
 80039a4:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
 80039a8:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
 80039ac:	e89e000f 	ldm	lr, {r0, r1, r2, r3}
 80039b0:	e28d6e1e 	add	r6, sp, #480	; 0x1e0
 80039b4:	e88c000f 	stm	ip, {r0, r1, r2, r3}
 80039b8:	e52651e0 	str	r5, [r6, #-480]!	; 0xfffffe20
 80039bc:	ea000007 	b	80039e0 <__gnu_Unwind_RaiseException+0x70>
 80039c0:	e1a01004 	mov	r1, r4
 80039c4:	e1a02006 	mov	r2, r6
 80039c8:	e594c010 	ldr	ip, [r4, #16]
 80039cc:	e1a0e00f 	mov	lr, pc
 80039d0:	e12fff1c 	bx	ip
 80039d4:	e3500008 	cmp	r0, #8
 80039d8:	e1a05000 	mov	r5, r0
 80039dc:	1a000008 	bne	8003a04 <__gnu_Unwind_RaiseException+0x94>
 80039e0:	e1a00004 	mov	r0, r4
 80039e4:	e59d1040 	ldr	r1, [sp, #64]	; 0x40
 80039e8:	ebfffef5 	bl	80035c4 <get_eit_entry>
 80039ec:	e3500000 	cmp	r0, #0
 80039f0:	0afffff2 	beq	80039c0 <__gnu_Unwind_RaiseException+0x50>
 80039f4:	e3a00009 	mov	r0, #9
 80039f8:	e28ddf79 	add	sp, sp, #484	; 0x1e4
 80039fc:	e8bd40f0 	pop	{r4, r5, r6, r7, lr}
 8003a00:	e12fff1e 	bx	lr
 8003a04:	e1a00006 	mov	r0, r6
 8003a08:	ebffff39 	bl	80036f4 <restore_non_core_regs>
 8003a0c:	e3550006 	cmp	r5, #6
 8003a10:	1afffff7 	bne	80039f4 <__gnu_Unwind_RaiseException+0x84>
 8003a14:	e1a00004 	mov	r0, r4
 8003a18:	e1a01007 	mov	r1, r7
 8003a1c:	ebffff5c 	bl	8003794 <unwind_phase2>

08003a20 <__gnu_Unwind_ForcedUnwind>:
 8003a20:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 8003a24:	e593e03c 	ldr	lr, [r3, #60]	; 0x3c
 8003a28:	e580100c 	str	r1, [r0, #12]
 8003a2c:	e5802018 	str	r2, [r0, #24]
 8003a30:	e1a01003 	mov	r1, r3
 8003a34:	e583e040 	str	lr, [r3, #64]	; 0x40
 8003a38:	e3a02000 	mov	r2, #0
 8003a3c:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 8003a40:	eaffff6e 	b	8003800 <unwind_phase2_forced>

08003a44 <__gnu_Unwind_Resume>:
 8003a44:	e92d4070 	push	{r4, r5, r6, lr}
 8003a48:	e590600c 	ldr	r6, [r0, #12]
 8003a4c:	e5903014 	ldr	r3, [r0, #20]
 8003a50:	e3560000 	cmp	r6, #0
 8003a54:	e1a04000 	mov	r4, r0
 8003a58:	e1a05001 	mov	r5, r1
 8003a5c:	e5813040 	str	r3, [r1, #64]	; 0x40
 8003a60:	0a000002 	beq	8003a70 <__gnu_Unwind_Resume+0x2c>
 8003a64:	e3a02001 	mov	r2, #1
 8003a68:	ebffff64 	bl	8003800 <unwind_phase2_forced>
 8003a6c:	eb000466 	bl	8004c0c <abort>
 8003a70:	e3a00002 	mov	r0, #2
 8003a74:	e1a01004 	mov	r1, r4
 8003a78:	e1a02005 	mov	r2, r5
 8003a7c:	e594c010 	ldr	ip, [r4, #16]
 8003a80:	e1a0e00f 	mov	lr, pc
 8003a84:	e12fff1c 	bx	ip
 8003a88:	e3500007 	cmp	r0, #7
 8003a8c:	0a000004 	beq	8003aa4 <__gnu_Unwind_Resume+0x60>
 8003a90:	e3500008 	cmp	r0, #8
 8003a94:	01a00004 	moveq	r0, r4
 8003a98:	01a01005 	moveq	r1, r5
 8003a9c:	0bffff3c 	bleq	8003794 <unwind_phase2>
 8003aa0:	eb000459 	bl	8004c0c <abort>
 8003aa4:	e1a00006 	mov	r0, r6
 8003aa8:	e5951040 	ldr	r1, [r5, #64]	; 0x40
 8003aac:	ebffff37 	bl	8003790 <_Unwind_DebugHook>
 8003ab0:	e2850004 	add	r0, r5, #4
 8003ab4:	eb0002af 	bl	8004578 <__restore_core_regs>

08003ab8 <__gnu_Unwind_Resume_or_Rethrow>:
 8003ab8:	e590300c 	ldr	r3, [r0, #12]
 8003abc:	e3530000 	cmp	r3, #0
 8003ac0:	1591c03c 	ldrne	ip, [r1, #60]	; 0x3c
 8003ac4:	13a02000 	movne	r2, #0
 8003ac8:	1581c040 	strne	ip, [r1, #64]	; 0x40
 8003acc:	1affff4b 	bne	8003800 <unwind_phase2_forced>
 8003ad0:	eaffffa6 	b	8003970 <__gnu_Unwind_RaiseException>

08003ad4 <_Unwind_Complete>:
 8003ad4:	e12fff1e 	bx	lr

08003ad8 <_Unwind_DeleteException>:
 8003ad8:	e5903008 	ldr	r3, [r0, #8]
 8003adc:	e3530000 	cmp	r3, #0
 8003ae0:	012fff1e 	bxeq	lr
 8003ae4:	e1a01000 	mov	r1, r0
 8003ae8:	e3a00001 	mov	r0, #1
 8003aec:	e12fff13 	bx	r3

08003af0 <_Unwind_VRS_Get>:
 8003af0:	e3510004 	cmp	r1, #4
 8003af4:	979ff101 	ldrls	pc, [pc, r1, lsl #2]
 8003af8:	ea000009 	b	8003b24 <_Unwind_VRS_Get+0x34>
 8003afc:	08003b10 	.word	0x08003b10
 8003b00:	08003b2c 	.word	0x08003b2c
 8003b04:	08003b24 	.word	0x08003b24
 8003b08:	08003b2c 	.word	0x08003b2c
 8003b0c:	08003b2c 	.word	0x08003b2c
 8003b10:	e352000f 	cmp	r2, #15
 8003b14:	93530000 	cmpls	r3, #0
 8003b18:	13a03001 	movne	r3, #1
 8003b1c:	03a03000 	moveq	r3, #0
 8003b20:	0a000003 	beq	8003b34 <_Unwind_VRS_Get+0x44>
 8003b24:	e3a00002 	mov	r0, #2
 8003b28:	e12fff1e 	bx	lr
 8003b2c:	e3a00001 	mov	r0, #1
 8003b30:	e12fff1e 	bx	lr
 8003b34:	e0802102 	add	r2, r0, r2, lsl #2
 8003b38:	e5922004 	ldr	r2, [r2, #4]
 8003b3c:	e1a00003 	mov	r0, r3
 8003b40:	e59d3000 	ldr	r3, [sp]
 8003b44:	e5832000 	str	r2, [r3]
 8003b48:	e12fff1e 	bx	lr

08003b4c <_Unwind_GetGR>:
 8003b4c:	e1a02001 	mov	r2, r1
 8003b50:	e3a01000 	mov	r1, #0
 8003b54:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 8003b58:	e24dd014 	sub	sp, sp, #20
 8003b5c:	e28dc00c 	add	ip, sp, #12
 8003b60:	e1a03001 	mov	r3, r1
 8003b64:	e58dc000 	str	ip, [sp]
 8003b68:	ebffffe0 	bl	8003af0 <_Unwind_VRS_Get>
 8003b6c:	e59d000c 	ldr	r0, [sp, #12]
 8003b70:	e28dd014 	add	sp, sp, #20
 8003b74:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 8003b78:	e12fff1e 	bx	lr

08003b7c <_Unwind_VRS_Set>:
 8003b7c:	e3510004 	cmp	r1, #4
 8003b80:	979ff101 	ldrls	pc, [pc, r1, lsl #2]
 8003b84:	ea000009 	b	8003bb0 <_Unwind_VRS_Set+0x34>
 8003b88:	08003b9c 	.word	0x08003b9c
 8003b8c:	08003bb8 	.word	0x08003bb8
 8003b90:	08003bb0 	.word	0x08003bb0
 8003b94:	08003bb8 	.word	0x08003bb8
 8003b98:	08003bb8 	.word	0x08003bb8
 8003b9c:	e352000f 	cmp	r2, #15
 8003ba0:	93530000 	cmpls	r3, #0
 8003ba4:	13a03001 	movne	r3, #1
 8003ba8:	03a03000 	moveq	r3, #0
 8003bac:	0a000003 	beq	8003bc0 <_Unwind_VRS_Set+0x44>
 8003bb0:	e3a00002 	mov	r0, #2
 8003bb4:	e12fff1e 	bx	lr
 8003bb8:	e3a00001 	mov	r0, #1
 8003bbc:	e12fff1e 	bx	lr
 8003bc0:	e59d1000 	ldr	r1, [sp]
 8003bc4:	e5911000 	ldr	r1, [r1]
 8003bc8:	e0802102 	add	r2, r0, r2, lsl #2
 8003bcc:	e5821004 	str	r1, [r2, #4]
 8003bd0:	e1a00003 	mov	r0, r3
 8003bd4:	e12fff1e 	bx	lr

08003bd8 <_Unwind_SetGR>:
 8003bd8:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 8003bdc:	e1a0e001 	mov	lr, r1
 8003be0:	e3a01000 	mov	r1, #0
 8003be4:	e24dd014 	sub	sp, sp, #20
 8003be8:	e28dc010 	add	ip, sp, #16
 8003bec:	e52c2004 	str	r2, [ip, #-4]!
 8003bf0:	e1a03001 	mov	r3, r1
 8003bf4:	e58dc000 	str	ip, [sp]
 8003bf8:	e1a0200e 	mov	r2, lr
 8003bfc:	ebffffde 	bl	8003b7c <_Unwind_VRS_Set>
 8003c00:	e28dd014 	add	sp, sp, #20
 8003c04:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 8003c08:	e12fff1e 	bx	lr

08003c0c <__gnu_Unwind_Backtrace>:
 8003c0c:	e92d4070 	push	{r4, r5, r6, lr}
 8003c10:	e3e04000 	mvn	r4, #0
 8003c14:	e592303c 	ldr	r3, [r2, #60]	; 0x3c
 8003c18:	e5823040 	str	r3, [r2, #64]	; 0x40
 8003c1c:	e282c004 	add	ip, r2, #4
 8003c20:	e24ddf8e 	sub	sp, sp, #568	; 0x238
 8003c24:	e1a06000 	mov	r6, r0
 8003c28:	e1a05001 	mov	r5, r1
 8003c2c:	e8bc000f 	ldm	ip!, {r0, r1, r2, r3}
 8003c30:	e28de05c 	add	lr, sp, #92	; 0x5c
 8003c34:	e8ae000f 	stmia	lr!, {r0, r1, r2, r3}
 8003c38:	e8bc000f 	ldm	ip!, {r0, r1, r2, r3}
 8003c3c:	e8ae000f 	stmia	lr!, {r0, r1, r2, r3}
 8003c40:	e8bc000f 	ldm	ip!, {r0, r1, r2, r3}
 8003c44:	e8ae000f 	stmia	lr!, {r0, r1, r2, r3}
 8003c48:	e89c000f 	ldm	ip, {r0, r1, r2, r3}
 8003c4c:	e88e000f 	stm	lr, {r0, r1, r2, r3}
 8003c50:	e58d4058 	str	r4, [sp, #88]	; 0x58
 8003c54:	ea000013 	b	8003ca8 <__gnu_Unwind_Backtrace+0x9c>
 8003c58:	e28d0058 	add	r0, sp, #88	; 0x58
 8003c5c:	e3a0100c 	mov	r1, #12
 8003c60:	e1a0200d 	mov	r2, sp
 8003c64:	ebffffdb 	bl	8003bd8 <_Unwind_SetGR>
 8003c68:	e28d0058 	add	r0, sp, #88	; 0x58
 8003c6c:	e1a01005 	mov	r1, r5
 8003c70:	e1a0e00f 	mov	lr, pc
 8003c74:	e12fff16 	bx	r6
 8003c78:	e3500000 	cmp	r0, #0
 8003c7c:	1a00000e 	bne	8003cbc <__gnu_Unwind_Backtrace+0xb0>
 8003c80:	e3a00008 	mov	r0, #8
 8003c84:	e1a0100d 	mov	r1, sp
 8003c88:	e28d2058 	add	r2, sp, #88	; 0x58
 8003c8c:	e59dc010 	ldr	ip, [sp, #16]
 8003c90:	e1a0e00f 	mov	lr, pc
 8003c94:	e12fff1c 	bx	ip
 8003c98:	e2403005 	sub	r3, r0, #5
 8003c9c:	e31300fb 	tst	r3, #251	; 0xfb
 8003ca0:	e1a04000 	mov	r4, r0
 8003ca4:	0a000005 	beq	8003cc0 <__gnu_Unwind_Backtrace+0xb4>
 8003ca8:	e1a0000d 	mov	r0, sp
 8003cac:	e59d1098 	ldr	r1, [sp, #152]	; 0x98
 8003cb0:	ebfffe43 	bl	80035c4 <get_eit_entry>
 8003cb4:	e3500000 	cmp	r0, #0
 8003cb8:	0affffe6 	beq	8003c58 <__gnu_Unwind_Backtrace+0x4c>
 8003cbc:	e3a04009 	mov	r4, #9
 8003cc0:	e28d0058 	add	r0, sp, #88	; 0x58
 8003cc4:	ebfffe8a 	bl	80036f4 <restore_non_core_regs>
 8003cc8:	e1a00004 	mov	r0, r4
 8003ccc:	e28ddf8e 	add	sp, sp, #568	; 0x238
 8003cd0:	e8bd4070 	pop	{r4, r5, r6, lr}
 8003cd4:	e12fff1e 	bx	lr

08003cd8 <__gnu_unwind_pr_common>:
 8003cd8:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8003cdc:	e591604c 	ldr	r6, [r1, #76]	; 0x4c
 8003ce0:	e1a05001 	mov	r5, r1
 8003ce4:	e5961000 	ldr	r1, [r6]
 8003ce8:	e24dd024 	sub	sp, sp, #36	; 0x24
 8003cec:	e2866004 	add	r6, r6, #4
 8003cf0:	e2537000 	subs	r7, r3, #0
 8003cf4:	e58d0004 	str	r0, [sp, #4]
 8003cf8:	e1a09002 	mov	r9, r2
 8003cfc:	e58d1014 	str	r1, [sp, #20]
 8003d00:	e58d6018 	str	r6, [sp, #24]
 8003d04:	e2008003 	and	r8, r0, #3
 8003d08:	1a000076 	bne	8003ee8 <__gnu_unwind_pr_common+0x210>
 8003d0c:	e3a03003 	mov	r3, #3
 8003d10:	e1a01401 	lsl	r1, r1, #8
 8003d14:	e58d1014 	str	r1, [sp, #20]
 8003d18:	e5cd701d 	strb	r7, [sp, #29]
 8003d1c:	e5cd301c 	strb	r3, [sp, #28]
 8003d20:	e5953050 	ldr	r3, [r5, #80]	; 0x50
 8003d24:	e3580002 	cmp	r8, #2
 8003d28:	05956038 	ldreq	r6, [r5, #56]	; 0x38
 8003d2c:	e2133001 	ands	r3, r3, #1
 8003d30:	1a000061 	bne	8003ebc <__gnu_unwind_pr_common+0x1e4>
 8003d34:	e58d3000 	str	r3, [sp]
 8003d38:	e2853058 	add	r3, r5, #88	; 0x58
 8003d3c:	e58d3008 	str	r3, [sp, #8]
 8003d40:	e5964000 	ldr	r4, [r6]
 8003d44:	e3540000 	cmp	r4, #0
 8003d48:	0a00005d 	beq	8003ec4 <__gnu_unwind_pr_common+0x1ec>
 8003d4c:	e3570002 	cmp	r7, #2
 8003d50:	0596b004 	ldreq	fp, [r6, #4]
 8003d54:	11d6b0b2 	ldrhne	fp, [r6, #2]
 8003d58:	e5953048 	ldr	r3, [r5, #72]	; 0x48
 8003d5c:	e3cba001 	bic	sl, fp, #1
 8003d60:	e1a00009 	mov	r0, r9
 8003d64:	e3a0100f 	mov	r1, #15
 8003d68:	11d640b0 	ldrhne	r4, [r6]
 8003d6c:	02866008 	addeq	r6, r6, #8
 8003d70:	12866004 	addne	r6, r6, #4
 8003d74:	e08aa003 	add	sl, sl, r3
 8003d78:	ebffff73 	bl	8003b4c <_Unwind_GetGR>
 8003d7c:	e15a0000 	cmp	sl, r0
 8003d80:	e20bb001 	and	fp, fp, #1
 8003d84:	8a00003c 	bhi	8003e7c <__gnu_unwind_pr_common+0x1a4>
 8003d88:	e3c43001 	bic	r3, r4, #1
 8003d8c:	e08aa003 	add	sl, sl, r3
 8003d90:	e150000a 	cmp	r0, sl
 8003d94:	2a000038 	bcs	8003e7c <__gnu_unwind_pr_common+0x1a4>
 8003d98:	e2044001 	and	r4, r4, #1
 8003d9c:	e184408b 	orr	r4, r4, fp, lsl #1
 8003da0:	e3540001 	cmp	r4, #1
 8003da4:	0a00005e 	beq	8003f24 <__gnu_unwind_pr_common+0x24c>
 8003da8:	3a000059 	bcc	8003f14 <__gnu_unwind_pr_common+0x23c>
 8003dac:	e3540002 	cmp	r4, #2
 8003db0:	1a000048 	bne	8003ed8 <__gnu_unwind_pr_common+0x200>
 8003db4:	e5963000 	ldr	r3, [r6]
 8003db8:	e3580000 	cmp	r8, #0
 8003dbc:	e3c34102 	bic	r4, r3, #-2147483648	; 0x80000000
 8003dc0:	1a000090 	bne	8004008 <__gnu_unwind_pr_common+0x330>
 8003dc4:	e59d2004 	ldr	r2, [sp, #4]
 8003dc8:	e3120008 	tst	r2, #8
 8003dcc:	03a02001 	moveq	r2, #1
 8003dd0:	13a02000 	movne	r2, #0
 8003dd4:	e3540000 	cmp	r4, #0
 8003dd8:	03822001 	orreq	r2, r2, #1
 8003ddc:	e3520000 	cmp	r2, #0
 8003de0:	0a000030 	beq	8003ea8 <__gnu_unwind_pr_common+0x1d0>
 8003de4:	e3540000 	cmp	r4, #0
 8003de8:	0a00001a 	beq	8003e58 <__gnu_unwind_pr_common+0x180>
 8003dec:	e1a0a007 	mov	sl, r7
 8003df0:	e286b004 	add	fp, r6, #4
 8003df4:	e1a07004 	mov	r7, r4
 8003df8:	e58d800c 	str	r8, [sp, #12]
 8003dfc:	e59d4008 	ldr	r4, [sp, #8]
 8003e00:	ea000003 	b	8003e14 <__gnu_unwind_pr_common+0x13c>
 8003e04:	e1530007 	cmp	r3, r7
 8003e08:	e1a08003 	mov	r8, r3
 8003e0c:	e28bb004 	add	fp, fp, #4
 8003e10:	0a000010 	beq	8003e58 <__gnu_unwind_pr_common+0x180>
 8003e14:	e1a0000b 	mov	r0, fp
 8003e18:	e58d4010 	str	r4, [sp, #16]
 8003e1c:	ebfffe54 	bl	8003774 <_Unwind_decode_typeinfo_ptr.isra.0>
 8003e20:	e28d3010 	add	r3, sp, #16
 8003e24:	e1a01000 	mov	r1, r0
 8003e28:	e3a02000 	mov	r2, #0
 8003e2c:	e1a00005 	mov	r0, r5
 8003e30:	e320f000 	nop	{0}
 8003e34:	e3500000 	cmp	r0, #0
 8003e38:	e2883001 	add	r3, r8, #1
 8003e3c:	0afffff0 	beq	8003e04 <__gnu_unwind_pr_common+0x12c>
 8003e40:	e1a04007 	mov	r4, r7
 8003e44:	e1a0700a 	mov	r7, sl
 8003e48:	e1a0a008 	mov	sl, r8
 8003e4c:	e15a0004 	cmp	sl, r4
 8003e50:	e59d800c 	ldr	r8, [sp, #12]
 8003e54:	1a000071 	bne	8004020 <__gnu_unwind_pr_common+0x348>
 8003e58:	e1a00009 	mov	r0, r9
 8003e5c:	e3a0100d 	mov	r1, #13
 8003e60:	ebffff39 	bl	8003b4c <_Unwind_GetGR>
 8003e64:	e59d3010 	ldr	r3, [sp, #16]
 8003e68:	e5850020 	str	r0, [r5, #32]
 8003e6c:	e5856028 	str	r6, [r5, #40]	; 0x28
 8003e70:	e5853024 	str	r3, [r5, #36]	; 0x24
 8003e74:	e3a00006 	mov	r0, #6
 8003e78:	ea000017 	b	8003edc <__gnu_unwind_pr_common+0x204>
 8003e7c:	e2044001 	and	r4, r4, #1
 8003e80:	e184408b 	orr	r4, r4, fp, lsl #1
 8003e84:	e3540001 	cmp	r4, #1
 8003e88:	0a000044 	beq	8003fa0 <__gnu_unwind_pr_common+0x2c8>
 8003e8c:	3a000022 	bcc	8003f1c <__gnu_unwind_pr_common+0x244>
 8003e90:	e3540002 	cmp	r4, #2
 8003e94:	1a00000f 	bne	8003ed8 <__gnu_unwind_pr_common+0x200>
 8003e98:	e5963000 	ldr	r3, [r6]
 8003e9c:	e3580000 	cmp	r8, #0
 8003ea0:	e3c34102 	bic	r4, r3, #-2147483648	; 0x80000000
 8003ea4:	1a000057 	bne	8004008 <__gnu_unwind_pr_common+0x330>
 8003ea8:	e3530000 	cmp	r3, #0
 8003eac:	b2866004 	addlt	r6, r6, #4
 8003eb0:	e2844001 	add	r4, r4, #1
 8003eb4:	e0866104 	add	r6, r6, r4, lsl #2
 8003eb8:	eaffffa0 	b	8003d40 <__gnu_unwind_pr_common+0x68>
 8003ebc:	e3a03000 	mov	r3, #0
 8003ec0:	e58d3000 	str	r3, [sp]
 8003ec4:	e3570002 	cmp	r7, #2
 8003ec8:	da000038 	ble	8003fb0 <__gnu_unwind_pr_common+0x2d8>
 8003ecc:	ebfffe2d 	bl	8003788 <__gnu_unwind_24bit.isra.1>
 8003ed0:	e3500000 	cmp	r0, #0
 8003ed4:	0a00003a 	beq	8003fc4 <__gnu_unwind_pr_common+0x2ec>
 8003ed8:	e3a00009 	mov	r0, #9
 8003edc:	e28dd024 	add	sp, sp, #36	; 0x24
 8003ee0:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8003ee4:	e12fff1e 	bx	lr
 8003ee8:	e3570002 	cmp	r7, #2
 8003eec:	caffff8b 	bgt	8003d20 <__gnu_unwind_pr_common+0x48>
 8003ef0:	e3a02002 	mov	r2, #2
 8003ef4:	e1a03821 	lsr	r3, r1, #16
 8003ef8:	e5cd301d 	strb	r3, [sp, #29]
 8003efc:	e1a01801 	lsl	r1, r1, #16
 8003f00:	e20330ff 	and	r3, r3, #255	; 0xff
 8003f04:	e58d1014 	str	r1, [sp, #20]
 8003f08:	e5cd201c 	strb	r2, [sp, #28]
 8003f0c:	e0866103 	add	r6, r6, r3, lsl #2
 8003f10:	eaffff82 	b	8003d20 <__gnu_unwind_pr_common+0x48>
 8003f14:	e3580000 	cmp	r8, #0
 8003f18:	1a000070 	bne	80040e0 <__gnu_unwind_pr_common+0x408>
 8003f1c:	e2866004 	add	r6, r6, #4
 8003f20:	eaffff86 	b	8003d40 <__gnu_unwind_pr_common+0x68>
 8003f24:	e3580000 	cmp	r8, #0
 8003f28:	1a00003e 	bne	8004028 <__gnu_unwind_pr_common+0x350>
 8003f2c:	e896000c 	ldm	r6, {r2, r3}
 8003f30:	e3730002 	cmn	r3, #2
 8003f34:	e1a04fa2 	lsr	r4, r2, #31
 8003f38:	0affffe6 	beq	8003ed8 <__gnu_unwind_pr_common+0x200>
 8003f3c:	e3730001 	cmn	r3, #1
 8003f40:	e59d3008 	ldr	r3, [sp, #8]
 8003f44:	e58d3010 	str	r3, [sp, #16]
 8003f48:	0a00005b 	beq	80040bc <__gnu_unwind_pr_common+0x3e4>
 8003f4c:	e2860004 	add	r0, r6, #4
 8003f50:	ebfffe07 	bl	8003774 <_Unwind_decode_typeinfo_ptr.isra.0>
 8003f54:	e1a02004 	mov	r2, r4
 8003f58:	e1a01000 	mov	r1, r0
 8003f5c:	e28d3010 	add	r3, sp, #16
 8003f60:	e1a00005 	mov	r0, r5
 8003f64:	e320f000 	nop	{0}
 8003f68:	e3500000 	cmp	r0, #0
 8003f6c:	0a00000d 	beq	8003fa8 <__gnu_unwind_pr_common+0x2d0>
 8003f70:	e1a04000 	mov	r4, r0
 8003f74:	e3a0100d 	mov	r1, #13
 8003f78:	e1a00009 	mov	r0, r9
 8003f7c:	ebfffef2 	bl	8003b4c <_Unwind_GetGR>
 8003f80:	e3540002 	cmp	r4, #2
 8003f84:	e5850020 	str	r0, [r5, #32]
 8003f88:	1a00004f 	bne	80040cc <__gnu_unwind_pr_common+0x3f4>
 8003f8c:	e1a03005 	mov	r3, r5
 8003f90:	e59d2010 	ldr	r2, [sp, #16]
 8003f94:	e5a3202c 	str	r2, [r3, #44]!	; 0x2c
 8003f98:	e5853024 	str	r3, [r5, #36]	; 0x24
 8003f9c:	ea00004c 	b	80040d4 <__gnu_unwind_pr_common+0x3fc>
 8003fa0:	e3580000 	cmp	r8, #0
 8003fa4:	1a00001f 	bne	8004028 <__gnu_unwind_pr_common+0x350>
 8003fa8:	e2866008 	add	r6, r6, #8
 8003fac:	eaffff63 	b	8003d40 <__gnu_unwind_pr_common+0x68>
 8003fb0:	e1a00009 	mov	r0, r9
 8003fb4:	e28d1014 	add	r1, sp, #20
 8003fb8:	eb0001ff 	bl	80047bc <__gnu_unwind_execute>
 8003fbc:	e3500000 	cmp	r0, #0
 8003fc0:	1affffc4 	bne	8003ed8 <__gnu_unwind_pr_common+0x200>
 8003fc4:	e59d3000 	ldr	r3, [sp]
 8003fc8:	e3530000 	cmp	r3, #0
 8003fcc:	03a00008 	moveq	r0, #8
 8003fd0:	0affffc1 	beq	8003edc <__gnu_unwind_pr_common+0x204>
 8003fd4:	e3a0100f 	mov	r1, #15
 8003fd8:	e1a00009 	mov	r0, r9
 8003fdc:	ebfffeda 	bl	8003b4c <_Unwind_GetGR>
 8003fe0:	e3a0100e 	mov	r1, #14
 8003fe4:	e1a02000 	mov	r2, r0
 8003fe8:	e1a00009 	mov	r0, r9
 8003fec:	ebfffef9 	bl	8003bd8 <_Unwind_SetGR>
 8003ff0:	e1a00009 	mov	r0, r9
 8003ff4:	e3a0100f 	mov	r1, #15
 8003ff8:	e59f2128 	ldr	r2, [pc, #296]	; 8004128 <__gnu_unwind_pr_common+0x450>
 8003ffc:	ebfffef5 	bl	8003bd8 <_Unwind_SetGR>
 8004000:	e3a00007 	mov	r0, #7
 8004004:	eaffffb4 	b	8003edc <__gnu_unwind_pr_common+0x204>
 8004008:	e1a00009 	mov	r0, r9
 800400c:	e3a0100d 	mov	r1, #13
 8004010:	e595a020 	ldr	sl, [r5, #32]
 8004014:	ebfffecc 	bl	8003b4c <_Unwind_GetGR>
 8004018:	e15a0000 	cmp	sl, r0
 800401c:	0a000016 	beq	800407c <__gnu_unwind_pr_common+0x3a4>
 8004020:	e5963000 	ldr	r3, [r6]
 8004024:	eaffff9f 	b	8003ea8 <__gnu_unwind_pr_common+0x1d0>
 8004028:	e1a00009 	mov	r0, r9
 800402c:	e3a0100d 	mov	r1, #13
 8004030:	e5954020 	ldr	r4, [r5, #32]
 8004034:	ebfffec4 	bl	8003b4c <_Unwind_GetGR>
 8004038:	e1540000 	cmp	r4, r0
 800403c:	1affffd9 	bne	8003fa8 <__gnu_unwind_pr_common+0x2d0>
 8004040:	e5953028 	ldr	r3, [r5, #40]	; 0x28
 8004044:	e1560003 	cmp	r6, r3
 8004048:	1affffd6 	bne	8003fa8 <__gnu_unwind_pr_common+0x2d0>
 800404c:	e1a00006 	mov	r0, r6
 8004050:	ebfffd12 	bl	80034a0 <selfrel_offset31>
 8004054:	e3a0100f 	mov	r1, #15
 8004058:	e1a02000 	mov	r2, r0
 800405c:	e1a00009 	mov	r0, r9
 8004060:	ebfffedc 	bl	8003bd8 <_Unwind_SetGR>
 8004064:	e1a00009 	mov	r0, r9
 8004068:	e1a02005 	mov	r2, r5
 800406c:	e3a01000 	mov	r1, #0
 8004070:	ebfffed8 	bl	8003bd8 <_Unwind_SetGR>
 8004074:	e3a00007 	mov	r0, #7
 8004078:	eaffff97 	b	8003edc <__gnu_unwind_pr_common+0x204>
 800407c:	e5953028 	ldr	r3, [r5, #40]	; 0x28
 8004080:	e1560003 	cmp	r6, r3
 8004084:	1affffe5 	bne	8004020 <__gnu_unwind_pr_common+0x348>
 8004088:	e3a02000 	mov	r2, #0
 800408c:	e585202c 	str	r2, [r5, #44]	; 0x2c
 8004090:	e3a02004 	mov	r2, #4
 8004094:	e2863004 	add	r3, r6, #4
 8004098:	e5854028 	str	r4, [r5, #40]	; 0x28
 800409c:	e5852030 	str	r2, [r5, #48]	; 0x30
 80040a0:	e5853034 	str	r3, [r5, #52]	; 0x34
 80040a4:	e5963000 	ldr	r3, [r6]
 80040a8:	e3530000 	cmp	r3, #0
 80040ac:	ba00001a 	blt	800411c <__gnu_unwind_pr_common+0x444>
 80040b0:	e3a03001 	mov	r3, #1
 80040b4:	e58d3000 	str	r3, [sp]
 80040b8:	eaffff7c 	b	8003eb0 <__gnu_unwind_pr_common+0x1d8>
 80040bc:	e1a00009 	mov	r0, r9
 80040c0:	e3a0100d 	mov	r1, #13
 80040c4:	ebfffea0 	bl	8003b4c <_Unwind_GetGR>
 80040c8:	e5850020 	str	r0, [r5, #32]
 80040cc:	e59d3010 	ldr	r3, [sp, #16]
 80040d0:	e5853024 	str	r3, [r5, #36]	; 0x24
 80040d4:	e5856028 	str	r6, [r5, #40]	; 0x28
 80040d8:	e3a00006 	mov	r0, #6
 80040dc:	eaffff7e 	b	8003edc <__gnu_unwind_pr_common+0x204>
 80040e0:	e1a00006 	mov	r0, r6
 80040e4:	ebfffced 	bl	80034a0 <selfrel_offset31>
 80040e8:	e2866004 	add	r6, r6, #4
 80040ec:	e1a04000 	mov	r4, r0
 80040f0:	e5856038 	str	r6, [r5, #56]	; 0x38
 80040f4:	e1a00005 	mov	r0, r5
 80040f8:	e320f000 	nop	{0}
 80040fc:	e3500000 	cmp	r0, #0
 8004100:	0affff74 	beq	8003ed8 <__gnu_unwind_pr_common+0x200>
 8004104:	e1a00009 	mov	r0, r9
 8004108:	e1a02004 	mov	r2, r4
 800410c:	e3a0100f 	mov	r1, #15
 8004110:	ebfffeb0 	bl	8003bd8 <_Unwind_SetGR>
 8004114:	e3a00007 	mov	r0, #7
 8004118:	eaffff6f 	b	8003edc <__gnu_unwind_pr_common+0x204>
 800411c:	e2840001 	add	r0, r4, #1
 8004120:	e0860100 	add	r0, r6, r0, lsl #2
 8004124:	eaffffc9 	b	8004050 <__gnu_unwind_pr_common+0x378>
 8004128:	00000000 	.word	0x00000000

0800412c <__aeabi_unwind_cpp_pr0>:
 800412c:	e3a03000 	mov	r3, #0
 8004130:	eafffee8 	b	8003cd8 <__gnu_unwind_pr_common>

08004134 <__aeabi_unwind_cpp_pr1>:
 8004134:	e3a03001 	mov	r3, #1
 8004138:	eafffee6 	b	8003cd8 <__gnu_unwind_pr_common>

0800413c <__aeabi_unwind_cpp_pr2>:
 800413c:	e3a03002 	mov	r3, #2
 8004140:	eafffee4 	b	8003cd8 <__gnu_unwind_pr_common>

08004144 <_Unwind_VRS_Pop>:
 8004144:	e92d43f0 	push	{r4, r5, r6, r7, r8, r9, lr}
 8004148:	e1a04000 	mov	r4, r0
 800414c:	e24ddf45 	sub	sp, sp, #276	; 0x114
 8004150:	e3510004 	cmp	r1, #4
 8004154:	979ff101 	ldrls	pc, [pc, r1, lsl #2]
 8004158:	ea000006 	b	8004178 <_Unwind_VRS_Pop+0x34>
 800415c:	08004358 	.word	0x08004358
 8004160:	080041f0 	.word	0x080041f0
 8004164:	08004178 	.word	0x08004178
 8004168:	08004170 	.word	0x08004170
 800416c:	08004188 	.word	0x08004188
 8004170:	e3530003 	cmp	r3, #3
 8004174:	0a00009c 	beq	80043ec <_Unwind_VRS_Pop+0x2a8>
 8004178:	e3a00002 	mov	r0, #2
 800417c:	e28ddf45 	add	sp, sp, #276	; 0x114
 8004180:	e8bd43f0 	pop	{r4, r5, r6, r7, r8, r9, lr}
 8004184:	e12fff1e 	bx	lr
 8004188:	e3520010 	cmp	r2, #16
 800418c:	93530000 	cmpls	r3, #0
 8004190:	1afffff8 	bne	8004178 <_Unwind_VRS_Pop+0x34>
 8004194:	e5903000 	ldr	r3, [r0]
 8004198:	e3130010 	tst	r3, #16
 800419c:	1a0000b1 	bne	8004468 <_Unwind_VRS_Pop+0x324>
 80041a0:	e28d5088 	add	r5, sp, #136	; 0x88
 80041a4:	e1a00005 	mov	r0, r5
 80041a8:	e58d2004 	str	r2, [sp, #4]
 80041ac:	eb00012b 	bl	8004660 <__gnu_Unwind_Save_WMMXC>
 80041b0:	e3a03000 	mov	r3, #0
 80041b4:	e3a00001 	mov	r0, #1
 80041b8:	e5941038 	ldr	r1, [r4, #56]	; 0x38
 80041bc:	e59d2004 	ldr	r2, [sp, #4]
 80041c0:	e012c310 	ands	ip, r2, r0, lsl r3
 80041c4:	1591c000 	ldrne	ip, [r1]
 80041c8:	1785c103 	strne	ip, [r5, r3, lsl #2]
 80041cc:	e2833001 	add	r3, r3, #1
 80041d0:	12811004 	addne	r1, r1, #4
 80041d4:	e3530004 	cmp	r3, #4
 80041d8:	1afffff8 	bne	80041c0 <_Unwind_VRS_Pop+0x7c>
 80041dc:	e1a00005 	mov	r0, r5
 80041e0:	e5841038 	str	r1, [r4, #56]	; 0x38
 80041e4:	eb000118 	bl	800464c <__gnu_Unwind_Restore_WMMXC>
 80041e8:	e3a00000 	mov	r0, #0
 80041ec:	eaffffe2 	b	800417c <_Unwind_VRS_Pop+0x38>
 80041f0:	e20310fb 	and	r1, r3, #251	; 0xfb
 80041f4:	e3510001 	cmp	r1, #1
 80041f8:	1affffde 	bne	8004178 <_Unwind_VRS_Pop+0x34>
 80041fc:	e1a06802 	lsl	r6, r2, #16
 8004200:	e1a06826 	lsr	r6, r6, #16
 8004204:	e1a08822 	lsr	r8, r2, #16
 8004208:	e3530001 	cmp	r3, #1
 800420c:	e0861008 	add	r1, r6, r8
 8004210:	0a000063 	beq	80043a4 <_Unwind_VRS_Pop+0x260>
 8004214:	e3510020 	cmp	r1, #32
 8004218:	8affffd6 	bhi	8004178 <_Unwind_VRS_Pop+0x34>
 800421c:	e358000f 	cmp	r8, #15
 8004220:	9a000096 	bls	8004480 <_Unwind_VRS_Pop+0x33c>
 8004224:	e1a07006 	mov	r7, r6
 8004228:	e3570000 	cmp	r7, #0
 800422c:	13530005 	cmpne	r3, #5
 8004230:	13a09001 	movne	r9, #1
 8004234:	03a09000 	moveq	r9, #0
 8004238:	1affffce 	bne	8004178 <_Unwind_VRS_Pop+0x34>
 800423c:	e358000f 	cmp	r8, #15
 8004240:	8a000096 	bhi	80044a0 <_Unwind_VRS_Pop+0x35c>
 8004244:	e5942000 	ldr	r2, [r4]
 8004248:	e3120001 	tst	r2, #1
 800424c:	0a000093 	beq	80044a0 <_Unwind_VRS_Pop+0x35c>
 8004250:	e3530005 	cmp	r3, #5
 8004254:	e3c23001 	bic	r3, r2, #1
 8004258:	e5843000 	str	r3, [r4]
 800425c:	0a0000bb 	beq	8004550 <_Unwind_VRS_Pop+0x40c>
 8004260:	e1a00004 	mov	r0, r4
 8004264:	e3c22003 	bic	r2, r2, #3
 8004268:	e4802048 	str	r2, [r0], #72	; 0x48
 800426c:	eb0000ca 	bl	800459c <__gnu_Unwind_Save_VFP>
 8004270:	e3570000 	cmp	r7, #0
 8004274:	0a000099 	beq	80044e0 <_Unwind_VRS_Pop+0x39c>
 8004278:	e5943000 	ldr	r3, [r4]
 800427c:	e3130004 	tst	r3, #4
 8004280:	1a0000ad 	bne	800453c <_Unwind_VRS_Pop+0x3f8>
 8004284:	e3590000 	cmp	r9, #0
 8004288:	1a0000b7 	bne	800456c <_Unwind_VRS_Pop+0x428>
 800428c:	e358000f 	cmp	r8, #15
 8004290:	8a000004 	bhi	80042a8 <_Unwind_VRS_Pop+0x164>
 8004294:	e28d5088 	add	r5, sp, #136	; 0x88
 8004298:	e1a00005 	mov	r0, r5
 800429c:	eb0000c2 	bl	80045ac <__gnu_Unwind_Save_VFP_D>
 80042a0:	e3570000 	cmp	r7, #0
 80042a4:	0a00009b 	beq	8004518 <_Unwind_VRS_Pop+0x3d4>
 80042a8:	e28d0008 	add	r0, sp, #8
 80042ac:	eb0000c2 	bl	80045bc <__gnu_Unwind_Save_VFP_D_16_to_31>
 80042b0:	e2683010 	rsb	r3, r8, #16
 80042b4:	e3530000 	cmp	r3, #0
 80042b8:	e5941038 	ldr	r1, [r4, #56]	; 0x38
 80042bc:	da00000d 	ble	80042f8 <_Unwind_VRS_Pop+0x1b4>
 80042c0:	e28d5088 	add	r5, sp, #136	; 0x88
 80042c4:	e1a00001 	mov	r0, r1
 80042c8:	e1a0e083 	lsl	lr, r3, #1
 80042cc:	e0852188 	add	r2, r5, r8, lsl #3
 80042d0:	e2422004 	sub	r2, r2, #4
 80042d4:	e24e3001 	sub	r3, lr, #1
 80042d8:	e2433001 	sub	r3, r3, #1
 80042dc:	e490c004 	ldr	ip, [r0], #4
 80042e0:	e3730001 	cmn	r3, #1
 80042e4:	e5a2c004 	str	ip, [r2, #4]!
 80042e8:	1afffffa 	bne	80042d8 <_Unwind_VRS_Pop+0x194>
 80042ec:	e3570000 	cmp	r7, #0
 80042f0:	e081110e 	add	r1, r1, lr, lsl #2
 80042f4:	0a00000d 	beq	8004330 <_Unwind_VRS_Pop+0x1ec>
 80042f8:	e3580010 	cmp	r8, #16
 80042fc:	21a02008 	movcs	r2, r8
 8004300:	33a02010 	movcc	r2, #16
 8004304:	e28d3e11 	add	r3, sp, #272	; 0x110
 8004308:	e0832182 	add	r2, r3, r2, lsl #3
 800430c:	e2422f62 	sub	r2, r2, #392	; 0x188
 8004310:	e1a00087 	lsl	r0, r7, #1
 8004314:	e1a03001 	mov	r3, r1
 8004318:	e2422004 	sub	r2, r2, #4
 800431c:	e0811100 	add	r1, r1, r0, lsl #2
 8004320:	e4930004 	ldr	r0, [r3], #4
 8004324:	e1530001 	cmp	r3, r1
 8004328:	e5a20004 	str	r0, [r2, #4]!
 800432c:	1afffffb 	bne	8004320 <_Unwind_VRS_Pop+0x1dc>
 8004330:	e3590000 	cmp	r9, #0
 8004334:	1a00007b 	bne	8004528 <_Unwind_VRS_Pop+0x3e4>
 8004338:	e358000f 	cmp	r8, #15
 800433c:	e5841038 	str	r1, [r4, #56]	; 0x38
 8004340:	9a00007a 	bls	8004530 <_Unwind_VRS_Pop+0x3ec>
 8004344:	e3570000 	cmp	r7, #0
 8004348:	128d0008 	addne	r0, sp, #8
 800434c:	1b000098 	blne	80045b4 <__gnu_Unwind_Restore_VFP_D_16_to_31>
 8004350:	e3a00000 	mov	r0, #0
 8004354:	eaffff88 	b	800417c <_Unwind_VRS_Pop+0x38>
 8004358:	e3530000 	cmp	r3, #0
 800435c:	1affff85 	bne	8004178 <_Unwind_VRS_Pop+0x34>
 8004360:	e3a0e001 	mov	lr, #1
 8004364:	e1a00802 	lsl	r0, r2, #16
 8004368:	e594c038 	ldr	ip, [r4, #56]	; 0x38
 800436c:	e1a00820 	lsr	r0, r0, #16
 8004370:	e2841004 	add	r1, r4, #4
 8004374:	e010531e 	ands	r5, r0, lr, lsl r3
 8004378:	159c5000 	ldrne	r5, [ip]
 800437c:	e2833001 	add	r3, r3, #1
 8004380:	15815000 	strne	r5, [r1]
 8004384:	128cc004 	addne	ip, ip, #4
 8004388:	e3530010 	cmp	r3, #16
 800438c:	e2811004 	add	r1, r1, #4
 8004390:	1afffff7 	bne	8004374 <_Unwind_VRS_Pop+0x230>
 8004394:	e2120a02 	ands	r0, r2, #8192	; 0x2000
 8004398:	0584c038 	streq	ip, [r4, #56]	; 0x38
 800439c:	0affff76 	beq	800417c <_Unwind_VRS_Pop+0x38>
 80043a0:	eaffffea 	b	8004350 <_Unwind_VRS_Pop+0x20c>
 80043a4:	e3510010 	cmp	r1, #16
 80043a8:	8affff72 	bhi	8004178 <_Unwind_VRS_Pop+0x34>
 80043ac:	e358000f 	cmp	r8, #15
 80043b0:	91a09003 	movls	r9, r3
 80043b4:	8affff6f 	bhi	8004178 <_Unwind_VRS_Pop+0x34>
 80043b8:	e5942000 	ldr	r2, [r4]
 80043bc:	e3120001 	tst	r2, #1
 80043c0:	0a000046 	beq	80044e0 <_Unwind_VRS_Pop+0x39c>
 80043c4:	e3530005 	cmp	r3, #5
 80043c8:	e3c23001 	bic	r3, r2, #1
 80043cc:	e5843000 	str	r3, [r4]
 80043d0:	e3a07000 	mov	r7, #0
 80043d4:	1affffa1 	bne	8004260 <_Unwind_VRS_Pop+0x11c>
 80043d8:	e1a00004 	mov	r0, r4
 80043dc:	e3833002 	orr	r3, r3, #2
 80043e0:	e4803048 	str	r3, [r0], #72	; 0x48
 80043e4:	eb000070 	bl	80045ac <__gnu_Unwind_Save_VFP_D>
 80043e8:	eaffffa9 	b	8004294 <_Unwind_VRS_Pop+0x150>
 80043ec:	e1a07802 	lsl	r7, r2, #16
 80043f0:	e1a07827 	lsr	r7, r7, #16
 80043f4:	e1a06822 	lsr	r6, r2, #16
 80043f8:	e0873006 	add	r3, r7, r6
 80043fc:	e3530010 	cmp	r3, #16
 8004400:	8affff5c 	bhi	8004178 <_Unwind_VRS_Pop+0x34>
 8004404:	e5903000 	ldr	r3, [r0]
 8004408:	e3130008 	tst	r3, #8
 800440c:	1a00001f 	bne	8004490 <_Unwind_VRS_Pop+0x34c>
 8004410:	e28d5088 	add	r5, sp, #136	; 0x88
 8004414:	e1a07087 	lsl	r7, r7, #1
 8004418:	e1a00005 	mov	r0, r5
 800441c:	eb000079 	bl	8004608 <__gnu_Unwind_Save_WMMXD>
 8004420:	e3570000 	cmp	r7, #0
 8004424:	e0852186 	add	r2, r5, r6, lsl #3
 8004428:	e2473001 	sub	r3, r7, #1
 800442c:	e594c038 	ldr	ip, [r4, #56]	; 0x38
 8004430:	0a000007 	beq	8004454 <_Unwind_VRS_Pop+0x310>
 8004434:	e1a0100c 	mov	r1, ip
 8004438:	e2422004 	sub	r2, r2, #4
 800443c:	e2433001 	sub	r3, r3, #1
 8004440:	e4910004 	ldr	r0, [r1], #4
 8004444:	e3730001 	cmn	r3, #1
 8004448:	e5a20004 	str	r0, [r2, #4]!
 800444c:	1afffffa 	bne	800443c <_Unwind_VRS_Pop+0x2f8>
 8004450:	e08cc107 	add	ip, ip, r7, lsl #2
 8004454:	e1a00005 	mov	r0, r5
 8004458:	e584c038 	str	ip, [r4, #56]	; 0x38
 800445c:	eb000058 	bl	80045c4 <__gnu_Unwind_Restore_WMMXD>
 8004460:	e3a00000 	mov	r0, #0
 8004464:	eaffff44 	b	800417c <_Unwind_VRS_Pop+0x38>
 8004468:	e3c33010 	bic	r3, r3, #16
 800446c:	e48031d0 	str	r3, [r0], #464	; 0x1d0
 8004470:	e58d2004 	str	r2, [sp, #4]
 8004474:	eb000079 	bl	8004660 <__gnu_Unwind_Save_WMMXC>
 8004478:	e59d2004 	ldr	r2, [sp, #4]
 800447c:	eaffff47 	b	80041a0 <_Unwind_VRS_Pop+0x5c>
 8004480:	e3510010 	cmp	r1, #16
 8004484:	9a000013 	bls	80044d8 <_Unwind_VRS_Pop+0x394>
 8004488:	e2417010 	sub	r7, r1, #16
 800448c:	eaffff65 	b	8004228 <_Unwind_VRS_Pop+0xe4>
 8004490:	e3c33008 	bic	r3, r3, #8
 8004494:	e4803150 	str	r3, [r0], #336	; 0x150
 8004498:	eb00005a 	bl	8004608 <__gnu_Unwind_Save_WMMXD>
 800449c:	eaffffdb 	b	8004410 <_Unwind_VRS_Pop+0x2cc>
 80044a0:	e3570000 	cmp	r7, #0
 80044a4:	1affff73 	bne	8004278 <_Unwind_VRS_Pop+0x134>
 80044a8:	e358000f 	cmp	r8, #15
 80044ac:	93a09000 	movls	r9, #0
 80044b0:	91a07009 	movls	r7, r9
 80044b4:	9affff76 	bls	8004294 <_Unwind_VRS_Pop+0x150>
 80044b8:	e3a09000 	mov	r9, #0
 80044bc:	e3560000 	cmp	r6, #0
 80044c0:	e1a03006 	mov	r3, r6
 80044c4:	e5941038 	ldr	r1, [r4, #56]	; 0x38
 80044c8:	11a07009 	movne	r7, r9
 80044cc:	1affff7b 	bne	80042c0 <_Unwind_VRS_Pop+0x17c>
 80044d0:	e1a07006 	mov	r7, r6
 80044d4:	eaffff97 	b	8004338 <_Unwind_VRS_Pop+0x1f4>
 80044d8:	e3a09000 	mov	r9, #0
 80044dc:	eaffffb5 	b	80043b8 <_Unwind_VRS_Pop+0x274>
 80044e0:	e3590000 	cmp	r9, #0
 80044e4:	0affffef 	beq	80044a8 <_Unwind_VRS_Pop+0x364>
 80044e8:	e28d5088 	add	r5, sp, #136	; 0x88
 80044ec:	e1a00005 	mov	r0, r5
 80044f0:	eb000029 	bl	800459c <__gnu_Unwind_Save_VFP>
 80044f4:	e2563000 	subs	r3, r6, #0
 80044f8:	e5941038 	ldr	r1, [r4, #56]	; 0x38
 80044fc:	13a07000 	movne	r7, #0
 8004500:	1affff6f 	bne	80042c4 <_Unwind_VRS_Pop+0x180>
 8004504:	e2811004 	add	r1, r1, #4
 8004508:	e5841038 	str	r1, [r4, #56]	; 0x38
 800450c:	e1a00005 	mov	r0, r5
 8004510:	eb00001f 	bl	8004594 <__gnu_Unwind_Restore_VFP>
 8004514:	eaffff8d 	b	8004350 <_Unwind_VRS_Pop+0x20c>
 8004518:	e2563000 	subs	r3, r6, #0
 800451c:	e5941038 	ldr	r1, [r4, #56]	; 0x38
 8004520:	1affff67 	bne	80042c4 <_Unwind_VRS_Pop+0x180>
 8004524:	eaffff81 	b	8004330 <_Unwind_VRS_Pop+0x1ec>
 8004528:	e28d5088 	add	r5, sp, #136	; 0x88
 800452c:	eafffff4 	b	8004504 <_Unwind_VRS_Pop+0x3c0>
 8004530:	e28d0088 	add	r0, sp, #136	; 0x88
 8004534:	eb00001a 	bl	80045a4 <__gnu_Unwind_Restore_VFP_D>
 8004538:	eaffff81 	b	8004344 <_Unwind_VRS_Pop+0x200>
 800453c:	e1a00004 	mov	r0, r4
 8004540:	e3c33004 	bic	r3, r3, #4
 8004544:	e48030d0 	str	r3, [r0], #208	; 0xd0
 8004548:	eb00001b 	bl	80045bc <__gnu_Unwind_Save_VFP_D_16_to_31>
 800454c:	eaffff4c 	b	8004284 <_Unwind_VRS_Pop+0x140>
 8004550:	e1a00004 	mov	r0, r4
 8004554:	e3833002 	orr	r3, r3, #2
 8004558:	e4803048 	str	r3, [r0], #72	; 0x48
 800455c:	eb000012 	bl	80045ac <__gnu_Unwind_Save_VFP_D>
 8004560:	e3570000 	cmp	r7, #0
 8004564:	1affff43 	bne	8004278 <_Unwind_VRS_Pop+0x134>
 8004568:	eaffff49 	b	8004294 <_Unwind_VRS_Pop+0x150>
 800456c:	e28d0088 	add	r0, sp, #136	; 0x88
 8004570:	eb000009 	bl	800459c <__gnu_Unwind_Save_VFP>
 8004574:	eaffff4d 	b	80042b0 <_Unwind_VRS_Pop+0x16c>

08004578 <__restore_core_regs>:
 8004578:	e2801034 	add	r1, r0, #52	; 0x34
 800457c:	e8910038 	ldm	r1, {r3, r4, r5}
 8004580:	e1a02005 	mov	r2, r5
 8004584:	e92d001c 	push	{r2, r3, r4}
 8004588:	e8900fff 	ldm	r0, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp}
 800458c:	e89d7000 	ldm	sp, {ip, sp, lr}
 8004590:	e12fff1c 	bx	ip

08004594 <__gnu_Unwind_Restore_VFP>:
 8004594:	ec900b21 	fldmiax	r0, {d0-d15}	;@ Deprecated
 8004598:	e12fff1e 	bx	lr

0800459c <__gnu_Unwind_Save_VFP>:
 800459c:	ec800b21 	fstmiax	r0, {d0-d15}	;@ Deprecated
 80045a0:	e12fff1e 	bx	lr

080045a4 <__gnu_Unwind_Restore_VFP_D>:
 80045a4:	ec900b20 	vldmia	r0, {d0-d15}
 80045a8:	e12fff1e 	bx	lr

080045ac <__gnu_Unwind_Save_VFP_D>:
 80045ac:	ec800b20 	vstmia	r0, {d0-d15}
 80045b0:	e12fff1e 	bx	lr

080045b4 <__gnu_Unwind_Restore_VFP_D_16_to_31>:
 80045b4:	ecd00b20 	vldmia	r0, {d16-d31}
 80045b8:	e12fff1e 	bx	lr

080045bc <__gnu_Unwind_Save_VFP_D_16_to_31>:
 80045bc:	ecc00b20 	vstmia	r0, {d16-d31}
 80045c0:	e12fff1e 	bx	lr

080045c4 <__gnu_Unwind_Restore_WMMXD>:
 80045c4:	ecf00102 	ldfe	f0, [r0], #8
 80045c8:	ecf01102 	ldfe	f1, [r0], #8
 80045cc:	ecf02102 	ldfe	f2, [r0], #8
 80045d0:	ecf03102 	ldfe	f3, [r0], #8
 80045d4:	ecf04102 	ldfe	f4, [r0], #8
 80045d8:	ecf05102 	ldfe	f5, [r0], #8
 80045dc:	ecf06102 	ldfe	f6, [r0], #8
 80045e0:	ecf07102 	ldfe	f7, [r0], #8
 80045e4:	ecf08102 	ldfp	f0, [r0], #8
 80045e8:	ecf09102 	ldfp	f1, [r0], #8
 80045ec:	ecf0a102 	ldfp	f2, [r0], #8
 80045f0:	ecf0b102 	ldfp	f3, [r0], #8
 80045f4:	ecf0c102 	ldfp	f4, [r0], #8
 80045f8:	ecf0d102 	ldfp	f5, [r0], #8
 80045fc:	ecf0e102 	ldfp	f6, [r0], #8
 8004600:	ecf0f102 	ldfp	f7, [r0], #8
 8004604:	e12fff1e 	bx	lr

08004608 <__gnu_Unwind_Save_WMMXD>:
 8004608:	ece00102 	stfe	f0, [r0], #8
 800460c:	ece01102 	stfe	f1, [r0], #8
 8004610:	ece02102 	stfe	f2, [r0], #8
 8004614:	ece03102 	stfe	f3, [r0], #8
 8004618:	ece04102 	stfe	f4, [r0], #8
 800461c:	ece05102 	stfe	f5, [r0], #8
 8004620:	ece06102 	stfe	f6, [r0], #8
 8004624:	ece07102 	stfe	f7, [r0], #8
 8004628:	ece08102 	stfp	f0, [r0], #8
 800462c:	ece09102 	stfp	f1, [r0], #8
 8004630:	ece0a102 	stfp	f2, [r0], #8
 8004634:	ece0b102 	stfp	f3, [r0], #8
 8004638:	ece0c102 	stfp	f4, [r0], #8
 800463c:	ece0d102 	stfp	f5, [r0], #8
 8004640:	ece0e102 	stfp	f6, [r0], #8
 8004644:	ece0f102 	stfp	f7, [r0], #8
 8004648:	e12fff1e 	bx	lr

0800464c <__gnu_Unwind_Restore_WMMXC>:
 800464c:	fcb08101 	ldc2	1, cr8, [r0], #4
 8004650:	fcb09101 	ldc2	1, cr9, [r0], #4
 8004654:	fcb0a101 	ldc2	1, cr10, [r0], #4
 8004658:	fcb0b101 	ldc2	1, cr11, [r0], #4
 800465c:	e12fff1e 	bx	lr

08004660 <__gnu_Unwind_Save_WMMXC>:
 8004660:	fca08101 	stc2	1, cr8, [r0], #4
 8004664:	fca09101 	stc2	1, cr9, [r0], #4
 8004668:	fca0a101 	stc2	1, cr10, [r0], #4
 800466c:	fca0b101 	stc2	1, cr11, [r0], #4
 8004670:	e12fff1e 	bx	lr

08004674 <_Unwind_RaiseException>:
 8004674:	e92de000 	push	{sp, lr, pc}
 8004678:	e92d1fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
 800467c:	e3a03000 	mov	r3, #0
 8004680:	e92d000c 	push	{r2, r3}
 8004684:	e28d1004 	add	r1, sp, #4
 8004688:	ebfffcb8 	bl	8003970 <__gnu_Unwind_RaiseException>
 800468c:	e59de040 	ldr	lr, [sp, #64]	; 0x40
 8004690:	e28dd048 	add	sp, sp, #72	; 0x48
 8004694:	e12fff1e 	bx	lr

08004698 <_Unwind_Resume>:
 8004698:	e92de000 	push	{sp, lr, pc}
 800469c:	e92d1fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
 80046a0:	e3a03000 	mov	r3, #0
 80046a4:	e92d000c 	push	{r2, r3}
 80046a8:	e28d1004 	add	r1, sp, #4
 80046ac:	ebfffce4 	bl	8003a44 <__gnu_Unwind_Resume>
 80046b0:	e59de040 	ldr	lr, [sp, #64]	; 0x40
 80046b4:	e28dd048 	add	sp, sp, #72	; 0x48
 80046b8:	e12fff1e 	bx	lr

080046bc <_Unwind_Resume_or_Rethrow>:
 80046bc:	e92de000 	push	{sp, lr, pc}
 80046c0:	e92d1fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
 80046c4:	e3a03000 	mov	r3, #0
 80046c8:	e92d000c 	push	{r2, r3}
 80046cc:	e28d1004 	add	r1, sp, #4
 80046d0:	ebfffcf8 	bl	8003ab8 <__gnu_Unwind_Resume_or_Rethrow>
 80046d4:	e59de040 	ldr	lr, [sp, #64]	; 0x40
 80046d8:	e28dd048 	add	sp, sp, #72	; 0x48
 80046dc:	e12fff1e 	bx	lr

080046e0 <_Unwind_ForcedUnwind>:
 80046e0:	e92de000 	push	{sp, lr, pc}
 80046e4:	e92d1fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
 80046e8:	e3a03000 	mov	r3, #0
 80046ec:	e92d000c 	push	{r2, r3}
 80046f0:	e28d3004 	add	r3, sp, #4
 80046f4:	ebfffcc9 	bl	8003a20 <__gnu_Unwind_ForcedUnwind>
 80046f8:	e59de040 	ldr	lr, [sp, #64]	; 0x40
 80046fc:	e28dd048 	add	sp, sp, #72	; 0x48
 8004700:	e12fff1e 	bx	lr

08004704 <_Unwind_Backtrace>:
 8004704:	e92de000 	push	{sp, lr, pc}
 8004708:	e92d1fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
 800470c:	e3a03000 	mov	r3, #0
 8004710:	e92d000c 	push	{r2, r3}
 8004714:	e28d2004 	add	r2, sp, #4
 8004718:	ebfffd3b 	bl	8003c0c <__gnu_Unwind_Backtrace>
 800471c:	e59de040 	ldr	lr, [sp, #64]	; 0x40
 8004720:	e28dd048 	add	sp, sp, #72	; 0x48
 8004724:	e12fff1e 	bx	lr

08004728 <next_unwind_byte>:
 8004728:	e5d03008 	ldrb	r3, [r0, #8]
 800472c:	e3530000 	cmp	r3, #0
 8004730:	1a000004 	bne	8004748 <next_unwind_byte+0x20>
 8004734:	e5d03009 	ldrb	r3, [r0, #9]
 8004738:	e3530000 	cmp	r3, #0
 800473c:	1a000008 	bne	8004764 <next_unwind_byte+0x3c>
 8004740:	e3a000b0 	mov	r0, #176	; 0xb0
 8004744:	e12fff1e 	bx	lr
 8004748:	e2433001 	sub	r3, r3, #1
 800474c:	e5c03008 	strb	r3, [r0, #8]
 8004750:	e5903000 	ldr	r3, [r0]
 8004754:	e1a02403 	lsl	r2, r3, #8
 8004758:	e5802000 	str	r2, [r0]
 800475c:	e1a00c23 	lsr	r0, r3, #24
 8004760:	e12fff1e 	bx	lr
 8004764:	e3a01003 	mov	r1, #3
 8004768:	e5902004 	ldr	r2, [r0, #4]
 800476c:	e2433001 	sub	r3, r3, #1
 8004770:	e5c03009 	strb	r3, [r0, #9]
 8004774:	e282c004 	add	ip, r2, #4
 8004778:	e5923000 	ldr	r3, [r2]
 800477c:	e580c004 	str	ip, [r0, #4]
 8004780:	e5c01008 	strb	r1, [r0, #8]
 8004784:	eafffff2 	b	8004754 <next_unwind_byte+0x2c>

08004788 <_Unwind_GetGR.constprop.0>:
 8004788:	e3a01000 	mov	r1, #0
 800478c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 8004790:	e24dd014 	sub	sp, sp, #20
 8004794:	e28d200c 	add	r2, sp, #12
 8004798:	e58d2000 	str	r2, [sp]
 800479c:	e1a03001 	mov	r3, r1
 80047a0:	e3a0200c 	mov	r2, #12
 80047a4:	ebfffcd1 	bl	8003af0 <_Unwind_VRS_Get>
 80047a8:	e59d000c 	ldr	r0, [sp, #12]
 80047ac:	e28dd014 	add	sp, sp, #20
 80047b0:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 80047b4:	e12fff1e 	bx	lr

080047b8 <unwind_UCB_from_context>:
 80047b8:	eafffff2 	b	8004788 <_Unwind_GetGR.constprop.0>

080047bc <__gnu_unwind_execute>:
 80047bc:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
 80047c0:	e1a07000 	mov	r7, r0
 80047c4:	e1a05001 	mov	r5, r1
 80047c8:	e3a08000 	mov	r8, #0
 80047cc:	e24dd010 	sub	sp, sp, #16
 80047d0:	e1a00005 	mov	r0, r5
 80047d4:	ebffffd3 	bl	8004728 <next_unwind_byte>
 80047d8:	e35000b0 	cmp	r0, #176	; 0xb0
 80047dc:	e1a04000 	mov	r4, r0
 80047e0:	0a00007d 	beq	80049dc <__gnu_unwind_execute+0x220>
 80047e4:	e2101080 	ands	r1, r0, #128	; 0x80
 80047e8:	0a00001a 	beq	8004858 <__gnu_unwind_execute+0x9c>
 80047ec:	e20030f0 	and	r3, r0, #240	; 0xf0
 80047f0:	e3530080 	cmp	r3, #128	; 0x80
 80047f4:	0a000054 	beq	800494c <__gnu_unwind_execute+0x190>
 80047f8:	e3530090 	cmp	r3, #144	; 0x90
 80047fc:	0a00002b 	beq	80048b0 <__gnu_unwind_execute+0xf4>
 8004800:	e35300a0 	cmp	r3, #160	; 0xa0
 8004804:	0a000034 	beq	80048dc <__gnu_unwind_execute+0x120>
 8004808:	e35300b0 	cmp	r3, #176	; 0xb0
 800480c:	0a000040 	beq	8004914 <__gnu_unwind_execute+0x158>
 8004810:	e35300c0 	cmp	r3, #192	; 0xc0
 8004814:	0a00005e 	beq	8004994 <__gnu_unwind_execute+0x1d8>
 8004818:	e20030f8 	and	r3, r0, #248	; 0xf8
 800481c:	e35300d0 	cmp	r3, #208	; 0xd0
 8004820:	1a000008 	bne	8004848 <__gnu_unwind_execute+0x8c>
 8004824:	e2002007 	and	r2, r0, #7
 8004828:	e2822001 	add	r2, r2, #1
 800482c:	e3822702 	orr	r2, r2, #524288	; 0x80000
 8004830:	e1a00007 	mov	r0, r7
 8004834:	e3a01001 	mov	r1, #1
 8004838:	e3a03005 	mov	r3, #5
 800483c:	ebfffe40 	bl	8004144 <_Unwind_VRS_Pop>
 8004840:	e3500000 	cmp	r0, #0
 8004844:	0affffe1 	beq	80047d0 <__gnu_unwind_execute+0x14>
 8004848:	e3a00009 	mov	r0, #9
 800484c:	e28dd010 	add	sp, sp, #16
 8004850:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
 8004854:	e12fff1e 	bx	lr
 8004858:	e28d300c 	add	r3, sp, #12
 800485c:	e1a06100 	lsl	r6, r0, #2
 8004860:	e58d3000 	str	r3, [sp]
 8004864:	e1a00007 	mov	r0, r7
 8004868:	e1a03001 	mov	r3, r1
 800486c:	e3a0200d 	mov	r2, #13
 8004870:	ebfffc9e 	bl	8003af0 <_Unwind_VRS_Get>
 8004874:	e20660ff 	and	r6, r6, #255	; 0xff
 8004878:	e59d300c 	ldr	r3, [sp, #12]
 800487c:	e2866004 	add	r6, r6, #4
 8004880:	e3140040 	tst	r4, #64	; 0x40
 8004884:	10666003 	rsbne	r6, r6, r3
 8004888:	00836006 	addeq	r6, r3, r6
 800488c:	e58d600c 	str	r6, [sp, #12]
 8004890:	e3a01000 	mov	r1, #0
 8004894:	e28d300c 	add	r3, sp, #12
 8004898:	e58d3000 	str	r3, [sp]
 800489c:	e1a00007 	mov	r0, r7
 80048a0:	e1a03001 	mov	r3, r1
 80048a4:	e3a0200d 	mov	r2, #13
 80048a8:	ebfffcb3 	bl	8003b7c <_Unwind_VRS_Set>
 80048ac:	eaffffc7 	b	80047d0 <__gnu_unwind_execute+0x14>
 80048b0:	e200300d 	and	r3, r0, #13
 80048b4:	e353000d 	cmp	r3, #13
 80048b8:	0affffe2 	beq	8004848 <__gnu_unwind_execute+0x8c>
 80048bc:	e3a01000 	mov	r1, #0
 80048c0:	e28d300c 	add	r3, sp, #12
 80048c4:	e58d3000 	str	r3, [sp]
 80048c8:	e200200f 	and	r2, r0, #15
 80048cc:	e1a03001 	mov	r3, r1
 80048d0:	e1a00007 	mov	r0, r7
 80048d4:	ebfffc85 	bl	8003af0 <_Unwind_VRS_Get>
 80048d8:	eaffffec 	b	8004890 <__gnu_unwind_execute+0xd4>
 80048dc:	e1e02000 	mvn	r2, r0
 80048e0:	e3a03eff 	mov	r3, #4080	; 0xff0
 80048e4:	e3a01000 	mov	r1, #0
 80048e8:	e2022007 	and	r2, r2, #7
 80048ec:	e1a02253 	asr	r2, r3, r2
 80048f0:	e3100008 	tst	r0, #8
 80048f4:	e0022003 	and	r2, r2, r3
 80048f8:	13822901 	orrne	r2, r2, #16384	; 0x4000
 80048fc:	e1a03001 	mov	r3, r1
 8004900:	e1a00007 	mov	r0, r7
 8004904:	ebfffe0e 	bl	8004144 <_Unwind_VRS_Pop>
 8004908:	e3500000 	cmp	r0, #0
 800490c:	1affffcd 	bne	8004848 <__gnu_unwind_execute+0x8c>
 8004910:	eaffffae 	b	80047d0 <__gnu_unwind_execute+0x14>
 8004914:	e35000b1 	cmp	r0, #177	; 0xb1
 8004918:	0a000041 	beq	8004a24 <__gnu_unwind_execute+0x268>
 800491c:	e35000b2 	cmp	r0, #178	; 0xb2
 8004920:	0a00004b 	beq	8004a54 <__gnu_unwind_execute+0x298>
 8004924:	e35000b3 	cmp	r0, #179	; 0xb3
 8004928:	0a00006b 	beq	8004adc <__gnu_unwind_execute+0x320>
 800492c:	e20030fc 	and	r3, r0, #252	; 0xfc
 8004930:	e35300b4 	cmp	r3, #180	; 0xb4
 8004934:	0affffc3 	beq	8004848 <__gnu_unwind_execute+0x8c>
 8004938:	e3a01001 	mov	r1, #1
 800493c:	e2002007 	and	r2, r0, #7
 8004940:	e0822001 	add	r2, r2, r1
 8004944:	e3822702 	orr	r2, r2, #524288	; 0x80000
 8004948:	eaffffeb 	b	80048fc <__gnu_unwind_execute+0x140>
 800494c:	e1a00005 	mov	r0, r5
 8004950:	ebffff74 	bl	8004728 <next_unwind_byte>
 8004954:	e1a04404 	lsl	r4, r4, #8
 8004958:	e1804004 	orr	r4, r0, r4
 800495c:	e3540902 	cmp	r4, #32768	; 0x8000
 8004960:	0affffb8 	beq	8004848 <__gnu_unwind_execute+0x8c>
 8004964:	e3a01000 	mov	r1, #0
 8004968:	e1a02a04 	lsl	r2, r4, #20
 800496c:	e1a03001 	mov	r3, r1
 8004970:	e1a02822 	lsr	r2, r2, #16
 8004974:	e1a00007 	mov	r0, r7
 8004978:	ebfffdf1 	bl	8004144 <_Unwind_VRS_Pop>
 800497c:	e3500000 	cmp	r0, #0
 8004980:	e1a04204 	lsl	r4, r4, #4
 8004984:	1affffaf 	bne	8004848 <__gnu_unwind_execute+0x8c>
 8004988:	e3140902 	tst	r4, #32768	; 0x8000
 800498c:	13a08001 	movne	r8, #1
 8004990:	eaffff8e 	b	80047d0 <__gnu_unwind_execute+0x14>
 8004994:	e35000c6 	cmp	r0, #198	; 0xc6
 8004998:	0a000057 	beq	8004afc <__gnu_unwind_execute+0x340>
 800499c:	e35000c7 	cmp	r0, #199	; 0xc7
 80049a0:	0a00005d 	beq	8004b1c <__gnu_unwind_execute+0x360>
 80049a4:	e20030f8 	and	r3, r0, #248	; 0xf8
 80049a8:	e35300c0 	cmp	r3, #192	; 0xc0
 80049ac:	0a000066 	beq	8004b4c <__gnu_unwind_execute+0x390>
 80049b0:	e35000c8 	cmp	r0, #200	; 0xc8
 80049b4:	0a000069 	beq	8004b60 <__gnu_unwind_execute+0x3a4>
 80049b8:	e35000c9 	cmp	r0, #201	; 0xc9
 80049bc:	1affffa1 	bne	8004848 <__gnu_unwind_execute+0x8c>
 80049c0:	e1a00005 	mov	r0, r5
 80049c4:	ebffff57 	bl	8004728 <next_unwind_byte>
 80049c8:	e200200f 	and	r2, r0, #15
 80049cc:	e2822001 	add	r2, r2, #1
 80049d0:	e20000f0 	and	r0, r0, #240	; 0xf0
 80049d4:	e1822600 	orr	r2, r2, r0, lsl #12
 80049d8:	eaffff94 	b	8004830 <__gnu_unwind_execute+0x74>
 80049dc:	e3580000 	cmp	r8, #0
 80049e0:	13a00000 	movne	r0, #0
 80049e4:	1affff98 	bne	800484c <__gnu_unwind_execute+0x90>
 80049e8:	e28d400c 	add	r4, sp, #12
 80049ec:	e1a01008 	mov	r1, r8
 80049f0:	e3a0200e 	mov	r2, #14
 80049f4:	e1a03008 	mov	r3, r8
 80049f8:	e58d4000 	str	r4, [sp]
 80049fc:	e1a00007 	mov	r0, r7
 8004a00:	ebfffc3a 	bl	8003af0 <_Unwind_VRS_Get>
 8004a04:	e58d4000 	str	r4, [sp]
 8004a08:	e1a00007 	mov	r0, r7
 8004a0c:	e1a01008 	mov	r1, r8
 8004a10:	e3a0200f 	mov	r2, #15
 8004a14:	e1a03008 	mov	r3, r8
 8004a18:	ebfffc57 	bl	8003b7c <_Unwind_VRS_Set>
 8004a1c:	e1a00008 	mov	r0, r8
 8004a20:	eaffff89 	b	800484c <__gnu_unwind_execute+0x90>
 8004a24:	e1a00005 	mov	r0, r5
 8004a28:	ebffff3e 	bl	8004728 <next_unwind_byte>
 8004a2c:	e2502000 	subs	r2, r0, #0
 8004a30:	0affff84 	beq	8004848 <__gnu_unwind_execute+0x8c>
 8004a34:	e21210f0 	ands	r1, r2, #240	; 0xf0
 8004a38:	1affff82 	bne	8004848 <__gnu_unwind_execute+0x8c>
 8004a3c:	e1a00007 	mov	r0, r7
 8004a40:	e1a03001 	mov	r3, r1
 8004a44:	ebfffdbe 	bl	8004144 <_Unwind_VRS_Pop>
 8004a48:	e3500000 	cmp	r0, #0
 8004a4c:	1affff7d 	bne	8004848 <__gnu_unwind_execute+0x8c>
 8004a50:	eaffff5e 	b	80047d0 <__gnu_unwind_execute+0x14>
 8004a54:	e3a01000 	mov	r1, #0
 8004a58:	e28d300c 	add	r3, sp, #12
 8004a5c:	e58d3000 	str	r3, [sp]
 8004a60:	e3a0200d 	mov	r2, #13
 8004a64:	e1a03001 	mov	r3, r1
 8004a68:	e1a00007 	mov	r0, r7
 8004a6c:	ebfffc1f 	bl	8003af0 <_Unwind_VRS_Get>
 8004a70:	e1a00005 	mov	r0, r5
 8004a74:	ebffff2b 	bl	8004728 <next_unwind_byte>
 8004a78:	e3100080 	tst	r0, #128	; 0x80
 8004a7c:	e3a04002 	mov	r4, #2
 8004a80:	0a000008 	beq	8004aa8 <__gnu_unwind_execute+0x2ec>
 8004a84:	e59d300c 	ldr	r3, [sp, #12]
 8004a88:	e200007f 	and	r0, r0, #127	; 0x7f
 8004a8c:	e0833410 	add	r3, r3, r0, lsl r4
 8004a90:	e1a00005 	mov	r0, r5
 8004a94:	e58d300c 	str	r3, [sp, #12]
 8004a98:	ebffff22 	bl	8004728 <next_unwind_byte>
 8004a9c:	e3100080 	tst	r0, #128	; 0x80
 8004aa0:	e2844007 	add	r4, r4, #7
 8004aa4:	1afffff6 	bne	8004a84 <__gnu_unwind_execute+0x2c8>
 8004aa8:	e3a01000 	mov	r1, #0
 8004aac:	e59d300c 	ldr	r3, [sp, #12]
 8004ab0:	e28d200c 	add	r2, sp, #12
 8004ab4:	e200007f 	and	r0, r0, #127	; 0x7f
 8004ab8:	e2833f81 	add	r3, r3, #516	; 0x204
 8004abc:	e0834410 	add	r4, r3, r0, lsl r4
 8004ac0:	e58d2000 	str	r2, [sp]
 8004ac4:	e1a03001 	mov	r3, r1
 8004ac8:	e1a00007 	mov	r0, r7
 8004acc:	e3a0200d 	mov	r2, #13
 8004ad0:	e58d400c 	str	r4, [sp, #12]
 8004ad4:	ebfffc28 	bl	8003b7c <_Unwind_VRS_Set>
 8004ad8:	eaffff3c 	b	80047d0 <__gnu_unwind_execute+0x14>
 8004adc:	e1a00005 	mov	r0, r5
 8004ae0:	ebffff10 	bl	8004728 <next_unwind_byte>
 8004ae4:	e3a01001 	mov	r1, #1
 8004ae8:	e200200f 	and	r2, r0, #15
 8004aec:	e0822001 	add	r2, r2, r1
 8004af0:	e20000f0 	and	r0, r0, #240	; 0xf0
 8004af4:	e1822600 	orr	r2, r2, r0, lsl #12
 8004af8:	eaffff7f 	b	80048fc <__gnu_unwind_execute+0x140>
 8004afc:	e1a00005 	mov	r0, r5
 8004b00:	ebffff08 	bl	8004728 <next_unwind_byte>
 8004b04:	e200200f 	and	r2, r0, #15
 8004b08:	e2822001 	add	r2, r2, #1
 8004b0c:	e20000f0 	and	r0, r0, #240	; 0xf0
 8004b10:	e3a01003 	mov	r1, #3
 8004b14:	e1822600 	orr	r2, r2, r0, lsl #12
 8004b18:	eaffff77 	b	80048fc <__gnu_unwind_execute+0x140>
 8004b1c:	e1a00005 	mov	r0, r5
 8004b20:	ebffff00 	bl	8004728 <next_unwind_byte>
 8004b24:	e2502000 	subs	r2, r0, #0
 8004b28:	0affff46 	beq	8004848 <__gnu_unwind_execute+0x8c>
 8004b2c:	e21230f0 	ands	r3, r2, #240	; 0xf0
 8004b30:	1affff44 	bne	8004848 <__gnu_unwind_execute+0x8c>
 8004b34:	e1a00007 	mov	r0, r7
 8004b38:	e3a01004 	mov	r1, #4
 8004b3c:	ebfffd80 	bl	8004144 <_Unwind_VRS_Pop>
 8004b40:	e3500000 	cmp	r0, #0
 8004b44:	1affff3f 	bne	8004848 <__gnu_unwind_execute+0x8c>
 8004b48:	eaffff20 	b	80047d0 <__gnu_unwind_execute+0x14>
 8004b4c:	e200200f 	and	r2, r0, #15
 8004b50:	e2822001 	add	r2, r2, #1
 8004b54:	e3a01003 	mov	r1, #3
 8004b58:	e382280a 	orr	r2, r2, #655360	; 0xa0000
 8004b5c:	eaffff66 	b	80048fc <__gnu_unwind_execute+0x140>
 8004b60:	e1a00005 	mov	r0, r5
 8004b64:	ebfffeef 	bl	8004728 <next_unwind_byte>
 8004b68:	e20020f0 	and	r2, r0, #240	; 0xf0
 8004b6c:	e200300f 	and	r3, r0, #15
 8004b70:	e2822010 	add	r2, r2, #16
 8004b74:	e2833001 	add	r3, r3, #1
 8004b78:	e1832602 	orr	r2, r3, r2, lsl #12
 8004b7c:	eaffff2b 	b	8004830 <__gnu_unwind_execute+0x74>

08004b80 <__gnu_unwind_frame>:
 8004b80:	e3a0c003 	mov	ip, #3
 8004b84:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 8004b88:	e590304c 	ldr	r3, [r0, #76]	; 0x4c
 8004b8c:	e24dd014 	sub	sp, sp, #20
 8004b90:	e5932004 	ldr	r2, [r3, #4]
 8004b94:	e5cdc00c 	strb	ip, [sp, #12]
 8004b98:	e5d3c007 	ldrb	ip, [r3, #7]
 8004b9c:	e1a02402 	lsl	r2, r2, #8
 8004ba0:	e2833008 	add	r3, r3, #8
 8004ba4:	e1a00001 	mov	r0, r1
 8004ba8:	e28d1004 	add	r1, sp, #4
 8004bac:	e58d2004 	str	r2, [sp, #4]
 8004bb0:	e5cdc00d 	strb	ip, [sp, #13]
 8004bb4:	e58d3008 	str	r3, [sp, #8]
 8004bb8:	ebfffeff 	bl	80047bc <__gnu_unwind_execute>
 8004bbc:	e28dd014 	add	sp, sp, #20
 8004bc0:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 8004bc4:	e12fff1e 	bx	lr

08004bc8 <_Unwind_GetRegionStart>:
 8004bc8:	e92d4008 	push	{r3, lr}
 8004bcc:	ebfffef9 	bl	80047b8 <unwind_UCB_from_context>
 8004bd0:	e8bd4008 	pop	{r3, lr}
 8004bd4:	e5900048 	ldr	r0, [r0, #72]	; 0x48
 8004bd8:	e12fff1e 	bx	lr

08004bdc <_Unwind_GetLanguageSpecificData>:
 8004bdc:	e92d4008 	push	{r3, lr}
 8004be0:	ebfffef4 	bl	80047b8 <unwind_UCB_from_context>
 8004be4:	e590304c 	ldr	r3, [r0, #76]	; 0x4c
 8004be8:	e5d30007 	ldrb	r0, [r3, #7]
 8004bec:	e0830100 	add	r0, r3, r0, lsl #2
 8004bf0:	e2800008 	add	r0, r0, #8
 8004bf4:	e8bd4008 	pop	{r3, lr}
 8004bf8:	e12fff1e 	bx	lr

08004bfc <_Unwind_GetDataRelBase>:
 8004bfc:	e92d4008 	push	{r3, lr}
 8004c00:	eb000001 	bl	8004c0c <abort>

08004c04 <_Unwind_GetTextRelBase>:
 8004c04:	e92d4008 	push	{r3, lr}
 8004c08:	ebffffff 	bl	8004c0c <abort>

08004c0c <abort>:
 8004c0c:	e92d4008 	push	{r3, lr}
 8004c10:	e3a00006 	mov	r0, #6
 8004c14:	eb000063 	bl	8004da8 <raise>
 8004c18:	e3a00001 	mov	r0, #1
 8004c1c:	eb000086 	bl	8004e3c <_exit>

08004c20 <memcpy>:
 8004c20:	e352000f 	cmp	r2, #15
 8004c24:	e92d4070 	push	{r4, r5, r6, lr}
 8004c28:	9a000029 	bls	8004cd4 <memcpy+0xb4>
 8004c2c:	e1803001 	orr	r3, r0, r1
 8004c30:	e3130003 	tst	r3, #3
 8004c34:	1a000031 	bne	8004d00 <memcpy+0xe0>
 8004c38:	e1a0e002 	mov	lr, r2
 8004c3c:	e280c010 	add	ip, r0, #16
 8004c40:	e2813010 	add	r3, r1, #16
 8004c44:	e5134010 	ldr	r4, [r3, #-16]
 8004c48:	e50c4010 	str	r4, [ip, #-16]
 8004c4c:	e513400c 	ldr	r4, [r3, #-12]
 8004c50:	e50c400c 	str	r4, [ip, #-12]
 8004c54:	e5134008 	ldr	r4, [r3, #-8]
 8004c58:	e50c4008 	str	r4, [ip, #-8]
 8004c5c:	e24ee010 	sub	lr, lr, #16
 8004c60:	e5134004 	ldr	r4, [r3, #-4]
 8004c64:	e35e000f 	cmp	lr, #15
 8004c68:	e50c4004 	str	r4, [ip, #-4]
 8004c6c:	e2833010 	add	r3, r3, #16
 8004c70:	e28cc010 	add	ip, ip, #16
 8004c74:	8afffff2 	bhi	8004c44 <memcpy+0x24>
 8004c78:	e2423010 	sub	r3, r2, #16
 8004c7c:	e3c3300f 	bic	r3, r3, #15
 8004c80:	e202600f 	and	r6, r2, #15
 8004c84:	e2833010 	add	r3, r3, #16
 8004c88:	e3560003 	cmp	r6, #3
 8004c8c:	e0811003 	add	r1, r1, r3
 8004c90:	e0803003 	add	r3, r0, r3
 8004c94:	9a00001b 	bls	8004d08 <memcpy+0xe8>
 8004c98:	e1a04001 	mov	r4, r1
 8004c9c:	e1a0c006 	mov	ip, r6
 8004ca0:	e243e004 	sub	lr, r3, #4
 8004ca4:	e24cc004 	sub	ip, ip, #4
 8004ca8:	e4945004 	ldr	r5, [r4], #4
 8004cac:	e35c0003 	cmp	ip, #3
 8004cb0:	e5ae5004 	str	r5, [lr, #4]!
 8004cb4:	8afffffa 	bhi	8004ca4 <memcpy+0x84>
 8004cb8:	e246c004 	sub	ip, r6, #4
 8004cbc:	e3ccc003 	bic	ip, ip, #3
 8004cc0:	e28cc004 	add	ip, ip, #4
 8004cc4:	e083300c 	add	r3, r3, ip
 8004cc8:	e081100c 	add	r1, r1, ip
 8004ccc:	e2022003 	and	r2, r2, #3
 8004cd0:	ea000000 	b	8004cd8 <memcpy+0xb8>
 8004cd4:	e1a03000 	mov	r3, r0
 8004cd8:	e3520000 	cmp	r2, #0
 8004cdc:	0a000005 	beq	8004cf8 <memcpy+0xd8>
 8004ce0:	e2433001 	sub	r3, r3, #1
 8004ce4:	e0812002 	add	r2, r1, r2
 8004ce8:	e4d1c001 	ldrb	ip, [r1], #1
 8004cec:	e1510002 	cmp	r1, r2
 8004cf0:	e5e3c001 	strb	ip, [r3, #1]!
 8004cf4:	1afffffb 	bne	8004ce8 <memcpy+0xc8>
 8004cf8:	e8bd4070 	pop	{r4, r5, r6, lr}
 8004cfc:	e12fff1e 	bx	lr
 8004d00:	e1a03000 	mov	r3, r0
 8004d04:	eafffff5 	b	8004ce0 <memcpy+0xc0>
 8004d08:	e1a02006 	mov	r2, r6
 8004d0c:	eafffff1 	b	8004cd8 <memcpy+0xb8>

08004d10 <_raise_r>:
 8004d10:	e351001f 	cmp	r1, #31
 8004d14:	e92d4038 	push	{r3, r4, r5, lr}
 8004d18:	e1a05000 	mov	r5, r0
 8004d1c:	83a03016 	movhi	r3, #22
 8004d20:	83e00000 	mvnhi	r0, #0
 8004d24:	85853000 	strhi	r3, [r5]
 8004d28:	8a000013 	bhi	8004d7c <_raise_r+0x6c>
 8004d2c:	e59522dc 	ldr	r2, [r5, #732]	; 0x2dc
 8004d30:	e3520000 	cmp	r2, #0
 8004d34:	e1a04001 	mov	r4, r1
 8004d38:	0a000013 	beq	8004d8c <_raise_r+0x7c>
 8004d3c:	e7923101 	ldr	r3, [r2, r1, lsl #2]
 8004d40:	e3530000 	cmp	r3, #0
 8004d44:	0a000010 	beq	8004d8c <_raise_r+0x7c>
 8004d48:	e3530001 	cmp	r3, #1
 8004d4c:	0a00000c 	beq	8004d84 <_raise_r+0x74>
 8004d50:	e3730001 	cmn	r3, #1
 8004d54:	03a03016 	moveq	r3, #22
 8004d58:	03a00001 	moveq	r0, #1
 8004d5c:	05853000 	streq	r3, [r5]
 8004d60:	0a000005 	beq	8004d7c <_raise_r+0x6c>
 8004d64:	e3a05000 	mov	r5, #0
 8004d68:	e1a00001 	mov	r0, r1
 8004d6c:	e7825101 	str	r5, [r2, r1, lsl #2]
 8004d70:	e1a0e00f 	mov	lr, pc
 8004d74:	e12fff13 	bx	r3
 8004d78:	e1a00005 	mov	r0, r5
 8004d7c:	e8bd4038 	pop	{r3, r4, r5, lr}
 8004d80:	e12fff1e 	bx	lr
 8004d84:	e3a00000 	mov	r0, #0
 8004d88:	eafffffb 	b	8004d7c <_raise_r+0x6c>
 8004d8c:	e1a00005 	mov	r0, r5
 8004d90:	eb000019 	bl	8004dfc <_getpid_r>
 8004d94:	e1a02004 	mov	r2, r4
 8004d98:	e1a01000 	mov	r1, r0
 8004d9c:	e1a00005 	mov	r0, r5
 8004da0:	eb000005 	bl	8004dbc <_kill_r>
 8004da4:	eafffff4 	b	8004d7c <_raise_r+0x6c>

08004da8 <raise>:
 8004da8:	e59f3008 	ldr	r3, [pc, #8]	; 8004db8 <raise+0x10>
 8004dac:	e1a01000 	mov	r1, r0
 8004db0:	e5930000 	ldr	r0, [r3]
 8004db4:	eaffffd5 	b	8004d10 <_raise_r>
 8004db8:	20000498 	.word	0x20000498

08004dbc <_kill_r>:
 8004dbc:	e92d4038 	push	{r3, r4, r5, lr}
 8004dc0:	e3a03000 	mov	r3, #0
 8004dc4:	e59f402c 	ldr	r4, [pc, #44]	; 8004df8 <_kill_r+0x3c>
 8004dc8:	e1a05000 	mov	r5, r0
 8004dcc:	e1a00001 	mov	r0, r1
 8004dd0:	e1a01002 	mov	r1, r2
 8004dd4:	e5843000 	str	r3, [r4]
 8004dd8:	eb000011 	bl	8004e24 <_kill>
 8004ddc:	e3700001 	cmn	r0, #1
 8004de0:	1a000002 	bne	8004df0 <_kill_r+0x34>
 8004de4:	e5943000 	ldr	r3, [r4]
 8004de8:	e3530000 	cmp	r3, #0
 8004dec:	15853000 	strne	r3, [r5]
 8004df0:	e8bd4038 	pop	{r3, r4, r5, lr}
 8004df4:	e12fff1e 	bx	lr
 8004df8:	2000137c 	.word	0x2000137c

08004dfc <_getpid_r>:
 8004dfc:	e92d4008 	push	{r3, lr}
 8004e00:	eb000001 	bl	8004e0c <_getpid>
 8004e04:	e8bd4008 	pop	{r3, lr}
 8004e08:	e12fff1e 	bx	lr

08004e0c <_getpid>:
 8004e0c:	e3a02058 	mov	r2, #88	; 0x58
 8004e10:	e59f3008 	ldr	r3, [pc, #8]	; 8004e20 <_getpid+0x14>
 8004e14:	e3e00000 	mvn	r0, #0
 8004e18:	e5832000 	str	r2, [r3]
 8004e1c:	e12fff1e 	bx	lr
 8004e20:	2000137c 	.word	0x2000137c

08004e24 <_kill>:
 8004e24:	e3a02058 	mov	r2, #88	; 0x58
 8004e28:	e59f3008 	ldr	r3, [pc, #8]	; 8004e38 <_kill+0x14>
 8004e2c:	e3e00000 	mvn	r0, #0
 8004e30:	e5832000 	str	r2, [r3]
 8004e34:	e12fff1e 	bx	lr
 8004e38:	2000137c 	.word	0x2000137c

08004e3c <_exit>:
 8004e3c:	eafffffe 	b	8004e3c <_exit>

08004e40 <_init>:
 8004e40:	e1a0c00d 	mov	ip, sp
 8004e44:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
 8004e48:	e24cb004 	sub	fp, ip, #4
 8004e4c:	e24bd028 	sub	sp, fp, #40	; 0x28
 8004e50:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
 8004e54:	e12fff1e 	bx	lr

08004e58 <_fini>:
 8004e58:	e1a0c00d 	mov	ip, sp
 8004e5c:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
 8004e60:	e24cb004 	sub	fp, ip, #4
 8004e64:	e24bd028 	sub	sp, fp, #40	; 0x28
 8004e68:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
 8004e6c:	e12fff1e 	bx	lr
 8004e70:	453e3e3e 	.word	0x453e3e3e
 8004e74:	72652020 	.word	0x72652020
 8004e78:	20726f72 	.word	0x20726f72
 8004e7c:	65646f63 	.word	0x65646f63
 8004e80:	3a752520 	.word	0x3a752520
 8004e84:	000a7525 	.word	0x000a7525
 8004e88:	433e3e3e 	.word	0x433e3e3e
 8004e8c:	69250020 	.word	0x69250020
 8004e90:	20692520 	.word	0x20692520
 8004e94:	25206925 	.word	0x25206925
 8004e98:	25002069 	.word	0x25002069
 8004e9c:	69252069 	.word	0x69252069
 8004ea0:	20752520 	.word	0x20752520
 8004ea4:	00206925 	.word	0x00206925
 8004ea8:	3e000a0a 	.word	0x3e000a0a
 8004eac:	204c3e3e 	.word	0x204c3e3e
 8004eb0:	20692500 	.word	0x20692500
 8004eb4:	25206925 	.word	0x25206925
 8004eb8:	75252075 	.word	0x75252075
 8004ebc:	3e3e0020 	.word	0x3e3e0020
 8004ec0:	00204f3e 	.word	0x00204f3e
 8004ec4:	20533e3e 	.word	0x20533e3e
 8004ec8:	65770a00 	.word	0x65770a00
 8004ecc:	6d6f636c 	.word	0x6d6f636c
 8004ed0:	6f742065 	.word	0x6f742065
 8004ed4:	7a755320 	.word	0x7a755320
 8004ed8:	4f616875 	.word	0x4f616875
 8004edc:	5f5e2053 	.word	0x5f5e2053
 8004ee0:	2e32205e 	.word	0x2e32205e
 8004ee4:	0a362e30 	.word	0x0a362e30
 8004ee8:	4c495542 	.word	0x4c495542
 8004eec:	754a2044 	.word	0x754a2044
 8004ef0:	3732206e 	.word	0x3732206e
 8004ef4:	31303220 	.word	0x31303220
 8004ef8:	34312036 	.word	0x34312036
 8004efc:	3a35343a 	.word	0x3a35343a
 8004f00:	000a3533 	.word	0x000a3533
 8004f04:	6f636e65 	.word	0x6f636e65
 8004f08:	73726564 	.word	0x73726564
 8004f0c:	20752520 	.word	0x20752520
 8004f10:	25207525 	.word	0x25207525
 8004f14:	79202c75 	.word	0x79202c75
 8004f18:	25207761 	.word	0x25207761
 8004f1c:	0a69      	.short	0x0a69
 8004f1e:	00          	.byte	0x00
 8004f1f:	73          	.byte	0x73
 8004f20:	6f696474 	.word	0x6f696474
 8004f24:	696e6920 	.word	0x696e6920
 8004f28:	6f642074 	.word	0x6f642074
 8004f2c:	000a656e 	.word	0x000a656e
 8004f30:	00000043 	.word	0x00000043

08004f34 <__EH_FRAME_BEGIN__>:
 8004f34:	00000000                                ....
