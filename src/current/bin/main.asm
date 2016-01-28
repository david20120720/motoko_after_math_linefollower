
bin/main.elf:     file format elf32-littlearm


Disassembly of section .text:

08000188 <main>:
 8000188:	b508      	push	{r3, lr}
 800018a:	f001 fba3 	bl	80018d4 <lib_low_level_init>
 800018e:	f000 f921 	bl	80003d4 <lib_os_init>
 8000192:	4905      	ldr	r1, [pc, #20]	; (80001a8 <main+0x20>)
 8000194:	4805      	ldr	r0, [pc, #20]	; (80001ac <main+0x24>)
 8000196:	f44f 7200 	mov.w	r2, #512	; 0x200
 800019a:	2306      	movs	r3, #6
 800019c:	f000 f88a 	bl	80002b4 <create_thread>
 80001a0:	f000 f882 	bl	80002a8 <kernel_start>
 80001a4:	2000      	movs	r0, #0
 80001a6:	bd08      	pop	{r3, pc}
 80001a8:	20000684 	.word	0x20000684
 80001ac:	08001119 	.word	0x08001119

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
 80001c8:	200008cc 	.word	0x200008cc
 80001cc:	20000884 	.word	0x20000884

080001d0 <null_thread>:
 80001d0:	b508      	push	{r3, lr}
 80001d2:	f001 fd31 	bl	8001c38 <sleep>
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
 8000234:	20000884 	.word	0x20000884
 8000238:	200008cc 	.word	0x200008cc

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
 800027c:	200008cc 	.word	0x200008cc
 8000280:	20000884 	.word	0x20000884

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
 80002a4:	200008cc 	.word	0x200008cc

080002a8 <kernel_start>:
 80002a8:	b508      	push	{r3, lr}
 80002aa:	f001 fcb3 	bl	8001c14 <sys_tick_init>
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
 8000320:	20000884 	.word	0x20000884
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
 800035c:	20000884 	.word	0x20000884
 8000360:	200008cc 	.word	0x200008cc
 8000364:	080001d1 	.word	0x080001d1
 8000368:	200008d0 	.word	0x200008d0

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
 80003ac:	20000884 	.word	0x20000884

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
 80003d0:	20000884 	.word	0x20000884

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
 80003f6:	f001 f92b 	bl	8001650 <uart_write>
 80003fa:	4620      	mov	r0, r4
 80003fc:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8000400:	f000 b926 	b.w	8000650 <mutex_unlock>
 8000404:	20000950 	.word	0x20000950

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
 800042c:	2000095c 	.word	0x2000095c

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
 800057c:	20000958 	.word	0x20000958

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
 80005bc:	20000950 	.word	0x20000950
 80005c0:	20000954 	.word	0x20000954
 80005c4:	2000095c 	.word	0x2000095c
 80005c8:	20000958 	.word	0x20000958
 80005cc:	08002800 	.word	0x08002800

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
 80005fc:	20000960 	.word	0x20000960
 8000600:	20000978 	.word	0x20000978

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
	...

08000664 <lsm9ds0_read>:
 8000664:	b538      	push	{r3, r4, r5, lr}
 8000666:	2128      	movs	r1, #40	; 0x28
 8000668:	20d4      	movs	r0, #212	; 0xd4
 800066a:	f001 fa7a 	bl	8001b62 <i2c_read_reg>
 800066e:	2129      	movs	r1, #41	; 0x29
 8000670:	4605      	mov	r5, r0
 8000672:	20d4      	movs	r0, #212	; 0xd4
 8000674:	f001 fa75 	bl	8001b62 <i2c_read_reg>
 8000678:	4c38      	ldr	r4, [pc, #224]	; (800075c <lsm9ds0_read+0xf8>)
 800067a:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 800067e:	81a0      	strh	r0, [r4, #12]
 8000680:	212a      	movs	r1, #42	; 0x2a
 8000682:	20d4      	movs	r0, #212	; 0xd4
 8000684:	f001 fa6d 	bl	8001b62 <i2c_read_reg>
 8000688:	212b      	movs	r1, #43	; 0x2b
 800068a:	4605      	mov	r5, r0
 800068c:	20d4      	movs	r0, #212	; 0xd4
 800068e:	f001 fa68 	bl	8001b62 <i2c_read_reg>
 8000692:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000696:	81e0      	strh	r0, [r4, #14]
 8000698:	212c      	movs	r1, #44	; 0x2c
 800069a:	20d4      	movs	r0, #212	; 0xd4
 800069c:	f001 fa61 	bl	8001b62 <i2c_read_reg>
 80006a0:	212d      	movs	r1, #45	; 0x2d
 80006a2:	4605      	mov	r5, r0
 80006a4:	20d4      	movs	r0, #212	; 0xd4
 80006a6:	f001 fa5c 	bl	8001b62 <i2c_read_reg>
 80006aa:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 80006ae:	8220      	strh	r0, [r4, #16]
 80006b0:	2108      	movs	r1, #8
 80006b2:	203c      	movs	r0, #60	; 0x3c
 80006b4:	f001 fa55 	bl	8001b62 <i2c_read_reg>
 80006b8:	2109      	movs	r1, #9
 80006ba:	4605      	mov	r5, r0
 80006bc:	203c      	movs	r0, #60	; 0x3c
 80006be:	f001 fa50 	bl	8001b62 <i2c_read_reg>
 80006c2:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 80006c6:	80e0      	strh	r0, [r4, #6]
 80006c8:	210a      	movs	r1, #10
 80006ca:	203c      	movs	r0, #60	; 0x3c
 80006cc:	f001 fa49 	bl	8001b62 <i2c_read_reg>
 80006d0:	210b      	movs	r1, #11
 80006d2:	4605      	mov	r5, r0
 80006d4:	203c      	movs	r0, #60	; 0x3c
 80006d6:	f001 fa44 	bl	8001b62 <i2c_read_reg>
 80006da:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 80006de:	8120      	strh	r0, [r4, #8]
 80006e0:	210c      	movs	r1, #12
 80006e2:	203c      	movs	r0, #60	; 0x3c
 80006e4:	f001 fa3d 	bl	8001b62 <i2c_read_reg>
 80006e8:	210d      	movs	r1, #13
 80006ea:	4605      	mov	r5, r0
 80006ec:	203c      	movs	r0, #60	; 0x3c
 80006ee:	f001 fa38 	bl	8001b62 <i2c_read_reg>
 80006f2:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 80006f6:	8160      	strh	r0, [r4, #10]
 80006f8:	2128      	movs	r1, #40	; 0x28
 80006fa:	203c      	movs	r0, #60	; 0x3c
 80006fc:	f001 fa31 	bl	8001b62 <i2c_read_reg>
 8000700:	2129      	movs	r1, #41	; 0x29
 8000702:	4605      	mov	r5, r0
 8000704:	203c      	movs	r0, #60	; 0x3c
 8000706:	f001 fa2c 	bl	8001b62 <i2c_read_reg>
 800070a:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 800070e:	8020      	strh	r0, [r4, #0]
 8000710:	212a      	movs	r1, #42	; 0x2a
 8000712:	203c      	movs	r0, #60	; 0x3c
 8000714:	f001 fa25 	bl	8001b62 <i2c_read_reg>
 8000718:	212b      	movs	r1, #43	; 0x2b
 800071a:	4605      	mov	r5, r0
 800071c:	203c      	movs	r0, #60	; 0x3c
 800071e:	f001 fa20 	bl	8001b62 <i2c_read_reg>
 8000722:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000726:	8060      	strh	r0, [r4, #2]
 8000728:	212c      	movs	r1, #44	; 0x2c
 800072a:	203c      	movs	r0, #60	; 0x3c
 800072c:	f001 fa19 	bl	8001b62 <i2c_read_reg>
 8000730:	212d      	movs	r1, #45	; 0x2d
 8000732:	4605      	mov	r5, r0
 8000734:	203c      	movs	r0, #60	; 0x3c
 8000736:	f001 fa14 	bl	8001b62 <i2c_read_reg>
 800073a:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 800073e:	80a0      	strh	r0, [r4, #4]
 8000740:	2105      	movs	r1, #5
 8000742:	203c      	movs	r0, #60	; 0x3c
 8000744:	f001 fa0d 	bl	8001b62 <i2c_read_reg>
 8000748:	2106      	movs	r1, #6
 800074a:	4605      	mov	r5, r0
 800074c:	203c      	movs	r0, #60	; 0x3c
 800074e:	f001 fa08 	bl	8001b62 <i2c_read_reg>
 8000752:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000756:	8320      	strh	r0, [r4, #24]
 8000758:	bd38      	pop	{r3, r4, r5, pc}
 800075a:	bf00      	nop
 800075c:	200009b8 	.word	0x200009b8

08000760 <lsm9ds0_init>:
 8000760:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8000764:	4d34      	ldr	r5, [pc, #208]	; (8000838 <lsm9ds0_init+0xd8>)
 8000766:	2400      	movs	r4, #0
 8000768:	20d4      	movs	r0, #212	; 0xd4
 800076a:	210f      	movs	r1, #15
 800076c:	802c      	strh	r4, [r5, #0]
 800076e:	806c      	strh	r4, [r5, #2]
 8000770:	80ac      	strh	r4, [r5, #4]
 8000772:	80ec      	strh	r4, [r5, #6]
 8000774:	812c      	strh	r4, [r5, #8]
 8000776:	816c      	strh	r4, [r5, #10]
 8000778:	81ac      	strh	r4, [r5, #12]
 800077a:	81ec      	strh	r4, [r5, #14]
 800077c:	822c      	strh	r4, [r5, #16]
 800077e:	826c      	strh	r4, [r5, #18]
 8000780:	82ac      	strh	r4, [r5, #20]
 8000782:	82ec      	strh	r4, [r5, #22]
 8000784:	832c      	strh	r4, [r5, #24]
 8000786:	f001 f9ec 	bl	8001b62 <i2c_read_reg>
 800078a:	28d4      	cmp	r0, #212	; 0xd4
 800078c:	4606      	mov	r6, r0
 800078e:	d14e      	bne.n	800082e <lsm9ds0_init+0xce>
 8000790:	203c      	movs	r0, #60	; 0x3c
 8000792:	210f      	movs	r1, #15
 8000794:	f001 f9e5 	bl	8001b62 <i2c_read_reg>
 8000798:	2849      	cmp	r0, #73	; 0x49
 800079a:	bf18      	it	ne
 800079c:	2602      	movne	r6, #2
 800079e:	d147      	bne.n	8000830 <lsm9ds0_init+0xd0>
 80007a0:	4630      	mov	r0, r6
 80007a2:	2120      	movs	r1, #32
 80007a4:	22ff      	movs	r2, #255	; 0xff
 80007a6:	f001 f9c9 	bl	8001b3c <i2c_write_reg>
 80007aa:	4630      	mov	r0, r6
 80007ac:	2123      	movs	r1, #35	; 0x23
 80007ae:	2218      	movs	r2, #24
 80007b0:	f001 f9c4 	bl	8001b3c <i2c_write_reg>
 80007b4:	203c      	movs	r0, #60	; 0x3c
 80007b6:	211f      	movs	r1, #31
 80007b8:	4622      	mov	r2, r4
 80007ba:	f001 f9bf 	bl	8001b3c <i2c_write_reg>
 80007be:	203c      	movs	r0, #60	; 0x3c
 80007c0:	2120      	movs	r1, #32
 80007c2:	2267      	movs	r2, #103	; 0x67
 80007c4:	f001 f9ba 	bl	8001b3c <i2c_write_reg>
 80007c8:	203c      	movs	r0, #60	; 0x3c
 80007ca:	2121      	movs	r1, #33	; 0x21
 80007cc:	4622      	mov	r2, r4
 80007ce:	f001 f9b5 	bl	8001b3c <i2c_write_reg>
 80007d2:	203c      	movs	r0, #60	; 0x3c
 80007d4:	2124      	movs	r1, #36	; 0x24
 80007d6:	22f4      	movs	r2, #244	; 0xf4
 80007d8:	f001 f9b0 	bl	8001b3c <i2c_write_reg>
 80007dc:	203c      	movs	r0, #60	; 0x3c
 80007de:	2125      	movs	r1, #37	; 0x25
 80007e0:	4622      	mov	r2, r4
 80007e2:	f001 f9ab 	bl	8001b3c <i2c_write_reg>
 80007e6:	203c      	movs	r0, #60	; 0x3c
 80007e8:	2126      	movs	r1, #38	; 0x26
 80007ea:	2280      	movs	r2, #128	; 0x80
 80007ec:	f001 f9a6 	bl	8001b3c <i2c_write_reg>
 80007f0:	f7ff ff38 	bl	8000664 <lsm9ds0_read>
 80007f4:	2664      	movs	r6, #100	; 0x64
 80007f6:	4627      	mov	r7, r4
 80007f8:	46a0      	mov	r8, r4
 80007fa:	f7ff ff33 	bl	8000664 <lsm9ds0_read>
 80007fe:	f9b5 200c 	ldrsh.w	r2, [r5, #12]
 8000802:	4b0d      	ldr	r3, [pc, #52]	; (8000838 <lsm9ds0_init+0xd8>)
 8000804:	4490      	add	r8, r2
 8000806:	f9b5 200e 	ldrsh.w	r2, [r5, #14]
 800080a:	4417      	add	r7, r2
 800080c:	f9b5 2010 	ldrsh.w	r2, [r5, #16]
 8000810:	3e01      	subs	r6, #1
 8000812:	4414      	add	r4, r2
 8000814:	d1f1      	bne.n	80007fa <lsm9ds0_init+0x9a>
 8000816:	2264      	movs	r2, #100	; 0x64
 8000818:	fb98 f8f2 	sdiv	r8, r8, r2
 800081c:	fb97 f7f2 	sdiv	r7, r7, r2
 8000820:	fb94 f4f2 	sdiv	r4, r4, r2
 8000824:	f8a3 8012 	strh.w	r8, [r3, #18]
 8000828:	829f      	strh	r7, [r3, #20]
 800082a:	82dc      	strh	r4, [r3, #22]
 800082c:	e000      	b.n	8000830 <lsm9ds0_init+0xd0>
 800082e:	2601      	movs	r6, #1
 8000830:	4630      	mov	r0, r6
 8000832:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8000836:	bf00      	nop
 8000838:	200009b8 	.word	0x200009b8

0800083c <rgb_i2c_delay>:
 800083c:	bf00      	nop
 800083e:	4770      	bx	lr

08000840 <RGBSetLowSDA>:
 8000840:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 8000842:	4f15      	ldr	r7, [pc, #84]	; (8000898 <RGBSetLowSDA+0x58>)
 8000844:	783b      	ldrb	r3, [r7, #0]
 8000846:	2401      	movs	r4, #1
 8000848:	2603      	movs	r6, #3
 800084a:	2500      	movs	r5, #0
 800084c:	4669      	mov	r1, sp
 800084e:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000852:	9300      	str	r3, [sp, #0]
 8000854:	f88d 5007 	strb.w	r5, [sp, #7]
 8000858:	f88d 4004 	strb.w	r4, [sp, #4]
 800085c:	f88d 6005 	strb.w	r6, [sp, #5]
 8000860:	f88d 4006 	strb.w	r4, [sp, #6]
 8000864:	f001 fdd4 	bl	8002410 <GPIO_Init>
 8000868:	783a      	ldrb	r2, [r7, #0]
 800086a:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 800086e:	4669      	mov	r1, sp
 8000870:	851a      	strh	r2, [r3, #40]	; 0x28
 8000872:	f88d 5007 	strb.w	r5, [sp, #7]
 8000876:	4d09      	ldr	r5, [pc, #36]	; (800089c <RGBSetLowSDA+0x5c>)
 8000878:	9400      	str	r4, [sp, #0]
 800087a:	4628      	mov	r0, r5
 800087c:	f88d 4004 	strb.w	r4, [sp, #4]
 8000880:	f88d 6005 	strb.w	r6, [sp, #5]
 8000884:	f88d 4006 	strb.w	r4, [sp, #6]
 8000888:	f001 fdc2 	bl	8002410 <GPIO_Init>
 800088c:	852c      	strh	r4, [r5, #40]	; 0x28
 800088e:	f7ff ffd5 	bl	800083c <rgb_i2c_delay>
 8000892:	b003      	add	sp, #12
 8000894:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000896:	bf00      	nop
 8000898:	20000a2c 	.word	0x20000a2c
 800089c:	48000400 	.word	0x48000400

080008a0 <RGBSetHighSDA>:
 80008a0:	b573      	push	{r0, r1, r4, r5, r6, lr}
 80008a2:	4d13      	ldr	r5, [pc, #76]	; (80008f0 <RGBSetHighSDA+0x50>)
 80008a4:	782b      	ldrb	r3, [r5, #0]
 80008a6:	2400      	movs	r4, #0
 80008a8:	2603      	movs	r6, #3
 80008aa:	4669      	mov	r1, sp
 80008ac:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80008b0:	9300      	str	r3, [sp, #0]
 80008b2:	f88d 4004 	strb.w	r4, [sp, #4]
 80008b6:	f88d 4007 	strb.w	r4, [sp, #7]
 80008ba:	f88d 6005 	strb.w	r6, [sp, #5]
 80008be:	f001 fda7 	bl	8002410 <GPIO_Init>
 80008c2:	782a      	ldrb	r2, [r5, #0]
 80008c4:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 80008c8:	2501      	movs	r5, #1
 80008ca:	619a      	str	r2, [r3, #24]
 80008cc:	f88d 4004 	strb.w	r4, [sp, #4]
 80008d0:	f88d 4007 	strb.w	r4, [sp, #7]
 80008d4:	4c07      	ldr	r4, [pc, #28]	; (80008f4 <RGBSetHighSDA+0x54>)
 80008d6:	9500      	str	r5, [sp, #0]
 80008d8:	4620      	mov	r0, r4
 80008da:	4669      	mov	r1, sp
 80008dc:	f88d 6005 	strb.w	r6, [sp, #5]
 80008e0:	f001 fd96 	bl	8002410 <GPIO_Init>
 80008e4:	61a5      	str	r5, [r4, #24]
 80008e6:	f7ff ffa9 	bl	800083c <rgb_i2c_delay>
 80008ea:	b002      	add	sp, #8
 80008ec:	bd70      	pop	{r4, r5, r6, pc}
 80008ee:	bf00      	nop
 80008f0:	20000a2c 	.word	0x20000a2c
 80008f4:	48000400 	.word	0x48000400

080008f8 <RGBSetLowSCL>:
 80008f8:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 80008fc:	f44f 7280 	mov.w	r2, #256	; 0x100
 8000900:	851a      	strh	r2, [r3, #40]	; 0x28
 8000902:	f7ff bf9b 	b.w	800083c <rgb_i2c_delay>

08000906 <RGBSetHighSCL>:
 8000906:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 800090a:	f44f 7280 	mov.w	r2, #256	; 0x100
 800090e:	619a      	str	r2, [r3, #24]
 8000910:	f7ff bf94 	b.w	800083c <rgb_i2c_delay>

08000914 <rgb_i2c_init>:
 8000914:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 8000916:	4f1f      	ldr	r7, [pc, #124]	; (8000994 <rgb_i2c_init+0x80>)
 8000918:	2400      	movs	r4, #0
 800091a:	2501      	movs	r5, #1
 800091c:	2603      	movs	r6, #3
 800091e:	f44f 7380 	mov.w	r3, #256	; 0x100
 8000922:	4669      	mov	r1, sp
 8000924:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000928:	9300      	str	r3, [sp, #0]
 800092a:	f88d 4006 	strb.w	r4, [sp, #6]
 800092e:	f88d 4007 	strb.w	r4, [sp, #7]
 8000932:	f88d 5004 	strb.w	r5, [sp, #4]
 8000936:	f88d 6005 	strb.w	r6, [sp, #5]
 800093a:	f001 fd69 	bl	8002410 <GPIO_Init>
 800093e:	783b      	ldrb	r3, [r7, #0]
 8000940:	f88d 4004 	strb.w	r4, [sp, #4]
 8000944:	4669      	mov	r1, sp
 8000946:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 800094a:	9300      	str	r3, [sp, #0]
 800094c:	f88d 4007 	strb.w	r4, [sp, #7]
 8000950:	f88d 6005 	strb.w	r6, [sp, #5]
 8000954:	f001 fd5c 	bl	8002410 <GPIO_Init>
 8000958:	7839      	ldrb	r1, [r7, #0]
 800095a:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 800095e:	f001 fd9d 	bl	800249c <GPIO_SetBits>
 8000962:	f88d 4004 	strb.w	r4, [sp, #4]
 8000966:	f88d 4007 	strb.w	r4, [sp, #7]
 800096a:	4c0b      	ldr	r4, [pc, #44]	; (8000998 <rgb_i2c_init+0x84>)
 800096c:	9500      	str	r5, [sp, #0]
 800096e:	4620      	mov	r0, r4
 8000970:	4669      	mov	r1, sp
 8000972:	f88d 6005 	strb.w	r6, [sp, #5]
 8000976:	f001 fd4b 	bl	8002410 <GPIO_Init>
 800097a:	4620      	mov	r0, r4
 800097c:	4629      	mov	r1, r5
 800097e:	f001 fd8d 	bl	800249c <GPIO_SetBits>
 8000982:	f7ff ffc0 	bl	8000906 <RGBSetHighSCL>
 8000986:	f7ff ff5b 	bl	8000840 <RGBSetLowSDA>
 800098a:	f7ff ff89 	bl	80008a0 <RGBSetHighSDA>
 800098e:	b003      	add	sp, #12
 8000990:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000992:	bf00      	nop
 8000994:	20000a2c 	.word	0x20000a2c
 8000998:	48000400 	.word	0x48000400

0800099c <rgb_i2cStart>:
 800099c:	b508      	push	{r3, lr}
 800099e:	f7ff ffb2 	bl	8000906 <RGBSetHighSCL>
 80009a2:	f7ff ff7d 	bl	80008a0 <RGBSetHighSDA>
 80009a6:	f7ff ffae 	bl	8000906 <RGBSetHighSCL>
 80009aa:	f7ff ff49 	bl	8000840 <RGBSetLowSDA>
 80009ae:	f7ff ffa3 	bl	80008f8 <RGBSetLowSCL>
 80009b2:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80009b6:	f7ff bf73 	b.w	80008a0 <RGBSetHighSDA>

080009ba <rgb_i2cStop>:
 80009ba:	b508      	push	{r3, lr}
 80009bc:	f7ff ff9c 	bl	80008f8 <RGBSetLowSCL>
 80009c0:	f7ff ff3e 	bl	8000840 <RGBSetLowSDA>
 80009c4:	f7ff ff9f 	bl	8000906 <RGBSetHighSCL>
 80009c8:	f7ff ff3a 	bl	8000840 <RGBSetLowSDA>
 80009cc:	f7ff ff9b 	bl	8000906 <RGBSetHighSCL>
 80009d0:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80009d4:	f7ff bf64 	b.w	80008a0 <RGBSetHighSDA>

080009d8 <rgb_i2cWrite>:
 80009d8:	b538      	push	{r3, r4, r5, lr}
 80009da:	4604      	mov	r4, r0
 80009dc:	2508      	movs	r5, #8
 80009de:	f7ff ff8b 	bl	80008f8 <RGBSetLowSCL>
 80009e2:	0623      	lsls	r3, r4, #24
 80009e4:	d502      	bpl.n	80009ec <rgb_i2cWrite+0x14>
 80009e6:	f7ff ff5b 	bl	80008a0 <RGBSetHighSDA>
 80009ea:	e001      	b.n	80009f0 <rgb_i2cWrite+0x18>
 80009ec:	f7ff ff28 	bl	8000840 <RGBSetLowSDA>
 80009f0:	3d01      	subs	r5, #1
 80009f2:	f7ff ff88 	bl	8000906 <RGBSetHighSCL>
 80009f6:	0064      	lsls	r4, r4, #1
 80009f8:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 80009fc:	b2e4      	uxtb	r4, r4
 80009fe:	d1ee      	bne.n	80009de <rgb_i2cWrite+0x6>
 8000a00:	f7ff ff7a 	bl	80008f8 <RGBSetLowSCL>
 8000a04:	f7ff ff4c 	bl	80008a0 <RGBSetHighSDA>
 8000a08:	f7ff ff7d 	bl	8000906 <RGBSetHighSCL>
 8000a0c:	f7ff ff74 	bl	80008f8 <RGBSetLowSCL>
 8000a10:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8000a14:	f7ff bf12 	b.w	800083c <rgb_i2c_delay>

08000a18 <rgb_i2cRead>:
 8000a18:	b570      	push	{r4, r5, r6, lr}
 8000a1a:	2300      	movs	r3, #0
 8000a1c:	4606      	mov	r6, r0
 8000a1e:	460c      	mov	r4, r1
 8000a20:	2200      	movs	r2, #0
 8000a22:	54e2      	strb	r2, [r4, r3]
 8000a24:	3301      	adds	r3, #1
 8000a26:	2b09      	cmp	r3, #9
 8000a28:	d1fa      	bne.n	8000a20 <rgb_i2cRead+0x8>
 8000a2a:	f7ff ff65 	bl	80008f8 <RGBSetLowSCL>
 8000a2e:	f7ff ff37 	bl	80008a0 <RGBSetHighSDA>
 8000a32:	2508      	movs	r5, #8
 8000a34:	2300      	movs	r3, #0
 8000a36:	5ce2      	ldrb	r2, [r4, r3]
 8000a38:	0052      	lsls	r2, r2, #1
 8000a3a:	54e2      	strb	r2, [r4, r3]
 8000a3c:	3301      	adds	r3, #1
 8000a3e:	2b09      	cmp	r3, #9
 8000a40:	d1f9      	bne.n	8000a36 <rgb_i2cRead+0x1e>
 8000a42:	f7ff ff60 	bl	8000906 <RGBSetHighSCL>
 8000a46:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000a4a:	8a1b      	ldrh	r3, [r3, #16]
 8000a4c:	b29b      	uxth	r3, r3
 8000a4e:	07d8      	lsls	r0, r3, #31
 8000a50:	d503      	bpl.n	8000a5a <rgb_i2cRead+0x42>
 8000a52:	7822      	ldrb	r2, [r4, #0]
 8000a54:	f042 0201 	orr.w	r2, r2, #1
 8000a58:	7022      	strb	r2, [r4, #0]
 8000a5a:	0799      	lsls	r1, r3, #30
 8000a5c:	d503      	bpl.n	8000a66 <rgb_i2cRead+0x4e>
 8000a5e:	7862      	ldrb	r2, [r4, #1]
 8000a60:	f042 0201 	orr.w	r2, r2, #1
 8000a64:	7062      	strb	r2, [r4, #1]
 8000a66:	075a      	lsls	r2, r3, #29
 8000a68:	d503      	bpl.n	8000a72 <rgb_i2cRead+0x5a>
 8000a6a:	78a2      	ldrb	r2, [r4, #2]
 8000a6c:	f042 0201 	orr.w	r2, r2, #1
 8000a70:	70a2      	strb	r2, [r4, #2]
 8000a72:	0718      	lsls	r0, r3, #28
 8000a74:	d503      	bpl.n	8000a7e <rgb_i2cRead+0x66>
 8000a76:	78e2      	ldrb	r2, [r4, #3]
 8000a78:	f042 0201 	orr.w	r2, r2, #1
 8000a7c:	70e2      	strb	r2, [r4, #3]
 8000a7e:	06d9      	lsls	r1, r3, #27
 8000a80:	d503      	bpl.n	8000a8a <rgb_i2cRead+0x72>
 8000a82:	7922      	ldrb	r2, [r4, #4]
 8000a84:	f042 0201 	orr.w	r2, r2, #1
 8000a88:	7122      	strb	r2, [r4, #4]
 8000a8a:	069a      	lsls	r2, r3, #26
 8000a8c:	d503      	bpl.n	8000a96 <rgb_i2cRead+0x7e>
 8000a8e:	7962      	ldrb	r2, [r4, #5]
 8000a90:	f042 0201 	orr.w	r2, r2, #1
 8000a94:	7162      	strb	r2, [r4, #5]
 8000a96:	0658      	lsls	r0, r3, #25
 8000a98:	d503      	bpl.n	8000aa2 <rgb_i2cRead+0x8a>
 8000a9a:	79a2      	ldrb	r2, [r4, #6]
 8000a9c:	f042 0201 	orr.w	r2, r2, #1
 8000aa0:	71a2      	strb	r2, [r4, #6]
 8000aa2:	0619      	lsls	r1, r3, #24
 8000aa4:	d503      	bpl.n	8000aae <rgb_i2cRead+0x96>
 8000aa6:	79e3      	ldrb	r3, [r4, #7]
 8000aa8:	f043 0301 	orr.w	r3, r3, #1
 8000aac:	71e3      	strb	r3, [r4, #7]
 8000aae:	4b0b      	ldr	r3, [pc, #44]	; (8000adc <rgb_i2cRead+0xc4>)
 8000ab0:	8a1b      	ldrh	r3, [r3, #16]
 8000ab2:	07da      	lsls	r2, r3, #31
 8000ab4:	d503      	bpl.n	8000abe <rgb_i2cRead+0xa6>
 8000ab6:	7a23      	ldrb	r3, [r4, #8]
 8000ab8:	f043 0301 	orr.w	r3, r3, #1
 8000abc:	7223      	strb	r3, [r4, #8]
 8000abe:	f7ff ff1b 	bl	80008f8 <RGBSetLowSCL>
 8000ac2:	3d01      	subs	r5, #1
 8000ac4:	d1b6      	bne.n	8000a34 <rgb_i2cRead+0x1c>
 8000ac6:	b10e      	cbz	r6, 8000acc <rgb_i2cRead+0xb4>
 8000ac8:	f7ff feba 	bl	8000840 <RGBSetLowSDA>
 8000acc:	f7ff ff1b 	bl	8000906 <RGBSetHighSCL>
 8000ad0:	f7ff ff12 	bl	80008f8 <RGBSetLowSCL>
 8000ad4:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8000ad8:	f7ff beb0 	b.w	800083c <rgb_i2c_delay>
 8000adc:	48000400 	.word	0x48000400

08000ae0 <rgb_i2c_write_reg>:
 8000ae0:	b570      	push	{r4, r5, r6, lr}
 8000ae2:	4605      	mov	r5, r0
 8000ae4:	460c      	mov	r4, r1
 8000ae6:	4616      	mov	r6, r2
 8000ae8:	f7ff ff58 	bl	800099c <rgb_i2cStart>
 8000aec:	4628      	mov	r0, r5
 8000aee:	f7ff ff73 	bl	80009d8 <rgb_i2cWrite>
 8000af2:	4620      	mov	r0, r4
 8000af4:	f7ff ff70 	bl	80009d8 <rgb_i2cWrite>
 8000af8:	4630      	mov	r0, r6
 8000afa:	f7ff ff6d 	bl	80009d8 <rgb_i2cWrite>
 8000afe:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8000b02:	f7ff bf5a 	b.w	80009ba <rgb_i2cStop>

08000b06 <rgb_i2c_read_reg>:
 8000b06:	b570      	push	{r4, r5, r6, lr}
 8000b08:	4604      	mov	r4, r0
 8000b0a:	460d      	mov	r5, r1
 8000b0c:	4616      	mov	r6, r2
 8000b0e:	f7ff ff45 	bl	800099c <rgb_i2cStart>
 8000b12:	4620      	mov	r0, r4
 8000b14:	f7ff ff60 	bl	80009d8 <rgb_i2cWrite>
 8000b18:	4628      	mov	r0, r5
 8000b1a:	f7ff ff5d 	bl	80009d8 <rgb_i2cWrite>
 8000b1e:	f7ff ff3d 	bl	800099c <rgb_i2cStart>
 8000b22:	f044 0001 	orr.w	r0, r4, #1
 8000b26:	f7ff ff57 	bl	80009d8 <rgb_i2cWrite>
 8000b2a:	4631      	mov	r1, r6
 8000b2c:	2000      	movs	r0, #0
 8000b2e:	f7ff ff73 	bl	8000a18 <rgb_i2cRead>
 8000b32:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8000b36:	f7ff bf40 	b.w	80009ba <rgb_i2cStop>
	...

08000b3c <rgb_init>:
 8000b3c:	4b1d      	ldr	r3, [pc, #116]	; (8000bb4 <rgb_init+0x78>)
 8000b3e:	b570      	push	{r4, r5, r6, lr}
 8000b40:	2409      	movs	r4, #9
 8000b42:	2200      	movs	r2, #0
 8000b44:	3c01      	subs	r4, #1
 8000b46:	801a      	strh	r2, [r3, #0]
 8000b48:	825a      	strh	r2, [r3, #18]
 8000b4a:	849a      	strh	r2, [r3, #36]	; 0x24
 8000b4c:	f8a3 2048 	strh.w	r2, [r3, #72]	; 0x48
 8000b50:	86da      	strh	r2, [r3, #54]	; 0x36
 8000b52:	f103 0302 	add.w	r3, r3, #2
 8000b56:	d1f4      	bne.n	8000b42 <rgb_init+0x6>
 8000b58:	4d17      	ldr	r5, [pc, #92]	; (8000bb8 <rgb_init+0x7c>)
 8000b5a:	f64f 76ff 	movw	r6, #65535	; 0xffff
 8000b5e:	802e      	strh	r6, [r5, #0]
 8000b60:	f7ff fed8 	bl	8000914 <rgb_i2c_init>
 8000b64:	2072      	movs	r0, #114	; 0x72
 8000b66:	2181      	movs	r1, #129	; 0x81
 8000b68:	22ff      	movs	r2, #255	; 0xff
 8000b6a:	f7ff ffb9 	bl	8000ae0 <rgb_i2c_write_reg>
 8000b6e:	2072      	movs	r0, #114	; 0x72
 8000b70:	2183      	movs	r1, #131	; 0x83
 8000b72:	22ff      	movs	r2, #255	; 0xff
 8000b74:	f7ff ffb4 	bl	8000ae0 <rgb_i2c_write_reg>
 8000b78:	2072      	movs	r0, #114	; 0x72
 8000b7a:	218d      	movs	r1, #141	; 0x8d
 8000b7c:	4622      	mov	r2, r4
 8000b7e:	f7ff ffaf 	bl	8000ae0 <rgb_i2c_write_reg>
 8000b82:	2072      	movs	r0, #114	; 0x72
 8000b84:	2180      	movs	r1, #128	; 0x80
 8000b86:	2203      	movs	r2, #3
 8000b88:	f7ff ffaa 	bl	8000ae0 <rgb_i2c_write_reg>
 8000b8c:	2072      	movs	r0, #114	; 0x72
 8000b8e:	218f      	movs	r1, #143	; 0x8f
 8000b90:	2223      	movs	r2, #35	; 0x23
 8000b92:	f7ff ffa5 	bl	8000ae0 <rgb_i2c_write_reg>
 8000b96:	f7ff fe83 	bl	80008a0 <RGBSetHighSDA>
 8000b9a:	2072      	movs	r0, #114	; 0x72
 8000b9c:	2180      	movs	r1, #128	; 0x80
 8000b9e:	2207      	movs	r2, #7
 8000ba0:	802c      	strh	r4, [r5, #0]
 8000ba2:	f7ff ff9d 	bl	8000ae0 <rgb_i2c_write_reg>
 8000ba6:	2072      	movs	r0, #114	; 0x72
 8000ba8:	218e      	movs	r1, #142	; 0x8e
 8000baa:	2208      	movs	r2, #8
 8000bac:	f7ff ff98 	bl	8000ae0 <rgb_i2c_write_reg>
 8000bb0:	802e      	strh	r6, [r5, #0]
 8000bb2:	bd70      	pop	{r4, r5, r6, pc}
 8000bb4:	200009d2 	.word	0x200009d2
 8000bb8:	20000a2c 	.word	0x20000a2c

08000bbc <rgb_read>:
 8000bbc:	b538      	push	{r3, r4, r5, lr}
 8000bbe:	f7ff feed 	bl	800099c <rgb_i2cStart>
 8000bc2:	2072      	movs	r0, #114	; 0x72
 8000bc4:	f7ff ff08 	bl	80009d8 <rgb_i2cWrite>
 8000bc8:	20b4      	movs	r0, #180	; 0xb4
 8000bca:	f7ff ff05 	bl	80009d8 <rgb_i2cWrite>
 8000bce:	f7ff fee5 	bl	800099c <rgb_i2cStart>
 8000bd2:	2073      	movs	r0, #115	; 0x73
 8000bd4:	f7ff ff00 	bl	80009d8 <rgb_i2cWrite>
 8000bd8:	2001      	movs	r0, #1
 8000bda:	4946      	ldr	r1, [pc, #280]	; (8000cf4 <rgb_read+0x138>)
 8000bdc:	f7ff ff1c 	bl	8000a18 <rgb_i2cRead>
 8000be0:	2300      	movs	r3, #0
 8000be2:	4d45      	ldr	r5, [pc, #276]	; (8000cf8 <rgb_read+0x13c>)
 8000be4:	4c43      	ldr	r4, [pc, #268]	; (8000cf4 <rgb_read+0x138>)
 8000be6:	eb05 0243 	add.w	r2, r5, r3, lsl #1
 8000bea:	5d19      	ldrb	r1, [r3, r4]
 8000bec:	3301      	adds	r3, #1
 8000bee:	2b09      	cmp	r3, #9
 8000bf0:	86d1      	strh	r1, [r2, #54]	; 0x36
 8000bf2:	d1f6      	bne.n	8000be2 <rgb_read+0x26>
 8000bf4:	2001      	movs	r0, #1
 8000bf6:	4621      	mov	r1, r4
 8000bf8:	f7ff ff0e 	bl	8000a18 <rgb_i2cRead>
 8000bfc:	f105 0236 	add.w	r2, r5, #54	; 0x36
 8000c00:	2300      	movs	r3, #0
 8000c02:	8811      	ldrh	r1, [r2, #0]
 8000c04:	5ce0      	ldrb	r0, [r4, r3]
 8000c06:	3301      	adds	r3, #1
 8000c08:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 8000c0c:	2b09      	cmp	r3, #9
 8000c0e:	f822 1b02 	strh.w	r1, [r2], #2
 8000c12:	d1f6      	bne.n	8000c02 <rgb_read+0x46>
 8000c14:	2001      	movs	r0, #1
 8000c16:	4937      	ldr	r1, [pc, #220]	; (8000cf4 <rgb_read+0x138>)
 8000c18:	f7ff fefe 	bl	8000a18 <rgb_i2cRead>
 8000c1c:	2300      	movs	r3, #0
 8000c1e:	5ce2      	ldrb	r2, [r4, r3]
 8000c20:	f825 2013 	strh.w	r2, [r5, r3, lsl #1]
 8000c24:	3301      	adds	r3, #1
 8000c26:	2b09      	cmp	r3, #9
 8000c28:	d1f9      	bne.n	8000c1e <rgb_read+0x62>
 8000c2a:	2001      	movs	r0, #1
 8000c2c:	4931      	ldr	r1, [pc, #196]	; (8000cf4 <rgb_read+0x138>)
 8000c2e:	f7ff fef3 	bl	8000a18 <rgb_i2cRead>
 8000c32:	4a32      	ldr	r2, [pc, #200]	; (8000cfc <rgb_read+0x140>)
 8000c34:	2300      	movs	r3, #0
 8000c36:	5ce0      	ldrb	r0, [r4, r3]
 8000c38:	8851      	ldrh	r1, [r2, #2]
 8000c3a:	3301      	adds	r3, #1
 8000c3c:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 8000c40:	2b09      	cmp	r3, #9
 8000c42:	f822 1f02 	strh.w	r1, [r2, #2]!
 8000c46:	d1f6      	bne.n	8000c36 <rgb_read+0x7a>
 8000c48:	2001      	movs	r0, #1
 8000c4a:	492a      	ldr	r1, [pc, #168]	; (8000cf4 <rgb_read+0x138>)
 8000c4c:	f7ff fee4 	bl	8000a18 <rgb_i2cRead>
 8000c50:	2300      	movs	r3, #0
 8000c52:	eb05 0243 	add.w	r2, r5, r3, lsl #1
 8000c56:	5ce1      	ldrb	r1, [r4, r3]
 8000c58:	3301      	adds	r3, #1
 8000c5a:	2b09      	cmp	r3, #9
 8000c5c:	8251      	strh	r1, [r2, #18]
 8000c5e:	d1f8      	bne.n	8000c52 <rgb_read+0x96>
 8000c60:	2001      	movs	r0, #1
 8000c62:	4924      	ldr	r1, [pc, #144]	; (8000cf4 <rgb_read+0x138>)
 8000c64:	f7ff fed8 	bl	8000a18 <rgb_i2cRead>
 8000c68:	4a25      	ldr	r2, [pc, #148]	; (8000d00 <rgb_read+0x144>)
 8000c6a:	2300      	movs	r3, #0
 8000c6c:	8811      	ldrh	r1, [r2, #0]
 8000c6e:	5ce0      	ldrb	r0, [r4, r3]
 8000c70:	3301      	adds	r3, #1
 8000c72:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 8000c76:	2b09      	cmp	r3, #9
 8000c78:	f822 1b02 	strh.w	r1, [r2], #2
 8000c7c:	d1f6      	bne.n	8000c6c <rgb_read+0xb0>
 8000c7e:	2001      	movs	r0, #1
 8000c80:	491c      	ldr	r1, [pc, #112]	; (8000cf4 <rgb_read+0x138>)
 8000c82:	f7ff fec9 	bl	8000a18 <rgb_i2cRead>
 8000c86:	2300      	movs	r3, #0
 8000c88:	eb05 0243 	add.w	r2, r5, r3, lsl #1
 8000c8c:	5ce1      	ldrb	r1, [r4, r3]
 8000c8e:	3301      	adds	r3, #1
 8000c90:	2b09      	cmp	r3, #9
 8000c92:	8491      	strh	r1, [r2, #36]	; 0x24
 8000c94:	d1f8      	bne.n	8000c88 <rgb_read+0xcc>
 8000c96:	2001      	movs	r0, #1
 8000c98:	4916      	ldr	r1, [pc, #88]	; (8000cf4 <rgb_read+0x138>)
 8000c9a:	f7ff febd 	bl	8000a18 <rgb_i2cRead>
 8000c9e:	4a19      	ldr	r2, [pc, #100]	; (8000d04 <rgb_read+0x148>)
 8000ca0:	2300      	movs	r3, #0
 8000ca2:	8811      	ldrh	r1, [r2, #0]
 8000ca4:	5ce0      	ldrb	r0, [r4, r3]
 8000ca6:	3301      	adds	r3, #1
 8000ca8:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 8000cac:	2b09      	cmp	r3, #9
 8000cae:	f822 1b02 	strh.w	r1, [r2], #2
 8000cb2:	d1f6      	bne.n	8000ca2 <rgb_read+0xe6>
 8000cb4:	2001      	movs	r0, #1
 8000cb6:	490f      	ldr	r1, [pc, #60]	; (8000cf4 <rgb_read+0x138>)
 8000cb8:	f7ff feae 	bl	8000a18 <rgb_i2cRead>
 8000cbc:	2300      	movs	r3, #0
 8000cbe:	eb05 0243 	add.w	r2, r5, r3, lsl #1
 8000cc2:	5ce1      	ldrb	r1, [r4, r3]
 8000cc4:	3301      	adds	r3, #1
 8000cc6:	2b09      	cmp	r3, #9
 8000cc8:	f8a2 1048 	strh.w	r1, [r2, #72]	; 0x48
 8000ccc:	d1f7      	bne.n	8000cbe <rgb_read+0x102>
 8000cce:	2000      	movs	r0, #0
 8000cd0:	4908      	ldr	r1, [pc, #32]	; (8000cf4 <rgb_read+0x138>)
 8000cd2:	f7ff fea1 	bl	8000a18 <rgb_i2cRead>
 8000cd6:	4a0c      	ldr	r2, [pc, #48]	; (8000d08 <rgb_read+0x14c>)
 8000cd8:	2300      	movs	r3, #0
 8000cda:	8811      	ldrh	r1, [r2, #0]
 8000cdc:	5ce0      	ldrb	r0, [r4, r3]
 8000cde:	3301      	adds	r3, #1
 8000ce0:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 8000ce4:	2b09      	cmp	r3, #9
 8000ce6:	f822 1b02 	strh.w	r1, [r2], #2
 8000cea:	d1f6      	bne.n	8000cda <rgb_read+0x11e>
 8000cec:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8000cf0:	f7ff be63 	b.w	80009ba <rgb_i2cStop>
 8000cf4:	20000a2e 	.word	0x20000a2e
 8000cf8:	200009d2 	.word	0x200009d2
 8000cfc:	200009d0 	.word	0x200009d0
 8000d00:	200009e4 	.word	0x200009e4
 8000d04:	200009f6 	.word	0x200009f6
 8000d08:	20000a1a 	.word	0x20000a1a

08000d0c <line_sensor_init>:
 8000d0c:	b538      	push	{r3, r4, r5, lr}
 8000d0e:	f7ff ff15 	bl	8000b3c <rgb_init>
 8000d12:	f7ff ff53 	bl	8000bbc <rgb_read>
 8000d16:	2072      	movs	r0, #114	; 0x72
 8000d18:	2192      	movs	r1, #146	; 0x92
 8000d1a:	4a11      	ldr	r2, [pc, #68]	; (8000d60 <line_sensor_init+0x54>)
 8000d1c:	f7ff fef3 	bl	8000b06 <rgb_i2c_read_reg>
 8000d20:	2000      	movs	r0, #0
 8000d22:	4603      	mov	r3, r0
 8000d24:	490f      	ldr	r1, [pc, #60]	; (8000d64 <line_sensor_init+0x58>)
 8000d26:	185a      	adds	r2, r3, r1
 8000d28:	7852      	ldrb	r2, [r2, #1]
 8000d2a:	2a69      	cmp	r2, #105	; 0x69
 8000d2c:	d002      	beq.n	8000d34 <line_sensor_init+0x28>
 8000d2e:	2201      	movs	r2, #1
 8000d30:	409a      	lsls	r2, r3
 8000d32:	4310      	orrs	r0, r2
 8000d34:	3301      	adds	r3, #1
 8000d36:	2b09      	cmp	r3, #9
 8000d38:	d1f4      	bne.n	8000d24 <line_sensor_init+0x18>
 8000d3a:	4a0b      	ldr	r2, [pc, #44]	; (8000d68 <line_sensor_init+0x5c>)
 8000d3c:	2300      	movs	r3, #0
 8000d3e:	700b      	strb	r3, [r1, #0]
 8000d40:	f102 0512 	add.w	r5, r2, #18
 8000d44:	2300      	movs	r3, #0
 8000d46:	f822 3f02 	strh.w	r3, [r2, #2]!
 8000d4a:	42aa      	cmp	r2, r5
 8000d4c:	8253      	strh	r3, [r2, #18]
 8000d4e:	8493      	strh	r3, [r2, #36]	; 0x24
 8000d50:	d1f8      	bne.n	8000d44 <line_sensor_init+0x38>
 8000d52:	f881 3040 	strb.w	r3, [r1, #64]	; 0x40
 8000d56:	f881 304c 	strb.w	r3, [r1, #76]	; 0x4c
 8000d5a:	644b      	str	r3, [r1, #68]	; 0x44
 8000d5c:	648b      	str	r3, [r1, #72]	; 0x48
 8000d5e:	bd38      	pop	{r3, r4, r5, pc}
 8000d60:	20000a39 	.word	0x20000a39
 8000d64:	20000a38 	.word	0x20000a38
 8000d68:	20000a40 	.word	0x20000a40

08000d6c <line_sensor_filter>:
 8000d6c:	b570      	push	{r4, r5, r6, lr}
 8000d6e:	4b5d      	ldr	r3, [pc, #372]	; (8000ee4 <line_sensor_filter+0x178>)
 8000d70:	f103 0212 	add.w	r2, r3, #18
 8000d74:	f933 0f02 	ldrsh.w	r0, [r3, #2]!
 8000d78:	f933 1c12 	ldrsh.w	r1, [r3, #-18]
 8000d7c:	4293      	cmp	r3, r2
 8000d7e:	ebc1 0100 	rsb	r1, r1, r0
 8000d82:	8259      	strh	r1, [r3, #18]
 8000d84:	d1f6      	bne.n	8000d74 <line_sensor_filter+0x8>
 8000d86:	4958      	ldr	r1, [pc, #352]	; (8000ee8 <line_sensor_filter+0x17c>)
 8000d88:	4a58      	ldr	r2, [pc, #352]	; (8000eec <line_sensor_filter+0x180>)
 8000d8a:	6c8b      	ldr	r3, [r1, #72]	; 0x48
 8000d8c:	f9b2 2058 	ldrsh.w	r2, [r2, #88]	; 0x58
 8000d90:	f9b1 4036 	ldrsh.w	r4, [r1, #54]	; 0x36
 8000d94:	2007      	movs	r0, #7
 8000d96:	fb00 2303 	mla	r3, r0, r3, r2
 8000d9a:	2208      	movs	r2, #8
 8000d9c:	fb93 f3f2 	sdiv	r3, r3, r2
 8000da0:	f9b1 2034 	ldrsh.w	r2, [r1, #52]	; 0x34
 8000da4:	f9b1 002e 	ldrsh.w	r0, [r1, #46]	; 0x2e
 8000da8:	648b      	str	r3, [r1, #72]	; 0x48
 8000daa:	f512 7faf 	cmn.w	r2, #350	; 0x15e
 8000dae:	bfaa      	itet	ge
 8000db0:	4602      	movge	r2, r0
 8000db2:	2303      	movlt	r3, #3
 8000db4:	2300      	movge	r3, #0
 8000db6:	f514 7faf 	cmn.w	r4, #350	; 0x15e
 8000dba:	bfb8      	it	lt
 8000dbc:	4622      	movlt	r2, r4
 8000dbe:	f9b1 4032 	ldrsh.w	r4, [r1, #50]	; 0x32
 8000dc2:	bfb8      	it	lt
 8000dc4:	2304      	movlt	r3, #4
 8000dc6:	f514 7faf 	cmn.w	r4, #350	; 0x15e
 8000dca:	bfb8      	it	lt
 8000dcc:	4622      	movlt	r2, r4
 8000dce:	f9b1 4038 	ldrsh.w	r4, [r1, #56]	; 0x38
 8000dd2:	bfb8      	it	lt
 8000dd4:	2302      	movlt	r3, #2
 8000dd6:	f514 7faf 	cmn.w	r4, #350	; 0x15e
 8000dda:	bfb8      	it	lt
 8000ddc:	4622      	movlt	r2, r4
 8000dde:	f9b1 4030 	ldrsh.w	r4, [r1, #48]	; 0x30
 8000de2:	bfb8      	it	lt
 8000de4:	2305      	movlt	r3, #5
 8000de6:	f514 7faf 	cmn.w	r4, #350	; 0x15e
 8000dea:	bfb8      	it	lt
 8000dec:	4622      	movlt	r2, r4
 8000dee:	f9b1 403a 	ldrsh.w	r4, [r1, #58]	; 0x3a
 8000df2:	bfb8      	it	lt
 8000df4:	2301      	movlt	r3, #1
 8000df6:	f514 7faf 	cmn.w	r4, #350	; 0x15e
 8000dfa:	bfb8      	it	lt
 8000dfc:	4622      	movlt	r2, r4
 8000dfe:	f9b1 403c 	ldrsh.w	r4, [r1, #60]	; 0x3c
 8000e02:	bfb8      	it	lt
 8000e04:	2306      	movlt	r3, #6
 8000e06:	4605      	mov	r5, r0
 8000e08:	f515 7faf 	cmn.w	r5, #350	; 0x15e
 8000e0c:	bfb8      	it	lt
 8000e0e:	2300      	movlt	r3, #0
 8000e10:	f510 7faf 	cmn.w	r0, #350	; 0x15e
 8000e14:	bfa8      	it	ge
 8000e16:	4610      	movge	r0, r2
 8000e18:	f514 7faf 	cmn.w	r4, #350	; 0x15e
 8000e1c:	4a32      	ldr	r2, [pc, #200]	; (8000ee8 <line_sensor_filter+0x17c>)
 8000e1e:	db32      	blt.n	8000e86 <line_sensor_filter+0x11a>
 8000e20:	f510 7faf 	cmn.w	r0, #350	; 0x15e
 8000e24:	dc5a      	bgt.n	8000edc <line_sensor_filter+0x170>
 8000e26:	2b00      	cmp	r3, #0
 8000e28:	d055      	beq.n	8000ed6 <line_sensor_filter+0x16a>
 8000e2a:	eb02 0643 	add.w	r6, r2, r3, lsl #1
 8000e2e:	4632      	mov	r2, r6
 8000e30:	f9b6 6030 	ldrsh.w	r6, [r6, #48]	; 0x30
 8000e34:	f9b2 202c 	ldrsh.w	r2, [r2, #44]	; 0x2c
 8000e38:	1e5d      	subs	r5, r3, #1
 8000e3a:	4296      	cmp	r6, r2
 8000e3c:	f103 0401 	add.w	r4, r3, #1
 8000e40:	bfa8      	it	ge
 8000e42:	462c      	movge	r4, r5
 8000e44:	ea4f 1083 	mov.w	r0, r3, lsl #6
 8000e48:	eb01 0444 	add.w	r4, r1, r4, lsl #1
 8000e4c:	eb01 0343 	add.w	r3, r1, r3, lsl #1
 8000e50:	f9b4 502e 	ldrsh.w	r5, [r4, #46]	; 0x2e
 8000e54:	f9b3 302e 	ldrsh.w	r3, [r3, #46]	; 0x2e
 8000e58:	ea4f 1445 	mov.w	r4, r5, lsl #5
 8000e5c:	441d      	add	r5, r3
 8000e5e:	fb94 f3f5 	sdiv	r3, r4, r5
 8000e62:	f1c3 0420 	rsb	r4, r3, #32
 8000e66:	bfac      	ite	ge
 8000e68:	f1a0 0240 	subge.w	r2, r0, #64	; 0x40
 8000e6c:	f100 0240 	addlt.w	r2, r0, #64	; 0x40
 8000e70:	4344      	muls	r4, r0
 8000e72:	fb03 4402 	mla	r4, r3, r2, r4
 8000e76:	2520      	movs	r5, #32
 8000e78:	fb94 f4f5 	sdiv	r4, r4, r5
 8000e7c:	3ce0      	subs	r4, #224	; 0xe0
 8000e7e:	f5b4 7f80 	cmp.w	r4, #256	; 0x100
 8000e82:	644c      	str	r4, [r1, #68]	; 0x44
 8000e84:	dd24      	ble.n	8000ed0 <line_sensor_filter+0x164>
 8000e86:	f44f 7480 	mov.w	r4, #256	; 0x100
 8000e8a:	f891 3040 	ldrb.w	r3, [r1, #64]	; 0x40
 8000e8e:	2b01      	cmp	r3, #1
 8000e90:	d803      	bhi.n	8000e9a <line_sensor_filter+0x12e>
 8000e92:	4a15      	ldr	r2, [pc, #84]	; (8000ee8 <line_sensor_filter+0x17c>)
 8000e94:	3301      	adds	r3, #1
 8000e96:	f882 3040 	strb.w	r3, [r2, #64]	; 0x40
 8000e9a:	f891 3040 	ldrb.w	r3, [r1, #64]	; 0x40
 8000e9e:	4d12      	ldr	r5, [pc, #72]	; (8000ee8 <line_sensor_filter+0x17c>)
 8000ea0:	2b02      	cmp	r3, #2
 8000ea2:	d109      	bne.n	8000eb8 <line_sensor_filter+0x14c>
 8000ea4:	f7ff f9ee 	bl	8000284 <sched_off>
 8000ea8:	f895 304c 	ldrb.w	r3, [r5, #76]	; 0x4c
 8000eac:	646c      	str	r4, [r5, #68]	; 0x44
 8000eae:	f043 0303 	orr.w	r3, r3, #3
 8000eb2:	f885 304c 	strb.w	r3, [r5, #76]	; 0x4c
 8000eb6:	e007      	b.n	8000ec8 <line_sensor_filter+0x15c>
 8000eb8:	f7ff f9e4 	bl	8000284 <sched_off>
 8000ebc:	f895 304c 	ldrb.w	r3, [r5, #76]	; 0x4c
 8000ec0:	f023 0301 	bic.w	r3, r3, #1
 8000ec4:	f885 304c 	strb.w	r3, [r5, #76]	; 0x4c
 8000ec8:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8000ecc:	f7ff b9dc 	b.w	8000288 <sched_on>
 8000ed0:	f514 7f80 	cmn.w	r4, #256	; 0x100
 8000ed4:	dad9      	bge.n	8000e8a <line_sensor_filter+0x11e>
 8000ed6:	f06f 04ff 	mvn.w	r4, #255	; 0xff
 8000eda:	e7d6      	b.n	8000e8a <line_sensor_filter+0x11e>
 8000edc:	2300      	movs	r3, #0
 8000ede:	f882 3040 	strb.w	r3, [r2, #64]	; 0x40
 8000ee2:	bd70      	pop	{r4, r5, r6, pc}
 8000ee4:	20000a52 	.word	0x20000a52
 8000ee8:	20000a38 	.word	0x20000a38
 8000eec:	200009d2 	.word	0x200009d2

08000ef0 <line_sensor_read>:
 8000ef0:	b538      	push	{r3, r4, r5, lr}
 8000ef2:	f7ff fe63 	bl	8000bbc <rgb_read>
 8000ef6:	4b16      	ldr	r3, [pc, #88]	; (8000f50 <line_sensor_read+0x60>)
 8000ef8:	2200      	movs	r2, #0
 8000efa:	4618      	mov	r0, r3
 8000efc:	5e84      	ldrsh	r4, [r0, r2]
 8000efe:	f240 31ff 	movw	r1, #1023	; 0x3ff
 8000f02:	428c      	cmp	r4, r1
 8000f04:	bfdc      	itt	le
 8000f06:	f44f 6480 	movle.w	r4, #1024	; 0x400
 8000f0a:	5284      	strhle	r4, [r0, r2]
 8000f0c:	f9b3 4012 	ldrsh.w	r4, [r3, #18]
 8000f10:	8edd      	ldrh	r5, [r3, #54]	; 0x36
 8000f12:	428c      	cmp	r4, r1
 8000f14:	bfdc      	itt	le
 8000f16:	f44f 6480 	movle.w	r4, #1024	; 0x400
 8000f1a:	825c      	strhle	r4, [r3, #18]
 8000f1c:	f9b3 4024 	ldrsh.w	r4, [r3, #36]	; 0x24
 8000f20:	428c      	cmp	r4, r1
 8000f22:	bfd8      	it	le
 8000f24:	f44f 6180 	movle.w	r1, #1024	; 0x400
 8000f28:	4c0a      	ldr	r4, [pc, #40]	; (8000f54 <line_sensor_read+0x64>)
 8000f2a:	bfd8      	it	le
 8000f2c:	8499      	strhle	r1, [r3, #36]	; 0x24
 8000f2e:	490a      	ldr	r1, [pc, #40]	; (8000f58 <line_sensor_read+0x68>)
 8000f30:	5b14      	ldrh	r4, [r2, r4]
 8000f32:	4411      	add	r1, r2
 8000f34:	1b2c      	subs	r4, r5, r4
 8000f36:	3202      	adds	r2, #2
 8000f38:	838c      	strh	r4, [r1, #28]
 8000f3a:	2a10      	cmp	r2, #16
 8000f3c:	f44f 6480 	mov.w	r4, #1024	; 0x400
 8000f40:	814c      	strh	r4, [r1, #10]
 8000f42:	f103 0302 	add.w	r3, r3, #2
 8000f46:	d1d9      	bne.n	8000efc <line_sensor_read+0xc>
 8000f48:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8000f4c:	f7ff bf0e 	b.w	8000d6c <line_sensor_filter>
 8000f50:	200009d2 	.word	0x200009d2
 8000f54:	20000000 	.word	0x20000000
 8000f58:	20000a38 	.word	0x20000a38

08000f5c <m_saturate>:
 8000f5c:	ee07 0a90 	vmov	s15, r0
 8000f60:	ee06 1a90 	vmov	s13, r1
 8000f64:	eef4 7a66 	vcmp.f32	s15, s13
 8000f68:	ee07 2a10 	vmov	s14, r2
 8000f6c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000f70:	bf48      	it	mi
 8000f72:	eef0 7a66 	vmovmi.f32	s15, s13
 8000f76:	eef4 7a47 	vcmp.f32	s15, s14
 8000f7a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000f7e:	bfcc      	ite	gt
 8000f80:	ee17 0a10 	vmovgt	r0, s14
 8000f84:	ee17 0a90 	vmovle	r0, s15
 8000f88:	4770      	bx	lr

08000f8a <m_min>:
 8000f8a:	ee07 0a10 	vmov	s14, r0
 8000f8e:	ee07 1a90 	vmov	s15, r1
 8000f92:	eeb4 7ae7 	vcmpe.f32	s14, s15
 8000f96:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000f9a:	bf54      	ite	pl
 8000f9c:	ee17 0a90 	vmovpl	r0, s15
 8000fa0:	ee17 0a10 	vmovmi	r0, s14
 8000fa4:	4770      	bx	lr
	...

08000fa8 <TIM2_IRQHandler>:
 8000fa8:	4b21      	ldr	r3, [pc, #132]	; (8001030 <TIM2_IRQHandler+0x88>)
 8000faa:	4a22      	ldr	r2, [pc, #136]	; (8001034 <TIM2_IRQHandler+0x8c>)
 8000fac:	6819      	ldr	r1, [r3, #0]
 8000fae:	2901      	cmp	r1, #1
 8000fb0:	b510      	push	{r4, lr}
 8000fb2:	d011      	beq.n	8000fd8 <TIM2_IRQHandler+0x30>
 8000fb4:	d306      	bcc.n	8000fc4 <TIM2_IRQHandler+0x1c>
 8000fb6:	2902      	cmp	r1, #2
 8000fb8:	d113      	bne.n	8000fe2 <TIM2_IRQHandler+0x3a>
 8000fba:	f44f 6180 	mov.w	r1, #1024	; 0x400
 8000fbe:	8511      	strh	r1, [r2, #40]	; 0x28
 8000fc0:	2204      	movs	r2, #4
 8000fc2:	e023      	b.n	800100c <TIM2_IRQHandler+0x64>
 8000fc4:	f44f 7180 	mov.w	r1, #256	; 0x100
 8000fc8:	8511      	strh	r1, [r2, #40]	; 0x28
 8000fca:	f44f 6180 	mov.w	r1, #1024	; 0x400
 8000fce:	6191      	str	r1, [r2, #24]
 8000fd0:	2201      	movs	r2, #1
 8000fd2:	601a      	str	r2, [r3, #0]
 8000fd4:	609a      	str	r2, [r3, #8]
 8000fd6:	e023      	b.n	8001020 <TIM2_IRQHandler+0x78>
 8000fd8:	f44f 7180 	mov.w	r1, #256	; 0x100
 8000fdc:	6191      	str	r1, [r2, #24]
 8000fde:	2202      	movs	r2, #2
 8000fe0:	e014      	b.n	800100c <TIM2_IRQHandler+0x64>
 8000fe2:	f011 0f01 	tst.w	r1, #1
 8000fe6:	4814      	ldr	r0, [pc, #80]	; (8001038 <TIM2_IRQHandler+0x90>)
 8000fe8:	f101 0401 	add.w	r4, r1, #1
 8000fec:	d010      	beq.n	8001010 <TIM2_IRQHandler+0x68>
 8000fee:	3904      	subs	r1, #4
 8000ff0:	f021 0101 	bic.w	r1, r1, #1
 8000ff4:	6c00      	ldr	r0, [r0, #64]	; 0x40
 8000ff6:	4419      	add	r1, r3
 8000ff8:	f5b4 7f82 	cmp.w	r4, #260	; 0x104
 8000ffc:	8288      	strh	r0, [r1, #20]
 8000ffe:	f44f 7180 	mov.w	r1, #256	; 0x100
 8001002:	8511      	strh	r1, [r2, #40]	; 0x28
 8001004:	d201      	bcs.n	800100a <TIM2_IRQHandler+0x62>
 8001006:	601c      	str	r4, [r3, #0]
 8001008:	e00a      	b.n	8001020 <TIM2_IRQHandler+0x78>
 800100a:	2200      	movs	r2, #0
 800100c:	601a      	str	r2, [r3, #0]
 800100e:	e007      	b.n	8001020 <TIM2_IRQHandler+0x78>
 8001010:	f44f 7180 	mov.w	r1, #256	; 0x100
 8001014:	6191      	str	r1, [r2, #24]
 8001016:	601c      	str	r4, [r3, #0]
 8001018:	6883      	ldr	r3, [r0, #8]
 800101a:	f043 0304 	orr.w	r3, r3, #4
 800101e:	6083      	str	r3, [r0, #8]
 8001020:	f04f 4080 	mov.w	r0, #1073741824	; 0x40000000
 8001024:	2101      	movs	r1, #1
 8001026:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800102a:	f001 b92e 	b.w	800228a <TIM_ClearITPendingBit>
 800102e:	bf00      	nop
 8001030:	20000a88 	.word	0x20000a88
 8001034:	48000400 	.word	0x48000400
 8001038:	50000500 	.word	0x50000500

0800103c <line_sensor_thread>:
 800103c:	b508      	push	{r3, lr}
 800103e:	2064      	movs	r0, #100	; 0x64
 8001040:	f001 f9ae 	bl	80023a0 <timer_delay_ms>
 8001044:	f7ff fe62 	bl	8000d0c <line_sensor_init>
 8001048:	4601      	mov	r1, r0
 800104a:	b120      	cbz	r0, 8001056 <line_sensor_thread+0x1a>
 800104c:	4b07      	ldr	r3, [pc, #28]	; (800106c <line_sensor_thread+0x30>)
 800104e:	2001      	movs	r0, #1
 8001050:	6018      	str	r0, [r3, #0]
 8001052:	f000 f931 	bl	80012b8 <abort_error_>
 8001056:	2000      	movs	r0, #0
 8001058:	2104      	movs	r1, #4
 800105a:	f001 f9b1 	bl	80023c0 <event_timer_set_period>
 800105e:	2000      	movs	r0, #0
 8001060:	f001 f9c4 	bl	80023ec <event_timer_wait>
 8001064:	f7ff ff44 	bl	8000ef0 <line_sensor_read>
 8001068:	e7f9      	b.n	800105e <line_sensor_thread+0x22>
 800106a:	bf00      	nop
 800106c:	20001170 	.word	0x20001170

08001070 <i2c_sensor_thread>:
 8001070:	b508      	push	{r3, lr}
 8001072:	f7ff fb75 	bl	8000760 <lsm9ds0_init>
 8001076:	4601      	mov	r1, r0
 8001078:	b128      	cbz	r0, 8001086 <i2c_sensor_thread+0x16>
 800107a:	4b08      	ldr	r3, [pc, #32]	; (800109c <i2c_sensor_thread+0x2c>)
 800107c:	2201      	movs	r2, #1
 800107e:	2002      	movs	r0, #2
 8001080:	601a      	str	r2, [r3, #0]
 8001082:	f000 f919 	bl	80012b8 <abort_error_>
 8001086:	2001      	movs	r0, #1
 8001088:	210a      	movs	r1, #10
 800108a:	f001 f999 	bl	80023c0 <event_timer_set_period>
 800108e:	2001      	movs	r0, #1
 8001090:	f001 f9ac 	bl	80023ec <event_timer_wait>
 8001094:	f7ff fae6 	bl	8000664 <lsm9ds0_read>
 8001098:	e7f9      	b.n	800108e <i2c_sensor_thread+0x1e>
 800109a:	bf00      	nop
 800109c:	20001170 	.word	0x20001170

080010a0 <line_follower>:
 80010a0:	b538      	push	{r3, r4, r5, lr}
 80010a2:	f000 f9eb 	bl	800147c <line_follower_init>
 80010a6:	2002      	movs	r0, #2
 80010a8:	2104      	movs	r1, #4
 80010aa:	f001 f989 	bl	80023c0 <event_timer_set_period>
 80010ae:	f001 f969 	bl	8002384 <timer_get_time>
 80010b2:	f500 30c3 	add.w	r0, r0, #99840	; 0x18600
 80010b6:	f100 05a0 	add.w	r5, r0, #160	; 0xa0
 80010ba:	2400      	movs	r4, #0
 80010bc:	2002      	movs	r0, #2
 80010be:	f001 f995 	bl	80023ec <event_timer_wait>
 80010c2:	4b14      	ldr	r3, [pc, #80]	; (8001114 <line_follower+0x74>)
 80010c4:	6c9a      	ldr	r2, [r3, #72]	; 0x48
 80010c6:	f5b2 7f02 	cmp.w	r2, #520	; 0x208
 80010ca:	dd02      	ble.n	80010d2 <line_follower+0x32>
 80010cc:	f000 f9d1 	bl	8001472 <obstacle_main>
 80010d0:	e008      	b.n	80010e4 <line_follower+0x44>
 80010d2:	f893 3040 	ldrb.w	r3, [r3, #64]	; 0x40
 80010d6:	2b02      	cmp	r3, #2
 80010d8:	d102      	bne.n	80010e0 <line_follower+0x40>
 80010da:	f000 f9f1 	bl	80014c0 <line_follower_main>
 80010de:	e001      	b.n	80010e4 <line_follower+0x44>
 80010e0:	f000 f868 	bl	80011b4 <broken_line_main>
 80010e4:	3401      	adds	r4, #1
 80010e6:	2314      	movs	r3, #20
 80010e8:	fbb4 f2f3 	udiv	r2, r4, r3
 80010ec:	fb03 4312 	mls	r3, r3, r2, r4
 80010f0:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 80010f4:	b913      	cbnz	r3, 80010fc <line_follower+0x5c>
 80010f6:	f001 fa3d 	bl	8002574 <led_on>
 80010fa:	e001      	b.n	8001100 <line_follower+0x60>
 80010fc:	f001 fa4c 	bl	8002598 <led_off>
 8001100:	f001 f940 	bl	8002384 <timer_get_time>
 8001104:	4285      	cmp	r5, r0
 8001106:	d2d9      	bcs.n	80010bc <line_follower+0x1c>
 8001108:	2000      	movs	r0, #0
 800110a:	4601      	mov	r1, r0
 800110c:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8001110:	f001 ba5c 	b.w	80025cc <drv8834_run>
 8001114:	20000a38 	.word	0x20000a38

08001118 <main_thread>:
 8001118:	b510      	push	{r4, lr}
 800111a:	481e      	ldr	r0, [pc, #120]	; (8001194 <main_thread+0x7c>)
 800111c:	4c1e      	ldr	r4, [pc, #120]	; (8001198 <main_thread+0x80>)
 800111e:	f7ff f9dd 	bl	80004dc <printf_>
 8001122:	20c8      	movs	r0, #200	; 0xc8
 8001124:	f001 f93c 	bl	80023a0 <timer_delay_ms>
 8001128:	2300      	movs	r3, #0
 800112a:	6023      	str	r3, [r4, #0]
 800112c:	491b      	ldr	r1, [pc, #108]	; (800119c <main_thread+0x84>)
 800112e:	481c      	ldr	r0, [pc, #112]	; (80011a0 <main_thread+0x88>)
 8001130:	f44f 7200 	mov.w	r2, #512	; 0x200
 8001134:	2306      	movs	r3, #6
 8001136:	f7ff f8bd 	bl	80002b4 <create_thread>
 800113a:	491a      	ldr	r1, [pc, #104]	; (80011a4 <main_thread+0x8c>)
 800113c:	481a      	ldr	r0, [pc, #104]	; (80011a8 <main_thread+0x90>)
 800113e:	f44f 7200 	mov.w	r2, #512	; 0x200
 8001142:	2306      	movs	r3, #6
 8001144:	f7ff f8b6 	bl	80002b4 <create_thread>
 8001148:	f000 f832 	bl	80011b0 <broken_line_init>
 800114c:	f000 f990 	bl	8001470 <obstacle_init>
 8001150:	6823      	ldr	r3, [r4, #0]
 8001152:	b13b      	cbz	r3, 8001164 <main_thread+0x4c>
 8001154:	4815      	ldr	r0, [pc, #84]	; (80011ac <main_thread+0x94>)
 8001156:	f7ff f9c1 	bl	80004dc <printf_>
 800115a:	f44f 60fa 	mov.w	r0, #2000	; 0x7d0
 800115e:	f001 f91f 	bl	80023a0 <timer_delay_ms>
 8001162:	e7f7      	b.n	8001154 <main_thread+0x3c>
 8001164:	f001 fa2a 	bl	80025bc <get_key>
 8001168:	b128      	cbz	r0, 8001176 <main_thread+0x5e>
 800116a:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 800116e:	f001 f917 	bl	80023a0 <timer_delay_ms>
 8001172:	f7ff ff95 	bl	80010a0 <line_follower>
 8001176:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 800117a:	f001 f9fb 	bl	8002574 <led_on>
 800117e:	2064      	movs	r0, #100	; 0x64
 8001180:	f001 f90e 	bl	80023a0 <timer_delay_ms>
 8001184:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001188:	f001 fa06 	bl	8002598 <led_off>
 800118c:	20c8      	movs	r0, #200	; 0xc8
 800118e:	f001 f907 	bl	80023a0 <timer_delay_ms>
 8001192:	e7dd      	b.n	8001150 <main_thread+0x38>
 8001194:	08002811 	.word	0x08002811
 8001198:	20001170 	.word	0x20001170
 800119c:	20000284 	.word	0x20000284
 80011a0:	0800103d 	.word	0x0800103d
 80011a4:	20000484 	.word	0x20000484
 80011a8:	08001071 	.word	0x08001071
 80011ac:	0800284c 	.word	0x0800284c

080011b0 <broken_line_init>:
 80011b0:	4770      	bx	lr
	...

080011b4 <broken_line_main>:
 80011b4:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 80011b8:	2500      	movs	r5, #0
 80011ba:	462c      	mov	r4, r5
 80011bc:	462f      	mov	r7, r5
 80011be:	46a8      	mov	r8, r5
 80011c0:	462e      	mov	r6, r5
 80011c2:	f8df 90f0 	ldr.w	r9, [pc, #240]	; 80012b4 <broken_line_main+0x100>
 80011c6:	f899 3040 	ldrb.w	r3, [r9, #64]	; 0x40
 80011ca:	2b02      	cmp	r3, #2
 80011cc:	d06c      	beq.n	80012a8 <broken_line_main+0xf4>
 80011ce:	2005      	movs	r0, #5
 80011d0:	f001 f8e6 	bl	80023a0 <timer_delay_ms>
 80011d4:	2f05      	cmp	r7, #5
 80011d6:	d861      	bhi.n	800129c <broken_line_main+0xe8>
 80011d8:	e8df f007 	tbb	[pc, r7]
 80011dc:	38271503 	.word	0x38271503
 80011e0:	4d4a      	.short	0x4d4a
 80011e2:	2c00      	cmp	r4, #0
 80011e4:	d145      	bne.n	8001272 <broken_line_main+0xbe>
 80011e6:	f8d9 3044 	ldr.w	r3, [r9, #68]	; 0x44
 80011ea:	2b00      	cmp	r3, #0
 80011ec:	f04f 0450 	mov.w	r4, #80	; 0x50
 80011f0:	f04f 0701 	mov.w	r7, #1
 80011f4:	bfd4      	ite	le
 80011f6:	f04f 0832 	movle.w	r8, #50	; 0x32
 80011fa:	f04f 0800 	movgt.w	r8, #0
 80011fe:	bfd4      	ite	le
 8001200:	2600      	movle	r6, #0
 8001202:	2632      	movgt	r6, #50	; 0x32
 8001204:	e04a      	b.n	800129c <broken_line_main+0xe8>
 8001206:	bba4      	cbnz	r4, 8001272 <broken_line_main+0xbe>
 8001208:	f8d9 3044 	ldr.w	r3, [r9, #68]	; 0x44
 800120c:	2b00      	cmp	r3, #0
 800120e:	f04f 0450 	mov.w	r4, #80	; 0x50
 8001212:	f04f 0702 	mov.w	r7, #2
 8001216:	bfd4      	ite	le
 8001218:	f06f 0831 	mvnle.w	r8, #49	; 0x31
 800121c:	f04f 0800 	movgt.w	r8, #0
 8001220:	bfd4      	ite	le
 8001222:	2600      	movle	r6, #0
 8001224:	f06f 0631 	mvngt.w	r6, #49	; 0x31
 8001228:	e038      	b.n	800129c <broken_line_main+0xe8>
 800122a:	bb14      	cbnz	r4, 8001272 <broken_line_main+0xbe>
 800122c:	f8d9 3044 	ldr.w	r3, [r9, #68]	; 0x44
 8001230:	2b00      	cmp	r3, #0
 8001232:	f04f 0450 	mov.w	r4, #80	; 0x50
 8001236:	f04f 0703 	mov.w	r7, #3
 800123a:	bfd4      	ite	le
 800123c:	f04f 0800 	movle.w	r8, #0
 8001240:	f04f 0832 	movgt.w	r8, #50	; 0x32
 8001244:	bfd4      	ite	le
 8001246:	2632      	movle	r6, #50	; 0x32
 8001248:	2600      	movgt	r6, #0
 800124a:	e027      	b.n	800129c <broken_line_main+0xe8>
 800124c:	b98c      	cbnz	r4, 8001272 <broken_line_main+0xbe>
 800124e:	f8d9 3044 	ldr.w	r3, [r9, #68]	; 0x44
 8001252:	2b00      	cmp	r3, #0
 8001254:	f04f 0450 	mov.w	r4, #80	; 0x50
 8001258:	f04f 0704 	mov.w	r7, #4
 800125c:	bfd4      	ite	le
 800125e:	f04f 0800 	movle.w	r8, #0
 8001262:	f06f 0831 	mvngt.w	r8, #49	; 0x31
 8001266:	bfd4      	ite	le
 8001268:	f06f 0631 	mvnle.w	r6, #49	; 0x31
 800126c:	2600      	movgt	r6, #0
 800126e:	e015      	b.n	800129c <broken_line_main+0xe8>
 8001270:	b16c      	cbz	r4, 800128e <broken_line_main+0xda>
 8001272:	3c01      	subs	r4, #1
 8001274:	e012      	b.n	800129c <broken_line_main+0xe8>
 8001276:	b184      	cbz	r4, 800129a <broken_line_main+0xe6>
 8001278:	f241 3387 	movw	r3, #4999	; 0x1387
 800127c:	429d      	cmp	r5, r3
 800127e:	bfd8      	it	le
 8001280:	3532      	addle	r5, #50	; 0x32
 8001282:	2664      	movs	r6, #100	; 0x64
 8001284:	fb95 f6f6 	sdiv	r6, r5, r6
 8001288:	3c01      	subs	r4, #1
 800128a:	46b0      	mov	r8, r6
 800128c:	e006      	b.n	800129c <broken_line_main+0xe8>
 800128e:	4625      	mov	r5, r4
 8001290:	2705      	movs	r7, #5
 8001292:	2428      	movs	r4, #40	; 0x28
 8001294:	46a8      	mov	r8, r5
 8001296:	462e      	mov	r6, r5
 8001298:	e000      	b.n	800129c <broken_line_main+0xe8>
 800129a:	4627      	mov	r7, r4
 800129c:	fa0f f088 	sxth.w	r0, r8
 80012a0:	b231      	sxth	r1, r6
 80012a2:	f001 f993 	bl	80025cc <drv8834_run>
 80012a6:	e78c      	b.n	80011c2 <broken_line_main+0xe>
 80012a8:	2000      	movs	r0, #0
 80012aa:	4601      	mov	r1, r0
 80012ac:	e8bd 43f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 80012b0:	f001 b98c 	b.w	80025cc <drv8834_run>
 80012b4:	20000a38 	.word	0x20000a38

080012b8 <abort_error_>:
 80012b8:	b570      	push	{r4, r5, r6, lr}
 80012ba:	4605      	mov	r5, r0
 80012bc:	460e      	mov	r6, r1
 80012be:	480f      	ldr	r0, [pc, #60]	; (80012fc <abort_error_+0x44>)
 80012c0:	4629      	mov	r1, r5
 80012c2:	4632      	mov	r2, r6
 80012c4:	f7ff f90a 	bl	80004dc <printf_>
 80012c8:	2400      	movs	r4, #0
 80012ca:	1ceb      	adds	r3, r5, #3
 80012cc:	429c      	cmp	r4, r3
 80012ce:	d20f      	bcs.n	80012f0 <abort_error_+0x38>
 80012d0:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 80012d4:	f001 f94e 	bl	8002574 <led_on>
 80012d8:	2032      	movs	r0, #50	; 0x32
 80012da:	f001 f861 	bl	80023a0 <timer_delay_ms>
 80012de:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 80012e2:	f001 f959 	bl	8002598 <led_off>
 80012e6:	2064      	movs	r0, #100	; 0x64
 80012e8:	f001 f85a 	bl	80023a0 <timer_delay_ms>
 80012ec:	3401      	adds	r4, #1
 80012ee:	e7ec      	b.n	80012ca <abort_error_+0x12>
 80012f0:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 80012f4:	f001 f854 	bl	80023a0 <timer_delay_ms>
 80012f8:	e7e1      	b.n	80012be <abort_error_+0x6>
 80012fa:	bf00      	nop
 80012fc:	0800285c 	.word	0x0800285c

08001300 <q_predictor_init>:
 8001300:	4b26      	ldr	r3, [pc, #152]	; (800139c <q_predictor_init+0x9c>)
 8001302:	2200      	movs	r2, #0
 8001304:	4619      	mov	r1, r3
 8001306:	b570      	push	{r4, r5, r6, lr}
 8001308:	4608      	mov	r0, r1
 800130a:	601a      	str	r2, [r3, #0]
 800130c:	605a      	str	r2, [r3, #4]
 800130e:	f103 0208 	add.w	r2, r3, #8
 8001312:	3348      	adds	r3, #72	; 0x48
 8001314:	2400      	movs	r4, #0
 8001316:	f842 4b04 	str.w	r4, [r2], #4
 800131a:	429a      	cmp	r2, r3
 800131c:	d1fa      	bne.n	8001314 <q_predictor_init+0x14>
 800131e:	2200      	movs	r2, #0
 8001320:	eb01 0442 	add.w	r4, r1, r2, lsl #1
 8001324:	2300      	movs	r3, #0
 8001326:	4e1e      	ldr	r6, [pc, #120]	; (80013a0 <q_predictor_init+0xa0>)
 8001328:	4416      	add	r6, r2
 800132a:	eddf 7a1e 	vldr	s15, [pc, #120]	; 80013a4 <q_predictor_init+0xa4>
 800132e:	5ef6      	ldrsh	r6, [r6, r3]
 8001330:	ee07 6a10 	vmov	s14, r6
 8001334:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 8001338:	eb04 0543 	add.w	r5, r4, r3, lsl #1
 800133c:	ee87 7a27 	vdiv.f32	s14, s14, s15
 8001340:	3302      	adds	r3, #2
 8001342:	2b20      	cmp	r3, #32
 8001344:	ed85 7a12 	vstr	s14, [r5, #72]	; 0x48
 8001348:	d1ed      	bne.n	8001326 <q_predictor_init+0x26>
 800134a:	3220      	adds	r2, #32
 800134c:	f5b2 7f00 	cmp.w	r2, #512	; 0x200
 8001350:	d1e6      	bne.n	8001320 <q_predictor_init+0x20>
 8001352:	2300      	movs	r3, #0
 8001354:	4914      	ldr	r1, [pc, #80]	; (80013a8 <q_predictor_init+0xa8>)
 8001356:	5e59      	ldrsh	r1, [r3, r1]
 8001358:	ee07 1a10 	vmov	s14, r1
 800135c:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 8001360:	eb00 0243 	add.w	r2, r0, r3, lsl #1
 8001364:	ee87 7a27 	vdiv.f32	s14, s14, s15
 8001368:	3302      	adds	r3, #2
 800136a:	f502 6289 	add.w	r2, r2, #1096	; 0x448
 800136e:	2b20      	cmp	r3, #32
 8001370:	ed82 7a00 	vstr	s14, [r2]
 8001374:	d1ee      	bne.n	8001354 <q_predictor_init+0x54>
 8001376:	2300      	movs	r3, #0
 8001378:	490c      	ldr	r1, [pc, #48]	; (80013ac <q_predictor_init+0xac>)
 800137a:	5e59      	ldrsh	r1, [r3, r1]
 800137c:	ee07 1a10 	vmov	s14, r1
 8001380:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 8001384:	eb00 0243 	add.w	r2, r0, r3, lsl #1
 8001388:	ee87 7a27 	vdiv.f32	s14, s14, s15
 800138c:	3302      	adds	r3, #2
 800138e:	f502 6291 	add.w	r2, r2, #1160	; 0x488
 8001392:	2b20      	cmp	r3, #32
 8001394:	ed82 7a00 	vstr	s14, [r2]
 8001398:	d1ee      	bne.n	8001378 <q_predictor_init+0x78>
 800139a:	bd70      	pop	{r4, r5, r6, pc}
 800139c:	20000c9c 	.word	0x20000c9c
 80013a0:	20000030 	.word	0x20000030
 80013a4:	447a0000 	.word	0x447a0000
 80013a8:	20000010 	.word	0x20000010
 80013ac:	20000230 	.word	0x20000230

080013b0 <obstacle_go_forward>:
 80013b0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80013b2:	460f      	mov	r7, r1
 80013b4:	ed2d 8b04 	vpush	{d8-d9}
 80013b8:	4606      	mov	r6, r0
 80013ba:	b950      	cbnz	r0, 80013d2 <obstacle_go_forward+0x22>
 80013bc:	2000      	movs	r0, #0
 80013be:	4601      	mov	r1, r0
 80013c0:	f001 f904 	bl	80025cc <drv8834_run>
 80013c4:	ecbd 8b04 	vpop	{d8-d9}
 80013c8:	2064      	movs	r0, #100	; 0x64
 80013ca:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 80013ce:	f000 bfe7 	b.w	80023a0 <timer_delay_ms>
 80013d2:	ed9f 8a21 	vldr	s16, [pc, #132]	; 8001458 <obstacle_go_forward+0xa8>
 80013d6:	2400      	movs	r4, #0
 80013d8:	eef0 7a48 	vmov.f32	s15, s16
 80013dc:	4625      	mov	r5, r4
 80013de:	eeb0 9a48 	vmov.f32	s18, s16
 80013e2:	42bd      	cmp	r5, r7
 80013e4:	d2ea      	bcs.n	80013bc <obstacle_go_forward+0xc>
 80013e6:	4b1d      	ldr	r3, [pc, #116]	; (800145c <obstacle_go_forward+0xac>)
 80013e8:	f9b3 3010 	ldrsh.w	r3, [r3, #16]
 80013ec:	441c      	add	r4, r3
 80013ee:	ee07 4a10 	vmov	s14, r4
 80013f2:	eef8 8ac7 	vcvt.f32.s32	s17, s14
 80013f6:	ed9f 7a1a 	vldr	s14, [pc, #104]	; 8001460 <obstacle_go_forward+0xb0>
 80013fa:	ee79 8a68 	vsub.f32	s17, s18, s17
 80013fe:	350a      	adds	r5, #10
 8001400:	ee78 7ae7 	vsub.f32	s15, s17, s15
 8001404:	ee67 7a87 	vmul.f32	s15, s15, s14
 8001408:	ed9f 7a16 	vldr	s14, [pc, #88]	; 8001464 <obstacle_go_forward+0xb4>
 800140c:	ee48 7a87 	vmla.f32	s15, s17, s14
 8001410:	ee07 6a10 	vmov	s14, r6
 8001414:	eef8 6a47 	vcvt.f32.u32	s13, s14
 8001418:	ed9f 7a13 	vldr	s14, [pc, #76]	; 8001468 <obstacle_go_forward+0xb8>
 800141c:	ee26 7a87 	vmul.f32	s14, s13, s14
 8001420:	eddf 6a12 	vldr	s13, [pc, #72]	; 800146c <obstacle_go_forward+0xbc>
 8001424:	ee08 7a26 	vmla.f32	s14, s16, s13
 8001428:	eeb0 8a47 	vmov.f32	s16, s14
 800142c:	ee37 7a67 	vsub.f32	s14, s14, s15
 8001430:	ee78 7a27 	vadd.f32	s15, s16, s15
 8001434:	eebd 7ac7 	vcvt.s32.f32	s14, s14
 8001438:	eefd 7ae7 	vcvt.s32.f32	s15, s15
 800143c:	ee17 0a10 	vmov	r0, s14
 8001440:	ee17 1a90 	vmov	r1, s15
 8001444:	b200      	sxth	r0, r0
 8001446:	b209      	sxth	r1, r1
 8001448:	f001 f8c0 	bl	80025cc <drv8834_run>
 800144c:	200a      	movs	r0, #10
 800144e:	f000 ffa7 	bl	80023a0 <timer_delay_ms>
 8001452:	eef0 7a68 	vmov.f32	s15, s17
 8001456:	e7c4      	b.n	80013e2 <obstacle_go_forward+0x32>
 8001458:	00000000 	.word	0x00000000
 800145c:	200009b8 	.word	0x200009b8
 8001460:	3a83126f 	.word	0x3a83126f
 8001464:	399d4952 	.word	0x399d4952
 8001468:	3e4ccccc 	.word	0x3e4ccccc
 800146c:	3f4ccccd 	.word	0x3f4ccccd

08001470 <obstacle_init>:
 8001470:	4770      	bx	lr

08001472 <obstacle_main>:
 8001472:	2000      	movs	r0, #0
 8001474:	2164      	movs	r1, #100	; 0x64
 8001476:	f7ff bf9b 	b.w	80013b0 <obstacle_go_forward>
	...

0800147c <line_follower_init>:
 800147c:	b507      	push	{r0, r1, r2, lr}
 800147e:	4b0a      	ldr	r3, [pc, #40]	; (80014a8 <line_follower_init+0x2c>)
 8001480:	4a0a      	ldr	r2, [pc, #40]	; (80014ac <line_follower_init+0x30>)
 8001482:	480b      	ldr	r0, [pc, #44]	; (80014b0 <line_follower_init+0x34>)
 8001484:	6013      	str	r3, [r2, #0]
 8001486:	f04f 537e 	mov.w	r3, #1065353216	; 0x3f800000
 800148a:	6053      	str	r3, [r2, #4]
 800148c:	2300      	movs	r3, #0
 800148e:	6093      	str	r3, [r2, #8]
 8001490:	4a08      	ldr	r2, [pc, #32]	; (80014b4 <line_follower_init+0x38>)
 8001492:	9301      	str	r3, [sp, #4]
 8001494:	9200      	str	r2, [sp, #0]
 8001496:	4908      	ldr	r1, [pc, #32]	; (80014b8 <line_follower_init+0x3c>)
 8001498:	4a08      	ldr	r2, [pc, #32]	; (80014bc <line_follower_init+0x40>)
 800149a:	f000 f86f 	bl	800157c <pid_init>
 800149e:	b003      	add	sp, #12
 80014a0:	f85d eb04 	ldr.w	lr, [sp], #4
 80014a4:	f7ff bf2c 	b.w	8001300 <q_predictor_init>
 80014a8:	3f333333 	.word	0x3f333333
 80014ac:	20001164 	.word	0x20001164
 80014b0:	20001174 	.word	0x20001174
 80014b4:	41287ae1 	.word	0x41287ae1
 80014b8:	42c80000 	.word	0x42c80000
 80014bc:	3ea6e979 	.word	0x3ea6e979

080014c0 <line_follower_main>:
 80014c0:	b510      	push	{r4, lr}
 80014c2:	4b26      	ldr	r3, [pc, #152]	; (800155c <line_follower_main+0x9c>)
 80014c4:	4826      	ldr	r0, [pc, #152]	; (8001560 <line_follower_main+0xa0>)
 80014c6:	4c27      	ldr	r4, [pc, #156]	; (8001564 <line_follower_main+0xa4>)
 80014c8:	ed2d 8b02 	vpush	{d8}
 80014cc:	ed93 8a11 	vldr	s16, [r3, #68]	; 0x44
 80014d0:	eddf 7a25 	vldr	s15, [pc, #148]	; 8001568 <line_follower_main+0xa8>
 80014d4:	eeb8 8ac8 	vcvt.f32.s32	s16, s16
 80014d8:	ee28 8a27 	vmul.f32	s16, s16, s15
 80014dc:	eddf 7a23 	vldr	s15, [pc, #140]	; 800156c <line_follower_main+0xac>
 80014e0:	ee77 7ac8 	vsub.f32	s15, s15, s16
 80014e4:	ee17 1a90 	vmov	r1, s15
 80014e8:	f000 f878 	bl	80015dc <pid_process>
 80014ec:	eddf 7a20 	vldr	s15, [pc, #128]	; 8001570 <line_follower_main+0xb0>
 80014f0:	ed9f 7a20 	vldr	s14, [pc, #128]	; 8001574 <line_follower_main+0xb4>
 80014f4:	ee37 8ac8 	vsub.f32	s16, s15, s16
 80014f8:	edc4 7a01 	vstr	s15, [r4, #4]
 80014fc:	edd4 7a00 	vldr	s15, [r4]
 8001500:	ee48 7a07 	vmla.f32	s15, s16, s14
 8001504:	60a0      	str	r0, [r4, #8]
 8001506:	ee18 1a10 	vmov	r1, s16
 800150a:	ee17 0a90 	vmov	r0, s15
 800150e:	f7ff fd3c 	bl	8000f8a <m_min>
 8001512:	f04f 517c 	mov.w	r1, #1056964608	; 0x3f000000
 8001516:	6862      	ldr	r2, [r4, #4]
 8001518:	6020      	str	r0, [r4, #0]
 800151a:	f7ff fd1f 	bl	8000f5c <m_saturate>
 800151e:	edd4 6a02 	vldr	s13, [r4, #8]
 8001522:	ee07 0a90 	vmov	s15, r0
 8001526:	ed9f 7a14 	vldr	s14, [pc, #80]	; 8001578 <line_follower_main+0xb8>
 800152a:	ee37 6aa6 	vadd.f32	s12, s15, s13
 800152e:	ee77 7ae6 	vsub.f32	s15, s15, s13
 8001532:	ee26 6a07 	vmul.f32	s12, s12, s14
 8001536:	ee27 7a87 	vmul.f32	s14, s15, s14
 800153a:	ecbd 8b02 	vpop	{d8}
 800153e:	eebd 6ac6 	vcvt.s32.f32	s12, s12
 8001542:	eebd 7ac7 	vcvt.s32.f32	s14, s14
 8001546:	6020      	str	r0, [r4, #0]
 8001548:	ee17 1a10 	vmov	r1, s14
 800154c:	ee16 0a10 	vmov	r0, s12
 8001550:	b209      	sxth	r1, r1
 8001552:	b200      	sxth	r0, r0
 8001554:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8001558:	f001 b838 	b.w	80025cc <drv8834_run>
 800155c:	20000a38 	.word	0x20000a38
 8001560:	20001174 	.word	0x20001174
 8001564:	20001164 	.word	0x20001164
 8001568:	3b800000 	.word	0x3b800000
 800156c:	00000000 	.word	0x00000000
 8001570:	3f800000 	.word	0x3f800000
 8001574:	3ca3d70a 	.word	0x3ca3d70a
 8001578:	42c80000 	.word	0x42c80000

0800157c <pid_init>:
 800157c:	ee06 2a10 	vmov	s12, r2
 8001580:	ee05 3a90 	vmov	s11, r3
 8001584:	eddd 7a00 	vldr	s15, [sp]
 8001588:	ee76 6a25 	vadd.f32	s13, s12, s11
 800158c:	ed9d 7a01 	vldr	s14, [sp, #4]
 8001590:	ee76 6aa7 	vadd.f32	s13, s13, s15
 8001594:	ee77 5aa7 	vadd.f32	s11, s15, s15
 8001598:	ee76 6a87 	vadd.f32	s13, s13, s14
 800159c:	eeb1 6a46 	vneg.f32	s12, s12
 80015a0:	edc0 6a04 	vstr	s13, [r0, #16]
 80015a4:	eddf 6a0c 	vldr	s13, [pc, #48]	; 80015d8 <pid_init+0x5c>
 80015a8:	ee36 6a65 	vsub.f32	s12, s12, s11
 80015ac:	ee67 6a26 	vmul.f32	s13, s14, s13
 80015b0:	2200      	movs	r2, #0
 80015b2:	ee36 6a66 	vsub.f32	s12, s12, s13
 80015b6:	ee77 7aa6 	vadd.f32	s15, s15, s13
 80015ba:	eeb1 7a47 	vneg.f32	s14, s14
 80015be:	6002      	str	r2, [r0, #0]
 80015c0:	6042      	str	r2, [r0, #4]
 80015c2:	6082      	str	r2, [r0, #8]
 80015c4:	60c2      	str	r2, [r0, #12]
 80015c6:	ed80 6a05 	vstr	s12, [r0, #20]
 80015ca:	edc0 7a06 	vstr	s15, [r0, #24]
 80015ce:	ed80 7a07 	vstr	s14, [r0, #28]
 80015d2:	6202      	str	r2, [r0, #32]
 80015d4:	6241      	str	r1, [r0, #36]	; 0x24
 80015d6:	4770      	bx	lr
 80015d8:	40400000 	.word	0x40400000

080015dc <pid_process>:
 80015dc:	edd0 7a08 	vldr	s15, [r0, #32]
 80015e0:	ee05 1a90 	vmov	s11, r1
 80015e4:	ed90 5a04 	vldr	s10, [r0, #16]
 80015e8:	ee45 7a85 	vmla.f32	s15, s11, s10
 80015ec:	ed90 6a00 	vldr	s12, [r0]
 80015f0:	edd0 5a05 	vldr	s11, [r0, #20]
 80015f4:	ee46 7a25 	vmla.f32	s15, s12, s11
 80015f8:	edd0 6a01 	vldr	s13, [r0, #4]
 80015fc:	ed80 6a01 	vstr	s12, [r0, #4]
 8001600:	ed90 6a06 	vldr	s12, [r0, #24]
 8001604:	ee46 7a86 	vmla.f32	s15, s13, s12
 8001608:	ed90 7a02 	vldr	s14, [r0, #8]
 800160c:	edc0 6a02 	vstr	s13, [r0, #8]
 8001610:	edd0 6a07 	vldr	s13, [r0, #28]
 8001614:	ee47 7a26 	vmla.f32	s15, s14, s13
 8001618:	ed80 7a03 	vstr	s14, [r0, #12]
 800161c:	ed90 7a09 	vldr	s14, [r0, #36]	; 0x24
 8001620:	eef4 7ac7 	vcmpe.f32	s15, s14
 8001624:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001628:	edc0 7a08 	vstr	s15, [r0, #32]
 800162c:	bfc8      	it	gt
 800162e:	ed80 7a08 	vstrgt	s14, [r0, #32]
 8001632:	edd0 7a08 	vldr	s15, [r0, #32]
 8001636:	eeb1 7a47 	vneg.f32	s14, s14
 800163a:	eef4 7ac7 	vcmpe.f32	s15, s14
 800163e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001642:	bf48      	it	mi
 8001644:	ed80 7a08 	vstrmi	s14, [r0, #32]
 8001648:	6001      	str	r1, [r0, #0]
 800164a:	6a00      	ldr	r0, [r0, #32]
 800164c:	4770      	bx	lr
	...

08001650 <uart_write>:
 8001650:	4b03      	ldr	r3, [pc, #12]	; (8001660 <uart_write+0x10>)
 8001652:	69da      	ldr	r2, [r3, #28]
 8001654:	0612      	lsls	r2, r2, #24
 8001656:	d401      	bmi.n	800165c <uart_write+0xc>
 8001658:	bf00      	nop
 800165a:	e7f9      	b.n	8001650 <uart_write>
 800165c:	8518      	strh	r0, [r3, #40]	; 0x28
 800165e:	4770      	bx	lr
 8001660:	40013800 	.word	0x40013800

08001664 <uart_init>:
 8001664:	b530      	push	{r4, r5, lr}
 8001666:	4b2c      	ldr	r3, [pc, #176]	; (8001718 <uart_init+0xb4>)
 8001668:	4d2c      	ldr	r5, [pc, #176]	; (800171c <uart_init+0xb8>)
 800166a:	2400      	movs	r4, #0
 800166c:	601c      	str	r4, [r3, #0]
 800166e:	4b2c      	ldr	r3, [pc, #176]	; (8001720 <uart_init+0xbc>)
 8001670:	b08b      	sub	sp, #44	; 0x2c
 8001672:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 8001676:	2101      	movs	r1, #1
 8001678:	601c      	str	r4, [r3, #0]
 800167a:	f000 fcef 	bl	800205c <RCC_AHBPeriphClockCmd>
 800167e:	f44f 4080 	mov.w	r0, #16384	; 0x4000
 8001682:	2101      	movs	r1, #1
 8001684:	f000 fcf8 	bl	8002078 <RCC_APB2PeriphClockCmd>
 8001688:	f44f 63c0 	mov.w	r3, #1536	; 0x600
 800168c:	9302      	str	r3, [sp, #8]
 800168e:	2302      	movs	r3, #2
 8001690:	f88d 300c 	strb.w	r3, [sp, #12]
 8001694:	a902      	add	r1, sp, #8
 8001696:	2303      	movs	r3, #3
 8001698:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 800169c:	f88d 300d 	strb.w	r3, [sp, #13]
 80016a0:	f88d 400e 	strb.w	r4, [sp, #14]
 80016a4:	f88d 400f 	strb.w	r4, [sp, #15]
 80016a8:	f000 feb2 	bl	8002410 <GPIO_Init>
 80016ac:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80016b0:	2109      	movs	r1, #9
 80016b2:	2207      	movs	r2, #7
 80016b4:	f000 fefa 	bl	80024ac <GPIO_PinAFConfig>
 80016b8:	2207      	movs	r2, #7
 80016ba:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80016be:	210a      	movs	r1, #10
 80016c0:	f000 fef4 	bl	80024ac <GPIO_PinAFConfig>
 80016c4:	f44f 33e1 	mov.w	r3, #115200	; 0x1c200
 80016c8:	9304      	str	r3, [sp, #16]
 80016ca:	4628      	mov	r0, r5
 80016cc:	230c      	movs	r3, #12
 80016ce:	a904      	add	r1, sp, #16
 80016d0:	9308      	str	r3, [sp, #32]
 80016d2:	9405      	str	r4, [sp, #20]
 80016d4:	9406      	str	r4, [sp, #24]
 80016d6:	9407      	str	r4, [sp, #28]
 80016d8:	9409      	str	r4, [sp, #36]	; 0x24
 80016da:	f000 f849 	bl	8001770 <USART_Init>
 80016de:	4628      	mov	r0, r5
 80016e0:	2101      	movs	r1, #1
 80016e2:	f000 f8a7 	bl	8001834 <USART_Cmd>
 80016e6:	2201      	movs	r2, #1
 80016e8:	4628      	mov	r0, r5
 80016ea:	490e      	ldr	r1, [pc, #56]	; (8001724 <uart_init+0xc0>)
 80016ec:	f000 f8b2 	bl	8001854 <USART_ITConfig>
 80016f0:	2325      	movs	r3, #37	; 0x25
 80016f2:	f88d 4005 	strb.w	r4, [sp, #5]
 80016f6:	f88d 4006 	strb.w	r4, [sp, #6]
 80016fa:	a801      	add	r0, sp, #4
 80016fc:	2401      	movs	r4, #1
 80016fe:	f88d 3004 	strb.w	r3, [sp, #4]
 8001702:	f88d 4007 	strb.w	r4, [sp, #7]
 8001706:	f000 f8f7 	bl	80018f8 <NVIC_Init>
 800170a:	4628      	mov	r0, r5
 800170c:	4621      	mov	r1, r4
 800170e:	f000 f891 	bl	8001834 <USART_Cmd>
 8001712:	b00b      	add	sp, #44	; 0x2c
 8001714:	bd30      	pop	{r4, r5, pc}
 8001716:	bf00      	nop
 8001718:	200011ac 	.word	0x200011ac
 800171c:	40013800 	.word	0x40013800
 8001720:	200011b0 	.word	0x200011b0
 8001724:	00050105 	.word	0x00050105

08001728 <USART1_IRQHandler>:
 8001728:	b508      	push	{r3, lr}
 800172a:	480d      	ldr	r0, [pc, #52]	; (8001760 <USART1_IRQHandler+0x38>)
 800172c:	490d      	ldr	r1, [pc, #52]	; (8001764 <USART1_IRQHandler+0x3c>)
 800172e:	f000 f8aa 	bl	8001886 <USART_GetITStatus>
 8001732:	b178      	cbz	r0, 8001754 <USART1_IRQHandler+0x2c>
 8001734:	480a      	ldr	r0, [pc, #40]	; (8001760 <USART1_IRQHandler+0x38>)
 8001736:	f000 f888 	bl	800184a <USART_ReceiveData>
 800173a:	4b0b      	ldr	r3, [pc, #44]	; (8001768 <USART1_IRQHandler+0x40>)
 800173c:	490b      	ldr	r1, [pc, #44]	; (800176c <USART1_IRQHandler+0x44>)
 800173e:	681a      	ldr	r2, [r3, #0]
 8001740:	b2c0      	uxtb	r0, r0
 8001742:	5488      	strb	r0, [r1, r2]
 8001744:	681a      	ldr	r2, [r3, #0]
 8001746:	3201      	adds	r2, #1
 8001748:	601a      	str	r2, [r3, #0]
 800174a:	681a      	ldr	r2, [r3, #0]
 800174c:	2a0f      	cmp	r2, #15
 800174e:	bf84      	itt	hi
 8001750:	2200      	movhi	r2, #0
 8001752:	601a      	strhi	r2, [r3, #0]
 8001754:	4802      	ldr	r0, [pc, #8]	; (8001760 <USART1_IRQHandler+0x38>)
 8001756:	4903      	ldr	r1, [pc, #12]	; (8001764 <USART1_IRQHandler+0x3c>)
 8001758:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800175c:	f000 b8b2 	b.w	80018c4 <USART_ClearITPendingBit>
 8001760:	40013800 	.word	0x40013800
 8001764:	00050105 	.word	0x00050105
 8001768:	200011ac 	.word	0x200011ac
 800176c:	2000119c 	.word	0x2000119c

08001770 <USART_Init>:
 8001770:	b530      	push	{r4, r5, lr}
 8001772:	4604      	mov	r4, r0
 8001774:	b099      	sub	sp, #100	; 0x64
 8001776:	460d      	mov	r5, r1
 8001778:	bf00      	nop
 800177a:	bf00      	nop
 800177c:	bf00      	nop
 800177e:	bf00      	nop
 8001780:	bf00      	nop
 8001782:	bf00      	nop
 8001784:	bf00      	nop
 8001786:	6803      	ldr	r3, [r0, #0]
 8001788:	f023 0301 	bic.w	r3, r3, #1
 800178c:	6003      	str	r3, [r0, #0]
 800178e:	6842      	ldr	r2, [r0, #4]
 8001790:	688b      	ldr	r3, [r1, #8]
 8001792:	f422 5240 	bic.w	r2, r2, #12288	; 0x3000
 8001796:	4313      	orrs	r3, r2
 8001798:	6043      	str	r3, [r0, #4]
 800179a:	686a      	ldr	r2, [r5, #4]
 800179c:	68eb      	ldr	r3, [r5, #12]
 800179e:	6801      	ldr	r1, [r0, #0]
 80017a0:	431a      	orrs	r2, r3
 80017a2:	692b      	ldr	r3, [r5, #16]
 80017a4:	f421 51b0 	bic.w	r1, r1, #5632	; 0x1600
 80017a8:	f021 010c 	bic.w	r1, r1, #12
 80017ac:	4313      	orrs	r3, r2
 80017ae:	430b      	orrs	r3, r1
 80017b0:	6003      	str	r3, [r0, #0]
 80017b2:	6882      	ldr	r2, [r0, #8]
 80017b4:	696b      	ldr	r3, [r5, #20]
 80017b6:	f422 7240 	bic.w	r2, r2, #768	; 0x300
 80017ba:	4313      	orrs	r3, r2
 80017bc:	6083      	str	r3, [r0, #8]
 80017be:	a801      	add	r0, sp, #4
 80017c0:	f000 fac0 	bl	8001d44 <RCC_GetClocksFreq>
 80017c4:	4b17      	ldr	r3, [pc, #92]	; (8001824 <USART_Init+0xb4>)
 80017c6:	429c      	cmp	r4, r3
 80017c8:	d101      	bne.n	80017ce <USART_Init+0x5e>
 80017ca:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 80017cc:	e00e      	b.n	80017ec <USART_Init+0x7c>
 80017ce:	4b16      	ldr	r3, [pc, #88]	; (8001828 <USART_Init+0xb8>)
 80017d0:	429c      	cmp	r4, r3
 80017d2:	d101      	bne.n	80017d8 <USART_Init+0x68>
 80017d4:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80017d6:	e009      	b.n	80017ec <USART_Init+0x7c>
 80017d8:	4b14      	ldr	r3, [pc, #80]	; (800182c <USART_Init+0xbc>)
 80017da:	429c      	cmp	r4, r3
 80017dc:	d101      	bne.n	80017e2 <USART_Init+0x72>
 80017de:	9a11      	ldr	r2, [sp, #68]	; 0x44
 80017e0:	e004      	b.n	80017ec <USART_Init+0x7c>
 80017e2:	4b13      	ldr	r3, [pc, #76]	; (8001830 <USART_Init+0xc0>)
 80017e4:	429c      	cmp	r4, r3
 80017e6:	bf0c      	ite	eq
 80017e8:	9a12      	ldreq	r2, [sp, #72]	; 0x48
 80017ea:	9a13      	ldrne	r2, [sp, #76]	; 0x4c
 80017ec:	6823      	ldr	r3, [r4, #0]
 80017ee:	6829      	ldr	r1, [r5, #0]
 80017f0:	f413 4f00 	tst.w	r3, #32768	; 0x8000
 80017f4:	bf18      	it	ne
 80017f6:	0052      	lslne	r2, r2, #1
 80017f8:	fbb2 f3f1 	udiv	r3, r2, r1
 80017fc:	fb01 2213 	mls	r2, r1, r3, r2
 8001800:	ebb2 0f51 	cmp.w	r2, r1, lsr #1
 8001804:	6822      	ldr	r2, [r4, #0]
 8001806:	bf28      	it	cs
 8001808:	3301      	addcs	r3, #1
 800180a:	0412      	lsls	r2, r2, #16
 800180c:	d506      	bpl.n	800181c <USART_Init+0xac>
 800180e:	f64f 72f0 	movw	r2, #65520	; 0xfff0
 8001812:	f3c3 0142 	ubfx	r1, r3, #1, #3
 8001816:	401a      	ands	r2, r3
 8001818:	ea41 0302 	orr.w	r3, r1, r2
 800181c:	b29b      	uxth	r3, r3
 800181e:	81a3      	strh	r3, [r4, #12]
 8001820:	b019      	add	sp, #100	; 0x64
 8001822:	bd30      	pop	{r4, r5, pc}
 8001824:	40013800 	.word	0x40013800
 8001828:	40004400 	.word	0x40004400
 800182c:	40004800 	.word	0x40004800
 8001830:	40004c00 	.word	0x40004c00

08001834 <USART_Cmd>:
 8001834:	bf00      	nop
 8001836:	bf00      	nop
 8001838:	6803      	ldr	r3, [r0, #0]
 800183a:	b111      	cbz	r1, 8001842 <USART_Cmd+0xe>
 800183c:	f043 0301 	orr.w	r3, r3, #1
 8001840:	e001      	b.n	8001846 <USART_Cmd+0x12>
 8001842:	f023 0301 	bic.w	r3, r3, #1
 8001846:	6003      	str	r3, [r0, #0]
 8001848:	4770      	bx	lr

0800184a <USART_ReceiveData>:
 800184a:	bf00      	nop
 800184c:	8c80      	ldrh	r0, [r0, #36]	; 0x24
 800184e:	f3c0 0008 	ubfx	r0, r0, #0, #9
 8001852:	4770      	bx	lr

08001854 <USART_ITConfig>:
 8001854:	b510      	push	{r4, lr}
 8001856:	bf00      	nop
 8001858:	bf00      	nop
 800185a:	bf00      	nop
 800185c:	f3c1 2307 	ubfx	r3, r1, #8, #8
 8001860:	2401      	movs	r4, #1
 8001862:	b2c9      	uxtb	r1, r1
 8001864:	2b02      	cmp	r3, #2
 8001866:	fa04 f101 	lsl.w	r1, r4, r1
 800186a:	d101      	bne.n	8001870 <USART_ITConfig+0x1c>
 800186c:	3004      	adds	r0, #4
 800186e:	e002      	b.n	8001876 <USART_ITConfig+0x22>
 8001870:	2b03      	cmp	r3, #3
 8001872:	bf08      	it	eq
 8001874:	3008      	addeq	r0, #8
 8001876:	6803      	ldr	r3, [r0, #0]
 8001878:	b10a      	cbz	r2, 800187e <USART_ITConfig+0x2a>
 800187a:	4319      	orrs	r1, r3
 800187c:	e001      	b.n	8001882 <USART_ITConfig+0x2e>
 800187e:	ea23 0101 	bic.w	r1, r3, r1
 8001882:	6001      	str	r1, [r0, #0]
 8001884:	bd10      	pop	{r4, pc}

08001886 <USART_GetITStatus>:
 8001886:	b510      	push	{r4, lr}
 8001888:	bf00      	nop
 800188a:	bf00      	nop
 800188c:	2401      	movs	r4, #1
 800188e:	f3c1 2207 	ubfx	r2, r1, #8, #8
 8001892:	b2cb      	uxtb	r3, r1
 8001894:	42a2      	cmp	r2, r4
 8001896:	fa04 f303 	lsl.w	r3, r4, r3
 800189a:	d101      	bne.n	80018a0 <USART_GetITStatus+0x1a>
 800189c:	6802      	ldr	r2, [r0, #0]
 800189e:	e003      	b.n	80018a8 <USART_GetITStatus+0x22>
 80018a0:	2a02      	cmp	r2, #2
 80018a2:	bf0c      	ite	eq
 80018a4:	6842      	ldreq	r2, [r0, #4]
 80018a6:	6882      	ldrne	r2, [r0, #8]
 80018a8:	4013      	ands	r3, r2
 80018aa:	69c2      	ldr	r2, [r0, #28]
 80018ac:	b143      	cbz	r3, 80018c0 <USART_GetITStatus+0x3a>
 80018ae:	2301      	movs	r3, #1
 80018b0:	0c09      	lsrs	r1, r1, #16
 80018b2:	fa03 f101 	lsl.w	r1, r3, r1
 80018b6:	4211      	tst	r1, r2
 80018b8:	bf0c      	ite	eq
 80018ba:	2000      	moveq	r0, #0
 80018bc:	2001      	movne	r0, #1
 80018be:	bd10      	pop	{r4, pc}
 80018c0:	4618      	mov	r0, r3
 80018c2:	bd10      	pop	{r4, pc}

080018c4 <USART_ClearITPendingBit>:
 80018c4:	bf00      	nop
 80018c6:	bf00      	nop
 80018c8:	2301      	movs	r3, #1
 80018ca:	0c09      	lsrs	r1, r1, #16
 80018cc:	fa03 f101 	lsl.w	r1, r3, r1
 80018d0:	6201      	str	r1, [r0, #32]
 80018d2:	4770      	bx	lr

080018d4 <lib_low_level_init>:
 80018d4:	b508      	push	{r3, lr}
 80018d6:	f000 f9b1 	bl	8001c3c <sytem_clock_init>
 80018da:	f000 fdfd 	bl	80024d8 <gpio_init>
 80018de:	f7ff fec1 	bl	8001664 <uart_init>
 80018e2:	f000 fcd7 	bl	8002294 <timer_init>
 80018e6:	f000 ff25 	bl	8002734 <pwm_init>
 80018ea:	f000 fea3 	bl	8002634 <drv8834_init>
 80018ee:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80018f2:	f000 b893 	b.w	8001a1c <i2c_0_init>
	...

080018f8 <NVIC_Init>:
 80018f8:	b510      	push	{r4, lr}
 80018fa:	bf00      	nop
 80018fc:	bf00      	nop
 80018fe:	bf00      	nop
 8001900:	78c2      	ldrb	r2, [r0, #3]
 8001902:	7803      	ldrb	r3, [r0, #0]
 8001904:	b30a      	cbz	r2, 800194a <NVIC_Init+0x52>
 8001906:	4a16      	ldr	r2, [pc, #88]	; (8001960 <NVIC_Init+0x68>)
 8001908:	7844      	ldrb	r4, [r0, #1]
 800190a:	68d2      	ldr	r2, [r2, #12]
 800190c:	43d2      	mvns	r2, r2
 800190e:	f3c2 2202 	ubfx	r2, r2, #8, #3
 8001912:	f1c2 0104 	rsb	r1, r2, #4
 8001916:	b2c9      	uxtb	r1, r1
 8001918:	fa04 f101 	lsl.w	r1, r4, r1
 800191c:	240f      	movs	r4, #15
 800191e:	fa44 f202 	asr.w	r2, r4, r2
 8001922:	7884      	ldrb	r4, [r0, #2]
 8001924:	b2c9      	uxtb	r1, r1
 8001926:	4022      	ands	r2, r4
 8001928:	430a      	orrs	r2, r1
 800192a:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
 800192e:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
 8001932:	0112      	lsls	r2, r2, #4
 8001934:	b2d2      	uxtb	r2, r2
 8001936:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
 800193a:	7803      	ldrb	r3, [r0, #0]
 800193c:	2201      	movs	r2, #1
 800193e:	0959      	lsrs	r1, r3, #5
 8001940:	f003 031f 	and.w	r3, r3, #31
 8001944:	fa02 f303 	lsl.w	r3, r2, r3
 8001948:	e006      	b.n	8001958 <NVIC_Init+0x60>
 800194a:	0959      	lsrs	r1, r3, #5
 800194c:	2201      	movs	r2, #1
 800194e:	f003 031f 	and.w	r3, r3, #31
 8001952:	fa02 f303 	lsl.w	r3, r2, r3
 8001956:	3120      	adds	r1, #32
 8001958:	4a02      	ldr	r2, [pc, #8]	; (8001964 <NVIC_Init+0x6c>)
 800195a:	f842 3021 	str.w	r3, [r2, r1, lsl #2]
 800195e:	bd10      	pop	{r4, pc}
 8001960:	e000ed00 	.word	0xe000ed00
 8001964:	e000e100 	.word	0xe000e100

08001968 <i2c_delay>:
 8001968:	230b      	movs	r3, #11
 800196a:	3b01      	subs	r3, #1
 800196c:	d001      	beq.n	8001972 <i2c_delay+0xa>
 800196e:	bf00      	nop
 8001970:	e7fb      	b.n	800196a <i2c_delay+0x2>
 8001972:	4770      	bx	lr

08001974 <SetLowSDA>:
 8001974:	b537      	push	{r0, r1, r2, r4, r5, lr}
 8001976:	4d0d      	ldr	r5, [pc, #52]	; (80019ac <SetLowSDA+0x38>)
 8001978:	2301      	movs	r3, #1
 800197a:	2203      	movs	r2, #3
 800197c:	2480      	movs	r4, #128	; 0x80
 800197e:	f88d 3004 	strb.w	r3, [sp, #4]
 8001982:	f88d 3006 	strb.w	r3, [sp, #6]
 8001986:	4628      	mov	r0, r5
 8001988:	2300      	movs	r3, #0
 800198a:	4669      	mov	r1, sp
 800198c:	f88d 2005 	strb.w	r2, [sp, #5]
 8001990:	f88d 3007 	strb.w	r3, [sp, #7]
 8001994:	9400      	str	r4, [sp, #0]
 8001996:	f000 fd3b 	bl	8002410 <GPIO_Init>
 800199a:	4628      	mov	r0, r5
 800199c:	4621      	mov	r1, r4
 800199e:	f000 fd81 	bl	80024a4 <GPIO_ResetBits>
 80019a2:	f7ff ffe1 	bl	8001968 <i2c_delay>
 80019a6:	b003      	add	sp, #12
 80019a8:	bd30      	pop	{r4, r5, pc}
 80019aa:	bf00      	nop
 80019ac:	48000400 	.word	0x48000400

080019b0 <SetHighSDA>:
 80019b0:	b537      	push	{r0, r1, r2, r4, r5, lr}
 80019b2:	4d0d      	ldr	r5, [pc, #52]	; (80019e8 <SetHighSDA+0x38>)
 80019b4:	2203      	movs	r2, #3
 80019b6:	2300      	movs	r3, #0
 80019b8:	2480      	movs	r4, #128	; 0x80
 80019ba:	f88d 2005 	strb.w	r2, [sp, #5]
 80019be:	4628      	mov	r0, r5
 80019c0:	2201      	movs	r2, #1
 80019c2:	4669      	mov	r1, sp
 80019c4:	f88d 3004 	strb.w	r3, [sp, #4]
 80019c8:	f88d 2006 	strb.w	r2, [sp, #6]
 80019cc:	f88d 3007 	strb.w	r3, [sp, #7]
 80019d0:	9400      	str	r4, [sp, #0]
 80019d2:	f000 fd1d 	bl	8002410 <GPIO_Init>
 80019d6:	4628      	mov	r0, r5
 80019d8:	4621      	mov	r1, r4
 80019da:	f000 fd5f 	bl	800249c <GPIO_SetBits>
 80019de:	f7ff ffc3 	bl	8001968 <i2c_delay>
 80019e2:	b003      	add	sp, #12
 80019e4:	bd30      	pop	{r4, r5, pc}
 80019e6:	bf00      	nop
 80019e8:	48000400 	.word	0x48000400

080019ec <SetLowSCL>:
 80019ec:	b508      	push	{r3, lr}
 80019ee:	4804      	ldr	r0, [pc, #16]	; (8001a00 <SetLowSCL+0x14>)
 80019f0:	2140      	movs	r1, #64	; 0x40
 80019f2:	f000 fd57 	bl	80024a4 <GPIO_ResetBits>
 80019f6:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80019fa:	f7ff bfb5 	b.w	8001968 <i2c_delay>
 80019fe:	bf00      	nop
 8001a00:	48000400 	.word	0x48000400

08001a04 <SetHighSCL>:
 8001a04:	b508      	push	{r3, lr}
 8001a06:	4804      	ldr	r0, [pc, #16]	; (8001a18 <SetHighSCL+0x14>)
 8001a08:	2140      	movs	r1, #64	; 0x40
 8001a0a:	f000 fd47 	bl	800249c <GPIO_SetBits>
 8001a0e:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001a12:	f7ff bfa9 	b.w	8001968 <i2c_delay>
 8001a16:	bf00      	nop
 8001a18:	48000400 	.word	0x48000400

08001a1c <i2c_0_init>:
 8001a1c:	b507      	push	{r0, r1, r2, lr}
 8001a1e:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 8001a22:	2101      	movs	r1, #1
 8001a24:	f000 fb1a 	bl	800205c <RCC_AHBPeriphClockCmd>
 8001a28:	23c0      	movs	r3, #192	; 0xc0
 8001a2a:	9300      	str	r3, [sp, #0]
 8001a2c:	2301      	movs	r3, #1
 8001a2e:	2203      	movs	r2, #3
 8001a30:	480a      	ldr	r0, [pc, #40]	; (8001a5c <i2c_0_init+0x40>)
 8001a32:	f88d 3004 	strb.w	r3, [sp, #4]
 8001a36:	4669      	mov	r1, sp
 8001a38:	f88d 3006 	strb.w	r3, [sp, #6]
 8001a3c:	2300      	movs	r3, #0
 8001a3e:	f88d 2005 	strb.w	r2, [sp, #5]
 8001a42:	f88d 3007 	strb.w	r3, [sp, #7]
 8001a46:	f000 fce3 	bl	8002410 <GPIO_Init>
 8001a4a:	f7ff ffdb 	bl	8001a04 <SetHighSCL>
 8001a4e:	f7ff ff91 	bl	8001974 <SetLowSDA>
 8001a52:	f7ff ffad 	bl	80019b0 <SetHighSDA>
 8001a56:	b003      	add	sp, #12
 8001a58:	f85d fb04 	ldr.w	pc, [sp], #4
 8001a5c:	48000400 	.word	0x48000400

08001a60 <i2cStart>:
 8001a60:	b508      	push	{r3, lr}
 8001a62:	f7ff ffcf 	bl	8001a04 <SetHighSCL>
 8001a66:	f7ff ffa3 	bl	80019b0 <SetHighSDA>
 8001a6a:	f7ff ffcb 	bl	8001a04 <SetHighSCL>
 8001a6e:	f7ff ff81 	bl	8001974 <SetLowSDA>
 8001a72:	f7ff ffbb 	bl	80019ec <SetLowSCL>
 8001a76:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001a7a:	f7ff bf99 	b.w	80019b0 <SetHighSDA>

08001a7e <i2cStop>:
 8001a7e:	b508      	push	{r3, lr}
 8001a80:	f7ff ffb4 	bl	80019ec <SetLowSCL>
 8001a84:	f7ff ff76 	bl	8001974 <SetLowSDA>
 8001a88:	f7ff ffbc 	bl	8001a04 <SetHighSCL>
 8001a8c:	f7ff ff72 	bl	8001974 <SetLowSDA>
 8001a90:	f7ff ffb8 	bl	8001a04 <SetHighSCL>
 8001a94:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001a98:	f7ff bf8a 	b.w	80019b0 <SetHighSDA>

08001a9c <i2cWrite>:
 8001a9c:	b538      	push	{r3, r4, r5, lr}
 8001a9e:	4604      	mov	r4, r0
 8001aa0:	2508      	movs	r5, #8
 8001aa2:	f7ff ffa3 	bl	80019ec <SetLowSCL>
 8001aa6:	0623      	lsls	r3, r4, #24
 8001aa8:	d502      	bpl.n	8001ab0 <i2cWrite+0x14>
 8001aaa:	f7ff ff81 	bl	80019b0 <SetHighSDA>
 8001aae:	e001      	b.n	8001ab4 <i2cWrite+0x18>
 8001ab0:	f7ff ff60 	bl	8001974 <SetLowSDA>
 8001ab4:	3d01      	subs	r5, #1
 8001ab6:	f7ff ffa5 	bl	8001a04 <SetHighSCL>
 8001aba:	0064      	lsls	r4, r4, #1
 8001abc:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 8001ac0:	b2e4      	uxtb	r4, r4
 8001ac2:	d1ee      	bne.n	8001aa2 <i2cWrite+0x6>
 8001ac4:	f7ff ff92 	bl	80019ec <SetLowSCL>
 8001ac8:	f7ff ff72 	bl	80019b0 <SetHighSDA>
 8001acc:	f7ff ff9a 	bl	8001a04 <SetHighSCL>
 8001ad0:	4b05      	ldr	r3, [pc, #20]	; (8001ae8 <i2cWrite+0x4c>)
 8001ad2:	8a1c      	ldrh	r4, [r3, #16]
 8001ad4:	b2a4      	uxth	r4, r4
 8001ad6:	f7ff ff89 	bl	80019ec <SetLowSCL>
 8001ada:	f7ff ff45 	bl	8001968 <i2c_delay>
 8001ade:	f084 0080 	eor.w	r0, r4, #128	; 0x80
 8001ae2:	f3c0 10c0 	ubfx	r0, r0, #7, #1
 8001ae6:	bd38      	pop	{r3, r4, r5, pc}
 8001ae8:	48000400 	.word	0x48000400

08001aec <i2cRead>:
 8001aec:	b570      	push	{r4, r5, r6, lr}
 8001aee:	4606      	mov	r6, r0
 8001af0:	f7ff ff7c 	bl	80019ec <SetLowSCL>
 8001af4:	f7ff ff5c 	bl	80019b0 <SetHighSDA>
 8001af8:	2508      	movs	r5, #8
 8001afa:	2400      	movs	r4, #0
 8001afc:	f7ff ff82 	bl	8001a04 <SetHighSCL>
 8001b00:	4b0d      	ldr	r3, [pc, #52]	; (8001b38 <i2cRead+0x4c>)
 8001b02:	8a1b      	ldrh	r3, [r3, #16]
 8001b04:	0064      	lsls	r4, r4, #1
 8001b06:	061a      	lsls	r2, r3, #24
 8001b08:	b2e4      	uxtb	r4, r4
 8001b0a:	bf48      	it	mi
 8001b0c:	3401      	addmi	r4, #1
 8001b0e:	f105 35ff 	add.w	r5, r5, #4294967295
 8001b12:	bf48      	it	mi
 8001b14:	b2e4      	uxtbmi	r4, r4
 8001b16:	f7ff ff69 	bl	80019ec <SetLowSCL>
 8001b1a:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 8001b1e:	d1ed      	bne.n	8001afc <i2cRead+0x10>
 8001b20:	b10e      	cbz	r6, 8001b26 <i2cRead+0x3a>
 8001b22:	f7ff ff27 	bl	8001974 <SetLowSDA>
 8001b26:	f7ff ff6d 	bl	8001a04 <SetHighSCL>
 8001b2a:	f7ff ff5f 	bl	80019ec <SetLowSCL>
 8001b2e:	f7ff ff1b 	bl	8001968 <i2c_delay>
 8001b32:	4620      	mov	r0, r4
 8001b34:	bd70      	pop	{r4, r5, r6, pc}
 8001b36:	bf00      	nop
 8001b38:	48000400 	.word	0x48000400

08001b3c <i2c_write_reg>:
 8001b3c:	b570      	push	{r4, r5, r6, lr}
 8001b3e:	4605      	mov	r5, r0
 8001b40:	460c      	mov	r4, r1
 8001b42:	4616      	mov	r6, r2
 8001b44:	f7ff ff8c 	bl	8001a60 <i2cStart>
 8001b48:	4628      	mov	r0, r5
 8001b4a:	f7ff ffa7 	bl	8001a9c <i2cWrite>
 8001b4e:	4620      	mov	r0, r4
 8001b50:	f7ff ffa4 	bl	8001a9c <i2cWrite>
 8001b54:	4630      	mov	r0, r6
 8001b56:	f7ff ffa1 	bl	8001a9c <i2cWrite>
 8001b5a:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8001b5e:	f7ff bf8e 	b.w	8001a7e <i2cStop>

08001b62 <i2c_read_reg>:
 8001b62:	b538      	push	{r3, r4, r5, lr}
 8001b64:	4604      	mov	r4, r0
 8001b66:	460d      	mov	r5, r1
 8001b68:	f7ff ff7a 	bl	8001a60 <i2cStart>
 8001b6c:	4620      	mov	r0, r4
 8001b6e:	f7ff ff95 	bl	8001a9c <i2cWrite>
 8001b72:	4628      	mov	r0, r5
 8001b74:	f7ff ff92 	bl	8001a9c <i2cWrite>
 8001b78:	f7ff ff72 	bl	8001a60 <i2cStart>
 8001b7c:	f044 0001 	orr.w	r0, r4, #1
 8001b80:	f7ff ff8c 	bl	8001a9c <i2cWrite>
 8001b84:	2000      	movs	r0, #0
 8001b86:	f7ff ffb1 	bl	8001aec <i2cRead>
 8001b8a:	4604      	mov	r4, r0
 8001b8c:	f7ff ff77 	bl	8001a7e <i2cStop>
 8001b90:	4620      	mov	r0, r4
 8001b92:	bd38      	pop	{r3, r4, r5, pc}

08001b94 <Default_Handler>:
 8001b94:	4668      	mov	r0, sp
 8001b96:	f020 0107 	bic.w	r1, r0, #7
 8001b9a:	468d      	mov	sp, r1
 8001b9c:	bf00      	nop
 8001b9e:	e7fd      	b.n	8001b9c <Default_Handler+0x8>

08001ba0 <HardFault_Handler>:
 8001ba0:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001ba4:	f000 fce6 	bl	8002574 <led_on>
 8001ba8:	4b06      	ldr	r3, [pc, #24]	; (8001bc4 <HardFault_Handler+0x24>)
 8001baa:	3b01      	subs	r3, #1
 8001bac:	d001      	beq.n	8001bb2 <HardFault_Handler+0x12>
 8001bae:	bf00      	nop
 8001bb0:	e7fb      	b.n	8001baa <HardFault_Handler+0xa>
 8001bb2:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001bb6:	f000 fcef 	bl	8002598 <led_off>
 8001bba:	4b02      	ldr	r3, [pc, #8]	; (8001bc4 <HardFault_Handler+0x24>)
 8001bbc:	3b01      	subs	r3, #1
 8001bbe:	d0ef      	beq.n	8001ba0 <HardFault_Handler>
 8001bc0:	bf00      	nop
 8001bc2:	e7fb      	b.n	8001bbc <HardFault_Handler+0x1c>
 8001bc4:	00989681 	.word	0x00989681

08001bc8 <_reset_init>:
 8001bc8:	4a0e      	ldr	r2, [pc, #56]	; (8001c04 <_reset_init+0x3c>)
 8001bca:	480f      	ldr	r0, [pc, #60]	; (8001c08 <_reset_init+0x40>)
 8001bcc:	1a80      	subs	r0, r0, r2
 8001bce:	1080      	asrs	r0, r0, #2
 8001bd0:	2300      	movs	r3, #0
 8001bd2:	4283      	cmp	r3, r0
 8001bd4:	d006      	beq.n	8001be4 <_reset_init+0x1c>
 8001bd6:	490d      	ldr	r1, [pc, #52]	; (8001c0c <_reset_init+0x44>)
 8001bd8:	f851 1023 	ldr.w	r1, [r1, r3, lsl #2]
 8001bdc:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
 8001be0:	3301      	adds	r3, #1
 8001be2:	e7f6      	b.n	8001bd2 <_reset_init+0xa>
 8001be4:	4b0a      	ldr	r3, [pc, #40]	; (8001c10 <_reset_init+0x48>)
 8001be6:	f8d3 2088 	ldr.w	r2, [r3, #136]	; 0x88
 8001bea:	f442 0270 	orr.w	r2, r2, #15728640	; 0xf00000
 8001bee:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
 8001bf2:	f503 730c 	add.w	r3, r3, #560	; 0x230
 8001bf6:	685a      	ldr	r2, [r3, #4]
 8001bf8:	f022 4240 	bic.w	r2, r2, #3221225472	; 0xc0000000
 8001bfc:	605a      	str	r2, [r3, #4]
 8001bfe:	f7fe bac3 	b.w	8000188 <main>
 8001c02:	bf00      	nop
 8001c04:	20000000 	.word	0x20000000
 8001c08:	20000284 	.word	0x20000284
 8001c0c:	08002874 	.word	0x08002874
 8001c10:	e000ed00 	.word	0xe000ed00

08001c14 <sys_tick_init>:
 8001c14:	4b05      	ldr	r3, [pc, #20]	; (8001c2c <sys_tick_init+0x18>)
 8001c16:	4a06      	ldr	r2, [pc, #24]	; (8001c30 <sys_tick_init+0x1c>)
 8001c18:	605a      	str	r2, [r3, #4]
 8001c1a:	4a06      	ldr	r2, [pc, #24]	; (8001c34 <sys_tick_init+0x20>)
 8001c1c:	21f0      	movs	r1, #240	; 0xf0
 8001c1e:	f882 1023 	strb.w	r1, [r2, #35]	; 0x23
 8001c22:	2200      	movs	r2, #0
 8001c24:	609a      	str	r2, [r3, #8]
 8001c26:	2207      	movs	r2, #7
 8001c28:	601a      	str	r2, [r3, #0]
 8001c2a:	4770      	bx	lr
 8001c2c:	e000e010 	.word	0xe000e010
 8001c30:	00029040 	.word	0x00029040
 8001c34:	e000ed00 	.word	0xe000ed00

08001c38 <sleep>:
 8001c38:	bf30      	wfi
 8001c3a:	4770      	bx	lr

08001c3c <sytem_clock_init>:
 8001c3c:	f000 b800 	b.w	8001c40 <SystemInit>

08001c40 <SystemInit>:
 8001c40:	4b3b      	ldr	r3, [pc, #236]	; (8001d30 <SystemInit+0xf0>)
 8001c42:	f8d3 2088 	ldr.w	r2, [r3, #136]	; 0x88
 8001c46:	f442 0270 	orr.w	r2, r2, #15728640	; 0xf00000
 8001c4a:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
 8001c4e:	4b39      	ldr	r3, [pc, #228]	; (8001d34 <SystemInit+0xf4>)
 8001c50:	681a      	ldr	r2, [r3, #0]
 8001c52:	f042 0201 	orr.w	r2, r2, #1
 8001c56:	601a      	str	r2, [r3, #0]
 8001c58:	6859      	ldr	r1, [r3, #4]
 8001c5a:	4a37      	ldr	r2, [pc, #220]	; (8001d38 <SystemInit+0xf8>)
 8001c5c:	400a      	ands	r2, r1
 8001c5e:	605a      	str	r2, [r3, #4]
 8001c60:	681a      	ldr	r2, [r3, #0]
 8001c62:	f022 7284 	bic.w	r2, r2, #17301504	; 0x1080000
 8001c66:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
 8001c6a:	601a      	str	r2, [r3, #0]
 8001c6c:	681a      	ldr	r2, [r3, #0]
 8001c6e:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 8001c72:	601a      	str	r2, [r3, #0]
 8001c74:	685a      	ldr	r2, [r3, #4]
 8001c76:	f422 02fe 	bic.w	r2, r2, #8323072	; 0x7f0000
 8001c7a:	605a      	str	r2, [r3, #4]
 8001c7c:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8001c7e:	f022 020f 	bic.w	r2, r2, #15
 8001c82:	62da      	str	r2, [r3, #44]	; 0x2c
 8001c84:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001c86:	4a2d      	ldr	r2, [pc, #180]	; (8001d3c <SystemInit+0xfc>)
 8001c88:	b082      	sub	sp, #8
 8001c8a:	400a      	ands	r2, r1
 8001c8c:	631a      	str	r2, [r3, #48]	; 0x30
 8001c8e:	2200      	movs	r2, #0
 8001c90:	609a      	str	r2, [r3, #8]
 8001c92:	9200      	str	r2, [sp, #0]
 8001c94:	9201      	str	r2, [sp, #4]
 8001c96:	681a      	ldr	r2, [r3, #0]
 8001c98:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
 8001c9c:	601a      	str	r2, [r3, #0]
 8001c9e:	4b25      	ldr	r3, [pc, #148]	; (8001d34 <SystemInit+0xf4>)
 8001ca0:	681a      	ldr	r2, [r3, #0]
 8001ca2:	f402 3200 	and.w	r2, r2, #131072	; 0x20000
 8001ca6:	9201      	str	r2, [sp, #4]
 8001ca8:	9a00      	ldr	r2, [sp, #0]
 8001caa:	3201      	adds	r2, #1
 8001cac:	9200      	str	r2, [sp, #0]
 8001cae:	9a01      	ldr	r2, [sp, #4]
 8001cb0:	b91a      	cbnz	r2, 8001cba <SystemInit+0x7a>
 8001cb2:	9a00      	ldr	r2, [sp, #0]
 8001cb4:	f5b2 4fa0 	cmp.w	r2, #20480	; 0x5000
 8001cb8:	d1f1      	bne.n	8001c9e <SystemInit+0x5e>
 8001cba:	681b      	ldr	r3, [r3, #0]
 8001cbc:	f413 3300 	ands.w	r3, r3, #131072	; 0x20000
 8001cc0:	bf18      	it	ne
 8001cc2:	2301      	movne	r3, #1
 8001cc4:	9301      	str	r3, [sp, #4]
 8001cc6:	9b01      	ldr	r3, [sp, #4]
 8001cc8:	2b01      	cmp	r3, #1
 8001cca:	d005      	beq.n	8001cd8 <SystemInit+0x98>
 8001ccc:	4b18      	ldr	r3, [pc, #96]	; (8001d30 <SystemInit+0xf0>)
 8001cce:	f04f 6200 	mov.w	r2, #134217728	; 0x8000000
 8001cd2:	609a      	str	r2, [r3, #8]
 8001cd4:	b002      	add	sp, #8
 8001cd6:	4770      	bx	lr
 8001cd8:	4b19      	ldr	r3, [pc, #100]	; (8001d40 <SystemInit+0x100>)
 8001cda:	2212      	movs	r2, #18
 8001cdc:	601a      	str	r2, [r3, #0]
 8001cde:	f5a3 5380 	sub.w	r3, r3, #4096	; 0x1000
 8001ce2:	685a      	ldr	r2, [r3, #4]
 8001ce4:	605a      	str	r2, [r3, #4]
 8001ce6:	685a      	ldr	r2, [r3, #4]
 8001ce8:	605a      	str	r2, [r3, #4]
 8001cea:	685a      	ldr	r2, [r3, #4]
 8001cec:	f442 6280 	orr.w	r2, r2, #1024	; 0x400
 8001cf0:	605a      	str	r2, [r3, #4]
 8001cf2:	685a      	ldr	r2, [r3, #4]
 8001cf4:	f422 127c 	bic.w	r2, r2, #4128768	; 0x3f0000
 8001cf8:	605a      	str	r2, [r3, #4]
 8001cfa:	685a      	ldr	r2, [r3, #4]
 8001cfc:	f442 12e8 	orr.w	r2, r2, #1900544	; 0x1d0000
 8001d00:	605a      	str	r2, [r3, #4]
 8001d02:	681a      	ldr	r2, [r3, #0]
 8001d04:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
 8001d08:	601a      	str	r2, [r3, #0]
 8001d0a:	6819      	ldr	r1, [r3, #0]
 8001d0c:	4a09      	ldr	r2, [pc, #36]	; (8001d34 <SystemInit+0xf4>)
 8001d0e:	0189      	lsls	r1, r1, #6
 8001d10:	d5fb      	bpl.n	8001d0a <SystemInit+0xca>
 8001d12:	6853      	ldr	r3, [r2, #4]
 8001d14:	f023 0303 	bic.w	r3, r3, #3
 8001d18:	6053      	str	r3, [r2, #4]
 8001d1a:	6853      	ldr	r3, [r2, #4]
 8001d1c:	f043 0302 	orr.w	r3, r3, #2
 8001d20:	6053      	str	r3, [r2, #4]
 8001d22:	4b04      	ldr	r3, [pc, #16]	; (8001d34 <SystemInit+0xf4>)
 8001d24:	685b      	ldr	r3, [r3, #4]
 8001d26:	f003 030c 	and.w	r3, r3, #12
 8001d2a:	2b08      	cmp	r3, #8
 8001d2c:	d1f9      	bne.n	8001d22 <SystemInit+0xe2>
 8001d2e:	e7cd      	b.n	8001ccc <SystemInit+0x8c>
 8001d30:	e000ed00 	.word	0xe000ed00
 8001d34:	40021000 	.word	0x40021000
 8001d38:	f87fc00c 	.word	0xf87fc00c
 8001d3c:	ff00fccc 	.word	0xff00fccc
 8001d40:	40022000 	.word	0x40022000

08001d44 <RCC_GetClocksFreq>:
 8001d44:	4ba5      	ldr	r3, [pc, #660]	; (8001fdc <RCC_GetClocksFreq+0x298>)
 8001d46:	685a      	ldr	r2, [r3, #4]
 8001d48:	f002 020c 	and.w	r2, r2, #12
 8001d4c:	2a04      	cmp	r2, #4
 8001d4e:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8001d52:	d005      	beq.n	8001d60 <RCC_GetClocksFreq+0x1c>
 8001d54:	2a08      	cmp	r2, #8
 8001d56:	d006      	beq.n	8001d66 <RCC_GetClocksFreq+0x22>
 8001d58:	4ba1      	ldr	r3, [pc, #644]	; (8001fe0 <RCC_GetClocksFreq+0x29c>)
 8001d5a:	6003      	str	r3, [r0, #0]
 8001d5c:	b9ba      	cbnz	r2, 8001d8e <RCC_GetClocksFreq+0x4a>
 8001d5e:	e017      	b.n	8001d90 <RCC_GetClocksFreq+0x4c>
 8001d60:	4b9f      	ldr	r3, [pc, #636]	; (8001fe0 <RCC_GetClocksFreq+0x29c>)
 8001d62:	6003      	str	r3, [r0, #0]
 8001d64:	e013      	b.n	8001d8e <RCC_GetClocksFreq+0x4a>
 8001d66:	6859      	ldr	r1, [r3, #4]
 8001d68:	685c      	ldr	r4, [r3, #4]
 8001d6a:	f3c1 4183 	ubfx	r1, r1, #18, #4
 8001d6e:	03e2      	lsls	r2, r4, #15
 8001d70:	f101 0102 	add.w	r1, r1, #2
 8001d74:	d401      	bmi.n	8001d7a <RCC_GetClocksFreq+0x36>
 8001d76:	4a9b      	ldr	r2, [pc, #620]	; (8001fe4 <RCC_GetClocksFreq+0x2a0>)
 8001d78:	e006      	b.n	8001d88 <RCC_GetClocksFreq+0x44>
 8001d7a:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8001d7c:	4b98      	ldr	r3, [pc, #608]	; (8001fe0 <RCC_GetClocksFreq+0x29c>)
 8001d7e:	f002 020f 	and.w	r2, r2, #15
 8001d82:	3201      	adds	r2, #1
 8001d84:	fbb3 f2f2 	udiv	r2, r3, r2
 8001d88:	434a      	muls	r2, r1
 8001d8a:	6002      	str	r2, [r0, #0]
 8001d8c:	e000      	b.n	8001d90 <RCC_GetClocksFreq+0x4c>
 8001d8e:	2200      	movs	r2, #0
 8001d90:	4f92      	ldr	r7, [pc, #584]	; (8001fdc <RCC_GetClocksFreq+0x298>)
 8001d92:	4d95      	ldr	r5, [pc, #596]	; (8001fe8 <RCC_GetClocksFreq+0x2a4>)
 8001d94:	687b      	ldr	r3, [r7, #4]
 8001d96:	f8df 8254 	ldr.w	r8, [pc, #596]	; 8001fec <RCC_GetClocksFreq+0x2a8>
 8001d9a:	f3c3 1303 	ubfx	r3, r3, #4, #4
 8001d9e:	5cec      	ldrb	r4, [r5, r3]
 8001da0:	6803      	ldr	r3, [r0, #0]
 8001da2:	b2e4      	uxtb	r4, r4
 8001da4:	fa23 f104 	lsr.w	r1, r3, r4
 8001da8:	6041      	str	r1, [r0, #4]
 8001daa:	687e      	ldr	r6, [r7, #4]
 8001dac:	f3c6 2602 	ubfx	r6, r6, #8, #3
 8001db0:	5dae      	ldrb	r6, [r5, r6]
 8001db2:	fa21 f606 	lsr.w	r6, r1, r6
 8001db6:	6086      	str	r6, [r0, #8]
 8001db8:	f8d7 c004 	ldr.w	ip, [r7, #4]
 8001dbc:	f3cc 2cc2 	ubfx	ip, ip, #11, #3
 8001dc0:	f815 500c 	ldrb.w	r5, [r5, ip]
 8001dc4:	b2ed      	uxtb	r5, r5
 8001dc6:	40e9      	lsrs	r1, r5
 8001dc8:	60c1      	str	r1, [r0, #12]
 8001dca:	f8d7 902c 	ldr.w	r9, [r7, #44]	; 0x2c
 8001dce:	f3c9 1904 	ubfx	r9, r9, #4, #5
 8001dd2:	f009 0c0f 	and.w	ip, r9, #15
 8001dd6:	f019 0f10 	tst.w	r9, #16
 8001dda:	f838 c01c 	ldrh.w	ip, [r8, ip, lsl #1]
 8001dde:	fa1f fc8c 	uxth.w	ip, ip
 8001de2:	d007      	beq.n	8001df4 <RCC_GetClocksFreq+0xb0>
 8001de4:	f1bc 0f00 	cmp.w	ip, #0
 8001de8:	d004      	beq.n	8001df4 <RCC_GetClocksFreq+0xb0>
 8001dea:	fbb2 fcfc 	udiv	ip, r2, ip
 8001dee:	f8c0 c010 	str.w	ip, [r0, #16]
 8001df2:	e000      	b.n	8001df6 <RCC_GetClocksFreq+0xb2>
 8001df4:	6103      	str	r3, [r0, #16]
 8001df6:	6aff      	ldr	r7, [r7, #44]	; 0x2c
 8001df8:	f3c7 2c44 	ubfx	ip, r7, #9, #5
 8001dfc:	f00c 070f 	and.w	r7, ip, #15
 8001e00:	f01c 0f10 	tst.w	ip, #16
 8001e04:	f838 7017 	ldrh.w	r7, [r8, r7, lsl #1]
 8001e08:	b2bf      	uxth	r7, r7
 8001e0a:	d004      	beq.n	8001e16 <RCC_GetClocksFreq+0xd2>
 8001e0c:	b11f      	cbz	r7, 8001e16 <RCC_GetClocksFreq+0xd2>
 8001e0e:	fbb2 f7f7 	udiv	r7, r2, r7
 8001e12:	6147      	str	r7, [r0, #20]
 8001e14:	e000      	b.n	8001e18 <RCC_GetClocksFreq+0xd4>
 8001e16:	6143      	str	r3, [r0, #20]
 8001e18:	4f70      	ldr	r7, [pc, #448]	; (8001fdc <RCC_GetClocksFreq+0x298>)
 8001e1a:	f8d7 c030 	ldr.w	ip, [r7, #48]	; 0x30
 8001e1e:	f01c 0f10 	tst.w	ip, #16
 8001e22:	bf0a      	itet	eq
 8001e24:	f8df c1b8 	ldreq.w	ip, [pc, #440]	; 8001fe0 <RCC_GetClocksFreq+0x29c>
 8001e28:	6183      	strne	r3, [r0, #24]
 8001e2a:	f8c0 c018 	streq.w	ip, [r0, #24]
 8001e2e:	6b3f      	ldr	r7, [r7, #48]	; 0x30
 8001e30:	06bf      	lsls	r7, r7, #26
 8001e32:	bf56      	itet	pl
 8001e34:	4f6a      	ldrpl	r7, [pc, #424]	; (8001fe0 <RCC_GetClocksFreq+0x29c>)
 8001e36:	61c3      	strmi	r3, [r0, #28]
 8001e38:	61c7      	strpl	r7, [r0, #28]
 8001e3a:	4f68      	ldr	r7, [pc, #416]	; (8001fdc <RCC_GetClocksFreq+0x298>)
 8001e3c:	f8d7 c030 	ldr.w	ip, [r7, #48]	; 0x30
 8001e40:	f01c 0f40 	tst.w	ip, #64	; 0x40
 8001e44:	bf0a      	itet	eq
 8001e46:	f8df c198 	ldreq.w	ip, [pc, #408]	; 8001fe0 <RCC_GetClocksFreq+0x29c>
 8001e4a:	6203      	strne	r3, [r0, #32]
 8001e4c:	f8c0 c020 	streq.w	ip, [r0, #32]
 8001e50:	6b3f      	ldr	r7, [r7, #48]	; 0x30
 8001e52:	05ff      	lsls	r7, r7, #23
 8001e54:	d506      	bpl.n	8001e64 <RCC_GetClocksFreq+0x120>
 8001e56:	4293      	cmp	r3, r2
 8001e58:	d104      	bne.n	8001e64 <RCC_GetClocksFreq+0x120>
 8001e5a:	42a5      	cmp	r5, r4
 8001e5c:	d102      	bne.n	8001e64 <RCC_GetClocksFreq+0x120>
 8001e5e:	005f      	lsls	r7, r3, #1
 8001e60:	6247      	str	r7, [r0, #36]	; 0x24
 8001e62:	e000      	b.n	8001e66 <RCC_GetClocksFreq+0x122>
 8001e64:	6241      	str	r1, [r0, #36]	; 0x24
 8001e66:	4f5d      	ldr	r7, [pc, #372]	; (8001fdc <RCC_GetClocksFreq+0x298>)
 8001e68:	f8d7 c030 	ldr.w	ip, [r7, #48]	; 0x30
 8001e6c:	f41c 5f80 	tst.w	ip, #4096	; 0x1000
 8001e70:	d008      	beq.n	8001e84 <RCC_GetClocksFreq+0x140>
 8001e72:	4293      	cmp	r3, r2
 8001e74:	d106      	bne.n	8001e84 <RCC_GetClocksFreq+0x140>
 8001e76:	42a5      	cmp	r5, r4
 8001e78:	d104      	bne.n	8001e84 <RCC_GetClocksFreq+0x140>
 8001e7a:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8001e7e:	f8c0 c028 	str.w	ip, [r0, #40]	; 0x28
 8001e82:	e000      	b.n	8001e86 <RCC_GetClocksFreq+0x142>
 8001e84:	6281      	str	r1, [r0, #40]	; 0x28
 8001e86:	6b3f      	ldr	r7, [r7, #48]	; 0x30
 8001e88:	05bf      	lsls	r7, r7, #22
 8001e8a:	d506      	bpl.n	8001e9a <RCC_GetClocksFreq+0x156>
 8001e8c:	4293      	cmp	r3, r2
 8001e8e:	d104      	bne.n	8001e9a <RCC_GetClocksFreq+0x156>
 8001e90:	42a5      	cmp	r5, r4
 8001e92:	d102      	bne.n	8001e9a <RCC_GetClocksFreq+0x156>
 8001e94:	005f      	lsls	r7, r3, #1
 8001e96:	62c7      	str	r7, [r0, #44]	; 0x2c
 8001e98:	e000      	b.n	8001e9c <RCC_GetClocksFreq+0x158>
 8001e9a:	62c1      	str	r1, [r0, #44]	; 0x2c
 8001e9c:	4f4f      	ldr	r7, [pc, #316]	; (8001fdc <RCC_GetClocksFreq+0x298>)
 8001e9e:	f8d7 c030 	ldr.w	ip, [r7, #48]	; 0x30
 8001ea2:	f41c 6f80 	tst.w	ip, #1024	; 0x400
 8001ea6:	d008      	beq.n	8001eba <RCC_GetClocksFreq+0x176>
 8001ea8:	4293      	cmp	r3, r2
 8001eaa:	d106      	bne.n	8001eba <RCC_GetClocksFreq+0x176>
 8001eac:	42a5      	cmp	r5, r4
 8001eae:	d104      	bne.n	8001eba <RCC_GetClocksFreq+0x176>
 8001eb0:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8001eb4:	f8c0 c04c 	str.w	ip, [r0, #76]	; 0x4c
 8001eb8:	e000      	b.n	8001ebc <RCC_GetClocksFreq+0x178>
 8001eba:	64c1      	str	r1, [r0, #76]	; 0x4c
 8001ebc:	6b3f      	ldr	r7, [r7, #48]	; 0x30
 8001ebe:	053f      	lsls	r7, r7, #20
 8001ec0:	d506      	bpl.n	8001ed0 <RCC_GetClocksFreq+0x18c>
 8001ec2:	4293      	cmp	r3, r2
 8001ec4:	d104      	bne.n	8001ed0 <RCC_GetClocksFreq+0x18c>
 8001ec6:	42a5      	cmp	r5, r4
 8001ec8:	d102      	bne.n	8001ed0 <RCC_GetClocksFreq+0x18c>
 8001eca:	005f      	lsls	r7, r3, #1
 8001ecc:	6507      	str	r7, [r0, #80]	; 0x50
 8001ece:	e000      	b.n	8001ed2 <RCC_GetClocksFreq+0x18e>
 8001ed0:	6501      	str	r1, [r0, #80]	; 0x50
 8001ed2:	4f42      	ldr	r7, [pc, #264]	; (8001fdc <RCC_GetClocksFreq+0x298>)
 8001ed4:	f8d7 c030 	ldr.w	ip, [r7, #48]	; 0x30
 8001ed8:	f41c 5f00 	tst.w	ip, #8192	; 0x2000
 8001edc:	d008      	beq.n	8001ef0 <RCC_GetClocksFreq+0x1ac>
 8001ede:	4293      	cmp	r3, r2
 8001ee0:	d106      	bne.n	8001ef0 <RCC_GetClocksFreq+0x1ac>
 8001ee2:	42a5      	cmp	r5, r4
 8001ee4:	d104      	bne.n	8001ef0 <RCC_GetClocksFreq+0x1ac>
 8001ee6:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8001eea:	f8c0 c054 	str.w	ip, [r0, #84]	; 0x54
 8001eee:	e000      	b.n	8001ef2 <RCC_GetClocksFreq+0x1ae>
 8001ef0:	6501      	str	r1, [r0, #80]	; 0x50
 8001ef2:	6b3f      	ldr	r7, [r7, #48]	; 0x30
 8001ef4:	043f      	lsls	r7, r7, #16
 8001ef6:	d506      	bpl.n	8001f06 <RCC_GetClocksFreq+0x1c2>
 8001ef8:	4293      	cmp	r3, r2
 8001efa:	d104      	bne.n	8001f06 <RCC_GetClocksFreq+0x1c2>
 8001efc:	42a5      	cmp	r5, r4
 8001efe:	d102      	bne.n	8001f06 <RCC_GetClocksFreq+0x1c2>
 8001f00:	005a      	lsls	r2, r3, #1
 8001f02:	6582      	str	r2, [r0, #88]	; 0x58
 8001f04:	e000      	b.n	8001f08 <RCC_GetClocksFreq+0x1c4>
 8001f06:	6581      	str	r1, [r0, #88]	; 0x58
 8001f08:	4a34      	ldr	r2, [pc, #208]	; (8001fdc <RCC_GetClocksFreq+0x298>)
 8001f0a:	6b14      	ldr	r4, [r2, #48]	; 0x30
 8001f0c:	07a4      	lsls	r4, r4, #30
 8001f0e:	d014      	beq.n	8001f3a <RCC_GetClocksFreq+0x1f6>
 8001f10:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8001f12:	f001 0103 	and.w	r1, r1, #3
 8001f16:	2901      	cmp	r1, #1
 8001f18:	d101      	bne.n	8001f1e <RCC_GetClocksFreq+0x1da>
 8001f1a:	6383      	str	r3, [r0, #56]	; 0x38
 8001f1c:	e00e      	b.n	8001f3c <RCC_GetClocksFreq+0x1f8>
 8001f1e:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8001f20:	f001 0103 	and.w	r1, r1, #3
 8001f24:	2902      	cmp	r1, #2
 8001f26:	d102      	bne.n	8001f2e <RCC_GetClocksFreq+0x1ea>
 8001f28:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 8001f2c:	e005      	b.n	8001f3a <RCC_GetClocksFreq+0x1f6>
 8001f2e:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8001f30:	f001 0103 	and.w	r1, r1, #3
 8001f34:	2903      	cmp	r1, #3
 8001f36:	d101      	bne.n	8001f3c <RCC_GetClocksFreq+0x1f8>
 8001f38:	4929      	ldr	r1, [pc, #164]	; (8001fe0 <RCC_GetClocksFreq+0x29c>)
 8001f3a:	6381      	str	r1, [r0, #56]	; 0x38
 8001f3c:	6b12      	ldr	r2, [r2, #48]	; 0x30
 8001f3e:	4927      	ldr	r1, [pc, #156]	; (8001fdc <RCC_GetClocksFreq+0x298>)
 8001f40:	f412 3f40 	tst.w	r2, #196608	; 0x30000
 8001f44:	d101      	bne.n	8001f4a <RCC_GetClocksFreq+0x206>
 8001f46:	63c6      	str	r6, [r0, #60]	; 0x3c
 8001f48:	e018      	b.n	8001f7c <RCC_GetClocksFreq+0x238>
 8001f4a:	6b0a      	ldr	r2, [r1, #48]	; 0x30
 8001f4c:	f402 3240 	and.w	r2, r2, #196608	; 0x30000
 8001f50:	f5b2 3f80 	cmp.w	r2, #65536	; 0x10000
 8001f54:	d101      	bne.n	8001f5a <RCC_GetClocksFreq+0x216>
 8001f56:	63c3      	str	r3, [r0, #60]	; 0x3c
 8001f58:	e010      	b.n	8001f7c <RCC_GetClocksFreq+0x238>
 8001f5a:	6b0a      	ldr	r2, [r1, #48]	; 0x30
 8001f5c:	f402 3240 	and.w	r2, r2, #196608	; 0x30000
 8001f60:	f5b2 3f00 	cmp.w	r2, #131072	; 0x20000
 8001f64:	d102      	bne.n	8001f6c <RCC_GetClocksFreq+0x228>
 8001f66:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 8001f6a:	e006      	b.n	8001f7a <RCC_GetClocksFreq+0x236>
 8001f6c:	6b0a      	ldr	r2, [r1, #48]	; 0x30
 8001f6e:	f402 3240 	and.w	r2, r2, #196608	; 0x30000
 8001f72:	f5b2 3f40 	cmp.w	r2, #196608	; 0x30000
 8001f76:	d101      	bne.n	8001f7c <RCC_GetClocksFreq+0x238>
 8001f78:	4a19      	ldr	r2, [pc, #100]	; (8001fe0 <RCC_GetClocksFreq+0x29c>)
 8001f7a:	63c2      	str	r2, [r0, #60]	; 0x3c
 8001f7c:	4a17      	ldr	r2, [pc, #92]	; (8001fdc <RCC_GetClocksFreq+0x298>)
 8001f7e:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8001f80:	f411 2f40 	tst.w	r1, #786432	; 0xc0000
 8001f84:	d101      	bne.n	8001f8a <RCC_GetClocksFreq+0x246>
 8001f86:	6406      	str	r6, [r0, #64]	; 0x40
 8001f88:	e018      	b.n	8001fbc <RCC_GetClocksFreq+0x278>
 8001f8a:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8001f8c:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 8001f90:	f5b1 2f80 	cmp.w	r1, #262144	; 0x40000
 8001f94:	d101      	bne.n	8001f9a <RCC_GetClocksFreq+0x256>
 8001f96:	6403      	str	r3, [r0, #64]	; 0x40
 8001f98:	e010      	b.n	8001fbc <RCC_GetClocksFreq+0x278>
 8001f9a:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8001f9c:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 8001fa0:	f5b1 2f00 	cmp.w	r1, #524288	; 0x80000
 8001fa4:	d102      	bne.n	8001fac <RCC_GetClocksFreq+0x268>
 8001fa6:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 8001faa:	e006      	b.n	8001fba <RCC_GetClocksFreq+0x276>
 8001fac:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8001fae:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 8001fb2:	f5b1 2f40 	cmp.w	r1, #786432	; 0xc0000
 8001fb6:	d101      	bne.n	8001fbc <RCC_GetClocksFreq+0x278>
 8001fb8:	4909      	ldr	r1, [pc, #36]	; (8001fe0 <RCC_GetClocksFreq+0x29c>)
 8001fba:	6401      	str	r1, [r0, #64]	; 0x40
 8001fbc:	6b12      	ldr	r2, [r2, #48]	; 0x30
 8001fbe:	4907      	ldr	r1, [pc, #28]	; (8001fdc <RCC_GetClocksFreq+0x298>)
 8001fc0:	f412 1f40 	tst.w	r2, #3145728	; 0x300000
 8001fc4:	d101      	bne.n	8001fca <RCC_GetClocksFreq+0x286>
 8001fc6:	6446      	str	r6, [r0, #68]	; 0x44
 8001fc8:	e023      	b.n	8002012 <RCC_GetClocksFreq+0x2ce>
 8001fca:	6b0a      	ldr	r2, [r1, #48]	; 0x30
 8001fcc:	f402 1240 	and.w	r2, r2, #3145728	; 0x300000
 8001fd0:	f5b2 1f80 	cmp.w	r2, #1048576	; 0x100000
 8001fd4:	d10c      	bne.n	8001ff0 <RCC_GetClocksFreq+0x2ac>
 8001fd6:	6443      	str	r3, [r0, #68]	; 0x44
 8001fd8:	e01b      	b.n	8002012 <RCC_GetClocksFreq+0x2ce>
 8001fda:	bf00      	nop
 8001fdc:	40021000 	.word	0x40021000
 8001fe0:	007a1200 	.word	0x007a1200
 8001fe4:	003d0900 	.word	0x003d0900
 8001fe8:	20000274 	.word	0x20000274
 8001fec:	20000254 	.word	0x20000254
 8001ff0:	6b0a      	ldr	r2, [r1, #48]	; 0x30
 8001ff2:	f402 1240 	and.w	r2, r2, #3145728	; 0x300000
 8001ff6:	f5b2 1f00 	cmp.w	r2, #2097152	; 0x200000
 8001ffa:	d102      	bne.n	8002002 <RCC_GetClocksFreq+0x2be>
 8001ffc:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 8002000:	e006      	b.n	8002010 <RCC_GetClocksFreq+0x2cc>
 8002002:	6b0a      	ldr	r2, [r1, #48]	; 0x30
 8002004:	f402 1240 	and.w	r2, r2, #3145728	; 0x300000
 8002008:	f5b2 1f40 	cmp.w	r2, #3145728	; 0x300000
 800200c:	d101      	bne.n	8002012 <RCC_GetClocksFreq+0x2ce>
 800200e:	4a11      	ldr	r2, [pc, #68]	; (8002054 <RCC_GetClocksFreq+0x310>)
 8002010:	6442      	str	r2, [r0, #68]	; 0x44
 8002012:	4a11      	ldr	r2, [pc, #68]	; (8002058 <RCC_GetClocksFreq+0x314>)
 8002014:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8002016:	f411 0f40 	tst.w	r1, #12582912	; 0xc00000
 800201a:	d102      	bne.n	8002022 <RCC_GetClocksFreq+0x2de>
 800201c:	6486      	str	r6, [r0, #72]	; 0x48
 800201e:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8002022:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8002024:	f401 0140 	and.w	r1, r1, #12582912	; 0xc00000
 8002028:	f5b1 0f80 	cmp.w	r1, #4194304	; 0x400000
 800202c:	d00f      	beq.n	800204e <RCC_GetClocksFreq+0x30a>
 800202e:	6b13      	ldr	r3, [r2, #48]	; 0x30
 8002030:	f403 0340 	and.w	r3, r3, #12582912	; 0xc00000
 8002034:	f5b3 0f00 	cmp.w	r3, #8388608	; 0x800000
 8002038:	d102      	bne.n	8002040 <RCC_GetClocksFreq+0x2fc>
 800203a:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 800203e:	e006      	b.n	800204e <RCC_GetClocksFreq+0x30a>
 8002040:	6b13      	ldr	r3, [r2, #48]	; 0x30
 8002042:	f403 0340 	and.w	r3, r3, #12582912	; 0xc00000
 8002046:	f5b3 0f40 	cmp.w	r3, #12582912	; 0xc00000
 800204a:	d101      	bne.n	8002050 <RCC_GetClocksFreq+0x30c>
 800204c:	4b01      	ldr	r3, [pc, #4]	; (8002054 <RCC_GetClocksFreq+0x310>)
 800204e:	6483      	str	r3, [r0, #72]	; 0x48
 8002050:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8002054:	007a1200 	.word	0x007a1200
 8002058:	40021000 	.word	0x40021000

0800205c <RCC_AHBPeriphClockCmd>:
 800205c:	bf00      	nop
 800205e:	bf00      	nop
 8002060:	4b04      	ldr	r3, [pc, #16]	; (8002074 <RCC_AHBPeriphClockCmd+0x18>)
 8002062:	695a      	ldr	r2, [r3, #20]
 8002064:	b109      	cbz	r1, 800206a <RCC_AHBPeriphClockCmd+0xe>
 8002066:	4310      	orrs	r0, r2
 8002068:	e001      	b.n	800206e <RCC_AHBPeriphClockCmd+0x12>
 800206a:	ea22 0000 	bic.w	r0, r2, r0
 800206e:	6158      	str	r0, [r3, #20]
 8002070:	4770      	bx	lr
 8002072:	bf00      	nop
 8002074:	40021000 	.word	0x40021000

08002078 <RCC_APB2PeriphClockCmd>:
 8002078:	bf00      	nop
 800207a:	bf00      	nop
 800207c:	4b04      	ldr	r3, [pc, #16]	; (8002090 <RCC_APB2PeriphClockCmd+0x18>)
 800207e:	699a      	ldr	r2, [r3, #24]
 8002080:	b109      	cbz	r1, 8002086 <RCC_APB2PeriphClockCmd+0xe>
 8002082:	4310      	orrs	r0, r2
 8002084:	e001      	b.n	800208a <RCC_APB2PeriphClockCmd+0x12>
 8002086:	ea22 0000 	bic.w	r0, r2, r0
 800208a:	6198      	str	r0, [r3, #24]
 800208c:	4770      	bx	lr
 800208e:	bf00      	nop
 8002090:	40021000 	.word	0x40021000

08002094 <RCC_APB1PeriphClockCmd>:
 8002094:	bf00      	nop
 8002096:	bf00      	nop
 8002098:	4b04      	ldr	r3, [pc, #16]	; (80020ac <RCC_APB1PeriphClockCmd+0x18>)
 800209a:	69da      	ldr	r2, [r3, #28]
 800209c:	b109      	cbz	r1, 80020a2 <RCC_APB1PeriphClockCmd+0xe>
 800209e:	4310      	orrs	r0, r2
 80020a0:	e001      	b.n	80020a6 <RCC_APB1PeriphClockCmd+0x12>
 80020a2:	ea22 0000 	bic.w	r0, r2, r0
 80020a6:	61d8      	str	r0, [r3, #28]
 80020a8:	4770      	bx	lr
 80020aa:	bf00      	nop
 80020ac:	40021000 	.word	0x40021000

080020b0 <TIM_TimeBaseInit>:
 80020b0:	bf00      	nop
 80020b2:	bf00      	nop
 80020b4:	bf00      	nop
 80020b6:	4a24      	ldr	r2, [pc, #144]	; (8002148 <TIM_TimeBaseInit+0x98>)
 80020b8:	8803      	ldrh	r3, [r0, #0]
 80020ba:	4290      	cmp	r0, r2
 80020bc:	b29b      	uxth	r3, r3
 80020be:	d012      	beq.n	80020e6 <TIM_TimeBaseInit+0x36>
 80020c0:	f502 6200 	add.w	r2, r2, #2048	; 0x800
 80020c4:	4290      	cmp	r0, r2
 80020c6:	d00e      	beq.n	80020e6 <TIM_TimeBaseInit+0x36>
 80020c8:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 80020cc:	d00b      	beq.n	80020e6 <TIM_TimeBaseInit+0x36>
 80020ce:	f5a2 3298 	sub.w	r2, r2, #77824	; 0x13000
 80020d2:	4290      	cmp	r0, r2
 80020d4:	d007      	beq.n	80020e6 <TIM_TimeBaseInit+0x36>
 80020d6:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 80020da:	4290      	cmp	r0, r2
 80020dc:	d003      	beq.n	80020e6 <TIM_TimeBaseInit+0x36>
 80020de:	f502 32a4 	add.w	r2, r2, #83968	; 0x14800
 80020e2:	4290      	cmp	r0, r2
 80020e4:	d103      	bne.n	80020ee <TIM_TimeBaseInit+0x3e>
 80020e6:	884a      	ldrh	r2, [r1, #2]
 80020e8:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 80020ec:	4313      	orrs	r3, r2
 80020ee:	4a17      	ldr	r2, [pc, #92]	; (800214c <TIM_TimeBaseInit+0x9c>)
 80020f0:	4290      	cmp	r0, r2
 80020f2:	d008      	beq.n	8002106 <TIM_TimeBaseInit+0x56>
 80020f4:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 80020f8:	4290      	cmp	r0, r2
 80020fa:	d004      	beq.n	8002106 <TIM_TimeBaseInit+0x56>
 80020fc:	f423 7340 	bic.w	r3, r3, #768	; 0x300
 8002100:	890a      	ldrh	r2, [r1, #8]
 8002102:	b29b      	uxth	r3, r3
 8002104:	4313      	orrs	r3, r2
 8002106:	8003      	strh	r3, [r0, #0]
 8002108:	684b      	ldr	r3, [r1, #4]
 800210a:	62c3      	str	r3, [r0, #44]	; 0x2c
 800210c:	880b      	ldrh	r3, [r1, #0]
 800210e:	8503      	strh	r3, [r0, #40]	; 0x28
 8002110:	4b0d      	ldr	r3, [pc, #52]	; (8002148 <TIM_TimeBaseInit+0x98>)
 8002112:	4298      	cmp	r0, r3
 8002114:	d013      	beq.n	800213e <TIM_TimeBaseInit+0x8e>
 8002116:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 800211a:	4298      	cmp	r0, r3
 800211c:	d00f      	beq.n	800213e <TIM_TimeBaseInit+0x8e>
 800211e:	f503 6340 	add.w	r3, r3, #3072	; 0xc00
 8002122:	4298      	cmp	r0, r3
 8002124:	d00b      	beq.n	800213e <TIM_TimeBaseInit+0x8e>
 8002126:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 800212a:	4298      	cmp	r0, r3
 800212c:	d007      	beq.n	800213e <TIM_TimeBaseInit+0x8e>
 800212e:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 8002132:	4298      	cmp	r0, r3
 8002134:	d003      	beq.n	800213e <TIM_TimeBaseInit+0x8e>
 8002136:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 800213a:	4298      	cmp	r0, r3
 800213c:	d101      	bne.n	8002142 <TIM_TimeBaseInit+0x92>
 800213e:	894b      	ldrh	r3, [r1, #10]
 8002140:	8603      	strh	r3, [r0, #48]	; 0x30
 8002142:	2301      	movs	r3, #1
 8002144:	6143      	str	r3, [r0, #20]
 8002146:	4770      	bx	lr
 8002148:	40012c00 	.word	0x40012c00
 800214c:	40001000 	.word	0x40001000

08002150 <TIM_Cmd>:
 8002150:	bf00      	nop
 8002152:	bf00      	nop
 8002154:	8803      	ldrh	r3, [r0, #0]
 8002156:	b119      	cbz	r1, 8002160 <TIM_Cmd+0x10>
 8002158:	b29b      	uxth	r3, r3
 800215a:	f043 0301 	orr.w	r3, r3, #1
 800215e:	e003      	b.n	8002168 <TIM_Cmd+0x18>
 8002160:	f023 0301 	bic.w	r3, r3, #1
 8002164:	041b      	lsls	r3, r3, #16
 8002166:	0c1b      	lsrs	r3, r3, #16
 8002168:	8003      	strh	r3, [r0, #0]
 800216a:	4770      	bx	lr

0800216c <TIM_OC1Init>:
 800216c:	b530      	push	{r4, r5, lr}
 800216e:	bf00      	nop
 8002170:	bf00      	nop
 8002172:	bf00      	nop
 8002174:	bf00      	nop
 8002176:	6a03      	ldr	r3, [r0, #32]
 8002178:	680c      	ldr	r4, [r1, #0]
 800217a:	f023 0301 	bic.w	r3, r3, #1
 800217e:	6203      	str	r3, [r0, #32]
 8002180:	6a03      	ldr	r3, [r0, #32]
 8002182:	6842      	ldr	r2, [r0, #4]
 8002184:	6985      	ldr	r5, [r0, #24]
 8002186:	f425 3580 	bic.w	r5, r5, #65536	; 0x10000
 800218a:	f025 0573 	bic.w	r5, r5, #115	; 0x73
 800218e:	432c      	orrs	r4, r5
 8002190:	898d      	ldrh	r5, [r1, #12]
 8002192:	f023 0302 	bic.w	r3, r3, #2
 8002196:	432b      	orrs	r3, r5
 8002198:	888d      	ldrh	r5, [r1, #4]
 800219a:	432b      	orrs	r3, r5
 800219c:	4d15      	ldr	r5, [pc, #84]	; (80021f4 <TIM_OC1Init+0x88>)
 800219e:	42a8      	cmp	r0, r5
 80021a0:	d00f      	beq.n	80021c2 <TIM_OC1Init+0x56>
 80021a2:	f505 6500 	add.w	r5, r5, #2048	; 0x800
 80021a6:	42a8      	cmp	r0, r5
 80021a8:	d00b      	beq.n	80021c2 <TIM_OC1Init+0x56>
 80021aa:	f505 6540 	add.w	r5, r5, #3072	; 0xc00
 80021ae:	42a8      	cmp	r0, r5
 80021b0:	d007      	beq.n	80021c2 <TIM_OC1Init+0x56>
 80021b2:	f505 6580 	add.w	r5, r5, #1024	; 0x400
 80021b6:	42a8      	cmp	r0, r5
 80021b8:	d003      	beq.n	80021c2 <TIM_OC1Init+0x56>
 80021ba:	f505 6580 	add.w	r5, r5, #1024	; 0x400
 80021be:	42a8      	cmp	r0, r5
 80021c0:	d111      	bne.n	80021e6 <TIM_OC1Init+0x7a>
 80021c2:	bf00      	nop
 80021c4:	bf00      	nop
 80021c6:	bf00      	nop
 80021c8:	bf00      	nop
 80021ca:	89cd      	ldrh	r5, [r1, #14]
 80021cc:	f023 0308 	bic.w	r3, r3, #8
 80021d0:	432b      	orrs	r3, r5
 80021d2:	88cd      	ldrh	r5, [r1, #6]
 80021d4:	f023 0304 	bic.w	r3, r3, #4
 80021d8:	432b      	orrs	r3, r5
 80021da:	8a0d      	ldrh	r5, [r1, #16]
 80021dc:	f422 7240 	bic.w	r2, r2, #768	; 0x300
 80021e0:	432a      	orrs	r2, r5
 80021e2:	8a4d      	ldrh	r5, [r1, #18]
 80021e4:	432a      	orrs	r2, r5
 80021e6:	6042      	str	r2, [r0, #4]
 80021e8:	688a      	ldr	r2, [r1, #8]
 80021ea:	6184      	str	r4, [r0, #24]
 80021ec:	6342      	str	r2, [r0, #52]	; 0x34
 80021ee:	6203      	str	r3, [r0, #32]
 80021f0:	bd30      	pop	{r4, r5, pc}
 80021f2:	bf00      	nop
 80021f4:	40012c00 	.word	0x40012c00

080021f8 <TIM_OC2Init>:
 80021f8:	b570      	push	{r4, r5, r6, lr}
 80021fa:	bf00      	nop
 80021fc:	bf00      	nop
 80021fe:	bf00      	nop
 8002200:	bf00      	nop
 8002202:	6a03      	ldr	r3, [r0, #32]
 8002204:	680c      	ldr	r4, [r1, #0]
 8002206:	898e      	ldrh	r6, [r1, #12]
 8002208:	f023 0310 	bic.w	r3, r3, #16
 800220c:	6203      	str	r3, [r0, #32]
 800220e:	6a05      	ldr	r5, [r0, #32]
 8002210:	6842      	ldr	r2, [r0, #4]
 8002212:	6983      	ldr	r3, [r0, #24]
 8002214:	f023 7380 	bic.w	r3, r3, #16777216	; 0x1000000
 8002218:	f423 43e6 	bic.w	r3, r3, #29440	; 0x7300
 800221c:	ea43 2404 	orr.w	r4, r3, r4, lsl #8
 8002220:	888b      	ldrh	r3, [r1, #4]
 8002222:	f025 0520 	bic.w	r5, r5, #32
 8002226:	4333      	orrs	r3, r6
 8002228:	ea45 1303 	orr.w	r3, r5, r3, lsl #4
 800222c:	4d10      	ldr	r5, [pc, #64]	; (8002270 <TIM_OC2Init+0x78>)
 800222e:	42a8      	cmp	r0, r5
 8002230:	d003      	beq.n	800223a <TIM_OC2Init+0x42>
 8002232:	f505 6500 	add.w	r5, r5, #2048	; 0x800
 8002236:	42a8      	cmp	r0, r5
 8002238:	d114      	bne.n	8002264 <TIM_OC2Init+0x6c>
 800223a:	bf00      	nop
 800223c:	bf00      	nop
 800223e:	bf00      	nop
 8002240:	bf00      	nop
 8002242:	89cd      	ldrh	r5, [r1, #14]
 8002244:	8a0e      	ldrh	r6, [r1, #16]
 8002246:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 800224a:	ea43 1305 	orr.w	r3, r3, r5, lsl #4
 800224e:	88cd      	ldrh	r5, [r1, #6]
 8002250:	f023 0340 	bic.w	r3, r3, #64	; 0x40
 8002254:	ea43 1305 	orr.w	r3, r3, r5, lsl #4
 8002258:	8a4d      	ldrh	r5, [r1, #18]
 800225a:	f422 6240 	bic.w	r2, r2, #3072	; 0xc00
 800225e:	4335      	orrs	r5, r6
 8002260:	ea42 0285 	orr.w	r2, r2, r5, lsl #2
 8002264:	6042      	str	r2, [r0, #4]
 8002266:	688a      	ldr	r2, [r1, #8]
 8002268:	6184      	str	r4, [r0, #24]
 800226a:	6382      	str	r2, [r0, #56]	; 0x38
 800226c:	6203      	str	r3, [r0, #32]
 800226e:	bd70      	pop	{r4, r5, r6, pc}
 8002270:	40012c00 	.word	0x40012c00

08002274 <TIM_CtrlPWMOutputs>:
 8002274:	bf00      	nop
 8002276:	bf00      	nop
 8002278:	6c43      	ldr	r3, [r0, #68]	; 0x44
 800227a:	b111      	cbz	r1, 8002282 <TIM_CtrlPWMOutputs+0xe>
 800227c:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
 8002280:	e001      	b.n	8002286 <TIM_CtrlPWMOutputs+0x12>
 8002282:	f3c3 030e 	ubfx	r3, r3, #0, #15
 8002286:	6443      	str	r3, [r0, #68]	; 0x44
 8002288:	4770      	bx	lr

0800228a <TIM_ClearITPendingBit>:
 800228a:	bf00      	nop
 800228c:	43c9      	mvns	r1, r1
 800228e:	b289      	uxth	r1, r1
 8002290:	6101      	str	r1, [r0, #16]
 8002292:	4770      	bx	lr

08002294 <timer_init>:
 8002294:	b530      	push	{r4, r5, lr}
 8002296:	2300      	movs	r3, #0
 8002298:	b085      	sub	sp, #20
 800229a:	491f      	ldr	r1, [pc, #124]	; (8002318 <timer_init+0x84>)
 800229c:	f44f 6280 	mov.w	r2, #1024	; 0x400
 80022a0:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 80022a4:	491d      	ldr	r1, [pc, #116]	; (800231c <timer_init+0x88>)
 80022a6:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 80022aa:	4a1d      	ldr	r2, [pc, #116]	; (8002320 <timer_init+0x8c>)
 80022ac:	2400      	movs	r4, #0
 80022ae:	f822 4013 	strh.w	r4, [r2, r3, lsl #1]
 80022b2:	3301      	adds	r3, #1
 80022b4:	2b04      	cmp	r3, #4
 80022b6:	4625      	mov	r5, r4
 80022b8:	d1ef      	bne.n	800229a <timer_init+0x6>
 80022ba:	4b1a      	ldr	r3, [pc, #104]	; (8002324 <timer_init+0x90>)
 80022bc:	2002      	movs	r0, #2
 80022be:	2101      	movs	r1, #1
 80022c0:	601c      	str	r4, [r3, #0]
 80022c2:	f7ff fee7 	bl	8002094 <RCC_APB1PeriphClockCmd>
 80022c6:	f8ad 4006 	strh.w	r4, [sp, #6]
 80022ca:	f8ad 400c 	strh.w	r4, [sp, #12]
 80022ce:	f8ad 400e 	strh.w	r4, [sp, #14]
 80022d2:	4c15      	ldr	r4, [pc, #84]	; (8002328 <timer_init+0x94>)
 80022d4:	f44f 738c 	mov.w	r3, #280	; 0x118
 80022d8:	f8ad 3004 	strh.w	r3, [sp, #4]
 80022dc:	4620      	mov	r0, r4
 80022de:	2331      	movs	r3, #49	; 0x31
 80022e0:	a901      	add	r1, sp, #4
 80022e2:	9302      	str	r3, [sp, #8]
 80022e4:	f7ff fee4 	bl	80020b0 <TIM_TimeBaseInit>
 80022e8:	4620      	mov	r0, r4
 80022ea:	2101      	movs	r1, #1
 80022ec:	f7ff ff30 	bl	8002150 <TIM_Cmd>
 80022f0:	68e3      	ldr	r3, [r4, #12]
 80022f2:	f043 0301 	orr.w	r3, r3, #1
 80022f6:	60e3      	str	r3, [r4, #12]
 80022f8:	231d      	movs	r3, #29
 80022fa:	f88d 3000 	strb.w	r3, [sp]
 80022fe:	4668      	mov	r0, sp
 8002300:	2301      	movs	r3, #1
 8002302:	f88d 5001 	strb.w	r5, [sp, #1]
 8002306:	f88d 3002 	strb.w	r3, [sp, #2]
 800230a:	f88d 3003 	strb.w	r3, [sp, #3]
 800230e:	f7ff faf3 	bl	80018f8 <NVIC_Init>
 8002312:	b005      	add	sp, #20
 8002314:	bd30      	pop	{r4, r5, pc}
 8002316:	bf00      	nop
 8002318:	200011c8 	.word	0x200011c8
 800231c:	200011bc 	.word	0x200011bc
 8002320:	200011b4 	.word	0x200011b4
 8002324:	200011c4 	.word	0x200011c4
 8002328:	40000400 	.word	0x40000400

0800232c <TIM3_IRQHandler>:
 800232c:	2300      	movs	r3, #0
 800232e:	4a10      	ldr	r2, [pc, #64]	; (8002370 <TIM3_IRQHandler+0x44>)
 8002330:	f832 1013 	ldrh.w	r1, [r2, r3, lsl #1]
 8002334:	b289      	uxth	r1, r1
 8002336:	b129      	cbz	r1, 8002344 <TIM3_IRQHandler+0x18>
 8002338:	f832 1013 	ldrh.w	r1, [r2, r3, lsl #1]
 800233c:	b289      	uxth	r1, r1
 800233e:	3901      	subs	r1, #1
 8002340:	b289      	uxth	r1, r1
 8002342:	e007      	b.n	8002354 <TIM3_IRQHandler+0x28>
 8002344:	490b      	ldr	r1, [pc, #44]	; (8002374 <TIM3_IRQHandler+0x48>)
 8002346:	f831 1013 	ldrh.w	r1, [r1, r3, lsl #1]
 800234a:	b289      	uxth	r1, r1
 800234c:	f822 1013 	strh.w	r1, [r2, r3, lsl #1]
 8002350:	4a09      	ldr	r2, [pc, #36]	; (8002378 <TIM3_IRQHandler+0x4c>)
 8002352:	2101      	movs	r1, #1
 8002354:	f822 1013 	strh.w	r1, [r2, r3, lsl #1]
 8002358:	3301      	adds	r3, #1
 800235a:	2b04      	cmp	r3, #4
 800235c:	d1e7      	bne.n	800232e <TIM3_IRQHandler+0x2>
 800235e:	4b07      	ldr	r3, [pc, #28]	; (800237c <TIM3_IRQHandler+0x50>)
 8002360:	4807      	ldr	r0, [pc, #28]	; (8002380 <TIM3_IRQHandler+0x54>)
 8002362:	681a      	ldr	r2, [r3, #0]
 8002364:	2101      	movs	r1, #1
 8002366:	3201      	adds	r2, #1
 8002368:	601a      	str	r2, [r3, #0]
 800236a:	f7ff bf8e 	b.w	800228a <TIM_ClearITPendingBit>
 800236e:	bf00      	nop
 8002370:	200011c8 	.word	0x200011c8
 8002374:	200011bc 	.word	0x200011bc
 8002378:	200011b4 	.word	0x200011b4
 800237c:	200011c4 	.word	0x200011c4
 8002380:	40000400 	.word	0x40000400

08002384 <timer_get_time>:
 8002384:	b082      	sub	sp, #8
 8002386:	b672      	cpsid	i
 8002388:	4b04      	ldr	r3, [pc, #16]	; (800239c <timer_get_time+0x18>)
 800238a:	681b      	ldr	r3, [r3, #0]
 800238c:	9301      	str	r3, [sp, #4]
 800238e:	b662      	cpsie	i
 8002390:	9801      	ldr	r0, [sp, #4]
 8002392:	230a      	movs	r3, #10
 8002394:	fbb0 f0f3 	udiv	r0, r0, r3
 8002398:	b002      	add	sp, #8
 800239a:	4770      	bx	lr
 800239c:	200011c4 	.word	0x200011c4

080023a0 <timer_delay_ms>:
 80023a0:	b513      	push	{r0, r1, r4, lr}
 80023a2:	4604      	mov	r4, r0
 80023a4:	f7ff ffee 	bl	8002384 <timer_get_time>
 80023a8:	4420      	add	r0, r4
 80023aa:	9001      	str	r0, [sp, #4]
 80023ac:	9c01      	ldr	r4, [sp, #4]
 80023ae:	f7ff ffe9 	bl	8002384 <timer_get_time>
 80023b2:	4284      	cmp	r4, r0
 80023b4:	d902      	bls.n	80023bc <timer_delay_ms+0x1c>
 80023b6:	f7ff fc3f 	bl	8001c38 <sleep>
 80023ba:	e7f7      	b.n	80023ac <timer_delay_ms+0xc>
 80023bc:	b002      	add	sp, #8
 80023be:	bd10      	pop	{r4, pc}

080023c0 <event_timer_set_period>:
 80023c0:	b672      	cpsid	i
 80023c2:	230a      	movs	r3, #10
 80023c4:	4359      	muls	r1, r3
 80023c6:	4b06      	ldr	r3, [pc, #24]	; (80023e0 <event_timer_set_period+0x20>)
 80023c8:	b289      	uxth	r1, r1
 80023ca:	f823 1010 	strh.w	r1, [r3, r0, lsl #1]
 80023ce:	4b05      	ldr	r3, [pc, #20]	; (80023e4 <event_timer_set_period+0x24>)
 80023d0:	f823 1010 	strh.w	r1, [r3, r0, lsl #1]
 80023d4:	4b04      	ldr	r3, [pc, #16]	; (80023e8 <event_timer_set_period+0x28>)
 80023d6:	2200      	movs	r2, #0
 80023d8:	f823 2010 	strh.w	r2, [r3, r0, lsl #1]
 80023dc:	b662      	cpsie	i
 80023de:	4770      	bx	lr
 80023e0:	200011c8 	.word	0x200011c8
 80023e4:	200011bc 	.word	0x200011bc
 80023e8:	200011b4 	.word	0x200011b4

080023ec <event_timer_wait>:
 80023ec:	b510      	push	{r4, lr}
 80023ee:	4604      	mov	r4, r0
 80023f0:	4b06      	ldr	r3, [pc, #24]	; (800240c <event_timer_wait+0x20>)
 80023f2:	f833 2014 	ldrh.w	r2, [r3, r4, lsl #1]
 80023f6:	b292      	uxth	r2, r2
 80023f8:	b912      	cbnz	r2, 8002400 <event_timer_wait+0x14>
 80023fa:	f7ff fc1d 	bl	8001c38 <sleep>
 80023fe:	e7f7      	b.n	80023f0 <event_timer_wait+0x4>
 8002400:	b672      	cpsid	i
 8002402:	2200      	movs	r2, #0
 8002404:	f823 2014 	strh.w	r2, [r3, r4, lsl #1]
 8002408:	b662      	cpsie	i
 800240a:	bd10      	pop	{r4, pc}
 800240c:	200011b4 	.word	0x200011b4

08002410 <GPIO_Init>:
 8002410:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002412:	bf00      	nop
 8002414:	bf00      	nop
 8002416:	bf00      	nop
 8002418:	bf00      	nop
 800241a:	2300      	movs	r3, #0
 800241c:	680e      	ldr	r6, [r1, #0]
 800241e:	461a      	mov	r2, r3
 8002420:	2501      	movs	r5, #1
 8002422:	4095      	lsls	r5, r2
 8002424:	ea05 0406 	and.w	r4, r5, r6
 8002428:	42ac      	cmp	r4, r5
 800242a:	d131      	bne.n	8002490 <GPIO_Init+0x80>
 800242c:	790d      	ldrb	r5, [r1, #4]
 800242e:	1e6f      	subs	r7, r5, #1
 8002430:	b2ff      	uxtb	r7, r7
 8002432:	2f01      	cmp	r7, #1
 8002434:	d81c      	bhi.n	8002470 <GPIO_Init+0x60>
 8002436:	bf00      	nop
 8002438:	f04f 0c03 	mov.w	ip, #3
 800243c:	6887      	ldr	r7, [r0, #8]
 800243e:	fa0c fc03 	lsl.w	ip, ip, r3
 8002442:	ea27 070c 	bic.w	r7, r7, ip
 8002446:	6087      	str	r7, [r0, #8]
 8002448:	f891 c005 	ldrb.w	ip, [r1, #5]
 800244c:	6887      	ldr	r7, [r0, #8]
 800244e:	fa0c fc03 	lsl.w	ip, ip, r3
 8002452:	ea4c 0707 	orr.w	r7, ip, r7
 8002456:	6087      	str	r7, [r0, #8]
 8002458:	bf00      	nop
 800245a:	8887      	ldrh	r7, [r0, #4]
 800245c:	b2bf      	uxth	r7, r7
 800245e:	ea27 0404 	bic.w	r4, r7, r4
 8002462:	8084      	strh	r4, [r0, #4]
 8002464:	798c      	ldrb	r4, [r1, #6]
 8002466:	8887      	ldrh	r7, [r0, #4]
 8002468:	4094      	lsls	r4, r2
 800246a:	433c      	orrs	r4, r7
 800246c:	b2a4      	uxth	r4, r4
 800246e:	8084      	strh	r4, [r0, #4]
 8002470:	2403      	movs	r4, #3
 8002472:	6807      	ldr	r7, [r0, #0]
 8002474:	409c      	lsls	r4, r3
 8002476:	43e4      	mvns	r4, r4
 8002478:	4027      	ands	r7, r4
 800247a:	6007      	str	r7, [r0, #0]
 800247c:	6807      	ldr	r7, [r0, #0]
 800247e:	409d      	lsls	r5, r3
 8002480:	433d      	orrs	r5, r7
 8002482:	6005      	str	r5, [r0, #0]
 8002484:	68c5      	ldr	r5, [r0, #12]
 8002486:	402c      	ands	r4, r5
 8002488:	79cd      	ldrb	r5, [r1, #7]
 800248a:	409d      	lsls	r5, r3
 800248c:	432c      	orrs	r4, r5
 800248e:	60c4      	str	r4, [r0, #12]
 8002490:	3201      	adds	r2, #1
 8002492:	2a10      	cmp	r2, #16
 8002494:	f103 0302 	add.w	r3, r3, #2
 8002498:	d1c2      	bne.n	8002420 <GPIO_Init+0x10>
 800249a:	bdf0      	pop	{r4, r5, r6, r7, pc}

0800249c <GPIO_SetBits>:
 800249c:	bf00      	nop
 800249e:	bf00      	nop
 80024a0:	6181      	str	r1, [r0, #24]
 80024a2:	4770      	bx	lr

080024a4 <GPIO_ResetBits>:
 80024a4:	bf00      	nop
 80024a6:	bf00      	nop
 80024a8:	8501      	strh	r1, [r0, #40]	; 0x28
 80024aa:	4770      	bx	lr

080024ac <GPIO_PinAFConfig>:
 80024ac:	b510      	push	{r4, lr}
 80024ae:	bf00      	nop
 80024b0:	bf00      	nop
 80024b2:	bf00      	nop
 80024b4:	f001 0307 	and.w	r3, r1, #7
 80024b8:	08c9      	lsrs	r1, r1, #3
 80024ba:	eb00 0081 	add.w	r0, r0, r1, lsl #2
 80024be:	009b      	lsls	r3, r3, #2
 80024c0:	6a04      	ldr	r4, [r0, #32]
 80024c2:	210f      	movs	r1, #15
 80024c4:	4099      	lsls	r1, r3
 80024c6:	ea24 0101 	bic.w	r1, r4, r1
 80024ca:	6201      	str	r1, [r0, #32]
 80024cc:	6a01      	ldr	r1, [r0, #32]
 80024ce:	fa02 f303 	lsl.w	r3, r2, r3
 80024d2:	430b      	orrs	r3, r1
 80024d4:	6203      	str	r3, [r0, #32]
 80024d6:	bd10      	pop	{r4, pc}

080024d8 <gpio_init>:
 80024d8:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
 80024dc:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 80024e0:	2101      	movs	r1, #1
 80024e2:	f7ff fdbb 	bl	800205c <RCC_AHBPeriphClockCmd>
 80024e6:	4d21      	ldr	r5, [pc, #132]	; (800256c <gpio_init+0x94>)
 80024e8:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 80024ec:	2101      	movs	r1, #1
 80024ee:	f7ff fdb5 	bl	800205c <RCC_AHBPeriphClockCmd>
 80024f2:	f44f 2000 	mov.w	r0, #524288	; 0x80000
 80024f6:	2101      	movs	r1, #1
 80024f8:	f7ff fdb0 	bl	800205c <RCC_AHBPeriphClockCmd>
 80024fc:	2400      	movs	r4, #0
 80024fe:	2603      	movs	r6, #3
 8002500:	f44f 4900 	mov.w	r9, #32768	; 0x8000
 8002504:	2701      	movs	r7, #1
 8002506:	4628      	mov	r0, r5
 8002508:	4669      	mov	r1, sp
 800250a:	f88d 7004 	strb.w	r7, [sp, #4]
 800250e:	f8cd 9000 	str.w	r9, [sp]
 8002512:	f88d 4006 	strb.w	r4, [sp, #6]
 8002516:	f88d 6005 	strb.w	r6, [sp, #5]
 800251a:	f88d 4007 	strb.w	r4, [sp, #7]
 800251e:	f7ff ff77 	bl	8002410 <GPIO_Init>
 8002522:	f88d 7004 	strb.w	r7, [sp, #4]
 8002526:	4f12      	ldr	r7, [pc, #72]	; (8002570 <gpio_init+0x98>)
 8002528:	f88d 4006 	strb.w	r4, [sp, #6]
 800252c:	f44f 5800 	mov.w	r8, #8192	; 0x2000
 8002530:	4638      	mov	r0, r7
 8002532:	4669      	mov	r1, sp
 8002534:	f8cd 8000 	str.w	r8, [sp]
 8002538:	f88d 6005 	strb.w	r6, [sp, #5]
 800253c:	f88d 4007 	strb.w	r4, [sp, #7]
 8002540:	f7ff ff66 	bl	8002410 <GPIO_Init>
 8002544:	f44f 7300 	mov.w	r3, #512	; 0x200
 8002548:	4628      	mov	r0, r5
 800254a:	4669      	mov	r1, sp
 800254c:	9300      	str	r3, [sp, #0]
 800254e:	f88d 4004 	strb.w	r4, [sp, #4]
 8002552:	f88d 6005 	strb.w	r6, [sp, #5]
 8002556:	f88d 4007 	strb.w	r4, [sp, #7]
 800255a:	f7ff ff59 	bl	8002410 <GPIO_Init>
 800255e:	f8c5 9018 	str.w	r9, [r5, #24]
 8002562:	f8c7 8018 	str.w	r8, [r7, #24]
 8002566:	b003      	add	sp, #12
 8002568:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 800256c:	48000400 	.word	0x48000400
 8002570:	48000800 	.word	0x48000800

08002574 <led_on>:
 8002574:	0402      	lsls	r2, r0, #16
 8002576:	d503      	bpl.n	8002580 <led_on+0xc>
 8002578:	4b05      	ldr	r3, [pc, #20]	; (8002590 <led_on+0x1c>)
 800257a:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 800257e:	619a      	str	r2, [r3, #24]
 8002580:	0483      	lsls	r3, r0, #18
 8002582:	d503      	bpl.n	800258c <led_on+0x18>
 8002584:	4b03      	ldr	r3, [pc, #12]	; (8002594 <led_on+0x20>)
 8002586:	f44f 5200 	mov.w	r2, #8192	; 0x2000
 800258a:	851a      	strh	r2, [r3, #40]	; 0x28
 800258c:	4770      	bx	lr
 800258e:	bf00      	nop
 8002590:	48000400 	.word	0x48000400
 8002594:	48000800 	.word	0x48000800

08002598 <led_off>:
 8002598:	0403      	lsls	r3, r0, #16
 800259a:	d503      	bpl.n	80025a4 <led_off+0xc>
 800259c:	4b05      	ldr	r3, [pc, #20]	; (80025b4 <led_off+0x1c>)
 800259e:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 80025a2:	851a      	strh	r2, [r3, #40]	; 0x28
 80025a4:	0481      	lsls	r1, r0, #18
 80025a6:	d503      	bpl.n	80025b0 <led_off+0x18>
 80025a8:	4b03      	ldr	r3, [pc, #12]	; (80025b8 <led_off+0x20>)
 80025aa:	f44f 5200 	mov.w	r2, #8192	; 0x2000
 80025ae:	619a      	str	r2, [r3, #24]
 80025b0:	4770      	bx	lr
 80025b2:	bf00      	nop
 80025b4:	48000400 	.word	0x48000400
 80025b8:	48000800 	.word	0x48000800

080025bc <get_key>:
 80025bc:	4b02      	ldr	r3, [pc, #8]	; (80025c8 <get_key+0xc>)
 80025be:	8a18      	ldrh	r0, [r3, #16]
 80025c0:	43c0      	mvns	r0, r0
 80025c2:	f400 7000 	and.w	r0, r0, #512	; 0x200
 80025c6:	4770      	bx	lr
 80025c8:	48000400 	.word	0x48000400

080025cc <drv8834_run>:
 80025cc:	1e02      	subs	r2, r0, #0
 80025ce:	4b18      	ldr	r3, [pc, #96]	; (8002630 <drv8834_run+0x64>)
 80025d0:	dd09      	ble.n	80025e6 <drv8834_run+0x1a>
 80025d2:	6998      	ldr	r0, [r3, #24]
 80025d4:	f040 0008 	orr.w	r0, r0, #8
 80025d8:	6198      	str	r0, [r3, #24]
 80025da:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 80025de:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 80025e2:	6198      	str	r0, [r3, #24]
 80025e4:	e00b      	b.n	80025fe <drv8834_run+0x32>
 80025e6:	8d18      	ldrh	r0, [r3, #40]	; 0x28
 80025e8:	b280      	uxth	r0, r0
 80025ea:	f040 0008 	orr.w	r0, r0, #8
 80025ee:	8518      	strh	r0, [r3, #40]	; 0x28
 80025f0:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 80025f4:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 80025f8:	4252      	negs	r2, r2
 80025fa:	8518      	strh	r0, [r3, #40]	; 0x28
 80025fc:	b212      	sxth	r2, r2
 80025fe:	2900      	cmp	r1, #0
 8002600:	4b0b      	ldr	r3, [pc, #44]	; (8002630 <drv8834_run+0x64>)
 8002602:	dd05      	ble.n	8002610 <drv8834_run+0x44>
 8002604:	8d18      	ldrh	r0, [r3, #40]	; 0x28
 8002606:	b280      	uxth	r0, r0
 8002608:	f040 0020 	orr.w	r0, r0, #32
 800260c:	8518      	strh	r0, [r3, #40]	; 0x28
 800260e:	e005      	b.n	800261c <drv8834_run+0x50>
 8002610:	6998      	ldr	r0, [r3, #24]
 8002612:	4249      	negs	r1, r1
 8002614:	f040 0020 	orr.w	r0, r0, #32
 8002618:	6198      	str	r0, [r3, #24]
 800261a:	b209      	sxth	r1, r1
 800261c:	2964      	cmp	r1, #100	; 0x64
 800261e:	bfb4      	ite	lt
 8002620:	4608      	movlt	r0, r1
 8002622:	2064      	movge	r0, #100	; 0x64
 8002624:	2a64      	cmp	r2, #100	; 0x64
 8002626:	bfb4      	ite	lt
 8002628:	4611      	movlt	r1, r2
 800262a:	2164      	movge	r1, #100	; 0x64
 800262c:	f000 b844 	b.w	80026b8 <pwm_set>
 8002630:	48000400 	.word	0x48000400

08002634 <drv8834_init>:
 8002634:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 8002636:	4d1f      	ldr	r5, [pc, #124]	; (80026b4 <drv8834_init+0x80>)
 8002638:	2400      	movs	r4, #0
 800263a:	2603      	movs	r6, #3
 800263c:	2338      	movs	r3, #56	; 0x38
 800263e:	2701      	movs	r7, #1
 8002640:	4628      	mov	r0, r5
 8002642:	4669      	mov	r1, sp
 8002644:	9300      	str	r3, [sp, #0]
 8002646:	f88d 7004 	strb.w	r7, [sp, #4]
 800264a:	f88d 4006 	strb.w	r4, [sp, #6]
 800264e:	f88d 6005 	strb.w	r6, [sp, #5]
 8002652:	f88d 4007 	strb.w	r4, [sp, #7]
 8002656:	f7ff fedb 	bl	8002410 <GPIO_Init>
 800265a:	2308      	movs	r3, #8
 800265c:	9300      	str	r3, [sp, #0]
 800265e:	4628      	mov	r0, r5
 8002660:	2302      	movs	r3, #2
 8002662:	4669      	mov	r1, sp
 8002664:	f88d 3004 	strb.w	r3, [sp, #4]
 8002668:	f88d 4006 	strb.w	r4, [sp, #6]
 800266c:	f88d 6005 	strb.w	r6, [sp, #5]
 8002670:	f88d 4007 	strb.w	r4, [sp, #7]
 8002674:	f7ff fecc 	bl	8002410 <GPIO_Init>
 8002678:	220f      	movs	r2, #15
 800267a:	4628      	mov	r0, r5
 800267c:	4631      	mov	r1, r6
 800267e:	f7ff ff15 	bl	80024ac <GPIO_PinAFConfig>
 8002682:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8002686:	4669      	mov	r1, sp
 8002688:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 800268c:	9300      	str	r3, [sp, #0]
 800268e:	f88d 7004 	strb.w	r7, [sp, #4]
 8002692:	f88d 4006 	strb.w	r4, [sp, #6]
 8002696:	f88d 6005 	strb.w	r6, [sp, #5]
 800269a:	f88d 4007 	strb.w	r4, [sp, #7]
 800269e:	f7ff feb7 	bl	8002410 <GPIO_Init>
 80026a2:	2310      	movs	r3, #16
 80026a4:	852b      	strh	r3, [r5, #40]	; 0x28
 80026a6:	4620      	mov	r0, r4
 80026a8:	4621      	mov	r1, r4
 80026aa:	f7ff ff8f 	bl	80025cc <drv8834_run>
 80026ae:	b003      	add	sp, #12
 80026b0:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80026b2:	bf00      	nop
 80026b4:	48000400 	.word	0x48000400

080026b8 <pwm_set>:
 80026b8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80026bc:	b086      	sub	sp, #24
 80026be:	2370      	movs	r3, #112	; 0x70
 80026c0:	9301      	str	r3, [sp, #4]
 80026c2:	2301      	movs	r3, #1
 80026c4:	f8ad 3008 	strh.w	r3, [sp, #8]
 80026c8:	2304      	movs	r3, #4
 80026ca:	f8ad 300a 	strh.w	r3, [sp, #10]
 80026ce:	4f17      	ldr	r7, [pc, #92]	; (800272c <pwm_set+0x74>)
 80026d0:	4c17      	ldr	r4, [pc, #92]	; (8002730 <pwm_set+0x78>)
 80026d2:	2302      	movs	r3, #2
 80026d4:	f8ad 3010 	strh.w	r3, [sp, #16]
 80026d8:	2300      	movs	r3, #0
 80026da:	f8ad 3012 	strh.w	r3, [sp, #18]
 80026de:	f8ad 3016 	strh.w	r3, [sp, #22]
 80026e2:	683b      	ldr	r3, [r7, #0]
 80026e4:	f242 7610 	movw	r6, #10000	; 0x2710
 80026e8:	fbb3 f3f6 	udiv	r3, r3, r6
 80026ec:	3b02      	subs	r3, #2
 80026ee:	4358      	muls	r0, r3
 80026f0:	2564      	movs	r5, #100	; 0x64
 80026f2:	fbb0 f3f5 	udiv	r3, r0, r5
 80026f6:	f44f 7280 	mov.w	r2, #256	; 0x100
 80026fa:	4620      	mov	r0, r4
 80026fc:	4688      	mov	r8, r1
 80026fe:	a901      	add	r1, sp, #4
 8002700:	f8ad 2014 	strh.w	r2, [sp, #20]
 8002704:	9303      	str	r3, [sp, #12]
 8002706:	f7ff fd31 	bl	800216c <TIM_OC1Init>
 800270a:	683b      	ldr	r3, [r7, #0]
 800270c:	fbb3 f6f6 	udiv	r6, r3, r6
 8002710:	3e02      	subs	r6, #2
 8002712:	fb06 f808 	mul.w	r8, r6, r8
 8002716:	fbb8 f5f5 	udiv	r5, r8, r5
 800271a:	4620      	mov	r0, r4
 800271c:	a901      	add	r1, sp, #4
 800271e:	9503      	str	r5, [sp, #12]
 8002720:	f7ff fd6a 	bl	80021f8 <TIM_OC2Init>
 8002724:	b006      	add	sp, #24
 8002726:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800272a:	bf00      	nop
 800272c:	20000250 	.word	0x20000250
 8002730:	40012c00 	.word	0x40012c00

08002734 <pwm_init>:
 8002734:	b530      	push	{r4, r5, lr}
 8002736:	f44f 6000 	mov.w	r0, #2048	; 0x800
 800273a:	b087      	sub	sp, #28
 800273c:	2101      	movs	r1, #1
 800273e:	f7ff fc9b 	bl	8002078 <RCC_APB2PeriphClockCmd>
 8002742:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 8002746:	2101      	movs	r1, #1
 8002748:	f7ff fc88 	bl	800205c <RCC_AHBPeriphClockCmd>
 800274c:	4c1d      	ldr	r4, [pc, #116]	; (80027c4 <pwm_init+0x90>)
 800274e:	4d1e      	ldr	r5, [pc, #120]	; (80027c8 <pwm_init+0x94>)
 8002750:	f44f 43c0 	mov.w	r3, #24576	; 0x6000
 8002754:	9301      	str	r3, [sp, #4]
 8002756:	2302      	movs	r3, #2
 8002758:	f88d 3008 	strb.w	r3, [sp, #8]
 800275c:	4620      	mov	r0, r4
 800275e:	2303      	movs	r3, #3
 8002760:	a901      	add	r1, sp, #4
 8002762:	f88d 3009 	strb.w	r3, [sp, #9]
 8002766:	f7ff fe53 	bl	8002410 <GPIO_Init>
 800276a:	4620      	mov	r0, r4
 800276c:	210d      	movs	r1, #13
 800276e:	2206      	movs	r2, #6
 8002770:	f7ff fe9c 	bl	80024ac <GPIO_PinAFConfig>
 8002774:	4620      	mov	r0, r4
 8002776:	210e      	movs	r1, #14
 8002778:	2206      	movs	r2, #6
 800277a:	f7ff fe97 	bl	80024ac <GPIO_PinAFConfig>
 800277e:	4b13      	ldr	r3, [pc, #76]	; (80027cc <pwm_init+0x98>)
 8002780:	681a      	ldr	r2, [r3, #0]
 8002782:	f242 7310 	movw	r3, #10000	; 0x2710
 8002786:	fbb2 f3f3 	udiv	r3, r2, r3
 800278a:	2400      	movs	r4, #0
 800278c:	3b01      	subs	r3, #1
 800278e:	4628      	mov	r0, r5
 8002790:	a903      	add	r1, sp, #12
 8002792:	9304      	str	r3, [sp, #16]
 8002794:	f8ad 400c 	strh.w	r4, [sp, #12]
 8002798:	f8ad 400e 	strh.w	r4, [sp, #14]
 800279c:	f8ad 4014 	strh.w	r4, [sp, #20]
 80027a0:	f8ad 4016 	strh.w	r4, [sp, #22]
 80027a4:	f7ff fc84 	bl	80020b0 <TIM_TimeBaseInit>
 80027a8:	4620      	mov	r0, r4
 80027aa:	4621      	mov	r1, r4
 80027ac:	f7ff ff84 	bl	80026b8 <pwm_set>
 80027b0:	4628      	mov	r0, r5
 80027b2:	2101      	movs	r1, #1
 80027b4:	f7ff fccc 	bl	8002150 <TIM_Cmd>
 80027b8:	4628      	mov	r0, r5
 80027ba:	2101      	movs	r1, #1
 80027bc:	f7ff fd5a 	bl	8002274 <TIM_CtrlPWMOutputs>
 80027c0:	b007      	add	sp, #28
 80027c2:	bd30      	pop	{r4, r5, pc}
 80027c4:	48000400 	.word	0x48000400
 80027c8:	40012c00 	.word	0x40012c00
 80027cc:	20000250 	.word	0x20000250

080027d0 <_init>:
 80027d0:	e1a0c00d 	mov	ip, sp
 80027d4:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
 80027d8:	e24cb004 	sub	fp, ip, #4
 80027dc:	e24bd028 	sub	sp, fp, #40	; 0x28
 80027e0:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
 80027e4:	e12fff1e 	bx	lr

080027e8 <_fini>:
 80027e8:	e1a0c00d 	mov	ip, sp
 80027ec:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
 80027f0:	e24cb004 	sub	fp, ip, #4
 80027f4:	e24bd028 	sub	sp, fp, #40	; 0x28
 80027f8:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
 80027fc:	e12fff1e 	bx	lr
 8002800:	69647473 	.word	0x69647473
 8002804:	6e69206f 	.word	0x6e69206f
 8002808:	64207469 	.word	0x64207469
 800280c:	0a656e6f 	.word	0x0a656e6f
 8002810:	00          	.byte	0x00
 8002811:	0a          	.byte	0x0a
 8002812:	6577      	.short	0x6577
 8002814:	6d6f636c 	.word	0x6d6f636c
 8002818:	6f742065 	.word	0x6f742065
 800281c:	7a755320 	.word	0x7a755320
 8002820:	4f616875 	.word	0x4f616875
 8002824:	5f5e2053 	.word	0x5f5e2053
 8002828:	2e32205e 	.word	0x2e32205e
 800282c:	0a362e30 	.word	0x0a362e30
 8002830:	4c495542 	.word	0x4c495542
 8002834:	614a2044 	.word	0x614a2044
 8002838:	3832206e 	.word	0x3832206e
 800283c:	31303220 	.word	0x31303220
 8002840:	31312036 	.word	0x31312036
 8002844:	3a34353a 	.word	0x3a34353a
 8002848:	000a3330 	.word	0x000a3330
 800284c:	74737973 	.word	0x74737973
 8002850:	61206d65 	.word	0x61206d65
 8002854:	74726f62 	.word	0x74726f62
 8002858:	000a6465 	.word	0x000a6465
 800285c:	6f727265 	.word	0x6f727265
 8002860:	6f632072 	.word	0x6f632072
 8002864:	25206564 	.word	0x25206564
 8002868:	75253a75 	.word	0x75253a75
 800286c:	0000000a 	.word	0x0000000a

08002870 <__EH_FRAME_BEGIN__>:
 8002870:	00000000                                ....
