
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
 80001a0:	20000230 	.word	0x20000230
 80001a4:	200001e8 	.word	0x200001e8

080001a8 <null_thread>:
 80001a8:	b508      	push	{r3, lr}
 80001aa:	f002 f9cb 	bl	8002544 <sleep>
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
 800020c:	200001e8 	.word	0x200001e8
 8000210:	20000230 	.word	0x20000230

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
 8000254:	20000230 	.word	0x20000230
 8000258:	200001e8 	.word	0x200001e8

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
 800027c:	20000230 	.word	0x20000230

08000280 <kernel_start>:
 8000280:	b508      	push	{r3, lr}
 8000282:	f002 f94d 	bl	8002520 <sys_tick_init>
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
 80002f8:	200001e8 	.word	0x200001e8
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
 8000334:	200001e8 	.word	0x200001e8
 8000338:	20000230 	.word	0x20000230
 800033c:	080001a9 	.word	0x080001a9
 8000340:	20000234 	.word	0x20000234

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
 8000384:	200001e8 	.word	0x200001e8

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
 80003a8:	200001e8 	.word	0x200001e8

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
 80003d8:	200002b4 	.word	0x200002b4
 80003dc:	200002cc 	.word	0x200002cc

080003e0 <putc_>:
 80003e0:	b538      	push	{r3, r4, r5, lr}
 80003e2:	4c06      	ldr	r4, [pc, #24]	; (80003fc <putc_+0x1c>)
 80003e4:	4605      	mov	r5, r0
 80003e6:	4620      	mov	r0, r4
 80003e8:	f000 f901 	bl	80005ee <mutex_lock>
 80003ec:	4628      	mov	r0, r5
 80003ee:	f001 fe6f 	bl	80020d0 <uart_write>
 80003f2:	4620      	mov	r0, r4
 80003f4:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 80003f8:	f000 b915 	b.w	8000626 <mutex_unlock>
 80003fc:	2000030c 	.word	0x2000030c

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
 8000424:	20000318 	.word	0x20000318

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
 8000574:	20000314 	.word	0x20000314

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
 80005b4:	2000030c 	.word	0x2000030c
 80005b8:	20000310 	.word	0x20000310
 80005bc:	20000318 	.word	0x20000318
 80005c0:	20000314 	.word	0x20000314
 80005c4:	08002a80 	.word	0x08002a80

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
 8000776:	f001 fe38 	bl	80023ea <i2c_read_reg>
 800077a:	2129      	movs	r1, #41	; 0x29
 800077c:	4605      	mov	r5, r0
 800077e:	20d4      	movs	r0, #212	; 0xd4
 8000780:	f001 fe33 	bl	80023ea <i2c_read_reg>
 8000784:	4c38      	ldr	r4, [pc, #224]	; (8000868 <lsm9ds0_read+0xf8>)
 8000786:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 800078a:	81a0      	strh	r0, [r4, #12]
 800078c:	212a      	movs	r1, #42	; 0x2a
 800078e:	20d4      	movs	r0, #212	; 0xd4
 8000790:	f001 fe2b 	bl	80023ea <i2c_read_reg>
 8000794:	212b      	movs	r1, #43	; 0x2b
 8000796:	4605      	mov	r5, r0
 8000798:	20d4      	movs	r0, #212	; 0xd4
 800079a:	f001 fe26 	bl	80023ea <i2c_read_reg>
 800079e:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 80007a2:	81e0      	strh	r0, [r4, #14]
 80007a4:	212c      	movs	r1, #44	; 0x2c
 80007a6:	20d4      	movs	r0, #212	; 0xd4
 80007a8:	f001 fe1f 	bl	80023ea <i2c_read_reg>
 80007ac:	212d      	movs	r1, #45	; 0x2d
 80007ae:	4605      	mov	r5, r0
 80007b0:	20d4      	movs	r0, #212	; 0xd4
 80007b2:	f001 fe1a 	bl	80023ea <i2c_read_reg>
 80007b6:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 80007ba:	8220      	strh	r0, [r4, #16]
 80007bc:	2108      	movs	r1, #8
 80007be:	203c      	movs	r0, #60	; 0x3c
 80007c0:	f001 fe13 	bl	80023ea <i2c_read_reg>
 80007c4:	2109      	movs	r1, #9
 80007c6:	4605      	mov	r5, r0
 80007c8:	203c      	movs	r0, #60	; 0x3c
 80007ca:	f001 fe0e 	bl	80023ea <i2c_read_reg>
 80007ce:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 80007d2:	80e0      	strh	r0, [r4, #6]
 80007d4:	210a      	movs	r1, #10
 80007d6:	203c      	movs	r0, #60	; 0x3c
 80007d8:	f001 fe07 	bl	80023ea <i2c_read_reg>
 80007dc:	210b      	movs	r1, #11
 80007de:	4605      	mov	r5, r0
 80007e0:	203c      	movs	r0, #60	; 0x3c
 80007e2:	f001 fe02 	bl	80023ea <i2c_read_reg>
 80007e6:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 80007ea:	8120      	strh	r0, [r4, #8]
 80007ec:	210c      	movs	r1, #12
 80007ee:	203c      	movs	r0, #60	; 0x3c
 80007f0:	f001 fdfb 	bl	80023ea <i2c_read_reg>
 80007f4:	210d      	movs	r1, #13
 80007f6:	4605      	mov	r5, r0
 80007f8:	203c      	movs	r0, #60	; 0x3c
 80007fa:	f001 fdf6 	bl	80023ea <i2c_read_reg>
 80007fe:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000802:	8160      	strh	r0, [r4, #10]
 8000804:	2128      	movs	r1, #40	; 0x28
 8000806:	203c      	movs	r0, #60	; 0x3c
 8000808:	f001 fdef 	bl	80023ea <i2c_read_reg>
 800080c:	2129      	movs	r1, #41	; 0x29
 800080e:	4605      	mov	r5, r0
 8000810:	203c      	movs	r0, #60	; 0x3c
 8000812:	f001 fdea 	bl	80023ea <i2c_read_reg>
 8000816:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 800081a:	8020      	strh	r0, [r4, #0]
 800081c:	212a      	movs	r1, #42	; 0x2a
 800081e:	203c      	movs	r0, #60	; 0x3c
 8000820:	f001 fde3 	bl	80023ea <i2c_read_reg>
 8000824:	212b      	movs	r1, #43	; 0x2b
 8000826:	4605      	mov	r5, r0
 8000828:	203c      	movs	r0, #60	; 0x3c
 800082a:	f001 fdde 	bl	80023ea <i2c_read_reg>
 800082e:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000832:	8060      	strh	r0, [r4, #2]
 8000834:	212c      	movs	r1, #44	; 0x2c
 8000836:	203c      	movs	r0, #60	; 0x3c
 8000838:	f001 fdd7 	bl	80023ea <i2c_read_reg>
 800083c:	212d      	movs	r1, #45	; 0x2d
 800083e:	4605      	mov	r5, r0
 8000840:	203c      	movs	r0, #60	; 0x3c
 8000842:	f001 fdd2 	bl	80023ea <i2c_read_reg>
 8000846:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 800084a:	80a0      	strh	r0, [r4, #4]
 800084c:	2105      	movs	r1, #5
 800084e:	203c      	movs	r0, #60	; 0x3c
 8000850:	f001 fdcb 	bl	80023ea <i2c_read_reg>
 8000854:	2106      	movs	r1, #6
 8000856:	4605      	mov	r5, r0
 8000858:	203c      	movs	r0, #60	; 0x3c
 800085a:	f001 fdc6 	bl	80023ea <i2c_read_reg>
 800085e:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000862:	8320      	strh	r0, [r4, #24]
 8000864:	bd38      	pop	{r3, r4, r5, pc}
 8000866:	bf00      	nop
 8000868:	2000031c 	.word	0x2000031c

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
 8000892:	f001 fdaa 	bl	80023ea <i2c_read_reg>
 8000896:	28d4      	cmp	r0, #212	; 0xd4
 8000898:	4606      	mov	r6, r0
 800089a:	d14e      	bne.n	800093a <lsm9ds0_init+0xce>
 800089c:	203c      	movs	r0, #60	; 0x3c
 800089e:	210f      	movs	r1, #15
 80008a0:	f001 fda3 	bl	80023ea <i2c_read_reg>
 80008a4:	2849      	cmp	r0, #73	; 0x49
 80008a6:	bf18      	it	ne
 80008a8:	2602      	movne	r6, #2
 80008aa:	d147      	bne.n	800093c <lsm9ds0_init+0xd0>
 80008ac:	4630      	mov	r0, r6
 80008ae:	2120      	movs	r1, #32
 80008b0:	22ff      	movs	r2, #255	; 0xff
 80008b2:	f001 fd87 	bl	80023c4 <i2c_write_reg>
 80008b6:	4630      	mov	r0, r6
 80008b8:	2123      	movs	r1, #35	; 0x23
 80008ba:	2218      	movs	r2, #24
 80008bc:	f001 fd82 	bl	80023c4 <i2c_write_reg>
 80008c0:	203c      	movs	r0, #60	; 0x3c
 80008c2:	211f      	movs	r1, #31
 80008c4:	4622      	mov	r2, r4
 80008c6:	f001 fd7d 	bl	80023c4 <i2c_write_reg>
 80008ca:	203c      	movs	r0, #60	; 0x3c
 80008cc:	2120      	movs	r1, #32
 80008ce:	2267      	movs	r2, #103	; 0x67
 80008d0:	f001 fd78 	bl	80023c4 <i2c_write_reg>
 80008d4:	203c      	movs	r0, #60	; 0x3c
 80008d6:	2121      	movs	r1, #33	; 0x21
 80008d8:	4622      	mov	r2, r4
 80008da:	f001 fd73 	bl	80023c4 <i2c_write_reg>
 80008de:	203c      	movs	r0, #60	; 0x3c
 80008e0:	2124      	movs	r1, #36	; 0x24
 80008e2:	22f4      	movs	r2, #244	; 0xf4
 80008e4:	f001 fd6e 	bl	80023c4 <i2c_write_reg>
 80008e8:	203c      	movs	r0, #60	; 0x3c
 80008ea:	2125      	movs	r1, #37	; 0x25
 80008ec:	4622      	mov	r2, r4
 80008ee:	f001 fd69 	bl	80023c4 <i2c_write_reg>
 80008f2:	203c      	movs	r0, #60	; 0x3c
 80008f4:	2126      	movs	r1, #38	; 0x26
 80008f6:	2280      	movs	r2, #128	; 0x80
 80008f8:	f001 fd64 	bl	80023c4 <i2c_write_reg>
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
 8000944:	2000031c 	.word	0x2000031c

08000948 <TIM2_IRQHandler>:
 8000948:	4b21      	ldr	r3, [pc, #132]	; (80009d0 <TIM2_IRQHandler+0x88>)
 800094a:	4a22      	ldr	r2, [pc, #136]	; (80009d4 <TIM2_IRQHandler+0x8c>)
 800094c:	6819      	ldr	r1, [r3, #0]
 800094e:	2901      	cmp	r1, #1
 8000950:	b510      	push	{r4, lr}
 8000952:	d011      	beq.n	8000978 <TIM2_IRQHandler+0x30>
 8000954:	d306      	bcc.n	8000964 <TIM2_IRQHandler+0x1c>
 8000956:	2902      	cmp	r1, #2
 8000958:	d113      	bne.n	8000982 <TIM2_IRQHandler+0x3a>
 800095a:	f44f 6180 	mov.w	r1, #1024	; 0x400
 800095e:	8511      	strh	r1, [r2, #40]	; 0x28
 8000960:	2204      	movs	r2, #4
 8000962:	e023      	b.n	80009ac <TIM2_IRQHandler+0x64>
 8000964:	f44f 7180 	mov.w	r1, #256	; 0x100
 8000968:	8511      	strh	r1, [r2, #40]	; 0x28
 800096a:	f44f 6180 	mov.w	r1, #1024	; 0x400
 800096e:	6191      	str	r1, [r2, #24]
 8000970:	2201      	movs	r2, #1
 8000972:	601a      	str	r2, [r3, #0]
 8000974:	609a      	str	r2, [r3, #8]
 8000976:	e023      	b.n	80009c0 <TIM2_IRQHandler+0x78>
 8000978:	f44f 7180 	mov.w	r1, #256	; 0x100
 800097c:	6191      	str	r1, [r2, #24]
 800097e:	2202      	movs	r2, #2
 8000980:	e014      	b.n	80009ac <TIM2_IRQHandler+0x64>
 8000982:	f011 0f01 	tst.w	r1, #1
 8000986:	4814      	ldr	r0, [pc, #80]	; (80009d8 <TIM2_IRQHandler+0x90>)
 8000988:	f101 0401 	add.w	r4, r1, #1
 800098c:	d010      	beq.n	80009b0 <TIM2_IRQHandler+0x68>
 800098e:	3904      	subs	r1, #4
 8000990:	f021 0101 	bic.w	r1, r1, #1
 8000994:	6c00      	ldr	r0, [r0, #64]	; 0x40
 8000996:	4419      	add	r1, r3
 8000998:	f5b4 7f82 	cmp.w	r4, #260	; 0x104
 800099c:	8288      	strh	r0, [r1, #20]
 800099e:	f44f 7180 	mov.w	r1, #256	; 0x100
 80009a2:	8511      	strh	r1, [r2, #40]	; 0x28
 80009a4:	d201      	bcs.n	80009aa <TIM2_IRQHandler+0x62>
 80009a6:	601c      	str	r4, [r3, #0]
 80009a8:	e00a      	b.n	80009c0 <TIM2_IRQHandler+0x78>
 80009aa:	2200      	movs	r2, #0
 80009ac:	601a      	str	r2, [r3, #0]
 80009ae:	e007      	b.n	80009c0 <TIM2_IRQHandler+0x78>
 80009b0:	f44f 7180 	mov.w	r1, #256	; 0x100
 80009b4:	6191      	str	r1, [r2, #24]
 80009b6:	601c      	str	r4, [r3, #0]
 80009b8:	6883      	ldr	r3, [r0, #8]
 80009ba:	f043 0304 	orr.w	r3, r3, #4
 80009be:	6083      	str	r3, [r0, #8]
 80009c0:	f04f 4080 	mov.w	r0, #1073741824	; 0x40000000
 80009c4:	2101      	movs	r1, #1
 80009c6:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80009ca:	f001 ba0c 	b.w	8001de6 <TIM_ClearITPendingBit>
 80009ce:	bf00      	nop
 80009d0:	200003bc 	.word	0x200003bc
 80009d4:	48000400 	.word	0x48000400
 80009d8:	50000500 	.word	0x50000500

080009dc <rgb_i2c_delay>:
 80009dc:	bf00      	nop
 80009de:	bf00      	nop
 80009e0:	bf00      	nop
 80009e2:	bf00      	nop
 80009e4:	4770      	bx	lr
	...

080009e8 <RGBSetLowSDA>:
 80009e8:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 80009ea:	4f15      	ldr	r7, [pc, #84]	; (8000a40 <RGBSetLowSDA+0x58>)
 80009ec:	783b      	ldrb	r3, [r7, #0]
 80009ee:	2401      	movs	r4, #1
 80009f0:	2603      	movs	r6, #3
 80009f2:	2500      	movs	r5, #0
 80009f4:	4669      	mov	r1, sp
 80009f6:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80009fa:	9300      	str	r3, [sp, #0]
 80009fc:	f88d 5007 	strb.w	r5, [sp, #7]
 8000a00:	f88d 4004 	strb.w	r4, [sp, #4]
 8000a04:	f88d 6005 	strb.w	r6, [sp, #5]
 8000a08:	f88d 4006 	strb.w	r4, [sp, #6]
 8000a0c:	f001 fee1 	bl	80027d2 <GPIO_Init>
 8000a10:	783a      	ldrb	r2, [r7, #0]
 8000a12:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000a16:	4669      	mov	r1, sp
 8000a18:	851a      	strh	r2, [r3, #40]	; 0x28
 8000a1a:	f88d 5007 	strb.w	r5, [sp, #7]
 8000a1e:	4d09      	ldr	r5, [pc, #36]	; (8000a44 <RGBSetLowSDA+0x5c>)
 8000a20:	9400      	str	r4, [sp, #0]
 8000a22:	4628      	mov	r0, r5
 8000a24:	f88d 4004 	strb.w	r4, [sp, #4]
 8000a28:	f88d 6005 	strb.w	r6, [sp, #5]
 8000a2c:	f88d 4006 	strb.w	r4, [sp, #6]
 8000a30:	f001 fecf 	bl	80027d2 <GPIO_Init>
 8000a34:	852c      	strh	r4, [r5, #40]	; 0x28
 8000a36:	f7ff ffd1 	bl	80009dc <rgb_i2c_delay>
 8000a3a:	b003      	add	sp, #12
 8000a3c:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000a3e:	bf00      	nop
 8000a40:	200009d0 	.word	0x200009d0
 8000a44:	48000400 	.word	0x48000400

08000a48 <RGBSetHighSDA>:
 8000a48:	b573      	push	{r0, r1, r4, r5, r6, lr}
 8000a4a:	4d13      	ldr	r5, [pc, #76]	; (8000a98 <RGBSetHighSDA+0x50>)
 8000a4c:	782b      	ldrb	r3, [r5, #0]
 8000a4e:	2400      	movs	r4, #0
 8000a50:	2603      	movs	r6, #3
 8000a52:	4669      	mov	r1, sp
 8000a54:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000a58:	9300      	str	r3, [sp, #0]
 8000a5a:	f88d 4004 	strb.w	r4, [sp, #4]
 8000a5e:	f88d 4007 	strb.w	r4, [sp, #7]
 8000a62:	f88d 6005 	strb.w	r6, [sp, #5]
 8000a66:	f001 feb4 	bl	80027d2 <GPIO_Init>
 8000a6a:	782a      	ldrb	r2, [r5, #0]
 8000a6c:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000a70:	2501      	movs	r5, #1
 8000a72:	619a      	str	r2, [r3, #24]
 8000a74:	f88d 4004 	strb.w	r4, [sp, #4]
 8000a78:	f88d 4007 	strb.w	r4, [sp, #7]
 8000a7c:	4c07      	ldr	r4, [pc, #28]	; (8000a9c <RGBSetHighSDA+0x54>)
 8000a7e:	9500      	str	r5, [sp, #0]
 8000a80:	4620      	mov	r0, r4
 8000a82:	4669      	mov	r1, sp
 8000a84:	f88d 6005 	strb.w	r6, [sp, #5]
 8000a88:	f001 fea3 	bl	80027d2 <GPIO_Init>
 8000a8c:	61a5      	str	r5, [r4, #24]
 8000a8e:	f7ff ffa5 	bl	80009dc <rgb_i2c_delay>
 8000a92:	b002      	add	sp, #8
 8000a94:	bd70      	pop	{r4, r5, r6, pc}
 8000a96:	bf00      	nop
 8000a98:	200009d0 	.word	0x200009d0
 8000a9c:	48000400 	.word	0x48000400

08000aa0 <RGBSetLowSCL>:
 8000aa0:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000aa4:	f44f 7280 	mov.w	r2, #256	; 0x100
 8000aa8:	851a      	strh	r2, [r3, #40]	; 0x28
 8000aaa:	f7ff bf97 	b.w	80009dc <rgb_i2c_delay>

08000aae <RGBSetHighSCL>:
 8000aae:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000ab2:	f44f 7280 	mov.w	r2, #256	; 0x100
 8000ab6:	619a      	str	r2, [r3, #24]
 8000ab8:	f7ff bf90 	b.w	80009dc <rgb_i2c_delay>

08000abc <rgb_i2c_init>:
 8000abc:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 8000abe:	4f1f      	ldr	r7, [pc, #124]	; (8000b3c <rgb_i2c_init+0x80>)
 8000ac0:	2400      	movs	r4, #0
 8000ac2:	2501      	movs	r5, #1
 8000ac4:	2603      	movs	r6, #3
 8000ac6:	f44f 7380 	mov.w	r3, #256	; 0x100
 8000aca:	4669      	mov	r1, sp
 8000acc:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000ad0:	9300      	str	r3, [sp, #0]
 8000ad2:	f88d 4006 	strb.w	r4, [sp, #6]
 8000ad6:	f88d 4007 	strb.w	r4, [sp, #7]
 8000ada:	f88d 5004 	strb.w	r5, [sp, #4]
 8000ade:	f88d 6005 	strb.w	r6, [sp, #5]
 8000ae2:	f001 fe76 	bl	80027d2 <GPIO_Init>
 8000ae6:	783b      	ldrb	r3, [r7, #0]
 8000ae8:	f88d 4004 	strb.w	r4, [sp, #4]
 8000aec:	4669      	mov	r1, sp
 8000aee:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000af2:	9300      	str	r3, [sp, #0]
 8000af4:	f88d 4007 	strb.w	r4, [sp, #7]
 8000af8:	f88d 6005 	strb.w	r6, [sp, #5]
 8000afc:	f001 fe69 	bl	80027d2 <GPIO_Init>
 8000b00:	7839      	ldrb	r1, [r7, #0]
 8000b02:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000b06:	f001 feaa 	bl	800285e <GPIO_SetBits>
 8000b0a:	f88d 4004 	strb.w	r4, [sp, #4]
 8000b0e:	f88d 4007 	strb.w	r4, [sp, #7]
 8000b12:	4c0b      	ldr	r4, [pc, #44]	; (8000b40 <rgb_i2c_init+0x84>)
 8000b14:	9500      	str	r5, [sp, #0]
 8000b16:	4620      	mov	r0, r4
 8000b18:	4669      	mov	r1, sp
 8000b1a:	f88d 6005 	strb.w	r6, [sp, #5]
 8000b1e:	f001 fe58 	bl	80027d2 <GPIO_Init>
 8000b22:	4620      	mov	r0, r4
 8000b24:	4629      	mov	r1, r5
 8000b26:	f001 fe9a 	bl	800285e <GPIO_SetBits>
 8000b2a:	f7ff ffc0 	bl	8000aae <RGBSetHighSCL>
 8000b2e:	f7ff ff5b 	bl	80009e8 <RGBSetLowSDA>
 8000b32:	f7ff ff89 	bl	8000a48 <RGBSetHighSDA>
 8000b36:	b003      	add	sp, #12
 8000b38:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000b3a:	bf00      	nop
 8000b3c:	200009d0 	.word	0x200009d0
 8000b40:	48000400 	.word	0x48000400

08000b44 <rgb_i2cStart>:
 8000b44:	b508      	push	{r3, lr}
 8000b46:	f7ff ffb2 	bl	8000aae <RGBSetHighSCL>
 8000b4a:	f7ff ff7d 	bl	8000a48 <RGBSetHighSDA>
 8000b4e:	f7ff ffae 	bl	8000aae <RGBSetHighSCL>
 8000b52:	f7ff ff49 	bl	80009e8 <RGBSetLowSDA>
 8000b56:	f7ff ffa3 	bl	8000aa0 <RGBSetLowSCL>
 8000b5a:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8000b5e:	f7ff bf73 	b.w	8000a48 <RGBSetHighSDA>

08000b62 <rgb_i2cStop>:
 8000b62:	b508      	push	{r3, lr}
 8000b64:	f7ff ff9c 	bl	8000aa0 <RGBSetLowSCL>
 8000b68:	f7ff ff3e 	bl	80009e8 <RGBSetLowSDA>
 8000b6c:	f7ff ff9f 	bl	8000aae <RGBSetHighSCL>
 8000b70:	f7ff ff3a 	bl	80009e8 <RGBSetLowSDA>
 8000b74:	f7ff ff9b 	bl	8000aae <RGBSetHighSCL>
 8000b78:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8000b7c:	f7ff bf64 	b.w	8000a48 <RGBSetHighSDA>

08000b80 <rgb_i2cWrite>:
 8000b80:	b538      	push	{r3, r4, r5, lr}
 8000b82:	4604      	mov	r4, r0
 8000b84:	2508      	movs	r5, #8
 8000b86:	f7ff ff8b 	bl	8000aa0 <RGBSetLowSCL>
 8000b8a:	0623      	lsls	r3, r4, #24
 8000b8c:	d502      	bpl.n	8000b94 <rgb_i2cWrite+0x14>
 8000b8e:	f7ff ff5b 	bl	8000a48 <RGBSetHighSDA>
 8000b92:	e001      	b.n	8000b98 <rgb_i2cWrite+0x18>
 8000b94:	f7ff ff28 	bl	80009e8 <RGBSetLowSDA>
 8000b98:	3d01      	subs	r5, #1
 8000b9a:	f7ff ff88 	bl	8000aae <RGBSetHighSCL>
 8000b9e:	0064      	lsls	r4, r4, #1
 8000ba0:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 8000ba4:	b2e4      	uxtb	r4, r4
 8000ba6:	d1ee      	bne.n	8000b86 <rgb_i2cWrite+0x6>
 8000ba8:	f7ff ff7a 	bl	8000aa0 <RGBSetLowSCL>
 8000bac:	f7ff ff4c 	bl	8000a48 <RGBSetHighSDA>
 8000bb0:	f7ff ff7d 	bl	8000aae <RGBSetHighSCL>
 8000bb4:	f7ff ff74 	bl	8000aa0 <RGBSetLowSCL>
 8000bb8:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8000bbc:	f7ff bf0e 	b.w	80009dc <rgb_i2c_delay>

08000bc0 <rgb_i2cRead>:
 8000bc0:	b570      	push	{r4, r5, r6, lr}
 8000bc2:	2300      	movs	r3, #0
 8000bc4:	4606      	mov	r6, r0
 8000bc6:	460c      	mov	r4, r1
 8000bc8:	2200      	movs	r2, #0
 8000bca:	54e2      	strb	r2, [r4, r3]
 8000bcc:	3301      	adds	r3, #1
 8000bce:	2b09      	cmp	r3, #9
 8000bd0:	d1fa      	bne.n	8000bc8 <rgb_i2cRead+0x8>
 8000bd2:	f7ff ff65 	bl	8000aa0 <RGBSetLowSCL>
 8000bd6:	f7ff ff37 	bl	8000a48 <RGBSetHighSDA>
 8000bda:	2508      	movs	r5, #8
 8000bdc:	2300      	movs	r3, #0
 8000bde:	5ce2      	ldrb	r2, [r4, r3]
 8000be0:	0052      	lsls	r2, r2, #1
 8000be2:	54e2      	strb	r2, [r4, r3]
 8000be4:	3301      	adds	r3, #1
 8000be6:	2b09      	cmp	r3, #9
 8000be8:	d1f9      	bne.n	8000bde <rgb_i2cRead+0x1e>
 8000bea:	f7ff ff60 	bl	8000aae <RGBSetHighSCL>
 8000bee:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000bf2:	8a1b      	ldrh	r3, [r3, #16]
 8000bf4:	b29b      	uxth	r3, r3
 8000bf6:	07d8      	lsls	r0, r3, #31
 8000bf8:	d503      	bpl.n	8000c02 <rgb_i2cRead+0x42>
 8000bfa:	7822      	ldrb	r2, [r4, #0]
 8000bfc:	f042 0201 	orr.w	r2, r2, #1
 8000c00:	7022      	strb	r2, [r4, #0]
 8000c02:	0799      	lsls	r1, r3, #30
 8000c04:	d503      	bpl.n	8000c0e <rgb_i2cRead+0x4e>
 8000c06:	7862      	ldrb	r2, [r4, #1]
 8000c08:	f042 0201 	orr.w	r2, r2, #1
 8000c0c:	7062      	strb	r2, [r4, #1]
 8000c0e:	075a      	lsls	r2, r3, #29
 8000c10:	d503      	bpl.n	8000c1a <rgb_i2cRead+0x5a>
 8000c12:	78a2      	ldrb	r2, [r4, #2]
 8000c14:	f042 0201 	orr.w	r2, r2, #1
 8000c18:	70a2      	strb	r2, [r4, #2]
 8000c1a:	0718      	lsls	r0, r3, #28
 8000c1c:	d503      	bpl.n	8000c26 <rgb_i2cRead+0x66>
 8000c1e:	78e2      	ldrb	r2, [r4, #3]
 8000c20:	f042 0201 	orr.w	r2, r2, #1
 8000c24:	70e2      	strb	r2, [r4, #3]
 8000c26:	06d9      	lsls	r1, r3, #27
 8000c28:	d503      	bpl.n	8000c32 <rgb_i2cRead+0x72>
 8000c2a:	7922      	ldrb	r2, [r4, #4]
 8000c2c:	f042 0201 	orr.w	r2, r2, #1
 8000c30:	7122      	strb	r2, [r4, #4]
 8000c32:	069a      	lsls	r2, r3, #26
 8000c34:	d503      	bpl.n	8000c3e <rgb_i2cRead+0x7e>
 8000c36:	7962      	ldrb	r2, [r4, #5]
 8000c38:	f042 0201 	orr.w	r2, r2, #1
 8000c3c:	7162      	strb	r2, [r4, #5]
 8000c3e:	0658      	lsls	r0, r3, #25
 8000c40:	d503      	bpl.n	8000c4a <rgb_i2cRead+0x8a>
 8000c42:	79a2      	ldrb	r2, [r4, #6]
 8000c44:	f042 0201 	orr.w	r2, r2, #1
 8000c48:	71a2      	strb	r2, [r4, #6]
 8000c4a:	0619      	lsls	r1, r3, #24
 8000c4c:	d503      	bpl.n	8000c56 <rgb_i2cRead+0x96>
 8000c4e:	79e3      	ldrb	r3, [r4, #7]
 8000c50:	f043 0301 	orr.w	r3, r3, #1
 8000c54:	71e3      	strb	r3, [r4, #7]
 8000c56:	4b0b      	ldr	r3, [pc, #44]	; (8000c84 <rgb_i2cRead+0xc4>)
 8000c58:	8a1b      	ldrh	r3, [r3, #16]
 8000c5a:	07da      	lsls	r2, r3, #31
 8000c5c:	d503      	bpl.n	8000c66 <rgb_i2cRead+0xa6>
 8000c5e:	7a23      	ldrb	r3, [r4, #8]
 8000c60:	f043 0301 	orr.w	r3, r3, #1
 8000c64:	7223      	strb	r3, [r4, #8]
 8000c66:	f7ff ff1b 	bl	8000aa0 <RGBSetLowSCL>
 8000c6a:	3d01      	subs	r5, #1
 8000c6c:	d1b6      	bne.n	8000bdc <rgb_i2cRead+0x1c>
 8000c6e:	b10e      	cbz	r6, 8000c74 <rgb_i2cRead+0xb4>
 8000c70:	f7ff feba 	bl	80009e8 <RGBSetLowSDA>
 8000c74:	f7ff ff1b 	bl	8000aae <RGBSetHighSCL>
 8000c78:	f7ff ff12 	bl	8000aa0 <RGBSetLowSCL>
 8000c7c:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8000c80:	f7ff beac 	b.w	80009dc <rgb_i2c_delay>
 8000c84:	48000400 	.word	0x48000400

08000c88 <rgb_i2c_write_reg>:
 8000c88:	b570      	push	{r4, r5, r6, lr}
 8000c8a:	4605      	mov	r5, r0
 8000c8c:	460c      	mov	r4, r1
 8000c8e:	4616      	mov	r6, r2
 8000c90:	f7ff ff58 	bl	8000b44 <rgb_i2cStart>
 8000c94:	4628      	mov	r0, r5
 8000c96:	f7ff ff73 	bl	8000b80 <rgb_i2cWrite>
 8000c9a:	4620      	mov	r0, r4
 8000c9c:	f7ff ff70 	bl	8000b80 <rgb_i2cWrite>
 8000ca0:	4630      	mov	r0, r6
 8000ca2:	f7ff ff6d 	bl	8000b80 <rgb_i2cWrite>
 8000ca6:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8000caa:	f7ff bf5a 	b.w	8000b62 <rgb_i2cStop>

08000cae <rgb_i2c_read_reg>:
 8000cae:	b570      	push	{r4, r5, r6, lr}
 8000cb0:	4604      	mov	r4, r0
 8000cb2:	460d      	mov	r5, r1
 8000cb4:	4616      	mov	r6, r2
 8000cb6:	f7ff ff45 	bl	8000b44 <rgb_i2cStart>
 8000cba:	4620      	mov	r0, r4
 8000cbc:	f7ff ff60 	bl	8000b80 <rgb_i2cWrite>
 8000cc0:	4628      	mov	r0, r5
 8000cc2:	f7ff ff5d 	bl	8000b80 <rgb_i2cWrite>
 8000cc6:	f7ff ff3d 	bl	8000b44 <rgb_i2cStart>
 8000cca:	f044 0001 	orr.w	r0, r4, #1
 8000cce:	f7ff ff57 	bl	8000b80 <rgb_i2cWrite>
 8000cd2:	4631      	mov	r1, r6
 8000cd4:	2000      	movs	r0, #0
 8000cd6:	f7ff ff73 	bl	8000bc0 <rgb_i2cRead>
 8000cda:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8000cde:	f7ff bf40 	b.w	8000b62 <rgb_i2cStop>
	...

08000ce4 <rgb_init>:
 8000ce4:	4b1d      	ldr	r3, [pc, #116]	; (8000d5c <rgb_init+0x78>)
 8000ce6:	b570      	push	{r4, r5, r6, lr}
 8000ce8:	2409      	movs	r4, #9
 8000cea:	2200      	movs	r2, #0
 8000cec:	3c01      	subs	r4, #1
 8000cee:	801a      	strh	r2, [r3, #0]
 8000cf0:	825a      	strh	r2, [r3, #18]
 8000cf2:	849a      	strh	r2, [r3, #36]	; 0x24
 8000cf4:	f8a3 2048 	strh.w	r2, [r3, #72]	; 0x48
 8000cf8:	86da      	strh	r2, [r3, #54]	; 0x36
 8000cfa:	f103 0302 	add.w	r3, r3, #2
 8000cfe:	d1f4      	bne.n	8000cea <rgb_init+0x6>
 8000d00:	4d17      	ldr	r5, [pc, #92]	; (8000d60 <rgb_init+0x7c>)
 8000d02:	f64f 76ff 	movw	r6, #65535	; 0xffff
 8000d06:	802e      	strh	r6, [r5, #0]
 8000d08:	f7ff fed8 	bl	8000abc <rgb_i2c_init>
 8000d0c:	2072      	movs	r0, #114	; 0x72
 8000d0e:	2181      	movs	r1, #129	; 0x81
 8000d10:	22ff      	movs	r2, #255	; 0xff
 8000d12:	f7ff ffb9 	bl	8000c88 <rgb_i2c_write_reg>
 8000d16:	2072      	movs	r0, #114	; 0x72
 8000d18:	2183      	movs	r1, #131	; 0x83
 8000d1a:	22ff      	movs	r2, #255	; 0xff
 8000d1c:	f7ff ffb4 	bl	8000c88 <rgb_i2c_write_reg>
 8000d20:	2072      	movs	r0, #114	; 0x72
 8000d22:	218d      	movs	r1, #141	; 0x8d
 8000d24:	4622      	mov	r2, r4
 8000d26:	f7ff ffaf 	bl	8000c88 <rgb_i2c_write_reg>
 8000d2a:	2072      	movs	r0, #114	; 0x72
 8000d2c:	2180      	movs	r1, #128	; 0x80
 8000d2e:	2203      	movs	r2, #3
 8000d30:	f7ff ffaa 	bl	8000c88 <rgb_i2c_write_reg>
 8000d34:	2072      	movs	r0, #114	; 0x72
 8000d36:	218f      	movs	r1, #143	; 0x8f
 8000d38:	2223      	movs	r2, #35	; 0x23
 8000d3a:	f7ff ffa5 	bl	8000c88 <rgb_i2c_write_reg>
 8000d3e:	f7ff fe83 	bl	8000a48 <RGBSetHighSDA>
 8000d42:	2072      	movs	r0, #114	; 0x72
 8000d44:	2180      	movs	r1, #128	; 0x80
 8000d46:	2207      	movs	r2, #7
 8000d48:	802c      	strh	r4, [r5, #0]
 8000d4a:	f7ff ff9d 	bl	8000c88 <rgb_i2c_write_reg>
 8000d4e:	2072      	movs	r0, #114	; 0x72
 8000d50:	218e      	movs	r1, #142	; 0x8e
 8000d52:	2208      	movs	r2, #8
 8000d54:	f7ff ff98 	bl	8000c88 <rgb_i2c_write_reg>
 8000d58:	802e      	strh	r6, [r5, #0]
 8000d5a:	bd70      	pop	{r4, r5, r6, pc}
 8000d5c:	20000336 	.word	0x20000336
 8000d60:	200009d0 	.word	0x200009d0

08000d64 <rgb_read>:
 8000d64:	b538      	push	{r3, r4, r5, lr}
 8000d66:	f7ff feed 	bl	8000b44 <rgb_i2cStart>
 8000d6a:	2072      	movs	r0, #114	; 0x72
 8000d6c:	f7ff ff08 	bl	8000b80 <rgb_i2cWrite>
 8000d70:	20b4      	movs	r0, #180	; 0xb4
 8000d72:	f7ff ff05 	bl	8000b80 <rgb_i2cWrite>
 8000d76:	f7ff fee5 	bl	8000b44 <rgb_i2cStart>
 8000d7a:	2073      	movs	r0, #115	; 0x73
 8000d7c:	f7ff ff00 	bl	8000b80 <rgb_i2cWrite>
 8000d80:	2001      	movs	r0, #1
 8000d82:	4946      	ldr	r1, [pc, #280]	; (8000e9c <rgb_read+0x138>)
 8000d84:	f7ff ff1c 	bl	8000bc0 <rgb_i2cRead>
 8000d88:	2300      	movs	r3, #0
 8000d8a:	4d45      	ldr	r5, [pc, #276]	; (8000ea0 <rgb_read+0x13c>)
 8000d8c:	4c43      	ldr	r4, [pc, #268]	; (8000e9c <rgb_read+0x138>)
 8000d8e:	eb05 0243 	add.w	r2, r5, r3, lsl #1
 8000d92:	5d19      	ldrb	r1, [r3, r4]
 8000d94:	3301      	adds	r3, #1
 8000d96:	2b09      	cmp	r3, #9
 8000d98:	86d1      	strh	r1, [r2, #54]	; 0x36
 8000d9a:	d1f6      	bne.n	8000d8a <rgb_read+0x26>
 8000d9c:	2001      	movs	r0, #1
 8000d9e:	4621      	mov	r1, r4
 8000da0:	f7ff ff0e 	bl	8000bc0 <rgb_i2cRead>
 8000da4:	f105 0236 	add.w	r2, r5, #54	; 0x36
 8000da8:	2300      	movs	r3, #0
 8000daa:	8811      	ldrh	r1, [r2, #0]
 8000dac:	5ce0      	ldrb	r0, [r4, r3]
 8000dae:	3301      	adds	r3, #1
 8000db0:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 8000db4:	2b09      	cmp	r3, #9
 8000db6:	f822 1b02 	strh.w	r1, [r2], #2
 8000dba:	d1f6      	bne.n	8000daa <rgb_read+0x46>
 8000dbc:	2001      	movs	r0, #1
 8000dbe:	4937      	ldr	r1, [pc, #220]	; (8000e9c <rgb_read+0x138>)
 8000dc0:	f7ff fefe 	bl	8000bc0 <rgb_i2cRead>
 8000dc4:	2300      	movs	r3, #0
 8000dc6:	5ce2      	ldrb	r2, [r4, r3]
 8000dc8:	f825 2013 	strh.w	r2, [r5, r3, lsl #1]
 8000dcc:	3301      	adds	r3, #1
 8000dce:	2b09      	cmp	r3, #9
 8000dd0:	d1f9      	bne.n	8000dc6 <rgb_read+0x62>
 8000dd2:	2001      	movs	r0, #1
 8000dd4:	4931      	ldr	r1, [pc, #196]	; (8000e9c <rgb_read+0x138>)
 8000dd6:	f7ff fef3 	bl	8000bc0 <rgb_i2cRead>
 8000dda:	4a32      	ldr	r2, [pc, #200]	; (8000ea4 <rgb_read+0x140>)
 8000ddc:	2300      	movs	r3, #0
 8000dde:	5ce0      	ldrb	r0, [r4, r3]
 8000de0:	8851      	ldrh	r1, [r2, #2]
 8000de2:	3301      	adds	r3, #1
 8000de4:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 8000de8:	2b09      	cmp	r3, #9
 8000dea:	f822 1f02 	strh.w	r1, [r2, #2]!
 8000dee:	d1f6      	bne.n	8000dde <rgb_read+0x7a>
 8000df0:	2001      	movs	r0, #1
 8000df2:	492a      	ldr	r1, [pc, #168]	; (8000e9c <rgb_read+0x138>)
 8000df4:	f7ff fee4 	bl	8000bc0 <rgb_i2cRead>
 8000df8:	2300      	movs	r3, #0
 8000dfa:	eb05 0243 	add.w	r2, r5, r3, lsl #1
 8000dfe:	5ce1      	ldrb	r1, [r4, r3]
 8000e00:	3301      	adds	r3, #1
 8000e02:	2b09      	cmp	r3, #9
 8000e04:	8251      	strh	r1, [r2, #18]
 8000e06:	d1f8      	bne.n	8000dfa <rgb_read+0x96>
 8000e08:	2001      	movs	r0, #1
 8000e0a:	4924      	ldr	r1, [pc, #144]	; (8000e9c <rgb_read+0x138>)
 8000e0c:	f7ff fed8 	bl	8000bc0 <rgb_i2cRead>
 8000e10:	4a25      	ldr	r2, [pc, #148]	; (8000ea8 <rgb_read+0x144>)
 8000e12:	2300      	movs	r3, #0
 8000e14:	8811      	ldrh	r1, [r2, #0]
 8000e16:	5ce0      	ldrb	r0, [r4, r3]
 8000e18:	3301      	adds	r3, #1
 8000e1a:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 8000e1e:	2b09      	cmp	r3, #9
 8000e20:	f822 1b02 	strh.w	r1, [r2], #2
 8000e24:	d1f6      	bne.n	8000e14 <rgb_read+0xb0>
 8000e26:	2001      	movs	r0, #1
 8000e28:	491c      	ldr	r1, [pc, #112]	; (8000e9c <rgb_read+0x138>)
 8000e2a:	f7ff fec9 	bl	8000bc0 <rgb_i2cRead>
 8000e2e:	2300      	movs	r3, #0
 8000e30:	eb05 0243 	add.w	r2, r5, r3, lsl #1
 8000e34:	5ce1      	ldrb	r1, [r4, r3]
 8000e36:	3301      	adds	r3, #1
 8000e38:	2b09      	cmp	r3, #9
 8000e3a:	8491      	strh	r1, [r2, #36]	; 0x24
 8000e3c:	d1f8      	bne.n	8000e30 <rgb_read+0xcc>
 8000e3e:	2001      	movs	r0, #1
 8000e40:	4916      	ldr	r1, [pc, #88]	; (8000e9c <rgb_read+0x138>)
 8000e42:	f7ff febd 	bl	8000bc0 <rgb_i2cRead>
 8000e46:	4a19      	ldr	r2, [pc, #100]	; (8000eac <rgb_read+0x148>)
 8000e48:	2300      	movs	r3, #0
 8000e4a:	8811      	ldrh	r1, [r2, #0]
 8000e4c:	5ce0      	ldrb	r0, [r4, r3]
 8000e4e:	3301      	adds	r3, #1
 8000e50:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 8000e54:	2b09      	cmp	r3, #9
 8000e56:	f822 1b02 	strh.w	r1, [r2], #2
 8000e5a:	d1f6      	bne.n	8000e4a <rgb_read+0xe6>
 8000e5c:	2001      	movs	r0, #1
 8000e5e:	490f      	ldr	r1, [pc, #60]	; (8000e9c <rgb_read+0x138>)
 8000e60:	f7ff feae 	bl	8000bc0 <rgb_i2cRead>
 8000e64:	2300      	movs	r3, #0
 8000e66:	eb05 0243 	add.w	r2, r5, r3, lsl #1
 8000e6a:	5ce1      	ldrb	r1, [r4, r3]
 8000e6c:	3301      	adds	r3, #1
 8000e6e:	2b09      	cmp	r3, #9
 8000e70:	f8a2 1048 	strh.w	r1, [r2, #72]	; 0x48
 8000e74:	d1f7      	bne.n	8000e66 <rgb_read+0x102>
 8000e76:	2000      	movs	r0, #0
 8000e78:	4908      	ldr	r1, [pc, #32]	; (8000e9c <rgb_read+0x138>)
 8000e7a:	f7ff fea1 	bl	8000bc0 <rgb_i2cRead>
 8000e7e:	4a0c      	ldr	r2, [pc, #48]	; (8000eb0 <rgb_read+0x14c>)
 8000e80:	2300      	movs	r3, #0
 8000e82:	8811      	ldrh	r1, [r2, #0]
 8000e84:	5ce0      	ldrb	r0, [r4, r3]
 8000e86:	3301      	adds	r3, #1
 8000e88:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 8000e8c:	2b09      	cmp	r3, #9
 8000e8e:	f822 1b02 	strh.w	r1, [r2], #2
 8000e92:	d1f6      	bne.n	8000e82 <rgb_read+0x11e>
 8000e94:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8000e98:	f7ff be63 	b.w	8000b62 <rgb_i2cStop>
 8000e9c:	200009d2 	.word	0x200009d2
 8000ea0:	20000336 	.word	0x20000336
 8000ea4:	20000334 	.word	0x20000334
 8000ea8:	20000348 	.word	0x20000348
 8000eac:	2000035a 	.word	0x2000035a
 8000eb0:	2000037e 	.word	0x2000037e

08000eb4 <line_sensor_read.part.0>:
 8000eb4:	4980      	ldr	r1, [pc, #512]	; (80010b8 <line_sensor_read.part.0+0x204>)
 8000eb6:	4a81      	ldr	r2, [pc, #516]	; (80010bc <line_sensor_read.part.0+0x208>)
 8000eb8:	6a4b      	ldr	r3, [r1, #36]	; 0x24
 8000eba:	f9b2 0058 	ldrsh.w	r0, [r2, #88]	; 0x58
 8000ebe:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8000ec2:	2407      	movs	r4, #7
 8000ec4:	fb04 0303 	mla	r3, r4, r3, r0
 8000ec8:	2008      	movs	r0, #8
 8000eca:	fb93 f3f0 	sdiv	r3, r3, r0
 8000ece:	624b      	str	r3, [r1, #36]	; 0x24
 8000ed0:	2300      	movs	r3, #0
 8000ed2:	461c      	mov	r4, r3
 8000ed4:	461d      	mov	r5, r3
 8000ed6:	461e      	mov	r6, r3
 8000ed8:	461f      	mov	r7, r3
 8000eda:	4610      	mov	r0, r2
 8000edc:	f8df c1e4 	ldr.w	ip, [pc, #484]	; 80010c4 <line_sensor_read.part.0+0x210>
 8000ee0:	f8b2 a036 	ldrh.w	sl, [r2, #54]	; 0x36
 8000ee4:	f853 c00c 	ldr.w	ip, [r3, ip]
 8000ee8:	f8b2 9000 	ldrh.w	r9, [r2]
 8000eec:	f8b2 8012 	ldrh.w	r8, [r2, #18]
 8000ef0:	f8b2 b024 	ldrh.w	fp, [r2, #36]	; 0x24
 8000ef4:	ebcc 0a0a 	rsb	sl, ip, sl
 8000ef8:	f8df c1cc 	ldr.w	ip, [pc, #460]	; 80010c8 <line_sensor_read.part.0+0x214>
 8000efc:	f853 c00c 	ldr.w	ip, [r3, ip]
 8000f00:	ebcc 0909 	rsb	r9, ip, r9
 8000f04:	f8df c1c4 	ldr.w	ip, [pc, #452]	; 80010cc <line_sensor_read.part.0+0x218>
 8000f08:	f853 c00c 	ldr.w	ip, [r3, ip]
 8000f0c:	ebcc 0808 	rsb	r8, ip, r8
 8000f10:	f8df c1bc 	ldr.w	ip, [pc, #444]	; 80010d0 <line_sensor_read.part.0+0x21c>
 8000f14:	f853 c00c 	ldr.w	ip, [r3, ip]
 8000f18:	3304      	adds	r3, #4
 8000f1a:	ebcc 0c0b 	rsb	ip, ip, fp
 8000f1e:	fa1f fa8a 	uxth.w	sl, sl
 8000f22:	fa1f f989 	uxth.w	r9, r9
 8000f26:	fa1f f888 	uxth.w	r8, r8
 8000f2a:	fa1f fc8c 	uxth.w	ip, ip
 8000f2e:	2b20      	cmp	r3, #32
 8000f30:	f8a2 a036 	strh.w	sl, [r2, #54]	; 0x36
 8000f34:	f8a2 9000 	strh.w	r9, [r2]
 8000f38:	f8a2 8012 	strh.w	r8, [r2, #18]
 8000f3c:	f8a2 c024 	strh.w	ip, [r2, #36]	; 0x24
 8000f40:	fa07 f78a 	sxtah	r7, r7, sl
 8000f44:	fa06 f689 	sxtah	r6, r6, r9
 8000f48:	fa05 f588 	sxtah	r5, r5, r8
 8000f4c:	fa04 f48c 	sxtah	r4, r4, ip
 8000f50:	f102 0202 	add.w	r2, r2, #2
 8000f54:	d1c2      	bne.n	8000edc <line_sensor_read.part.0+0x28>
 8000f56:	2308      	movs	r3, #8
 8000f58:	fb97 f7f3 	sdiv	r7, r7, r3
 8000f5c:	fb96 f6f3 	sdiv	r6, r6, r3
 8000f60:	fb95 f5f3 	sdiv	r5, r5, r3
 8000f64:	fb94 f4f3 	sdiv	r4, r4, r3
 8000f68:	4b54      	ldr	r3, [pc, #336]	; (80010bc <line_sensor_read.part.0+0x208>)
 8000f6a:	2200      	movs	r2, #0
 8000f6c:	f8b3 c036 	ldrh.w	ip, [r3, #54]	; 0x36
 8000f70:	ebcc 0c07 	rsb	ip, ip, r7
 8000f74:	f8a3 c036 	strh.w	ip, [r3, #54]	; 0x36
 8000f78:	f832 c000 	ldrh.w	ip, [r2, r0]
 8000f7c:	ebc6 0c0c 	rsb	ip, r6, ip
 8000f80:	f822 c000 	strh.w	ip, [r2, r0]
 8000f84:	f8b3 c012 	ldrh.w	ip, [r3, #18]
 8000f88:	ebc5 0c0c 	rsb	ip, r5, ip
 8000f8c:	f8a3 c012 	strh.w	ip, [r3, #18]
 8000f90:	f8b3 c024 	ldrh.w	ip, [r3, #36]	; 0x24
 8000f94:	3202      	adds	r2, #2
 8000f96:	ebc4 0c0c 	rsb	ip, r4, ip
 8000f9a:	2a10      	cmp	r2, #16
 8000f9c:	f8a3 c024 	strh.w	ip, [r3, #36]	; 0x24
 8000fa0:	f103 0302 	add.w	r3, r3, #2
 8000fa4:	d1e2      	bne.n	8000f6c <line_sensor_read.part.0+0xb8>
 8000fa6:	2300      	movs	r3, #0
 8000fa8:	181d      	adds	r5, r3, r0
 8000faa:	18cc      	adds	r4, r1, r3
 8000fac:	8eed      	ldrh	r5, [r5, #54]	; 0x36
 8000fae:	4a42      	ldr	r2, [pc, #264]	; (80010b8 <line_sensor_read.part.0+0x204>)
 8000fb0:	8165      	strh	r5, [r4, #10]
 8000fb2:	3302      	adds	r3, #2
 8000fb4:	2b10      	cmp	r3, #16
 8000fb6:	d1f7      	bne.n	8000fa8 <line_sensor_read.part.0+0xf4>
 8000fb8:	f8b2 c010 	ldrh.w	ip, [r2, #16]
 8000fbc:	8a56      	ldrh	r6, [r2, #18]
 8000fbe:	fa0f f58c 	sxth.w	r5, ip
 8000fc2:	b230      	sxth	r0, r6
 8000fc4:	182a      	adds	r2, r5, r0
 8000fc6:	d00c      	beq.n	8000fe2 <line_sensor_read.part.0+0x12e>
 8000fc8:	4c3d      	ldr	r4, [pc, #244]	; (80010c0 <line_sensor_read.part.0+0x20c>)
 8000fca:	8923      	ldrh	r3, [r4, #8]
 8000fcc:	88e7      	ldrh	r7, [r4, #6]
 8000fce:	fb16 f303 	smulbb	r3, r6, r3
 8000fd2:	fb1c 3307 	smlabb	r3, ip, r7, r3
 8000fd6:	2402      	movs	r4, #2
 8000fd8:	fb93 f3f2 	sdiv	r3, r3, r2
 8000fdc:	fb92 f2f4 	sdiv	r2, r2, r4
 8000fe0:	e000      	b.n	8000fe4 <line_sensor_read.part.0+0x130>
 8000fe2:	4613      	mov	r3, r2
 8000fe4:	8a8f      	ldrh	r7, [r1, #20]
 8000fe6:	b23c      	sxth	r4, r7
 8000fe8:	1820      	adds	r0, r4, r0
 8000fea:	d00b      	beq.n	8001004 <line_sensor_read.part.0+0x150>
 8000fec:	2c96      	cmp	r4, #150	; 0x96
 8000fee:	dd09      	ble.n	8001004 <line_sensor_read.part.0+0x150>
 8000ff0:	4a33      	ldr	r2, [pc, #204]	; (80010c0 <line_sensor_read.part.0+0x20c>)
 8000ff2:	8953      	ldrh	r3, [r2, #10]
 8000ff4:	8912      	ldrh	r2, [r2, #8]
 8000ff6:	fb16 f602 	smulbb	r6, r6, r2
 8000ffa:	fb17 6303 	smlabb	r3, r7, r3, r6
 8000ffe:	fb93 f3f0 	sdiv	r3, r3, r0
 8001002:	4622      	mov	r2, r4
 8001004:	89ce      	ldrh	r6, [r1, #14]
 8001006:	b230      	sxth	r0, r6
 8001008:	1945      	adds	r5, r0, r5
 800100a:	d00b      	beq.n	8001024 <line_sensor_read.part.0+0x170>
 800100c:	2896      	cmp	r0, #150	; 0x96
 800100e:	dd09      	ble.n	8001024 <line_sensor_read.part.0+0x170>
 8001010:	4a2b      	ldr	r2, [pc, #172]	; (80010c0 <line_sensor_read.part.0+0x20c>)
 8001012:	8893      	ldrh	r3, [r2, #4]
 8001014:	88d2      	ldrh	r2, [r2, #6]
 8001016:	fb1c fc02 	smulbb	ip, ip, r2
 800101a:	fb16 c303 	smlabb	r3, r6, r3, ip
 800101e:	fb93 f3f5 	sdiv	r3, r3, r5
 8001022:	4602      	mov	r2, r0
 8001024:	f8b1 c016 	ldrh.w	ip, [r1, #22]
 8001028:	fa0f f58c 	sxth.w	r5, ip
 800102c:	192c      	adds	r4, r5, r4
 800102e:	d00b      	beq.n	8001048 <line_sensor_read.part.0+0x194>
 8001030:	2d96      	cmp	r5, #150	; 0x96
 8001032:	dd09      	ble.n	8001048 <line_sensor_read.part.0+0x194>
 8001034:	4a22      	ldr	r2, [pc, #136]	; (80010c0 <line_sensor_read.part.0+0x20c>)
 8001036:	8993      	ldrh	r3, [r2, #12]
 8001038:	8952      	ldrh	r2, [r2, #10]
 800103a:	fb17 f702 	smulbb	r7, r7, r2
 800103e:	fb1c 7303 	smlabb	r3, ip, r3, r7
 8001042:	fb93 f3f4 	sdiv	r3, r3, r4
 8001046:	462a      	mov	r2, r5
 8001048:	898d      	ldrh	r5, [r1, #12]
 800104a:	b22c      	sxth	r4, r5
 800104c:	1820      	adds	r0, r4, r0
 800104e:	d00b      	beq.n	8001068 <line_sensor_read.part.0+0x1b4>
 8001050:	2c96      	cmp	r4, #150	; 0x96
 8001052:	dd09      	ble.n	8001068 <line_sensor_read.part.0+0x1b4>
 8001054:	4a1a      	ldr	r2, [pc, #104]	; (80010c0 <line_sensor_read.part.0+0x20c>)
 8001056:	8853      	ldrh	r3, [r2, #2]
 8001058:	8892      	ldrh	r2, [r2, #4]
 800105a:	fb16 f602 	smulbb	r6, r6, r2
 800105e:	fb15 6303 	smlabb	r3, r5, r3, r6
 8001062:	fb93 f3f0 	sdiv	r3, r3, r0
 8001066:	4622      	mov	r2, r4
 8001068:	f9b1 0018 	ldrsh.w	r0, [r1, #24]
 800106c:	2896      	cmp	r0, #150	; 0x96
 800106e:	dd03      	ble.n	8001078 <line_sensor_read.part.0+0x1c4>
 8001070:	4b13      	ldr	r3, [pc, #76]	; (80010c0 <line_sensor_read.part.0+0x20c>)
 8001072:	f9b3 300e 	ldrsh.w	r3, [r3, #14]
 8001076:	4602      	mov	r2, r0
 8001078:	f9b1 000a 	ldrsh.w	r0, [r1, #10]
 800107c:	2896      	cmp	r0, #150	; 0x96
 800107e:	dd03      	ble.n	8001088 <line_sensor_read.part.0+0x1d4>
 8001080:	4b0f      	ldr	r3, [pc, #60]	; (80010c0 <line_sensor_read.part.0+0x20c>)
 8001082:	f9b3 3000 	ldrsh.w	r3, [r3]
 8001086:	e001      	b.n	800108c <line_sensor_read.part.0+0x1d8>
 8001088:	2a96      	cmp	r2, #150	; 0x96
 800108a:	dd0f      	ble.n	80010ac <line_sensor_read.part.0+0x1f8>
 800108c:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
 8001090:	dc05      	bgt.n	800109e <line_sensor_read.part.0+0x1ea>
 8001092:	f06f 02ff 	mvn.w	r2, #255	; 0xff
 8001096:	4293      	cmp	r3, r2
 8001098:	bfb8      	it	lt
 800109a:	4613      	movlt	r3, r2
 800109c:	e001      	b.n	80010a2 <line_sensor_read.part.0+0x1ee>
 800109e:	f44f 7380 	mov.w	r3, #256	; 0x100
 80010a2:	620b      	str	r3, [r1, #32]
 80010a4:	2308      	movs	r3, #8
 80010a6:	770b      	strb	r3, [r1, #28]
 80010a8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80010ac:	4b02      	ldr	r3, [pc, #8]	; (80010b8 <line_sensor_read.part.0+0x204>)
 80010ae:	2200      	movs	r2, #0
 80010b0:	771a      	strb	r2, [r3, #28]
 80010b2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80010b6:	bf00      	nop
 80010b8:	20000390 	.word	0x20000390
 80010bc:	20000336 	.word	0x20000336
 80010c0:	20000000 	.word	0x20000000
 80010c4:	20000154 	.word	0x20000154
 80010c8:	200001b4 	.word	0x200001b4
 80010cc:	20000194 	.word	0x20000194
 80010d0:	20000174 	.word	0x20000174

080010d4 <line_sensor_init>:
 80010d4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80010d8:	2064      	movs	r0, #100	; 0x64
 80010da:	f000 ff0f 	bl	8001efc <timer_delay_ms>
 80010de:	2400      	movs	r4, #0
 80010e0:	f7ff fe00 	bl	8000ce4 <rgb_init>
 80010e4:	f7ff fe3e 	bl	8000d64 <rgb_read>
 80010e8:	2072      	movs	r0, #114	; 0x72
 80010ea:	2192      	movs	r1, #146	; 0x92
 80010ec:	4a2e      	ldr	r2, [pc, #184]	; (80011a8 <line_sensor_init+0xd4>)
 80010ee:	f7ff fdde 	bl	8000cae <rgb_i2c_read_reg>
 80010f2:	4623      	mov	r3, r4
 80010f4:	4a2d      	ldr	r2, [pc, #180]	; (80011ac <line_sensor_init+0xd8>)
 80010f6:	1899      	adds	r1, r3, r2
 80010f8:	4616      	mov	r6, r2
 80010fa:	7849      	ldrb	r1, [r1, #1]
 80010fc:	2969      	cmp	r1, #105	; 0x69
 80010fe:	d002      	beq.n	8001106 <line_sensor_init+0x32>
 8001100:	2201      	movs	r2, #1
 8001102:	409a      	lsls	r2, r3
 8001104:	4314      	orrs	r4, r2
 8001106:	3301      	adds	r3, #1
 8001108:	2b09      	cmp	r3, #9
 800110a:	d1f3      	bne.n	80010f4 <line_sensor_init+0x20>
 800110c:	2100      	movs	r1, #0
 800110e:	1875      	adds	r5, r6, r1
 8001110:	3102      	adds	r1, #2
 8001112:	2200      	movs	r2, #0
 8001114:	2910      	cmp	r1, #16
 8001116:	4b25      	ldr	r3, [pc, #148]	; (80011ac <line_sensor_init+0xd8>)
 8001118:	816a      	strh	r2, [r5, #10]
 800111a:	d1f8      	bne.n	800110e <line_sensor_init+0x3a>
 800111c:	701a      	strb	r2, [r3, #0]
 800111e:	771a      	strb	r2, [r3, #28]
 8001120:	f883 2028 	strb.w	r2, [r3, #40]	; 0x28
 8001124:	621a      	str	r2, [r3, #32]
 8001126:	625a      	str	r2, [r3, #36]	; 0x24
 8001128:	f7ff fe1c 	bl	8000d64 <rgb_read>
 800112c:	2520      	movs	r5, #32
 800112e:	f7ff fe19 	bl	8000d64 <rgb_read>
 8001132:	491f      	ldr	r1, [pc, #124]	; (80011b0 <line_sensor_init+0xdc>)
 8001134:	2200      	movs	r2, #0
 8001136:	f8df c088 	ldr.w	ip, [pc, #136]	; 80011c0 <line_sensor_init+0xec>
 800113a:	f9b1 0036 	ldrsh.w	r0, [r1, #54]	; 0x36
 800113e:	f852 300c 	ldr.w	r3, [r2, ip]
 8001142:	4e1c      	ldr	r6, [pc, #112]	; (80011b4 <line_sensor_init+0xe0>)
 8001144:	f9b1 7012 	ldrsh.w	r7, [r1, #18]
 8001148:	f9b1 8024 	ldrsh.w	r8, [r1, #36]	; 0x24
 800114c:	4403      	add	r3, r0
 800114e:	f842 300c 	str.w	r3, [r2, ip]
 8001152:	f9b1 0000 	ldrsh.w	r0, [r1]
 8001156:	5993      	ldr	r3, [r2, r6]
 8001158:	4403      	add	r3, r0
 800115a:	4817      	ldr	r0, [pc, #92]	; (80011b8 <line_sensor_init+0xe4>)
 800115c:	5193      	str	r3, [r2, r6]
 800115e:	5813      	ldr	r3, [r2, r0]
 8001160:	443b      	add	r3, r7
 8001162:	5013      	str	r3, [r2, r0]
 8001164:	4b15      	ldr	r3, [pc, #84]	; (80011bc <line_sensor_init+0xe8>)
 8001166:	58d7      	ldr	r7, [r2, r3]
 8001168:	4447      	add	r7, r8
 800116a:	50d7      	str	r7, [r2, r3]
 800116c:	3204      	adds	r2, #4
 800116e:	2a20      	cmp	r2, #32
 8001170:	f101 0102 	add.w	r1, r1, #2
 8001174:	461f      	mov	r7, r3
 8001176:	d1de      	bne.n	8001136 <line_sensor_init+0x62>
 8001178:	3d01      	subs	r5, #1
 800117a:	d1d8      	bne.n	800112e <line_sensor_init+0x5a>
 800117c:	462b      	mov	r3, r5
 800117e:	f85c 2003 	ldr.w	r2, [ip, r3]
 8001182:	0952      	lsrs	r2, r2, #5
 8001184:	f84c 2003 	str.w	r2, [ip, r3]
 8001188:	58f2      	ldr	r2, [r6, r3]
 800118a:	0952      	lsrs	r2, r2, #5
 800118c:	50f2      	str	r2, [r6, r3]
 800118e:	58c2      	ldr	r2, [r0, r3]
 8001190:	0952      	lsrs	r2, r2, #5
 8001192:	50c2      	str	r2, [r0, r3]
 8001194:	58fa      	ldr	r2, [r7, r3]
 8001196:	0952      	lsrs	r2, r2, #5
 8001198:	50fa      	str	r2, [r7, r3]
 800119a:	3304      	adds	r3, #4
 800119c:	2b20      	cmp	r3, #32
 800119e:	d1ee      	bne.n	800117e <line_sensor_init+0xaa>
 80011a0:	4620      	mov	r0, r4
 80011a2:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80011a6:	bf00      	nop
 80011a8:	20000391 	.word	0x20000391
 80011ac:	20000390 	.word	0x20000390
 80011b0:	20000336 	.word	0x20000336
 80011b4:	200001b4 	.word	0x200001b4
 80011b8:	20000194 	.word	0x20000194
 80011bc:	20000174 	.word	0x20000174
 80011c0:	20000154 	.word	0x20000154

080011c4 <line_sensor_read>:
 80011c4:	b510      	push	{r4, lr}
 80011c6:	4604      	mov	r4, r0
 80011c8:	f7ff fdcc 	bl	8000d64 <rgb_read>
 80011cc:	b91c      	cbnz	r4, 80011d6 <line_sensor_read+0x12>
 80011ce:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80011d2:	f7ff be6f 	b.w	8000eb4 <line_sensor_read.part.0>
 80011d6:	bd10      	pop	{r4, pc}

080011d8 <abort_error_>:
 80011d8:	b570      	push	{r4, r5, r6, lr}
 80011da:	4605      	mov	r5, r0
 80011dc:	460e      	mov	r6, r1
 80011de:	480f      	ldr	r0, [pc, #60]	; (800121c <abort_error_+0x44>)
 80011e0:	4629      	mov	r1, r5
 80011e2:	4632      	mov	r2, r6
 80011e4:	f7ff f976 	bl	80004d4 <printf_>
 80011e8:	2400      	movs	r4, #0
 80011ea:	1ceb      	adds	r3, r5, #3
 80011ec:	429c      	cmp	r4, r3
 80011ee:	d20f      	bcs.n	8001210 <abort_error_+0x38>
 80011f0:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 80011f4:	f001 fbba 	bl	800296c <led_on>
 80011f8:	2032      	movs	r0, #50	; 0x32
 80011fa:	f000 fe7f 	bl	8001efc <timer_delay_ms>
 80011fe:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001202:	f001 fbc5 	bl	8002990 <led_off>
 8001206:	2064      	movs	r0, #100	; 0x64
 8001208:	f000 fe78 	bl	8001efc <timer_delay_ms>
 800120c:	3401      	adds	r4, #1
 800120e:	e7ec      	b.n	80011ea <abort_error_+0x12>
 8001210:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 8001214:	f000 fe72 	bl	8001efc <timer_delay_ms>
 8001218:	e7e1      	b.n	80011de <abort_error_+0x6>
 800121a:	bf00      	nop
 800121c:	08002a91 	.word	0x08002a91

08001220 <line_sensor_thread>:
 8001220:	b508      	push	{r3, lr}
 8001222:	f7ff ff57 	bl	80010d4 <line_sensor_init>
 8001226:	4601      	mov	r1, r0
 8001228:	b120      	cbz	r0, 8001234 <line_sensor_thread+0x14>
 800122a:	4b08      	ldr	r3, [pc, #32]	; (800124c <line_sensor_thread+0x2c>)
 800122c:	2001      	movs	r0, #1
 800122e:	6018      	str	r0, [r3, #0]
 8001230:	f7ff ffd2 	bl	80011d8 <abort_error_>
 8001234:	2000      	movs	r0, #0
 8001236:	2104      	movs	r1, #4
 8001238:	f000 fe70 	bl	8001f1c <event_timer_set_period>
 800123c:	2000      	movs	r0, #0
 800123e:	f000 fe83 	bl	8001f48 <event_timer_wait>
 8001242:	2000      	movs	r0, #0
 8001244:	f7ff ffbe 	bl	80011c4 <line_sensor_read>
 8001248:	e7f8      	b.n	800123c <line_sensor_thread+0x1c>
 800124a:	bf00      	nop
 800124c:	20001070 	.word	0x20001070

08001250 <i2c_sensor_thread>:
 8001250:	b508      	push	{r3, lr}
 8001252:	f7ff fb0b 	bl	800086c <lsm9ds0_init>
 8001256:	4601      	mov	r1, r0
 8001258:	b128      	cbz	r0, 8001266 <i2c_sensor_thread+0x16>
 800125a:	4b08      	ldr	r3, [pc, #32]	; (800127c <i2c_sensor_thread+0x2c>)
 800125c:	2201      	movs	r2, #1
 800125e:	2002      	movs	r0, #2
 8001260:	601a      	str	r2, [r3, #0]
 8001262:	f7ff ffb9 	bl	80011d8 <abort_error_>
 8001266:	2001      	movs	r0, #1
 8001268:	210a      	movs	r1, #10
 800126a:	f000 fe57 	bl	8001f1c <event_timer_set_period>
 800126e:	2001      	movs	r0, #1
 8001270:	f000 fe6a 	bl	8001f48 <event_timer_wait>
 8001274:	f7ff fa7c 	bl	8000770 <lsm9ds0_read>
 8001278:	e7f9      	b.n	800126e <i2c_sensor_thread+0x1e>
 800127a:	bf00      	nop
 800127c:	20001070 	.word	0x20001070

08001280 <line_follower>:
 8001280:	b538      	push	{r3, r4, r5, lr}
 8001282:	f000 f8e5 	bl	8001450 <line_follower_init>
 8001286:	f000 fa27 	bl	80016d8 <obstacle_init>
 800128a:	2002      	movs	r0, #2
 800128c:	2104      	movs	r1, #4
 800128e:	f000 fe45 	bl	8001f1c <event_timer_set_period>
 8001292:	f000 fe25 	bl	8001ee0 <timer_get_time>
 8001296:	f500 30c3 	add.w	r0, r0, #99840	; 0x18600
 800129a:	f100 05a0 	add.w	r5, r0, #160	; 0xa0
 800129e:	2400      	movs	r4, #0
 80012a0:	2002      	movs	r0, #2
 80012a2:	f000 fe51 	bl	8001f48 <event_timer_wait>
 80012a6:	4b14      	ldr	r3, [pc, #80]	; (80012f8 <line_follower+0x78>)
 80012a8:	6a5a      	ldr	r2, [r3, #36]	; 0x24
 80012aa:	f5b2 7ffa 	cmp.w	r2, #500	; 0x1f4
 80012ae:	dd02      	ble.n	80012b6 <line_follower+0x36>
 80012b0:	f000 fa18 	bl	80016e4 <obstacle_main>
 80012b4:	e007      	b.n	80012c6 <line_follower+0x46>
 80012b6:	7f1b      	ldrb	r3, [r3, #28]
 80012b8:	2b08      	cmp	r3, #8
 80012ba:	d102      	bne.n	80012c2 <line_follower+0x42>
 80012bc:	f000 f8ec 	bl	8001498 <line_follower_main>
 80012c0:	e001      	b.n	80012c6 <line_follower+0x46>
 80012c2:	f000 fa57 	bl	8001774 <broken_line_main>
 80012c6:	3401      	adds	r4, #1
 80012c8:	2314      	movs	r3, #20
 80012ca:	fbb4 f2f3 	udiv	r2, r4, r3
 80012ce:	fb03 4312 	mls	r3, r3, r2, r4
 80012d2:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 80012d6:	b913      	cbnz	r3, 80012de <line_follower+0x5e>
 80012d8:	f001 fb48 	bl	800296c <led_on>
 80012dc:	e001      	b.n	80012e2 <line_follower+0x62>
 80012de:	f001 fb57 	bl	8002990 <led_off>
 80012e2:	f000 fdfd 	bl	8001ee0 <timer_get_time>
 80012e6:	4285      	cmp	r5, r0
 80012e8:	d2da      	bcs.n	80012a0 <line_follower+0x20>
 80012ea:	2000      	movs	r0, #0
 80012ec:	4601      	mov	r1, r0
 80012ee:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 80012f2:	f001 b9b7 	b.w	8002664 <drv8834_run>
 80012f6:	bf00      	nop
 80012f8:	20000390 	.word	0x20000390

080012fc <main_thread>:
 80012fc:	b510      	push	{r4, lr}
 80012fe:	4822      	ldr	r0, [pc, #136]	; (8001388 <main_thread+0x8c>)
 8001300:	4c22      	ldr	r4, [pc, #136]	; (800138c <main_thread+0x90>)
 8001302:	f7ff f8e7 	bl	80004d4 <printf_>
 8001306:	f44f 7096 	mov.w	r0, #300	; 0x12c
 800130a:	f000 fdf7 	bl	8001efc <timer_delay_ms>
 800130e:	2300      	movs	r3, #0
 8001310:	6023      	str	r3, [r4, #0]
 8001312:	491f      	ldr	r1, [pc, #124]	; (8001390 <main_thread+0x94>)
 8001314:	481f      	ldr	r0, [pc, #124]	; (8001394 <main_thread+0x98>)
 8001316:	f44f 7200 	mov.w	r2, #512	; 0x200
 800131a:	2306      	movs	r3, #6
 800131c:	f7fe ffb6 	bl	800028c <create_thread>
 8001320:	491d      	ldr	r1, [pc, #116]	; (8001398 <main_thread+0x9c>)
 8001322:	481e      	ldr	r0, [pc, #120]	; (800139c <main_thread+0xa0>)
 8001324:	f44f 7200 	mov.w	r2, #512	; 0x200
 8001328:	2306      	movs	r3, #6
 800132a:	f7fe ffaf 	bl	800028c <create_thread>
 800132e:	f000 fa1f 	bl	8001770 <broken_line_init>
 8001332:	f000 f9d1 	bl	80016d8 <obstacle_init>
 8001336:	f001 fb45 	bl	80029c4 <get_mode_jumper>
 800133a:	4601      	mov	r1, r0
 800133c:	4818      	ldr	r0, [pc, #96]	; (80013a0 <main_thread+0xa4>)
 800133e:	f7ff f8c9 	bl	80004d4 <printf_>
 8001342:	6823      	ldr	r3, [r4, #0]
 8001344:	b13b      	cbz	r3, 8001356 <main_thread+0x5a>
 8001346:	4817      	ldr	r0, [pc, #92]	; (80013a4 <main_thread+0xa8>)
 8001348:	f7ff f8c4 	bl	80004d4 <printf_>
 800134c:	f44f 60fa 	mov.w	r0, #2000	; 0x7d0
 8001350:	f000 fdd4 	bl	8001efc <timer_delay_ms>
 8001354:	e7f7      	b.n	8001346 <main_thread+0x4a>
 8001356:	f001 fb2d 	bl	80029b4 <get_key>
 800135a:	b128      	cbz	r0, 8001368 <main_thread+0x6c>
 800135c:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 8001360:	f000 fdcc 	bl	8001efc <timer_delay_ms>
 8001364:	f7ff ff8c 	bl	8001280 <line_follower>
 8001368:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 800136c:	f001 fafe 	bl	800296c <led_on>
 8001370:	2064      	movs	r0, #100	; 0x64
 8001372:	f000 fdc3 	bl	8001efc <timer_delay_ms>
 8001376:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 800137a:	f001 fb09 	bl	8002990 <led_off>
 800137e:	20c8      	movs	r0, #200	; 0xc8
 8001380:	f000 fdbc 	bl	8001efc <timer_delay_ms>
 8001384:	e7dd      	b.n	8001342 <main_thread+0x46>
 8001386:	bf00      	nop
 8001388:	08002aa3 	.word	0x08002aa3
 800138c:	20001070 	.word	0x20001070
 8001390:	20000c70 	.word	0x20000c70
 8001394:	08001221 	.word	0x08001221
 8001398:	20000e70 	.word	0x20000e70
 800139c:	08001251 	.word	0x08001251
 80013a0:	08002ade 	.word	0x08002ade
 80013a4:	08002ae9 	.word	0x08002ae9

080013a8 <q_predictor_init>:
 80013a8:	4b24      	ldr	r3, [pc, #144]	; (800143c <q_predictor_init+0x94>)
 80013aa:	2200      	movs	r2, #0
 80013ac:	4619      	mov	r1, r3
 80013ae:	b570      	push	{r4, r5, r6, lr}
 80013b0:	4608      	mov	r0, r1
 80013b2:	601a      	str	r2, [r3, #0]
 80013b4:	605a      	str	r2, [r3, #4]
 80013b6:	f103 0208 	add.w	r2, r3, #8
 80013ba:	3348      	adds	r3, #72	; 0x48
 80013bc:	2400      	movs	r4, #0
 80013be:	f842 4b04 	str.w	r4, [r2], #4
 80013c2:	429a      	cmp	r2, r3
 80013c4:	d1fa      	bne.n	80013bc <q_predictor_init+0x14>
 80013c6:	2200      	movs	r2, #0
 80013c8:	eb01 0442 	add.w	r4, r1, r2, lsl #1
 80013cc:	2300      	movs	r3, #0
 80013ce:	4e1c      	ldr	r6, [pc, #112]	; (8001440 <q_predictor_init+0x98>)
 80013d0:	4416      	add	r6, r2
 80013d2:	eddf 7a1c 	vldr	s15, [pc, #112]	; 8001444 <q_predictor_init+0x9c>
 80013d6:	5ef6      	ldrsh	r6, [r6, r3]
 80013d8:	ee07 6a10 	vmov	s14, r6
 80013dc:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 80013e0:	eb04 0543 	add.w	r5, r4, r3, lsl #1
 80013e4:	ee87 7a27 	vdiv.f32	s14, s14, s15
 80013e8:	3302      	adds	r3, #2
 80013ea:	2b20      	cmp	r3, #32
 80013ec:	ed85 7a12 	vstr	s14, [r5, #72]	; 0x48
 80013f0:	d1ed      	bne.n	80013ce <q_predictor_init+0x26>
 80013f2:	3220      	adds	r2, #32
 80013f4:	f5b2 7f80 	cmp.w	r2, #256	; 0x100
 80013f8:	d1e6      	bne.n	80013c8 <q_predictor_init+0x20>
 80013fa:	2300      	movs	r3, #0
 80013fc:	4912      	ldr	r1, [pc, #72]	; (8001448 <q_predictor_init+0xa0>)
 80013fe:	5e59      	ldrsh	r1, [r3, r1]
 8001400:	ee07 1a10 	vmov	s14, r1
 8001404:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 8001408:	eb00 0243 	add.w	r2, r0, r3, lsl #1
 800140c:	ee87 7a27 	vdiv.f32	s14, s14, s15
 8001410:	3302      	adds	r3, #2
 8001412:	2b10      	cmp	r3, #16
 8001414:	ed82 7a92 	vstr	s14, [r2, #584]	; 0x248
 8001418:	d1f0      	bne.n	80013fc <q_predictor_init+0x54>
 800141a:	2300      	movs	r3, #0
 800141c:	490b      	ldr	r1, [pc, #44]	; (800144c <q_predictor_init+0xa4>)
 800141e:	5e59      	ldrsh	r1, [r3, r1]
 8001420:	ee07 1a10 	vmov	s14, r1
 8001424:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 8001428:	eb00 0243 	add.w	r2, r0, r3, lsl #1
 800142c:	ee87 7a27 	vdiv.f32	s14, s14, s15
 8001430:	3302      	adds	r3, #2
 8001432:	2b10      	cmp	r3, #16
 8001434:	ed82 7a9a 	vstr	s14, [r2, #616]	; 0x268
 8001438:	d1f0      	bne.n	800141c <q_predictor_init+0x74>
 800143a:	bd70      	pop	{r4, r5, r6, pc}
 800143c:	200009dc 	.word	0x200009dc
 8001440:	20000020 	.word	0x20000020
 8001444:	447a0000 	.word	0x447a0000
 8001448:	20000010 	.word	0x20000010
 800144c:	200001d4 	.word	0x200001d4

08001450 <line_follower_init>:
 8001450:	b507      	push	{r0, r1, r2, lr}
 8001452:	4b0a      	ldr	r3, [pc, #40]	; (800147c <line_follower_init+0x2c>)
 8001454:	4a0a      	ldr	r2, [pc, #40]	; (8001480 <line_follower_init+0x30>)
 8001456:	480b      	ldr	r0, [pc, #44]	; (8001484 <line_follower_init+0x34>)
 8001458:	6013      	str	r3, [r2, #0]
 800145a:	4b0b      	ldr	r3, [pc, #44]	; (8001488 <line_follower_init+0x38>)
 800145c:	490b      	ldr	r1, [pc, #44]	; (800148c <line_follower_init+0x3c>)
 800145e:	6053      	str	r3, [r2, #4]
 8001460:	2300      	movs	r3, #0
 8001462:	6093      	str	r3, [r2, #8]
 8001464:	4a0a      	ldr	r2, [pc, #40]	; (8001490 <line_follower_init+0x40>)
 8001466:	9301      	str	r3, [sp, #4]
 8001468:	9200      	str	r2, [sp, #0]
 800146a:	4a0a      	ldr	r2, [pc, #40]	; (8001494 <line_follower_init+0x44>)
 800146c:	f7ff f916 	bl	800069c <pid_init>
 8001470:	b003      	add	sp, #12
 8001472:	f85d eb04 	ldr.w	lr, [sp], #4
 8001476:	f7ff bf97 	b.w	80013a8 <q_predictor_init>
 800147a:	bf00      	nop
 800147c:	3ecccccd 	.word	0x3ecccccd
 8001480:	20000c64 	.word	0x20000c64
 8001484:	20001274 	.word	0x20001274
 8001488:	3f666666 	.word	0x3f666666
 800148c:	42c80000 	.word	0x42c80000
 8001490:	4090f5c3 	.word	0x4090f5c3
 8001494:	3ea6e979 	.word	0x3ea6e979

08001498 <line_follower_main>:
 8001498:	b510      	push	{r4, lr}
 800149a:	4b29      	ldr	r3, [pc, #164]	; (8001540 <line_follower_main+0xa8>)
 800149c:	4c29      	ldr	r4, [pc, #164]	; (8001544 <line_follower_main+0xac>)
 800149e:	ed93 7a08 	vldr	s14, [r3, #32]
 80014a2:	ed2d 8b02 	vpush	{d8}
 80014a6:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 80014aa:	eddf 7a27 	vldr	s15, [pc, #156]	; 8001548 <line_follower_main+0xb0>
 80014ae:	ed9f 8a27 	vldr	s16, [pc, #156]	; 800154c <line_follower_main+0xb4>
 80014b2:	ee07 8a67 	vmls.f32	s16, s14, s15
 80014b6:	ee18 0a10 	vmov	r0, s16
 80014ba:	f7ff f8bd 	bl	8000638 <m_abs>
 80014be:	ed9f 7a24 	vldr	s14, [pc, #144]	; 8001550 <line_follower_main+0xb8>
 80014c2:	ee07 0a90 	vmov	s15, r0
 80014c6:	ed9f 6a23 	vldr	s12, [pc, #140]	; 8001554 <line_follower_main+0xbc>
 80014ca:	ee77 5a67 	vsub.f32	s11, s14, s15
 80014ce:	edd4 6a00 	vldr	s13, [r4]
 80014d2:	ee45 6a86 	vmla.f32	s13, s11, s12
 80014d6:	ee16 0a90 	vmov	r0, s13
 80014da:	eddf 6a1f 	vldr	s13, [pc, #124]	; 8001558 <line_follower_main+0xc0>
 80014de:	ee07 7ae6 	vmls.f32	s14, s15, s13
 80014e2:	ee17 1a10 	vmov	r1, s14
 80014e6:	f7ff f8ca 	bl	800067e <m_min>
 80014ea:	6862      	ldr	r2, [r4, #4]
 80014ec:	6020      	str	r0, [r4, #0]
 80014ee:	f04f 517c 	mov.w	r1, #1056964608	; 0x3f000000
 80014f2:	f7ff f8ad 	bl	8000650 <m_saturate>
 80014f6:	ee18 1a10 	vmov	r1, s16
 80014fa:	6020      	str	r0, [r4, #0]
 80014fc:	4817      	ldr	r0, [pc, #92]	; (800155c <line_follower_main+0xc4>)
 80014fe:	f7ff f8fd 	bl	80006fc <pid_process>
 8001502:	edd4 6a00 	vldr	s13, [r4]
 8001506:	ee07 0a90 	vmov	s15, r0
 800150a:	ed9f 7a15 	vldr	s14, [pc, #84]	; 8001560 <line_follower_main+0xc8>
 800150e:	ee36 6aa7 	vadd.f32	s12, s13, s15
 8001512:	ee76 7ae7 	vsub.f32	s15, s13, s15
 8001516:	ee26 6a07 	vmul.f32	s12, s12, s14
 800151a:	ee27 7a87 	vmul.f32	s14, s15, s14
 800151e:	ecbd 8b02 	vpop	{d8}
 8001522:	eebd 6ac6 	vcvt.s32.f32	s12, s12
 8001526:	eebd 7ac7 	vcvt.s32.f32	s14, s14
 800152a:	60a0      	str	r0, [r4, #8]
 800152c:	ee17 1a10 	vmov	r1, s14
 8001530:	ee16 0a10 	vmov	r0, s12
 8001534:	b209      	sxth	r1, r1
 8001536:	b200      	sxth	r0, r0
 8001538:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800153c:	f001 b892 	b.w	8002664 <drv8834_run>
 8001540:	20000390 	.word	0x20000390
 8001544:	20000c64 	.word	0x20000c64
 8001548:	3b800000 	.word	0x3b800000
 800154c:	00000000 	.word	0x00000000
 8001550:	3f800000 	.word	0x3f800000
 8001554:	3ca3d70a 	.word	0x3ca3d70a
 8001558:	40a00000 	.word	0x40a00000
 800155c:	20001274 	.word	0x20001274
 8001560:	42c80000 	.word	0x42c80000

08001564 <robot_on_line>:
 8001564:	4b03      	ldr	r3, [pc, #12]	; (8001574 <robot_on_line+0x10>)
 8001566:	7f18      	ldrb	r0, [r3, #28]
 8001568:	f1b0 0308 	subs.w	r3, r0, #8
 800156c:	4258      	negs	r0, r3
 800156e:	4158      	adcs	r0, r3
 8001570:	4770      	bx	lr
 8001572:	bf00      	nop
 8001574:	20000390 	.word	0x20000390

08001578 <obstacle_rotate_robot>:
 8001578:	b538      	push	{r3, r4, r5, lr}
 800157a:	f44f 65c8 	mov.w	r5, #1600	; 0x640
 800157e:	ed2d 8b02 	vpush	{d8}
 8001582:	ed9f 8a1d 	vldr	s16, [pc, #116]	; 80015f8 <obstacle_rotate_robot+0x80>
 8001586:	4345      	muls	r5, r0
 8001588:	2400      	movs	r4, #0
 800158a:	ea84 72e4 	eor.w	r2, r4, r4, asr #31
 800158e:	eba2 72e4 	sub.w	r2, r2, r4, asr #31
 8001592:	ea85 73e5 	eor.w	r3, r5, r5, asr #31
 8001596:	eba3 73e5 	sub.w	r3, r3, r5, asr #31
 800159a:	429a      	cmp	r2, r3
 800159c:	da21      	bge.n	80015e2 <obstacle_rotate_robot+0x6a>
 800159e:	ed9f 7a17 	vldr	s14, [pc, #92]	; 80015fc <obstacle_rotate_robot+0x84>
 80015a2:	eddf 7a17 	vldr	s15, [pc, #92]	; 8001600 <obstacle_rotate_robot+0x88>
 80015a6:	ee48 7a07 	vmla.f32	s15, s16, s14
 80015aa:	4b16      	ldr	r3, [pc, #88]	; (8001604 <obstacle_rotate_robot+0x8c>)
 80015ac:	eeb0 8a67 	vmov.f32	s16, s15
 80015b0:	eddf 7a15 	vldr	s15, [pc, #84]	; 8001608 <obstacle_rotate_robot+0x90>
 80015b4:	ee68 7a27 	vmul.f32	s15, s16, s15
 80015b8:	f9b3 3010 	ldrsh.w	r3, [r3, #16]
 80015bc:	eefd 7ae7 	vcvt.s32.f32	s15, s15
 80015c0:	441c      	add	r4, r3
 80015c2:	ee17 3a90 	vmov	r3, s15
 80015c6:	2d00      	cmp	r5, #0
 80015c8:	b219      	sxth	r1, r3
 80015ca:	f1c3 0300 	rsb	r3, r3, #0
 80015ce:	bfca      	itet	gt
 80015d0:	4608      	movgt	r0, r1
 80015d2:	b218      	sxthle	r0, r3
 80015d4:	b219      	sxthgt	r1, r3
 80015d6:	f001 f845 	bl	8002664 <drv8834_run>
 80015da:	200a      	movs	r0, #10
 80015dc:	f000 fc8e 	bl	8001efc <timer_delay_ms>
 80015e0:	e7d3      	b.n	800158a <obstacle_rotate_robot+0x12>
 80015e2:	2000      	movs	r0, #0
 80015e4:	4601      	mov	r1, r0
 80015e6:	f001 f83d 	bl	8002664 <drv8834_run>
 80015ea:	ecbd 8b02 	vpop	{d8}
 80015ee:	2064      	movs	r0, #100	; 0x64
 80015f0:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 80015f4:	f000 bc82 	b.w	8001efc <timer_delay_ms>
 80015f8:	00000000 	.word	0x00000000
 80015fc:	3f4ccccd 	.word	0x3f4ccccd
 8001600:	3e0f5c28 	.word	0x3e0f5c28
 8001604:	2000031c 	.word	0x2000031c
 8001608:	42c80000 	.word	0x42c80000

0800160c <obstacle_go_forward>:
 800160c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8001610:	4688      	mov	r8, r1
 8001612:	ed2d 8b04 	vpush	{d8-d9}
 8001616:	4616      	mov	r6, r2
 8001618:	4607      	mov	r7, r0
 800161a:	b950      	cbnz	r0, 8001632 <obstacle_go_forward+0x26>
 800161c:	2000      	movs	r0, #0
 800161e:	4601      	mov	r1, r0
 8001620:	f001 f820 	bl	8002664 <drv8834_run>
 8001624:	ecbd 8b04 	vpop	{d8-d9}
 8001628:	2064      	movs	r0, #100	; 0x64
 800162a:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 800162e:	f000 bc65 	b.w	8001efc <timer_delay_ms>
 8001632:	ed9f 8a23 	vldr	s16, [pc, #140]	; 80016c0 <obstacle_go_forward+0xb4>
 8001636:	2400      	movs	r4, #0
 8001638:	eef0 7a48 	vmov.f32	s15, s16
 800163c:	4625      	mov	r5, r4
 800163e:	eeb0 9a48 	vmov.f32	s18, s16
 8001642:	4545      	cmp	r5, r8
 8001644:	d2ea      	bcs.n	800161c <obstacle_go_forward+0x10>
 8001646:	4b1f      	ldr	r3, [pc, #124]	; (80016c4 <obstacle_go_forward+0xb8>)
 8001648:	f9b3 3010 	ldrsh.w	r3, [r3, #16]
 800164c:	441c      	add	r4, r3
 800164e:	ee07 4a10 	vmov	s14, r4
 8001652:	eef8 8ac7 	vcvt.f32.s32	s17, s14
 8001656:	ed9f 7a1c 	vldr	s14, [pc, #112]	; 80016c8 <obstacle_go_forward+0xbc>
 800165a:	ee79 8a68 	vsub.f32	s17, s18, s17
 800165e:	350a      	adds	r5, #10
 8001660:	ee78 7ae7 	vsub.f32	s15, s17, s15
 8001664:	ee67 7a87 	vmul.f32	s15, s15, s14
 8001668:	ed9f 7a18 	vldr	s14, [pc, #96]	; 80016cc <obstacle_go_forward+0xc0>
 800166c:	ee48 7a87 	vmla.f32	s15, s17, s14
 8001670:	ee07 7a10 	vmov	s14, r7
 8001674:	eef8 6a47 	vcvt.f32.u32	s13, s14
 8001678:	ed9f 7a15 	vldr	s14, [pc, #84]	; 80016d0 <obstacle_go_forward+0xc4>
 800167c:	ee26 7a87 	vmul.f32	s14, s13, s14
 8001680:	eddf 6a14 	vldr	s13, [pc, #80]	; 80016d4 <obstacle_go_forward+0xc8>
 8001684:	ee08 7a26 	vmla.f32	s14, s16, s13
 8001688:	eeb0 8a47 	vmov.f32	s16, s14
 800168c:	ee37 7a67 	vsub.f32	s14, s14, s15
 8001690:	ee78 7a27 	vadd.f32	s15, s16, s15
 8001694:	eebd 7ac7 	vcvt.s32.f32	s14, s14
 8001698:	eefd 7ae7 	vcvt.s32.f32	s15, s15
 800169c:	ee17 0a10 	vmov	r0, s14
 80016a0:	ee17 1a90 	vmov	r1, s15
 80016a4:	b200      	sxth	r0, r0
 80016a6:	b209      	sxth	r1, r1
 80016a8:	f000 ffdc 	bl	8002664 <drv8834_run>
 80016ac:	200a      	movs	r0, #10
 80016ae:	f000 fc25 	bl	8001efc <timer_delay_ms>
 80016b2:	b116      	cbz	r6, 80016ba <obstacle_go_forward+0xae>
 80016b4:	47b0      	blx	r6
 80016b6:	2800      	cmp	r0, #0
 80016b8:	d1b0      	bne.n	800161c <obstacle_go_forward+0x10>
 80016ba:	eef0 7a68 	vmov.f32	s15, s17
 80016be:	e7c0      	b.n	8001642 <obstacle_go_forward+0x36>
 80016c0:	00000000 	.word	0x00000000
 80016c4:	2000031c 	.word	0x2000031c
 80016c8:	3a83126f 	.word	0x3a83126f
 80016cc:	399d4952 	.word	0x399d4952
 80016d0:	3e4ccccc 	.word	0x3e4ccccc
 80016d4:	3f4ccccd 	.word	0x3f4ccccd

080016d8 <obstacle_init>:
 80016d8:	4b01      	ldr	r3, [pc, #4]	; (80016e0 <obstacle_init+0x8>)
 80016da:	2200      	movs	r2, #0
 80016dc:	601a      	str	r2, [r3, #0]
 80016de:	4770      	bx	lr
 80016e0:	200001e4 	.word	0x200001e4

080016e4 <obstacle_main>:
 80016e4:	b538      	push	{r3, r4, r5, lr}
 80016e6:	f001 f96d 	bl	80029c4 <get_mode_jumper>
 80016ea:	4602      	mov	r2, r0
 80016ec:	b938      	cbnz	r0, 80016fe <obstacle_main+0x1a>
 80016ee:	2164      	movs	r1, #100	; 0x64
 80016f0:	f7ff ff8c 	bl	800160c <obstacle_go_forward>
 80016f4:	20b4      	movs	r0, #180	; 0xb4
 80016f6:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 80016fa:	f7ff bf3d 	b.w	8001578 <obstacle_rotate_robot>
 80016fe:	2400      	movs	r4, #0
 8001700:	4d19      	ldr	r5, [pc, #100]	; (8001768 <obstacle_main+0x84>)
 8001702:	4620      	mov	r0, r4
 8001704:	2164      	movs	r1, #100	; 0x64
 8001706:	4622      	mov	r2, r4
 8001708:	602c      	str	r4, [r5, #0]
 800170a:	f7ff ff7f 	bl	800160c <obstacle_go_forward>
 800170e:	f06f 003b 	mvn.w	r0, #59	; 0x3b
 8001712:	21fa      	movs	r1, #250	; 0xfa
 8001714:	4622      	mov	r2, r4
 8001716:	f7ff ff79 	bl	800160c <obstacle_go_forward>
 800171a:	2164      	movs	r1, #100	; 0x64
 800171c:	4622      	mov	r2, r4
 800171e:	4620      	mov	r0, r4
 8001720:	f7ff ff74 	bl	800160c <obstacle_go_forward>
 8001724:	205a      	movs	r0, #90	; 0x5a
 8001726:	f7ff ff27 	bl	8001578 <obstacle_rotate_robot>
 800172a:	21fa      	movs	r1, #250	; 0xfa
 800172c:	4622      	mov	r2, r4
 800172e:	203c      	movs	r0, #60	; 0x3c
 8001730:	f7ff ff6c 	bl	800160c <obstacle_go_forward>
 8001734:	f06f 0059 	mvn.w	r0, #89	; 0x59
 8001738:	f7ff ff1e 	bl	8001578 <obstacle_rotate_robot>
 800173c:	21fa      	movs	r1, #250	; 0xfa
 800173e:	4622      	mov	r2, r4
 8001740:	203c      	movs	r0, #60	; 0x3c
 8001742:	f7ff ff63 	bl	800160c <obstacle_go_forward>
 8001746:	f06f 0059 	mvn.w	r0, #89	; 0x59
 800174a:	f7ff ff15 	bl	8001578 <obstacle_rotate_robot>
 800174e:	203c      	movs	r0, #60	; 0x3c
 8001750:	f44f 71af 	mov.w	r1, #350	; 0x15e
 8001754:	4a05      	ldr	r2, [pc, #20]	; (800176c <obstacle_main+0x88>)
 8001756:	f7ff ff59 	bl	800160c <obstacle_go_forward>
 800175a:	205a      	movs	r0, #90	; 0x5a
 800175c:	f7ff ff0c 	bl	8001578 <obstacle_rotate_robot>
 8001760:	682b      	ldr	r3, [r5, #0]
 8001762:	3301      	adds	r3, #1
 8001764:	602b      	str	r3, [r5, #0]
 8001766:	bd38      	pop	{r3, r4, r5, pc}
 8001768:	200001e4 	.word	0x200001e4
 800176c:	08001565 	.word	0x08001565

08001770 <broken_line_init>:
 8001770:	4770      	bx	lr
	...

08001774 <broken_line_main>:
 8001774:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8001778:	2500      	movs	r5, #0
 800177a:	462c      	mov	r4, r5
 800177c:	462f      	mov	r7, r5
 800177e:	46a8      	mov	r8, r5
 8001780:	462e      	mov	r6, r5
 8001782:	f8df 90f0 	ldr.w	r9, [pc, #240]	; 8001874 <broken_line_main+0x100>
 8001786:	f899 301c 	ldrb.w	r3, [r9, #28]
 800178a:	2b08      	cmp	r3, #8
 800178c:	d06c      	beq.n	8001868 <broken_line_main+0xf4>
 800178e:	2005      	movs	r0, #5
 8001790:	f000 fbb4 	bl	8001efc <timer_delay_ms>
 8001794:	2f05      	cmp	r7, #5
 8001796:	d861      	bhi.n	800185c <broken_line_main+0xe8>
 8001798:	e8df f007 	tbb	[pc, r7]
 800179c:	38271503 	.word	0x38271503
 80017a0:	4d4a      	.short	0x4d4a
 80017a2:	2c00      	cmp	r4, #0
 80017a4:	d145      	bne.n	8001832 <broken_line_main+0xbe>
 80017a6:	f8d9 3020 	ldr.w	r3, [r9, #32]
 80017aa:	2b00      	cmp	r3, #0
 80017ac:	f04f 0464 	mov.w	r4, #100	; 0x64
 80017b0:	f04f 0701 	mov.w	r7, #1
 80017b4:	bfd4      	ite	le
 80017b6:	f04f 0832 	movle.w	r8, #50	; 0x32
 80017ba:	f04f 0800 	movgt.w	r8, #0
 80017be:	bfd4      	ite	le
 80017c0:	2600      	movle	r6, #0
 80017c2:	2632      	movgt	r6, #50	; 0x32
 80017c4:	e04a      	b.n	800185c <broken_line_main+0xe8>
 80017c6:	bba4      	cbnz	r4, 8001832 <broken_line_main+0xbe>
 80017c8:	f8d9 3020 	ldr.w	r3, [r9, #32]
 80017cc:	2b00      	cmp	r3, #0
 80017ce:	f04f 0464 	mov.w	r4, #100	; 0x64
 80017d2:	f04f 0702 	mov.w	r7, #2
 80017d6:	bfd4      	ite	le
 80017d8:	f06f 0831 	mvnle.w	r8, #49	; 0x31
 80017dc:	f04f 0800 	movgt.w	r8, #0
 80017e0:	bfd4      	ite	le
 80017e2:	2600      	movle	r6, #0
 80017e4:	f06f 0631 	mvngt.w	r6, #49	; 0x31
 80017e8:	e038      	b.n	800185c <broken_line_main+0xe8>
 80017ea:	bb14      	cbnz	r4, 8001832 <broken_line_main+0xbe>
 80017ec:	f8d9 3020 	ldr.w	r3, [r9, #32]
 80017f0:	2b00      	cmp	r3, #0
 80017f2:	f04f 0464 	mov.w	r4, #100	; 0x64
 80017f6:	f04f 0703 	mov.w	r7, #3
 80017fa:	bfd4      	ite	le
 80017fc:	f04f 0800 	movle.w	r8, #0
 8001800:	f04f 0832 	movgt.w	r8, #50	; 0x32
 8001804:	bfd4      	ite	le
 8001806:	2632      	movle	r6, #50	; 0x32
 8001808:	2600      	movgt	r6, #0
 800180a:	e027      	b.n	800185c <broken_line_main+0xe8>
 800180c:	b98c      	cbnz	r4, 8001832 <broken_line_main+0xbe>
 800180e:	f8d9 3020 	ldr.w	r3, [r9, #32]
 8001812:	2b00      	cmp	r3, #0
 8001814:	f04f 0464 	mov.w	r4, #100	; 0x64
 8001818:	f04f 0704 	mov.w	r7, #4
 800181c:	bfd4      	ite	le
 800181e:	f04f 0800 	movle.w	r8, #0
 8001822:	f06f 0831 	mvngt.w	r8, #49	; 0x31
 8001826:	bfd4      	ite	le
 8001828:	f06f 0631 	mvnle.w	r6, #49	; 0x31
 800182c:	2600      	movgt	r6, #0
 800182e:	e015      	b.n	800185c <broken_line_main+0xe8>
 8001830:	b16c      	cbz	r4, 800184e <broken_line_main+0xda>
 8001832:	3c01      	subs	r4, #1
 8001834:	e012      	b.n	800185c <broken_line_main+0xe8>
 8001836:	b184      	cbz	r4, 800185a <broken_line_main+0xe6>
 8001838:	f241 3387 	movw	r3, #4999	; 0x1387
 800183c:	429d      	cmp	r5, r3
 800183e:	bfd8      	it	le
 8001840:	3532      	addle	r5, #50	; 0x32
 8001842:	2664      	movs	r6, #100	; 0x64
 8001844:	fb95 f6f6 	sdiv	r6, r5, r6
 8001848:	3c01      	subs	r4, #1
 800184a:	46b0      	mov	r8, r6
 800184c:	e006      	b.n	800185c <broken_line_main+0xe8>
 800184e:	4625      	mov	r5, r4
 8001850:	2705      	movs	r7, #5
 8001852:	2432      	movs	r4, #50	; 0x32
 8001854:	46a8      	mov	r8, r5
 8001856:	462e      	mov	r6, r5
 8001858:	e000      	b.n	800185c <broken_line_main+0xe8>
 800185a:	4627      	mov	r7, r4
 800185c:	fa0f f088 	sxth.w	r0, r8
 8001860:	b231      	sxth	r1, r6
 8001862:	f000 feff 	bl	8002664 <drv8834_run>
 8001866:	e78c      	b.n	8001782 <broken_line_main+0xe>
 8001868:	2000      	movs	r0, #0
 800186a:	4601      	mov	r1, r0
 800186c:	e8bd 43f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8001870:	f000 bef8 	b.w	8002664 <drv8834_run>
 8001874:	20000390 	.word	0x20000390

08001878 <main>:
 8001878:	b508      	push	{r3, lr}
 800187a:	f000 ff99 	bl	80027b0 <lib_low_level_init>
 800187e:	f7fe fea3 	bl	80005c8 <lib_os_init>
 8001882:	4905      	ldr	r1, [pc, #20]	; (8001898 <main+0x20>)
 8001884:	4805      	ldr	r0, [pc, #20]	; (800189c <main+0x24>)
 8001886:	f44f 7200 	mov.w	r2, #512	; 0x200
 800188a:	2306      	movs	r3, #6
 800188c:	f7fe fcfe 	bl	800028c <create_thread>
 8001890:	f7fe fcf6 	bl	8000280 <kernel_start>
 8001894:	2000      	movs	r0, #0
 8001896:	bd08      	pop	{r3, pc}
 8001898:	20001074 	.word	0x20001074
 800189c:	080012fd 	.word	0x080012fd

080018a0 <RCC_GetClocksFreq>:
 80018a0:	4ba5      	ldr	r3, [pc, #660]	; (8001b38 <RCC_GetClocksFreq+0x298>)
 80018a2:	685a      	ldr	r2, [r3, #4]
 80018a4:	f002 020c 	and.w	r2, r2, #12
 80018a8:	2a04      	cmp	r2, #4
 80018aa:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 80018ae:	d005      	beq.n	80018bc <RCC_GetClocksFreq+0x1c>
 80018b0:	2a08      	cmp	r2, #8
 80018b2:	d006      	beq.n	80018c2 <RCC_GetClocksFreq+0x22>
 80018b4:	4ba1      	ldr	r3, [pc, #644]	; (8001b3c <RCC_GetClocksFreq+0x29c>)
 80018b6:	6003      	str	r3, [r0, #0]
 80018b8:	b9ba      	cbnz	r2, 80018ea <RCC_GetClocksFreq+0x4a>
 80018ba:	e017      	b.n	80018ec <RCC_GetClocksFreq+0x4c>
 80018bc:	4b9f      	ldr	r3, [pc, #636]	; (8001b3c <RCC_GetClocksFreq+0x29c>)
 80018be:	6003      	str	r3, [r0, #0]
 80018c0:	e013      	b.n	80018ea <RCC_GetClocksFreq+0x4a>
 80018c2:	6859      	ldr	r1, [r3, #4]
 80018c4:	685c      	ldr	r4, [r3, #4]
 80018c6:	f3c1 4183 	ubfx	r1, r1, #18, #4
 80018ca:	03e2      	lsls	r2, r4, #15
 80018cc:	f101 0102 	add.w	r1, r1, #2
 80018d0:	d401      	bmi.n	80018d6 <RCC_GetClocksFreq+0x36>
 80018d2:	4a9b      	ldr	r2, [pc, #620]	; (8001b40 <RCC_GetClocksFreq+0x2a0>)
 80018d4:	e006      	b.n	80018e4 <RCC_GetClocksFreq+0x44>
 80018d6:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 80018d8:	4b98      	ldr	r3, [pc, #608]	; (8001b3c <RCC_GetClocksFreq+0x29c>)
 80018da:	f002 020f 	and.w	r2, r2, #15
 80018de:	3201      	adds	r2, #1
 80018e0:	fbb3 f2f2 	udiv	r2, r3, r2
 80018e4:	434a      	muls	r2, r1
 80018e6:	6002      	str	r2, [r0, #0]
 80018e8:	e000      	b.n	80018ec <RCC_GetClocksFreq+0x4c>
 80018ea:	2200      	movs	r2, #0
 80018ec:	4f92      	ldr	r7, [pc, #584]	; (8001b38 <RCC_GetClocksFreq+0x298>)
 80018ee:	4d95      	ldr	r5, [pc, #596]	; (8001b44 <RCC_GetClocksFreq+0x2a4>)
 80018f0:	687b      	ldr	r3, [r7, #4]
 80018f2:	f8df 8254 	ldr.w	r8, [pc, #596]	; 8001b48 <RCC_GetClocksFreq+0x2a8>
 80018f6:	f3c3 1303 	ubfx	r3, r3, #4, #4
 80018fa:	5cec      	ldrb	r4, [r5, r3]
 80018fc:	6803      	ldr	r3, [r0, #0]
 80018fe:	b2e4      	uxtb	r4, r4
 8001900:	fa23 f104 	lsr.w	r1, r3, r4
 8001904:	6041      	str	r1, [r0, #4]
 8001906:	687e      	ldr	r6, [r7, #4]
 8001908:	f3c6 2602 	ubfx	r6, r6, #8, #3
 800190c:	5dae      	ldrb	r6, [r5, r6]
 800190e:	fa21 f606 	lsr.w	r6, r1, r6
 8001912:	6086      	str	r6, [r0, #8]
 8001914:	f8d7 c004 	ldr.w	ip, [r7, #4]
 8001918:	f3cc 2cc2 	ubfx	ip, ip, #11, #3
 800191c:	f815 500c 	ldrb.w	r5, [r5, ip]
 8001920:	b2ed      	uxtb	r5, r5
 8001922:	40e9      	lsrs	r1, r5
 8001924:	60c1      	str	r1, [r0, #12]
 8001926:	f8d7 902c 	ldr.w	r9, [r7, #44]	; 0x2c
 800192a:	f3c9 1904 	ubfx	r9, r9, #4, #5
 800192e:	f009 0c0f 	and.w	ip, r9, #15
 8001932:	f019 0f10 	tst.w	r9, #16
 8001936:	f838 c01c 	ldrh.w	ip, [r8, ip, lsl #1]
 800193a:	fa1f fc8c 	uxth.w	ip, ip
 800193e:	d007      	beq.n	8001950 <RCC_GetClocksFreq+0xb0>
 8001940:	f1bc 0f00 	cmp.w	ip, #0
 8001944:	d004      	beq.n	8001950 <RCC_GetClocksFreq+0xb0>
 8001946:	fbb2 fcfc 	udiv	ip, r2, ip
 800194a:	f8c0 c010 	str.w	ip, [r0, #16]
 800194e:	e000      	b.n	8001952 <RCC_GetClocksFreq+0xb2>
 8001950:	6103      	str	r3, [r0, #16]
 8001952:	6aff      	ldr	r7, [r7, #44]	; 0x2c
 8001954:	f3c7 2c44 	ubfx	ip, r7, #9, #5
 8001958:	f00c 070f 	and.w	r7, ip, #15
 800195c:	f01c 0f10 	tst.w	ip, #16
 8001960:	f838 7017 	ldrh.w	r7, [r8, r7, lsl #1]
 8001964:	b2bf      	uxth	r7, r7
 8001966:	d004      	beq.n	8001972 <RCC_GetClocksFreq+0xd2>
 8001968:	b11f      	cbz	r7, 8001972 <RCC_GetClocksFreq+0xd2>
 800196a:	fbb2 f7f7 	udiv	r7, r2, r7
 800196e:	6147      	str	r7, [r0, #20]
 8001970:	e000      	b.n	8001974 <RCC_GetClocksFreq+0xd4>
 8001972:	6143      	str	r3, [r0, #20]
 8001974:	4f70      	ldr	r7, [pc, #448]	; (8001b38 <RCC_GetClocksFreq+0x298>)
 8001976:	f8d7 c030 	ldr.w	ip, [r7, #48]	; 0x30
 800197a:	f01c 0f10 	tst.w	ip, #16
 800197e:	bf0a      	itet	eq
 8001980:	f8df c1b8 	ldreq.w	ip, [pc, #440]	; 8001b3c <RCC_GetClocksFreq+0x29c>
 8001984:	6183      	strne	r3, [r0, #24]
 8001986:	f8c0 c018 	streq.w	ip, [r0, #24]
 800198a:	6b3f      	ldr	r7, [r7, #48]	; 0x30
 800198c:	06bf      	lsls	r7, r7, #26
 800198e:	bf56      	itet	pl
 8001990:	4f6a      	ldrpl	r7, [pc, #424]	; (8001b3c <RCC_GetClocksFreq+0x29c>)
 8001992:	61c3      	strmi	r3, [r0, #28]
 8001994:	61c7      	strpl	r7, [r0, #28]
 8001996:	4f68      	ldr	r7, [pc, #416]	; (8001b38 <RCC_GetClocksFreq+0x298>)
 8001998:	f8d7 c030 	ldr.w	ip, [r7, #48]	; 0x30
 800199c:	f01c 0f40 	tst.w	ip, #64	; 0x40
 80019a0:	bf0a      	itet	eq
 80019a2:	f8df c198 	ldreq.w	ip, [pc, #408]	; 8001b3c <RCC_GetClocksFreq+0x29c>
 80019a6:	6203      	strne	r3, [r0, #32]
 80019a8:	f8c0 c020 	streq.w	ip, [r0, #32]
 80019ac:	6b3f      	ldr	r7, [r7, #48]	; 0x30
 80019ae:	05ff      	lsls	r7, r7, #23
 80019b0:	d506      	bpl.n	80019c0 <RCC_GetClocksFreq+0x120>
 80019b2:	4293      	cmp	r3, r2
 80019b4:	d104      	bne.n	80019c0 <RCC_GetClocksFreq+0x120>
 80019b6:	42a5      	cmp	r5, r4
 80019b8:	d102      	bne.n	80019c0 <RCC_GetClocksFreq+0x120>
 80019ba:	005f      	lsls	r7, r3, #1
 80019bc:	6247      	str	r7, [r0, #36]	; 0x24
 80019be:	e000      	b.n	80019c2 <RCC_GetClocksFreq+0x122>
 80019c0:	6241      	str	r1, [r0, #36]	; 0x24
 80019c2:	4f5d      	ldr	r7, [pc, #372]	; (8001b38 <RCC_GetClocksFreq+0x298>)
 80019c4:	f8d7 c030 	ldr.w	ip, [r7, #48]	; 0x30
 80019c8:	f41c 5f80 	tst.w	ip, #4096	; 0x1000
 80019cc:	d008      	beq.n	80019e0 <RCC_GetClocksFreq+0x140>
 80019ce:	4293      	cmp	r3, r2
 80019d0:	d106      	bne.n	80019e0 <RCC_GetClocksFreq+0x140>
 80019d2:	42a5      	cmp	r5, r4
 80019d4:	d104      	bne.n	80019e0 <RCC_GetClocksFreq+0x140>
 80019d6:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 80019da:	f8c0 c028 	str.w	ip, [r0, #40]	; 0x28
 80019de:	e000      	b.n	80019e2 <RCC_GetClocksFreq+0x142>
 80019e0:	6281      	str	r1, [r0, #40]	; 0x28
 80019e2:	6b3f      	ldr	r7, [r7, #48]	; 0x30
 80019e4:	05bf      	lsls	r7, r7, #22
 80019e6:	d506      	bpl.n	80019f6 <RCC_GetClocksFreq+0x156>
 80019e8:	4293      	cmp	r3, r2
 80019ea:	d104      	bne.n	80019f6 <RCC_GetClocksFreq+0x156>
 80019ec:	42a5      	cmp	r5, r4
 80019ee:	d102      	bne.n	80019f6 <RCC_GetClocksFreq+0x156>
 80019f0:	005f      	lsls	r7, r3, #1
 80019f2:	62c7      	str	r7, [r0, #44]	; 0x2c
 80019f4:	e000      	b.n	80019f8 <RCC_GetClocksFreq+0x158>
 80019f6:	62c1      	str	r1, [r0, #44]	; 0x2c
 80019f8:	4f4f      	ldr	r7, [pc, #316]	; (8001b38 <RCC_GetClocksFreq+0x298>)
 80019fa:	f8d7 c030 	ldr.w	ip, [r7, #48]	; 0x30
 80019fe:	f41c 6f80 	tst.w	ip, #1024	; 0x400
 8001a02:	d008      	beq.n	8001a16 <RCC_GetClocksFreq+0x176>
 8001a04:	4293      	cmp	r3, r2
 8001a06:	d106      	bne.n	8001a16 <RCC_GetClocksFreq+0x176>
 8001a08:	42a5      	cmp	r5, r4
 8001a0a:	d104      	bne.n	8001a16 <RCC_GetClocksFreq+0x176>
 8001a0c:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8001a10:	f8c0 c04c 	str.w	ip, [r0, #76]	; 0x4c
 8001a14:	e000      	b.n	8001a18 <RCC_GetClocksFreq+0x178>
 8001a16:	64c1      	str	r1, [r0, #76]	; 0x4c
 8001a18:	6b3f      	ldr	r7, [r7, #48]	; 0x30
 8001a1a:	053f      	lsls	r7, r7, #20
 8001a1c:	d506      	bpl.n	8001a2c <RCC_GetClocksFreq+0x18c>
 8001a1e:	4293      	cmp	r3, r2
 8001a20:	d104      	bne.n	8001a2c <RCC_GetClocksFreq+0x18c>
 8001a22:	42a5      	cmp	r5, r4
 8001a24:	d102      	bne.n	8001a2c <RCC_GetClocksFreq+0x18c>
 8001a26:	005f      	lsls	r7, r3, #1
 8001a28:	6507      	str	r7, [r0, #80]	; 0x50
 8001a2a:	e000      	b.n	8001a2e <RCC_GetClocksFreq+0x18e>
 8001a2c:	6501      	str	r1, [r0, #80]	; 0x50
 8001a2e:	4f42      	ldr	r7, [pc, #264]	; (8001b38 <RCC_GetClocksFreq+0x298>)
 8001a30:	f8d7 c030 	ldr.w	ip, [r7, #48]	; 0x30
 8001a34:	f41c 5f00 	tst.w	ip, #8192	; 0x2000
 8001a38:	d008      	beq.n	8001a4c <RCC_GetClocksFreq+0x1ac>
 8001a3a:	4293      	cmp	r3, r2
 8001a3c:	d106      	bne.n	8001a4c <RCC_GetClocksFreq+0x1ac>
 8001a3e:	42a5      	cmp	r5, r4
 8001a40:	d104      	bne.n	8001a4c <RCC_GetClocksFreq+0x1ac>
 8001a42:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8001a46:	f8c0 c054 	str.w	ip, [r0, #84]	; 0x54
 8001a4a:	e000      	b.n	8001a4e <RCC_GetClocksFreq+0x1ae>
 8001a4c:	6501      	str	r1, [r0, #80]	; 0x50
 8001a4e:	6b3f      	ldr	r7, [r7, #48]	; 0x30
 8001a50:	043f      	lsls	r7, r7, #16
 8001a52:	d506      	bpl.n	8001a62 <RCC_GetClocksFreq+0x1c2>
 8001a54:	4293      	cmp	r3, r2
 8001a56:	d104      	bne.n	8001a62 <RCC_GetClocksFreq+0x1c2>
 8001a58:	42a5      	cmp	r5, r4
 8001a5a:	d102      	bne.n	8001a62 <RCC_GetClocksFreq+0x1c2>
 8001a5c:	005a      	lsls	r2, r3, #1
 8001a5e:	6582      	str	r2, [r0, #88]	; 0x58
 8001a60:	e000      	b.n	8001a64 <RCC_GetClocksFreq+0x1c4>
 8001a62:	6581      	str	r1, [r0, #88]	; 0x58
 8001a64:	4a34      	ldr	r2, [pc, #208]	; (8001b38 <RCC_GetClocksFreq+0x298>)
 8001a66:	6b14      	ldr	r4, [r2, #48]	; 0x30
 8001a68:	07a4      	lsls	r4, r4, #30
 8001a6a:	d014      	beq.n	8001a96 <RCC_GetClocksFreq+0x1f6>
 8001a6c:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8001a6e:	f001 0103 	and.w	r1, r1, #3
 8001a72:	2901      	cmp	r1, #1
 8001a74:	d101      	bne.n	8001a7a <RCC_GetClocksFreq+0x1da>
 8001a76:	6383      	str	r3, [r0, #56]	; 0x38
 8001a78:	e00e      	b.n	8001a98 <RCC_GetClocksFreq+0x1f8>
 8001a7a:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8001a7c:	f001 0103 	and.w	r1, r1, #3
 8001a80:	2902      	cmp	r1, #2
 8001a82:	d102      	bne.n	8001a8a <RCC_GetClocksFreq+0x1ea>
 8001a84:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 8001a88:	e005      	b.n	8001a96 <RCC_GetClocksFreq+0x1f6>
 8001a8a:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8001a8c:	f001 0103 	and.w	r1, r1, #3
 8001a90:	2903      	cmp	r1, #3
 8001a92:	d101      	bne.n	8001a98 <RCC_GetClocksFreq+0x1f8>
 8001a94:	4929      	ldr	r1, [pc, #164]	; (8001b3c <RCC_GetClocksFreq+0x29c>)
 8001a96:	6381      	str	r1, [r0, #56]	; 0x38
 8001a98:	6b12      	ldr	r2, [r2, #48]	; 0x30
 8001a9a:	4927      	ldr	r1, [pc, #156]	; (8001b38 <RCC_GetClocksFreq+0x298>)
 8001a9c:	f412 3f40 	tst.w	r2, #196608	; 0x30000
 8001aa0:	d101      	bne.n	8001aa6 <RCC_GetClocksFreq+0x206>
 8001aa2:	63c6      	str	r6, [r0, #60]	; 0x3c
 8001aa4:	e018      	b.n	8001ad8 <RCC_GetClocksFreq+0x238>
 8001aa6:	6b0a      	ldr	r2, [r1, #48]	; 0x30
 8001aa8:	f402 3240 	and.w	r2, r2, #196608	; 0x30000
 8001aac:	f5b2 3f80 	cmp.w	r2, #65536	; 0x10000
 8001ab0:	d101      	bne.n	8001ab6 <RCC_GetClocksFreq+0x216>
 8001ab2:	63c3      	str	r3, [r0, #60]	; 0x3c
 8001ab4:	e010      	b.n	8001ad8 <RCC_GetClocksFreq+0x238>
 8001ab6:	6b0a      	ldr	r2, [r1, #48]	; 0x30
 8001ab8:	f402 3240 	and.w	r2, r2, #196608	; 0x30000
 8001abc:	f5b2 3f00 	cmp.w	r2, #131072	; 0x20000
 8001ac0:	d102      	bne.n	8001ac8 <RCC_GetClocksFreq+0x228>
 8001ac2:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 8001ac6:	e006      	b.n	8001ad6 <RCC_GetClocksFreq+0x236>
 8001ac8:	6b0a      	ldr	r2, [r1, #48]	; 0x30
 8001aca:	f402 3240 	and.w	r2, r2, #196608	; 0x30000
 8001ace:	f5b2 3f40 	cmp.w	r2, #196608	; 0x30000
 8001ad2:	d101      	bne.n	8001ad8 <RCC_GetClocksFreq+0x238>
 8001ad4:	4a19      	ldr	r2, [pc, #100]	; (8001b3c <RCC_GetClocksFreq+0x29c>)
 8001ad6:	63c2      	str	r2, [r0, #60]	; 0x3c
 8001ad8:	4a17      	ldr	r2, [pc, #92]	; (8001b38 <RCC_GetClocksFreq+0x298>)
 8001ada:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8001adc:	f411 2f40 	tst.w	r1, #786432	; 0xc0000
 8001ae0:	d101      	bne.n	8001ae6 <RCC_GetClocksFreq+0x246>
 8001ae2:	6406      	str	r6, [r0, #64]	; 0x40
 8001ae4:	e018      	b.n	8001b18 <RCC_GetClocksFreq+0x278>
 8001ae6:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8001ae8:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 8001aec:	f5b1 2f80 	cmp.w	r1, #262144	; 0x40000
 8001af0:	d101      	bne.n	8001af6 <RCC_GetClocksFreq+0x256>
 8001af2:	6403      	str	r3, [r0, #64]	; 0x40
 8001af4:	e010      	b.n	8001b18 <RCC_GetClocksFreq+0x278>
 8001af6:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8001af8:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 8001afc:	f5b1 2f00 	cmp.w	r1, #524288	; 0x80000
 8001b00:	d102      	bne.n	8001b08 <RCC_GetClocksFreq+0x268>
 8001b02:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 8001b06:	e006      	b.n	8001b16 <RCC_GetClocksFreq+0x276>
 8001b08:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8001b0a:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 8001b0e:	f5b1 2f40 	cmp.w	r1, #786432	; 0xc0000
 8001b12:	d101      	bne.n	8001b18 <RCC_GetClocksFreq+0x278>
 8001b14:	4909      	ldr	r1, [pc, #36]	; (8001b3c <RCC_GetClocksFreq+0x29c>)
 8001b16:	6401      	str	r1, [r0, #64]	; 0x40
 8001b18:	6b12      	ldr	r2, [r2, #48]	; 0x30
 8001b1a:	4907      	ldr	r1, [pc, #28]	; (8001b38 <RCC_GetClocksFreq+0x298>)
 8001b1c:	f412 1f40 	tst.w	r2, #3145728	; 0x300000
 8001b20:	d101      	bne.n	8001b26 <RCC_GetClocksFreq+0x286>
 8001b22:	6446      	str	r6, [r0, #68]	; 0x44
 8001b24:	e023      	b.n	8001b6e <RCC_GetClocksFreq+0x2ce>
 8001b26:	6b0a      	ldr	r2, [r1, #48]	; 0x30
 8001b28:	f402 1240 	and.w	r2, r2, #3145728	; 0x300000
 8001b2c:	f5b2 1f80 	cmp.w	r2, #1048576	; 0x100000
 8001b30:	d10c      	bne.n	8001b4c <RCC_GetClocksFreq+0x2ac>
 8001b32:	6443      	str	r3, [r0, #68]	; 0x44
 8001b34:	e01b      	b.n	8001b6e <RCC_GetClocksFreq+0x2ce>
 8001b36:	bf00      	nop
 8001b38:	40021000 	.word	0x40021000
 8001b3c:	007a1200 	.word	0x007a1200
 8001b40:	003d0900 	.word	0x003d0900
 8001b44:	20000140 	.word	0x20000140
 8001b48:	20000120 	.word	0x20000120
 8001b4c:	6b0a      	ldr	r2, [r1, #48]	; 0x30
 8001b4e:	f402 1240 	and.w	r2, r2, #3145728	; 0x300000
 8001b52:	f5b2 1f00 	cmp.w	r2, #2097152	; 0x200000
 8001b56:	d102      	bne.n	8001b5e <RCC_GetClocksFreq+0x2be>
 8001b58:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 8001b5c:	e006      	b.n	8001b6c <RCC_GetClocksFreq+0x2cc>
 8001b5e:	6b0a      	ldr	r2, [r1, #48]	; 0x30
 8001b60:	f402 1240 	and.w	r2, r2, #3145728	; 0x300000
 8001b64:	f5b2 1f40 	cmp.w	r2, #3145728	; 0x300000
 8001b68:	d101      	bne.n	8001b6e <RCC_GetClocksFreq+0x2ce>
 8001b6a:	4a11      	ldr	r2, [pc, #68]	; (8001bb0 <RCC_GetClocksFreq+0x310>)
 8001b6c:	6442      	str	r2, [r0, #68]	; 0x44
 8001b6e:	4a11      	ldr	r2, [pc, #68]	; (8001bb4 <RCC_GetClocksFreq+0x314>)
 8001b70:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8001b72:	f411 0f40 	tst.w	r1, #12582912	; 0xc00000
 8001b76:	d102      	bne.n	8001b7e <RCC_GetClocksFreq+0x2de>
 8001b78:	6486      	str	r6, [r0, #72]	; 0x48
 8001b7a:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8001b7e:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8001b80:	f401 0140 	and.w	r1, r1, #12582912	; 0xc00000
 8001b84:	f5b1 0f80 	cmp.w	r1, #4194304	; 0x400000
 8001b88:	d00f      	beq.n	8001baa <RCC_GetClocksFreq+0x30a>
 8001b8a:	6b13      	ldr	r3, [r2, #48]	; 0x30
 8001b8c:	f403 0340 	and.w	r3, r3, #12582912	; 0xc00000
 8001b90:	f5b3 0f00 	cmp.w	r3, #8388608	; 0x800000
 8001b94:	d102      	bne.n	8001b9c <RCC_GetClocksFreq+0x2fc>
 8001b96:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001b9a:	e006      	b.n	8001baa <RCC_GetClocksFreq+0x30a>
 8001b9c:	6b13      	ldr	r3, [r2, #48]	; 0x30
 8001b9e:	f403 0340 	and.w	r3, r3, #12582912	; 0xc00000
 8001ba2:	f5b3 0f40 	cmp.w	r3, #12582912	; 0xc00000
 8001ba6:	d101      	bne.n	8001bac <RCC_GetClocksFreq+0x30c>
 8001ba8:	4b01      	ldr	r3, [pc, #4]	; (8001bb0 <RCC_GetClocksFreq+0x310>)
 8001baa:	6483      	str	r3, [r0, #72]	; 0x48
 8001bac:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8001bb0:	007a1200 	.word	0x007a1200
 8001bb4:	40021000 	.word	0x40021000

08001bb8 <RCC_AHBPeriphClockCmd>:
 8001bb8:	bf00      	nop
 8001bba:	bf00      	nop
 8001bbc:	4b04      	ldr	r3, [pc, #16]	; (8001bd0 <RCC_AHBPeriphClockCmd+0x18>)
 8001bbe:	695a      	ldr	r2, [r3, #20]
 8001bc0:	b109      	cbz	r1, 8001bc6 <RCC_AHBPeriphClockCmd+0xe>
 8001bc2:	4310      	orrs	r0, r2
 8001bc4:	e001      	b.n	8001bca <RCC_AHBPeriphClockCmd+0x12>
 8001bc6:	ea22 0000 	bic.w	r0, r2, r0
 8001bca:	6158      	str	r0, [r3, #20]
 8001bcc:	4770      	bx	lr
 8001bce:	bf00      	nop
 8001bd0:	40021000 	.word	0x40021000

08001bd4 <RCC_APB2PeriphClockCmd>:
 8001bd4:	bf00      	nop
 8001bd6:	bf00      	nop
 8001bd8:	4b04      	ldr	r3, [pc, #16]	; (8001bec <RCC_APB2PeriphClockCmd+0x18>)
 8001bda:	699a      	ldr	r2, [r3, #24]
 8001bdc:	b109      	cbz	r1, 8001be2 <RCC_APB2PeriphClockCmd+0xe>
 8001bde:	4310      	orrs	r0, r2
 8001be0:	e001      	b.n	8001be6 <RCC_APB2PeriphClockCmd+0x12>
 8001be2:	ea22 0000 	bic.w	r0, r2, r0
 8001be6:	6198      	str	r0, [r3, #24]
 8001be8:	4770      	bx	lr
 8001bea:	bf00      	nop
 8001bec:	40021000 	.word	0x40021000

08001bf0 <RCC_APB1PeriphClockCmd>:
 8001bf0:	bf00      	nop
 8001bf2:	bf00      	nop
 8001bf4:	4b04      	ldr	r3, [pc, #16]	; (8001c08 <RCC_APB1PeriphClockCmd+0x18>)
 8001bf6:	69da      	ldr	r2, [r3, #28]
 8001bf8:	b109      	cbz	r1, 8001bfe <RCC_APB1PeriphClockCmd+0xe>
 8001bfa:	4310      	orrs	r0, r2
 8001bfc:	e001      	b.n	8001c02 <RCC_APB1PeriphClockCmd+0x12>
 8001bfe:	ea22 0000 	bic.w	r0, r2, r0
 8001c02:	61d8      	str	r0, [r3, #28]
 8001c04:	4770      	bx	lr
 8001c06:	bf00      	nop
 8001c08:	40021000 	.word	0x40021000

08001c0c <TIM_TimeBaseInit>:
 8001c0c:	bf00      	nop
 8001c0e:	bf00      	nop
 8001c10:	bf00      	nop
 8001c12:	4a24      	ldr	r2, [pc, #144]	; (8001ca4 <TIM_TimeBaseInit+0x98>)
 8001c14:	8803      	ldrh	r3, [r0, #0]
 8001c16:	4290      	cmp	r0, r2
 8001c18:	b29b      	uxth	r3, r3
 8001c1a:	d012      	beq.n	8001c42 <TIM_TimeBaseInit+0x36>
 8001c1c:	f502 6200 	add.w	r2, r2, #2048	; 0x800
 8001c20:	4290      	cmp	r0, r2
 8001c22:	d00e      	beq.n	8001c42 <TIM_TimeBaseInit+0x36>
 8001c24:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 8001c28:	d00b      	beq.n	8001c42 <TIM_TimeBaseInit+0x36>
 8001c2a:	f5a2 3298 	sub.w	r2, r2, #77824	; 0x13000
 8001c2e:	4290      	cmp	r0, r2
 8001c30:	d007      	beq.n	8001c42 <TIM_TimeBaseInit+0x36>
 8001c32:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8001c36:	4290      	cmp	r0, r2
 8001c38:	d003      	beq.n	8001c42 <TIM_TimeBaseInit+0x36>
 8001c3a:	f502 32a4 	add.w	r2, r2, #83968	; 0x14800
 8001c3e:	4290      	cmp	r0, r2
 8001c40:	d103      	bne.n	8001c4a <TIM_TimeBaseInit+0x3e>
 8001c42:	884a      	ldrh	r2, [r1, #2]
 8001c44:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 8001c48:	4313      	orrs	r3, r2
 8001c4a:	4a17      	ldr	r2, [pc, #92]	; (8001ca8 <TIM_TimeBaseInit+0x9c>)
 8001c4c:	4290      	cmp	r0, r2
 8001c4e:	d008      	beq.n	8001c62 <TIM_TimeBaseInit+0x56>
 8001c50:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8001c54:	4290      	cmp	r0, r2
 8001c56:	d004      	beq.n	8001c62 <TIM_TimeBaseInit+0x56>
 8001c58:	f423 7340 	bic.w	r3, r3, #768	; 0x300
 8001c5c:	890a      	ldrh	r2, [r1, #8]
 8001c5e:	b29b      	uxth	r3, r3
 8001c60:	4313      	orrs	r3, r2
 8001c62:	8003      	strh	r3, [r0, #0]
 8001c64:	684b      	ldr	r3, [r1, #4]
 8001c66:	62c3      	str	r3, [r0, #44]	; 0x2c
 8001c68:	880b      	ldrh	r3, [r1, #0]
 8001c6a:	8503      	strh	r3, [r0, #40]	; 0x28
 8001c6c:	4b0d      	ldr	r3, [pc, #52]	; (8001ca4 <TIM_TimeBaseInit+0x98>)
 8001c6e:	4298      	cmp	r0, r3
 8001c70:	d013      	beq.n	8001c9a <TIM_TimeBaseInit+0x8e>
 8001c72:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 8001c76:	4298      	cmp	r0, r3
 8001c78:	d00f      	beq.n	8001c9a <TIM_TimeBaseInit+0x8e>
 8001c7a:	f503 6340 	add.w	r3, r3, #3072	; 0xc00
 8001c7e:	4298      	cmp	r0, r3
 8001c80:	d00b      	beq.n	8001c9a <TIM_TimeBaseInit+0x8e>
 8001c82:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 8001c86:	4298      	cmp	r0, r3
 8001c88:	d007      	beq.n	8001c9a <TIM_TimeBaseInit+0x8e>
 8001c8a:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 8001c8e:	4298      	cmp	r0, r3
 8001c90:	d003      	beq.n	8001c9a <TIM_TimeBaseInit+0x8e>
 8001c92:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 8001c96:	4298      	cmp	r0, r3
 8001c98:	d101      	bne.n	8001c9e <TIM_TimeBaseInit+0x92>
 8001c9a:	894b      	ldrh	r3, [r1, #10]
 8001c9c:	8603      	strh	r3, [r0, #48]	; 0x30
 8001c9e:	2301      	movs	r3, #1
 8001ca0:	6143      	str	r3, [r0, #20]
 8001ca2:	4770      	bx	lr
 8001ca4:	40012c00 	.word	0x40012c00
 8001ca8:	40001000 	.word	0x40001000

08001cac <TIM_Cmd>:
 8001cac:	bf00      	nop
 8001cae:	bf00      	nop
 8001cb0:	8803      	ldrh	r3, [r0, #0]
 8001cb2:	b119      	cbz	r1, 8001cbc <TIM_Cmd+0x10>
 8001cb4:	b29b      	uxth	r3, r3
 8001cb6:	f043 0301 	orr.w	r3, r3, #1
 8001cba:	e003      	b.n	8001cc4 <TIM_Cmd+0x18>
 8001cbc:	f023 0301 	bic.w	r3, r3, #1
 8001cc0:	041b      	lsls	r3, r3, #16
 8001cc2:	0c1b      	lsrs	r3, r3, #16
 8001cc4:	8003      	strh	r3, [r0, #0]
 8001cc6:	4770      	bx	lr

08001cc8 <TIM_OC1Init>:
 8001cc8:	b530      	push	{r4, r5, lr}
 8001cca:	bf00      	nop
 8001ccc:	bf00      	nop
 8001cce:	bf00      	nop
 8001cd0:	bf00      	nop
 8001cd2:	6a03      	ldr	r3, [r0, #32]
 8001cd4:	680c      	ldr	r4, [r1, #0]
 8001cd6:	f023 0301 	bic.w	r3, r3, #1
 8001cda:	6203      	str	r3, [r0, #32]
 8001cdc:	6a03      	ldr	r3, [r0, #32]
 8001cde:	6842      	ldr	r2, [r0, #4]
 8001ce0:	6985      	ldr	r5, [r0, #24]
 8001ce2:	f425 3580 	bic.w	r5, r5, #65536	; 0x10000
 8001ce6:	f025 0573 	bic.w	r5, r5, #115	; 0x73
 8001cea:	432c      	orrs	r4, r5
 8001cec:	898d      	ldrh	r5, [r1, #12]
 8001cee:	f023 0302 	bic.w	r3, r3, #2
 8001cf2:	432b      	orrs	r3, r5
 8001cf4:	888d      	ldrh	r5, [r1, #4]
 8001cf6:	432b      	orrs	r3, r5
 8001cf8:	4d15      	ldr	r5, [pc, #84]	; (8001d50 <TIM_OC1Init+0x88>)
 8001cfa:	42a8      	cmp	r0, r5
 8001cfc:	d00f      	beq.n	8001d1e <TIM_OC1Init+0x56>
 8001cfe:	f505 6500 	add.w	r5, r5, #2048	; 0x800
 8001d02:	42a8      	cmp	r0, r5
 8001d04:	d00b      	beq.n	8001d1e <TIM_OC1Init+0x56>
 8001d06:	f505 6540 	add.w	r5, r5, #3072	; 0xc00
 8001d0a:	42a8      	cmp	r0, r5
 8001d0c:	d007      	beq.n	8001d1e <TIM_OC1Init+0x56>
 8001d0e:	f505 6580 	add.w	r5, r5, #1024	; 0x400
 8001d12:	42a8      	cmp	r0, r5
 8001d14:	d003      	beq.n	8001d1e <TIM_OC1Init+0x56>
 8001d16:	f505 6580 	add.w	r5, r5, #1024	; 0x400
 8001d1a:	42a8      	cmp	r0, r5
 8001d1c:	d111      	bne.n	8001d42 <TIM_OC1Init+0x7a>
 8001d1e:	bf00      	nop
 8001d20:	bf00      	nop
 8001d22:	bf00      	nop
 8001d24:	bf00      	nop
 8001d26:	89cd      	ldrh	r5, [r1, #14]
 8001d28:	f023 0308 	bic.w	r3, r3, #8
 8001d2c:	432b      	orrs	r3, r5
 8001d2e:	88cd      	ldrh	r5, [r1, #6]
 8001d30:	f023 0304 	bic.w	r3, r3, #4
 8001d34:	432b      	orrs	r3, r5
 8001d36:	8a0d      	ldrh	r5, [r1, #16]
 8001d38:	f422 7240 	bic.w	r2, r2, #768	; 0x300
 8001d3c:	432a      	orrs	r2, r5
 8001d3e:	8a4d      	ldrh	r5, [r1, #18]
 8001d40:	432a      	orrs	r2, r5
 8001d42:	6042      	str	r2, [r0, #4]
 8001d44:	688a      	ldr	r2, [r1, #8]
 8001d46:	6184      	str	r4, [r0, #24]
 8001d48:	6342      	str	r2, [r0, #52]	; 0x34
 8001d4a:	6203      	str	r3, [r0, #32]
 8001d4c:	bd30      	pop	{r4, r5, pc}
 8001d4e:	bf00      	nop
 8001d50:	40012c00 	.word	0x40012c00

08001d54 <TIM_OC2Init>:
 8001d54:	b570      	push	{r4, r5, r6, lr}
 8001d56:	bf00      	nop
 8001d58:	bf00      	nop
 8001d5a:	bf00      	nop
 8001d5c:	bf00      	nop
 8001d5e:	6a03      	ldr	r3, [r0, #32]
 8001d60:	680c      	ldr	r4, [r1, #0]
 8001d62:	898e      	ldrh	r6, [r1, #12]
 8001d64:	f023 0310 	bic.w	r3, r3, #16
 8001d68:	6203      	str	r3, [r0, #32]
 8001d6a:	6a05      	ldr	r5, [r0, #32]
 8001d6c:	6842      	ldr	r2, [r0, #4]
 8001d6e:	6983      	ldr	r3, [r0, #24]
 8001d70:	f023 7380 	bic.w	r3, r3, #16777216	; 0x1000000
 8001d74:	f423 43e6 	bic.w	r3, r3, #29440	; 0x7300
 8001d78:	ea43 2404 	orr.w	r4, r3, r4, lsl #8
 8001d7c:	888b      	ldrh	r3, [r1, #4]
 8001d7e:	f025 0520 	bic.w	r5, r5, #32
 8001d82:	4333      	orrs	r3, r6
 8001d84:	ea45 1303 	orr.w	r3, r5, r3, lsl #4
 8001d88:	4d10      	ldr	r5, [pc, #64]	; (8001dcc <TIM_OC2Init+0x78>)
 8001d8a:	42a8      	cmp	r0, r5
 8001d8c:	d003      	beq.n	8001d96 <TIM_OC2Init+0x42>
 8001d8e:	f505 6500 	add.w	r5, r5, #2048	; 0x800
 8001d92:	42a8      	cmp	r0, r5
 8001d94:	d114      	bne.n	8001dc0 <TIM_OC2Init+0x6c>
 8001d96:	bf00      	nop
 8001d98:	bf00      	nop
 8001d9a:	bf00      	nop
 8001d9c:	bf00      	nop
 8001d9e:	89cd      	ldrh	r5, [r1, #14]
 8001da0:	8a0e      	ldrh	r6, [r1, #16]
 8001da2:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8001da6:	ea43 1305 	orr.w	r3, r3, r5, lsl #4
 8001daa:	88cd      	ldrh	r5, [r1, #6]
 8001dac:	f023 0340 	bic.w	r3, r3, #64	; 0x40
 8001db0:	ea43 1305 	orr.w	r3, r3, r5, lsl #4
 8001db4:	8a4d      	ldrh	r5, [r1, #18]
 8001db6:	f422 6240 	bic.w	r2, r2, #3072	; 0xc00
 8001dba:	4335      	orrs	r5, r6
 8001dbc:	ea42 0285 	orr.w	r2, r2, r5, lsl #2
 8001dc0:	6042      	str	r2, [r0, #4]
 8001dc2:	688a      	ldr	r2, [r1, #8]
 8001dc4:	6184      	str	r4, [r0, #24]
 8001dc6:	6382      	str	r2, [r0, #56]	; 0x38
 8001dc8:	6203      	str	r3, [r0, #32]
 8001dca:	bd70      	pop	{r4, r5, r6, pc}
 8001dcc:	40012c00 	.word	0x40012c00

08001dd0 <TIM_CtrlPWMOutputs>:
 8001dd0:	bf00      	nop
 8001dd2:	bf00      	nop
 8001dd4:	6c43      	ldr	r3, [r0, #68]	; 0x44
 8001dd6:	b111      	cbz	r1, 8001dde <TIM_CtrlPWMOutputs+0xe>
 8001dd8:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
 8001ddc:	e001      	b.n	8001de2 <TIM_CtrlPWMOutputs+0x12>
 8001dde:	f3c3 030e 	ubfx	r3, r3, #0, #15
 8001de2:	6443      	str	r3, [r0, #68]	; 0x44
 8001de4:	4770      	bx	lr

08001de6 <TIM_ClearITPendingBit>:
 8001de6:	bf00      	nop
 8001de8:	43c9      	mvns	r1, r1
 8001dea:	b289      	uxth	r1, r1
 8001dec:	6101      	str	r1, [r0, #16]
 8001dee:	4770      	bx	lr

08001df0 <timer_init>:
 8001df0:	b530      	push	{r4, r5, lr}
 8001df2:	2300      	movs	r3, #0
 8001df4:	b085      	sub	sp, #20
 8001df6:	491f      	ldr	r1, [pc, #124]	; (8001e74 <timer_init+0x84>)
 8001df8:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8001dfc:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 8001e00:	491d      	ldr	r1, [pc, #116]	; (8001e78 <timer_init+0x88>)
 8001e02:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 8001e06:	4a1d      	ldr	r2, [pc, #116]	; (8001e7c <timer_init+0x8c>)
 8001e08:	2400      	movs	r4, #0
 8001e0a:	f822 4013 	strh.w	r4, [r2, r3, lsl #1]
 8001e0e:	3301      	adds	r3, #1
 8001e10:	2b04      	cmp	r3, #4
 8001e12:	4625      	mov	r5, r4
 8001e14:	d1ef      	bne.n	8001df6 <timer_init+0x6>
 8001e16:	4b1a      	ldr	r3, [pc, #104]	; (8001e80 <timer_init+0x90>)
 8001e18:	2002      	movs	r0, #2
 8001e1a:	2101      	movs	r1, #1
 8001e1c:	601c      	str	r4, [r3, #0]
 8001e1e:	f7ff fee7 	bl	8001bf0 <RCC_APB1PeriphClockCmd>
 8001e22:	f8ad 4006 	strh.w	r4, [sp, #6]
 8001e26:	f8ad 400c 	strh.w	r4, [sp, #12]
 8001e2a:	f8ad 400e 	strh.w	r4, [sp, #14]
 8001e2e:	4c15      	ldr	r4, [pc, #84]	; (8001e84 <timer_init+0x94>)
 8001e30:	f44f 738c 	mov.w	r3, #280	; 0x118
 8001e34:	f8ad 3004 	strh.w	r3, [sp, #4]
 8001e38:	4620      	mov	r0, r4
 8001e3a:	2331      	movs	r3, #49	; 0x31
 8001e3c:	a901      	add	r1, sp, #4
 8001e3e:	9302      	str	r3, [sp, #8]
 8001e40:	f7ff fee4 	bl	8001c0c <TIM_TimeBaseInit>
 8001e44:	4620      	mov	r0, r4
 8001e46:	2101      	movs	r1, #1
 8001e48:	f7ff ff30 	bl	8001cac <TIM_Cmd>
 8001e4c:	68e3      	ldr	r3, [r4, #12]
 8001e4e:	f043 0301 	orr.w	r3, r3, #1
 8001e52:	60e3      	str	r3, [r4, #12]
 8001e54:	231d      	movs	r3, #29
 8001e56:	f88d 3000 	strb.w	r3, [sp]
 8001e5a:	4668      	mov	r0, sp
 8001e5c:	2301      	movs	r3, #1
 8001e5e:	f88d 5001 	strb.w	r5, [sp, #1]
 8001e62:	f88d 3002 	strb.w	r3, [sp, #2]
 8001e66:	f88d 3003 	strb.w	r3, [sp, #3]
 8001e6a:	f000 fc69 	bl	8002740 <NVIC_Init>
 8001e6e:	b005      	add	sp, #20
 8001e70:	bd30      	pop	{r4, r5, pc}
 8001e72:	bf00      	nop
 8001e74:	200012b0 	.word	0x200012b0
 8001e78:	200012a4 	.word	0x200012a4
 8001e7c:	2000129c 	.word	0x2000129c
 8001e80:	200012ac 	.word	0x200012ac
 8001e84:	40000400 	.word	0x40000400

08001e88 <TIM3_IRQHandler>:
 8001e88:	2300      	movs	r3, #0
 8001e8a:	4a10      	ldr	r2, [pc, #64]	; (8001ecc <TIM3_IRQHandler+0x44>)
 8001e8c:	f832 1013 	ldrh.w	r1, [r2, r3, lsl #1]
 8001e90:	b289      	uxth	r1, r1
 8001e92:	b129      	cbz	r1, 8001ea0 <TIM3_IRQHandler+0x18>
 8001e94:	f832 1013 	ldrh.w	r1, [r2, r3, lsl #1]
 8001e98:	b289      	uxth	r1, r1
 8001e9a:	3901      	subs	r1, #1
 8001e9c:	b289      	uxth	r1, r1
 8001e9e:	e007      	b.n	8001eb0 <TIM3_IRQHandler+0x28>
 8001ea0:	490b      	ldr	r1, [pc, #44]	; (8001ed0 <TIM3_IRQHandler+0x48>)
 8001ea2:	f831 1013 	ldrh.w	r1, [r1, r3, lsl #1]
 8001ea6:	b289      	uxth	r1, r1
 8001ea8:	f822 1013 	strh.w	r1, [r2, r3, lsl #1]
 8001eac:	4a09      	ldr	r2, [pc, #36]	; (8001ed4 <TIM3_IRQHandler+0x4c>)
 8001eae:	2101      	movs	r1, #1
 8001eb0:	f822 1013 	strh.w	r1, [r2, r3, lsl #1]
 8001eb4:	3301      	adds	r3, #1
 8001eb6:	2b04      	cmp	r3, #4
 8001eb8:	d1e7      	bne.n	8001e8a <TIM3_IRQHandler+0x2>
 8001eba:	4b07      	ldr	r3, [pc, #28]	; (8001ed8 <TIM3_IRQHandler+0x50>)
 8001ebc:	4807      	ldr	r0, [pc, #28]	; (8001edc <TIM3_IRQHandler+0x54>)
 8001ebe:	681a      	ldr	r2, [r3, #0]
 8001ec0:	2101      	movs	r1, #1
 8001ec2:	3201      	adds	r2, #1
 8001ec4:	601a      	str	r2, [r3, #0]
 8001ec6:	f7ff bf8e 	b.w	8001de6 <TIM_ClearITPendingBit>
 8001eca:	bf00      	nop
 8001ecc:	200012b0 	.word	0x200012b0
 8001ed0:	200012a4 	.word	0x200012a4
 8001ed4:	2000129c 	.word	0x2000129c
 8001ed8:	200012ac 	.word	0x200012ac
 8001edc:	40000400 	.word	0x40000400

08001ee0 <timer_get_time>:
 8001ee0:	b082      	sub	sp, #8
 8001ee2:	b672      	cpsid	i
 8001ee4:	4b04      	ldr	r3, [pc, #16]	; (8001ef8 <timer_get_time+0x18>)
 8001ee6:	681b      	ldr	r3, [r3, #0]
 8001ee8:	9301      	str	r3, [sp, #4]
 8001eea:	b662      	cpsie	i
 8001eec:	9801      	ldr	r0, [sp, #4]
 8001eee:	230a      	movs	r3, #10
 8001ef0:	fbb0 f0f3 	udiv	r0, r0, r3
 8001ef4:	b002      	add	sp, #8
 8001ef6:	4770      	bx	lr
 8001ef8:	200012ac 	.word	0x200012ac

08001efc <timer_delay_ms>:
 8001efc:	b513      	push	{r0, r1, r4, lr}
 8001efe:	4604      	mov	r4, r0
 8001f00:	f7ff ffee 	bl	8001ee0 <timer_get_time>
 8001f04:	4420      	add	r0, r4
 8001f06:	9001      	str	r0, [sp, #4]
 8001f08:	9c01      	ldr	r4, [sp, #4]
 8001f0a:	f7ff ffe9 	bl	8001ee0 <timer_get_time>
 8001f0e:	4284      	cmp	r4, r0
 8001f10:	d902      	bls.n	8001f18 <timer_delay_ms+0x1c>
 8001f12:	f000 fb17 	bl	8002544 <sleep>
 8001f16:	e7f7      	b.n	8001f08 <timer_delay_ms+0xc>
 8001f18:	b002      	add	sp, #8
 8001f1a:	bd10      	pop	{r4, pc}

08001f1c <event_timer_set_period>:
 8001f1c:	b672      	cpsid	i
 8001f1e:	230a      	movs	r3, #10
 8001f20:	4359      	muls	r1, r3
 8001f22:	4b06      	ldr	r3, [pc, #24]	; (8001f3c <event_timer_set_period+0x20>)
 8001f24:	b289      	uxth	r1, r1
 8001f26:	f823 1010 	strh.w	r1, [r3, r0, lsl #1]
 8001f2a:	4b05      	ldr	r3, [pc, #20]	; (8001f40 <event_timer_set_period+0x24>)
 8001f2c:	f823 1010 	strh.w	r1, [r3, r0, lsl #1]
 8001f30:	4b04      	ldr	r3, [pc, #16]	; (8001f44 <event_timer_set_period+0x28>)
 8001f32:	2200      	movs	r2, #0
 8001f34:	f823 2010 	strh.w	r2, [r3, r0, lsl #1]
 8001f38:	b662      	cpsie	i
 8001f3a:	4770      	bx	lr
 8001f3c:	200012b0 	.word	0x200012b0
 8001f40:	200012a4 	.word	0x200012a4
 8001f44:	2000129c 	.word	0x2000129c

08001f48 <event_timer_wait>:
 8001f48:	b510      	push	{r4, lr}
 8001f4a:	4604      	mov	r4, r0
 8001f4c:	4b06      	ldr	r3, [pc, #24]	; (8001f68 <event_timer_wait+0x20>)
 8001f4e:	f833 2014 	ldrh.w	r2, [r3, r4, lsl #1]
 8001f52:	b292      	uxth	r2, r2
 8001f54:	b912      	cbnz	r2, 8001f5c <event_timer_wait+0x14>
 8001f56:	f000 faf5 	bl	8002544 <sleep>
 8001f5a:	e7f7      	b.n	8001f4c <event_timer_wait+0x4>
 8001f5c:	b672      	cpsid	i
 8001f5e:	2200      	movs	r2, #0
 8001f60:	f823 2014 	strh.w	r2, [r3, r4, lsl #1]
 8001f64:	b662      	cpsie	i
 8001f66:	bd10      	pop	{r4, pc}
 8001f68:	2000129c 	.word	0x2000129c

08001f6c <USART_Init>:
 8001f6c:	b530      	push	{r4, r5, lr}
 8001f6e:	4604      	mov	r4, r0
 8001f70:	b099      	sub	sp, #100	; 0x64
 8001f72:	460d      	mov	r5, r1
 8001f74:	bf00      	nop
 8001f76:	bf00      	nop
 8001f78:	bf00      	nop
 8001f7a:	bf00      	nop
 8001f7c:	bf00      	nop
 8001f7e:	bf00      	nop
 8001f80:	bf00      	nop
 8001f82:	6803      	ldr	r3, [r0, #0]
 8001f84:	f023 0301 	bic.w	r3, r3, #1
 8001f88:	6003      	str	r3, [r0, #0]
 8001f8a:	6842      	ldr	r2, [r0, #4]
 8001f8c:	688b      	ldr	r3, [r1, #8]
 8001f8e:	f422 5240 	bic.w	r2, r2, #12288	; 0x3000
 8001f92:	4313      	orrs	r3, r2
 8001f94:	6043      	str	r3, [r0, #4]
 8001f96:	686a      	ldr	r2, [r5, #4]
 8001f98:	68eb      	ldr	r3, [r5, #12]
 8001f9a:	6801      	ldr	r1, [r0, #0]
 8001f9c:	431a      	orrs	r2, r3
 8001f9e:	692b      	ldr	r3, [r5, #16]
 8001fa0:	f421 51b0 	bic.w	r1, r1, #5632	; 0x1600
 8001fa4:	f021 010c 	bic.w	r1, r1, #12
 8001fa8:	4313      	orrs	r3, r2
 8001faa:	430b      	orrs	r3, r1
 8001fac:	6003      	str	r3, [r0, #0]
 8001fae:	6882      	ldr	r2, [r0, #8]
 8001fb0:	696b      	ldr	r3, [r5, #20]
 8001fb2:	f422 7240 	bic.w	r2, r2, #768	; 0x300
 8001fb6:	4313      	orrs	r3, r2
 8001fb8:	6083      	str	r3, [r0, #8]
 8001fba:	a801      	add	r0, sp, #4
 8001fbc:	f7ff fc70 	bl	80018a0 <RCC_GetClocksFreq>
 8001fc0:	4b17      	ldr	r3, [pc, #92]	; (8002020 <USART_Init+0xb4>)
 8001fc2:	429c      	cmp	r4, r3
 8001fc4:	d101      	bne.n	8001fca <USART_Init+0x5e>
 8001fc6:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8001fc8:	e00e      	b.n	8001fe8 <USART_Init+0x7c>
 8001fca:	4b16      	ldr	r3, [pc, #88]	; (8002024 <USART_Init+0xb8>)
 8001fcc:	429c      	cmp	r4, r3
 8001fce:	d101      	bne.n	8001fd4 <USART_Init+0x68>
 8001fd0:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8001fd2:	e009      	b.n	8001fe8 <USART_Init+0x7c>
 8001fd4:	4b14      	ldr	r3, [pc, #80]	; (8002028 <USART_Init+0xbc>)
 8001fd6:	429c      	cmp	r4, r3
 8001fd8:	d101      	bne.n	8001fde <USART_Init+0x72>
 8001fda:	9a11      	ldr	r2, [sp, #68]	; 0x44
 8001fdc:	e004      	b.n	8001fe8 <USART_Init+0x7c>
 8001fde:	4b13      	ldr	r3, [pc, #76]	; (800202c <USART_Init+0xc0>)
 8001fe0:	429c      	cmp	r4, r3
 8001fe2:	bf0c      	ite	eq
 8001fe4:	9a12      	ldreq	r2, [sp, #72]	; 0x48
 8001fe6:	9a13      	ldrne	r2, [sp, #76]	; 0x4c
 8001fe8:	6823      	ldr	r3, [r4, #0]
 8001fea:	6829      	ldr	r1, [r5, #0]
 8001fec:	f413 4f00 	tst.w	r3, #32768	; 0x8000
 8001ff0:	bf18      	it	ne
 8001ff2:	0052      	lslne	r2, r2, #1
 8001ff4:	fbb2 f3f1 	udiv	r3, r2, r1
 8001ff8:	fb01 2213 	mls	r2, r1, r3, r2
 8001ffc:	ebb2 0f51 	cmp.w	r2, r1, lsr #1
 8002000:	6822      	ldr	r2, [r4, #0]
 8002002:	bf28      	it	cs
 8002004:	3301      	addcs	r3, #1
 8002006:	0412      	lsls	r2, r2, #16
 8002008:	d506      	bpl.n	8002018 <USART_Init+0xac>
 800200a:	f64f 72f0 	movw	r2, #65520	; 0xfff0
 800200e:	f3c3 0142 	ubfx	r1, r3, #1, #3
 8002012:	401a      	ands	r2, r3
 8002014:	ea41 0302 	orr.w	r3, r1, r2
 8002018:	b29b      	uxth	r3, r3
 800201a:	81a3      	strh	r3, [r4, #12]
 800201c:	b019      	add	sp, #100	; 0x64
 800201e:	bd30      	pop	{r4, r5, pc}
 8002020:	40013800 	.word	0x40013800
 8002024:	40004400 	.word	0x40004400
 8002028:	40004800 	.word	0x40004800
 800202c:	40004c00 	.word	0x40004c00

08002030 <USART_Cmd>:
 8002030:	bf00      	nop
 8002032:	bf00      	nop
 8002034:	6803      	ldr	r3, [r0, #0]
 8002036:	b111      	cbz	r1, 800203e <USART_Cmd+0xe>
 8002038:	f043 0301 	orr.w	r3, r3, #1
 800203c:	e001      	b.n	8002042 <USART_Cmd+0x12>
 800203e:	f023 0301 	bic.w	r3, r3, #1
 8002042:	6003      	str	r3, [r0, #0]
 8002044:	4770      	bx	lr

08002046 <USART_ReceiveData>:
 8002046:	bf00      	nop
 8002048:	8c80      	ldrh	r0, [r0, #36]	; 0x24
 800204a:	f3c0 0008 	ubfx	r0, r0, #0, #9
 800204e:	4770      	bx	lr

08002050 <USART_ITConfig>:
 8002050:	b510      	push	{r4, lr}
 8002052:	bf00      	nop
 8002054:	bf00      	nop
 8002056:	bf00      	nop
 8002058:	f3c1 2307 	ubfx	r3, r1, #8, #8
 800205c:	2401      	movs	r4, #1
 800205e:	b2c9      	uxtb	r1, r1
 8002060:	2b02      	cmp	r3, #2
 8002062:	fa04 f101 	lsl.w	r1, r4, r1
 8002066:	d101      	bne.n	800206c <USART_ITConfig+0x1c>
 8002068:	3004      	adds	r0, #4
 800206a:	e002      	b.n	8002072 <USART_ITConfig+0x22>
 800206c:	2b03      	cmp	r3, #3
 800206e:	bf08      	it	eq
 8002070:	3008      	addeq	r0, #8
 8002072:	6803      	ldr	r3, [r0, #0]
 8002074:	b10a      	cbz	r2, 800207a <USART_ITConfig+0x2a>
 8002076:	4319      	orrs	r1, r3
 8002078:	e001      	b.n	800207e <USART_ITConfig+0x2e>
 800207a:	ea23 0101 	bic.w	r1, r3, r1
 800207e:	6001      	str	r1, [r0, #0]
 8002080:	bd10      	pop	{r4, pc}

08002082 <USART_GetITStatus>:
 8002082:	b510      	push	{r4, lr}
 8002084:	bf00      	nop
 8002086:	bf00      	nop
 8002088:	2401      	movs	r4, #1
 800208a:	f3c1 2207 	ubfx	r2, r1, #8, #8
 800208e:	b2cb      	uxtb	r3, r1
 8002090:	42a2      	cmp	r2, r4
 8002092:	fa04 f303 	lsl.w	r3, r4, r3
 8002096:	d101      	bne.n	800209c <USART_GetITStatus+0x1a>
 8002098:	6802      	ldr	r2, [r0, #0]
 800209a:	e003      	b.n	80020a4 <USART_GetITStatus+0x22>
 800209c:	2a02      	cmp	r2, #2
 800209e:	bf0c      	ite	eq
 80020a0:	6842      	ldreq	r2, [r0, #4]
 80020a2:	6882      	ldrne	r2, [r0, #8]
 80020a4:	4013      	ands	r3, r2
 80020a6:	69c2      	ldr	r2, [r0, #28]
 80020a8:	b143      	cbz	r3, 80020bc <USART_GetITStatus+0x3a>
 80020aa:	2301      	movs	r3, #1
 80020ac:	0c09      	lsrs	r1, r1, #16
 80020ae:	fa03 f101 	lsl.w	r1, r3, r1
 80020b2:	4211      	tst	r1, r2
 80020b4:	bf0c      	ite	eq
 80020b6:	2000      	moveq	r0, #0
 80020b8:	2001      	movne	r0, #1
 80020ba:	bd10      	pop	{r4, pc}
 80020bc:	4618      	mov	r0, r3
 80020be:	bd10      	pop	{r4, pc}

080020c0 <USART_ClearITPendingBit>:
 80020c0:	bf00      	nop
 80020c2:	bf00      	nop
 80020c4:	2301      	movs	r3, #1
 80020c6:	0c09      	lsrs	r1, r1, #16
 80020c8:	fa03 f101 	lsl.w	r1, r3, r1
 80020cc:	6201      	str	r1, [r0, #32]
 80020ce:	4770      	bx	lr

080020d0 <uart_write>:
 80020d0:	4b03      	ldr	r3, [pc, #12]	; (80020e0 <uart_write+0x10>)
 80020d2:	69da      	ldr	r2, [r3, #28]
 80020d4:	0612      	lsls	r2, r2, #24
 80020d6:	d401      	bmi.n	80020dc <uart_write+0xc>
 80020d8:	bf00      	nop
 80020da:	e7f9      	b.n	80020d0 <uart_write>
 80020dc:	8518      	strh	r0, [r3, #40]	; 0x28
 80020de:	4770      	bx	lr
 80020e0:	40013800 	.word	0x40013800

080020e4 <uart_init>:
 80020e4:	b530      	push	{r4, r5, lr}
 80020e6:	4b2c      	ldr	r3, [pc, #176]	; (8002198 <uart_init+0xb4>)
 80020e8:	4d2c      	ldr	r5, [pc, #176]	; (800219c <uart_init+0xb8>)
 80020ea:	2400      	movs	r4, #0
 80020ec:	601c      	str	r4, [r3, #0]
 80020ee:	4b2c      	ldr	r3, [pc, #176]	; (80021a0 <uart_init+0xbc>)
 80020f0:	b08b      	sub	sp, #44	; 0x2c
 80020f2:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 80020f6:	2101      	movs	r1, #1
 80020f8:	601c      	str	r4, [r3, #0]
 80020fa:	f7ff fd5d 	bl	8001bb8 <RCC_AHBPeriphClockCmd>
 80020fe:	f44f 4080 	mov.w	r0, #16384	; 0x4000
 8002102:	2101      	movs	r1, #1
 8002104:	f7ff fd66 	bl	8001bd4 <RCC_APB2PeriphClockCmd>
 8002108:	f44f 63c0 	mov.w	r3, #1536	; 0x600
 800210c:	9302      	str	r3, [sp, #8]
 800210e:	2302      	movs	r3, #2
 8002110:	f88d 300c 	strb.w	r3, [sp, #12]
 8002114:	a902      	add	r1, sp, #8
 8002116:	2303      	movs	r3, #3
 8002118:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 800211c:	f88d 300d 	strb.w	r3, [sp, #13]
 8002120:	f88d 400e 	strb.w	r4, [sp, #14]
 8002124:	f88d 400f 	strb.w	r4, [sp, #15]
 8002128:	f000 fb53 	bl	80027d2 <GPIO_Init>
 800212c:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8002130:	2109      	movs	r1, #9
 8002132:	2207      	movs	r2, #7
 8002134:	f000 fb9b 	bl	800286e <GPIO_PinAFConfig>
 8002138:	2207      	movs	r2, #7
 800213a:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 800213e:	210a      	movs	r1, #10
 8002140:	f000 fb95 	bl	800286e <GPIO_PinAFConfig>
 8002144:	f44f 33e1 	mov.w	r3, #115200	; 0x1c200
 8002148:	9304      	str	r3, [sp, #16]
 800214a:	4628      	mov	r0, r5
 800214c:	230c      	movs	r3, #12
 800214e:	a904      	add	r1, sp, #16
 8002150:	9308      	str	r3, [sp, #32]
 8002152:	9405      	str	r4, [sp, #20]
 8002154:	9406      	str	r4, [sp, #24]
 8002156:	9407      	str	r4, [sp, #28]
 8002158:	9409      	str	r4, [sp, #36]	; 0x24
 800215a:	f7ff ff07 	bl	8001f6c <USART_Init>
 800215e:	4628      	mov	r0, r5
 8002160:	2101      	movs	r1, #1
 8002162:	f7ff ff65 	bl	8002030 <USART_Cmd>
 8002166:	2201      	movs	r2, #1
 8002168:	4628      	mov	r0, r5
 800216a:	490e      	ldr	r1, [pc, #56]	; (80021a4 <uart_init+0xc0>)
 800216c:	f7ff ff70 	bl	8002050 <USART_ITConfig>
 8002170:	2325      	movs	r3, #37	; 0x25
 8002172:	f88d 4005 	strb.w	r4, [sp, #5]
 8002176:	f88d 4006 	strb.w	r4, [sp, #6]
 800217a:	a801      	add	r0, sp, #4
 800217c:	2401      	movs	r4, #1
 800217e:	f88d 3004 	strb.w	r3, [sp, #4]
 8002182:	f88d 4007 	strb.w	r4, [sp, #7]
 8002186:	f000 fadb 	bl	8002740 <NVIC_Init>
 800218a:	4628      	mov	r0, r5
 800218c:	4621      	mov	r1, r4
 800218e:	f7ff ff4f 	bl	8002030 <USART_Cmd>
 8002192:	b00b      	add	sp, #44	; 0x2c
 8002194:	bd30      	pop	{r4, r5, pc}
 8002196:	bf00      	nop
 8002198:	200012c8 	.word	0x200012c8
 800219c:	40013800 	.word	0x40013800
 80021a0:	200012cc 	.word	0x200012cc
 80021a4:	00050105 	.word	0x00050105

080021a8 <USART1_IRQHandler>:
 80021a8:	b508      	push	{r3, lr}
 80021aa:	480d      	ldr	r0, [pc, #52]	; (80021e0 <USART1_IRQHandler+0x38>)
 80021ac:	490d      	ldr	r1, [pc, #52]	; (80021e4 <USART1_IRQHandler+0x3c>)
 80021ae:	f7ff ff68 	bl	8002082 <USART_GetITStatus>
 80021b2:	b178      	cbz	r0, 80021d4 <USART1_IRQHandler+0x2c>
 80021b4:	480a      	ldr	r0, [pc, #40]	; (80021e0 <USART1_IRQHandler+0x38>)
 80021b6:	f7ff ff46 	bl	8002046 <USART_ReceiveData>
 80021ba:	4b0b      	ldr	r3, [pc, #44]	; (80021e8 <USART1_IRQHandler+0x40>)
 80021bc:	490b      	ldr	r1, [pc, #44]	; (80021ec <USART1_IRQHandler+0x44>)
 80021be:	681a      	ldr	r2, [r3, #0]
 80021c0:	b2c0      	uxtb	r0, r0
 80021c2:	5488      	strb	r0, [r1, r2]
 80021c4:	681a      	ldr	r2, [r3, #0]
 80021c6:	3201      	adds	r2, #1
 80021c8:	601a      	str	r2, [r3, #0]
 80021ca:	681a      	ldr	r2, [r3, #0]
 80021cc:	2a0f      	cmp	r2, #15
 80021ce:	bf84      	itt	hi
 80021d0:	2200      	movhi	r2, #0
 80021d2:	601a      	strhi	r2, [r3, #0]
 80021d4:	4802      	ldr	r0, [pc, #8]	; (80021e0 <USART1_IRQHandler+0x38>)
 80021d6:	4903      	ldr	r1, [pc, #12]	; (80021e4 <USART1_IRQHandler+0x3c>)
 80021d8:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80021dc:	f7ff bf70 	b.w	80020c0 <USART_ClearITPendingBit>
 80021e0:	40013800 	.word	0x40013800
 80021e4:	00050105 	.word	0x00050105
 80021e8:	200012c8 	.word	0x200012c8
 80021ec:	200012b8 	.word	0x200012b8

080021f0 <i2c_delay>:
 80021f0:	230b      	movs	r3, #11
 80021f2:	3b01      	subs	r3, #1
 80021f4:	d001      	beq.n	80021fa <i2c_delay+0xa>
 80021f6:	bf00      	nop
 80021f8:	e7fb      	b.n	80021f2 <i2c_delay+0x2>
 80021fa:	4770      	bx	lr

080021fc <SetLowSDA>:
 80021fc:	b537      	push	{r0, r1, r2, r4, r5, lr}
 80021fe:	4d0d      	ldr	r5, [pc, #52]	; (8002234 <SetLowSDA+0x38>)
 8002200:	2301      	movs	r3, #1
 8002202:	2203      	movs	r2, #3
 8002204:	2480      	movs	r4, #128	; 0x80
 8002206:	f88d 3004 	strb.w	r3, [sp, #4]
 800220a:	f88d 3006 	strb.w	r3, [sp, #6]
 800220e:	4628      	mov	r0, r5
 8002210:	2300      	movs	r3, #0
 8002212:	4669      	mov	r1, sp
 8002214:	f88d 2005 	strb.w	r2, [sp, #5]
 8002218:	f88d 3007 	strb.w	r3, [sp, #7]
 800221c:	9400      	str	r4, [sp, #0]
 800221e:	f000 fad8 	bl	80027d2 <GPIO_Init>
 8002222:	4628      	mov	r0, r5
 8002224:	4621      	mov	r1, r4
 8002226:	f000 fb1e 	bl	8002866 <GPIO_ResetBits>
 800222a:	f7ff ffe1 	bl	80021f0 <i2c_delay>
 800222e:	b003      	add	sp, #12
 8002230:	bd30      	pop	{r4, r5, pc}
 8002232:	bf00      	nop
 8002234:	48000400 	.word	0x48000400

08002238 <SetHighSDA>:
 8002238:	b537      	push	{r0, r1, r2, r4, r5, lr}
 800223a:	4d0d      	ldr	r5, [pc, #52]	; (8002270 <SetHighSDA+0x38>)
 800223c:	2203      	movs	r2, #3
 800223e:	2300      	movs	r3, #0
 8002240:	2480      	movs	r4, #128	; 0x80
 8002242:	f88d 2005 	strb.w	r2, [sp, #5]
 8002246:	4628      	mov	r0, r5
 8002248:	2201      	movs	r2, #1
 800224a:	4669      	mov	r1, sp
 800224c:	f88d 3004 	strb.w	r3, [sp, #4]
 8002250:	f88d 2006 	strb.w	r2, [sp, #6]
 8002254:	f88d 3007 	strb.w	r3, [sp, #7]
 8002258:	9400      	str	r4, [sp, #0]
 800225a:	f000 faba 	bl	80027d2 <GPIO_Init>
 800225e:	4628      	mov	r0, r5
 8002260:	4621      	mov	r1, r4
 8002262:	f000 fafc 	bl	800285e <GPIO_SetBits>
 8002266:	f7ff ffc3 	bl	80021f0 <i2c_delay>
 800226a:	b003      	add	sp, #12
 800226c:	bd30      	pop	{r4, r5, pc}
 800226e:	bf00      	nop
 8002270:	48000400 	.word	0x48000400

08002274 <SetLowSCL>:
 8002274:	b508      	push	{r3, lr}
 8002276:	4804      	ldr	r0, [pc, #16]	; (8002288 <SetLowSCL+0x14>)
 8002278:	2140      	movs	r1, #64	; 0x40
 800227a:	f000 faf4 	bl	8002866 <GPIO_ResetBits>
 800227e:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8002282:	f7ff bfb5 	b.w	80021f0 <i2c_delay>
 8002286:	bf00      	nop
 8002288:	48000400 	.word	0x48000400

0800228c <SetHighSCL>:
 800228c:	b508      	push	{r3, lr}
 800228e:	4804      	ldr	r0, [pc, #16]	; (80022a0 <SetHighSCL+0x14>)
 8002290:	2140      	movs	r1, #64	; 0x40
 8002292:	f000 fae4 	bl	800285e <GPIO_SetBits>
 8002296:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800229a:	f7ff bfa9 	b.w	80021f0 <i2c_delay>
 800229e:	bf00      	nop
 80022a0:	48000400 	.word	0x48000400

080022a4 <i2c_0_init>:
 80022a4:	b507      	push	{r0, r1, r2, lr}
 80022a6:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 80022aa:	2101      	movs	r1, #1
 80022ac:	f7ff fc84 	bl	8001bb8 <RCC_AHBPeriphClockCmd>
 80022b0:	23c0      	movs	r3, #192	; 0xc0
 80022b2:	9300      	str	r3, [sp, #0]
 80022b4:	2301      	movs	r3, #1
 80022b6:	2203      	movs	r2, #3
 80022b8:	480a      	ldr	r0, [pc, #40]	; (80022e4 <i2c_0_init+0x40>)
 80022ba:	f88d 3004 	strb.w	r3, [sp, #4]
 80022be:	4669      	mov	r1, sp
 80022c0:	f88d 3006 	strb.w	r3, [sp, #6]
 80022c4:	2300      	movs	r3, #0
 80022c6:	f88d 2005 	strb.w	r2, [sp, #5]
 80022ca:	f88d 3007 	strb.w	r3, [sp, #7]
 80022ce:	f000 fa80 	bl	80027d2 <GPIO_Init>
 80022d2:	f7ff ffdb 	bl	800228c <SetHighSCL>
 80022d6:	f7ff ff91 	bl	80021fc <SetLowSDA>
 80022da:	f7ff ffad 	bl	8002238 <SetHighSDA>
 80022de:	b003      	add	sp, #12
 80022e0:	f85d fb04 	ldr.w	pc, [sp], #4
 80022e4:	48000400 	.word	0x48000400

080022e8 <i2cStart>:
 80022e8:	b508      	push	{r3, lr}
 80022ea:	f7ff ffcf 	bl	800228c <SetHighSCL>
 80022ee:	f7ff ffa3 	bl	8002238 <SetHighSDA>
 80022f2:	f7ff ffcb 	bl	800228c <SetHighSCL>
 80022f6:	f7ff ff81 	bl	80021fc <SetLowSDA>
 80022fa:	f7ff ffbb 	bl	8002274 <SetLowSCL>
 80022fe:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8002302:	f7ff bf99 	b.w	8002238 <SetHighSDA>

08002306 <i2cStop>:
 8002306:	b508      	push	{r3, lr}
 8002308:	f7ff ffb4 	bl	8002274 <SetLowSCL>
 800230c:	f7ff ff76 	bl	80021fc <SetLowSDA>
 8002310:	f7ff ffbc 	bl	800228c <SetHighSCL>
 8002314:	f7ff ff72 	bl	80021fc <SetLowSDA>
 8002318:	f7ff ffb8 	bl	800228c <SetHighSCL>
 800231c:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8002320:	f7ff bf8a 	b.w	8002238 <SetHighSDA>

08002324 <i2cWrite>:
 8002324:	b538      	push	{r3, r4, r5, lr}
 8002326:	4604      	mov	r4, r0
 8002328:	2508      	movs	r5, #8
 800232a:	f7ff ffa3 	bl	8002274 <SetLowSCL>
 800232e:	0623      	lsls	r3, r4, #24
 8002330:	d502      	bpl.n	8002338 <i2cWrite+0x14>
 8002332:	f7ff ff81 	bl	8002238 <SetHighSDA>
 8002336:	e001      	b.n	800233c <i2cWrite+0x18>
 8002338:	f7ff ff60 	bl	80021fc <SetLowSDA>
 800233c:	3d01      	subs	r5, #1
 800233e:	f7ff ffa5 	bl	800228c <SetHighSCL>
 8002342:	0064      	lsls	r4, r4, #1
 8002344:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 8002348:	b2e4      	uxtb	r4, r4
 800234a:	d1ee      	bne.n	800232a <i2cWrite+0x6>
 800234c:	f7ff ff92 	bl	8002274 <SetLowSCL>
 8002350:	f7ff ff72 	bl	8002238 <SetHighSDA>
 8002354:	f7ff ff9a 	bl	800228c <SetHighSCL>
 8002358:	4b05      	ldr	r3, [pc, #20]	; (8002370 <i2cWrite+0x4c>)
 800235a:	8a1c      	ldrh	r4, [r3, #16]
 800235c:	b2a4      	uxth	r4, r4
 800235e:	f7ff ff89 	bl	8002274 <SetLowSCL>
 8002362:	f7ff ff45 	bl	80021f0 <i2c_delay>
 8002366:	f084 0080 	eor.w	r0, r4, #128	; 0x80
 800236a:	f3c0 10c0 	ubfx	r0, r0, #7, #1
 800236e:	bd38      	pop	{r3, r4, r5, pc}
 8002370:	48000400 	.word	0x48000400

08002374 <i2cRead>:
 8002374:	b570      	push	{r4, r5, r6, lr}
 8002376:	4606      	mov	r6, r0
 8002378:	f7ff ff7c 	bl	8002274 <SetLowSCL>
 800237c:	f7ff ff5c 	bl	8002238 <SetHighSDA>
 8002380:	2508      	movs	r5, #8
 8002382:	2400      	movs	r4, #0
 8002384:	f7ff ff82 	bl	800228c <SetHighSCL>
 8002388:	4b0d      	ldr	r3, [pc, #52]	; (80023c0 <i2cRead+0x4c>)
 800238a:	8a1b      	ldrh	r3, [r3, #16]
 800238c:	0064      	lsls	r4, r4, #1
 800238e:	061a      	lsls	r2, r3, #24
 8002390:	b2e4      	uxtb	r4, r4
 8002392:	bf48      	it	mi
 8002394:	3401      	addmi	r4, #1
 8002396:	f105 35ff 	add.w	r5, r5, #4294967295
 800239a:	bf48      	it	mi
 800239c:	b2e4      	uxtbmi	r4, r4
 800239e:	f7ff ff69 	bl	8002274 <SetLowSCL>
 80023a2:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 80023a6:	d1ed      	bne.n	8002384 <i2cRead+0x10>
 80023a8:	b10e      	cbz	r6, 80023ae <i2cRead+0x3a>
 80023aa:	f7ff ff27 	bl	80021fc <SetLowSDA>
 80023ae:	f7ff ff6d 	bl	800228c <SetHighSCL>
 80023b2:	f7ff ff5f 	bl	8002274 <SetLowSCL>
 80023b6:	f7ff ff1b 	bl	80021f0 <i2c_delay>
 80023ba:	4620      	mov	r0, r4
 80023bc:	bd70      	pop	{r4, r5, r6, pc}
 80023be:	bf00      	nop
 80023c0:	48000400 	.word	0x48000400

080023c4 <i2c_write_reg>:
 80023c4:	b570      	push	{r4, r5, r6, lr}
 80023c6:	4605      	mov	r5, r0
 80023c8:	460c      	mov	r4, r1
 80023ca:	4616      	mov	r6, r2
 80023cc:	f7ff ff8c 	bl	80022e8 <i2cStart>
 80023d0:	4628      	mov	r0, r5
 80023d2:	f7ff ffa7 	bl	8002324 <i2cWrite>
 80023d6:	4620      	mov	r0, r4
 80023d8:	f7ff ffa4 	bl	8002324 <i2cWrite>
 80023dc:	4630      	mov	r0, r6
 80023de:	f7ff ffa1 	bl	8002324 <i2cWrite>
 80023e2:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 80023e6:	f7ff bf8e 	b.w	8002306 <i2cStop>

080023ea <i2c_read_reg>:
 80023ea:	b538      	push	{r3, r4, r5, lr}
 80023ec:	4604      	mov	r4, r0
 80023ee:	460d      	mov	r5, r1
 80023f0:	f7ff ff7a 	bl	80022e8 <i2cStart>
 80023f4:	4620      	mov	r0, r4
 80023f6:	f7ff ff95 	bl	8002324 <i2cWrite>
 80023fa:	4628      	mov	r0, r5
 80023fc:	f7ff ff92 	bl	8002324 <i2cWrite>
 8002400:	f7ff ff72 	bl	80022e8 <i2cStart>
 8002404:	f044 0001 	orr.w	r0, r4, #1
 8002408:	f7ff ff8c 	bl	8002324 <i2cWrite>
 800240c:	2000      	movs	r0, #0
 800240e:	f7ff ffb1 	bl	8002374 <i2cRead>
 8002412:	4604      	mov	r4, r0
 8002414:	f7ff ff77 	bl	8002306 <i2cStop>
 8002418:	4620      	mov	r0, r4
 800241a:	bd38      	pop	{r3, r4, r5, pc}

0800241c <SystemInit>:
 800241c:	4b3b      	ldr	r3, [pc, #236]	; (800250c <SystemInit+0xf0>)
 800241e:	f8d3 2088 	ldr.w	r2, [r3, #136]	; 0x88
 8002422:	f442 0270 	orr.w	r2, r2, #15728640	; 0xf00000
 8002426:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
 800242a:	4b39      	ldr	r3, [pc, #228]	; (8002510 <SystemInit+0xf4>)
 800242c:	681a      	ldr	r2, [r3, #0]
 800242e:	f042 0201 	orr.w	r2, r2, #1
 8002432:	601a      	str	r2, [r3, #0]
 8002434:	6859      	ldr	r1, [r3, #4]
 8002436:	4a37      	ldr	r2, [pc, #220]	; (8002514 <SystemInit+0xf8>)
 8002438:	400a      	ands	r2, r1
 800243a:	605a      	str	r2, [r3, #4]
 800243c:	681a      	ldr	r2, [r3, #0]
 800243e:	f022 7284 	bic.w	r2, r2, #17301504	; 0x1080000
 8002442:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
 8002446:	601a      	str	r2, [r3, #0]
 8002448:	681a      	ldr	r2, [r3, #0]
 800244a:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 800244e:	601a      	str	r2, [r3, #0]
 8002450:	685a      	ldr	r2, [r3, #4]
 8002452:	f422 02fe 	bic.w	r2, r2, #8323072	; 0x7f0000
 8002456:	605a      	str	r2, [r3, #4]
 8002458:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 800245a:	f022 020f 	bic.w	r2, r2, #15
 800245e:	62da      	str	r2, [r3, #44]	; 0x2c
 8002460:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8002462:	4a2d      	ldr	r2, [pc, #180]	; (8002518 <SystemInit+0xfc>)
 8002464:	b082      	sub	sp, #8
 8002466:	400a      	ands	r2, r1
 8002468:	631a      	str	r2, [r3, #48]	; 0x30
 800246a:	2200      	movs	r2, #0
 800246c:	609a      	str	r2, [r3, #8]
 800246e:	9200      	str	r2, [sp, #0]
 8002470:	9201      	str	r2, [sp, #4]
 8002472:	681a      	ldr	r2, [r3, #0]
 8002474:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
 8002478:	601a      	str	r2, [r3, #0]
 800247a:	4b25      	ldr	r3, [pc, #148]	; (8002510 <SystemInit+0xf4>)
 800247c:	681a      	ldr	r2, [r3, #0]
 800247e:	f402 3200 	and.w	r2, r2, #131072	; 0x20000
 8002482:	9201      	str	r2, [sp, #4]
 8002484:	9a00      	ldr	r2, [sp, #0]
 8002486:	3201      	adds	r2, #1
 8002488:	9200      	str	r2, [sp, #0]
 800248a:	9a01      	ldr	r2, [sp, #4]
 800248c:	b91a      	cbnz	r2, 8002496 <SystemInit+0x7a>
 800248e:	9a00      	ldr	r2, [sp, #0]
 8002490:	f5b2 4fa0 	cmp.w	r2, #20480	; 0x5000
 8002494:	d1f1      	bne.n	800247a <SystemInit+0x5e>
 8002496:	681b      	ldr	r3, [r3, #0]
 8002498:	f413 3300 	ands.w	r3, r3, #131072	; 0x20000
 800249c:	bf18      	it	ne
 800249e:	2301      	movne	r3, #1
 80024a0:	9301      	str	r3, [sp, #4]
 80024a2:	9b01      	ldr	r3, [sp, #4]
 80024a4:	2b01      	cmp	r3, #1
 80024a6:	d005      	beq.n	80024b4 <SystemInit+0x98>
 80024a8:	4b18      	ldr	r3, [pc, #96]	; (800250c <SystemInit+0xf0>)
 80024aa:	f04f 6200 	mov.w	r2, #134217728	; 0x8000000
 80024ae:	609a      	str	r2, [r3, #8]
 80024b0:	b002      	add	sp, #8
 80024b2:	4770      	bx	lr
 80024b4:	4b19      	ldr	r3, [pc, #100]	; (800251c <SystemInit+0x100>)
 80024b6:	2212      	movs	r2, #18
 80024b8:	601a      	str	r2, [r3, #0]
 80024ba:	f5a3 5380 	sub.w	r3, r3, #4096	; 0x1000
 80024be:	685a      	ldr	r2, [r3, #4]
 80024c0:	605a      	str	r2, [r3, #4]
 80024c2:	685a      	ldr	r2, [r3, #4]
 80024c4:	605a      	str	r2, [r3, #4]
 80024c6:	685a      	ldr	r2, [r3, #4]
 80024c8:	f442 6280 	orr.w	r2, r2, #1024	; 0x400
 80024cc:	605a      	str	r2, [r3, #4]
 80024ce:	685a      	ldr	r2, [r3, #4]
 80024d0:	f422 127c 	bic.w	r2, r2, #4128768	; 0x3f0000
 80024d4:	605a      	str	r2, [r3, #4]
 80024d6:	685a      	ldr	r2, [r3, #4]
 80024d8:	f442 12e8 	orr.w	r2, r2, #1900544	; 0x1d0000
 80024dc:	605a      	str	r2, [r3, #4]
 80024de:	681a      	ldr	r2, [r3, #0]
 80024e0:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
 80024e4:	601a      	str	r2, [r3, #0]
 80024e6:	6819      	ldr	r1, [r3, #0]
 80024e8:	4a09      	ldr	r2, [pc, #36]	; (8002510 <SystemInit+0xf4>)
 80024ea:	0189      	lsls	r1, r1, #6
 80024ec:	d5fb      	bpl.n	80024e6 <SystemInit+0xca>
 80024ee:	6853      	ldr	r3, [r2, #4]
 80024f0:	f023 0303 	bic.w	r3, r3, #3
 80024f4:	6053      	str	r3, [r2, #4]
 80024f6:	6853      	ldr	r3, [r2, #4]
 80024f8:	f043 0302 	orr.w	r3, r3, #2
 80024fc:	6053      	str	r3, [r2, #4]
 80024fe:	4b04      	ldr	r3, [pc, #16]	; (8002510 <SystemInit+0xf4>)
 8002500:	685b      	ldr	r3, [r3, #4]
 8002502:	f003 030c 	and.w	r3, r3, #12
 8002506:	2b08      	cmp	r3, #8
 8002508:	d1f9      	bne.n	80024fe <SystemInit+0xe2>
 800250a:	e7cd      	b.n	80024a8 <SystemInit+0x8c>
 800250c:	e000ed00 	.word	0xe000ed00
 8002510:	40021000 	.word	0x40021000
 8002514:	f87fc00c 	.word	0xf87fc00c
 8002518:	ff00fccc 	.word	0xff00fccc
 800251c:	40022000 	.word	0x40022000

08002520 <sys_tick_init>:
 8002520:	4b05      	ldr	r3, [pc, #20]	; (8002538 <sys_tick_init+0x18>)
 8002522:	4a06      	ldr	r2, [pc, #24]	; (800253c <sys_tick_init+0x1c>)
 8002524:	605a      	str	r2, [r3, #4]
 8002526:	4a06      	ldr	r2, [pc, #24]	; (8002540 <sys_tick_init+0x20>)
 8002528:	21f0      	movs	r1, #240	; 0xf0
 800252a:	f882 1023 	strb.w	r1, [r2, #35]	; 0x23
 800252e:	2200      	movs	r2, #0
 8002530:	609a      	str	r2, [r3, #8]
 8002532:	2207      	movs	r2, #7
 8002534:	601a      	str	r2, [r3, #0]
 8002536:	4770      	bx	lr
 8002538:	e000e010 	.word	0xe000e010
 800253c:	00029040 	.word	0x00029040
 8002540:	e000ed00 	.word	0xe000ed00

08002544 <sleep>:
 8002544:	bf30      	wfi
 8002546:	4770      	bx	lr

08002548 <sytem_clock_init>:
 8002548:	f7ff bf68 	b.w	800241c <SystemInit>

0800254c <pwm_set>:
 800254c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8002550:	b086      	sub	sp, #24
 8002552:	2370      	movs	r3, #112	; 0x70
 8002554:	9301      	str	r3, [sp, #4]
 8002556:	2301      	movs	r3, #1
 8002558:	f8ad 3008 	strh.w	r3, [sp, #8]
 800255c:	2304      	movs	r3, #4
 800255e:	f8ad 300a 	strh.w	r3, [sp, #10]
 8002562:	4f17      	ldr	r7, [pc, #92]	; (80025c0 <pwm_set+0x74>)
 8002564:	4c17      	ldr	r4, [pc, #92]	; (80025c4 <pwm_set+0x78>)
 8002566:	2302      	movs	r3, #2
 8002568:	f8ad 3010 	strh.w	r3, [sp, #16]
 800256c:	2300      	movs	r3, #0
 800256e:	f8ad 3012 	strh.w	r3, [sp, #18]
 8002572:	f8ad 3016 	strh.w	r3, [sp, #22]
 8002576:	683b      	ldr	r3, [r7, #0]
 8002578:	f242 7610 	movw	r6, #10000	; 0x2710
 800257c:	fbb3 f3f6 	udiv	r3, r3, r6
 8002580:	3b02      	subs	r3, #2
 8002582:	4358      	muls	r0, r3
 8002584:	2564      	movs	r5, #100	; 0x64
 8002586:	fbb0 f3f5 	udiv	r3, r0, r5
 800258a:	f44f 7280 	mov.w	r2, #256	; 0x100
 800258e:	4620      	mov	r0, r4
 8002590:	4688      	mov	r8, r1
 8002592:	a901      	add	r1, sp, #4
 8002594:	f8ad 2014 	strh.w	r2, [sp, #20]
 8002598:	9303      	str	r3, [sp, #12]
 800259a:	f7ff fb95 	bl	8001cc8 <TIM_OC1Init>
 800259e:	683b      	ldr	r3, [r7, #0]
 80025a0:	fbb3 f6f6 	udiv	r6, r3, r6
 80025a4:	3e02      	subs	r6, #2
 80025a6:	fb06 f808 	mul.w	r8, r6, r8
 80025aa:	fbb8 f5f5 	udiv	r5, r8, r5
 80025ae:	4620      	mov	r0, r4
 80025b0:	a901      	add	r1, sp, #4
 80025b2:	9503      	str	r5, [sp, #12]
 80025b4:	f7ff fbce 	bl	8001d54 <TIM_OC2Init>
 80025b8:	b006      	add	sp, #24
 80025ba:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80025be:	bf00      	nop
 80025c0:	20000150 	.word	0x20000150
 80025c4:	40012c00 	.word	0x40012c00

080025c8 <pwm_init>:
 80025c8:	b530      	push	{r4, r5, lr}
 80025ca:	f44f 6000 	mov.w	r0, #2048	; 0x800
 80025ce:	b087      	sub	sp, #28
 80025d0:	2101      	movs	r1, #1
 80025d2:	f7ff faff 	bl	8001bd4 <RCC_APB2PeriphClockCmd>
 80025d6:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 80025da:	2101      	movs	r1, #1
 80025dc:	f7ff faec 	bl	8001bb8 <RCC_AHBPeriphClockCmd>
 80025e0:	4c1d      	ldr	r4, [pc, #116]	; (8002658 <pwm_init+0x90>)
 80025e2:	4d1e      	ldr	r5, [pc, #120]	; (800265c <pwm_init+0x94>)
 80025e4:	f44f 43c0 	mov.w	r3, #24576	; 0x6000
 80025e8:	9301      	str	r3, [sp, #4]
 80025ea:	2302      	movs	r3, #2
 80025ec:	f88d 3008 	strb.w	r3, [sp, #8]
 80025f0:	4620      	mov	r0, r4
 80025f2:	2303      	movs	r3, #3
 80025f4:	a901      	add	r1, sp, #4
 80025f6:	f88d 3009 	strb.w	r3, [sp, #9]
 80025fa:	f000 f8ea 	bl	80027d2 <GPIO_Init>
 80025fe:	4620      	mov	r0, r4
 8002600:	210d      	movs	r1, #13
 8002602:	2206      	movs	r2, #6
 8002604:	f000 f933 	bl	800286e <GPIO_PinAFConfig>
 8002608:	4620      	mov	r0, r4
 800260a:	210e      	movs	r1, #14
 800260c:	2206      	movs	r2, #6
 800260e:	f000 f92e 	bl	800286e <GPIO_PinAFConfig>
 8002612:	4b13      	ldr	r3, [pc, #76]	; (8002660 <pwm_init+0x98>)
 8002614:	681a      	ldr	r2, [r3, #0]
 8002616:	f242 7310 	movw	r3, #10000	; 0x2710
 800261a:	fbb2 f3f3 	udiv	r3, r2, r3
 800261e:	2400      	movs	r4, #0
 8002620:	3b01      	subs	r3, #1
 8002622:	4628      	mov	r0, r5
 8002624:	a903      	add	r1, sp, #12
 8002626:	9304      	str	r3, [sp, #16]
 8002628:	f8ad 400c 	strh.w	r4, [sp, #12]
 800262c:	f8ad 400e 	strh.w	r4, [sp, #14]
 8002630:	f8ad 4014 	strh.w	r4, [sp, #20]
 8002634:	f8ad 4016 	strh.w	r4, [sp, #22]
 8002638:	f7ff fae8 	bl	8001c0c <TIM_TimeBaseInit>
 800263c:	4620      	mov	r0, r4
 800263e:	4621      	mov	r1, r4
 8002640:	f7ff ff84 	bl	800254c <pwm_set>
 8002644:	4628      	mov	r0, r5
 8002646:	2101      	movs	r1, #1
 8002648:	f7ff fb30 	bl	8001cac <TIM_Cmd>
 800264c:	4628      	mov	r0, r5
 800264e:	2101      	movs	r1, #1
 8002650:	f7ff fbbe 	bl	8001dd0 <TIM_CtrlPWMOutputs>
 8002654:	b007      	add	sp, #28
 8002656:	bd30      	pop	{r4, r5, pc}
 8002658:	48000400 	.word	0x48000400
 800265c:	40012c00 	.word	0x40012c00
 8002660:	20000150 	.word	0x20000150

08002664 <drv8834_run>:
 8002664:	1e02      	subs	r2, r0, #0
 8002666:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 800266a:	dd07      	ble.n	800267c <drv8834_run+0x18>
 800266c:	8d18      	ldrh	r0, [r3, #40]	; 0x28
 800266e:	ea6f 4040 	mvn.w	r0, r0, lsl #17
 8002672:	ea6f 4050 	mvn.w	r0, r0, lsr #17
 8002676:	b280      	uxth	r0, r0
 8002678:	8518      	strh	r0, [r3, #40]	; 0x28
 800267a:	e005      	b.n	8002688 <drv8834_run+0x24>
 800267c:	6998      	ldr	r0, [r3, #24]
 800267e:	4252      	negs	r2, r2
 8002680:	f440 4000 	orr.w	r0, r0, #32768	; 0x8000
 8002684:	6198      	str	r0, [r3, #24]
 8002686:	b212      	sxth	r2, r2
 8002688:	2900      	cmp	r1, #0
 800268a:	4b0c      	ldr	r3, [pc, #48]	; (80026bc <drv8834_run+0x58>)
 800268c:	dd05      	ble.n	800269a <drv8834_run+0x36>
 800268e:	8d18      	ldrh	r0, [r3, #40]	; 0x28
 8002690:	b280      	uxth	r0, r0
 8002692:	f040 0020 	orr.w	r0, r0, #32
 8002696:	8518      	strh	r0, [r3, #40]	; 0x28
 8002698:	e005      	b.n	80026a6 <drv8834_run+0x42>
 800269a:	6998      	ldr	r0, [r3, #24]
 800269c:	4249      	negs	r1, r1
 800269e:	f040 0020 	orr.w	r0, r0, #32
 80026a2:	6198      	str	r0, [r3, #24]
 80026a4:	b209      	sxth	r1, r1
 80026a6:	2964      	cmp	r1, #100	; 0x64
 80026a8:	bfb4      	ite	lt
 80026aa:	4608      	movlt	r0, r1
 80026ac:	2064      	movge	r0, #100	; 0x64
 80026ae:	2a64      	cmp	r2, #100	; 0x64
 80026b0:	bfb4      	ite	lt
 80026b2:	4611      	movlt	r1, r2
 80026b4:	2164      	movge	r1, #100	; 0x64
 80026b6:	f7ff bf49 	b.w	800254c <pwm_set>
 80026ba:	bf00      	nop
 80026bc:	48000400 	.word	0x48000400

080026c0 <drv8834_init>:
 80026c0:	e92d 41f3 	stmdb	sp!, {r0, r1, r4, r5, r6, r7, r8, lr}
 80026c4:	4f1d      	ldr	r7, [pc, #116]	; (800273c <drv8834_init+0x7c>)
 80026c6:	2400      	movs	r4, #0
 80026c8:	2601      	movs	r6, #1
 80026ca:	2503      	movs	r5, #3
 80026cc:	f04f 0810 	mov.w	r8, #16
 80026d0:	4638      	mov	r0, r7
 80026d2:	4669      	mov	r1, sp
 80026d4:	f8cd 8000 	str.w	r8, [sp]
 80026d8:	f88d 6004 	strb.w	r6, [sp, #4]
 80026dc:	f88d 4006 	strb.w	r4, [sp, #6]
 80026e0:	f88d 5005 	strb.w	r5, [sp, #5]
 80026e4:	f88d 4007 	strb.w	r4, [sp, #7]
 80026e8:	f000 f873 	bl	80027d2 <GPIO_Init>
 80026ec:	f8a7 8028 	strh.w	r8, [r7, #40]	; 0x28
 80026f0:	2320      	movs	r3, #32
 80026f2:	4638      	mov	r0, r7
 80026f4:	4669      	mov	r1, sp
 80026f6:	9300      	str	r3, [sp, #0]
 80026f8:	f88d 6004 	strb.w	r6, [sp, #4]
 80026fc:	f88d 4006 	strb.w	r4, [sp, #6]
 8002700:	f88d 5005 	strb.w	r5, [sp, #5]
 8002704:	f88d 4007 	strb.w	r4, [sp, #7]
 8002708:	f000 f863 	bl	80027d2 <GPIO_Init>
 800270c:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8002710:	4669      	mov	r1, sp
 8002712:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8002716:	9300      	str	r3, [sp, #0]
 8002718:	f88d 6004 	strb.w	r6, [sp, #4]
 800271c:	f88d 4006 	strb.w	r4, [sp, #6]
 8002720:	f88d 5005 	strb.w	r5, [sp, #5]
 8002724:	f88d 4007 	strb.w	r4, [sp, #7]
 8002728:	f000 f853 	bl	80027d2 <GPIO_Init>
 800272c:	4620      	mov	r0, r4
 800272e:	4621      	mov	r1, r4
 8002730:	f7ff ff98 	bl	8002664 <drv8834_run>
 8002734:	b002      	add	sp, #8
 8002736:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800273a:	bf00      	nop
 800273c:	48000400 	.word	0x48000400

08002740 <NVIC_Init>:
 8002740:	b510      	push	{r4, lr}
 8002742:	bf00      	nop
 8002744:	bf00      	nop
 8002746:	bf00      	nop
 8002748:	78c2      	ldrb	r2, [r0, #3]
 800274a:	7803      	ldrb	r3, [r0, #0]
 800274c:	b30a      	cbz	r2, 8002792 <NVIC_Init+0x52>
 800274e:	4a16      	ldr	r2, [pc, #88]	; (80027a8 <NVIC_Init+0x68>)
 8002750:	7844      	ldrb	r4, [r0, #1]
 8002752:	68d2      	ldr	r2, [r2, #12]
 8002754:	43d2      	mvns	r2, r2
 8002756:	f3c2 2202 	ubfx	r2, r2, #8, #3
 800275a:	f1c2 0104 	rsb	r1, r2, #4
 800275e:	b2c9      	uxtb	r1, r1
 8002760:	fa04 f101 	lsl.w	r1, r4, r1
 8002764:	240f      	movs	r4, #15
 8002766:	fa44 f202 	asr.w	r2, r4, r2
 800276a:	7884      	ldrb	r4, [r0, #2]
 800276c:	b2c9      	uxtb	r1, r1
 800276e:	4022      	ands	r2, r4
 8002770:	430a      	orrs	r2, r1
 8002772:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
 8002776:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
 800277a:	0112      	lsls	r2, r2, #4
 800277c:	b2d2      	uxtb	r2, r2
 800277e:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
 8002782:	7803      	ldrb	r3, [r0, #0]
 8002784:	2201      	movs	r2, #1
 8002786:	0959      	lsrs	r1, r3, #5
 8002788:	f003 031f 	and.w	r3, r3, #31
 800278c:	fa02 f303 	lsl.w	r3, r2, r3
 8002790:	e006      	b.n	80027a0 <NVIC_Init+0x60>
 8002792:	0959      	lsrs	r1, r3, #5
 8002794:	2201      	movs	r2, #1
 8002796:	f003 031f 	and.w	r3, r3, #31
 800279a:	fa02 f303 	lsl.w	r3, r2, r3
 800279e:	3120      	adds	r1, #32
 80027a0:	4a02      	ldr	r2, [pc, #8]	; (80027ac <NVIC_Init+0x6c>)
 80027a2:	f842 3021 	str.w	r3, [r2, r1, lsl #2]
 80027a6:	bd10      	pop	{r4, pc}
 80027a8:	e000ed00 	.word	0xe000ed00
 80027ac:	e000e100 	.word	0xe000e100

080027b0 <lib_low_level_init>:
 80027b0:	b508      	push	{r3, lr}
 80027b2:	f7ff fec9 	bl	8002548 <sytem_clock_init>
 80027b6:	f000 f871 	bl	800289c <gpio_init>
 80027ba:	f7ff fc93 	bl	80020e4 <uart_init>
 80027be:	f7ff fb17 	bl	8001df0 <timer_init>
 80027c2:	f7ff ff01 	bl	80025c8 <pwm_init>
 80027c6:	f7ff ff7b 	bl	80026c0 <drv8834_init>
 80027ca:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80027ce:	f7ff bd69 	b.w	80022a4 <i2c_0_init>

080027d2 <GPIO_Init>:
 80027d2:	b5f0      	push	{r4, r5, r6, r7, lr}
 80027d4:	bf00      	nop
 80027d6:	bf00      	nop
 80027d8:	bf00      	nop
 80027da:	bf00      	nop
 80027dc:	2300      	movs	r3, #0
 80027de:	680e      	ldr	r6, [r1, #0]
 80027e0:	461a      	mov	r2, r3
 80027e2:	2501      	movs	r5, #1
 80027e4:	4095      	lsls	r5, r2
 80027e6:	ea05 0406 	and.w	r4, r5, r6
 80027ea:	42ac      	cmp	r4, r5
 80027ec:	d131      	bne.n	8002852 <GPIO_Init+0x80>
 80027ee:	790d      	ldrb	r5, [r1, #4]
 80027f0:	1e6f      	subs	r7, r5, #1
 80027f2:	b2ff      	uxtb	r7, r7
 80027f4:	2f01      	cmp	r7, #1
 80027f6:	d81c      	bhi.n	8002832 <GPIO_Init+0x60>
 80027f8:	bf00      	nop
 80027fa:	f04f 0c03 	mov.w	ip, #3
 80027fe:	6887      	ldr	r7, [r0, #8]
 8002800:	fa0c fc03 	lsl.w	ip, ip, r3
 8002804:	ea27 070c 	bic.w	r7, r7, ip
 8002808:	6087      	str	r7, [r0, #8]
 800280a:	f891 c005 	ldrb.w	ip, [r1, #5]
 800280e:	6887      	ldr	r7, [r0, #8]
 8002810:	fa0c fc03 	lsl.w	ip, ip, r3
 8002814:	ea4c 0707 	orr.w	r7, ip, r7
 8002818:	6087      	str	r7, [r0, #8]
 800281a:	bf00      	nop
 800281c:	8887      	ldrh	r7, [r0, #4]
 800281e:	b2bf      	uxth	r7, r7
 8002820:	ea27 0404 	bic.w	r4, r7, r4
 8002824:	8084      	strh	r4, [r0, #4]
 8002826:	798c      	ldrb	r4, [r1, #6]
 8002828:	8887      	ldrh	r7, [r0, #4]
 800282a:	4094      	lsls	r4, r2
 800282c:	433c      	orrs	r4, r7
 800282e:	b2a4      	uxth	r4, r4
 8002830:	8084      	strh	r4, [r0, #4]
 8002832:	2403      	movs	r4, #3
 8002834:	6807      	ldr	r7, [r0, #0]
 8002836:	409c      	lsls	r4, r3
 8002838:	43e4      	mvns	r4, r4
 800283a:	4027      	ands	r7, r4
 800283c:	6007      	str	r7, [r0, #0]
 800283e:	6807      	ldr	r7, [r0, #0]
 8002840:	409d      	lsls	r5, r3
 8002842:	433d      	orrs	r5, r7
 8002844:	6005      	str	r5, [r0, #0]
 8002846:	68c5      	ldr	r5, [r0, #12]
 8002848:	402c      	ands	r4, r5
 800284a:	79cd      	ldrb	r5, [r1, #7]
 800284c:	409d      	lsls	r5, r3
 800284e:	432c      	orrs	r4, r5
 8002850:	60c4      	str	r4, [r0, #12]
 8002852:	3201      	adds	r2, #1
 8002854:	2a10      	cmp	r2, #16
 8002856:	f103 0302 	add.w	r3, r3, #2
 800285a:	d1c2      	bne.n	80027e2 <GPIO_Init+0x10>
 800285c:	bdf0      	pop	{r4, r5, r6, r7, pc}

0800285e <GPIO_SetBits>:
 800285e:	bf00      	nop
 8002860:	bf00      	nop
 8002862:	6181      	str	r1, [r0, #24]
 8002864:	4770      	bx	lr

08002866 <GPIO_ResetBits>:
 8002866:	bf00      	nop
 8002868:	bf00      	nop
 800286a:	8501      	strh	r1, [r0, #40]	; 0x28
 800286c:	4770      	bx	lr

0800286e <GPIO_PinAFConfig>:
 800286e:	b510      	push	{r4, lr}
 8002870:	bf00      	nop
 8002872:	bf00      	nop
 8002874:	bf00      	nop
 8002876:	f001 0307 	and.w	r3, r1, #7
 800287a:	08c9      	lsrs	r1, r1, #3
 800287c:	eb00 0081 	add.w	r0, r0, r1, lsl #2
 8002880:	009b      	lsls	r3, r3, #2
 8002882:	6a04      	ldr	r4, [r0, #32]
 8002884:	210f      	movs	r1, #15
 8002886:	4099      	lsls	r1, r3
 8002888:	ea24 0101 	bic.w	r1, r4, r1
 800288c:	6201      	str	r1, [r0, #32]
 800288e:	6a01      	ldr	r1, [r0, #32]
 8002890:	fa02 f303 	lsl.w	r3, r2, r3
 8002894:	430b      	orrs	r3, r1
 8002896:	6203      	str	r3, [r0, #32]
 8002898:	bd10      	pop	{r4, pc}
	...

0800289c <gpio_init>:
 800289c:	e92d 41f3 	stmdb	sp!, {r0, r1, r4, r5, r6, r7, r8, lr}
 80028a0:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 80028a4:	2101      	movs	r1, #1
 80028a6:	f7ff f987 	bl	8001bb8 <RCC_AHBPeriphClockCmd>
 80028aa:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 80028ae:	2101      	movs	r1, #1
 80028b0:	f7ff f982 	bl	8001bb8 <RCC_AHBPeriphClockCmd>
 80028b4:	f44f 2000 	mov.w	r0, #524288	; 0x80000
 80028b8:	2101      	movs	r1, #1
 80028ba:	f7ff f97d 	bl	8001bb8 <RCC_AHBPeriphClockCmd>
 80028be:	2400      	movs	r4, #0
 80028c0:	2503      	movs	r5, #3
 80028c2:	2601      	movs	r6, #1
 80028c4:	f44f 4800 	mov.w	r8, #32768	; 0x8000
 80028c8:	4669      	mov	r1, sp
 80028ca:	4825      	ldr	r0, [pc, #148]	; (8002960 <gpio_init+0xc4>)
 80028cc:	f8cd 8000 	str.w	r8, [sp]
 80028d0:	f88d 6004 	strb.w	r6, [sp, #4]
 80028d4:	f88d 4006 	strb.w	r4, [sp, #6]
 80028d8:	f88d 5005 	strb.w	r5, [sp, #5]
 80028dc:	f88d 4007 	strb.w	r4, [sp, #7]
 80028e0:	f7ff ff77 	bl	80027d2 <GPIO_Init>
 80028e4:	f44f 5300 	mov.w	r3, #8192	; 0x2000
 80028e8:	4669      	mov	r1, sp
 80028ea:	481e      	ldr	r0, [pc, #120]	; (8002964 <gpio_init+0xc8>)
 80028ec:	9300      	str	r3, [sp, #0]
 80028ee:	f88d 6004 	strb.w	r6, [sp, #4]
 80028f2:	f88d 4006 	strb.w	r4, [sp, #6]
 80028f6:	f88d 5005 	strb.w	r5, [sp, #5]
 80028fa:	f88d 4007 	strb.w	r4, [sp, #7]
 80028fe:	f7ff ff68 	bl	80027d2 <GPIO_Init>
 8002902:	f44f 7300 	mov.w	r3, #512	; 0x200
 8002906:	4669      	mov	r1, sp
 8002908:	4815      	ldr	r0, [pc, #84]	; (8002960 <gpio_init+0xc4>)
 800290a:	9300      	str	r3, [sp, #0]
 800290c:	4f16      	ldr	r7, [pc, #88]	; (8002968 <gpio_init+0xcc>)
 800290e:	f88d 4004 	strb.w	r4, [sp, #4]
 8002912:	f88d 5005 	strb.w	r5, [sp, #5]
 8002916:	f88d 4007 	strb.w	r4, [sp, #7]
 800291a:	f7ff ff5a 	bl	80027d2 <GPIO_Init>
 800291e:	f44f 6380 	mov.w	r3, #1024	; 0x400
 8002922:	9300      	str	r3, [sp, #0]
 8002924:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8002928:	2302      	movs	r3, #2
 800292a:	4669      	mov	r1, sp
 800292c:	f88d 3007 	strb.w	r3, [sp, #7]
 8002930:	603c      	str	r4, [r7, #0]
 8002932:	f88d 4004 	strb.w	r4, [sp, #4]
 8002936:	f88d 5005 	strb.w	r5, [sp, #5]
 800293a:	f7ff ff4a 	bl	80027d2 <GPIO_Init>
 800293e:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8002942:	f44f 5200 	mov.w	r2, #8192	; 0x2000
 8002946:	8a1b      	ldrh	r3, [r3, #16]
 8002948:	f413 6f80 	tst.w	r3, #1024	; 0x400
 800294c:	4b04      	ldr	r3, [pc, #16]	; (8002960 <gpio_init+0xc4>)
 800294e:	bf18      	it	ne
 8002950:	603e      	strne	r6, [r7, #0]
 8002952:	f8c3 8018 	str.w	r8, [r3, #24]
 8002956:	f8c3 2418 	str.w	r2, [r3, #1048]	; 0x418
 800295a:	b002      	add	sp, #8
 800295c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8002960:	48000400 	.word	0x48000400
 8002964:	48000800 	.word	0x48000800
 8002968:	200012d0 	.word	0x200012d0

0800296c <led_on>:
 800296c:	0402      	lsls	r2, r0, #16
 800296e:	d503      	bpl.n	8002978 <led_on+0xc>
 8002970:	4b05      	ldr	r3, [pc, #20]	; (8002988 <led_on+0x1c>)
 8002972:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 8002976:	619a      	str	r2, [r3, #24]
 8002978:	0483      	lsls	r3, r0, #18
 800297a:	d503      	bpl.n	8002984 <led_on+0x18>
 800297c:	4b03      	ldr	r3, [pc, #12]	; (800298c <led_on+0x20>)
 800297e:	f44f 5200 	mov.w	r2, #8192	; 0x2000
 8002982:	851a      	strh	r2, [r3, #40]	; 0x28
 8002984:	4770      	bx	lr
 8002986:	bf00      	nop
 8002988:	48000400 	.word	0x48000400
 800298c:	48000800 	.word	0x48000800

08002990 <led_off>:
 8002990:	0403      	lsls	r3, r0, #16
 8002992:	d503      	bpl.n	800299c <led_off+0xc>
 8002994:	4b05      	ldr	r3, [pc, #20]	; (80029ac <led_off+0x1c>)
 8002996:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 800299a:	851a      	strh	r2, [r3, #40]	; 0x28
 800299c:	0481      	lsls	r1, r0, #18
 800299e:	d503      	bpl.n	80029a8 <led_off+0x18>
 80029a0:	4b03      	ldr	r3, [pc, #12]	; (80029b0 <led_off+0x20>)
 80029a2:	f44f 5200 	mov.w	r2, #8192	; 0x2000
 80029a6:	619a      	str	r2, [r3, #24]
 80029a8:	4770      	bx	lr
 80029aa:	bf00      	nop
 80029ac:	48000400 	.word	0x48000400
 80029b0:	48000800 	.word	0x48000800

080029b4 <get_key>:
 80029b4:	4b02      	ldr	r3, [pc, #8]	; (80029c0 <get_key+0xc>)
 80029b6:	8a18      	ldrh	r0, [r3, #16]
 80029b8:	43c0      	mvns	r0, r0
 80029ba:	f400 7000 	and.w	r0, r0, #512	; 0x200
 80029be:	4770      	bx	lr
 80029c0:	48000400 	.word	0x48000400

080029c4 <get_mode_jumper>:
 80029c4:	4b01      	ldr	r3, [pc, #4]	; (80029cc <get_mode_jumper+0x8>)
 80029c6:	6818      	ldr	r0, [r3, #0]
 80029c8:	4770      	bx	lr
 80029ca:	bf00      	nop
 80029cc:	200012d0 	.word	0x200012d0

080029d0 <Default_Handler>:
 80029d0:	4668      	mov	r0, sp
 80029d2:	f020 0107 	bic.w	r1, r0, #7
 80029d6:	468d      	mov	sp, r1
 80029d8:	bf00      	nop
 80029da:	e7fd      	b.n	80029d8 <Default_Handler+0x8>

080029dc <HardFault_Handler>:
 80029dc:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 80029e0:	f7ff ffc4 	bl	800296c <led_on>
 80029e4:	4b06      	ldr	r3, [pc, #24]	; (8002a00 <HardFault_Handler+0x24>)
 80029e6:	3b01      	subs	r3, #1
 80029e8:	d001      	beq.n	80029ee <HardFault_Handler+0x12>
 80029ea:	bf00      	nop
 80029ec:	e7fb      	b.n	80029e6 <HardFault_Handler+0xa>
 80029ee:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 80029f2:	f7ff ffcd 	bl	8002990 <led_off>
 80029f6:	4b02      	ldr	r3, [pc, #8]	; (8002a00 <HardFault_Handler+0x24>)
 80029f8:	3b01      	subs	r3, #1
 80029fa:	d0ef      	beq.n	80029dc <HardFault_Handler>
 80029fc:	bf00      	nop
 80029fe:	e7fb      	b.n	80029f8 <HardFault_Handler+0x1c>
 8002a00:	00989681 	.word	0x00989681

08002a04 <_reset_init>:
 8002a04:	4a0e      	ldr	r2, [pc, #56]	; (8002a40 <_reset_init+0x3c>)
 8002a06:	480f      	ldr	r0, [pc, #60]	; (8002a44 <_reset_init+0x40>)
 8002a08:	1a80      	subs	r0, r0, r2
 8002a0a:	1080      	asrs	r0, r0, #2
 8002a0c:	2300      	movs	r3, #0
 8002a0e:	4283      	cmp	r3, r0
 8002a10:	d006      	beq.n	8002a20 <_reset_init+0x1c>
 8002a12:	490d      	ldr	r1, [pc, #52]	; (8002a48 <_reset_init+0x44>)
 8002a14:	f851 1023 	ldr.w	r1, [r1, r3, lsl #2]
 8002a18:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
 8002a1c:	3301      	adds	r3, #1
 8002a1e:	e7f6      	b.n	8002a0e <_reset_init+0xa>
 8002a20:	4b0a      	ldr	r3, [pc, #40]	; (8002a4c <_reset_init+0x48>)
 8002a22:	f8d3 2088 	ldr.w	r2, [r3, #136]	; 0x88
 8002a26:	f442 0270 	orr.w	r2, r2, #15728640	; 0xf00000
 8002a2a:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
 8002a2e:	f503 730c 	add.w	r3, r3, #560	; 0x230
 8002a32:	685a      	ldr	r2, [r3, #4]
 8002a34:	f022 4240 	bic.w	r2, r2, #3221225472	; 0xc0000000
 8002a38:	605a      	str	r2, [r3, #4]
 8002a3a:	f7fe bf1d 	b.w	8001878 <main>
 8002a3e:	bf00      	nop
 8002a40:	20000000 	.word	0x20000000
 8002a44:	20000154 	.word	0x20000154
 8002a48:	08002b00 	.word	0x08002b00
 8002a4c:	e000ed00 	.word	0xe000ed00

08002a50 <_init>:
 8002a50:	e1a0c00d 	mov	ip, sp
 8002a54:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
 8002a58:	e24cb004 	sub	fp, ip, #4
 8002a5c:	e24bd028 	sub	sp, fp, #40	; 0x28
 8002a60:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
 8002a64:	e12fff1e 	bx	lr

08002a68 <_fini>:
 8002a68:	e1a0c00d 	mov	ip, sp
 8002a6c:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
 8002a70:	e24cb004 	sub	fp, ip, #4
 8002a74:	e24bd028 	sub	sp, fp, #40	; 0x28
 8002a78:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
 8002a7c:	e12fff1e 	bx	lr
 8002a80:	69647473 	.word	0x69647473
 8002a84:	6e69206f 	.word	0x6e69206f
 8002a88:	64207469 	.word	0x64207469
 8002a8c:	0a656e6f 	.word	0x0a656e6f
 8002a90:	00          	.byte	0x00
 8002a91:	65          	.byte	0x65
 8002a92:	7272      	.short	0x7272
 8002a94:	6320726f 	.word	0x6320726f
 8002a98:	2065646f 	.word	0x2065646f
 8002a9c:	253a7525 	.word	0x253a7525
 8002aa0:	0a75      	.short	0x0a75
 8002aa2:	00          	.byte	0x00
 8002aa3:	0a          	.byte	0x0a
 8002aa4:	636c6577 	.word	0x636c6577
 8002aa8:	20656d6f 	.word	0x20656d6f
 8002aac:	53206f74 	.word	0x53206f74
 8002ab0:	68757a75 	.word	0x68757a75
 8002ab4:	20534f61 	.word	0x20534f61
 8002ab8:	205e5f5e 	.word	0x205e5f5e
 8002abc:	2e302e32 	.word	0x2e302e32
 8002ac0:	55420a36 	.word	0x55420a36
 8002ac4:	20444c49 	.word	0x20444c49
 8002ac8:	20727041 	.word	0x20727041
 8002acc:	32203032 	.word	0x32203032
 8002ad0:	20363130 	.word	0x20363130
 8002ad4:	343a3831 	.word	0x343a3831
 8002ad8:	38343a33 	.word	0x38343a33
 8002adc:	6f6d000a 	.word	0x6f6d000a
 8002ae0:	3d206564 	.word	0x3d206564
 8002ae4:	0a752520 	.word	0x0a752520
 8002ae8:	73797300 	.word	0x73797300
 8002aec:	206d6574 	.word	0x206d6574
 8002af0:	726f6261 	.word	0x726f6261
 8002af4:	0a646574 	.word	0x0a646574
 8002af8:	00000000 	.word	0x00000000

08002afc <__EH_FRAME_BEGIN__>:
 8002afc:	00000000                                ....
