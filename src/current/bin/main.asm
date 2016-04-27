
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
 80001a0:	20000240 	.word	0x20000240
 80001a4:	200001f8 	.word	0x200001f8

080001a8 <null_thread>:
 80001a8:	b508      	push	{r3, lr}
 80001aa:	f002 fabb 	bl	8002724 <sleep>
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
 800020c:	200001f8 	.word	0x200001f8
 8000210:	20000240 	.word	0x20000240

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
 8000254:	20000240 	.word	0x20000240
 8000258:	200001f8 	.word	0x200001f8

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
 800027c:	20000240 	.word	0x20000240

08000280 <kernel_start>:
 8000280:	b508      	push	{r3, lr}
 8000282:	f002 fa3d 	bl	8002700 <sys_tick_init>
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
 80002f8:	200001f8 	.word	0x200001f8
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
 8000334:	200001f8 	.word	0x200001f8
 8000338:	20000240 	.word	0x20000240
 800033c:	080001a9 	.word	0x080001a9
 8000340:	20000244 	.word	0x20000244

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
 8000384:	200001f8 	.word	0x200001f8

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
 80003a8:	200001f8 	.word	0x200001f8

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
 80003d8:	200002c4 	.word	0x200002c4
 80003dc:	200002dc 	.word	0x200002dc

