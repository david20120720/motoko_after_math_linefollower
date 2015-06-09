
bin/main.elf:     file format elf32-littlearm


Disassembly of section .text:

08000188 <thread_ending>:
 8000188:	b672      	cpsid	i
 800018a:	4b05      	ldr	r3, [pc, #20]	; (80001a0 <thread_ending+0x18>)
 800018c:	4a05      	ldr	r2, [pc, #20]	; (80001a4 <thread_ending+0x1c>)
 800018e:	681b      	ldr	r3, [r3, #0]
 8000190:	210c      	movs	r1, #12
 8000192:	fb01 2303 	mla	r3, r1, r3, r2
 8000196:	2200      	movs	r2, #0
 8000198:	605a      	str	r2, [r3, #4]
 800019a:	b662      	cpsie	i
 800019c:	bf00      	nop
 800019e:	e7fd      	b.n	800019c <thread_ending+0x14>
 80001a0:	200002f4 	.word	0x200002f4
 80001a4:	200002ac 	.word	0x200002ac

080001a8 <null_thread>:
 80001a8:	b508      	push	{r3, lr}
 80001aa:	f001 fe1d 	bl	8001de8 <sleep>
 80001ae:	e7fc      	b.n	80001aa <null_thread+0x2>

080001b0 <scheduler>:
 80001b0:	b570      	push	{r4, r5, r6, lr}
 80001b2:	2200      	movs	r2, #0
 80001b4:	4611      	mov	r1, r2
 80001b6:	4b15      	ldr	r3, [pc, #84]	; (800020c <scheduler+0x5c>)
 80001b8:	200c      	movs	r0, #12
 80001ba:	fb00 f501 	mul.w	r5, r0, r1
 80001be:	195e      	adds	r6, r3, r5
 80001c0:	6874      	ldr	r4, [r6, #4]
 80001c2:	f014 0f02 	tst.w	r4, #2
 80001c6:	461c      	mov	r4, r3
 80001c8:	d10a      	bne.n	80001e0 <scheduler+0x30>
 80001ca:	6876      	ldr	r6, [r6, #4]
 80001cc:	07f6      	lsls	r6, r6, #31
 80001ce:	d507      	bpl.n	80001e0 <scheduler+0x30>
 80001d0:	4350      	muls	r0, r2
 80001d2:	5b5d      	ldrh	r5, [r3, r5]
 80001d4:	5a18      	ldrh	r0, [r3, r0]
 80001d6:	b2ad      	uxth	r5, r5
 80001d8:	b280      	uxth	r0, r0
 80001da:	4285      	cmp	r5, r0
 80001dc:	bf38      	it	cc
 80001de:	460a      	movcc	r2, r1
 80001e0:	200c      	movs	r0, #12
 80001e2:	4348      	muls	r0, r1
 80001e4:	5a1d      	ldrh	r5, [r3, r0]
 80001e6:	b2ad      	uxth	r5, r5
 80001e8:	b125      	cbz	r5, 80001f4 <scheduler+0x44>
 80001ea:	5a1d      	ldrh	r5, [r3, r0]
 80001ec:	b2ad      	uxth	r5, r5
 80001ee:	3d01      	subs	r5, #1
 80001f0:	b2ad      	uxth	r5, r5
 80001f2:	521d      	strh	r5, [r3, r0]
 80001f4:	3101      	adds	r1, #1
 80001f6:	2906      	cmp	r1, #6
 80001f8:	d1dd      	bne.n	80001b6 <scheduler+0x6>
 80001fa:	230c      	movs	r3, #12
 80001fc:	4353      	muls	r3, r2
 80001fe:	18e1      	adds	r1, r4, r3
 8000200:	8849      	ldrh	r1, [r1, #2]
 8000202:	b289      	uxth	r1, r1
 8000204:	52e1      	strh	r1, [r4, r3]
 8000206:	4b02      	ldr	r3, [pc, #8]	; (8000210 <scheduler+0x60>)
 8000208:	601a      	str	r2, [r3, #0]
 800020a:	bd70      	pop	{r4, r5, r6, pc}
 800020c:	200002ac 	.word	0x200002ac
 8000210:	200002f4 	.word	0x200002f4

08000214 <SysTick_Handler>:
 8000214:	e92d 0ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 8000218:	f3ef 8208 	mrs	r2, MSP
 800021c:	4c0d      	ldr	r4, [pc, #52]	; (8000254 <SysTick_Handler+0x40>)
 800021e:	4d0e      	ldr	r5, [pc, #56]	; (8000258 <SysTick_Handler+0x44>)
 8000220:	6823      	ldr	r3, [r4, #0]
 8000222:	3301      	adds	r3, #1
 8000224:	d005      	beq.n	8000232 <SysTick_Handler+0x1e>
 8000226:	6823      	ldr	r3, [r4, #0]
 8000228:	210c      	movs	r1, #12
 800022a:	fb01 5303 	mla	r3, r1, r3, r5
 800022e:	609a      	str	r2, [r3, #8]
 8000230:	e001      	b.n	8000236 <SysTick_Handler+0x22>
 8000232:	2300      	movs	r3, #0
 8000234:	6023      	str	r3, [r4, #0]
 8000236:	f7ff ffbb 	bl	80001b0 <scheduler>
 800023a:	6823      	ldr	r3, [r4, #0]
 800023c:	220c      	movs	r2, #12
 800023e:	fb02 5503 	mla	r5, r2, r3, r5
 8000242:	f06f 0306 	mvn.w	r3, #6
 8000246:	68aa      	ldr	r2, [r5, #8]
 8000248:	469e      	mov	lr, r3
 800024a:	f382 8808 	msr	MSP, r2
 800024e:	e8bd 0ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 8000252:	4770      	bx	lr
 8000254:	200002f4 	.word	0x200002f4
 8000258:	200002ac 	.word	0x200002ac

0800025c <sched_off>:
 800025c:	b672      	cpsid	i
 800025e:	4770      	bx	lr

08000260 <sched_on>:
 8000260:	b662      	cpsie	i
 8000262:	4770      	bx	lr

08000264 <yield>:
 8000264:	bf00      	nop
 8000266:	4770      	bx	lr

08000268 <get_thread_id>:
 8000268:	b082      	sub	sp, #8
 800026a:	b672      	cpsid	i
 800026c:	4b03      	ldr	r3, [pc, #12]	; (800027c <get_thread_id+0x14>)
 800026e:	681b      	ldr	r3, [r3, #0]
 8000270:	9301      	str	r3, [sp, #4]
 8000272:	b662      	cpsie	i
 8000274:	9801      	ldr	r0, [sp, #4]
 8000276:	b002      	add	sp, #8
 8000278:	4770      	bx	lr
 800027a:	bf00      	nop
 800027c:	200002f4 	.word	0x200002f4

08000280 <kernel_start>:
 8000280:	b508      	push	{r3, lr}
 8000282:	f001 fd9f 	bl	8001dc4 <sys_tick_init>
 8000286:	bf00      	nop
 8000288:	e7fd      	b.n	8000286 <kernel_start+0x6>
	...

0800028c <create_thread>:
 800028c:	f022 0203 	bic.w	r2, r2, #3
 8000290:	3a40      	subs	r2, #64	; 0x40
 8000292:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8000296:	eb01 0c02 	add.w	ip, r1, r2
 800029a:	f102 0834 	add.w	r8, r2, #52	; 0x34
 800029e:	f102 0938 	add.w	r9, r2, #56	; 0x38
 80002a2:	323c      	adds	r2, #60	; 0x3c
 80002a4:	4488      	add	r8, r1
 80002a6:	4489      	add	r9, r1
 80002a8:	4607      	mov	r7, r0
 80002aa:	4411      	add	r1, r2
 80002ac:	2200      	movs	r2, #0
 80002ae:	b672      	cpsid	i
 80002b0:	4e11      	ldr	r6, [pc, #68]	; (80002f8 <create_thread+0x6c>)
 80002b2:	250c      	movs	r5, #12
 80002b4:	4355      	muls	r5, r2
 80002b6:	1974      	adds	r4, r6, r5
 80002b8:	6860      	ldr	r0, [r4, #4]
 80002ba:	07c0      	lsls	r0, r0, #31
 80002bc:	d412      	bmi.n	80002e4 <create_thread+0x58>
 80002be:	480f      	ldr	r0, [pc, #60]	; (80002fc <create_thread+0x70>)
 80002c0:	f8c4 c008 	str.w	ip, [r4, #8]
 80002c4:	f8c8 0000 	str.w	r0, [r8]
 80002c8:	f04f 5004 	mov.w	r0, #553648128	; 0x21000000
 80002cc:	f8c9 7000 	str.w	r7, [r9]
 80002d0:	2b05      	cmp	r3, #5
 80002d2:	bf98      	it	ls
 80002d4:	2306      	movls	r3, #6
 80002d6:	6008      	str	r0, [r1, #0]
 80002d8:	2001      	movs	r0, #1
 80002da:	8063      	strh	r3, [r4, #2]
 80002dc:	5373      	strh	r3, [r6, r5]
 80002de:	6060      	str	r0, [r4, #4]
 80002e0:	4610      	mov	r0, r2
 80002e2:	e000      	b.n	80002e6 <create_thread+0x5a>
 80002e4:	2006      	movs	r0, #6
 80002e6:	b662      	cpsie	i
 80002e8:	3201      	adds	r2, #1
 80002ea:	2a06      	cmp	r2, #6
 80002ec:	d001      	beq.n	80002f2 <create_thread+0x66>
 80002ee:	2806      	cmp	r0, #6
 80002f0:	d0dd      	beq.n	80002ae <create_thread+0x22>
 80002f2:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 80002f6:	bf00      	nop
 80002f8:	200002ac 	.word	0x200002ac
 80002fc:	08000189 	.word	0x08000189

08000300 <kernel_init>:
 8000300:	b510      	push	{r4, lr}
 8000302:	2300      	movs	r3, #0
 8000304:	490b      	ldr	r1, [pc, #44]	; (8000334 <kernel_init+0x34>)
 8000306:	220c      	movs	r2, #12
 8000308:	435a      	muls	r2, r3
 800030a:	188c      	adds	r4, r1, r2
 800030c:	2000      	movs	r0, #0
 800030e:	6060      	str	r0, [r4, #4]
 8000310:	3301      	adds	r3, #1
 8000312:	2006      	movs	r0, #6
 8000314:	4283      	cmp	r3, r0
 8000316:	8060      	strh	r0, [r4, #2]
 8000318:	5288      	strh	r0, [r1, r2]
 800031a:	d1f3      	bne.n	8000304 <kernel_init+0x4>
 800031c:	4b06      	ldr	r3, [pc, #24]	; (8000338 <kernel_init+0x38>)
 800031e:	4807      	ldr	r0, [pc, #28]	; (800033c <kernel_init+0x3c>)
 8000320:	4907      	ldr	r1, [pc, #28]	; (8000340 <kernel_init+0x40>)
 8000322:	f04f 32ff 	mov.w	r2, #4294967295
 8000326:	601a      	str	r2, [r3, #0]
 8000328:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800032c:	2280      	movs	r2, #128	; 0x80
 800032e:	23ff      	movs	r3, #255	; 0xff
 8000330:	f7ff bfac 	b.w	800028c <create_thread>
 8000334:	200002ac 	.word	0x200002ac
 8000338:	200002f4 	.word	0x200002f4
 800033c:	080001a9 	.word	0x080001a9
 8000340:	200002f8 	.word	0x200002f8

08000344 <set_wait_state>:
 8000344:	b507      	push	{r0, r1, r2, lr}
 8000346:	f7ff ff8f 	bl	8000268 <get_thread_id>
 800034a:	9000      	str	r0, [sp, #0]
 800034c:	b672      	cpsid	i
 800034e:	4b0d      	ldr	r3, [pc, #52]	; (8000384 <set_wait_state+0x40>)
 8000350:	9a00      	ldr	r2, [sp, #0]
 8000352:	210c      	movs	r1, #12
 8000354:	fb01 3202 	mla	r2, r1, r2, r3
 8000358:	6851      	ldr	r1, [r2, #4]
 800035a:	f041 0102 	orr.w	r1, r1, #2
 800035e:	6051      	str	r1, [r2, #4]
 8000360:	b672      	cpsid	i
 8000362:	9a00      	ldr	r2, [sp, #0]
 8000364:	210c      	movs	r1, #12
 8000366:	fb01 3202 	mla	r2, r1, r2, r3
 800036a:	6852      	ldr	r2, [r2, #4]
 800036c:	9201      	str	r2, [sp, #4]
 800036e:	b662      	cpsie	i
 8000370:	9a01      	ldr	r2, [sp, #4]
 8000372:	0791      	lsls	r1, r2, #30
 8000374:	d500      	bpl.n	8000378 <set_wait_state+0x34>
 8000376:	bf00      	nop
 8000378:	9a01      	ldr	r2, [sp, #4]
 800037a:	0792      	lsls	r2, r2, #30
 800037c:	d4f0      	bmi.n	8000360 <set_wait_state+0x1c>
 800037e:	b003      	add	sp, #12
 8000380:	f85d fb04 	ldr.w	pc, [sp], #4
 8000384:	200002ac 	.word	0x200002ac

08000388 <wake_up_threads>:
 8000388:	2300      	movs	r3, #0
 800038a:	b672      	cpsid	i
 800038c:	4a06      	ldr	r2, [pc, #24]	; (80003a8 <wake_up_threads+0x20>)
 800038e:	210c      	movs	r1, #12
 8000390:	fb01 2203 	mla	r2, r1, r3, r2
 8000394:	6851      	ldr	r1, [r2, #4]
 8000396:	f021 0102 	bic.w	r1, r1, #2
 800039a:	6051      	str	r1, [r2, #4]
 800039c:	b662      	cpsie	i
 800039e:	3301      	adds	r3, #1
 80003a0:	2b06      	cmp	r3, #6
 80003a2:	d1f2      	bne.n	800038a <wake_up_threads+0x2>
 80003a4:	4770      	bx	lr
 80003a6:	bf00      	nop
 80003a8:	200002ac 	.word	0x200002ac

080003ac <lib_os_init>:
 80003ac:	b508      	push	{r3, lr}
 80003ae:	f7ff ffa7 	bl	8000300 <kernel_init>
 80003b2:	f000 f805 	bl	80003c0 <messages_init>
 80003b6:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80003ba:	f000 b8e7 	b.w	800058c <stdio_init>
	...

080003c0 <messages_init>:
 80003c0:	4a0a      	ldr	r2, [pc, #40]	; (80003ec <messages_init+0x2c>)
 80003c2:	2300      	movs	r3, #0
 80003c4:	b510      	push	{r4, lr}
 80003c6:	6013      	str	r3, [r2, #0]
 80003c8:	6053      	str	r3, [r2, #4]
 80003ca:	6093      	str	r3, [r2, #8]
 80003cc:	60d3      	str	r3, [r2, #12]
 80003ce:	6113      	str	r3, [r2, #16]
 80003d0:	6153      	str	r3, [r2, #20]
 80003d2:	4c07      	ldr	r4, [pc, #28]	; (80003f0 <messages_init+0x30>)
 80003d4:	0118      	lsls	r0, r3, #4
 80003d6:	1821      	adds	r1, r4, r0
 80003d8:	3301      	adds	r3, #1
 80003da:	2200      	movs	r2, #0
 80003dc:	2b04      	cmp	r3, #4
 80003de:	604a      	str	r2, [r1, #4]
 80003e0:	5022      	str	r2, [r4, r0]
 80003e2:	60ca      	str	r2, [r1, #12]
 80003e4:	608a      	str	r2, [r1, #8]
 80003e6:	d1f4      	bne.n	80003d2 <messages_init+0x12>
 80003e8:	bd10      	pop	{r4, pc}
 80003ea:	bf00      	nop
 80003ec:	20000378 	.word	0x20000378
 80003f0:	20000390 	.word	0x20000390

080003f4 <putc_>:
 80003f4:	b538      	push	{r3, r4, r5, lr}
 80003f6:	4c06      	ldr	r4, [pc, #24]	; (8000410 <putc_+0x1c>)
 80003f8:	4605      	mov	r5, r0
 80003fa:	4620      	mov	r0, r4
 80003fc:	f000 f8f8 	bl	80005f0 <mutex_lock>
 8000400:	4628      	mov	r0, r5
 8000402:	f001 fc25 	bl	8001c50 <uart_write>
 8000406:	4620      	mov	r0, r4
 8000408:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 800040c:	f000 b90c 	b.w	8000628 <mutex_unlock>
 8000410:	200003d0 	.word	0x200003d0

08000414 <puts_>:
 8000414:	b510      	push	{r4, lr}
 8000416:	4604      	mov	r4, r0
 8000418:	4807      	ldr	r0, [pc, #28]	; (8000438 <puts_+0x24>)
 800041a:	f000 f8e9 	bl	80005f0 <mutex_lock>
 800041e:	3c01      	subs	r4, #1
 8000420:	f814 0f01 	ldrb.w	r0, [r4, #1]!
 8000424:	b110      	cbz	r0, 800042c <puts_+0x18>
 8000426:	f7ff ffe5 	bl	80003f4 <putc_>
 800042a:	e7f9      	b.n	8000420 <puts_+0xc>
 800042c:	4802      	ldr	r0, [pc, #8]	; (8000438 <puts_+0x24>)
 800042e:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000432:	f000 b8f9 	b.w	8000628 <mutex_unlock>
 8000436:	bf00      	nop
 8000438:	200003dc 	.word	0x200003dc

0800043c <puti_>:
 800043c:	b530      	push	{r4, r5, lr}
 800043e:	b085      	sub	sp, #20
 8000440:	1e03      	subs	r3, r0, #0
 8000442:	f04f 0200 	mov.w	r2, #0
 8000446:	bfa8      	it	ge
 8000448:	4614      	movge	r4, r2
 800044a:	f88d 200f 	strb.w	r2, [sp, #15]
 800044e:	bfbc      	itt	lt
 8000450:	425b      	neglt	r3, r3
 8000452:	2401      	movlt	r4, #1
 8000454:	220a      	movs	r2, #10
 8000456:	210a      	movs	r1, #10
 8000458:	fb93 f5f1 	sdiv	r5, r3, r1
 800045c:	fb01 3315 	mls	r3, r1, r5, r3
 8000460:	a801      	add	r0, sp, #4
 8000462:	3330      	adds	r3, #48	; 0x30
 8000464:	5413      	strb	r3, [r2, r0]
 8000466:	1e51      	subs	r1, r2, #1
 8000468:	462b      	mov	r3, r5
 800046a:	b10d      	cbz	r5, 8000470 <puti_+0x34>
 800046c:	460a      	mov	r2, r1
 800046e:	e7f2      	b.n	8000456 <puti_+0x1a>
 8000470:	b12c      	cbz	r4, 800047e <puti_+0x42>
 8000472:	ab04      	add	r3, sp, #16
 8000474:	440b      	add	r3, r1
 8000476:	222d      	movs	r2, #45	; 0x2d
 8000478:	f803 2c0c 	strb.w	r2, [r3, #-12]
 800047c:	460a      	mov	r2, r1
 800047e:	4410      	add	r0, r2
 8000480:	f7ff ffc8 	bl	8000414 <puts_>
 8000484:	b005      	add	sp, #20
 8000486:	bd30      	pop	{r4, r5, pc}

08000488 <putui_>:
 8000488:	b51f      	push	{r0, r1, r2, r3, r4, lr}
 800048a:	2300      	movs	r3, #0
 800048c:	f88d 300f 	strb.w	r3, [sp, #15]
 8000490:	230a      	movs	r3, #10
 8000492:	240a      	movs	r4, #10
 8000494:	fbb0 f1f4 	udiv	r1, r0, r4
 8000498:	fb04 0011 	mls	r0, r4, r1, r0
 800049c:	aa01      	add	r2, sp, #4
 800049e:	3030      	adds	r0, #48	; 0x30
 80004a0:	5498      	strb	r0, [r3, r2]
 80004a2:	1e5c      	subs	r4, r3, #1
 80004a4:	4608      	mov	r0, r1
 80004a6:	b109      	cbz	r1, 80004ac <putui_+0x24>
 80004a8:	4623      	mov	r3, r4
 80004aa:	e7f2      	b.n	8000492 <putui_+0xa>
 80004ac:	18d0      	adds	r0, r2, r3
 80004ae:	f7ff ffb1 	bl	8000414 <puts_>
 80004b2:	b004      	add	sp, #16
 80004b4:	bd10      	pop	{r4, pc}

080004b6 <putx_>:
 80004b6:	b51f      	push	{r0, r1, r2, r3, r4, lr}
 80004b8:	2300      	movs	r3, #0
 80004ba:	f88d 300f 	strb.w	r3, [sp, #15]
 80004be:	230a      	movs	r3, #10
 80004c0:	f000 010f 	and.w	r1, r0, #15
 80004c4:	2909      	cmp	r1, #9
 80004c6:	aa01      	add	r2, sp, #4
 80004c8:	bf94      	ite	ls
 80004ca:	3130      	addls	r1, #48	; 0x30
 80004cc:	3157      	addhi	r1, #87	; 0x57
 80004ce:	0900      	lsrs	r0, r0, #4
 80004d0:	54d1      	strb	r1, [r2, r3]
 80004d2:	f103 31ff 	add.w	r1, r3, #4294967295
 80004d6:	d001      	beq.n	80004dc <putx_+0x26>
 80004d8:	460b      	mov	r3, r1
 80004da:	e7f1      	b.n	80004c0 <putx_+0xa>
 80004dc:	18d0      	adds	r0, r2, r3
 80004de:	f7ff ff99 	bl	8000414 <puts_>
 80004e2:	b005      	add	sp, #20
 80004e4:	f85d fb04 	ldr.w	pc, [sp], #4

080004e8 <printf_>:
 80004e8:	b40f      	push	{r0, r1, r2, r3}
 80004ea:	b537      	push	{r0, r1, r2, r4, r5, lr}
 80004ec:	ac06      	add	r4, sp, #24
 80004ee:	4826      	ldr	r0, [pc, #152]	; (8000588 <printf_+0xa0>)
 80004f0:	f854 5b04 	ldr.w	r5, [r4], #4
 80004f4:	f000 f87c 	bl	80005f0 <mutex_lock>
 80004f8:	9401      	str	r4, [sp, #4]
 80004fa:	2400      	movs	r4, #0
 80004fc:	5d28      	ldrb	r0, [r5, r4]
 80004fe:	2800      	cmp	r0, #0
 8000500:	d039      	beq.n	8000576 <printf_+0x8e>
 8000502:	2825      	cmp	r0, #37	; 0x25
 8000504:	d003      	beq.n	800050e <printf_+0x26>
 8000506:	f7ff ff75 	bl	80003f4 <putc_>
 800050a:	3401      	adds	r4, #1
 800050c:	e7f6      	b.n	80004fc <printf_+0x14>
 800050e:	192b      	adds	r3, r5, r4
 8000510:	7858      	ldrb	r0, [r3, #1]
 8000512:	2869      	cmp	r0, #105	; 0x69
 8000514:	d016      	beq.n	8000544 <printf_+0x5c>
 8000516:	d808      	bhi.n	800052a <printf_+0x42>
 8000518:	2825      	cmp	r0, #37	; 0x25
 800051a:	d028      	beq.n	800056e <printf_+0x86>
 800051c:	2863      	cmp	r0, #99	; 0x63
 800051e:	d128      	bne.n	8000572 <printf_+0x8a>
 8000520:	9b01      	ldr	r3, [sp, #4]
 8000522:	1d1a      	adds	r2, r3, #4
 8000524:	9201      	str	r2, [sp, #4]
 8000526:	7818      	ldrb	r0, [r3, #0]
 8000528:	e021      	b.n	800056e <printf_+0x86>
 800052a:	2875      	cmp	r0, #117	; 0x75
 800052c:	d011      	beq.n	8000552 <printf_+0x6a>
 800052e:	2878      	cmp	r0, #120	; 0x78
 8000530:	d016      	beq.n	8000560 <printf_+0x78>
 8000532:	2873      	cmp	r0, #115	; 0x73
 8000534:	d11d      	bne.n	8000572 <printf_+0x8a>
 8000536:	9b01      	ldr	r3, [sp, #4]
 8000538:	1d1a      	adds	r2, r3, #4
 800053a:	6818      	ldr	r0, [r3, #0]
 800053c:	9201      	str	r2, [sp, #4]
 800053e:	f7ff ff69 	bl	8000414 <puts_>
 8000542:	e016      	b.n	8000572 <printf_+0x8a>
 8000544:	9b01      	ldr	r3, [sp, #4]
 8000546:	1d1a      	adds	r2, r3, #4
 8000548:	6818      	ldr	r0, [r3, #0]
 800054a:	9201      	str	r2, [sp, #4]
 800054c:	f7ff ff76 	bl	800043c <puti_>
 8000550:	e00f      	b.n	8000572 <printf_+0x8a>
 8000552:	9b01      	ldr	r3, [sp, #4]
 8000554:	1d1a      	adds	r2, r3, #4
 8000556:	6818      	ldr	r0, [r3, #0]
 8000558:	9201      	str	r2, [sp, #4]
 800055a:	f7ff ff95 	bl	8000488 <putui_>
 800055e:	e008      	b.n	8000572 <printf_+0x8a>
 8000560:	9b01      	ldr	r3, [sp, #4]
 8000562:	1d1a      	adds	r2, r3, #4
 8000564:	6818      	ldr	r0, [r3, #0]
 8000566:	9201      	str	r2, [sp, #4]
 8000568:	f7ff ffa5 	bl	80004b6 <putx_>
 800056c:	e001      	b.n	8000572 <printf_+0x8a>
 800056e:	f7ff ff41 	bl	80003f4 <putc_>
 8000572:	3402      	adds	r4, #2
 8000574:	e7c2      	b.n	80004fc <printf_+0x14>
 8000576:	4804      	ldr	r0, [pc, #16]	; (8000588 <printf_+0xa0>)
 8000578:	f000 f856 	bl	8000628 <mutex_unlock>
 800057c:	b003      	add	sp, #12
 800057e:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
 8000582:	b004      	add	sp, #16
 8000584:	4770      	bx	lr
 8000586:	bf00      	nop
 8000588:	200003d8 	.word	0x200003d8

0800058c <stdio_init>:
 800058c:	b510      	push	{r4, lr}
 800058e:	480e      	ldr	r0, [pc, #56]	; (80005c8 <stdio_init+0x3c>)
 8000590:	f000 f824 	bl	80005dc <mutex_init>
 8000594:	480d      	ldr	r0, [pc, #52]	; (80005cc <stdio_init+0x40>)
 8000596:	f000 f821 	bl	80005dc <mutex_init>
 800059a:	480d      	ldr	r0, [pc, #52]	; (80005d0 <stdio_init+0x44>)
 800059c:	f000 f81e 	bl	80005dc <mutex_init>
 80005a0:	480c      	ldr	r0, [pc, #48]	; (80005d4 <stdio_init+0x48>)
 80005a2:	f000 f81b 	bl	80005dc <mutex_init>
 80005a6:	2408      	movs	r4, #8
 80005a8:	2020      	movs	r0, #32
 80005aa:	f7ff ff23 	bl	80003f4 <putc_>
 80005ae:	3c01      	subs	r4, #1
 80005b0:	d1fa      	bne.n	80005a8 <stdio_init+0x1c>
 80005b2:	2420      	movs	r4, #32
 80005b4:	200a      	movs	r0, #10
 80005b6:	f7ff ff1d 	bl	80003f4 <putc_>
 80005ba:	3c01      	subs	r4, #1
 80005bc:	d1fa      	bne.n	80005b4 <stdio_init+0x28>
 80005be:	4806      	ldr	r0, [pc, #24]	; (80005d8 <stdio_init+0x4c>)
 80005c0:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80005c4:	f7ff bf90 	b.w	80004e8 <printf_>
 80005c8:	200003d0 	.word	0x200003d0
 80005cc:	200003d4 	.word	0x200003d4
 80005d0:	200003dc 	.word	0x200003dc
 80005d4:	200003d8 	.word	0x200003d8
 80005d8:	08002560 	.word	0x08002560

080005dc <mutex_init>:
 80005dc:	b510      	push	{r4, lr}
 80005de:	4604      	mov	r4, r0
 80005e0:	f7ff fe3c 	bl	800025c <sched_off>
 80005e4:	2300      	movs	r3, #0
 80005e6:	6023      	str	r3, [r4, #0]
 80005e8:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80005ec:	f7ff be38 	b.w	8000260 <sched_on>

080005f0 <mutex_lock>:
 80005f0:	b513      	push	{r0, r1, r4, lr}
 80005f2:	4604      	mov	r4, r0
 80005f4:	f7ff fe32 	bl	800025c <sched_off>
 80005f8:	6823      	ldr	r3, [r4, #0]
 80005fa:	9301      	str	r3, [sp, #4]
 80005fc:	f7ff fe30 	bl	8000260 <sched_on>
 8000600:	9b01      	ldr	r3, [sp, #4]
 8000602:	b10b      	cbz	r3, 8000608 <mutex_lock+0x18>
 8000604:	f7ff fe9e 	bl	8000344 <set_wait_state>
 8000608:	9b01      	ldr	r3, [sp, #4]
 800060a:	2b00      	cmp	r3, #0
 800060c:	d1f2      	bne.n	80005f4 <mutex_lock+0x4>
 800060e:	f7ff fe25 	bl	800025c <sched_off>
 8000612:	6823      	ldr	r3, [r4, #0]
 8000614:	9301      	str	r3, [sp, #4]
 8000616:	9b01      	ldr	r3, [sp, #4]
 8000618:	2b00      	cmp	r3, #0
 800061a:	d1eb      	bne.n	80005f4 <mutex_lock+0x4>
 800061c:	2301      	movs	r3, #1
 800061e:	6023      	str	r3, [r4, #0]
 8000620:	f7ff fe1e 	bl	8000260 <sched_on>
 8000624:	b002      	add	sp, #8
 8000626:	bd10      	pop	{r4, pc}

08000628 <mutex_unlock>:
 8000628:	b508      	push	{r3, lr}
 800062a:	f7ff ffd7 	bl	80005dc <mutex_init>
 800062e:	f7ff feab 	bl	8000388 <wake_up_threads>
 8000632:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8000636:	f7ff be15 	b.w	8000264 <yield>
	...

0800063c <main>:
 800063c:	b508      	push	{r3, lr}
 800063e:	f001 fe4f 	bl	80022e0 <lib_low_level_init>
 8000642:	f7ff feb3 	bl	80003ac <lib_os_init>
 8000646:	4905      	ldr	r1, [pc, #20]	; (800065c <main+0x20>)
 8000648:	4805      	ldr	r0, [pc, #20]	; (8000660 <main+0x24>)
 800064a:	f44f 7200 	mov.w	r2, #512	; 0x200
 800064e:	2306      	movs	r3, #6
 8000650:	f7ff fe1c 	bl	800028c <create_thread>
 8000654:	f7ff fe14 	bl	8000280 <kernel_start>
 8000658:	2000      	movs	r0, #0
 800065a:	bd08      	pop	{r3, pc}
 800065c:	200007e0 	.word	0x200007e0
 8000660:	08001449 	.word	0x08001449

08000664 <rgb_i2c_delay>:
 8000664:	bf00      	nop
 8000666:	4770      	bx	lr

08000668 <RGBSetLowSDA>:
 8000668:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 800066a:	4f15      	ldr	r7, [pc, #84]	; (80006c0 <RGBSetLowSDA+0x58>)
 800066c:	783b      	ldrb	r3, [r7, #0]
 800066e:	2401      	movs	r4, #1
 8000670:	2603      	movs	r6, #3
 8000672:	2500      	movs	r5, #0
 8000674:	4669      	mov	r1, sp
 8000676:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 800067a:	9300      	str	r3, [sp, #0]
 800067c:	f88d 5007 	strb.w	r5, [sp, #7]
 8000680:	f88d 4004 	strb.w	r4, [sp, #4]
 8000684:	f88d 6005 	strb.w	r6, [sp, #5]
 8000688:	f88d 4006 	strb.w	r4, [sp, #6]
 800068c:	f001 fe39 	bl	8002302 <GPIO_Init>
 8000690:	783a      	ldrb	r2, [r7, #0]
 8000692:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000696:	4669      	mov	r1, sp
 8000698:	851a      	strh	r2, [r3, #40]	; 0x28
 800069a:	f88d 5007 	strb.w	r5, [sp, #7]
 800069e:	4d09      	ldr	r5, [pc, #36]	; (80006c4 <RGBSetLowSDA+0x5c>)
 80006a0:	9400      	str	r4, [sp, #0]
 80006a2:	4628      	mov	r0, r5
 80006a4:	f88d 4004 	strb.w	r4, [sp, #4]
 80006a8:	f88d 6005 	strb.w	r6, [sp, #5]
 80006ac:	f88d 4006 	strb.w	r4, [sp, #6]
 80006b0:	f001 fe27 	bl	8002302 <GPIO_Init>
 80006b4:	852c      	strh	r4, [r5, #40]	; 0x28
 80006b6:	f7ff ffd5 	bl	8000664 <rgb_i2c_delay>
 80006ba:	b003      	add	sp, #12
 80006bc:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80006be:	bf00      	nop
 80006c0:	20000a3a 	.word	0x20000a3a
 80006c4:	48000400 	.word	0x48000400

080006c8 <RGBSetHighSDA>:
 80006c8:	b573      	push	{r0, r1, r4, r5, r6, lr}
 80006ca:	4d13      	ldr	r5, [pc, #76]	; (8000718 <RGBSetHighSDA+0x50>)
 80006cc:	782b      	ldrb	r3, [r5, #0]
 80006ce:	2400      	movs	r4, #0
 80006d0:	2603      	movs	r6, #3
 80006d2:	4669      	mov	r1, sp
 80006d4:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80006d8:	9300      	str	r3, [sp, #0]
 80006da:	f88d 4004 	strb.w	r4, [sp, #4]
 80006de:	f88d 4007 	strb.w	r4, [sp, #7]
 80006e2:	f88d 6005 	strb.w	r6, [sp, #5]
 80006e6:	f001 fe0c 	bl	8002302 <GPIO_Init>
 80006ea:	782a      	ldrb	r2, [r5, #0]
 80006ec:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 80006f0:	2501      	movs	r5, #1
 80006f2:	619a      	str	r2, [r3, #24]
 80006f4:	f88d 4004 	strb.w	r4, [sp, #4]
 80006f8:	f88d 4007 	strb.w	r4, [sp, #7]
 80006fc:	4c07      	ldr	r4, [pc, #28]	; (800071c <RGBSetHighSDA+0x54>)
 80006fe:	9500      	str	r5, [sp, #0]
 8000700:	4620      	mov	r0, r4
 8000702:	4669      	mov	r1, sp
 8000704:	f88d 6005 	strb.w	r6, [sp, #5]
 8000708:	f001 fdfb 	bl	8002302 <GPIO_Init>
 800070c:	61a5      	str	r5, [r4, #24]
 800070e:	f7ff ffa9 	bl	8000664 <rgb_i2c_delay>
 8000712:	b002      	add	sp, #8
 8000714:	bd70      	pop	{r4, r5, r6, pc}
 8000716:	bf00      	nop
 8000718:	20000a3a 	.word	0x20000a3a
 800071c:	48000400 	.word	0x48000400

08000720 <RGBSetLowSCL>:
 8000720:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000724:	f44f 7280 	mov.w	r2, #256	; 0x100
 8000728:	851a      	strh	r2, [r3, #40]	; 0x28
 800072a:	f7ff bf9b 	b.w	8000664 <rgb_i2c_delay>

0800072e <RGBSetHighSCL>:
 800072e:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000732:	f44f 7280 	mov.w	r2, #256	; 0x100
 8000736:	619a      	str	r2, [r3, #24]
 8000738:	f7ff bf94 	b.w	8000664 <rgb_i2c_delay>

0800073c <rgb_i2c_init>:
 800073c:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 800073e:	4f1f      	ldr	r7, [pc, #124]	; (80007bc <rgb_i2c_init+0x80>)
 8000740:	2400      	movs	r4, #0
 8000742:	2501      	movs	r5, #1
 8000744:	2603      	movs	r6, #3
 8000746:	f44f 7380 	mov.w	r3, #256	; 0x100
 800074a:	4669      	mov	r1, sp
 800074c:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000750:	9300      	str	r3, [sp, #0]
 8000752:	f88d 4006 	strb.w	r4, [sp, #6]
 8000756:	f88d 4007 	strb.w	r4, [sp, #7]
 800075a:	f88d 5004 	strb.w	r5, [sp, #4]
 800075e:	f88d 6005 	strb.w	r6, [sp, #5]
 8000762:	f001 fdce 	bl	8002302 <GPIO_Init>
 8000766:	783b      	ldrb	r3, [r7, #0]
 8000768:	f88d 4004 	strb.w	r4, [sp, #4]
 800076c:	4669      	mov	r1, sp
 800076e:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000772:	9300      	str	r3, [sp, #0]
 8000774:	f88d 4007 	strb.w	r4, [sp, #7]
 8000778:	f88d 6005 	strb.w	r6, [sp, #5]
 800077c:	f001 fdc1 	bl	8002302 <GPIO_Init>
 8000780:	7839      	ldrb	r1, [r7, #0]
 8000782:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000786:	f001 fe02 	bl	800238e <GPIO_SetBits>
 800078a:	f88d 4004 	strb.w	r4, [sp, #4]
 800078e:	f88d 4007 	strb.w	r4, [sp, #7]
 8000792:	4c0b      	ldr	r4, [pc, #44]	; (80007c0 <rgb_i2c_init+0x84>)
 8000794:	9500      	str	r5, [sp, #0]
 8000796:	4620      	mov	r0, r4
 8000798:	4669      	mov	r1, sp
 800079a:	f88d 6005 	strb.w	r6, [sp, #5]
 800079e:	f001 fdb0 	bl	8002302 <GPIO_Init>
 80007a2:	4620      	mov	r0, r4
 80007a4:	4629      	mov	r1, r5
 80007a6:	f001 fdf2 	bl	800238e <GPIO_SetBits>
 80007aa:	f7ff ffc0 	bl	800072e <RGBSetHighSCL>
 80007ae:	f7ff ff5b 	bl	8000668 <RGBSetLowSDA>
 80007b2:	f7ff ff89 	bl	80006c8 <RGBSetHighSDA>
 80007b6:	b003      	add	sp, #12
 80007b8:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80007ba:	bf00      	nop
 80007bc:	20000a3a 	.word	0x20000a3a
 80007c0:	48000400 	.word	0x48000400

080007c4 <rgb_i2cStart>:
 80007c4:	b508      	push	{r3, lr}
 80007c6:	f7ff ffb2 	bl	800072e <RGBSetHighSCL>
 80007ca:	f7ff ff7d 	bl	80006c8 <RGBSetHighSDA>
 80007ce:	f7ff ffae 	bl	800072e <RGBSetHighSCL>
 80007d2:	f7ff ff49 	bl	8000668 <RGBSetLowSDA>
 80007d6:	f7ff ffa3 	bl	8000720 <RGBSetLowSCL>
 80007da:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80007de:	f7ff bf73 	b.w	80006c8 <RGBSetHighSDA>

080007e2 <rgb_i2cStop>:
 80007e2:	b508      	push	{r3, lr}
 80007e4:	f7ff ff9c 	bl	8000720 <RGBSetLowSCL>
 80007e8:	f7ff ff3e 	bl	8000668 <RGBSetLowSDA>
 80007ec:	f7ff ff9f 	bl	800072e <RGBSetHighSCL>
 80007f0:	f7ff ff3a 	bl	8000668 <RGBSetLowSDA>
 80007f4:	f7ff ff9b 	bl	800072e <RGBSetHighSCL>
 80007f8:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80007fc:	f7ff bf64 	b.w	80006c8 <RGBSetHighSDA>

08000800 <rgb_i2cWrite>:
 8000800:	b538      	push	{r3, r4, r5, lr}
 8000802:	4604      	mov	r4, r0
 8000804:	2508      	movs	r5, #8
 8000806:	f7ff ff8b 	bl	8000720 <RGBSetLowSCL>
 800080a:	0623      	lsls	r3, r4, #24
 800080c:	d502      	bpl.n	8000814 <rgb_i2cWrite+0x14>
 800080e:	f7ff ff5b 	bl	80006c8 <RGBSetHighSDA>
 8000812:	e001      	b.n	8000818 <rgb_i2cWrite+0x18>
 8000814:	f7ff ff28 	bl	8000668 <RGBSetLowSDA>
 8000818:	3d01      	subs	r5, #1
 800081a:	f7ff ff88 	bl	800072e <RGBSetHighSCL>
 800081e:	0064      	lsls	r4, r4, #1
 8000820:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 8000824:	b2e4      	uxtb	r4, r4
 8000826:	d1ee      	bne.n	8000806 <rgb_i2cWrite+0x6>
 8000828:	f7ff ff7a 	bl	8000720 <RGBSetLowSCL>
 800082c:	f7ff ff4c 	bl	80006c8 <RGBSetHighSDA>
 8000830:	f7ff ff7d 	bl	800072e <RGBSetHighSCL>
 8000834:	f7ff ff74 	bl	8000720 <RGBSetLowSCL>
 8000838:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 800083c:	f7ff bf12 	b.w	8000664 <rgb_i2c_delay>

08000840 <rgb_i2cRead>:
 8000840:	b570      	push	{r4, r5, r6, lr}
 8000842:	2300      	movs	r3, #0
 8000844:	4606      	mov	r6, r0
 8000846:	460c      	mov	r4, r1
 8000848:	2200      	movs	r2, #0
 800084a:	54e2      	strb	r2, [r4, r3]
 800084c:	3301      	adds	r3, #1
 800084e:	2b09      	cmp	r3, #9
 8000850:	d1fa      	bne.n	8000848 <rgb_i2cRead+0x8>
 8000852:	f7ff ff65 	bl	8000720 <RGBSetLowSCL>
 8000856:	f7ff ff37 	bl	80006c8 <RGBSetHighSDA>
 800085a:	2508      	movs	r5, #8
 800085c:	2300      	movs	r3, #0
 800085e:	5ce2      	ldrb	r2, [r4, r3]
 8000860:	0052      	lsls	r2, r2, #1
 8000862:	54e2      	strb	r2, [r4, r3]
 8000864:	3301      	adds	r3, #1
 8000866:	2b09      	cmp	r3, #9
 8000868:	d1f9      	bne.n	800085e <rgb_i2cRead+0x1e>
 800086a:	f7ff ff60 	bl	800072e <RGBSetHighSCL>
 800086e:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000872:	8a1b      	ldrh	r3, [r3, #16]
 8000874:	b29b      	uxth	r3, r3
 8000876:	07d8      	lsls	r0, r3, #31
 8000878:	d503      	bpl.n	8000882 <rgb_i2cRead+0x42>
 800087a:	7822      	ldrb	r2, [r4, #0]
 800087c:	f042 0201 	orr.w	r2, r2, #1
 8000880:	7022      	strb	r2, [r4, #0]
 8000882:	0799      	lsls	r1, r3, #30
 8000884:	d503      	bpl.n	800088e <rgb_i2cRead+0x4e>
 8000886:	7862      	ldrb	r2, [r4, #1]
 8000888:	f042 0201 	orr.w	r2, r2, #1
 800088c:	7062      	strb	r2, [r4, #1]
 800088e:	075a      	lsls	r2, r3, #29
 8000890:	d503      	bpl.n	800089a <rgb_i2cRead+0x5a>
 8000892:	78a2      	ldrb	r2, [r4, #2]
 8000894:	f042 0201 	orr.w	r2, r2, #1
 8000898:	70a2      	strb	r2, [r4, #2]
 800089a:	0718      	lsls	r0, r3, #28
 800089c:	d503      	bpl.n	80008a6 <rgb_i2cRead+0x66>
 800089e:	78e2      	ldrb	r2, [r4, #3]
 80008a0:	f042 0201 	orr.w	r2, r2, #1
 80008a4:	70e2      	strb	r2, [r4, #3]
 80008a6:	06d9      	lsls	r1, r3, #27
 80008a8:	d503      	bpl.n	80008b2 <rgb_i2cRead+0x72>
 80008aa:	7922      	ldrb	r2, [r4, #4]
 80008ac:	f042 0201 	orr.w	r2, r2, #1
 80008b0:	7122      	strb	r2, [r4, #4]
 80008b2:	069a      	lsls	r2, r3, #26
 80008b4:	d503      	bpl.n	80008be <rgb_i2cRead+0x7e>
 80008b6:	7962      	ldrb	r2, [r4, #5]
 80008b8:	f042 0201 	orr.w	r2, r2, #1
 80008bc:	7162      	strb	r2, [r4, #5]
 80008be:	0658      	lsls	r0, r3, #25
 80008c0:	d503      	bpl.n	80008ca <rgb_i2cRead+0x8a>
 80008c2:	79a2      	ldrb	r2, [r4, #6]
 80008c4:	f042 0201 	orr.w	r2, r2, #1
 80008c8:	71a2      	strb	r2, [r4, #6]
 80008ca:	0619      	lsls	r1, r3, #24
 80008cc:	d503      	bpl.n	80008d6 <rgb_i2cRead+0x96>
 80008ce:	79e3      	ldrb	r3, [r4, #7]
 80008d0:	f043 0301 	orr.w	r3, r3, #1
 80008d4:	71e3      	strb	r3, [r4, #7]
 80008d6:	4b0b      	ldr	r3, [pc, #44]	; (8000904 <rgb_i2cRead+0xc4>)
 80008d8:	8a1b      	ldrh	r3, [r3, #16]
 80008da:	07da      	lsls	r2, r3, #31
 80008dc:	d503      	bpl.n	80008e6 <rgb_i2cRead+0xa6>
 80008de:	7a23      	ldrb	r3, [r4, #8]
 80008e0:	f043 0301 	orr.w	r3, r3, #1
 80008e4:	7223      	strb	r3, [r4, #8]
 80008e6:	f7ff ff1b 	bl	8000720 <RGBSetLowSCL>
 80008ea:	3d01      	subs	r5, #1
 80008ec:	d1b6      	bne.n	800085c <rgb_i2cRead+0x1c>
 80008ee:	b10e      	cbz	r6, 80008f4 <rgb_i2cRead+0xb4>
 80008f0:	f7ff feba 	bl	8000668 <RGBSetLowSDA>
 80008f4:	f7ff ff1b 	bl	800072e <RGBSetHighSCL>
 80008f8:	f7ff ff12 	bl	8000720 <RGBSetLowSCL>
 80008fc:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8000900:	f7ff beb0 	b.w	8000664 <rgb_i2c_delay>
 8000904:	48000400 	.word	0x48000400

08000908 <rgb_i2c_write_reg>:
 8000908:	b570      	push	{r4, r5, r6, lr}
 800090a:	4605      	mov	r5, r0
 800090c:	460c      	mov	r4, r1
 800090e:	4616      	mov	r6, r2
 8000910:	f7ff ff58 	bl	80007c4 <rgb_i2cStart>
 8000914:	4628      	mov	r0, r5
 8000916:	f7ff ff73 	bl	8000800 <rgb_i2cWrite>
 800091a:	4620      	mov	r0, r4
 800091c:	f7ff ff70 	bl	8000800 <rgb_i2cWrite>
 8000920:	4630      	mov	r0, r6
 8000922:	f7ff ff6d 	bl	8000800 <rgb_i2cWrite>
 8000926:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 800092a:	f7ff bf5a 	b.w	80007e2 <rgb_i2cStop>
	...

08000930 <rgb_init>:
 8000930:	4b1d      	ldr	r3, [pc, #116]	; (80009a8 <rgb_init+0x78>)
 8000932:	b570      	push	{r4, r5, r6, lr}
 8000934:	2409      	movs	r4, #9
 8000936:	2200      	movs	r2, #0
 8000938:	3c01      	subs	r4, #1
 800093a:	801a      	strh	r2, [r3, #0]
 800093c:	825a      	strh	r2, [r3, #18]
 800093e:	849a      	strh	r2, [r3, #36]	; 0x24
 8000940:	f8a3 2048 	strh.w	r2, [r3, #72]	; 0x48
 8000944:	86da      	strh	r2, [r3, #54]	; 0x36
 8000946:	f103 0302 	add.w	r3, r3, #2
 800094a:	d1f4      	bne.n	8000936 <rgb_init+0x6>
 800094c:	4d17      	ldr	r5, [pc, #92]	; (80009ac <rgb_init+0x7c>)
 800094e:	f64f 76ff 	movw	r6, #65535	; 0xffff
 8000952:	802e      	strh	r6, [r5, #0]
 8000954:	f7ff fef2 	bl	800073c <rgb_i2c_init>
 8000958:	2072      	movs	r0, #114	; 0x72
 800095a:	2181      	movs	r1, #129	; 0x81
 800095c:	22ff      	movs	r2, #255	; 0xff
 800095e:	f7ff ffd3 	bl	8000908 <rgb_i2c_write_reg>
 8000962:	2072      	movs	r0, #114	; 0x72
 8000964:	2183      	movs	r1, #131	; 0x83
 8000966:	22ff      	movs	r2, #255	; 0xff
 8000968:	f7ff ffce 	bl	8000908 <rgb_i2c_write_reg>
 800096c:	2072      	movs	r0, #114	; 0x72
 800096e:	218d      	movs	r1, #141	; 0x8d
 8000970:	4622      	mov	r2, r4
 8000972:	f7ff ffc9 	bl	8000908 <rgb_i2c_write_reg>
 8000976:	2072      	movs	r0, #114	; 0x72
 8000978:	2180      	movs	r1, #128	; 0x80
 800097a:	2203      	movs	r2, #3
 800097c:	f7ff ffc4 	bl	8000908 <rgb_i2c_write_reg>
 8000980:	2072      	movs	r0, #114	; 0x72
 8000982:	218f      	movs	r1, #143	; 0x8f
 8000984:	2223      	movs	r2, #35	; 0x23
 8000986:	f7ff ffbf 	bl	8000908 <rgb_i2c_write_reg>
 800098a:	f7ff fe9d 	bl	80006c8 <RGBSetHighSDA>
 800098e:	2072      	movs	r0, #114	; 0x72
 8000990:	2180      	movs	r1, #128	; 0x80
 8000992:	2207      	movs	r2, #7
 8000994:	802c      	strh	r4, [r5, #0]
 8000996:	f7ff ffb7 	bl	8000908 <rgb_i2c_write_reg>
 800099a:	2072      	movs	r0, #114	; 0x72
 800099c:	218e      	movs	r1, #142	; 0x8e
 800099e:	2208      	movs	r2, #8
 80009a0:	f7ff ffb2 	bl	8000908 <rgb_i2c_write_reg>
 80009a4:	802e      	strh	r6, [r5, #0]
 80009a6:	bd70      	pop	{r4, r5, r6, pc}
 80009a8:	200009e0 	.word	0x200009e0
 80009ac:	20000a3a 	.word	0x20000a3a

080009b0 <rgb_read>:
 80009b0:	b538      	push	{r3, r4, r5, lr}
 80009b2:	f7ff ff07 	bl	80007c4 <rgb_i2cStart>
 80009b6:	2072      	movs	r0, #114	; 0x72
 80009b8:	f7ff ff22 	bl	8000800 <rgb_i2cWrite>
 80009bc:	20b4      	movs	r0, #180	; 0xb4
 80009be:	f7ff ff1f 	bl	8000800 <rgb_i2cWrite>
 80009c2:	f7ff feff 	bl	80007c4 <rgb_i2cStart>
 80009c6:	2073      	movs	r0, #115	; 0x73
 80009c8:	f7ff ff1a 	bl	8000800 <rgb_i2cWrite>
 80009cc:	2001      	movs	r0, #1
 80009ce:	4946      	ldr	r1, [pc, #280]	; (8000ae8 <rgb_read+0x138>)
 80009d0:	f7ff ff36 	bl	8000840 <rgb_i2cRead>
 80009d4:	2300      	movs	r3, #0
 80009d6:	4d45      	ldr	r5, [pc, #276]	; (8000aec <rgb_read+0x13c>)
 80009d8:	4c43      	ldr	r4, [pc, #268]	; (8000ae8 <rgb_read+0x138>)
 80009da:	eb05 0243 	add.w	r2, r5, r3, lsl #1
 80009de:	5d19      	ldrb	r1, [r3, r4]
 80009e0:	3301      	adds	r3, #1
 80009e2:	2b09      	cmp	r3, #9
 80009e4:	86d1      	strh	r1, [r2, #54]	; 0x36
 80009e6:	d1f6      	bne.n	80009d6 <rgb_read+0x26>
 80009e8:	2001      	movs	r0, #1
 80009ea:	4621      	mov	r1, r4
 80009ec:	f7ff ff28 	bl	8000840 <rgb_i2cRead>
 80009f0:	f105 0236 	add.w	r2, r5, #54	; 0x36
 80009f4:	2300      	movs	r3, #0
 80009f6:	8811      	ldrh	r1, [r2, #0]
 80009f8:	5ce0      	ldrb	r0, [r4, r3]
 80009fa:	3301      	adds	r3, #1
 80009fc:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 8000a00:	2b09      	cmp	r3, #9
 8000a02:	f822 1b02 	strh.w	r1, [r2], #2
 8000a06:	d1f6      	bne.n	80009f6 <rgb_read+0x46>
 8000a08:	2001      	movs	r0, #1
 8000a0a:	4937      	ldr	r1, [pc, #220]	; (8000ae8 <rgb_read+0x138>)
 8000a0c:	f7ff ff18 	bl	8000840 <rgb_i2cRead>
 8000a10:	2300      	movs	r3, #0
 8000a12:	5ce2      	ldrb	r2, [r4, r3]
 8000a14:	f825 2013 	strh.w	r2, [r5, r3, lsl #1]
 8000a18:	3301      	adds	r3, #1
 8000a1a:	2b09      	cmp	r3, #9
 8000a1c:	d1f9      	bne.n	8000a12 <rgb_read+0x62>
 8000a1e:	2001      	movs	r0, #1
 8000a20:	4931      	ldr	r1, [pc, #196]	; (8000ae8 <rgb_read+0x138>)
 8000a22:	f7ff ff0d 	bl	8000840 <rgb_i2cRead>
 8000a26:	4a32      	ldr	r2, [pc, #200]	; (8000af0 <rgb_read+0x140>)
 8000a28:	2300      	movs	r3, #0
 8000a2a:	5ce0      	ldrb	r0, [r4, r3]
 8000a2c:	8851      	ldrh	r1, [r2, #2]
 8000a2e:	3301      	adds	r3, #1
 8000a30:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 8000a34:	2b09      	cmp	r3, #9
 8000a36:	f822 1f02 	strh.w	r1, [r2, #2]!
 8000a3a:	d1f6      	bne.n	8000a2a <rgb_read+0x7a>
 8000a3c:	2001      	movs	r0, #1
 8000a3e:	492a      	ldr	r1, [pc, #168]	; (8000ae8 <rgb_read+0x138>)
 8000a40:	f7ff fefe 	bl	8000840 <rgb_i2cRead>
 8000a44:	2300      	movs	r3, #0
 8000a46:	eb05 0243 	add.w	r2, r5, r3, lsl #1
 8000a4a:	5ce1      	ldrb	r1, [r4, r3]
 8000a4c:	3301      	adds	r3, #1
 8000a4e:	2b09      	cmp	r3, #9
 8000a50:	8251      	strh	r1, [r2, #18]
 8000a52:	d1f8      	bne.n	8000a46 <rgb_read+0x96>
 8000a54:	2001      	movs	r0, #1
 8000a56:	4924      	ldr	r1, [pc, #144]	; (8000ae8 <rgb_read+0x138>)
 8000a58:	f7ff fef2 	bl	8000840 <rgb_i2cRead>
 8000a5c:	4a25      	ldr	r2, [pc, #148]	; (8000af4 <rgb_read+0x144>)
 8000a5e:	2300      	movs	r3, #0
 8000a60:	8811      	ldrh	r1, [r2, #0]
 8000a62:	5ce0      	ldrb	r0, [r4, r3]
 8000a64:	3301      	adds	r3, #1
 8000a66:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 8000a6a:	2b09      	cmp	r3, #9
 8000a6c:	f822 1b02 	strh.w	r1, [r2], #2
 8000a70:	d1f6      	bne.n	8000a60 <rgb_read+0xb0>
 8000a72:	2001      	movs	r0, #1
 8000a74:	491c      	ldr	r1, [pc, #112]	; (8000ae8 <rgb_read+0x138>)
 8000a76:	f7ff fee3 	bl	8000840 <rgb_i2cRead>
 8000a7a:	2300      	movs	r3, #0
 8000a7c:	eb05 0243 	add.w	r2, r5, r3, lsl #1
 8000a80:	5ce1      	ldrb	r1, [r4, r3]
 8000a82:	3301      	adds	r3, #1
 8000a84:	2b09      	cmp	r3, #9
 8000a86:	8491      	strh	r1, [r2, #36]	; 0x24
 8000a88:	d1f8      	bne.n	8000a7c <rgb_read+0xcc>
 8000a8a:	2001      	movs	r0, #1
 8000a8c:	4916      	ldr	r1, [pc, #88]	; (8000ae8 <rgb_read+0x138>)
 8000a8e:	f7ff fed7 	bl	8000840 <rgb_i2cRead>
 8000a92:	4a19      	ldr	r2, [pc, #100]	; (8000af8 <rgb_read+0x148>)
 8000a94:	2300      	movs	r3, #0
 8000a96:	8811      	ldrh	r1, [r2, #0]
 8000a98:	5ce0      	ldrb	r0, [r4, r3]
 8000a9a:	3301      	adds	r3, #1
 8000a9c:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 8000aa0:	2b09      	cmp	r3, #9
 8000aa2:	f822 1b02 	strh.w	r1, [r2], #2
 8000aa6:	d1f6      	bne.n	8000a96 <rgb_read+0xe6>
 8000aa8:	2001      	movs	r0, #1
 8000aaa:	490f      	ldr	r1, [pc, #60]	; (8000ae8 <rgb_read+0x138>)
 8000aac:	f7ff fec8 	bl	8000840 <rgb_i2cRead>
 8000ab0:	2300      	movs	r3, #0
 8000ab2:	eb05 0243 	add.w	r2, r5, r3, lsl #1
 8000ab6:	5ce1      	ldrb	r1, [r4, r3]
 8000ab8:	3301      	adds	r3, #1
 8000aba:	2b09      	cmp	r3, #9
 8000abc:	f8a2 1048 	strh.w	r1, [r2, #72]	; 0x48
 8000ac0:	d1f7      	bne.n	8000ab2 <rgb_read+0x102>
 8000ac2:	2000      	movs	r0, #0
 8000ac4:	4908      	ldr	r1, [pc, #32]	; (8000ae8 <rgb_read+0x138>)
 8000ac6:	f7ff febb 	bl	8000840 <rgb_i2cRead>
 8000aca:	4a0c      	ldr	r2, [pc, #48]	; (8000afc <rgb_read+0x14c>)
 8000acc:	2300      	movs	r3, #0
 8000ace:	8811      	ldrh	r1, [r2, #0]
 8000ad0:	5ce0      	ldrb	r0, [r4, r3]
 8000ad2:	3301      	adds	r3, #1
 8000ad4:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 8000ad8:	2b09      	cmp	r3, #9
 8000ada:	f822 1b02 	strh.w	r1, [r2], #2
 8000ade:	d1f6      	bne.n	8000ace <rgb_read+0x11e>
 8000ae0:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8000ae4:	f7ff be7d 	b.w	80007e2 <rgb_i2cStop>
 8000ae8:	20000a3c 	.word	0x20000a3c
 8000aec:	200009e0 	.word	0x200009e0
 8000af0:	200009de 	.word	0x200009de
 8000af4:	200009f2 	.word	0x200009f2
 8000af8:	20000a04 	.word	0x20000a04
 8000afc:	20000a28 	.word	0x20000a28

08000b00 <camera_init>:
 8000b00:	4b02      	ldr	r3, [pc, #8]	; (8000b0c <camera_init+0xc>)
 8000b02:	2200      	movs	r2, #0
 8000b04:	701a      	strb	r2, [r3, #0]
 8000b06:	605a      	str	r2, [r3, #4]
 8000b08:	4770      	bx	lr
 8000b0a:	bf00      	nop
 8000b0c:	20000a48 	.word	0x20000a48

08000b10 <camera_read>:
 8000b10:	b510      	push	{r4, lr}
 8000b12:	2101      	movs	r1, #1
 8000b14:	20f0      	movs	r0, #240	; 0xf0
 8000b16:	f001 f882 	bl	8001c1e <i2c_read_reg>
 8000b1a:	4c04      	ldr	r4, [pc, #16]	; (8000b2c <camera_read+0x1c>)
 8000b1c:	2102      	movs	r1, #2
 8000b1e:	7020      	strb	r0, [r4, #0]
 8000b20:	20f0      	movs	r0, #240	; 0xf0
 8000b22:	f001 f87c 	bl	8001c1e <i2c_read_reg>
 8000b26:	6060      	str	r0, [r4, #4]
 8000b28:	bd10      	pop	{r4, pc}
 8000b2a:	bf00      	nop
 8000b2c:	20000a48 	.word	0x20000a48

08000b30 <imu_read>:
 8000b30:	b510      	push	{r4, lr}
 8000b32:	212c      	movs	r1, #44	; 0x2c
 8000b34:	20d0      	movs	r0, #208	; 0xd0
 8000b36:	f001 f872 	bl	8001c1e <i2c_read_reg>
 8000b3a:	212d      	movs	r1, #45	; 0x2d
 8000b3c:	4604      	mov	r4, r0
 8000b3e:	20d0      	movs	r0, #208	; 0xd0
 8000b40:	f001 f86d 	bl	8001c1e <i2c_read_reg>
 8000b44:	4b02      	ldr	r3, [pc, #8]	; (8000b50 <imu_read+0x20>)
 8000b46:	ea44 2000 	orr.w	r0, r4, r0, lsl #8
 8000b4a:	8098      	strh	r0, [r3, #4]
 8000b4c:	bd10      	pop	{r4, pc}
 8000b4e:	bf00      	nop
 8000b50:	20000a50 	.word	0x20000a50

08000b54 <imu_init>:
 8000b54:	b510      	push	{r4, lr}
 8000b56:	20d0      	movs	r0, #208	; 0xd0
 8000b58:	2120      	movs	r1, #32
 8000b5a:	227f      	movs	r2, #127	; 0x7f
 8000b5c:	f001 f84c 	bl	8001bf8 <i2c_write_reg>
 8000b60:	20d0      	movs	r0, #208	; 0xd0
 8000b62:	2121      	movs	r1, #33	; 0x21
 8000b64:	2200      	movs	r2, #0
 8000b66:	f001 f847 	bl	8001bf8 <i2c_write_reg>
 8000b6a:	20d0      	movs	r0, #208	; 0xd0
 8000b6c:	2122      	movs	r1, #34	; 0x22
 8000b6e:	2200      	movs	r2, #0
 8000b70:	f001 f842 	bl	8001bf8 <i2c_write_reg>
 8000b74:	20d0      	movs	r0, #208	; 0xd0
 8000b76:	2123      	movs	r1, #35	; 0x23
 8000b78:	2210      	movs	r2, #16
 8000b7a:	f001 f83d 	bl	8001bf8 <i2c_write_reg>
 8000b7e:	20d0      	movs	r0, #208	; 0xd0
 8000b80:	2124      	movs	r1, #36	; 0x24
 8000b82:	2200      	movs	r2, #0
 8000b84:	f001 f838 	bl	8001bf8 <i2c_write_reg>
 8000b88:	4b07      	ldr	r3, [pc, #28]	; (8000ba8 <imu_init+0x54>)
 8000b8a:	2400      	movs	r4, #0
 8000b8c:	801c      	strh	r4, [r3, #0]
 8000b8e:	805c      	strh	r4, [r3, #2]
 8000b90:	809c      	strh	r4, [r3, #4]
 8000b92:	80dc      	strh	r4, [r3, #6]
 8000b94:	811c      	strh	r4, [r3, #8]
 8000b96:	815c      	strh	r4, [r3, #10]
 8000b98:	819c      	strh	r4, [r3, #12]
 8000b9a:	81dc      	strh	r4, [r3, #14]
 8000b9c:	821c      	strh	r4, [r3, #16]
 8000b9e:	f7ff ffc7 	bl	8000b30 <imu_read>
 8000ba2:	4620      	mov	r0, r4
 8000ba4:	bd10      	pop	{r4, pc}
 8000ba6:	bf00      	nop
 8000ba8:	20000a50 	.word	0x20000a50

08000bac <line_sensor_init>:
 8000bac:	490c      	ldr	r1, [pc, #48]	; (8000be0 <line_sensor_init+0x34>)
 8000bae:	4608      	mov	r0, r1
 8000bb0:	2300      	movs	r3, #0
 8000bb2:	b510      	push	{r4, lr}
 8000bb4:	f800 3b10 	strb.w	r3, [r0], #16
 8000bb8:	1e8a      	subs	r2, r1, #2
 8000bba:	3202      	adds	r2, #2
 8000bbc:	2300      	movs	r3, #0
 8000bbe:	4282      	cmp	r2, r0
 8000bc0:	8053      	strh	r3, [r2, #2]
 8000bc2:	8293      	strh	r3, [r2, #20]
 8000bc4:	84d3      	strh	r3, [r2, #38]	; 0x26
 8000bc6:	d1f8      	bne.n	8000bba <line_sensor_init+0xe>
 8000bc8:	f881 3038 	strb.w	r3, [r1, #56]	; 0x38
 8000bcc:	f881 3044 	strb.w	r3, [r1, #68]	; 0x44
 8000bd0:	63cb      	str	r3, [r1, #60]	; 0x3c
 8000bd2:	640b      	str	r3, [r1, #64]	; 0x40
 8000bd4:	f7ff feac 	bl	8000930 <rgb_init>
 8000bd8:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000bdc:	f7ff bee8 	b.w	80009b0 <rgb_read>
 8000be0:	20000a64 	.word	0x20000a64

08000be4 <line_sensor_filter>:
 8000be4:	b570      	push	{r4, r5, r6, lr}
 8000be6:	4b5e      	ldr	r3, [pc, #376]	; (8000d60 <line_sensor_filter+0x17c>)
 8000be8:	f103 0212 	add.w	r2, r3, #18
 8000bec:	f9b3 0016 	ldrsh.w	r0, [r3, #22]
 8000bf0:	3302      	adds	r3, #2
 8000bf2:	f9b3 1002 	ldrsh.w	r1, [r3, #2]
 8000bf6:	4293      	cmp	r3, r2
 8000bf8:	ebc1 0100 	rsb	r1, r1, r0
 8000bfc:	84d9      	strh	r1, [r3, #38]	; 0x26
 8000bfe:	d1f5      	bne.n	8000bec <line_sensor_filter+0x8>
 8000c00:	4958      	ldr	r1, [pc, #352]	; (8000d64 <line_sensor_filter+0x180>)
 8000c02:	4a59      	ldr	r2, [pc, #356]	; (8000d68 <line_sensor_filter+0x184>)
 8000c04:	6c0b      	ldr	r3, [r1, #64]	; 0x40
 8000c06:	f9b2 2058 	ldrsh.w	r2, [r2, #88]	; 0x58
 8000c0a:	f9b1 402e 	ldrsh.w	r4, [r1, #46]	; 0x2e
 8000c0e:	2007      	movs	r0, #7
 8000c10:	fb00 2303 	mla	r3, r0, r3, r2
 8000c14:	2208      	movs	r2, #8
 8000c16:	fb93 f3f2 	sdiv	r3, r3, r2
 8000c1a:	f9b1 202c 	ldrsh.w	r2, [r1, #44]	; 0x2c
 8000c1e:	f9b1 0026 	ldrsh.w	r0, [r1, #38]	; 0x26
 8000c22:	640b      	str	r3, [r1, #64]	; 0x40
 8000c24:	f512 7faf 	cmn.w	r2, #350	; 0x15e
 8000c28:	bfaa      	itet	ge
 8000c2a:	4602      	movge	r2, r0
 8000c2c:	2303      	movlt	r3, #3
 8000c2e:	2300      	movge	r3, #0
 8000c30:	f514 7faf 	cmn.w	r4, #350	; 0x15e
 8000c34:	bfb8      	it	lt
 8000c36:	4622      	movlt	r2, r4
 8000c38:	f9b1 402a 	ldrsh.w	r4, [r1, #42]	; 0x2a
 8000c3c:	bfb8      	it	lt
 8000c3e:	2304      	movlt	r3, #4
 8000c40:	f514 7faf 	cmn.w	r4, #350	; 0x15e
 8000c44:	bfb8      	it	lt
 8000c46:	4622      	movlt	r2, r4
 8000c48:	f9b1 4030 	ldrsh.w	r4, [r1, #48]	; 0x30
 8000c4c:	bfb8      	it	lt
 8000c4e:	2302      	movlt	r3, #2
 8000c50:	f514 7faf 	cmn.w	r4, #350	; 0x15e
 8000c54:	bfb8      	it	lt
 8000c56:	4622      	movlt	r2, r4
 8000c58:	f9b1 4028 	ldrsh.w	r4, [r1, #40]	; 0x28
 8000c5c:	bfb8      	it	lt
 8000c5e:	2305      	movlt	r3, #5
 8000c60:	f514 7faf 	cmn.w	r4, #350	; 0x15e
 8000c64:	bfb8      	it	lt
 8000c66:	4622      	movlt	r2, r4
 8000c68:	f9b1 4032 	ldrsh.w	r4, [r1, #50]	; 0x32
 8000c6c:	bfb8      	it	lt
 8000c6e:	2301      	movlt	r3, #1
 8000c70:	f514 7faf 	cmn.w	r4, #350	; 0x15e
 8000c74:	bfb8      	it	lt
 8000c76:	4622      	movlt	r2, r4
 8000c78:	f9b1 4034 	ldrsh.w	r4, [r1, #52]	; 0x34
 8000c7c:	bfb8      	it	lt
 8000c7e:	2306      	movlt	r3, #6
 8000c80:	4605      	mov	r5, r0
 8000c82:	f515 7faf 	cmn.w	r5, #350	; 0x15e
 8000c86:	bfb8      	it	lt
 8000c88:	2300      	movlt	r3, #0
 8000c8a:	f510 7faf 	cmn.w	r0, #350	; 0x15e
 8000c8e:	bfa8      	it	ge
 8000c90:	4610      	movge	r0, r2
 8000c92:	f514 7faf 	cmn.w	r4, #350	; 0x15e
 8000c96:	4a33      	ldr	r2, [pc, #204]	; (8000d64 <line_sensor_filter+0x180>)
 8000c98:	db32      	blt.n	8000d00 <line_sensor_filter+0x11c>
 8000c9a:	f510 7faf 	cmn.w	r0, #350	; 0x15e
 8000c9e:	dc5a      	bgt.n	8000d56 <line_sensor_filter+0x172>
 8000ca0:	2b00      	cmp	r3, #0
 8000ca2:	d055      	beq.n	8000d50 <line_sensor_filter+0x16c>
 8000ca4:	eb02 0643 	add.w	r6, r2, r3, lsl #1
 8000ca8:	4632      	mov	r2, r6
 8000caa:	f9b6 6028 	ldrsh.w	r6, [r6, #40]	; 0x28
 8000cae:	f9b2 2024 	ldrsh.w	r2, [r2, #36]	; 0x24
 8000cb2:	1e5d      	subs	r5, r3, #1
 8000cb4:	4296      	cmp	r6, r2
 8000cb6:	f103 0401 	add.w	r4, r3, #1
 8000cba:	bfa8      	it	ge
 8000cbc:	462c      	movge	r4, r5
 8000cbe:	ea4f 1083 	mov.w	r0, r3, lsl #6
 8000cc2:	eb01 0444 	add.w	r4, r1, r4, lsl #1
 8000cc6:	eb01 0343 	add.w	r3, r1, r3, lsl #1
 8000cca:	f9b4 5026 	ldrsh.w	r5, [r4, #38]	; 0x26
 8000cce:	f9b3 3026 	ldrsh.w	r3, [r3, #38]	; 0x26
 8000cd2:	ea4f 1445 	mov.w	r4, r5, lsl #5
 8000cd6:	441d      	add	r5, r3
 8000cd8:	fb94 f3f5 	sdiv	r3, r4, r5
 8000cdc:	f1c3 0420 	rsb	r4, r3, #32
 8000ce0:	bfac      	ite	ge
 8000ce2:	f1a0 0240 	subge.w	r2, r0, #64	; 0x40
 8000ce6:	f100 0240 	addlt.w	r2, r0, #64	; 0x40
 8000cea:	4344      	muls	r4, r0
 8000cec:	fb03 4402 	mla	r4, r3, r2, r4
 8000cf0:	2520      	movs	r5, #32
 8000cf2:	fb94 f4f5 	sdiv	r4, r4, r5
 8000cf6:	3ce0      	subs	r4, #224	; 0xe0
 8000cf8:	f5b4 7f80 	cmp.w	r4, #256	; 0x100
 8000cfc:	63cc      	str	r4, [r1, #60]	; 0x3c
 8000cfe:	dd24      	ble.n	8000d4a <line_sensor_filter+0x166>
 8000d00:	f44f 7480 	mov.w	r4, #256	; 0x100
 8000d04:	f891 3038 	ldrb.w	r3, [r1, #56]	; 0x38
 8000d08:	2b01      	cmp	r3, #1
 8000d0a:	d803      	bhi.n	8000d14 <line_sensor_filter+0x130>
 8000d0c:	4a15      	ldr	r2, [pc, #84]	; (8000d64 <line_sensor_filter+0x180>)
 8000d0e:	3301      	adds	r3, #1
 8000d10:	f882 3038 	strb.w	r3, [r2, #56]	; 0x38
 8000d14:	f891 3038 	ldrb.w	r3, [r1, #56]	; 0x38
 8000d18:	4d12      	ldr	r5, [pc, #72]	; (8000d64 <line_sensor_filter+0x180>)
 8000d1a:	2b02      	cmp	r3, #2
 8000d1c:	d109      	bne.n	8000d32 <line_sensor_filter+0x14e>
 8000d1e:	f7ff fa9d 	bl	800025c <sched_off>
 8000d22:	f895 3044 	ldrb.w	r3, [r5, #68]	; 0x44
 8000d26:	63ec      	str	r4, [r5, #60]	; 0x3c
 8000d28:	f043 0303 	orr.w	r3, r3, #3
 8000d2c:	f885 3044 	strb.w	r3, [r5, #68]	; 0x44
 8000d30:	e007      	b.n	8000d42 <line_sensor_filter+0x15e>
 8000d32:	f7ff fa93 	bl	800025c <sched_off>
 8000d36:	f895 3044 	ldrb.w	r3, [r5, #68]	; 0x44
 8000d3a:	f023 0301 	bic.w	r3, r3, #1
 8000d3e:	f885 3044 	strb.w	r3, [r5, #68]	; 0x44
 8000d42:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8000d46:	f7ff ba8b 	b.w	8000260 <sched_on>
 8000d4a:	f514 7f80 	cmn.w	r4, #256	; 0x100
 8000d4e:	dad9      	bge.n	8000d04 <line_sensor_filter+0x120>
 8000d50:	f06f 04ff 	mvn.w	r4, #255	; 0xff
 8000d54:	e7d6      	b.n	8000d04 <line_sensor_filter+0x120>
 8000d56:	2300      	movs	r3, #0
 8000d58:	f882 3038 	strb.w	r3, [r2, #56]	; 0x38
 8000d5c:	bd70      	pop	{r4, r5, r6, pc}
 8000d5e:	bf00      	nop
 8000d60:	20000a62 	.word	0x20000a62
 8000d64:	20000a64 	.word	0x20000a64
 8000d68:	200009e0 	.word	0x200009e0

08000d6c <line_sensor_read>:
 8000d6c:	b538      	push	{r3, r4, r5, lr}
 8000d6e:	f7ff fe1f 	bl	80009b0 <rgb_read>
 8000d72:	4b16      	ldr	r3, [pc, #88]	; (8000dcc <line_sensor_read+0x60>)
 8000d74:	2200      	movs	r2, #0
 8000d76:	4618      	mov	r0, r3
 8000d78:	5e84      	ldrsh	r4, [r0, r2]
 8000d7a:	f240 31ff 	movw	r1, #1023	; 0x3ff
 8000d7e:	428c      	cmp	r4, r1
 8000d80:	bfdc      	itt	le
 8000d82:	f44f 6480 	movle.w	r4, #1024	; 0x400
 8000d86:	5284      	strhle	r4, [r0, r2]
 8000d88:	f9b3 4012 	ldrsh.w	r4, [r3, #18]
 8000d8c:	8edd      	ldrh	r5, [r3, #54]	; 0x36
 8000d8e:	428c      	cmp	r4, r1
 8000d90:	bfdc      	itt	le
 8000d92:	f44f 6480 	movle.w	r4, #1024	; 0x400
 8000d96:	825c      	strhle	r4, [r3, #18]
 8000d98:	f9b3 4024 	ldrsh.w	r4, [r3, #36]	; 0x24
 8000d9c:	428c      	cmp	r4, r1
 8000d9e:	bfd8      	it	le
 8000da0:	f44f 6180 	movle.w	r1, #1024	; 0x400
 8000da4:	4c0a      	ldr	r4, [pc, #40]	; (8000dd0 <line_sensor_read+0x64>)
 8000da6:	bfd8      	it	le
 8000da8:	8499      	strhle	r1, [r3, #36]	; 0x24
 8000daa:	490a      	ldr	r1, [pc, #40]	; (8000dd4 <line_sensor_read+0x68>)
 8000dac:	5b14      	ldrh	r4, [r2, r4]
 8000dae:	4411      	add	r1, r2
 8000db0:	1b2c      	subs	r4, r5, r4
 8000db2:	3202      	adds	r2, #2
 8000db4:	828c      	strh	r4, [r1, #20]
 8000db6:	2a10      	cmp	r2, #16
 8000db8:	f44f 6480 	mov.w	r4, #1024	; 0x400
 8000dbc:	804c      	strh	r4, [r1, #2]
 8000dbe:	f103 0302 	add.w	r3, r3, #2
 8000dc2:	d1d9      	bne.n	8000d78 <line_sensor_read+0xc>
 8000dc4:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8000dc8:	f7ff bf0c 	b.w	8000be4 <line_sensor_filter>
 8000dcc:	200009e0 	.word	0x200009e0
 8000dd0:	20000000 	.word	0x20000000
 8000dd4:	20000a64 	.word	0x20000a64

08000dd8 <m_abs>:
 8000dd8:	ee07 0a90 	vmov	s15, r0
 8000ddc:	eef5 7ac0 	vcmpe.f32	s15, #0.0
 8000de0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000de4:	bf48      	it	mi
 8000de6:	eef1 7a67 	vnegmi.f32	s15, s15
 8000dea:	ee17 0a90 	vmov	r0, s15
 8000dee:	4770      	bx	lr

08000df0 <m_saturate>:
 8000df0:	ee07 0a90 	vmov	s15, r0
 8000df4:	ee06 1a90 	vmov	s13, r1
 8000df8:	eef4 7a66 	vcmp.f32	s15, s13
 8000dfc:	ee07 2a10 	vmov	s14, r2
 8000e00:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000e04:	bf48      	it	mi
 8000e06:	eef0 7a66 	vmovmi.f32	s15, s13
 8000e0a:	eef4 7a47 	vcmp.f32	s15, s14
 8000e0e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000e12:	bfcc      	ite	gt
 8000e14:	ee17 0a10 	vmovgt	r0, s14
 8000e18:	ee17 0a90 	vmovle	r0, s15
 8000e1c:	4770      	bx	lr

08000e1e <m_min>:
 8000e1e:	ee07 0a10 	vmov	s14, r0
 8000e22:	ee07 1a90 	vmov	s15, r1
 8000e26:	eeb4 7ae7 	vcmpe.f32	s14, s15
 8000e2a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000e2e:	bf54      	ite	pl
 8000e30:	ee17 0a90 	vmovpl	r0, s15
 8000e34:	ee17 0a10 	vmovmi	r0, s14
 8000e38:	4770      	bx	lr
	...

08000e3c <m_rnd>:
 8000e3c:	4b09      	ldr	r3, [pc, #36]	; (8000e64 <m_rnd+0x28>)
 8000e3e:	490a      	ldr	r1, [pc, #40]	; (8000e68 <m_rnd+0x2c>)
 8000e40:	681a      	ldr	r2, [r3, #0]
 8000e42:	434a      	muls	r2, r1
 8000e44:	4909      	ldr	r1, [pc, #36]	; (8000e6c <m_rnd+0x30>)
 8000e46:	f502 5240 	add.w	r2, r2, #12288	; 0x3000
 8000e4a:	b510      	push	{r4, lr}
 8000e4c:	6808      	ldr	r0, [r1, #0]
 8000e4e:	3239      	adds	r2, #57	; 0x39
 8000e50:	601a      	str	r2, [r3, #0]
 8000e52:	4b07      	ldr	r3, [pc, #28]	; (8000e70 <m_rnd+0x34>)
 8000e54:	f340 0400 	sbfx	r4, r0, #0, #1
 8000e58:	4023      	ands	r3, r4
 8000e5a:	ea83 0050 	eor.w	r0, r3, r0, lsr #1
 8000e5e:	6008      	str	r0, [r1, #0]
 8000e60:	4050      	eors	r0, r2
 8000e62:	bd10      	pop	{r4, pc}
 8000e64:	20000014 	.word	0x20000014
 8000e68:	41c64e6d 	.word	0x41c64e6d
 8000e6c:	20000010 	.word	0x20000010
 8000e70:	d0000001 	.word	0xd0000001

08000e74 <line_follower_init>:
 8000e74:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 8000e76:	4b17      	ldr	r3, [pc, #92]	; (8000ed4 <line_follower_init+0x60>)
 8000e78:	4e17      	ldr	r6, [pc, #92]	; (8000ed8 <line_follower_init+0x64>)
 8000e7a:	4f18      	ldr	r7, [pc, #96]	; (8000edc <line_follower_init+0x68>)
 8000e7c:	4d18      	ldr	r5, [pc, #96]	; (8000ee0 <line_follower_init+0x6c>)
 8000e7e:	2400      	movs	r4, #0
 8000e80:	f04f 527e 	mov.w	r2, #1065353216	; 0x3f800000
 8000e84:	601a      	str	r2, [r3, #0]
 8000e86:	605c      	str	r4, [r3, #4]
 8000e88:	609c      	str	r4, [r3, #8]
 8000e8a:	4630      	mov	r0, r6
 8000e8c:	4639      	mov	r1, r7
 8000e8e:	4622      	mov	r2, r4
 8000e90:	4623      	mov	r3, r4
 8000e92:	9400      	str	r4, [sp, #0]
 8000e94:	9401      	str	r4, [sp, #4]
 8000e96:	f000 f935 	bl	8001104 <pid_init>
 8000e9a:	4630      	mov	r0, r6
 8000e9c:	4e11      	ldr	r6, [pc, #68]	; (8000ee4 <line_follower_init+0x70>)
 8000e9e:	9400      	str	r4, [sp, #0]
 8000ea0:	4629      	mov	r1, r5
 8000ea2:	4a11      	ldr	r2, [pc, #68]	; (8000ee8 <line_follower_init+0x74>)
 8000ea4:	4b11      	ldr	r3, [pc, #68]	; (8000eec <line_follower_init+0x78>)
 8000ea6:	f000 f95d 	bl	8001164 <pid_synthetise>
 8000eaa:	4630      	mov	r0, r6
 8000eac:	4639      	mov	r1, r7
 8000eae:	4622      	mov	r2, r4
 8000eb0:	4623      	mov	r3, r4
 8000eb2:	9400      	str	r4, [sp, #0]
 8000eb4:	9401      	str	r4, [sp, #4]
 8000eb6:	f000 f925 	bl	8001104 <pid_init>
 8000eba:	9400      	str	r4, [sp, #0]
 8000ebc:	4630      	mov	r0, r6
 8000ebe:	4629      	mov	r1, r5
 8000ec0:	4a0b      	ldr	r2, [pc, #44]	; (8000ef0 <line_follower_init+0x7c>)
 8000ec2:	4b0c      	ldr	r3, [pc, #48]	; (8000ef4 <line_follower_init+0x80>)
 8000ec4:	f000 f94e 	bl	8001164 <pid_synthetise>
 8000ec8:	b003      	add	sp, #12
 8000eca:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
 8000ece:	f000 b9b5 	b.w	800123c <predictor_init>
 8000ed2:	bf00      	nop
 8000ed4:	20000d34 	.word	0x20000d34
 8000ed8:	20000d40 	.word	0x20000d40
 8000edc:	42c80000 	.word	0x42c80000
 8000ee0:	412db492 	.word	0x412db492
 8000ee4:	20000d0c 	.word	0x20000d0c
 8000ee8:	c1abf7e2 	.word	0xc1abf7e2
 8000eec:	412a3b33 	.word	0x412a3b33
 8000ef0:	c1ab198b 	.word	0xc1ab198b
 8000ef4:	41287e84 	.word	0x41287e84

08000ef8 <line_follower_main>:
 8000ef8:	b570      	push	{r4, r5, r6, lr}
 8000efa:	4d3d      	ldr	r5, [pc, #244]	; (8000ff0 <line_follower_main+0xf8>)
 8000efc:	483d      	ldr	r0, [pc, #244]	; (8000ff4 <line_follower_main+0xfc>)
 8000efe:	ed95 7a0f 	vldr	s14, [r5, #60]	; 0x3c
 8000f02:	ed2d 8b02 	vpush	{d8}
 8000f06:	eef8 7ac7 	vcvt.f32.s32	s15, s14
 8000f0a:	ed9f 8a3b 	vldr	s16, [pc, #236]	; 8000ff8 <line_follower_main+0x100>
 8000f0e:	ee67 7a88 	vmul.f32	s15, s15, s16
 8000f12:	eddf 8a3a 	vldr	s17, [pc, #232]	; 8000ffc <line_follower_main+0x104>
 8000f16:	ee17 1a90 	vmov	r1, s15
 8000f1a:	f000 f929 	bl	8001170 <pid_process>
 8000f1e:	ed95 7a0f 	vldr	s14, [r5, #60]	; 0x3c
 8000f22:	eef8 7ac7 	vcvt.f32.s32	s15, s14
 8000f26:	4606      	mov	r6, r0
 8000f28:	ee67 7a88 	vmul.f32	s15, s15, s16
 8000f2c:	4834      	ldr	r0, [pc, #208]	; (8001000 <line_follower_main+0x108>)
 8000f2e:	ee17 1a90 	vmov	r1, s15
 8000f32:	f000 f91d 	bl	8001170 <pid_process>
 8000f36:	ed95 7a0f 	vldr	s14, [r5, #60]	; 0x3c
 8000f3a:	eef8 7ac7 	vcvt.f32.s32	s15, s14
 8000f3e:	4604      	mov	r4, r0
 8000f40:	ee67 7a88 	vmul.f32	s15, s15, s16
 8000f44:	ed9f 8a2f 	vldr	s16, [pc, #188]	; 8001004 <line_follower_main+0x10c>
 8000f48:	ee17 0a90 	vmov	r0, s15
 8000f4c:	f7ff ff44 	bl	8000dd8 <m_abs>
 8000f50:	ee07 0a90 	vmov	s15, r0
 8000f54:	ee78 8ae7 	vsub.f32	s17, s17, s15
 8000f58:	4622      	mov	r2, r4
 8000f5a:	4631      	mov	r1, r6
 8000f5c:	ee18 0a90 	vmov	r0, s17
 8000f60:	f000 f958 	bl	8001214 <fuzzy_mux_process>
 8000f64:	4c28      	ldr	r4, [pc, #160]	; (8001008 <line_follower_main+0x110>)
 8000f66:	4b29      	ldr	r3, [pc, #164]	; (800100c <line_follower_main+0x114>)
 8000f68:	60a0      	str	r0, [r4, #8]
 8000f6a:	f9b5 003c 	ldrsh.w	r0, [r5, #60]	; 0x3c
 8000f6e:	6023      	str	r3, [r4, #0]
 8000f70:	f000 f9a8 	bl	80012c4 <predictor_process>
 8000f74:	ee07 0a10 	vmov	s14, r0
 8000f78:	eef8 7ac7 	vcvt.f32.s32	s15, s14
 8000f7c:	ed9f 7a24 	vldr	s14, [pc, #144]	; 8001010 <line_follower_main+0x118>
 8000f80:	eec7 7a88 	vdiv.f32	s15, s15, s16
 8000f84:	ee18 1a90 	vmov	r1, s17
 8000f88:	edc4 7a00 	vstr	s15, [r4]
 8000f8c:	edd4 7a01 	vldr	s15, [r4, #4]
 8000f90:	ee48 7a87 	vmla.f32	s15, s17, s14
 8000f94:	ee17 0a90 	vmov	r0, s15
 8000f98:	f7ff ff41 	bl	8000e1e <m_min>
 8000f9c:	ed94 7a00 	vldr	s14, [r4]
 8000fa0:	eddf 7a1c 	vldr	s15, [pc, #112]	; 8001014 <line_follower_main+0x11c>
 8000fa4:	ee67 7a27 	vmul.f32	s15, s14, s15
 8000fa8:	491b      	ldr	r1, [pc, #108]	; (8001018 <line_follower_main+0x120>)
 8000faa:	6060      	str	r0, [r4, #4]
 8000fac:	ee17 2a90 	vmov	r2, s15
 8000fb0:	f7ff ff1e 	bl	8000df0 <m_saturate>
 8000fb4:	ed94 7a02 	vldr	s14, [r4, #8]
 8000fb8:	ee07 0a90 	vmov	s15, r0
 8000fbc:	ee77 6ac7 	vsub.f32	s13, s15, s14
 8000fc0:	ee77 7a87 	vadd.f32	s15, s15, s14
 8000fc4:	ee66 6a88 	vmul.f32	s13, s13, s16
 8000fc8:	ee27 8a88 	vmul.f32	s16, s15, s16
 8000fcc:	eefd 6ae6 	vcvt.s32.f32	s13, s13
 8000fd0:	eebd 8ac8 	vcvt.s32.f32	s16, s16
 8000fd4:	6060      	str	r0, [r4, #4]
 8000fd6:	ee18 1a10 	vmov	r1, s16
 8000fda:	ecbd 8b02 	vpop	{d8}
 8000fde:	ee16 0a90 	vmov	r0, s13
 8000fe2:	b209      	sxth	r1, r1
 8000fe4:	b200      	sxth	r0, r0
 8000fe6:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8000fea:	f000 ba69 	b.w	80014c0 <drv8834_run>
 8000fee:	bf00      	nop
 8000ff0:	20000a64 	.word	0x20000a64
 8000ff4:	20000d40 	.word	0x20000d40
 8000ff8:	3b800000 	.word	0x3b800000
 8000ffc:	3f800000 	.word	0x3f800000
 8001000:	20000d0c 	.word	0x20000d0c
 8001004:	42c80000 	.word	0x42c80000
 8001008:	20000d34 	.word	0x20000d34
 800100c:	3f333333 	.word	0x3f333333
 8001010:	3c23d70a 	.word	0x3c23d70a
 8001014:	3f99999a 	.word	0x3f99999a
 8001018:	3ecccccd 	.word	0x3ecccccd

0800101c <broken_line_init>:
 800101c:	4770      	bx	lr
	...

08001020 <broken_line_main>:
 8001020:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8001024:	2400      	movs	r4, #0
 8001026:	4627      	mov	r7, r4
 8001028:	4625      	mov	r5, r4
 800102a:	4626      	mov	r6, r4
 800102c:	f8df 80d0 	ldr.w	r8, [pc, #208]	; 8001100 <broken_line_main+0xe0>
 8001030:	f898 3038 	ldrb.w	r3, [r8, #56]	; 0x38
 8001034:	2b02      	cmp	r3, #2
 8001036:	d05d      	beq.n	80010f4 <broken_line_main+0xd4>
 8001038:	2005      	movs	r0, #5
 800103a:	f000 fcbb 	bl	80019b4 <timer_delay_ms>
 800103e:	2f05      	cmp	r7, #5
 8001040:	d853      	bhi.n	80010ea <broken_line_main+0xca>
 8001042:	e8df f007 	tbb	[pc, r7]
 8001046:	1303      	.short	0x1303
 8001048:	43413223 	.word	0x43413223
 800104c:	2c00      	cmp	r4, #0
 800104e:	d144      	bne.n	80010da <broken_line_main+0xba>
 8001050:	f8d8 303c 	ldr.w	r3, [r8, #60]	; 0x3c
 8001054:	2b00      	cmp	r3, #0
 8001056:	f04f 0482 	mov.w	r4, #130	; 0x82
 800105a:	f04f 0701 	mov.w	r7, #1
 800105e:	bfd4      	ite	le
 8001060:	2532      	movle	r5, #50	; 0x32
 8001062:	2500      	movgt	r5, #0
 8001064:	bfd4      	ite	le
 8001066:	2600      	movle	r6, #0
 8001068:	2632      	movgt	r6, #50	; 0x32
 800106a:	e03e      	b.n	80010ea <broken_line_main+0xca>
 800106c:	b96c      	cbnz	r4, 800108a <broken_line_main+0x6a>
 800106e:	f8d8 303c 	ldr.w	r3, [r8, #60]	; 0x3c
 8001072:	2b00      	cmp	r3, #0
 8001074:	bfcc      	ite	gt
 8001076:	2500      	movgt	r5, #0
 8001078:	f06f 0531 	mvnle.w	r5, #49	; 0x31
 800107c:	bfcc      	ite	gt
 800107e:	f06f 0631 	mvngt.w	r6, #49	; 0x31
 8001082:	2600      	movle	r6, #0
 8001084:	2482      	movs	r4, #130	; 0x82
 8001086:	2702      	movs	r7, #2
 8001088:	e027      	b.n	80010da <broken_line_main+0xba>
 800108a:	3c01      	subs	r4, #1
 800108c:	bb2c      	cbnz	r4, 80010da <broken_line_main+0xba>
 800108e:	f8d8 303c 	ldr.w	r3, [r8, #60]	; 0x3c
 8001092:	2b00      	cmp	r3, #0
 8001094:	f04f 0482 	mov.w	r4, #130	; 0x82
 8001098:	f04f 0703 	mov.w	r7, #3
 800109c:	bfd4      	ite	le
 800109e:	2500      	movle	r5, #0
 80010a0:	2532      	movgt	r5, #50	; 0x32
 80010a2:	bfd4      	ite	le
 80010a4:	2632      	movle	r6, #50	; 0x32
 80010a6:	2600      	movgt	r6, #0
 80010a8:	e01f      	b.n	80010ea <broken_line_main+0xca>
 80010aa:	b964      	cbnz	r4, 80010c6 <broken_line_main+0xa6>
 80010ac:	f8d8 303c 	ldr.w	r3, [r8, #60]	; 0x3c
 80010b0:	2b00      	cmp	r3, #0
 80010b2:	bfcc      	ite	gt
 80010b4:	f06f 0531 	mvngt.w	r5, #49	; 0x31
 80010b8:	2500      	movle	r5, #0
 80010ba:	bfcc      	ite	gt
 80010bc:	2600      	movgt	r6, #0
 80010be:	2632      	movle	r6, #50	; 0x32
 80010c0:	2482      	movs	r4, #130	; 0x82
 80010c2:	2704      	movs	r7, #4
 80010c4:	e009      	b.n	80010da <broken_line_main+0xba>
 80010c6:	3c01      	subs	r4, #1
 80010c8:	b14c      	cbz	r4, 80010de <broken_line_main+0xbe>
 80010ca:	e006      	b.n	80010da <broken_line_main+0xba>
 80010cc:	b164      	cbz	r4, 80010e8 <broken_line_main+0xc8>
 80010ce:	2d27      	cmp	r5, #39	; 0x27
 80010d0:	bfd8      	it	le
 80010d2:	3501      	addle	r5, #1
 80010d4:	2e27      	cmp	r6, #39	; 0x27
 80010d6:	bfd8      	it	le
 80010d8:	3601      	addle	r6, #1
 80010da:	3c01      	subs	r4, #1
 80010dc:	e005      	b.n	80010ea <broken_line_main+0xca>
 80010de:	2500      	movs	r5, #0
 80010e0:	2441      	movs	r4, #65	; 0x41
 80010e2:	2705      	movs	r7, #5
 80010e4:	462e      	mov	r6, r5
 80010e6:	e000      	b.n	80010ea <broken_line_main+0xca>
 80010e8:	4627      	mov	r7, r4
 80010ea:	b228      	sxth	r0, r5
 80010ec:	b231      	sxth	r1, r6
 80010ee:	f000 f9e7 	bl	80014c0 <drv8834_run>
 80010f2:	e79b      	b.n	800102c <broken_line_main+0xc>
 80010f4:	2000      	movs	r0, #0
 80010f6:	4601      	mov	r1, r0
 80010f8:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 80010fc:	f000 b9e0 	b.w	80014c0 <drv8834_run>
 8001100:	20000a64 	.word	0x20000a64

08001104 <pid_init>:
 8001104:	ee06 2a10 	vmov	s12, r2
 8001108:	ee05 3a90 	vmov	s11, r3
 800110c:	eddd 7a00 	vldr	s15, [sp]
 8001110:	ee76 6a25 	vadd.f32	s13, s12, s11
 8001114:	ed9d 7a01 	vldr	s14, [sp, #4]
 8001118:	ee76 6aa7 	vadd.f32	s13, s13, s15
 800111c:	ee77 5aa7 	vadd.f32	s11, s15, s15
 8001120:	ee76 6a87 	vadd.f32	s13, s13, s14
 8001124:	eeb1 6a46 	vneg.f32	s12, s12
 8001128:	edc0 6a04 	vstr	s13, [r0, #16]
 800112c:	eddf 6a0c 	vldr	s13, [pc, #48]	; 8001160 <pid_init+0x5c>
 8001130:	ee36 6a65 	vsub.f32	s12, s12, s11
 8001134:	ee67 6a26 	vmul.f32	s13, s14, s13
 8001138:	2200      	movs	r2, #0
 800113a:	ee36 6a66 	vsub.f32	s12, s12, s13
 800113e:	ee77 7aa6 	vadd.f32	s15, s15, s13
 8001142:	eeb1 7a47 	vneg.f32	s14, s14
 8001146:	6002      	str	r2, [r0, #0]
 8001148:	6042      	str	r2, [r0, #4]
 800114a:	6082      	str	r2, [r0, #8]
 800114c:	60c2      	str	r2, [r0, #12]
 800114e:	ed80 6a05 	vstr	s12, [r0, #20]
 8001152:	edc0 7a06 	vstr	s15, [r0, #24]
 8001156:	ed80 7a07 	vstr	s14, [r0, #28]
 800115a:	6202      	str	r2, [r0, #32]
 800115c:	6241      	str	r1, [r0, #36]	; 0x24
 800115e:	4770      	bx	lr
 8001160:	40400000 	.word	0x40400000

08001164 <pid_synthetise>:
 8001164:	6183      	str	r3, [r0, #24]
 8001166:	9b00      	ldr	r3, [sp, #0]
 8001168:	6101      	str	r1, [r0, #16]
 800116a:	6142      	str	r2, [r0, #20]
 800116c:	61c3      	str	r3, [r0, #28]
 800116e:	4770      	bx	lr

08001170 <pid_process>:
 8001170:	edd0 7a08 	vldr	s15, [r0, #32]
 8001174:	ee05 1a90 	vmov	s11, r1
 8001178:	ed90 5a04 	vldr	s10, [r0, #16]
 800117c:	ee45 7a85 	vmla.f32	s15, s11, s10
 8001180:	ed90 6a00 	vldr	s12, [r0]
 8001184:	edd0 5a05 	vldr	s11, [r0, #20]
 8001188:	ee46 7a25 	vmla.f32	s15, s12, s11
 800118c:	edd0 6a01 	vldr	s13, [r0, #4]
 8001190:	ed80 6a01 	vstr	s12, [r0, #4]
 8001194:	ed90 6a06 	vldr	s12, [r0, #24]
 8001198:	ee46 7a86 	vmla.f32	s15, s13, s12
 800119c:	ed90 7a02 	vldr	s14, [r0, #8]
 80011a0:	edc0 6a02 	vstr	s13, [r0, #8]
 80011a4:	edd0 6a07 	vldr	s13, [r0, #28]
 80011a8:	ee47 7a26 	vmla.f32	s15, s14, s13
 80011ac:	ed80 7a03 	vstr	s14, [r0, #12]
 80011b0:	ed90 7a09 	vldr	s14, [r0, #36]	; 0x24
 80011b4:	eef4 7ac7 	vcmpe.f32	s15, s14
 80011b8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80011bc:	edc0 7a08 	vstr	s15, [r0, #32]
 80011c0:	bfc8      	it	gt
 80011c2:	ed80 7a08 	vstrgt	s14, [r0, #32]
 80011c6:	edd0 7a08 	vldr	s15, [r0, #32]
 80011ca:	eeb1 7a47 	vneg.f32	s14, s14
 80011ce:	eef4 7ac7 	vcmpe.f32	s15, s14
 80011d2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80011d6:	bf48      	it	mi
 80011d8:	ed80 7a08 	vstrmi	s14, [r0, #32]
 80011dc:	6001      	str	r1, [r0, #0]
 80011de:	6a00      	ldr	r0, [r0, #32]
 80011e0:	4770      	bx	lr
	...

080011e4 <obstacle_init>:
 80011e4:	2300      	movs	r3, #0
 80011e6:	4a04      	ldr	r2, [pc, #16]	; (80011f8 <obstacle_init+0x14>)
 80011e8:	5a99      	ldrh	r1, [r3, r2]
 80011ea:	4a04      	ldr	r2, [pc, #16]	; (80011fc <obstacle_init+0x18>)
 80011ec:	5299      	strh	r1, [r3, r2]
 80011ee:	3302      	adds	r3, #2
 80011f0:	2b40      	cmp	r3, #64	; 0x40
 80011f2:	d1f8      	bne.n	80011e6 <obstacle_init+0x2>
 80011f4:	4770      	bx	lr
 80011f6:	bf00      	nop
 80011f8:	20000018 	.word	0x20000018
 80011fc:	20000d68 	.word	0x20000d68

08001200 <obstacle_main>:
 8001200:	b508      	push	{r3, lr}
 8001202:	2000      	movs	r0, #0
 8001204:	4601      	mov	r1, r0
 8001206:	f000 f95b 	bl	80014c0 <drv8834_run>
 800120a:	2064      	movs	r0, #100	; 0x64
 800120c:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001210:	f000 bbd0 	b.w	80019b4 <timer_delay_ms>

08001214 <fuzzy_mux_process>:
 8001214:	ee07 0a90 	vmov	s15, r0
 8001218:	ed9f 7a07 	vldr	s14, [pc, #28]	; 8001238 <fuzzy_mux_process+0x24>
 800121c:	ee06 2a90 	vmov	s13, r2
 8001220:	ee37 7a67 	vsub.f32	s14, s14, s15
 8001224:	ee27 7a26 	vmul.f32	s14, s14, s13
 8001228:	ee06 1a90 	vmov	s13, r1
 800122c:	ee07 7aa6 	vmla.f32	s14, s15, s13
 8001230:	ee17 0a10 	vmov	r0, s14
 8001234:	4770      	bx	lr
 8001236:	bf00      	nop
 8001238:	3f800000 	.word	0x3f800000

0800123c <predictor_init>:
 800123c:	b570      	push	{r4, r5, r6, lr}
 800123e:	2300      	movs	r3, #0
 8001240:	4e1c      	ldr	r6, [pc, #112]	; (80012b4 <predictor_init+0x78>)
 8001242:	2500      	movs	r5, #0
 8001244:	539d      	strh	r5, [r3, r6]
 8001246:	3302      	adds	r3, #2
 8001248:	2b20      	cmp	r3, #32
 800124a:	d1f9      	bne.n	8001240 <predictor_init+0x4>
 800124c:	2400      	movs	r4, #0
 800124e:	f7ff fdf5 	bl	8000e3c <m_rnd>
 8001252:	1973      	adds	r3, r6, r5
 8001254:	4423      	add	r3, r4
 8001256:	3402      	adds	r4, #2
 8001258:	f3c0 00c4 	ubfx	r0, r0, #3, #5
 800125c:	2c20      	cmp	r4, #32
 800125e:	4915      	ldr	r1, [pc, #84]	; (80012b4 <predictor_init+0x78>)
 8001260:	8418      	strh	r0, [r3, #32]
 8001262:	d1f4      	bne.n	800124e <predictor_init+0x12>
 8001264:	3520      	adds	r5, #32
 8001266:	f5b5 7f00 	cmp.w	r5, #512	; 0x200
 800126a:	d1ef      	bne.n	800124c <predictor_init+0x10>
 800126c:	4b12      	ldr	r3, [pc, #72]	; (80012b8 <predictor_init+0x7c>)
 800126e:	f103 0020 	add.w	r0, r3, #32
 8001272:	2232      	movs	r2, #50	; 0x32
 8001274:	f823 2f02 	strh.w	r2, [r3, #2]!
 8001278:	2200      	movs	r2, #0
 800127a:	4283      	cmp	r3, r0
 800127c:	841a      	strh	r2, [r3, #32]
 800127e:	d1f8      	bne.n	8001272 <predictor_init+0x36>
 8001280:	480e      	ldr	r0, [pc, #56]	; (80012bc <predictor_init+0x80>)
 8001282:	2300      	movs	r3, #0
 8001284:	eb00 1002 	add.w	r0, r0, r2, lsl #4
 8001288:	1854      	adds	r4, r2, r1
 800128a:	eb04 1403 	add.w	r4, r4, r3, lsl #4
 800128e:	5ac5      	ldrh	r5, [r0, r3]
 8001290:	3302      	adds	r3, #2
 8001292:	2b20      	cmp	r3, #32
 8001294:	8425      	strh	r5, [r4, #32]
 8001296:	d1f7      	bne.n	8001288 <predictor_init+0x4c>
 8001298:	3202      	adds	r2, #2
 800129a:	2a20      	cmp	r2, #32
 800129c:	d1f0      	bne.n	8001280 <predictor_init+0x44>
 800129e:	2300      	movs	r3, #0
 80012a0:	4907      	ldr	r1, [pc, #28]	; (80012c0 <predictor_init+0x84>)
 80012a2:	18f2      	adds	r2, r6, r3
 80012a4:	5a59      	ldrh	r1, [r3, r1]
 80012a6:	3302      	adds	r3, #2
 80012a8:	2b20      	cmp	r3, #32
 80012aa:	f8a2 1220 	strh.w	r1, [r2, #544]	; 0x220
 80012ae:	d1f7      	bne.n	80012a0 <predictor_init+0x64>
 80012b0:	bd70      	pop	{r4, r5, r6, pc}
 80012b2:	bf00      	nop
 80012b4:	20000aac 	.word	0x20000aac
 80012b8:	20000cca 	.word	0x20000cca
 80012bc:	20000078 	.word	0x20000078
 80012c0:	20000058 	.word	0x20000058

080012c4 <predictor_process>:
 80012c4:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 80012c8:	4b36      	ldr	r3, [pc, #216]	; (80013a4 <predictor_process+0xe0>)
 80012ca:	f1a3 011e 	sub.w	r1, r3, #30
 80012ce:	1c8a      	adds	r2, r1, #2
 80012d0:	f833 4902 	ldrh.w	r4, [r3], #-2
 80012d4:	428b      	cmp	r3, r1
 80012d6:	809c      	strh	r4, [r3, #4]
 80012d8:	d1fa      	bne.n	80012d0 <predictor_process+0xc>
 80012da:	2800      	cmp	r0, #0
 80012dc:	bfbc      	itt	lt
 80012de:	4240      	neglt	r0, r0
 80012e0:	b200      	sxthlt	r0, r0
 80012e2:	2300      	movs	r3, #0
 80012e4:	8010      	strh	r0, [r2, #0]
 80012e6:	f44f 5680 	mov.w	r6, #4096	; 0x1000
 80012ea:	4619      	mov	r1, r3
 80012ec:	4c2e      	ldr	r4, [pc, #184]	; (80013a8 <predictor_process+0xe4>)
 80012ee:	014f      	lsls	r7, r1, #5
 80012f0:	f104 0c20 	add.w	ip, r4, #32
 80012f4:	2500      	movs	r5, #0
 80012f6:	f834 9f02 	ldrh.w	r9, [r4, #2]!
 80012fa:	eb04 0807 	add.w	r8, r4, r7
 80012fe:	f8b8 8020 	ldrh.w	r8, [r8, #32]
 8001302:	ebc8 0809 	rsb	r8, r8, r9
 8001306:	f1b8 0f00 	cmp.w	r8, #0
 800130a:	bfb8      	it	lt
 800130c:	f1c8 0800 	rsblt	r8, r8, #0
 8001310:	4564      	cmp	r4, ip
 8001312:	4445      	add	r5, r8
 8001314:	d1ef      	bne.n	80012f6 <predictor_process+0x32>
 8001316:	42b5      	cmp	r5, r6
 8001318:	bfb8      	it	lt
 800131a:	460b      	movlt	r3, r1
 800131c:	f101 0101 	add.w	r1, r1, #1
 8001320:	bfb8      	it	lt
 8001322:	462e      	movlt	r6, r5
 8001324:	2910      	cmp	r1, #16
 8001326:	d1e1      	bne.n	80012ec <predictor_process+0x28>
 8001328:	eb02 1843 	add.w	r8, r2, r3, lsl #5
 800132c:	2400      	movs	r4, #0
 800132e:	eb08 0604 	add.w	r6, r8, r4
 8001332:	5b17      	ldrh	r7, [r2, r4]
 8001334:	f8b6 c020 	ldrh.w	ip, [r6, #32]
 8001338:	491c      	ldr	r1, [pc, #112]	; (80013ac <predictor_process+0xe8>)
 800133a:	251f      	movs	r5, #31
 800133c:	fb05 770c 	mla	r7, r5, ip, r7
 8001340:	097f      	lsrs	r7, r7, #5
 8001342:	3402      	adds	r4, #2
 8001344:	f5b7 7f80 	cmp.w	r7, #256	; 0x100
 8001348:	bf28      	it	cs
 800134a:	f44f 7780 	movcs.w	r7, #256	; 0x100
 800134e:	2c20      	cmp	r4, #32
 8001350:	8437      	strh	r7, [r6, #32]
 8001352:	d1ec      	bne.n	800132e <predictor_process+0x6a>
 8001354:	f503 7490 	add.w	r4, r3, #288	; 0x120
 8001358:	f503 7388 	add.w	r3, r3, #272	; 0x110
 800135c:	f831 6014 	ldrh.w	r6, [r1, r4, lsl #1]
 8001360:	fb05 0006 	mla	r0, r5, r6, r0
 8001364:	0940      	lsrs	r0, r0, #5
 8001366:	f821 0014 	strh.w	r0, [r1, r4, lsl #1]
 800136a:	2428      	movs	r4, #40	; 0x28
 800136c:	b280      	uxth	r0, r0
 800136e:	4360      	muls	r0, r4
 8001370:	2464      	movs	r4, #100	; 0x64
 8001372:	fbb0 f0f4 	udiv	r0, r0, r4
 8001376:	f831 4013 	ldrh.w	r4, [r1, r3, lsl #1]
 800137a:	f1c0 0001 	rsb	r0, r0, #1
 800137e:	4420      	add	r0, r4
 8001380:	b280      	uxth	r0, r0
 8001382:	2831      	cmp	r0, #49	; 0x31
 8001384:	bf98      	it	ls
 8001386:	2032      	movls	r0, #50	; 0x32
 8001388:	f821 0013 	strh.w	r0, [r1, r3, lsl #1]
 800138c:	f832 1013 	ldrh.w	r1, [r2, r3, lsl #1]
 8001390:	2964      	cmp	r1, #100	; 0x64
 8001392:	d903      	bls.n	800139c <predictor_process+0xd8>
 8001394:	4905      	ldr	r1, [pc, #20]	; (80013ac <predictor_process+0xe8>)
 8001396:	2064      	movs	r0, #100	; 0x64
 8001398:	f821 0013 	strh.w	r0, [r1, r3, lsl #1]
 800139c:	f832 0013 	ldrh.w	r0, [r2, r3, lsl #1]
 80013a0:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 80013a4:	20000ac8 	.word	0x20000ac8
 80013a8:	20000aaa 	.word	0x20000aaa
 80013ac:	20000aac 	.word	0x20000aac

080013b0 <line_sensor_thread>:
 80013b0:	b508      	push	{r3, lr}
 80013b2:	f7ff fbfb 	bl	8000bac <line_sensor_init>
 80013b6:	2000      	movs	r0, #0
 80013b8:	2104      	movs	r1, #4
 80013ba:	f000 fb0b 	bl	80019d4 <event_timer_set_period>
 80013be:	2000      	movs	r0, #0
 80013c0:	f000 fb1e 	bl	8001a00 <event_timer_wait>
 80013c4:	f7ff fcd2 	bl	8000d6c <line_sensor_read>
 80013c8:	e7f9      	b.n	80013be <line_sensor_thread+0xe>

080013ca <i2c_sensor_thread>:
 80013ca:	b508      	push	{r3, lr}
 80013cc:	f7ff fbc2 	bl	8000b54 <imu_init>
 80013d0:	f7ff fb96 	bl	8000b00 <camera_init>
 80013d4:	2001      	movs	r0, #1
 80013d6:	2114      	movs	r1, #20
 80013d8:	f000 fafc 	bl	80019d4 <event_timer_set_period>
 80013dc:	2001      	movs	r0, #1
 80013de:	f000 fb0f 	bl	8001a00 <event_timer_wait>
 80013e2:	f7ff fba5 	bl	8000b30 <imu_read>
 80013e6:	f7ff fb93 	bl	8000b10 <camera_read>
 80013ea:	e7f7      	b.n	80013dc <i2c_sensor_thread+0x12>

080013ec <line_follower>:
 80013ec:	b510      	push	{r4, lr}
 80013ee:	f7ff fd41 	bl	8000e74 <line_follower_init>
 80013f2:	2002      	movs	r0, #2
 80013f4:	2104      	movs	r1, #4
 80013f6:	f000 faed 	bl	80019d4 <event_timer_set_period>
 80013fa:	2400      	movs	r4, #0
 80013fc:	2002      	movs	r0, #2
 80013fe:	f000 faff 	bl	8001a00 <event_timer_wait>
 8001402:	4b10      	ldr	r3, [pc, #64]	; (8001444 <line_follower+0x58>)
 8001404:	6c1a      	ldr	r2, [r3, #64]	; 0x40
 8001406:	f5b2 7f02 	cmp.w	r2, #520	; 0x208
 800140a:	dd02      	ble.n	8001412 <line_follower+0x26>
 800140c:	f7ff fef8 	bl	8001200 <obstacle_main>
 8001410:	e008      	b.n	8001424 <line_follower+0x38>
 8001412:	f893 3038 	ldrb.w	r3, [r3, #56]	; 0x38
 8001416:	2b02      	cmp	r3, #2
 8001418:	d102      	bne.n	8001420 <line_follower+0x34>
 800141a:	f7ff fd6d 	bl	8000ef8 <line_follower_main>
 800141e:	e001      	b.n	8001424 <line_follower+0x38>
 8001420:	f7ff fdfe 	bl	8001020 <broken_line_main>
 8001424:	3401      	adds	r4, #1
 8001426:	2314      	movs	r3, #20
 8001428:	fbb4 f2f3 	udiv	r2, r4, r3
 800142c:	fb03 4312 	mls	r3, r3, r2, r4
 8001430:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001434:	b913      	cbnz	r3, 800143c <line_follower+0x50>
 8001436:	f001 f817 	bl	8002468 <led_on>
 800143a:	e7df      	b.n	80013fc <line_follower+0x10>
 800143c:	f001 f826 	bl	800248c <led_off>
 8001440:	e7dc      	b.n	80013fc <line_follower+0x10>
 8001442:	bf00      	nop
 8001444:	20000a64 	.word	0x20000a64

08001448 <main_thread>:
 8001448:	b508      	push	{r3, lr}
 800144a:	4818      	ldr	r0, [pc, #96]	; (80014ac <main_thread+0x64>)
 800144c:	f7ff f84c 	bl	80004e8 <printf_>
 8001450:	4917      	ldr	r1, [pc, #92]	; (80014b0 <main_thread+0x68>)
 8001452:	4818      	ldr	r0, [pc, #96]	; (80014b4 <main_thread+0x6c>)
 8001454:	f44f 7200 	mov.w	r2, #512	; 0x200
 8001458:	2306      	movs	r3, #6
 800145a:	f7fe ff17 	bl	800028c <create_thread>
 800145e:	f44f 7200 	mov.w	r2, #512	; 0x200
 8001462:	2306      	movs	r3, #6
 8001464:	4914      	ldr	r1, [pc, #80]	; (80014b8 <main_thread+0x70>)
 8001466:	4815      	ldr	r0, [pc, #84]	; (80014bc <main_thread+0x74>)
 8001468:	f7fe ff10 	bl	800028c <create_thread>
 800146c:	2000      	movs	r0, #0
 800146e:	4601      	mov	r1, r0
 8001470:	f000 f826 	bl	80014c0 <drv8834_run>
 8001474:	f7ff fdd2 	bl	800101c <broken_line_init>
 8001478:	f7ff feb4 	bl	80011e4 <obstacle_init>
 800147c:	f001 f818 	bl	80024b0 <get_key>
 8001480:	b128      	cbz	r0, 800148e <main_thread+0x46>
 8001482:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 8001486:	f000 fa95 	bl	80019b4 <timer_delay_ms>
 800148a:	f7ff ffaf 	bl	80013ec <line_follower>
 800148e:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001492:	f000 ffe9 	bl	8002468 <led_on>
 8001496:	2064      	movs	r0, #100	; 0x64
 8001498:	f000 fa8c 	bl	80019b4 <timer_delay_ms>
 800149c:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 80014a0:	f000 fff4 	bl	800248c <led_off>
 80014a4:	20c8      	movs	r0, #200	; 0xc8
 80014a6:	f000 fa85 	bl	80019b4 <timer_delay_ms>
 80014aa:	e7e7      	b.n	800147c <main_thread+0x34>
 80014ac:	08002571 	.word	0x08002571
 80014b0:	200003e0 	.word	0x200003e0
 80014b4:	080013b1 	.word	0x080013b1
 80014b8:	200005e0 	.word	0x200005e0
 80014bc:	080013cb 	.word	0x080013cb

080014c0 <drv8834_run>:
 80014c0:	1e02      	subs	r2, r0, #0
 80014c2:	4b18      	ldr	r3, [pc, #96]	; (8001524 <drv8834_run+0x64>)
 80014c4:	dd09      	ble.n	80014da <drv8834_run+0x1a>
 80014c6:	6998      	ldr	r0, [r3, #24]
 80014c8:	f040 0008 	orr.w	r0, r0, #8
 80014cc:	6198      	str	r0, [r3, #24]
 80014ce:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 80014d2:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 80014d6:	6198      	str	r0, [r3, #24]
 80014d8:	e00b      	b.n	80014f2 <drv8834_run+0x32>
 80014da:	8d18      	ldrh	r0, [r3, #40]	; 0x28
 80014dc:	b280      	uxth	r0, r0
 80014de:	f040 0008 	orr.w	r0, r0, #8
 80014e2:	8518      	strh	r0, [r3, #40]	; 0x28
 80014e4:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 80014e8:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 80014ec:	4252      	negs	r2, r2
 80014ee:	8518      	strh	r0, [r3, #40]	; 0x28
 80014f0:	b212      	sxth	r2, r2
 80014f2:	2900      	cmp	r1, #0
 80014f4:	4b0b      	ldr	r3, [pc, #44]	; (8001524 <drv8834_run+0x64>)
 80014f6:	dd05      	ble.n	8001504 <drv8834_run+0x44>
 80014f8:	8d18      	ldrh	r0, [r3, #40]	; 0x28
 80014fa:	b280      	uxth	r0, r0
 80014fc:	f040 0020 	orr.w	r0, r0, #32
 8001500:	8518      	strh	r0, [r3, #40]	; 0x28
 8001502:	e005      	b.n	8001510 <drv8834_run+0x50>
 8001504:	6998      	ldr	r0, [r3, #24]
 8001506:	4249      	negs	r1, r1
 8001508:	f040 0020 	orr.w	r0, r0, #32
 800150c:	6198      	str	r0, [r3, #24]
 800150e:	b209      	sxth	r1, r1
 8001510:	2964      	cmp	r1, #100	; 0x64
 8001512:	bfb4      	ite	lt
 8001514:	4608      	movlt	r0, r1
 8001516:	2064      	movge	r0, #100	; 0x64
 8001518:	2a64      	cmp	r2, #100	; 0x64
 800151a:	bfb4      	ite	lt
 800151c:	4611      	movlt	r1, r2
 800151e:	2164      	movge	r1, #100	; 0x64
 8001520:	f000 b844 	b.w	80015ac <pwm_set>
 8001524:	48000400 	.word	0x48000400

08001528 <drv8834_init>:
 8001528:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 800152a:	4d1f      	ldr	r5, [pc, #124]	; (80015a8 <drv8834_init+0x80>)
 800152c:	2400      	movs	r4, #0
 800152e:	2603      	movs	r6, #3
 8001530:	2338      	movs	r3, #56	; 0x38
 8001532:	2701      	movs	r7, #1
 8001534:	4628      	mov	r0, r5
 8001536:	4669      	mov	r1, sp
 8001538:	9300      	str	r3, [sp, #0]
 800153a:	f88d 7004 	strb.w	r7, [sp, #4]
 800153e:	f88d 4006 	strb.w	r4, [sp, #6]
 8001542:	f88d 6005 	strb.w	r6, [sp, #5]
 8001546:	f88d 4007 	strb.w	r4, [sp, #7]
 800154a:	f000 feda 	bl	8002302 <GPIO_Init>
 800154e:	2308      	movs	r3, #8
 8001550:	9300      	str	r3, [sp, #0]
 8001552:	4628      	mov	r0, r5
 8001554:	2302      	movs	r3, #2
 8001556:	4669      	mov	r1, sp
 8001558:	f88d 3004 	strb.w	r3, [sp, #4]
 800155c:	f88d 4006 	strb.w	r4, [sp, #6]
 8001560:	f88d 6005 	strb.w	r6, [sp, #5]
 8001564:	f88d 4007 	strb.w	r4, [sp, #7]
 8001568:	f000 fecb 	bl	8002302 <GPIO_Init>
 800156c:	220f      	movs	r2, #15
 800156e:	4628      	mov	r0, r5
 8001570:	4631      	mov	r1, r6
 8001572:	f000 ff14 	bl	800239e <GPIO_PinAFConfig>
 8001576:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 800157a:	4669      	mov	r1, sp
 800157c:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8001580:	9300      	str	r3, [sp, #0]
 8001582:	f88d 7004 	strb.w	r7, [sp, #4]
 8001586:	f88d 4006 	strb.w	r4, [sp, #6]
 800158a:	f88d 6005 	strb.w	r6, [sp, #5]
 800158e:	f88d 4007 	strb.w	r4, [sp, #7]
 8001592:	f000 feb6 	bl	8002302 <GPIO_Init>
 8001596:	2310      	movs	r3, #16
 8001598:	852b      	strh	r3, [r5, #40]	; 0x28
 800159a:	4620      	mov	r0, r4
 800159c:	4621      	mov	r1, r4
 800159e:	f7ff ff8f 	bl	80014c0 <drv8834_run>
 80015a2:	b003      	add	sp, #12
 80015a4:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80015a6:	bf00      	nop
 80015a8:	48000400 	.word	0x48000400

080015ac <pwm_set>:
 80015ac:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80015b0:	b086      	sub	sp, #24
 80015b2:	2370      	movs	r3, #112	; 0x70
 80015b4:	9301      	str	r3, [sp, #4]
 80015b6:	2301      	movs	r3, #1
 80015b8:	f8ad 3008 	strh.w	r3, [sp, #8]
 80015bc:	2304      	movs	r3, #4
 80015be:	f8ad 300a 	strh.w	r3, [sp, #10]
 80015c2:	4f17      	ldr	r7, [pc, #92]	; (8001620 <pwm_set+0x74>)
 80015c4:	4c17      	ldr	r4, [pc, #92]	; (8001624 <pwm_set+0x78>)
 80015c6:	2302      	movs	r3, #2
 80015c8:	f8ad 3010 	strh.w	r3, [sp, #16]
 80015cc:	2300      	movs	r3, #0
 80015ce:	f8ad 3012 	strh.w	r3, [sp, #18]
 80015d2:	f8ad 3016 	strh.w	r3, [sp, #22]
 80015d6:	683b      	ldr	r3, [r7, #0]
 80015d8:	f242 7610 	movw	r6, #10000	; 0x2710
 80015dc:	fbb3 f3f6 	udiv	r3, r3, r6
 80015e0:	3b02      	subs	r3, #2
 80015e2:	4358      	muls	r0, r3
 80015e4:	2564      	movs	r5, #100	; 0x64
 80015e6:	fbb0 f3f5 	udiv	r3, r0, r5
 80015ea:	f44f 7280 	mov.w	r2, #256	; 0x100
 80015ee:	4620      	mov	r0, r4
 80015f0:	4688      	mov	r8, r1
 80015f2:	a901      	add	r1, sp, #4
 80015f4:	f8ad 2014 	strh.w	r2, [sp, #20]
 80015f8:	9303      	str	r3, [sp, #12]
 80015fa:	f000 f8c1 	bl	8001780 <TIM_OC1Init>
 80015fe:	683b      	ldr	r3, [r7, #0]
 8001600:	fbb3 f6f6 	udiv	r6, r3, r6
 8001604:	3e02      	subs	r6, #2
 8001606:	fb06 f808 	mul.w	r8, r6, r8
 800160a:	fbb8 f5f5 	udiv	r5, r8, r5
 800160e:	4620      	mov	r0, r4
 8001610:	a901      	add	r1, sp, #4
 8001612:	9503      	str	r5, [sp, #12]
 8001614:	f000 f8fa 	bl	800180c <TIM_OC2Init>
 8001618:	b006      	add	sp, #24
 800161a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800161e:	bf00      	nop
 8001620:	20000278 	.word	0x20000278
 8001624:	40012c00 	.word	0x40012c00

08001628 <pwm_init>:
 8001628:	b530      	push	{r4, r5, lr}
 800162a:	f44f 6000 	mov.w	r0, #2048	; 0x800
 800162e:	b087      	sub	sp, #28
 8001630:	2101      	movs	r1, #1
 8001632:	f000 fe39 	bl	80022a8 <RCC_APB2PeriphClockCmd>
 8001636:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 800163a:	2101      	movs	r1, #1
 800163c:	f000 fe26 	bl	800228c <RCC_AHBPeriphClockCmd>
 8001640:	4c1d      	ldr	r4, [pc, #116]	; (80016b8 <pwm_init+0x90>)
 8001642:	4d1e      	ldr	r5, [pc, #120]	; (80016bc <pwm_init+0x94>)
 8001644:	f44f 43c0 	mov.w	r3, #24576	; 0x6000
 8001648:	9301      	str	r3, [sp, #4]
 800164a:	2302      	movs	r3, #2
 800164c:	f88d 3008 	strb.w	r3, [sp, #8]
 8001650:	4620      	mov	r0, r4
 8001652:	2303      	movs	r3, #3
 8001654:	a901      	add	r1, sp, #4
 8001656:	f88d 3009 	strb.w	r3, [sp, #9]
 800165a:	f000 fe52 	bl	8002302 <GPIO_Init>
 800165e:	4620      	mov	r0, r4
 8001660:	210d      	movs	r1, #13
 8001662:	2206      	movs	r2, #6
 8001664:	f000 fe9b 	bl	800239e <GPIO_PinAFConfig>
 8001668:	4620      	mov	r0, r4
 800166a:	210e      	movs	r1, #14
 800166c:	2206      	movs	r2, #6
 800166e:	f000 fe96 	bl	800239e <GPIO_PinAFConfig>
 8001672:	4b13      	ldr	r3, [pc, #76]	; (80016c0 <pwm_init+0x98>)
 8001674:	681a      	ldr	r2, [r3, #0]
 8001676:	f242 7310 	movw	r3, #10000	; 0x2710
 800167a:	fbb2 f3f3 	udiv	r3, r2, r3
 800167e:	2400      	movs	r4, #0
 8001680:	3b01      	subs	r3, #1
 8001682:	4628      	mov	r0, r5
 8001684:	a903      	add	r1, sp, #12
 8001686:	9304      	str	r3, [sp, #16]
 8001688:	f8ad 400c 	strh.w	r4, [sp, #12]
 800168c:	f8ad 400e 	strh.w	r4, [sp, #14]
 8001690:	f8ad 4014 	strh.w	r4, [sp, #20]
 8001694:	f8ad 4016 	strh.w	r4, [sp, #22]
 8001698:	f000 f814 	bl	80016c4 <TIM_TimeBaseInit>
 800169c:	4620      	mov	r0, r4
 800169e:	4621      	mov	r1, r4
 80016a0:	f7ff ff84 	bl	80015ac <pwm_set>
 80016a4:	4628      	mov	r0, r5
 80016a6:	2101      	movs	r1, #1
 80016a8:	f000 f85c 	bl	8001764 <TIM_Cmd>
 80016ac:	4628      	mov	r0, r5
 80016ae:	2101      	movs	r1, #1
 80016b0:	f000 f8ea 	bl	8001888 <TIM_CtrlPWMOutputs>
 80016b4:	b007      	add	sp, #28
 80016b6:	bd30      	pop	{r4, r5, pc}
 80016b8:	48000400 	.word	0x48000400
 80016bc:	40012c00 	.word	0x40012c00
 80016c0:	20000278 	.word	0x20000278

080016c4 <TIM_TimeBaseInit>:
 80016c4:	bf00      	nop
 80016c6:	bf00      	nop
 80016c8:	bf00      	nop
 80016ca:	4a24      	ldr	r2, [pc, #144]	; (800175c <TIM_TimeBaseInit+0x98>)
 80016cc:	8803      	ldrh	r3, [r0, #0]
 80016ce:	4290      	cmp	r0, r2
 80016d0:	b29b      	uxth	r3, r3
 80016d2:	d012      	beq.n	80016fa <TIM_TimeBaseInit+0x36>
 80016d4:	f502 6200 	add.w	r2, r2, #2048	; 0x800
 80016d8:	4290      	cmp	r0, r2
 80016da:	d00e      	beq.n	80016fa <TIM_TimeBaseInit+0x36>
 80016dc:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 80016e0:	d00b      	beq.n	80016fa <TIM_TimeBaseInit+0x36>
 80016e2:	f5a2 3298 	sub.w	r2, r2, #77824	; 0x13000
 80016e6:	4290      	cmp	r0, r2
 80016e8:	d007      	beq.n	80016fa <TIM_TimeBaseInit+0x36>
 80016ea:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 80016ee:	4290      	cmp	r0, r2
 80016f0:	d003      	beq.n	80016fa <TIM_TimeBaseInit+0x36>
 80016f2:	f502 32a4 	add.w	r2, r2, #83968	; 0x14800
 80016f6:	4290      	cmp	r0, r2
 80016f8:	d103      	bne.n	8001702 <TIM_TimeBaseInit+0x3e>
 80016fa:	884a      	ldrh	r2, [r1, #2]
 80016fc:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 8001700:	4313      	orrs	r3, r2
 8001702:	4a17      	ldr	r2, [pc, #92]	; (8001760 <TIM_TimeBaseInit+0x9c>)
 8001704:	4290      	cmp	r0, r2
 8001706:	d008      	beq.n	800171a <TIM_TimeBaseInit+0x56>
 8001708:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 800170c:	4290      	cmp	r0, r2
 800170e:	d004      	beq.n	800171a <TIM_TimeBaseInit+0x56>
 8001710:	f423 7340 	bic.w	r3, r3, #768	; 0x300
 8001714:	890a      	ldrh	r2, [r1, #8]
 8001716:	b29b      	uxth	r3, r3
 8001718:	4313      	orrs	r3, r2
 800171a:	8003      	strh	r3, [r0, #0]
 800171c:	684b      	ldr	r3, [r1, #4]
 800171e:	62c3      	str	r3, [r0, #44]	; 0x2c
 8001720:	880b      	ldrh	r3, [r1, #0]
 8001722:	8503      	strh	r3, [r0, #40]	; 0x28
 8001724:	4b0d      	ldr	r3, [pc, #52]	; (800175c <TIM_TimeBaseInit+0x98>)
 8001726:	4298      	cmp	r0, r3
 8001728:	d013      	beq.n	8001752 <TIM_TimeBaseInit+0x8e>
 800172a:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 800172e:	4298      	cmp	r0, r3
 8001730:	d00f      	beq.n	8001752 <TIM_TimeBaseInit+0x8e>
 8001732:	f503 6340 	add.w	r3, r3, #3072	; 0xc00
 8001736:	4298      	cmp	r0, r3
 8001738:	d00b      	beq.n	8001752 <TIM_TimeBaseInit+0x8e>
 800173a:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 800173e:	4298      	cmp	r0, r3
 8001740:	d007      	beq.n	8001752 <TIM_TimeBaseInit+0x8e>
 8001742:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 8001746:	4298      	cmp	r0, r3
 8001748:	d003      	beq.n	8001752 <TIM_TimeBaseInit+0x8e>
 800174a:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 800174e:	4298      	cmp	r0, r3
 8001750:	d101      	bne.n	8001756 <TIM_TimeBaseInit+0x92>
 8001752:	894b      	ldrh	r3, [r1, #10]
 8001754:	8603      	strh	r3, [r0, #48]	; 0x30
 8001756:	2301      	movs	r3, #1
 8001758:	6143      	str	r3, [r0, #20]
 800175a:	4770      	bx	lr
 800175c:	40012c00 	.word	0x40012c00
 8001760:	40001000 	.word	0x40001000

08001764 <TIM_Cmd>:
 8001764:	bf00      	nop
 8001766:	bf00      	nop
 8001768:	8803      	ldrh	r3, [r0, #0]
 800176a:	b119      	cbz	r1, 8001774 <TIM_Cmd+0x10>
 800176c:	b29b      	uxth	r3, r3
 800176e:	f043 0301 	orr.w	r3, r3, #1
 8001772:	e003      	b.n	800177c <TIM_Cmd+0x18>
 8001774:	f023 0301 	bic.w	r3, r3, #1
 8001778:	041b      	lsls	r3, r3, #16
 800177a:	0c1b      	lsrs	r3, r3, #16
 800177c:	8003      	strh	r3, [r0, #0]
 800177e:	4770      	bx	lr

08001780 <TIM_OC1Init>:
 8001780:	b530      	push	{r4, r5, lr}
 8001782:	bf00      	nop
 8001784:	bf00      	nop
 8001786:	bf00      	nop
 8001788:	bf00      	nop
 800178a:	6a03      	ldr	r3, [r0, #32]
 800178c:	680c      	ldr	r4, [r1, #0]
 800178e:	f023 0301 	bic.w	r3, r3, #1
 8001792:	6203      	str	r3, [r0, #32]
 8001794:	6a03      	ldr	r3, [r0, #32]
 8001796:	6842      	ldr	r2, [r0, #4]
 8001798:	6985      	ldr	r5, [r0, #24]
 800179a:	f425 3580 	bic.w	r5, r5, #65536	; 0x10000
 800179e:	f025 0573 	bic.w	r5, r5, #115	; 0x73
 80017a2:	432c      	orrs	r4, r5
 80017a4:	898d      	ldrh	r5, [r1, #12]
 80017a6:	f023 0302 	bic.w	r3, r3, #2
 80017aa:	432b      	orrs	r3, r5
 80017ac:	888d      	ldrh	r5, [r1, #4]
 80017ae:	432b      	orrs	r3, r5
 80017b0:	4d15      	ldr	r5, [pc, #84]	; (8001808 <TIM_OC1Init+0x88>)
 80017b2:	42a8      	cmp	r0, r5
 80017b4:	d00f      	beq.n	80017d6 <TIM_OC1Init+0x56>
 80017b6:	f505 6500 	add.w	r5, r5, #2048	; 0x800
 80017ba:	42a8      	cmp	r0, r5
 80017bc:	d00b      	beq.n	80017d6 <TIM_OC1Init+0x56>
 80017be:	f505 6540 	add.w	r5, r5, #3072	; 0xc00
 80017c2:	42a8      	cmp	r0, r5
 80017c4:	d007      	beq.n	80017d6 <TIM_OC1Init+0x56>
 80017c6:	f505 6580 	add.w	r5, r5, #1024	; 0x400
 80017ca:	42a8      	cmp	r0, r5
 80017cc:	d003      	beq.n	80017d6 <TIM_OC1Init+0x56>
 80017ce:	f505 6580 	add.w	r5, r5, #1024	; 0x400
 80017d2:	42a8      	cmp	r0, r5
 80017d4:	d111      	bne.n	80017fa <TIM_OC1Init+0x7a>
 80017d6:	bf00      	nop
 80017d8:	bf00      	nop
 80017da:	bf00      	nop
 80017dc:	bf00      	nop
 80017de:	89cd      	ldrh	r5, [r1, #14]
 80017e0:	f023 0308 	bic.w	r3, r3, #8
 80017e4:	432b      	orrs	r3, r5
 80017e6:	88cd      	ldrh	r5, [r1, #6]
 80017e8:	f023 0304 	bic.w	r3, r3, #4
 80017ec:	432b      	orrs	r3, r5
 80017ee:	8a0d      	ldrh	r5, [r1, #16]
 80017f0:	f422 7240 	bic.w	r2, r2, #768	; 0x300
 80017f4:	432a      	orrs	r2, r5
 80017f6:	8a4d      	ldrh	r5, [r1, #18]
 80017f8:	432a      	orrs	r2, r5
 80017fa:	6042      	str	r2, [r0, #4]
 80017fc:	688a      	ldr	r2, [r1, #8]
 80017fe:	6184      	str	r4, [r0, #24]
 8001800:	6342      	str	r2, [r0, #52]	; 0x34
 8001802:	6203      	str	r3, [r0, #32]
 8001804:	bd30      	pop	{r4, r5, pc}
 8001806:	bf00      	nop
 8001808:	40012c00 	.word	0x40012c00

0800180c <TIM_OC2Init>:
 800180c:	b570      	push	{r4, r5, r6, lr}
 800180e:	bf00      	nop
 8001810:	bf00      	nop
 8001812:	bf00      	nop
 8001814:	bf00      	nop
 8001816:	6a03      	ldr	r3, [r0, #32]
 8001818:	680c      	ldr	r4, [r1, #0]
 800181a:	898e      	ldrh	r6, [r1, #12]
 800181c:	f023 0310 	bic.w	r3, r3, #16
 8001820:	6203      	str	r3, [r0, #32]
 8001822:	6a05      	ldr	r5, [r0, #32]
 8001824:	6842      	ldr	r2, [r0, #4]
 8001826:	6983      	ldr	r3, [r0, #24]
 8001828:	f023 7380 	bic.w	r3, r3, #16777216	; 0x1000000
 800182c:	f423 43e6 	bic.w	r3, r3, #29440	; 0x7300
 8001830:	ea43 2404 	orr.w	r4, r3, r4, lsl #8
 8001834:	888b      	ldrh	r3, [r1, #4]
 8001836:	f025 0520 	bic.w	r5, r5, #32
 800183a:	4333      	orrs	r3, r6
 800183c:	ea45 1303 	orr.w	r3, r5, r3, lsl #4
 8001840:	4d10      	ldr	r5, [pc, #64]	; (8001884 <TIM_OC2Init+0x78>)
 8001842:	42a8      	cmp	r0, r5
 8001844:	d003      	beq.n	800184e <TIM_OC2Init+0x42>
 8001846:	f505 6500 	add.w	r5, r5, #2048	; 0x800
 800184a:	42a8      	cmp	r0, r5
 800184c:	d114      	bne.n	8001878 <TIM_OC2Init+0x6c>
 800184e:	bf00      	nop
 8001850:	bf00      	nop
 8001852:	bf00      	nop
 8001854:	bf00      	nop
 8001856:	89cd      	ldrh	r5, [r1, #14]
 8001858:	8a0e      	ldrh	r6, [r1, #16]
 800185a:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 800185e:	ea43 1305 	orr.w	r3, r3, r5, lsl #4
 8001862:	88cd      	ldrh	r5, [r1, #6]
 8001864:	f023 0340 	bic.w	r3, r3, #64	; 0x40
 8001868:	ea43 1305 	orr.w	r3, r3, r5, lsl #4
 800186c:	8a4d      	ldrh	r5, [r1, #18]
 800186e:	f422 6240 	bic.w	r2, r2, #3072	; 0xc00
 8001872:	4335      	orrs	r5, r6
 8001874:	ea42 0285 	orr.w	r2, r2, r5, lsl #2
 8001878:	6042      	str	r2, [r0, #4]
 800187a:	688a      	ldr	r2, [r1, #8]
 800187c:	6184      	str	r4, [r0, #24]
 800187e:	6382      	str	r2, [r0, #56]	; 0x38
 8001880:	6203      	str	r3, [r0, #32]
 8001882:	bd70      	pop	{r4, r5, r6, pc}
 8001884:	40012c00 	.word	0x40012c00

08001888 <TIM_CtrlPWMOutputs>:
 8001888:	bf00      	nop
 800188a:	bf00      	nop
 800188c:	6c43      	ldr	r3, [r0, #68]	; 0x44
 800188e:	b111      	cbz	r1, 8001896 <TIM_CtrlPWMOutputs+0xe>
 8001890:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
 8001894:	e001      	b.n	800189a <TIM_CtrlPWMOutputs+0x12>
 8001896:	f3c3 030e 	ubfx	r3, r3, #0, #15
 800189a:	6443      	str	r3, [r0, #68]	; 0x44
 800189c:	4770      	bx	lr

0800189e <TIM_ClearITPendingBit>:
 800189e:	bf00      	nop
 80018a0:	43c9      	mvns	r1, r1
 80018a2:	b289      	uxth	r1, r1
 80018a4:	6101      	str	r1, [r0, #16]
 80018a6:	4770      	bx	lr

080018a8 <timer_init>:
 80018a8:	b530      	push	{r4, r5, lr}
 80018aa:	2300      	movs	r3, #0
 80018ac:	b085      	sub	sp, #20
 80018ae:	491f      	ldr	r1, [pc, #124]	; (800192c <timer_init+0x84>)
 80018b0:	f44f 6280 	mov.w	r2, #1024	; 0x400
 80018b4:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 80018b8:	491d      	ldr	r1, [pc, #116]	; (8001930 <timer_init+0x88>)
 80018ba:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 80018be:	4a1d      	ldr	r2, [pc, #116]	; (8001934 <timer_init+0x8c>)
 80018c0:	2400      	movs	r4, #0
 80018c2:	f822 4013 	strh.w	r4, [r2, r3, lsl #1]
 80018c6:	3301      	adds	r3, #1
 80018c8:	2b04      	cmp	r3, #4
 80018ca:	4625      	mov	r5, r4
 80018cc:	d1ef      	bne.n	80018ae <timer_init+0x6>
 80018ce:	4b1a      	ldr	r3, [pc, #104]	; (8001938 <timer_init+0x90>)
 80018d0:	2002      	movs	r0, #2
 80018d2:	2101      	movs	r1, #1
 80018d4:	601c      	str	r4, [r3, #0]
 80018d6:	f000 fcf5 	bl	80022c4 <RCC_APB1PeriphClockCmd>
 80018da:	f8ad 4006 	strh.w	r4, [sp, #6]
 80018de:	f8ad 400c 	strh.w	r4, [sp, #12]
 80018e2:	f8ad 400e 	strh.w	r4, [sp, #14]
 80018e6:	4c15      	ldr	r4, [pc, #84]	; (800193c <timer_init+0x94>)
 80018e8:	f44f 738c 	mov.w	r3, #280	; 0x118
 80018ec:	f8ad 3004 	strh.w	r3, [sp, #4]
 80018f0:	4620      	mov	r0, r4
 80018f2:	2331      	movs	r3, #49	; 0x31
 80018f4:	a901      	add	r1, sp, #4
 80018f6:	9302      	str	r3, [sp, #8]
 80018f8:	f7ff fee4 	bl	80016c4 <TIM_TimeBaseInit>
 80018fc:	4620      	mov	r0, r4
 80018fe:	2101      	movs	r1, #1
 8001900:	f7ff ff30 	bl	8001764 <TIM_Cmd>
 8001904:	68e3      	ldr	r3, [r4, #12]
 8001906:	f043 0301 	orr.w	r3, r3, #1
 800190a:	60e3      	str	r3, [r4, #12]
 800190c:	231d      	movs	r3, #29
 800190e:	f88d 3000 	strb.w	r3, [sp]
 8001912:	4668      	mov	r0, sp
 8001914:	2301      	movs	r3, #1
 8001916:	f88d 5001 	strb.w	r5, [sp, #1]
 800191a:	f88d 3002 	strb.w	r3, [sp, #2]
 800191e:	f88d 3003 	strb.w	r3, [sp, #3]
 8001922:	f000 fdcd 	bl	80024c0 <NVIC_Init>
 8001926:	b005      	add	sp, #20
 8001928:	bd30      	pop	{r4, r5, pc}
 800192a:	bf00      	nop
 800192c:	20000dbc 	.word	0x20000dbc
 8001930:	20000db0 	.word	0x20000db0
 8001934:	20000da8 	.word	0x20000da8
 8001938:	20000db8 	.word	0x20000db8
 800193c:	40000400 	.word	0x40000400

08001940 <TIM3_IRQHandler>:
 8001940:	2300      	movs	r3, #0
 8001942:	4a10      	ldr	r2, [pc, #64]	; (8001984 <TIM3_IRQHandler+0x44>)
 8001944:	f832 1013 	ldrh.w	r1, [r2, r3, lsl #1]
 8001948:	b289      	uxth	r1, r1
 800194a:	b129      	cbz	r1, 8001958 <TIM3_IRQHandler+0x18>
 800194c:	f832 1013 	ldrh.w	r1, [r2, r3, lsl #1]
 8001950:	b289      	uxth	r1, r1
 8001952:	3901      	subs	r1, #1
 8001954:	b289      	uxth	r1, r1
 8001956:	e007      	b.n	8001968 <TIM3_IRQHandler+0x28>
 8001958:	490b      	ldr	r1, [pc, #44]	; (8001988 <TIM3_IRQHandler+0x48>)
 800195a:	f831 1013 	ldrh.w	r1, [r1, r3, lsl #1]
 800195e:	b289      	uxth	r1, r1
 8001960:	f822 1013 	strh.w	r1, [r2, r3, lsl #1]
 8001964:	4a09      	ldr	r2, [pc, #36]	; (800198c <TIM3_IRQHandler+0x4c>)
 8001966:	2101      	movs	r1, #1
 8001968:	f822 1013 	strh.w	r1, [r2, r3, lsl #1]
 800196c:	3301      	adds	r3, #1
 800196e:	2b04      	cmp	r3, #4
 8001970:	d1e7      	bne.n	8001942 <TIM3_IRQHandler+0x2>
 8001972:	4b07      	ldr	r3, [pc, #28]	; (8001990 <TIM3_IRQHandler+0x50>)
 8001974:	4807      	ldr	r0, [pc, #28]	; (8001994 <TIM3_IRQHandler+0x54>)
 8001976:	681a      	ldr	r2, [r3, #0]
 8001978:	2101      	movs	r1, #1
 800197a:	3201      	adds	r2, #1
 800197c:	601a      	str	r2, [r3, #0]
 800197e:	f7ff bf8e 	b.w	800189e <TIM_ClearITPendingBit>
 8001982:	bf00      	nop
 8001984:	20000dbc 	.word	0x20000dbc
 8001988:	20000db0 	.word	0x20000db0
 800198c:	20000da8 	.word	0x20000da8
 8001990:	20000db8 	.word	0x20000db8
 8001994:	40000400 	.word	0x40000400

08001998 <timer_get_time>:
 8001998:	b082      	sub	sp, #8
 800199a:	b672      	cpsid	i
 800199c:	4b04      	ldr	r3, [pc, #16]	; (80019b0 <timer_get_time+0x18>)
 800199e:	681b      	ldr	r3, [r3, #0]
 80019a0:	9301      	str	r3, [sp, #4]
 80019a2:	b662      	cpsie	i
 80019a4:	9801      	ldr	r0, [sp, #4]
 80019a6:	230a      	movs	r3, #10
 80019a8:	fbb0 f0f3 	udiv	r0, r0, r3
 80019ac:	b002      	add	sp, #8
 80019ae:	4770      	bx	lr
 80019b0:	20000db8 	.word	0x20000db8

080019b4 <timer_delay_ms>:
 80019b4:	b513      	push	{r0, r1, r4, lr}
 80019b6:	4604      	mov	r4, r0
 80019b8:	f7ff ffee 	bl	8001998 <timer_get_time>
 80019bc:	4420      	add	r0, r4
 80019be:	9001      	str	r0, [sp, #4]
 80019c0:	9c01      	ldr	r4, [sp, #4]
 80019c2:	f7ff ffe9 	bl	8001998 <timer_get_time>
 80019c6:	4284      	cmp	r4, r0
 80019c8:	d902      	bls.n	80019d0 <timer_delay_ms+0x1c>
 80019ca:	f000 fa0d 	bl	8001de8 <sleep>
 80019ce:	e7f7      	b.n	80019c0 <timer_delay_ms+0xc>
 80019d0:	b002      	add	sp, #8
 80019d2:	bd10      	pop	{r4, pc}

080019d4 <event_timer_set_period>:
 80019d4:	b672      	cpsid	i
 80019d6:	230a      	movs	r3, #10
 80019d8:	4359      	muls	r1, r3
 80019da:	4b06      	ldr	r3, [pc, #24]	; (80019f4 <event_timer_set_period+0x20>)
 80019dc:	b289      	uxth	r1, r1
 80019de:	f823 1010 	strh.w	r1, [r3, r0, lsl #1]
 80019e2:	4b05      	ldr	r3, [pc, #20]	; (80019f8 <event_timer_set_period+0x24>)
 80019e4:	f823 1010 	strh.w	r1, [r3, r0, lsl #1]
 80019e8:	4b04      	ldr	r3, [pc, #16]	; (80019fc <event_timer_set_period+0x28>)
 80019ea:	2200      	movs	r2, #0
 80019ec:	f823 2010 	strh.w	r2, [r3, r0, lsl #1]
 80019f0:	b662      	cpsie	i
 80019f2:	4770      	bx	lr
 80019f4:	20000dbc 	.word	0x20000dbc
 80019f8:	20000db0 	.word	0x20000db0
 80019fc:	20000da8 	.word	0x20000da8

08001a00 <event_timer_wait>:
 8001a00:	b510      	push	{r4, lr}
 8001a02:	4604      	mov	r4, r0
 8001a04:	4b06      	ldr	r3, [pc, #24]	; (8001a20 <event_timer_wait+0x20>)
 8001a06:	f833 2014 	ldrh.w	r2, [r3, r4, lsl #1]
 8001a0a:	b292      	uxth	r2, r2
 8001a0c:	b912      	cbnz	r2, 8001a14 <event_timer_wait+0x14>
 8001a0e:	f000 f9eb 	bl	8001de8 <sleep>
 8001a12:	e7f7      	b.n	8001a04 <event_timer_wait+0x4>
 8001a14:	b672      	cpsid	i
 8001a16:	2200      	movs	r2, #0
 8001a18:	f823 2014 	strh.w	r2, [r3, r4, lsl #1]
 8001a1c:	b662      	cpsie	i
 8001a1e:	bd10      	pop	{r4, pc}
 8001a20:	20000da8 	.word	0x20000da8

08001a24 <i2c_delay>:
 8001a24:	230b      	movs	r3, #11
 8001a26:	3b01      	subs	r3, #1
 8001a28:	d001      	beq.n	8001a2e <i2c_delay+0xa>
 8001a2a:	bf00      	nop
 8001a2c:	e7fb      	b.n	8001a26 <i2c_delay+0x2>
 8001a2e:	4770      	bx	lr

08001a30 <SetLowSDA>:
 8001a30:	b537      	push	{r0, r1, r2, r4, r5, lr}
 8001a32:	4d0d      	ldr	r5, [pc, #52]	; (8001a68 <SetLowSDA+0x38>)
 8001a34:	2301      	movs	r3, #1
 8001a36:	2203      	movs	r2, #3
 8001a38:	2480      	movs	r4, #128	; 0x80
 8001a3a:	f88d 3004 	strb.w	r3, [sp, #4]
 8001a3e:	f88d 3006 	strb.w	r3, [sp, #6]
 8001a42:	4628      	mov	r0, r5
 8001a44:	2300      	movs	r3, #0
 8001a46:	4669      	mov	r1, sp
 8001a48:	f88d 2005 	strb.w	r2, [sp, #5]
 8001a4c:	f88d 3007 	strb.w	r3, [sp, #7]
 8001a50:	9400      	str	r4, [sp, #0]
 8001a52:	f000 fc56 	bl	8002302 <GPIO_Init>
 8001a56:	4628      	mov	r0, r5
 8001a58:	4621      	mov	r1, r4
 8001a5a:	f000 fc9c 	bl	8002396 <GPIO_ResetBits>
 8001a5e:	f7ff ffe1 	bl	8001a24 <i2c_delay>
 8001a62:	b003      	add	sp, #12
 8001a64:	bd30      	pop	{r4, r5, pc}
 8001a66:	bf00      	nop
 8001a68:	48000400 	.word	0x48000400

08001a6c <SetHighSDA>:
 8001a6c:	b537      	push	{r0, r1, r2, r4, r5, lr}
 8001a6e:	4d0d      	ldr	r5, [pc, #52]	; (8001aa4 <SetHighSDA+0x38>)
 8001a70:	2203      	movs	r2, #3
 8001a72:	2300      	movs	r3, #0
 8001a74:	2480      	movs	r4, #128	; 0x80
 8001a76:	f88d 2005 	strb.w	r2, [sp, #5]
 8001a7a:	4628      	mov	r0, r5
 8001a7c:	2201      	movs	r2, #1
 8001a7e:	4669      	mov	r1, sp
 8001a80:	f88d 3004 	strb.w	r3, [sp, #4]
 8001a84:	f88d 2006 	strb.w	r2, [sp, #6]
 8001a88:	f88d 3007 	strb.w	r3, [sp, #7]
 8001a8c:	9400      	str	r4, [sp, #0]
 8001a8e:	f000 fc38 	bl	8002302 <GPIO_Init>
 8001a92:	4628      	mov	r0, r5
 8001a94:	4621      	mov	r1, r4
 8001a96:	f000 fc7a 	bl	800238e <GPIO_SetBits>
 8001a9a:	f7ff ffc3 	bl	8001a24 <i2c_delay>
 8001a9e:	b003      	add	sp, #12
 8001aa0:	bd30      	pop	{r4, r5, pc}
 8001aa2:	bf00      	nop
 8001aa4:	48000400 	.word	0x48000400

08001aa8 <SetLowSCL>:
 8001aa8:	b508      	push	{r3, lr}
 8001aaa:	4804      	ldr	r0, [pc, #16]	; (8001abc <SetLowSCL+0x14>)
 8001aac:	2140      	movs	r1, #64	; 0x40
 8001aae:	f000 fc72 	bl	8002396 <GPIO_ResetBits>
 8001ab2:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001ab6:	f7ff bfb5 	b.w	8001a24 <i2c_delay>
 8001aba:	bf00      	nop
 8001abc:	48000400 	.word	0x48000400

08001ac0 <SetHighSCL>:
 8001ac0:	b508      	push	{r3, lr}
 8001ac2:	4804      	ldr	r0, [pc, #16]	; (8001ad4 <SetHighSCL+0x14>)
 8001ac4:	2140      	movs	r1, #64	; 0x40
 8001ac6:	f000 fc62 	bl	800238e <GPIO_SetBits>
 8001aca:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001ace:	f7ff bfa9 	b.w	8001a24 <i2c_delay>
 8001ad2:	bf00      	nop
 8001ad4:	48000400 	.word	0x48000400

08001ad8 <i2c_0_init>:
 8001ad8:	b507      	push	{r0, r1, r2, lr}
 8001ada:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 8001ade:	2101      	movs	r1, #1
 8001ae0:	f000 fbd4 	bl	800228c <RCC_AHBPeriphClockCmd>
 8001ae4:	23c0      	movs	r3, #192	; 0xc0
 8001ae6:	9300      	str	r3, [sp, #0]
 8001ae8:	2301      	movs	r3, #1
 8001aea:	2203      	movs	r2, #3
 8001aec:	480a      	ldr	r0, [pc, #40]	; (8001b18 <i2c_0_init+0x40>)
 8001aee:	f88d 3004 	strb.w	r3, [sp, #4]
 8001af2:	4669      	mov	r1, sp
 8001af4:	f88d 3006 	strb.w	r3, [sp, #6]
 8001af8:	2300      	movs	r3, #0
 8001afa:	f88d 2005 	strb.w	r2, [sp, #5]
 8001afe:	f88d 3007 	strb.w	r3, [sp, #7]
 8001b02:	f000 fbfe 	bl	8002302 <GPIO_Init>
 8001b06:	f7ff ffdb 	bl	8001ac0 <SetHighSCL>
 8001b0a:	f7ff ff91 	bl	8001a30 <SetLowSDA>
 8001b0e:	f7ff ffad 	bl	8001a6c <SetHighSDA>
 8001b12:	b003      	add	sp, #12
 8001b14:	f85d fb04 	ldr.w	pc, [sp], #4
 8001b18:	48000400 	.word	0x48000400

08001b1c <i2cStart>:
 8001b1c:	b508      	push	{r3, lr}
 8001b1e:	f7ff ffcf 	bl	8001ac0 <SetHighSCL>
 8001b22:	f7ff ffa3 	bl	8001a6c <SetHighSDA>
 8001b26:	f7ff ffcb 	bl	8001ac0 <SetHighSCL>
 8001b2a:	f7ff ff81 	bl	8001a30 <SetLowSDA>
 8001b2e:	f7ff ffbb 	bl	8001aa8 <SetLowSCL>
 8001b32:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001b36:	f7ff bf99 	b.w	8001a6c <SetHighSDA>

08001b3a <i2cStop>:
 8001b3a:	b508      	push	{r3, lr}
 8001b3c:	f7ff ffb4 	bl	8001aa8 <SetLowSCL>
 8001b40:	f7ff ff76 	bl	8001a30 <SetLowSDA>
 8001b44:	f7ff ffbc 	bl	8001ac0 <SetHighSCL>
 8001b48:	f7ff ff72 	bl	8001a30 <SetLowSDA>
 8001b4c:	f7ff ffb8 	bl	8001ac0 <SetHighSCL>
 8001b50:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001b54:	f7ff bf8a 	b.w	8001a6c <SetHighSDA>

08001b58 <i2cWrite>:
 8001b58:	b538      	push	{r3, r4, r5, lr}
 8001b5a:	4604      	mov	r4, r0
 8001b5c:	2508      	movs	r5, #8
 8001b5e:	f7ff ffa3 	bl	8001aa8 <SetLowSCL>
 8001b62:	0623      	lsls	r3, r4, #24
 8001b64:	d502      	bpl.n	8001b6c <i2cWrite+0x14>
 8001b66:	f7ff ff81 	bl	8001a6c <SetHighSDA>
 8001b6a:	e001      	b.n	8001b70 <i2cWrite+0x18>
 8001b6c:	f7ff ff60 	bl	8001a30 <SetLowSDA>
 8001b70:	3d01      	subs	r5, #1
 8001b72:	f7ff ffa5 	bl	8001ac0 <SetHighSCL>
 8001b76:	0064      	lsls	r4, r4, #1
 8001b78:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 8001b7c:	b2e4      	uxtb	r4, r4
 8001b7e:	d1ee      	bne.n	8001b5e <i2cWrite+0x6>
 8001b80:	f7ff ff92 	bl	8001aa8 <SetLowSCL>
 8001b84:	f7ff ff72 	bl	8001a6c <SetHighSDA>
 8001b88:	f7ff ff9a 	bl	8001ac0 <SetHighSCL>
 8001b8c:	4b05      	ldr	r3, [pc, #20]	; (8001ba4 <i2cWrite+0x4c>)
 8001b8e:	8a1c      	ldrh	r4, [r3, #16]
 8001b90:	b2a4      	uxth	r4, r4
 8001b92:	f7ff ff89 	bl	8001aa8 <SetLowSCL>
 8001b96:	f7ff ff45 	bl	8001a24 <i2c_delay>
 8001b9a:	f084 0080 	eor.w	r0, r4, #128	; 0x80
 8001b9e:	f3c0 10c0 	ubfx	r0, r0, #7, #1
 8001ba2:	bd38      	pop	{r3, r4, r5, pc}
 8001ba4:	48000400 	.word	0x48000400

08001ba8 <i2cRead>:
 8001ba8:	b570      	push	{r4, r5, r6, lr}
 8001baa:	4606      	mov	r6, r0
 8001bac:	f7ff ff7c 	bl	8001aa8 <SetLowSCL>
 8001bb0:	f7ff ff5c 	bl	8001a6c <SetHighSDA>
 8001bb4:	2508      	movs	r5, #8
 8001bb6:	2400      	movs	r4, #0
 8001bb8:	f7ff ff82 	bl	8001ac0 <SetHighSCL>
 8001bbc:	4b0d      	ldr	r3, [pc, #52]	; (8001bf4 <i2cRead+0x4c>)
 8001bbe:	8a1b      	ldrh	r3, [r3, #16]
 8001bc0:	0064      	lsls	r4, r4, #1
 8001bc2:	061a      	lsls	r2, r3, #24
 8001bc4:	b2e4      	uxtb	r4, r4
 8001bc6:	bf48      	it	mi
 8001bc8:	3401      	addmi	r4, #1
 8001bca:	f105 35ff 	add.w	r5, r5, #4294967295
 8001bce:	bf48      	it	mi
 8001bd0:	b2e4      	uxtbmi	r4, r4
 8001bd2:	f7ff ff69 	bl	8001aa8 <SetLowSCL>
 8001bd6:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 8001bda:	d1ed      	bne.n	8001bb8 <i2cRead+0x10>
 8001bdc:	b10e      	cbz	r6, 8001be2 <i2cRead+0x3a>
 8001bde:	f7ff ff27 	bl	8001a30 <SetLowSDA>
 8001be2:	f7ff ff6d 	bl	8001ac0 <SetHighSCL>
 8001be6:	f7ff ff5f 	bl	8001aa8 <SetLowSCL>
 8001bea:	f7ff ff1b 	bl	8001a24 <i2c_delay>
 8001bee:	4620      	mov	r0, r4
 8001bf0:	bd70      	pop	{r4, r5, r6, pc}
 8001bf2:	bf00      	nop
 8001bf4:	48000400 	.word	0x48000400

08001bf8 <i2c_write_reg>:
 8001bf8:	b570      	push	{r4, r5, r6, lr}
 8001bfa:	4605      	mov	r5, r0
 8001bfc:	460c      	mov	r4, r1
 8001bfe:	4616      	mov	r6, r2
 8001c00:	f7ff ff8c 	bl	8001b1c <i2cStart>
 8001c04:	4628      	mov	r0, r5
 8001c06:	f7ff ffa7 	bl	8001b58 <i2cWrite>
 8001c0a:	4620      	mov	r0, r4
 8001c0c:	f7ff ffa4 	bl	8001b58 <i2cWrite>
 8001c10:	4630      	mov	r0, r6
 8001c12:	f7ff ffa1 	bl	8001b58 <i2cWrite>
 8001c16:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8001c1a:	f7ff bf8e 	b.w	8001b3a <i2cStop>

08001c1e <i2c_read_reg>:
 8001c1e:	b538      	push	{r3, r4, r5, lr}
 8001c20:	4604      	mov	r4, r0
 8001c22:	460d      	mov	r5, r1
 8001c24:	f7ff ff7a 	bl	8001b1c <i2cStart>
 8001c28:	4620      	mov	r0, r4
 8001c2a:	f7ff ff95 	bl	8001b58 <i2cWrite>
 8001c2e:	4628      	mov	r0, r5
 8001c30:	f7ff ff92 	bl	8001b58 <i2cWrite>
 8001c34:	f7ff ff72 	bl	8001b1c <i2cStart>
 8001c38:	f044 0001 	orr.w	r0, r4, #1
 8001c3c:	f7ff ff8c 	bl	8001b58 <i2cWrite>
 8001c40:	2000      	movs	r0, #0
 8001c42:	f7ff ffb1 	bl	8001ba8 <i2cRead>
 8001c46:	4604      	mov	r4, r0
 8001c48:	f7ff ff77 	bl	8001b3a <i2cStop>
 8001c4c:	4620      	mov	r0, r4
 8001c4e:	bd38      	pop	{r3, r4, r5, pc}

08001c50 <uart_write>:
 8001c50:	4b03      	ldr	r3, [pc, #12]	; (8001c60 <uart_write+0x10>)
 8001c52:	69da      	ldr	r2, [r3, #28]
 8001c54:	0612      	lsls	r2, r2, #24
 8001c56:	d401      	bmi.n	8001c5c <uart_write+0xc>
 8001c58:	bf00      	nop
 8001c5a:	e7f9      	b.n	8001c50 <uart_write>
 8001c5c:	8518      	strh	r0, [r3, #40]	; 0x28
 8001c5e:	4770      	bx	lr
 8001c60:	40013800 	.word	0x40013800

08001c64 <uart_init>:
 8001c64:	b510      	push	{r4, lr}
 8001c66:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 8001c6a:	b088      	sub	sp, #32
 8001c6c:	2101      	movs	r1, #1
 8001c6e:	f000 fb0d 	bl	800228c <RCC_AHBPeriphClockCmd>
 8001c72:	f44f 4080 	mov.w	r0, #16384	; 0x4000
 8001c76:	2101      	movs	r1, #1
 8001c78:	f000 fb16 	bl	80022a8 <RCC_APB2PeriphClockCmd>
 8001c7c:	f44f 63c0 	mov.w	r3, #1536	; 0x600
 8001c80:	9300      	str	r3, [sp, #0]
 8001c82:	2302      	movs	r3, #2
 8001c84:	2400      	movs	r4, #0
 8001c86:	f88d 3004 	strb.w	r3, [sp, #4]
 8001c8a:	4669      	mov	r1, sp
 8001c8c:	2303      	movs	r3, #3
 8001c8e:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8001c92:	f88d 3005 	strb.w	r3, [sp, #5]
 8001c96:	f88d 4006 	strb.w	r4, [sp, #6]
 8001c9a:	f88d 4007 	strb.w	r4, [sp, #7]
 8001c9e:	f000 fb30 	bl	8002302 <GPIO_Init>
 8001ca2:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8001ca6:	2109      	movs	r1, #9
 8001ca8:	2207      	movs	r2, #7
 8001caa:	f000 fb78 	bl	800239e <GPIO_PinAFConfig>
 8001cae:	2207      	movs	r2, #7
 8001cb0:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8001cb4:	210a      	movs	r1, #10
 8001cb6:	f000 fb72 	bl	800239e <GPIO_PinAFConfig>
 8001cba:	9403      	str	r4, [sp, #12]
 8001cbc:	9404      	str	r4, [sp, #16]
 8001cbe:	9405      	str	r4, [sp, #20]
 8001cc0:	9407      	str	r4, [sp, #28]
 8001cc2:	4c08      	ldr	r4, [pc, #32]	; (8001ce4 <uart_init+0x80>)
 8001cc4:	f44f 33e1 	mov.w	r3, #115200	; 0x1c200
 8001cc8:	9302      	str	r3, [sp, #8]
 8001cca:	4620      	mov	r0, r4
 8001ccc:	230c      	movs	r3, #12
 8001cce:	a902      	add	r1, sp, #8
 8001cd0:	9306      	str	r3, [sp, #24]
 8001cd2:	f000 f809 	bl	8001ce8 <USART_Init>
 8001cd6:	4620      	mov	r0, r4
 8001cd8:	2101      	movs	r1, #1
 8001cda:	f000 f867 	bl	8001dac <USART_Cmd>
 8001cde:	b008      	add	sp, #32
 8001ce0:	bd10      	pop	{r4, pc}
 8001ce2:	bf00      	nop
 8001ce4:	40013800 	.word	0x40013800

08001ce8 <USART_Init>:
 8001ce8:	b530      	push	{r4, r5, lr}
 8001cea:	4604      	mov	r4, r0
 8001cec:	b099      	sub	sp, #100	; 0x64
 8001cee:	460d      	mov	r5, r1
 8001cf0:	bf00      	nop
 8001cf2:	bf00      	nop
 8001cf4:	bf00      	nop
 8001cf6:	bf00      	nop
 8001cf8:	bf00      	nop
 8001cfa:	bf00      	nop
 8001cfc:	bf00      	nop
 8001cfe:	6803      	ldr	r3, [r0, #0]
 8001d00:	f023 0301 	bic.w	r3, r3, #1
 8001d04:	6003      	str	r3, [r0, #0]
 8001d06:	6842      	ldr	r2, [r0, #4]
 8001d08:	688b      	ldr	r3, [r1, #8]
 8001d0a:	f422 5240 	bic.w	r2, r2, #12288	; 0x3000
 8001d0e:	4313      	orrs	r3, r2
 8001d10:	6043      	str	r3, [r0, #4]
 8001d12:	686a      	ldr	r2, [r5, #4]
 8001d14:	68eb      	ldr	r3, [r5, #12]
 8001d16:	6801      	ldr	r1, [r0, #0]
 8001d18:	431a      	orrs	r2, r3
 8001d1a:	692b      	ldr	r3, [r5, #16]
 8001d1c:	f421 51b0 	bic.w	r1, r1, #5632	; 0x1600
 8001d20:	f021 010c 	bic.w	r1, r1, #12
 8001d24:	4313      	orrs	r3, r2
 8001d26:	430b      	orrs	r3, r1
 8001d28:	6003      	str	r3, [r0, #0]
 8001d2a:	6882      	ldr	r2, [r0, #8]
 8001d2c:	696b      	ldr	r3, [r5, #20]
 8001d2e:	f422 7240 	bic.w	r2, r2, #768	; 0x300
 8001d32:	4313      	orrs	r3, r2
 8001d34:	6083      	str	r3, [r0, #8]
 8001d36:	a801      	add	r0, sp, #4
 8001d38:	f000 f91c 	bl	8001f74 <RCC_GetClocksFreq>
 8001d3c:	4b17      	ldr	r3, [pc, #92]	; (8001d9c <USART_Init+0xb4>)
 8001d3e:	429c      	cmp	r4, r3
 8001d40:	d101      	bne.n	8001d46 <USART_Init+0x5e>
 8001d42:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8001d44:	e00e      	b.n	8001d64 <USART_Init+0x7c>
 8001d46:	4b16      	ldr	r3, [pc, #88]	; (8001da0 <USART_Init+0xb8>)
 8001d48:	429c      	cmp	r4, r3
 8001d4a:	d101      	bne.n	8001d50 <USART_Init+0x68>
 8001d4c:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8001d4e:	e009      	b.n	8001d64 <USART_Init+0x7c>
 8001d50:	4b14      	ldr	r3, [pc, #80]	; (8001da4 <USART_Init+0xbc>)
 8001d52:	429c      	cmp	r4, r3
 8001d54:	d101      	bne.n	8001d5a <USART_Init+0x72>
 8001d56:	9a11      	ldr	r2, [sp, #68]	; 0x44
 8001d58:	e004      	b.n	8001d64 <USART_Init+0x7c>
 8001d5a:	4b13      	ldr	r3, [pc, #76]	; (8001da8 <USART_Init+0xc0>)
 8001d5c:	429c      	cmp	r4, r3
 8001d5e:	bf0c      	ite	eq
 8001d60:	9a12      	ldreq	r2, [sp, #72]	; 0x48
 8001d62:	9a13      	ldrne	r2, [sp, #76]	; 0x4c
 8001d64:	6823      	ldr	r3, [r4, #0]
 8001d66:	6829      	ldr	r1, [r5, #0]
 8001d68:	f413 4f00 	tst.w	r3, #32768	; 0x8000
 8001d6c:	bf18      	it	ne
 8001d6e:	0052      	lslne	r2, r2, #1
 8001d70:	fbb2 f3f1 	udiv	r3, r2, r1
 8001d74:	fb01 2213 	mls	r2, r1, r3, r2
 8001d78:	ebb2 0f51 	cmp.w	r2, r1, lsr #1
 8001d7c:	6822      	ldr	r2, [r4, #0]
 8001d7e:	bf28      	it	cs
 8001d80:	3301      	addcs	r3, #1
 8001d82:	0412      	lsls	r2, r2, #16
 8001d84:	d506      	bpl.n	8001d94 <USART_Init+0xac>
 8001d86:	f64f 72f0 	movw	r2, #65520	; 0xfff0
 8001d8a:	f3c3 0142 	ubfx	r1, r3, #1, #3
 8001d8e:	401a      	ands	r2, r3
 8001d90:	ea41 0302 	orr.w	r3, r1, r2
 8001d94:	b29b      	uxth	r3, r3
 8001d96:	81a3      	strh	r3, [r4, #12]
 8001d98:	b019      	add	sp, #100	; 0x64
 8001d9a:	bd30      	pop	{r4, r5, pc}
 8001d9c:	40013800 	.word	0x40013800
 8001da0:	40004400 	.word	0x40004400
 8001da4:	40004800 	.word	0x40004800
 8001da8:	40004c00 	.word	0x40004c00

08001dac <USART_Cmd>:
 8001dac:	bf00      	nop
 8001dae:	bf00      	nop
 8001db0:	6803      	ldr	r3, [r0, #0]
 8001db2:	b111      	cbz	r1, 8001dba <USART_Cmd+0xe>
 8001db4:	f043 0301 	orr.w	r3, r3, #1
 8001db8:	e001      	b.n	8001dbe <USART_Cmd+0x12>
 8001dba:	f023 0301 	bic.w	r3, r3, #1
 8001dbe:	6003      	str	r3, [r0, #0]
 8001dc0:	4770      	bx	lr
	...

08001dc4 <sys_tick_init>:
 8001dc4:	4b05      	ldr	r3, [pc, #20]	; (8001ddc <sys_tick_init+0x18>)
 8001dc6:	4a06      	ldr	r2, [pc, #24]	; (8001de0 <sys_tick_init+0x1c>)
 8001dc8:	605a      	str	r2, [r3, #4]
 8001dca:	4a06      	ldr	r2, [pc, #24]	; (8001de4 <sys_tick_init+0x20>)
 8001dcc:	21f0      	movs	r1, #240	; 0xf0
 8001dce:	f882 1023 	strb.w	r1, [r2, #35]	; 0x23
 8001dd2:	2200      	movs	r2, #0
 8001dd4:	609a      	str	r2, [r3, #8]
 8001dd6:	2207      	movs	r2, #7
 8001dd8:	601a      	str	r2, [r3, #0]
 8001dda:	4770      	bx	lr
 8001ddc:	e000e010 	.word	0xe000e010
 8001de0:	00029040 	.word	0x00029040
 8001de4:	e000ed00 	.word	0xe000ed00

08001de8 <sleep>:
 8001de8:	bf30      	wfi
 8001dea:	4770      	bx	lr

08001dec <sytem_clock_init>:
 8001dec:	f000 b800 	b.w	8001df0 <SystemInit>

08001df0 <SystemInit>:
 8001df0:	4b3b      	ldr	r3, [pc, #236]	; (8001ee0 <SystemInit+0xf0>)
 8001df2:	f8d3 2088 	ldr.w	r2, [r3, #136]	; 0x88
 8001df6:	f442 0270 	orr.w	r2, r2, #15728640	; 0xf00000
 8001dfa:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
 8001dfe:	4b39      	ldr	r3, [pc, #228]	; (8001ee4 <SystemInit+0xf4>)
 8001e00:	681a      	ldr	r2, [r3, #0]
 8001e02:	f042 0201 	orr.w	r2, r2, #1
 8001e06:	601a      	str	r2, [r3, #0]
 8001e08:	6859      	ldr	r1, [r3, #4]
 8001e0a:	4a37      	ldr	r2, [pc, #220]	; (8001ee8 <SystemInit+0xf8>)
 8001e0c:	400a      	ands	r2, r1
 8001e0e:	605a      	str	r2, [r3, #4]
 8001e10:	681a      	ldr	r2, [r3, #0]
 8001e12:	f022 7284 	bic.w	r2, r2, #17301504	; 0x1080000
 8001e16:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
 8001e1a:	601a      	str	r2, [r3, #0]
 8001e1c:	681a      	ldr	r2, [r3, #0]
 8001e1e:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 8001e22:	601a      	str	r2, [r3, #0]
 8001e24:	685a      	ldr	r2, [r3, #4]
 8001e26:	f422 02fe 	bic.w	r2, r2, #8323072	; 0x7f0000
 8001e2a:	605a      	str	r2, [r3, #4]
 8001e2c:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8001e2e:	f022 020f 	bic.w	r2, r2, #15
 8001e32:	62da      	str	r2, [r3, #44]	; 0x2c
 8001e34:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001e36:	4a2d      	ldr	r2, [pc, #180]	; (8001eec <SystemInit+0xfc>)
 8001e38:	b082      	sub	sp, #8
 8001e3a:	400a      	ands	r2, r1
 8001e3c:	631a      	str	r2, [r3, #48]	; 0x30
 8001e3e:	2200      	movs	r2, #0
 8001e40:	609a      	str	r2, [r3, #8]
 8001e42:	9200      	str	r2, [sp, #0]
 8001e44:	9201      	str	r2, [sp, #4]
 8001e46:	681a      	ldr	r2, [r3, #0]
 8001e48:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
 8001e4c:	601a      	str	r2, [r3, #0]
 8001e4e:	4b25      	ldr	r3, [pc, #148]	; (8001ee4 <SystemInit+0xf4>)
 8001e50:	681a      	ldr	r2, [r3, #0]
 8001e52:	f402 3200 	and.w	r2, r2, #131072	; 0x20000
 8001e56:	9201      	str	r2, [sp, #4]
 8001e58:	9a00      	ldr	r2, [sp, #0]
 8001e5a:	3201      	adds	r2, #1
 8001e5c:	9200      	str	r2, [sp, #0]
 8001e5e:	9a01      	ldr	r2, [sp, #4]
 8001e60:	b91a      	cbnz	r2, 8001e6a <SystemInit+0x7a>
 8001e62:	9a00      	ldr	r2, [sp, #0]
 8001e64:	f5b2 4fa0 	cmp.w	r2, #20480	; 0x5000
 8001e68:	d1f1      	bne.n	8001e4e <SystemInit+0x5e>
 8001e6a:	681b      	ldr	r3, [r3, #0]
 8001e6c:	f413 3300 	ands.w	r3, r3, #131072	; 0x20000
 8001e70:	bf18      	it	ne
 8001e72:	2301      	movne	r3, #1
 8001e74:	9301      	str	r3, [sp, #4]
 8001e76:	9b01      	ldr	r3, [sp, #4]
 8001e78:	2b01      	cmp	r3, #1
 8001e7a:	d005      	beq.n	8001e88 <SystemInit+0x98>
 8001e7c:	4b18      	ldr	r3, [pc, #96]	; (8001ee0 <SystemInit+0xf0>)
 8001e7e:	f04f 6200 	mov.w	r2, #134217728	; 0x8000000
 8001e82:	609a      	str	r2, [r3, #8]
 8001e84:	b002      	add	sp, #8
 8001e86:	4770      	bx	lr
 8001e88:	4b19      	ldr	r3, [pc, #100]	; (8001ef0 <SystemInit+0x100>)
 8001e8a:	2212      	movs	r2, #18
 8001e8c:	601a      	str	r2, [r3, #0]
 8001e8e:	f5a3 5380 	sub.w	r3, r3, #4096	; 0x1000
 8001e92:	685a      	ldr	r2, [r3, #4]
 8001e94:	605a      	str	r2, [r3, #4]
 8001e96:	685a      	ldr	r2, [r3, #4]
 8001e98:	605a      	str	r2, [r3, #4]
 8001e9a:	685a      	ldr	r2, [r3, #4]
 8001e9c:	f442 6280 	orr.w	r2, r2, #1024	; 0x400
 8001ea0:	605a      	str	r2, [r3, #4]
 8001ea2:	685a      	ldr	r2, [r3, #4]
 8001ea4:	f422 127c 	bic.w	r2, r2, #4128768	; 0x3f0000
 8001ea8:	605a      	str	r2, [r3, #4]
 8001eaa:	685a      	ldr	r2, [r3, #4]
 8001eac:	f442 12e8 	orr.w	r2, r2, #1900544	; 0x1d0000
 8001eb0:	605a      	str	r2, [r3, #4]
 8001eb2:	681a      	ldr	r2, [r3, #0]
 8001eb4:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
 8001eb8:	601a      	str	r2, [r3, #0]
 8001eba:	6819      	ldr	r1, [r3, #0]
 8001ebc:	4a09      	ldr	r2, [pc, #36]	; (8001ee4 <SystemInit+0xf4>)
 8001ebe:	0189      	lsls	r1, r1, #6
 8001ec0:	d5fb      	bpl.n	8001eba <SystemInit+0xca>
 8001ec2:	6853      	ldr	r3, [r2, #4]
 8001ec4:	f023 0303 	bic.w	r3, r3, #3
 8001ec8:	6053      	str	r3, [r2, #4]
 8001eca:	6853      	ldr	r3, [r2, #4]
 8001ecc:	f043 0302 	orr.w	r3, r3, #2
 8001ed0:	6053      	str	r3, [r2, #4]
 8001ed2:	4b04      	ldr	r3, [pc, #16]	; (8001ee4 <SystemInit+0xf4>)
 8001ed4:	685b      	ldr	r3, [r3, #4]
 8001ed6:	f003 030c 	and.w	r3, r3, #12
 8001eda:	2b08      	cmp	r3, #8
 8001edc:	d1f9      	bne.n	8001ed2 <SystemInit+0xe2>
 8001ede:	e7cd      	b.n	8001e7c <SystemInit+0x8c>
 8001ee0:	e000ed00 	.word	0xe000ed00
 8001ee4:	40021000 	.word	0x40021000
 8001ee8:	f87fc00c 	.word	0xf87fc00c
 8001eec:	ff00fccc 	.word	0xff00fccc
 8001ef0:	40022000 	.word	0x40022000

08001ef4 <Default_Handler>:
 8001ef4:	4668      	mov	r0, sp
 8001ef6:	f020 0107 	bic.w	r1, r0, #7
 8001efa:	468d      	mov	sp, r1
 8001efc:	bf00      	nop
 8001efe:	e7fd      	b.n	8001efc <Default_Handler+0x8>

08001f00 <HardFault_Handler>:
 8001f00:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001f04:	f000 fab0 	bl	8002468 <led_on>
 8001f08:	4b06      	ldr	r3, [pc, #24]	; (8001f24 <HardFault_Handler+0x24>)
 8001f0a:	3b01      	subs	r3, #1
 8001f0c:	d001      	beq.n	8001f12 <HardFault_Handler+0x12>
 8001f0e:	bf00      	nop
 8001f10:	e7fb      	b.n	8001f0a <HardFault_Handler+0xa>
 8001f12:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001f16:	f000 fab9 	bl	800248c <led_off>
 8001f1a:	4b02      	ldr	r3, [pc, #8]	; (8001f24 <HardFault_Handler+0x24>)
 8001f1c:	3b01      	subs	r3, #1
 8001f1e:	d0ef      	beq.n	8001f00 <HardFault_Handler>
 8001f20:	bf00      	nop
 8001f22:	e7fb      	b.n	8001f1c <HardFault_Handler+0x1c>
 8001f24:	00989681 	.word	0x00989681

08001f28 <_reset_init>:
 8001f28:	4a0e      	ldr	r2, [pc, #56]	; (8001f64 <_reset_init+0x3c>)
 8001f2a:	480f      	ldr	r0, [pc, #60]	; (8001f68 <_reset_init+0x40>)
 8001f2c:	1a80      	subs	r0, r0, r2
 8001f2e:	1080      	asrs	r0, r0, #2
 8001f30:	2300      	movs	r3, #0
 8001f32:	4283      	cmp	r3, r0
 8001f34:	d006      	beq.n	8001f44 <_reset_init+0x1c>
 8001f36:	490d      	ldr	r1, [pc, #52]	; (8001f6c <_reset_init+0x44>)
 8001f38:	f851 1023 	ldr.w	r1, [r1, r3, lsl #2]
 8001f3c:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
 8001f40:	3301      	adds	r3, #1
 8001f42:	e7f6      	b.n	8001f32 <_reset_init+0xa>
 8001f44:	4b0a      	ldr	r3, [pc, #40]	; (8001f70 <_reset_init+0x48>)
 8001f46:	f8d3 2088 	ldr.w	r2, [r3, #136]	; 0x88
 8001f4a:	f442 0270 	orr.w	r2, r2, #15728640	; 0xf00000
 8001f4e:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
 8001f52:	f503 730c 	add.w	r3, r3, #560	; 0x230
 8001f56:	685a      	ldr	r2, [r3, #4]
 8001f58:	f022 4240 	bic.w	r2, r2, #3221225472	; 0xc0000000
 8001f5c:	605a      	str	r2, [r3, #4]
 8001f5e:	f7fe bb6d 	b.w	800063c <main>
 8001f62:	bf00      	nop
 8001f64:	20000000 	.word	0x20000000
 8001f68:	200002ac 	.word	0x200002ac
 8001f6c:	080025b0 	.word	0x080025b0
 8001f70:	e000ed00 	.word	0xe000ed00

08001f74 <RCC_GetClocksFreq>:
 8001f74:	4ba5      	ldr	r3, [pc, #660]	; (800220c <RCC_GetClocksFreq+0x298>)
 8001f76:	685a      	ldr	r2, [r3, #4]
 8001f78:	f002 020c 	and.w	r2, r2, #12
 8001f7c:	2a04      	cmp	r2, #4
 8001f7e:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8001f82:	d005      	beq.n	8001f90 <RCC_GetClocksFreq+0x1c>
 8001f84:	2a08      	cmp	r2, #8
 8001f86:	d006      	beq.n	8001f96 <RCC_GetClocksFreq+0x22>
 8001f88:	4ba1      	ldr	r3, [pc, #644]	; (8002210 <RCC_GetClocksFreq+0x29c>)
 8001f8a:	6003      	str	r3, [r0, #0]
 8001f8c:	b9ba      	cbnz	r2, 8001fbe <RCC_GetClocksFreq+0x4a>
 8001f8e:	e017      	b.n	8001fc0 <RCC_GetClocksFreq+0x4c>
 8001f90:	4b9f      	ldr	r3, [pc, #636]	; (8002210 <RCC_GetClocksFreq+0x29c>)
 8001f92:	6003      	str	r3, [r0, #0]
 8001f94:	e013      	b.n	8001fbe <RCC_GetClocksFreq+0x4a>
 8001f96:	6859      	ldr	r1, [r3, #4]
 8001f98:	685c      	ldr	r4, [r3, #4]
 8001f9a:	f3c1 4183 	ubfx	r1, r1, #18, #4
 8001f9e:	03e2      	lsls	r2, r4, #15
 8001fa0:	f101 0102 	add.w	r1, r1, #2
 8001fa4:	d401      	bmi.n	8001faa <RCC_GetClocksFreq+0x36>
 8001fa6:	4a9b      	ldr	r2, [pc, #620]	; (8002214 <RCC_GetClocksFreq+0x2a0>)
 8001fa8:	e006      	b.n	8001fb8 <RCC_GetClocksFreq+0x44>
 8001faa:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8001fac:	4b98      	ldr	r3, [pc, #608]	; (8002210 <RCC_GetClocksFreq+0x29c>)
 8001fae:	f002 020f 	and.w	r2, r2, #15
 8001fb2:	3201      	adds	r2, #1
 8001fb4:	fbb3 f2f2 	udiv	r2, r3, r2
 8001fb8:	434a      	muls	r2, r1
 8001fba:	6002      	str	r2, [r0, #0]
 8001fbc:	e000      	b.n	8001fc0 <RCC_GetClocksFreq+0x4c>
 8001fbe:	2200      	movs	r2, #0
 8001fc0:	4f92      	ldr	r7, [pc, #584]	; (800220c <RCC_GetClocksFreq+0x298>)
 8001fc2:	4d95      	ldr	r5, [pc, #596]	; (8002218 <RCC_GetClocksFreq+0x2a4>)
 8001fc4:	687b      	ldr	r3, [r7, #4]
 8001fc6:	f8df 8254 	ldr.w	r8, [pc, #596]	; 800221c <RCC_GetClocksFreq+0x2a8>
 8001fca:	f3c3 1303 	ubfx	r3, r3, #4, #4
 8001fce:	5cec      	ldrb	r4, [r5, r3]
 8001fd0:	6803      	ldr	r3, [r0, #0]
 8001fd2:	b2e4      	uxtb	r4, r4
 8001fd4:	fa23 f104 	lsr.w	r1, r3, r4
 8001fd8:	6041      	str	r1, [r0, #4]
 8001fda:	687e      	ldr	r6, [r7, #4]
 8001fdc:	f3c6 2602 	ubfx	r6, r6, #8, #3
 8001fe0:	5dae      	ldrb	r6, [r5, r6]
 8001fe2:	fa21 f606 	lsr.w	r6, r1, r6
 8001fe6:	6086      	str	r6, [r0, #8]
 8001fe8:	f8d7 c004 	ldr.w	ip, [r7, #4]
 8001fec:	f3cc 2cc2 	ubfx	ip, ip, #11, #3
 8001ff0:	f815 500c 	ldrb.w	r5, [r5, ip]
 8001ff4:	b2ed      	uxtb	r5, r5
 8001ff6:	40e9      	lsrs	r1, r5
 8001ff8:	60c1      	str	r1, [r0, #12]
 8001ffa:	f8d7 902c 	ldr.w	r9, [r7, #44]	; 0x2c
 8001ffe:	f3c9 1904 	ubfx	r9, r9, #4, #5
 8002002:	f009 0c0f 	and.w	ip, r9, #15
 8002006:	f019 0f10 	tst.w	r9, #16
 800200a:	f838 c01c 	ldrh.w	ip, [r8, ip, lsl #1]
 800200e:	fa1f fc8c 	uxth.w	ip, ip
 8002012:	d007      	beq.n	8002024 <RCC_GetClocksFreq+0xb0>
 8002014:	f1bc 0f00 	cmp.w	ip, #0
 8002018:	d004      	beq.n	8002024 <RCC_GetClocksFreq+0xb0>
 800201a:	fbb2 fcfc 	udiv	ip, r2, ip
 800201e:	f8c0 c010 	str.w	ip, [r0, #16]
 8002022:	e000      	b.n	8002026 <RCC_GetClocksFreq+0xb2>
 8002024:	6103      	str	r3, [r0, #16]
 8002026:	6aff      	ldr	r7, [r7, #44]	; 0x2c
 8002028:	f3c7 2c44 	ubfx	ip, r7, #9, #5
 800202c:	f00c 070f 	and.w	r7, ip, #15
 8002030:	f01c 0f10 	tst.w	ip, #16
 8002034:	f838 7017 	ldrh.w	r7, [r8, r7, lsl #1]
 8002038:	b2bf      	uxth	r7, r7
 800203a:	d004      	beq.n	8002046 <RCC_GetClocksFreq+0xd2>
 800203c:	b11f      	cbz	r7, 8002046 <RCC_GetClocksFreq+0xd2>
 800203e:	fbb2 f7f7 	udiv	r7, r2, r7
 8002042:	6147      	str	r7, [r0, #20]
 8002044:	e000      	b.n	8002048 <RCC_GetClocksFreq+0xd4>
 8002046:	6143      	str	r3, [r0, #20]
 8002048:	4f70      	ldr	r7, [pc, #448]	; (800220c <RCC_GetClocksFreq+0x298>)
 800204a:	f8d7 c030 	ldr.w	ip, [r7, #48]	; 0x30
 800204e:	f01c 0f10 	tst.w	ip, #16
 8002052:	bf0a      	itet	eq
 8002054:	f8df c1b8 	ldreq.w	ip, [pc, #440]	; 8002210 <RCC_GetClocksFreq+0x29c>
 8002058:	6183      	strne	r3, [r0, #24]
 800205a:	f8c0 c018 	streq.w	ip, [r0, #24]
 800205e:	6b3f      	ldr	r7, [r7, #48]	; 0x30
 8002060:	06bf      	lsls	r7, r7, #26
 8002062:	bf56      	itet	pl
 8002064:	4f6a      	ldrpl	r7, [pc, #424]	; (8002210 <RCC_GetClocksFreq+0x29c>)
 8002066:	61c3      	strmi	r3, [r0, #28]
 8002068:	61c7      	strpl	r7, [r0, #28]
 800206a:	4f68      	ldr	r7, [pc, #416]	; (800220c <RCC_GetClocksFreq+0x298>)
 800206c:	f8d7 c030 	ldr.w	ip, [r7, #48]	; 0x30
 8002070:	f01c 0f40 	tst.w	ip, #64	; 0x40
 8002074:	bf0a      	itet	eq
 8002076:	f8df c198 	ldreq.w	ip, [pc, #408]	; 8002210 <RCC_GetClocksFreq+0x29c>
 800207a:	6203      	strne	r3, [r0, #32]
 800207c:	f8c0 c020 	streq.w	ip, [r0, #32]
 8002080:	6b3f      	ldr	r7, [r7, #48]	; 0x30
 8002082:	05ff      	lsls	r7, r7, #23
 8002084:	d506      	bpl.n	8002094 <RCC_GetClocksFreq+0x120>
 8002086:	4293      	cmp	r3, r2
 8002088:	d104      	bne.n	8002094 <RCC_GetClocksFreq+0x120>
 800208a:	42a5      	cmp	r5, r4
 800208c:	d102      	bne.n	8002094 <RCC_GetClocksFreq+0x120>
 800208e:	005f      	lsls	r7, r3, #1
 8002090:	6247      	str	r7, [r0, #36]	; 0x24
 8002092:	e000      	b.n	8002096 <RCC_GetClocksFreq+0x122>
 8002094:	6241      	str	r1, [r0, #36]	; 0x24
 8002096:	4f5d      	ldr	r7, [pc, #372]	; (800220c <RCC_GetClocksFreq+0x298>)
 8002098:	f8d7 c030 	ldr.w	ip, [r7, #48]	; 0x30
 800209c:	f41c 5f80 	tst.w	ip, #4096	; 0x1000
 80020a0:	d008      	beq.n	80020b4 <RCC_GetClocksFreq+0x140>
 80020a2:	4293      	cmp	r3, r2
 80020a4:	d106      	bne.n	80020b4 <RCC_GetClocksFreq+0x140>
 80020a6:	42a5      	cmp	r5, r4
 80020a8:	d104      	bne.n	80020b4 <RCC_GetClocksFreq+0x140>
 80020aa:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 80020ae:	f8c0 c028 	str.w	ip, [r0, #40]	; 0x28
 80020b2:	e000      	b.n	80020b6 <RCC_GetClocksFreq+0x142>
 80020b4:	6281      	str	r1, [r0, #40]	; 0x28
 80020b6:	6b3f      	ldr	r7, [r7, #48]	; 0x30
 80020b8:	05bf      	lsls	r7, r7, #22
 80020ba:	d506      	bpl.n	80020ca <RCC_GetClocksFreq+0x156>
 80020bc:	4293      	cmp	r3, r2
 80020be:	d104      	bne.n	80020ca <RCC_GetClocksFreq+0x156>
 80020c0:	42a5      	cmp	r5, r4
 80020c2:	d102      	bne.n	80020ca <RCC_GetClocksFreq+0x156>
 80020c4:	005f      	lsls	r7, r3, #1
 80020c6:	62c7      	str	r7, [r0, #44]	; 0x2c
 80020c8:	e000      	b.n	80020cc <RCC_GetClocksFreq+0x158>
 80020ca:	62c1      	str	r1, [r0, #44]	; 0x2c
 80020cc:	4f4f      	ldr	r7, [pc, #316]	; (800220c <RCC_GetClocksFreq+0x298>)
 80020ce:	f8d7 c030 	ldr.w	ip, [r7, #48]	; 0x30
 80020d2:	f41c 6f80 	tst.w	ip, #1024	; 0x400
 80020d6:	d008      	beq.n	80020ea <RCC_GetClocksFreq+0x176>
 80020d8:	4293      	cmp	r3, r2
 80020da:	d106      	bne.n	80020ea <RCC_GetClocksFreq+0x176>
 80020dc:	42a5      	cmp	r5, r4
 80020de:	d104      	bne.n	80020ea <RCC_GetClocksFreq+0x176>
 80020e0:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 80020e4:	f8c0 c04c 	str.w	ip, [r0, #76]	; 0x4c
 80020e8:	e000      	b.n	80020ec <RCC_GetClocksFreq+0x178>
 80020ea:	64c1      	str	r1, [r0, #76]	; 0x4c
 80020ec:	6b3f      	ldr	r7, [r7, #48]	; 0x30
 80020ee:	053f      	lsls	r7, r7, #20
 80020f0:	d506      	bpl.n	8002100 <RCC_GetClocksFreq+0x18c>
 80020f2:	4293      	cmp	r3, r2
 80020f4:	d104      	bne.n	8002100 <RCC_GetClocksFreq+0x18c>
 80020f6:	42a5      	cmp	r5, r4
 80020f8:	d102      	bne.n	8002100 <RCC_GetClocksFreq+0x18c>
 80020fa:	005f      	lsls	r7, r3, #1
 80020fc:	6507      	str	r7, [r0, #80]	; 0x50
 80020fe:	e000      	b.n	8002102 <RCC_GetClocksFreq+0x18e>
 8002100:	6501      	str	r1, [r0, #80]	; 0x50
 8002102:	4f42      	ldr	r7, [pc, #264]	; (800220c <RCC_GetClocksFreq+0x298>)
 8002104:	f8d7 c030 	ldr.w	ip, [r7, #48]	; 0x30
 8002108:	f41c 5f00 	tst.w	ip, #8192	; 0x2000
 800210c:	d008      	beq.n	8002120 <RCC_GetClocksFreq+0x1ac>
 800210e:	4293      	cmp	r3, r2
 8002110:	d106      	bne.n	8002120 <RCC_GetClocksFreq+0x1ac>
 8002112:	42a5      	cmp	r5, r4
 8002114:	d104      	bne.n	8002120 <RCC_GetClocksFreq+0x1ac>
 8002116:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 800211a:	f8c0 c054 	str.w	ip, [r0, #84]	; 0x54
 800211e:	e000      	b.n	8002122 <RCC_GetClocksFreq+0x1ae>
 8002120:	6501      	str	r1, [r0, #80]	; 0x50
 8002122:	6b3f      	ldr	r7, [r7, #48]	; 0x30
 8002124:	043f      	lsls	r7, r7, #16
 8002126:	d506      	bpl.n	8002136 <RCC_GetClocksFreq+0x1c2>
 8002128:	4293      	cmp	r3, r2
 800212a:	d104      	bne.n	8002136 <RCC_GetClocksFreq+0x1c2>
 800212c:	42a5      	cmp	r5, r4
 800212e:	d102      	bne.n	8002136 <RCC_GetClocksFreq+0x1c2>
 8002130:	005a      	lsls	r2, r3, #1
 8002132:	6582      	str	r2, [r0, #88]	; 0x58
 8002134:	e000      	b.n	8002138 <RCC_GetClocksFreq+0x1c4>
 8002136:	6581      	str	r1, [r0, #88]	; 0x58
 8002138:	4a34      	ldr	r2, [pc, #208]	; (800220c <RCC_GetClocksFreq+0x298>)
 800213a:	6b14      	ldr	r4, [r2, #48]	; 0x30
 800213c:	07a4      	lsls	r4, r4, #30
 800213e:	d014      	beq.n	800216a <RCC_GetClocksFreq+0x1f6>
 8002140:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8002142:	f001 0103 	and.w	r1, r1, #3
 8002146:	2901      	cmp	r1, #1
 8002148:	d101      	bne.n	800214e <RCC_GetClocksFreq+0x1da>
 800214a:	6383      	str	r3, [r0, #56]	; 0x38
 800214c:	e00e      	b.n	800216c <RCC_GetClocksFreq+0x1f8>
 800214e:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8002150:	f001 0103 	and.w	r1, r1, #3
 8002154:	2902      	cmp	r1, #2
 8002156:	d102      	bne.n	800215e <RCC_GetClocksFreq+0x1ea>
 8002158:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 800215c:	e005      	b.n	800216a <RCC_GetClocksFreq+0x1f6>
 800215e:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8002160:	f001 0103 	and.w	r1, r1, #3
 8002164:	2903      	cmp	r1, #3
 8002166:	d101      	bne.n	800216c <RCC_GetClocksFreq+0x1f8>
 8002168:	4929      	ldr	r1, [pc, #164]	; (8002210 <RCC_GetClocksFreq+0x29c>)
 800216a:	6381      	str	r1, [r0, #56]	; 0x38
 800216c:	6b12      	ldr	r2, [r2, #48]	; 0x30
 800216e:	4927      	ldr	r1, [pc, #156]	; (800220c <RCC_GetClocksFreq+0x298>)
 8002170:	f412 3f40 	tst.w	r2, #196608	; 0x30000
 8002174:	d101      	bne.n	800217a <RCC_GetClocksFreq+0x206>
 8002176:	63c6      	str	r6, [r0, #60]	; 0x3c
 8002178:	e018      	b.n	80021ac <RCC_GetClocksFreq+0x238>
 800217a:	6b0a      	ldr	r2, [r1, #48]	; 0x30
 800217c:	f402 3240 	and.w	r2, r2, #196608	; 0x30000
 8002180:	f5b2 3f80 	cmp.w	r2, #65536	; 0x10000
 8002184:	d101      	bne.n	800218a <RCC_GetClocksFreq+0x216>
 8002186:	63c3      	str	r3, [r0, #60]	; 0x3c
 8002188:	e010      	b.n	80021ac <RCC_GetClocksFreq+0x238>
 800218a:	6b0a      	ldr	r2, [r1, #48]	; 0x30
 800218c:	f402 3240 	and.w	r2, r2, #196608	; 0x30000
 8002190:	f5b2 3f00 	cmp.w	r2, #131072	; 0x20000
 8002194:	d102      	bne.n	800219c <RCC_GetClocksFreq+0x228>
 8002196:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 800219a:	e006      	b.n	80021aa <RCC_GetClocksFreq+0x236>
 800219c:	6b0a      	ldr	r2, [r1, #48]	; 0x30
 800219e:	f402 3240 	and.w	r2, r2, #196608	; 0x30000
 80021a2:	f5b2 3f40 	cmp.w	r2, #196608	; 0x30000
 80021a6:	d101      	bne.n	80021ac <RCC_GetClocksFreq+0x238>
 80021a8:	4a19      	ldr	r2, [pc, #100]	; (8002210 <RCC_GetClocksFreq+0x29c>)
 80021aa:	63c2      	str	r2, [r0, #60]	; 0x3c
 80021ac:	4a17      	ldr	r2, [pc, #92]	; (800220c <RCC_GetClocksFreq+0x298>)
 80021ae:	6b11      	ldr	r1, [r2, #48]	; 0x30
 80021b0:	f411 2f40 	tst.w	r1, #786432	; 0xc0000
 80021b4:	d101      	bne.n	80021ba <RCC_GetClocksFreq+0x246>
 80021b6:	6406      	str	r6, [r0, #64]	; 0x40
 80021b8:	e018      	b.n	80021ec <RCC_GetClocksFreq+0x278>
 80021ba:	6b11      	ldr	r1, [r2, #48]	; 0x30
 80021bc:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 80021c0:	f5b1 2f80 	cmp.w	r1, #262144	; 0x40000
 80021c4:	d101      	bne.n	80021ca <RCC_GetClocksFreq+0x256>
 80021c6:	6403      	str	r3, [r0, #64]	; 0x40
 80021c8:	e010      	b.n	80021ec <RCC_GetClocksFreq+0x278>
 80021ca:	6b11      	ldr	r1, [r2, #48]	; 0x30
 80021cc:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 80021d0:	f5b1 2f00 	cmp.w	r1, #524288	; 0x80000
 80021d4:	d102      	bne.n	80021dc <RCC_GetClocksFreq+0x268>
 80021d6:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 80021da:	e006      	b.n	80021ea <RCC_GetClocksFreq+0x276>
 80021dc:	6b11      	ldr	r1, [r2, #48]	; 0x30
 80021de:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 80021e2:	f5b1 2f40 	cmp.w	r1, #786432	; 0xc0000
 80021e6:	d101      	bne.n	80021ec <RCC_GetClocksFreq+0x278>
 80021e8:	4909      	ldr	r1, [pc, #36]	; (8002210 <RCC_GetClocksFreq+0x29c>)
 80021ea:	6401      	str	r1, [r0, #64]	; 0x40
 80021ec:	6b12      	ldr	r2, [r2, #48]	; 0x30
 80021ee:	4907      	ldr	r1, [pc, #28]	; (800220c <RCC_GetClocksFreq+0x298>)
 80021f0:	f412 1f40 	tst.w	r2, #3145728	; 0x300000
 80021f4:	d101      	bne.n	80021fa <RCC_GetClocksFreq+0x286>
 80021f6:	6446      	str	r6, [r0, #68]	; 0x44
 80021f8:	e023      	b.n	8002242 <RCC_GetClocksFreq+0x2ce>
 80021fa:	6b0a      	ldr	r2, [r1, #48]	; 0x30
 80021fc:	f402 1240 	and.w	r2, r2, #3145728	; 0x300000
 8002200:	f5b2 1f80 	cmp.w	r2, #1048576	; 0x100000
 8002204:	d10c      	bne.n	8002220 <RCC_GetClocksFreq+0x2ac>
 8002206:	6443      	str	r3, [r0, #68]	; 0x44
 8002208:	e01b      	b.n	8002242 <RCC_GetClocksFreq+0x2ce>
 800220a:	bf00      	nop
 800220c:	40021000 	.word	0x40021000
 8002210:	007a1200 	.word	0x007a1200
 8002214:	003d0900 	.word	0x003d0900
 8002218:	2000029c 	.word	0x2000029c
 800221c:	2000027c 	.word	0x2000027c
 8002220:	6b0a      	ldr	r2, [r1, #48]	; 0x30
 8002222:	f402 1240 	and.w	r2, r2, #3145728	; 0x300000
 8002226:	f5b2 1f00 	cmp.w	r2, #2097152	; 0x200000
 800222a:	d102      	bne.n	8002232 <RCC_GetClocksFreq+0x2be>
 800222c:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 8002230:	e006      	b.n	8002240 <RCC_GetClocksFreq+0x2cc>
 8002232:	6b0a      	ldr	r2, [r1, #48]	; 0x30
 8002234:	f402 1240 	and.w	r2, r2, #3145728	; 0x300000
 8002238:	f5b2 1f40 	cmp.w	r2, #3145728	; 0x300000
 800223c:	d101      	bne.n	8002242 <RCC_GetClocksFreq+0x2ce>
 800223e:	4a11      	ldr	r2, [pc, #68]	; (8002284 <RCC_GetClocksFreq+0x310>)
 8002240:	6442      	str	r2, [r0, #68]	; 0x44
 8002242:	4a11      	ldr	r2, [pc, #68]	; (8002288 <RCC_GetClocksFreq+0x314>)
 8002244:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8002246:	f411 0f40 	tst.w	r1, #12582912	; 0xc00000
 800224a:	d102      	bne.n	8002252 <RCC_GetClocksFreq+0x2de>
 800224c:	6486      	str	r6, [r0, #72]	; 0x48
 800224e:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8002252:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8002254:	f401 0140 	and.w	r1, r1, #12582912	; 0xc00000
 8002258:	f5b1 0f80 	cmp.w	r1, #4194304	; 0x400000
 800225c:	d00f      	beq.n	800227e <RCC_GetClocksFreq+0x30a>
 800225e:	6b13      	ldr	r3, [r2, #48]	; 0x30
 8002260:	f403 0340 	and.w	r3, r3, #12582912	; 0xc00000
 8002264:	f5b3 0f00 	cmp.w	r3, #8388608	; 0x800000
 8002268:	d102      	bne.n	8002270 <RCC_GetClocksFreq+0x2fc>
 800226a:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 800226e:	e006      	b.n	800227e <RCC_GetClocksFreq+0x30a>
 8002270:	6b13      	ldr	r3, [r2, #48]	; 0x30
 8002272:	f403 0340 	and.w	r3, r3, #12582912	; 0xc00000
 8002276:	f5b3 0f40 	cmp.w	r3, #12582912	; 0xc00000
 800227a:	d101      	bne.n	8002280 <RCC_GetClocksFreq+0x30c>
 800227c:	4b01      	ldr	r3, [pc, #4]	; (8002284 <RCC_GetClocksFreq+0x310>)
 800227e:	6483      	str	r3, [r0, #72]	; 0x48
 8002280:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8002284:	007a1200 	.word	0x007a1200
 8002288:	40021000 	.word	0x40021000

0800228c <RCC_AHBPeriphClockCmd>:
 800228c:	bf00      	nop
 800228e:	bf00      	nop
 8002290:	4b04      	ldr	r3, [pc, #16]	; (80022a4 <RCC_AHBPeriphClockCmd+0x18>)
 8002292:	695a      	ldr	r2, [r3, #20]
 8002294:	b109      	cbz	r1, 800229a <RCC_AHBPeriphClockCmd+0xe>
 8002296:	4310      	orrs	r0, r2
 8002298:	e001      	b.n	800229e <RCC_AHBPeriphClockCmd+0x12>
 800229a:	ea22 0000 	bic.w	r0, r2, r0
 800229e:	6158      	str	r0, [r3, #20]
 80022a0:	4770      	bx	lr
 80022a2:	bf00      	nop
 80022a4:	40021000 	.word	0x40021000

080022a8 <RCC_APB2PeriphClockCmd>:
 80022a8:	bf00      	nop
 80022aa:	bf00      	nop
 80022ac:	4b04      	ldr	r3, [pc, #16]	; (80022c0 <RCC_APB2PeriphClockCmd+0x18>)
 80022ae:	699a      	ldr	r2, [r3, #24]
 80022b0:	b109      	cbz	r1, 80022b6 <RCC_APB2PeriphClockCmd+0xe>
 80022b2:	4310      	orrs	r0, r2
 80022b4:	e001      	b.n	80022ba <RCC_APB2PeriphClockCmd+0x12>
 80022b6:	ea22 0000 	bic.w	r0, r2, r0
 80022ba:	6198      	str	r0, [r3, #24]
 80022bc:	4770      	bx	lr
 80022be:	bf00      	nop
 80022c0:	40021000 	.word	0x40021000

080022c4 <RCC_APB1PeriphClockCmd>:
 80022c4:	bf00      	nop
 80022c6:	bf00      	nop
 80022c8:	4b04      	ldr	r3, [pc, #16]	; (80022dc <RCC_APB1PeriphClockCmd+0x18>)
 80022ca:	69da      	ldr	r2, [r3, #28]
 80022cc:	b109      	cbz	r1, 80022d2 <RCC_APB1PeriphClockCmd+0xe>
 80022ce:	4310      	orrs	r0, r2
 80022d0:	e001      	b.n	80022d6 <RCC_APB1PeriphClockCmd+0x12>
 80022d2:	ea22 0000 	bic.w	r0, r2, r0
 80022d6:	61d8      	str	r0, [r3, #28]
 80022d8:	4770      	bx	lr
 80022da:	bf00      	nop
 80022dc:	40021000 	.word	0x40021000

080022e0 <lib_low_level_init>:
 80022e0:	b508      	push	{r3, lr}
 80022e2:	f7ff fd83 	bl	8001dec <sytem_clock_init>
 80022e6:	f000 f871 	bl	80023cc <gpio_init>
 80022ea:	f7ff fcbb 	bl	8001c64 <uart_init>
 80022ee:	f7ff fadb 	bl	80018a8 <timer_init>
 80022f2:	f7ff f999 	bl	8001628 <pwm_init>
 80022f6:	f7ff f917 	bl	8001528 <drv8834_init>
 80022fa:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80022fe:	f7ff bbeb 	b.w	8001ad8 <i2c_0_init>

08002302 <GPIO_Init>:
 8002302:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002304:	bf00      	nop
 8002306:	bf00      	nop
 8002308:	bf00      	nop
 800230a:	bf00      	nop
 800230c:	2300      	movs	r3, #0
 800230e:	680e      	ldr	r6, [r1, #0]
 8002310:	461a      	mov	r2, r3
 8002312:	2501      	movs	r5, #1
 8002314:	4095      	lsls	r5, r2
 8002316:	ea05 0406 	and.w	r4, r5, r6
 800231a:	42ac      	cmp	r4, r5
 800231c:	d131      	bne.n	8002382 <GPIO_Init+0x80>
 800231e:	790d      	ldrb	r5, [r1, #4]
 8002320:	1e6f      	subs	r7, r5, #1
 8002322:	b2ff      	uxtb	r7, r7
 8002324:	2f01      	cmp	r7, #1
 8002326:	d81c      	bhi.n	8002362 <GPIO_Init+0x60>
 8002328:	bf00      	nop
 800232a:	f04f 0c03 	mov.w	ip, #3
 800232e:	6887      	ldr	r7, [r0, #8]
 8002330:	fa0c fc03 	lsl.w	ip, ip, r3
 8002334:	ea27 070c 	bic.w	r7, r7, ip
 8002338:	6087      	str	r7, [r0, #8]
 800233a:	f891 c005 	ldrb.w	ip, [r1, #5]
 800233e:	6887      	ldr	r7, [r0, #8]
 8002340:	fa0c fc03 	lsl.w	ip, ip, r3
 8002344:	ea4c 0707 	orr.w	r7, ip, r7
 8002348:	6087      	str	r7, [r0, #8]
 800234a:	bf00      	nop
 800234c:	8887      	ldrh	r7, [r0, #4]
 800234e:	b2bf      	uxth	r7, r7
 8002350:	ea27 0404 	bic.w	r4, r7, r4
 8002354:	8084      	strh	r4, [r0, #4]
 8002356:	798c      	ldrb	r4, [r1, #6]
 8002358:	8887      	ldrh	r7, [r0, #4]
 800235a:	4094      	lsls	r4, r2
 800235c:	433c      	orrs	r4, r7
 800235e:	b2a4      	uxth	r4, r4
 8002360:	8084      	strh	r4, [r0, #4]
 8002362:	2403      	movs	r4, #3
 8002364:	6807      	ldr	r7, [r0, #0]
 8002366:	409c      	lsls	r4, r3
 8002368:	43e4      	mvns	r4, r4
 800236a:	4027      	ands	r7, r4
 800236c:	6007      	str	r7, [r0, #0]
 800236e:	6807      	ldr	r7, [r0, #0]
 8002370:	409d      	lsls	r5, r3
 8002372:	433d      	orrs	r5, r7
 8002374:	6005      	str	r5, [r0, #0]
 8002376:	68c5      	ldr	r5, [r0, #12]
 8002378:	402c      	ands	r4, r5
 800237a:	79cd      	ldrb	r5, [r1, #7]
 800237c:	409d      	lsls	r5, r3
 800237e:	432c      	orrs	r4, r5
 8002380:	60c4      	str	r4, [r0, #12]
 8002382:	3201      	adds	r2, #1
 8002384:	2a10      	cmp	r2, #16
 8002386:	f103 0302 	add.w	r3, r3, #2
 800238a:	d1c2      	bne.n	8002312 <GPIO_Init+0x10>
 800238c:	bdf0      	pop	{r4, r5, r6, r7, pc}

0800238e <GPIO_SetBits>:
 800238e:	bf00      	nop
 8002390:	bf00      	nop
 8002392:	6181      	str	r1, [r0, #24]
 8002394:	4770      	bx	lr

08002396 <GPIO_ResetBits>:
 8002396:	bf00      	nop
 8002398:	bf00      	nop
 800239a:	8501      	strh	r1, [r0, #40]	; 0x28
 800239c:	4770      	bx	lr

0800239e <GPIO_PinAFConfig>:
 800239e:	b510      	push	{r4, lr}
 80023a0:	bf00      	nop
 80023a2:	bf00      	nop
 80023a4:	bf00      	nop
 80023a6:	f001 0307 	and.w	r3, r1, #7
 80023aa:	08c9      	lsrs	r1, r1, #3
 80023ac:	eb00 0081 	add.w	r0, r0, r1, lsl #2
 80023b0:	009b      	lsls	r3, r3, #2
 80023b2:	6a04      	ldr	r4, [r0, #32]
 80023b4:	210f      	movs	r1, #15
 80023b6:	4099      	lsls	r1, r3
 80023b8:	ea24 0101 	bic.w	r1, r4, r1
 80023bc:	6201      	str	r1, [r0, #32]
 80023be:	6a01      	ldr	r1, [r0, #32]
 80023c0:	fa02 f303 	lsl.w	r3, r2, r3
 80023c4:	430b      	orrs	r3, r1
 80023c6:	6203      	str	r3, [r0, #32]
 80023c8:	bd10      	pop	{r4, pc}
	...

080023cc <gpio_init>:
 80023cc:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
 80023d0:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 80023d4:	2101      	movs	r1, #1
 80023d6:	f7ff ff59 	bl	800228c <RCC_AHBPeriphClockCmd>
 80023da:	4d21      	ldr	r5, [pc, #132]	; (8002460 <gpio_init+0x94>)
 80023dc:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 80023e0:	2101      	movs	r1, #1
 80023e2:	f7ff ff53 	bl	800228c <RCC_AHBPeriphClockCmd>
 80023e6:	f44f 2000 	mov.w	r0, #524288	; 0x80000
 80023ea:	2101      	movs	r1, #1
 80023ec:	f7ff ff4e 	bl	800228c <RCC_AHBPeriphClockCmd>
 80023f0:	2400      	movs	r4, #0
 80023f2:	2603      	movs	r6, #3
 80023f4:	f44f 4900 	mov.w	r9, #32768	; 0x8000
 80023f8:	2701      	movs	r7, #1
 80023fa:	4628      	mov	r0, r5
 80023fc:	4669      	mov	r1, sp
 80023fe:	f88d 7004 	strb.w	r7, [sp, #4]
 8002402:	f8cd 9000 	str.w	r9, [sp]
 8002406:	f88d 4006 	strb.w	r4, [sp, #6]
 800240a:	f88d 6005 	strb.w	r6, [sp, #5]
 800240e:	f88d 4007 	strb.w	r4, [sp, #7]
 8002412:	f7ff ff76 	bl	8002302 <GPIO_Init>
 8002416:	f88d 7004 	strb.w	r7, [sp, #4]
 800241a:	4f12      	ldr	r7, [pc, #72]	; (8002464 <gpio_init+0x98>)
 800241c:	f88d 4006 	strb.w	r4, [sp, #6]
 8002420:	f44f 5800 	mov.w	r8, #8192	; 0x2000
 8002424:	4638      	mov	r0, r7
 8002426:	4669      	mov	r1, sp
 8002428:	f8cd 8000 	str.w	r8, [sp]
 800242c:	f88d 6005 	strb.w	r6, [sp, #5]
 8002430:	f88d 4007 	strb.w	r4, [sp, #7]
 8002434:	f7ff ff65 	bl	8002302 <GPIO_Init>
 8002438:	f44f 7300 	mov.w	r3, #512	; 0x200
 800243c:	4628      	mov	r0, r5
 800243e:	4669      	mov	r1, sp
 8002440:	9300      	str	r3, [sp, #0]
 8002442:	f88d 4004 	strb.w	r4, [sp, #4]
 8002446:	f88d 6005 	strb.w	r6, [sp, #5]
 800244a:	f88d 4007 	strb.w	r4, [sp, #7]
 800244e:	f7ff ff58 	bl	8002302 <GPIO_Init>
 8002452:	f8c5 9018 	str.w	r9, [r5, #24]
 8002456:	f8c7 8018 	str.w	r8, [r7, #24]
 800245a:	b003      	add	sp, #12
 800245c:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8002460:	48000400 	.word	0x48000400
 8002464:	48000800 	.word	0x48000800

08002468 <led_on>:
 8002468:	0402      	lsls	r2, r0, #16
 800246a:	d503      	bpl.n	8002474 <led_on+0xc>
 800246c:	4b05      	ldr	r3, [pc, #20]	; (8002484 <led_on+0x1c>)
 800246e:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 8002472:	619a      	str	r2, [r3, #24]
 8002474:	0483      	lsls	r3, r0, #18
 8002476:	d503      	bpl.n	8002480 <led_on+0x18>
 8002478:	4b03      	ldr	r3, [pc, #12]	; (8002488 <led_on+0x20>)
 800247a:	f44f 5200 	mov.w	r2, #8192	; 0x2000
 800247e:	851a      	strh	r2, [r3, #40]	; 0x28
 8002480:	4770      	bx	lr
 8002482:	bf00      	nop
 8002484:	48000400 	.word	0x48000400
 8002488:	48000800 	.word	0x48000800

0800248c <led_off>:
 800248c:	0403      	lsls	r3, r0, #16
 800248e:	d503      	bpl.n	8002498 <led_off+0xc>
 8002490:	4b05      	ldr	r3, [pc, #20]	; (80024a8 <led_off+0x1c>)
 8002492:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 8002496:	851a      	strh	r2, [r3, #40]	; 0x28
 8002498:	0481      	lsls	r1, r0, #18
 800249a:	d503      	bpl.n	80024a4 <led_off+0x18>
 800249c:	4b03      	ldr	r3, [pc, #12]	; (80024ac <led_off+0x20>)
 800249e:	f44f 5200 	mov.w	r2, #8192	; 0x2000
 80024a2:	619a      	str	r2, [r3, #24]
 80024a4:	4770      	bx	lr
 80024a6:	bf00      	nop
 80024a8:	48000400 	.word	0x48000400
 80024ac:	48000800 	.word	0x48000800

080024b0 <get_key>:
 80024b0:	4b02      	ldr	r3, [pc, #8]	; (80024bc <get_key+0xc>)
 80024b2:	8a18      	ldrh	r0, [r3, #16]
 80024b4:	43c0      	mvns	r0, r0
 80024b6:	f400 7000 	and.w	r0, r0, #512	; 0x200
 80024ba:	4770      	bx	lr
 80024bc:	48000400 	.word	0x48000400

080024c0 <NVIC_Init>:
 80024c0:	b510      	push	{r4, lr}
 80024c2:	bf00      	nop
 80024c4:	bf00      	nop
 80024c6:	bf00      	nop
 80024c8:	78c2      	ldrb	r2, [r0, #3]
 80024ca:	7803      	ldrb	r3, [r0, #0]
 80024cc:	b30a      	cbz	r2, 8002512 <NVIC_Init+0x52>
 80024ce:	4a16      	ldr	r2, [pc, #88]	; (8002528 <NVIC_Init+0x68>)
 80024d0:	7844      	ldrb	r4, [r0, #1]
 80024d2:	68d2      	ldr	r2, [r2, #12]
 80024d4:	43d2      	mvns	r2, r2
 80024d6:	f3c2 2202 	ubfx	r2, r2, #8, #3
 80024da:	f1c2 0104 	rsb	r1, r2, #4
 80024de:	b2c9      	uxtb	r1, r1
 80024e0:	fa04 f101 	lsl.w	r1, r4, r1
 80024e4:	240f      	movs	r4, #15
 80024e6:	fa44 f202 	asr.w	r2, r4, r2
 80024ea:	7884      	ldrb	r4, [r0, #2]
 80024ec:	b2c9      	uxtb	r1, r1
 80024ee:	4022      	ands	r2, r4
 80024f0:	430a      	orrs	r2, r1
 80024f2:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
 80024f6:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
 80024fa:	0112      	lsls	r2, r2, #4
 80024fc:	b2d2      	uxtb	r2, r2
 80024fe:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
 8002502:	7803      	ldrb	r3, [r0, #0]
 8002504:	2201      	movs	r2, #1
 8002506:	0959      	lsrs	r1, r3, #5
 8002508:	f003 031f 	and.w	r3, r3, #31
 800250c:	fa02 f303 	lsl.w	r3, r2, r3
 8002510:	e006      	b.n	8002520 <NVIC_Init+0x60>
 8002512:	0959      	lsrs	r1, r3, #5
 8002514:	2201      	movs	r2, #1
 8002516:	f003 031f 	and.w	r3, r3, #31
 800251a:	fa02 f303 	lsl.w	r3, r2, r3
 800251e:	3120      	adds	r1, #32
 8002520:	4a02      	ldr	r2, [pc, #8]	; (800252c <NVIC_Init+0x6c>)
 8002522:	f842 3021 	str.w	r3, [r2, r1, lsl #2]
 8002526:	bd10      	pop	{r4, pc}
 8002528:	e000ed00 	.word	0xe000ed00
 800252c:	e000e100 	.word	0xe000e100

08002530 <_init>:
 8002530:	e1a0c00d 	mov	ip, sp
 8002534:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
 8002538:	e24cb004 	sub	fp, ip, #4
 800253c:	e24bd028 	sub	sp, fp, #40	; 0x28
 8002540:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
 8002544:	e12fff1e 	bx	lr

08002548 <_fini>:
 8002548:	e1a0c00d 	mov	ip, sp
 800254c:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
 8002550:	e24cb004 	sub	fp, ip, #4
 8002554:	e24bd028 	sub	sp, fp, #40	; 0x28
 8002558:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
 800255c:	e12fff1e 	bx	lr
 8002560:	69647473 	.word	0x69647473
 8002564:	6e69206f 	.word	0x6e69206f
 8002568:	64207469 	.word	0x64207469
 800256c:	0a656e6f 	.word	0x0a656e6f
 8002570:	00          	.byte	0x00
 8002571:	0a          	.byte	0x0a
 8002572:	6577      	.short	0x6577
 8002574:	6d6f636c 	.word	0x6d6f636c
 8002578:	6f742065 	.word	0x6f742065
 800257c:	7a755320 	.word	0x7a755320
 8002580:	4f616875 	.word	0x4f616875
 8002584:	5f5e2053 	.word	0x5f5e2053
 8002588:	2e32205e 	.word	0x2e32205e
 800258c:	0a362e30 	.word	0x0a362e30
 8002590:	4c495542 	.word	0x4c495542
 8002594:	754a2044 	.word	0x754a2044
 8002598:	3820206e 	.word	0x3820206e
 800259c:	31303220 	.word	0x31303220
 80025a0:	38302035 	.word	0x38302035
 80025a4:	3a36353a 	.word	0x3a36353a
 80025a8:	000a3935 	.word	0x000a3935

080025ac <__EH_FRAME_BEGIN__>:
 80025ac:	00000000                                ....
