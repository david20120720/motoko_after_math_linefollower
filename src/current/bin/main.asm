
bin/main.elf:     file format elf32-littlearm


Disassembly of section .text:

08000188 <main>:
 8000188:	b508      	push	{r3, lr}
 800018a:	f001 fa52 	bl	8001632 <lib_low_level_init>
 800018e:	f000 f921 	bl	80003d4 <lib_os_init>
 8000192:	4905      	ldr	r1, [pc, #20]	; (80001a8 <main+0x20>)
 8000194:	4805      	ldr	r0, [pc, #20]	; (80001ac <main+0x24>)
 8000196:	f44f 7200 	mov.w	r2, #512	; 0x200
 800019a:	2306      	movs	r3, #6
 800019c:	f000 f88a 	bl	80002b4 <create_thread>
 80001a0:	f000 f882 	bl	80002a8 <kernel_start>
 80001a4:	2000      	movs	r0, #0
 80001a6:	bd08      	pop	{r3, pc}
 80001a8:	200006ac 	.word	0x200006ac
 80001ac:	08000f35 	.word	0x08000f35

080001b0 <thread_ending>:
 80001b0:	b672      	cpsid	i
 80001b2:	4b05      	ldr	r3, [pc, #20]	; (80001c8 <thread_ending+0x18>)
 80001b4:	4a05      	ldr	r2, [pc, #20]	; (80001cc <thread_ending+0x1c>)
 80001b6:	681b      	ldr	r3, [r3, #0]
 80001b8:	210c      	movs	r1, #12
 80001ba:	fb01 2303 	mla	r3, r1, r3, r2
 80001be:	2200      	movs	r2, #0
 80001c0:	605a      	str	r2, [r3, #4]
 80001c2:	b662      	cpsie	i
 80001c4:	bf00      	nop
 80001c6:	e7fd      	b.n	80001c4 <thread_ending+0x14>
 80001c8:	200008f4 	.word	0x200008f4
 80001cc:	200008ac 	.word	0x200008ac

080001d0 <null_thread>:
 80001d0:	b508      	push	{r3, lr}
 80001d2:	f001 fbdf 	bl	8001994 <sleep>
 80001d6:	e7fc      	b.n	80001d2 <null_thread+0x2>

080001d8 <scheduler>:
 80001d8:	b570      	push	{r4, r5, r6, lr}
 80001da:	2200      	movs	r2, #0
 80001dc:	4611      	mov	r1, r2
 80001de:	4b15      	ldr	r3, [pc, #84]	; (8000234 <scheduler+0x5c>)
 80001e0:	200c      	movs	r0, #12
 80001e2:	fb00 f501 	mul.w	r5, r0, r1
 80001e6:	195e      	adds	r6, r3, r5
 80001e8:	6874      	ldr	r4, [r6, #4]
 80001ea:	f014 0f02 	tst.w	r4, #2
 80001ee:	461c      	mov	r4, r3
 80001f0:	d10a      	bne.n	8000208 <scheduler+0x30>
 80001f2:	6876      	ldr	r6, [r6, #4]
 80001f4:	07f6      	lsls	r6, r6, #31
 80001f6:	d507      	bpl.n	8000208 <scheduler+0x30>
 80001f8:	4350      	muls	r0, r2
 80001fa:	5b5d      	ldrh	r5, [r3, r5]
 80001fc:	5a18      	ldrh	r0, [r3, r0]
 80001fe:	b2ad      	uxth	r5, r5
 8000200:	b280      	uxth	r0, r0
 8000202:	4285      	cmp	r5, r0
 8000204:	bf38      	it	cc
 8000206:	460a      	movcc	r2, r1
 8000208:	200c      	movs	r0, #12
 800020a:	4348      	muls	r0, r1
 800020c:	5a1d      	ldrh	r5, [r3, r0]
 800020e:	b2ad      	uxth	r5, r5
 8000210:	b125      	cbz	r5, 800021c <scheduler+0x44>
 8000212:	5a1d      	ldrh	r5, [r3, r0]
 8000214:	b2ad      	uxth	r5, r5
 8000216:	3d01      	subs	r5, #1
 8000218:	b2ad      	uxth	r5, r5
 800021a:	521d      	strh	r5, [r3, r0]
 800021c:	3101      	adds	r1, #1
 800021e:	2906      	cmp	r1, #6
 8000220:	d1dd      	bne.n	80001de <scheduler+0x6>
 8000222:	230c      	movs	r3, #12
 8000224:	4353      	muls	r3, r2
 8000226:	18e1      	adds	r1, r4, r3
 8000228:	8849      	ldrh	r1, [r1, #2]
 800022a:	b289      	uxth	r1, r1
 800022c:	52e1      	strh	r1, [r4, r3]
 800022e:	4b02      	ldr	r3, [pc, #8]	; (8000238 <scheduler+0x60>)
 8000230:	601a      	str	r2, [r3, #0]
 8000232:	bd70      	pop	{r4, r5, r6, pc}
 8000234:	200008ac 	.word	0x200008ac
 8000238:	200008f4 	.word	0x200008f4

0800023c <SysTick_Handler>:
 800023c:	e92d 0ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 8000240:	f3ef 8208 	mrs	r2, MSP
 8000244:	4c0d      	ldr	r4, [pc, #52]	; (800027c <SysTick_Handler+0x40>)
 8000246:	4d0e      	ldr	r5, [pc, #56]	; (8000280 <SysTick_Handler+0x44>)
 8000248:	6823      	ldr	r3, [r4, #0]
 800024a:	3301      	adds	r3, #1
 800024c:	d005      	beq.n	800025a <SysTick_Handler+0x1e>
 800024e:	6823      	ldr	r3, [r4, #0]
 8000250:	210c      	movs	r1, #12
 8000252:	fb01 5303 	mla	r3, r1, r3, r5
 8000256:	609a      	str	r2, [r3, #8]
 8000258:	e001      	b.n	800025e <SysTick_Handler+0x22>
 800025a:	2300      	movs	r3, #0
 800025c:	6023      	str	r3, [r4, #0]
 800025e:	f7ff ffbb 	bl	80001d8 <scheduler>
 8000262:	6823      	ldr	r3, [r4, #0]
 8000264:	220c      	movs	r2, #12
 8000266:	fb02 5503 	mla	r5, r2, r3, r5
 800026a:	f06f 0306 	mvn.w	r3, #6
 800026e:	68aa      	ldr	r2, [r5, #8]
 8000270:	469e      	mov	lr, r3
 8000272:	f382 8808 	msr	MSP, r2
 8000276:	e8bd 0ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 800027a:	4770      	bx	lr
 800027c:	200008f4 	.word	0x200008f4
 8000280:	200008ac 	.word	0x200008ac

08000284 <sched_off>:
 8000284:	b672      	cpsid	i
 8000286:	4770      	bx	lr

08000288 <sched_on>:
 8000288:	b662      	cpsie	i
 800028a:	4770      	bx	lr

0800028c <yield>:
 800028c:	bf00      	nop
 800028e:	4770      	bx	lr

08000290 <get_thread_id>:
 8000290:	b082      	sub	sp, #8
 8000292:	b672      	cpsid	i
 8000294:	4b03      	ldr	r3, [pc, #12]	; (80002a4 <get_thread_id+0x14>)
 8000296:	681b      	ldr	r3, [r3, #0]
 8000298:	9301      	str	r3, [sp, #4]
 800029a:	b662      	cpsie	i
 800029c:	9801      	ldr	r0, [sp, #4]
 800029e:	b002      	add	sp, #8
 80002a0:	4770      	bx	lr
 80002a2:	bf00      	nop
 80002a4:	200008f4 	.word	0x200008f4

080002a8 <kernel_start>:
 80002a8:	b508      	push	{r3, lr}
 80002aa:	f001 fb61 	bl	8001970 <sys_tick_init>
 80002ae:	bf00      	nop
 80002b0:	e7fd      	b.n	80002ae <kernel_start+0x6>
	...

080002b4 <create_thread>:
 80002b4:	f022 0203 	bic.w	r2, r2, #3
 80002b8:	3a40      	subs	r2, #64	; 0x40
 80002ba:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 80002be:	eb01 0c02 	add.w	ip, r1, r2
 80002c2:	f102 0834 	add.w	r8, r2, #52	; 0x34
 80002c6:	f102 0938 	add.w	r9, r2, #56	; 0x38
 80002ca:	323c      	adds	r2, #60	; 0x3c
 80002cc:	4488      	add	r8, r1
 80002ce:	4489      	add	r9, r1
 80002d0:	4607      	mov	r7, r0
 80002d2:	4411      	add	r1, r2
 80002d4:	2200      	movs	r2, #0
 80002d6:	b672      	cpsid	i
 80002d8:	4e11      	ldr	r6, [pc, #68]	; (8000320 <create_thread+0x6c>)
 80002da:	250c      	movs	r5, #12
 80002dc:	4355      	muls	r5, r2
 80002de:	1974      	adds	r4, r6, r5
 80002e0:	6860      	ldr	r0, [r4, #4]
 80002e2:	07c0      	lsls	r0, r0, #31
 80002e4:	d412      	bmi.n	800030c <create_thread+0x58>
 80002e6:	480f      	ldr	r0, [pc, #60]	; (8000324 <create_thread+0x70>)
 80002e8:	f8c4 c008 	str.w	ip, [r4, #8]
 80002ec:	f8c8 0000 	str.w	r0, [r8]
 80002f0:	f04f 5004 	mov.w	r0, #553648128	; 0x21000000
 80002f4:	f8c9 7000 	str.w	r7, [r9]
 80002f8:	2b05      	cmp	r3, #5
 80002fa:	bf98      	it	ls
 80002fc:	2306      	movls	r3, #6
 80002fe:	6008      	str	r0, [r1, #0]
 8000300:	2001      	movs	r0, #1
 8000302:	8063      	strh	r3, [r4, #2]
 8000304:	5373      	strh	r3, [r6, r5]
 8000306:	6060      	str	r0, [r4, #4]
 8000308:	4610      	mov	r0, r2
 800030a:	e000      	b.n	800030e <create_thread+0x5a>
 800030c:	2006      	movs	r0, #6
 800030e:	b662      	cpsie	i
 8000310:	3201      	adds	r2, #1
 8000312:	2a06      	cmp	r2, #6
 8000314:	d001      	beq.n	800031a <create_thread+0x66>
 8000316:	2806      	cmp	r0, #6
 8000318:	d0dd      	beq.n	80002d6 <create_thread+0x22>
 800031a:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 800031e:	bf00      	nop
 8000320:	200008ac 	.word	0x200008ac
 8000324:	080001b1 	.word	0x080001b1

08000328 <kernel_init>:
 8000328:	b510      	push	{r4, lr}
 800032a:	2300      	movs	r3, #0
 800032c:	490b      	ldr	r1, [pc, #44]	; (800035c <kernel_init+0x34>)
 800032e:	220c      	movs	r2, #12
 8000330:	435a      	muls	r2, r3
 8000332:	188c      	adds	r4, r1, r2
 8000334:	2000      	movs	r0, #0
 8000336:	6060      	str	r0, [r4, #4]
 8000338:	3301      	adds	r3, #1
 800033a:	2006      	movs	r0, #6
 800033c:	4283      	cmp	r3, r0
 800033e:	8060      	strh	r0, [r4, #2]
 8000340:	5288      	strh	r0, [r1, r2]
 8000342:	d1f3      	bne.n	800032c <kernel_init+0x4>
 8000344:	4b06      	ldr	r3, [pc, #24]	; (8000360 <kernel_init+0x38>)
 8000346:	4807      	ldr	r0, [pc, #28]	; (8000364 <kernel_init+0x3c>)
 8000348:	4907      	ldr	r1, [pc, #28]	; (8000368 <kernel_init+0x40>)
 800034a:	f04f 32ff 	mov.w	r2, #4294967295
 800034e:	601a      	str	r2, [r3, #0]
 8000350:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000354:	2280      	movs	r2, #128	; 0x80
 8000356:	23ff      	movs	r3, #255	; 0xff
 8000358:	f7ff bfac 	b.w	80002b4 <create_thread>
 800035c:	200008ac 	.word	0x200008ac
 8000360:	200008f4 	.word	0x200008f4
 8000364:	080001d1 	.word	0x080001d1
 8000368:	200008f8 	.word	0x200008f8

0800036c <set_wait_state>:
 800036c:	b507      	push	{r0, r1, r2, lr}
 800036e:	f7ff ff8f 	bl	8000290 <get_thread_id>
 8000372:	9000      	str	r0, [sp, #0]
 8000374:	b672      	cpsid	i
 8000376:	4b0d      	ldr	r3, [pc, #52]	; (80003ac <set_wait_state+0x40>)
 8000378:	9a00      	ldr	r2, [sp, #0]
 800037a:	210c      	movs	r1, #12
 800037c:	fb01 3202 	mla	r2, r1, r2, r3
 8000380:	6851      	ldr	r1, [r2, #4]
 8000382:	f041 0102 	orr.w	r1, r1, #2
 8000386:	6051      	str	r1, [r2, #4]
 8000388:	b672      	cpsid	i
 800038a:	9a00      	ldr	r2, [sp, #0]
 800038c:	210c      	movs	r1, #12
 800038e:	fb01 3202 	mla	r2, r1, r2, r3
 8000392:	6852      	ldr	r2, [r2, #4]
 8000394:	9201      	str	r2, [sp, #4]
 8000396:	b662      	cpsie	i
 8000398:	9a01      	ldr	r2, [sp, #4]
 800039a:	0791      	lsls	r1, r2, #30
 800039c:	d500      	bpl.n	80003a0 <set_wait_state+0x34>
 800039e:	bf00      	nop
 80003a0:	9a01      	ldr	r2, [sp, #4]
 80003a2:	0792      	lsls	r2, r2, #30
 80003a4:	d4f0      	bmi.n	8000388 <set_wait_state+0x1c>
 80003a6:	b003      	add	sp, #12
 80003a8:	f85d fb04 	ldr.w	pc, [sp], #4
 80003ac:	200008ac 	.word	0x200008ac

080003b0 <wake_up_threads>:
 80003b0:	2300      	movs	r3, #0
 80003b2:	b672      	cpsid	i
 80003b4:	4a06      	ldr	r2, [pc, #24]	; (80003d0 <wake_up_threads+0x20>)
 80003b6:	210c      	movs	r1, #12
 80003b8:	fb01 2203 	mla	r2, r1, r3, r2
 80003bc:	6851      	ldr	r1, [r2, #4]
 80003be:	f021 0102 	bic.w	r1, r1, #2
 80003c2:	6051      	str	r1, [r2, #4]
 80003c4:	b662      	cpsie	i
 80003c6:	3301      	adds	r3, #1
 80003c8:	2b06      	cmp	r3, #6
 80003ca:	d1f2      	bne.n	80003b2 <wake_up_threads+0x2>
 80003cc:	4770      	bx	lr
 80003ce:	bf00      	nop
 80003d0:	200008ac 	.word	0x200008ac

080003d4 <lib_os_init>:
 80003d4:	b508      	push	{r3, lr}
 80003d6:	f7ff ffa7 	bl	8000328 <kernel_init>
 80003da:	f000 f8f9 	bl	80005d0 <messages_init>
 80003de:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80003e2:	f000 b8cd 	b.w	8000580 <stdio_init>
	...

080003e8 <putc_>:
 80003e8:	b538      	push	{r3, r4, r5, lr}
 80003ea:	4c06      	ldr	r4, [pc, #24]	; (8000404 <putc_+0x1c>)
 80003ec:	4605      	mov	r5, r0
 80003ee:	4620      	mov	r0, r4
 80003f0:	f000 f912 	bl	8000618 <mutex_lock>
 80003f4:	4628      	mov	r0, r5
 80003f6:	f001 f863 	bl	80014c0 <uart_write>
 80003fa:	4620      	mov	r0, r4
 80003fc:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8000400:	f000 b926 	b.w	8000650 <mutex_unlock>
 8000404:	20000978 	.word	0x20000978

08000408 <puts_>:
 8000408:	b510      	push	{r4, lr}
 800040a:	4604      	mov	r4, r0
 800040c:	4807      	ldr	r0, [pc, #28]	; (800042c <puts_+0x24>)
 800040e:	f000 f903 	bl	8000618 <mutex_lock>
 8000412:	3c01      	subs	r4, #1
 8000414:	f814 0f01 	ldrb.w	r0, [r4, #1]!
 8000418:	b110      	cbz	r0, 8000420 <puts_+0x18>
 800041a:	f7ff ffe5 	bl	80003e8 <putc_>
 800041e:	e7f9      	b.n	8000414 <puts_+0xc>
 8000420:	4802      	ldr	r0, [pc, #8]	; (800042c <puts_+0x24>)
 8000422:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000426:	f000 b913 	b.w	8000650 <mutex_unlock>
 800042a:	bf00      	nop
 800042c:	20000984 	.word	0x20000984

08000430 <puti_>:
 8000430:	b530      	push	{r4, r5, lr}
 8000432:	b085      	sub	sp, #20
 8000434:	1e03      	subs	r3, r0, #0
 8000436:	f04f 0200 	mov.w	r2, #0
 800043a:	bfa8      	it	ge
 800043c:	4614      	movge	r4, r2
 800043e:	f88d 200f 	strb.w	r2, [sp, #15]
 8000442:	bfbc      	itt	lt
 8000444:	425b      	neglt	r3, r3
 8000446:	2401      	movlt	r4, #1
 8000448:	220a      	movs	r2, #10
 800044a:	210a      	movs	r1, #10
 800044c:	fb93 f5f1 	sdiv	r5, r3, r1
 8000450:	fb01 3315 	mls	r3, r1, r5, r3
 8000454:	a801      	add	r0, sp, #4
 8000456:	3330      	adds	r3, #48	; 0x30
 8000458:	5413      	strb	r3, [r2, r0]
 800045a:	1e51      	subs	r1, r2, #1
 800045c:	462b      	mov	r3, r5
 800045e:	b10d      	cbz	r5, 8000464 <puti_+0x34>
 8000460:	460a      	mov	r2, r1
 8000462:	e7f2      	b.n	800044a <puti_+0x1a>
 8000464:	b12c      	cbz	r4, 8000472 <puti_+0x42>
 8000466:	ab04      	add	r3, sp, #16
 8000468:	440b      	add	r3, r1
 800046a:	222d      	movs	r2, #45	; 0x2d
 800046c:	f803 2c0c 	strb.w	r2, [r3, #-12]
 8000470:	460a      	mov	r2, r1
 8000472:	4410      	add	r0, r2
 8000474:	f7ff ffc8 	bl	8000408 <puts_>
 8000478:	b005      	add	sp, #20
 800047a:	bd30      	pop	{r4, r5, pc}

0800047c <putui_>:
 800047c:	b51f      	push	{r0, r1, r2, r3, r4, lr}
 800047e:	2300      	movs	r3, #0
 8000480:	f88d 300f 	strb.w	r3, [sp, #15]
 8000484:	230a      	movs	r3, #10
 8000486:	240a      	movs	r4, #10
 8000488:	fbb0 f1f4 	udiv	r1, r0, r4
 800048c:	fb04 0011 	mls	r0, r4, r1, r0
 8000490:	aa01      	add	r2, sp, #4
 8000492:	3030      	adds	r0, #48	; 0x30
 8000494:	5498      	strb	r0, [r3, r2]
 8000496:	1e5c      	subs	r4, r3, #1
 8000498:	4608      	mov	r0, r1
 800049a:	b109      	cbz	r1, 80004a0 <putui_+0x24>
 800049c:	4623      	mov	r3, r4
 800049e:	e7f2      	b.n	8000486 <putui_+0xa>
 80004a0:	18d0      	adds	r0, r2, r3
 80004a2:	f7ff ffb1 	bl	8000408 <puts_>
 80004a6:	b004      	add	sp, #16
 80004a8:	bd10      	pop	{r4, pc}

080004aa <putx_>:
 80004aa:	b51f      	push	{r0, r1, r2, r3, r4, lr}
 80004ac:	2300      	movs	r3, #0
 80004ae:	f88d 300f 	strb.w	r3, [sp, #15]
 80004b2:	230a      	movs	r3, #10
 80004b4:	f000 010f 	and.w	r1, r0, #15
 80004b8:	2909      	cmp	r1, #9
 80004ba:	aa01      	add	r2, sp, #4
 80004bc:	bf94      	ite	ls
 80004be:	3130      	addls	r1, #48	; 0x30
 80004c0:	3157      	addhi	r1, #87	; 0x57
 80004c2:	0900      	lsrs	r0, r0, #4
 80004c4:	54d1      	strb	r1, [r2, r3]
 80004c6:	f103 31ff 	add.w	r1, r3, #4294967295
 80004ca:	d001      	beq.n	80004d0 <putx_+0x26>
 80004cc:	460b      	mov	r3, r1
 80004ce:	e7f1      	b.n	80004b4 <putx_+0xa>
 80004d0:	18d0      	adds	r0, r2, r3
 80004d2:	f7ff ff99 	bl	8000408 <puts_>
 80004d6:	b005      	add	sp, #20
 80004d8:	f85d fb04 	ldr.w	pc, [sp], #4

080004dc <printf_>:
 80004dc:	b40f      	push	{r0, r1, r2, r3}
 80004de:	b537      	push	{r0, r1, r2, r4, r5, lr}
 80004e0:	ac06      	add	r4, sp, #24
 80004e2:	4826      	ldr	r0, [pc, #152]	; (800057c <printf_+0xa0>)
 80004e4:	f854 5b04 	ldr.w	r5, [r4], #4
 80004e8:	f000 f896 	bl	8000618 <mutex_lock>
 80004ec:	9401      	str	r4, [sp, #4]
 80004ee:	2400      	movs	r4, #0
 80004f0:	5d28      	ldrb	r0, [r5, r4]
 80004f2:	2800      	cmp	r0, #0
 80004f4:	d039      	beq.n	800056a <printf_+0x8e>
 80004f6:	2825      	cmp	r0, #37	; 0x25
 80004f8:	d003      	beq.n	8000502 <printf_+0x26>
 80004fa:	f7ff ff75 	bl	80003e8 <putc_>
 80004fe:	3401      	adds	r4, #1
 8000500:	e7f6      	b.n	80004f0 <printf_+0x14>
 8000502:	192b      	adds	r3, r5, r4
 8000504:	7858      	ldrb	r0, [r3, #1]
 8000506:	2869      	cmp	r0, #105	; 0x69
 8000508:	d016      	beq.n	8000538 <printf_+0x5c>
 800050a:	d808      	bhi.n	800051e <printf_+0x42>
 800050c:	2825      	cmp	r0, #37	; 0x25
 800050e:	d028      	beq.n	8000562 <printf_+0x86>
 8000510:	2863      	cmp	r0, #99	; 0x63
 8000512:	d128      	bne.n	8000566 <printf_+0x8a>
 8000514:	9b01      	ldr	r3, [sp, #4]
 8000516:	1d1a      	adds	r2, r3, #4
 8000518:	9201      	str	r2, [sp, #4]
 800051a:	7818      	ldrb	r0, [r3, #0]
 800051c:	e021      	b.n	8000562 <printf_+0x86>
 800051e:	2875      	cmp	r0, #117	; 0x75
 8000520:	d011      	beq.n	8000546 <printf_+0x6a>
 8000522:	2878      	cmp	r0, #120	; 0x78
 8000524:	d016      	beq.n	8000554 <printf_+0x78>
 8000526:	2873      	cmp	r0, #115	; 0x73
 8000528:	d11d      	bne.n	8000566 <printf_+0x8a>
 800052a:	9b01      	ldr	r3, [sp, #4]
 800052c:	1d1a      	adds	r2, r3, #4
 800052e:	6818      	ldr	r0, [r3, #0]
 8000530:	9201      	str	r2, [sp, #4]
 8000532:	f7ff ff69 	bl	8000408 <puts_>
 8000536:	e016      	b.n	8000566 <printf_+0x8a>
 8000538:	9b01      	ldr	r3, [sp, #4]
 800053a:	1d1a      	adds	r2, r3, #4
 800053c:	6818      	ldr	r0, [r3, #0]
 800053e:	9201      	str	r2, [sp, #4]
 8000540:	f7ff ff76 	bl	8000430 <puti_>
 8000544:	e00f      	b.n	8000566 <printf_+0x8a>
 8000546:	9b01      	ldr	r3, [sp, #4]
 8000548:	1d1a      	adds	r2, r3, #4
 800054a:	6818      	ldr	r0, [r3, #0]
 800054c:	9201      	str	r2, [sp, #4]
 800054e:	f7ff ff95 	bl	800047c <putui_>
 8000552:	e008      	b.n	8000566 <printf_+0x8a>
 8000554:	9b01      	ldr	r3, [sp, #4]
 8000556:	1d1a      	adds	r2, r3, #4
 8000558:	6818      	ldr	r0, [r3, #0]
 800055a:	9201      	str	r2, [sp, #4]
 800055c:	f7ff ffa5 	bl	80004aa <putx_>
 8000560:	e001      	b.n	8000566 <printf_+0x8a>
 8000562:	f7ff ff41 	bl	80003e8 <putc_>
 8000566:	3402      	adds	r4, #2
 8000568:	e7c2      	b.n	80004f0 <printf_+0x14>
 800056a:	4804      	ldr	r0, [pc, #16]	; (800057c <printf_+0xa0>)
 800056c:	f000 f870 	bl	8000650 <mutex_unlock>
 8000570:	b003      	add	sp, #12
 8000572:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
 8000576:	b004      	add	sp, #16
 8000578:	4770      	bx	lr
 800057a:	bf00      	nop
 800057c:	20000980 	.word	0x20000980

08000580 <stdio_init>:
 8000580:	b510      	push	{r4, lr}
 8000582:	480e      	ldr	r0, [pc, #56]	; (80005bc <stdio_init+0x3c>)
 8000584:	f000 f83e 	bl	8000604 <mutex_init>
 8000588:	480d      	ldr	r0, [pc, #52]	; (80005c0 <stdio_init+0x40>)
 800058a:	f000 f83b 	bl	8000604 <mutex_init>
 800058e:	480d      	ldr	r0, [pc, #52]	; (80005c4 <stdio_init+0x44>)
 8000590:	f000 f838 	bl	8000604 <mutex_init>
 8000594:	480c      	ldr	r0, [pc, #48]	; (80005c8 <stdio_init+0x48>)
 8000596:	f000 f835 	bl	8000604 <mutex_init>
 800059a:	2408      	movs	r4, #8
 800059c:	2020      	movs	r0, #32
 800059e:	f7ff ff23 	bl	80003e8 <putc_>
 80005a2:	3c01      	subs	r4, #1
 80005a4:	d1fa      	bne.n	800059c <stdio_init+0x1c>
 80005a6:	2420      	movs	r4, #32
 80005a8:	200a      	movs	r0, #10
 80005aa:	f7ff ff1d 	bl	80003e8 <putc_>
 80005ae:	3c01      	subs	r4, #1
 80005b0:	d1fa      	bne.n	80005a8 <stdio_init+0x28>
 80005b2:	4806      	ldr	r0, [pc, #24]	; (80005cc <stdio_init+0x4c>)
 80005b4:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80005b8:	f7ff bf90 	b.w	80004dc <printf_>
 80005bc:	20000978 	.word	0x20000978
 80005c0:	2000097c 	.word	0x2000097c
 80005c4:	20000984 	.word	0x20000984
 80005c8:	20000980 	.word	0x20000980
 80005cc:	0800255c 	.word	0x0800255c

080005d0 <messages_init>:
 80005d0:	4a0a      	ldr	r2, [pc, #40]	; (80005fc <messages_init+0x2c>)
 80005d2:	2300      	movs	r3, #0
 80005d4:	b510      	push	{r4, lr}
 80005d6:	6013      	str	r3, [r2, #0]
 80005d8:	6053      	str	r3, [r2, #4]
 80005da:	6093      	str	r3, [r2, #8]
 80005dc:	60d3      	str	r3, [r2, #12]
 80005de:	6113      	str	r3, [r2, #16]
 80005e0:	6153      	str	r3, [r2, #20]
 80005e2:	4c07      	ldr	r4, [pc, #28]	; (8000600 <messages_init+0x30>)
 80005e4:	0118      	lsls	r0, r3, #4
 80005e6:	1821      	adds	r1, r4, r0
 80005e8:	3301      	adds	r3, #1
 80005ea:	2200      	movs	r2, #0
 80005ec:	2b04      	cmp	r3, #4
 80005ee:	604a      	str	r2, [r1, #4]
 80005f0:	5022      	str	r2, [r4, r0]
 80005f2:	60ca      	str	r2, [r1, #12]
 80005f4:	608a      	str	r2, [r1, #8]
 80005f6:	d1f4      	bne.n	80005e2 <messages_init+0x12>
 80005f8:	bd10      	pop	{r4, pc}
 80005fa:	bf00      	nop
 80005fc:	20000988 	.word	0x20000988
 8000600:	200009a0 	.word	0x200009a0

08000604 <mutex_init>:
 8000604:	b510      	push	{r4, lr}
 8000606:	4604      	mov	r4, r0
 8000608:	f7ff fe3c 	bl	8000284 <sched_off>
 800060c:	2300      	movs	r3, #0
 800060e:	6023      	str	r3, [r4, #0]
 8000610:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000614:	f7ff be38 	b.w	8000288 <sched_on>

08000618 <mutex_lock>:
 8000618:	b513      	push	{r0, r1, r4, lr}
 800061a:	4604      	mov	r4, r0
 800061c:	f7ff fe32 	bl	8000284 <sched_off>
 8000620:	6823      	ldr	r3, [r4, #0]
 8000622:	9301      	str	r3, [sp, #4]
 8000624:	f7ff fe30 	bl	8000288 <sched_on>
 8000628:	9b01      	ldr	r3, [sp, #4]
 800062a:	b10b      	cbz	r3, 8000630 <mutex_lock+0x18>
 800062c:	f7ff fe9e 	bl	800036c <set_wait_state>
 8000630:	9b01      	ldr	r3, [sp, #4]
 8000632:	2b00      	cmp	r3, #0
 8000634:	d1f2      	bne.n	800061c <mutex_lock+0x4>
 8000636:	f7ff fe25 	bl	8000284 <sched_off>
 800063a:	6823      	ldr	r3, [r4, #0]
 800063c:	9301      	str	r3, [sp, #4]
 800063e:	9b01      	ldr	r3, [sp, #4]
 8000640:	2b00      	cmp	r3, #0
 8000642:	d1eb      	bne.n	800061c <mutex_lock+0x4>
 8000644:	2301      	movs	r3, #1
 8000646:	6023      	str	r3, [r4, #0]
 8000648:	f7ff fe1e 	bl	8000288 <sched_on>
 800064c:	b002      	add	sp, #8
 800064e:	bd10      	pop	{r4, pc}

08000650 <mutex_unlock>:
 8000650:	b508      	push	{r3, lr}
 8000652:	f7ff ffd7 	bl	8000604 <mutex_init>
 8000656:	f7ff feab 	bl	80003b0 <wake_up_threads>
 800065a:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800065e:	f7ff be15 	b.w	800028c <yield>

08000662 <rgb_i2c_delay>:
 8000662:	bf00      	nop
 8000664:	4770      	bx	lr
	...

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
 800068c:	f001 fd6e 	bl	800216c <GPIO_Init>
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
 80006b0:	f001 fd5c 	bl	800216c <GPIO_Init>
 80006b4:	852c      	strh	r4, [r5, #40]	; 0x28
 80006b6:	f7ff ffd4 	bl	8000662 <rgb_i2c_delay>
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
 80006e6:	f001 fd41 	bl	800216c <GPIO_Init>
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
 8000708:	f001 fd30 	bl	800216c <GPIO_Init>
 800070c:	61a5      	str	r5, [r4, #24]
 800070e:	f7ff ffa8 	bl	8000662 <rgb_i2c_delay>
 8000712:	b002      	add	sp, #8
 8000714:	bd70      	pop	{r4, r5, r6, pc}
 8000716:	bf00      	nop
 8000718:	20000a3a 	.word	0x20000a3a
 800071c:	48000400 	.word	0x48000400

08000720 <RGBSetLowSCL>:
 8000720:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000724:	f44f 7280 	mov.w	r2, #256	; 0x100
 8000728:	851a      	strh	r2, [r3, #40]	; 0x28
 800072a:	f7ff bf9a 	b.w	8000662 <rgb_i2c_delay>

0800072e <RGBSetHighSCL>:
 800072e:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000732:	f44f 7280 	mov.w	r2, #256	; 0x100
 8000736:	619a      	str	r2, [r3, #24]
 8000738:	f7ff bf93 	b.w	8000662 <rgb_i2c_delay>

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
 8000762:	f001 fd03 	bl	800216c <GPIO_Init>
 8000766:	783b      	ldrb	r3, [r7, #0]
 8000768:	f88d 4004 	strb.w	r4, [sp, #4]
 800076c:	4669      	mov	r1, sp
 800076e:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000772:	9300      	str	r3, [sp, #0]
 8000774:	f88d 4007 	strb.w	r4, [sp, #7]
 8000778:	f88d 6005 	strb.w	r6, [sp, #5]
 800077c:	f001 fcf6 	bl	800216c <GPIO_Init>
 8000780:	7839      	ldrb	r1, [r7, #0]
 8000782:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000786:	f001 fd37 	bl	80021f8 <GPIO_SetBits>
 800078a:	f88d 4004 	strb.w	r4, [sp, #4]
 800078e:	f88d 4007 	strb.w	r4, [sp, #7]
 8000792:	4c0b      	ldr	r4, [pc, #44]	; (80007c0 <rgb_i2c_init+0x84>)
 8000794:	9500      	str	r5, [sp, #0]
 8000796:	4620      	mov	r0, r4
 8000798:	4669      	mov	r1, sp
 800079a:	f88d 6005 	strb.w	r6, [sp, #5]
 800079e:	f001 fce5 	bl	800216c <GPIO_Init>
 80007a2:	4620      	mov	r0, r4
 80007a4:	4629      	mov	r1, r5
 80007a6:	f001 fd27 	bl	80021f8 <GPIO_SetBits>
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
 800083c:	f7ff bf11 	b.w	8000662 <rgb_i2c_delay>

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
 8000900:	f7ff beaf 	b.w	8000662 <rgb_i2c_delay>
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

08000b00 <line_sensor_init>:
 8000b00:	490c      	ldr	r1, [pc, #48]	; (8000b34 <line_sensor_init+0x34>)
 8000b02:	4608      	mov	r0, r1
 8000b04:	2300      	movs	r3, #0
 8000b06:	b510      	push	{r4, lr}
 8000b08:	f800 3b10 	strb.w	r3, [r0], #16
 8000b0c:	1e8a      	subs	r2, r1, #2
 8000b0e:	3202      	adds	r2, #2
 8000b10:	2300      	movs	r3, #0
 8000b12:	4282      	cmp	r2, r0
 8000b14:	8053      	strh	r3, [r2, #2]
 8000b16:	8293      	strh	r3, [r2, #20]
 8000b18:	84d3      	strh	r3, [r2, #38]	; 0x26
 8000b1a:	d1f8      	bne.n	8000b0e <line_sensor_init+0xe>
 8000b1c:	f881 3038 	strb.w	r3, [r1, #56]	; 0x38
 8000b20:	f881 3044 	strb.w	r3, [r1, #68]	; 0x44
 8000b24:	63cb      	str	r3, [r1, #60]	; 0x3c
 8000b26:	640b      	str	r3, [r1, #64]	; 0x40
 8000b28:	f7ff ff02 	bl	8000930 <rgb_init>
 8000b2c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000b30:	f7ff bf3e 	b.w	80009b0 <rgb_read>
 8000b34:	20000a48 	.word	0x20000a48

08000b38 <line_sensor_filter>:
 8000b38:	b570      	push	{r4, r5, r6, lr}
 8000b3a:	4b5e      	ldr	r3, [pc, #376]	; (8000cb4 <line_sensor_filter+0x17c>)
 8000b3c:	f103 0212 	add.w	r2, r3, #18
 8000b40:	f9b3 0016 	ldrsh.w	r0, [r3, #22]
 8000b44:	3302      	adds	r3, #2
 8000b46:	f9b3 1002 	ldrsh.w	r1, [r3, #2]
 8000b4a:	4293      	cmp	r3, r2
 8000b4c:	ebc1 0100 	rsb	r1, r1, r0
 8000b50:	84d9      	strh	r1, [r3, #38]	; 0x26
 8000b52:	d1f5      	bne.n	8000b40 <line_sensor_filter+0x8>
 8000b54:	4958      	ldr	r1, [pc, #352]	; (8000cb8 <line_sensor_filter+0x180>)
 8000b56:	4a59      	ldr	r2, [pc, #356]	; (8000cbc <line_sensor_filter+0x184>)
 8000b58:	6c0b      	ldr	r3, [r1, #64]	; 0x40
 8000b5a:	f9b2 2058 	ldrsh.w	r2, [r2, #88]	; 0x58
 8000b5e:	f9b1 402e 	ldrsh.w	r4, [r1, #46]	; 0x2e
 8000b62:	2007      	movs	r0, #7
 8000b64:	fb00 2303 	mla	r3, r0, r3, r2
 8000b68:	2208      	movs	r2, #8
 8000b6a:	fb93 f3f2 	sdiv	r3, r3, r2
 8000b6e:	f9b1 202c 	ldrsh.w	r2, [r1, #44]	; 0x2c
 8000b72:	f9b1 0026 	ldrsh.w	r0, [r1, #38]	; 0x26
 8000b76:	640b      	str	r3, [r1, #64]	; 0x40
 8000b78:	f512 7faf 	cmn.w	r2, #350	; 0x15e
 8000b7c:	bfaa      	itet	ge
 8000b7e:	4602      	movge	r2, r0
 8000b80:	2303      	movlt	r3, #3
 8000b82:	2300      	movge	r3, #0
 8000b84:	f514 7faf 	cmn.w	r4, #350	; 0x15e
 8000b88:	bfb8      	it	lt
 8000b8a:	4622      	movlt	r2, r4
 8000b8c:	f9b1 402a 	ldrsh.w	r4, [r1, #42]	; 0x2a
 8000b90:	bfb8      	it	lt
 8000b92:	2304      	movlt	r3, #4
 8000b94:	f514 7faf 	cmn.w	r4, #350	; 0x15e
 8000b98:	bfb8      	it	lt
 8000b9a:	4622      	movlt	r2, r4
 8000b9c:	f9b1 4030 	ldrsh.w	r4, [r1, #48]	; 0x30
 8000ba0:	bfb8      	it	lt
 8000ba2:	2302      	movlt	r3, #2
 8000ba4:	f514 7faf 	cmn.w	r4, #350	; 0x15e
 8000ba8:	bfb8      	it	lt
 8000baa:	4622      	movlt	r2, r4
 8000bac:	f9b1 4028 	ldrsh.w	r4, [r1, #40]	; 0x28
 8000bb0:	bfb8      	it	lt
 8000bb2:	2305      	movlt	r3, #5
 8000bb4:	f514 7faf 	cmn.w	r4, #350	; 0x15e
 8000bb8:	bfb8      	it	lt
 8000bba:	4622      	movlt	r2, r4
 8000bbc:	f9b1 4032 	ldrsh.w	r4, [r1, #50]	; 0x32
 8000bc0:	bfb8      	it	lt
 8000bc2:	2301      	movlt	r3, #1
 8000bc4:	f514 7faf 	cmn.w	r4, #350	; 0x15e
 8000bc8:	bfb8      	it	lt
 8000bca:	4622      	movlt	r2, r4
 8000bcc:	f9b1 4034 	ldrsh.w	r4, [r1, #52]	; 0x34
 8000bd0:	bfb8      	it	lt
 8000bd2:	2306      	movlt	r3, #6
 8000bd4:	4605      	mov	r5, r0
 8000bd6:	f515 7faf 	cmn.w	r5, #350	; 0x15e
 8000bda:	bfb8      	it	lt
 8000bdc:	2300      	movlt	r3, #0
 8000bde:	f510 7faf 	cmn.w	r0, #350	; 0x15e
 8000be2:	bfa8      	it	ge
 8000be4:	4610      	movge	r0, r2
 8000be6:	f514 7faf 	cmn.w	r4, #350	; 0x15e
 8000bea:	4a33      	ldr	r2, [pc, #204]	; (8000cb8 <line_sensor_filter+0x180>)
 8000bec:	db32      	blt.n	8000c54 <line_sensor_filter+0x11c>
 8000bee:	f510 7faf 	cmn.w	r0, #350	; 0x15e
 8000bf2:	dc5a      	bgt.n	8000caa <line_sensor_filter+0x172>
 8000bf4:	2b00      	cmp	r3, #0
 8000bf6:	d055      	beq.n	8000ca4 <line_sensor_filter+0x16c>
 8000bf8:	eb02 0643 	add.w	r6, r2, r3, lsl #1
 8000bfc:	4632      	mov	r2, r6
 8000bfe:	f9b6 6028 	ldrsh.w	r6, [r6, #40]	; 0x28
 8000c02:	f9b2 2024 	ldrsh.w	r2, [r2, #36]	; 0x24
 8000c06:	1e5d      	subs	r5, r3, #1
 8000c08:	4296      	cmp	r6, r2
 8000c0a:	f103 0401 	add.w	r4, r3, #1
 8000c0e:	bfa8      	it	ge
 8000c10:	462c      	movge	r4, r5
 8000c12:	ea4f 1083 	mov.w	r0, r3, lsl #6
 8000c16:	eb01 0444 	add.w	r4, r1, r4, lsl #1
 8000c1a:	eb01 0343 	add.w	r3, r1, r3, lsl #1
 8000c1e:	f9b4 5026 	ldrsh.w	r5, [r4, #38]	; 0x26
 8000c22:	f9b3 3026 	ldrsh.w	r3, [r3, #38]	; 0x26
 8000c26:	ea4f 1445 	mov.w	r4, r5, lsl #5
 8000c2a:	441d      	add	r5, r3
 8000c2c:	fb94 f3f5 	sdiv	r3, r4, r5
 8000c30:	f1c3 0420 	rsb	r4, r3, #32
 8000c34:	bfac      	ite	ge
 8000c36:	f1a0 0240 	subge.w	r2, r0, #64	; 0x40
 8000c3a:	f100 0240 	addlt.w	r2, r0, #64	; 0x40
 8000c3e:	4344      	muls	r4, r0
 8000c40:	fb03 4402 	mla	r4, r3, r2, r4
 8000c44:	2520      	movs	r5, #32
 8000c46:	fb94 f4f5 	sdiv	r4, r4, r5
 8000c4a:	3ce0      	subs	r4, #224	; 0xe0
 8000c4c:	f5b4 7f80 	cmp.w	r4, #256	; 0x100
 8000c50:	63cc      	str	r4, [r1, #60]	; 0x3c
 8000c52:	dd24      	ble.n	8000c9e <line_sensor_filter+0x166>
 8000c54:	f44f 7480 	mov.w	r4, #256	; 0x100
 8000c58:	f891 3038 	ldrb.w	r3, [r1, #56]	; 0x38
 8000c5c:	2b01      	cmp	r3, #1
 8000c5e:	d803      	bhi.n	8000c68 <line_sensor_filter+0x130>
 8000c60:	4a15      	ldr	r2, [pc, #84]	; (8000cb8 <line_sensor_filter+0x180>)
 8000c62:	3301      	adds	r3, #1
 8000c64:	f882 3038 	strb.w	r3, [r2, #56]	; 0x38
 8000c68:	f891 3038 	ldrb.w	r3, [r1, #56]	; 0x38
 8000c6c:	4d12      	ldr	r5, [pc, #72]	; (8000cb8 <line_sensor_filter+0x180>)
 8000c6e:	2b02      	cmp	r3, #2
 8000c70:	d109      	bne.n	8000c86 <line_sensor_filter+0x14e>
 8000c72:	f7ff fb07 	bl	8000284 <sched_off>
 8000c76:	f895 3044 	ldrb.w	r3, [r5, #68]	; 0x44
 8000c7a:	63ec      	str	r4, [r5, #60]	; 0x3c
 8000c7c:	f043 0303 	orr.w	r3, r3, #3
 8000c80:	f885 3044 	strb.w	r3, [r5, #68]	; 0x44
 8000c84:	e007      	b.n	8000c96 <line_sensor_filter+0x15e>
 8000c86:	f7ff fafd 	bl	8000284 <sched_off>
 8000c8a:	f895 3044 	ldrb.w	r3, [r5, #68]	; 0x44
 8000c8e:	f023 0301 	bic.w	r3, r3, #1
 8000c92:	f885 3044 	strb.w	r3, [r5, #68]	; 0x44
 8000c96:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8000c9a:	f7ff baf5 	b.w	8000288 <sched_on>
 8000c9e:	f514 7f80 	cmn.w	r4, #256	; 0x100
 8000ca2:	dad9      	bge.n	8000c58 <line_sensor_filter+0x120>
 8000ca4:	f06f 04ff 	mvn.w	r4, #255	; 0xff
 8000ca8:	e7d6      	b.n	8000c58 <line_sensor_filter+0x120>
 8000caa:	2300      	movs	r3, #0
 8000cac:	f882 3038 	strb.w	r3, [r2, #56]	; 0x38
 8000cb0:	bd70      	pop	{r4, r5, r6, pc}
 8000cb2:	bf00      	nop
 8000cb4:	20000a46 	.word	0x20000a46
 8000cb8:	20000a48 	.word	0x20000a48
 8000cbc:	200009e0 	.word	0x200009e0

08000cc0 <line_sensor_read>:
 8000cc0:	b538      	push	{r3, r4, r5, lr}
 8000cc2:	f7ff fe75 	bl	80009b0 <rgb_read>
 8000cc6:	4b16      	ldr	r3, [pc, #88]	; (8000d20 <line_sensor_read+0x60>)
 8000cc8:	2200      	movs	r2, #0
 8000cca:	4618      	mov	r0, r3
 8000ccc:	5e84      	ldrsh	r4, [r0, r2]
 8000cce:	f240 31ff 	movw	r1, #1023	; 0x3ff
 8000cd2:	428c      	cmp	r4, r1
 8000cd4:	bfdc      	itt	le
 8000cd6:	f44f 6480 	movle.w	r4, #1024	; 0x400
 8000cda:	5284      	strhle	r4, [r0, r2]
 8000cdc:	f9b3 4012 	ldrsh.w	r4, [r3, #18]
 8000ce0:	8edd      	ldrh	r5, [r3, #54]	; 0x36
 8000ce2:	428c      	cmp	r4, r1
 8000ce4:	bfdc      	itt	le
 8000ce6:	f44f 6480 	movle.w	r4, #1024	; 0x400
 8000cea:	825c      	strhle	r4, [r3, #18]
 8000cec:	f9b3 4024 	ldrsh.w	r4, [r3, #36]	; 0x24
 8000cf0:	428c      	cmp	r4, r1
 8000cf2:	bfd8      	it	le
 8000cf4:	f44f 6180 	movle.w	r1, #1024	; 0x400
 8000cf8:	4c0a      	ldr	r4, [pc, #40]	; (8000d24 <line_sensor_read+0x64>)
 8000cfa:	bfd8      	it	le
 8000cfc:	8499      	strhle	r1, [r3, #36]	; 0x24
 8000cfe:	490a      	ldr	r1, [pc, #40]	; (8000d28 <line_sensor_read+0x68>)
 8000d00:	5b14      	ldrh	r4, [r2, r4]
 8000d02:	4411      	add	r1, r2
 8000d04:	1b2c      	subs	r4, r5, r4
 8000d06:	3202      	adds	r2, #2
 8000d08:	828c      	strh	r4, [r1, #20]
 8000d0a:	2a10      	cmp	r2, #16
 8000d0c:	f44f 6480 	mov.w	r4, #1024	; 0x400
 8000d10:	804c      	strh	r4, [r1, #2]
 8000d12:	f103 0302 	add.w	r3, r3, #2
 8000d16:	d1d9      	bne.n	8000ccc <line_sensor_read+0xc>
 8000d18:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8000d1c:	f7ff bf0c 	b.w	8000b38 <line_sensor_filter>
 8000d20:	200009e0 	.word	0x200009e0
 8000d24:	20000000 	.word	0x20000000
 8000d28:	20000a48 	.word	0x20000a48

08000d2c <m_abs>:
 8000d2c:	ee07 0a90 	vmov	s15, r0
 8000d30:	eef5 7ac0 	vcmpe.f32	s15, #0.0
 8000d34:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000d38:	bf48      	it	mi
 8000d3a:	eef1 7a67 	vnegmi.f32	s15, s15
 8000d3e:	ee17 0a90 	vmov	r0, s15
 8000d42:	4770      	bx	lr

08000d44 <m_saturate>:
 8000d44:	ee07 0a90 	vmov	s15, r0
 8000d48:	ee06 1a90 	vmov	s13, r1
 8000d4c:	eef4 7a66 	vcmp.f32	s15, s13
 8000d50:	ee07 2a10 	vmov	s14, r2
 8000d54:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000d58:	bf48      	it	mi
 8000d5a:	eef0 7a66 	vmovmi.f32	s15, s13
 8000d5e:	eef4 7a47 	vcmp.f32	s15, s14
 8000d62:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000d66:	bfcc      	ite	gt
 8000d68:	ee17 0a10 	vmovgt	r0, s14
 8000d6c:	ee17 0a90 	vmovle	r0, s15
 8000d70:	4770      	bx	lr

08000d72 <m_min>:
 8000d72:	ee07 0a10 	vmov	s14, r0
 8000d76:	ee07 1a90 	vmov	s15, r1
 8000d7a:	eeb4 7ae7 	vcmpe.f32	s14, s15
 8000d7e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000d82:	bf54      	ite	pl
 8000d84:	ee17 0a90 	vmovpl	r0, s15
 8000d88:	ee17 0a10 	vmovmi	r0, s14
 8000d8c:	4770      	bx	lr
	...

08000d90 <m_rnd>:
 8000d90:	4b09      	ldr	r3, [pc, #36]	; (8000db8 <m_rnd+0x28>)
 8000d92:	490a      	ldr	r1, [pc, #40]	; (8000dbc <m_rnd+0x2c>)
 8000d94:	681a      	ldr	r2, [r3, #0]
 8000d96:	434a      	muls	r2, r1
 8000d98:	4909      	ldr	r1, [pc, #36]	; (8000dc0 <m_rnd+0x30>)
 8000d9a:	f502 5240 	add.w	r2, r2, #12288	; 0x3000
 8000d9e:	b510      	push	{r4, lr}
 8000da0:	6808      	ldr	r0, [r1, #0]
 8000da2:	3239      	adds	r2, #57	; 0x39
 8000da4:	601a      	str	r2, [r3, #0]
 8000da6:	4b07      	ldr	r3, [pc, #28]	; (8000dc4 <m_rnd+0x34>)
 8000da8:	f340 0400 	sbfx	r4, r0, #0, #1
 8000dac:	4023      	ands	r3, r4
 8000dae:	ea83 0050 	eor.w	r0, r3, r0, lsr #1
 8000db2:	6008      	str	r0, [r1, #0]
 8000db4:	4050      	eors	r0, r2
 8000db6:	bd10      	pop	{r4, pc}
 8000db8:	20000014 	.word	0x20000014
 8000dbc:	41c64e6d 	.word	0x41c64e6d
 8000dc0:	20000010 	.word	0x20000010
 8000dc4:	d0000001 	.word	0xd0000001

08000dc8 <imu_read>:
 8000dc8:	b510      	push	{r4, lr}
 8000dca:	212c      	movs	r1, #44	; 0x2c
 8000dcc:	20d0      	movs	r0, #208	; 0xd0
 8000dce:	f000 fd76 	bl	80018be <i2c_read_reg>
 8000dd2:	212d      	movs	r1, #45	; 0x2d
 8000dd4:	4604      	mov	r4, r0
 8000dd6:	20d0      	movs	r0, #208	; 0xd0
 8000dd8:	f000 fd71 	bl	80018be <i2c_read_reg>
 8000ddc:	4b02      	ldr	r3, [pc, #8]	; (8000de8 <imu_read+0x20>)
 8000dde:	ea44 2000 	orr.w	r0, r4, r0, lsl #8
 8000de2:	8098      	strh	r0, [r3, #4]
 8000de4:	bd10      	pop	{r4, pc}
 8000de6:	bf00      	nop
 8000de8:	20000a90 	.word	0x20000a90

08000dec <imu_init>:
 8000dec:	b510      	push	{r4, lr}
 8000dee:	20d0      	movs	r0, #208	; 0xd0
 8000df0:	2120      	movs	r1, #32
 8000df2:	227f      	movs	r2, #127	; 0x7f
 8000df4:	f000 fd50 	bl	8001898 <i2c_write_reg>
 8000df8:	20d0      	movs	r0, #208	; 0xd0
 8000dfa:	2121      	movs	r1, #33	; 0x21
 8000dfc:	2200      	movs	r2, #0
 8000dfe:	f000 fd4b 	bl	8001898 <i2c_write_reg>
 8000e02:	20d0      	movs	r0, #208	; 0xd0
 8000e04:	2122      	movs	r1, #34	; 0x22
 8000e06:	2200      	movs	r2, #0
 8000e08:	f000 fd46 	bl	8001898 <i2c_write_reg>
 8000e0c:	20d0      	movs	r0, #208	; 0xd0
 8000e0e:	2123      	movs	r1, #35	; 0x23
 8000e10:	2210      	movs	r2, #16
 8000e12:	f000 fd41 	bl	8001898 <i2c_write_reg>
 8000e16:	20d0      	movs	r0, #208	; 0xd0
 8000e18:	2124      	movs	r1, #36	; 0x24
 8000e1a:	2200      	movs	r2, #0
 8000e1c:	f000 fd3c 	bl	8001898 <i2c_write_reg>
 8000e20:	4b07      	ldr	r3, [pc, #28]	; (8000e40 <imu_init+0x54>)
 8000e22:	2400      	movs	r4, #0
 8000e24:	801c      	strh	r4, [r3, #0]
 8000e26:	805c      	strh	r4, [r3, #2]
 8000e28:	809c      	strh	r4, [r3, #4]
 8000e2a:	80dc      	strh	r4, [r3, #6]
 8000e2c:	811c      	strh	r4, [r3, #8]
 8000e2e:	815c      	strh	r4, [r3, #10]
 8000e30:	819c      	strh	r4, [r3, #12]
 8000e32:	81dc      	strh	r4, [r3, #14]
 8000e34:	821c      	strh	r4, [r3, #16]
 8000e36:	f7ff ffc7 	bl	8000dc8 <imu_read>
 8000e3a:	4620      	mov	r0, r4
 8000e3c:	bd10      	pop	{r4, pc}
 8000e3e:	bf00      	nop
 8000e40:	20000a90 	.word	0x20000a90

08000e44 <camera_init>:
 8000e44:	4b02      	ldr	r3, [pc, #8]	; (8000e50 <camera_init+0xc>)
 8000e46:	2200      	movs	r2, #0
 8000e48:	701a      	strb	r2, [r3, #0]
 8000e4a:	605a      	str	r2, [r3, #4]
 8000e4c:	4770      	bx	lr
 8000e4e:	bf00      	nop
 8000e50:	20000aa4 	.word	0x20000aa4

08000e54 <camera_read>:
 8000e54:	b510      	push	{r4, lr}
 8000e56:	2101      	movs	r1, #1
 8000e58:	20f0      	movs	r0, #240	; 0xf0
 8000e5a:	f000 fd30 	bl	80018be <i2c_read_reg>
 8000e5e:	4c04      	ldr	r4, [pc, #16]	; (8000e70 <camera_read+0x1c>)
 8000e60:	2102      	movs	r1, #2
 8000e62:	7020      	strb	r0, [r4, #0]
 8000e64:	20f0      	movs	r0, #240	; 0xf0
 8000e66:	f000 fd2a 	bl	80018be <i2c_read_reg>
 8000e6a:	6060      	str	r0, [r4, #4]
 8000e6c:	bd10      	pop	{r4, pc}
 8000e6e:	bf00      	nop
 8000e70:	20000aa4 	.word	0x20000aa4

08000e74 <fuzzy_mux_process>:
 8000e74:	ee07 0a90 	vmov	s15, r0
 8000e78:	ed9f 7a07 	vldr	s14, [pc, #28]	; 8000e98 <fuzzy_mux_process+0x24>
 8000e7c:	ee06 2a90 	vmov	s13, r2
 8000e80:	ee37 7a67 	vsub.f32	s14, s14, s15
 8000e84:	ee27 7a26 	vmul.f32	s14, s14, s13
 8000e88:	ee06 1a90 	vmov	s13, r1
 8000e8c:	ee07 7aa6 	vmla.f32	s14, s15, s13
 8000e90:	ee17 0a10 	vmov	r0, s14
 8000e94:	4770      	bx	lr
 8000e96:	bf00      	nop
 8000e98:	3f800000 	.word	0x3f800000

08000e9c <line_sensor_thread>:
 8000e9c:	b508      	push	{r3, lr}
 8000e9e:	f7ff fe2f 	bl	8000b00 <line_sensor_init>
 8000ea2:	2000      	movs	r0, #0
 8000ea4:	2104      	movs	r1, #4
 8000ea6:	f001 f939 	bl	800211c <event_timer_set_period>
 8000eaa:	2000      	movs	r0, #0
 8000eac:	f001 f94c 	bl	8002148 <event_timer_wait>
 8000eb0:	f7ff ff06 	bl	8000cc0 <line_sensor_read>
 8000eb4:	e7f9      	b.n	8000eaa <line_sensor_thread+0xe>

08000eb6 <i2c_sensor_thread>:
 8000eb6:	b508      	push	{r3, lr}
 8000eb8:	f7ff ff98 	bl	8000dec <imu_init>
 8000ebc:	f7ff ffc2 	bl	8000e44 <camera_init>
 8000ec0:	2001      	movs	r0, #1
 8000ec2:	2114      	movs	r1, #20
 8000ec4:	f001 f92a 	bl	800211c <event_timer_set_period>
 8000ec8:	2001      	movs	r0, #1
 8000eca:	f001 f93d 	bl	8002148 <event_timer_wait>
 8000ece:	f7ff ff7b 	bl	8000dc8 <imu_read>
 8000ed2:	f7ff ffbf 	bl	8000e54 <camera_read>
 8000ed6:	e7f7      	b.n	8000ec8 <i2c_sensor_thread+0x12>

08000ed8 <line_follower>:
 8000ed8:	b510      	push	{r4, lr}
 8000eda:	f000 f8f3 	bl	80010c4 <line_follower_init>
 8000ede:	2002      	movs	r0, #2
 8000ee0:	2104      	movs	r1, #4
 8000ee2:	f001 f91b 	bl	800211c <event_timer_set_period>
 8000ee6:	2400      	movs	r4, #0
 8000ee8:	2002      	movs	r0, #2
 8000eea:	f001 f92d 	bl	8002148 <event_timer_wait>
 8000eee:	4b10      	ldr	r3, [pc, #64]	; (8000f30 <line_follower+0x58>)
 8000ef0:	6c1a      	ldr	r2, [r3, #64]	; 0x40
 8000ef2:	f5b2 7f02 	cmp.w	r2, #520	; 0x208
 8000ef6:	dd02      	ble.n	8000efe <line_follower+0x26>
 8000ef8:	f000 f8da 	bl	80010b0 <obstacle_main>
 8000efc:	e008      	b.n	8000f10 <line_follower+0x38>
 8000efe:	f893 3038 	ldrb.w	r3, [r3, #56]	; 0x38
 8000f02:	2b02      	cmp	r3, #2
 8000f04:	d102      	bne.n	8000f0c <line_follower+0x34>
 8000f06:	f000 f91f 	bl	8001148 <line_follower_main>
 8000f0a:	e001      	b.n	8000f10 <line_follower+0x38>
 8000f0c:	f000 f850 	bl	8000fb0 <broken_line_main>
 8000f10:	3401      	adds	r4, #1
 8000f12:	2314      	movs	r3, #20
 8000f14:	fbb4 f2f3 	udiv	r2, r4, r3
 8000f18:	fb03 4312 	mls	r3, r3, r2, r4
 8000f1c:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8000f20:	b913      	cbnz	r3, 8000f28 <line_follower+0x50>
 8000f22:	f001 f9d5 	bl	80022d0 <led_on>
 8000f26:	e7df      	b.n	8000ee8 <line_follower+0x10>
 8000f28:	f001 f9e4 	bl	80022f4 <led_off>
 8000f2c:	e7dc      	b.n	8000ee8 <line_follower+0x10>
 8000f2e:	bf00      	nop
 8000f30:	20000a48 	.word	0x20000a48

08000f34 <main_thread>:
 8000f34:	b508      	push	{r3, lr}
 8000f36:	4818      	ldr	r0, [pc, #96]	; (8000f98 <main_thread+0x64>)
 8000f38:	f7ff fad0 	bl	80004dc <printf_>
 8000f3c:	4917      	ldr	r1, [pc, #92]	; (8000f9c <main_thread+0x68>)
 8000f3e:	4818      	ldr	r0, [pc, #96]	; (8000fa0 <main_thread+0x6c>)
 8000f40:	f44f 7200 	mov.w	r2, #512	; 0x200
 8000f44:	2306      	movs	r3, #6
 8000f46:	f7ff f9b5 	bl	80002b4 <create_thread>
 8000f4a:	f44f 7200 	mov.w	r2, #512	; 0x200
 8000f4e:	2306      	movs	r3, #6
 8000f50:	4914      	ldr	r1, [pc, #80]	; (8000fa4 <main_thread+0x70>)
 8000f52:	4815      	ldr	r0, [pc, #84]	; (8000fa8 <main_thread+0x74>)
 8000f54:	f7ff f9ae 	bl	80002b4 <create_thread>
 8000f58:	2000      	movs	r0, #0
 8000f5a:	4601      	mov	r1, r0
 8000f5c:	f001 f9e4 	bl	8002328 <drv8834_run>
 8000f60:	f000 f824 	bl	8000fac <broken_line_init>
 8000f64:	f000 f896 	bl	8001094 <obstacle_init>
 8000f68:	f001 f9d6 	bl	8002318 <get_key>
 8000f6c:	b128      	cbz	r0, 8000f7a <main_thread+0x46>
 8000f6e:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 8000f72:	f001 f8c3 	bl	80020fc <timer_delay_ms>
 8000f76:	f7ff ffaf 	bl	8000ed8 <line_follower>
 8000f7a:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8000f7e:	f001 f9a7 	bl	80022d0 <led_on>
 8000f82:	2064      	movs	r0, #100	; 0x64
 8000f84:	f001 f8ba 	bl	80020fc <timer_delay_ms>
 8000f88:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8000f8c:	f001 f9b2 	bl	80022f4 <led_off>
 8000f90:	20c8      	movs	r0, #200	; 0xc8
 8000f92:	f001 f8b3 	bl	80020fc <timer_delay_ms>
 8000f96:	e7e7      	b.n	8000f68 <main_thread+0x34>
 8000f98:	0800256d 	.word	0x0800256d
 8000f9c:	200002ac 	.word	0x200002ac
 8000fa0:	08000e9d 	.word	0x08000e9d
 8000fa4:	200004ac 	.word	0x200004ac
 8000fa8:	08000eb7 	.word	0x08000eb7

08000fac <broken_line_init>:
 8000fac:	4770      	bx	lr
	...

08000fb0 <broken_line_main>:
 8000fb0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8000fb4:	2400      	movs	r4, #0
 8000fb6:	4627      	mov	r7, r4
 8000fb8:	4625      	mov	r5, r4
 8000fba:	4626      	mov	r6, r4
 8000fbc:	f8df 80d0 	ldr.w	r8, [pc, #208]	; 8001090 <broken_line_main+0xe0>
 8000fc0:	f898 3038 	ldrb.w	r3, [r8, #56]	; 0x38
 8000fc4:	2b02      	cmp	r3, #2
 8000fc6:	d05d      	beq.n	8001084 <broken_line_main+0xd4>
 8000fc8:	2005      	movs	r0, #5
 8000fca:	f001 f897 	bl	80020fc <timer_delay_ms>
 8000fce:	2f05      	cmp	r7, #5
 8000fd0:	d853      	bhi.n	800107a <broken_line_main+0xca>
 8000fd2:	e8df f007 	tbb	[pc, r7]
 8000fd6:	1303      	.short	0x1303
 8000fd8:	43413223 	.word	0x43413223
 8000fdc:	2c00      	cmp	r4, #0
 8000fde:	d144      	bne.n	800106a <broken_line_main+0xba>
 8000fe0:	f8d8 303c 	ldr.w	r3, [r8, #60]	; 0x3c
 8000fe4:	2b00      	cmp	r3, #0
 8000fe6:	f04f 0482 	mov.w	r4, #130	; 0x82
 8000fea:	f04f 0701 	mov.w	r7, #1
 8000fee:	bfd4      	ite	le
 8000ff0:	2532      	movle	r5, #50	; 0x32
 8000ff2:	2500      	movgt	r5, #0
 8000ff4:	bfd4      	ite	le
 8000ff6:	2600      	movle	r6, #0
 8000ff8:	2632      	movgt	r6, #50	; 0x32
 8000ffa:	e03e      	b.n	800107a <broken_line_main+0xca>
 8000ffc:	b96c      	cbnz	r4, 800101a <broken_line_main+0x6a>
 8000ffe:	f8d8 303c 	ldr.w	r3, [r8, #60]	; 0x3c
 8001002:	2b00      	cmp	r3, #0
 8001004:	bfcc      	ite	gt
 8001006:	2500      	movgt	r5, #0
 8001008:	f06f 0531 	mvnle.w	r5, #49	; 0x31
 800100c:	bfcc      	ite	gt
 800100e:	f06f 0631 	mvngt.w	r6, #49	; 0x31
 8001012:	2600      	movle	r6, #0
 8001014:	2482      	movs	r4, #130	; 0x82
 8001016:	2702      	movs	r7, #2
 8001018:	e027      	b.n	800106a <broken_line_main+0xba>
 800101a:	3c01      	subs	r4, #1
 800101c:	bb2c      	cbnz	r4, 800106a <broken_line_main+0xba>
 800101e:	f8d8 303c 	ldr.w	r3, [r8, #60]	; 0x3c
 8001022:	2b00      	cmp	r3, #0
 8001024:	f04f 0482 	mov.w	r4, #130	; 0x82
 8001028:	f04f 0703 	mov.w	r7, #3
 800102c:	bfd4      	ite	le
 800102e:	2500      	movle	r5, #0
 8001030:	2532      	movgt	r5, #50	; 0x32
 8001032:	bfd4      	ite	le
 8001034:	2632      	movle	r6, #50	; 0x32
 8001036:	2600      	movgt	r6, #0
 8001038:	e01f      	b.n	800107a <broken_line_main+0xca>
 800103a:	b964      	cbnz	r4, 8001056 <broken_line_main+0xa6>
 800103c:	f8d8 303c 	ldr.w	r3, [r8, #60]	; 0x3c
 8001040:	2b00      	cmp	r3, #0
 8001042:	bfcc      	ite	gt
 8001044:	f06f 0531 	mvngt.w	r5, #49	; 0x31
 8001048:	2500      	movle	r5, #0
 800104a:	bfcc      	ite	gt
 800104c:	2600      	movgt	r6, #0
 800104e:	2632      	movle	r6, #50	; 0x32
 8001050:	2482      	movs	r4, #130	; 0x82
 8001052:	2704      	movs	r7, #4
 8001054:	e009      	b.n	800106a <broken_line_main+0xba>
 8001056:	3c01      	subs	r4, #1
 8001058:	b14c      	cbz	r4, 800106e <broken_line_main+0xbe>
 800105a:	e006      	b.n	800106a <broken_line_main+0xba>
 800105c:	b164      	cbz	r4, 8001078 <broken_line_main+0xc8>
 800105e:	2d27      	cmp	r5, #39	; 0x27
 8001060:	bfd8      	it	le
 8001062:	3501      	addle	r5, #1
 8001064:	2e27      	cmp	r6, #39	; 0x27
 8001066:	bfd8      	it	le
 8001068:	3601      	addle	r6, #1
 800106a:	3c01      	subs	r4, #1
 800106c:	e005      	b.n	800107a <broken_line_main+0xca>
 800106e:	2500      	movs	r5, #0
 8001070:	2441      	movs	r4, #65	; 0x41
 8001072:	2705      	movs	r7, #5
 8001074:	462e      	mov	r6, r5
 8001076:	e000      	b.n	800107a <broken_line_main+0xca>
 8001078:	4627      	mov	r7, r4
 800107a:	b228      	sxth	r0, r5
 800107c:	b231      	sxth	r1, r6
 800107e:	f001 f953 	bl	8002328 <drv8834_run>
 8001082:	e79b      	b.n	8000fbc <broken_line_main+0xc>
 8001084:	2000      	movs	r0, #0
 8001086:	4601      	mov	r1, r0
 8001088:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 800108c:	f001 b94c 	b.w	8002328 <drv8834_run>
 8001090:	20000a48 	.word	0x20000a48

08001094 <obstacle_init>:
 8001094:	2300      	movs	r3, #0
 8001096:	4a04      	ldr	r2, [pc, #16]	; (80010a8 <obstacle_init+0x14>)
 8001098:	5a99      	ldrh	r1, [r3, r2]
 800109a:	4a04      	ldr	r2, [pc, #16]	; (80010ac <obstacle_init+0x18>)
 800109c:	5299      	strh	r1, [r3, r2]
 800109e:	3302      	adds	r3, #2
 80010a0:	2b40      	cmp	r3, #64	; 0x40
 80010a2:	d1f8      	bne.n	8001096 <obstacle_init+0x2>
 80010a4:	4770      	bx	lr
 80010a6:	bf00      	nop
 80010a8:	20000018 	.word	0x20000018
 80010ac:	20000d0c 	.word	0x20000d0c

080010b0 <obstacle_main>:
 80010b0:	b508      	push	{r3, lr}
 80010b2:	2000      	movs	r0, #0
 80010b4:	4601      	mov	r1, r0
 80010b6:	f001 f937 	bl	8002328 <drv8834_run>
 80010ba:	2064      	movs	r0, #100	; 0x64
 80010bc:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80010c0:	f001 b81c 	b.w	80020fc <timer_delay_ms>

080010c4 <line_follower_init>:
 80010c4:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 80010c6:	4b17      	ldr	r3, [pc, #92]	; (8001124 <line_follower_init+0x60>)
 80010c8:	4e17      	ldr	r6, [pc, #92]	; (8001128 <line_follower_init+0x64>)
 80010ca:	4f18      	ldr	r7, [pc, #96]	; (800112c <line_follower_init+0x68>)
 80010cc:	4d18      	ldr	r5, [pc, #96]	; (8001130 <line_follower_init+0x6c>)
 80010ce:	2400      	movs	r4, #0
 80010d0:	f04f 527e 	mov.w	r2, #1065353216	; 0x3f800000
 80010d4:	601a      	str	r2, [r3, #0]
 80010d6:	605c      	str	r4, [r3, #4]
 80010d8:	609c      	str	r4, [r3, #8]
 80010da:	4630      	mov	r0, r6
 80010dc:	4639      	mov	r1, r7
 80010de:	4622      	mov	r2, r4
 80010e0:	4623      	mov	r3, r4
 80010e2:	9400      	str	r4, [sp, #0]
 80010e4:	9401      	str	r4, [sp, #4]
 80010e6:	f000 f8c1 	bl	800126c <pid_init>
 80010ea:	4630      	mov	r0, r6
 80010ec:	4e11      	ldr	r6, [pc, #68]	; (8001134 <line_follower_init+0x70>)
 80010ee:	9400      	str	r4, [sp, #0]
 80010f0:	4629      	mov	r1, r5
 80010f2:	4a11      	ldr	r2, [pc, #68]	; (8001138 <line_follower_init+0x74>)
 80010f4:	4b11      	ldr	r3, [pc, #68]	; (800113c <line_follower_init+0x78>)
 80010f6:	f000 f8e9 	bl	80012cc <pid_synthetise>
 80010fa:	4630      	mov	r0, r6
 80010fc:	4639      	mov	r1, r7
 80010fe:	4622      	mov	r2, r4
 8001100:	4623      	mov	r3, r4
 8001102:	9400      	str	r4, [sp, #0]
 8001104:	9401      	str	r4, [sp, #4]
 8001106:	f000 f8b1 	bl	800126c <pid_init>
 800110a:	9400      	str	r4, [sp, #0]
 800110c:	4630      	mov	r0, r6
 800110e:	4629      	mov	r1, r5
 8001110:	4a0b      	ldr	r2, [pc, #44]	; (8001140 <line_follower_init+0x7c>)
 8001112:	4b0c      	ldr	r3, [pc, #48]	; (8001144 <line_follower_init+0x80>)
 8001114:	f000 f8da 	bl	80012cc <pid_synthetise>
 8001118:	b003      	add	sp, #12
 800111a:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
 800111e:	f000 b915 	b.w	800134c <predictor_init>
 8001122:	bf00      	nop
 8001124:	20000d4c 	.word	0x20000d4c
 8001128:	20000d80 	.word	0x20000d80
 800112c:	42c80000 	.word	0x42c80000
 8001130:	412db492 	.word	0x412db492
 8001134:	20000d58 	.word	0x20000d58
 8001138:	c1abf7e2 	.word	0xc1abf7e2
 800113c:	412a3b33 	.word	0x412a3b33
 8001140:	c1ab198b 	.word	0xc1ab198b
 8001144:	41287e84 	.word	0x41287e84

08001148 <line_follower_main>:
 8001148:	b570      	push	{r4, r5, r6, lr}
 800114a:	4d3d      	ldr	r5, [pc, #244]	; (8001240 <line_follower_main+0xf8>)
 800114c:	483d      	ldr	r0, [pc, #244]	; (8001244 <line_follower_main+0xfc>)
 800114e:	ed95 7a0f 	vldr	s14, [r5, #60]	; 0x3c
 8001152:	ed2d 8b02 	vpush	{d8}
 8001156:	eef8 7ac7 	vcvt.f32.s32	s15, s14
 800115a:	ed9f 8a3b 	vldr	s16, [pc, #236]	; 8001248 <line_follower_main+0x100>
 800115e:	ee67 7a88 	vmul.f32	s15, s15, s16
 8001162:	eddf 8a3a 	vldr	s17, [pc, #232]	; 800124c <line_follower_main+0x104>
 8001166:	ee17 1a90 	vmov	r1, s15
 800116a:	f000 f8b5 	bl	80012d8 <pid_process>
 800116e:	ed95 7a0f 	vldr	s14, [r5, #60]	; 0x3c
 8001172:	eef8 7ac7 	vcvt.f32.s32	s15, s14
 8001176:	4606      	mov	r6, r0
 8001178:	ee67 7a88 	vmul.f32	s15, s15, s16
 800117c:	4834      	ldr	r0, [pc, #208]	; (8001250 <line_follower_main+0x108>)
 800117e:	ee17 1a90 	vmov	r1, s15
 8001182:	f000 f8a9 	bl	80012d8 <pid_process>
 8001186:	ed95 7a0f 	vldr	s14, [r5, #60]	; 0x3c
 800118a:	eef8 7ac7 	vcvt.f32.s32	s15, s14
 800118e:	4604      	mov	r4, r0
 8001190:	ee67 7a88 	vmul.f32	s15, s15, s16
 8001194:	ed9f 8a2f 	vldr	s16, [pc, #188]	; 8001254 <line_follower_main+0x10c>
 8001198:	ee17 0a90 	vmov	r0, s15
 800119c:	f7ff fdc6 	bl	8000d2c <m_abs>
 80011a0:	ee07 0a90 	vmov	s15, r0
 80011a4:	ee78 8ae7 	vsub.f32	s17, s17, s15
 80011a8:	4622      	mov	r2, r4
 80011aa:	4631      	mov	r1, r6
 80011ac:	ee18 0a90 	vmov	r0, s17
 80011b0:	f7ff fe60 	bl	8000e74 <fuzzy_mux_process>
 80011b4:	4c28      	ldr	r4, [pc, #160]	; (8001258 <line_follower_main+0x110>)
 80011b6:	4b29      	ldr	r3, [pc, #164]	; (800125c <line_follower_main+0x114>)
 80011b8:	60a0      	str	r0, [r4, #8]
 80011ba:	f9b5 003c 	ldrsh.w	r0, [r5, #60]	; 0x3c
 80011be:	6023      	str	r3, [r4, #0]
 80011c0:	f000 f908 	bl	80013d4 <predictor_process>
 80011c4:	ee07 0a10 	vmov	s14, r0
 80011c8:	eef8 7ac7 	vcvt.f32.s32	s15, s14
 80011cc:	ed9f 7a24 	vldr	s14, [pc, #144]	; 8001260 <line_follower_main+0x118>
 80011d0:	eec7 7a88 	vdiv.f32	s15, s15, s16
 80011d4:	ee18 1a90 	vmov	r1, s17
 80011d8:	edc4 7a00 	vstr	s15, [r4]
 80011dc:	edd4 7a01 	vldr	s15, [r4, #4]
 80011e0:	ee48 7a87 	vmla.f32	s15, s17, s14
 80011e4:	ee17 0a90 	vmov	r0, s15
 80011e8:	f7ff fdc3 	bl	8000d72 <m_min>
 80011ec:	ed94 7a00 	vldr	s14, [r4]
 80011f0:	eddf 7a1c 	vldr	s15, [pc, #112]	; 8001264 <line_follower_main+0x11c>
 80011f4:	ee67 7a27 	vmul.f32	s15, s14, s15
 80011f8:	491b      	ldr	r1, [pc, #108]	; (8001268 <line_follower_main+0x120>)
 80011fa:	6060      	str	r0, [r4, #4]
 80011fc:	ee17 2a90 	vmov	r2, s15
 8001200:	f7ff fda0 	bl	8000d44 <m_saturate>
 8001204:	ed94 7a02 	vldr	s14, [r4, #8]
 8001208:	ee07 0a90 	vmov	s15, r0
 800120c:	ee77 6ac7 	vsub.f32	s13, s15, s14
 8001210:	ee77 7a87 	vadd.f32	s15, s15, s14
 8001214:	ee66 6a88 	vmul.f32	s13, s13, s16
 8001218:	ee27 8a88 	vmul.f32	s16, s15, s16
 800121c:	eefd 6ae6 	vcvt.s32.f32	s13, s13
 8001220:	eebd 8ac8 	vcvt.s32.f32	s16, s16
 8001224:	6060      	str	r0, [r4, #4]
 8001226:	ee18 1a10 	vmov	r1, s16
 800122a:	ecbd 8b02 	vpop	{d8}
 800122e:	ee16 0a90 	vmov	r0, s13
 8001232:	b209      	sxth	r1, r1
 8001234:	b200      	sxth	r0, r0
 8001236:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 800123a:	f001 b875 	b.w	8002328 <drv8834_run>
 800123e:	bf00      	nop
 8001240:	20000a48 	.word	0x20000a48
 8001244:	20000d80 	.word	0x20000d80
 8001248:	3b800000 	.word	0x3b800000
 800124c:	3f800000 	.word	0x3f800000
 8001250:	20000d58 	.word	0x20000d58
 8001254:	42c80000 	.word	0x42c80000
 8001258:	20000d4c 	.word	0x20000d4c
 800125c:	3f333333 	.word	0x3f333333
 8001260:	3c23d70a 	.word	0x3c23d70a
 8001264:	3f666666 	.word	0x3f666666
 8001268:	3ecccccd 	.word	0x3ecccccd

0800126c <pid_init>:
 800126c:	ee06 2a10 	vmov	s12, r2
 8001270:	ee05 3a90 	vmov	s11, r3
 8001274:	eddd 7a00 	vldr	s15, [sp]
 8001278:	ee76 6a25 	vadd.f32	s13, s12, s11
 800127c:	ed9d 7a01 	vldr	s14, [sp, #4]
 8001280:	ee76 6aa7 	vadd.f32	s13, s13, s15
 8001284:	ee77 5aa7 	vadd.f32	s11, s15, s15
 8001288:	ee76 6a87 	vadd.f32	s13, s13, s14
 800128c:	eeb1 6a46 	vneg.f32	s12, s12
 8001290:	edc0 6a04 	vstr	s13, [r0, #16]
 8001294:	eddf 6a0c 	vldr	s13, [pc, #48]	; 80012c8 <pid_init+0x5c>
 8001298:	ee36 6a65 	vsub.f32	s12, s12, s11
 800129c:	ee67 6a26 	vmul.f32	s13, s14, s13
 80012a0:	2200      	movs	r2, #0
 80012a2:	ee36 6a66 	vsub.f32	s12, s12, s13
 80012a6:	ee77 7aa6 	vadd.f32	s15, s15, s13
 80012aa:	eeb1 7a47 	vneg.f32	s14, s14
 80012ae:	6002      	str	r2, [r0, #0]
 80012b0:	6042      	str	r2, [r0, #4]
 80012b2:	6082      	str	r2, [r0, #8]
 80012b4:	60c2      	str	r2, [r0, #12]
 80012b6:	ed80 6a05 	vstr	s12, [r0, #20]
 80012ba:	edc0 7a06 	vstr	s15, [r0, #24]
 80012be:	ed80 7a07 	vstr	s14, [r0, #28]
 80012c2:	6202      	str	r2, [r0, #32]
 80012c4:	6241      	str	r1, [r0, #36]	; 0x24
 80012c6:	4770      	bx	lr
 80012c8:	40400000 	.word	0x40400000

080012cc <pid_synthetise>:
 80012cc:	6183      	str	r3, [r0, #24]
 80012ce:	9b00      	ldr	r3, [sp, #0]
 80012d0:	6101      	str	r1, [r0, #16]
 80012d2:	6142      	str	r2, [r0, #20]
 80012d4:	61c3      	str	r3, [r0, #28]
 80012d6:	4770      	bx	lr

080012d8 <pid_process>:
 80012d8:	edd0 7a08 	vldr	s15, [r0, #32]
 80012dc:	ee05 1a90 	vmov	s11, r1
 80012e0:	ed90 5a04 	vldr	s10, [r0, #16]
 80012e4:	ee45 7a85 	vmla.f32	s15, s11, s10
 80012e8:	ed90 6a00 	vldr	s12, [r0]
 80012ec:	edd0 5a05 	vldr	s11, [r0, #20]
 80012f0:	ee46 7a25 	vmla.f32	s15, s12, s11
 80012f4:	edd0 6a01 	vldr	s13, [r0, #4]
 80012f8:	ed80 6a01 	vstr	s12, [r0, #4]
 80012fc:	ed90 6a06 	vldr	s12, [r0, #24]
 8001300:	ee46 7a86 	vmla.f32	s15, s13, s12
 8001304:	ed90 7a02 	vldr	s14, [r0, #8]
 8001308:	edc0 6a02 	vstr	s13, [r0, #8]
 800130c:	edd0 6a07 	vldr	s13, [r0, #28]
 8001310:	ee47 7a26 	vmla.f32	s15, s14, s13
 8001314:	ed80 7a03 	vstr	s14, [r0, #12]
 8001318:	ed90 7a09 	vldr	s14, [r0, #36]	; 0x24
 800131c:	eef4 7ac7 	vcmpe.f32	s15, s14
 8001320:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001324:	edc0 7a08 	vstr	s15, [r0, #32]
 8001328:	bfc8      	it	gt
 800132a:	ed80 7a08 	vstrgt	s14, [r0, #32]
 800132e:	edd0 7a08 	vldr	s15, [r0, #32]
 8001332:	eeb1 7a47 	vneg.f32	s14, s14
 8001336:	eef4 7ac7 	vcmpe.f32	s15, s14
 800133a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800133e:	bf48      	it	mi
 8001340:	ed80 7a08 	vstrmi	s14, [r0, #32]
 8001344:	6001      	str	r1, [r0, #0]
 8001346:	6a00      	ldr	r0, [r0, #32]
 8001348:	4770      	bx	lr
	...

0800134c <predictor_init>:
 800134c:	b570      	push	{r4, r5, r6, lr}
 800134e:	2300      	movs	r3, #0
 8001350:	4e1c      	ldr	r6, [pc, #112]	; (80013c4 <predictor_init+0x78>)
 8001352:	2500      	movs	r5, #0
 8001354:	539d      	strh	r5, [r3, r6]
 8001356:	3302      	adds	r3, #2
 8001358:	2b20      	cmp	r3, #32
 800135a:	d1f9      	bne.n	8001350 <predictor_init+0x4>
 800135c:	2400      	movs	r4, #0
 800135e:	f7ff fd17 	bl	8000d90 <m_rnd>
 8001362:	1973      	adds	r3, r6, r5
 8001364:	4423      	add	r3, r4
 8001366:	3402      	adds	r4, #2
 8001368:	f3c0 00c4 	ubfx	r0, r0, #3, #5
 800136c:	2c20      	cmp	r4, #32
 800136e:	4915      	ldr	r1, [pc, #84]	; (80013c4 <predictor_init+0x78>)
 8001370:	8418      	strh	r0, [r3, #32]
 8001372:	d1f4      	bne.n	800135e <predictor_init+0x12>
 8001374:	3520      	adds	r5, #32
 8001376:	f5b5 7f00 	cmp.w	r5, #512	; 0x200
 800137a:	d1ef      	bne.n	800135c <predictor_init+0x10>
 800137c:	4b12      	ldr	r3, [pc, #72]	; (80013c8 <predictor_init+0x7c>)
 800137e:	f103 0020 	add.w	r0, r3, #32
 8001382:	2232      	movs	r2, #50	; 0x32
 8001384:	f823 2f02 	strh.w	r2, [r3, #2]!
 8001388:	2200      	movs	r2, #0
 800138a:	4283      	cmp	r3, r0
 800138c:	841a      	strh	r2, [r3, #32]
 800138e:	d1f8      	bne.n	8001382 <predictor_init+0x36>
 8001390:	480e      	ldr	r0, [pc, #56]	; (80013cc <predictor_init+0x80>)
 8001392:	2300      	movs	r3, #0
 8001394:	eb00 1002 	add.w	r0, r0, r2, lsl #4
 8001398:	1854      	adds	r4, r2, r1
 800139a:	eb04 1403 	add.w	r4, r4, r3, lsl #4
 800139e:	5ac5      	ldrh	r5, [r0, r3]
 80013a0:	3302      	adds	r3, #2
 80013a2:	2b20      	cmp	r3, #32
 80013a4:	8425      	strh	r5, [r4, #32]
 80013a6:	d1f7      	bne.n	8001398 <predictor_init+0x4c>
 80013a8:	3202      	adds	r2, #2
 80013aa:	2a20      	cmp	r2, #32
 80013ac:	d1f0      	bne.n	8001390 <predictor_init+0x44>
 80013ae:	2300      	movs	r3, #0
 80013b0:	4907      	ldr	r1, [pc, #28]	; (80013d0 <predictor_init+0x84>)
 80013b2:	18f2      	adds	r2, r6, r3
 80013b4:	5a59      	ldrh	r1, [r3, r1]
 80013b6:	3302      	adds	r3, #2
 80013b8:	2b20      	cmp	r3, #32
 80013ba:	f8a2 1220 	strh.w	r1, [r2, #544]	; 0x220
 80013be:	d1f7      	bne.n	80013b0 <predictor_init+0x64>
 80013c0:	bd70      	pop	{r4, r5, r6, pc}
 80013c2:	bf00      	nop
 80013c4:	20000aac 	.word	0x20000aac
 80013c8:	20000cca 	.word	0x20000cca
 80013cc:	20000078 	.word	0x20000078
 80013d0:	20000058 	.word	0x20000058

080013d4 <predictor_process>:
 80013d4:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 80013d8:	4b36      	ldr	r3, [pc, #216]	; (80014b4 <predictor_process+0xe0>)
 80013da:	f1a3 011e 	sub.w	r1, r3, #30
 80013de:	1c8a      	adds	r2, r1, #2
 80013e0:	f833 4902 	ldrh.w	r4, [r3], #-2
 80013e4:	428b      	cmp	r3, r1
 80013e6:	809c      	strh	r4, [r3, #4]
 80013e8:	d1fa      	bne.n	80013e0 <predictor_process+0xc>
 80013ea:	2800      	cmp	r0, #0
 80013ec:	bfbc      	itt	lt
 80013ee:	4240      	neglt	r0, r0
 80013f0:	b200      	sxthlt	r0, r0
 80013f2:	2300      	movs	r3, #0
 80013f4:	8010      	strh	r0, [r2, #0]
 80013f6:	f44f 5680 	mov.w	r6, #4096	; 0x1000
 80013fa:	4619      	mov	r1, r3
 80013fc:	4c2e      	ldr	r4, [pc, #184]	; (80014b8 <predictor_process+0xe4>)
 80013fe:	014f      	lsls	r7, r1, #5
 8001400:	f104 0c20 	add.w	ip, r4, #32
 8001404:	2500      	movs	r5, #0
 8001406:	f834 9f02 	ldrh.w	r9, [r4, #2]!
 800140a:	eb04 0807 	add.w	r8, r4, r7
 800140e:	f8b8 8020 	ldrh.w	r8, [r8, #32]
 8001412:	ebc8 0809 	rsb	r8, r8, r9
 8001416:	f1b8 0f00 	cmp.w	r8, #0
 800141a:	bfb8      	it	lt
 800141c:	f1c8 0800 	rsblt	r8, r8, #0
 8001420:	4564      	cmp	r4, ip
 8001422:	4445      	add	r5, r8
 8001424:	d1ef      	bne.n	8001406 <predictor_process+0x32>
 8001426:	42b5      	cmp	r5, r6
 8001428:	bfb8      	it	lt
 800142a:	460b      	movlt	r3, r1
 800142c:	f101 0101 	add.w	r1, r1, #1
 8001430:	bfb8      	it	lt
 8001432:	462e      	movlt	r6, r5
 8001434:	2910      	cmp	r1, #16
 8001436:	d1e1      	bne.n	80013fc <predictor_process+0x28>
 8001438:	eb02 1843 	add.w	r8, r2, r3, lsl #5
 800143c:	2400      	movs	r4, #0
 800143e:	eb08 0604 	add.w	r6, r8, r4
 8001442:	5b17      	ldrh	r7, [r2, r4]
 8001444:	f8b6 c020 	ldrh.w	ip, [r6, #32]
 8001448:	491c      	ldr	r1, [pc, #112]	; (80014bc <predictor_process+0xe8>)
 800144a:	251f      	movs	r5, #31
 800144c:	fb05 770c 	mla	r7, r5, ip, r7
 8001450:	097f      	lsrs	r7, r7, #5
 8001452:	3402      	adds	r4, #2
 8001454:	f5b7 7f80 	cmp.w	r7, #256	; 0x100
 8001458:	bf28      	it	cs
 800145a:	f44f 7780 	movcs.w	r7, #256	; 0x100
 800145e:	2c20      	cmp	r4, #32
 8001460:	8437      	strh	r7, [r6, #32]
 8001462:	d1ec      	bne.n	800143e <predictor_process+0x6a>
 8001464:	f503 7490 	add.w	r4, r3, #288	; 0x120
 8001468:	f503 7388 	add.w	r3, r3, #272	; 0x110
 800146c:	f831 6014 	ldrh.w	r6, [r1, r4, lsl #1]
 8001470:	fb05 0006 	mla	r0, r5, r6, r0
 8001474:	0940      	lsrs	r0, r0, #5
 8001476:	f821 0014 	strh.w	r0, [r1, r4, lsl #1]
 800147a:	2428      	movs	r4, #40	; 0x28
 800147c:	b280      	uxth	r0, r0
 800147e:	4360      	muls	r0, r4
 8001480:	2464      	movs	r4, #100	; 0x64
 8001482:	fbb0 f0f4 	udiv	r0, r0, r4
 8001486:	f831 4013 	ldrh.w	r4, [r1, r3, lsl #1]
 800148a:	f1c0 0001 	rsb	r0, r0, #1
 800148e:	4420      	add	r0, r4
 8001490:	b280      	uxth	r0, r0
 8001492:	2831      	cmp	r0, #49	; 0x31
 8001494:	bf98      	it	ls
 8001496:	2032      	movls	r0, #50	; 0x32
 8001498:	f821 0013 	strh.w	r0, [r1, r3, lsl #1]
 800149c:	f832 1013 	ldrh.w	r1, [r2, r3, lsl #1]
 80014a0:	2964      	cmp	r1, #100	; 0x64
 80014a2:	d903      	bls.n	80014ac <predictor_process+0xd8>
 80014a4:	4905      	ldr	r1, [pc, #20]	; (80014bc <predictor_process+0xe8>)
 80014a6:	2064      	movs	r0, #100	; 0x64
 80014a8:	f821 0013 	strh.w	r0, [r1, r3, lsl #1]
 80014ac:	f832 0013 	ldrh.w	r0, [r2, r3, lsl #1]
 80014b0:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 80014b4:	20000ac8 	.word	0x20000ac8
 80014b8:	20000aaa 	.word	0x20000aaa
 80014bc:	20000aac 	.word	0x20000aac

080014c0 <uart_write>:
 80014c0:	4b03      	ldr	r3, [pc, #12]	; (80014d0 <uart_write+0x10>)
 80014c2:	69da      	ldr	r2, [r3, #28]
 80014c4:	0612      	lsls	r2, r2, #24
 80014c6:	d401      	bmi.n	80014cc <uart_write+0xc>
 80014c8:	bf00      	nop
 80014ca:	e7f9      	b.n	80014c0 <uart_write>
 80014cc:	8518      	strh	r0, [r3, #40]	; 0x28
 80014ce:	4770      	bx	lr
 80014d0:	40013800 	.word	0x40013800

080014d4 <uart_init>:
 80014d4:	b510      	push	{r4, lr}
 80014d6:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 80014da:	b088      	sub	sp, #32
 80014dc:	2101      	movs	r1, #1
 80014de:	f000 fc6b 	bl	8001db8 <RCC_AHBPeriphClockCmd>
 80014e2:	f44f 4080 	mov.w	r0, #16384	; 0x4000
 80014e6:	2101      	movs	r1, #1
 80014e8:	f000 fc74 	bl	8001dd4 <RCC_APB2PeriphClockCmd>
 80014ec:	f44f 63c0 	mov.w	r3, #1536	; 0x600
 80014f0:	9300      	str	r3, [sp, #0]
 80014f2:	2302      	movs	r3, #2
 80014f4:	2400      	movs	r4, #0
 80014f6:	f88d 3004 	strb.w	r3, [sp, #4]
 80014fa:	4669      	mov	r1, sp
 80014fc:	2303      	movs	r3, #3
 80014fe:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8001502:	f88d 3005 	strb.w	r3, [sp, #5]
 8001506:	f88d 4006 	strb.w	r4, [sp, #6]
 800150a:	f88d 4007 	strb.w	r4, [sp, #7]
 800150e:	f000 fe2d 	bl	800216c <GPIO_Init>
 8001512:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8001516:	2109      	movs	r1, #9
 8001518:	2207      	movs	r2, #7
 800151a:	f000 fe75 	bl	8002208 <GPIO_PinAFConfig>
 800151e:	2207      	movs	r2, #7
 8001520:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8001524:	210a      	movs	r1, #10
 8001526:	f000 fe6f 	bl	8002208 <GPIO_PinAFConfig>
 800152a:	9403      	str	r4, [sp, #12]
 800152c:	9404      	str	r4, [sp, #16]
 800152e:	9405      	str	r4, [sp, #20]
 8001530:	9407      	str	r4, [sp, #28]
 8001532:	4c08      	ldr	r4, [pc, #32]	; (8001554 <uart_init+0x80>)
 8001534:	f44f 33e1 	mov.w	r3, #115200	; 0x1c200
 8001538:	9302      	str	r3, [sp, #8]
 800153a:	4620      	mov	r0, r4
 800153c:	230c      	movs	r3, #12
 800153e:	a902      	add	r1, sp, #8
 8001540:	9306      	str	r3, [sp, #24]
 8001542:	f000 f809 	bl	8001558 <USART_Init>
 8001546:	4620      	mov	r0, r4
 8001548:	2101      	movs	r1, #1
 800154a:	f000 f867 	bl	800161c <USART_Cmd>
 800154e:	b008      	add	sp, #32
 8001550:	bd10      	pop	{r4, pc}
 8001552:	bf00      	nop
 8001554:	40013800 	.word	0x40013800

08001558 <USART_Init>:
 8001558:	b530      	push	{r4, r5, lr}
 800155a:	4604      	mov	r4, r0
 800155c:	b099      	sub	sp, #100	; 0x64
 800155e:	460d      	mov	r5, r1
 8001560:	bf00      	nop
 8001562:	bf00      	nop
 8001564:	bf00      	nop
 8001566:	bf00      	nop
 8001568:	bf00      	nop
 800156a:	bf00      	nop
 800156c:	bf00      	nop
 800156e:	6803      	ldr	r3, [r0, #0]
 8001570:	f023 0301 	bic.w	r3, r3, #1
 8001574:	6003      	str	r3, [r0, #0]
 8001576:	6842      	ldr	r2, [r0, #4]
 8001578:	688b      	ldr	r3, [r1, #8]
 800157a:	f422 5240 	bic.w	r2, r2, #12288	; 0x3000
 800157e:	4313      	orrs	r3, r2
 8001580:	6043      	str	r3, [r0, #4]
 8001582:	686a      	ldr	r2, [r5, #4]
 8001584:	68eb      	ldr	r3, [r5, #12]
 8001586:	6801      	ldr	r1, [r0, #0]
 8001588:	431a      	orrs	r2, r3
 800158a:	692b      	ldr	r3, [r5, #16]
 800158c:	f421 51b0 	bic.w	r1, r1, #5632	; 0x1600
 8001590:	f021 010c 	bic.w	r1, r1, #12
 8001594:	4313      	orrs	r3, r2
 8001596:	430b      	orrs	r3, r1
 8001598:	6003      	str	r3, [r0, #0]
 800159a:	6882      	ldr	r2, [r0, #8]
 800159c:	696b      	ldr	r3, [r5, #20]
 800159e:	f422 7240 	bic.w	r2, r2, #768	; 0x300
 80015a2:	4313      	orrs	r3, r2
 80015a4:	6083      	str	r3, [r0, #8]
 80015a6:	a801      	add	r0, sp, #4
 80015a8:	f000 fa7a 	bl	8001aa0 <RCC_GetClocksFreq>
 80015ac:	4b17      	ldr	r3, [pc, #92]	; (800160c <USART_Init+0xb4>)
 80015ae:	429c      	cmp	r4, r3
 80015b0:	d101      	bne.n	80015b6 <USART_Init+0x5e>
 80015b2:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 80015b4:	e00e      	b.n	80015d4 <USART_Init+0x7c>
 80015b6:	4b16      	ldr	r3, [pc, #88]	; (8001610 <USART_Init+0xb8>)
 80015b8:	429c      	cmp	r4, r3
 80015ba:	d101      	bne.n	80015c0 <USART_Init+0x68>
 80015bc:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80015be:	e009      	b.n	80015d4 <USART_Init+0x7c>
 80015c0:	4b14      	ldr	r3, [pc, #80]	; (8001614 <USART_Init+0xbc>)
 80015c2:	429c      	cmp	r4, r3
 80015c4:	d101      	bne.n	80015ca <USART_Init+0x72>
 80015c6:	9a11      	ldr	r2, [sp, #68]	; 0x44
 80015c8:	e004      	b.n	80015d4 <USART_Init+0x7c>
 80015ca:	4b13      	ldr	r3, [pc, #76]	; (8001618 <USART_Init+0xc0>)
 80015cc:	429c      	cmp	r4, r3
 80015ce:	bf0c      	ite	eq
 80015d0:	9a12      	ldreq	r2, [sp, #72]	; 0x48
 80015d2:	9a13      	ldrne	r2, [sp, #76]	; 0x4c
 80015d4:	6823      	ldr	r3, [r4, #0]
 80015d6:	6829      	ldr	r1, [r5, #0]
 80015d8:	f413 4f00 	tst.w	r3, #32768	; 0x8000
 80015dc:	bf18      	it	ne
 80015de:	0052      	lslne	r2, r2, #1
 80015e0:	fbb2 f3f1 	udiv	r3, r2, r1
 80015e4:	fb01 2213 	mls	r2, r1, r3, r2
 80015e8:	ebb2 0f51 	cmp.w	r2, r1, lsr #1
 80015ec:	6822      	ldr	r2, [r4, #0]
 80015ee:	bf28      	it	cs
 80015f0:	3301      	addcs	r3, #1
 80015f2:	0412      	lsls	r2, r2, #16
 80015f4:	d506      	bpl.n	8001604 <USART_Init+0xac>
 80015f6:	f64f 72f0 	movw	r2, #65520	; 0xfff0
 80015fa:	f3c3 0142 	ubfx	r1, r3, #1, #3
 80015fe:	401a      	ands	r2, r3
 8001600:	ea41 0302 	orr.w	r3, r1, r2
 8001604:	b29b      	uxth	r3, r3
 8001606:	81a3      	strh	r3, [r4, #12]
 8001608:	b019      	add	sp, #100	; 0x64
 800160a:	bd30      	pop	{r4, r5, pc}
 800160c:	40013800 	.word	0x40013800
 8001610:	40004400 	.word	0x40004400
 8001614:	40004800 	.word	0x40004800
 8001618:	40004c00 	.word	0x40004c00

0800161c <USART_Cmd>:
 800161c:	bf00      	nop
 800161e:	bf00      	nop
 8001620:	6803      	ldr	r3, [r0, #0]
 8001622:	b111      	cbz	r1, 800162a <USART_Cmd+0xe>
 8001624:	f043 0301 	orr.w	r3, r3, #1
 8001628:	e001      	b.n	800162e <USART_Cmd+0x12>
 800162a:	f023 0301 	bic.w	r3, r3, #1
 800162e:	6003      	str	r3, [r0, #0]
 8001630:	4770      	bx	lr

08001632 <lib_low_level_init>:
 8001632:	b508      	push	{r3, lr}
 8001634:	f000 f9b0 	bl	8001998 <sytem_clock_init>
 8001638:	f000 fdfc 	bl	8002234 <gpio_init>
 800163c:	f7ff ff4a 	bl	80014d4 <uart_init>
 8001640:	f000 fcd6 	bl	8001ff0 <timer_init>
 8001644:	f000 ff24 	bl	8002490 <pwm_init>
 8001648:	f000 fea2 	bl	8002390 <drv8834_init>
 800164c:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001650:	f000 b892 	b.w	8001778 <i2c_0_init>

08001654 <NVIC_Init>:
 8001654:	b510      	push	{r4, lr}
 8001656:	bf00      	nop
 8001658:	bf00      	nop
 800165a:	bf00      	nop
 800165c:	78c2      	ldrb	r2, [r0, #3]
 800165e:	7803      	ldrb	r3, [r0, #0]
 8001660:	b30a      	cbz	r2, 80016a6 <NVIC_Init+0x52>
 8001662:	4a16      	ldr	r2, [pc, #88]	; (80016bc <NVIC_Init+0x68>)
 8001664:	7844      	ldrb	r4, [r0, #1]
 8001666:	68d2      	ldr	r2, [r2, #12]
 8001668:	43d2      	mvns	r2, r2
 800166a:	f3c2 2202 	ubfx	r2, r2, #8, #3
 800166e:	f1c2 0104 	rsb	r1, r2, #4
 8001672:	b2c9      	uxtb	r1, r1
 8001674:	fa04 f101 	lsl.w	r1, r4, r1
 8001678:	240f      	movs	r4, #15
 800167a:	fa44 f202 	asr.w	r2, r4, r2
 800167e:	7884      	ldrb	r4, [r0, #2]
 8001680:	b2c9      	uxtb	r1, r1
 8001682:	4022      	ands	r2, r4
 8001684:	430a      	orrs	r2, r1
 8001686:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
 800168a:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
 800168e:	0112      	lsls	r2, r2, #4
 8001690:	b2d2      	uxtb	r2, r2
 8001692:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
 8001696:	7803      	ldrb	r3, [r0, #0]
 8001698:	2201      	movs	r2, #1
 800169a:	0959      	lsrs	r1, r3, #5
 800169c:	f003 031f 	and.w	r3, r3, #31
 80016a0:	fa02 f303 	lsl.w	r3, r2, r3
 80016a4:	e006      	b.n	80016b4 <NVIC_Init+0x60>
 80016a6:	0959      	lsrs	r1, r3, #5
 80016a8:	2201      	movs	r2, #1
 80016aa:	f003 031f 	and.w	r3, r3, #31
 80016ae:	fa02 f303 	lsl.w	r3, r2, r3
 80016b2:	3120      	adds	r1, #32
 80016b4:	4a02      	ldr	r2, [pc, #8]	; (80016c0 <NVIC_Init+0x6c>)
 80016b6:	f842 3021 	str.w	r3, [r2, r1, lsl #2]
 80016ba:	bd10      	pop	{r4, pc}
 80016bc:	e000ed00 	.word	0xe000ed00
 80016c0:	e000e100 	.word	0xe000e100

080016c4 <i2c_delay>:
 80016c4:	230b      	movs	r3, #11
 80016c6:	3b01      	subs	r3, #1
 80016c8:	d001      	beq.n	80016ce <i2c_delay+0xa>
 80016ca:	bf00      	nop
 80016cc:	e7fb      	b.n	80016c6 <i2c_delay+0x2>
 80016ce:	4770      	bx	lr

080016d0 <SetLowSDA>:
 80016d0:	b537      	push	{r0, r1, r2, r4, r5, lr}
 80016d2:	4d0d      	ldr	r5, [pc, #52]	; (8001708 <SetLowSDA+0x38>)
 80016d4:	2301      	movs	r3, #1
 80016d6:	2203      	movs	r2, #3
 80016d8:	2480      	movs	r4, #128	; 0x80
 80016da:	f88d 3004 	strb.w	r3, [sp, #4]
 80016de:	f88d 3006 	strb.w	r3, [sp, #6]
 80016e2:	4628      	mov	r0, r5
 80016e4:	2300      	movs	r3, #0
 80016e6:	4669      	mov	r1, sp
 80016e8:	f88d 2005 	strb.w	r2, [sp, #5]
 80016ec:	f88d 3007 	strb.w	r3, [sp, #7]
 80016f0:	9400      	str	r4, [sp, #0]
 80016f2:	f000 fd3b 	bl	800216c <GPIO_Init>
 80016f6:	4628      	mov	r0, r5
 80016f8:	4621      	mov	r1, r4
 80016fa:	f000 fd81 	bl	8002200 <GPIO_ResetBits>
 80016fe:	f7ff ffe1 	bl	80016c4 <i2c_delay>
 8001702:	b003      	add	sp, #12
 8001704:	bd30      	pop	{r4, r5, pc}
 8001706:	bf00      	nop
 8001708:	48000400 	.word	0x48000400

0800170c <SetHighSDA>:
 800170c:	b537      	push	{r0, r1, r2, r4, r5, lr}
 800170e:	4d0d      	ldr	r5, [pc, #52]	; (8001744 <SetHighSDA+0x38>)
 8001710:	2203      	movs	r2, #3
 8001712:	2300      	movs	r3, #0
 8001714:	2480      	movs	r4, #128	; 0x80
 8001716:	f88d 2005 	strb.w	r2, [sp, #5]
 800171a:	4628      	mov	r0, r5
 800171c:	2201      	movs	r2, #1
 800171e:	4669      	mov	r1, sp
 8001720:	f88d 3004 	strb.w	r3, [sp, #4]
 8001724:	f88d 2006 	strb.w	r2, [sp, #6]
 8001728:	f88d 3007 	strb.w	r3, [sp, #7]
 800172c:	9400      	str	r4, [sp, #0]
 800172e:	f000 fd1d 	bl	800216c <GPIO_Init>
 8001732:	4628      	mov	r0, r5
 8001734:	4621      	mov	r1, r4
 8001736:	f000 fd5f 	bl	80021f8 <GPIO_SetBits>
 800173a:	f7ff ffc3 	bl	80016c4 <i2c_delay>
 800173e:	b003      	add	sp, #12
 8001740:	bd30      	pop	{r4, r5, pc}
 8001742:	bf00      	nop
 8001744:	48000400 	.word	0x48000400

08001748 <SetLowSCL>:
 8001748:	b508      	push	{r3, lr}
 800174a:	4804      	ldr	r0, [pc, #16]	; (800175c <SetLowSCL+0x14>)
 800174c:	2140      	movs	r1, #64	; 0x40
 800174e:	f000 fd57 	bl	8002200 <GPIO_ResetBits>
 8001752:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001756:	f7ff bfb5 	b.w	80016c4 <i2c_delay>
 800175a:	bf00      	nop
 800175c:	48000400 	.word	0x48000400

08001760 <SetHighSCL>:
 8001760:	b508      	push	{r3, lr}
 8001762:	4804      	ldr	r0, [pc, #16]	; (8001774 <SetHighSCL+0x14>)
 8001764:	2140      	movs	r1, #64	; 0x40
 8001766:	f000 fd47 	bl	80021f8 <GPIO_SetBits>
 800176a:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800176e:	f7ff bfa9 	b.w	80016c4 <i2c_delay>
 8001772:	bf00      	nop
 8001774:	48000400 	.word	0x48000400

08001778 <i2c_0_init>:
 8001778:	b507      	push	{r0, r1, r2, lr}
 800177a:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 800177e:	2101      	movs	r1, #1
 8001780:	f000 fb1a 	bl	8001db8 <RCC_AHBPeriphClockCmd>
 8001784:	23c0      	movs	r3, #192	; 0xc0
 8001786:	9300      	str	r3, [sp, #0]
 8001788:	2301      	movs	r3, #1
 800178a:	2203      	movs	r2, #3
 800178c:	480a      	ldr	r0, [pc, #40]	; (80017b8 <i2c_0_init+0x40>)
 800178e:	f88d 3004 	strb.w	r3, [sp, #4]
 8001792:	4669      	mov	r1, sp
 8001794:	f88d 3006 	strb.w	r3, [sp, #6]
 8001798:	2300      	movs	r3, #0
 800179a:	f88d 2005 	strb.w	r2, [sp, #5]
 800179e:	f88d 3007 	strb.w	r3, [sp, #7]
 80017a2:	f000 fce3 	bl	800216c <GPIO_Init>
 80017a6:	f7ff ffdb 	bl	8001760 <SetHighSCL>
 80017aa:	f7ff ff91 	bl	80016d0 <SetLowSDA>
 80017ae:	f7ff ffad 	bl	800170c <SetHighSDA>
 80017b2:	b003      	add	sp, #12
 80017b4:	f85d fb04 	ldr.w	pc, [sp], #4
 80017b8:	48000400 	.word	0x48000400

080017bc <i2cStart>:
 80017bc:	b508      	push	{r3, lr}
 80017be:	f7ff ffcf 	bl	8001760 <SetHighSCL>
 80017c2:	f7ff ffa3 	bl	800170c <SetHighSDA>
 80017c6:	f7ff ffcb 	bl	8001760 <SetHighSCL>
 80017ca:	f7ff ff81 	bl	80016d0 <SetLowSDA>
 80017ce:	f7ff ffbb 	bl	8001748 <SetLowSCL>
 80017d2:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80017d6:	f7ff bf99 	b.w	800170c <SetHighSDA>

080017da <i2cStop>:
 80017da:	b508      	push	{r3, lr}
 80017dc:	f7ff ffb4 	bl	8001748 <SetLowSCL>
 80017e0:	f7ff ff76 	bl	80016d0 <SetLowSDA>
 80017e4:	f7ff ffbc 	bl	8001760 <SetHighSCL>
 80017e8:	f7ff ff72 	bl	80016d0 <SetLowSDA>
 80017ec:	f7ff ffb8 	bl	8001760 <SetHighSCL>
 80017f0:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80017f4:	f7ff bf8a 	b.w	800170c <SetHighSDA>

080017f8 <i2cWrite>:
 80017f8:	b538      	push	{r3, r4, r5, lr}
 80017fa:	4604      	mov	r4, r0
 80017fc:	2508      	movs	r5, #8
 80017fe:	f7ff ffa3 	bl	8001748 <SetLowSCL>
 8001802:	0623      	lsls	r3, r4, #24
 8001804:	d502      	bpl.n	800180c <i2cWrite+0x14>
 8001806:	f7ff ff81 	bl	800170c <SetHighSDA>
 800180a:	e001      	b.n	8001810 <i2cWrite+0x18>
 800180c:	f7ff ff60 	bl	80016d0 <SetLowSDA>
 8001810:	3d01      	subs	r5, #1
 8001812:	f7ff ffa5 	bl	8001760 <SetHighSCL>
 8001816:	0064      	lsls	r4, r4, #1
 8001818:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 800181c:	b2e4      	uxtb	r4, r4
 800181e:	d1ee      	bne.n	80017fe <i2cWrite+0x6>
 8001820:	f7ff ff92 	bl	8001748 <SetLowSCL>
 8001824:	f7ff ff72 	bl	800170c <SetHighSDA>
 8001828:	f7ff ff9a 	bl	8001760 <SetHighSCL>
 800182c:	4b05      	ldr	r3, [pc, #20]	; (8001844 <i2cWrite+0x4c>)
 800182e:	8a1c      	ldrh	r4, [r3, #16]
 8001830:	b2a4      	uxth	r4, r4
 8001832:	f7ff ff89 	bl	8001748 <SetLowSCL>
 8001836:	f7ff ff45 	bl	80016c4 <i2c_delay>
 800183a:	f084 0080 	eor.w	r0, r4, #128	; 0x80
 800183e:	f3c0 10c0 	ubfx	r0, r0, #7, #1
 8001842:	bd38      	pop	{r3, r4, r5, pc}
 8001844:	48000400 	.word	0x48000400

08001848 <i2cRead>:
 8001848:	b570      	push	{r4, r5, r6, lr}
 800184a:	4606      	mov	r6, r0
 800184c:	f7ff ff7c 	bl	8001748 <SetLowSCL>
 8001850:	f7ff ff5c 	bl	800170c <SetHighSDA>
 8001854:	2508      	movs	r5, #8
 8001856:	2400      	movs	r4, #0
 8001858:	f7ff ff82 	bl	8001760 <SetHighSCL>
 800185c:	4b0d      	ldr	r3, [pc, #52]	; (8001894 <i2cRead+0x4c>)
 800185e:	8a1b      	ldrh	r3, [r3, #16]
 8001860:	0064      	lsls	r4, r4, #1
 8001862:	061a      	lsls	r2, r3, #24
 8001864:	b2e4      	uxtb	r4, r4
 8001866:	bf48      	it	mi
 8001868:	3401      	addmi	r4, #1
 800186a:	f105 35ff 	add.w	r5, r5, #4294967295
 800186e:	bf48      	it	mi
 8001870:	b2e4      	uxtbmi	r4, r4
 8001872:	f7ff ff69 	bl	8001748 <SetLowSCL>
 8001876:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 800187a:	d1ed      	bne.n	8001858 <i2cRead+0x10>
 800187c:	b10e      	cbz	r6, 8001882 <i2cRead+0x3a>
 800187e:	f7ff ff27 	bl	80016d0 <SetLowSDA>
 8001882:	f7ff ff6d 	bl	8001760 <SetHighSCL>
 8001886:	f7ff ff5f 	bl	8001748 <SetLowSCL>
 800188a:	f7ff ff1b 	bl	80016c4 <i2c_delay>
 800188e:	4620      	mov	r0, r4
 8001890:	bd70      	pop	{r4, r5, r6, pc}
 8001892:	bf00      	nop
 8001894:	48000400 	.word	0x48000400

08001898 <i2c_write_reg>:
 8001898:	b570      	push	{r4, r5, r6, lr}
 800189a:	4605      	mov	r5, r0
 800189c:	460c      	mov	r4, r1
 800189e:	4616      	mov	r6, r2
 80018a0:	f7ff ff8c 	bl	80017bc <i2cStart>
 80018a4:	4628      	mov	r0, r5
 80018a6:	f7ff ffa7 	bl	80017f8 <i2cWrite>
 80018aa:	4620      	mov	r0, r4
 80018ac:	f7ff ffa4 	bl	80017f8 <i2cWrite>
 80018b0:	4630      	mov	r0, r6
 80018b2:	f7ff ffa1 	bl	80017f8 <i2cWrite>
 80018b6:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 80018ba:	f7ff bf8e 	b.w	80017da <i2cStop>

080018be <i2c_read_reg>:
 80018be:	b538      	push	{r3, r4, r5, lr}
 80018c0:	4604      	mov	r4, r0
 80018c2:	460d      	mov	r5, r1
 80018c4:	f7ff ff7a 	bl	80017bc <i2cStart>
 80018c8:	4620      	mov	r0, r4
 80018ca:	f7ff ff95 	bl	80017f8 <i2cWrite>
 80018ce:	4628      	mov	r0, r5
 80018d0:	f7ff ff92 	bl	80017f8 <i2cWrite>
 80018d4:	f7ff ff72 	bl	80017bc <i2cStart>
 80018d8:	f044 0001 	orr.w	r0, r4, #1
 80018dc:	f7ff ff8c 	bl	80017f8 <i2cWrite>
 80018e0:	2000      	movs	r0, #0
 80018e2:	f7ff ffb1 	bl	8001848 <i2cRead>
 80018e6:	4604      	mov	r4, r0
 80018e8:	f7ff ff77 	bl	80017da <i2cStop>
 80018ec:	4620      	mov	r0, r4
 80018ee:	bd38      	pop	{r3, r4, r5, pc}

080018f0 <Default_Handler>:
 80018f0:	4668      	mov	r0, sp
 80018f2:	f020 0107 	bic.w	r1, r0, #7
 80018f6:	468d      	mov	sp, r1
 80018f8:	bf00      	nop
 80018fa:	e7fd      	b.n	80018f8 <Default_Handler+0x8>

080018fc <HardFault_Handler>:
 80018fc:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001900:	f000 fce6 	bl	80022d0 <led_on>
 8001904:	4b06      	ldr	r3, [pc, #24]	; (8001920 <HardFault_Handler+0x24>)
 8001906:	3b01      	subs	r3, #1
 8001908:	d001      	beq.n	800190e <HardFault_Handler+0x12>
 800190a:	bf00      	nop
 800190c:	e7fb      	b.n	8001906 <HardFault_Handler+0xa>
 800190e:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001912:	f000 fcef 	bl	80022f4 <led_off>
 8001916:	4b02      	ldr	r3, [pc, #8]	; (8001920 <HardFault_Handler+0x24>)
 8001918:	3b01      	subs	r3, #1
 800191a:	d0ef      	beq.n	80018fc <HardFault_Handler>
 800191c:	bf00      	nop
 800191e:	e7fb      	b.n	8001918 <HardFault_Handler+0x1c>
 8001920:	00989681 	.word	0x00989681

08001924 <_reset_init>:
 8001924:	4a0e      	ldr	r2, [pc, #56]	; (8001960 <_reset_init+0x3c>)
 8001926:	480f      	ldr	r0, [pc, #60]	; (8001964 <_reset_init+0x40>)
 8001928:	1a80      	subs	r0, r0, r2
 800192a:	1080      	asrs	r0, r0, #2
 800192c:	2300      	movs	r3, #0
 800192e:	4283      	cmp	r3, r0
 8001930:	d006      	beq.n	8001940 <_reset_init+0x1c>
 8001932:	490d      	ldr	r1, [pc, #52]	; (8001968 <_reset_init+0x44>)
 8001934:	f851 1023 	ldr.w	r1, [r1, r3, lsl #2]
 8001938:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
 800193c:	3301      	adds	r3, #1
 800193e:	e7f6      	b.n	800192e <_reset_init+0xa>
 8001940:	4b0a      	ldr	r3, [pc, #40]	; (800196c <_reset_init+0x48>)
 8001942:	f8d3 2088 	ldr.w	r2, [r3, #136]	; 0x88
 8001946:	f442 0270 	orr.w	r2, r2, #15728640	; 0xf00000
 800194a:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
 800194e:	f503 730c 	add.w	r3, r3, #560	; 0x230
 8001952:	685a      	ldr	r2, [r3, #4]
 8001954:	f022 4240 	bic.w	r2, r2, #3221225472	; 0xc0000000
 8001958:	605a      	str	r2, [r3, #4]
 800195a:	f7fe bc15 	b.w	8000188 <main>
 800195e:	bf00      	nop
 8001960:	20000000 	.word	0x20000000
 8001964:	200002ac 	.word	0x200002ac
 8001968:	080025ac 	.word	0x080025ac
 800196c:	e000ed00 	.word	0xe000ed00

08001970 <sys_tick_init>:
 8001970:	4b05      	ldr	r3, [pc, #20]	; (8001988 <sys_tick_init+0x18>)
 8001972:	4a06      	ldr	r2, [pc, #24]	; (800198c <sys_tick_init+0x1c>)
 8001974:	605a      	str	r2, [r3, #4]
 8001976:	4a06      	ldr	r2, [pc, #24]	; (8001990 <sys_tick_init+0x20>)
 8001978:	21f0      	movs	r1, #240	; 0xf0
 800197a:	f882 1023 	strb.w	r1, [r2, #35]	; 0x23
 800197e:	2200      	movs	r2, #0
 8001980:	609a      	str	r2, [r3, #8]
 8001982:	2207      	movs	r2, #7
 8001984:	601a      	str	r2, [r3, #0]
 8001986:	4770      	bx	lr
 8001988:	e000e010 	.word	0xe000e010
 800198c:	00029040 	.word	0x00029040
 8001990:	e000ed00 	.word	0xe000ed00

08001994 <sleep>:
 8001994:	bf30      	wfi
 8001996:	4770      	bx	lr

08001998 <sytem_clock_init>:
 8001998:	f000 b800 	b.w	800199c <SystemInit>

0800199c <SystemInit>:
 800199c:	4b3b      	ldr	r3, [pc, #236]	; (8001a8c <SystemInit+0xf0>)
 800199e:	f8d3 2088 	ldr.w	r2, [r3, #136]	; 0x88
 80019a2:	f442 0270 	orr.w	r2, r2, #15728640	; 0xf00000
 80019a6:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
 80019aa:	4b39      	ldr	r3, [pc, #228]	; (8001a90 <SystemInit+0xf4>)
 80019ac:	681a      	ldr	r2, [r3, #0]
 80019ae:	f042 0201 	orr.w	r2, r2, #1
 80019b2:	601a      	str	r2, [r3, #0]
 80019b4:	6859      	ldr	r1, [r3, #4]
 80019b6:	4a37      	ldr	r2, [pc, #220]	; (8001a94 <SystemInit+0xf8>)
 80019b8:	400a      	ands	r2, r1
 80019ba:	605a      	str	r2, [r3, #4]
 80019bc:	681a      	ldr	r2, [r3, #0]
 80019be:	f022 7284 	bic.w	r2, r2, #17301504	; 0x1080000
 80019c2:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
 80019c6:	601a      	str	r2, [r3, #0]
 80019c8:	681a      	ldr	r2, [r3, #0]
 80019ca:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 80019ce:	601a      	str	r2, [r3, #0]
 80019d0:	685a      	ldr	r2, [r3, #4]
 80019d2:	f422 02fe 	bic.w	r2, r2, #8323072	; 0x7f0000
 80019d6:	605a      	str	r2, [r3, #4]
 80019d8:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 80019da:	f022 020f 	bic.w	r2, r2, #15
 80019de:	62da      	str	r2, [r3, #44]	; 0x2c
 80019e0:	6b19      	ldr	r1, [r3, #48]	; 0x30
 80019e2:	4a2d      	ldr	r2, [pc, #180]	; (8001a98 <SystemInit+0xfc>)
 80019e4:	b082      	sub	sp, #8
 80019e6:	400a      	ands	r2, r1
 80019e8:	631a      	str	r2, [r3, #48]	; 0x30
 80019ea:	2200      	movs	r2, #0
 80019ec:	609a      	str	r2, [r3, #8]
 80019ee:	9200      	str	r2, [sp, #0]
 80019f0:	9201      	str	r2, [sp, #4]
 80019f2:	681a      	ldr	r2, [r3, #0]
 80019f4:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
 80019f8:	601a      	str	r2, [r3, #0]
 80019fa:	4b25      	ldr	r3, [pc, #148]	; (8001a90 <SystemInit+0xf4>)
 80019fc:	681a      	ldr	r2, [r3, #0]
 80019fe:	f402 3200 	and.w	r2, r2, #131072	; 0x20000
 8001a02:	9201      	str	r2, [sp, #4]
 8001a04:	9a00      	ldr	r2, [sp, #0]
 8001a06:	3201      	adds	r2, #1
 8001a08:	9200      	str	r2, [sp, #0]
 8001a0a:	9a01      	ldr	r2, [sp, #4]
 8001a0c:	b91a      	cbnz	r2, 8001a16 <SystemInit+0x7a>
 8001a0e:	9a00      	ldr	r2, [sp, #0]
 8001a10:	f5b2 4fa0 	cmp.w	r2, #20480	; 0x5000
 8001a14:	d1f1      	bne.n	80019fa <SystemInit+0x5e>
 8001a16:	681b      	ldr	r3, [r3, #0]
 8001a18:	f413 3300 	ands.w	r3, r3, #131072	; 0x20000
 8001a1c:	bf18      	it	ne
 8001a1e:	2301      	movne	r3, #1
 8001a20:	9301      	str	r3, [sp, #4]
 8001a22:	9b01      	ldr	r3, [sp, #4]
 8001a24:	2b01      	cmp	r3, #1
 8001a26:	d005      	beq.n	8001a34 <SystemInit+0x98>
 8001a28:	4b18      	ldr	r3, [pc, #96]	; (8001a8c <SystemInit+0xf0>)
 8001a2a:	f04f 6200 	mov.w	r2, #134217728	; 0x8000000
 8001a2e:	609a      	str	r2, [r3, #8]
 8001a30:	b002      	add	sp, #8
 8001a32:	4770      	bx	lr
 8001a34:	4b19      	ldr	r3, [pc, #100]	; (8001a9c <SystemInit+0x100>)
 8001a36:	2212      	movs	r2, #18
 8001a38:	601a      	str	r2, [r3, #0]
 8001a3a:	f5a3 5380 	sub.w	r3, r3, #4096	; 0x1000
 8001a3e:	685a      	ldr	r2, [r3, #4]
 8001a40:	605a      	str	r2, [r3, #4]
 8001a42:	685a      	ldr	r2, [r3, #4]
 8001a44:	605a      	str	r2, [r3, #4]
 8001a46:	685a      	ldr	r2, [r3, #4]
 8001a48:	f442 6280 	orr.w	r2, r2, #1024	; 0x400
 8001a4c:	605a      	str	r2, [r3, #4]
 8001a4e:	685a      	ldr	r2, [r3, #4]
 8001a50:	f422 127c 	bic.w	r2, r2, #4128768	; 0x3f0000
 8001a54:	605a      	str	r2, [r3, #4]
 8001a56:	685a      	ldr	r2, [r3, #4]
 8001a58:	f442 12e8 	orr.w	r2, r2, #1900544	; 0x1d0000
 8001a5c:	605a      	str	r2, [r3, #4]
 8001a5e:	681a      	ldr	r2, [r3, #0]
 8001a60:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
 8001a64:	601a      	str	r2, [r3, #0]
 8001a66:	6819      	ldr	r1, [r3, #0]
 8001a68:	4a09      	ldr	r2, [pc, #36]	; (8001a90 <SystemInit+0xf4>)
 8001a6a:	0189      	lsls	r1, r1, #6
 8001a6c:	d5fb      	bpl.n	8001a66 <SystemInit+0xca>
 8001a6e:	6853      	ldr	r3, [r2, #4]
 8001a70:	f023 0303 	bic.w	r3, r3, #3
 8001a74:	6053      	str	r3, [r2, #4]
 8001a76:	6853      	ldr	r3, [r2, #4]
 8001a78:	f043 0302 	orr.w	r3, r3, #2
 8001a7c:	6053      	str	r3, [r2, #4]
 8001a7e:	4b04      	ldr	r3, [pc, #16]	; (8001a90 <SystemInit+0xf4>)
 8001a80:	685b      	ldr	r3, [r3, #4]
 8001a82:	f003 030c 	and.w	r3, r3, #12
 8001a86:	2b08      	cmp	r3, #8
 8001a88:	d1f9      	bne.n	8001a7e <SystemInit+0xe2>
 8001a8a:	e7cd      	b.n	8001a28 <SystemInit+0x8c>
 8001a8c:	e000ed00 	.word	0xe000ed00
 8001a90:	40021000 	.word	0x40021000
 8001a94:	f87fc00c 	.word	0xf87fc00c
 8001a98:	ff00fccc 	.word	0xff00fccc
 8001a9c:	40022000 	.word	0x40022000

08001aa0 <RCC_GetClocksFreq>:
 8001aa0:	4ba5      	ldr	r3, [pc, #660]	; (8001d38 <RCC_GetClocksFreq+0x298>)
 8001aa2:	685a      	ldr	r2, [r3, #4]
 8001aa4:	f002 020c 	and.w	r2, r2, #12
 8001aa8:	2a04      	cmp	r2, #4
 8001aaa:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8001aae:	d005      	beq.n	8001abc <RCC_GetClocksFreq+0x1c>
 8001ab0:	2a08      	cmp	r2, #8
 8001ab2:	d006      	beq.n	8001ac2 <RCC_GetClocksFreq+0x22>
 8001ab4:	4ba1      	ldr	r3, [pc, #644]	; (8001d3c <RCC_GetClocksFreq+0x29c>)
 8001ab6:	6003      	str	r3, [r0, #0]
 8001ab8:	b9ba      	cbnz	r2, 8001aea <RCC_GetClocksFreq+0x4a>
 8001aba:	e017      	b.n	8001aec <RCC_GetClocksFreq+0x4c>
 8001abc:	4b9f      	ldr	r3, [pc, #636]	; (8001d3c <RCC_GetClocksFreq+0x29c>)
 8001abe:	6003      	str	r3, [r0, #0]
 8001ac0:	e013      	b.n	8001aea <RCC_GetClocksFreq+0x4a>
 8001ac2:	6859      	ldr	r1, [r3, #4]
 8001ac4:	685c      	ldr	r4, [r3, #4]
 8001ac6:	f3c1 4183 	ubfx	r1, r1, #18, #4
 8001aca:	03e2      	lsls	r2, r4, #15
 8001acc:	f101 0102 	add.w	r1, r1, #2
 8001ad0:	d401      	bmi.n	8001ad6 <RCC_GetClocksFreq+0x36>
 8001ad2:	4a9b      	ldr	r2, [pc, #620]	; (8001d40 <RCC_GetClocksFreq+0x2a0>)
 8001ad4:	e006      	b.n	8001ae4 <RCC_GetClocksFreq+0x44>
 8001ad6:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8001ad8:	4b98      	ldr	r3, [pc, #608]	; (8001d3c <RCC_GetClocksFreq+0x29c>)
 8001ada:	f002 020f 	and.w	r2, r2, #15
 8001ade:	3201      	adds	r2, #1
 8001ae0:	fbb3 f2f2 	udiv	r2, r3, r2
 8001ae4:	434a      	muls	r2, r1
 8001ae6:	6002      	str	r2, [r0, #0]
 8001ae8:	e000      	b.n	8001aec <RCC_GetClocksFreq+0x4c>
 8001aea:	2200      	movs	r2, #0
 8001aec:	4f92      	ldr	r7, [pc, #584]	; (8001d38 <RCC_GetClocksFreq+0x298>)
 8001aee:	4d95      	ldr	r5, [pc, #596]	; (8001d44 <RCC_GetClocksFreq+0x2a4>)
 8001af0:	687b      	ldr	r3, [r7, #4]
 8001af2:	f8df 8254 	ldr.w	r8, [pc, #596]	; 8001d48 <RCC_GetClocksFreq+0x2a8>
 8001af6:	f3c3 1303 	ubfx	r3, r3, #4, #4
 8001afa:	5cec      	ldrb	r4, [r5, r3]
 8001afc:	6803      	ldr	r3, [r0, #0]
 8001afe:	b2e4      	uxtb	r4, r4
 8001b00:	fa23 f104 	lsr.w	r1, r3, r4
 8001b04:	6041      	str	r1, [r0, #4]
 8001b06:	687e      	ldr	r6, [r7, #4]
 8001b08:	f3c6 2602 	ubfx	r6, r6, #8, #3
 8001b0c:	5dae      	ldrb	r6, [r5, r6]
 8001b0e:	fa21 f606 	lsr.w	r6, r1, r6
 8001b12:	6086      	str	r6, [r0, #8]
 8001b14:	f8d7 c004 	ldr.w	ip, [r7, #4]
 8001b18:	f3cc 2cc2 	ubfx	ip, ip, #11, #3
 8001b1c:	f815 500c 	ldrb.w	r5, [r5, ip]
 8001b20:	b2ed      	uxtb	r5, r5
 8001b22:	40e9      	lsrs	r1, r5
 8001b24:	60c1      	str	r1, [r0, #12]
 8001b26:	f8d7 902c 	ldr.w	r9, [r7, #44]	; 0x2c
 8001b2a:	f3c9 1904 	ubfx	r9, r9, #4, #5
 8001b2e:	f009 0c0f 	and.w	ip, r9, #15
 8001b32:	f019 0f10 	tst.w	r9, #16
 8001b36:	f838 c01c 	ldrh.w	ip, [r8, ip, lsl #1]
 8001b3a:	fa1f fc8c 	uxth.w	ip, ip
 8001b3e:	d007      	beq.n	8001b50 <RCC_GetClocksFreq+0xb0>
 8001b40:	f1bc 0f00 	cmp.w	ip, #0
 8001b44:	d004      	beq.n	8001b50 <RCC_GetClocksFreq+0xb0>
 8001b46:	fbb2 fcfc 	udiv	ip, r2, ip
 8001b4a:	f8c0 c010 	str.w	ip, [r0, #16]
 8001b4e:	e000      	b.n	8001b52 <RCC_GetClocksFreq+0xb2>
 8001b50:	6103      	str	r3, [r0, #16]
 8001b52:	6aff      	ldr	r7, [r7, #44]	; 0x2c
 8001b54:	f3c7 2c44 	ubfx	ip, r7, #9, #5
 8001b58:	f00c 070f 	and.w	r7, ip, #15
 8001b5c:	f01c 0f10 	tst.w	ip, #16
 8001b60:	f838 7017 	ldrh.w	r7, [r8, r7, lsl #1]
 8001b64:	b2bf      	uxth	r7, r7
 8001b66:	d004      	beq.n	8001b72 <RCC_GetClocksFreq+0xd2>
 8001b68:	b11f      	cbz	r7, 8001b72 <RCC_GetClocksFreq+0xd2>
 8001b6a:	fbb2 f7f7 	udiv	r7, r2, r7
 8001b6e:	6147      	str	r7, [r0, #20]
 8001b70:	e000      	b.n	8001b74 <RCC_GetClocksFreq+0xd4>
 8001b72:	6143      	str	r3, [r0, #20]
 8001b74:	4f70      	ldr	r7, [pc, #448]	; (8001d38 <RCC_GetClocksFreq+0x298>)
 8001b76:	f8d7 c030 	ldr.w	ip, [r7, #48]	; 0x30
 8001b7a:	f01c 0f10 	tst.w	ip, #16
 8001b7e:	bf0a      	itet	eq
 8001b80:	f8df c1b8 	ldreq.w	ip, [pc, #440]	; 8001d3c <RCC_GetClocksFreq+0x29c>
 8001b84:	6183      	strne	r3, [r0, #24]
 8001b86:	f8c0 c018 	streq.w	ip, [r0, #24]
 8001b8a:	6b3f      	ldr	r7, [r7, #48]	; 0x30
 8001b8c:	06bf      	lsls	r7, r7, #26
 8001b8e:	bf56      	itet	pl
 8001b90:	4f6a      	ldrpl	r7, [pc, #424]	; (8001d3c <RCC_GetClocksFreq+0x29c>)
 8001b92:	61c3      	strmi	r3, [r0, #28]
 8001b94:	61c7      	strpl	r7, [r0, #28]
 8001b96:	4f68      	ldr	r7, [pc, #416]	; (8001d38 <RCC_GetClocksFreq+0x298>)
 8001b98:	f8d7 c030 	ldr.w	ip, [r7, #48]	; 0x30
 8001b9c:	f01c 0f40 	tst.w	ip, #64	; 0x40
 8001ba0:	bf0a      	itet	eq
 8001ba2:	f8df c198 	ldreq.w	ip, [pc, #408]	; 8001d3c <RCC_GetClocksFreq+0x29c>
 8001ba6:	6203      	strne	r3, [r0, #32]
 8001ba8:	f8c0 c020 	streq.w	ip, [r0, #32]
 8001bac:	6b3f      	ldr	r7, [r7, #48]	; 0x30
 8001bae:	05ff      	lsls	r7, r7, #23
 8001bb0:	d506      	bpl.n	8001bc0 <RCC_GetClocksFreq+0x120>
 8001bb2:	4293      	cmp	r3, r2
 8001bb4:	d104      	bne.n	8001bc0 <RCC_GetClocksFreq+0x120>
 8001bb6:	42a5      	cmp	r5, r4
 8001bb8:	d102      	bne.n	8001bc0 <RCC_GetClocksFreq+0x120>
 8001bba:	005f      	lsls	r7, r3, #1
 8001bbc:	6247      	str	r7, [r0, #36]	; 0x24
 8001bbe:	e000      	b.n	8001bc2 <RCC_GetClocksFreq+0x122>
 8001bc0:	6241      	str	r1, [r0, #36]	; 0x24
 8001bc2:	4f5d      	ldr	r7, [pc, #372]	; (8001d38 <RCC_GetClocksFreq+0x298>)
 8001bc4:	f8d7 c030 	ldr.w	ip, [r7, #48]	; 0x30
 8001bc8:	f41c 5f80 	tst.w	ip, #4096	; 0x1000
 8001bcc:	d008      	beq.n	8001be0 <RCC_GetClocksFreq+0x140>
 8001bce:	4293      	cmp	r3, r2
 8001bd0:	d106      	bne.n	8001be0 <RCC_GetClocksFreq+0x140>
 8001bd2:	42a5      	cmp	r5, r4
 8001bd4:	d104      	bne.n	8001be0 <RCC_GetClocksFreq+0x140>
 8001bd6:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8001bda:	f8c0 c028 	str.w	ip, [r0, #40]	; 0x28
 8001bde:	e000      	b.n	8001be2 <RCC_GetClocksFreq+0x142>
 8001be0:	6281      	str	r1, [r0, #40]	; 0x28
 8001be2:	6b3f      	ldr	r7, [r7, #48]	; 0x30
 8001be4:	05bf      	lsls	r7, r7, #22
 8001be6:	d506      	bpl.n	8001bf6 <RCC_GetClocksFreq+0x156>
 8001be8:	4293      	cmp	r3, r2
 8001bea:	d104      	bne.n	8001bf6 <RCC_GetClocksFreq+0x156>
 8001bec:	42a5      	cmp	r5, r4
 8001bee:	d102      	bne.n	8001bf6 <RCC_GetClocksFreq+0x156>
 8001bf0:	005f      	lsls	r7, r3, #1
 8001bf2:	62c7      	str	r7, [r0, #44]	; 0x2c
 8001bf4:	e000      	b.n	8001bf8 <RCC_GetClocksFreq+0x158>
 8001bf6:	62c1      	str	r1, [r0, #44]	; 0x2c
 8001bf8:	4f4f      	ldr	r7, [pc, #316]	; (8001d38 <RCC_GetClocksFreq+0x298>)
 8001bfa:	f8d7 c030 	ldr.w	ip, [r7, #48]	; 0x30
 8001bfe:	f41c 6f80 	tst.w	ip, #1024	; 0x400
 8001c02:	d008      	beq.n	8001c16 <RCC_GetClocksFreq+0x176>
 8001c04:	4293      	cmp	r3, r2
 8001c06:	d106      	bne.n	8001c16 <RCC_GetClocksFreq+0x176>
 8001c08:	42a5      	cmp	r5, r4
 8001c0a:	d104      	bne.n	8001c16 <RCC_GetClocksFreq+0x176>
 8001c0c:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8001c10:	f8c0 c04c 	str.w	ip, [r0, #76]	; 0x4c
 8001c14:	e000      	b.n	8001c18 <RCC_GetClocksFreq+0x178>
 8001c16:	64c1      	str	r1, [r0, #76]	; 0x4c
 8001c18:	6b3f      	ldr	r7, [r7, #48]	; 0x30
 8001c1a:	053f      	lsls	r7, r7, #20
 8001c1c:	d506      	bpl.n	8001c2c <RCC_GetClocksFreq+0x18c>
 8001c1e:	4293      	cmp	r3, r2
 8001c20:	d104      	bne.n	8001c2c <RCC_GetClocksFreq+0x18c>
 8001c22:	42a5      	cmp	r5, r4
 8001c24:	d102      	bne.n	8001c2c <RCC_GetClocksFreq+0x18c>
 8001c26:	005f      	lsls	r7, r3, #1
 8001c28:	6507      	str	r7, [r0, #80]	; 0x50
 8001c2a:	e000      	b.n	8001c2e <RCC_GetClocksFreq+0x18e>
 8001c2c:	6501      	str	r1, [r0, #80]	; 0x50
 8001c2e:	4f42      	ldr	r7, [pc, #264]	; (8001d38 <RCC_GetClocksFreq+0x298>)
 8001c30:	f8d7 c030 	ldr.w	ip, [r7, #48]	; 0x30
 8001c34:	f41c 5f00 	tst.w	ip, #8192	; 0x2000
 8001c38:	d008      	beq.n	8001c4c <RCC_GetClocksFreq+0x1ac>
 8001c3a:	4293      	cmp	r3, r2
 8001c3c:	d106      	bne.n	8001c4c <RCC_GetClocksFreq+0x1ac>
 8001c3e:	42a5      	cmp	r5, r4
 8001c40:	d104      	bne.n	8001c4c <RCC_GetClocksFreq+0x1ac>
 8001c42:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8001c46:	f8c0 c054 	str.w	ip, [r0, #84]	; 0x54
 8001c4a:	e000      	b.n	8001c4e <RCC_GetClocksFreq+0x1ae>
 8001c4c:	6501      	str	r1, [r0, #80]	; 0x50
 8001c4e:	6b3f      	ldr	r7, [r7, #48]	; 0x30
 8001c50:	043f      	lsls	r7, r7, #16
 8001c52:	d506      	bpl.n	8001c62 <RCC_GetClocksFreq+0x1c2>
 8001c54:	4293      	cmp	r3, r2
 8001c56:	d104      	bne.n	8001c62 <RCC_GetClocksFreq+0x1c2>
 8001c58:	42a5      	cmp	r5, r4
 8001c5a:	d102      	bne.n	8001c62 <RCC_GetClocksFreq+0x1c2>
 8001c5c:	005a      	lsls	r2, r3, #1
 8001c5e:	6582      	str	r2, [r0, #88]	; 0x58
 8001c60:	e000      	b.n	8001c64 <RCC_GetClocksFreq+0x1c4>
 8001c62:	6581      	str	r1, [r0, #88]	; 0x58
 8001c64:	4a34      	ldr	r2, [pc, #208]	; (8001d38 <RCC_GetClocksFreq+0x298>)
 8001c66:	6b14      	ldr	r4, [r2, #48]	; 0x30
 8001c68:	07a4      	lsls	r4, r4, #30
 8001c6a:	d014      	beq.n	8001c96 <RCC_GetClocksFreq+0x1f6>
 8001c6c:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8001c6e:	f001 0103 	and.w	r1, r1, #3
 8001c72:	2901      	cmp	r1, #1
 8001c74:	d101      	bne.n	8001c7a <RCC_GetClocksFreq+0x1da>
 8001c76:	6383      	str	r3, [r0, #56]	; 0x38
 8001c78:	e00e      	b.n	8001c98 <RCC_GetClocksFreq+0x1f8>
 8001c7a:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8001c7c:	f001 0103 	and.w	r1, r1, #3
 8001c80:	2902      	cmp	r1, #2
 8001c82:	d102      	bne.n	8001c8a <RCC_GetClocksFreq+0x1ea>
 8001c84:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 8001c88:	e005      	b.n	8001c96 <RCC_GetClocksFreq+0x1f6>
 8001c8a:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8001c8c:	f001 0103 	and.w	r1, r1, #3
 8001c90:	2903      	cmp	r1, #3
 8001c92:	d101      	bne.n	8001c98 <RCC_GetClocksFreq+0x1f8>
 8001c94:	4929      	ldr	r1, [pc, #164]	; (8001d3c <RCC_GetClocksFreq+0x29c>)
 8001c96:	6381      	str	r1, [r0, #56]	; 0x38
 8001c98:	6b12      	ldr	r2, [r2, #48]	; 0x30
 8001c9a:	4927      	ldr	r1, [pc, #156]	; (8001d38 <RCC_GetClocksFreq+0x298>)
 8001c9c:	f412 3f40 	tst.w	r2, #196608	; 0x30000
 8001ca0:	d101      	bne.n	8001ca6 <RCC_GetClocksFreq+0x206>
 8001ca2:	63c6      	str	r6, [r0, #60]	; 0x3c
 8001ca4:	e018      	b.n	8001cd8 <RCC_GetClocksFreq+0x238>
 8001ca6:	6b0a      	ldr	r2, [r1, #48]	; 0x30
 8001ca8:	f402 3240 	and.w	r2, r2, #196608	; 0x30000
 8001cac:	f5b2 3f80 	cmp.w	r2, #65536	; 0x10000
 8001cb0:	d101      	bne.n	8001cb6 <RCC_GetClocksFreq+0x216>
 8001cb2:	63c3      	str	r3, [r0, #60]	; 0x3c
 8001cb4:	e010      	b.n	8001cd8 <RCC_GetClocksFreq+0x238>
 8001cb6:	6b0a      	ldr	r2, [r1, #48]	; 0x30
 8001cb8:	f402 3240 	and.w	r2, r2, #196608	; 0x30000
 8001cbc:	f5b2 3f00 	cmp.w	r2, #131072	; 0x20000
 8001cc0:	d102      	bne.n	8001cc8 <RCC_GetClocksFreq+0x228>
 8001cc2:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 8001cc6:	e006      	b.n	8001cd6 <RCC_GetClocksFreq+0x236>
 8001cc8:	6b0a      	ldr	r2, [r1, #48]	; 0x30
 8001cca:	f402 3240 	and.w	r2, r2, #196608	; 0x30000
 8001cce:	f5b2 3f40 	cmp.w	r2, #196608	; 0x30000
 8001cd2:	d101      	bne.n	8001cd8 <RCC_GetClocksFreq+0x238>
 8001cd4:	4a19      	ldr	r2, [pc, #100]	; (8001d3c <RCC_GetClocksFreq+0x29c>)
 8001cd6:	63c2      	str	r2, [r0, #60]	; 0x3c
 8001cd8:	4a17      	ldr	r2, [pc, #92]	; (8001d38 <RCC_GetClocksFreq+0x298>)
 8001cda:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8001cdc:	f411 2f40 	tst.w	r1, #786432	; 0xc0000
 8001ce0:	d101      	bne.n	8001ce6 <RCC_GetClocksFreq+0x246>
 8001ce2:	6406      	str	r6, [r0, #64]	; 0x40
 8001ce4:	e018      	b.n	8001d18 <RCC_GetClocksFreq+0x278>
 8001ce6:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8001ce8:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 8001cec:	f5b1 2f80 	cmp.w	r1, #262144	; 0x40000
 8001cf0:	d101      	bne.n	8001cf6 <RCC_GetClocksFreq+0x256>
 8001cf2:	6403      	str	r3, [r0, #64]	; 0x40
 8001cf4:	e010      	b.n	8001d18 <RCC_GetClocksFreq+0x278>
 8001cf6:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8001cf8:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 8001cfc:	f5b1 2f00 	cmp.w	r1, #524288	; 0x80000
 8001d00:	d102      	bne.n	8001d08 <RCC_GetClocksFreq+0x268>
 8001d02:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 8001d06:	e006      	b.n	8001d16 <RCC_GetClocksFreq+0x276>
 8001d08:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8001d0a:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 8001d0e:	f5b1 2f40 	cmp.w	r1, #786432	; 0xc0000
 8001d12:	d101      	bne.n	8001d18 <RCC_GetClocksFreq+0x278>
 8001d14:	4909      	ldr	r1, [pc, #36]	; (8001d3c <RCC_GetClocksFreq+0x29c>)
 8001d16:	6401      	str	r1, [r0, #64]	; 0x40
 8001d18:	6b12      	ldr	r2, [r2, #48]	; 0x30
 8001d1a:	4907      	ldr	r1, [pc, #28]	; (8001d38 <RCC_GetClocksFreq+0x298>)
 8001d1c:	f412 1f40 	tst.w	r2, #3145728	; 0x300000
 8001d20:	d101      	bne.n	8001d26 <RCC_GetClocksFreq+0x286>
 8001d22:	6446      	str	r6, [r0, #68]	; 0x44
 8001d24:	e023      	b.n	8001d6e <RCC_GetClocksFreq+0x2ce>
 8001d26:	6b0a      	ldr	r2, [r1, #48]	; 0x30
 8001d28:	f402 1240 	and.w	r2, r2, #3145728	; 0x300000
 8001d2c:	f5b2 1f80 	cmp.w	r2, #1048576	; 0x100000
 8001d30:	d10c      	bne.n	8001d4c <RCC_GetClocksFreq+0x2ac>
 8001d32:	6443      	str	r3, [r0, #68]	; 0x44
 8001d34:	e01b      	b.n	8001d6e <RCC_GetClocksFreq+0x2ce>
 8001d36:	bf00      	nop
 8001d38:	40021000 	.word	0x40021000
 8001d3c:	007a1200 	.word	0x007a1200
 8001d40:	003d0900 	.word	0x003d0900
 8001d44:	2000029c 	.word	0x2000029c
 8001d48:	2000027c 	.word	0x2000027c
 8001d4c:	6b0a      	ldr	r2, [r1, #48]	; 0x30
 8001d4e:	f402 1240 	and.w	r2, r2, #3145728	; 0x300000
 8001d52:	f5b2 1f00 	cmp.w	r2, #2097152	; 0x200000
 8001d56:	d102      	bne.n	8001d5e <RCC_GetClocksFreq+0x2be>
 8001d58:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 8001d5c:	e006      	b.n	8001d6c <RCC_GetClocksFreq+0x2cc>
 8001d5e:	6b0a      	ldr	r2, [r1, #48]	; 0x30
 8001d60:	f402 1240 	and.w	r2, r2, #3145728	; 0x300000
 8001d64:	f5b2 1f40 	cmp.w	r2, #3145728	; 0x300000
 8001d68:	d101      	bne.n	8001d6e <RCC_GetClocksFreq+0x2ce>
 8001d6a:	4a11      	ldr	r2, [pc, #68]	; (8001db0 <RCC_GetClocksFreq+0x310>)
 8001d6c:	6442      	str	r2, [r0, #68]	; 0x44
 8001d6e:	4a11      	ldr	r2, [pc, #68]	; (8001db4 <RCC_GetClocksFreq+0x314>)
 8001d70:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8001d72:	f411 0f40 	tst.w	r1, #12582912	; 0xc00000
 8001d76:	d102      	bne.n	8001d7e <RCC_GetClocksFreq+0x2de>
 8001d78:	6486      	str	r6, [r0, #72]	; 0x48
 8001d7a:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8001d7e:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8001d80:	f401 0140 	and.w	r1, r1, #12582912	; 0xc00000
 8001d84:	f5b1 0f80 	cmp.w	r1, #4194304	; 0x400000
 8001d88:	d00f      	beq.n	8001daa <RCC_GetClocksFreq+0x30a>
 8001d8a:	6b13      	ldr	r3, [r2, #48]	; 0x30
 8001d8c:	f403 0340 	and.w	r3, r3, #12582912	; 0xc00000
 8001d90:	f5b3 0f00 	cmp.w	r3, #8388608	; 0x800000
 8001d94:	d102      	bne.n	8001d9c <RCC_GetClocksFreq+0x2fc>
 8001d96:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001d9a:	e006      	b.n	8001daa <RCC_GetClocksFreq+0x30a>
 8001d9c:	6b13      	ldr	r3, [r2, #48]	; 0x30
 8001d9e:	f403 0340 	and.w	r3, r3, #12582912	; 0xc00000
 8001da2:	f5b3 0f40 	cmp.w	r3, #12582912	; 0xc00000
 8001da6:	d101      	bne.n	8001dac <RCC_GetClocksFreq+0x30c>
 8001da8:	4b01      	ldr	r3, [pc, #4]	; (8001db0 <RCC_GetClocksFreq+0x310>)
 8001daa:	6483      	str	r3, [r0, #72]	; 0x48
 8001dac:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8001db0:	007a1200 	.word	0x007a1200
 8001db4:	40021000 	.word	0x40021000

08001db8 <RCC_AHBPeriphClockCmd>:
 8001db8:	bf00      	nop
 8001dba:	bf00      	nop
 8001dbc:	4b04      	ldr	r3, [pc, #16]	; (8001dd0 <RCC_AHBPeriphClockCmd+0x18>)
 8001dbe:	695a      	ldr	r2, [r3, #20]
 8001dc0:	b109      	cbz	r1, 8001dc6 <RCC_AHBPeriphClockCmd+0xe>
 8001dc2:	4310      	orrs	r0, r2
 8001dc4:	e001      	b.n	8001dca <RCC_AHBPeriphClockCmd+0x12>
 8001dc6:	ea22 0000 	bic.w	r0, r2, r0
 8001dca:	6158      	str	r0, [r3, #20]
 8001dcc:	4770      	bx	lr
 8001dce:	bf00      	nop
 8001dd0:	40021000 	.word	0x40021000

08001dd4 <RCC_APB2PeriphClockCmd>:
 8001dd4:	bf00      	nop
 8001dd6:	bf00      	nop
 8001dd8:	4b04      	ldr	r3, [pc, #16]	; (8001dec <RCC_APB2PeriphClockCmd+0x18>)
 8001dda:	699a      	ldr	r2, [r3, #24]
 8001ddc:	b109      	cbz	r1, 8001de2 <RCC_APB2PeriphClockCmd+0xe>
 8001dde:	4310      	orrs	r0, r2
 8001de0:	e001      	b.n	8001de6 <RCC_APB2PeriphClockCmd+0x12>
 8001de2:	ea22 0000 	bic.w	r0, r2, r0
 8001de6:	6198      	str	r0, [r3, #24]
 8001de8:	4770      	bx	lr
 8001dea:	bf00      	nop
 8001dec:	40021000 	.word	0x40021000

08001df0 <RCC_APB1PeriphClockCmd>:
 8001df0:	bf00      	nop
 8001df2:	bf00      	nop
 8001df4:	4b04      	ldr	r3, [pc, #16]	; (8001e08 <RCC_APB1PeriphClockCmd+0x18>)
 8001df6:	69da      	ldr	r2, [r3, #28]
 8001df8:	b109      	cbz	r1, 8001dfe <RCC_APB1PeriphClockCmd+0xe>
 8001dfa:	4310      	orrs	r0, r2
 8001dfc:	e001      	b.n	8001e02 <RCC_APB1PeriphClockCmd+0x12>
 8001dfe:	ea22 0000 	bic.w	r0, r2, r0
 8001e02:	61d8      	str	r0, [r3, #28]
 8001e04:	4770      	bx	lr
 8001e06:	bf00      	nop
 8001e08:	40021000 	.word	0x40021000

08001e0c <TIM_TimeBaseInit>:
 8001e0c:	bf00      	nop
 8001e0e:	bf00      	nop
 8001e10:	bf00      	nop
 8001e12:	4a24      	ldr	r2, [pc, #144]	; (8001ea4 <TIM_TimeBaseInit+0x98>)
 8001e14:	8803      	ldrh	r3, [r0, #0]
 8001e16:	4290      	cmp	r0, r2
 8001e18:	b29b      	uxth	r3, r3
 8001e1a:	d012      	beq.n	8001e42 <TIM_TimeBaseInit+0x36>
 8001e1c:	f502 6200 	add.w	r2, r2, #2048	; 0x800
 8001e20:	4290      	cmp	r0, r2
 8001e22:	d00e      	beq.n	8001e42 <TIM_TimeBaseInit+0x36>
 8001e24:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 8001e28:	d00b      	beq.n	8001e42 <TIM_TimeBaseInit+0x36>
 8001e2a:	f5a2 3298 	sub.w	r2, r2, #77824	; 0x13000
 8001e2e:	4290      	cmp	r0, r2
 8001e30:	d007      	beq.n	8001e42 <TIM_TimeBaseInit+0x36>
 8001e32:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8001e36:	4290      	cmp	r0, r2
 8001e38:	d003      	beq.n	8001e42 <TIM_TimeBaseInit+0x36>
 8001e3a:	f502 32a4 	add.w	r2, r2, #83968	; 0x14800
 8001e3e:	4290      	cmp	r0, r2
 8001e40:	d103      	bne.n	8001e4a <TIM_TimeBaseInit+0x3e>
 8001e42:	884a      	ldrh	r2, [r1, #2]
 8001e44:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 8001e48:	4313      	orrs	r3, r2
 8001e4a:	4a17      	ldr	r2, [pc, #92]	; (8001ea8 <TIM_TimeBaseInit+0x9c>)
 8001e4c:	4290      	cmp	r0, r2
 8001e4e:	d008      	beq.n	8001e62 <TIM_TimeBaseInit+0x56>
 8001e50:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8001e54:	4290      	cmp	r0, r2
 8001e56:	d004      	beq.n	8001e62 <TIM_TimeBaseInit+0x56>
 8001e58:	f423 7340 	bic.w	r3, r3, #768	; 0x300
 8001e5c:	890a      	ldrh	r2, [r1, #8]
 8001e5e:	b29b      	uxth	r3, r3
 8001e60:	4313      	orrs	r3, r2
 8001e62:	8003      	strh	r3, [r0, #0]
 8001e64:	684b      	ldr	r3, [r1, #4]
 8001e66:	62c3      	str	r3, [r0, #44]	; 0x2c
 8001e68:	880b      	ldrh	r3, [r1, #0]
 8001e6a:	8503      	strh	r3, [r0, #40]	; 0x28
 8001e6c:	4b0d      	ldr	r3, [pc, #52]	; (8001ea4 <TIM_TimeBaseInit+0x98>)
 8001e6e:	4298      	cmp	r0, r3
 8001e70:	d013      	beq.n	8001e9a <TIM_TimeBaseInit+0x8e>
 8001e72:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 8001e76:	4298      	cmp	r0, r3
 8001e78:	d00f      	beq.n	8001e9a <TIM_TimeBaseInit+0x8e>
 8001e7a:	f503 6340 	add.w	r3, r3, #3072	; 0xc00
 8001e7e:	4298      	cmp	r0, r3
 8001e80:	d00b      	beq.n	8001e9a <TIM_TimeBaseInit+0x8e>
 8001e82:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 8001e86:	4298      	cmp	r0, r3
 8001e88:	d007      	beq.n	8001e9a <TIM_TimeBaseInit+0x8e>
 8001e8a:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 8001e8e:	4298      	cmp	r0, r3
 8001e90:	d003      	beq.n	8001e9a <TIM_TimeBaseInit+0x8e>
 8001e92:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 8001e96:	4298      	cmp	r0, r3
 8001e98:	d101      	bne.n	8001e9e <TIM_TimeBaseInit+0x92>
 8001e9a:	894b      	ldrh	r3, [r1, #10]
 8001e9c:	8603      	strh	r3, [r0, #48]	; 0x30
 8001e9e:	2301      	movs	r3, #1
 8001ea0:	6143      	str	r3, [r0, #20]
 8001ea2:	4770      	bx	lr
 8001ea4:	40012c00 	.word	0x40012c00
 8001ea8:	40001000 	.word	0x40001000

08001eac <TIM_Cmd>:
 8001eac:	bf00      	nop
 8001eae:	bf00      	nop
 8001eb0:	8803      	ldrh	r3, [r0, #0]
 8001eb2:	b119      	cbz	r1, 8001ebc <TIM_Cmd+0x10>
 8001eb4:	b29b      	uxth	r3, r3
 8001eb6:	f043 0301 	orr.w	r3, r3, #1
 8001eba:	e003      	b.n	8001ec4 <TIM_Cmd+0x18>
 8001ebc:	f023 0301 	bic.w	r3, r3, #1
 8001ec0:	041b      	lsls	r3, r3, #16
 8001ec2:	0c1b      	lsrs	r3, r3, #16
 8001ec4:	8003      	strh	r3, [r0, #0]
 8001ec6:	4770      	bx	lr

08001ec8 <TIM_OC1Init>:
 8001ec8:	b530      	push	{r4, r5, lr}
 8001eca:	bf00      	nop
 8001ecc:	bf00      	nop
 8001ece:	bf00      	nop
 8001ed0:	bf00      	nop
 8001ed2:	6a03      	ldr	r3, [r0, #32]
 8001ed4:	680c      	ldr	r4, [r1, #0]
 8001ed6:	f023 0301 	bic.w	r3, r3, #1
 8001eda:	6203      	str	r3, [r0, #32]
 8001edc:	6a03      	ldr	r3, [r0, #32]
 8001ede:	6842      	ldr	r2, [r0, #4]
 8001ee0:	6985      	ldr	r5, [r0, #24]
 8001ee2:	f425 3580 	bic.w	r5, r5, #65536	; 0x10000
 8001ee6:	f025 0573 	bic.w	r5, r5, #115	; 0x73
 8001eea:	432c      	orrs	r4, r5
 8001eec:	898d      	ldrh	r5, [r1, #12]
 8001eee:	f023 0302 	bic.w	r3, r3, #2
 8001ef2:	432b      	orrs	r3, r5
 8001ef4:	888d      	ldrh	r5, [r1, #4]
 8001ef6:	432b      	orrs	r3, r5
 8001ef8:	4d15      	ldr	r5, [pc, #84]	; (8001f50 <TIM_OC1Init+0x88>)
 8001efa:	42a8      	cmp	r0, r5
 8001efc:	d00f      	beq.n	8001f1e <TIM_OC1Init+0x56>
 8001efe:	f505 6500 	add.w	r5, r5, #2048	; 0x800
 8001f02:	42a8      	cmp	r0, r5
 8001f04:	d00b      	beq.n	8001f1e <TIM_OC1Init+0x56>
 8001f06:	f505 6540 	add.w	r5, r5, #3072	; 0xc00
 8001f0a:	42a8      	cmp	r0, r5
 8001f0c:	d007      	beq.n	8001f1e <TIM_OC1Init+0x56>
 8001f0e:	f505 6580 	add.w	r5, r5, #1024	; 0x400
 8001f12:	42a8      	cmp	r0, r5
 8001f14:	d003      	beq.n	8001f1e <TIM_OC1Init+0x56>
 8001f16:	f505 6580 	add.w	r5, r5, #1024	; 0x400
 8001f1a:	42a8      	cmp	r0, r5
 8001f1c:	d111      	bne.n	8001f42 <TIM_OC1Init+0x7a>
 8001f1e:	bf00      	nop
 8001f20:	bf00      	nop
 8001f22:	bf00      	nop
 8001f24:	bf00      	nop
 8001f26:	89cd      	ldrh	r5, [r1, #14]
 8001f28:	f023 0308 	bic.w	r3, r3, #8
 8001f2c:	432b      	orrs	r3, r5
 8001f2e:	88cd      	ldrh	r5, [r1, #6]
 8001f30:	f023 0304 	bic.w	r3, r3, #4
 8001f34:	432b      	orrs	r3, r5
 8001f36:	8a0d      	ldrh	r5, [r1, #16]
 8001f38:	f422 7240 	bic.w	r2, r2, #768	; 0x300
 8001f3c:	432a      	orrs	r2, r5
 8001f3e:	8a4d      	ldrh	r5, [r1, #18]
 8001f40:	432a      	orrs	r2, r5
 8001f42:	6042      	str	r2, [r0, #4]
 8001f44:	688a      	ldr	r2, [r1, #8]
 8001f46:	6184      	str	r4, [r0, #24]
 8001f48:	6342      	str	r2, [r0, #52]	; 0x34
 8001f4a:	6203      	str	r3, [r0, #32]
 8001f4c:	bd30      	pop	{r4, r5, pc}
 8001f4e:	bf00      	nop
 8001f50:	40012c00 	.word	0x40012c00

08001f54 <TIM_OC2Init>:
 8001f54:	b570      	push	{r4, r5, r6, lr}
 8001f56:	bf00      	nop
 8001f58:	bf00      	nop
 8001f5a:	bf00      	nop
 8001f5c:	bf00      	nop
 8001f5e:	6a03      	ldr	r3, [r0, #32]
 8001f60:	680c      	ldr	r4, [r1, #0]
 8001f62:	898e      	ldrh	r6, [r1, #12]
 8001f64:	f023 0310 	bic.w	r3, r3, #16
 8001f68:	6203      	str	r3, [r0, #32]
 8001f6a:	6a05      	ldr	r5, [r0, #32]
 8001f6c:	6842      	ldr	r2, [r0, #4]
 8001f6e:	6983      	ldr	r3, [r0, #24]
 8001f70:	f023 7380 	bic.w	r3, r3, #16777216	; 0x1000000
 8001f74:	f423 43e6 	bic.w	r3, r3, #29440	; 0x7300
 8001f78:	ea43 2404 	orr.w	r4, r3, r4, lsl #8
 8001f7c:	888b      	ldrh	r3, [r1, #4]
 8001f7e:	f025 0520 	bic.w	r5, r5, #32
 8001f82:	4333      	orrs	r3, r6
 8001f84:	ea45 1303 	orr.w	r3, r5, r3, lsl #4
 8001f88:	4d10      	ldr	r5, [pc, #64]	; (8001fcc <TIM_OC2Init+0x78>)
 8001f8a:	42a8      	cmp	r0, r5
 8001f8c:	d003      	beq.n	8001f96 <TIM_OC2Init+0x42>
 8001f8e:	f505 6500 	add.w	r5, r5, #2048	; 0x800
 8001f92:	42a8      	cmp	r0, r5
 8001f94:	d114      	bne.n	8001fc0 <TIM_OC2Init+0x6c>
 8001f96:	bf00      	nop
 8001f98:	bf00      	nop
 8001f9a:	bf00      	nop
 8001f9c:	bf00      	nop
 8001f9e:	89cd      	ldrh	r5, [r1, #14]
 8001fa0:	8a0e      	ldrh	r6, [r1, #16]
 8001fa2:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8001fa6:	ea43 1305 	orr.w	r3, r3, r5, lsl #4
 8001faa:	88cd      	ldrh	r5, [r1, #6]
 8001fac:	f023 0340 	bic.w	r3, r3, #64	; 0x40
 8001fb0:	ea43 1305 	orr.w	r3, r3, r5, lsl #4
 8001fb4:	8a4d      	ldrh	r5, [r1, #18]
 8001fb6:	f422 6240 	bic.w	r2, r2, #3072	; 0xc00
 8001fba:	4335      	orrs	r5, r6
 8001fbc:	ea42 0285 	orr.w	r2, r2, r5, lsl #2
 8001fc0:	6042      	str	r2, [r0, #4]
 8001fc2:	688a      	ldr	r2, [r1, #8]
 8001fc4:	6184      	str	r4, [r0, #24]
 8001fc6:	6382      	str	r2, [r0, #56]	; 0x38
 8001fc8:	6203      	str	r3, [r0, #32]
 8001fca:	bd70      	pop	{r4, r5, r6, pc}
 8001fcc:	40012c00 	.word	0x40012c00

08001fd0 <TIM_CtrlPWMOutputs>:
 8001fd0:	bf00      	nop
 8001fd2:	bf00      	nop
 8001fd4:	6c43      	ldr	r3, [r0, #68]	; 0x44
 8001fd6:	b111      	cbz	r1, 8001fde <TIM_CtrlPWMOutputs+0xe>
 8001fd8:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
 8001fdc:	e001      	b.n	8001fe2 <TIM_CtrlPWMOutputs+0x12>
 8001fde:	f3c3 030e 	ubfx	r3, r3, #0, #15
 8001fe2:	6443      	str	r3, [r0, #68]	; 0x44
 8001fe4:	4770      	bx	lr

08001fe6 <TIM_ClearITPendingBit>:
 8001fe6:	bf00      	nop
 8001fe8:	43c9      	mvns	r1, r1
 8001fea:	b289      	uxth	r1, r1
 8001fec:	6101      	str	r1, [r0, #16]
 8001fee:	4770      	bx	lr

08001ff0 <timer_init>:
 8001ff0:	b530      	push	{r4, r5, lr}
 8001ff2:	2300      	movs	r3, #0
 8001ff4:	b085      	sub	sp, #20
 8001ff6:	491f      	ldr	r1, [pc, #124]	; (8002074 <timer_init+0x84>)
 8001ff8:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8001ffc:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 8002000:	491d      	ldr	r1, [pc, #116]	; (8002078 <timer_init+0x88>)
 8002002:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 8002006:	4a1d      	ldr	r2, [pc, #116]	; (800207c <timer_init+0x8c>)
 8002008:	2400      	movs	r4, #0
 800200a:	f822 4013 	strh.w	r4, [r2, r3, lsl #1]
 800200e:	3301      	adds	r3, #1
 8002010:	2b04      	cmp	r3, #4
 8002012:	4625      	mov	r5, r4
 8002014:	d1ef      	bne.n	8001ff6 <timer_init+0x6>
 8002016:	4b1a      	ldr	r3, [pc, #104]	; (8002080 <timer_init+0x90>)
 8002018:	2002      	movs	r0, #2
 800201a:	2101      	movs	r1, #1
 800201c:	601c      	str	r4, [r3, #0]
 800201e:	f7ff fee7 	bl	8001df0 <RCC_APB1PeriphClockCmd>
 8002022:	f8ad 4006 	strh.w	r4, [sp, #6]
 8002026:	f8ad 400c 	strh.w	r4, [sp, #12]
 800202a:	f8ad 400e 	strh.w	r4, [sp, #14]
 800202e:	4c15      	ldr	r4, [pc, #84]	; (8002084 <timer_init+0x94>)
 8002030:	f44f 738c 	mov.w	r3, #280	; 0x118
 8002034:	f8ad 3004 	strh.w	r3, [sp, #4]
 8002038:	4620      	mov	r0, r4
 800203a:	2331      	movs	r3, #49	; 0x31
 800203c:	a901      	add	r1, sp, #4
 800203e:	9302      	str	r3, [sp, #8]
 8002040:	f7ff fee4 	bl	8001e0c <TIM_TimeBaseInit>
 8002044:	4620      	mov	r0, r4
 8002046:	2101      	movs	r1, #1
 8002048:	f7ff ff30 	bl	8001eac <TIM_Cmd>
 800204c:	68e3      	ldr	r3, [r4, #12]
 800204e:	f043 0301 	orr.w	r3, r3, #1
 8002052:	60e3      	str	r3, [r4, #12]
 8002054:	231d      	movs	r3, #29
 8002056:	f88d 3000 	strb.w	r3, [sp]
 800205a:	4668      	mov	r0, sp
 800205c:	2301      	movs	r3, #1
 800205e:	f88d 5001 	strb.w	r5, [sp, #1]
 8002062:	f88d 3002 	strb.w	r3, [sp, #2]
 8002066:	f88d 3003 	strb.w	r3, [sp, #3]
 800206a:	f7ff faf3 	bl	8001654 <NVIC_Init>
 800206e:	b005      	add	sp, #20
 8002070:	bd30      	pop	{r4, r5, pc}
 8002072:	bf00      	nop
 8002074:	20000dbc 	.word	0x20000dbc
 8002078:	20000db0 	.word	0x20000db0
 800207c:	20000da8 	.word	0x20000da8
 8002080:	20000db8 	.word	0x20000db8
 8002084:	40000400 	.word	0x40000400

08002088 <TIM3_IRQHandler>:
 8002088:	2300      	movs	r3, #0
 800208a:	4a10      	ldr	r2, [pc, #64]	; (80020cc <TIM3_IRQHandler+0x44>)
 800208c:	f832 1013 	ldrh.w	r1, [r2, r3, lsl #1]
 8002090:	b289      	uxth	r1, r1
 8002092:	b129      	cbz	r1, 80020a0 <TIM3_IRQHandler+0x18>
 8002094:	f832 1013 	ldrh.w	r1, [r2, r3, lsl #1]
 8002098:	b289      	uxth	r1, r1
 800209a:	3901      	subs	r1, #1
 800209c:	b289      	uxth	r1, r1
 800209e:	e007      	b.n	80020b0 <TIM3_IRQHandler+0x28>
 80020a0:	490b      	ldr	r1, [pc, #44]	; (80020d0 <TIM3_IRQHandler+0x48>)
 80020a2:	f831 1013 	ldrh.w	r1, [r1, r3, lsl #1]
 80020a6:	b289      	uxth	r1, r1
 80020a8:	f822 1013 	strh.w	r1, [r2, r3, lsl #1]
 80020ac:	4a09      	ldr	r2, [pc, #36]	; (80020d4 <TIM3_IRQHandler+0x4c>)
 80020ae:	2101      	movs	r1, #1
 80020b0:	f822 1013 	strh.w	r1, [r2, r3, lsl #1]
 80020b4:	3301      	adds	r3, #1
 80020b6:	2b04      	cmp	r3, #4
 80020b8:	d1e7      	bne.n	800208a <TIM3_IRQHandler+0x2>
 80020ba:	4b07      	ldr	r3, [pc, #28]	; (80020d8 <TIM3_IRQHandler+0x50>)
 80020bc:	4807      	ldr	r0, [pc, #28]	; (80020dc <TIM3_IRQHandler+0x54>)
 80020be:	681a      	ldr	r2, [r3, #0]
 80020c0:	2101      	movs	r1, #1
 80020c2:	3201      	adds	r2, #1
 80020c4:	601a      	str	r2, [r3, #0]
 80020c6:	f7ff bf8e 	b.w	8001fe6 <TIM_ClearITPendingBit>
 80020ca:	bf00      	nop
 80020cc:	20000dbc 	.word	0x20000dbc
 80020d0:	20000db0 	.word	0x20000db0
 80020d4:	20000da8 	.word	0x20000da8
 80020d8:	20000db8 	.word	0x20000db8
 80020dc:	40000400 	.word	0x40000400

080020e0 <timer_get_time>:
 80020e0:	b082      	sub	sp, #8
 80020e2:	b672      	cpsid	i
 80020e4:	4b04      	ldr	r3, [pc, #16]	; (80020f8 <timer_get_time+0x18>)
 80020e6:	681b      	ldr	r3, [r3, #0]
 80020e8:	9301      	str	r3, [sp, #4]
 80020ea:	b662      	cpsie	i
 80020ec:	9801      	ldr	r0, [sp, #4]
 80020ee:	230a      	movs	r3, #10
 80020f0:	fbb0 f0f3 	udiv	r0, r0, r3
 80020f4:	b002      	add	sp, #8
 80020f6:	4770      	bx	lr
 80020f8:	20000db8 	.word	0x20000db8

080020fc <timer_delay_ms>:
 80020fc:	b513      	push	{r0, r1, r4, lr}
 80020fe:	4604      	mov	r4, r0
 8002100:	f7ff ffee 	bl	80020e0 <timer_get_time>
 8002104:	4420      	add	r0, r4
 8002106:	9001      	str	r0, [sp, #4]
 8002108:	9c01      	ldr	r4, [sp, #4]
 800210a:	f7ff ffe9 	bl	80020e0 <timer_get_time>
 800210e:	4284      	cmp	r4, r0
 8002110:	d902      	bls.n	8002118 <timer_delay_ms+0x1c>
 8002112:	f7ff fc3f 	bl	8001994 <sleep>
 8002116:	e7f7      	b.n	8002108 <timer_delay_ms+0xc>
 8002118:	b002      	add	sp, #8
 800211a:	bd10      	pop	{r4, pc}

0800211c <event_timer_set_period>:
 800211c:	b672      	cpsid	i
 800211e:	230a      	movs	r3, #10
 8002120:	4359      	muls	r1, r3
 8002122:	4b06      	ldr	r3, [pc, #24]	; (800213c <event_timer_set_period+0x20>)
 8002124:	b289      	uxth	r1, r1
 8002126:	f823 1010 	strh.w	r1, [r3, r0, lsl #1]
 800212a:	4b05      	ldr	r3, [pc, #20]	; (8002140 <event_timer_set_period+0x24>)
 800212c:	f823 1010 	strh.w	r1, [r3, r0, lsl #1]
 8002130:	4b04      	ldr	r3, [pc, #16]	; (8002144 <event_timer_set_period+0x28>)
 8002132:	2200      	movs	r2, #0
 8002134:	f823 2010 	strh.w	r2, [r3, r0, lsl #1]
 8002138:	b662      	cpsie	i
 800213a:	4770      	bx	lr
 800213c:	20000dbc 	.word	0x20000dbc
 8002140:	20000db0 	.word	0x20000db0
 8002144:	20000da8 	.word	0x20000da8

08002148 <event_timer_wait>:
 8002148:	b510      	push	{r4, lr}
 800214a:	4604      	mov	r4, r0
 800214c:	4b06      	ldr	r3, [pc, #24]	; (8002168 <event_timer_wait+0x20>)
 800214e:	f833 2014 	ldrh.w	r2, [r3, r4, lsl #1]
 8002152:	b292      	uxth	r2, r2
 8002154:	b912      	cbnz	r2, 800215c <event_timer_wait+0x14>
 8002156:	f7ff fc1d 	bl	8001994 <sleep>
 800215a:	e7f7      	b.n	800214c <event_timer_wait+0x4>
 800215c:	b672      	cpsid	i
 800215e:	2200      	movs	r2, #0
 8002160:	f823 2014 	strh.w	r2, [r3, r4, lsl #1]
 8002164:	b662      	cpsie	i
 8002166:	bd10      	pop	{r4, pc}
 8002168:	20000da8 	.word	0x20000da8

0800216c <GPIO_Init>:
 800216c:	b5f0      	push	{r4, r5, r6, r7, lr}
 800216e:	bf00      	nop
 8002170:	bf00      	nop
 8002172:	bf00      	nop
 8002174:	bf00      	nop
 8002176:	2300      	movs	r3, #0
 8002178:	680e      	ldr	r6, [r1, #0]
 800217a:	461a      	mov	r2, r3
 800217c:	2501      	movs	r5, #1
 800217e:	4095      	lsls	r5, r2
 8002180:	ea05 0406 	and.w	r4, r5, r6
 8002184:	42ac      	cmp	r4, r5
 8002186:	d131      	bne.n	80021ec <GPIO_Init+0x80>
 8002188:	790d      	ldrb	r5, [r1, #4]
 800218a:	1e6f      	subs	r7, r5, #1
 800218c:	b2ff      	uxtb	r7, r7
 800218e:	2f01      	cmp	r7, #1
 8002190:	d81c      	bhi.n	80021cc <GPIO_Init+0x60>
 8002192:	bf00      	nop
 8002194:	f04f 0c03 	mov.w	ip, #3
 8002198:	6887      	ldr	r7, [r0, #8]
 800219a:	fa0c fc03 	lsl.w	ip, ip, r3
 800219e:	ea27 070c 	bic.w	r7, r7, ip
 80021a2:	6087      	str	r7, [r0, #8]
 80021a4:	f891 c005 	ldrb.w	ip, [r1, #5]
 80021a8:	6887      	ldr	r7, [r0, #8]
 80021aa:	fa0c fc03 	lsl.w	ip, ip, r3
 80021ae:	ea4c 0707 	orr.w	r7, ip, r7
 80021b2:	6087      	str	r7, [r0, #8]
 80021b4:	bf00      	nop
 80021b6:	8887      	ldrh	r7, [r0, #4]
 80021b8:	b2bf      	uxth	r7, r7
 80021ba:	ea27 0404 	bic.w	r4, r7, r4
 80021be:	8084      	strh	r4, [r0, #4]
 80021c0:	798c      	ldrb	r4, [r1, #6]
 80021c2:	8887      	ldrh	r7, [r0, #4]
 80021c4:	4094      	lsls	r4, r2
 80021c6:	433c      	orrs	r4, r7
 80021c8:	b2a4      	uxth	r4, r4
 80021ca:	8084      	strh	r4, [r0, #4]
 80021cc:	2403      	movs	r4, #3
 80021ce:	6807      	ldr	r7, [r0, #0]
 80021d0:	409c      	lsls	r4, r3
 80021d2:	43e4      	mvns	r4, r4
 80021d4:	4027      	ands	r7, r4
 80021d6:	6007      	str	r7, [r0, #0]
 80021d8:	6807      	ldr	r7, [r0, #0]
 80021da:	409d      	lsls	r5, r3
 80021dc:	433d      	orrs	r5, r7
 80021de:	6005      	str	r5, [r0, #0]
 80021e0:	68c5      	ldr	r5, [r0, #12]
 80021e2:	402c      	ands	r4, r5
 80021e4:	79cd      	ldrb	r5, [r1, #7]
 80021e6:	409d      	lsls	r5, r3
 80021e8:	432c      	orrs	r4, r5
 80021ea:	60c4      	str	r4, [r0, #12]
 80021ec:	3201      	adds	r2, #1
 80021ee:	2a10      	cmp	r2, #16
 80021f0:	f103 0302 	add.w	r3, r3, #2
 80021f4:	d1c2      	bne.n	800217c <GPIO_Init+0x10>
 80021f6:	bdf0      	pop	{r4, r5, r6, r7, pc}

080021f8 <GPIO_SetBits>:
 80021f8:	bf00      	nop
 80021fa:	bf00      	nop
 80021fc:	6181      	str	r1, [r0, #24]
 80021fe:	4770      	bx	lr

08002200 <GPIO_ResetBits>:
 8002200:	bf00      	nop
 8002202:	bf00      	nop
 8002204:	8501      	strh	r1, [r0, #40]	; 0x28
 8002206:	4770      	bx	lr

08002208 <GPIO_PinAFConfig>:
 8002208:	b510      	push	{r4, lr}
 800220a:	bf00      	nop
 800220c:	bf00      	nop
 800220e:	bf00      	nop
 8002210:	f001 0307 	and.w	r3, r1, #7
 8002214:	08c9      	lsrs	r1, r1, #3
 8002216:	eb00 0081 	add.w	r0, r0, r1, lsl #2
 800221a:	009b      	lsls	r3, r3, #2
 800221c:	6a04      	ldr	r4, [r0, #32]
 800221e:	210f      	movs	r1, #15
 8002220:	4099      	lsls	r1, r3
 8002222:	ea24 0101 	bic.w	r1, r4, r1
 8002226:	6201      	str	r1, [r0, #32]
 8002228:	6a01      	ldr	r1, [r0, #32]
 800222a:	fa02 f303 	lsl.w	r3, r2, r3
 800222e:	430b      	orrs	r3, r1
 8002230:	6203      	str	r3, [r0, #32]
 8002232:	bd10      	pop	{r4, pc}

08002234 <gpio_init>:
 8002234:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
 8002238:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 800223c:	2101      	movs	r1, #1
 800223e:	f7ff fdbb 	bl	8001db8 <RCC_AHBPeriphClockCmd>
 8002242:	4d21      	ldr	r5, [pc, #132]	; (80022c8 <gpio_init+0x94>)
 8002244:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 8002248:	2101      	movs	r1, #1
 800224a:	f7ff fdb5 	bl	8001db8 <RCC_AHBPeriphClockCmd>
 800224e:	f44f 2000 	mov.w	r0, #524288	; 0x80000
 8002252:	2101      	movs	r1, #1
 8002254:	f7ff fdb0 	bl	8001db8 <RCC_AHBPeriphClockCmd>
 8002258:	2400      	movs	r4, #0
 800225a:	2603      	movs	r6, #3
 800225c:	f44f 4900 	mov.w	r9, #32768	; 0x8000
 8002260:	2701      	movs	r7, #1
 8002262:	4628      	mov	r0, r5
 8002264:	4669      	mov	r1, sp
 8002266:	f88d 7004 	strb.w	r7, [sp, #4]
 800226a:	f8cd 9000 	str.w	r9, [sp]
 800226e:	f88d 4006 	strb.w	r4, [sp, #6]
 8002272:	f88d 6005 	strb.w	r6, [sp, #5]
 8002276:	f88d 4007 	strb.w	r4, [sp, #7]
 800227a:	f7ff ff77 	bl	800216c <GPIO_Init>
 800227e:	f88d 7004 	strb.w	r7, [sp, #4]
 8002282:	4f12      	ldr	r7, [pc, #72]	; (80022cc <gpio_init+0x98>)
 8002284:	f88d 4006 	strb.w	r4, [sp, #6]
 8002288:	f44f 5800 	mov.w	r8, #8192	; 0x2000
 800228c:	4638      	mov	r0, r7
 800228e:	4669      	mov	r1, sp
 8002290:	f8cd 8000 	str.w	r8, [sp]
 8002294:	f88d 6005 	strb.w	r6, [sp, #5]
 8002298:	f88d 4007 	strb.w	r4, [sp, #7]
 800229c:	f7ff ff66 	bl	800216c <GPIO_Init>
 80022a0:	f44f 7300 	mov.w	r3, #512	; 0x200
 80022a4:	4628      	mov	r0, r5
 80022a6:	4669      	mov	r1, sp
 80022a8:	9300      	str	r3, [sp, #0]
 80022aa:	f88d 4004 	strb.w	r4, [sp, #4]
 80022ae:	f88d 6005 	strb.w	r6, [sp, #5]
 80022b2:	f88d 4007 	strb.w	r4, [sp, #7]
 80022b6:	f7ff ff59 	bl	800216c <GPIO_Init>
 80022ba:	f8c5 9018 	str.w	r9, [r5, #24]
 80022be:	f8c7 8018 	str.w	r8, [r7, #24]
 80022c2:	b003      	add	sp, #12
 80022c4:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 80022c8:	48000400 	.word	0x48000400
 80022cc:	48000800 	.word	0x48000800

080022d0 <led_on>:
 80022d0:	0402      	lsls	r2, r0, #16
 80022d2:	d503      	bpl.n	80022dc <led_on+0xc>
 80022d4:	4b05      	ldr	r3, [pc, #20]	; (80022ec <led_on+0x1c>)
 80022d6:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 80022da:	619a      	str	r2, [r3, #24]
 80022dc:	0483      	lsls	r3, r0, #18
 80022de:	d503      	bpl.n	80022e8 <led_on+0x18>
 80022e0:	4b03      	ldr	r3, [pc, #12]	; (80022f0 <led_on+0x20>)
 80022e2:	f44f 5200 	mov.w	r2, #8192	; 0x2000
 80022e6:	851a      	strh	r2, [r3, #40]	; 0x28
 80022e8:	4770      	bx	lr
 80022ea:	bf00      	nop
 80022ec:	48000400 	.word	0x48000400
 80022f0:	48000800 	.word	0x48000800

080022f4 <led_off>:
 80022f4:	0403      	lsls	r3, r0, #16
 80022f6:	d503      	bpl.n	8002300 <led_off+0xc>
 80022f8:	4b05      	ldr	r3, [pc, #20]	; (8002310 <led_off+0x1c>)
 80022fa:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 80022fe:	851a      	strh	r2, [r3, #40]	; 0x28
 8002300:	0481      	lsls	r1, r0, #18
 8002302:	d503      	bpl.n	800230c <led_off+0x18>
 8002304:	4b03      	ldr	r3, [pc, #12]	; (8002314 <led_off+0x20>)
 8002306:	f44f 5200 	mov.w	r2, #8192	; 0x2000
 800230a:	619a      	str	r2, [r3, #24]
 800230c:	4770      	bx	lr
 800230e:	bf00      	nop
 8002310:	48000400 	.word	0x48000400
 8002314:	48000800 	.word	0x48000800

08002318 <get_key>:
 8002318:	4b02      	ldr	r3, [pc, #8]	; (8002324 <get_key+0xc>)
 800231a:	8a18      	ldrh	r0, [r3, #16]
 800231c:	43c0      	mvns	r0, r0
 800231e:	f400 7000 	and.w	r0, r0, #512	; 0x200
 8002322:	4770      	bx	lr
 8002324:	48000400 	.word	0x48000400

08002328 <drv8834_run>:
 8002328:	1e02      	subs	r2, r0, #0
 800232a:	4b18      	ldr	r3, [pc, #96]	; (800238c <drv8834_run+0x64>)
 800232c:	dd09      	ble.n	8002342 <drv8834_run+0x1a>
 800232e:	6998      	ldr	r0, [r3, #24]
 8002330:	f040 0008 	orr.w	r0, r0, #8
 8002334:	6198      	str	r0, [r3, #24]
 8002336:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 800233a:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 800233e:	6198      	str	r0, [r3, #24]
 8002340:	e00b      	b.n	800235a <drv8834_run+0x32>
 8002342:	8d18      	ldrh	r0, [r3, #40]	; 0x28
 8002344:	b280      	uxth	r0, r0
 8002346:	f040 0008 	orr.w	r0, r0, #8
 800234a:	8518      	strh	r0, [r3, #40]	; 0x28
 800234c:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8002350:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8002354:	4252      	negs	r2, r2
 8002356:	8518      	strh	r0, [r3, #40]	; 0x28
 8002358:	b212      	sxth	r2, r2
 800235a:	2900      	cmp	r1, #0
 800235c:	4b0b      	ldr	r3, [pc, #44]	; (800238c <drv8834_run+0x64>)
 800235e:	dd05      	ble.n	800236c <drv8834_run+0x44>
 8002360:	8d18      	ldrh	r0, [r3, #40]	; 0x28
 8002362:	b280      	uxth	r0, r0
 8002364:	f040 0020 	orr.w	r0, r0, #32
 8002368:	8518      	strh	r0, [r3, #40]	; 0x28
 800236a:	e005      	b.n	8002378 <drv8834_run+0x50>
 800236c:	6998      	ldr	r0, [r3, #24]
 800236e:	4249      	negs	r1, r1
 8002370:	f040 0020 	orr.w	r0, r0, #32
 8002374:	6198      	str	r0, [r3, #24]
 8002376:	b209      	sxth	r1, r1
 8002378:	2964      	cmp	r1, #100	; 0x64
 800237a:	bfb4      	ite	lt
 800237c:	4608      	movlt	r0, r1
 800237e:	2064      	movge	r0, #100	; 0x64
 8002380:	2a64      	cmp	r2, #100	; 0x64
 8002382:	bfb4      	ite	lt
 8002384:	4611      	movlt	r1, r2
 8002386:	2164      	movge	r1, #100	; 0x64
 8002388:	f000 b844 	b.w	8002414 <pwm_set>
 800238c:	48000400 	.word	0x48000400

08002390 <drv8834_init>:
 8002390:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 8002392:	4d1f      	ldr	r5, [pc, #124]	; (8002410 <drv8834_init+0x80>)
 8002394:	2400      	movs	r4, #0
 8002396:	2603      	movs	r6, #3
 8002398:	2338      	movs	r3, #56	; 0x38
 800239a:	2701      	movs	r7, #1
 800239c:	4628      	mov	r0, r5
 800239e:	4669      	mov	r1, sp
 80023a0:	9300      	str	r3, [sp, #0]
 80023a2:	f88d 7004 	strb.w	r7, [sp, #4]
 80023a6:	f88d 4006 	strb.w	r4, [sp, #6]
 80023aa:	f88d 6005 	strb.w	r6, [sp, #5]
 80023ae:	f88d 4007 	strb.w	r4, [sp, #7]
 80023b2:	f7ff fedb 	bl	800216c <GPIO_Init>
 80023b6:	2308      	movs	r3, #8
 80023b8:	9300      	str	r3, [sp, #0]
 80023ba:	4628      	mov	r0, r5
 80023bc:	2302      	movs	r3, #2
 80023be:	4669      	mov	r1, sp
 80023c0:	f88d 3004 	strb.w	r3, [sp, #4]
 80023c4:	f88d 4006 	strb.w	r4, [sp, #6]
 80023c8:	f88d 6005 	strb.w	r6, [sp, #5]
 80023cc:	f88d 4007 	strb.w	r4, [sp, #7]
 80023d0:	f7ff fecc 	bl	800216c <GPIO_Init>
 80023d4:	220f      	movs	r2, #15
 80023d6:	4628      	mov	r0, r5
 80023d8:	4631      	mov	r1, r6
 80023da:	f7ff ff15 	bl	8002208 <GPIO_PinAFConfig>
 80023de:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 80023e2:	4669      	mov	r1, sp
 80023e4:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80023e8:	9300      	str	r3, [sp, #0]
 80023ea:	f88d 7004 	strb.w	r7, [sp, #4]
 80023ee:	f88d 4006 	strb.w	r4, [sp, #6]
 80023f2:	f88d 6005 	strb.w	r6, [sp, #5]
 80023f6:	f88d 4007 	strb.w	r4, [sp, #7]
 80023fa:	f7ff feb7 	bl	800216c <GPIO_Init>
 80023fe:	2310      	movs	r3, #16
 8002400:	852b      	strh	r3, [r5, #40]	; 0x28
 8002402:	4620      	mov	r0, r4
 8002404:	4621      	mov	r1, r4
 8002406:	f7ff ff8f 	bl	8002328 <drv8834_run>
 800240a:	b003      	add	sp, #12
 800240c:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800240e:	bf00      	nop
 8002410:	48000400 	.word	0x48000400

08002414 <pwm_set>:
 8002414:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8002418:	b086      	sub	sp, #24
 800241a:	2370      	movs	r3, #112	; 0x70
 800241c:	9301      	str	r3, [sp, #4]
 800241e:	2301      	movs	r3, #1
 8002420:	f8ad 3008 	strh.w	r3, [sp, #8]
 8002424:	2304      	movs	r3, #4
 8002426:	f8ad 300a 	strh.w	r3, [sp, #10]
 800242a:	4f17      	ldr	r7, [pc, #92]	; (8002488 <pwm_set+0x74>)
 800242c:	4c17      	ldr	r4, [pc, #92]	; (800248c <pwm_set+0x78>)
 800242e:	2302      	movs	r3, #2
 8002430:	f8ad 3010 	strh.w	r3, [sp, #16]
 8002434:	2300      	movs	r3, #0
 8002436:	f8ad 3012 	strh.w	r3, [sp, #18]
 800243a:	f8ad 3016 	strh.w	r3, [sp, #22]
 800243e:	683b      	ldr	r3, [r7, #0]
 8002440:	f242 7610 	movw	r6, #10000	; 0x2710
 8002444:	fbb3 f3f6 	udiv	r3, r3, r6
 8002448:	3b02      	subs	r3, #2
 800244a:	4358      	muls	r0, r3
 800244c:	2564      	movs	r5, #100	; 0x64
 800244e:	fbb0 f3f5 	udiv	r3, r0, r5
 8002452:	f44f 7280 	mov.w	r2, #256	; 0x100
 8002456:	4620      	mov	r0, r4
 8002458:	4688      	mov	r8, r1
 800245a:	a901      	add	r1, sp, #4
 800245c:	f8ad 2014 	strh.w	r2, [sp, #20]
 8002460:	9303      	str	r3, [sp, #12]
 8002462:	f7ff fd31 	bl	8001ec8 <TIM_OC1Init>
 8002466:	683b      	ldr	r3, [r7, #0]
 8002468:	fbb3 f6f6 	udiv	r6, r3, r6
 800246c:	3e02      	subs	r6, #2
 800246e:	fb06 f808 	mul.w	r8, r6, r8
 8002472:	fbb8 f5f5 	udiv	r5, r8, r5
 8002476:	4620      	mov	r0, r4
 8002478:	a901      	add	r1, sp, #4
 800247a:	9503      	str	r5, [sp, #12]
 800247c:	f7ff fd6a 	bl	8001f54 <TIM_OC2Init>
 8002480:	b006      	add	sp, #24
 8002482:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8002486:	bf00      	nop
 8002488:	20000278 	.word	0x20000278
 800248c:	40012c00 	.word	0x40012c00

08002490 <pwm_init>:
 8002490:	b530      	push	{r4, r5, lr}
 8002492:	f44f 6000 	mov.w	r0, #2048	; 0x800
 8002496:	b087      	sub	sp, #28
 8002498:	2101      	movs	r1, #1
 800249a:	f7ff fc9b 	bl	8001dd4 <RCC_APB2PeriphClockCmd>
 800249e:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 80024a2:	2101      	movs	r1, #1
 80024a4:	f7ff fc88 	bl	8001db8 <RCC_AHBPeriphClockCmd>
 80024a8:	4c1d      	ldr	r4, [pc, #116]	; (8002520 <pwm_init+0x90>)
 80024aa:	4d1e      	ldr	r5, [pc, #120]	; (8002524 <pwm_init+0x94>)
 80024ac:	f44f 43c0 	mov.w	r3, #24576	; 0x6000
 80024b0:	9301      	str	r3, [sp, #4]
 80024b2:	2302      	movs	r3, #2
 80024b4:	f88d 3008 	strb.w	r3, [sp, #8]
 80024b8:	4620      	mov	r0, r4
 80024ba:	2303      	movs	r3, #3
 80024bc:	a901      	add	r1, sp, #4
 80024be:	f88d 3009 	strb.w	r3, [sp, #9]
 80024c2:	f7ff fe53 	bl	800216c <GPIO_Init>
 80024c6:	4620      	mov	r0, r4
 80024c8:	210d      	movs	r1, #13
 80024ca:	2206      	movs	r2, #6
 80024cc:	f7ff fe9c 	bl	8002208 <GPIO_PinAFConfig>
 80024d0:	4620      	mov	r0, r4
 80024d2:	210e      	movs	r1, #14
 80024d4:	2206      	movs	r2, #6
 80024d6:	f7ff fe97 	bl	8002208 <GPIO_PinAFConfig>
 80024da:	4b13      	ldr	r3, [pc, #76]	; (8002528 <pwm_init+0x98>)
 80024dc:	681a      	ldr	r2, [r3, #0]
 80024de:	f242 7310 	movw	r3, #10000	; 0x2710
 80024e2:	fbb2 f3f3 	udiv	r3, r2, r3
 80024e6:	2400      	movs	r4, #0
 80024e8:	3b01      	subs	r3, #1
 80024ea:	4628      	mov	r0, r5
 80024ec:	a903      	add	r1, sp, #12
 80024ee:	9304      	str	r3, [sp, #16]
 80024f0:	f8ad 400c 	strh.w	r4, [sp, #12]
 80024f4:	f8ad 400e 	strh.w	r4, [sp, #14]
 80024f8:	f8ad 4014 	strh.w	r4, [sp, #20]
 80024fc:	f8ad 4016 	strh.w	r4, [sp, #22]
 8002500:	f7ff fc84 	bl	8001e0c <TIM_TimeBaseInit>
 8002504:	4620      	mov	r0, r4
 8002506:	4621      	mov	r1, r4
 8002508:	f7ff ff84 	bl	8002414 <pwm_set>
 800250c:	4628      	mov	r0, r5
 800250e:	2101      	movs	r1, #1
 8002510:	f7ff fccc 	bl	8001eac <TIM_Cmd>
 8002514:	4628      	mov	r0, r5
 8002516:	2101      	movs	r1, #1
 8002518:	f7ff fd5a 	bl	8001fd0 <TIM_CtrlPWMOutputs>
 800251c:	b007      	add	sp, #28
 800251e:	bd30      	pop	{r4, r5, pc}
 8002520:	48000400 	.word	0x48000400
 8002524:	40012c00 	.word	0x40012c00
 8002528:	20000278 	.word	0x20000278

0800252c <_init>:
 800252c:	e1a0c00d 	mov	ip, sp
 8002530:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
 8002534:	e24cb004 	sub	fp, ip, #4
 8002538:	e24bd028 	sub	sp, fp, #40	; 0x28
 800253c:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
 8002540:	e12fff1e 	bx	lr

08002544 <_fini>:
 8002544:	e1a0c00d 	mov	ip, sp
 8002548:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
 800254c:	e24cb004 	sub	fp, ip, #4
 8002550:	e24bd028 	sub	sp, fp, #40	; 0x28
 8002554:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
 8002558:	e12fff1e 	bx	lr
 800255c:	69647473 	.word	0x69647473
 8002560:	6e69206f 	.word	0x6e69206f
 8002564:	64207469 	.word	0x64207469
 8002568:	0a656e6f 	.word	0x0a656e6f
 800256c:	00          	.byte	0x00
 800256d:	0a          	.byte	0x0a
 800256e:	6577      	.short	0x6577
 8002570:	6d6f636c 	.word	0x6d6f636c
 8002574:	6f742065 	.word	0x6f742065
 8002578:	7a755320 	.word	0x7a755320
 800257c:	4f616875 	.word	0x4f616875
 8002580:	5f5e2053 	.word	0x5f5e2053
 8002584:	2e32205e 	.word	0x2e32205e
 8002588:	0a362e30 	.word	0x0a362e30
 800258c:	4c495542 	.word	0x4c495542
 8002590:	65442044 	.word	0x65442044
 8002594:	35312063 	.word	0x35312063
 8002598:	31303220 	.word	0x31303220
 800259c:	39312035 	.word	0x39312035
 80025a0:	3a38333a 	.word	0x3a38333a
 80025a4:	000a3635 	.word	0x000a3635

080025a8 <__EH_FRAME_BEGIN__>:
 80025a8:	00000000                                ....