080003e0 <putc_>:
 80003e0:	b538      	push	{r3, r4, r5, lr}
 80003e2:	4c06      	ldr	r4, [pc, #24]	; (80003fc <putc_+0x1c>)
 80003e4:	4605      	mov	r5, r0
 80003e6:	4620      	mov	r0, r4
 80003e8:	f000 f901 	bl	80005ee <mutex_lock>
 80003ec:	4628      	mov	r0, r5
 80003ee:	f001 ff5f 	bl	80022b0 <uart_write>
 80003f2:	4620      	mov	r0, r4
 80003f4:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 80003f8:	f000 b915 	b.w	8000626 <mutex_unlock>
 80003fc:	2000031c 	.word	0x2000031c

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
 8000424:	20000328 	.word	0x20000328

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
 8000574:	20000324 	.word	0x20000324

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
 80005b4:	2000031c 	.word	0x2000031c
 80005b8:	20000320 	.word	0x20000320
 80005bc:	20000328 	.word	0x20000328
 80005c0:	20000324 	.word	0x20000324
 80005c4:	08002c60 	.word	0x08002c60

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

08000650 <m_sgn>:
 8000650:	ee07 0a90 	vmov	s15, r0
 8000654:	eef5 7ac0 	vcmpe.f32	s15, #0.0
 8000658:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800065c:	d403      	bmi.n	8000666 <m_sgn+0x16>
 800065e:	dd04      	ble.n	800066a <m_sgn+0x1a>
 8000660:	f04f 507e 	mov.w	r0, #1065353216	; 0x3f800000
 8000664:	4770      	bx	lr
 8000666:	4802      	ldr	r0, [pc, #8]	; (8000670 <m_sgn+0x20>)
 8000668:	4770      	bx	lr
 800066a:	2000      	movs	r0, #0
 800066c:	4770      	bx	lr
 800066e:	bf00      	nop
 8000670:	bf800000 	.word	0xbf800000

08000674 <m_saturate>:
 8000674:	ee07 0a90 	vmov	s15, r0
 8000678:	ee06 1a90 	vmov	s13, r1
 800067c:	eef4 7a66 	vcmp.f32	s15, s13
 8000680:	ee07 2a10 	vmov	s14, r2
 8000684:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000688:	bf48      	it	mi
 800068a:	eef0 7a66 	vmovmi.f32	s15, s13
 800068e:	eef4 7a47 	vcmp.f32	s15, s14
 8000692:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000696:	bfcc      	ite	gt
 8000698:	ee17 0a10 	vmovgt	r0, s14
 800069c:	ee17 0a90 	vmovle	r0, s15
 80006a0:	4770      	bx	lr

080006a2 <m_min>:
 80006a2:	ee07 0a10 	vmov	s14, r0
 80006a6:	ee07 1a90 	vmov	s15, r1
 80006aa:	eeb4 7ae7 	vcmpe.f32	s14, s15
 80006ae:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80006b2:	bf54      	ite	pl
 80006b4:	ee17 0a90 	vmovpl	r0, s15
 80006b8:	ee17 0a10 	vmovmi	r0, s14
 80006bc:	4770      	bx	lr
	...

080006c0 <pid_init>:
 80006c0:	ee06 2a10 	vmov	s12, r2
 80006c4:	ee05 3a90 	vmov	s11, r3
 80006c8:	eddd 7a00 	vldr	s15, [sp]
 80006cc:	ee76 6a25 	vadd.f32	s13, s12, s11
 80006d0:	ed9d 7a01 	vldr	s14, [sp, #4]
 80006d4:	ee76 6aa7 	vadd.f32	s13, s13, s15
 80006d8:	ee77 5aa7 	vadd.f32	s11, s15, s15
 80006dc:	ee76 6a87 	vadd.f32	s13, s13, s14
 80006e0:	eeb1 6a46 	vneg.f32	s12, s12
 80006e4:	edc0 6a04 	vstr	s13, [r0, #16]
 80006e8:	eddf 6a0c 	vldr	s13, [pc, #48]	; 800071c <pid_init+0x5c>
 80006ec:	ee36 6a65 	vsub.f32	s12, s12, s11
 80006f0:	ee67 6a26 	vmul.f32	s13, s14, s13
 80006f4:	2200      	movs	r2, #0
 80006f6:	ee36 6a66 	vsub.f32	s12, s12, s13
 80006fa:	ee77 7aa6 	vadd.f32	s15, s15, s13
 80006fe:	eeb1 7a47 	vneg.f32	s14, s14
 8000702:	6002      	str	r2, [r0, #0]
 8000704:	6042      	str	r2, [r0, #4]
 8000706:	6082      	str	r2, [r0, #8]
 8000708:	60c2      	str	r2, [r0, #12]
 800070a:	ed80 6a05 	vstr	s12, [r0, #20]
 800070e:	edc0 7a06 	vstr	s15, [r0, #24]
 8000712:	ed80 7a07 	vstr	s14, [r0, #28]
 8000716:	6202      	str	r2, [r0, #32]
 8000718:	6241      	str	r1, [r0, #36]	; 0x24
 800071a:	4770      	bx	lr
 800071c:	40400000 	.word	0x40400000

08000720 <pid_process>:
 8000720:	edd0 7a08 	vldr	s15, [r0, #32]
 8000724:	ee05 1a90 	vmov	s11, r1
 8000728:	ed90 5a04 	vldr	s10, [r0, #16]
 800072c:	ee45 7a85 	vmla.f32	s15, s11, s10
 8000730:	ed90 6a00 	vldr	s12, [r0]
 8000734:	edd0 5a05 	vldr	s11, [r0, #20]
 8000738:	ee46 7a25 	vmla.f32	s15, s12, s11
 800073c:	edd0 6a01 	vldr	s13, [r0, #4]
 8000740:	ed80 6a01 	vstr	s12, [r0, #4]
 8000744:	ed90 6a06 	vldr	s12, [r0, #24]
 8000748:	ee46 7a86 	vmla.f32	s15, s13, s12
 800074c:	ed90 7a02 	vldr	s14, [r0, #8]
 8000750:	edc0 6a02 	vstr	s13, [r0, #8]
 8000754:	edd0 6a07 	vldr	s13, [r0, #28]
 8000758:	ee47 7a26 	vmla.f32	s15, s14, s13
 800075c:	ed80 7a03 	vstr	s14, [r0, #12]
 8000760:	ed90 7a09 	vldr	s14, [r0, #36]	; 0x24
 8000764:	eef4 7ac7 	vcmpe.f32	s15, s14
 8000768:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800076c:	edc0 7a08 	vstr	s15, [r0, #32]
 8000770:	bfc8      	it	gt
 8000772:	ed80 7a08 	vstrgt	s14, [r0, #32]
 8000776:	edd0 7a08 	vldr	s15, [r0, #32]
 800077a:	eeb1 7a47 	vneg.f32	s14, s14
 800077e:	eef4 7ac7 	vcmpe.f32	s15, s14
 8000782:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000786:	bf48      	it	mi
 8000788:	ed80 7a08 	vstrmi	s14, [r0, #32]
 800078c:	6001      	str	r1, [r0, #0]
 800078e:	6a00      	ldr	r0, [r0, #32]
 8000790:	4770      	bx	lr
	...

08000794 <lsm9ds0_read>:
 8000794:	b538      	push	{r3, r4, r5, lr}
 8000796:	2128      	movs	r1, #40	; 0x28
 8000798:	20d4      	movs	r0, #212	; 0xd4
 800079a:	f001 ff16 	bl	80025ca <i2c_read_reg>
 800079e:	2129      	movs	r1, #41	; 0x29
 80007a0:	4605      	mov	r5, r0
 80007a2:	20d4      	movs	r0, #212	; 0xd4
 80007a4:	f001 ff11 	bl	80025ca <i2c_read_reg>
 80007a8:	4c38      	ldr	r4, [pc, #224]	; (800088c <lsm9ds0_read+0xf8>)
 80007aa:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 80007ae:	81a0      	strh	r0, [r4, #12]
 80007b0:	212a      	movs	r1, #42	; 0x2a
 80007b2:	20d4      	movs	r0, #212	; 0xd4
 80007b4:	f001 ff09 	bl	80025ca <i2c_read_reg>
 80007b8:	212b      	movs	r1, #43	; 0x2b
 80007ba:	4605      	mov	r5, r0
 80007bc:	20d4      	movs	r0, #212	; 0xd4
 80007be:	f001 ff04 	bl	80025ca <i2c_read_reg>
 80007c2:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 80007c6:	81e0      	strh	r0, [r4, #14]
 80007c8:	212c      	movs	r1, #44	; 0x2c
 80007ca:	20d4      	movs	r0, #212	; 0xd4
 80007cc:	f001 fefd 	bl	80025ca <i2c_read_reg>
 80007d0:	212d      	movs	r1, #45	; 0x2d
 80007d2:	4605      	mov	r5, r0
 80007d4:	20d4      	movs	r0, #212	; 0xd4
 80007d6:	f001 fef8 	bl	80025ca <i2c_read_reg>
 80007da:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 80007de:	8220      	strh	r0, [r4, #16]
 80007e0:	2108      	movs	r1, #8
 80007e2:	203c      	movs	r0, #60	; 0x3c
 80007e4:	f001 fef1 	bl	80025ca <i2c_read_reg>
 80007e8:	2109      	movs	r1, #9
 80007ea:	4605      	mov	r5, r0
 80007ec:	203c      	movs	r0, #60	; 0x3c
 80007ee:	f001 feec 	bl	80025ca <i2c_read_reg>
 80007f2:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 80007f6:	80e0      	strh	r0, [r4, #6]
 80007f8:	210a      	movs	r1, #10
 80007fa:	203c      	movs	r0, #60	; 0x3c
 80007fc:	f001 fee5 	bl	80025ca <i2c_read_reg>
 8000800:	210b      	movs	r1, #11
 8000802:	4605      	mov	r5, r0
 8000804:	203c      	movs	r0, #60	; 0x3c
 8000806:	f001 fee0 	bl	80025ca <i2c_read_reg>
 800080a:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 800080e:	8120      	strh	r0, [r4, #8]
 8000810:	210c      	movs	r1, #12
 8000812:	203c      	movs	r0, #60	; 0x3c
 8000814:	f001 fed9 	bl	80025ca <i2c_read_reg>
 8000818:	210d      	movs	r1, #13
 800081a:	4605      	mov	r5, r0
 800081c:	203c      	movs	r0, #60	; 0x3c
 800081e:	f001 fed4 	bl	80025ca <i2c_read_reg>
 8000822:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000826:	8160      	strh	r0, [r4, #10]
 8000828:	2128      	movs	r1, #40	; 0x28
 800082a:	203c      	movs	r0, #60	; 0x3c
 800082c:	f001 fecd 	bl	80025ca <i2c_read_reg>
 8000830:	2129      	movs	r1, #41	; 0x29
 8000832:	4605      	mov	r5, r0
 8000834:	203c      	movs	r0, #60	; 0x3c
 8000836:	f001 fec8 	bl	80025ca <i2c_read_reg>
 800083a:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 800083e:	8020      	strh	r0, [r4, #0]
 8000840:	212a      	movs	r1, #42	; 0x2a
 8000842:	203c      	movs	r0, #60	; 0x3c
 8000844:	f001 fec1 	bl	80025ca <i2c_read_reg>
 8000848:	212b      	movs	r1, #43	; 0x2b
 800084a:	4605      	mov	r5, r0
 800084c:	203c      	movs	r0, #60	; 0x3c
 800084e:	f001 febc 	bl	80025ca <i2c_read_reg>
 8000852:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000856:	8060      	strh	r0, [r4, #2]
 8000858:	212c      	movs	r1, #44	; 0x2c
 800085a:	203c      	movs	r0, #60	; 0x3c
 800085c:	f001 feb5 	bl	80025ca <i2c_read_reg>
 8000860:	212d      	movs	r1, #45	; 0x2d
 8000862:	4605      	mov	r5, r0
 8000864:	203c      	movs	r0, #60	; 0x3c
 8000866:	f001 feb0 	bl	80025ca <i2c_read_reg>
 800086a:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 800086e:	80a0      	strh	r0, [r4, #4]
 8000870:	2105      	movs	r1, #5
 8000872:	203c      	movs	r0, #60	; 0x3c
 8000874:	f001 fea9 	bl	80025ca <i2c_read_reg>
 8000878:	2106      	movs	r1, #6
 800087a:	4605      	mov	r5, r0
 800087c:	203c      	movs	r0, #60	; 0x3c
 800087e:	f001 fea4 	bl	80025ca <i2c_read_reg>
 8000882:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000886:	83e0      	strh	r0, [r4, #30]
 8000888:	bd38      	pop	{r3, r4, r5, pc}
 800088a:	bf00      	nop
 800088c:	2000032c 	.word	0x2000032c

08000890 <lsm9ds0_init>:
 8000890:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8000894:	4d35      	ldr	r5, [pc, #212]	; (800096c <lsm9ds0_init+0xdc>)
 8000896:	2400      	movs	r4, #0
 8000898:	20d4      	movs	r0, #212	; 0xd4
 800089a:	210f      	movs	r1, #15
 800089c:	802c      	strh	r4, [r5, #0]
 800089e:	806c      	strh	r4, [r5, #2]
 80008a0:	80ac      	strh	r4, [r5, #4]
 80008a2:	80ec      	strh	r4, [r5, #6]
 80008a4:	812c      	strh	r4, [r5, #8]
 80008a6:	816c      	strh	r4, [r5, #10]
 80008a8:	81ac      	strh	r4, [r5, #12]
 80008aa:	81ec      	strh	r4, [r5, #14]
 80008ac:	822c      	strh	r4, [r5, #16]
 80008ae:	826c      	strh	r4, [r5, #18]
 80008b0:	82ac      	strh	r4, [r5, #20]
 80008b2:	82ec      	strh	r4, [r5, #22]
 80008b4:	832c      	strh	r4, [r5, #24]
 80008b6:	836c      	strh	r4, [r5, #26]
 80008b8:	83ac      	strh	r4, [r5, #28]
 80008ba:	83ec      	strh	r4, [r5, #30]
 80008bc:	f001 fe85 	bl	80025ca <i2c_read_reg>
 80008c0:	28d4      	cmp	r0, #212	; 0xd4
 80008c2:	4606      	mov	r6, r0
 80008c4:	d14e      	bne.n	8000964 <lsm9ds0_init+0xd4>
 80008c6:	203c      	movs	r0, #60	; 0x3c
 80008c8:	210f      	movs	r1, #15
 80008ca:	f001 fe7e 	bl	80025ca <i2c_read_reg>
 80008ce:	2849      	cmp	r0, #73	; 0x49
 80008d0:	bf18      	it	ne
 80008d2:	2602      	movne	r6, #2
 80008d4:	d147      	bne.n	8000966 <lsm9ds0_init+0xd6>
 80008d6:	4630      	mov	r0, r6
 80008d8:	2120      	movs	r1, #32
 80008da:	22ff      	movs	r2, #255	; 0xff
 80008dc:	f001 fe62 	bl	80025a4 <i2c_write_reg>
 80008e0:	4630      	mov	r0, r6
 80008e2:	2123      	movs	r1, #35	; 0x23
 80008e4:	2218      	movs	r2, #24
 80008e6:	f001 fe5d 	bl	80025a4 <i2c_write_reg>
 80008ea:	203c      	movs	r0, #60	; 0x3c
 80008ec:	211f      	movs	r1, #31
 80008ee:	4622      	mov	r2, r4
 80008f0:	f001 fe58 	bl	80025a4 <i2c_write_reg>
 80008f4:	203c      	movs	r0, #60	; 0x3c
 80008f6:	2120      	movs	r1, #32
 80008f8:	2267      	movs	r2, #103	; 0x67
 80008fa:	f001 fe53 	bl	80025a4 <i2c_write_reg>
 80008fe:	203c      	movs	r0, #60	; 0x3c
 8000900:	2121      	movs	r1, #33	; 0x21
 8000902:	4622      	mov	r2, r4
 8000904:	f001 fe4e 	bl	80025a4 <i2c_write_reg>
 8000908:	203c      	movs	r0, #60	; 0x3c
 800090a:	2124      	movs	r1, #36	; 0x24
 800090c:	22f4      	movs	r2, #244	; 0xf4
 800090e:	f001 fe49 	bl	80025a4 <i2c_write_reg>
 8000912:	203c      	movs	r0, #60	; 0x3c
 8000914:	2125      	movs	r1, #37	; 0x25
 8000916:	4622      	mov	r2, r4
 8000918:	f001 fe44 	bl	80025a4 <i2c_write_reg>
 800091c:	203c      	movs	r0, #60	; 0x3c
 800091e:	2126      	movs	r1, #38	; 0x26
 8000920:	2280      	movs	r2, #128	; 0x80
 8000922:	f001 fe3f 	bl	80025a4 <i2c_write_reg>
 8000926:	f7ff ff35 	bl	8000794 <lsm9ds0_read>
 800092a:	2664      	movs	r6, #100	; 0x64
 800092c:	4627      	mov	r7, r4
 800092e:	46a0      	mov	r8, r4
 8000930:	f7ff ff30 	bl	8000794 <lsm9ds0_read>
 8000934:	f9b5 200c 	ldrsh.w	r2, [r5, #12]
 8000938:	4b0c      	ldr	r3, [pc, #48]	; (800096c <lsm9ds0_init+0xdc>)
 800093a:	4490      	add	r8, r2
 800093c:	f9b5 200e 	ldrsh.w	r2, [r5, #14]
 8000940:	4417      	add	r7, r2
 8000942:	f9b5 2010 	ldrsh.w	r2, [r5, #16]
 8000946:	3e01      	subs	r6, #1
 8000948:	4414      	add	r4, r2
 800094a:	d1f1      	bne.n	8000930 <lsm9ds0_init+0xa0>
 800094c:	2264      	movs	r2, #100	; 0x64
 800094e:	fb98 f8f2 	sdiv	r8, r8, r2
 8000952:	fb97 f7f2 	sdiv	r7, r7, r2
 8000956:	fb94 f4f2 	sdiv	r4, r4, r2
 800095a:	f8a3 8012 	strh.w	r8, [r3, #18]
 800095e:	829f      	strh	r7, [r3, #20]
 8000960:	82dc      	strh	r4, [r3, #22]
 8000962:	e000      	b.n	8000966 <lsm9ds0_init+0xd6>
 8000964:	2601      	movs	r6, #1
 8000966:	4630      	mov	r0, r6
 8000968:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800096c:	2000032c 	.word	0x2000032c

08000970 <TIM2_IRQHandler>:
 8000970:	4b21      	ldr	r3, [pc, #132]	; (80009f8 <TIM2_IRQHandler+0x88>)
 8000972:	4a22      	ldr	r2, [pc, #136]	; (80009fc <TIM2_IRQHandler+0x8c>)
 8000974:	6819      	ldr	r1, [r3, #0]
 8000976:	2901      	cmp	r1, #1
 8000978:	b510      	push	{r4, lr}
 800097a:	d011      	beq.n	80009a0 <TIM2_IRQHandler+0x30>
 800097c:	d306      	bcc.n	800098c <TIM2_IRQHandler+0x1c>
 800097e:	2902      	cmp	r1, #2
 8000980:	d113      	bne.n	80009aa <TIM2_IRQHandler+0x3a>
 8000982:	f44f 6180 	mov.w	r1, #1024	; 0x400
 8000986:	8511      	strh	r1, [r2, #40]	; 0x28
 8000988:	2204      	movs	r2, #4
 800098a:	e023      	b.n	80009d4 <TIM2_IRQHandler+0x64>
 800098c:	f44f 7180 	mov.w	r1, #256	; 0x100
 8000990:	8511      	strh	r1, [r2, #40]	; 0x28
 8000992:	f44f 6180 	mov.w	r1, #1024	; 0x400
 8000996:	6191      	str	r1, [r2, #24]
 8000998:	2201      	movs	r2, #1
 800099a:	601a      	str	r2, [r3, #0]
 800099c:	609a      	str	r2, [r3, #8]
 800099e:	e023      	b.n	80009e8 <TIM2_IRQHandler+0x78>
 80009a0:	f44f 7180 	mov.w	r1, #256	; 0x100
 80009a4:	6191      	str	r1, [r2, #24]
 80009a6:	2202      	movs	r2, #2
 80009a8:	e014      	b.n	80009d4 <TIM2_IRQHandler+0x64>
 80009aa:	f011 0f01 	tst.w	r1, #1
 80009ae:	4814      	ldr	r0, [pc, #80]	; (8000a00 <TIM2_IRQHandler+0x90>)
 80009b0:	f101 0401 	add.w	r4, r1, #1
 80009b4:	d010      	beq.n	80009d8 <TIM2_IRQHandler+0x68>
 80009b6:	3904      	subs	r1, #4
 80009b8:	f021 0101 	bic.w	r1, r1, #1
 80009bc:	6c00      	ldr	r0, [r0, #64]	; 0x40
 80009be:	4419      	add	r1, r3
 80009c0:	f5b4 7f82 	cmp.w	r4, #260	; 0x104
 80009c4:	8288      	strh	r0, [r1, #20]
 80009c6:	f44f 7180 	mov.w	r1, #256	; 0x100
 80009ca:	8511      	strh	r1, [r2, #40]	; 0x28
 80009cc:	d201      	bcs.n	80009d2 <TIM2_IRQHandler+0x62>
 80009ce:	601c      	str	r4, [r3, #0]
 80009d0:	e00a      	b.n	80009e8 <TIM2_IRQHandler+0x78>
 80009d2:	2200      	movs	r2, #0
 80009d4:	601a      	str	r2, [r3, #0]
 80009d6:	e007      	b.n	80009e8 <TIM2_IRQHandler+0x78>
 80009d8:	f44f 7180 	mov.w	r1, #256	; 0x100
 80009dc:	6191      	str	r1, [r2, #24]
 80009de:	601c      	str	r4, [r3, #0]
 80009e0:	6883      	ldr	r3, [r0, #8]
 80009e2:	f043 0304 	orr.w	r3, r3, #4
 80009e6:	6083      	str	r3, [r0, #8]
 80009e8:	f04f 4080 	mov.w	r0, #1073741824	; 0x40000000
 80009ec:	2101      	movs	r1, #1
 80009ee:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80009f2:	f001 bae8 	b.w	8001fc6 <TIM_ClearITPendingBit>
 80009f6:	bf00      	nop
 80009f8:	200003e8 	.word	0x200003e8
 80009fc:	48000400 	.word	0x48000400
 8000a00:	50000500 	.word	0x50000500

08000a04 <rgb_i2c_delay>:
 8000a04:	bf00      	nop
 8000a06:	bf00      	nop
 8000a08:	bf00      	nop
 8000a0a:	bf00      	nop
 8000a0c:	4770      	bx	lr
	...

08000a10 <RGBSetLowSDA>:
 8000a10:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 8000a12:	4f15      	ldr	r7, [pc, #84]	; (8000a68 <RGBSetLowSDA+0x58>)
 8000a14:	783b      	ldrb	r3, [r7, #0]
 8000a16:	2401      	movs	r4, #1
 8000a18:	2603      	movs	r6, #3
 8000a1a:	2500      	movs	r5, #0
 8000a1c:	4669      	mov	r1, sp
 8000a1e:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000a22:	9300      	str	r3, [sp, #0]
 8000a24:	f88d 5007 	strb.w	r5, [sp, #7]
 8000a28:	f88d 4004 	strb.w	r4, [sp, #4]
 8000a2c:	f88d 6005 	strb.w	r6, [sp, #5]
 8000a30:	f88d 4006 	strb.w	r4, [sp, #6]
 8000a34:	f001 ffbd 	bl	80029b2 <GPIO_Init>
 8000a38:	783a      	ldrb	r2, [r7, #0]
 8000a3a:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000a3e:	4669      	mov	r1, sp
 8000a40:	851a      	strh	r2, [r3, #40]	; 0x28
 8000a42:	f88d 5007 	strb.w	r5, [sp, #7]
 8000a46:	4d09      	ldr	r5, [pc, #36]	; (8000a6c <RGBSetLowSDA+0x5c>)
 8000a48:	9400      	str	r4, [sp, #0]
 8000a4a:	4628      	mov	r0, r5
 8000a4c:	f88d 4004 	strb.w	r4, [sp, #4]
 8000a50:	f88d 6005 	strb.w	r6, [sp, #5]
 8000a54:	f88d 4006 	strb.w	r4, [sp, #6]
 8000a58:	f001 ffab 	bl	80029b2 <GPIO_Init>
 8000a5c:	852c      	strh	r4, [r5, #40]	; 0x28
 8000a5e:	f7ff ffd1 	bl	8000a04 <rgb_i2c_delay>
 8000a62:	b003      	add	sp, #12
 8000a64:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000a66:	bf00      	nop
 8000a68:	200009fc 	.word	0x200009fc
 8000a6c:	48000400 	.word	0x48000400

08000a70 <RGBSetHighSDA>:
 8000a70:	b573      	push	{r0, r1, r4, r5, r6, lr}
 8000a72:	4d13      	ldr	r5, [pc, #76]	; (8000ac0 <RGBSetHighSDA+0x50>)
 8000a74:	782b      	ldrb	r3, [r5, #0]
 8000a76:	2400      	movs	r4, #0
 8000a78:	2603      	movs	r6, #3
 8000a7a:	4669      	mov	r1, sp
 8000a7c:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000a80:	9300      	str	r3, [sp, #0]
 8000a82:	f88d 4004 	strb.w	r4, [sp, #4]
 8000a86:	f88d 4007 	strb.w	r4, [sp, #7]
 8000a8a:	f88d 6005 	strb.w	r6, [sp, #5]
 8000a8e:	f001 ff90 	bl	80029b2 <GPIO_Init>
 8000a92:	782a      	ldrb	r2, [r5, #0]
 8000a94:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000a98:	2501      	movs	r5, #1
 8000a9a:	619a      	str	r2, [r3, #24]
 8000a9c:	f88d 4004 	strb.w	r4, [sp, #4]
 8000aa0:	f88d 4007 	strb.w	r4, [sp, #7]
 8000aa4:	4c07      	ldr	r4, [pc, #28]	; (8000ac4 <RGBSetHighSDA+0x54>)
 8000aa6:	9500      	str	r5, [sp, #0]
 8000aa8:	4620      	mov	r0, r4
 8000aaa:	4669      	mov	r1, sp
 8000aac:	f88d 6005 	strb.w	r6, [sp, #5]
 8000ab0:	f001 ff7f 	bl	80029b2 <GPIO_Init>
 8000ab4:	61a5      	str	r5, [r4, #24]
 8000ab6:	f7ff ffa5 	bl	8000a04 <rgb_i2c_delay>
 8000aba:	b002      	add	sp, #8
 8000abc:	bd70      	pop	{r4, r5, r6, pc}
 8000abe:	bf00      	nop
 8000ac0:	200009fc 	.word	0x200009fc
 8000ac4:	48000400 	.word	0x48000400

08000ac8 <RGBSetLowSCL>:
 8000ac8:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000acc:	f44f 7280 	mov.w	r2, #256	; 0x100
 8000ad0:	851a      	strh	r2, [r3, #40]	; 0x28
 8000ad2:	f7ff bf97 	b.w	8000a04 <rgb_i2c_delay>

08000ad6 <RGBSetHighSCL>:
 8000ad6:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000ada:	f44f 7280 	mov.w	r2, #256	; 0x100
 8000ade:	619a      	str	r2, [r3, #24]
 8000ae0:	f7ff bf90 	b.w	8000a04 <rgb_i2c_delay>

08000ae4 <rgb_i2c_init>:
 8000ae4:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 8000ae6:	4f1f      	ldr	r7, [pc, #124]	; (8000b64 <rgb_i2c_init+0x80>)
 8000ae8:	2400      	movs	r4, #0
 8000aea:	2501      	movs	r5, #1
 8000aec:	2603      	movs	r6, #3
 8000aee:	f44f 7380 	mov.w	r3, #256	; 0x100
 8000af2:	4669      	mov	r1, sp
 8000af4:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000af8:	9300      	str	r3, [sp, #0]
 8000afa:	f88d 4006 	strb.w	r4, [sp, #6]
 8000afe:	f88d 4007 	strb.w	r4, [sp, #7]
 8000b02:	f88d 5004 	strb.w	r5, [sp, #4]
 8000b06:	f88d 6005 	strb.w	r6, [sp, #5]
 8000b0a:	f001 ff52 	bl	80029b2 <GPIO_Init>
 8000b0e:	783b      	ldrb	r3, [r7, #0]
 8000b10:	f88d 4004 	strb.w	r4, [sp, #4]
 8000b14:	4669      	mov	r1, sp
 8000b16:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000b1a:	9300      	str	r3, [sp, #0]
 8000b1c:	f88d 4007 	strb.w	r4, [sp, #7]
 8000b20:	f88d 6005 	strb.w	r6, [sp, #5]
 8000b24:	f001 ff45 	bl	80029b2 <GPIO_Init>
 8000b28:	7839      	ldrb	r1, [r7, #0]
 8000b2a:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000b2e:	f001 ff86 	bl	8002a3e <GPIO_SetBits>
 8000b32:	f88d 4004 	strb.w	r4, [sp, #4]
 8000b36:	f88d 4007 	strb.w	r4, [sp, #7]
 8000b3a:	4c0b      	ldr	r4, [pc, #44]	; (8000b68 <rgb_i2c_init+0x84>)
 8000b3c:	9500      	str	r5, [sp, #0]
 8000b3e:	4620      	mov	r0, r4
 8000b40:	4669      	mov	r1, sp
 8000b42:	f88d 6005 	strb.w	r6, [sp, #5]
 8000b46:	f001 ff34 	bl	80029b2 <GPIO_Init>
 8000b4a:	4620      	mov	r0, r4
 8000b4c:	4629      	mov	r1, r5
 8000b4e:	f001 ff76 	bl	8002a3e <GPIO_SetBits>
 8000b52:	f7ff ffc0 	bl	8000ad6 <RGBSetHighSCL>
 8000b56:	f7ff ff5b 	bl	8000a10 <RGBSetLowSDA>
 8000b5a:	f7ff ff89 	bl	8000a70 <RGBSetHighSDA>
 8000b5e:	b003      	add	sp, #12
 8000b60:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000b62:	bf00      	nop
 8000b64:	200009fc 	.word	0x200009fc
 8000b68:	48000400 	.word	0x48000400

08000b6c <rgb_i2cStart>:
 8000b6c:	b508      	push	{r3, lr}
 8000b6e:	f7ff ffb2 	bl	8000ad6 <RGBSetHighSCL>
 8000b72:	f7ff ff7d 	bl	8000a70 <RGBSetHighSDA>
 8000b76:	f7ff ffae 	bl	8000ad6 <RGBSetHighSCL>
 8000b7a:	f7ff ff49 	bl	8000a10 <RGBSetLowSDA>
 8000b7e:	f7ff ffa3 	bl	8000ac8 <RGBSetLowSCL>
 8000b82:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8000b86:	f7ff bf73 	b.w	8000a70 <RGBSetHighSDA>

08000b8a <rgb_i2cStop>:
 8000b8a:	b508      	push	{r3, lr}
 8000b8c:	f7ff ff9c 	bl	8000ac8 <RGBSetLowSCL>
 8000b90:	f7ff ff3e 	bl	8000a10 <RGBSetLowSDA>
 8000b94:	f7ff ff9f 	bl	8000ad6 <RGBSetHighSCL>
 8000b98:	f7ff ff3a 	bl	8000a10 <RGBSetLowSDA>
 8000b9c:	f7ff ff9b 	bl	8000ad6 <RGBSetHighSCL>
 8000ba0:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8000ba4:	f7ff bf64 	b.w	8000a70 <RGBSetHighSDA>

08000ba8 <rgb_i2cWrite>:
 8000ba8:	b538      	push	{r3, r4, r5, lr}
 8000baa:	4604      	mov	r4, r0
 8000bac:	2508      	movs	r5, #8
 8000bae:	f7ff ff8b 	bl	8000ac8 <RGBSetLowSCL>
 8000bb2:	0623      	lsls	r3, r4, #24
 8000bb4:	d502      	bpl.n	8000bbc <rgb_i2cWrite+0x14>
 8000bb6:	f7ff ff5b 	bl	8000a70 <RGBSetHighSDA>
 8000bba:	e001      	b.n	8000bc0 <rgb_i2cWrite+0x18>
 8000bbc:	f7ff ff28 	bl	8000a10 <RGBSetLowSDA>
 8000bc0:	3d01      	subs	r5, #1
 8000bc2:	f7ff ff88 	bl	8000ad6 <RGBSetHighSCL>
 8000bc6:	0064      	lsls	r4, r4, #1
 8000bc8:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 8000bcc:	b2e4      	uxtb	r4, r4
 8000bce:	d1ee      	bne.n	8000bae <rgb_i2cWrite+0x6>
 8000bd0:	f7ff ff7a 	bl	8000ac8 <RGBSetLowSCL>
 8000bd4:	f7ff ff4c 	bl	8000a70 <RGBSetHighSDA>
 8000bd8:	f7ff ff7d 	bl	8000ad6 <RGBSetHighSCL>
 8000bdc:	f7ff ff74 	bl	8000ac8 <RGBSetLowSCL>
 8000be0:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8000be4:	f7ff bf0e 	b.w	8000a04 <rgb_i2c_delay>

08000be8 <rgb_i2cRead>:
 8000be8:	b570      	push	{r4, r5, r6, lr}
 8000bea:	2300      	movs	r3, #0
 8000bec:	4606      	mov	r6, r0
 8000bee:	460c      	mov	r4, r1
 8000bf0:	2200      	movs	r2, #0
 8000bf2:	54e2      	strb	r2, [r4, r3]
 8000bf4:	3301      	adds	r3, #1
 8000bf6:	2b09      	cmp	r3, #9
 8000bf8:	d1fa      	bne.n	8000bf0 <rgb_i2cRead+0x8>
 8000bfa:	f7ff ff65 	bl	8000ac8 <RGBSetLowSCL>
 8000bfe:	f7ff ff37 	bl	8000a70 <RGBSetHighSDA>
 8000c02:	2508      	movs	r5, #8
 8000c04:	2300      	movs	r3, #0
 8000c06:	5ce2      	ldrb	r2, [r4, r3]
 8000c08:	0052      	lsls	r2, r2, #1
 8000c0a:	54e2      	strb	r2, [r4, r3]
 8000c0c:	3301      	adds	r3, #1
 8000c0e:	2b09      	cmp	r3, #9
 8000c10:	d1f9      	bne.n	8000c06 <rgb_i2cRead+0x1e>
 8000c12:	f7ff ff60 	bl	8000ad6 <RGBSetHighSCL>
 8000c16:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000c1a:	8a1b      	ldrh	r3, [r3, #16]
 8000c1c:	b29b      	uxth	r3, r3
 8000c1e:	07d8      	lsls	r0, r3, #31
 8000c20:	d503      	bpl.n	8000c2a <rgb_i2cRead+0x42>
 8000c22:	7822      	ldrb	r2, [r4, #0]
 8000c24:	f042 0201 	orr.w	r2, r2, #1
 8000c28:	7022      	strb	r2, [r4, #0]
 8000c2a:	0799      	lsls	r1, r3, #30
 8000c2c:	d503      	bpl.n	8000c36 <rgb_i2cRead+0x4e>
 8000c2e:	7862      	ldrb	r2, [r4, #1]
 8000c30:	f042 0201 	orr.w	r2, r2, #1
 8000c34:	7062      	strb	r2, [r4, #1]
 8000c36:	075a      	lsls	r2, r3, #29
 8000c38:	d503      	bpl.n	8000c42 <rgb_i2cRead+0x5a>
 8000c3a:	78a2      	ldrb	r2, [r4, #2]
 8000c3c:	f042 0201 	orr.w	r2, r2, #1
 8000c40:	70a2      	strb	r2, [r4, #2]
 8000c42:	0718      	lsls	r0, r3, #28
 8000c44:	d503      	bpl.n	8000c4e <rgb_i2cRead+0x66>
 8000c46:	78e2      	ldrb	r2, [r4, #3]
 8000c48:	f042 0201 	orr.w	r2, r2, #1
 8000c4c:	70e2      	strb	r2, [r4, #3]
 8000c4e:	06d9      	lsls	r1, r3, #27
 8000c50:	d503      	bpl.n	8000c5a <rgb_i2cRead+0x72>
 8000c52:	7922      	ldrb	r2, [r4, #4]
 8000c54:	f042 0201 	orr.w	r2, r2, #1
 8000c58:	7122      	strb	r2, [r4, #4]
 8000c5a:	069a      	lsls	r2, r3, #26
 8000c5c:	d503      	bpl.n	8000c66 <rgb_i2cRead+0x7e>
 8000c5e:	7962      	ldrb	r2, [r4, #5]
 8000c60:	f042 0201 	orr.w	r2, r2, #1
 8000c64:	7162      	strb	r2, [r4, #5]
 8000c66:	0658      	lsls	r0, r3, #25
 8000c68:	d503      	bpl.n	8000c72 <rgb_i2cRead+0x8a>
 8000c6a:	79a2      	ldrb	r2, [r4, #6]
 8000c6c:	f042 0201 	orr.w	r2, r2, #1
 8000c70:	71a2      	strb	r2, [r4, #6]
 8000c72:	0619      	lsls	r1, r3, #24
 8000c74:	d503      	bpl.n	8000c7e <rgb_i2cRead+0x96>
 8000c76:	79e3      	ldrb	r3, [r4, #7]
 8000c78:	f043 0301 	orr.w	r3, r3, #1
 8000c7c:	71e3      	strb	r3, [r4, #7]
 8000c7e:	4b0b      	ldr	r3, [pc, #44]	; (8000cac <rgb_i2cRead+0xc4>)
 8000c80:	8a1b      	ldrh	r3, [r3, #16]
 8000c82:	07da      	lsls	r2, r3, #31
 8000c84:	d503      	bpl.n	8000c8e <rgb_i2cRead+0xa6>
 8000c86:	7a23      	ldrb	r3, [r4, #8]
 8000c88:	f043 0301 	orr.w	r3, r3, #1
 8000c8c:	7223      	strb	r3, [r4, #8]
 8000c8e:	f7ff ff1b 	bl	8000ac8 <RGBSetLowSCL>
 8000c92:	3d01      	subs	r5, #1
 8000c94:	d1b6      	bne.n	8000c04 <rgb_i2cRead+0x1c>
 8000c96:	b10e      	cbz	r6, 8000c9c <rgb_i2cRead+0xb4>
 8000c98:	f7ff feba 	bl	8000a10 <RGBSetLowSDA>
 8000c9c:	f7ff ff1b 	bl	8000ad6 <RGBSetHighSCL>
 8000ca0:	f7ff ff12 	bl	8000ac8 <RGBSetLowSCL>
 8000ca4:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8000ca8:	f7ff beac 	b.w	8000a04 <rgb_i2c_delay>
 8000cac:	48000400 	.word	0x48000400

08000cb0 <rgb_i2c_write_reg>:
 8000cb0:	b570      	push	{r4, r5, r6, lr}
 8000cb2:	4605      	mov	r5, r0
 8000cb4:	460c      	mov	r4, r1
 8000cb6:	4616      	mov	r6, r2
 8000cb8:	f7ff ff58 	bl	8000b6c <rgb_i2cStart>
 8000cbc:	4628      	mov	r0, r5
 8000cbe:	f7ff ff73 	bl	8000ba8 <rgb_i2cWrite>
 8000cc2:	4620      	mov	r0, r4
 8000cc4:	f7ff ff70 	bl	8000ba8 <rgb_i2cWrite>
 8000cc8:	4630      	mov	r0, r6
 8000cca:	f7ff ff6d 	bl	8000ba8 <rgb_i2cWrite>
 8000cce:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8000cd2:	f7ff bf5a 	b.w	8000b8a <rgb_i2cStop>

08000cd6 <rgb_i2c_read_reg>:
 8000cd6:	b570      	push	{r4, r5, r6, lr}
 8000cd8:	4604      	mov	r4, r0
 8000cda:	460d      	mov	r5, r1
 8000cdc:	4616      	mov	r6, r2
 8000cde:	f7ff ff45 	bl	8000b6c <rgb_i2cStart>
 8000ce2:	4620      	mov	r0, r4
 8000ce4:	f7ff ff60 	bl	8000ba8 <rgb_i2cWrite>
 8000ce8:	4628      	mov	r0, r5
 8000cea:	f7ff ff5d 	bl	8000ba8 <rgb_i2cWrite>
 8000cee:	f7ff ff3d 	bl	8000b6c <rgb_i2cStart>
 8000cf2:	f044 0001 	orr.w	r0, r4, #1
 8000cf6:	f7ff ff57 	bl	8000ba8 <rgb_i2cWrite>
 8000cfa:	4631      	mov	r1, r6
 8000cfc:	2000      	movs	r0, #0
 8000cfe:	f7ff ff73 	bl	8000be8 <rgb_i2cRead>
 8000d02:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8000d06:	f7ff bf40 	b.w	8000b8a <rgb_i2cStop>
	...

08000d0c <rgb_init>:
 8000d0c:	4b1d      	ldr	r3, [pc, #116]	; (8000d84 <rgb_init+0x78>)
 8000d0e:	b570      	push	{r4, r5, r6, lr}
 8000d10:	2409      	movs	r4, #9
 8000d12:	2200      	movs	r2, #0
 8000d14:	3c01      	subs	r4, #1
 8000d16:	801a      	strh	r2, [r3, #0]
 8000d18:	825a      	strh	r2, [r3, #18]
 8000d1a:	849a      	strh	r2, [r3, #36]	; 0x24
 8000d1c:	f8a3 2048 	strh.w	r2, [r3, #72]	; 0x48
 8000d20:	86da      	strh	r2, [r3, #54]	; 0x36
 8000d22:	f103 0302 	add.w	r3, r3, #2
 8000d26:	d1f4      	bne.n	8000d12 <rgb_init+0x6>
 8000d28:	4d17      	ldr	r5, [pc, #92]	; (8000d88 <rgb_init+0x7c>)
 8000d2a:	f64f 76ff 	movw	r6, #65535	; 0xffff
 8000d2e:	802e      	strh	r6, [r5, #0]
 8000d30:	f7ff fed8 	bl	8000ae4 <rgb_i2c_init>
 8000d34:	2072      	movs	r0, #114	; 0x72
 8000d36:	2181      	movs	r1, #129	; 0x81
 8000d38:	22ff      	movs	r2, #255	; 0xff
 8000d3a:	f7ff ffb9 	bl	8000cb0 <rgb_i2c_write_reg>
 8000d3e:	2072      	movs	r0, #114	; 0x72
 8000d40:	2183      	movs	r1, #131	; 0x83
 8000d42:	22ff      	movs	r2, #255	; 0xff
 8000d44:	f7ff ffb4 	bl	8000cb0 <rgb_i2c_write_reg>
 8000d48:	2072      	movs	r0, #114	; 0x72
 8000d4a:	218d      	movs	r1, #141	; 0x8d
 8000d4c:	4622      	mov	r2, r4
 8000d4e:	f7ff ffaf 	bl	8000cb0 <rgb_i2c_write_reg>
 8000d52:	2072      	movs	r0, #114	; 0x72
 8000d54:	2180      	movs	r1, #128	; 0x80
 8000d56:	2203      	movs	r2, #3
 8000d58:	f7ff ffaa 	bl	8000cb0 <rgb_i2c_write_reg>
 8000d5c:	2072      	movs	r0, #114	; 0x72
 8000d5e:	218f      	movs	r1, #143	; 0x8f
 8000d60:	2223      	movs	r2, #35	; 0x23
 8000d62:	f7ff ffa5 	bl	8000cb0 <rgb_i2c_write_reg>
 8000d66:	f7ff fe83 	bl	8000a70 <RGBSetHighSDA>
 8000d6a:	2072      	movs	r0, #114	; 0x72
 8000d6c:	2180      	movs	r1, #128	; 0x80
 8000d6e:	2207      	movs	r2, #7
 8000d70:	802c      	strh	r4, [r5, #0]
 8000d72:	f7ff ff9d 	bl	8000cb0 <rgb_i2c_write_reg>
 8000d76:	2072      	movs	r0, #114	; 0x72
 8000d78:	218e      	movs	r1, #142	; 0x8e
 8000d7a:	2208      	movs	r2, #8
 8000d7c:	f7ff ff98 	bl	8000cb0 <rgb_i2c_write_reg>
 8000d80:	802e      	strh	r6, [r5, #0]
 8000d82:	bd70      	pop	{r4, r5, r6, pc}
 8000d84:	2000034c 	.word	0x2000034c
 8000d88:	200009fc 	.word	0x200009fc

08000d8c <rgb_read>:
 8000d8c:	b538      	push	{r3, r4, r5, lr}
 8000d8e:	f7ff feed 	bl	8000b6c <rgb_i2cStart>
 8000d92:	2072      	movs	r0, #114	; 0x72
 8000d94:	f7ff ff08 	bl	8000ba8 <rgb_i2cWrite>
 8000d98:	20b4      	movs	r0, #180	; 0xb4
 8000d9a:	f7ff ff05 	bl	8000ba8 <rgb_i2cWrite>
 8000d9e:	f7ff fee5 	bl	8000b6c <rgb_i2cStart>
 8000da2:	2073      	movs	r0, #115	; 0x73
 8000da4:	f7ff ff00 	bl	8000ba8 <rgb_i2cWrite>
 8000da8:	2001      	movs	r0, #1
 8000daa:	4946      	ldr	r1, [pc, #280]	; (8000ec4 <rgb_read+0x138>)
 8000dac:	f7ff ff1c 	bl	8000be8 <rgb_i2cRead>
 8000db0:	2300      	movs	r3, #0
 8000db2:	4d45      	ldr	r5, [pc, #276]	; (8000ec8 <rgb_read+0x13c>)
 8000db4:	4c43      	ldr	r4, [pc, #268]	; (8000ec4 <rgb_read+0x138>)
 8000db6:	eb05 0243 	add.w	r2, r5, r3, lsl #1
 8000dba:	5d19      	ldrb	r1, [r3, r4]
 8000dbc:	3301      	adds	r3, #1
 8000dbe:	2b09      	cmp	r3, #9
 8000dc0:	86d1      	strh	r1, [r2, #54]	; 0x36
 8000dc2:	d1f6      	bne.n	8000db2 <rgb_read+0x26>
 8000dc4:	2001      	movs	r0, #1
 8000dc6:	4621      	mov	r1, r4
 8000dc8:	f7ff ff0e 	bl	8000be8 <rgb_i2cRead>
 8000dcc:	f105 0236 	add.w	r2, r5, #54	; 0x36
 8000dd0:	2300      	movs	r3, #0
 8000dd2:	8811      	ldrh	r1, [r2, #0]
 8000dd4:	5ce0      	ldrb	r0, [r4, r3]
 8000dd6:	3301      	adds	r3, #1
 8000dd8:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 8000ddc:	2b09      	cmp	r3, #9
 8000dde:	f822 1b02 	strh.w	r1, [r2], #2
 8000de2:	d1f6      	bne.n	8000dd2 <rgb_read+0x46>
 8000de4:	2001      	movs	r0, #1
 8000de6:	4937      	ldr	r1, [pc, #220]	; (8000ec4 <rgb_read+0x138>)
 8000de8:	f7ff fefe 	bl	8000be8 <rgb_i2cRead>
 8000dec:	2300      	movs	r3, #0
 8000dee:	5ce2      	ldrb	r2, [r4, r3]
 8000df0:	f825 2013 	strh.w	r2, [r5, r3, lsl #1]
 8000df4:	3301      	adds	r3, #1
 8000df6:	2b09      	cmp	r3, #9
 8000df8:	d1f9      	bne.n	8000dee <rgb_read+0x62>
 8000dfa:	2001      	movs	r0, #1
 8000dfc:	4931      	ldr	r1, [pc, #196]	; (8000ec4 <rgb_read+0x138>)
 8000dfe:	f7ff fef3 	bl	8000be8 <rgb_i2cRead>
 8000e02:	4a32      	ldr	r2, [pc, #200]	; (8000ecc <rgb_read+0x140>)
 8000e04:	2300      	movs	r3, #0
 8000e06:	5ce0      	ldrb	r0, [r4, r3]
 8000e08:	8851      	ldrh	r1, [r2, #2]
 8000e0a:	3301      	adds	r3, #1
 8000e0c:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 8000e10:	2b09      	cmp	r3, #9
 8000e12:	f822 1f02 	strh.w	r1, [r2, #2]!
 8000e16:	d1f6      	bne.n	8000e06 <rgb_read+0x7a>
 8000e18:	2001      	movs	r0, #1
 8000e1a:	492a      	ldr	r1, [pc, #168]	; (8000ec4 <rgb_read+0x138>)
 8000e1c:	f7ff fee4 	bl	8000be8 <rgb_i2cRead>
 8000e20:	2300      	movs	r3, #0
 8000e22:	eb05 0243 	add.w	r2, r5, r3, lsl #1
 8000e26:	5ce1      	ldrb	r1, [r4, r3]
 8000e28:	3301      	adds	r3, #1
 8000e2a:	2b09      	cmp	r3, #9
 8000e2c:	8251      	strh	r1, [r2, #18]
 8000e2e:	d1f8      	bne.n	8000e22 <rgb_read+0x96>
 8000e30:	2001      	movs	r0, #1
 8000e32:	4924      	ldr	r1, [pc, #144]	; (8000ec4 <rgb_read+0x138>)
 8000e34:	f7ff fed8 	bl	8000be8 <rgb_i2cRead>
 8000e38:	4a25      	ldr	r2, [pc, #148]	; (8000ed0 <rgb_read+0x144>)
 8000e3a:	2300      	movs	r3, #0
 8000e3c:	8811      	ldrh	r1, [r2, #0]
 8000e3e:	5ce0      	ldrb	r0, [r4, r3]
 8000e40:	3301      	adds	r3, #1
 8000e42:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 8000e46:	2b09      	cmp	r3, #9
 8000e48:	f822 1b02 	strh.w	r1, [r2], #2
 8000e4c:	d1f6      	bne.n	8000e3c <rgb_read+0xb0>
 8000e4e:	2001      	movs	r0, #1
 8000e50:	491c      	ldr	r1, [pc, #112]	; (8000ec4 <rgb_read+0x138>)
 8000e52:	f7ff fec9 	bl	8000be8 <rgb_i2cRead>
 8000e56:	2300      	movs	r3, #0
 8000e58:	eb05 0243 	add.w	r2, r5, r3, lsl #1
 8000e5c:	5ce1      	ldrb	r1, [r4, r3]
 8000e5e:	3301      	adds	r3, #1
 8000e60:	2b09      	cmp	r3, #9
 8000e62:	8491      	strh	r1, [r2, #36]	; 0x24
 8000e64:	d1f8      	bne.n	8000e58 <rgb_read+0xcc>
 8000e66:	2001      	movs	r0, #1
 8000e68:	4916      	ldr	r1, [pc, #88]	; (8000ec4 <rgb_read+0x138>)
 8000e6a:	f7ff febd 	bl	8000be8 <rgb_i2cRead>
 8000e6e:	4a19      	ldr	r2, [pc, #100]	; (8000ed4 <rgb_read+0x148>)
 8000e70:	2300      	movs	r3, #0
 8000e72:	8811      	ldrh	r1, [r2, #0]
 8000e74:	5ce0      	ldrb	r0, [r4, r3]
 8000e76:	3301      	adds	r3, #1
 8000e78:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 8000e7c:	2b09      	cmp	r3, #9
 8000e7e:	f822 1b02 	strh.w	r1, [r2], #2
 8000e82:	d1f6      	bne.n	8000e72 <rgb_read+0xe6>
 8000e84:	2001      	movs	r0, #1
 8000e86:	490f      	ldr	r1, [pc, #60]	; (8000ec4 <rgb_read+0x138>)
 8000e88:	f7ff feae 	bl	8000be8 <rgb_i2cRead>
 8000e8c:	2300      	movs	r3, #0
 8000e8e:	eb05 0243 	add.w	r2, r5, r3, lsl #1
 8000e92:	5ce1      	ldrb	r1, [r4, r3]
 8000e94:	3301      	adds	r3, #1
 8000e96:	2b09      	cmp	r3, #9
 8000e98:	f8a2 1048 	strh.w	r1, [r2, #72]	; 0x48
 8000e9c:	d1f7      	bne.n	8000e8e <rgb_read+0x102>
 8000e9e:	2000      	movs	r0, #0
 8000ea0:	4908      	ldr	r1, [pc, #32]	; (8000ec4 <rgb_read+0x138>)
 8000ea2:	f7ff fea1 	bl	8000be8 <rgb_i2cRead>
 8000ea6:	4a0c      	ldr	r2, [pc, #48]	; (8000ed8 <rgb_read+0x14c>)
 8000ea8:	2300      	movs	r3, #0
 8000eaa:	8811      	ldrh	r1, [r2, #0]
 8000eac:	5ce0      	ldrb	r0, [r4, r3]
 8000eae:	3301      	adds	r3, #1
 8000eb0:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 8000eb4:	2b09      	cmp	r3, #9
 8000eb6:	f822 1b02 	strh.w	r1, [r2], #2
 8000eba:	d1f6      	bne.n	8000eaa <rgb_read+0x11e>
 8000ebc:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8000ec0:	f7ff be63 	b.w	8000b8a <rgb_i2cStop>
 8000ec4:	200009fe 	.word	0x200009fe
 8000ec8:	2000034c 	.word	0x2000034c
 8000ecc:	2000034a 	.word	0x2000034a
 8000ed0:	2000035e 	.word	0x2000035e
 8000ed4:	20000370 	.word	0x20000370
 8000ed8:	20000394 	.word	0x20000394

08000edc <line_sensor_init>:
 8000edc:	b538      	push	{r3, r4, r5, lr}
 8000ede:	2064      	movs	r0, #100	; 0x64
 8000ee0:	f001 f8fc 	bl	80020dc <timer_delay_ms>
 8000ee4:	2400      	movs	r4, #0
 8000ee6:	f7ff ff11 	bl	8000d0c <rgb_init>
 8000eea:	f7ff ff4f 	bl	8000d8c <rgb_read>
 8000eee:	2072      	movs	r0, #114	; 0x72
 8000ef0:	2192      	movs	r1, #146	; 0x92
 8000ef2:	4a11      	ldr	r2, [pc, #68]	; (8000f38 <line_sensor_init+0x5c>)
 8000ef4:	f7ff feef 	bl	8000cd6 <rgb_i2c_read_reg>
 8000ef8:	4623      	mov	r3, r4
 8000efa:	4a10      	ldr	r2, [pc, #64]	; (8000f3c <line_sensor_init+0x60>)
 8000efc:	1899      	adds	r1, r3, r2
 8000efe:	4615      	mov	r5, r2
 8000f00:	7849      	ldrb	r1, [r1, #1]
 8000f02:	2969      	cmp	r1, #105	; 0x69
 8000f04:	d002      	beq.n	8000f0c <line_sensor_init+0x30>
 8000f06:	2201      	movs	r2, #1
 8000f08:	409a      	lsls	r2, r3
 8000f0a:	4314      	orrs	r4, r2
 8000f0c:	3301      	adds	r3, #1
 8000f0e:	2b09      	cmp	r3, #9
 8000f10:	d1f3      	bne.n	8000efa <line_sensor_init+0x1e>
 8000f12:	2100      	movs	r1, #0
 8000f14:	1868      	adds	r0, r5, r1
 8000f16:	3104      	adds	r1, #4
 8000f18:	2300      	movs	r3, #0
 8000f1a:	2920      	cmp	r1, #32
 8000f1c:	4a07      	ldr	r2, [pc, #28]	; (8000f3c <line_sensor_init+0x60>)
 8000f1e:	60c3      	str	r3, [r0, #12]
 8000f20:	d1f8      	bne.n	8000f14 <line_sensor_init+0x38>
 8000f22:	7013      	strb	r3, [r2, #0]
 8000f24:	f882 3030 	strb.w	r3, [r2, #48]	; 0x30
 8000f28:	f882 303c 	strb.w	r3, [r2, #60]	; 0x3c
 8000f2c:	6353      	str	r3, [r2, #52]	; 0x34
 8000f2e:	6393      	str	r3, [r2, #56]	; 0x38
 8000f30:	f7ff ff2c 	bl	8000d8c <rgb_read>
 8000f34:	4620      	mov	r0, r4
 8000f36:	bd38      	pop	{r3, r4, r5, pc}
 8000f38:	200003a9 	.word	0x200003a9
 8000f3c:	200003a8 	.word	0x200003a8

08000f40 <line_sensor_read>:
 8000f40:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8000f44:	4604      	mov	r4, r0
 8000f46:	f7ff ff21 	bl	8000d8c <rgb_read>
 8000f4a:	2c00      	cmp	r4, #0
 8000f4c:	f040 80ef 	bne.w	800112e <line_sensor_read+0x1ee>
 8000f50:	4a78      	ldr	r2, [pc, #480]	; (8001134 <line_sensor_read+0x1f4>)
 8000f52:	4b79      	ldr	r3, [pc, #484]	; (8001138 <line_sensor_read+0x1f8>)
 8000f54:	6b91      	ldr	r1, [r2, #56]	; 0x38
 8000f56:	f9b3 0058 	ldrsh.w	r0, [r3, #88]	; 0x58
 8000f5a:	2507      	movs	r5, #7
 8000f5c:	fb05 0101 	mla	r1, r5, r1, r0
 8000f60:	2008      	movs	r0, #8
 8000f62:	fb91 f1f0 	sdiv	r1, r1, r0
 8000f66:	6391      	str	r1, [r2, #56]	; 0x38
 8000f68:	4620      	mov	r0, r4
 8000f6a:	4621      	mov	r1, r4
 8000f6c:	4625      	mov	r5, r4
 8000f6e:	4626      	mov	r6, r4
 8000f70:	4627      	mov	r7, r4
 8000f72:	461c      	mov	r4, r3
 8000f74:	f8df c1c8 	ldr.w	ip, [pc, #456]	; 8001140 <line_sensor_read+0x200>
 8000f78:	f8b3 a036 	ldrh.w	sl, [r3, #54]	; 0x36
 8000f7c:	f850 c00c 	ldr.w	ip, [r0, ip]
 8000f80:	f8b3 9000 	ldrh.w	r9, [r3]
 8000f84:	f8b3 8012 	ldrh.w	r8, [r3, #18]
 8000f88:	f8b3 b024 	ldrh.w	fp, [r3, #36]	; 0x24
 8000f8c:	ebcc 0a0a 	rsb	sl, ip, sl
 8000f90:	f8df c1b0 	ldr.w	ip, [pc, #432]	; 8001144 <line_sensor_read+0x204>
 8000f94:	f850 c00c 	ldr.w	ip, [r0, ip]
 8000f98:	ebcc 0909 	rsb	r9, ip, r9
 8000f9c:	f8df c1a8 	ldr.w	ip, [pc, #424]	; 8001148 <line_sensor_read+0x208>
 8000fa0:	f850 c00c 	ldr.w	ip, [r0, ip]
 8000fa4:	ebcc 0808 	rsb	r8, ip, r8
 8000fa8:	f8df c1a0 	ldr.w	ip, [pc, #416]	; 800114c <line_sensor_read+0x20c>
 8000fac:	f850 c00c 	ldr.w	ip, [r0, ip]
 8000fb0:	3004      	adds	r0, #4
 8000fb2:	ebcc 0c0b 	rsb	ip, ip, fp
 8000fb6:	fa1f fa8a 	uxth.w	sl, sl
 8000fba:	fa1f f989 	uxth.w	r9, r9
 8000fbe:	fa1f f888 	uxth.w	r8, r8
 8000fc2:	fa1f fc8c 	uxth.w	ip, ip
 8000fc6:	2820      	cmp	r0, #32
 8000fc8:	f8a3 a036 	strh.w	sl, [r3, #54]	; 0x36
 8000fcc:	f8a3 9000 	strh.w	r9, [r3]
 8000fd0:	f8a3 8012 	strh.w	r8, [r3, #18]
 8000fd4:	f8a3 c024 	strh.w	ip, [r3, #36]	; 0x24
 8000fd8:	fa07 f78a 	sxtah	r7, r7, sl
 8000fdc:	fa06 f689 	sxtah	r6, r6, r9
 8000fe0:	fa05 f588 	sxtah	r5, r5, r8
 8000fe4:	fa01 f18c 	sxtah	r1, r1, ip
 8000fe8:	f103 0302 	add.w	r3, r3, #2
 8000fec:	d1c2      	bne.n	8000f74 <line_sensor_read+0x34>
 8000fee:	2308      	movs	r3, #8
 8000ff0:	fb91 fcf3 	sdiv	ip, r1, r3
 8000ff4:	fb97 f7f3 	sdiv	r7, r7, r3
 8000ff8:	fb96 f6f3 	sdiv	r6, r6, r3
 8000ffc:	fb95 f5f3 	sdiv	r5, r5, r3
 8001000:	4b4d      	ldr	r3, [pc, #308]	; (8001138 <line_sensor_read+0x1f8>)
 8001002:	2100      	movs	r1, #0
 8001004:	8ed8      	ldrh	r0, [r3, #54]	; 0x36
 8001006:	1a38      	subs	r0, r7, r0
 8001008:	86d8      	strh	r0, [r3, #54]	; 0x36
 800100a:	5b08      	ldrh	r0, [r1, r4]
 800100c:	1b80      	subs	r0, r0, r6
 800100e:	5308      	strh	r0, [r1, r4]
 8001010:	8a58      	ldrh	r0, [r3, #18]
 8001012:	1b40      	subs	r0, r0, r5
 8001014:	8258      	strh	r0, [r3, #18]
 8001016:	8c98      	ldrh	r0, [r3, #36]	; 0x24
 8001018:	3102      	adds	r1, #2
 800101a:	ebcc 0000 	rsb	r0, ip, r0
 800101e:	2910      	cmp	r1, #16
 8001020:	8498      	strh	r0, [r3, #36]	; 0x24
 8001022:	f103 0302 	add.w	r3, r3, #2
 8001026:	d1ed      	bne.n	8001004 <line_sensor_read+0xc4>
 8001028:	2300      	movs	r3, #0
 800102a:	191d      	adds	r5, r3, r4
 800102c:	eb02 0043 	add.w	r0, r2, r3, lsl #1
 8001030:	f9b5 5036 	ldrsh.w	r5, [r5, #54]	; 0x36
 8001034:	493f      	ldr	r1, [pc, #252]	; (8001134 <line_sensor_read+0x1f4>)
 8001036:	60c5      	str	r5, [r0, #12]
 8001038:	3302      	adds	r3, #2
 800103a:	2b10      	cmp	r3, #16
 800103c:	d1f5      	bne.n	800102a <line_sensor_read+0xea>
 800103e:	698d      	ldr	r5, [r1, #24]
 8001040:	69c8      	ldr	r0, [r1, #28]
 8001042:	1829      	adds	r1, r5, r0
 8001044:	d00d      	beq.n	8001062 <line_sensor_read+0x122>
 8001046:	4c3d      	ldr	r4, [pc, #244]	; (800113c <line_sensor_read+0x1fc>)
 8001048:	f9b4 3008 	ldrsh.w	r3, [r4, #8]
 800104c:	f9b4 6006 	ldrsh.w	r6, [r4, #6]
 8001050:	4343      	muls	r3, r0
 8001052:	fb06 3305 	mla	r3, r6, r5, r3
 8001056:	2402      	movs	r4, #2
 8001058:	fb93 f3f1 	sdiv	r3, r3, r1
 800105c:	fb91 f1f4 	sdiv	r1, r1, r4
 8001060:	e000      	b.n	8001064 <line_sensor_read+0x124>
 8001062:	460b      	mov	r3, r1
 8001064:	6a14      	ldr	r4, [r2, #32]
 8001066:	1826      	adds	r6, r4, r0
 8001068:	d00c      	beq.n	8001084 <line_sensor_read+0x144>
 800106a:	2c96      	cmp	r4, #150	; 0x96
 800106c:	dd0a      	ble.n	8001084 <line_sensor_read+0x144>
 800106e:	4933      	ldr	r1, [pc, #204]	; (800113c <line_sensor_read+0x1fc>)
 8001070:	f9b1 300a 	ldrsh.w	r3, [r1, #10]
 8001074:	f9b1 1008 	ldrsh.w	r1, [r1, #8]
 8001078:	4348      	muls	r0, r1
 800107a:	fb03 0304 	mla	r3, r3, r4, r0
 800107e:	fb93 f3f6 	sdiv	r3, r3, r6
 8001082:	4621      	mov	r1, r4
 8001084:	6950      	ldr	r0, [r2, #20]
 8001086:	1946      	adds	r6, r0, r5
 8001088:	d00c      	beq.n	80010a4 <line_sensor_read+0x164>
 800108a:	2896      	cmp	r0, #150	; 0x96
 800108c:	dd0a      	ble.n	80010a4 <line_sensor_read+0x164>
 800108e:	492b      	ldr	r1, [pc, #172]	; (800113c <line_sensor_read+0x1fc>)
 8001090:	f9b1 3004 	ldrsh.w	r3, [r1, #4]
 8001094:	f9b1 1006 	ldrsh.w	r1, [r1, #6]
 8001098:	434d      	muls	r5, r1
 800109a:	fb03 5300 	mla	r3, r3, r0, r5
 800109e:	fb93 f3f6 	sdiv	r3, r3, r6
 80010a2:	4601      	mov	r1, r0
 80010a4:	6a55      	ldr	r5, [r2, #36]	; 0x24
 80010a6:	192e      	adds	r6, r5, r4
 80010a8:	d00c      	beq.n	80010c4 <line_sensor_read+0x184>
 80010aa:	2d96      	cmp	r5, #150	; 0x96
 80010ac:	dd0a      	ble.n	80010c4 <line_sensor_read+0x184>
 80010ae:	4923      	ldr	r1, [pc, #140]	; (800113c <line_sensor_read+0x1fc>)
 80010b0:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 80010b4:	f9b1 100a 	ldrsh.w	r1, [r1, #10]
 80010b8:	434c      	muls	r4, r1
 80010ba:	fb03 4305 	mla	r3, r3, r5, r4
 80010be:	fb93 f3f6 	sdiv	r3, r3, r6
 80010c2:	4629      	mov	r1, r5
 80010c4:	6914      	ldr	r4, [r2, #16]
 80010c6:	1825      	adds	r5, r4, r0
 80010c8:	d00c      	beq.n	80010e4 <line_sensor_read+0x1a4>
 80010ca:	2c96      	cmp	r4, #150	; 0x96
 80010cc:	dd0a      	ble.n	80010e4 <line_sensor_read+0x1a4>
 80010ce:	491b      	ldr	r1, [pc, #108]	; (800113c <line_sensor_read+0x1fc>)
 80010d0:	f9b1 3002 	ldrsh.w	r3, [r1, #2]
 80010d4:	f9b1 1004 	ldrsh.w	r1, [r1, #4]
 80010d8:	4348      	muls	r0, r1
 80010da:	fb03 0304 	mla	r3, r3, r4, r0
 80010de:	fb93 f3f5 	sdiv	r3, r3, r5
 80010e2:	4621      	mov	r1, r4
 80010e4:	68d0      	ldr	r0, [r2, #12]
 80010e6:	2896      	cmp	r0, #150	; 0x96
 80010e8:	dd03      	ble.n	80010f2 <line_sensor_read+0x1b2>
 80010ea:	4b14      	ldr	r3, [pc, #80]	; (800113c <line_sensor_read+0x1fc>)
 80010ec:	f9b3 3000 	ldrsh.w	r3, [r3]
 80010f0:	4601      	mov	r1, r0
 80010f2:	6a90      	ldr	r0, [r2, #40]	; 0x28
 80010f4:	2896      	cmp	r0, #150	; 0x96
 80010f6:	dd03      	ble.n	8001100 <line_sensor_read+0x1c0>
 80010f8:	4b10      	ldr	r3, [pc, #64]	; (800113c <line_sensor_read+0x1fc>)
 80010fa:	f9b3 300e 	ldrsh.w	r3, [r3, #14]
 80010fe:	e001      	b.n	8001104 <line_sensor_read+0x1c4>
 8001100:	2996      	cmp	r1, #150	; 0x96
 8001102:	dd10      	ble.n	8001126 <line_sensor_read+0x1e6>
 8001104:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
 8001108:	dc05      	bgt.n	8001116 <line_sensor_read+0x1d6>
 800110a:	f06f 01ff 	mvn.w	r1, #255	; 0xff
 800110e:	428b      	cmp	r3, r1
 8001110:	bfb8      	it	lt
 8001112:	460b      	movlt	r3, r1
 8001114:	e001      	b.n	800111a <line_sensor_read+0x1da>
 8001116:	f44f 7380 	mov.w	r3, #256	; 0x100
 800111a:	6353      	str	r3, [r2, #52]	; 0x34
 800111c:	2308      	movs	r3, #8
 800111e:	f882 3030 	strb.w	r3, [r2, #48]	; 0x30
 8001122:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8001126:	4b03      	ldr	r3, [pc, #12]	; (8001134 <line_sensor_read+0x1f4>)
 8001128:	2200      	movs	r2, #0
 800112a:	f883 2030 	strb.w	r2, [r3, #48]	; 0x30
 800112e:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8001132:	bf00      	nop
 8001134:	200003a8 	.word	0x200003a8
 8001138:	2000034c 	.word	0x2000034c
 800113c:	2000006c 	.word	0x2000006c
 8001140:	20000000 	.word	0x20000000
 8001144:	2000007c 	.word	0x2000007c
 8001148:	20000048 	.word	0x20000048
 800114c:	20000024 	.word	0x20000024

08001150 <abort_error_>:
 8001150:	b570      	push	{r4, r5, r6, lr}
 8001152:	4605      	mov	r5, r0
 8001154:	460e      	mov	r6, r1
 8001156:	480f      	ldr	r0, [pc, #60]	; (8001194 <abort_error_+0x44>)
 8001158:	4629      	mov	r1, r5
 800115a:	4632      	mov	r2, r6
 800115c:	f7ff f9ba 	bl	80004d4 <printf_>
 8001160:	2400      	movs	r4, #0
 8001162:	1ceb      	adds	r3, r5, #3
 8001164:	429c      	cmp	r4, r3
 8001166:	d20f      	bcs.n	8001188 <abort_error_+0x38>
 8001168:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 800116c:	f001 fcee 	bl	8002b4c <led_on>
 8001170:	2032      	movs	r0, #50	; 0x32
 8001172:	f000 ffb3 	bl	80020dc <timer_delay_ms>
 8001176:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 800117a:	f001 fcf9 	bl	8002b70 <led_off>
 800117e:	2064      	movs	r0, #100	; 0x64
 8001180:	f000 ffac 	bl	80020dc <timer_delay_ms>
 8001184:	3401      	adds	r4, #1
 8001186:	e7ec      	b.n	8001162 <abort_error_+0x12>
 8001188:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 800118c:	f000 ffa6 	bl	80020dc <timer_delay_ms>
 8001190:	e7e1      	b.n	8001156 <abort_error_+0x6>
 8001192:	bf00      	nop
 8001194:	08002c71 	.word	0x08002c71

08001198 <telemetry_thread>:
 8001198:	b538      	push	{r3, r4, r5, lr}
 800119a:	4d20      	ldr	r5, [pc, #128]	; (800121c <telemetry_thread+0x84>)
 800119c:	4c20      	ldr	r4, [pc, #128]	; (8001220 <telemetry_thread+0x88>)
 800119e:	4821      	ldr	r0, [pc, #132]	; (8001224 <telemetry_thread+0x8c>)
 80011a0:	f7ff f998 	bl	80004d4 <printf_>
 80011a4:	4820      	ldr	r0, [pc, #128]	; (8001228 <telemetry_thread+0x90>)
 80011a6:	6b69      	ldr	r1, [r5, #52]	; 0x34
 80011a8:	f895 2030 	ldrb.w	r2, [r5, #48]	; 0x30
 80011ac:	f7ff f992 	bl	80004d4 <printf_>
 80011b0:	f9b4 100c 	ldrsh.w	r1, [r4, #12]
 80011b4:	f9b4 200e 	ldrsh.w	r2, [r4, #14]
 80011b8:	f9b4 3010 	ldrsh.w	r3, [r4, #16]
 80011bc:	481b      	ldr	r0, [pc, #108]	; (800122c <telemetry_thread+0x94>)
 80011be:	f7ff f989 	bl	80004d4 <printf_>
 80011c2:	f9b4 1006 	ldrsh.w	r1, [r4, #6]
 80011c6:	f9b4 2008 	ldrsh.w	r2, [r4, #8]
 80011ca:	f9b4 300a 	ldrsh.w	r3, [r4, #10]
 80011ce:	4817      	ldr	r0, [pc, #92]	; (800122c <telemetry_thread+0x94>)
 80011d0:	f7ff f980 	bl	80004d4 <printf_>
 80011d4:	f9b4 1000 	ldrsh.w	r1, [r4]
 80011d8:	f9b4 2002 	ldrsh.w	r2, [r4, #2]
 80011dc:	f9b4 3004 	ldrsh.w	r3, [r4, #4]
 80011e0:	4812      	ldr	r0, [pc, #72]	; (800122c <telemetry_thread+0x94>)
 80011e2:	f7ff f977 	bl	80004d4 <printf_>
 80011e6:	f9b4 1018 	ldrsh.w	r1, [r4, #24]
 80011ea:	f9b4 201a 	ldrsh.w	r2, [r4, #26]
 80011ee:	f9b4 301c 	ldrsh.w	r3, [r4, #28]
 80011f2:	480e      	ldr	r0, [pc, #56]	; (800122c <telemetry_thread+0x94>)
 80011f4:	f7ff f96e 	bl	80004d4 <printf_>
 80011f8:	2400      	movs	r4, #0
 80011fa:	192b      	adds	r3, r5, r4
 80011fc:	480c      	ldr	r0, [pc, #48]	; (8001230 <telemetry_thread+0x98>)
 80011fe:	68d9      	ldr	r1, [r3, #12]
 8001200:	3404      	adds	r4, #4
 8001202:	f7ff f967 	bl	80004d4 <printf_>
 8001206:	2c20      	cmp	r4, #32
 8001208:	d1f7      	bne.n	80011fa <telemetry_thread+0x62>
 800120a:	480a      	ldr	r0, [pc, #40]	; (8001234 <telemetry_thread+0x9c>)
 800120c:	f7ff f962 	bl	80004d4 <printf_>
 8001210:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 8001214:	f000 ff62 	bl	80020dc <timer_delay_ms>
 8001218:	e7bf      	b.n	800119a <telemetry_thread+0x2>
 800121a:	bf00      	nop
 800121c:	200003a8 	.word	0x200003a8
 8001220:	2000032c 	.word	0x2000032c
 8001224:	08002c83 	.word	0x08002c83
 8001228:	08002c8b 	.word	0x08002c8b
 800122c:	08002c88 	.word	0x08002c88
 8001230:	08002c8e 	.word	0x08002c8e
 8001234:	08002ccb 	.word	0x08002ccb

08001238 <line_sensor_thread>:
 8001238:	b508      	push	{r3, lr}
 800123a:	f7ff fe4f 	bl	8000edc <line_sensor_init>
 800123e:	4601      	mov	r1, r0
 8001240:	b120      	cbz	r0, 800124c <line_sensor_thread+0x14>
 8001242:	4b08      	ldr	r3, [pc, #32]	; (8001264 <line_sensor_thread+0x2c>)
 8001244:	2001      	movs	r0, #1
 8001246:	6018      	str	r0, [r3, #0]
 8001248:	f7ff ff82 	bl	8001150 <abort_error_>
 800124c:	2000      	movs	r0, #0
 800124e:	2104      	movs	r1, #4
 8001250:	f000 ff54 	bl	80020fc <event_timer_set_period>
 8001254:	2000      	movs	r0, #0
 8001256:	f000 ff67 	bl	8002128 <event_timer_wait>
 800125a:	2000      	movs	r0, #0
 800125c:	f7ff fe70 	bl	8000f40 <line_sensor_read>
 8001260:	e7f8      	b.n	8001254 <line_sensor_thread+0x1c>
 8001262:	bf00      	nop
 8001264:	2000129c 	.word	0x2000129c

08001268 <i2c_sensor_thread>:
 8001268:	b508      	push	{r3, lr}
 800126a:	f7ff fb11 	bl	8000890 <lsm9ds0_init>
 800126e:	4601      	mov	r1, r0
 8001270:	b128      	cbz	r0, 800127e <i2c_sensor_thread+0x16>
 8001272:	4b08      	ldr	r3, [pc, #32]	; (8001294 <i2c_sensor_thread+0x2c>)
 8001274:	2201      	movs	r2, #1
 8001276:	2002      	movs	r0, #2
 8001278:	601a      	str	r2, [r3, #0]
 800127a:	f7ff ff69 	bl	8001150 <abort_error_>
 800127e:	2001      	movs	r0, #1
 8001280:	210a      	movs	r1, #10
 8001282:	f000 ff3b 	bl	80020fc <event_timer_set_period>
 8001286:	2001      	movs	r0, #1
 8001288:	f000 ff4e 	bl	8002128 <event_timer_wait>
 800128c:	f7ff fa82 	bl	8000794 <lsm9ds0_read>
 8001290:	e7f9      	b.n	8001286 <i2c_sensor_thread+0x1e>
 8001292:	bf00      	nop
 8001294:	2000129c 	.word	0x2000129c

08001298 <line_follower>:
 8001298:	b570      	push	{r4, r5, r6, lr}
 800129a:	f000 f9a5 	bl	80015e8 <line_follower_init>
 800129e:	f000 fb03 	bl	80018a8 <obstacle_init>
 80012a2:	2002      	movs	r0, #2
 80012a4:	2104      	movs	r1, #4
 80012a6:	f000 ff29 	bl	80020fc <event_timer_set_period>
 80012aa:	f000 ff09 	bl	80020c0 <timer_get_time>
 80012ae:	f500 30c3 	add.w	r0, r0, #99840	; 0x18600
 80012b2:	f100 06a0 	add.w	r6, r0, #160	; 0xa0
 80012b6:	2400      	movs	r4, #0
 80012b8:	4d22      	ldr	r5, [pc, #136]	; (8001344 <line_follower+0xac>)
 80012ba:	2002      	movs	r0, #2
 80012bc:	f000 ff34 	bl	8002128 <event_timer_wait>
 80012c0:	6bab      	ldr	r3, [r5, #56]	; 0x38
 80012c2:	f5b3 7f2f 	cmp.w	r3, #700	; 0x2bc
 80012c6:	dc04      	bgt.n	80012d2 <line_follower+0x3a>
 80012c8:	6bab      	ldr	r3, [r5, #56]	; 0x38
 80012ca:	f5b3 7f2f 	cmp.w	r3, #700	; 0x2bc
 80012ce:	dc0d      	bgt.n	80012ec <line_follower+0x54>
 80012d0:	e017      	b.n	8001302 <line_follower+0x6a>
 80012d2:	4b1d      	ldr	r3, [pc, #116]	; (8001348 <line_follower+0xb0>)
 80012d4:	f9b3 3000 	ldrsh.w	r3, [r3]
 80012d8:	f5b3 5ffa 	cmp.w	r3, #8000	; 0x1f40
 80012dc:	ddf4      	ble.n	80012c8 <line_follower+0x30>
 80012de:	f001 fc61 	bl	8002ba4 <get_mode_jumper>
 80012e2:	2800      	cmp	r0, #0
 80012e4:	d1f0      	bne.n	80012c8 <line_follower+0x30>
 80012e6:	f000 fae5 	bl	80018b4 <obstacle_main>
 80012ea:	e013      	b.n	8001314 <line_follower+0x7c>
 80012ec:	4b16      	ldr	r3, [pc, #88]	; (8001348 <line_follower+0xb0>)
 80012ee:	f9b3 2000 	ldrsh.w	r2, [r3]
 80012f2:	f643 2398 	movw	r3, #15000	; 0x3a98
 80012f6:	429a      	cmp	r2, r3
 80012f8:	dd03      	ble.n	8001302 <line_follower+0x6a>
 80012fa:	f001 fc53 	bl	8002ba4 <get_mode_jumper>
 80012fe:	2801      	cmp	r0, #1
 8001300:	d0f1      	beq.n	80012e6 <line_follower+0x4e>
 8001302:	f895 3030 	ldrb.w	r3, [r5, #48]	; 0x30
 8001306:	2b08      	cmp	r3, #8
 8001308:	d102      	bne.n	8001310 <line_follower+0x78>
 800130a:	f000 f991 	bl	8001630 <line_follower_main>
 800130e:	e001      	b.n	8001314 <line_follower+0x7c>
 8001310:	f000 fb20 	bl	8001954 <broken_line_main>
 8001314:	3401      	adds	r4, #1
 8001316:	2314      	movs	r3, #20
 8001318:	fbb4 f2f3 	udiv	r2, r4, r3
 800131c:	fb03 4312 	mls	r3, r3, r2, r4
 8001320:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001324:	b913      	cbnz	r3, 800132c <line_follower+0x94>
 8001326:	f001 fc11 	bl	8002b4c <led_on>
 800132a:	e001      	b.n	8001330 <line_follower+0x98>
 800132c:	f001 fc20 	bl	8002b70 <led_off>
 8001330:	f000 fec6 	bl	80020c0 <timer_get_time>
 8001334:	4286      	cmp	r6, r0
 8001336:	d2bf      	bcs.n	80012b8 <line_follower+0x20>
 8001338:	2000      	movs	r0, #0
 800133a:	4601      	mov	r1, r0
 800133c:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8001340:	f001 ba80 	b.w	8002844 <drv8834_run>
 8001344:	200003a8 	.word	0x200003a8
 8001348:	2000032c 	.word	0x2000032c

0800134c <main_thread>:
 800134c:	b510      	push	{r4, lr}
 800134e:	4825      	ldr	r0, [pc, #148]	; (80013e4 <main_thread+0x98>)
 8001350:	4c25      	ldr	r4, [pc, #148]	; (80013e8 <main_thread+0x9c>)
 8001352:	f7ff f8bf 	bl	80004d4 <printf_>
 8001356:	f44f 7096 	mov.w	r0, #300	; 0x12c
 800135a:	f000 febf 	bl	80020dc <timer_delay_ms>
 800135e:	2300      	movs	r3, #0
 8001360:	6023      	str	r3, [r4, #0]
 8001362:	4922      	ldr	r1, [pc, #136]	; (80013ec <main_thread+0xa0>)
 8001364:	4822      	ldr	r0, [pc, #136]	; (80013f0 <main_thread+0xa4>)
 8001366:	f44f 7200 	mov.w	r2, #512	; 0x200
 800136a:	2306      	movs	r3, #6
 800136c:	f7fe ff8e 	bl	800028c <create_thread>
 8001370:	4920      	ldr	r1, [pc, #128]	; (80013f4 <main_thread+0xa8>)
 8001372:	4821      	ldr	r0, [pc, #132]	; (80013f8 <main_thread+0xac>)
 8001374:	f44f 7200 	mov.w	r2, #512	; 0x200
 8001378:	2306      	movs	r3, #6
 800137a:	f7fe ff87 	bl	800028c <create_thread>
 800137e:	491f      	ldr	r1, [pc, #124]	; (80013fc <main_thread+0xb0>)
 8001380:	481f      	ldr	r0, [pc, #124]	; (8001400 <main_thread+0xb4>)
 8001382:	f44f 7200 	mov.w	r2, #512	; 0x200
 8001386:	231a      	movs	r3, #26
 8001388:	f7fe ff80 	bl	800028c <create_thread>
 800138c:	f000 fae0 	bl	8001950 <broken_line_init>
 8001390:	f000 fa8a 	bl	80018a8 <obstacle_init>
 8001394:	f001 fc06 	bl	8002ba4 <get_mode_jumper>
 8001398:	4601      	mov	r1, r0
 800139a:	481a      	ldr	r0, [pc, #104]	; (8001404 <main_thread+0xb8>)
 800139c:	f7ff f89a 	bl	80004d4 <printf_>
 80013a0:	6823      	ldr	r3, [r4, #0]
 80013a2:	b13b      	cbz	r3, 80013b4 <main_thread+0x68>
 80013a4:	4818      	ldr	r0, [pc, #96]	; (8001408 <main_thread+0xbc>)
 80013a6:	f7ff f895 	bl	80004d4 <printf_>
 80013aa:	f44f 60fa 	mov.w	r0, #2000	; 0x7d0
 80013ae:	f000 fe95 	bl	80020dc <timer_delay_ms>
 80013b2:	e7f7      	b.n	80013a4 <main_thread+0x58>
 80013b4:	f001 fbee 	bl	8002b94 <get_key>
 80013b8:	b128      	cbz	r0, 80013c6 <main_thread+0x7a>
 80013ba:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 80013be:	f000 fe8d 	bl	80020dc <timer_delay_ms>
 80013c2:	f7ff ff69 	bl	8001298 <line_follower>
 80013c6:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 80013ca:	f001 fbbf 	bl	8002b4c <led_on>
 80013ce:	2064      	movs	r0, #100	; 0x64
 80013d0:	f000 fe84 	bl	80020dc <timer_delay_ms>
 80013d4:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 80013d8:	f001 fbca 	bl	8002b70 <led_off>
 80013dc:	20c8      	movs	r0, #200	; 0xc8
 80013de:	f000 fe7d 	bl	80020dc <timer_delay_ms>
 80013e2:	e7dd      	b.n	80013a0 <main_thread+0x54>
 80013e4:	08002c92 	.word	0x08002c92
 80013e8:	2000129c 	.word	0x2000129c
 80013ec:	20000c9c 	.word	0x20000c9c
 80013f0:	08001239 	.word	0x08001239
 80013f4:	2000109c 	.word	0x2000109c
 80013f8:	08001269 	.word	0x08001269
 80013fc:	20000e9c 	.word	0x20000e9c
 8001400:	08001199 	.word	0x08001199
 8001404:	08002ccd 	.word	0x08002ccd
 8001408:	08002cd8 	.word	0x08002cd8

0800140c <q_predictor_init>:
 800140c:	4b24      	ldr	r3, [pc, #144]	; (80014a0 <q_predictor_init+0x94>)
 800140e:	2200      	movs	r2, #0
 8001410:	4619      	mov	r1, r3
 8001412:	b570      	push	{r4, r5, r6, lr}
 8001414:	4608      	mov	r0, r1
 8001416:	601a      	str	r2, [r3, #0]
 8001418:	605a      	str	r2, [r3, #4]
 800141a:	f103 0208 	add.w	r2, r3, #8
 800141e:	3348      	adds	r3, #72	; 0x48
 8001420:	2400      	movs	r4, #0
 8001422:	f842 4b04 	str.w	r4, [r2], #4
 8001426:	429a      	cmp	r2, r3
 8001428:	d1fa      	bne.n	8001420 <q_predictor_init+0x14>
 800142a:	2200      	movs	r2, #0
 800142c:	eb01 0442 	add.w	r4, r1, r2, lsl #1
 8001430:	2300      	movs	r3, #0
 8001432:	4e1c      	ldr	r6, [pc, #112]	; (80014a4 <q_predictor_init+0x98>)
 8001434:	4416      	add	r6, r2
 8001436:	eddf 7a1c 	vldr	s15, [pc, #112]	; 80014a8 <q_predictor_init+0x9c>
 800143a:	5ef6      	ldrsh	r6, [r6, r3]
 800143c:	ee07 6a10 	vmov	s14, r6
 8001440:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 8001444:	eb04 0543 	add.w	r5, r4, r3, lsl #1
 8001448:	ee87 7a27 	vdiv.f32	s14, s14, s15
 800144c:	3302      	adds	r3, #2
 800144e:	2b20      	cmp	r3, #32
 8001450:	ed85 7a12 	vstr	s14, [r5, #72]	; 0x48
 8001454:	d1ed      	bne.n	8001432 <q_predictor_init+0x26>
 8001456:	3220      	adds	r2, #32
 8001458:	f5b2 7f80 	cmp.w	r2, #256	; 0x100
 800145c:	d1e6      	bne.n	800142c <q_predictor_init+0x20>
 800145e:	2300      	movs	r3, #0
 8001460:	4912      	ldr	r1, [pc, #72]	; (80014ac <q_predictor_init+0xa0>)
 8001462:	5e59      	ldrsh	r1, [r3, r1]
 8001464:	ee07 1a10 	vmov	s14, r1
 8001468:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 800146c:	eb00 0243 	add.w	r2, r0, r3, lsl #1
 8001470:	ee87 7a27 	vdiv.f32	s14, s14, s15
 8001474:	3302      	adds	r3, #2
 8001476:	2b10      	cmp	r3, #16
 8001478:	ed82 7a92 	vstr	s14, [r2, #584]	; 0x248
 800147c:	d1f0      	bne.n	8001460 <q_predictor_init+0x54>
 800147e:	2300      	movs	r3, #0
 8001480:	490b      	ldr	r1, [pc, #44]	; (80014b0 <q_predictor_init+0xa4>)
 8001482:	5e59      	ldrsh	r1, [r3, r1]
 8001484:	ee07 1a10 	vmov	s14, r1
 8001488:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 800148c:	eb00 0243 	add.w	r2, r0, r3, lsl #1
 8001490:	ee87 7a27 	vdiv.f32	s14, s14, s15
 8001494:	3302      	adds	r3, #2
 8001496:	2b10      	cmp	r3, #16
 8001498:	ed82 7a9a 	vstr	s14, [r2, #616]	; 0x268
 800149c:	d1f0      	bne.n	8001480 <q_predictor_init+0x74>
 800149e:	bd70      	pop	{r4, r5, r6, pc}
 80014a0:	20000a08 	.word	0x20000a08
 80014a4:	200000b0 	.word	0x200000b0
 80014a8:	447a0000 	.word	0x447a0000
 80014ac:	200000a0 	.word	0x200000a0
 80014b0:	200001e4 	.word	0x200001e4

080014b4 <q_predictor_process>:
 80014b4:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 80014b8:	4b44      	ldr	r3, [pc, #272]	; (80015cc <q_predictor_process+0x118>)
 80014ba:	ed2d 8b02 	vpush	{d8}
 80014be:	f1a3 0948 	sub.w	r9, r3, #72	; 0x48
 80014c2:	4680      	mov	r8, r0
 80014c4:	f109 020c 	add.w	r2, r9, #12
 80014c8:	464f      	mov	r7, r9
 80014ca:	f853 1c08 	ldr.w	r1, [r3, #-8]
 80014ce:	f843 1d04 	str.w	r1, [r3, #-4]!
 80014d2:	4293      	cmp	r3, r2
 80014d4:	d1f9      	bne.n	80014ca <q_predictor_process+0x16>
 80014d6:	4640      	mov	r0, r8
 80014d8:	f7ff f8ae 	bl	8000638 <m_abs>
 80014dc:	2500      	movs	r5, #0
 80014de:	eddf 8a3c 	vldr	s17, [pc, #240]	; 80015d0 <q_predictor_process+0x11c>
 80014e2:	60b8      	str	r0, [r7, #8]
 80014e4:	462e      	mov	r6, r5
 80014e6:	ed9f 8a3b 	vldr	s16, [pc, #236]	; 80015d4 <q_predictor_process+0x120>
 80014ea:	eb09 1a86 	add.w	sl, r9, r6, lsl #6
 80014ee:	2400      	movs	r4, #0
 80014f0:	193a      	adds	r2, r7, r4
 80014f2:	eb0a 0304 	add.w	r3, sl, r4
 80014f6:	ed92 7a02 	vldr	s14, [r2, #8]
 80014fa:	edd3 7a12 	vldr	s15, [r3, #72]	; 0x48
 80014fe:	ee77 7a67 	vsub.f32	s15, s14, s15
 8001502:	3404      	adds	r4, #4
 8001504:	ee17 0a90 	vmov	r0, s15
 8001508:	f7ff f896 	bl	8000638 <m_abs>
 800150c:	ee07 0a90 	vmov	s15, r0
 8001510:	2c40      	cmp	r4, #64	; 0x40
 8001512:	ee38 8a27 	vadd.f32	s16, s16, s15
 8001516:	d1eb      	bne.n	80014f0 <q_predictor_process+0x3c>
 8001518:	eeb4 8ae8 	vcmpe.f32	s16, s17
 800151c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001520:	bf48      	it	mi
 8001522:	4635      	movmi	r5, r6
 8001524:	f106 0601 	add.w	r6, r6, #1
 8001528:	bf58      	it	pl
 800152a:	eeb0 8a68 	vmovpl.f32	s16, s17
 800152e:	2e08      	cmp	r6, #8
 8001530:	d002      	beq.n	8001538 <q_predictor_process+0x84>
 8001532:	eef0 8a48 	vmov.f32	s17, s16
 8001536:	e7d6      	b.n	80014e6 <q_predictor_process+0x32>
 8001538:	eb07 1085 	add.w	r0, r7, r5, lsl #6
 800153c:	2300      	movs	r3, #0
 800153e:	18f9      	adds	r1, r7, r3
 8001540:	18c2      	adds	r2, r0, r3
 8001542:	ed91 7a02 	vldr	s14, [r1, #8]
 8001546:	ed9f 6a24 	vldr	s12, [pc, #144]	; 80015d8 <q_predictor_process+0x124>
 800154a:	edd2 7a12 	vldr	s15, [r2, #72]	; 0x48
 800154e:	eddf 6a23 	vldr	s13, [pc, #140]	; 80015dc <q_predictor_process+0x128>
 8001552:	ee27 7a06 	vmul.f32	s14, s14, s12
 8001556:	ee07 7aa6 	vmla.f32	s14, s15, s13
 800155a:	3304      	adds	r3, #4
 800155c:	2b40      	cmp	r3, #64	; 0x40
 800155e:	4c20      	ldr	r4, [pc, #128]	; (80015e0 <q_predictor_process+0x12c>)
 8001560:	ed82 7a12 	vstr	s14, [r2, #72]	; 0x48
 8001564:	d1eb      	bne.n	800153e <q_predictor_process+0x8a>
 8001566:	6823      	ldr	r3, [r4, #0]
 8001568:	6025      	str	r5, [r4, #0]
 800156a:	6063      	str	r3, [r4, #4]
 800156c:	eb04 0383 	add.w	r3, r4, r3, lsl #2
 8001570:	ed93 5a9a 	vldr	s10, [r3, #616]	; 0x268
 8001574:	edd4 7a02 	vldr	s15, [r4, #8]
 8001578:	eddf 5a1a 	vldr	s11, [pc, #104]	; 80015e4 <q_predictor_process+0x130>
 800157c:	ee45 7a25 	vmla.f32	s15, s10, s11
 8001580:	359a      	adds	r5, #154	; 0x9a
 8001582:	eb04 0585 	add.w	r5, r4, r5, lsl #2
 8001586:	ed95 7a00 	vldr	s14, [r5]
 800158a:	ee67 7a86 	vmul.f32	s15, s15, s12
 800158e:	ee47 7a26 	vmla.f32	s15, s14, s13
 8001592:	2100      	movs	r1, #0
 8001594:	ee17 0a90 	vmov	r0, s15
 8001598:	f04f 527e 	mov.w	r2, #1065353216	; 0x3f800000
 800159c:	edc5 7a00 	vstr	s15, [r5]
 80015a0:	f7ff f868 	bl	8000674 <m_saturate>
 80015a4:	6823      	ldr	r3, [r4, #0]
 80015a6:	6028      	str	r0, [r5, #0]
 80015a8:	eb04 0483 	add.w	r4, r4, r3, lsl #2
 80015ac:	4640      	mov	r0, r8
 80015ae:	ed94 8a92 	vldr	s16, [r4, #584]	; 0x248
 80015b2:	f7ff f84d 	bl	8000650 <m_sgn>
 80015b6:	ee07 0a90 	vmov	s15, r0
 80015ba:	ee68 7a27 	vmul.f32	s15, s16, s15
 80015be:	ecbd 8b02 	vpop	{d8}
 80015c2:	ee17 0a90 	vmov	r0, s15
 80015c6:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80015ca:	bf00      	nop
 80015cc:	20000a50 	.word	0x20000a50
 80015d0:	43200000 	.word	0x43200000
 80015d4:	00000000 	.word	0x00000000
 80015d8:	3d000000 	.word	0x3d000000
 80015dc:	3f780000 	.word	0x3f780000
 80015e0:	20000a08 	.word	0x20000a08
 80015e4:	3e99999a 	.word	0x3e99999a

080015e8 <line_follower_init>:
 80015e8:	b507      	push	{r0, r1, r2, lr}
 80015ea:	4b0a      	ldr	r3, [pc, #40]	; (8001614 <line_follower_init+0x2c>)
 80015ec:	4a0a      	ldr	r2, [pc, #40]	; (8001618 <line_follower_init+0x30>)
 80015ee:	480b      	ldr	r0, [pc, #44]	; (800161c <line_follower_init+0x34>)
 80015f0:	6013      	str	r3, [r2, #0]
 80015f2:	4b0b      	ldr	r3, [pc, #44]	; (8001620 <line_follower_init+0x38>)
 80015f4:	490b      	ldr	r1, [pc, #44]	; (8001624 <line_follower_init+0x3c>)
 80015f6:	6053      	str	r3, [r2, #4]
 80015f8:	2300      	movs	r3, #0
 80015fa:	6093      	str	r3, [r2, #8]
 80015fc:	4a0a      	ldr	r2, [pc, #40]	; (8001628 <line_follower_init+0x40>)
 80015fe:	9301      	str	r3, [sp, #4]
 8001600:	9200      	str	r2, [sp, #0]
 8001602:	4a0a      	ldr	r2, [pc, #40]	; (800162c <line_follower_init+0x44>)
 8001604:	f7ff f85c 	bl	80006c0 <pid_init>
 8001608:	b003      	add	sp, #12
 800160a:	f85d eb04 	ldr.w	lr, [sp], #4
 800160e:	f7ff befd 	b.w	800140c <q_predictor_init>
 8001612:	bf00      	nop
 8001614:	3ecccccd 	.word	0x3ecccccd
 8001618:	20000c90 	.word	0x20000c90
 800161c:	200014a0 	.word	0x200014a0
 8001620:	3f4ccccd 	.word	0x3f4ccccd
 8001624:	42c80000 	.word	0x42c80000
 8001628:	4090f5c3 	.word	0x4090f5c3
 800162c:	3ea6e979 	.word	0x3ea6e979

08001630 <line_follower_main>:
 8001630:	b538      	push	{r3, r4, r5, lr}
 8001632:	4b35      	ldr	r3, [pc, #212]	; (8001708 <line_follower_main+0xd8>)
 8001634:	4c35      	ldr	r4, [pc, #212]	; (800170c <line_follower_main+0xdc>)
 8001636:	ed2d 8b02 	vpush	{d8}
 800163a:	ed93 8a0d 	vldr	s16, [r3, #52]	; 0x34
 800163e:	eddf 7a34 	vldr	s15, [pc, #208]	; 8001710 <line_follower_main+0xe0>
 8001642:	eeb8 8ac8 	vcvt.f32.s32	s16, s16
 8001646:	f04f 557c 	mov.w	r5, #1056964608	; 0x3f000000
 800164a:	ee28 8a27 	vmul.f32	s16, s16, s15
 800164e:	462a      	mov	r2, r5
 8001650:	2100      	movs	r1, #0
 8001652:	ee18 0a10 	vmov	r0, s16
 8001656:	f7ff ff2d 	bl	80014b4 <q_predictor_process>
 800165a:	ee07 0a90 	vmov	s15, r0
 800165e:	ee37 8ac8 	vsub.f32	s16, s15, s16
 8001662:	ee18 0a10 	vmov	r0, s16
 8001666:	f7fe ffe7 	bl	8000638 <m_abs>
 800166a:	ed9f 7a2a 	vldr	s14, [pc, #168]	; 8001714 <line_follower_main+0xe4>
 800166e:	ee07 0a90 	vmov	s15, r0
 8001672:	ed9f 6a29 	vldr	s12, [pc, #164]	; 8001718 <line_follower_main+0xe8>
 8001676:	ee77 5a67 	vsub.f32	s11, s14, s15
 800167a:	edd4 6a00 	vldr	s13, [r4]
 800167e:	ee45 6a86 	vmla.f32	s13, s11, s12
 8001682:	ee16 0a90 	vmov	r0, s13
 8001686:	eddf 6a25 	vldr	s13, [pc, #148]	; 800171c <line_follower_main+0xec>
 800168a:	ee07 7ae6 	vmls.f32	s14, s15, s13
 800168e:	ee17 1a10 	vmov	r1, s14
 8001692:	f7ff f806 	bl	80006a2 <m_min>
 8001696:	4629      	mov	r1, r5
 8001698:	6862      	ldr	r2, [r4, #4]
 800169a:	6020      	str	r0, [r4, #0]
 800169c:	f7fe ffea 	bl	8000674 <m_saturate>
 80016a0:	4b1f      	ldr	r3, [pc, #124]	; (8001720 <line_follower_main+0xf0>)
 80016a2:	6020      	str	r0, [r4, #0]
 80016a4:	f9b3 2000 	ldrsh.w	r2, [r3]
 80016a8:	4b1e      	ldr	r3, [pc, #120]	; (8001724 <line_follower_main+0xf4>)
 80016aa:	429a      	cmp	r2, r3
 80016ac:	bfb8      	it	lt
 80016ae:	6025      	strlt	r5, [r4, #0]
 80016b0:	f001 fa78 	bl	8002ba4 <get_mode_jumper>
 80016b4:	2801      	cmp	r0, #1
 80016b6:	bf08      	it	eq
 80016b8:	4b1b      	ldreq	r3, [pc, #108]	; (8001728 <line_follower_main+0xf8>)
 80016ba:	481c      	ldr	r0, [pc, #112]	; (800172c <line_follower_main+0xfc>)
 80016bc:	bf08      	it	eq
 80016be:	6023      	streq	r3, [r4, #0]
 80016c0:	ee18 1a10 	vmov	r1, s16
 80016c4:	f7ff f82c 	bl	8000720 <pid_process>
 80016c8:	edd4 6a00 	vldr	s13, [r4]
 80016cc:	ee07 0a90 	vmov	s15, r0
 80016d0:	ed9f 7a17 	vldr	s14, [pc, #92]	; 8001730 <line_follower_main+0x100>
 80016d4:	ee36 6aa7 	vadd.f32	s12, s13, s15
 80016d8:	ee76 7ae7 	vsub.f32	s15, s13, s15
 80016dc:	ee26 6a07 	vmul.f32	s12, s12, s14
 80016e0:	ee27 7a87 	vmul.f32	s14, s15, s14
 80016e4:	ecbd 8b02 	vpop	{d8}
 80016e8:	eebd 6ac6 	vcvt.s32.f32	s12, s12
 80016ec:	eebd 7ac7 	vcvt.s32.f32	s14, s14
 80016f0:	60a0      	str	r0, [r4, #8]
 80016f2:	ee17 1a10 	vmov	r1, s14
 80016f6:	ee16 0a10 	vmov	r0, s12
 80016fa:	b209      	sxth	r1, r1
 80016fc:	b200      	sxth	r0, r0
 80016fe:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8001702:	f001 b89f 	b.w	8002844 <drv8834_run>
 8001706:	bf00      	nop
 8001708:	200003a8 	.word	0x200003a8
 800170c:	20000c90 	.word	0x20000c90
 8001710:	3b800000 	.word	0x3b800000
 8001714:	3f800000 	.word	0x3f800000
 8001718:	3ca3d70a 	.word	0x3ca3d70a
 800171c:	40a00000 	.word	0x40a00000
 8001720:	2000032c 	.word	0x2000032c
 8001724:	fffff448 	.word	0xfffff448
 8001728:	3eb33333 	.word	0x3eb33333
 800172c:	200014a0 	.word	0x200014a0
 8001730:	42c80000 	.word	0x42c80000

08001734 <robot_on_line>:
 8001734:	4b03      	ldr	r3, [pc, #12]	; (8001744 <robot_on_line+0x10>)
 8001736:	f893 0030 	ldrb.w	r0, [r3, #48]	; 0x30
 800173a:	f1b0 0308 	subs.w	r3, r0, #8
 800173e:	4258      	negs	r0, r3
 8001740:	4158      	adcs	r0, r3
 8001742:	4770      	bx	lr
 8001744:	200003a8 	.word	0x200003a8

08001748 <obstacle_rotate_robot>:
 8001748:	b538      	push	{r3, r4, r5, lr}
 800174a:	f44f 65c8 	mov.w	r5, #1600	; 0x640
 800174e:	ed2d 8b02 	vpush	{d8}
 8001752:	ed9f 8a1d 	vldr	s16, [pc, #116]	; 80017c8 <obstacle_rotate_robot+0x80>
 8001756:	4345      	muls	r5, r0
 8001758:	2400      	movs	r4, #0
 800175a:	ea84 72e4 	eor.w	r2, r4, r4, asr #31
 800175e:	eba2 72e4 	sub.w	r2, r2, r4, asr #31
 8001762:	ea85 73e5 	eor.w	r3, r5, r5, asr #31
 8001766:	eba3 73e5 	sub.w	r3, r3, r5, asr #31
 800176a:	429a      	cmp	r2, r3
 800176c:	da21      	bge.n	80017b2 <obstacle_rotate_robot+0x6a>
 800176e:	ed9f 7a17 	vldr	s14, [pc, #92]	; 80017cc <obstacle_rotate_robot+0x84>
 8001772:	eddf 7a17 	vldr	s15, [pc, #92]	; 80017d0 <obstacle_rotate_robot+0x88>
 8001776:	ee48 7a07 	vmla.f32	s15, s16, s14
 800177a:	4b16      	ldr	r3, [pc, #88]	; (80017d4 <obstacle_rotate_robot+0x8c>)
 800177c:	eeb0 8a67 	vmov.f32	s16, s15
 8001780:	eddf 7a15 	vldr	s15, [pc, #84]	; 80017d8 <obstacle_rotate_robot+0x90>
 8001784:	ee68 7a27 	vmul.f32	s15, s16, s15
 8001788:	f9b3 3010 	ldrsh.w	r3, [r3, #16]
 800178c:	eefd 7ae7 	vcvt.s32.f32	s15, s15
 8001790:	441c      	add	r4, r3
 8001792:	ee17 3a90 	vmov	r3, s15
 8001796:	2d00      	cmp	r5, #0
 8001798:	b219      	sxth	r1, r3
 800179a:	f1c3 0300 	rsb	r3, r3, #0
 800179e:	bfca      	itet	gt
 80017a0:	4608      	movgt	r0, r1
 80017a2:	b218      	sxthle	r0, r3
 80017a4:	b219      	sxthgt	r1, r3
 80017a6:	f001 f84d 	bl	8002844 <drv8834_run>
 80017aa:	200a      	movs	r0, #10
 80017ac:	f000 fc96 	bl	80020dc <timer_delay_ms>
 80017b0:	e7d3      	b.n	800175a <obstacle_rotate_robot+0x12>
 80017b2:	2000      	movs	r0, #0
 80017b4:	4601      	mov	r1, r0
 80017b6:	f001 f845 	bl	8002844 <drv8834_run>
 80017ba:	ecbd 8b02 	vpop	{d8}
 80017be:	2064      	movs	r0, #100	; 0x64
 80017c0:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 80017c4:	f000 bc8a 	b.w	80020dc <timer_delay_ms>
 80017c8:	00000000 	.word	0x00000000
 80017cc:	3f4ccccd 	.word	0x3f4ccccd
 80017d0:	3e0f5c28 	.word	0x3e0f5c28
 80017d4:	2000032c 	.word	0x2000032c
 80017d8:	42c80000 	.word	0x42c80000

080017dc <obstacle_go_forward>:
 80017dc:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80017e0:	4688      	mov	r8, r1
 80017e2:	ed2d 8b04 	vpush	{d8-d9}
 80017e6:	4616      	mov	r6, r2
 80017e8:	4607      	mov	r7, r0
 80017ea:	b950      	cbnz	r0, 8001802 <obstacle_go_forward+0x26>
 80017ec:	2000      	movs	r0, #0
 80017ee:	4601      	mov	r1, r0
 80017f0:	f001 f828 	bl	8002844 <drv8834_run>
 80017f4:	ecbd 8b04 	vpop	{d8-d9}
 80017f8:	2064      	movs	r0, #100	; 0x64
 80017fa:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 80017fe:	f000 bc6d 	b.w	80020dc <timer_delay_ms>
 8001802:	ed9f 8a23 	vldr	s16, [pc, #140]	; 8001890 <obstacle_go_forward+0xb4>
 8001806:	2400      	movs	r4, #0
 8001808:	eef0 7a48 	vmov.f32	s15, s16
 800180c:	4625      	mov	r5, r4
 800180e:	eeb0 9a48 	vmov.f32	s18, s16
 8001812:	4545      	cmp	r5, r8
 8001814:	d2ea      	bcs.n	80017ec <obstacle_go_forward+0x10>
 8001816:	4b1f      	ldr	r3, [pc, #124]	; (8001894 <obstacle_go_forward+0xb8>)
 8001818:	f9b3 3010 	ldrsh.w	r3, [r3, #16]
 800181c:	441c      	add	r4, r3
 800181e:	ee07 4a10 	vmov	s14, r4
 8001822:	eef8 8ac7 	vcvt.f32.s32	s17, s14
 8001826:	ed9f 7a1c 	vldr	s14, [pc, #112]	; 8001898 <obstacle_go_forward+0xbc>
 800182a:	ee79 8a68 	vsub.f32	s17, s18, s17
 800182e:	350a      	adds	r5, #10
 8001830:	ee78 7ae7 	vsub.f32	s15, s17, s15
 8001834:	ee67 7a87 	vmul.f32	s15, s15, s14
 8001838:	ed9f 7a18 	vldr	s14, [pc, #96]	; 800189c <obstacle_go_forward+0xc0>
 800183c:	ee48 7a87 	vmla.f32	s15, s17, s14
 8001840:	ee07 7a10 	vmov	s14, r7
 8001844:	eef8 6ac7 	vcvt.f32.s32	s13, s14
 8001848:	ed9f 7a15 	vldr	s14, [pc, #84]	; 80018a0 <obstacle_go_forward+0xc4>
 800184c:	ee26 7a87 	vmul.f32	s14, s13, s14
 8001850:	eddf 6a14 	vldr	s13, [pc, #80]	; 80018a4 <obstacle_go_forward+0xc8>
 8001854:	ee08 7a26 	vmla.f32	s14, s16, s13
 8001858:	eeb0 8a47 	vmov.f32	s16, s14
 800185c:	ee37 7a67 	vsub.f32	s14, s14, s15
 8001860:	ee78 7a27 	vadd.f32	s15, s16, s15
 8001864:	eebd 7ac7 	vcvt.s32.f32	s14, s14
 8001868:	eefd 7ae7 	vcvt.s32.f32	s15, s15
 800186c:	ee17 0a10 	vmov	r0, s14
 8001870:	ee17 1a90 	vmov	r1, s15
 8001874:	b200      	sxth	r0, r0
 8001876:	b209      	sxth	r1, r1
 8001878:	f000 ffe4 	bl	8002844 <drv8834_run>
 800187c:	200a      	movs	r0, #10
 800187e:	f000 fc2d 	bl	80020dc <timer_delay_ms>
 8001882:	b116      	cbz	r6, 800188a <obstacle_go_forward+0xae>
 8001884:	47b0      	blx	r6
 8001886:	2800      	cmp	r0, #0
 8001888:	d1b0      	bne.n	80017ec <obstacle_go_forward+0x10>
 800188a:	eef0 7a68 	vmov.f32	s15, s17
 800188e:	e7c0      	b.n	8001812 <obstacle_go_forward+0x36>
 8001890:	00000000 	.word	0x00000000
 8001894:	2000032c 	.word	0x2000032c
 8001898:	3a83126f 	.word	0x3a83126f
 800189c:	399d4952 	.word	0x399d4952
 80018a0:	3e4ccccc 	.word	0x3e4ccccc
 80018a4:	3f4ccccd 	.word	0x3f4ccccd

080018a8 <obstacle_init>:
 80018a8:	4b01      	ldr	r3, [pc, #4]	; (80018b0 <obstacle_init+0x8>)
 80018aa:	2200      	movs	r2, #0
 80018ac:	601a      	str	r2, [r3, #0]
 80018ae:	4770      	bx	lr
 80018b0:	200001f4 	.word	0x200001f4

080018b4 <obstacle_main>:
 80018b4:	4b23      	ldr	r3, [pc, #140]	; (8001944 <obstacle_main+0x90>)
 80018b6:	b510      	push	{r4, lr}
 80018b8:	2400      	movs	r4, #0
 80018ba:	639c      	str	r4, [r3, #56]	; 0x38
 80018bc:	f001 f972 	bl	8002ba4 <get_mode_jumper>
 80018c0:	4602      	mov	r2, r0
 80018c2:	b938      	cbnz	r0, 80018d4 <obstacle_main+0x20>
 80018c4:	2164      	movs	r1, #100	; 0x64
 80018c6:	f7ff ff89 	bl	80017dc <obstacle_go_forward>
 80018ca:	20b4      	movs	r0, #180	; 0xb4
 80018cc:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80018d0:	f7ff bf3a 	b.w	8001748 <obstacle_rotate_robot>
 80018d4:	4620      	mov	r0, r4
 80018d6:	2132      	movs	r1, #50	; 0x32
 80018d8:	4622      	mov	r2, r4
 80018da:	f7ff ff7f 	bl	80017dc <obstacle_go_forward>
 80018de:	f06f 003b 	mvn.w	r0, #59	; 0x3b
 80018e2:	2182      	movs	r1, #130	; 0x82
 80018e4:	4622      	mov	r2, r4
 80018e6:	f7ff ff79 	bl	80017dc <obstacle_go_forward>
 80018ea:	2132      	movs	r1, #50	; 0x32
 80018ec:	4622      	mov	r2, r4
 80018ee:	4620      	mov	r0, r4
 80018f0:	f7ff ff74 	bl	80017dc <obstacle_go_forward>
 80018f4:	205a      	movs	r0, #90	; 0x5a
 80018f6:	f7ff ff27 	bl	8001748 <obstacle_rotate_robot>
 80018fa:	21fa      	movs	r1, #250	; 0xfa
 80018fc:	4622      	mov	r2, r4
 80018fe:	203c      	movs	r0, #60	; 0x3c
 8001900:	f7ff ff6c 	bl	80017dc <obstacle_go_forward>
 8001904:	f06f 0059 	mvn.w	r0, #89	; 0x59
 8001908:	f7ff ff1e 	bl	8001748 <obstacle_rotate_robot>
 800190c:	f44f 71af 	mov.w	r1, #350	; 0x15e
 8001910:	4622      	mov	r2, r4
 8001912:	203c      	movs	r0, #60	; 0x3c
 8001914:	f7ff ff62 	bl	80017dc <obstacle_go_forward>
 8001918:	f06f 0059 	mvn.w	r0, #89	; 0x59
 800191c:	f7ff ff14 	bl	8001748 <obstacle_rotate_robot>
 8001920:	203c      	movs	r0, #60	; 0x3c
 8001922:	2132      	movs	r1, #50	; 0x32
 8001924:	4622      	mov	r2, r4
 8001926:	f7ff ff59 	bl	80017dc <obstacle_go_forward>
 800192a:	4a07      	ldr	r2, [pc, #28]	; (8001948 <obstacle_main+0x94>)
 800192c:	203c      	movs	r0, #60	; 0x3c
 800192e:	21fa      	movs	r1, #250	; 0xfa
 8001930:	f7ff ff54 	bl	80017dc <obstacle_go_forward>
 8001934:	205a      	movs	r0, #90	; 0x5a
 8001936:	f7ff ff07 	bl	8001748 <obstacle_rotate_robot>
 800193a:	4b04      	ldr	r3, [pc, #16]	; (800194c <obstacle_main+0x98>)
 800193c:	681a      	ldr	r2, [r3, #0]
 800193e:	3201      	adds	r2, #1
 8001940:	601a      	str	r2, [r3, #0]
 8001942:	bd10      	pop	{r4, pc}
 8001944:	200003a8 	.word	0x200003a8
 8001948:	08001735 	.word	0x08001735
 800194c:	200001f4 	.word	0x200001f4

08001950 <broken_line_init>:
 8001950:	4770      	bx	lr
	...

08001954 <broken_line_main>:
 8001954:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8001958:	2500      	movs	r5, #0
 800195a:	462c      	mov	r4, r5
 800195c:	462f      	mov	r7, r5
 800195e:	46a8      	mov	r8, r5
 8001960:	462e      	mov	r6, r5
 8001962:	f8df 90f0 	ldr.w	r9, [pc, #240]	; 8001a54 <broken_line_main+0x100>
 8001966:	f899 3030 	ldrb.w	r3, [r9, #48]	; 0x30
 800196a:	2b08      	cmp	r3, #8
 800196c:	d06c      	beq.n	8001a48 <broken_line_main+0xf4>
 800196e:	2005      	movs	r0, #5
 8001970:	f000 fbb4 	bl	80020dc <timer_delay_ms>
 8001974:	2f05      	cmp	r7, #5
 8001976:	d861      	bhi.n	8001a3c <broken_line_main+0xe8>
 8001978:	e8df f007 	tbb	[pc, r7]
 800197c:	38271503 	.word	0x38271503
 8001980:	4d4a      	.short	0x4d4a
 8001982:	2c00      	cmp	r4, #0
 8001984:	d145      	bne.n	8001a12 <broken_line_main+0xbe>
 8001986:	f8d9 3034 	ldr.w	r3, [r9, #52]	; 0x34
 800198a:	2b00      	cmp	r3, #0
 800198c:	f04f 0464 	mov.w	r4, #100	; 0x64
 8001990:	f04f 0701 	mov.w	r7, #1
 8001994:	bfd4      	ite	le
 8001996:	f04f 0832 	movle.w	r8, #50	; 0x32
 800199a:	f04f 0800 	movgt.w	r8, #0
 800199e:	bfd4      	ite	le
 80019a0:	2600      	movle	r6, #0
 80019a2:	2632      	movgt	r6, #50	; 0x32
 80019a4:	e04a      	b.n	8001a3c <broken_line_main+0xe8>
 80019a6:	bba4      	cbnz	r4, 8001a12 <broken_line_main+0xbe>
 80019a8:	f8d9 3034 	ldr.w	r3, [r9, #52]	; 0x34
 80019ac:	2b00      	cmp	r3, #0
 80019ae:	f04f 0464 	mov.w	r4, #100	; 0x64
 80019b2:	f04f 0702 	mov.w	r7, #2
 80019b6:	bfd4      	ite	le
 80019b8:	f06f 0831 	mvnle.w	r8, #49	; 0x31
 80019bc:	f04f 0800 	movgt.w	r8, #0
 80019c0:	bfd4      	ite	le
 80019c2:	2600      	movle	r6, #0
 80019c4:	f06f 0631 	mvngt.w	r6, #49	; 0x31
 80019c8:	e038      	b.n	8001a3c <broken_line_main+0xe8>
 80019ca:	bb14      	cbnz	r4, 8001a12 <broken_line_main+0xbe>
 80019cc:	f8d9 3034 	ldr.w	r3, [r9, #52]	; 0x34
 80019d0:	2b00      	cmp	r3, #0
 80019d2:	f04f 0464 	mov.w	r4, #100	; 0x64
 80019d6:	f04f 0703 	mov.w	r7, #3
 80019da:	bfd4      	ite	le
 80019dc:	f04f 0800 	movle.w	r8, #0
 80019e0:	f04f 0832 	movgt.w	r8, #50	; 0x32
 80019e4:	bfd4      	ite	le
 80019e6:	2632      	movle	r6, #50	; 0x32
 80019e8:	2600      	movgt	r6, #0
 80019ea:	e027      	b.n	8001a3c <broken_line_main+0xe8>
 80019ec:	b98c      	cbnz	r4, 8001a12 <broken_line_main+0xbe>
 80019ee:	f8d9 3034 	ldr.w	r3, [r9, #52]	; 0x34
 80019f2:	2b00      	cmp	r3, #0
 80019f4:	f04f 0464 	mov.w	r4, #100	; 0x64
 80019f8:	f04f 0704 	mov.w	r7, #4
 80019fc:	bfd4      	ite	le
 80019fe:	f04f 0800 	movle.w	r8, #0
 8001a02:	f06f 0831 	mvngt.w	r8, #49	; 0x31
 8001a06:	bfd4      	ite	le
 8001a08:	f06f 0631 	mvnle.w	r6, #49	; 0x31
 8001a0c:	2600      	movgt	r6, #0
 8001a0e:	e015      	b.n	8001a3c <broken_line_main+0xe8>
 8001a10:	b16c      	cbz	r4, 8001a2e <broken_line_main+0xda>
 8001a12:	3c01      	subs	r4, #1
 8001a14:	e012      	b.n	8001a3c <broken_line_main+0xe8>
 8001a16:	b184      	cbz	r4, 8001a3a <broken_line_main+0xe6>
 8001a18:	f241 3387 	movw	r3, #4999	; 0x1387
 8001a1c:	429d      	cmp	r5, r3
 8001a1e:	bfd8      	it	le
 8001a20:	3532      	addle	r5, #50	; 0x32
 8001a22:	2664      	movs	r6, #100	; 0x64
 8001a24:	fb95 f6f6 	sdiv	r6, r5, r6
 8001a28:	3c01      	subs	r4, #1
 8001a2a:	46b0      	mov	r8, r6
 8001a2c:	e006      	b.n	8001a3c <broken_line_main+0xe8>
 8001a2e:	4625      	mov	r5, r4
 8001a30:	2705      	movs	r7, #5
 8001a32:	2432      	movs	r4, #50	; 0x32
 8001a34:	46a8      	mov	r8, r5
 8001a36:	462e      	mov	r6, r5
 8001a38:	e000      	b.n	8001a3c <broken_line_main+0xe8>
 8001a3a:	4627      	mov	r7, r4
 8001a3c:	fa0f f088 	sxth.w	r0, r8
 8001a40:	b231      	sxth	r1, r6
 8001a42:	f000 feff 	bl	8002844 <drv8834_run>
 8001a46:	e78c      	b.n	8001962 <broken_line_main+0xe>
 8001a48:	2000      	movs	r0, #0
 8001a4a:	4601      	mov	r1, r0
 8001a4c:	e8bd 43f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8001a50:	f000 bef8 	b.w	8002844 <drv8834_run>
 8001a54:	200003a8 	.word	0x200003a8

08001a58 <main>:
 8001a58:	b508      	push	{r3, lr}
 8001a5a:	f000 ff99 	bl	8002990 <lib_low_level_init>
 8001a5e:	f7fe fdb3 	bl	80005c8 <lib_os_init>
 8001a62:	4905      	ldr	r1, [pc, #20]	; (8001a78 <main+0x20>)
 8001a64:	4805      	ldr	r0, [pc, #20]	; (8001a7c <main+0x24>)
 8001a66:	f44f 7200 	mov.w	r2, #512	; 0x200
 8001a6a:	2306      	movs	r3, #6
 8001a6c:	f7fe fc0e 	bl	800028c <create_thread>
 8001a70:	f7fe fc06 	bl	8000280 <kernel_start>
 8001a74:	2000      	movs	r0, #0
 8001a76:	bd08      	pop	{r3, pc}
 8001a78:	200012a0 	.word	0x200012a0
 8001a7c:	0800134d 	.word	0x0800134d

08001a80 <RCC_GetClocksFreq>:
 8001a80:	4ba5      	ldr	r3, [pc, #660]	; (8001d18 <RCC_GetClocksFreq+0x298>)
 8001a82:	685a      	ldr	r2, [r3, #4]
 8001a84:	f002 020c 	and.w	r2, r2, #12
 8001a88:	2a04      	cmp	r2, #4
 8001a8a:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8001a8e:	d005      	beq.n	8001a9c <RCC_GetClocksFreq+0x1c>
 8001a90:	2a08      	cmp	r2, #8
 8001a92:	d006      	beq.n	8001aa2 <RCC_GetClocksFreq+0x22>
 8001a94:	4ba1      	ldr	r3, [pc, #644]	; (8001d1c <RCC_GetClocksFreq+0x29c>)
 8001a96:	6003      	str	r3, [r0, #0]
 8001a98:	b9ba      	cbnz	r2, 8001aca <RCC_GetClocksFreq+0x4a>
 8001a9a:	e017      	b.n	8001acc <RCC_GetClocksFreq+0x4c>
 8001a9c:	4b9f      	ldr	r3, [pc, #636]	; (8001d1c <RCC_GetClocksFreq+0x29c>)
 8001a9e:	6003      	str	r3, [r0, #0]
 8001aa0:	e013      	b.n	8001aca <RCC_GetClocksFreq+0x4a>
 8001aa2:	6859      	ldr	r1, [r3, #4]
 8001aa4:	685c      	ldr	r4, [r3, #4]
 8001aa6:	f3c1 4183 	ubfx	r1, r1, #18, #4
 8001aaa:	03e2      	lsls	r2, r4, #15
 8001aac:	f101 0102 	add.w	r1, r1, #2
 8001ab0:	d401      	bmi.n	8001ab6 <RCC_GetClocksFreq+0x36>
 8001ab2:	4a9b      	ldr	r2, [pc, #620]	; (8001d20 <RCC_GetClocksFreq+0x2a0>)
 8001ab4:	e006      	b.n	8001ac4 <RCC_GetClocksFreq+0x44>
 8001ab6:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8001ab8:	4b98      	ldr	r3, [pc, #608]	; (8001d1c <RCC_GetClocksFreq+0x29c>)
 8001aba:	f002 020f 	and.w	r2, r2, #15
 8001abe:	3201      	adds	r2, #1
 8001ac0:	fbb3 f2f2 	udiv	r2, r3, r2
 8001ac4:	434a      	muls	r2, r1
 8001ac6:	6002      	str	r2, [r0, #0]
 8001ac8:	e000      	b.n	8001acc <RCC_GetClocksFreq+0x4c>
 8001aca:	2200      	movs	r2, #0
 8001acc:	4f92      	ldr	r7, [pc, #584]	; (8001d18 <RCC_GetClocksFreq+0x298>)
 8001ace:	4d95      	ldr	r5, [pc, #596]	; (8001d24 <RCC_GetClocksFreq+0x2a4>)
 8001ad0:	687b      	ldr	r3, [r7, #4]
 8001ad2:	f8df 8254 	ldr.w	r8, [pc, #596]	; 8001d28 <RCC_GetClocksFreq+0x2a8>
 8001ad6:	f3c3 1303 	ubfx	r3, r3, #4, #4
 8001ada:	5cec      	ldrb	r4, [r5, r3]
 8001adc:	6803      	ldr	r3, [r0, #0]
 8001ade:	b2e4      	uxtb	r4, r4
 8001ae0:	fa23 f104 	lsr.w	r1, r3, r4
 8001ae4:	6041      	str	r1, [r0, #4]
 8001ae6:	687e      	ldr	r6, [r7, #4]
 8001ae8:	f3c6 2602 	ubfx	r6, r6, #8, #3
 8001aec:	5dae      	ldrb	r6, [r5, r6]
 8001aee:	fa21 f606 	lsr.w	r6, r1, r6
 8001af2:	6086      	str	r6, [r0, #8]
 8001af4:	f8d7 c004 	ldr.w	ip, [r7, #4]
 8001af8:	f3cc 2cc2 	ubfx	ip, ip, #11, #3
 8001afc:	f815 500c 	ldrb.w	r5, [r5, ip]
 8001b00:	b2ed      	uxtb	r5, r5
 8001b02:	40e9      	lsrs	r1, r5
 8001b04:	60c1      	str	r1, [r0, #12]
 8001b06:	f8d7 902c 	ldr.w	r9, [r7, #44]	; 0x2c
 8001b0a:	f3c9 1904 	ubfx	r9, r9, #4, #5
 8001b0e:	f009 0c0f 	and.w	ip, r9, #15
 8001b12:	f019 0f10 	tst.w	r9, #16
 8001b16:	f838 c01c 	ldrh.w	ip, [r8, ip, lsl #1]
 8001b1a:	fa1f fc8c 	uxth.w	ip, ip
 8001b1e:	d007      	beq.n	8001b30 <RCC_GetClocksFreq+0xb0>
 8001b20:	f1bc 0f00 	cmp.w	ip, #0
 8001b24:	d004      	beq.n	8001b30 <RCC_GetClocksFreq+0xb0>
 8001b26:	fbb2 fcfc 	udiv	ip, r2, ip
 8001b2a:	f8c0 c010 	str.w	ip, [r0, #16]
 8001b2e:	e000      	b.n	8001b32 <RCC_GetClocksFreq+0xb2>
 8001b30:	6103      	str	r3, [r0, #16]
 8001b32:	6aff      	ldr	r7, [r7, #44]	; 0x2c
 8001b34:	f3c7 2c44 	ubfx	ip, r7, #9, #5
 8001b38:	f00c 070f 	and.w	r7, ip, #15
 8001b3c:	f01c 0f10 	tst.w	ip, #16
 8001b40:	f838 7017 	ldrh.w	r7, [r8, r7, lsl #1]
 8001b44:	b2bf      	uxth	r7, r7
 8001b46:	d004      	beq.n	8001b52 <RCC_GetClocksFreq+0xd2>
 8001b48:	b11f      	cbz	r7, 8001b52 <RCC_GetClocksFreq+0xd2>
 8001b4a:	fbb2 f7f7 	udiv	r7, r2, r7
 8001b4e:	6147      	str	r7, [r0, #20]
 8001b50:	e000      	b.n	8001b54 <RCC_GetClocksFreq+0xd4>
 8001b52:	6143      	str	r3, [r0, #20]
 8001b54:	4f70      	ldr	r7, [pc, #448]	; (8001d18 <RCC_GetClocksFreq+0x298>)
 8001b56:	f8d7 c030 	ldr.w	ip, [r7, #48]	; 0x30
 8001b5a:	f01c 0f10 	tst.w	ip, #16
 8001b5e:	bf0a      	itet	eq
 8001b60:	f8df c1b8 	ldreq.w	ip, [pc, #440]	; 8001d1c <RCC_GetClocksFreq+0x29c>
 8001b64:	6183      	strne	r3, [r0, #24]
 8001b66:	f8c0 c018 	streq.w	ip, [r0, #24]
 8001b6a:	6b3f      	ldr	r7, [r7, #48]	; 0x30
 8001b6c:	06bf      	lsls	r7, r7, #26
 8001b6e:	bf56      	itet	pl
 8001b70:	4f6a      	ldrpl	r7, [pc, #424]	; (8001d1c <RCC_GetClocksFreq+0x29c>)
 8001b72:	61c3      	strmi	r3, [r0, #28]
 8001b74:	61c7      	strpl	r7, [r0, #28]
 8001b76:	4f68      	ldr	r7, [pc, #416]	; (8001d18 <RCC_GetClocksFreq+0x298>)
 8001b78:	f8d7 c030 	ldr.w	ip, [r7, #48]	; 0x30
 8001b7c:	f01c 0f40 	tst.w	ip, #64	; 0x40
 8001b80:	bf0a      	itet	eq
 8001b82:	f8df c198 	ldreq.w	ip, [pc, #408]	; 8001d1c <RCC_GetClocksFreq+0x29c>
 8001b86:	6203      	strne	r3, [r0, #32]
 8001b88:	f8c0 c020 	streq.w	ip, [r0, #32]
 8001b8c:	6b3f      	ldr	r7, [r7, #48]	; 0x30
 8001b8e:	05ff      	lsls	r7, r7, #23
 8001b90:	d506      	bpl.n	8001ba0 <RCC_GetClocksFreq+0x120>
 8001b92:	4293      	cmp	r3, r2
 8001b94:	d104      	bne.n	8001ba0 <RCC_GetClocksFreq+0x120>
 8001b96:	42a5      	cmp	r5, r4
 8001b98:	d102      	bne.n	8001ba0 <RCC_GetClocksFreq+0x120>
 8001b9a:	005f      	lsls	r7, r3, #1
 8001b9c:	6247      	str	r7, [r0, #36]	; 0x24
 8001b9e:	e000      	b.n	8001ba2 <RCC_GetClocksFreq+0x122>
 8001ba0:	6241      	str	r1, [r0, #36]	; 0x24
 8001ba2:	4f5d      	ldr	r7, [pc, #372]	; (8001d18 <RCC_GetClocksFreq+0x298>)
 8001ba4:	f8d7 c030 	ldr.w	ip, [r7, #48]	; 0x30
 8001ba8:	f41c 5f80 	tst.w	ip, #4096	; 0x1000
 8001bac:	d008      	beq.n	8001bc0 <RCC_GetClocksFreq+0x140>
 8001bae:	4293      	cmp	r3, r2
 8001bb0:	d106      	bne.n	8001bc0 <RCC_GetClocksFreq+0x140>
 8001bb2:	42a5      	cmp	r5, r4
 8001bb4:	d104      	bne.n	8001bc0 <RCC_GetClocksFreq+0x140>
 8001bb6:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8001bba:	f8c0 c028 	str.w	ip, [r0, #40]	; 0x28
 8001bbe:	e000      	b.n	8001bc2 <RCC_GetClocksFreq+0x142>
 8001bc0:	6281      	str	r1, [r0, #40]	; 0x28
 8001bc2:	6b3f      	ldr	r7, [r7, #48]	; 0x30
 8001bc4:	05bf      	lsls	r7, r7, #22
 8001bc6:	d506      	bpl.n	8001bd6 <RCC_GetClocksFreq+0x156>
 8001bc8:	4293      	cmp	r3, r2
 8001bca:	d104      	bne.n	8001bd6 <RCC_GetClocksFreq+0x156>
 8001bcc:	42a5      	cmp	r5, r4
 8001bce:	d102      	bne.n	8001bd6 <RCC_GetClocksFreq+0x156>
 8001bd0:	005f      	lsls	r7, r3, #1
 8001bd2:	62c7      	str	r7, [r0, #44]	; 0x2c
 8001bd4:	e000      	b.n	8001bd8 <RCC_GetClocksFreq+0x158>
 8001bd6:	62c1      	str	r1, [r0, #44]	; 0x2c
 8001bd8:	4f4f      	ldr	r7, [pc, #316]	; (8001d18 <RCC_GetClocksFreq+0x298>)
 8001bda:	f8d7 c030 	ldr.w	ip, [r7, #48]	; 0x30
 8001bde:	f41c 6f80 	tst.w	ip, #1024	; 0x400
 8001be2:	d008      	beq.n	8001bf6 <RCC_GetClocksFreq+0x176>
 8001be4:	4293      	cmp	r3, r2
 8001be6:	d106      	bne.n	8001bf6 <RCC_GetClocksFreq+0x176>
 8001be8:	42a5      	cmp	r5, r4
 8001bea:	d104      	bne.n	8001bf6 <RCC_GetClocksFreq+0x176>
 8001bec:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8001bf0:	f8c0 c04c 	str.w	ip, [r0, #76]	; 0x4c
 8001bf4:	e000      	b.n	8001bf8 <RCC_GetClocksFreq+0x178>
 8001bf6:	64c1      	str	r1, [r0, #76]	; 0x4c
 8001bf8:	6b3f      	ldr	r7, [r7, #48]	; 0x30
 8001bfa:	053f      	lsls	r7, r7, #20
 8001bfc:	d506      	bpl.n	8001c0c <RCC_GetClocksFreq+0x18c>
 8001bfe:	4293      	cmp	r3, r2
 8001c00:	d104      	bne.n	8001c0c <RCC_GetClocksFreq+0x18c>
 8001c02:	42a5      	cmp	r5, r4
 8001c04:	d102      	bne.n	8001c0c <RCC_GetClocksFreq+0x18c>
 8001c06:	005f      	lsls	r7, r3, #1
 8001c08:	6507      	str	r7, [r0, #80]	; 0x50
 8001c0a:	e000      	b.n	8001c0e <RCC_GetClocksFreq+0x18e>
 8001c0c:	6501      	str	r1, [r0, #80]	; 0x50
 8001c0e:	4f42      	ldr	r7, [pc, #264]	; (8001d18 <RCC_GetClocksFreq+0x298>)
 8001c10:	f8d7 c030 	ldr.w	ip, [r7, #48]	; 0x30
 8001c14:	f41c 5f00 	tst.w	ip, #8192	; 0x2000
 8001c18:	d008      	beq.n	8001c2c <RCC_GetClocksFreq+0x1ac>
 8001c1a:	4293      	cmp	r3, r2
 8001c1c:	d106      	bne.n	8001c2c <RCC_GetClocksFreq+0x1ac>
 8001c1e:	42a5      	cmp	r5, r4
 8001c20:	d104      	bne.n	8001c2c <RCC_GetClocksFreq+0x1ac>
 8001c22:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8001c26:	f8c0 c054 	str.w	ip, [r0, #84]	; 0x54
 8001c2a:	e000      	b.n	8001c2e <RCC_GetClocksFreq+0x1ae>
 8001c2c:	6501      	str	r1, [r0, #80]	; 0x50
 8001c2e:	6b3f      	ldr	r7, [r7, #48]	; 0x30
 8001c30:	043f      	lsls	r7, r7, #16
 8001c32:	d506      	bpl.n	8001c42 <RCC_GetClocksFreq+0x1c2>
 8001c34:	4293      	cmp	r3, r2
 8001c36:	d104      	bne.n	8001c42 <RCC_GetClocksFreq+0x1c2>
 8001c38:	42a5      	cmp	r5, r4
 8001c3a:	d102      	bne.n	8001c42 <RCC_GetClocksFreq+0x1c2>
 8001c3c:	005a      	lsls	r2, r3, #1
 8001c3e:	6582      	str	r2, [r0, #88]	; 0x58
 8001c40:	e000      	b.n	8001c44 <RCC_GetClocksFreq+0x1c4>
 8001c42:	6581      	str	r1, [r0, #88]	; 0x58
 8001c44:	4a34      	ldr	r2, [pc, #208]	; (8001d18 <RCC_GetClocksFreq+0x298>)
 8001c46:	6b14      	ldr	r4, [r2, #48]	; 0x30
 8001c48:	07a4      	lsls	r4, r4, #30
 8001c4a:	d014      	beq.n	8001c76 <RCC_GetClocksFreq+0x1f6>
 8001c4c:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8001c4e:	f001 0103 	and.w	r1, r1, #3
 8001c52:	2901      	cmp	r1, #1
 8001c54:	d101      	bne.n	8001c5a <RCC_GetClocksFreq+0x1da>
 8001c56:	6383      	str	r3, [r0, #56]	; 0x38
 8001c58:	e00e      	b.n	8001c78 <RCC_GetClocksFreq+0x1f8>
 8001c5a:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8001c5c:	f001 0103 	and.w	r1, r1, #3
 8001c60:	2902      	cmp	r1, #2
 8001c62:	d102      	bne.n	8001c6a <RCC_GetClocksFreq+0x1ea>
 8001c64:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 8001c68:	e005      	b.n	8001c76 <RCC_GetClocksFreq+0x1f6>
 8001c6a:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8001c6c:	f001 0103 	and.w	r1, r1, #3
 8001c70:	2903      	cmp	r1, #3
 8001c72:	d101      	bne.n	8001c78 <RCC_GetClocksFreq+0x1f8>
 8001c74:	4929      	ldr	r1, [pc, #164]	; (8001d1c <RCC_GetClocksFreq+0x29c>)
 8001c76:	6381      	str	r1, [r0, #56]	; 0x38
 8001c78:	6b12      	ldr	r2, [r2, #48]	; 0x30
 8001c7a:	4927      	ldr	r1, [pc, #156]	; (8001d18 <RCC_GetClocksFreq+0x298>)
 8001c7c:	f412 3f40 	tst.w	r2, #196608	; 0x30000
 8001c80:	d101      	bne.n	8001c86 <RCC_GetClocksFreq+0x206>
 8001c82:	63c6      	str	r6, [r0, #60]	; 0x3c
 8001c84:	e018      	b.n	8001cb8 <RCC_GetClocksFreq+0x238>
 8001c86:	6b0a      	ldr	r2, [r1, #48]	; 0x30
 8001c88:	f402 3240 	and.w	r2, r2, #196608	; 0x30000
 8001c8c:	f5b2 3f80 	cmp.w	r2, #65536	; 0x10000
 8001c90:	d101      	bne.n	8001c96 <RCC_GetClocksFreq+0x216>
 8001c92:	63c3      	str	r3, [r0, #60]	; 0x3c
 8001c94:	e010      	b.n	8001cb8 <RCC_GetClocksFreq+0x238>
 8001c96:	6b0a      	ldr	r2, [r1, #48]	; 0x30
 8001c98:	f402 3240 	and.w	r2, r2, #196608	; 0x30000
 8001c9c:	f5b2 3f00 	cmp.w	r2, #131072	; 0x20000
 8001ca0:	d102      	bne.n	8001ca8 <RCC_GetClocksFreq+0x228>
 8001ca2:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 8001ca6:	e006      	b.n	8001cb6 <RCC_GetClocksFreq+0x236>
 8001ca8:	6b0a      	ldr	r2, [r1, #48]	; 0x30
 8001caa:	f402 3240 	and.w	r2, r2, #196608	; 0x30000
 8001cae:	f5b2 3f40 	cmp.w	r2, #196608	; 0x30000
 8001cb2:	d101      	bne.n	8001cb8 <RCC_GetClocksFreq+0x238>
 8001cb4:	4a19      	ldr	r2, [pc, #100]	; (8001d1c <RCC_GetClocksFreq+0x29c>)
 8001cb6:	63c2      	str	r2, [r0, #60]	; 0x3c
 8001cb8:	4a17      	ldr	r2, [pc, #92]	; (8001d18 <RCC_GetClocksFreq+0x298>)
 8001cba:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8001cbc:	f411 2f40 	tst.w	r1, #786432	; 0xc0000
 8001cc0:	d101      	bne.n	8001cc6 <RCC_GetClocksFreq+0x246>
 8001cc2:	6406      	str	r6, [r0, #64]	; 0x40
 8001cc4:	e018      	b.n	8001cf8 <RCC_GetClocksFreq+0x278>
 8001cc6:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8001cc8:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 8001ccc:	f5b1 2f80 	cmp.w	r1, #262144	; 0x40000
 8001cd0:	d101      	bne.n	8001cd6 <RCC_GetClocksFreq+0x256>
 8001cd2:	6403      	str	r3, [r0, #64]	; 0x40
 8001cd4:	e010      	b.n	8001cf8 <RCC_GetClocksFreq+0x278>
 8001cd6:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8001cd8:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 8001cdc:	f5b1 2f00 	cmp.w	r1, #524288	; 0x80000
 8001ce0:	d102      	bne.n	8001ce8 <RCC_GetClocksFreq+0x268>
 8001ce2:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 8001ce6:	e006      	b.n	8001cf6 <RCC_GetClocksFreq+0x276>
 8001ce8:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8001cea:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 8001cee:	f5b1 2f40 	cmp.w	r1, #786432	; 0xc0000
 8001cf2:	d101      	bne.n	8001cf8 <RCC_GetClocksFreq+0x278>
 8001cf4:	4909      	ldr	r1, [pc, #36]	; (8001d1c <RCC_GetClocksFreq+0x29c>)
 8001cf6:	6401      	str	r1, [r0, #64]	; 0x40
 8001cf8:	6b12      	ldr	r2, [r2, #48]	; 0x30
 8001cfa:	4907      	ldr	r1, [pc, #28]	; (8001d18 <RCC_GetClocksFreq+0x298>)
 8001cfc:	f412 1f40 	tst.w	r2, #3145728	; 0x300000
 8001d00:	d101      	bne.n	8001d06 <RCC_GetClocksFreq+0x286>
 8001d02:	6446      	str	r6, [r0, #68]	; 0x44
 8001d04:	e023      	b.n	8001d4e <RCC_GetClocksFreq+0x2ce>
 8001d06:	6b0a      	ldr	r2, [r1, #48]	; 0x30
 8001d08:	f402 1240 	and.w	r2, r2, #3145728	; 0x300000
 8001d0c:	f5b2 1f80 	cmp.w	r2, #1048576	; 0x100000
 8001d10:	d10c      	bne.n	8001d2c <RCC_GetClocksFreq+0x2ac>
 8001d12:	6443      	str	r3, [r0, #68]	; 0x44
 8001d14:	e01b      	b.n	8001d4e <RCC_GetClocksFreq+0x2ce>
 8001d16:	bf00      	nop
 8001d18:	40021000 	.word	0x40021000
 8001d1c:	007a1200 	.word	0x007a1200
 8001d20:	003d0900 	.word	0x003d0900
 8001d24:	200001d0 	.word	0x200001d0
 8001d28:	200001b0 	.word	0x200001b0
 8001d2c:	6b0a      	ldr	r2, [r1, #48]	; 0x30
 8001d2e:	f402 1240 	and.w	r2, r2, #3145728	; 0x300000
 8001d32:	f5b2 1f00 	cmp.w	r2, #2097152	; 0x200000
 8001d36:	d102      	bne.n	8001d3e <RCC_GetClocksFreq+0x2be>
 8001d38:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 8001d3c:	e006      	b.n	8001d4c <RCC_GetClocksFreq+0x2cc>
 8001d3e:	6b0a      	ldr	r2, [r1, #48]	; 0x30
 8001d40:	f402 1240 	and.w	r2, r2, #3145728	; 0x300000
 8001d44:	f5b2 1f40 	cmp.w	r2, #3145728	; 0x300000
 8001d48:	d101      	bne.n	8001d4e <RCC_GetClocksFreq+0x2ce>
 8001d4a:	4a11      	ldr	r2, [pc, #68]	; (8001d90 <RCC_GetClocksFreq+0x310>)
 8001d4c:	6442      	str	r2, [r0, #68]	; 0x44
 8001d4e:	4a11      	ldr	r2, [pc, #68]	; (8001d94 <RCC_GetClocksFreq+0x314>)
 8001d50:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8001d52:	f411 0f40 	tst.w	r1, #12582912	; 0xc00000
 8001d56:	d102      	bne.n	8001d5e <RCC_GetClocksFreq+0x2de>
 8001d58:	6486      	str	r6, [r0, #72]	; 0x48
 8001d5a:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8001d5e:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8001d60:	f401 0140 	and.w	r1, r1, #12582912	; 0xc00000
 8001d64:	f5b1 0f80 	cmp.w	r1, #4194304	; 0x400000
 8001d68:	d00f      	beq.n	8001d8a <RCC_GetClocksFreq+0x30a>
 8001d6a:	6b13      	ldr	r3, [r2, #48]	; 0x30
 8001d6c:	f403 0340 	and.w	r3, r3, #12582912	; 0xc00000
 8001d70:	f5b3 0f00 	cmp.w	r3, #8388608	; 0x800000
 8001d74:	d102      	bne.n	8001d7c <RCC_GetClocksFreq+0x2fc>
 8001d76:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001d7a:	e006      	b.n	8001d8a <RCC_GetClocksFreq+0x30a>
 8001d7c:	6b13      	ldr	r3, [r2, #48]	; 0x30
 8001d7e:	f403 0340 	and.w	r3, r3, #12582912	; 0xc00000
 8001d82:	f5b3 0f40 	cmp.w	r3, #12582912	; 0xc00000
 8001d86:	d101      	bne.n	8001d8c <RCC_GetClocksFreq+0x30c>
 8001d88:	4b01      	ldr	r3, [pc, #4]	; (8001d90 <RCC_GetClocksFreq+0x310>)
 8001d8a:	6483      	str	r3, [r0, #72]	; 0x48
 8001d8c:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8001d90:	007a1200 	.word	0x007a1200
 8001d94:	40021000 	.word	0x40021000

08001d98 <RCC_AHBPeriphClockCmd>:
 8001d98:	bf00      	nop
 8001d9a:	bf00      	nop
 8001d9c:	4b04      	ldr	r3, [pc, #16]	; (8001db0 <RCC_AHBPeriphClockCmd+0x18>)
 8001d9e:	695a      	ldr	r2, [r3, #20]
 8001da0:	b109      	cbz	r1, 8001da6 <RCC_AHBPeriphClockCmd+0xe>
 8001da2:	4310      	orrs	r0, r2
 8001da4:	e001      	b.n	8001daa <RCC_AHBPeriphClockCmd+0x12>
 8001da6:	ea22 0000 	bic.w	r0, r2, r0
 8001daa:	6158      	str	r0, [r3, #20]
 8001dac:	4770      	bx	lr
 8001dae:	bf00      	nop
 8001db0:	40021000 	.word	0x40021000

08001db4 <RCC_APB2PeriphClockCmd>:
 8001db4:	bf00      	nop
 8001db6:	bf00      	nop
 8001db8:	4b04      	ldr	r3, [pc, #16]	; (8001dcc <RCC_APB2PeriphClockCmd+0x18>)
 8001dba:	699a      	ldr	r2, [r3, #24]
 8001dbc:	b109      	cbz	r1, 8001dc2 <RCC_APB2PeriphClockCmd+0xe>
 8001dbe:	4310      	orrs	r0, r2
 8001dc0:	e001      	b.n	8001dc6 <RCC_APB2PeriphClockCmd+0x12>
 8001dc2:	ea22 0000 	bic.w	r0, r2, r0
 8001dc6:	6198      	str	r0, [r3, #24]
 8001dc8:	4770      	bx	lr
 8001dca:	bf00      	nop
 8001dcc:	40021000 	.word	0x40021000

08001dd0 <RCC_APB1PeriphClockCmd>:
 8001dd0:	bf00      	nop
 8001dd2:	bf00      	nop
 8001dd4:	4b04      	ldr	r3, [pc, #16]	; (8001de8 <RCC_APB1PeriphClockCmd+0x18>)
 8001dd6:	69da      	ldr	r2, [r3, #28]
 8001dd8:	b109      	cbz	r1, 8001dde <RCC_APB1PeriphClockCmd+0xe>
 8001dda:	4310      	orrs	r0, r2
 8001ddc:	e001      	b.n	8001de2 <RCC_APB1PeriphClockCmd+0x12>
 8001dde:	ea22 0000 	bic.w	r0, r2, r0
 8001de2:	61d8      	str	r0, [r3, #28]
 8001de4:	4770      	bx	lr
 8001de6:	bf00      	nop
 8001de8:	40021000 	.word	0x40021000

08001dec <TIM_TimeBaseInit>:
 8001dec:	bf00      	nop
 8001dee:	bf00      	nop
 8001df0:	bf00      	nop
 8001df2:	4a24      	ldr	r2, [pc, #144]	; (8001e84 <TIM_TimeBaseInit+0x98>)
 8001df4:	8803      	ldrh	r3, [r0, #0]
 8001df6:	4290      	cmp	r0, r2
 8001df8:	b29b      	uxth	r3, r3
 8001dfa:	d012      	beq.n	8001e22 <TIM_TimeBaseInit+0x36>
 8001dfc:	f502 6200 	add.w	r2, r2, #2048	; 0x800
 8001e00:	4290      	cmp	r0, r2
 8001e02:	d00e      	beq.n	8001e22 <TIM_TimeBaseInit+0x36>
 8001e04:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 8001e08:	d00b      	beq.n	8001e22 <TIM_TimeBaseInit+0x36>
 8001e0a:	f5a2 3298 	sub.w	r2, r2, #77824	; 0x13000
 8001e0e:	4290      	cmp	r0, r2
 8001e10:	d007      	beq.n	8001e22 <TIM_TimeBaseInit+0x36>
 8001e12:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8001e16:	4290      	cmp	r0, r2
 8001e18:	d003      	beq.n	8001e22 <TIM_TimeBaseInit+0x36>
 8001e1a:	f502 32a4 	add.w	r2, r2, #83968	; 0x14800
 8001e1e:	4290      	cmp	r0, r2
 8001e20:	d103      	bne.n	8001e2a <TIM_TimeBaseInit+0x3e>
 8001e22:	884a      	ldrh	r2, [r1, #2]
 8001e24:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 8001e28:	4313      	orrs	r3, r2
 8001e2a:	4a17      	ldr	r2, [pc, #92]	; (8001e88 <TIM_TimeBaseInit+0x9c>)
 8001e2c:	4290      	cmp	r0, r2
 8001e2e:	d008      	beq.n	8001e42 <TIM_TimeBaseInit+0x56>
 8001e30:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8001e34:	4290      	cmp	r0, r2
 8001e36:	d004      	beq.n	8001e42 <TIM_TimeBaseInit+0x56>
 8001e38:	f423 7340 	bic.w	r3, r3, #768	; 0x300
 8001e3c:	890a      	ldrh	r2, [r1, #8]
 8001e3e:	b29b      	uxth	r3, r3
 8001e40:	4313      	orrs	r3, r2
 8001e42:	8003      	strh	r3, [r0, #0]
 8001e44:	684b      	ldr	r3, [r1, #4]
 8001e46:	62c3      	str	r3, [r0, #44]	; 0x2c
 8001e48:	880b      	ldrh	r3, [r1, #0]
 8001e4a:	8503      	strh	r3, [r0, #40]	; 0x28
 8001e4c:	4b0d      	ldr	r3, [pc, #52]	; (8001e84 <TIM_TimeBaseInit+0x98>)
 8001e4e:	4298      	cmp	r0, r3
 8001e50:	d013      	beq.n	8001e7a <TIM_TimeBaseInit+0x8e>
 8001e52:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 8001e56:	4298      	cmp	r0, r3
 8001e58:	d00f      	beq.n	8001e7a <TIM_TimeBaseInit+0x8e>
 8001e5a:	f503 6340 	add.w	r3, r3, #3072	; 0xc00
 8001e5e:	4298      	cmp	r0, r3
 8001e60:	d00b      	beq.n	8001e7a <TIM_TimeBaseInit+0x8e>
 8001e62:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 8001e66:	4298      	cmp	r0, r3
 8001e68:	d007      	beq.n	8001e7a <TIM_TimeBaseInit+0x8e>
 8001e6a:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 8001e6e:	4298      	cmp	r0, r3
 8001e70:	d003      	beq.n	8001e7a <TIM_TimeBaseInit+0x8e>
 8001e72:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 8001e76:	4298      	cmp	r0, r3
 8001e78:	d101      	bne.n	8001e7e <TIM_TimeBaseInit+0x92>
 8001e7a:	894b      	ldrh	r3, [r1, #10]
 8001e7c:	8603      	strh	r3, [r0, #48]	; 0x30
 8001e7e:	2301      	movs	r3, #1
 8001e80:	6143      	str	r3, [r0, #20]
 8001e82:	4770      	bx	lr
 8001e84:	40012c00 	.word	0x40012c00
 8001e88:	40001000 	.word	0x40001000

08001e8c <TIM_Cmd>:
 8001e8c:	bf00      	nop
 8001e8e:	bf00      	nop
 8001e90:	8803      	ldrh	r3, [r0, #0]
 8001e92:	b119      	cbz	r1, 8001e9c <TIM_Cmd+0x10>
 8001e94:	b29b      	uxth	r3, r3
 8001e96:	f043 0301 	orr.w	r3, r3, #1
 8001e9a:	e003      	b.n	8001ea4 <TIM_Cmd+0x18>
 8001e9c:	f023 0301 	bic.w	r3, r3, #1
 8001ea0:	041b      	lsls	r3, r3, #16
 8001ea2:	0c1b      	lsrs	r3, r3, #16
 8001ea4:	8003      	strh	r3, [r0, #0]
 8001ea6:	4770      	bx	lr

08001ea8 <TIM_OC1Init>:
 8001ea8:	b530      	push	{r4, r5, lr}
 8001eaa:	bf00      	nop
 8001eac:	bf00      	nop
 8001eae:	bf00      	nop
 8001eb0:	bf00      	nop
 8001eb2:	6a03      	ldr	r3, [r0, #32]
 8001eb4:	680c      	ldr	r4, [r1, #0]
 8001eb6:	f023 0301 	bic.w	r3, r3, #1
 8001eba:	6203      	str	r3, [r0, #32]
 8001ebc:	6a03      	ldr	r3, [r0, #32]
 8001ebe:	6842      	ldr	r2, [r0, #4]
 8001ec0:	6985      	ldr	r5, [r0, #24]
 8001ec2:	f425 3580 	bic.w	r5, r5, #65536	; 0x10000
 8001ec6:	f025 0573 	bic.w	r5, r5, #115	; 0x73
 8001eca:	432c      	orrs	r4, r5
 8001ecc:	898d      	ldrh	r5, [r1, #12]
 8001ece:	f023 0302 	bic.w	r3, r3, #2
 8001ed2:	432b      	orrs	r3, r5
 8001ed4:	888d      	ldrh	r5, [r1, #4]
 8001ed6:	432b      	orrs	r3, r5
 8001ed8:	4d15      	ldr	r5, [pc, #84]	; (8001f30 <TIM_OC1Init+0x88>)
 8001eda:	42a8      	cmp	r0, r5
 8001edc:	d00f      	beq.n	8001efe <TIM_OC1Init+0x56>
 8001ede:	f505 6500 	add.w	r5, r5, #2048	; 0x800
 8001ee2:	42a8      	cmp	r0, r5
 8001ee4:	d00b      	beq.n	8001efe <TIM_OC1Init+0x56>
 8001ee6:	f505 6540 	add.w	r5, r5, #3072	; 0xc00
 8001eea:	42a8      	cmp	r0, r5
 8001eec:	d007      	beq.n	8001efe <TIM_OC1Init+0x56>
 8001eee:	f505 6580 	add.w	r5, r5, #1024	; 0x400
 8001ef2:	42a8      	cmp	r0, r5
 8001ef4:	d003      	beq.n	8001efe <TIM_OC1Init+0x56>
 8001ef6:	f505 6580 	add.w	r5, r5, #1024	; 0x400
 8001efa:	42a8      	cmp	r0, r5
 8001efc:	d111      	bne.n	8001f22 <TIM_OC1Init+0x7a>
 8001efe:	bf00      	nop
 8001f00:	bf00      	nop
 8001f02:	bf00      	nop
 8001f04:	bf00      	nop
 8001f06:	89cd      	ldrh	r5, [r1, #14]
 8001f08:	f023 0308 	bic.w	r3, r3, #8
 8001f0c:	432b      	orrs	r3, r5
 8001f0e:	88cd      	ldrh	r5, [r1, #6]
 8001f10:	f023 0304 	bic.w	r3, r3, #4
 8001f14:	432b      	orrs	r3, r5
 8001f16:	8a0d      	ldrh	r5, [r1, #16]
 8001f18:	f422 7240 	bic.w	r2, r2, #768	; 0x300
 8001f1c:	432a      	orrs	r2, r5
 8001f1e:	8a4d      	ldrh	r5, [r1, #18]
 8001f20:	432a      	orrs	r2, r5
 8001f22:	6042      	str	r2, [r0, #4]
 8001f24:	688a      	ldr	r2, [r1, #8]
 8001f26:	6184      	str	r4, [r0, #24]
 8001f28:	6342      	str	r2, [r0, #52]	; 0x34
 8001f2a:	6203      	str	r3, [r0, #32]
 8001f2c:	bd30      	pop	{r4, r5, pc}
 8001f2e:	bf00      	nop
 8001f30:	40012c00 	.word	0x40012c00

08001f34 <TIM_OC2Init>:
 8001f34:	b570      	push	{r4, r5, r6, lr}
 8001f36:	bf00      	nop
 8001f38:	bf00      	nop
 8001f3a:	bf00      	nop
 8001f3c:	bf00      	nop
 8001f3e:	6a03      	ldr	r3, [r0, #32]
 8001f40:	680c      	ldr	r4, [r1, #0]
 8001f42:	898e      	ldrh	r6, [r1, #12]
 8001f44:	f023 0310 	bic.w	r3, r3, #16
 8001f48:	6203      	str	r3, [r0, #32]
 8001f4a:	6a05      	ldr	r5, [r0, #32]
 8001f4c:	6842      	ldr	r2, [r0, #4]
 8001f4e:	6983      	ldr	r3, [r0, #24]
 8001f50:	f023 7380 	bic.w	r3, r3, #16777216	; 0x1000000
 8001f54:	f423 43e6 	bic.w	r3, r3, #29440	; 0x7300
 8001f58:	ea43 2404 	orr.w	r4, r3, r4, lsl #8
 8001f5c:	888b      	ldrh	r3, [r1, #4]
 8001f5e:	f025 0520 	bic.w	r5, r5, #32
 8001f62:	4333      	orrs	r3, r6
 8001f64:	ea45 1303 	orr.w	r3, r5, r3, lsl #4
 8001f68:	4d10      	ldr	r5, [pc, #64]	; (8001fac <TIM_OC2Init+0x78>)
 8001f6a:	42a8      	cmp	r0, r5
 8001f6c:	d003      	beq.n	8001f76 <TIM_OC2Init+0x42>
 8001f6e:	f505 6500 	add.w	r5, r5, #2048	; 0x800
 8001f72:	42a8      	cmp	r0, r5
 8001f74:	d114      	bne.n	8001fa0 <TIM_OC2Init+0x6c>
 8001f76:	bf00      	nop
 8001f78:	bf00      	nop
 8001f7a:	bf00      	nop
 8001f7c:	bf00      	nop
 8001f7e:	89cd      	ldrh	r5, [r1, #14]
 8001f80:	8a0e      	ldrh	r6, [r1, #16]
 8001f82:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8001f86:	ea43 1305 	orr.w	r3, r3, r5, lsl #4
 8001f8a:	88cd      	ldrh	r5, [r1, #6]
 8001f8c:	f023 0340 	bic.w	r3, r3, #64	; 0x40
 8001f90:	ea43 1305 	orr.w	r3, r3, r5, lsl #4
 8001f94:	8a4d      	ldrh	r5, [r1, #18]
 8001f96:	f422 6240 	bic.w	r2, r2, #3072	; 0xc00
 8001f9a:	4335      	orrs	r5, r6
 8001f9c:	ea42 0285 	orr.w	r2, r2, r5, lsl #2
 8001fa0:	6042      	str	r2, [r0, #4]
 8001fa2:	688a      	ldr	r2, [r1, #8]
 8001fa4:	6184      	str	r4, [r0, #24]
 8001fa6:	6382      	str	r2, [r0, #56]	; 0x38
 8001fa8:	6203      	str	r3, [r0, #32]
 8001faa:	bd70      	pop	{r4, r5, r6, pc}
 8001fac:	40012c00 	.word	0x40012c00

08001fb0 <TIM_CtrlPWMOutputs>:
 8001fb0:	bf00      	nop
 8001fb2:	bf00      	nop
 8001fb4:	6c43      	ldr	r3, [r0, #68]	; 0x44
 8001fb6:	b111      	cbz	r1, 8001fbe <TIM_CtrlPWMOutputs+0xe>
 8001fb8:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
 8001fbc:	e001      	b.n	8001fc2 <TIM_CtrlPWMOutputs+0x12>
 8001fbe:	f3c3 030e 	ubfx	r3, r3, #0, #15
 8001fc2:	6443      	str	r3, [r0, #68]	; 0x44
 8001fc4:	4770      	bx	lr

08001fc6 <TIM_ClearITPendingBit>:
 8001fc6:	bf00      	nop
 8001fc8:	43c9      	mvns	r1, r1
 8001fca:	b289      	uxth	r1, r1
 8001fcc:	6101      	str	r1, [r0, #16]
 8001fce:	4770      	bx	lr

08001fd0 <timer_init>:
 8001fd0:	b530      	push	{r4, r5, lr}
 8001fd2:	2300      	movs	r3, #0
 8001fd4:	b085      	sub	sp, #20
 8001fd6:	491f      	ldr	r1, [pc, #124]	; (8002054 <timer_init+0x84>)
 8001fd8:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8001fdc:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 8001fe0:	491d      	ldr	r1, [pc, #116]	; (8002058 <timer_init+0x88>)
 8001fe2:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 8001fe6:	4a1d      	ldr	r2, [pc, #116]	; (800205c <timer_init+0x8c>)
 8001fe8:	2400      	movs	r4, #0
 8001fea:	f822 4013 	strh.w	r4, [r2, r3, lsl #1]
 8001fee:	3301      	adds	r3, #1
 8001ff0:	2b04      	cmp	r3, #4
 8001ff2:	4625      	mov	r5, r4
 8001ff4:	d1ef      	bne.n	8001fd6 <timer_init+0x6>
 8001ff6:	4b1a      	ldr	r3, [pc, #104]	; (8002060 <timer_init+0x90>)
 8001ff8:	2002      	movs	r0, #2
 8001ffa:	2101      	movs	r1, #1
 8001ffc:	601c      	str	r4, [r3, #0]
 8001ffe:	f7ff fee7 	bl	8001dd0 <RCC_APB1PeriphClockCmd>
 8002002:	f8ad 4006 	strh.w	r4, [sp, #6]
 8002006:	f8ad 400c 	strh.w	r4, [sp, #12]
 800200a:	f8ad 400e 	strh.w	r4, [sp, #14]
 800200e:	4c15      	ldr	r4, [pc, #84]	; (8002064 <timer_init+0x94>)
 8002010:	f44f 738c 	mov.w	r3, #280	; 0x118
 8002014:	f8ad 3004 	strh.w	r3, [sp, #4]
 8002018:	4620      	mov	r0, r4
 800201a:	2331      	movs	r3, #49	; 0x31
 800201c:	a901      	add	r1, sp, #4
 800201e:	9302      	str	r3, [sp, #8]
 8002020:	f7ff fee4 	bl	8001dec <TIM_TimeBaseInit>
 8002024:	4620      	mov	r0, r4
 8002026:	2101      	movs	r1, #1
 8002028:	f7ff ff30 	bl	8001e8c <TIM_Cmd>
 800202c:	68e3      	ldr	r3, [r4, #12]
 800202e:	f043 0301 	orr.w	r3, r3, #1
 8002032:	60e3      	str	r3, [r4, #12]
 8002034:	231d      	movs	r3, #29
 8002036:	f88d 3000 	strb.w	r3, [sp]
 800203a:	4668      	mov	r0, sp
 800203c:	2301      	movs	r3, #1
 800203e:	f88d 5001 	strb.w	r5, [sp, #1]
 8002042:	f88d 3002 	strb.w	r3, [sp, #2]
 8002046:	f88d 3003 	strb.w	r3, [sp, #3]
 800204a:	f000 fc69 	bl	8002920 <NVIC_Init>
 800204e:	b005      	add	sp, #20
 8002050:	bd30      	pop	{r4, r5, pc}
 8002052:	bf00      	nop
 8002054:	200014dc 	.word	0x200014dc
 8002058:	200014d0 	.word	0x200014d0
 800205c:	200014c8 	.word	0x200014c8
 8002060:	200014d8 	.word	0x200014d8
 8002064:	40000400 	.word	0x40000400

08002068 <TIM3_IRQHandler>:
 8002068:	2300      	movs	r3, #0
 800206a:	4a10      	ldr	r2, [pc, #64]	; (80020ac <TIM3_IRQHandler+0x44>)
 800206c:	f832 1013 	ldrh.w	r1, [r2, r3, lsl #1]
 8002070:	b289      	uxth	r1, r1
 8002072:	b129      	cbz	r1, 8002080 <TIM3_IRQHandler+0x18>
 8002074:	f832 1013 	ldrh.w	r1, [r2, r3, lsl #1]
 8002078:	b289      	uxth	r1, r1
 800207a:	3901      	subs	r1, #1
 800207c:	b289      	uxth	r1, r1
 800207e:	e007      	b.n	8002090 <TIM3_IRQHandler+0x28>
 8002080:	490b      	ldr	r1, [pc, #44]	; (80020b0 <TIM3_IRQHandler+0x48>)
 8002082:	f831 1013 	ldrh.w	r1, [r1, r3, lsl #1]
 8002086:	b289      	uxth	r1, r1
 8002088:	f822 1013 	strh.w	r1, [r2, r3, lsl #1]
 800208c:	4a09      	ldr	r2, [pc, #36]	; (80020b4 <TIM3_IRQHandler+0x4c>)
 800208e:	2101      	movs	r1, #1
 8002090:	f822 1013 	strh.w	r1, [r2, r3, lsl #1]
 8002094:	3301      	adds	r3, #1
 8002096:	2b04      	cmp	r3, #4
 8002098:	d1e7      	bne.n	800206a <TIM3_IRQHandler+0x2>
 800209a:	4b07      	ldr	r3, [pc, #28]	; (80020b8 <TIM3_IRQHandler+0x50>)
 800209c:	4807      	ldr	r0, [pc, #28]	; (80020bc <TIM3_IRQHandler+0x54>)
 800209e:	681a      	ldr	r2, [r3, #0]
 80020a0:	2101      	movs	r1, #1
 80020a2:	3201      	adds	r2, #1
 80020a4:	601a      	str	r2, [r3, #0]
 80020a6:	f7ff bf8e 	b.w	8001fc6 <TIM_ClearITPendingBit>
 80020aa:	bf00      	nop
 80020ac:	200014dc 	.word	0x200014dc
 80020b0:	200014d0 	.word	0x200014d0
 80020b4:	200014c8 	.word	0x200014c8
 80020b8:	200014d8 	.word	0x200014d8
 80020bc:	40000400 	.word	0x40000400

080020c0 <timer_get_time>:
 80020c0:	b082      	sub	sp, #8
 80020c2:	b672      	cpsid	i
 80020c4:	4b04      	ldr	r3, [pc, #16]	; (80020d8 <timer_get_time+0x18>)
 80020c6:	681b      	ldr	r3, [r3, #0]
 80020c8:	9301      	str	r3, [sp, #4]
 80020ca:	b662      	cpsie	i
 80020cc:	9801      	ldr	r0, [sp, #4]
 80020ce:	230a      	movs	r3, #10
 80020d0:	fbb0 f0f3 	udiv	r0, r0, r3
 80020d4:	b002      	add	sp, #8
 80020d6:	4770      	bx	lr
 80020d8:	200014d8 	.word	0x200014d8

080020dc <timer_delay_ms>:
 80020dc:	b513      	push	{r0, r1, r4, lr}
 80020de:	4604      	mov	r4, r0
 80020e0:	f7ff ffee 	bl	80020c0 <timer_get_time>
 80020e4:	4420      	add	r0, r4
 80020e6:	9001      	str	r0, [sp, #4]
 80020e8:	9c01      	ldr	r4, [sp, #4]
 80020ea:	f7ff ffe9 	bl	80020c0 <timer_get_time>
 80020ee:	4284      	cmp	r4, r0
 80020f0:	d902      	bls.n	80020f8 <timer_delay_ms+0x1c>
 80020f2:	f000 fb17 	bl	8002724 <sleep>
 80020f6:	e7f7      	b.n	80020e8 <timer_delay_ms+0xc>
 80020f8:	b002      	add	sp, #8
 80020fa:	bd10      	pop	{r4, pc}

080020fc <event_timer_set_period>:
 80020fc:	b672      	cpsid	i
 80020fe:	230a      	movs	r3, #10
 8002100:	4359      	muls	r1, r3
 8002102:	4b06      	ldr	r3, [pc, #24]	; (800211c <event_timer_set_period+0x20>)
 8002104:	b289      	uxth	r1, r1
 8002106:	f823 1010 	strh.w	r1, [r3, r0, lsl #1]
 800210a:	4b05      	ldr	r3, [pc, #20]	; (8002120 <event_timer_set_period+0x24>)
 800210c:	f823 1010 	strh.w	r1, [r3, r0, lsl #1]
 8002110:	4b04      	ldr	r3, [pc, #16]	; (8002124 <event_timer_set_period+0x28>)
 8002112:	2200      	movs	r2, #0
 8002114:	f823 2010 	strh.w	r2, [r3, r0, lsl #1]
 8002118:	b662      	cpsie	i
 800211a:	4770      	bx	lr
 800211c:	200014dc 	.word	0x200014dc
 8002120:	200014d0 	.word	0x200014d0
 8002124:	200014c8 	.word	0x200014c8

08002128 <event_timer_wait>:
 8002128:	b510      	push	{r4, lr}
 800212a:	4604      	mov	r4, r0
 800212c:	4b06      	ldr	r3, [pc, #24]	; (8002148 <event_timer_wait+0x20>)
 800212e:	f833 2014 	ldrh.w	r2, [r3, r4, lsl #1]
 8002132:	b292      	uxth	r2, r2
 8002134:	b912      	cbnz	r2, 800213c <event_timer_wait+0x14>
 8002136:	f000 faf5 	bl	8002724 <sleep>
 800213a:	e7f7      	b.n	800212c <event_timer_wait+0x4>
 800213c:	b672      	cpsid	i
 800213e:	2200      	movs	r2, #0
 8002140:	f823 2014 	strh.w	r2, [r3, r4, lsl #1]
 8002144:	b662      	cpsie	i
 8002146:	bd10      	pop	{r4, pc}
 8002148:	200014c8 	.word	0x200014c8

0800214c <USART_Init>:
 800214c:	b530      	push	{r4, r5, lr}
 800214e:	4604      	mov	r4, r0
 8002150:	b099      	sub	sp, #100	; 0x64
 8002152:	460d      	mov	r5, r1
 8002154:	bf00      	nop
 8002156:	bf00      	nop
 8002158:	bf00      	nop
 800215a:	bf00      	nop
 800215c:	bf00      	nop
 800215e:	bf00      	nop
 8002160:	bf00      	nop
 8002162:	6803      	ldr	r3, [r0, #0]
 8002164:	f023 0301 	bic.w	r3, r3, #1
 8002168:	6003      	str	r3, [r0, #0]
 800216a:	6842      	ldr	r2, [r0, #4]
 800216c:	688b      	ldr	r3, [r1, #8]
 800216e:	f422 5240 	bic.w	r2, r2, #12288	; 0x3000
 8002172:	4313      	orrs	r3, r2
 8002174:	6043      	str	r3, [r0, #4]
 8002176:	686a      	ldr	r2, [r5, #4]
 8002178:	68eb      	ldr	r3, [r5, #12]
 800217a:	6801      	ldr	r1, [r0, #0]
 800217c:	431a      	orrs	r2, r3
 800217e:	692b      	ldr	r3, [r5, #16]
 8002180:	f421 51b0 	bic.w	r1, r1, #5632	; 0x1600
 8002184:	f021 010c 	bic.w	r1, r1, #12
 8002188:	4313      	orrs	r3, r2
 800218a:	430b      	orrs	r3, r1
 800218c:	6003      	str	r3, [r0, #0]
 800218e:	6882      	ldr	r2, [r0, #8]
 8002190:	696b      	ldr	r3, [r5, #20]
 8002192:	f422 7240 	bic.w	r2, r2, #768	; 0x300
 8002196:	4313      	orrs	r3, r2
 8002198:	6083      	str	r3, [r0, #8]
 800219a:	a801      	add	r0, sp, #4
 800219c:	f7ff fc70 	bl	8001a80 <RCC_GetClocksFreq>
 80021a0:	4b17      	ldr	r3, [pc, #92]	; (8002200 <USART_Init+0xb4>)
 80021a2:	429c      	cmp	r4, r3
 80021a4:	d101      	bne.n	80021aa <USART_Init+0x5e>
 80021a6:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 80021a8:	e00e      	b.n	80021c8 <USART_Init+0x7c>
 80021aa:	4b16      	ldr	r3, [pc, #88]	; (8002204 <USART_Init+0xb8>)
 80021ac:	429c      	cmp	r4, r3
 80021ae:	d101      	bne.n	80021b4 <USART_Init+0x68>
 80021b0:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80021b2:	e009      	b.n	80021c8 <USART_Init+0x7c>
 80021b4:	4b14      	ldr	r3, [pc, #80]	; (8002208 <USART_Init+0xbc>)
 80021b6:	429c      	cmp	r4, r3
 80021b8:	d101      	bne.n	80021be <USART_Init+0x72>
 80021ba:	9a11      	ldr	r2, [sp, #68]	; 0x44
 80021bc:	e004      	b.n	80021c8 <USART_Init+0x7c>
 80021be:	4b13      	ldr	r3, [pc, #76]	; (800220c <USART_Init+0xc0>)
 80021c0:	429c      	cmp	r4, r3
 80021c2:	bf0c      	ite	eq
 80021c4:	9a12      	ldreq	r2, [sp, #72]	; 0x48
 80021c6:	9a13      	ldrne	r2, [sp, #76]	; 0x4c
 80021c8:	6823      	ldr	r3, [r4, #0]
 80021ca:	6829      	ldr	r1, [r5, #0]
 80021cc:	f413 4f00 	tst.w	r3, #32768	; 0x8000
 80021d0:	bf18      	it	ne
 80021d2:	0052      	lslne	r2, r2, #1
 80021d4:	fbb2 f3f1 	udiv	r3, r2, r1
 80021d8:	fb01 2213 	mls	r2, r1, r3, r2
 80021dc:	ebb2 0f51 	cmp.w	r2, r1, lsr #1
 80021e0:	6822      	ldr	r2, [r4, #0]
 80021e2:	bf28      	it	cs
 80021e4:	3301      	addcs	r3, #1
 80021e6:	0412      	lsls	r2, r2, #16
 80021e8:	d506      	bpl.n	80021f8 <USART_Init+0xac>
 80021ea:	f64f 72f0 	movw	r2, #65520	; 0xfff0
 80021ee:	f3c3 0142 	ubfx	r1, r3, #1, #3
 80021f2:	401a      	ands	r2, r3
 80021f4:	ea41 0302 	orr.w	r3, r1, r2
 80021f8:	b29b      	uxth	r3, r3
 80021fa:	81a3      	strh	r3, [r4, #12]
 80021fc:	b019      	add	sp, #100	; 0x64
 80021fe:	bd30      	pop	{r4, r5, pc}
 8002200:	40013800 	.word	0x40013800
 8002204:	40004400 	.word	0x40004400
 8002208:	40004800 	.word	0x40004800
 800220c:	40004c00 	.word	0x40004c00

08002210 <USART_Cmd>:
 8002210:	bf00      	nop
 8002212:	bf00      	nop
 8002214:	6803      	ldr	r3, [r0, #0]
 8002216:	b111      	cbz	r1, 800221e <USART_Cmd+0xe>
 8002218:	f043 0301 	orr.w	r3, r3, #1
 800221c:	e001      	b.n	8002222 <USART_Cmd+0x12>
 800221e:	f023 0301 	bic.w	r3, r3, #1
 8002222:	6003      	str	r3, [r0, #0]
 8002224:	4770      	bx	lr

08002226 <USART_ReceiveData>:
 8002226:	bf00      	nop
 8002228:	8c80      	ldrh	r0, [r0, #36]	; 0x24
 800222a:	f3c0 0008 	ubfx	r0, r0, #0, #9
 800222e:	4770      	bx	lr

08002230 <USART_ITConfig>:
 8002230:	b510      	push	{r4, lr}
 8002232:	bf00      	nop
 8002234:	bf00      	nop
 8002236:	bf00      	nop
 8002238:	f3c1 2307 	ubfx	r3, r1, #8, #8
 800223c:	2401      	movs	r4, #1
 800223e:	b2c9      	uxtb	r1, r1
 8002240:	2b02      	cmp	r3, #2
 8002242:	fa04 f101 	lsl.w	r1, r4, r1
 8002246:	d101      	bne.n	800224c <USART_ITConfig+0x1c>
 8002248:	3004      	adds	r0, #4
 800224a:	e002      	b.n	8002252 <USART_ITConfig+0x22>
 800224c:	2b03      	cmp	r3, #3
 800224e:	bf08      	it	eq
 8002250:	3008      	addeq	r0, #8
 8002252:	6803      	ldr	r3, [r0, #0]
 8002254:	b10a      	cbz	r2, 800225a <USART_ITConfig+0x2a>
 8002256:	4319      	orrs	r1, r3
 8002258:	e001      	b.n	800225e <USART_ITConfig+0x2e>
 800225a:	ea23 0101 	bic.w	r1, r3, r1
 800225e:	6001      	str	r1, [r0, #0]
 8002260:	bd10      	pop	{r4, pc}

08002262 <USART_GetITStatus>:
 8002262:	b510      	push	{r4, lr}
 8002264:	bf00      	nop
 8002266:	bf00      	nop
 8002268:	2401      	movs	r4, #1
 800226a:	f3c1 2207 	ubfx	r2, r1, #8, #8
 800226e:	b2cb      	uxtb	r3, r1
 8002270:	42a2      	cmp	r2, r4
 8002272:	fa04 f303 	lsl.w	r3, r4, r3
 8002276:	d101      	bne.n	800227c <USART_GetITStatus+0x1a>
 8002278:	6802      	ldr	r2, [r0, #0]
 800227a:	e003      	b.n	8002284 <USART_GetITStatus+0x22>
 800227c:	2a02      	cmp	r2, #2
 800227e:	bf0c      	ite	eq
 8002280:	6842      	ldreq	r2, [r0, #4]
 8002282:	6882      	ldrne	r2, [r0, #8]
 8002284:	4013      	ands	r3, r2
 8002286:	69c2      	ldr	r2, [r0, #28]
 8002288:	b143      	cbz	r3, 800229c <USART_GetITStatus+0x3a>
 800228a:	2301      	movs	r3, #1
 800228c:	0c09      	lsrs	r1, r1, #16
 800228e:	fa03 f101 	lsl.w	r1, r3, r1
 8002292:	4211      	tst	r1, r2
 8002294:	bf0c      	ite	eq
 8002296:	2000      	moveq	r0, #0
 8002298:	2001      	movne	r0, #1
 800229a:	bd10      	pop	{r4, pc}
 800229c:	4618      	mov	r0, r3
 800229e:	bd10      	pop	{r4, pc}

080022a0 <USART_ClearITPendingBit>:
 80022a0:	bf00      	nop
 80022a2:	bf00      	nop
 80022a4:	2301      	movs	r3, #1
 80022a6:	0c09      	lsrs	r1, r1, #16
 80022a8:	fa03 f101 	lsl.w	r1, r3, r1
 80022ac:	6201      	str	r1, [r0, #32]
 80022ae:	4770      	bx	lr

080022b0 <uart_write>:
 80022b0:	4b03      	ldr	r3, [pc, #12]	; (80022c0 <uart_write+0x10>)
 80022b2:	69da      	ldr	r2, [r3, #28]
 80022b4:	0612      	lsls	r2, r2, #24
 80022b6:	d401      	bmi.n	80022bc <uart_write+0xc>
 80022b8:	bf00      	nop
 80022ba:	e7f9      	b.n	80022b0 <uart_write>
 80022bc:	8518      	strh	r0, [r3, #40]	; 0x28
 80022be:	4770      	bx	lr
 80022c0:	40013800 	.word	0x40013800

080022c4 <uart_init>:
 80022c4:	b530      	push	{r4, r5, lr}
 80022c6:	4b2c      	ldr	r3, [pc, #176]	; (8002378 <uart_init+0xb4>)
 80022c8:	4d2c      	ldr	r5, [pc, #176]	; (800237c <uart_init+0xb8>)
 80022ca:	2400      	movs	r4, #0
 80022cc:	601c      	str	r4, [r3, #0]
 80022ce:	4b2c      	ldr	r3, [pc, #176]	; (8002380 <uart_init+0xbc>)
 80022d0:	b08b      	sub	sp, #44	; 0x2c
 80022d2:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 80022d6:	2101      	movs	r1, #1
 80022d8:	601c      	str	r4, [r3, #0]
 80022da:	f7ff fd5d 	bl	8001d98 <RCC_AHBPeriphClockCmd>
 80022de:	f44f 4080 	mov.w	r0, #16384	; 0x4000
 80022e2:	2101      	movs	r1, #1
 80022e4:	f7ff fd66 	bl	8001db4 <RCC_APB2PeriphClockCmd>
 80022e8:	f44f 63c0 	mov.w	r3, #1536	; 0x600
 80022ec:	9302      	str	r3, [sp, #8]
 80022ee:	2302      	movs	r3, #2
 80022f0:	f88d 300c 	strb.w	r3, [sp, #12]
 80022f4:	a902      	add	r1, sp, #8
 80022f6:	2303      	movs	r3, #3
 80022f8:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80022fc:	f88d 300d 	strb.w	r3, [sp, #13]
 8002300:	f88d 400e 	strb.w	r4, [sp, #14]
 8002304:	f88d 400f 	strb.w	r4, [sp, #15]
 8002308:	f000 fb53 	bl	80029b2 <GPIO_Init>
 800230c:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8002310:	2109      	movs	r1, #9
 8002312:	2207      	movs	r2, #7
 8002314:	f000 fb9b 	bl	8002a4e <GPIO_PinAFConfig>
 8002318:	2207      	movs	r2, #7
 800231a:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 800231e:	210a      	movs	r1, #10
 8002320:	f000 fb95 	bl	8002a4e <GPIO_PinAFConfig>
 8002324:	f44f 33e1 	mov.w	r3, #115200	; 0x1c200
 8002328:	9304      	str	r3, [sp, #16]
 800232a:	4628      	mov	r0, r5
 800232c:	230c      	movs	r3, #12
 800232e:	a904      	add	r1, sp, #16
 8002330:	9308      	str	r3, [sp, #32]
 8002332:	9405      	str	r4, [sp, #20]
 8002334:	9406      	str	r4, [sp, #24]
 8002336:	9407      	str	r4, [sp, #28]
 8002338:	9409      	str	r4, [sp, #36]	; 0x24
 800233a:	f7ff ff07 	bl	800214c <USART_Init>
 800233e:	4628      	mov	r0, r5
 8002340:	2101      	movs	r1, #1
 8002342:	f7ff ff65 	bl	8002210 <USART_Cmd>
 8002346:	2201      	movs	r2, #1
 8002348:	4628      	mov	r0, r5
 800234a:	490e      	ldr	r1, [pc, #56]	; (8002384 <uart_init+0xc0>)
 800234c:	f7ff ff70 	bl	8002230 <USART_ITConfig>
 8002350:	2325      	movs	r3, #37	; 0x25
 8002352:	f88d 4005 	strb.w	r4, [sp, #5]
 8002356:	f88d 4006 	strb.w	r4, [sp, #6]
 800235a:	a801      	add	r0, sp, #4
 800235c:	2401      	movs	r4, #1
 800235e:	f88d 3004 	strb.w	r3, [sp, #4]
 8002362:	f88d 4007 	strb.w	r4, [sp, #7]
 8002366:	f000 fadb 	bl	8002920 <NVIC_Init>
 800236a:	4628      	mov	r0, r5
 800236c:	4621      	mov	r1, r4
 800236e:	f7ff ff4f 	bl	8002210 <USART_Cmd>
 8002372:	b00b      	add	sp, #44	; 0x2c
 8002374:	bd30      	pop	{r4, r5, pc}
 8002376:	bf00      	nop
 8002378:	200014f4 	.word	0x200014f4
 800237c:	40013800 	.word	0x40013800
 8002380:	200014f8 	.word	0x200014f8
 8002384:	00050105 	.word	0x00050105

08002388 <USART1_IRQHandler>:
 8002388:	b508      	push	{r3, lr}
 800238a:	480d      	ldr	r0, [pc, #52]	; (80023c0 <USART1_IRQHandler+0x38>)
 800238c:	490d      	ldr	r1, [pc, #52]	; (80023c4 <USART1_IRQHandler+0x3c>)
 800238e:	f7ff ff68 	bl	8002262 <USART_GetITStatus>
 8002392:	b178      	cbz	r0, 80023b4 <USART1_IRQHandler+0x2c>
 8002394:	480a      	ldr	r0, [pc, #40]	; (80023c0 <USART1_IRQHandler+0x38>)
 8002396:	f7ff ff46 	bl	8002226 <USART_ReceiveData>
 800239a:	4b0b      	ldr	r3, [pc, #44]	; (80023c8 <USART1_IRQHandler+0x40>)
 800239c:	490b      	ldr	r1, [pc, #44]	; (80023cc <USART1_IRQHandler+0x44>)
 800239e:	681a      	ldr	r2, [r3, #0]
 80023a0:	b2c0      	uxtb	r0, r0
 80023a2:	5488      	strb	r0, [r1, r2]
 80023a4:	681a      	ldr	r2, [r3, #0]
 80023a6:	3201      	adds	r2, #1
 80023a8:	601a      	str	r2, [r3, #0]
 80023aa:	681a      	ldr	r2, [r3, #0]
 80023ac:	2a0f      	cmp	r2, #15
 80023ae:	bf84      	itt	hi
 80023b0:	2200      	movhi	r2, #0
 80023b2:	601a      	strhi	r2, [r3, #0]
 80023b4:	4802      	ldr	r0, [pc, #8]	; (80023c0 <USART1_IRQHandler+0x38>)
 80023b6:	4903      	ldr	r1, [pc, #12]	; (80023c4 <USART1_IRQHandler+0x3c>)
 80023b8:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80023bc:	f7ff bf70 	b.w	80022a0 <USART_ClearITPendingBit>
 80023c0:	40013800 	.word	0x40013800
 80023c4:	00050105 	.word	0x00050105
 80023c8:	200014f4 	.word	0x200014f4
 80023cc:	200014e4 	.word	0x200014e4

080023d0 <i2c_delay>:
 80023d0:	230b      	movs	r3, #11
 80023d2:	3b01      	subs	r3, #1
 80023d4:	d001      	beq.n	80023da <i2c_delay+0xa>
 80023d6:	bf00      	nop
 80023d8:	e7fb      	b.n	80023d2 <i2c_delay+0x2>
 80023da:	4770      	bx	lr

080023dc <SetLowSDA>:
 80023dc:	b537      	push	{r0, r1, r2, r4, r5, lr}
 80023de:	4d0d      	ldr	r5, [pc, #52]	; (8002414 <SetLowSDA+0x38>)
 80023e0:	2301      	movs	r3, #1
 80023e2:	2203      	movs	r2, #3
 80023e4:	2480      	movs	r4, #128	; 0x80
 80023e6:	f88d 3004 	strb.w	r3, [sp, #4]
 80023ea:	f88d 3006 	strb.w	r3, [sp, #6]
 80023ee:	4628      	mov	r0, r5
 80023f0:	2300      	movs	r3, #0
 80023f2:	4669      	mov	r1, sp
 80023f4:	f88d 2005 	strb.w	r2, [sp, #5]
 80023f8:	f88d 3007 	strb.w	r3, [sp, #7]
 80023fc:	9400      	str	r4, [sp, #0]
 80023fe:	f000 fad8 	bl	80029b2 <GPIO_Init>
 8002402:	4628      	mov	r0, r5
 8002404:	4621      	mov	r1, r4
 8002406:	f000 fb1e 	bl	8002a46 <GPIO_ResetBits>
 800240a:	f7ff ffe1 	bl	80023d0 <i2c_delay>
 800240e:	b003      	add	sp, #12
 8002410:	bd30      	pop	{r4, r5, pc}
 8002412:	bf00      	nop
 8002414:	48000400 	.word	0x48000400

08002418 <SetHighSDA>:
 8002418:	b537      	push	{r0, r1, r2, r4, r5, lr}
 800241a:	4d0d      	ldr	r5, [pc, #52]	; (8002450 <SetHighSDA+0x38>)
 800241c:	2203      	movs	r2, #3
 800241e:	2300      	movs	r3, #0
 8002420:	2480      	movs	r4, #128	; 0x80
 8002422:	f88d 2005 	strb.w	r2, [sp, #5]
 8002426:	4628      	mov	r0, r5
 8002428:	2201      	movs	r2, #1
 800242a:	4669      	mov	r1, sp
 800242c:	f88d 3004 	strb.w	r3, [sp, #4]
 8002430:	f88d 2006 	strb.w	r2, [sp, #6]
 8002434:	f88d 3007 	strb.w	r3, [sp, #7]
 8002438:	9400      	str	r4, [sp, #0]
 800243a:	f000 faba 	bl	80029b2 <GPIO_Init>
 800243e:	4628      	mov	r0, r5
 8002440:	4621      	mov	r1, r4
 8002442:	f000 fafc 	bl	8002a3e <GPIO_SetBits>
 8002446:	f7ff ffc3 	bl	80023d0 <i2c_delay>
 800244a:	b003      	add	sp, #12
 800244c:	bd30      	pop	{r4, r5, pc}
 800244e:	bf00      	nop
 8002450:	48000400 	.word	0x48000400

08002454 <SetLowSCL>:
 8002454:	b508      	push	{r3, lr}
 8002456:	4804      	ldr	r0, [pc, #16]	; (8002468 <SetLowSCL+0x14>)
 8002458:	2140      	movs	r1, #64	; 0x40
 800245a:	f000 faf4 	bl	8002a46 <GPIO_ResetBits>
 800245e:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8002462:	f7ff bfb5 	b.w	80023d0 <i2c_delay>
 8002466:	bf00      	nop
 8002468:	48000400 	.word	0x48000400

0800246c <SetHighSCL>:
 800246c:	b508      	push	{r3, lr}
 800246e:	4804      	ldr	r0, [pc, #16]	; (8002480 <SetHighSCL+0x14>)
 8002470:	2140      	movs	r1, #64	; 0x40
 8002472:	f000 fae4 	bl	8002a3e <GPIO_SetBits>
 8002476:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800247a:	f7ff bfa9 	b.w	80023d0 <i2c_delay>
 800247e:	bf00      	nop
 8002480:	48000400 	.word	0x48000400

08002484 <i2c_0_init>:
 8002484:	b507      	push	{r0, r1, r2, lr}
 8002486:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 800248a:	2101      	movs	r1, #1
 800248c:	f7ff fc84 	bl	8001d98 <RCC_AHBPeriphClockCmd>
 8002490:	23c0      	movs	r3, #192	; 0xc0
 8002492:	9300      	str	r3, [sp, #0]
 8002494:	2301      	movs	r3, #1
 8002496:	2203      	movs	r2, #3
 8002498:	480a      	ldr	r0, [pc, #40]	; (80024c4 <i2c_0_init+0x40>)
 800249a:	f88d 3004 	strb.w	r3, [sp, #4]
 800249e:	4669      	mov	r1, sp
 80024a0:	f88d 3006 	strb.w	r3, [sp, #6]
 80024a4:	2300      	movs	r3, #0
 80024a6:	f88d 2005 	strb.w	r2, [sp, #5]
 80024aa:	f88d 3007 	strb.w	r3, [sp, #7]
 80024ae:	f000 fa80 	bl	80029b2 <GPIO_Init>
 80024b2:	f7ff ffdb 	bl	800246c <SetHighSCL>
 80024b6:	f7ff ff91 	bl	80023dc <SetLowSDA>
 80024ba:	f7ff ffad 	bl	8002418 <SetHighSDA>
 80024be:	b003      	add	sp, #12
 80024c0:	f85d fb04 	ldr.w	pc, [sp], #4
 80024c4:	48000400 	.word	0x48000400

080024c8 <i2cStart>:
 80024c8:	b508      	push	{r3, lr}
 80024ca:	f7ff ffcf 	bl	800246c <SetHighSCL>
 80024ce:	f7ff ffa3 	bl	8002418 <SetHighSDA>
 80024d2:	f7ff ffcb 	bl	800246c <SetHighSCL>
 80024d6:	f7ff ff81 	bl	80023dc <SetLowSDA>
 80024da:	f7ff ffbb 	bl	8002454 <SetLowSCL>
 80024de:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80024e2:	f7ff bf99 	b.w	8002418 <SetHighSDA>

080024e6 <i2cStop>:
 80024e6:	b508      	push	{r3, lr}
 80024e8:	f7ff ffb4 	bl	8002454 <SetLowSCL>
 80024ec:	f7ff ff76 	bl	80023dc <SetLowSDA>
 80024f0:	f7ff ffbc 	bl	800246c <SetHighSCL>
 80024f4:	f7ff ff72 	bl	80023dc <SetLowSDA>
 80024f8:	f7ff ffb8 	bl	800246c <SetHighSCL>
 80024fc:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8002500:	f7ff bf8a 	b.w	8002418 <SetHighSDA>

08002504 <i2cWrite>:
 8002504:	b538      	push	{r3, r4, r5, lr}
 8002506:	4604      	mov	r4, r0
 8002508:	2508      	movs	r5, #8
 800250a:	f7ff ffa3 	bl	8002454 <SetLowSCL>
 800250e:	0623      	lsls	r3, r4, #24
 8002510:	d502      	bpl.n	8002518 <i2cWrite+0x14>
 8002512:	f7ff ff81 	bl	8002418 <SetHighSDA>
 8002516:	e001      	b.n	800251c <i2cWrite+0x18>
 8002518:	f7ff ff60 	bl	80023dc <SetLowSDA>
 800251c:	3d01      	subs	r5, #1
 800251e:	f7ff ffa5 	bl	800246c <SetHighSCL>
 8002522:	0064      	lsls	r4, r4, #1
 8002524:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 8002528:	b2e4      	uxtb	r4, r4
 800252a:	d1ee      	bne.n	800250a <i2cWrite+0x6>
 800252c:	f7ff ff92 	bl	8002454 <SetLowSCL>
 8002530:	f7ff ff72 	bl	8002418 <SetHighSDA>
 8002534:	f7ff ff9a 	bl	800246c <SetHighSCL>
 8002538:	4b05      	ldr	r3, [pc, #20]	; (8002550 <i2cWrite+0x4c>)
 800253a:	8a1c      	ldrh	r4, [r3, #16]
 800253c:	b2a4      	uxth	r4, r4
 800253e:	f7ff ff89 	bl	8002454 <SetLowSCL>
 8002542:	f7ff ff45 	bl	80023d0 <i2c_delay>
 8002546:	f084 0080 	eor.w	r0, r4, #128	; 0x80
 800254a:	f3c0 10c0 	ubfx	r0, r0, #7, #1
 800254e:	bd38      	pop	{r3, r4, r5, pc}
 8002550:	48000400 	.word	0x48000400

08002554 <i2cRead>:
 8002554:	b570      	push	{r4, r5, r6, lr}
 8002556:	4606      	mov	r6, r0
 8002558:	f7ff ff7c 	bl	8002454 <SetLowSCL>
 800255c:	f7ff ff5c 	bl	8002418 <SetHighSDA>
 8002560:	2508      	movs	r5, #8
 8002562:	2400      	movs	r4, #0
 8002564:	f7ff ff82 	bl	800246c <SetHighSCL>
 8002568:	4b0d      	ldr	r3, [pc, #52]	; (80025a0 <i2cRead+0x4c>)
 800256a:	8a1b      	ldrh	r3, [r3, #16]
 800256c:	0064      	lsls	r4, r4, #1
 800256e:	061a      	lsls	r2, r3, #24
 8002570:	b2e4      	uxtb	r4, r4
 8002572:	bf48      	it	mi
 8002574:	3401      	addmi	r4, #1
 8002576:	f105 35ff 	add.w	r5, r5, #4294967295
 800257a:	bf48      	it	mi
 800257c:	b2e4      	uxtbmi	r4, r4
 800257e:	f7ff ff69 	bl	8002454 <SetLowSCL>
 8002582:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 8002586:	d1ed      	bne.n	8002564 <i2cRead+0x10>
 8002588:	b10e      	cbz	r6, 800258e <i2cRead+0x3a>
 800258a:	f7ff ff27 	bl	80023dc <SetLowSDA>
 800258e:	f7ff ff6d 	bl	800246c <SetHighSCL>
 8002592:	f7ff ff5f 	bl	8002454 <SetLowSCL>
 8002596:	f7ff ff1b 	bl	80023d0 <i2c_delay>
 800259a:	4620      	mov	r0, r4
 800259c:	bd70      	pop	{r4, r5, r6, pc}
 800259e:	bf00      	nop
 80025a0:	48000400 	.word	0x48000400

080025a4 <i2c_write_reg>:
 80025a4:	b570      	push	{r4, r5, r6, lr}
 80025a6:	4605      	mov	r5, r0
 80025a8:	460c      	mov	r4, r1
 80025aa:	4616      	mov	r6, r2
 80025ac:	f7ff ff8c 	bl	80024c8 <i2cStart>
 80025b0:	4628      	mov	r0, r5
 80025b2:	f7ff ffa7 	bl	8002504 <i2cWrite>
 80025b6:	4620      	mov	r0, r4
 80025b8:	f7ff ffa4 	bl	8002504 <i2cWrite>
 80025bc:	4630      	mov	r0, r6
 80025be:	f7ff ffa1 	bl	8002504 <i2cWrite>
 80025c2:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 80025c6:	f7ff bf8e 	b.w	80024e6 <i2cStop>

080025ca <i2c_read_reg>:
 80025ca:	b538      	push	{r3, r4, r5, lr}
 80025cc:	4604      	mov	r4, r0
 80025ce:	460d      	mov	r5, r1
 80025d0:	f7ff ff7a 	bl	80024c8 <i2cStart>
 80025d4:	4620      	mov	r0, r4
 80025d6:	f7ff ff95 	bl	8002504 <i2cWrite>
 80025da:	4628      	mov	r0, r5
 80025dc:	f7ff ff92 	bl	8002504 <i2cWrite>
 80025e0:	f7ff ff72 	bl	80024c8 <i2cStart>
 80025e4:	f044 0001 	orr.w	r0, r4, #1
 80025e8:	f7ff ff8c 	bl	8002504 <i2cWrite>
 80025ec:	2000      	movs	r0, #0
 80025ee:	f7ff ffb1 	bl	8002554 <i2cRead>
 80025f2:	4604      	mov	r4, r0
 80025f4:	f7ff ff77 	bl	80024e6 <i2cStop>
 80025f8:	4620      	mov	r0, r4
 80025fa:	bd38      	pop	{r3, r4, r5, pc}

080025fc <SystemInit>:
 80025fc:	4b3b      	ldr	r3, [pc, #236]	; (80026ec <SystemInit+0xf0>)
 80025fe:	f8d3 2088 	ldr.w	r2, [r3, #136]	; 0x88
 8002602:	f442 0270 	orr.w	r2, r2, #15728640	; 0xf00000
 8002606:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
 800260a:	4b39      	ldr	r3, [pc, #228]	; (80026f0 <SystemInit+0xf4>)
 800260c:	681a      	ldr	r2, [r3, #0]
 800260e:	f042 0201 	orr.w	r2, r2, #1
 8002612:	601a      	str	r2, [r3, #0]
 8002614:	6859      	ldr	r1, [r3, #4]
 8002616:	4a37      	ldr	r2, [pc, #220]	; (80026f4 <SystemInit+0xf8>)
 8002618:	400a      	ands	r2, r1
 800261a:	605a      	str	r2, [r3, #4]
 800261c:	681a      	ldr	r2, [r3, #0]
 800261e:	f022 7284 	bic.w	r2, r2, #17301504	; 0x1080000
 8002622:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
 8002626:	601a      	str	r2, [r3, #0]
 8002628:	681a      	ldr	r2, [r3, #0]
 800262a:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 800262e:	601a      	str	r2, [r3, #0]
 8002630:	685a      	ldr	r2, [r3, #4]
 8002632:	f422 02fe 	bic.w	r2, r2, #8323072	; 0x7f0000
 8002636:	605a      	str	r2, [r3, #4]
 8002638:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 800263a:	f022 020f 	bic.w	r2, r2, #15
 800263e:	62da      	str	r2, [r3, #44]	; 0x2c
 8002640:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8002642:	4a2d      	ldr	r2, [pc, #180]	; (80026f8 <SystemInit+0xfc>)
 8002644:	b082      	sub	sp, #8
 8002646:	400a      	ands	r2, r1
 8002648:	631a      	str	r2, [r3, #48]	; 0x30
 800264a:	2200      	movs	r2, #0
 800264c:	609a      	str	r2, [r3, #8]
 800264e:	9200      	str	r2, [sp, #0]
 8002650:	9201      	str	r2, [sp, #4]
 8002652:	681a      	ldr	r2, [r3, #0]
 8002654:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
 8002658:	601a      	str	r2, [r3, #0]
 800265a:	4b25      	ldr	r3, [pc, #148]	; (80026f0 <SystemInit+0xf4>)
 800265c:	681a      	ldr	r2, [r3, #0]
 800265e:	f402 3200 	and.w	r2, r2, #131072	; 0x20000
 8002662:	9201      	str	r2, [sp, #4]
 8002664:	9a00      	ldr	r2, [sp, #0]
 8002666:	3201      	adds	r2, #1
 8002668:	9200      	str	r2, [sp, #0]
 800266a:	9a01      	ldr	r2, [sp, #4]
 800266c:	b91a      	cbnz	r2, 8002676 <SystemInit+0x7a>
 800266e:	9a00      	ldr	r2, [sp, #0]
 8002670:	f5b2 4fa0 	cmp.w	r2, #20480	; 0x5000
 8002674:	d1f1      	bne.n	800265a <SystemInit+0x5e>
 8002676:	681b      	ldr	r3, [r3, #0]
 8002678:	f413 3300 	ands.w	r3, r3, #131072	; 0x20000
 800267c:	bf18      	it	ne
 800267e:	2301      	movne	r3, #1
 8002680:	9301      	str	r3, [sp, #4]
 8002682:	9b01      	ldr	r3, [sp, #4]
 8002684:	2b01      	cmp	r3, #1
 8002686:	d005      	beq.n	8002694 <SystemInit+0x98>
 8002688:	4b18      	ldr	r3, [pc, #96]	; (80026ec <SystemInit+0xf0>)
 800268a:	f04f 6200 	mov.w	r2, #134217728	; 0x8000000
 800268e:	609a      	str	r2, [r3, #8]
 8002690:	b002      	add	sp, #8
 8002692:	4770      	bx	lr
 8002694:	4b19      	ldr	r3, [pc, #100]	; (80026fc <SystemInit+0x100>)
 8002696:	2212      	movs	r2, #18
 8002698:	601a      	str	r2, [r3, #0]
 800269a:	f5a3 5380 	sub.w	r3, r3, #4096	; 0x1000
 800269e:	685a      	ldr	r2, [r3, #4]
 80026a0:	605a      	str	r2, [r3, #4]
 80026a2:	685a      	ldr	r2, [r3, #4]
 80026a4:	605a      	str	r2, [r3, #4]
 80026a6:	685a      	ldr	r2, [r3, #4]
 80026a8:	f442 6280 	orr.w	r2, r2, #1024	; 0x400
 80026ac:	605a      	str	r2, [r3, #4]
 80026ae:	685a      	ldr	r2, [r3, #4]
 80026b0:	f422 127c 	bic.w	r2, r2, #4128768	; 0x3f0000
 80026b4:	605a      	str	r2, [r3, #4]
 80026b6:	685a      	ldr	r2, [r3, #4]
 80026b8:	f442 12e8 	orr.w	r2, r2, #1900544	; 0x1d0000
 80026bc:	605a      	str	r2, [r3, #4]
 80026be:	681a      	ldr	r2, [r3, #0]
 80026c0:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
 80026c4:	601a      	str	r2, [r3, #0]
 80026c6:	6819      	ldr	r1, [r3, #0]
 80026c8:	4a09      	ldr	r2, [pc, #36]	; (80026f0 <SystemInit+0xf4>)
 80026ca:	0189      	lsls	r1, r1, #6
 80026cc:	d5fb      	bpl.n	80026c6 <SystemInit+0xca>
 80026ce:	6853      	ldr	r3, [r2, #4]
 80026d0:	f023 0303 	bic.w	r3, r3, #3
 80026d4:	6053      	str	r3, [r2, #4]
 80026d6:	6853      	ldr	r3, [r2, #4]
 80026d8:	f043 0302 	orr.w	r3, r3, #2
 80026dc:	6053      	str	r3, [r2, #4]
 80026de:	4b04      	ldr	r3, [pc, #16]	; (80026f0 <SystemInit+0xf4>)
 80026e0:	685b      	ldr	r3, [r3, #4]
 80026e2:	f003 030c 	and.w	r3, r3, #12
 80026e6:	2b08      	cmp	r3, #8
 80026e8:	d1f9      	bne.n	80026de <SystemInit+0xe2>
 80026ea:	e7cd      	b.n	8002688 <SystemInit+0x8c>
 80026ec:	e000ed00 	.word	0xe000ed00
 80026f0:	40021000 	.word	0x40021000
 80026f4:	f87fc00c 	.word	0xf87fc00c
 80026f8:	ff00fccc 	.word	0xff00fccc
 80026fc:	40022000 	.word	0x40022000

08002700 <sys_tick_init>:
 8002700:	4b05      	ldr	r3, [pc, #20]	; (8002718 <sys_tick_init+0x18>)
 8002702:	4a06      	ldr	r2, [pc, #24]	; (800271c <sys_tick_init+0x1c>)
 8002704:	605a      	str	r2, [r3, #4]
 8002706:	4a06      	ldr	r2, [pc, #24]	; (8002720 <sys_tick_init+0x20>)
 8002708:	21f0      	movs	r1, #240	; 0xf0
 800270a:	f882 1023 	strb.w	r1, [r2, #35]	; 0x23
 800270e:	2200      	movs	r2, #0
 8002710:	609a      	str	r2, [r3, #8]
 8002712:	2207      	movs	r2, #7
 8002714:	601a      	str	r2, [r3, #0]
 8002716:	4770      	bx	lr
 8002718:	e000e010 	.word	0xe000e010
 800271c:	00029040 	.word	0x00029040
 8002720:	e000ed00 	.word	0xe000ed00

08002724 <sleep>:
 8002724:	bf30      	wfi
 8002726:	4770      	bx	lr

08002728 <sytem_clock_init>:
 8002728:	f7ff bf68 	b.w	80025fc <SystemInit>

0800272c <pwm_set>:
 800272c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8002730:	b086      	sub	sp, #24
 8002732:	2370      	movs	r3, #112	; 0x70
 8002734:	9301      	str	r3, [sp, #4]
 8002736:	2301      	movs	r3, #1
 8002738:	f8ad 3008 	strh.w	r3, [sp, #8]
 800273c:	2304      	movs	r3, #4
 800273e:	f8ad 300a 	strh.w	r3, [sp, #10]
 8002742:	4f17      	ldr	r7, [pc, #92]	; (80027a0 <pwm_set+0x74>)
 8002744:	4c17      	ldr	r4, [pc, #92]	; (80027a4 <pwm_set+0x78>)
 8002746:	2302      	movs	r3, #2
 8002748:	f8ad 3010 	strh.w	r3, [sp, #16]
 800274c:	2300      	movs	r3, #0
 800274e:	f8ad 3012 	strh.w	r3, [sp, #18]
 8002752:	f8ad 3016 	strh.w	r3, [sp, #22]
 8002756:	683b      	ldr	r3, [r7, #0]
 8002758:	f242 7610 	movw	r6, #10000	; 0x2710
 800275c:	fbb3 f3f6 	udiv	r3, r3, r6
 8002760:	3b02      	subs	r3, #2
 8002762:	4358      	muls	r0, r3
 8002764:	2564      	movs	r5, #100	; 0x64
 8002766:	fbb0 f3f5 	udiv	r3, r0, r5
 800276a:	f44f 7280 	mov.w	r2, #256	; 0x100
 800276e:	4620      	mov	r0, r4
 8002770:	4688      	mov	r8, r1
 8002772:	a901      	add	r1, sp, #4
 8002774:	f8ad 2014 	strh.w	r2, [sp, #20]
 8002778:	9303      	str	r3, [sp, #12]
 800277a:	f7ff fb95 	bl	8001ea8 <TIM_OC1Init>
 800277e:	683b      	ldr	r3, [r7, #0]
 8002780:	fbb3 f6f6 	udiv	r6, r3, r6
 8002784:	3e02      	subs	r6, #2
 8002786:	fb06 f808 	mul.w	r8, r6, r8
 800278a:	fbb8 f5f5 	udiv	r5, r8, r5
 800278e:	4620      	mov	r0, r4
 8002790:	a901      	add	r1, sp, #4
 8002792:	9503      	str	r5, [sp, #12]
 8002794:	f7ff fbce 	bl	8001f34 <TIM_OC2Init>
 8002798:	b006      	add	sp, #24
 800279a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800279e:	bf00      	nop
 80027a0:	200001e0 	.word	0x200001e0
 80027a4:	40012c00 	.word	0x40012c00

080027a8 <pwm_init>:
 80027a8:	b530      	push	{r4, r5, lr}
 80027aa:	f44f 6000 	mov.w	r0, #2048	; 0x800
 80027ae:	b087      	sub	sp, #28
 80027b0:	2101      	movs	r1, #1
 80027b2:	f7ff faff 	bl	8001db4 <RCC_APB2PeriphClockCmd>
 80027b6:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 80027ba:	2101      	movs	r1, #1
 80027bc:	f7ff faec 	bl	8001d98 <RCC_AHBPeriphClockCmd>
 80027c0:	4c1d      	ldr	r4, [pc, #116]	; (8002838 <pwm_init+0x90>)
 80027c2:	4d1e      	ldr	r5, [pc, #120]	; (800283c <pwm_init+0x94>)
 80027c4:	f44f 43c0 	mov.w	r3, #24576	; 0x6000
 80027c8:	9301      	str	r3, [sp, #4]
 80027ca:	2302      	movs	r3, #2
 80027cc:	f88d 3008 	strb.w	r3, [sp, #8]
 80027d0:	4620      	mov	r0, r4
 80027d2:	2303      	movs	r3, #3
 80027d4:	a901      	add	r1, sp, #4
 80027d6:	f88d 3009 	strb.w	r3, [sp, #9]
 80027da:	f000 f8ea 	bl	80029b2 <GPIO_Init>
 80027de:	4620      	mov	r0, r4
 80027e0:	210d      	movs	r1, #13
 80027e2:	2206      	movs	r2, #6
 80027e4:	f000 f933 	bl	8002a4e <GPIO_PinAFConfig>
 80027e8:	4620      	mov	r0, r4
 80027ea:	210e      	movs	r1, #14
 80027ec:	2206      	movs	r2, #6
 80027ee:	f000 f92e 	bl	8002a4e <GPIO_PinAFConfig>
 80027f2:	4b13      	ldr	r3, [pc, #76]	; (8002840 <pwm_init+0x98>)
 80027f4:	681a      	ldr	r2, [r3, #0]
 80027f6:	f242 7310 	movw	r3, #10000	; 0x2710
 80027fa:	fbb2 f3f3 	udiv	r3, r2, r3
 80027fe:	2400      	movs	r4, #0
 8002800:	3b01      	subs	r3, #1
 8002802:	4628      	mov	r0, r5
 8002804:	a903      	add	r1, sp, #12
 8002806:	9304      	str	r3, [sp, #16]
 8002808:	f8ad 400c 	strh.w	r4, [sp, #12]
 800280c:	f8ad 400e 	strh.w	r4, [sp, #14]
 8002810:	f8ad 4014 	strh.w	r4, [sp, #20]
 8002814:	f8ad 4016 	strh.w	r4, [sp, #22]
 8002818:	f7ff fae8 	bl	8001dec <TIM_TimeBaseInit>
 800281c:	4620      	mov	r0, r4
 800281e:	4621      	mov	r1, r4
 8002820:	f7ff ff84 	bl	800272c <pwm_set>
 8002824:	4628      	mov	r0, r5
 8002826:	2101      	movs	r1, #1
 8002828:	f7ff fb30 	bl	8001e8c <TIM_Cmd>
 800282c:	4628      	mov	r0, r5
 800282e:	2101      	movs	r1, #1
 8002830:	f7ff fbbe 	bl	8001fb0 <TIM_CtrlPWMOutputs>
 8002834:	b007      	add	sp, #28
 8002836:	bd30      	pop	{r4, r5, pc}
 8002838:	48000400 	.word	0x48000400
 800283c:	40012c00 	.word	0x40012c00
 8002840:	200001e0 	.word	0x200001e0

08002844 <drv8834_run>:
 8002844:	1e02      	subs	r2, r0, #0
 8002846:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 800284a:	dd07      	ble.n	800285c <drv8834_run+0x18>
 800284c:	8d18      	ldrh	r0, [r3, #40]	; 0x28
 800284e:	ea6f 4040 	mvn.w	r0, r0, lsl #17
 8002852:	ea6f 4050 	mvn.w	r0, r0, lsr #17
 8002856:	b280      	uxth	r0, r0
 8002858:	8518      	strh	r0, [r3, #40]	; 0x28
 800285a:	e005      	b.n	8002868 <drv8834_run+0x24>
 800285c:	6998      	ldr	r0, [r3, #24]
 800285e:	4252      	negs	r2, r2
 8002860:	f440 4000 	orr.w	r0, r0, #32768	; 0x8000
 8002864:	6198      	str	r0, [r3, #24]
 8002866:	b212      	sxth	r2, r2
 8002868:	2900      	cmp	r1, #0
 800286a:	4b0c      	ldr	r3, [pc, #48]	; (800289c <drv8834_run+0x58>)
 800286c:	dd05      	ble.n	800287a <drv8834_run+0x36>
 800286e:	8d18      	ldrh	r0, [r3, #40]	; 0x28
 8002870:	b280      	uxth	r0, r0
 8002872:	f040 0020 	orr.w	r0, r0, #32
 8002876:	8518      	strh	r0, [r3, #40]	; 0x28
 8002878:	e005      	b.n	8002886 <drv8834_run+0x42>
 800287a:	6998      	ldr	r0, [r3, #24]
 800287c:	4249      	negs	r1, r1
 800287e:	f040 0020 	orr.w	r0, r0, #32
 8002882:	6198      	str	r0, [r3, #24]
 8002884:	b209      	sxth	r1, r1
 8002886:	2964      	cmp	r1, #100	; 0x64
 8002888:	bfb4      	ite	lt
 800288a:	4608      	movlt	r0, r1
 800288c:	2064      	movge	r0, #100	; 0x64
 800288e:	2a64      	cmp	r2, #100	; 0x64
 8002890:	bfb4      	ite	lt
 8002892:	4611      	movlt	r1, r2
 8002894:	2164      	movge	r1, #100	; 0x64
 8002896:	f7ff bf49 	b.w	800272c <pwm_set>
 800289a:	bf00      	nop
 800289c:	48000400 	.word	0x48000400

080028a0 <drv8834_init>:
 80028a0:	e92d 41f3 	stmdb	sp!, {r0, r1, r4, r5, r6, r7, r8, lr}
 80028a4:	4f1d      	ldr	r7, [pc, #116]	; (800291c <drv8834_init+0x7c>)
 80028a6:	2400      	movs	r4, #0
 80028a8:	2601      	movs	r6, #1
 80028aa:	2503      	movs	r5, #3
 80028ac:	f04f 0810 	mov.w	r8, #16
 80028b0:	4638      	mov	r0, r7
 80028b2:	4669      	mov	r1, sp
 80028b4:	f8cd 8000 	str.w	r8, [sp]
 80028b8:	f88d 6004 	strb.w	r6, [sp, #4]
 80028bc:	f88d 4006 	strb.w	r4, [sp, #6]
 80028c0:	f88d 5005 	strb.w	r5, [sp, #5]
 80028c4:	f88d 4007 	strb.w	r4, [sp, #7]
 80028c8:	f000 f873 	bl	80029b2 <GPIO_Init>
 80028cc:	f8a7 8028 	strh.w	r8, [r7, #40]	; 0x28
 80028d0:	2320      	movs	r3, #32
 80028d2:	4638      	mov	r0, r7
 80028d4:	4669      	mov	r1, sp
 80028d6:	9300      	str	r3, [sp, #0]
 80028d8:	f88d 6004 	strb.w	r6, [sp, #4]
 80028dc:	f88d 4006 	strb.w	r4, [sp, #6]
 80028e0:	f88d 5005 	strb.w	r5, [sp, #5]
 80028e4:	f88d 4007 	strb.w	r4, [sp, #7]
 80028e8:	f000 f863 	bl	80029b2 <GPIO_Init>
 80028ec:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 80028f0:	4669      	mov	r1, sp
 80028f2:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80028f6:	9300      	str	r3, [sp, #0]
 80028f8:	f88d 6004 	strb.w	r6, [sp, #4]
 80028fc:	f88d 4006 	strb.w	r4, [sp, #6]
 8002900:	f88d 5005 	strb.w	r5, [sp, #5]
 8002904:	f88d 4007 	strb.w	r4, [sp, #7]
 8002908:	f000 f853 	bl	80029b2 <GPIO_Init>
 800290c:	4620      	mov	r0, r4
 800290e:	4621      	mov	r1, r4
 8002910:	f7ff ff98 	bl	8002844 <drv8834_run>
 8002914:	b002      	add	sp, #8
 8002916:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800291a:	bf00      	nop
 800291c:	48000400 	.word	0x48000400

08002920 <NVIC_Init>:
 8002920:	b510      	push	{r4, lr}
 8002922:	bf00      	nop
 8002924:	bf00      	nop
 8002926:	bf00      	nop
 8002928:	78c2      	ldrb	r2, [r0, #3]
 800292a:	7803      	ldrb	r3, [r0, #0]
 800292c:	b30a      	cbz	r2, 8002972 <NVIC_Init+0x52>
 800292e:	4a16      	ldr	r2, [pc, #88]	; (8002988 <NVIC_Init+0x68>)
 8002930:	7844      	ldrb	r4, [r0, #1]
 8002932:	68d2      	ldr	r2, [r2, #12]
 8002934:	43d2      	mvns	r2, r2
 8002936:	f3c2 2202 	ubfx	r2, r2, #8, #3
 800293a:	f1c2 0104 	rsb	r1, r2, #4
 800293e:	b2c9      	uxtb	r1, r1
 8002940:	fa04 f101 	lsl.w	r1, r4, r1
 8002944:	240f      	movs	r4, #15
 8002946:	fa44 f202 	asr.w	r2, r4, r2
 800294a:	7884      	ldrb	r4, [r0, #2]
 800294c:	b2c9      	uxtb	r1, r1
 800294e:	4022      	ands	r2, r4
 8002950:	430a      	orrs	r2, r1
 8002952:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
 8002956:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
 800295a:	0112      	lsls	r2, r2, #4
 800295c:	b2d2      	uxtb	r2, r2
 800295e:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
 8002962:	7803      	ldrb	r3, [r0, #0]
 8002964:	2201      	movs	r2, #1
 8002966:	0959      	lsrs	r1, r3, #5
 8002968:	f003 031f 	and.w	r3, r3, #31
 800296c:	fa02 f303 	lsl.w	r3, r2, r3
 8002970:	e006      	b.n	8002980 <NVIC_Init+0x60>
 8002972:	0959      	lsrs	r1, r3, #5
 8002974:	2201      	movs	r2, #1
 8002976:	f003 031f 	and.w	r3, r3, #31
 800297a:	fa02 f303 	lsl.w	r3, r2, r3
 800297e:	3120      	adds	r1, #32
 8002980:	4a02      	ldr	r2, [pc, #8]	; (800298c <NVIC_Init+0x6c>)
 8002982:	f842 3021 	str.w	r3, [r2, r1, lsl #2]
 8002986:	bd10      	pop	{r4, pc}
 8002988:	e000ed00 	.word	0xe000ed00
 800298c:	e000e100 	.word	0xe000e100

08002990 <lib_low_level_init>:
 8002990:	b508      	push	{r3, lr}
 8002992:	f7ff fec9 	bl	8002728 <sytem_clock_init>
 8002996:	f000 f871 	bl	8002a7c <gpio_init>
 800299a:	f7ff fc93 	bl	80022c4 <uart_init>
 800299e:	f7ff fb17 	bl	8001fd0 <timer_init>
 80029a2:	f7ff ff01 	bl	80027a8 <pwm_init>
 80029a6:	f7ff ff7b 	bl	80028a0 <drv8834_init>
 80029aa:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80029ae:	f7ff bd69 	b.w	8002484 <i2c_0_init>

080029b2 <GPIO_Init>:
 80029b2:	b5f0      	push	{r4, r5, r6, r7, lr}
 80029b4:	bf00      	nop
 80029b6:	bf00      	nop
 80029b8:	bf00      	nop
 80029ba:	bf00      	nop
 80029bc:	2300      	movs	r3, #0
 80029be:	680e      	ldr	r6, [r1, #0]
 80029c0:	461a      	mov	r2, r3
 80029c2:	2501      	movs	r5, #1
 80029c4:	4095      	lsls	r5, r2
 80029c6:	ea05 0406 	and.w	r4, r5, r6
 80029ca:	42ac      	cmp	r4, r5
 80029cc:	d131      	bne.n	8002a32 <GPIO_Init+0x80>
 80029ce:	790d      	ldrb	r5, [r1, #4]
 80029d0:	1e6f      	subs	r7, r5, #1
 80029d2:	b2ff      	uxtb	r7, r7
 80029d4:	2f01      	cmp	r7, #1
 80029d6:	d81c      	bhi.n	8002a12 <GPIO_Init+0x60>
 80029d8:	bf00      	nop
 80029da:	f04f 0c03 	mov.w	ip, #3
 80029de:	6887      	ldr	r7, [r0, #8]
 80029e0:	fa0c fc03 	lsl.w	ip, ip, r3
 80029e4:	ea27 070c 	bic.w	r7, r7, ip
 80029e8:	6087      	str	r7, [r0, #8]
 80029ea:	f891 c005 	ldrb.w	ip, [r1, #5]
 80029ee:	6887      	ldr	r7, [r0, #8]
 80029f0:	fa0c fc03 	lsl.w	ip, ip, r3
 80029f4:	ea4c 0707 	orr.w	r7, ip, r7
 80029f8:	6087      	str	r7, [r0, #8]
 80029fa:	bf00      	nop
 80029fc:	8887      	ldrh	r7, [r0, #4]
 80029fe:	b2bf      	uxth	r7, r7
 8002a00:	ea27 0404 	bic.w	r4, r7, r4
 8002a04:	8084      	strh	r4, [r0, #4]
 8002a06:	798c      	ldrb	r4, [r1, #6]
 8002a08:	8887      	ldrh	r7, [r0, #4]
 8002a0a:	4094      	lsls	r4, r2
 8002a0c:	433c      	orrs	r4, r7
 8002a0e:	b2a4      	uxth	r4, r4
 8002a10:	8084      	strh	r4, [r0, #4]
 8002a12:	2403      	movs	r4, #3
 8002a14:	6807      	ldr	r7, [r0, #0]
 8002a16:	409c      	lsls	r4, r3
 8002a18:	43e4      	mvns	r4, r4
 8002a1a:	4027      	ands	r7, r4
 8002a1c:	6007      	str	r7, [r0, #0]
 8002a1e:	6807      	ldr	r7, [r0, #0]
 8002a20:	409d      	lsls	r5, r3
 8002a22:	433d      	orrs	r5, r7
 8002a24:	6005      	str	r5, [r0, #0]
 8002a26:	68c5      	ldr	r5, [r0, #12]
 8002a28:	402c      	ands	r4, r5
 8002a2a:	79cd      	ldrb	r5, [r1, #7]
 8002a2c:	409d      	lsls	r5, r3
 8002a2e:	432c      	orrs	r4, r5
 8002a30:	60c4      	str	r4, [r0, #12]
 8002a32:	3201      	adds	r2, #1
 8002a34:	2a10      	cmp	r2, #16
 8002a36:	f103 0302 	add.w	r3, r3, #2
 8002a3a:	d1c2      	bne.n	80029c2 <GPIO_Init+0x10>
 8002a3c:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002a3e <GPIO_SetBits>:
 8002a3e:	bf00      	nop
 8002a40:	bf00      	nop
 8002a42:	6181      	str	r1, [r0, #24]
 8002a44:	4770      	bx	lr

08002a46 <GPIO_ResetBits>:
 8002a46:	bf00      	nop
 8002a48:	bf00      	nop
 8002a4a:	8501      	strh	r1, [r0, #40]	; 0x28
 8002a4c:	4770      	bx	lr

08002a4e <GPIO_PinAFConfig>:
 8002a4e:	b510      	push	{r4, lr}
 8002a50:	bf00      	nop
 8002a52:	bf00      	nop
 8002a54:	bf00      	nop
 8002a56:	f001 0307 	and.w	r3, r1, #7
 8002a5a:	08c9      	lsrs	r1, r1, #3
 8002a5c:	eb00 0081 	add.w	r0, r0, r1, lsl #2
 8002a60:	009b      	lsls	r3, r3, #2
 8002a62:	6a04      	ldr	r4, [r0, #32]
 8002a64:	210f      	movs	r1, #15
 8002a66:	4099      	lsls	r1, r3
 8002a68:	ea24 0101 	bic.w	r1, r4, r1
 8002a6c:	6201      	str	r1, [r0, #32]
 8002a6e:	6a01      	ldr	r1, [r0, #32]
 8002a70:	fa02 f303 	lsl.w	r3, r2, r3
 8002a74:	430b      	orrs	r3, r1
 8002a76:	6203      	str	r3, [r0, #32]
 8002a78:	bd10      	pop	{r4, pc}
	...

08002a7c <gpio_init>:
 8002a7c:	e92d 41f3 	stmdb	sp!, {r0, r1, r4, r5, r6, r7, r8, lr}
 8002a80:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 8002a84:	2101      	movs	r1, #1
 8002a86:	f7ff f987 	bl	8001d98 <RCC_AHBPeriphClockCmd>
 8002a8a:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 8002a8e:	2101      	movs	r1, #1
 8002a90:	f7ff f982 	bl	8001d98 <RCC_AHBPeriphClockCmd>
 8002a94:	f44f 2000 	mov.w	r0, #524288	; 0x80000
 8002a98:	2101      	movs	r1, #1
 8002a9a:	f7ff f97d 	bl	8001d98 <RCC_AHBPeriphClockCmd>
 8002a9e:	2400      	movs	r4, #0
 8002aa0:	2503      	movs	r5, #3
 8002aa2:	2601      	movs	r6, #1
 8002aa4:	f44f 4800 	mov.w	r8, #32768	; 0x8000
 8002aa8:	4669      	mov	r1, sp
 8002aaa:	4825      	ldr	r0, [pc, #148]	; (8002b40 <gpio_init+0xc4>)
 8002aac:	f8cd 8000 	str.w	r8, [sp]
 8002ab0:	f88d 6004 	strb.w	r6, [sp, #4]
 8002ab4:	f88d 4006 	strb.w	r4, [sp, #6]
 8002ab8:	f88d 5005 	strb.w	r5, [sp, #5]
 8002abc:	f88d 4007 	strb.w	r4, [sp, #7]
 8002ac0:	f7ff ff77 	bl	80029b2 <GPIO_Init>
 8002ac4:	f44f 5300 	mov.w	r3, #8192	; 0x2000
 8002ac8:	4669      	mov	r1, sp
 8002aca:	481e      	ldr	r0, [pc, #120]	; (8002b44 <gpio_init+0xc8>)
 8002acc:	9300      	str	r3, [sp, #0]
 8002ace:	f88d 6004 	strb.w	r6, [sp, #4]
 8002ad2:	f88d 4006 	strb.w	r4, [sp, #6]
 8002ad6:	f88d 5005 	strb.w	r5, [sp, #5]
 8002ada:	f88d 4007 	strb.w	r4, [sp, #7]
 8002ade:	f7ff ff68 	bl	80029b2 <GPIO_Init>
 8002ae2:	f44f 7300 	mov.w	r3, #512	; 0x200
 8002ae6:	4669      	mov	r1, sp
 8002ae8:	4815      	ldr	r0, [pc, #84]	; (8002b40 <gpio_init+0xc4>)
 8002aea:	9300      	str	r3, [sp, #0]
 8002aec:	4f16      	ldr	r7, [pc, #88]	; (8002b48 <gpio_init+0xcc>)
 8002aee:	f88d 4004 	strb.w	r4, [sp, #4]
 8002af2:	f88d 5005 	strb.w	r5, [sp, #5]
 8002af6:	f88d 4007 	strb.w	r4, [sp, #7]
 8002afa:	f7ff ff5a 	bl	80029b2 <GPIO_Init>
 8002afe:	f44f 6380 	mov.w	r3, #1024	; 0x400
 8002b02:	9300      	str	r3, [sp, #0]
 8002b04:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8002b08:	2302      	movs	r3, #2
 8002b0a:	4669      	mov	r1, sp
 8002b0c:	f88d 3007 	strb.w	r3, [sp, #7]
 8002b10:	603c      	str	r4, [r7, #0]
 8002b12:	f88d 4004 	strb.w	r4, [sp, #4]
 8002b16:	f88d 5005 	strb.w	r5, [sp, #5]
 8002b1a:	f7ff ff4a 	bl	80029b2 <GPIO_Init>
 8002b1e:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8002b22:	f44f 5200 	mov.w	r2, #8192	; 0x2000
 8002b26:	8a1b      	ldrh	r3, [r3, #16]
 8002b28:	f413 6f80 	tst.w	r3, #1024	; 0x400
 8002b2c:	4b04      	ldr	r3, [pc, #16]	; (8002b40 <gpio_init+0xc4>)
 8002b2e:	bf18      	it	ne
 8002b30:	603e      	strne	r6, [r7, #0]
 8002b32:	f8c3 8018 	str.w	r8, [r3, #24]
 8002b36:	f8c3 2418 	str.w	r2, [r3, #1048]	; 0x418
 8002b3a:	b002      	add	sp, #8
 8002b3c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8002b40:	48000400 	.word	0x48000400
 8002b44:	48000800 	.word	0x48000800
 8002b48:	200014fc 	.word	0x200014fc

08002b4c <led_on>:
 8002b4c:	0402      	lsls	r2, r0, #16
 8002b4e:	d503      	bpl.n	8002b58 <led_on+0xc>
 8002b50:	4b05      	ldr	r3, [pc, #20]	; (8002b68 <led_on+0x1c>)
 8002b52:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 8002b56:	619a      	str	r2, [r3, #24]
 8002b58:	0483      	lsls	r3, r0, #18
 8002b5a:	d503      	bpl.n	8002b64 <led_on+0x18>
 8002b5c:	4b03      	ldr	r3, [pc, #12]	; (8002b6c <led_on+0x20>)
 8002b5e:	f44f 5200 	mov.w	r2, #8192	; 0x2000
 8002b62:	851a      	strh	r2, [r3, #40]	; 0x28
 8002b64:	4770      	bx	lr
 8002b66:	bf00      	nop
 8002b68:	48000400 	.word	0x48000400
 8002b6c:	48000800 	.word	0x48000800

08002b70 <led_off>:
 8002b70:	0403      	lsls	r3, r0, #16
 8002b72:	d503      	bpl.n	8002b7c <led_off+0xc>
 8002b74:	4b05      	ldr	r3, [pc, #20]	; (8002b8c <led_off+0x1c>)
 8002b76:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 8002b7a:	851a      	strh	r2, [r3, #40]	; 0x28
 8002b7c:	0481      	lsls	r1, r0, #18
 8002b7e:	d503      	bpl.n	8002b88 <led_off+0x18>
 8002b80:	4b03      	ldr	r3, [pc, #12]	; (8002b90 <led_off+0x20>)
 8002b82:	f44f 5200 	mov.w	r2, #8192	; 0x2000
 8002b86:	619a      	str	r2, [r3, #24]
 8002b88:	4770      	bx	lr
 8002b8a:	bf00      	nop
 8002b8c:	48000400 	.word	0x48000400
 8002b90:	48000800 	.word	0x48000800

08002b94 <get_key>:
 8002b94:	4b02      	ldr	r3, [pc, #8]	; (8002ba0 <get_key+0xc>)
 8002b96:	8a18      	ldrh	r0, [r3, #16]
 8002b98:	43c0      	mvns	r0, r0
 8002b9a:	f400 7000 	and.w	r0, r0, #512	; 0x200
 8002b9e:	4770      	bx	lr
 8002ba0:	48000400 	.word	0x48000400

08002ba4 <get_mode_jumper>:
 8002ba4:	4b01      	ldr	r3, [pc, #4]	; (8002bac <get_mode_jumper+0x8>)
 8002ba6:	6818      	ldr	r0, [r3, #0]
 8002ba8:	4770      	bx	lr
 8002baa:	bf00      	nop
 8002bac:	200014fc 	.word	0x200014fc

08002bb0 <Default_Handler>:
 8002bb0:	4668      	mov	r0, sp
 8002bb2:	f020 0107 	bic.w	r1, r0, #7
 8002bb6:	468d      	mov	sp, r1
 8002bb8:	bf00      	nop
 8002bba:	e7fd      	b.n	8002bb8 <Default_Handler+0x8>

08002bbc <HardFault_Handler>:
 8002bbc:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8002bc0:	f7ff ffc4 	bl	8002b4c <led_on>
 8002bc4:	4b06      	ldr	r3, [pc, #24]	; (8002be0 <HardFault_Handler+0x24>)
 8002bc6:	3b01      	subs	r3, #1
 8002bc8:	d001      	beq.n	8002bce <HardFault_Handler+0x12>
 8002bca:	bf00      	nop
 8002bcc:	e7fb      	b.n	8002bc6 <HardFault_Handler+0xa>
 8002bce:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8002bd2:	f7ff ffcd 	bl	8002b70 <led_off>
 8002bd6:	4b02      	ldr	r3, [pc, #8]	; (8002be0 <HardFault_Handler+0x24>)
 8002bd8:	3b01      	subs	r3, #1
 8002bda:	d0ef      	beq.n	8002bbc <HardFault_Handler>
 8002bdc:	bf00      	nop
 8002bde:	e7fb      	b.n	8002bd8 <HardFault_Handler+0x1c>
 8002be0:	00989681 	.word	0x00989681

08002be4 <_reset_init>:
 8002be4:	4a0e      	ldr	r2, [pc, #56]	; (8002c20 <_reset_init+0x3c>)
 8002be6:	480f      	ldr	r0, [pc, #60]	; (8002c24 <_reset_init+0x40>)
 8002be8:	1a80      	subs	r0, r0, r2
 8002bea:	1080      	asrs	r0, r0, #2
 8002bec:	2300      	movs	r3, #0
 8002bee:	4283      	cmp	r3, r0
 8002bf0:	d006      	beq.n	8002c00 <_reset_init+0x1c>
 8002bf2:	490d      	ldr	r1, [pc, #52]	; (8002c28 <_reset_init+0x44>)
 8002bf4:	f851 1023 	ldr.w	r1, [r1, r3, lsl #2]
 8002bf8:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
 8002bfc:	3301      	adds	r3, #1
 8002bfe:	e7f6      	b.n	8002bee <_reset_init+0xa>
 8002c00:	4b0a      	ldr	r3, [pc, #40]	; (8002c2c <_reset_init+0x48>)
 8002c02:	f8d3 2088 	ldr.w	r2, [r3, #136]	; 0x88
 8002c06:	f442 0270 	orr.w	r2, r2, #15728640	; 0xf00000
 8002c0a:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
 8002c0e:	f503 730c 	add.w	r3, r3, #560	; 0x230
 8002c12:	685a      	ldr	r2, [r3, #4]
 8002c14:	f022 4240 	bic.w	r2, r2, #3221225472	; 0xc0000000
 8002c18:	605a      	str	r2, [r3, #4]
 8002c1a:	f7fe bf1d 	b.w	8001a58 <main>
 8002c1e:	bf00      	nop
 8002c20:	20000000 	.word	0x20000000
 8002c24:	200001e4 	.word	0x200001e4
 8002c28:	08002cec 	.word	0x08002cec
 8002c2c:	e000ed00 	.word	0xe000ed00

08002c30 <_init>:
 8002c30:	e1a0c00d 	mov	ip, sp
 8002c34:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
 8002c38:	e24cb004 	sub	fp, ip, #4
 8002c3c:	e24bd028 	sub	sp, fp, #40	; 0x28
 8002c40:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
 8002c44:	e12fff1e 	bx	lr

08002c48 <_fini>:
 8002c48:	e1a0c00d 	mov	ip, sp
 8002c4c:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
 8002c50:	e24cb004 	sub	fp, ip, #4
 8002c54:	e24bd028 	sub	sp, fp, #40	; 0x28
 8002c58:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
 8002c5c:	e12fff1e 	bx	lr
 8002c60:	69647473 	.word	0x69647473
 8002c64:	6e69206f 	.word	0x6e69206f
 8002c68:	64207469 	.word	0x64207469
 8002c6c:	0a656e6f 	.word	0x0a656e6f
 8002c70:	00          	.byte	0x00
 8002c71:	65          	.byte	0x65
 8002c72:	7272      	.short	0x7272
 8002c74:	6320726f 	.word	0x6320726f
 8002c78:	2065646f 	.word	0x2065646f
 8002c7c:	253a7525 	.word	0x253a7525
 8002c80:	0a75      	.short	0x0a75
 8002c82:	00          	.byte	0x00
 8002c83:	3e          	.byte	0x3e
 8002c84:	000a3e3e 	.word	0x000a3e3e
 8002c88:	25206925 	.word	0x25206925
 8002c8c:	69252069 	.word	0x69252069
 8002c90:	770a0020 	.word	0x770a0020
 8002c94:	6f636c65 	.word	0x6f636c65
 8002c98:	7420656d 	.word	0x7420656d
 8002c9c:	7553206f 	.word	0x7553206f
 8002ca0:	6168757a 	.word	0x6168757a
 8002ca4:	5e20534f 	.word	0x5e20534f
 8002ca8:	32205e5f 	.word	0x32205e5f
 8002cac:	362e302e 	.word	0x362e302e
 8002cb0:	4955420a 	.word	0x4955420a
 8002cb4:	4120444c 	.word	0x4120444c
 8002cb8:	32207270 	.word	0x32207270
 8002cbc:	30322036 	.word	0x30322036
 8002cc0:	32203631 	.word	0x32203631
 8002cc4:	34323a32 	.word	0x34323a32
 8002cc8:	0a33343a 	.word	0x0a33343a
 8002ccc:	646f6d00 	.word	0x646f6d00
 8002cd0:	203d2065 	.word	0x203d2065
 8002cd4:	000a7525 	.word	0x000a7525
 8002cd8:	74737973 	.word	0x74737973
 8002cdc:	61206d65 	.word	0x61206d65
 8002ce0:	74726f62 	.word	0x74726f62
 8002ce4:	000a6465 	.word	0x000a6465

08002ce8 <__EH_FRAME_BEGIN__>:
 8002ce8:	00000000                                ....
