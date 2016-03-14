
bin/main.elf:     file format elf32-littlearm


Disassembly of section .text:

08000188 <line_follower_init>:
 8000188:	b507      	push	{r0, r1, r2, lr}
 800018a:	4a0a      	ldr	r2, [pc, #40]	; (80001b4 <line_follower_init+0x2c>)
 800018c:	4b0a      	ldr	r3, [pc, #40]	; (80001b8 <line_follower_init+0x30>)
 800018e:	6013      	str	r3, [r2, #0]
 8000190:	f04f 537e 	mov.w	r3, #1065353216	; 0x3f800000
 8000194:	6053      	str	r3, [r2, #4]
 8000196:	2300      	movs	r3, #0
 8000198:	6093      	str	r3, [r2, #8]
 800019a:	4a08      	ldr	r2, [pc, #32]	; (80001bc <line_follower_init+0x34>)
 800019c:	9200      	str	r2, [sp, #0]
 800019e:	9301      	str	r3, [sp, #4]
 80001a0:	4807      	ldr	r0, [pc, #28]	; (80001c0 <line_follower_init+0x38>)
 80001a2:	4908      	ldr	r1, [pc, #32]	; (80001c4 <line_follower_init+0x3c>)
 80001a4:	4a08      	ldr	r2, [pc, #32]	; (80001c8 <line_follower_init+0x40>)
 80001a6:	f000 fd45 	bl	8000c34 <pid_init>
 80001aa:	b003      	add	sp, #12
 80001ac:	f85d eb04 	ldr.w	lr, [sp], #4
 80001b0:	f000 ba42 	b.w	8000638 <q_predictor_init>
 80001b4:	200006ec 	.word	0x200006ec
 80001b8:	3e4ccccd 	.word	0x3e4ccccd
 80001bc:	41287ae1 	.word	0x41287ae1
 80001c0:	20000228 	.word	0x20000228
 80001c4:	42c80000 	.word	0x42c80000
 80001c8:	3e010625 	.word	0x3e010625

080001cc <line_follower_main>:
 80001cc:	b510      	push	{r4, lr}
 80001ce:	4b2d      	ldr	r3, [pc, #180]	; (8000284 <line_follower_main+0xb8>)
 80001d0:	ed9f 7a2d 	vldr	s14, [pc, #180]	; 8000288 <line_follower_main+0xbc>
 80001d4:	edd3 7a11 	vldr	s15, [r3, #68]	; 0x44
 80001d8:	4c2c      	ldr	r4, [pc, #176]	; (800028c <line_follower_main+0xc0>)
 80001da:	ed2d 8b04 	vpush	{d8-d9}
 80001de:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 80001e2:	ed9f 8a2b 	vldr	s16, [pc, #172]	; 8000290 <line_follower_main+0xc4>
 80001e6:	ed94 9a00 	vldr	s18, [r4]
 80001ea:	eddf 8a2a 	vldr	s17, [pc, #168]	; 8000294 <line_follower_main+0xc8>
 80001ee:	ee07 8ac7 	vmls.f32	s16, s15, s14
 80001f2:	b082      	sub	sp, #8
 80001f4:	ee18 0a10 	vmov	r0, s16
 80001f8:	f000 fcea 	bl	8000bd0 <m_abs>
 80001fc:	ee07 0a90 	vmov	s15, r0
 8000200:	ee38 7ae7 	vsub.f32	s14, s17, s15
 8000204:	eddf 7a24 	vldr	s15, [pc, #144]	; 8000298 <line_follower_main+0xcc>
 8000208:	ee18 0a10 	vmov	r0, s16
 800020c:	ee07 9a27 	vmla.f32	s18, s14, s15
 8000210:	f000 fcde 	bl	8000bd0 <m_abs>
 8000214:	ee07 0a90 	vmov	s15, r0
 8000218:	ee78 8ae7 	vsub.f32	s17, s17, s15
 800021c:	ee19 0a10 	vmov	r0, s18
 8000220:	ee18 1a90 	vmov	r1, s17
 8000224:	f000 fcf7 	bl	8000c16 <m_min>
 8000228:	6862      	ldr	r2, [r4, #4]
 800022a:	491c      	ldr	r1, [pc, #112]	; (800029c <line_follower_main+0xd0>)
 800022c:	6020      	str	r0, [r4, #0]
 800022e:	f000 fcdb 	bl	8000be8 <m_saturate>
 8000232:	ee18 1a10 	vmov	r1, s16
 8000236:	6020      	str	r0, [r4, #0]
 8000238:	4819      	ldr	r0, [pc, #100]	; (80002a0 <line_follower_main+0xd4>)
 800023a:	f000 fd2b 	bl	8000c94 <pid_process>
 800023e:	edd4 7a00 	vldr	s15, [r4]
 8000242:	ed9f 6a18 	vldr	s12, [pc, #96]	; 80002a4 <line_follower_main+0xd8>
 8000246:	60a0      	str	r0, [r4, #8]
 8000248:	ee06 0a90 	vmov	s13, r0
 800024c:	ee37 7aa6 	vadd.f32	s14, s15, s13
 8000250:	ee77 7ae6 	vsub.f32	s15, s15, s13
 8000254:	ee27 7a06 	vmul.f32	s14, s14, s12
 8000258:	ee67 7a86 	vmul.f32	s15, s15, s12
 800025c:	eebd 7ac7 	vcvt.s32.f32	s14, s14
 8000260:	eefd 7ae7 	vcvt.s32.f32	s15, s15
 8000264:	ed8d 7a01 	vstr	s14, [sp, #4]
 8000268:	f9bd 0004 	ldrsh.w	r0, [sp, #4]
 800026c:	edcd 7a01 	vstr	s15, [sp, #4]
 8000270:	f9bd 1004 	ldrsh.w	r1, [sp, #4]
 8000274:	b002      	add	sp, #8
 8000276:	ecbd 8b04 	vpop	{d8-d9}
 800027a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800027e:	f001 bf7b 	b.w	8002178 <drv8834_run>
 8000282:	bf00      	nop
 8000284:	200001d8 	.word	0x200001d8
 8000288:	3b800000 	.word	0x3b800000
 800028c:	200006ec 	.word	0x200006ec
 8000290:	00000000 	.word	0x00000000
 8000294:	3f800000 	.word	0x3f800000
 8000298:	3ba3d70a 	.word	0x3ba3d70a
 800029c:	3e4ccccd 	.word	0x3e4ccccd
 80002a0:	20000228 	.word	0x20000228
 80002a4:	42c80000 	.word	0x42c80000

080002a8 <obstacle_go_forward>:
 80002a8:	b5f0      	push	{r4, r5, r6, r7, lr}
 80002aa:	ed2d 8b04 	vpush	{d8-d9}
 80002ae:	460f      	mov	r7, r1
 80002b0:	b083      	sub	sp, #12
 80002b2:	4606      	mov	r6, r0
 80002b4:	b140      	cbz	r0, 80002c8 <obstacle_go_forward+0x20>
 80002b6:	ed9f 8a29 	vldr	s16, [pc, #164]	; 800035c <obstacle_go_forward+0xb4>
 80002ba:	2400      	movs	r4, #0
 80002bc:	eef0 7a48 	vmov.f32	s15, s16
 80002c0:	4625      	mov	r5, r4
 80002c2:	eeb0 9a48 	vmov.f32	s18, s16
 80002c6:	e00b      	b.n	80002e0 <obstacle_go_forward+0x38>
 80002c8:	2000      	movs	r0, #0
 80002ca:	4601      	mov	r1, r0
 80002cc:	f001 ff54 	bl	8002178 <drv8834_run>
 80002d0:	2064      	movs	r0, #100	; 0x64
 80002d2:	b003      	add	sp, #12
 80002d4:	ecbd 8b04 	vpop	{d8-d9}
 80002d8:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
 80002dc:	f001 bd58 	b.w	8001d90 <timer_delay_ms>
 80002e0:	42bd      	cmp	r5, r7
 80002e2:	d2f1      	bcs.n	80002c8 <obstacle_go_forward+0x20>
 80002e4:	4b1e      	ldr	r3, [pc, #120]	; (8000360 <obstacle_go_forward+0xb8>)
 80002e6:	eddf 6a1f 	vldr	s13, [pc, #124]	; 8000364 <obstacle_go_forward+0xbc>
 80002ea:	f9b3 3010 	ldrsh.w	r3, [r3, #16]
 80002ee:	441c      	add	r4, r3
 80002f0:	ee07 4a10 	vmov	s14, r4
 80002f4:	eef8 8ac7 	vcvt.f32.s32	s17, s14
 80002f8:	ed9f 7a1b 	vldr	s14, [pc, #108]	; 8000368 <obstacle_go_forward+0xc0>
 80002fc:	ee79 8a68 	vsub.f32	s17, s18, s17
 8000300:	350a      	adds	r5, #10
 8000302:	ee78 7ae7 	vsub.f32	s15, s17, s15
 8000306:	ee67 7a87 	vmul.f32	s15, s15, s14
 800030a:	ed9f 7a18 	vldr	s14, [pc, #96]	; 800036c <obstacle_go_forward+0xc4>
 800030e:	ee48 7a87 	vmla.f32	s15, s17, s14
 8000312:	ee07 6a10 	vmov	s14, r6
 8000316:	eeb8 7a47 	vcvt.f32.u32	s14, s14
 800031a:	ee27 7a26 	vmul.f32	s14, s14, s13
 800031e:	eddf 6a14 	vldr	s13, [pc, #80]	; 8000370 <obstacle_go_forward+0xc8>
 8000322:	ee08 7a26 	vmla.f32	s14, s16, s13
 8000326:	eeb0 8a47 	vmov.f32	s16, s14
 800032a:	ee37 7a67 	vsub.f32	s14, s14, s15
 800032e:	ee78 7a27 	vadd.f32	s15, s16, s15
 8000332:	eebd 7ac7 	vcvt.s32.f32	s14, s14
 8000336:	eefd 7ae7 	vcvt.s32.f32	s15, s15
 800033a:	ed8d 7a01 	vstr	s14, [sp, #4]
 800033e:	f9bd 0004 	ldrsh.w	r0, [sp, #4]
 8000342:	edcd 7a01 	vstr	s15, [sp, #4]
 8000346:	f9bd 1004 	ldrsh.w	r1, [sp, #4]
 800034a:	f001 ff15 	bl	8002178 <drv8834_run>
 800034e:	200a      	movs	r0, #10
 8000350:	f001 fd1e 	bl	8001d90 <timer_delay_ms>
 8000354:	eef0 7a68 	vmov.f32	s15, s17
 8000358:	e7c2      	b.n	80002e0 <obstacle_go_forward+0x38>
 800035a:	bf00      	nop
 800035c:	00000000 	.word	0x00000000
 8000360:	20000164 	.word	0x20000164
 8000364:	3e4ccccc 	.word	0x3e4ccccc
 8000368:	3a83126f 	.word	0x3a83126f
 800036c:	399d4952 	.word	0x399d4952
 8000370:	3f4ccccd 	.word	0x3f4ccccd

08000374 <obstacle_init>:
 8000374:	4770      	bx	lr

08000376 <obstacle_main>:
 8000376:	2000      	movs	r0, #0
 8000378:	2164      	movs	r1, #100	; 0x64
 800037a:	f7ff bf95 	b.w	80002a8 <obstacle_go_forward>
	...

08000380 <abort_error_>:
 8000380:	b570      	push	{r4, r5, r6, lr}
 8000382:	4605      	mov	r5, r0
 8000384:	460e      	mov	r6, r1
 8000386:	480f      	ldr	r0, [pc, #60]	; (80003c4 <abort_error_+0x44>)
 8000388:	4629      	mov	r1, r5
 800038a:	4632      	mov	r2, r6
 800038c:	f000 fa70 	bl	8000870 <printf_>
 8000390:	2400      	movs	r4, #0
 8000392:	1ceb      	adds	r3, r5, #3
 8000394:	429c      	cmp	r4, r3
 8000396:	d20f      	bcs.n	80003b8 <abort_error_+0x38>
 8000398:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 800039c:	f002 f956 	bl	800264c <led_on>
 80003a0:	2032      	movs	r0, #50	; 0x32
 80003a2:	f001 fcf5 	bl	8001d90 <timer_delay_ms>
 80003a6:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 80003aa:	f002 f961 	bl	8002670 <led_off>
 80003ae:	2064      	movs	r0, #100	; 0x64
 80003b0:	f001 fcee 	bl	8001d90 <timer_delay_ms>
 80003b4:	3401      	adds	r4, #1
 80003b6:	e7ec      	b.n	8000392 <abort_error_+0x12>
 80003b8:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 80003bc:	f001 fce8 	bl	8001d90 <timer_delay_ms>
 80003c0:	e7e1      	b.n	8000386 <abort_error_+0x6>
 80003c2:	bf00      	nop
 80003c4:	08002820 	.word	0x08002820

080003c8 <line_sensor_thread>:
 80003c8:	b508      	push	{r3, lr}
 80003ca:	f001 f841 	bl	8001450 <line_sensor_init>
 80003ce:	4601      	mov	r1, r0
 80003d0:	b120      	cbz	r0, 80003dc <line_sensor_thread+0x14>
 80003d2:	4b07      	ldr	r3, [pc, #28]	; (80003f0 <line_sensor_thread+0x28>)
 80003d4:	2001      	movs	r0, #1
 80003d6:	6018      	str	r0, [r3, #0]
 80003d8:	f7ff ffd2 	bl	8000380 <abort_error_>
 80003dc:	2000      	movs	r0, #0
 80003de:	2104      	movs	r1, #4
 80003e0:	f001 fce6 	bl	8001db0 <event_timer_set_period>
 80003e4:	2000      	movs	r0, #0
 80003e6:	f001 fcfb 	bl	8001de0 <event_timer_wait>
 80003ea:	f001 f91f 	bl	800162c <line_sensor_read>
 80003ee:	e7f9      	b.n	80003e4 <line_sensor_thread+0x1c>
 80003f0:	20000af8 	.word	0x20000af8

080003f4 <i2c_sensor_thread>:
 80003f4:	b508      	push	{r3, lr}
 80003f6:	f000 ffbd 	bl	8001374 <lsm9ds0_init>
 80003fa:	4601      	mov	r1, r0
 80003fc:	b128      	cbz	r0, 800040a <i2c_sensor_thread+0x16>
 80003fe:	4b08      	ldr	r3, [pc, #32]	; (8000420 <i2c_sensor_thread+0x2c>)
 8000400:	2201      	movs	r2, #1
 8000402:	2002      	movs	r0, #2
 8000404:	601a      	str	r2, [r3, #0]
 8000406:	f7ff ffbb 	bl	8000380 <abort_error_>
 800040a:	2001      	movs	r0, #1
 800040c:	210a      	movs	r1, #10
 800040e:	f001 fccf 	bl	8001db0 <event_timer_set_period>
 8000412:	2001      	movs	r0, #1
 8000414:	f001 fce4 	bl	8001de0 <event_timer_wait>
 8000418:	f000 ff2e 	bl	8001278 <lsm9ds0_read>
 800041c:	e7f9      	b.n	8000412 <i2c_sensor_thread+0x1e>
 800041e:	bf00      	nop
 8000420:	20000af8 	.word	0x20000af8

08000424 <line_follower>:
 8000424:	b538      	push	{r3, r4, r5, lr}
 8000426:	f7ff feaf 	bl	8000188 <line_follower_init>
 800042a:	2002      	movs	r0, #2
 800042c:	2104      	movs	r1, #4
 800042e:	f001 fcbf 	bl	8001db0 <event_timer_set_period>
 8000432:	f001 fc9f 	bl	8001d74 <timer_get_time>
 8000436:	f500 35c3 	add.w	r5, r0, #99840	; 0x18600
 800043a:	35a0      	adds	r5, #160	; 0xa0
 800043c:	2400      	movs	r4, #0
 800043e:	2002      	movs	r0, #2
 8000440:	f001 fcce 	bl	8001de0 <event_timer_wait>
 8000444:	4b14      	ldr	r3, [pc, #80]	; (8000498 <line_follower+0x74>)
 8000446:	6c9a      	ldr	r2, [r3, #72]	; 0x48
 8000448:	f5b2 7f02 	cmp.w	r2, #520	; 0x208
 800044c:	dd02      	ble.n	8000454 <line_follower+0x30>
 800044e:	f7ff ff92 	bl	8000376 <obstacle_main>
 8000452:	e008      	b.n	8000466 <line_follower+0x42>
 8000454:	f893 3040 	ldrb.w	r3, [r3, #64]	; 0x40
 8000458:	2b08      	cmp	r3, #8
 800045a:	d102      	bne.n	8000462 <line_follower+0x3e>
 800045c:	f7ff feb6 	bl	80001cc <line_follower_main>
 8000460:	e001      	b.n	8000466 <line_follower+0x42>
 8000462:	f000 f86b 	bl	800053c <broken_line_main>
 8000466:	3401      	adds	r4, #1
 8000468:	2214      	movs	r2, #20
 800046a:	fbb4 f3f2 	udiv	r3, r4, r2
 800046e:	fb02 4313 	mls	r3, r2, r3, r4
 8000472:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8000476:	b913      	cbnz	r3, 800047e <line_follower+0x5a>
 8000478:	f002 f8e8 	bl	800264c <led_on>
 800047c:	e001      	b.n	8000482 <line_follower+0x5e>
 800047e:	f002 f8f7 	bl	8002670 <led_off>
 8000482:	f001 fc77 	bl	8001d74 <timer_get_time>
 8000486:	4285      	cmp	r5, r0
 8000488:	d2d9      	bcs.n	800043e <line_follower+0x1a>
 800048a:	2000      	movs	r0, #0
 800048c:	4601      	mov	r1, r0
 800048e:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8000492:	f001 be71 	b.w	8002178 <drv8834_run>
 8000496:	bf00      	nop
 8000498:	200001d8 	.word	0x200001d8

0800049c <main_thread>:
 800049c:	b508      	push	{r3, lr}
 800049e:	481f      	ldr	r0, [pc, #124]	; (800051c <main_thread+0x80>)
 80004a0:	4c1f      	ldr	r4, [pc, #124]	; (8000520 <main_thread+0x84>)
 80004a2:	f000 f9e5 	bl	8000870 <printf_>
 80004a6:	f44f 7096 	mov.w	r0, #300	; 0x12c
 80004aa:	f001 fc71 	bl	8001d90 <timer_delay_ms>
 80004ae:	2300      	movs	r3, #0
 80004b0:	6023      	str	r3, [r4, #0]
 80004b2:	491c      	ldr	r1, [pc, #112]	; (8000524 <main_thread+0x88>)
 80004b4:	481c      	ldr	r0, [pc, #112]	; (8000528 <main_thread+0x8c>)
 80004b6:	f44f 7200 	mov.w	r2, #512	; 0x200
 80004ba:	2306      	movs	r3, #6
 80004bc:	f000 fade 	bl	8000a7c <create_thread>
 80004c0:	491a      	ldr	r1, [pc, #104]	; (800052c <main_thread+0x90>)
 80004c2:	481b      	ldr	r0, [pc, #108]	; (8000530 <main_thread+0x94>)
 80004c4:	f44f 7200 	mov.w	r2, #512	; 0x200
 80004c8:	2306      	movs	r3, #6
 80004ca:	f000 fad7 	bl	8000a7c <create_thread>
 80004ce:	f000 f833 	bl	8000538 <broken_line_init>
 80004d2:	f7ff ff4f 	bl	8000374 <obstacle_init>
 80004d6:	6823      	ldr	r3, [r4, #0]
 80004d8:	b13b      	cbz	r3, 80004ea <main_thread+0x4e>
 80004da:	4816      	ldr	r0, [pc, #88]	; (8000534 <main_thread+0x98>)
 80004dc:	f000 f9c8 	bl	8000870 <printf_>
 80004e0:	f44f 60fa 	mov.w	r0, #2000	; 0x7d0
 80004e4:	f001 fc54 	bl	8001d90 <timer_delay_ms>
 80004e8:	e7f7      	b.n	80004da <main_thread+0x3e>
 80004ea:	f002 f8d3 	bl	8002694 <get_key>
 80004ee:	b128      	cbz	r0, 80004fc <main_thread+0x60>
 80004f0:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 80004f4:	f001 fc4c 	bl	8001d90 <timer_delay_ms>
 80004f8:	f7ff ff94 	bl	8000424 <line_follower>
 80004fc:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8000500:	f002 f8a4 	bl	800264c <led_on>
 8000504:	2064      	movs	r0, #100	; 0x64
 8000506:	f001 fc43 	bl	8001d90 <timer_delay_ms>
 800050a:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 800050e:	f002 f8af 	bl	8002670 <led_off>
 8000512:	20c8      	movs	r0, #200	; 0xc8
 8000514:	f001 fc3c 	bl	8001d90 <timer_delay_ms>
 8000518:	e7dd      	b.n	80004d6 <main_thread+0x3a>
 800051a:	bf00      	nop
 800051c:	08002832 	.word	0x08002832
 8000520:	20000af8 	.word	0x20000af8
 8000524:	200006f8 	.word	0x200006f8
 8000528:	080003c9 	.word	0x080003c9
 800052c:	200008f8 	.word	0x200008f8
 8000530:	080003f5 	.word	0x080003f5
 8000534:	0800286d 	.word	0x0800286d

08000538 <broken_line_init>:
 8000538:	4770      	bx	lr
	...

0800053c <broken_line_main>:
 800053c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8000540:	2500      	movs	r5, #0
 8000542:	462c      	mov	r4, r5
 8000544:	462f      	mov	r7, r5
 8000546:	46a8      	mov	r8, r5
 8000548:	462e      	mov	r6, r5
 800054a:	f8df 90e8 	ldr.w	r9, [pc, #232]	; 8000634 <broken_line_main+0xf8>
 800054e:	f899 3040 	ldrb.w	r3, [r9, #64]	; 0x40
 8000552:	2b08      	cmp	r3, #8
 8000554:	d068      	beq.n	8000628 <broken_line_main+0xec>
 8000556:	2005      	movs	r0, #5
 8000558:	f001 fc1a 	bl	8001d90 <timer_delay_ms>
 800055c:	2f05      	cmp	r7, #5
 800055e:	d85d      	bhi.n	800061c <broken_line_main+0xe0>
 8000560:	e8df f007 	tbb	[pc, r7]
 8000564:	35251303 	.word	0x35251303
 8000568:	4946      	.short	0x4946
 800056a:	2c00      	cmp	r4, #0
 800056c:	d141      	bne.n	80005f2 <broken_line_main+0xb6>
 800056e:	f8d9 3044 	ldr.w	r3, [r9, #68]	; 0x44
 8000572:	2b00      	cmp	r3, #0
 8000574:	f04f 0450 	mov.w	r4, #80	; 0x50
 8000578:	f04f 0701 	mov.w	r7, #1
 800057c:	bfca      	itet	gt
 800057e:	f04f 0800 	movgt.w	r8, #0
 8000582:	f04f 0832 	movle.w	r8, #50	; 0x32
 8000586:	2632      	movgt	r6, #50	; 0x32
 8000588:	e00e      	b.n	80005a8 <broken_line_main+0x6c>
 800058a:	bb94      	cbnz	r4, 80005f2 <broken_line_main+0xb6>
 800058c:	f8d9 3044 	ldr.w	r3, [r9, #68]	; 0x44
 8000590:	2b00      	cmp	r3, #0
 8000592:	f04f 0450 	mov.w	r4, #80	; 0x50
 8000596:	f04f 0702 	mov.w	r7, #2
 800059a:	bfca      	itet	gt
 800059c:	f04f 0800 	movgt.w	r8, #0
 80005a0:	f06f 0831 	mvnle.w	r8, #49	; 0x31
 80005a4:	f06f 0631 	mvngt.w	r6, #49	; 0x31
 80005a8:	bfd8      	it	le
 80005aa:	2600      	movle	r6, #0
 80005ac:	e036      	b.n	800061c <broken_line_main+0xe0>
 80005ae:	bb04      	cbnz	r4, 80005f2 <broken_line_main+0xb6>
 80005b0:	f8d9 3044 	ldr.w	r3, [r9, #68]	; 0x44
 80005b4:	2b00      	cmp	r3, #0
 80005b6:	f04f 0450 	mov.w	r4, #80	; 0x50
 80005ba:	f04f 0703 	mov.w	r7, #3
 80005be:	bfcb      	itete	gt
 80005c0:	f04f 0832 	movgt.w	r8, #50	; 0x32
 80005c4:	f04f 0800 	movle.w	r8, #0
 80005c8:	2600      	movgt	r6, #0
 80005ca:	2632      	movle	r6, #50	; 0x32
 80005cc:	e026      	b.n	800061c <broken_line_main+0xe0>
 80005ce:	b984      	cbnz	r4, 80005f2 <broken_line_main+0xb6>
 80005d0:	f8d9 3044 	ldr.w	r3, [r9, #68]	; 0x44
 80005d4:	2b00      	cmp	r3, #0
 80005d6:	f04f 0450 	mov.w	r4, #80	; 0x50
 80005da:	f04f 0704 	mov.w	r7, #4
 80005de:	bfcb      	itete	gt
 80005e0:	f06f 0831 	mvngt.w	r8, #49	; 0x31
 80005e4:	f04f 0800 	movle.w	r8, #0
 80005e8:	2600      	movgt	r6, #0
 80005ea:	f06f 0631 	mvnle.w	r6, #49	; 0x31
 80005ee:	e015      	b.n	800061c <broken_line_main+0xe0>
 80005f0:	b16c      	cbz	r4, 800060e <broken_line_main+0xd2>
 80005f2:	3c01      	subs	r4, #1
 80005f4:	e012      	b.n	800061c <broken_line_main+0xe0>
 80005f6:	b184      	cbz	r4, 800061a <broken_line_main+0xde>
 80005f8:	f241 3387 	movw	r3, #4999	; 0x1387
 80005fc:	429d      	cmp	r5, r3
 80005fe:	bfd8      	it	le
 8000600:	3532      	addle	r5, #50	; 0x32
 8000602:	2664      	movs	r6, #100	; 0x64
 8000604:	3c01      	subs	r4, #1
 8000606:	fb95 f6f6 	sdiv	r6, r5, r6
 800060a:	46b0      	mov	r8, r6
 800060c:	e006      	b.n	800061c <broken_line_main+0xe0>
 800060e:	4625      	mov	r5, r4
 8000610:	2705      	movs	r7, #5
 8000612:	2428      	movs	r4, #40	; 0x28
 8000614:	46a8      	mov	r8, r5
 8000616:	462e      	mov	r6, r5
 8000618:	e000      	b.n	800061c <broken_line_main+0xe0>
 800061a:	4627      	mov	r7, r4
 800061c:	fa0f f088 	sxth.w	r0, r8
 8000620:	b231      	sxth	r1, r6
 8000622:	f001 fda9 	bl	8002178 <drv8834_run>
 8000626:	e790      	b.n	800054a <broken_line_main+0xe>
 8000628:	2000      	movs	r0, #0
 800062a:	4601      	mov	r1, r0
 800062c:	e8bd 43f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8000630:	f001 bda2 	b.w	8002178 <drv8834_run>
 8000634:	200001d8 	.word	0x200001d8

08000638 <q_predictor_init>:
 8000638:	4b24      	ldr	r3, [pc, #144]	; (80006cc <q_predictor_init+0x94>)
 800063a:	2200      	movs	r2, #0
 800063c:	b510      	push	{r4, lr}
 800063e:	f103 0148 	add.w	r1, r3, #72	; 0x48
 8000642:	601a      	str	r2, [r3, #0]
 8000644:	605a      	str	r2, [r3, #4]
 8000646:	f103 0208 	add.w	r2, r3, #8
 800064a:	2000      	movs	r0, #0
 800064c:	f842 0b04 	str.w	r0, [r2], #4
 8000650:	428a      	cmp	r2, r1
 8000652:	d1fa      	bne.n	800064a <q_predictor_init+0x12>
 8000654:	2200      	movs	r2, #0
 8000656:	f102 0024 	add.w	r0, r2, #36	; 0x24
 800065a:	eb03 0040 	add.w	r0, r3, r0, lsl #1
 800065e:	2100      	movs	r1, #0
 8000660:	4c1b      	ldr	r4, [pc, #108]	; (80006d0 <q_predictor_init+0x98>)
 8000662:	ed9f 7a1c 	vldr	s14, [pc, #112]	; 80006d4 <q_predictor_init+0x9c>
 8000666:	4414      	add	r4, r2
 8000668:	f934 4011 	ldrsh.w	r4, [r4, r1, lsl #1]
 800066c:	ee07 4a90 	vmov	s15, r4
 8000670:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 8000674:	3101      	adds	r1, #1
 8000676:	eec7 7a87 	vdiv.f32	s15, s15, s14
 800067a:	2910      	cmp	r1, #16
 800067c:	ece0 7a01 	vstmia	r0!, {s15}
 8000680:	d1ee      	bne.n	8000660 <q_predictor_init+0x28>
 8000682:	3220      	adds	r2, #32
 8000684:	f5b2 7f80 	cmp.w	r2, #256	; 0x100
 8000688:	d1e5      	bne.n	8000656 <q_predictor_init+0x1e>
 800068a:	4a13      	ldr	r2, [pc, #76]	; (80006d8 <q_predictor_init+0xa0>)
 800068c:	2300      	movs	r3, #0
 800068e:	4913      	ldr	r1, [pc, #76]	; (80006dc <q_predictor_init+0xa4>)
 8000690:	f931 1013 	ldrsh.w	r1, [r1, r3, lsl #1]
 8000694:	ee07 1a90 	vmov	s15, r1
 8000698:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 800069c:	3301      	adds	r3, #1
 800069e:	eec7 7a87 	vdiv.f32	s15, s15, s14
 80006a2:	2b08      	cmp	r3, #8
 80006a4:	ece2 7a01 	vstmia	r2!, {s15}
 80006a8:	d1f1      	bne.n	800068e <q_predictor_init+0x56>
 80006aa:	4a0d      	ldr	r2, [pc, #52]	; (80006e0 <q_predictor_init+0xa8>)
 80006ac:	2300      	movs	r3, #0
 80006ae:	490d      	ldr	r1, [pc, #52]	; (80006e4 <q_predictor_init+0xac>)
 80006b0:	f931 1013 	ldrsh.w	r1, [r1, r3, lsl #1]
 80006b4:	ee07 1a90 	vmov	s15, r1
 80006b8:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 80006bc:	3301      	adds	r3, #1
 80006be:	eec7 7a87 	vdiv.f32	s15, s15, s14
 80006c2:	2b08      	cmp	r3, #8
 80006c4:	ece2 7a01 	vstmia	r2!, {s15}
 80006c8:	d1f1      	bne.n	80006ae <q_predictor_init+0x76>
 80006ca:	bd10      	pop	{r4, pc}
 80006cc:	20000464 	.word	0x20000464
 80006d0:	20000000 	.word	0x20000000
 80006d4:	447a0000 	.word	0x447a0000
 80006d8:	200006ac 	.word	0x200006ac
 80006dc:	20000154 	.word	0x20000154
 80006e0:	200006cc 	.word	0x200006cc
 80006e4:	20000144 	.word	0x20000144

080006e8 <mutex_init>:
 80006e8:	b510      	push	{r4, lr}
 80006ea:	4604      	mov	r4, r0
 80006ec:	f000 f9ae 	bl	8000a4c <sched_off>
 80006f0:	2300      	movs	r3, #0
 80006f2:	6023      	str	r3, [r4, #0]
 80006f4:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80006f8:	f000 b9aa 	b.w	8000a50 <sched_on>

080006fc <mutex_lock>:
 80006fc:	b513      	push	{r0, r1, r4, lr}
 80006fe:	4604      	mov	r4, r0
 8000700:	f000 f9a4 	bl	8000a4c <sched_off>
 8000704:	6823      	ldr	r3, [r4, #0]
 8000706:	9301      	str	r3, [sp, #4]
 8000708:	f000 f9a2 	bl	8000a50 <sched_on>
 800070c:	9b01      	ldr	r3, [sp, #4]
 800070e:	b10b      	cbz	r3, 8000714 <mutex_lock+0x18>
 8000710:	f000 fa16 	bl	8000b40 <set_wait_state>
 8000714:	9b01      	ldr	r3, [sp, #4]
 8000716:	2b00      	cmp	r3, #0
 8000718:	d1f2      	bne.n	8000700 <mutex_lock+0x4>
 800071a:	f000 f997 	bl	8000a4c <sched_off>
 800071e:	6823      	ldr	r3, [r4, #0]
 8000720:	9301      	str	r3, [sp, #4]
 8000722:	9b01      	ldr	r3, [sp, #4]
 8000724:	2b00      	cmp	r3, #0
 8000726:	d1eb      	bne.n	8000700 <mutex_lock+0x4>
 8000728:	2301      	movs	r3, #1
 800072a:	6023      	str	r3, [r4, #0]
 800072c:	f000 f990 	bl	8000a50 <sched_on>
 8000730:	b002      	add	sp, #8
 8000732:	bd10      	pop	{r4, pc}

08000734 <mutex_unlock>:
 8000734:	b508      	push	{r3, lr}
 8000736:	f7ff ffd7 	bl	80006e8 <mutex_init>
 800073a:	f000 fa23 	bl	8000b84 <wake_up_threads>
 800073e:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8000742:	f000 b987 	b.w	8000a54 <yield>
	...

08000748 <messages_init>:
 8000748:	4a0a      	ldr	r2, [pc, #40]	; (8000774 <messages_init+0x2c>)
 800074a:	2300      	movs	r3, #0
 800074c:	b510      	push	{r4, lr}
 800074e:	6013      	str	r3, [r2, #0]
 8000750:	6053      	str	r3, [r2, #4]
 8000752:	6093      	str	r3, [r2, #8]
 8000754:	60d3      	str	r3, [r2, #12]
 8000756:	6113      	str	r3, [r2, #16]
 8000758:	6153      	str	r3, [r2, #20]
 800075a:	4c07      	ldr	r4, [pc, #28]	; (8000778 <messages_init+0x30>)
 800075c:	0118      	lsls	r0, r3, #4
 800075e:	1821      	adds	r1, r4, r0
 8000760:	3301      	adds	r3, #1
 8000762:	2200      	movs	r2, #0
 8000764:	2b04      	cmp	r3, #4
 8000766:	604a      	str	r2, [r1, #4]
 8000768:	5022      	str	r2, [r4, r0]
 800076a:	60ca      	str	r2, [r1, #12]
 800076c:	608a      	str	r2, [r1, #8]
 800076e:	d1f4      	bne.n	800075a <messages_init+0x12>
 8000770:	bd10      	pop	{r4, pc}
 8000772:	bf00      	nop
 8000774:	20000cfc 	.word	0x20000cfc
 8000778:	20000d14 	.word	0x20000d14

0800077c <putc_>:
 800077c:	b538      	push	{r3, r4, r5, lr}
 800077e:	4c06      	ldr	r4, [pc, #24]	; (8000798 <putc_+0x1c>)
 8000780:	4605      	mov	r5, r0
 8000782:	4620      	mov	r0, r4
 8000784:	f7ff ffba 	bl	80006fc <mutex_lock>
 8000788:	4628      	mov	r0, r5
 800078a:	f001 fd6f 	bl	800226c <uart_write>
 800078e:	4620      	mov	r0, r4
 8000790:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8000794:	f7ff bfce 	b.w	8000734 <mutex_unlock>
 8000798:	20000d54 	.word	0x20000d54

0800079c <puts_>:
 800079c:	b510      	push	{r4, lr}
 800079e:	4604      	mov	r4, r0
 80007a0:	4807      	ldr	r0, [pc, #28]	; (80007c0 <puts_+0x24>)
 80007a2:	f7ff ffab 	bl	80006fc <mutex_lock>
 80007a6:	3c01      	subs	r4, #1
 80007a8:	f814 0f01 	ldrb.w	r0, [r4, #1]!
 80007ac:	b110      	cbz	r0, 80007b4 <puts_+0x18>
 80007ae:	f7ff ffe5 	bl	800077c <putc_>
 80007b2:	e7f9      	b.n	80007a8 <puts_+0xc>
 80007b4:	4802      	ldr	r0, [pc, #8]	; (80007c0 <puts_+0x24>)
 80007b6:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80007ba:	f7ff bfbb 	b.w	8000734 <mutex_unlock>
 80007be:	bf00      	nop
 80007c0:	20000d60 	.word	0x20000d60

080007c4 <puti_>:
 80007c4:	b530      	push	{r4, r5, lr}
 80007c6:	b085      	sub	sp, #20
 80007c8:	1e03      	subs	r3, r0, #0
 80007ca:	f04f 0200 	mov.w	r2, #0
 80007ce:	bfba      	itte	lt
 80007d0:	425b      	neglt	r3, r3
 80007d2:	2401      	movlt	r4, #1
 80007d4:	4614      	movge	r4, r2
 80007d6:	f88d 200f 	strb.w	r2, [sp, #15]
 80007da:	210a      	movs	r1, #10
 80007dc:	220a      	movs	r2, #10
 80007de:	a801      	add	r0, sp, #4
 80007e0:	fb93 f5f2 	sdiv	r5, r3, r2
 80007e4:	fb02 3315 	mls	r3, r2, r5, r3
 80007e8:	3330      	adds	r3, #48	; 0x30
 80007ea:	540b      	strb	r3, [r1, r0]
 80007ec:	1e4a      	subs	r2, r1, #1
 80007ee:	462b      	mov	r3, r5
 80007f0:	b10d      	cbz	r5, 80007f6 <puti_+0x32>
 80007f2:	4611      	mov	r1, r2
 80007f4:	e7f2      	b.n	80007dc <puti_+0x18>
 80007f6:	b12c      	cbz	r4, 8000804 <puti_+0x40>
 80007f8:	ab04      	add	r3, sp, #16
 80007fa:	4413      	add	r3, r2
 80007fc:	212d      	movs	r1, #45	; 0x2d
 80007fe:	f803 1c0c 	strb.w	r1, [r3, #-12]
 8000802:	4611      	mov	r1, r2
 8000804:	4408      	add	r0, r1
 8000806:	f7ff ffc9 	bl	800079c <puts_>
 800080a:	b005      	add	sp, #20
 800080c:	bd30      	pop	{r4, r5, pc}

0800080e <putui_>:
 800080e:	b51f      	push	{r0, r1, r2, r3, r4, lr}
 8000810:	2300      	movs	r3, #0
 8000812:	f88d 300f 	strb.w	r3, [sp, #15]
 8000816:	220a      	movs	r2, #10
 8000818:	230a      	movs	r3, #10
 800081a:	a901      	add	r1, sp, #4
 800081c:	fbb0 f4f3 	udiv	r4, r0, r3
 8000820:	fb03 0314 	mls	r3, r3, r4, r0
 8000824:	3330      	adds	r3, #48	; 0x30
 8000826:	5453      	strb	r3, [r2, r1]
 8000828:	4620      	mov	r0, r4
 800082a:	1e53      	subs	r3, r2, #1
 800082c:	b10c      	cbz	r4, 8000832 <putui_+0x24>
 800082e:	461a      	mov	r2, r3
 8000830:	e7f2      	b.n	8000818 <putui_+0xa>
 8000832:	1888      	adds	r0, r1, r2
 8000834:	f7ff ffb2 	bl	800079c <puts_>
 8000838:	b004      	add	sp, #16
 800083a:	bd10      	pop	{r4, pc}

0800083c <putx_>:
 800083c:	b51f      	push	{r0, r1, r2, r3, r4, lr}
 800083e:	2300      	movs	r3, #0
 8000840:	f88d 300f 	strb.w	r3, [sp, #15]
 8000844:	220a      	movs	r2, #10
 8000846:	f000 030f 	and.w	r3, r0, #15
 800084a:	2b09      	cmp	r3, #9
 800084c:	a901      	add	r1, sp, #4
 800084e:	bf94      	ite	ls
 8000850:	3330      	addls	r3, #48	; 0x30
 8000852:	3357      	addhi	r3, #87	; 0x57
 8000854:	0900      	lsrs	r0, r0, #4
 8000856:	548b      	strb	r3, [r1, r2]
 8000858:	f102 33ff 	add.w	r3, r2, #4294967295	; 0xffffffff
 800085c:	d001      	beq.n	8000862 <putx_+0x26>
 800085e:	461a      	mov	r2, r3
 8000860:	e7f1      	b.n	8000846 <putx_+0xa>
 8000862:	1888      	adds	r0, r1, r2
 8000864:	f7ff ff9a 	bl	800079c <puts_>
 8000868:	b005      	add	sp, #20
 800086a:	f85d fb04 	ldr.w	pc, [sp], #4
	...

08000870 <printf_>:
 8000870:	b40f      	push	{r0, r1, r2, r3}
 8000872:	b537      	push	{r0, r1, r2, r4, r5, lr}
 8000874:	ac06      	add	r4, sp, #24
 8000876:	4826      	ldr	r0, [pc, #152]	; (8000910 <printf_+0xa0>)
 8000878:	f854 5b04 	ldr.w	r5, [r4], #4
 800087c:	f7ff ff3e 	bl	80006fc <mutex_lock>
 8000880:	9401      	str	r4, [sp, #4]
 8000882:	2400      	movs	r4, #0
 8000884:	5d28      	ldrb	r0, [r5, r4]
 8000886:	2800      	cmp	r0, #0
 8000888:	d039      	beq.n	80008fe <printf_+0x8e>
 800088a:	2825      	cmp	r0, #37	; 0x25
 800088c:	d003      	beq.n	8000896 <printf_+0x26>
 800088e:	f7ff ff75 	bl	800077c <putc_>
 8000892:	3401      	adds	r4, #1
 8000894:	e7f6      	b.n	8000884 <printf_+0x14>
 8000896:	192b      	adds	r3, r5, r4
 8000898:	7858      	ldrb	r0, [r3, #1]
 800089a:	2869      	cmp	r0, #105	; 0x69
 800089c:	d016      	beq.n	80008cc <printf_+0x5c>
 800089e:	d808      	bhi.n	80008b2 <printf_+0x42>
 80008a0:	2825      	cmp	r0, #37	; 0x25
 80008a2:	d028      	beq.n	80008f6 <printf_+0x86>
 80008a4:	2863      	cmp	r0, #99	; 0x63
 80008a6:	d128      	bne.n	80008fa <printf_+0x8a>
 80008a8:	9b01      	ldr	r3, [sp, #4]
 80008aa:	1d1a      	adds	r2, r3, #4
 80008ac:	9201      	str	r2, [sp, #4]
 80008ae:	7818      	ldrb	r0, [r3, #0]
 80008b0:	e021      	b.n	80008f6 <printf_+0x86>
 80008b2:	2875      	cmp	r0, #117	; 0x75
 80008b4:	d011      	beq.n	80008da <printf_+0x6a>
 80008b6:	2878      	cmp	r0, #120	; 0x78
 80008b8:	d016      	beq.n	80008e8 <printf_+0x78>
 80008ba:	2873      	cmp	r0, #115	; 0x73
 80008bc:	d11d      	bne.n	80008fa <printf_+0x8a>
 80008be:	9b01      	ldr	r3, [sp, #4]
 80008c0:	1d1a      	adds	r2, r3, #4
 80008c2:	6818      	ldr	r0, [r3, #0]
 80008c4:	9201      	str	r2, [sp, #4]
 80008c6:	f7ff ff69 	bl	800079c <puts_>
 80008ca:	e016      	b.n	80008fa <printf_+0x8a>
 80008cc:	9b01      	ldr	r3, [sp, #4]
 80008ce:	1d1a      	adds	r2, r3, #4
 80008d0:	6818      	ldr	r0, [r3, #0]
 80008d2:	9201      	str	r2, [sp, #4]
 80008d4:	f7ff ff76 	bl	80007c4 <puti_>
 80008d8:	e00f      	b.n	80008fa <printf_+0x8a>
 80008da:	9b01      	ldr	r3, [sp, #4]
 80008dc:	1d1a      	adds	r2, r3, #4
 80008de:	6818      	ldr	r0, [r3, #0]
 80008e0:	9201      	str	r2, [sp, #4]
 80008e2:	f7ff ff94 	bl	800080e <putui_>
 80008e6:	e008      	b.n	80008fa <printf_+0x8a>
 80008e8:	9b01      	ldr	r3, [sp, #4]
 80008ea:	1d1a      	adds	r2, r3, #4
 80008ec:	6818      	ldr	r0, [r3, #0]
 80008ee:	9201      	str	r2, [sp, #4]
 80008f0:	f7ff ffa4 	bl	800083c <putx_>
 80008f4:	e001      	b.n	80008fa <printf_+0x8a>
 80008f6:	f7ff ff41 	bl	800077c <putc_>
 80008fa:	3402      	adds	r4, #2
 80008fc:	e7c2      	b.n	8000884 <printf_+0x14>
 80008fe:	4804      	ldr	r0, [pc, #16]	; (8000910 <printf_+0xa0>)
 8000900:	f7ff ff18 	bl	8000734 <mutex_unlock>
 8000904:	b003      	add	sp, #12
 8000906:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
 800090a:	b004      	add	sp, #16
 800090c:	4770      	bx	lr
 800090e:	bf00      	nop
 8000910:	20000d5c 	.word	0x20000d5c

08000914 <stdio_init>:
 8000914:	b510      	push	{r4, lr}
 8000916:	480e      	ldr	r0, [pc, #56]	; (8000950 <stdio_init+0x3c>)
 8000918:	f7ff fee6 	bl	80006e8 <mutex_init>
 800091c:	480d      	ldr	r0, [pc, #52]	; (8000954 <stdio_init+0x40>)
 800091e:	f7ff fee3 	bl	80006e8 <mutex_init>
 8000922:	480d      	ldr	r0, [pc, #52]	; (8000958 <stdio_init+0x44>)
 8000924:	f7ff fee0 	bl	80006e8 <mutex_init>
 8000928:	480c      	ldr	r0, [pc, #48]	; (800095c <stdio_init+0x48>)
 800092a:	f7ff fedd 	bl	80006e8 <mutex_init>
 800092e:	2408      	movs	r4, #8
 8000930:	2020      	movs	r0, #32
 8000932:	f7ff ff23 	bl	800077c <putc_>
 8000936:	3c01      	subs	r4, #1
 8000938:	d1fa      	bne.n	8000930 <stdio_init+0x1c>
 800093a:	2420      	movs	r4, #32
 800093c:	200a      	movs	r0, #10
 800093e:	f7ff ff1d 	bl	800077c <putc_>
 8000942:	3c01      	subs	r4, #1
 8000944:	d1fa      	bne.n	800093c <stdio_init+0x28>
 8000946:	4806      	ldr	r0, [pc, #24]	; (8000960 <stdio_init+0x4c>)
 8000948:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800094c:	f7ff bf90 	b.w	8000870 <printf_>
 8000950:	20000d54 	.word	0x20000d54
 8000954:	20000d58 	.word	0x20000d58
 8000958:	20000d60 	.word	0x20000d60
 800095c:	20000d5c 	.word	0x20000d5c
 8000960:	0800287d 	.word	0x0800287d

08000964 <lib_os_init>:
 8000964:	b508      	push	{r3, lr}
 8000966:	f000 f8c9 	bl	8000afc <kernel_init>
 800096a:	f7ff feed 	bl	8000748 <messages_init>
 800096e:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8000972:	f7ff bfcf 	b.w	8000914 <stdio_init>
	...

08000978 <thread_ending>:
 8000978:	b672      	cpsid	i
 800097a:	4b05      	ldr	r3, [pc, #20]	; (8000990 <thread_ending+0x18>)
 800097c:	681a      	ldr	r2, [r3, #0]
 800097e:	4b05      	ldr	r3, [pc, #20]	; (8000994 <thread_ending+0x1c>)
 8000980:	210c      	movs	r1, #12
 8000982:	fb01 3302 	mla	r3, r1, r2, r3
 8000986:	2200      	movs	r2, #0
 8000988:	605a      	str	r2, [r3, #4]
 800098a:	b662      	cpsie	i
 800098c:	bf00      	nop
 800098e:	e7fd      	b.n	800098c <thread_ending+0x14>
 8000990:	20000dac 	.word	0x20000dac
 8000994:	20000d64 	.word	0x20000d64

08000998 <null_thread>:
 8000998:	b508      	push	{r3, lr}
 800099a:	f001 ff13 	bl	80027c4 <sleep>
 800099e:	e7fc      	b.n	800099a <null_thread+0x2>

080009a0 <scheduler>:
 80009a0:	b570      	push	{r4, r5, r6, lr}
 80009a2:	2200      	movs	r2, #0
 80009a4:	4611      	mov	r1, r2
 80009a6:	4b15      	ldr	r3, [pc, #84]	; (80009fc <scheduler+0x5c>)
 80009a8:	200c      	movs	r0, #12
 80009aa:	fb00 f401 	mul.w	r4, r0, r1
 80009ae:	191e      	adds	r6, r3, r4
 80009b0:	6875      	ldr	r5, [r6, #4]
 80009b2:	f015 0f02 	tst.w	r5, #2
 80009b6:	461d      	mov	r5, r3
 80009b8:	d10a      	bne.n	80009d0 <scheduler+0x30>
 80009ba:	6876      	ldr	r6, [r6, #4]
 80009bc:	07f6      	lsls	r6, r6, #31
 80009be:	d507      	bpl.n	80009d0 <scheduler+0x30>
 80009c0:	4350      	muls	r0, r2
 80009c2:	5b1c      	ldrh	r4, [r3, r4]
 80009c4:	5a18      	ldrh	r0, [r3, r0]
 80009c6:	b2a4      	uxth	r4, r4
 80009c8:	b280      	uxth	r0, r0
 80009ca:	4284      	cmp	r4, r0
 80009cc:	bf38      	it	cc
 80009ce:	460a      	movcc	r2, r1
 80009d0:	200c      	movs	r0, #12
 80009d2:	4348      	muls	r0, r1
 80009d4:	5a1c      	ldrh	r4, [r3, r0]
 80009d6:	b2a4      	uxth	r4, r4
 80009d8:	b11c      	cbz	r4, 80009e2 <scheduler+0x42>
 80009da:	5a1c      	ldrh	r4, [r3, r0]
 80009dc:	3c01      	subs	r4, #1
 80009de:	b2a4      	uxth	r4, r4
 80009e0:	521c      	strh	r4, [r3, r0]
 80009e2:	3101      	adds	r1, #1
 80009e4:	2906      	cmp	r1, #6
 80009e6:	d1de      	bne.n	80009a6 <scheduler+0x6>
 80009e8:	230c      	movs	r3, #12
 80009ea:	4353      	muls	r3, r2
 80009ec:	18e9      	adds	r1, r5, r3
 80009ee:	8849      	ldrh	r1, [r1, #2]
 80009f0:	b289      	uxth	r1, r1
 80009f2:	52e9      	strh	r1, [r5, r3]
 80009f4:	4b02      	ldr	r3, [pc, #8]	; (8000a00 <scheduler+0x60>)
 80009f6:	601a      	str	r2, [r3, #0]
 80009f8:	bd70      	pop	{r4, r5, r6, pc}
 80009fa:	bf00      	nop
 80009fc:	20000d64 	.word	0x20000d64
 8000a00:	20000dac 	.word	0x20000dac

08000a04 <SysTick_Handler>:
 8000a04:	e92d 0ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 8000a08:	f3ef 8308 	mrs	r3, MSP
 8000a0c:	4c0d      	ldr	r4, [pc, #52]	; (8000a44 <SysTick_Handler+0x40>)
 8000a0e:	4d0e      	ldr	r5, [pc, #56]	; (8000a48 <SysTick_Handler+0x44>)
 8000a10:	6822      	ldr	r2, [r4, #0]
 8000a12:	3201      	adds	r2, #1
 8000a14:	bf1d      	ittte	ne
 8000a16:	6822      	ldrne	r2, [r4, #0]
 8000a18:	210c      	movne	r1, #12
 8000a1a:	fb01 5202 	mlane	r2, r1, r2, r5
 8000a1e:	2300      	moveq	r3, #0
 8000a20:	bf14      	ite	ne
 8000a22:	6093      	strne	r3, [r2, #8]
 8000a24:	6023      	streq	r3, [r4, #0]
 8000a26:	f7ff ffbb 	bl	80009a0 <scheduler>
 8000a2a:	6822      	ldr	r2, [r4, #0]
 8000a2c:	230c      	movs	r3, #12
 8000a2e:	fb03 5302 	mla	r3, r3, r2, r5
 8000a32:	689a      	ldr	r2, [r3, #8]
 8000a34:	f06f 0306 	mvn.w	r3, #6
 8000a38:	469e      	mov	lr, r3
 8000a3a:	f382 8808 	msr	MSP, r2
 8000a3e:	e8bd 0ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 8000a42:	4770      	bx	lr
 8000a44:	20000dac 	.word	0x20000dac
 8000a48:	20000d64 	.word	0x20000d64

08000a4c <sched_off>:
 8000a4c:	b672      	cpsid	i
 8000a4e:	4770      	bx	lr

08000a50 <sched_on>:
 8000a50:	b662      	cpsie	i
 8000a52:	4770      	bx	lr

08000a54 <yield>:
 8000a54:	bf00      	nop
 8000a56:	4770      	bx	lr

08000a58 <get_thread_id>:
 8000a58:	b082      	sub	sp, #8
 8000a5a:	b672      	cpsid	i
 8000a5c:	4b03      	ldr	r3, [pc, #12]	; (8000a6c <get_thread_id+0x14>)
 8000a5e:	681b      	ldr	r3, [r3, #0]
 8000a60:	9301      	str	r3, [sp, #4]
 8000a62:	b662      	cpsie	i
 8000a64:	9801      	ldr	r0, [sp, #4]
 8000a66:	b002      	add	sp, #8
 8000a68:	4770      	bx	lr
 8000a6a:	bf00      	nop
 8000a6c:	20000dac 	.word	0x20000dac

08000a70 <kernel_start>:
 8000a70:	b508      	push	{r3, lr}
 8000a72:	f001 fe95 	bl	80027a0 <sys_tick_init>
 8000a76:	bf00      	nop
 8000a78:	e7fd      	b.n	8000a76 <kernel_start+0x6>
	...

08000a7c <create_thread>:
 8000a7c:	f022 0203 	bic.w	r2, r2, #3
 8000a80:	3a40      	subs	r2, #64	; 0x40
 8000a82:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8000a86:	eb01 0e02 	add.w	lr, r1, r2
 8000a8a:	f102 0634 	add.w	r6, r2, #52	; 0x34
 8000a8e:	f102 0738 	add.w	r7, r2, #56	; 0x38
 8000a92:	323c      	adds	r2, #60	; 0x3c
 8000a94:	440e      	add	r6, r1
 8000a96:	440f      	add	r7, r1
 8000a98:	4411      	add	r1, r2
 8000a9a:	2200      	movs	r2, #0
 8000a9c:	b672      	cpsid	i
 8000a9e:	f8df c054 	ldr.w	ip, [pc, #84]	; 8000af4 <create_thread+0x78>
 8000aa2:	250c      	movs	r5, #12
 8000aa4:	4355      	muls	r5, r2
 8000aa6:	eb0c 0405 	add.w	r4, ip, r5
 8000aaa:	f8d4 8004 	ldr.w	r8, [r4, #4]
 8000aae:	f018 0f01 	tst.w	r8, #1
 8000ab2:	d114      	bne.n	8000ade <create_thread+0x62>
 8000ab4:	f8df 8040 	ldr.w	r8, [pc, #64]	; 8000af8 <create_thread+0x7c>
 8000ab8:	f8c4 e008 	str.w	lr, [r4, #8]
 8000abc:	2b05      	cmp	r3, #5
 8000abe:	f8c6 8000 	str.w	r8, [r6]
 8000ac2:	bf98      	it	ls
 8000ac4:	2306      	movls	r3, #6
 8000ac6:	f04f 5804 	mov.w	r8, #553648128	; 0x21000000
 8000aca:	6038      	str	r0, [r7, #0]
 8000acc:	f8c1 8000 	str.w	r8, [r1]
 8000ad0:	8063      	strh	r3, [r4, #2]
 8000ad2:	f82c 3005 	strh.w	r3, [ip, r5]
 8000ad6:	2501      	movs	r5, #1
 8000ad8:	6065      	str	r5, [r4, #4]
 8000ada:	4614      	mov	r4, r2
 8000adc:	e000      	b.n	8000ae0 <create_thread+0x64>
 8000ade:	2406      	movs	r4, #6
 8000ae0:	b662      	cpsie	i
 8000ae2:	3201      	adds	r2, #1
 8000ae4:	2a06      	cmp	r2, #6
 8000ae6:	d001      	beq.n	8000aec <create_thread+0x70>
 8000ae8:	2c06      	cmp	r4, #6
 8000aea:	d0d7      	beq.n	8000a9c <create_thread+0x20>
 8000aec:	4620      	mov	r0, r4
 8000aee:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8000af2:	bf00      	nop
 8000af4:	20000d64 	.word	0x20000d64
 8000af8:	08000979 	.word	0x08000979

08000afc <kernel_init>:
 8000afc:	b510      	push	{r4, lr}
 8000afe:	2300      	movs	r3, #0
 8000b00:	490b      	ldr	r1, [pc, #44]	; (8000b30 <kernel_init+0x34>)
 8000b02:	220c      	movs	r2, #12
 8000b04:	435a      	muls	r2, r3
 8000b06:	188c      	adds	r4, r1, r2
 8000b08:	2000      	movs	r0, #0
 8000b0a:	6060      	str	r0, [r4, #4]
 8000b0c:	3301      	adds	r3, #1
 8000b0e:	2006      	movs	r0, #6
 8000b10:	4283      	cmp	r3, r0
 8000b12:	8060      	strh	r0, [r4, #2]
 8000b14:	5288      	strh	r0, [r1, r2]
 8000b16:	d1f3      	bne.n	8000b00 <kernel_init+0x4>
 8000b18:	4b06      	ldr	r3, [pc, #24]	; (8000b34 <kernel_init+0x38>)
 8000b1a:	4807      	ldr	r0, [pc, #28]	; (8000b38 <kernel_init+0x3c>)
 8000b1c:	4907      	ldr	r1, [pc, #28]	; (8000b3c <kernel_init+0x40>)
 8000b1e:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8000b22:	601a      	str	r2, [r3, #0]
 8000b24:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000b28:	2280      	movs	r2, #128	; 0x80
 8000b2a:	23ff      	movs	r3, #255	; 0xff
 8000b2c:	f7ff bfa6 	b.w	8000a7c <create_thread>
 8000b30:	20000d64 	.word	0x20000d64
 8000b34:	20000dac 	.word	0x20000dac
 8000b38:	08000999 	.word	0x08000999
 8000b3c:	20000db0 	.word	0x20000db0

08000b40 <set_wait_state>:
 8000b40:	b507      	push	{r0, r1, r2, lr}
 8000b42:	f7ff ff89 	bl	8000a58 <get_thread_id>
 8000b46:	9000      	str	r0, [sp, #0]
 8000b48:	b672      	cpsid	i
 8000b4a:	4b0d      	ldr	r3, [pc, #52]	; (8000b80 <set_wait_state+0x40>)
 8000b4c:	9a00      	ldr	r2, [sp, #0]
 8000b4e:	210c      	movs	r1, #12
 8000b50:	fb01 3202 	mla	r2, r1, r2, r3
 8000b54:	6851      	ldr	r1, [r2, #4]
 8000b56:	f041 0102 	orr.w	r1, r1, #2
 8000b5a:	6051      	str	r1, [r2, #4]
 8000b5c:	b672      	cpsid	i
 8000b5e:	9a00      	ldr	r2, [sp, #0]
 8000b60:	210c      	movs	r1, #12
 8000b62:	fb01 3202 	mla	r2, r1, r2, r3
 8000b66:	6852      	ldr	r2, [r2, #4]
 8000b68:	9201      	str	r2, [sp, #4]
 8000b6a:	b662      	cpsie	i
 8000b6c:	9a01      	ldr	r2, [sp, #4]
 8000b6e:	0791      	lsls	r1, r2, #30
 8000b70:	d500      	bpl.n	8000b74 <set_wait_state+0x34>
 8000b72:	bf00      	nop
 8000b74:	9a01      	ldr	r2, [sp, #4]
 8000b76:	0792      	lsls	r2, r2, #30
 8000b78:	d4f0      	bmi.n	8000b5c <set_wait_state+0x1c>
 8000b7a:	b003      	add	sp, #12
 8000b7c:	f85d fb04 	ldr.w	pc, [sp], #4
 8000b80:	20000d64 	.word	0x20000d64

08000b84 <wake_up_threads>:
 8000b84:	2300      	movs	r3, #0
 8000b86:	b672      	cpsid	i
 8000b88:	4906      	ldr	r1, [pc, #24]	; (8000ba4 <wake_up_threads+0x20>)
 8000b8a:	220c      	movs	r2, #12
 8000b8c:	fb02 1203 	mla	r2, r2, r3, r1
 8000b90:	6851      	ldr	r1, [r2, #4]
 8000b92:	f021 0102 	bic.w	r1, r1, #2
 8000b96:	6051      	str	r1, [r2, #4]
 8000b98:	b662      	cpsie	i
 8000b9a:	3301      	adds	r3, #1
 8000b9c:	2b06      	cmp	r3, #6
 8000b9e:	d1f2      	bne.n	8000b86 <wake_up_threads+0x2>
 8000ba0:	4770      	bx	lr
 8000ba2:	bf00      	nop
 8000ba4:	20000d64 	.word	0x20000d64

08000ba8 <main>:
 8000ba8:	b508      	push	{r3, lr}
 8000baa:	f001 fe0f 	bl	80027cc <lib_low_level_init>
 8000bae:	f7ff fed9 	bl	8000964 <lib_os_init>
 8000bb2:	4905      	ldr	r1, [pc, #20]	; (8000bc8 <main+0x20>)
 8000bb4:	4805      	ldr	r0, [pc, #20]	; (8000bcc <main+0x24>)
 8000bb6:	f44f 7200 	mov.w	r2, #512	; 0x200
 8000bba:	2306      	movs	r3, #6
 8000bbc:	f7ff ff5e 	bl	8000a7c <create_thread>
 8000bc0:	f7ff ff56 	bl	8000a70 <kernel_start>
 8000bc4:	2000      	movs	r0, #0
 8000bc6:	bd08      	pop	{r3, pc}
 8000bc8:	20000afc 	.word	0x20000afc
 8000bcc:	0800049d 	.word	0x0800049d

08000bd0 <m_abs>:
 8000bd0:	ee07 0a90 	vmov	s15, r0
 8000bd4:	eef5 7ac0 	vcmpe.f32	s15, #0.0
 8000bd8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000bdc:	bf48      	it	mi
 8000bde:	eef1 7a67 	vnegmi.f32	s15, s15
 8000be2:	ee17 0a90 	vmov	r0, s15
 8000be6:	4770      	bx	lr

08000be8 <m_saturate>:
 8000be8:	ee07 0a90 	vmov	s15, r0
 8000bec:	ee06 1a90 	vmov	s13, r1
 8000bf0:	eef4 7a66 	vcmp.f32	s15, s13
 8000bf4:	ee07 2a10 	vmov	s14, r2
 8000bf8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000bfc:	bf48      	it	mi
 8000bfe:	eef0 7a66 	vmovmi.f32	s15, s13
 8000c02:	eef4 7a47 	vcmp.f32	s15, s14
 8000c06:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000c0a:	bfcc      	ite	gt
 8000c0c:	ee17 0a10 	vmovgt	r0, s14
 8000c10:	ee17 0a90 	vmovle	r0, s15
 8000c14:	4770      	bx	lr

08000c16 <m_min>:
 8000c16:	ee07 0a10 	vmov	s14, r0
 8000c1a:	ee07 1a90 	vmov	s15, r1
 8000c1e:	eeb4 7ae7 	vcmpe.f32	s14, s15
 8000c22:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000c26:	bf54      	ite	pl
 8000c28:	ee17 0a90 	vmovpl	r0, s15
 8000c2c:	ee17 0a10 	vmovmi	r0, s14
 8000c30:	4770      	bx	lr
	...

08000c34 <pid_init>:
 8000c34:	ee07 2a90 	vmov	s15, r2
 8000c38:	ee06 3a10 	vmov	s12, r3
 8000c3c:	ed9d 7a00 	vldr	s14, [sp]
 8000c40:	eddd 6a01 	vldr	s13, [sp, #4]
 8000c44:	6241      	str	r1, [r0, #36]	; 0x24
 8000c46:	ee37 6a86 	vadd.f32	s12, s15, s12
 8000c4a:	ee77 5a07 	vadd.f32	s11, s14, s14
 8000c4e:	ee36 6a07 	vadd.f32	s12, s12, s14
 8000c52:	eef1 7a67 	vneg.f32	s15, s15
 8000c56:	ee36 6a26 	vadd.f32	s12, s12, s13
 8000c5a:	ee77 7ae5 	vsub.f32	s15, s15, s11
 8000c5e:	ed80 6a04 	vstr	s12, [r0, #16]
 8000c62:	ed9f 6a0b 	vldr	s12, [pc, #44]	; 8000c90 <pid_init+0x5c>
 8000c66:	ee26 6a86 	vmul.f32	s12, s13, s12
 8000c6a:	2200      	movs	r2, #0
 8000c6c:	ee77 7ac6 	vsub.f32	s15, s15, s12
 8000c70:	ee37 7a06 	vadd.f32	s14, s14, s12
 8000c74:	eef1 6a66 	vneg.f32	s13, s13
 8000c78:	6002      	str	r2, [r0, #0]
 8000c7a:	6042      	str	r2, [r0, #4]
 8000c7c:	6082      	str	r2, [r0, #8]
 8000c7e:	60c2      	str	r2, [r0, #12]
 8000c80:	edc0 7a05 	vstr	s15, [r0, #20]
 8000c84:	ed80 7a06 	vstr	s14, [r0, #24]
 8000c88:	edc0 6a07 	vstr	s13, [r0, #28]
 8000c8c:	6202      	str	r2, [r0, #32]
 8000c8e:	4770      	bx	lr
 8000c90:	40400000 	.word	0x40400000

08000c94 <pid_process>:
 8000c94:	edd0 7a08 	vldr	s15, [r0, #32]
 8000c98:	ed90 5a04 	vldr	s10, [r0, #16]
 8000c9c:	ed90 6a00 	vldr	s12, [r0]
 8000ca0:	edd0 6a01 	vldr	s13, [r0, #4]
 8000ca4:	ed80 6a01 	vstr	s12, [r0, #4]
 8000ca8:	ee05 1a90 	vmov	s11, r1
 8000cac:	ee45 7a85 	vmla.f32	s15, s11, s10
 8000cb0:	6001      	str	r1, [r0, #0]
 8000cb2:	edd0 5a05 	vldr	s11, [r0, #20]
 8000cb6:	ed90 7a02 	vldr	s14, [r0, #8]
 8000cba:	edc0 6a02 	vstr	s13, [r0, #8]
 8000cbe:	ee46 7a25 	vmla.f32	s15, s12, s11
 8000cc2:	ed90 6a06 	vldr	s12, [r0, #24]
 8000cc6:	ed80 7a03 	vstr	s14, [r0, #12]
 8000cca:	ee46 7a86 	vmla.f32	s15, s13, s12
 8000cce:	edd0 6a07 	vldr	s13, [r0, #28]
 8000cd2:	ee47 7a26 	vmla.f32	s15, s14, s13
 8000cd6:	ed90 7a09 	vldr	s14, [r0, #36]	; 0x24
 8000cda:	edc0 7a08 	vstr	s15, [r0, #32]
 8000cde:	eef4 7ac7 	vcmpe.f32	s15, s14
 8000ce2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000ce6:	bfc8      	it	gt
 8000ce8:	ed80 7a08 	vstrgt	s14, [r0, #32]
 8000cec:	edd0 7a08 	vldr	s15, [r0, #32]
 8000cf0:	eeb1 7a47 	vneg.f32	s14, s14
 8000cf4:	eef4 7ac7 	vcmpe.f32	s15, s14
 8000cf8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000cfc:	bf48      	it	mi
 8000cfe:	ed80 7a08 	vstrmi	s14, [r0, #32]
 8000d02:	6a00      	ldr	r0, [r0, #32]
 8000d04:	4770      	bx	lr
	...

08000d08 <TIM2_IRQHandler>:
 8000d08:	4a21      	ldr	r2, [pc, #132]	; (8000d90 <TIM2_IRQHandler+0x88>)
 8000d0a:	4922      	ldr	r1, [pc, #136]	; (8000d94 <TIM2_IRQHandler+0x8c>)
 8000d0c:	6813      	ldr	r3, [r2, #0]
 8000d0e:	2b01      	cmp	r3, #1
 8000d10:	b510      	push	{r4, lr}
 8000d12:	d011      	beq.n	8000d38 <TIM2_IRQHandler+0x30>
 8000d14:	d306      	bcc.n	8000d24 <TIM2_IRQHandler+0x1c>
 8000d16:	2b02      	cmp	r3, #2
 8000d18:	d113      	bne.n	8000d42 <TIM2_IRQHandler+0x3a>
 8000d1a:	f44f 6380 	mov.w	r3, #1024	; 0x400
 8000d1e:	850b      	strh	r3, [r1, #40]	; 0x28
 8000d20:	2304      	movs	r3, #4
 8000d22:	e023      	b.n	8000d6c <TIM2_IRQHandler+0x64>
 8000d24:	f44f 7380 	mov.w	r3, #256	; 0x100
 8000d28:	850b      	strh	r3, [r1, #40]	; 0x28
 8000d2a:	f44f 6380 	mov.w	r3, #1024	; 0x400
 8000d2e:	618b      	str	r3, [r1, #24]
 8000d30:	2301      	movs	r3, #1
 8000d32:	6013      	str	r3, [r2, #0]
 8000d34:	6093      	str	r3, [r2, #8]
 8000d36:	e023      	b.n	8000d80 <TIM2_IRQHandler+0x78>
 8000d38:	f44f 7380 	mov.w	r3, #256	; 0x100
 8000d3c:	618b      	str	r3, [r1, #24]
 8000d3e:	2302      	movs	r3, #2
 8000d40:	e014      	b.n	8000d6c <TIM2_IRQHandler+0x64>
 8000d42:	f013 0f01 	tst.w	r3, #1
 8000d46:	4814      	ldr	r0, [pc, #80]	; (8000d98 <TIM2_IRQHandler+0x90>)
 8000d48:	f103 0401 	add.w	r4, r3, #1
 8000d4c:	d010      	beq.n	8000d70 <TIM2_IRQHandler+0x68>
 8000d4e:	3b04      	subs	r3, #4
 8000d50:	f023 0301 	bic.w	r3, r3, #1
 8000d54:	4413      	add	r3, r2
 8000d56:	6c00      	ldr	r0, [r0, #64]	; 0x40
 8000d58:	8298      	strh	r0, [r3, #20]
 8000d5a:	f5b4 7f82 	cmp.w	r4, #260	; 0x104
 8000d5e:	f44f 7380 	mov.w	r3, #256	; 0x100
 8000d62:	850b      	strh	r3, [r1, #40]	; 0x28
 8000d64:	d201      	bcs.n	8000d6a <TIM2_IRQHandler+0x62>
 8000d66:	6014      	str	r4, [r2, #0]
 8000d68:	e00a      	b.n	8000d80 <TIM2_IRQHandler+0x78>
 8000d6a:	2300      	movs	r3, #0
 8000d6c:	6013      	str	r3, [r2, #0]
 8000d6e:	e007      	b.n	8000d80 <TIM2_IRQHandler+0x78>
 8000d70:	f44f 7380 	mov.w	r3, #256	; 0x100
 8000d74:	618b      	str	r3, [r1, #24]
 8000d76:	6883      	ldr	r3, [r0, #8]
 8000d78:	6014      	str	r4, [r2, #0]
 8000d7a:	f043 0304 	orr.w	r3, r3, #4
 8000d7e:	6083      	str	r3, [r0, #8]
 8000d80:	f04f 4080 	mov.w	r0, #1073741824	; 0x40000000
 8000d84:	2101      	movs	r1, #1
 8000d86:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000d8a:	f001 b928 	b.w	8001fde <TIM_ClearITPendingBit>
 8000d8e:	bf00      	nop
 8000d90:	20000250 	.word	0x20000250
 8000d94:	48000400 	.word	0x48000400
 8000d98:	50000500 	.word	0x50000500

08000d9c <rgb_i2c_delay>:
 8000d9c:	bf00      	nop
 8000d9e:	4770      	bx	lr

08000da0 <RGBSetLowSDA>:
 8000da0:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 8000da2:	4f15      	ldr	r7, [pc, #84]	; (8000df8 <RGBSetLowSDA+0x58>)
 8000da4:	2401      	movs	r4, #1
 8000da6:	783b      	ldrb	r3, [r7, #0]
 8000da8:	9300      	str	r3, [sp, #0]
 8000daa:	2603      	movs	r6, #3
 8000dac:	2500      	movs	r5, #0
 8000dae:	4669      	mov	r1, sp
 8000db0:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000db4:	f88d 5007 	strb.w	r5, [sp, #7]
 8000db8:	f88d 4004 	strb.w	r4, [sp, #4]
 8000dbc:	f88d 6005 	strb.w	r6, [sp, #5]
 8000dc0:	f88d 4006 	strb.w	r4, [sp, #6]
 8000dc4:	f001 fb95 	bl	80024f2 <GPIO_Init>
 8000dc8:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000dcc:	783a      	ldrb	r2, [r7, #0]
 8000dce:	851a      	strh	r2, [r3, #40]	; 0x28
 8000dd0:	f88d 5007 	strb.w	r5, [sp, #7]
 8000dd4:	4d09      	ldr	r5, [pc, #36]	; (8000dfc <RGBSetLowSDA+0x5c>)
 8000dd6:	9400      	str	r4, [sp, #0]
 8000dd8:	4628      	mov	r0, r5
 8000dda:	4669      	mov	r1, sp
 8000ddc:	f88d 4004 	strb.w	r4, [sp, #4]
 8000de0:	f88d 6005 	strb.w	r6, [sp, #5]
 8000de4:	f88d 4006 	strb.w	r4, [sp, #6]
 8000de8:	f001 fb83 	bl	80024f2 <GPIO_Init>
 8000dec:	852c      	strh	r4, [r5, #40]	; 0x28
 8000dee:	f7ff ffd5 	bl	8000d9c <rgb_i2c_delay>
 8000df2:	b003      	add	sp, #12
 8000df4:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000df6:	bf00      	nop
 8000df8:	20000e30 	.word	0x20000e30
 8000dfc:	48000400 	.word	0x48000400

08000e00 <RGBSetHighSDA>:
 8000e00:	b573      	push	{r0, r1, r4, r5, r6, lr}
 8000e02:	4d13      	ldr	r5, [pc, #76]	; (8000e50 <RGBSetHighSDA+0x50>)
 8000e04:	2400      	movs	r4, #0
 8000e06:	782b      	ldrb	r3, [r5, #0]
 8000e08:	9300      	str	r3, [sp, #0]
 8000e0a:	2603      	movs	r6, #3
 8000e0c:	4669      	mov	r1, sp
 8000e0e:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000e12:	f88d 4004 	strb.w	r4, [sp, #4]
 8000e16:	f88d 4007 	strb.w	r4, [sp, #7]
 8000e1a:	f88d 6005 	strb.w	r6, [sp, #5]
 8000e1e:	f001 fb68 	bl	80024f2 <GPIO_Init>
 8000e22:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000e26:	782a      	ldrb	r2, [r5, #0]
 8000e28:	619a      	str	r2, [r3, #24]
 8000e2a:	f88d 4004 	strb.w	r4, [sp, #4]
 8000e2e:	f88d 4007 	strb.w	r4, [sp, #7]
 8000e32:	4c08      	ldr	r4, [pc, #32]	; (8000e54 <RGBSetHighSDA+0x54>)
 8000e34:	f88d 6005 	strb.w	r6, [sp, #5]
 8000e38:	2501      	movs	r5, #1
 8000e3a:	4620      	mov	r0, r4
 8000e3c:	4669      	mov	r1, sp
 8000e3e:	9500      	str	r5, [sp, #0]
 8000e40:	f001 fb57 	bl	80024f2 <GPIO_Init>
 8000e44:	61a5      	str	r5, [r4, #24]
 8000e46:	f7ff ffa9 	bl	8000d9c <rgb_i2c_delay>
 8000e4a:	b002      	add	sp, #8
 8000e4c:	bd70      	pop	{r4, r5, r6, pc}
 8000e4e:	bf00      	nop
 8000e50:	20000e30 	.word	0x20000e30
 8000e54:	48000400 	.word	0x48000400

08000e58 <RGBSetLowSCL>:
 8000e58:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000e5c:	f44f 7280 	mov.w	r2, #256	; 0x100
 8000e60:	851a      	strh	r2, [r3, #40]	; 0x28
 8000e62:	f7ff bf9b 	b.w	8000d9c <rgb_i2c_delay>

08000e66 <RGBSetHighSCL>:
 8000e66:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000e6a:	f44f 7280 	mov.w	r2, #256	; 0x100
 8000e6e:	619a      	str	r2, [r3, #24]
 8000e70:	f7ff bf94 	b.w	8000d9c <rgb_i2c_delay>

08000e74 <rgb_i2c_init>:
 8000e74:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 8000e76:	4f1f      	ldr	r7, [pc, #124]	; (8000ef4 <rgb_i2c_init+0x80>)
 8000e78:	2400      	movs	r4, #0
 8000e7a:	2501      	movs	r5, #1
 8000e7c:	2603      	movs	r6, #3
 8000e7e:	f44f 7380 	mov.w	r3, #256	; 0x100
 8000e82:	4669      	mov	r1, sp
 8000e84:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000e88:	9300      	str	r3, [sp, #0]
 8000e8a:	f88d 4006 	strb.w	r4, [sp, #6]
 8000e8e:	f88d 4007 	strb.w	r4, [sp, #7]
 8000e92:	f88d 5004 	strb.w	r5, [sp, #4]
 8000e96:	f88d 6005 	strb.w	r6, [sp, #5]
 8000e9a:	f001 fb2a 	bl	80024f2 <GPIO_Init>
 8000e9e:	783b      	ldrb	r3, [r7, #0]
 8000ea0:	9300      	str	r3, [sp, #0]
 8000ea2:	4669      	mov	r1, sp
 8000ea4:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000ea8:	f88d 4004 	strb.w	r4, [sp, #4]
 8000eac:	f88d 4007 	strb.w	r4, [sp, #7]
 8000eb0:	f88d 6005 	strb.w	r6, [sp, #5]
 8000eb4:	f001 fb1d 	bl	80024f2 <GPIO_Init>
 8000eb8:	7839      	ldrb	r1, [r7, #0]
 8000eba:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000ebe:	f001 fb5a 	bl	8002576 <GPIO_SetBits>
 8000ec2:	f88d 4004 	strb.w	r4, [sp, #4]
 8000ec6:	f88d 4007 	strb.w	r4, [sp, #7]
 8000eca:	4c0b      	ldr	r4, [pc, #44]	; (8000ef8 <rgb_i2c_init+0x84>)
 8000ecc:	9500      	str	r5, [sp, #0]
 8000ece:	4620      	mov	r0, r4
 8000ed0:	4669      	mov	r1, sp
 8000ed2:	f88d 6005 	strb.w	r6, [sp, #5]
 8000ed6:	f001 fb0c 	bl	80024f2 <GPIO_Init>
 8000eda:	4620      	mov	r0, r4
 8000edc:	4629      	mov	r1, r5
 8000ede:	f001 fb4a 	bl	8002576 <GPIO_SetBits>
 8000ee2:	f7ff ffc0 	bl	8000e66 <RGBSetHighSCL>
 8000ee6:	f7ff ff5b 	bl	8000da0 <RGBSetLowSDA>
 8000eea:	f7ff ff89 	bl	8000e00 <RGBSetHighSDA>
 8000eee:	b003      	add	sp, #12
 8000ef0:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000ef2:	bf00      	nop
 8000ef4:	20000e30 	.word	0x20000e30
 8000ef8:	48000400 	.word	0x48000400

08000efc <rgb_i2cStart>:
 8000efc:	b508      	push	{r3, lr}
 8000efe:	f7ff ffb2 	bl	8000e66 <RGBSetHighSCL>
 8000f02:	f7ff ff7d 	bl	8000e00 <RGBSetHighSDA>
 8000f06:	f7ff ffae 	bl	8000e66 <RGBSetHighSCL>
 8000f0a:	f7ff ff49 	bl	8000da0 <RGBSetLowSDA>
 8000f0e:	f7ff ffa3 	bl	8000e58 <RGBSetLowSCL>
 8000f12:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8000f16:	f7ff bf73 	b.w	8000e00 <RGBSetHighSDA>

08000f1a <rgb_i2cStop>:
 8000f1a:	b508      	push	{r3, lr}
 8000f1c:	f7ff ff9c 	bl	8000e58 <RGBSetLowSCL>
 8000f20:	f7ff ff3e 	bl	8000da0 <RGBSetLowSDA>
 8000f24:	f7ff ff9f 	bl	8000e66 <RGBSetHighSCL>
 8000f28:	f7ff ff3a 	bl	8000da0 <RGBSetLowSDA>
 8000f2c:	f7ff ff9b 	bl	8000e66 <RGBSetHighSCL>
 8000f30:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8000f34:	f7ff bf64 	b.w	8000e00 <RGBSetHighSDA>

08000f38 <rgb_i2cWrite>:
 8000f38:	b538      	push	{r3, r4, r5, lr}
 8000f3a:	4605      	mov	r5, r0
 8000f3c:	2408      	movs	r4, #8
 8000f3e:	f7ff ff8b 	bl	8000e58 <RGBSetLowSCL>
 8000f42:	062b      	lsls	r3, r5, #24
 8000f44:	d502      	bpl.n	8000f4c <rgb_i2cWrite+0x14>
 8000f46:	f7ff ff5b 	bl	8000e00 <RGBSetHighSDA>
 8000f4a:	e001      	b.n	8000f50 <rgb_i2cWrite+0x18>
 8000f4c:	f7ff ff28 	bl	8000da0 <RGBSetLowSDA>
 8000f50:	3c01      	subs	r4, #1
 8000f52:	f7ff ff88 	bl	8000e66 <RGBSetHighSCL>
 8000f56:	006d      	lsls	r5, r5, #1
 8000f58:	f014 04ff 	ands.w	r4, r4, #255	; 0xff
 8000f5c:	b2ed      	uxtb	r5, r5
 8000f5e:	d1ee      	bne.n	8000f3e <rgb_i2cWrite+0x6>
 8000f60:	f7ff ff7a 	bl	8000e58 <RGBSetLowSCL>
 8000f64:	f7ff ff4c 	bl	8000e00 <RGBSetHighSDA>
 8000f68:	f7ff ff7d 	bl	8000e66 <RGBSetHighSCL>
 8000f6c:	f7ff ff74 	bl	8000e58 <RGBSetLowSCL>
 8000f70:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8000f74:	f7ff bf12 	b.w	8000d9c <rgb_i2c_delay>

08000f78 <rgb_i2cRead>:
 8000f78:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8000f7c:	1e4e      	subs	r6, r1, #1
 8000f7e:	4680      	mov	r8, r0
 8000f80:	460c      	mov	r4, r1
 8000f82:	f101 0708 	add.w	r7, r1, #8
 8000f86:	4633      	mov	r3, r6
 8000f88:	2200      	movs	r2, #0
 8000f8a:	f803 2f01 	strb.w	r2, [r3, #1]!
 8000f8e:	42bb      	cmp	r3, r7
 8000f90:	d1fa      	bne.n	8000f88 <rgb_i2cRead+0x10>
 8000f92:	f7ff ff61 	bl	8000e58 <RGBSetLowSCL>
 8000f96:	f7ff ff33 	bl	8000e00 <RGBSetHighSDA>
 8000f9a:	2508      	movs	r5, #8
 8000f9c:	4633      	mov	r3, r6
 8000f9e:	f813 2f01 	ldrb.w	r2, [r3, #1]!
 8000fa2:	0052      	lsls	r2, r2, #1
 8000fa4:	42bb      	cmp	r3, r7
 8000fa6:	701a      	strb	r2, [r3, #0]
 8000fa8:	d1f9      	bne.n	8000f9e <rgb_i2cRead+0x26>
 8000faa:	f7ff ff5c 	bl	8000e66 <RGBSetHighSCL>
 8000fae:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000fb2:	8a1b      	ldrh	r3, [r3, #16]
 8000fb4:	b29b      	uxth	r3, r3
 8000fb6:	07d9      	lsls	r1, r3, #31
 8000fb8:	bf42      	ittt	mi
 8000fba:	7822      	ldrbmi	r2, [r4, #0]
 8000fbc:	f042 0201 	orrmi.w	r2, r2, #1
 8000fc0:	7022      	strbmi	r2, [r4, #0]
 8000fc2:	079a      	lsls	r2, r3, #30
 8000fc4:	bf42      	ittt	mi
 8000fc6:	7862      	ldrbmi	r2, [r4, #1]
 8000fc8:	f042 0201 	orrmi.w	r2, r2, #1
 8000fcc:	7062      	strbmi	r2, [r4, #1]
 8000fce:	0758      	lsls	r0, r3, #29
 8000fd0:	bf42      	ittt	mi
 8000fd2:	78a2      	ldrbmi	r2, [r4, #2]
 8000fd4:	f042 0201 	orrmi.w	r2, r2, #1
 8000fd8:	70a2      	strbmi	r2, [r4, #2]
 8000fda:	0719      	lsls	r1, r3, #28
 8000fdc:	bf42      	ittt	mi
 8000fde:	78e2      	ldrbmi	r2, [r4, #3]
 8000fe0:	f042 0201 	orrmi.w	r2, r2, #1
 8000fe4:	70e2      	strbmi	r2, [r4, #3]
 8000fe6:	06da      	lsls	r2, r3, #27
 8000fe8:	bf42      	ittt	mi
 8000fea:	7922      	ldrbmi	r2, [r4, #4]
 8000fec:	f042 0201 	orrmi.w	r2, r2, #1
 8000ff0:	7122      	strbmi	r2, [r4, #4]
 8000ff2:	0698      	lsls	r0, r3, #26
 8000ff4:	bf42      	ittt	mi
 8000ff6:	7962      	ldrbmi	r2, [r4, #5]
 8000ff8:	f042 0201 	orrmi.w	r2, r2, #1
 8000ffc:	7162      	strbmi	r2, [r4, #5]
 8000ffe:	0659      	lsls	r1, r3, #25
 8001000:	bf42      	ittt	mi
 8001002:	79a2      	ldrbmi	r2, [r4, #6]
 8001004:	f042 0201 	orrmi.w	r2, r2, #1
 8001008:	71a2      	strbmi	r2, [r4, #6]
 800100a:	061a      	lsls	r2, r3, #24
 800100c:	bf42      	ittt	mi
 800100e:	79e3      	ldrbmi	r3, [r4, #7]
 8001010:	f043 0301 	orrmi.w	r3, r3, #1
 8001014:	71e3      	strbmi	r3, [r4, #7]
 8001016:	4b0c      	ldr	r3, [pc, #48]	; (8001048 <rgb_i2cRead+0xd0>)
 8001018:	8a1b      	ldrh	r3, [r3, #16]
 800101a:	07db      	lsls	r3, r3, #31
 800101c:	bf42      	ittt	mi
 800101e:	7a23      	ldrbmi	r3, [r4, #8]
 8001020:	f043 0301 	orrmi.w	r3, r3, #1
 8001024:	7223      	strbmi	r3, [r4, #8]
 8001026:	f7ff ff17 	bl	8000e58 <RGBSetLowSCL>
 800102a:	3d01      	subs	r5, #1
 800102c:	d1b6      	bne.n	8000f9c <rgb_i2cRead+0x24>
 800102e:	f1b8 0f00 	cmp.w	r8, #0
 8001032:	d001      	beq.n	8001038 <rgb_i2cRead+0xc0>
 8001034:	f7ff feb4 	bl	8000da0 <RGBSetLowSDA>
 8001038:	f7ff ff15 	bl	8000e66 <RGBSetHighSCL>
 800103c:	f7ff ff0c 	bl	8000e58 <RGBSetLowSCL>
 8001040:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8001044:	f7ff beaa 	b.w	8000d9c <rgb_i2c_delay>
 8001048:	48000400 	.word	0x48000400

0800104c <rgb_i2c_write_reg>:
 800104c:	b570      	push	{r4, r5, r6, lr}
 800104e:	4606      	mov	r6, r0
 8001050:	460d      	mov	r5, r1
 8001052:	4614      	mov	r4, r2
 8001054:	f7ff ff52 	bl	8000efc <rgb_i2cStart>
 8001058:	4630      	mov	r0, r6
 800105a:	f7ff ff6d 	bl	8000f38 <rgb_i2cWrite>
 800105e:	4628      	mov	r0, r5
 8001060:	f7ff ff6a 	bl	8000f38 <rgb_i2cWrite>
 8001064:	4620      	mov	r0, r4
 8001066:	f7ff ff67 	bl	8000f38 <rgb_i2cWrite>
 800106a:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 800106e:	f7ff bf54 	b.w	8000f1a <rgb_i2cStop>

08001072 <rgb_i2c_read_reg>:
 8001072:	b570      	push	{r4, r5, r6, lr}
 8001074:	4604      	mov	r4, r0
 8001076:	460e      	mov	r6, r1
 8001078:	4615      	mov	r5, r2
 800107a:	f7ff ff3f 	bl	8000efc <rgb_i2cStart>
 800107e:	4620      	mov	r0, r4
 8001080:	f7ff ff5a 	bl	8000f38 <rgb_i2cWrite>
 8001084:	4630      	mov	r0, r6
 8001086:	f7ff ff57 	bl	8000f38 <rgb_i2cWrite>
 800108a:	f7ff ff37 	bl	8000efc <rgb_i2cStart>
 800108e:	f044 0001 	orr.w	r0, r4, #1
 8001092:	f7ff ff51 	bl	8000f38 <rgb_i2cWrite>
 8001096:	4629      	mov	r1, r5
 8001098:	2000      	movs	r0, #0
 800109a:	f7ff ff6d 	bl	8000f78 <rgb_i2cRead>
 800109e:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 80010a2:	f7ff bf3a 	b.w	8000f1a <rgb_i2cStop>
	...

080010a8 <rgb_init>:
 80010a8:	b570      	push	{r4, r5, r6, lr}
 80010aa:	4b1e      	ldr	r3, [pc, #120]	; (8001124 <rgb_init+0x7c>)
 80010ac:	2200      	movs	r2, #0
 80010ae:	3201      	adds	r2, #1
 80010b0:	2400      	movs	r4, #0
 80010b2:	2a09      	cmp	r2, #9
 80010b4:	801c      	strh	r4, [r3, #0]
 80010b6:	825c      	strh	r4, [r3, #18]
 80010b8:	849c      	strh	r4, [r3, #36]	; 0x24
 80010ba:	f8a3 4048 	strh.w	r4, [r3, #72]	; 0x48
 80010be:	86dc      	strh	r4, [r3, #54]	; 0x36
 80010c0:	f103 0302 	add.w	r3, r3, #2
 80010c4:	d1f3      	bne.n	80010ae <rgb_init+0x6>
 80010c6:	4d18      	ldr	r5, [pc, #96]	; (8001128 <rgb_init+0x80>)
 80010c8:	f64f 76ff 	movw	r6, #65535	; 0xffff
 80010cc:	802e      	strh	r6, [r5, #0]
 80010ce:	f7ff fed1 	bl	8000e74 <rgb_i2c_init>
 80010d2:	2072      	movs	r0, #114	; 0x72
 80010d4:	2181      	movs	r1, #129	; 0x81
 80010d6:	22ff      	movs	r2, #255	; 0xff
 80010d8:	f7ff ffb8 	bl	800104c <rgb_i2c_write_reg>
 80010dc:	2072      	movs	r0, #114	; 0x72
 80010de:	2183      	movs	r1, #131	; 0x83
 80010e0:	22ff      	movs	r2, #255	; 0xff
 80010e2:	f7ff ffb3 	bl	800104c <rgb_i2c_write_reg>
 80010e6:	2072      	movs	r0, #114	; 0x72
 80010e8:	218d      	movs	r1, #141	; 0x8d
 80010ea:	4622      	mov	r2, r4
 80010ec:	f7ff ffae 	bl	800104c <rgb_i2c_write_reg>
 80010f0:	2072      	movs	r0, #114	; 0x72
 80010f2:	2180      	movs	r1, #128	; 0x80
 80010f4:	2203      	movs	r2, #3
 80010f6:	f7ff ffa9 	bl	800104c <rgb_i2c_write_reg>
 80010fa:	2072      	movs	r0, #114	; 0x72
 80010fc:	218f      	movs	r1, #143	; 0x8f
 80010fe:	2223      	movs	r2, #35	; 0x23
 8001100:	f7ff ffa4 	bl	800104c <rgb_i2c_write_reg>
 8001104:	f7ff fe7c 	bl	8000e00 <RGBSetHighSDA>
 8001108:	2072      	movs	r0, #114	; 0x72
 800110a:	2180      	movs	r1, #128	; 0x80
 800110c:	2207      	movs	r2, #7
 800110e:	802c      	strh	r4, [r5, #0]
 8001110:	f7ff ff9c 	bl	800104c <rgb_i2c_write_reg>
 8001114:	2072      	movs	r0, #114	; 0x72
 8001116:	218e      	movs	r1, #142	; 0x8e
 8001118:	2208      	movs	r2, #8
 800111a:	f7ff ff97 	bl	800104c <rgb_i2c_write_reg>
 800111e:	802e      	strh	r6, [r5, #0]
 8001120:	bd70      	pop	{r4, r5, r6, pc}
 8001122:	bf00      	nop
 8001124:	2000017e 	.word	0x2000017e
 8001128:	20000e30 	.word	0x20000e30

0800112c <rgb_read>:
 800112c:	b538      	push	{r3, r4, r5, lr}
 800112e:	f7ff fee5 	bl	8000efc <rgb_i2cStart>
 8001132:	2072      	movs	r0, #114	; 0x72
 8001134:	f7ff ff00 	bl	8000f38 <rgb_i2cWrite>
 8001138:	20b4      	movs	r0, #180	; 0xb4
 800113a:	f7ff fefd 	bl	8000f38 <rgb_i2cWrite>
 800113e:	4d48      	ldr	r5, [pc, #288]	; (8001260 <rgb_read+0x134>)
 8001140:	f7ff fedc 	bl	8000efc <rgb_i2cStart>
 8001144:	2073      	movs	r0, #115	; 0x73
 8001146:	f7ff fef7 	bl	8000f38 <rgb_i2cWrite>
 800114a:	2001      	movs	r0, #1
 800114c:	4945      	ldr	r1, [pc, #276]	; (8001264 <rgb_read+0x138>)
 800114e:	f7ff ff13 	bl	8000f78 <rgb_i2cRead>
 8001152:	462a      	mov	r2, r5
 8001154:	2300      	movs	r3, #0
 8001156:	4c43      	ldr	r4, [pc, #268]	; (8001264 <rgb_read+0x138>)
 8001158:	5d19      	ldrb	r1, [r3, r4]
 800115a:	f822 1f02 	strh.w	r1, [r2, #2]!
 800115e:	3301      	adds	r3, #1
 8001160:	2b09      	cmp	r3, #9
 8001162:	d1f8      	bne.n	8001156 <rgb_read+0x2a>
 8001164:	2001      	movs	r0, #1
 8001166:	4621      	mov	r1, r4
 8001168:	f7ff ff06 	bl	8000f78 <rgb_i2cRead>
 800116c:	2300      	movs	r3, #0
 800116e:	5ce1      	ldrb	r1, [r4, r3]
 8001170:	f835 2f02 	ldrh.w	r2, [r5, #2]!
 8001174:	3301      	adds	r3, #1
 8001176:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
 800117a:	2b09      	cmp	r3, #9
 800117c:	802a      	strh	r2, [r5, #0]
 800117e:	d1f6      	bne.n	800116e <rgb_read+0x42>
 8001180:	2001      	movs	r0, #1
 8001182:	4938      	ldr	r1, [pc, #224]	; (8001264 <rgb_read+0x138>)
 8001184:	f7ff fef8 	bl	8000f78 <rgb_i2cRead>
 8001188:	2300      	movs	r3, #0
 800118a:	4d37      	ldr	r5, [pc, #220]	; (8001268 <rgb_read+0x13c>)
 800118c:	5ce2      	ldrb	r2, [r4, r3]
 800118e:	f825 2013 	strh.w	r2, [r5, r3, lsl #1]
 8001192:	3301      	adds	r3, #1
 8001194:	2b09      	cmp	r3, #9
 8001196:	d1f8      	bne.n	800118a <rgb_read+0x5e>
 8001198:	2001      	movs	r0, #1
 800119a:	4932      	ldr	r1, [pc, #200]	; (8001264 <rgb_read+0x138>)
 800119c:	f7ff feec 	bl	8000f78 <rgb_i2cRead>
 80011a0:	2300      	movs	r3, #0
 80011a2:	f835 2013 	ldrh.w	r2, [r5, r3, lsl #1]
 80011a6:	5ce1      	ldrb	r1, [r4, r3]
 80011a8:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
 80011ac:	f825 2013 	strh.w	r2, [r5, r3, lsl #1]
 80011b0:	3301      	adds	r3, #1
 80011b2:	2b09      	cmp	r3, #9
 80011b4:	d1f5      	bne.n	80011a2 <rgb_read+0x76>
 80011b6:	4d2d      	ldr	r5, [pc, #180]	; (800126c <rgb_read+0x140>)
 80011b8:	492a      	ldr	r1, [pc, #168]	; (8001264 <rgb_read+0x138>)
 80011ba:	2001      	movs	r0, #1
 80011bc:	f7ff fedc 	bl	8000f78 <rgb_i2cRead>
 80011c0:	462a      	mov	r2, r5
 80011c2:	2300      	movs	r3, #0
 80011c4:	5ce1      	ldrb	r1, [r4, r3]
 80011c6:	f822 1f02 	strh.w	r1, [r2, #2]!
 80011ca:	3301      	adds	r3, #1
 80011cc:	2b09      	cmp	r3, #9
 80011ce:	d1f9      	bne.n	80011c4 <rgb_read+0x98>
 80011d0:	2001      	movs	r0, #1
 80011d2:	4924      	ldr	r1, [pc, #144]	; (8001264 <rgb_read+0x138>)
 80011d4:	f7ff fed0 	bl	8000f78 <rgb_i2cRead>
 80011d8:	2300      	movs	r3, #0
 80011da:	5ce1      	ldrb	r1, [r4, r3]
 80011dc:	f835 2f02 	ldrh.w	r2, [r5, #2]!
 80011e0:	3301      	adds	r3, #1
 80011e2:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
 80011e6:	2b09      	cmp	r3, #9
 80011e8:	802a      	strh	r2, [r5, #0]
 80011ea:	d1f6      	bne.n	80011da <rgb_read+0xae>
 80011ec:	4d20      	ldr	r5, [pc, #128]	; (8001270 <rgb_read+0x144>)
 80011ee:	491d      	ldr	r1, [pc, #116]	; (8001264 <rgb_read+0x138>)
 80011f0:	2001      	movs	r0, #1
 80011f2:	f7ff fec1 	bl	8000f78 <rgb_i2cRead>
 80011f6:	462a      	mov	r2, r5
 80011f8:	2300      	movs	r3, #0
 80011fa:	5ce1      	ldrb	r1, [r4, r3]
 80011fc:	f822 1f02 	strh.w	r1, [r2, #2]!
 8001200:	3301      	adds	r3, #1
 8001202:	2b09      	cmp	r3, #9
 8001204:	d1f9      	bne.n	80011fa <rgb_read+0xce>
 8001206:	2001      	movs	r0, #1
 8001208:	4916      	ldr	r1, [pc, #88]	; (8001264 <rgb_read+0x138>)
 800120a:	f7ff feb5 	bl	8000f78 <rgb_i2cRead>
 800120e:	2300      	movs	r3, #0
 8001210:	5ce1      	ldrb	r1, [r4, r3]
 8001212:	f835 2f02 	ldrh.w	r2, [r5, #2]!
 8001216:	3301      	adds	r3, #1
 8001218:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
 800121c:	2b09      	cmp	r3, #9
 800121e:	802a      	strh	r2, [r5, #0]
 8001220:	d1f6      	bne.n	8001210 <rgb_read+0xe4>
 8001222:	4d14      	ldr	r5, [pc, #80]	; (8001274 <rgb_read+0x148>)
 8001224:	490f      	ldr	r1, [pc, #60]	; (8001264 <rgb_read+0x138>)
 8001226:	2001      	movs	r0, #1
 8001228:	f7ff fea6 	bl	8000f78 <rgb_i2cRead>
 800122c:	462a      	mov	r2, r5
 800122e:	2300      	movs	r3, #0
 8001230:	5ce1      	ldrb	r1, [r4, r3]
 8001232:	f822 1f02 	strh.w	r1, [r2, #2]!
 8001236:	3301      	adds	r3, #1
 8001238:	2b09      	cmp	r3, #9
 800123a:	d1f9      	bne.n	8001230 <rgb_read+0x104>
 800123c:	2000      	movs	r0, #0
 800123e:	4909      	ldr	r1, [pc, #36]	; (8001264 <rgb_read+0x138>)
 8001240:	f7ff fe9a 	bl	8000f78 <rgb_i2cRead>
 8001244:	2300      	movs	r3, #0
 8001246:	5ce1      	ldrb	r1, [r4, r3]
 8001248:	f835 2f02 	ldrh.w	r2, [r5, #2]!
 800124c:	3301      	adds	r3, #1
 800124e:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
 8001252:	2b09      	cmp	r3, #9
 8001254:	802a      	strh	r2, [r5, #0]
 8001256:	d1f6      	bne.n	8001246 <rgb_read+0x11a>
 8001258:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 800125c:	f7ff be5d 	b.w	8000f1a <rgb_i2cStop>
 8001260:	200001b2 	.word	0x200001b2
 8001264:	20000e32 	.word	0x20000e32
 8001268:	2000017e 	.word	0x2000017e
 800126c:	2000018e 	.word	0x2000018e
 8001270:	200001a0 	.word	0x200001a0
 8001274:	200001c4 	.word	0x200001c4

08001278 <lsm9ds0_read>:
 8001278:	b538      	push	{r3, r4, r5, lr}
 800127a:	2128      	movs	r1, #40	; 0x28
 800127c:	20d4      	movs	r0, #212	; 0xd4
 800127e:	f000 fb08 	bl	8001892 <i2c_read_reg>
 8001282:	2129      	movs	r1, #41	; 0x29
 8001284:	4605      	mov	r5, r0
 8001286:	20d4      	movs	r0, #212	; 0xd4
 8001288:	f000 fb03 	bl	8001892 <i2c_read_reg>
 800128c:	4c38      	ldr	r4, [pc, #224]	; (8001370 <lsm9ds0_read+0xf8>)
 800128e:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8001292:	81a0      	strh	r0, [r4, #12]
 8001294:	212a      	movs	r1, #42	; 0x2a
 8001296:	20d4      	movs	r0, #212	; 0xd4
 8001298:	f000 fafb 	bl	8001892 <i2c_read_reg>
 800129c:	212b      	movs	r1, #43	; 0x2b
 800129e:	4605      	mov	r5, r0
 80012a0:	20d4      	movs	r0, #212	; 0xd4
 80012a2:	f000 faf6 	bl	8001892 <i2c_read_reg>
 80012a6:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 80012aa:	81e0      	strh	r0, [r4, #14]
 80012ac:	212c      	movs	r1, #44	; 0x2c
 80012ae:	20d4      	movs	r0, #212	; 0xd4
 80012b0:	f000 faef 	bl	8001892 <i2c_read_reg>
 80012b4:	212d      	movs	r1, #45	; 0x2d
 80012b6:	4605      	mov	r5, r0
 80012b8:	20d4      	movs	r0, #212	; 0xd4
 80012ba:	f000 faea 	bl	8001892 <i2c_read_reg>
 80012be:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 80012c2:	8220      	strh	r0, [r4, #16]
 80012c4:	2108      	movs	r1, #8
 80012c6:	203c      	movs	r0, #60	; 0x3c
 80012c8:	f000 fae3 	bl	8001892 <i2c_read_reg>
 80012cc:	2109      	movs	r1, #9
 80012ce:	4605      	mov	r5, r0
 80012d0:	203c      	movs	r0, #60	; 0x3c
 80012d2:	f000 fade 	bl	8001892 <i2c_read_reg>
 80012d6:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 80012da:	80e0      	strh	r0, [r4, #6]
 80012dc:	210a      	movs	r1, #10
 80012de:	203c      	movs	r0, #60	; 0x3c
 80012e0:	f000 fad7 	bl	8001892 <i2c_read_reg>
 80012e4:	210b      	movs	r1, #11
 80012e6:	4605      	mov	r5, r0
 80012e8:	203c      	movs	r0, #60	; 0x3c
 80012ea:	f000 fad2 	bl	8001892 <i2c_read_reg>
 80012ee:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 80012f2:	8120      	strh	r0, [r4, #8]
 80012f4:	210c      	movs	r1, #12
 80012f6:	203c      	movs	r0, #60	; 0x3c
 80012f8:	f000 facb 	bl	8001892 <i2c_read_reg>
 80012fc:	210d      	movs	r1, #13
 80012fe:	4605      	mov	r5, r0
 8001300:	203c      	movs	r0, #60	; 0x3c
 8001302:	f000 fac6 	bl	8001892 <i2c_read_reg>
 8001306:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 800130a:	8160      	strh	r0, [r4, #10]
 800130c:	2128      	movs	r1, #40	; 0x28
 800130e:	203c      	movs	r0, #60	; 0x3c
 8001310:	f000 fabf 	bl	8001892 <i2c_read_reg>
 8001314:	2129      	movs	r1, #41	; 0x29
 8001316:	4605      	mov	r5, r0
 8001318:	203c      	movs	r0, #60	; 0x3c
 800131a:	f000 faba 	bl	8001892 <i2c_read_reg>
 800131e:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8001322:	8020      	strh	r0, [r4, #0]
 8001324:	212a      	movs	r1, #42	; 0x2a
 8001326:	203c      	movs	r0, #60	; 0x3c
 8001328:	f000 fab3 	bl	8001892 <i2c_read_reg>
 800132c:	212b      	movs	r1, #43	; 0x2b
 800132e:	4605      	mov	r5, r0
 8001330:	203c      	movs	r0, #60	; 0x3c
 8001332:	f000 faae 	bl	8001892 <i2c_read_reg>
 8001336:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 800133a:	8060      	strh	r0, [r4, #2]
 800133c:	212c      	movs	r1, #44	; 0x2c
 800133e:	203c      	movs	r0, #60	; 0x3c
 8001340:	f000 faa7 	bl	8001892 <i2c_read_reg>
 8001344:	212d      	movs	r1, #45	; 0x2d
 8001346:	4605      	mov	r5, r0
 8001348:	203c      	movs	r0, #60	; 0x3c
 800134a:	f000 faa2 	bl	8001892 <i2c_read_reg>
 800134e:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8001352:	80a0      	strh	r0, [r4, #4]
 8001354:	2105      	movs	r1, #5
 8001356:	203c      	movs	r0, #60	; 0x3c
 8001358:	f000 fa9b 	bl	8001892 <i2c_read_reg>
 800135c:	2106      	movs	r1, #6
 800135e:	4605      	mov	r5, r0
 8001360:	203c      	movs	r0, #60	; 0x3c
 8001362:	f000 fa96 	bl	8001892 <i2c_read_reg>
 8001366:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 800136a:	8320      	strh	r0, [r4, #24]
 800136c:	bd38      	pop	{r3, r4, r5, pc}
 800136e:	bf00      	nop
 8001370:	20000164 	.word	0x20000164

08001374 <lsm9ds0_init>:
 8001374:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8001378:	4d34      	ldr	r5, [pc, #208]	; (800144c <lsm9ds0_init+0xd8>)
 800137a:	2400      	movs	r4, #0
 800137c:	20d4      	movs	r0, #212	; 0xd4
 800137e:	210f      	movs	r1, #15
 8001380:	802c      	strh	r4, [r5, #0]
 8001382:	806c      	strh	r4, [r5, #2]
 8001384:	80ac      	strh	r4, [r5, #4]
 8001386:	80ec      	strh	r4, [r5, #6]
 8001388:	812c      	strh	r4, [r5, #8]
 800138a:	816c      	strh	r4, [r5, #10]
 800138c:	81ac      	strh	r4, [r5, #12]
 800138e:	81ec      	strh	r4, [r5, #14]
 8001390:	822c      	strh	r4, [r5, #16]
 8001392:	826c      	strh	r4, [r5, #18]
 8001394:	82ac      	strh	r4, [r5, #20]
 8001396:	82ec      	strh	r4, [r5, #22]
 8001398:	832c      	strh	r4, [r5, #24]
 800139a:	f000 fa7a 	bl	8001892 <i2c_read_reg>
 800139e:	28d4      	cmp	r0, #212	; 0xd4
 80013a0:	4606      	mov	r6, r0
 80013a2:	d14c      	bne.n	800143e <lsm9ds0_init+0xca>
 80013a4:	203c      	movs	r0, #60	; 0x3c
 80013a6:	210f      	movs	r1, #15
 80013a8:	f000 fa73 	bl	8001892 <i2c_read_reg>
 80013ac:	2849      	cmp	r0, #73	; 0x49
 80013ae:	d148      	bne.n	8001442 <lsm9ds0_init+0xce>
 80013b0:	4630      	mov	r0, r6
 80013b2:	2120      	movs	r1, #32
 80013b4:	22ff      	movs	r2, #255	; 0xff
 80013b6:	f000 fa59 	bl	800186c <i2c_write_reg>
 80013ba:	4630      	mov	r0, r6
 80013bc:	2123      	movs	r1, #35	; 0x23
 80013be:	2218      	movs	r2, #24
 80013c0:	f000 fa54 	bl	800186c <i2c_write_reg>
 80013c4:	203c      	movs	r0, #60	; 0x3c
 80013c6:	211f      	movs	r1, #31
 80013c8:	4622      	mov	r2, r4
 80013ca:	f000 fa4f 	bl	800186c <i2c_write_reg>
 80013ce:	203c      	movs	r0, #60	; 0x3c
 80013d0:	2120      	movs	r1, #32
 80013d2:	2267      	movs	r2, #103	; 0x67
 80013d4:	f000 fa4a 	bl	800186c <i2c_write_reg>
 80013d8:	203c      	movs	r0, #60	; 0x3c
 80013da:	2121      	movs	r1, #33	; 0x21
 80013dc:	4622      	mov	r2, r4
 80013de:	f000 fa45 	bl	800186c <i2c_write_reg>
 80013e2:	203c      	movs	r0, #60	; 0x3c
 80013e4:	2124      	movs	r1, #36	; 0x24
 80013e6:	22f4      	movs	r2, #244	; 0xf4
 80013e8:	f000 fa40 	bl	800186c <i2c_write_reg>
 80013ec:	203c      	movs	r0, #60	; 0x3c
 80013ee:	2125      	movs	r1, #37	; 0x25
 80013f0:	4622      	mov	r2, r4
 80013f2:	f000 fa3b 	bl	800186c <i2c_write_reg>
 80013f6:	203c      	movs	r0, #60	; 0x3c
 80013f8:	2126      	movs	r1, #38	; 0x26
 80013fa:	2280      	movs	r2, #128	; 0x80
 80013fc:	f000 fa36 	bl	800186c <i2c_write_reg>
 8001400:	f7ff ff3a 	bl	8001278 <lsm9ds0_read>
 8001404:	2664      	movs	r6, #100	; 0x64
 8001406:	4627      	mov	r7, r4
 8001408:	46a0      	mov	r8, r4
 800140a:	f7ff ff35 	bl	8001278 <lsm9ds0_read>
 800140e:	f9b5 200c 	ldrsh.w	r2, [r5, #12]
 8001412:	4b0e      	ldr	r3, [pc, #56]	; (800144c <lsm9ds0_init+0xd8>)
 8001414:	4490      	add	r8, r2
 8001416:	f9b5 200e 	ldrsh.w	r2, [r5, #14]
 800141a:	4417      	add	r7, r2
 800141c:	f9b5 2010 	ldrsh.w	r2, [r5, #16]
 8001420:	3e01      	subs	r6, #1
 8001422:	4414      	add	r4, r2
 8001424:	d1f1      	bne.n	800140a <lsm9ds0_init+0x96>
 8001426:	2264      	movs	r2, #100	; 0x64
 8001428:	fb98 f8f2 	sdiv	r8, r8, r2
 800142c:	fb97 f7f2 	sdiv	r7, r7, r2
 8001430:	fb94 f4f2 	sdiv	r4, r4, r2
 8001434:	f8a3 8012 	strh.w	r8, [r3, #18]
 8001438:	829f      	strh	r7, [r3, #20]
 800143a:	82dc      	strh	r4, [r3, #22]
 800143c:	e002      	b.n	8001444 <lsm9ds0_init+0xd0>
 800143e:	2601      	movs	r6, #1
 8001440:	e000      	b.n	8001444 <lsm9ds0_init+0xd0>
 8001442:	2602      	movs	r6, #2
 8001444:	4630      	mov	r0, r6
 8001446:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800144a:	bf00      	nop
 800144c:	20000164 	.word	0x20000164

08001450 <line_sensor_init>:
 8001450:	b538      	push	{r3, r4, r5, lr}
 8001452:	f7ff fe29 	bl	80010a8 <rgb_init>
 8001456:	f7ff fe69 	bl	800112c <rgb_read>
 800145a:	2072      	movs	r0, #114	; 0x72
 800145c:	4a12      	ldr	r2, [pc, #72]	; (80014a8 <line_sensor_init+0x58>)
 800145e:	2192      	movs	r1, #146	; 0x92
 8001460:	f7ff fe07 	bl	8001072 <rgb_i2c_read_reg>
 8001464:	2000      	movs	r0, #0
 8001466:	4602      	mov	r2, r0
 8001468:	4b10      	ldr	r3, [pc, #64]	; (80014ac <line_sensor_init+0x5c>)
 800146a:	18d1      	adds	r1, r2, r3
 800146c:	7849      	ldrb	r1, [r1, #1]
 800146e:	2969      	cmp	r1, #105	; 0x69
 8001470:	bf1c      	itt	ne
 8001472:	2101      	movne	r1, #1
 8001474:	4091      	lslne	r1, r2
 8001476:	f102 0201 	add.w	r2, r2, #1
 800147a:	bf18      	it	ne
 800147c:	4308      	orrne	r0, r1
 800147e:	2a09      	cmp	r2, #9
 8001480:	d1f2      	bne.n	8001468 <line_sensor_init+0x18>
 8001482:	490b      	ldr	r1, [pc, #44]	; (80014b0 <line_sensor_init+0x60>)
 8001484:	2200      	movs	r2, #0
 8001486:	701a      	strb	r2, [r3, #0]
 8001488:	f101 0512 	add.w	r5, r1, #18
 800148c:	2200      	movs	r2, #0
 800148e:	f821 2f02 	strh.w	r2, [r1, #2]!
 8001492:	42a9      	cmp	r1, r5
 8001494:	824a      	strh	r2, [r1, #18]
 8001496:	848a      	strh	r2, [r1, #36]	; 0x24
 8001498:	d1f8      	bne.n	800148c <line_sensor_init+0x3c>
 800149a:	f883 2040 	strb.w	r2, [r3, #64]	; 0x40
 800149e:	f883 204c 	strb.w	r2, [r3, #76]	; 0x4c
 80014a2:	645a      	str	r2, [r3, #68]	; 0x44
 80014a4:	649a      	str	r2, [r3, #72]	; 0x48
 80014a6:	bd38      	pop	{r3, r4, r5, pc}
 80014a8:	200001d9 	.word	0x200001d9
 80014ac:	200001d8 	.word	0x200001d8
 80014b0:	200001e0 	.word	0x200001e0

080014b4 <line_sensor_filter>:
 80014b4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80014b6:	4b5a      	ldr	r3, [pc, #360]	; (8001620 <line_sensor_filter+0x16c>)
 80014b8:	f103 0112 	add.w	r1, r3, #18
 80014bc:	f933 2f02 	ldrsh.w	r2, [r3, #2]!
 80014c0:	f933 0c12 	ldrsh.w	r0, [r3, #-18]
 80014c4:	428b      	cmp	r3, r1
 80014c6:	eba2 0200 	sub.w	r2, r2, r0
 80014ca:	825a      	strh	r2, [r3, #18]
 80014cc:	d1f6      	bne.n	80014bc <line_sensor_filter+0x8>
 80014ce:	4955      	ldr	r1, [pc, #340]	; (8001624 <line_sensor_filter+0x170>)
 80014d0:	4a55      	ldr	r2, [pc, #340]	; (8001628 <line_sensor_filter+0x174>)
 80014d2:	6c8b      	ldr	r3, [r1, #72]	; 0x48
 80014d4:	f9b2 2058 	ldrsh.w	r2, [r2, #88]	; 0x58
 80014d8:	f9b1 002e 	ldrsh.w	r0, [r1, #46]	; 0x2e
 80014dc:	f9b1 4036 	ldrsh.w	r4, [r1, #54]	; 0x36
 80014e0:	4d50      	ldr	r5, [pc, #320]	; (8001624 <line_sensor_filter+0x170>)
 80014e2:	ebc3 03c3 	rsb	r3, r3, r3, lsl #3
 80014e6:	4413      	add	r3, r2
 80014e8:	2208      	movs	r2, #8
 80014ea:	fb93 f3f2 	sdiv	r3, r3, r2
 80014ee:	f9b1 2034 	ldrsh.w	r2, [r1, #52]	; 0x34
 80014f2:	648b      	str	r3, [r1, #72]	; 0x48
 80014f4:	f112 0fc8 	cmn.w	r2, #200	; 0xc8
 80014f8:	bfaa      	itet	ge
 80014fa:	4602      	movge	r2, r0
 80014fc:	2303      	movlt	r3, #3
 80014fe:	2300      	movge	r3, #0
 8001500:	f114 0fc9 	cmn.w	r4, #201	; 0xc9
 8001504:	bfd8      	it	le
 8001506:	4622      	movle	r2, r4
 8001508:	f9b1 4032 	ldrsh.w	r4, [r1, #50]	; 0x32
 800150c:	bfd8      	it	le
 800150e:	2304      	movle	r3, #4
 8001510:	f114 0fc9 	cmn.w	r4, #201	; 0xc9
 8001514:	bfd8      	it	le
 8001516:	4622      	movle	r2, r4
 8001518:	f9b1 4038 	ldrsh.w	r4, [r1, #56]	; 0x38
 800151c:	bfd8      	it	le
 800151e:	2302      	movle	r3, #2
 8001520:	f114 0fc9 	cmn.w	r4, #201	; 0xc9
 8001524:	bfd8      	it	le
 8001526:	4622      	movle	r2, r4
 8001528:	f9b1 4030 	ldrsh.w	r4, [r1, #48]	; 0x30
 800152c:	bfd8      	it	le
 800152e:	2305      	movle	r3, #5
 8001530:	f114 0fc9 	cmn.w	r4, #201	; 0xc9
 8001534:	bfd8      	it	le
 8001536:	4622      	movle	r2, r4
 8001538:	f9b1 403a 	ldrsh.w	r4, [r1, #58]	; 0x3a
 800153c:	bfd8      	it	le
 800153e:	2301      	movle	r3, #1
 8001540:	f114 0fc9 	cmn.w	r4, #201	; 0xc9
 8001544:	bfdc      	itt	le
 8001546:	4622      	movle	r2, r4
 8001548:	2306      	movle	r3, #6
 800154a:	f110 0fc9 	cmn.w	r0, #201	; 0xc9
 800154e:	bfd8      	it	le
 8001550:	4602      	movle	r2, r0
 8001552:	f9b1 003c 	ldrsh.w	r0, [r1, #60]	; 0x3c
 8001556:	bfd8      	it	le
 8001558:	2300      	movle	r3, #0
 800155a:	30c8      	adds	r0, #200	; 0xc8
 800155c:	db30      	blt.n	80015c0 <line_sensor_filter+0x10c>
 800155e:	32c7      	adds	r2, #199	; 0xc7
 8001560:	da59      	bge.n	8001616 <line_sensor_filter+0x162>
 8001562:	2b00      	cmp	r3, #0
 8001564:	d054      	beq.n	8001610 <line_sensor_filter+0x15c>
 8001566:	eb05 0243 	add.w	r2, r5, r3, lsl #1
 800156a:	1e5e      	subs	r6, r3, #1
 800156c:	f9b2 7030 	ldrsh.w	r7, [r2, #48]	; 0x30
 8001570:	f9b2 202c 	ldrsh.w	r2, [r2, #44]	; 0x2c
 8001574:	4297      	cmp	r7, r2
 8001576:	f103 0001 	add.w	r0, r3, #1
 800157a:	bfa8      	it	ge
 800157c:	4630      	movge	r0, r6
 800157e:	ea4f 1483 	mov.w	r4, r3, lsl #6
 8001582:	eb01 0040 	add.w	r0, r1, r0, lsl #1
 8001586:	eb01 0343 	add.w	r3, r1, r3, lsl #1
 800158a:	f9b0 502e 	ldrsh.w	r5, [r0, #46]	; 0x2e
 800158e:	f9b3 302e 	ldrsh.w	r3, [r3, #46]	; 0x2e
 8001592:	ea4f 1045 	mov.w	r0, r5, lsl #5
 8001596:	442b      	add	r3, r5
 8001598:	fb90 f3f3 	sdiv	r3, r0, r3
 800159c:	f1c3 0020 	rsb	r0, r3, #32
 80015a0:	bfac      	ite	ge
 80015a2:	f1a4 0240 	subge.w	r2, r4, #64	; 0x40
 80015a6:	f104 0240 	addlt.w	r2, r4, #64	; 0x40
 80015aa:	4344      	muls	r4, r0
 80015ac:	fb03 4202 	mla	r2, r3, r2, r4
 80015b0:	2420      	movs	r4, #32
 80015b2:	fb92 f4f4 	sdiv	r4, r2, r4
 80015b6:	3cda      	subs	r4, #218	; 0xda
 80015b8:	f5b4 7f80 	cmp.w	r4, #256	; 0x100
 80015bc:	644c      	str	r4, [r1, #68]	; 0x44
 80015be:	dd24      	ble.n	800160a <line_sensor_filter+0x156>
 80015c0:	f44f 7480 	mov.w	r4, #256	; 0x100
 80015c4:	f891 3040 	ldrb.w	r3, [r1, #64]	; 0x40
 80015c8:	4d16      	ldr	r5, [pc, #88]	; (8001624 <line_sensor_filter+0x170>)
 80015ca:	2b07      	cmp	r3, #7
 80015cc:	bf9e      	ittt	ls
 80015ce:	4a15      	ldrls	r2, [pc, #84]	; (8001624 <line_sensor_filter+0x170>)
 80015d0:	3301      	addls	r3, #1
 80015d2:	f882 3040 	strbls.w	r3, [r2, #64]	; 0x40
 80015d6:	f891 3040 	ldrb.w	r3, [r1, #64]	; 0x40
 80015da:	2b08      	cmp	r3, #8
 80015dc:	d109      	bne.n	80015f2 <line_sensor_filter+0x13e>
 80015de:	f7ff fa35 	bl	8000a4c <sched_off>
 80015e2:	f895 304c 	ldrb.w	r3, [r5, #76]	; 0x4c
 80015e6:	646c      	str	r4, [r5, #68]	; 0x44
 80015e8:	f043 0303 	orr.w	r3, r3, #3
 80015ec:	f885 304c 	strb.w	r3, [r5, #76]	; 0x4c
 80015f0:	e007      	b.n	8001602 <line_sensor_filter+0x14e>
 80015f2:	f7ff fa2b 	bl	8000a4c <sched_off>
 80015f6:	f895 304c 	ldrb.w	r3, [r5, #76]	; 0x4c
 80015fa:	f023 0301 	bic.w	r3, r3, #1
 80015fe:	f885 304c 	strb.w	r3, [r5, #76]	; 0x4c
 8001602:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8001606:	f7ff ba23 	b.w	8000a50 <sched_on>
 800160a:	f514 7f80 	cmn.w	r4, #256	; 0x100
 800160e:	dad9      	bge.n	80015c4 <line_sensor_filter+0x110>
 8001610:	f06f 04ff 	mvn.w	r4, #255	; 0xff
 8001614:	e7d6      	b.n	80015c4 <line_sensor_filter+0x110>
 8001616:	2300      	movs	r3, #0
 8001618:	f885 3040 	strb.w	r3, [r5, #64]	; 0x40
 800161c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 800161e:	bf00      	nop
 8001620:	200001f2 	.word	0x200001f2
 8001624:	200001d8 	.word	0x200001d8
 8001628:	2000017e 	.word	0x2000017e

0800162c <line_sensor_read>:
 800162c:	b510      	push	{r4, lr}
 800162e:	f7ff fd7d 	bl	800112c <rgb_read>
 8001632:	4b16      	ldr	r3, [pc, #88]	; (800168c <line_sensor_read+0x60>)
 8001634:	2200      	movs	r2, #0
 8001636:	f9b3 1000 	ldrsh.w	r1, [r3]
 800163a:	4c15      	ldr	r4, [pc, #84]	; (8001690 <line_sensor_read+0x64>)
 800163c:	8ed8      	ldrh	r0, [r3, #54]	; 0x36
 800163e:	5b14      	ldrh	r4, [r2, r4]
 8001640:	f5b1 6f80 	cmp.w	r1, #1024	; 0x400
 8001644:	bfbc      	itt	lt
 8001646:	f44f 6180 	movlt.w	r1, #1024	; 0x400
 800164a:	8019      	strhlt	r1, [r3, #0]
 800164c:	f9b3 1012 	ldrsh.w	r1, [r3, #18]
 8001650:	f5b1 6f80 	cmp.w	r1, #1024	; 0x400
 8001654:	bfbc      	itt	lt
 8001656:	f44f 6180 	movlt.w	r1, #1024	; 0x400
 800165a:	8259      	strhlt	r1, [r3, #18]
 800165c:	f9b3 1024 	ldrsh.w	r1, [r3, #36]	; 0x24
 8001660:	f5b1 6f80 	cmp.w	r1, #1024	; 0x400
 8001664:	bfbc      	itt	lt
 8001666:	f44f 6180 	movlt.w	r1, #1024	; 0x400
 800166a:	8499      	strhlt	r1, [r3, #36]	; 0x24
 800166c:	4909      	ldr	r1, [pc, #36]	; (8001694 <line_sensor_read+0x68>)
 800166e:	4411      	add	r1, r2
 8001670:	1b00      	subs	r0, r0, r4
 8001672:	3202      	adds	r2, #2
 8001674:	8388      	strh	r0, [r1, #28]
 8001676:	2a10      	cmp	r2, #16
 8001678:	f44f 6080 	mov.w	r0, #1024	; 0x400
 800167c:	8148      	strh	r0, [r1, #10]
 800167e:	f103 0302 	add.w	r3, r3, #2
 8001682:	d1d8      	bne.n	8001636 <line_sensor_read+0xa>
 8001684:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8001688:	f7ff bf14 	b.w	80014b4 <line_sensor_filter>
 800168c:	2000017e 	.word	0x2000017e
 8001690:	20000100 	.word	0x20000100
 8001694:	200001d8 	.word	0x200001d8

08001698 <i2c_delay>:
 8001698:	230b      	movs	r3, #11
 800169a:	3b01      	subs	r3, #1
 800169c:	d001      	beq.n	80016a2 <i2c_delay+0xa>
 800169e:	bf00      	nop
 80016a0:	e7fb      	b.n	800169a <i2c_delay+0x2>
 80016a2:	4770      	bx	lr

080016a4 <SetLowSDA>:
 80016a4:	b537      	push	{r0, r1, r2, r4, r5, lr}
 80016a6:	4d0d      	ldr	r5, [pc, #52]	; (80016dc <SetLowSDA+0x38>)
 80016a8:	2301      	movs	r3, #1
 80016aa:	2203      	movs	r2, #3
 80016ac:	2480      	movs	r4, #128	; 0x80
 80016ae:	f88d 3004 	strb.w	r3, [sp, #4]
 80016b2:	f88d 3006 	strb.w	r3, [sp, #6]
 80016b6:	4628      	mov	r0, r5
 80016b8:	2300      	movs	r3, #0
 80016ba:	4669      	mov	r1, sp
 80016bc:	f88d 2005 	strb.w	r2, [sp, #5]
 80016c0:	f88d 3007 	strb.w	r3, [sp, #7]
 80016c4:	9400      	str	r4, [sp, #0]
 80016c6:	f000 ff14 	bl	80024f2 <GPIO_Init>
 80016ca:	4628      	mov	r0, r5
 80016cc:	4621      	mov	r1, r4
 80016ce:	f000 ff56 	bl	800257e <GPIO_ResetBits>
 80016d2:	f7ff ffe1 	bl	8001698 <i2c_delay>
 80016d6:	b003      	add	sp, #12
 80016d8:	bd30      	pop	{r4, r5, pc}
 80016da:	bf00      	nop
 80016dc:	48000400 	.word	0x48000400

080016e0 <SetHighSDA>:
 80016e0:	b537      	push	{r0, r1, r2, r4, r5, lr}
 80016e2:	4d0d      	ldr	r5, [pc, #52]	; (8001718 <SetHighSDA+0x38>)
 80016e4:	2203      	movs	r2, #3
 80016e6:	2300      	movs	r3, #0
 80016e8:	2480      	movs	r4, #128	; 0x80
 80016ea:	f88d 2005 	strb.w	r2, [sp, #5]
 80016ee:	4628      	mov	r0, r5
 80016f0:	2201      	movs	r2, #1
 80016f2:	4669      	mov	r1, sp
 80016f4:	f88d 3004 	strb.w	r3, [sp, #4]
 80016f8:	f88d 2006 	strb.w	r2, [sp, #6]
 80016fc:	f88d 3007 	strb.w	r3, [sp, #7]
 8001700:	9400      	str	r4, [sp, #0]
 8001702:	f000 fef6 	bl	80024f2 <GPIO_Init>
 8001706:	4628      	mov	r0, r5
 8001708:	4621      	mov	r1, r4
 800170a:	f000 ff34 	bl	8002576 <GPIO_SetBits>
 800170e:	f7ff ffc3 	bl	8001698 <i2c_delay>
 8001712:	b003      	add	sp, #12
 8001714:	bd30      	pop	{r4, r5, pc}
 8001716:	bf00      	nop
 8001718:	48000400 	.word	0x48000400

0800171c <SetLowSCL>:
 800171c:	b508      	push	{r3, lr}
 800171e:	4804      	ldr	r0, [pc, #16]	; (8001730 <SetLowSCL+0x14>)
 8001720:	2140      	movs	r1, #64	; 0x40
 8001722:	f000 ff2c 	bl	800257e <GPIO_ResetBits>
 8001726:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800172a:	f7ff bfb5 	b.w	8001698 <i2c_delay>
 800172e:	bf00      	nop
 8001730:	48000400 	.word	0x48000400

08001734 <SetHighSCL>:
 8001734:	b508      	push	{r3, lr}
 8001736:	4804      	ldr	r0, [pc, #16]	; (8001748 <SetHighSCL+0x14>)
 8001738:	2140      	movs	r1, #64	; 0x40
 800173a:	f000 ff1c 	bl	8002576 <GPIO_SetBits>
 800173e:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001742:	f7ff bfa9 	b.w	8001698 <i2c_delay>
 8001746:	bf00      	nop
 8001748:	48000400 	.word	0x48000400

0800174c <i2c_0_init>:
 800174c:	b507      	push	{r0, r1, r2, lr}
 800174e:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 8001752:	2101      	movs	r1, #1
 8001754:	f000 fa6c 	bl	8001c30 <RCC_AHBPeriphClockCmd>
 8001758:	23c0      	movs	r3, #192	; 0xc0
 800175a:	9300      	str	r3, [sp, #0]
 800175c:	2301      	movs	r3, #1
 800175e:	2203      	movs	r2, #3
 8001760:	480a      	ldr	r0, [pc, #40]	; (800178c <i2c_0_init+0x40>)
 8001762:	f88d 3004 	strb.w	r3, [sp, #4]
 8001766:	4669      	mov	r1, sp
 8001768:	f88d 3006 	strb.w	r3, [sp, #6]
 800176c:	2300      	movs	r3, #0
 800176e:	f88d 2005 	strb.w	r2, [sp, #5]
 8001772:	f88d 3007 	strb.w	r3, [sp, #7]
 8001776:	f000 febc 	bl	80024f2 <GPIO_Init>
 800177a:	f7ff ffdb 	bl	8001734 <SetHighSCL>
 800177e:	f7ff ff91 	bl	80016a4 <SetLowSDA>
 8001782:	f7ff ffad 	bl	80016e0 <SetHighSDA>
 8001786:	b003      	add	sp, #12
 8001788:	f85d fb04 	ldr.w	pc, [sp], #4
 800178c:	48000400 	.word	0x48000400

08001790 <i2cStart>:
 8001790:	b508      	push	{r3, lr}
 8001792:	f7ff ffcf 	bl	8001734 <SetHighSCL>
 8001796:	f7ff ffa3 	bl	80016e0 <SetHighSDA>
 800179a:	f7ff ffcb 	bl	8001734 <SetHighSCL>
 800179e:	f7ff ff81 	bl	80016a4 <SetLowSDA>
 80017a2:	f7ff ffbb 	bl	800171c <SetLowSCL>
 80017a6:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80017aa:	f7ff bf99 	b.w	80016e0 <SetHighSDA>

080017ae <i2cStop>:
 80017ae:	b508      	push	{r3, lr}
 80017b0:	f7ff ffb4 	bl	800171c <SetLowSCL>
 80017b4:	f7ff ff76 	bl	80016a4 <SetLowSDA>
 80017b8:	f7ff ffbc 	bl	8001734 <SetHighSCL>
 80017bc:	f7ff ff72 	bl	80016a4 <SetLowSDA>
 80017c0:	f7ff ffb8 	bl	8001734 <SetHighSCL>
 80017c4:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80017c8:	f7ff bf8a 	b.w	80016e0 <SetHighSDA>

080017cc <i2cWrite>:
 80017cc:	b538      	push	{r3, r4, r5, lr}
 80017ce:	4605      	mov	r5, r0
 80017d0:	2408      	movs	r4, #8
 80017d2:	f7ff ffa3 	bl	800171c <SetLowSCL>
 80017d6:	062b      	lsls	r3, r5, #24
 80017d8:	d502      	bpl.n	80017e0 <i2cWrite+0x14>
 80017da:	f7ff ff81 	bl	80016e0 <SetHighSDA>
 80017de:	e001      	b.n	80017e4 <i2cWrite+0x18>
 80017e0:	f7ff ff60 	bl	80016a4 <SetLowSDA>
 80017e4:	3c01      	subs	r4, #1
 80017e6:	f7ff ffa5 	bl	8001734 <SetHighSCL>
 80017ea:	006d      	lsls	r5, r5, #1
 80017ec:	f014 04ff 	ands.w	r4, r4, #255	; 0xff
 80017f0:	b2ed      	uxtb	r5, r5
 80017f2:	d1ee      	bne.n	80017d2 <i2cWrite+0x6>
 80017f4:	f7ff ff92 	bl	800171c <SetLowSCL>
 80017f8:	f7ff ff72 	bl	80016e0 <SetHighSDA>
 80017fc:	f7ff ff9a 	bl	8001734 <SetHighSCL>
 8001800:	4b05      	ldr	r3, [pc, #20]	; (8001818 <i2cWrite+0x4c>)
 8001802:	8a1c      	ldrh	r4, [r3, #16]
 8001804:	b2a4      	uxth	r4, r4
 8001806:	f7ff ff89 	bl	800171c <SetLowSCL>
 800180a:	f7ff ff45 	bl	8001698 <i2c_delay>
 800180e:	f084 0080 	eor.w	r0, r4, #128	; 0x80
 8001812:	f3c0 10c0 	ubfx	r0, r0, #7, #1
 8001816:	bd38      	pop	{r3, r4, r5, pc}
 8001818:	48000400 	.word	0x48000400

0800181c <i2cRead>:
 800181c:	b570      	push	{r4, r5, r6, lr}
 800181e:	4606      	mov	r6, r0
 8001820:	f7ff ff7c 	bl	800171c <SetLowSCL>
 8001824:	f7ff ff5c 	bl	80016e0 <SetHighSDA>
 8001828:	2508      	movs	r5, #8
 800182a:	2400      	movs	r4, #0
 800182c:	f7ff ff82 	bl	8001734 <SetHighSCL>
 8001830:	4b0d      	ldr	r3, [pc, #52]	; (8001868 <i2cRead+0x4c>)
 8001832:	8a1b      	ldrh	r3, [r3, #16]
 8001834:	0064      	lsls	r4, r4, #1
 8001836:	061b      	lsls	r3, r3, #24
 8001838:	b2e4      	uxtb	r4, r4
 800183a:	bf48      	it	mi
 800183c:	3401      	addmi	r4, #1
 800183e:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 8001842:	bf48      	it	mi
 8001844:	b2e4      	uxtbmi	r4, r4
 8001846:	f7ff ff69 	bl	800171c <SetLowSCL>
 800184a:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 800184e:	d1ed      	bne.n	800182c <i2cRead+0x10>
 8001850:	b10e      	cbz	r6, 8001856 <i2cRead+0x3a>
 8001852:	f7ff ff27 	bl	80016a4 <SetLowSDA>
 8001856:	f7ff ff6d 	bl	8001734 <SetHighSCL>
 800185a:	f7ff ff5f 	bl	800171c <SetLowSCL>
 800185e:	f7ff ff1b 	bl	8001698 <i2c_delay>
 8001862:	4620      	mov	r0, r4
 8001864:	bd70      	pop	{r4, r5, r6, pc}
 8001866:	bf00      	nop
 8001868:	48000400 	.word	0x48000400

0800186c <i2c_write_reg>:
 800186c:	b570      	push	{r4, r5, r6, lr}
 800186e:	4606      	mov	r6, r0
 8001870:	460d      	mov	r5, r1
 8001872:	4614      	mov	r4, r2
 8001874:	f7ff ff8c 	bl	8001790 <i2cStart>
 8001878:	4630      	mov	r0, r6
 800187a:	f7ff ffa7 	bl	80017cc <i2cWrite>
 800187e:	4628      	mov	r0, r5
 8001880:	f7ff ffa4 	bl	80017cc <i2cWrite>
 8001884:	4620      	mov	r0, r4
 8001886:	f7ff ffa1 	bl	80017cc <i2cWrite>
 800188a:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 800188e:	f7ff bf8e 	b.w	80017ae <i2cStop>

08001892 <i2c_read_reg>:
 8001892:	b538      	push	{r3, r4, r5, lr}
 8001894:	4604      	mov	r4, r0
 8001896:	460d      	mov	r5, r1
 8001898:	f7ff ff7a 	bl	8001790 <i2cStart>
 800189c:	4620      	mov	r0, r4
 800189e:	f7ff ff95 	bl	80017cc <i2cWrite>
 80018a2:	4628      	mov	r0, r5
 80018a4:	f7ff ff92 	bl	80017cc <i2cWrite>
 80018a8:	f7ff ff72 	bl	8001790 <i2cStart>
 80018ac:	f044 0001 	orr.w	r0, r4, #1
 80018b0:	f7ff ff8c 	bl	80017cc <i2cWrite>
 80018b4:	2000      	movs	r0, #0
 80018b6:	f7ff ffb1 	bl	800181c <i2cRead>
 80018ba:	4604      	mov	r4, r0
 80018bc:	f7ff ff77 	bl	80017ae <i2cStop>
 80018c0:	4620      	mov	r0, r4
 80018c2:	bd38      	pop	{r3, r4, r5, pc}

080018c4 <Default_Handler>:
 80018c4:	4668      	mov	r0, sp
 80018c6:	f020 0107 	bic.w	r1, r0, #7
 80018ca:	468d      	mov	sp, r1
 80018cc:	bf00      	nop
 80018ce:	e7fd      	b.n	80018cc <Default_Handler+0x8>

080018d0 <HardFault_Handler>:
 80018d0:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 80018d4:	f000 feba 	bl	800264c <led_on>
 80018d8:	4b06      	ldr	r3, [pc, #24]	; (80018f4 <HardFault_Handler+0x24>)
 80018da:	3b01      	subs	r3, #1
 80018dc:	d001      	beq.n	80018e2 <HardFault_Handler+0x12>
 80018de:	bf00      	nop
 80018e0:	e7fb      	b.n	80018da <HardFault_Handler+0xa>
 80018e2:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 80018e6:	f000 fec3 	bl	8002670 <led_off>
 80018ea:	4b02      	ldr	r3, [pc, #8]	; (80018f4 <HardFault_Handler+0x24>)
 80018ec:	3b01      	subs	r3, #1
 80018ee:	d0ef      	beq.n	80018d0 <HardFault_Handler>
 80018f0:	bf00      	nop
 80018f2:	e7fb      	b.n	80018ec <HardFault_Handler+0x1c>
 80018f4:	00989681 	.word	0x00989681

080018f8 <_reset_init>:
 80018f8:	490e      	ldr	r1, [pc, #56]	; (8001934 <_reset_init+0x3c>)
 80018fa:	4b0f      	ldr	r3, [pc, #60]	; (8001938 <_reset_init+0x40>)
 80018fc:	1a5b      	subs	r3, r3, r1
 80018fe:	109b      	asrs	r3, r3, #2
 8001900:	2200      	movs	r2, #0
 8001902:	429a      	cmp	r2, r3
 8001904:	d006      	beq.n	8001914 <_reset_init+0x1c>
 8001906:	480d      	ldr	r0, [pc, #52]	; (800193c <_reset_init+0x44>)
 8001908:	f850 0022 	ldr.w	r0, [r0, r2, lsl #2]
 800190c:	f841 0022 	str.w	r0, [r1, r2, lsl #2]
 8001910:	3201      	adds	r2, #1
 8001912:	e7f6      	b.n	8001902 <_reset_init+0xa>
 8001914:	4a0a      	ldr	r2, [pc, #40]	; (8001940 <_reset_init+0x48>)
 8001916:	f8d2 3088 	ldr.w	r3, [r2, #136]	; 0x88
 800191a:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
 800191e:	f8c2 3088 	str.w	r3, [r2, #136]	; 0x88
 8001922:	f502 720c 	add.w	r2, r2, #560	; 0x230
 8001926:	6853      	ldr	r3, [r2, #4]
 8001928:	f023 4340 	bic.w	r3, r3, #3221225472	; 0xc0000000
 800192c:	6053      	str	r3, [r2, #4]
 800192e:	f7ff b93b 	b.w	8000ba8 <main>
 8001932:	bf00      	nop
 8001934:	20000000 	.word	0x20000000
 8001938:	20000144 	.word	0x20000144
 800193c:	08002894 	.word	0x08002894
 8001940:	e000ed00 	.word	0xe000ed00

08001944 <RCC_GetClocksFreq>:
 8001944:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8001948:	4f9b      	ldr	r7, [pc, #620]	; (8001bb8 <RCC_GetClocksFreq+0x274>)
 800194a:	687b      	ldr	r3, [r7, #4]
 800194c:	f003 030c 	and.w	r3, r3, #12
 8001950:	2b04      	cmp	r3, #4
 8001952:	d005      	beq.n	8001960 <RCC_GetClocksFreq+0x1c>
 8001954:	2b08      	cmp	r3, #8
 8001956:	d006      	beq.n	8001966 <RCC_GetClocksFreq+0x22>
 8001958:	4a98      	ldr	r2, [pc, #608]	; (8001bbc <RCC_GetClocksFreq+0x278>)
 800195a:	6002      	str	r2, [r0, #0]
 800195c:	b9b3      	cbnz	r3, 800198c <RCC_GetClocksFreq+0x48>
 800195e:	e016      	b.n	800198e <RCC_GetClocksFreq+0x4a>
 8001960:	4b96      	ldr	r3, [pc, #600]	; (8001bbc <RCC_GetClocksFreq+0x278>)
 8001962:	6003      	str	r3, [r0, #0]
 8001964:	e012      	b.n	800198c <RCC_GetClocksFreq+0x48>
 8001966:	687b      	ldr	r3, [r7, #4]
 8001968:	6879      	ldr	r1, [r7, #4]
 800196a:	f3c3 4383 	ubfx	r3, r3, #18, #4
 800196e:	1c9a      	adds	r2, r3, #2
 8001970:	03cb      	lsls	r3, r1, #15
 8001972:	bf49      	itett	mi
 8001974:	6afb      	ldrmi	r3, [r7, #44]	; 0x2c
 8001976:	4b92      	ldrpl	r3, [pc, #584]	; (8001bc0 <RCC_GetClocksFreq+0x27c>)
 8001978:	4990      	ldrmi	r1, [pc, #576]	; (8001bbc <RCC_GetClocksFreq+0x278>)
 800197a:	f003 030f 	andmi.w	r3, r3, #15
 800197e:	bf44      	itt	mi
 8001980:	3301      	addmi	r3, #1
 8001982:	fbb1 f3f3 	udivmi	r3, r1, r3
 8001986:	4353      	muls	r3, r2
 8001988:	6003      	str	r3, [r0, #0]
 800198a:	e000      	b.n	800198e <RCC_GetClocksFreq+0x4a>
 800198c:	2300      	movs	r3, #0
 800198e:	687a      	ldr	r2, [r7, #4]
 8001990:	4e8c      	ldr	r6, [pc, #560]	; (8001bc4 <RCC_GetClocksFreq+0x280>)
 8001992:	f8df c234 	ldr.w	ip, [pc, #564]	; 8001bc8 <RCC_GetClocksFreq+0x284>
 8001996:	f3c2 1203 	ubfx	r2, r2, #4, #4
 800199a:	5cb4      	ldrb	r4, [r6, r2]
 800199c:	6802      	ldr	r2, [r0, #0]
 800199e:	b2e4      	uxtb	r4, r4
 80019a0:	fa22 f104 	lsr.w	r1, r2, r4
 80019a4:	6041      	str	r1, [r0, #4]
 80019a6:	687d      	ldr	r5, [r7, #4]
 80019a8:	f3c5 2502 	ubfx	r5, r5, #8, #3
 80019ac:	5d75      	ldrb	r5, [r6, r5]
 80019ae:	fa21 fe05 	lsr.w	lr, r1, r5
 80019b2:	f8c0 e008 	str.w	lr, [r0, #8]
 80019b6:	687d      	ldr	r5, [r7, #4]
 80019b8:	f3c5 25c2 	ubfx	r5, r5, #11, #3
 80019bc:	5d75      	ldrb	r5, [r6, r5]
 80019be:	b2ed      	uxtb	r5, r5
 80019c0:	40e9      	lsrs	r1, r5
 80019c2:	60c1      	str	r1, [r0, #12]
 80019c4:	6afe      	ldr	r6, [r7, #44]	; 0x2c
 80019c6:	f3c6 1804 	ubfx	r8, r6, #4, #5
 80019ca:	f008 060f 	and.w	r6, r8, #15
 80019ce:	f018 0f10 	tst.w	r8, #16
 80019d2:	f83c 6016 	ldrh.w	r6, [ip, r6, lsl #1]
 80019d6:	46e0      	mov	r8, ip
 80019d8:	b2b6      	uxth	r6, r6
 80019da:	d004      	beq.n	80019e6 <RCC_GetClocksFreq+0xa2>
 80019dc:	b11e      	cbz	r6, 80019e6 <RCC_GetClocksFreq+0xa2>
 80019de:	fbb3 f6f6 	udiv	r6, r3, r6
 80019e2:	6106      	str	r6, [r0, #16]
 80019e4:	e000      	b.n	80019e8 <RCC_GetClocksFreq+0xa4>
 80019e6:	6102      	str	r2, [r0, #16]
 80019e8:	6afe      	ldr	r6, [r7, #44]	; 0x2c
 80019ea:	f3c6 2c44 	ubfx	ip, r6, #9, #5
 80019ee:	f00c 060f 	and.w	r6, ip, #15
 80019f2:	f01c 0f10 	tst.w	ip, #16
 80019f6:	f838 6016 	ldrh.w	r6, [r8, r6, lsl #1]
 80019fa:	b2b6      	uxth	r6, r6
 80019fc:	d004      	beq.n	8001a08 <RCC_GetClocksFreq+0xc4>
 80019fe:	b11e      	cbz	r6, 8001a08 <RCC_GetClocksFreq+0xc4>
 8001a00:	fbb3 f6f6 	udiv	r6, r3, r6
 8001a04:	6146      	str	r6, [r0, #20]
 8001a06:	e000      	b.n	8001a0a <RCC_GetClocksFreq+0xc6>
 8001a08:	6142      	str	r2, [r0, #20]
 8001a0a:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001a0c:	06f6      	lsls	r6, r6, #27
 8001a0e:	bf5a      	itte	pl
 8001a10:	4e6a      	ldrpl	r6, [pc, #424]	; (8001bbc <RCC_GetClocksFreq+0x278>)
 8001a12:	6186      	strpl	r6, [r0, #24]
 8001a14:	6182      	strmi	r2, [r0, #24]
 8001a16:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001a18:	06b6      	lsls	r6, r6, #26
 8001a1a:	bf5a      	itte	pl
 8001a1c:	4e67      	ldrpl	r6, [pc, #412]	; (8001bbc <RCC_GetClocksFreq+0x278>)
 8001a1e:	61c6      	strpl	r6, [r0, #28]
 8001a20:	61c2      	strmi	r2, [r0, #28]
 8001a22:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001a24:	0676      	lsls	r6, r6, #25
 8001a26:	bf5a      	itte	pl
 8001a28:	4e64      	ldrpl	r6, [pc, #400]	; (8001bbc <RCC_GetClocksFreq+0x278>)
 8001a2a:	6206      	strpl	r6, [r0, #32]
 8001a2c:	6202      	strmi	r2, [r0, #32]
 8001a2e:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001a30:	05f6      	lsls	r6, r6, #23
 8001a32:	d506      	bpl.n	8001a42 <RCC_GetClocksFreq+0xfe>
 8001a34:	429a      	cmp	r2, r3
 8001a36:	d104      	bne.n	8001a42 <RCC_GetClocksFreq+0xfe>
 8001a38:	42a5      	cmp	r5, r4
 8001a3a:	d102      	bne.n	8001a42 <RCC_GetClocksFreq+0xfe>
 8001a3c:	0056      	lsls	r6, r2, #1
 8001a3e:	6246      	str	r6, [r0, #36]	; 0x24
 8001a40:	e000      	b.n	8001a44 <RCC_GetClocksFreq+0x100>
 8001a42:	6241      	str	r1, [r0, #36]	; 0x24
 8001a44:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001a46:	04f6      	lsls	r6, r6, #19
 8001a48:	d506      	bpl.n	8001a58 <RCC_GetClocksFreq+0x114>
 8001a4a:	429a      	cmp	r2, r3
 8001a4c:	d104      	bne.n	8001a58 <RCC_GetClocksFreq+0x114>
 8001a4e:	42a5      	cmp	r5, r4
 8001a50:	d102      	bne.n	8001a58 <RCC_GetClocksFreq+0x114>
 8001a52:	0056      	lsls	r6, r2, #1
 8001a54:	6286      	str	r6, [r0, #40]	; 0x28
 8001a56:	e000      	b.n	8001a5a <RCC_GetClocksFreq+0x116>
 8001a58:	6281      	str	r1, [r0, #40]	; 0x28
 8001a5a:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001a5c:	05b6      	lsls	r6, r6, #22
 8001a5e:	d506      	bpl.n	8001a6e <RCC_GetClocksFreq+0x12a>
 8001a60:	429a      	cmp	r2, r3
 8001a62:	d104      	bne.n	8001a6e <RCC_GetClocksFreq+0x12a>
 8001a64:	42a5      	cmp	r5, r4
 8001a66:	d102      	bne.n	8001a6e <RCC_GetClocksFreq+0x12a>
 8001a68:	0056      	lsls	r6, r2, #1
 8001a6a:	62c6      	str	r6, [r0, #44]	; 0x2c
 8001a6c:	e000      	b.n	8001a70 <RCC_GetClocksFreq+0x12c>
 8001a6e:	62c1      	str	r1, [r0, #44]	; 0x2c
 8001a70:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001a72:	0576      	lsls	r6, r6, #21
 8001a74:	d506      	bpl.n	8001a84 <RCC_GetClocksFreq+0x140>
 8001a76:	429a      	cmp	r2, r3
 8001a78:	d104      	bne.n	8001a84 <RCC_GetClocksFreq+0x140>
 8001a7a:	42a5      	cmp	r5, r4
 8001a7c:	d102      	bne.n	8001a84 <RCC_GetClocksFreq+0x140>
 8001a7e:	0056      	lsls	r6, r2, #1
 8001a80:	64c6      	str	r6, [r0, #76]	; 0x4c
 8001a82:	e000      	b.n	8001a86 <RCC_GetClocksFreq+0x142>
 8001a84:	64c1      	str	r1, [r0, #76]	; 0x4c
 8001a86:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001a88:	0536      	lsls	r6, r6, #20
 8001a8a:	d506      	bpl.n	8001a9a <RCC_GetClocksFreq+0x156>
 8001a8c:	429a      	cmp	r2, r3
 8001a8e:	d104      	bne.n	8001a9a <RCC_GetClocksFreq+0x156>
 8001a90:	42a5      	cmp	r5, r4
 8001a92:	d102      	bne.n	8001a9a <RCC_GetClocksFreq+0x156>
 8001a94:	0056      	lsls	r6, r2, #1
 8001a96:	6506      	str	r6, [r0, #80]	; 0x50
 8001a98:	e000      	b.n	8001a9c <RCC_GetClocksFreq+0x158>
 8001a9a:	6501      	str	r1, [r0, #80]	; 0x50
 8001a9c:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001a9e:	04b6      	lsls	r6, r6, #18
 8001aa0:	d506      	bpl.n	8001ab0 <RCC_GetClocksFreq+0x16c>
 8001aa2:	429a      	cmp	r2, r3
 8001aa4:	d104      	bne.n	8001ab0 <RCC_GetClocksFreq+0x16c>
 8001aa6:	42a5      	cmp	r5, r4
 8001aa8:	d102      	bne.n	8001ab0 <RCC_GetClocksFreq+0x16c>
 8001aaa:	0056      	lsls	r6, r2, #1
 8001aac:	6546      	str	r6, [r0, #84]	; 0x54
 8001aae:	e000      	b.n	8001ab2 <RCC_GetClocksFreq+0x16e>
 8001ab0:	6501      	str	r1, [r0, #80]	; 0x50
 8001ab2:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001ab4:	0436      	lsls	r6, r6, #16
 8001ab6:	d506      	bpl.n	8001ac6 <RCC_GetClocksFreq+0x182>
 8001ab8:	429a      	cmp	r2, r3
 8001aba:	d104      	bne.n	8001ac6 <RCC_GetClocksFreq+0x182>
 8001abc:	42a5      	cmp	r5, r4
 8001abe:	d102      	bne.n	8001ac6 <RCC_GetClocksFreq+0x182>
 8001ac0:	0053      	lsls	r3, r2, #1
 8001ac2:	6583      	str	r3, [r0, #88]	; 0x58
 8001ac4:	e000      	b.n	8001ac8 <RCC_GetClocksFreq+0x184>
 8001ac6:	6581      	str	r1, [r0, #88]	; 0x58
 8001ac8:	6b3c      	ldr	r4, [r7, #48]	; 0x30
 8001aca:	4b3b      	ldr	r3, [pc, #236]	; (8001bb8 <RCC_GetClocksFreq+0x274>)
 8001acc:	07a4      	lsls	r4, r4, #30
 8001ace:	d101      	bne.n	8001ad4 <RCC_GetClocksFreq+0x190>
 8001ad0:	6381      	str	r1, [r0, #56]	; 0x38
 8001ad2:	e015      	b.n	8001b00 <RCC_GetClocksFreq+0x1bc>
 8001ad4:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001ad6:	f001 0103 	and.w	r1, r1, #3
 8001ada:	2901      	cmp	r1, #1
 8001adc:	d101      	bne.n	8001ae2 <RCC_GetClocksFreq+0x19e>
 8001ade:	6382      	str	r2, [r0, #56]	; 0x38
 8001ae0:	e00e      	b.n	8001b00 <RCC_GetClocksFreq+0x1bc>
 8001ae2:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001ae4:	f001 0103 	and.w	r1, r1, #3
 8001ae8:	2902      	cmp	r1, #2
 8001aea:	d102      	bne.n	8001af2 <RCC_GetClocksFreq+0x1ae>
 8001aec:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001af0:	e005      	b.n	8001afe <RCC_GetClocksFreq+0x1ba>
 8001af2:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001af4:	f003 0303 	and.w	r3, r3, #3
 8001af8:	2b03      	cmp	r3, #3
 8001afa:	d101      	bne.n	8001b00 <RCC_GetClocksFreq+0x1bc>
 8001afc:	4b2f      	ldr	r3, [pc, #188]	; (8001bbc <RCC_GetClocksFreq+0x278>)
 8001afe:	6383      	str	r3, [r0, #56]	; 0x38
 8001b00:	6b39      	ldr	r1, [r7, #48]	; 0x30
 8001b02:	4b2d      	ldr	r3, [pc, #180]	; (8001bb8 <RCC_GetClocksFreq+0x274>)
 8001b04:	f411 3f40 	tst.w	r1, #196608	; 0x30000
 8001b08:	d102      	bne.n	8001b10 <RCC_GetClocksFreq+0x1cc>
 8001b0a:	f8c0 e03c 	str.w	lr, [r0, #60]	; 0x3c
 8001b0e:	e018      	b.n	8001b42 <RCC_GetClocksFreq+0x1fe>
 8001b10:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001b12:	f401 3140 	and.w	r1, r1, #196608	; 0x30000
 8001b16:	f5b1 3f80 	cmp.w	r1, #65536	; 0x10000
 8001b1a:	d101      	bne.n	8001b20 <RCC_GetClocksFreq+0x1dc>
 8001b1c:	63c2      	str	r2, [r0, #60]	; 0x3c
 8001b1e:	e010      	b.n	8001b42 <RCC_GetClocksFreq+0x1fe>
 8001b20:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001b22:	f401 3140 	and.w	r1, r1, #196608	; 0x30000
 8001b26:	f5b1 3f00 	cmp.w	r1, #131072	; 0x20000
 8001b2a:	d102      	bne.n	8001b32 <RCC_GetClocksFreq+0x1ee>
 8001b2c:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001b30:	e006      	b.n	8001b40 <RCC_GetClocksFreq+0x1fc>
 8001b32:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001b34:	f403 3340 	and.w	r3, r3, #196608	; 0x30000
 8001b38:	f5b3 3f40 	cmp.w	r3, #196608	; 0x30000
 8001b3c:	d101      	bne.n	8001b42 <RCC_GetClocksFreq+0x1fe>
 8001b3e:	4b1f      	ldr	r3, [pc, #124]	; (8001bbc <RCC_GetClocksFreq+0x278>)
 8001b40:	63c3      	str	r3, [r0, #60]	; 0x3c
 8001b42:	6b39      	ldr	r1, [r7, #48]	; 0x30
 8001b44:	4b1c      	ldr	r3, [pc, #112]	; (8001bb8 <RCC_GetClocksFreq+0x274>)
 8001b46:	f411 2f40 	tst.w	r1, #786432	; 0xc0000
 8001b4a:	d102      	bne.n	8001b52 <RCC_GetClocksFreq+0x20e>
 8001b4c:	f8c0 e040 	str.w	lr, [r0, #64]	; 0x40
 8001b50:	e018      	b.n	8001b84 <RCC_GetClocksFreq+0x240>
 8001b52:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001b54:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 8001b58:	f5b1 2f80 	cmp.w	r1, #262144	; 0x40000
 8001b5c:	d101      	bne.n	8001b62 <RCC_GetClocksFreq+0x21e>
 8001b5e:	6402      	str	r2, [r0, #64]	; 0x40
 8001b60:	e010      	b.n	8001b84 <RCC_GetClocksFreq+0x240>
 8001b62:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001b64:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 8001b68:	f5b1 2f00 	cmp.w	r1, #524288	; 0x80000
 8001b6c:	d102      	bne.n	8001b74 <RCC_GetClocksFreq+0x230>
 8001b6e:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001b72:	e006      	b.n	8001b82 <RCC_GetClocksFreq+0x23e>
 8001b74:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001b76:	f403 2340 	and.w	r3, r3, #786432	; 0xc0000
 8001b7a:	f5b3 2f40 	cmp.w	r3, #786432	; 0xc0000
 8001b7e:	d101      	bne.n	8001b84 <RCC_GetClocksFreq+0x240>
 8001b80:	4b0e      	ldr	r3, [pc, #56]	; (8001bbc <RCC_GetClocksFreq+0x278>)
 8001b82:	6403      	str	r3, [r0, #64]	; 0x40
 8001b84:	6b39      	ldr	r1, [r7, #48]	; 0x30
 8001b86:	4b0c      	ldr	r3, [pc, #48]	; (8001bb8 <RCC_GetClocksFreq+0x274>)
 8001b88:	f411 1f40 	tst.w	r1, #3145728	; 0x300000
 8001b8c:	d102      	bne.n	8001b94 <RCC_GetClocksFreq+0x250>
 8001b8e:	f8c0 e044 	str.w	lr, [r0, #68]	; 0x44
 8001b92:	e023      	b.n	8001bdc <RCC_GetClocksFreq+0x298>
 8001b94:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001b96:	f401 1140 	and.w	r1, r1, #3145728	; 0x300000
 8001b9a:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 8001b9e:	d101      	bne.n	8001ba4 <RCC_GetClocksFreq+0x260>
 8001ba0:	6442      	str	r2, [r0, #68]	; 0x44
 8001ba2:	e01b      	b.n	8001bdc <RCC_GetClocksFreq+0x298>
 8001ba4:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001ba6:	f401 1140 	and.w	r1, r1, #3145728	; 0x300000
 8001baa:	f5b1 1f00 	cmp.w	r1, #2097152	; 0x200000
 8001bae:	d10d      	bne.n	8001bcc <RCC_GetClocksFreq+0x288>
 8001bb0:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001bb4:	e011      	b.n	8001bda <RCC_GetClocksFreq+0x296>
 8001bb6:	bf00      	nop
 8001bb8:	40021000 	.word	0x40021000
 8001bbc:	007a1200 	.word	0x007a1200
 8001bc0:	003d0900 	.word	0x003d0900
 8001bc4:	20000130 	.word	0x20000130
 8001bc8:	20000110 	.word	0x20000110
 8001bcc:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001bce:	f403 1340 	and.w	r3, r3, #3145728	; 0x300000
 8001bd2:	f5b3 1f40 	cmp.w	r3, #3145728	; 0x300000
 8001bd6:	d101      	bne.n	8001bdc <RCC_GetClocksFreq+0x298>
 8001bd8:	4b13      	ldr	r3, [pc, #76]	; (8001c28 <RCC_GetClocksFreq+0x2e4>)
 8001bda:	6443      	str	r3, [r0, #68]	; 0x44
 8001bdc:	6b39      	ldr	r1, [r7, #48]	; 0x30
 8001bde:	4b13      	ldr	r3, [pc, #76]	; (8001c2c <RCC_GetClocksFreq+0x2e8>)
 8001be0:	f411 0f40 	tst.w	r1, #12582912	; 0xc00000
 8001be4:	d103      	bne.n	8001bee <RCC_GetClocksFreq+0x2aa>
 8001be6:	f8c0 e048 	str.w	lr, [r0, #72]	; 0x48
 8001bea:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8001bee:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001bf0:	f401 0140 	and.w	r1, r1, #12582912	; 0xc00000
 8001bf4:	f5b1 0f80 	cmp.w	r1, #4194304	; 0x400000
 8001bf8:	d102      	bne.n	8001c00 <RCC_GetClocksFreq+0x2bc>
 8001bfa:	6482      	str	r2, [r0, #72]	; 0x48
 8001bfc:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8001c00:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 8001c02:	f402 0240 	and.w	r2, r2, #12582912	; 0xc00000
 8001c06:	f5b2 0f00 	cmp.w	r2, #8388608	; 0x800000
 8001c0a:	d102      	bne.n	8001c12 <RCC_GetClocksFreq+0x2ce>
 8001c0c:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001c10:	e006      	b.n	8001c20 <RCC_GetClocksFreq+0x2dc>
 8001c12:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001c14:	f403 0340 	and.w	r3, r3, #12582912	; 0xc00000
 8001c18:	f5b3 0f40 	cmp.w	r3, #12582912	; 0xc00000
 8001c1c:	d101      	bne.n	8001c22 <RCC_GetClocksFreq+0x2de>
 8001c1e:	4b02      	ldr	r3, [pc, #8]	; (8001c28 <RCC_GetClocksFreq+0x2e4>)
 8001c20:	6483      	str	r3, [r0, #72]	; 0x48
 8001c22:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8001c26:	bf00      	nop
 8001c28:	007a1200 	.word	0x007a1200
 8001c2c:	40021000 	.word	0x40021000

08001c30 <RCC_AHBPeriphClockCmd>:
 8001c30:	bf00      	nop
 8001c32:	bf00      	nop
 8001c34:	4b04      	ldr	r3, [pc, #16]	; (8001c48 <RCC_AHBPeriphClockCmd+0x18>)
 8001c36:	695a      	ldr	r2, [r3, #20]
 8001c38:	b109      	cbz	r1, 8001c3e <RCC_AHBPeriphClockCmd+0xe>
 8001c3a:	4310      	orrs	r0, r2
 8001c3c:	e001      	b.n	8001c42 <RCC_AHBPeriphClockCmd+0x12>
 8001c3e:	ea22 0000 	bic.w	r0, r2, r0
 8001c42:	6158      	str	r0, [r3, #20]
 8001c44:	4770      	bx	lr
 8001c46:	bf00      	nop
 8001c48:	40021000 	.word	0x40021000

08001c4c <RCC_APB2PeriphClockCmd>:
 8001c4c:	bf00      	nop
 8001c4e:	bf00      	nop
 8001c50:	4b04      	ldr	r3, [pc, #16]	; (8001c64 <RCC_APB2PeriphClockCmd+0x18>)
 8001c52:	699a      	ldr	r2, [r3, #24]
 8001c54:	b109      	cbz	r1, 8001c5a <RCC_APB2PeriphClockCmd+0xe>
 8001c56:	4310      	orrs	r0, r2
 8001c58:	e001      	b.n	8001c5e <RCC_APB2PeriphClockCmd+0x12>
 8001c5a:	ea22 0000 	bic.w	r0, r2, r0
 8001c5e:	6198      	str	r0, [r3, #24]
 8001c60:	4770      	bx	lr
 8001c62:	bf00      	nop
 8001c64:	40021000 	.word	0x40021000

08001c68 <RCC_APB1PeriphClockCmd>:
 8001c68:	bf00      	nop
 8001c6a:	bf00      	nop
 8001c6c:	4b04      	ldr	r3, [pc, #16]	; (8001c80 <RCC_APB1PeriphClockCmd+0x18>)
 8001c6e:	69da      	ldr	r2, [r3, #28]
 8001c70:	b109      	cbz	r1, 8001c76 <RCC_APB1PeriphClockCmd+0xe>
 8001c72:	4310      	orrs	r0, r2
 8001c74:	e001      	b.n	8001c7a <RCC_APB1PeriphClockCmd+0x12>
 8001c76:	ea22 0000 	bic.w	r0, r2, r0
 8001c7a:	61d8      	str	r0, [r3, #28]
 8001c7c:	4770      	bx	lr
 8001c7e:	bf00      	nop
 8001c80:	40021000 	.word	0x40021000

08001c84 <timer_init>:
 8001c84:	b530      	push	{r4, r5, lr}
 8001c86:	2300      	movs	r3, #0
 8001c88:	b085      	sub	sp, #20
 8001c8a:	491f      	ldr	r1, [pc, #124]	; (8001d08 <timer_init+0x84>)
 8001c8c:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8001c90:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 8001c94:	491d      	ldr	r1, [pc, #116]	; (8001d0c <timer_init+0x88>)
 8001c96:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 8001c9a:	4a1d      	ldr	r2, [pc, #116]	; (8001d10 <timer_init+0x8c>)
 8001c9c:	2400      	movs	r4, #0
 8001c9e:	f822 4013 	strh.w	r4, [r2, r3, lsl #1]
 8001ca2:	3301      	adds	r3, #1
 8001ca4:	2b04      	cmp	r3, #4
 8001ca6:	4625      	mov	r5, r4
 8001ca8:	d1ef      	bne.n	8001c8a <timer_init+0x6>
 8001caa:	4b1a      	ldr	r3, [pc, #104]	; (8001d14 <timer_init+0x90>)
 8001cac:	2002      	movs	r0, #2
 8001cae:	2101      	movs	r1, #1
 8001cb0:	601c      	str	r4, [r3, #0]
 8001cb2:	f7ff ffd9 	bl	8001c68 <RCC_APB1PeriphClockCmd>
 8001cb6:	f8ad 4006 	strh.w	r4, [sp, #6]
 8001cba:	f8ad 400c 	strh.w	r4, [sp, #12]
 8001cbe:	f8ad 400e 	strh.w	r4, [sp, #14]
 8001cc2:	4c15      	ldr	r4, [pc, #84]	; (8001d18 <timer_init+0x94>)
 8001cc4:	f44f 738c 	mov.w	r3, #280	; 0x118
 8001cc8:	f8ad 3004 	strh.w	r3, [sp, #4]
 8001ccc:	4620      	mov	r0, r4
 8001cce:	2331      	movs	r3, #49	; 0x31
 8001cd0:	a901      	add	r1, sp, #4
 8001cd2:	9302      	str	r3, [sp, #8]
 8001cd4:	f000 f896 	bl	8001e04 <TIM_TimeBaseInit>
 8001cd8:	4620      	mov	r0, r4
 8001cda:	2101      	movs	r1, #1
 8001cdc:	f000 f8e2 	bl	8001ea4 <TIM_Cmd>
 8001ce0:	68e3      	ldr	r3, [r4, #12]
 8001ce2:	f043 0301 	orr.w	r3, r3, #1
 8001ce6:	60e3      	str	r3, [r4, #12]
 8001ce8:	231d      	movs	r3, #29
 8001cea:	f88d 3000 	strb.w	r3, [sp]
 8001cee:	4668      	mov	r0, sp
 8001cf0:	2301      	movs	r3, #1
 8001cf2:	f88d 5001 	strb.w	r5, [sp, #1]
 8001cf6:	f88d 3002 	strb.w	r3, [sp, #2]
 8001cfa:	f88d 3003 	strb.w	r3, [sp, #3]
 8001cfe:	f000 f973 	bl	8001fe8 <NVIC_Init>
 8001d02:	b005      	add	sp, #20
 8001d04:	bd30      	pop	{r4, r5, pc}
 8001d06:	bf00      	nop
 8001d08:	20000e50 	.word	0x20000e50
 8001d0c:	20000e44 	.word	0x20000e44
 8001d10:	20000e3c 	.word	0x20000e3c
 8001d14:	20000e4c 	.word	0x20000e4c
 8001d18:	40000400 	.word	0x40000400

08001d1c <TIM3_IRQHandler>:
 8001d1c:	2300      	movs	r3, #0
 8001d1e:	4910      	ldr	r1, [pc, #64]	; (8001d60 <TIM3_IRQHandler+0x44>)
 8001d20:	f831 2013 	ldrh.w	r2, [r1, r3, lsl #1]
 8001d24:	b292      	uxth	r2, r2
 8001d26:	b132      	cbz	r2, 8001d36 <TIM3_IRQHandler+0x1a>
 8001d28:	f831 2013 	ldrh.w	r2, [r1, r3, lsl #1]
 8001d2c:	3a01      	subs	r2, #1
 8001d2e:	b292      	uxth	r2, r2
 8001d30:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 8001d34:	e009      	b.n	8001d4a <TIM3_IRQHandler+0x2e>
 8001d36:	4a0b      	ldr	r2, [pc, #44]	; (8001d64 <TIM3_IRQHandler+0x48>)
 8001d38:	f832 2013 	ldrh.w	r2, [r2, r3, lsl #1]
 8001d3c:	b292      	uxth	r2, r2
 8001d3e:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 8001d42:	4a09      	ldr	r2, [pc, #36]	; (8001d68 <TIM3_IRQHandler+0x4c>)
 8001d44:	2101      	movs	r1, #1
 8001d46:	f822 1013 	strh.w	r1, [r2, r3, lsl #1]
 8001d4a:	3301      	adds	r3, #1
 8001d4c:	2b04      	cmp	r3, #4
 8001d4e:	d1e6      	bne.n	8001d1e <TIM3_IRQHandler+0x2>
 8001d50:	4a06      	ldr	r2, [pc, #24]	; (8001d6c <TIM3_IRQHandler+0x50>)
 8001d52:	4807      	ldr	r0, [pc, #28]	; (8001d70 <TIM3_IRQHandler+0x54>)
 8001d54:	6813      	ldr	r3, [r2, #0]
 8001d56:	2101      	movs	r1, #1
 8001d58:	3301      	adds	r3, #1
 8001d5a:	6013      	str	r3, [r2, #0]
 8001d5c:	f000 b93f 	b.w	8001fde <TIM_ClearITPendingBit>
 8001d60:	20000e50 	.word	0x20000e50
 8001d64:	20000e44 	.word	0x20000e44
 8001d68:	20000e3c 	.word	0x20000e3c
 8001d6c:	20000e4c 	.word	0x20000e4c
 8001d70:	40000400 	.word	0x40000400

08001d74 <timer_get_time>:
 8001d74:	b082      	sub	sp, #8
 8001d76:	b672      	cpsid	i
 8001d78:	4b04      	ldr	r3, [pc, #16]	; (8001d8c <timer_get_time+0x18>)
 8001d7a:	681b      	ldr	r3, [r3, #0]
 8001d7c:	9301      	str	r3, [sp, #4]
 8001d7e:	b662      	cpsie	i
 8001d80:	230a      	movs	r3, #10
 8001d82:	9801      	ldr	r0, [sp, #4]
 8001d84:	fbb0 f0f3 	udiv	r0, r0, r3
 8001d88:	b002      	add	sp, #8
 8001d8a:	4770      	bx	lr
 8001d8c:	20000e4c 	.word	0x20000e4c

08001d90 <timer_delay_ms>:
 8001d90:	b513      	push	{r0, r1, r4, lr}
 8001d92:	4604      	mov	r4, r0
 8001d94:	f7ff ffee 	bl	8001d74 <timer_get_time>
 8001d98:	4420      	add	r0, r4
 8001d9a:	9001      	str	r0, [sp, #4]
 8001d9c:	9c01      	ldr	r4, [sp, #4]
 8001d9e:	f7ff ffe9 	bl	8001d74 <timer_get_time>
 8001da2:	4284      	cmp	r4, r0
 8001da4:	d902      	bls.n	8001dac <timer_delay_ms+0x1c>
 8001da6:	f000 fd0d 	bl	80027c4 <sleep>
 8001daa:	e7f7      	b.n	8001d9c <timer_delay_ms+0xc>
 8001dac:	b002      	add	sp, #8
 8001dae:	bd10      	pop	{r4, pc}

08001db0 <event_timer_set_period>:
 8001db0:	b672      	cpsid	i
 8001db2:	eb01 0181 	add.w	r1, r1, r1, lsl #2
 8001db6:	4b07      	ldr	r3, [pc, #28]	; (8001dd4 <event_timer_set_period+0x24>)
 8001db8:	0049      	lsls	r1, r1, #1
 8001dba:	b289      	uxth	r1, r1
 8001dbc:	f823 1010 	strh.w	r1, [r3, r0, lsl #1]
 8001dc0:	4b05      	ldr	r3, [pc, #20]	; (8001dd8 <event_timer_set_period+0x28>)
 8001dc2:	f823 1010 	strh.w	r1, [r3, r0, lsl #1]
 8001dc6:	4b05      	ldr	r3, [pc, #20]	; (8001ddc <event_timer_set_period+0x2c>)
 8001dc8:	2200      	movs	r2, #0
 8001dca:	f823 2010 	strh.w	r2, [r3, r0, lsl #1]
 8001dce:	b662      	cpsie	i
 8001dd0:	4770      	bx	lr
 8001dd2:	bf00      	nop
 8001dd4:	20000e50 	.word	0x20000e50
 8001dd8:	20000e44 	.word	0x20000e44
 8001ddc:	20000e3c 	.word	0x20000e3c

08001de0 <event_timer_wait>:
 8001de0:	b510      	push	{r4, lr}
 8001de2:	4604      	mov	r4, r0
 8001de4:	4a06      	ldr	r2, [pc, #24]	; (8001e00 <event_timer_wait+0x20>)
 8001de6:	f832 3014 	ldrh.w	r3, [r2, r4, lsl #1]
 8001dea:	b29b      	uxth	r3, r3
 8001dec:	b913      	cbnz	r3, 8001df4 <event_timer_wait+0x14>
 8001dee:	f000 fce9 	bl	80027c4 <sleep>
 8001df2:	e7f7      	b.n	8001de4 <event_timer_wait+0x4>
 8001df4:	b672      	cpsid	i
 8001df6:	2300      	movs	r3, #0
 8001df8:	f822 3014 	strh.w	r3, [r2, r4, lsl #1]
 8001dfc:	b662      	cpsie	i
 8001dfe:	bd10      	pop	{r4, pc}
 8001e00:	20000e3c 	.word	0x20000e3c

08001e04 <TIM_TimeBaseInit>:
 8001e04:	bf00      	nop
 8001e06:	bf00      	nop
 8001e08:	bf00      	nop
 8001e0a:	4a24      	ldr	r2, [pc, #144]	; (8001e9c <TIM_TimeBaseInit+0x98>)
 8001e0c:	8803      	ldrh	r3, [r0, #0]
 8001e0e:	4290      	cmp	r0, r2
 8001e10:	b29b      	uxth	r3, r3
 8001e12:	d012      	beq.n	8001e3a <TIM_TimeBaseInit+0x36>
 8001e14:	f502 6200 	add.w	r2, r2, #2048	; 0x800
 8001e18:	4290      	cmp	r0, r2
 8001e1a:	d00e      	beq.n	8001e3a <TIM_TimeBaseInit+0x36>
 8001e1c:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 8001e20:	d00b      	beq.n	8001e3a <TIM_TimeBaseInit+0x36>
 8001e22:	f5a2 3298 	sub.w	r2, r2, #77824	; 0x13000
 8001e26:	4290      	cmp	r0, r2
 8001e28:	d007      	beq.n	8001e3a <TIM_TimeBaseInit+0x36>
 8001e2a:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8001e2e:	4290      	cmp	r0, r2
 8001e30:	d003      	beq.n	8001e3a <TIM_TimeBaseInit+0x36>
 8001e32:	f502 32a4 	add.w	r2, r2, #83968	; 0x14800
 8001e36:	4290      	cmp	r0, r2
 8001e38:	d103      	bne.n	8001e42 <TIM_TimeBaseInit+0x3e>
 8001e3a:	884a      	ldrh	r2, [r1, #2]
 8001e3c:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 8001e40:	4313      	orrs	r3, r2
 8001e42:	4a17      	ldr	r2, [pc, #92]	; (8001ea0 <TIM_TimeBaseInit+0x9c>)
 8001e44:	4290      	cmp	r0, r2
 8001e46:	d008      	beq.n	8001e5a <TIM_TimeBaseInit+0x56>
 8001e48:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8001e4c:	4290      	cmp	r0, r2
 8001e4e:	bf1f      	itttt	ne
 8001e50:	f423 7340 	bicne.w	r3, r3, #768	; 0x300
 8001e54:	890a      	ldrhne	r2, [r1, #8]
 8001e56:	b29b      	uxthne	r3, r3
 8001e58:	4313      	orrne	r3, r2
 8001e5a:	8003      	strh	r3, [r0, #0]
 8001e5c:	684b      	ldr	r3, [r1, #4]
 8001e5e:	62c3      	str	r3, [r0, #44]	; 0x2c
 8001e60:	880b      	ldrh	r3, [r1, #0]
 8001e62:	8503      	strh	r3, [r0, #40]	; 0x28
 8001e64:	4b0d      	ldr	r3, [pc, #52]	; (8001e9c <TIM_TimeBaseInit+0x98>)
 8001e66:	4298      	cmp	r0, r3
 8001e68:	d013      	beq.n	8001e92 <TIM_TimeBaseInit+0x8e>
 8001e6a:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 8001e6e:	4298      	cmp	r0, r3
 8001e70:	d00f      	beq.n	8001e92 <TIM_TimeBaseInit+0x8e>
 8001e72:	f503 6340 	add.w	r3, r3, #3072	; 0xc00
 8001e76:	4298      	cmp	r0, r3
 8001e78:	d00b      	beq.n	8001e92 <TIM_TimeBaseInit+0x8e>
 8001e7a:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 8001e7e:	4298      	cmp	r0, r3
 8001e80:	d007      	beq.n	8001e92 <TIM_TimeBaseInit+0x8e>
 8001e82:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 8001e86:	4298      	cmp	r0, r3
 8001e88:	d003      	beq.n	8001e92 <TIM_TimeBaseInit+0x8e>
 8001e8a:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 8001e8e:	4298      	cmp	r0, r3
 8001e90:	d101      	bne.n	8001e96 <TIM_TimeBaseInit+0x92>
 8001e92:	894b      	ldrh	r3, [r1, #10]
 8001e94:	8603      	strh	r3, [r0, #48]	; 0x30
 8001e96:	2301      	movs	r3, #1
 8001e98:	6143      	str	r3, [r0, #20]
 8001e9a:	4770      	bx	lr
 8001e9c:	40012c00 	.word	0x40012c00
 8001ea0:	40001000 	.word	0x40001000

08001ea4 <TIM_Cmd>:
 8001ea4:	bf00      	nop
 8001ea6:	bf00      	nop
 8001ea8:	8803      	ldrh	r3, [r0, #0]
 8001eaa:	b119      	cbz	r1, 8001eb4 <TIM_Cmd+0x10>
 8001eac:	b29b      	uxth	r3, r3
 8001eae:	f043 0301 	orr.w	r3, r3, #1
 8001eb2:	e003      	b.n	8001ebc <TIM_Cmd+0x18>
 8001eb4:	f023 0301 	bic.w	r3, r3, #1
 8001eb8:	041b      	lsls	r3, r3, #16
 8001eba:	0c1b      	lsrs	r3, r3, #16
 8001ebc:	8003      	strh	r3, [r0, #0]
 8001ebe:	4770      	bx	lr

08001ec0 <TIM_OC1Init>:
 8001ec0:	b570      	push	{r4, r5, r6, lr}
 8001ec2:	bf00      	nop
 8001ec4:	bf00      	nop
 8001ec6:	bf00      	nop
 8001ec8:	bf00      	nop
 8001eca:	6a03      	ldr	r3, [r0, #32]
 8001ecc:	680d      	ldr	r5, [r1, #0]
 8001ece:	f023 0301 	bic.w	r3, r3, #1
 8001ed2:	6203      	str	r3, [r0, #32]
 8001ed4:	6a03      	ldr	r3, [r0, #32]
 8001ed6:	6844      	ldr	r4, [r0, #4]
 8001ed8:	6982      	ldr	r2, [r0, #24]
 8001eda:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
 8001ede:	f022 0273 	bic.w	r2, r2, #115	; 0x73
 8001ee2:	4315      	orrs	r5, r2
 8001ee4:	898a      	ldrh	r2, [r1, #12]
 8001ee6:	f023 0302 	bic.w	r3, r3, #2
 8001eea:	4313      	orrs	r3, r2
 8001eec:	888a      	ldrh	r2, [r1, #4]
 8001eee:	4313      	orrs	r3, r2
 8001ef0:	4a15      	ldr	r2, [pc, #84]	; (8001f48 <TIM_OC1Init+0x88>)
 8001ef2:	4290      	cmp	r0, r2
 8001ef4:	d00f      	beq.n	8001f16 <TIM_OC1Init+0x56>
 8001ef6:	f502 6200 	add.w	r2, r2, #2048	; 0x800
 8001efa:	4290      	cmp	r0, r2
 8001efc:	d00b      	beq.n	8001f16 <TIM_OC1Init+0x56>
 8001efe:	f502 6240 	add.w	r2, r2, #3072	; 0xc00
 8001f02:	4290      	cmp	r0, r2
 8001f04:	d007      	beq.n	8001f16 <TIM_OC1Init+0x56>
 8001f06:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8001f0a:	4290      	cmp	r0, r2
 8001f0c:	d003      	beq.n	8001f16 <TIM_OC1Init+0x56>
 8001f0e:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8001f12:	4290      	cmp	r0, r2
 8001f14:	d111      	bne.n	8001f3a <TIM_OC1Init+0x7a>
 8001f16:	bf00      	nop
 8001f18:	bf00      	nop
 8001f1a:	bf00      	nop
 8001f1c:	bf00      	nop
 8001f1e:	89ca      	ldrh	r2, [r1, #14]
 8001f20:	88ce      	ldrh	r6, [r1, #6]
 8001f22:	f023 0308 	bic.w	r3, r3, #8
 8001f26:	4313      	orrs	r3, r2
 8001f28:	8a0a      	ldrh	r2, [r1, #16]
 8001f2a:	f424 7440 	bic.w	r4, r4, #768	; 0x300
 8001f2e:	4314      	orrs	r4, r2
 8001f30:	8a4a      	ldrh	r2, [r1, #18]
 8001f32:	f023 0304 	bic.w	r3, r3, #4
 8001f36:	4333      	orrs	r3, r6
 8001f38:	4314      	orrs	r4, r2
 8001f3a:	688a      	ldr	r2, [r1, #8]
 8001f3c:	6044      	str	r4, [r0, #4]
 8001f3e:	6185      	str	r5, [r0, #24]
 8001f40:	6342      	str	r2, [r0, #52]	; 0x34
 8001f42:	6203      	str	r3, [r0, #32]
 8001f44:	bd70      	pop	{r4, r5, r6, pc}
 8001f46:	bf00      	nop
 8001f48:	40012c00 	.word	0x40012c00

08001f4c <TIM_OC2Init>:
 8001f4c:	b570      	push	{r4, r5, r6, lr}
 8001f4e:	bf00      	nop
 8001f50:	bf00      	nop
 8001f52:	bf00      	nop
 8001f54:	bf00      	nop
 8001f56:	6a03      	ldr	r3, [r0, #32]
 8001f58:	680d      	ldr	r5, [r1, #0]
 8001f5a:	898e      	ldrh	r6, [r1, #12]
 8001f5c:	f023 0310 	bic.w	r3, r3, #16
 8001f60:	6203      	str	r3, [r0, #32]
 8001f62:	6a03      	ldr	r3, [r0, #32]
 8001f64:	6844      	ldr	r4, [r0, #4]
 8001f66:	6982      	ldr	r2, [r0, #24]
 8001f68:	f022 7280 	bic.w	r2, r2, #16777216	; 0x1000000
 8001f6c:	f422 42e6 	bic.w	r2, r2, #29440	; 0x7300
 8001f70:	ea42 2505 	orr.w	r5, r2, r5, lsl #8
 8001f74:	f023 0220 	bic.w	r2, r3, #32
 8001f78:	888b      	ldrh	r3, [r1, #4]
 8001f7a:	4333      	orrs	r3, r6
 8001f7c:	ea42 1303 	orr.w	r3, r2, r3, lsl #4
 8001f80:	4a10      	ldr	r2, [pc, #64]	; (8001fc4 <TIM_OC2Init+0x78>)
 8001f82:	4290      	cmp	r0, r2
 8001f84:	d003      	beq.n	8001f8e <TIM_OC2Init+0x42>
 8001f86:	f502 6200 	add.w	r2, r2, #2048	; 0x800
 8001f8a:	4290      	cmp	r0, r2
 8001f8c:	d114      	bne.n	8001fb8 <TIM_OC2Init+0x6c>
 8001f8e:	bf00      	nop
 8001f90:	bf00      	nop
 8001f92:	bf00      	nop
 8001f94:	bf00      	nop
 8001f96:	89ca      	ldrh	r2, [r1, #14]
 8001f98:	8a0e      	ldrh	r6, [r1, #16]
 8001f9a:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8001f9e:	ea43 1302 	orr.w	r3, r3, r2, lsl #4
 8001fa2:	88ca      	ldrh	r2, [r1, #6]
 8001fa4:	f023 0340 	bic.w	r3, r3, #64	; 0x40
 8001fa8:	ea43 1302 	orr.w	r3, r3, r2, lsl #4
 8001fac:	8a4a      	ldrh	r2, [r1, #18]
 8001fae:	f424 6440 	bic.w	r4, r4, #3072	; 0xc00
 8001fb2:	4332      	orrs	r2, r6
 8001fb4:	ea44 0482 	orr.w	r4, r4, r2, lsl #2
 8001fb8:	688a      	ldr	r2, [r1, #8]
 8001fba:	6044      	str	r4, [r0, #4]
 8001fbc:	6185      	str	r5, [r0, #24]
 8001fbe:	6382      	str	r2, [r0, #56]	; 0x38
 8001fc0:	6203      	str	r3, [r0, #32]
 8001fc2:	bd70      	pop	{r4, r5, r6, pc}
 8001fc4:	40012c00 	.word	0x40012c00

08001fc8 <TIM_CtrlPWMOutputs>:
 8001fc8:	bf00      	nop
 8001fca:	bf00      	nop
 8001fcc:	6c43      	ldr	r3, [r0, #68]	; 0x44
 8001fce:	b111      	cbz	r1, 8001fd6 <TIM_CtrlPWMOutputs+0xe>
 8001fd0:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
 8001fd4:	e001      	b.n	8001fda <TIM_CtrlPWMOutputs+0x12>
 8001fd6:	f3c3 030e 	ubfx	r3, r3, #0, #15
 8001fda:	6443      	str	r3, [r0, #68]	; 0x44
 8001fdc:	4770      	bx	lr

08001fde <TIM_ClearITPendingBit>:
 8001fde:	bf00      	nop
 8001fe0:	43c9      	mvns	r1, r1
 8001fe2:	b289      	uxth	r1, r1
 8001fe4:	6101      	str	r1, [r0, #16]
 8001fe6:	4770      	bx	lr

08001fe8 <NVIC_Init>:
 8001fe8:	b510      	push	{r4, lr}
 8001fea:	bf00      	nop
 8001fec:	bf00      	nop
 8001fee:	bf00      	nop
 8001ff0:	78c2      	ldrb	r2, [r0, #3]
 8001ff2:	7803      	ldrb	r3, [r0, #0]
 8001ff4:	b312      	cbz	r2, 800203c <NVIC_Init+0x54>
 8001ff6:	4a17      	ldr	r2, [pc, #92]	; (8002054 <NVIC_Init+0x6c>)
 8001ff8:	68d1      	ldr	r1, [r2, #12]
 8001ffa:	7842      	ldrb	r2, [r0, #1]
 8001ffc:	43c9      	mvns	r1, r1
 8001ffe:	f3c1 2102 	ubfx	r1, r1, #8, #3
 8002002:	f1c1 0404 	rsb	r4, r1, #4
 8002006:	b2e4      	uxtb	r4, r4
 8002008:	40a2      	lsls	r2, r4
 800200a:	b2d4      	uxtb	r4, r2
 800200c:	220f      	movs	r2, #15
 800200e:	410a      	asrs	r2, r1
 8002010:	7881      	ldrb	r1, [r0, #2]
 8002012:	400a      	ands	r2, r1
 8002014:	4322      	orrs	r2, r4
 8002016:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
 800201a:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
 800201e:	0112      	lsls	r2, r2, #4
 8002020:	b2d2      	uxtb	r2, r2
 8002022:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
 8002026:	7803      	ldrb	r3, [r0, #0]
 8002028:	2201      	movs	r2, #1
 800202a:	0959      	lsrs	r1, r3, #5
 800202c:	f003 031f 	and.w	r3, r3, #31
 8002030:	fa02 f303 	lsl.w	r3, r2, r3
 8002034:	4a08      	ldr	r2, [pc, #32]	; (8002058 <NVIC_Init+0x70>)
 8002036:	f842 3021 	str.w	r3, [r2, r1, lsl #2]
 800203a:	bd10      	pop	{r4, pc}
 800203c:	095a      	lsrs	r2, r3, #5
 800203e:	2101      	movs	r1, #1
 8002040:	f003 031f 	and.w	r3, r3, #31
 8002044:	4099      	lsls	r1, r3
 8002046:	f102 0320 	add.w	r3, r2, #32
 800204a:	4a03      	ldr	r2, [pc, #12]	; (8002058 <NVIC_Init+0x70>)
 800204c:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
 8002050:	bd10      	pop	{r4, pc}
 8002052:	bf00      	nop
 8002054:	e000ed00 	.word	0xe000ed00
 8002058:	e000e100 	.word	0xe000e100

0800205c <pwm_set>:
 800205c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8002060:	b086      	sub	sp, #24
 8002062:	2370      	movs	r3, #112	; 0x70
 8002064:	9301      	str	r3, [sp, #4]
 8002066:	2301      	movs	r3, #1
 8002068:	f8ad 3008 	strh.w	r3, [sp, #8]
 800206c:	2304      	movs	r3, #4
 800206e:	f8ad 300a 	strh.w	r3, [sp, #10]
 8002072:	f8df 8064 	ldr.w	r8, [pc, #100]	; 80020d8 <pwm_set+0x7c>
 8002076:	4c17      	ldr	r4, [pc, #92]	; (80020d4 <pwm_set+0x78>)
 8002078:	2302      	movs	r3, #2
 800207a:	f8ad 3010 	strh.w	r3, [sp, #16]
 800207e:	2300      	movs	r3, #0
 8002080:	f8ad 3012 	strh.w	r3, [sp, #18]
 8002084:	f8ad 3016 	strh.w	r3, [sp, #22]
 8002088:	f242 7710 	movw	r7, #10000	; 0x2710
 800208c:	f8d8 3000 	ldr.w	r3, [r8]
 8002090:	fbb3 f3f7 	udiv	r3, r3, r7
 8002094:	3b02      	subs	r3, #2
 8002096:	f44f 7280 	mov.w	r2, #256	; 0x100
 800209a:	460e      	mov	r6, r1
 800209c:	2564      	movs	r5, #100	; 0x64
 800209e:	a901      	add	r1, sp, #4
 80020a0:	4358      	muls	r0, r3
 80020a2:	fbb0 f3f5 	udiv	r3, r0, r5
 80020a6:	4620      	mov	r0, r4
 80020a8:	f8ad 2014 	strh.w	r2, [sp, #20]
 80020ac:	9303      	str	r3, [sp, #12]
 80020ae:	f7ff ff07 	bl	8001ec0 <TIM_OC1Init>
 80020b2:	f8d8 1000 	ldr.w	r1, [r8]
 80020b6:	fbb1 f1f7 	udiv	r1, r1, r7
 80020ba:	3902      	subs	r1, #2
 80020bc:	4371      	muls	r1, r6
 80020be:	4620      	mov	r0, r4
 80020c0:	fbb1 f1f5 	udiv	r1, r1, r5
 80020c4:	9103      	str	r1, [sp, #12]
 80020c6:	a901      	add	r1, sp, #4
 80020c8:	f7ff ff40 	bl	8001f4c <TIM_OC2Init>
 80020cc:	b006      	add	sp, #24
 80020ce:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80020d2:	bf00      	nop
 80020d4:	40012c00 	.word	0x40012c00
 80020d8:	20000140 	.word	0x20000140

080020dc <pwm_init>:
 80020dc:	b530      	push	{r4, r5, lr}
 80020de:	f44f 6000 	mov.w	r0, #2048	; 0x800
 80020e2:	b087      	sub	sp, #28
 80020e4:	2101      	movs	r1, #1
 80020e6:	f7ff fdb1 	bl	8001c4c <RCC_APB2PeriphClockCmd>
 80020ea:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 80020ee:	2101      	movs	r1, #1
 80020f0:	f7ff fd9e 	bl	8001c30 <RCC_AHBPeriphClockCmd>
 80020f4:	4c1d      	ldr	r4, [pc, #116]	; (800216c <pwm_init+0x90>)
 80020f6:	4d1e      	ldr	r5, [pc, #120]	; (8002170 <pwm_init+0x94>)
 80020f8:	f44f 43c0 	mov.w	r3, #24576	; 0x6000
 80020fc:	9301      	str	r3, [sp, #4]
 80020fe:	2302      	movs	r3, #2
 8002100:	f88d 3008 	strb.w	r3, [sp, #8]
 8002104:	4620      	mov	r0, r4
 8002106:	2303      	movs	r3, #3
 8002108:	a901      	add	r1, sp, #4
 800210a:	f88d 3009 	strb.w	r3, [sp, #9]
 800210e:	f000 f9f0 	bl	80024f2 <GPIO_Init>
 8002112:	4620      	mov	r0, r4
 8002114:	210d      	movs	r1, #13
 8002116:	2206      	movs	r2, #6
 8002118:	f000 fa35 	bl	8002586 <GPIO_PinAFConfig>
 800211c:	4620      	mov	r0, r4
 800211e:	210e      	movs	r1, #14
 8002120:	2206      	movs	r2, #6
 8002122:	f000 fa30 	bl	8002586 <GPIO_PinAFConfig>
 8002126:	4b13      	ldr	r3, [pc, #76]	; (8002174 <pwm_init+0x98>)
 8002128:	2400      	movs	r4, #0
 800212a:	f242 7210 	movw	r2, #10000	; 0x2710
 800212e:	4628      	mov	r0, r5
 8002130:	a903      	add	r1, sp, #12
 8002132:	681b      	ldr	r3, [r3, #0]
 8002134:	fbb3 f3f2 	udiv	r3, r3, r2
 8002138:	3b01      	subs	r3, #1
 800213a:	9304      	str	r3, [sp, #16]
 800213c:	f8ad 400c 	strh.w	r4, [sp, #12]
 8002140:	f8ad 400e 	strh.w	r4, [sp, #14]
 8002144:	f8ad 4014 	strh.w	r4, [sp, #20]
 8002148:	f8ad 4016 	strh.w	r4, [sp, #22]
 800214c:	f7ff fe5a 	bl	8001e04 <TIM_TimeBaseInit>
 8002150:	4620      	mov	r0, r4
 8002152:	4621      	mov	r1, r4
 8002154:	f7ff ff82 	bl	800205c <pwm_set>
 8002158:	4628      	mov	r0, r5
 800215a:	2101      	movs	r1, #1
 800215c:	f7ff fea2 	bl	8001ea4 <TIM_Cmd>
 8002160:	4628      	mov	r0, r5
 8002162:	2101      	movs	r1, #1
 8002164:	f7ff ff30 	bl	8001fc8 <TIM_CtrlPWMOutputs>
 8002168:	b007      	add	sp, #28
 800216a:	bd30      	pop	{r4, r5, pc}
 800216c:	48000400 	.word	0x48000400
 8002170:	40012c00 	.word	0x40012c00
 8002174:	20000140 	.word	0x20000140

08002178 <drv8834_run>:
 8002178:	1e03      	subs	r3, r0, #0
 800217a:	481a      	ldr	r0, [pc, #104]	; (80021e4 <drv8834_run+0x6c>)
 800217c:	dd09      	ble.n	8002192 <drv8834_run+0x1a>
 800217e:	6982      	ldr	r2, [r0, #24]
 8002180:	f042 0208 	orr.w	r2, r2, #8
 8002184:	6182      	str	r2, [r0, #24]
 8002186:	f04f 4290 	mov.w	r2, #1207959552	; 0x48000000
 800218a:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 800218e:	6190      	str	r0, [r2, #24]
 8002190:	e00b      	b.n	80021aa <drv8834_run+0x32>
 8002192:	8d02      	ldrh	r2, [r0, #40]	; 0x28
 8002194:	b292      	uxth	r2, r2
 8002196:	f042 0208 	orr.w	r2, r2, #8
 800219a:	8502      	strh	r2, [r0, #40]	; 0x28
 800219c:	f04f 4290 	mov.w	r2, #1207959552	; 0x48000000
 80021a0:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 80021a4:	425b      	negs	r3, r3
 80021a6:	8510      	strh	r0, [r2, #40]	; 0x28
 80021a8:	b21b      	sxth	r3, r3
 80021aa:	480e      	ldr	r0, [pc, #56]	; (80021e4 <drv8834_run+0x6c>)
 80021ac:	2900      	cmp	r1, #0
 80021ae:	bfcd      	iteet	gt
 80021b0:	8d02      	ldrhgt	r2, [r0, #40]	; 0x28
 80021b2:	6982      	ldrle	r2, [r0, #24]
 80021b4:	4249      	negle	r1, r1
 80021b6:	b292      	uxthgt	r2, r2
 80021b8:	bfd5      	itete	le
 80021ba:	b209      	sxthle	r1, r1
 80021bc:	f042 0220 	orrgt.w	r2, r2, #32
 80021c0:	f042 0220 	orrle.w	r2, r2, #32
 80021c4:	8502      	strhgt	r2, [r0, #40]	; 0x28
 80021c6:	bfd8      	it	le
 80021c8:	6182      	strle	r2, [r0, #24]
 80021ca:	2964      	cmp	r1, #100	; 0x64
 80021cc:	bfa8      	it	ge
 80021ce:	2164      	movge	r1, #100	; 0x64
 80021d0:	2b64      	cmp	r3, #100	; 0x64
 80021d2:	bfa8      	it	ge
 80021d4:	2364      	movge	r3, #100	; 0x64
 80021d6:	f1c1 0064 	rsb	r0, r1, #100	; 0x64
 80021da:	f1c3 0164 	rsb	r1, r3, #100	; 0x64
 80021de:	f7ff bf3d 	b.w	800205c <pwm_set>
 80021e2:	bf00      	nop
 80021e4:	48000400 	.word	0x48000400

080021e8 <drv8834_init>:
 80021e8:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 80021ea:	4d1f      	ldr	r5, [pc, #124]	; (8002268 <drv8834_init+0x80>)
 80021ec:	2400      	movs	r4, #0
 80021ee:	2603      	movs	r6, #3
 80021f0:	2338      	movs	r3, #56	; 0x38
 80021f2:	2701      	movs	r7, #1
 80021f4:	4628      	mov	r0, r5
 80021f6:	4669      	mov	r1, sp
 80021f8:	9300      	str	r3, [sp, #0]
 80021fa:	f88d 7004 	strb.w	r7, [sp, #4]
 80021fe:	f88d 4006 	strb.w	r4, [sp, #6]
 8002202:	f88d 6005 	strb.w	r6, [sp, #5]
 8002206:	f88d 4007 	strb.w	r4, [sp, #7]
 800220a:	f000 f972 	bl	80024f2 <GPIO_Init>
 800220e:	2308      	movs	r3, #8
 8002210:	9300      	str	r3, [sp, #0]
 8002212:	4628      	mov	r0, r5
 8002214:	2302      	movs	r3, #2
 8002216:	4669      	mov	r1, sp
 8002218:	f88d 3004 	strb.w	r3, [sp, #4]
 800221c:	f88d 4006 	strb.w	r4, [sp, #6]
 8002220:	f88d 6005 	strb.w	r6, [sp, #5]
 8002224:	f88d 4007 	strb.w	r4, [sp, #7]
 8002228:	f000 f963 	bl	80024f2 <GPIO_Init>
 800222c:	220f      	movs	r2, #15
 800222e:	4628      	mov	r0, r5
 8002230:	4631      	mov	r1, r6
 8002232:	f000 f9a8 	bl	8002586 <GPIO_PinAFConfig>
 8002236:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 800223a:	4669      	mov	r1, sp
 800223c:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8002240:	9300      	str	r3, [sp, #0]
 8002242:	f88d 7004 	strb.w	r7, [sp, #4]
 8002246:	f88d 4006 	strb.w	r4, [sp, #6]
 800224a:	f88d 6005 	strb.w	r6, [sp, #5]
 800224e:	f88d 4007 	strb.w	r4, [sp, #7]
 8002252:	f000 f94e 	bl	80024f2 <GPIO_Init>
 8002256:	2310      	movs	r3, #16
 8002258:	852b      	strh	r3, [r5, #40]	; 0x28
 800225a:	4620      	mov	r0, r4
 800225c:	4621      	mov	r1, r4
 800225e:	f7ff ff8b 	bl	8002178 <drv8834_run>
 8002262:	b003      	add	sp, #12
 8002264:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8002266:	bf00      	nop
 8002268:	48000400 	.word	0x48000400

0800226c <uart_write>:
 800226c:	4b04      	ldr	r3, [pc, #16]	; (8002280 <uart_write+0x14>)
 800226e:	69da      	ldr	r2, [r3, #28]
 8002270:	0612      	lsls	r2, r2, #24
 8002272:	d401      	bmi.n	8002278 <uart_write+0xc>
 8002274:	bf00      	nop
 8002276:	e7f9      	b.n	800226c <uart_write>
 8002278:	b280      	uxth	r0, r0
 800227a:	8518      	strh	r0, [r3, #40]	; 0x28
 800227c:	4770      	bx	lr
 800227e:	bf00      	nop
 8002280:	40013800 	.word	0x40013800

08002284 <uart_init>:
 8002284:	b530      	push	{r4, r5, lr}
 8002286:	4b2c      	ldr	r3, [pc, #176]	; (8002338 <uart_init+0xb4>)
 8002288:	4d2c      	ldr	r5, [pc, #176]	; (800233c <uart_init+0xb8>)
 800228a:	2400      	movs	r4, #0
 800228c:	601c      	str	r4, [r3, #0]
 800228e:	4b2c      	ldr	r3, [pc, #176]	; (8002340 <uart_init+0xbc>)
 8002290:	b08b      	sub	sp, #44	; 0x2c
 8002292:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 8002296:	2101      	movs	r1, #1
 8002298:	601c      	str	r4, [r3, #0]
 800229a:	f7ff fcc9 	bl	8001c30 <RCC_AHBPeriphClockCmd>
 800229e:	f44f 4080 	mov.w	r0, #16384	; 0x4000
 80022a2:	2101      	movs	r1, #1
 80022a4:	f7ff fcd2 	bl	8001c4c <RCC_APB2PeriphClockCmd>
 80022a8:	f44f 63c0 	mov.w	r3, #1536	; 0x600
 80022ac:	9302      	str	r3, [sp, #8]
 80022ae:	2302      	movs	r3, #2
 80022b0:	f88d 300c 	strb.w	r3, [sp, #12]
 80022b4:	a902      	add	r1, sp, #8
 80022b6:	2303      	movs	r3, #3
 80022b8:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80022bc:	f88d 300d 	strb.w	r3, [sp, #13]
 80022c0:	f88d 400e 	strb.w	r4, [sp, #14]
 80022c4:	f88d 400f 	strb.w	r4, [sp, #15]
 80022c8:	f000 f913 	bl	80024f2 <GPIO_Init>
 80022cc:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80022d0:	2109      	movs	r1, #9
 80022d2:	2207      	movs	r2, #7
 80022d4:	f000 f957 	bl	8002586 <GPIO_PinAFConfig>
 80022d8:	2207      	movs	r2, #7
 80022da:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80022de:	210a      	movs	r1, #10
 80022e0:	f000 f951 	bl	8002586 <GPIO_PinAFConfig>
 80022e4:	f44f 33e1 	mov.w	r3, #115200	; 0x1c200
 80022e8:	9304      	str	r3, [sp, #16]
 80022ea:	4628      	mov	r0, r5
 80022ec:	230c      	movs	r3, #12
 80022ee:	a904      	add	r1, sp, #16
 80022f0:	9308      	str	r3, [sp, #32]
 80022f2:	9405      	str	r4, [sp, #20]
 80022f4:	9406      	str	r4, [sp, #24]
 80022f6:	9407      	str	r4, [sp, #28]
 80022f8:	9409      	str	r4, [sp, #36]	; 0x24
 80022fa:	f000 f849 	bl	8002390 <USART_Init>
 80022fe:	4628      	mov	r0, r5
 8002300:	2101      	movs	r1, #1
 8002302:	f000 f8a7 	bl	8002454 <USART_Cmd>
 8002306:	2201      	movs	r2, #1
 8002308:	4628      	mov	r0, r5
 800230a:	490e      	ldr	r1, [pc, #56]	; (8002344 <uart_init+0xc0>)
 800230c:	f000 f8b2 	bl	8002474 <USART_ITConfig>
 8002310:	2325      	movs	r3, #37	; 0x25
 8002312:	f88d 4005 	strb.w	r4, [sp, #5]
 8002316:	f88d 4006 	strb.w	r4, [sp, #6]
 800231a:	a801      	add	r0, sp, #4
 800231c:	2401      	movs	r4, #1
 800231e:	f88d 3004 	strb.w	r3, [sp, #4]
 8002322:	f88d 4007 	strb.w	r4, [sp, #7]
 8002326:	f7ff fe5f 	bl	8001fe8 <NVIC_Init>
 800232a:	4628      	mov	r0, r5
 800232c:	4621      	mov	r1, r4
 800232e:	f000 f891 	bl	8002454 <USART_Cmd>
 8002332:	b00b      	add	sp, #44	; 0x2c
 8002334:	bd30      	pop	{r4, r5, pc}
 8002336:	bf00      	nop
 8002338:	20000e68 	.word	0x20000e68
 800233c:	40013800 	.word	0x40013800
 8002340:	20000e6c 	.word	0x20000e6c
 8002344:	00050105 	.word	0x00050105

08002348 <USART1_IRQHandler>:
 8002348:	b508      	push	{r3, lr}
 800234a:	480d      	ldr	r0, [pc, #52]	; (8002380 <USART1_IRQHandler+0x38>)
 800234c:	490d      	ldr	r1, [pc, #52]	; (8002384 <USART1_IRQHandler+0x3c>)
 800234e:	f000 f8ab 	bl	80024a8 <USART_GetITStatus>
 8002352:	b178      	cbz	r0, 8002374 <USART1_IRQHandler+0x2c>
 8002354:	480a      	ldr	r0, [pc, #40]	; (8002380 <USART1_IRQHandler+0x38>)
 8002356:	f000 f888 	bl	800246a <USART_ReceiveData>
 800235a:	4b0b      	ldr	r3, [pc, #44]	; (8002388 <USART1_IRQHandler+0x40>)
 800235c:	490b      	ldr	r1, [pc, #44]	; (800238c <USART1_IRQHandler+0x44>)
 800235e:	681a      	ldr	r2, [r3, #0]
 8002360:	b2c0      	uxtb	r0, r0
 8002362:	5488      	strb	r0, [r1, r2]
 8002364:	681a      	ldr	r2, [r3, #0]
 8002366:	3201      	adds	r2, #1
 8002368:	601a      	str	r2, [r3, #0]
 800236a:	681a      	ldr	r2, [r3, #0]
 800236c:	2a0f      	cmp	r2, #15
 800236e:	bf84      	itt	hi
 8002370:	2200      	movhi	r2, #0
 8002372:	601a      	strhi	r2, [r3, #0]
 8002374:	4802      	ldr	r0, [pc, #8]	; (8002380 <USART1_IRQHandler+0x38>)
 8002376:	4903      	ldr	r1, [pc, #12]	; (8002384 <USART1_IRQHandler+0x3c>)
 8002378:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800237c:	f000 b8b2 	b.w	80024e4 <USART_ClearITPendingBit>
 8002380:	40013800 	.word	0x40013800
 8002384:	00050105 	.word	0x00050105
 8002388:	20000e68 	.word	0x20000e68
 800238c:	20000e58 	.word	0x20000e58

08002390 <USART_Init>:
 8002390:	b530      	push	{r4, r5, lr}
 8002392:	4604      	mov	r4, r0
 8002394:	b099      	sub	sp, #100	; 0x64
 8002396:	460d      	mov	r5, r1
 8002398:	bf00      	nop
 800239a:	bf00      	nop
 800239c:	bf00      	nop
 800239e:	bf00      	nop
 80023a0:	bf00      	nop
 80023a2:	bf00      	nop
 80023a4:	bf00      	nop
 80023a6:	6803      	ldr	r3, [r0, #0]
 80023a8:	f023 0301 	bic.w	r3, r3, #1
 80023ac:	6003      	str	r3, [r0, #0]
 80023ae:	6843      	ldr	r3, [r0, #4]
 80023b0:	f423 5240 	bic.w	r2, r3, #12288	; 0x3000
 80023b4:	688b      	ldr	r3, [r1, #8]
 80023b6:	68c9      	ldr	r1, [r1, #12]
 80023b8:	4313      	orrs	r3, r2
 80023ba:	6043      	str	r3, [r0, #4]
 80023bc:	686a      	ldr	r2, [r5, #4]
 80023be:	6803      	ldr	r3, [r0, #0]
 80023c0:	4311      	orrs	r1, r2
 80023c2:	692a      	ldr	r2, [r5, #16]
 80023c4:	f423 53b0 	bic.w	r3, r3, #5632	; 0x1600
 80023c8:	430a      	orrs	r2, r1
 80023ca:	f023 030c 	bic.w	r3, r3, #12
 80023ce:	4313      	orrs	r3, r2
 80023d0:	6003      	str	r3, [r0, #0]
 80023d2:	6883      	ldr	r3, [r0, #8]
 80023d4:	f423 7240 	bic.w	r2, r3, #768	; 0x300
 80023d8:	696b      	ldr	r3, [r5, #20]
 80023da:	4313      	orrs	r3, r2
 80023dc:	6083      	str	r3, [r0, #8]
 80023de:	a801      	add	r0, sp, #4
 80023e0:	f7ff fab0 	bl	8001944 <RCC_GetClocksFreq>
 80023e4:	4b17      	ldr	r3, [pc, #92]	; (8002444 <USART_Init+0xb4>)
 80023e6:	429c      	cmp	r4, r3
 80023e8:	d101      	bne.n	80023ee <USART_Init+0x5e>
 80023ea:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80023ec:	e00e      	b.n	800240c <USART_Init+0x7c>
 80023ee:	4b16      	ldr	r3, [pc, #88]	; (8002448 <USART_Init+0xb8>)
 80023f0:	429c      	cmp	r4, r3
 80023f2:	d101      	bne.n	80023f8 <USART_Init+0x68>
 80023f4:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80023f6:	e009      	b.n	800240c <USART_Init+0x7c>
 80023f8:	4b14      	ldr	r3, [pc, #80]	; (800244c <USART_Init+0xbc>)
 80023fa:	429c      	cmp	r4, r3
 80023fc:	d101      	bne.n	8002402 <USART_Init+0x72>
 80023fe:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8002400:	e004      	b.n	800240c <USART_Init+0x7c>
 8002402:	4b13      	ldr	r3, [pc, #76]	; (8002450 <USART_Init+0xc0>)
 8002404:	429c      	cmp	r4, r3
 8002406:	bf0c      	ite	eq
 8002408:	9b12      	ldreq	r3, [sp, #72]	; 0x48
 800240a:	9b13      	ldrne	r3, [sp, #76]	; 0x4c
 800240c:	6822      	ldr	r2, [r4, #0]
 800240e:	6829      	ldr	r1, [r5, #0]
 8002410:	f412 4f00 	tst.w	r2, #32768	; 0x8000
 8002414:	bf18      	it	ne
 8002416:	005b      	lslne	r3, r3, #1
 8002418:	fbb3 f2f1 	udiv	r2, r3, r1
 800241c:	fb01 3312 	mls	r3, r1, r2, r3
 8002420:	ebb3 0f51 	cmp.w	r3, r1, lsr #1
 8002424:	6823      	ldr	r3, [r4, #0]
 8002426:	bf28      	it	cs
 8002428:	3201      	addcs	r2, #1
 800242a:	041b      	lsls	r3, r3, #16
 800242c:	bf41      	itttt	mi
 800242e:	f64f 73f0 	movwmi	r3, #65520	; 0xfff0
 8002432:	f3c2 0142 	ubfxmi	r1, r2, #1, #3
 8002436:	4013      	andmi	r3, r2
 8002438:	ea41 0203 	orrmi.w	r2, r1, r3
 800243c:	b292      	uxth	r2, r2
 800243e:	81a2      	strh	r2, [r4, #12]
 8002440:	b019      	add	sp, #100	; 0x64
 8002442:	bd30      	pop	{r4, r5, pc}
 8002444:	40013800 	.word	0x40013800
 8002448:	40004400 	.word	0x40004400
 800244c:	40004800 	.word	0x40004800
 8002450:	40004c00 	.word	0x40004c00

08002454 <USART_Cmd>:
 8002454:	bf00      	nop
 8002456:	bf00      	nop
 8002458:	6803      	ldr	r3, [r0, #0]
 800245a:	b111      	cbz	r1, 8002462 <USART_Cmd+0xe>
 800245c:	f043 0301 	orr.w	r3, r3, #1
 8002460:	e001      	b.n	8002466 <USART_Cmd+0x12>
 8002462:	f023 0301 	bic.w	r3, r3, #1
 8002466:	6003      	str	r3, [r0, #0]
 8002468:	4770      	bx	lr

0800246a <USART_ReceiveData>:
 800246a:	bf00      	nop
 800246c:	8c80      	ldrh	r0, [r0, #36]	; 0x24
 800246e:	f3c0 0008 	ubfx	r0, r0, #0, #9
 8002472:	4770      	bx	lr

08002474 <USART_ITConfig>:
 8002474:	b510      	push	{r4, lr}
 8002476:	bf00      	nop
 8002478:	bf00      	nop
 800247a:	bf00      	nop
 800247c:	f3c1 2407 	ubfx	r4, r1, #8, #8
 8002480:	2301      	movs	r3, #1
 8002482:	b2c9      	uxtb	r1, r1
 8002484:	2c02      	cmp	r4, #2
 8002486:	fa03 f301 	lsl.w	r3, r3, r1
 800248a:	d101      	bne.n	8002490 <USART_ITConfig+0x1c>
 800248c:	3004      	adds	r0, #4
 800248e:	e002      	b.n	8002496 <USART_ITConfig+0x22>
 8002490:	2c03      	cmp	r4, #3
 8002492:	bf08      	it	eq
 8002494:	3008      	addeq	r0, #8
 8002496:	b112      	cbz	r2, 800249e <USART_ITConfig+0x2a>
 8002498:	6802      	ldr	r2, [r0, #0]
 800249a:	4313      	orrs	r3, r2
 800249c:	e002      	b.n	80024a4 <USART_ITConfig+0x30>
 800249e:	6802      	ldr	r2, [r0, #0]
 80024a0:	ea22 0303 	bic.w	r3, r2, r3
 80024a4:	6003      	str	r3, [r0, #0]
 80024a6:	bd10      	pop	{r4, pc}

080024a8 <USART_GetITStatus>:
 80024a8:	b510      	push	{r4, lr}
 80024aa:	bf00      	nop
 80024ac:	bf00      	nop
 80024ae:	f3c1 2207 	ubfx	r2, r1, #8, #8
 80024b2:	b2cc      	uxtb	r4, r1
 80024b4:	2301      	movs	r3, #1
 80024b6:	2a01      	cmp	r2, #1
 80024b8:	fa03 f304 	lsl.w	r3, r3, r4
 80024bc:	d101      	bne.n	80024c2 <USART_GetITStatus+0x1a>
 80024be:	6802      	ldr	r2, [r0, #0]
 80024c0:	e003      	b.n	80024ca <USART_GetITStatus+0x22>
 80024c2:	2a02      	cmp	r2, #2
 80024c4:	bf0c      	ite	eq
 80024c6:	6842      	ldreq	r2, [r0, #4]
 80024c8:	6882      	ldrne	r2, [r0, #8]
 80024ca:	4013      	ands	r3, r2
 80024cc:	69c2      	ldr	r2, [r0, #28]
 80024ce:	b13b      	cbz	r3, 80024e0 <USART_GetITStatus+0x38>
 80024d0:	0c09      	lsrs	r1, r1, #16
 80024d2:	2301      	movs	r3, #1
 80024d4:	408b      	lsls	r3, r1
 80024d6:	4213      	tst	r3, r2
 80024d8:	bf14      	ite	ne
 80024da:	2001      	movne	r0, #1
 80024dc:	2000      	moveq	r0, #0
 80024de:	bd10      	pop	{r4, pc}
 80024e0:	4618      	mov	r0, r3
 80024e2:	bd10      	pop	{r4, pc}

080024e4 <USART_ClearITPendingBit>:
 80024e4:	bf00      	nop
 80024e6:	bf00      	nop
 80024e8:	2301      	movs	r3, #1
 80024ea:	0c09      	lsrs	r1, r1, #16
 80024ec:	408b      	lsls	r3, r1
 80024ee:	6203      	str	r3, [r0, #32]
 80024f0:	4770      	bx	lr

080024f2 <GPIO_Init>:
 80024f2:	b5f0      	push	{r4, r5, r6, r7, lr}
 80024f4:	bf00      	nop
 80024f6:	bf00      	nop
 80024f8:	bf00      	nop
 80024fa:	bf00      	nop
 80024fc:	2300      	movs	r3, #0
 80024fe:	680e      	ldr	r6, [r1, #0]
 8002500:	461c      	mov	r4, r3
 8002502:	2501      	movs	r5, #1
 8002504:	40a5      	lsls	r5, r4
 8002506:	ea05 0e06 	and.w	lr, r5, r6
 800250a:	45ae      	cmp	lr, r5
 800250c:	d12d      	bne.n	800256a <GPIO_Init+0x78>
 800250e:	790f      	ldrb	r7, [r1, #4]
 8002510:	1e7a      	subs	r2, r7, #1
 8002512:	2a01      	cmp	r2, #1
 8002514:	d817      	bhi.n	8002546 <GPIO_Init+0x54>
 8002516:	bf00      	nop
 8002518:	2203      	movs	r2, #3
 800251a:	6885      	ldr	r5, [r0, #8]
 800251c:	409a      	lsls	r2, r3
 800251e:	ea25 0202 	bic.w	r2, r5, r2
 8002522:	6082      	str	r2, [r0, #8]
 8002524:	794d      	ldrb	r5, [r1, #5]
 8002526:	6882      	ldr	r2, [r0, #8]
 8002528:	409d      	lsls	r5, r3
 800252a:	4315      	orrs	r5, r2
 800252c:	6085      	str	r5, [r0, #8]
 800252e:	bf00      	nop
 8002530:	8882      	ldrh	r2, [r0, #4]
 8002532:	b292      	uxth	r2, r2
 8002534:	ea22 020e 	bic.w	r2, r2, lr
 8002538:	8082      	strh	r2, [r0, #4]
 800253a:	798a      	ldrb	r2, [r1, #6]
 800253c:	8885      	ldrh	r5, [r0, #4]
 800253e:	40a2      	lsls	r2, r4
 8002540:	432a      	orrs	r2, r5
 8002542:	b292      	uxth	r2, r2
 8002544:	8082      	strh	r2, [r0, #4]
 8002546:	2203      	movs	r2, #3
 8002548:	6805      	ldr	r5, [r0, #0]
 800254a:	409a      	lsls	r2, r3
 800254c:	43d2      	mvns	r2, r2
 800254e:	4015      	ands	r5, r2
 8002550:	6005      	str	r5, [r0, #0]
 8002552:	6805      	ldr	r5, [r0, #0]
 8002554:	409f      	lsls	r7, r3
 8002556:	432f      	orrs	r7, r5
 8002558:	6007      	str	r7, [r0, #0]
 800255a:	68c7      	ldr	r7, [r0, #12]
 800255c:	4017      	ands	r7, r2
 800255e:	79ca      	ldrb	r2, [r1, #7]
 8002560:	fa02 f503 	lsl.w	r5, r2, r3
 8002564:	ea47 0205 	orr.w	r2, r7, r5
 8002568:	60c2      	str	r2, [r0, #12]
 800256a:	3401      	adds	r4, #1
 800256c:	2c10      	cmp	r4, #16
 800256e:	f103 0302 	add.w	r3, r3, #2
 8002572:	d1c6      	bne.n	8002502 <GPIO_Init+0x10>
 8002574:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002576 <GPIO_SetBits>:
 8002576:	bf00      	nop
 8002578:	bf00      	nop
 800257a:	6181      	str	r1, [r0, #24]
 800257c:	4770      	bx	lr

0800257e <GPIO_ResetBits>:
 800257e:	bf00      	nop
 8002580:	bf00      	nop
 8002582:	8501      	strh	r1, [r0, #40]	; 0x28
 8002584:	4770      	bx	lr

08002586 <GPIO_PinAFConfig>:
 8002586:	b510      	push	{r4, lr}
 8002588:	bf00      	nop
 800258a:	bf00      	nop
 800258c:	bf00      	nop
 800258e:	f001 0307 	and.w	r3, r1, #7
 8002592:	08c9      	lsrs	r1, r1, #3
 8002594:	eb00 0081 	add.w	r0, r0, r1, lsl #2
 8002598:	009b      	lsls	r3, r3, #2
 800259a:	6a04      	ldr	r4, [r0, #32]
 800259c:	210f      	movs	r1, #15
 800259e:	4099      	lsls	r1, r3
 80025a0:	ea24 0101 	bic.w	r1, r4, r1
 80025a4:	6201      	str	r1, [r0, #32]
 80025a6:	6a01      	ldr	r1, [r0, #32]
 80025a8:	409a      	lsls	r2, r3
 80025aa:	430a      	orrs	r2, r1
 80025ac:	6202      	str	r2, [r0, #32]
 80025ae:	bd10      	pop	{r4, pc}

080025b0 <gpio_init>:
 80025b0:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
 80025b4:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 80025b8:	2101      	movs	r1, #1
 80025ba:	f7ff fb39 	bl	8001c30 <RCC_AHBPeriphClockCmd>
 80025be:	4d21      	ldr	r5, [pc, #132]	; (8002644 <gpio_init+0x94>)
 80025c0:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 80025c4:	2101      	movs	r1, #1
 80025c6:	f7ff fb33 	bl	8001c30 <RCC_AHBPeriphClockCmd>
 80025ca:	f44f 2000 	mov.w	r0, #524288	; 0x80000
 80025ce:	2101      	movs	r1, #1
 80025d0:	f7ff fb2e 	bl	8001c30 <RCC_AHBPeriphClockCmd>
 80025d4:	2400      	movs	r4, #0
 80025d6:	2603      	movs	r6, #3
 80025d8:	f44f 4900 	mov.w	r9, #32768	; 0x8000
 80025dc:	2701      	movs	r7, #1
 80025de:	4628      	mov	r0, r5
 80025e0:	4669      	mov	r1, sp
 80025e2:	f88d 7004 	strb.w	r7, [sp, #4]
 80025e6:	f8cd 9000 	str.w	r9, [sp]
 80025ea:	f88d 4006 	strb.w	r4, [sp, #6]
 80025ee:	f88d 6005 	strb.w	r6, [sp, #5]
 80025f2:	f88d 4007 	strb.w	r4, [sp, #7]
 80025f6:	f7ff ff7c 	bl	80024f2 <GPIO_Init>
 80025fa:	f88d 7004 	strb.w	r7, [sp, #4]
 80025fe:	4f12      	ldr	r7, [pc, #72]	; (8002648 <gpio_init+0x98>)
 8002600:	f88d 4006 	strb.w	r4, [sp, #6]
 8002604:	f44f 5800 	mov.w	r8, #8192	; 0x2000
 8002608:	4638      	mov	r0, r7
 800260a:	4669      	mov	r1, sp
 800260c:	f8cd 8000 	str.w	r8, [sp]
 8002610:	f88d 6005 	strb.w	r6, [sp, #5]
 8002614:	f88d 4007 	strb.w	r4, [sp, #7]
 8002618:	f7ff ff6b 	bl	80024f2 <GPIO_Init>
 800261c:	f44f 7300 	mov.w	r3, #512	; 0x200
 8002620:	4628      	mov	r0, r5
 8002622:	4669      	mov	r1, sp
 8002624:	9300      	str	r3, [sp, #0]
 8002626:	f88d 4004 	strb.w	r4, [sp, #4]
 800262a:	f88d 6005 	strb.w	r6, [sp, #5]
 800262e:	f88d 4007 	strb.w	r4, [sp, #7]
 8002632:	f7ff ff5e 	bl	80024f2 <GPIO_Init>
 8002636:	f8c5 9018 	str.w	r9, [r5, #24]
 800263a:	f8c7 8018 	str.w	r8, [r7, #24]
 800263e:	b003      	add	sp, #12
 8002640:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8002644:	48000400 	.word	0x48000400
 8002648:	48000800 	.word	0x48000800

0800264c <led_on>:
 800264c:	0402      	lsls	r2, r0, #16
 800264e:	bf42      	ittt	mi
 8002650:	4b05      	ldrmi	r3, [pc, #20]	; (8002668 <led_on+0x1c>)
 8002652:	f44f 4200 	movmi.w	r2, #32768	; 0x8000
 8002656:	619a      	strmi	r2, [r3, #24]
 8002658:	0483      	lsls	r3, r0, #18
 800265a:	bf42      	ittt	mi
 800265c:	4b03      	ldrmi	r3, [pc, #12]	; (800266c <led_on+0x20>)
 800265e:	f44f 5200 	movmi.w	r2, #8192	; 0x2000
 8002662:	851a      	strhmi	r2, [r3, #40]	; 0x28
 8002664:	4770      	bx	lr
 8002666:	bf00      	nop
 8002668:	48000400 	.word	0x48000400
 800266c:	48000800 	.word	0x48000800

08002670 <led_off>:
 8002670:	0402      	lsls	r2, r0, #16
 8002672:	bf42      	ittt	mi
 8002674:	4b05      	ldrmi	r3, [pc, #20]	; (800268c <led_off+0x1c>)
 8002676:	f44f 4200 	movmi.w	r2, #32768	; 0x8000
 800267a:	851a      	strhmi	r2, [r3, #40]	; 0x28
 800267c:	0483      	lsls	r3, r0, #18
 800267e:	bf42      	ittt	mi
 8002680:	4b03      	ldrmi	r3, [pc, #12]	; (8002690 <led_off+0x20>)
 8002682:	f44f 5200 	movmi.w	r2, #8192	; 0x2000
 8002686:	619a      	strmi	r2, [r3, #24]
 8002688:	4770      	bx	lr
 800268a:	bf00      	nop
 800268c:	48000400 	.word	0x48000400
 8002690:	48000800 	.word	0x48000800

08002694 <get_key>:
 8002694:	4b02      	ldr	r3, [pc, #8]	; (80026a0 <get_key+0xc>)
 8002696:	8a18      	ldrh	r0, [r3, #16]
 8002698:	43c0      	mvns	r0, r0
 800269a:	f400 7000 	and.w	r0, r0, #512	; 0x200
 800269e:	4770      	bx	lr
 80026a0:	48000400 	.word	0x48000400

080026a4 <SystemInit>:
 80026a4:	4a39      	ldr	r2, [pc, #228]	; (800278c <SystemInit+0xe8>)
 80026a6:	f8d2 3088 	ldr.w	r3, [r2, #136]	; 0x88
 80026aa:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
 80026ae:	f8c2 3088 	str.w	r3, [r2, #136]	; 0x88
 80026b2:	4b37      	ldr	r3, [pc, #220]	; (8002790 <SystemInit+0xec>)
 80026b4:	681a      	ldr	r2, [r3, #0]
 80026b6:	f042 0201 	orr.w	r2, r2, #1
 80026ba:	601a      	str	r2, [r3, #0]
 80026bc:	6859      	ldr	r1, [r3, #4]
 80026be:	4a35      	ldr	r2, [pc, #212]	; (8002794 <SystemInit+0xf0>)
 80026c0:	400a      	ands	r2, r1
 80026c2:	605a      	str	r2, [r3, #4]
 80026c4:	681a      	ldr	r2, [r3, #0]
 80026c6:	f022 7284 	bic.w	r2, r2, #17301504	; 0x1080000
 80026ca:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
 80026ce:	601a      	str	r2, [r3, #0]
 80026d0:	681a      	ldr	r2, [r3, #0]
 80026d2:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 80026d6:	601a      	str	r2, [r3, #0]
 80026d8:	685a      	ldr	r2, [r3, #4]
 80026da:	f422 02fe 	bic.w	r2, r2, #8323072	; 0x7f0000
 80026de:	605a      	str	r2, [r3, #4]
 80026e0:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 80026e2:	f022 020f 	bic.w	r2, r2, #15
 80026e6:	62da      	str	r2, [r3, #44]	; 0x2c
 80026e8:	6b19      	ldr	r1, [r3, #48]	; 0x30
 80026ea:	4a2b      	ldr	r2, [pc, #172]	; (8002798 <SystemInit+0xf4>)
 80026ec:	b082      	sub	sp, #8
 80026ee:	400a      	ands	r2, r1
 80026f0:	631a      	str	r2, [r3, #48]	; 0x30
 80026f2:	2200      	movs	r2, #0
 80026f4:	609a      	str	r2, [r3, #8]
 80026f6:	9200      	str	r2, [sp, #0]
 80026f8:	9201      	str	r2, [sp, #4]
 80026fa:	681a      	ldr	r2, [r3, #0]
 80026fc:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
 8002700:	601a      	str	r2, [r3, #0]
 8002702:	681a      	ldr	r2, [r3, #0]
 8002704:	f402 3200 	and.w	r2, r2, #131072	; 0x20000
 8002708:	9201      	str	r2, [sp, #4]
 800270a:	9a00      	ldr	r2, [sp, #0]
 800270c:	3201      	adds	r2, #1
 800270e:	9200      	str	r2, [sp, #0]
 8002710:	9a01      	ldr	r2, [sp, #4]
 8002712:	b91a      	cbnz	r2, 800271c <SystemInit+0x78>
 8002714:	9a00      	ldr	r2, [sp, #0]
 8002716:	f5b2 4fa0 	cmp.w	r2, #20480	; 0x5000
 800271a:	d1f2      	bne.n	8002702 <SystemInit+0x5e>
 800271c:	681a      	ldr	r2, [r3, #0]
 800271e:	f412 3200 	ands.w	r2, r2, #131072	; 0x20000
 8002722:	bf18      	it	ne
 8002724:	2201      	movne	r2, #1
 8002726:	9201      	str	r2, [sp, #4]
 8002728:	9a01      	ldr	r2, [sp, #4]
 800272a:	2a01      	cmp	r2, #1
 800272c:	d005      	beq.n	800273a <SystemInit+0x96>
 800272e:	4b17      	ldr	r3, [pc, #92]	; (800278c <SystemInit+0xe8>)
 8002730:	f04f 6200 	mov.w	r2, #134217728	; 0x8000000
 8002734:	609a      	str	r2, [r3, #8]
 8002736:	b002      	add	sp, #8
 8002738:	4770      	bx	lr
 800273a:	4a18      	ldr	r2, [pc, #96]	; (800279c <SystemInit+0xf8>)
 800273c:	2112      	movs	r1, #18
 800273e:	6011      	str	r1, [r2, #0]
 8002740:	685a      	ldr	r2, [r3, #4]
 8002742:	605a      	str	r2, [r3, #4]
 8002744:	685a      	ldr	r2, [r3, #4]
 8002746:	605a      	str	r2, [r3, #4]
 8002748:	685a      	ldr	r2, [r3, #4]
 800274a:	f442 6280 	orr.w	r2, r2, #1024	; 0x400
 800274e:	605a      	str	r2, [r3, #4]
 8002750:	685a      	ldr	r2, [r3, #4]
 8002752:	f422 127c 	bic.w	r2, r2, #4128768	; 0x3f0000
 8002756:	605a      	str	r2, [r3, #4]
 8002758:	685a      	ldr	r2, [r3, #4]
 800275a:	f442 12e8 	orr.w	r2, r2, #1900544	; 0x1d0000
 800275e:	605a      	str	r2, [r3, #4]
 8002760:	681a      	ldr	r2, [r3, #0]
 8002762:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
 8002766:	601a      	str	r2, [r3, #0]
 8002768:	6819      	ldr	r1, [r3, #0]
 800276a:	4a09      	ldr	r2, [pc, #36]	; (8002790 <SystemInit+0xec>)
 800276c:	0189      	lsls	r1, r1, #6
 800276e:	d5fb      	bpl.n	8002768 <SystemInit+0xc4>
 8002770:	6851      	ldr	r1, [r2, #4]
 8002772:	f021 0103 	bic.w	r1, r1, #3
 8002776:	6051      	str	r1, [r2, #4]
 8002778:	6851      	ldr	r1, [r2, #4]
 800277a:	f041 0102 	orr.w	r1, r1, #2
 800277e:	6051      	str	r1, [r2, #4]
 8002780:	685a      	ldr	r2, [r3, #4]
 8002782:	f002 020c 	and.w	r2, r2, #12
 8002786:	2a08      	cmp	r2, #8
 8002788:	d1fa      	bne.n	8002780 <SystemInit+0xdc>
 800278a:	e7d0      	b.n	800272e <SystemInit+0x8a>
 800278c:	e000ed00 	.word	0xe000ed00
 8002790:	40021000 	.word	0x40021000
 8002794:	f87fc00c 	.word	0xf87fc00c
 8002798:	ff00fccc 	.word	0xff00fccc
 800279c:	40022000 	.word	0x40022000

080027a0 <sys_tick_init>:
 80027a0:	4b05      	ldr	r3, [pc, #20]	; (80027b8 <sys_tick_init+0x18>)
 80027a2:	4a06      	ldr	r2, [pc, #24]	; (80027bc <sys_tick_init+0x1c>)
 80027a4:	605a      	str	r2, [r3, #4]
 80027a6:	4a06      	ldr	r2, [pc, #24]	; (80027c0 <sys_tick_init+0x20>)
 80027a8:	21f0      	movs	r1, #240	; 0xf0
 80027aa:	f882 1023 	strb.w	r1, [r2, #35]	; 0x23
 80027ae:	2200      	movs	r2, #0
 80027b0:	609a      	str	r2, [r3, #8]
 80027b2:	2207      	movs	r2, #7
 80027b4:	601a      	str	r2, [r3, #0]
 80027b6:	4770      	bx	lr
 80027b8:	e000e010 	.word	0xe000e010
 80027bc:	00029040 	.word	0x00029040
 80027c0:	e000ed00 	.word	0xe000ed00

080027c4 <sleep>:
 80027c4:	bf30      	wfi
 80027c6:	4770      	bx	lr

080027c8 <sytem_clock_init>:
 80027c8:	f7ff bf6c 	b.w	80026a4 <SystemInit>

080027cc <lib_low_level_init>:
 80027cc:	b508      	push	{r3, lr}
 80027ce:	f7ff fffb 	bl	80027c8 <sytem_clock_init>
 80027d2:	f7ff feed 	bl	80025b0 <gpio_init>
 80027d6:	f7ff fd55 	bl	8002284 <uart_init>
 80027da:	f7ff fa53 	bl	8001c84 <timer_init>
 80027de:	f7ff fc7d 	bl	80020dc <pwm_init>
 80027e2:	f7ff fd01 	bl	80021e8 <drv8834_init>
 80027e6:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80027ea:	f7fe bfaf 	b.w	800174c <i2c_0_init>
	...

080027f0 <_init>:
 80027f0:	e1a0c00d 	mov	ip, sp
 80027f4:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
 80027f8:	e24cb004 	sub	fp, ip, #4
 80027fc:	e24bd028 	sub	sp, fp, #40	; 0x28
 8002800:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
 8002804:	e12fff1e 	bx	lr

08002808 <_fini>:
 8002808:	e1a0c00d 	mov	ip, sp
 800280c:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
 8002810:	e24cb004 	sub	fp, ip, #4
 8002814:	e24bd028 	sub	sp, fp, #40	; 0x28
 8002818:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
 800281c:	e12fff1e 	bx	lr
 8002820:	6f727265 	.word	0x6f727265
 8002824:	6f632072 	.word	0x6f632072
 8002828:	25206564 	.word	0x25206564
 800282c:	75253a75 	.word	0x75253a75
 8002830:	000a      	.short	0x000a
 8002832:	770a      	.short	0x770a
 8002834:	6f636c65 	.word	0x6f636c65
 8002838:	7420656d 	.word	0x7420656d
 800283c:	7553206f 	.word	0x7553206f
 8002840:	6168757a 	.word	0x6168757a
 8002844:	5e20534f 	.word	0x5e20534f
 8002848:	32205e5f 	.word	0x32205e5f
 800284c:	362e302e 	.word	0x362e302e
 8002850:	4955420a 	.word	0x4955420a
 8002854:	4d20444c 	.word	0x4d20444c
 8002858:	31207261 	.word	0x31207261
 800285c:	30322034 	.word	0x30322034
 8002860:	31203631 	.word	0x31203631
 8002864:	36333a32 	.word	0x36333a32
 8002868:	0a37313a 	.word	0x0a37313a
 800286c:	73797300 	.word	0x73797300
 8002870:	206d6574 	.word	0x206d6574
 8002874:	726f6261 	.word	0x726f6261
 8002878:	0a646574 	.word	0x0a646574
 800287c:	00          	.byte	0x00
 800287d:	73          	.byte	0x73
 800287e:	6474      	.short	0x6474
 8002880:	69206f69 	.word	0x69206f69
 8002884:	2074696e 	.word	0x2074696e
 8002888:	656e6f64 	.word	0x656e6f64
 800288c:	0000000a 	.word	0x0000000a

08002890 <__EH_FRAME_BEGIN__>:
 8002890:	00000000                                ....
