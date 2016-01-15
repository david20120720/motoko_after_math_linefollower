
bin/main.elf:     file format elf32-littlearm


Disassembly of section .text:

08000188 <main>:
 8000188:	b508      	push	{r3, lr}
 800018a:	f001 f884 	bl	8001296 <lib_low_level_init>
 800018e:	f000 f921 	bl	80003d4 <lib_os_init>
 8000192:	4905      	ldr	r1, [pc, #20]	; (80001a8 <main+0x20>)
 8000194:	4805      	ldr	r0, [pc, #20]	; (80001ac <main+0x24>)
 8000196:	f44f 7200 	mov.w	r2, #512	; 0x200
 800019a:	2306      	movs	r3, #6
 800019c:	f000 f88a 	bl	80002b4 <create_thread>
 80001a0:	f000 f882 	bl	80002a8 <kernel_start>
 80001a4:	2000      	movs	r0, #0
 80001a6:	bd08      	pop	{r3, pc}
 80001a8:	20000484 	.word	0x20000484
 80001ac:	08001055 	.word	0x08001055

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
 80001c8:	200006cc 	.word	0x200006cc
 80001cc:	20000684 	.word	0x20000684

080001d0 <null_thread>:
 80001d0:	b508      	push	{r3, lr}
 80001d2:	f001 fa11 	bl	80015f8 <sleep>
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
 8000234:	20000684 	.word	0x20000684
 8000238:	200006cc 	.word	0x200006cc

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
 800027c:	200006cc 	.word	0x200006cc
 8000280:	20000684 	.word	0x20000684

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
 80002a4:	200006cc 	.word	0x200006cc

080002a8 <kernel_start>:
 80002a8:	b508      	push	{r3, lr}
 80002aa:	f001 f993 	bl	80015d4 <sys_tick_init>
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
 8000320:	20000684 	.word	0x20000684
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
 800035c:	20000684 	.word	0x20000684
 8000360:	200006cc 	.word	0x200006cc
 8000364:	080001d1 	.word	0x080001d1
 8000368:	200006d0 	.word	0x200006d0

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
 80003ac:	20000684 	.word	0x20000684

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
 80003d0:	20000684 	.word	0x20000684

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
 80003f6:	f000 fe95 	bl	8001124 <uart_write>
 80003fa:	4620      	mov	r0, r4
 80003fc:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8000400:	f000 b926 	b.w	8000650 <mutex_unlock>
 8000404:	20000750 	.word	0x20000750

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
 800042c:	2000075c 	.word	0x2000075c

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
 800057c:	20000758 	.word	0x20000758

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
 80005bc:	20000750 	.word	0x20000750
 80005c0:	20000754 	.word	0x20000754
 80005c4:	2000075c 	.word	0x2000075c
 80005c8:	20000758 	.word	0x20000758
 80005cc:	080021c0 	.word	0x080021c0

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
 80005fc:	20000760 	.word	0x20000760
 8000600:	20000778 	.word	0x20000778

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
 800066a:	f000 ff5a 	bl	8001522 <i2c_read_reg>
 800066e:	2129      	movs	r1, #41	; 0x29
 8000670:	4605      	mov	r5, r0
 8000672:	20d4      	movs	r0, #212	; 0xd4
 8000674:	f000 ff55 	bl	8001522 <i2c_read_reg>
 8000678:	4c38      	ldr	r4, [pc, #224]	; (800075c <lsm9ds0_read+0xf8>)
 800067a:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 800067e:	81a0      	strh	r0, [r4, #12]
 8000680:	212a      	movs	r1, #42	; 0x2a
 8000682:	20d4      	movs	r0, #212	; 0xd4
 8000684:	f000 ff4d 	bl	8001522 <i2c_read_reg>
 8000688:	212b      	movs	r1, #43	; 0x2b
 800068a:	4605      	mov	r5, r0
 800068c:	20d4      	movs	r0, #212	; 0xd4
 800068e:	f000 ff48 	bl	8001522 <i2c_read_reg>
 8000692:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000696:	81e0      	strh	r0, [r4, #14]
 8000698:	212c      	movs	r1, #44	; 0x2c
 800069a:	20d4      	movs	r0, #212	; 0xd4
 800069c:	f000 ff41 	bl	8001522 <i2c_read_reg>
 80006a0:	212d      	movs	r1, #45	; 0x2d
 80006a2:	4605      	mov	r5, r0
 80006a4:	20d4      	movs	r0, #212	; 0xd4
 80006a6:	f000 ff3c 	bl	8001522 <i2c_read_reg>
 80006aa:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 80006ae:	8220      	strh	r0, [r4, #16]
 80006b0:	2108      	movs	r1, #8
 80006b2:	203c      	movs	r0, #60	; 0x3c
 80006b4:	f000 ff35 	bl	8001522 <i2c_read_reg>
 80006b8:	2109      	movs	r1, #9
 80006ba:	4605      	mov	r5, r0
 80006bc:	203c      	movs	r0, #60	; 0x3c
 80006be:	f000 ff30 	bl	8001522 <i2c_read_reg>
 80006c2:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 80006c6:	80e0      	strh	r0, [r4, #6]
 80006c8:	210a      	movs	r1, #10
 80006ca:	203c      	movs	r0, #60	; 0x3c
 80006cc:	f000 ff29 	bl	8001522 <i2c_read_reg>
 80006d0:	210b      	movs	r1, #11
 80006d2:	4605      	mov	r5, r0
 80006d4:	203c      	movs	r0, #60	; 0x3c
 80006d6:	f000 ff24 	bl	8001522 <i2c_read_reg>
 80006da:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 80006de:	8120      	strh	r0, [r4, #8]
 80006e0:	210c      	movs	r1, #12
 80006e2:	203c      	movs	r0, #60	; 0x3c
 80006e4:	f000 ff1d 	bl	8001522 <i2c_read_reg>
 80006e8:	210d      	movs	r1, #13
 80006ea:	4605      	mov	r5, r0
 80006ec:	203c      	movs	r0, #60	; 0x3c
 80006ee:	f000 ff18 	bl	8001522 <i2c_read_reg>
 80006f2:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 80006f6:	8160      	strh	r0, [r4, #10]
 80006f8:	2128      	movs	r1, #40	; 0x28
 80006fa:	203c      	movs	r0, #60	; 0x3c
 80006fc:	f000 ff11 	bl	8001522 <i2c_read_reg>
 8000700:	2129      	movs	r1, #41	; 0x29
 8000702:	4605      	mov	r5, r0
 8000704:	203c      	movs	r0, #60	; 0x3c
 8000706:	f000 ff0c 	bl	8001522 <i2c_read_reg>
 800070a:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 800070e:	8020      	strh	r0, [r4, #0]
 8000710:	212a      	movs	r1, #42	; 0x2a
 8000712:	203c      	movs	r0, #60	; 0x3c
 8000714:	f000 ff05 	bl	8001522 <i2c_read_reg>
 8000718:	212b      	movs	r1, #43	; 0x2b
 800071a:	4605      	mov	r5, r0
 800071c:	203c      	movs	r0, #60	; 0x3c
 800071e:	f000 ff00 	bl	8001522 <i2c_read_reg>
 8000722:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000726:	8060      	strh	r0, [r4, #2]
 8000728:	212c      	movs	r1, #44	; 0x2c
 800072a:	203c      	movs	r0, #60	; 0x3c
 800072c:	f000 fef9 	bl	8001522 <i2c_read_reg>
 8000730:	212d      	movs	r1, #45	; 0x2d
 8000732:	4605      	mov	r5, r0
 8000734:	203c      	movs	r0, #60	; 0x3c
 8000736:	f000 fef4 	bl	8001522 <i2c_read_reg>
 800073a:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 800073e:	80a0      	strh	r0, [r4, #4]
 8000740:	2105      	movs	r1, #5
 8000742:	203c      	movs	r0, #60	; 0x3c
 8000744:	f000 feed 	bl	8001522 <i2c_read_reg>
 8000748:	2106      	movs	r1, #6
 800074a:	4605      	mov	r5, r0
 800074c:	203c      	movs	r0, #60	; 0x3c
 800074e:	f000 fee8 	bl	8001522 <i2c_read_reg>
 8000752:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000756:	8320      	strh	r0, [r4, #24]
 8000758:	bd38      	pop	{r3, r4, r5, pc}
 800075a:	bf00      	nop
 800075c:	200007b8 	.word	0x200007b8

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
 8000786:	f000 fecc 	bl	8001522 <i2c_read_reg>
 800078a:	28d4      	cmp	r0, #212	; 0xd4
 800078c:	4606      	mov	r6, r0
 800078e:	d14e      	bne.n	800082e <lsm9ds0_init+0xce>
 8000790:	203c      	movs	r0, #60	; 0x3c
 8000792:	210f      	movs	r1, #15
 8000794:	f000 fec5 	bl	8001522 <i2c_read_reg>
 8000798:	2849      	cmp	r0, #73	; 0x49
 800079a:	bf18      	it	ne
 800079c:	2602      	movne	r6, #2
 800079e:	d147      	bne.n	8000830 <lsm9ds0_init+0xd0>
 80007a0:	4630      	mov	r0, r6
 80007a2:	2120      	movs	r1, #32
 80007a4:	22ff      	movs	r2, #255	; 0xff
 80007a6:	f000 fea9 	bl	80014fc <i2c_write_reg>
 80007aa:	4630      	mov	r0, r6
 80007ac:	2123      	movs	r1, #35	; 0x23
 80007ae:	2218      	movs	r2, #24
 80007b0:	f000 fea4 	bl	80014fc <i2c_write_reg>
 80007b4:	203c      	movs	r0, #60	; 0x3c
 80007b6:	211f      	movs	r1, #31
 80007b8:	4622      	mov	r2, r4
 80007ba:	f000 fe9f 	bl	80014fc <i2c_write_reg>
 80007be:	203c      	movs	r0, #60	; 0x3c
 80007c0:	2120      	movs	r1, #32
 80007c2:	2267      	movs	r2, #103	; 0x67
 80007c4:	f000 fe9a 	bl	80014fc <i2c_write_reg>
 80007c8:	203c      	movs	r0, #60	; 0x3c
 80007ca:	2121      	movs	r1, #33	; 0x21
 80007cc:	4622      	mov	r2, r4
 80007ce:	f000 fe95 	bl	80014fc <i2c_write_reg>
 80007d2:	203c      	movs	r0, #60	; 0x3c
 80007d4:	2124      	movs	r1, #36	; 0x24
 80007d6:	22f4      	movs	r2, #244	; 0xf4
 80007d8:	f000 fe90 	bl	80014fc <i2c_write_reg>
 80007dc:	203c      	movs	r0, #60	; 0x3c
 80007de:	2125      	movs	r1, #37	; 0x25
 80007e0:	4622      	mov	r2, r4
 80007e2:	f000 fe8b 	bl	80014fc <i2c_write_reg>
 80007e6:	203c      	movs	r0, #60	; 0x3c
 80007e8:	2126      	movs	r1, #38	; 0x26
 80007ea:	2280      	movs	r2, #128	; 0x80
 80007ec:	f000 fe86 	bl	80014fc <i2c_write_reg>
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
 8000838:	200007b8 	.word	0x200007b8

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
 8000864:	f001 fab4 	bl	8001dd0 <GPIO_Init>
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
 8000888:	f001 faa2 	bl	8001dd0 <GPIO_Init>
 800088c:	852c      	strh	r4, [r5, #40]	; 0x28
 800088e:	f7ff ffd5 	bl	800083c <rgb_i2c_delay>
 8000892:	b003      	add	sp, #12
 8000894:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000896:	bf00      	nop
 8000898:	2000082c 	.word	0x2000082c
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
 80008be:	f001 fa87 	bl	8001dd0 <GPIO_Init>
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
 80008e0:	f001 fa76 	bl	8001dd0 <GPIO_Init>
 80008e4:	61a5      	str	r5, [r4, #24]
 80008e6:	f7ff ffa9 	bl	800083c <rgb_i2c_delay>
 80008ea:	b002      	add	sp, #8
 80008ec:	bd70      	pop	{r4, r5, r6, pc}
 80008ee:	bf00      	nop
 80008f0:	2000082c 	.word	0x2000082c
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
 800093a:	f001 fa49 	bl	8001dd0 <GPIO_Init>
 800093e:	783b      	ldrb	r3, [r7, #0]
 8000940:	f88d 4004 	strb.w	r4, [sp, #4]
 8000944:	4669      	mov	r1, sp
 8000946:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 800094a:	9300      	str	r3, [sp, #0]
 800094c:	f88d 4007 	strb.w	r4, [sp, #7]
 8000950:	f88d 6005 	strb.w	r6, [sp, #5]
 8000954:	f001 fa3c 	bl	8001dd0 <GPIO_Init>
 8000958:	7839      	ldrb	r1, [r7, #0]
 800095a:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 800095e:	f001 fa7d 	bl	8001e5c <GPIO_SetBits>
 8000962:	f88d 4004 	strb.w	r4, [sp, #4]
 8000966:	f88d 4007 	strb.w	r4, [sp, #7]
 800096a:	4c0b      	ldr	r4, [pc, #44]	; (8000998 <rgb_i2c_init+0x84>)
 800096c:	9500      	str	r5, [sp, #0]
 800096e:	4620      	mov	r0, r4
 8000970:	4669      	mov	r1, sp
 8000972:	f88d 6005 	strb.w	r6, [sp, #5]
 8000976:	f001 fa2b 	bl	8001dd0 <GPIO_Init>
 800097a:	4620      	mov	r0, r4
 800097c:	4629      	mov	r1, r5
 800097e:	f001 fa6d 	bl	8001e5c <GPIO_SetBits>
 8000982:	f7ff ffc0 	bl	8000906 <RGBSetHighSCL>
 8000986:	f7ff ff5b 	bl	8000840 <RGBSetLowSDA>
 800098a:	f7ff ff89 	bl	80008a0 <RGBSetHighSDA>
 800098e:	b003      	add	sp, #12
 8000990:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000992:	bf00      	nop
 8000994:	2000082c 	.word	0x2000082c
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
	...

08000b08 <rgb_init>:
 8000b08:	4b1d      	ldr	r3, [pc, #116]	; (8000b80 <rgb_init+0x78>)
 8000b0a:	b570      	push	{r4, r5, r6, lr}
 8000b0c:	2409      	movs	r4, #9
 8000b0e:	2200      	movs	r2, #0
 8000b10:	3c01      	subs	r4, #1
 8000b12:	801a      	strh	r2, [r3, #0]
 8000b14:	825a      	strh	r2, [r3, #18]
 8000b16:	849a      	strh	r2, [r3, #36]	; 0x24
 8000b18:	f8a3 2048 	strh.w	r2, [r3, #72]	; 0x48
 8000b1c:	86da      	strh	r2, [r3, #54]	; 0x36
 8000b1e:	f103 0302 	add.w	r3, r3, #2
 8000b22:	d1f4      	bne.n	8000b0e <rgb_init+0x6>
 8000b24:	4d17      	ldr	r5, [pc, #92]	; (8000b84 <rgb_init+0x7c>)
 8000b26:	f64f 76ff 	movw	r6, #65535	; 0xffff
 8000b2a:	802e      	strh	r6, [r5, #0]
 8000b2c:	f7ff fef2 	bl	8000914 <rgb_i2c_init>
 8000b30:	2072      	movs	r0, #114	; 0x72
 8000b32:	2181      	movs	r1, #129	; 0x81
 8000b34:	22ff      	movs	r2, #255	; 0xff
 8000b36:	f7ff ffd3 	bl	8000ae0 <rgb_i2c_write_reg>
 8000b3a:	2072      	movs	r0, #114	; 0x72
 8000b3c:	2183      	movs	r1, #131	; 0x83
 8000b3e:	22ff      	movs	r2, #255	; 0xff
 8000b40:	f7ff ffce 	bl	8000ae0 <rgb_i2c_write_reg>
 8000b44:	2072      	movs	r0, #114	; 0x72
 8000b46:	218d      	movs	r1, #141	; 0x8d
 8000b48:	4622      	mov	r2, r4
 8000b4a:	f7ff ffc9 	bl	8000ae0 <rgb_i2c_write_reg>
 8000b4e:	2072      	movs	r0, #114	; 0x72
 8000b50:	2180      	movs	r1, #128	; 0x80
 8000b52:	2203      	movs	r2, #3
 8000b54:	f7ff ffc4 	bl	8000ae0 <rgb_i2c_write_reg>
 8000b58:	2072      	movs	r0, #114	; 0x72
 8000b5a:	218f      	movs	r1, #143	; 0x8f
 8000b5c:	2223      	movs	r2, #35	; 0x23
 8000b5e:	f7ff ffbf 	bl	8000ae0 <rgb_i2c_write_reg>
 8000b62:	f7ff fe9d 	bl	80008a0 <RGBSetHighSDA>
 8000b66:	2072      	movs	r0, #114	; 0x72
 8000b68:	2180      	movs	r1, #128	; 0x80
 8000b6a:	2207      	movs	r2, #7
 8000b6c:	802c      	strh	r4, [r5, #0]
 8000b6e:	f7ff ffb7 	bl	8000ae0 <rgb_i2c_write_reg>
 8000b72:	2072      	movs	r0, #114	; 0x72
 8000b74:	218e      	movs	r1, #142	; 0x8e
 8000b76:	2208      	movs	r2, #8
 8000b78:	f7ff ffb2 	bl	8000ae0 <rgb_i2c_write_reg>
 8000b7c:	802e      	strh	r6, [r5, #0]
 8000b7e:	bd70      	pop	{r4, r5, r6, pc}
 8000b80:	200007d2 	.word	0x200007d2
 8000b84:	2000082c 	.word	0x2000082c

08000b88 <rgb_read>:
 8000b88:	b538      	push	{r3, r4, r5, lr}
 8000b8a:	f7ff ff07 	bl	800099c <rgb_i2cStart>
 8000b8e:	2072      	movs	r0, #114	; 0x72
 8000b90:	f7ff ff22 	bl	80009d8 <rgb_i2cWrite>
 8000b94:	20b4      	movs	r0, #180	; 0xb4
 8000b96:	f7ff ff1f 	bl	80009d8 <rgb_i2cWrite>
 8000b9a:	f7ff feff 	bl	800099c <rgb_i2cStart>
 8000b9e:	2073      	movs	r0, #115	; 0x73
 8000ba0:	f7ff ff1a 	bl	80009d8 <rgb_i2cWrite>
 8000ba4:	2001      	movs	r0, #1
 8000ba6:	4946      	ldr	r1, [pc, #280]	; (8000cc0 <rgb_read+0x138>)
 8000ba8:	f7ff ff36 	bl	8000a18 <rgb_i2cRead>
 8000bac:	2300      	movs	r3, #0
 8000bae:	4d45      	ldr	r5, [pc, #276]	; (8000cc4 <rgb_read+0x13c>)
 8000bb0:	4c43      	ldr	r4, [pc, #268]	; (8000cc0 <rgb_read+0x138>)
 8000bb2:	eb05 0243 	add.w	r2, r5, r3, lsl #1
 8000bb6:	5d19      	ldrb	r1, [r3, r4]
 8000bb8:	3301      	adds	r3, #1
 8000bba:	2b09      	cmp	r3, #9
 8000bbc:	86d1      	strh	r1, [r2, #54]	; 0x36
 8000bbe:	d1f6      	bne.n	8000bae <rgb_read+0x26>
 8000bc0:	2001      	movs	r0, #1
 8000bc2:	4621      	mov	r1, r4
 8000bc4:	f7ff ff28 	bl	8000a18 <rgb_i2cRead>
 8000bc8:	f105 0236 	add.w	r2, r5, #54	; 0x36
 8000bcc:	2300      	movs	r3, #0
 8000bce:	8811      	ldrh	r1, [r2, #0]
 8000bd0:	5ce0      	ldrb	r0, [r4, r3]
 8000bd2:	3301      	adds	r3, #1
 8000bd4:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 8000bd8:	2b09      	cmp	r3, #9
 8000bda:	f822 1b02 	strh.w	r1, [r2], #2
 8000bde:	d1f6      	bne.n	8000bce <rgb_read+0x46>
 8000be0:	2001      	movs	r0, #1
 8000be2:	4937      	ldr	r1, [pc, #220]	; (8000cc0 <rgb_read+0x138>)
 8000be4:	f7ff ff18 	bl	8000a18 <rgb_i2cRead>
 8000be8:	2300      	movs	r3, #0
 8000bea:	5ce2      	ldrb	r2, [r4, r3]
 8000bec:	f825 2013 	strh.w	r2, [r5, r3, lsl #1]
 8000bf0:	3301      	adds	r3, #1
 8000bf2:	2b09      	cmp	r3, #9
 8000bf4:	d1f9      	bne.n	8000bea <rgb_read+0x62>
 8000bf6:	2001      	movs	r0, #1
 8000bf8:	4931      	ldr	r1, [pc, #196]	; (8000cc0 <rgb_read+0x138>)
 8000bfa:	f7ff ff0d 	bl	8000a18 <rgb_i2cRead>
 8000bfe:	4a32      	ldr	r2, [pc, #200]	; (8000cc8 <rgb_read+0x140>)
 8000c00:	2300      	movs	r3, #0
 8000c02:	5ce0      	ldrb	r0, [r4, r3]
 8000c04:	8851      	ldrh	r1, [r2, #2]
 8000c06:	3301      	adds	r3, #1
 8000c08:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 8000c0c:	2b09      	cmp	r3, #9
 8000c0e:	f822 1f02 	strh.w	r1, [r2, #2]!
 8000c12:	d1f6      	bne.n	8000c02 <rgb_read+0x7a>
 8000c14:	2001      	movs	r0, #1
 8000c16:	492a      	ldr	r1, [pc, #168]	; (8000cc0 <rgb_read+0x138>)
 8000c18:	f7ff fefe 	bl	8000a18 <rgb_i2cRead>
 8000c1c:	2300      	movs	r3, #0
 8000c1e:	eb05 0243 	add.w	r2, r5, r3, lsl #1
 8000c22:	5ce1      	ldrb	r1, [r4, r3]
 8000c24:	3301      	adds	r3, #1
 8000c26:	2b09      	cmp	r3, #9
 8000c28:	8251      	strh	r1, [r2, #18]
 8000c2a:	d1f8      	bne.n	8000c1e <rgb_read+0x96>
 8000c2c:	2001      	movs	r0, #1
 8000c2e:	4924      	ldr	r1, [pc, #144]	; (8000cc0 <rgb_read+0x138>)
 8000c30:	f7ff fef2 	bl	8000a18 <rgb_i2cRead>
 8000c34:	4a25      	ldr	r2, [pc, #148]	; (8000ccc <rgb_read+0x144>)
 8000c36:	2300      	movs	r3, #0
 8000c38:	8811      	ldrh	r1, [r2, #0]
 8000c3a:	5ce0      	ldrb	r0, [r4, r3]
 8000c3c:	3301      	adds	r3, #1
 8000c3e:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 8000c42:	2b09      	cmp	r3, #9
 8000c44:	f822 1b02 	strh.w	r1, [r2], #2
 8000c48:	d1f6      	bne.n	8000c38 <rgb_read+0xb0>
 8000c4a:	2001      	movs	r0, #1
 8000c4c:	491c      	ldr	r1, [pc, #112]	; (8000cc0 <rgb_read+0x138>)
 8000c4e:	f7ff fee3 	bl	8000a18 <rgb_i2cRead>
 8000c52:	2300      	movs	r3, #0
 8000c54:	eb05 0243 	add.w	r2, r5, r3, lsl #1
 8000c58:	5ce1      	ldrb	r1, [r4, r3]
 8000c5a:	3301      	adds	r3, #1
 8000c5c:	2b09      	cmp	r3, #9
 8000c5e:	8491      	strh	r1, [r2, #36]	; 0x24
 8000c60:	d1f8      	bne.n	8000c54 <rgb_read+0xcc>
 8000c62:	2001      	movs	r0, #1
 8000c64:	4916      	ldr	r1, [pc, #88]	; (8000cc0 <rgb_read+0x138>)
 8000c66:	f7ff fed7 	bl	8000a18 <rgb_i2cRead>
 8000c6a:	4a19      	ldr	r2, [pc, #100]	; (8000cd0 <rgb_read+0x148>)
 8000c6c:	2300      	movs	r3, #0
 8000c6e:	8811      	ldrh	r1, [r2, #0]
 8000c70:	5ce0      	ldrb	r0, [r4, r3]
 8000c72:	3301      	adds	r3, #1
 8000c74:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 8000c78:	2b09      	cmp	r3, #9
 8000c7a:	f822 1b02 	strh.w	r1, [r2], #2
 8000c7e:	d1f6      	bne.n	8000c6e <rgb_read+0xe6>
 8000c80:	2001      	movs	r0, #1
 8000c82:	490f      	ldr	r1, [pc, #60]	; (8000cc0 <rgb_read+0x138>)
 8000c84:	f7ff fec8 	bl	8000a18 <rgb_i2cRead>
 8000c88:	2300      	movs	r3, #0
 8000c8a:	eb05 0243 	add.w	r2, r5, r3, lsl #1
 8000c8e:	5ce1      	ldrb	r1, [r4, r3]
 8000c90:	3301      	adds	r3, #1
 8000c92:	2b09      	cmp	r3, #9
 8000c94:	f8a2 1048 	strh.w	r1, [r2, #72]	; 0x48
 8000c98:	d1f7      	bne.n	8000c8a <rgb_read+0x102>
 8000c9a:	2000      	movs	r0, #0
 8000c9c:	4908      	ldr	r1, [pc, #32]	; (8000cc0 <rgb_read+0x138>)
 8000c9e:	f7ff febb 	bl	8000a18 <rgb_i2cRead>
 8000ca2:	4a0c      	ldr	r2, [pc, #48]	; (8000cd4 <rgb_read+0x14c>)
 8000ca4:	2300      	movs	r3, #0
 8000ca6:	8811      	ldrh	r1, [r2, #0]
 8000ca8:	5ce0      	ldrb	r0, [r4, r3]
 8000caa:	3301      	adds	r3, #1
 8000cac:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 8000cb0:	2b09      	cmp	r3, #9
 8000cb2:	f822 1b02 	strh.w	r1, [r2], #2
 8000cb6:	d1f6      	bne.n	8000ca6 <rgb_read+0x11e>
 8000cb8:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8000cbc:	f7ff be7d 	b.w	80009ba <rgb_i2cStop>
 8000cc0:	2000082e 	.word	0x2000082e
 8000cc4:	200007d2 	.word	0x200007d2
 8000cc8:	200007d0 	.word	0x200007d0
 8000ccc:	200007e4 	.word	0x200007e4
 8000cd0:	200007f6 	.word	0x200007f6
 8000cd4:	2000081a 	.word	0x2000081a

08000cd8 <line_sensor_init>:
 8000cd8:	490c      	ldr	r1, [pc, #48]	; (8000d0c <line_sensor_init+0x34>)
 8000cda:	4608      	mov	r0, r1
 8000cdc:	2300      	movs	r3, #0
 8000cde:	b510      	push	{r4, lr}
 8000ce0:	f800 3b10 	strb.w	r3, [r0], #16
 8000ce4:	1e8a      	subs	r2, r1, #2
 8000ce6:	3202      	adds	r2, #2
 8000ce8:	2300      	movs	r3, #0
 8000cea:	4282      	cmp	r2, r0
 8000cec:	8053      	strh	r3, [r2, #2]
 8000cee:	8293      	strh	r3, [r2, #20]
 8000cf0:	84d3      	strh	r3, [r2, #38]	; 0x26
 8000cf2:	d1f8      	bne.n	8000ce6 <line_sensor_init+0xe>
 8000cf4:	f881 3038 	strb.w	r3, [r1, #56]	; 0x38
 8000cf8:	f881 3044 	strb.w	r3, [r1, #68]	; 0x44
 8000cfc:	63cb      	str	r3, [r1, #60]	; 0x3c
 8000cfe:	640b      	str	r3, [r1, #64]	; 0x40
 8000d00:	f7ff ff02 	bl	8000b08 <rgb_init>
 8000d04:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000d08:	f7ff bf3e 	b.w	8000b88 <rgb_read>
 8000d0c:	20000838 	.word	0x20000838

08000d10 <line_sensor_filter>:
 8000d10:	b570      	push	{r4, r5, r6, lr}
 8000d12:	4b5e      	ldr	r3, [pc, #376]	; (8000e8c <line_sensor_filter+0x17c>)
 8000d14:	f103 0212 	add.w	r2, r3, #18
 8000d18:	f9b3 0016 	ldrsh.w	r0, [r3, #22]
 8000d1c:	3302      	adds	r3, #2
 8000d1e:	f9b3 1002 	ldrsh.w	r1, [r3, #2]
 8000d22:	4293      	cmp	r3, r2
 8000d24:	ebc1 0100 	rsb	r1, r1, r0
 8000d28:	84d9      	strh	r1, [r3, #38]	; 0x26
 8000d2a:	d1f5      	bne.n	8000d18 <line_sensor_filter+0x8>
 8000d2c:	4958      	ldr	r1, [pc, #352]	; (8000e90 <line_sensor_filter+0x180>)
 8000d2e:	4a59      	ldr	r2, [pc, #356]	; (8000e94 <line_sensor_filter+0x184>)
 8000d30:	6c0b      	ldr	r3, [r1, #64]	; 0x40
 8000d32:	f9b2 2058 	ldrsh.w	r2, [r2, #88]	; 0x58
 8000d36:	f9b1 402e 	ldrsh.w	r4, [r1, #46]	; 0x2e
 8000d3a:	2007      	movs	r0, #7
 8000d3c:	fb00 2303 	mla	r3, r0, r3, r2
 8000d40:	2208      	movs	r2, #8
 8000d42:	fb93 f3f2 	sdiv	r3, r3, r2
 8000d46:	f9b1 202c 	ldrsh.w	r2, [r1, #44]	; 0x2c
 8000d4a:	f9b1 0026 	ldrsh.w	r0, [r1, #38]	; 0x26
 8000d4e:	640b      	str	r3, [r1, #64]	; 0x40
 8000d50:	f512 7faf 	cmn.w	r2, #350	; 0x15e
 8000d54:	bfaa      	itet	ge
 8000d56:	4602      	movge	r2, r0
 8000d58:	2303      	movlt	r3, #3
 8000d5a:	2300      	movge	r3, #0
 8000d5c:	f514 7faf 	cmn.w	r4, #350	; 0x15e
 8000d60:	bfb8      	it	lt
 8000d62:	4622      	movlt	r2, r4
 8000d64:	f9b1 402a 	ldrsh.w	r4, [r1, #42]	; 0x2a
 8000d68:	bfb8      	it	lt
 8000d6a:	2304      	movlt	r3, #4
 8000d6c:	f514 7faf 	cmn.w	r4, #350	; 0x15e
 8000d70:	bfb8      	it	lt
 8000d72:	4622      	movlt	r2, r4
 8000d74:	f9b1 4030 	ldrsh.w	r4, [r1, #48]	; 0x30
 8000d78:	bfb8      	it	lt
 8000d7a:	2302      	movlt	r3, #2
 8000d7c:	f514 7faf 	cmn.w	r4, #350	; 0x15e
 8000d80:	bfb8      	it	lt
 8000d82:	4622      	movlt	r2, r4
 8000d84:	f9b1 4028 	ldrsh.w	r4, [r1, #40]	; 0x28
 8000d88:	bfb8      	it	lt
 8000d8a:	2305      	movlt	r3, #5
 8000d8c:	f514 7faf 	cmn.w	r4, #350	; 0x15e
 8000d90:	bfb8      	it	lt
 8000d92:	4622      	movlt	r2, r4
 8000d94:	f9b1 4032 	ldrsh.w	r4, [r1, #50]	; 0x32
 8000d98:	bfb8      	it	lt
 8000d9a:	2301      	movlt	r3, #1
 8000d9c:	f514 7faf 	cmn.w	r4, #350	; 0x15e
 8000da0:	bfb8      	it	lt
 8000da2:	4622      	movlt	r2, r4
 8000da4:	f9b1 4034 	ldrsh.w	r4, [r1, #52]	; 0x34
 8000da8:	bfb8      	it	lt
 8000daa:	2306      	movlt	r3, #6
 8000dac:	4605      	mov	r5, r0
 8000dae:	f515 7faf 	cmn.w	r5, #350	; 0x15e
 8000db2:	bfb8      	it	lt
 8000db4:	2300      	movlt	r3, #0
 8000db6:	f510 7faf 	cmn.w	r0, #350	; 0x15e
 8000dba:	bfa8      	it	ge
 8000dbc:	4610      	movge	r0, r2
 8000dbe:	f514 7faf 	cmn.w	r4, #350	; 0x15e
 8000dc2:	4a33      	ldr	r2, [pc, #204]	; (8000e90 <line_sensor_filter+0x180>)
 8000dc4:	db32      	blt.n	8000e2c <line_sensor_filter+0x11c>
 8000dc6:	f510 7faf 	cmn.w	r0, #350	; 0x15e
 8000dca:	dc5a      	bgt.n	8000e82 <line_sensor_filter+0x172>
 8000dcc:	2b00      	cmp	r3, #0
 8000dce:	d055      	beq.n	8000e7c <line_sensor_filter+0x16c>
 8000dd0:	eb02 0643 	add.w	r6, r2, r3, lsl #1
 8000dd4:	4632      	mov	r2, r6
 8000dd6:	f9b6 6028 	ldrsh.w	r6, [r6, #40]	; 0x28
 8000dda:	f9b2 2024 	ldrsh.w	r2, [r2, #36]	; 0x24
 8000dde:	1e5d      	subs	r5, r3, #1
 8000de0:	4296      	cmp	r6, r2
 8000de2:	f103 0401 	add.w	r4, r3, #1
 8000de6:	bfa8      	it	ge
 8000de8:	462c      	movge	r4, r5
 8000dea:	ea4f 1083 	mov.w	r0, r3, lsl #6
 8000dee:	eb01 0444 	add.w	r4, r1, r4, lsl #1
 8000df2:	eb01 0343 	add.w	r3, r1, r3, lsl #1
 8000df6:	f9b4 5026 	ldrsh.w	r5, [r4, #38]	; 0x26
 8000dfa:	f9b3 3026 	ldrsh.w	r3, [r3, #38]	; 0x26
 8000dfe:	ea4f 1445 	mov.w	r4, r5, lsl #5
 8000e02:	441d      	add	r5, r3
 8000e04:	fb94 f3f5 	sdiv	r3, r4, r5
 8000e08:	f1c3 0420 	rsb	r4, r3, #32
 8000e0c:	bfac      	ite	ge
 8000e0e:	f1a0 0240 	subge.w	r2, r0, #64	; 0x40
 8000e12:	f100 0240 	addlt.w	r2, r0, #64	; 0x40
 8000e16:	4344      	muls	r4, r0
 8000e18:	fb03 4402 	mla	r4, r3, r2, r4
 8000e1c:	2520      	movs	r5, #32
 8000e1e:	fb94 f4f5 	sdiv	r4, r4, r5
 8000e22:	3ce0      	subs	r4, #224	; 0xe0
 8000e24:	f5b4 7f80 	cmp.w	r4, #256	; 0x100
 8000e28:	63cc      	str	r4, [r1, #60]	; 0x3c
 8000e2a:	dd24      	ble.n	8000e76 <line_sensor_filter+0x166>
 8000e2c:	f44f 7480 	mov.w	r4, #256	; 0x100
 8000e30:	f891 3038 	ldrb.w	r3, [r1, #56]	; 0x38
 8000e34:	2b01      	cmp	r3, #1
 8000e36:	d803      	bhi.n	8000e40 <line_sensor_filter+0x130>
 8000e38:	4a15      	ldr	r2, [pc, #84]	; (8000e90 <line_sensor_filter+0x180>)
 8000e3a:	3301      	adds	r3, #1
 8000e3c:	f882 3038 	strb.w	r3, [r2, #56]	; 0x38
 8000e40:	f891 3038 	ldrb.w	r3, [r1, #56]	; 0x38
 8000e44:	4d12      	ldr	r5, [pc, #72]	; (8000e90 <line_sensor_filter+0x180>)
 8000e46:	2b02      	cmp	r3, #2
 8000e48:	d109      	bne.n	8000e5e <line_sensor_filter+0x14e>
 8000e4a:	f7ff fa1b 	bl	8000284 <sched_off>
 8000e4e:	f895 3044 	ldrb.w	r3, [r5, #68]	; 0x44
 8000e52:	63ec      	str	r4, [r5, #60]	; 0x3c
 8000e54:	f043 0303 	orr.w	r3, r3, #3
 8000e58:	f885 3044 	strb.w	r3, [r5, #68]	; 0x44
 8000e5c:	e007      	b.n	8000e6e <line_sensor_filter+0x15e>
 8000e5e:	f7ff fa11 	bl	8000284 <sched_off>
 8000e62:	f895 3044 	ldrb.w	r3, [r5, #68]	; 0x44
 8000e66:	f023 0301 	bic.w	r3, r3, #1
 8000e6a:	f885 3044 	strb.w	r3, [r5, #68]	; 0x44
 8000e6e:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8000e72:	f7ff ba09 	b.w	8000288 <sched_on>
 8000e76:	f514 7f80 	cmn.w	r4, #256	; 0x100
 8000e7a:	dad9      	bge.n	8000e30 <line_sensor_filter+0x120>
 8000e7c:	f06f 04ff 	mvn.w	r4, #255	; 0xff
 8000e80:	e7d6      	b.n	8000e30 <line_sensor_filter+0x120>
 8000e82:	2300      	movs	r3, #0
 8000e84:	f882 3038 	strb.w	r3, [r2, #56]	; 0x38
 8000e88:	bd70      	pop	{r4, r5, r6, pc}
 8000e8a:	bf00      	nop
 8000e8c:	20000836 	.word	0x20000836
 8000e90:	20000838 	.word	0x20000838
 8000e94:	200007d2 	.word	0x200007d2

08000e98 <line_sensor_read>:
 8000e98:	b538      	push	{r3, r4, r5, lr}
 8000e9a:	f7ff fe75 	bl	8000b88 <rgb_read>
 8000e9e:	4b16      	ldr	r3, [pc, #88]	; (8000ef8 <line_sensor_read+0x60>)
 8000ea0:	2200      	movs	r2, #0
 8000ea2:	4618      	mov	r0, r3
 8000ea4:	5e84      	ldrsh	r4, [r0, r2]
 8000ea6:	f240 31ff 	movw	r1, #1023	; 0x3ff
 8000eaa:	428c      	cmp	r4, r1
 8000eac:	bfdc      	itt	le
 8000eae:	f44f 6480 	movle.w	r4, #1024	; 0x400
 8000eb2:	5284      	strhle	r4, [r0, r2]
 8000eb4:	f9b3 4012 	ldrsh.w	r4, [r3, #18]
 8000eb8:	8edd      	ldrh	r5, [r3, #54]	; 0x36
 8000eba:	428c      	cmp	r4, r1
 8000ebc:	bfdc      	itt	le
 8000ebe:	f44f 6480 	movle.w	r4, #1024	; 0x400
 8000ec2:	825c      	strhle	r4, [r3, #18]
 8000ec4:	f9b3 4024 	ldrsh.w	r4, [r3, #36]	; 0x24
 8000ec8:	428c      	cmp	r4, r1
 8000eca:	bfd8      	it	le
 8000ecc:	f44f 6180 	movle.w	r1, #1024	; 0x400
 8000ed0:	4c0a      	ldr	r4, [pc, #40]	; (8000efc <line_sensor_read+0x64>)
 8000ed2:	bfd8      	it	le
 8000ed4:	8499      	strhle	r1, [r3, #36]	; 0x24
 8000ed6:	490a      	ldr	r1, [pc, #40]	; (8000f00 <line_sensor_read+0x68>)
 8000ed8:	5b14      	ldrh	r4, [r2, r4]
 8000eda:	4411      	add	r1, r2
 8000edc:	1b2c      	subs	r4, r5, r4
 8000ede:	3202      	adds	r2, #2
 8000ee0:	828c      	strh	r4, [r1, #20]
 8000ee2:	2a10      	cmp	r2, #16
 8000ee4:	f44f 6480 	mov.w	r4, #1024	; 0x400
 8000ee8:	804c      	strh	r4, [r1, #2]
 8000eea:	f103 0302 	add.w	r3, r3, #2
 8000eee:	d1d9      	bne.n	8000ea4 <line_sensor_read+0xc>
 8000ef0:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8000ef4:	f7ff bf0c 	b.w	8000d10 <line_sensor_filter>
 8000ef8:	200007d2 	.word	0x200007d2
 8000efc:	20000000 	.word	0x20000000
 8000f00:	20000838 	.word	0x20000838

08000f04 <l3g4200_init>:
 8000f04:	b510      	push	{r4, lr}
 8000f06:	4b10      	ldr	r3, [pc, #64]	; (8000f48 <l3g4200_init+0x44>)
 8000f08:	2400      	movs	r4, #0
 8000f0a:	20d0      	movs	r0, #208	; 0xd0
 8000f0c:	2120      	movs	r1, #32
 8000f0e:	227f      	movs	r2, #127	; 0x7f
 8000f10:	801c      	strh	r4, [r3, #0]
 8000f12:	805c      	strh	r4, [r3, #2]
 8000f14:	809c      	strh	r4, [r3, #4]
 8000f16:	f000 faf1 	bl	80014fc <i2c_write_reg>
 8000f1a:	4622      	mov	r2, r4
 8000f1c:	20d0      	movs	r0, #208	; 0xd0
 8000f1e:	2121      	movs	r1, #33	; 0x21
 8000f20:	f000 faec 	bl	80014fc <i2c_write_reg>
 8000f24:	4622      	mov	r2, r4
 8000f26:	20d0      	movs	r0, #208	; 0xd0
 8000f28:	2122      	movs	r1, #34	; 0x22
 8000f2a:	f000 fae7 	bl	80014fc <i2c_write_reg>
 8000f2e:	20d0      	movs	r0, #208	; 0xd0
 8000f30:	2123      	movs	r1, #35	; 0x23
 8000f32:	2210      	movs	r2, #16
 8000f34:	f000 fae2 	bl	80014fc <i2c_write_reg>
 8000f38:	4622      	mov	r2, r4
 8000f3a:	20d0      	movs	r0, #208	; 0xd0
 8000f3c:	2124      	movs	r1, #36	; 0x24
 8000f3e:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000f42:	f000 badb 	b.w	80014fc <i2c_write_reg>
 8000f46:	bf00      	nop
 8000f48:	20000880 	.word	0x20000880

08000f4c <l3g4200_read>:
 8000f4c:	b538      	push	{r3, r4, r5, lr}
 8000f4e:	2128      	movs	r1, #40	; 0x28
 8000f50:	20d0      	movs	r0, #208	; 0xd0
 8000f52:	f000 fae6 	bl	8001522 <i2c_read_reg>
 8000f56:	2129      	movs	r1, #41	; 0x29
 8000f58:	4605      	mov	r5, r0
 8000f5a:	20d0      	movs	r0, #208	; 0xd0
 8000f5c:	f000 fae1 	bl	8001522 <i2c_read_reg>
 8000f60:	4c0e      	ldr	r4, [pc, #56]	; (8000f9c <l3g4200_read+0x50>)
 8000f62:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000f66:	8020      	strh	r0, [r4, #0]
 8000f68:	212a      	movs	r1, #42	; 0x2a
 8000f6a:	20d0      	movs	r0, #208	; 0xd0
 8000f6c:	f000 fad9 	bl	8001522 <i2c_read_reg>
 8000f70:	212b      	movs	r1, #43	; 0x2b
 8000f72:	4605      	mov	r5, r0
 8000f74:	20d0      	movs	r0, #208	; 0xd0
 8000f76:	f000 fad4 	bl	8001522 <i2c_read_reg>
 8000f7a:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000f7e:	8060      	strh	r0, [r4, #2]
 8000f80:	212c      	movs	r1, #44	; 0x2c
 8000f82:	20d0      	movs	r0, #208	; 0xd0
 8000f84:	f000 facd 	bl	8001522 <i2c_read_reg>
 8000f88:	212d      	movs	r1, #45	; 0x2d
 8000f8a:	4605      	mov	r5, r0
 8000f8c:	20d0      	movs	r0, #208	; 0xd0
 8000f8e:	f000 fac8 	bl	8001522 <i2c_read_reg>
 8000f92:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000f96:	80a0      	strh	r0, [r4, #4]
 8000f98:	bd38      	pop	{r3, r4, r5, pc}
 8000f9a:	bf00      	nop
 8000f9c:	20000880 	.word	0x20000880

08000fa0 <line_sensor_thread>:
 8000fa0:	b508      	push	{r3, lr}
 8000fa2:	f7ff fe99 	bl	8000cd8 <line_sensor_init>
 8000fa6:	2000      	movs	r0, #0
 8000fa8:	2104      	movs	r1, #4
 8000faa:	f000 fee9 	bl	8001d80 <event_timer_set_period>
 8000fae:	2000      	movs	r0, #0
 8000fb0:	f000 fefc 	bl	8001dac <event_timer_wait>
 8000fb4:	f7ff ff70 	bl	8000e98 <line_sensor_read>
 8000fb8:	e7f9      	b.n	8000fae <line_sensor_thread+0xe>

08000fba <i2c_sensor_thread>:
 8000fba:	b508      	push	{r3, lr}
 8000fbc:	f7ff fbd0 	bl	8000760 <lsm9ds0_init>
 8000fc0:	f7ff ffa0 	bl	8000f04 <l3g4200_init>
 8000fc4:	2001      	movs	r0, #1
 8000fc6:	2114      	movs	r1, #20
 8000fc8:	f000 feda 	bl	8001d80 <event_timer_set_period>
 8000fcc:	2001      	movs	r0, #1
 8000fce:	f000 feed 	bl	8001dac <event_timer_wait>
 8000fd2:	f7ff fb47 	bl	8000664 <lsm9ds0_read>
 8000fd6:	f7ff ffb9 	bl	8000f4c <l3g4200_read>
 8000fda:	e7f7      	b.n	8000fcc <i2c_sensor_thread+0x12>

08000fdc <motor_rotation>:
 8000fdc:	b570      	push	{r4, r5, r6, lr}
 8000fde:	2400      	movs	r4, #0
 8000fe0:	4606      	mov	r6, r0
 8000fe2:	4625      	mov	r5, r4
 8000fe4:	ea85 72e5 	eor.w	r2, r5, r5, asr #31
 8000fe8:	eba2 72e5 	sub.w	r2, r2, r5, asr #31
 8000fec:	ea86 73e6 	eor.w	r3, r6, r6, asr #31
 8000ff0:	eba3 73e6 	sub.w	r3, r3, r6, asr #31
 8000ff4:	429a      	cmp	r2, r3
 8000ff6:	da21      	bge.n	800103c <motor_rotation+0x60>
 8000ff8:	2e00      	cmp	r6, #0
 8000ffa:	f04f 030a 	mov.w	r3, #10
 8000ffe:	f06f 0109 	mvn.w	r1, #9
 8001002:	dd06      	ble.n	8001012 <motor_rotation+0x36>
 8001004:	fb94 f0f3 	sdiv	r0, r4, r3
 8001008:	fb94 f1f1 	sdiv	r1, r4, r1
 800100c:	b200      	sxth	r0, r0
 800100e:	b209      	sxth	r1, r1
 8001010:	e005      	b.n	800101e <motor_rotation+0x42>
 8001012:	fb94 f0f1 	sdiv	r0, r4, r1
 8001016:	fb94 f3f3 	sdiv	r3, r4, r3
 800101a:	b200      	sxth	r0, r0
 800101c:	b219      	sxth	r1, r3
 800101e:	f000 ffb5 	bl	8001f8c <drv8834_run>
 8001022:	4b0b      	ldr	r3, [pc, #44]	; (8001050 <motor_rotation+0x74>)
 8001024:	f9b3 3004 	ldrsh.w	r3, [r3, #4]
 8001028:	f5b4 7f96 	cmp.w	r4, #300	; 0x12c
 800102c:	f04f 0014 	mov.w	r0, #20
 8001030:	bfb8      	it	lt
 8001032:	3401      	addlt	r4, #1
 8001034:	441d      	add	r5, r3
 8001036:	f000 fe93 	bl	8001d60 <timer_delay_ms>
 800103a:	e7d3      	b.n	8000fe4 <motor_rotation+0x8>
 800103c:	2000      	movs	r0, #0
 800103e:	4601      	mov	r1, r0
 8001040:	f000 ffa4 	bl	8001f8c <drv8834_run>
 8001044:	2064      	movs	r0, #100	; 0x64
 8001046:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 800104a:	f000 be89 	b.w	8001d60 <timer_delay_ms>
 800104e:	bf00      	nop
 8001050:	20000880 	.word	0x20000880

08001054 <main_thread>:
 8001054:	b508      	push	{r3, lr}
 8001056:	4824      	ldr	r0, [pc, #144]	; (80010e8 <main_thread+0x94>)
 8001058:	f7ff fa40 	bl	80004dc <printf_>
 800105c:	4923      	ldr	r1, [pc, #140]	; (80010ec <main_thread+0x98>)
 800105e:	4824      	ldr	r0, [pc, #144]	; (80010f0 <main_thread+0x9c>)
 8001060:	f44f 7200 	mov.w	r2, #512	; 0x200
 8001064:	2306      	movs	r3, #6
 8001066:	f7ff f925 	bl	80002b4 <create_thread>
 800106a:	4922      	ldr	r1, [pc, #136]	; (80010f4 <main_thread+0xa0>)
 800106c:	4822      	ldr	r0, [pc, #136]	; (80010f8 <main_thread+0xa4>)
 800106e:	f44f 7200 	mov.w	r2, #512	; 0x200
 8001072:	2306      	movs	r3, #6
 8001074:	f7ff f91e 	bl	80002b4 <create_thread>
 8001078:	f000 f844 	bl	8001104 <broken_line_init>
 800107c:	f000 f844 	bl	8001108 <obstacle_init>
 8001080:	f000 ff7c 	bl	8001f7c <get_key>
 8001084:	b308      	cbz	r0, 80010ca <main_thread+0x76>
 8001086:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 800108a:	f000 fe69 	bl	8001d60 <timer_delay_ms>
 800108e:	481b      	ldr	r0, [pc, #108]	; (80010fc <main_thread+0xa8>)
 8001090:	f7ff ffa4 	bl	8000fdc <motor_rotation>
 8001094:	481a      	ldr	r0, [pc, #104]	; (8001100 <main_thread+0xac>)
 8001096:	f7ff ffa1 	bl	8000fdc <motor_rotation>
 800109a:	4818      	ldr	r0, [pc, #96]	; (80010fc <main_thread+0xa8>)
 800109c:	f7ff ff9e 	bl	8000fdc <motor_rotation>
 80010a0:	4816      	ldr	r0, [pc, #88]	; (80010fc <main_thread+0xa8>)
 80010a2:	f7ff ff9b 	bl	8000fdc <motor_rotation>
 80010a6:	4815      	ldr	r0, [pc, #84]	; (80010fc <main_thread+0xa8>)
 80010a8:	f7ff ff98 	bl	8000fdc <motor_rotation>
 80010ac:	4813      	ldr	r0, [pc, #76]	; (80010fc <main_thread+0xa8>)
 80010ae:	f7ff ff95 	bl	8000fdc <motor_rotation>
 80010b2:	4813      	ldr	r0, [pc, #76]	; (8001100 <main_thread+0xac>)
 80010b4:	f7ff ff92 	bl	8000fdc <motor_rotation>
 80010b8:	4811      	ldr	r0, [pc, #68]	; (8001100 <main_thread+0xac>)
 80010ba:	f7ff ff8f 	bl	8000fdc <motor_rotation>
 80010be:	4810      	ldr	r0, [pc, #64]	; (8001100 <main_thread+0xac>)
 80010c0:	f7ff ff8c 	bl	8000fdc <motor_rotation>
 80010c4:	480e      	ldr	r0, [pc, #56]	; (8001100 <main_thread+0xac>)
 80010c6:	f7ff ff89 	bl	8000fdc <motor_rotation>
 80010ca:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 80010ce:	f000 ff31 	bl	8001f34 <led_on>
 80010d2:	2064      	movs	r0, #100	; 0x64
 80010d4:	f000 fe44 	bl	8001d60 <timer_delay_ms>
 80010d8:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 80010dc:	f000 ff3c 	bl	8001f58 <led_off>
 80010e0:	20c8      	movs	r0, #200	; 0xc8
 80010e2:	f000 fe3d 	bl	8001d60 <timer_delay_ms>
 80010e6:	e7cb      	b.n	8001080 <main_thread+0x2c>
 80010e8:	080021d1 	.word	0x080021d1
 80010ec:	20000084 	.word	0x20000084
 80010f0:	08000fa1 	.word	0x08000fa1
 80010f4:	20000284 	.word	0x20000284
 80010f8:	08000fbb 	.word	0x08000fbb
 80010fc:	0003d090 	.word	0x0003d090
 8001100:	fffc2f70 	.word	0xfffc2f70

08001104 <broken_line_init>:
 8001104:	4770      	bx	lr
	...

08001108 <obstacle_init>:
 8001108:	2300      	movs	r3, #0
 800110a:	4a04      	ldr	r2, [pc, #16]	; (800111c <obstacle_init+0x14>)
 800110c:	5a99      	ldrh	r1, [r3, r2]
 800110e:	4a04      	ldr	r2, [pc, #16]	; (8001120 <obstacle_init+0x18>)
 8001110:	5299      	strh	r1, [r3, r2]
 8001112:	3302      	adds	r3, #2
 8001114:	2b40      	cmp	r3, #64	; 0x40
 8001116:	d1f8      	bne.n	800110a <obstacle_init+0x2>
 8001118:	4770      	bx	lr
 800111a:	bf00      	nop
 800111c:	20000010 	.word	0x20000010
 8001120:	20000ae8 	.word	0x20000ae8

08001124 <uart_write>:
 8001124:	4b03      	ldr	r3, [pc, #12]	; (8001134 <uart_write+0x10>)
 8001126:	69da      	ldr	r2, [r3, #28]
 8001128:	0612      	lsls	r2, r2, #24
 800112a:	d401      	bmi.n	8001130 <uart_write+0xc>
 800112c:	bf00      	nop
 800112e:	e7f9      	b.n	8001124 <uart_write>
 8001130:	8518      	strh	r0, [r3, #40]	; 0x28
 8001132:	4770      	bx	lr
 8001134:	40013800 	.word	0x40013800

08001138 <uart_init>:
 8001138:	b510      	push	{r4, lr}
 800113a:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 800113e:	b088      	sub	sp, #32
 8001140:	2101      	movs	r1, #1
 8001142:	f000 fc6b 	bl	8001a1c <RCC_AHBPeriphClockCmd>
 8001146:	f44f 4080 	mov.w	r0, #16384	; 0x4000
 800114a:	2101      	movs	r1, #1
 800114c:	f000 fc74 	bl	8001a38 <RCC_APB2PeriphClockCmd>
 8001150:	f44f 63c0 	mov.w	r3, #1536	; 0x600
 8001154:	9300      	str	r3, [sp, #0]
 8001156:	2302      	movs	r3, #2
 8001158:	2400      	movs	r4, #0
 800115a:	f88d 3004 	strb.w	r3, [sp, #4]
 800115e:	4669      	mov	r1, sp
 8001160:	2303      	movs	r3, #3
 8001162:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8001166:	f88d 3005 	strb.w	r3, [sp, #5]
 800116a:	f88d 4006 	strb.w	r4, [sp, #6]
 800116e:	f88d 4007 	strb.w	r4, [sp, #7]
 8001172:	f000 fe2d 	bl	8001dd0 <GPIO_Init>
 8001176:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 800117a:	2109      	movs	r1, #9
 800117c:	2207      	movs	r2, #7
 800117e:	f000 fe75 	bl	8001e6c <GPIO_PinAFConfig>
 8001182:	2207      	movs	r2, #7
 8001184:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8001188:	210a      	movs	r1, #10
 800118a:	f000 fe6f 	bl	8001e6c <GPIO_PinAFConfig>
 800118e:	9403      	str	r4, [sp, #12]
 8001190:	9404      	str	r4, [sp, #16]
 8001192:	9405      	str	r4, [sp, #20]
 8001194:	9407      	str	r4, [sp, #28]
 8001196:	4c08      	ldr	r4, [pc, #32]	; (80011b8 <uart_init+0x80>)
 8001198:	f44f 33e1 	mov.w	r3, #115200	; 0x1c200
 800119c:	9302      	str	r3, [sp, #8]
 800119e:	4620      	mov	r0, r4
 80011a0:	230c      	movs	r3, #12
 80011a2:	a902      	add	r1, sp, #8
 80011a4:	9306      	str	r3, [sp, #24]
 80011a6:	f000 f809 	bl	80011bc <USART_Init>
 80011aa:	4620      	mov	r0, r4
 80011ac:	2101      	movs	r1, #1
 80011ae:	f000 f867 	bl	8001280 <USART_Cmd>
 80011b2:	b008      	add	sp, #32
 80011b4:	bd10      	pop	{r4, pc}
 80011b6:	bf00      	nop
 80011b8:	40013800 	.word	0x40013800

080011bc <USART_Init>:
 80011bc:	b530      	push	{r4, r5, lr}
 80011be:	4604      	mov	r4, r0
 80011c0:	b099      	sub	sp, #100	; 0x64
 80011c2:	460d      	mov	r5, r1
 80011c4:	bf00      	nop
 80011c6:	bf00      	nop
 80011c8:	bf00      	nop
 80011ca:	bf00      	nop
 80011cc:	bf00      	nop
 80011ce:	bf00      	nop
 80011d0:	bf00      	nop
 80011d2:	6803      	ldr	r3, [r0, #0]
 80011d4:	f023 0301 	bic.w	r3, r3, #1
 80011d8:	6003      	str	r3, [r0, #0]
 80011da:	6842      	ldr	r2, [r0, #4]
 80011dc:	688b      	ldr	r3, [r1, #8]
 80011de:	f422 5240 	bic.w	r2, r2, #12288	; 0x3000
 80011e2:	4313      	orrs	r3, r2
 80011e4:	6043      	str	r3, [r0, #4]
 80011e6:	686a      	ldr	r2, [r5, #4]
 80011e8:	68eb      	ldr	r3, [r5, #12]
 80011ea:	6801      	ldr	r1, [r0, #0]
 80011ec:	431a      	orrs	r2, r3
 80011ee:	692b      	ldr	r3, [r5, #16]
 80011f0:	f421 51b0 	bic.w	r1, r1, #5632	; 0x1600
 80011f4:	f021 010c 	bic.w	r1, r1, #12
 80011f8:	4313      	orrs	r3, r2
 80011fa:	430b      	orrs	r3, r1
 80011fc:	6003      	str	r3, [r0, #0]
 80011fe:	6882      	ldr	r2, [r0, #8]
 8001200:	696b      	ldr	r3, [r5, #20]
 8001202:	f422 7240 	bic.w	r2, r2, #768	; 0x300
 8001206:	4313      	orrs	r3, r2
 8001208:	6083      	str	r3, [r0, #8]
 800120a:	a801      	add	r0, sp, #4
 800120c:	f000 fa7a 	bl	8001704 <RCC_GetClocksFreq>
 8001210:	4b17      	ldr	r3, [pc, #92]	; (8001270 <USART_Init+0xb4>)
 8001212:	429c      	cmp	r4, r3
 8001214:	d101      	bne.n	800121a <USART_Init+0x5e>
 8001216:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8001218:	e00e      	b.n	8001238 <USART_Init+0x7c>
 800121a:	4b16      	ldr	r3, [pc, #88]	; (8001274 <USART_Init+0xb8>)
 800121c:	429c      	cmp	r4, r3
 800121e:	d101      	bne.n	8001224 <USART_Init+0x68>
 8001220:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8001222:	e009      	b.n	8001238 <USART_Init+0x7c>
 8001224:	4b14      	ldr	r3, [pc, #80]	; (8001278 <USART_Init+0xbc>)
 8001226:	429c      	cmp	r4, r3
 8001228:	d101      	bne.n	800122e <USART_Init+0x72>
 800122a:	9a11      	ldr	r2, [sp, #68]	; 0x44
 800122c:	e004      	b.n	8001238 <USART_Init+0x7c>
 800122e:	4b13      	ldr	r3, [pc, #76]	; (800127c <USART_Init+0xc0>)
 8001230:	429c      	cmp	r4, r3
 8001232:	bf0c      	ite	eq
 8001234:	9a12      	ldreq	r2, [sp, #72]	; 0x48
 8001236:	9a13      	ldrne	r2, [sp, #76]	; 0x4c
 8001238:	6823      	ldr	r3, [r4, #0]
 800123a:	6829      	ldr	r1, [r5, #0]
 800123c:	f413 4f00 	tst.w	r3, #32768	; 0x8000
 8001240:	bf18      	it	ne
 8001242:	0052      	lslne	r2, r2, #1
 8001244:	fbb2 f3f1 	udiv	r3, r2, r1
 8001248:	fb01 2213 	mls	r2, r1, r3, r2
 800124c:	ebb2 0f51 	cmp.w	r2, r1, lsr #1
 8001250:	6822      	ldr	r2, [r4, #0]
 8001252:	bf28      	it	cs
 8001254:	3301      	addcs	r3, #1
 8001256:	0412      	lsls	r2, r2, #16
 8001258:	d506      	bpl.n	8001268 <USART_Init+0xac>
 800125a:	f64f 72f0 	movw	r2, #65520	; 0xfff0
 800125e:	f3c3 0142 	ubfx	r1, r3, #1, #3
 8001262:	401a      	ands	r2, r3
 8001264:	ea41 0302 	orr.w	r3, r1, r2
 8001268:	b29b      	uxth	r3, r3
 800126a:	81a3      	strh	r3, [r4, #12]
 800126c:	b019      	add	sp, #100	; 0x64
 800126e:	bd30      	pop	{r4, r5, pc}
 8001270:	40013800 	.word	0x40013800
 8001274:	40004400 	.word	0x40004400
 8001278:	40004800 	.word	0x40004800
 800127c:	40004c00 	.word	0x40004c00

08001280 <USART_Cmd>:
 8001280:	bf00      	nop
 8001282:	bf00      	nop
 8001284:	6803      	ldr	r3, [r0, #0]
 8001286:	b111      	cbz	r1, 800128e <USART_Cmd+0xe>
 8001288:	f043 0301 	orr.w	r3, r3, #1
 800128c:	e001      	b.n	8001292 <USART_Cmd+0x12>
 800128e:	f023 0301 	bic.w	r3, r3, #1
 8001292:	6003      	str	r3, [r0, #0]
 8001294:	4770      	bx	lr

08001296 <lib_low_level_init>:
 8001296:	b508      	push	{r3, lr}
 8001298:	f000 f9b0 	bl	80015fc <sytem_clock_init>
 800129c:	f000 fdfc 	bl	8001e98 <gpio_init>
 80012a0:	f7ff ff4a 	bl	8001138 <uart_init>
 80012a4:	f000 fcd6 	bl	8001c54 <timer_init>
 80012a8:	f000 ff24 	bl	80020f4 <pwm_init>
 80012ac:	f000 fea2 	bl	8001ff4 <drv8834_init>
 80012b0:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80012b4:	f000 b892 	b.w	80013dc <i2c_0_init>

080012b8 <NVIC_Init>:
 80012b8:	b510      	push	{r4, lr}
 80012ba:	bf00      	nop
 80012bc:	bf00      	nop
 80012be:	bf00      	nop
 80012c0:	78c2      	ldrb	r2, [r0, #3]
 80012c2:	7803      	ldrb	r3, [r0, #0]
 80012c4:	b30a      	cbz	r2, 800130a <NVIC_Init+0x52>
 80012c6:	4a16      	ldr	r2, [pc, #88]	; (8001320 <NVIC_Init+0x68>)
 80012c8:	7844      	ldrb	r4, [r0, #1]
 80012ca:	68d2      	ldr	r2, [r2, #12]
 80012cc:	43d2      	mvns	r2, r2
 80012ce:	f3c2 2202 	ubfx	r2, r2, #8, #3
 80012d2:	f1c2 0104 	rsb	r1, r2, #4
 80012d6:	b2c9      	uxtb	r1, r1
 80012d8:	fa04 f101 	lsl.w	r1, r4, r1
 80012dc:	240f      	movs	r4, #15
 80012de:	fa44 f202 	asr.w	r2, r4, r2
 80012e2:	7884      	ldrb	r4, [r0, #2]
 80012e4:	b2c9      	uxtb	r1, r1
 80012e6:	4022      	ands	r2, r4
 80012e8:	430a      	orrs	r2, r1
 80012ea:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
 80012ee:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
 80012f2:	0112      	lsls	r2, r2, #4
 80012f4:	b2d2      	uxtb	r2, r2
 80012f6:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
 80012fa:	7803      	ldrb	r3, [r0, #0]
 80012fc:	2201      	movs	r2, #1
 80012fe:	0959      	lsrs	r1, r3, #5
 8001300:	f003 031f 	and.w	r3, r3, #31
 8001304:	fa02 f303 	lsl.w	r3, r2, r3
 8001308:	e006      	b.n	8001318 <NVIC_Init+0x60>
 800130a:	0959      	lsrs	r1, r3, #5
 800130c:	2201      	movs	r2, #1
 800130e:	f003 031f 	and.w	r3, r3, #31
 8001312:	fa02 f303 	lsl.w	r3, r2, r3
 8001316:	3120      	adds	r1, #32
 8001318:	4a02      	ldr	r2, [pc, #8]	; (8001324 <NVIC_Init+0x6c>)
 800131a:	f842 3021 	str.w	r3, [r2, r1, lsl #2]
 800131e:	bd10      	pop	{r4, pc}
 8001320:	e000ed00 	.word	0xe000ed00
 8001324:	e000e100 	.word	0xe000e100

08001328 <i2c_delay>:
 8001328:	230b      	movs	r3, #11
 800132a:	3b01      	subs	r3, #1
 800132c:	d001      	beq.n	8001332 <i2c_delay+0xa>
 800132e:	bf00      	nop
 8001330:	e7fb      	b.n	800132a <i2c_delay+0x2>
 8001332:	4770      	bx	lr

08001334 <SetLowSDA>:
 8001334:	b537      	push	{r0, r1, r2, r4, r5, lr}
 8001336:	4d0d      	ldr	r5, [pc, #52]	; (800136c <SetLowSDA+0x38>)
 8001338:	2301      	movs	r3, #1
 800133a:	2203      	movs	r2, #3
 800133c:	2480      	movs	r4, #128	; 0x80
 800133e:	f88d 3004 	strb.w	r3, [sp, #4]
 8001342:	f88d 3006 	strb.w	r3, [sp, #6]
 8001346:	4628      	mov	r0, r5
 8001348:	2300      	movs	r3, #0
 800134a:	4669      	mov	r1, sp
 800134c:	f88d 2005 	strb.w	r2, [sp, #5]
 8001350:	f88d 3007 	strb.w	r3, [sp, #7]
 8001354:	9400      	str	r4, [sp, #0]
 8001356:	f000 fd3b 	bl	8001dd0 <GPIO_Init>
 800135a:	4628      	mov	r0, r5
 800135c:	4621      	mov	r1, r4
 800135e:	f000 fd81 	bl	8001e64 <GPIO_ResetBits>
 8001362:	f7ff ffe1 	bl	8001328 <i2c_delay>
 8001366:	b003      	add	sp, #12
 8001368:	bd30      	pop	{r4, r5, pc}
 800136a:	bf00      	nop
 800136c:	48000400 	.word	0x48000400

08001370 <SetHighSDA>:
 8001370:	b537      	push	{r0, r1, r2, r4, r5, lr}
 8001372:	4d0d      	ldr	r5, [pc, #52]	; (80013a8 <SetHighSDA+0x38>)
 8001374:	2203      	movs	r2, #3
 8001376:	2300      	movs	r3, #0
 8001378:	2480      	movs	r4, #128	; 0x80
 800137a:	f88d 2005 	strb.w	r2, [sp, #5]
 800137e:	4628      	mov	r0, r5
 8001380:	2201      	movs	r2, #1
 8001382:	4669      	mov	r1, sp
 8001384:	f88d 3004 	strb.w	r3, [sp, #4]
 8001388:	f88d 2006 	strb.w	r2, [sp, #6]
 800138c:	f88d 3007 	strb.w	r3, [sp, #7]
 8001390:	9400      	str	r4, [sp, #0]
 8001392:	f000 fd1d 	bl	8001dd0 <GPIO_Init>
 8001396:	4628      	mov	r0, r5
 8001398:	4621      	mov	r1, r4
 800139a:	f000 fd5f 	bl	8001e5c <GPIO_SetBits>
 800139e:	f7ff ffc3 	bl	8001328 <i2c_delay>
 80013a2:	b003      	add	sp, #12
 80013a4:	bd30      	pop	{r4, r5, pc}
 80013a6:	bf00      	nop
 80013a8:	48000400 	.word	0x48000400

080013ac <SetLowSCL>:
 80013ac:	b508      	push	{r3, lr}
 80013ae:	4804      	ldr	r0, [pc, #16]	; (80013c0 <SetLowSCL+0x14>)
 80013b0:	2140      	movs	r1, #64	; 0x40
 80013b2:	f000 fd57 	bl	8001e64 <GPIO_ResetBits>
 80013b6:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80013ba:	f7ff bfb5 	b.w	8001328 <i2c_delay>
 80013be:	bf00      	nop
 80013c0:	48000400 	.word	0x48000400

080013c4 <SetHighSCL>:
 80013c4:	b508      	push	{r3, lr}
 80013c6:	4804      	ldr	r0, [pc, #16]	; (80013d8 <SetHighSCL+0x14>)
 80013c8:	2140      	movs	r1, #64	; 0x40
 80013ca:	f000 fd47 	bl	8001e5c <GPIO_SetBits>
 80013ce:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80013d2:	f7ff bfa9 	b.w	8001328 <i2c_delay>
 80013d6:	bf00      	nop
 80013d8:	48000400 	.word	0x48000400

080013dc <i2c_0_init>:
 80013dc:	b507      	push	{r0, r1, r2, lr}
 80013de:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 80013e2:	2101      	movs	r1, #1
 80013e4:	f000 fb1a 	bl	8001a1c <RCC_AHBPeriphClockCmd>
 80013e8:	23c0      	movs	r3, #192	; 0xc0
 80013ea:	9300      	str	r3, [sp, #0]
 80013ec:	2301      	movs	r3, #1
 80013ee:	2203      	movs	r2, #3
 80013f0:	480a      	ldr	r0, [pc, #40]	; (800141c <i2c_0_init+0x40>)
 80013f2:	f88d 3004 	strb.w	r3, [sp, #4]
 80013f6:	4669      	mov	r1, sp
 80013f8:	f88d 3006 	strb.w	r3, [sp, #6]
 80013fc:	2300      	movs	r3, #0
 80013fe:	f88d 2005 	strb.w	r2, [sp, #5]
 8001402:	f88d 3007 	strb.w	r3, [sp, #7]
 8001406:	f000 fce3 	bl	8001dd0 <GPIO_Init>
 800140a:	f7ff ffdb 	bl	80013c4 <SetHighSCL>
 800140e:	f7ff ff91 	bl	8001334 <SetLowSDA>
 8001412:	f7ff ffad 	bl	8001370 <SetHighSDA>
 8001416:	b003      	add	sp, #12
 8001418:	f85d fb04 	ldr.w	pc, [sp], #4
 800141c:	48000400 	.word	0x48000400

08001420 <i2cStart>:
 8001420:	b508      	push	{r3, lr}
 8001422:	f7ff ffcf 	bl	80013c4 <SetHighSCL>
 8001426:	f7ff ffa3 	bl	8001370 <SetHighSDA>
 800142a:	f7ff ffcb 	bl	80013c4 <SetHighSCL>
 800142e:	f7ff ff81 	bl	8001334 <SetLowSDA>
 8001432:	f7ff ffbb 	bl	80013ac <SetLowSCL>
 8001436:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800143a:	f7ff bf99 	b.w	8001370 <SetHighSDA>

0800143e <i2cStop>:
 800143e:	b508      	push	{r3, lr}
 8001440:	f7ff ffb4 	bl	80013ac <SetLowSCL>
 8001444:	f7ff ff76 	bl	8001334 <SetLowSDA>
 8001448:	f7ff ffbc 	bl	80013c4 <SetHighSCL>
 800144c:	f7ff ff72 	bl	8001334 <SetLowSDA>
 8001450:	f7ff ffb8 	bl	80013c4 <SetHighSCL>
 8001454:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001458:	f7ff bf8a 	b.w	8001370 <SetHighSDA>

0800145c <i2cWrite>:
 800145c:	b538      	push	{r3, r4, r5, lr}
 800145e:	4604      	mov	r4, r0
 8001460:	2508      	movs	r5, #8
 8001462:	f7ff ffa3 	bl	80013ac <SetLowSCL>
 8001466:	0623      	lsls	r3, r4, #24
 8001468:	d502      	bpl.n	8001470 <i2cWrite+0x14>
 800146a:	f7ff ff81 	bl	8001370 <SetHighSDA>
 800146e:	e001      	b.n	8001474 <i2cWrite+0x18>
 8001470:	f7ff ff60 	bl	8001334 <SetLowSDA>
 8001474:	3d01      	subs	r5, #1
 8001476:	f7ff ffa5 	bl	80013c4 <SetHighSCL>
 800147a:	0064      	lsls	r4, r4, #1
 800147c:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 8001480:	b2e4      	uxtb	r4, r4
 8001482:	d1ee      	bne.n	8001462 <i2cWrite+0x6>
 8001484:	f7ff ff92 	bl	80013ac <SetLowSCL>
 8001488:	f7ff ff72 	bl	8001370 <SetHighSDA>
 800148c:	f7ff ff9a 	bl	80013c4 <SetHighSCL>
 8001490:	4b05      	ldr	r3, [pc, #20]	; (80014a8 <i2cWrite+0x4c>)
 8001492:	8a1c      	ldrh	r4, [r3, #16]
 8001494:	b2a4      	uxth	r4, r4
 8001496:	f7ff ff89 	bl	80013ac <SetLowSCL>
 800149a:	f7ff ff45 	bl	8001328 <i2c_delay>
 800149e:	f084 0080 	eor.w	r0, r4, #128	; 0x80
 80014a2:	f3c0 10c0 	ubfx	r0, r0, #7, #1
 80014a6:	bd38      	pop	{r3, r4, r5, pc}
 80014a8:	48000400 	.word	0x48000400

080014ac <i2cRead>:
 80014ac:	b570      	push	{r4, r5, r6, lr}
 80014ae:	4606      	mov	r6, r0
 80014b0:	f7ff ff7c 	bl	80013ac <SetLowSCL>
 80014b4:	f7ff ff5c 	bl	8001370 <SetHighSDA>
 80014b8:	2508      	movs	r5, #8
 80014ba:	2400      	movs	r4, #0
 80014bc:	f7ff ff82 	bl	80013c4 <SetHighSCL>
 80014c0:	4b0d      	ldr	r3, [pc, #52]	; (80014f8 <i2cRead+0x4c>)
 80014c2:	8a1b      	ldrh	r3, [r3, #16]
 80014c4:	0064      	lsls	r4, r4, #1
 80014c6:	061a      	lsls	r2, r3, #24
 80014c8:	b2e4      	uxtb	r4, r4
 80014ca:	bf48      	it	mi
 80014cc:	3401      	addmi	r4, #1
 80014ce:	f105 35ff 	add.w	r5, r5, #4294967295
 80014d2:	bf48      	it	mi
 80014d4:	b2e4      	uxtbmi	r4, r4
 80014d6:	f7ff ff69 	bl	80013ac <SetLowSCL>
 80014da:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 80014de:	d1ed      	bne.n	80014bc <i2cRead+0x10>
 80014e0:	b10e      	cbz	r6, 80014e6 <i2cRead+0x3a>
 80014e2:	f7ff ff27 	bl	8001334 <SetLowSDA>
 80014e6:	f7ff ff6d 	bl	80013c4 <SetHighSCL>
 80014ea:	f7ff ff5f 	bl	80013ac <SetLowSCL>
 80014ee:	f7ff ff1b 	bl	8001328 <i2c_delay>
 80014f2:	4620      	mov	r0, r4
 80014f4:	bd70      	pop	{r4, r5, r6, pc}
 80014f6:	bf00      	nop
 80014f8:	48000400 	.word	0x48000400

080014fc <i2c_write_reg>:
 80014fc:	b570      	push	{r4, r5, r6, lr}
 80014fe:	4605      	mov	r5, r0
 8001500:	460c      	mov	r4, r1
 8001502:	4616      	mov	r6, r2
 8001504:	f7ff ff8c 	bl	8001420 <i2cStart>
 8001508:	4628      	mov	r0, r5
 800150a:	f7ff ffa7 	bl	800145c <i2cWrite>
 800150e:	4620      	mov	r0, r4
 8001510:	f7ff ffa4 	bl	800145c <i2cWrite>
 8001514:	4630      	mov	r0, r6
 8001516:	f7ff ffa1 	bl	800145c <i2cWrite>
 800151a:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 800151e:	f7ff bf8e 	b.w	800143e <i2cStop>

08001522 <i2c_read_reg>:
 8001522:	b538      	push	{r3, r4, r5, lr}
 8001524:	4604      	mov	r4, r0
 8001526:	460d      	mov	r5, r1
 8001528:	f7ff ff7a 	bl	8001420 <i2cStart>
 800152c:	4620      	mov	r0, r4
 800152e:	f7ff ff95 	bl	800145c <i2cWrite>
 8001532:	4628      	mov	r0, r5
 8001534:	f7ff ff92 	bl	800145c <i2cWrite>
 8001538:	f7ff ff72 	bl	8001420 <i2cStart>
 800153c:	f044 0001 	orr.w	r0, r4, #1
 8001540:	f7ff ff8c 	bl	800145c <i2cWrite>
 8001544:	2000      	movs	r0, #0
 8001546:	f7ff ffb1 	bl	80014ac <i2cRead>
 800154a:	4604      	mov	r4, r0
 800154c:	f7ff ff77 	bl	800143e <i2cStop>
 8001550:	4620      	mov	r0, r4
 8001552:	bd38      	pop	{r3, r4, r5, pc}

08001554 <Default_Handler>:
 8001554:	4668      	mov	r0, sp
 8001556:	f020 0107 	bic.w	r1, r0, #7
 800155a:	468d      	mov	sp, r1
 800155c:	bf00      	nop
 800155e:	e7fd      	b.n	800155c <Default_Handler+0x8>

08001560 <HardFault_Handler>:
 8001560:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001564:	f000 fce6 	bl	8001f34 <led_on>
 8001568:	4b06      	ldr	r3, [pc, #24]	; (8001584 <HardFault_Handler+0x24>)
 800156a:	3b01      	subs	r3, #1
 800156c:	d001      	beq.n	8001572 <HardFault_Handler+0x12>
 800156e:	bf00      	nop
 8001570:	e7fb      	b.n	800156a <HardFault_Handler+0xa>
 8001572:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001576:	f000 fcef 	bl	8001f58 <led_off>
 800157a:	4b02      	ldr	r3, [pc, #8]	; (8001584 <HardFault_Handler+0x24>)
 800157c:	3b01      	subs	r3, #1
 800157e:	d0ef      	beq.n	8001560 <HardFault_Handler>
 8001580:	bf00      	nop
 8001582:	e7fb      	b.n	800157c <HardFault_Handler+0x1c>
 8001584:	00989681 	.word	0x00989681

08001588 <_reset_init>:
 8001588:	4a0e      	ldr	r2, [pc, #56]	; (80015c4 <_reset_init+0x3c>)
 800158a:	480f      	ldr	r0, [pc, #60]	; (80015c8 <_reset_init+0x40>)
 800158c:	1a80      	subs	r0, r0, r2
 800158e:	1080      	asrs	r0, r0, #2
 8001590:	2300      	movs	r3, #0
 8001592:	4283      	cmp	r3, r0
 8001594:	d006      	beq.n	80015a4 <_reset_init+0x1c>
 8001596:	490d      	ldr	r1, [pc, #52]	; (80015cc <_reset_init+0x44>)
 8001598:	f851 1023 	ldr.w	r1, [r1, r3, lsl #2]
 800159c:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
 80015a0:	3301      	adds	r3, #1
 80015a2:	e7f6      	b.n	8001592 <_reset_init+0xa>
 80015a4:	4b0a      	ldr	r3, [pc, #40]	; (80015d0 <_reset_init+0x48>)
 80015a6:	f8d3 2088 	ldr.w	r2, [r3, #136]	; 0x88
 80015aa:	f442 0270 	orr.w	r2, r2, #15728640	; 0xf00000
 80015ae:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
 80015b2:	f503 730c 	add.w	r3, r3, #560	; 0x230
 80015b6:	685a      	ldr	r2, [r3, #4]
 80015b8:	f022 4240 	bic.w	r2, r2, #3221225472	; 0xc0000000
 80015bc:	605a      	str	r2, [r3, #4]
 80015be:	f7fe bde3 	b.w	8000188 <main>
 80015c2:	bf00      	nop
 80015c4:	20000000 	.word	0x20000000
 80015c8:	20000084 	.word	0x20000084
 80015cc:	08002210 	.word	0x08002210
 80015d0:	e000ed00 	.word	0xe000ed00

080015d4 <sys_tick_init>:
 80015d4:	4b05      	ldr	r3, [pc, #20]	; (80015ec <sys_tick_init+0x18>)
 80015d6:	4a06      	ldr	r2, [pc, #24]	; (80015f0 <sys_tick_init+0x1c>)
 80015d8:	605a      	str	r2, [r3, #4]
 80015da:	4a06      	ldr	r2, [pc, #24]	; (80015f4 <sys_tick_init+0x20>)
 80015dc:	21f0      	movs	r1, #240	; 0xf0
 80015de:	f882 1023 	strb.w	r1, [r2, #35]	; 0x23
 80015e2:	2200      	movs	r2, #0
 80015e4:	609a      	str	r2, [r3, #8]
 80015e6:	2207      	movs	r2, #7
 80015e8:	601a      	str	r2, [r3, #0]
 80015ea:	4770      	bx	lr
 80015ec:	e000e010 	.word	0xe000e010
 80015f0:	00029040 	.word	0x00029040
 80015f4:	e000ed00 	.word	0xe000ed00

080015f8 <sleep>:
 80015f8:	bf30      	wfi
 80015fa:	4770      	bx	lr

080015fc <sytem_clock_init>:
 80015fc:	f000 b800 	b.w	8001600 <SystemInit>

08001600 <SystemInit>:
 8001600:	4b3b      	ldr	r3, [pc, #236]	; (80016f0 <SystemInit+0xf0>)
 8001602:	f8d3 2088 	ldr.w	r2, [r3, #136]	; 0x88
 8001606:	f442 0270 	orr.w	r2, r2, #15728640	; 0xf00000
 800160a:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
 800160e:	4b39      	ldr	r3, [pc, #228]	; (80016f4 <SystemInit+0xf4>)
 8001610:	681a      	ldr	r2, [r3, #0]
 8001612:	f042 0201 	orr.w	r2, r2, #1
 8001616:	601a      	str	r2, [r3, #0]
 8001618:	6859      	ldr	r1, [r3, #4]
 800161a:	4a37      	ldr	r2, [pc, #220]	; (80016f8 <SystemInit+0xf8>)
 800161c:	400a      	ands	r2, r1
 800161e:	605a      	str	r2, [r3, #4]
 8001620:	681a      	ldr	r2, [r3, #0]
 8001622:	f022 7284 	bic.w	r2, r2, #17301504	; 0x1080000
 8001626:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
 800162a:	601a      	str	r2, [r3, #0]
 800162c:	681a      	ldr	r2, [r3, #0]
 800162e:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 8001632:	601a      	str	r2, [r3, #0]
 8001634:	685a      	ldr	r2, [r3, #4]
 8001636:	f422 02fe 	bic.w	r2, r2, #8323072	; 0x7f0000
 800163a:	605a      	str	r2, [r3, #4]
 800163c:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 800163e:	f022 020f 	bic.w	r2, r2, #15
 8001642:	62da      	str	r2, [r3, #44]	; 0x2c
 8001644:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001646:	4a2d      	ldr	r2, [pc, #180]	; (80016fc <SystemInit+0xfc>)
 8001648:	b082      	sub	sp, #8
 800164a:	400a      	ands	r2, r1
 800164c:	631a      	str	r2, [r3, #48]	; 0x30
 800164e:	2200      	movs	r2, #0
 8001650:	609a      	str	r2, [r3, #8]
 8001652:	9200      	str	r2, [sp, #0]
 8001654:	9201      	str	r2, [sp, #4]
 8001656:	681a      	ldr	r2, [r3, #0]
 8001658:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
 800165c:	601a      	str	r2, [r3, #0]
 800165e:	4b25      	ldr	r3, [pc, #148]	; (80016f4 <SystemInit+0xf4>)
 8001660:	681a      	ldr	r2, [r3, #0]
 8001662:	f402 3200 	and.w	r2, r2, #131072	; 0x20000
 8001666:	9201      	str	r2, [sp, #4]
 8001668:	9a00      	ldr	r2, [sp, #0]
 800166a:	3201      	adds	r2, #1
 800166c:	9200      	str	r2, [sp, #0]
 800166e:	9a01      	ldr	r2, [sp, #4]
 8001670:	b91a      	cbnz	r2, 800167a <SystemInit+0x7a>
 8001672:	9a00      	ldr	r2, [sp, #0]
 8001674:	f5b2 4fa0 	cmp.w	r2, #20480	; 0x5000
 8001678:	d1f1      	bne.n	800165e <SystemInit+0x5e>
 800167a:	681b      	ldr	r3, [r3, #0]
 800167c:	f413 3300 	ands.w	r3, r3, #131072	; 0x20000
 8001680:	bf18      	it	ne
 8001682:	2301      	movne	r3, #1
 8001684:	9301      	str	r3, [sp, #4]
 8001686:	9b01      	ldr	r3, [sp, #4]
 8001688:	2b01      	cmp	r3, #1
 800168a:	d005      	beq.n	8001698 <SystemInit+0x98>
 800168c:	4b18      	ldr	r3, [pc, #96]	; (80016f0 <SystemInit+0xf0>)
 800168e:	f04f 6200 	mov.w	r2, #134217728	; 0x8000000
 8001692:	609a      	str	r2, [r3, #8]
 8001694:	b002      	add	sp, #8
 8001696:	4770      	bx	lr
 8001698:	4b19      	ldr	r3, [pc, #100]	; (8001700 <SystemInit+0x100>)
 800169a:	2212      	movs	r2, #18
 800169c:	601a      	str	r2, [r3, #0]
 800169e:	f5a3 5380 	sub.w	r3, r3, #4096	; 0x1000
 80016a2:	685a      	ldr	r2, [r3, #4]
 80016a4:	605a      	str	r2, [r3, #4]
 80016a6:	685a      	ldr	r2, [r3, #4]
 80016a8:	605a      	str	r2, [r3, #4]
 80016aa:	685a      	ldr	r2, [r3, #4]
 80016ac:	f442 6280 	orr.w	r2, r2, #1024	; 0x400
 80016b0:	605a      	str	r2, [r3, #4]
 80016b2:	685a      	ldr	r2, [r3, #4]
 80016b4:	f422 127c 	bic.w	r2, r2, #4128768	; 0x3f0000
 80016b8:	605a      	str	r2, [r3, #4]
 80016ba:	685a      	ldr	r2, [r3, #4]
 80016bc:	f442 12e8 	orr.w	r2, r2, #1900544	; 0x1d0000
 80016c0:	605a      	str	r2, [r3, #4]
 80016c2:	681a      	ldr	r2, [r3, #0]
 80016c4:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
 80016c8:	601a      	str	r2, [r3, #0]
 80016ca:	6819      	ldr	r1, [r3, #0]
 80016cc:	4a09      	ldr	r2, [pc, #36]	; (80016f4 <SystemInit+0xf4>)
 80016ce:	0189      	lsls	r1, r1, #6
 80016d0:	d5fb      	bpl.n	80016ca <SystemInit+0xca>
 80016d2:	6853      	ldr	r3, [r2, #4]
 80016d4:	f023 0303 	bic.w	r3, r3, #3
 80016d8:	6053      	str	r3, [r2, #4]
 80016da:	6853      	ldr	r3, [r2, #4]
 80016dc:	f043 0302 	orr.w	r3, r3, #2
 80016e0:	6053      	str	r3, [r2, #4]
 80016e2:	4b04      	ldr	r3, [pc, #16]	; (80016f4 <SystemInit+0xf4>)
 80016e4:	685b      	ldr	r3, [r3, #4]
 80016e6:	f003 030c 	and.w	r3, r3, #12
 80016ea:	2b08      	cmp	r3, #8
 80016ec:	d1f9      	bne.n	80016e2 <SystemInit+0xe2>
 80016ee:	e7cd      	b.n	800168c <SystemInit+0x8c>
 80016f0:	e000ed00 	.word	0xe000ed00
 80016f4:	40021000 	.word	0x40021000
 80016f8:	f87fc00c 	.word	0xf87fc00c
 80016fc:	ff00fccc 	.word	0xff00fccc
 8001700:	40022000 	.word	0x40022000

08001704 <RCC_GetClocksFreq>:
 8001704:	4ba5      	ldr	r3, [pc, #660]	; (800199c <RCC_GetClocksFreq+0x298>)
 8001706:	685a      	ldr	r2, [r3, #4]
 8001708:	f002 020c 	and.w	r2, r2, #12
 800170c:	2a04      	cmp	r2, #4
 800170e:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8001712:	d005      	beq.n	8001720 <RCC_GetClocksFreq+0x1c>
 8001714:	2a08      	cmp	r2, #8
 8001716:	d006      	beq.n	8001726 <RCC_GetClocksFreq+0x22>
 8001718:	4ba1      	ldr	r3, [pc, #644]	; (80019a0 <RCC_GetClocksFreq+0x29c>)
 800171a:	6003      	str	r3, [r0, #0]
 800171c:	b9ba      	cbnz	r2, 800174e <RCC_GetClocksFreq+0x4a>
 800171e:	e017      	b.n	8001750 <RCC_GetClocksFreq+0x4c>
 8001720:	4b9f      	ldr	r3, [pc, #636]	; (80019a0 <RCC_GetClocksFreq+0x29c>)
 8001722:	6003      	str	r3, [r0, #0]
 8001724:	e013      	b.n	800174e <RCC_GetClocksFreq+0x4a>
 8001726:	6859      	ldr	r1, [r3, #4]
 8001728:	685c      	ldr	r4, [r3, #4]
 800172a:	f3c1 4183 	ubfx	r1, r1, #18, #4
 800172e:	03e2      	lsls	r2, r4, #15
 8001730:	f101 0102 	add.w	r1, r1, #2
 8001734:	d401      	bmi.n	800173a <RCC_GetClocksFreq+0x36>
 8001736:	4a9b      	ldr	r2, [pc, #620]	; (80019a4 <RCC_GetClocksFreq+0x2a0>)
 8001738:	e006      	b.n	8001748 <RCC_GetClocksFreq+0x44>
 800173a:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 800173c:	4b98      	ldr	r3, [pc, #608]	; (80019a0 <RCC_GetClocksFreq+0x29c>)
 800173e:	f002 020f 	and.w	r2, r2, #15
 8001742:	3201      	adds	r2, #1
 8001744:	fbb3 f2f2 	udiv	r2, r3, r2
 8001748:	434a      	muls	r2, r1
 800174a:	6002      	str	r2, [r0, #0]
 800174c:	e000      	b.n	8001750 <RCC_GetClocksFreq+0x4c>
 800174e:	2200      	movs	r2, #0
 8001750:	4f92      	ldr	r7, [pc, #584]	; (800199c <RCC_GetClocksFreq+0x298>)
 8001752:	4d95      	ldr	r5, [pc, #596]	; (80019a8 <RCC_GetClocksFreq+0x2a4>)
 8001754:	687b      	ldr	r3, [r7, #4]
 8001756:	f8df 8254 	ldr.w	r8, [pc, #596]	; 80019ac <RCC_GetClocksFreq+0x2a8>
 800175a:	f3c3 1303 	ubfx	r3, r3, #4, #4
 800175e:	5cec      	ldrb	r4, [r5, r3]
 8001760:	6803      	ldr	r3, [r0, #0]
 8001762:	b2e4      	uxtb	r4, r4
 8001764:	fa23 f104 	lsr.w	r1, r3, r4
 8001768:	6041      	str	r1, [r0, #4]
 800176a:	687e      	ldr	r6, [r7, #4]
 800176c:	f3c6 2602 	ubfx	r6, r6, #8, #3
 8001770:	5dae      	ldrb	r6, [r5, r6]
 8001772:	fa21 f606 	lsr.w	r6, r1, r6
 8001776:	6086      	str	r6, [r0, #8]
 8001778:	f8d7 c004 	ldr.w	ip, [r7, #4]
 800177c:	f3cc 2cc2 	ubfx	ip, ip, #11, #3
 8001780:	f815 500c 	ldrb.w	r5, [r5, ip]
 8001784:	b2ed      	uxtb	r5, r5
 8001786:	40e9      	lsrs	r1, r5
 8001788:	60c1      	str	r1, [r0, #12]
 800178a:	f8d7 902c 	ldr.w	r9, [r7, #44]	; 0x2c
 800178e:	f3c9 1904 	ubfx	r9, r9, #4, #5
 8001792:	f009 0c0f 	and.w	ip, r9, #15
 8001796:	f019 0f10 	tst.w	r9, #16
 800179a:	f838 c01c 	ldrh.w	ip, [r8, ip, lsl #1]
 800179e:	fa1f fc8c 	uxth.w	ip, ip
 80017a2:	d007      	beq.n	80017b4 <RCC_GetClocksFreq+0xb0>
 80017a4:	f1bc 0f00 	cmp.w	ip, #0
 80017a8:	d004      	beq.n	80017b4 <RCC_GetClocksFreq+0xb0>
 80017aa:	fbb2 fcfc 	udiv	ip, r2, ip
 80017ae:	f8c0 c010 	str.w	ip, [r0, #16]
 80017b2:	e000      	b.n	80017b6 <RCC_GetClocksFreq+0xb2>
 80017b4:	6103      	str	r3, [r0, #16]
 80017b6:	6aff      	ldr	r7, [r7, #44]	; 0x2c
 80017b8:	f3c7 2c44 	ubfx	ip, r7, #9, #5
 80017bc:	f00c 070f 	and.w	r7, ip, #15
 80017c0:	f01c 0f10 	tst.w	ip, #16
 80017c4:	f838 7017 	ldrh.w	r7, [r8, r7, lsl #1]
 80017c8:	b2bf      	uxth	r7, r7
 80017ca:	d004      	beq.n	80017d6 <RCC_GetClocksFreq+0xd2>
 80017cc:	b11f      	cbz	r7, 80017d6 <RCC_GetClocksFreq+0xd2>
 80017ce:	fbb2 f7f7 	udiv	r7, r2, r7
 80017d2:	6147      	str	r7, [r0, #20]
 80017d4:	e000      	b.n	80017d8 <RCC_GetClocksFreq+0xd4>
 80017d6:	6143      	str	r3, [r0, #20]
 80017d8:	4f70      	ldr	r7, [pc, #448]	; (800199c <RCC_GetClocksFreq+0x298>)
 80017da:	f8d7 c030 	ldr.w	ip, [r7, #48]	; 0x30
 80017de:	f01c 0f10 	tst.w	ip, #16
 80017e2:	bf0a      	itet	eq
 80017e4:	f8df c1b8 	ldreq.w	ip, [pc, #440]	; 80019a0 <RCC_GetClocksFreq+0x29c>
 80017e8:	6183      	strne	r3, [r0, #24]
 80017ea:	f8c0 c018 	streq.w	ip, [r0, #24]
 80017ee:	6b3f      	ldr	r7, [r7, #48]	; 0x30
 80017f0:	06bf      	lsls	r7, r7, #26
 80017f2:	bf56      	itet	pl
 80017f4:	4f6a      	ldrpl	r7, [pc, #424]	; (80019a0 <RCC_GetClocksFreq+0x29c>)
 80017f6:	61c3      	strmi	r3, [r0, #28]
 80017f8:	61c7      	strpl	r7, [r0, #28]
 80017fa:	4f68      	ldr	r7, [pc, #416]	; (800199c <RCC_GetClocksFreq+0x298>)
 80017fc:	f8d7 c030 	ldr.w	ip, [r7, #48]	; 0x30
 8001800:	f01c 0f40 	tst.w	ip, #64	; 0x40
 8001804:	bf0a      	itet	eq
 8001806:	f8df c198 	ldreq.w	ip, [pc, #408]	; 80019a0 <RCC_GetClocksFreq+0x29c>
 800180a:	6203      	strne	r3, [r0, #32]
 800180c:	f8c0 c020 	streq.w	ip, [r0, #32]
 8001810:	6b3f      	ldr	r7, [r7, #48]	; 0x30
 8001812:	05ff      	lsls	r7, r7, #23
 8001814:	d506      	bpl.n	8001824 <RCC_GetClocksFreq+0x120>
 8001816:	4293      	cmp	r3, r2
 8001818:	d104      	bne.n	8001824 <RCC_GetClocksFreq+0x120>
 800181a:	42a5      	cmp	r5, r4
 800181c:	d102      	bne.n	8001824 <RCC_GetClocksFreq+0x120>
 800181e:	005f      	lsls	r7, r3, #1
 8001820:	6247      	str	r7, [r0, #36]	; 0x24
 8001822:	e000      	b.n	8001826 <RCC_GetClocksFreq+0x122>
 8001824:	6241      	str	r1, [r0, #36]	; 0x24
 8001826:	4f5d      	ldr	r7, [pc, #372]	; (800199c <RCC_GetClocksFreq+0x298>)
 8001828:	f8d7 c030 	ldr.w	ip, [r7, #48]	; 0x30
 800182c:	f41c 5f80 	tst.w	ip, #4096	; 0x1000
 8001830:	d008      	beq.n	8001844 <RCC_GetClocksFreq+0x140>
 8001832:	4293      	cmp	r3, r2
 8001834:	d106      	bne.n	8001844 <RCC_GetClocksFreq+0x140>
 8001836:	42a5      	cmp	r5, r4
 8001838:	d104      	bne.n	8001844 <RCC_GetClocksFreq+0x140>
 800183a:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 800183e:	f8c0 c028 	str.w	ip, [r0, #40]	; 0x28
 8001842:	e000      	b.n	8001846 <RCC_GetClocksFreq+0x142>
 8001844:	6281      	str	r1, [r0, #40]	; 0x28
 8001846:	6b3f      	ldr	r7, [r7, #48]	; 0x30
 8001848:	05bf      	lsls	r7, r7, #22
 800184a:	d506      	bpl.n	800185a <RCC_GetClocksFreq+0x156>
 800184c:	4293      	cmp	r3, r2
 800184e:	d104      	bne.n	800185a <RCC_GetClocksFreq+0x156>
 8001850:	42a5      	cmp	r5, r4
 8001852:	d102      	bne.n	800185a <RCC_GetClocksFreq+0x156>
 8001854:	005f      	lsls	r7, r3, #1
 8001856:	62c7      	str	r7, [r0, #44]	; 0x2c
 8001858:	e000      	b.n	800185c <RCC_GetClocksFreq+0x158>
 800185a:	62c1      	str	r1, [r0, #44]	; 0x2c
 800185c:	4f4f      	ldr	r7, [pc, #316]	; (800199c <RCC_GetClocksFreq+0x298>)
 800185e:	f8d7 c030 	ldr.w	ip, [r7, #48]	; 0x30
 8001862:	f41c 6f80 	tst.w	ip, #1024	; 0x400
 8001866:	d008      	beq.n	800187a <RCC_GetClocksFreq+0x176>
 8001868:	4293      	cmp	r3, r2
 800186a:	d106      	bne.n	800187a <RCC_GetClocksFreq+0x176>
 800186c:	42a5      	cmp	r5, r4
 800186e:	d104      	bne.n	800187a <RCC_GetClocksFreq+0x176>
 8001870:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8001874:	f8c0 c04c 	str.w	ip, [r0, #76]	; 0x4c
 8001878:	e000      	b.n	800187c <RCC_GetClocksFreq+0x178>
 800187a:	64c1      	str	r1, [r0, #76]	; 0x4c
 800187c:	6b3f      	ldr	r7, [r7, #48]	; 0x30
 800187e:	053f      	lsls	r7, r7, #20
 8001880:	d506      	bpl.n	8001890 <RCC_GetClocksFreq+0x18c>
 8001882:	4293      	cmp	r3, r2
 8001884:	d104      	bne.n	8001890 <RCC_GetClocksFreq+0x18c>
 8001886:	42a5      	cmp	r5, r4
 8001888:	d102      	bne.n	8001890 <RCC_GetClocksFreq+0x18c>
 800188a:	005f      	lsls	r7, r3, #1
 800188c:	6507      	str	r7, [r0, #80]	; 0x50
 800188e:	e000      	b.n	8001892 <RCC_GetClocksFreq+0x18e>
 8001890:	6501      	str	r1, [r0, #80]	; 0x50
 8001892:	4f42      	ldr	r7, [pc, #264]	; (800199c <RCC_GetClocksFreq+0x298>)
 8001894:	f8d7 c030 	ldr.w	ip, [r7, #48]	; 0x30
 8001898:	f41c 5f00 	tst.w	ip, #8192	; 0x2000
 800189c:	d008      	beq.n	80018b0 <RCC_GetClocksFreq+0x1ac>
 800189e:	4293      	cmp	r3, r2
 80018a0:	d106      	bne.n	80018b0 <RCC_GetClocksFreq+0x1ac>
 80018a2:	42a5      	cmp	r5, r4
 80018a4:	d104      	bne.n	80018b0 <RCC_GetClocksFreq+0x1ac>
 80018a6:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 80018aa:	f8c0 c054 	str.w	ip, [r0, #84]	; 0x54
 80018ae:	e000      	b.n	80018b2 <RCC_GetClocksFreq+0x1ae>
 80018b0:	6501      	str	r1, [r0, #80]	; 0x50
 80018b2:	6b3f      	ldr	r7, [r7, #48]	; 0x30
 80018b4:	043f      	lsls	r7, r7, #16
 80018b6:	d506      	bpl.n	80018c6 <RCC_GetClocksFreq+0x1c2>
 80018b8:	4293      	cmp	r3, r2
 80018ba:	d104      	bne.n	80018c6 <RCC_GetClocksFreq+0x1c2>
 80018bc:	42a5      	cmp	r5, r4
 80018be:	d102      	bne.n	80018c6 <RCC_GetClocksFreq+0x1c2>
 80018c0:	005a      	lsls	r2, r3, #1
 80018c2:	6582      	str	r2, [r0, #88]	; 0x58
 80018c4:	e000      	b.n	80018c8 <RCC_GetClocksFreq+0x1c4>
 80018c6:	6581      	str	r1, [r0, #88]	; 0x58
 80018c8:	4a34      	ldr	r2, [pc, #208]	; (800199c <RCC_GetClocksFreq+0x298>)
 80018ca:	6b14      	ldr	r4, [r2, #48]	; 0x30
 80018cc:	07a4      	lsls	r4, r4, #30
 80018ce:	d014      	beq.n	80018fa <RCC_GetClocksFreq+0x1f6>
 80018d0:	6b11      	ldr	r1, [r2, #48]	; 0x30
 80018d2:	f001 0103 	and.w	r1, r1, #3
 80018d6:	2901      	cmp	r1, #1
 80018d8:	d101      	bne.n	80018de <RCC_GetClocksFreq+0x1da>
 80018da:	6383      	str	r3, [r0, #56]	; 0x38
 80018dc:	e00e      	b.n	80018fc <RCC_GetClocksFreq+0x1f8>
 80018de:	6b11      	ldr	r1, [r2, #48]	; 0x30
 80018e0:	f001 0103 	and.w	r1, r1, #3
 80018e4:	2902      	cmp	r1, #2
 80018e6:	d102      	bne.n	80018ee <RCC_GetClocksFreq+0x1ea>
 80018e8:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 80018ec:	e005      	b.n	80018fa <RCC_GetClocksFreq+0x1f6>
 80018ee:	6b11      	ldr	r1, [r2, #48]	; 0x30
 80018f0:	f001 0103 	and.w	r1, r1, #3
 80018f4:	2903      	cmp	r1, #3
 80018f6:	d101      	bne.n	80018fc <RCC_GetClocksFreq+0x1f8>
 80018f8:	4929      	ldr	r1, [pc, #164]	; (80019a0 <RCC_GetClocksFreq+0x29c>)
 80018fa:	6381      	str	r1, [r0, #56]	; 0x38
 80018fc:	6b12      	ldr	r2, [r2, #48]	; 0x30
 80018fe:	4927      	ldr	r1, [pc, #156]	; (800199c <RCC_GetClocksFreq+0x298>)
 8001900:	f412 3f40 	tst.w	r2, #196608	; 0x30000
 8001904:	d101      	bne.n	800190a <RCC_GetClocksFreq+0x206>
 8001906:	63c6      	str	r6, [r0, #60]	; 0x3c
 8001908:	e018      	b.n	800193c <RCC_GetClocksFreq+0x238>
 800190a:	6b0a      	ldr	r2, [r1, #48]	; 0x30
 800190c:	f402 3240 	and.w	r2, r2, #196608	; 0x30000
 8001910:	f5b2 3f80 	cmp.w	r2, #65536	; 0x10000
 8001914:	d101      	bne.n	800191a <RCC_GetClocksFreq+0x216>
 8001916:	63c3      	str	r3, [r0, #60]	; 0x3c
 8001918:	e010      	b.n	800193c <RCC_GetClocksFreq+0x238>
 800191a:	6b0a      	ldr	r2, [r1, #48]	; 0x30
 800191c:	f402 3240 	and.w	r2, r2, #196608	; 0x30000
 8001920:	f5b2 3f00 	cmp.w	r2, #131072	; 0x20000
 8001924:	d102      	bne.n	800192c <RCC_GetClocksFreq+0x228>
 8001926:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 800192a:	e006      	b.n	800193a <RCC_GetClocksFreq+0x236>
 800192c:	6b0a      	ldr	r2, [r1, #48]	; 0x30
 800192e:	f402 3240 	and.w	r2, r2, #196608	; 0x30000
 8001932:	f5b2 3f40 	cmp.w	r2, #196608	; 0x30000
 8001936:	d101      	bne.n	800193c <RCC_GetClocksFreq+0x238>
 8001938:	4a19      	ldr	r2, [pc, #100]	; (80019a0 <RCC_GetClocksFreq+0x29c>)
 800193a:	63c2      	str	r2, [r0, #60]	; 0x3c
 800193c:	4a17      	ldr	r2, [pc, #92]	; (800199c <RCC_GetClocksFreq+0x298>)
 800193e:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8001940:	f411 2f40 	tst.w	r1, #786432	; 0xc0000
 8001944:	d101      	bne.n	800194a <RCC_GetClocksFreq+0x246>
 8001946:	6406      	str	r6, [r0, #64]	; 0x40
 8001948:	e018      	b.n	800197c <RCC_GetClocksFreq+0x278>
 800194a:	6b11      	ldr	r1, [r2, #48]	; 0x30
 800194c:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 8001950:	f5b1 2f80 	cmp.w	r1, #262144	; 0x40000
 8001954:	d101      	bne.n	800195a <RCC_GetClocksFreq+0x256>
 8001956:	6403      	str	r3, [r0, #64]	; 0x40
 8001958:	e010      	b.n	800197c <RCC_GetClocksFreq+0x278>
 800195a:	6b11      	ldr	r1, [r2, #48]	; 0x30
 800195c:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 8001960:	f5b1 2f00 	cmp.w	r1, #524288	; 0x80000
 8001964:	d102      	bne.n	800196c <RCC_GetClocksFreq+0x268>
 8001966:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 800196a:	e006      	b.n	800197a <RCC_GetClocksFreq+0x276>
 800196c:	6b11      	ldr	r1, [r2, #48]	; 0x30
 800196e:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 8001972:	f5b1 2f40 	cmp.w	r1, #786432	; 0xc0000
 8001976:	d101      	bne.n	800197c <RCC_GetClocksFreq+0x278>
 8001978:	4909      	ldr	r1, [pc, #36]	; (80019a0 <RCC_GetClocksFreq+0x29c>)
 800197a:	6401      	str	r1, [r0, #64]	; 0x40
 800197c:	6b12      	ldr	r2, [r2, #48]	; 0x30
 800197e:	4907      	ldr	r1, [pc, #28]	; (800199c <RCC_GetClocksFreq+0x298>)
 8001980:	f412 1f40 	tst.w	r2, #3145728	; 0x300000
 8001984:	d101      	bne.n	800198a <RCC_GetClocksFreq+0x286>
 8001986:	6446      	str	r6, [r0, #68]	; 0x44
 8001988:	e023      	b.n	80019d2 <RCC_GetClocksFreq+0x2ce>
 800198a:	6b0a      	ldr	r2, [r1, #48]	; 0x30
 800198c:	f402 1240 	and.w	r2, r2, #3145728	; 0x300000
 8001990:	f5b2 1f80 	cmp.w	r2, #1048576	; 0x100000
 8001994:	d10c      	bne.n	80019b0 <RCC_GetClocksFreq+0x2ac>
 8001996:	6443      	str	r3, [r0, #68]	; 0x44
 8001998:	e01b      	b.n	80019d2 <RCC_GetClocksFreq+0x2ce>
 800199a:	bf00      	nop
 800199c:	40021000 	.word	0x40021000
 80019a0:	007a1200 	.word	0x007a1200
 80019a4:	003d0900 	.word	0x003d0900
 80019a8:	20000074 	.word	0x20000074
 80019ac:	20000054 	.word	0x20000054
 80019b0:	6b0a      	ldr	r2, [r1, #48]	; 0x30
 80019b2:	f402 1240 	and.w	r2, r2, #3145728	; 0x300000
 80019b6:	f5b2 1f00 	cmp.w	r2, #2097152	; 0x200000
 80019ba:	d102      	bne.n	80019c2 <RCC_GetClocksFreq+0x2be>
 80019bc:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 80019c0:	e006      	b.n	80019d0 <RCC_GetClocksFreq+0x2cc>
 80019c2:	6b0a      	ldr	r2, [r1, #48]	; 0x30
 80019c4:	f402 1240 	and.w	r2, r2, #3145728	; 0x300000
 80019c8:	f5b2 1f40 	cmp.w	r2, #3145728	; 0x300000
 80019cc:	d101      	bne.n	80019d2 <RCC_GetClocksFreq+0x2ce>
 80019ce:	4a11      	ldr	r2, [pc, #68]	; (8001a14 <RCC_GetClocksFreq+0x310>)
 80019d0:	6442      	str	r2, [r0, #68]	; 0x44
 80019d2:	4a11      	ldr	r2, [pc, #68]	; (8001a18 <RCC_GetClocksFreq+0x314>)
 80019d4:	6b11      	ldr	r1, [r2, #48]	; 0x30
 80019d6:	f411 0f40 	tst.w	r1, #12582912	; 0xc00000
 80019da:	d102      	bne.n	80019e2 <RCC_GetClocksFreq+0x2de>
 80019dc:	6486      	str	r6, [r0, #72]	; 0x48
 80019de:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 80019e2:	6b11      	ldr	r1, [r2, #48]	; 0x30
 80019e4:	f401 0140 	and.w	r1, r1, #12582912	; 0xc00000
 80019e8:	f5b1 0f80 	cmp.w	r1, #4194304	; 0x400000
 80019ec:	d00f      	beq.n	8001a0e <RCC_GetClocksFreq+0x30a>
 80019ee:	6b13      	ldr	r3, [r2, #48]	; 0x30
 80019f0:	f403 0340 	and.w	r3, r3, #12582912	; 0xc00000
 80019f4:	f5b3 0f00 	cmp.w	r3, #8388608	; 0x800000
 80019f8:	d102      	bne.n	8001a00 <RCC_GetClocksFreq+0x2fc>
 80019fa:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 80019fe:	e006      	b.n	8001a0e <RCC_GetClocksFreq+0x30a>
 8001a00:	6b13      	ldr	r3, [r2, #48]	; 0x30
 8001a02:	f403 0340 	and.w	r3, r3, #12582912	; 0xc00000
 8001a06:	f5b3 0f40 	cmp.w	r3, #12582912	; 0xc00000
 8001a0a:	d101      	bne.n	8001a10 <RCC_GetClocksFreq+0x30c>
 8001a0c:	4b01      	ldr	r3, [pc, #4]	; (8001a14 <RCC_GetClocksFreq+0x310>)
 8001a0e:	6483      	str	r3, [r0, #72]	; 0x48
 8001a10:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8001a14:	007a1200 	.word	0x007a1200
 8001a18:	40021000 	.word	0x40021000

08001a1c <RCC_AHBPeriphClockCmd>:
 8001a1c:	bf00      	nop
 8001a1e:	bf00      	nop
 8001a20:	4b04      	ldr	r3, [pc, #16]	; (8001a34 <RCC_AHBPeriphClockCmd+0x18>)
 8001a22:	695a      	ldr	r2, [r3, #20]
 8001a24:	b109      	cbz	r1, 8001a2a <RCC_AHBPeriphClockCmd+0xe>
 8001a26:	4310      	orrs	r0, r2
 8001a28:	e001      	b.n	8001a2e <RCC_AHBPeriphClockCmd+0x12>
 8001a2a:	ea22 0000 	bic.w	r0, r2, r0
 8001a2e:	6158      	str	r0, [r3, #20]
 8001a30:	4770      	bx	lr
 8001a32:	bf00      	nop
 8001a34:	40021000 	.word	0x40021000

08001a38 <RCC_APB2PeriphClockCmd>:
 8001a38:	bf00      	nop
 8001a3a:	bf00      	nop
 8001a3c:	4b04      	ldr	r3, [pc, #16]	; (8001a50 <RCC_APB2PeriphClockCmd+0x18>)
 8001a3e:	699a      	ldr	r2, [r3, #24]
 8001a40:	b109      	cbz	r1, 8001a46 <RCC_APB2PeriphClockCmd+0xe>
 8001a42:	4310      	orrs	r0, r2
 8001a44:	e001      	b.n	8001a4a <RCC_APB2PeriphClockCmd+0x12>
 8001a46:	ea22 0000 	bic.w	r0, r2, r0
 8001a4a:	6198      	str	r0, [r3, #24]
 8001a4c:	4770      	bx	lr
 8001a4e:	bf00      	nop
 8001a50:	40021000 	.word	0x40021000

08001a54 <RCC_APB1PeriphClockCmd>:
 8001a54:	bf00      	nop
 8001a56:	bf00      	nop
 8001a58:	4b04      	ldr	r3, [pc, #16]	; (8001a6c <RCC_APB1PeriphClockCmd+0x18>)
 8001a5a:	69da      	ldr	r2, [r3, #28]
 8001a5c:	b109      	cbz	r1, 8001a62 <RCC_APB1PeriphClockCmd+0xe>
 8001a5e:	4310      	orrs	r0, r2
 8001a60:	e001      	b.n	8001a66 <RCC_APB1PeriphClockCmd+0x12>
 8001a62:	ea22 0000 	bic.w	r0, r2, r0
 8001a66:	61d8      	str	r0, [r3, #28]
 8001a68:	4770      	bx	lr
 8001a6a:	bf00      	nop
 8001a6c:	40021000 	.word	0x40021000

08001a70 <TIM_TimeBaseInit>:
 8001a70:	bf00      	nop
 8001a72:	bf00      	nop
 8001a74:	bf00      	nop
 8001a76:	4a24      	ldr	r2, [pc, #144]	; (8001b08 <TIM_TimeBaseInit+0x98>)
 8001a78:	8803      	ldrh	r3, [r0, #0]
 8001a7a:	4290      	cmp	r0, r2
 8001a7c:	b29b      	uxth	r3, r3
 8001a7e:	d012      	beq.n	8001aa6 <TIM_TimeBaseInit+0x36>
 8001a80:	f502 6200 	add.w	r2, r2, #2048	; 0x800
 8001a84:	4290      	cmp	r0, r2
 8001a86:	d00e      	beq.n	8001aa6 <TIM_TimeBaseInit+0x36>
 8001a88:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 8001a8c:	d00b      	beq.n	8001aa6 <TIM_TimeBaseInit+0x36>
 8001a8e:	f5a2 3298 	sub.w	r2, r2, #77824	; 0x13000
 8001a92:	4290      	cmp	r0, r2
 8001a94:	d007      	beq.n	8001aa6 <TIM_TimeBaseInit+0x36>
 8001a96:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8001a9a:	4290      	cmp	r0, r2
 8001a9c:	d003      	beq.n	8001aa6 <TIM_TimeBaseInit+0x36>
 8001a9e:	f502 32a4 	add.w	r2, r2, #83968	; 0x14800
 8001aa2:	4290      	cmp	r0, r2
 8001aa4:	d103      	bne.n	8001aae <TIM_TimeBaseInit+0x3e>
 8001aa6:	884a      	ldrh	r2, [r1, #2]
 8001aa8:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 8001aac:	4313      	orrs	r3, r2
 8001aae:	4a17      	ldr	r2, [pc, #92]	; (8001b0c <TIM_TimeBaseInit+0x9c>)
 8001ab0:	4290      	cmp	r0, r2
 8001ab2:	d008      	beq.n	8001ac6 <TIM_TimeBaseInit+0x56>
 8001ab4:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8001ab8:	4290      	cmp	r0, r2
 8001aba:	d004      	beq.n	8001ac6 <TIM_TimeBaseInit+0x56>
 8001abc:	f423 7340 	bic.w	r3, r3, #768	; 0x300
 8001ac0:	890a      	ldrh	r2, [r1, #8]
 8001ac2:	b29b      	uxth	r3, r3
 8001ac4:	4313      	orrs	r3, r2
 8001ac6:	8003      	strh	r3, [r0, #0]
 8001ac8:	684b      	ldr	r3, [r1, #4]
 8001aca:	62c3      	str	r3, [r0, #44]	; 0x2c
 8001acc:	880b      	ldrh	r3, [r1, #0]
 8001ace:	8503      	strh	r3, [r0, #40]	; 0x28
 8001ad0:	4b0d      	ldr	r3, [pc, #52]	; (8001b08 <TIM_TimeBaseInit+0x98>)
 8001ad2:	4298      	cmp	r0, r3
 8001ad4:	d013      	beq.n	8001afe <TIM_TimeBaseInit+0x8e>
 8001ad6:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 8001ada:	4298      	cmp	r0, r3
 8001adc:	d00f      	beq.n	8001afe <TIM_TimeBaseInit+0x8e>
 8001ade:	f503 6340 	add.w	r3, r3, #3072	; 0xc00
 8001ae2:	4298      	cmp	r0, r3
 8001ae4:	d00b      	beq.n	8001afe <TIM_TimeBaseInit+0x8e>
 8001ae6:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 8001aea:	4298      	cmp	r0, r3
 8001aec:	d007      	beq.n	8001afe <TIM_TimeBaseInit+0x8e>
 8001aee:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 8001af2:	4298      	cmp	r0, r3
 8001af4:	d003      	beq.n	8001afe <TIM_TimeBaseInit+0x8e>
 8001af6:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 8001afa:	4298      	cmp	r0, r3
 8001afc:	d101      	bne.n	8001b02 <TIM_TimeBaseInit+0x92>
 8001afe:	894b      	ldrh	r3, [r1, #10]
 8001b00:	8603      	strh	r3, [r0, #48]	; 0x30
 8001b02:	2301      	movs	r3, #1
 8001b04:	6143      	str	r3, [r0, #20]
 8001b06:	4770      	bx	lr
 8001b08:	40012c00 	.word	0x40012c00
 8001b0c:	40001000 	.word	0x40001000

08001b10 <TIM_Cmd>:
 8001b10:	bf00      	nop
 8001b12:	bf00      	nop
 8001b14:	8803      	ldrh	r3, [r0, #0]
 8001b16:	b119      	cbz	r1, 8001b20 <TIM_Cmd+0x10>
 8001b18:	b29b      	uxth	r3, r3
 8001b1a:	f043 0301 	orr.w	r3, r3, #1
 8001b1e:	e003      	b.n	8001b28 <TIM_Cmd+0x18>
 8001b20:	f023 0301 	bic.w	r3, r3, #1
 8001b24:	041b      	lsls	r3, r3, #16
 8001b26:	0c1b      	lsrs	r3, r3, #16
 8001b28:	8003      	strh	r3, [r0, #0]
 8001b2a:	4770      	bx	lr

08001b2c <TIM_OC1Init>:
 8001b2c:	b530      	push	{r4, r5, lr}
 8001b2e:	bf00      	nop
 8001b30:	bf00      	nop
 8001b32:	bf00      	nop
 8001b34:	bf00      	nop
 8001b36:	6a03      	ldr	r3, [r0, #32]
 8001b38:	680c      	ldr	r4, [r1, #0]
 8001b3a:	f023 0301 	bic.w	r3, r3, #1
 8001b3e:	6203      	str	r3, [r0, #32]
 8001b40:	6a03      	ldr	r3, [r0, #32]
 8001b42:	6842      	ldr	r2, [r0, #4]
 8001b44:	6985      	ldr	r5, [r0, #24]
 8001b46:	f425 3580 	bic.w	r5, r5, #65536	; 0x10000
 8001b4a:	f025 0573 	bic.w	r5, r5, #115	; 0x73
 8001b4e:	432c      	orrs	r4, r5
 8001b50:	898d      	ldrh	r5, [r1, #12]
 8001b52:	f023 0302 	bic.w	r3, r3, #2
 8001b56:	432b      	orrs	r3, r5
 8001b58:	888d      	ldrh	r5, [r1, #4]
 8001b5a:	432b      	orrs	r3, r5
 8001b5c:	4d15      	ldr	r5, [pc, #84]	; (8001bb4 <TIM_OC1Init+0x88>)
 8001b5e:	42a8      	cmp	r0, r5
 8001b60:	d00f      	beq.n	8001b82 <TIM_OC1Init+0x56>
 8001b62:	f505 6500 	add.w	r5, r5, #2048	; 0x800
 8001b66:	42a8      	cmp	r0, r5
 8001b68:	d00b      	beq.n	8001b82 <TIM_OC1Init+0x56>
 8001b6a:	f505 6540 	add.w	r5, r5, #3072	; 0xc00
 8001b6e:	42a8      	cmp	r0, r5
 8001b70:	d007      	beq.n	8001b82 <TIM_OC1Init+0x56>
 8001b72:	f505 6580 	add.w	r5, r5, #1024	; 0x400
 8001b76:	42a8      	cmp	r0, r5
 8001b78:	d003      	beq.n	8001b82 <TIM_OC1Init+0x56>
 8001b7a:	f505 6580 	add.w	r5, r5, #1024	; 0x400
 8001b7e:	42a8      	cmp	r0, r5
 8001b80:	d111      	bne.n	8001ba6 <TIM_OC1Init+0x7a>
 8001b82:	bf00      	nop
 8001b84:	bf00      	nop
 8001b86:	bf00      	nop
 8001b88:	bf00      	nop
 8001b8a:	89cd      	ldrh	r5, [r1, #14]
 8001b8c:	f023 0308 	bic.w	r3, r3, #8
 8001b90:	432b      	orrs	r3, r5
 8001b92:	88cd      	ldrh	r5, [r1, #6]
 8001b94:	f023 0304 	bic.w	r3, r3, #4
 8001b98:	432b      	orrs	r3, r5
 8001b9a:	8a0d      	ldrh	r5, [r1, #16]
 8001b9c:	f422 7240 	bic.w	r2, r2, #768	; 0x300
 8001ba0:	432a      	orrs	r2, r5
 8001ba2:	8a4d      	ldrh	r5, [r1, #18]
 8001ba4:	432a      	orrs	r2, r5
 8001ba6:	6042      	str	r2, [r0, #4]
 8001ba8:	688a      	ldr	r2, [r1, #8]
 8001baa:	6184      	str	r4, [r0, #24]
 8001bac:	6342      	str	r2, [r0, #52]	; 0x34
 8001bae:	6203      	str	r3, [r0, #32]
 8001bb0:	bd30      	pop	{r4, r5, pc}
 8001bb2:	bf00      	nop
 8001bb4:	40012c00 	.word	0x40012c00

08001bb8 <TIM_OC2Init>:
 8001bb8:	b570      	push	{r4, r5, r6, lr}
 8001bba:	bf00      	nop
 8001bbc:	bf00      	nop
 8001bbe:	bf00      	nop
 8001bc0:	bf00      	nop
 8001bc2:	6a03      	ldr	r3, [r0, #32]
 8001bc4:	680c      	ldr	r4, [r1, #0]
 8001bc6:	898e      	ldrh	r6, [r1, #12]
 8001bc8:	f023 0310 	bic.w	r3, r3, #16
 8001bcc:	6203      	str	r3, [r0, #32]
 8001bce:	6a05      	ldr	r5, [r0, #32]
 8001bd0:	6842      	ldr	r2, [r0, #4]
 8001bd2:	6983      	ldr	r3, [r0, #24]
 8001bd4:	f023 7380 	bic.w	r3, r3, #16777216	; 0x1000000
 8001bd8:	f423 43e6 	bic.w	r3, r3, #29440	; 0x7300
 8001bdc:	ea43 2404 	orr.w	r4, r3, r4, lsl #8
 8001be0:	888b      	ldrh	r3, [r1, #4]
 8001be2:	f025 0520 	bic.w	r5, r5, #32
 8001be6:	4333      	orrs	r3, r6
 8001be8:	ea45 1303 	orr.w	r3, r5, r3, lsl #4
 8001bec:	4d10      	ldr	r5, [pc, #64]	; (8001c30 <TIM_OC2Init+0x78>)
 8001bee:	42a8      	cmp	r0, r5
 8001bf0:	d003      	beq.n	8001bfa <TIM_OC2Init+0x42>
 8001bf2:	f505 6500 	add.w	r5, r5, #2048	; 0x800
 8001bf6:	42a8      	cmp	r0, r5
 8001bf8:	d114      	bne.n	8001c24 <TIM_OC2Init+0x6c>
 8001bfa:	bf00      	nop
 8001bfc:	bf00      	nop
 8001bfe:	bf00      	nop
 8001c00:	bf00      	nop
 8001c02:	89cd      	ldrh	r5, [r1, #14]
 8001c04:	8a0e      	ldrh	r6, [r1, #16]
 8001c06:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8001c0a:	ea43 1305 	orr.w	r3, r3, r5, lsl #4
 8001c0e:	88cd      	ldrh	r5, [r1, #6]
 8001c10:	f023 0340 	bic.w	r3, r3, #64	; 0x40
 8001c14:	ea43 1305 	orr.w	r3, r3, r5, lsl #4
 8001c18:	8a4d      	ldrh	r5, [r1, #18]
 8001c1a:	f422 6240 	bic.w	r2, r2, #3072	; 0xc00
 8001c1e:	4335      	orrs	r5, r6
 8001c20:	ea42 0285 	orr.w	r2, r2, r5, lsl #2
 8001c24:	6042      	str	r2, [r0, #4]
 8001c26:	688a      	ldr	r2, [r1, #8]
 8001c28:	6184      	str	r4, [r0, #24]
 8001c2a:	6382      	str	r2, [r0, #56]	; 0x38
 8001c2c:	6203      	str	r3, [r0, #32]
 8001c2e:	bd70      	pop	{r4, r5, r6, pc}
 8001c30:	40012c00 	.word	0x40012c00

08001c34 <TIM_CtrlPWMOutputs>:
 8001c34:	bf00      	nop
 8001c36:	bf00      	nop
 8001c38:	6c43      	ldr	r3, [r0, #68]	; 0x44
 8001c3a:	b111      	cbz	r1, 8001c42 <TIM_CtrlPWMOutputs+0xe>
 8001c3c:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
 8001c40:	e001      	b.n	8001c46 <TIM_CtrlPWMOutputs+0x12>
 8001c42:	f3c3 030e 	ubfx	r3, r3, #0, #15
 8001c46:	6443      	str	r3, [r0, #68]	; 0x44
 8001c48:	4770      	bx	lr

08001c4a <TIM_ClearITPendingBit>:
 8001c4a:	bf00      	nop
 8001c4c:	43c9      	mvns	r1, r1
 8001c4e:	b289      	uxth	r1, r1
 8001c50:	6101      	str	r1, [r0, #16]
 8001c52:	4770      	bx	lr

08001c54 <timer_init>:
 8001c54:	b530      	push	{r4, r5, lr}
 8001c56:	2300      	movs	r3, #0
 8001c58:	b085      	sub	sp, #20
 8001c5a:	491f      	ldr	r1, [pc, #124]	; (8001cd8 <timer_init+0x84>)
 8001c5c:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8001c60:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 8001c64:	491d      	ldr	r1, [pc, #116]	; (8001cdc <timer_init+0x88>)
 8001c66:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 8001c6a:	4a1d      	ldr	r2, [pc, #116]	; (8001ce0 <timer_init+0x8c>)
 8001c6c:	2400      	movs	r4, #0
 8001c6e:	f822 4013 	strh.w	r4, [r2, r3, lsl #1]
 8001c72:	3301      	adds	r3, #1
 8001c74:	2b04      	cmp	r3, #4
 8001c76:	4625      	mov	r5, r4
 8001c78:	d1ef      	bne.n	8001c5a <timer_init+0x6>
 8001c7a:	4b1a      	ldr	r3, [pc, #104]	; (8001ce4 <timer_init+0x90>)
 8001c7c:	2002      	movs	r0, #2
 8001c7e:	2101      	movs	r1, #1
 8001c80:	601c      	str	r4, [r3, #0]
 8001c82:	f7ff fee7 	bl	8001a54 <RCC_APB1PeriphClockCmd>
 8001c86:	f8ad 4006 	strh.w	r4, [sp, #6]
 8001c8a:	f8ad 400c 	strh.w	r4, [sp, #12]
 8001c8e:	f8ad 400e 	strh.w	r4, [sp, #14]
 8001c92:	4c15      	ldr	r4, [pc, #84]	; (8001ce8 <timer_init+0x94>)
 8001c94:	f44f 738c 	mov.w	r3, #280	; 0x118
 8001c98:	f8ad 3004 	strh.w	r3, [sp, #4]
 8001c9c:	4620      	mov	r0, r4
 8001c9e:	2331      	movs	r3, #49	; 0x31
 8001ca0:	a901      	add	r1, sp, #4
 8001ca2:	9302      	str	r3, [sp, #8]
 8001ca4:	f7ff fee4 	bl	8001a70 <TIM_TimeBaseInit>
 8001ca8:	4620      	mov	r0, r4
 8001caa:	2101      	movs	r1, #1
 8001cac:	f7ff ff30 	bl	8001b10 <TIM_Cmd>
 8001cb0:	68e3      	ldr	r3, [r4, #12]
 8001cb2:	f043 0301 	orr.w	r3, r3, #1
 8001cb6:	60e3      	str	r3, [r4, #12]
 8001cb8:	231d      	movs	r3, #29
 8001cba:	f88d 3000 	strb.w	r3, [sp]
 8001cbe:	4668      	mov	r0, sp
 8001cc0:	2301      	movs	r3, #1
 8001cc2:	f88d 5001 	strb.w	r5, [sp, #1]
 8001cc6:	f88d 3002 	strb.w	r3, [sp, #2]
 8001cca:	f88d 3003 	strb.w	r3, [sp, #3]
 8001cce:	f7ff faf3 	bl	80012b8 <NVIC_Init>
 8001cd2:	b005      	add	sp, #20
 8001cd4:	bd30      	pop	{r4, r5, pc}
 8001cd6:	bf00      	nop
 8001cd8:	20000b48 	.word	0x20000b48
 8001cdc:	20000b3c 	.word	0x20000b3c
 8001ce0:	20000b34 	.word	0x20000b34
 8001ce4:	20000b44 	.word	0x20000b44
 8001ce8:	40000400 	.word	0x40000400

08001cec <TIM3_IRQHandler>:
 8001cec:	2300      	movs	r3, #0
 8001cee:	4a10      	ldr	r2, [pc, #64]	; (8001d30 <TIM3_IRQHandler+0x44>)
 8001cf0:	f832 1013 	ldrh.w	r1, [r2, r3, lsl #1]
 8001cf4:	b289      	uxth	r1, r1
 8001cf6:	b129      	cbz	r1, 8001d04 <TIM3_IRQHandler+0x18>
 8001cf8:	f832 1013 	ldrh.w	r1, [r2, r3, lsl #1]
 8001cfc:	b289      	uxth	r1, r1
 8001cfe:	3901      	subs	r1, #1
 8001d00:	b289      	uxth	r1, r1
 8001d02:	e007      	b.n	8001d14 <TIM3_IRQHandler+0x28>
 8001d04:	490b      	ldr	r1, [pc, #44]	; (8001d34 <TIM3_IRQHandler+0x48>)
 8001d06:	f831 1013 	ldrh.w	r1, [r1, r3, lsl #1]
 8001d0a:	b289      	uxth	r1, r1
 8001d0c:	f822 1013 	strh.w	r1, [r2, r3, lsl #1]
 8001d10:	4a09      	ldr	r2, [pc, #36]	; (8001d38 <TIM3_IRQHandler+0x4c>)
 8001d12:	2101      	movs	r1, #1
 8001d14:	f822 1013 	strh.w	r1, [r2, r3, lsl #1]
 8001d18:	3301      	adds	r3, #1
 8001d1a:	2b04      	cmp	r3, #4
 8001d1c:	d1e7      	bne.n	8001cee <TIM3_IRQHandler+0x2>
 8001d1e:	4b07      	ldr	r3, [pc, #28]	; (8001d3c <TIM3_IRQHandler+0x50>)
 8001d20:	4807      	ldr	r0, [pc, #28]	; (8001d40 <TIM3_IRQHandler+0x54>)
 8001d22:	681a      	ldr	r2, [r3, #0]
 8001d24:	2101      	movs	r1, #1
 8001d26:	3201      	adds	r2, #1
 8001d28:	601a      	str	r2, [r3, #0]
 8001d2a:	f7ff bf8e 	b.w	8001c4a <TIM_ClearITPendingBit>
 8001d2e:	bf00      	nop
 8001d30:	20000b48 	.word	0x20000b48
 8001d34:	20000b3c 	.word	0x20000b3c
 8001d38:	20000b34 	.word	0x20000b34
 8001d3c:	20000b44 	.word	0x20000b44
 8001d40:	40000400 	.word	0x40000400

08001d44 <timer_get_time>:
 8001d44:	b082      	sub	sp, #8
 8001d46:	b672      	cpsid	i
 8001d48:	4b04      	ldr	r3, [pc, #16]	; (8001d5c <timer_get_time+0x18>)
 8001d4a:	681b      	ldr	r3, [r3, #0]
 8001d4c:	9301      	str	r3, [sp, #4]
 8001d4e:	b662      	cpsie	i
 8001d50:	9801      	ldr	r0, [sp, #4]
 8001d52:	230a      	movs	r3, #10
 8001d54:	fbb0 f0f3 	udiv	r0, r0, r3
 8001d58:	b002      	add	sp, #8
 8001d5a:	4770      	bx	lr
 8001d5c:	20000b44 	.word	0x20000b44

08001d60 <timer_delay_ms>:
 8001d60:	b513      	push	{r0, r1, r4, lr}
 8001d62:	4604      	mov	r4, r0
 8001d64:	f7ff ffee 	bl	8001d44 <timer_get_time>
 8001d68:	4420      	add	r0, r4
 8001d6a:	9001      	str	r0, [sp, #4]
 8001d6c:	9c01      	ldr	r4, [sp, #4]
 8001d6e:	f7ff ffe9 	bl	8001d44 <timer_get_time>
 8001d72:	4284      	cmp	r4, r0
 8001d74:	d902      	bls.n	8001d7c <timer_delay_ms+0x1c>
 8001d76:	f7ff fc3f 	bl	80015f8 <sleep>
 8001d7a:	e7f7      	b.n	8001d6c <timer_delay_ms+0xc>
 8001d7c:	b002      	add	sp, #8
 8001d7e:	bd10      	pop	{r4, pc}

08001d80 <event_timer_set_period>:
 8001d80:	b672      	cpsid	i
 8001d82:	230a      	movs	r3, #10
 8001d84:	4359      	muls	r1, r3
 8001d86:	4b06      	ldr	r3, [pc, #24]	; (8001da0 <event_timer_set_period+0x20>)
 8001d88:	b289      	uxth	r1, r1
 8001d8a:	f823 1010 	strh.w	r1, [r3, r0, lsl #1]
 8001d8e:	4b05      	ldr	r3, [pc, #20]	; (8001da4 <event_timer_set_period+0x24>)
 8001d90:	f823 1010 	strh.w	r1, [r3, r0, lsl #1]
 8001d94:	4b04      	ldr	r3, [pc, #16]	; (8001da8 <event_timer_set_period+0x28>)
 8001d96:	2200      	movs	r2, #0
 8001d98:	f823 2010 	strh.w	r2, [r3, r0, lsl #1]
 8001d9c:	b662      	cpsie	i
 8001d9e:	4770      	bx	lr
 8001da0:	20000b48 	.word	0x20000b48
 8001da4:	20000b3c 	.word	0x20000b3c
 8001da8:	20000b34 	.word	0x20000b34

08001dac <event_timer_wait>:
 8001dac:	b510      	push	{r4, lr}
 8001dae:	4604      	mov	r4, r0
 8001db0:	4b06      	ldr	r3, [pc, #24]	; (8001dcc <event_timer_wait+0x20>)
 8001db2:	f833 2014 	ldrh.w	r2, [r3, r4, lsl #1]
 8001db6:	b292      	uxth	r2, r2
 8001db8:	b912      	cbnz	r2, 8001dc0 <event_timer_wait+0x14>
 8001dba:	f7ff fc1d 	bl	80015f8 <sleep>
 8001dbe:	e7f7      	b.n	8001db0 <event_timer_wait+0x4>
 8001dc0:	b672      	cpsid	i
 8001dc2:	2200      	movs	r2, #0
 8001dc4:	f823 2014 	strh.w	r2, [r3, r4, lsl #1]
 8001dc8:	b662      	cpsie	i
 8001dca:	bd10      	pop	{r4, pc}
 8001dcc:	20000b34 	.word	0x20000b34

08001dd0 <GPIO_Init>:
 8001dd0:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001dd2:	bf00      	nop
 8001dd4:	bf00      	nop
 8001dd6:	bf00      	nop
 8001dd8:	bf00      	nop
 8001dda:	2300      	movs	r3, #0
 8001ddc:	680e      	ldr	r6, [r1, #0]
 8001dde:	461a      	mov	r2, r3
 8001de0:	2501      	movs	r5, #1
 8001de2:	4095      	lsls	r5, r2
 8001de4:	ea05 0406 	and.w	r4, r5, r6
 8001de8:	42ac      	cmp	r4, r5
 8001dea:	d131      	bne.n	8001e50 <GPIO_Init+0x80>
 8001dec:	790d      	ldrb	r5, [r1, #4]
 8001dee:	1e6f      	subs	r7, r5, #1
 8001df0:	b2ff      	uxtb	r7, r7
 8001df2:	2f01      	cmp	r7, #1
 8001df4:	d81c      	bhi.n	8001e30 <GPIO_Init+0x60>
 8001df6:	bf00      	nop
 8001df8:	f04f 0c03 	mov.w	ip, #3
 8001dfc:	6887      	ldr	r7, [r0, #8]
 8001dfe:	fa0c fc03 	lsl.w	ip, ip, r3
 8001e02:	ea27 070c 	bic.w	r7, r7, ip
 8001e06:	6087      	str	r7, [r0, #8]
 8001e08:	f891 c005 	ldrb.w	ip, [r1, #5]
 8001e0c:	6887      	ldr	r7, [r0, #8]
 8001e0e:	fa0c fc03 	lsl.w	ip, ip, r3
 8001e12:	ea4c 0707 	orr.w	r7, ip, r7
 8001e16:	6087      	str	r7, [r0, #8]
 8001e18:	bf00      	nop
 8001e1a:	8887      	ldrh	r7, [r0, #4]
 8001e1c:	b2bf      	uxth	r7, r7
 8001e1e:	ea27 0404 	bic.w	r4, r7, r4
 8001e22:	8084      	strh	r4, [r0, #4]
 8001e24:	798c      	ldrb	r4, [r1, #6]
 8001e26:	8887      	ldrh	r7, [r0, #4]
 8001e28:	4094      	lsls	r4, r2
 8001e2a:	433c      	orrs	r4, r7
 8001e2c:	b2a4      	uxth	r4, r4
 8001e2e:	8084      	strh	r4, [r0, #4]
 8001e30:	2403      	movs	r4, #3
 8001e32:	6807      	ldr	r7, [r0, #0]
 8001e34:	409c      	lsls	r4, r3
 8001e36:	43e4      	mvns	r4, r4
 8001e38:	4027      	ands	r7, r4
 8001e3a:	6007      	str	r7, [r0, #0]
 8001e3c:	6807      	ldr	r7, [r0, #0]
 8001e3e:	409d      	lsls	r5, r3
 8001e40:	433d      	orrs	r5, r7
 8001e42:	6005      	str	r5, [r0, #0]
 8001e44:	68c5      	ldr	r5, [r0, #12]
 8001e46:	402c      	ands	r4, r5
 8001e48:	79cd      	ldrb	r5, [r1, #7]
 8001e4a:	409d      	lsls	r5, r3
 8001e4c:	432c      	orrs	r4, r5
 8001e4e:	60c4      	str	r4, [r0, #12]
 8001e50:	3201      	adds	r2, #1
 8001e52:	2a10      	cmp	r2, #16
 8001e54:	f103 0302 	add.w	r3, r3, #2
 8001e58:	d1c2      	bne.n	8001de0 <GPIO_Init+0x10>
 8001e5a:	bdf0      	pop	{r4, r5, r6, r7, pc}

08001e5c <GPIO_SetBits>:
 8001e5c:	bf00      	nop
 8001e5e:	bf00      	nop
 8001e60:	6181      	str	r1, [r0, #24]
 8001e62:	4770      	bx	lr

08001e64 <GPIO_ResetBits>:
 8001e64:	bf00      	nop
 8001e66:	bf00      	nop
 8001e68:	8501      	strh	r1, [r0, #40]	; 0x28
 8001e6a:	4770      	bx	lr

08001e6c <GPIO_PinAFConfig>:
 8001e6c:	b510      	push	{r4, lr}
 8001e6e:	bf00      	nop
 8001e70:	bf00      	nop
 8001e72:	bf00      	nop
 8001e74:	f001 0307 	and.w	r3, r1, #7
 8001e78:	08c9      	lsrs	r1, r1, #3
 8001e7a:	eb00 0081 	add.w	r0, r0, r1, lsl #2
 8001e7e:	009b      	lsls	r3, r3, #2
 8001e80:	6a04      	ldr	r4, [r0, #32]
 8001e82:	210f      	movs	r1, #15
 8001e84:	4099      	lsls	r1, r3
 8001e86:	ea24 0101 	bic.w	r1, r4, r1
 8001e8a:	6201      	str	r1, [r0, #32]
 8001e8c:	6a01      	ldr	r1, [r0, #32]
 8001e8e:	fa02 f303 	lsl.w	r3, r2, r3
 8001e92:	430b      	orrs	r3, r1
 8001e94:	6203      	str	r3, [r0, #32]
 8001e96:	bd10      	pop	{r4, pc}

08001e98 <gpio_init>:
 8001e98:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
 8001e9c:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 8001ea0:	2101      	movs	r1, #1
 8001ea2:	f7ff fdbb 	bl	8001a1c <RCC_AHBPeriphClockCmd>
 8001ea6:	4d21      	ldr	r5, [pc, #132]	; (8001f2c <gpio_init+0x94>)
 8001ea8:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 8001eac:	2101      	movs	r1, #1
 8001eae:	f7ff fdb5 	bl	8001a1c <RCC_AHBPeriphClockCmd>
 8001eb2:	f44f 2000 	mov.w	r0, #524288	; 0x80000
 8001eb6:	2101      	movs	r1, #1
 8001eb8:	f7ff fdb0 	bl	8001a1c <RCC_AHBPeriphClockCmd>
 8001ebc:	2400      	movs	r4, #0
 8001ebe:	2603      	movs	r6, #3
 8001ec0:	f44f 4900 	mov.w	r9, #32768	; 0x8000
 8001ec4:	2701      	movs	r7, #1
 8001ec6:	4628      	mov	r0, r5
 8001ec8:	4669      	mov	r1, sp
 8001eca:	f88d 7004 	strb.w	r7, [sp, #4]
 8001ece:	f8cd 9000 	str.w	r9, [sp]
 8001ed2:	f88d 4006 	strb.w	r4, [sp, #6]
 8001ed6:	f88d 6005 	strb.w	r6, [sp, #5]
 8001eda:	f88d 4007 	strb.w	r4, [sp, #7]
 8001ede:	f7ff ff77 	bl	8001dd0 <GPIO_Init>
 8001ee2:	f88d 7004 	strb.w	r7, [sp, #4]
 8001ee6:	4f12      	ldr	r7, [pc, #72]	; (8001f30 <gpio_init+0x98>)
 8001ee8:	f88d 4006 	strb.w	r4, [sp, #6]
 8001eec:	f44f 5800 	mov.w	r8, #8192	; 0x2000
 8001ef0:	4638      	mov	r0, r7
 8001ef2:	4669      	mov	r1, sp
 8001ef4:	f8cd 8000 	str.w	r8, [sp]
 8001ef8:	f88d 6005 	strb.w	r6, [sp, #5]
 8001efc:	f88d 4007 	strb.w	r4, [sp, #7]
 8001f00:	f7ff ff66 	bl	8001dd0 <GPIO_Init>
 8001f04:	f44f 7300 	mov.w	r3, #512	; 0x200
 8001f08:	4628      	mov	r0, r5
 8001f0a:	4669      	mov	r1, sp
 8001f0c:	9300      	str	r3, [sp, #0]
 8001f0e:	f88d 4004 	strb.w	r4, [sp, #4]
 8001f12:	f88d 6005 	strb.w	r6, [sp, #5]
 8001f16:	f88d 4007 	strb.w	r4, [sp, #7]
 8001f1a:	f7ff ff59 	bl	8001dd0 <GPIO_Init>
 8001f1e:	f8c5 9018 	str.w	r9, [r5, #24]
 8001f22:	f8c7 8018 	str.w	r8, [r7, #24]
 8001f26:	b003      	add	sp, #12
 8001f28:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8001f2c:	48000400 	.word	0x48000400
 8001f30:	48000800 	.word	0x48000800

08001f34 <led_on>:
 8001f34:	0402      	lsls	r2, r0, #16
 8001f36:	d503      	bpl.n	8001f40 <led_on+0xc>
 8001f38:	4b05      	ldr	r3, [pc, #20]	; (8001f50 <led_on+0x1c>)
 8001f3a:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 8001f3e:	619a      	str	r2, [r3, #24]
 8001f40:	0483      	lsls	r3, r0, #18
 8001f42:	d503      	bpl.n	8001f4c <led_on+0x18>
 8001f44:	4b03      	ldr	r3, [pc, #12]	; (8001f54 <led_on+0x20>)
 8001f46:	f44f 5200 	mov.w	r2, #8192	; 0x2000
 8001f4a:	851a      	strh	r2, [r3, #40]	; 0x28
 8001f4c:	4770      	bx	lr
 8001f4e:	bf00      	nop
 8001f50:	48000400 	.word	0x48000400
 8001f54:	48000800 	.word	0x48000800

08001f58 <led_off>:
 8001f58:	0403      	lsls	r3, r0, #16
 8001f5a:	d503      	bpl.n	8001f64 <led_off+0xc>
 8001f5c:	4b05      	ldr	r3, [pc, #20]	; (8001f74 <led_off+0x1c>)
 8001f5e:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 8001f62:	851a      	strh	r2, [r3, #40]	; 0x28
 8001f64:	0481      	lsls	r1, r0, #18
 8001f66:	d503      	bpl.n	8001f70 <led_off+0x18>
 8001f68:	4b03      	ldr	r3, [pc, #12]	; (8001f78 <led_off+0x20>)
 8001f6a:	f44f 5200 	mov.w	r2, #8192	; 0x2000
 8001f6e:	619a      	str	r2, [r3, #24]
 8001f70:	4770      	bx	lr
 8001f72:	bf00      	nop
 8001f74:	48000400 	.word	0x48000400
 8001f78:	48000800 	.word	0x48000800

08001f7c <get_key>:
 8001f7c:	4b02      	ldr	r3, [pc, #8]	; (8001f88 <get_key+0xc>)
 8001f7e:	8a18      	ldrh	r0, [r3, #16]
 8001f80:	43c0      	mvns	r0, r0
 8001f82:	f400 7000 	and.w	r0, r0, #512	; 0x200
 8001f86:	4770      	bx	lr
 8001f88:	48000400 	.word	0x48000400

08001f8c <drv8834_run>:
 8001f8c:	1e02      	subs	r2, r0, #0
 8001f8e:	4b18      	ldr	r3, [pc, #96]	; (8001ff0 <drv8834_run+0x64>)
 8001f90:	dd09      	ble.n	8001fa6 <drv8834_run+0x1a>
 8001f92:	6998      	ldr	r0, [r3, #24]
 8001f94:	f040 0008 	orr.w	r0, r0, #8
 8001f98:	6198      	str	r0, [r3, #24]
 8001f9a:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8001f9e:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001fa2:	6198      	str	r0, [r3, #24]
 8001fa4:	e00b      	b.n	8001fbe <drv8834_run+0x32>
 8001fa6:	8d18      	ldrh	r0, [r3, #40]	; 0x28
 8001fa8:	b280      	uxth	r0, r0
 8001faa:	f040 0008 	orr.w	r0, r0, #8
 8001fae:	8518      	strh	r0, [r3, #40]	; 0x28
 8001fb0:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8001fb4:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001fb8:	4252      	negs	r2, r2
 8001fba:	8518      	strh	r0, [r3, #40]	; 0x28
 8001fbc:	b212      	sxth	r2, r2
 8001fbe:	2900      	cmp	r1, #0
 8001fc0:	4b0b      	ldr	r3, [pc, #44]	; (8001ff0 <drv8834_run+0x64>)
 8001fc2:	dd05      	ble.n	8001fd0 <drv8834_run+0x44>
 8001fc4:	8d18      	ldrh	r0, [r3, #40]	; 0x28
 8001fc6:	b280      	uxth	r0, r0
 8001fc8:	f040 0020 	orr.w	r0, r0, #32
 8001fcc:	8518      	strh	r0, [r3, #40]	; 0x28
 8001fce:	e005      	b.n	8001fdc <drv8834_run+0x50>
 8001fd0:	6998      	ldr	r0, [r3, #24]
 8001fd2:	4249      	negs	r1, r1
 8001fd4:	f040 0020 	orr.w	r0, r0, #32
 8001fd8:	6198      	str	r0, [r3, #24]
 8001fda:	b209      	sxth	r1, r1
 8001fdc:	2964      	cmp	r1, #100	; 0x64
 8001fde:	bfb4      	ite	lt
 8001fe0:	4608      	movlt	r0, r1
 8001fe2:	2064      	movge	r0, #100	; 0x64
 8001fe4:	2a64      	cmp	r2, #100	; 0x64
 8001fe6:	bfb4      	ite	lt
 8001fe8:	4611      	movlt	r1, r2
 8001fea:	2164      	movge	r1, #100	; 0x64
 8001fec:	f000 b844 	b.w	8002078 <pwm_set>
 8001ff0:	48000400 	.word	0x48000400

08001ff4 <drv8834_init>:
 8001ff4:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 8001ff6:	4d1f      	ldr	r5, [pc, #124]	; (8002074 <drv8834_init+0x80>)
 8001ff8:	2400      	movs	r4, #0
 8001ffa:	2603      	movs	r6, #3
 8001ffc:	2338      	movs	r3, #56	; 0x38
 8001ffe:	2701      	movs	r7, #1
 8002000:	4628      	mov	r0, r5
 8002002:	4669      	mov	r1, sp
 8002004:	9300      	str	r3, [sp, #0]
 8002006:	f88d 7004 	strb.w	r7, [sp, #4]
 800200a:	f88d 4006 	strb.w	r4, [sp, #6]
 800200e:	f88d 6005 	strb.w	r6, [sp, #5]
 8002012:	f88d 4007 	strb.w	r4, [sp, #7]
 8002016:	f7ff fedb 	bl	8001dd0 <GPIO_Init>
 800201a:	2308      	movs	r3, #8
 800201c:	9300      	str	r3, [sp, #0]
 800201e:	4628      	mov	r0, r5
 8002020:	2302      	movs	r3, #2
 8002022:	4669      	mov	r1, sp
 8002024:	f88d 3004 	strb.w	r3, [sp, #4]
 8002028:	f88d 4006 	strb.w	r4, [sp, #6]
 800202c:	f88d 6005 	strb.w	r6, [sp, #5]
 8002030:	f88d 4007 	strb.w	r4, [sp, #7]
 8002034:	f7ff fecc 	bl	8001dd0 <GPIO_Init>
 8002038:	220f      	movs	r2, #15
 800203a:	4628      	mov	r0, r5
 800203c:	4631      	mov	r1, r6
 800203e:	f7ff ff15 	bl	8001e6c <GPIO_PinAFConfig>
 8002042:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8002046:	4669      	mov	r1, sp
 8002048:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 800204c:	9300      	str	r3, [sp, #0]
 800204e:	f88d 7004 	strb.w	r7, [sp, #4]
 8002052:	f88d 4006 	strb.w	r4, [sp, #6]
 8002056:	f88d 6005 	strb.w	r6, [sp, #5]
 800205a:	f88d 4007 	strb.w	r4, [sp, #7]
 800205e:	f7ff feb7 	bl	8001dd0 <GPIO_Init>
 8002062:	2310      	movs	r3, #16
 8002064:	852b      	strh	r3, [r5, #40]	; 0x28
 8002066:	4620      	mov	r0, r4
 8002068:	4621      	mov	r1, r4
 800206a:	f7ff ff8f 	bl	8001f8c <drv8834_run>
 800206e:	b003      	add	sp, #12
 8002070:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8002072:	bf00      	nop
 8002074:	48000400 	.word	0x48000400

08002078 <pwm_set>:
 8002078:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800207c:	b086      	sub	sp, #24
 800207e:	2370      	movs	r3, #112	; 0x70
 8002080:	9301      	str	r3, [sp, #4]
 8002082:	2301      	movs	r3, #1
 8002084:	f8ad 3008 	strh.w	r3, [sp, #8]
 8002088:	2304      	movs	r3, #4
 800208a:	f8ad 300a 	strh.w	r3, [sp, #10]
 800208e:	4f17      	ldr	r7, [pc, #92]	; (80020ec <pwm_set+0x74>)
 8002090:	4c17      	ldr	r4, [pc, #92]	; (80020f0 <pwm_set+0x78>)
 8002092:	2302      	movs	r3, #2
 8002094:	f8ad 3010 	strh.w	r3, [sp, #16]
 8002098:	2300      	movs	r3, #0
 800209a:	f8ad 3012 	strh.w	r3, [sp, #18]
 800209e:	f8ad 3016 	strh.w	r3, [sp, #22]
 80020a2:	683b      	ldr	r3, [r7, #0]
 80020a4:	f242 7610 	movw	r6, #10000	; 0x2710
 80020a8:	fbb3 f3f6 	udiv	r3, r3, r6
 80020ac:	3b02      	subs	r3, #2
 80020ae:	4358      	muls	r0, r3
 80020b0:	2564      	movs	r5, #100	; 0x64
 80020b2:	fbb0 f3f5 	udiv	r3, r0, r5
 80020b6:	f44f 7280 	mov.w	r2, #256	; 0x100
 80020ba:	4620      	mov	r0, r4
 80020bc:	4688      	mov	r8, r1
 80020be:	a901      	add	r1, sp, #4
 80020c0:	f8ad 2014 	strh.w	r2, [sp, #20]
 80020c4:	9303      	str	r3, [sp, #12]
 80020c6:	f7ff fd31 	bl	8001b2c <TIM_OC1Init>
 80020ca:	683b      	ldr	r3, [r7, #0]
 80020cc:	fbb3 f6f6 	udiv	r6, r3, r6
 80020d0:	3e02      	subs	r6, #2
 80020d2:	fb06 f808 	mul.w	r8, r6, r8
 80020d6:	fbb8 f5f5 	udiv	r5, r8, r5
 80020da:	4620      	mov	r0, r4
 80020dc:	a901      	add	r1, sp, #4
 80020de:	9503      	str	r5, [sp, #12]
 80020e0:	f7ff fd6a 	bl	8001bb8 <TIM_OC2Init>
 80020e4:	b006      	add	sp, #24
 80020e6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80020ea:	bf00      	nop
 80020ec:	20000050 	.word	0x20000050
 80020f0:	40012c00 	.word	0x40012c00

080020f4 <pwm_init>:
 80020f4:	b530      	push	{r4, r5, lr}
 80020f6:	f44f 6000 	mov.w	r0, #2048	; 0x800
 80020fa:	b087      	sub	sp, #28
 80020fc:	2101      	movs	r1, #1
 80020fe:	f7ff fc9b 	bl	8001a38 <RCC_APB2PeriphClockCmd>
 8002102:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 8002106:	2101      	movs	r1, #1
 8002108:	f7ff fc88 	bl	8001a1c <RCC_AHBPeriphClockCmd>
 800210c:	4c1d      	ldr	r4, [pc, #116]	; (8002184 <pwm_init+0x90>)
 800210e:	4d1e      	ldr	r5, [pc, #120]	; (8002188 <pwm_init+0x94>)
 8002110:	f44f 43c0 	mov.w	r3, #24576	; 0x6000
 8002114:	9301      	str	r3, [sp, #4]
 8002116:	2302      	movs	r3, #2
 8002118:	f88d 3008 	strb.w	r3, [sp, #8]
 800211c:	4620      	mov	r0, r4
 800211e:	2303      	movs	r3, #3
 8002120:	a901      	add	r1, sp, #4
 8002122:	f88d 3009 	strb.w	r3, [sp, #9]
 8002126:	f7ff fe53 	bl	8001dd0 <GPIO_Init>
 800212a:	4620      	mov	r0, r4
 800212c:	210d      	movs	r1, #13
 800212e:	2206      	movs	r2, #6
 8002130:	f7ff fe9c 	bl	8001e6c <GPIO_PinAFConfig>
 8002134:	4620      	mov	r0, r4
 8002136:	210e      	movs	r1, #14
 8002138:	2206      	movs	r2, #6
 800213a:	f7ff fe97 	bl	8001e6c <GPIO_PinAFConfig>
 800213e:	4b13      	ldr	r3, [pc, #76]	; (800218c <pwm_init+0x98>)
 8002140:	681a      	ldr	r2, [r3, #0]
 8002142:	f242 7310 	movw	r3, #10000	; 0x2710
 8002146:	fbb2 f3f3 	udiv	r3, r2, r3
 800214a:	2400      	movs	r4, #0
 800214c:	3b01      	subs	r3, #1
 800214e:	4628      	mov	r0, r5
 8002150:	a903      	add	r1, sp, #12
 8002152:	9304      	str	r3, [sp, #16]
 8002154:	f8ad 400c 	strh.w	r4, [sp, #12]
 8002158:	f8ad 400e 	strh.w	r4, [sp, #14]
 800215c:	f8ad 4014 	strh.w	r4, [sp, #20]
 8002160:	f8ad 4016 	strh.w	r4, [sp, #22]
 8002164:	f7ff fc84 	bl	8001a70 <TIM_TimeBaseInit>
 8002168:	4620      	mov	r0, r4
 800216a:	4621      	mov	r1, r4
 800216c:	f7ff ff84 	bl	8002078 <pwm_set>
 8002170:	4628      	mov	r0, r5
 8002172:	2101      	movs	r1, #1
 8002174:	f7ff fccc 	bl	8001b10 <TIM_Cmd>
 8002178:	4628      	mov	r0, r5
 800217a:	2101      	movs	r1, #1
 800217c:	f7ff fd5a 	bl	8001c34 <TIM_CtrlPWMOutputs>
 8002180:	b007      	add	sp, #28
 8002182:	bd30      	pop	{r4, r5, pc}
 8002184:	48000400 	.word	0x48000400
 8002188:	40012c00 	.word	0x40012c00
 800218c:	20000050 	.word	0x20000050

08002190 <_init>:
 8002190:	e1a0c00d 	mov	ip, sp
 8002194:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
 8002198:	e24cb004 	sub	fp, ip, #4
 800219c:	e24bd028 	sub	sp, fp, #40	; 0x28
 80021a0:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
 80021a4:	e12fff1e 	bx	lr

080021a8 <_fini>:
 80021a8:	e1a0c00d 	mov	ip, sp
 80021ac:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
 80021b0:	e24cb004 	sub	fp, ip, #4
 80021b4:	e24bd028 	sub	sp, fp, #40	; 0x28
 80021b8:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
 80021bc:	e12fff1e 	bx	lr
 80021c0:	69647473 	.word	0x69647473
 80021c4:	6e69206f 	.word	0x6e69206f
 80021c8:	64207469 	.word	0x64207469
 80021cc:	0a656e6f 	.word	0x0a656e6f
 80021d0:	00          	.byte	0x00
 80021d1:	0a          	.byte	0x0a
 80021d2:	6577      	.short	0x6577
 80021d4:	6d6f636c 	.word	0x6d6f636c
 80021d8:	6f742065 	.word	0x6f742065
 80021dc:	7a755320 	.word	0x7a755320
 80021e0:	4f616875 	.word	0x4f616875
 80021e4:	5f5e2053 	.word	0x5f5e2053
 80021e8:	2e32205e 	.word	0x2e32205e
 80021ec:	0a362e30 	.word	0x0a362e30
 80021f0:	4c495542 	.word	0x4c495542
 80021f4:	614a2044 	.word	0x614a2044
 80021f8:	3531206e 	.word	0x3531206e
 80021fc:	31303220 	.word	0x31303220
 8002200:	31312036 	.word	0x31312036
 8002204:	3a38333a 	.word	0x3a38333a
 8002208:	000a3831 	.word	0x000a3831

0800220c <__EH_FRAME_BEGIN__>:
 800220c:	00000000                                ....
