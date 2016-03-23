
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
 80001a0:	200001ec 	.word	0x200001ec
 80001a4:	200001a4 	.word	0x200001a4

080001a8 <null_thread>:
 80001a8:	b508      	push	{r3, lr}
 80001aa:	f001 ffb5 	bl	8002118 <sleep>
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
 800020c:	200001a4 	.word	0x200001a4
 8000210:	200001ec 	.word	0x200001ec

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
 8000254:	200001ec 	.word	0x200001ec
 8000258:	200001a4 	.word	0x200001a4

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
 800027c:	200001ec 	.word	0x200001ec

08000280 <kernel_start>:
 8000280:	b508      	push	{r3, lr}
 8000282:	f001 ff37 	bl	80020f4 <sys_tick_init>
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
 80002f8:	200001a4 	.word	0x200001a4
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
 8000334:	200001a4 	.word	0x200001a4
 8000338:	200001ec 	.word	0x200001ec
 800033c:	080001a9 	.word	0x080001a9
 8000340:	200001f0 	.word	0x200001f0

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
 8000384:	200001a4 	.word	0x200001a4

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
 80003a8:	200001a4 	.word	0x200001a4

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
 80003ec:	20000270 	.word	0x20000270
 80003f0:	20000288 	.word	0x20000288

080003f4 <putc_>:
 80003f4:	b538      	push	{r3, r4, r5, lr}
 80003f6:	4c06      	ldr	r4, [pc, #24]	; (8000410 <putc_+0x1c>)
 80003f8:	4605      	mov	r5, r0
 80003fa:	4620      	mov	r0, r4
 80003fc:	f000 f8f8 	bl	80005f0 <mutex_lock>
 8000400:	4628      	mov	r0, r5
 8000402:	f001 fd35 	bl	8001e70 <uart_write>
 8000406:	4620      	mov	r0, r4
 8000408:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 800040c:	f000 b90c 	b.w	8000628 <mutex_unlock>
 8000410:	200002c8 	.word	0x200002c8

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
 8000438:	200002d4 	.word	0x200002d4

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
 8000588:	200002d0 	.word	0x200002d0

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
 80005c8:	200002c8 	.word	0x200002c8
 80005cc:	200002cc 	.word	0x200002cc
 80005d0:	200002d4 	.word	0x200002d4
 80005d4:	200002d0 	.word	0x200002d0
 80005d8:	08002890 	.word	0x08002890

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
 800063e:	f001 ffe7 	bl	8002610 <lib_low_level_init>
 8000642:	f7ff feb3 	bl	80003ac <lib_os_init>
 8000646:	4905      	ldr	r1, [pc, #20]	; (800065c <main+0x20>)
 8000648:	4805      	ldr	r0, [pc, #20]	; (8000660 <main+0x24>)
 800064a:	f44f 7200 	mov.w	r2, #512	; 0x200
 800064e:	2306      	movs	r3, #6
 8000650:	f7ff fe1c 	bl	800028c <create_thread>
 8000654:	f7ff fe14 	bl	8000280 <kernel_start>
 8000658:	2000      	movs	r0, #0
 800065a:	bd08      	pop	{r3, pc}
 800065c:	20000990 	.word	0x20000990
 8000660:	08001655 	.word	0x08001655

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
 800068c:	f001 ffd1 	bl	8002632 <GPIO_Init>
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
 80006b0:	f001 ffbf 	bl	8002632 <GPIO_Init>
 80006b4:	852c      	strh	r4, [r5, #40]	; 0x28
 80006b6:	f7ff ffd5 	bl	8000664 <rgb_i2c_delay>
 80006ba:	b003      	add	sp, #12
 80006bc:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80006be:	bf00      	nop
 80006c0:	20000b90 	.word	0x20000b90
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
 80006e6:	f001 ffa4 	bl	8002632 <GPIO_Init>
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
 8000708:	f001 ff93 	bl	8002632 <GPIO_Init>
 800070c:	61a5      	str	r5, [r4, #24]
 800070e:	f7ff ffa9 	bl	8000664 <rgb_i2c_delay>
 8000712:	b002      	add	sp, #8
 8000714:	bd70      	pop	{r4, r5, r6, pc}
 8000716:	bf00      	nop
 8000718:	20000b90 	.word	0x20000b90
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
 8000762:	f001 ff66 	bl	8002632 <GPIO_Init>
 8000766:	783b      	ldrb	r3, [r7, #0]
 8000768:	f88d 4004 	strb.w	r4, [sp, #4]
 800076c:	4669      	mov	r1, sp
 800076e:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000772:	9300      	str	r3, [sp, #0]
 8000774:	f88d 4007 	strb.w	r4, [sp, #7]
 8000778:	f88d 6005 	strb.w	r6, [sp, #5]
 800077c:	f001 ff59 	bl	8002632 <GPIO_Init>
 8000780:	7839      	ldrb	r1, [r7, #0]
 8000782:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000786:	f001 ff9a 	bl	80026be <GPIO_SetBits>
 800078a:	f88d 4004 	strb.w	r4, [sp, #4]
 800078e:	f88d 4007 	strb.w	r4, [sp, #7]
 8000792:	4c0b      	ldr	r4, [pc, #44]	; (80007c0 <rgb_i2c_init+0x84>)
 8000794:	9500      	str	r5, [sp, #0]
 8000796:	4620      	mov	r0, r4
 8000798:	4669      	mov	r1, sp
 800079a:	f88d 6005 	strb.w	r6, [sp, #5]
 800079e:	f001 ff48 	bl	8002632 <GPIO_Init>
 80007a2:	4620      	mov	r0, r4
 80007a4:	4629      	mov	r1, r5
 80007a6:	f001 ff8a 	bl	80026be <GPIO_SetBits>
 80007aa:	f7ff ffc0 	bl	800072e <RGBSetHighSCL>
 80007ae:	f7ff ff5b 	bl	8000668 <RGBSetLowSDA>
 80007b2:	f7ff ff89 	bl	80006c8 <RGBSetHighSDA>
 80007b6:	b003      	add	sp, #12
 80007b8:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80007ba:	bf00      	nop
 80007bc:	20000b90 	.word	0x20000b90
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

0800092e <rgb_i2c_read_reg>:
 800092e:	b570      	push	{r4, r5, r6, lr}
 8000930:	4604      	mov	r4, r0
 8000932:	460d      	mov	r5, r1
 8000934:	4616      	mov	r6, r2
 8000936:	f7ff ff45 	bl	80007c4 <rgb_i2cStart>
 800093a:	4620      	mov	r0, r4
 800093c:	f7ff ff60 	bl	8000800 <rgb_i2cWrite>
 8000940:	4628      	mov	r0, r5
 8000942:	f7ff ff5d 	bl	8000800 <rgb_i2cWrite>
 8000946:	f7ff ff3d 	bl	80007c4 <rgb_i2cStart>
 800094a:	f044 0001 	orr.w	r0, r4, #1
 800094e:	f7ff ff57 	bl	8000800 <rgb_i2cWrite>
 8000952:	4631      	mov	r1, r6
 8000954:	2000      	movs	r0, #0
 8000956:	f7ff ff73 	bl	8000840 <rgb_i2cRead>
 800095a:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 800095e:	f7ff bf40 	b.w	80007e2 <rgb_i2cStop>
	...

08000964 <rgb_init>:
 8000964:	4b1d      	ldr	r3, [pc, #116]	; (80009dc <rgb_init+0x78>)
 8000966:	b570      	push	{r4, r5, r6, lr}
 8000968:	2409      	movs	r4, #9
 800096a:	2200      	movs	r2, #0
 800096c:	3c01      	subs	r4, #1
 800096e:	801a      	strh	r2, [r3, #0]
 8000970:	825a      	strh	r2, [r3, #18]
 8000972:	849a      	strh	r2, [r3, #36]	; 0x24
 8000974:	f8a3 2048 	strh.w	r2, [r3, #72]	; 0x48
 8000978:	86da      	strh	r2, [r3, #54]	; 0x36
 800097a:	f103 0302 	add.w	r3, r3, #2
 800097e:	d1f4      	bne.n	800096a <rgb_init+0x6>
 8000980:	4d17      	ldr	r5, [pc, #92]	; (80009e0 <rgb_init+0x7c>)
 8000982:	f64f 76ff 	movw	r6, #65535	; 0xffff
 8000986:	802e      	strh	r6, [r5, #0]
 8000988:	f7ff fed8 	bl	800073c <rgb_i2c_init>
 800098c:	2072      	movs	r0, #114	; 0x72
 800098e:	2181      	movs	r1, #129	; 0x81
 8000990:	22ff      	movs	r2, #255	; 0xff
 8000992:	f7ff ffb9 	bl	8000908 <rgb_i2c_write_reg>
 8000996:	2072      	movs	r0, #114	; 0x72
 8000998:	2183      	movs	r1, #131	; 0x83
 800099a:	22ff      	movs	r2, #255	; 0xff
 800099c:	f7ff ffb4 	bl	8000908 <rgb_i2c_write_reg>
 80009a0:	2072      	movs	r0, #114	; 0x72
 80009a2:	218d      	movs	r1, #141	; 0x8d
 80009a4:	4622      	mov	r2, r4
 80009a6:	f7ff ffaf 	bl	8000908 <rgb_i2c_write_reg>
 80009aa:	2072      	movs	r0, #114	; 0x72
 80009ac:	2180      	movs	r1, #128	; 0x80
 80009ae:	2203      	movs	r2, #3
 80009b0:	f7ff ffaa 	bl	8000908 <rgb_i2c_write_reg>
 80009b4:	2072      	movs	r0, #114	; 0x72
 80009b6:	218f      	movs	r1, #143	; 0x8f
 80009b8:	2223      	movs	r2, #35	; 0x23
 80009ba:	f7ff ffa5 	bl	8000908 <rgb_i2c_write_reg>
 80009be:	f7ff fe83 	bl	80006c8 <RGBSetHighSDA>
 80009c2:	2072      	movs	r0, #114	; 0x72
 80009c4:	2180      	movs	r1, #128	; 0x80
 80009c6:	2207      	movs	r2, #7
 80009c8:	802c      	strh	r4, [r5, #0]
 80009ca:	f7ff ff9d 	bl	8000908 <rgb_i2c_write_reg>
 80009ce:	2072      	movs	r0, #114	; 0x72
 80009d0:	218e      	movs	r1, #142	; 0x8e
 80009d2:	2208      	movs	r2, #8
 80009d4:	f7ff ff98 	bl	8000908 <rgb_i2c_write_reg>
 80009d8:	802e      	strh	r6, [r5, #0]
 80009da:	bd70      	pop	{r4, r5, r6, pc}
 80009dc:	200004f4 	.word	0x200004f4
 80009e0:	20000b90 	.word	0x20000b90

080009e4 <rgb_read>:
 80009e4:	b538      	push	{r3, r4, r5, lr}
 80009e6:	f7ff feed 	bl	80007c4 <rgb_i2cStart>
 80009ea:	2072      	movs	r0, #114	; 0x72
 80009ec:	f7ff ff08 	bl	8000800 <rgb_i2cWrite>
 80009f0:	20b4      	movs	r0, #180	; 0xb4
 80009f2:	f7ff ff05 	bl	8000800 <rgb_i2cWrite>
 80009f6:	f7ff fee5 	bl	80007c4 <rgb_i2cStart>
 80009fa:	2073      	movs	r0, #115	; 0x73
 80009fc:	f7ff ff00 	bl	8000800 <rgb_i2cWrite>
 8000a00:	2001      	movs	r0, #1
 8000a02:	4946      	ldr	r1, [pc, #280]	; (8000b1c <rgb_read+0x138>)
 8000a04:	f7ff ff1c 	bl	8000840 <rgb_i2cRead>
 8000a08:	2300      	movs	r3, #0
 8000a0a:	4d45      	ldr	r5, [pc, #276]	; (8000b20 <rgb_read+0x13c>)
 8000a0c:	4c43      	ldr	r4, [pc, #268]	; (8000b1c <rgb_read+0x138>)
 8000a0e:	eb05 0243 	add.w	r2, r5, r3, lsl #1
 8000a12:	5d19      	ldrb	r1, [r3, r4]
 8000a14:	3301      	adds	r3, #1
 8000a16:	2b09      	cmp	r3, #9
 8000a18:	86d1      	strh	r1, [r2, #54]	; 0x36
 8000a1a:	d1f6      	bne.n	8000a0a <rgb_read+0x26>
 8000a1c:	2001      	movs	r0, #1
 8000a1e:	4621      	mov	r1, r4
 8000a20:	f7ff ff0e 	bl	8000840 <rgb_i2cRead>
 8000a24:	f105 0236 	add.w	r2, r5, #54	; 0x36
 8000a28:	2300      	movs	r3, #0
 8000a2a:	8811      	ldrh	r1, [r2, #0]
 8000a2c:	5ce0      	ldrb	r0, [r4, r3]
 8000a2e:	3301      	adds	r3, #1
 8000a30:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 8000a34:	2b09      	cmp	r3, #9
 8000a36:	f822 1b02 	strh.w	r1, [r2], #2
 8000a3a:	d1f6      	bne.n	8000a2a <rgb_read+0x46>
 8000a3c:	2001      	movs	r0, #1
 8000a3e:	4937      	ldr	r1, [pc, #220]	; (8000b1c <rgb_read+0x138>)
 8000a40:	f7ff fefe 	bl	8000840 <rgb_i2cRead>
 8000a44:	2300      	movs	r3, #0
 8000a46:	5ce2      	ldrb	r2, [r4, r3]
 8000a48:	f825 2013 	strh.w	r2, [r5, r3, lsl #1]
 8000a4c:	3301      	adds	r3, #1
 8000a4e:	2b09      	cmp	r3, #9
 8000a50:	d1f9      	bne.n	8000a46 <rgb_read+0x62>
 8000a52:	2001      	movs	r0, #1
 8000a54:	4931      	ldr	r1, [pc, #196]	; (8000b1c <rgb_read+0x138>)
 8000a56:	f7ff fef3 	bl	8000840 <rgb_i2cRead>
 8000a5a:	4a32      	ldr	r2, [pc, #200]	; (8000b24 <rgb_read+0x140>)
 8000a5c:	2300      	movs	r3, #0
 8000a5e:	5ce0      	ldrb	r0, [r4, r3]
 8000a60:	8851      	ldrh	r1, [r2, #2]
 8000a62:	3301      	adds	r3, #1
 8000a64:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 8000a68:	2b09      	cmp	r3, #9
 8000a6a:	f822 1f02 	strh.w	r1, [r2, #2]!
 8000a6e:	d1f6      	bne.n	8000a5e <rgb_read+0x7a>
 8000a70:	2001      	movs	r0, #1
 8000a72:	492a      	ldr	r1, [pc, #168]	; (8000b1c <rgb_read+0x138>)
 8000a74:	f7ff fee4 	bl	8000840 <rgb_i2cRead>
 8000a78:	2300      	movs	r3, #0
 8000a7a:	eb05 0243 	add.w	r2, r5, r3, lsl #1
 8000a7e:	5ce1      	ldrb	r1, [r4, r3]
 8000a80:	3301      	adds	r3, #1
 8000a82:	2b09      	cmp	r3, #9
 8000a84:	8251      	strh	r1, [r2, #18]
 8000a86:	d1f8      	bne.n	8000a7a <rgb_read+0x96>
 8000a88:	2001      	movs	r0, #1
 8000a8a:	4924      	ldr	r1, [pc, #144]	; (8000b1c <rgb_read+0x138>)
 8000a8c:	f7ff fed8 	bl	8000840 <rgb_i2cRead>
 8000a90:	4a25      	ldr	r2, [pc, #148]	; (8000b28 <rgb_read+0x144>)
 8000a92:	2300      	movs	r3, #0
 8000a94:	8811      	ldrh	r1, [r2, #0]
 8000a96:	5ce0      	ldrb	r0, [r4, r3]
 8000a98:	3301      	adds	r3, #1
 8000a9a:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 8000a9e:	2b09      	cmp	r3, #9
 8000aa0:	f822 1b02 	strh.w	r1, [r2], #2
 8000aa4:	d1f6      	bne.n	8000a94 <rgb_read+0xb0>
 8000aa6:	2001      	movs	r0, #1
 8000aa8:	491c      	ldr	r1, [pc, #112]	; (8000b1c <rgb_read+0x138>)
 8000aaa:	f7ff fec9 	bl	8000840 <rgb_i2cRead>
 8000aae:	2300      	movs	r3, #0
 8000ab0:	eb05 0243 	add.w	r2, r5, r3, lsl #1
 8000ab4:	5ce1      	ldrb	r1, [r4, r3]
 8000ab6:	3301      	adds	r3, #1
 8000ab8:	2b09      	cmp	r3, #9
 8000aba:	8491      	strh	r1, [r2, #36]	; 0x24
 8000abc:	d1f8      	bne.n	8000ab0 <rgb_read+0xcc>
 8000abe:	2001      	movs	r0, #1
 8000ac0:	4916      	ldr	r1, [pc, #88]	; (8000b1c <rgb_read+0x138>)
 8000ac2:	f7ff febd 	bl	8000840 <rgb_i2cRead>
 8000ac6:	4a19      	ldr	r2, [pc, #100]	; (8000b2c <rgb_read+0x148>)
 8000ac8:	2300      	movs	r3, #0
 8000aca:	8811      	ldrh	r1, [r2, #0]
 8000acc:	5ce0      	ldrb	r0, [r4, r3]
 8000ace:	3301      	adds	r3, #1
 8000ad0:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 8000ad4:	2b09      	cmp	r3, #9
 8000ad6:	f822 1b02 	strh.w	r1, [r2], #2
 8000ada:	d1f6      	bne.n	8000aca <rgb_read+0xe6>
 8000adc:	2001      	movs	r0, #1
 8000ade:	490f      	ldr	r1, [pc, #60]	; (8000b1c <rgb_read+0x138>)
 8000ae0:	f7ff feae 	bl	8000840 <rgb_i2cRead>
 8000ae4:	2300      	movs	r3, #0
 8000ae6:	eb05 0243 	add.w	r2, r5, r3, lsl #1
 8000aea:	5ce1      	ldrb	r1, [r4, r3]
 8000aec:	3301      	adds	r3, #1
 8000aee:	2b09      	cmp	r3, #9
 8000af0:	f8a2 1048 	strh.w	r1, [r2, #72]	; 0x48
 8000af4:	d1f7      	bne.n	8000ae6 <rgb_read+0x102>
 8000af6:	2000      	movs	r0, #0
 8000af8:	4908      	ldr	r1, [pc, #32]	; (8000b1c <rgb_read+0x138>)
 8000afa:	f7ff fea1 	bl	8000840 <rgb_i2cRead>
 8000afe:	4a0c      	ldr	r2, [pc, #48]	; (8000b30 <rgb_read+0x14c>)
 8000b00:	2300      	movs	r3, #0
 8000b02:	8811      	ldrh	r1, [r2, #0]
 8000b04:	5ce0      	ldrb	r0, [r4, r3]
 8000b06:	3301      	adds	r3, #1
 8000b08:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 8000b0c:	2b09      	cmp	r3, #9
 8000b0e:	f822 1b02 	strh.w	r1, [r2], #2
 8000b12:	d1f6      	bne.n	8000b02 <rgb_read+0x11e>
 8000b14:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8000b18:	f7ff be63 	b.w	80007e2 <rgb_i2cStop>
 8000b1c:	20000b92 	.word	0x20000b92
 8000b20:	200004f4 	.word	0x200004f4
 8000b24:	200004f2 	.word	0x200004f2
 8000b28:	20000506 	.word	0x20000506
 8000b2c:	20000518 	.word	0x20000518
 8000b30:	2000053c 	.word	0x2000053c

08000b34 <TIM2_IRQHandler>:
 8000b34:	4b21      	ldr	r3, [pc, #132]	; (8000bbc <TIM2_IRQHandler+0x88>)
 8000b36:	4a22      	ldr	r2, [pc, #136]	; (8000bc0 <TIM2_IRQHandler+0x8c>)
 8000b38:	6819      	ldr	r1, [r3, #0]
 8000b3a:	2901      	cmp	r1, #1
 8000b3c:	b510      	push	{r4, lr}
 8000b3e:	d011      	beq.n	8000b64 <TIM2_IRQHandler+0x30>
 8000b40:	d306      	bcc.n	8000b50 <TIM2_IRQHandler+0x1c>
 8000b42:	2902      	cmp	r1, #2
 8000b44:	d113      	bne.n	8000b6e <TIM2_IRQHandler+0x3a>
 8000b46:	f44f 6180 	mov.w	r1, #1024	; 0x400
 8000b4a:	8511      	strh	r1, [r2, #40]	; 0x28
 8000b4c:	2204      	movs	r2, #4
 8000b4e:	e023      	b.n	8000b98 <TIM2_IRQHandler+0x64>
 8000b50:	f44f 7180 	mov.w	r1, #256	; 0x100
 8000b54:	8511      	strh	r1, [r2, #40]	; 0x28
 8000b56:	f44f 6180 	mov.w	r1, #1024	; 0x400
 8000b5a:	6191      	str	r1, [r2, #24]
 8000b5c:	2201      	movs	r2, #1
 8000b5e:	601a      	str	r2, [r3, #0]
 8000b60:	609a      	str	r2, [r3, #8]
 8000b62:	e023      	b.n	8000bac <TIM2_IRQHandler+0x78>
 8000b64:	f44f 7180 	mov.w	r1, #256	; 0x100
 8000b68:	6191      	str	r1, [r2, #24]
 8000b6a:	2202      	movs	r2, #2
 8000b6c:	e014      	b.n	8000b98 <TIM2_IRQHandler+0x64>
 8000b6e:	f011 0f01 	tst.w	r1, #1
 8000b72:	4814      	ldr	r0, [pc, #80]	; (8000bc4 <TIM2_IRQHandler+0x90>)
 8000b74:	f101 0401 	add.w	r4, r1, #1
 8000b78:	d010      	beq.n	8000b9c <TIM2_IRQHandler+0x68>
 8000b7a:	3904      	subs	r1, #4
 8000b7c:	f021 0101 	bic.w	r1, r1, #1
 8000b80:	6c00      	ldr	r0, [r0, #64]	; 0x40
 8000b82:	4419      	add	r1, r3
 8000b84:	f5b4 7f82 	cmp.w	r4, #260	; 0x104
 8000b88:	8288      	strh	r0, [r1, #20]
 8000b8a:	f44f 7180 	mov.w	r1, #256	; 0x100
 8000b8e:	8511      	strh	r1, [r2, #40]	; 0x28
 8000b90:	d201      	bcs.n	8000b96 <TIM2_IRQHandler+0x62>
 8000b92:	601c      	str	r4, [r3, #0]
 8000b94:	e00a      	b.n	8000bac <TIM2_IRQHandler+0x78>
 8000b96:	2200      	movs	r2, #0
 8000b98:	601a      	str	r2, [r3, #0]
 8000b9a:	e007      	b.n	8000bac <TIM2_IRQHandler+0x78>
 8000b9c:	f44f 7180 	mov.w	r1, #256	; 0x100
 8000ba0:	6191      	str	r1, [r2, #24]
 8000ba2:	601c      	str	r4, [r3, #0]
 8000ba4:	6883      	ldr	r3, [r0, #8]
 8000ba6:	f043 0304 	orr.w	r3, r3, #4
 8000baa:	6083      	str	r3, [r0, #8]
 8000bac:	f04f 4080 	mov.w	r0, #1073741824	; 0x40000000
 8000bb0:	2101      	movs	r1, #1
 8000bb2:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000bb6:	f000 bf82 	b.w	8001abe <TIM_ClearITPendingBit>
 8000bba:	bf00      	nop
 8000bbc:	2000057c 	.word	0x2000057c
 8000bc0:	48000400 	.word	0x48000400
 8000bc4:	50000500 	.word	0x50000500

08000bc8 <lsm9ds0_read>:
 8000bc8:	b538      	push	{r3, r4, r5, lr}
 8000bca:	2128      	movs	r1, #40	; 0x28
 8000bcc:	20d4      	movs	r0, #212	; 0xd4
 8000bce:	f001 f936 	bl	8001e3e <i2c_read_reg>
 8000bd2:	2129      	movs	r1, #41	; 0x29
 8000bd4:	4605      	mov	r5, r0
 8000bd6:	20d4      	movs	r0, #212	; 0xd4
 8000bd8:	f001 f931 	bl	8001e3e <i2c_read_reg>
 8000bdc:	4c38      	ldr	r4, [pc, #224]	; (8000cc0 <lsm9ds0_read+0xf8>)
 8000bde:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000be2:	81a0      	strh	r0, [r4, #12]
 8000be4:	212a      	movs	r1, #42	; 0x2a
 8000be6:	20d4      	movs	r0, #212	; 0xd4
 8000be8:	f001 f929 	bl	8001e3e <i2c_read_reg>
 8000bec:	212b      	movs	r1, #43	; 0x2b
 8000bee:	4605      	mov	r5, r0
 8000bf0:	20d4      	movs	r0, #212	; 0xd4
 8000bf2:	f001 f924 	bl	8001e3e <i2c_read_reg>
 8000bf6:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000bfa:	81e0      	strh	r0, [r4, #14]
 8000bfc:	212c      	movs	r1, #44	; 0x2c
 8000bfe:	20d4      	movs	r0, #212	; 0xd4
 8000c00:	f001 f91d 	bl	8001e3e <i2c_read_reg>
 8000c04:	212d      	movs	r1, #45	; 0x2d
 8000c06:	4605      	mov	r5, r0
 8000c08:	20d4      	movs	r0, #212	; 0xd4
 8000c0a:	f001 f918 	bl	8001e3e <i2c_read_reg>
 8000c0e:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000c12:	8220      	strh	r0, [r4, #16]
 8000c14:	2108      	movs	r1, #8
 8000c16:	203c      	movs	r0, #60	; 0x3c
 8000c18:	f001 f911 	bl	8001e3e <i2c_read_reg>
 8000c1c:	2109      	movs	r1, #9
 8000c1e:	4605      	mov	r5, r0
 8000c20:	203c      	movs	r0, #60	; 0x3c
 8000c22:	f001 f90c 	bl	8001e3e <i2c_read_reg>
 8000c26:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000c2a:	80e0      	strh	r0, [r4, #6]
 8000c2c:	210a      	movs	r1, #10
 8000c2e:	203c      	movs	r0, #60	; 0x3c
 8000c30:	f001 f905 	bl	8001e3e <i2c_read_reg>
 8000c34:	210b      	movs	r1, #11
 8000c36:	4605      	mov	r5, r0
 8000c38:	203c      	movs	r0, #60	; 0x3c
 8000c3a:	f001 f900 	bl	8001e3e <i2c_read_reg>
 8000c3e:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000c42:	8120      	strh	r0, [r4, #8]
 8000c44:	210c      	movs	r1, #12
 8000c46:	203c      	movs	r0, #60	; 0x3c
 8000c48:	f001 f8f9 	bl	8001e3e <i2c_read_reg>
 8000c4c:	210d      	movs	r1, #13
 8000c4e:	4605      	mov	r5, r0
 8000c50:	203c      	movs	r0, #60	; 0x3c
 8000c52:	f001 f8f4 	bl	8001e3e <i2c_read_reg>
 8000c56:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000c5a:	8160      	strh	r0, [r4, #10]
 8000c5c:	2128      	movs	r1, #40	; 0x28
 8000c5e:	203c      	movs	r0, #60	; 0x3c
 8000c60:	f001 f8ed 	bl	8001e3e <i2c_read_reg>
 8000c64:	2129      	movs	r1, #41	; 0x29
 8000c66:	4605      	mov	r5, r0
 8000c68:	203c      	movs	r0, #60	; 0x3c
 8000c6a:	f001 f8e8 	bl	8001e3e <i2c_read_reg>
 8000c6e:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000c72:	8020      	strh	r0, [r4, #0]
 8000c74:	212a      	movs	r1, #42	; 0x2a
 8000c76:	203c      	movs	r0, #60	; 0x3c
 8000c78:	f001 f8e1 	bl	8001e3e <i2c_read_reg>
 8000c7c:	212b      	movs	r1, #43	; 0x2b
 8000c7e:	4605      	mov	r5, r0
 8000c80:	203c      	movs	r0, #60	; 0x3c
 8000c82:	f001 f8dc 	bl	8001e3e <i2c_read_reg>
 8000c86:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000c8a:	8060      	strh	r0, [r4, #2]
 8000c8c:	212c      	movs	r1, #44	; 0x2c
 8000c8e:	203c      	movs	r0, #60	; 0x3c
 8000c90:	f001 f8d5 	bl	8001e3e <i2c_read_reg>
 8000c94:	212d      	movs	r1, #45	; 0x2d
 8000c96:	4605      	mov	r5, r0
 8000c98:	203c      	movs	r0, #60	; 0x3c
 8000c9a:	f001 f8d0 	bl	8001e3e <i2c_read_reg>
 8000c9e:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000ca2:	80a0      	strh	r0, [r4, #4]
 8000ca4:	2105      	movs	r1, #5
 8000ca6:	203c      	movs	r0, #60	; 0x3c
 8000ca8:	f001 f8c9 	bl	8001e3e <i2c_read_reg>
 8000cac:	2106      	movs	r1, #6
 8000cae:	4605      	mov	r5, r0
 8000cb0:	203c      	movs	r0, #60	; 0x3c
 8000cb2:	f001 f8c4 	bl	8001e3e <i2c_read_reg>
 8000cb6:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000cba:	8320      	strh	r0, [r4, #24]
 8000cbc:	bd38      	pop	{r3, r4, r5, pc}
 8000cbe:	bf00      	nop
 8000cc0:	200002d8 	.word	0x200002d8

08000cc4 <lsm9ds0_init>:
 8000cc4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8000cc8:	4d34      	ldr	r5, [pc, #208]	; (8000d9c <lsm9ds0_init+0xd8>)
 8000cca:	2400      	movs	r4, #0
 8000ccc:	20d4      	movs	r0, #212	; 0xd4
 8000cce:	210f      	movs	r1, #15
 8000cd0:	802c      	strh	r4, [r5, #0]
 8000cd2:	806c      	strh	r4, [r5, #2]
 8000cd4:	80ac      	strh	r4, [r5, #4]
 8000cd6:	80ec      	strh	r4, [r5, #6]
 8000cd8:	812c      	strh	r4, [r5, #8]
 8000cda:	816c      	strh	r4, [r5, #10]
 8000cdc:	81ac      	strh	r4, [r5, #12]
 8000cde:	81ec      	strh	r4, [r5, #14]
 8000ce0:	822c      	strh	r4, [r5, #16]
 8000ce2:	826c      	strh	r4, [r5, #18]
 8000ce4:	82ac      	strh	r4, [r5, #20]
 8000ce6:	82ec      	strh	r4, [r5, #22]
 8000ce8:	832c      	strh	r4, [r5, #24]
 8000cea:	f001 f8a8 	bl	8001e3e <i2c_read_reg>
 8000cee:	28d4      	cmp	r0, #212	; 0xd4
 8000cf0:	4606      	mov	r6, r0
 8000cf2:	d14e      	bne.n	8000d92 <lsm9ds0_init+0xce>
 8000cf4:	203c      	movs	r0, #60	; 0x3c
 8000cf6:	210f      	movs	r1, #15
 8000cf8:	f001 f8a1 	bl	8001e3e <i2c_read_reg>
 8000cfc:	2849      	cmp	r0, #73	; 0x49
 8000cfe:	bf18      	it	ne
 8000d00:	2602      	movne	r6, #2
 8000d02:	d147      	bne.n	8000d94 <lsm9ds0_init+0xd0>
 8000d04:	4630      	mov	r0, r6
 8000d06:	2120      	movs	r1, #32
 8000d08:	22ff      	movs	r2, #255	; 0xff
 8000d0a:	f001 f885 	bl	8001e18 <i2c_write_reg>
 8000d0e:	4630      	mov	r0, r6
 8000d10:	2123      	movs	r1, #35	; 0x23
 8000d12:	2218      	movs	r2, #24
 8000d14:	f001 f880 	bl	8001e18 <i2c_write_reg>
 8000d18:	203c      	movs	r0, #60	; 0x3c
 8000d1a:	211f      	movs	r1, #31
 8000d1c:	4622      	mov	r2, r4
 8000d1e:	f001 f87b 	bl	8001e18 <i2c_write_reg>
 8000d22:	203c      	movs	r0, #60	; 0x3c
 8000d24:	2120      	movs	r1, #32
 8000d26:	2267      	movs	r2, #103	; 0x67
 8000d28:	f001 f876 	bl	8001e18 <i2c_write_reg>
 8000d2c:	203c      	movs	r0, #60	; 0x3c
 8000d2e:	2121      	movs	r1, #33	; 0x21
 8000d30:	4622      	mov	r2, r4
 8000d32:	f001 f871 	bl	8001e18 <i2c_write_reg>
 8000d36:	203c      	movs	r0, #60	; 0x3c
 8000d38:	2124      	movs	r1, #36	; 0x24
 8000d3a:	22f4      	movs	r2, #244	; 0xf4
 8000d3c:	f001 f86c 	bl	8001e18 <i2c_write_reg>
 8000d40:	203c      	movs	r0, #60	; 0x3c
 8000d42:	2125      	movs	r1, #37	; 0x25
 8000d44:	4622      	mov	r2, r4
 8000d46:	f001 f867 	bl	8001e18 <i2c_write_reg>
 8000d4a:	203c      	movs	r0, #60	; 0x3c
 8000d4c:	2126      	movs	r1, #38	; 0x26
 8000d4e:	2280      	movs	r2, #128	; 0x80
 8000d50:	f001 f862 	bl	8001e18 <i2c_write_reg>
 8000d54:	f7ff ff38 	bl	8000bc8 <lsm9ds0_read>
 8000d58:	2664      	movs	r6, #100	; 0x64
 8000d5a:	4627      	mov	r7, r4
 8000d5c:	46a0      	mov	r8, r4
 8000d5e:	f7ff ff33 	bl	8000bc8 <lsm9ds0_read>
 8000d62:	f9b5 200c 	ldrsh.w	r2, [r5, #12]
 8000d66:	4b0d      	ldr	r3, [pc, #52]	; (8000d9c <lsm9ds0_init+0xd8>)
 8000d68:	4490      	add	r8, r2
 8000d6a:	f9b5 200e 	ldrsh.w	r2, [r5, #14]
 8000d6e:	4417      	add	r7, r2
 8000d70:	f9b5 2010 	ldrsh.w	r2, [r5, #16]
 8000d74:	3e01      	subs	r6, #1
 8000d76:	4414      	add	r4, r2
 8000d78:	d1f1      	bne.n	8000d5e <lsm9ds0_init+0x9a>
 8000d7a:	2264      	movs	r2, #100	; 0x64
 8000d7c:	fb98 f8f2 	sdiv	r8, r8, r2
 8000d80:	fb97 f7f2 	sdiv	r7, r7, r2
 8000d84:	fb94 f4f2 	sdiv	r4, r4, r2
 8000d88:	f8a3 8012 	strh.w	r8, [r3, #18]
 8000d8c:	829f      	strh	r7, [r3, #20]
 8000d8e:	82dc      	strh	r4, [r3, #22]
 8000d90:	e000      	b.n	8000d94 <lsm9ds0_init+0xd0>
 8000d92:	2601      	movs	r6, #1
 8000d94:	4630      	mov	r0, r6
 8000d96:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8000d9a:	bf00      	nop
 8000d9c:	200002d8 	.word	0x200002d8

08000da0 <line_sensor_read.part.0>:
 8000da0:	4968      	ldr	r1, [pc, #416]	; (8000f44 <line_sensor_read.part.0+0x1a4>)
 8000da2:	4a69      	ldr	r2, [pc, #420]	; (8000f48 <line_sensor_read.part.0+0x1a8>)
 8000da4:	6a4b      	ldr	r3, [r1, #36]	; 0x24
 8000da6:	f9b2 0058 	ldrsh.w	r0, [r2, #88]	; 0x58
 8000daa:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8000dae:	2407      	movs	r4, #7
 8000db0:	fb04 0303 	mla	r3, r4, r3, r0
 8000db4:	2008      	movs	r0, #8
 8000db6:	fb93 f3f0 	sdiv	r3, r3, r0
 8000dba:	624b      	str	r3, [r1, #36]	; 0x24
 8000dbc:	2300      	movs	r3, #0
 8000dbe:	4618      	mov	r0, r3
 8000dc0:	461c      	mov	r4, r3
 8000dc2:	461d      	mov	r5, r3
 8000dc4:	461e      	mov	r6, r3
 8000dc6:	4692      	mov	sl, r2
 8000dc8:	4f60      	ldr	r7, [pc, #384]	; (8000f4c <line_sensor_read.part.0+0x1ac>)
 8000dca:	f8b2 9036 	ldrh.w	r9, [r2, #54]	; 0x36
 8000dce:	5bdf      	ldrh	r7, [r3, r7]
 8000dd0:	ebc7 0909 	rsb	r9, r7, r9
 8000dd4:	fa1f f989 	uxth.w	r9, r9
 8000dd8:	4f5d      	ldr	r7, [pc, #372]	; (8000f50 <line_sensor_read.part.0+0x1b0>)
 8000dda:	f8a2 9036 	strh.w	r9, [r2, #54]	; 0x36
 8000dde:	f83a 8003 	ldrh.w	r8, [sl, r3]
 8000de2:	5bdf      	ldrh	r7, [r3, r7]
 8000de4:	ebc7 0808 	rsb	r8, r7, r8
 8000de8:	fa1f f888 	uxth.w	r8, r8
 8000dec:	f82a 8003 	strh.w	r8, [sl, r3]
 8000df0:	4f58      	ldr	r7, [pc, #352]	; (8000f54 <line_sensor_read.part.0+0x1b4>)
 8000df2:	f8b2 c012 	ldrh.w	ip, [r2, #18]
 8000df6:	5bdf      	ldrh	r7, [r3, r7]
 8000df8:	f8b2 b024 	ldrh.w	fp, [r2, #36]	; 0x24
 8000dfc:	ebc7 0c0c 	rsb	ip, r7, ip
 8000e00:	4f55      	ldr	r7, [pc, #340]	; (8000f58 <line_sensor_read.part.0+0x1b8>)
 8000e02:	5bdf      	ldrh	r7, [r3, r7]
 8000e04:	ebc7 070b 	rsb	r7, r7, fp
 8000e08:	fa1f fc8c 	uxth.w	ip, ip
 8000e0c:	b2bf      	uxth	r7, r7
 8000e0e:	3302      	adds	r3, #2
 8000e10:	444e      	add	r6, r9
 8000e12:	4445      	add	r5, r8
 8000e14:	4464      	add	r4, ip
 8000e16:	4438      	add	r0, r7
 8000e18:	2b10      	cmp	r3, #16
 8000e1a:	f8a2 c012 	strh.w	ip, [r2, #18]
 8000e1e:	8497      	strh	r7, [r2, #36]	; 0x24
 8000e20:	b2b6      	uxth	r6, r6
 8000e22:	b2ad      	uxth	r5, r5
 8000e24:	b2a4      	uxth	r4, r4
 8000e26:	b280      	uxth	r0, r0
 8000e28:	f102 0202 	add.w	r2, r2, #2
 8000e2c:	d1cc      	bne.n	8000dc8 <line_sensor_read.part.0+0x28>
 8000e2e:	2308      	movs	r3, #8
 8000e30:	b200      	sxth	r0, r0
 8000e32:	b236      	sxth	r6, r6
 8000e34:	b22d      	sxth	r5, r5
 8000e36:	b224      	sxth	r4, r4
 8000e38:	fb96 f6f3 	sdiv	r6, r6, r3
 8000e3c:	fb95 f5f3 	sdiv	r5, r5, r3
 8000e40:	fb94 f4f3 	sdiv	r4, r4, r3
 8000e44:	fb90 f3f3 	sdiv	r3, r0, r3
 8000e48:	fa1f fa83 	uxth.w	sl, r3
 8000e4c:	2200      	movs	r2, #0
 8000e4e:	4b3e      	ldr	r3, [pc, #248]	; (8000f48 <line_sensor_read.part.0+0x1a8>)
 8000e50:	b2b6      	uxth	r6, r6
 8000e52:	b2ad      	uxth	r5, r5
 8000e54:	b2a4      	uxth	r4, r4
 8000e56:	4610      	mov	r0, r2
 8000e58:	f8b3 9036 	ldrh.w	r9, [r3, #54]	; 0x36
 8000e5c:	881f      	ldrh	r7, [r3, #0]
 8000e5e:	f8b3 8012 	ldrh.w	r8, [r3, #18]
 8000e62:	f8b3 c024 	ldrh.w	ip, [r3, #36]	; 0x24
 8000e66:	ebc6 0909 	rsb	r9, r6, r9
 8000e6a:	1b7f      	subs	r7, r7, r5
 8000e6c:	fa1f f989 	uxth.w	r9, r9
 8000e70:	b2bf      	uxth	r7, r7
 8000e72:	ebc4 0808 	rsb	r8, r4, r8
 8000e76:	f8a3 9036 	strh.w	r9, [r3, #54]	; 0x36
 8000e7a:	801f      	strh	r7, [r3, #0]
 8000e7c:	fa1f f888 	uxth.w	r8, r8
 8000e80:	ebca 0c0c 	rsb	ip, sl, ip
 8000e84:	fa0f f989 	sxth.w	r9, r9
 8000e88:	b23f      	sxth	r7, r7
 8000e8a:	f8a3 8012 	strh.w	r8, [r3, #18]
 8000e8e:	fa1f fc8c 	uxth.w	ip, ip
 8000e92:	454f      	cmp	r7, r9
 8000e94:	bfa8      	it	ge
 8000e96:	464f      	movge	r7, r9
 8000e98:	fa0f f888 	sxth.w	r8, r8
 8000e9c:	f8a3 c024 	strh.w	ip, [r3, #36]	; 0x24
 8000ea0:	4547      	cmp	r7, r8
 8000ea2:	bfa8      	it	ge
 8000ea4:	4647      	movge	r7, r8
 8000ea6:	fa0f fc8c 	sxth.w	ip, ip
 8000eaa:	4567      	cmp	r7, ip
 8000eac:	bfa8      	it	ge
 8000eae:	4667      	movge	r7, ip
 8000eb0:	427f      	negs	r7, r7
 8000eb2:	eb01 0c40 	add.w	ip, r1, r0, lsl #1
 8000eb6:	b2bf      	uxth	r7, r7
 8000eb8:	f8ac 700a 	strh.w	r7, [ip, #10]
 8000ebc:	eb01 0c42 	add.w	ip, r1, r2, lsl #1
 8000ec0:	b23f      	sxth	r7, r7
 8000ec2:	f9bc c00a 	ldrsh.w	ip, [ip, #10]
 8000ec6:	45bc      	cmp	ip, r7
 8000ec8:	bfb8      	it	lt
 8000eca:	4602      	movlt	r2, r0
 8000ecc:	3001      	adds	r0, #1
 8000ece:	2808      	cmp	r0, #8
 8000ed0:	f103 0302 	add.w	r3, r3, #2
 8000ed4:	d1c0      	bne.n	8000e58 <line_sensor_read.part.0+0xb8>
 8000ed6:	2000      	movs	r0, #0
 8000ed8:	4603      	mov	r3, r0
 8000eda:	180c      	adds	r4, r1, r0
 8000edc:	3002      	adds	r0, #2
 8000ede:	f9b4 400a 	ldrsh.w	r4, [r4, #10]
 8000ee2:	2810      	cmp	r0, #16
 8000ee4:	4423      	add	r3, r4
 8000ee6:	d1f8      	bne.n	8000eda <line_sensor_read.part.0+0x13a>
 8000ee8:	2000      	movs	r0, #0
 8000eea:	4604      	mov	r4, r0
 8000eec:	4d1b      	ldr	r5, [pc, #108]	; (8000f5c <line_sensor_read.part.0+0x1bc>)
 8000eee:	5b46      	ldrh	r6, [r0, r5]
 8000ef0:	180d      	adds	r5, r1, r0
 8000ef2:	3002      	adds	r0, #2
 8000ef4:	896d      	ldrh	r5, [r5, #10]
 8000ef6:	2810      	cmp	r0, #16
 8000ef8:	fb16 4405 	smlabb	r4, r6, r5, r4
 8000efc:	d1f6      	bne.n	8000eec <line_sensor_read.part.0+0x14c>
 8000efe:	2bc8      	cmp	r3, #200	; 0xc8
 8000f00:	dd1b      	ble.n	8000f3a <line_sensor_read.part.0+0x19a>
 8000f02:	fb94 f3f3 	sdiv	r3, r4, r3
 8000f06:	f46f 748f 	mvn.w	r4, #286	; 0x11e
 8000f0a:	4423      	add	r3, r4
 8000f0c:	f5b3 7f96 	cmp.w	r3, #300	; 0x12c
 8000f10:	dc05      	bgt.n	8000f1e <line_sensor_read.part.0+0x17e>
 8000f12:	f5a0 709e 	sub.w	r0, r0, #316	; 0x13c
 8000f16:	4283      	cmp	r3, r0
 8000f18:	bfb8      	it	lt
 8000f1a:	4603      	movlt	r3, r0
 8000f1c:	e001      	b.n	8000f22 <line_sensor_read.part.0+0x182>
 8000f1e:	f44f 7396 	mov.w	r3, #300	; 0x12c
 8000f22:	b122      	cbz	r2, 8000f2e <line_sensor_read.part.0+0x18e>
 8000f24:	2a07      	cmp	r2, #7
 8000f26:	bf08      	it	eq
 8000f28:	f44f 7396 	moveq.w	r3, #300	; 0x12c
 8000f2c:	e000      	b.n	8000f30 <line_sensor_read.part.0+0x190>
 8000f2e:	4b0c      	ldr	r3, [pc, #48]	; (8000f60 <line_sensor_read.part.0+0x1c0>)
 8000f30:	620b      	str	r3, [r1, #32]
 8000f32:	2308      	movs	r3, #8
 8000f34:	770b      	strb	r3, [r1, #28]
 8000f36:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8000f3a:	4b02      	ldr	r3, [pc, #8]	; (8000f44 <line_sensor_read.part.0+0x1a4>)
 8000f3c:	2200      	movs	r2, #0
 8000f3e:	771a      	strb	r2, [r3, #28]
 8000f40:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8000f44:	20000550 	.word	0x20000550
 8000f48:	200004f4 	.word	0x200004f4
 8000f4c:	20000154 	.word	0x20000154
 8000f50:	20000184 	.word	0x20000184
 8000f54:	20000174 	.word	0x20000174
 8000f58:	20000164 	.word	0x20000164
 8000f5c:	20000000 	.word	0x20000000
 8000f60:	fffffed4 	.word	0xfffffed4

08000f64 <line_sensor_init>:
 8000f64:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8000f68:	2064      	movs	r0, #100	; 0x64
 8000f6a:	f000 fe33 	bl	8001bd4 <timer_delay_ms>
 8000f6e:	2400      	movs	r4, #0
 8000f70:	f7ff fcf8 	bl	8000964 <rgb_init>
 8000f74:	f7ff fd36 	bl	80009e4 <rgb_read>
 8000f78:	2072      	movs	r0, #114	; 0x72
 8000f7a:	2192      	movs	r1, #146	; 0x92
 8000f7c:	4a2c      	ldr	r2, [pc, #176]	; (8001030 <line_sensor_init+0xcc>)
 8000f7e:	f7ff fcd6 	bl	800092e <rgb_i2c_read_reg>
 8000f82:	4623      	mov	r3, r4
 8000f84:	4a2b      	ldr	r2, [pc, #172]	; (8001034 <line_sensor_init+0xd0>)
 8000f86:	1899      	adds	r1, r3, r2
 8000f88:	4616      	mov	r6, r2
 8000f8a:	7849      	ldrb	r1, [r1, #1]
 8000f8c:	2969      	cmp	r1, #105	; 0x69
 8000f8e:	d002      	beq.n	8000f96 <line_sensor_init+0x32>
 8000f90:	2201      	movs	r2, #1
 8000f92:	409a      	lsls	r2, r3
 8000f94:	4314      	orrs	r4, r2
 8000f96:	3301      	adds	r3, #1
 8000f98:	2b09      	cmp	r3, #9
 8000f9a:	d1f3      	bne.n	8000f84 <line_sensor_init+0x20>
 8000f9c:	2100      	movs	r1, #0
 8000f9e:	1875      	adds	r5, r6, r1
 8000fa0:	3102      	adds	r1, #2
 8000fa2:	2200      	movs	r2, #0
 8000fa4:	2910      	cmp	r1, #16
 8000fa6:	4b23      	ldr	r3, [pc, #140]	; (8001034 <line_sensor_init+0xd0>)
 8000fa8:	816a      	strh	r2, [r5, #10]
 8000faa:	d1f8      	bne.n	8000f9e <line_sensor_init+0x3a>
 8000fac:	701a      	strb	r2, [r3, #0]
 8000fae:	771a      	strb	r2, [r3, #28]
 8000fb0:	f883 2028 	strb.w	r2, [r3, #40]	; 0x28
 8000fb4:	621a      	str	r2, [r3, #32]
 8000fb6:	625a      	str	r2, [r3, #36]	; 0x24
 8000fb8:	f7ff fd14 	bl	80009e4 <rgb_read>
 8000fbc:	2520      	movs	r5, #32
 8000fbe:	f7ff fd11 	bl	80009e4 <rgb_read>
 8000fc2:	4a1d      	ldr	r2, [pc, #116]	; (8001038 <line_sensor_init+0xd4>)
 8000fc4:	2300      	movs	r3, #0
 8000fc6:	4694      	mov	ip, r2
 8000fc8:	4f1c      	ldr	r7, [pc, #112]	; (800103c <line_sensor_init+0xd8>)
 8000fca:	8ed0      	ldrh	r0, [r2, #54]	; 0x36
 8000fcc:	5bd9      	ldrh	r1, [r3, r7]
 8000fce:	4e1c      	ldr	r6, [pc, #112]	; (8001040 <line_sensor_init+0xdc>)
 8000fd0:	f8b2 8012 	ldrh.w	r8, [r2, #18]
 8000fd4:	f8b2 9024 	ldrh.w	r9, [r2, #36]	; 0x24
 8000fd8:	4401      	add	r1, r0
 8000fda:	53d9      	strh	r1, [r3, r7]
 8000fdc:	f83c 0003 	ldrh.w	r0, [ip, r3]
 8000fe0:	5b99      	ldrh	r1, [r3, r6]
 8000fe2:	4401      	add	r1, r0
 8000fe4:	4817      	ldr	r0, [pc, #92]	; (8001044 <line_sensor_init+0xe0>)
 8000fe6:	5399      	strh	r1, [r3, r6]
 8000fe8:	5a19      	ldrh	r1, [r3, r0]
 8000fea:	4441      	add	r1, r8
 8000fec:	5219      	strh	r1, [r3, r0]
 8000fee:	4916      	ldr	r1, [pc, #88]	; (8001048 <line_sensor_init+0xe4>)
 8000ff0:	f833 8001 	ldrh.w	r8, [r3, r1]
 8000ff4:	44c8      	add	r8, r9
 8000ff6:	f823 8001 	strh.w	r8, [r3, r1]
 8000ffa:	3302      	adds	r3, #2
 8000ffc:	2b10      	cmp	r3, #16
 8000ffe:	f102 0202 	add.w	r2, r2, #2
 8001002:	d1e1      	bne.n	8000fc8 <line_sensor_init+0x64>
 8001004:	3d01      	subs	r5, #1
 8001006:	d1da      	bne.n	8000fbe <line_sensor_init+0x5a>
 8001008:	462b      	mov	r3, r5
 800100a:	5efa      	ldrsh	r2, [r7, r3]
 800100c:	0952      	lsrs	r2, r2, #5
 800100e:	52fa      	strh	r2, [r7, r3]
 8001010:	5ef2      	ldrsh	r2, [r6, r3]
 8001012:	0952      	lsrs	r2, r2, #5
 8001014:	52f2      	strh	r2, [r6, r3]
 8001016:	5ec2      	ldrsh	r2, [r0, r3]
 8001018:	0952      	lsrs	r2, r2, #5
 800101a:	52c2      	strh	r2, [r0, r3]
 800101c:	5eca      	ldrsh	r2, [r1, r3]
 800101e:	0952      	lsrs	r2, r2, #5
 8001020:	52ca      	strh	r2, [r1, r3]
 8001022:	3302      	adds	r3, #2
 8001024:	2b10      	cmp	r3, #16
 8001026:	d1f0      	bne.n	800100a <line_sensor_init+0xa6>
 8001028:	4620      	mov	r0, r4
 800102a:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 800102e:	bf00      	nop
 8001030:	20000551 	.word	0x20000551
 8001034:	20000550 	.word	0x20000550
 8001038:	200004f4 	.word	0x200004f4
 800103c:	20000154 	.word	0x20000154
 8001040:	20000184 	.word	0x20000184
 8001044:	20000174 	.word	0x20000174
 8001048:	20000164 	.word	0x20000164

0800104c <line_sensor_read>:
 800104c:	b510      	push	{r4, lr}
 800104e:	4604      	mov	r4, r0
 8001050:	f7ff fcc8 	bl	80009e4 <rgb_read>
 8001054:	b91c      	cbnz	r4, 800105e <line_sensor_read+0x12>
 8001056:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800105a:	f7ff bea1 	b.w	8000da0 <line_sensor_read.part.0>
 800105e:	bd10      	pop	{r4, pc}

08001060 <pid_init>:
 8001060:	ee06 2a10 	vmov	s12, r2
 8001064:	ee05 3a90 	vmov	s11, r3
 8001068:	eddd 7a00 	vldr	s15, [sp]
 800106c:	ee76 6a25 	vadd.f32	s13, s12, s11
 8001070:	ed9d 7a01 	vldr	s14, [sp, #4]
 8001074:	ee76 6aa7 	vadd.f32	s13, s13, s15
 8001078:	ee77 5aa7 	vadd.f32	s11, s15, s15
 800107c:	ee76 6a87 	vadd.f32	s13, s13, s14
 8001080:	eeb1 6a46 	vneg.f32	s12, s12
 8001084:	edc0 6a04 	vstr	s13, [r0, #16]
 8001088:	eddf 6a0c 	vldr	s13, [pc, #48]	; 80010bc <pid_init+0x5c>
 800108c:	ee36 6a65 	vsub.f32	s12, s12, s11
 8001090:	ee67 6a26 	vmul.f32	s13, s14, s13
 8001094:	2200      	movs	r2, #0
 8001096:	ee36 6a66 	vsub.f32	s12, s12, s13
 800109a:	ee77 7aa6 	vadd.f32	s15, s15, s13
 800109e:	eeb1 7a47 	vneg.f32	s14, s14
 80010a2:	6002      	str	r2, [r0, #0]
 80010a4:	6042      	str	r2, [r0, #4]
 80010a6:	6082      	str	r2, [r0, #8]
 80010a8:	60c2      	str	r2, [r0, #12]
 80010aa:	ed80 6a05 	vstr	s12, [r0, #20]
 80010ae:	edc0 7a06 	vstr	s15, [r0, #24]
 80010b2:	ed80 7a07 	vstr	s14, [r0, #28]
 80010b6:	6202      	str	r2, [r0, #32]
 80010b8:	6241      	str	r1, [r0, #36]	; 0x24
 80010ba:	4770      	bx	lr
 80010bc:	40400000 	.word	0x40400000

080010c0 <pid_process>:
 80010c0:	edd0 7a08 	vldr	s15, [r0, #32]
 80010c4:	ee05 1a90 	vmov	s11, r1
 80010c8:	ed90 5a04 	vldr	s10, [r0, #16]
 80010cc:	ee45 7a85 	vmla.f32	s15, s11, s10
 80010d0:	ed90 6a00 	vldr	s12, [r0]
 80010d4:	edd0 5a05 	vldr	s11, [r0, #20]
 80010d8:	ee46 7a25 	vmla.f32	s15, s12, s11
 80010dc:	edd0 6a01 	vldr	s13, [r0, #4]
 80010e0:	ed80 6a01 	vstr	s12, [r0, #4]
 80010e4:	ed90 6a06 	vldr	s12, [r0, #24]
 80010e8:	ee46 7a86 	vmla.f32	s15, s13, s12
 80010ec:	ed90 7a02 	vldr	s14, [r0, #8]
 80010f0:	edc0 6a02 	vstr	s13, [r0, #8]
 80010f4:	edd0 6a07 	vldr	s13, [r0, #28]
 80010f8:	ee47 7a26 	vmla.f32	s15, s14, s13
 80010fc:	ed80 7a03 	vstr	s14, [r0, #12]
 8001100:	ed90 7a09 	vldr	s14, [r0, #36]	; 0x24
 8001104:	eef4 7ac7 	vcmpe.f32	s15, s14
 8001108:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800110c:	edc0 7a08 	vstr	s15, [r0, #32]
 8001110:	bfc8      	it	gt
 8001112:	ed80 7a08 	vstrgt	s14, [r0, #32]
 8001116:	edd0 7a08 	vldr	s15, [r0, #32]
 800111a:	eeb1 7a47 	vneg.f32	s14, s14
 800111e:	eef4 7ac7 	vcmpe.f32	s15, s14
 8001122:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001126:	bf48      	it	mi
 8001128:	ed80 7a08 	vstrmi	s14, [r0, #32]
 800112c:	6001      	str	r1, [r0, #0]
 800112e:	6a00      	ldr	r0, [r0, #32]
 8001130:	4770      	bx	lr

08001132 <m_abs>:
 8001132:	ee07 0a90 	vmov	s15, r0
 8001136:	eef5 7ac0 	vcmpe.f32	s15, #0.0
 800113a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800113e:	bf48      	it	mi
 8001140:	eef1 7a67 	vnegmi.f32	s15, s15
 8001144:	ee17 0a90 	vmov	r0, s15
 8001148:	4770      	bx	lr

0800114a <m_saturate>:
 800114a:	ee07 0a90 	vmov	s15, r0
 800114e:	ee06 1a90 	vmov	s13, r1
 8001152:	eef4 7a66 	vcmp.f32	s15, s13
 8001156:	ee07 2a10 	vmov	s14, r2
 800115a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800115e:	bf48      	it	mi
 8001160:	eef0 7a66 	vmovmi.f32	s15, s13
 8001164:	eef4 7a47 	vcmp.f32	s15, s14
 8001168:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800116c:	bfcc      	ite	gt
 800116e:	ee17 0a10 	vmovgt	r0, s14
 8001172:	ee17 0a90 	vmovle	r0, s15
 8001176:	4770      	bx	lr

08001178 <m_min>:
 8001178:	ee07 0a10 	vmov	s14, r0
 800117c:	ee07 1a90 	vmov	s15, r1
 8001180:	eeb4 7ae7 	vcmpe.f32	s14, s15
 8001184:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001188:	bf54      	ite	pl
 800118a:	ee17 0a90 	vmovpl	r0, s15
 800118e:	ee17 0a10 	vmovmi	r0, s14
 8001192:	4770      	bx	lr

08001194 <q_predictor_init>:
 8001194:	4b24      	ldr	r3, [pc, #144]	; (8001228 <q_predictor_init+0x94>)
 8001196:	2200      	movs	r2, #0
 8001198:	4619      	mov	r1, r3
 800119a:	b570      	push	{r4, r5, r6, lr}
 800119c:	4608      	mov	r0, r1
 800119e:	601a      	str	r2, [r3, #0]
 80011a0:	605a      	str	r2, [r3, #4]
 80011a2:	f103 0208 	add.w	r2, r3, #8
 80011a6:	3348      	adds	r3, #72	; 0x48
 80011a8:	2400      	movs	r4, #0
 80011aa:	f842 4b04 	str.w	r4, [r2], #4
 80011ae:	429a      	cmp	r2, r3
 80011b0:	d1fa      	bne.n	80011a8 <q_predictor_init+0x14>
 80011b2:	2200      	movs	r2, #0
 80011b4:	eb01 0442 	add.w	r4, r1, r2, lsl #1
 80011b8:	2300      	movs	r3, #0
 80011ba:	4e1c      	ldr	r6, [pc, #112]	; (800122c <q_predictor_init+0x98>)
 80011bc:	4416      	add	r6, r2
 80011be:	eddf 7a1c 	vldr	s15, [pc, #112]	; 8001230 <q_predictor_init+0x9c>
 80011c2:	5ef6      	ldrsh	r6, [r6, r3]
 80011c4:	ee07 6a10 	vmov	s14, r6
 80011c8:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 80011cc:	eb04 0543 	add.w	r5, r4, r3, lsl #1
 80011d0:	ee87 7a27 	vdiv.f32	s14, s14, s15
 80011d4:	3302      	adds	r3, #2
 80011d6:	2b20      	cmp	r3, #32
 80011d8:	ed85 7a12 	vstr	s14, [r5, #72]	; 0x48
 80011dc:	d1ed      	bne.n	80011ba <q_predictor_init+0x26>
 80011de:	3220      	adds	r2, #32
 80011e0:	f5b2 7f80 	cmp.w	r2, #256	; 0x100
 80011e4:	d1e6      	bne.n	80011b4 <q_predictor_init+0x20>
 80011e6:	2300      	movs	r3, #0
 80011e8:	4912      	ldr	r1, [pc, #72]	; (8001234 <q_predictor_init+0xa0>)
 80011ea:	5e59      	ldrsh	r1, [r3, r1]
 80011ec:	ee07 1a10 	vmov	s14, r1
 80011f0:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 80011f4:	eb00 0243 	add.w	r2, r0, r3, lsl #1
 80011f8:	ee87 7a27 	vdiv.f32	s14, s14, s15
 80011fc:	3302      	adds	r3, #2
 80011fe:	2b10      	cmp	r3, #16
 8001200:	ed82 7a92 	vstr	s14, [r2, #584]	; 0x248
 8001204:	d1f0      	bne.n	80011e8 <q_predictor_init+0x54>
 8001206:	2300      	movs	r3, #0
 8001208:	490b      	ldr	r1, [pc, #44]	; (8001238 <q_predictor_init+0xa4>)
 800120a:	5e59      	ldrsh	r1, [r3, r1]
 800120c:	ee07 1a10 	vmov	s14, r1
 8001210:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 8001214:	eb00 0243 	add.w	r2, r0, r3, lsl #1
 8001218:	ee87 7a27 	vdiv.f32	s14, s14, s15
 800121c:	3302      	adds	r3, #2
 800121e:	2b10      	cmp	r3, #16
 8001220:	ed82 7a9a 	vstr	s14, [r2, #616]	; 0x268
 8001224:	d1f0      	bne.n	8001208 <q_predictor_init+0x74>
 8001226:	bd70      	pop	{r4, r5, r6, pc}
 8001228:	20000b9c 	.word	0x20000b9c
 800122c:	20000020 	.word	0x20000020
 8001230:	447a0000 	.word	0x447a0000
 8001234:	20000010 	.word	0x20000010
 8001238:	20000194 	.word	0x20000194

0800123c <abort_error_>:
 800123c:	b570      	push	{r4, r5, r6, lr}
 800123e:	4605      	mov	r5, r0
 8001240:	460e      	mov	r6, r1
 8001242:	480f      	ldr	r0, [pc, #60]	; (8001280 <abort_error_+0x44>)
 8001244:	4629      	mov	r1, r5
 8001246:	4632      	mov	r2, r6
 8001248:	f7ff f94e 	bl	80004e8 <printf_>
 800124c:	2400      	movs	r4, #0
 800124e:	1ceb      	adds	r3, r5, #3
 8001250:	429c      	cmp	r4, r3
 8001252:	d20f      	bcs.n	8001274 <abort_error_+0x38>
 8001254:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001258:	f001 fa9e 	bl	8002798 <led_on>
 800125c:	2032      	movs	r0, #50	; 0x32
 800125e:	f000 fcb9 	bl	8001bd4 <timer_delay_ms>
 8001262:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001266:	f001 faa9 	bl	80027bc <led_off>
 800126a:	2064      	movs	r0, #100	; 0x64
 800126c:	f000 fcb2 	bl	8001bd4 <timer_delay_ms>
 8001270:	3401      	adds	r4, #1
 8001272:	e7ec      	b.n	800124e <abort_error_+0x12>
 8001274:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 8001278:	f000 fcac 	bl	8001bd4 <timer_delay_ms>
 800127c:	e7e1      	b.n	8001242 <abort_error_+0x6>
 800127e:	bf00      	nop
 8001280:	080028a1 	.word	0x080028a1

08001284 <line_follower_init>:
 8001284:	b507      	push	{r0, r1, r2, lr}
 8001286:	4b0a      	ldr	r3, [pc, #40]	; (80012b0 <line_follower_init+0x2c>)
 8001288:	4a0a      	ldr	r2, [pc, #40]	; (80012b4 <line_follower_init+0x30>)
 800128a:	480b      	ldr	r0, [pc, #44]	; (80012b8 <line_follower_init+0x34>)
 800128c:	6013      	str	r3, [r2, #0]
 800128e:	4b0b      	ldr	r3, [pc, #44]	; (80012bc <line_follower_init+0x38>)
 8001290:	490b      	ldr	r1, [pc, #44]	; (80012c0 <line_follower_init+0x3c>)
 8001292:	6053      	str	r3, [r2, #4]
 8001294:	2300      	movs	r3, #0
 8001296:	6093      	str	r3, [r2, #8]
 8001298:	4a0a      	ldr	r2, [pc, #40]	; (80012c4 <line_follower_init+0x40>)
 800129a:	9301      	str	r3, [sp, #4]
 800129c:	9200      	str	r2, [sp, #0]
 800129e:	4a0a      	ldr	r2, [pc, #40]	; (80012c8 <line_follower_init+0x44>)
 80012a0:	f7ff fede 	bl	8001060 <pid_init>
 80012a4:	b003      	add	sp, #12
 80012a6:	f85d eb04 	ldr.w	lr, [sp], #4
 80012aa:	f7ff bf73 	b.w	8001194 <q_predictor_init>
 80012ae:	bf00      	nop
 80012b0:	3ecccccd 	.word	0x3ecccccd
 80012b4:	20000e4c 	.word	0x20000e4c
 80012b8:	20000e24 	.word	0x20000e24
 80012bc:	3f4ccccd 	.word	0x3f4ccccd
 80012c0:	42c80000 	.word	0x42c80000
 80012c4:	4090f5c3 	.word	0x4090f5c3
 80012c8:	3ea6e979 	.word	0x3ea6e979

080012cc <line_follower_main>:
 80012cc:	b510      	push	{r4, lr}
 80012ce:	4b2d      	ldr	r3, [pc, #180]	; (8001384 <line_follower_main+0xb8>)
 80012d0:	4c2d      	ldr	r4, [pc, #180]	; (8001388 <line_follower_main+0xbc>)
 80012d2:	ed2d 8b04 	vpush	{d8-d9}
 80012d6:	ed93 8a08 	vldr	s16, [r3, #32]
 80012da:	eddf 7a2c 	vldr	s15, [pc, #176]	; 800138c <line_follower_main+0xc0>
 80012de:	eeb8 8ac8 	vcvt.f32.s32	s16, s16
 80012e2:	edd4 8a00 	vldr	s17, [r4]
 80012e6:	ee88 8a27 	vdiv.f32	s16, s16, s15
 80012ea:	eddf 7a29 	vldr	s15, [pc, #164]	; 8001390 <line_follower_main+0xc4>
 80012ee:	ee37 8ac8 	vsub.f32	s16, s15, s16
 80012f2:	ed9f 9a28 	vldr	s18, [pc, #160]	; 8001394 <line_follower_main+0xc8>
 80012f6:	ee18 0a10 	vmov	r0, s16
 80012fa:	f7ff ff1a 	bl	8001132 <m_abs>
 80012fe:	ee07 0a90 	vmov	s15, r0
 8001302:	ee39 7a67 	vsub.f32	s14, s18, s15
 8001306:	eddf 7a24 	vldr	s15, [pc, #144]	; 8001398 <line_follower_main+0xcc>
 800130a:	ee18 0a10 	vmov	r0, s16
 800130e:	ee47 8a27 	vmla.f32	s17, s14, s15
 8001312:	f7ff ff0e 	bl	8001132 <m_abs>
 8001316:	eddf 7a21 	vldr	s15, [pc, #132]	; 800139c <line_follower_main+0xd0>
 800131a:	ee07 0a10 	vmov	s14, r0
 800131e:	ee07 9a67 	vmls.f32	s18, s14, s15
 8001322:	ee18 0a90 	vmov	r0, s17
 8001326:	ee19 1a10 	vmov	r1, s18
 800132a:	f7ff ff25 	bl	8001178 <m_min>
 800132e:	6862      	ldr	r2, [r4, #4]
 8001330:	6020      	str	r0, [r4, #0]
 8001332:	f04f 517c 	mov.w	r1, #1056964608	; 0x3f000000
 8001336:	f7ff ff08 	bl	800114a <m_saturate>
 800133a:	ee18 1a10 	vmov	r1, s16
 800133e:	6020      	str	r0, [r4, #0]
 8001340:	4817      	ldr	r0, [pc, #92]	; (80013a0 <line_follower_main+0xd4>)
 8001342:	f7ff febd 	bl	80010c0 <pid_process>
 8001346:	edd4 6a00 	vldr	s13, [r4]
 800134a:	ee07 0a90 	vmov	s15, r0
 800134e:	ed9f 7a15 	vldr	s14, [pc, #84]	; 80013a4 <line_follower_main+0xd8>
 8001352:	ee36 6aa7 	vadd.f32	s12, s13, s15
 8001356:	ee76 7ae7 	vsub.f32	s15, s13, s15
 800135a:	ee26 6a07 	vmul.f32	s12, s12, s14
 800135e:	ee27 7a87 	vmul.f32	s14, s15, s14
 8001362:	ecbd 8b04 	vpop	{d8-d9}
 8001366:	eebd 6ac6 	vcvt.s32.f32	s12, s12
 800136a:	eebd 7ac7 	vcvt.s32.f32	s14, s14
 800136e:	60a0      	str	r0, [r4, #8]
 8001370:	ee17 1a10 	vmov	r1, s14
 8001374:	ee16 0a10 	vmov	r0, s12
 8001378:	b209      	sxth	r1, r1
 800137a:	b200      	sxth	r0, r0
 800137c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8001380:	f000 b9b6 	b.w	80016f0 <drv8834_run>
 8001384:	20000550 	.word	0x20000550
 8001388:	20000e4c 	.word	0x20000e4c
 800138c:	43960000 	.word	0x43960000
 8001390:	00000000 	.word	0x00000000
 8001394:	3f800000 	.word	0x3f800000
 8001398:	3ca3d70a 	.word	0x3ca3d70a
 800139c:	41000000 	.word	0x41000000
 80013a0:	20000e24 	.word	0x20000e24
 80013a4:	42c80000 	.word	0x42c80000

080013a8 <broken_line_init>:
 80013a8:	4770      	bx	lr
	...

080013ac <broken_line_main>:
 80013ac:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 80013b0:	2500      	movs	r5, #0
 80013b2:	462c      	mov	r4, r5
 80013b4:	462f      	mov	r7, r5
 80013b6:	46a8      	mov	r8, r5
 80013b8:	462e      	mov	r6, r5
 80013ba:	f8df 90f0 	ldr.w	r9, [pc, #240]	; 80014ac <broken_line_main+0x100>
 80013be:	f899 301c 	ldrb.w	r3, [r9, #28]
 80013c2:	2b08      	cmp	r3, #8
 80013c4:	d06c      	beq.n	80014a0 <broken_line_main+0xf4>
 80013c6:	2005      	movs	r0, #5
 80013c8:	f000 fc04 	bl	8001bd4 <timer_delay_ms>
 80013cc:	2f05      	cmp	r7, #5
 80013ce:	d861      	bhi.n	8001494 <broken_line_main+0xe8>
 80013d0:	e8df f007 	tbb	[pc, r7]
 80013d4:	38271503 	.word	0x38271503
 80013d8:	4d4a      	.short	0x4d4a
 80013da:	2c00      	cmp	r4, #0
 80013dc:	d145      	bne.n	800146a <broken_line_main+0xbe>
 80013de:	f8d9 3020 	ldr.w	r3, [r9, #32]
 80013e2:	2b00      	cmp	r3, #0
 80013e4:	f04f 0464 	mov.w	r4, #100	; 0x64
 80013e8:	f04f 0701 	mov.w	r7, #1
 80013ec:	bfd4      	ite	le
 80013ee:	f04f 0832 	movle.w	r8, #50	; 0x32
 80013f2:	f04f 0800 	movgt.w	r8, #0
 80013f6:	bfd4      	ite	le
 80013f8:	2600      	movle	r6, #0
 80013fa:	2632      	movgt	r6, #50	; 0x32
 80013fc:	e04a      	b.n	8001494 <broken_line_main+0xe8>
 80013fe:	bba4      	cbnz	r4, 800146a <broken_line_main+0xbe>
 8001400:	f8d9 3020 	ldr.w	r3, [r9, #32]
 8001404:	2b00      	cmp	r3, #0
 8001406:	f04f 0464 	mov.w	r4, #100	; 0x64
 800140a:	f04f 0702 	mov.w	r7, #2
 800140e:	bfd4      	ite	le
 8001410:	f06f 0831 	mvnle.w	r8, #49	; 0x31
 8001414:	f04f 0800 	movgt.w	r8, #0
 8001418:	bfd4      	ite	le
 800141a:	2600      	movle	r6, #0
 800141c:	f06f 0631 	mvngt.w	r6, #49	; 0x31
 8001420:	e038      	b.n	8001494 <broken_line_main+0xe8>
 8001422:	bb14      	cbnz	r4, 800146a <broken_line_main+0xbe>
 8001424:	f8d9 3020 	ldr.w	r3, [r9, #32]
 8001428:	2b00      	cmp	r3, #0
 800142a:	f04f 0464 	mov.w	r4, #100	; 0x64
 800142e:	f04f 0703 	mov.w	r7, #3
 8001432:	bfd4      	ite	le
 8001434:	f04f 0800 	movle.w	r8, #0
 8001438:	f04f 0832 	movgt.w	r8, #50	; 0x32
 800143c:	bfd4      	ite	le
 800143e:	2632      	movle	r6, #50	; 0x32
 8001440:	2600      	movgt	r6, #0
 8001442:	e027      	b.n	8001494 <broken_line_main+0xe8>
 8001444:	b98c      	cbnz	r4, 800146a <broken_line_main+0xbe>
 8001446:	f8d9 3020 	ldr.w	r3, [r9, #32]
 800144a:	2b00      	cmp	r3, #0
 800144c:	f04f 0464 	mov.w	r4, #100	; 0x64
 8001450:	f04f 0704 	mov.w	r7, #4
 8001454:	bfd4      	ite	le
 8001456:	f04f 0800 	movle.w	r8, #0
 800145a:	f06f 0831 	mvngt.w	r8, #49	; 0x31
 800145e:	bfd4      	ite	le
 8001460:	f06f 0631 	mvnle.w	r6, #49	; 0x31
 8001464:	2600      	movgt	r6, #0
 8001466:	e015      	b.n	8001494 <broken_line_main+0xe8>
 8001468:	b16c      	cbz	r4, 8001486 <broken_line_main+0xda>
 800146a:	3c01      	subs	r4, #1
 800146c:	e012      	b.n	8001494 <broken_line_main+0xe8>
 800146e:	b184      	cbz	r4, 8001492 <broken_line_main+0xe6>
 8001470:	f241 3387 	movw	r3, #4999	; 0x1387
 8001474:	429d      	cmp	r5, r3
 8001476:	bfd8      	it	le
 8001478:	3532      	addle	r5, #50	; 0x32
 800147a:	2664      	movs	r6, #100	; 0x64
 800147c:	fb95 f6f6 	sdiv	r6, r5, r6
 8001480:	3c01      	subs	r4, #1
 8001482:	46b0      	mov	r8, r6
 8001484:	e006      	b.n	8001494 <broken_line_main+0xe8>
 8001486:	4625      	mov	r5, r4
 8001488:	2705      	movs	r7, #5
 800148a:	2432      	movs	r4, #50	; 0x32
 800148c:	46a8      	mov	r8, r5
 800148e:	462e      	mov	r6, r5
 8001490:	e000      	b.n	8001494 <broken_line_main+0xe8>
 8001492:	4627      	mov	r7, r4
 8001494:	fa0f f088 	sxth.w	r0, r8
 8001498:	b231      	sxth	r1, r6
 800149a:	f000 f929 	bl	80016f0 <drv8834_run>
 800149e:	e78c      	b.n	80013ba <broken_line_main+0xe>
 80014a0:	2000      	movs	r0, #0
 80014a2:	4601      	mov	r1, r0
 80014a4:	e8bd 43f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 80014a8:	f000 b922 	b.w	80016f0 <drv8834_run>
 80014ac:	20000550 	.word	0x20000550

080014b0 <obstacle_go_forward>:
 80014b0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80014b2:	460f      	mov	r7, r1
 80014b4:	ed2d 8b04 	vpush	{d8-d9}
 80014b8:	4606      	mov	r6, r0
 80014ba:	b950      	cbnz	r0, 80014d2 <obstacle_go_forward+0x22>
 80014bc:	2000      	movs	r0, #0
 80014be:	4601      	mov	r1, r0
 80014c0:	f000 f916 	bl	80016f0 <drv8834_run>
 80014c4:	ecbd 8b04 	vpop	{d8-d9}
 80014c8:	2064      	movs	r0, #100	; 0x64
 80014ca:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 80014ce:	f000 bb81 	b.w	8001bd4 <timer_delay_ms>
 80014d2:	ed9f 8a21 	vldr	s16, [pc, #132]	; 8001558 <obstacle_go_forward+0xa8>
 80014d6:	2400      	movs	r4, #0
 80014d8:	eef0 7a48 	vmov.f32	s15, s16
 80014dc:	4625      	mov	r5, r4
 80014de:	eeb0 9a48 	vmov.f32	s18, s16
 80014e2:	42bd      	cmp	r5, r7
 80014e4:	d2ea      	bcs.n	80014bc <obstacle_go_forward+0xc>
 80014e6:	4b1d      	ldr	r3, [pc, #116]	; (800155c <obstacle_go_forward+0xac>)
 80014e8:	f9b3 3010 	ldrsh.w	r3, [r3, #16]
 80014ec:	441c      	add	r4, r3
 80014ee:	ee07 4a10 	vmov	s14, r4
 80014f2:	eef8 8ac7 	vcvt.f32.s32	s17, s14
 80014f6:	ed9f 7a1a 	vldr	s14, [pc, #104]	; 8001560 <obstacle_go_forward+0xb0>
 80014fa:	ee79 8a68 	vsub.f32	s17, s18, s17
 80014fe:	350a      	adds	r5, #10
 8001500:	ee78 7ae7 	vsub.f32	s15, s17, s15
 8001504:	ee67 7a87 	vmul.f32	s15, s15, s14
 8001508:	ed9f 7a16 	vldr	s14, [pc, #88]	; 8001564 <obstacle_go_forward+0xb4>
 800150c:	ee48 7a87 	vmla.f32	s15, s17, s14
 8001510:	ee07 6a10 	vmov	s14, r6
 8001514:	eef8 6a47 	vcvt.f32.u32	s13, s14
 8001518:	ed9f 7a13 	vldr	s14, [pc, #76]	; 8001568 <obstacle_go_forward+0xb8>
 800151c:	ee26 7a87 	vmul.f32	s14, s13, s14
 8001520:	eddf 6a12 	vldr	s13, [pc, #72]	; 800156c <obstacle_go_forward+0xbc>
 8001524:	ee08 7a26 	vmla.f32	s14, s16, s13
 8001528:	eeb0 8a47 	vmov.f32	s16, s14
 800152c:	ee37 7a67 	vsub.f32	s14, s14, s15
 8001530:	ee78 7a27 	vadd.f32	s15, s16, s15
 8001534:	eebd 7ac7 	vcvt.s32.f32	s14, s14
 8001538:	eefd 7ae7 	vcvt.s32.f32	s15, s15
 800153c:	ee17 0a10 	vmov	r0, s14
 8001540:	ee17 1a90 	vmov	r1, s15
 8001544:	b200      	sxth	r0, r0
 8001546:	b209      	sxth	r1, r1
 8001548:	f000 f8d2 	bl	80016f0 <drv8834_run>
 800154c:	200a      	movs	r0, #10
 800154e:	f000 fb41 	bl	8001bd4 <timer_delay_ms>
 8001552:	eef0 7a68 	vmov.f32	s15, s17
 8001556:	e7c4      	b.n	80014e2 <obstacle_go_forward+0x32>
 8001558:	00000000 	.word	0x00000000
 800155c:	200002d8 	.word	0x200002d8
 8001560:	3a83126f 	.word	0x3a83126f
 8001564:	399d4952 	.word	0x399d4952
 8001568:	3e4ccccc 	.word	0x3e4ccccc
 800156c:	3f4ccccd 	.word	0x3f4ccccd

08001570 <obstacle_init>:
 8001570:	4770      	bx	lr

08001572 <obstacle_main>:
 8001572:	2000      	movs	r0, #0
 8001574:	2164      	movs	r1, #100	; 0x64
 8001576:	f7ff bf9b 	b.w	80014b0 <obstacle_go_forward>
	...

0800157c <line_sensor_thread>:
 800157c:	b508      	push	{r3, lr}
 800157e:	f7ff fcf1 	bl	8000f64 <line_sensor_init>
 8001582:	4601      	mov	r1, r0
 8001584:	b120      	cbz	r0, 8001590 <line_sensor_thread+0x14>
 8001586:	4b08      	ldr	r3, [pc, #32]	; (80015a8 <line_sensor_thread+0x2c>)
 8001588:	2001      	movs	r0, #1
 800158a:	6018      	str	r0, [r3, #0]
 800158c:	f7ff fe56 	bl	800123c <abort_error_>
 8001590:	2000      	movs	r0, #0
 8001592:	2104      	movs	r1, #4
 8001594:	f000 fb2e 	bl	8001bf4 <event_timer_set_period>
 8001598:	2000      	movs	r0, #0
 800159a:	f000 fb41 	bl	8001c20 <event_timer_wait>
 800159e:	2000      	movs	r0, #0
 80015a0:	f7ff fd54 	bl	800104c <line_sensor_read>
 80015a4:	e7f8      	b.n	8001598 <line_sensor_thread+0x1c>
 80015a6:	bf00      	nop
 80015a8:	20000e58 	.word	0x20000e58

080015ac <i2c_sensor_thread>:
 80015ac:	b508      	push	{r3, lr}
 80015ae:	f7ff fb89 	bl	8000cc4 <lsm9ds0_init>
 80015b2:	4601      	mov	r1, r0
 80015b4:	b128      	cbz	r0, 80015c2 <i2c_sensor_thread+0x16>
 80015b6:	4b08      	ldr	r3, [pc, #32]	; (80015d8 <i2c_sensor_thread+0x2c>)
 80015b8:	2201      	movs	r2, #1
 80015ba:	2002      	movs	r0, #2
 80015bc:	601a      	str	r2, [r3, #0]
 80015be:	f7ff fe3d 	bl	800123c <abort_error_>
 80015c2:	2001      	movs	r0, #1
 80015c4:	210a      	movs	r1, #10
 80015c6:	f000 fb15 	bl	8001bf4 <event_timer_set_period>
 80015ca:	2001      	movs	r0, #1
 80015cc:	f000 fb28 	bl	8001c20 <event_timer_wait>
 80015d0:	f7ff fafa 	bl	8000bc8 <lsm9ds0_read>
 80015d4:	e7f9      	b.n	80015ca <i2c_sensor_thread+0x1e>
 80015d6:	bf00      	nop
 80015d8:	20000e58 	.word	0x20000e58

080015dc <line_follower>:
 80015dc:	b538      	push	{r3, r4, r5, lr}
 80015de:	f7ff fe51 	bl	8001284 <line_follower_init>
 80015e2:	2002      	movs	r0, #2
 80015e4:	2104      	movs	r1, #4
 80015e6:	f000 fb05 	bl	8001bf4 <event_timer_set_period>
 80015ea:	f000 fae5 	bl	8001bb8 <timer_get_time>
 80015ee:	f500 30c3 	add.w	r0, r0, #99840	; 0x18600
 80015f2:	f100 05a0 	add.w	r5, r0, #160	; 0xa0
 80015f6:	2400      	movs	r4, #0
 80015f8:	2002      	movs	r0, #2
 80015fa:	f000 fb11 	bl	8001c20 <event_timer_wait>
 80015fe:	4b14      	ldr	r3, [pc, #80]	; (8001650 <line_follower+0x74>)
 8001600:	6a5a      	ldr	r2, [r3, #36]	; 0x24
 8001602:	f5b2 7f48 	cmp.w	r2, #800	; 0x320
 8001606:	dd02      	ble.n	800160e <line_follower+0x32>
 8001608:	f7ff ffb3 	bl	8001572 <obstacle_main>
 800160c:	e007      	b.n	800161e <line_follower+0x42>
 800160e:	7f1b      	ldrb	r3, [r3, #28]
 8001610:	2b08      	cmp	r3, #8
 8001612:	d102      	bne.n	800161a <line_follower+0x3e>
 8001614:	f7ff fe5a 	bl	80012cc <line_follower_main>
 8001618:	e001      	b.n	800161e <line_follower+0x42>
 800161a:	f7ff fec7 	bl	80013ac <broken_line_main>
 800161e:	3401      	adds	r4, #1
 8001620:	2314      	movs	r3, #20
 8001622:	fbb4 f2f3 	udiv	r2, r4, r3
 8001626:	fb03 4312 	mls	r3, r3, r2, r4
 800162a:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 800162e:	b913      	cbnz	r3, 8001636 <line_follower+0x5a>
 8001630:	f001 f8b2 	bl	8002798 <led_on>
 8001634:	e001      	b.n	800163a <line_follower+0x5e>
 8001636:	f001 f8c1 	bl	80027bc <led_off>
 800163a:	f000 fabd 	bl	8001bb8 <timer_get_time>
 800163e:	4285      	cmp	r5, r0
 8001640:	d2da      	bcs.n	80015f8 <line_follower+0x1c>
 8001642:	2000      	movs	r0, #0
 8001644:	4601      	mov	r1, r0
 8001646:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 800164a:	f000 b851 	b.w	80016f0 <drv8834_run>
 800164e:	bf00      	nop
 8001650:	20000550 	.word	0x20000550

08001654 <main_thread>:
 8001654:	b510      	push	{r4, lr}
 8001656:	481f      	ldr	r0, [pc, #124]	; (80016d4 <main_thread+0x80>)
 8001658:	4c1f      	ldr	r4, [pc, #124]	; (80016d8 <main_thread+0x84>)
 800165a:	f7fe ff45 	bl	80004e8 <printf_>
 800165e:	f44f 7096 	mov.w	r0, #300	; 0x12c
 8001662:	f000 fab7 	bl	8001bd4 <timer_delay_ms>
 8001666:	2300      	movs	r3, #0
 8001668:	6023      	str	r3, [r4, #0]
 800166a:	491c      	ldr	r1, [pc, #112]	; (80016dc <main_thread+0x88>)
 800166c:	481c      	ldr	r0, [pc, #112]	; (80016e0 <main_thread+0x8c>)
 800166e:	f44f 7200 	mov.w	r2, #512	; 0x200
 8001672:	2306      	movs	r3, #6
 8001674:	f7fe fe0a 	bl	800028c <create_thread>
 8001678:	491a      	ldr	r1, [pc, #104]	; (80016e4 <main_thread+0x90>)
 800167a:	481b      	ldr	r0, [pc, #108]	; (80016e8 <main_thread+0x94>)
 800167c:	f44f 7200 	mov.w	r2, #512	; 0x200
 8001680:	2306      	movs	r3, #6
 8001682:	f7fe fe03 	bl	800028c <create_thread>
 8001686:	f7ff fe8f 	bl	80013a8 <broken_line_init>
 800168a:	f7ff ff71 	bl	8001570 <obstacle_init>
 800168e:	6823      	ldr	r3, [r4, #0]
 8001690:	b13b      	cbz	r3, 80016a2 <main_thread+0x4e>
 8001692:	4816      	ldr	r0, [pc, #88]	; (80016ec <main_thread+0x98>)
 8001694:	f7fe ff28 	bl	80004e8 <printf_>
 8001698:	f44f 60fa 	mov.w	r0, #2000	; 0x7d0
 800169c:	f000 fa9a 	bl	8001bd4 <timer_delay_ms>
 80016a0:	e7f7      	b.n	8001692 <main_thread+0x3e>
 80016a2:	f001 f89d 	bl	80027e0 <get_key>
 80016a6:	b128      	cbz	r0, 80016b4 <main_thread+0x60>
 80016a8:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 80016ac:	f000 fa92 	bl	8001bd4 <timer_delay_ms>
 80016b0:	f7ff ff94 	bl	80015dc <line_follower>
 80016b4:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 80016b8:	f001 f86e 	bl	8002798 <led_on>
 80016bc:	2064      	movs	r0, #100	; 0x64
 80016be:	f000 fa89 	bl	8001bd4 <timer_delay_ms>
 80016c2:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 80016c6:	f001 f879 	bl	80027bc <led_off>
 80016ca:	20c8      	movs	r0, #200	; 0xc8
 80016cc:	f000 fa82 	bl	8001bd4 <timer_delay_ms>
 80016d0:	e7dd      	b.n	800168e <main_thread+0x3a>
 80016d2:	bf00      	nop
 80016d4:	080028b3 	.word	0x080028b3
 80016d8:	20000e58 	.word	0x20000e58
 80016dc:	200002f4 	.word	0x200002f4
 80016e0:	0800157d 	.word	0x0800157d
 80016e4:	20000790 	.word	0x20000790
 80016e8:	080015ad 	.word	0x080015ad
 80016ec:	080028ee 	.word	0x080028ee

080016f0 <drv8834_run>:
 80016f0:	1e02      	subs	r2, r0, #0
 80016f2:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 80016f6:	dd07      	ble.n	8001708 <drv8834_run+0x18>
 80016f8:	8d18      	ldrh	r0, [r3, #40]	; 0x28
 80016fa:	ea6f 4040 	mvn.w	r0, r0, lsl #17
 80016fe:	ea6f 4050 	mvn.w	r0, r0, lsr #17
 8001702:	b280      	uxth	r0, r0
 8001704:	8518      	strh	r0, [r3, #40]	; 0x28
 8001706:	e005      	b.n	8001714 <drv8834_run+0x24>
 8001708:	6998      	ldr	r0, [r3, #24]
 800170a:	4252      	negs	r2, r2
 800170c:	f440 4000 	orr.w	r0, r0, #32768	; 0x8000
 8001710:	6198      	str	r0, [r3, #24]
 8001712:	b212      	sxth	r2, r2
 8001714:	2900      	cmp	r1, #0
 8001716:	4b0c      	ldr	r3, [pc, #48]	; (8001748 <drv8834_run+0x58>)
 8001718:	dd05      	ble.n	8001726 <drv8834_run+0x36>
 800171a:	8d18      	ldrh	r0, [r3, #40]	; 0x28
 800171c:	b280      	uxth	r0, r0
 800171e:	f040 0020 	orr.w	r0, r0, #32
 8001722:	8518      	strh	r0, [r3, #40]	; 0x28
 8001724:	e005      	b.n	8001732 <drv8834_run+0x42>
 8001726:	6998      	ldr	r0, [r3, #24]
 8001728:	4249      	negs	r1, r1
 800172a:	f040 0020 	orr.w	r0, r0, #32
 800172e:	6198      	str	r0, [r3, #24]
 8001730:	b209      	sxth	r1, r1
 8001732:	2964      	cmp	r1, #100	; 0x64
 8001734:	bfb4      	ite	lt
 8001736:	4608      	movlt	r0, r1
 8001738:	2064      	movge	r0, #100	; 0x64
 800173a:	2a64      	cmp	r2, #100	; 0x64
 800173c:	bfb4      	ite	lt
 800173e:	4611      	movlt	r1, r2
 8001740:	2164      	movge	r1, #100	; 0x64
 8001742:	f000 b843 	b.w	80017cc <pwm_set>
 8001746:	bf00      	nop
 8001748:	48000400 	.word	0x48000400

0800174c <drv8834_init>:
 800174c:	e92d 41f3 	stmdb	sp!, {r0, r1, r4, r5, r6, r7, r8, lr}
 8001750:	4f1d      	ldr	r7, [pc, #116]	; (80017c8 <drv8834_init+0x7c>)
 8001752:	2400      	movs	r4, #0
 8001754:	2601      	movs	r6, #1
 8001756:	2503      	movs	r5, #3
 8001758:	f04f 0810 	mov.w	r8, #16
 800175c:	4638      	mov	r0, r7
 800175e:	4669      	mov	r1, sp
 8001760:	f8cd 8000 	str.w	r8, [sp]
 8001764:	f88d 6004 	strb.w	r6, [sp, #4]
 8001768:	f88d 4006 	strb.w	r4, [sp, #6]
 800176c:	f88d 5005 	strb.w	r5, [sp, #5]
 8001770:	f88d 4007 	strb.w	r4, [sp, #7]
 8001774:	f000 ff5d 	bl	8002632 <GPIO_Init>
 8001778:	f8a7 8028 	strh.w	r8, [r7, #40]	; 0x28
 800177c:	2320      	movs	r3, #32
 800177e:	4638      	mov	r0, r7
 8001780:	4669      	mov	r1, sp
 8001782:	9300      	str	r3, [sp, #0]
 8001784:	f88d 6004 	strb.w	r6, [sp, #4]
 8001788:	f88d 4006 	strb.w	r4, [sp, #6]
 800178c:	f88d 5005 	strb.w	r5, [sp, #5]
 8001790:	f88d 4007 	strb.w	r4, [sp, #7]
 8001794:	f000 ff4d 	bl	8002632 <GPIO_Init>
 8001798:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 800179c:	4669      	mov	r1, sp
 800179e:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80017a2:	9300      	str	r3, [sp, #0]
 80017a4:	f88d 6004 	strb.w	r6, [sp, #4]
 80017a8:	f88d 4006 	strb.w	r4, [sp, #6]
 80017ac:	f88d 5005 	strb.w	r5, [sp, #5]
 80017b0:	f88d 4007 	strb.w	r4, [sp, #7]
 80017b4:	f000 ff3d 	bl	8002632 <GPIO_Init>
 80017b8:	4620      	mov	r0, r4
 80017ba:	4621      	mov	r1, r4
 80017bc:	f7ff ff98 	bl	80016f0 <drv8834_run>
 80017c0:	b002      	add	sp, #8
 80017c2:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80017c6:	bf00      	nop
 80017c8:	48000400 	.word	0x48000400

080017cc <pwm_set>:
 80017cc:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80017d0:	b086      	sub	sp, #24
 80017d2:	2370      	movs	r3, #112	; 0x70
 80017d4:	9301      	str	r3, [sp, #4]
 80017d6:	2301      	movs	r3, #1
 80017d8:	f8ad 3008 	strh.w	r3, [sp, #8]
 80017dc:	2304      	movs	r3, #4
 80017de:	f8ad 300a 	strh.w	r3, [sp, #10]
 80017e2:	4f17      	ldr	r7, [pc, #92]	; (8001840 <pwm_set+0x74>)
 80017e4:	4c17      	ldr	r4, [pc, #92]	; (8001844 <pwm_set+0x78>)
 80017e6:	2302      	movs	r3, #2
 80017e8:	f8ad 3010 	strh.w	r3, [sp, #16]
 80017ec:	2300      	movs	r3, #0
 80017ee:	f8ad 3012 	strh.w	r3, [sp, #18]
 80017f2:	f8ad 3016 	strh.w	r3, [sp, #22]
 80017f6:	683b      	ldr	r3, [r7, #0]
 80017f8:	f242 7610 	movw	r6, #10000	; 0x2710
 80017fc:	fbb3 f3f6 	udiv	r3, r3, r6
 8001800:	3b02      	subs	r3, #2
 8001802:	4358      	muls	r0, r3
 8001804:	2564      	movs	r5, #100	; 0x64
 8001806:	fbb0 f3f5 	udiv	r3, r0, r5
 800180a:	f44f 7280 	mov.w	r2, #256	; 0x100
 800180e:	4620      	mov	r0, r4
 8001810:	4688      	mov	r8, r1
 8001812:	a901      	add	r1, sp, #4
 8001814:	f8ad 2014 	strh.w	r2, [sp, #20]
 8001818:	9303      	str	r3, [sp, #12]
 800181a:	f000 f8c1 	bl	80019a0 <TIM_OC1Init>
 800181e:	683b      	ldr	r3, [r7, #0]
 8001820:	fbb3 f6f6 	udiv	r6, r3, r6
 8001824:	3e02      	subs	r6, #2
 8001826:	fb06 f808 	mul.w	r8, r6, r8
 800182a:	fbb8 f5f5 	udiv	r5, r8, r5
 800182e:	4620      	mov	r0, r4
 8001830:	a901      	add	r1, sp, #4
 8001832:	9503      	str	r5, [sp, #12]
 8001834:	f000 f8fa 	bl	8001a2c <TIM_OC2Init>
 8001838:	b006      	add	sp, #24
 800183a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800183e:	bf00      	nop
 8001840:	20000120 	.word	0x20000120
 8001844:	40012c00 	.word	0x40012c00

08001848 <pwm_init>:
 8001848:	b530      	push	{r4, r5, lr}
 800184a:	f44f 6000 	mov.w	r0, #2048	; 0x800
 800184e:	b087      	sub	sp, #28
 8001850:	2101      	movs	r1, #1
 8001852:	f000 fec1 	bl	80025d8 <RCC_APB2PeriphClockCmd>
 8001856:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 800185a:	2101      	movs	r1, #1
 800185c:	f000 feae 	bl	80025bc <RCC_AHBPeriphClockCmd>
 8001860:	4c1d      	ldr	r4, [pc, #116]	; (80018d8 <pwm_init+0x90>)
 8001862:	4d1e      	ldr	r5, [pc, #120]	; (80018dc <pwm_init+0x94>)
 8001864:	f44f 43c0 	mov.w	r3, #24576	; 0x6000
 8001868:	9301      	str	r3, [sp, #4]
 800186a:	2302      	movs	r3, #2
 800186c:	f88d 3008 	strb.w	r3, [sp, #8]
 8001870:	4620      	mov	r0, r4
 8001872:	2303      	movs	r3, #3
 8001874:	a901      	add	r1, sp, #4
 8001876:	f88d 3009 	strb.w	r3, [sp, #9]
 800187a:	f000 feda 	bl	8002632 <GPIO_Init>
 800187e:	4620      	mov	r0, r4
 8001880:	210d      	movs	r1, #13
 8001882:	2206      	movs	r2, #6
 8001884:	f000 ff23 	bl	80026ce <GPIO_PinAFConfig>
 8001888:	4620      	mov	r0, r4
 800188a:	210e      	movs	r1, #14
 800188c:	2206      	movs	r2, #6
 800188e:	f000 ff1e 	bl	80026ce <GPIO_PinAFConfig>
 8001892:	4b13      	ldr	r3, [pc, #76]	; (80018e0 <pwm_init+0x98>)
 8001894:	681a      	ldr	r2, [r3, #0]
 8001896:	f242 7310 	movw	r3, #10000	; 0x2710
 800189a:	fbb2 f3f3 	udiv	r3, r2, r3
 800189e:	2400      	movs	r4, #0
 80018a0:	3b01      	subs	r3, #1
 80018a2:	4628      	mov	r0, r5
 80018a4:	a903      	add	r1, sp, #12
 80018a6:	9304      	str	r3, [sp, #16]
 80018a8:	f8ad 400c 	strh.w	r4, [sp, #12]
 80018ac:	f8ad 400e 	strh.w	r4, [sp, #14]
 80018b0:	f8ad 4014 	strh.w	r4, [sp, #20]
 80018b4:	f8ad 4016 	strh.w	r4, [sp, #22]
 80018b8:	f000 f814 	bl	80018e4 <TIM_TimeBaseInit>
 80018bc:	4620      	mov	r0, r4
 80018be:	4621      	mov	r1, r4
 80018c0:	f7ff ff84 	bl	80017cc <pwm_set>
 80018c4:	4628      	mov	r0, r5
 80018c6:	2101      	movs	r1, #1
 80018c8:	f000 f85c 	bl	8001984 <TIM_Cmd>
 80018cc:	4628      	mov	r0, r5
 80018ce:	2101      	movs	r1, #1
 80018d0:	f000 f8ea 	bl	8001aa8 <TIM_CtrlPWMOutputs>
 80018d4:	b007      	add	sp, #28
 80018d6:	bd30      	pop	{r4, r5, pc}
 80018d8:	48000400 	.word	0x48000400
 80018dc:	40012c00 	.word	0x40012c00
 80018e0:	20000120 	.word	0x20000120

080018e4 <TIM_TimeBaseInit>:
 80018e4:	bf00      	nop
 80018e6:	bf00      	nop
 80018e8:	bf00      	nop
 80018ea:	4a24      	ldr	r2, [pc, #144]	; (800197c <TIM_TimeBaseInit+0x98>)
 80018ec:	8803      	ldrh	r3, [r0, #0]
 80018ee:	4290      	cmp	r0, r2
 80018f0:	b29b      	uxth	r3, r3
 80018f2:	d012      	beq.n	800191a <TIM_TimeBaseInit+0x36>
 80018f4:	f502 6200 	add.w	r2, r2, #2048	; 0x800
 80018f8:	4290      	cmp	r0, r2
 80018fa:	d00e      	beq.n	800191a <TIM_TimeBaseInit+0x36>
 80018fc:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 8001900:	d00b      	beq.n	800191a <TIM_TimeBaseInit+0x36>
 8001902:	f5a2 3298 	sub.w	r2, r2, #77824	; 0x13000
 8001906:	4290      	cmp	r0, r2
 8001908:	d007      	beq.n	800191a <TIM_TimeBaseInit+0x36>
 800190a:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 800190e:	4290      	cmp	r0, r2
 8001910:	d003      	beq.n	800191a <TIM_TimeBaseInit+0x36>
 8001912:	f502 32a4 	add.w	r2, r2, #83968	; 0x14800
 8001916:	4290      	cmp	r0, r2
 8001918:	d103      	bne.n	8001922 <TIM_TimeBaseInit+0x3e>
 800191a:	884a      	ldrh	r2, [r1, #2]
 800191c:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 8001920:	4313      	orrs	r3, r2
 8001922:	4a17      	ldr	r2, [pc, #92]	; (8001980 <TIM_TimeBaseInit+0x9c>)
 8001924:	4290      	cmp	r0, r2
 8001926:	d008      	beq.n	800193a <TIM_TimeBaseInit+0x56>
 8001928:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 800192c:	4290      	cmp	r0, r2
 800192e:	d004      	beq.n	800193a <TIM_TimeBaseInit+0x56>
 8001930:	f423 7340 	bic.w	r3, r3, #768	; 0x300
 8001934:	890a      	ldrh	r2, [r1, #8]
 8001936:	b29b      	uxth	r3, r3
 8001938:	4313      	orrs	r3, r2
 800193a:	8003      	strh	r3, [r0, #0]
 800193c:	684b      	ldr	r3, [r1, #4]
 800193e:	62c3      	str	r3, [r0, #44]	; 0x2c
 8001940:	880b      	ldrh	r3, [r1, #0]
 8001942:	8503      	strh	r3, [r0, #40]	; 0x28
 8001944:	4b0d      	ldr	r3, [pc, #52]	; (800197c <TIM_TimeBaseInit+0x98>)
 8001946:	4298      	cmp	r0, r3
 8001948:	d013      	beq.n	8001972 <TIM_TimeBaseInit+0x8e>
 800194a:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 800194e:	4298      	cmp	r0, r3
 8001950:	d00f      	beq.n	8001972 <TIM_TimeBaseInit+0x8e>
 8001952:	f503 6340 	add.w	r3, r3, #3072	; 0xc00
 8001956:	4298      	cmp	r0, r3
 8001958:	d00b      	beq.n	8001972 <TIM_TimeBaseInit+0x8e>
 800195a:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 800195e:	4298      	cmp	r0, r3
 8001960:	d007      	beq.n	8001972 <TIM_TimeBaseInit+0x8e>
 8001962:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 8001966:	4298      	cmp	r0, r3
 8001968:	d003      	beq.n	8001972 <TIM_TimeBaseInit+0x8e>
 800196a:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 800196e:	4298      	cmp	r0, r3
 8001970:	d101      	bne.n	8001976 <TIM_TimeBaseInit+0x92>
 8001972:	894b      	ldrh	r3, [r1, #10]
 8001974:	8603      	strh	r3, [r0, #48]	; 0x30
 8001976:	2301      	movs	r3, #1
 8001978:	6143      	str	r3, [r0, #20]
 800197a:	4770      	bx	lr
 800197c:	40012c00 	.word	0x40012c00
 8001980:	40001000 	.word	0x40001000

08001984 <TIM_Cmd>:
 8001984:	bf00      	nop
 8001986:	bf00      	nop
 8001988:	8803      	ldrh	r3, [r0, #0]
 800198a:	b119      	cbz	r1, 8001994 <TIM_Cmd+0x10>
 800198c:	b29b      	uxth	r3, r3
 800198e:	f043 0301 	orr.w	r3, r3, #1
 8001992:	e003      	b.n	800199c <TIM_Cmd+0x18>
 8001994:	f023 0301 	bic.w	r3, r3, #1
 8001998:	041b      	lsls	r3, r3, #16
 800199a:	0c1b      	lsrs	r3, r3, #16
 800199c:	8003      	strh	r3, [r0, #0]
 800199e:	4770      	bx	lr

080019a0 <TIM_OC1Init>:
 80019a0:	b530      	push	{r4, r5, lr}
 80019a2:	bf00      	nop
 80019a4:	bf00      	nop
 80019a6:	bf00      	nop
 80019a8:	bf00      	nop
 80019aa:	6a03      	ldr	r3, [r0, #32]
 80019ac:	680c      	ldr	r4, [r1, #0]
 80019ae:	f023 0301 	bic.w	r3, r3, #1
 80019b2:	6203      	str	r3, [r0, #32]
 80019b4:	6a03      	ldr	r3, [r0, #32]
 80019b6:	6842      	ldr	r2, [r0, #4]
 80019b8:	6985      	ldr	r5, [r0, #24]
 80019ba:	f425 3580 	bic.w	r5, r5, #65536	; 0x10000
 80019be:	f025 0573 	bic.w	r5, r5, #115	; 0x73
 80019c2:	432c      	orrs	r4, r5
 80019c4:	898d      	ldrh	r5, [r1, #12]
 80019c6:	f023 0302 	bic.w	r3, r3, #2
 80019ca:	432b      	orrs	r3, r5
 80019cc:	888d      	ldrh	r5, [r1, #4]
 80019ce:	432b      	orrs	r3, r5
 80019d0:	4d15      	ldr	r5, [pc, #84]	; (8001a28 <TIM_OC1Init+0x88>)
 80019d2:	42a8      	cmp	r0, r5
 80019d4:	d00f      	beq.n	80019f6 <TIM_OC1Init+0x56>
 80019d6:	f505 6500 	add.w	r5, r5, #2048	; 0x800
 80019da:	42a8      	cmp	r0, r5
 80019dc:	d00b      	beq.n	80019f6 <TIM_OC1Init+0x56>
 80019de:	f505 6540 	add.w	r5, r5, #3072	; 0xc00
 80019e2:	42a8      	cmp	r0, r5
 80019e4:	d007      	beq.n	80019f6 <TIM_OC1Init+0x56>
 80019e6:	f505 6580 	add.w	r5, r5, #1024	; 0x400
 80019ea:	42a8      	cmp	r0, r5
 80019ec:	d003      	beq.n	80019f6 <TIM_OC1Init+0x56>
 80019ee:	f505 6580 	add.w	r5, r5, #1024	; 0x400
 80019f2:	42a8      	cmp	r0, r5
 80019f4:	d111      	bne.n	8001a1a <TIM_OC1Init+0x7a>
 80019f6:	bf00      	nop
 80019f8:	bf00      	nop
 80019fa:	bf00      	nop
 80019fc:	bf00      	nop
 80019fe:	89cd      	ldrh	r5, [r1, #14]
 8001a00:	f023 0308 	bic.w	r3, r3, #8
 8001a04:	432b      	orrs	r3, r5
 8001a06:	88cd      	ldrh	r5, [r1, #6]
 8001a08:	f023 0304 	bic.w	r3, r3, #4
 8001a0c:	432b      	orrs	r3, r5
 8001a0e:	8a0d      	ldrh	r5, [r1, #16]
 8001a10:	f422 7240 	bic.w	r2, r2, #768	; 0x300
 8001a14:	432a      	orrs	r2, r5
 8001a16:	8a4d      	ldrh	r5, [r1, #18]
 8001a18:	432a      	orrs	r2, r5
 8001a1a:	6042      	str	r2, [r0, #4]
 8001a1c:	688a      	ldr	r2, [r1, #8]
 8001a1e:	6184      	str	r4, [r0, #24]
 8001a20:	6342      	str	r2, [r0, #52]	; 0x34
 8001a22:	6203      	str	r3, [r0, #32]
 8001a24:	bd30      	pop	{r4, r5, pc}
 8001a26:	bf00      	nop
 8001a28:	40012c00 	.word	0x40012c00

08001a2c <TIM_OC2Init>:
 8001a2c:	b570      	push	{r4, r5, r6, lr}
 8001a2e:	bf00      	nop
 8001a30:	bf00      	nop
 8001a32:	bf00      	nop
 8001a34:	bf00      	nop
 8001a36:	6a03      	ldr	r3, [r0, #32]
 8001a38:	680c      	ldr	r4, [r1, #0]
 8001a3a:	898e      	ldrh	r6, [r1, #12]
 8001a3c:	f023 0310 	bic.w	r3, r3, #16
 8001a40:	6203      	str	r3, [r0, #32]
 8001a42:	6a05      	ldr	r5, [r0, #32]
 8001a44:	6842      	ldr	r2, [r0, #4]
 8001a46:	6983      	ldr	r3, [r0, #24]
 8001a48:	f023 7380 	bic.w	r3, r3, #16777216	; 0x1000000
 8001a4c:	f423 43e6 	bic.w	r3, r3, #29440	; 0x7300
 8001a50:	ea43 2404 	orr.w	r4, r3, r4, lsl #8
 8001a54:	888b      	ldrh	r3, [r1, #4]
 8001a56:	f025 0520 	bic.w	r5, r5, #32
 8001a5a:	4333      	orrs	r3, r6
 8001a5c:	ea45 1303 	orr.w	r3, r5, r3, lsl #4
 8001a60:	4d10      	ldr	r5, [pc, #64]	; (8001aa4 <TIM_OC2Init+0x78>)
 8001a62:	42a8      	cmp	r0, r5
 8001a64:	d003      	beq.n	8001a6e <TIM_OC2Init+0x42>
 8001a66:	f505 6500 	add.w	r5, r5, #2048	; 0x800
 8001a6a:	42a8      	cmp	r0, r5
 8001a6c:	d114      	bne.n	8001a98 <TIM_OC2Init+0x6c>
 8001a6e:	bf00      	nop
 8001a70:	bf00      	nop
 8001a72:	bf00      	nop
 8001a74:	bf00      	nop
 8001a76:	89cd      	ldrh	r5, [r1, #14]
 8001a78:	8a0e      	ldrh	r6, [r1, #16]
 8001a7a:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8001a7e:	ea43 1305 	orr.w	r3, r3, r5, lsl #4
 8001a82:	88cd      	ldrh	r5, [r1, #6]
 8001a84:	f023 0340 	bic.w	r3, r3, #64	; 0x40
 8001a88:	ea43 1305 	orr.w	r3, r3, r5, lsl #4
 8001a8c:	8a4d      	ldrh	r5, [r1, #18]
 8001a8e:	f422 6240 	bic.w	r2, r2, #3072	; 0xc00
 8001a92:	4335      	orrs	r5, r6
 8001a94:	ea42 0285 	orr.w	r2, r2, r5, lsl #2
 8001a98:	6042      	str	r2, [r0, #4]
 8001a9a:	688a      	ldr	r2, [r1, #8]
 8001a9c:	6184      	str	r4, [r0, #24]
 8001a9e:	6382      	str	r2, [r0, #56]	; 0x38
 8001aa0:	6203      	str	r3, [r0, #32]
 8001aa2:	bd70      	pop	{r4, r5, r6, pc}
 8001aa4:	40012c00 	.word	0x40012c00

08001aa8 <TIM_CtrlPWMOutputs>:
 8001aa8:	bf00      	nop
 8001aaa:	bf00      	nop
 8001aac:	6c43      	ldr	r3, [r0, #68]	; 0x44
 8001aae:	b111      	cbz	r1, 8001ab6 <TIM_CtrlPWMOutputs+0xe>
 8001ab0:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
 8001ab4:	e001      	b.n	8001aba <TIM_CtrlPWMOutputs+0x12>
 8001ab6:	f3c3 030e 	ubfx	r3, r3, #0, #15
 8001aba:	6443      	str	r3, [r0, #68]	; 0x44
 8001abc:	4770      	bx	lr

08001abe <TIM_ClearITPendingBit>:
 8001abe:	bf00      	nop
 8001ac0:	43c9      	mvns	r1, r1
 8001ac2:	b289      	uxth	r1, r1
 8001ac4:	6101      	str	r1, [r0, #16]
 8001ac6:	4770      	bx	lr

08001ac8 <timer_init>:
 8001ac8:	b530      	push	{r4, r5, lr}
 8001aca:	2300      	movs	r3, #0
 8001acc:	b085      	sub	sp, #20
 8001ace:	491f      	ldr	r1, [pc, #124]	; (8001b4c <timer_init+0x84>)
 8001ad0:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8001ad4:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 8001ad8:	491d      	ldr	r1, [pc, #116]	; (8001b50 <timer_init+0x88>)
 8001ada:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 8001ade:	4a1d      	ldr	r2, [pc, #116]	; (8001b54 <timer_init+0x8c>)
 8001ae0:	2400      	movs	r4, #0
 8001ae2:	f822 4013 	strh.w	r4, [r2, r3, lsl #1]
 8001ae6:	3301      	adds	r3, #1
 8001ae8:	2b04      	cmp	r3, #4
 8001aea:	4625      	mov	r5, r4
 8001aec:	d1ef      	bne.n	8001ace <timer_init+0x6>
 8001aee:	4b1a      	ldr	r3, [pc, #104]	; (8001b58 <timer_init+0x90>)
 8001af0:	2002      	movs	r0, #2
 8001af2:	2101      	movs	r1, #1
 8001af4:	601c      	str	r4, [r3, #0]
 8001af6:	f000 fd7d 	bl	80025f4 <RCC_APB1PeriphClockCmd>
 8001afa:	f8ad 4006 	strh.w	r4, [sp, #6]
 8001afe:	f8ad 400c 	strh.w	r4, [sp, #12]
 8001b02:	f8ad 400e 	strh.w	r4, [sp, #14]
 8001b06:	4c15      	ldr	r4, [pc, #84]	; (8001b5c <timer_init+0x94>)
 8001b08:	f44f 738c 	mov.w	r3, #280	; 0x118
 8001b0c:	f8ad 3004 	strh.w	r3, [sp, #4]
 8001b10:	4620      	mov	r0, r4
 8001b12:	2331      	movs	r3, #49	; 0x31
 8001b14:	a901      	add	r1, sp, #4
 8001b16:	9302      	str	r3, [sp, #8]
 8001b18:	f7ff fee4 	bl	80018e4 <TIM_TimeBaseInit>
 8001b1c:	4620      	mov	r0, r4
 8001b1e:	2101      	movs	r1, #1
 8001b20:	f7ff ff30 	bl	8001984 <TIM_Cmd>
 8001b24:	68e3      	ldr	r3, [r4, #12]
 8001b26:	f043 0301 	orr.w	r3, r3, #1
 8001b2a:	60e3      	str	r3, [r4, #12]
 8001b2c:	231d      	movs	r3, #29
 8001b2e:	f88d 3000 	strb.w	r3, [sp]
 8001b32:	4668      	mov	r0, sp
 8001b34:	2301      	movs	r3, #1
 8001b36:	f88d 5001 	strb.w	r5, [sp, #1]
 8001b3a:	f88d 3002 	strb.w	r3, [sp, #2]
 8001b3e:	f88d 3003 	strb.w	r3, [sp, #3]
 8001b42:	f000 fe55 	bl	80027f0 <NVIC_Init>
 8001b46:	b005      	add	sp, #20
 8001b48:	bd30      	pop	{r4, r5, pc}
 8001b4a:	bf00      	nop
 8001b4c:	20000e70 	.word	0x20000e70
 8001b50:	20000e64 	.word	0x20000e64
 8001b54:	20000e5c 	.word	0x20000e5c
 8001b58:	20000e6c 	.word	0x20000e6c
 8001b5c:	40000400 	.word	0x40000400

08001b60 <TIM3_IRQHandler>:
 8001b60:	2300      	movs	r3, #0
 8001b62:	4a10      	ldr	r2, [pc, #64]	; (8001ba4 <TIM3_IRQHandler+0x44>)
 8001b64:	f832 1013 	ldrh.w	r1, [r2, r3, lsl #1]
 8001b68:	b289      	uxth	r1, r1
 8001b6a:	b129      	cbz	r1, 8001b78 <TIM3_IRQHandler+0x18>
 8001b6c:	f832 1013 	ldrh.w	r1, [r2, r3, lsl #1]
 8001b70:	b289      	uxth	r1, r1
 8001b72:	3901      	subs	r1, #1
 8001b74:	b289      	uxth	r1, r1
 8001b76:	e007      	b.n	8001b88 <TIM3_IRQHandler+0x28>
 8001b78:	490b      	ldr	r1, [pc, #44]	; (8001ba8 <TIM3_IRQHandler+0x48>)
 8001b7a:	f831 1013 	ldrh.w	r1, [r1, r3, lsl #1]
 8001b7e:	b289      	uxth	r1, r1
 8001b80:	f822 1013 	strh.w	r1, [r2, r3, lsl #1]
 8001b84:	4a09      	ldr	r2, [pc, #36]	; (8001bac <TIM3_IRQHandler+0x4c>)
 8001b86:	2101      	movs	r1, #1
 8001b88:	f822 1013 	strh.w	r1, [r2, r3, lsl #1]
 8001b8c:	3301      	adds	r3, #1
 8001b8e:	2b04      	cmp	r3, #4
 8001b90:	d1e7      	bne.n	8001b62 <TIM3_IRQHandler+0x2>
 8001b92:	4b07      	ldr	r3, [pc, #28]	; (8001bb0 <TIM3_IRQHandler+0x50>)
 8001b94:	4807      	ldr	r0, [pc, #28]	; (8001bb4 <TIM3_IRQHandler+0x54>)
 8001b96:	681a      	ldr	r2, [r3, #0]
 8001b98:	2101      	movs	r1, #1
 8001b9a:	3201      	adds	r2, #1
 8001b9c:	601a      	str	r2, [r3, #0]
 8001b9e:	f7ff bf8e 	b.w	8001abe <TIM_ClearITPendingBit>
 8001ba2:	bf00      	nop
 8001ba4:	20000e70 	.word	0x20000e70
 8001ba8:	20000e64 	.word	0x20000e64
 8001bac:	20000e5c 	.word	0x20000e5c
 8001bb0:	20000e6c 	.word	0x20000e6c
 8001bb4:	40000400 	.word	0x40000400

08001bb8 <timer_get_time>:
 8001bb8:	b082      	sub	sp, #8
 8001bba:	b672      	cpsid	i
 8001bbc:	4b04      	ldr	r3, [pc, #16]	; (8001bd0 <timer_get_time+0x18>)
 8001bbe:	681b      	ldr	r3, [r3, #0]
 8001bc0:	9301      	str	r3, [sp, #4]
 8001bc2:	b662      	cpsie	i
 8001bc4:	9801      	ldr	r0, [sp, #4]
 8001bc6:	230a      	movs	r3, #10
 8001bc8:	fbb0 f0f3 	udiv	r0, r0, r3
 8001bcc:	b002      	add	sp, #8
 8001bce:	4770      	bx	lr
 8001bd0:	20000e6c 	.word	0x20000e6c

08001bd4 <timer_delay_ms>:
 8001bd4:	b513      	push	{r0, r1, r4, lr}
 8001bd6:	4604      	mov	r4, r0
 8001bd8:	f7ff ffee 	bl	8001bb8 <timer_get_time>
 8001bdc:	4420      	add	r0, r4
 8001bde:	9001      	str	r0, [sp, #4]
 8001be0:	9c01      	ldr	r4, [sp, #4]
 8001be2:	f7ff ffe9 	bl	8001bb8 <timer_get_time>
 8001be6:	4284      	cmp	r4, r0
 8001be8:	d902      	bls.n	8001bf0 <timer_delay_ms+0x1c>
 8001bea:	f000 fa95 	bl	8002118 <sleep>
 8001bee:	e7f7      	b.n	8001be0 <timer_delay_ms+0xc>
 8001bf0:	b002      	add	sp, #8
 8001bf2:	bd10      	pop	{r4, pc}

08001bf4 <event_timer_set_period>:
 8001bf4:	b672      	cpsid	i
 8001bf6:	230a      	movs	r3, #10
 8001bf8:	4359      	muls	r1, r3
 8001bfa:	4b06      	ldr	r3, [pc, #24]	; (8001c14 <event_timer_set_period+0x20>)
 8001bfc:	b289      	uxth	r1, r1
 8001bfe:	f823 1010 	strh.w	r1, [r3, r0, lsl #1]
 8001c02:	4b05      	ldr	r3, [pc, #20]	; (8001c18 <event_timer_set_period+0x24>)
 8001c04:	f823 1010 	strh.w	r1, [r3, r0, lsl #1]
 8001c08:	4b04      	ldr	r3, [pc, #16]	; (8001c1c <event_timer_set_period+0x28>)
 8001c0a:	2200      	movs	r2, #0
 8001c0c:	f823 2010 	strh.w	r2, [r3, r0, lsl #1]
 8001c10:	b662      	cpsie	i
 8001c12:	4770      	bx	lr
 8001c14:	20000e70 	.word	0x20000e70
 8001c18:	20000e64 	.word	0x20000e64
 8001c1c:	20000e5c 	.word	0x20000e5c

08001c20 <event_timer_wait>:
 8001c20:	b510      	push	{r4, lr}
 8001c22:	4604      	mov	r4, r0
 8001c24:	4b06      	ldr	r3, [pc, #24]	; (8001c40 <event_timer_wait+0x20>)
 8001c26:	f833 2014 	ldrh.w	r2, [r3, r4, lsl #1]
 8001c2a:	b292      	uxth	r2, r2
 8001c2c:	b912      	cbnz	r2, 8001c34 <event_timer_wait+0x14>
 8001c2e:	f000 fa73 	bl	8002118 <sleep>
 8001c32:	e7f7      	b.n	8001c24 <event_timer_wait+0x4>
 8001c34:	b672      	cpsid	i
 8001c36:	2200      	movs	r2, #0
 8001c38:	f823 2014 	strh.w	r2, [r3, r4, lsl #1]
 8001c3c:	b662      	cpsie	i
 8001c3e:	bd10      	pop	{r4, pc}
 8001c40:	20000e5c 	.word	0x20000e5c

08001c44 <i2c_delay>:
 8001c44:	230b      	movs	r3, #11
 8001c46:	3b01      	subs	r3, #1
 8001c48:	d001      	beq.n	8001c4e <i2c_delay+0xa>
 8001c4a:	bf00      	nop
 8001c4c:	e7fb      	b.n	8001c46 <i2c_delay+0x2>
 8001c4e:	4770      	bx	lr

08001c50 <SetLowSDA>:
 8001c50:	b537      	push	{r0, r1, r2, r4, r5, lr}
 8001c52:	4d0d      	ldr	r5, [pc, #52]	; (8001c88 <SetLowSDA+0x38>)
 8001c54:	2301      	movs	r3, #1
 8001c56:	2203      	movs	r2, #3
 8001c58:	2480      	movs	r4, #128	; 0x80
 8001c5a:	f88d 3004 	strb.w	r3, [sp, #4]
 8001c5e:	f88d 3006 	strb.w	r3, [sp, #6]
 8001c62:	4628      	mov	r0, r5
 8001c64:	2300      	movs	r3, #0
 8001c66:	4669      	mov	r1, sp
 8001c68:	f88d 2005 	strb.w	r2, [sp, #5]
 8001c6c:	f88d 3007 	strb.w	r3, [sp, #7]
 8001c70:	9400      	str	r4, [sp, #0]
 8001c72:	f000 fcde 	bl	8002632 <GPIO_Init>
 8001c76:	4628      	mov	r0, r5
 8001c78:	4621      	mov	r1, r4
 8001c7a:	f000 fd24 	bl	80026c6 <GPIO_ResetBits>
 8001c7e:	f7ff ffe1 	bl	8001c44 <i2c_delay>
 8001c82:	b003      	add	sp, #12
 8001c84:	bd30      	pop	{r4, r5, pc}
 8001c86:	bf00      	nop
 8001c88:	48000400 	.word	0x48000400

08001c8c <SetHighSDA>:
 8001c8c:	b537      	push	{r0, r1, r2, r4, r5, lr}
 8001c8e:	4d0d      	ldr	r5, [pc, #52]	; (8001cc4 <SetHighSDA+0x38>)
 8001c90:	2203      	movs	r2, #3
 8001c92:	2300      	movs	r3, #0
 8001c94:	2480      	movs	r4, #128	; 0x80
 8001c96:	f88d 2005 	strb.w	r2, [sp, #5]
 8001c9a:	4628      	mov	r0, r5
 8001c9c:	2201      	movs	r2, #1
 8001c9e:	4669      	mov	r1, sp
 8001ca0:	f88d 3004 	strb.w	r3, [sp, #4]
 8001ca4:	f88d 2006 	strb.w	r2, [sp, #6]
 8001ca8:	f88d 3007 	strb.w	r3, [sp, #7]
 8001cac:	9400      	str	r4, [sp, #0]
 8001cae:	f000 fcc0 	bl	8002632 <GPIO_Init>
 8001cb2:	4628      	mov	r0, r5
 8001cb4:	4621      	mov	r1, r4
 8001cb6:	f000 fd02 	bl	80026be <GPIO_SetBits>
 8001cba:	f7ff ffc3 	bl	8001c44 <i2c_delay>
 8001cbe:	b003      	add	sp, #12
 8001cc0:	bd30      	pop	{r4, r5, pc}
 8001cc2:	bf00      	nop
 8001cc4:	48000400 	.word	0x48000400

08001cc8 <SetLowSCL>:
 8001cc8:	b508      	push	{r3, lr}
 8001cca:	4804      	ldr	r0, [pc, #16]	; (8001cdc <SetLowSCL+0x14>)
 8001ccc:	2140      	movs	r1, #64	; 0x40
 8001cce:	f000 fcfa 	bl	80026c6 <GPIO_ResetBits>
 8001cd2:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001cd6:	f7ff bfb5 	b.w	8001c44 <i2c_delay>
 8001cda:	bf00      	nop
 8001cdc:	48000400 	.word	0x48000400

08001ce0 <SetHighSCL>:
 8001ce0:	b508      	push	{r3, lr}
 8001ce2:	4804      	ldr	r0, [pc, #16]	; (8001cf4 <SetHighSCL+0x14>)
 8001ce4:	2140      	movs	r1, #64	; 0x40
 8001ce6:	f000 fcea 	bl	80026be <GPIO_SetBits>
 8001cea:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001cee:	f7ff bfa9 	b.w	8001c44 <i2c_delay>
 8001cf2:	bf00      	nop
 8001cf4:	48000400 	.word	0x48000400

08001cf8 <i2c_0_init>:
 8001cf8:	b507      	push	{r0, r1, r2, lr}
 8001cfa:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 8001cfe:	2101      	movs	r1, #1
 8001d00:	f000 fc5c 	bl	80025bc <RCC_AHBPeriphClockCmd>
 8001d04:	23c0      	movs	r3, #192	; 0xc0
 8001d06:	9300      	str	r3, [sp, #0]
 8001d08:	2301      	movs	r3, #1
 8001d0a:	2203      	movs	r2, #3
 8001d0c:	480a      	ldr	r0, [pc, #40]	; (8001d38 <i2c_0_init+0x40>)
 8001d0e:	f88d 3004 	strb.w	r3, [sp, #4]
 8001d12:	4669      	mov	r1, sp
 8001d14:	f88d 3006 	strb.w	r3, [sp, #6]
 8001d18:	2300      	movs	r3, #0
 8001d1a:	f88d 2005 	strb.w	r2, [sp, #5]
 8001d1e:	f88d 3007 	strb.w	r3, [sp, #7]
 8001d22:	f000 fc86 	bl	8002632 <GPIO_Init>
 8001d26:	f7ff ffdb 	bl	8001ce0 <SetHighSCL>
 8001d2a:	f7ff ff91 	bl	8001c50 <SetLowSDA>
 8001d2e:	f7ff ffad 	bl	8001c8c <SetHighSDA>
 8001d32:	b003      	add	sp, #12
 8001d34:	f85d fb04 	ldr.w	pc, [sp], #4
 8001d38:	48000400 	.word	0x48000400

08001d3c <i2cStart>:
 8001d3c:	b508      	push	{r3, lr}
 8001d3e:	f7ff ffcf 	bl	8001ce0 <SetHighSCL>
 8001d42:	f7ff ffa3 	bl	8001c8c <SetHighSDA>
 8001d46:	f7ff ffcb 	bl	8001ce0 <SetHighSCL>
 8001d4a:	f7ff ff81 	bl	8001c50 <SetLowSDA>
 8001d4e:	f7ff ffbb 	bl	8001cc8 <SetLowSCL>
 8001d52:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001d56:	f7ff bf99 	b.w	8001c8c <SetHighSDA>

08001d5a <i2cStop>:
 8001d5a:	b508      	push	{r3, lr}
 8001d5c:	f7ff ffb4 	bl	8001cc8 <SetLowSCL>
 8001d60:	f7ff ff76 	bl	8001c50 <SetLowSDA>
 8001d64:	f7ff ffbc 	bl	8001ce0 <SetHighSCL>
 8001d68:	f7ff ff72 	bl	8001c50 <SetLowSDA>
 8001d6c:	f7ff ffb8 	bl	8001ce0 <SetHighSCL>
 8001d70:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001d74:	f7ff bf8a 	b.w	8001c8c <SetHighSDA>

08001d78 <i2cWrite>:
 8001d78:	b538      	push	{r3, r4, r5, lr}
 8001d7a:	4604      	mov	r4, r0
 8001d7c:	2508      	movs	r5, #8
 8001d7e:	f7ff ffa3 	bl	8001cc8 <SetLowSCL>
 8001d82:	0623      	lsls	r3, r4, #24
 8001d84:	d502      	bpl.n	8001d8c <i2cWrite+0x14>
 8001d86:	f7ff ff81 	bl	8001c8c <SetHighSDA>
 8001d8a:	e001      	b.n	8001d90 <i2cWrite+0x18>
 8001d8c:	f7ff ff60 	bl	8001c50 <SetLowSDA>
 8001d90:	3d01      	subs	r5, #1
 8001d92:	f7ff ffa5 	bl	8001ce0 <SetHighSCL>
 8001d96:	0064      	lsls	r4, r4, #1
 8001d98:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 8001d9c:	b2e4      	uxtb	r4, r4
 8001d9e:	d1ee      	bne.n	8001d7e <i2cWrite+0x6>
 8001da0:	f7ff ff92 	bl	8001cc8 <SetLowSCL>
 8001da4:	f7ff ff72 	bl	8001c8c <SetHighSDA>
 8001da8:	f7ff ff9a 	bl	8001ce0 <SetHighSCL>
 8001dac:	4b05      	ldr	r3, [pc, #20]	; (8001dc4 <i2cWrite+0x4c>)
 8001dae:	8a1c      	ldrh	r4, [r3, #16]
 8001db0:	b2a4      	uxth	r4, r4
 8001db2:	f7ff ff89 	bl	8001cc8 <SetLowSCL>
 8001db6:	f7ff ff45 	bl	8001c44 <i2c_delay>
 8001dba:	f084 0080 	eor.w	r0, r4, #128	; 0x80
 8001dbe:	f3c0 10c0 	ubfx	r0, r0, #7, #1
 8001dc2:	bd38      	pop	{r3, r4, r5, pc}
 8001dc4:	48000400 	.word	0x48000400

08001dc8 <i2cRead>:
 8001dc8:	b570      	push	{r4, r5, r6, lr}
 8001dca:	4606      	mov	r6, r0
 8001dcc:	f7ff ff7c 	bl	8001cc8 <SetLowSCL>
 8001dd0:	f7ff ff5c 	bl	8001c8c <SetHighSDA>
 8001dd4:	2508      	movs	r5, #8
 8001dd6:	2400      	movs	r4, #0
 8001dd8:	f7ff ff82 	bl	8001ce0 <SetHighSCL>
 8001ddc:	4b0d      	ldr	r3, [pc, #52]	; (8001e14 <i2cRead+0x4c>)
 8001dde:	8a1b      	ldrh	r3, [r3, #16]
 8001de0:	0064      	lsls	r4, r4, #1
 8001de2:	061a      	lsls	r2, r3, #24
 8001de4:	b2e4      	uxtb	r4, r4
 8001de6:	bf48      	it	mi
 8001de8:	3401      	addmi	r4, #1
 8001dea:	f105 35ff 	add.w	r5, r5, #4294967295
 8001dee:	bf48      	it	mi
 8001df0:	b2e4      	uxtbmi	r4, r4
 8001df2:	f7ff ff69 	bl	8001cc8 <SetLowSCL>
 8001df6:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 8001dfa:	d1ed      	bne.n	8001dd8 <i2cRead+0x10>
 8001dfc:	b10e      	cbz	r6, 8001e02 <i2cRead+0x3a>
 8001dfe:	f7ff ff27 	bl	8001c50 <SetLowSDA>
 8001e02:	f7ff ff6d 	bl	8001ce0 <SetHighSCL>
 8001e06:	f7ff ff5f 	bl	8001cc8 <SetLowSCL>
 8001e0a:	f7ff ff1b 	bl	8001c44 <i2c_delay>
 8001e0e:	4620      	mov	r0, r4
 8001e10:	bd70      	pop	{r4, r5, r6, pc}
 8001e12:	bf00      	nop
 8001e14:	48000400 	.word	0x48000400

08001e18 <i2c_write_reg>:
 8001e18:	b570      	push	{r4, r5, r6, lr}
 8001e1a:	4605      	mov	r5, r0
 8001e1c:	460c      	mov	r4, r1
 8001e1e:	4616      	mov	r6, r2
 8001e20:	f7ff ff8c 	bl	8001d3c <i2cStart>
 8001e24:	4628      	mov	r0, r5
 8001e26:	f7ff ffa7 	bl	8001d78 <i2cWrite>
 8001e2a:	4620      	mov	r0, r4
 8001e2c:	f7ff ffa4 	bl	8001d78 <i2cWrite>
 8001e30:	4630      	mov	r0, r6
 8001e32:	f7ff ffa1 	bl	8001d78 <i2cWrite>
 8001e36:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8001e3a:	f7ff bf8e 	b.w	8001d5a <i2cStop>

08001e3e <i2c_read_reg>:
 8001e3e:	b538      	push	{r3, r4, r5, lr}
 8001e40:	4604      	mov	r4, r0
 8001e42:	460d      	mov	r5, r1
 8001e44:	f7ff ff7a 	bl	8001d3c <i2cStart>
 8001e48:	4620      	mov	r0, r4
 8001e4a:	f7ff ff95 	bl	8001d78 <i2cWrite>
 8001e4e:	4628      	mov	r0, r5
 8001e50:	f7ff ff92 	bl	8001d78 <i2cWrite>
 8001e54:	f7ff ff72 	bl	8001d3c <i2cStart>
 8001e58:	f044 0001 	orr.w	r0, r4, #1
 8001e5c:	f7ff ff8c 	bl	8001d78 <i2cWrite>
 8001e60:	2000      	movs	r0, #0
 8001e62:	f7ff ffb1 	bl	8001dc8 <i2cRead>
 8001e66:	4604      	mov	r4, r0
 8001e68:	f7ff ff77 	bl	8001d5a <i2cStop>
 8001e6c:	4620      	mov	r0, r4
 8001e6e:	bd38      	pop	{r3, r4, r5, pc}

08001e70 <uart_write>:
 8001e70:	4b03      	ldr	r3, [pc, #12]	; (8001e80 <uart_write+0x10>)
 8001e72:	69da      	ldr	r2, [r3, #28]
 8001e74:	0612      	lsls	r2, r2, #24
 8001e76:	d401      	bmi.n	8001e7c <uart_write+0xc>
 8001e78:	bf00      	nop
 8001e7a:	e7f9      	b.n	8001e70 <uart_write>
 8001e7c:	8518      	strh	r0, [r3, #40]	; 0x28
 8001e7e:	4770      	bx	lr
 8001e80:	40013800 	.word	0x40013800

08001e84 <uart_init>:
 8001e84:	b530      	push	{r4, r5, lr}
 8001e86:	4b2c      	ldr	r3, [pc, #176]	; (8001f38 <uart_init+0xb4>)
 8001e88:	4d2c      	ldr	r5, [pc, #176]	; (8001f3c <uart_init+0xb8>)
 8001e8a:	2400      	movs	r4, #0
 8001e8c:	601c      	str	r4, [r3, #0]
 8001e8e:	4b2c      	ldr	r3, [pc, #176]	; (8001f40 <uart_init+0xbc>)
 8001e90:	b08b      	sub	sp, #44	; 0x2c
 8001e92:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 8001e96:	2101      	movs	r1, #1
 8001e98:	601c      	str	r4, [r3, #0]
 8001e9a:	f000 fb8f 	bl	80025bc <RCC_AHBPeriphClockCmd>
 8001e9e:	f44f 4080 	mov.w	r0, #16384	; 0x4000
 8001ea2:	2101      	movs	r1, #1
 8001ea4:	f000 fb98 	bl	80025d8 <RCC_APB2PeriphClockCmd>
 8001ea8:	f44f 63c0 	mov.w	r3, #1536	; 0x600
 8001eac:	9302      	str	r3, [sp, #8]
 8001eae:	2302      	movs	r3, #2
 8001eb0:	f88d 300c 	strb.w	r3, [sp, #12]
 8001eb4:	a902      	add	r1, sp, #8
 8001eb6:	2303      	movs	r3, #3
 8001eb8:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8001ebc:	f88d 300d 	strb.w	r3, [sp, #13]
 8001ec0:	f88d 400e 	strb.w	r4, [sp, #14]
 8001ec4:	f88d 400f 	strb.w	r4, [sp, #15]
 8001ec8:	f000 fbb3 	bl	8002632 <GPIO_Init>
 8001ecc:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8001ed0:	2109      	movs	r1, #9
 8001ed2:	2207      	movs	r2, #7
 8001ed4:	f000 fbfb 	bl	80026ce <GPIO_PinAFConfig>
 8001ed8:	2207      	movs	r2, #7
 8001eda:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8001ede:	210a      	movs	r1, #10
 8001ee0:	f000 fbf5 	bl	80026ce <GPIO_PinAFConfig>
 8001ee4:	f44f 33e1 	mov.w	r3, #115200	; 0x1c200
 8001ee8:	9304      	str	r3, [sp, #16]
 8001eea:	4628      	mov	r0, r5
 8001eec:	230c      	movs	r3, #12
 8001eee:	a904      	add	r1, sp, #16
 8001ef0:	9308      	str	r3, [sp, #32]
 8001ef2:	9405      	str	r4, [sp, #20]
 8001ef4:	9406      	str	r4, [sp, #24]
 8001ef6:	9407      	str	r4, [sp, #28]
 8001ef8:	9409      	str	r4, [sp, #36]	; 0x24
 8001efa:	f000 f849 	bl	8001f90 <USART_Init>
 8001efe:	4628      	mov	r0, r5
 8001f00:	2101      	movs	r1, #1
 8001f02:	f000 f8a7 	bl	8002054 <USART_Cmd>
 8001f06:	2201      	movs	r2, #1
 8001f08:	4628      	mov	r0, r5
 8001f0a:	490e      	ldr	r1, [pc, #56]	; (8001f44 <uart_init+0xc0>)
 8001f0c:	f000 f8b2 	bl	8002074 <USART_ITConfig>
 8001f10:	2325      	movs	r3, #37	; 0x25
 8001f12:	f88d 4005 	strb.w	r4, [sp, #5]
 8001f16:	f88d 4006 	strb.w	r4, [sp, #6]
 8001f1a:	a801      	add	r0, sp, #4
 8001f1c:	2401      	movs	r4, #1
 8001f1e:	f88d 3004 	strb.w	r3, [sp, #4]
 8001f22:	f88d 4007 	strb.w	r4, [sp, #7]
 8001f26:	f000 fc63 	bl	80027f0 <NVIC_Init>
 8001f2a:	4628      	mov	r0, r5
 8001f2c:	4621      	mov	r1, r4
 8001f2e:	f000 f891 	bl	8002054 <USART_Cmd>
 8001f32:	b00b      	add	sp, #44	; 0x2c
 8001f34:	bd30      	pop	{r4, r5, pc}
 8001f36:	bf00      	nop
 8001f38:	20000e88 	.word	0x20000e88
 8001f3c:	40013800 	.word	0x40013800
 8001f40:	20000e8c 	.word	0x20000e8c
 8001f44:	00050105 	.word	0x00050105

08001f48 <USART1_IRQHandler>:
 8001f48:	b508      	push	{r3, lr}
 8001f4a:	480d      	ldr	r0, [pc, #52]	; (8001f80 <USART1_IRQHandler+0x38>)
 8001f4c:	490d      	ldr	r1, [pc, #52]	; (8001f84 <USART1_IRQHandler+0x3c>)
 8001f4e:	f000 f8aa 	bl	80020a6 <USART_GetITStatus>
 8001f52:	b178      	cbz	r0, 8001f74 <USART1_IRQHandler+0x2c>
 8001f54:	480a      	ldr	r0, [pc, #40]	; (8001f80 <USART1_IRQHandler+0x38>)
 8001f56:	f000 f888 	bl	800206a <USART_ReceiveData>
 8001f5a:	4b0b      	ldr	r3, [pc, #44]	; (8001f88 <USART1_IRQHandler+0x40>)
 8001f5c:	490b      	ldr	r1, [pc, #44]	; (8001f8c <USART1_IRQHandler+0x44>)
 8001f5e:	681a      	ldr	r2, [r3, #0]
 8001f60:	b2c0      	uxtb	r0, r0
 8001f62:	5488      	strb	r0, [r1, r2]
 8001f64:	681a      	ldr	r2, [r3, #0]
 8001f66:	3201      	adds	r2, #1
 8001f68:	601a      	str	r2, [r3, #0]
 8001f6a:	681a      	ldr	r2, [r3, #0]
 8001f6c:	2a0f      	cmp	r2, #15
 8001f6e:	bf84      	itt	hi
 8001f70:	2200      	movhi	r2, #0
 8001f72:	601a      	strhi	r2, [r3, #0]
 8001f74:	4802      	ldr	r0, [pc, #8]	; (8001f80 <USART1_IRQHandler+0x38>)
 8001f76:	4903      	ldr	r1, [pc, #12]	; (8001f84 <USART1_IRQHandler+0x3c>)
 8001f78:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001f7c:	f000 b8b2 	b.w	80020e4 <USART_ClearITPendingBit>
 8001f80:	40013800 	.word	0x40013800
 8001f84:	00050105 	.word	0x00050105
 8001f88:	20000e88 	.word	0x20000e88
 8001f8c:	20000e78 	.word	0x20000e78

08001f90 <USART_Init>:
 8001f90:	b530      	push	{r4, r5, lr}
 8001f92:	4604      	mov	r4, r0
 8001f94:	b099      	sub	sp, #100	; 0x64
 8001f96:	460d      	mov	r5, r1
 8001f98:	bf00      	nop
 8001f9a:	bf00      	nop
 8001f9c:	bf00      	nop
 8001f9e:	bf00      	nop
 8001fa0:	bf00      	nop
 8001fa2:	bf00      	nop
 8001fa4:	bf00      	nop
 8001fa6:	6803      	ldr	r3, [r0, #0]
 8001fa8:	f023 0301 	bic.w	r3, r3, #1
 8001fac:	6003      	str	r3, [r0, #0]
 8001fae:	6842      	ldr	r2, [r0, #4]
 8001fb0:	688b      	ldr	r3, [r1, #8]
 8001fb2:	f422 5240 	bic.w	r2, r2, #12288	; 0x3000
 8001fb6:	4313      	orrs	r3, r2
 8001fb8:	6043      	str	r3, [r0, #4]
 8001fba:	686a      	ldr	r2, [r5, #4]
 8001fbc:	68eb      	ldr	r3, [r5, #12]
 8001fbe:	6801      	ldr	r1, [r0, #0]
 8001fc0:	431a      	orrs	r2, r3
 8001fc2:	692b      	ldr	r3, [r5, #16]
 8001fc4:	f421 51b0 	bic.w	r1, r1, #5632	; 0x1600
 8001fc8:	f021 010c 	bic.w	r1, r1, #12
 8001fcc:	4313      	orrs	r3, r2
 8001fce:	430b      	orrs	r3, r1
 8001fd0:	6003      	str	r3, [r0, #0]
 8001fd2:	6882      	ldr	r2, [r0, #8]
 8001fd4:	696b      	ldr	r3, [r5, #20]
 8001fd6:	f422 7240 	bic.w	r2, r2, #768	; 0x300
 8001fda:	4313      	orrs	r3, r2
 8001fdc:	6083      	str	r3, [r0, #8]
 8001fde:	a801      	add	r0, sp, #4
 8001fe0:	f000 f960 	bl	80022a4 <RCC_GetClocksFreq>
 8001fe4:	4b17      	ldr	r3, [pc, #92]	; (8002044 <USART_Init+0xb4>)
 8001fe6:	429c      	cmp	r4, r3
 8001fe8:	d101      	bne.n	8001fee <USART_Init+0x5e>
 8001fea:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8001fec:	e00e      	b.n	800200c <USART_Init+0x7c>
 8001fee:	4b16      	ldr	r3, [pc, #88]	; (8002048 <USART_Init+0xb8>)
 8001ff0:	429c      	cmp	r4, r3
 8001ff2:	d101      	bne.n	8001ff8 <USART_Init+0x68>
 8001ff4:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8001ff6:	e009      	b.n	800200c <USART_Init+0x7c>
 8001ff8:	4b14      	ldr	r3, [pc, #80]	; (800204c <USART_Init+0xbc>)
 8001ffa:	429c      	cmp	r4, r3
 8001ffc:	d101      	bne.n	8002002 <USART_Init+0x72>
 8001ffe:	9a11      	ldr	r2, [sp, #68]	; 0x44
 8002000:	e004      	b.n	800200c <USART_Init+0x7c>
 8002002:	4b13      	ldr	r3, [pc, #76]	; (8002050 <USART_Init+0xc0>)
 8002004:	429c      	cmp	r4, r3
 8002006:	bf0c      	ite	eq
 8002008:	9a12      	ldreq	r2, [sp, #72]	; 0x48
 800200a:	9a13      	ldrne	r2, [sp, #76]	; 0x4c
 800200c:	6823      	ldr	r3, [r4, #0]
 800200e:	6829      	ldr	r1, [r5, #0]
 8002010:	f413 4f00 	tst.w	r3, #32768	; 0x8000
 8002014:	bf18      	it	ne
 8002016:	0052      	lslne	r2, r2, #1
 8002018:	fbb2 f3f1 	udiv	r3, r2, r1
 800201c:	fb01 2213 	mls	r2, r1, r3, r2
 8002020:	ebb2 0f51 	cmp.w	r2, r1, lsr #1
 8002024:	6822      	ldr	r2, [r4, #0]
 8002026:	bf28      	it	cs
 8002028:	3301      	addcs	r3, #1
 800202a:	0412      	lsls	r2, r2, #16
 800202c:	d506      	bpl.n	800203c <USART_Init+0xac>
 800202e:	f64f 72f0 	movw	r2, #65520	; 0xfff0
 8002032:	f3c3 0142 	ubfx	r1, r3, #1, #3
 8002036:	401a      	ands	r2, r3
 8002038:	ea41 0302 	orr.w	r3, r1, r2
 800203c:	b29b      	uxth	r3, r3
 800203e:	81a3      	strh	r3, [r4, #12]
 8002040:	b019      	add	sp, #100	; 0x64
 8002042:	bd30      	pop	{r4, r5, pc}
 8002044:	40013800 	.word	0x40013800
 8002048:	40004400 	.word	0x40004400
 800204c:	40004800 	.word	0x40004800
 8002050:	40004c00 	.word	0x40004c00

08002054 <USART_Cmd>:
 8002054:	bf00      	nop
 8002056:	bf00      	nop
 8002058:	6803      	ldr	r3, [r0, #0]
 800205a:	b111      	cbz	r1, 8002062 <USART_Cmd+0xe>
 800205c:	f043 0301 	orr.w	r3, r3, #1
 8002060:	e001      	b.n	8002066 <USART_Cmd+0x12>
 8002062:	f023 0301 	bic.w	r3, r3, #1
 8002066:	6003      	str	r3, [r0, #0]
 8002068:	4770      	bx	lr

0800206a <USART_ReceiveData>:
 800206a:	bf00      	nop
 800206c:	8c80      	ldrh	r0, [r0, #36]	; 0x24
 800206e:	f3c0 0008 	ubfx	r0, r0, #0, #9
 8002072:	4770      	bx	lr

08002074 <USART_ITConfig>:
 8002074:	b510      	push	{r4, lr}
 8002076:	bf00      	nop
 8002078:	bf00      	nop
 800207a:	bf00      	nop
 800207c:	f3c1 2307 	ubfx	r3, r1, #8, #8
 8002080:	2401      	movs	r4, #1
 8002082:	b2c9      	uxtb	r1, r1
 8002084:	2b02      	cmp	r3, #2
 8002086:	fa04 f101 	lsl.w	r1, r4, r1
 800208a:	d101      	bne.n	8002090 <USART_ITConfig+0x1c>
 800208c:	3004      	adds	r0, #4
 800208e:	e002      	b.n	8002096 <USART_ITConfig+0x22>
 8002090:	2b03      	cmp	r3, #3
 8002092:	bf08      	it	eq
 8002094:	3008      	addeq	r0, #8
 8002096:	6803      	ldr	r3, [r0, #0]
 8002098:	b10a      	cbz	r2, 800209e <USART_ITConfig+0x2a>
 800209a:	4319      	orrs	r1, r3
 800209c:	e001      	b.n	80020a2 <USART_ITConfig+0x2e>
 800209e:	ea23 0101 	bic.w	r1, r3, r1
 80020a2:	6001      	str	r1, [r0, #0]
 80020a4:	bd10      	pop	{r4, pc}

080020a6 <USART_GetITStatus>:
 80020a6:	b510      	push	{r4, lr}
 80020a8:	bf00      	nop
 80020aa:	bf00      	nop
 80020ac:	2401      	movs	r4, #1
 80020ae:	f3c1 2207 	ubfx	r2, r1, #8, #8
 80020b2:	b2cb      	uxtb	r3, r1
 80020b4:	42a2      	cmp	r2, r4
 80020b6:	fa04 f303 	lsl.w	r3, r4, r3
 80020ba:	d101      	bne.n	80020c0 <USART_GetITStatus+0x1a>
 80020bc:	6802      	ldr	r2, [r0, #0]
 80020be:	e003      	b.n	80020c8 <USART_GetITStatus+0x22>
 80020c0:	2a02      	cmp	r2, #2
 80020c2:	bf0c      	ite	eq
 80020c4:	6842      	ldreq	r2, [r0, #4]
 80020c6:	6882      	ldrne	r2, [r0, #8]
 80020c8:	4013      	ands	r3, r2
 80020ca:	69c2      	ldr	r2, [r0, #28]
 80020cc:	b143      	cbz	r3, 80020e0 <USART_GetITStatus+0x3a>
 80020ce:	2301      	movs	r3, #1
 80020d0:	0c09      	lsrs	r1, r1, #16
 80020d2:	fa03 f101 	lsl.w	r1, r3, r1
 80020d6:	4211      	tst	r1, r2
 80020d8:	bf0c      	ite	eq
 80020da:	2000      	moveq	r0, #0
 80020dc:	2001      	movne	r0, #1
 80020de:	bd10      	pop	{r4, pc}
 80020e0:	4618      	mov	r0, r3
 80020e2:	bd10      	pop	{r4, pc}

080020e4 <USART_ClearITPendingBit>:
 80020e4:	bf00      	nop
 80020e6:	bf00      	nop
 80020e8:	2301      	movs	r3, #1
 80020ea:	0c09      	lsrs	r1, r1, #16
 80020ec:	fa03 f101 	lsl.w	r1, r3, r1
 80020f0:	6201      	str	r1, [r0, #32]
 80020f2:	4770      	bx	lr

080020f4 <sys_tick_init>:
 80020f4:	4b05      	ldr	r3, [pc, #20]	; (800210c <sys_tick_init+0x18>)
 80020f6:	4a06      	ldr	r2, [pc, #24]	; (8002110 <sys_tick_init+0x1c>)
 80020f8:	605a      	str	r2, [r3, #4]
 80020fa:	4a06      	ldr	r2, [pc, #24]	; (8002114 <sys_tick_init+0x20>)
 80020fc:	21f0      	movs	r1, #240	; 0xf0
 80020fe:	f882 1023 	strb.w	r1, [r2, #35]	; 0x23
 8002102:	2200      	movs	r2, #0
 8002104:	609a      	str	r2, [r3, #8]
 8002106:	2207      	movs	r2, #7
 8002108:	601a      	str	r2, [r3, #0]
 800210a:	4770      	bx	lr
 800210c:	e000e010 	.word	0xe000e010
 8002110:	00029040 	.word	0x00029040
 8002114:	e000ed00 	.word	0xe000ed00

08002118 <sleep>:
 8002118:	bf30      	wfi
 800211a:	4770      	bx	lr

0800211c <sytem_clock_init>:
 800211c:	f000 b800 	b.w	8002120 <SystemInit>

08002120 <SystemInit>:
 8002120:	4b3b      	ldr	r3, [pc, #236]	; (8002210 <SystemInit+0xf0>)
 8002122:	f8d3 2088 	ldr.w	r2, [r3, #136]	; 0x88
 8002126:	f442 0270 	orr.w	r2, r2, #15728640	; 0xf00000
 800212a:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
 800212e:	4b39      	ldr	r3, [pc, #228]	; (8002214 <SystemInit+0xf4>)
 8002130:	681a      	ldr	r2, [r3, #0]
 8002132:	f042 0201 	orr.w	r2, r2, #1
 8002136:	601a      	str	r2, [r3, #0]
 8002138:	6859      	ldr	r1, [r3, #4]
 800213a:	4a37      	ldr	r2, [pc, #220]	; (8002218 <SystemInit+0xf8>)
 800213c:	400a      	ands	r2, r1
 800213e:	605a      	str	r2, [r3, #4]
 8002140:	681a      	ldr	r2, [r3, #0]
 8002142:	f022 7284 	bic.w	r2, r2, #17301504	; 0x1080000
 8002146:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
 800214a:	601a      	str	r2, [r3, #0]
 800214c:	681a      	ldr	r2, [r3, #0]
 800214e:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 8002152:	601a      	str	r2, [r3, #0]
 8002154:	685a      	ldr	r2, [r3, #4]
 8002156:	f422 02fe 	bic.w	r2, r2, #8323072	; 0x7f0000
 800215a:	605a      	str	r2, [r3, #4]
 800215c:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 800215e:	f022 020f 	bic.w	r2, r2, #15
 8002162:	62da      	str	r2, [r3, #44]	; 0x2c
 8002164:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8002166:	4a2d      	ldr	r2, [pc, #180]	; (800221c <SystemInit+0xfc>)
 8002168:	b082      	sub	sp, #8
 800216a:	400a      	ands	r2, r1
 800216c:	631a      	str	r2, [r3, #48]	; 0x30
 800216e:	2200      	movs	r2, #0
 8002170:	609a      	str	r2, [r3, #8]
 8002172:	9200      	str	r2, [sp, #0]
 8002174:	9201      	str	r2, [sp, #4]
 8002176:	681a      	ldr	r2, [r3, #0]
 8002178:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
 800217c:	601a      	str	r2, [r3, #0]
 800217e:	4b25      	ldr	r3, [pc, #148]	; (8002214 <SystemInit+0xf4>)
 8002180:	681a      	ldr	r2, [r3, #0]
 8002182:	f402 3200 	and.w	r2, r2, #131072	; 0x20000
 8002186:	9201      	str	r2, [sp, #4]
 8002188:	9a00      	ldr	r2, [sp, #0]
 800218a:	3201      	adds	r2, #1
 800218c:	9200      	str	r2, [sp, #0]
 800218e:	9a01      	ldr	r2, [sp, #4]
 8002190:	b91a      	cbnz	r2, 800219a <SystemInit+0x7a>
 8002192:	9a00      	ldr	r2, [sp, #0]
 8002194:	f5b2 4fa0 	cmp.w	r2, #20480	; 0x5000
 8002198:	d1f1      	bne.n	800217e <SystemInit+0x5e>
 800219a:	681b      	ldr	r3, [r3, #0]
 800219c:	f413 3300 	ands.w	r3, r3, #131072	; 0x20000
 80021a0:	bf18      	it	ne
 80021a2:	2301      	movne	r3, #1
 80021a4:	9301      	str	r3, [sp, #4]
 80021a6:	9b01      	ldr	r3, [sp, #4]
 80021a8:	2b01      	cmp	r3, #1
 80021aa:	d005      	beq.n	80021b8 <SystemInit+0x98>
 80021ac:	4b18      	ldr	r3, [pc, #96]	; (8002210 <SystemInit+0xf0>)
 80021ae:	f04f 6200 	mov.w	r2, #134217728	; 0x8000000
 80021b2:	609a      	str	r2, [r3, #8]
 80021b4:	b002      	add	sp, #8
 80021b6:	4770      	bx	lr
 80021b8:	4b19      	ldr	r3, [pc, #100]	; (8002220 <SystemInit+0x100>)
 80021ba:	2212      	movs	r2, #18
 80021bc:	601a      	str	r2, [r3, #0]
 80021be:	f5a3 5380 	sub.w	r3, r3, #4096	; 0x1000
 80021c2:	685a      	ldr	r2, [r3, #4]
 80021c4:	605a      	str	r2, [r3, #4]
 80021c6:	685a      	ldr	r2, [r3, #4]
 80021c8:	605a      	str	r2, [r3, #4]
 80021ca:	685a      	ldr	r2, [r3, #4]
 80021cc:	f442 6280 	orr.w	r2, r2, #1024	; 0x400
 80021d0:	605a      	str	r2, [r3, #4]
 80021d2:	685a      	ldr	r2, [r3, #4]
 80021d4:	f422 127c 	bic.w	r2, r2, #4128768	; 0x3f0000
 80021d8:	605a      	str	r2, [r3, #4]
 80021da:	685a      	ldr	r2, [r3, #4]
 80021dc:	f442 12e8 	orr.w	r2, r2, #1900544	; 0x1d0000
 80021e0:	605a      	str	r2, [r3, #4]
 80021e2:	681a      	ldr	r2, [r3, #0]
 80021e4:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
 80021e8:	601a      	str	r2, [r3, #0]
 80021ea:	6819      	ldr	r1, [r3, #0]
 80021ec:	4a09      	ldr	r2, [pc, #36]	; (8002214 <SystemInit+0xf4>)
 80021ee:	0189      	lsls	r1, r1, #6
 80021f0:	d5fb      	bpl.n	80021ea <SystemInit+0xca>
 80021f2:	6853      	ldr	r3, [r2, #4]
 80021f4:	f023 0303 	bic.w	r3, r3, #3
 80021f8:	6053      	str	r3, [r2, #4]
 80021fa:	6853      	ldr	r3, [r2, #4]
 80021fc:	f043 0302 	orr.w	r3, r3, #2
 8002200:	6053      	str	r3, [r2, #4]
 8002202:	4b04      	ldr	r3, [pc, #16]	; (8002214 <SystemInit+0xf4>)
 8002204:	685b      	ldr	r3, [r3, #4]
 8002206:	f003 030c 	and.w	r3, r3, #12
 800220a:	2b08      	cmp	r3, #8
 800220c:	d1f9      	bne.n	8002202 <SystemInit+0xe2>
 800220e:	e7cd      	b.n	80021ac <SystemInit+0x8c>
 8002210:	e000ed00 	.word	0xe000ed00
 8002214:	40021000 	.word	0x40021000
 8002218:	f87fc00c 	.word	0xf87fc00c
 800221c:	ff00fccc 	.word	0xff00fccc
 8002220:	40022000 	.word	0x40022000

08002224 <Default_Handler>:
 8002224:	4668      	mov	r0, sp
 8002226:	f020 0107 	bic.w	r1, r0, #7
 800222a:	468d      	mov	sp, r1
 800222c:	bf00      	nop
 800222e:	e7fd      	b.n	800222c <Default_Handler+0x8>

08002230 <HardFault_Handler>:
 8002230:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8002234:	f000 fab0 	bl	8002798 <led_on>
 8002238:	4b06      	ldr	r3, [pc, #24]	; (8002254 <HardFault_Handler+0x24>)
 800223a:	3b01      	subs	r3, #1
 800223c:	d001      	beq.n	8002242 <HardFault_Handler+0x12>
 800223e:	bf00      	nop
 8002240:	e7fb      	b.n	800223a <HardFault_Handler+0xa>
 8002242:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8002246:	f000 fab9 	bl	80027bc <led_off>
 800224a:	4b02      	ldr	r3, [pc, #8]	; (8002254 <HardFault_Handler+0x24>)
 800224c:	3b01      	subs	r3, #1
 800224e:	d0ef      	beq.n	8002230 <HardFault_Handler>
 8002250:	bf00      	nop
 8002252:	e7fb      	b.n	800224c <HardFault_Handler+0x1c>
 8002254:	00989681 	.word	0x00989681

08002258 <_reset_init>:
 8002258:	4a0e      	ldr	r2, [pc, #56]	; (8002294 <_reset_init+0x3c>)
 800225a:	480f      	ldr	r0, [pc, #60]	; (8002298 <_reset_init+0x40>)
 800225c:	1a80      	subs	r0, r0, r2
 800225e:	1080      	asrs	r0, r0, #2
 8002260:	2300      	movs	r3, #0
 8002262:	4283      	cmp	r3, r0
 8002264:	d006      	beq.n	8002274 <_reset_init+0x1c>
 8002266:	490d      	ldr	r1, [pc, #52]	; (800229c <_reset_init+0x44>)
 8002268:	f851 1023 	ldr.w	r1, [r1, r3, lsl #2]
 800226c:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
 8002270:	3301      	adds	r3, #1
 8002272:	e7f6      	b.n	8002262 <_reset_init+0xa>
 8002274:	4b0a      	ldr	r3, [pc, #40]	; (80022a0 <_reset_init+0x48>)
 8002276:	f8d3 2088 	ldr.w	r2, [r3, #136]	; 0x88
 800227a:	f442 0270 	orr.w	r2, r2, #15728640	; 0xf00000
 800227e:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
 8002282:	f503 730c 	add.w	r3, r3, #560	; 0x230
 8002286:	685a      	ldr	r2, [r3, #4]
 8002288:	f022 4240 	bic.w	r2, r2, #3221225472	; 0xc0000000
 800228c:	605a      	str	r2, [r3, #4]
 800228e:	f7fe b9d5 	b.w	800063c <main>
 8002292:	bf00      	nop
 8002294:	20000000 	.word	0x20000000
 8002298:	20000154 	.word	0x20000154
 800229c:	08002904 	.word	0x08002904
 80022a0:	e000ed00 	.word	0xe000ed00

080022a4 <RCC_GetClocksFreq>:
 80022a4:	4ba5      	ldr	r3, [pc, #660]	; (800253c <RCC_GetClocksFreq+0x298>)
 80022a6:	685a      	ldr	r2, [r3, #4]
 80022a8:	f002 020c 	and.w	r2, r2, #12
 80022ac:	2a04      	cmp	r2, #4
 80022ae:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 80022b2:	d005      	beq.n	80022c0 <RCC_GetClocksFreq+0x1c>
 80022b4:	2a08      	cmp	r2, #8
 80022b6:	d006      	beq.n	80022c6 <RCC_GetClocksFreq+0x22>
 80022b8:	4ba1      	ldr	r3, [pc, #644]	; (8002540 <RCC_GetClocksFreq+0x29c>)
 80022ba:	6003      	str	r3, [r0, #0]
 80022bc:	b9ba      	cbnz	r2, 80022ee <RCC_GetClocksFreq+0x4a>
 80022be:	e017      	b.n	80022f0 <RCC_GetClocksFreq+0x4c>
 80022c0:	4b9f      	ldr	r3, [pc, #636]	; (8002540 <RCC_GetClocksFreq+0x29c>)
 80022c2:	6003      	str	r3, [r0, #0]
 80022c4:	e013      	b.n	80022ee <RCC_GetClocksFreq+0x4a>
 80022c6:	6859      	ldr	r1, [r3, #4]
 80022c8:	685c      	ldr	r4, [r3, #4]
 80022ca:	f3c1 4183 	ubfx	r1, r1, #18, #4
 80022ce:	03e2      	lsls	r2, r4, #15
 80022d0:	f101 0102 	add.w	r1, r1, #2
 80022d4:	d401      	bmi.n	80022da <RCC_GetClocksFreq+0x36>
 80022d6:	4a9b      	ldr	r2, [pc, #620]	; (8002544 <RCC_GetClocksFreq+0x2a0>)
 80022d8:	e006      	b.n	80022e8 <RCC_GetClocksFreq+0x44>
 80022da:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 80022dc:	4b98      	ldr	r3, [pc, #608]	; (8002540 <RCC_GetClocksFreq+0x29c>)
 80022de:	f002 020f 	and.w	r2, r2, #15
 80022e2:	3201      	adds	r2, #1
 80022e4:	fbb3 f2f2 	udiv	r2, r3, r2
 80022e8:	434a      	muls	r2, r1
 80022ea:	6002      	str	r2, [r0, #0]
 80022ec:	e000      	b.n	80022f0 <RCC_GetClocksFreq+0x4c>
 80022ee:	2200      	movs	r2, #0
 80022f0:	4f92      	ldr	r7, [pc, #584]	; (800253c <RCC_GetClocksFreq+0x298>)
 80022f2:	4d95      	ldr	r5, [pc, #596]	; (8002548 <RCC_GetClocksFreq+0x2a4>)
 80022f4:	687b      	ldr	r3, [r7, #4]
 80022f6:	f8df 8254 	ldr.w	r8, [pc, #596]	; 800254c <RCC_GetClocksFreq+0x2a8>
 80022fa:	f3c3 1303 	ubfx	r3, r3, #4, #4
 80022fe:	5cec      	ldrb	r4, [r5, r3]
 8002300:	6803      	ldr	r3, [r0, #0]
 8002302:	b2e4      	uxtb	r4, r4
 8002304:	fa23 f104 	lsr.w	r1, r3, r4
 8002308:	6041      	str	r1, [r0, #4]
 800230a:	687e      	ldr	r6, [r7, #4]
 800230c:	f3c6 2602 	ubfx	r6, r6, #8, #3
 8002310:	5dae      	ldrb	r6, [r5, r6]
 8002312:	fa21 f606 	lsr.w	r6, r1, r6
 8002316:	6086      	str	r6, [r0, #8]
 8002318:	f8d7 c004 	ldr.w	ip, [r7, #4]
 800231c:	f3cc 2cc2 	ubfx	ip, ip, #11, #3
 8002320:	f815 500c 	ldrb.w	r5, [r5, ip]
 8002324:	b2ed      	uxtb	r5, r5
 8002326:	40e9      	lsrs	r1, r5
 8002328:	60c1      	str	r1, [r0, #12]
 800232a:	f8d7 902c 	ldr.w	r9, [r7, #44]	; 0x2c
 800232e:	f3c9 1904 	ubfx	r9, r9, #4, #5
 8002332:	f009 0c0f 	and.w	ip, r9, #15
 8002336:	f019 0f10 	tst.w	r9, #16
 800233a:	f838 c01c 	ldrh.w	ip, [r8, ip, lsl #1]
 800233e:	fa1f fc8c 	uxth.w	ip, ip
 8002342:	d007      	beq.n	8002354 <RCC_GetClocksFreq+0xb0>
 8002344:	f1bc 0f00 	cmp.w	ip, #0
 8002348:	d004      	beq.n	8002354 <RCC_GetClocksFreq+0xb0>
 800234a:	fbb2 fcfc 	udiv	ip, r2, ip
 800234e:	f8c0 c010 	str.w	ip, [r0, #16]
 8002352:	e000      	b.n	8002356 <RCC_GetClocksFreq+0xb2>
 8002354:	6103      	str	r3, [r0, #16]
 8002356:	6aff      	ldr	r7, [r7, #44]	; 0x2c
 8002358:	f3c7 2c44 	ubfx	ip, r7, #9, #5
 800235c:	f00c 070f 	and.w	r7, ip, #15
 8002360:	f01c 0f10 	tst.w	ip, #16
 8002364:	f838 7017 	ldrh.w	r7, [r8, r7, lsl #1]
 8002368:	b2bf      	uxth	r7, r7
 800236a:	d004      	beq.n	8002376 <RCC_GetClocksFreq+0xd2>
 800236c:	b11f      	cbz	r7, 8002376 <RCC_GetClocksFreq+0xd2>
 800236e:	fbb2 f7f7 	udiv	r7, r2, r7
 8002372:	6147      	str	r7, [r0, #20]
 8002374:	e000      	b.n	8002378 <RCC_GetClocksFreq+0xd4>
 8002376:	6143      	str	r3, [r0, #20]
 8002378:	4f70      	ldr	r7, [pc, #448]	; (800253c <RCC_GetClocksFreq+0x298>)
 800237a:	f8d7 c030 	ldr.w	ip, [r7, #48]	; 0x30
 800237e:	f01c 0f10 	tst.w	ip, #16
 8002382:	bf0a      	itet	eq
 8002384:	f8df c1b8 	ldreq.w	ip, [pc, #440]	; 8002540 <RCC_GetClocksFreq+0x29c>
 8002388:	6183      	strne	r3, [r0, #24]
 800238a:	f8c0 c018 	streq.w	ip, [r0, #24]
 800238e:	6b3f      	ldr	r7, [r7, #48]	; 0x30
 8002390:	06bf      	lsls	r7, r7, #26
 8002392:	bf56      	itet	pl
 8002394:	4f6a      	ldrpl	r7, [pc, #424]	; (8002540 <RCC_GetClocksFreq+0x29c>)
 8002396:	61c3      	strmi	r3, [r0, #28]
 8002398:	61c7      	strpl	r7, [r0, #28]
 800239a:	4f68      	ldr	r7, [pc, #416]	; (800253c <RCC_GetClocksFreq+0x298>)
 800239c:	f8d7 c030 	ldr.w	ip, [r7, #48]	; 0x30
 80023a0:	f01c 0f40 	tst.w	ip, #64	; 0x40
 80023a4:	bf0a      	itet	eq
 80023a6:	f8df c198 	ldreq.w	ip, [pc, #408]	; 8002540 <RCC_GetClocksFreq+0x29c>
 80023aa:	6203      	strne	r3, [r0, #32]
 80023ac:	f8c0 c020 	streq.w	ip, [r0, #32]
 80023b0:	6b3f      	ldr	r7, [r7, #48]	; 0x30
 80023b2:	05ff      	lsls	r7, r7, #23
 80023b4:	d506      	bpl.n	80023c4 <RCC_GetClocksFreq+0x120>
 80023b6:	4293      	cmp	r3, r2
 80023b8:	d104      	bne.n	80023c4 <RCC_GetClocksFreq+0x120>
 80023ba:	42a5      	cmp	r5, r4
 80023bc:	d102      	bne.n	80023c4 <RCC_GetClocksFreq+0x120>
 80023be:	005f      	lsls	r7, r3, #1
 80023c0:	6247      	str	r7, [r0, #36]	; 0x24
 80023c2:	e000      	b.n	80023c6 <RCC_GetClocksFreq+0x122>
 80023c4:	6241      	str	r1, [r0, #36]	; 0x24
 80023c6:	4f5d      	ldr	r7, [pc, #372]	; (800253c <RCC_GetClocksFreq+0x298>)
 80023c8:	f8d7 c030 	ldr.w	ip, [r7, #48]	; 0x30
 80023cc:	f41c 5f80 	tst.w	ip, #4096	; 0x1000
 80023d0:	d008      	beq.n	80023e4 <RCC_GetClocksFreq+0x140>
 80023d2:	4293      	cmp	r3, r2
 80023d4:	d106      	bne.n	80023e4 <RCC_GetClocksFreq+0x140>
 80023d6:	42a5      	cmp	r5, r4
 80023d8:	d104      	bne.n	80023e4 <RCC_GetClocksFreq+0x140>
 80023da:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 80023de:	f8c0 c028 	str.w	ip, [r0, #40]	; 0x28
 80023e2:	e000      	b.n	80023e6 <RCC_GetClocksFreq+0x142>
 80023e4:	6281      	str	r1, [r0, #40]	; 0x28
 80023e6:	6b3f      	ldr	r7, [r7, #48]	; 0x30
 80023e8:	05bf      	lsls	r7, r7, #22
 80023ea:	d506      	bpl.n	80023fa <RCC_GetClocksFreq+0x156>
 80023ec:	4293      	cmp	r3, r2
 80023ee:	d104      	bne.n	80023fa <RCC_GetClocksFreq+0x156>
 80023f0:	42a5      	cmp	r5, r4
 80023f2:	d102      	bne.n	80023fa <RCC_GetClocksFreq+0x156>
 80023f4:	005f      	lsls	r7, r3, #1
 80023f6:	62c7      	str	r7, [r0, #44]	; 0x2c
 80023f8:	e000      	b.n	80023fc <RCC_GetClocksFreq+0x158>
 80023fa:	62c1      	str	r1, [r0, #44]	; 0x2c
 80023fc:	4f4f      	ldr	r7, [pc, #316]	; (800253c <RCC_GetClocksFreq+0x298>)
 80023fe:	f8d7 c030 	ldr.w	ip, [r7, #48]	; 0x30
 8002402:	f41c 6f80 	tst.w	ip, #1024	; 0x400
 8002406:	d008      	beq.n	800241a <RCC_GetClocksFreq+0x176>
 8002408:	4293      	cmp	r3, r2
 800240a:	d106      	bne.n	800241a <RCC_GetClocksFreq+0x176>
 800240c:	42a5      	cmp	r5, r4
 800240e:	d104      	bne.n	800241a <RCC_GetClocksFreq+0x176>
 8002410:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8002414:	f8c0 c04c 	str.w	ip, [r0, #76]	; 0x4c
 8002418:	e000      	b.n	800241c <RCC_GetClocksFreq+0x178>
 800241a:	64c1      	str	r1, [r0, #76]	; 0x4c
 800241c:	6b3f      	ldr	r7, [r7, #48]	; 0x30
 800241e:	053f      	lsls	r7, r7, #20
 8002420:	d506      	bpl.n	8002430 <RCC_GetClocksFreq+0x18c>
 8002422:	4293      	cmp	r3, r2
 8002424:	d104      	bne.n	8002430 <RCC_GetClocksFreq+0x18c>
 8002426:	42a5      	cmp	r5, r4
 8002428:	d102      	bne.n	8002430 <RCC_GetClocksFreq+0x18c>
 800242a:	005f      	lsls	r7, r3, #1
 800242c:	6507      	str	r7, [r0, #80]	; 0x50
 800242e:	e000      	b.n	8002432 <RCC_GetClocksFreq+0x18e>
 8002430:	6501      	str	r1, [r0, #80]	; 0x50
 8002432:	4f42      	ldr	r7, [pc, #264]	; (800253c <RCC_GetClocksFreq+0x298>)
 8002434:	f8d7 c030 	ldr.w	ip, [r7, #48]	; 0x30
 8002438:	f41c 5f00 	tst.w	ip, #8192	; 0x2000
 800243c:	d008      	beq.n	8002450 <RCC_GetClocksFreq+0x1ac>
 800243e:	4293      	cmp	r3, r2
 8002440:	d106      	bne.n	8002450 <RCC_GetClocksFreq+0x1ac>
 8002442:	42a5      	cmp	r5, r4
 8002444:	d104      	bne.n	8002450 <RCC_GetClocksFreq+0x1ac>
 8002446:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 800244a:	f8c0 c054 	str.w	ip, [r0, #84]	; 0x54
 800244e:	e000      	b.n	8002452 <RCC_GetClocksFreq+0x1ae>
 8002450:	6501      	str	r1, [r0, #80]	; 0x50
 8002452:	6b3f      	ldr	r7, [r7, #48]	; 0x30
 8002454:	043f      	lsls	r7, r7, #16
 8002456:	d506      	bpl.n	8002466 <RCC_GetClocksFreq+0x1c2>
 8002458:	4293      	cmp	r3, r2
 800245a:	d104      	bne.n	8002466 <RCC_GetClocksFreq+0x1c2>
 800245c:	42a5      	cmp	r5, r4
 800245e:	d102      	bne.n	8002466 <RCC_GetClocksFreq+0x1c2>
 8002460:	005a      	lsls	r2, r3, #1
 8002462:	6582      	str	r2, [r0, #88]	; 0x58
 8002464:	e000      	b.n	8002468 <RCC_GetClocksFreq+0x1c4>
 8002466:	6581      	str	r1, [r0, #88]	; 0x58
 8002468:	4a34      	ldr	r2, [pc, #208]	; (800253c <RCC_GetClocksFreq+0x298>)
 800246a:	6b14      	ldr	r4, [r2, #48]	; 0x30
 800246c:	07a4      	lsls	r4, r4, #30
 800246e:	d014      	beq.n	800249a <RCC_GetClocksFreq+0x1f6>
 8002470:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8002472:	f001 0103 	and.w	r1, r1, #3
 8002476:	2901      	cmp	r1, #1
 8002478:	d101      	bne.n	800247e <RCC_GetClocksFreq+0x1da>
 800247a:	6383      	str	r3, [r0, #56]	; 0x38
 800247c:	e00e      	b.n	800249c <RCC_GetClocksFreq+0x1f8>
 800247e:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8002480:	f001 0103 	and.w	r1, r1, #3
 8002484:	2902      	cmp	r1, #2
 8002486:	d102      	bne.n	800248e <RCC_GetClocksFreq+0x1ea>
 8002488:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 800248c:	e005      	b.n	800249a <RCC_GetClocksFreq+0x1f6>
 800248e:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8002490:	f001 0103 	and.w	r1, r1, #3
 8002494:	2903      	cmp	r1, #3
 8002496:	d101      	bne.n	800249c <RCC_GetClocksFreq+0x1f8>
 8002498:	4929      	ldr	r1, [pc, #164]	; (8002540 <RCC_GetClocksFreq+0x29c>)
 800249a:	6381      	str	r1, [r0, #56]	; 0x38
 800249c:	6b12      	ldr	r2, [r2, #48]	; 0x30
 800249e:	4927      	ldr	r1, [pc, #156]	; (800253c <RCC_GetClocksFreq+0x298>)
 80024a0:	f412 3f40 	tst.w	r2, #196608	; 0x30000
 80024a4:	d101      	bne.n	80024aa <RCC_GetClocksFreq+0x206>
 80024a6:	63c6      	str	r6, [r0, #60]	; 0x3c
 80024a8:	e018      	b.n	80024dc <RCC_GetClocksFreq+0x238>
 80024aa:	6b0a      	ldr	r2, [r1, #48]	; 0x30
 80024ac:	f402 3240 	and.w	r2, r2, #196608	; 0x30000
 80024b0:	f5b2 3f80 	cmp.w	r2, #65536	; 0x10000
 80024b4:	d101      	bne.n	80024ba <RCC_GetClocksFreq+0x216>
 80024b6:	63c3      	str	r3, [r0, #60]	; 0x3c
 80024b8:	e010      	b.n	80024dc <RCC_GetClocksFreq+0x238>
 80024ba:	6b0a      	ldr	r2, [r1, #48]	; 0x30
 80024bc:	f402 3240 	and.w	r2, r2, #196608	; 0x30000
 80024c0:	f5b2 3f00 	cmp.w	r2, #131072	; 0x20000
 80024c4:	d102      	bne.n	80024cc <RCC_GetClocksFreq+0x228>
 80024c6:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 80024ca:	e006      	b.n	80024da <RCC_GetClocksFreq+0x236>
 80024cc:	6b0a      	ldr	r2, [r1, #48]	; 0x30
 80024ce:	f402 3240 	and.w	r2, r2, #196608	; 0x30000
 80024d2:	f5b2 3f40 	cmp.w	r2, #196608	; 0x30000
 80024d6:	d101      	bne.n	80024dc <RCC_GetClocksFreq+0x238>
 80024d8:	4a19      	ldr	r2, [pc, #100]	; (8002540 <RCC_GetClocksFreq+0x29c>)
 80024da:	63c2      	str	r2, [r0, #60]	; 0x3c
 80024dc:	4a17      	ldr	r2, [pc, #92]	; (800253c <RCC_GetClocksFreq+0x298>)
 80024de:	6b11      	ldr	r1, [r2, #48]	; 0x30
 80024e0:	f411 2f40 	tst.w	r1, #786432	; 0xc0000
 80024e4:	d101      	bne.n	80024ea <RCC_GetClocksFreq+0x246>
 80024e6:	6406      	str	r6, [r0, #64]	; 0x40
 80024e8:	e018      	b.n	800251c <RCC_GetClocksFreq+0x278>
 80024ea:	6b11      	ldr	r1, [r2, #48]	; 0x30
 80024ec:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 80024f0:	f5b1 2f80 	cmp.w	r1, #262144	; 0x40000
 80024f4:	d101      	bne.n	80024fa <RCC_GetClocksFreq+0x256>
 80024f6:	6403      	str	r3, [r0, #64]	; 0x40
 80024f8:	e010      	b.n	800251c <RCC_GetClocksFreq+0x278>
 80024fa:	6b11      	ldr	r1, [r2, #48]	; 0x30
 80024fc:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 8002500:	f5b1 2f00 	cmp.w	r1, #524288	; 0x80000
 8002504:	d102      	bne.n	800250c <RCC_GetClocksFreq+0x268>
 8002506:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 800250a:	e006      	b.n	800251a <RCC_GetClocksFreq+0x276>
 800250c:	6b11      	ldr	r1, [r2, #48]	; 0x30
 800250e:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 8002512:	f5b1 2f40 	cmp.w	r1, #786432	; 0xc0000
 8002516:	d101      	bne.n	800251c <RCC_GetClocksFreq+0x278>
 8002518:	4909      	ldr	r1, [pc, #36]	; (8002540 <RCC_GetClocksFreq+0x29c>)
 800251a:	6401      	str	r1, [r0, #64]	; 0x40
 800251c:	6b12      	ldr	r2, [r2, #48]	; 0x30
 800251e:	4907      	ldr	r1, [pc, #28]	; (800253c <RCC_GetClocksFreq+0x298>)
 8002520:	f412 1f40 	tst.w	r2, #3145728	; 0x300000
 8002524:	d101      	bne.n	800252a <RCC_GetClocksFreq+0x286>
 8002526:	6446      	str	r6, [r0, #68]	; 0x44
 8002528:	e023      	b.n	8002572 <RCC_GetClocksFreq+0x2ce>
 800252a:	6b0a      	ldr	r2, [r1, #48]	; 0x30
 800252c:	f402 1240 	and.w	r2, r2, #3145728	; 0x300000
 8002530:	f5b2 1f80 	cmp.w	r2, #1048576	; 0x100000
 8002534:	d10c      	bne.n	8002550 <RCC_GetClocksFreq+0x2ac>
 8002536:	6443      	str	r3, [r0, #68]	; 0x44
 8002538:	e01b      	b.n	8002572 <RCC_GetClocksFreq+0x2ce>
 800253a:	bf00      	nop
 800253c:	40021000 	.word	0x40021000
 8002540:	007a1200 	.word	0x007a1200
 8002544:	003d0900 	.word	0x003d0900
 8002548:	20000144 	.word	0x20000144
 800254c:	20000124 	.word	0x20000124
 8002550:	6b0a      	ldr	r2, [r1, #48]	; 0x30
 8002552:	f402 1240 	and.w	r2, r2, #3145728	; 0x300000
 8002556:	f5b2 1f00 	cmp.w	r2, #2097152	; 0x200000
 800255a:	d102      	bne.n	8002562 <RCC_GetClocksFreq+0x2be>
 800255c:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 8002560:	e006      	b.n	8002570 <RCC_GetClocksFreq+0x2cc>
 8002562:	6b0a      	ldr	r2, [r1, #48]	; 0x30
 8002564:	f402 1240 	and.w	r2, r2, #3145728	; 0x300000
 8002568:	f5b2 1f40 	cmp.w	r2, #3145728	; 0x300000
 800256c:	d101      	bne.n	8002572 <RCC_GetClocksFreq+0x2ce>
 800256e:	4a11      	ldr	r2, [pc, #68]	; (80025b4 <RCC_GetClocksFreq+0x310>)
 8002570:	6442      	str	r2, [r0, #68]	; 0x44
 8002572:	4a11      	ldr	r2, [pc, #68]	; (80025b8 <RCC_GetClocksFreq+0x314>)
 8002574:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8002576:	f411 0f40 	tst.w	r1, #12582912	; 0xc00000
 800257a:	d102      	bne.n	8002582 <RCC_GetClocksFreq+0x2de>
 800257c:	6486      	str	r6, [r0, #72]	; 0x48
 800257e:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8002582:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8002584:	f401 0140 	and.w	r1, r1, #12582912	; 0xc00000
 8002588:	f5b1 0f80 	cmp.w	r1, #4194304	; 0x400000
 800258c:	d00f      	beq.n	80025ae <RCC_GetClocksFreq+0x30a>
 800258e:	6b13      	ldr	r3, [r2, #48]	; 0x30
 8002590:	f403 0340 	and.w	r3, r3, #12582912	; 0xc00000
 8002594:	f5b3 0f00 	cmp.w	r3, #8388608	; 0x800000
 8002598:	d102      	bne.n	80025a0 <RCC_GetClocksFreq+0x2fc>
 800259a:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 800259e:	e006      	b.n	80025ae <RCC_GetClocksFreq+0x30a>
 80025a0:	6b13      	ldr	r3, [r2, #48]	; 0x30
 80025a2:	f403 0340 	and.w	r3, r3, #12582912	; 0xc00000
 80025a6:	f5b3 0f40 	cmp.w	r3, #12582912	; 0xc00000
 80025aa:	d101      	bne.n	80025b0 <RCC_GetClocksFreq+0x30c>
 80025ac:	4b01      	ldr	r3, [pc, #4]	; (80025b4 <RCC_GetClocksFreq+0x310>)
 80025ae:	6483      	str	r3, [r0, #72]	; 0x48
 80025b0:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 80025b4:	007a1200 	.word	0x007a1200
 80025b8:	40021000 	.word	0x40021000

080025bc <RCC_AHBPeriphClockCmd>:
 80025bc:	bf00      	nop
 80025be:	bf00      	nop
 80025c0:	4b04      	ldr	r3, [pc, #16]	; (80025d4 <RCC_AHBPeriphClockCmd+0x18>)
 80025c2:	695a      	ldr	r2, [r3, #20]
 80025c4:	b109      	cbz	r1, 80025ca <RCC_AHBPeriphClockCmd+0xe>
 80025c6:	4310      	orrs	r0, r2
 80025c8:	e001      	b.n	80025ce <RCC_AHBPeriphClockCmd+0x12>
 80025ca:	ea22 0000 	bic.w	r0, r2, r0
 80025ce:	6158      	str	r0, [r3, #20]
 80025d0:	4770      	bx	lr
 80025d2:	bf00      	nop
 80025d4:	40021000 	.word	0x40021000

080025d8 <RCC_APB2PeriphClockCmd>:
 80025d8:	bf00      	nop
 80025da:	bf00      	nop
 80025dc:	4b04      	ldr	r3, [pc, #16]	; (80025f0 <RCC_APB2PeriphClockCmd+0x18>)
 80025de:	699a      	ldr	r2, [r3, #24]
 80025e0:	b109      	cbz	r1, 80025e6 <RCC_APB2PeriphClockCmd+0xe>
 80025e2:	4310      	orrs	r0, r2
 80025e4:	e001      	b.n	80025ea <RCC_APB2PeriphClockCmd+0x12>
 80025e6:	ea22 0000 	bic.w	r0, r2, r0
 80025ea:	6198      	str	r0, [r3, #24]
 80025ec:	4770      	bx	lr
 80025ee:	bf00      	nop
 80025f0:	40021000 	.word	0x40021000

080025f4 <RCC_APB1PeriphClockCmd>:
 80025f4:	bf00      	nop
 80025f6:	bf00      	nop
 80025f8:	4b04      	ldr	r3, [pc, #16]	; (800260c <RCC_APB1PeriphClockCmd+0x18>)
 80025fa:	69da      	ldr	r2, [r3, #28]
 80025fc:	b109      	cbz	r1, 8002602 <RCC_APB1PeriphClockCmd+0xe>
 80025fe:	4310      	orrs	r0, r2
 8002600:	e001      	b.n	8002606 <RCC_APB1PeriphClockCmd+0x12>
 8002602:	ea22 0000 	bic.w	r0, r2, r0
 8002606:	61d8      	str	r0, [r3, #28]
 8002608:	4770      	bx	lr
 800260a:	bf00      	nop
 800260c:	40021000 	.word	0x40021000

08002610 <lib_low_level_init>:
 8002610:	b508      	push	{r3, lr}
 8002612:	f7ff fd83 	bl	800211c <sytem_clock_init>
 8002616:	f000 f871 	bl	80026fc <gpio_init>
 800261a:	f7ff fc33 	bl	8001e84 <uart_init>
 800261e:	f7ff fa53 	bl	8001ac8 <timer_init>
 8002622:	f7ff f911 	bl	8001848 <pwm_init>
 8002626:	f7ff f891 	bl	800174c <drv8834_init>
 800262a:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800262e:	f7ff bb63 	b.w	8001cf8 <i2c_0_init>

08002632 <GPIO_Init>:
 8002632:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002634:	bf00      	nop
 8002636:	bf00      	nop
 8002638:	bf00      	nop
 800263a:	bf00      	nop
 800263c:	2300      	movs	r3, #0
 800263e:	680e      	ldr	r6, [r1, #0]
 8002640:	461a      	mov	r2, r3
 8002642:	2501      	movs	r5, #1
 8002644:	4095      	lsls	r5, r2
 8002646:	ea05 0406 	and.w	r4, r5, r6
 800264a:	42ac      	cmp	r4, r5
 800264c:	d131      	bne.n	80026b2 <GPIO_Init+0x80>
 800264e:	790d      	ldrb	r5, [r1, #4]
 8002650:	1e6f      	subs	r7, r5, #1
 8002652:	b2ff      	uxtb	r7, r7
 8002654:	2f01      	cmp	r7, #1
 8002656:	d81c      	bhi.n	8002692 <GPIO_Init+0x60>
 8002658:	bf00      	nop
 800265a:	f04f 0c03 	mov.w	ip, #3
 800265e:	6887      	ldr	r7, [r0, #8]
 8002660:	fa0c fc03 	lsl.w	ip, ip, r3
 8002664:	ea27 070c 	bic.w	r7, r7, ip
 8002668:	6087      	str	r7, [r0, #8]
 800266a:	f891 c005 	ldrb.w	ip, [r1, #5]
 800266e:	6887      	ldr	r7, [r0, #8]
 8002670:	fa0c fc03 	lsl.w	ip, ip, r3
 8002674:	ea4c 0707 	orr.w	r7, ip, r7
 8002678:	6087      	str	r7, [r0, #8]
 800267a:	bf00      	nop
 800267c:	8887      	ldrh	r7, [r0, #4]
 800267e:	b2bf      	uxth	r7, r7
 8002680:	ea27 0404 	bic.w	r4, r7, r4
 8002684:	8084      	strh	r4, [r0, #4]
 8002686:	798c      	ldrb	r4, [r1, #6]
 8002688:	8887      	ldrh	r7, [r0, #4]
 800268a:	4094      	lsls	r4, r2
 800268c:	433c      	orrs	r4, r7
 800268e:	b2a4      	uxth	r4, r4
 8002690:	8084      	strh	r4, [r0, #4]
 8002692:	2403      	movs	r4, #3
 8002694:	6807      	ldr	r7, [r0, #0]
 8002696:	409c      	lsls	r4, r3
 8002698:	43e4      	mvns	r4, r4
 800269a:	4027      	ands	r7, r4
 800269c:	6007      	str	r7, [r0, #0]
 800269e:	6807      	ldr	r7, [r0, #0]
 80026a0:	409d      	lsls	r5, r3
 80026a2:	433d      	orrs	r5, r7
 80026a4:	6005      	str	r5, [r0, #0]
 80026a6:	68c5      	ldr	r5, [r0, #12]
 80026a8:	402c      	ands	r4, r5
 80026aa:	79cd      	ldrb	r5, [r1, #7]
 80026ac:	409d      	lsls	r5, r3
 80026ae:	432c      	orrs	r4, r5
 80026b0:	60c4      	str	r4, [r0, #12]
 80026b2:	3201      	adds	r2, #1
 80026b4:	2a10      	cmp	r2, #16
 80026b6:	f103 0302 	add.w	r3, r3, #2
 80026ba:	d1c2      	bne.n	8002642 <GPIO_Init+0x10>
 80026bc:	bdf0      	pop	{r4, r5, r6, r7, pc}

080026be <GPIO_SetBits>:
 80026be:	bf00      	nop
 80026c0:	bf00      	nop
 80026c2:	6181      	str	r1, [r0, #24]
 80026c4:	4770      	bx	lr

080026c6 <GPIO_ResetBits>:
 80026c6:	bf00      	nop
 80026c8:	bf00      	nop
 80026ca:	8501      	strh	r1, [r0, #40]	; 0x28
 80026cc:	4770      	bx	lr

080026ce <GPIO_PinAFConfig>:
 80026ce:	b510      	push	{r4, lr}
 80026d0:	bf00      	nop
 80026d2:	bf00      	nop
 80026d4:	bf00      	nop
 80026d6:	f001 0307 	and.w	r3, r1, #7
 80026da:	08c9      	lsrs	r1, r1, #3
 80026dc:	eb00 0081 	add.w	r0, r0, r1, lsl #2
 80026e0:	009b      	lsls	r3, r3, #2
 80026e2:	6a04      	ldr	r4, [r0, #32]
 80026e4:	210f      	movs	r1, #15
 80026e6:	4099      	lsls	r1, r3
 80026e8:	ea24 0101 	bic.w	r1, r4, r1
 80026ec:	6201      	str	r1, [r0, #32]
 80026ee:	6a01      	ldr	r1, [r0, #32]
 80026f0:	fa02 f303 	lsl.w	r3, r2, r3
 80026f4:	430b      	orrs	r3, r1
 80026f6:	6203      	str	r3, [r0, #32]
 80026f8:	bd10      	pop	{r4, pc}
	...

080026fc <gpio_init>:
 80026fc:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
 8002700:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 8002704:	2101      	movs	r1, #1
 8002706:	f7ff ff59 	bl	80025bc <RCC_AHBPeriphClockCmd>
 800270a:	4d21      	ldr	r5, [pc, #132]	; (8002790 <gpio_init+0x94>)
 800270c:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 8002710:	2101      	movs	r1, #1
 8002712:	f7ff ff53 	bl	80025bc <RCC_AHBPeriphClockCmd>
 8002716:	f44f 2000 	mov.w	r0, #524288	; 0x80000
 800271a:	2101      	movs	r1, #1
 800271c:	f7ff ff4e 	bl	80025bc <RCC_AHBPeriphClockCmd>
 8002720:	2400      	movs	r4, #0
 8002722:	2603      	movs	r6, #3
 8002724:	f44f 4900 	mov.w	r9, #32768	; 0x8000
 8002728:	2701      	movs	r7, #1
 800272a:	4628      	mov	r0, r5
 800272c:	4669      	mov	r1, sp
 800272e:	f88d 7004 	strb.w	r7, [sp, #4]
 8002732:	f8cd 9000 	str.w	r9, [sp]
 8002736:	f88d 4006 	strb.w	r4, [sp, #6]
 800273a:	f88d 6005 	strb.w	r6, [sp, #5]
 800273e:	f88d 4007 	strb.w	r4, [sp, #7]
 8002742:	f7ff ff76 	bl	8002632 <GPIO_Init>
 8002746:	f88d 7004 	strb.w	r7, [sp, #4]
 800274a:	4f12      	ldr	r7, [pc, #72]	; (8002794 <gpio_init+0x98>)
 800274c:	f88d 4006 	strb.w	r4, [sp, #6]
 8002750:	f44f 5800 	mov.w	r8, #8192	; 0x2000
 8002754:	4638      	mov	r0, r7
 8002756:	4669      	mov	r1, sp
 8002758:	f8cd 8000 	str.w	r8, [sp]
 800275c:	f88d 6005 	strb.w	r6, [sp, #5]
 8002760:	f88d 4007 	strb.w	r4, [sp, #7]
 8002764:	f7ff ff65 	bl	8002632 <GPIO_Init>
 8002768:	f44f 7300 	mov.w	r3, #512	; 0x200
 800276c:	4628      	mov	r0, r5
 800276e:	4669      	mov	r1, sp
 8002770:	9300      	str	r3, [sp, #0]
 8002772:	f88d 4004 	strb.w	r4, [sp, #4]
 8002776:	f88d 6005 	strb.w	r6, [sp, #5]
 800277a:	f88d 4007 	strb.w	r4, [sp, #7]
 800277e:	f7ff ff58 	bl	8002632 <GPIO_Init>
 8002782:	f8c5 9018 	str.w	r9, [r5, #24]
 8002786:	f8c7 8018 	str.w	r8, [r7, #24]
 800278a:	b003      	add	sp, #12
 800278c:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8002790:	48000400 	.word	0x48000400
 8002794:	48000800 	.word	0x48000800

08002798 <led_on>:
 8002798:	0402      	lsls	r2, r0, #16
 800279a:	d503      	bpl.n	80027a4 <led_on+0xc>
 800279c:	4b05      	ldr	r3, [pc, #20]	; (80027b4 <led_on+0x1c>)
 800279e:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 80027a2:	619a      	str	r2, [r3, #24]
 80027a4:	0483      	lsls	r3, r0, #18
 80027a6:	d503      	bpl.n	80027b0 <led_on+0x18>
 80027a8:	4b03      	ldr	r3, [pc, #12]	; (80027b8 <led_on+0x20>)
 80027aa:	f44f 5200 	mov.w	r2, #8192	; 0x2000
 80027ae:	851a      	strh	r2, [r3, #40]	; 0x28
 80027b0:	4770      	bx	lr
 80027b2:	bf00      	nop
 80027b4:	48000400 	.word	0x48000400
 80027b8:	48000800 	.word	0x48000800

080027bc <led_off>:
 80027bc:	0403      	lsls	r3, r0, #16
 80027be:	d503      	bpl.n	80027c8 <led_off+0xc>
 80027c0:	4b05      	ldr	r3, [pc, #20]	; (80027d8 <led_off+0x1c>)
 80027c2:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 80027c6:	851a      	strh	r2, [r3, #40]	; 0x28
 80027c8:	0481      	lsls	r1, r0, #18
 80027ca:	d503      	bpl.n	80027d4 <led_off+0x18>
 80027cc:	4b03      	ldr	r3, [pc, #12]	; (80027dc <led_off+0x20>)
 80027ce:	f44f 5200 	mov.w	r2, #8192	; 0x2000
 80027d2:	619a      	str	r2, [r3, #24]
 80027d4:	4770      	bx	lr
 80027d6:	bf00      	nop
 80027d8:	48000400 	.word	0x48000400
 80027dc:	48000800 	.word	0x48000800

080027e0 <get_key>:
 80027e0:	4b02      	ldr	r3, [pc, #8]	; (80027ec <get_key+0xc>)
 80027e2:	8a18      	ldrh	r0, [r3, #16]
 80027e4:	43c0      	mvns	r0, r0
 80027e6:	f400 7000 	and.w	r0, r0, #512	; 0x200
 80027ea:	4770      	bx	lr
 80027ec:	48000400 	.word	0x48000400

080027f0 <NVIC_Init>:
 80027f0:	b510      	push	{r4, lr}
 80027f2:	bf00      	nop
 80027f4:	bf00      	nop
 80027f6:	bf00      	nop
 80027f8:	78c2      	ldrb	r2, [r0, #3]
 80027fa:	7803      	ldrb	r3, [r0, #0]
 80027fc:	b30a      	cbz	r2, 8002842 <NVIC_Init+0x52>
 80027fe:	4a16      	ldr	r2, [pc, #88]	; (8002858 <NVIC_Init+0x68>)
 8002800:	7844      	ldrb	r4, [r0, #1]
 8002802:	68d2      	ldr	r2, [r2, #12]
 8002804:	43d2      	mvns	r2, r2
 8002806:	f3c2 2202 	ubfx	r2, r2, #8, #3
 800280a:	f1c2 0104 	rsb	r1, r2, #4
 800280e:	b2c9      	uxtb	r1, r1
 8002810:	fa04 f101 	lsl.w	r1, r4, r1
 8002814:	240f      	movs	r4, #15
 8002816:	fa44 f202 	asr.w	r2, r4, r2
 800281a:	7884      	ldrb	r4, [r0, #2]
 800281c:	b2c9      	uxtb	r1, r1
 800281e:	4022      	ands	r2, r4
 8002820:	430a      	orrs	r2, r1
 8002822:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
 8002826:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
 800282a:	0112      	lsls	r2, r2, #4
 800282c:	b2d2      	uxtb	r2, r2
 800282e:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
 8002832:	7803      	ldrb	r3, [r0, #0]
 8002834:	2201      	movs	r2, #1
 8002836:	0959      	lsrs	r1, r3, #5
 8002838:	f003 031f 	and.w	r3, r3, #31
 800283c:	fa02 f303 	lsl.w	r3, r2, r3
 8002840:	e006      	b.n	8002850 <NVIC_Init+0x60>
 8002842:	0959      	lsrs	r1, r3, #5
 8002844:	2201      	movs	r2, #1
 8002846:	f003 031f 	and.w	r3, r3, #31
 800284a:	fa02 f303 	lsl.w	r3, r2, r3
 800284e:	3120      	adds	r1, #32
 8002850:	4a02      	ldr	r2, [pc, #8]	; (800285c <NVIC_Init+0x6c>)
 8002852:	f842 3021 	str.w	r3, [r2, r1, lsl #2]
 8002856:	bd10      	pop	{r4, pc}
 8002858:	e000ed00 	.word	0xe000ed00
 800285c:	e000e100 	.word	0xe000e100

08002860 <_init>:
 8002860:	e1a0c00d 	mov	ip, sp
 8002864:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
 8002868:	e24cb004 	sub	fp, ip, #4
 800286c:	e24bd028 	sub	sp, fp, #40	; 0x28
 8002870:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
 8002874:	e12fff1e 	bx	lr

08002878 <_fini>:
 8002878:	e1a0c00d 	mov	ip, sp
 800287c:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
 8002880:	e24cb004 	sub	fp, ip, #4
 8002884:	e24bd028 	sub	sp, fp, #40	; 0x28
 8002888:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
 800288c:	e12fff1e 	bx	lr
 8002890:	69647473 	.word	0x69647473
 8002894:	6e69206f 	.word	0x6e69206f
 8002898:	64207469 	.word	0x64207469
 800289c:	0a656e6f 	.word	0x0a656e6f
 80028a0:	00          	.byte	0x00
 80028a1:	65          	.byte	0x65
 80028a2:	7272      	.short	0x7272
 80028a4:	6320726f 	.word	0x6320726f
 80028a8:	2065646f 	.word	0x2065646f
 80028ac:	253a7525 	.word	0x253a7525
 80028b0:	0a75      	.short	0x0a75
 80028b2:	00          	.byte	0x00
 80028b3:	0a          	.byte	0x0a
 80028b4:	636c6577 	.word	0x636c6577
 80028b8:	20656d6f 	.word	0x20656d6f
 80028bc:	53206f74 	.word	0x53206f74
 80028c0:	68757a75 	.word	0x68757a75
 80028c4:	20534f61 	.word	0x20534f61
 80028c8:	205e5f5e 	.word	0x205e5f5e
 80028cc:	2e302e32 	.word	0x2e302e32
 80028d0:	55420a36 	.word	0x55420a36
 80028d4:	20444c49 	.word	0x20444c49
 80028d8:	2072614d 	.word	0x2072614d
 80028dc:	32203332 	.word	0x32203332
 80028e0:	20363130 	.word	0x20363130
 80028e4:	333a3231 	.word	0x333a3231
 80028e8:	30353a35 	.word	0x30353a35
 80028ec:	7973000a 	.word	0x7973000a
 80028f0:	6d657473 	.word	0x6d657473
 80028f4:	6f626120 	.word	0x6f626120
 80028f8:	64657472 	.word	0x64657472
 80028fc:	0000000a 	.word	0x0000000a

08002900 <__EH_FRAME_BEGIN__>:
 8002900:	00000000                                ....
