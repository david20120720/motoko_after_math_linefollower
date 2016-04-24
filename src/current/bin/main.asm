
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
 80001aa:	f002 fa5f 	bl	800266c <sleep>
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
 8000282:	f002 f9e1 	bl	8002648 <sys_tick_init>
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
 80003ee:	f001 ff03 	bl	80021f8 <uart_write>
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
 80005c4:	08002ba8 	.word	0x08002ba8

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
 800079a:	f001 feba 	bl	8002512 <i2c_read_reg>
 800079e:	2129      	movs	r1, #41	; 0x29
 80007a0:	4605      	mov	r5, r0
 80007a2:	20d4      	movs	r0, #212	; 0xd4
 80007a4:	f001 feb5 	bl	8002512 <i2c_read_reg>
 80007a8:	4c38      	ldr	r4, [pc, #224]	; (800088c <lsm9ds0_read+0xf8>)
 80007aa:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 80007ae:	81a0      	strh	r0, [r4, #12]
 80007b0:	212a      	movs	r1, #42	; 0x2a
 80007b2:	20d4      	movs	r0, #212	; 0xd4
 80007b4:	f001 fead 	bl	8002512 <i2c_read_reg>
 80007b8:	212b      	movs	r1, #43	; 0x2b
 80007ba:	4605      	mov	r5, r0
 80007bc:	20d4      	movs	r0, #212	; 0xd4
 80007be:	f001 fea8 	bl	8002512 <i2c_read_reg>
 80007c2:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 80007c6:	81e0      	strh	r0, [r4, #14]
 80007c8:	212c      	movs	r1, #44	; 0x2c
 80007ca:	20d4      	movs	r0, #212	; 0xd4
 80007cc:	f001 fea1 	bl	8002512 <i2c_read_reg>
 80007d0:	212d      	movs	r1, #45	; 0x2d
 80007d2:	4605      	mov	r5, r0
 80007d4:	20d4      	movs	r0, #212	; 0xd4
 80007d6:	f001 fe9c 	bl	8002512 <i2c_read_reg>
 80007da:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 80007de:	8220      	strh	r0, [r4, #16]
 80007e0:	2108      	movs	r1, #8
 80007e2:	203c      	movs	r0, #60	; 0x3c
 80007e4:	f001 fe95 	bl	8002512 <i2c_read_reg>
 80007e8:	2109      	movs	r1, #9
 80007ea:	4605      	mov	r5, r0
 80007ec:	203c      	movs	r0, #60	; 0x3c
 80007ee:	f001 fe90 	bl	8002512 <i2c_read_reg>
 80007f2:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 80007f6:	80e0      	strh	r0, [r4, #6]
 80007f8:	210a      	movs	r1, #10
 80007fa:	203c      	movs	r0, #60	; 0x3c
 80007fc:	f001 fe89 	bl	8002512 <i2c_read_reg>
 8000800:	210b      	movs	r1, #11
 8000802:	4605      	mov	r5, r0
 8000804:	203c      	movs	r0, #60	; 0x3c
 8000806:	f001 fe84 	bl	8002512 <i2c_read_reg>
 800080a:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 800080e:	8120      	strh	r0, [r4, #8]
 8000810:	210c      	movs	r1, #12
 8000812:	203c      	movs	r0, #60	; 0x3c
 8000814:	f001 fe7d 	bl	8002512 <i2c_read_reg>
 8000818:	210d      	movs	r1, #13
 800081a:	4605      	mov	r5, r0
 800081c:	203c      	movs	r0, #60	; 0x3c
 800081e:	f001 fe78 	bl	8002512 <i2c_read_reg>
 8000822:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000826:	8160      	strh	r0, [r4, #10]
 8000828:	2128      	movs	r1, #40	; 0x28
 800082a:	203c      	movs	r0, #60	; 0x3c
 800082c:	f001 fe71 	bl	8002512 <i2c_read_reg>
 8000830:	2129      	movs	r1, #41	; 0x29
 8000832:	4605      	mov	r5, r0
 8000834:	203c      	movs	r0, #60	; 0x3c
 8000836:	f001 fe6c 	bl	8002512 <i2c_read_reg>
 800083a:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 800083e:	8020      	strh	r0, [r4, #0]
 8000840:	212a      	movs	r1, #42	; 0x2a
 8000842:	203c      	movs	r0, #60	; 0x3c
 8000844:	f001 fe65 	bl	8002512 <i2c_read_reg>
 8000848:	212b      	movs	r1, #43	; 0x2b
 800084a:	4605      	mov	r5, r0
 800084c:	203c      	movs	r0, #60	; 0x3c
 800084e:	f001 fe60 	bl	8002512 <i2c_read_reg>
 8000852:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000856:	8060      	strh	r0, [r4, #2]
 8000858:	212c      	movs	r1, #44	; 0x2c
 800085a:	203c      	movs	r0, #60	; 0x3c
 800085c:	f001 fe59 	bl	8002512 <i2c_read_reg>
 8000860:	212d      	movs	r1, #45	; 0x2d
 8000862:	4605      	mov	r5, r0
 8000864:	203c      	movs	r0, #60	; 0x3c
 8000866:	f001 fe54 	bl	8002512 <i2c_read_reg>
 800086a:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 800086e:	80a0      	strh	r0, [r4, #4]
 8000870:	2105      	movs	r1, #5
 8000872:	203c      	movs	r0, #60	; 0x3c
 8000874:	f001 fe4d 	bl	8002512 <i2c_read_reg>
 8000878:	2106      	movs	r1, #6
 800087a:	4605      	mov	r5, r0
 800087c:	203c      	movs	r0, #60	; 0x3c
 800087e:	f001 fe48 	bl	8002512 <i2c_read_reg>
 8000882:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000886:	8320      	strh	r0, [r4, #24]
 8000888:	bd38      	pop	{r3, r4, r5, pc}
 800088a:	bf00      	nop
 800088c:	2000032c 	.word	0x2000032c

08000890 <lsm9ds0_init>:
 8000890:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8000894:	4d34      	ldr	r5, [pc, #208]	; (8000968 <lsm9ds0_init+0xd8>)
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
 80008b6:	f001 fe2c 	bl	8002512 <i2c_read_reg>
 80008ba:	28d4      	cmp	r0, #212	; 0xd4
 80008bc:	4606      	mov	r6, r0
 80008be:	d14e      	bne.n	800095e <lsm9ds0_init+0xce>
 80008c0:	203c      	movs	r0, #60	; 0x3c
 80008c2:	210f      	movs	r1, #15
 80008c4:	f001 fe25 	bl	8002512 <i2c_read_reg>
 80008c8:	2849      	cmp	r0, #73	; 0x49
 80008ca:	bf18      	it	ne
 80008cc:	2602      	movne	r6, #2
 80008ce:	d147      	bne.n	8000960 <lsm9ds0_init+0xd0>
 80008d0:	4630      	mov	r0, r6
 80008d2:	2120      	movs	r1, #32
 80008d4:	22ff      	movs	r2, #255	; 0xff
 80008d6:	f001 fe09 	bl	80024ec <i2c_write_reg>
 80008da:	4630      	mov	r0, r6
 80008dc:	2123      	movs	r1, #35	; 0x23
 80008de:	2218      	movs	r2, #24
 80008e0:	f001 fe04 	bl	80024ec <i2c_write_reg>
 80008e4:	203c      	movs	r0, #60	; 0x3c
 80008e6:	211f      	movs	r1, #31
 80008e8:	4622      	mov	r2, r4
 80008ea:	f001 fdff 	bl	80024ec <i2c_write_reg>
 80008ee:	203c      	movs	r0, #60	; 0x3c
 80008f0:	2120      	movs	r1, #32
 80008f2:	2267      	movs	r2, #103	; 0x67
 80008f4:	f001 fdfa 	bl	80024ec <i2c_write_reg>
 80008f8:	203c      	movs	r0, #60	; 0x3c
 80008fa:	2121      	movs	r1, #33	; 0x21
 80008fc:	4622      	mov	r2, r4
 80008fe:	f001 fdf5 	bl	80024ec <i2c_write_reg>
 8000902:	203c      	movs	r0, #60	; 0x3c
 8000904:	2124      	movs	r1, #36	; 0x24
 8000906:	22f4      	movs	r2, #244	; 0xf4
 8000908:	f001 fdf0 	bl	80024ec <i2c_write_reg>
 800090c:	203c      	movs	r0, #60	; 0x3c
 800090e:	2125      	movs	r1, #37	; 0x25
 8000910:	4622      	mov	r2, r4
 8000912:	f001 fdeb 	bl	80024ec <i2c_write_reg>
 8000916:	203c      	movs	r0, #60	; 0x3c
 8000918:	2126      	movs	r1, #38	; 0x26
 800091a:	2280      	movs	r2, #128	; 0x80
 800091c:	f001 fde6 	bl	80024ec <i2c_write_reg>
 8000920:	f7ff ff38 	bl	8000794 <lsm9ds0_read>
 8000924:	2664      	movs	r6, #100	; 0x64
 8000926:	4627      	mov	r7, r4
 8000928:	46a0      	mov	r8, r4
 800092a:	f7ff ff33 	bl	8000794 <lsm9ds0_read>
 800092e:	f9b5 200c 	ldrsh.w	r2, [r5, #12]
 8000932:	4b0d      	ldr	r3, [pc, #52]	; (8000968 <lsm9ds0_init+0xd8>)
 8000934:	4490      	add	r8, r2
 8000936:	f9b5 200e 	ldrsh.w	r2, [r5, #14]
 800093a:	4417      	add	r7, r2
 800093c:	f9b5 2010 	ldrsh.w	r2, [r5, #16]
 8000940:	3e01      	subs	r6, #1
 8000942:	4414      	add	r4, r2
 8000944:	d1f1      	bne.n	800092a <lsm9ds0_init+0x9a>
 8000946:	2264      	movs	r2, #100	; 0x64
 8000948:	fb98 f8f2 	sdiv	r8, r8, r2
 800094c:	fb97 f7f2 	sdiv	r7, r7, r2
 8000950:	fb94 f4f2 	sdiv	r4, r4, r2
 8000954:	f8a3 8012 	strh.w	r8, [r3, #18]
 8000958:	829f      	strh	r7, [r3, #20]
 800095a:	82dc      	strh	r4, [r3, #22]
 800095c:	e000      	b.n	8000960 <lsm9ds0_init+0xd0>
 800095e:	2601      	movs	r6, #1
 8000960:	4630      	mov	r0, r6
 8000962:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8000966:	bf00      	nop
 8000968:	2000032c 	.word	0x2000032c

0800096c <TIM2_IRQHandler>:
 800096c:	4b21      	ldr	r3, [pc, #132]	; (80009f4 <TIM2_IRQHandler+0x88>)
 800096e:	4a22      	ldr	r2, [pc, #136]	; (80009f8 <TIM2_IRQHandler+0x8c>)
 8000970:	6819      	ldr	r1, [r3, #0]
 8000972:	2901      	cmp	r1, #1
 8000974:	b510      	push	{r4, lr}
 8000976:	d011      	beq.n	800099c <TIM2_IRQHandler+0x30>
 8000978:	d306      	bcc.n	8000988 <TIM2_IRQHandler+0x1c>
 800097a:	2902      	cmp	r1, #2
 800097c:	d113      	bne.n	80009a6 <TIM2_IRQHandler+0x3a>
 800097e:	f44f 6180 	mov.w	r1, #1024	; 0x400
 8000982:	8511      	strh	r1, [r2, #40]	; 0x28
 8000984:	2204      	movs	r2, #4
 8000986:	e023      	b.n	80009d0 <TIM2_IRQHandler+0x64>
 8000988:	f44f 7180 	mov.w	r1, #256	; 0x100
 800098c:	8511      	strh	r1, [r2, #40]	; 0x28
 800098e:	f44f 6180 	mov.w	r1, #1024	; 0x400
 8000992:	6191      	str	r1, [r2, #24]
 8000994:	2201      	movs	r2, #1
 8000996:	601a      	str	r2, [r3, #0]
 8000998:	609a      	str	r2, [r3, #8]
 800099a:	e023      	b.n	80009e4 <TIM2_IRQHandler+0x78>
 800099c:	f44f 7180 	mov.w	r1, #256	; 0x100
 80009a0:	6191      	str	r1, [r2, #24]
 80009a2:	2202      	movs	r2, #2
 80009a4:	e014      	b.n	80009d0 <TIM2_IRQHandler+0x64>
 80009a6:	f011 0f01 	tst.w	r1, #1
 80009aa:	4814      	ldr	r0, [pc, #80]	; (80009fc <TIM2_IRQHandler+0x90>)
 80009ac:	f101 0401 	add.w	r4, r1, #1
 80009b0:	d010      	beq.n	80009d4 <TIM2_IRQHandler+0x68>
 80009b2:	3904      	subs	r1, #4
 80009b4:	f021 0101 	bic.w	r1, r1, #1
 80009b8:	6c00      	ldr	r0, [r0, #64]	; 0x40
 80009ba:	4419      	add	r1, r3
 80009bc:	f5b4 7f82 	cmp.w	r4, #260	; 0x104
 80009c0:	8288      	strh	r0, [r1, #20]
 80009c2:	f44f 7180 	mov.w	r1, #256	; 0x100
 80009c6:	8511      	strh	r1, [r2, #40]	; 0x28
 80009c8:	d201      	bcs.n	80009ce <TIM2_IRQHandler+0x62>
 80009ca:	601c      	str	r4, [r3, #0]
 80009cc:	e00a      	b.n	80009e4 <TIM2_IRQHandler+0x78>
 80009ce:	2200      	movs	r2, #0
 80009d0:	601a      	str	r2, [r3, #0]
 80009d2:	e007      	b.n	80009e4 <TIM2_IRQHandler+0x78>
 80009d4:	f44f 7180 	mov.w	r1, #256	; 0x100
 80009d8:	6191      	str	r1, [r2, #24]
 80009da:	601c      	str	r4, [r3, #0]
 80009dc:	6883      	ldr	r3, [r0, #8]
 80009de:	f043 0304 	orr.w	r3, r3, #4
 80009e2:	6083      	str	r3, [r0, #8]
 80009e4:	f04f 4080 	mov.w	r0, #1073741824	; 0x40000000
 80009e8:	2101      	movs	r1, #1
 80009ea:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80009ee:	f001 ba8e 	b.w	8001f0e <TIM_ClearITPendingBit>
 80009f2:	bf00      	nop
 80009f4:	200003e0 	.word	0x200003e0
 80009f8:	48000400 	.word	0x48000400
 80009fc:	50000500 	.word	0x50000500

08000a00 <rgb_i2c_delay>:
 8000a00:	bf00      	nop
 8000a02:	bf00      	nop
 8000a04:	bf00      	nop
 8000a06:	bf00      	nop
 8000a08:	4770      	bx	lr
	...

08000a0c <RGBSetLowSDA>:
 8000a0c:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 8000a0e:	4f15      	ldr	r7, [pc, #84]	; (8000a64 <RGBSetLowSDA+0x58>)
 8000a10:	783b      	ldrb	r3, [r7, #0]
 8000a12:	2401      	movs	r4, #1
 8000a14:	2603      	movs	r6, #3
 8000a16:	2500      	movs	r5, #0
 8000a18:	4669      	mov	r1, sp
 8000a1a:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000a1e:	9300      	str	r3, [sp, #0]
 8000a20:	f88d 5007 	strb.w	r5, [sp, #7]
 8000a24:	f88d 4004 	strb.w	r4, [sp, #4]
 8000a28:	f88d 6005 	strb.w	r6, [sp, #5]
 8000a2c:	f88d 4006 	strb.w	r4, [sp, #6]
 8000a30:	f001 ff63 	bl	80028fa <GPIO_Init>
 8000a34:	783a      	ldrb	r2, [r7, #0]
 8000a36:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000a3a:	4669      	mov	r1, sp
 8000a3c:	851a      	strh	r2, [r3, #40]	; 0x28
 8000a3e:	f88d 5007 	strb.w	r5, [sp, #7]
 8000a42:	4d09      	ldr	r5, [pc, #36]	; (8000a68 <RGBSetLowSDA+0x5c>)
 8000a44:	9400      	str	r4, [sp, #0]
 8000a46:	4628      	mov	r0, r5
 8000a48:	f88d 4004 	strb.w	r4, [sp, #4]
 8000a4c:	f88d 6005 	strb.w	r6, [sp, #5]
 8000a50:	f88d 4006 	strb.w	r4, [sp, #6]
 8000a54:	f001 ff51 	bl	80028fa <GPIO_Init>
 8000a58:	852c      	strh	r4, [r5, #40]	; 0x28
 8000a5a:	f7ff ffd1 	bl	8000a00 <rgb_i2c_delay>
 8000a5e:	b003      	add	sp, #12
 8000a60:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000a62:	bf00      	nop
 8000a64:	200009f4 	.word	0x200009f4
 8000a68:	48000400 	.word	0x48000400

08000a6c <RGBSetHighSDA>:
 8000a6c:	b573      	push	{r0, r1, r4, r5, r6, lr}
 8000a6e:	4d13      	ldr	r5, [pc, #76]	; (8000abc <RGBSetHighSDA+0x50>)
 8000a70:	782b      	ldrb	r3, [r5, #0]
 8000a72:	2400      	movs	r4, #0
 8000a74:	2603      	movs	r6, #3
 8000a76:	4669      	mov	r1, sp
 8000a78:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000a7c:	9300      	str	r3, [sp, #0]
 8000a7e:	f88d 4004 	strb.w	r4, [sp, #4]
 8000a82:	f88d 4007 	strb.w	r4, [sp, #7]
 8000a86:	f88d 6005 	strb.w	r6, [sp, #5]
 8000a8a:	f001 ff36 	bl	80028fa <GPIO_Init>
 8000a8e:	782a      	ldrb	r2, [r5, #0]
 8000a90:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000a94:	2501      	movs	r5, #1
 8000a96:	619a      	str	r2, [r3, #24]
 8000a98:	f88d 4004 	strb.w	r4, [sp, #4]
 8000a9c:	f88d 4007 	strb.w	r4, [sp, #7]
 8000aa0:	4c07      	ldr	r4, [pc, #28]	; (8000ac0 <RGBSetHighSDA+0x54>)
 8000aa2:	9500      	str	r5, [sp, #0]
 8000aa4:	4620      	mov	r0, r4
 8000aa6:	4669      	mov	r1, sp
 8000aa8:	f88d 6005 	strb.w	r6, [sp, #5]
 8000aac:	f001 ff25 	bl	80028fa <GPIO_Init>
 8000ab0:	61a5      	str	r5, [r4, #24]
 8000ab2:	f7ff ffa5 	bl	8000a00 <rgb_i2c_delay>
 8000ab6:	b002      	add	sp, #8
 8000ab8:	bd70      	pop	{r4, r5, r6, pc}
 8000aba:	bf00      	nop
 8000abc:	200009f4 	.word	0x200009f4
 8000ac0:	48000400 	.word	0x48000400

08000ac4 <RGBSetLowSCL>:
 8000ac4:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000ac8:	f44f 7280 	mov.w	r2, #256	; 0x100
 8000acc:	851a      	strh	r2, [r3, #40]	; 0x28
 8000ace:	f7ff bf97 	b.w	8000a00 <rgb_i2c_delay>

08000ad2 <RGBSetHighSCL>:
 8000ad2:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000ad6:	f44f 7280 	mov.w	r2, #256	; 0x100
 8000ada:	619a      	str	r2, [r3, #24]
 8000adc:	f7ff bf90 	b.w	8000a00 <rgb_i2c_delay>

08000ae0 <rgb_i2c_init>:
 8000ae0:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 8000ae2:	4f1f      	ldr	r7, [pc, #124]	; (8000b60 <rgb_i2c_init+0x80>)
 8000ae4:	2400      	movs	r4, #0
 8000ae6:	2501      	movs	r5, #1
 8000ae8:	2603      	movs	r6, #3
 8000aea:	f44f 7380 	mov.w	r3, #256	; 0x100
 8000aee:	4669      	mov	r1, sp
 8000af0:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000af4:	9300      	str	r3, [sp, #0]
 8000af6:	f88d 4006 	strb.w	r4, [sp, #6]
 8000afa:	f88d 4007 	strb.w	r4, [sp, #7]
 8000afe:	f88d 5004 	strb.w	r5, [sp, #4]
 8000b02:	f88d 6005 	strb.w	r6, [sp, #5]
 8000b06:	f001 fef8 	bl	80028fa <GPIO_Init>
 8000b0a:	783b      	ldrb	r3, [r7, #0]
 8000b0c:	f88d 4004 	strb.w	r4, [sp, #4]
 8000b10:	4669      	mov	r1, sp
 8000b12:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000b16:	9300      	str	r3, [sp, #0]
 8000b18:	f88d 4007 	strb.w	r4, [sp, #7]
 8000b1c:	f88d 6005 	strb.w	r6, [sp, #5]
 8000b20:	f001 feeb 	bl	80028fa <GPIO_Init>
 8000b24:	7839      	ldrb	r1, [r7, #0]
 8000b26:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000b2a:	f001 ff2c 	bl	8002986 <GPIO_SetBits>
 8000b2e:	f88d 4004 	strb.w	r4, [sp, #4]
 8000b32:	f88d 4007 	strb.w	r4, [sp, #7]
 8000b36:	4c0b      	ldr	r4, [pc, #44]	; (8000b64 <rgb_i2c_init+0x84>)
 8000b38:	9500      	str	r5, [sp, #0]
 8000b3a:	4620      	mov	r0, r4
 8000b3c:	4669      	mov	r1, sp
 8000b3e:	f88d 6005 	strb.w	r6, [sp, #5]
 8000b42:	f001 feda 	bl	80028fa <GPIO_Init>
 8000b46:	4620      	mov	r0, r4
 8000b48:	4629      	mov	r1, r5
 8000b4a:	f001 ff1c 	bl	8002986 <GPIO_SetBits>
 8000b4e:	f7ff ffc0 	bl	8000ad2 <RGBSetHighSCL>
 8000b52:	f7ff ff5b 	bl	8000a0c <RGBSetLowSDA>
 8000b56:	f7ff ff89 	bl	8000a6c <RGBSetHighSDA>
 8000b5a:	b003      	add	sp, #12
 8000b5c:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000b5e:	bf00      	nop
 8000b60:	200009f4 	.word	0x200009f4
 8000b64:	48000400 	.word	0x48000400

08000b68 <rgb_i2cStart>:
 8000b68:	b508      	push	{r3, lr}
 8000b6a:	f7ff ffb2 	bl	8000ad2 <RGBSetHighSCL>
 8000b6e:	f7ff ff7d 	bl	8000a6c <RGBSetHighSDA>
 8000b72:	f7ff ffae 	bl	8000ad2 <RGBSetHighSCL>
 8000b76:	f7ff ff49 	bl	8000a0c <RGBSetLowSDA>
 8000b7a:	f7ff ffa3 	bl	8000ac4 <RGBSetLowSCL>
 8000b7e:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8000b82:	f7ff bf73 	b.w	8000a6c <RGBSetHighSDA>

08000b86 <rgb_i2cStop>:
 8000b86:	b508      	push	{r3, lr}
 8000b88:	f7ff ff9c 	bl	8000ac4 <RGBSetLowSCL>
 8000b8c:	f7ff ff3e 	bl	8000a0c <RGBSetLowSDA>
 8000b90:	f7ff ff9f 	bl	8000ad2 <RGBSetHighSCL>
 8000b94:	f7ff ff3a 	bl	8000a0c <RGBSetLowSDA>
 8000b98:	f7ff ff9b 	bl	8000ad2 <RGBSetHighSCL>
 8000b9c:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8000ba0:	f7ff bf64 	b.w	8000a6c <RGBSetHighSDA>

08000ba4 <rgb_i2cWrite>:
 8000ba4:	b538      	push	{r3, r4, r5, lr}
 8000ba6:	4604      	mov	r4, r0
 8000ba8:	2508      	movs	r5, #8
 8000baa:	f7ff ff8b 	bl	8000ac4 <RGBSetLowSCL>
 8000bae:	0623      	lsls	r3, r4, #24
 8000bb0:	d502      	bpl.n	8000bb8 <rgb_i2cWrite+0x14>
 8000bb2:	f7ff ff5b 	bl	8000a6c <RGBSetHighSDA>
 8000bb6:	e001      	b.n	8000bbc <rgb_i2cWrite+0x18>
 8000bb8:	f7ff ff28 	bl	8000a0c <RGBSetLowSDA>
 8000bbc:	3d01      	subs	r5, #1
 8000bbe:	f7ff ff88 	bl	8000ad2 <RGBSetHighSCL>
 8000bc2:	0064      	lsls	r4, r4, #1
 8000bc4:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 8000bc8:	b2e4      	uxtb	r4, r4
 8000bca:	d1ee      	bne.n	8000baa <rgb_i2cWrite+0x6>
 8000bcc:	f7ff ff7a 	bl	8000ac4 <RGBSetLowSCL>
 8000bd0:	f7ff ff4c 	bl	8000a6c <RGBSetHighSDA>
 8000bd4:	f7ff ff7d 	bl	8000ad2 <RGBSetHighSCL>
 8000bd8:	f7ff ff74 	bl	8000ac4 <RGBSetLowSCL>
 8000bdc:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8000be0:	f7ff bf0e 	b.w	8000a00 <rgb_i2c_delay>

08000be4 <rgb_i2cRead>:
 8000be4:	b570      	push	{r4, r5, r6, lr}
 8000be6:	2300      	movs	r3, #0
 8000be8:	4606      	mov	r6, r0
 8000bea:	460c      	mov	r4, r1
 8000bec:	2200      	movs	r2, #0
 8000bee:	54e2      	strb	r2, [r4, r3]
 8000bf0:	3301      	adds	r3, #1
 8000bf2:	2b09      	cmp	r3, #9
 8000bf4:	d1fa      	bne.n	8000bec <rgb_i2cRead+0x8>
 8000bf6:	f7ff ff65 	bl	8000ac4 <RGBSetLowSCL>
 8000bfa:	f7ff ff37 	bl	8000a6c <RGBSetHighSDA>
 8000bfe:	2508      	movs	r5, #8
 8000c00:	2300      	movs	r3, #0
 8000c02:	5ce2      	ldrb	r2, [r4, r3]
 8000c04:	0052      	lsls	r2, r2, #1
 8000c06:	54e2      	strb	r2, [r4, r3]
 8000c08:	3301      	adds	r3, #1
 8000c0a:	2b09      	cmp	r3, #9
 8000c0c:	d1f9      	bne.n	8000c02 <rgb_i2cRead+0x1e>
 8000c0e:	f7ff ff60 	bl	8000ad2 <RGBSetHighSCL>
 8000c12:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000c16:	8a1b      	ldrh	r3, [r3, #16]
 8000c18:	b29b      	uxth	r3, r3
 8000c1a:	07d8      	lsls	r0, r3, #31
 8000c1c:	d503      	bpl.n	8000c26 <rgb_i2cRead+0x42>
 8000c1e:	7822      	ldrb	r2, [r4, #0]
 8000c20:	f042 0201 	orr.w	r2, r2, #1
 8000c24:	7022      	strb	r2, [r4, #0]
 8000c26:	0799      	lsls	r1, r3, #30
 8000c28:	d503      	bpl.n	8000c32 <rgb_i2cRead+0x4e>
 8000c2a:	7862      	ldrb	r2, [r4, #1]
 8000c2c:	f042 0201 	orr.w	r2, r2, #1
 8000c30:	7062      	strb	r2, [r4, #1]
 8000c32:	075a      	lsls	r2, r3, #29
 8000c34:	d503      	bpl.n	8000c3e <rgb_i2cRead+0x5a>
 8000c36:	78a2      	ldrb	r2, [r4, #2]
 8000c38:	f042 0201 	orr.w	r2, r2, #1
 8000c3c:	70a2      	strb	r2, [r4, #2]
 8000c3e:	0718      	lsls	r0, r3, #28
 8000c40:	d503      	bpl.n	8000c4a <rgb_i2cRead+0x66>
 8000c42:	78e2      	ldrb	r2, [r4, #3]
 8000c44:	f042 0201 	orr.w	r2, r2, #1
 8000c48:	70e2      	strb	r2, [r4, #3]
 8000c4a:	06d9      	lsls	r1, r3, #27
 8000c4c:	d503      	bpl.n	8000c56 <rgb_i2cRead+0x72>
 8000c4e:	7922      	ldrb	r2, [r4, #4]
 8000c50:	f042 0201 	orr.w	r2, r2, #1
 8000c54:	7122      	strb	r2, [r4, #4]
 8000c56:	069a      	lsls	r2, r3, #26
 8000c58:	d503      	bpl.n	8000c62 <rgb_i2cRead+0x7e>
 8000c5a:	7962      	ldrb	r2, [r4, #5]
 8000c5c:	f042 0201 	orr.w	r2, r2, #1
 8000c60:	7162      	strb	r2, [r4, #5]
 8000c62:	0658      	lsls	r0, r3, #25
 8000c64:	d503      	bpl.n	8000c6e <rgb_i2cRead+0x8a>
 8000c66:	79a2      	ldrb	r2, [r4, #6]
 8000c68:	f042 0201 	orr.w	r2, r2, #1
 8000c6c:	71a2      	strb	r2, [r4, #6]
 8000c6e:	0619      	lsls	r1, r3, #24
 8000c70:	d503      	bpl.n	8000c7a <rgb_i2cRead+0x96>
 8000c72:	79e3      	ldrb	r3, [r4, #7]
 8000c74:	f043 0301 	orr.w	r3, r3, #1
 8000c78:	71e3      	strb	r3, [r4, #7]
 8000c7a:	4b0b      	ldr	r3, [pc, #44]	; (8000ca8 <rgb_i2cRead+0xc4>)
 8000c7c:	8a1b      	ldrh	r3, [r3, #16]
 8000c7e:	07da      	lsls	r2, r3, #31
 8000c80:	d503      	bpl.n	8000c8a <rgb_i2cRead+0xa6>
 8000c82:	7a23      	ldrb	r3, [r4, #8]
 8000c84:	f043 0301 	orr.w	r3, r3, #1
 8000c88:	7223      	strb	r3, [r4, #8]
 8000c8a:	f7ff ff1b 	bl	8000ac4 <RGBSetLowSCL>
 8000c8e:	3d01      	subs	r5, #1
 8000c90:	d1b6      	bne.n	8000c00 <rgb_i2cRead+0x1c>
 8000c92:	b10e      	cbz	r6, 8000c98 <rgb_i2cRead+0xb4>
 8000c94:	f7ff feba 	bl	8000a0c <RGBSetLowSDA>
 8000c98:	f7ff ff1b 	bl	8000ad2 <RGBSetHighSCL>
 8000c9c:	f7ff ff12 	bl	8000ac4 <RGBSetLowSCL>
 8000ca0:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8000ca4:	f7ff beac 	b.w	8000a00 <rgb_i2c_delay>
 8000ca8:	48000400 	.word	0x48000400

08000cac <rgb_i2c_write_reg>:
 8000cac:	b570      	push	{r4, r5, r6, lr}
 8000cae:	4605      	mov	r5, r0
 8000cb0:	460c      	mov	r4, r1
 8000cb2:	4616      	mov	r6, r2
 8000cb4:	f7ff ff58 	bl	8000b68 <rgb_i2cStart>
 8000cb8:	4628      	mov	r0, r5
 8000cba:	f7ff ff73 	bl	8000ba4 <rgb_i2cWrite>
 8000cbe:	4620      	mov	r0, r4
 8000cc0:	f7ff ff70 	bl	8000ba4 <rgb_i2cWrite>
 8000cc4:	4630      	mov	r0, r6
 8000cc6:	f7ff ff6d 	bl	8000ba4 <rgb_i2cWrite>
 8000cca:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8000cce:	f7ff bf5a 	b.w	8000b86 <rgb_i2cStop>

08000cd2 <rgb_i2c_read_reg>:
 8000cd2:	b570      	push	{r4, r5, r6, lr}
 8000cd4:	4604      	mov	r4, r0
 8000cd6:	460d      	mov	r5, r1
 8000cd8:	4616      	mov	r6, r2
 8000cda:	f7ff ff45 	bl	8000b68 <rgb_i2cStart>
 8000cde:	4620      	mov	r0, r4
 8000ce0:	f7ff ff60 	bl	8000ba4 <rgb_i2cWrite>
 8000ce4:	4628      	mov	r0, r5
 8000ce6:	f7ff ff5d 	bl	8000ba4 <rgb_i2cWrite>
 8000cea:	f7ff ff3d 	bl	8000b68 <rgb_i2cStart>
 8000cee:	f044 0001 	orr.w	r0, r4, #1
 8000cf2:	f7ff ff57 	bl	8000ba4 <rgb_i2cWrite>
 8000cf6:	4631      	mov	r1, r6
 8000cf8:	2000      	movs	r0, #0
 8000cfa:	f7ff ff73 	bl	8000be4 <rgb_i2cRead>
 8000cfe:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8000d02:	f7ff bf40 	b.w	8000b86 <rgb_i2cStop>
	...

08000d08 <rgb_init>:
 8000d08:	4b1d      	ldr	r3, [pc, #116]	; (8000d80 <rgb_init+0x78>)
 8000d0a:	b570      	push	{r4, r5, r6, lr}
 8000d0c:	2409      	movs	r4, #9
 8000d0e:	2200      	movs	r2, #0
 8000d10:	3c01      	subs	r4, #1
 8000d12:	801a      	strh	r2, [r3, #0]
 8000d14:	825a      	strh	r2, [r3, #18]
 8000d16:	849a      	strh	r2, [r3, #36]	; 0x24
 8000d18:	f8a3 2048 	strh.w	r2, [r3, #72]	; 0x48
 8000d1c:	86da      	strh	r2, [r3, #54]	; 0x36
 8000d1e:	f103 0302 	add.w	r3, r3, #2
 8000d22:	d1f4      	bne.n	8000d0e <rgb_init+0x6>
 8000d24:	4d17      	ldr	r5, [pc, #92]	; (8000d84 <rgb_init+0x7c>)
 8000d26:	f64f 76ff 	movw	r6, #65535	; 0xffff
 8000d2a:	802e      	strh	r6, [r5, #0]
 8000d2c:	f7ff fed8 	bl	8000ae0 <rgb_i2c_init>
 8000d30:	2072      	movs	r0, #114	; 0x72
 8000d32:	2181      	movs	r1, #129	; 0x81
 8000d34:	22ff      	movs	r2, #255	; 0xff
 8000d36:	f7ff ffb9 	bl	8000cac <rgb_i2c_write_reg>
 8000d3a:	2072      	movs	r0, #114	; 0x72
 8000d3c:	2183      	movs	r1, #131	; 0x83
 8000d3e:	22ff      	movs	r2, #255	; 0xff
 8000d40:	f7ff ffb4 	bl	8000cac <rgb_i2c_write_reg>
 8000d44:	2072      	movs	r0, #114	; 0x72
 8000d46:	218d      	movs	r1, #141	; 0x8d
 8000d48:	4622      	mov	r2, r4
 8000d4a:	f7ff ffaf 	bl	8000cac <rgb_i2c_write_reg>
 8000d4e:	2072      	movs	r0, #114	; 0x72
 8000d50:	2180      	movs	r1, #128	; 0x80
 8000d52:	2203      	movs	r2, #3
 8000d54:	f7ff ffaa 	bl	8000cac <rgb_i2c_write_reg>
 8000d58:	2072      	movs	r0, #114	; 0x72
 8000d5a:	218f      	movs	r1, #143	; 0x8f
 8000d5c:	2223      	movs	r2, #35	; 0x23
 8000d5e:	f7ff ffa5 	bl	8000cac <rgb_i2c_write_reg>
 8000d62:	f7ff fe83 	bl	8000a6c <RGBSetHighSDA>
 8000d66:	2072      	movs	r0, #114	; 0x72
 8000d68:	2180      	movs	r1, #128	; 0x80
 8000d6a:	2207      	movs	r2, #7
 8000d6c:	802c      	strh	r4, [r5, #0]
 8000d6e:	f7ff ff9d 	bl	8000cac <rgb_i2c_write_reg>
 8000d72:	2072      	movs	r0, #114	; 0x72
 8000d74:	218e      	movs	r1, #142	; 0x8e
 8000d76:	2208      	movs	r2, #8
 8000d78:	f7ff ff98 	bl	8000cac <rgb_i2c_write_reg>
 8000d7c:	802e      	strh	r6, [r5, #0]
 8000d7e:	bd70      	pop	{r4, r5, r6, pc}
 8000d80:	20000346 	.word	0x20000346
 8000d84:	200009f4 	.word	0x200009f4

08000d88 <rgb_read>:
 8000d88:	b538      	push	{r3, r4, r5, lr}
 8000d8a:	f7ff feed 	bl	8000b68 <rgb_i2cStart>
 8000d8e:	2072      	movs	r0, #114	; 0x72
 8000d90:	f7ff ff08 	bl	8000ba4 <rgb_i2cWrite>
 8000d94:	20b4      	movs	r0, #180	; 0xb4
 8000d96:	f7ff ff05 	bl	8000ba4 <rgb_i2cWrite>
 8000d9a:	f7ff fee5 	bl	8000b68 <rgb_i2cStart>
 8000d9e:	2073      	movs	r0, #115	; 0x73
 8000da0:	f7ff ff00 	bl	8000ba4 <rgb_i2cWrite>
 8000da4:	2001      	movs	r0, #1
 8000da6:	4946      	ldr	r1, [pc, #280]	; (8000ec0 <rgb_read+0x138>)
 8000da8:	f7ff ff1c 	bl	8000be4 <rgb_i2cRead>
 8000dac:	2300      	movs	r3, #0
 8000dae:	4d45      	ldr	r5, [pc, #276]	; (8000ec4 <rgb_read+0x13c>)
 8000db0:	4c43      	ldr	r4, [pc, #268]	; (8000ec0 <rgb_read+0x138>)
 8000db2:	eb05 0243 	add.w	r2, r5, r3, lsl #1
 8000db6:	5d19      	ldrb	r1, [r3, r4]
 8000db8:	3301      	adds	r3, #1
 8000dba:	2b09      	cmp	r3, #9
 8000dbc:	86d1      	strh	r1, [r2, #54]	; 0x36
 8000dbe:	d1f6      	bne.n	8000dae <rgb_read+0x26>
 8000dc0:	2001      	movs	r0, #1
 8000dc2:	4621      	mov	r1, r4
 8000dc4:	f7ff ff0e 	bl	8000be4 <rgb_i2cRead>
 8000dc8:	f105 0236 	add.w	r2, r5, #54	; 0x36
 8000dcc:	2300      	movs	r3, #0
 8000dce:	8811      	ldrh	r1, [r2, #0]
 8000dd0:	5ce0      	ldrb	r0, [r4, r3]
 8000dd2:	3301      	adds	r3, #1
 8000dd4:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 8000dd8:	2b09      	cmp	r3, #9
 8000dda:	f822 1b02 	strh.w	r1, [r2], #2
 8000dde:	d1f6      	bne.n	8000dce <rgb_read+0x46>
 8000de0:	2001      	movs	r0, #1
 8000de2:	4937      	ldr	r1, [pc, #220]	; (8000ec0 <rgb_read+0x138>)
 8000de4:	f7ff fefe 	bl	8000be4 <rgb_i2cRead>
 8000de8:	2300      	movs	r3, #0
 8000dea:	5ce2      	ldrb	r2, [r4, r3]
 8000dec:	f825 2013 	strh.w	r2, [r5, r3, lsl #1]
 8000df0:	3301      	adds	r3, #1
 8000df2:	2b09      	cmp	r3, #9
 8000df4:	d1f9      	bne.n	8000dea <rgb_read+0x62>
 8000df6:	2001      	movs	r0, #1
 8000df8:	4931      	ldr	r1, [pc, #196]	; (8000ec0 <rgb_read+0x138>)
 8000dfa:	f7ff fef3 	bl	8000be4 <rgb_i2cRead>
 8000dfe:	4a32      	ldr	r2, [pc, #200]	; (8000ec8 <rgb_read+0x140>)
 8000e00:	2300      	movs	r3, #0
 8000e02:	5ce0      	ldrb	r0, [r4, r3]
 8000e04:	8851      	ldrh	r1, [r2, #2]
 8000e06:	3301      	adds	r3, #1
 8000e08:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 8000e0c:	2b09      	cmp	r3, #9
 8000e0e:	f822 1f02 	strh.w	r1, [r2, #2]!
 8000e12:	d1f6      	bne.n	8000e02 <rgb_read+0x7a>
 8000e14:	2001      	movs	r0, #1
 8000e16:	492a      	ldr	r1, [pc, #168]	; (8000ec0 <rgb_read+0x138>)
 8000e18:	f7ff fee4 	bl	8000be4 <rgb_i2cRead>
 8000e1c:	2300      	movs	r3, #0
 8000e1e:	eb05 0243 	add.w	r2, r5, r3, lsl #1
 8000e22:	5ce1      	ldrb	r1, [r4, r3]
 8000e24:	3301      	adds	r3, #1
 8000e26:	2b09      	cmp	r3, #9
 8000e28:	8251      	strh	r1, [r2, #18]
 8000e2a:	d1f8      	bne.n	8000e1e <rgb_read+0x96>
 8000e2c:	2001      	movs	r0, #1
 8000e2e:	4924      	ldr	r1, [pc, #144]	; (8000ec0 <rgb_read+0x138>)
 8000e30:	f7ff fed8 	bl	8000be4 <rgb_i2cRead>
 8000e34:	4a25      	ldr	r2, [pc, #148]	; (8000ecc <rgb_read+0x144>)
 8000e36:	2300      	movs	r3, #0
 8000e38:	8811      	ldrh	r1, [r2, #0]
 8000e3a:	5ce0      	ldrb	r0, [r4, r3]
 8000e3c:	3301      	adds	r3, #1
 8000e3e:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 8000e42:	2b09      	cmp	r3, #9
 8000e44:	f822 1b02 	strh.w	r1, [r2], #2
 8000e48:	d1f6      	bne.n	8000e38 <rgb_read+0xb0>
 8000e4a:	2001      	movs	r0, #1
 8000e4c:	491c      	ldr	r1, [pc, #112]	; (8000ec0 <rgb_read+0x138>)
 8000e4e:	f7ff fec9 	bl	8000be4 <rgb_i2cRead>
 8000e52:	2300      	movs	r3, #0
 8000e54:	eb05 0243 	add.w	r2, r5, r3, lsl #1
 8000e58:	5ce1      	ldrb	r1, [r4, r3]
 8000e5a:	3301      	adds	r3, #1
 8000e5c:	2b09      	cmp	r3, #9
 8000e5e:	8491      	strh	r1, [r2, #36]	; 0x24
 8000e60:	d1f8      	bne.n	8000e54 <rgb_read+0xcc>
 8000e62:	2001      	movs	r0, #1
 8000e64:	4916      	ldr	r1, [pc, #88]	; (8000ec0 <rgb_read+0x138>)
 8000e66:	f7ff febd 	bl	8000be4 <rgb_i2cRead>
 8000e6a:	4a19      	ldr	r2, [pc, #100]	; (8000ed0 <rgb_read+0x148>)
 8000e6c:	2300      	movs	r3, #0
 8000e6e:	8811      	ldrh	r1, [r2, #0]
 8000e70:	5ce0      	ldrb	r0, [r4, r3]
 8000e72:	3301      	adds	r3, #1
 8000e74:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 8000e78:	2b09      	cmp	r3, #9
 8000e7a:	f822 1b02 	strh.w	r1, [r2], #2
 8000e7e:	d1f6      	bne.n	8000e6e <rgb_read+0xe6>
 8000e80:	2001      	movs	r0, #1
 8000e82:	490f      	ldr	r1, [pc, #60]	; (8000ec0 <rgb_read+0x138>)
 8000e84:	f7ff feae 	bl	8000be4 <rgb_i2cRead>
 8000e88:	2300      	movs	r3, #0
 8000e8a:	eb05 0243 	add.w	r2, r5, r3, lsl #1
 8000e8e:	5ce1      	ldrb	r1, [r4, r3]
 8000e90:	3301      	adds	r3, #1
 8000e92:	2b09      	cmp	r3, #9
 8000e94:	f8a2 1048 	strh.w	r1, [r2, #72]	; 0x48
 8000e98:	d1f7      	bne.n	8000e8a <rgb_read+0x102>
 8000e9a:	2000      	movs	r0, #0
 8000e9c:	4908      	ldr	r1, [pc, #32]	; (8000ec0 <rgb_read+0x138>)
 8000e9e:	f7ff fea1 	bl	8000be4 <rgb_i2cRead>
 8000ea2:	4a0c      	ldr	r2, [pc, #48]	; (8000ed4 <rgb_read+0x14c>)
 8000ea4:	2300      	movs	r3, #0
 8000ea6:	8811      	ldrh	r1, [r2, #0]
 8000ea8:	5ce0      	ldrb	r0, [r4, r3]
 8000eaa:	3301      	adds	r3, #1
 8000eac:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 8000eb0:	2b09      	cmp	r3, #9
 8000eb2:	f822 1b02 	strh.w	r1, [r2], #2
 8000eb6:	d1f6      	bne.n	8000ea6 <rgb_read+0x11e>
 8000eb8:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8000ebc:	f7ff be63 	b.w	8000b86 <rgb_i2cStop>
 8000ec0:	200009f6 	.word	0x200009f6
 8000ec4:	20000346 	.word	0x20000346
 8000ec8:	20000344 	.word	0x20000344
 8000ecc:	20000358 	.word	0x20000358
 8000ed0:	2000036a 	.word	0x2000036a
 8000ed4:	2000038e 	.word	0x2000038e

08000ed8 <line_sensor_init>:
 8000ed8:	b538      	push	{r3, r4, r5, lr}
 8000eda:	2064      	movs	r0, #100	; 0x64
 8000edc:	f001 f8a2 	bl	8002024 <timer_delay_ms>
 8000ee0:	2400      	movs	r4, #0
 8000ee2:	f7ff ff11 	bl	8000d08 <rgb_init>
 8000ee6:	f7ff ff4f 	bl	8000d88 <rgb_read>
 8000eea:	2072      	movs	r0, #114	; 0x72
 8000eec:	2192      	movs	r1, #146	; 0x92
 8000eee:	4a11      	ldr	r2, [pc, #68]	; (8000f34 <line_sensor_init+0x5c>)
 8000ef0:	f7ff feef 	bl	8000cd2 <rgb_i2c_read_reg>
 8000ef4:	4623      	mov	r3, r4
 8000ef6:	4a10      	ldr	r2, [pc, #64]	; (8000f38 <line_sensor_init+0x60>)
 8000ef8:	1899      	adds	r1, r3, r2
 8000efa:	4615      	mov	r5, r2
 8000efc:	7849      	ldrb	r1, [r1, #1]
 8000efe:	2969      	cmp	r1, #105	; 0x69
 8000f00:	d002      	beq.n	8000f08 <line_sensor_init+0x30>
 8000f02:	2201      	movs	r2, #1
 8000f04:	409a      	lsls	r2, r3
 8000f06:	4314      	orrs	r4, r2
 8000f08:	3301      	adds	r3, #1
 8000f0a:	2b09      	cmp	r3, #9
 8000f0c:	d1f3      	bne.n	8000ef6 <line_sensor_init+0x1e>
 8000f0e:	2100      	movs	r1, #0
 8000f10:	1868      	adds	r0, r5, r1
 8000f12:	3104      	adds	r1, #4
 8000f14:	2300      	movs	r3, #0
 8000f16:	2920      	cmp	r1, #32
 8000f18:	4a07      	ldr	r2, [pc, #28]	; (8000f38 <line_sensor_init+0x60>)
 8000f1a:	60c3      	str	r3, [r0, #12]
 8000f1c:	d1f8      	bne.n	8000f10 <line_sensor_init+0x38>
 8000f1e:	7013      	strb	r3, [r2, #0]
 8000f20:	f882 3030 	strb.w	r3, [r2, #48]	; 0x30
 8000f24:	f882 303c 	strb.w	r3, [r2, #60]	; 0x3c
 8000f28:	6353      	str	r3, [r2, #52]	; 0x34
 8000f2a:	6393      	str	r3, [r2, #56]	; 0x38
 8000f2c:	f7ff ff2c 	bl	8000d88 <rgb_read>
 8000f30:	4620      	mov	r0, r4
 8000f32:	bd38      	pop	{r3, r4, r5, pc}
 8000f34:	200003a1 	.word	0x200003a1
 8000f38:	200003a0 	.word	0x200003a0

08000f3c <line_sensor_read>:
 8000f3c:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8000f40:	4604      	mov	r4, r0
 8000f42:	f7ff ff21 	bl	8000d88 <rgb_read>
 8000f46:	2c00      	cmp	r4, #0
 8000f48:	f040 80ef 	bne.w	800112a <line_sensor_read+0x1ee>
 8000f4c:	4a78      	ldr	r2, [pc, #480]	; (8001130 <line_sensor_read+0x1f4>)
 8000f4e:	4b79      	ldr	r3, [pc, #484]	; (8001134 <line_sensor_read+0x1f8>)
 8000f50:	6b91      	ldr	r1, [r2, #56]	; 0x38
 8000f52:	f9b3 0058 	ldrsh.w	r0, [r3, #88]	; 0x58
 8000f56:	2507      	movs	r5, #7
 8000f58:	fb05 0101 	mla	r1, r5, r1, r0
 8000f5c:	2008      	movs	r0, #8
 8000f5e:	fb91 f1f0 	sdiv	r1, r1, r0
 8000f62:	6391      	str	r1, [r2, #56]	; 0x38
 8000f64:	4620      	mov	r0, r4
 8000f66:	4621      	mov	r1, r4
 8000f68:	4625      	mov	r5, r4
 8000f6a:	4626      	mov	r6, r4
 8000f6c:	4627      	mov	r7, r4
 8000f6e:	461c      	mov	r4, r3
 8000f70:	f8df c1c8 	ldr.w	ip, [pc, #456]	; 800113c <line_sensor_read+0x200>
 8000f74:	f8b3 a036 	ldrh.w	sl, [r3, #54]	; 0x36
 8000f78:	f850 c00c 	ldr.w	ip, [r0, ip]
 8000f7c:	f8b3 9000 	ldrh.w	r9, [r3]
 8000f80:	f8b3 8012 	ldrh.w	r8, [r3, #18]
 8000f84:	f8b3 b024 	ldrh.w	fp, [r3, #36]	; 0x24
 8000f88:	ebcc 0a0a 	rsb	sl, ip, sl
 8000f8c:	f8df c1b0 	ldr.w	ip, [pc, #432]	; 8001140 <line_sensor_read+0x204>
 8000f90:	f850 c00c 	ldr.w	ip, [r0, ip]
 8000f94:	ebcc 0909 	rsb	r9, ip, r9
 8000f98:	f8df c1a8 	ldr.w	ip, [pc, #424]	; 8001144 <line_sensor_read+0x208>
 8000f9c:	f850 c00c 	ldr.w	ip, [r0, ip]
 8000fa0:	ebcc 0808 	rsb	r8, ip, r8
 8000fa4:	f8df c1a0 	ldr.w	ip, [pc, #416]	; 8001148 <line_sensor_read+0x20c>
 8000fa8:	f850 c00c 	ldr.w	ip, [r0, ip]
 8000fac:	3004      	adds	r0, #4
 8000fae:	ebcc 0c0b 	rsb	ip, ip, fp
 8000fb2:	fa1f fa8a 	uxth.w	sl, sl
 8000fb6:	fa1f f989 	uxth.w	r9, r9
 8000fba:	fa1f f888 	uxth.w	r8, r8
 8000fbe:	fa1f fc8c 	uxth.w	ip, ip
 8000fc2:	2820      	cmp	r0, #32
 8000fc4:	f8a3 a036 	strh.w	sl, [r3, #54]	; 0x36
 8000fc8:	f8a3 9000 	strh.w	r9, [r3]
 8000fcc:	f8a3 8012 	strh.w	r8, [r3, #18]
 8000fd0:	f8a3 c024 	strh.w	ip, [r3, #36]	; 0x24
 8000fd4:	fa07 f78a 	sxtah	r7, r7, sl
 8000fd8:	fa06 f689 	sxtah	r6, r6, r9
 8000fdc:	fa05 f588 	sxtah	r5, r5, r8
 8000fe0:	fa01 f18c 	sxtah	r1, r1, ip
 8000fe4:	f103 0302 	add.w	r3, r3, #2
 8000fe8:	d1c2      	bne.n	8000f70 <line_sensor_read+0x34>
 8000fea:	2308      	movs	r3, #8
 8000fec:	fb91 fcf3 	sdiv	ip, r1, r3
 8000ff0:	fb97 f7f3 	sdiv	r7, r7, r3
 8000ff4:	fb96 f6f3 	sdiv	r6, r6, r3
 8000ff8:	fb95 f5f3 	sdiv	r5, r5, r3
 8000ffc:	4b4d      	ldr	r3, [pc, #308]	; (8001134 <line_sensor_read+0x1f8>)
 8000ffe:	2100      	movs	r1, #0
 8001000:	8ed8      	ldrh	r0, [r3, #54]	; 0x36
 8001002:	1a38      	subs	r0, r7, r0
 8001004:	86d8      	strh	r0, [r3, #54]	; 0x36
 8001006:	5b08      	ldrh	r0, [r1, r4]
 8001008:	1b80      	subs	r0, r0, r6
 800100a:	5308      	strh	r0, [r1, r4]
 800100c:	8a58      	ldrh	r0, [r3, #18]
 800100e:	1b40      	subs	r0, r0, r5
 8001010:	8258      	strh	r0, [r3, #18]
 8001012:	8c98      	ldrh	r0, [r3, #36]	; 0x24
 8001014:	3102      	adds	r1, #2
 8001016:	ebcc 0000 	rsb	r0, ip, r0
 800101a:	2910      	cmp	r1, #16
 800101c:	8498      	strh	r0, [r3, #36]	; 0x24
 800101e:	f103 0302 	add.w	r3, r3, #2
 8001022:	d1ed      	bne.n	8001000 <line_sensor_read+0xc4>
 8001024:	2300      	movs	r3, #0
 8001026:	191d      	adds	r5, r3, r4
 8001028:	eb02 0043 	add.w	r0, r2, r3, lsl #1
 800102c:	f9b5 5036 	ldrsh.w	r5, [r5, #54]	; 0x36
 8001030:	493f      	ldr	r1, [pc, #252]	; (8001130 <line_sensor_read+0x1f4>)
 8001032:	60c5      	str	r5, [r0, #12]
 8001034:	3302      	adds	r3, #2
 8001036:	2b10      	cmp	r3, #16
 8001038:	d1f5      	bne.n	8001026 <line_sensor_read+0xea>
 800103a:	698d      	ldr	r5, [r1, #24]
 800103c:	69c8      	ldr	r0, [r1, #28]
 800103e:	1829      	adds	r1, r5, r0
 8001040:	d00d      	beq.n	800105e <line_sensor_read+0x122>
 8001042:	4c3d      	ldr	r4, [pc, #244]	; (8001138 <line_sensor_read+0x1fc>)
 8001044:	f9b4 3008 	ldrsh.w	r3, [r4, #8]
 8001048:	f9b4 6006 	ldrsh.w	r6, [r4, #6]
 800104c:	4343      	muls	r3, r0
 800104e:	fb06 3305 	mla	r3, r6, r5, r3
 8001052:	2402      	movs	r4, #2
 8001054:	fb93 f3f1 	sdiv	r3, r3, r1
 8001058:	fb91 f1f4 	sdiv	r1, r1, r4
 800105c:	e000      	b.n	8001060 <line_sensor_read+0x124>
 800105e:	460b      	mov	r3, r1
 8001060:	6a14      	ldr	r4, [r2, #32]
 8001062:	1826      	adds	r6, r4, r0
 8001064:	d00c      	beq.n	8001080 <line_sensor_read+0x144>
 8001066:	2c96      	cmp	r4, #150	; 0x96
 8001068:	dd0a      	ble.n	8001080 <line_sensor_read+0x144>
 800106a:	4933      	ldr	r1, [pc, #204]	; (8001138 <line_sensor_read+0x1fc>)
 800106c:	f9b1 300a 	ldrsh.w	r3, [r1, #10]
 8001070:	f9b1 1008 	ldrsh.w	r1, [r1, #8]
 8001074:	4348      	muls	r0, r1
 8001076:	fb03 0304 	mla	r3, r3, r4, r0
 800107a:	fb93 f3f6 	sdiv	r3, r3, r6
 800107e:	4621      	mov	r1, r4
 8001080:	6950      	ldr	r0, [r2, #20]
 8001082:	1946      	adds	r6, r0, r5
 8001084:	d00c      	beq.n	80010a0 <line_sensor_read+0x164>
 8001086:	2896      	cmp	r0, #150	; 0x96
 8001088:	dd0a      	ble.n	80010a0 <line_sensor_read+0x164>
 800108a:	492b      	ldr	r1, [pc, #172]	; (8001138 <line_sensor_read+0x1fc>)
 800108c:	f9b1 3004 	ldrsh.w	r3, [r1, #4]
 8001090:	f9b1 1006 	ldrsh.w	r1, [r1, #6]
 8001094:	434d      	muls	r5, r1
 8001096:	fb03 5300 	mla	r3, r3, r0, r5
 800109a:	fb93 f3f6 	sdiv	r3, r3, r6
 800109e:	4601      	mov	r1, r0
 80010a0:	6a55      	ldr	r5, [r2, #36]	; 0x24
 80010a2:	192e      	adds	r6, r5, r4
 80010a4:	d00c      	beq.n	80010c0 <line_sensor_read+0x184>
 80010a6:	2d96      	cmp	r5, #150	; 0x96
 80010a8:	dd0a      	ble.n	80010c0 <line_sensor_read+0x184>
 80010aa:	4923      	ldr	r1, [pc, #140]	; (8001138 <line_sensor_read+0x1fc>)
 80010ac:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 80010b0:	f9b1 100a 	ldrsh.w	r1, [r1, #10]
 80010b4:	434c      	muls	r4, r1
 80010b6:	fb03 4305 	mla	r3, r3, r5, r4
 80010ba:	fb93 f3f6 	sdiv	r3, r3, r6
 80010be:	4629      	mov	r1, r5
 80010c0:	6914      	ldr	r4, [r2, #16]
 80010c2:	1825      	adds	r5, r4, r0
 80010c4:	d00c      	beq.n	80010e0 <line_sensor_read+0x1a4>
 80010c6:	2c96      	cmp	r4, #150	; 0x96
 80010c8:	dd0a      	ble.n	80010e0 <line_sensor_read+0x1a4>
 80010ca:	491b      	ldr	r1, [pc, #108]	; (8001138 <line_sensor_read+0x1fc>)
 80010cc:	f9b1 3002 	ldrsh.w	r3, [r1, #2]
 80010d0:	f9b1 1004 	ldrsh.w	r1, [r1, #4]
 80010d4:	4348      	muls	r0, r1
 80010d6:	fb03 0304 	mla	r3, r3, r4, r0
 80010da:	fb93 f3f5 	sdiv	r3, r3, r5
 80010de:	4621      	mov	r1, r4
 80010e0:	68d0      	ldr	r0, [r2, #12]
 80010e2:	2896      	cmp	r0, #150	; 0x96
 80010e4:	dd03      	ble.n	80010ee <line_sensor_read+0x1b2>
 80010e6:	4b14      	ldr	r3, [pc, #80]	; (8001138 <line_sensor_read+0x1fc>)
 80010e8:	f9b3 3000 	ldrsh.w	r3, [r3]
 80010ec:	4601      	mov	r1, r0
 80010ee:	6a90      	ldr	r0, [r2, #40]	; 0x28
 80010f0:	2896      	cmp	r0, #150	; 0x96
 80010f2:	dd03      	ble.n	80010fc <line_sensor_read+0x1c0>
 80010f4:	4b10      	ldr	r3, [pc, #64]	; (8001138 <line_sensor_read+0x1fc>)
 80010f6:	f9b3 300e 	ldrsh.w	r3, [r3, #14]
 80010fa:	e001      	b.n	8001100 <line_sensor_read+0x1c4>
 80010fc:	2996      	cmp	r1, #150	; 0x96
 80010fe:	dd10      	ble.n	8001122 <line_sensor_read+0x1e6>
 8001100:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
 8001104:	dc05      	bgt.n	8001112 <line_sensor_read+0x1d6>
 8001106:	f06f 01ff 	mvn.w	r1, #255	; 0xff
 800110a:	428b      	cmp	r3, r1
 800110c:	bfb8      	it	lt
 800110e:	460b      	movlt	r3, r1
 8001110:	e001      	b.n	8001116 <line_sensor_read+0x1da>
 8001112:	f44f 7380 	mov.w	r3, #256	; 0x100
 8001116:	6353      	str	r3, [r2, #52]	; 0x34
 8001118:	2308      	movs	r3, #8
 800111a:	f882 3030 	strb.w	r3, [r2, #48]	; 0x30
 800111e:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8001122:	4b03      	ldr	r3, [pc, #12]	; (8001130 <line_sensor_read+0x1f4>)
 8001124:	2200      	movs	r2, #0
 8001126:	f883 2030 	strb.w	r2, [r3, #48]	; 0x30
 800112a:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800112e:	bf00      	nop
 8001130:	200003a0 	.word	0x200003a0
 8001134:	20000346 	.word	0x20000346
 8001138:	2000006c 	.word	0x2000006c
 800113c:	20000000 	.word	0x20000000
 8001140:	2000007c 	.word	0x2000007c
 8001144:	20000048 	.word	0x20000048
 8001148:	20000024 	.word	0x20000024

0800114c <abort_error_>:
 800114c:	b570      	push	{r4, r5, r6, lr}
 800114e:	4605      	mov	r5, r0
 8001150:	460e      	mov	r6, r1
 8001152:	480f      	ldr	r0, [pc, #60]	; (8001190 <abort_error_+0x44>)
 8001154:	4629      	mov	r1, r5
 8001156:	4632      	mov	r2, r6
 8001158:	f7ff f9bc 	bl	80004d4 <printf_>
 800115c:	2400      	movs	r4, #0
 800115e:	1ceb      	adds	r3, r5, #3
 8001160:	429c      	cmp	r4, r3
 8001162:	d20f      	bcs.n	8001184 <abort_error_+0x38>
 8001164:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001168:	f001 fc94 	bl	8002a94 <led_on>
 800116c:	2032      	movs	r0, #50	; 0x32
 800116e:	f000 ff59 	bl	8002024 <timer_delay_ms>
 8001172:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001176:	f001 fc9f 	bl	8002ab8 <led_off>
 800117a:	2064      	movs	r0, #100	; 0x64
 800117c:	f000 ff52 	bl	8002024 <timer_delay_ms>
 8001180:	3401      	adds	r4, #1
 8001182:	e7ec      	b.n	800115e <abort_error_+0x12>
 8001184:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 8001188:	f000 ff4c 	bl	8002024 <timer_delay_ms>
 800118c:	e7e1      	b.n	8001152 <abort_error_+0x6>
 800118e:	bf00      	nop
 8001190:	08002bb9 	.word	0x08002bb9

08001194 <line_sensor_thread>:
 8001194:	b508      	push	{r3, lr}
 8001196:	f7ff fe9f 	bl	8000ed8 <line_sensor_init>
 800119a:	4601      	mov	r1, r0
 800119c:	b120      	cbz	r0, 80011a8 <line_sensor_thread+0x14>
 800119e:	4b08      	ldr	r3, [pc, #32]	; (80011c0 <line_sensor_thread+0x2c>)
 80011a0:	2001      	movs	r0, #1
 80011a2:	6018      	str	r0, [r3, #0]
 80011a4:	f7ff ffd2 	bl	800114c <abort_error_>
 80011a8:	2000      	movs	r0, #0
 80011aa:	2104      	movs	r1, #4
 80011ac:	f000 ff4a 	bl	8002044 <event_timer_set_period>
 80011b0:	2000      	movs	r0, #0
 80011b2:	f000 ff5d 	bl	8002070 <event_timer_wait>
 80011b6:	2000      	movs	r0, #0
 80011b8:	f7ff fec0 	bl	8000f3c <line_sensor_read>
 80011bc:	e7f8      	b.n	80011b0 <line_sensor_thread+0x1c>
 80011be:	bf00      	nop
 80011c0:	20001094 	.word	0x20001094

080011c4 <i2c_sensor_thread>:
 80011c4:	b508      	push	{r3, lr}
 80011c6:	f7ff fb63 	bl	8000890 <lsm9ds0_init>
 80011ca:	4601      	mov	r1, r0
 80011cc:	b128      	cbz	r0, 80011da <i2c_sensor_thread+0x16>
 80011ce:	4b08      	ldr	r3, [pc, #32]	; (80011f0 <i2c_sensor_thread+0x2c>)
 80011d0:	2201      	movs	r2, #1
 80011d2:	2002      	movs	r0, #2
 80011d4:	601a      	str	r2, [r3, #0]
 80011d6:	f7ff ffb9 	bl	800114c <abort_error_>
 80011da:	2001      	movs	r0, #1
 80011dc:	210a      	movs	r1, #10
 80011de:	f000 ff31 	bl	8002044 <event_timer_set_period>
 80011e2:	2001      	movs	r0, #1
 80011e4:	f000 ff44 	bl	8002070 <event_timer_wait>
 80011e8:	f7ff fad4 	bl	8000794 <lsm9ds0_read>
 80011ec:	e7f9      	b.n	80011e2 <i2c_sensor_thread+0x1e>
 80011ee:	bf00      	nop
 80011f0:	20001094 	.word	0x20001094

080011f4 <line_follower>:
 80011f4:	b570      	push	{r4, r5, r6, lr}
 80011f6:	f000 f99b 	bl	8001530 <line_follower_init>
 80011fa:	f000 faf9 	bl	80017f0 <obstacle_init>
 80011fe:	2002      	movs	r0, #2
 8001200:	2104      	movs	r1, #4
 8001202:	f000 ff1f 	bl	8002044 <event_timer_set_period>
 8001206:	f000 feff 	bl	8002008 <timer_get_time>
 800120a:	f500 30c3 	add.w	r0, r0, #99840	; 0x18600
 800120e:	f100 06a0 	add.w	r6, r0, #160	; 0xa0
 8001212:	2400      	movs	r4, #0
 8001214:	4d22      	ldr	r5, [pc, #136]	; (80012a0 <line_follower+0xac>)
 8001216:	2002      	movs	r0, #2
 8001218:	f000 ff2a 	bl	8002070 <event_timer_wait>
 800121c:	6bab      	ldr	r3, [r5, #56]	; 0x38
 800121e:	f5b3 7f2f 	cmp.w	r3, #700	; 0x2bc
 8001222:	dc04      	bgt.n	800122e <line_follower+0x3a>
 8001224:	6bab      	ldr	r3, [r5, #56]	; 0x38
 8001226:	f5b3 7f2f 	cmp.w	r3, #700	; 0x2bc
 800122a:	dc0d      	bgt.n	8001248 <line_follower+0x54>
 800122c:	e017      	b.n	800125e <line_follower+0x6a>
 800122e:	4b1d      	ldr	r3, [pc, #116]	; (80012a4 <line_follower+0xb0>)
 8001230:	f9b3 3000 	ldrsh.w	r3, [r3]
 8001234:	f5b3 5ffa 	cmp.w	r3, #8000	; 0x1f40
 8001238:	ddf4      	ble.n	8001224 <line_follower+0x30>
 800123a:	f001 fc57 	bl	8002aec <get_mode_jumper>
 800123e:	2800      	cmp	r0, #0
 8001240:	d1f0      	bne.n	8001224 <line_follower+0x30>
 8001242:	f000 fadb 	bl	80017fc <obstacle_main>
 8001246:	e013      	b.n	8001270 <line_follower+0x7c>
 8001248:	4b16      	ldr	r3, [pc, #88]	; (80012a4 <line_follower+0xb0>)
 800124a:	f9b3 2000 	ldrsh.w	r2, [r3]
 800124e:	f643 2398 	movw	r3, #15000	; 0x3a98
 8001252:	429a      	cmp	r2, r3
 8001254:	dd03      	ble.n	800125e <line_follower+0x6a>
 8001256:	f001 fc49 	bl	8002aec <get_mode_jumper>
 800125a:	2801      	cmp	r0, #1
 800125c:	d0f1      	beq.n	8001242 <line_follower+0x4e>
 800125e:	f895 3030 	ldrb.w	r3, [r5, #48]	; 0x30
 8001262:	2b08      	cmp	r3, #8
 8001264:	d102      	bne.n	800126c <line_follower+0x78>
 8001266:	f000 f987 	bl	8001578 <line_follower_main>
 800126a:	e001      	b.n	8001270 <line_follower+0x7c>
 800126c:	f000 fb16 	bl	800189c <broken_line_main>
 8001270:	3401      	adds	r4, #1
 8001272:	2314      	movs	r3, #20
 8001274:	fbb4 f2f3 	udiv	r2, r4, r3
 8001278:	fb03 4312 	mls	r3, r3, r2, r4
 800127c:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001280:	b913      	cbnz	r3, 8001288 <line_follower+0x94>
 8001282:	f001 fc07 	bl	8002a94 <led_on>
 8001286:	e001      	b.n	800128c <line_follower+0x98>
 8001288:	f001 fc16 	bl	8002ab8 <led_off>
 800128c:	f000 febc 	bl	8002008 <timer_get_time>
 8001290:	4286      	cmp	r6, r0
 8001292:	d2bf      	bcs.n	8001214 <line_follower+0x20>
 8001294:	2000      	movs	r0, #0
 8001296:	4601      	mov	r1, r0
 8001298:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 800129c:	f001 ba76 	b.w	800278c <drv8834_run>
 80012a0:	200003a0 	.word	0x200003a0
 80012a4:	2000032c 	.word	0x2000032c

080012a8 <main_thread>:
 80012a8:	b510      	push	{r4, lr}
 80012aa:	4822      	ldr	r0, [pc, #136]	; (8001334 <main_thread+0x8c>)
 80012ac:	4c22      	ldr	r4, [pc, #136]	; (8001338 <main_thread+0x90>)
 80012ae:	f7ff f911 	bl	80004d4 <printf_>
 80012b2:	f44f 7096 	mov.w	r0, #300	; 0x12c
 80012b6:	f000 feb5 	bl	8002024 <timer_delay_ms>
 80012ba:	2300      	movs	r3, #0
 80012bc:	6023      	str	r3, [r4, #0]
 80012be:	491f      	ldr	r1, [pc, #124]	; (800133c <main_thread+0x94>)
 80012c0:	481f      	ldr	r0, [pc, #124]	; (8001340 <main_thread+0x98>)
 80012c2:	f44f 7200 	mov.w	r2, #512	; 0x200
 80012c6:	2306      	movs	r3, #6
 80012c8:	f7fe ffe0 	bl	800028c <create_thread>
 80012cc:	491d      	ldr	r1, [pc, #116]	; (8001344 <main_thread+0x9c>)
 80012ce:	481e      	ldr	r0, [pc, #120]	; (8001348 <main_thread+0xa0>)
 80012d0:	f44f 7200 	mov.w	r2, #512	; 0x200
 80012d4:	2306      	movs	r3, #6
 80012d6:	f7fe ffd9 	bl	800028c <create_thread>
 80012da:	f000 fadd 	bl	8001898 <broken_line_init>
 80012de:	f000 fa87 	bl	80017f0 <obstacle_init>
 80012e2:	f001 fc03 	bl	8002aec <get_mode_jumper>
 80012e6:	4601      	mov	r1, r0
 80012e8:	4818      	ldr	r0, [pc, #96]	; (800134c <main_thread+0xa4>)
 80012ea:	f7ff f8f3 	bl	80004d4 <printf_>
 80012ee:	6823      	ldr	r3, [r4, #0]
 80012f0:	b13b      	cbz	r3, 8001302 <main_thread+0x5a>
 80012f2:	4817      	ldr	r0, [pc, #92]	; (8001350 <main_thread+0xa8>)
 80012f4:	f7ff f8ee 	bl	80004d4 <printf_>
 80012f8:	f44f 60fa 	mov.w	r0, #2000	; 0x7d0
 80012fc:	f000 fe92 	bl	8002024 <timer_delay_ms>
 8001300:	e7f7      	b.n	80012f2 <main_thread+0x4a>
 8001302:	f001 fbeb 	bl	8002adc <get_key>
 8001306:	b128      	cbz	r0, 8001314 <main_thread+0x6c>
 8001308:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 800130c:	f000 fe8a 	bl	8002024 <timer_delay_ms>
 8001310:	f7ff ff70 	bl	80011f4 <line_follower>
 8001314:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001318:	f001 fbbc 	bl	8002a94 <led_on>
 800131c:	2064      	movs	r0, #100	; 0x64
 800131e:	f000 fe81 	bl	8002024 <timer_delay_ms>
 8001322:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001326:	f001 fbc7 	bl	8002ab8 <led_off>
 800132a:	20c8      	movs	r0, #200	; 0xc8
 800132c:	f000 fe7a 	bl	8002024 <timer_delay_ms>
 8001330:	e7dd      	b.n	80012ee <main_thread+0x46>
 8001332:	bf00      	nop
 8001334:	08002bcb 	.word	0x08002bcb
 8001338:	20001094 	.word	0x20001094
 800133c:	20000c94 	.word	0x20000c94
 8001340:	08001195 	.word	0x08001195
 8001344:	20000e94 	.word	0x20000e94
 8001348:	080011c5 	.word	0x080011c5
 800134c:	08002c06 	.word	0x08002c06
 8001350:	08002c11 	.word	0x08002c11

08001354 <q_predictor_init>:
 8001354:	4b24      	ldr	r3, [pc, #144]	; (80013e8 <q_predictor_init+0x94>)
 8001356:	2200      	movs	r2, #0
 8001358:	4619      	mov	r1, r3
 800135a:	b570      	push	{r4, r5, r6, lr}
 800135c:	4608      	mov	r0, r1
 800135e:	601a      	str	r2, [r3, #0]
 8001360:	605a      	str	r2, [r3, #4]
 8001362:	f103 0208 	add.w	r2, r3, #8
 8001366:	3348      	adds	r3, #72	; 0x48
 8001368:	2400      	movs	r4, #0
 800136a:	f842 4b04 	str.w	r4, [r2], #4
 800136e:	429a      	cmp	r2, r3
 8001370:	d1fa      	bne.n	8001368 <q_predictor_init+0x14>
 8001372:	2200      	movs	r2, #0
 8001374:	eb01 0442 	add.w	r4, r1, r2, lsl #1
 8001378:	2300      	movs	r3, #0
 800137a:	4e1c      	ldr	r6, [pc, #112]	; (80013ec <q_predictor_init+0x98>)
 800137c:	4416      	add	r6, r2
 800137e:	eddf 7a1c 	vldr	s15, [pc, #112]	; 80013f0 <q_predictor_init+0x9c>
 8001382:	5ef6      	ldrsh	r6, [r6, r3]
 8001384:	ee07 6a10 	vmov	s14, r6
 8001388:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 800138c:	eb04 0543 	add.w	r5, r4, r3, lsl #1
 8001390:	ee87 7a27 	vdiv.f32	s14, s14, s15
 8001394:	3302      	adds	r3, #2
 8001396:	2b20      	cmp	r3, #32
 8001398:	ed85 7a12 	vstr	s14, [r5, #72]	; 0x48
 800139c:	d1ed      	bne.n	800137a <q_predictor_init+0x26>
 800139e:	3220      	adds	r2, #32
 80013a0:	f5b2 7f80 	cmp.w	r2, #256	; 0x100
 80013a4:	d1e6      	bne.n	8001374 <q_predictor_init+0x20>
 80013a6:	2300      	movs	r3, #0
 80013a8:	4912      	ldr	r1, [pc, #72]	; (80013f4 <q_predictor_init+0xa0>)
 80013aa:	5e59      	ldrsh	r1, [r3, r1]
 80013ac:	ee07 1a10 	vmov	s14, r1
 80013b0:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 80013b4:	eb00 0243 	add.w	r2, r0, r3, lsl #1
 80013b8:	ee87 7a27 	vdiv.f32	s14, s14, s15
 80013bc:	3302      	adds	r3, #2
 80013be:	2b10      	cmp	r3, #16
 80013c0:	ed82 7a92 	vstr	s14, [r2, #584]	; 0x248
 80013c4:	d1f0      	bne.n	80013a8 <q_predictor_init+0x54>
 80013c6:	2300      	movs	r3, #0
 80013c8:	490b      	ldr	r1, [pc, #44]	; (80013f8 <q_predictor_init+0xa4>)
 80013ca:	5e59      	ldrsh	r1, [r3, r1]
 80013cc:	ee07 1a10 	vmov	s14, r1
 80013d0:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 80013d4:	eb00 0243 	add.w	r2, r0, r3, lsl #1
 80013d8:	ee87 7a27 	vdiv.f32	s14, s14, s15
 80013dc:	3302      	adds	r3, #2
 80013de:	2b10      	cmp	r3, #16
 80013e0:	ed82 7a9a 	vstr	s14, [r2, #616]	; 0x268
 80013e4:	d1f0      	bne.n	80013c8 <q_predictor_init+0x74>
 80013e6:	bd70      	pop	{r4, r5, r6, pc}
 80013e8:	20000a00 	.word	0x20000a00
 80013ec:	200000b0 	.word	0x200000b0
 80013f0:	447a0000 	.word	0x447a0000
 80013f4:	200000a0 	.word	0x200000a0
 80013f8:	200001e4 	.word	0x200001e4

080013fc <q_predictor_process>:
 80013fc:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8001400:	4b44      	ldr	r3, [pc, #272]	; (8001514 <q_predictor_process+0x118>)
 8001402:	ed2d 8b02 	vpush	{d8}
 8001406:	f1a3 0948 	sub.w	r9, r3, #72	; 0x48
 800140a:	4680      	mov	r8, r0
 800140c:	f109 020c 	add.w	r2, r9, #12
 8001410:	464f      	mov	r7, r9
 8001412:	f853 1c08 	ldr.w	r1, [r3, #-8]
 8001416:	f843 1d04 	str.w	r1, [r3, #-4]!
 800141a:	4293      	cmp	r3, r2
 800141c:	d1f9      	bne.n	8001412 <q_predictor_process+0x16>
 800141e:	4640      	mov	r0, r8
 8001420:	f7ff f90a 	bl	8000638 <m_abs>
 8001424:	2500      	movs	r5, #0
 8001426:	eddf 8a3c 	vldr	s17, [pc, #240]	; 8001518 <q_predictor_process+0x11c>
 800142a:	60b8      	str	r0, [r7, #8]
 800142c:	462e      	mov	r6, r5
 800142e:	ed9f 8a3b 	vldr	s16, [pc, #236]	; 800151c <q_predictor_process+0x120>
 8001432:	eb09 1a86 	add.w	sl, r9, r6, lsl #6
 8001436:	2400      	movs	r4, #0
 8001438:	193a      	adds	r2, r7, r4
 800143a:	eb0a 0304 	add.w	r3, sl, r4
 800143e:	ed92 7a02 	vldr	s14, [r2, #8]
 8001442:	edd3 7a12 	vldr	s15, [r3, #72]	; 0x48
 8001446:	ee77 7a67 	vsub.f32	s15, s14, s15
 800144a:	3404      	adds	r4, #4
 800144c:	ee17 0a90 	vmov	r0, s15
 8001450:	f7ff f8f2 	bl	8000638 <m_abs>
 8001454:	ee07 0a90 	vmov	s15, r0
 8001458:	2c40      	cmp	r4, #64	; 0x40
 800145a:	ee38 8a27 	vadd.f32	s16, s16, s15
 800145e:	d1eb      	bne.n	8001438 <q_predictor_process+0x3c>
 8001460:	eeb4 8ae8 	vcmpe.f32	s16, s17
 8001464:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001468:	bf48      	it	mi
 800146a:	4635      	movmi	r5, r6
 800146c:	f106 0601 	add.w	r6, r6, #1
 8001470:	bf58      	it	pl
 8001472:	eeb0 8a68 	vmovpl.f32	s16, s17
 8001476:	2e08      	cmp	r6, #8
 8001478:	d002      	beq.n	8001480 <q_predictor_process+0x84>
 800147a:	eef0 8a48 	vmov.f32	s17, s16
 800147e:	e7d6      	b.n	800142e <q_predictor_process+0x32>
 8001480:	eb07 1085 	add.w	r0, r7, r5, lsl #6
 8001484:	2300      	movs	r3, #0
 8001486:	18f9      	adds	r1, r7, r3
 8001488:	18c2      	adds	r2, r0, r3
 800148a:	ed91 7a02 	vldr	s14, [r1, #8]
 800148e:	ed9f 6a24 	vldr	s12, [pc, #144]	; 8001520 <q_predictor_process+0x124>
 8001492:	edd2 7a12 	vldr	s15, [r2, #72]	; 0x48
 8001496:	eddf 6a23 	vldr	s13, [pc, #140]	; 8001524 <q_predictor_process+0x128>
 800149a:	ee27 7a06 	vmul.f32	s14, s14, s12
 800149e:	ee07 7aa6 	vmla.f32	s14, s15, s13
 80014a2:	3304      	adds	r3, #4
 80014a4:	2b40      	cmp	r3, #64	; 0x40
 80014a6:	4c20      	ldr	r4, [pc, #128]	; (8001528 <q_predictor_process+0x12c>)
 80014a8:	ed82 7a12 	vstr	s14, [r2, #72]	; 0x48
 80014ac:	d1eb      	bne.n	8001486 <q_predictor_process+0x8a>
 80014ae:	6823      	ldr	r3, [r4, #0]
 80014b0:	6025      	str	r5, [r4, #0]
 80014b2:	6063      	str	r3, [r4, #4]
 80014b4:	eb04 0383 	add.w	r3, r4, r3, lsl #2
 80014b8:	ed93 5a9a 	vldr	s10, [r3, #616]	; 0x268
 80014bc:	edd4 7a02 	vldr	s15, [r4, #8]
 80014c0:	eddf 5a1a 	vldr	s11, [pc, #104]	; 800152c <q_predictor_process+0x130>
 80014c4:	ee45 7a25 	vmla.f32	s15, s10, s11
 80014c8:	359a      	adds	r5, #154	; 0x9a
 80014ca:	eb04 0585 	add.w	r5, r4, r5, lsl #2
 80014ce:	ed95 7a00 	vldr	s14, [r5]
 80014d2:	ee67 7a86 	vmul.f32	s15, s15, s12
 80014d6:	ee47 7a26 	vmla.f32	s15, s14, s13
 80014da:	2100      	movs	r1, #0
 80014dc:	ee17 0a90 	vmov	r0, s15
 80014e0:	f04f 527e 	mov.w	r2, #1065353216	; 0x3f800000
 80014e4:	edc5 7a00 	vstr	s15, [r5]
 80014e8:	f7ff f8c4 	bl	8000674 <m_saturate>
 80014ec:	6823      	ldr	r3, [r4, #0]
 80014ee:	6028      	str	r0, [r5, #0]
 80014f0:	eb04 0483 	add.w	r4, r4, r3, lsl #2
 80014f4:	4640      	mov	r0, r8
 80014f6:	ed94 8a92 	vldr	s16, [r4, #584]	; 0x248
 80014fa:	f7ff f8a9 	bl	8000650 <m_sgn>
 80014fe:	ee07 0a90 	vmov	s15, r0
 8001502:	ee68 7a27 	vmul.f32	s15, s16, s15
 8001506:	ecbd 8b02 	vpop	{d8}
 800150a:	ee17 0a90 	vmov	r0, s15
 800150e:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8001512:	bf00      	nop
 8001514:	20000a48 	.word	0x20000a48
 8001518:	43200000 	.word	0x43200000
 800151c:	00000000 	.word	0x00000000
 8001520:	3d000000 	.word	0x3d000000
 8001524:	3f780000 	.word	0x3f780000
 8001528:	20000a00 	.word	0x20000a00
 800152c:	3e99999a 	.word	0x3e99999a

08001530 <line_follower_init>:
 8001530:	b507      	push	{r0, r1, r2, lr}
 8001532:	4b0a      	ldr	r3, [pc, #40]	; (800155c <line_follower_init+0x2c>)
 8001534:	4a0a      	ldr	r2, [pc, #40]	; (8001560 <line_follower_init+0x30>)
 8001536:	480b      	ldr	r0, [pc, #44]	; (8001564 <line_follower_init+0x34>)
 8001538:	6013      	str	r3, [r2, #0]
 800153a:	4b0b      	ldr	r3, [pc, #44]	; (8001568 <line_follower_init+0x38>)
 800153c:	490b      	ldr	r1, [pc, #44]	; (800156c <line_follower_init+0x3c>)
 800153e:	6053      	str	r3, [r2, #4]
 8001540:	2300      	movs	r3, #0
 8001542:	6093      	str	r3, [r2, #8]
 8001544:	4a0a      	ldr	r2, [pc, #40]	; (8001570 <line_follower_init+0x40>)
 8001546:	9301      	str	r3, [sp, #4]
 8001548:	9200      	str	r2, [sp, #0]
 800154a:	4a0a      	ldr	r2, [pc, #40]	; (8001574 <line_follower_init+0x44>)
 800154c:	f7ff f8b8 	bl	80006c0 <pid_init>
 8001550:	b003      	add	sp, #12
 8001552:	f85d eb04 	ldr.w	lr, [sp], #4
 8001556:	f7ff befd 	b.w	8001354 <q_predictor_init>
 800155a:	bf00      	nop
 800155c:	3ecccccd 	.word	0x3ecccccd
 8001560:	20000c88 	.word	0x20000c88
 8001564:	20001298 	.word	0x20001298
 8001568:	3f4ccccd 	.word	0x3f4ccccd
 800156c:	42c80000 	.word	0x42c80000
 8001570:	4090f5c3 	.word	0x4090f5c3
 8001574:	3ea6e979 	.word	0x3ea6e979

08001578 <line_follower_main>:
 8001578:	b538      	push	{r3, r4, r5, lr}
 800157a:	4b35      	ldr	r3, [pc, #212]	; (8001650 <line_follower_main+0xd8>)
 800157c:	4c35      	ldr	r4, [pc, #212]	; (8001654 <line_follower_main+0xdc>)
 800157e:	ed2d 8b02 	vpush	{d8}
 8001582:	ed93 8a0d 	vldr	s16, [r3, #52]	; 0x34
 8001586:	eddf 7a34 	vldr	s15, [pc, #208]	; 8001658 <line_follower_main+0xe0>
 800158a:	eeb8 8ac8 	vcvt.f32.s32	s16, s16
 800158e:	f04f 557c 	mov.w	r5, #1056964608	; 0x3f000000
 8001592:	ee28 8a27 	vmul.f32	s16, s16, s15
 8001596:	462a      	mov	r2, r5
 8001598:	2100      	movs	r1, #0
 800159a:	ee18 0a10 	vmov	r0, s16
 800159e:	f7ff ff2d 	bl	80013fc <q_predictor_process>
 80015a2:	ee07 0a90 	vmov	s15, r0
 80015a6:	ee37 8ac8 	vsub.f32	s16, s15, s16
 80015aa:	ee18 0a10 	vmov	r0, s16
 80015ae:	f7ff f843 	bl	8000638 <m_abs>
 80015b2:	ed9f 7a2a 	vldr	s14, [pc, #168]	; 800165c <line_follower_main+0xe4>
 80015b6:	ee07 0a90 	vmov	s15, r0
 80015ba:	ed9f 6a29 	vldr	s12, [pc, #164]	; 8001660 <line_follower_main+0xe8>
 80015be:	ee77 5a67 	vsub.f32	s11, s14, s15
 80015c2:	edd4 6a00 	vldr	s13, [r4]
 80015c6:	ee45 6a86 	vmla.f32	s13, s11, s12
 80015ca:	ee16 0a90 	vmov	r0, s13
 80015ce:	eddf 6a25 	vldr	s13, [pc, #148]	; 8001664 <line_follower_main+0xec>
 80015d2:	ee07 7ae6 	vmls.f32	s14, s15, s13
 80015d6:	ee17 1a10 	vmov	r1, s14
 80015da:	f7ff f862 	bl	80006a2 <m_min>
 80015de:	4629      	mov	r1, r5
 80015e0:	6862      	ldr	r2, [r4, #4]
 80015e2:	6020      	str	r0, [r4, #0]
 80015e4:	f7ff f846 	bl	8000674 <m_saturate>
 80015e8:	4b1f      	ldr	r3, [pc, #124]	; (8001668 <line_follower_main+0xf0>)
 80015ea:	6020      	str	r0, [r4, #0]
 80015ec:	f9b3 2000 	ldrsh.w	r2, [r3]
 80015f0:	4b1e      	ldr	r3, [pc, #120]	; (800166c <line_follower_main+0xf4>)
 80015f2:	429a      	cmp	r2, r3
 80015f4:	bfb8      	it	lt
 80015f6:	6025      	strlt	r5, [r4, #0]
 80015f8:	f001 fa78 	bl	8002aec <get_mode_jumper>
 80015fc:	2801      	cmp	r0, #1
 80015fe:	bf08      	it	eq
 8001600:	4b1b      	ldreq	r3, [pc, #108]	; (8001670 <line_follower_main+0xf8>)
 8001602:	481c      	ldr	r0, [pc, #112]	; (8001674 <line_follower_main+0xfc>)
 8001604:	bf08      	it	eq
 8001606:	6023      	streq	r3, [r4, #0]
 8001608:	ee18 1a10 	vmov	r1, s16
 800160c:	f7ff f888 	bl	8000720 <pid_process>
 8001610:	edd4 6a00 	vldr	s13, [r4]
 8001614:	ee07 0a90 	vmov	s15, r0
 8001618:	ed9f 7a17 	vldr	s14, [pc, #92]	; 8001678 <line_follower_main+0x100>
 800161c:	ee36 6aa7 	vadd.f32	s12, s13, s15
 8001620:	ee76 7ae7 	vsub.f32	s15, s13, s15
 8001624:	ee26 6a07 	vmul.f32	s12, s12, s14
 8001628:	ee27 7a87 	vmul.f32	s14, s15, s14
 800162c:	ecbd 8b02 	vpop	{d8}
 8001630:	eebd 6ac6 	vcvt.s32.f32	s12, s12
 8001634:	eebd 7ac7 	vcvt.s32.f32	s14, s14
 8001638:	60a0      	str	r0, [r4, #8]
 800163a:	ee17 1a10 	vmov	r1, s14
 800163e:	ee16 0a10 	vmov	r0, s12
 8001642:	b209      	sxth	r1, r1
 8001644:	b200      	sxth	r0, r0
 8001646:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 800164a:	f001 b89f 	b.w	800278c <drv8834_run>
 800164e:	bf00      	nop
 8001650:	200003a0 	.word	0x200003a0
 8001654:	20000c88 	.word	0x20000c88
 8001658:	3b800000 	.word	0x3b800000
 800165c:	3f800000 	.word	0x3f800000
 8001660:	3ca3d70a 	.word	0x3ca3d70a
 8001664:	40a00000 	.word	0x40a00000
 8001668:	2000032c 	.word	0x2000032c
 800166c:	fffff448 	.word	0xfffff448
 8001670:	3eb33333 	.word	0x3eb33333
 8001674:	20001298 	.word	0x20001298
 8001678:	42c80000 	.word	0x42c80000

0800167c <robot_on_line>:
 800167c:	4b03      	ldr	r3, [pc, #12]	; (800168c <robot_on_line+0x10>)
 800167e:	f893 0030 	ldrb.w	r0, [r3, #48]	; 0x30
 8001682:	f1b0 0308 	subs.w	r3, r0, #8
 8001686:	4258      	negs	r0, r3
 8001688:	4158      	adcs	r0, r3
 800168a:	4770      	bx	lr
 800168c:	200003a0 	.word	0x200003a0

08001690 <obstacle_rotate_robot>:
 8001690:	b538      	push	{r3, r4, r5, lr}
 8001692:	f44f 65c8 	mov.w	r5, #1600	; 0x640
 8001696:	ed2d 8b02 	vpush	{d8}
 800169a:	ed9f 8a1d 	vldr	s16, [pc, #116]	; 8001710 <obstacle_rotate_robot+0x80>
 800169e:	4345      	muls	r5, r0
 80016a0:	2400      	movs	r4, #0
 80016a2:	ea84 72e4 	eor.w	r2, r4, r4, asr #31
 80016a6:	eba2 72e4 	sub.w	r2, r2, r4, asr #31
 80016aa:	ea85 73e5 	eor.w	r3, r5, r5, asr #31
 80016ae:	eba3 73e5 	sub.w	r3, r3, r5, asr #31
 80016b2:	429a      	cmp	r2, r3
 80016b4:	da21      	bge.n	80016fa <obstacle_rotate_robot+0x6a>
 80016b6:	ed9f 7a17 	vldr	s14, [pc, #92]	; 8001714 <obstacle_rotate_robot+0x84>
 80016ba:	eddf 7a17 	vldr	s15, [pc, #92]	; 8001718 <obstacle_rotate_robot+0x88>
 80016be:	ee48 7a07 	vmla.f32	s15, s16, s14
 80016c2:	4b16      	ldr	r3, [pc, #88]	; (800171c <obstacle_rotate_robot+0x8c>)
 80016c4:	eeb0 8a67 	vmov.f32	s16, s15
 80016c8:	eddf 7a15 	vldr	s15, [pc, #84]	; 8001720 <obstacle_rotate_robot+0x90>
 80016cc:	ee68 7a27 	vmul.f32	s15, s16, s15
 80016d0:	f9b3 3010 	ldrsh.w	r3, [r3, #16]
 80016d4:	eefd 7ae7 	vcvt.s32.f32	s15, s15
 80016d8:	441c      	add	r4, r3
 80016da:	ee17 3a90 	vmov	r3, s15
 80016de:	2d00      	cmp	r5, #0
 80016e0:	b219      	sxth	r1, r3
 80016e2:	f1c3 0300 	rsb	r3, r3, #0
 80016e6:	bfca      	itet	gt
 80016e8:	4608      	movgt	r0, r1
 80016ea:	b218      	sxthle	r0, r3
 80016ec:	b219      	sxthgt	r1, r3
 80016ee:	f001 f84d 	bl	800278c <drv8834_run>
 80016f2:	200a      	movs	r0, #10
 80016f4:	f000 fc96 	bl	8002024 <timer_delay_ms>
 80016f8:	e7d3      	b.n	80016a2 <obstacle_rotate_robot+0x12>
 80016fa:	2000      	movs	r0, #0
 80016fc:	4601      	mov	r1, r0
 80016fe:	f001 f845 	bl	800278c <drv8834_run>
 8001702:	ecbd 8b02 	vpop	{d8}
 8001706:	2064      	movs	r0, #100	; 0x64
 8001708:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 800170c:	f000 bc8a 	b.w	8002024 <timer_delay_ms>
 8001710:	00000000 	.word	0x00000000
 8001714:	3f4ccccd 	.word	0x3f4ccccd
 8001718:	3e0f5c28 	.word	0x3e0f5c28
 800171c:	2000032c 	.word	0x2000032c
 8001720:	42c80000 	.word	0x42c80000

08001724 <obstacle_go_forward>:
 8001724:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8001728:	4688      	mov	r8, r1
 800172a:	ed2d 8b04 	vpush	{d8-d9}
 800172e:	4616      	mov	r6, r2
 8001730:	4607      	mov	r7, r0
 8001732:	b950      	cbnz	r0, 800174a <obstacle_go_forward+0x26>
 8001734:	2000      	movs	r0, #0
 8001736:	4601      	mov	r1, r0
 8001738:	f001 f828 	bl	800278c <drv8834_run>
 800173c:	ecbd 8b04 	vpop	{d8-d9}
 8001740:	2064      	movs	r0, #100	; 0x64
 8001742:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8001746:	f000 bc6d 	b.w	8002024 <timer_delay_ms>
 800174a:	ed9f 8a23 	vldr	s16, [pc, #140]	; 80017d8 <obstacle_go_forward+0xb4>
 800174e:	2400      	movs	r4, #0
 8001750:	eef0 7a48 	vmov.f32	s15, s16
 8001754:	4625      	mov	r5, r4
 8001756:	eeb0 9a48 	vmov.f32	s18, s16
 800175a:	4545      	cmp	r5, r8
 800175c:	d2ea      	bcs.n	8001734 <obstacle_go_forward+0x10>
 800175e:	4b1f      	ldr	r3, [pc, #124]	; (80017dc <obstacle_go_forward+0xb8>)
 8001760:	f9b3 3010 	ldrsh.w	r3, [r3, #16]
 8001764:	441c      	add	r4, r3
 8001766:	ee07 4a10 	vmov	s14, r4
 800176a:	eef8 8ac7 	vcvt.f32.s32	s17, s14
 800176e:	ed9f 7a1c 	vldr	s14, [pc, #112]	; 80017e0 <obstacle_go_forward+0xbc>
 8001772:	ee79 8a68 	vsub.f32	s17, s18, s17
 8001776:	350a      	adds	r5, #10
 8001778:	ee78 7ae7 	vsub.f32	s15, s17, s15
 800177c:	ee67 7a87 	vmul.f32	s15, s15, s14
 8001780:	ed9f 7a18 	vldr	s14, [pc, #96]	; 80017e4 <obstacle_go_forward+0xc0>
 8001784:	ee48 7a87 	vmla.f32	s15, s17, s14
 8001788:	ee07 7a10 	vmov	s14, r7
 800178c:	eef8 6ac7 	vcvt.f32.s32	s13, s14
 8001790:	ed9f 7a15 	vldr	s14, [pc, #84]	; 80017e8 <obstacle_go_forward+0xc4>
 8001794:	ee26 7a87 	vmul.f32	s14, s13, s14
 8001798:	eddf 6a14 	vldr	s13, [pc, #80]	; 80017ec <obstacle_go_forward+0xc8>
 800179c:	ee08 7a26 	vmla.f32	s14, s16, s13
 80017a0:	eeb0 8a47 	vmov.f32	s16, s14
 80017a4:	ee37 7a67 	vsub.f32	s14, s14, s15
 80017a8:	ee78 7a27 	vadd.f32	s15, s16, s15
 80017ac:	eebd 7ac7 	vcvt.s32.f32	s14, s14
 80017b0:	eefd 7ae7 	vcvt.s32.f32	s15, s15
 80017b4:	ee17 0a10 	vmov	r0, s14
 80017b8:	ee17 1a90 	vmov	r1, s15
 80017bc:	b200      	sxth	r0, r0
 80017be:	b209      	sxth	r1, r1
 80017c0:	f000 ffe4 	bl	800278c <drv8834_run>
 80017c4:	200a      	movs	r0, #10
 80017c6:	f000 fc2d 	bl	8002024 <timer_delay_ms>
 80017ca:	b116      	cbz	r6, 80017d2 <obstacle_go_forward+0xae>
 80017cc:	47b0      	blx	r6
 80017ce:	2800      	cmp	r0, #0
 80017d0:	d1b0      	bne.n	8001734 <obstacle_go_forward+0x10>
 80017d2:	eef0 7a68 	vmov.f32	s15, s17
 80017d6:	e7c0      	b.n	800175a <obstacle_go_forward+0x36>
 80017d8:	00000000 	.word	0x00000000
 80017dc:	2000032c 	.word	0x2000032c
 80017e0:	3a83126f 	.word	0x3a83126f
 80017e4:	399d4952 	.word	0x399d4952
 80017e8:	3e4ccccc 	.word	0x3e4ccccc
 80017ec:	3f4ccccd 	.word	0x3f4ccccd

080017f0 <obstacle_init>:
 80017f0:	4b01      	ldr	r3, [pc, #4]	; (80017f8 <obstacle_init+0x8>)
 80017f2:	2200      	movs	r2, #0
 80017f4:	601a      	str	r2, [r3, #0]
 80017f6:	4770      	bx	lr
 80017f8:	200001f4 	.word	0x200001f4

080017fc <obstacle_main>:
 80017fc:	4b23      	ldr	r3, [pc, #140]	; (800188c <obstacle_main+0x90>)
 80017fe:	b510      	push	{r4, lr}
 8001800:	2400      	movs	r4, #0
 8001802:	639c      	str	r4, [r3, #56]	; 0x38
 8001804:	f001 f972 	bl	8002aec <get_mode_jumper>
 8001808:	4602      	mov	r2, r0
 800180a:	b938      	cbnz	r0, 800181c <obstacle_main+0x20>
 800180c:	2164      	movs	r1, #100	; 0x64
 800180e:	f7ff ff89 	bl	8001724 <obstacle_go_forward>
 8001812:	20b4      	movs	r0, #180	; 0xb4
 8001814:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8001818:	f7ff bf3a 	b.w	8001690 <obstacle_rotate_robot>
 800181c:	4620      	mov	r0, r4
 800181e:	2132      	movs	r1, #50	; 0x32
 8001820:	4622      	mov	r2, r4
 8001822:	f7ff ff7f 	bl	8001724 <obstacle_go_forward>
 8001826:	f06f 003b 	mvn.w	r0, #59	; 0x3b
 800182a:	2182      	movs	r1, #130	; 0x82
 800182c:	4622      	mov	r2, r4
 800182e:	f7ff ff79 	bl	8001724 <obstacle_go_forward>
 8001832:	2132      	movs	r1, #50	; 0x32
 8001834:	4622      	mov	r2, r4
 8001836:	4620      	mov	r0, r4
 8001838:	f7ff ff74 	bl	8001724 <obstacle_go_forward>
 800183c:	205a      	movs	r0, #90	; 0x5a
 800183e:	f7ff ff27 	bl	8001690 <obstacle_rotate_robot>
 8001842:	21fa      	movs	r1, #250	; 0xfa
 8001844:	4622      	mov	r2, r4
 8001846:	203c      	movs	r0, #60	; 0x3c
 8001848:	f7ff ff6c 	bl	8001724 <obstacle_go_forward>
 800184c:	f06f 0059 	mvn.w	r0, #89	; 0x59
 8001850:	f7ff ff1e 	bl	8001690 <obstacle_rotate_robot>
 8001854:	f44f 71af 	mov.w	r1, #350	; 0x15e
 8001858:	4622      	mov	r2, r4
 800185a:	203c      	movs	r0, #60	; 0x3c
 800185c:	f7ff ff62 	bl	8001724 <obstacle_go_forward>
 8001860:	f06f 0059 	mvn.w	r0, #89	; 0x59
 8001864:	f7ff ff14 	bl	8001690 <obstacle_rotate_robot>
 8001868:	203c      	movs	r0, #60	; 0x3c
 800186a:	2132      	movs	r1, #50	; 0x32
 800186c:	4622      	mov	r2, r4
 800186e:	f7ff ff59 	bl	8001724 <obstacle_go_forward>
 8001872:	4a07      	ldr	r2, [pc, #28]	; (8001890 <obstacle_main+0x94>)
 8001874:	203c      	movs	r0, #60	; 0x3c
 8001876:	21fa      	movs	r1, #250	; 0xfa
 8001878:	f7ff ff54 	bl	8001724 <obstacle_go_forward>
 800187c:	205a      	movs	r0, #90	; 0x5a
 800187e:	f7ff ff07 	bl	8001690 <obstacle_rotate_robot>
 8001882:	4b04      	ldr	r3, [pc, #16]	; (8001894 <obstacle_main+0x98>)
 8001884:	681a      	ldr	r2, [r3, #0]
 8001886:	3201      	adds	r2, #1
 8001888:	601a      	str	r2, [r3, #0]
 800188a:	bd10      	pop	{r4, pc}
 800188c:	200003a0 	.word	0x200003a0
 8001890:	0800167d 	.word	0x0800167d
 8001894:	200001f4 	.word	0x200001f4

08001898 <broken_line_init>:
 8001898:	4770      	bx	lr
	...

0800189c <broken_line_main>:
 800189c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 80018a0:	2500      	movs	r5, #0
 80018a2:	462c      	mov	r4, r5
 80018a4:	462f      	mov	r7, r5
 80018a6:	46a8      	mov	r8, r5
 80018a8:	462e      	mov	r6, r5
 80018aa:	f8df 90f0 	ldr.w	r9, [pc, #240]	; 800199c <broken_line_main+0x100>
 80018ae:	f899 3030 	ldrb.w	r3, [r9, #48]	; 0x30
 80018b2:	2b08      	cmp	r3, #8
 80018b4:	d06c      	beq.n	8001990 <broken_line_main+0xf4>
 80018b6:	2005      	movs	r0, #5
 80018b8:	f000 fbb4 	bl	8002024 <timer_delay_ms>
 80018bc:	2f05      	cmp	r7, #5
 80018be:	d861      	bhi.n	8001984 <broken_line_main+0xe8>
 80018c0:	e8df f007 	tbb	[pc, r7]
 80018c4:	38271503 	.word	0x38271503
 80018c8:	4d4a      	.short	0x4d4a
 80018ca:	2c00      	cmp	r4, #0
 80018cc:	d145      	bne.n	800195a <broken_line_main+0xbe>
 80018ce:	f8d9 3034 	ldr.w	r3, [r9, #52]	; 0x34
 80018d2:	2b00      	cmp	r3, #0
 80018d4:	f04f 0464 	mov.w	r4, #100	; 0x64
 80018d8:	f04f 0701 	mov.w	r7, #1
 80018dc:	bfd4      	ite	le
 80018de:	f04f 0832 	movle.w	r8, #50	; 0x32
 80018e2:	f04f 0800 	movgt.w	r8, #0
 80018e6:	bfd4      	ite	le
 80018e8:	2600      	movle	r6, #0
 80018ea:	2632      	movgt	r6, #50	; 0x32
 80018ec:	e04a      	b.n	8001984 <broken_line_main+0xe8>
 80018ee:	bba4      	cbnz	r4, 800195a <broken_line_main+0xbe>
 80018f0:	f8d9 3034 	ldr.w	r3, [r9, #52]	; 0x34
 80018f4:	2b00      	cmp	r3, #0
 80018f6:	f04f 0464 	mov.w	r4, #100	; 0x64
 80018fa:	f04f 0702 	mov.w	r7, #2
 80018fe:	bfd4      	ite	le
 8001900:	f06f 0831 	mvnle.w	r8, #49	; 0x31
 8001904:	f04f 0800 	movgt.w	r8, #0
 8001908:	bfd4      	ite	le
 800190a:	2600      	movle	r6, #0
 800190c:	f06f 0631 	mvngt.w	r6, #49	; 0x31
 8001910:	e038      	b.n	8001984 <broken_line_main+0xe8>
 8001912:	bb14      	cbnz	r4, 800195a <broken_line_main+0xbe>
 8001914:	f8d9 3034 	ldr.w	r3, [r9, #52]	; 0x34
 8001918:	2b00      	cmp	r3, #0
 800191a:	f04f 0464 	mov.w	r4, #100	; 0x64
 800191e:	f04f 0703 	mov.w	r7, #3
 8001922:	bfd4      	ite	le
 8001924:	f04f 0800 	movle.w	r8, #0
 8001928:	f04f 0832 	movgt.w	r8, #50	; 0x32
 800192c:	bfd4      	ite	le
 800192e:	2632      	movle	r6, #50	; 0x32
 8001930:	2600      	movgt	r6, #0
 8001932:	e027      	b.n	8001984 <broken_line_main+0xe8>
 8001934:	b98c      	cbnz	r4, 800195a <broken_line_main+0xbe>
 8001936:	f8d9 3034 	ldr.w	r3, [r9, #52]	; 0x34
 800193a:	2b00      	cmp	r3, #0
 800193c:	f04f 0464 	mov.w	r4, #100	; 0x64
 8001940:	f04f 0704 	mov.w	r7, #4
 8001944:	bfd4      	ite	le
 8001946:	f04f 0800 	movle.w	r8, #0
 800194a:	f06f 0831 	mvngt.w	r8, #49	; 0x31
 800194e:	bfd4      	ite	le
 8001950:	f06f 0631 	mvnle.w	r6, #49	; 0x31
 8001954:	2600      	movgt	r6, #0
 8001956:	e015      	b.n	8001984 <broken_line_main+0xe8>
 8001958:	b16c      	cbz	r4, 8001976 <broken_line_main+0xda>
 800195a:	3c01      	subs	r4, #1
 800195c:	e012      	b.n	8001984 <broken_line_main+0xe8>
 800195e:	b184      	cbz	r4, 8001982 <broken_line_main+0xe6>
 8001960:	f241 3387 	movw	r3, #4999	; 0x1387
 8001964:	429d      	cmp	r5, r3
 8001966:	bfd8      	it	le
 8001968:	3532      	addle	r5, #50	; 0x32
 800196a:	2664      	movs	r6, #100	; 0x64
 800196c:	fb95 f6f6 	sdiv	r6, r5, r6
 8001970:	3c01      	subs	r4, #1
 8001972:	46b0      	mov	r8, r6
 8001974:	e006      	b.n	8001984 <broken_line_main+0xe8>
 8001976:	4625      	mov	r5, r4
 8001978:	2705      	movs	r7, #5
 800197a:	2432      	movs	r4, #50	; 0x32
 800197c:	46a8      	mov	r8, r5
 800197e:	462e      	mov	r6, r5
 8001980:	e000      	b.n	8001984 <broken_line_main+0xe8>
 8001982:	4627      	mov	r7, r4
 8001984:	fa0f f088 	sxth.w	r0, r8
 8001988:	b231      	sxth	r1, r6
 800198a:	f000 feff 	bl	800278c <drv8834_run>
 800198e:	e78c      	b.n	80018aa <broken_line_main+0xe>
 8001990:	2000      	movs	r0, #0
 8001992:	4601      	mov	r1, r0
 8001994:	e8bd 43f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8001998:	f000 bef8 	b.w	800278c <drv8834_run>
 800199c:	200003a0 	.word	0x200003a0

080019a0 <main>:
 80019a0:	b508      	push	{r3, lr}
 80019a2:	f000 ff99 	bl	80028d8 <lib_low_level_init>
 80019a6:	f7fe fe0f 	bl	80005c8 <lib_os_init>
 80019aa:	4905      	ldr	r1, [pc, #20]	; (80019c0 <main+0x20>)
 80019ac:	4805      	ldr	r0, [pc, #20]	; (80019c4 <main+0x24>)
 80019ae:	f44f 7200 	mov.w	r2, #512	; 0x200
 80019b2:	2306      	movs	r3, #6
 80019b4:	f7fe fc6a 	bl	800028c <create_thread>
 80019b8:	f7fe fc62 	bl	8000280 <kernel_start>
 80019bc:	2000      	movs	r0, #0
 80019be:	bd08      	pop	{r3, pc}
 80019c0:	20001098 	.word	0x20001098
 80019c4:	080012a9 	.word	0x080012a9

080019c8 <RCC_GetClocksFreq>:
 80019c8:	4ba5      	ldr	r3, [pc, #660]	; (8001c60 <RCC_GetClocksFreq+0x298>)
 80019ca:	685a      	ldr	r2, [r3, #4]
 80019cc:	f002 020c 	and.w	r2, r2, #12
 80019d0:	2a04      	cmp	r2, #4
 80019d2:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 80019d6:	d005      	beq.n	80019e4 <RCC_GetClocksFreq+0x1c>
 80019d8:	2a08      	cmp	r2, #8
 80019da:	d006      	beq.n	80019ea <RCC_GetClocksFreq+0x22>
 80019dc:	4ba1      	ldr	r3, [pc, #644]	; (8001c64 <RCC_GetClocksFreq+0x29c>)
 80019de:	6003      	str	r3, [r0, #0]
 80019e0:	b9ba      	cbnz	r2, 8001a12 <RCC_GetClocksFreq+0x4a>
 80019e2:	e017      	b.n	8001a14 <RCC_GetClocksFreq+0x4c>
 80019e4:	4b9f      	ldr	r3, [pc, #636]	; (8001c64 <RCC_GetClocksFreq+0x29c>)
 80019e6:	6003      	str	r3, [r0, #0]
 80019e8:	e013      	b.n	8001a12 <RCC_GetClocksFreq+0x4a>
 80019ea:	6859      	ldr	r1, [r3, #4]
 80019ec:	685c      	ldr	r4, [r3, #4]
 80019ee:	f3c1 4183 	ubfx	r1, r1, #18, #4
 80019f2:	03e2      	lsls	r2, r4, #15
 80019f4:	f101 0102 	add.w	r1, r1, #2
 80019f8:	d401      	bmi.n	80019fe <RCC_GetClocksFreq+0x36>
 80019fa:	4a9b      	ldr	r2, [pc, #620]	; (8001c68 <RCC_GetClocksFreq+0x2a0>)
 80019fc:	e006      	b.n	8001a0c <RCC_GetClocksFreq+0x44>
 80019fe:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8001a00:	4b98      	ldr	r3, [pc, #608]	; (8001c64 <RCC_GetClocksFreq+0x29c>)
 8001a02:	f002 020f 	and.w	r2, r2, #15
 8001a06:	3201      	adds	r2, #1
 8001a08:	fbb3 f2f2 	udiv	r2, r3, r2
 8001a0c:	434a      	muls	r2, r1
 8001a0e:	6002      	str	r2, [r0, #0]
 8001a10:	e000      	b.n	8001a14 <RCC_GetClocksFreq+0x4c>
 8001a12:	2200      	movs	r2, #0
 8001a14:	4f92      	ldr	r7, [pc, #584]	; (8001c60 <RCC_GetClocksFreq+0x298>)
 8001a16:	4d95      	ldr	r5, [pc, #596]	; (8001c6c <RCC_GetClocksFreq+0x2a4>)
 8001a18:	687b      	ldr	r3, [r7, #4]
 8001a1a:	f8df 8254 	ldr.w	r8, [pc, #596]	; 8001c70 <RCC_GetClocksFreq+0x2a8>
 8001a1e:	f3c3 1303 	ubfx	r3, r3, #4, #4
 8001a22:	5cec      	ldrb	r4, [r5, r3]
 8001a24:	6803      	ldr	r3, [r0, #0]
 8001a26:	b2e4      	uxtb	r4, r4
 8001a28:	fa23 f104 	lsr.w	r1, r3, r4
 8001a2c:	6041      	str	r1, [r0, #4]
 8001a2e:	687e      	ldr	r6, [r7, #4]
 8001a30:	f3c6 2602 	ubfx	r6, r6, #8, #3
 8001a34:	5dae      	ldrb	r6, [r5, r6]
 8001a36:	fa21 f606 	lsr.w	r6, r1, r6
 8001a3a:	6086      	str	r6, [r0, #8]
 8001a3c:	f8d7 c004 	ldr.w	ip, [r7, #4]
 8001a40:	f3cc 2cc2 	ubfx	ip, ip, #11, #3
 8001a44:	f815 500c 	ldrb.w	r5, [r5, ip]
 8001a48:	b2ed      	uxtb	r5, r5
 8001a4a:	40e9      	lsrs	r1, r5
 8001a4c:	60c1      	str	r1, [r0, #12]
 8001a4e:	f8d7 902c 	ldr.w	r9, [r7, #44]	; 0x2c
 8001a52:	f3c9 1904 	ubfx	r9, r9, #4, #5
 8001a56:	f009 0c0f 	and.w	ip, r9, #15
 8001a5a:	f019 0f10 	tst.w	r9, #16
 8001a5e:	f838 c01c 	ldrh.w	ip, [r8, ip, lsl #1]
 8001a62:	fa1f fc8c 	uxth.w	ip, ip
 8001a66:	d007      	beq.n	8001a78 <RCC_GetClocksFreq+0xb0>
 8001a68:	f1bc 0f00 	cmp.w	ip, #0
 8001a6c:	d004      	beq.n	8001a78 <RCC_GetClocksFreq+0xb0>
 8001a6e:	fbb2 fcfc 	udiv	ip, r2, ip
 8001a72:	f8c0 c010 	str.w	ip, [r0, #16]
 8001a76:	e000      	b.n	8001a7a <RCC_GetClocksFreq+0xb2>
 8001a78:	6103      	str	r3, [r0, #16]
 8001a7a:	6aff      	ldr	r7, [r7, #44]	; 0x2c
 8001a7c:	f3c7 2c44 	ubfx	ip, r7, #9, #5
 8001a80:	f00c 070f 	and.w	r7, ip, #15
 8001a84:	f01c 0f10 	tst.w	ip, #16
 8001a88:	f838 7017 	ldrh.w	r7, [r8, r7, lsl #1]
 8001a8c:	b2bf      	uxth	r7, r7
 8001a8e:	d004      	beq.n	8001a9a <RCC_GetClocksFreq+0xd2>
 8001a90:	b11f      	cbz	r7, 8001a9a <RCC_GetClocksFreq+0xd2>
 8001a92:	fbb2 f7f7 	udiv	r7, r2, r7
 8001a96:	6147      	str	r7, [r0, #20]
 8001a98:	e000      	b.n	8001a9c <RCC_GetClocksFreq+0xd4>
 8001a9a:	6143      	str	r3, [r0, #20]
 8001a9c:	4f70      	ldr	r7, [pc, #448]	; (8001c60 <RCC_GetClocksFreq+0x298>)
 8001a9e:	f8d7 c030 	ldr.w	ip, [r7, #48]	; 0x30
 8001aa2:	f01c 0f10 	tst.w	ip, #16
 8001aa6:	bf0a      	itet	eq
 8001aa8:	f8df c1b8 	ldreq.w	ip, [pc, #440]	; 8001c64 <RCC_GetClocksFreq+0x29c>
 8001aac:	6183      	strne	r3, [r0, #24]
 8001aae:	f8c0 c018 	streq.w	ip, [r0, #24]
 8001ab2:	6b3f      	ldr	r7, [r7, #48]	; 0x30
 8001ab4:	06bf      	lsls	r7, r7, #26
 8001ab6:	bf56      	itet	pl
 8001ab8:	4f6a      	ldrpl	r7, [pc, #424]	; (8001c64 <RCC_GetClocksFreq+0x29c>)
 8001aba:	61c3      	strmi	r3, [r0, #28]
 8001abc:	61c7      	strpl	r7, [r0, #28]
 8001abe:	4f68      	ldr	r7, [pc, #416]	; (8001c60 <RCC_GetClocksFreq+0x298>)
 8001ac0:	f8d7 c030 	ldr.w	ip, [r7, #48]	; 0x30
 8001ac4:	f01c 0f40 	tst.w	ip, #64	; 0x40
 8001ac8:	bf0a      	itet	eq
 8001aca:	f8df c198 	ldreq.w	ip, [pc, #408]	; 8001c64 <RCC_GetClocksFreq+0x29c>
 8001ace:	6203      	strne	r3, [r0, #32]
 8001ad0:	f8c0 c020 	streq.w	ip, [r0, #32]
 8001ad4:	6b3f      	ldr	r7, [r7, #48]	; 0x30
 8001ad6:	05ff      	lsls	r7, r7, #23
 8001ad8:	d506      	bpl.n	8001ae8 <RCC_GetClocksFreq+0x120>
 8001ada:	4293      	cmp	r3, r2
 8001adc:	d104      	bne.n	8001ae8 <RCC_GetClocksFreq+0x120>
 8001ade:	42a5      	cmp	r5, r4
 8001ae0:	d102      	bne.n	8001ae8 <RCC_GetClocksFreq+0x120>
 8001ae2:	005f      	lsls	r7, r3, #1
 8001ae4:	6247      	str	r7, [r0, #36]	; 0x24
 8001ae6:	e000      	b.n	8001aea <RCC_GetClocksFreq+0x122>
 8001ae8:	6241      	str	r1, [r0, #36]	; 0x24
 8001aea:	4f5d      	ldr	r7, [pc, #372]	; (8001c60 <RCC_GetClocksFreq+0x298>)
 8001aec:	f8d7 c030 	ldr.w	ip, [r7, #48]	; 0x30
 8001af0:	f41c 5f80 	tst.w	ip, #4096	; 0x1000
 8001af4:	d008      	beq.n	8001b08 <RCC_GetClocksFreq+0x140>
 8001af6:	4293      	cmp	r3, r2
 8001af8:	d106      	bne.n	8001b08 <RCC_GetClocksFreq+0x140>
 8001afa:	42a5      	cmp	r5, r4
 8001afc:	d104      	bne.n	8001b08 <RCC_GetClocksFreq+0x140>
 8001afe:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8001b02:	f8c0 c028 	str.w	ip, [r0, #40]	; 0x28
 8001b06:	e000      	b.n	8001b0a <RCC_GetClocksFreq+0x142>
 8001b08:	6281      	str	r1, [r0, #40]	; 0x28
 8001b0a:	6b3f      	ldr	r7, [r7, #48]	; 0x30
 8001b0c:	05bf      	lsls	r7, r7, #22
 8001b0e:	d506      	bpl.n	8001b1e <RCC_GetClocksFreq+0x156>
 8001b10:	4293      	cmp	r3, r2
 8001b12:	d104      	bne.n	8001b1e <RCC_GetClocksFreq+0x156>
 8001b14:	42a5      	cmp	r5, r4
 8001b16:	d102      	bne.n	8001b1e <RCC_GetClocksFreq+0x156>
 8001b18:	005f      	lsls	r7, r3, #1
 8001b1a:	62c7      	str	r7, [r0, #44]	; 0x2c
 8001b1c:	e000      	b.n	8001b20 <RCC_GetClocksFreq+0x158>
 8001b1e:	62c1      	str	r1, [r0, #44]	; 0x2c
 8001b20:	4f4f      	ldr	r7, [pc, #316]	; (8001c60 <RCC_GetClocksFreq+0x298>)
 8001b22:	f8d7 c030 	ldr.w	ip, [r7, #48]	; 0x30
 8001b26:	f41c 6f80 	tst.w	ip, #1024	; 0x400
 8001b2a:	d008      	beq.n	8001b3e <RCC_GetClocksFreq+0x176>
 8001b2c:	4293      	cmp	r3, r2
 8001b2e:	d106      	bne.n	8001b3e <RCC_GetClocksFreq+0x176>
 8001b30:	42a5      	cmp	r5, r4
 8001b32:	d104      	bne.n	8001b3e <RCC_GetClocksFreq+0x176>
 8001b34:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8001b38:	f8c0 c04c 	str.w	ip, [r0, #76]	; 0x4c
 8001b3c:	e000      	b.n	8001b40 <RCC_GetClocksFreq+0x178>
 8001b3e:	64c1      	str	r1, [r0, #76]	; 0x4c
 8001b40:	6b3f      	ldr	r7, [r7, #48]	; 0x30
 8001b42:	053f      	lsls	r7, r7, #20
 8001b44:	d506      	bpl.n	8001b54 <RCC_GetClocksFreq+0x18c>
 8001b46:	4293      	cmp	r3, r2
 8001b48:	d104      	bne.n	8001b54 <RCC_GetClocksFreq+0x18c>
 8001b4a:	42a5      	cmp	r5, r4
 8001b4c:	d102      	bne.n	8001b54 <RCC_GetClocksFreq+0x18c>
 8001b4e:	005f      	lsls	r7, r3, #1
 8001b50:	6507      	str	r7, [r0, #80]	; 0x50
 8001b52:	e000      	b.n	8001b56 <RCC_GetClocksFreq+0x18e>
 8001b54:	6501      	str	r1, [r0, #80]	; 0x50
 8001b56:	4f42      	ldr	r7, [pc, #264]	; (8001c60 <RCC_GetClocksFreq+0x298>)
 8001b58:	f8d7 c030 	ldr.w	ip, [r7, #48]	; 0x30
 8001b5c:	f41c 5f00 	tst.w	ip, #8192	; 0x2000
 8001b60:	d008      	beq.n	8001b74 <RCC_GetClocksFreq+0x1ac>
 8001b62:	4293      	cmp	r3, r2
 8001b64:	d106      	bne.n	8001b74 <RCC_GetClocksFreq+0x1ac>
 8001b66:	42a5      	cmp	r5, r4
 8001b68:	d104      	bne.n	8001b74 <RCC_GetClocksFreq+0x1ac>
 8001b6a:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8001b6e:	f8c0 c054 	str.w	ip, [r0, #84]	; 0x54
 8001b72:	e000      	b.n	8001b76 <RCC_GetClocksFreq+0x1ae>
 8001b74:	6501      	str	r1, [r0, #80]	; 0x50
 8001b76:	6b3f      	ldr	r7, [r7, #48]	; 0x30
 8001b78:	043f      	lsls	r7, r7, #16
 8001b7a:	d506      	bpl.n	8001b8a <RCC_GetClocksFreq+0x1c2>
 8001b7c:	4293      	cmp	r3, r2
 8001b7e:	d104      	bne.n	8001b8a <RCC_GetClocksFreq+0x1c2>
 8001b80:	42a5      	cmp	r5, r4
 8001b82:	d102      	bne.n	8001b8a <RCC_GetClocksFreq+0x1c2>
 8001b84:	005a      	lsls	r2, r3, #1
 8001b86:	6582      	str	r2, [r0, #88]	; 0x58
 8001b88:	e000      	b.n	8001b8c <RCC_GetClocksFreq+0x1c4>
 8001b8a:	6581      	str	r1, [r0, #88]	; 0x58
 8001b8c:	4a34      	ldr	r2, [pc, #208]	; (8001c60 <RCC_GetClocksFreq+0x298>)
 8001b8e:	6b14      	ldr	r4, [r2, #48]	; 0x30
 8001b90:	07a4      	lsls	r4, r4, #30
 8001b92:	d014      	beq.n	8001bbe <RCC_GetClocksFreq+0x1f6>
 8001b94:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8001b96:	f001 0103 	and.w	r1, r1, #3
 8001b9a:	2901      	cmp	r1, #1
 8001b9c:	d101      	bne.n	8001ba2 <RCC_GetClocksFreq+0x1da>
 8001b9e:	6383      	str	r3, [r0, #56]	; 0x38
 8001ba0:	e00e      	b.n	8001bc0 <RCC_GetClocksFreq+0x1f8>
 8001ba2:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8001ba4:	f001 0103 	and.w	r1, r1, #3
 8001ba8:	2902      	cmp	r1, #2
 8001baa:	d102      	bne.n	8001bb2 <RCC_GetClocksFreq+0x1ea>
 8001bac:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 8001bb0:	e005      	b.n	8001bbe <RCC_GetClocksFreq+0x1f6>
 8001bb2:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8001bb4:	f001 0103 	and.w	r1, r1, #3
 8001bb8:	2903      	cmp	r1, #3
 8001bba:	d101      	bne.n	8001bc0 <RCC_GetClocksFreq+0x1f8>
 8001bbc:	4929      	ldr	r1, [pc, #164]	; (8001c64 <RCC_GetClocksFreq+0x29c>)
 8001bbe:	6381      	str	r1, [r0, #56]	; 0x38
 8001bc0:	6b12      	ldr	r2, [r2, #48]	; 0x30
 8001bc2:	4927      	ldr	r1, [pc, #156]	; (8001c60 <RCC_GetClocksFreq+0x298>)
 8001bc4:	f412 3f40 	tst.w	r2, #196608	; 0x30000
 8001bc8:	d101      	bne.n	8001bce <RCC_GetClocksFreq+0x206>
 8001bca:	63c6      	str	r6, [r0, #60]	; 0x3c
 8001bcc:	e018      	b.n	8001c00 <RCC_GetClocksFreq+0x238>
 8001bce:	6b0a      	ldr	r2, [r1, #48]	; 0x30
 8001bd0:	f402 3240 	and.w	r2, r2, #196608	; 0x30000
 8001bd4:	f5b2 3f80 	cmp.w	r2, #65536	; 0x10000
 8001bd8:	d101      	bne.n	8001bde <RCC_GetClocksFreq+0x216>
 8001bda:	63c3      	str	r3, [r0, #60]	; 0x3c
 8001bdc:	e010      	b.n	8001c00 <RCC_GetClocksFreq+0x238>
 8001bde:	6b0a      	ldr	r2, [r1, #48]	; 0x30
 8001be0:	f402 3240 	and.w	r2, r2, #196608	; 0x30000
 8001be4:	f5b2 3f00 	cmp.w	r2, #131072	; 0x20000
 8001be8:	d102      	bne.n	8001bf0 <RCC_GetClocksFreq+0x228>
 8001bea:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 8001bee:	e006      	b.n	8001bfe <RCC_GetClocksFreq+0x236>
 8001bf0:	6b0a      	ldr	r2, [r1, #48]	; 0x30
 8001bf2:	f402 3240 	and.w	r2, r2, #196608	; 0x30000
 8001bf6:	f5b2 3f40 	cmp.w	r2, #196608	; 0x30000
 8001bfa:	d101      	bne.n	8001c00 <RCC_GetClocksFreq+0x238>
 8001bfc:	4a19      	ldr	r2, [pc, #100]	; (8001c64 <RCC_GetClocksFreq+0x29c>)
 8001bfe:	63c2      	str	r2, [r0, #60]	; 0x3c
 8001c00:	4a17      	ldr	r2, [pc, #92]	; (8001c60 <RCC_GetClocksFreq+0x298>)
 8001c02:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8001c04:	f411 2f40 	tst.w	r1, #786432	; 0xc0000
 8001c08:	d101      	bne.n	8001c0e <RCC_GetClocksFreq+0x246>
 8001c0a:	6406      	str	r6, [r0, #64]	; 0x40
 8001c0c:	e018      	b.n	8001c40 <RCC_GetClocksFreq+0x278>
 8001c0e:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8001c10:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 8001c14:	f5b1 2f80 	cmp.w	r1, #262144	; 0x40000
 8001c18:	d101      	bne.n	8001c1e <RCC_GetClocksFreq+0x256>
 8001c1a:	6403      	str	r3, [r0, #64]	; 0x40
 8001c1c:	e010      	b.n	8001c40 <RCC_GetClocksFreq+0x278>
 8001c1e:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8001c20:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 8001c24:	f5b1 2f00 	cmp.w	r1, #524288	; 0x80000
 8001c28:	d102      	bne.n	8001c30 <RCC_GetClocksFreq+0x268>
 8001c2a:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 8001c2e:	e006      	b.n	8001c3e <RCC_GetClocksFreq+0x276>
 8001c30:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8001c32:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 8001c36:	f5b1 2f40 	cmp.w	r1, #786432	; 0xc0000
 8001c3a:	d101      	bne.n	8001c40 <RCC_GetClocksFreq+0x278>
 8001c3c:	4909      	ldr	r1, [pc, #36]	; (8001c64 <RCC_GetClocksFreq+0x29c>)
 8001c3e:	6401      	str	r1, [r0, #64]	; 0x40
 8001c40:	6b12      	ldr	r2, [r2, #48]	; 0x30
 8001c42:	4907      	ldr	r1, [pc, #28]	; (8001c60 <RCC_GetClocksFreq+0x298>)
 8001c44:	f412 1f40 	tst.w	r2, #3145728	; 0x300000
 8001c48:	d101      	bne.n	8001c4e <RCC_GetClocksFreq+0x286>
 8001c4a:	6446      	str	r6, [r0, #68]	; 0x44
 8001c4c:	e023      	b.n	8001c96 <RCC_GetClocksFreq+0x2ce>
 8001c4e:	6b0a      	ldr	r2, [r1, #48]	; 0x30
 8001c50:	f402 1240 	and.w	r2, r2, #3145728	; 0x300000
 8001c54:	f5b2 1f80 	cmp.w	r2, #1048576	; 0x100000
 8001c58:	d10c      	bne.n	8001c74 <RCC_GetClocksFreq+0x2ac>
 8001c5a:	6443      	str	r3, [r0, #68]	; 0x44
 8001c5c:	e01b      	b.n	8001c96 <RCC_GetClocksFreq+0x2ce>
 8001c5e:	bf00      	nop
 8001c60:	40021000 	.word	0x40021000
 8001c64:	007a1200 	.word	0x007a1200
 8001c68:	003d0900 	.word	0x003d0900
 8001c6c:	200001d0 	.word	0x200001d0
 8001c70:	200001b0 	.word	0x200001b0
 8001c74:	6b0a      	ldr	r2, [r1, #48]	; 0x30
 8001c76:	f402 1240 	and.w	r2, r2, #3145728	; 0x300000
 8001c7a:	f5b2 1f00 	cmp.w	r2, #2097152	; 0x200000
 8001c7e:	d102      	bne.n	8001c86 <RCC_GetClocksFreq+0x2be>
 8001c80:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 8001c84:	e006      	b.n	8001c94 <RCC_GetClocksFreq+0x2cc>
 8001c86:	6b0a      	ldr	r2, [r1, #48]	; 0x30
 8001c88:	f402 1240 	and.w	r2, r2, #3145728	; 0x300000
 8001c8c:	f5b2 1f40 	cmp.w	r2, #3145728	; 0x300000
 8001c90:	d101      	bne.n	8001c96 <RCC_GetClocksFreq+0x2ce>
 8001c92:	4a11      	ldr	r2, [pc, #68]	; (8001cd8 <RCC_GetClocksFreq+0x310>)
 8001c94:	6442      	str	r2, [r0, #68]	; 0x44
 8001c96:	4a11      	ldr	r2, [pc, #68]	; (8001cdc <RCC_GetClocksFreq+0x314>)
 8001c98:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8001c9a:	f411 0f40 	tst.w	r1, #12582912	; 0xc00000
 8001c9e:	d102      	bne.n	8001ca6 <RCC_GetClocksFreq+0x2de>
 8001ca0:	6486      	str	r6, [r0, #72]	; 0x48
 8001ca2:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8001ca6:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8001ca8:	f401 0140 	and.w	r1, r1, #12582912	; 0xc00000
 8001cac:	f5b1 0f80 	cmp.w	r1, #4194304	; 0x400000
 8001cb0:	d00f      	beq.n	8001cd2 <RCC_GetClocksFreq+0x30a>
 8001cb2:	6b13      	ldr	r3, [r2, #48]	; 0x30
 8001cb4:	f403 0340 	and.w	r3, r3, #12582912	; 0xc00000
 8001cb8:	f5b3 0f00 	cmp.w	r3, #8388608	; 0x800000
 8001cbc:	d102      	bne.n	8001cc4 <RCC_GetClocksFreq+0x2fc>
 8001cbe:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001cc2:	e006      	b.n	8001cd2 <RCC_GetClocksFreq+0x30a>
 8001cc4:	6b13      	ldr	r3, [r2, #48]	; 0x30
 8001cc6:	f403 0340 	and.w	r3, r3, #12582912	; 0xc00000
 8001cca:	f5b3 0f40 	cmp.w	r3, #12582912	; 0xc00000
 8001cce:	d101      	bne.n	8001cd4 <RCC_GetClocksFreq+0x30c>
 8001cd0:	4b01      	ldr	r3, [pc, #4]	; (8001cd8 <RCC_GetClocksFreq+0x310>)
 8001cd2:	6483      	str	r3, [r0, #72]	; 0x48
 8001cd4:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8001cd8:	007a1200 	.word	0x007a1200
 8001cdc:	40021000 	.word	0x40021000

08001ce0 <RCC_AHBPeriphClockCmd>:
 8001ce0:	bf00      	nop
 8001ce2:	bf00      	nop
 8001ce4:	4b04      	ldr	r3, [pc, #16]	; (8001cf8 <RCC_AHBPeriphClockCmd+0x18>)
 8001ce6:	695a      	ldr	r2, [r3, #20]
 8001ce8:	b109      	cbz	r1, 8001cee <RCC_AHBPeriphClockCmd+0xe>
 8001cea:	4310      	orrs	r0, r2
 8001cec:	e001      	b.n	8001cf2 <RCC_AHBPeriphClockCmd+0x12>
 8001cee:	ea22 0000 	bic.w	r0, r2, r0
 8001cf2:	6158      	str	r0, [r3, #20]
 8001cf4:	4770      	bx	lr
 8001cf6:	bf00      	nop
 8001cf8:	40021000 	.word	0x40021000

08001cfc <RCC_APB2PeriphClockCmd>:
 8001cfc:	bf00      	nop
 8001cfe:	bf00      	nop
 8001d00:	4b04      	ldr	r3, [pc, #16]	; (8001d14 <RCC_APB2PeriphClockCmd+0x18>)
 8001d02:	699a      	ldr	r2, [r3, #24]
 8001d04:	b109      	cbz	r1, 8001d0a <RCC_APB2PeriphClockCmd+0xe>
 8001d06:	4310      	orrs	r0, r2
 8001d08:	e001      	b.n	8001d0e <RCC_APB2PeriphClockCmd+0x12>
 8001d0a:	ea22 0000 	bic.w	r0, r2, r0
 8001d0e:	6198      	str	r0, [r3, #24]
 8001d10:	4770      	bx	lr
 8001d12:	bf00      	nop
 8001d14:	40021000 	.word	0x40021000

08001d18 <RCC_APB1PeriphClockCmd>:
 8001d18:	bf00      	nop
 8001d1a:	bf00      	nop
 8001d1c:	4b04      	ldr	r3, [pc, #16]	; (8001d30 <RCC_APB1PeriphClockCmd+0x18>)
 8001d1e:	69da      	ldr	r2, [r3, #28]
 8001d20:	b109      	cbz	r1, 8001d26 <RCC_APB1PeriphClockCmd+0xe>
 8001d22:	4310      	orrs	r0, r2
 8001d24:	e001      	b.n	8001d2a <RCC_APB1PeriphClockCmd+0x12>
 8001d26:	ea22 0000 	bic.w	r0, r2, r0
 8001d2a:	61d8      	str	r0, [r3, #28]
 8001d2c:	4770      	bx	lr
 8001d2e:	bf00      	nop
 8001d30:	40021000 	.word	0x40021000

08001d34 <TIM_TimeBaseInit>:
 8001d34:	bf00      	nop
 8001d36:	bf00      	nop
 8001d38:	bf00      	nop
 8001d3a:	4a24      	ldr	r2, [pc, #144]	; (8001dcc <TIM_TimeBaseInit+0x98>)
 8001d3c:	8803      	ldrh	r3, [r0, #0]
 8001d3e:	4290      	cmp	r0, r2
 8001d40:	b29b      	uxth	r3, r3
 8001d42:	d012      	beq.n	8001d6a <TIM_TimeBaseInit+0x36>
 8001d44:	f502 6200 	add.w	r2, r2, #2048	; 0x800
 8001d48:	4290      	cmp	r0, r2
 8001d4a:	d00e      	beq.n	8001d6a <TIM_TimeBaseInit+0x36>
 8001d4c:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 8001d50:	d00b      	beq.n	8001d6a <TIM_TimeBaseInit+0x36>
 8001d52:	f5a2 3298 	sub.w	r2, r2, #77824	; 0x13000
 8001d56:	4290      	cmp	r0, r2
 8001d58:	d007      	beq.n	8001d6a <TIM_TimeBaseInit+0x36>
 8001d5a:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8001d5e:	4290      	cmp	r0, r2
 8001d60:	d003      	beq.n	8001d6a <TIM_TimeBaseInit+0x36>
 8001d62:	f502 32a4 	add.w	r2, r2, #83968	; 0x14800
 8001d66:	4290      	cmp	r0, r2
 8001d68:	d103      	bne.n	8001d72 <TIM_TimeBaseInit+0x3e>
 8001d6a:	884a      	ldrh	r2, [r1, #2]
 8001d6c:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 8001d70:	4313      	orrs	r3, r2
 8001d72:	4a17      	ldr	r2, [pc, #92]	; (8001dd0 <TIM_TimeBaseInit+0x9c>)
 8001d74:	4290      	cmp	r0, r2
 8001d76:	d008      	beq.n	8001d8a <TIM_TimeBaseInit+0x56>
 8001d78:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8001d7c:	4290      	cmp	r0, r2
 8001d7e:	d004      	beq.n	8001d8a <TIM_TimeBaseInit+0x56>
 8001d80:	f423 7340 	bic.w	r3, r3, #768	; 0x300
 8001d84:	890a      	ldrh	r2, [r1, #8]
 8001d86:	b29b      	uxth	r3, r3
 8001d88:	4313      	orrs	r3, r2
 8001d8a:	8003      	strh	r3, [r0, #0]
 8001d8c:	684b      	ldr	r3, [r1, #4]
 8001d8e:	62c3      	str	r3, [r0, #44]	; 0x2c
 8001d90:	880b      	ldrh	r3, [r1, #0]
 8001d92:	8503      	strh	r3, [r0, #40]	; 0x28
 8001d94:	4b0d      	ldr	r3, [pc, #52]	; (8001dcc <TIM_TimeBaseInit+0x98>)
 8001d96:	4298      	cmp	r0, r3
 8001d98:	d013      	beq.n	8001dc2 <TIM_TimeBaseInit+0x8e>
 8001d9a:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 8001d9e:	4298      	cmp	r0, r3
 8001da0:	d00f      	beq.n	8001dc2 <TIM_TimeBaseInit+0x8e>
 8001da2:	f503 6340 	add.w	r3, r3, #3072	; 0xc00
 8001da6:	4298      	cmp	r0, r3
 8001da8:	d00b      	beq.n	8001dc2 <TIM_TimeBaseInit+0x8e>
 8001daa:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 8001dae:	4298      	cmp	r0, r3
 8001db0:	d007      	beq.n	8001dc2 <TIM_TimeBaseInit+0x8e>
 8001db2:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 8001db6:	4298      	cmp	r0, r3
 8001db8:	d003      	beq.n	8001dc2 <TIM_TimeBaseInit+0x8e>
 8001dba:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 8001dbe:	4298      	cmp	r0, r3
 8001dc0:	d101      	bne.n	8001dc6 <TIM_TimeBaseInit+0x92>
 8001dc2:	894b      	ldrh	r3, [r1, #10]
 8001dc4:	8603      	strh	r3, [r0, #48]	; 0x30
 8001dc6:	2301      	movs	r3, #1
 8001dc8:	6143      	str	r3, [r0, #20]
 8001dca:	4770      	bx	lr
 8001dcc:	40012c00 	.word	0x40012c00
 8001dd0:	40001000 	.word	0x40001000

08001dd4 <TIM_Cmd>:
 8001dd4:	bf00      	nop
 8001dd6:	bf00      	nop
 8001dd8:	8803      	ldrh	r3, [r0, #0]
 8001dda:	b119      	cbz	r1, 8001de4 <TIM_Cmd+0x10>
 8001ddc:	b29b      	uxth	r3, r3
 8001dde:	f043 0301 	orr.w	r3, r3, #1
 8001de2:	e003      	b.n	8001dec <TIM_Cmd+0x18>
 8001de4:	f023 0301 	bic.w	r3, r3, #1
 8001de8:	041b      	lsls	r3, r3, #16
 8001dea:	0c1b      	lsrs	r3, r3, #16
 8001dec:	8003      	strh	r3, [r0, #0]
 8001dee:	4770      	bx	lr

08001df0 <TIM_OC1Init>:
 8001df0:	b530      	push	{r4, r5, lr}
 8001df2:	bf00      	nop
 8001df4:	bf00      	nop
 8001df6:	bf00      	nop
 8001df8:	bf00      	nop
 8001dfa:	6a03      	ldr	r3, [r0, #32]
 8001dfc:	680c      	ldr	r4, [r1, #0]
 8001dfe:	f023 0301 	bic.w	r3, r3, #1
 8001e02:	6203      	str	r3, [r0, #32]
 8001e04:	6a03      	ldr	r3, [r0, #32]
 8001e06:	6842      	ldr	r2, [r0, #4]
 8001e08:	6985      	ldr	r5, [r0, #24]
 8001e0a:	f425 3580 	bic.w	r5, r5, #65536	; 0x10000
 8001e0e:	f025 0573 	bic.w	r5, r5, #115	; 0x73
 8001e12:	432c      	orrs	r4, r5
 8001e14:	898d      	ldrh	r5, [r1, #12]
 8001e16:	f023 0302 	bic.w	r3, r3, #2
 8001e1a:	432b      	orrs	r3, r5
 8001e1c:	888d      	ldrh	r5, [r1, #4]
 8001e1e:	432b      	orrs	r3, r5
 8001e20:	4d15      	ldr	r5, [pc, #84]	; (8001e78 <TIM_OC1Init+0x88>)
 8001e22:	42a8      	cmp	r0, r5
 8001e24:	d00f      	beq.n	8001e46 <TIM_OC1Init+0x56>
 8001e26:	f505 6500 	add.w	r5, r5, #2048	; 0x800
 8001e2a:	42a8      	cmp	r0, r5
 8001e2c:	d00b      	beq.n	8001e46 <TIM_OC1Init+0x56>
 8001e2e:	f505 6540 	add.w	r5, r5, #3072	; 0xc00
 8001e32:	42a8      	cmp	r0, r5
 8001e34:	d007      	beq.n	8001e46 <TIM_OC1Init+0x56>
 8001e36:	f505 6580 	add.w	r5, r5, #1024	; 0x400
 8001e3a:	42a8      	cmp	r0, r5
 8001e3c:	d003      	beq.n	8001e46 <TIM_OC1Init+0x56>
 8001e3e:	f505 6580 	add.w	r5, r5, #1024	; 0x400
 8001e42:	42a8      	cmp	r0, r5
 8001e44:	d111      	bne.n	8001e6a <TIM_OC1Init+0x7a>
 8001e46:	bf00      	nop
 8001e48:	bf00      	nop
 8001e4a:	bf00      	nop
 8001e4c:	bf00      	nop
 8001e4e:	89cd      	ldrh	r5, [r1, #14]
 8001e50:	f023 0308 	bic.w	r3, r3, #8
 8001e54:	432b      	orrs	r3, r5
 8001e56:	88cd      	ldrh	r5, [r1, #6]
 8001e58:	f023 0304 	bic.w	r3, r3, #4
 8001e5c:	432b      	orrs	r3, r5
 8001e5e:	8a0d      	ldrh	r5, [r1, #16]
 8001e60:	f422 7240 	bic.w	r2, r2, #768	; 0x300
 8001e64:	432a      	orrs	r2, r5
 8001e66:	8a4d      	ldrh	r5, [r1, #18]
 8001e68:	432a      	orrs	r2, r5
 8001e6a:	6042      	str	r2, [r0, #4]
 8001e6c:	688a      	ldr	r2, [r1, #8]
 8001e6e:	6184      	str	r4, [r0, #24]
 8001e70:	6342      	str	r2, [r0, #52]	; 0x34
 8001e72:	6203      	str	r3, [r0, #32]
 8001e74:	bd30      	pop	{r4, r5, pc}
 8001e76:	bf00      	nop
 8001e78:	40012c00 	.word	0x40012c00

08001e7c <TIM_OC2Init>:
 8001e7c:	b570      	push	{r4, r5, r6, lr}
 8001e7e:	bf00      	nop
 8001e80:	bf00      	nop
 8001e82:	bf00      	nop
 8001e84:	bf00      	nop
 8001e86:	6a03      	ldr	r3, [r0, #32]
 8001e88:	680c      	ldr	r4, [r1, #0]
 8001e8a:	898e      	ldrh	r6, [r1, #12]
 8001e8c:	f023 0310 	bic.w	r3, r3, #16
 8001e90:	6203      	str	r3, [r0, #32]
 8001e92:	6a05      	ldr	r5, [r0, #32]
 8001e94:	6842      	ldr	r2, [r0, #4]
 8001e96:	6983      	ldr	r3, [r0, #24]
 8001e98:	f023 7380 	bic.w	r3, r3, #16777216	; 0x1000000
 8001e9c:	f423 43e6 	bic.w	r3, r3, #29440	; 0x7300
 8001ea0:	ea43 2404 	orr.w	r4, r3, r4, lsl #8
 8001ea4:	888b      	ldrh	r3, [r1, #4]
 8001ea6:	f025 0520 	bic.w	r5, r5, #32
 8001eaa:	4333      	orrs	r3, r6
 8001eac:	ea45 1303 	orr.w	r3, r5, r3, lsl #4
 8001eb0:	4d10      	ldr	r5, [pc, #64]	; (8001ef4 <TIM_OC2Init+0x78>)
 8001eb2:	42a8      	cmp	r0, r5
 8001eb4:	d003      	beq.n	8001ebe <TIM_OC2Init+0x42>
 8001eb6:	f505 6500 	add.w	r5, r5, #2048	; 0x800
 8001eba:	42a8      	cmp	r0, r5
 8001ebc:	d114      	bne.n	8001ee8 <TIM_OC2Init+0x6c>
 8001ebe:	bf00      	nop
 8001ec0:	bf00      	nop
 8001ec2:	bf00      	nop
 8001ec4:	bf00      	nop
 8001ec6:	89cd      	ldrh	r5, [r1, #14]
 8001ec8:	8a0e      	ldrh	r6, [r1, #16]
 8001eca:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8001ece:	ea43 1305 	orr.w	r3, r3, r5, lsl #4
 8001ed2:	88cd      	ldrh	r5, [r1, #6]
 8001ed4:	f023 0340 	bic.w	r3, r3, #64	; 0x40
 8001ed8:	ea43 1305 	orr.w	r3, r3, r5, lsl #4
 8001edc:	8a4d      	ldrh	r5, [r1, #18]
 8001ede:	f422 6240 	bic.w	r2, r2, #3072	; 0xc00
 8001ee2:	4335      	orrs	r5, r6
 8001ee4:	ea42 0285 	orr.w	r2, r2, r5, lsl #2
 8001ee8:	6042      	str	r2, [r0, #4]
 8001eea:	688a      	ldr	r2, [r1, #8]
 8001eec:	6184      	str	r4, [r0, #24]
 8001eee:	6382      	str	r2, [r0, #56]	; 0x38
 8001ef0:	6203      	str	r3, [r0, #32]
 8001ef2:	bd70      	pop	{r4, r5, r6, pc}
 8001ef4:	40012c00 	.word	0x40012c00

08001ef8 <TIM_CtrlPWMOutputs>:
 8001ef8:	bf00      	nop
 8001efa:	bf00      	nop
 8001efc:	6c43      	ldr	r3, [r0, #68]	; 0x44
 8001efe:	b111      	cbz	r1, 8001f06 <TIM_CtrlPWMOutputs+0xe>
 8001f00:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
 8001f04:	e001      	b.n	8001f0a <TIM_CtrlPWMOutputs+0x12>
 8001f06:	f3c3 030e 	ubfx	r3, r3, #0, #15
 8001f0a:	6443      	str	r3, [r0, #68]	; 0x44
 8001f0c:	4770      	bx	lr

08001f0e <TIM_ClearITPendingBit>:
 8001f0e:	bf00      	nop
 8001f10:	43c9      	mvns	r1, r1
 8001f12:	b289      	uxth	r1, r1
 8001f14:	6101      	str	r1, [r0, #16]
 8001f16:	4770      	bx	lr

08001f18 <timer_init>:
 8001f18:	b530      	push	{r4, r5, lr}
 8001f1a:	2300      	movs	r3, #0
 8001f1c:	b085      	sub	sp, #20
 8001f1e:	491f      	ldr	r1, [pc, #124]	; (8001f9c <timer_init+0x84>)
 8001f20:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8001f24:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 8001f28:	491d      	ldr	r1, [pc, #116]	; (8001fa0 <timer_init+0x88>)
 8001f2a:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 8001f2e:	4a1d      	ldr	r2, [pc, #116]	; (8001fa4 <timer_init+0x8c>)
 8001f30:	2400      	movs	r4, #0
 8001f32:	f822 4013 	strh.w	r4, [r2, r3, lsl #1]
 8001f36:	3301      	adds	r3, #1
 8001f38:	2b04      	cmp	r3, #4
 8001f3a:	4625      	mov	r5, r4
 8001f3c:	d1ef      	bne.n	8001f1e <timer_init+0x6>
 8001f3e:	4b1a      	ldr	r3, [pc, #104]	; (8001fa8 <timer_init+0x90>)
 8001f40:	2002      	movs	r0, #2
 8001f42:	2101      	movs	r1, #1
 8001f44:	601c      	str	r4, [r3, #0]
 8001f46:	f7ff fee7 	bl	8001d18 <RCC_APB1PeriphClockCmd>
 8001f4a:	f8ad 4006 	strh.w	r4, [sp, #6]
 8001f4e:	f8ad 400c 	strh.w	r4, [sp, #12]
 8001f52:	f8ad 400e 	strh.w	r4, [sp, #14]
 8001f56:	4c15      	ldr	r4, [pc, #84]	; (8001fac <timer_init+0x94>)
 8001f58:	f44f 738c 	mov.w	r3, #280	; 0x118
 8001f5c:	f8ad 3004 	strh.w	r3, [sp, #4]
 8001f60:	4620      	mov	r0, r4
 8001f62:	2331      	movs	r3, #49	; 0x31
 8001f64:	a901      	add	r1, sp, #4
 8001f66:	9302      	str	r3, [sp, #8]
 8001f68:	f7ff fee4 	bl	8001d34 <TIM_TimeBaseInit>
 8001f6c:	4620      	mov	r0, r4
 8001f6e:	2101      	movs	r1, #1
 8001f70:	f7ff ff30 	bl	8001dd4 <TIM_Cmd>
 8001f74:	68e3      	ldr	r3, [r4, #12]
 8001f76:	f043 0301 	orr.w	r3, r3, #1
 8001f7a:	60e3      	str	r3, [r4, #12]
 8001f7c:	231d      	movs	r3, #29
 8001f7e:	f88d 3000 	strb.w	r3, [sp]
 8001f82:	4668      	mov	r0, sp
 8001f84:	2301      	movs	r3, #1
 8001f86:	f88d 5001 	strb.w	r5, [sp, #1]
 8001f8a:	f88d 3002 	strb.w	r3, [sp, #2]
 8001f8e:	f88d 3003 	strb.w	r3, [sp, #3]
 8001f92:	f000 fc69 	bl	8002868 <NVIC_Init>
 8001f96:	b005      	add	sp, #20
 8001f98:	bd30      	pop	{r4, r5, pc}
 8001f9a:	bf00      	nop
 8001f9c:	200012d4 	.word	0x200012d4
 8001fa0:	200012c8 	.word	0x200012c8
 8001fa4:	200012c0 	.word	0x200012c0
 8001fa8:	200012d0 	.word	0x200012d0
 8001fac:	40000400 	.word	0x40000400

08001fb0 <TIM3_IRQHandler>:
 8001fb0:	2300      	movs	r3, #0
 8001fb2:	4a10      	ldr	r2, [pc, #64]	; (8001ff4 <TIM3_IRQHandler+0x44>)
 8001fb4:	f832 1013 	ldrh.w	r1, [r2, r3, lsl #1]
 8001fb8:	b289      	uxth	r1, r1
 8001fba:	b129      	cbz	r1, 8001fc8 <TIM3_IRQHandler+0x18>
 8001fbc:	f832 1013 	ldrh.w	r1, [r2, r3, lsl #1]
 8001fc0:	b289      	uxth	r1, r1
 8001fc2:	3901      	subs	r1, #1
 8001fc4:	b289      	uxth	r1, r1
 8001fc6:	e007      	b.n	8001fd8 <TIM3_IRQHandler+0x28>
 8001fc8:	490b      	ldr	r1, [pc, #44]	; (8001ff8 <TIM3_IRQHandler+0x48>)
 8001fca:	f831 1013 	ldrh.w	r1, [r1, r3, lsl #1]
 8001fce:	b289      	uxth	r1, r1
 8001fd0:	f822 1013 	strh.w	r1, [r2, r3, lsl #1]
 8001fd4:	4a09      	ldr	r2, [pc, #36]	; (8001ffc <TIM3_IRQHandler+0x4c>)
 8001fd6:	2101      	movs	r1, #1
 8001fd8:	f822 1013 	strh.w	r1, [r2, r3, lsl #1]
 8001fdc:	3301      	adds	r3, #1
 8001fde:	2b04      	cmp	r3, #4
 8001fe0:	d1e7      	bne.n	8001fb2 <TIM3_IRQHandler+0x2>
 8001fe2:	4b07      	ldr	r3, [pc, #28]	; (8002000 <TIM3_IRQHandler+0x50>)
 8001fe4:	4807      	ldr	r0, [pc, #28]	; (8002004 <TIM3_IRQHandler+0x54>)
 8001fe6:	681a      	ldr	r2, [r3, #0]
 8001fe8:	2101      	movs	r1, #1
 8001fea:	3201      	adds	r2, #1
 8001fec:	601a      	str	r2, [r3, #0]
 8001fee:	f7ff bf8e 	b.w	8001f0e <TIM_ClearITPendingBit>
 8001ff2:	bf00      	nop
 8001ff4:	200012d4 	.word	0x200012d4
 8001ff8:	200012c8 	.word	0x200012c8
 8001ffc:	200012c0 	.word	0x200012c0
 8002000:	200012d0 	.word	0x200012d0
 8002004:	40000400 	.word	0x40000400

08002008 <timer_get_time>:
 8002008:	b082      	sub	sp, #8
 800200a:	b672      	cpsid	i
 800200c:	4b04      	ldr	r3, [pc, #16]	; (8002020 <timer_get_time+0x18>)
 800200e:	681b      	ldr	r3, [r3, #0]
 8002010:	9301      	str	r3, [sp, #4]
 8002012:	b662      	cpsie	i
 8002014:	9801      	ldr	r0, [sp, #4]
 8002016:	230a      	movs	r3, #10
 8002018:	fbb0 f0f3 	udiv	r0, r0, r3
 800201c:	b002      	add	sp, #8
 800201e:	4770      	bx	lr
 8002020:	200012d0 	.word	0x200012d0

08002024 <timer_delay_ms>:
 8002024:	b513      	push	{r0, r1, r4, lr}
 8002026:	4604      	mov	r4, r0
 8002028:	f7ff ffee 	bl	8002008 <timer_get_time>
 800202c:	4420      	add	r0, r4
 800202e:	9001      	str	r0, [sp, #4]
 8002030:	9c01      	ldr	r4, [sp, #4]
 8002032:	f7ff ffe9 	bl	8002008 <timer_get_time>
 8002036:	4284      	cmp	r4, r0
 8002038:	d902      	bls.n	8002040 <timer_delay_ms+0x1c>
 800203a:	f000 fb17 	bl	800266c <sleep>
 800203e:	e7f7      	b.n	8002030 <timer_delay_ms+0xc>
 8002040:	b002      	add	sp, #8
 8002042:	bd10      	pop	{r4, pc}

08002044 <event_timer_set_period>:
 8002044:	b672      	cpsid	i
 8002046:	230a      	movs	r3, #10
 8002048:	4359      	muls	r1, r3
 800204a:	4b06      	ldr	r3, [pc, #24]	; (8002064 <event_timer_set_period+0x20>)
 800204c:	b289      	uxth	r1, r1
 800204e:	f823 1010 	strh.w	r1, [r3, r0, lsl #1]
 8002052:	4b05      	ldr	r3, [pc, #20]	; (8002068 <event_timer_set_period+0x24>)
 8002054:	f823 1010 	strh.w	r1, [r3, r0, lsl #1]
 8002058:	4b04      	ldr	r3, [pc, #16]	; (800206c <event_timer_set_period+0x28>)
 800205a:	2200      	movs	r2, #0
 800205c:	f823 2010 	strh.w	r2, [r3, r0, lsl #1]
 8002060:	b662      	cpsie	i
 8002062:	4770      	bx	lr
 8002064:	200012d4 	.word	0x200012d4
 8002068:	200012c8 	.word	0x200012c8
 800206c:	200012c0 	.word	0x200012c0

08002070 <event_timer_wait>:
 8002070:	b510      	push	{r4, lr}
 8002072:	4604      	mov	r4, r0
 8002074:	4b06      	ldr	r3, [pc, #24]	; (8002090 <event_timer_wait+0x20>)
 8002076:	f833 2014 	ldrh.w	r2, [r3, r4, lsl #1]
 800207a:	b292      	uxth	r2, r2
 800207c:	b912      	cbnz	r2, 8002084 <event_timer_wait+0x14>
 800207e:	f000 faf5 	bl	800266c <sleep>
 8002082:	e7f7      	b.n	8002074 <event_timer_wait+0x4>
 8002084:	b672      	cpsid	i
 8002086:	2200      	movs	r2, #0
 8002088:	f823 2014 	strh.w	r2, [r3, r4, lsl #1]
 800208c:	b662      	cpsie	i
 800208e:	bd10      	pop	{r4, pc}
 8002090:	200012c0 	.word	0x200012c0

08002094 <USART_Init>:
 8002094:	b530      	push	{r4, r5, lr}
 8002096:	4604      	mov	r4, r0
 8002098:	b099      	sub	sp, #100	; 0x64
 800209a:	460d      	mov	r5, r1
 800209c:	bf00      	nop
 800209e:	bf00      	nop
 80020a0:	bf00      	nop
 80020a2:	bf00      	nop
 80020a4:	bf00      	nop
 80020a6:	bf00      	nop
 80020a8:	bf00      	nop
 80020aa:	6803      	ldr	r3, [r0, #0]
 80020ac:	f023 0301 	bic.w	r3, r3, #1
 80020b0:	6003      	str	r3, [r0, #0]
 80020b2:	6842      	ldr	r2, [r0, #4]
 80020b4:	688b      	ldr	r3, [r1, #8]
 80020b6:	f422 5240 	bic.w	r2, r2, #12288	; 0x3000
 80020ba:	4313      	orrs	r3, r2
 80020bc:	6043      	str	r3, [r0, #4]
 80020be:	686a      	ldr	r2, [r5, #4]
 80020c0:	68eb      	ldr	r3, [r5, #12]
 80020c2:	6801      	ldr	r1, [r0, #0]
 80020c4:	431a      	orrs	r2, r3
 80020c6:	692b      	ldr	r3, [r5, #16]
 80020c8:	f421 51b0 	bic.w	r1, r1, #5632	; 0x1600
 80020cc:	f021 010c 	bic.w	r1, r1, #12
 80020d0:	4313      	orrs	r3, r2
 80020d2:	430b      	orrs	r3, r1
 80020d4:	6003      	str	r3, [r0, #0]
 80020d6:	6882      	ldr	r2, [r0, #8]
 80020d8:	696b      	ldr	r3, [r5, #20]
 80020da:	f422 7240 	bic.w	r2, r2, #768	; 0x300
 80020de:	4313      	orrs	r3, r2
 80020e0:	6083      	str	r3, [r0, #8]
 80020e2:	a801      	add	r0, sp, #4
 80020e4:	f7ff fc70 	bl	80019c8 <RCC_GetClocksFreq>
 80020e8:	4b17      	ldr	r3, [pc, #92]	; (8002148 <USART_Init+0xb4>)
 80020ea:	429c      	cmp	r4, r3
 80020ec:	d101      	bne.n	80020f2 <USART_Init+0x5e>
 80020ee:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 80020f0:	e00e      	b.n	8002110 <USART_Init+0x7c>
 80020f2:	4b16      	ldr	r3, [pc, #88]	; (800214c <USART_Init+0xb8>)
 80020f4:	429c      	cmp	r4, r3
 80020f6:	d101      	bne.n	80020fc <USART_Init+0x68>
 80020f8:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80020fa:	e009      	b.n	8002110 <USART_Init+0x7c>
 80020fc:	4b14      	ldr	r3, [pc, #80]	; (8002150 <USART_Init+0xbc>)
 80020fe:	429c      	cmp	r4, r3
 8002100:	d101      	bne.n	8002106 <USART_Init+0x72>
 8002102:	9a11      	ldr	r2, [sp, #68]	; 0x44
 8002104:	e004      	b.n	8002110 <USART_Init+0x7c>
 8002106:	4b13      	ldr	r3, [pc, #76]	; (8002154 <USART_Init+0xc0>)
 8002108:	429c      	cmp	r4, r3
 800210a:	bf0c      	ite	eq
 800210c:	9a12      	ldreq	r2, [sp, #72]	; 0x48
 800210e:	9a13      	ldrne	r2, [sp, #76]	; 0x4c
 8002110:	6823      	ldr	r3, [r4, #0]
 8002112:	6829      	ldr	r1, [r5, #0]
 8002114:	f413 4f00 	tst.w	r3, #32768	; 0x8000
 8002118:	bf18      	it	ne
 800211a:	0052      	lslne	r2, r2, #1
 800211c:	fbb2 f3f1 	udiv	r3, r2, r1
 8002120:	fb01 2213 	mls	r2, r1, r3, r2
 8002124:	ebb2 0f51 	cmp.w	r2, r1, lsr #1
 8002128:	6822      	ldr	r2, [r4, #0]
 800212a:	bf28      	it	cs
 800212c:	3301      	addcs	r3, #1
 800212e:	0412      	lsls	r2, r2, #16
 8002130:	d506      	bpl.n	8002140 <USART_Init+0xac>
 8002132:	f64f 72f0 	movw	r2, #65520	; 0xfff0
 8002136:	f3c3 0142 	ubfx	r1, r3, #1, #3
 800213a:	401a      	ands	r2, r3
 800213c:	ea41 0302 	orr.w	r3, r1, r2
 8002140:	b29b      	uxth	r3, r3
 8002142:	81a3      	strh	r3, [r4, #12]
 8002144:	b019      	add	sp, #100	; 0x64
 8002146:	bd30      	pop	{r4, r5, pc}
 8002148:	40013800 	.word	0x40013800
 800214c:	40004400 	.word	0x40004400
 8002150:	40004800 	.word	0x40004800
 8002154:	40004c00 	.word	0x40004c00

08002158 <USART_Cmd>:
 8002158:	bf00      	nop
 800215a:	bf00      	nop
 800215c:	6803      	ldr	r3, [r0, #0]
 800215e:	b111      	cbz	r1, 8002166 <USART_Cmd+0xe>
 8002160:	f043 0301 	orr.w	r3, r3, #1
 8002164:	e001      	b.n	800216a <USART_Cmd+0x12>
 8002166:	f023 0301 	bic.w	r3, r3, #1
 800216a:	6003      	str	r3, [r0, #0]
 800216c:	4770      	bx	lr

0800216e <USART_ReceiveData>:
 800216e:	bf00      	nop
 8002170:	8c80      	ldrh	r0, [r0, #36]	; 0x24
 8002172:	f3c0 0008 	ubfx	r0, r0, #0, #9
 8002176:	4770      	bx	lr

08002178 <USART_ITConfig>:
 8002178:	b510      	push	{r4, lr}
 800217a:	bf00      	nop
 800217c:	bf00      	nop
 800217e:	bf00      	nop
 8002180:	f3c1 2307 	ubfx	r3, r1, #8, #8
 8002184:	2401      	movs	r4, #1
 8002186:	b2c9      	uxtb	r1, r1
 8002188:	2b02      	cmp	r3, #2
 800218a:	fa04 f101 	lsl.w	r1, r4, r1
 800218e:	d101      	bne.n	8002194 <USART_ITConfig+0x1c>
 8002190:	3004      	adds	r0, #4
 8002192:	e002      	b.n	800219a <USART_ITConfig+0x22>
 8002194:	2b03      	cmp	r3, #3
 8002196:	bf08      	it	eq
 8002198:	3008      	addeq	r0, #8
 800219a:	6803      	ldr	r3, [r0, #0]
 800219c:	b10a      	cbz	r2, 80021a2 <USART_ITConfig+0x2a>
 800219e:	4319      	orrs	r1, r3
 80021a0:	e001      	b.n	80021a6 <USART_ITConfig+0x2e>
 80021a2:	ea23 0101 	bic.w	r1, r3, r1
 80021a6:	6001      	str	r1, [r0, #0]
 80021a8:	bd10      	pop	{r4, pc}

080021aa <USART_GetITStatus>:
 80021aa:	b510      	push	{r4, lr}
 80021ac:	bf00      	nop
 80021ae:	bf00      	nop
 80021b0:	2401      	movs	r4, #1
 80021b2:	f3c1 2207 	ubfx	r2, r1, #8, #8
 80021b6:	b2cb      	uxtb	r3, r1
 80021b8:	42a2      	cmp	r2, r4
 80021ba:	fa04 f303 	lsl.w	r3, r4, r3
 80021be:	d101      	bne.n	80021c4 <USART_GetITStatus+0x1a>
 80021c0:	6802      	ldr	r2, [r0, #0]
 80021c2:	e003      	b.n	80021cc <USART_GetITStatus+0x22>
 80021c4:	2a02      	cmp	r2, #2
 80021c6:	bf0c      	ite	eq
 80021c8:	6842      	ldreq	r2, [r0, #4]
 80021ca:	6882      	ldrne	r2, [r0, #8]
 80021cc:	4013      	ands	r3, r2
 80021ce:	69c2      	ldr	r2, [r0, #28]
 80021d0:	b143      	cbz	r3, 80021e4 <USART_GetITStatus+0x3a>
 80021d2:	2301      	movs	r3, #1
 80021d4:	0c09      	lsrs	r1, r1, #16
 80021d6:	fa03 f101 	lsl.w	r1, r3, r1
 80021da:	4211      	tst	r1, r2
 80021dc:	bf0c      	ite	eq
 80021de:	2000      	moveq	r0, #0
 80021e0:	2001      	movne	r0, #1
 80021e2:	bd10      	pop	{r4, pc}
 80021e4:	4618      	mov	r0, r3
 80021e6:	bd10      	pop	{r4, pc}

080021e8 <USART_ClearITPendingBit>:
 80021e8:	bf00      	nop
 80021ea:	bf00      	nop
 80021ec:	2301      	movs	r3, #1
 80021ee:	0c09      	lsrs	r1, r1, #16
 80021f0:	fa03 f101 	lsl.w	r1, r3, r1
 80021f4:	6201      	str	r1, [r0, #32]
 80021f6:	4770      	bx	lr

080021f8 <uart_write>:
 80021f8:	4b03      	ldr	r3, [pc, #12]	; (8002208 <uart_write+0x10>)
 80021fa:	69da      	ldr	r2, [r3, #28]
 80021fc:	0612      	lsls	r2, r2, #24
 80021fe:	d401      	bmi.n	8002204 <uart_write+0xc>
 8002200:	bf00      	nop
 8002202:	e7f9      	b.n	80021f8 <uart_write>
 8002204:	8518      	strh	r0, [r3, #40]	; 0x28
 8002206:	4770      	bx	lr
 8002208:	40013800 	.word	0x40013800

0800220c <uart_init>:
 800220c:	b530      	push	{r4, r5, lr}
 800220e:	4b2c      	ldr	r3, [pc, #176]	; (80022c0 <uart_init+0xb4>)
 8002210:	4d2c      	ldr	r5, [pc, #176]	; (80022c4 <uart_init+0xb8>)
 8002212:	2400      	movs	r4, #0
 8002214:	601c      	str	r4, [r3, #0]
 8002216:	4b2c      	ldr	r3, [pc, #176]	; (80022c8 <uart_init+0xbc>)
 8002218:	b08b      	sub	sp, #44	; 0x2c
 800221a:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 800221e:	2101      	movs	r1, #1
 8002220:	601c      	str	r4, [r3, #0]
 8002222:	f7ff fd5d 	bl	8001ce0 <RCC_AHBPeriphClockCmd>
 8002226:	f44f 4080 	mov.w	r0, #16384	; 0x4000
 800222a:	2101      	movs	r1, #1
 800222c:	f7ff fd66 	bl	8001cfc <RCC_APB2PeriphClockCmd>
 8002230:	f44f 63c0 	mov.w	r3, #1536	; 0x600
 8002234:	9302      	str	r3, [sp, #8]
 8002236:	2302      	movs	r3, #2
 8002238:	f88d 300c 	strb.w	r3, [sp, #12]
 800223c:	a902      	add	r1, sp, #8
 800223e:	2303      	movs	r3, #3
 8002240:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8002244:	f88d 300d 	strb.w	r3, [sp, #13]
 8002248:	f88d 400e 	strb.w	r4, [sp, #14]
 800224c:	f88d 400f 	strb.w	r4, [sp, #15]
 8002250:	f000 fb53 	bl	80028fa <GPIO_Init>
 8002254:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8002258:	2109      	movs	r1, #9
 800225a:	2207      	movs	r2, #7
 800225c:	f000 fb9b 	bl	8002996 <GPIO_PinAFConfig>
 8002260:	2207      	movs	r2, #7
 8002262:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8002266:	210a      	movs	r1, #10
 8002268:	f000 fb95 	bl	8002996 <GPIO_PinAFConfig>
 800226c:	f44f 33e1 	mov.w	r3, #115200	; 0x1c200
 8002270:	9304      	str	r3, [sp, #16]
 8002272:	4628      	mov	r0, r5
 8002274:	230c      	movs	r3, #12
 8002276:	a904      	add	r1, sp, #16
 8002278:	9308      	str	r3, [sp, #32]
 800227a:	9405      	str	r4, [sp, #20]
 800227c:	9406      	str	r4, [sp, #24]
 800227e:	9407      	str	r4, [sp, #28]
 8002280:	9409      	str	r4, [sp, #36]	; 0x24
 8002282:	f7ff ff07 	bl	8002094 <USART_Init>
 8002286:	4628      	mov	r0, r5
 8002288:	2101      	movs	r1, #1
 800228a:	f7ff ff65 	bl	8002158 <USART_Cmd>
 800228e:	2201      	movs	r2, #1
 8002290:	4628      	mov	r0, r5
 8002292:	490e      	ldr	r1, [pc, #56]	; (80022cc <uart_init+0xc0>)
 8002294:	f7ff ff70 	bl	8002178 <USART_ITConfig>
 8002298:	2325      	movs	r3, #37	; 0x25
 800229a:	f88d 4005 	strb.w	r4, [sp, #5]
 800229e:	f88d 4006 	strb.w	r4, [sp, #6]
 80022a2:	a801      	add	r0, sp, #4
 80022a4:	2401      	movs	r4, #1
 80022a6:	f88d 3004 	strb.w	r3, [sp, #4]
 80022aa:	f88d 4007 	strb.w	r4, [sp, #7]
 80022ae:	f000 fadb 	bl	8002868 <NVIC_Init>
 80022b2:	4628      	mov	r0, r5
 80022b4:	4621      	mov	r1, r4
 80022b6:	f7ff ff4f 	bl	8002158 <USART_Cmd>
 80022ba:	b00b      	add	sp, #44	; 0x2c
 80022bc:	bd30      	pop	{r4, r5, pc}
 80022be:	bf00      	nop
 80022c0:	200012ec 	.word	0x200012ec
 80022c4:	40013800 	.word	0x40013800
 80022c8:	200012f0 	.word	0x200012f0
 80022cc:	00050105 	.word	0x00050105

080022d0 <USART1_IRQHandler>:
 80022d0:	b508      	push	{r3, lr}
 80022d2:	480d      	ldr	r0, [pc, #52]	; (8002308 <USART1_IRQHandler+0x38>)
 80022d4:	490d      	ldr	r1, [pc, #52]	; (800230c <USART1_IRQHandler+0x3c>)
 80022d6:	f7ff ff68 	bl	80021aa <USART_GetITStatus>
 80022da:	b178      	cbz	r0, 80022fc <USART1_IRQHandler+0x2c>
 80022dc:	480a      	ldr	r0, [pc, #40]	; (8002308 <USART1_IRQHandler+0x38>)
 80022de:	f7ff ff46 	bl	800216e <USART_ReceiveData>
 80022e2:	4b0b      	ldr	r3, [pc, #44]	; (8002310 <USART1_IRQHandler+0x40>)
 80022e4:	490b      	ldr	r1, [pc, #44]	; (8002314 <USART1_IRQHandler+0x44>)
 80022e6:	681a      	ldr	r2, [r3, #0]
 80022e8:	b2c0      	uxtb	r0, r0
 80022ea:	5488      	strb	r0, [r1, r2]
 80022ec:	681a      	ldr	r2, [r3, #0]
 80022ee:	3201      	adds	r2, #1
 80022f0:	601a      	str	r2, [r3, #0]
 80022f2:	681a      	ldr	r2, [r3, #0]
 80022f4:	2a0f      	cmp	r2, #15
 80022f6:	bf84      	itt	hi
 80022f8:	2200      	movhi	r2, #0
 80022fa:	601a      	strhi	r2, [r3, #0]
 80022fc:	4802      	ldr	r0, [pc, #8]	; (8002308 <USART1_IRQHandler+0x38>)
 80022fe:	4903      	ldr	r1, [pc, #12]	; (800230c <USART1_IRQHandler+0x3c>)
 8002300:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8002304:	f7ff bf70 	b.w	80021e8 <USART_ClearITPendingBit>
 8002308:	40013800 	.word	0x40013800
 800230c:	00050105 	.word	0x00050105
 8002310:	200012ec 	.word	0x200012ec
 8002314:	200012dc 	.word	0x200012dc

08002318 <i2c_delay>:
 8002318:	230b      	movs	r3, #11
 800231a:	3b01      	subs	r3, #1
 800231c:	d001      	beq.n	8002322 <i2c_delay+0xa>
 800231e:	bf00      	nop
 8002320:	e7fb      	b.n	800231a <i2c_delay+0x2>
 8002322:	4770      	bx	lr

08002324 <SetLowSDA>:
 8002324:	b537      	push	{r0, r1, r2, r4, r5, lr}
 8002326:	4d0d      	ldr	r5, [pc, #52]	; (800235c <SetLowSDA+0x38>)
 8002328:	2301      	movs	r3, #1
 800232a:	2203      	movs	r2, #3
 800232c:	2480      	movs	r4, #128	; 0x80
 800232e:	f88d 3004 	strb.w	r3, [sp, #4]
 8002332:	f88d 3006 	strb.w	r3, [sp, #6]
 8002336:	4628      	mov	r0, r5
 8002338:	2300      	movs	r3, #0
 800233a:	4669      	mov	r1, sp
 800233c:	f88d 2005 	strb.w	r2, [sp, #5]
 8002340:	f88d 3007 	strb.w	r3, [sp, #7]
 8002344:	9400      	str	r4, [sp, #0]
 8002346:	f000 fad8 	bl	80028fa <GPIO_Init>
 800234a:	4628      	mov	r0, r5
 800234c:	4621      	mov	r1, r4
 800234e:	f000 fb1e 	bl	800298e <GPIO_ResetBits>
 8002352:	f7ff ffe1 	bl	8002318 <i2c_delay>
 8002356:	b003      	add	sp, #12
 8002358:	bd30      	pop	{r4, r5, pc}
 800235a:	bf00      	nop
 800235c:	48000400 	.word	0x48000400

08002360 <SetHighSDA>:
 8002360:	b537      	push	{r0, r1, r2, r4, r5, lr}
 8002362:	4d0d      	ldr	r5, [pc, #52]	; (8002398 <SetHighSDA+0x38>)
 8002364:	2203      	movs	r2, #3
 8002366:	2300      	movs	r3, #0
 8002368:	2480      	movs	r4, #128	; 0x80
 800236a:	f88d 2005 	strb.w	r2, [sp, #5]
 800236e:	4628      	mov	r0, r5
 8002370:	2201      	movs	r2, #1
 8002372:	4669      	mov	r1, sp
 8002374:	f88d 3004 	strb.w	r3, [sp, #4]
 8002378:	f88d 2006 	strb.w	r2, [sp, #6]
 800237c:	f88d 3007 	strb.w	r3, [sp, #7]
 8002380:	9400      	str	r4, [sp, #0]
 8002382:	f000 faba 	bl	80028fa <GPIO_Init>
 8002386:	4628      	mov	r0, r5
 8002388:	4621      	mov	r1, r4
 800238a:	f000 fafc 	bl	8002986 <GPIO_SetBits>
 800238e:	f7ff ffc3 	bl	8002318 <i2c_delay>
 8002392:	b003      	add	sp, #12
 8002394:	bd30      	pop	{r4, r5, pc}
 8002396:	bf00      	nop
 8002398:	48000400 	.word	0x48000400

0800239c <SetLowSCL>:
 800239c:	b508      	push	{r3, lr}
 800239e:	4804      	ldr	r0, [pc, #16]	; (80023b0 <SetLowSCL+0x14>)
 80023a0:	2140      	movs	r1, #64	; 0x40
 80023a2:	f000 faf4 	bl	800298e <GPIO_ResetBits>
 80023a6:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80023aa:	f7ff bfb5 	b.w	8002318 <i2c_delay>
 80023ae:	bf00      	nop
 80023b0:	48000400 	.word	0x48000400

080023b4 <SetHighSCL>:
 80023b4:	b508      	push	{r3, lr}
 80023b6:	4804      	ldr	r0, [pc, #16]	; (80023c8 <SetHighSCL+0x14>)
 80023b8:	2140      	movs	r1, #64	; 0x40
 80023ba:	f000 fae4 	bl	8002986 <GPIO_SetBits>
 80023be:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80023c2:	f7ff bfa9 	b.w	8002318 <i2c_delay>
 80023c6:	bf00      	nop
 80023c8:	48000400 	.word	0x48000400

080023cc <i2c_0_init>:
 80023cc:	b507      	push	{r0, r1, r2, lr}
 80023ce:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 80023d2:	2101      	movs	r1, #1
 80023d4:	f7ff fc84 	bl	8001ce0 <RCC_AHBPeriphClockCmd>
 80023d8:	23c0      	movs	r3, #192	; 0xc0
 80023da:	9300      	str	r3, [sp, #0]
 80023dc:	2301      	movs	r3, #1
 80023de:	2203      	movs	r2, #3
 80023e0:	480a      	ldr	r0, [pc, #40]	; (800240c <i2c_0_init+0x40>)
 80023e2:	f88d 3004 	strb.w	r3, [sp, #4]
 80023e6:	4669      	mov	r1, sp
 80023e8:	f88d 3006 	strb.w	r3, [sp, #6]
 80023ec:	2300      	movs	r3, #0
 80023ee:	f88d 2005 	strb.w	r2, [sp, #5]
 80023f2:	f88d 3007 	strb.w	r3, [sp, #7]
 80023f6:	f000 fa80 	bl	80028fa <GPIO_Init>
 80023fa:	f7ff ffdb 	bl	80023b4 <SetHighSCL>
 80023fe:	f7ff ff91 	bl	8002324 <SetLowSDA>
 8002402:	f7ff ffad 	bl	8002360 <SetHighSDA>
 8002406:	b003      	add	sp, #12
 8002408:	f85d fb04 	ldr.w	pc, [sp], #4
 800240c:	48000400 	.word	0x48000400

08002410 <i2cStart>:
 8002410:	b508      	push	{r3, lr}
 8002412:	f7ff ffcf 	bl	80023b4 <SetHighSCL>
 8002416:	f7ff ffa3 	bl	8002360 <SetHighSDA>
 800241a:	f7ff ffcb 	bl	80023b4 <SetHighSCL>
 800241e:	f7ff ff81 	bl	8002324 <SetLowSDA>
 8002422:	f7ff ffbb 	bl	800239c <SetLowSCL>
 8002426:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800242a:	f7ff bf99 	b.w	8002360 <SetHighSDA>

0800242e <i2cStop>:
 800242e:	b508      	push	{r3, lr}
 8002430:	f7ff ffb4 	bl	800239c <SetLowSCL>
 8002434:	f7ff ff76 	bl	8002324 <SetLowSDA>
 8002438:	f7ff ffbc 	bl	80023b4 <SetHighSCL>
 800243c:	f7ff ff72 	bl	8002324 <SetLowSDA>
 8002440:	f7ff ffb8 	bl	80023b4 <SetHighSCL>
 8002444:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8002448:	f7ff bf8a 	b.w	8002360 <SetHighSDA>

0800244c <i2cWrite>:
 800244c:	b538      	push	{r3, r4, r5, lr}
 800244e:	4604      	mov	r4, r0
 8002450:	2508      	movs	r5, #8
 8002452:	f7ff ffa3 	bl	800239c <SetLowSCL>
 8002456:	0623      	lsls	r3, r4, #24
 8002458:	d502      	bpl.n	8002460 <i2cWrite+0x14>
 800245a:	f7ff ff81 	bl	8002360 <SetHighSDA>
 800245e:	e001      	b.n	8002464 <i2cWrite+0x18>
 8002460:	f7ff ff60 	bl	8002324 <SetLowSDA>
 8002464:	3d01      	subs	r5, #1
 8002466:	f7ff ffa5 	bl	80023b4 <SetHighSCL>
 800246a:	0064      	lsls	r4, r4, #1
 800246c:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 8002470:	b2e4      	uxtb	r4, r4
 8002472:	d1ee      	bne.n	8002452 <i2cWrite+0x6>
 8002474:	f7ff ff92 	bl	800239c <SetLowSCL>
 8002478:	f7ff ff72 	bl	8002360 <SetHighSDA>
 800247c:	f7ff ff9a 	bl	80023b4 <SetHighSCL>
 8002480:	4b05      	ldr	r3, [pc, #20]	; (8002498 <i2cWrite+0x4c>)
 8002482:	8a1c      	ldrh	r4, [r3, #16]
 8002484:	b2a4      	uxth	r4, r4
 8002486:	f7ff ff89 	bl	800239c <SetLowSCL>
 800248a:	f7ff ff45 	bl	8002318 <i2c_delay>
 800248e:	f084 0080 	eor.w	r0, r4, #128	; 0x80
 8002492:	f3c0 10c0 	ubfx	r0, r0, #7, #1
 8002496:	bd38      	pop	{r3, r4, r5, pc}
 8002498:	48000400 	.word	0x48000400

0800249c <i2cRead>:
 800249c:	b570      	push	{r4, r5, r6, lr}
 800249e:	4606      	mov	r6, r0
 80024a0:	f7ff ff7c 	bl	800239c <SetLowSCL>
 80024a4:	f7ff ff5c 	bl	8002360 <SetHighSDA>
 80024a8:	2508      	movs	r5, #8
 80024aa:	2400      	movs	r4, #0
 80024ac:	f7ff ff82 	bl	80023b4 <SetHighSCL>
 80024b0:	4b0d      	ldr	r3, [pc, #52]	; (80024e8 <i2cRead+0x4c>)
 80024b2:	8a1b      	ldrh	r3, [r3, #16]
 80024b4:	0064      	lsls	r4, r4, #1
 80024b6:	061a      	lsls	r2, r3, #24
 80024b8:	b2e4      	uxtb	r4, r4
 80024ba:	bf48      	it	mi
 80024bc:	3401      	addmi	r4, #1
 80024be:	f105 35ff 	add.w	r5, r5, #4294967295
 80024c2:	bf48      	it	mi
 80024c4:	b2e4      	uxtbmi	r4, r4
 80024c6:	f7ff ff69 	bl	800239c <SetLowSCL>
 80024ca:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 80024ce:	d1ed      	bne.n	80024ac <i2cRead+0x10>
 80024d0:	b10e      	cbz	r6, 80024d6 <i2cRead+0x3a>
 80024d2:	f7ff ff27 	bl	8002324 <SetLowSDA>
 80024d6:	f7ff ff6d 	bl	80023b4 <SetHighSCL>
 80024da:	f7ff ff5f 	bl	800239c <SetLowSCL>
 80024de:	f7ff ff1b 	bl	8002318 <i2c_delay>
 80024e2:	4620      	mov	r0, r4
 80024e4:	bd70      	pop	{r4, r5, r6, pc}
 80024e6:	bf00      	nop
 80024e8:	48000400 	.word	0x48000400

080024ec <i2c_write_reg>:
 80024ec:	b570      	push	{r4, r5, r6, lr}
 80024ee:	4605      	mov	r5, r0
 80024f0:	460c      	mov	r4, r1
 80024f2:	4616      	mov	r6, r2
 80024f4:	f7ff ff8c 	bl	8002410 <i2cStart>
 80024f8:	4628      	mov	r0, r5
 80024fa:	f7ff ffa7 	bl	800244c <i2cWrite>
 80024fe:	4620      	mov	r0, r4
 8002500:	f7ff ffa4 	bl	800244c <i2cWrite>
 8002504:	4630      	mov	r0, r6
 8002506:	f7ff ffa1 	bl	800244c <i2cWrite>
 800250a:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 800250e:	f7ff bf8e 	b.w	800242e <i2cStop>

08002512 <i2c_read_reg>:
 8002512:	b538      	push	{r3, r4, r5, lr}
 8002514:	4604      	mov	r4, r0
 8002516:	460d      	mov	r5, r1
 8002518:	f7ff ff7a 	bl	8002410 <i2cStart>
 800251c:	4620      	mov	r0, r4
 800251e:	f7ff ff95 	bl	800244c <i2cWrite>
 8002522:	4628      	mov	r0, r5
 8002524:	f7ff ff92 	bl	800244c <i2cWrite>
 8002528:	f7ff ff72 	bl	8002410 <i2cStart>
 800252c:	f044 0001 	orr.w	r0, r4, #1
 8002530:	f7ff ff8c 	bl	800244c <i2cWrite>
 8002534:	2000      	movs	r0, #0
 8002536:	f7ff ffb1 	bl	800249c <i2cRead>
 800253a:	4604      	mov	r4, r0
 800253c:	f7ff ff77 	bl	800242e <i2cStop>
 8002540:	4620      	mov	r0, r4
 8002542:	bd38      	pop	{r3, r4, r5, pc}

08002544 <SystemInit>:
 8002544:	4b3b      	ldr	r3, [pc, #236]	; (8002634 <SystemInit+0xf0>)
 8002546:	f8d3 2088 	ldr.w	r2, [r3, #136]	; 0x88
 800254a:	f442 0270 	orr.w	r2, r2, #15728640	; 0xf00000
 800254e:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
 8002552:	4b39      	ldr	r3, [pc, #228]	; (8002638 <SystemInit+0xf4>)
 8002554:	681a      	ldr	r2, [r3, #0]
 8002556:	f042 0201 	orr.w	r2, r2, #1
 800255a:	601a      	str	r2, [r3, #0]
 800255c:	6859      	ldr	r1, [r3, #4]
 800255e:	4a37      	ldr	r2, [pc, #220]	; (800263c <SystemInit+0xf8>)
 8002560:	400a      	ands	r2, r1
 8002562:	605a      	str	r2, [r3, #4]
 8002564:	681a      	ldr	r2, [r3, #0]
 8002566:	f022 7284 	bic.w	r2, r2, #17301504	; 0x1080000
 800256a:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
 800256e:	601a      	str	r2, [r3, #0]
 8002570:	681a      	ldr	r2, [r3, #0]
 8002572:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 8002576:	601a      	str	r2, [r3, #0]
 8002578:	685a      	ldr	r2, [r3, #4]
 800257a:	f422 02fe 	bic.w	r2, r2, #8323072	; 0x7f0000
 800257e:	605a      	str	r2, [r3, #4]
 8002580:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8002582:	f022 020f 	bic.w	r2, r2, #15
 8002586:	62da      	str	r2, [r3, #44]	; 0x2c
 8002588:	6b19      	ldr	r1, [r3, #48]	; 0x30
 800258a:	4a2d      	ldr	r2, [pc, #180]	; (8002640 <SystemInit+0xfc>)
 800258c:	b082      	sub	sp, #8
 800258e:	400a      	ands	r2, r1
 8002590:	631a      	str	r2, [r3, #48]	; 0x30
 8002592:	2200      	movs	r2, #0
 8002594:	609a      	str	r2, [r3, #8]
 8002596:	9200      	str	r2, [sp, #0]
 8002598:	9201      	str	r2, [sp, #4]
 800259a:	681a      	ldr	r2, [r3, #0]
 800259c:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
 80025a0:	601a      	str	r2, [r3, #0]
 80025a2:	4b25      	ldr	r3, [pc, #148]	; (8002638 <SystemInit+0xf4>)
 80025a4:	681a      	ldr	r2, [r3, #0]
 80025a6:	f402 3200 	and.w	r2, r2, #131072	; 0x20000
 80025aa:	9201      	str	r2, [sp, #4]
 80025ac:	9a00      	ldr	r2, [sp, #0]
 80025ae:	3201      	adds	r2, #1
 80025b0:	9200      	str	r2, [sp, #0]
 80025b2:	9a01      	ldr	r2, [sp, #4]
 80025b4:	b91a      	cbnz	r2, 80025be <SystemInit+0x7a>
 80025b6:	9a00      	ldr	r2, [sp, #0]
 80025b8:	f5b2 4fa0 	cmp.w	r2, #20480	; 0x5000
 80025bc:	d1f1      	bne.n	80025a2 <SystemInit+0x5e>
 80025be:	681b      	ldr	r3, [r3, #0]
 80025c0:	f413 3300 	ands.w	r3, r3, #131072	; 0x20000
 80025c4:	bf18      	it	ne
 80025c6:	2301      	movne	r3, #1
 80025c8:	9301      	str	r3, [sp, #4]
 80025ca:	9b01      	ldr	r3, [sp, #4]
 80025cc:	2b01      	cmp	r3, #1
 80025ce:	d005      	beq.n	80025dc <SystemInit+0x98>
 80025d0:	4b18      	ldr	r3, [pc, #96]	; (8002634 <SystemInit+0xf0>)
 80025d2:	f04f 6200 	mov.w	r2, #134217728	; 0x8000000
 80025d6:	609a      	str	r2, [r3, #8]
 80025d8:	b002      	add	sp, #8
 80025da:	4770      	bx	lr
 80025dc:	4b19      	ldr	r3, [pc, #100]	; (8002644 <SystemInit+0x100>)
 80025de:	2212      	movs	r2, #18
 80025e0:	601a      	str	r2, [r3, #0]
 80025e2:	f5a3 5380 	sub.w	r3, r3, #4096	; 0x1000
 80025e6:	685a      	ldr	r2, [r3, #4]
 80025e8:	605a      	str	r2, [r3, #4]
 80025ea:	685a      	ldr	r2, [r3, #4]
 80025ec:	605a      	str	r2, [r3, #4]
 80025ee:	685a      	ldr	r2, [r3, #4]
 80025f0:	f442 6280 	orr.w	r2, r2, #1024	; 0x400
 80025f4:	605a      	str	r2, [r3, #4]
 80025f6:	685a      	ldr	r2, [r3, #4]
 80025f8:	f422 127c 	bic.w	r2, r2, #4128768	; 0x3f0000
 80025fc:	605a      	str	r2, [r3, #4]
 80025fe:	685a      	ldr	r2, [r3, #4]
 8002600:	f442 12e8 	orr.w	r2, r2, #1900544	; 0x1d0000
 8002604:	605a      	str	r2, [r3, #4]
 8002606:	681a      	ldr	r2, [r3, #0]
 8002608:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
 800260c:	601a      	str	r2, [r3, #0]
 800260e:	6819      	ldr	r1, [r3, #0]
 8002610:	4a09      	ldr	r2, [pc, #36]	; (8002638 <SystemInit+0xf4>)
 8002612:	0189      	lsls	r1, r1, #6
 8002614:	d5fb      	bpl.n	800260e <SystemInit+0xca>
 8002616:	6853      	ldr	r3, [r2, #4]
 8002618:	f023 0303 	bic.w	r3, r3, #3
 800261c:	6053      	str	r3, [r2, #4]
 800261e:	6853      	ldr	r3, [r2, #4]
 8002620:	f043 0302 	orr.w	r3, r3, #2
 8002624:	6053      	str	r3, [r2, #4]
 8002626:	4b04      	ldr	r3, [pc, #16]	; (8002638 <SystemInit+0xf4>)
 8002628:	685b      	ldr	r3, [r3, #4]
 800262a:	f003 030c 	and.w	r3, r3, #12
 800262e:	2b08      	cmp	r3, #8
 8002630:	d1f9      	bne.n	8002626 <SystemInit+0xe2>
 8002632:	e7cd      	b.n	80025d0 <SystemInit+0x8c>
 8002634:	e000ed00 	.word	0xe000ed00
 8002638:	40021000 	.word	0x40021000
 800263c:	f87fc00c 	.word	0xf87fc00c
 8002640:	ff00fccc 	.word	0xff00fccc
 8002644:	40022000 	.word	0x40022000

08002648 <sys_tick_init>:
 8002648:	4b05      	ldr	r3, [pc, #20]	; (8002660 <sys_tick_init+0x18>)
 800264a:	4a06      	ldr	r2, [pc, #24]	; (8002664 <sys_tick_init+0x1c>)
 800264c:	605a      	str	r2, [r3, #4]
 800264e:	4a06      	ldr	r2, [pc, #24]	; (8002668 <sys_tick_init+0x20>)
 8002650:	21f0      	movs	r1, #240	; 0xf0
 8002652:	f882 1023 	strb.w	r1, [r2, #35]	; 0x23
 8002656:	2200      	movs	r2, #0
 8002658:	609a      	str	r2, [r3, #8]
 800265a:	2207      	movs	r2, #7
 800265c:	601a      	str	r2, [r3, #0]
 800265e:	4770      	bx	lr
 8002660:	e000e010 	.word	0xe000e010
 8002664:	00029040 	.word	0x00029040
 8002668:	e000ed00 	.word	0xe000ed00

0800266c <sleep>:
 800266c:	bf30      	wfi
 800266e:	4770      	bx	lr

08002670 <sytem_clock_init>:
 8002670:	f7ff bf68 	b.w	8002544 <SystemInit>

08002674 <pwm_set>:
 8002674:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8002678:	b086      	sub	sp, #24
 800267a:	2370      	movs	r3, #112	; 0x70
 800267c:	9301      	str	r3, [sp, #4]
 800267e:	2301      	movs	r3, #1
 8002680:	f8ad 3008 	strh.w	r3, [sp, #8]
 8002684:	2304      	movs	r3, #4
 8002686:	f8ad 300a 	strh.w	r3, [sp, #10]
 800268a:	4f17      	ldr	r7, [pc, #92]	; (80026e8 <pwm_set+0x74>)
 800268c:	4c17      	ldr	r4, [pc, #92]	; (80026ec <pwm_set+0x78>)
 800268e:	2302      	movs	r3, #2
 8002690:	f8ad 3010 	strh.w	r3, [sp, #16]
 8002694:	2300      	movs	r3, #0
 8002696:	f8ad 3012 	strh.w	r3, [sp, #18]
 800269a:	f8ad 3016 	strh.w	r3, [sp, #22]
 800269e:	683b      	ldr	r3, [r7, #0]
 80026a0:	f242 7610 	movw	r6, #10000	; 0x2710
 80026a4:	fbb3 f3f6 	udiv	r3, r3, r6
 80026a8:	3b02      	subs	r3, #2
 80026aa:	4358      	muls	r0, r3
 80026ac:	2564      	movs	r5, #100	; 0x64
 80026ae:	fbb0 f3f5 	udiv	r3, r0, r5
 80026b2:	f44f 7280 	mov.w	r2, #256	; 0x100
 80026b6:	4620      	mov	r0, r4
 80026b8:	4688      	mov	r8, r1
 80026ba:	a901      	add	r1, sp, #4
 80026bc:	f8ad 2014 	strh.w	r2, [sp, #20]
 80026c0:	9303      	str	r3, [sp, #12]
 80026c2:	f7ff fb95 	bl	8001df0 <TIM_OC1Init>
 80026c6:	683b      	ldr	r3, [r7, #0]
 80026c8:	fbb3 f6f6 	udiv	r6, r3, r6
 80026cc:	3e02      	subs	r6, #2
 80026ce:	fb06 f808 	mul.w	r8, r6, r8
 80026d2:	fbb8 f5f5 	udiv	r5, r8, r5
 80026d6:	4620      	mov	r0, r4
 80026d8:	a901      	add	r1, sp, #4
 80026da:	9503      	str	r5, [sp, #12]
 80026dc:	f7ff fbce 	bl	8001e7c <TIM_OC2Init>
 80026e0:	b006      	add	sp, #24
 80026e2:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80026e6:	bf00      	nop
 80026e8:	200001e0 	.word	0x200001e0
 80026ec:	40012c00 	.word	0x40012c00

080026f0 <pwm_init>:
 80026f0:	b530      	push	{r4, r5, lr}
 80026f2:	f44f 6000 	mov.w	r0, #2048	; 0x800
 80026f6:	b087      	sub	sp, #28
 80026f8:	2101      	movs	r1, #1
 80026fa:	f7ff faff 	bl	8001cfc <RCC_APB2PeriphClockCmd>
 80026fe:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 8002702:	2101      	movs	r1, #1
 8002704:	f7ff faec 	bl	8001ce0 <RCC_AHBPeriphClockCmd>
 8002708:	4c1d      	ldr	r4, [pc, #116]	; (8002780 <pwm_init+0x90>)
 800270a:	4d1e      	ldr	r5, [pc, #120]	; (8002784 <pwm_init+0x94>)
 800270c:	f44f 43c0 	mov.w	r3, #24576	; 0x6000
 8002710:	9301      	str	r3, [sp, #4]
 8002712:	2302      	movs	r3, #2
 8002714:	f88d 3008 	strb.w	r3, [sp, #8]
 8002718:	4620      	mov	r0, r4
 800271a:	2303      	movs	r3, #3
 800271c:	a901      	add	r1, sp, #4
 800271e:	f88d 3009 	strb.w	r3, [sp, #9]
 8002722:	f000 f8ea 	bl	80028fa <GPIO_Init>
 8002726:	4620      	mov	r0, r4
 8002728:	210d      	movs	r1, #13
 800272a:	2206      	movs	r2, #6
 800272c:	f000 f933 	bl	8002996 <GPIO_PinAFConfig>
 8002730:	4620      	mov	r0, r4
 8002732:	210e      	movs	r1, #14
 8002734:	2206      	movs	r2, #6
 8002736:	f000 f92e 	bl	8002996 <GPIO_PinAFConfig>
 800273a:	4b13      	ldr	r3, [pc, #76]	; (8002788 <pwm_init+0x98>)
 800273c:	681a      	ldr	r2, [r3, #0]
 800273e:	f242 7310 	movw	r3, #10000	; 0x2710
 8002742:	fbb2 f3f3 	udiv	r3, r2, r3
 8002746:	2400      	movs	r4, #0
 8002748:	3b01      	subs	r3, #1
 800274a:	4628      	mov	r0, r5
 800274c:	a903      	add	r1, sp, #12
 800274e:	9304      	str	r3, [sp, #16]
 8002750:	f8ad 400c 	strh.w	r4, [sp, #12]
 8002754:	f8ad 400e 	strh.w	r4, [sp, #14]
 8002758:	f8ad 4014 	strh.w	r4, [sp, #20]
 800275c:	f8ad 4016 	strh.w	r4, [sp, #22]
 8002760:	f7ff fae8 	bl	8001d34 <TIM_TimeBaseInit>
 8002764:	4620      	mov	r0, r4
 8002766:	4621      	mov	r1, r4
 8002768:	f7ff ff84 	bl	8002674 <pwm_set>
 800276c:	4628      	mov	r0, r5
 800276e:	2101      	movs	r1, #1
 8002770:	f7ff fb30 	bl	8001dd4 <TIM_Cmd>
 8002774:	4628      	mov	r0, r5
 8002776:	2101      	movs	r1, #1
 8002778:	f7ff fbbe 	bl	8001ef8 <TIM_CtrlPWMOutputs>
 800277c:	b007      	add	sp, #28
 800277e:	bd30      	pop	{r4, r5, pc}
 8002780:	48000400 	.word	0x48000400
 8002784:	40012c00 	.word	0x40012c00
 8002788:	200001e0 	.word	0x200001e0

0800278c <drv8834_run>:
 800278c:	1e02      	subs	r2, r0, #0
 800278e:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8002792:	dd07      	ble.n	80027a4 <drv8834_run+0x18>
 8002794:	8d18      	ldrh	r0, [r3, #40]	; 0x28
 8002796:	ea6f 4040 	mvn.w	r0, r0, lsl #17
 800279a:	ea6f 4050 	mvn.w	r0, r0, lsr #17
 800279e:	b280      	uxth	r0, r0
 80027a0:	8518      	strh	r0, [r3, #40]	; 0x28
 80027a2:	e005      	b.n	80027b0 <drv8834_run+0x24>
 80027a4:	6998      	ldr	r0, [r3, #24]
 80027a6:	4252      	negs	r2, r2
 80027a8:	f440 4000 	orr.w	r0, r0, #32768	; 0x8000
 80027ac:	6198      	str	r0, [r3, #24]
 80027ae:	b212      	sxth	r2, r2
 80027b0:	2900      	cmp	r1, #0
 80027b2:	4b0c      	ldr	r3, [pc, #48]	; (80027e4 <drv8834_run+0x58>)
 80027b4:	dd05      	ble.n	80027c2 <drv8834_run+0x36>
 80027b6:	8d18      	ldrh	r0, [r3, #40]	; 0x28
 80027b8:	b280      	uxth	r0, r0
 80027ba:	f040 0020 	orr.w	r0, r0, #32
 80027be:	8518      	strh	r0, [r3, #40]	; 0x28
 80027c0:	e005      	b.n	80027ce <drv8834_run+0x42>
 80027c2:	6998      	ldr	r0, [r3, #24]
 80027c4:	4249      	negs	r1, r1
 80027c6:	f040 0020 	orr.w	r0, r0, #32
 80027ca:	6198      	str	r0, [r3, #24]
 80027cc:	b209      	sxth	r1, r1
 80027ce:	2964      	cmp	r1, #100	; 0x64
 80027d0:	bfb4      	ite	lt
 80027d2:	4608      	movlt	r0, r1
 80027d4:	2064      	movge	r0, #100	; 0x64
 80027d6:	2a64      	cmp	r2, #100	; 0x64
 80027d8:	bfb4      	ite	lt
 80027da:	4611      	movlt	r1, r2
 80027dc:	2164      	movge	r1, #100	; 0x64
 80027de:	f7ff bf49 	b.w	8002674 <pwm_set>
 80027e2:	bf00      	nop
 80027e4:	48000400 	.word	0x48000400

080027e8 <drv8834_init>:
 80027e8:	e92d 41f3 	stmdb	sp!, {r0, r1, r4, r5, r6, r7, r8, lr}
 80027ec:	4f1d      	ldr	r7, [pc, #116]	; (8002864 <drv8834_init+0x7c>)
 80027ee:	2400      	movs	r4, #0
 80027f0:	2601      	movs	r6, #1
 80027f2:	2503      	movs	r5, #3
 80027f4:	f04f 0810 	mov.w	r8, #16
 80027f8:	4638      	mov	r0, r7
 80027fa:	4669      	mov	r1, sp
 80027fc:	f8cd 8000 	str.w	r8, [sp]
 8002800:	f88d 6004 	strb.w	r6, [sp, #4]
 8002804:	f88d 4006 	strb.w	r4, [sp, #6]
 8002808:	f88d 5005 	strb.w	r5, [sp, #5]
 800280c:	f88d 4007 	strb.w	r4, [sp, #7]
 8002810:	f000 f873 	bl	80028fa <GPIO_Init>
 8002814:	f8a7 8028 	strh.w	r8, [r7, #40]	; 0x28
 8002818:	2320      	movs	r3, #32
 800281a:	4638      	mov	r0, r7
 800281c:	4669      	mov	r1, sp
 800281e:	9300      	str	r3, [sp, #0]
 8002820:	f88d 6004 	strb.w	r6, [sp, #4]
 8002824:	f88d 4006 	strb.w	r4, [sp, #6]
 8002828:	f88d 5005 	strb.w	r5, [sp, #5]
 800282c:	f88d 4007 	strb.w	r4, [sp, #7]
 8002830:	f000 f863 	bl	80028fa <GPIO_Init>
 8002834:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8002838:	4669      	mov	r1, sp
 800283a:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 800283e:	9300      	str	r3, [sp, #0]
 8002840:	f88d 6004 	strb.w	r6, [sp, #4]
 8002844:	f88d 4006 	strb.w	r4, [sp, #6]
 8002848:	f88d 5005 	strb.w	r5, [sp, #5]
 800284c:	f88d 4007 	strb.w	r4, [sp, #7]
 8002850:	f000 f853 	bl	80028fa <GPIO_Init>
 8002854:	4620      	mov	r0, r4
 8002856:	4621      	mov	r1, r4
 8002858:	f7ff ff98 	bl	800278c <drv8834_run>
 800285c:	b002      	add	sp, #8
 800285e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8002862:	bf00      	nop
 8002864:	48000400 	.word	0x48000400

08002868 <NVIC_Init>:
 8002868:	b510      	push	{r4, lr}
 800286a:	bf00      	nop
 800286c:	bf00      	nop
 800286e:	bf00      	nop
 8002870:	78c2      	ldrb	r2, [r0, #3]
 8002872:	7803      	ldrb	r3, [r0, #0]
 8002874:	b30a      	cbz	r2, 80028ba <NVIC_Init+0x52>
 8002876:	4a16      	ldr	r2, [pc, #88]	; (80028d0 <NVIC_Init+0x68>)
 8002878:	7844      	ldrb	r4, [r0, #1]
 800287a:	68d2      	ldr	r2, [r2, #12]
 800287c:	43d2      	mvns	r2, r2
 800287e:	f3c2 2202 	ubfx	r2, r2, #8, #3
 8002882:	f1c2 0104 	rsb	r1, r2, #4
 8002886:	b2c9      	uxtb	r1, r1
 8002888:	fa04 f101 	lsl.w	r1, r4, r1
 800288c:	240f      	movs	r4, #15
 800288e:	fa44 f202 	asr.w	r2, r4, r2
 8002892:	7884      	ldrb	r4, [r0, #2]
 8002894:	b2c9      	uxtb	r1, r1
 8002896:	4022      	ands	r2, r4
 8002898:	430a      	orrs	r2, r1
 800289a:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
 800289e:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
 80028a2:	0112      	lsls	r2, r2, #4
 80028a4:	b2d2      	uxtb	r2, r2
 80028a6:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
 80028aa:	7803      	ldrb	r3, [r0, #0]
 80028ac:	2201      	movs	r2, #1
 80028ae:	0959      	lsrs	r1, r3, #5
 80028b0:	f003 031f 	and.w	r3, r3, #31
 80028b4:	fa02 f303 	lsl.w	r3, r2, r3
 80028b8:	e006      	b.n	80028c8 <NVIC_Init+0x60>
 80028ba:	0959      	lsrs	r1, r3, #5
 80028bc:	2201      	movs	r2, #1
 80028be:	f003 031f 	and.w	r3, r3, #31
 80028c2:	fa02 f303 	lsl.w	r3, r2, r3
 80028c6:	3120      	adds	r1, #32
 80028c8:	4a02      	ldr	r2, [pc, #8]	; (80028d4 <NVIC_Init+0x6c>)
 80028ca:	f842 3021 	str.w	r3, [r2, r1, lsl #2]
 80028ce:	bd10      	pop	{r4, pc}
 80028d0:	e000ed00 	.word	0xe000ed00
 80028d4:	e000e100 	.word	0xe000e100

080028d8 <lib_low_level_init>:
 80028d8:	b508      	push	{r3, lr}
 80028da:	f7ff fec9 	bl	8002670 <sytem_clock_init>
 80028de:	f000 f871 	bl	80029c4 <gpio_init>
 80028e2:	f7ff fc93 	bl	800220c <uart_init>
 80028e6:	f7ff fb17 	bl	8001f18 <timer_init>
 80028ea:	f7ff ff01 	bl	80026f0 <pwm_init>
 80028ee:	f7ff ff7b 	bl	80027e8 <drv8834_init>
 80028f2:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80028f6:	f7ff bd69 	b.w	80023cc <i2c_0_init>

080028fa <GPIO_Init>:
 80028fa:	b5f0      	push	{r4, r5, r6, r7, lr}
 80028fc:	bf00      	nop
 80028fe:	bf00      	nop
 8002900:	bf00      	nop
 8002902:	bf00      	nop
 8002904:	2300      	movs	r3, #0
 8002906:	680e      	ldr	r6, [r1, #0]
 8002908:	461a      	mov	r2, r3
 800290a:	2501      	movs	r5, #1
 800290c:	4095      	lsls	r5, r2
 800290e:	ea05 0406 	and.w	r4, r5, r6
 8002912:	42ac      	cmp	r4, r5
 8002914:	d131      	bne.n	800297a <GPIO_Init+0x80>
 8002916:	790d      	ldrb	r5, [r1, #4]
 8002918:	1e6f      	subs	r7, r5, #1
 800291a:	b2ff      	uxtb	r7, r7
 800291c:	2f01      	cmp	r7, #1
 800291e:	d81c      	bhi.n	800295a <GPIO_Init+0x60>
 8002920:	bf00      	nop
 8002922:	f04f 0c03 	mov.w	ip, #3
 8002926:	6887      	ldr	r7, [r0, #8]
 8002928:	fa0c fc03 	lsl.w	ip, ip, r3
 800292c:	ea27 070c 	bic.w	r7, r7, ip
 8002930:	6087      	str	r7, [r0, #8]
 8002932:	f891 c005 	ldrb.w	ip, [r1, #5]
 8002936:	6887      	ldr	r7, [r0, #8]
 8002938:	fa0c fc03 	lsl.w	ip, ip, r3
 800293c:	ea4c 0707 	orr.w	r7, ip, r7
 8002940:	6087      	str	r7, [r0, #8]
 8002942:	bf00      	nop
 8002944:	8887      	ldrh	r7, [r0, #4]
 8002946:	b2bf      	uxth	r7, r7
 8002948:	ea27 0404 	bic.w	r4, r7, r4
 800294c:	8084      	strh	r4, [r0, #4]
 800294e:	798c      	ldrb	r4, [r1, #6]
 8002950:	8887      	ldrh	r7, [r0, #4]
 8002952:	4094      	lsls	r4, r2
 8002954:	433c      	orrs	r4, r7
 8002956:	b2a4      	uxth	r4, r4
 8002958:	8084      	strh	r4, [r0, #4]
 800295a:	2403      	movs	r4, #3
 800295c:	6807      	ldr	r7, [r0, #0]
 800295e:	409c      	lsls	r4, r3
 8002960:	43e4      	mvns	r4, r4
 8002962:	4027      	ands	r7, r4
 8002964:	6007      	str	r7, [r0, #0]
 8002966:	6807      	ldr	r7, [r0, #0]
 8002968:	409d      	lsls	r5, r3
 800296a:	433d      	orrs	r5, r7
 800296c:	6005      	str	r5, [r0, #0]
 800296e:	68c5      	ldr	r5, [r0, #12]
 8002970:	402c      	ands	r4, r5
 8002972:	79cd      	ldrb	r5, [r1, #7]
 8002974:	409d      	lsls	r5, r3
 8002976:	432c      	orrs	r4, r5
 8002978:	60c4      	str	r4, [r0, #12]
 800297a:	3201      	adds	r2, #1
 800297c:	2a10      	cmp	r2, #16
 800297e:	f103 0302 	add.w	r3, r3, #2
 8002982:	d1c2      	bne.n	800290a <GPIO_Init+0x10>
 8002984:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002986 <GPIO_SetBits>:
 8002986:	bf00      	nop
 8002988:	bf00      	nop
 800298a:	6181      	str	r1, [r0, #24]
 800298c:	4770      	bx	lr

0800298e <GPIO_ResetBits>:
 800298e:	bf00      	nop
 8002990:	bf00      	nop
 8002992:	8501      	strh	r1, [r0, #40]	; 0x28
 8002994:	4770      	bx	lr

08002996 <GPIO_PinAFConfig>:
 8002996:	b510      	push	{r4, lr}
 8002998:	bf00      	nop
 800299a:	bf00      	nop
 800299c:	bf00      	nop
 800299e:	f001 0307 	and.w	r3, r1, #7
 80029a2:	08c9      	lsrs	r1, r1, #3
 80029a4:	eb00 0081 	add.w	r0, r0, r1, lsl #2
 80029a8:	009b      	lsls	r3, r3, #2
 80029aa:	6a04      	ldr	r4, [r0, #32]
 80029ac:	210f      	movs	r1, #15
 80029ae:	4099      	lsls	r1, r3
 80029b0:	ea24 0101 	bic.w	r1, r4, r1
 80029b4:	6201      	str	r1, [r0, #32]
 80029b6:	6a01      	ldr	r1, [r0, #32]
 80029b8:	fa02 f303 	lsl.w	r3, r2, r3
 80029bc:	430b      	orrs	r3, r1
 80029be:	6203      	str	r3, [r0, #32]
 80029c0:	bd10      	pop	{r4, pc}
	...

080029c4 <gpio_init>:
 80029c4:	e92d 41f3 	stmdb	sp!, {r0, r1, r4, r5, r6, r7, r8, lr}
 80029c8:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 80029cc:	2101      	movs	r1, #1
 80029ce:	f7ff f987 	bl	8001ce0 <RCC_AHBPeriphClockCmd>
 80029d2:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 80029d6:	2101      	movs	r1, #1
 80029d8:	f7ff f982 	bl	8001ce0 <RCC_AHBPeriphClockCmd>
 80029dc:	f44f 2000 	mov.w	r0, #524288	; 0x80000
 80029e0:	2101      	movs	r1, #1
 80029e2:	f7ff f97d 	bl	8001ce0 <RCC_AHBPeriphClockCmd>
 80029e6:	2400      	movs	r4, #0
 80029e8:	2503      	movs	r5, #3
 80029ea:	2601      	movs	r6, #1
 80029ec:	f44f 4800 	mov.w	r8, #32768	; 0x8000
 80029f0:	4669      	mov	r1, sp
 80029f2:	4825      	ldr	r0, [pc, #148]	; (8002a88 <gpio_init+0xc4>)
 80029f4:	f8cd 8000 	str.w	r8, [sp]
 80029f8:	f88d 6004 	strb.w	r6, [sp, #4]
 80029fc:	f88d 4006 	strb.w	r4, [sp, #6]
 8002a00:	f88d 5005 	strb.w	r5, [sp, #5]
 8002a04:	f88d 4007 	strb.w	r4, [sp, #7]
 8002a08:	f7ff ff77 	bl	80028fa <GPIO_Init>
 8002a0c:	f44f 5300 	mov.w	r3, #8192	; 0x2000
 8002a10:	4669      	mov	r1, sp
 8002a12:	481e      	ldr	r0, [pc, #120]	; (8002a8c <gpio_init+0xc8>)
 8002a14:	9300      	str	r3, [sp, #0]
 8002a16:	f88d 6004 	strb.w	r6, [sp, #4]
 8002a1a:	f88d 4006 	strb.w	r4, [sp, #6]
 8002a1e:	f88d 5005 	strb.w	r5, [sp, #5]
 8002a22:	f88d 4007 	strb.w	r4, [sp, #7]
 8002a26:	f7ff ff68 	bl	80028fa <GPIO_Init>
 8002a2a:	f44f 7300 	mov.w	r3, #512	; 0x200
 8002a2e:	4669      	mov	r1, sp
 8002a30:	4815      	ldr	r0, [pc, #84]	; (8002a88 <gpio_init+0xc4>)
 8002a32:	9300      	str	r3, [sp, #0]
 8002a34:	4f16      	ldr	r7, [pc, #88]	; (8002a90 <gpio_init+0xcc>)
 8002a36:	f88d 4004 	strb.w	r4, [sp, #4]
 8002a3a:	f88d 5005 	strb.w	r5, [sp, #5]
 8002a3e:	f88d 4007 	strb.w	r4, [sp, #7]
 8002a42:	f7ff ff5a 	bl	80028fa <GPIO_Init>
 8002a46:	f44f 6380 	mov.w	r3, #1024	; 0x400
 8002a4a:	9300      	str	r3, [sp, #0]
 8002a4c:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8002a50:	2302      	movs	r3, #2
 8002a52:	4669      	mov	r1, sp
 8002a54:	f88d 3007 	strb.w	r3, [sp, #7]
 8002a58:	603c      	str	r4, [r7, #0]
 8002a5a:	f88d 4004 	strb.w	r4, [sp, #4]
 8002a5e:	f88d 5005 	strb.w	r5, [sp, #5]
 8002a62:	f7ff ff4a 	bl	80028fa <GPIO_Init>
 8002a66:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8002a6a:	f44f 5200 	mov.w	r2, #8192	; 0x2000
 8002a6e:	8a1b      	ldrh	r3, [r3, #16]
 8002a70:	f413 6f80 	tst.w	r3, #1024	; 0x400
 8002a74:	4b04      	ldr	r3, [pc, #16]	; (8002a88 <gpio_init+0xc4>)
 8002a76:	bf18      	it	ne
 8002a78:	603e      	strne	r6, [r7, #0]
 8002a7a:	f8c3 8018 	str.w	r8, [r3, #24]
 8002a7e:	f8c3 2418 	str.w	r2, [r3, #1048]	; 0x418
 8002a82:	b002      	add	sp, #8
 8002a84:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8002a88:	48000400 	.word	0x48000400
 8002a8c:	48000800 	.word	0x48000800
 8002a90:	200012f4 	.word	0x200012f4

08002a94 <led_on>:
 8002a94:	0402      	lsls	r2, r0, #16
 8002a96:	d503      	bpl.n	8002aa0 <led_on+0xc>
 8002a98:	4b05      	ldr	r3, [pc, #20]	; (8002ab0 <led_on+0x1c>)
 8002a9a:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 8002a9e:	619a      	str	r2, [r3, #24]
 8002aa0:	0483      	lsls	r3, r0, #18
 8002aa2:	d503      	bpl.n	8002aac <led_on+0x18>
 8002aa4:	4b03      	ldr	r3, [pc, #12]	; (8002ab4 <led_on+0x20>)
 8002aa6:	f44f 5200 	mov.w	r2, #8192	; 0x2000
 8002aaa:	851a      	strh	r2, [r3, #40]	; 0x28
 8002aac:	4770      	bx	lr
 8002aae:	bf00      	nop
 8002ab0:	48000400 	.word	0x48000400
 8002ab4:	48000800 	.word	0x48000800

08002ab8 <led_off>:
 8002ab8:	0403      	lsls	r3, r0, #16
 8002aba:	d503      	bpl.n	8002ac4 <led_off+0xc>
 8002abc:	4b05      	ldr	r3, [pc, #20]	; (8002ad4 <led_off+0x1c>)
 8002abe:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 8002ac2:	851a      	strh	r2, [r3, #40]	; 0x28
 8002ac4:	0481      	lsls	r1, r0, #18
 8002ac6:	d503      	bpl.n	8002ad0 <led_off+0x18>
 8002ac8:	4b03      	ldr	r3, [pc, #12]	; (8002ad8 <led_off+0x20>)
 8002aca:	f44f 5200 	mov.w	r2, #8192	; 0x2000
 8002ace:	619a      	str	r2, [r3, #24]
 8002ad0:	4770      	bx	lr
 8002ad2:	bf00      	nop
 8002ad4:	48000400 	.word	0x48000400
 8002ad8:	48000800 	.word	0x48000800

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
 8002af4:	200012f4 	.word	0x200012f4

08002af8 <Default_Handler>:
 8002af8:	4668      	mov	r0, sp
 8002afa:	f020 0107 	bic.w	r1, r0, #7
 8002afe:	468d      	mov	sp, r1
 8002b00:	bf00      	nop
 8002b02:	e7fd      	b.n	8002b00 <Default_Handler+0x8>

08002b04 <HardFault_Handler>:
 8002b04:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8002b08:	f7ff ffc4 	bl	8002a94 <led_on>
 8002b0c:	4b06      	ldr	r3, [pc, #24]	; (8002b28 <HardFault_Handler+0x24>)
 8002b0e:	3b01      	subs	r3, #1
 8002b10:	d001      	beq.n	8002b16 <HardFault_Handler+0x12>
 8002b12:	bf00      	nop
 8002b14:	e7fb      	b.n	8002b0e <HardFault_Handler+0xa>
 8002b16:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8002b1a:	f7ff ffcd 	bl	8002ab8 <led_off>
 8002b1e:	4b02      	ldr	r3, [pc, #8]	; (8002b28 <HardFault_Handler+0x24>)
 8002b20:	3b01      	subs	r3, #1
 8002b22:	d0ef      	beq.n	8002b04 <HardFault_Handler>
 8002b24:	bf00      	nop
 8002b26:	e7fb      	b.n	8002b20 <HardFault_Handler+0x1c>
 8002b28:	00989681 	.word	0x00989681

08002b2c <_reset_init>:
 8002b2c:	4a0e      	ldr	r2, [pc, #56]	; (8002b68 <_reset_init+0x3c>)
 8002b2e:	480f      	ldr	r0, [pc, #60]	; (8002b6c <_reset_init+0x40>)
 8002b30:	1a80      	subs	r0, r0, r2
 8002b32:	1080      	asrs	r0, r0, #2
 8002b34:	2300      	movs	r3, #0
 8002b36:	4283      	cmp	r3, r0
 8002b38:	d006      	beq.n	8002b48 <_reset_init+0x1c>
 8002b3a:	490d      	ldr	r1, [pc, #52]	; (8002b70 <_reset_init+0x44>)
 8002b3c:	f851 1023 	ldr.w	r1, [r1, r3, lsl #2]
 8002b40:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
 8002b44:	3301      	adds	r3, #1
 8002b46:	e7f6      	b.n	8002b36 <_reset_init+0xa>
 8002b48:	4b0a      	ldr	r3, [pc, #40]	; (8002b74 <_reset_init+0x48>)
 8002b4a:	f8d3 2088 	ldr.w	r2, [r3, #136]	; 0x88
 8002b4e:	f442 0270 	orr.w	r2, r2, #15728640	; 0xf00000
 8002b52:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
 8002b56:	f503 730c 	add.w	r3, r3, #560	; 0x230
 8002b5a:	685a      	ldr	r2, [r3, #4]
 8002b5c:	f022 4240 	bic.w	r2, r2, #3221225472	; 0xc0000000
 8002b60:	605a      	str	r2, [r3, #4]
 8002b62:	f7fe bf1d 	b.w	80019a0 <main>
 8002b66:	bf00      	nop
 8002b68:	20000000 	.word	0x20000000
 8002b6c:	200001e4 	.word	0x200001e4
 8002b70:	08002c28 	.word	0x08002c28
 8002b74:	e000ed00 	.word	0xe000ed00

08002b78 <_init>:
 8002b78:	e1a0c00d 	mov	ip, sp
 8002b7c:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
 8002b80:	e24cb004 	sub	fp, ip, #4
 8002b84:	e24bd028 	sub	sp, fp, #40	; 0x28
 8002b88:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
 8002b8c:	e12fff1e 	bx	lr

08002b90 <_fini>:
 8002b90:	e1a0c00d 	mov	ip, sp
 8002b94:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
 8002b98:	e24cb004 	sub	fp, ip, #4
 8002b9c:	e24bd028 	sub	sp, fp, #40	; 0x28
 8002ba0:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
 8002ba4:	e12fff1e 	bx	lr
 8002ba8:	69647473 	.word	0x69647473
 8002bac:	6e69206f 	.word	0x6e69206f
 8002bb0:	64207469 	.word	0x64207469
 8002bb4:	0a656e6f 	.word	0x0a656e6f
 8002bb8:	00          	.byte	0x00
 8002bb9:	65          	.byte	0x65
 8002bba:	7272      	.short	0x7272
 8002bbc:	6320726f 	.word	0x6320726f
 8002bc0:	2065646f 	.word	0x2065646f
 8002bc4:	253a7525 	.word	0x253a7525
 8002bc8:	0a75      	.short	0x0a75
 8002bca:	00          	.byte	0x00
 8002bcb:	0a          	.byte	0x0a
 8002bcc:	636c6577 	.word	0x636c6577
 8002bd0:	20656d6f 	.word	0x20656d6f
 8002bd4:	53206f74 	.word	0x53206f74
 8002bd8:	68757a75 	.word	0x68757a75
 8002bdc:	20534f61 	.word	0x20534f61
 8002be0:	205e5f5e 	.word	0x205e5f5e
 8002be4:	2e302e32 	.word	0x2e302e32
 8002be8:	55420a36 	.word	0x55420a36
 8002bec:	20444c49 	.word	0x20444c49
 8002bf0:	20727041 	.word	0x20727041
 8002bf4:	32203332 	.word	0x32203332
 8002bf8:	20363130 	.word	0x20363130
 8002bfc:	323a3331 	.word	0x323a3331
 8002c00:	33313a32 	.word	0x33313a32
 8002c04:	6f6d000a 	.word	0x6f6d000a
 8002c08:	3d206564 	.word	0x3d206564
 8002c0c:	0a752520 	.word	0x0a752520
 8002c10:	73797300 	.word	0x73797300
 8002c14:	206d6574 	.word	0x206d6574
 8002c18:	726f6261 	.word	0x726f6261
 8002c1c:	0a646574 	.word	0x0a646574
 8002c20:	00000000 	.word	0x00000000

08002c24 <__EH_FRAME_BEGIN__>:
 8002c24:	00000000                                ....
