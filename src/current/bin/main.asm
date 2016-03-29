
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
 80001aa:	f002 fa93 	bl	80026d4 <sleep>
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
 8000282:	f002 fa15 	bl	80026b0 <sys_tick_init>
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

080003ac <messages_init>:
 80003ac:	4a0a      	ldr	r2, [pc, #40]	; (80003d8 <messages_init+0x2c>)
 80003ae:	2300      	movs	r3, #0
 80003b0:	b510      	push	{r4, lr}
 80003b2:	6013      	str	r3, [r2, #0]
 80003b4:	6053      	str	r3, [r2, #4]
 80003b6:	6093      	str	r3, [r2, #8]
 80003b8:	60d3      	str	r3, [r2, #12]
 80003ba:	6113      	str	r3, [r2, #16]
 80003bc:	6153      	str	r3, [r2, #20]
 80003be:	4c07      	ldr	r4, [pc, #28]	; (80003dc <messages_init+0x30>)
 80003c0:	0118      	lsls	r0, r3, #4
 80003c2:	1821      	adds	r1, r4, r0
 80003c4:	3301      	adds	r3, #1
 80003c6:	2200      	movs	r2, #0
 80003c8:	2b04      	cmp	r3, #4
 80003ca:	604a      	str	r2, [r1, #4]
 80003cc:	5022      	str	r2, [r4, r0]
 80003ce:	60ca      	str	r2, [r1, #12]
 80003d0:	608a      	str	r2, [r1, #8]
 80003d2:	d1f4      	bne.n	80003be <messages_init+0x12>
 80003d4:	bd10      	pop	{r4, pc}
 80003d6:	bf00      	nop
 80003d8:	20000270 	.word	0x20000270
 80003dc:	20000288 	.word	0x20000288

080003e0 <putc_>:
 80003e0:	b538      	push	{r3, r4, r5, lr}
 80003e2:	4c06      	ldr	r4, [pc, #24]	; (80003fc <putc_+0x1c>)
 80003e4:	4605      	mov	r5, r0
 80003e6:	4620      	mov	r0, r4
 80003e8:	f000 f901 	bl	80005ee <mutex_lock>
 80003ec:	4628      	mov	r0, r5
 80003ee:	f001 fea5 	bl	800213c <uart_write>
 80003f2:	4620      	mov	r0, r4
 80003f4:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 80003f8:	f000 b915 	b.w	8000626 <mutex_unlock>
 80003fc:	200002c8 	.word	0x200002c8

08000400 <puts_>:
 8000400:	b510      	push	{r4, lr}
 8000402:	4604      	mov	r4, r0
 8000404:	4807      	ldr	r0, [pc, #28]	; (8000424 <puts_+0x24>)
 8000406:	f000 f8f2 	bl	80005ee <mutex_lock>
 800040a:	3c01      	subs	r4, #1
 800040c:	f814 0f01 	ldrb.w	r0, [r4, #1]!
 8000410:	b110      	cbz	r0, 8000418 <puts_+0x18>
 8000412:	f7ff ffe5 	bl	80003e0 <putc_>
 8000416:	e7f9      	b.n	800040c <puts_+0xc>
 8000418:	4802      	ldr	r0, [pc, #8]	; (8000424 <puts_+0x24>)
 800041a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800041e:	f000 b902 	b.w	8000626 <mutex_unlock>
 8000422:	bf00      	nop
 8000424:	200002d4 	.word	0x200002d4

08000428 <puti_>:
 8000428:	b530      	push	{r4, r5, lr}
 800042a:	b085      	sub	sp, #20
 800042c:	1e03      	subs	r3, r0, #0
 800042e:	f04f 0200 	mov.w	r2, #0
 8000432:	bfa8      	it	ge
 8000434:	4614      	movge	r4, r2
 8000436:	f88d 200f 	strb.w	r2, [sp, #15]
 800043a:	bfbc      	itt	lt
 800043c:	425b      	neglt	r3, r3
 800043e:	2401      	movlt	r4, #1
 8000440:	220a      	movs	r2, #10
 8000442:	210a      	movs	r1, #10
 8000444:	fb93 f5f1 	sdiv	r5, r3, r1
 8000448:	fb01 3315 	mls	r3, r1, r5, r3
 800044c:	a801      	add	r0, sp, #4
 800044e:	3330      	adds	r3, #48	; 0x30
 8000450:	5413      	strb	r3, [r2, r0]
 8000452:	1e51      	subs	r1, r2, #1
 8000454:	462b      	mov	r3, r5
 8000456:	b10d      	cbz	r5, 800045c <puti_+0x34>
 8000458:	460a      	mov	r2, r1
 800045a:	e7f2      	b.n	8000442 <puti_+0x1a>
 800045c:	b12c      	cbz	r4, 800046a <puti_+0x42>
 800045e:	ab04      	add	r3, sp, #16
 8000460:	440b      	add	r3, r1
 8000462:	222d      	movs	r2, #45	; 0x2d
 8000464:	f803 2c0c 	strb.w	r2, [r3, #-12]
 8000468:	460a      	mov	r2, r1
 800046a:	4410      	add	r0, r2
 800046c:	f7ff ffc8 	bl	8000400 <puts_>
 8000470:	b005      	add	sp, #20
 8000472:	bd30      	pop	{r4, r5, pc}

08000474 <putui_>:
 8000474:	b51f      	push	{r0, r1, r2, r3, r4, lr}
 8000476:	2300      	movs	r3, #0
 8000478:	f88d 300f 	strb.w	r3, [sp, #15]
 800047c:	230a      	movs	r3, #10
 800047e:	240a      	movs	r4, #10
 8000480:	fbb0 f1f4 	udiv	r1, r0, r4
 8000484:	fb04 0011 	mls	r0, r4, r1, r0
 8000488:	aa01      	add	r2, sp, #4
 800048a:	3030      	adds	r0, #48	; 0x30
 800048c:	5498      	strb	r0, [r3, r2]
 800048e:	1e5c      	subs	r4, r3, #1
 8000490:	4608      	mov	r0, r1
 8000492:	b109      	cbz	r1, 8000498 <putui_+0x24>
 8000494:	4623      	mov	r3, r4
 8000496:	e7f2      	b.n	800047e <putui_+0xa>
 8000498:	18d0      	adds	r0, r2, r3
 800049a:	f7ff ffb1 	bl	8000400 <puts_>
 800049e:	b004      	add	sp, #16
 80004a0:	bd10      	pop	{r4, pc}

080004a2 <putx_>:
 80004a2:	b51f      	push	{r0, r1, r2, r3, r4, lr}
 80004a4:	2300      	movs	r3, #0
 80004a6:	f88d 300f 	strb.w	r3, [sp, #15]
 80004aa:	230a      	movs	r3, #10
 80004ac:	f000 010f 	and.w	r1, r0, #15
 80004b0:	2909      	cmp	r1, #9
 80004b2:	aa01      	add	r2, sp, #4
 80004b4:	bf94      	ite	ls
 80004b6:	3130      	addls	r1, #48	; 0x30
 80004b8:	3157      	addhi	r1, #87	; 0x57
 80004ba:	0900      	lsrs	r0, r0, #4
 80004bc:	54d1      	strb	r1, [r2, r3]
 80004be:	f103 31ff 	add.w	r1, r3, #4294967295
 80004c2:	d001      	beq.n	80004c8 <putx_+0x26>
 80004c4:	460b      	mov	r3, r1
 80004c6:	e7f1      	b.n	80004ac <putx_+0xa>
 80004c8:	18d0      	adds	r0, r2, r3
 80004ca:	f7ff ff99 	bl	8000400 <puts_>
 80004ce:	b005      	add	sp, #20
 80004d0:	f85d fb04 	ldr.w	pc, [sp], #4

080004d4 <printf_>:
 80004d4:	b40f      	push	{r0, r1, r2, r3}
 80004d6:	b537      	push	{r0, r1, r2, r4, r5, lr}
 80004d8:	ac06      	add	r4, sp, #24
 80004da:	4826      	ldr	r0, [pc, #152]	; (8000574 <printf_+0xa0>)
 80004dc:	f854 5b04 	ldr.w	r5, [r4], #4
 80004e0:	f000 f885 	bl	80005ee <mutex_lock>
 80004e4:	9401      	str	r4, [sp, #4]
 80004e6:	2400      	movs	r4, #0
 80004e8:	5d28      	ldrb	r0, [r5, r4]
 80004ea:	2800      	cmp	r0, #0
 80004ec:	d039      	beq.n	8000562 <printf_+0x8e>
 80004ee:	2825      	cmp	r0, #37	; 0x25
 80004f0:	d003      	beq.n	80004fa <printf_+0x26>
 80004f2:	f7ff ff75 	bl	80003e0 <putc_>
 80004f6:	3401      	adds	r4, #1
 80004f8:	e7f6      	b.n	80004e8 <printf_+0x14>
 80004fa:	192b      	adds	r3, r5, r4
 80004fc:	7858      	ldrb	r0, [r3, #1]
 80004fe:	2869      	cmp	r0, #105	; 0x69
 8000500:	d016      	beq.n	8000530 <printf_+0x5c>
 8000502:	d808      	bhi.n	8000516 <printf_+0x42>
 8000504:	2825      	cmp	r0, #37	; 0x25
 8000506:	d028      	beq.n	800055a <printf_+0x86>
 8000508:	2863      	cmp	r0, #99	; 0x63
 800050a:	d128      	bne.n	800055e <printf_+0x8a>
 800050c:	9b01      	ldr	r3, [sp, #4]
 800050e:	1d1a      	adds	r2, r3, #4
 8000510:	9201      	str	r2, [sp, #4]
 8000512:	7818      	ldrb	r0, [r3, #0]
 8000514:	e021      	b.n	800055a <printf_+0x86>
 8000516:	2875      	cmp	r0, #117	; 0x75
 8000518:	d011      	beq.n	800053e <printf_+0x6a>
 800051a:	2878      	cmp	r0, #120	; 0x78
 800051c:	d016      	beq.n	800054c <printf_+0x78>
 800051e:	2873      	cmp	r0, #115	; 0x73
 8000520:	d11d      	bne.n	800055e <printf_+0x8a>
 8000522:	9b01      	ldr	r3, [sp, #4]
 8000524:	1d1a      	adds	r2, r3, #4
 8000526:	6818      	ldr	r0, [r3, #0]
 8000528:	9201      	str	r2, [sp, #4]
 800052a:	f7ff ff69 	bl	8000400 <puts_>
 800052e:	e016      	b.n	800055e <printf_+0x8a>
 8000530:	9b01      	ldr	r3, [sp, #4]
 8000532:	1d1a      	adds	r2, r3, #4
 8000534:	6818      	ldr	r0, [r3, #0]
 8000536:	9201      	str	r2, [sp, #4]
 8000538:	f7ff ff76 	bl	8000428 <puti_>
 800053c:	e00f      	b.n	800055e <printf_+0x8a>
 800053e:	9b01      	ldr	r3, [sp, #4]
 8000540:	1d1a      	adds	r2, r3, #4
 8000542:	6818      	ldr	r0, [r3, #0]
 8000544:	9201      	str	r2, [sp, #4]
 8000546:	f7ff ff95 	bl	8000474 <putui_>
 800054a:	e008      	b.n	800055e <printf_+0x8a>
 800054c:	9b01      	ldr	r3, [sp, #4]
 800054e:	1d1a      	adds	r2, r3, #4
 8000550:	6818      	ldr	r0, [r3, #0]
 8000552:	9201      	str	r2, [sp, #4]
 8000554:	f7ff ffa5 	bl	80004a2 <putx_>
 8000558:	e001      	b.n	800055e <printf_+0x8a>
 800055a:	f7ff ff41 	bl	80003e0 <putc_>
 800055e:	3402      	adds	r4, #2
 8000560:	e7c2      	b.n	80004e8 <printf_+0x14>
 8000562:	4804      	ldr	r0, [pc, #16]	; (8000574 <printf_+0xa0>)
 8000564:	f000 f85f 	bl	8000626 <mutex_unlock>
 8000568:	b003      	add	sp, #12
 800056a:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
 800056e:	b004      	add	sp, #16
 8000570:	4770      	bx	lr
 8000572:	bf00      	nop
 8000574:	200002d0 	.word	0x200002d0

08000578 <stdio_init>:
 8000578:	b510      	push	{r4, lr}
 800057a:	480e      	ldr	r0, [pc, #56]	; (80005b4 <stdio_init+0x3c>)
 800057c:	f000 f82d 	bl	80005da <mutex_init>
 8000580:	480d      	ldr	r0, [pc, #52]	; (80005b8 <stdio_init+0x40>)
 8000582:	f000 f82a 	bl	80005da <mutex_init>
 8000586:	480d      	ldr	r0, [pc, #52]	; (80005bc <stdio_init+0x44>)
 8000588:	f000 f827 	bl	80005da <mutex_init>
 800058c:	480c      	ldr	r0, [pc, #48]	; (80005c0 <stdio_init+0x48>)
 800058e:	f000 f824 	bl	80005da <mutex_init>
 8000592:	2408      	movs	r4, #8
 8000594:	2020      	movs	r0, #32
 8000596:	f7ff ff23 	bl	80003e0 <putc_>
 800059a:	3c01      	subs	r4, #1
 800059c:	d1fa      	bne.n	8000594 <stdio_init+0x1c>
 800059e:	2420      	movs	r4, #32
 80005a0:	200a      	movs	r0, #10
 80005a2:	f7ff ff1d 	bl	80003e0 <putc_>
 80005a6:	3c01      	subs	r4, #1
 80005a8:	d1fa      	bne.n	80005a0 <stdio_init+0x28>
 80005aa:	4806      	ldr	r0, [pc, #24]	; (80005c4 <stdio_init+0x4c>)
 80005ac:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80005b0:	f7ff bf90 	b.w	80004d4 <printf_>
 80005b4:	200002c8 	.word	0x200002c8
 80005b8:	200002cc 	.word	0x200002cc
 80005bc:	200002d4 	.word	0x200002d4
 80005c0:	200002d0 	.word	0x200002d0
 80005c4:	08002bd0 	.word	0x08002bd0

080005c8 <lib_os_init>:
 80005c8:	b508      	push	{r3, lr}
 80005ca:	f7ff fe99 	bl	8000300 <kernel_init>
 80005ce:	f7ff feed 	bl	80003ac <messages_init>
 80005d2:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80005d6:	f7ff bfcf 	b.w	8000578 <stdio_init>

080005da <mutex_init>:
 80005da:	b510      	push	{r4, lr}
 80005dc:	4604      	mov	r4, r0
 80005de:	f7ff fe3d 	bl	800025c <sched_off>
 80005e2:	2300      	movs	r3, #0
 80005e4:	6023      	str	r3, [r4, #0]
 80005e6:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80005ea:	f7ff be39 	b.w	8000260 <sched_on>

080005ee <mutex_lock>:
 80005ee:	b513      	push	{r0, r1, r4, lr}
 80005f0:	4604      	mov	r4, r0
 80005f2:	f7ff fe33 	bl	800025c <sched_off>
 80005f6:	6823      	ldr	r3, [r4, #0]
 80005f8:	9301      	str	r3, [sp, #4]
 80005fa:	f7ff fe31 	bl	8000260 <sched_on>
 80005fe:	9b01      	ldr	r3, [sp, #4]
 8000600:	b10b      	cbz	r3, 8000606 <mutex_lock+0x18>
 8000602:	f7ff fe9f 	bl	8000344 <set_wait_state>
 8000606:	9b01      	ldr	r3, [sp, #4]
 8000608:	2b00      	cmp	r3, #0
 800060a:	d1f2      	bne.n	80005f2 <mutex_lock+0x4>
 800060c:	f7ff fe26 	bl	800025c <sched_off>
 8000610:	6823      	ldr	r3, [r4, #0]
 8000612:	9301      	str	r3, [sp, #4]
 8000614:	9b01      	ldr	r3, [sp, #4]
 8000616:	2b00      	cmp	r3, #0
 8000618:	d1eb      	bne.n	80005f2 <mutex_lock+0x4>
 800061a:	2301      	movs	r3, #1
 800061c:	6023      	str	r3, [r4, #0]
 800061e:	f7ff fe1f 	bl	8000260 <sched_on>
 8000622:	b002      	add	sp, #8
 8000624:	bd10      	pop	{r4, pc}

08000626 <mutex_unlock>:
 8000626:	b508      	push	{r3, lr}
 8000628:	f7ff ffd7 	bl	80005da <mutex_init>
 800062c:	f7ff feac 	bl	8000388 <wake_up_threads>
 8000630:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8000634:	f7ff be16 	b.w	8000264 <yield>

08000638 <m_abs>:
 8000638:	ee07 0a90 	vmov	s15, r0
 800063c:	eef5 7ac0 	vcmpe.f32	s15, #0.0
 8000640:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000644:	bf48      	it	mi
 8000646:	eef1 7a67 	vnegmi.f32	s15, s15
 800064a:	ee17 0a90 	vmov	r0, s15
 800064e:	4770      	bx	lr

08000650 <m_saturate>:
 8000650:	ee07 0a90 	vmov	s15, r0
 8000654:	ee06 1a90 	vmov	s13, r1
 8000658:	eef4 7a66 	vcmp.f32	s15, s13
 800065c:	ee07 2a10 	vmov	s14, r2
 8000660:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000664:	bf48      	it	mi
 8000666:	eef0 7a66 	vmovmi.f32	s15, s13
 800066a:	eef4 7a47 	vcmp.f32	s15, s14
 800066e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000672:	bfcc      	ite	gt
 8000674:	ee17 0a10 	vmovgt	r0, s14
 8000678:	ee17 0a90 	vmovle	r0, s15
 800067c:	4770      	bx	lr

0800067e <m_min>:
 800067e:	ee07 0a10 	vmov	s14, r0
 8000682:	ee07 1a90 	vmov	s15, r1
 8000686:	eeb4 7ae7 	vcmpe.f32	s14, s15
 800068a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800068e:	bf54      	ite	pl
 8000690:	ee17 0a90 	vmovpl	r0, s15
 8000694:	ee17 0a10 	vmovmi	r0, s14
 8000698:	4770      	bx	lr
	...

0800069c <pid_init>:
 800069c:	ee06 2a10 	vmov	s12, r2
 80006a0:	ee05 3a90 	vmov	s11, r3
 80006a4:	eddd 7a00 	vldr	s15, [sp]
 80006a8:	ee76 6a25 	vadd.f32	s13, s12, s11
 80006ac:	ed9d 7a01 	vldr	s14, [sp, #4]
 80006b0:	ee76 6aa7 	vadd.f32	s13, s13, s15
 80006b4:	ee77 5aa7 	vadd.f32	s11, s15, s15
 80006b8:	ee76 6a87 	vadd.f32	s13, s13, s14
 80006bc:	eeb1 6a46 	vneg.f32	s12, s12
 80006c0:	edc0 6a04 	vstr	s13, [r0, #16]
 80006c4:	eddf 6a0c 	vldr	s13, [pc, #48]	; 80006f8 <pid_init+0x5c>
 80006c8:	ee36 6a65 	vsub.f32	s12, s12, s11
 80006cc:	ee67 6a26 	vmul.f32	s13, s14, s13
 80006d0:	2200      	movs	r2, #0
 80006d2:	ee36 6a66 	vsub.f32	s12, s12, s13
 80006d6:	ee77 7aa6 	vadd.f32	s15, s15, s13
 80006da:	eeb1 7a47 	vneg.f32	s14, s14
 80006de:	6002      	str	r2, [r0, #0]
 80006e0:	6042      	str	r2, [r0, #4]
 80006e2:	6082      	str	r2, [r0, #8]
 80006e4:	60c2      	str	r2, [r0, #12]
 80006e6:	ed80 6a05 	vstr	s12, [r0, #20]
 80006ea:	edc0 7a06 	vstr	s15, [r0, #24]
 80006ee:	ed80 7a07 	vstr	s14, [r0, #28]
 80006f2:	6202      	str	r2, [r0, #32]
 80006f4:	6241      	str	r1, [r0, #36]	; 0x24
 80006f6:	4770      	bx	lr
 80006f8:	40400000 	.word	0x40400000

080006fc <pid_process>:
 80006fc:	edd0 7a08 	vldr	s15, [r0, #32]
 8000700:	ee05 1a90 	vmov	s11, r1
 8000704:	ed90 5a04 	vldr	s10, [r0, #16]
 8000708:	ee45 7a85 	vmla.f32	s15, s11, s10
 800070c:	ed90 6a00 	vldr	s12, [r0]
 8000710:	edd0 5a05 	vldr	s11, [r0, #20]
 8000714:	ee46 7a25 	vmla.f32	s15, s12, s11
 8000718:	edd0 6a01 	vldr	s13, [r0, #4]
 800071c:	ed80 6a01 	vstr	s12, [r0, #4]
 8000720:	ed90 6a06 	vldr	s12, [r0, #24]
 8000724:	ee46 7a86 	vmla.f32	s15, s13, s12
 8000728:	ed90 7a02 	vldr	s14, [r0, #8]
 800072c:	edc0 6a02 	vstr	s13, [r0, #8]
 8000730:	edd0 6a07 	vldr	s13, [r0, #28]
 8000734:	ee47 7a26 	vmla.f32	s15, s14, s13
 8000738:	ed80 7a03 	vstr	s14, [r0, #12]
 800073c:	ed90 7a09 	vldr	s14, [r0, #36]	; 0x24
 8000740:	eef4 7ac7 	vcmpe.f32	s15, s14
 8000744:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000748:	edc0 7a08 	vstr	s15, [r0, #32]
 800074c:	bfc8      	it	gt
 800074e:	ed80 7a08 	vstrgt	s14, [r0, #32]
 8000752:	edd0 7a08 	vldr	s15, [r0, #32]
 8000756:	eeb1 7a47 	vneg.f32	s14, s14
 800075a:	eef4 7ac7 	vcmpe.f32	s15, s14
 800075e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000762:	bf48      	it	mi
 8000764:	ed80 7a08 	vstrmi	s14, [r0, #32]
 8000768:	6001      	str	r1, [r0, #0]
 800076a:	6a00      	ldr	r0, [r0, #32]
 800076c:	4770      	bx	lr
	...

08000770 <lsm9ds0_read>:
 8000770:	b538      	push	{r3, r4, r5, lr}
 8000772:	2128      	movs	r1, #40	; 0x28
 8000774:	20d4      	movs	r0, #212	; 0xd4
 8000776:	f001 fe6e 	bl	8002456 <i2c_read_reg>
 800077a:	2129      	movs	r1, #41	; 0x29
 800077c:	4605      	mov	r5, r0
 800077e:	20d4      	movs	r0, #212	; 0xd4
 8000780:	f001 fe69 	bl	8002456 <i2c_read_reg>
 8000784:	4c38      	ldr	r4, [pc, #224]	; (8000868 <lsm9ds0_read+0xf8>)
 8000786:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 800078a:	81a0      	strh	r0, [r4, #12]
 800078c:	212a      	movs	r1, #42	; 0x2a
 800078e:	20d4      	movs	r0, #212	; 0xd4
 8000790:	f001 fe61 	bl	8002456 <i2c_read_reg>
 8000794:	212b      	movs	r1, #43	; 0x2b
 8000796:	4605      	mov	r5, r0
 8000798:	20d4      	movs	r0, #212	; 0xd4
 800079a:	f001 fe5c 	bl	8002456 <i2c_read_reg>
 800079e:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 80007a2:	81e0      	strh	r0, [r4, #14]
 80007a4:	212c      	movs	r1, #44	; 0x2c
 80007a6:	20d4      	movs	r0, #212	; 0xd4
 80007a8:	f001 fe55 	bl	8002456 <i2c_read_reg>
 80007ac:	212d      	movs	r1, #45	; 0x2d
 80007ae:	4605      	mov	r5, r0
 80007b0:	20d4      	movs	r0, #212	; 0xd4
 80007b2:	f001 fe50 	bl	8002456 <i2c_read_reg>
 80007b6:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 80007ba:	8220      	strh	r0, [r4, #16]
 80007bc:	2108      	movs	r1, #8
 80007be:	203c      	movs	r0, #60	; 0x3c
 80007c0:	f001 fe49 	bl	8002456 <i2c_read_reg>
 80007c4:	2109      	movs	r1, #9
 80007c6:	4605      	mov	r5, r0
 80007c8:	203c      	movs	r0, #60	; 0x3c
 80007ca:	f001 fe44 	bl	8002456 <i2c_read_reg>
 80007ce:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 80007d2:	80e0      	strh	r0, [r4, #6]
 80007d4:	210a      	movs	r1, #10
 80007d6:	203c      	movs	r0, #60	; 0x3c
 80007d8:	f001 fe3d 	bl	8002456 <i2c_read_reg>
 80007dc:	210b      	movs	r1, #11
 80007de:	4605      	mov	r5, r0
 80007e0:	203c      	movs	r0, #60	; 0x3c
 80007e2:	f001 fe38 	bl	8002456 <i2c_read_reg>
 80007e6:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 80007ea:	8120      	strh	r0, [r4, #8]
 80007ec:	210c      	movs	r1, #12
 80007ee:	203c      	movs	r0, #60	; 0x3c
 80007f0:	f001 fe31 	bl	8002456 <i2c_read_reg>
 80007f4:	210d      	movs	r1, #13
 80007f6:	4605      	mov	r5, r0
 80007f8:	203c      	movs	r0, #60	; 0x3c
 80007fa:	f001 fe2c 	bl	8002456 <i2c_read_reg>
 80007fe:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000802:	8160      	strh	r0, [r4, #10]
 8000804:	2128      	movs	r1, #40	; 0x28
 8000806:	203c      	movs	r0, #60	; 0x3c
 8000808:	f001 fe25 	bl	8002456 <i2c_read_reg>
 800080c:	2129      	movs	r1, #41	; 0x29
 800080e:	4605      	mov	r5, r0
 8000810:	203c      	movs	r0, #60	; 0x3c
 8000812:	f001 fe20 	bl	8002456 <i2c_read_reg>
 8000816:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 800081a:	8020      	strh	r0, [r4, #0]
 800081c:	212a      	movs	r1, #42	; 0x2a
 800081e:	203c      	movs	r0, #60	; 0x3c
 8000820:	f001 fe19 	bl	8002456 <i2c_read_reg>
 8000824:	212b      	movs	r1, #43	; 0x2b
 8000826:	4605      	mov	r5, r0
 8000828:	203c      	movs	r0, #60	; 0x3c
 800082a:	f001 fe14 	bl	8002456 <i2c_read_reg>
 800082e:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000832:	8060      	strh	r0, [r4, #2]
 8000834:	212c      	movs	r1, #44	; 0x2c
 8000836:	203c      	movs	r0, #60	; 0x3c
 8000838:	f001 fe0d 	bl	8002456 <i2c_read_reg>
 800083c:	212d      	movs	r1, #45	; 0x2d
 800083e:	4605      	mov	r5, r0
 8000840:	203c      	movs	r0, #60	; 0x3c
 8000842:	f001 fe08 	bl	8002456 <i2c_read_reg>
 8000846:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 800084a:	80a0      	strh	r0, [r4, #4]
 800084c:	2105      	movs	r1, #5
 800084e:	203c      	movs	r0, #60	; 0x3c
 8000850:	f001 fe01 	bl	8002456 <i2c_read_reg>
 8000854:	2106      	movs	r1, #6
 8000856:	4605      	mov	r5, r0
 8000858:	203c      	movs	r0, #60	; 0x3c
 800085a:	f001 fdfc 	bl	8002456 <i2c_read_reg>
 800085e:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000862:	8320      	strh	r0, [r4, #24]
 8000864:	bd38      	pop	{r3, r4, r5, pc}
 8000866:	bf00      	nop
 8000868:	200002d8 	.word	0x200002d8

0800086c <lsm9ds0_init>:
 800086c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8000870:	4d34      	ldr	r5, [pc, #208]	; (8000944 <lsm9ds0_init+0xd8>)
 8000872:	2400      	movs	r4, #0
 8000874:	20d4      	movs	r0, #212	; 0xd4
 8000876:	210f      	movs	r1, #15
 8000878:	802c      	strh	r4, [r5, #0]
 800087a:	806c      	strh	r4, [r5, #2]
 800087c:	80ac      	strh	r4, [r5, #4]
 800087e:	80ec      	strh	r4, [r5, #6]
 8000880:	812c      	strh	r4, [r5, #8]
 8000882:	816c      	strh	r4, [r5, #10]
 8000884:	81ac      	strh	r4, [r5, #12]
 8000886:	81ec      	strh	r4, [r5, #14]
 8000888:	822c      	strh	r4, [r5, #16]
 800088a:	826c      	strh	r4, [r5, #18]
 800088c:	82ac      	strh	r4, [r5, #20]
 800088e:	82ec      	strh	r4, [r5, #22]
 8000890:	832c      	strh	r4, [r5, #24]
 8000892:	f001 fde0 	bl	8002456 <i2c_read_reg>
 8000896:	28d4      	cmp	r0, #212	; 0xd4
 8000898:	4606      	mov	r6, r0
 800089a:	d14e      	bne.n	800093a <lsm9ds0_init+0xce>
 800089c:	203c      	movs	r0, #60	; 0x3c
 800089e:	210f      	movs	r1, #15
 80008a0:	f001 fdd9 	bl	8002456 <i2c_read_reg>
 80008a4:	2849      	cmp	r0, #73	; 0x49
 80008a6:	bf18      	it	ne
 80008a8:	2602      	movne	r6, #2
 80008aa:	d147      	bne.n	800093c <lsm9ds0_init+0xd0>
 80008ac:	4630      	mov	r0, r6
 80008ae:	2120      	movs	r1, #32
 80008b0:	22ff      	movs	r2, #255	; 0xff
 80008b2:	f001 fdbd 	bl	8002430 <i2c_write_reg>
 80008b6:	4630      	mov	r0, r6
 80008b8:	2123      	movs	r1, #35	; 0x23
 80008ba:	2218      	movs	r2, #24
 80008bc:	f001 fdb8 	bl	8002430 <i2c_write_reg>
 80008c0:	203c      	movs	r0, #60	; 0x3c
 80008c2:	211f      	movs	r1, #31
 80008c4:	4622      	mov	r2, r4
 80008c6:	f001 fdb3 	bl	8002430 <i2c_write_reg>
 80008ca:	203c      	movs	r0, #60	; 0x3c
 80008cc:	2120      	movs	r1, #32
 80008ce:	2267      	movs	r2, #103	; 0x67
 80008d0:	f001 fdae 	bl	8002430 <i2c_write_reg>
 80008d4:	203c      	movs	r0, #60	; 0x3c
 80008d6:	2121      	movs	r1, #33	; 0x21
 80008d8:	4622      	mov	r2, r4
 80008da:	f001 fda9 	bl	8002430 <i2c_write_reg>
 80008de:	203c      	movs	r0, #60	; 0x3c
 80008e0:	2124      	movs	r1, #36	; 0x24
 80008e2:	22f4      	movs	r2, #244	; 0xf4
 80008e4:	f001 fda4 	bl	8002430 <i2c_write_reg>
 80008e8:	203c      	movs	r0, #60	; 0x3c
 80008ea:	2125      	movs	r1, #37	; 0x25
 80008ec:	4622      	mov	r2, r4
 80008ee:	f001 fd9f 	bl	8002430 <i2c_write_reg>
 80008f2:	203c      	movs	r0, #60	; 0x3c
 80008f4:	2126      	movs	r1, #38	; 0x26
 80008f6:	2280      	movs	r2, #128	; 0x80
 80008f8:	f001 fd9a 	bl	8002430 <i2c_write_reg>
 80008fc:	f7ff ff38 	bl	8000770 <lsm9ds0_read>
 8000900:	2664      	movs	r6, #100	; 0x64
 8000902:	4627      	mov	r7, r4
 8000904:	46a0      	mov	r8, r4
 8000906:	f7ff ff33 	bl	8000770 <lsm9ds0_read>
 800090a:	f9b5 200c 	ldrsh.w	r2, [r5, #12]
 800090e:	4b0d      	ldr	r3, [pc, #52]	; (8000944 <lsm9ds0_init+0xd8>)
 8000910:	4490      	add	r8, r2
 8000912:	f9b5 200e 	ldrsh.w	r2, [r5, #14]
 8000916:	4417      	add	r7, r2
 8000918:	f9b5 2010 	ldrsh.w	r2, [r5, #16]
 800091c:	3e01      	subs	r6, #1
 800091e:	4414      	add	r4, r2
 8000920:	d1f1      	bne.n	8000906 <lsm9ds0_init+0x9a>
 8000922:	2264      	movs	r2, #100	; 0x64
 8000924:	fb98 f8f2 	sdiv	r8, r8, r2
 8000928:	fb97 f7f2 	sdiv	r7, r7, r2
 800092c:	fb94 f4f2 	sdiv	r4, r4, r2
 8000930:	f8a3 8012 	strh.w	r8, [r3, #18]
 8000934:	829f      	strh	r7, [r3, #20]
 8000936:	82dc      	strh	r4, [r3, #22]
 8000938:	e000      	b.n	800093c <lsm9ds0_init+0xd0>
 800093a:	2601      	movs	r6, #1
 800093c:	4630      	mov	r0, r6
 800093e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8000942:	bf00      	nop
 8000944:	200002d8 	.word	0x200002d8

08000948 <camera_init>:
 8000948:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800094c:	4b3f      	ldr	r3, [pc, #252]	; (8000a4c <camera_init+0x104>)
 800094e:	2200      	movs	r2, #0
 8000950:	601a      	str	r2, [r3, #0]
 8000952:	605a      	str	r2, [r3, #4]
 8000954:	609a      	str	r2, [r3, #8]
 8000956:	611a      	str	r2, [r3, #16]
 8000958:	60da      	str	r2, [r3, #12]
 800095a:	b08e      	sub	sp, #56	; 0x38
 800095c:	f103 0212 	add.w	r2, r3, #18
 8000960:	f503 7389 	add.w	r3, r3, #274	; 0x112
 8000964:	2400      	movs	r4, #0
 8000966:	f822 4f02 	strh.w	r4, [r2, #2]!
 800096a:	429a      	cmp	r2, r3
 800096c:	f8a2 4100 	strh.w	r4, [r2, #256]	; 0x100
 8000970:	d1f8      	bne.n	8000964 <camera_init+0x1c>
 8000972:	4f37      	ldr	r7, [pc, #220]	; (8000a50 <camera_init+0x108>)
 8000974:	2501      	movs	r5, #1
 8000976:	2603      	movs	r6, #3
 8000978:	f44f 63a0 	mov.w	r3, #1280	; 0x500
 800097c:	4638      	mov	r0, r7
 800097e:	a901      	add	r1, sp, #4
 8000980:	9301      	str	r3, [sp, #4]
 8000982:	f88d 5008 	strb.w	r5, [sp, #8]
 8000986:	f88d 6009 	strb.w	r6, [sp, #9]
 800098a:	f001 ffea 	bl	8002962 <GPIO_Init>
 800098e:	a901      	add	r1, sp, #4
 8000990:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8000994:	4638      	mov	r0, r7
 8000996:	9301      	str	r3, [sp, #4]
 8000998:	f88d 6008 	strb.w	r6, [sp, #8]
 800099c:	f88d 6009 	strb.w	r6, [sp, #9]
 80009a0:	f001 ffdf 	bl	8002962 <GPIO_Init>
 80009a4:	f44f 7380 	mov.w	r3, #256	; 0x100
 80009a8:	853b      	strh	r3, [r7, #40]	; 0x28
 80009aa:	f44f 6380 	mov.w	r3, #1024	; 0x400
 80009ae:	853b      	strh	r3, [r7, #40]	; 0x28
 80009b0:	4828      	ldr	r0, [pc, #160]	; (8000a54 <camera_init+0x10c>)
 80009b2:	f001 f927 	bl	8001c04 <RCC_ADCCLKConfig>
 80009b6:	4629      	mov	r1, r5
 80009b8:	f04f 5000 	mov.w	r0, #536870912	; 0x20000000
 80009bc:	f001 f932 	bl	8001c24 <RCC_AHBPeriphClockCmd>
 80009c0:	a906      	add	r1, sp, #24
 80009c2:	4825      	ldr	r0, [pc, #148]	; (8000a58 <camera_init+0x110>)
 80009c4:	940c      	str	r4, [sp, #48]	; 0x30
 80009c6:	9406      	str	r4, [sp, #24]
 80009c8:	940a      	str	r4, [sp, #40]	; 0x28
 80009ca:	9408      	str	r4, [sp, #32]
 80009cc:	9409      	str	r4, [sp, #36]	; 0x24
 80009ce:	f88d 5034 	strb.w	r5, [sp, #52]	; 0x34
 80009d2:	940b      	str	r4, [sp, #44]	; 0x2c
 80009d4:	9407      	str	r4, [sp, #28]
 80009d6:	f001 fd57 	bl	8002488 <ADC_Init>
 80009da:	462a      	mov	r2, r5
 80009dc:	4623      	mov	r3, r4
 80009de:	4631      	mov	r1, r6
 80009e0:	481d      	ldr	r0, [pc, #116]	; (8000a58 <camera_init+0x110>)
 80009e2:	f001 fd82 	bl	80024ea <ADC_RegularChannelConfig>
 80009e6:	4629      	mov	r1, r5
 80009e8:	481b      	ldr	r0, [pc, #108]	; (8000a58 <camera_init+0x110>)
 80009ea:	f001 fd73 	bl	80024d4 <ADC_Cmd>
 80009ee:	4628      	mov	r0, r5
 80009f0:	4629      	mov	r1, r5
 80009f2:	f001 f933 	bl	8001c5c <RCC_APB1PeriphClockCmd>
 80009f6:	f44f 738c 	mov.w	r3, #280	; 0x118
 80009fa:	f8ad 300c 	strh.w	r3, [sp, #12]
 80009fe:	a903      	add	r1, sp, #12
 8000a00:	2320      	movs	r3, #32
 8000a02:	f04f 4080 	mov.w	r0, #1073741824	; 0x40000000
 8000a06:	9304      	str	r3, [sp, #16]
 8000a08:	f8ad 400e 	strh.w	r4, [sp, #14]
 8000a0c:	f8ad 4014 	strh.w	r4, [sp, #20]
 8000a10:	f8ad 4016 	strh.w	r4, [sp, #22]
 8000a14:	f001 f930 	bl	8001c78 <TIM_TimeBaseInit>
 8000a18:	4629      	mov	r1, r5
 8000a1a:	f04f 4080 	mov.w	r0, #1073741824	; 0x40000000
 8000a1e:	f001 f97b 	bl	8001d18 <TIM_Cmd>
 8000a22:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8000a26:	4668      	mov	r0, sp
 8000a28:	68da      	ldr	r2, [r3, #12]
 8000a2a:	432a      	orrs	r2, r5
 8000a2c:	60da      	str	r2, [r3, #12]
 8000a2e:	231c      	movs	r3, #28
 8000a30:	f88d 3000 	strb.w	r3, [sp]
 8000a34:	f88d 4001 	strb.w	r4, [sp, #1]
 8000a38:	f88d 5002 	strb.w	r5, [sp, #2]
 8000a3c:	f88d 5003 	strb.w	r5, [sp, #3]
 8000a40:	f001 ff46 	bl	80028d0 <NVIC_Init>
 8000a44:	b00e      	add	sp, #56	; 0x38
 8000a46:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8000a4a:	bf00      	nop
 8000a4c:	20000378 	.word	0x20000378
 8000a50:	48000400 	.word	0x48000400
 8000a54:	10002200 	.word	0x10002200
 8000a58:	50000500 	.word	0x50000500

08000a5c <camera_read>:
 8000a5c:	4a35      	ldr	r2, [pc, #212]	; (8000b34 <camera_read+0xd8>)
 8000a5e:	6890      	ldr	r0, [r2, #8]
 8000a60:	b5f0      	push	{r4, r5, r6, r7, lr}
 8000a62:	2800      	cmp	r0, #0
 8000a64:	d065      	beq.n	8000b32 <camera_read+0xd6>
 8000a66:	f102 0312 	add.w	r3, r2, #18
 8000a6a:	f502 7189 	add.w	r1, r2, #274	; 0x112
 8000a6e:	f833 0f02 	ldrh.w	r0, [r3, #2]!
 8000a72:	428b      	cmp	r3, r1
 8000a74:	f8a3 0100 	strh.w	r0, [r3, #256]	; 0x100
 8000a78:	d1f9      	bne.n	8000a6e <camera_read+0x12>
 8000a7a:	2300      	movs	r3, #0
 8000a7c:	6093      	str	r3, [r2, #8]
 8000a7e:	4618      	mov	r0, r3
 8000a80:	18d4      	adds	r4, r2, r3
 8000a82:	3302      	adds	r3, #2
 8000a84:	f9b4 4114 	ldrsh.w	r4, [r4, #276]	; 0x114
 8000a88:	492a      	ldr	r1, [pc, #168]	; (8000b34 <camera_read+0xd8>)
 8000a8a:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
 8000a8e:	4420      	add	r0, r4
 8000a90:	d1f6      	bne.n	8000a80 <camera_read+0x24>
 8000a92:	2680      	movs	r6, #128	; 0x80
 8000a94:	fb90 f6f6 	sdiv	r6, r0, r6
 8000a98:	610e      	str	r6, [r1, #16]
 8000a9a:	f501 7005 	add.w	r0, r1, #532	; 0x214
 8000a9e:	f501 738a 	add.w	r3, r1, #276	; 0x114
 8000aa2:	8819      	ldrh	r1, [r3, #0]
 8000aa4:	1b89      	subs	r1, r1, r6
 8000aa6:	f823 1b02 	strh.w	r1, [r3], #2
 8000aaa:	4283      	cmp	r3, r0
 8000aac:	d1f9      	bne.n	8000aa2 <camera_read+0x46>
 8000aae:	4b22      	ldr	r3, [pc, #136]	; (8000b38 <camera_read+0xdc>)
 8000ab0:	f933 1b02 	ldrsh.w	r1, [r3], #2
 8000ab4:	2900      	cmp	r1, #0
 8000ab6:	bfb4      	ite	lt
 8000ab8:	2101      	movlt	r1, #1
 8000aba:	2100      	movge	r1, #0
 8000abc:	4283      	cmp	r3, r0
 8000abe:	f823 1c02 	strh.w	r1, [r3, #-2]
 8000ac2:	d1f5      	bne.n	8000ab0 <camera_read+0x54>
 8000ac4:	2300      	movs	r3, #0
 8000ac6:	481b      	ldr	r0, [pc, #108]	; (8000b34 <camera_read+0xd8>)
 8000ac8:	f44f 67a0 	mov.w	r7, #1280	; 0x500
 8000acc:	4619      	mov	r1, r3
 8000ace:	461c      	mov	r4, r3
 8000ad0:	2501      	movs	r5, #1
 8000ad2:	2b01      	cmp	r3, #1
 8000ad4:	d007      	beq.n	8000ae6 <camera_read+0x8a>
 8000ad6:	f9b0 1114 	ldrsh.w	r1, [r0, #276]	; 0x114
 8000ada:	b981      	cbnz	r1, 8000afe <camera_read+0xa2>
 8000adc:	f9b0 3116 	ldrsh.w	r3, [r0, #278]	; 0x116
 8000ae0:	2b01      	cmp	r3, #1
 8000ae2:	d10f      	bne.n	8000b04 <camera_read+0xa8>
 8000ae4:	e00c      	b.n	8000b00 <camera_read+0xa4>
 8000ae6:	f9b0 c116 	ldrsh.w	ip, [r0, #278]	; 0x116
 8000aea:	f1bc 0f01 	cmp.w	ip, #1
 8000aee:	d101      	bne.n	8000af4 <camera_read+0x98>
 8000af0:	3101      	adds	r1, #1
 8000af2:	e008      	b.n	8000b06 <camera_read+0xaa>
 8000af4:	42a1      	cmp	r1, r4
 8000af6:	dd05      	ble.n	8000b04 <camera_read+0xa8>
 8000af8:	462f      	mov	r7, r5
 8000afa:	460c      	mov	r4, r1
 8000afc:	e002      	b.n	8000b04 <camera_read+0xa8>
 8000afe:	2300      	movs	r3, #0
 8000b00:	4619      	mov	r1, r3
 8000b02:	e000      	b.n	8000b06 <camera_read+0xaa>
 8000b04:	2300      	movs	r3, #0
 8000b06:	3501      	adds	r5, #1
 8000b08:	2d80      	cmp	r5, #128	; 0x80
 8000b0a:	f100 0002 	add.w	r0, r0, #2
 8000b0e:	d1e0      	bne.n	8000ad2 <camera_read+0x76>
 8000b10:	2c03      	cmp	r4, #3
 8000b12:	dc03      	bgt.n	8000b1c <camera_read+0xc0>
 8000b14:	2300      	movs	r3, #0
 8000b16:	6053      	str	r3, [r2, #4]
 8000b18:	2001      	movs	r0, #1
 8000b1a:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000b1c:	f5b6 7fc8 	cmp.w	r6, #400	; 0x190
 8000b20:	ddf8      	ble.n	8000b14 <camera_read+0xb8>
 8000b22:	2302      	movs	r3, #2
 8000b24:	fb94 f4f3 	sdiv	r4, r4, r3
 8000b28:	1b3f      	subs	r7, r7, r4
 8000b2a:	2001      	movs	r0, #1
 8000b2c:	3f40      	subs	r7, #64	; 0x40
 8000b2e:	6050      	str	r0, [r2, #4]
 8000b30:	60d7      	str	r7, [r2, #12]
 8000b32:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000b34:	20000378 	.word	0x20000378
 8000b38:	2000048c 	.word	0x2000048c

08000b3c <TIM2_IRQHandler>:
 8000b3c:	4b21      	ldr	r3, [pc, #132]	; (8000bc4 <TIM2_IRQHandler+0x88>)
 8000b3e:	4a22      	ldr	r2, [pc, #136]	; (8000bc8 <TIM2_IRQHandler+0x8c>)
 8000b40:	6819      	ldr	r1, [r3, #0]
 8000b42:	2901      	cmp	r1, #1
 8000b44:	b510      	push	{r4, lr}
 8000b46:	d011      	beq.n	8000b6c <TIM2_IRQHandler+0x30>
 8000b48:	d306      	bcc.n	8000b58 <TIM2_IRQHandler+0x1c>
 8000b4a:	2902      	cmp	r1, #2
 8000b4c:	d113      	bne.n	8000b76 <TIM2_IRQHandler+0x3a>
 8000b4e:	f44f 6180 	mov.w	r1, #1024	; 0x400
 8000b52:	8511      	strh	r1, [r2, #40]	; 0x28
 8000b54:	2204      	movs	r2, #4
 8000b56:	e023      	b.n	8000ba0 <TIM2_IRQHandler+0x64>
 8000b58:	f44f 7180 	mov.w	r1, #256	; 0x100
 8000b5c:	8511      	strh	r1, [r2, #40]	; 0x28
 8000b5e:	f44f 6180 	mov.w	r1, #1024	; 0x400
 8000b62:	6191      	str	r1, [r2, #24]
 8000b64:	2201      	movs	r2, #1
 8000b66:	601a      	str	r2, [r3, #0]
 8000b68:	609a      	str	r2, [r3, #8]
 8000b6a:	e023      	b.n	8000bb4 <TIM2_IRQHandler+0x78>
 8000b6c:	f44f 7180 	mov.w	r1, #256	; 0x100
 8000b70:	6191      	str	r1, [r2, #24]
 8000b72:	2202      	movs	r2, #2
 8000b74:	e014      	b.n	8000ba0 <TIM2_IRQHandler+0x64>
 8000b76:	f011 0f01 	tst.w	r1, #1
 8000b7a:	4814      	ldr	r0, [pc, #80]	; (8000bcc <TIM2_IRQHandler+0x90>)
 8000b7c:	f101 0401 	add.w	r4, r1, #1
 8000b80:	d010      	beq.n	8000ba4 <TIM2_IRQHandler+0x68>
 8000b82:	3904      	subs	r1, #4
 8000b84:	f021 0101 	bic.w	r1, r1, #1
 8000b88:	6c00      	ldr	r0, [r0, #64]	; 0x40
 8000b8a:	4419      	add	r1, r3
 8000b8c:	f5b4 7f82 	cmp.w	r4, #260	; 0x104
 8000b90:	8288      	strh	r0, [r1, #20]
 8000b92:	f44f 7180 	mov.w	r1, #256	; 0x100
 8000b96:	8511      	strh	r1, [r2, #40]	; 0x28
 8000b98:	d201      	bcs.n	8000b9e <TIM2_IRQHandler+0x62>
 8000b9a:	601c      	str	r4, [r3, #0]
 8000b9c:	e00a      	b.n	8000bb4 <TIM2_IRQHandler+0x78>
 8000b9e:	2200      	movs	r2, #0
 8000ba0:	601a      	str	r2, [r3, #0]
 8000ba2:	e007      	b.n	8000bb4 <TIM2_IRQHandler+0x78>
 8000ba4:	f44f 7180 	mov.w	r1, #256	; 0x100
 8000ba8:	6191      	str	r1, [r2, #24]
 8000baa:	601c      	str	r4, [r3, #0]
 8000bac:	6883      	ldr	r3, [r0, #8]
 8000bae:	f043 0304 	orr.w	r3, r3, #4
 8000bb2:	6083      	str	r3, [r0, #8]
 8000bb4:	f04f 4080 	mov.w	r0, #1073741824	; 0x40000000
 8000bb8:	2101      	movs	r1, #1
 8000bba:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000bbe:	f001 b948 	b.w	8001e52 <TIM_ClearITPendingBit>
 8000bc2:	bf00      	nop
 8000bc4:	20000378 	.word	0x20000378
 8000bc8:	48000400 	.word	0x48000400
 8000bcc:	50000500 	.word	0x50000500

08000bd0 <rgb_i2c_delay>:
 8000bd0:	bf00      	nop
 8000bd2:	4770      	bx	lr

08000bd4 <RGBSetLowSDA>:
 8000bd4:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 8000bd6:	4f15      	ldr	r7, [pc, #84]	; (8000c2c <RGBSetLowSDA+0x58>)
 8000bd8:	783b      	ldrb	r3, [r7, #0]
 8000bda:	2401      	movs	r4, #1
 8000bdc:	2603      	movs	r6, #3
 8000bde:	2500      	movs	r5, #0
 8000be0:	4669      	mov	r1, sp
 8000be2:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000be6:	9300      	str	r3, [sp, #0]
 8000be8:	f88d 5007 	strb.w	r5, [sp, #7]
 8000bec:	f88d 4004 	strb.w	r4, [sp, #4]
 8000bf0:	f88d 6005 	strb.w	r6, [sp, #5]
 8000bf4:	f88d 4006 	strb.w	r4, [sp, #6]
 8000bf8:	f001 feb3 	bl	8002962 <GPIO_Init>
 8000bfc:	783a      	ldrb	r2, [r7, #0]
 8000bfe:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000c02:	4669      	mov	r1, sp
 8000c04:	851a      	strh	r2, [r3, #40]	; 0x28
 8000c06:	f88d 5007 	strb.w	r5, [sp, #7]
 8000c0a:	4d09      	ldr	r5, [pc, #36]	; (8000c30 <RGBSetLowSDA+0x5c>)
 8000c0c:	9400      	str	r4, [sp, #0]
 8000c0e:	4628      	mov	r0, r5
 8000c10:	f88d 4004 	strb.w	r4, [sp, #4]
 8000c14:	f88d 6005 	strb.w	r6, [sp, #5]
 8000c18:	f88d 4006 	strb.w	r4, [sp, #6]
 8000c1c:	f001 fea1 	bl	8002962 <GPIO_Init>
 8000c20:	852c      	strh	r4, [r5, #40]	; 0x28
 8000c22:	f7ff ffd5 	bl	8000bd0 <rgb_i2c_delay>
 8000c26:	b003      	add	sp, #12
 8000c28:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000c2a:	bf00      	nop
 8000c2c:	2000098c 	.word	0x2000098c
 8000c30:	48000400 	.word	0x48000400

08000c34 <RGBSetHighSDA>:
 8000c34:	b573      	push	{r0, r1, r4, r5, r6, lr}
 8000c36:	4d13      	ldr	r5, [pc, #76]	; (8000c84 <RGBSetHighSDA+0x50>)
 8000c38:	782b      	ldrb	r3, [r5, #0]
 8000c3a:	2400      	movs	r4, #0
 8000c3c:	2603      	movs	r6, #3
 8000c3e:	4669      	mov	r1, sp
 8000c40:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000c44:	9300      	str	r3, [sp, #0]
 8000c46:	f88d 4004 	strb.w	r4, [sp, #4]
 8000c4a:	f88d 4007 	strb.w	r4, [sp, #7]
 8000c4e:	f88d 6005 	strb.w	r6, [sp, #5]
 8000c52:	f001 fe86 	bl	8002962 <GPIO_Init>
 8000c56:	782a      	ldrb	r2, [r5, #0]
 8000c58:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000c5c:	2501      	movs	r5, #1
 8000c5e:	619a      	str	r2, [r3, #24]
 8000c60:	f88d 4004 	strb.w	r4, [sp, #4]
 8000c64:	f88d 4007 	strb.w	r4, [sp, #7]
 8000c68:	4c07      	ldr	r4, [pc, #28]	; (8000c88 <RGBSetHighSDA+0x54>)
 8000c6a:	9500      	str	r5, [sp, #0]
 8000c6c:	4620      	mov	r0, r4
 8000c6e:	4669      	mov	r1, sp
 8000c70:	f88d 6005 	strb.w	r6, [sp, #5]
 8000c74:	f001 fe75 	bl	8002962 <GPIO_Init>
 8000c78:	61a5      	str	r5, [r4, #24]
 8000c7a:	f7ff ffa9 	bl	8000bd0 <rgb_i2c_delay>
 8000c7e:	b002      	add	sp, #8
 8000c80:	bd70      	pop	{r4, r5, r6, pc}
 8000c82:	bf00      	nop
 8000c84:	2000098c 	.word	0x2000098c
 8000c88:	48000400 	.word	0x48000400

08000c8c <RGBSetLowSCL>:
 8000c8c:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000c90:	f44f 7280 	mov.w	r2, #256	; 0x100
 8000c94:	851a      	strh	r2, [r3, #40]	; 0x28
 8000c96:	f7ff bf9b 	b.w	8000bd0 <rgb_i2c_delay>

08000c9a <RGBSetHighSCL>:
 8000c9a:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000c9e:	f44f 7280 	mov.w	r2, #256	; 0x100
 8000ca2:	619a      	str	r2, [r3, #24]
 8000ca4:	f7ff bf94 	b.w	8000bd0 <rgb_i2c_delay>

08000ca8 <rgb_i2c_init>:
 8000ca8:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 8000caa:	4f1f      	ldr	r7, [pc, #124]	; (8000d28 <rgb_i2c_init+0x80>)
 8000cac:	2400      	movs	r4, #0
 8000cae:	2501      	movs	r5, #1
 8000cb0:	2603      	movs	r6, #3
 8000cb2:	f44f 7380 	mov.w	r3, #256	; 0x100
 8000cb6:	4669      	mov	r1, sp
 8000cb8:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000cbc:	9300      	str	r3, [sp, #0]
 8000cbe:	f88d 4006 	strb.w	r4, [sp, #6]
 8000cc2:	f88d 4007 	strb.w	r4, [sp, #7]
 8000cc6:	f88d 5004 	strb.w	r5, [sp, #4]
 8000cca:	f88d 6005 	strb.w	r6, [sp, #5]
 8000cce:	f001 fe48 	bl	8002962 <GPIO_Init>
 8000cd2:	783b      	ldrb	r3, [r7, #0]
 8000cd4:	f88d 4004 	strb.w	r4, [sp, #4]
 8000cd8:	4669      	mov	r1, sp
 8000cda:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000cde:	9300      	str	r3, [sp, #0]
 8000ce0:	f88d 4007 	strb.w	r4, [sp, #7]
 8000ce4:	f88d 6005 	strb.w	r6, [sp, #5]
 8000ce8:	f001 fe3b 	bl	8002962 <GPIO_Init>
 8000cec:	7839      	ldrb	r1, [r7, #0]
 8000cee:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000cf2:	f001 fe7c 	bl	80029ee <GPIO_SetBits>
 8000cf6:	f88d 4004 	strb.w	r4, [sp, #4]
 8000cfa:	f88d 4007 	strb.w	r4, [sp, #7]
 8000cfe:	4c0b      	ldr	r4, [pc, #44]	; (8000d2c <rgb_i2c_init+0x84>)
 8000d00:	9500      	str	r5, [sp, #0]
 8000d02:	4620      	mov	r0, r4
 8000d04:	4669      	mov	r1, sp
 8000d06:	f88d 6005 	strb.w	r6, [sp, #5]
 8000d0a:	f001 fe2a 	bl	8002962 <GPIO_Init>
 8000d0e:	4620      	mov	r0, r4
 8000d10:	4629      	mov	r1, r5
 8000d12:	f001 fe6c 	bl	80029ee <GPIO_SetBits>
 8000d16:	f7ff ffc0 	bl	8000c9a <RGBSetHighSCL>
 8000d1a:	f7ff ff5b 	bl	8000bd4 <RGBSetLowSDA>
 8000d1e:	f7ff ff89 	bl	8000c34 <RGBSetHighSDA>
 8000d22:	b003      	add	sp, #12
 8000d24:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000d26:	bf00      	nop
 8000d28:	2000098c 	.word	0x2000098c
 8000d2c:	48000400 	.word	0x48000400

08000d30 <rgb_i2cStart>:
 8000d30:	b508      	push	{r3, lr}
 8000d32:	f7ff ffb2 	bl	8000c9a <RGBSetHighSCL>
 8000d36:	f7ff ff7d 	bl	8000c34 <RGBSetHighSDA>
 8000d3a:	f7ff ffae 	bl	8000c9a <RGBSetHighSCL>
 8000d3e:	f7ff ff49 	bl	8000bd4 <RGBSetLowSDA>
 8000d42:	f7ff ffa3 	bl	8000c8c <RGBSetLowSCL>
 8000d46:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8000d4a:	f7ff bf73 	b.w	8000c34 <RGBSetHighSDA>

08000d4e <rgb_i2cStop>:
 8000d4e:	b508      	push	{r3, lr}
 8000d50:	f7ff ff9c 	bl	8000c8c <RGBSetLowSCL>
 8000d54:	f7ff ff3e 	bl	8000bd4 <RGBSetLowSDA>
 8000d58:	f7ff ff9f 	bl	8000c9a <RGBSetHighSCL>
 8000d5c:	f7ff ff3a 	bl	8000bd4 <RGBSetLowSDA>
 8000d60:	f7ff ff9b 	bl	8000c9a <RGBSetHighSCL>
 8000d64:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8000d68:	f7ff bf64 	b.w	8000c34 <RGBSetHighSDA>

08000d6c <rgb_i2cWrite>:
 8000d6c:	b538      	push	{r3, r4, r5, lr}
 8000d6e:	4604      	mov	r4, r0
 8000d70:	2508      	movs	r5, #8
 8000d72:	f7ff ff8b 	bl	8000c8c <RGBSetLowSCL>
 8000d76:	0623      	lsls	r3, r4, #24
 8000d78:	d502      	bpl.n	8000d80 <rgb_i2cWrite+0x14>
 8000d7a:	f7ff ff5b 	bl	8000c34 <RGBSetHighSDA>
 8000d7e:	e001      	b.n	8000d84 <rgb_i2cWrite+0x18>
 8000d80:	f7ff ff28 	bl	8000bd4 <RGBSetLowSDA>
 8000d84:	3d01      	subs	r5, #1
 8000d86:	f7ff ff88 	bl	8000c9a <RGBSetHighSCL>
 8000d8a:	0064      	lsls	r4, r4, #1
 8000d8c:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 8000d90:	b2e4      	uxtb	r4, r4
 8000d92:	d1ee      	bne.n	8000d72 <rgb_i2cWrite+0x6>
 8000d94:	f7ff ff7a 	bl	8000c8c <RGBSetLowSCL>
 8000d98:	f7ff ff4c 	bl	8000c34 <RGBSetHighSDA>
 8000d9c:	f7ff ff7d 	bl	8000c9a <RGBSetHighSCL>
 8000da0:	f7ff ff74 	bl	8000c8c <RGBSetLowSCL>
 8000da4:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8000da8:	f7ff bf12 	b.w	8000bd0 <rgb_i2c_delay>

08000dac <rgb_i2cRead>:
 8000dac:	b570      	push	{r4, r5, r6, lr}
 8000dae:	2300      	movs	r3, #0
 8000db0:	4606      	mov	r6, r0
 8000db2:	460c      	mov	r4, r1
 8000db4:	2200      	movs	r2, #0
 8000db6:	54e2      	strb	r2, [r4, r3]
 8000db8:	3301      	adds	r3, #1
 8000dba:	2b09      	cmp	r3, #9
 8000dbc:	d1fa      	bne.n	8000db4 <rgb_i2cRead+0x8>
 8000dbe:	f7ff ff65 	bl	8000c8c <RGBSetLowSCL>
 8000dc2:	f7ff ff37 	bl	8000c34 <RGBSetHighSDA>
 8000dc6:	2508      	movs	r5, #8
 8000dc8:	2300      	movs	r3, #0
 8000dca:	5ce2      	ldrb	r2, [r4, r3]
 8000dcc:	0052      	lsls	r2, r2, #1
 8000dce:	54e2      	strb	r2, [r4, r3]
 8000dd0:	3301      	adds	r3, #1
 8000dd2:	2b09      	cmp	r3, #9
 8000dd4:	d1f9      	bne.n	8000dca <rgb_i2cRead+0x1e>
 8000dd6:	f7ff ff60 	bl	8000c9a <RGBSetHighSCL>
 8000dda:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000dde:	8a1b      	ldrh	r3, [r3, #16]
 8000de0:	b29b      	uxth	r3, r3
 8000de2:	07d8      	lsls	r0, r3, #31
 8000de4:	d503      	bpl.n	8000dee <rgb_i2cRead+0x42>
 8000de6:	7822      	ldrb	r2, [r4, #0]
 8000de8:	f042 0201 	orr.w	r2, r2, #1
 8000dec:	7022      	strb	r2, [r4, #0]
 8000dee:	0799      	lsls	r1, r3, #30
 8000df0:	d503      	bpl.n	8000dfa <rgb_i2cRead+0x4e>
 8000df2:	7862      	ldrb	r2, [r4, #1]
 8000df4:	f042 0201 	orr.w	r2, r2, #1
 8000df8:	7062      	strb	r2, [r4, #1]
 8000dfa:	075a      	lsls	r2, r3, #29
 8000dfc:	d503      	bpl.n	8000e06 <rgb_i2cRead+0x5a>
 8000dfe:	78a2      	ldrb	r2, [r4, #2]
 8000e00:	f042 0201 	orr.w	r2, r2, #1
 8000e04:	70a2      	strb	r2, [r4, #2]
 8000e06:	0718      	lsls	r0, r3, #28
 8000e08:	d503      	bpl.n	8000e12 <rgb_i2cRead+0x66>
 8000e0a:	78e2      	ldrb	r2, [r4, #3]
 8000e0c:	f042 0201 	orr.w	r2, r2, #1
 8000e10:	70e2      	strb	r2, [r4, #3]
 8000e12:	06d9      	lsls	r1, r3, #27
 8000e14:	d503      	bpl.n	8000e1e <rgb_i2cRead+0x72>
 8000e16:	7922      	ldrb	r2, [r4, #4]
 8000e18:	f042 0201 	orr.w	r2, r2, #1
 8000e1c:	7122      	strb	r2, [r4, #4]
 8000e1e:	069a      	lsls	r2, r3, #26
 8000e20:	d503      	bpl.n	8000e2a <rgb_i2cRead+0x7e>
 8000e22:	7962      	ldrb	r2, [r4, #5]
 8000e24:	f042 0201 	orr.w	r2, r2, #1
 8000e28:	7162      	strb	r2, [r4, #5]
 8000e2a:	0658      	lsls	r0, r3, #25
 8000e2c:	d503      	bpl.n	8000e36 <rgb_i2cRead+0x8a>
 8000e2e:	79a2      	ldrb	r2, [r4, #6]
 8000e30:	f042 0201 	orr.w	r2, r2, #1
 8000e34:	71a2      	strb	r2, [r4, #6]
 8000e36:	0619      	lsls	r1, r3, #24
 8000e38:	d503      	bpl.n	8000e42 <rgb_i2cRead+0x96>
 8000e3a:	79e3      	ldrb	r3, [r4, #7]
 8000e3c:	f043 0301 	orr.w	r3, r3, #1
 8000e40:	71e3      	strb	r3, [r4, #7]
 8000e42:	4b0b      	ldr	r3, [pc, #44]	; (8000e70 <rgb_i2cRead+0xc4>)
 8000e44:	8a1b      	ldrh	r3, [r3, #16]
 8000e46:	07da      	lsls	r2, r3, #31
 8000e48:	d503      	bpl.n	8000e52 <rgb_i2cRead+0xa6>
 8000e4a:	7a23      	ldrb	r3, [r4, #8]
 8000e4c:	f043 0301 	orr.w	r3, r3, #1
 8000e50:	7223      	strb	r3, [r4, #8]
 8000e52:	f7ff ff1b 	bl	8000c8c <RGBSetLowSCL>
 8000e56:	3d01      	subs	r5, #1
 8000e58:	d1b6      	bne.n	8000dc8 <rgb_i2cRead+0x1c>
 8000e5a:	b10e      	cbz	r6, 8000e60 <rgb_i2cRead+0xb4>
 8000e5c:	f7ff feba 	bl	8000bd4 <RGBSetLowSDA>
 8000e60:	f7ff ff1b 	bl	8000c9a <RGBSetHighSCL>
 8000e64:	f7ff ff12 	bl	8000c8c <RGBSetLowSCL>
 8000e68:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8000e6c:	f7ff beb0 	b.w	8000bd0 <rgb_i2c_delay>
 8000e70:	48000400 	.word	0x48000400

08000e74 <rgb_i2c_write_reg>:
 8000e74:	b570      	push	{r4, r5, r6, lr}
 8000e76:	4605      	mov	r5, r0
 8000e78:	460c      	mov	r4, r1
 8000e7a:	4616      	mov	r6, r2
 8000e7c:	f7ff ff58 	bl	8000d30 <rgb_i2cStart>
 8000e80:	4628      	mov	r0, r5
 8000e82:	f7ff ff73 	bl	8000d6c <rgb_i2cWrite>
 8000e86:	4620      	mov	r0, r4
 8000e88:	f7ff ff70 	bl	8000d6c <rgb_i2cWrite>
 8000e8c:	4630      	mov	r0, r6
 8000e8e:	f7ff ff6d 	bl	8000d6c <rgb_i2cWrite>
 8000e92:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8000e96:	f7ff bf5a 	b.w	8000d4e <rgb_i2cStop>

08000e9a <rgb_i2c_read_reg>:
 8000e9a:	b570      	push	{r4, r5, r6, lr}
 8000e9c:	4604      	mov	r4, r0
 8000e9e:	460d      	mov	r5, r1
 8000ea0:	4616      	mov	r6, r2
 8000ea2:	f7ff ff45 	bl	8000d30 <rgb_i2cStart>
 8000ea6:	4620      	mov	r0, r4
 8000ea8:	f7ff ff60 	bl	8000d6c <rgb_i2cWrite>
 8000eac:	4628      	mov	r0, r5
 8000eae:	f7ff ff5d 	bl	8000d6c <rgb_i2cWrite>
 8000eb2:	f7ff ff3d 	bl	8000d30 <rgb_i2cStart>
 8000eb6:	f044 0001 	orr.w	r0, r4, #1
 8000eba:	f7ff ff57 	bl	8000d6c <rgb_i2cWrite>
 8000ebe:	4631      	mov	r1, r6
 8000ec0:	2000      	movs	r0, #0
 8000ec2:	f7ff ff73 	bl	8000dac <rgb_i2cRead>
 8000ec6:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8000eca:	f7ff bf40 	b.w	8000d4e <rgb_i2cStop>
	...

08000ed0 <rgb_init>:
 8000ed0:	4b1d      	ldr	r3, [pc, #116]	; (8000f48 <rgb_init+0x78>)
 8000ed2:	b570      	push	{r4, r5, r6, lr}
 8000ed4:	2409      	movs	r4, #9
 8000ed6:	2200      	movs	r2, #0
 8000ed8:	3c01      	subs	r4, #1
 8000eda:	801a      	strh	r2, [r3, #0]
 8000edc:	825a      	strh	r2, [r3, #18]
 8000ede:	849a      	strh	r2, [r3, #36]	; 0x24
 8000ee0:	f8a3 2048 	strh.w	r2, [r3, #72]	; 0x48
 8000ee4:	86da      	strh	r2, [r3, #54]	; 0x36
 8000ee6:	f103 0302 	add.w	r3, r3, #2
 8000eea:	d1f4      	bne.n	8000ed6 <rgb_init+0x6>
 8000eec:	4d17      	ldr	r5, [pc, #92]	; (8000f4c <rgb_init+0x7c>)
 8000eee:	f64f 76ff 	movw	r6, #65535	; 0xffff
 8000ef2:	802e      	strh	r6, [r5, #0]
 8000ef4:	f7ff fed8 	bl	8000ca8 <rgb_i2c_init>
 8000ef8:	2072      	movs	r0, #114	; 0x72
 8000efa:	2181      	movs	r1, #129	; 0x81
 8000efc:	22ff      	movs	r2, #255	; 0xff
 8000efe:	f7ff ffb9 	bl	8000e74 <rgb_i2c_write_reg>
 8000f02:	2072      	movs	r0, #114	; 0x72
 8000f04:	2183      	movs	r1, #131	; 0x83
 8000f06:	22ff      	movs	r2, #255	; 0xff
 8000f08:	f7ff ffb4 	bl	8000e74 <rgb_i2c_write_reg>
 8000f0c:	2072      	movs	r0, #114	; 0x72
 8000f0e:	218d      	movs	r1, #141	; 0x8d
 8000f10:	4622      	mov	r2, r4
 8000f12:	f7ff ffaf 	bl	8000e74 <rgb_i2c_write_reg>
 8000f16:	2072      	movs	r0, #114	; 0x72
 8000f18:	2180      	movs	r1, #128	; 0x80
 8000f1a:	2203      	movs	r2, #3
 8000f1c:	f7ff ffaa 	bl	8000e74 <rgb_i2c_write_reg>
 8000f20:	2072      	movs	r0, #114	; 0x72
 8000f22:	218f      	movs	r1, #143	; 0x8f
 8000f24:	2223      	movs	r2, #35	; 0x23
 8000f26:	f7ff ffa5 	bl	8000e74 <rgb_i2c_write_reg>
 8000f2a:	f7ff fe83 	bl	8000c34 <RGBSetHighSDA>
 8000f2e:	2072      	movs	r0, #114	; 0x72
 8000f30:	2180      	movs	r1, #128	; 0x80
 8000f32:	2207      	movs	r2, #7
 8000f34:	802c      	strh	r4, [r5, #0]
 8000f36:	f7ff ff9d 	bl	8000e74 <rgb_i2c_write_reg>
 8000f3a:	2072      	movs	r0, #114	; 0x72
 8000f3c:	218e      	movs	r1, #142	; 0x8e
 8000f3e:	2208      	movs	r2, #8
 8000f40:	f7ff ff98 	bl	8000e74 <rgb_i2c_write_reg>
 8000f44:	802e      	strh	r6, [r5, #0]
 8000f46:	bd70      	pop	{r4, r5, r6, pc}
 8000f48:	200002f2 	.word	0x200002f2
 8000f4c:	2000098c 	.word	0x2000098c

08000f50 <rgb_read>:
 8000f50:	b538      	push	{r3, r4, r5, lr}
 8000f52:	f7ff feed 	bl	8000d30 <rgb_i2cStart>
 8000f56:	2072      	movs	r0, #114	; 0x72
 8000f58:	f7ff ff08 	bl	8000d6c <rgb_i2cWrite>
 8000f5c:	20b4      	movs	r0, #180	; 0xb4
 8000f5e:	f7ff ff05 	bl	8000d6c <rgb_i2cWrite>
 8000f62:	f7ff fee5 	bl	8000d30 <rgb_i2cStart>
 8000f66:	2073      	movs	r0, #115	; 0x73
 8000f68:	f7ff ff00 	bl	8000d6c <rgb_i2cWrite>
 8000f6c:	2001      	movs	r0, #1
 8000f6e:	4946      	ldr	r1, [pc, #280]	; (8001088 <rgb_read+0x138>)
 8000f70:	f7ff ff1c 	bl	8000dac <rgb_i2cRead>
 8000f74:	2300      	movs	r3, #0
 8000f76:	4d45      	ldr	r5, [pc, #276]	; (800108c <rgb_read+0x13c>)
 8000f78:	4c43      	ldr	r4, [pc, #268]	; (8001088 <rgb_read+0x138>)
 8000f7a:	eb05 0243 	add.w	r2, r5, r3, lsl #1
 8000f7e:	5d19      	ldrb	r1, [r3, r4]
 8000f80:	3301      	adds	r3, #1
 8000f82:	2b09      	cmp	r3, #9
 8000f84:	86d1      	strh	r1, [r2, #54]	; 0x36
 8000f86:	d1f6      	bne.n	8000f76 <rgb_read+0x26>
 8000f88:	2001      	movs	r0, #1
 8000f8a:	4621      	mov	r1, r4
 8000f8c:	f7ff ff0e 	bl	8000dac <rgb_i2cRead>
 8000f90:	f105 0236 	add.w	r2, r5, #54	; 0x36
 8000f94:	2300      	movs	r3, #0
 8000f96:	8811      	ldrh	r1, [r2, #0]
 8000f98:	5ce0      	ldrb	r0, [r4, r3]
 8000f9a:	3301      	adds	r3, #1
 8000f9c:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 8000fa0:	2b09      	cmp	r3, #9
 8000fa2:	f822 1b02 	strh.w	r1, [r2], #2
 8000fa6:	d1f6      	bne.n	8000f96 <rgb_read+0x46>
 8000fa8:	2001      	movs	r0, #1
 8000faa:	4937      	ldr	r1, [pc, #220]	; (8001088 <rgb_read+0x138>)
 8000fac:	f7ff fefe 	bl	8000dac <rgb_i2cRead>
 8000fb0:	2300      	movs	r3, #0
 8000fb2:	5ce2      	ldrb	r2, [r4, r3]
 8000fb4:	f825 2013 	strh.w	r2, [r5, r3, lsl #1]
 8000fb8:	3301      	adds	r3, #1
 8000fba:	2b09      	cmp	r3, #9
 8000fbc:	d1f9      	bne.n	8000fb2 <rgb_read+0x62>
 8000fbe:	2001      	movs	r0, #1
 8000fc0:	4931      	ldr	r1, [pc, #196]	; (8001088 <rgb_read+0x138>)
 8000fc2:	f7ff fef3 	bl	8000dac <rgb_i2cRead>
 8000fc6:	4a32      	ldr	r2, [pc, #200]	; (8001090 <rgb_read+0x140>)
 8000fc8:	2300      	movs	r3, #0
 8000fca:	5ce0      	ldrb	r0, [r4, r3]
 8000fcc:	8851      	ldrh	r1, [r2, #2]
 8000fce:	3301      	adds	r3, #1
 8000fd0:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 8000fd4:	2b09      	cmp	r3, #9
 8000fd6:	f822 1f02 	strh.w	r1, [r2, #2]!
 8000fda:	d1f6      	bne.n	8000fca <rgb_read+0x7a>
 8000fdc:	2001      	movs	r0, #1
 8000fde:	492a      	ldr	r1, [pc, #168]	; (8001088 <rgb_read+0x138>)
 8000fe0:	f7ff fee4 	bl	8000dac <rgb_i2cRead>
 8000fe4:	2300      	movs	r3, #0
 8000fe6:	eb05 0243 	add.w	r2, r5, r3, lsl #1
 8000fea:	5ce1      	ldrb	r1, [r4, r3]
 8000fec:	3301      	adds	r3, #1
 8000fee:	2b09      	cmp	r3, #9
 8000ff0:	8251      	strh	r1, [r2, #18]
 8000ff2:	d1f8      	bne.n	8000fe6 <rgb_read+0x96>
 8000ff4:	2001      	movs	r0, #1
 8000ff6:	4924      	ldr	r1, [pc, #144]	; (8001088 <rgb_read+0x138>)
 8000ff8:	f7ff fed8 	bl	8000dac <rgb_i2cRead>
 8000ffc:	4a25      	ldr	r2, [pc, #148]	; (8001094 <rgb_read+0x144>)
 8000ffe:	2300      	movs	r3, #0
 8001000:	8811      	ldrh	r1, [r2, #0]
 8001002:	5ce0      	ldrb	r0, [r4, r3]
 8001004:	3301      	adds	r3, #1
 8001006:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 800100a:	2b09      	cmp	r3, #9
 800100c:	f822 1b02 	strh.w	r1, [r2], #2
 8001010:	d1f6      	bne.n	8001000 <rgb_read+0xb0>
 8001012:	2001      	movs	r0, #1
 8001014:	491c      	ldr	r1, [pc, #112]	; (8001088 <rgb_read+0x138>)
 8001016:	f7ff fec9 	bl	8000dac <rgb_i2cRead>
 800101a:	2300      	movs	r3, #0
 800101c:	eb05 0243 	add.w	r2, r5, r3, lsl #1
 8001020:	5ce1      	ldrb	r1, [r4, r3]
 8001022:	3301      	adds	r3, #1
 8001024:	2b09      	cmp	r3, #9
 8001026:	8491      	strh	r1, [r2, #36]	; 0x24
 8001028:	d1f8      	bne.n	800101c <rgb_read+0xcc>
 800102a:	2001      	movs	r0, #1
 800102c:	4916      	ldr	r1, [pc, #88]	; (8001088 <rgb_read+0x138>)
 800102e:	f7ff febd 	bl	8000dac <rgb_i2cRead>
 8001032:	4a19      	ldr	r2, [pc, #100]	; (8001098 <rgb_read+0x148>)
 8001034:	2300      	movs	r3, #0
 8001036:	8811      	ldrh	r1, [r2, #0]
 8001038:	5ce0      	ldrb	r0, [r4, r3]
 800103a:	3301      	adds	r3, #1
 800103c:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 8001040:	2b09      	cmp	r3, #9
 8001042:	f822 1b02 	strh.w	r1, [r2], #2
 8001046:	d1f6      	bne.n	8001036 <rgb_read+0xe6>
 8001048:	2001      	movs	r0, #1
 800104a:	490f      	ldr	r1, [pc, #60]	; (8001088 <rgb_read+0x138>)
 800104c:	f7ff feae 	bl	8000dac <rgb_i2cRead>
 8001050:	2300      	movs	r3, #0
 8001052:	eb05 0243 	add.w	r2, r5, r3, lsl #1
 8001056:	5ce1      	ldrb	r1, [r4, r3]
 8001058:	3301      	adds	r3, #1
 800105a:	2b09      	cmp	r3, #9
 800105c:	f8a2 1048 	strh.w	r1, [r2, #72]	; 0x48
 8001060:	d1f7      	bne.n	8001052 <rgb_read+0x102>
 8001062:	2000      	movs	r0, #0
 8001064:	4908      	ldr	r1, [pc, #32]	; (8001088 <rgb_read+0x138>)
 8001066:	f7ff fea1 	bl	8000dac <rgb_i2cRead>
 800106a:	4a0c      	ldr	r2, [pc, #48]	; (800109c <rgb_read+0x14c>)
 800106c:	2300      	movs	r3, #0
 800106e:	8811      	ldrh	r1, [r2, #0]
 8001070:	5ce0      	ldrb	r0, [r4, r3]
 8001072:	3301      	adds	r3, #1
 8001074:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 8001078:	2b09      	cmp	r3, #9
 800107a:	f822 1b02 	strh.w	r1, [r2], #2
 800107e:	d1f6      	bne.n	800106e <rgb_read+0x11e>
 8001080:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8001084:	f7ff be63 	b.w	8000d4e <rgb_i2cStop>
 8001088:	2000098e 	.word	0x2000098e
 800108c:	200002f2 	.word	0x200002f2
 8001090:	200002f0 	.word	0x200002f0
 8001094:	20000304 	.word	0x20000304
 8001098:	20000316 	.word	0x20000316
 800109c:	2000033a 	.word	0x2000033a

080010a0 <line_sensor_read.part.0>:
 80010a0:	4968      	ldr	r1, [pc, #416]	; (8001244 <line_sensor_read.part.0+0x1a4>)
 80010a2:	4a69      	ldr	r2, [pc, #420]	; (8001248 <line_sensor_read.part.0+0x1a8>)
 80010a4:	6a4b      	ldr	r3, [r1, #36]	; 0x24
 80010a6:	f9b2 0058 	ldrsh.w	r0, [r2, #88]	; 0x58
 80010aa:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80010ae:	2407      	movs	r4, #7
 80010b0:	fb04 0303 	mla	r3, r4, r3, r0
 80010b4:	2008      	movs	r0, #8
 80010b6:	fb93 f3f0 	sdiv	r3, r3, r0
 80010ba:	624b      	str	r3, [r1, #36]	; 0x24
 80010bc:	2300      	movs	r3, #0
 80010be:	4618      	mov	r0, r3
 80010c0:	461c      	mov	r4, r3
 80010c2:	461d      	mov	r5, r3
 80010c4:	461e      	mov	r6, r3
 80010c6:	4692      	mov	sl, r2
 80010c8:	4f60      	ldr	r7, [pc, #384]	; (800124c <line_sensor_read.part.0+0x1ac>)
 80010ca:	f8b2 9036 	ldrh.w	r9, [r2, #54]	; 0x36
 80010ce:	5bdf      	ldrh	r7, [r3, r7]
 80010d0:	ebc7 0909 	rsb	r9, r7, r9
 80010d4:	fa1f f989 	uxth.w	r9, r9
 80010d8:	4f5d      	ldr	r7, [pc, #372]	; (8001250 <line_sensor_read.part.0+0x1b0>)
 80010da:	f8a2 9036 	strh.w	r9, [r2, #54]	; 0x36
 80010de:	f83a 8003 	ldrh.w	r8, [sl, r3]
 80010e2:	5bdf      	ldrh	r7, [r3, r7]
 80010e4:	ebc7 0808 	rsb	r8, r7, r8
 80010e8:	fa1f f888 	uxth.w	r8, r8
 80010ec:	f82a 8003 	strh.w	r8, [sl, r3]
 80010f0:	4f58      	ldr	r7, [pc, #352]	; (8001254 <line_sensor_read.part.0+0x1b4>)
 80010f2:	f8b2 c012 	ldrh.w	ip, [r2, #18]
 80010f6:	5bdf      	ldrh	r7, [r3, r7]
 80010f8:	f8b2 b024 	ldrh.w	fp, [r2, #36]	; 0x24
 80010fc:	ebc7 0c0c 	rsb	ip, r7, ip
 8001100:	4f55      	ldr	r7, [pc, #340]	; (8001258 <line_sensor_read.part.0+0x1b8>)
 8001102:	5bdf      	ldrh	r7, [r3, r7]
 8001104:	ebc7 070b 	rsb	r7, r7, fp
 8001108:	fa1f fc8c 	uxth.w	ip, ip
 800110c:	b2bf      	uxth	r7, r7
 800110e:	3302      	adds	r3, #2
 8001110:	444e      	add	r6, r9
 8001112:	4445      	add	r5, r8
 8001114:	4464      	add	r4, ip
 8001116:	4438      	add	r0, r7
 8001118:	2b10      	cmp	r3, #16
 800111a:	f8a2 c012 	strh.w	ip, [r2, #18]
 800111e:	8497      	strh	r7, [r2, #36]	; 0x24
 8001120:	b2b6      	uxth	r6, r6
 8001122:	b2ad      	uxth	r5, r5
 8001124:	b2a4      	uxth	r4, r4
 8001126:	b280      	uxth	r0, r0
 8001128:	f102 0202 	add.w	r2, r2, #2
 800112c:	d1cc      	bne.n	80010c8 <line_sensor_read.part.0+0x28>
 800112e:	2308      	movs	r3, #8
 8001130:	b200      	sxth	r0, r0
 8001132:	b236      	sxth	r6, r6
 8001134:	b22d      	sxth	r5, r5
 8001136:	b224      	sxth	r4, r4
 8001138:	fb96 f6f3 	sdiv	r6, r6, r3
 800113c:	fb95 f5f3 	sdiv	r5, r5, r3
 8001140:	fb94 f4f3 	sdiv	r4, r4, r3
 8001144:	fb90 f3f3 	sdiv	r3, r0, r3
 8001148:	fa1f fa83 	uxth.w	sl, r3
 800114c:	2200      	movs	r2, #0
 800114e:	4b3e      	ldr	r3, [pc, #248]	; (8001248 <line_sensor_read.part.0+0x1a8>)
 8001150:	b2b6      	uxth	r6, r6
 8001152:	b2ad      	uxth	r5, r5
 8001154:	b2a4      	uxth	r4, r4
 8001156:	4610      	mov	r0, r2
 8001158:	f8b3 9036 	ldrh.w	r9, [r3, #54]	; 0x36
 800115c:	881f      	ldrh	r7, [r3, #0]
 800115e:	f8b3 8012 	ldrh.w	r8, [r3, #18]
 8001162:	f8b3 c024 	ldrh.w	ip, [r3, #36]	; 0x24
 8001166:	ebc6 0909 	rsb	r9, r6, r9
 800116a:	1b7f      	subs	r7, r7, r5
 800116c:	fa1f f989 	uxth.w	r9, r9
 8001170:	b2bf      	uxth	r7, r7
 8001172:	ebc4 0808 	rsb	r8, r4, r8
 8001176:	f8a3 9036 	strh.w	r9, [r3, #54]	; 0x36
 800117a:	801f      	strh	r7, [r3, #0]
 800117c:	fa1f f888 	uxth.w	r8, r8
 8001180:	ebca 0c0c 	rsb	ip, sl, ip
 8001184:	fa0f f989 	sxth.w	r9, r9
 8001188:	b23f      	sxth	r7, r7
 800118a:	f8a3 8012 	strh.w	r8, [r3, #18]
 800118e:	fa1f fc8c 	uxth.w	ip, ip
 8001192:	454f      	cmp	r7, r9
 8001194:	bfa8      	it	ge
 8001196:	464f      	movge	r7, r9
 8001198:	fa0f f888 	sxth.w	r8, r8
 800119c:	f8a3 c024 	strh.w	ip, [r3, #36]	; 0x24
 80011a0:	4547      	cmp	r7, r8
 80011a2:	bfa8      	it	ge
 80011a4:	4647      	movge	r7, r8
 80011a6:	fa0f fc8c 	sxth.w	ip, ip
 80011aa:	4567      	cmp	r7, ip
 80011ac:	bfa8      	it	ge
 80011ae:	4667      	movge	r7, ip
 80011b0:	427f      	negs	r7, r7
 80011b2:	eb01 0c40 	add.w	ip, r1, r0, lsl #1
 80011b6:	b2bf      	uxth	r7, r7
 80011b8:	f8ac 700a 	strh.w	r7, [ip, #10]
 80011bc:	eb01 0c42 	add.w	ip, r1, r2, lsl #1
 80011c0:	b23f      	sxth	r7, r7
 80011c2:	f9bc c00a 	ldrsh.w	ip, [ip, #10]
 80011c6:	45bc      	cmp	ip, r7
 80011c8:	bfb8      	it	lt
 80011ca:	4602      	movlt	r2, r0
 80011cc:	3001      	adds	r0, #1
 80011ce:	2808      	cmp	r0, #8
 80011d0:	f103 0302 	add.w	r3, r3, #2
 80011d4:	d1c0      	bne.n	8001158 <line_sensor_read.part.0+0xb8>
 80011d6:	2000      	movs	r0, #0
 80011d8:	4603      	mov	r3, r0
 80011da:	180c      	adds	r4, r1, r0
 80011dc:	3002      	adds	r0, #2
 80011de:	f9b4 400a 	ldrsh.w	r4, [r4, #10]
 80011e2:	2810      	cmp	r0, #16
 80011e4:	4423      	add	r3, r4
 80011e6:	d1f8      	bne.n	80011da <line_sensor_read.part.0+0x13a>
 80011e8:	2000      	movs	r0, #0
 80011ea:	4604      	mov	r4, r0
 80011ec:	4d1b      	ldr	r5, [pc, #108]	; (800125c <line_sensor_read.part.0+0x1bc>)
 80011ee:	5b46      	ldrh	r6, [r0, r5]
 80011f0:	180d      	adds	r5, r1, r0
 80011f2:	3002      	adds	r0, #2
 80011f4:	896d      	ldrh	r5, [r5, #10]
 80011f6:	2810      	cmp	r0, #16
 80011f8:	fb16 4405 	smlabb	r4, r6, r5, r4
 80011fc:	d1f6      	bne.n	80011ec <line_sensor_read.part.0+0x14c>
 80011fe:	2b96      	cmp	r3, #150	; 0x96
 8001200:	dd1b      	ble.n	800123a <line_sensor_read.part.0+0x19a>
 8001202:	fb94 f3f3 	sdiv	r3, r4, r3
 8001206:	f46f 748f 	mvn.w	r4, #286	; 0x11e
 800120a:	4423      	add	r3, r4
 800120c:	f5b3 7f96 	cmp.w	r3, #300	; 0x12c
 8001210:	dc05      	bgt.n	800121e <line_sensor_read.part.0+0x17e>
 8001212:	f5a0 709e 	sub.w	r0, r0, #316	; 0x13c
 8001216:	4283      	cmp	r3, r0
 8001218:	bfb8      	it	lt
 800121a:	4603      	movlt	r3, r0
 800121c:	e001      	b.n	8001222 <line_sensor_read.part.0+0x182>
 800121e:	f44f 7396 	mov.w	r3, #300	; 0x12c
 8001222:	b122      	cbz	r2, 800122e <line_sensor_read.part.0+0x18e>
 8001224:	2a07      	cmp	r2, #7
 8001226:	bf08      	it	eq
 8001228:	f44f 7396 	moveq.w	r3, #300	; 0x12c
 800122c:	e000      	b.n	8001230 <line_sensor_read.part.0+0x190>
 800122e:	4b0c      	ldr	r3, [pc, #48]	; (8001260 <line_sensor_read.part.0+0x1c0>)
 8001230:	620b      	str	r3, [r1, #32]
 8001232:	2308      	movs	r3, #8
 8001234:	770b      	strb	r3, [r1, #28]
 8001236:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800123a:	4b02      	ldr	r3, [pc, #8]	; (8001244 <line_sensor_read.part.0+0x1a4>)
 800123c:	2200      	movs	r2, #0
 800123e:	771a      	strb	r2, [r3, #28]
 8001240:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8001244:	2000034c 	.word	0x2000034c
 8001248:	200002f2 	.word	0x200002f2
 800124c:	20000154 	.word	0x20000154
 8001250:	20000184 	.word	0x20000184
 8001254:	20000174 	.word	0x20000174
 8001258:	20000164 	.word	0x20000164
 800125c:	20000000 	.word	0x20000000
 8001260:	fffffed4 	.word	0xfffffed4

08001264 <line_sensor_init>:
 8001264:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8001268:	2064      	movs	r0, #100	; 0x64
 800126a:	f000 fe7d 	bl	8001f68 <timer_delay_ms>
 800126e:	2400      	movs	r4, #0
 8001270:	f7ff fe2e 	bl	8000ed0 <rgb_init>
 8001274:	f7ff fe6c 	bl	8000f50 <rgb_read>
 8001278:	2072      	movs	r0, #114	; 0x72
 800127a:	2192      	movs	r1, #146	; 0x92
 800127c:	4a2c      	ldr	r2, [pc, #176]	; (8001330 <line_sensor_init+0xcc>)
 800127e:	f7ff fe0c 	bl	8000e9a <rgb_i2c_read_reg>
 8001282:	4623      	mov	r3, r4
 8001284:	4a2b      	ldr	r2, [pc, #172]	; (8001334 <line_sensor_init+0xd0>)
 8001286:	1899      	adds	r1, r3, r2
 8001288:	4616      	mov	r6, r2
 800128a:	7849      	ldrb	r1, [r1, #1]
 800128c:	2969      	cmp	r1, #105	; 0x69
 800128e:	d002      	beq.n	8001296 <line_sensor_init+0x32>
 8001290:	2201      	movs	r2, #1
 8001292:	409a      	lsls	r2, r3
 8001294:	4314      	orrs	r4, r2
 8001296:	3301      	adds	r3, #1
 8001298:	2b09      	cmp	r3, #9
 800129a:	d1f3      	bne.n	8001284 <line_sensor_init+0x20>
 800129c:	2100      	movs	r1, #0
 800129e:	1875      	adds	r5, r6, r1
 80012a0:	3102      	adds	r1, #2
 80012a2:	2200      	movs	r2, #0
 80012a4:	2910      	cmp	r1, #16
 80012a6:	4b23      	ldr	r3, [pc, #140]	; (8001334 <line_sensor_init+0xd0>)
 80012a8:	816a      	strh	r2, [r5, #10]
 80012aa:	d1f8      	bne.n	800129e <line_sensor_init+0x3a>
 80012ac:	701a      	strb	r2, [r3, #0]
 80012ae:	771a      	strb	r2, [r3, #28]
 80012b0:	f883 2028 	strb.w	r2, [r3, #40]	; 0x28
 80012b4:	621a      	str	r2, [r3, #32]
 80012b6:	625a      	str	r2, [r3, #36]	; 0x24
 80012b8:	f7ff fe4a 	bl	8000f50 <rgb_read>
 80012bc:	2520      	movs	r5, #32
 80012be:	f7ff fe47 	bl	8000f50 <rgb_read>
 80012c2:	4a1d      	ldr	r2, [pc, #116]	; (8001338 <line_sensor_init+0xd4>)
 80012c4:	2300      	movs	r3, #0
 80012c6:	4694      	mov	ip, r2
 80012c8:	4f1c      	ldr	r7, [pc, #112]	; (800133c <line_sensor_init+0xd8>)
 80012ca:	8ed0      	ldrh	r0, [r2, #54]	; 0x36
 80012cc:	5bd9      	ldrh	r1, [r3, r7]
 80012ce:	4e1c      	ldr	r6, [pc, #112]	; (8001340 <line_sensor_init+0xdc>)
 80012d0:	f8b2 8012 	ldrh.w	r8, [r2, #18]
 80012d4:	f8b2 9024 	ldrh.w	r9, [r2, #36]	; 0x24
 80012d8:	4401      	add	r1, r0
 80012da:	53d9      	strh	r1, [r3, r7]
 80012dc:	f83c 0003 	ldrh.w	r0, [ip, r3]
 80012e0:	5b99      	ldrh	r1, [r3, r6]
 80012e2:	4401      	add	r1, r0
 80012e4:	4817      	ldr	r0, [pc, #92]	; (8001344 <line_sensor_init+0xe0>)
 80012e6:	5399      	strh	r1, [r3, r6]
 80012e8:	5a19      	ldrh	r1, [r3, r0]
 80012ea:	4441      	add	r1, r8
 80012ec:	5219      	strh	r1, [r3, r0]
 80012ee:	4916      	ldr	r1, [pc, #88]	; (8001348 <line_sensor_init+0xe4>)
 80012f0:	f833 8001 	ldrh.w	r8, [r3, r1]
 80012f4:	44c8      	add	r8, r9
 80012f6:	f823 8001 	strh.w	r8, [r3, r1]
 80012fa:	3302      	adds	r3, #2
 80012fc:	2b10      	cmp	r3, #16
 80012fe:	f102 0202 	add.w	r2, r2, #2
 8001302:	d1e1      	bne.n	80012c8 <line_sensor_init+0x64>
 8001304:	3d01      	subs	r5, #1
 8001306:	d1da      	bne.n	80012be <line_sensor_init+0x5a>
 8001308:	462b      	mov	r3, r5
 800130a:	5efa      	ldrsh	r2, [r7, r3]
 800130c:	0952      	lsrs	r2, r2, #5
 800130e:	52fa      	strh	r2, [r7, r3]
 8001310:	5ef2      	ldrsh	r2, [r6, r3]
 8001312:	0952      	lsrs	r2, r2, #5
 8001314:	52f2      	strh	r2, [r6, r3]
 8001316:	5ec2      	ldrsh	r2, [r0, r3]
 8001318:	0952      	lsrs	r2, r2, #5
 800131a:	52c2      	strh	r2, [r0, r3]
 800131c:	5eca      	ldrsh	r2, [r1, r3]
 800131e:	0952      	lsrs	r2, r2, #5
 8001320:	52ca      	strh	r2, [r1, r3]
 8001322:	3302      	adds	r3, #2
 8001324:	2b10      	cmp	r3, #16
 8001326:	d1f0      	bne.n	800130a <line_sensor_init+0xa6>
 8001328:	4620      	mov	r0, r4
 800132a:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 800132e:	bf00      	nop
 8001330:	2000034d 	.word	0x2000034d
 8001334:	2000034c 	.word	0x2000034c
 8001338:	200002f2 	.word	0x200002f2
 800133c:	20000154 	.word	0x20000154
 8001340:	20000184 	.word	0x20000184
 8001344:	20000174 	.word	0x20000174
 8001348:	20000164 	.word	0x20000164

0800134c <line_sensor_read>:
 800134c:	b510      	push	{r4, lr}
 800134e:	4604      	mov	r4, r0
 8001350:	f7ff fdfe 	bl	8000f50 <rgb_read>
 8001354:	b91c      	cbnz	r4, 800135e <line_sensor_read+0x12>
 8001356:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800135a:	f7ff bea1 	b.w	80010a0 <line_sensor_read.part.0>
 800135e:	bd10      	pop	{r4, pc}

08001360 <abort_error_>:
 8001360:	b570      	push	{r4, r5, r6, lr}
 8001362:	4605      	mov	r5, r0
 8001364:	460e      	mov	r6, r1
 8001366:	480f      	ldr	r0, [pc, #60]	; (80013a4 <abort_error_+0x44>)
 8001368:	4629      	mov	r1, r5
 800136a:	4632      	mov	r2, r6
 800136c:	f7ff f8b2 	bl	80004d4 <printf_>
 8001370:	2400      	movs	r4, #0
 8001372:	1ceb      	adds	r3, r5, #3
 8001374:	429c      	cmp	r4, r3
 8001376:	d20f      	bcs.n	8001398 <abort_error_+0x38>
 8001378:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 800137c:	f001 fba4 	bl	8002ac8 <led_on>
 8001380:	2032      	movs	r0, #50	; 0x32
 8001382:	f000 fdf1 	bl	8001f68 <timer_delay_ms>
 8001386:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 800138a:	f001 fbaf 	bl	8002aec <led_off>
 800138e:	2064      	movs	r0, #100	; 0x64
 8001390:	f000 fdea 	bl	8001f68 <timer_delay_ms>
 8001394:	3401      	adds	r4, #1
 8001396:	e7ec      	b.n	8001372 <abort_error_+0x12>
 8001398:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 800139c:	f000 fde4 	bl	8001f68 <timer_delay_ms>
 80013a0:	e7e1      	b.n	8001366 <abort_error_+0x6>
 80013a2:	bf00      	nop
 80013a4:	08002be1 	.word	0x08002be1

080013a8 <line_sensor_thread>:
 80013a8:	b508      	push	{r3, lr}
 80013aa:	f7ff ff5b 	bl	8001264 <line_sensor_init>
 80013ae:	4601      	mov	r1, r0
 80013b0:	b120      	cbz	r0, 80013bc <line_sensor_thread+0x14>
 80013b2:	4b08      	ldr	r3, [pc, #32]	; (80013d4 <line_sensor_thread+0x2c>)
 80013b4:	2001      	movs	r0, #1
 80013b6:	6018      	str	r0, [r3, #0]
 80013b8:	f7ff ffd2 	bl	8001360 <abort_error_>
 80013bc:	2000      	movs	r0, #0
 80013be:	2104      	movs	r1, #4
 80013c0:	f000 fde2 	bl	8001f88 <event_timer_set_period>
 80013c4:	2000      	movs	r0, #0
 80013c6:	f000 fdf5 	bl	8001fb4 <event_timer_wait>
 80013ca:	2000      	movs	r0, #0
 80013cc:	f7ff ffbe 	bl	800134c <line_sensor_read>
 80013d0:	e7f8      	b.n	80013c4 <line_sensor_thread+0x1c>
 80013d2:	bf00      	nop
 80013d4:	2000102c 	.word	0x2000102c

080013d8 <i2c_sensor_thread>:
 80013d8:	b508      	push	{r3, lr}
 80013da:	f7ff fa47 	bl	800086c <lsm9ds0_init>
 80013de:	4601      	mov	r1, r0
 80013e0:	b128      	cbz	r0, 80013ee <i2c_sensor_thread+0x16>
 80013e2:	4b08      	ldr	r3, [pc, #32]	; (8001404 <i2c_sensor_thread+0x2c>)
 80013e4:	2201      	movs	r2, #1
 80013e6:	2002      	movs	r0, #2
 80013e8:	601a      	str	r2, [r3, #0]
 80013ea:	f7ff ffb9 	bl	8001360 <abort_error_>
 80013ee:	2001      	movs	r0, #1
 80013f0:	210a      	movs	r1, #10
 80013f2:	f000 fdc9 	bl	8001f88 <event_timer_set_period>
 80013f6:	2001      	movs	r0, #1
 80013f8:	f000 fddc 	bl	8001fb4 <event_timer_wait>
 80013fc:	f7ff f9b8 	bl	8000770 <lsm9ds0_read>
 8001400:	e7f9      	b.n	80013f6 <i2c_sensor_thread+0x1e>
 8001402:	bf00      	nop
 8001404:	2000102c 	.word	0x2000102c

08001408 <line_follower>:
 8001408:	b538      	push	{r3, r4, r5, lr}
 800140a:	f000 f8dd 	bl	80015c8 <line_follower_init>
 800140e:	2002      	movs	r0, #2
 8001410:	2104      	movs	r1, #4
 8001412:	f000 fdb9 	bl	8001f88 <event_timer_set_period>
 8001416:	f000 fd99 	bl	8001f4c <timer_get_time>
 800141a:	f500 30c3 	add.w	r0, r0, #99840	; 0x18600
 800141e:	f100 05a0 	add.w	r5, r0, #160	; 0xa0
 8001422:	2400      	movs	r4, #0
 8001424:	2002      	movs	r0, #2
 8001426:	f000 fdc5 	bl	8001fb4 <event_timer_wait>
 800142a:	4b14      	ldr	r3, [pc, #80]	; (800147c <line_follower+0x74>)
 800142c:	6a5a      	ldr	r2, [r3, #36]	; 0x24
 800142e:	f5b2 7f48 	cmp.w	r2, #800	; 0x320
 8001432:	dd02      	ble.n	800143a <line_follower+0x32>
 8001434:	f000 f9bf 	bl	80017b6 <obstacle_main>
 8001438:	e007      	b.n	800144a <line_follower+0x42>
 800143a:	7f1b      	ldrb	r3, [r3, #28]
 800143c:	2b08      	cmp	r3, #8
 800143e:	d102      	bne.n	8001446 <line_follower+0x3e>
 8001440:	f000 f8e6 	bl	8001610 <line_follower_main>
 8001444:	e001      	b.n	800144a <line_follower+0x42>
 8001446:	f000 f9bb 	bl	80017c0 <broken_line_main>
 800144a:	3401      	adds	r4, #1
 800144c:	2314      	movs	r3, #20
 800144e:	fbb4 f2f3 	udiv	r2, r4, r3
 8001452:	fb03 4312 	mls	r3, r3, r2, r4
 8001456:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 800145a:	b913      	cbnz	r3, 8001462 <line_follower+0x5a>
 800145c:	f001 fb34 	bl	8002ac8 <led_on>
 8001460:	e001      	b.n	8001466 <line_follower+0x5e>
 8001462:	f001 fb43 	bl	8002aec <led_off>
 8001466:	f000 fd71 	bl	8001f4c <timer_get_time>
 800146a:	4285      	cmp	r5, r0
 800146c:	d2da      	bcs.n	8001424 <line_follower+0x1c>
 800146e:	2000      	movs	r0, #0
 8001470:	4601      	mov	r1, r0
 8001472:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8001476:	f001 b9bd 	b.w	80027f4 <drv8834_run>
 800147a:	bf00      	nop
 800147c:	2000034c 	.word	0x2000034c

08001480 <main_thread>:
 8001480:	b510      	push	{r4, lr}
 8001482:	4820      	ldr	r0, [pc, #128]	; (8001504 <main_thread+0x84>)
 8001484:	4c20      	ldr	r4, [pc, #128]	; (8001508 <main_thread+0x88>)
 8001486:	f7ff f825 	bl	80004d4 <printf_>
 800148a:	f44f 7096 	mov.w	r0, #300	; 0x12c
 800148e:	f000 fd6b 	bl	8001f68 <timer_delay_ms>
 8001492:	2300      	movs	r3, #0
 8001494:	6023      	str	r3, [r4, #0]
 8001496:	491d      	ldr	r1, [pc, #116]	; (800150c <main_thread+0x8c>)
 8001498:	481d      	ldr	r0, [pc, #116]	; (8001510 <main_thread+0x90>)
 800149a:	f44f 7200 	mov.w	r2, #512	; 0x200
 800149e:	2306      	movs	r3, #6
 80014a0:	f7fe fef4 	bl	800028c <create_thread>
 80014a4:	491b      	ldr	r1, [pc, #108]	; (8001514 <main_thread+0x94>)
 80014a6:	481c      	ldr	r0, [pc, #112]	; (8001518 <main_thread+0x98>)
 80014a8:	f44f 7200 	mov.w	r2, #512	; 0x200
 80014ac:	2306      	movs	r3, #6
 80014ae:	f7fe feed 	bl	800028c <create_thread>
 80014b2:	f000 f984 	bl	80017be <broken_line_init>
 80014b6:	f000 f97d 	bl	80017b4 <obstacle_init>
 80014ba:	f7ff fa45 	bl	8000948 <camera_init>
 80014be:	6823      	ldr	r3, [r4, #0]
 80014c0:	b13b      	cbz	r3, 80014d2 <main_thread+0x52>
 80014c2:	4816      	ldr	r0, [pc, #88]	; (800151c <main_thread+0x9c>)
 80014c4:	f7ff f806 	bl	80004d4 <printf_>
 80014c8:	f44f 60fa 	mov.w	r0, #2000	; 0x7d0
 80014cc:	f000 fd4c 	bl	8001f68 <timer_delay_ms>
 80014d0:	e7f7      	b.n	80014c2 <main_thread+0x42>
 80014d2:	f001 fb1d 	bl	8002b10 <get_key>
 80014d6:	b128      	cbz	r0, 80014e4 <main_thread+0x64>
 80014d8:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 80014dc:	f000 fd44 	bl	8001f68 <timer_delay_ms>
 80014e0:	f7ff ff92 	bl	8001408 <line_follower>
 80014e4:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 80014e8:	f001 faee 	bl	8002ac8 <led_on>
 80014ec:	2064      	movs	r0, #100	; 0x64
 80014ee:	f000 fd3b 	bl	8001f68 <timer_delay_ms>
 80014f2:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 80014f6:	f001 faf9 	bl	8002aec <led_off>
 80014fa:	20c8      	movs	r0, #200	; 0xc8
 80014fc:	f000 fd34 	bl	8001f68 <timer_delay_ms>
 8001500:	e7dd      	b.n	80014be <main_thread+0x3e>
 8001502:	bf00      	nop
 8001504:	08002bf3 	.word	0x08002bf3
 8001508:	2000102c 	.word	0x2000102c
 800150c:	20000c2c 	.word	0x20000c2c
 8001510:	080013a9 	.word	0x080013a9
 8001514:	20000e2c 	.word	0x20000e2c
 8001518:	080013d9 	.word	0x080013d9
 800151c:	08002c2e 	.word	0x08002c2e

08001520 <q_predictor_init>:
 8001520:	4b24      	ldr	r3, [pc, #144]	; (80015b4 <q_predictor_init+0x94>)
 8001522:	2200      	movs	r2, #0
 8001524:	4619      	mov	r1, r3
 8001526:	b570      	push	{r4, r5, r6, lr}
 8001528:	4608      	mov	r0, r1
 800152a:	601a      	str	r2, [r3, #0]
 800152c:	605a      	str	r2, [r3, #4]
 800152e:	f103 0208 	add.w	r2, r3, #8
 8001532:	3348      	adds	r3, #72	; 0x48
 8001534:	2400      	movs	r4, #0
 8001536:	f842 4b04 	str.w	r4, [r2], #4
 800153a:	429a      	cmp	r2, r3
 800153c:	d1fa      	bne.n	8001534 <q_predictor_init+0x14>
 800153e:	2200      	movs	r2, #0
 8001540:	eb01 0442 	add.w	r4, r1, r2, lsl #1
 8001544:	2300      	movs	r3, #0
 8001546:	4e1c      	ldr	r6, [pc, #112]	; (80015b8 <q_predictor_init+0x98>)
 8001548:	4416      	add	r6, r2
 800154a:	eddf 7a1c 	vldr	s15, [pc, #112]	; 80015bc <q_predictor_init+0x9c>
 800154e:	5ef6      	ldrsh	r6, [r6, r3]
 8001550:	ee07 6a10 	vmov	s14, r6
 8001554:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 8001558:	eb04 0543 	add.w	r5, r4, r3, lsl #1
 800155c:	ee87 7a27 	vdiv.f32	s14, s14, s15
 8001560:	3302      	adds	r3, #2
 8001562:	2b20      	cmp	r3, #32
 8001564:	ed85 7a12 	vstr	s14, [r5, #72]	; 0x48
 8001568:	d1ed      	bne.n	8001546 <q_predictor_init+0x26>
 800156a:	3220      	adds	r2, #32
 800156c:	f5b2 7f80 	cmp.w	r2, #256	; 0x100
 8001570:	d1e6      	bne.n	8001540 <q_predictor_init+0x20>
 8001572:	2300      	movs	r3, #0
 8001574:	4912      	ldr	r1, [pc, #72]	; (80015c0 <q_predictor_init+0xa0>)
 8001576:	5e59      	ldrsh	r1, [r3, r1]
 8001578:	ee07 1a10 	vmov	s14, r1
 800157c:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 8001580:	eb00 0243 	add.w	r2, r0, r3, lsl #1
 8001584:	ee87 7a27 	vdiv.f32	s14, s14, s15
 8001588:	3302      	adds	r3, #2
 800158a:	2b10      	cmp	r3, #16
 800158c:	ed82 7a92 	vstr	s14, [r2, #584]	; 0x248
 8001590:	d1f0      	bne.n	8001574 <q_predictor_init+0x54>
 8001592:	2300      	movs	r3, #0
 8001594:	490b      	ldr	r1, [pc, #44]	; (80015c4 <q_predictor_init+0xa4>)
 8001596:	5e59      	ldrsh	r1, [r3, r1]
 8001598:	ee07 1a10 	vmov	s14, r1
 800159c:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 80015a0:	eb00 0243 	add.w	r2, r0, r3, lsl #1
 80015a4:	ee87 7a27 	vdiv.f32	s14, s14, s15
 80015a8:	3302      	adds	r3, #2
 80015aa:	2b10      	cmp	r3, #16
 80015ac:	ed82 7a9a 	vstr	s14, [r2, #616]	; 0x268
 80015b0:	d1f0      	bne.n	8001594 <q_predictor_init+0x74>
 80015b2:	bd70      	pop	{r4, r5, r6, pc}
 80015b4:	20000998 	.word	0x20000998
 80015b8:	20000020 	.word	0x20000020
 80015bc:	447a0000 	.word	0x447a0000
 80015c0:	20000010 	.word	0x20000010
 80015c4:	20000194 	.word	0x20000194

080015c8 <line_follower_init>:
 80015c8:	b507      	push	{r0, r1, r2, lr}
 80015ca:	4b0a      	ldr	r3, [pc, #40]	; (80015f4 <line_follower_init+0x2c>)
 80015cc:	4a0a      	ldr	r2, [pc, #40]	; (80015f8 <line_follower_init+0x30>)
 80015ce:	480b      	ldr	r0, [pc, #44]	; (80015fc <line_follower_init+0x34>)
 80015d0:	6013      	str	r3, [r2, #0]
 80015d2:	4b0b      	ldr	r3, [pc, #44]	; (8001600 <line_follower_init+0x38>)
 80015d4:	490b      	ldr	r1, [pc, #44]	; (8001604 <line_follower_init+0x3c>)
 80015d6:	6053      	str	r3, [r2, #4]
 80015d8:	2300      	movs	r3, #0
 80015da:	6093      	str	r3, [r2, #8]
 80015dc:	4a0a      	ldr	r2, [pc, #40]	; (8001608 <line_follower_init+0x40>)
 80015de:	9301      	str	r3, [sp, #4]
 80015e0:	9200      	str	r2, [sp, #0]
 80015e2:	4a0a      	ldr	r2, [pc, #40]	; (800160c <line_follower_init+0x44>)
 80015e4:	f7ff f85a 	bl	800069c <pid_init>
 80015e8:	b003      	add	sp, #12
 80015ea:	f85d eb04 	ldr.w	lr, [sp], #4
 80015ee:	f7ff bf97 	b.w	8001520 <q_predictor_init>
 80015f2:	bf00      	nop
 80015f4:	3ecccccd 	.word	0x3ecccccd
 80015f8:	20000c20 	.word	0x20000c20
 80015fc:	20001230 	.word	0x20001230
 8001600:	3f666666 	.word	0x3f666666
 8001604:	42c80000 	.word	0x42c80000
 8001608:	4090f5c3 	.word	0x4090f5c3
 800160c:	3ea6e979 	.word	0x3ea6e979

08001610 <line_follower_main>:
 8001610:	b510      	push	{r4, lr}
 8001612:	4b2e      	ldr	r3, [pc, #184]	; (80016cc <line_follower_main+0xbc>)
 8001614:	4c2e      	ldr	r4, [pc, #184]	; (80016d0 <line_follower_main+0xc0>)
 8001616:	ed2d 8b02 	vpush	{d8}
 800161a:	edd3 8a08 	vldr	s17, [r3, #32]
 800161e:	eddf 7a2d 	vldr	s15, [pc, #180]	; 80016d4 <line_follower_main+0xc4>
 8001622:	eef8 8ae8 	vcvt.f32.s32	s17, s17
 8001626:	eec8 8aa7 	vdiv.f32	s17, s17, s15
 800162a:	eddf 7a2b 	vldr	s15, [pc, #172]	; 80016d8 <line_follower_main+0xc8>
 800162e:	ee77 8ae8 	vsub.f32	s17, s15, s17
 8001632:	ee18 0a90 	vmov	r0, s17
 8001636:	f7fe ffff 	bl	8000638 <m_abs>
 800163a:	ee08 0a10 	vmov	s16, r0
 800163e:	f7ff fa0d 	bl	8000a5c <camera_read>
 8001642:	4b26      	ldr	r3, [pc, #152]	; (80016dc <line_follower_main+0xcc>)
 8001644:	685b      	ldr	r3, [r3, #4]
 8001646:	eddf 7a26 	vldr	s15, [pc, #152]	; 80016e0 <line_follower_main+0xd0>
 800164a:	2b00      	cmp	r3, #0
 800164c:	bf08      	it	eq
 800164e:	eeb0 8a67 	vmoveq.f32	s16, s15
 8001652:	ee37 6ac8 	vsub.f32	s12, s15, s16
 8001656:	eddf 6a23 	vldr	s13, [pc, #140]	; 80016e4 <line_follower_main+0xd4>
 800165a:	ed94 7a00 	vldr	s14, [r4]
 800165e:	ee06 7a26 	vmla.f32	s14, s12, s13
 8001662:	ee17 0a10 	vmov	r0, s14
 8001666:	ed9f 7a20 	vldr	s14, [pc, #128]	; 80016e8 <line_follower_main+0xd8>
 800166a:	ee48 7a47 	vmls.f32	s15, s16, s14
 800166e:	ee17 1a90 	vmov	r1, s15
 8001672:	f7ff f804 	bl	800067e <m_min>
 8001676:	6862      	ldr	r2, [r4, #4]
 8001678:	6020      	str	r0, [r4, #0]
 800167a:	f04f 517c 	mov.w	r1, #1056964608	; 0x3f000000
 800167e:	f7fe ffe7 	bl	8000650 <m_saturate>
 8001682:	ee18 1a90 	vmov	r1, s17
 8001686:	6020      	str	r0, [r4, #0]
 8001688:	4818      	ldr	r0, [pc, #96]	; (80016ec <line_follower_main+0xdc>)
 800168a:	f7ff f837 	bl	80006fc <pid_process>
 800168e:	edd4 6a00 	vldr	s13, [r4]
 8001692:	ee07 0a90 	vmov	s15, r0
 8001696:	ed9f 7a16 	vldr	s14, [pc, #88]	; 80016f0 <line_follower_main+0xe0>
 800169a:	ee36 6aa7 	vadd.f32	s12, s13, s15
 800169e:	ee76 7ae7 	vsub.f32	s15, s13, s15
 80016a2:	ee26 6a07 	vmul.f32	s12, s12, s14
 80016a6:	ee27 7a87 	vmul.f32	s14, s15, s14
 80016aa:	ecbd 8b02 	vpop	{d8}
 80016ae:	eebd 6ac6 	vcvt.s32.f32	s12, s12
 80016b2:	eebd 7ac7 	vcvt.s32.f32	s14, s14
 80016b6:	60a0      	str	r0, [r4, #8]
 80016b8:	ee17 1a10 	vmov	r1, s14
 80016bc:	ee16 0a10 	vmov	r0, s12
 80016c0:	b209      	sxth	r1, r1
 80016c2:	b200      	sxth	r0, r0
 80016c4:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80016c8:	f001 b894 	b.w	80027f4 <drv8834_run>
 80016cc:	2000034c 	.word	0x2000034c
 80016d0:	20000c20 	.word	0x20000c20
 80016d4:	43960000 	.word	0x43960000
 80016d8:	00000000 	.word	0x00000000
 80016dc:	20000378 	.word	0x20000378
 80016e0:	3f800000 	.word	0x3f800000
 80016e4:	3ca3d70a 	.word	0x3ca3d70a
 80016e8:	41000000 	.word	0x41000000
 80016ec:	20001230 	.word	0x20001230
 80016f0:	42c80000 	.word	0x42c80000

080016f4 <obstacle_go_forward>:
 80016f4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80016f6:	460f      	mov	r7, r1
 80016f8:	ed2d 8b04 	vpush	{d8-d9}
 80016fc:	4606      	mov	r6, r0
 80016fe:	b950      	cbnz	r0, 8001716 <obstacle_go_forward+0x22>
 8001700:	2000      	movs	r0, #0
 8001702:	4601      	mov	r1, r0
 8001704:	f001 f876 	bl	80027f4 <drv8834_run>
 8001708:	ecbd 8b04 	vpop	{d8-d9}
 800170c:	2064      	movs	r0, #100	; 0x64
 800170e:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8001712:	f000 bc29 	b.w	8001f68 <timer_delay_ms>
 8001716:	ed9f 8a21 	vldr	s16, [pc, #132]	; 800179c <obstacle_go_forward+0xa8>
 800171a:	2400      	movs	r4, #0
 800171c:	eef0 7a48 	vmov.f32	s15, s16
 8001720:	4625      	mov	r5, r4
 8001722:	eeb0 9a48 	vmov.f32	s18, s16
 8001726:	42bd      	cmp	r5, r7
 8001728:	d2ea      	bcs.n	8001700 <obstacle_go_forward+0xc>
 800172a:	4b1d      	ldr	r3, [pc, #116]	; (80017a0 <obstacle_go_forward+0xac>)
 800172c:	f9b3 3010 	ldrsh.w	r3, [r3, #16]
 8001730:	441c      	add	r4, r3
 8001732:	ee07 4a10 	vmov	s14, r4
 8001736:	eef8 8ac7 	vcvt.f32.s32	s17, s14
 800173a:	ed9f 7a1a 	vldr	s14, [pc, #104]	; 80017a4 <obstacle_go_forward+0xb0>
 800173e:	ee79 8a68 	vsub.f32	s17, s18, s17
 8001742:	350a      	adds	r5, #10
 8001744:	ee78 7ae7 	vsub.f32	s15, s17, s15
 8001748:	ee67 7a87 	vmul.f32	s15, s15, s14
 800174c:	ed9f 7a16 	vldr	s14, [pc, #88]	; 80017a8 <obstacle_go_forward+0xb4>
 8001750:	ee48 7a87 	vmla.f32	s15, s17, s14
 8001754:	ee07 6a10 	vmov	s14, r6
 8001758:	eef8 6a47 	vcvt.f32.u32	s13, s14
 800175c:	ed9f 7a13 	vldr	s14, [pc, #76]	; 80017ac <obstacle_go_forward+0xb8>
 8001760:	ee26 7a87 	vmul.f32	s14, s13, s14
 8001764:	eddf 6a12 	vldr	s13, [pc, #72]	; 80017b0 <obstacle_go_forward+0xbc>
 8001768:	ee08 7a26 	vmla.f32	s14, s16, s13
 800176c:	eeb0 8a47 	vmov.f32	s16, s14
 8001770:	ee37 7a67 	vsub.f32	s14, s14, s15
 8001774:	ee78 7a27 	vadd.f32	s15, s16, s15
 8001778:	eebd 7ac7 	vcvt.s32.f32	s14, s14
 800177c:	eefd 7ae7 	vcvt.s32.f32	s15, s15
 8001780:	ee17 0a10 	vmov	r0, s14
 8001784:	ee17 1a90 	vmov	r1, s15
 8001788:	b200      	sxth	r0, r0
 800178a:	b209      	sxth	r1, r1
 800178c:	f001 f832 	bl	80027f4 <drv8834_run>
 8001790:	200a      	movs	r0, #10
 8001792:	f000 fbe9 	bl	8001f68 <timer_delay_ms>
 8001796:	eef0 7a68 	vmov.f32	s15, s17
 800179a:	e7c4      	b.n	8001726 <obstacle_go_forward+0x32>
 800179c:	00000000 	.word	0x00000000
 80017a0:	200002d8 	.word	0x200002d8
 80017a4:	3a83126f 	.word	0x3a83126f
 80017a8:	399d4952 	.word	0x399d4952
 80017ac:	3e4ccccc 	.word	0x3e4ccccc
 80017b0:	3f4ccccd 	.word	0x3f4ccccd

080017b4 <obstacle_init>:
 80017b4:	4770      	bx	lr

080017b6 <obstacle_main>:
 80017b6:	2000      	movs	r0, #0
 80017b8:	2164      	movs	r1, #100	; 0x64
 80017ba:	f7ff bf9b 	b.w	80016f4 <obstacle_go_forward>

080017be <broken_line_init>:
 80017be:	4770      	bx	lr

080017c0 <broken_line_main>:
 80017c0:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 80017c4:	2500      	movs	r5, #0
 80017c6:	462c      	mov	r4, r5
 80017c8:	462f      	mov	r7, r5
 80017ca:	46a8      	mov	r8, r5
 80017cc:	462e      	mov	r6, r5
 80017ce:	f8df 90f0 	ldr.w	r9, [pc, #240]	; 80018c0 <broken_line_main+0x100>
 80017d2:	f899 301c 	ldrb.w	r3, [r9, #28]
 80017d6:	2b08      	cmp	r3, #8
 80017d8:	d06c      	beq.n	80018b4 <broken_line_main+0xf4>
 80017da:	2005      	movs	r0, #5
 80017dc:	f000 fbc4 	bl	8001f68 <timer_delay_ms>
 80017e0:	2f05      	cmp	r7, #5
 80017e2:	d861      	bhi.n	80018a8 <broken_line_main+0xe8>
 80017e4:	e8df f007 	tbb	[pc, r7]
 80017e8:	38271503 	.word	0x38271503
 80017ec:	4d4a      	.short	0x4d4a
 80017ee:	2c00      	cmp	r4, #0
 80017f0:	d145      	bne.n	800187e <broken_line_main+0xbe>
 80017f2:	f8d9 3020 	ldr.w	r3, [r9, #32]
 80017f6:	2b00      	cmp	r3, #0
 80017f8:	f04f 0464 	mov.w	r4, #100	; 0x64
 80017fc:	f04f 0701 	mov.w	r7, #1
 8001800:	bfd4      	ite	le
 8001802:	f04f 0832 	movle.w	r8, #50	; 0x32
 8001806:	f04f 0800 	movgt.w	r8, #0
 800180a:	bfd4      	ite	le
 800180c:	2600      	movle	r6, #0
 800180e:	2632      	movgt	r6, #50	; 0x32
 8001810:	e04a      	b.n	80018a8 <broken_line_main+0xe8>
 8001812:	bba4      	cbnz	r4, 800187e <broken_line_main+0xbe>
 8001814:	f8d9 3020 	ldr.w	r3, [r9, #32]
 8001818:	2b00      	cmp	r3, #0
 800181a:	f04f 0464 	mov.w	r4, #100	; 0x64
 800181e:	f04f 0702 	mov.w	r7, #2
 8001822:	bfd4      	ite	le
 8001824:	f06f 0831 	mvnle.w	r8, #49	; 0x31
 8001828:	f04f 0800 	movgt.w	r8, #0
 800182c:	bfd4      	ite	le
 800182e:	2600      	movle	r6, #0
 8001830:	f06f 0631 	mvngt.w	r6, #49	; 0x31
 8001834:	e038      	b.n	80018a8 <broken_line_main+0xe8>
 8001836:	bb14      	cbnz	r4, 800187e <broken_line_main+0xbe>
 8001838:	f8d9 3020 	ldr.w	r3, [r9, #32]
 800183c:	2b00      	cmp	r3, #0
 800183e:	f04f 0464 	mov.w	r4, #100	; 0x64
 8001842:	f04f 0703 	mov.w	r7, #3
 8001846:	bfd4      	ite	le
 8001848:	f04f 0800 	movle.w	r8, #0
 800184c:	f04f 0832 	movgt.w	r8, #50	; 0x32
 8001850:	bfd4      	ite	le
 8001852:	2632      	movle	r6, #50	; 0x32
 8001854:	2600      	movgt	r6, #0
 8001856:	e027      	b.n	80018a8 <broken_line_main+0xe8>
 8001858:	b98c      	cbnz	r4, 800187e <broken_line_main+0xbe>
 800185a:	f8d9 3020 	ldr.w	r3, [r9, #32]
 800185e:	2b00      	cmp	r3, #0
 8001860:	f04f 0464 	mov.w	r4, #100	; 0x64
 8001864:	f04f 0704 	mov.w	r7, #4
 8001868:	bfd4      	ite	le
 800186a:	f04f 0800 	movle.w	r8, #0
 800186e:	f06f 0831 	mvngt.w	r8, #49	; 0x31
 8001872:	bfd4      	ite	le
 8001874:	f06f 0631 	mvnle.w	r6, #49	; 0x31
 8001878:	2600      	movgt	r6, #0
 800187a:	e015      	b.n	80018a8 <broken_line_main+0xe8>
 800187c:	b16c      	cbz	r4, 800189a <broken_line_main+0xda>
 800187e:	3c01      	subs	r4, #1
 8001880:	e012      	b.n	80018a8 <broken_line_main+0xe8>
 8001882:	b184      	cbz	r4, 80018a6 <broken_line_main+0xe6>
 8001884:	f241 3387 	movw	r3, #4999	; 0x1387
 8001888:	429d      	cmp	r5, r3
 800188a:	bfd8      	it	le
 800188c:	3532      	addle	r5, #50	; 0x32
 800188e:	2664      	movs	r6, #100	; 0x64
 8001890:	fb95 f6f6 	sdiv	r6, r5, r6
 8001894:	3c01      	subs	r4, #1
 8001896:	46b0      	mov	r8, r6
 8001898:	e006      	b.n	80018a8 <broken_line_main+0xe8>
 800189a:	4625      	mov	r5, r4
 800189c:	2705      	movs	r7, #5
 800189e:	2432      	movs	r4, #50	; 0x32
 80018a0:	46a8      	mov	r8, r5
 80018a2:	462e      	mov	r6, r5
 80018a4:	e000      	b.n	80018a8 <broken_line_main+0xe8>
 80018a6:	4627      	mov	r7, r4
 80018a8:	fa0f f088 	sxth.w	r0, r8
 80018ac:	b231      	sxth	r1, r6
 80018ae:	f000 ffa1 	bl	80027f4 <drv8834_run>
 80018b2:	e78c      	b.n	80017ce <broken_line_main+0xe>
 80018b4:	2000      	movs	r0, #0
 80018b6:	4601      	mov	r1, r0
 80018b8:	e8bd 43f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 80018bc:	f000 bf9a 	b.w	80027f4 <drv8834_run>
 80018c0:	2000034c 	.word	0x2000034c

080018c4 <main>:
 80018c4:	b508      	push	{r3, lr}
 80018c6:	f001 f83b 	bl	8002940 <lib_low_level_init>
 80018ca:	f7fe fe7d 	bl	80005c8 <lib_os_init>
 80018ce:	4905      	ldr	r1, [pc, #20]	; (80018e4 <main+0x20>)
 80018d0:	4805      	ldr	r0, [pc, #20]	; (80018e8 <main+0x24>)
 80018d2:	f44f 7200 	mov.w	r2, #512	; 0x200
 80018d6:	2306      	movs	r3, #6
 80018d8:	f7fe fcd8 	bl	800028c <create_thread>
 80018dc:	f7fe fcd0 	bl	8000280 <kernel_start>
 80018e0:	2000      	movs	r0, #0
 80018e2:	bd08      	pop	{r3, pc}
 80018e4:	20001030 	.word	0x20001030
 80018e8:	08001481 	.word	0x08001481

080018ec <RCC_GetClocksFreq>:
 80018ec:	4ba5      	ldr	r3, [pc, #660]	; (8001b84 <RCC_GetClocksFreq+0x298>)
 80018ee:	685a      	ldr	r2, [r3, #4]
 80018f0:	f002 020c 	and.w	r2, r2, #12
 80018f4:	2a04      	cmp	r2, #4
 80018f6:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 80018fa:	d005      	beq.n	8001908 <RCC_GetClocksFreq+0x1c>
 80018fc:	2a08      	cmp	r2, #8
 80018fe:	d006      	beq.n	800190e <RCC_GetClocksFreq+0x22>
 8001900:	4ba1      	ldr	r3, [pc, #644]	; (8001b88 <RCC_GetClocksFreq+0x29c>)
 8001902:	6003      	str	r3, [r0, #0]
 8001904:	b9ba      	cbnz	r2, 8001936 <RCC_GetClocksFreq+0x4a>
 8001906:	e017      	b.n	8001938 <RCC_GetClocksFreq+0x4c>
 8001908:	4b9f      	ldr	r3, [pc, #636]	; (8001b88 <RCC_GetClocksFreq+0x29c>)
 800190a:	6003      	str	r3, [r0, #0]
 800190c:	e013      	b.n	8001936 <RCC_GetClocksFreq+0x4a>
 800190e:	6859      	ldr	r1, [r3, #4]
 8001910:	685c      	ldr	r4, [r3, #4]
 8001912:	f3c1 4183 	ubfx	r1, r1, #18, #4
 8001916:	03e2      	lsls	r2, r4, #15
 8001918:	f101 0102 	add.w	r1, r1, #2
 800191c:	d401      	bmi.n	8001922 <RCC_GetClocksFreq+0x36>
 800191e:	4a9b      	ldr	r2, [pc, #620]	; (8001b8c <RCC_GetClocksFreq+0x2a0>)
 8001920:	e006      	b.n	8001930 <RCC_GetClocksFreq+0x44>
 8001922:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8001924:	4b98      	ldr	r3, [pc, #608]	; (8001b88 <RCC_GetClocksFreq+0x29c>)
 8001926:	f002 020f 	and.w	r2, r2, #15
 800192a:	3201      	adds	r2, #1
 800192c:	fbb3 f2f2 	udiv	r2, r3, r2
 8001930:	434a      	muls	r2, r1
 8001932:	6002      	str	r2, [r0, #0]
 8001934:	e000      	b.n	8001938 <RCC_GetClocksFreq+0x4c>
 8001936:	2200      	movs	r2, #0
 8001938:	4f92      	ldr	r7, [pc, #584]	; (8001b84 <RCC_GetClocksFreq+0x298>)
 800193a:	4d95      	ldr	r5, [pc, #596]	; (8001b90 <RCC_GetClocksFreq+0x2a4>)
 800193c:	687b      	ldr	r3, [r7, #4]
 800193e:	f8df 8254 	ldr.w	r8, [pc, #596]	; 8001b94 <RCC_GetClocksFreq+0x2a8>
 8001942:	f3c3 1303 	ubfx	r3, r3, #4, #4
 8001946:	5cec      	ldrb	r4, [r5, r3]
 8001948:	6803      	ldr	r3, [r0, #0]
 800194a:	b2e4      	uxtb	r4, r4
 800194c:	fa23 f104 	lsr.w	r1, r3, r4
 8001950:	6041      	str	r1, [r0, #4]
 8001952:	687e      	ldr	r6, [r7, #4]
 8001954:	f3c6 2602 	ubfx	r6, r6, #8, #3
 8001958:	5dae      	ldrb	r6, [r5, r6]
 800195a:	fa21 f606 	lsr.w	r6, r1, r6
 800195e:	6086      	str	r6, [r0, #8]
 8001960:	f8d7 c004 	ldr.w	ip, [r7, #4]
 8001964:	f3cc 2cc2 	ubfx	ip, ip, #11, #3
 8001968:	f815 500c 	ldrb.w	r5, [r5, ip]
 800196c:	b2ed      	uxtb	r5, r5
 800196e:	40e9      	lsrs	r1, r5
 8001970:	60c1      	str	r1, [r0, #12]
 8001972:	f8d7 902c 	ldr.w	r9, [r7, #44]	; 0x2c
 8001976:	f3c9 1904 	ubfx	r9, r9, #4, #5
 800197a:	f009 0c0f 	and.w	ip, r9, #15
 800197e:	f019 0f10 	tst.w	r9, #16
 8001982:	f838 c01c 	ldrh.w	ip, [r8, ip, lsl #1]
 8001986:	fa1f fc8c 	uxth.w	ip, ip
 800198a:	d007      	beq.n	800199c <RCC_GetClocksFreq+0xb0>
 800198c:	f1bc 0f00 	cmp.w	ip, #0
 8001990:	d004      	beq.n	800199c <RCC_GetClocksFreq+0xb0>
 8001992:	fbb2 fcfc 	udiv	ip, r2, ip
 8001996:	f8c0 c010 	str.w	ip, [r0, #16]
 800199a:	e000      	b.n	800199e <RCC_GetClocksFreq+0xb2>
 800199c:	6103      	str	r3, [r0, #16]
 800199e:	6aff      	ldr	r7, [r7, #44]	; 0x2c
 80019a0:	f3c7 2c44 	ubfx	ip, r7, #9, #5
 80019a4:	f00c 070f 	and.w	r7, ip, #15
 80019a8:	f01c 0f10 	tst.w	ip, #16
 80019ac:	f838 7017 	ldrh.w	r7, [r8, r7, lsl #1]
 80019b0:	b2bf      	uxth	r7, r7
 80019b2:	d004      	beq.n	80019be <RCC_GetClocksFreq+0xd2>
 80019b4:	b11f      	cbz	r7, 80019be <RCC_GetClocksFreq+0xd2>
 80019b6:	fbb2 f7f7 	udiv	r7, r2, r7
 80019ba:	6147      	str	r7, [r0, #20]
 80019bc:	e000      	b.n	80019c0 <RCC_GetClocksFreq+0xd4>
 80019be:	6143      	str	r3, [r0, #20]
 80019c0:	4f70      	ldr	r7, [pc, #448]	; (8001b84 <RCC_GetClocksFreq+0x298>)
 80019c2:	f8d7 c030 	ldr.w	ip, [r7, #48]	; 0x30
 80019c6:	f01c 0f10 	tst.w	ip, #16
 80019ca:	bf0a      	itet	eq
 80019cc:	f8df c1b8 	ldreq.w	ip, [pc, #440]	; 8001b88 <RCC_GetClocksFreq+0x29c>
 80019d0:	6183      	strne	r3, [r0, #24]
 80019d2:	f8c0 c018 	streq.w	ip, [r0, #24]
 80019d6:	6b3f      	ldr	r7, [r7, #48]	; 0x30
 80019d8:	06bf      	lsls	r7, r7, #26
 80019da:	bf56      	itet	pl
 80019dc:	4f6a      	ldrpl	r7, [pc, #424]	; (8001b88 <RCC_GetClocksFreq+0x29c>)
 80019de:	61c3      	strmi	r3, [r0, #28]
 80019e0:	61c7      	strpl	r7, [r0, #28]
 80019e2:	4f68      	ldr	r7, [pc, #416]	; (8001b84 <RCC_GetClocksFreq+0x298>)
 80019e4:	f8d7 c030 	ldr.w	ip, [r7, #48]	; 0x30
 80019e8:	f01c 0f40 	tst.w	ip, #64	; 0x40
 80019ec:	bf0a      	itet	eq
 80019ee:	f8df c198 	ldreq.w	ip, [pc, #408]	; 8001b88 <RCC_GetClocksFreq+0x29c>
 80019f2:	6203      	strne	r3, [r0, #32]
 80019f4:	f8c0 c020 	streq.w	ip, [r0, #32]
 80019f8:	6b3f      	ldr	r7, [r7, #48]	; 0x30
 80019fa:	05ff      	lsls	r7, r7, #23
 80019fc:	d506      	bpl.n	8001a0c <RCC_GetClocksFreq+0x120>
 80019fe:	4293      	cmp	r3, r2
 8001a00:	d104      	bne.n	8001a0c <RCC_GetClocksFreq+0x120>
 8001a02:	42a5      	cmp	r5, r4
 8001a04:	d102      	bne.n	8001a0c <RCC_GetClocksFreq+0x120>
 8001a06:	005f      	lsls	r7, r3, #1
 8001a08:	6247      	str	r7, [r0, #36]	; 0x24
 8001a0a:	e000      	b.n	8001a0e <RCC_GetClocksFreq+0x122>
 8001a0c:	6241      	str	r1, [r0, #36]	; 0x24
 8001a0e:	4f5d      	ldr	r7, [pc, #372]	; (8001b84 <RCC_GetClocksFreq+0x298>)
 8001a10:	f8d7 c030 	ldr.w	ip, [r7, #48]	; 0x30
 8001a14:	f41c 5f80 	tst.w	ip, #4096	; 0x1000
 8001a18:	d008      	beq.n	8001a2c <RCC_GetClocksFreq+0x140>
 8001a1a:	4293      	cmp	r3, r2
 8001a1c:	d106      	bne.n	8001a2c <RCC_GetClocksFreq+0x140>
 8001a1e:	42a5      	cmp	r5, r4
 8001a20:	d104      	bne.n	8001a2c <RCC_GetClocksFreq+0x140>
 8001a22:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8001a26:	f8c0 c028 	str.w	ip, [r0, #40]	; 0x28
 8001a2a:	e000      	b.n	8001a2e <RCC_GetClocksFreq+0x142>
 8001a2c:	6281      	str	r1, [r0, #40]	; 0x28
 8001a2e:	6b3f      	ldr	r7, [r7, #48]	; 0x30
 8001a30:	05bf      	lsls	r7, r7, #22
 8001a32:	d506      	bpl.n	8001a42 <RCC_GetClocksFreq+0x156>
 8001a34:	4293      	cmp	r3, r2
 8001a36:	d104      	bne.n	8001a42 <RCC_GetClocksFreq+0x156>
 8001a38:	42a5      	cmp	r5, r4
 8001a3a:	d102      	bne.n	8001a42 <RCC_GetClocksFreq+0x156>
 8001a3c:	005f      	lsls	r7, r3, #1
 8001a3e:	62c7      	str	r7, [r0, #44]	; 0x2c
 8001a40:	e000      	b.n	8001a44 <RCC_GetClocksFreq+0x158>
 8001a42:	62c1      	str	r1, [r0, #44]	; 0x2c
 8001a44:	4f4f      	ldr	r7, [pc, #316]	; (8001b84 <RCC_GetClocksFreq+0x298>)
 8001a46:	f8d7 c030 	ldr.w	ip, [r7, #48]	; 0x30
 8001a4a:	f41c 6f80 	tst.w	ip, #1024	; 0x400
 8001a4e:	d008      	beq.n	8001a62 <RCC_GetClocksFreq+0x176>
 8001a50:	4293      	cmp	r3, r2
 8001a52:	d106      	bne.n	8001a62 <RCC_GetClocksFreq+0x176>
 8001a54:	42a5      	cmp	r5, r4
 8001a56:	d104      	bne.n	8001a62 <RCC_GetClocksFreq+0x176>
 8001a58:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8001a5c:	f8c0 c04c 	str.w	ip, [r0, #76]	; 0x4c
 8001a60:	e000      	b.n	8001a64 <RCC_GetClocksFreq+0x178>
 8001a62:	64c1      	str	r1, [r0, #76]	; 0x4c
 8001a64:	6b3f      	ldr	r7, [r7, #48]	; 0x30
 8001a66:	053f      	lsls	r7, r7, #20
 8001a68:	d506      	bpl.n	8001a78 <RCC_GetClocksFreq+0x18c>
 8001a6a:	4293      	cmp	r3, r2
 8001a6c:	d104      	bne.n	8001a78 <RCC_GetClocksFreq+0x18c>
 8001a6e:	42a5      	cmp	r5, r4
 8001a70:	d102      	bne.n	8001a78 <RCC_GetClocksFreq+0x18c>
 8001a72:	005f      	lsls	r7, r3, #1
 8001a74:	6507      	str	r7, [r0, #80]	; 0x50
 8001a76:	e000      	b.n	8001a7a <RCC_GetClocksFreq+0x18e>
 8001a78:	6501      	str	r1, [r0, #80]	; 0x50
 8001a7a:	4f42      	ldr	r7, [pc, #264]	; (8001b84 <RCC_GetClocksFreq+0x298>)
 8001a7c:	f8d7 c030 	ldr.w	ip, [r7, #48]	; 0x30
 8001a80:	f41c 5f00 	tst.w	ip, #8192	; 0x2000
 8001a84:	d008      	beq.n	8001a98 <RCC_GetClocksFreq+0x1ac>
 8001a86:	4293      	cmp	r3, r2
 8001a88:	d106      	bne.n	8001a98 <RCC_GetClocksFreq+0x1ac>
 8001a8a:	42a5      	cmp	r5, r4
 8001a8c:	d104      	bne.n	8001a98 <RCC_GetClocksFreq+0x1ac>
 8001a8e:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8001a92:	f8c0 c054 	str.w	ip, [r0, #84]	; 0x54
 8001a96:	e000      	b.n	8001a9a <RCC_GetClocksFreq+0x1ae>
 8001a98:	6501      	str	r1, [r0, #80]	; 0x50
 8001a9a:	6b3f      	ldr	r7, [r7, #48]	; 0x30
 8001a9c:	043f      	lsls	r7, r7, #16
 8001a9e:	d506      	bpl.n	8001aae <RCC_GetClocksFreq+0x1c2>
 8001aa0:	4293      	cmp	r3, r2
 8001aa2:	d104      	bne.n	8001aae <RCC_GetClocksFreq+0x1c2>
 8001aa4:	42a5      	cmp	r5, r4
 8001aa6:	d102      	bne.n	8001aae <RCC_GetClocksFreq+0x1c2>
 8001aa8:	005a      	lsls	r2, r3, #1
 8001aaa:	6582      	str	r2, [r0, #88]	; 0x58
 8001aac:	e000      	b.n	8001ab0 <RCC_GetClocksFreq+0x1c4>
 8001aae:	6581      	str	r1, [r0, #88]	; 0x58
 8001ab0:	4a34      	ldr	r2, [pc, #208]	; (8001b84 <RCC_GetClocksFreq+0x298>)
 8001ab2:	6b14      	ldr	r4, [r2, #48]	; 0x30
 8001ab4:	07a4      	lsls	r4, r4, #30
 8001ab6:	d014      	beq.n	8001ae2 <RCC_GetClocksFreq+0x1f6>
 8001ab8:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8001aba:	f001 0103 	and.w	r1, r1, #3
 8001abe:	2901      	cmp	r1, #1
 8001ac0:	d101      	bne.n	8001ac6 <RCC_GetClocksFreq+0x1da>
 8001ac2:	6383      	str	r3, [r0, #56]	; 0x38
 8001ac4:	e00e      	b.n	8001ae4 <RCC_GetClocksFreq+0x1f8>
 8001ac6:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8001ac8:	f001 0103 	and.w	r1, r1, #3
 8001acc:	2902      	cmp	r1, #2
 8001ace:	d102      	bne.n	8001ad6 <RCC_GetClocksFreq+0x1ea>
 8001ad0:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 8001ad4:	e005      	b.n	8001ae2 <RCC_GetClocksFreq+0x1f6>
 8001ad6:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8001ad8:	f001 0103 	and.w	r1, r1, #3
 8001adc:	2903      	cmp	r1, #3
 8001ade:	d101      	bne.n	8001ae4 <RCC_GetClocksFreq+0x1f8>
 8001ae0:	4929      	ldr	r1, [pc, #164]	; (8001b88 <RCC_GetClocksFreq+0x29c>)
 8001ae2:	6381      	str	r1, [r0, #56]	; 0x38
 8001ae4:	6b12      	ldr	r2, [r2, #48]	; 0x30
 8001ae6:	4927      	ldr	r1, [pc, #156]	; (8001b84 <RCC_GetClocksFreq+0x298>)
 8001ae8:	f412 3f40 	tst.w	r2, #196608	; 0x30000
 8001aec:	d101      	bne.n	8001af2 <RCC_GetClocksFreq+0x206>
 8001aee:	63c6      	str	r6, [r0, #60]	; 0x3c
 8001af0:	e018      	b.n	8001b24 <RCC_GetClocksFreq+0x238>
 8001af2:	6b0a      	ldr	r2, [r1, #48]	; 0x30
 8001af4:	f402 3240 	and.w	r2, r2, #196608	; 0x30000
 8001af8:	f5b2 3f80 	cmp.w	r2, #65536	; 0x10000
 8001afc:	d101      	bne.n	8001b02 <RCC_GetClocksFreq+0x216>
 8001afe:	63c3      	str	r3, [r0, #60]	; 0x3c
 8001b00:	e010      	b.n	8001b24 <RCC_GetClocksFreq+0x238>
 8001b02:	6b0a      	ldr	r2, [r1, #48]	; 0x30
 8001b04:	f402 3240 	and.w	r2, r2, #196608	; 0x30000
 8001b08:	f5b2 3f00 	cmp.w	r2, #131072	; 0x20000
 8001b0c:	d102      	bne.n	8001b14 <RCC_GetClocksFreq+0x228>
 8001b0e:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 8001b12:	e006      	b.n	8001b22 <RCC_GetClocksFreq+0x236>
 8001b14:	6b0a      	ldr	r2, [r1, #48]	; 0x30
 8001b16:	f402 3240 	and.w	r2, r2, #196608	; 0x30000
 8001b1a:	f5b2 3f40 	cmp.w	r2, #196608	; 0x30000
 8001b1e:	d101      	bne.n	8001b24 <RCC_GetClocksFreq+0x238>
 8001b20:	4a19      	ldr	r2, [pc, #100]	; (8001b88 <RCC_GetClocksFreq+0x29c>)
 8001b22:	63c2      	str	r2, [r0, #60]	; 0x3c
 8001b24:	4a17      	ldr	r2, [pc, #92]	; (8001b84 <RCC_GetClocksFreq+0x298>)
 8001b26:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8001b28:	f411 2f40 	tst.w	r1, #786432	; 0xc0000
 8001b2c:	d101      	bne.n	8001b32 <RCC_GetClocksFreq+0x246>
 8001b2e:	6406      	str	r6, [r0, #64]	; 0x40
 8001b30:	e018      	b.n	8001b64 <RCC_GetClocksFreq+0x278>
 8001b32:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8001b34:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 8001b38:	f5b1 2f80 	cmp.w	r1, #262144	; 0x40000
 8001b3c:	d101      	bne.n	8001b42 <RCC_GetClocksFreq+0x256>
 8001b3e:	6403      	str	r3, [r0, #64]	; 0x40
 8001b40:	e010      	b.n	8001b64 <RCC_GetClocksFreq+0x278>
 8001b42:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8001b44:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 8001b48:	f5b1 2f00 	cmp.w	r1, #524288	; 0x80000
 8001b4c:	d102      	bne.n	8001b54 <RCC_GetClocksFreq+0x268>
 8001b4e:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 8001b52:	e006      	b.n	8001b62 <RCC_GetClocksFreq+0x276>
 8001b54:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8001b56:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 8001b5a:	f5b1 2f40 	cmp.w	r1, #786432	; 0xc0000
 8001b5e:	d101      	bne.n	8001b64 <RCC_GetClocksFreq+0x278>
 8001b60:	4909      	ldr	r1, [pc, #36]	; (8001b88 <RCC_GetClocksFreq+0x29c>)
 8001b62:	6401      	str	r1, [r0, #64]	; 0x40
 8001b64:	6b12      	ldr	r2, [r2, #48]	; 0x30
 8001b66:	4907      	ldr	r1, [pc, #28]	; (8001b84 <RCC_GetClocksFreq+0x298>)
 8001b68:	f412 1f40 	tst.w	r2, #3145728	; 0x300000
 8001b6c:	d101      	bne.n	8001b72 <RCC_GetClocksFreq+0x286>
 8001b6e:	6446      	str	r6, [r0, #68]	; 0x44
 8001b70:	e023      	b.n	8001bba <RCC_GetClocksFreq+0x2ce>
 8001b72:	6b0a      	ldr	r2, [r1, #48]	; 0x30
 8001b74:	f402 1240 	and.w	r2, r2, #3145728	; 0x300000
 8001b78:	f5b2 1f80 	cmp.w	r2, #1048576	; 0x100000
 8001b7c:	d10c      	bne.n	8001b98 <RCC_GetClocksFreq+0x2ac>
 8001b7e:	6443      	str	r3, [r0, #68]	; 0x44
 8001b80:	e01b      	b.n	8001bba <RCC_GetClocksFreq+0x2ce>
 8001b82:	bf00      	nop
 8001b84:	40021000 	.word	0x40021000
 8001b88:	007a1200 	.word	0x007a1200
 8001b8c:	003d0900 	.word	0x003d0900
 8001b90:	20000140 	.word	0x20000140
 8001b94:	20000120 	.word	0x20000120
 8001b98:	6b0a      	ldr	r2, [r1, #48]	; 0x30
 8001b9a:	f402 1240 	and.w	r2, r2, #3145728	; 0x300000
 8001b9e:	f5b2 1f00 	cmp.w	r2, #2097152	; 0x200000
 8001ba2:	d102      	bne.n	8001baa <RCC_GetClocksFreq+0x2be>
 8001ba4:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 8001ba8:	e006      	b.n	8001bb8 <RCC_GetClocksFreq+0x2cc>
 8001baa:	6b0a      	ldr	r2, [r1, #48]	; 0x30
 8001bac:	f402 1240 	and.w	r2, r2, #3145728	; 0x300000
 8001bb0:	f5b2 1f40 	cmp.w	r2, #3145728	; 0x300000
 8001bb4:	d101      	bne.n	8001bba <RCC_GetClocksFreq+0x2ce>
 8001bb6:	4a11      	ldr	r2, [pc, #68]	; (8001bfc <RCC_GetClocksFreq+0x310>)
 8001bb8:	6442      	str	r2, [r0, #68]	; 0x44
 8001bba:	4a11      	ldr	r2, [pc, #68]	; (8001c00 <RCC_GetClocksFreq+0x314>)
 8001bbc:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8001bbe:	f411 0f40 	tst.w	r1, #12582912	; 0xc00000
 8001bc2:	d102      	bne.n	8001bca <RCC_GetClocksFreq+0x2de>
 8001bc4:	6486      	str	r6, [r0, #72]	; 0x48
 8001bc6:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8001bca:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8001bcc:	f401 0140 	and.w	r1, r1, #12582912	; 0xc00000
 8001bd0:	f5b1 0f80 	cmp.w	r1, #4194304	; 0x400000
 8001bd4:	d00f      	beq.n	8001bf6 <RCC_GetClocksFreq+0x30a>
 8001bd6:	6b13      	ldr	r3, [r2, #48]	; 0x30
 8001bd8:	f403 0340 	and.w	r3, r3, #12582912	; 0xc00000
 8001bdc:	f5b3 0f00 	cmp.w	r3, #8388608	; 0x800000
 8001be0:	d102      	bne.n	8001be8 <RCC_GetClocksFreq+0x2fc>
 8001be2:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001be6:	e006      	b.n	8001bf6 <RCC_GetClocksFreq+0x30a>
 8001be8:	6b13      	ldr	r3, [r2, #48]	; 0x30
 8001bea:	f403 0340 	and.w	r3, r3, #12582912	; 0xc00000
 8001bee:	f5b3 0f40 	cmp.w	r3, #12582912	; 0xc00000
 8001bf2:	d101      	bne.n	8001bf8 <RCC_GetClocksFreq+0x30c>
 8001bf4:	4b01      	ldr	r3, [pc, #4]	; (8001bfc <RCC_GetClocksFreq+0x310>)
 8001bf6:	6483      	str	r3, [r0, #72]	; 0x48
 8001bf8:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8001bfc:	007a1200 	.word	0x007a1200
 8001c00:	40021000 	.word	0x40021000

08001c04 <RCC_ADCCLKConfig>:
 8001c04:	bf00      	nop
 8001c06:	0f03      	lsrs	r3, r0, #28
 8001c08:	4b05      	ldr	r3, [pc, #20]	; (8001c20 <RCC_ADCCLKConfig+0x1c>)
 8001c0a:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8001c0c:	bf14      	ite	ne
 8001c0e:	f422 5278 	bicne.w	r2, r2, #15872	; 0x3e00
 8001c12:	f422 72f8 	biceq.w	r2, r2, #496	; 0x1f0
 8001c16:	62da      	str	r2, [r3, #44]	; 0x2c
 8001c18:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8001c1a:	4310      	orrs	r0, r2
 8001c1c:	62d8      	str	r0, [r3, #44]	; 0x2c
 8001c1e:	4770      	bx	lr
 8001c20:	40021000 	.word	0x40021000

08001c24 <RCC_AHBPeriphClockCmd>:
 8001c24:	bf00      	nop
 8001c26:	bf00      	nop
 8001c28:	4b04      	ldr	r3, [pc, #16]	; (8001c3c <RCC_AHBPeriphClockCmd+0x18>)
 8001c2a:	695a      	ldr	r2, [r3, #20]
 8001c2c:	b109      	cbz	r1, 8001c32 <RCC_AHBPeriphClockCmd+0xe>
 8001c2e:	4310      	orrs	r0, r2
 8001c30:	e001      	b.n	8001c36 <RCC_AHBPeriphClockCmd+0x12>
 8001c32:	ea22 0000 	bic.w	r0, r2, r0
 8001c36:	6158      	str	r0, [r3, #20]
 8001c38:	4770      	bx	lr
 8001c3a:	bf00      	nop
 8001c3c:	40021000 	.word	0x40021000

08001c40 <RCC_APB2PeriphClockCmd>:
 8001c40:	bf00      	nop
 8001c42:	bf00      	nop
 8001c44:	4b04      	ldr	r3, [pc, #16]	; (8001c58 <RCC_APB2PeriphClockCmd+0x18>)
 8001c46:	699a      	ldr	r2, [r3, #24]
 8001c48:	b109      	cbz	r1, 8001c4e <RCC_APB2PeriphClockCmd+0xe>
 8001c4a:	4310      	orrs	r0, r2
 8001c4c:	e001      	b.n	8001c52 <RCC_APB2PeriphClockCmd+0x12>
 8001c4e:	ea22 0000 	bic.w	r0, r2, r0
 8001c52:	6198      	str	r0, [r3, #24]
 8001c54:	4770      	bx	lr
 8001c56:	bf00      	nop
 8001c58:	40021000 	.word	0x40021000

08001c5c <RCC_APB1PeriphClockCmd>:
 8001c5c:	bf00      	nop
 8001c5e:	bf00      	nop
 8001c60:	4b04      	ldr	r3, [pc, #16]	; (8001c74 <RCC_APB1PeriphClockCmd+0x18>)
 8001c62:	69da      	ldr	r2, [r3, #28]
 8001c64:	b109      	cbz	r1, 8001c6a <RCC_APB1PeriphClockCmd+0xe>
 8001c66:	4310      	orrs	r0, r2
 8001c68:	e001      	b.n	8001c6e <RCC_APB1PeriphClockCmd+0x12>
 8001c6a:	ea22 0000 	bic.w	r0, r2, r0
 8001c6e:	61d8      	str	r0, [r3, #28]
 8001c70:	4770      	bx	lr
 8001c72:	bf00      	nop
 8001c74:	40021000 	.word	0x40021000

08001c78 <TIM_TimeBaseInit>:
 8001c78:	bf00      	nop
 8001c7a:	bf00      	nop
 8001c7c:	bf00      	nop
 8001c7e:	4a24      	ldr	r2, [pc, #144]	; (8001d10 <TIM_TimeBaseInit+0x98>)
 8001c80:	8803      	ldrh	r3, [r0, #0]
 8001c82:	4290      	cmp	r0, r2
 8001c84:	b29b      	uxth	r3, r3
 8001c86:	d012      	beq.n	8001cae <TIM_TimeBaseInit+0x36>
 8001c88:	f502 6200 	add.w	r2, r2, #2048	; 0x800
 8001c8c:	4290      	cmp	r0, r2
 8001c8e:	d00e      	beq.n	8001cae <TIM_TimeBaseInit+0x36>
 8001c90:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 8001c94:	d00b      	beq.n	8001cae <TIM_TimeBaseInit+0x36>
 8001c96:	f5a2 3298 	sub.w	r2, r2, #77824	; 0x13000
 8001c9a:	4290      	cmp	r0, r2
 8001c9c:	d007      	beq.n	8001cae <TIM_TimeBaseInit+0x36>
 8001c9e:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8001ca2:	4290      	cmp	r0, r2
 8001ca4:	d003      	beq.n	8001cae <TIM_TimeBaseInit+0x36>
 8001ca6:	f502 32a4 	add.w	r2, r2, #83968	; 0x14800
 8001caa:	4290      	cmp	r0, r2
 8001cac:	d103      	bne.n	8001cb6 <TIM_TimeBaseInit+0x3e>
 8001cae:	884a      	ldrh	r2, [r1, #2]
 8001cb0:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 8001cb4:	4313      	orrs	r3, r2
 8001cb6:	4a17      	ldr	r2, [pc, #92]	; (8001d14 <TIM_TimeBaseInit+0x9c>)
 8001cb8:	4290      	cmp	r0, r2
 8001cba:	d008      	beq.n	8001cce <TIM_TimeBaseInit+0x56>
 8001cbc:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8001cc0:	4290      	cmp	r0, r2
 8001cc2:	d004      	beq.n	8001cce <TIM_TimeBaseInit+0x56>
 8001cc4:	f423 7340 	bic.w	r3, r3, #768	; 0x300
 8001cc8:	890a      	ldrh	r2, [r1, #8]
 8001cca:	b29b      	uxth	r3, r3
 8001ccc:	4313      	orrs	r3, r2
 8001cce:	8003      	strh	r3, [r0, #0]
 8001cd0:	684b      	ldr	r3, [r1, #4]
 8001cd2:	62c3      	str	r3, [r0, #44]	; 0x2c
 8001cd4:	880b      	ldrh	r3, [r1, #0]
 8001cd6:	8503      	strh	r3, [r0, #40]	; 0x28
 8001cd8:	4b0d      	ldr	r3, [pc, #52]	; (8001d10 <TIM_TimeBaseInit+0x98>)
 8001cda:	4298      	cmp	r0, r3
 8001cdc:	d013      	beq.n	8001d06 <TIM_TimeBaseInit+0x8e>
 8001cde:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 8001ce2:	4298      	cmp	r0, r3
 8001ce4:	d00f      	beq.n	8001d06 <TIM_TimeBaseInit+0x8e>
 8001ce6:	f503 6340 	add.w	r3, r3, #3072	; 0xc00
 8001cea:	4298      	cmp	r0, r3
 8001cec:	d00b      	beq.n	8001d06 <TIM_TimeBaseInit+0x8e>
 8001cee:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 8001cf2:	4298      	cmp	r0, r3
 8001cf4:	d007      	beq.n	8001d06 <TIM_TimeBaseInit+0x8e>
 8001cf6:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 8001cfa:	4298      	cmp	r0, r3
 8001cfc:	d003      	beq.n	8001d06 <TIM_TimeBaseInit+0x8e>
 8001cfe:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 8001d02:	4298      	cmp	r0, r3
 8001d04:	d101      	bne.n	8001d0a <TIM_TimeBaseInit+0x92>
 8001d06:	894b      	ldrh	r3, [r1, #10]
 8001d08:	8603      	strh	r3, [r0, #48]	; 0x30
 8001d0a:	2301      	movs	r3, #1
 8001d0c:	6143      	str	r3, [r0, #20]
 8001d0e:	4770      	bx	lr
 8001d10:	40012c00 	.word	0x40012c00
 8001d14:	40001000 	.word	0x40001000

08001d18 <TIM_Cmd>:
 8001d18:	bf00      	nop
 8001d1a:	bf00      	nop
 8001d1c:	8803      	ldrh	r3, [r0, #0]
 8001d1e:	b119      	cbz	r1, 8001d28 <TIM_Cmd+0x10>
 8001d20:	b29b      	uxth	r3, r3
 8001d22:	f043 0301 	orr.w	r3, r3, #1
 8001d26:	e003      	b.n	8001d30 <TIM_Cmd+0x18>
 8001d28:	f023 0301 	bic.w	r3, r3, #1
 8001d2c:	041b      	lsls	r3, r3, #16
 8001d2e:	0c1b      	lsrs	r3, r3, #16
 8001d30:	8003      	strh	r3, [r0, #0]
 8001d32:	4770      	bx	lr

08001d34 <TIM_OC1Init>:
 8001d34:	b530      	push	{r4, r5, lr}
 8001d36:	bf00      	nop
 8001d38:	bf00      	nop
 8001d3a:	bf00      	nop
 8001d3c:	bf00      	nop
 8001d3e:	6a03      	ldr	r3, [r0, #32]
 8001d40:	680c      	ldr	r4, [r1, #0]
 8001d42:	f023 0301 	bic.w	r3, r3, #1
 8001d46:	6203      	str	r3, [r0, #32]
 8001d48:	6a03      	ldr	r3, [r0, #32]
 8001d4a:	6842      	ldr	r2, [r0, #4]
 8001d4c:	6985      	ldr	r5, [r0, #24]
 8001d4e:	f425 3580 	bic.w	r5, r5, #65536	; 0x10000
 8001d52:	f025 0573 	bic.w	r5, r5, #115	; 0x73
 8001d56:	432c      	orrs	r4, r5
 8001d58:	898d      	ldrh	r5, [r1, #12]
 8001d5a:	f023 0302 	bic.w	r3, r3, #2
 8001d5e:	432b      	orrs	r3, r5
 8001d60:	888d      	ldrh	r5, [r1, #4]
 8001d62:	432b      	orrs	r3, r5
 8001d64:	4d15      	ldr	r5, [pc, #84]	; (8001dbc <TIM_OC1Init+0x88>)
 8001d66:	42a8      	cmp	r0, r5
 8001d68:	d00f      	beq.n	8001d8a <TIM_OC1Init+0x56>
 8001d6a:	f505 6500 	add.w	r5, r5, #2048	; 0x800
 8001d6e:	42a8      	cmp	r0, r5
 8001d70:	d00b      	beq.n	8001d8a <TIM_OC1Init+0x56>
 8001d72:	f505 6540 	add.w	r5, r5, #3072	; 0xc00
 8001d76:	42a8      	cmp	r0, r5
 8001d78:	d007      	beq.n	8001d8a <TIM_OC1Init+0x56>
 8001d7a:	f505 6580 	add.w	r5, r5, #1024	; 0x400
 8001d7e:	42a8      	cmp	r0, r5
 8001d80:	d003      	beq.n	8001d8a <TIM_OC1Init+0x56>
 8001d82:	f505 6580 	add.w	r5, r5, #1024	; 0x400
 8001d86:	42a8      	cmp	r0, r5
 8001d88:	d111      	bne.n	8001dae <TIM_OC1Init+0x7a>
 8001d8a:	bf00      	nop
 8001d8c:	bf00      	nop
 8001d8e:	bf00      	nop
 8001d90:	bf00      	nop
 8001d92:	89cd      	ldrh	r5, [r1, #14]
 8001d94:	f023 0308 	bic.w	r3, r3, #8
 8001d98:	432b      	orrs	r3, r5
 8001d9a:	88cd      	ldrh	r5, [r1, #6]
 8001d9c:	f023 0304 	bic.w	r3, r3, #4
 8001da0:	432b      	orrs	r3, r5
 8001da2:	8a0d      	ldrh	r5, [r1, #16]
 8001da4:	f422 7240 	bic.w	r2, r2, #768	; 0x300
 8001da8:	432a      	orrs	r2, r5
 8001daa:	8a4d      	ldrh	r5, [r1, #18]
 8001dac:	432a      	orrs	r2, r5
 8001dae:	6042      	str	r2, [r0, #4]
 8001db0:	688a      	ldr	r2, [r1, #8]
 8001db2:	6184      	str	r4, [r0, #24]
 8001db4:	6342      	str	r2, [r0, #52]	; 0x34
 8001db6:	6203      	str	r3, [r0, #32]
 8001db8:	bd30      	pop	{r4, r5, pc}
 8001dba:	bf00      	nop
 8001dbc:	40012c00 	.word	0x40012c00

08001dc0 <TIM_OC2Init>:
 8001dc0:	b570      	push	{r4, r5, r6, lr}
 8001dc2:	bf00      	nop
 8001dc4:	bf00      	nop
 8001dc6:	bf00      	nop
 8001dc8:	bf00      	nop
 8001dca:	6a03      	ldr	r3, [r0, #32]
 8001dcc:	680c      	ldr	r4, [r1, #0]
 8001dce:	898e      	ldrh	r6, [r1, #12]
 8001dd0:	f023 0310 	bic.w	r3, r3, #16
 8001dd4:	6203      	str	r3, [r0, #32]
 8001dd6:	6a05      	ldr	r5, [r0, #32]
 8001dd8:	6842      	ldr	r2, [r0, #4]
 8001dda:	6983      	ldr	r3, [r0, #24]
 8001ddc:	f023 7380 	bic.w	r3, r3, #16777216	; 0x1000000
 8001de0:	f423 43e6 	bic.w	r3, r3, #29440	; 0x7300
 8001de4:	ea43 2404 	orr.w	r4, r3, r4, lsl #8
 8001de8:	888b      	ldrh	r3, [r1, #4]
 8001dea:	f025 0520 	bic.w	r5, r5, #32
 8001dee:	4333      	orrs	r3, r6
 8001df0:	ea45 1303 	orr.w	r3, r5, r3, lsl #4
 8001df4:	4d10      	ldr	r5, [pc, #64]	; (8001e38 <TIM_OC2Init+0x78>)
 8001df6:	42a8      	cmp	r0, r5
 8001df8:	d003      	beq.n	8001e02 <TIM_OC2Init+0x42>
 8001dfa:	f505 6500 	add.w	r5, r5, #2048	; 0x800
 8001dfe:	42a8      	cmp	r0, r5
 8001e00:	d114      	bne.n	8001e2c <TIM_OC2Init+0x6c>
 8001e02:	bf00      	nop
 8001e04:	bf00      	nop
 8001e06:	bf00      	nop
 8001e08:	bf00      	nop
 8001e0a:	89cd      	ldrh	r5, [r1, #14]
 8001e0c:	8a0e      	ldrh	r6, [r1, #16]
 8001e0e:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8001e12:	ea43 1305 	orr.w	r3, r3, r5, lsl #4
 8001e16:	88cd      	ldrh	r5, [r1, #6]
 8001e18:	f023 0340 	bic.w	r3, r3, #64	; 0x40
 8001e1c:	ea43 1305 	orr.w	r3, r3, r5, lsl #4
 8001e20:	8a4d      	ldrh	r5, [r1, #18]
 8001e22:	f422 6240 	bic.w	r2, r2, #3072	; 0xc00
 8001e26:	4335      	orrs	r5, r6
 8001e28:	ea42 0285 	orr.w	r2, r2, r5, lsl #2
 8001e2c:	6042      	str	r2, [r0, #4]
 8001e2e:	688a      	ldr	r2, [r1, #8]
 8001e30:	6184      	str	r4, [r0, #24]
 8001e32:	6382      	str	r2, [r0, #56]	; 0x38
 8001e34:	6203      	str	r3, [r0, #32]
 8001e36:	bd70      	pop	{r4, r5, r6, pc}
 8001e38:	40012c00 	.word	0x40012c00

08001e3c <TIM_CtrlPWMOutputs>:
 8001e3c:	bf00      	nop
 8001e3e:	bf00      	nop
 8001e40:	6c43      	ldr	r3, [r0, #68]	; 0x44
 8001e42:	b111      	cbz	r1, 8001e4a <TIM_CtrlPWMOutputs+0xe>
 8001e44:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
 8001e48:	e001      	b.n	8001e4e <TIM_CtrlPWMOutputs+0x12>
 8001e4a:	f3c3 030e 	ubfx	r3, r3, #0, #15
 8001e4e:	6443      	str	r3, [r0, #68]	; 0x44
 8001e50:	4770      	bx	lr

08001e52 <TIM_ClearITPendingBit>:
 8001e52:	bf00      	nop
 8001e54:	43c9      	mvns	r1, r1
 8001e56:	b289      	uxth	r1, r1
 8001e58:	6101      	str	r1, [r0, #16]
 8001e5a:	4770      	bx	lr

08001e5c <timer_init>:
 8001e5c:	b530      	push	{r4, r5, lr}
 8001e5e:	2300      	movs	r3, #0
 8001e60:	b085      	sub	sp, #20
 8001e62:	491f      	ldr	r1, [pc, #124]	; (8001ee0 <timer_init+0x84>)
 8001e64:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8001e68:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 8001e6c:	491d      	ldr	r1, [pc, #116]	; (8001ee4 <timer_init+0x88>)
 8001e6e:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 8001e72:	4a1d      	ldr	r2, [pc, #116]	; (8001ee8 <timer_init+0x8c>)
 8001e74:	2400      	movs	r4, #0
 8001e76:	f822 4013 	strh.w	r4, [r2, r3, lsl #1]
 8001e7a:	3301      	adds	r3, #1
 8001e7c:	2b04      	cmp	r3, #4
 8001e7e:	4625      	mov	r5, r4
 8001e80:	d1ef      	bne.n	8001e62 <timer_init+0x6>
 8001e82:	4b1a      	ldr	r3, [pc, #104]	; (8001eec <timer_init+0x90>)
 8001e84:	2002      	movs	r0, #2
 8001e86:	2101      	movs	r1, #1
 8001e88:	601c      	str	r4, [r3, #0]
 8001e8a:	f7ff fee7 	bl	8001c5c <RCC_APB1PeriphClockCmd>
 8001e8e:	f8ad 4006 	strh.w	r4, [sp, #6]
 8001e92:	f8ad 400c 	strh.w	r4, [sp, #12]
 8001e96:	f8ad 400e 	strh.w	r4, [sp, #14]
 8001e9a:	4c15      	ldr	r4, [pc, #84]	; (8001ef0 <timer_init+0x94>)
 8001e9c:	f44f 738c 	mov.w	r3, #280	; 0x118
 8001ea0:	f8ad 3004 	strh.w	r3, [sp, #4]
 8001ea4:	4620      	mov	r0, r4
 8001ea6:	2331      	movs	r3, #49	; 0x31
 8001ea8:	a901      	add	r1, sp, #4
 8001eaa:	9302      	str	r3, [sp, #8]
 8001eac:	f7ff fee4 	bl	8001c78 <TIM_TimeBaseInit>
 8001eb0:	4620      	mov	r0, r4
 8001eb2:	2101      	movs	r1, #1
 8001eb4:	f7ff ff30 	bl	8001d18 <TIM_Cmd>
 8001eb8:	68e3      	ldr	r3, [r4, #12]
 8001eba:	f043 0301 	orr.w	r3, r3, #1
 8001ebe:	60e3      	str	r3, [r4, #12]
 8001ec0:	231d      	movs	r3, #29
 8001ec2:	f88d 3000 	strb.w	r3, [sp]
 8001ec6:	4668      	mov	r0, sp
 8001ec8:	2301      	movs	r3, #1
 8001eca:	f88d 5001 	strb.w	r5, [sp, #1]
 8001ece:	f88d 3002 	strb.w	r3, [sp, #2]
 8001ed2:	f88d 3003 	strb.w	r3, [sp, #3]
 8001ed6:	f000 fcfb 	bl	80028d0 <NVIC_Init>
 8001eda:	b005      	add	sp, #20
 8001edc:	bd30      	pop	{r4, r5, pc}
 8001ede:	bf00      	nop
 8001ee0:	2000126c 	.word	0x2000126c
 8001ee4:	20001260 	.word	0x20001260
 8001ee8:	20001258 	.word	0x20001258
 8001eec:	20001268 	.word	0x20001268
 8001ef0:	40000400 	.word	0x40000400

08001ef4 <TIM3_IRQHandler>:
 8001ef4:	2300      	movs	r3, #0
 8001ef6:	4a10      	ldr	r2, [pc, #64]	; (8001f38 <TIM3_IRQHandler+0x44>)
 8001ef8:	f832 1013 	ldrh.w	r1, [r2, r3, lsl #1]
 8001efc:	b289      	uxth	r1, r1
 8001efe:	b129      	cbz	r1, 8001f0c <TIM3_IRQHandler+0x18>
 8001f00:	f832 1013 	ldrh.w	r1, [r2, r3, lsl #1]
 8001f04:	b289      	uxth	r1, r1
 8001f06:	3901      	subs	r1, #1
 8001f08:	b289      	uxth	r1, r1
 8001f0a:	e007      	b.n	8001f1c <TIM3_IRQHandler+0x28>
 8001f0c:	490b      	ldr	r1, [pc, #44]	; (8001f3c <TIM3_IRQHandler+0x48>)
 8001f0e:	f831 1013 	ldrh.w	r1, [r1, r3, lsl #1]
 8001f12:	b289      	uxth	r1, r1
 8001f14:	f822 1013 	strh.w	r1, [r2, r3, lsl #1]
 8001f18:	4a09      	ldr	r2, [pc, #36]	; (8001f40 <TIM3_IRQHandler+0x4c>)
 8001f1a:	2101      	movs	r1, #1
 8001f1c:	f822 1013 	strh.w	r1, [r2, r3, lsl #1]
 8001f20:	3301      	adds	r3, #1
 8001f22:	2b04      	cmp	r3, #4
 8001f24:	d1e7      	bne.n	8001ef6 <TIM3_IRQHandler+0x2>
 8001f26:	4b07      	ldr	r3, [pc, #28]	; (8001f44 <TIM3_IRQHandler+0x50>)
 8001f28:	4807      	ldr	r0, [pc, #28]	; (8001f48 <TIM3_IRQHandler+0x54>)
 8001f2a:	681a      	ldr	r2, [r3, #0]
 8001f2c:	2101      	movs	r1, #1
 8001f2e:	3201      	adds	r2, #1
 8001f30:	601a      	str	r2, [r3, #0]
 8001f32:	f7ff bf8e 	b.w	8001e52 <TIM_ClearITPendingBit>
 8001f36:	bf00      	nop
 8001f38:	2000126c 	.word	0x2000126c
 8001f3c:	20001260 	.word	0x20001260
 8001f40:	20001258 	.word	0x20001258
 8001f44:	20001268 	.word	0x20001268
 8001f48:	40000400 	.word	0x40000400

08001f4c <timer_get_time>:
 8001f4c:	b082      	sub	sp, #8
 8001f4e:	b672      	cpsid	i
 8001f50:	4b04      	ldr	r3, [pc, #16]	; (8001f64 <timer_get_time+0x18>)
 8001f52:	681b      	ldr	r3, [r3, #0]
 8001f54:	9301      	str	r3, [sp, #4]
 8001f56:	b662      	cpsie	i
 8001f58:	9801      	ldr	r0, [sp, #4]
 8001f5a:	230a      	movs	r3, #10
 8001f5c:	fbb0 f0f3 	udiv	r0, r0, r3
 8001f60:	b002      	add	sp, #8
 8001f62:	4770      	bx	lr
 8001f64:	20001268 	.word	0x20001268

08001f68 <timer_delay_ms>:
 8001f68:	b513      	push	{r0, r1, r4, lr}
 8001f6a:	4604      	mov	r4, r0
 8001f6c:	f7ff ffee 	bl	8001f4c <timer_get_time>
 8001f70:	4420      	add	r0, r4
 8001f72:	9001      	str	r0, [sp, #4]
 8001f74:	9c01      	ldr	r4, [sp, #4]
 8001f76:	f7ff ffe9 	bl	8001f4c <timer_get_time>
 8001f7a:	4284      	cmp	r4, r0
 8001f7c:	d902      	bls.n	8001f84 <timer_delay_ms+0x1c>
 8001f7e:	f000 fba9 	bl	80026d4 <sleep>
 8001f82:	e7f7      	b.n	8001f74 <timer_delay_ms+0xc>
 8001f84:	b002      	add	sp, #8
 8001f86:	bd10      	pop	{r4, pc}

08001f88 <event_timer_set_period>:
 8001f88:	b672      	cpsid	i
 8001f8a:	230a      	movs	r3, #10
 8001f8c:	4359      	muls	r1, r3
 8001f8e:	4b06      	ldr	r3, [pc, #24]	; (8001fa8 <event_timer_set_period+0x20>)
 8001f90:	b289      	uxth	r1, r1
 8001f92:	f823 1010 	strh.w	r1, [r3, r0, lsl #1]
 8001f96:	4b05      	ldr	r3, [pc, #20]	; (8001fac <event_timer_set_period+0x24>)
 8001f98:	f823 1010 	strh.w	r1, [r3, r0, lsl #1]
 8001f9c:	4b04      	ldr	r3, [pc, #16]	; (8001fb0 <event_timer_set_period+0x28>)
 8001f9e:	2200      	movs	r2, #0
 8001fa0:	f823 2010 	strh.w	r2, [r3, r0, lsl #1]
 8001fa4:	b662      	cpsie	i
 8001fa6:	4770      	bx	lr
 8001fa8:	2000126c 	.word	0x2000126c
 8001fac:	20001260 	.word	0x20001260
 8001fb0:	20001258 	.word	0x20001258

08001fb4 <event_timer_wait>:
 8001fb4:	b510      	push	{r4, lr}
 8001fb6:	4604      	mov	r4, r0
 8001fb8:	4b06      	ldr	r3, [pc, #24]	; (8001fd4 <event_timer_wait+0x20>)
 8001fba:	f833 2014 	ldrh.w	r2, [r3, r4, lsl #1]
 8001fbe:	b292      	uxth	r2, r2
 8001fc0:	b912      	cbnz	r2, 8001fc8 <event_timer_wait+0x14>
 8001fc2:	f000 fb87 	bl	80026d4 <sleep>
 8001fc6:	e7f7      	b.n	8001fb8 <event_timer_wait+0x4>
 8001fc8:	b672      	cpsid	i
 8001fca:	2200      	movs	r2, #0
 8001fcc:	f823 2014 	strh.w	r2, [r3, r4, lsl #1]
 8001fd0:	b662      	cpsie	i
 8001fd2:	bd10      	pop	{r4, pc}
 8001fd4:	20001258 	.word	0x20001258

08001fd8 <USART_Init>:
 8001fd8:	b530      	push	{r4, r5, lr}
 8001fda:	4604      	mov	r4, r0
 8001fdc:	b099      	sub	sp, #100	; 0x64
 8001fde:	460d      	mov	r5, r1
 8001fe0:	bf00      	nop
 8001fe2:	bf00      	nop
 8001fe4:	bf00      	nop
 8001fe6:	bf00      	nop
 8001fe8:	bf00      	nop
 8001fea:	bf00      	nop
 8001fec:	bf00      	nop
 8001fee:	6803      	ldr	r3, [r0, #0]
 8001ff0:	f023 0301 	bic.w	r3, r3, #1
 8001ff4:	6003      	str	r3, [r0, #0]
 8001ff6:	6842      	ldr	r2, [r0, #4]
 8001ff8:	688b      	ldr	r3, [r1, #8]
 8001ffa:	f422 5240 	bic.w	r2, r2, #12288	; 0x3000
 8001ffe:	4313      	orrs	r3, r2
 8002000:	6043      	str	r3, [r0, #4]
 8002002:	686a      	ldr	r2, [r5, #4]
 8002004:	68eb      	ldr	r3, [r5, #12]
 8002006:	6801      	ldr	r1, [r0, #0]
 8002008:	431a      	orrs	r2, r3
 800200a:	692b      	ldr	r3, [r5, #16]
 800200c:	f421 51b0 	bic.w	r1, r1, #5632	; 0x1600
 8002010:	f021 010c 	bic.w	r1, r1, #12
 8002014:	4313      	orrs	r3, r2
 8002016:	430b      	orrs	r3, r1
 8002018:	6003      	str	r3, [r0, #0]
 800201a:	6882      	ldr	r2, [r0, #8]
 800201c:	696b      	ldr	r3, [r5, #20]
 800201e:	f422 7240 	bic.w	r2, r2, #768	; 0x300
 8002022:	4313      	orrs	r3, r2
 8002024:	6083      	str	r3, [r0, #8]
 8002026:	a801      	add	r0, sp, #4
 8002028:	f7ff fc60 	bl	80018ec <RCC_GetClocksFreq>
 800202c:	4b17      	ldr	r3, [pc, #92]	; (800208c <USART_Init+0xb4>)
 800202e:	429c      	cmp	r4, r3
 8002030:	d101      	bne.n	8002036 <USART_Init+0x5e>
 8002032:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8002034:	e00e      	b.n	8002054 <USART_Init+0x7c>
 8002036:	4b16      	ldr	r3, [pc, #88]	; (8002090 <USART_Init+0xb8>)
 8002038:	429c      	cmp	r4, r3
 800203a:	d101      	bne.n	8002040 <USART_Init+0x68>
 800203c:	9a10      	ldr	r2, [sp, #64]	; 0x40
 800203e:	e009      	b.n	8002054 <USART_Init+0x7c>
 8002040:	4b14      	ldr	r3, [pc, #80]	; (8002094 <USART_Init+0xbc>)
 8002042:	429c      	cmp	r4, r3
 8002044:	d101      	bne.n	800204a <USART_Init+0x72>
 8002046:	9a11      	ldr	r2, [sp, #68]	; 0x44
 8002048:	e004      	b.n	8002054 <USART_Init+0x7c>
 800204a:	4b13      	ldr	r3, [pc, #76]	; (8002098 <USART_Init+0xc0>)
 800204c:	429c      	cmp	r4, r3
 800204e:	bf0c      	ite	eq
 8002050:	9a12      	ldreq	r2, [sp, #72]	; 0x48
 8002052:	9a13      	ldrne	r2, [sp, #76]	; 0x4c
 8002054:	6823      	ldr	r3, [r4, #0]
 8002056:	6829      	ldr	r1, [r5, #0]
 8002058:	f413 4f00 	tst.w	r3, #32768	; 0x8000
 800205c:	bf18      	it	ne
 800205e:	0052      	lslne	r2, r2, #1
 8002060:	fbb2 f3f1 	udiv	r3, r2, r1
 8002064:	fb01 2213 	mls	r2, r1, r3, r2
 8002068:	ebb2 0f51 	cmp.w	r2, r1, lsr #1
 800206c:	6822      	ldr	r2, [r4, #0]
 800206e:	bf28      	it	cs
 8002070:	3301      	addcs	r3, #1
 8002072:	0412      	lsls	r2, r2, #16
 8002074:	d506      	bpl.n	8002084 <USART_Init+0xac>
 8002076:	f64f 72f0 	movw	r2, #65520	; 0xfff0
 800207a:	f3c3 0142 	ubfx	r1, r3, #1, #3
 800207e:	401a      	ands	r2, r3
 8002080:	ea41 0302 	orr.w	r3, r1, r2
 8002084:	b29b      	uxth	r3, r3
 8002086:	81a3      	strh	r3, [r4, #12]
 8002088:	b019      	add	sp, #100	; 0x64
 800208a:	bd30      	pop	{r4, r5, pc}
 800208c:	40013800 	.word	0x40013800
 8002090:	40004400 	.word	0x40004400
 8002094:	40004800 	.word	0x40004800
 8002098:	40004c00 	.word	0x40004c00

0800209c <USART_Cmd>:
 800209c:	bf00      	nop
 800209e:	bf00      	nop
 80020a0:	6803      	ldr	r3, [r0, #0]
 80020a2:	b111      	cbz	r1, 80020aa <USART_Cmd+0xe>
 80020a4:	f043 0301 	orr.w	r3, r3, #1
 80020a8:	e001      	b.n	80020ae <USART_Cmd+0x12>
 80020aa:	f023 0301 	bic.w	r3, r3, #1
 80020ae:	6003      	str	r3, [r0, #0]
 80020b0:	4770      	bx	lr

080020b2 <USART_ReceiveData>:
 80020b2:	bf00      	nop
 80020b4:	8c80      	ldrh	r0, [r0, #36]	; 0x24
 80020b6:	f3c0 0008 	ubfx	r0, r0, #0, #9
 80020ba:	4770      	bx	lr

080020bc <USART_ITConfig>:
 80020bc:	b510      	push	{r4, lr}
 80020be:	bf00      	nop
 80020c0:	bf00      	nop
 80020c2:	bf00      	nop
 80020c4:	f3c1 2307 	ubfx	r3, r1, #8, #8
 80020c8:	2401      	movs	r4, #1
 80020ca:	b2c9      	uxtb	r1, r1
 80020cc:	2b02      	cmp	r3, #2
 80020ce:	fa04 f101 	lsl.w	r1, r4, r1
 80020d2:	d101      	bne.n	80020d8 <USART_ITConfig+0x1c>
 80020d4:	3004      	adds	r0, #4
 80020d6:	e002      	b.n	80020de <USART_ITConfig+0x22>
 80020d8:	2b03      	cmp	r3, #3
 80020da:	bf08      	it	eq
 80020dc:	3008      	addeq	r0, #8
 80020de:	6803      	ldr	r3, [r0, #0]
 80020e0:	b10a      	cbz	r2, 80020e6 <USART_ITConfig+0x2a>
 80020e2:	4319      	orrs	r1, r3
 80020e4:	e001      	b.n	80020ea <USART_ITConfig+0x2e>
 80020e6:	ea23 0101 	bic.w	r1, r3, r1
 80020ea:	6001      	str	r1, [r0, #0]
 80020ec:	bd10      	pop	{r4, pc}

080020ee <USART_GetITStatus>:
 80020ee:	b510      	push	{r4, lr}
 80020f0:	bf00      	nop
 80020f2:	bf00      	nop
 80020f4:	2401      	movs	r4, #1
 80020f6:	f3c1 2207 	ubfx	r2, r1, #8, #8
 80020fa:	b2cb      	uxtb	r3, r1
 80020fc:	42a2      	cmp	r2, r4
 80020fe:	fa04 f303 	lsl.w	r3, r4, r3
 8002102:	d101      	bne.n	8002108 <USART_GetITStatus+0x1a>
 8002104:	6802      	ldr	r2, [r0, #0]
 8002106:	e003      	b.n	8002110 <USART_GetITStatus+0x22>
 8002108:	2a02      	cmp	r2, #2
 800210a:	bf0c      	ite	eq
 800210c:	6842      	ldreq	r2, [r0, #4]
 800210e:	6882      	ldrne	r2, [r0, #8]
 8002110:	4013      	ands	r3, r2
 8002112:	69c2      	ldr	r2, [r0, #28]
 8002114:	b143      	cbz	r3, 8002128 <USART_GetITStatus+0x3a>
 8002116:	2301      	movs	r3, #1
 8002118:	0c09      	lsrs	r1, r1, #16
 800211a:	fa03 f101 	lsl.w	r1, r3, r1
 800211e:	4211      	tst	r1, r2
 8002120:	bf0c      	ite	eq
 8002122:	2000      	moveq	r0, #0
 8002124:	2001      	movne	r0, #1
 8002126:	bd10      	pop	{r4, pc}
 8002128:	4618      	mov	r0, r3
 800212a:	bd10      	pop	{r4, pc}

0800212c <USART_ClearITPendingBit>:
 800212c:	bf00      	nop
 800212e:	bf00      	nop
 8002130:	2301      	movs	r3, #1
 8002132:	0c09      	lsrs	r1, r1, #16
 8002134:	fa03 f101 	lsl.w	r1, r3, r1
 8002138:	6201      	str	r1, [r0, #32]
 800213a:	4770      	bx	lr

0800213c <uart_write>:
 800213c:	4b03      	ldr	r3, [pc, #12]	; (800214c <uart_write+0x10>)
 800213e:	69da      	ldr	r2, [r3, #28]
 8002140:	0612      	lsls	r2, r2, #24
 8002142:	d401      	bmi.n	8002148 <uart_write+0xc>
 8002144:	bf00      	nop
 8002146:	e7f9      	b.n	800213c <uart_write>
 8002148:	8518      	strh	r0, [r3, #40]	; 0x28
 800214a:	4770      	bx	lr
 800214c:	40013800 	.word	0x40013800

08002150 <uart_init>:
 8002150:	b530      	push	{r4, r5, lr}
 8002152:	4b2c      	ldr	r3, [pc, #176]	; (8002204 <uart_init+0xb4>)
 8002154:	4d2c      	ldr	r5, [pc, #176]	; (8002208 <uart_init+0xb8>)
 8002156:	2400      	movs	r4, #0
 8002158:	601c      	str	r4, [r3, #0]
 800215a:	4b2c      	ldr	r3, [pc, #176]	; (800220c <uart_init+0xbc>)
 800215c:	b08b      	sub	sp, #44	; 0x2c
 800215e:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 8002162:	2101      	movs	r1, #1
 8002164:	601c      	str	r4, [r3, #0]
 8002166:	f7ff fd5d 	bl	8001c24 <RCC_AHBPeriphClockCmd>
 800216a:	f44f 4080 	mov.w	r0, #16384	; 0x4000
 800216e:	2101      	movs	r1, #1
 8002170:	f7ff fd66 	bl	8001c40 <RCC_APB2PeriphClockCmd>
 8002174:	f44f 63c0 	mov.w	r3, #1536	; 0x600
 8002178:	9302      	str	r3, [sp, #8]
 800217a:	2302      	movs	r3, #2
 800217c:	f88d 300c 	strb.w	r3, [sp, #12]
 8002180:	a902      	add	r1, sp, #8
 8002182:	2303      	movs	r3, #3
 8002184:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8002188:	f88d 300d 	strb.w	r3, [sp, #13]
 800218c:	f88d 400e 	strb.w	r4, [sp, #14]
 8002190:	f88d 400f 	strb.w	r4, [sp, #15]
 8002194:	f000 fbe5 	bl	8002962 <GPIO_Init>
 8002198:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 800219c:	2109      	movs	r1, #9
 800219e:	2207      	movs	r2, #7
 80021a0:	f000 fc2d 	bl	80029fe <GPIO_PinAFConfig>
 80021a4:	2207      	movs	r2, #7
 80021a6:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80021aa:	210a      	movs	r1, #10
 80021ac:	f000 fc27 	bl	80029fe <GPIO_PinAFConfig>
 80021b0:	f44f 33e1 	mov.w	r3, #115200	; 0x1c200
 80021b4:	9304      	str	r3, [sp, #16]
 80021b6:	4628      	mov	r0, r5
 80021b8:	230c      	movs	r3, #12
 80021ba:	a904      	add	r1, sp, #16
 80021bc:	9308      	str	r3, [sp, #32]
 80021be:	9405      	str	r4, [sp, #20]
 80021c0:	9406      	str	r4, [sp, #24]
 80021c2:	9407      	str	r4, [sp, #28]
 80021c4:	9409      	str	r4, [sp, #36]	; 0x24
 80021c6:	f7ff ff07 	bl	8001fd8 <USART_Init>
 80021ca:	4628      	mov	r0, r5
 80021cc:	2101      	movs	r1, #1
 80021ce:	f7ff ff65 	bl	800209c <USART_Cmd>
 80021d2:	2201      	movs	r2, #1
 80021d4:	4628      	mov	r0, r5
 80021d6:	490e      	ldr	r1, [pc, #56]	; (8002210 <uart_init+0xc0>)
 80021d8:	f7ff ff70 	bl	80020bc <USART_ITConfig>
 80021dc:	2325      	movs	r3, #37	; 0x25
 80021de:	f88d 4005 	strb.w	r4, [sp, #5]
 80021e2:	f88d 4006 	strb.w	r4, [sp, #6]
 80021e6:	a801      	add	r0, sp, #4
 80021e8:	2401      	movs	r4, #1
 80021ea:	f88d 3004 	strb.w	r3, [sp, #4]
 80021ee:	f88d 4007 	strb.w	r4, [sp, #7]
 80021f2:	f000 fb6d 	bl	80028d0 <NVIC_Init>
 80021f6:	4628      	mov	r0, r5
 80021f8:	4621      	mov	r1, r4
 80021fa:	f7ff ff4f 	bl	800209c <USART_Cmd>
 80021fe:	b00b      	add	sp, #44	; 0x2c
 8002200:	bd30      	pop	{r4, r5, pc}
 8002202:	bf00      	nop
 8002204:	20001284 	.word	0x20001284
 8002208:	40013800 	.word	0x40013800
 800220c:	20001288 	.word	0x20001288
 8002210:	00050105 	.word	0x00050105

08002214 <USART1_IRQHandler>:
 8002214:	b508      	push	{r3, lr}
 8002216:	480d      	ldr	r0, [pc, #52]	; (800224c <USART1_IRQHandler+0x38>)
 8002218:	490d      	ldr	r1, [pc, #52]	; (8002250 <USART1_IRQHandler+0x3c>)
 800221a:	f7ff ff68 	bl	80020ee <USART_GetITStatus>
 800221e:	b178      	cbz	r0, 8002240 <USART1_IRQHandler+0x2c>
 8002220:	480a      	ldr	r0, [pc, #40]	; (800224c <USART1_IRQHandler+0x38>)
 8002222:	f7ff ff46 	bl	80020b2 <USART_ReceiveData>
 8002226:	4b0b      	ldr	r3, [pc, #44]	; (8002254 <USART1_IRQHandler+0x40>)
 8002228:	490b      	ldr	r1, [pc, #44]	; (8002258 <USART1_IRQHandler+0x44>)
 800222a:	681a      	ldr	r2, [r3, #0]
 800222c:	b2c0      	uxtb	r0, r0
 800222e:	5488      	strb	r0, [r1, r2]
 8002230:	681a      	ldr	r2, [r3, #0]
 8002232:	3201      	adds	r2, #1
 8002234:	601a      	str	r2, [r3, #0]
 8002236:	681a      	ldr	r2, [r3, #0]
 8002238:	2a0f      	cmp	r2, #15
 800223a:	bf84      	itt	hi
 800223c:	2200      	movhi	r2, #0
 800223e:	601a      	strhi	r2, [r3, #0]
 8002240:	4802      	ldr	r0, [pc, #8]	; (800224c <USART1_IRQHandler+0x38>)
 8002242:	4903      	ldr	r1, [pc, #12]	; (8002250 <USART1_IRQHandler+0x3c>)
 8002244:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8002248:	f7ff bf70 	b.w	800212c <USART_ClearITPendingBit>
 800224c:	40013800 	.word	0x40013800
 8002250:	00050105 	.word	0x00050105
 8002254:	20001284 	.word	0x20001284
 8002258:	20001274 	.word	0x20001274

0800225c <i2c_delay>:
 800225c:	230b      	movs	r3, #11
 800225e:	3b01      	subs	r3, #1
 8002260:	d001      	beq.n	8002266 <i2c_delay+0xa>
 8002262:	bf00      	nop
 8002264:	e7fb      	b.n	800225e <i2c_delay+0x2>
 8002266:	4770      	bx	lr

08002268 <SetLowSDA>:
 8002268:	b537      	push	{r0, r1, r2, r4, r5, lr}
 800226a:	4d0d      	ldr	r5, [pc, #52]	; (80022a0 <SetLowSDA+0x38>)
 800226c:	2301      	movs	r3, #1
 800226e:	2203      	movs	r2, #3
 8002270:	2480      	movs	r4, #128	; 0x80
 8002272:	f88d 3004 	strb.w	r3, [sp, #4]
 8002276:	f88d 3006 	strb.w	r3, [sp, #6]
 800227a:	4628      	mov	r0, r5
 800227c:	2300      	movs	r3, #0
 800227e:	4669      	mov	r1, sp
 8002280:	f88d 2005 	strb.w	r2, [sp, #5]
 8002284:	f88d 3007 	strb.w	r3, [sp, #7]
 8002288:	9400      	str	r4, [sp, #0]
 800228a:	f000 fb6a 	bl	8002962 <GPIO_Init>
 800228e:	4628      	mov	r0, r5
 8002290:	4621      	mov	r1, r4
 8002292:	f000 fbb0 	bl	80029f6 <GPIO_ResetBits>
 8002296:	f7ff ffe1 	bl	800225c <i2c_delay>
 800229a:	b003      	add	sp, #12
 800229c:	bd30      	pop	{r4, r5, pc}
 800229e:	bf00      	nop
 80022a0:	48000400 	.word	0x48000400

080022a4 <SetHighSDA>:
 80022a4:	b537      	push	{r0, r1, r2, r4, r5, lr}
 80022a6:	4d0d      	ldr	r5, [pc, #52]	; (80022dc <SetHighSDA+0x38>)
 80022a8:	2203      	movs	r2, #3
 80022aa:	2300      	movs	r3, #0
 80022ac:	2480      	movs	r4, #128	; 0x80
 80022ae:	f88d 2005 	strb.w	r2, [sp, #5]
 80022b2:	4628      	mov	r0, r5
 80022b4:	2201      	movs	r2, #1
 80022b6:	4669      	mov	r1, sp
 80022b8:	f88d 3004 	strb.w	r3, [sp, #4]
 80022bc:	f88d 2006 	strb.w	r2, [sp, #6]
 80022c0:	f88d 3007 	strb.w	r3, [sp, #7]
 80022c4:	9400      	str	r4, [sp, #0]
 80022c6:	f000 fb4c 	bl	8002962 <GPIO_Init>
 80022ca:	4628      	mov	r0, r5
 80022cc:	4621      	mov	r1, r4
 80022ce:	f000 fb8e 	bl	80029ee <GPIO_SetBits>
 80022d2:	f7ff ffc3 	bl	800225c <i2c_delay>
 80022d6:	b003      	add	sp, #12
 80022d8:	bd30      	pop	{r4, r5, pc}
 80022da:	bf00      	nop
 80022dc:	48000400 	.word	0x48000400

080022e0 <SetLowSCL>:
 80022e0:	b508      	push	{r3, lr}
 80022e2:	4804      	ldr	r0, [pc, #16]	; (80022f4 <SetLowSCL+0x14>)
 80022e4:	2140      	movs	r1, #64	; 0x40
 80022e6:	f000 fb86 	bl	80029f6 <GPIO_ResetBits>
 80022ea:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80022ee:	f7ff bfb5 	b.w	800225c <i2c_delay>
 80022f2:	bf00      	nop
 80022f4:	48000400 	.word	0x48000400

080022f8 <SetHighSCL>:
 80022f8:	b508      	push	{r3, lr}
 80022fa:	4804      	ldr	r0, [pc, #16]	; (800230c <SetHighSCL+0x14>)
 80022fc:	2140      	movs	r1, #64	; 0x40
 80022fe:	f000 fb76 	bl	80029ee <GPIO_SetBits>
 8002302:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8002306:	f7ff bfa9 	b.w	800225c <i2c_delay>
 800230a:	bf00      	nop
 800230c:	48000400 	.word	0x48000400

08002310 <i2c_0_init>:
 8002310:	b507      	push	{r0, r1, r2, lr}
 8002312:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 8002316:	2101      	movs	r1, #1
 8002318:	f7ff fc84 	bl	8001c24 <RCC_AHBPeriphClockCmd>
 800231c:	23c0      	movs	r3, #192	; 0xc0
 800231e:	9300      	str	r3, [sp, #0]
 8002320:	2301      	movs	r3, #1
 8002322:	2203      	movs	r2, #3
 8002324:	480a      	ldr	r0, [pc, #40]	; (8002350 <i2c_0_init+0x40>)
 8002326:	f88d 3004 	strb.w	r3, [sp, #4]
 800232a:	4669      	mov	r1, sp
 800232c:	f88d 3006 	strb.w	r3, [sp, #6]
 8002330:	2300      	movs	r3, #0
 8002332:	f88d 2005 	strb.w	r2, [sp, #5]
 8002336:	f88d 3007 	strb.w	r3, [sp, #7]
 800233a:	f000 fb12 	bl	8002962 <GPIO_Init>
 800233e:	f7ff ffdb 	bl	80022f8 <SetHighSCL>
 8002342:	f7ff ff91 	bl	8002268 <SetLowSDA>
 8002346:	f7ff ffad 	bl	80022a4 <SetHighSDA>
 800234a:	b003      	add	sp, #12
 800234c:	f85d fb04 	ldr.w	pc, [sp], #4
 8002350:	48000400 	.word	0x48000400

08002354 <i2cStart>:
 8002354:	b508      	push	{r3, lr}
 8002356:	f7ff ffcf 	bl	80022f8 <SetHighSCL>
 800235a:	f7ff ffa3 	bl	80022a4 <SetHighSDA>
 800235e:	f7ff ffcb 	bl	80022f8 <SetHighSCL>
 8002362:	f7ff ff81 	bl	8002268 <SetLowSDA>
 8002366:	f7ff ffbb 	bl	80022e0 <SetLowSCL>
 800236a:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800236e:	f7ff bf99 	b.w	80022a4 <SetHighSDA>

08002372 <i2cStop>:
 8002372:	b508      	push	{r3, lr}
 8002374:	f7ff ffb4 	bl	80022e0 <SetLowSCL>
 8002378:	f7ff ff76 	bl	8002268 <SetLowSDA>
 800237c:	f7ff ffbc 	bl	80022f8 <SetHighSCL>
 8002380:	f7ff ff72 	bl	8002268 <SetLowSDA>
 8002384:	f7ff ffb8 	bl	80022f8 <SetHighSCL>
 8002388:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800238c:	f7ff bf8a 	b.w	80022a4 <SetHighSDA>

08002390 <i2cWrite>:
 8002390:	b538      	push	{r3, r4, r5, lr}
 8002392:	4604      	mov	r4, r0
 8002394:	2508      	movs	r5, #8
 8002396:	f7ff ffa3 	bl	80022e0 <SetLowSCL>
 800239a:	0623      	lsls	r3, r4, #24
 800239c:	d502      	bpl.n	80023a4 <i2cWrite+0x14>
 800239e:	f7ff ff81 	bl	80022a4 <SetHighSDA>
 80023a2:	e001      	b.n	80023a8 <i2cWrite+0x18>
 80023a4:	f7ff ff60 	bl	8002268 <SetLowSDA>
 80023a8:	3d01      	subs	r5, #1
 80023aa:	f7ff ffa5 	bl	80022f8 <SetHighSCL>
 80023ae:	0064      	lsls	r4, r4, #1
 80023b0:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 80023b4:	b2e4      	uxtb	r4, r4
 80023b6:	d1ee      	bne.n	8002396 <i2cWrite+0x6>
 80023b8:	f7ff ff92 	bl	80022e0 <SetLowSCL>
 80023bc:	f7ff ff72 	bl	80022a4 <SetHighSDA>
 80023c0:	f7ff ff9a 	bl	80022f8 <SetHighSCL>
 80023c4:	4b05      	ldr	r3, [pc, #20]	; (80023dc <i2cWrite+0x4c>)
 80023c6:	8a1c      	ldrh	r4, [r3, #16]
 80023c8:	b2a4      	uxth	r4, r4
 80023ca:	f7ff ff89 	bl	80022e0 <SetLowSCL>
 80023ce:	f7ff ff45 	bl	800225c <i2c_delay>
 80023d2:	f084 0080 	eor.w	r0, r4, #128	; 0x80
 80023d6:	f3c0 10c0 	ubfx	r0, r0, #7, #1
 80023da:	bd38      	pop	{r3, r4, r5, pc}
 80023dc:	48000400 	.word	0x48000400

080023e0 <i2cRead>:
 80023e0:	b570      	push	{r4, r5, r6, lr}
 80023e2:	4606      	mov	r6, r0
 80023e4:	f7ff ff7c 	bl	80022e0 <SetLowSCL>
 80023e8:	f7ff ff5c 	bl	80022a4 <SetHighSDA>
 80023ec:	2508      	movs	r5, #8
 80023ee:	2400      	movs	r4, #0
 80023f0:	f7ff ff82 	bl	80022f8 <SetHighSCL>
 80023f4:	4b0d      	ldr	r3, [pc, #52]	; (800242c <i2cRead+0x4c>)
 80023f6:	8a1b      	ldrh	r3, [r3, #16]
 80023f8:	0064      	lsls	r4, r4, #1
 80023fa:	061a      	lsls	r2, r3, #24
 80023fc:	b2e4      	uxtb	r4, r4
 80023fe:	bf48      	it	mi
 8002400:	3401      	addmi	r4, #1
 8002402:	f105 35ff 	add.w	r5, r5, #4294967295
 8002406:	bf48      	it	mi
 8002408:	b2e4      	uxtbmi	r4, r4
 800240a:	f7ff ff69 	bl	80022e0 <SetLowSCL>
 800240e:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 8002412:	d1ed      	bne.n	80023f0 <i2cRead+0x10>
 8002414:	b10e      	cbz	r6, 800241a <i2cRead+0x3a>
 8002416:	f7ff ff27 	bl	8002268 <SetLowSDA>
 800241a:	f7ff ff6d 	bl	80022f8 <SetHighSCL>
 800241e:	f7ff ff5f 	bl	80022e0 <SetLowSCL>
 8002422:	f7ff ff1b 	bl	800225c <i2c_delay>
 8002426:	4620      	mov	r0, r4
 8002428:	bd70      	pop	{r4, r5, r6, pc}
 800242a:	bf00      	nop
 800242c:	48000400 	.word	0x48000400

08002430 <i2c_write_reg>:
 8002430:	b570      	push	{r4, r5, r6, lr}
 8002432:	4605      	mov	r5, r0
 8002434:	460c      	mov	r4, r1
 8002436:	4616      	mov	r6, r2
 8002438:	f7ff ff8c 	bl	8002354 <i2cStart>
 800243c:	4628      	mov	r0, r5
 800243e:	f7ff ffa7 	bl	8002390 <i2cWrite>
 8002442:	4620      	mov	r0, r4
 8002444:	f7ff ffa4 	bl	8002390 <i2cWrite>
 8002448:	4630      	mov	r0, r6
 800244a:	f7ff ffa1 	bl	8002390 <i2cWrite>
 800244e:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8002452:	f7ff bf8e 	b.w	8002372 <i2cStop>

08002456 <i2c_read_reg>:
 8002456:	b538      	push	{r3, r4, r5, lr}
 8002458:	4604      	mov	r4, r0
 800245a:	460d      	mov	r5, r1
 800245c:	f7ff ff7a 	bl	8002354 <i2cStart>
 8002460:	4620      	mov	r0, r4
 8002462:	f7ff ff95 	bl	8002390 <i2cWrite>
 8002466:	4628      	mov	r0, r5
 8002468:	f7ff ff92 	bl	8002390 <i2cWrite>
 800246c:	f7ff ff72 	bl	8002354 <i2cStart>
 8002470:	f044 0001 	orr.w	r0, r4, #1
 8002474:	f7ff ff8c 	bl	8002390 <i2cWrite>
 8002478:	2000      	movs	r0, #0
 800247a:	f7ff ffb1 	bl	80023e0 <i2cRead>
 800247e:	4604      	mov	r4, r0
 8002480:	f7ff ff77 	bl	8002372 <i2cStop>
 8002484:	4620      	mov	r0, r4
 8002486:	bd38      	pop	{r3, r4, r5, pc}

08002488 <ADC_Init>:
 8002488:	b510      	push	{r4, lr}
 800248a:	bf00      	nop
 800248c:	bf00      	nop
 800248e:	bf00      	nop
 8002490:	bf00      	nop
 8002492:	bf00      	nop
 8002494:	bf00      	nop
 8002496:	bf00      	nop
 8002498:	bf00      	nop
 800249a:	bf00      	nop
 800249c:	4b0c      	ldr	r3, [pc, #48]	; (80024d0 <ADC_Init+0x48>)
 800249e:	68c2      	ldr	r2, [r0, #12]
 80024a0:	4013      	ands	r3, r2
 80024a2:	e891 0014 	ldmia.w	r1, {r2, r4}
 80024a6:	4314      	orrs	r4, r2
 80024a8:	688a      	ldr	r2, [r1, #8]
 80024aa:	4314      	orrs	r4, r2
 80024ac:	68ca      	ldr	r2, [r1, #12]
 80024ae:	4314      	orrs	r4, r2
 80024b0:	690a      	ldr	r2, [r1, #16]
 80024b2:	4314      	orrs	r4, r2
 80024b4:	694a      	ldr	r2, [r1, #20]
 80024b6:	4314      	orrs	r4, r2
 80024b8:	698a      	ldr	r2, [r1, #24]
 80024ba:	4322      	orrs	r2, r4
 80024bc:	4313      	orrs	r3, r2
 80024be:	60c3      	str	r3, [r0, #12]
 80024c0:	6b02      	ldr	r2, [r0, #48]	; 0x30
 80024c2:	7f0b      	ldrb	r3, [r1, #28]
 80024c4:	f022 020f 	bic.w	r2, r2, #15
 80024c8:	3b01      	subs	r3, #1
 80024ca:	4313      	orrs	r3, r2
 80024cc:	6303      	str	r3, [r0, #48]	; 0x30
 80024ce:	bd10      	pop	{r4, pc}
 80024d0:	fdffc007 	.word	0xfdffc007

080024d4 <ADC_Cmd>:
 80024d4:	bf00      	nop
 80024d6:	bf00      	nop
 80024d8:	6883      	ldr	r3, [r0, #8]
 80024da:	b111      	cbz	r1, 80024e2 <ADC_Cmd+0xe>
 80024dc:	f043 0301 	orr.w	r3, r3, #1
 80024e0:	e001      	b.n	80024e6 <ADC_Cmd+0x12>
 80024e2:	f043 0302 	orr.w	r3, r3, #2
 80024e6:	6083      	str	r3, [r0, #8]
 80024e8:	4770      	bx	lr

080024ea <ADC_RegularChannelConfig>:
 80024ea:	b530      	push	{r4, r5, lr}
 80024ec:	bf00      	nop
 80024ee:	bf00      	nop
 80024f0:	bf00      	nop
 80024f2:	2a04      	cmp	r2, #4
 80024f4:	d80d      	bhi.n	8002512 <ADC_RegularChannelConfig+0x28>
 80024f6:	b212      	sxth	r2, r2
 80024f8:	0054      	lsls	r4, r2, #1
 80024fa:	00d2      	lsls	r2, r2, #3
 80024fc:	1b12      	subs	r2, r2, r4
 80024fe:	6b05      	ldr	r5, [r0, #48]	; 0x30
 8002500:	241f      	movs	r4, #31
 8002502:	4094      	lsls	r4, r2
 8002504:	ea25 0404 	bic.w	r4, r5, r4
 8002508:	fa01 f202 	lsl.w	r2, r1, r2
 800250c:	4322      	orrs	r2, r4
 800250e:	6302      	str	r2, [r0, #48]	; 0x30
 8002510:	e029      	b.n	8002566 <ADC_RegularChannelConfig+0x7c>
 8002512:	2a09      	cmp	r2, #9
 8002514:	d80c      	bhi.n	8002530 <ADC_RegularChannelConfig+0x46>
 8002516:	2406      	movs	r4, #6
 8002518:	3a05      	subs	r2, #5
 800251a:	4362      	muls	r2, r4
 800251c:	6b45      	ldr	r5, [r0, #52]	; 0x34
 800251e:	241f      	movs	r4, #31
 8002520:	4094      	lsls	r4, r2
 8002522:	ea25 0404 	bic.w	r4, r5, r4
 8002526:	fa01 f202 	lsl.w	r2, r1, r2
 800252a:	4322      	orrs	r2, r4
 800252c:	6342      	str	r2, [r0, #52]	; 0x34
 800252e:	e01a      	b.n	8002566 <ADC_RegularChannelConfig+0x7c>
 8002530:	2a0e      	cmp	r2, #14
 8002532:	f04f 0406 	mov.w	r4, #6
 8002536:	d80b      	bhi.n	8002550 <ADC_RegularChannelConfig+0x66>
 8002538:	3a0a      	subs	r2, #10
 800253a:	4354      	muls	r4, r2
 800253c:	6b85      	ldr	r5, [r0, #56]	; 0x38
 800253e:	221f      	movs	r2, #31
 8002540:	40a2      	lsls	r2, r4
 8002542:	ea25 0202 	bic.w	r2, r5, r2
 8002546:	fa01 f404 	lsl.w	r4, r1, r4
 800254a:	4314      	orrs	r4, r2
 800254c:	6384      	str	r4, [r0, #56]	; 0x38
 800254e:	e00a      	b.n	8002566 <ADC_RegularChannelConfig+0x7c>
 8002550:	3a0f      	subs	r2, #15
 8002552:	4362      	muls	r2, r4
 8002554:	6bc5      	ldr	r5, [r0, #60]	; 0x3c
 8002556:	241f      	movs	r4, #31
 8002558:	4094      	lsls	r4, r2
 800255a:	ea25 0404 	bic.w	r4, r5, r4
 800255e:	fa01 f202 	lsl.w	r2, r1, r2
 8002562:	4322      	orrs	r2, r4
 8002564:	63c2      	str	r2, [r0, #60]	; 0x3c
 8002566:	2909      	cmp	r1, #9
 8002568:	f04f 0203 	mov.w	r2, #3
 800256c:	d90e      	bls.n	800258c <ADC_RegularChannelConfig+0xa2>
 800256e:	390a      	subs	r1, #10
 8002570:	6984      	ldr	r4, [r0, #24]
 8002572:	6984      	ldr	r4, [r0, #24]
 8002574:	434a      	muls	r2, r1
 8002576:	2107      	movs	r1, #7
 8002578:	4091      	lsls	r1, r2
 800257a:	ea24 0101 	bic.w	r1, r4, r1
 800257e:	6181      	str	r1, [r0, #24]
 8002580:	6984      	ldr	r4, [r0, #24]
 8002582:	fa03 f202 	lsl.w	r2, r3, r2
 8002586:	4322      	orrs	r2, r4
 8002588:	6182      	str	r2, [r0, #24]
 800258a:	bd30      	pop	{r4, r5, pc}
 800258c:	3901      	subs	r1, #1
 800258e:	6944      	ldr	r4, [r0, #20]
 8002590:	6944      	ldr	r4, [r0, #20]
 8002592:	4351      	muls	r1, r2
 8002594:	2238      	movs	r2, #56	; 0x38
 8002596:	408a      	lsls	r2, r1
 8002598:	ea24 0202 	bic.w	r2, r4, r2
 800259c:	6142      	str	r2, [r0, #20]
 800259e:	6942      	ldr	r2, [r0, #20]
 80025a0:	3103      	adds	r1, #3
 80025a2:	408b      	lsls	r3, r1
 80025a4:	4313      	orrs	r3, r2
 80025a6:	6143      	str	r3, [r0, #20]
 80025a8:	bd30      	pop	{r4, r5, pc}
	...

080025ac <SystemInit>:
 80025ac:	4b3b      	ldr	r3, [pc, #236]	; (800269c <SystemInit+0xf0>)
 80025ae:	f8d3 2088 	ldr.w	r2, [r3, #136]	; 0x88
 80025b2:	f442 0270 	orr.w	r2, r2, #15728640	; 0xf00000
 80025b6:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
 80025ba:	4b39      	ldr	r3, [pc, #228]	; (80026a0 <SystemInit+0xf4>)
 80025bc:	681a      	ldr	r2, [r3, #0]
 80025be:	f042 0201 	orr.w	r2, r2, #1
 80025c2:	601a      	str	r2, [r3, #0]
 80025c4:	6859      	ldr	r1, [r3, #4]
 80025c6:	4a37      	ldr	r2, [pc, #220]	; (80026a4 <SystemInit+0xf8>)
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
 80025f2:	4a2d      	ldr	r2, [pc, #180]	; (80026a8 <SystemInit+0xfc>)
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
 800260a:	4b25      	ldr	r3, [pc, #148]	; (80026a0 <SystemInit+0xf4>)
 800260c:	681a      	ldr	r2, [r3, #0]
 800260e:	f402 3200 	and.w	r2, r2, #131072	; 0x20000
 8002612:	9201      	str	r2, [sp, #4]
 8002614:	9a00      	ldr	r2, [sp, #0]
 8002616:	3201      	adds	r2, #1
 8002618:	9200      	str	r2, [sp, #0]
 800261a:	9a01      	ldr	r2, [sp, #4]
 800261c:	b91a      	cbnz	r2, 8002626 <SystemInit+0x7a>
 800261e:	9a00      	ldr	r2, [sp, #0]
 8002620:	f5b2 4fa0 	cmp.w	r2, #20480	; 0x5000
 8002624:	d1f1      	bne.n	800260a <SystemInit+0x5e>
 8002626:	681b      	ldr	r3, [r3, #0]
 8002628:	f413 3300 	ands.w	r3, r3, #131072	; 0x20000
 800262c:	bf18      	it	ne
 800262e:	2301      	movne	r3, #1
 8002630:	9301      	str	r3, [sp, #4]
 8002632:	9b01      	ldr	r3, [sp, #4]
 8002634:	2b01      	cmp	r3, #1
 8002636:	d005      	beq.n	8002644 <SystemInit+0x98>
 8002638:	4b18      	ldr	r3, [pc, #96]	; (800269c <SystemInit+0xf0>)
 800263a:	f04f 6200 	mov.w	r2, #134217728	; 0x8000000
 800263e:	609a      	str	r2, [r3, #8]
 8002640:	b002      	add	sp, #8
 8002642:	4770      	bx	lr
 8002644:	4b19      	ldr	r3, [pc, #100]	; (80026ac <SystemInit+0x100>)
 8002646:	2212      	movs	r2, #18
 8002648:	601a      	str	r2, [r3, #0]
 800264a:	f5a3 5380 	sub.w	r3, r3, #4096	; 0x1000
 800264e:	685a      	ldr	r2, [r3, #4]
 8002650:	605a      	str	r2, [r3, #4]
 8002652:	685a      	ldr	r2, [r3, #4]
 8002654:	605a      	str	r2, [r3, #4]
 8002656:	685a      	ldr	r2, [r3, #4]
 8002658:	f442 6280 	orr.w	r2, r2, #1024	; 0x400
 800265c:	605a      	str	r2, [r3, #4]
 800265e:	685a      	ldr	r2, [r3, #4]
 8002660:	f422 127c 	bic.w	r2, r2, #4128768	; 0x3f0000
 8002664:	605a      	str	r2, [r3, #4]
 8002666:	685a      	ldr	r2, [r3, #4]
 8002668:	f442 12e8 	orr.w	r2, r2, #1900544	; 0x1d0000
 800266c:	605a      	str	r2, [r3, #4]
 800266e:	681a      	ldr	r2, [r3, #0]
 8002670:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
 8002674:	601a      	str	r2, [r3, #0]
 8002676:	6819      	ldr	r1, [r3, #0]
 8002678:	4a09      	ldr	r2, [pc, #36]	; (80026a0 <SystemInit+0xf4>)
 800267a:	0189      	lsls	r1, r1, #6
 800267c:	d5fb      	bpl.n	8002676 <SystemInit+0xca>
 800267e:	6853      	ldr	r3, [r2, #4]
 8002680:	f023 0303 	bic.w	r3, r3, #3
 8002684:	6053      	str	r3, [r2, #4]
 8002686:	6853      	ldr	r3, [r2, #4]
 8002688:	f043 0302 	orr.w	r3, r3, #2
 800268c:	6053      	str	r3, [r2, #4]
 800268e:	4b04      	ldr	r3, [pc, #16]	; (80026a0 <SystemInit+0xf4>)
 8002690:	685b      	ldr	r3, [r3, #4]
 8002692:	f003 030c 	and.w	r3, r3, #12
 8002696:	2b08      	cmp	r3, #8
 8002698:	d1f9      	bne.n	800268e <SystemInit+0xe2>
 800269a:	e7cd      	b.n	8002638 <SystemInit+0x8c>
 800269c:	e000ed00 	.word	0xe000ed00
 80026a0:	40021000 	.word	0x40021000
 80026a4:	f87fc00c 	.word	0xf87fc00c
 80026a8:	ff00fccc 	.word	0xff00fccc
 80026ac:	40022000 	.word	0x40022000

080026b0 <sys_tick_init>:
 80026b0:	4b05      	ldr	r3, [pc, #20]	; (80026c8 <sys_tick_init+0x18>)
 80026b2:	4a06      	ldr	r2, [pc, #24]	; (80026cc <sys_tick_init+0x1c>)
 80026b4:	605a      	str	r2, [r3, #4]
 80026b6:	4a06      	ldr	r2, [pc, #24]	; (80026d0 <sys_tick_init+0x20>)
 80026b8:	21f0      	movs	r1, #240	; 0xf0
 80026ba:	f882 1023 	strb.w	r1, [r2, #35]	; 0x23
 80026be:	2200      	movs	r2, #0
 80026c0:	609a      	str	r2, [r3, #8]
 80026c2:	2207      	movs	r2, #7
 80026c4:	601a      	str	r2, [r3, #0]
 80026c6:	4770      	bx	lr
 80026c8:	e000e010 	.word	0xe000e010
 80026cc:	00029040 	.word	0x00029040
 80026d0:	e000ed00 	.word	0xe000ed00

080026d4 <sleep>:
 80026d4:	bf30      	wfi
 80026d6:	4770      	bx	lr

080026d8 <sytem_clock_init>:
 80026d8:	f7ff bf68 	b.w	80025ac <SystemInit>

080026dc <pwm_set>:
 80026dc:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80026e0:	b086      	sub	sp, #24
 80026e2:	2370      	movs	r3, #112	; 0x70
 80026e4:	9301      	str	r3, [sp, #4]
 80026e6:	2301      	movs	r3, #1
 80026e8:	f8ad 3008 	strh.w	r3, [sp, #8]
 80026ec:	2304      	movs	r3, #4
 80026ee:	f8ad 300a 	strh.w	r3, [sp, #10]
 80026f2:	4f17      	ldr	r7, [pc, #92]	; (8002750 <pwm_set+0x74>)
 80026f4:	4c17      	ldr	r4, [pc, #92]	; (8002754 <pwm_set+0x78>)
 80026f6:	2302      	movs	r3, #2
 80026f8:	f8ad 3010 	strh.w	r3, [sp, #16]
 80026fc:	2300      	movs	r3, #0
 80026fe:	f8ad 3012 	strh.w	r3, [sp, #18]
 8002702:	f8ad 3016 	strh.w	r3, [sp, #22]
 8002706:	683b      	ldr	r3, [r7, #0]
 8002708:	f242 7610 	movw	r6, #10000	; 0x2710
 800270c:	fbb3 f3f6 	udiv	r3, r3, r6
 8002710:	3b02      	subs	r3, #2
 8002712:	4358      	muls	r0, r3
 8002714:	2564      	movs	r5, #100	; 0x64
 8002716:	fbb0 f3f5 	udiv	r3, r0, r5
 800271a:	f44f 7280 	mov.w	r2, #256	; 0x100
 800271e:	4620      	mov	r0, r4
 8002720:	4688      	mov	r8, r1
 8002722:	a901      	add	r1, sp, #4
 8002724:	f8ad 2014 	strh.w	r2, [sp, #20]
 8002728:	9303      	str	r3, [sp, #12]
 800272a:	f7ff fb03 	bl	8001d34 <TIM_OC1Init>
 800272e:	683b      	ldr	r3, [r7, #0]
 8002730:	fbb3 f6f6 	udiv	r6, r3, r6
 8002734:	3e02      	subs	r6, #2
 8002736:	fb06 f808 	mul.w	r8, r6, r8
 800273a:	fbb8 f5f5 	udiv	r5, r8, r5
 800273e:	4620      	mov	r0, r4
 8002740:	a901      	add	r1, sp, #4
 8002742:	9503      	str	r5, [sp, #12]
 8002744:	f7ff fb3c 	bl	8001dc0 <TIM_OC2Init>
 8002748:	b006      	add	sp, #24
 800274a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800274e:	bf00      	nop
 8002750:	20000150 	.word	0x20000150
 8002754:	40012c00 	.word	0x40012c00

08002758 <pwm_init>:
 8002758:	b530      	push	{r4, r5, lr}
 800275a:	f44f 6000 	mov.w	r0, #2048	; 0x800
 800275e:	b087      	sub	sp, #28
 8002760:	2101      	movs	r1, #1
 8002762:	f7ff fa6d 	bl	8001c40 <RCC_APB2PeriphClockCmd>
 8002766:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 800276a:	2101      	movs	r1, #1
 800276c:	f7ff fa5a 	bl	8001c24 <RCC_AHBPeriphClockCmd>
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
 800278a:	f000 f8ea 	bl	8002962 <GPIO_Init>
 800278e:	4620      	mov	r0, r4
 8002790:	210d      	movs	r1, #13
 8002792:	2206      	movs	r2, #6
 8002794:	f000 f933 	bl	80029fe <GPIO_PinAFConfig>
 8002798:	4620      	mov	r0, r4
 800279a:	210e      	movs	r1, #14
 800279c:	2206      	movs	r2, #6
 800279e:	f000 f92e 	bl	80029fe <GPIO_PinAFConfig>
 80027a2:	4b13      	ldr	r3, [pc, #76]	; (80027f0 <pwm_init+0x98>)
 80027a4:	681a      	ldr	r2, [r3, #0]
 80027a6:	f242 7310 	movw	r3, #10000	; 0x2710
 80027aa:	fbb2 f3f3 	udiv	r3, r2, r3
 80027ae:	2400      	movs	r4, #0
 80027b0:	3b01      	subs	r3, #1
 80027b2:	4628      	mov	r0, r5
 80027b4:	a903      	add	r1, sp, #12
 80027b6:	9304      	str	r3, [sp, #16]
 80027b8:	f8ad 400c 	strh.w	r4, [sp, #12]
 80027bc:	f8ad 400e 	strh.w	r4, [sp, #14]
 80027c0:	f8ad 4014 	strh.w	r4, [sp, #20]
 80027c4:	f8ad 4016 	strh.w	r4, [sp, #22]
 80027c8:	f7ff fa56 	bl	8001c78 <TIM_TimeBaseInit>
 80027cc:	4620      	mov	r0, r4
 80027ce:	4621      	mov	r1, r4
 80027d0:	f7ff ff84 	bl	80026dc <pwm_set>
 80027d4:	4628      	mov	r0, r5
 80027d6:	2101      	movs	r1, #1
 80027d8:	f7ff fa9e 	bl	8001d18 <TIM_Cmd>
 80027dc:	4628      	mov	r0, r5
 80027de:	2101      	movs	r1, #1
 80027e0:	f7ff fb2c 	bl	8001e3c <TIM_CtrlPWMOutputs>
 80027e4:	b007      	add	sp, #28
 80027e6:	bd30      	pop	{r4, r5, pc}
 80027e8:	48000400 	.word	0x48000400
 80027ec:	40012c00 	.word	0x40012c00
 80027f0:	20000150 	.word	0x20000150

080027f4 <drv8834_run>:
 80027f4:	1e02      	subs	r2, r0, #0
 80027f6:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 80027fa:	dd07      	ble.n	800280c <drv8834_run+0x18>
 80027fc:	8d18      	ldrh	r0, [r3, #40]	; 0x28
 80027fe:	ea6f 4040 	mvn.w	r0, r0, lsl #17
 8002802:	ea6f 4050 	mvn.w	r0, r0, lsr #17
 8002806:	b280      	uxth	r0, r0
 8002808:	8518      	strh	r0, [r3, #40]	; 0x28
 800280a:	e005      	b.n	8002818 <drv8834_run+0x24>
 800280c:	6998      	ldr	r0, [r3, #24]
 800280e:	4252      	negs	r2, r2
 8002810:	f440 4000 	orr.w	r0, r0, #32768	; 0x8000
 8002814:	6198      	str	r0, [r3, #24]
 8002816:	b212      	sxth	r2, r2
 8002818:	2900      	cmp	r1, #0
 800281a:	4b0c      	ldr	r3, [pc, #48]	; (800284c <drv8834_run+0x58>)
 800281c:	dd05      	ble.n	800282a <drv8834_run+0x36>
 800281e:	8d18      	ldrh	r0, [r3, #40]	; 0x28
 8002820:	b280      	uxth	r0, r0
 8002822:	f040 0020 	orr.w	r0, r0, #32
 8002826:	8518      	strh	r0, [r3, #40]	; 0x28
 8002828:	e005      	b.n	8002836 <drv8834_run+0x42>
 800282a:	6998      	ldr	r0, [r3, #24]
 800282c:	4249      	negs	r1, r1
 800282e:	f040 0020 	orr.w	r0, r0, #32
 8002832:	6198      	str	r0, [r3, #24]
 8002834:	b209      	sxth	r1, r1
 8002836:	2964      	cmp	r1, #100	; 0x64
 8002838:	bfb4      	ite	lt
 800283a:	4608      	movlt	r0, r1
 800283c:	2064      	movge	r0, #100	; 0x64
 800283e:	2a64      	cmp	r2, #100	; 0x64
 8002840:	bfb4      	ite	lt
 8002842:	4611      	movlt	r1, r2
 8002844:	2164      	movge	r1, #100	; 0x64
 8002846:	f7ff bf49 	b.w	80026dc <pwm_set>
 800284a:	bf00      	nop
 800284c:	48000400 	.word	0x48000400

08002850 <drv8834_init>:
 8002850:	e92d 41f3 	stmdb	sp!, {r0, r1, r4, r5, r6, r7, r8, lr}
 8002854:	4f1d      	ldr	r7, [pc, #116]	; (80028cc <drv8834_init+0x7c>)
 8002856:	2400      	movs	r4, #0
 8002858:	2601      	movs	r6, #1
 800285a:	2503      	movs	r5, #3
 800285c:	f04f 0810 	mov.w	r8, #16
 8002860:	4638      	mov	r0, r7
 8002862:	4669      	mov	r1, sp
 8002864:	f8cd 8000 	str.w	r8, [sp]
 8002868:	f88d 6004 	strb.w	r6, [sp, #4]
 800286c:	f88d 4006 	strb.w	r4, [sp, #6]
 8002870:	f88d 5005 	strb.w	r5, [sp, #5]
 8002874:	f88d 4007 	strb.w	r4, [sp, #7]
 8002878:	f000 f873 	bl	8002962 <GPIO_Init>
 800287c:	f8a7 8028 	strh.w	r8, [r7, #40]	; 0x28
 8002880:	2320      	movs	r3, #32
 8002882:	4638      	mov	r0, r7
 8002884:	4669      	mov	r1, sp
 8002886:	9300      	str	r3, [sp, #0]
 8002888:	f88d 6004 	strb.w	r6, [sp, #4]
 800288c:	f88d 4006 	strb.w	r4, [sp, #6]
 8002890:	f88d 5005 	strb.w	r5, [sp, #5]
 8002894:	f88d 4007 	strb.w	r4, [sp, #7]
 8002898:	f000 f863 	bl	8002962 <GPIO_Init>
 800289c:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 80028a0:	4669      	mov	r1, sp
 80028a2:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80028a6:	9300      	str	r3, [sp, #0]
 80028a8:	f88d 6004 	strb.w	r6, [sp, #4]
 80028ac:	f88d 4006 	strb.w	r4, [sp, #6]
 80028b0:	f88d 5005 	strb.w	r5, [sp, #5]
 80028b4:	f88d 4007 	strb.w	r4, [sp, #7]
 80028b8:	f000 f853 	bl	8002962 <GPIO_Init>
 80028bc:	4620      	mov	r0, r4
 80028be:	4621      	mov	r1, r4
 80028c0:	f7ff ff98 	bl	80027f4 <drv8834_run>
 80028c4:	b002      	add	sp, #8
 80028c6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80028ca:	bf00      	nop
 80028cc:	48000400 	.word	0x48000400

080028d0 <NVIC_Init>:
 80028d0:	b510      	push	{r4, lr}
 80028d2:	bf00      	nop
 80028d4:	bf00      	nop
 80028d6:	bf00      	nop
 80028d8:	78c2      	ldrb	r2, [r0, #3]
 80028da:	7803      	ldrb	r3, [r0, #0]
 80028dc:	b30a      	cbz	r2, 8002922 <NVIC_Init+0x52>
 80028de:	4a16      	ldr	r2, [pc, #88]	; (8002938 <NVIC_Init+0x68>)
 80028e0:	7844      	ldrb	r4, [r0, #1]
 80028e2:	68d2      	ldr	r2, [r2, #12]
 80028e4:	43d2      	mvns	r2, r2
 80028e6:	f3c2 2202 	ubfx	r2, r2, #8, #3
 80028ea:	f1c2 0104 	rsb	r1, r2, #4
 80028ee:	b2c9      	uxtb	r1, r1
 80028f0:	fa04 f101 	lsl.w	r1, r4, r1
 80028f4:	240f      	movs	r4, #15
 80028f6:	fa44 f202 	asr.w	r2, r4, r2
 80028fa:	7884      	ldrb	r4, [r0, #2]
 80028fc:	b2c9      	uxtb	r1, r1
 80028fe:	4022      	ands	r2, r4
 8002900:	430a      	orrs	r2, r1
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
 8002920:	e006      	b.n	8002930 <NVIC_Init+0x60>
 8002922:	0959      	lsrs	r1, r3, #5
 8002924:	2201      	movs	r2, #1
 8002926:	f003 031f 	and.w	r3, r3, #31
 800292a:	fa02 f303 	lsl.w	r3, r2, r3
 800292e:	3120      	adds	r1, #32
 8002930:	4a02      	ldr	r2, [pc, #8]	; (800293c <NVIC_Init+0x6c>)
 8002932:	f842 3021 	str.w	r3, [r2, r1, lsl #2]
 8002936:	bd10      	pop	{r4, pc}
 8002938:	e000ed00 	.word	0xe000ed00
 800293c:	e000e100 	.word	0xe000e100

08002940 <lib_low_level_init>:
 8002940:	b508      	push	{r3, lr}
 8002942:	f7ff fec9 	bl	80026d8 <sytem_clock_init>
 8002946:	f000 f871 	bl	8002a2c <gpio_init>
 800294a:	f7ff fc01 	bl	8002150 <uart_init>
 800294e:	f7ff fa85 	bl	8001e5c <timer_init>
 8002952:	f7ff ff01 	bl	8002758 <pwm_init>
 8002956:	f7ff ff7b 	bl	8002850 <drv8834_init>
 800295a:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800295e:	f7ff bcd7 	b.w	8002310 <i2c_0_init>

08002962 <GPIO_Init>:
 8002962:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002964:	bf00      	nop
 8002966:	bf00      	nop
 8002968:	bf00      	nop
 800296a:	bf00      	nop
 800296c:	2300      	movs	r3, #0
 800296e:	680e      	ldr	r6, [r1, #0]
 8002970:	461a      	mov	r2, r3
 8002972:	2501      	movs	r5, #1
 8002974:	4095      	lsls	r5, r2
 8002976:	ea05 0406 	and.w	r4, r5, r6
 800297a:	42ac      	cmp	r4, r5
 800297c:	d131      	bne.n	80029e2 <GPIO_Init+0x80>
 800297e:	790d      	ldrb	r5, [r1, #4]
 8002980:	1e6f      	subs	r7, r5, #1
 8002982:	b2ff      	uxtb	r7, r7
 8002984:	2f01      	cmp	r7, #1
 8002986:	d81c      	bhi.n	80029c2 <GPIO_Init+0x60>
 8002988:	bf00      	nop
 800298a:	f04f 0c03 	mov.w	ip, #3
 800298e:	6887      	ldr	r7, [r0, #8]
 8002990:	fa0c fc03 	lsl.w	ip, ip, r3
 8002994:	ea27 070c 	bic.w	r7, r7, ip
 8002998:	6087      	str	r7, [r0, #8]
 800299a:	f891 c005 	ldrb.w	ip, [r1, #5]
 800299e:	6887      	ldr	r7, [r0, #8]
 80029a0:	fa0c fc03 	lsl.w	ip, ip, r3
 80029a4:	ea4c 0707 	orr.w	r7, ip, r7
 80029a8:	6087      	str	r7, [r0, #8]
 80029aa:	bf00      	nop
 80029ac:	8887      	ldrh	r7, [r0, #4]
 80029ae:	b2bf      	uxth	r7, r7
 80029b0:	ea27 0404 	bic.w	r4, r7, r4
 80029b4:	8084      	strh	r4, [r0, #4]
 80029b6:	798c      	ldrb	r4, [r1, #6]
 80029b8:	8887      	ldrh	r7, [r0, #4]
 80029ba:	4094      	lsls	r4, r2
 80029bc:	433c      	orrs	r4, r7
 80029be:	b2a4      	uxth	r4, r4
 80029c0:	8084      	strh	r4, [r0, #4]
 80029c2:	2403      	movs	r4, #3
 80029c4:	6807      	ldr	r7, [r0, #0]
 80029c6:	409c      	lsls	r4, r3
 80029c8:	43e4      	mvns	r4, r4
 80029ca:	4027      	ands	r7, r4
 80029cc:	6007      	str	r7, [r0, #0]
 80029ce:	6807      	ldr	r7, [r0, #0]
 80029d0:	409d      	lsls	r5, r3
 80029d2:	433d      	orrs	r5, r7
 80029d4:	6005      	str	r5, [r0, #0]
 80029d6:	68c5      	ldr	r5, [r0, #12]
 80029d8:	402c      	ands	r4, r5
 80029da:	79cd      	ldrb	r5, [r1, #7]
 80029dc:	409d      	lsls	r5, r3
 80029de:	432c      	orrs	r4, r5
 80029e0:	60c4      	str	r4, [r0, #12]
 80029e2:	3201      	adds	r2, #1
 80029e4:	2a10      	cmp	r2, #16
 80029e6:	f103 0302 	add.w	r3, r3, #2
 80029ea:	d1c2      	bne.n	8002972 <GPIO_Init+0x10>
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
 8002a20:	fa02 f303 	lsl.w	r3, r2, r3
 8002a24:	430b      	orrs	r3, r1
 8002a26:	6203      	str	r3, [r0, #32]
 8002a28:	bd10      	pop	{r4, pc}
	...

08002a2c <gpio_init>:
 8002a2c:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
 8002a30:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 8002a34:	2101      	movs	r1, #1
 8002a36:	f7ff f8f5 	bl	8001c24 <RCC_AHBPeriphClockCmd>
 8002a3a:	4d21      	ldr	r5, [pc, #132]	; (8002ac0 <gpio_init+0x94>)
 8002a3c:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 8002a40:	2101      	movs	r1, #1
 8002a42:	f7ff f8ef 	bl	8001c24 <RCC_AHBPeriphClockCmd>
 8002a46:	f44f 2000 	mov.w	r0, #524288	; 0x80000
 8002a4a:	2101      	movs	r1, #1
 8002a4c:	f7ff f8ea 	bl	8001c24 <RCC_AHBPeriphClockCmd>
 8002a50:	2400      	movs	r4, #0
 8002a52:	2603      	movs	r6, #3
 8002a54:	f44f 4900 	mov.w	r9, #32768	; 0x8000
 8002a58:	2701      	movs	r7, #1
 8002a5a:	4628      	mov	r0, r5
 8002a5c:	4669      	mov	r1, sp
 8002a5e:	f88d 7004 	strb.w	r7, [sp, #4]
 8002a62:	f8cd 9000 	str.w	r9, [sp]
 8002a66:	f88d 4006 	strb.w	r4, [sp, #6]
 8002a6a:	f88d 6005 	strb.w	r6, [sp, #5]
 8002a6e:	f88d 4007 	strb.w	r4, [sp, #7]
 8002a72:	f7ff ff76 	bl	8002962 <GPIO_Init>
 8002a76:	f88d 7004 	strb.w	r7, [sp, #4]
 8002a7a:	4f12      	ldr	r7, [pc, #72]	; (8002ac4 <gpio_init+0x98>)
 8002a7c:	f88d 4006 	strb.w	r4, [sp, #6]
 8002a80:	f44f 5800 	mov.w	r8, #8192	; 0x2000
 8002a84:	4638      	mov	r0, r7
 8002a86:	4669      	mov	r1, sp
 8002a88:	f8cd 8000 	str.w	r8, [sp]
 8002a8c:	f88d 6005 	strb.w	r6, [sp, #5]
 8002a90:	f88d 4007 	strb.w	r4, [sp, #7]
 8002a94:	f7ff ff65 	bl	8002962 <GPIO_Init>
 8002a98:	f44f 7300 	mov.w	r3, #512	; 0x200
 8002a9c:	4628      	mov	r0, r5
 8002a9e:	4669      	mov	r1, sp
 8002aa0:	9300      	str	r3, [sp, #0]
 8002aa2:	f88d 4004 	strb.w	r4, [sp, #4]
 8002aa6:	f88d 6005 	strb.w	r6, [sp, #5]
 8002aaa:	f88d 4007 	strb.w	r4, [sp, #7]
 8002aae:	f7ff ff58 	bl	8002962 <GPIO_Init>
 8002ab2:	f8c5 9018 	str.w	r9, [r5, #24]
 8002ab6:	f8c7 8018 	str.w	r8, [r7, #24]
 8002aba:	b003      	add	sp, #12
 8002abc:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8002ac0:	48000400 	.word	0x48000400
 8002ac4:	48000800 	.word	0x48000800

08002ac8 <led_on>:
 8002ac8:	0402      	lsls	r2, r0, #16
 8002aca:	d503      	bpl.n	8002ad4 <led_on+0xc>
 8002acc:	4b05      	ldr	r3, [pc, #20]	; (8002ae4 <led_on+0x1c>)
 8002ace:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 8002ad2:	619a      	str	r2, [r3, #24]
 8002ad4:	0483      	lsls	r3, r0, #18
 8002ad6:	d503      	bpl.n	8002ae0 <led_on+0x18>
 8002ad8:	4b03      	ldr	r3, [pc, #12]	; (8002ae8 <led_on+0x20>)
 8002ada:	f44f 5200 	mov.w	r2, #8192	; 0x2000
 8002ade:	851a      	strh	r2, [r3, #40]	; 0x28
 8002ae0:	4770      	bx	lr
 8002ae2:	bf00      	nop
 8002ae4:	48000400 	.word	0x48000400
 8002ae8:	48000800 	.word	0x48000800

08002aec <led_off>:
 8002aec:	0403      	lsls	r3, r0, #16
 8002aee:	d503      	bpl.n	8002af8 <led_off+0xc>
 8002af0:	4b05      	ldr	r3, [pc, #20]	; (8002b08 <led_off+0x1c>)
 8002af2:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 8002af6:	851a      	strh	r2, [r3, #40]	; 0x28
 8002af8:	0481      	lsls	r1, r0, #18
 8002afa:	d503      	bpl.n	8002b04 <led_off+0x18>
 8002afc:	4b03      	ldr	r3, [pc, #12]	; (8002b0c <led_off+0x20>)
 8002afe:	f44f 5200 	mov.w	r2, #8192	; 0x2000
 8002b02:	619a      	str	r2, [r3, #24]
 8002b04:	4770      	bx	lr
 8002b06:	bf00      	nop
 8002b08:	48000400 	.word	0x48000400
 8002b0c:	48000800 	.word	0x48000800

08002b10 <get_key>:
 8002b10:	4b02      	ldr	r3, [pc, #8]	; (8002b1c <get_key+0xc>)
 8002b12:	8a18      	ldrh	r0, [r3, #16]
 8002b14:	43c0      	mvns	r0, r0
 8002b16:	f400 7000 	and.w	r0, r0, #512	; 0x200
 8002b1a:	4770      	bx	lr
 8002b1c:	48000400 	.word	0x48000400

08002b20 <Default_Handler>:
 8002b20:	4668      	mov	r0, sp
 8002b22:	f020 0107 	bic.w	r1, r0, #7
 8002b26:	468d      	mov	sp, r1
 8002b28:	bf00      	nop
 8002b2a:	e7fd      	b.n	8002b28 <Default_Handler+0x8>

08002b2c <HardFault_Handler>:
 8002b2c:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8002b30:	f7ff ffca 	bl	8002ac8 <led_on>
 8002b34:	4b06      	ldr	r3, [pc, #24]	; (8002b50 <HardFault_Handler+0x24>)
 8002b36:	3b01      	subs	r3, #1
 8002b38:	d001      	beq.n	8002b3e <HardFault_Handler+0x12>
 8002b3a:	bf00      	nop
 8002b3c:	e7fb      	b.n	8002b36 <HardFault_Handler+0xa>
 8002b3e:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8002b42:	f7ff ffd3 	bl	8002aec <led_off>
 8002b46:	4b02      	ldr	r3, [pc, #8]	; (8002b50 <HardFault_Handler+0x24>)
 8002b48:	3b01      	subs	r3, #1
 8002b4a:	d0ef      	beq.n	8002b2c <HardFault_Handler>
 8002b4c:	bf00      	nop
 8002b4e:	e7fb      	b.n	8002b48 <HardFault_Handler+0x1c>
 8002b50:	00989681 	.word	0x00989681

08002b54 <_reset_init>:
 8002b54:	4a0e      	ldr	r2, [pc, #56]	; (8002b90 <_reset_init+0x3c>)
 8002b56:	480f      	ldr	r0, [pc, #60]	; (8002b94 <_reset_init+0x40>)
 8002b58:	1a80      	subs	r0, r0, r2
 8002b5a:	1080      	asrs	r0, r0, #2
 8002b5c:	2300      	movs	r3, #0
 8002b5e:	4283      	cmp	r3, r0
 8002b60:	d006      	beq.n	8002b70 <_reset_init+0x1c>
 8002b62:	490d      	ldr	r1, [pc, #52]	; (8002b98 <_reset_init+0x44>)
 8002b64:	f851 1023 	ldr.w	r1, [r1, r3, lsl #2]
 8002b68:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
 8002b6c:	3301      	adds	r3, #1
 8002b6e:	e7f6      	b.n	8002b5e <_reset_init+0xa>
 8002b70:	4b0a      	ldr	r3, [pc, #40]	; (8002b9c <_reset_init+0x48>)
 8002b72:	f8d3 2088 	ldr.w	r2, [r3, #136]	; 0x88
 8002b76:	f442 0270 	orr.w	r2, r2, #15728640	; 0xf00000
 8002b7a:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
 8002b7e:	f503 730c 	add.w	r3, r3, #560	; 0x230
 8002b82:	685a      	ldr	r2, [r3, #4]
 8002b84:	f022 4240 	bic.w	r2, r2, #3221225472	; 0xc0000000
 8002b88:	605a      	str	r2, [r3, #4]
 8002b8a:	f7fe be9b 	b.w	80018c4 <main>
 8002b8e:	bf00      	nop
 8002b90:	20000000 	.word	0x20000000
 8002b94:	20000154 	.word	0x20000154
 8002b98:	08002c44 	.word	0x08002c44
 8002b9c:	e000ed00 	.word	0xe000ed00

08002ba0 <_init>:
 8002ba0:	e1a0c00d 	mov	ip, sp
 8002ba4:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
 8002ba8:	e24cb004 	sub	fp, ip, #4
 8002bac:	e24bd028 	sub	sp, fp, #40	; 0x28
 8002bb0:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
 8002bb4:	e12fff1e 	bx	lr

08002bb8 <_fini>:
 8002bb8:	e1a0c00d 	mov	ip, sp
 8002bbc:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
 8002bc0:	e24cb004 	sub	fp, ip, #4
 8002bc4:	e24bd028 	sub	sp, fp, #40	; 0x28
 8002bc8:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
 8002bcc:	e12fff1e 	bx	lr
 8002bd0:	69647473 	.word	0x69647473
 8002bd4:	6e69206f 	.word	0x6e69206f
 8002bd8:	64207469 	.word	0x64207469
 8002bdc:	0a656e6f 	.word	0x0a656e6f
 8002be0:	00          	.byte	0x00
 8002be1:	65          	.byte	0x65
 8002be2:	7272      	.short	0x7272
 8002be4:	6320726f 	.word	0x6320726f
 8002be8:	2065646f 	.word	0x2065646f
 8002bec:	253a7525 	.word	0x253a7525
 8002bf0:	0a75      	.short	0x0a75
 8002bf2:	00          	.byte	0x00
 8002bf3:	0a          	.byte	0x0a
 8002bf4:	636c6577 	.word	0x636c6577
 8002bf8:	20656d6f 	.word	0x20656d6f
 8002bfc:	53206f74 	.word	0x53206f74
 8002c00:	68757a75 	.word	0x68757a75
 8002c04:	20534f61 	.word	0x20534f61
 8002c08:	205e5f5e 	.word	0x205e5f5e
 8002c0c:	2e302e32 	.word	0x2e302e32
 8002c10:	55420a36 	.word	0x55420a36
 8002c14:	20444c49 	.word	0x20444c49
 8002c18:	2072614d 	.word	0x2072614d
 8002c1c:	32203932 	.word	0x32203932
 8002c20:	20363130 	.word	0x20363130
 8002c24:	313a3032 	.word	0x313a3032
 8002c28:	30323a38 	.word	0x30323a38
 8002c2c:	7973000a 	.word	0x7973000a
 8002c30:	6d657473 	.word	0x6d657473
 8002c34:	6f626120 	.word	0x6f626120
 8002c38:	64657472 	.word	0x64657472
 8002c3c:	0000000a 	.word	0x0000000a

08002c40 <__EH_FRAME_BEGIN__>:
 8002c40:	00000000                                ....
